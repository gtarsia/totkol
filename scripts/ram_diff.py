# ram_diff.py A B PAD: per frame, RAM words that differ beyond the expected +PAD on ROM pointers.
import glob, os, struct, sys
A, B, PAD = sys.argv[1], sys.argv[2], int(sys.argv[3], 0)
LO = 0x08000254  # crt0 end-ish: everything above moved
for fa in sorted(glob.glob(f'{A}/*.ram')):
    a = open(fa, 'rb').read(); b = open(f'{B}/{os.path.basename(fa)}', 'rb').read()
    bad = []
    for i in range(0, len(a), 4):
        va, vb = struct.unpack_from('<I', a, i)[0], struct.unpack_from('<I', b, i)[0]
        if va == vb or (0x08000000 <= va < 0x08800000 and vb == va + PAD):
            continue
        ram = 0x02000000 + i if i < 0x40000 else 0x03000000 + i - 0x40000
        bad.append((ram, va, vb))
    print(os.path.basename(fa), len(bad), ' '.join(f'{r:08X}:{x:08X}/{y:08X}' for r, x, y in bad[:6]))
