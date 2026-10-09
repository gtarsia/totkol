#!/bin/bash
# Compares the code agbcc makes from src/NAME.c with the original assembly of the same functions.
# Usage: scripts/fdiff.sh NAME ORIG.s  (ORIG.s: the functions cut from asm/, with the usual header)
# Prints a side-by-side diff of the instructions; exits 0 when they match.
set -e
NAME=$1
ORIG=$2
OUT=build/fdiff
mkdir -p $OUT
make -s QOL=${QOL:-0} build/totkol/src/$NAME.o
arm-none-eabi-as -mcpu=arm7tdmi -o $OUT/orig.o $ORIG

dump() {
	# Drop addresses, raw bytes and label annotations so only the instructions are compared.
	arm-none-eabi-objdump -d -r --no-show-raw-insn $1 | grep -P '^\s+[0-9a-f]+:' |
		sed -E 's/^\s+[0-9a-f]+:\s+//; s/\s*<[^>]*>//; s/\s*@.*//; s/\t+/ /g'
}
dump build/totkol/src/$NAME.o > $OUT/new.txt
dump $OUT/orig.o > $OUT/orig.txt
if diff -q $OUT/orig.txt $OUT/new.txt > /dev/null; then
	echo "match ($(wc -l < $OUT/orig.txt) lines)"
else
	diff -y -W 100 $OUT/orig.txt $OUT/new.txt | grep -n -E ' [|<>]( |$)' | head -${LINES_SHOWN:-40}
	echo "$(diff $OUT/orig.txt $OUT/new.txt | grep -c '^[<>]') lines differ"
	exit 1
fi
