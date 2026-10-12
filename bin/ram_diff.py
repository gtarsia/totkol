# ram_diff.py A B PAD: memory dumps of bin/shift-test runs (DUMP set), compared frame by
# frame. Prints the words that differ beyond the expected +PAD on ROM pointers, skipping the
# stack and the bytes past the copied IRQ handler; stops at the first frame with differences.
import glob, os, struct, sys
A, B, PAD = sys.argv[1], sys.argv[2], int(sys.argv[3], 0)
# Regions in the order bin/boot.c dumps them.
REGIONS = [(0x02000000, 0x40000), (0x03000000, 0x8000), (0x05000000, 0x400),
           (0x06000000, 0x18000), (0x07000000, 0x400)]
IGNORE = [(0x03007000, 0x03008000), (0x03001268, 0x03001270)]


def address(offset):
    for base, size in REGIONS:
        if offset < size:
            return base + offset
        offset -= size


def rom_pointer(va, vb):
    """vb is va moved by PAD; the top bits may hold flags."""
    return (va >> 24) & 0xF == 8 and vb == va + PAD


def shifted(a, b, i):
    if i < 0 or i + 4 > len(a):
        return False
    return rom_pointer(struct.unpack_from('<I', a, i)[0], struct.unpack_from('<I', b, i)[0])


for fa in sorted(glob.glob(f'{A}/*.ram')):
    a = open(fa, 'rb').read(); b = open(f'{B}/{os.path.basename(fa)}', 'rb').read()
    bad = []
    for i in range(0, len(a), 4):
        va, vb = struct.unpack_from('<I', a, i)[0], struct.unpack_from('<I', b, i)[0]
        # Pointers stored at unaligned offsets show up shifted inside two words.
        if va == vb or any(shifted(a, b, i + k) for k in range(-3, 4)):
            continue
        ram = address(i)
        if not any(lo <= ram < hi for lo, hi in IGNORE):
            bad.append((ram, va, vb))
    if bad:
        print(os.path.basename(fa), len(bad))
        for r, x, y in bad[:12]:
            print(f'  {r:08X}: {x:08X} / {y:08X}')
        break
else:
    print('no differences')
