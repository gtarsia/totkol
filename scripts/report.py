#!/usr/bin/env python3
"""Compile src/NAME.c like the Makefile does and write an HTML report of the whole pipeline.

Usage: scripts/report.py NAME [FUNC] [-DNAME ...] [--vs REV ...] [--qol] [-o OUT.html]

Views, per function: the C, the preprocessed C, each RTL pass (with the C lines, variable names
on pseudos and what each pass changed), the asm, a side-by-side comparison with the original
(build/totkol/src/NAME.o, as scripts/ndiff.sh does) or with the C at git revision REV, and an
analysis page (variable -> pseudo -> hard reg or stack slot, PRE expressions, stack slots).
The original is asm, so its stack slot data comes from master's C when that gives the same
asm. NONMATCHING is defined unless --matching is given. Run it from the repo root; it needs
tools/agbcc/bin/agbcc_names (agbcc patched to print variables and where pseudos end up).
"""

import difflib
import html
import json
import os
import re
import shlex
import subprocess
import sys
import tempfile

CPPFLAGS = ['-I', 'tools/agbcc', '-I', 'tools/agbcc/include', '-iquote', 'include', '-nostdinc',
            '-DREVISION=0', '-DENGLISH']
CFLAGS = ['-mthumb-interwork', '-Wimplicit', '-Wparentheses', '-O2', '-g', '-fhex-asm',
          '-fprologue-bugfix', '-ffix-debug-line']
CC1 = 'tools/agbcc/bin/agbcc_names'
PREPROC = 'tools/preproc/preproc'
AS = ['arm-none-eabi-as', '-mcpu=arm7tdmi']
OBJDUMP = ['arm-none-eabi-objdump', '-d', '-r', '-l', '--no-show-raw-insn']

# Pass order in gcc 2.95's rest_of_compilation.
PASSES = ['rtl', 'jump', 'cse', 'addressof', 'gcse', 'loop', 'cse2', 'flow', 'combine',
          'regmove', 'sched', 'lreg', 'greg', 'flow2', 'sched2', 'jump2', 'mach', 'dbr']


def run(cmd, **kw):
    print('$ ' + ' '.join(shlex.quote(c) for c in cmd), file=sys.stderr)
    return subprocess.run(cmd, check=True, **kw)


def build(src, defines, tmp, tag, dumps=True):
    """Preprocess, compile (with -da) and assemble src. Returns the paths of .c, .s, .o."""
    os.makedirs(os.path.join(tmp, tag), exist_ok=True)
    base = os.path.join(tmp, tag, os.path.splitext(os.path.basename(src))[0])
    run(['cc', '-E'] + CPPFLAGS + defines + [src, '-o', base + '.i'])
    with open(base + '.c', 'w') as out:
        run([PREPROC, base + '.i', 'charmap.txt'], stdout=out)
    with open(base + '.names', 'w') as err:
        run([CC1] + CFLAGS + (['-da'] if dumps else []) + [base + '.c', '-o', base + '.s'],
            stderr=err)
    run(AS + ['-o', base + '.o', base + '.s'])
    return base


# ---------------------------------------------------------------- RTL dumps

def balanced_end(lines, i):
    """Index after the line where the expression starting at lines[i] closes."""
    depth = 0
    while i < len(lines):
        line = re.sub(r'"[^"]*"', '', lines[i])
        depth += line.count('(') - line.count(')')
        i += 1
        if depth <= 0:
            break
    return i


LINE_NOTE = re.compile(r'\(note \d+ \d+ \d+ \("([^"]*)"\) (\d+)\)')
OTHER_NOTE = re.compile(r'\(note(?:/\w+)* (\d+) \d+ \d+ \S+ (\w+)\)')
HEAD = re.compile(r'\((\w+)(?:/\w+)* (\d+) ')


