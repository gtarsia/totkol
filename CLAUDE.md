# lodis-qol

## Mods

Mods go only in C, behind QOL: `(QOL ? mod : original)`. Asm and data stay as in the original
game. If a mod's code is still in asm, leave the idea as a comment next to it until that code is
in C. Mods change values only and never shift code or data.

## Verify the ROM after every commit

After each commit, check the committed tree, not the working tree. Stash anything left
uncommitted first.

- `make compare` must print `totkol.gba: OK`, meaning QOL=0 gives the original ROM.
- In the QOL build (`make QOL=1`), no function may move. This must print nothing:
  `arm-none-eabi-nm -n totkol.elf | awk '$3 ~ /^sub_08[0-9A-F]{6}$/ && $1 ~ /^08/ && toupper($1) != substr($3,5)'`

## Layout

- `asm/*.s`: code not yet in C, split by address (`code_0804CD88.s` starts at 0x0804CD88).
  `linker.ld` lists every object in ROM order.
- `src/*.c`: functions in C that match the original (agbcc, `-O2`). Names and structs go in
  `include/*.h`, with "guess:" on what the code doesn't confirm.
- `data/data.s`: mostly `.incbin "baserom.gba"` blocks between labels; `@ 0872E850` is the
  ROM address.
- To move functions to C: split the `.s` file so they leave a gap, write them in
  `src/NAME.c`, and put its object in `linker.ld` in the gap. After it, add the line that
  puts the next object back at its address (`. = 0x... + (DEFINED(shift_test_pad) ...)`).
  Check it with `scripts/fdiff.sh NAME ORIG.s`
  (ORIG.s holds the cut asm with the usual header); `scripts/score.sh` prints only the count
  of lines that differ. If it doesn't match yet, keep the asm as a NAKED fallback, like
  `src/battle_reach.c`.

## Finding things

- Disassemble the built ELF by address:
  `arm-none-eabi-objdump -d -M force-thumb --start-address=A --stop-address=B totkol.elf`
- Read a function's asm: `awk '/thumb_func_start NAME/,/thumb_func_start /' asm/FILE.s`
- In the QOL build, labels must match their address (see above). If they don't, every
  address-based tool lies.

## Headless tools (libmgba, `gcc -O2 -o OUT scripts/X.c -lmgba [-lpng]`)

All take ROM SAV INPUTS. SAV is a copy that gets written; a fresh one is
`head -c 65536 /dev/zero | tr '\0' '\377' > x.sav`. INPUTS holds "frame keymask" lines from
`python3 scripts/inputs.py N`: a new game that reaches the first battle by frame ~30000.
`build/mv/in90.txt` holds 90000 frames.

- `build/mv/phases ROM SAV INPUTS N` (`scripts/phases.c`): prints each battle phase/state
  change. To time a mod, run it on the original and the mod ROM and compare the frames spent
  per state.
- `build/dlg/boot ROM SAV INPUTS N STEP OUTDIR` (`scripts/boot.c`): a PNG every STEP frames;
  with DUMP=FRAME, also RAM. To look at a stretch, `montage` the PNGs into one sheet.
- `build/shift_test/watch ROM SAV INPUTS FROM TO ADDR` (`scripts/watch.c`): prints PC and
  registers on every write to the word at ADDR. BREAK=ADDR prints registers when the PC
  reaches ADDR; use the function's address + 4 (pipeline).
- `scripts/shift_test.sh` and `scripts/lockstep.sh`: check that code and data can move.
  Parked: they aren't needed while mods don't shift anything.
- Run mGBA only headless, and kill only your own instances.

## What is known (see include/battle.h)

- The battle: `*gUnk_0202A88C` (0x0202A5B0 in the test run), with `phase` and `state` state
  machines. Phase 7 (`sub_08060E54`) is an action; its state 16 waits for the action
  sequencer `sub_08088E58` (entries of 0x50 bytes at Battle+0x1CC), which waits for all of
  its sprites to finish.
- Sprite: 4 layers at sprite+0x14+i*0xEC, each with an anim struct at layer+4. The anim
  struct has script (+4), offset (+0xC), speed (+0x10: 0 normal, 1 slow, 2 fast) and timer
  (+0x12). The interpreter is `sub_080077E4`, and script commands start with a (cmd, frames)
  byte pair. `sub_08011CD0` starts a sprite animation and resets the speed to 0.
- Battle popups (damage, GUARD) are data scripts; see `gDamageNumberAnim` in `data/data.s`.
