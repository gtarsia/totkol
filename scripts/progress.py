#!/usr/bin/env python3
"""Prints how much of the game's code is in C, from totkol.map (run make first).
Usage: scripts/progress.py [--md]    --md: one line for README.md
Counts the game's code only: not crt0, the m4a sound driver, flash, multiboot or libgcc/libc.
Each object's size goes up to the next object, so a QOL build gives the same numbers.
"""
import glob
import re
import sys

LIBS = re.compile(r'asm/(crt0|libagbsyscall|agb_flash\w*|multi_sio\w*|m4a\w*)\.o|\.a\(')

objs = []  # (addr, size, name)
for line in open('totkol.map'):
    m = re.match(r' \.text\s+0x([0-9a-f]+)\s+0x([0-9a-f]+) (\S+)', line)
    if m and int(m.group(2), 16):
        objs.append((int(m.group(1), 16), int(m.group(2), 16), m.group(3)))
objs.sort()

c = total = 0
for i, (addr, size, name) in enumerate(objs):
    nxt = objs[i + 1][0] if i + 1 < len(objs) else addr + size
    if addr >> 24 == 8 and nxt >> 24 == 8:
        size = nxt - addr
    if LIBS.search(name):
        continue
    total += size
    if name.startswith('src/'):
        c += size

asm_funcs = 0
for path in glob.glob('asm/*.s'):
    if LIBS.search(path.replace('.s', '.o')):
        continue
    asm_funcs += len(re.findall(r'^\s*(?:thumb|arm|non_word_aligned_thumb)_func_start ',
                                open(path, errors='replace').read(), re.M))
c_funcs = 0
for path in glob.glob('src/*.c'):
    # Top-level definitions of the original game: not static, not under #if QOL.
    text = re.sub(r'^#if QOL\b.*?^#endif', '', open(path).read(), flags=re.M | re.S)
    c_funcs += len(re.findall(r'^(?!static\b)[A-Za-z_][\w ]*\*?\s*\b\w+\(.*\)\s*\n\{',
                              text, re.M))

pct = 100 * c / total
if '--md' in sys.argv:
    print(f'**Decomp:** {pct:.2f}% of the code is in C ({c:,} of {total:,} bytes, '
          f'{c_funcs} of {c_funcs + asm_funcs} functions).')
else:
    print(f'Code in C: {pct:.2f}%  ({c:,} / {total:,} bytes)')
    print(f'Functions: {c_funcs} in C, {asm_funcs} in asm')
