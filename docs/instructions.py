# Thumb (ARMv4T) instruction reference for index.html, in objdump's syntax.
# (group, id, aliases, summary, forms [(syntax, meaning)], flags, note). Aliases are the
# mnemonics objdump prints that this entry covers; examples link here through them.
I = []
def ins(group, id, summary, forms, flags='', note='', aliases=None):
    I.append(dict(group=group, id=id, aliases=aliases or [id], summary=summary,
                  forms=forms, flags=flags, note=note))

CONDS = [('eq', 'equal', 'Z=1'), ('ne', 'not equal', 'Z=0'),
         ('hi', 'unsigned &gt;', 'C=1 and Z=0'), ('cs', 'unsigned &ge; (also <code>bhs</code>)', 'C=1'),
         ('cc', 'unsigned &lt; (also <code>blo</code>)', 'C=0'), ('ls', 'unsigned &le;', 'C=0 or Z=1'),
         ('gt', 'signed &gt;', 'Z=0 and N=V'), ('ge', 'signed &ge;', 'N=V'),
         ('lt', 'signed &lt;', 'N&ne;V'), ('le', 'signed &le;', 'Z=1 or N&ne;V'),
         ('mi', 'negative', 'N=1'), ('pl', 'positive or zero', 'N=0'),
         ('vs', 'overflow', 'V=1'), ('vc', 'no overflow', 'V=0')]

# ---- Move
ins('Move', 'movs', 'Put a small constant in a register.',
    [('movs rd, #imm', 'rd = imm, 0–255')], 'N Z',
    'Bigger constants come from a literal pool (<code>ldr rd, [pc, #N]</code>), or from '
    '<code>movs</code> + <code>lsls</code>/<code>negs</code>. Only r0–r7.')
ins('Move', 'mov', 'Copy between registers when one is r8 or higher.',
    [('mov rd, rs', 'rd = rs; rd or rs is r8–r15 (sl, fp, ip, sp, lr, pc)')], 'none',
    'Moving a value into r8–sl means a callee-saved low register ran out: agbcc parks values there '
    '(<code>mov sl, r5</code>) and brings them back with <code>mov r5, sl</code>. A copy between '
    'r0–r7 shows as <code>adds rd, rs, #0</code> instead.')
ins('Move', 'mvns', 'Bitwise NOT.', [('mvns rd, rs', 'rd = ~rs')], 'N Z', 'C: <code>~x</code>.')
ins('Move', 'negs', 'Negate.', [('negs rd, rs', 'rd = 0 − rs')], 'N Z C V',
    'C: <code>-x</code>, or the second half of a negative constant (<code>movs r0, #1; negs r0, r0</code> '
    'is −1).')

# ---- Arithmetic
ins('Arithmetic', 'adds', 'Add, setting flags.',
    [('adds rd, rs, rn', 'rd = rs + rn'), ('adds rd, rs, #imm', 'rd = rs + imm, 0–7'),
     ('adds rd, #imm', 'rd = rd + imm, 0–255'), ('adds rd, rs, #0', 'copy rs to rd (r0–r7)')],
    'N Z C V', '<code>adds rd, rs, #0</code> is how agbcc copies a register, e.g. right after a '
    '<code>bl</code> to keep the result: <code>adds r2, r0, #0</code>.')
ins('Arithmetic', 'add', 'Add without flags: high registers, sp and pc.',
    [('add rd, rs', 'rd = rd + rs; either can be r8–r15'),
     ('add rd, sp, #imm', 'rd = address of a stack slot (imm: multiple of 4, ≤1020)'),
     ('add rd, pc, #imm', 'rd = address near the code'),
     ('add sp, #imm', 'free stack space (end of the function)')], 'none',
    '<code>add rX, sp, #N</code> means C takes the address of a local (an array or struct on the stack).')
