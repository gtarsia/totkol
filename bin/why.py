# why.py FUNC LINE [orig]: why an instruction of FUNC's NONMATCHING build uses the registers it
# does, from agbcc's own notes (why builds them in build/why). LINE is a line number from
# diff: of the new side, or of the original side with "orig".
#
# agbcc works with numbered values ("pseudos") and then gives each one a register:
# - values that live inside one block (no jumps in between) are given one by local-alloc, in
#   order of priority = log2(uses) * uses / span (more uses over a shorter span goes first; ties
#   go to the one created first); each takes the lowest free register, unless the value is a copy
#   of another, in which case it tries to take that one's register.
# - values that live longer are given one by global-alloc, with a similar priority.
# - values that get none live on the stack; reload adds instructions that load them into a
#   register right before they're used, and store them back. It hands out its registers
#   round-robin (each reload takes the next one after the previous reload's).
# "uses" is agbcc's count, where a use inside a loop counts as many times as the loop depth.
import os, re, subprocess, sys

FUNC, LINE = sys.argv[1], int(sys.argv[2])
ORIG_SIDE = len(sys.argv) > 3 and sys.argv[3] == 'orig'
W, F = 'build/why', 'build/fdiff'
BOLD, DIM, RED, GREEN, YELLOW, BLUE, END = (f'\033[{c}m' for c in ('1', '90', '31', '32', '33',
                                                                  '1;34', '0'))
REGS = 'r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 sl fp ip sp lr pc'.split()


def lines(path):
    return open(path).read().splitlines()


# The rows diff shows: (original line, new line), either can be None.
orig, new = lines(f'{F}/orig.txt'), lines(f'{F}/new.txt')
out = subprocess.run(['diff', '--old-line-format=<\n', '--new-line-format=>\n',
                      '--unchanged-line-format==\n', f'{F}/orig.txt', f'{F}/new.txt'],
                     capture_output=True, text=True).stdout.split()
rows, o, n, run = [], 0, 0, []
for c in out + ['=']:
    if c == '<':
        run.append(('<', o)); o += 1
    elif c == '>':
        run.append(('>', n)); n += 1
    else:
        ls, rs = [i for t, i in run if t == '<'], [i for t, i in run if t == '>']
        for k in range(max(len(ls), len(rs))):
            rows.append((ls[k] + 1 if k < len(ls) else None, rs[k] + 1 if k < len(rs) else None))
        run = []
        if c == '=' and o < len(orig):
            o += 1; n += 1
            rows.append((o, n))
rows = [r for r in rows if r != (None, None)]
row = next((r for r in rows if r[1 if not ORIG_SIDE else 0] == LINE), None)
if row is None:
    sys.exit(f'no line {LINE} on that side')
ol, nl = row
print(f'{BOLD}line {LINE}{END}  original: {orig[ol - 1] if ol else DIM + "(none)" + END}'
      f'   yours: {new[nl - 1] if nl else DIM + "(none)" + END}')
if nl is None:
    sys.exit(f'{DIM}only the original has this instruction; pick a line yours has{END}')

# New line -> address (same filter as diff, with addresses kept) -> agbcc insn number.
obj = []
for l in subprocess.run(['arm-none-eabi-objdump', '-d', '-r', '--no-show-raw-insn',
                         f'--disassemble={FUNC}', f'{W}/w.o'], capture_output=True,
                        text=True).stdout.splitlines():
    m = re.match(r'^\s+([0-9a-f]+):', l)
    if m:
        obj.append(int(m.group(1), 16))
if len(obj) != len(new):
    sys.exit('build/why is out of date with diff; run why again')
addr = obj[nl - 1]
uid = pattern = None
for l in lines(f'{W}/list.txt'):
    m = re.match(r'^\s*\d+ ([0-9a-f]{4}) [0-9A-F]+\s+\t.*@ (\d+)\t(\S+)', l)
    if m and int(m.group(1), 16) == addr:
        uid, pattern = int(m.group(2)), m.group(3)
        break


def function_part(path):
    text, keep = [], False
    for l in lines(path):
        if l.startswith(';; Function '):
            keep = l == f';; Function {FUNC}'
        if keep:
            text.append(l)
    return text


