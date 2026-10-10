#!/bin/bash
# Runs decomp-permuter on FUNC's NONMATCHING C in src/NAME.c: it changes the C at random, keeps
# the versions that get closer to the original and writes them to build/perm/FUNC/output-SCORE-N.
# Lower score is better; 0 is a match. Each better score sends a desktop notification (notify-send).
# Usage: scripts/perm.sh NAME FUNC            search; each time it finds something better, it
#                                             pauses and shows it as in pick. If you accept
#                                             changes, it starts over from your new C; if not,
#                                             it carries on. q at its question, or Ctrl+C,
#                                             stops it.
#        scripts/perm.sh NAME FUNC search     just search (Ctrl+C stops it)
#        scripts/perm.sh NAME FUNC continue   search starting from the best output so far
#        scripts/perm.sh NAME FUNC best       show how the best output differs from your C
#        scripts/perm.sh NAME FUNC pick       show the best output's changes, all together, with
#                                             their effect on the diff; if you accept, patch them
#                                             into src
# Options, anywhere on the line:
#   --no-vars       never add variables (no temporaries, padding variables or helper functions)
#   --keep-types    never change the type of a variable, parameter or function
#   --all           pick: also show an output whose changes don't change the diff
#   --context N     best: lines around each change (default 3)
#   -j N            permuter threads (default 8)
#   --permuter DIR  decomp-permuter checkout (default ~/git/decomp-permuter)
usage() { sed -n '2,/^[^#]/s/^# \{0,1\}//p' "$0"; exit ${1:-0}; }
args=() NOVARS= KEEPTYPES= PICK_ALL= CONTEXT=3 THREADS=8 PERMUTER=~/git/decomp-permuter
while [ $# -gt 0 ]; do
	case $1 in
	--no-vars) NOVARS=1 ;;
	--keep-types) KEEPTYPES=1 ;;
	--all) PICK_ALL=1 ;;
	--context) CONTEXT=$2; shift ;;
	-j) THREADS=$2; shift ;;
	--permuter) PERMUTER=$2; shift ;;
	-h | --help) usage ;;
	-*) echo "unknown option: $1" >&2; usage 2 ;;
	*) args+=("$1") ;;
	esac
	shift
done
set -- "${args[@]}"
[ $# -lt 2 ] && usage
set -e
NAME=$1 FUNC=$2 MODE=$3
D=build/perm/$FUNC
PY=$PERMUTER/.venv/bin/python

style='{BasedOnStyle: LLVM, IndentWidth: 4, ColumnLimit: 100, RemoveBracesLLVM: true,
	BreakBeforeBraces: Linux, IndentCaseLabels: false}'

best_output() { ls -d $D/output-* 2>/dev/null | sort -t- -k2 -n | head -1; }