ins('Arithmetic', 'subs', 'Subtract, setting flags.',
    [('subs rd, rs, rn', 'rd = rs − rn'), ('subs rd, rs, #imm', 'rd = rs − imm, 0–7'),
     ('subs rd, #imm', 'rd = rd − imm, 0–255')], 'N Z C V',
    '<code>subs r0, r6, #1</code> followed by a compare is often <code>x - 1 &lt;= N</code>: a range '
    'check like <code>x == 1 || x == 2</code> folded into one unsigned compare.')
ins('Arithmetic', 'sub', 'Subtract from sp without flags.',
    [('sub sp, #imm', 'reserve stack space (start of the function)')], 'none',
    'The size tells how many bytes of locals and spill slots the function uses.')
ins('Arithmetic', 'adcs', 'Add with carry.', [('adcs rd, rs', 'rd = rd + rs + C')], 'N Z C V',
    'For 64-bit numbers (<code>u64</code>), which take two registers: one holds the low 32 bits, '
    'the other the high 32. <code>adds</code> adds the low halves; if that overflows, C = 1 (the '
    '"carry the 1" of school addition) and <code>adcs</code> adds it to the high halves.')
ins('Arithmetic', 'sbcs', 'Subtract with carry.', [('sbcs rd, rs', 'rd = rd − rs − not C')],
    'N Z C V', 'The same for 64-bit subtraction: <code>subs</code> on the low halves, then '
    '<code>sbcs</code> takes 1 more from the high halves if the low ones had to borrow (C = 0).')
ins('Arithmetic', 'muls', 'Multiply.', [('muls rd, rs', 'rd = rd × rs (low 32 bits)')], 'N Z',
    'Only for two variables: agbcc turns multiplying by a constant into shifts and adds.')

# ---- Logic
ins('Logic', 'ands', 'Bitwise AND.', [('ands rd, rs', 'rd = rd &amp; rs')], 'N Z',
    'No immediate form: <code>x &amp; 2</code> needs the 2 in a register first '
    '(<code>movs r0, #2; ands r0, r1</code>). Then <code>cmp r0, #0</code> tests the bit.')
ins('Logic', 'orrs', 'Bitwise OR.', [('orrs rd, rs', 'rd = rd | rs')], 'N Z',
    'Setting flags in a field: load, <code>movs</code> the bit, <code>orrs</code>, store.')
ins('Logic', 'eors', 'Bitwise XOR.', [('eors rd, rs', 'rd = rd ^ rs')], 'N Z')
ins('Logic', 'bics', 'Clear bits.', [('bics rd, rs', 'rd = rd &amp; ~rs')], 'N Z',
    'C: <code>x &amp;= ~MASK</code>.')
ins('Logic', 'tst', 'Test bits without storing a result.', [('tst rn, rm', 'flags of rn &amp; rm')],
    'N Z', 'agbcc rarely emits it; it usually does <code>ands</code> + <code>cmp #0</code>.')

# ---- Shift
ins('Shift', 'lsls', 'Shift left.',
    [('lsls rd, rs, #imm', 'rd = rs &lt;&lt; imm, 0–31'), ('lsls rd, rs', 'rd = rd &lt;&lt; rs')],
    'N Z C', 'Multiplying by a power of 2, indexing arrays (<code>lsls #2</code>: ×4 for a u32 '
    'array), and the first half of a truncation (<code>lsls #24</code>).')
ins('Shift', 'lsrs', 'Logical shift right (fills with 0).',
    [('lsrs rd, rs, #imm', 'rd = rs &gt;&gt; imm, 1–32'), ('lsrs rd, rs', 'rd = rd &gt;&gt; rs')],
    'N Z C', 'After <code>lsls #24</code>: the value is a u8; after <code>lsls #16</code>: a u16. '
    'Also unsigned division by a power of 2.')
ins('Shift', 'asrs', 'Arithmetic shift right (keeps the sign).',
    [('asrs rd, rs, #imm', 'rd = rs &gt;&gt; imm, 1–32'), ('asrs rd, rs', 'rd = rd &gt;&gt; rs')],
    'N Z C', 'After <code>lsls #24</code>: an s8; after <code>lsls #16</code>: an s16. Also signed '
    'division by a power of 2 (with a fix-up for negatives).')
