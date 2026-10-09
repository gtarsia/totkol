#!/usr/bin/env python3
"""Replace raw ROM pointers inside data/data.s incbins with symbols, so code can move.

Text, graphics and tilemaps are full of values that look like ROM addresses (0x086D086D, or
text control codes 8C 88 51 08), and the original disassembler created labels for some of
them. Real pointers live in structures, so a data block (label to next label) only gets its
pointer-looking values converted when they follow one:
- small blocks (a struct or two) that the code loads, or whose other words are pointers or
  small numbers;
- tables and struct arrays: the values sit at a fixed stride, with the other slots at that
  stride holding pointers too (into ROM, RAM or I/O), NULL or small numbers (fields that are
  sometimes a pointer);
- any value pointing exactly at a Thumb function (with the Thumb bit) or an ARM function;
- any value pointing at a label the code references;
- in big blocks that are mostly NULL and small numbers, values pointing exactly at a label.
A pointer-looking value is a data label or label + offset, at any alignment for exact labels.
Values made of repeated bytes or halfwords, or shaped like tilemap entries, are never pointers
(unless the code uses that label).
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
SMALL_FIT = 0.6
SPARSE_FIT = 0.9
STRIDES = (4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60, 64)
# Pointers to RAM, I/O, palette, VRAM and OAM: they fill table slots like ROM pointers do.
OTHER_POINTERS = ((0x02000000, 0x02040000), (0x03000000, 0x03008000), (0x04000000, 0x04000400),
                  (0x05000000, 0x05000400), (0x06000000, 0x06018000), (0x07000000, 0x07000400))

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
label_index = {a: i for i, a in enumerate(label_addrs)}
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


def filler(addr):
    """True if the word at addr is a small number or a pointer outside ROM."""
    value = word(addr)
    return value < 0x10000 or any(lo <= value < hi for lo, hi in OTHER_POINTERS)


def tile_like(value):
    """Tilemap entries come in pairs like 0x085C0008 (tile 0x008, then tile 0x85C); halfword
    tables end in 0xFFFF."""
    lo = value & 0xFFFF
    return lo >> 8 == 0x08 or lo < 0x100 or lo == 0xFFFF


def label_run(addr):
    """True if addr and a neighboring word point at consecutive labels, as in a table of
    pointers to back-to-back blocks."""
    def index(a):
        if a - ROM_BASE + 4 > len(ROM) or a not in data_words:
            return None
        return label_index.get(word(a))
    here = index(addr)
    if here is None:
        return False
    return any(index(addr + d) in (here - 1, here + 1) for d in (-4, 4))


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
    if tile_like(value) and value not in used_by_code and not label_run(addr):
        return None
    if value in labels:
        return labels[value], 'data label', value in used_by_code
    base = containing_label(value)
    if addr % 4:
        return None
    return f'{labels[base]} + 0x{value - base:X}', 'data label + offset', False


def block_pointers(start, end):
    hits = {a: p for a in range(start, end - 3)
            if a in data_words and a not in in_sample and (p := pointer(a))}
    if end - start <= SMALL_BLOCK:
        # A struct: its other words are pointers or small numbers, unlike colors or tiles.
        words = [a for a in range(start + (-start) % 4, end - 3, 4) if a in data_words]
        fit = sum(1 for a in words if a in hits or filler(a))
        # A small block the code loads directly is a struct, not colors.
        if not words or fit / len(words) >= SMALL_FIT or start in used_by_code:
            return hits
        return {a: p for a, p in hits.items() if p[2]}
    keep = {a for a, p in hits.items() if p[2]}
    # A struct that is mostly NULL and small numbers, like a big record with few fields set.
    words = [a for a in range(start + (-start) % 4, end - 3, 4) if a in data_words]
    if words and sum(1 for a in words if a in hits or filler(a)) / len(words) >= SPARSE_FIT:
        keep.update(a for a, p in hits.items() if a % 4 == 0 and ' + ' not in p[0])
    for stride in STRIDES:
        for phase in {a % stride for a in hits}:
            slots = range(start + (phase - start) % stride, end - 3, stride)
            ptrs = [a for a in slots if a in hits]
            small = sum(1 for a in slots if a in data_words and filler(a))
            if len(ptrs) >= 2 and (len(ptrs) + small) / len(slots) >= 0.8:
                keep.update(ptrs)
    return {a: hits[a] for a in keep}


def symbol(value):
    """Data label, or label + offset, for a ROM address in the data."""
    base = containing_label(value)
    return labels[base] if base == value else f'{labels[base]} + 0x{value - base:X}'


def is_data(value):
    return data_start <= value < data_end


def song_pointers():
    """Pointers inside the m4a sound data, found by following the song table, and the ranges
    holding samples (which hold no pointers)."""
    out, samples = {}, []
    def add(addr):
        if is_data(word(addr)):
            out[addr] = (symbol(word(addr)), 'sound')
            return word(addr)

    # Track bytecode: GOTO, PATT and REPT carry an unaligned address; other commands only take
    # argument bytes below 0x80, except MEMACC and XCMD.
    def track(addr, seen):
        while addr not in seen and is_data(addr):
            seen.add(addr)
            cmd = ROM[addr - ROM_BASE]
            if cmd in (0xB2, 0xB3, 0xB5):
                at = addr + (2 if cmd == 0xB5 else 1)
                target = add(at)
                if target:
                    track(target, seen)
                if cmd == 0xB2:
                    return
                addr = at + 4
            elif cmd == 0xB1:  # FINE; PEND only ends a pattern written inline
                return
            else:
                addr += {0xB9: 4, 0xCD: 3}.get(cmd, 1)

    # Voices: 12 bytes; DirectSound and wave voices point at sample data, keysplit and rhythm
    # voices at another voice group (keysplit also at a key table).
    def voices(addr, count, seen):
        for i in range(count):
            v = addr + 12 * i
            if v in seen:
                continue
            seen.add(v)
            kind = ROM[v - ROM_BASE]
            if kind & 0x40:
                add(v + 8)
            if kind & 0xC0 or kind & 7 in (0, 3):
                target = add(v + 4)
                if target and kind & 0xC0:
                    voices(target, 128, seen)
                elif target and kind & 7 == 3:
                    samples.append((target, target + 16))  # wave: 32 4-bit samples
                elif target:
                    # DirectSound: 16-byte header (type 0, loop flag), then size + 1 samples.
                    end = target + 16 + word(target + 12) + 1
                    if word(target) in (0, 0x40000000) and end <= data_end:
                        samples.append((target, end))

    table = next(a for a, n in labels.items() if n == 'gSongTable')
    tracks, voice_seen = set(), set()
    for song in range(table, table + 8 * 1024, 8):
        header = add(song)
        if not header:
            break
        group = add(header + 4)
        if group:
            voices(group, 128, voice_seen)
        for t in range(ROM[header - ROM_BASE]):
            start = add(header + 8 + 4 * t)
            if start:
                track(start, tracks)
    return out, samples


sound, samples = song_pointers()
in_sample = set()
for lo, hi in samples:
    in_sample.update(range(lo - 3, hi))
found = dict(sound)
for i, start in enumerate(label_addrs):
    end = label_addrs[i + 1] if i + 1 < len(label_addrs) else data_end
    candidates = block_pointers(start, end)
    # Prefer aligned pointers over unaligned ones that overlap them.
    for addr in sorted(candidates, key=lambda a: (a % 4 != 0, a)):
        if not any(a in found for a in range(addr - 3, addr + 4)) and \
                not any(a in sound for a in range(addr - 3, addr + 4)):
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
