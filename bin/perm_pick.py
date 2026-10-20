# perm_pick.py SRC FUNC DIR BEST STYLE: shows all the changes in the permuter's output BEST at once
# with their effect on the diff and, if accepted, patches them into the NONMATCHING block of SRC.
# Run with decomp-permuter's Python (it has pycparser); perm pick calls it. The permuter works on
# preprocessed C (no comments, macros expanded), so changes are matched to SRC ignoring spaces,
# parentheses, braces and comments, with macros expanded. If any can't be matched cleanly, or
# would drop a comment, nothing is patched and they're listed to apply by hand. An output that adds
# logic differences (see diff) is shown with a red warning; one whose changes don't change the
# diff is skipped (perm's --all shows it).
import difflib, os, re, subprocess, sys, tempfile, time
from pycparser import c_ast, c_parser, c_generator

SRC, FUNC, DIR, BEST, STYLE = sys.argv[1:6]
TMP = tempfile.mkdtemp()
sys.stdout.reconfigure(line_buffering=True)  # keep our lines in order with sbs's output
SHOW_ALL = os.environ.get('PICK_ALL') == '1'


def run(*cmd, **kw):
    return subprocess.run(cmd, capture_output=True, text=True, **kw)


def formatted(path):
    """The file reprinted by pycparser (as the permuter does), then in src/'s style."""
    ast = c_parser.CParser().parse(open(path).read())
    # Drop empty statements: a block macro's "{ ... };" is a block plus ";", and clang-format's
    # RemoveBracesLLVM then unwraps "if (x) { {...} ; } else" into "{...}; else", which breaks.
    class Drop(c_ast.NodeVisitor):
        def visit_Compound(self, node):
            if node.block_items:
                node.block_items = [n for n in node.block_items
                                    if not isinstance(n, c_ast.EmptyStatement)]
            self.generic_visit(node)
    Drop().visit(ast)
    text = c_generator.CGenerator().visit(ast)
    return run('clang-format', f'--style={STYLE}', input=text).stdout.splitlines()


def region_start(lines):
    return next(i for i, l in enumerate(lines)
                if l.startswith(('inline static', 'static inline')) or f' {FUNC}(' in l)


# Instructions of FUNC in an object, as diff compares them.
def dump(obj):
    out = run('arm-none-eabi-objdump', '-d', '-r', '--no-show-raw-insn', f'--disassemble={FUNC}',
              obj).stdout
    lines = []
    for l in out.splitlines():
        if not re.match(r'^\s+[0-9a-f]+:', l):
            continue
        l = re.sub(r'^\s+[0-9a-f]+:\s+', '', l)
        l = re.sub(r'\s*<[^>]*>', '', l)
        l = re.sub(r'\s*@.*', '', l)
        l = re.sub(r'\t+', ' ', l)
        l = re.sub(r'^(b[a-z.]*) [0-9a-f]+$', r'\1', l)
        lines.append(l)
    return lines


open(f'{TMP}/target.txt', 'w').write('\n'.join(dump(f'{DIR}/target.o')) + '\n')


def pool_loads(lines):
    """The lines with "ldr rX, [pc, #N]" as "ldr rX, =VALUE", as diff's logic does: VALUE is the
    word at that address, or its relocation's symbol. objdump leaves out a word that is 0 plus a
    relocation, so then the relocation is the word; words are aligned to 4."""
    def word(l, p):
        return l.startswith('.word ') or (l.startswith('R_ARM_ABS32 ')
                                          and not p.startswith('.word '))
    addrs, pool, a, p, w, wa = [], {}, 0, '', '', 0
    for l in lines:
        if word(l, p):
            a = (a + 3) // 4 * 4
        addrs.append(a)
        if l.startswith('.word '):
            w, wa = l.split()[1], a
            pool[a] = w
        elif l.startswith('R_ARM_ABS32 '):
            sym = l.split()[1]
            pool[wa if p.startswith('.word ') else a] = (
                sym + ('' if re.fullmatch(r'0x0+', w) or not p.startswith('.word ') else '+' + w))
        a += 4 if word(l, p) or re.match(r'bl( |$)', l) else 0 if l.startswith('R_ARM') else 2
        p = l
    out = []
    for l, a in zip(lines, addrs):
        m = re.search(r'\[pc, #(\d+)\]', l)
        t = (a + 4) // 4 * 4 + int(m.group(1)) if m else None
        out.append(l[:m.start()] + ('=' + pool[t] if t in pool else '[pc]') if m else l)
    return out


