#!/usr/bin/env python3
"""Replace raw ROM pointers inside data/data.s incbins with symbols, so code can move.

Text, graphics and tilemaps are full of values that look like ROM addresses (0x086D086D, or
text control codes 8C 88 51 08), and the original disassembler created labels for some of
them. Real pointers live in structures, so a data block (label to next label) only gets its
pointer-looking values converted when they follow one:
- small blocks (a struct or two);
- tables and struct arrays: the values sit at a fixed stride, with the other slots at that
  stride holding pointers too, NULL or small numbers (fields that are sometimes a pointer);
- any value pointing exactly at a Thumb function (with the Thumb bit) or an ARM function;
- any value pointing at a label the code references.
A pointer-looking value is a data label or label + offset, at any alignment for exact labels.
Values made of repeated bytes or halfwords are never pointers.
Needs totkol.map from a matching build. Prints what it changed.
"""
import collections
import glob
import json
import os
import re
import struct

ROM = open('baserom.gba', 'rb').read()
DATA = 'data/data.s'
ROM_BASE = 0x08000000
SMALL_BLOCK = 0x40
STRIDES = (4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60, 64)

asm = ''.join(open(path).read() for path in sorted(glob.glob('asm/*.s')))
kinds = dict((name, kind) for kind, name in re.findall(r'(thumb|arm)_func_start (\w+)', asm))
funcs = {}
for line in open('totkol.map'):
    m = re.match(r'\s+0x(0*8[0-9a-f]{6,7})\s+(\w+)$', line)
    if m and m.group(2) in kinds:
        funcs[int(m.group(1), 16)] = m.group(2)

text = open(DATA).read()
chunk_re = re.compile(r'\t\.incbin "baserom\.gba", (0x[0-9A-Fa-f]+), (0x[0-9A-Fa-f]+)\n')
labels = {}
for name, addr in re.findall(r'^(\w+):: @ ([0-9A-F]{8})', text, re.M):
    labels[int(addr, 16)] = name
label_addrs = sorted(labels)
asm_names = set(re.findall(r'\w+', asm))
used_by_code = {a for a, name in labels.items() if name in asm_names}
chunks = [(int(o, 16), int(n, 16)) for o, n in chunk_re.findall(text)]
data_start = ROM_BASE + chunks[0][0]
data_end = ROM_BASE + chunks[-1][0] + chunks[-1][1]
data_words = set()
for offset, size in chunks:
    data_words.update(range(ROM_BASE + offset, ROM_BASE + offset + size - 3))


def containing_label(addr):
    lo, hi = 0, len(label_addrs)
    while lo < hi:
        mid = (lo + hi) // 2
        if label_addrs[mid] <= addr:
            lo = mid + 1
        else:
            hi = mid
    return label_addrs[lo - 1]


def word(addr):
    return struct.unpack_from('<I', ROM, addr - ROM_BASE)[0]


def pointer(addr):
    """(symbol, kind, sure) if the word at addr looks like a pointer, else None."""
    value = word(addr)
    b = value.to_bytes(4, 'little')
    if value >> 16 == value & 0xFFFF or b[0] == b[1] == b[2]:
        return None
    if value & 1 and kinds.get(funcs.get(value - 1)) == 'thumb':
        return funcs[value - 1], 'thumb function', True
    if value != ROM_BASE and kinds.get(funcs.get(value)) == 'arm':
        return funcs[value], 'arm function', True
    if not data_start <= value < data_end:
        return None
    if value in labels:
        return labels[value], 'data label', value in used_by_code
    base = containing_label(value)
    if addr % 4:
        return None
    return f'{labels[base]} + 0x{value - base:X}', 'data label + offset', False


def block_pointers(start, end):
    hits = {a: p for a in range(start, end - 3) if a in data_words and (p := pointer(a))}
    if end - start <= SMALL_BLOCK:
        return hits
    keep = {a for a, p in hits.items() if p[2]}
    for stride in STRIDES:
        for phase in {a % stride for a in hits}:
            slots = range(start + (phase - start) % stride, end - 3, stride)
            ptrs = [a for a in slots if a in hits]
            small = sum(1 for a in slots if a in data_words and word(a) < 0x10000)
            if len(ptrs) >= 2 and (len(ptrs) + small) / len(slots) >= 0.8:
                keep.update(ptrs)
    return {a: hits[a] for a in keep}


found = {}
for i, start in enumerate(label_addrs):
    end = label_addrs[i + 1] if i + 1 < len(label_addrs) else data_end
    candidates = block_pointers(start, end)
    # Prefer aligned pointers over unaligned ones that overlap them.
    for addr in sorted(candidates, key=lambda a: (a % 4 != 0, a)):
        if not any(a in found for a in range(addr - 3, addr + 4)):
            found[addr] = candidates[addr][:2]

# For debugging: POINTERS_DUMP writes every decision, POINTERS_ONLY keeps only listed addresses.
if os.environ.get('POINTERS_DUMP'):
    json.dump(found, open(os.environ['POINTERS_DUMP'], 'w'))
if os.environ.get('POINTERS_ONLY'):
    keep = set(json.load(open(os.environ['POINTERS_ONLY'])))
    found = {a: v for a, v in found.items() if a in keep}

stats = collections.Counter()


def convert(m):
    offset, size = int(m.group(1), 16), int(m.group(2), 16)
    out, pos = [], offset

    def bytes_until(end):
        if end > pos:
            out.append(f'\t.incbin "baserom.gba", 0x{pos:X}, 0x{end - pos:X}\n')

    for addr in range(ROM_BASE + offset, ROM_BASE + offset + size - 3):
        if addr in found:
            sym, kind = found[addr]
            bytes_until(addr - ROM_BASE)
            out.append(f'\t.4byte {sym}\n')
            pos = addr - ROM_BASE + 4
            stats[kind + ('' if addr % 4 == 0 else ' (unaligned)')] += 1
    bytes_until(offset + size)
    return ''.join(out)


open(DATA, 'w').write(chunk_re.sub(convert, text))
for kind, n in stats.most_common():
    print(f'{n:6} {kind}')
