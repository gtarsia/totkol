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
