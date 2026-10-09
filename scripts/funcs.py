#!/usr/bin/env python3
"""Lists functions with their size, callers and callees, from asm/*.s and src/*.c.
Usage: scripts/funcs.py FROM TO     functions whose address is in [FROM, TO)
       scripts/funcs.py NAME...     those functions
Size: up to the next function's address.
"""
import glob
import re
import sys

funcs = {}  # name -> (addr, file, body lines)
order = []
for path in sorted(glob.glob('asm/*.s')):
    cur = None
    for line in open(path, errors='replace'):
        m = re.match(r'\s*(?:thumb|arm|non_word_aligned_thumb)_func_start (\w+)', line)
        if m:
            cur = m.group(1)
            funcs[cur] = [None, path, []]
            order.append(cur)
            continue
        if cur:
            if funcs[cur][0] is None:
                m = re.match(r'%s: @ 0x([0-9A-Fa-f]+)' % cur, line)
                if m:
                    funcs[cur][0] = int(m.group(1), 16)
            funcs[cur][2].append(line)

calls = {n: set() for n in funcs}
callers = {n: set() for n in funcs}
for n, (_, _, body) in funcs.items():
    for line in body:
        for m in re.finditer(r'\b(?:bl|b|\.4byte|=)\s*(sub_[0-9A-F]{8}|[A-Z]\w+)\b', line):
            t = m.group(1)
            if t in funcs and t != n:
                calls[n].add(t)
                callers[t].add(n)
for path in glob.glob('src/*.c'):
    text = open(path).read()
    for t in set(re.findall(r'\b(sub_[0-9A-F]{8})\b', text)):
        if t in funcs:
            callers[t].add(path)

addrs = sorted((a, n) for n, (a, _, _) in funcs.items() if a)
size = {n: (addrs[i + 1][0] - a if i + 1 < len(addrs) else 0) for i, (a, n) in enumerate(addrs)}

args = sys.argv[1:]
if len(args) == 2 and all(re.fullmatch(r'(0x)?[0-9A-Fa-f]+', x) for x in args):
    lo, hi = (int(x, 16) for x in args)
    names = [n for a, n in addrs if lo <= a < hi]
else:
    names = args
for n in (n for n in names if n in funcs):
    a, path, _ = funcs[n]
    short = lambda s: ' '.join(sorted(x.replace('sub_', '') for x in s))
    print(f'{n} {a:08X} {size.get(n, 0):5d} {path[4:]}  <- {short(callers[n])}  -> {short(calls[n])}')
