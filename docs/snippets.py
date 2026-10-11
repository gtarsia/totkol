# (section, name, title, C body, note, key mnemonics). Each body is a whole function.
S = []
def add(section, name, title, c, note, key):
    S.append(dict(section=section, name=name, title=title, c=c.strip('\n'), note=note, key=key))

# ---- Constants
add('Constants', 'k_small', 'A small constant (0–255)',
'''s32 k_small(void)
{
    return 200;
}''', 'One <code>movs</code>: Thumb can load 0–255 directly. <code>r0</code> carries the return value.', ['movs'])
add('Constants', 'k_neg', 'A negative constant',
'''s32 k_neg(void)
{
    return -5;
}''', 'No instruction loads a negative number, so it loads 5 and negates it. <code>movs</code> + <code>negs</code> together mean "the constant −N".', ['negs'])
add('Constants', 'k_shift', 'A large constant that is a shifted small one',
'''s32 k_shift(void)
{
    return 0x4000;
}''', '0x4000 is 128 &lt;&lt; 7, so it builds it with <code>movs</code> + <code>lsls</code> instead of reading it from memory.', ['lsls'])
add('Constants', 'k_big', 'Any other large constant',
'''s32 k_big(void)
{
    return 0x12345;
}''', 'Read from a <em>literal pool</em>: a <code>.word</code> placed after the function, loaded with <code>ldr rX, [pc, #N]</code>.', ['ldr', '.word'])
add('Constants', 'k_ffff', '0xFFFF and friends',
'''u32 k_ffff(void)
{
    return 0xFFFF;
}''', 'Also from the literal pool: it doesn\'t fit in 8 bits and isn\'t a shifted small number.', ['.word'])

# ---- Arithmetic
add('Arithmetic', 'a_addk', 'Adding a constant',
'''s32 a_addk(s32 x)
{
    return x + 3;
}''', '<code>adds rX, #N</code> (or with three operands when the result goes to another register).', ['adds'])
add('Arithmetic', 'a_sub', 'Subtracting two values',
'''s32 a_sub(s32 a, s32 b)
{
    return a - b;
}''', '', ['subs'])
add('Arithmetic', 'a_neg', 'Unary minus',
'''s32 a_neg(s32 x)
{
    return -x;
}''', '<code>negs</code> is <code>0 - x</code>. The other common source of <code>negs</code> besides negative constants.', ['negs'])
add('Arithmetic', 'a_mulk', 'Multiplying by a constant',
'''s32 a_mulk(s32 x)
{
    return x * 10;
}''', 'agbcc turns multiplication by small constants into shifts and adds (x·10 = (x·4 + x)·2) instead of <code>muls</code>.', ['lsls', 'adds'])
add('Arithmetic', 'a_mul', 'Multiplying two values',
'''s32 a_mul(s32 a, s32 b)
{
    return a * b;
}''', '', ['muls'])
add('Arithmetic', 'a_div4', 'Signed division by a power of 2',
'''s32 a_div4(s32 x)
{
    return x / 4;
}''', 'A plain <code>asrs</code> would round negatives the wrong way, so when x is negative it adds 3 first. The <code>cmp #0</code> + <code>bge</code> skips that fix-up for positive x.', ['asrs'])
add('Arithmetic', 'a_udiv4', 'Unsigned division by a power of 2',
'''u32 a_udiv4(u32 x)
{
    return x / 4;
}''', 'Unsigned: a single <code>lsrs</code>, no fix-up.', ['lsrs'])
add('Arithmetic', 'a_div', 'Division by a variable',
'''s32 a_div(s32 a, s32 b)
{
    return a / b;
}''', 'The GBA has no divide instruction: it calls a library routine (<code>__divsi3</code>; <code>__udivsi3</code> unsigned, <code>__modsi3</code> for <code>%</code>).', ['bl'])
add('Arithmetic', 'a_mod8', 'Unsigned remainder by a power of 2',
'''u32 a_mod8(u32 x)
{
    return x % 8;
}''', '<code>x % 8</code> is <code>x &amp; 7</code>.', ['ands'])

