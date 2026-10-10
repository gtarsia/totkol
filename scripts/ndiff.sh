#!/bin/bash
# Compares FUNC as built from its NONMATCHING C in src/NAME.c with the original asm the ROM uses,
# with the C lines of the new version above their instructions.
# Usage: scripts/ndiff.sh NAME FUNC [FROM [TO]]
# FROM and TO are regexes on instructions (e.g. ReachTileCost): only the part from the first
# FROM to the next TO is compared, on each side; calls show as "R_ARM_THM_CALL NAME". Branch
# targets aren't compared; they show as "→ N", the line they land on. In a terminal, shows the
# logic differences first, then the whole diff, side by side in color (marks: ! the code differs,
# ~ only registers or stack offsets, - only in the original, + only in yours); piped, plain
# side-by-side. The counts also give the logic-only differences (registers and stack offsets
# ignored) and whether the stack frames match.
# Options, anywhere on the line:
#   --logic        don't mark differences that are only registers or stack offsets
#   --context N    only the changes and N lines around them
#   --nvim         open both listings in nvim -d instead
#   --qol          build the QOL version (default: the original game's)
# Exits 0 when they match.
usage() { sed -n '2,/^[^#]/s/^# \{0,1\}//p' "$0"; exit ${1:-0}; }
args=() LOGIC= CONTEXT= VIEW= QOL=0
while [ $# -gt 0 ]; do
	case $1 in
	--logic) LOGIC=1 ;;
	--context) CONTEXT=$2; shift ;;
	--nvim) VIEW=nvim ;;
	--qol) QOL=1 ;;
	-h | --help) usage ;;
	-*) echo "unknown option: $1" >&2; usage 2 ;;
	*) args+=("$1") ;;
	esac
	shift
