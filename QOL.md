# QoL features

What the QOL build (`make QOL=1`) changes from the original game.

## Options

- **Cursor speed:** starts at high, so a held key repeats every frame.
- **Messages:** start at "all at once" instead of letter by letter.
- **NAVI:** starts off. In the original that hung the name entry; see [BUGS.md](BUGS.md).

## Battle

- **EXP popup:** the EXP a unit earns rises above it as a gold number, like damage numbers.
  It replaces the "N EXP earned." message box, so it doesn't stop the game.
  Only for the player's units: guests and enemies show nothing.
- **NAVI tips:** the tips from `sub_0806C220` (e.g. after the first level up) are skipped.

## Fixes

- **Name entry with NAVI off:** it accepts input. See [BUGS.md](BUGS.md).