# ---- Bits
add('Bits', 'b_and', 'AND with a constant',
'''u32 b_and(u32 x)
{
    return x & 0x20;
}''', 'Thumb\'s <code>ands</code> only takes registers, so the constant is loaded first with <code>movs</code>.', ['ands'])
add('Bits', 'b_or', 'Setting bits',
'''void b_or(u8 *p)
{
    *p |= 4;
}''', 'Load, <code>orrs</code>, store back.', ['orrs'])
add('Bits', 'b_bic', 'Clearing bits',
'''u32 b_bic(u32 x, u32 m)
{
    return x & ~m;
}''', '<code>bics</code> is AND with the inverse.', ['bics'])
add('Bits', 'b_not', 'Bitwise NOT',
'''u32 b_not(u32 x)
{
    return ~x;
}''', '', ['mvns'])
add('Bits', 'b_xor', 'XOR',
'''u32 b_xor(u32 a, u32 b)
{
    return a ^ b;
}''', '', ['eors'])
add('Bits', 'b_shr', 'Shifting right: signed vs unsigned',
'''s32 b_shr(s32 a, u32 b)
{
    return (a >> 3) + (b >> 3);
}''', 'Signed values shift with <code>asrs</code> (keeps the sign); unsigned ones with <code>lsrs</code>.', ['asrs', 'lsrs'])
add('Bits', 'b_test', 'Testing a bit in an if',
'''extern void f(void);
void b_test(u32 flags)
{
    if (flags & 0x20)
        f();
}''', 'AND, compare with 0, jump over the call when the bit is clear. The jump goes <em>around</em> the body, so its condition is the opposite of the C one.', ['ands', 'cmp', 'beq'])

# ---- Types and conversions
add('Types and conversions', 't_u8', 'Converting to u8',
'''u32 t_u8(u32 x)
{
    return (u8)x;
}''', 'Shift left 24, then right 24 with <code>lsrs</code>: only the low byte survives. With 16 instead of 24, it\'s <code>(u16)</code>.', ['lsls', 'lsrs'])
add('Types and conversions', 't_s8', 'Converting to s8',
'''s32 t_s8(s32 x)
{
    return (s8)x;
}''', 'Same shape, but the right shift is <code>asrs</code>, which copies the sign bit. <code>lsrs</code> = unsigned, <code>asrs</code> = signed.', ['lsls', 'asrs'])
add('Types and conversions', 't_param', 'u8 parameters',
'''s32 t_param(u8 a, u8 b)
{
    return a + b;
}''', 'agbcc trims every u8/s8/u16/s16 parameter on entry, because the caller may leave junk in the upper bits.', ['lsls', 'lsrs'])
add('Types and conversions', 't_ret', 'Returning a u8',
'''u8 t_ret(u32 x)
{
    return x + 1;
}''', 'The result is trimmed to 8 bits before returning.', ['lsls', 'lsrs'])
add('Types and conversions', 't_bool', 'A comparison as a value (bool)',
'''s32 t_bool(s32 x)
{
    return x != 0;
}''', 'Here agbcc branches: if x is 0 it returns x as it is (0), otherwise it loads 1. Other comparisons can come out as <code>negs</code>/<code>adcs</code>/<code>lsrs #31</code> tricks.', ['cmp', 'beq'])