ins('Shift', 'rors', 'Rotate right.', [('rors rd, rs', 'rd = rd rotated right by rs')], 'N Z C')

# ---- Compare
ins('Compare', 'cmp', 'Compare: subtract and keep only the flags.',
    [('cmp rn, #imm', 'flags of rn − imm, 0–255'), ('cmp rn, rm', 'flags of rn − rm (any registers)')],
    'N Z C V', 'Always followed by a conditional branch; the branch tells whether the compare is '
    'signed (<code>bgt</code>, <code>blt</code>…) or unsigned (<code>bhi</code>, <code>bcc</code>…).')
ins('Compare', 'cmn', 'Compare with the negative.', [('cmn rn, rm', 'flags of rn + rm')], 'N Z C V',
    'Comparing against a negative constant without negating it first.')

# ---- Load/store
ins('Load and store', 'ldr', 'Load 32 bits.',
    [('ldr rd, [rb, #imm]', 'word at rb + imm (multiple of 4, ≤124)'),
     ('ldr rd, [rb, ro]', 'word at rb + ro'),
     ('ldr rd, [sp, #imm]', 'a local or a spilled variable (≤1020)'),
     ('ldr rd, [pc, #imm]', 'a constant or address from the literal pool')], '',
    '<code>[sp, #N]</code> loads of the same N over and over are a variable that didn\'t fit in a '
    'register (spilled). <code>[pc, #N]</code> loads a <code>.word</code> after the function: a big '
    'constant or the address of a global.')
ins('Load and store', 'ldrb', 'Load a byte, zero-extended: the upper 24 bits become 0.',
    [('ldrb rd, [rb, #imm]', 'byte at rb + imm, 0–31'), ('ldrb rd, [rb, ro]', 'byte at rb + ro')], '',
    'A u8 field or array element. The offset tells the field\'s position in the struct.')
ins('Load and store', 'ldrh', 'Load a halfword, zero-extended: the upper 16 bits become 0.',
    [('ldrh rd, [rb, #imm]', 'halfword at rb + imm (even, 0–62)'), ('ldrh rd, [rb, ro]', 'at rb + ro')], '',
    'A u16 field.')
ins('Load and store', 'ldrsb', 'Load a byte, sign-extended: the upper 24 bits copy bit 7 (all 1 if negative).',
    [('ldrsb rd, [rb, ro]', 'byte at rb + ro; register offset only')], '',
    'There is no immediate form, so reading an s8 field needs the offset in a register first '
    '(<code>movs r1, #3; ldrsb r0, [r2, r1]</code>). Often agbcc does <code>ldrb</code> + '
    '<code>lsls #24</code> + <code>asrs #24</code> instead.')
ins('Load and store', 'ldrsh', 'Load a halfword, sign-extended: the upper 16 bits copy bit 15.',
    [('ldrsh rd, [rb, ro]', 'halfword at rb + ro; register offset only')], '',
    'Same as <code>ldrsb</code>: an s16 with a constant offset needs <code>movs</code> first.')
ins('Load and store', 'str', 'Store 32 bits.',
    [('str rd, [rb, #imm]', 'word at rb + imm (multiple of 4, ≤124)'), ('str rd, [rb, ro]', 'at rb + ro'),
     ('str rd, [sp, #imm]', 'a local or a spilled variable')], '',
    'A <code>str [sp, #N]</code> right before a call keeps a value the call would destroy; one at '
    'the start of the function spills an argument.')
ins('Load and store', 'strb', 'Store a byte.',
    [('strb rd, [rb, #imm]', 'byte at rb + imm, 0–31'), ('strb rd, [rb, ro]', 'at rb + ro')], '',
    'Assigning a u8/s8 field.')
ins('Load and store', 'strh', 'Store a halfword.',
    [('strh rd, [rb, #imm]', 'at rb + imm (even, 0–62)'), ('strh rd, [rb, ro]', 'at rb + ro')], '',
    'Assigning a u16/s16 field.')
ins('Load and store', 'ldmia', 'Load several registers and advance the pointer.',
    [('ldmia rb!, {r0, r1, …}', 'load consecutive words from rb; rb += 4 × count')], '',
    'Paired with <code>stmia</code>: a struct copy (<code>a = b</code> for structs).')
