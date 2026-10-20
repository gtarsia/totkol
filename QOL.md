# QoL features

What the QOL build (`make QOL=1`) changes from the original game.

## Options

- **Cursor speed:** starts at high, so a held key repeats every frame.
- **Messages:** start at "all at once" instead of letter by letter.
- **Navigation messages:** start off. In the original that hung the name
  entry; see [BUGS.md](BUGS.md).

## Messages

- **Message window:** opens and closes at once, without the animation where it grows from
  a bar or shrinks into one.

## Battle

- **EXP popup:** the EXP a unit earns rises above it as a gold number, like damage numbers.
  It replaces the "N EXP earned." message box, so it doesn't stop the game.
  Only for the player's units: guests and enemies show nothing.

## Fixes

- **Name entry with navigation messages off:** it accepts input. See [BUGS.md](BUGS.md).
