#!/bin/bash
# Compares FUNC as built from its NONMATCHING C in src/NAME.c with the original asm the ROM uses,
# with the C lines of the new version above their instructions.
# Usage: scripts/ndiff.sh NAME FUNC [FROM [TO]]
# FROM and TO are regexes on instructions (e.g. ReachTileCost): only the part from the first
# FROM to the next TO is compared, on each side; calls show as "R_ARM_THM_CALL NAME". Branch
# targets are dropped. In a terminal, shows the diff side by side in color, with the new
# version's C over its instructions (VIEW=nvim: nvim -d; CONTEXT=N: only the changes and N lines
# around them); piped, plain side-by-side.
# Exits 0 when they match.
[[ $1 = -h || $1 = --help || $# -lt 2 ]] && { sed -n '2,/^[^#]/s/^# \{0,1\}//p' "$0"; exit 0; }
set -e
NAME=$1 FUNC=$2 FROM=$3 TO=$4
OUT=build/fdiff
QOL=${QOL:-0}
mkdir -p $OUT
make -s QOL=$QOL build/totkol/src/$NAME.o
cc -E -I tools/agbcc -I tools/agbcc/include -iquote include -nostdinc -DREVISION=0 -DENGLISH \
	-DQOL=$QOL -DNONMATCHING src/$NAME.c -o $OUT/nm.i
tools/preproc/preproc $OUT/nm.i charmap.txt | tools/agbcc/bin/agbcc -mthumb-interwork -Wimplicit \
	-Wparentheses -O2 -g -fhex-asm -fprologue-bugfix -ffix-debug-line -o $OUT/nm.s
arm-none-eabi-as -mcpu=arm7tdmi -o $OUT/nm.o $OUT/nm.s

# Prints FUNC's instructions from object $1, one per line, without addresses. With SRC set, also
# prints the C lines objdump -S shows (marked "C\t", instructions "A\t").
dump() {
	arm-none-eabi-objdump -d -r --no-show-raw-insn ${SRC:+-S} --disassemble=$FUNC $1 |
		sed -n '/^[0-9a-f]* <.*>:$/,$p' | tail -n +2 |
		awk '/^\s+[0-9a-f]+:/ { print "A\t" $0; next } NF { print "C\t" $0 }' |
		sed -E '/^A/{ s/^A\t\s+[0-9a-f]+:\s+/A\t/; s/\s*<[^>]*>//; s/\s*@.*//; s/\t+/ /g;
			s/^A /A\t/; s/^(A\tb[a-z.]*) [0-9a-f]+$/\1/ }' |
		awk -v from="$FROM" -v to="$TO" -v src="$SRC" '
			/^C/ { if (src) c[++nc] = $0; next }
			{ a = substr($0, 3) }
			!on && from != "" && a !~ from { nc = 0; next }
			{ on = 1; for (i = 1; i <= nc; i++) print c[i]; nc = 0; print src ? $0 : a }
			to != "" && a ~ to { exit }'
}
# Side by side, highlighted like nsrc.sh, with the C lines of the new version above their
# instructions. Marks: ~ changed, - only in orig, + only in new.
# CONTEXT=N shows only the changes and N lines around them.
show() {
	local sep=$'\x01'
	diff --old-line-format='<%L' --new-line-format='>%L' --unchanged-line-format='=%L' \
		$OUT/orig.txt $OUT/new.txt |
		awk -v OFS="$sep" '
			function row(t, l, r, hl, hr) { print t, hl ? ++ln : "", hr ? ++rn : "", l, r }
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
		awk -F "$sep" -v ctx="${CONTEXT:--1}" '
			{ line[NR] = $0; if ($1 != " ") for (i = NR - ctx; i <= NR + ctx; i++) keep[i] = 1 }
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
				for (i = 1; i < k; i++) print "c", "", "", "", cl[i]
			}
			{ print }' $OUT/newsrc.txt - > $OUT/rows.txt
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
			c["~"] = "\033[33m"; c["-"] = "\033[31m"; c["+"] = "\033[32m"; c[" "] = c["c"] = "\033[90m"
		}
		$1 == "." { print "\033[90m  ⋯\033[0m"; next }
		$1 == "c" { printf "%*s\033[90m│\033[0m      %s\n", w + 8, "", $8; next }
		{ printf "%s%s %4s\033[0m %s%*s %s│ %4s\033[0m %s\n", c[$1], $1, $2, $6, w - length($4), "",
			c[$1], $3, $7 }'
}
dump build/totkol/src/$NAME.o > $OUT/orig.txt
SRC=1 dump $OUT/nm.o > $OUT/newsrc.txt
sed -n "s/^A\t//p" $OUT/newsrc.txt > $OUT/new.txt
if diff -q $OUT/orig.txt $OUT/new.txt > /dev/null; then
	echo "match ($(wc -l < $OUT/orig.txt) lines)"
else
	if [ ! -t 1 ]; then
		diff -y -W 100 $OUT/orig.txt $OUT/new.txt || true
	elif [ "$VIEW" = nvim ]; then
		nvim -d $OUT/orig.txt $OUT/new.txt
	else
		show | less -RS
	fi
	echo "$(diff $OUT/orig.txt $OUT/new.txt | grep -c '^[<>]') lines differ" \
		"(orig $(wc -l < $OUT/orig.txt), new $(wc -l < $OUT/new.txt))"
	exit 1
fi
