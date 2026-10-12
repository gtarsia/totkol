	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806BC9C
sub_0806BC9C: @ 0x0806BC9C
	push {r4, r5, lr}
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _0806BCAE
	movs r0, #0
	b _0806BCEC
_0806BCAE:
	bl sub_080197C0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0806BCD4
	ldr r5, _0806BCD0 @ =gUnk_0202A5A8
	ldr r0, [r5]
	cmp r0, #0
	beq _0806BCCC
	bl BattleFree
	str r4, [r5]
	bl sub_0807628C
_0806BCCC:
	movs r0, #1
	b _0806BCEC
	.align 2, 0
_0806BCD0: .4byte gUnk_0202A5A8
_0806BCD4:
	ldr r4, _0806BCF4 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _0806BCE8
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_0806BCE8:
	movs r0, #1
	rsbs r0, r0, #0
_0806BCEC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806BCF4: .4byte gUnk_0202A5A8

	thumb_func_start sub_0806BCF8
sub_0806BCF8: @ 0x0806BCF8
	ldr r0, _0806BD08 @ =gUnk_0202A88C
	ldr r0, [r0]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_0806BD08: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BD0C
sub_0806BD0C: @ 0x0806BD0C
	ldr r0, _0806BD20 @ =gUnk_0202A88C
	ldr r1, [r0]
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #8
	orrs r0, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_0806BD20: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BD24
sub_0806BD24: @ 0x0806BD24
	ldr r0, _0806BD40 @ =gUnk_0202A88C
	ldr r2, [r0]
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x38
	ands r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0806BD40: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BD44
sub_0806BD44: @ 0x0806BD44
	ldr r0, _0806BD60 @ =gUnk_0202A88C
	ldr r2, [r0]
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0806BD60: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BD64
sub_0806BD64: @ 0x0806BD64
	ldr r0, _0806BD7C @ =gUnk_0202A88C
	ldr r0, [r0]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0806BD80
	movs r0, #0
	b _0806BD82
	.align 2, 0
_0806BD7C: .4byte gUnk_0202A88C
_0806BD80:
	movs r0, #1
_0806BD82:
	bx lr

	thumb_func_start sub_0806BD84
sub_0806BD84: @ 0x0806BD84
	ldr r1, _0806BD94 @ =gUnk_0202A88C
	ldr r1, [r1]
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_0806BD94: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BD98
sub_0806BD98: @ 0x0806BD98
	ldr r1, _0806BDAC @ =gUnk_0202A88C
	ldr r1, [r1]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r1]
	bx lr
	.align 2, 0
