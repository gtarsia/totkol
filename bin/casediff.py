# casediff.py ORIG.o NEW.o [CASE]: diffs a switch function case by case. Each case runs from its
# jump table target to the next target in address order; branch targets are dropped.
import difflib, re, subprocess, sys

def dump(obj):
    out = subprocess.run(['arm-none-eabi-objdump', '-d', '-r', '--no-show-raw-insn', obj],
                         capture_output=True, text=True).stdout
    insns, table = [], []
    for line in out.splitlines():
        m = re.match(r'\s+([0-9a-f]+):\s+(.*)', line)
        if m:
            a, t = int(m[1], 16), re.sub(r'\s*[<@].*', '', m[2]).replace('\t', ' ').strip()
            if t.startswith('R_ARM'):
                insns[-1][1] += ' ' + ' '.join(t.split())
            else:
                insns.append([a, t])
    words = [(a, t) for a, t in insns if t.startswith('.word') and 'R_ARM_ABS32 .text' in t]
    table = [int(t.split()[1], 16) for a, t in words[1:32]]  # words[0] points at the table
    norm = lambda t: re.sub(r'^(b\S*|bl) [0-9a-f]+$', r'\1', t)
    cases = {}
    starts = sorted(set(table)) + [10**9]
    for i, s in enumerate(table):
        e = starts[starts.index(s) + 1]
        cases[i] = [norm(t) for a, t in insns if s <= a < e]
    return cases

o, n = dump(sys.argv[1]), dump(sys.argv[2])
only = int(sys.argv[3], 0) if len(sys.argv) > 3 else None
for i in range(31):
    if only is not None and i != only:
        continue
    d = [l for l in difflib.unified_diff(o[i], n[i], lineterm='', n=2)][2:]
    print(f'case {i:#x}: ' + ('ok' if not d else f'{len(o[i])} vs {len(n[i])}'))
    if d and only is not None:
        print('\n'.join(d))
