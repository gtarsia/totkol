# Bugs of the original game

Bugs found in the original ROM. Most can't happen in a normal game.

## Name entry hangs with navigation messages off

**Repro:** set navigation messages off in the default options, then start a new game.
The default options are byte `0x61D57F` of the ROM, bit 0.
The name entry draws, but it ignores every key.

**Cause:** the state machine is `sub_08147300`, and its state is `*gUnk_0202DFF0 + 0x3C`.
State 1 sets state 3, then shows the navigation help if bit 0 of `gUnk_02000000[0x132F]` is on.
After the help it moves to state 6, waits for the message, then goes to state 4 (input).
With them off it never leaves state 3, which does nothing.

**Why nobody saw it:** navigation messages start on, and the options can't be changed
before the name entry.

**Fix (QOL):** `NameHelp` in `src/name_entry.c` sets state 4 instead of 3. With them on,
the help still moves it to state 6, so nothing else changes. QOL also starts with them off.