ins('Load and store', 'stmia', 'Store several registers and advance the pointer.',
    [('stmia rb!, {r0, r1, …}', 'store consecutive words at rb; rb += 4 × count')], '',
    'Struct copies, and zeroing several words in a row.')

# ---- Stack
ins('Stack', 'push', 'Save registers on the stack.',
    [('push {r4, r5, …, lr}', 'store the registers; sp −= 4 × count')], '',
    'At the start of a function: the callee-saved registers it uses (r4–r7) plus <code>lr</code> if '
    'it calls anything. Saving r8–sl takes <code>mov</code> to a low register and another '
    '<code>push</code>.')
ins('Stack', 'pop', 'Restore registers from the stack.',
    [('pop {r4, r5, …}', 'load the registers; sp += 4 × count'), ('pop {r0}', 'get the saved lr')], '',
    'agbcc returns with <code>pop {r0}; bx r0</code> (interworking), not <code>pop {pc}</code>.')

# ---- Branch
ins('Branch', 'b', 'Jump.', [('b label', 'always jump (±2 KB)')], '',
    'Loops jump back with it; an <code>else</code> or a <code>break</code> jumps over code with it.')
ins('Branch', 'bcond', 'Jump if a condition holds.',
    [('b' + c + ' label', m + ' (' + f + ')') for c, m, f in CONDS], '',
    'Range ±256 bytes; farther targets get the inverted branch over a <code>b</code>. An '
    '<code>if (x == 3) {…}</code> usually comes out as <code>cmp x, #3; bne</code> past the body: '
    'the condition is inverted.',
    aliases=['b' + c for c, _, _ in CONDS] + ['bhs', 'blo'])
ins('Branch', 'bl', 'Call a function.', [('bl func', 'lr = return address; jump to func (±4 MB)')], '',
    'Arguments go in r0–r3 (more on the stack), the result comes back in r0. r0–r3 and ip are '
    'destroyed by the call; r4–r7 and r8–sl survive. A call through a pointer is '
    '<code>bl _call_via_rN</code>.')
ins('Branch', 'bx', 'Jump to an address in a register.',
    [('bx rm', 'jump to rm; bit 0 picks Thumb (1) or ARM (0)')], '',
    '<code>bx r0</code> after <code>pop {r0}</code> is a return; <code>bx lr</code> returns from a '
    'leaf function.')
ins('Branch', 'swi', 'Call the BIOS.', [('swi #n', 'BIOS function n (e.g. 6 = Div, 0xB = CpuSet)')],
    '', 'Not emitted by agbcc for C operators; it comes from inline asm or libraries.')

# ---- Data
ins('Data', '.word', 'A 32-bit value in the code.',
    [('.word value', 'literal pool entry, read by ldr [pc, #N]'),
     ('.word label', 'an address: a global, a function, or a switch jump-table entry')], '',
    'After the function\'s last instruction (or after a <code>b</code>). A run of <code>.word</code>s '
    'pointing inside the function is a <code>switch</code> jump table.')
ins('Data', '.short', '16 bits of padding.', [('.short 0', 'align the literal pool to 4 bytes')], '',
    'Its presence depends only on whether the code before it has an odd number of halfwords: a '
    '<code>.short</code> that only one side has means the code above differs in length by one '
    'instruction.')
ins('Data', 'nop', 'Do nothing.', [('nop', 'mov r8, r8')], '', 'Padding.')