def parse_function(lines):
    """One function's dump lines -> items: ['l', file, line] line note, ['n', kind] other note,
    ['i', kind, uid, text] insn, ['x', text] indented rtx, ['t', text] log line."""
    items = []
    i = 0
    while i < len(lines):
        line = lines[i]
        if line.startswith('('):
            j = balanced_end(lines, i)
            text = '\n'.join(lines[i:j])
            i = j
            m = LINE_NOTE.match(text)
            if m:
                items.append(['l', m.group(1), int(m.group(2))])
                continue
            m = OTHER_NOTE.match(text)
            if m:
                items.append(['n', m.group(2)])
                continue
            m = HEAD.match(text)
            items.append(['i', m.group(1) if m else '', m.group(2) if m else '', text])
        elif line.startswith(' ') and line.lstrip().startswith('('):
            j = balanced_end(lines, i)
            items.append(['x', '\n'.join(lines[i:j])])
            i = j
        else:
            items.append(['t', line])
            i += 1
    while items and items[-1] == ['t', '']:
        items.pop()
    return items


def split_functions(path):
    funcs, name, cur = {}, None, []
    for line in open(path).read().split('\n'):
        m = re.match(r';; Function (\S+)', line)
        if m:
            if name:
                funcs[name] = cur
            name, cur = m.group(1), []
        elif name:
            cur.append(line)
    if name:
        funcs[name] = cur
    return funcs


