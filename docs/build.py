# Builds index.html: compiles each example in snippets.py with lodis-qol's agbcc and puts its asm
# next to the C, plus the hand-written Instructions and Passes views in template.html. Run from
# this directory: python3 build.py (it writes its scratch files to out/).
import difflib, json, os, re, subprocess
exec(open('snippets.py').read())
exec(open('instructions.py').read())
exec(open('passes.py').read())
AGBCC = os.path.expanduser('~/git/lodis-qol/tools/agbcc/bin/agbcc')
PRE = ('typedef unsigned char u8; typedef signed char s8; typedef unsigned short u16;\n'
       'typedef signed short s16; typedef unsigned int u32; typedef signed int s32;\n')
os.makedirs('out', exist_ok=True)
def asm_of(stem, fname, src, extra=[]):
    # Compiles src to out/STEM.* and returns FNAME's asm lines.
    c = f"out/{stem}.c"
    open(c, 'w').write(PRE + src + '\n')
    r = subprocess.run([AGBCC, '-mthumb-interwork', '-O2', '-fhex-asm', '-fprologue-bugfix',
                        '-o', f"out/{stem}.s", c] + extra, capture_output=True, text=True)
    if r.returncode or 'error' in r.stderr:
        raise SystemExit(f"{stem}: {r.stderr}")
    with open(f"out/{stem}.s", 'a') as f:
        f.write('\t.text\n\t.align\t2, 0\n')
    subprocess.run(['arm-none-eabi-as', '-mcpu=arm7tdmi', '-o', f"out/{stem}.o",
                    f"out/{stem}.s"], check=True)
    out = subprocess.run(['arm-none-eabi-objdump', '-d', '-r', '--no-show-raw-insn',
                          f"--disassemble={fname}", f"out/{stem}.o"],
                         capture_output=True, text=True).stdout
    lines, addrs = [], {}
    raw = [l for l in out.splitlines() if re.match(r'^\s+[0-9a-f]+:', l)]
    for l in raw:
        m = re.match(r'^\s+([0-9a-f]+):\s+(.*)$', l)
        addrs.setdefault(m.group(1), len(addrs))
    asm = []
    for l in raw:
        m = re.match(r'^\s+([0-9a-f]+):\s+(.*)$', l)
        t = m.group(2)
        if t.startswith('R_ARM_THM_CALL'):
            asm[-1] = asm[-1] + ' ' + t.split()[-1]
            continue
        if t.startswith('R_ARM_ABS32'):
            asm[-1] = asm[-1] + '   ; = &' + t.split()[-1]
            continue
        t = re.sub(r'\s*@.*', '', t)
        t = re.sub(r'\t+', ' ', t).strip()
        t = re.sub(r' <[^>]*>', '', t)
        m2 = re.match(r'^(b[a-z]*(?:\.n)?) ([0-9a-f]+)$', t)
        if m2 and not t.startswith('bl '):
            # Jump target as a line number in this listing.
            tgt = addrs.get(m2.group(2))
            t = f"{m2.group(1)} → line {tgt + 1 - sum(1 for x in raw[:0])}" if tgt is not None else t
        if t.startswith('bl ') and re.match(r'^bl [0-9a-f]+$', t):
            t = 'bl'
        asm.append(t)
    # Line numbers: recount, since relocation lines were merged into the instruction above.
    idx, k = {}, 0
    for l in raw:
        m = re.match(r'^\s+([0-9a-f]+):\s+(.*)$', l)
        if not m.group(2).startswith('R_ARM'):
            k += 1
            idx.setdefault(m.group(1), k)
    fixed = []
    for t in asm:
        m3 = re.match(r'^(.*) → line (\d+)$', t)
        if m3:
            addr = [a for a, i in addrs.items() if i == int(m3.group(2)) - 1][0]
            t = f'{m3.group(1)} → {idx[addr]}'
        fixed.append(t)
    return fixed
for s in S:
    s['asm'] = asm_of(s['name'], s['name'], s['c'])
# Passes: each example is the same function built two ways (other C or a pass turned off).
for p in P:
    for side in ('a', 'b'):
        x = p[side]
        x['asm'] = asm_of(p['name'] + '_' + side, p['fn'], x['c'], x['flags'])
    # Lines that differ between the two sides get highlighted; jump targets and register
    # names are ignored unless the example is about registers.
    norm = lambda ls: [re.sub(r'→ \d+', '→', l if p['regs'] else re.sub(r'\br\d+\b', 'r', l))
                       for l in ls]
    sm = difflib.SequenceMatcher(None, norm(p['a']['asm']), norm(p['b']['asm']), autojunk=False)
    p['a']['key'], p['b']['key'] = [], []
    if p['key']:
        p['a']['key'], p['b']['key'] = [[n - 1 for n in k] for k in p['key']]
        continue
    for op, i1, i2, j1, j2 in sm.get_opcodes():
        if op != 'equal':
            p['a']['key'] += range(i1, i2)
            p['b']['key'] += range(j1, j2)
# index.html: template.html with the examples filled in.
t = open('template.html').read()
head, body = t.split('</style>\n', 1)
open('index.html', 'w').write(
    '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n'
    '<meta name="viewport" content="width=device-width, initial-scale=1">\n' + head + '</style>\n'
    '</head>\n<body>\n' + body.replace('__DATA__', json.dumps(S)).replace('__INSNS__', json.dumps(I))
    .replace('__CONDS__', json.dumps(CONDS_OUT)).replace('__PIECES__', json.dumps(PIECES))
    .replace('__PASSES__', json.dumps(P)) + '</body>\n</html>\n')
print(f'{len(S)} examples, {len(P)} pass examples -> index.html')
