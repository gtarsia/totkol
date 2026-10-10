#!/bin/bash
# Shows FUNC from the NONMATCHING build of src/NAME.c with its C lines above their instructions,
# both highlighted.
# Usage: scripts/nsrc.sh NAME FUNC
[[ $1 = -h || $1 = --help || $# -lt 2 ]] && { sed -n '2,/^[^#]/s/^# \{0,1\}//p' "$0"; exit 0; }
set -e
OUT=build/fdiff
scripts/ndiff.sh "$1" "$2" > /dev/null || true
arm-none-eabi-objdump -d -S --no-show-raw-insn --disassemble="$2" $OUT/nm.o |
	sed -n '/^[0-9a-f]* <.*>:$/,$p' > $OUT/src.txt
# Highlight the C lines and the asm lines separately (each keeps its own context), then merge.
isasm='/^ *[0-9a-f]+:\t/'
awk "$isasm"' { print "" ; next } { print }' $OUT/src.txt |
	bat -l c --color=always --style=plain --paging=never > $OUT/src.c.txt
awk "$isasm"' { print; next } { print "" }' $OUT/src.txt |
	bat -l s --color=always --style=plain --paging=never > $OUT/src.s.txt
awk "$isasm"' { print "a" ; next } { print "c" }' $OUT/src.txt |
	paste -d $'\x01' - $OUT/src.c.txt $OUT/src.s.txt |
	awk -F $'\x01' '{ print ($1 == "a" ? $3 : $2) }' | { [ -t 1 ] && less -R || cat; }