def logic(lines):
    """The listing with what isn't logic made equal, as diff's logic count does: registers,
    stack offsets, register copies, alignment padding, jump-table addresses, where a constant
    sits (pc offsets) and the literal pool itself."""
    out = []
    lines = pool_loads(lines)
    for i, l in enumerate(lines):
        l = re.sub(r'\b(r\d+|sb|sl|fp|ip)\b', 'R', l)
        l = re.sub(r'\[sp, #\d+\]', '[sp, #N]', l)
        l = {'mov R, R': 'copy', 'adds R, R, #0': 'copy', '.short 0x0000': 'copy',
             'adds R, R, R': 'add R, R'}.get(l, l)
        if l.startswith('.word ') and i + 1 < len(lines) and lines[i + 1] == 'R_ARM_ABS32 .text':
            l = '.word target'
        elif l.startswith(('.word ', 'R_ARM_ABS32 ')) and l != 'R_ARM_ABS32 .text':
            l = 'pool'
        out.append(l)
    return out


target = open(f'{TMP}/target.txt').read().split('\n')
open(f'{TMP}/target.logic', 'w').write('\n'.join(logic(target)))


def score(prefix, region):
    """(instruction lines that differ from the original, of them logic only), as diff counts
    them, or None if it doesn't compile."""
    c, o = f'{TMP}/cand.c', f'{TMP}/cand.o'
    open(c, 'w').write('\n'.join(prefix + region) + '\n')
    if run(f'{DIR}/compile.sh', c, '-o', o).returncode:
        return None
    lines = dump(o)
    open(f'{TMP}/new.txt', 'w').write('\n'.join(lines) + '\n')
    out = run('diff', f'{TMP}/target.txt', f'{TMP}/new.txt').stdout
    total = sum(1 for l in out.splitlines() if l[:1] in '<>')
    open(f'{TMP}/new.logic', 'w').write('\n'.join(logic(lines + [''])))
    out = run('diff', f'{TMP}/target.logic', f'{TMP}/new.logic').stdout
    lg = sum(1 for l in out.splitlines() if l[:1] in '<>' and l[2:] not in ('copy', 'pool'))
    return total, lg


# Macros, to compare SRC with the expanded code and to put names back into accepted lines.
macros = {}
for l in open(f'{DIR}/macros.h'):
    m = re.match(r'#define ([A-Za-z_]\w*) (\S+)$', l.strip())
    if m and not m.group(1).startswith('_'):
        macros[m.group(1)] = m.group(2)


def expand(s):
    for _ in range(3):
        s = re.sub(r'\b[A-Za-z_]\w*\b', lambda m: macros.get(m.group(0), m.group(0)), s)
    return s


def canon(s):
    # Braces count: they decide where a line goes among closing ones (a "} while (0);").
    return re.sub(r'[\s()]', '', s)


# SRC's NONMATCHING block.
src = open(SRC).read().split('\n')
b0 = src.index('#ifdef NONMATCHING') + 1
b1 = next(i for i in range(b0, len(src)) if src[i] == '#else')
block = src[b0:b1]


def src_canon(lines):
    """Per line: canonical text (comments removed, macros expanded) and whether it had a comment."""
    out, in_comment = [], False
    for l in lines:
        code, had = '', in_comment
        i = 0
        while i < len(l):
            if in_comment:
                j = l.find('*/', i)
                if j < 0:
                    i = len(l)
                else:
                    in_comment, i = False, j + 2
            elif l.startswith('//', i):
                had, i = True, len(l)
            elif l.startswith('/*', i):
                had, in_comment, i = True, True, i + 2
            else:
                code += l[i]
                i += 1
        out.append((canon(expand(code)), had))
    return out