def insns(text):
    """insn number -> (its RTL text, the C line in effect there)."""
    out, cur, cline = {}, None, None
    for l in text:
        m = re.match(r'^\(note \d+ \d+ \d+ \("[^"]*"\) (\d+)\)', l)
        if m:
            cline = int(m.group(1))
        m = re.match(r'^\((?:insn|jump_insn|call_insn) (\d+) ', l)
        if m:
            cur = int(m.group(1))
            out[cur] = [l, cline]
        elif cur is not None and l.strip():
            out[cur][0] += '\n' + l
        elif not l.strip():
            cur = None
    return out


lreg, greg = function_part(f'{W}/w.i.lreg'), function_part(f'{W}/w.i.greg')
before, after = insns(lreg), insns(greg)
info = {}
for l in lreg:
    m = re.match(r'^Register (\d+) used (\d+) times across (\d+) insns( in block (\d+))?(.*)', l)
    if m:
        info[int(m.group(1))] = dict(uses=int(m.group(2)), span=int(m.group(3)),
                                     block=m.group(5), rest=m.group(6))
where = {}
disp = False
for l in greg:
    if l.startswith(';; Register dispositions'):
        disp = True
    elif disp and not l.strip():
        break
    elif disp:
        for a, b in re.findall(r'(\d+) in (\d+)', l):
            where[int(a)] = REGS[int(b)]
src = lines(f'src/{os.environ["NAME"]}.c')


def c_text(n):
    return src[n - 1].strip() if n and n <= len(src) else '?'


def born(p):
    """First insn that sets value p, and its C line."""
    for u, (t, cl) in sorted(before.items()):
        if re.search(rf'\(set \((?:reg|subreg)[^ ]* (?:\(reg[^ ]* )?{p}\)', t):
            return u, cl
    return None, None


def pri(i):
    if i['uses'] < 2:
        return 0
    return (i['uses'].bit_length() - 1) * i['uses'] * 10000 // max(1, i['span'])


def value_line(p, mark=''):
    i = info.get(p, {})
    u, cl = born(p)
    reg = where.get(p)
    shown = f'{GREEN}{reg}{END}' if reg else f'{RED}stack{END}'
    kind = 'user var' if 'user var' in i.get('rest', '') else 'temp'
    span = f"block {i['block']}" if i.get('block') else 'several blocks'
    return (f"{mark}{p:>6}  {shown:<16}{i.get('uses', '?'):>4} {i.get('span', '?'):>5} "
            f"{pri(i) if i else '?':>7}  {kind:<8} {span:<14} "
            f"{DIM}:{cl}{END} {c_text(cl)}")


HEAD = f'{DIM}{"value":>8}  {"register":<7}{"uses*":>5} {"span":>5} {"priority":>7}  ' \
       f'{"kind":<8} {"lives in":<14} first set at (C line)   * a use in a loop counts once ' \
       f'per loop level{END}'

VERBOSE = os.environ.get('WHY_VERBOSE') == '1'


def say(*parts):
    print(*parts, sep='\n')


def fields(t):
    """'ldr r1, [sp, #20]' -> ('ldr', ['r1', 'sp', '#20']) with hex offsets as decimal."""
    t = re.sub(r'#0x([0-9a-f]+)', lambda m: f'#{int(m.group(1), 16)}', t or '')
    op, _, rest = t.partition(' ')
    return op, re.findall(r'[\w#-]+', rest)


def what_value(ps):
    """Plain description of the values in ps: whose they are and the C line that makes them."""
    out = []
    for p in ps:
        i = info.get(p, {})
        u, cl = born(p)
        kind = 'your variable' if 'user var' in i.get('rest', '') else 'a temporary the compiler made'
        home = where.get(p, 'the stack')
        out.append(f'  {kind}, created at C line {cl}: {BLUE}{c_text(cl)}{END}  '
                   f'{DIM}(lives in {home}; agbcc value {p}){END}')
    return out


def values_of(u):
    return sorted({int(x) for x in re.findall(r'\(reg(?:/\w)*:\w+ (\d+)\)', before[u][0])})


o_op, o_args = fields(orig[ol - 1] if ol else '')
n_op, n_args = fields(new[nl - 1])
reload = uid is not None and uid not in before
# The insn this one is about: itself, or for a reload the one it serves (next) or follows.
target = uid
if reload:
    t = after.get(uid, ['', None])[0]
    m = re.match(r'^\(insn \d+ (\d+) (\d+)', t)
    target = next((u for u in ((int(m.group(2)), int(m.group(1))) if m else ()) if u in before),
                  None)