# ---- Memory
add('Memory', 'm_fields', 'Struct fields of different sizes',
'''struct S { u8 a; s8 b; u16 c; u32 d; };
s32 m_fields(struct S *s)
{
    return s->a + s->b + s->c + s->d;
}''', '<code>ldrb</code> for u8, <code>ldrh</code> for u16, <code>ldr</code> for 32 bits; the <code>#N</code> is the field\'s offset. Signed loads (<code>ldrsb</code>, <code>ldrsh</code>) only take the offset in a register, hence the <code>movs r0, #1</code> before the <code>ldrsb</code> of the s8 field.', ['ldrb', 'ldrh', 'ldr', 'ldrsb'])
add('Memory', 'm_store', 'Writing a field',
'''struct T { u8 cost; u8 height; u8 edges; };
void m_store(struct T *t)
{
    t->edges = 0xFF;
}''', '<code>strb</code> (<code>strh</code>, <code>str</code> for wider fields).', ['strb'])
add('Memory', 'm_arr8', 'Array of bytes',
'''u8 m_arr8(u8 *a, s32 i)
{
    return a[i];
}''', 'Base + index added first, then <code>ldrb [rX, #0]</code>.', ['ldrb'])
add('Memory', 'm_arr16', 'Array of u16',
'''u16 m_arr16(u16 *a, s32 i)
{
    return a[i];
}''', 'Index × 2 first: <code>lsls rI, rI, #1</code>.', ['lsls', 'ldrh'])
add('Memory', 'm_structarr', 'Array of 16-byte structs',
'''struct R { u8 cost; u8 height; u8 edges; u8 flags; u32 pad[3]; };
u8 m_structarr(struct R *r, s32 i)
{
    return r[i].edges;
}''', 'Index × 16 is <code>lsls #4</code>; the field offset (2) goes in the load.', ['lsls', 'ldrb'])
add('Memory', 'm_global', 'A global variable',
'''extern s32 gCount;
void m_global(void)
{
    gCount++;
}''', 'The global\'s <em>address</em> comes from the literal pool (<code>ldr rX, [pc, #N]</code> + a <code>.word</code> that the linker fills in), then a normal load and store. The <code>.short 0x0000</code> is padding so the <code>.word</code> is aligned.', ['ldr', '.word'])
add('Memory', 'm_volatile', 'volatile: read every time',
'''s32 m_volatile(volatile u8 *p)
{
    return *p + *p;
}''', 'Without <code>volatile</code> it would read once; with it, two <code>ldrb</code>s. Decomps use this to force a field to be read twice.', ['ldrb'])
add('Memory', 'm_local_array', 'A local array',
'''extern void use(u8 *);
void m_local_array(void)
{
    u8 buf[8];
    use(buf);
}''', 'Lives on the stack: <code>sub sp</code> to make room and <code>mov r0, sp</code> to pass its address.', ['sub', 'mov'])

# ---- Control flow
add('Control flow', 'c_ifelse', 'if / else',
'''s32 c_ifelse(s32 x)
{
    if (x > 10)
        return 1;
    else
        return 2;
}''', 'A compare and a conditional jump. Here agbcc lays out the else first: <code>bgt</code> jumps to the then-part, and the else ends with a <code>b</code> over it.', ['cmp', 'bgt', 'b'])
add('Control flow', 'c_signed', 'Signed vs unsigned comparison',
'''extern void f(void);
void c_signed(s32 a, u32 b)
{
    if (a < 5)
        f();
    if (b < 5)
        f();
}''', '<code>x &lt; 5</code> becomes "if x &gt; 4, skip the call". Signed values jump with <code>bgt</code>/<code>bge</code>/<code>blt</code>/<code>ble</code>; unsigned ones with <code>bhi</code>/<code>bcs</code>/<code>bcc</code>/<code>bls</code>. The kind of jump tells you the variable\'s type.', ['bgt', 'bhi'])
add('Control flow', 'c_and', '&& and ||',
'''extern void f(void);
void c_and(s32 a, s32 b)
{
    if (a == 1 && b == 2)
        f();
}''', 'Each condition is its own compare-and-jump; the first one that decides skips the rest.', ['cmp', 'bne'])
add('Control flow', 'c_for', 'A for loop',
'''extern void f(s32);
void c_for(void)
{
    s32 i;
    for (i = 0; i < 10; i++)
        f(i);
}''', 'The counter lives in a register that survives calls (<code>r4</code>+). The test is at the bottom, with a jump back up: a backwards jump is a loop.', ['adds', 'cmp', 'ble'])
add('Control flow', 'c_while', 'A while loop',
'''extern s32 g(void);
void c_while(void)
{
    while (g() != 0)
        ;
}''', '', ['bl', 'cmp', 'bne'])
add('Control flow', 'c_switch_small', 'A small switch',
'''s32 c_switch_small(s32 x)
{
    switch (x) {
    case 1: return 10;
    case 5: return 20;
    case 9: return 30;
    }
    return 0;
}''', 'Few, scattered cases become compares and jumps; agbcc may split them around the middle value (here 5) to need fewer compares.', ['cmp', 'beq', 'bgt'])
add('Control flow', 'c_switch_table', 'A dense switch',
'''extern void f(s32);
void c_switch_table(s32 x)
{
    switch (x) {
    case 0: f(10); break;
    case 1: f(20); break;
    case 2: f(30); break;
    case 3: f(40); break;
    case 4: f(50); break;
    }
}''', 'Many consecutive cases become a <em>jump table</em>: a bounds check, index × 4 (<code>lsls #2</code>), a <code>.word</code> table of addresses and <code>mov pc, rX</code> to jump.', ['lsls', 'mov', '.word'])
add('Control flow', 'c_ternary', 'The ?: operator',
'''s32 c_ternary(s32 a, s32 b)
{
    return a > b ? a : b;
}''', 'Same as an if/else: Thumb has no conditional move.', ['cmp', 'bge'])

