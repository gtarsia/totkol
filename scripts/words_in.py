# words_in.py LO HI: .4byte lines of data/data.s whose ROM address is in [LO, HI).
import re, sys
lo, hi = int(sys.argv[1], 0), int(sys.argv[2], 0)
pos = lab = None
for ln in open('data/data.s'):
    m = re.match(r'^(\w+):: @ (\w+)', ln)
    if m: lab, pos = m.group(1), int(m.group(2), 16); continue
    m = re.match(r'\t\.incbin "baserom\.gba", (0x\w+), (0x\w+)', ln)
    if m: pos = 0x08000000 + int(m.group(1), 16) + int(m.group(2), 16); continue
    if ln.startswith('\t.4byte') and pos is not None:
        if lo <= pos < hi: print(lab, hex(pos), ln.strip())
        pos += 4