_0806BDAC: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BDB0
sub_0806BDB0: @ 0x0806BDB0
	ldr r0, _0806BDC0 @ =gUnk_0202A88C
	ldr r0, [r0]
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806BDC0: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BDC4
sub_0806BDC4: @ 0x0806BDC4
	ldr r0, _0806BDD4 @ =gUnk_0202A88C
	ldr r0, [r0]
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_0806BDD4: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BDD8
sub_0806BDD8: @ 0x0806BDD8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	mov sl, r2
	adds r6, r3, #0
	mov r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	bl sub_0808CFF4
	ldr r5, _0806BE88 @ =gUnk_0202A88C
	ldr r1, [r5]
	movs r4, #0xde
	lsls r4, r4, #1
	adds r1, r1, r4
	str r0, [r1]
	mov r0, r8
	bl sub_0805B308
	ldrh r1, [r0, #0x10]
	ldr r3, _0806BE8C @ =0xFFFF0000
	mov r8, r3
	ldr r2, [sp]
	ands r2, r3
	orrs r2, r1
	str r2, [sp]
	ldrh r3, [r0, #0x12]
	lsls r3, r3, #0x10
	ldr r1, _0806BE90 @ =0x0000FFFF
	ands r1, r2
	orrs r1, r3
	str r1, [sp]
	ldrh r1, [r0, #0x14]
	ldr r0, [sp, #4]
	mov r2, r8
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #4]
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	mov r1, sp
	bl sub_0808D070
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	adds r1, r6, #0
	bl sub_0808CDE4
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	mov r1, sb
	mov r2, sl
	bl sub_0808CF90
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_0808CEC0
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_0808CF84
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806BE88: .4byte gUnk_0202A88C
_0806BE8C: .4byte 0xFFFF0000
_0806BE90: .4byte 0x0000FFFF

	thumb_func_start sub_0806BE94
sub_0806BE94: @ 0x0806BE94
	push {r4, r5, lr}
	ldr r5, _0806BEB8 @ =gUnk_0202A88C
	ldr r0, [r5]
	movs r4, #0xde
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0806BEAA
	bl sub_0808CEB0
_0806BEAA:
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806BEB8: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BEBC
sub_0806BEBC: @ 0x0806BEBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov sb, r1
	bl sub_0806BF2C
	adds r6, r0, #0
	ldr r0, _0806BF28 @ =gUnk_0202A558
	ldr r3, [r0]
	adds r4, r3, #0
	ldr r2, [r0, #4]
	adds r5, r2, #0
	ldrh r0, [r3, #0x10]
	ldrh r7, [r6, #0x10]
	subs r1, r0, r7
	cmp r1, #0
	bge _0806BEE4
	rsbs r1, r1, #0
_0806BEE4:
	ldrh r0, [r3, #0x14]
	ldrh r6, [r6, #0x14]
	subs r0, r0, r6
	cmp r0, #0
	bge _0806BEF0
	rsbs r0, r0, #0
_0806BEF0:
	adds r1, r1, r0
	mov ip, r1
	ldrh r0, [r2, #0x10]
	subs r1, r0, r7
	cmp r1, #0
	bge _0806BEFE
	rsbs r1, r1, #0
_0806BEFE:
	ldrh r0, [r2, #0x14]
	subs r0, r0, r6
	cmp r0, #0
	bge _0806BF08
	rsbs r0, r0, #0
_0806BF08:
	adds r0, r1, r0
	cmp ip, r0
	ble _0806BF12
	adds r4, r2, #0
	adds r5, r3, #0
_0806BF12:
	mov r0, r8
	str r4, [r0]
	mov r0, sb
	str r5, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806BF28: .4byte gUnk_0202A558

	thumb_func_start sub_0806BF2C
sub_0806BF2C: @ 0x0806BF2C
	ldr r0, _0806BF34 @ =gUnk_0202A88C
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	bx lr
	.align 2, 0
_0806BF34: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BF38
sub_0806BF38: @ 0x0806BF38
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	lsls r2, r2, #0x18
	mov r8, r2
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r2, _0806BFBC @ =gUnk_0202A550
	mov sb, r2
	str r0, [r2]
	ldr r7, _0806BFC0 @ =gUnk_0202A554
	str r1, [r7]
	movs r2, #0x1e
	bl sub_08143B70
	ldr r2, _0806BFC4 @ =gUnk_0202A560
	lsrs r0, r0, #7
	movs r1, #1
	ands r0, r1
	strb r0, [r2]
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r7]
	ldr r6, _0806BFC8 @ =gUnk_0202A56C
	ldr r2, [r6]
	ldr r5, _0806BFCC @ =gUnk_0202A568
	ldr r3, [r5]
	movs r4, #0x20
	str r4, [sp]
	str r4, [sp, #4]
	bl sub_0804D954
	bl sub_0805F6AC
	ldr r4, _0806BFD0 @ =gUnk_0202A580
	ldr r3, [r6]
	ldr r0, [r5]
	str r0, [sp]
	ldr r0, _0806BFD4 @ =gUnk_0202A578
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r0, _0806BFD8 @ =gUnk_0202A574
	ldr r0, [r0]
	str r0, [sp, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0804D910
	mov r2, r8
	cmp r2, #1
	bne _0806BFE0
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r7]
	ldr r2, _0806BFDC @ =gUnk_0202A570
	ldr r2, [r2]
	movs r3, #2
	str r3, [sp]
	b _0806C002
	.align 2, 0
_0806BFBC: .4byte gUnk_0202A550
_0806BFC0: .4byte gUnk_0202A554
_0806BFC4: .4byte gUnk_0202A560
_0806BFC8: .4byte gUnk_0202A56C
_0806BFCC: .4byte gUnk_0202A568
_0806BFD0: .4byte gUnk_0202A580
_0806BFD4: .4byte gUnk_0202A578
_0806BFD8: .4byte gUnk_0202A574
_0806BFDC: .4byte gUnk_0202A570
_0806BFE0:
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	ldr r3, _0806C01C @ =gUnk_0202A598
	ldrb r2, [r3]
	ldrb r3, [r3, #1]
	bl sub_080539D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sb
	ldr r3, [r2]
	ldr r1, [r7]
	ldr r2, _0806C020 @ =gUnk_0202A570
	ldr r2, [r2]
	str r0, [sp]
	adds r0, r3, #0
_0806C002:
	adds r3, r4, #0
	bl sub_0804C0F8
	ldr r1, _0806C024 @ =gUnk_0202A57C
	str r0, [r1]
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C01C: .4byte gUnk_0202A598
_0806C020: .4byte gUnk_0202A570
_0806C024: .4byte gUnk_0202A57C

	thumb_func_start sub_0806C028
sub_0806C028: @ 0x0806C028
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	lsls r2, r2, #0x18
	mov r8, r2
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r2, _0806C0AC @ =gUnk_0202A550
	mov sb, r2
	str r0, [r2]
	ldr r7, _0806C0B0 @ =gUnk_0202A554
	str r1, [r7]
	movs r2, #0x1e
	bl sub_08143B70
	ldr r2, _0806C0B4 @ =gUnk_0202A560
	lsrs r0, r0, #7
	movs r1, #1
	ands r0, r1
	strb r0, [r2]
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r7]
	ldr r6, _0806C0B8 @ =gUnk_0202A56C
	ldr r2, [r6]
	ldr r5, _0806C0BC @ =gUnk_0202A568
	ldr r3, [r5]
	movs r4, #0x20
	str r4, [sp]
	str r4, [sp, #4]
	bl sub_0804D930
	bl sub_0805F6AC
	ldr r4, _0806C0C0 @ =gUnk_0202A580
	ldr r3, [r6]
	ldr r0, [r5]
	str r0, [sp]
	ldr r0, _0806C0C4 @ =gUnk_0202A578
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r0, _0806C0C8 @ =gUnk_0202A574
	ldr r0, [r0]
	str r0, [sp, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0804D910
	mov r2, r8
	cmp r2, #1
	bne _0806C0D0
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r7]
	ldr r2, _0806C0CC @ =gUnk_0202A570
	ldr r2, [r2]
	movs r3, #2
	str r3, [sp]
	b _0806C0F2
	.align 2, 0
_0806C0AC: .4byte gUnk_0202A550
_0806C0B0: .4byte gUnk_0202A554
_0806C0B4: .4byte gUnk_0202A560
_0806C0B8: .4byte gUnk_0202A56C
_0806C0BC: .4byte gUnk_0202A568
_0806C0C0: .4byte gUnk_0202A580
_0806C0C4: .4byte gUnk_0202A578
_0806C0C8: .4byte gUnk_0202A574
_0806C0CC: .4byte gUnk_0202A570
_0806C0D0:
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	ldr r3, _0806C10C @ =gUnk_0202A598
	ldrb r2, [r3]
	ldrb r3, [r3, #1]
	bl sub_080539D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sb
	ldr r3, [r2]
	ldr r1, [r7]
	ldr r2, _0806C110 @ =gUnk_0202A570
	ldr r2, [r2]
	str r0, [sp]
	adds r0, r3, #0
_0806C0F2:
	adds r3, r4, #0
	bl sub_0804C0F8
	ldr r1, _0806C114 @ =gUnk_0202A57C
	str r0, [r1]
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C10C: .4byte gUnk_0202A598
_0806C110: .4byte gUnk_0202A570
_0806C114: .4byte gUnk_0202A57C

	thumb_func_start sub_0806C118
sub_0806C118: @ 0x0806C118
	push {r4, lr}
	adds r3, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0806C140 @ =gUnk_0202A88C
	ldr r2, [r2]
	movs r4, #0xc6
	lsls r4, r4, #1
	adds r2, r2, r4
	ldr r2, [r2]
	bl sub_0804DCA0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806C140: .4byte gUnk_0202A88C

	thumb_func_start sub_0806C144
sub_0806C144: @ 0x0806C144
	push {lr}
	adds r1, r0, #0
	ldr r0, _0806C160 @ =gUnk_0202A88C
	ldr r0, [r0]
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_08052024
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0
_0806C160: .4byte gUnk_0202A88C

	thumb_func_start sub_0806C164
sub_0806C164: @ 0x0806C164
	push {r4, r5, r6, r7, lr}
	ldr r4, _0806C1B4 @ =gUnk_0202A88C
	ldr r0, [r4]
	movs r7, #0xc4
	lsls r7, r7, #1
	adds r0, r0, r7
	ldr r0, [r0]
	cmp r0, #0
	beq _0806C17A
	bl BattleFree
_0806C17A:
	ldr r0, [r4]
	movs r6, #0xc6
	lsls r6, r6, #1
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, #0
	beq _0806C18C
	bl BattleFree
_0806C18C:
	ldr r0, [r4]
	movs r5, #0xc8
	lsls r5, r5, #1
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _0806C19E
	bl sub_08053AC8
_0806C19E:
	ldr r1, [r4]
	adds r0, r1, r7
	movs r2, #0
	str r2, [r0]
	adds r0, r1, r6
	str r2, [r0]
	adds r1, r1, r5
	str r2, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C1B4: .4byte gUnk_0202A88C

	thumb_func_start sub_0806C1B8
sub_0806C1B8: @ 0x0806C1B8
	push {r4, lr}
	ldr r4, _0806C208 @ =gUnk_0202A570
	movs r0, #0x80
	lsls r0, r0, #3
	bl BattleAlloc
	str r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #3
	bl memzero
	ldr r4, _0806C20C @ =gUnk_0202A564
	movs r0, #0x90
	lsls r0, r0, #6
	bl BattleAlloc
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #6
	bl memzero
	ldr r0, _0806C210 @ =gUnk_0202A568
	ldr r1, [r4]
	str r1, [r0]
	ldr r2, _0806C214 @ =gUnk_0202A56C
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, r3
	str r0, [r2]
	ldr r2, _0806C218 @ =gUnk_0202A574
	adds r0, r0, r3
	str r0, [r2]
	ldr r0, _0806C21C @ =gUnk_0202A578
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r1, r1, r2
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806C208: .4byte gUnk_0202A570
_0806C20C: .4byte gUnk_0202A564
_0806C210: .4byte gUnk_0202A568
_0806C214: .4byte gUnk_0202A56C
_0806C218: .4byte gUnk_0202A574
_0806C21C: .4byte gUnk_0202A578