# ---- Calls and registers
add('Calls and registers', 'r_call', 'Calling a function',
'''extern s32 g4(s32, s32, s32, s32);
s32 r_call(s32 x)
{
    return g4(x, 1, 2, 3);
}''', 'Arguments go in <code>r0</code>–<code>r3</code>, the call is <code>bl</code>, the result comes back in <code>r0</code>. <code>push {lr}</code>/<code>pop</code> save the return address because the function calls another.', ['bl', 'push', 'pop'])
add('Calls and registers', 'r_five', 'A fifth argument',
'''extern s32 g5(s32, s32, s32, s32, s32);
s32 r_five(void)
{
    return g5(1, 2, 3, 4, 5);
}''', 'From the fifth argument on, they go on the stack: <code>str rX, [sp]</code> before the <code>bl</code>.', ['str', 'sub'])
add('Calls and registers', 'r_keep', 'A value that must survive a call',
'''extern s32 g(void);
s32 r_keep(s32 x)
{
    return g() + x;
}''', 'A call may overwrite <code>r0</code>–<code>r3</code>, so <code>x</code> moves to <code>r4</code> (saved with <code>push</code> at the start). Copies between registers are <code>adds rX, rY, #0</code>.', ['push', 'adds'])
add('Calls and registers', 'r_ptr', 'Calling through a function pointer',
'''s32 r_ptr(s32 (*fn)(s32))
{
    return fn(7);
}''', 'agbcc calls a small helper, <code>_call_via_rX</code>, which does the actual <code>bx</code>.', ['bl'])
add('Calls and registers', 'r_spill', 'Too many values for the registers (spills)',
'''extern s32 g(s32);
s32 r_spill(s32 a, s32 b, s32 c, s32 d, s32 e, s32 f, s32 h, s32 i)
{
    s32 x = g(a), y = g(b), z = g(c), w = g(d);
    s32 u = g(e), v = g(f), q = g(h), r = g(i);
    return x + y + z + w + u + v + q + r + a + b + c + d;
}''', 'Values that must survive calls only have <code>r4</code>–<code>r7</code> and <code>r8</code>–<code>r10</code>. The rest live on the stack: <code>str rX, [sp, #N]</code> to save (spill) and <code>ldr rX, [sp, #N]</code> to bring back (reload). <code>sub sp</code> makes the room; <code>mov rX, r8</code> etc. move values to and from the high registers.', ['str', 'ldr', 'sub', 'mov'])
