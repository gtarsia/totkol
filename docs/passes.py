# Pass examples: (pass card id, name, title, note, A, B). A and B are (label, C, extra flags): the
# same function f built two ways, so the asm difference is what the pass did. regs: highlight
# register changes too. key: ([lines], [lines]) to highlight by hand, 1-based.
P = []
def add(pid, name, title, note, a, b, regs=False, key=None):
    side = lambda x: dict(label=x[0], c=x[1].strip('\n'), flags=x[2])
    P.append(dict(pid=pid, name=name, fn='f', title=title, note=note, a=side(a), b=side(b),
                  regs=regs, key=key))

SW4 = '''extern void g(s32);
void f(s32 x)
{
    switch (x) {
    case 0: g(10); break;
    case 1: g(20); break;
    case 2: g(30); break;
    case 3: g(40); break;
    }
}'''
add('expand', 'px_switch', 'switch: 4 cases vs 5',
    'With 4 cases it is a tree of compares; the 5th case reaches the threshold and it becomes a '
    'jump table (<code>mov pc, r0</code> and one <code>.word</code> per case).',
    ('C · 4 cases', SW4, []),
    ('C · 5 cases', SW4.replace('    case 3: g(40); break;\n',
                                '    case 3: g(40); break;\n    case 4: g(50); break;\n'), []))

add('jump', 'px_invert', 'while vs goto loop',
    'The <code>while</code> is inverted: the test runs once before entering (<code>cmp</code>, '
    '<code>bge</code>) and again at the bottom (<code>blt</code>). The goto loop keeps one test '
    'and jumps back to it (<code>b.n → 4</code>).',
    ('C · while', '''extern s32 g(s32);
void f(s32 n)
{
    s32 i = 0;
    while (i < n)
        i += g(i);
}''', []),
    ('C · goto', '''extern s32 g(s32);
void f(s32 n)
{
    s32 i = 0;
loop:
    if (i >= n)
        return;
    i += g(i);
    goto loop;
}''', []))

CSE = '''struct S { u8 a, b; };
u32 f(struct S *p)
{
    return p->a + p->a * 3;
}'''
add('cse', 'px_cse', 'A field read twice',
    'cse loads <code>p-&gt;a</code> once and even folds <code>a + a * 3</code> into '
    '<code>a &lt;&lt; 2</code>. <code>volatile</code> forces both loads, and the math stays '
    'as written.',
    ('C', CSE, []),
    ('C · volatile', CSE.replace('struct S *p', 'volatile struct S *p'), []))

GCSE = '''s32 f(s32 *p, s32 c)
{
    s32 r;
    if (c)
        r = p[1] * 3;
    else
        r = 7;
    p[0] = 1;
    return r + p[1] * 3;
}'''
add('gcse', 'px_pre', 'PRE: the second p[1] load',
    'With gcse, the <code>if</code> arm keeps <code>p[1]</code> in <code>r2</code> and the '
    '<code>else</code> arm gets its own load (line 10), so the load after the store is gone. '
    'Without it, <code>p[1]</code> is loaded again after <code>p[0] = 1</code>.',
    ('-O2', GCSE, []),
    ('-fno-gcse', GCSE, ['-fno-gcse']))

SR = '''struct E { u32 a, b, c; };
void f(struct E *e, s32 n)
{
    s32 i;
    for (i = 0; i < n; i++)
        e[i].b = 0;
}'''
add('loop', 'px_sr', 'Strength reduction: e[i]',
    'With it, <code>e[i]</code> becomes a pointer that grows by 12 (<code>adds r0, #12</code>) '
    'and <code>i</code> turns into a counter going down to 0. Without it, each round computes '
    '<code>i * 12</code> with shifts and adds.',
    ('-O2', SR, []),
    ('-fno-strength-reduce', SR, ['-fno-strength-reduce']))

AL = '''extern s32 g(s32);
s32 f(s32 x, s32 y)
{
    s32 a, b;
    a = g(x);
    b = g(y);
    g(0);
    return a + b;
}'''
add('alloc', 'px_prio', 'An extra use moves b to r4',
    'Same values, but <code>b</code> gets two more uses. Its priority goes up, so it takes '
    '<code>r4</code> first and <code>a</code> drops to <code>r5</code>.',
    ('C', AL, []),
    ('C · b used more', AL.replace('    return a + b;',
                                   '    if (b == 7)\n        b = 9;\n    return a + b;'), []),
    regs=True)

CJ = '''struct M { u8 e; };
extern s32 g(s32);
void f(struct M *m, s32 a, s32 b)
{
    if (a & 0x80) {
        m->e = 0xFF;
        return;
    }
    g(a);
    if (b & 0x20) {
        m->e = 0xFF;
        return;
    }
    g(b);
}'''
add('jump2', 'px_cross', 'Two identical blocks, one in the asm',
    'Left: the C has <code>m-&gt;e = 0xFF; return;</code> twice, the asm once. The first '
    '<code>if</code> jumps into the second copy (<code>bne.n → 14</code>). Right: with the '
    'blocks different (<code>0xFE</code>), both stay.',
    ('C · same blocks', CJ, []),
    ('C · different blocks', CJ.replace('0xFF;\n        return;\n    }\n    g(b)',
                                        '0xFE;\n        return;\n    }\n    g(b)'), []),
    key=([7, 14, 15], [8, 9, 17, 18]))