# Where each name comes from; capitals are the letters in the mnemonic.
MN = {
    'movs': 'MOVe + Set flags', 'mov': 'MOVe', 'mvns': 'MoVe Not + Set flags',
    'negs': 'NEGate + Set flags', 'adds': 'ADD + Set flags', 'add': 'ADD',
    'subs': 'SUBtract + Set flags', 'sub': 'SUBtract', 'adcs': 'ADd with Carry + Set flags',
    'sbcs': 'SuBtract with Carry + Set flags', 'muls': 'MULtiply + Set flags',
    'ands': 'AND + Set flags', 'orrs': 'logical OR (OR + R for Register) + Set flags',
    'eors': 'Exclusive OR + Set flags', 'bics': 'BIt Clear + Set flags', 'tst': 'TeST',
    'lsls': 'Logical Shift Left + Set flags', 'lsrs': 'Logical Shift Right + Set flags',
    'asrs': 'Arithmetic Shift Right + Set flags', 'rors': 'ROtate Right + Set flags',
    'cmp': 'CoMPare', 'cmn': 'CoMpare Negative',
    'ldr': 'LoaD Register', 'ldrb': 'LoaD Register Byte', 'ldrh': 'LoaD Register Halfword',
    'ldrsb': 'LoaD Register Signed Byte', 'ldrsh': 'LoaD Register Signed Halfword',
    'str': 'STore Register', 'strb': 'STore Register Byte', 'strh': 'STore Register Halfword',
    'ldmia': 'LoaD Multiple, Increment After', 'stmia': 'STore Multiple, Increment After',
    'push': 'PUSH onto the stack', 'pop': 'POP off the stack',
    'b': 'Branch', 'bcond': 'Branch + a condition (eq, ne, gt…)', 'bl': 'Branch with Link',
    'bx': 'Branch and eXchange (instruction set)', 'swi': 'SoftWare Interrupt',
    '.word': 'a WORD: 32 bits', '.short': 'a SHORT: 16 bits', 'nop': 'No OPeration',
}
COND_MN = {'eq': 'EQual', 'ne': 'Not Equal', 'hi': 'HIgher', 'cs': 'Carry Set',
           'cc': 'Carry Clear', 'ls': 'Lower or Same', 'gt': 'Greater Than',
           'ge': 'Greater or Equal', 'lt': 'Less Than', 'le': 'Less or Equal', 'mi': 'MInus',
           'pl': 'PLus', 'vs': 'oVerflow Set', 'vc': 'oVerflow Clear'}
for i in I:
    i['mn'] = MN[i['id']]
CONDS_OUT = [dict(c=c, mn=COND_MN[c], meaning=m, flags=f) for c, m, f in CONDS]
# The pieces names are built from.
PIECES = [
    ('…s', 'Set flags: the result also updates N Z C V, for a later branch',
     'adds, subs, movs, lsls'),
    ('ld… / st…', 'LoaD (memory → register) / STore (register → memory)', 'ldr, str'),
    ('…r', 'Register: a whole 32-bit word', 'ldr, str'),
    ('…b / …h', 'Byte (8 bits) / Halfword (16 bits)', 'ldrb, strh'),
    ('…s b / …s h', 'Signed: the loaded value keeps its sign', 'ldrsb, ldrsh'),
    ('…m ia', 'Multiple registers, Increment After each one', 'ldmia, stmia'),
    ('b…', 'Branch; with a condition, only if it holds', 'b, beq, bhi'),
    ('…l', 'Link: save the return address in lr (a call)', 'bl'),
    ('…x', 'eXchange: may switch between Thumb and ARM', 'bx'),
]