# Desktop notification with the best output's score; urgent when it's a match.
notify() {
	local best=$(best_output) score
	[ -n "$best" ] || return 0
	score=${best##*/output-}
	score=${score%-*}
	if [ "$score" = 0 ]; then
		notify-send -u critical "perm: $FUNC matches" "$best" || true
	else
		notify-send "perm: $FUNC score $score" "$best" || true
	fi
}

# Goes through the changes in output $1 and patches the accepted ones into src.
pick() {
	cc -E -dM -I tools/agbcc -I tools/agbcc/include -iquote include -nostdinc -DREVISION=0 \
		-DENGLISH -DQOL=0 -DNONMATCHING src/$NAME.c > $D/macros.h
	PICK_ALL=$PICK_ALL $PY scripts/perm_pick.py src/$NAME.c $FUNC $D $1 "$style"
}

# Prepares $D for the permuter. Base: the C as ndiff.sh compiles it, without line markers (with
# "continue", the best output instead). Target: the original asm.
setup() {
	mkdir -p $D
	scripts/ndiff.sh $NAME $FUNC > /dev/null || true
	tools/preproc/preproc build/fdiff/nm.i charmap.txt | grep -v '^#' > $D/base.c.new
	local mine=$D/base.c
	[ -f $D/yours.base.c ] && mine=$D/yours.base.c
	if [ "$MODE" = continue ]; then
		best=$(best_output)
		[ -n "$best" ] || { echo "no outputs yet in $D"; exit 1; }
		echo "starting from $best"
		[ -f $D/yours.base.c ] || mv $D/base.c $D/yours.base.c  # your C, for 'best'
		cp $best/source.c $D/base.c
		rm $D/base.c.new
	elif ! cmp -s $D/base.c.new $mine; then
		rm -f $D/yours.base.c
		rm -rf $D/output-*  # outputs of an older base
		mv $D/base.c.new $D/base.c
	else
		rm $D/base.c.new
	fi
	{ printf '\t.syntax unified\n\t.text\n\t.align 2, 0\n\t.thumb\n'
		printf '\t.thumb_func\n\t.global %s\n%s:\n' $FUNC $FUNC
		cat asm/non_matching/$NAME/$FUNC.inc; } > $D/target.s
	arm-none-eabi-as -mcpu=arm7tdmi -o $D/target.o $D/target.s
	cat > $D/compile.sh <<-EOS
	#!/bin/bash
	# compile.sh IN.c -o OUT.o
	set -e
	T=\$(mktemp -d)
	$PWD/tools/agbcc/bin/agbcc -mthumb-interwork -O2 -fhex-asm -fprologue-bugfix "\$1" -o \$T/a.s
	printf '\t.text\n\t.align\t2, 0\n' >> \$T/a.s
	arm-none-eabi-as -mcpu=arm7tdmi -o "\$3" \$T/a.s
	rm -rf \$T
	EOS
	chmod +x $D/compile.sh
	printf 'func_name = "%s"\ncompiler_type = "agbcc"\n%s\n' $FUNC \
		'objdump_command = "arm-none-eabi-objdump -drz -M force-thumb"' > $D/settings.new
	# --no-vars / --keep-types: turn off the passes that add variables (temporaries, unused padding
	# variables, helper inline functions, aliases) or change types.
	off=()
	[ "$NOVARS" = 1 ] && off+=(perm_temp_for_expr perm_pad_var_decl perm_inline perm_alias_array)
	[ "$KEEPTYPES" = 1 ] && off+=(perm_randomize_internal_type perm_randomize_external_type
		perm_randomize_function_type)
	if [ ${#off[@]} -gt 0 ]; then
		{ echo '[weight_overrides]'; printf '%s = 0\n' "${off[@]}"; } >> $D/settings.new
	fi
	# Other options than last time: earlier outputs could have what they now rule out.
	if ! cmp -s $D/settings.new $D/settings.toml; then
		rm -rf $D/output-*
	fi
	mv $D/settings.new $D/settings.toml
	# run_fork.py: permuter.py with the "fork" start method, which it needs on newer Pythons.
	[ -f $PERMUTER/run_fork.py ] || printf '%s\n' 'import multiprocessing, runpy, sys' \
		'multiprocessing.set_start_method("fork")' 'sys.argv = ["permuter.py"] + sys.argv[1:]' \
		'runpy.run_path("permuter.py", run_name="__main__")' > $PERMUTER/run_fork.py
}

permute() {
	(cd $PERMUTER && exec $PY run_fork.py $OLDPWD/$D -j$THREADS --best-only --stop-on-zero "$@")
}

case "$MODE" in
pick)
	best=$(best_output)
	[ -n "$best" ] || { echo "no outputs yet in $D"; exit 1; }
	pick $best
	exit
	;;
best)
	best=$(best_output)
	[ -n "$best" ] || { echo "no outputs yet in $D"; exit 1; }
	echo "best: $best"
	mine=$D/base.c
	[ -f $D/yours.base.c ] && mine=$D/yours.base.c
	$PY scripts/perm_diff.py $mine $D/yours.c $FUNC
	$PY scripts/perm_diff.py $best/source.c $D/permuter.c $FUNC
	# Same style as src/ for both, so only real changes show (no braces on one-line ifs, etc.).
	clang-format -i --style="$style" $D/yours.c $D/permuter.c
	CONTEXT=$CONTEXT SBS_WS=ignore sbs $D/yours.c $D/permuter.c
	exit
	;;
search | continue)
	setup
	permute || true
	notify
	exit
	;;
esac

# Default: search in the background, and pick each time it finds something better.
pid=
stop() {
	[ -n "$pid" ] || return 0
	# A paused process only gets TERM once resumed; KILL whatever is left after 3 seconds.
	kill -CONT -- -$pid 2> /dev/null || true
	kill -TERM -- -$pid 2> /dev/null || true
	for _ in 1 2 3 4 5 6; do kill -0 -- -$pid 2> /dev/null || break; sleep 0.5; done
	kill -KILL -- -$pid 2> /dev/null || true
	wait $pid 2> /dev/null || true
	pid=
}
trap 'stop; echo; exit 130' INT
trap stop EXIT
start() {
	setup
	# Its own process group, so it can be paused and stopped as a whole (it runs several workers).
	PYTHONUNBUFFERED=1 setsid bash -c "cd $PERMUTER && exec $PY run_fork.py $PWD/$D \
		-j$THREADS --best-only --stop-on-zero" > $D/log 2>&1 &
	pid=$!
	offered=
	started=$SECONDS
}
start
while :; do
	sleep 1
	if ! kill -0 $pid 2> /dev/null; then
		echo
		tail -5 $D/log
		break
	fi
	base=$(grep -m1 -o 'base score = [0-9]*' $D/log | grep -o '[0-9]*$' || true)
	# The permuter's own status: "iteration N, E errors, score = S" for its latest try.
	last=$(tail -c 300 $D/log | tr '\r' '\n' | grep -o 'iteration [0-9]*.*score = [0-9]*' | tail -1 \
		|| true)
	best=$(best_output)
	score=${best##*/output-}
	score=${score%-*}
	t=$((SECONDS - started))
	printf '\r\033[K%dm%02ds · your C: %s · best: %s · %s' $((t / 60)) $((t % 60)) \
		"${base:-…}" "${best:+$score}" "${last:-starting…}"
	[ -n "$best" ] && { [ -z "$offered" ] || [ "$score" -lt "$offered" ]; } || continue
	kill -STOP -- -$pid 2> /dev/null || continue
	offered=$score
	notify
	printf '\n\n'
	cp src/$NAME.c $D/src.before
	rc=0
	pick $best || rc=$?
	if [ $rc = 3 ]; then
		echo "stopped"
		exit 0
	elif cmp -s src/$NAME.c $D/src.before; then
		echo "carrying on"
		kill -CONT -- -$pid 2> /dev/null || true
	else
		echo "starting over from your new C"
		stop
		start
	fi
done