cline = before[target][1] if target in before else None
if cline:
    say(f'C line {cline}: {BLUE}{c_text(cline)}{END}')

if not ol:
    say(f'{YELLOW}Only yours has this instruction.{END} It comes from the C line above; the '
        'original does without it there.')
elif (o_op, o_args) == (n_op, n_args):
    say(f'{GREEN}This line matches.{END}')
elif uid is None:
    say('This is the start or end of the function (saving registers, making room on the stack). '
        'It follows from the rest: fix the other differences first.')
elif o_op == n_op and len(o_args) == len(n_args) and \
        all(a == b or (a.startswith('#') and b.startswith('#')) for a, b in zip(o_args, n_args)) \
        and 'sp' in n_args:
    o_off = next(a for a, b in zip(o_args, n_args) if a != b)
    n_off = next(b for a, b in zip(o_args, n_args) if a != b)
    say(f'{YELLOW}Same instruction, different place on the stack{END} '
        f'(the original uses {o_off}, yours {n_off}).',
        'Values that have no register get a place on the stack, handed out in the order the '
        'compiler created them: whoever is created first gets the first place '
        '(gcc/reload1.c, alter_reg). So a value created earlier or later than in the original, or '
        'one more or one fewer, moves the places of the others.')
    ps = values_of(target) if target in before else []
    stack_ps = [p for p in ps if p not in where]
    if stack_ps:
        say('The value saved or loaded here:', *what_value(stack_ps))
elif o_op == n_op and len(o_args) == len(n_args):
    diffs = [(a, b) for a, b in zip(o_args, n_args) if a != b]
    say(f'{YELLOW}Same instruction, different register{END} ('
        + ', '.join(f'the original uses {a}, yours {b}' for a, b in diffs) + ').')
    if reload:
        say('This line copies a value between the stack and a register (the compiler adds these '
            'for values that have no register of their own). It takes registers in turn: each '
            'such copy takes the next one after the previous copy\'s (gcc/reload1.c, '
            'last_spill_reg). So the register here follows from the copies before it.')
        seq = []
        for l in lines(f'{W}/list.txt'):
            m = re.match(r'^\s*\d+ ([0-9a-f]{4}) [0-9A-F]+\s+\t(\S+)\t([^@]*)@ (\d+)', l)
            if m and int(m.group(4)) not in before and int(m.group(1), 16) in obj:
                seq.append(obj.index(int(m.group(1), 16)) + 1)
        pairs = {r[1]: r[0] for r in rows if r[1]}
        first = next((ln for ln in seq if ln <= nl and pairs.get(ln)
                      and fields(orig[pairs[ln] - 1]) != fields(new[ln - 1])), None)
        if first and first != nl:
            say(f'The first of those copies that differs from the original is at {BOLD}line '
                f'{first}{END} of yours: start there (bin/why {os.environ["NAME"]} {FUNC} '
                f'{first}).')
        elif first == nl:
            say('It is the first copy that differs, so the cause is here: the value it copies, or '
                'the instruction it serves, is what changed.')
        ps = values_of(target) if target in before else []
        if ps:
            say('The value it copies:', *what_value([p for p in ps if p not in where] or ps))
    else:
        regs = {b for _, b in diffs}
        ps = [p for p in values_of(uid) if where.get(p) in regs]
        say('Registers go first to the values used most over the shortest stretch; each takes the '
            'lowest free one (gcc/local-alloc.c). Here, in yours:', *what_value(ps))
        for p in ps:
            i = info.get(p, {})
            if not i.get('block'):
                continue
            ahead = [q for q in info if info[q].get('block') == i['block']
                     and (-pri(info[q]), q) < (-pri(i), p) and where.get(q)]
            if ahead:
                say('These got their register before it (so the lower ones were taken):',
                    *what_value(sorted(ahead)))
else:
    say(f'{YELLOW}A different instruction.{END} The C line above makes something different from '
        'the original here; compare what it computes.')

if VERBOSE and target in before:
    print(f'\n{DIM}agbcc instruction {uid} ({pattern}); values in it:{END}')
    print(HEAD)
    for p in values_of(target):
        print(value_line(p))
