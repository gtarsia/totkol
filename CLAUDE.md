# lodis-qol

## Mods

Mods go only in C, behind QOL: `(QOL ? mod : original)`. Asm and data stay as in the original
game. If a mod's code is still in asm, leave the idea as a comment next to it until that code is
in C. Mods change values only and never shift code or data.

List each mod in `QOL.md`, and each bug of the original game in `BUGS.md`. After moving code to
C, update the progress line in `README.md` with `bin/progress --md`.

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
  Check it with `bin/diff-asm NAME ORIG.s`
  (ORIG.s holds the cut asm with the usual header); `bin/score` prints only the count
  of lines that differ. If it doesn't match yet, keep the asm as a NAKED fallback, like
  `src/battle_reach.c`; put the C under `#ifdef NONMATCHING` and compare it with
  `bin/diff NAME FUNC [FROM [TO]]` (FROM/TO: regexes, e.g. a callee, to compare a part);
  `bin/diff [NAME]` lists the NONMATCHING functions and how far each is.
  `bin/show NAME FUNC` shows that build with its C lines over their instructions.
  diff's count also gives the logic-only differences (registers, stack offsets and
  where each constant sits in the literal pool ignored);
  `--logic` marks only those. Match the logic first (that count at 0), then registers and stack:
  the total alone misleads, since C that does something different can line up registers better.
  `bin/perm NAME FUNC` runs decomp-permuter on it and offers each better result for
  patching into src (`... pick` does it for the best one so far).
  `bin/why NAME FUNC LINE [--orig]` explains why a line of that diff uses its registers,
  from agbcc's own notes (its values, their priority, reload's round-robin).
  These scripts print their usage with `-h`; `bin/completion.zsh` adds zsh tab completion.
- `docs/index.html` (built by `docs/build.py`): C→asm patterns, the Thumb instructions and the
  agbcc passes with examples. Written for Guido; the tips below are the short version.
- Matching tips (agbcc; source in `~/git/agbcc-src/gcc`, pass order in `toplev.c:2562`):
  - Find the pass: compile with it off (`-fno-gcse`, `-fno-cse-follow-jumps`,
    `-fno-strength-reduce`, `-fno-regmove`...) and see if the diff shrinks. `-da` writes the
    RTL after each pass (`FILE.c.jump`, `.cse`, `.gcse`, ... `.greg`, `.jump2`, `.mach`): diff
    two neighbours to see what one pass did. `-dp` puts insn numbers in the asm.
  - A field the original reads twice needs a `volatile` pointer. Loops can need gotos: jump
    turns `while` into `if` + `do`. Examples: `src/message.c` (sub_0801995C),
    `src/battle_reach.c` (ReachTileCost).
  - r4 vs r5 swapped: global alloc ranks by `floor_log2(refs) * refs / live_length`
    (`global.c:614`); an extra use or a shorter life raises a value. Exact ties (rare) go to the
    lower pseudo, which follows declaration order.
  - Reload temporaries rotate over the spill regs (`last_spill_reg`, `reload1.c:5197`);
    preassigned or inherited reloads don't advance it. Rotation off by one with identical asm
    before it: the original had that block twice. Cross-jumping (jump2, after reload, no flag)
    deletes the upper copy, which already took its step. Write the block twice
    (`BuildReachMap`, the first 0xFF check).
  - A dead check can steer gcse's PRE: `if (dh1 == 0) cost1 = 0;` moved `h1 - h0` in
    `BuildReachMap`.
  - `switch` becomes a jump table only with >= 5 cases and a range <= 10x the count
    (`stmt.c:4926`).

## Finding things

- Disassemble the built ELF by address:
  `arm-none-eabi-objdump -d -M force-thumb --start-address=A --stop-address=B totkol.elf`
- `bin/funcs FROM TO` (or `NAMES...`): each asm function with its address, size, file,
  callers (<-) and callees (->). Use it to scope a group of functions before reading asm.
- Read a function's asm: `awk '/thumb_func_start NAME/,/thumb_func_start /' asm/FILE.s`
- In the QOL build, labels must match their address (see above). If they don't, every
  address-based tool lies.

## Headless tools (libmgba, `gcc -O2 -o OUT bin/X.c -lmgba [-lpng]`)

All take ROM SAV INPUTS. SAV is a copy that gets written; a fresh one is
`head -c 65536 /dev/zero | tr '\0' '\377' > x.sav`. INPUTS holds "frame keymask" lines from
`python3 bin/inputs.py N`: a new game that reaches the first battle by frame ~30000.
`build/mv/in90.txt` holds 90000 frames.

- `build/mv/phases ROM SAV INPUTS N` (`bin/phases.c`): prints each battle phase/state
  change. To time a mod, run it on the original and the mod ROM and compare the frames spent
  per state.
- `build/dlg/boot ROM SAV INPUTS N STEP OUTDIR` (`bin/boot.c`): a PNG every STEP frames;
  with DUMP=FRAME, also RAM. To look at a stretch, `montage` the PNGs into one sheet.
- `build/shift_test/watch ROM SAV INPUTS FROM TO ADDR` (`bin/watch.c`): prints PC and
  registers on every write to the word at ADDR. BREAK=ADDR prints registers when the PC
  reaches ADDR; use the function's address + 4 (pipeline).
- `bin/shift-test` and `bin/lockstep`: check that code and data can move.
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
- Messages: `src/message.c`, `include/message.h`. The printer's context is
  `*message_context`; the control-code interpreter is `sub_08015188`.
- Battle popups (damage, GUARD) are data scripts; see `gDamageNumberAnim` in `data/data.s`.
