#!/bin/bash
# Explains why an instruction of FUNC's NONMATCHING build (as ndiff.sh shows it) uses the registers
# it does: which of agbcc's values it works on, how often each is used and over how long, what
# register each got, the C line that creates each, and the values competing with it.
# Usage: scripts/why.sh NAME FUNC LINE         LINE: a line number of the new side in ndiff.sh
#        scripts/why.sh NAME FUNC LINE orig    LINE: a line number of the original side
[[ $1 = -h || $1 = --help || $# -lt 3 ]] && { sed -n '2,/^[^#]/s/^# \{0,1\}//p' "$0"; exit 0; }
set -e
NAME=$1 FUNC=$2
W=build/why
mkdir -p $W
scripts/ndiff.sh $NAME $FUNC > /dev/null || true
# The same build as ndiff.sh's, plus agbcc's notes: -da writes what each pass did, -dp puts each
# instruction's number in the asm.
tools/preproc/preproc build/fdiff/nm.i charmap.txt > $W/w.i
tools/agbcc/bin/agbcc -mthumb-interwork -Wimplicit -Wparentheses -O2 -g -fhex-asm \
	-fprologue-bugfix -ffix-debug-line -da -dp -o $W/w.s $W/w.i
arm-none-eabi-as -mcpu=arm7tdmi -aln=$W/list.txt -o $W/w.o $W/w.s
NAME=$NAME exec python3 scripts/why.py $FUNC $3 $4