def locate(old, before, after):
    """Lines of the block that old[] corresponds to (start, end), using up to two lines of
    context on each side; (k, k) for an insertion after line k-1. None if not unique/clean."""
    lines = src_canon(block)
    stream, starts, ends = '', [], []
    for c, _ in lines:
        starts.append(len(stream))
        stream += c
        ends.append(len(stream))
    cb, co, ca = (''.join(canon(l) for l in x) for x in (before, old, after))
    pat = cb + co + ca
    hits = [m.start() for m in re.finditer('(?=' + re.escape(pat) + ')', stream)] if pat else []
    if len(hits) != 1:
        return None
    s = hits[0] + len(cb)
    e = s + len(co)
    real = [k for k, (c, _) in enumerate(lines) if c]
    if co:
        first = next((k for k in real if starts[k] == s), None)
        last = next((k for k in reversed(real) if ends[k] == e), None)
        if first is None or last is None or any(lines[k][1] for k in range(first, last + 1)):
            return None
        return first, last + 1
    anchor = [k for k in real if ends[k] == s]
    if s == 0:
        return 0, 0
    return (anchor[-1] + 1, anchor[-1] + 1) if anchor else None


def indent(l):
    return len(l) - len(l.lstrip(' '))


def to_src(new, rng, ref):
    """new[] lines re-indented to SRC, with macro names back where the replaced lines had them."""
    k0, k1 = rng
    near = '\n'.join(block[max(0, k0 - 2):k1 + 2])
    names = {}
    for n, v in macros.items():
        if re.search(r'\b' + re.escape(n) + r'\b', near):
            names.setdefault(v, []).append(n)
    names = {v: n[0] for v, n in names.items() if len(n) == 1}
    real_ref = block[k0] if k1 > k0 else block[k0 - 1] if k0 else ''
    delta = indent(real_ref) - indent(ref)
    out = []
    while new and not new[0].strip():  # blank lines clang-format put around the change
        new = new[1:]
    while new and not new[-1].strip():
        new = new[:-1]
    for l in new:
        l = re.sub(r'\b(0x[0-9A-Fa-f]+|\d+)\b', lambda m: names.get(m.group(0), m.group(0)), l)
        out.append(' ' * max(0, indent(l) + delta) + l.lstrip(' ') if l.strip() else '')
    return out


def key():
    """One key press, without waiting for Enter (a line of input when not in a terminal)."""
    if not sys.stdin.isatty():
        return sys.stdin.readline().strip().lower()[:1] or 'q'
    import termios, tty
    fd = sys.stdin.fileno()
    saved = termios.tcgetattr(fd)
    try:
        tty.setcbreak(fd)
        c = sys.stdin.read(1).lower()
    finally:
        termios.tcsetattr(fd, termios.TCSADRAIN, saved)
    if c == '\x03':  # Ctrl+C
        raise KeyboardInterrupt
    return c


def compiles(lines):
    """Whether SRC with these lines compiles the way diff builds it."""
    c = f'{TMP}/{os.path.basename(SRC)}'
    open(c, 'w').write('\n'.join(lines))
    cpp = run('cc', '-E', '-I', 'tools/agbcc', '-I', 'tools/agbcc/include', '-iquote', 'include',
              '-iquote', os.path.dirname(SRC), '-nostdinc', '-DREVISION=0', '-DENGLISH', '-DQOL=0',
              '-DNONMATCHING', c, '-o', f'{TMP}/src.i')
    if cpp.returncode:
        return False
    pre = run('tools/preproc/preproc', f'{TMP}/src.i', 'charmap.txt')
    cc1 = run('tools/agbcc/bin/agbcc', '-mthumb-interwork', '-O2', '-fhex-asm',
              '-o', f'{TMP}/src.s', input=pre.stdout)
    return cc1.returncode == 0 and 'error' not in cc1.stderr


def show(old, new, title):
    """old and new side by side with a few lines around each change, scrollable in less."""
    o, n = f'{TMP}/old.c', f'{TMP}/new.c'
    open(o, 'w').write('\n'.join(old) + '\n')
    open(n, 'w').write('\n'.join(new) + '\n')
    env = dict(os.environ, SBS_LANG='c', CONTEXT='3', SBS_WS='ignore', SBS_TITLE=title)
    subprocess.run(['sbs', o, n], env=env, stdout=sys.stdout)


base = DIR + ('/yours.base.c' if os.path.exists(f'{DIR}/yours.base.c') else '/base.c')
mine, theirs = formatted(base), formatted(BEST + '/source.c')
prefix = mine[:region_start(mine)]
A, B = mine[region_start(mine):], theirs[region_start(theirs):]
nospace = lambda l: re.sub(r'\s+', '', l)
matcher = difflib.SequenceMatcher(None, [nospace(l) for l in A], [nospace(l) for l in B],
                                  autojunk=False)
