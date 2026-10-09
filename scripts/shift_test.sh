#!/bin/bash
# Checks that code and data can move: links a ROM with everything after crt0 shifted by PAD
# bytes, plays both ROMs headless with the same keys (new game up to the first battle) and
# compares screenshots. Any raw ROM address left in the data shows up as a difference.
# Usage: scripts/shift_test.sh [PAD] [FRAMES] [STEP]  (run from the repo root after `make`)
# With DUMP=FRAME, also dumps RAM from FRAME on; compare with scripts/ram_diff.py.
set -e
PAD=${1:-0x100}
FRAMES=${2:-40000}
STEP=${3:-400}
OUT=build/shift_test
mkdir -p $OUT
gcc -O2 -o $OUT/boot scripts/boot.c -lmgba -lpng

# Link the shifted ROM from the objects of the last build.
(cd build/totkol && arm-none-eabi-ld --defsym shift_test_pad=$PAD -T ../../linker.ld \
	-o ../shift_test/shifted.elf -L ../../tools/agbcc/lib -lc -lgcc)
tools/gbafix/gbafix $OUT/shifted.elf -t"TACTICSOGRE" -cATOE -mEB -r0 --silent
arm-none-eabi-objcopy -O binary --gap-fill 0 --pad-to 0x8800000 $OUT/shifted.elf $OUT/shifted.gba

# Skip the intro, start a new game, then tap A twice a second and Start every 10 s.
python3 - > $OUT/inputs.txt <<EOF
ev = {500: 8, 506: 0, 700: 8, 706: 0}
for f in range(760, $FRAMES, 30): ev[f] = 1; ev[f + 5] = 0
for f in range(8605, $FRAMES, 600): ev[f] = 8; ev[f + 3] = 0
for f, k in sorted(ev.items()): print(f, k)
EOF

for rom in baserom shifted; do
	src=baserom.gba; [ $rom = shifted ] && src=$OUT/shifted.gba
	rm -rf $OUT/$rom && mkdir $OUT/$rom
	head -c 65536 /dev/zero | tr '\0' '\377' > $OUT/$rom.sav  # blank flash
	$OUT/boot $src $OUT/$rom.sav $OUT/inputs.txt $FRAMES $STEP $OUT/$rom &
done
wait

diffs=0
for f in $OUT/baserom/*.png; do
	if ! cmp -s $f $OUT/shifted/$(basename $f); then
		[ $diffs = 0 ] && echo "first difference: $(basename $f)"
		diffs=$((diffs + 1))
	fi
done
echo "$diffs of $(ls $OUT/baserom | wc -l) screenshots differ"
[ $diffs = 0 ]