done
set -- "${args[@]}"
[ $# -lt 2 ] && usage
set -e
NAME=$1 FUNC=$2 FROM=$3 TO=$4
OUT=build/fdiff
mkdir -p $OUT
make -s QOL=$QOL build/totkol/src/$NAME.o
cc -E -I tools/agbcc -I tools/agbcc/include -iquote include -nostdinc -DREVISION=0 -DENGLISH \
	-DQOL=$QOL -DNONMATCHING src/$NAME.c -o $OUT/nm.i
tools/preproc/preproc $OUT/nm.i charmap.txt | tools/agbcc/bin/agbcc -mthumb-interwork -Wimplicit \
	-Wparentheses -O2 -g -fhex-asm -fprologue-bugfix -ffix-debug-line -o $OUT/nm.s
arm-none-eabi-as -mcpu=arm7tdmi -o $OUT/nm.o $OUT/nm.s

# Prints FUNC's instructions from object $1, one per line, without addresses. Branch targets are
# dropped (they move whenever the code above changes size); with ANNOT set, each branch shows its
# target as "→ N", N being that line in the same listing. With SRC set, also prints the C lines
# objdump -S shows (marked "C\t", instructions "A\t").
dump() {
	arm-none-eabi-objdump -d -r --no-show-raw-insn ${SRC:+-S -l} --disassemble=$FUNC $1 |
		sed -n '/^[0-9a-f]* <.*>:$/,$p' | tail -n +2 |
		awk '
			# With -l, "file:N" comes before each block of C lines, and the block ends at line N.
			function flush(   i) {
				for (i = 1; i <= ns; i++)
					if (sl[i] ~ /[^ \t]/) print "C\t" (n ? n - ns + i : "") "\t" sl[i]
				ns = 0
			}
			/^\/.*:[0-9]+( \(discriminator [0-9]+\))?$/ {
				flush(); n = $0; sub(/ \(.*/, "", n); sub(/^.*:/, "", n); next
			}
			/^[A-Za-z_][A-Za-z0-9_]*\(\):$/ { next }
			!/^\s+[0-9a-f]+:/ { sl[++ns] = $0; next }
			/^\s+[0-9a-f]+:/ {
				flush()
				addr = $1; sub(/:$/, "", addr)
				t = $0; sub(/^\s+[0-9a-f]+:\s+/, "", t)
				gsub(/\s*<[^>]*>/, "", t); sub(/\s*@.*/, "", t); gsub(/\t+/, " ", t)
				target = ""
				if (t ~ /^b[a-z.]* [0-9a-f]+$/) {
					if (t !~ /^bl /) { target = t; sub(/^.* /, "", target) }  # calls show their callee
					sub(/ [0-9a-f]+$/, "", t)
				}
				print "A\t" addr "\t" t "\t" target; next
			}
			END { flush() }' |
		awk -F '\t' -v from="$FROM" -v to="$TO" -v src="$SRC" -v annot="$ANNOT" '
			/^C/ { if (src) c[++nc] = $0; next }
			!on && from != "" && $3 !~ from { nc = 0; next }
			{
				on = 1
				for (i = 1; i <= nc; i++) out[++n] = c[i]
				nc = 0
				out[++n] = $0; k++
				if (!($2 in line)) line[$2] = k
			}
			to != "" && $3 ~ to { exit }
			END {
				for (i = 1; i <= n; i++) {
					if (out[i] ~ /^C/) { print out[i]; continue }
					split(out[i], f, "\t")
					t = f[3]
					if (annot && f[4] != "") t = t " → " (f[4] in line ? line[f[4]] : "?")
					print src ? "A\t" t : t
				}
			}'
}
# Side by side, highlighted like nsrc.sh, with the C lines of the new version above their
# instructions. Marks: ~ changed, - only in orig, + only in new.
# CONTEXT (from --context) shows only the changes and N lines around them.
show() {
	local sep=$'\x01'
	# Rows are lined up by the logic-only comparison, so each instruction sits next to its pair
	# even when registers differ. A row is "!" (or +/-) when the code differs, "~" when only
	# registers or stack offsets do (left unmarked with --logic).
	diff --old-line-format='<%L' --new-line-format='>%L' --unchanged-line-format='=%L' \
		$OUT/orig.logic $OUT/new.logic |
		awk -v OFS="$sep" -v ro=$OUT/orig.txt -v rn_=$OUT/new.txt -v only="$LOGIC" '
			BEGIN {
				while ((getline x < ro) > 0) O[++no] = x
				while ((getline x < rn_) > 0) N[++nn] = x
			}
			function row(t, l, r, hl, hr) {
				if (hl) ln++
				if (hr) rn++
				if (t == "~") t = "!"
				else if (t == " " && O[ln] != N[rn] && !only) t = "~"
				print t, hl ? ln : "", hr ? rn : "", hl ? O[ln] : "", hr ? N[rn] : ""
			}
			function flush(   i, n) {
				n = nl > nr ? nl : nr
				for (i = 1; i <= n; i++)
					row(i > nl ? "+" : i > nr ? "-" : "~", L[i], R[i], i <= nl, i <= nr)
				nl = nr = 0; delete L; delete R
			}
			{ s = substr($0, 2) }
			/^</ { L[++nl] = s; next }
			/^>/ { R[++nr] = s; next }
			{ flush(); row(" ", s, s, 1, 1) }
			END { flush() }' |
		# SHOW_MARKS: which rows count as changes for CONTEXT (all changes by default).
		awk -F "$sep" -v ctx="${CONTEXT:--1}" -v marks="${SHOW_MARKS:-[^ ]}" '
			{ line[NR] = $0; if ($1 ~ "^" marks "$") for (i = NR - ctx; i <= NR + ctx; i++) keep[i] = 1 }
			END {
				for (i = 1; i <= NR; i++)
					if (ctx < 0 || keep[i]) { print line[i]; gap = 0 }
					else if (!gap++) print "."
			}' |
		# Put each instruction's C lines (tag "c") in the rows above it.
		awk -F "$sep" -v OFS="$sep" '
			NR == FNR { if (/^C/) c[n + 1] = c[n + 1] substr($0, 3) "\n"; else n++; next }
			$3 != "" && $3 in c {
				k = split(c[$3], cl, "\n")
				for (i = 1; i < k; i++) {
					num = cl[i]; sub(/\t.*/, "", num); text = cl[i]; sub(/^[^\t]*\t/, "", text)
					print "c", num, "", "", text
				}
			}
			{ print }' $OUT/newsrc.txt - |
		# Show each side's text with its jump targets ("→ N"), which the comparison ignores.
		awk -F "$sep" -v OFS="$sep" '
			FILENAME == ARGV[1] { o[FNR] = $0; next }
			FILENAME == ARGV[2] { n[FNR] = $0; next }
			$1 != "c" && $1 != "." { if ($2 != "") $4 = o[$2]; if ($3 != "") $5 = n[$3] }
			{ print }' $OUT/orig.ann $OUT/new.ann - > $OUT/rows.txt
	hl() {
		awk -F "$sep" -v f=$1 -v want="$2" '{ print ($1 ~ want) ? $f : "" }' $OUT/rows.txt |
			bat -l $3 --color=always --style=plain --paging=never
	}
	hl 4 . s > $OUT/left.txt
	hl 5 '[^c]' s > $OUT/right.txt
	hl 5 c c > $OUT/rightc.txt
	local w=$(cut -d "$sep" -f4 $OUT/rows.txt | awk '{ if (length > w) w = length } END { print w }')
	paste -d "$sep" $OUT/rows.txt $OUT/left.txt $OUT/right.txt $OUT/rightc.txt |
		awk -F "$sep" -v w=$w '
		BEGIN {
			c["~"] = "\033[33m"; c["!"] = "\033[1;31m"; c["-"] = "\033[31m"; c["+"] = "\033[32m"
			c[" "] = c["c"] = "\033[90m"
		}
		$1 == "." { print "\033[90m  ⋯\033[0m"; next }
		$1 == "c" {
			printf "%*s\033[90m│ %4s \033[36m%5s\033[0m  %s\n", w + 8, "", "", $2 ? ":" $2 : "", $8
			next
		}
		{ printf "%s%s %4s\033[0m %s%*s %s│ %4s\033[0m %s\n", c[$1], $1, $2, $6, w - length($4), "",
			c[$1], $3, $7 }'
}
dump build/totkol/src/$NAME.o > $OUT/orig.txt
ANNOT=1 dump build/totkol/src/$NAME.o > $OUT/orig.ann
ANNOT=1 dump $OUT/nm.o > $OUT/new.ann
SRC=1 dump $OUT/nm.o > $OUT/newsrc.txt
sed -n "s/^A\t//p" $OUT/newsrc.txt > $OUT/new.txt
# Logic only: every register and stack offset made the same.
logic() { sed -E 's/\b(r[0-9]+|sb|sl|fp|ip)\b/R/g; s/\[sp, #[0-9]+\]/[sp, #N]/g' $1; }
logic $OUT/orig.txt > $OUT/orig.logic
logic $OUT/new.txt > $OUT/new.logic
if diff -q $OUT/orig.txt $OUT/new.txt > /dev/null; then
	echo "match ($(wc -l < $OUT/orig.txt) lines)"
else
	all=$(diff $OUT/orig.txt $OUT/new.txt | grep -c '^[<>]' || true)
	logic=$(diff $OUT/orig.logic $OUT/new.logic | grep -c '^[<>]' || true)
	summary="$all lines differ, $logic in logic only"
	# Stack frame: its size, and whether both use the same slots (they may hold other values).
	frame() { grep -m1 -o 'sub sp, #[0-9]*' $1 | grep -o '[0-9]*$' || echo 0; }
	slots() { grep -o '\[sp, #[0-9]*\]' $1 | sort -u; }
	fo=$(frame $OUT/orig.txt) fn=$(frame $OUT/new.txt)
	so=$(slots $OUT/orig.txt | wc -l) sn=$(slots $OUT/new.txt | wc -l)
	if [ -n "$FROM" ]; then
		# Only part of the function: the frame setup isn't in it, so compare just the slots.
		same=$(diff -q <(slots $OUT/orig.txt) <(slots $OUT/new.txt) > /dev/null && echo yes || true)
		frame_note="slots used in this part: $so in the original, $sn in yours${same:+, the same ones}"
	elif [ "$fo" = "$fn" ] && diff -q <(slots $OUT/orig.txt) <(slots $OUT/new.txt) > /dev/null; then
		frame_note="frame: same size ($fo bytes) and the same $so slots"
	else
		frame_note="frame: $fo bytes, $so slots in the original; $fn bytes, $sn slots in yours"
	fi
	summary+=" (orig $(wc -l < $OUT/orig.txt), new $(wc -l < $OUT/new.txt))"
	if [ ! -t 1 ]; then
		diff -y -W 100 $OUT/orig.txt $OUT/new.txt || true
	elif [ "$VIEW" = nvim ]; then
		nvim -d $OUT/orig.txt $OUT/new.txt
	else
		{
			printf '\033[90m%s\033[0m\n\n' \
				'! code differs   ~ only registers/stack   - only original   + only yours'
			# First only the logic differences, then the whole diff.
			if [ "$logic" != 0 ]; then
				printf '\033[1mLogic differences: %s lines\033[0m\n' "$logic"
				CONTEXT=2 SHOW_MARKS='[!+-]' show
				echo
			fi
			printf '\033[1mAll differences: %s lines\033[0m %s\n' "$all" \
				"(orig $(wc -l < $OUT/orig.txt), new $(wc -l < $OUT/new.txt))"
			printf '\033[90m%s\033[0m\n' "$frame_note"
			show
		} | less -RS
	fi
	echo "$summary"
	echo "$frame_note"
	exit 1
fi