def parse_names(path):
    """agbcc_names output -> ({func: [[depth, name, line, where]]}, {func: {pseudo: home}})."""
    names, homes, cur, home = {}, {}, None, None
    for line in open(path):
        m = re.match(r';; Function (\S+)', line)
        if m:
            cur = names.setdefault(m.group(1), [])
            home = homes.setdefault(m.group(1), {})
            continue
        m = re.match(r'( *)(\S+) \(line (\d+)\) -> (.*)', line)
        if m and cur is not None:
            cur.append([len(m.group(1)) // 2, m.group(2), int(m.group(3)), m.group(4)])
            continue
        m = re.match(r'(\d+) -> (\S+)$', line)
        if m and home is not None:
            home[m.group(1)] = m.group(2)
    return names, homes


def parse_gcse(lines):
    """PRE in one function's .gcse: expressions, their pseudos and the insns involved."""
    exprs, cur, pre = {}, None, {}
    in_table = False
    for line in lines:
        m = re.match(r'Expression hash table \((\d+) buckets', line)
        if m:
            exprs, in_table, size = {}, True, int(m.group(1))
            continue
        if in_table:
            m = re.match(r'Index (\d+) \(hash value (\d+)\)', line)
            if m:
                cur = exprs[m.group(1)] = {'hash': int(m.group(2)), 'text': ''}
                continue
            if line.startswith(' ') and cur is not None:
                cur['text'] += (' ' if cur['text'] else '') + line.strip()
                continue
            if line.strip():
                in_table = False
        m = re.match(r'PRE: redundant insn (\d+) \(expression (\d+)\) in bb \d+, '
                     r'reaching reg is (\d+)', line)
        if m:
            e = pre.setdefault(m.group(2), {'reg': m.group(3), 'redundant': [], 'inserted': []})
            e['redundant'].append(m.group(1))
        m = re.match(r'PRE/HOIST: end of bb \d+, insn (\d+), copying expression (\d+) '
                     r'to reg (\d+)', line)
        if m:
            e = pre.setdefault(m.group(2), {'reg': m.group(3), 'redundant': [], 'inserted': []})
            e['inserted'].append(m.group(1))
    rows = []
    for idx, e in pre.items():
        x = exprs.get(idx, {'hash': -1, 'text': '?'})
        rows.append({'index': int(idx), 'hash': x['hash'], 'expr': x['text'], **e})
    rows.sort(key=lambda r: r['hash'])
    return {'size': size if exprs else 0, 'rows': rows}


# ---------------------------------------------------------------- asm and comparison

def objdump(obj):
    """{func: [[addr, text, target addr or '', reloc symbol or '', src line or 0]]}."""
    out = subprocess.run(OBJDUMP + [obj], check=True, capture_output=True, text=True).stdout
    # Only function symbols start a function; labels inside included asm don't.
    syms = subprocess.run(['arm-none-eabi-readelf', '-sW', obj], check=True,
                          capture_output=True, text=True).stdout
    is_func = {l.split()[-1] for l in syms.split('\n') if ' FUNC ' in l}
    funcs, cur, line = {}, None, 0
    for raw in out.split('\n'):
        m = re.match(r'[0-9a-f]+ <(\w+)>:$', raw)
        if m and m.group(1) in is_func:
            cur, line = funcs.setdefault(m.group(1), []), 0
            continue
        if cur is None:
            continue
        m = re.match(r'(/\S+|\S+\.[ch]):(\d+)', raw)
        if m:
            line = int(m.group(2)) if m.group(1).endswith('/src/' + SRC_NAME) else 0
            continue
        m = re.match(r'\s+[0-9a-f]+: (R_ARM_\w+)\s+(\S+)', raw)
        if m and cur:
            cur[-1][3] = m.group(2)
            continue
        m = re.match(r'\s+([0-9a-f]+):\s+(.*)', raw)
        if not m:
            continue
        t = re.sub(r'\s*@.*', '', m.group(2))
        t = re.sub(r'\s*<[^>]*>', '', t)
        t = re.sub(r'\s+', ' ', t).strip()
        target = ''
        b = re.match(r'(b[a-z.]*) ([0-9a-f]+)$', t)
        if b:
            t = b.group(1)
            if t != 'bl':
                target = b.group(2)
        cur.append([m.group(1), t, target, '', line])
    return funcs


def logic(t, reloc):
    """An instruction with registers and stack/pc offsets made the same (ndiff.sh's rules)."""
    t = re.sub(r'\b(r\d+|sb|sl|fp|ip)\b', 'R', t)
    t = re.sub(r'\[(sp|pc), #\d+\]', r'[\1, #N]', t)
    if re.fullmatch(r'movs? R, R|adds R, R, #0|\.short 0x0000', t):
        return 'copy'
    t = re.sub(r'^adds R, R, R$', 'add R, R', t)
    if t.startswith('.word') and reloc == '.text':
        return '.word target'
    return t + (' ' + reloc if reloc else '')


def show(ins, idx):
    """Instruction text with its call/data symbol and branch target as a row index."""
    a, t, target, reloc, _ = ins
    if reloc:
        t += ' <' + reloc + '>'
    if target:
        t += ' → ' + str(idx.get(target, '?'))
    return t


def same_asm(a, b):
    """Same instructions, ignoring alignment padding (and so the branch targets it shifts)."""
    key = lambda xs: [(x[1], x[3]) for x in xs if x[1] != '.short 0x0000']
    return key(a) == key(b)


def compare(old, new):
    """Rows [mark, left n, right n, left text, right text, C line of the right]. Marks:
    ' ' same, '~' only registers/offsets, '!' code differs, '-' only left, '+' only right."""
    li = {x[0]: i + 1 for i, x in enumerate(old)}
    ri = {x[0]: i + 1 for i, x in enumerate(new)}
    a = [logic(x[1], x[3]) for x in old]
    b = [logic(x[1], x[3]) for x in new]
    rows = []

    def row(mark, i, j):
        l = show(old[i], li) if i is not None else ''
        r = show(new[j], ri) if j is not None else ''
        if mark == ' ' and l != r:
            mark = '~'
        if mark in '-+' and 'copy' in ((a[i],) if i is not None else (b[j],)):
            mark = '~'
        rows.append([mark, i + 1 if i is not None else '', j + 1 if j is not None else '',
                     l, r, new[j][4] if j is not None else 0])

    sm = difflib.SequenceMatcher(None, a, b, autojunk=False)
    for op, i1, i2, j1, j2 in sm.get_opcodes():
        if op == 'equal':
            for k in range(i2 - i1):
                row(' ', i1 + k, j1 + k)
            continue
        n = max(i2 - i1, j2 - j1)
        for k in range(n):
            i = i1 + k if i1 + k < i2 else None
            j = j1 + k if j1 + k < j2 else None
            row('!' if i is not None and j is not None else '-' if j is None else '+', i, j)
    # A branch whose target isn't the row paired with the other side's target jumps elsewhere.
    pair = {r[1]: r[2] for r in rows if r[1] and r[2]}
    for r in rows:
        if r[1] and r[2] and r[0] in ' ~':
            lt, rt = old[r[1] - 1][2], new[r[2] - 1][2]
            if lt and rt and pair.get(li.get(lt)) != ri.get(rt):
                r[0] = '!'
    exact = sum(r[0] != ' ' for r in rows)
    code = sum(r[0] in '!-+' for r in rows)

    def frame(xs):
        for x in xs:
            m = re.match(r'sub sp, #(\d+)', x[1])
            if m:
                return int(m.group(1))
        return 0

    def slots(xs):
        return sorted({m for x in xs for m in re.findall(r'\[sp, #\d+\]', x[1])})

    summary = {'left': len(old), 'right': len(new), 'differ': exact, 'logic': code,
               'frame': [frame(old), frame(new)], 'slots': [len(slots(old)), len(slots(new))],
               'same_slots': slots(old) == slots(new)}
    return {'rows': rows, 'summary': summary}


# ---------------------------------------------------------------- sources

def own_lines(c_file, src):
    """The preprocessed lines that came from src, as [original line, text]."""
    out, line, mine = [], 0, False
    for raw in open(c_file):
        m = re.match(r'# (\d+) "([^"]*)"', raw)
        if m:
            line, mine = int(m.group(1)), m.group(2) == src
            continue
        if mine and raw.strip():
            out.append([line, raw.rstrip('\n')])
        line += 1
    return out


def func_range(items, src, source, func):
    """First and last C line of func: its first line note, back to the line with its name."""
    lines = [it[2] for it in items if it[0] == 'l' and it[1] == src]
    if not lines:
        return [0, 0]
    first, last = min(lines), max(lines)
    for k in range(first, max(first - 30, 0), -1):
        if re.search(r'\b%s\s*\(' % re.escape(func), source[k - 1]):
            first = k
            break
    return [first, last]


def main():
    global SRC_NAME
    args = sys.argv[1:]
    out_path, defines, vs, pos, qol, matching = None, [], [], [], '0', False
    while args:
        a = args.pop(0)
        if a == '-o':
            out_path = args.pop(0)
        elif a == '--vs':
            vs.append(args.pop(0))
        elif a == '--qol':
            qol = '1'
        elif a == '--matching':
            matching = True
        elif a in ('-h', '--help'):
            sys.exit(__doc__)
        elif a.startswith('-D'):
            defines.append(a if a != '-D' else '-D' + args.pop(0))
        else:
            pos.append(a)
    if not pos:
        sys.exit(__doc__)
    name = os.path.splitext(os.path.basename(pos[0]))[0]
    start_func = pos[1] if len(pos) > 1 else None
    src = 'src/%s.c' % name
    SRC_NAME = name + '.c'
    defines = ['-DQOL=' + qol] + ([] if matching else ['-DNONMATCHING']) + defines
    out_path = out_path or os.path.join('build', 'report', name + '.html')

    tmp = tempfile.mkdtemp(prefix='report.')
    base = build(src, defines, tmp, 'new')

    passes = {}
    for p in PASSES:
        path = base + '.c.' + p
        if os.path.exists(path):
            passes[p] = {f: parse_function(lines) for f, lines in split_functions(path).items()}
    first_pass = next(iter(passes.values()))
    funcs = list(first_pass)
    source = open(src).read().split('\n')
    names, homes = parse_names(base + '.names')
    gcse = {}
    if os.path.exists(base + '.c.gcse'):
        gcse = {f: parse_gcse(lines) for f, lines in split_functions(base + '.c.gcse').items()}
    mine = objdump(base + '.o')

    # The sides to compare against: the original build, then each --vs revision.
    sides, info = {}, {}
    run(['make', '-s', 'QOL=' + qol, 'build/totkol/src/%s.o' % name])
    sides['original'] = objdump('build/totkol/src/%s.o' % name)
    def build_rev(rev):
        """src at git REV, compiled as src/NAME.c: (asm, slot info), or None if git lacks it."""
        tag = 'vs-' + rev.replace('/', '_')
        rsrc = os.path.join(tmp, tag, 'src', name + '.c')
        os.makedirs(os.path.dirname(rsrc), exist_ok=True)
        with open(rsrc, 'w') as f:
            if subprocess.run(['git', 'show', '%s:%s' % (rev, src)], stdout=f,
                              stderr=subprocess.DEVNULL).returncode:
                return None
        rbase = build(rsrc, defines + ['-iquote', 'src'], tmp, tag)
        # Who lives in each stack slot on that side, for the slot clicks.
        rnames, rhomes = parse_names(rbase + '.names')
        rgcse = {}
        if os.path.exists(rbase + '.c.gcse'):
            rgcse = {f: parse_gcse(lines) for f, lines in split_functions(rbase + '.c.gcse').items()}
        return objdump(rbase + '.o'), {'names': rnames, 'homes': rhomes, 'gcse': rgcse}

    built = {}
    for rev in vs:
        built[rev] = build_rev(rev)
        if built[rev] is None:
            sys.exit('git has no %s:%s' % (rev, src))
        sides[rev], info[rev] = built[rev]
    # The original is asm, so the compiler leaves no data on it. A revision whose C gives the
    # same asm (master, once it matches) has the same data: use it for the original side.
    if 'master' not in built:
        built['master'] = build_rev('master')
    orig_info, orig_from = {'names': {}, 'homes': {}, 'gcse': {}}, {}
    for f in funcs:
        for rev, b in built.items():
            if b and f in b[0] and same_asm(sides['original'].get(f, []), b[0][f]):
                for k in orig_info:
                    if f in b[1][k]:
                        orig_info[k][f] = b[1][k][f]
                orig_from[f] = rev
                break
    info['original'] = orig_info
    cmp_ = {side: {f: compare(objs.get(f, []), mine.get(f, [])) for f in funcs}
            for side, objs in sides.items()}

    data = {
        'src': src,
        'flags': ' '.join(CFLAGS + defines),
        'source': source,
        'pre': own_lines(base + '.c', src),
        'funcs': funcs,
        'start': start_func,
        'range': {f: func_range(first_pass[f], src, source, f) for f in funcs},
        'passes': list(passes),
        'dumps': passes,
        'names': names,
        'homes': homes,
        'gcse': gcse,
        'asm': mine,
        'sides': list(sides),
        'info': info,
        'orig_from': orig_from,
        'cmp': cmp_,
    }
    os.makedirs(os.path.dirname(out_path) or '.', exist_ok=True)
    page = TEMPLATE.replace('__TITLE__', html.escape(name))
    page = page.replace('__DATA__', json.dumps(data, separators=(',', ':')).replace('</', '<\\/'))
    with open(out_path, 'w') as f:
        f.write(page)
    print('dumps: ' + os.path.join(tmp, 'new'), file=sys.stderr)
    print('file://' + os.path.abspath(out_path))


TEMPLATE = open(os.path.join(os.path.dirname(os.path.abspath(__file__)),
                             'report.html')).read()

if __name__ == '__main__':
    main()
