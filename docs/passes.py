# Pass examples: (pass card id, name, title, note, A, B). A and B are (label, C, extra flags): the
# same function f built two ways, so the asm difference is what the pass did.
P = []
def add(pid, name, title, note, a, b):
    side = lambda x: dict(label=x[0], c=x[1].strip('\n'), flags=x[2])
    P.append(dict(pid=pid, name=name, fn='f', title=title, note=note, a=side(a), b=side(b)))

SW4 = '''extern void Play(s32);
void f(s32 kind)
{
    switch (kind) {
    case 0: Play(10); break;
    case 1: Play(20); break;
    case 2: Play(30); break;
    case 3: Play(40); break;
    }
}'''
add('expand', 'px_switch', 'switch: 4 cases vs 5',
    'Gain: past the threshold, one indexed jump replaces a chain of compares. '
    'With 4 cases it is a tree of compares; the 5th case reaches the threshold and it becomes a '
    'jump table (<code>mov pc, r0</code> and one <code>.word</code> per case).',
    ('C · 4 cases', SW4, []),
    ('C · 5 cases', SW4.replace('    case 3: Play(40); break;\n',
                                '    case 3: Play(40); break;\n    case 4: Play(50); break;\n'), []))

add('jump', 'px_invert', 'goto loop vs while',
    'Gain: one branch per round instead of two. The <code>while</code> is inverted: tested once '
    'before entering, then at the bottom (<code>bne.n → 4</code>), so each round ends with one '
    'branch. The goto loop tests at the top and jumps back (<code>beq</code> + <code>b.n</code>).',
    ('C · goto', '''extern s32 Step(s32);
void f(s32 i)
{
loop:
    if (!i)
        return;
    i = Step(i);
    goto loop;
}''', []),
    ('C · while', '''extern s32 Step(s32);
void f(s32 i)
{
    while (i)
        i = Step(i);
}''', []))

CSE = '''u32 f(u8 *hp)
{
    return *hp * *hp;
}'''
add('cse', 'px_cse', 'A value read twice',
    'Gain: one load fewer. The C reads <code>*hp</code> twice; cse sees the same load and does '
    'it once. With <code>volatile</code> it may not assume the value stayed the same, so both '
    'loads stay.',
    ('C · volatile', CSE.replace('u8 *hp', 'volatile u8 *hp'), []),
    ('C · plain', CSE, []))

FULL = '''s32 f(s32 *hp, s32 boost)
{
    s32 total;
    if (boost)
        total = *hp + 1;
    else
        total = *hp - 1;
    return total + *hp;
}'''
add('gcse', 'px_full', 'A load both arms already did',
    'Gain: one load fewer, 11 instructions down to 9. Both arms load <code>*hp</code>, so after '
    'they meet it is already in <code>r0</code>. cse only sees straight runs of code and stops at '
    'the merge; gcse sees the whole function and drops the third load.',
    ('-fno-gcse', FULL, ['-fno-gcse']),
    ('-O2', FULL, []))

PRE = '''s32 f(s32 *hp, s32 boost)
{
    s32 total;
    if (boost)
        total = *hp * 3;
    else
        total = 7;
    return total + *hp;
}'''
add('gcse', 'px_pre', 'PRE: a load only one arm did',
    'Gain: the <code>if</code> path loads once instead of twice. Only the <code>if</code> arm '
    'loads <code>*hp</code>, so after the merge it is there on one path only. PRE adds the load to '
    'the <code>else</code> arm (line 8), so the load after the merge goes away. Both sides keep '
    'two <code>ldr</code>: PRE moves loads, it does not delete them.',
    ('-fno-gcse', PRE, ['-fno-gcse']),
    ('-O2', PRE, []))

SR = '''struct Slot { u32 count, id, flags; };
void f(struct Slot *slots, s32 len)
{
    s32 i;
    for (i = 0; i < len; i++)
        slots[i].count = 0;
}'''
add('loop', 'px_sr', 'Strength reduction: slots[i]',
    'Gain: the loop body is 5 instructions instead of 8. Without it, each round computes '
    '<code>i * 12</code> with shifts and adds. With it, <code>slots[i]</code> becomes a pointer '
    'that grows by 12 (<code>adds r0, #12</code>) and <code>i</code> a counter going down to 0.',
    ('-fno-strength-reduce', SR, ['-fno-strength-reduce']),
    ('-O2', SR, []))

AL = '''extern s32 Roll(void);
s32 f(void)
{
    s32 hit = Roll();
    s32 dmg = Roll();
    Roll();
    return hit + dmg;
}'''
add('alloc', 'px_prio', 'An extra use moves dmg to r4',
    'No gain here: this shows a choice, not an optimization. <code>dmg</code> gets two more uses, '
    'its priority goes up, so it takes <code>r4</code> first and <code>hit</code> drops to '
    '<code>r5</code>.',
    ('C · plain', AL, []),
    ('C · dmg used more', AL.replace('    return hit', '    if (dmg == 7)\n        dmg = 9;\n    return hit'), []))

CJ = '''extern void Mark(void);
void f(u8 *edges, s32 north, s32 south)
{
    if (north) {
        *edges = 0xFF;
        return;
    }
    Mark();
    if (south) {
        *edges = 0xFF;
        return;
    }
    Mark();
}'''
add('jump2', 'px_cross', 'Two identical blocks, one in the asm',
    'Gain: 3 instructions fewer. Left: with the blocks different (<code>0xFE</code>), both '
    'copies stay. Right: <code>*edges = 0xFF; return;</code> is in the C twice but in the asm '
    'once; the first <code>if</code> jumps into the second copy.',
    ('C · different blocks', CJ.replace('0xFF;\n        return;\n    }\n    Mark();\n}',
                                        '0xFE;\n        return;\n    }\n    Mark();\n}'), []),
    ('C · same blocks', CJ, []))