hunks = [op for op in matcher.get_opcodes() if op[0] != 'equal']
ids = lambda lines: set(re.findall(r'\b[A-Za-z_]\w*\b', '\n'.join(lines)))
ORIG_IDS = ids(A)

# All of an output's changes go together: they only make sense as a whole (a do { here needs its
# } while there; a moved line is a deletion in one place and an insertion in another).


def with_changes(ops):
    out = list(A)
    for _, i1, i2, j1, j2 in sorted(ops, key=lambda op: -op[1]):
        out[i1:i2] = B[j1:j2]
    return out


(current, current_logic), new = score(prefix, A), score(prefix, with_changes(hunks))
s, s_logic = new if new else (None, None)
if not hunks or (s == current and not SHOW_ALL):
    print(f"\033[90mskipped: its changes don't change the diff ({current} lines; perm's --all "
          'shows them)\033[0m')
    sys.exit()
if s is None:
    effect = "doesn't compile"
else:
    d = s - current
    color = '\033[32m' if d < 0 else '\033[31m' if d > 0 else '\033[90m'
    effect = f'differing lines {current} → {s} ({color}{d:+d}\033[1;34m)'
    if s_logic > current_logic:
        # Its changes alter what the code does (or how): check it before accepting.
        effect += (f'\n\033[1;31madds logic differences ({current_logic} → {s_logic}): '
                   'it may change what the code does\033[1;34m')
# The permuter's own score (what it optimizes: a missing or extra instruction costs 100, a
# different register 5), from its log and the output's name; the line count weighs all the same.
log = open(f'{DIR}/log').read() if os.path.exists(f'{DIR}/log') else ''
m = re.search(r'base score = (\d+)', log)
pm = re.match(r'output-(\d+)-', os.path.basename(BEST.rstrip('/')))
if m and pm:
    a, b = int(m.group(1)), int(pm.group(1))
    color = '\033[32m' if b < a else '\033[31m' if b > a else '\033[90m'
    effect = f'permuter score {a} → {b} ({color}{b - a:+d}\033[1;34m) · {effect}'
places = [locate(A[i1:i2], A[max(0, i1 - 2):i1], A[i2:i2 + 2]) for _, i1, i2, _, _ in hunks]
title = f'{len(hunks)} change(s), {effect}'
if None in places:
    title += "\n\033[33msome of it can't be patched into src automatically; if accepted, nothing " \
             'is patched and all of it is listed to apply by hand'
show(A, with_changes(hunks), title)
print(f'{title}\n\033[0maccept? [y/n, q to stop] ', end='', flush=True)
ans = ''
while ans not in ('y', 'n', 'q'):
    ans = key()
print(ans + '\n')
if ans == 'q':
    sys.exit(3)  # perm stops searching
if ans != 'y':
    sys.exit()
patched = list(block)
if None not in places:
    # Patch from the bottom up, so earlier lines of the block don't move.
    for (_, i1, i2, j1, j2), rng in sorted(zip(hunks, places), key=lambda x: -x[0][1]):
        ref = A[i1] if i2 > i1 else A[i1 - 1] if i1 else ''
        patched[rng[0]:rng[1]] = to_src(B[j1:j2], rng, ref)
    if not compiles(src[:b0] + patched + src[b1:]):
        print("\033[33mpatched into src, it doesn't compile, so src is left as it was\033[0m")
        places.append(None)
if None in places:
    # All or nothing: a part alone could leave src broken.
    for _, i1, i2, j1, j2 in hunks:
        print('\033[33m' + '\n'.join('- ' + l for l in A[i1:i2]) + '\033[32m')
        print('\n'.join('+ ' + l for l in B[j1:j2]) + '\033[0m')
    sys.exit()
# A new file each time, so an earlier backup is never overwritten.
backup = f'{DIR}/{os.path.basename(SRC)}.before-pick-{time.strftime("%Y%m%d-%H%M%S")}'
open(backup, 'w').write('\n'.join(src))
src[b0:b1] = patched
open(SRC, 'w').write('\n'.join(src))
print(f'patched {len(hunks)} change(s) into {SRC} (previous version: {backup})')
print(f'differing lines now: {s}; check with bin/diff')
