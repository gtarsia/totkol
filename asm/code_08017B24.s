	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08017B24
sub_08017B24: @ 0x08017B24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r1
	mov sl, r2
	adds r6, r3, #0
	ldr r4, [sp, #0x38]
	ldr r5, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	ldr r7, _08017C54 @ =gUnk_0200283C
	str r0, [r7]
	ldr r1, _08017C58 @ =0x00001C24
	bl memzero
	ldr r1, [r7]
	ldr r2, _08017C5C @ =0x00000EE4
	adds r0, r1, r2
	movs r3, #0
	mov r8, r3
	mov r2, sb
	strh r2, [r0]
	ldr r3, _08017C60 @ =0x00000ED4
	adds r0, r1, r3
	mov r2, sl
	str r2, [r0]
	adds r3, #0x12
	adds r0, r1, r3
	strh r6, [r0]
	ldr r0, _08017C64 @ =0x00000EE8
	adds r1, r1, r0
	strb r4, [r1]
	ldr r0, [r7]
	ldr r1, _08017C68 @ =0x00000EE9
	adds r0, r0, r1
	strb r5, [r0]
	ldr r0, [r7]
	ldr r2, _08017C6C @ =0x00000EEB
	adds r0, r0, r2
	mov r3, sp
	ldrb r3, [r3, #0x10]
	strb r3, [r0]
	ldr r1, [r7]
	ldr r4, _08017C70 @ =0x00000EF8
	mov sb, r4
	adds r2, r1, r4
	movs r0, #9
	rsbs r0, r0, #0
	ldr r3, [sp, #0x44]
	ands r0, r3
	str r0, [r2]
	subs r4, #0x20
	adds r2, r1, r4
	ldr r0, _08017C74 @ =gUnk_03000E20
	ldr r0, [r0, #0x14]
	str r0, [r2]
	ldr r0, _08017C78 @ =0x00000EDC
	adds r2, r1, r0
	ldr r3, _08017C7C @ =gUnk_03000D60
	ldr r0, [r3, #0x14]
	str r0, [r2]
	adds r4, #8
	adds r2, r1, r4
	ldr r0, [r3, #0x10]
	str r0, [r2]
	ldr r0, _08017C80 @ =0x00000EF1
	adds r1, r1, r0
	mov r2, r8
	strb r2, [r1]
	ldr r0, [r7]
	movs r3, #0xef
	lsls r3, r3, #4
	adds r0, r0, r3
	strb r2, [r0]
	ldr r1, [r7]
	ldr r4, _08017C84 @ =0x00001BBE
	adds r2, r1, r4
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r2]
	ldr r0, _08017C88 @ =0x00001BD0
	adds r1, r1, r0
	movs r5, #1
	strb r5, [r1]
	ldr r1, [r7]
	ldr r2, _08017C8C @ =0x00001B74
	adds r0, r1, r2
	ldr r4, _08017C90 @ =gUnk_02002830
	str r4, [r0]
	lsls r6, r6, #1
	str r6, [r4]
	subs r3, #2
	adds r0, r1, r3
	mov r2, r8
	strb r2, [r0]
	adds r3, #1
	adds r1, r1, r3
	strb r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	ldr r1, [sp, #0x44]
	ands r1, r0
	cmp r1, #0
	bne _08017C14
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	bl sub_080197D4
_08017C14:
	ldr r0, [r7]
	ldr r3, _08017C94 @ =0x00001BD2
	adds r2, r0, r3
	add r0, sb
	ldr r3, [r0]
	adds r0, r4, #0
	mov r1, sl
	bl sub_08014D14
	ldr r1, [r7]
	movs r2, #0xdd
	lsls r2, r2, #5
	adds r1, r1, r2
	strb r0, [r1]
	ldr r1, [r7]
	ldrb r0, [r4, #7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	ldr r3, _08017C98 @ =0x00000EED
	adds r1, r1, r3
	strb r0, [r1]
	ldr r1, [r7]
	ldr r4, _08017C6C @ =0x00000EEB
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08017CA0
	ldr r0, _08017C9C @ =0x00000EEA
	adds r1, r1, r0
	movs r0, #2
	strb r0, [r1]
	b _08017CA6
	.align 2, 0
_08017C54: .4byte gUnk_0200283C
_08017C58: .4byte 0x00001C24
_08017C5C: .4byte 0x00000EE4
_08017C60: .4byte 0x00000ED4
_08017C64: .4byte 0x00000EE8
_08017C68: .4byte 0x00000EE9
_08017C6C: .4byte 0x00000EEB
_08017C70: .4byte 0x00000EF8
_08017C74: .4byte gUnk_03000E20
_08017C78: .4byte 0x00000EDC
_08017C7C: .4byte gUnk_03000D60
_08017C80: .4byte 0x00000EF1
_08017C84: .4byte 0x00001BBE
_08017C88: .4byte 0x00001BD0
_08017C8C: .4byte 0x00001B74
_08017C90: .4byte gUnk_02002830
_08017C94: .4byte 0x00001BD2
_08017C98: .4byte 0x00000EED
_08017C9C: .4byte 0x00000EEA
_08017CA0:
	ldr r2, _08017CF0 @ =0x00000EEA
	adds r0, r1, r2
	strb r5, [r0]
_08017CA6:
	ldr r3, _08017CF4 @ =gUnk_0200283C
	ldr r0, [r3]
	ldr r4, _08017CF8 @ =0x00000EED
	adds r1, r0, r4
	ldrb r1, [r1]
	ldr r2, _08017CFC @ =0x00001B95
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, [r3]
	movs r4, #0xdd
	lsls r4, r4, #5
	adds r1, r0, r4
	ldrb r2, [r1]
	ldr r1, _08017D00 @ =0x00001B94
	adds r0, r0, r1
	strb r2, [r0]
	ldr r0, [r3]
	adds r1, r0, r1
	ldrb r2, [r1]
	str r2, [sp, #0x14]
	ldr r4, _08017D04 @ =0x00000EEB
	adds r0, r0, r4
	ldrb r0, [r0]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08017D0C
	movs r0, #0x1a
	strb r0, [r1]
	ldr r0, [r3]
	ldr r1, _08017D08 @ =0x00000EF1
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b _08017D24
	.align 2, 0
_08017CF0: .4byte 0x00000EEA
_08017CF4: .4byte gUnk_0200283C
_08017CF8: .4byte 0x00000EED
_08017CFC: .4byte 0x00001B95
_08017D00: .4byte 0x00001B94
_08017D04: .4byte 0x00000EEB
_08017D08: .4byte 0x00000EF1
_08017D0C:
	ldr r0, [sp, #0x14]
	adds r0, #2
	strb r0, [r1]
	ldr r0, [r3]
	ldr r2, _08017FAC @ =0x00001B94
	adds r1, r0, r2
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	ldr r3, _08017FB0 @ =0x00001BC4
	adds r0, r0, r3
	movs r1, #1
	strh r1, [r0]
_08017D24:
	bl sub_080160E4
	ldr r7, _08017FB4 @ =gUnk_0200283C
	ldr r4, [r7]
	ldr r1, _08017FB8 @ =0x00000EFC
	adds r0, r4, r1
	movs r2, #0
	strh r2, [r0]
	ldr r3, _08017FAC @ =0x00001B94
	adds r0, r4, r3
	ldrb r1, [r0]
	adds r1, #2
	ldr r2, _08017FBC @ =0x00001B96
	adds r0, r4, r2
	ldrb r0, [r0]
	adds r0, #2
	muls r1, r0, r1
	subs r3, #0xa
	adds r0, r4, r3
	strh r1, [r0]
	ldr r1, _08017FC0 @ =0x00000EF1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08017DD0
	adds r2, #0xd
	adds r4, r4, r2
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r0, [r7]
	ldr r3, _08017FC4 @ =0x00001BA3
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r4, _08017FC8 @ =0x000010C4
	adds r0, r0, r4
	ldr r1, [r7]
	adds r0, r1, r0
	ldr r2, _08017FCC @ =0x00000ED8
	adds r1, r1, r2
	ldr r2, [r1]
	movs r5, #0xa0
	lsls r5, r5, #2
	movs r1, #0
	adds r3, r5, #0
	bl sub_08000C44
	ldr r4, [r7]
	ldr r3, _08017FC4 @ =0x00001BA3
	adds r4, r4, r3
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r0, [r7]
	ldr r4, _08017FC4 @ =0x00001BA3
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08017FC8 @ =0x000010C4
	adds r0, r0, r1
	ldr r1, [r7]
	adds r0, r1, r0
	ldr r2, _08017FD0 @ =0x00000EDC
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	adds r3, r5, #0
	bl sub_08000C44
_08017DD0:
	ldr r3, [r7]
	movs r4, #0xa0
	lsls r4, r4, #4
	adds r4, r4, r3
	mov sb, r4
	ldr r0, _08017FCC @ =0x00000ED8
	adds r1, r3, r0
	ldr r2, _08017FD4 @ =0x00001B93
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r4, _08017FD8 @ =0x00001B92
	mov r8, r4
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r1, _08017FAC @ =0x00001B94
	adds r0, r3, r1
	ldrb r1, [r0]
	adds r1, #2
	adds r2, #3
	adds r0, r3, r2
	ldrb r2, [r0]
	adds r2, #2
	ldr r4, _08017FDC @ =0x00000EEA
	adds r3, r3, r4
	ldrb r3, [r3]
	str r1, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	mov r0, sb
	bl sub_0801BB1C
	ldr r4, [r7]
	ldr r1, _08017FAC @ =0x00001B94
	adds r0, r4, r1
	ldrb r6, [r0]
	adds r6, #2
	ldr r2, _08017FBC @ =0x00001B96
	adds r0, r4, r2
	ldrb r5, [r0]
	adds r5, #2
	ldr r3, _08017FC4 @ =0x00001BA3
	adds r4, r4, r3
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r1, [r7]
	ldr r4, _08017FC4 @ =0x00001BA3
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08017FC8 @ =0x000010C4
	adds r1, r1, r0
	ldr r0, [r7]
	adds r0, r0, r1
	str r5, [sp]
	lsls r1, r6, #1
	str r1, [sp, #4]
	movs r5, #0x40
	str r5, [sp, #8]
	mov r1, sb
	mov r2, sl
	adds r3, r6, #0
	bl sub_08000CD4
	ldr r4, [r7]
	ldr r2, _08017FD0 @ =0x00000EDC
	adds r1, r4, r2
	ldr r3, _08017FD4 @ =0x00001B93
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, [r1]
	adds r1, r1, r0
	add r8, r4
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	adds r3, #0x10
	adds r4, r4, r3
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r0, [r7]
	ldr r4, _08017FC4 @ =0x00001BA3
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08017FC8 @ =0x000010C4
	adds r0, r0, r1
	ldr r1, [r7]
	adds r0, r1, r0
	ldr r3, _08017FAC @ =0x00001B94
	adds r2, r1, r3
	ldrb r3, [r2]
	adds r3, #2
	subs r4, #0xd
	adds r1, r1, r4
	ldrb r1, [r1]
	adds r1, #2
	str r1, [sp]
	str r5, [sp, #4]
	movs r1, #0
	mov r2, sl
	bl sub_08000D94
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _08017F66
	ldr r4, [r7]
	ldr r1, _08017FE0 @ =0x00000E98
	adds r1, r1, r4
	mov sb, r1
	ldr r2, _08017FD0 @ =0x00000EDC
	adds r1, r4, r2
	ldr r3, _08017FD4 @ =0x00001B93
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r2, _08017FD8 @ =0x00001B92
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	add r0, sp, #0xc
	movs r3, #0
	strh r3, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x11
	movs r0, #0xb
	orrs r2, r0
	add r0, sp, #0xc
	mov r1, sb
	bl CpuSet
	ldr r1, _08017FE4 @ =0x00000E9A
	adds r4, r4, r1
	ldr r0, [r7]
	ldr r2, _08017FE8 @ =0x00000EEB
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r3, _08017FEC @ =0x00000EFE
	adds r0, r0, r3
	ldrh r2, [r0]
	adds r0, r4, #0
	bl sub_0801BC70
	ldr r4, [r7]
	ldr r0, _08017FC4 @ =0x00001BA3
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r1, [r7]
	ldr r2, _08017FC4 @ =0x00001BA3
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r3, _08017FC8 @ =0x000010C4
	adds r1, r1, r3
	ldr r0, [r7]
	adds r0, r0, r1
	mov r1, sb
	mov r2, sl
	movs r3, #0xb
	bl sub_08000BB4
_08017F66:
	ldr r1, [r7]
	ldr r4, _08017FE8 @ =0x00000EEB
	adds r0, r1, r4
	ldrb r0, [r0]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r7, #0
	cmp r0, #1
	bls _08017F7C
	b _08018078
_08017F7C:
	ldr r2, _08017FAC @ =0x00001B94
	adds r0, r1, r2
	mov r4, sp
	ldrb r4, [r4, #0x14]
	strb r4, [r0]
	ldr r3, [r3]
	ldr r0, _08017FF0 @ =0x00000EE8
	adds r1, r3, r0
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08017FF4
	adds r0, #1
	cmp r2, r0
	bne _08018010
	ldr r1, _08017FAC @ =0x00001B94
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x1c
	subs r0, r0, r1
	asrs r0, r0, #1
	b _08017FFE
	.align 2, 0
_08017FAC: .4byte 0x00001B94
_08017FB0: .4byte 0x00001BC4
_08017FB4: .4byte gUnk_0200283C
_08017FB8: .4byte 0x00000EFC
_08017FBC: .4byte 0x00001B96
_08017FC0: .4byte 0x00000EF1
_08017FC4: .4byte 0x00001BA3
_08017FC8: .4byte 0x000010C4
_08017FCC: .4byte 0x00000ED8
_08017FD0: .4byte 0x00000EDC
_08017FD4: .4byte 0x00001B93
_08017FD8: .4byte 0x00001B92
_08017FDC: .4byte 0x00000EEA
_08017FE0: .4byte 0x00000E98
_08017FE4: .4byte 0x00000E9A
_08017FE8: .4byte 0x00000EEB
_08017FEC: .4byte 0x00000EFE
_08017FF0: .4byte 0x00000EE8
_08017FF4:
	ldr r4, _08018008 @ =0x00001B94
	adds r0, r3, r4
	ldrb r1, [r0]
	movs r0, #0x1c
	subs r0, r0, r1
_08017FFE:
	ldr r2, _0801800C @ =0x00001B93
	adds r1, r3, r2
	strb r0, [r1]
	b _08018018
	.align 2, 0
_08018008: .4byte 0x00001B94
_0801800C: .4byte 0x00001B93
_08018010:
	ldrb r1, [r1]
	ldr r4, _08018044 @ =0x00001B93
	adds r0, r3, r4
	strb r1, [r0]
_08018018:
	ldr r1, _08018048 @ =gUnk_0200283C
	ldr r2, [r1]
	ldr r0, _0801804C @ =0x00000EE9
	adds r6, r2, r0
	movs r5, #0
	ldrsb r5, [r6, r5]
	movs r0, #2
	rsbs r0, r0, #0
	adds r3, r1, #0
	cmp r5, r0
	beq _08018054
	adds r0, #1
	cmp r5, r0
	bne _08018070
	ldr r1, _08018050 @ =0x00001B96
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x12
	subs r0, r0, r1
	asrs r0, r0, #1
	b _0801805E
	.align 2, 0
_08018044: .4byte 0x00001B93
_08018048: .4byte gUnk_0200283C
_0801804C: .4byte 0x00000EE9
_08018050: .4byte 0x00001B96
_08018054:
	ldr r1, _08018068 @ =0x00001B96
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x12
	subs r0, r0, r1
_0801805E:
	ldr r4, _0801806C @ =0x00001B92
	adds r1, r2, r4
	strb r0, [r1]
	b _08018078
	.align 2, 0
_08018068: .4byte 0x00001B96
_0801806C: .4byte 0x00001B92
_08018070:
	ldrb r1, [r6]
	ldr r4, _080180A4 @ =0x00001B92
	adds r0, r2, r4
	strb r1, [r0]
_08018078:
	ldr r0, [r3]
	ldr r1, _080180A8 @ =0x00001B98
	adds r0, r0, r1
	movs r1, #3
	strb r1, [r0]
	ldr r0, [r3]
	ldr r2, _080180AC @ =0x00001B88
	adds r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #7
	strh r1, [r0]
	bl sub_08015188
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080180A4: .4byte 0x00001B92
_080180A8: .4byte 0x00001B98
_080180AC: .4byte 0x00001B88

	thumb_func_start sub_080180B0
sub_080180B0: @ 0x080180B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r7, _080181AC @ =gUnk_0200283C
	ldr r1, [r7]
	ldr r2, _080181B0 @ =0x00000EEB
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080180DC
	ldr r3, _080181B4 @ =0x00001B94
	adds r1, r1, r3
	movs r0, #0x1a
	strb r0, [r1]
	bl sub_080160E4
_080180DC:
	ldr r4, [r7]
	ldr r0, _080181B8 @ =0x00000ED8
	adds r1, r4, r0
	ldr r2, _080181BC @ =0x00001B93
	adds r0, r4, r2
	ldrb r2, [r0]
	lsls r2, r2, #1
	ldr r5, [r1]
	adds r5, r5, r2
	ldr r3, _080181C0 @ =0x00001B92
	adds r0, r4, r3
	ldrb r1, [r0]
	lsls r1, r1, #6
	adds r5, r5, r1
	ldr r3, _080181C4 @ =0x00000EDC
	adds r0, r4, r3
	ldr r0, [r0]
	mov r8, r0
	add r8, r2
	add r8, r1
	ldr r0, _080181C8 @ =0x00001BA3
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r0, [r7]
	ldr r1, _080181C8 @ =0x00001BA3
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080181CC @ =0x000010C4
	adds r0, r0, r2
	ldr r2, [r7]
	adds r0, r2, r0
	ldr r6, _080181B4 @ =0x00001B94
	adds r1, r2, r6
	ldrb r3, [r1]
	adds r3, #2
	ldr r1, _080181D0 @ =0x00001B96
	mov sl, r1
	add r2, sl
	ldrb r1, [r2]
	adds r1, #2
	str r1, [sp]
	movs r2, #0x40
	mov sb, r2
	str r2, [sp, #4]
	movs r1, #0
	adds r2, r5, #0
	bl sub_08000D94
	ldr r4, [r7]
	ldr r3, _080181C8 @ =0x00001BA3
	adds r4, r4, r3
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r0, [r7]
	ldr r1, _080181C8 @ =0x00001BA3
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080181CC @ =0x000010C4
	adds r0, r0, r2
	ldr r1, [r7]
	adds r0, r1, r0
	adds r6, r1, r6
	ldrb r3, [r6]
	adds r3, #2
	add r1, sl
	ldrb r1, [r1]
	adds r1, #2
	str r1, [sp]
	mov r1, sb
	str r1, [sp, #4]
	movs r1, #0
	mov r2, r8
	bl sub_08000D94
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080181AC: .4byte gUnk_0200283C
_080181B0: .4byte 0x00000EEB
_080181B4: .4byte 0x00001B94
_080181B8: .4byte 0x00000ED8
_080181BC: .4byte 0x00001B93
_080181C0: .4byte 0x00001B92
_080181C4: .4byte 0x00000EDC
_080181C8: .4byte 0x00001BA3
_080181CC: .4byte 0x000010C4
_080181D0: .4byte 0x00001B96

	thumb_func_start sub_080181D4
sub_080181D4: @ 0x080181D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mov r8, r1
	ldr r1, [sp, #0x38]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	str r6, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r6, r8
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r8, r6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	movs r7, #0
	ldr r4, _080182FC @ =gUnk_0200283C
	str r0, [r4]
	ldr r1, _08018300 @ =0x00001C24
	str r2, [sp]
	str r3, [sp, #4]
	bl memzero
	ldr r0, [r4]
	ldr r6, _08018304 @ =0x00000EE4
	adds r1, r0, r6
	movs r6, #0
	mov ip, r6
	mov r6, sl
	strh r6, [r1]
	ldr r1, _08018308 @ =0x00000EE8
	adds r0, r0, r1
	strb r5, [r0]
	ldr r0, [r4]
	ldr r5, _0801830C @ =0x00000EE9
	adds r0, r0, r5
	mov r6, sp
	ldrb r6, [r6, #8]
	strb r6, [r0]
	ldr r1, [r4]
	ldr r5, _08018310 @ =0x00001BAE
	adds r0, r1, r5
	ldr r2, [sp]
	strh r2, [r0]
	ldr r6, _08018314 @ =0x00001BC6
	adds r0, r1, r6
	ldr r3, [sp, #4]
	strh r3, [r0]
	adds r5, #0x14
	adds r1, r1, r5
	mov r0, r8
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _08018318 @ =0x00001BCF
	adds r0, r0, r1
	mov r2, sb
	strb r2, [r0]
	ldr r2, [r4]
	ldr r3, _0801831C @ =0x00000ED8
	adds r1, r2, r3
	ldr r0, _08018320 @ =gUnk_03000E20
	ldr r0, [r0, #0x14]
	str r0, [r1]
	ldr r6, _08018324 @ =0x00000EDC
	adds r1, r2, r6
	ldr r3, _08018328 @ =gUnk_03000D60
	ldr r0, [r3, #0x14]
	str r0, [r1]
	movs r0, #0xee
	lsls r0, r0, #4
	adds r1, r2, r0
	ldr r0, [r3, #0x10]
	str r0, [r1]
	ldr r3, _0801832C @ =0x00000ED4
	adds r1, r2, r3
	ldr r0, _08018330 @ =gUnk_0875EC2E
	str r0, [r1]
	adds r6, #0xa
	adds r0, r2, r6
	strh r7, [r0]
	ldr r0, _08018334 @ =0x00001BC1
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	ldr r1, _08018338 @ =0x00001BAC
	adds r0, r0, r1
	movs r3, #1
	strb r3, [r0]
	ldr r1, [r4]
	adds r6, #0x1a
	adds r2, r1, r6
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2]
	ldr r0, _0801833C @ =0x00000EF8
	adds r2, r1, r0
	movs r0, #0x20
	str r0, [r2]
	ldr r2, _08018340 @ =0x00000EF1
	adds r1, r1, r2
	mov r6, ip
	strb r6, [r1]
	ldr r0, [r4]
	movs r1, #0xef
	lsls r1, r1, #4
	adds r0, r0, r1
	strb r6, [r0]
	ldr r0, [r4]
	ldr r6, _08018344 @ =0x00001BBE
	adds r2, r0, r6
	movs r1, #0xf0
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _08018348 @ =0x00001BD0
	adds r0, r0, r1
	strb r3, [r0]
	ldr r0, [r4]
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #5
	bls _080182F2
	b _080184A4
_080182F2:
	lsls r0, r0, #2
	ldr r1, _0801834C @ =_08018350
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080182FC: .4byte gUnk_0200283C
_08018300: .4byte 0x00001C24
_08018304: .4byte 0x00000EE4
_08018308: .4byte 0x00000EE8
_0801830C: .4byte 0x00000EE9
_08018310: .4byte 0x00001BAE
_08018314: .4byte 0x00001BC6
_08018318: .4byte 0x00001BCF
_0801831C: .4byte 0x00000ED8
_08018320: .4byte gUnk_03000E20
_08018324: .4byte 0x00000EDC
_08018328: .4byte gUnk_03000D60
_0801832C: .4byte 0x00000ED4
_08018330: .4byte gUnk_0875EC2E
_08018334: .4byte 0x00001BC1
_08018338: .4byte 0x00001BAC
_0801833C: .4byte 0x00000EF8
_08018340: .4byte 0x00000EF1
_08018344: .4byte 0x00001BBE
_08018348: .4byte 0x00001BD0
_0801834C: .4byte _08018350
_08018350: @ jump table
	.4byte _08018368 @ case 0
	.4byte _08018384 @ case 1
	.4byte _08018368 @ case 2
	.4byte _080183B0 @ case 3
	.4byte _08018384 @ case 4
	.4byte _080183E0 @ case 5
_08018368:
	ldr r0, _0801837C @ =gUnk_0200283C
	ldr r0, [r0]
	ldr r2, _08018380 @ =0x00001BC6
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_081437AC
	b _080183C6
	.align 2, 0
_0801837C: .4byte gUnk_0200283C
_08018380: .4byte 0x00001BC6
_08018384:
	ldr r2, _080183A0 @ =gUnk_08623678
	ldr r1, _080183A4 @ =gUnk_0861A8F0
	ldr r0, _080183A8 @ =gUnk_0200283C
	ldr r0, [r0]
	ldr r3, _080183AC @ =0x00001BC6
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	b _080183C4
	.align 2, 0
_080183A0: .4byte gUnk_08623678
_080183A4: .4byte gUnk_0861A8F0
_080183A8: .4byte gUnk_0200283C
_080183AC: .4byte 0x00001BC6
_080183B0:
	ldr r1, _080183D0 @ =gUnk_08623678
	ldr r0, _080183D4 @ =gUnk_0200283C
	ldr r0, [r0]
	ldr r5, _080183D8 @ =0x00001BC6
	adds r0, r0, r5
	ldrh r0, [r0]
	ldr r6, _080183DC @ =0x0000011B
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
_080183C4:
	ldr r0, [r0]
_080183C6:
	movs r1, #0
	movs r2, #0
	bl sub_080197D4
	b _080184A4
	.align 2, 0
_080183D0: .4byte gUnk_08623678
_080183D4: .4byte gUnk_0200283C
_080183D8: .4byte 0x00001BC6
_080183DC: .4byte 0x0000011B
_080183E0:
	ldr r0, _08018444 @ =gUnk_0200283C
	ldr r0, [r0]
	ldr r1, _08018448 @ =0x00001BC6
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x64
	muls r0, r1, r0
	bl sub_0801C184
	adds r7, r0, #0
	movs r1, #0
_080183F6:
	adds r0, r1, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080183F6
	adds r2, r7, r1
	subs r1, r2, #1
	movs r0, #0x89
	strb r0, [r1]
	ldr r0, _0801844C @ =gUnk_08623678
	movs r3, #0xec
	lsls r3, r3, #3
	adds r0, r0, r3
	adds r5, r2, #0
	ldr r4, [r0]
	movs r6, #8
_0801841C:
	ldrb r0, [r4]
	adds r1, r0, #0
	adds r4, #1
	cmp r0, #0x80
	bne _08018454
	ldrb r1, [r4]
	lsls r1, r1, #4
	ldr r0, _08018450 @ =gUnk_02002800
	adds r1, r1, r0
	adds r4, #1
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0xff
	bl sub_0801995C
	lsls r0, r0, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	b _08018476
	.align 2, 0
_08018444: .4byte gUnk_0200283C
_08018448: .4byte 0x00001BC6
_0801844C: .4byte gUnk_08623678
_08018450: .4byte gUnk_02002800
_08018454:
	cmp r0, #0x87
	bne _08018480
	ldr r1, _0801847C @ =gUnk_086254D8
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r4, #1
	ldr r1, [r0]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0xff
	bl sub_0801995C
	lsls r0, r0, #0x18
	movs r2, #0xff
	lsls r2, r2, #0x18
	adds r0, r0, r2
_08018476:
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	b _08018488
	.align 2, 0
_0801847C: .4byte gUnk_086254D8
_08018480:
	strb r1, [r5]
	adds r5, #1
	cmp r1, #0xff
	beq _0801848E
_08018488:
	subs r6, #1
	cmp r6, #0
	bgt _0801841C
_0801848E:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	bl sub_080197D4
	ldr r0, _08018538 @ =gUnk_0200283C
	ldr r0, [r0]
	ldr r3, _0801853C @ =0x00001BC6
	adds r0, r0, r3
	movs r1, #0xc0
	strh r1, [r0]
_080184A4:
	ldr r4, _08018538 @ =gUnk_0200283C
	ldr r3, [r4]
	ldr r5, _08018540 @ =0x00001B74
	adds r1, r3, r5
	ldr r0, _08018544 @ =gUnk_02002830
	str r0, [r1]
	ldr r6, _08018548 @ =0x00000EE6
	adds r1, r3, r6
	ldrh r1, [r1]
	str r1, [r0]
	ldr r2, _0801854C @ =0x00000ED4
	adds r1, r3, r2
	ldr r1, [r1]
	adds r5, #0x5e
	adds r2, r3, r5
	adds r6, #0x12
	adds r3, r3, r6
	ldr r3, [r3]
	bl sub_08014D14
	ldr r1, [r4]
	movs r3, #0xdd
	lsls r3, r3, #5
	adds r1, r1, r3
	movs r2, #0
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _08018550 @ =0x00000EED
	adds r0, r0, r1
	movs r5, #1
	strb r5, [r0]
	ldr r0, [r4]
	subs r6, #0xa
	adds r1, r0, r6
	strb r2, [r1]
	ldr r1, _08018554 @ =0x00000EEF
	adds r0, r0, r1
	strb r2, [r0]
	ldr r0, [r4]
	subs r6, #4
	adds r0, r0, r6
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r4]
	ldr r1, _08018558 @ =0x00000EEB
	adds r0, r0, r1
	strb r2, [r0]
	ldr r1, [r4]
	adds r3, r1, r3
	ldrb r0, [r3]
	adds r0, #3
	ldr r2, _0801855C @ =0x00001B94
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r3, _08018560 @ =0x00001B95
	adds r0, r0, r3
	strb r5, [r0]
	ldr r0, [r4]
	ldr r5, _08018564 @ =0x00001BC4
	adds r0, r0, r5
	movs r1, #3
	strh r1, [r0]
	bl sub_080160E4
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018538: .4byte gUnk_0200283C
_0801853C: .4byte 0x00001BC6
_08018540: .4byte 0x00001B74
_08018544: .4byte gUnk_02002830
_08018548: .4byte 0x00000EE6
_0801854C: .4byte 0x00000ED4
_08018550: .4byte 0x00000EED
_08018554: .4byte 0x00000EEF
_08018558: .4byte 0x00000EEB
_0801855C: .4byte 0x00001B94
_08018560: .4byte 0x00001B95
_08018564: .4byte 0x00001BC4

	thumb_func_start sub_08018568
sub_08018568: @ 0x08018568
	push {r4, r5, r6, lr}
	bl sub_08019814
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08018578
	movs r0, #1
	b _080187F4
_08018578:
	ldr r0, _080185A0 @ =gUnk_0200283C
	ldr r2, [r0]
	ldr r3, _080185A4 @ =0x00001B98
	adds r1, r2, r3
	ldrb r1, [r1]
	adds r4, r0, #0
	cmp r1, #0
	beq _080185A8
	bl sub_08015188
	ldr r0, [r4]
	ldr r4, _080185A4 @ =0x00001B98
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801859A
	b _080187CE
_0801859A:
	movs r0, #2
	b _080187F4
	.align 2, 0
_080185A0: .4byte gUnk_0200283C
_080185A4: .4byte 0x00001B98
_080185A8:
	ldr r5, _080185C4 @ =0x00001B91
	adds r1, r2, r5
	ldrb r0, [r1]
	cmp r0, #0
	beq _080185C8
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080185BE
	b _080187F2
_080185BE:
	bl sub_08015C20
	b _080187F2
	.align 2, 0
_080185C4: .4byte 0x00001B91
_080185C8:
	ldr r0, _08018604 @ =0x00001B97
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08018610
	ldr r0, _08018608 @ =0x00001B86
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08018610
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080185EA
	movs r0, #0
	strb r0, [r3]
_080185EA:
	ldr r0, [r4]
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4]
	ldr r1, _0801860C @ =0x00001B90
	adds r0, r0, r1
	movs r1, #0x80
	strb r1, [r0]
	bl sub_08015C20
	b _080187F2
	.align 2, 0
_08018604: .4byte 0x00001B97
_08018608: .4byte 0x00001B86
_0801860C: .4byte 0x00001B90
_08018610:
	ldr r2, _0801865C @ =gUnk_03000820
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08018634
	ldr r0, [r4]
	ldr r2, _08018660 @ =0x00000EF8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x89
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08018634
	b _080187CE
_08018634:
	ldr r0, [r4]
	ldr r3, _08018664 @ =0x00001B99
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	ldr r1, [r4]
	ldr r5, _08018668 @ =0x00001B97
	adds r3, r1, r5
	ldrb r0, [r3]
	cmp r0, #0
	bne _08018670
	ldr r2, _0801866C @ =0x00001B86
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _08018670
	movs r0, #1
	strb r0, [r3]
	b _080187F2
	.align 2, 0
_0801865C: .4byte gUnk_03000820
_08018660: .4byte 0x00000EF8
_08018664: .4byte 0x00001B99
_08018668: .4byte 0x00001B97
_0801866C: .4byte 0x00001B86
_08018670:
	ldr r3, [r4]
	ldr r5, _080186B8 @ =0x00001B84
	adds r2, r3, r5
	ldrh r1, [r2]
	subs r5, #0x10
	adds r0, r3, r5
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	subs r0, #1
	cmp r1, r0
	bge _08018704
	ldr r1, _080186BC @ =0x00000EF8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080186C4
	adds r5, #0x48
	adds r0, r3, r5
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	adds r5, #2
	adds r0, r3, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r0]
	cmp r1, r0
	bls _080186C4
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r0, _080186C0 @ =0x00001B98
	adds r1, r3, r0
	b _080186F0
	.align 2, 0
_080186B8: .4byte 0x00001B84
_080186BC: .4byte 0x00000EF8
_080186C0: .4byte 0x00001B98
_080186C4:
	ldr r3, [r4]
	ldr r1, _080186F8 @ =0x00000EF8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080186D8
	b _080187F2
_080186D8:
	ldrh r1, [r6, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080187CE
	ldr r2, _080186FC @ =0x00001B84
	adds r1, r3, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r4, _08018700 @ =0x00001B98
	adds r1, r3, r4
_080186F0:
	movs r0, #1
	strb r0, [r1]
	b _080187CE
	.align 2, 0
_080186F8: .4byte 0x00000EF8
_080186FC: .4byte 0x00001B84
_08018700: .4byte 0x00001B98
_08018704:
	ldr r5, _08018724 @ =0x00001BA4
	adds r2, r3, r5
	ldrb r0, [r2]
	cmp r0, #6
	bne _080187C8
	ldr r1, _08018728 @ =0x00000EFC
	adds r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #1
	beq _080187F2
	cmp r0, #0xff
	bne _0801872C
	movs r0, #0xb
	strb r0, [r2]
	b _080187F2
	.align 2, 0
_08018724: .4byte 0x00001BA4
_08018728: .4byte 0x00000EFC
_0801872C:
	ldr r1, _08018748 @ =0x00001BA7
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801874C
	bl sub_08016318
	ldr r0, [r4]
	adds r0, r0, r5
	movs r1, #9
	strb r1, [r0]
	b _080187F2
	.align 2, 0
_08018748: .4byte 0x00001BA7
_0801874C:
	ldr r5, _080187B4 @ =0x00000EF8
	adds r0, r3, r5
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08018776
	ldr r1, _080187B8 @ =0x00001BBC
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	ldr r5, _080187BC @ =0x00001BBE
	adds r0, r3, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r0]
	cmp r1, r0
	bls _08018776
	movs r0, #0xb
	strb r0, [r2]
_08018776:
	ldr r3, [r4]
	ldr r1, _080187B4 @ =0x00000EF8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080187F2
	ldrh r1, [r6, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080187CE
	ldr r2, _080187C0 @ =0x00001BC1
	adds r0, r3, r2
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #4
	bne _080187A6
	movs r0, #0xb0
	bl PlaySE
_080187A6:
	ldr r0, [r4]
	ldr r3, _080187C4 @ =0x00001BA4
	adds r0, r0, r3
	movs r1, #0xb
	strb r1, [r0]
	b _080187F2
	.align 2, 0
_080187B4: .4byte 0x00000EF8
_080187B8: .4byte 0x00001BBC
_080187BC: .4byte 0x00001BBE
_080187C0: .4byte 0x00001BC1
_080187C4: .4byte 0x00001BA4
_080187C8:
	movs r0, #9
	strb r0, [r2]
	b _080187F2
_080187CE:
	ldr r0, _080187FC @ =gUnk_0200283C
	ldr r0, [r0]
	ldr r4, _08018800 @ =0x00001B99
	adds r3, r0, r4
	ldrb r2, [r3]
	ldr r5, _08018804 @ =0x00001B84
	adds r1, r0, r5
	ldrh r1, [r1]
	subs r4, #0x25
	adds r0, r0, r4
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	subs r0, #1
	cmp r1, r0
	bge _080187F0
	movs r0, #4
	orrs r2, r0
_080187F0:
	strb r2, [r3]
_080187F2:
	movs r0, #0
_080187F4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080187FC: .4byte gUnk_0200283C
_08018800: .4byte 0x00001B99
_08018804: .4byte 0x00001B84

	thumb_func_start sub_08018808
sub_08018808: @ 0x08018808
	push {r4, lr}
	ldr r2, _08018830 @ =gUnk_03000820
	ldrh r1, [r2, #4]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _0801883C
	movs r0, #0xb2
	bl PlaySE
	ldr r0, _08018834 @ =gUnk_0200283C
	ldr r1, [r0]
	ldr r0, _08018838 @ =0x00001BA6
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	eors r0, r2
	strb r0, [r1]
	movs r0, #0
	b _080188BC
	.align 2, 0
_08018830: .4byte gUnk_03000820
_08018834: .4byte gUnk_0200283C
_08018838: .4byte 0x00001BA6
_0801883C:
	ldr r4, _0801887C @ =gUnk_0200283C
	ldr r0, [r4]
	ldr r1, _08018880 @ =0x00001B74
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r0, #9]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801888C
	ldrh r1, [r2, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801888C
	movs r0, #0xb0
	bl PlaySE
	ldr r0, [r4]
	ldr r1, _08018884 @ =0x00001BA6
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r1, [r4]
	ldr r0, _08018888 @ =0x00001B99
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0xf7
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r4]
	b _080188B2
	.align 2, 0
_0801887C: .4byte gUnk_0200283C
_08018880: .4byte 0x00001B74
_08018884: .4byte 0x00001BA6
_08018888: .4byte 0x00001B99
_0801888C:
	ldrh r1, [r2, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801889A
	movs r0, #0
	b _080188BC
_0801889A:
	movs r0, #0xad
	bl PlaySE
	ldr r3, _080188C4 @ =gUnk_0200283C
	ldr r1, [r3]
	ldr r0, _080188C8 @ =0x00001B99
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0xf7
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r3]
_080188B2:
	ldr r1, _080188CC @ =0x00001BA4
	adds r0, r0, r1
	movs r1, #0xb
	strb r1, [r0]
	movs r0, #0xff
_080188BC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080188C4: .4byte gUnk_0200283C
_080188C8: .4byte 0x00001B99
_080188CC: .4byte 0x00001BA4

	thumb_func_start sub_080188D0
sub_080188D0: @ 0x080188D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	ldr r1, _08018A54 @ =gUnk_0815DE20
	add r0, sp, #0x1c
	movs r2, #0x10
	bl memcpy
	add r5, sp, #0x2c
	ldr r1, _08018A58 @ =gUnk_0815DE30
	adds r0, r5, #0
	movs r2, #0x10
	bl memcpy
	add r4, sp, #0x3c
	ldr r1, _08018A5C @ =gUnk_0815DE40
	adds r0, r4, #0
	movs r2, #8
	bl memcpy
	ldr r0, _08018A60 @ =gUnk_0200283C
	ldr r6, [r0]
	ldr r1, _08018A64 @ =0x00000EF8
	adds r0, r6, r1
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08018912
	b _08018AA4
_08018912:
	add r2, sp, #0x44
	ldr r3, _08018A68 @ =0x00001B93
	adds r5, r6, r3
	ldr r4, _08018A6C @ =0x00001B94
	adds r3, r6, r4
	ldrb r0, [r3]
	ldrb r1, [r5]
	adds r0, r0, r1
	adds r0, #1
	strb r0, [r2]
	add r1, sp, #0x48
	ldr r0, _08018A70 @ =0x00001B92
	adds r4, r6, r0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r3]
	ldrb r5, [r5]
	adds r0, r0, r5
	adds r0, #1
	strb r0, [r2, #1]
	ldr r3, _08018A74 @ =0x00001B96
	adds r0, r6, r3
	ldrb r0, [r0]
	ldrb r4, [r4]
	adds r0, r0, r4
	strb r0, [r1, #1]
	movs r6, #0
	mov sl, r1
	movs r7, #0
_0801894E:
	ldr r4, _08018A60 @ =gUnk_0200283C
	mov r8, r4
	ldr r4, [r4]
	ldr r5, _08018A78 @ =0x00001B99
	adds r0, r4, r5
	ldrb r0, [r0]
	asrs r0, r6
	movs r1, #1
	mov sb, r1
	ands r0, r1
	cmp r0, #0
	beq _080189A4
	lsls r0, r6, #3
	add r0, sp
	adds r0, #0x1c
	mov r1, sp
	adds r1, r1, r6
	adds r1, #0x44
	ldrb r1, [r1]
	lsls r1, r1, #3
	mov r3, sl
	adds r2, r3, r6
	ldrb r2, [r2]
	lsls r2, r2, #3
	ldr r5, _08018A7C @ =0x00000EEC
	adds r3, r4, r5
	ldrb r3, [r3]
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	adds r5, #0x14
	adds r4, r4, r5
	ldrh r4, [r4]
	str r4, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r4, _08018A80 @ =gUnk_086D7BF0
	ldrb r5, [r4, #0x11]
	movs r4, #0xf
	ands r4, r5
	str r4, [sp, #0x18]
	bl sub_080020C8
_080189A4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0801894E
	mov r6, r8
	ldr r4, [r6]
	ldr r1, _08018A78 @ =0x00001B99
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08018AA4
	ldr r2, _08018A64 @ =0x00000EF8
	adds r0, r4, r2
	ldr r6, [r0]
	movs r0, #0x40
	ands r6, r0
	cmp r6, #0
	bne _08018AA4
	movs r5, #0
	ldr r3, _08018A84 @ =0x00001BA1
	adds r0, r4, r3
	ldrb r0, [r0]
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bls _080189E6
	movs r5, #1
_080189E6:
	lsls r7, r5, #2
	lsls r0, r5, #3
	add r0, sp
	adds r0, #0x2c
	mov r8, r0
	ldr r5, _08018A68 @ =0x00001B93
	adds r0, r4, r5
	ldrb r0, [r0]
	ldr r2, _08018A6C @ =0x00001B94
	adds r1, r4, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	subs r0, #1
	lsls r1, r0, #3
	adds r2, r1, #2
	ldr r3, _08018A88 @ =0x00001BAC
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #2
	bne _08018A10
	subs r2, #0x2c
_08018A10:
	ldr r5, _08018A70 @ =0x00001B92
	adds r0, r4, r5
	ldrb r0, [r0]
	ldr r3, _08018A74 @ =0x00001B96
	adds r1, r4, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	subs r0, #1
	lsls r5, r0, #3
	ldr r1, _08018A7C @ =0x00000EEC
	adds r0, r4, r1
	ldrb r3, [r0]
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	adds r1, #0x14
	adds r0, r4, r1
	ldrh r0, [r0]
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	adds r0, r7, #0
	mov r4, sb
	ands r0, r4
	cmp r0, #0
	beq _08018A8C
	ldr r1, _08018A80 @ =gUnk_086D7BF0
	asrs r0, r7, #1
	adds r0, #4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	b _08018A98
	.align 2, 0
_08018A54: .4byte gUnk_0815DE20
_08018A58: .4byte gUnk_0815DE30
_08018A5C: .4byte gUnk_0815DE40
_08018A60: .4byte gUnk_0200283C
_08018A64: .4byte 0x00000EF8
_08018A68: .4byte 0x00001B93
_08018A6C: .4byte 0x00001B94
_08018A70: .4byte 0x00001B92
_08018A74: .4byte 0x00001B96
_08018A78: .4byte 0x00001B99
_08018A7C: .4byte 0x00000EEC
_08018A80: .4byte gUnk_086D7BF0
_08018A84: .4byte 0x00001BA1
_08018A88: .4byte 0x00001BAC
_08018A8C:
	ldr r0, _08018AF8 @ =gUnk_086D7BF0
	asrs r1, r7, #1
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	lsrs r0, r0, #4
_08018A98:
	str r0, [sp, #0x18]
	mov r0, r8
	adds r1, r2, #0
	adds r2, r5, #0
	bl sub_080020C8
_08018AA4:
	ldr r2, _08018AFC @ =gUnk_0200283C
	ldr r4, [r2]
	ldr r5, _08018B00 @ =0x00001B99
	adds r0, r4, r5
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _08018ABA
	b _08018D30
_08018ABA:
	ldr r6, _08018B04 @ =0x00001BA1
	adds r0, r4, r6
	ldrb r0, [r0]
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _08018AE0
	movs r0, #8
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08018AE0:
	ldr r1, _08018B08 @ =0x00001B74
	adds r0, r4, r1
	ldr r0, [r0]
	ldrb r2, [r0, #7]
	movs r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _08018B0C
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1e
	b _08018B0E
	.align 2, 0
_08018AF8: .4byte gUnk_086D7BF0
_08018AFC: .4byte gUnk_0200283C
_08018B00: .4byte 0x00001B99
_08018B04: .4byte 0x00001BA1
_08018B08: .4byte 0x00001B74
_08018B0C:
	movs r0, #1
_08018B0E:
	adds r6, r0, #0
	ldr r2, [r5]
	ldr r4, _08018B44 @ =0x00001BC1
	adds r0, r2, r4
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08018B32
	ldr r1, _08018B48 @ =0x00001B74
	adds r0, r2, r1
	ldr r0, [r0]
	ldrb r1, [r0, #9]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08018B32
	movs r6, #4
_08018B32:
	cmp r6, #4
	bls _08018B38
	b _08018D30
_08018B38:
	lsls r0, r6, #2
	ldr r1, _08018B4C @ =_08018B50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08018B44: .4byte 0x00001BC1
_08018B48: .4byte 0x00001B74
_08018B4C: .4byte _08018B50
_08018B50: @ jump table
	.4byte _08018D30 @ case 0
	.4byte _08018B64 @ case 1
	.4byte _08018BC8 @ case 2
	.4byte _08018C30 @ case 3
	.4byte _08018CC8 @ case 4
_08018B64:
	ldr r5, [r5]
	ldr r2, _08018BB8 @ =0x00000EF8
	adds r0, r5, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #0x1f
	movs r1, #8
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0x50
	ldr r3, _08018BBC @ =0x00001BA6
	adds r2, r5, r3
	ldrb r2, [r2]
	lsls r2, r2, #4
	subs r0, #0x66
	subs r2, r2, r0
	ldr r4, _08018BC0 @ =0x00000EEC
	adds r0, r5, r4
	ldrb r3, [r0]
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	movs r6, #0xf0
	lsls r6, r6, #4
	adds r5, r5, r6
	ldrh r0, [r5]
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r0, _08018BC4 @ =gUnk_086D7BF0
	ldrb r0, [r0, #0x10]
	lsrs r0, r0, #4
	str r0, [sp, #0x18]
	add r0, sp, #0x3c
	bl sub_080020C8
	b _08018D30
	.align 2, 0
_08018BB8: .4byte 0x00000EF8
_08018BBC: .4byte 0x00001BA6
_08018BC0: .4byte 0x00000EEC
_08018BC4: .4byte gUnk_086D7BF0
_08018BC8:
	ldr r5, [r5]
	ldr r1, _08018C1C @ =0x00001B93
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #3
	adds r4, r3, r0
	ldr r2, _08018C20 @ =0x00001BAC
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _08018BE2
	subs r4, #0x28
_08018BE2:
	ldr r3, _08018C24 @ =0x00001BA6
	adds r0, r5, r3
	ldrb r2, [r0]
	lsls r2, r2, #4
	ldr r6, _08018C28 @ =0x00001B92
	adds r0, r5, r6
	ldrb r1, [r0]
	subs r3, #0x32
	adds r0, r5, r3
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #6
	adds r2, r2, r1
	ldr r6, _08018C2C @ =0x00000EEC
	adds r0, r5, r6
	ldrb r3, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	adds r6, #0x14
	b _08018C90
	.align 2, 0
_08018C1C: .4byte 0x00001B93
_08018C20: .4byte 0x00001BAC
_08018C24: .4byte 0x00001BA6
_08018C28: .4byte 0x00001B92
_08018C2C: .4byte 0x00000EEC
_08018C30:
	ldr r5, [r5]
	ldr r1, _08018CAC @ =0x00001BAC
	adds r0, r5, r1
	ldrb r6, [r0]
	movs r1, #1
	cmp r6, #0
	beq _08018C40
	movs r1, #6
_08018C40:
	ldr r2, _08018CB0 @ =0x00001B93
	adds r0, r5, r2
	ldrb r0, [r0]
	adds r0, r0, r1
	ldr r4, _08018CB4 @ =0x00001BA6
	adds r1, r5, r4
	ldrb r2, [r1]
	adds r4, #0x7a
	adds r1, r5, r4
	ldrb r1, [r1]
	muls r1, r2, r1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r4, r3, r0
	cmp r6, #2
	bne _08018C62
	subs r4, #0x30
_08018C62:
	ldr r6, _08018CB8 @ =0x00001B92
	adds r0, r5, r6
	ldrb r2, [r0]
	ldr r1, _08018CBC @ =0x00001B74
	adds r0, r5, r1
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	adds r2, #6
	ldr r3, _08018CC0 @ =0x00000EEC
	adds r0, r5, r3
	ldrb r3, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	movs r6, #0xf0
	lsls r6, r6, #4
_08018C90:
	adds r0, r5, r6
	ldrh r0, [r0]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, _08018CC4 @ =gUnk_086D7BF0
	ldrb r0, [r0, #0x10]
	lsrs r0, r0, #4
	str r0, [sp, #0x18]
	add r0, sp, #0x3c
	adds r1, r4, #0
	bl sub_080020C8
	b _08018D30
	.align 2, 0
_08018CAC: .4byte 0x00001BAC
_08018CB0: .4byte 0x00001B93
_08018CB4: .4byte 0x00001BA6
_08018CB8: .4byte 0x00001B92
_08018CBC: .4byte 0x00001B74
_08018CC0: .4byte 0x00000EEC
_08018CC4: .4byte gUnk_086D7BF0
_08018CC8:
	ldr r5, [r5]
	ldr r1, _08018D40 @ =0x00001B93
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r0, #6
	lsls r0, r0, #3
	adds r4, r3, r0
	ldr r2, _08018D44 @ =0x00001BAC
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _08018CE2
	subs r4, #0x28
_08018CE2:
	ldr r3, _08018D48 @ =0x00001BA6
	adds r0, r5, r3
	ldrb r2, [r0]
	lsls r2, r2, #4
	ldr r6, _08018D4C @ =0x00001B92
	adds r0, r5, r6
	ldrb r1, [r0]
	subs r3, #0x32
	adds r0, r5, r3
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x16
	adds r2, r2, r1
	ldr r6, _08018D50 @ =0x00000EEC
	adds r0, r5, r6
	ldrb r3, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	adds r6, #0x14
	adds r0, r5, r6
	ldrh r0, [r0]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, _08018D54 @ =gUnk_086D7BF0
	ldrb r0, [r0, #0x10]
	lsrs r0, r0, #4
	str r0, [sp, #0x18]
	add r0, sp, #0x3c
	adds r1, r4, #0
	bl sub_080020C8
_08018D30:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018D40: .4byte 0x00001B93
_08018D44: .4byte 0x00001BAC
_08018D48: .4byte 0x00001BA6
_08018D4C: .4byte 0x00001B92
_08018D50: .4byte 0x00000EEC
_08018D54: .4byte gUnk_086D7BF0

	thumb_func_start sub_08018D58
sub_08018D58: @ 0x08018D58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	ldr r1, _08018DA4 @ =gUnk_0815DE48
	add r0, sp, #0x1c
	movs r2, #8
	bl memcpy
	add r4, sp, #0x24
	ldr r1, _08018DA8 @ =gUnk_0815DE50
	adds r0, r4, #0
	movs r2, #0x1a
	bl memcpy
	ldr r3, _08018DAC @ =gUnk_0200283C
	ldr r2, [r3]
	ldr r1, _08018DB0 @ =0x00001BC1
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08018D8E
	b _08018EA8
_08018D8E:
	ldr r3, _08018DB4 @ =0x00001BC2
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #5
	bls _08018D9A
	b _08018F5A
_08018D9A:
	lsls r0, r0, #2
	ldr r1, _08018DB8 @ =_08018DBC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08018DA4: .4byte gUnk_0815DE48
_08018DA8: .4byte gUnk_0815DE50
_08018DAC: .4byte gUnk_0200283C
_08018DB0: .4byte 0x00001BC1
_08018DB4: .4byte 0x00001BC2
_08018DB8: .4byte _08018DBC
_08018DBC: @ jump table
	.4byte _08018DD4 @ case 0
	.4byte _08018F5A @ case 1
	.4byte _08018DD4 @ case 2
	.4byte _08018DD4 @ case 3
	.4byte _08018E44 @ case 4
	.4byte _08018DD4 @ case 5
_08018DD4:
	add r6, sp, #0x1c
	ldr r0, _08018E28 @ =gUnk_0200283C
	ldr r2, [r0]
	ldr r5, _08018E2C @ =0x00001B93
	adds r0, r2, r5
	ldrb r0, [r0]
	adds r0, #1
	lsls r5, r0, #3
	ldr r1, _08018E30 @ =0x00001B92
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r0, #1
	lsls r4, r0, #3
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r3, _08018E34 @ =0x00001BAE
	adds r0, r2, r3
	ldrh r0, [r0]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r1, _08018E38 @ =0x00001BCF
	adds r0, r2, r1
	ldrb r3, [r0]
	ldr r0, _08018E3C @ =0x00001BC6
	adds r2, r2, r0
	ldrh r2, [r2]
	ldr r0, _08018E40 @ =gUnk_08724208
	lsls r1, r2, #1
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	lsrs r0, r0, #4
	adds r0, r3, r0
	str r0, [sp, #0x18]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	b _08018E88
	.align 2, 0
_08018E28: .4byte gUnk_0200283C
_08018E2C: .4byte 0x00001B93
_08018E30: .4byte 0x00001B92
_08018E34: .4byte 0x00001BAE
_08018E38: .4byte 0x00001BCF
_08018E3C: .4byte 0x00001BC6
_08018E40: .4byte gUnk_08724208
_08018E44:
	ldr r0, _08018E90 @ =gUnk_0200283C
	ldr r4, [r0]
	ldr r1, _08018E94 @ =0x00001B93
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r1, #1
	lsls r1, r1, #3
	ldr r2, _08018E98 @ =0x00001B92
	adds r0, r4, r2
	ldrb r2, [r0]
	adds r2, #1
	lsls r2, r2, #3
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	ldr r5, _08018E9C @ =0x00001BAE
	adds r0, r4, r5
	ldrh r0, [r0]
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r0, _08018EA0 @ =0x00001BCF
	adds r4, r4, r0
	ldr r0, _08018EA4 @ =gUnk_08724208
	movs r3, #0xce
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ldrb r4, [r4]
	adds r0, r0, r4
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
_08018E88:
	movs r3, #0
	bl sub_080020C8
	b _08018F5A
	.align 2, 0
_08018E90: .4byte gUnk_0200283C
_08018E94: .4byte 0x00001B93
_08018E98: .4byte 0x00001B92
_08018E9C: .4byte 0x00001BAE
_08018EA0: .4byte 0x00001BCF
_08018EA4: .4byte gUnk_08724208
_08018EA8:
	ldr r5, _08018EF0 @ =0x00001BAC
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018F5A
	ldr r1, _08018EF4 @ =0x00000EF8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	movs r2, #8
	mov r8, r2
	cmp r0, #0
	beq _08018ECA
	movs r5, #0xd
	mov r8, r5
_08018ECA:
	movs r6, #0
	movs r7, #0x1e
	mov sl, r4
	mov sb, r3
	movs r5, #0
_08018ED4:
	ldr r0, _08018EF8 @ =gUnk_0200283C
	ldr r2, [r0]
	ldr r1, _08018EF0 @ =0x00001BAC
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08018F00
	ldr r3, _08018EFC @ =0x00001B93
	adds r0, r2, r3
	ldrb r0, [r0]
	adds r0, #1
	lsls r4, r0, #3
	b _08018F12
	.align 2, 0
_08018EF0: .4byte 0x00001BAC
_08018EF4: .4byte 0x00000EF8
_08018EF8: .4byte gUnk_0200283C
_08018EFC: .4byte 0x00001B93
_08018F00:
	ldr r1, _08018F6C @ =0x00001B93
	adds r0, r2, r1
	ldrb r1, [r0]
	ldr r3, _08018F70 @ =0x00001B94
	adds r0, r2, r3
	ldrb r0, [r0]
	adds r1, r1, r0
	subs r1, #4
	lsls r4, r1, #3
_08018F12:
	mov r0, sb
	ldr r1, [r0]
	ldr r2, _08018F74 @ =0x00001B92
	adds r0, r1, r2
	ldrb r2, [r0]
	adds r2, #1
	lsls r2, r2, #3
	ldr r3, _08018F78 @ =0x00000EEC
	adds r0, r1, r3
	ldrb r3, [r0]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, _08018F7C @ =0x00001BAE
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, r0, r7
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	mov r1, r8
	subs r0, r1, r6
	str r0, [sp, #0x18]
	mov r0, sl
	adds r1, r4, #0
	bl sub_080020C8
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	subs r0, #0x1e
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r6, #1
	bls _08018ED4
_08018F5A:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018F6C: .4byte 0x00001B93
_08018F70: .4byte 0x00001B94
_08018F74: .4byte 0x00001B92
_08018F78: .4byte 0x00000EEC
_08018F7C: .4byte 0x00001BAE

	thumb_func_start sub_08018F80
sub_08018F80: @ 0x08018F80
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0
	bne _08018FA2
	movs r1, #0
	movs r2, #0
_08018F90:
	lsls r0, r1, #1
	adds r0, r0, r5
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _08018F90
	b _08019082
_08018FA2:
	cmp r1, #0xff
	bne _08018FAA
	movs r4, #0x9a
	b _0801900A
_08018FAA:
	ldr r0, _08018FC4 @ =gUnk_0861A8F0
	lsls r1, r1, #6
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	subs r0, #1
	cmp r0, #7
	bhi _08019008
	lsls r0, r0, #2
	ldr r1, _08018FC8 @ =_08018FCC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08018FC4: .4byte gUnk_0861A8F0
_08018FC8: .4byte _08018FCC
_08018FCC: @ jump table
	.4byte _08018FEC @ case 0
	.4byte _08018FF0 @ case 1
	.4byte _08018FF4 @ case 2
	.4byte _08018FF8 @ case 3
	.4byte _08018FFC @ case 4
	.4byte _08019000 @ case 5
	.4byte _08019008 @ case 6
	.4byte _08019004 @ case 7
_08018FEC:
	movs r4, #0x7a
	b _0801900A
_08018FF0:
	movs r4, #0x7e
	b _0801900A
_08018FF4:
	movs r4, #0x82
	b _0801900A
_08018FF8:
	movs r4, #0x86
	b _0801900A
_08018FFC:
	movs r4, #0x8a
	b _0801900A
_08019000:
	movs r4, #0x8e
	b _0801900A
_08019004:
	movs r4, #0x92
	b _0801900A
_08019008:
	movs r4, #0x96
_0801900A:
	ldr r1, _08019034 @ =gUnk_086B7530
	lsrs r0, r4, #1
	adds r0, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	adds r0, r4, r0
	strh r0, [r5]
	adds r2, r1, #0
	adds r3, r4, #1
	movs r0, #1
	cmp r0, #0
	beq _08019038
	asrs r0, r3, #1
	adds r0, #4
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	b _08019042
	.align 2, 0
_08019034: .4byte gUnk_086B7530
_08019038:
	asrs r0, r3, #1
	adds r0, #4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #4
_08019042:
	lsls r0, r0, #0xc
	adds r0, r3, r0
	strh r0, [r5, #2]
	adds r3, r4, #2
	asrs r0, r3, #1
	adds r0, #4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	adds r0, r3, r0
	strh r0, [r5, #4]
	adds r3, r4, #3
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _08019072
	asrs r0, r3, #1
	adds r0, #4
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	b _0801907C
_08019072:
	asrs r0, r3, #1
	adds r0, #4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #4
_0801907C:
	lsls r0, r0, #0xc
	adds r0, r3, r0
	strh r0, [r5, #6]
_08019082:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08019088
sub_08019088: @ 0x08019088
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r3, _080190E0 @ =gUnk_0200283C
	ldr r1, [r3]
	ldr r2, _080190E4 @ =0x00001BB9
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r3]
	ldr r1, _080190E8 @ =0x00001BB8
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r4, [r3]
	adds r2, r4, r2
	ldrb r0, [r2]
	cmp r0, #0
	bne _080190F8
	ldr r2, _080190EC @ =gUnk_03000DD0
	adds r0, r2, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	ldr r6, _080190F0 @ =0x00001BB1
	adds r0, r4, r6
	strb r1, [r0]
	ldr r0, [r3]
	adds r1, r2, #0
	adds r1, #0x3b
	ldrb r1, [r1]
	ldr r4, _080190F4 @ =0x00001BB0
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r3]
	adds r1, r2, #0
	adds r1, #0x3e
	ldrb r1, [r1]
	adds r6, #2
	adds r0, r0, r6
	strb r1, [r0]
	ldr r0, [r3]
	adds r1, r2, #0
	adds r1, #0x3f
	b _08019128
	.align 2, 0
_080190E0: .4byte gUnk_0200283C
_080190E4: .4byte 0x00001BB9
_080190E8: .4byte 0x00001BB8
_080190EC: .4byte gUnk_03000DD0
_080190F0: .4byte 0x00001BB1
_080190F4: .4byte 0x00001BB0
_080190F8:
	ldr r2, _08019174 @ =gUnk_03000DD0
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	ldr r6, _08019178 @ =0x00001BB1
	adds r0, r4, r6
	strb r1, [r0]
	ldr r0, [r3]
	adds r1, r2, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	ldr r4, _0801917C @ =0x00001BB0
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r3]
	adds r1, r2, #0
	adds r1, #0x40
	ldrb r1, [r1]
	adds r6, #2
	adds r0, r0, r6
	strb r1, [r0]
	ldr r0, [r3]
	adds r1, r2, #0
	adds r1, #0x41
_08019128:
	ldrb r1, [r1]
	adds r4, #2
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r3]
	adds r1, r2, #0
	adds r1, #0x42
	ldrb r1, [r1]
	ldr r6, _08019180 @ =0x00001BB4
	adds r0, r0, r6
	strb r1, [r0]
	ldr r0, [r3]
	adds r1, r2, #0
	adds r1, #0x43
	ldrb r1, [r1]
	ldr r4, _08019184 @ =0x00001BB5
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r3]
	adds r6, #7
	adds r0, r0, r6
	strb r5, [r0]
	ldr r0, [r3]
	adds r1, r2, #0
	adds r1, #0x44
	ldrb r1, [r1]
	adds r4, #5
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r3]
	ldrh r1, [r2]
	subs r6, #5
	adds r0, r0, r6
	strh r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019174: .4byte gUnk_03000DD0
_08019178: .4byte 0x00001BB1
_0801917C: .4byte 0x00001BB0
_08019180: .4byte 0x00001BB4
_08019184: .4byte 0x00001BB5

	thumb_func_start sub_08019188
sub_08019188: @ 0x08019188
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _080191B8 @ =gUnk_0200283C
	ldr r1, [r4]
	movs r0, #0xef
	lsls r0, r0, #4
	mov ip, r0
	adds r0, r1, r0
	ldrb r5, [r0]
	cmp r5, #1
	bne _0801924C
	ldr r2, _080191BC @ =0x00000EF2
	mov sb, r2
	adds r0, r1, r2
	ldrb r2, [r0]
	cmp r2, #2
	bne _080191C0
	strb r5, [r0]
	ldr r0, [r4]
	add r0, ip
	strb r2, [r0]
	b _0801924C
	.align 2, 0
_080191B8: .4byte gUnk_0200283C
_080191BC: .4byte 0x00000EF2
_080191C0:
	ldr r6, _080191FC @ =0x00001B84
	adds r2, r1, r6
	ldr r7, _08019200 @ =0x00001B74
	adds r0, r1, r7
	ldr r0, [r0]
	ldrh r1, [r2]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bhs _080191D6
	adds r0, r1, #1
	strh r0, [r2]
_080191D6:
	ldr r0, [r4]
	add r0, ip
	movs r3, #2
	mov r8, r3
	mov r1, r8
	strb r1, [r0]
	ldr r3, [r4]
	adds r2, r3, r6
	adds r0, r3, r7
	ldr r1, [r0]
	ldrh r0, [r2]
	ldrb r1, [r1, #5]
	cmp r0, r1
	bne _08019208
	ldr r2, _08019204 @ =0x00001BA4
	adds r1, r3, r2
	movs r0, #0xb
	strb r0, [r1]
	b _0801924C
	.align 2, 0
_080191FC: .4byte 0x00001B84
_08019200: .4byte 0x00001B74
_08019204: .4byte 0x00001BA4
_08019208:
	ldr r1, _08019258 @ =0x00001B98
	adds r0, r3, r1
	strb r5, [r0]
	ldr r1, [r4]
	adds r0, r1, r6
	ldrh r2, [r0]
	ldr r3, _0801925C @ =0x00000EED
	adds r0, r1, r3
	ldrb r0, [r0]
	muls r0, r2, r0
	ldr r2, _08019260 @ =0x00001BCE
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	mov r3, sb
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801924C
	mov r0, r8
	strb r0, [r1]
	ldr r0, [r4]
	add r0, ip
	strb r5, [r0]
	ldr r0, [r4]
	ldr r1, _08019264 @ =0x00001BA4
	adds r0, r0, r1
	movs r1, #0xe
	strb r1, [r0]
	ldr r0, [r4]
	subs r2, #0x29
	adds r0, r0, r2
	movs r1, #6
	strb r1, [r0]
_0801924C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019258: .4byte 0x00001B98
_0801925C: .4byte 0x00000EED
_08019260: .4byte 0x00001BCE
_08019264: .4byte 0x00001BA4

	thumb_func_start sub_08019268
sub_08019268: @ 0x08019268
	ldr r0, _08019294 @ =gUnk_02028E20
	ldr r1, _08019298 @ =gUnk_0200283C
	ldr r2, [r1]
	ldr r3, _0801929C @ =0x00001B93
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	subs r3, #1
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0, #1]
	adds r3, #2
	adds r1, r2, r3
	ldrb r1, [r1]
	adds r1, #2
	strb r1, [r0, #2]
	ldr r1, _080192A0 @ =0x00001B96
	adds r2, r2, r1
	ldrb r1, [r2]
	adds r1, #2
	strb r1, [r0, #3]
	bx lr
	.align 2, 0
_08019294: .4byte gUnk_02028E20
_08019298: .4byte gUnk_0200283C
_0801929C: .4byte 0x00001B93
_080192A0: .4byte 0x00001B96

	thumb_func_start sub_080192A4
sub_080192A4: @ 0x080192A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r1
	str r2, [sp]
	ldr r4, [sp, #0x30]
	ldr r5, [sp, #0x34]
	ldr r6, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #4]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	str r6, [sp, #0xc]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r7, _0801942C @ =gUnk_0200283C
	str r0, [r7]
	ldr r1, _08019430 @ =0x00001C24
	str r2, [sp, #8]
	bl memzero
	ldr r1, [r7]
	ldr r3, _08019434 @ =0x00000EE4
	adds r0, r1, r3
	movs r6, #0
	mov sl, r6
	mov r3, r8
	strh r3, [r0]
	ldr r6, _08019438 @ =0x00000ED4
	adds r0, r1, r6
	ldr r3, [sp]
	str r3, [r0]
	adds r6, #0x12
	adds r0, r1, r6
	mov r3, sp
	ldrh r3, [r3, #4]
	strh r3, [r0]
	adds r6, #2
	adds r1, r1, r6
	strb r4, [r1]
	ldr r0, [r7]
	ldr r1, _0801943C @ =0x00000EE9
	adds r0, r0, r1
	strb r5, [r0]
	ldr r0, [r7]
	ldr r3, _08019440 @ =0x00000EF3
	adds r0, r0, r3
	mov r6, sp
	ldrb r6, [r6, #0xc]
	strb r6, [r0]
	ldr r0, [r7]
	ldr r6, _08019444 @ =0x00000EF8
	adds r1, r0, r6
	ldr r3, _08019448 @ =0x00000442
	str r3, [r1]
	ldr r2, [sp, #8]
	cmp r2, #1
	bne _08019338
	movs r0, #0x20
	orrs r0, r3
	str r0, [r1]
_08019338:
	ldr r0, [r7]
	ldr r1, _0801944C @ =0x00000EF2
	adds r0, r0, r1
	movs r4, #1
	strb r4, [r0]
	ldr r0, [r7]
	ldr r2, _08019450 @ =0x00000EEE
	adds r1, r0, r2
	mov r3, sb
	strb r3, [r1]
	ldr r1, _08019454 @ =0x00000EEF
	adds r0, r0, r1
	strb r3, [r0]
	ldr r1, [r7]
	ldr r3, _08019458 @ =0x00000ED8
	adds r2, r1, r3
	ldr r0, _0801945C @ =gUnk_03000E20
	ldr r0, [r0, #0x14]
	str r0, [r2]
	ldr r0, _08019460 @ =0x00000EDC
	adds r2, r1, r0
	ldr r3, _08019464 @ =gUnk_03000D60
	ldr r0, [r3, #0x14]
	str r0, [r2]
	movs r0, #0xee
	lsls r0, r0, #4
	adds r2, r1, r0
	ldr r0, [r3, #0x10]
	str r0, [r2]
	ldr r2, _08019468 @ =0x00000EF1
	adds r1, r1, r2
	mov r3, sl
	strb r3, [r1]
	ldr r0, [r7]
	movs r1, #0xef
	lsls r1, r1, #4
	adds r0, r0, r1
	strb r3, [r0]
	ldr r0, [r7]
	ldr r3, _0801946C @ =0x00001BBE
	adds r2, r0, r3
	movs r1, #0xf0
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _08019470 @ =0x00001BD0
	adds r0, r0, r1
	strb r4, [r0]
	ldr r1, [r7]
	ldr r5, _08019474 @ =0x00001B74
	adds r0, r1, r5
	ldr r4, _08019478 @ =gUnk_02002830
	str r4, [r0]
	ldr r2, [sp, #4]
	lsls r0, r2, #1
	str r0, [r4]
	adds r3, #0x14
	adds r2, r1, r3
	adds r1, r1, r6
	ldr r3, [r1]
	adds r0, r4, #0
	ldr r1, [sp]
	bl sub_08014D14
	ldr r1, [r7]
	movs r3, #0xdd
	lsls r3, r3, #5
	adds r1, r1, r3
	strb r0, [r1]
	ldr r1, [r7]
	ldrb r0, [r4, #7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	ldr r2, _0801947C @ =0x00000EED
	adds r1, r1, r2
	strb r0, [r1]
	ldr r1, [r7]
	adds r0, r1, r5
	ldr r0, [r0]
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r7]
	ldr r6, _08019480 @ =0x00000EEA
	adds r0, r0, r6
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, _08019484 @ =0x00000EEB
	adds r0, r0, r1
	mov r2, sl
	strb r2, [r0]
	ldr r1, [r7]
	ldr r6, _08019488 @ =0x00001BC1
	adds r1, r1, r6
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r7]
	adds r5, r1, r5
	ldr r0, [r5]
	ldrb r2, [r0, #6]
	cmp r2, #0x1c
	bls _08019410
	movs r2, #0x1c
_08019410:
	adds r0, r1, r3
	strb r2, [r0]
	bl sub_080141C8
	bl sub_080160E4
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801942C: .4byte gUnk_0200283C
_08019430: .4byte 0x00001C24
_08019434: .4byte 0x00000EE4
_08019438: .4byte 0x00000ED4
_0801943C: .4byte 0x00000EE9
_08019440: .4byte 0x00000EF3
_08019444: .4byte 0x00000EF8
_08019448: .4byte 0x00000442
_0801944C: .4byte 0x00000EF2
_08019450: .4byte 0x00000EEE
_08019454: .4byte 0x00000EEF
_08019458: .4byte 0x00000ED8
_0801945C: .4byte gUnk_03000E20
_08019460: .4byte 0x00000EDC
_08019464: .4byte gUnk_03000D60
_08019468: .4byte 0x00000EF1
_0801946C: .4byte 0x00001BBE
_08019470: .4byte 0x00001BD0
_08019474: .4byte 0x00001B74
_08019478: .4byte gUnk_02002830
_0801947C: .4byte 0x00000EED
_08019480: .4byte 0x00000EEA
_08019484: .4byte 0x00000EEB
_08019488: .4byte 0x00001BC1

	thumb_func_start sub_0801948C
sub_0801948C: @ 0x0801948C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r1
	str r2, [sp]
	ldr r4, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	ldr r6, [sp, #0x34]
	ldr r2, [sp, #0x44]
	ldr r1, [sp, #0x48]
	mov r8, r1
	ldr r1, [sp, #0x4c]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r3, r8
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r7, _0801956C @ =gUnk_0200283C
	str r0, [r7]
	ldr r1, _08019570 @ =0x00001C24
	str r2, [sp, #8]
	bl memzero
	ldr r1, [r7]
	ldr r3, _08019574 @ =0x00000EE4
	adds r0, r1, r3
	mov r3, sb
	strh r3, [r0]
	ldr r3, _08019578 @ =0x00000ED4
	adds r0, r1, r3
	ldr r3, [sp]
	str r3, [r0]
	ldr r3, _0801957C @ =0x00000EE6
	adds r0, r1, r3
	mov r3, sl
	strh r3, [r0]
	ldr r0, _08019580 @ =0x00000EE8
	adds r1, r1, r0
	strb r4, [r1]
	ldr r0, [r7]
	ldr r1, _08019584 @ =0x00000EE9
	adds r0, r0, r1
	strb r5, [r0]
	ldr r0, [r7]
	ldr r3, _08019588 @ =0x00000EEC
	adds r0, r0, r3
	strb r6, [r0]
	ldr r1, [r7]
	ldr r4, _0801958C @ =0x00000EFE
	adds r0, r1, r4
	mov r3, sp
	ldrh r3, [r3, #0x38]
	strh r3, [r0]
	adds r4, #2
	adds r0, r1, r4
	mov r3, sp
	ldrh r3, [r3, #0x3c]
	strh r3, [r0]
	ldr r4, _08019590 @ =0x00001BAE
	adds r0, r1, r4
	add r3, sp, #0x40
	ldrh r3, [r3]
	strh r3, [r0]
	subs r4, #1
	adds r1, r1, r4
	ldr r2, [sp, #8]
	strb r2, [r1]
	ldr r1, [r7]
	ldr r2, _08019594 @ =0x00001BC6
	adds r0, r1, r2
	mov r3, r8
	strh r3, [r0]
	ldr r0, _08019598 @ =0x00000EF8
	adds r1, r1, r0
	movs r0, #9
	rsbs r0, r0, #0
	ldr r2, [sp, #0x50]
	ands r2, r0
	str r2, [r1]
	movs r0, #0xa4
	bl sub_08142FAC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0801959C
	cmp r0, #2
	beq _080195AC
	ldr r1, [r7]
	adds r0, r1, r4
	ldrb r0, [r0]
	movs r2, #4
	cmp r0, #1
	bne _080195BC
	movs r2, #7
	b _080195BC
	.align 2, 0
_0801956C: .4byte gUnk_0200283C
_08019570: .4byte 0x00001C24
_08019574: .4byte 0x00000EE4
_08019578: .4byte 0x00000ED4
_0801957C: .4byte 0x00000EE6
_08019580: .4byte 0x00000EE8
_08019584: .4byte 0x00000EE9
_08019588: .4byte 0x00000EEC
_0801958C: .4byte 0x00000EFE
_08019590: .4byte 0x00001BAE
_08019594: .4byte 0x00001BC6
_08019598: .4byte 0x00000EF8
_0801959C:
	ldr r0, [r7]
	ldr r3, _080195A8 @ =0x00001BCC
	adds r0, r0, r3
	movs r1, #4
	strh r1, [r0]
	b _080195C2
	.align 2, 0
_080195A8: .4byte 0x00001BCC
_080195AC:
	ldr r0, [r7]
	ldr r4, _080195B8 @ =0x00001BCC
	adds r0, r0, r4
	movs r1, #7
	strh r1, [r0]
	b _080195C2
	.align 2, 0
_080195B8: .4byte 0x00001BCC
_080195BC:
	ldr r7, _0801966C @ =0x00001BCC
	adds r0, r1, r7
	strh r2, [r0]
_080195C2:
	movs r0, #0xa5
	bl sub_08142FAC
	ldr r6, _08019670 @ =gUnk_0200283C
	ldr r2, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r3, _08019674 @ =0x00001BBE
	adds r0, r2, r3
	movs r7, #0
	strh r1, [r0]
	ldr r4, _08019678 @ =0x00000ED8
	adds r1, r2, r4
	ldr r0, _0801967C @ =gUnk_03000E20
	ldr r0, [r0, #0x14]
	str r0, [r1]
	ldr r0, _08019680 @ =0x00000EDC
	adds r1, r2, r0
	ldr r3, _08019684 @ =gUnk_03000D60
	ldr r0, [r3, #0x14]
	str r0, [r1]
	adds r4, #8
	adds r1, r2, r4
	ldr r0, [r3, #0x10]
	str r0, [r1]
	ldr r0, _08019688 @ =0x00000EF1
	adds r2, r2, r0
	strb r7, [r2]
	ldr r0, [r6]
	movs r1, #0xef
	lsls r1, r1, #4
	adds r0, r0, r1
	strb r7, [r0]
	ldr r0, [r6]
	ldr r2, _0801968C @ =0x00001BD0
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0]
	ldr r1, [r6]
	ldr r3, _08019690 @ =0x00001B74
	adds r0, r1, r3
	ldr r4, _08019694 @ =gUnk_02002830
	str r4, [r0]
	mov r2, sl
	lsls r0, r2, #1
	str r0, [r4]
	adds r3, #0x5e
	adds r2, r1, r3
	ldr r5, _08019698 @ =0x00000EF8
	adds r1, r1, r5
	ldr r3, [r1]
	adds r0, r4, #0
	ldr r1, [sp]
	bl sub_08014D14
	ldr r1, [r6]
	movs r2, #0xdd
	lsls r2, r2, #5
	adds r1, r1, r2
	strb r0, [r1]
	ldr r1, [r6]
	ldrb r0, [r4, #7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	ldr r3, _0801969C @ =0x00000EED
	adds r1, r1, r3
	strb r0, [r1]
	ldr r6, [r6]
	adds r5, r6, r5
	ldr r0, [r5]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080196A8
	ldr r4, _080196A0 @ =0x00000EEE
	adds r0, r6, r4
	strb r7, [r0]
	ldr r1, _080196A4 @ =0x00000EEF
	adds r0, r6, r1
	strb r7, [r0]
	b _080196C4
	.align 2, 0
_0801966C: .4byte 0x00001BCC
_08019670: .4byte gUnk_0200283C
_08019674: .4byte 0x00001BBE
_08019678: .4byte 0x00000ED8
_0801967C: .4byte gUnk_03000E20
_08019680: .4byte 0x00000EDC
_08019684: .4byte gUnk_03000D60
_08019688: .4byte 0x00000EF1
_0801968C: .4byte 0x00001BD0
_08019690: .4byte 0x00001B74
_08019694: .4byte gUnk_02002830
_08019698: .4byte 0x00000EF8
_0801969C: .4byte 0x00000EED
_080196A0: .4byte 0x00000EEE
_080196A4: .4byte 0x00000EEF
_080196A8:
	ldr r0, _0801973C @ =gUnk_02000000
	ldr r2, _08019740 @ =0x0000132E
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	bne _080196B8
	movs r1, #2
_080196B8:
	ldr r3, _08019744 @ =0x00000EEE
	adds r0, r6, r3
	strb r1, [r0]
	ldr r4, _08019748 @ =0x00000EEF
	adds r0, r6, r4
	strb r1, [r0]
_080196C4:
	ldr r3, _0801974C @ =gUnk_0200283C
	ldr r0, [r3]
	ldr r7, _08019750 @ =0x00000EEA
	adds r0, r0, r7
	movs r2, #0
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r3]
	ldr r1, _08019754 @ =0x00000EEB
	adds r0, r0, r1
	strb r2, [r0]
	ldr r1, [r3]
	ldr r2, _08019758 @ =0x00001BC6
	adds r0, r1, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	subs r2, #0x1a
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r3]
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801970E
	ldr r4, [sp, #4]
	adds r0, r0, r4
	strb r0, [r1]
	ldr r1, [r3]
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801970E
	ldr r7, _0801975C @ =0x00001BC4
	adds r1, r1, r7
	movs r0, #6
	strh r0, [r1]
_0801970E:
	ldr r1, [r3]
	ldr r0, _08019760 @ =0x00001BC1
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r3]
	ldr r2, _08019764 @ =0x00001BAC
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08019768
	movs r4, #0xdd
	lsls r4, r4, #5
	adds r0, r1, r4
	ldrb r1, [r0]
	cmp r1, #0x16
	bls _08019776
	movs r1, #0x16
	b _08019776
	.align 2, 0
_0801973C: .4byte gUnk_02000000
_08019740: .4byte 0x0000132E
_08019744: .4byte 0x00000EEE
_08019748: .4byte 0x00000EEF
_0801974C: .4byte gUnk_0200283C
_08019750: .4byte 0x00000EEA
_08019754: .4byte 0x00000EEB
_08019758: .4byte 0x00001BC6
_0801975C: .4byte 0x00001BC4
_08019760: .4byte 0x00001BC1
_08019764: .4byte 0x00001BAC
_08019768:
	movs r7, #0xdd
	lsls r7, r7, #5
	adds r0, r1, r7
	ldrb r1, [r0]
	cmp r1, #0x1c
	bls _08019776
	movs r1, #0x1c
_08019776:
	strb r1, [r0]
	ldr r3, [r3]
	ldr r1, _080197A0 @ =0x00000EF8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080197A8
	movs r2, #0xdd
	lsls r2, r2, #5
	adds r0, r3, r2
	ldrb r1, [r0]
	cmp r1, #0x1c
	bls _08019796
	movs r1, #0x1c
_08019796:
	ldr r4, _080197A4 @ =0x00001B94
	adds r0, r3, r4
	strb r1, [r0]
	b _080197AC
	.align 2, 0
_080197A0: .4byte 0x00000EF8
_080197A4: .4byte 0x00001B94
_080197A8:
	bl sub_080141C8
_080197AC:
	bl sub_080160E4
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