# Worked examples: (asm, state before, result). Values are made up but consistent.
EX = {
  'movs': [('movs r0, #200', '', 'r0 = 200 (0xC8); Z=0, N=0')],
  'mov': [('mov r8, r4', 'r4 = 7', 'r8 = 7 (r4 parked in a high register)'),
          ('mov r4, r8', 'r8 = 7', 'r4 = 7 (brought back)')],
  'mvns': [('mvns r0, r1', 'r1 = 0x0000000F', 'r0 = 0xFFFFFFF0')],
  'negs': [('negs r0, r0', 'r0 = 5', 'r0 = −5 (0xFFFFFFFB)'),
           ('movs r0, #1<br>negs r0, r0', '', 'r0 = −1 (0xFFFFFFFF)')],
  'adds': [('adds r0, r1, r2', 'r1 = 10, r2 = 3', 'r0 = 13'),
           ('adds r0, #0x40', 'r0 = 0x02000000', 'r0 = 0x02000040 (a field\'s address)'),
           ('adds r4, r0, #0', 'r0 = 99 (a call\'s result)', 'r4 = 99, kept past the next call')],
  'add': [('add r0, sp, #8', 'sp = 0x03007E00', 'r0 = 0x03007E08 (&amp;local)'),
          ('add sp, #-16', 'sp = 0x03007E00', 'sp = 0x03007DF0 (16 bytes for locals)')],
  'subs': [('subs r0, r1, #1', 'r1 = 0', 'r0 = 0xFFFFFFFF (−1); N=1, C=0 (borrow)'),
           ('subs r0, #1<br>bne loop', 'r0 = 3', 'r0 = 2, Z=0: loops again')],
  'sub': [('sub sp, #12', 'sp = 0x03007E00', 'sp = 0x03007DF4')],
  'adcs': [('adds r0, r2', 'r0 = 0xFFFFFFFF, r2 = 1',
             'r0 = 0, C = 1: the sum (0x100000000) needs 33 bits; the 33rd is the carry'),
            ('adcs r1, r3', 'r1 = 0, r3 = 0, C = 1', 'r1 = 0 + 0 + 1 = 1. Together r1, r0 = '
             '0x00000001 00000000: 0xFFFFFFFF + 1 done in 64 bits')],
  'sbcs': [('subs r0, r2', 'r0 = 0, r2 = 1',
             'r0 = 0xFFFFFFFF, C = 0: it had to borrow'),
            ('sbcs r1, r3', 'r1 = 1, r3 = 0, C = 0', 'r1 = 1 − 0 − 1 = 0. Together r1, r0 = '
             '0x00000000 FFFFFFFF: 0x100000000 − 1 done in 64 bits')],
  'muls': [('muls r0, r1', 'r0 = 6, r1 = 7', 'r0 = 42')],
  'ands': [('movs r1, #0xF<br>ands r0, r1', 'r0 = 0x1234', 'r0 = 0x4 (x &amp; 15)')],
  'orrs': [('movs r1, #0x80<br>orrs r0, r1', 'r0 = 0x05', 'r0 = 0x85 (set bit 7)')],
  'eors': [('eors r0, r1', 'r0 = 0b1100, r1 = 0b1010', 'r0 = 0b0110')],
  'bics': [('movs r1, #2<br>bics r0, r1', 'r0 = 0b0111', 'r0 = 0b0101 (clear bit 1)')],
  'tst': [('movs r1, #2<br>tst r0, r1<br>beq skip', 'r0 = 0b0101', 'r0 &amp; 2 = 0 → Z=1 → jumps (bit was clear)')],
  'lsls': [('lsls r0, r0, #2', 'r0 = 5', 'r0 = 20 (×4, e.g. index → word offset)'),
           ('lsls r0, r0, #24', 'r0 = 0x000001FE', 'r0 = 0xFE000000 (keeps the low byte, on top)')],
  'lsrs': [('lsrs r0, r0, #24', 'r0 = 0xFE000000', 'r0 = 0xFE (254): u8 result'),
           ('lsrs r0, r0, #3', 'r0 = 40', 'r0 = 5 (÷8, unsigned)')],
  'asrs': [('asrs r0, r0, #24', 'r0 = 0xFE000000', 'r0 = 0xFFFFFFFE (−2): s8 result'),
           ('asrs r0, r0, #1', 'r0 = −7', 'r0 = −4 (rounds down, not toward 0)')],
  'rors': [('rors r0, r1', 'r0 = 0x00000001, r1 = 1', 'r0 = 0x80000000')],
  'cmp': [('cmp r0, #10<br>bgt big', 'r0 = 12', '12 − 10 = 2 → N=0, Z=0, V=0 → jumps'),
          ('cmp r0, r1<br>bcc less', 'r0 = 1, r1 = 0xFFFFFFFF', 'unsigned 1 &lt; 4294967295 → C=0 → jumps')],
  'cmn': [('cmn r0, r1', 'r0 = 5, r1 = −5', '5 + (−5) = 0 → Z=1 (like cmp r0, #−5)')],
  'ldr': [('ldr r0, [r1, #4]', 'r1 = 0x02000100, word at 0x02000104 = 0x1234', 'r0 = 0x1234 (s-&gt;field at +4)'),
          ('ldr r0, [pc, #8]<br>…<br>.word 0x0203A000', '', 'r0 = 0x0203A000 (a constant from the pool)'),
          ('ldr r0, [sp, #4]', 'sp = 0x03007DF0', 'r0 = the local at 0x03007DF4')],
  'ldrb': [('ldrb r0, [r1, #3]', 'r1 = 0x02000100, byte at 0x02000103 = 0xFE', 'r0 = 0x000000FE (254)')],
  'ldrh': [('ldrh r0, [r1, #2]', 'r1 = 0x02000100, halfword at 0x02000102 = 0xFFFE', 'r0 = 0x0000FFFE (65534)')],
  'ldrsb': [('movs r0, #3<br>ldrsb r0, [r1, r0]', 'r1 = 0x02000100, byte at 0x02000103 = 0xFE', 'r0 = 0xFFFFFFFE (−2)')],
  'ldrsh': [('movs r2, #2<br>ldrsh r0, [r1, r2]', 'r1 = 0x02000100, halfword at 0x02000102 = 0xFFFE', 'r0 = 0xFFFFFFFE (−2)')],
  'str': [('str r0, [r1, #8]', 'r0 = 7, r1 = 0x02000100', 'word at 0x02000108 = 7 (s-&gt;field = 7)')],
  'strb': [('strb r0, [r1]', 'r0 = 0x1234, r1 = 0x02000100', 'byte at 0x02000100 = 0x34 (only the low 8 bits)')],
  'strh': [('strh r0, [r1, #2]', 'r0 = 0x12345678, r1 = 0x02000100', 'halfword at 0x02000102 = 0x5678')],
  'ldmia': [('ldmia r1!, {r2, r3}', 'r1 = 0x02000100', 'r2 = word at 0x100, r3 = word at 0x104, r1 = 0x02000108')],
  'stmia': [('stmia r0!, {r2, r3}', 'r0 = 0x02000100, r2 = 1, r3 = 2', 'words 1, 2 at 0x100, 0x104; r0 = 0x02000108 (struct copy)')],
  'push': [('push {r4, r5, lr}', 'sp = 0x03007E00', 'sp = 0x03007DF4; r4, r5, lr saved there')],
  'pop': [('pop {r4, r5}<br>pop {r0}<br>bx r0', 'sp = 0x03007DF4', 'r4, r5 restored; r0 = saved lr; return')],
  'b': [('b .L5', '', 'always continues at .L5')],
  'bcond': [('cmp r0, #0<br>beq .L3', 'r0 = 0', 'Z=1 → jumps to .L3'),
            ('cmp r0, #5<br>bls .L4', 'r0 = 0xFFFFFFFF', 'unsigned huge &gt; 5 → no jump (a switch\'s range check)')],
  'bl': [('bl sub_08012345', 'pc = 0x08000100', 'lr = 0x08000105 (return address, +1 = Thumb); runs sub_08012345')],
  'bx': [('bx lr', 'lr = 0x08000105', 'returns to 0x08000104 in Thumb (bit 0 = 1)'),
         ('ldr r1, [pc, #4]<br>bx r1', 'r1 = a function pointer', 'calls through the pointer (no return address set)')],
  'swi': [('movs r0, #100<br>movs r1, #7<br>swi #6', '', 'BIOS Div: r0 = 14, r1 = 2 (remainder)')],
  '.word': [('.word 0x0203A000', '', '4 bytes of data after the function, read by <code>ldr rd, [pc, #N]</code>')],
  '.short': [('.short 0', '', '2 bytes so the following <code>.word</code>s start at a multiple of 4')],
  'nop': [('nop', '', 'nothing; fills 2 bytes')],
}
for i in I:
    i['ex'] = EX.get(i['id'], [])
missing = [i['id'] for i in I if not i['ex']]
assert not missing, missing
