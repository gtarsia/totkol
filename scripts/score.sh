#!/bin/bash
# Prints how many instruction lines differ between src/NAME.c and ORIG.s (0 = match).
make -s build/totkol/src/$1.o >/dev/null || exit 1
arm-none-eabi-as -mcpu=arm7tdmi -o build/fdiff/orig.o $2
d() { arm-none-eabi-objdump -d -r --no-show-raw-insn $1 | grep -P '^\s+[0-9a-f]+:' |
	sed -E 's/^\s+[0-9a-f]+:\s+//; s/\s*<[^>]*>//; s/\s*@.*//; s/\t+/ /g'; }
diff <(d build/fdiff/orig.o) <(d build/totkol/src/$1.o) | grep -c '^[<>]'
