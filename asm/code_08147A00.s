	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	thumb_func_start sub_08147A00
sub_08147A00: @ 0x08147A00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r5, _08147B38 @ =gUnk_0202DFF0
	ldr r0, [r5]
	ldr r6, [r0, #0x14]
	ldr r4, [r0]
	adds r4, #0xd8
	adds r0, #0x40
	ldrh r0, [r0]
	str r0, [sp]
	movs r0, #4
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #6
	movs r2, #2
	movs r3, #6
	bl sub_0801C2EC
	movs r3, #2
	ldr r0, [r5]
	movs r1, #0x46
	adds r1, r1, r0
	mov ip, r1
	ldrh r2, [r1]
	adds r1, r2, #1
	mov r7, ip
	strh r1, [r7]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x84
	adds r0, r0, r1
	str r3, [sp]
	movs r1, #0xc
	str r1, [sp, #4]
	movs r1, #0x40
	str r1, [sp, #8]
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_08000CD4
	ldr r2, [r5]
	adds r3, r2, #0
	adds r3, #0x46
	ldrh r0, [r3]
	movs r1, #7
	ands r0, r1
	movs r4, #0
	strh r0, [r3]
	ldr r6, [r2, #0x14]
	adds r7, r6, #0
	adds r7, #0x40
	ldr r0, [r2, #4]
	adds r0, #0x96
	mov sl, r0
	add r0, sp, #0xc
	strh r4, [r0]
	ldr r2, _08147B3C @ =0x01000010
	adds r1, r7, #0
	bl CpuSet
	movs r0, #8
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, r8
	str r0, [sp, #8]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #4
	movs r3, #1
	bl sub_0801C370
	ldr r1, [r5]
	ldrh r2, [r1, #0x2c]
	lsls r2, r2, #5
	ldr r0, [r1, #8]
	adds r0, r0, r2
	adds r1, #0x4e
	movs r2, #0x88
	str r2, [sp]
	str r4, [sp, #4]
	movs r2, #6
	movs r3, #1
	bl sub_0801A924
	adds r6, #0x52
	movs r1, #0x80
	lsls r1, r1, #7
	mov ip, r1
	ldr r0, _08147B40 @ =0x00004001
	mov r8, r0
	mov sb, r5
_08147AC8:
	lsls r1, r4, #1
	adds r3, r1, r6
	ldr r2, [r5]
	ldrh r0, [r2, #0x2c]
	adds r0, r0, r1
	add r0, ip
	strh r0, [r3]
	ldrh r0, [r2, #0x2c]
	adds r0, r0, r1
	add r0, r8
	strh r0, [r3, #0x10]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #5
	bls _08147AC8
	movs r3, #4
	mov r1, sb
	ldr r0, [r1]
	adds r4, r0, #0
	adds r4, #0x46
	ldrh r2, [r4]
	adds r1, r2, #1
	strh r1, [r4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x84
	adds r0, r0, r1
	str r3, [sp]
	movs r1, #0x10
	str r1, [sp, #4]
	movs r1, #0x40
	str r1, [sp, #8]
	adds r1, r7, #0
	mov r2, sl
	movs r3, #8
	bl sub_08000CD4
	mov r7, sb
	ldr r1, [r7]
	adds r1, #0x46
	ldrh r0, [r1]
	movs r2, #7
	ands r0, r2
	strh r0, [r1]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08147B38: .4byte gUnk_0202DFF0
_08147B3C: .4byte 0x01000010
_08147B40: .4byte 0x00004001

	thumb_func_start sub_08147B44
sub_08147B44: @ 0x08147B44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	movs r7, #0
	lsls r0, r1, #2
	adds r1, r0, #0
	add r1, sl
	mov r8, r1
	lsls r1, r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_08147B68:
	ldr r2, _08147C14 @ =gUnk_0202DFF0
	mov sb, r2
	ldr r5, [r2]
	ldrh r4, [r5, #0x30]
	mov r1, r8
	lsls r0, r1, #2
	movs r1, #0x78
	bl __modsi3
	adds r6, r0, #0
	adds r4, r4, r6
	lsls r4, r4, #5
	ldr r0, [r5, #8]
	adds r0, r0, r4
	lsls r1, r7, #6
	adds r0, r0, r1
	bl sub_0801BF14
	ldr r5, _08147C18 @ =gUnk_086137FC
	ldr r2, [sp, #8]
	adds r0, r7, r2
	adds r0, r0, r5
	ldrb r1, [r0]
	movs r0, #0
	movs r2, #1
	movs r3, #0
	bl sub_0801B0C8
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _08147B68
	ldr r0, [sp, #4]
	bl sub_0801A3DC
	adds r4, r0, #0
	ldr r0, [sp, #4]
	bl sub_0801A3E4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r4, r0
	cmp r4, #7
	bgt _08147C1C
	movs r7, #0
	ldr r6, [sp, #0xc]
	add r6, sl
	mov sb, r5
	lsls r0, r6, #1
	adds r0, #5
	mov r8, r0
_08147BD4:
	ldr r0, _08147C14 @ =gUnk_0202DFF0
	ldr r5, [r0]
	ldrh r4, [r5, #0x30]
	lsls r0, r6, #2
	movs r1, #0x78
	bl __modsi3
	adds r4, r4, r0
	lsls r4, r4, #5
	ldr r0, [r5, #8]
	adds r0, r0, r4
	adds r1, r7, #5
	lsls r1, r1, #6
	adds r0, r0, r1
	bl sub_0801BF14
	mov r1, r8
	adds r0, r7, r1
	add r0, sb
	ldrb r1, [r0]
	movs r0, #0
	movs r2, #1
	movs r3, #0
	bl sub_0801B0C8
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _08147BD4
	b _08147C4A
	.align 2, 0
_08147C14: .4byte gUnk_0202DFF0
_08147C18: .4byte gUnk_086137FC
_08147C1C:
	mov r2, sb
	ldr r1, [r2]
	ldrh r0, [r1, #0x30]
	adds r0, r0, r6
	lsls r0, r0, #5
	ldr r4, [r1, #8]
	adds r4, r4, r0
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_0801BF14
	movs r0, #0
	str r0, [sp]
	ldr r2, _08147CF0 @ =0x01000050
	mov r0, sp
	adds r1, r4, #0
	bl CpuFastSet
	ldr r0, _08147CF4 @ =gUnk_08613860
	bl sub_0801C858
_08147C4A:
	ldr r0, _08147CF8 @ =gUnk_0202DFF0
	ldr r4, [r0]
	ldr r0, [sp, #0xc]
	add r0, sl
	lsls r0, r0, #2
	movs r1, #0x78
	bl __modsi3
	ldrh r1, [r4, #0x30]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	mov r8, r1
	ldr r0, [sp, #4]
	mov r1, sl
	bl sub_0801A384
	adds r5, r0, #0
	movs r7, #0
	movs r2, #1
	add r2, r8
	mov sb, r2
	mov r1, sb
_08147C7C:
	mov r2, r8
	adds r0, r6, r2
	strh r0, [r5]
	adds r0, r6, r1
	strh r0, [r5, #0x28]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #4
	cmp r7, #4
	bls _08147C7C
	adds r5, #2
	adds r1, r5, #0
	movs r7, #0
	movs r2, #0
_08147CA0:
	strh r2, [r1, #2]
	strh r2, [r1, #0x2a]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, #4
	cmp r7, #3
	bls _08147CA0
	ldr r0, [sp, #4]
	bl sub_0801A3DC
	adds r4, r0, #0
	ldr r0, [sp, #4]
	bl sub_0801A3E4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r4, r0
	cmp r4, #7
	bgt _08147CFC
	movs r7, #0
	mov r1, sb
_08147CD0:
	mov r2, r8
	adds r0, r6, r2
	strh r0, [r5]
	adds r0, r6, r1
	strh r0, [r5, #0x28]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #4
	cmp r7, #4
	bls _08147CD0
	b _08147D32
	.align 2, 0
_08147CF0: .4byte 0x01000050
_08147CF4: .4byte gUnk_08613860
_08147CF8: .4byte gUnk_0202DFF0
_08147CFC:
	adds r1, r5, #0
	movs r7, #0
	movs r2, #0
_08147D02:
	strh r2, [r1]
	strh r2, [r1, #0x28]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, #4
	cmp r7, #4
	bls _08147D02
	movs r7, #0
	mov r1, sb
_08147D16:
	mov r2, r8
	adds r0, r6, r2
	strh r0, [r5, #0xa]
	adds r0, r6, r1
	strh r0, [r5, #0x32]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #2
	cmp r7, #3
	bls _08147D16
_08147D32:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08147D44
sub_08147D44: @ 0x08147D44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, _08147E6C @ =gUnk_0202DFF0
	mov r8, r0
	ldr r0, [r0]
	ldr r5, [r0, #0x1c]
	ldr r4, [r0]
	ldr r1, _08147E70 @ =0x0000020A
	adds r4, r4, r1
	adds r0, #0x40
	ldrh r0, [r0]
	str r0, [sp]
	movs r2, #4
	str r2, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x14
	movs r2, #0xa
	movs r3, #0x14
	bl sub_0801C2EC
	movs r3, #0xa
	mov r1, r8
	ldr r0, [r1]
	adds r6, r0, #0
	adds r6, #0x46
	ldrh r2, [r6]
	adds r1, r2, #1
	strh r1, [r6]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x84
	adds r0, r0, r1
	str r3, [sp]
	movs r1, #0x28
	str r1, [sp, #4]
	movs r2, #0x40
	mov sl, r2
	str r2, [sp, #8]
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0x14
	bl sub_08000CD4
	mov r3, r8
	ldr r1, [r3]
	adds r2, r1, #0
	adds r2, #0x46
	ldrh r0, [r2]
	movs r3, #7
	mov sb, r3
	ands r0, r3
	movs r6, #0
	strh r0, [r2]
	ldr r4, [r1, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #2
	adds r4, r4, r0
	ldr r5, [r1, #4]
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r5, r5, r1
	add r0, sp, #0xc
	strh r6, [r0]
	ldr r2, _08147E74 @ =0x01000084
	adds r1, r4, #0
	bl CpuSet
	movs r0, #0x16
	str r0, [sp]
	str r6, [sp, #4]
	movs r2, #4
	str r2, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x16
	movs r2, #0xc
	movs r3, #1
	bl sub_0801C370
	movs r3, #0xc
	mov r1, r8
	ldr r0, [r1]
	adds r6, r0, #0
	adds r6, #0x46
	ldrh r2, [r6]
	adds r1, r2, #1
	strh r1, [r6]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x84
	adds r0, r0, r1
	str r3, [sp]
	movs r1, #0x2c
	str r1, [sp, #4]
	mov r2, sl
	str r2, [sp, #8]
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0x16
	bl sub_08000CD4
	mov r3, r8
	ldr r1, [r3]
	adds r1, #0x46
	ldrh r0, [r1]
	mov r2, sb
	ands r0, r2
	strh r0, [r1]
	adds r0, r7, #0
	bl sub_0801A24C
	movs r4, #0
_08147E38:
	adds r0, r7, #0
	bl sub_0801A3DC
	adds r1, r0, #0
	adds r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_08147B44
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08147E38
	adds r0, r7, #0
	bl sub_08019FD4
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08147E6C: .4byte gUnk_0202DFF0
_08147E70: .4byte 0x0000020A
_08147E74: .4byte 0x01000084

	thumb_func_start sub_08147E78
sub_08147E78: @ 0x08147E78
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x40
	adds r6, r0, #0
	mov sb, r1
	ldr r1, _08147EAC @ =gUnk_0824DA94
	mov r0, sp
	movs r2, #0x40
	bl memcpy
	movs r2, #1
	movs r3, #1
	movs r5, #0
	movs r4, #0
	ldr r0, _08147EB0 @ =gUnk_086A1DF8
	mov r8, r0
	ldr r1, _08147EB4 @ =gUnk_0202DFF0
	mov ip, r1
_08147EA0:
	lsls r0, r4, #2
	add r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08147EB8
_08147EAA:
	b _08147EAA
	.align 2, 0
_08147EAC: .4byte gUnk_0824DA94
_08147EB0: .4byte gUnk_086A1DF8
_08147EB4: .4byte gUnk_0202DFF0
_08147EB8:
	mov r7, ip
	ldr r1, [r7]
	ldrh r0, [r1, #0x38]
	cmp r0, r3
	bne _08147ECC
	adds r0, r1, #0
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, r2
	beq _08147F08
_08147ECC:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	subs r0, r3, #1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	cmp r2, r0
	bls _08147EEC
	movs r2, #1
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08147EEC:
	lsls r0, r4, #2
	mov r7, sp
	adds r1, r7, r0
	ldrh r0, [r1]
	cmp r0, r3
	bne _08147EA0
	ldrh r0, [r1, #2]
	cmp r0, r2
	bhs _08147EA0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	b _08147EA0
_08147F08:
	strh r4, [r6]
	adds r0, r5, #1
	mov r1, sb
	strh r0, [r1]
	add sp, #0x40
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08147F20
sub_08147F20: @ 0x08147F20
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x34
	ldr r4, _08148180 @ =gUnk_0202DFF0
	ldr r1, [r4]
	ldrh r0, [r1, #0x2e]
	lsls r0, r0, #5
	ldr r1, [r1, #8]
	adds r6, r1, r0
	add r1, sp, #0xc
	movs r0, #0x4e
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x80
	bl sub_0801BF14
	add r0, sp, #0xc
	ldrb r1, [r0]
	movs r0, #0
	movs r2, #1
	movs r3, #0
	bl sub_0801B0C8
	ldr r0, [r4]
	ldrh r0, [r0, #0x38]
	movs r1, #0xa
	bl __udivsi3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r0, sp, #0xc
	movs r2, #0
	bl sub_0801B644
	adds r0, r6, #0
	bl sub_0801BF14
	add r0, sp, #0xc
	ldrb r1, [r0]
	movs r0, #0
	movs r2, #1
	movs r3, #0
	bl sub_0801B0C8
	ldr r0, [r4]
	ldrh r0, [r0, #0x38]
	movs r1, #0xa
	bl __umodsi3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r0, sp, #0xc
	movs r2, #0
	bl sub_0801B644
	adds r0, r6, #0
	adds r0, #0x40
	bl sub_0801BF14
	add r0, sp, #0xc
	ldrb r1, [r0]
	movs r0, #0
	movs r2, #1
	movs r3, #0
	bl sub_0801B0C8
	ldr r0, [r4]
	adds r0, #0x44
	ldrh r0, [r0]
	movs r1, #0xa
	bl __udivsi3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r0, sp, #0xc
	movs r2, #0
	bl sub_0801B644
	adds r0, r6, #0
	adds r0, #0xc0
	bl sub_0801BF14
	add r0, sp, #0xc
	ldrb r1, [r0]
	movs r0, #0
	movs r2, #1
	movs r3, #0
	bl sub_0801B0C8
	ldr r0, [r4]
	adds r0, #0x44
	ldrh r0, [r0]
	movs r1, #0xa
	bl __umodsi3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r0, sp, #0xc
	movs r2, #0
	bl sub_0801B644
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_0801BF14
	add r0, sp, #0xc
	ldrb r1, [r0]
	movs r0, #0
	movs r2, #1
	movs r3, #0
	bl sub_0801B0C8
	ldr r0, [r4]
	ldr r6, [r0, #0x10]
	ldrh r1, [r0, #0x2e]
	movs r3, #0x80
	lsls r3, r3, #7
	movs r2, #0
	add r5, sp, #0x2c
	mov sb, r5
	mov r5, sp
	adds r5, #0x2e
	add r7, sp, #0x30
	mov r8, r7
	adds r4, r3, #1
_08148028:
	adds r0, r1, r3
	strh r0, [r6]
	adds r0, r1, r4
	strh r0, [r6, #0xa]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r6, #2
	cmp r2, #4
	bls _08148028
	ldr r1, _08148180 @ =gUnk_0202DFF0
	ldr r0, [r1]
	ldr r1, [r0, #4]
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r6, r1, r2
	ldr r1, [r0, #0x10]
	movs r4, #2
	movs r7, #0x46
	ldrh r3, [r7, r0]
	adds r2, r3, #1
	strh r2, [r7, r0]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r2, r3, #3
	subs r2, r2, r3
	lsls r2, r2, #2
	adds r2, #0x84
	adds r0, r0, r2
	str r4, [sp]
	movs r2, #0xa
	str r2, [sp, #4]
	movs r2, #0x40
	str r2, [sp, #8]
	adds r2, r6, #0
	movs r3, #5
	bl sub_08000CD4
	ldr r0, _08148180 @ =gUnk_0202DFF0
	ldr r2, [r0]
	adds r3, r2, #0
	adds r3, #0x46
	ldrh r0, [r3]
	movs r1, #7
	ands r0, r1
	movs r4, #0
	strh r0, [r3]
	ldrh r0, [r2, #0x2c]
	lsls r0, r0, #5
	ldr r1, [r2, #8]
	adds r6, r1, r0
	mov r0, sb
	adds r1, r5, #0
	bl sub_08147E78
	ldr r1, _08148184 @ =gUnk_08623678
	mov r2, sb
	ldrh r0, [r2]
	ldr r7, _08148188 @ =0x0000019F
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	add r0, sp, #0xc
	movs r2, #0x10
	movs r3, #0xff
	bl sub_0801995C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r1, r0, #1
	mov r2, sp
	adds r2, r2, r1
	adds r2, #0xc
	movs r1, #0x89
	strb r1, [r2]
	add r0, sp
	adds r0, #0xc
	ldrh r1, [r5]
	movs r2, #0
	bl sub_0801B644
	movs r0, #0x8a
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r6, #0
	add r1, sp, #0xc
	movs r2, #7
	movs r3, #1
	bl sub_0801A924
	mov r0, r8
	strh r4, [r0]
	ldr r1, _08148180 @ =gUnk_0202DFF0
	ldr r0, [r1]
	ldr r1, [r0, #0x18]
	ldr r2, _0814818C @ =0x01000014
	mov r0, r8
	bl CpuSet
	ldr r2, _08148180 @ =gUnk_0202DFF0
	ldr r1, [r2]
	ldr r0, [r1, #0x18]
	adds r6, r0, #2
	ldrh r1, [r1, #0x2c]
	movs r3, #0x80
	lsls r3, r3, #7
	movs r2, #0
	adds r4, r3, #1
_0814810A:
	adds r0, r1, r3
	strh r0, [r6]
	adds r0, r1, r4
	strh r0, [r6, #0x12]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r6, #2
	cmp r2, #6
	bls _0814810A
	ldr r5, _08148180 @ =gUnk_0202DFF0
	ldr r0, [r5]
	ldr r1, [r0, #4]
	movs r7, #0xe5
	lsls r7, r7, #2
	adds r6, r1, r7
	ldr r1, [r0, #0x18]
	movs r4, #2
	movs r2, #0x46
	adds r2, r2, r0
	mov ip, r2
	ldrh r3, [r2]
	adds r2, r3, #1
	mov r5, ip
	strh r2, [r5]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r2, r3, #3
	subs r2, r2, r3
	lsls r2, r2, #2
	adds r2, #0x84
	adds r0, r0, r2
	str r4, [sp]
	movs r2, #0x12
	str r2, [sp, #4]
	movs r2, #0x40
	str r2, [sp, #8]
	adds r2, r6, #0
	movs r3, #9
	bl sub_08000CD4
	ldr r7, _08148180 @ =gUnk_0202DFF0
	ldr r1, [r7]
	adds r1, #0x46
	ldrh r0, [r1]
	movs r2, #7
	ands r0, r2
	strh r0, [r1]
	add sp, #0x34
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148180: .4byte gUnk_0202DFF0
_08148184: .4byte gUnk_08623678
_08148188: .4byte 0x0000019F
_0814818C: .4byte 0x01000014

	thumb_func_start sub_08148190
sub_08148190: @ 0x08148190
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #1
	ldr r7, _081481B0 @ =gUnk_0202DFF0
	ldr r1, _081481B4 @ =gUnk_086A1DF8
	mov r8, r1
_081481A2:
	cmp r6, #1
	beq _0814820E
	cmp r6, #1
	bgt _081481B8
	cmp r6, #0
	beq _081481C2
	b _081482FE
	.align 2, 0
_081481B0: .4byte gUnk_0202DFF0
_081481B4: .4byte gUnk_086A1DF8
_081481B8:
	cmp r6, #2
	beq _08148222
	cmp r6, #3
	beq _08148282
	b _081482FE
_081481C2:
	ldr r4, [r7]
	ldrh r1, [r4, #0x34]
	cmp r1, #1
	bne _081481D4
	ldrh r0, [r4, #0x38]
	adds r0, #1
	cmp r0, #0xc
	bgt _081481F2
	b _0814821E
_081481D4:
	ldrh r0, [r4, #0x38]
	adds r1, r0, #0
	adds r1, #0xa
	cmp r1, #0xc
	ble _081481F2
	movs r1, #0xa
	bl __umodsi3
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _081481F4
_081481EE:
	movs r0, #0xc
	b _0814821E
_081481F2:
	strh r1, [r4, #0x38]
_081481F4:
	ldr r0, [r7]
	adds r2, r0, #0
	adds r2, #0x44
	ldrh r0, [r0, #0x38]
	subs r0, #1
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0]
	ldrh r0, [r2]
	cmp r0, r1
	bls _08148304
	strh r1, [r2]
	b _08148304
_0814820E:
	ldr r4, [r7]
	ldrh r0, [r4, #0x34]
	cmp r0, #1
	bne _081481D4
	ldrh r0, [r4, #0x38]
	cmp r0, #1
	beq _081481EE
	subs r0, #1
_0814821E:
	strh r0, [r4, #0x38]
	b _081481F4
_08148222:
	ldr r1, [r7]
	ldrh r0, [r1, #0x34]
	cmp r0, #3
	bne _0814824A
	adds r2, r1, #0
	adds r2, #0x44
	ldrh r0, [r2]
	adds r3, r0, #1
	ldrh r0, [r1, #0x38]
	subs r0, #1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	cmp r3, r0
	ble _08148246
	movs r0, #1
	strh r0, [r2]
	b _08148304
_08148246:
	strh r3, [r2]
	b _08148304
_0814824A:
	adds r3, r1, #0
	adds r3, #0x44
	ldrh r4, [r3]
	adds r2, r4, #0
	adds r2, #0xa
	ldrh r1, [r1, #0x38]
	subs r0, r1, #1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	cmp r2, r0
	ble _0814827E
	cmp r1, #2
	bne _0814826E
	cmp r4, #0x13
	bne _0814826E
	strh r0, [r3]
	b _08148304
_0814826E:
	ldr r4, [r7]
	adds r4, #0x44
	ldrh r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	strh r0, [r4]
	b _08148304
_0814827E:
	strh r2, [r3]
	b _08148304
_08148282:
	ldr r2, [r7]
	ldrh r0, [r2, #0x34]
	cmp r0, #3
	bne _081482A8
	adds r1, r2, #0
	adds r1, #0x44
	ldrh r0, [r1]
	cmp r0, #1
	bne _081482A2
	ldrh r0, [r2, #0x38]
	subs r0, #1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
	b _081482FC
_081482A2:
	subs r0, #1
	strh r0, [r1]
	b _081482FC
_081482A8:
	adds r3, r2, #0
	adds r3, #0x44
	ldrh r0, [r3]
	adds r1, r0, #0
	cmp r1, #9
	bhi _081482F8
	ldrh r0, [r2, #0x38]
	cmp r0, #2
	bne _081482C8
	cmp r1, #9
	bne _081482C8
	subs r0, #1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	b _081482FA
_081482C8:
	ldr r4, [r7]
	adds r5, r4, #0
	adds r5, #0x44
	ldrh r0, [r5]
	movs r1, #0xa
	bl __umodsi3
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x1e
	strh r1, [r5]
	ldrh r0, [r4, #0x38]
	subs r0, #1
	lsls r0, r0, #1
	add r0, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r0]
	cmp r1, r0
	bls _081482FC
	adds r0, r2, #0
	adds r0, #0x14
	strh r0, [r5]
	b _081482FC
_081482F8:
	subs r0, #0xa
_081482FA:
	strh r0, [r3]
_081482FC:
	movs r0, #0
_081482FE:
	cmp r0, #0
	beq _08148304
	b _081481A2
_08148304:
	ldr r1, [r7]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	bne _08148310
	movs r0, #1
	strh r0, [r1, #0x38]
_08148310:
	ldr r0, [r7]
	adds r4, r0, #0
	adds r4, #0x44
	ldrh r0, [r4]
	cmp r0, #0
	bne _08148320
	movs r0, #1
	strh r0, [r4]
_08148320:
	bl sub_08147F20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08148330
sub_08148330: @ 0x08148330
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov sl, r1
	adds r7, r2, #0
	mov r8, r3
	ldr r4, [sp, #0x28]
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _081483D0 @ =gUnk_086BF3E8
	lsls r1, r4, #5
	ldr r2, _081483D4 @ =0x06008000
	mov sb, r2
	add r1, sb
	movs r2, #3
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r5, #0
	movs r3, #0x3a
	bl sub_0801A59C
	ldr r6, _081483D8 @ =gUnk_0202DFF0
	str r5, [r6]
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r5, #0
	bl memzero
	ldr r1, [r6]
	mov r0, sl
	str r0, [r1]
	str r7, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	adds r0, r1, #0
	adds r0, #0x40
	mov r2, r8
	strh r2, [r0]
	ldr r0, [sp, #0x2c]
	str r0, [r1, #0x28]
	adds r0, r4, #6
	strh r0, [r1, #0x2e]
	adds r0, #0x10
	strh r0, [r1, #0x2c]
	adds r4, #0x26
	strh r4, [r1, #0x32]
	movs r2, #0x9f
	lsls r2, r2, #3
	adds r0, r5, r2
	str r0, [r1, #0x20]
	ldr r2, _081483DC @ =0x0000213C
	adds r0, r5, r2
	str r0, [r1, #0x1c]
	adds r2, #0x7c
	adds r0, r5, r2
	str r0, [r1, #0x14]
	adds r2, #0xb0
	adds r0, r5, r2
	str r0, [r1, #0x10]
	ldr r0, _081483E0 @ =0x000022D8
	adds r5, r5, r0
	str r5, [r1, #0x18]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081483D0: .4byte gUnk_086BF3E8
_081483D4: .4byte 0x06008000
_081483D8: .4byte gUnk_0202DFF0
_081483DC: .4byte 0x0000213C
_081483E0: .4byte 0x000022D8

	thumb_func_start sub_081483E4
sub_081483E4: @ 0x081483E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	bl sub_0801670C
	ldr r1, _08148434 @ =gUnk_0202DFF0
	ldr r0, [r1]
	ldr r0, [r0, #0x1c]
	adds r7, r0, #0
	adds r7, #0x70
	ldr r0, _08148438 @ =gUnk_03000D60
	ldr r0, [r0, #0x14]
	adds r0, #0x84
	mov r8, r0
	movs r3, #0
	mov sb, r1
	ldr r5, _0814843C @ =gUnk_086BF3A4
	movs r6, #0xf
_0814840C:
	lsls r0, r3, #1
	adds r4, r0, r7
	ldr r0, _08148434 @ =gUnk_0202DFF0
	ldr r0, [r0]
	ldrh r0, [r0, #0x2e]
	subs r0, #6
	adds r2, r3, r0
	adds r1, r3, #0
	adds r1, #0x74
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08148440
	asrs r0, r1, #1
	adds r0, #4
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	b _0814844C
	.align 2, 0
_08148434: .4byte gUnk_0202DFF0
_08148438: .4byte gUnk_03000D60
_0814843C: .4byte gUnk_086BF3A4
_08148440:
	asrs r0, r1, #1
	adds r0, #4
	adds r0, r0, r5
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ands r0, r6
_0814844C:
	lsls r0, r0, #0xc
	adds r0, r2, r0
	strh r0, [r4]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #5
	bls _0814840C
	movs r3, #1
	mov r1, sb
	ldr r0, [r1]
	movs r4, #0x46
	ldrh r2, [r4, r0]
	adds r1, r2, #1
	strh r1, [r4, r0]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x84
	adds r0, r0, r1
	str r3, [sp]
	movs r1, #0xc
	str r1, [sp, #4]
	movs r1, #0x40
	str r1, [sp, #8]
	adds r1, r7, #0
	mov r2, r8
	movs r3, #6
	bl sub_08000CD4
	mov r0, sb
	ldr r1, [r0]
	adds r1, #0x46
	ldrh r0, [r1]
	movs r2, #7
	ands r0, r2
	strh r0, [r1]
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081484A8
sub_081484A8: @ 0x081484A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r1, _081484CC @ =gUnk_0202DFF0
	ldr r0, [r1]
	ldrh r0, [r0, #0x3c]
	adds r5, r1, #0
	cmp r0, #0xd
	bls _081484C2
	b _081489AA
_081484C2:
	lsls r0, r0, #2
	ldr r1, _081484D0 @ =_081484D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081484CC: .4byte gUnk_0202DFF0
_081484D0: .4byte _081484D4
_081484D4: @ jump table
	.4byte _0814850C @ case 0
	.4byte _081489AA @ case 1
	.4byte _081489AA @ case 2
	.4byte _0814870C @ case 3
	.4byte _08148728 @ case 4
	.4byte _081487DC @ case 5
	.4byte _0814886E @ case 6
	.4byte _081489AA @ case 7
	.4byte _081489AA @ case 8
	.4byte _081489AA @ case 9
	.4byte _081489AA @ case 10
	.4byte _081489AA @ case 11
	.4byte _081489AA @ case 12
	.4byte _08148960 @ case 13
_0814850C:
	ldr r5, _081486F0 @ =gUnk_0202DFF0
	ldr r0, [r5]
	ldr r7, [r0, #0x14]
	ldr r1, [r0]
	movs r2, #0xe5
	lsls r2, r2, #2
	adds r6, r1, r2
	adds r0, #0x40
	ldrh r0, [r0]
	str r0, [sp]
	movs r3, #4
	str r3, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #4
	movs r3, #9
	bl sub_0801C2EC
	movs r0, #2
	mov sl, r0
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x46
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x84
	adds r0, r0, r1
	mov r1, sl
	str r1, [sp]
	movs r1, #0x12
	str r1, [sp, #4]
	movs r2, #0x40
	mov sb, r2
	str r2, [sp, #8]
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #9
	bl sub_08000CD4
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0x46
	ldrh r0, [r2]
	movs r3, #7
	mov r8, r3
	ands r0, r3
	movs r4, #0
	strh r0, [r2]
	ldr r0, [r1, #0x14]
	adds r7, r0, #0
	adds r7, #0x58
	ldr r0, [r1, #4]
	ldr r1, _081486F4 @ =0x00000352
	adds r6, r0, r1
	add r0, sp, #0x24
	strh r4, [r0]
	ldr r2, _081486F8 @ =0x01000016
	adds r1, r7, #0
	bl CpuSet
	movs r0, #0xb
	str r0, [sp]
	str r4, [sp, #4]
	movs r2, #4
	str r2, [sp, #8]
	adds r0, r7, #0
	movs r1, #0xb
	movs r3, #1
	bl sub_0801C370
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x46
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x84
	adds r0, r0, r1
	movs r3, #4
	str r3, [sp]
	movs r1, #0x16
	str r1, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0xb
	bl sub_08000CD4
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0x46
	ldrh r0, [r2]
	mov r3, r8
	ands r0, r3
	strh r0, [r2]
	ldr r7, [r1, #0x1c]
	ldr r0, [r1]
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r6, r0, r2
	adds r1, #0x40
	ldrh r0, [r1]
	str r0, [sp]
	movs r3, #4
	str r3, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	movs r3, #5
	bl sub_0801C2EC
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x46
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x84
	adds r0, r0, r1
	mov r1, sl
	str r1, [sp]
	movs r1, #0xa
	str r1, [sp, #4]
	mov r2, sb
	str r2, [sp, #8]
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #5
	bl sub_08000CD4
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0x46
	ldrh r0, [r2]
	mov r3, r8
	ands r0, r3
	strh r0, [r2]
	ldr r0, [r1, #0x1c]
	adds r7, r0, #0
	adds r7, #0x38
	ldr r0, [r1, #4]
	ldr r1, _081486FC @ =0x00000296
	adds r6, r0, r1
	mov r0, sp
	adds r0, #0x26
	strh r4, [r0]
	ldr r2, _08148700 @ =0x0100000E
	adds r1, r7, #0
	bl CpuSet
	mov r2, r8
	str r2, [sp]
	str r4, [sp, #4]
	movs r3, #4
	str r3, [sp, #8]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #4
	movs r3, #1
	bl sub_0801C370
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x46
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x84
	adds r0, r0, r1
	movs r1, #4
	str r1, [sp]
	movs r1, #0xe
	str r1, [sp, #4]
	mov r2, sb
	str r2, [sp, #8]
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #7
	bl sub_08000CD4
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0x46
	ldrh r0, [r2]
	mov r3, r8
	ands r0, r3
	strh r0, [r2]
	mov r6, sl
	strh r6, [r1, #0x38]
	adds r1, #0x44
	movs r0, #0xf
	strh r0, [r1]
	bl sub_08147F20
	ldr r7, _08148704 @ =0x00010088
	ldr r1, [r5]
	ldr r0, [r1, #0x20]
	ldrh r1, [r1, #0x32]
	ldr r2, _08148708 @ =gUnk_0876379A
	str r4, [sp]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp, #4]
	mov r3, sl
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r7, [sp, #0x20]
	movs r3, #0
	bl sub_08015D50
	bl sub_080197FC
	b _08148924
	.align 2, 0
_081486F0: .4byte gUnk_0202DFF0
_081486F4: .4byte 0x00000352
_081486F8: .4byte 0x01000016
_081486FC: .4byte 0x00000296
_08148700: .4byte 0x0100000E
_08148704: .4byte 0x00010088
_08148708: .4byte gUnk_0876379A
_0814870C:
	bl sub_0801670C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08148718
	b _081489AA
_08148718:
	ldr r0, _08148724 @ =gUnk_0202DFF0
	ldr r1, [r0]
	movs r0, #4
	strh r0, [r1, #0x3c]
	b _081489AA
	.align 2, 0
_08148724: .4byte gUnk_0202DFF0
_08148728:
	bl sub_0801A40C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0x10
	beq _081487BC
	cmp r0, #0x10
	bgt _08148744
	cmp r0, #1
	beq _08148758
	cmp r0, #8
	beq _08148758
	b _081489AA
_08148744:
	cmp r0, #0x40
	beq _08148790
	cmp r0, #0x40
	bgt _08148752
	cmp r0, #0x20
	beq _081487A4
	b _081489AA
_08148752:
	cmp r1, #0x80
	beq _08148774
	b _081489AA
_08148758:
	movs r0, #0xad
	bl PlaySE
	movs r0, #0
	bl sub_08019830
	ldr r0, _08148770 @ =gUnk_0202DFF0
	ldr r1, [r0]
	movs r0, #5
	strh r0, [r1, #0x3c]
	b _081489AA
	.align 2, 0
_08148770: .4byte gUnk_0202DFF0
_08148774:
	ldr r0, _0814878C @ =gUnk_0202DFF0
	ldr r0, [r0]
	ldrh r0, [r0, #0x34]
	movs r1, #3
	cmp r0, #1
	bhi _08148782
	movs r1, #1
_08148782:
	adds r0, r1, #0
	bl sub_08148190
	b _081487D4
	.align 2, 0
_0814878C: .4byte gUnk_0202DFF0
_08148790:
	ldr r0, _081487A0 @ =gUnk_0202DFF0
	ldr r0, [r0]
	ldrh r0, [r0, #0x34]
	movs r1, #0
	cmp r0, #1
	bls _08148782
	movs r1, #2
	b _08148782
	.align 2, 0
_081487A0: .4byte gUnk_0202DFF0
_081487A4:
	ldr r0, _081487B4 @ =gUnk_0202DFF0
	ldr r1, [r0]
	ldrh r0, [r1, #0x34]
	cmp r0, #0
	beq _081487B8
	subs r0, #1
	b _081487D2
	.align 2, 0
_081487B4: .4byte gUnk_0202DFF0
_081487B8:
	movs r0, #3
	b _081487D2
_081487BC:
	ldr r0, _081487CC @ =gUnk_0202DFF0
	ldr r1, [r0]
	ldrh r0, [r1, #0x34]
	cmp r0, #2
	bhi _081487D0
	adds r0, #1
	b _081487D2
	.align 2, 0
_081487CC: .4byte gUnk_0202DFF0
_081487D0:
	movs r0, #0
_081487D2:
	strh r0, [r1, #0x34]
_081487D4:
	movs r0, #0xb2
	bl PlaySE
	b _081489AA
_081487DC:
	bl sub_0801670C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _081487E8
	b _081489AA
_081487E8:
	add r7, sp, #0x28
	movs r6, #0x2a
	add r6, sp
	mov r8, r6
	adds r0, r7, #0
	mov r1, r8
	bl sub_08147E78
	ldr r1, _08148934 @ =gUnk_08623678
	ldrh r0, [r7]
	ldr r2, _08148938 @ =0x0000019F
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldrh r0, [r6]
	bl sub_0801C184
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	bl sub_080197D4
	ldr r3, _0814893C @ =0x00010088
	mov sb, r3
	ldr r5, _08148940 @ =gUnk_0202DFF0
	ldr r1, [r5]
	ldr r0, [r1, #0x20]
	ldrh r1, [r1, #0x32]
	ldr r2, _08148944 @ =gUnk_0876379A
	movs r4, #0
	str r4, [sp]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp, #4]
	movs r3, #2
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r3, #0xfe
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	mov r6, sb
	str r6, [sp, #0x20]
	movs r3, #0xb
	bl sub_08015D50
	bl sub_0801670C
	bl sub_081483E4
	ldr r0, [r5]
	ldr r1, [r0, #0x28]
	ldrb r0, [r7]
	adds r0, #1
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, [r5]
	ldr r0, [r0, #0x28]
	mov r2, r8
	ldrh r1, [r2]
	adds r0, #0x57
	strb r1, [r0]
	ldr r1, [r5]
	movs r0, #6
	strh r0, [r1, #0x3c]
_0814886E:
	bl sub_0801670C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0814887A
	b _081489AA
_0814887A:
	bl sub_080197C0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08148950
	ldr r0, _08148948 @ =gUnk_03000E20
	ldr r2, [r0, #0x14]
	movs r3, #0x14
	mov sb, r3
	ldr r5, _08148940 @ =gUnk_0202DFF0
	ldr r0, [r5]
	adds r4, r0, #0
	adds r4, #0x46
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x84
	adds r0, r0, r1
	mov r6, sb
	str r6, [sp]
	movs r1, #0x40
	mov r8, r1
	str r1, [sp, #4]
	movs r1, #0
	movs r3, #0x20
	bl sub_08000D94
	ldr r0, [r5]
	movs r2, #0x46
	adds r2, r2, r0
	mov sl, r2
	ldrh r3, [r2]
	movs r7, #7
	ands r3, r7
	movs r4, #0
	strh r3, [r2]
	ldr r1, _0814894C @ =gUnk_03000D60
	ldr r2, [r1, #0x14]
	adds r1, r3, #1
	mov r6, sl
	strh r1, [r6]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x84
	adds r0, r0, r1
	mov r1, sb
	str r1, [sp]
	mov r3, r8
	str r3, [sp, #4]
	movs r1, #0
	movs r3, #0x20
	bl sub_08000D94
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0x46
	ldrh r0, [r2]
	ands r0, r7
	strh r0, [r2]
	ldr r7, _0814893C @ =0x00010088
	ldr r0, [r1, #0x20]
	ldrh r1, [r1, #0x32]
	ldr r2, _08148944 @ =gUnk_0876379A
	str r4, [sp]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp, #4]
	movs r3, #2
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r3, #0xfe
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r7, [sp, #0x20]
	movs r3, #0
	bl sub_08015D50
_08148924:
	bl sub_0801670C
	bl sub_081483E4
	ldr r1, [r5]
	movs r0, #3
	strh r0, [r1, #0x3c]
	b _081489AA
	.align 2, 0
_08148934: .4byte gUnk_08623678
_08148938: .4byte 0x0000019F
_0814893C: .4byte 0x00010088
_08148940: .4byte gUnk_0202DFF0
_08148944: .4byte gUnk_0876379A
_08148948: .4byte gUnk_03000E20
_0814894C: .4byte gUnk_03000D60
_08148950:
	ldr r0, _0814895C @ =gUnk_0202DFF0
	ldr r1, [r0]
	movs r0, #0xd
	strh r0, [r1, #0x3c]
	b _081489AA
	.align 2, 0
_0814895C: .4byte gUnk_0202DFF0
_08148960:
	ldr r5, [r5]
	ldrh r6, [r5, #0x38]
	str r6, [sp, #0x2c]
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
	ldr r0, [sp, #0x2c]
	movs r1, #0xa
	bl __umodsi3
	adds r4, r4, r0
	adds r5, #0x44
	ldrh r5, [r5]
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r4, r0
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	b _081489FC
_081489AA:
	ldr r3, _081489C0 @ =gUnk_086A1DF0
	ldr r0, _081489C4 @ =gUnk_0202DFF0
	ldr r1, [r0]
	ldrh r0, [r1, #0x34]
	cmp r0, #1
	bhi _081489C8
	lsls r0, r0, #3
	adds r2, r0, #0
	adds r2, #0x60
	b _081489D0
	.align 2, 0
_081489C0: .4byte gUnk_086A1DF0
_081489C4: .4byte gUnk_0202DFF0
_081489C8:
	ldrh r0, [r1, #0x34]
	lsls r0, r0, #3
	adds r2, r0, #0
	adds r2, #0x68
_081489D0:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x14]
	ldr r0, _08148A0C @ =gUnk_086D7BF0
	ldrb r1, [r0, #0x11]
	movs r0, #0xf
	ands r0, r1
	str r0, [sp, #0x18]
	adds r0, r3, #0
	adds r1, r2, #0
	movs r2, #0x68
	movs r3, #0
	bl sub_080022EC
	movs r0, #0
_081489FC:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08148A0C: .4byte gUnk_086D7BF0

	thumb_func_start sub_08148A10
sub_08148A10: @ 0x08148A10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	mov sl, r1
	adds r6, r2, #0
	adds r4, r3, #0
	ldr r5, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, _08148B18 @ =gUnk_0202DFF0
	mov r8, r0
	str r6, [r0]
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r0, r6, #0
	adds r1, r2, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl memzero
	mov r7, r8
	ldr r1, [r7]
	mov r0, sb
	str r0, [r1]
	mov r7, sl
	str r7, [r1, #8]
	adds r0, r1, #0
	adds r0, #0x40
	movs r7, #0
	mov sb, r7
	mov r7, sb
	strh r7, [r0]
	strh r4, [r1, #0x2e]
	adds r4, #0x40
	strh r4, [r1, #0x32]
	ldr r2, [sp, #4]
	adds r2, r6, r2
	str r2, [r1, #0x1c]
	movs r2, #0xe7
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1, #0x10]
	ldr r7, _08148B1C @ =0x000004BC
	adds r6, r6, r7
	str r6, [r1, #0x20]
	ldr r0, _08148B20 @ =gUnk_0876379A
	adds r5, #1
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r1, r5, #0
	ldr r3, [sp, #8]
	adds r2, r3, #0
	bl sub_0801C7C0
	mov r2, r8
	ldr r1, [r2]
	str r0, [r1, #0x24]
	bl sub_0801993C
	mov r7, r8
	ldr r1, [r7]
	adds r2, r1, #0
	adds r2, #0x42
	strh r0, [r2]
	ldrh r0, [r1, #0x32]
	lsls r0, r0, #5
	ldr r4, [r1, #8]
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_0801BF14
	mov r0, sb
	str r0, [sp]
	ldr r2, _08148B24 @ =0x01000100
	mov r0, sp
	adds r1, r4, #0
	bl CpuFastSet
	ldr r2, [r7]
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r0, [r0]
	movs r3, #0x1e
	subs r0, r3, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #1
	ldr r1, [r2]
	adds r1, r1, r0
	adds r1, #0x42
	str r1, [r2, #0x14]
	strh r3, [r2, #0x36]
	ldrh r2, [r2, #0x32]
	adds r3, r1, #0
	movs r7, #0x80
	lsls r7, r7, #8
	adds r6, r7, #0
	ldr r0, _08148B28 @ =0x00008001
	adds r5, r0, #0
	movs r4, #0xf
_08148AEC:
	adds r0, r2, r6
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x40
	adds r0, r2, r5
	strh r0, [r1]
	adds r0, r2, #2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, #2
	subs r4, #1
	cmp r4, #0
	bge _08148AEC
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148B18: .4byte gUnk_0202DFF0
_08148B1C: .4byte 0x000004BC
_08148B20: .4byte gUnk_0876379A
_08148B24: .4byte 0x01000100
_08148B28: .4byte 0x00008001

	thumb_func_start sub_08148B2C
sub_08148B2C: @ 0x08148B2C
	push {r4, lr}
	ldr r0, _08148B44 @ =gUnk_0202DFF0
	ldr r1, [r0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #1
	beq _08148B5E
	cmp r0, #1
	bgt _08148B48
	cmp r0, #0
	beq _08148B4E
	b _08148BA6
	.align 2, 0
_08148B44: .4byte gUnk_0202DFF0
_08148B48:
	cmp r0, #2
	beq _08148B88
	b _08148BA6
_08148B4E:
	ldrh r0, [r1, #0x36]
	subs r0, #1
	strh r0, [r1, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08148BA6
	movs r0, #1
	strh r0, [r1, #0x3c]
_08148B5E:
	movs r0, #0xb4
	bl PlaySE
	ldr r4, _08148B84 @ =gUnk_0202DFF0
	ldr r2, [r4]
	ldr r1, [r2, #0x24]
	adds r0, r1, #0
	adds r1, #1
	str r1, [r2, #0x24]
	bl sub_0801C7F0
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x42
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1, #0x36]
	movs r0, #2
	b _08148BA4
	.align 2, 0
_08148B84: .4byte gUnk_0202DFF0
_08148B88:
	ldrh r0, [r1, #0x36]
	subs r0, #1
	strh r0, [r1, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08148BA6
	adds r0, r1, #0
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r0, #0
	bne _08148BA2
	movs r0, #1
	b _08148BA8
_08148BA2:
	movs r0, #1
_08148BA4:
	strh r0, [r1, #0x3c]
_08148BA6:
	movs r0, #0
_08148BA8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08148BB0
sub_08148BB0: @ 0x08148BB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08148D74 @ =gUnk_0202DFF0
	mov sb, r0
	ldr r1, [r0]
	ldrh r0, [r1, #0x2e]
	lsls r0, r0, #5
	ldr r1, [r1, #8]
	adds r7, r1, r0
	ldr r1, _08148D78 @ =gUnk_08763A76
	mov r8, r1
	mov r0, r8
	adds r1, r4, #0
	movs r2, #0
	bl sub_0801C7C0
	adds r1, r0, #0
	movs r6, #0x88
	str r6, [sp]
	movs r5, #0x11
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	mov r2, sb
	ldr r1, [r2]
	ldrh r0, [r1, #0x2e]
	adds r0, #0x10
	lsls r0, r0, #5
	ldr r1, [r1, #8]
	adds r7, r1, r0
	mov r0, r8
	adds r1, r4, #0
	movs r2, #1
	bl sub_0801C7C0
	adds r1, r0, #0
	str r6, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	mov r3, sb
	ldr r1, [r3]
	ldrh r0, [r1, #0x2e]
	adds r0, #0x20
	lsls r0, r0, #5
	ldr r1, [r1, #8]
	adds r7, r1, r0
	mov r0, r8
	adds r1, r4, #0
	movs r2, #2
	bl sub_0801C7C0
	adds r1, r0, #0
	str r6, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	mov r0, sb
	ldr r1, [r0]
	ldrh r0, [r1, #0x2e]
	adds r0, #0x30
	lsls r0, r0, #5
	ldr r1, [r1, #8]
	adds r7, r1, r0
	mov r0, r8
	adds r1, r4, #0
	movs r2, #3
	bl sub_0801C7C0
	adds r1, r0, #0
	str r6, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	mov r1, sb
	ldr r0, [r1]
	ldr r6, [r0, #0x10]
	ldrh r7, [r0, #0x2e]
	movs r2, #0x80
	lsls r2, r2, #8
	mov sb, r2
	add r1, sp, #0xc
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08148D7C @ =0x01000024
	adds r0, r1, #0
	adds r1, r6, #0
	bl CpuSet
	adds r6, #2
	movs r1, #0
	movs r3, #1
	add r3, sb
	mov sl, r3
	mov r2, sl
_08148C92:
	mov r4, sb
	adds r0, r7, r4
	strh r0, [r6]
	adds r0, r7, r2
	strh r0, [r6, #0x20]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r7, #2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r6, #2
	cmp r1, #0xf
	bls _08148C92
	ldr r5, _08148D74 @ =gUnk_0202DFF0
	ldr r0, [r5]
	ldr r1, [r0]
	movs r2, #0xe3
	lsls r2, r2, #2
	adds r6, r1, r2
	ldr r1, [r0, #0x10]
	movs r3, #2
	mov ip, r3
	movs r4, #0x46
	ldrh r3, [r4, r0]
	adds r2, r3, #1
	strh r2, [r4, r0]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r2, r3, #3
	subs r2, r2, r3
	lsls r2, r2, #2
	adds r2, #0x84
	adds r0, r0, r2
	mov r2, ip
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #0x40
	str r2, [sp, #8]
	adds r2, r6, #0
	movs r3, #0x10
	bl sub_08000CD4
	ldr r2, [r5]
	adds r3, r2, #0
	adds r3, #0x46
	ldrh r0, [r3]
	movs r1, #7
	ands r0, r1
	strh r0, [r3]
	ldr r0, [r2, #0x10]
	adds r6, r0, #0
	adds r6, #0x80
	movs r1, #0
	mov r2, sl
_08148D02:
	mov r3, sb
	adds r0, r7, r3
	strh r0, [r6]
	adds r0, r7, r2
	strh r0, [r6, #0x20]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r7, #2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r6, #2
	cmp r1, #0xf
	bls _08148D02
	ldr r5, _08148D74 @ =gUnk_0202DFF0
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r4, _08148D80 @ =0x0000040E
	adds r6, r1, r4
	ldr r1, [r0, #0x10]
	adds r1, #0x80
	movs r4, #2
	adds r7, r0, #0
	adds r7, #0x46
	ldrh r3, [r7]
	adds r2, r3, #1
	strh r2, [r7]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r2, r3, #3
	subs r2, r2, r3
	lsls r2, r2, #2
	adds r2, #0x84
	adds r0, r0, r2
	str r4, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #0x40
	str r2, [sp, #8]
	adds r2, r6, #0
	movs r3, #0x10
	bl sub_08000CD4
	ldr r1, [r5]
	adds r1, #0x46
	ldrh r0, [r1]
	movs r2, #7
	ands r0, r2
	strh r0, [r1]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148D74: .4byte gUnk_0202DFF0
_08148D78: .4byte gUnk_08763A76
_08148D7C: .4byte 0x01000024
_08148D80: .4byte 0x0000040E

	thumb_func_start sub_08148D84
sub_08148D84: @ 0x08148D84
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bhi _08148DA8
	ldr r2, _08148DA4 @ =gUnk_0202DFF0
	ldr r0, [r2]
	lsls r1, r1, #4
	adds r1, #0xc
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r4, r0, r1
	b _08148DBC
	.align 2, 0
_08148DA4: .4byte gUnk_0202DFF0
_08148DA8:
	ldr r2, _08148E04 @ =gUnk_0202DFF0
	ldr r0, [r2]
	subs r1, #2
	lsls r1, r1, #4
	adds r1, #0xe
	ldr r0, [r0]
	adds r0, r0, r1
	movs r6, #0x80
	lsls r6, r6, #3
	adds r4, r0, r6
_08148DBC:
	adds r5, r2, #0
	movs r3, #2
	ldr r0, [r5]
	movs r1, #0x46
	adds r1, r1, r0
	mov ip, r1
	ldrh r2, [r1]
	adds r1, r2, #1
	mov r6, ip
	strh r1, [r6]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x84
	adds r0, r0, r1
	str r3, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #0
	adds r2, r4, #0
	movs r3, #8
	bl sub_08000D94
	ldr r1, [r5]
	adds r1, #0x46
	ldrh r0, [r1]
	movs r2, #7
	ands r0, r2
	strh r0, [r1]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08148E04: .4byte gUnk_0202DFF0

	thumb_func_start sub_08148E08
sub_08148E08: @ 0x08148E08
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r3, r2, #0x10
	lsrs r3, r3, #0x10
	ldr r4, _08148E4C @ =gUnk_0202DFF0
	ldr r0, [r4]
	movs r1, #0x46
	adds r1, r1, r0
	mov ip, r1
	ldrh r2, [r1]
	adds r1, r2, #1
	mov r7, ip
	strh r1, [r7]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x84
	adds r0, r0, r1
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08000BB4
	ldr r1, [r4]
	adds r1, #0x46
	ldrh r0, [r1]
	movs r2, #7
	ands r0, r2
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08148E4C: .4byte gUnk_0202DFF0

	thumb_func_start sub_08148E50
sub_08148E50: @ 0x08148E50
	push {r4, lr}
	sub sp, #4
	ldr r3, _08148F38 @ =gUnk_03000DD0
	ldrh r0, [r3, #0xa]
	movs r2, #0
	movs r4, #0
	strh r4, [r3, #0xa]
	ldrh r0, [r3, #0xa]
	ldrh r1, [r3, #0xc]
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xe]
	strh r4, [r3, #0xe]
	ldrh r0, [r3, #0xe]
	ldrh r1, [r3, #0x10]
	strh r0, [r3, #0x10]
	ldrh r0, [r3, #0x12]
	strh r4, [r3, #0x12]
	ldrh r0, [r3, #0x12]
	ldrh r1, [r3, #0x14]
	strh r0, [r3, #0x14]
	ldrh r0, [r3, #0x16]
	strh r4, [r3, #0x16]
	ldrh r0, [r3, #0x16]
	ldrh r1, [r3, #0x18]
	strh r0, [r3, #0x18]
	ldrh r0, [r3, #2]
	ldr r0, _08148F3C @ =0x00002F03
	strh r0, [r3, #2]
	ldrh r0, [r3, #4]
	ldr r0, _08148F40 @ =0x00002E02
	strh r0, [r3, #4]
	ldrh r0, [r3, #6]
	ldr r0, _08148F44 @ =0x00002D08
	strh r0, [r3, #6]
	ldrh r0, [r3, #8]
	ldr r0, _08148F48 @ =0x00002C09
	strh r0, [r3, #8]
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	strb r2, [r1]
	adds r1, #1
	ldrb r0, [r1]
	strb r2, [r1]
	subs r1, #7
	ldrb r0, [r1]
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	strb r2, [r1]
	adds r0, r3, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	strb r2, [r0]
	adds r1, r3, #0
	adds r1, #0x4d
	ldrb r0, [r1]
	strb r2, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #0x10
	strb r0, [r1]
	subs r1, #0xc
	ldrb r0, [r1]
	strb r2, [r1]
	adds r0, r3, #0
	adds r0, #0x43
	ldrb r1, [r0]
	strb r2, [r0]
	ldr r1, _08148F4C @ =gUnk_03001070
	movs r2, #0xc0
	lsls r2, r2, #0x13
	str r2, [r1, #0x10]
	ldr r0, _08148F50 @ =0x06007800
	str r0, [r1, #0x14]
	ldr r1, _08148F54 @ =gUnk_03001090
	str r2, [r1, #0x10]
	ldr r0, _08148F58 @ =0x06007000
	str r0, [r1, #0x14]
	ldr r1, _08148F5C @ =gUnk_03000D60
	ldr r2, _08148F60 @ =0x06008000
	str r2, [r1, #0x10]
	ldr r0, _08148F64 @ =0x06006800
	str r0, [r1, #0x14]
	ldr r1, _08148F68 @ =gUnk_03000E20
	str r2, [r1, #0x10]
	ldr r0, _08148F6C @ =0x06006000
	str r0, [r1, #0x14]
	mov r0, sp
	strh r4, [r0]
	ldr r0, _08148F70 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08148F74 @ =gUnk_02002400
	str r2, [r0, #4]
	ldr r3, _08148F78 @ =0x81000100
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r4, [r1]
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r2, r1
	str r2, [r0, #4]
	str r3, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08148F38: .4byte gUnk_03000DD0
_08148F3C: .4byte 0x00002F03
_08148F40: .4byte 0x00002E02
_08148F44: .4byte 0x00002D08
_08148F48: .4byte 0x00002C09
_08148F4C: .4byte gUnk_03001070
_08148F50: .4byte 0x06007800
_08148F54: .4byte gUnk_03001090
_08148F58: .4byte 0x06007000
_08148F5C: .4byte gUnk_03000D60
_08148F60: .4byte 0x06008000
_08148F64: .4byte 0x06006800
_08148F68: .4byte gUnk_03000E20
_08148F6C: .4byte 0x06006000
_08148F70: .4byte 0x040000D4
_08148F74: .4byte gUnk_02002400
_08148F78: .4byte 0x81000100

	thumb_func_start sub_08148F7C
sub_08148F7C: @ 0x08148F7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0x1e
	bls _08148F94
	b _0814922A
_08148F94:
	adds r1, r7, #0
	bl sub_0801A384
	mov sb, r0
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0x18
	bl sub_0801A358
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	add r0, sp, #0x18
	movs r4, #0
	strh r4, [r0]
	ldr r5, _08149030 @ =0x01000018
	mov r1, sb
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #0x1a
	strh r4, [r0]
	mov r1, sb
	adds r1, #0x30
	adds r2, r5, #0
	bl CpuSet
	ldr r3, _08149034 @ =gUnk_086A1E5C
	ldr r0, _08149038 @ =gUnk_02033FE0
	ldr r1, [r0]
	ldr r2, _0814903C @ =0x00001C46
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, r7
	bne _08149048
	mov r5, sb
	adds r4, r6, #0
	ldr r0, _08149040 @ =gUnk_03000D60
	lsls r1, r4, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	adds r1, r3, #0
	movs r2, #1
	movs r3, #1
	bl sub_0801A924
	movs r2, #0
	adds r0, r4, #2
	mov r8, r0
	lsls r1, r7, #3
	str r1, [sp, #0x24]
	adds r7, #1
	mov r0, sb
	adds r0, #2
	str r0, [sp, #0x1c]
	movs r6, #0x30
	ldr r3, _08149044 @ =0x00007001
_0814900E:
	movs r1, #0xe0
	lsls r1, r1, #7
	adds r0, r4, r1
	strh r0, [r5]
	adds r1, r6, r5
	adds r0, r4, r3
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r2, #1
	blo _0814900E
	b _081490AA
	.align 2, 0
_08149030: .4byte 0x01000018
_08149034: .4byte gUnk_086A1E5C
_08149038: .4byte gUnk_02033FE0
_0814903C: .4byte 0x00001C46
_08149040: .4byte gUnk_03000D60
_08149044: .4byte 0x00007001
_08149048:
	lsls r0, r7, #1
	ldr r2, _081490C0 @ =0x00001C48
	adds r1, r1, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r6, #2
	mov r8, r1
	lsls r2, r7, #3
	str r2, [sp, #0x24]
	adds r7, #1
	mov r1, sb
	adds r1, #2
	str r1, [sp, #0x1c]
	cmp r0, #0
	beq _081490AA
	mov r5, sb
	adds r4, r6, #0
	ldr r0, _081490C4 @ =gUnk_03000D60
	lsls r1, r4, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	adds r1, r3, #0
	movs r2, #1
	movs r3, #1
	bl sub_0801A924
	movs r2, #0
	movs r6, #0x30
	ldr r3, _081490C8 @ =0x00004001
_0814908A:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	strh r0, [r5]
	adds r1, r6, r5
	adds r0, r4, r3
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r2, #1
	blo _0814908A
_081490AA:
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _081490CC @ =gUnk_086A1E80
	ldr r1, [sp, #0x24]
	adds r0, r1, r0
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _081490D0
	movs r0, #1
	b _081490E6
	.align 2, 0
_081490C0: .4byte 0x00001C48
_081490C4: .4byte gUnk_03000D60
_081490C8: .4byte 0x00004001
_081490CC: .4byte gUnk_086A1E80
_081490D0:
	movs r0, #0x86
	lsls r0, r0, #1
	bl sub_08142F50
	movs r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _081490E4
	movs r1, #1
_081490E4:
	adds r0, r1, #0
_081490E6:
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _081490F2
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	b _081490F4
_081490F2:
	movs r1, #0
_081490F4:
	mov sl, r1
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, #0
	bne _08149102
	movs r0, #0xe0
	lsls r0, r0, #7
_08149102:
	mov r8, r0
	add r0, sp, #8
	adds r1, r7, #0
	movs r2, #2
	bl sub_0801B644
	ldr r5, [sp, #0x1c]
	adds r4, r6, #0
	ldr r0, _0814923C @ =gUnk_03000D60
	lsls r1, r6, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #2
	movs r3, #1
	bl sub_0801A924
	mov ip, r6
	movs r2, #0
	movs r7, #0x30
	mov r0, r8
	adds r0, #1
	str r0, [sp, #0x20]
	adds r3, r0, #0
_0814913A:
	mov r1, r8
	adds r0, r4, r1
	strh r0, [r5]
	adds r1, r7, r5
	adds r0, r4, r3
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r2, #2
	blo _0814913A
	mov r2, ip
	subs r0, r4, r2
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _08149240 @ =gUnk_08765A94
	mov r1, sl
	movs r2, #0
	bl sub_0801C7C0
	adds r3, r0, #0
	ldr r0, _0814923C @ =gUnk_03000D60
	lsls r1, r6, #5
	ldr r4, [r0, #0x10]
	adds r4, r4, r1
	adds r0, r3, #0
	str r3, [sp, #0x28]
	bl sub_0801993C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xff
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	ldr r3, [sp, #0x28]
	adds r1, r3, #0
	movs r3, #1
	bl sub_0801A924
	movs r2, #0
	cmp r2, r5
	bhs _081491C4
	movs r4, #0x30
	ldr r3, [sp, #0x20]
_081491A4:
	lsls r1, r2, #1
	add r1, sb
	mov r7, r8
	adds r0, r6, r7
	strh r0, [r1, #8]
	adds r1, r4, r1
	adds r0, r6, r3
	strh r0, [r1, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r2, r5
	blo _081491A4
_081491C4:
	mov r0, sl
	cmp r0, #0
	beq _0814922A
	ldr r0, _08149244 @ =gUnk_086A1E80
	ldr r1, [sp, #0x24]
	adds r0, r1, r0
	ldrh r1, [r0, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08149248 @ =gUnk_086A1E38
	adds r3, r0, r1
	adds r0, r6, #0
	adds r0, #0xa
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r5, sb
	adds r5, #0x20
	adds r4, r6, #0
	ldr r0, _0814923C @ =gUnk_03000D60
	lsls r1, r4, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	adds r1, r3, #0
	movs r2, #6
	movs r3, #1
	bl sub_0801A924
	movs r2, #0
	movs r3, #0x30
	ldr r6, _0814924C @ =0x00004001
_0814920A:
	movs r7, #0x80
	lsls r7, r7, #7
	adds r0, r4, r7
	strh r0, [r5]
	adds r1, r3, r5
	adds r0, r4, r6
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r2, #6
	blo _0814920A
_0814922A:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814923C: .4byte gUnk_03000D60
_08149240: .4byte gUnk_08765A94
_08149244: .4byte gUnk_086A1E80
_08149248: .4byte gUnk_086A1E38
_0814924C: .4byte 0x00004001

	thumb_func_start sub_08149250
sub_08149250: @ 0x08149250
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, _08149280 @ =gUnk_02033FE0
	ldr r2, [r0]
	ldr r0, _08149284 @ =0x00001C8A
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0814928C
	subs r0, #1
	strh r0, [r1]
	ldr r1, _08149288 @ =0x00001C88
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_0801A074
	movs r0, #1
	b _0814932E
	.align 2, 0
_08149280: .4byte gUnk_02033FE0
_08149284: .4byte 0x00001C8A
_08149288: .4byte 0x00001C88
_0814928C:
	mov r2, r8
	cmp r2, #0x40
	bne _081492B2
	adds r0, r6, #0
	bl sub_0801A3DC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814932C
	adds r0, r6, #0
	bl sub_0801A3DC
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_0801A3E4
	adds r4, r4, r0
	subs r4, #1
	b _081492D4
_081492B2:
	cmp r2, #0x80
	bne _0814932C
	adds r0, r6, #0
	bl sub_0801A3F8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814932C
	adds r0, r6, #0
	bl sub_0801A3DC
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_0801A3E4
	adds r4, r4, r0
	adds r4, #1
_081492D4:
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	ldr r5, _0814931C @ =gUnk_02033FE0
	ldr r1, [r5]
	ldr r4, _08149320 @ =0x00001C88
	adds r0, r1, r4
	mov r2, r8
	strh r2, [r0]
	ldr r0, _08149324 @ =0x00001C8A
	adds r1, r1, r0
	movs r0, #1
	strh r0, [r1]
	movs r0, #0xb2
	bl PlaySE
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08148F7C
	ldr r0, [r5]
	adds r0, r0, r4
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_0801A074
	ldr r2, _08149328 @ =gUnk_03000820
	ldrb r1, [r2, #7]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08149316
	ldrb r0, [r2, #0xb]
	strb r0, [r2, #0xe]
_08149316:
	movs r0, #2
	b _0814932E
	.align 2, 0
_0814931C: .4byte gUnk_02033FE0
_08149320: .4byte 0x00001C88
_08149324: .4byte 0x00001C8A
_08149328: .4byte gUnk_03000820
_0814932C:
	movs r0, #0
_0814932E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08149338
sub_08149338: @ 0x08149338
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r1, [sp, #0x24]
	ldrb r0, [r1]
	mov sl, r0
	cmp r0, #2
	bne _08149350
	b _08149858
_08149350:
	cmp r0, #2
	bgt _08149360
	cmp r0, #0
	beq _08149370
	cmp r0, #1
	bne _0814935E
	b _081497B8
_0814935E:
	b _08149AE2
_08149360:
	mov r1, sl
	cmp r1, #3
	bne _08149368
	b _08149A94
_08149368:
	cmp r1, #0x64
	bne _0814936E
	b _08149ABC
_0814936E:
	b _08149AE2
_08149370:
	bl m4aMPlayAllStop
	ldr r5, _08149744 @ =gUnk_02033FE0
	ldr r0, _08149748 @ =gUnk_02032000
	str r0, [r5]
	movs r1, #0xff
	lsls r1, r1, #5
	bl memzero
	ldr r0, [r5]
	ldr r2, _0814974C @ =0x00001C46
	adds r0, r0, r2
	movs r3, #0xff
	strh r3, [r0]
	ldr r0, _08149750 @ =gUnk_0202DFF8
	movs r1, #0x80
	lsls r1, r1, #7
	bl sub_0800486C
	ldr r1, _08149754 @ =gUnk_02031FF8
	mov r8, r1
	str r0, [r1]
	bl sub_08148E50
	bl sub_08139694
	mov r2, r8
	ldr r0, [r2]
	ldr r1, _08149758 @ =0x000037E4
	bl sub_080048D4
	adds r2, r0, #0
	ldr r0, [r5]
	ldr r3, _0814975C @ =0x00001CB4
	adds r0, r0, r3
	str r2, [r0]
	ldr r0, _08149760 @ =gUnk_087C2990
	ldr r4, _08149764 @ =gUnk_03001070
	ldr r1, [r4, #0x10]
	mov r3, sl
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r3, #0
	bl sub_0801A59C
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r5]
	ldr r2, _0814975C @ =0x00001CB4
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_0800490C
	ldr r0, _08149768 @ =gUnk_087C2424
	ldr r1, [r4, #0x14]
	movs r2, #0xa0
	lsls r2, r2, #1
	bl CpuFastSet
	ldr r0, _0814976C @ =gUnk_03001090
	ldr r2, [r0, #0x14]
	ldr r0, [r5]
	ldr r3, _08149770 @ =0x00001CCC
	adds r1, r0, r3
	ldrb r3, [r1]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _08149774 @ =0x00001CD0
	adds r1, r1, r3
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r5]
	ldr r0, _08149770 @ =0x00001CCC
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	ldr r2, _08149770 @ =0x00001CCC
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r3, #0xf
	ands r0, r3
	strb r0, [r1]
	ldr r0, _08149778 @ =gUnk_03000D60
	ldr r2, [r0, #0x14]
	ldr r0, [r5]
	ldr r3, _08149770 @ =0x00001CCC
	adds r1, r0, r3
	ldrb r3, [r1]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _08149774 @ =0x00001CD0
	adds r1, r1, r3
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r5]
	ldr r0, _08149770 @ =0x00001CCC
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	ldr r2, _08149770 @ =0x00001CCC
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r3, #0xf
	ands r0, r3
	strb r0, [r1]
	ldr r0, _0814977C @ =gUnk_03000E20
	ldr r2, [r0, #0x14]
	ldr r0, [r5]
	ldr r3, _08149770 @ =0x00001CCC
	adds r1, r0, r3
	ldrb r3, [r1]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _08149774 @ =0x00001CD0
	adds r1, r1, r3
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r5]
	ldr r0, _08149770 @ =0x00001CCC
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	ldr r2, _08149770 @ =0x00001CCC
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r3, #0xf
	ands r0, r3
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	movs r4, #0x88
	lsls r4, r4, #2
	adds r1, r4, #0
	bl sub_080048D4
	ldr r1, [r5]
	ldr r6, _08149780 @ =0x00001CAC
	adds r1, r1, r6
	str r0, [r1]
	mov r2, r8
	ldr r0, [r2]
	adds r1, r4, #0
	bl sub_080048D4
	ldr r2, [r5]
	ldr r4, _08149784 @ =0x00001CB0
	adds r1, r2, r4
	str r0, [r1]
	ldr r0, _08149788 @ =gUnk_0861DF68
	adds r2, r2, r6
	ldr r1, [r2]
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _0814978C @ =gUnk_0861E288
	ldr r1, [r5]
	adds r1, r1, r4
	ldr r1, [r1]
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _08149790 @ =gUnk_087C1C24
	ldr r1, [r5]
	adds r1, r1, r6
	ldr r1, [r1]
	movs r2, #0x10
	bl CpuFastSet
	ldr r0, [r5]
	adds r0, r0, r6
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x20
	bl sub_08138580
	ldr r1, [r5]
	ldr r3, _08149794 @ =0x00001CC4
	adds r2, r1, r3
	str r0, [r2]
	adds r1, r1, r4
	ldr r3, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r0, #0
	movs r2, #0x20
	bl sub_08138580
	ldr r1, [r5]
	ldr r2, _08149798 @ =0x00001CC8
	adds r1, r1, r2
	str r0, [r1]
	mov r3, r8
	ldr r0, [r3]
	movs r1, #0xb6
	lsls r1, r1, #2
	bl sub_080048D4
	ldr r1, [r5]
	ldr r2, _0814975C @ =0x00001CB4
	adds r1, r1, r2
	str r0, [r1]
	ldr r3, _0814977C @ =gUnk_03000E20
	ldr r1, [r3, #0x14]
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r7, r1, r2
	movs r1, #0x1a
	str r1, [sp]
	mov r3, sl
	str r3, [sp, #4]
	movs r6, #4
	str r6, [sp, #8]
	movs r2, #0xe
	movs r3, #1
	bl sub_0801BB1C
	ldr r0, [r5]
	ldr r1, _0814975C @ =0x00001CB4
	adds r1, r0, r1
	str r1, [sp, #0x28]
	ldr r1, [r1]
	movs r4, #0xe
	ldr r3, _08149770 @ =0x00001CCC
	adds r2, r0, r3
	ldrb r3, [r2]
	lsls r2, r3, #3
	subs r2, r2, r3
	lsls r2, r2, #2
	ldr r3, _08149774 @ =0x00001CD0
	adds r2, r2, r3
	adds r0, r0, r2
	str r4, [sp]
	movs r2, #0x34
	str r2, [sp, #4]
	movs r2, #0x40
	mov sb, r2
	str r2, [sp, #8]
	adds r2, r7, #0
	movs r3, #0x1a
	bl sub_08000CD4
	ldr r1, [r5]
	ldr r3, _08149770 @ =0x00001CCC
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r2, #0xf
	ands r0, r2
	strb r0, [r1]
	mov r3, r8
	ldr r0, [r3]
	movs r1, #0x60
	bl sub_080048D4
	ldr r1, [r5]
	ldr r4, _0814979C @ =0x00001CB8
	adds r1, r1, r4
	str r0, [r1]
	ldr r2, _0814977C @ =gUnk_03000E20
	ldr r1, [r2, #0x14]
	adds r7, r1, #0
	adds r7, #0x52
	movs r1, #0xc
	str r1, [sp]
	mov r3, sl
	str r3, [sp, #4]
	str r6, [sp, #8]
	movs r2, #4
	movs r3, #2
	bl sub_0801BB1C
	ldr r0, [r5]
	adds r4, r0, r4
	ldr r1, [r4]
	ldr r3, _08149770 @ =0x00001CCC
	adds r2, r0, r3
	ldrb r3, [r2]
	lsls r2, r3, #3
	subs r2, r2, r3
	lsls r2, r2, #2
	ldr r3, _08149774 @ =0x00001CD0
	adds r2, r2, r3
	adds r0, r0, r2
	str r6, [sp]
	movs r2, #0x18
	str r2, [sp, #4]
	mov r2, sb
	str r2, [sp, #8]
	adds r2, r7, #0
	movs r3, #0xc
	bl sub_08000CD4
	ldr r1, [r5]
	ldr r3, _08149770 @ =0x00001CCC
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r2, #0xf
	ands r0, r2
	strb r0, [r1]
	adds r6, #0xfc
	lsls r0, r6, #5
	ldr r3, _08149778 @ =gUnk_03000D60
	ldr r4, [r3, #0x10]
	adds r4, r4, r0
	ldr r0, _081497A0 @ =gUnk_087611D4
	movs r1, #3
	movs r2, #0
	bl sub_0801C7C0
	adds r1, r0, #0
	movs r0, #0xff
	str r0, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r0, r4, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	mov r3, r8
	ldr r0, [r3]
	movs r1, #0x20
	bl sub_080048D4
	ldr r1, [r5]
	ldr r2, _081497A4 @ =0x00001CBC
	adds r1, r1, r2
	str r0, [r1]
	adds r7, r0, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	ldr r0, _081497A8 @ =0x00004001
	adds r3, r0, #0
_08149650:
	adds r0, r6, r1
	strh r0, [r7]
	adds r0, r6, r3
	strh r0, [r7, #0x10]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r7, #2
	cmp r2, #7
	bls _08149650
	ldr r1, _08149778 @ =gUnk_03000D60
	mov r8, r1
	ldr r0, [r1, #0x14]
	adds r7, r0, #0
	adds r7, #0x96
	ldr r4, _08149744 @ =gUnk_02033FE0
	ldr r0, [r4]
	ldr r2, _081497A4 @ =0x00001CBC
	adds r1, r0, r2
	ldr r1, [r1]
	movs r5, #2
	ldr r3, _08149770 @ =0x00001CCC
	adds r2, r0, r3
	ldrb r3, [r2]
	lsls r2, r3, #3
	subs r2, r2, r3
	lsls r2, r2, #2
	ldr r3, _08149774 @ =0x00001CD0
	adds r2, r2, r3
	adds r0, r0, r2
	str r5, [sp]
	movs r2, #0x10
	str r2, [sp, #4]
	movs r2, #0x40
	str r2, [sp, #8]
	adds r2, r7, #0
	movs r3, #8
	bl sub_08000CD4
	ldr r1, [r4]
	ldr r0, _08149770 @ =0x00001CCC
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	ldr r2, _08149770 @ =0x00001CCC
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #0xf
	ands r0, r2
	strb r0, [r1]
	ldr r0, _08149754 @ =gUnk_02031FF8
	ldr r0, [r0]
	movs r1, #0xb6
	lsls r1, r1, #2
	bl sub_080048D4
	ldr r1, [r4]
	movs r3, #0xe6
	lsls r3, r3, #5
	adds r2, r1, r3
	str r0, [r2]
	ldr r5, _081497AC @ =0x00001C8C
	adds r6, r1, r5
	ldr r2, _081497B0 @ =0x00001E90
	adds r1, r1, r2
	mov r3, r8
	ldr r2, [r3, #0x14]
	movs r3, #0x90
	lsls r3, r3, #1
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	movs r0, #4
	str r0, [sp, #0xc]
	movs r0, #7
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	movs r0, #0x1f
	str r0, [sp, #0x18]
	adds r0, r6, #0
	bl sub_0801A1C0
	ldr r0, [r4]
	adds r0, r0, r5
	movs r1, #6
	bl sub_0801A3EC
	ldr r0, [r4]
	adds r0, r0, r5
	bl sub_0801A24C
	movs r5, #0
_08149716:
	ldr r0, [r4]
	ldr r1, _081497AC @ =0x00001C8C
	adds r0, r0, r1
	adds r1, r5, #0
	bl sub_08148F7C
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #6
	bls _08149716
	ldr r0, _08149744 @ =gUnk_02033FE0
	ldr r0, [r0]
	ldr r2, _081497AC @ =0x00001C8C
	adds r0, r0, r2
	bl sub_08019FD4
	ldr r1, _081497B4 @ =gUnk_03000820
	movs r0, #0xfc
	lsls r0, r0, #2
	strh r0, [r1, #8]
	movs r0, #1
	b _08149ADE
	.align 2, 0
_08149744: .4byte gUnk_02033FE0
_08149748: .4byte gUnk_02032000
_0814974C: .4byte 0x00001C46
_08149750: .4byte gUnk_0202DFF8
_08149754: .4byte gUnk_02031FF8
_08149758: .4byte 0x000037E4
_0814975C: .4byte 0x00001CB4
_08149760: .4byte gUnk_087C2990
_08149764: .4byte gUnk_03001070
_08149768: .4byte gUnk_087C2424
_0814976C: .4byte gUnk_03001090
_08149770: .4byte 0x00001CCC
_08149774: .4byte 0x00001CD0
_08149778: .4byte gUnk_03000D60
_0814977C: .4byte gUnk_03000E20
_08149780: .4byte 0x00001CAC
_08149784: .4byte 0x00001CB0
_08149788: .4byte gUnk_0861DF68
_0814978C: .4byte gUnk_0861E288
_08149790: .4byte gUnk_087C1C24
_08149794: .4byte 0x00001CC4
_08149798: .4byte 0x00001CC8
_0814979C: .4byte 0x00001CB8
_081497A0: .4byte gUnk_087611D4
_081497A4: .4byte 0x00001CBC
_081497A8: .4byte 0x00004001
_081497AC: .4byte 0x00001C8C
_081497B0: .4byte 0x00001E90
_081497B4: .4byte gUnk_03000820
_081497B8:
	ldr r4, _08149838 @ =gUnk_02033FE0
	ldr r0, [r4]
	ldr r1, _0814983C @ =0x00001CC4
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08139548
	cmp r0, #0
	bne _081497CC
	b _08149AE2
_081497CC:
	movs r5, #0
_081497CE:
	ldr r0, [r4]
	lsls r1, r5, #2
	ldr r2, _0814983C @ =0x00001CC4
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08139468
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #1
	bls _081497CE
	ldr r5, _08149840 @ =gUnk_02031FF8
	ldr r0, [r5]
	ldr r4, _08149838 @ =gUnk_02033FE0
	ldr r1, [r4]
	ldr r3, _08149844 @ =0x00001CAC
	adds r1, r1, r3
	ldr r1, [r1]
	bl sub_0800490C
	ldr r0, [r5]
	ldr r1, [r4]
	ldr r2, _08149848 @ =0x00001CB0
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_0800490C
	ldr r0, [r5]
	ldr r1, [r4]
	ldr r3, _0814984C @ =0x00001CB4
	adds r1, r1, r3
	ldr r1, [r1]
	bl sub_0800490C
	ldr r0, [r5]
	ldr r1, [r4]
	ldr r2, _08149850 @ =0x00001CB8
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_0800490C
	ldr r0, [r5]
	ldr r1, [r4]
	ldr r3, _08149854 @ =0x00001CBC
	adds r1, r1, r3
	ldr r1, [r1]
	bl sub_0800490C
	movs r0, #2
	b _08149A86
	.align 2, 0
_08149838: .4byte gUnk_02033FE0
_0814983C: .4byte 0x00001CC4
_08149840: .4byte gUnk_02031FF8
_08149844: .4byte 0x00001CAC
_08149848: .4byte 0x00001CB0
_0814984C: .4byte 0x00001CB4
_08149850: .4byte 0x00001CB8
_08149854: .4byte 0x00001CBC
_08149858:
	bl sub_0801A40C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #8
	beq _081498A8
	cmp r4, #8
	bgt _08149880
	cmp r4, #2
	bne _0814986E
	b _08149980
_0814986E:
	cmp r4, #2
	bgt _08149878
	cmp r4, #1
	beq _081498A8
	b _08149AE2
_08149878:
	cmp r4, #4
	bne _0814987E
	b _081499C8
_0814987E:
	b _08149AE2
_08149880:
	cmp r4, #0x80
	bne _08149886
	b _08149A5C
_08149886:
	cmp r4, #0x80
	bgt _08149892
	cmp r4, #0x40
	bne _08149890
	b _08149A5C
_08149890:
	b _08149AE2
_08149892:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r4, r0
	bne _0814989C
	b _08149A0C
_0814989C:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	bne _081498A6
	b _08149A0C
_081498A6:
	b _08149AE2
_081498A8:
	ldr r6, _081498D4 @ =gUnk_02033FE0
	ldr r0, [r6]
	ldr r5, _081498D8 @ =0x00001C8C
	adds r0, r0, r5
	bl sub_0801A3DC
	adds r4, r0, #0
	ldr r0, [r6]
	adds r0, r0, r5
	bl sub_0801A3E4
	adds r4, r4, r0
	lsls r4, r4, #0x10
	ldr r0, _081498DC @ =gUnk_086A1E80
	lsrs r4, r4, #0xd
	adds r4, r4, r0
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _081498E0
	movs r0, #1
	b _081498F6
	.align 2, 0
_081498D4: .4byte gUnk_02033FE0
_081498D8: .4byte 0x00001C8C
_081498DC: .4byte gUnk_086A1E80
_081498E0:
	movs r0, #0x86
	lsls r0, r0, #1
	bl sub_08142F50
	movs r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _081498F4
	movs r1, #1
_081498F4:
	adds r0, r1, #0
_081498F6:
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08149904
	movs r0, #0xb1
	bl PlaySE
	b _08149AE2
_08149904:
	ldr r6, _08149970 @ =gUnk_02033FE0
	ldr r0, [r6]
	ldr r4, _08149974 @ =0x00001C8C
	adds r0, r0, r4
	bl sub_0801A3DC
	adds r5, r0, #0
	ldr r0, [r6]
	adds r0, r0, r4
	bl sub_0801A3E4
	ldr r1, [r6]
	adds r5, r5, r0
	subs r4, #0x46
	adds r1, r1, r4
	strh r5, [r1]
	ldr r2, _08149978 @ =gUnk_086A1E80
	ldrh r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r1, [r6]
	adds r4, r1, r4
	ldrh r0, [r4]
	lsls r0, r0, #1
	ldr r2, _0814997C @ =0x00001C48
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #1
	strh r0, [r1]
	movs r5, #0
_08149946:
	ldr r6, _08149970 @ =gUnk_02033FE0
	ldr r4, [r6]
	ldr r3, _08149974 @ =0x00001C8C
	adds r4, r4, r3
	adds r0, r4, #0
	bl sub_0801A3DC
	adds r1, r0, #0
	adds r1, r5, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08148F7C
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #6
	bls _08149946
	b _08149A48
	.align 2, 0
_08149970: .4byte gUnk_02033FE0
_08149974: .4byte 0x00001C8C
_08149978: .4byte gUnk_086A1E80
_0814997C: .4byte 0x00001C48
_08149980:
	bl m4aMPlayAllStop
	ldr r0, _081499BC @ =gUnk_02033FE0
	ldr r0, [r0]
	ldr r2, _081499C0 @ =0x00001C46
	adds r0, r0, r2
	movs r1, #0xff
	strh r1, [r0]
	movs r5, #0
_08149992:
	ldr r6, _081499BC @ =gUnk_02033FE0
	ldr r4, [r6]
	ldr r3, _081499C4 @ =0x00001C8C
	adds r4, r4, r3
	adds r0, r4, #0
	bl sub_0801A3DC
	adds r1, r0, #0
	adds r1, r5, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08148F7C
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #6
	bls _08149992
	b _08149A48
	.align 2, 0
_081499BC: .4byte gUnk_02033FE0
_081499C0: .4byte 0x00001C46
_081499C4: .4byte 0x00001C8C
_081499C8:
	ldr r0, _08149A04 @ =gUnk_02033FE0
	ldr r0, [r0]
	movs r1, #0xe7
	lsls r1, r1, #2
	ldr r2, _08149A08 @ =gUnk_0875976C
	movs r3, #1
	str r3, [sp]
	subs r3, #2
	str r3, [sp, #4]
	mov r3, sl
	str r3, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	movs r3, #8
	str r3, [sp, #0x20]
	movs r3, #0xb7
	bl sub_08015D50
	movs r0, #1
	movs r1, #0
	bl sub_08019088
	movs r0, #0x64
	b _08149A86
	.align 2, 0
_08149A04: .4byte gUnk_02033FE0
_08149A08: .4byte gUnk_0875976C
_08149A0C:
	ldr r0, _08149A54 @ =gUnk_02033FE0
	ldr r0, [r0]
	ldr r2, _08149A58 @ =0x00001C8C
	adds r0, r0, r2
	adds r1, r4, #0
	bl sub_0801A158
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08149AE2
	movs r5, #0
_08149A22:
	ldr r6, _08149A54 @ =gUnk_02033FE0
	ldr r4, [r6]
	ldr r3, _08149A58 @ =0x00001C8C
	adds r4, r4, r3
	adds r0, r4, #0
	bl sub_0801A3DC
	adds r1, r0, #0
	adds r1, r5, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08148F7C
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #6
	bls _08149A22
_08149A48:
	ldr r0, [r6]
	ldr r1, _08149A58 @ =0x00001C8C
	adds r0, r0, r1
	bl sub_08019F38
	b _08149AE2
	.align 2, 0
_08149A54: .4byte gUnk_02033FE0
_08149A58: .4byte 0x00001C8C
_08149A5C:
	ldr r5, _08149A8C @ =gUnk_02033FE0
	ldr r0, [r5]
	ldr r2, _08149A90 @ =0x00001C8C
	adds r0, r0, r2
	adds r1, r4, #0
	bl sub_0801A44C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08149AE2
	ldr r0, [r5]
	ldr r3, _08149A90 @ =0x00001C8C
	adds r0, r0, r3
	adds r1, r4, #0
	bl sub_08149250
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08149AE2
	movs r0, #3
_08149A86:
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	b _08149AE2
	.align 2, 0
_08149A8C: .4byte gUnk_02033FE0
_08149A90: .4byte 0x00001C8C
_08149A94:
	ldr r0, _08149AB4 @ =gUnk_02033FE0
	ldr r4, [r0]
	ldr r2, _08149AB8 @ =0x00001C8C
	adds r4, r4, r2
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08149250
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08149AE2
	b _08149ADC
	.align 2, 0
_08149AB4: .4byte gUnk_02033FE0
_08149AB8: .4byte 0x00001C8C
_08149ABC:
	ldr r4, _08149B20 @ =gUnk_02033FE0
	ldr r0, [r4]
	ldr r1, _08149B24 @ =0x00001C44
	adds r0, r0, r1
	movs r1, #1
	strh r1, [r0]
	bl sub_0801670C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08149AE2
	ldr r0, [r4]
	ldr r2, _08149B24 @ =0x00001C44
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
_08149ADC:
	movs r0, #2
_08149ADE:
	ldr r3, [sp, #0x24]
	strb r0, [r3]
_08149AE2:
	ldr r0, _08149B20 @ =gUnk_02033FE0
	ldr r1, [r0]
	ldr r2, _08149B24 @ =0x00001C44
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _08149B2C
	ldr r3, _08149B28 @ =0x00001C86
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bhi _08149B2E
	movs r0, #8
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08149B2E
	.align 2, 0
_08149B20: .4byte gUnk_02033FE0
_08149B24: .4byte 0x00001C44
_08149B28: .4byte 0x00001C86
_08149B2C:
	movs r4, #8
_08149B2E:
	ldr r0, _08149B90 @ =gUnk_02033FE0
	ldr r0, [r0]
	ldr r1, _08149B94 @ =0x00001C8C
	adds r0, r0, r1
	bl sub_0801A3E4
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xc
	adds r2, #0x3c
	ldr r0, _08149B98 @ =gUnk_086A1E78
	adds r1, r4, #0
	adds r1, #8
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r3, _08149B9C @ =gUnk_086D7BF0
	ldrb r3, [r3, #0x10]
	lsrs r3, r3, #4
	str r3, [sp, #0x18]
	movs r3, #0
	bl sub_080022EC
	movs r5, #0
	movs r6, #0
_08149B6C:
	cmp r5, #0
	bne _08149BA4
	ldr r4, _08149B90 @ =gUnk_02033FE0
	ldr r0, [r4]
	ldr r2, _08149B94 @ =0x00001C8C
	adds r0, r0, r2
	bl sub_0801A3DC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08149BE8
	ldr r0, [r4]
	ldr r3, _08149BA0 @ =0x00001C44
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, #0
	bne _08149BE8
	b _08149BB6
	.align 2, 0
_08149B90: .4byte gUnk_02033FE0
_08149B94: .4byte 0x00001C8C
_08149B98: .4byte gUnk_086A1E78
_08149B9C: .4byte gUnk_086D7BF0
_08149BA0: .4byte 0x00001C44
_08149BA4:
	ldr r0, _08149C04 @ =gUnk_02033FE0
	ldr r0, [r0]
	ldr r1, _08149C08 @ =0x00001C8C
	adds r0, r0, r1
	bl sub_0801A3F8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08149BE8
_08149BB6:
	lsls r1, r5, #3
	ldr r0, _08149C0C @ =gUnk_086A1E68
	adds r3, r1, r0
	movs r2, #0x90
	cmp r5, #0
	bne _08149BC4
	movs r2, #0x38
_08149BC4:
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	ldr r0, _08149C10 @ =gUnk_086D7BF0
	ldrb r1, [r0, #0x11]
	movs r0, #0xf
	ands r0, r1
	str r0, [sp, #0x18]
	adds r0, r3, #0
	movs r1, #0xd8
	movs r3, #0
	bl sub_080022EC
_08149BE8:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #1
	bls _08149B6C
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08149C04: .4byte gUnk_02033FE0
_08149C08: .4byte 0x00001C8C
_08149C0C: .4byte gUnk_086A1E68
_08149C10: .4byte gUnk_086D7BF0

	thumb_func_start sub_08149C14
sub_08149C14: @ 0x08149C14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _08149D50 @ =gUnk_03000DD0
	ldrh r1, [r7]
	ldr r0, _08149D54 @ =0x000013FF
	ands r0, r1
	movs r5, #0
	strh r0, [r7]
	ldr r0, _08149D58 @ =0x0600E000
	bl sub_08004944
	adds r4, r0, #0
	ldr r6, _08149D5C @ =0x0600C000
	adds r0, r6, #0
	bl sub_08004950
	orrs r4, r0
	movs r0, #1
	mov r8, r0
	ldrh r0, [r7, #6]
	mov r0, r8
	orrs r4, r0
	strh r4, [r7, #6]
	ldr r0, _08149D60 @ =0x0600E800
	bl sub_08004944
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_08004950
	orrs r4, r0
	movs r6, #0
	ldrh r0, [r7, #8]
	mov r0, r8
	orrs r4, r0
	strh r4, [r7, #8]
	ldrh r0, [r7, #0x14]
	strh r5, [r7, #0x14]
	ldrh r0, [r7, #0x14]
	ldrh r1, [r7, #0x12]
	strh r0, [r7, #0x12]
	ldrh r0, [r7, #0x18]
	strh r5, [r7, #0x18]
	ldrh r0, [r7, #0x18]
	ldrh r1, [r7, #0x16]
	strh r0, [r7, #0x16]
	ldrh r0, [r7, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #0x1a]
	ldrh r1, [r7, #0x1c]
	strh r5, [r7, #0x1c]
	ldrh r1, [r7, #0x1e]
	strh r5, [r7, #0x1e]
	ldrh r1, [r7, #0x20]
	strh r0, [r7, #0x20]
	ldrh r1, [r7, #0x22]
	strh r5, [r7, #0x22]
	ldrh r1, [r7, #0x24]
	strh r5, [r7, #0x24]
	ldrh r1, [r7, #0x26]
	strh r5, [r7, #0x26]
	ldrh r1, [r7, #0x28]
	strh r5, [r7, #0x28]
	ldrh r1, [r7, #0x2a]
	strh r0, [r7, #0x2a]
	ldrh r1, [r7, #0x2c]
	strh r5, [r7, #0x2c]
	ldrh r1, [r7, #0x2e]
	strh r5, [r7, #0x2e]
	ldrh r1, [r7, #0x30]
	strh r0, [r7, #0x30]
	ldrh r0, [r7, #0x32]
	strh r5, [r7, #0x32]
	ldrh r0, [r7, #0x34]
	strh r5, [r7, #0x34]
	ldrh r0, [r7, #0x36]
	strh r5, [r7, #0x36]
	ldrh r0, [r7, #0x38]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	ldrb r0, [r1]
	strb r6, [r1]
	ldrb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	strb r6, [r1]
	ldrb r0, [r1]
	adds r2, #4
	ldrb r1, [r2]
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	strb r6, [r0]
	ldrb r0, [r0]
	subs r2, #2
	ldrb r1, [r2]
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x40
	ldrb r1, [r0]
	strb r6, [r0]
	ldrb r0, [r0]
	adds r2, #4
	ldrb r1, [r2]
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x42
	ldrb r0, [r1]
	strb r6, [r1]
	adds r1, #1
	ldrb r0, [r1]
	strb r6, [r1]
	adds r0, r7, #0
	adds r0, #0x44
	ldrb r1, [r0]
	strb r6, [r0]
	adds r1, r7, #0
	adds r1, #0x45
	ldrb r0, [r1]
	strb r6, [r1]
	adds r1, #2
	ldrb r0, [r1]
	strb r6, [r1]
	subs r1, #1
	ldrb r0, [r1]
	strb r6, [r1]
	adds r1, #4
	ldrb r0, [r1]
	strb r6, [r1]
	adds r1, #1
	ldrb r0, [r1]
	strb r6, [r1]
	adds r0, r7, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	strb r6, [r0]
	adds r1, r7, #0
	adds r1, #0x4d
	ldrb r0, [r1]
	strb r6, [r1]
	adds r0, r7, #0
	adds r0, #0x4e
	ldrb r1, [r0]
	strb r6, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08149D50: .4byte gUnk_03000DD0
_08149D54: .4byte 0x000013FF
_08149D58: .4byte 0x0600E000
_08149D5C: .4byte 0x0600C000
_08149D60: .4byte 0x0600E800

	thumb_func_start sub_08149D64
sub_08149D64: @ 0x08149D64
	push {r4, r5, r6, lr}
	sub sp, #0x24
	add r0, sp, #0x20
	bl sub_0800AB3C
	b _08149DE8
_08149D70:
	bl sub_0800A87C
	adds r5, r0, #0
	ldrb r0, [r5, #4]
	cmp r0, #3
	bne _08149DE8
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _08149DB0
	ldr r0, [r5]
	movs r2, #6
	ldrsh r1, [r5, r2]
	movs r3, #8
	ldrsh r2, [r5, r3]
	ldrb r3, [r5, #0xe]
	ldrb r4, [r5, #0xf]
	str r4, [sp]
	ldrb r4, [r5, #0x10]
	str r4, [sp, #4]
	ldrb r4, [r5, #0x11]
	str r4, [sp, #8]
	ldrb r4, [r5, #0x12]
	str r4, [sp, #0xc]
	ldr r4, [r5, #0x14]
	str r4, [sp, #0x10]
	ldrb r4, [r5, #0x18]
	str r4, [sp, #0x14]
	ldr r4, [r5, #0x1c]
	str r4, [sp, #0x18]
	bl sub_080022EC
	b _08149DE8
_08149DB0:
	cmp r0, #1
	bne _08149DE8
	ldr r0, [r5]
	movs r6, #6
	ldrsh r1, [r5, r6]
	movs r3, #8
	ldrsh r2, [r5, r3]
	ldrb r3, [r5, #0xe]
	ldrb r4, [r5, #0xf]
	str r4, [sp]
	ldrb r4, [r5, #0x10]
	str r4, [sp, #4]
	ldr r4, [r5, #0x14]
	str r4, [sp, #8]
	ldrb r4, [r5, #0x18]
	str r4, [sp, #0xc]
	ldr r4, [r5, #0x1c]
	str r4, [sp, #0x10]
	movs r6, #0x22
	ldrsh r4, [r5, r6]
	str r4, [sp, #0x14]
	movs r6, #0x24
	ldrsh r4, [r5, r6]
	str r4, [sp, #0x18]
	ldrh r4, [r5, #0x26]
	str r4, [sp, #0x1c]
	bl sub_08001B34
_08149DE8:
	add r0, sp, #0x20
	bl sub_0800A808
	cmp r0, #0
	bne _08149D70
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08149DFC
sub_08149DFC: @ 0x08149DFC
	ldr r1, _08149E08 @ =0xF9FF0000
	adds r0, r0, r1
	lsls r0, r0, #0xb
	asrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08149E08: .4byte 0xF9FF0000

	thumb_func_start sub_08149E0C
sub_08149E0C: @ 0x08149E0C
	push {r4, r5, r6, lr}
	ldr r0, _08149E60 @ =gUnk_02033FE8
	movs r1, #0xc0
	lsls r1, r1, #7
	bl sub_0800486C
	ldr r6, _08149E64 @ =gUnk_02039FF0
	str r0, [r6]
	ldr r5, _08149E68 @ =gUnk_02039FE8
	movs r4, #0xf0
	lsls r4, r4, #6
	adds r1, r4, #0
	bl sub_080048D4
	str r0, [r5]
	adds r1, r4, #0
	bl sub_080082E0
	bl sub_080087EC
	bl sub_08010E80
	bl sub_0800AAD0
	ldr r5, _08149E6C @ =gUnk_02039FEC
	ldr r0, [r6]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	bl sub_080048D4
	str r0, [r5]
	adds r1, r4, #0
	bl sub_080068C8
	ldr r1, _08149E70 @ =gUnk_02029C28
	str r0, [r1]
	bl sub_08149C14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08149E60: .4byte gUnk_02033FE8
_08149E64: .4byte gUnk_02039FF0
_08149E68: .4byte gUnk_02039FE8
_08149E6C: .4byte gUnk_02039FEC
_08149E70: .4byte gUnk_02029C28

	thumb_func_start sub_08149E74
sub_08149E74: @ 0x08149E74
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r4, _08149ECC @ =gUnk_02029C28
	ldr r0, [r4]
	bl sub_080067D8
	ldr r0, [r4]
	bl sub_080068E8
	movs r6, #0
	str r6, [r4]
	bl sub_0800AAF0
	bl sub_08010EE0
	bl sub_08008830
	bl sub_080082F4
	ldr r5, _08149ED0 @ =gUnk_02039FF0
	ldr r0, [r5]
	ldr r1, _08149ED4 @ =gUnk_02039FE8
	mov r8, r1
	ldr r1, [r1]
	bl sub_0800490C
	ldr r0, [r5]
	ldr r4, _08149ED8 @ =gUnk_02039FEC
	ldr r1, [r4]
	bl sub_0800490C
	str r6, [r4]
	mov r2, r8
	str r6, [r2]
	ldr r0, [r5]
	bl sub_08004928
	str r6, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08149ECC: .4byte gUnk_02029C28
_08149ED0: .4byte gUnk_02039FF0
_08149ED4: .4byte gUnk_02039FE8
_08149ED8: .4byte gUnk_02039FEC

	thumb_func_start sub_08149EDC
sub_08149EDC: @ 0x08149EDC
	push {lr}
	ldr r0, _08149EF8 @ =gUnk_02029C28
	ldr r0, [r0]
	bl sub_080066E4
	bl sub_0800853C
	bl sub_080103F0
	bl sub_0800AB08
	pop {r0}
	bx r0
	.align 2, 0
_08149EF8: .4byte gUnk_02029C28

	thumb_func_start sub_08149EFC
sub_08149EFC: @ 0x08149EFC
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08149F40
	cmp r1, r0
	bgt _08149F1C
	cmp r1, #0
	beq _08149FDE
	cmp r1, #1
	beq _08149F30
	b _08149FDE
_08149F1C:
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r1, r0
	beq _08149FAA
	cmp r1, r0
	blt _08149F68
	adds r0, #1
	cmp r1, r0
	beq _08149FBC
	b _08149FDE
_08149F30:
	ldr r0, [r4]
	cmp r0, #0
	beq _08149FDE
	bl sub_08139468
	movs r0, #0
	str r0, [r4]
	b _08149FDE
_08149F40:
	movs r0, #0xc
	movs r1, #4
	movs r2, #0x1e
	bl sub_08007654
	str r0, [r4, #4]
	movs r0, #0xc0
	movs r1, #0x10
	movs r2, #0x1e
	bl sub_08138E04
	str r0, [r4]
	movs r1, #0xd7
	lsls r1, r1, #1
	movs r0, #3
	bl sub_0814508C
	ldrh r0, [r5]
	adds r0, #1
	b _08149FDC
_08149F68:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08149F80
	bl sub_08006870
	cmp r0, #0
	beq _08149F80
	ldr r0, [r4, #4]
	bl sub_08006818
	movs r0, #0
	str r0, [r4, #4]
_08149F80:
	ldr r0, [r4]
	cmp r0, #0
	beq _08149F98
	bl sub_08139548
	cmp r0, #0
	beq _08149F98
	ldr r0, [r4]
	bl sub_08139468
	movs r0, #0
	str r0, [r4]
_08149F98:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _08149FDE
	ldr r0, [r4]
	cmp r0, #0
	bne _08149FDE
	ldrh r0, [r5]
	adds r0, #1
	b _08149FDC
_08149FAA:
	movs r0, #0
	movs r1, #0x10
	movs r2, #0x1e
	bl sub_08007654
	str r0, [r4, #4]
	ldrh r0, [r5]
	adds r0, #1
	b _08149FDC
_08149FBC:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08149FDA
	bl sub_08006870
	cmp r0, #0
	beq _08149FD4
	ldr r0, [r4, #4]
	bl sub_08006818
	movs r0, #0
	str r0, [r4, #4]
_08149FD4:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _08149FDE
_08149FDA:
	movs r0, #2
_08149FDC:
	strh r0, [r5]
_08149FDE:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08149FE8
sub_08149FE8: @ 0x08149FE8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0814A006
	cmp r1, r0
	ble _0814A098
	adds r0, #1
	cmp r1, r0
	beq _0814A06C
	b _0814A098
_0814A006:
	ldr r1, _0814A05C @ =gUnk_020025A0
	ldr r0, _0814A060 @ =0x00007FFF
	strh r0, [r1, #2]
	ldr r3, _0814A064 @ =gUnk_03000DD0
	adds r2, r3, #0
	adds r2, #0x4a
	ldrb r0, [r2]
	movs r1, #0
	movs r0, #0x44
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r0, #0x33
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x4c
	ldrb r2, [r0]
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x4d
	ldrb r0, [r1]
	movs r0, #0x10
	strb r0, [r1]
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _0814A068 @ =gUnk_0824DAEC
	movs r1, #3
	adds r2, r6, #0
	bl sub_080075C4
	str r0, [r4]
	movs r1, #0xd1
	lsls r1, r1, #1
	movs r0, #3
	bl sub_0814508C
	ldrh r0, [r5]
	adds r0, #1
	b _0814A096
	.align 2, 0
_0814A05C: .4byte gUnk_020025A0
_0814A060: .4byte 0x00007FFF
_0814A064: .4byte gUnk_03000DD0
_0814A068: .4byte gUnk_0824DAEC
_0814A06C:
	ldr r0, [r4]
	cmp r0, #0
	beq _0814A08A
	bl sub_08006870
	cmp r0, #0
	beq _0814A084
	ldr r0, [r4]
	bl sub_08006818
	movs r0, #0
	str r0, [r4]
_0814A084:
	ldr r0, [r4]
	cmp r0, #0
	bne _0814A098
_0814A08A:
	ldr r2, _0814A0A0 @ =gUnk_03000DD0
	ldrh r1, [r2]
	ldr r0, _0814A0A4 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #2
_0814A096:
	strh r0, [r5]
_0814A098:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0814A0A0: .4byte gUnk_03000DD0
_0814A0A4: .4byte 0x0000FBFF

	thumb_func_start sub_0814A0A8
sub_0814A0A8: @ 0x0814A0A8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldrh r1, [r6]
	ldr r2, _0814A0CC @ =0x00000101
	cmp r1, r2
	beq _0814A13C
	cmp r1, r2
	bgt _0814A0DA
	cmp r1, #1
	beq _0814A10A
	cmp r1, #1
	bgt _0814A0D0
	cmp r1, #0
	beq _0814A100
	b _0814A294
	.align 2, 0
_0814A0CC: .4byte 0x00000101
_0814A0D0:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0814A12A
	b _0814A294
_0814A0DA:
	ldr r0, _0814A0FC @ =0x00000103
	cmp r1, r0
	bne _0814A0E2
	b _0814A21C
_0814A0E2:
	cmp r1, r0
	bge _0814A0E8
	b _0814A204
_0814A0E8:
	adds r0, #2
	cmp r1, r0
	bne _0814A0F0
	b _0814A278
_0814A0F0:
	adds r0, #1
	cmp r1, r0
	bne _0814A0F8
	b _0814A282
_0814A0F8:
	b _0814A294
	.align 2, 0
_0814A0FC: .4byte 0x00000103
_0814A100:
	ldrh r0, [r6, #0x14]
	strh r0, [r5]
	ldrh r0, [r6, #0x16]
	strh r0, [r5, #2]
	b _0814A294
_0814A10A:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0814A118
	bl sub_08010A64
	movs r0, #0
	str r0, [r5, #8]
_0814A118:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0814A120
	b _0814A294
_0814A120:
	bl sub_08010A64
	movs r0, #0
	str r0, [r5, #0xc]
	b _0814A294
_0814A12A:
	ldr r1, _0814A134 @ =gUnk_020025A0
	ldr r0, _0814A138 @ =0x00007FFF
	strh r0, [r1, #2]
	strh r2, [r6]
	b _0814A294
	.align 2, 0
_0814A134: .4byte gUnk_020025A0
_0814A138: .4byte 0x00007FFF
_0814A13C:
	ldr r3, _0814A1F8 @ =gUnk_03000DD0
	adds r1, r3, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	movs r4, #0
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #0x33
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	strb r4, [r0]
	adds r1, r3, #0
	adds r1, #0x4d
	ldrb r0, [r1]
	movs r0, #0x10
	strb r0, [r1]
	adds r2, r3, #0
	adds r2, #0x42
	ldrb r0, [r2]
	movs r1, #0x3b
	strb r1, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r0, #0x3f
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x44
	ldrb r2, [r0]
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	strb r4, [r1]
	subs r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #3
	ldrb r0, [r1]
	strb r4, [r1]
	subs r1, #1
	ldrb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldrh r1, [r3]
	movs r2, #0xc8
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _0814A1FC @ =gUnk_0824DAF8
	movs r1, #4
	adds r2, r7, #0
	bl sub_080075C4
	str r0, [r5, #4]
	movs r0, #0x14
	strh r0, [r5, #0x10]
	movs r0, #0xa
	strh r0, [r5, #0x12]
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r0, #2
	ldrsh r2, [r5, r0]
	str r4, [sp]
	movs r0, #0
	movs r3, #0
	bl sub_08010B54
	str r0, [r5, #8]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r2, [r5, #2]
	adds r2, #6
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r4, [sp]
	movs r0, #1
	movs r3, #0
	bl sub_08010B54
	str r0, [r5, #0xc]
	ldr r1, _0814A200 @ =0x00000169
	movs r0, #2
	bl sub_0814508C
	ldrh r0, [r6]
	adds r0, #1
	b _0814A292
	.align 2, 0
_0814A1F8: .4byte gUnk_03000DD0
_0814A1FC: .4byte gUnk_0824DAF8
_0814A200: .4byte 0x00000169
_0814A204:
	ldrh r0, [r5, #0x10]
	adds r0, #4
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x12]
	cmp r1, #0x8b
	ble _0814A294
	ldrh r0, [r6]
	adds r0, #1
	b _0814A292
_0814A21C:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0814A23A
	bl sub_08006870
	cmp r0, #0
	beq _0814A234
	ldr r0, [r5, #4]
	bl sub_08006818
	movs r0, #0
	str r0, [r5, #4]
_0814A234:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0814A294
_0814A23A:
	ldr r0, [r5, #8]
	bl sub_08010A64
	ldr r0, [r5, #0xc]
	bl sub_08010A64
	movs r0, #0
	str r0, [r5, #0xc]
	str r0, [r5, #8]
	ldr r3, _0814A26C @ =gUnk_03000DD0
	adds r2, r3, #0
	adds r2, #0x4b
	ldrb r1, [r2]
	strb r0, [r2]
	ldrb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	strb r0, [r2]
	ldrh r1, [r3]
	ldr r0, _0814A270 @ =0x00009BFF
	ands r0, r1
	strh r0, [r3]
	ldr r0, _0814A274 @ =0x00000105
	b _0814A292
	.align 2, 0
_0814A26C: .4byte gUnk_03000DD0
_0814A270: .4byte 0x00009BFF
_0814A274: .4byte 0x00000105
_0814A278:
	movs r0, #0
	str r0, [r5, #0x14]
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
_0814A282:
	ldr r0, [r5, #0x14]
	adds r0, #1
	str r0, [r5, #0x14]
	cmp r0, #9
	ble _0814A294
	movs r0, #0
	str r0, [r5, #0x14]
	movs r0, #2
_0814A292:
	strh r0, [r6]
_0814A294:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0814A2A6
	movs r3, #0x10
	ldrsh r1, [r5, r3]
	movs r3, #0x12
	ldrsh r2, [r5, r3]
	bl sub_08010738
_0814A2A6:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0814A2C0
	ldrh r1, [r5, #0x10]
	adds r1, #0xc
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r5, #0x12]
	adds r2, #0xc
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08010738
_0814A2C0:
	movs r0, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0814A2CC
sub_0814A2CC: @ 0x0814A2CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x70
	mov r8, r0
	adds r6, r1, #0
	adds r7, r2, #0
	ldrh r1, [r6]
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, r0
	bne _0814A2E6
	b _0814A478
_0814A2E6:
	cmp r1, r0
	bgt _0814A316
	subs r0, #4
	cmp r1, r0
	beq _0814A36E
	cmp r1, r0
	bgt _0814A2FA
	cmp r1, #0
	beq _0814A364
	b _0814A59E
_0814A2FA:
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r1, r0
	beq _0814A3AC
	cmp r1, r0
	bgt _0814A3D4
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _0814A396
	bl sub_08006870
	cmp r0, #0
	beq _0814A38E
	b _0814A384
_0814A316:
	movs r0, #0x84
	lsls r0, r0, #1
	cmp r1, r0
	bne _0814A320
	b _0814A4C4
_0814A320:
	cmp r1, r0
	bgt _0814A34A
	subs r0, #2
	cmp r1, r0
	bne _0814A32C
	b _0814A488
_0814A32C:
	cmp r1, r0
	ble _0814A332
	b _0814A4A0
_0814A332:
	ldr r0, [r7, #0xc]
	bl sub_08006818
	movs r4, #0
	str r4, [r7, #0xc]
	ldr r0, [r7, #0x10]
	bl sub_08006818
	str r4, [r7, #0x10]
	ldrh r0, [r6]
	adds r0, #1
	b _0814A59C
_0814A34A:
	movs r0, #0x85
	lsls r0, r0, #1
	cmp r1, r0
	bne _0814A354
	b _0814A53C
_0814A354:
	cmp r1, r0
	bge _0814A35A
	b _0814A514
_0814A35A:
	adds r0, #1
	cmp r1, r0
	bne _0814A362
	b _0814A57C
_0814A362:
	b _0814A59E
_0814A364:
	movs r0, #0x78
	strh r0, [r7, #0x3a]
	movs r0, #0x50
	strh r0, [r7, #0x3c]
	b _0814A59E
_0814A36E:
	ldr r0, _0814A380 @ =gUnk_086A1F78
	movs r1, #2
	mov r2, r8
	bl sub_0800751C
	str r0, [r7, #4]
	ldrh r0, [r6]
	adds r0, #1
	b _0814A59C
	.align 2, 0
_0814A380: .4byte gUnk_086A1F78
_0814A384:
	ldr r0, [r7, #4]
	bl sub_08006818
	movs r0, #0
	str r0, [r7, #4]
_0814A38E:
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _0814A396
	b _0814A59E
_0814A396:
	ldr r0, _0814A3A8 @ =gUnk_086A1F90
	movs r1, #3
	mov r2, r8
	bl sub_08007578
	str r0, [r7, #4]
	ldrh r0, [r6]
	adds r0, #1
	b _0814A59C
	.align 2, 0
_0814A3A8: .4byte gUnk_086A1F90
_0814A3AC:
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _0814A3CC
	bl sub_08006870
	cmp r0, #0
	beq _0814A3C4
	ldr r0, [r7, #4]
	bl sub_08006818
	movs r0, #0
	str r0, [r7, #4]
_0814A3C4:
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _0814A3CC
	b _0814A59E
_0814A3CC:
	ldr r0, _0814A3D0 @ =0x00000103
	b _0814A59C
	.align 2, 0
_0814A3D0: .4byte 0x00000103
_0814A3D4:
	ldr r0, _0814A45C @ =0x0600E000
	bl sub_08004944
	adds r4, r0, #0
	ldr r0, _0814A460 @ =0x0600C000
	bl sub_08004950
	ldr r5, _0814A464 @ =gUnk_03000DD0
	movs r2, #0x82
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	orrs r0, r4
	movs r2, #1
	ldrh r1, [r5, #6]
	orrs r0, r2
	strh r0, [r5, #6]
	ldrh r0, [r5]
	ldr r1, _0814A468 @ =0x0000FFF8
	ands r1, r0
	movs r3, #0
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x42
	ldrb r0, [r2]
	movs r0, #0x3f
	strb r0, [r2]
	adds r2, #2
	ldrb r0, [r2]
	movs r0, #0x3b
	strb r0, [r2]
	subs r2, #5
	ldrb r0, [r2]
	strb r3, [r2]
	subs r2, #1
	ldrb r0, [r2]
	movs r0, #0xff
	strb r0, [r2]
	movs r2, #0x90
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r5]
	ldr r0, _0814A46C @ =sub_0814A8FC
	movs r1, #4
	mov r2, sp
	mov r3, r8
	bl sub_0800682C
	str r0, [r7, #0x10]
	ldr r0, _0814A470 @ =sub_0814A898
	movs r1, #4
	mov r2, sp
	mov r3, r8
	bl sub_0800682C
	str r0, [r7, #0xc]
	ldr r0, _0814A474 @ =sub_0814A5AC
	movs r1, #0x74
	mov r2, sp
	mov r3, r8
	bl sub_0800682C
	str r0, [r7, #8]
	ldrh r0, [r6]
	adds r0, #1
	b _0814A59C
	.align 2, 0
_0814A45C: .4byte 0x0600E000
_0814A460: .4byte 0x0600C000
_0814A464: .4byte gUnk_03000DD0
_0814A468: .4byte 0x0000FFF8
_0814A46C: .4byte sub_0814A8FC
_0814A470: .4byte sub_0814A898
_0814A474: .4byte sub_0814A5AC
_0814A478:
	ldrb r0, [r7]
	cmp r0, #0
	bne _0814A480
	b _0814A59E
_0814A480:
	ldr r0, _0814A484 @ =0x00000105
	b _0814A59C
	.align 2, 0
_0814A484: .4byte 0x00000105
_0814A488:
	ldr r0, _0814A49C @ =sub_08149EFC
	add r2, sp, #0x1c
	movs r1, #8
	mov r3, r8
	bl sub_0800682C
	str r0, [r7, #0xc]
	ldrh r0, [r6]
	adds r0, #1
	b _0814A59C
	.align 2, 0
_0814A49C: .4byte sub_08149EFC
_0814A4A0:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _0814A4BE
	bl sub_08006870
	cmp r0, #0
	beq _0814A4B8
	ldr r0, [r7, #0xc]
	bl sub_08006818
	movs r0, #0
	str r0, [r7, #0xc]
_0814A4B8:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _0814A59E
_0814A4BE:
	ldrh r0, [r6]
	adds r0, #1
	b _0814A59C
_0814A4C4:
	ldr r0, [r7, #8]
	bl sub_08006818
	movs r0, #0
	mov r8, r0
	str r0, [r7, #8]
	ldr r5, _0814A500 @ =gUnk_03000DD0
	ldrh r1, [r5]
	ldr r0, _0814A504 @ =0x0000FFF8
	ands r0, r1
	strh r0, [r5]
	ldr r0, _0814A508 @ =0x0600E800
	bl sub_08004944
	adds r4, r0, #0
	ldr r0, _0814A50C @ =0x0600C000
	bl sub_08004950
	orrs r4, r0
	ldrh r0, [r5, #6]
	strh r4, [r5, #6]
	ldrh r1, [r5]
	ldr r0, _0814A510 @ =0x000013FF
	ands r0, r1
	strh r0, [r5]
	mov r2, r8
	str r2, [r7, #0x14]
	ldrh r0, [r6]
	adds r0, #1
	b _0814A59C
	.align 2, 0
_0814A500: .4byte gUnk_03000DD0
_0814A504: .4byte 0x0000FFF8
_0814A508: .4byte 0x0600E800
_0814A50C: .4byte 0x0600C000
_0814A510: .4byte 0x000013FF
_0814A514:
	ldr r0, [r7, #0x14]
	adds r0, #1
	str r0, [r7, #0x14]
	cmp r0, #9
	ble _0814A59E
	movs r0, #0
	str r0, [r7, #0x14]
	ldr r0, _0814A538 @ =sub_08149FE8
	add r2, sp, #0x38
	movs r1, #4
	mov r3, r8
	bl sub_0800682C
	str r0, [r7, #8]
	ldrh r0, [r6]
	adds r0, #1
	b _0814A59C
	.align 2, 0
_0814A538: .4byte sub_08149FE8
_0814A53C:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _0814A55A
	bl sub_08006870
	cmp r0, #0
	beq _0814A554
	ldr r0, [r7, #8]
	bl sub_08006818
	movs r0, #0
	str r0, [r7, #8]
_0814A554:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0814A59E
_0814A55A:
	add r2, sp, #0x54
	ldrh r0, [r7, #0x3a]
	strh r0, [r2, #0x14]
	ldrh r0, [r7, #0x3c]
	strh r0, [r2, #0x16]
	ldr r0, _0814A578 @ =sub_0814A0A8
	movs r1, #0x18
	mov r3, r8
	bl sub_0800682C
	str r0, [r7, #8]
	ldrh r0, [r6]
	adds r0, #1
	b _0814A59C
	.align 2, 0
_0814A578: .4byte sub_0814A0A8
_0814A57C:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _0814A59A
	bl sub_08006870
	cmp r0, #0
	beq _0814A594
	ldr r0, [r7, #8]
	bl sub_08006818
	movs r0, #0
	str r0, [r7, #8]
_0814A594:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0814A59E
_0814A59A:
	movs r0, #2
_0814A59C:
	strh r0, [r6]
_0814A59E:
	movs r0, #0
	add sp, #0x70
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0814A5AC
sub_0814A5AC: @ 0x0814A5AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	mov sl, r0
	mov r8, r1
	adds r7, r2, #0
	ldrh r1, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0814A614
	cmp r1, r0
	bgt _0814A5D6
	cmp r1, #0
	beq _0814A5E8
	cmp r1, #1
	beq _0814A5F4
	b _0814A78E
_0814A5D6:
	ldr r0, _0814A5E4 @ =0x00000101
	cmp r1, r0
	beq _0814A658
	adds r0, #1
	cmp r1, r0
	beq _0814A6C4
	b _0814A78E
	.align 2, 0
_0814A5E4: .4byte 0x00000101
_0814A5E8:
	ldr r0, _0814A5F0 @ =0x00008463
	strh r0, [r7, #0x16]
	b _0814A78E
	.align 2, 0
_0814A5F0: .4byte 0x00008463
_0814A5F4:
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _0814A602
	bl sub_08008760
	movs r0, #0
	str r0, [r7, #4]
_0814A602:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0814A60A
	b _0814A78E
_0814A60A:
	bl sub_08010A64
	movs r0, #0
	str r0, [r7, #8]
	b _0814A78E
_0814A614:
	movs r0, #0x1d
	strh r0, [r7, #0x14]
	movs r0, #0xc
	ldrsh r2, [r7, r0]
	movs r1, #0xe
	ldrsh r3, [r7, r1]
	movs r4, #0x10
	ldrsh r0, [r7, r4]
	str r0, [sp]
	movs r1, #0x12
	ldrsh r0, [r7, r1]
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0x1d
	bl sub_0800B69C
	str r0, [r7, #4]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	movs r3, #0xe
	ldrsh r2, [r7, r3]
	movs r4, #0x14
	ldrsh r3, [r7, r4]
	movs r0, #0
	bl sub_08010AE4
	str r0, [r7, #8]
	ldr r0, _0814A654 @ =0x00000101
	mov r1, r8
	strh r0, [r1]
	b _0814A78E
	.align 2, 0
_0814A654: .4byte 0x00000101
_0814A658:
	ldr r0, [r7, #0x1c]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r5, _0814A6E8 @ =gUnk_086A2060
	adds r1, r1, r5
	ldr r0, [r7, #0x18]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #4
	ldr r4, _0814A6EC @ =gUnk_086A1FC0
	adds r2, r2, r4
	adds r3, r7, #0
	adds r3, #0x24
	add r0, sp, #8
	str r0, [sp]
	movs r0, #5
	bl sub_08007A8C
	ldr r0, [r7, #0x1c]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r5
	ldr r0, [r7, #0x18]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #4
	adds r4, #0x28
	adds r2, r2, r4
	adds r3, r7, #0
	adds r3, #0x4c
	add r4, sp, #8
	str r4, [sp]
	movs r0, #5
	bl sub_08007A8C
	movs r0, #0
	strh r0, [r7, #0x20]
	ldr r1, [r7, #0x1c]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r5, #0x20
	adds r0, r0, r5
	ldr r1, [r0, #4]
	ldr r0, [r0]
	bl __fixdfsi
	strh r0, [r7, #0x22]
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0814A6C4:
	ldrb r0, [r7]
	cmp r0, #0
	beq _0814A6D8
	ldrh r1, [r7, #0x14]
	movs r2, #0x14
	ldrsh r0, [r7, r2]
	cmp r0, #0
	ble _0814A6D8
	subs r0, r1, #1
	strh r0, [r7, #0x14]
_0814A6D8:
	movs r3, #0x14
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bne _0814A6F0
	movs r0, #2
	mov r4, r8
	strh r0, [r4]
	b _0814A78E
	.align 2, 0
_0814A6E8: .4byte gUnk_086A2060
_0814A6EC: .4byte gUnk_086A1FC0
_0814A6F0:
	movs r1, #0x20
	ldrsh r0, [r7, r1]
	bl __floatsidf
	ldr r2, [r7, #0x1c]
	lsls r3, r2, #2
	adds r3, r3, r2
	lsls r3, r3, #3
	ldr r6, _0814A808 @ =gUnk_086A2060
	adds r3, r3, r6
	ldr r4, [r7, #0x18]
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #4
	ldr r5, _0814A80C @ =gUnk_086A1FC0
	adds r2, r2, r5
	str r2, [sp]
	adds r2, r7, #0
	adds r2, #0x24
	str r2, [sp, #4]
	movs r2, #5
	bl sub_08007CB8
	bl __fixdfsi
	movs r2, #0
	mov sb, r2
	strh r0, [r7, #0x10]
	movs r3, #0x20
	ldrsh r0, [r7, r3]
	bl __floatsidf
	ldr r2, [r7, #0x1c]
	lsls r3, r2, #2
	adds r3, r3, r2
	lsls r3, r3, #3
	adds r3, r3, r6
	ldr r4, [r7, #0x18]
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #4
	adds r5, #0x28
	adds r2, r2, r5
	str r2, [sp]
	adds r2, r7, #0
	adds r2, #0x4c
	str r2, [sp, #4]
	movs r2, #5
	bl sub_08007CB8
	bl __fixdfsi
	strh r0, [r7, #0x12]
	ldrh r0, [r7, #0x20]
	adds r0, #1
	strh r0, [r7, #0x20]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x22
	ldrsh r1, [r7, r4]
	cmp r0, r1
	blt _0814A78E
	ldr r0, [r7, #0x1c]
	adds r0, #1
	str r0, [r7, #0x1c]
	cmp r0, #3
	bls _0814A77A
	mov r0, sb
	str r0, [r7, #0x1c]
_0814A77A:
	ldr r0, [r7, #0x18]
	adds r0, #1
	str r0, [r7, #0x18]
	cmp r0, #1
	bls _0814A788
	mov r1, sb
	str r1, [r7, #0x18]
_0814A788:
	ldr r0, _0814A810 @ =0x00000101
	mov r2, r8
	strh r0, [r2]
_0814A78E:
	mov r0, sl
	bl sub_080068AC
	bl sub_080068B0
	ldrh r1, [r0, #0x3a]
	strh r1, [r7, #0xc]
	ldrh r0, [r0, #0x3c]
	strh r0, [r7, #0xe]
	ldr r3, [r7, #4]
	cmp r3, #0
	beq _0814A7DA
	movs r4, #0x16
	ldrsh r1, [r7, r4]
	ldrh r2, [r7, #0x14]
	movs r4, #0x14
	ldrsh r0, [r7, r4]
	cmp r1, r0
	beq _0814A7BE
	strh r2, [r7, #0x16]
	adds r1, r0, #0
	adds r0, r3, #0
	bl sub_0800D4AC
_0814A7BE:
	ldr r0, [r7, #4]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	movs r3, #0xe
	ldrsh r2, [r7, r3]
	bl sub_0800D3B4
	ldr r0, [r7, #4]
	movs r4, #0x10
	ldrsh r1, [r7, r4]
	movs r3, #0x12
	ldrsh r2, [r7, r3]
	bl sub_0800D3D0
_0814A7DA:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _0814A7F6
	movs r4, #0xc
	ldrsh r1, [r7, r4]
	movs r3, #0xe
	ldrsh r2, [r7, r3]
	bl sub_08010654
	ldr r0, [r7, #8]
	movs r4, #0x14
	ldrsh r1, [r7, r4]
	bl sub_08010710
_0814A7F6:
	movs r0, #0
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0814A808: .4byte gUnk_086A2060
_0814A80C: .4byte gUnk_086A1FC0
_0814A810: .4byte 0x00000101

	thumb_func_start sub_0814A814
sub_0814A814: @ 0x0814A814
	push {lr}
	sub sp, #0x20
	ldr r0, _0814A830 @ =gUnk_02029C28
	ldr r0, [r0]
	ldr r1, _0814A834 @ =sub_0814A2CC
	movs r2, #0
	str r2, [sp]
	movs r2, #0x40
	add r3, sp, #4
	bl sub_08006620
	add sp, #0x20
	pop {r1}
	bx r1
	.align 2, 0
_0814A830: .4byte gUnk_02029C28
_0814A834: .4byte sub_0814A2CC

	thumb_func_start sub_0814A838
sub_0814A838: @ 0x0814A838
	push {lr}
	adds r1, r0, #0
	ldr r0, _0814A848 @ =gUnk_02029C28
	ldr r0, [r0]
	bl sub_08006570
	pop {r0}
	bx r0
	.align 2, 0
_0814A848: .4byte gUnk_02029C28

	thumb_func_start sub_0814A84C
sub_0814A84C: @ 0x0814A84C
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_080068B0
	strh r4, [r0, #0x3a]
	strh r5, [r0, #0x3c]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0814A868
sub_0814A868: @ 0x0814A868
	push {r4, r5, lr}
	adds r5, r1, #0
	bl sub_080068B0
	adds r4, r0, #0
	adds r0, #0x1a
	adds r1, r5, #0
	movs r2, #0x20
	bl memcpy2
	movs r0, #1
	strb r0, [r4, #0x18]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814A888
sub_0814A888: @ 0x0814A888
	push {lr}
	bl sub_080068B0
	movs r1, #1
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814A898
sub_0814A898: @ 0x0814A898
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0814A8B6
	cmp r1, r0
	ble _0814A8EC
	adds r0, #1
	cmp r1, r0
	beq _0814A8C8
	b _0814A8EC
_0814A8B6:
	ldr r0, _0814A8F4 @ =gUnk_0824DAD4
	movs r1, #6
	adds r2, r3, #0
	bl sub_080075C4
	str r0, [r5]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0814A8C8:
	ldr r1, _0814A8F8 @ =gUnk_03000DD0
	adds r2, r1, #0
	adds r2, #0x4a
	ldrb r0, [r2]
	movs r0, #0x44
	strb r0, [r2]
	adds r1, #0x4b
	ldrb r0, [r1]
	movs r0, #0x33
	strb r0, [r1]
	ldr r0, [r5]
	bl sub_08006870
	cmp r0, #0
	beq _0814A8EC
	ldr r0, [r5]
	bl sub_080075F8
_0814A8EC:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0814A8F4: .4byte gUnk_0824DAD4
_0814A8F8: .4byte gUnk_03000DD0

	thumb_func_start sub_0814A8FC
sub_0814A8FC: @ 0x0814A8FC
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r2, #0
	ldrh r1, [r1]
	cmp r1, #1
	beq _0814A916
	cmp r1, #1
	ble _0814A95A
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0814A926
	b _0814A95A
_0814A916:
	ldr r0, [r5]
	cmp r0, #0
	beq _0814A95A
	bl sub_08139468
	movs r0, #0
	str r0, [r5]
	b _0814A95A
_0814A926:
	adds r0, r3, #0
	bl sub_080068AC
	bl sub_080068B0
	adds r4, r0, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _0814A95A
	ldr r0, [r5]
	cmp r0, #0
	beq _0814A946
	bl sub_08139468
	movs r0, #0
	str r0, [r5]
_0814A946:
	adds r3, r4, #0
	adds r3, #0x1a
	movs r0, #0xc0
	movs r1, #0x10
	movs r2, #0x1e
	bl sub_08138580
	str r0, [r5]
	movs r0, #0
	strb r0, [r4, #0x18]
_0814A95A:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0814A964
sub_0814A964: @ 0x0814A964
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r1, [sp, #0x20]
	mov sb, r2
	ldrh r2, [r1]
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r2, r0
	bne _0814A980
	b _0814AB54
_0814A980:
	cmp r2, r0
	bgt _0814A9A4
	cmp r2, #1
	beq _0814A9CC
	mov r0, sb
	adds r0, #0x60
	str r0, [sp, #0x34]
	cmp r2, #1
	bgt _0814A994
	b _0814AD72
_0814A994:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	beq _0814A9DC
	adds r0, #1
	cmp r2, r0
	beq _0814AA2C
	b _0814AD72
_0814A9A4:
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r2, r0
	bne _0814A9AE
	b _0814ACE8
_0814A9AE:
	cmp r2, r0
	bge _0814A9B4
	b _0814AB64
_0814A9B4:
	adds r0, #1
	cmp r2, r0
	bne _0814A9BC
	b _0814AD0C
_0814A9BC:
	adds r0, #1
	cmp r2, r0
	bne _0814A9C4
	b _0814AD66
_0814A9C4:
	mov r1, sb
	adds r1, #0x60
	str r1, [sp, #0x34]
	b _0814AD72
_0814A9CC:
	mov r4, sb
	adds r4, #0x60
	adds r0, r4, #0
	movs r1, #0x30
	bl sub_0800AB80
	str r4, [sp, #0x34]
	b _0814AD72
_0814A9DC:
	movs r1, #0
	mov r8, r1
	movs r3, #0x20
	add r3, sb
	mov sl, r3
	adds r7, r2, #0
	mov r6, sb
	adds r6, #0x40
_0814A9EC:
	lsls r0, r1, #3
	adds r5, r1, #1
	mov r4, sl
	adds r3, r0, r4
	mov r1, sb
	adds r2, r0, r1
	adds r1, r0, #0
	movs r4, #3
_0814A9FC:
	mov r0, r8
	strh r0, [r2]
	strh r7, [r3]
	adds r0, r6, r1
	strh r7, [r0]
	adds r3, #2
	adds r2, #2
	adds r1, #2
	subs r4, #1
	cmp r4, #0
	bge _0814A9FC
	adds r1, r5, #0
	cmp r1, #3
	ble _0814A9EC
	movs r1, #0xbe
	lsls r1, r1, #1
	movs r0, #1
	bl sub_0814508C
	ldr r1, [sp, #0x20]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0814AD72
_0814AA2C:
	movs r2, #0
	str r2, [sp, #0x28]
	movs r3, #0
	str r3, [sp, #0x24]
_0814AA34:
	ldr r4, [sp, #0x28]
	lsls r1, r4, #3
	ldr r7, _0814AAD4 @ =gUnk_086A2218
	adds r0, r1, r7
	ldr r0, [r0]
	ldr r2, _0814AAD8 @ =gUnk_086A221C
	adds r1, r1, r2
	ldr r1, [r1]
	adds r4, #1
	str r4, [sp, #0x30]
	cmp r1, #0
	ble _0814AB38
	str r0, [sp, #0x38]
	ldr r3, [sp, #0x24]
	lsls r0, r3, #2
	ldr r4, [sp, #0x34]
	adds r0, r0, r4
	mov sl, r0
	str r1, [sp, #0x2c]
_0814AA5A:
	ldr r7, [sp, #0x24]
	cmp r7, #0x2f
	bgt _0814AB28
	ldr r1, [sp, #0x38]
	ldrh r0, [r1]
	adds r0, #0x78
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrh r0, [r1, #2]
	adds r0, #0x50
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _0814AADC @ =0x06017E00
	bl sub_08149DFC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r6, r1, #0x10
	str r6, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0xf
	str r0, [sp, #0x14]
	movs r0, #0
	movs r2, #0
	movs r3, #3
	bl sub_0800A4D8
	mov r3, sl
	str r0, [r3]
	movs r1, #2
	bl sub_0800A918
	mov r1, sl
	ldr r0, [r1]
	movs r1, #1
	bl sub_0800AA68
	mov r2, sl
	ldr r0, [r2]
	movs r1, #0
	bl sub_0800A96C
	movs r5, #0
	cmp r4, #0x77
	bgt _0814AAE0
	cmp r6, #0x4f
	ble _0814AAF6
	cmp r6, #0x50
	ble _0814AAE0
	movs r5, #1
	b _0814AAF6
	.align 2, 0
_0814AAD4: .4byte gUnk_086A2218
_0814AAD8: .4byte gUnk_086A221C
_0814AADC: .4byte 0x06017E00
_0814AAE0:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r5, #3
	cmp r0, #0x78
	ble _0814AAF6
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x50
	ble _0814AAF6
	movs r5, #2
_0814AAF6:
	mov r4, sl
	adds r4, #4
	mov sl, r4
	subs r4, #4
	ldm r4!, {r0}
	lsls r1, r5, #3
	ldr r2, _0814AB4C @ =gUnk_086A2138
	adds r1, r1, r2
	bl sub_0800AAC4
	movs r0, #0x34
	ldr r7, [sp, #0x24]
	muls r0, r7, r0
	add r0, sb
	ldr r2, _0814AB50 @ =0x00000121
	adds r1, r0, r2
	add r3, sp, #0x28
	ldrb r3, [r3]
	strb r3, [r1]
	movs r4, #0x91
	lsls r4, r4, #1
	adds r0, r0, r4
	strb r5, [r0]
	adds r7, #1
	str r7, [sp, #0x24]
_0814AB28:
	ldr r0, [sp, #0x38]
	adds r0, #4
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x2c]
	subs r1, #1
	str r1, [sp, #0x2c]
	cmp r1, #0
	bne _0814AA5A
_0814AB38:
	ldr r2, [sp, #0x30]
	str r2, [sp, #0x28]
	cmp r2, #3
	bhi _0814AB42
	b _0814AA34
_0814AB42:
	movs r0, #0x81
	lsls r0, r0, #1
	ldr r3, [sp, #0x20]
	strh r0, [r3]
	b _0814AD72
	.align 2, 0
_0814AB4C: .4byte gUnk_086A2138
_0814AB50: .4byte 0x00000121
_0814AB54:
	ldr r1, _0814AB80 @ =0x00000AE1
	add r1, sb
	movs r0, #0
	strb r0, [r1]
	ldr r4, [sp, #0x20]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0814AB64:
	ldr r0, _0814AB80 @ =0x00000AE1
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _0814AB88
	ldr r0, _0814AB84 @ =0x00000105
	ldr r7, [sp, #0x20]
	strh r0, [r7]
	mov r0, sb
	adds r0, #0x60
	str r0, [sp, #0x34]
	b _0814AD72
	.align 2, 0
_0814AB80: .4byte 0x00000AE1
_0814AB84: .4byte 0x00000105
_0814AB88:
	movs r7, #0
	mov r1, sb
	adds r1, #0x60
	str r1, [sp, #0x34]
	movs r2, #0x1a
	add r2, sp
	mov sl, r2
_0814AB96:
	lsls r0, r7, #2
	ldr r3, [sp, #0x34]
	adds r0, r3, r0
	ldr r2, [r0]
	cmp r2, #0
	bne _0814ABA4
	b _0814ACA6
_0814ABA4:
	movs r0, #0x34
	muls r0, r7, r0
	mov r4, sb
	adds r1, r4, r0
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0814ACA6
	ldr r4, _0814AC08 @ =0x00000121
	adds r0, r1, r4
	ldrb r1, [r0]
	ldr r4, _0814AC0C @ =0x00000AE1
	add r4, sb
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r1, r0
	bne _0814ACA6
	adds r0, r2, #0
	add r1, sp, #0x18
	mov r2, sl
	add r3, sp, #0x1c
	bl sub_0800A8B0
	add r0, sp, #0x18
	ldrh r0, [r0]
	subs r0, #0x78
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r2, sl
	ldrh r0, [r2]
	subs r0, #0x50
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r6, #0
	movs r3, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r4, #0x1a
	add r4, sp
	mov r8, r4
	cmp r0, #1
	beq _0814AC2E
	cmp r0, #1
	bgt _0814AC10
	cmp r0, #0
	beq _0814AC1A
	b _0814AC60
	.align 2, 0
_0814AC08: .4byte 0x00000121
_0814AC0C: .4byte 0x00000AE1
_0814AC10:
	cmp r0, #2
	beq _0814AC44
	cmp r0, #3
	beq _0814AC44
	b _0814AC60
_0814AC1A:
	lsls r0, r1, #0x11
	movs r1, #0xf0
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	lsls r0, r2, #0x11
	movs r2, #0xa0
	lsls r2, r2, #0xf
	adds r0, r0, r2
	b _0814AC5E
_0814AC2E:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #0x78
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	b _0814AC58
_0814AC44:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, #0x78
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
_0814AC58:
	adds r0, r0, r1
	adds r0, #0x50
	lsls r0, r0, #0x10
_0814AC5E:
	lsrs r6, r0, #0x10
_0814AC60:
	movs r0, #0x34
	adds r5, r7, #0
	muls r5, r0, r5
	adds r0, #0xec
	adds r4, r5, r0
	add r4, sb
	adds r0, r4, #4
	add r1, sp, #0x18
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r2, #0x96
	str r2, [sp]
	movs r2, #0
	bl sub_08007DE8
	adds r4, #0x1c
	mov r3, r8
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r3, r6, #0x10
	asrs r3, r3, #0x10
	movs r2, #0x96
	str r2, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08007DE8
	add r5, sb
	movs r3, #0x90
	lsls r3, r3, #1
	adds r5, r5, r3
	movs r0, #1
	strb r0, [r5]
_0814ACA6:
	adds r7, #1
	cmp r7, #0x2f
	bgt _0814ACAE
	b _0814AB96
_0814ACAE:
	movs r3, #0xae
	lsls r3, r3, #4
	add r3, sb
	ldr r2, _0814ACE0 @ =0x00000AE1
	add r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	lsls r0, r1
	ldrb r1, [r3]
	orrs r0, r1
	movs r1, #0
	strb r0, [r3]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r0, _0814ACE4 @ =0x00000AE4
	add r0, sb
	str r1, [r0]
	ldr r4, [sp, #0x20]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	b _0814AD72
	.align 2, 0
_0814ACE0: .4byte 0x00000AE1
_0814ACE4: .4byte 0x00000AE4
_0814ACE8:
	ldr r1, _0814AD04 @ =0x00000AE4
	add r1, sb
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	mov r7, sb
	adds r7, #0x60
	str r7, [sp, #0x34]
	cmp r0, #2
	ble _0814AD72
	ldr r0, _0814AD08 @ =0x00000103
	ldr r1, [sp, #0x20]
	strh r0, [r1]
	b _0814AD72
	.align 2, 0
_0814AD04: .4byte 0x00000AE4
_0814AD08: .4byte 0x00000103
_0814AD0C:
	movs r7, #0
	movs r6, #0
	mov r2, sb
	adds r2, #0x60
	str r2, [sp, #0x34]
	adds r5, r2, #0
_0814AD18:
	ldr r0, [r5]
	cmp r0, #0
	beq _0814AD4E
	movs r0, #0x34
	adds r1, r7, #0
	muls r1, r0, r1
	mov r3, sb
	adds r0, r3, r1
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814AD50
	adds r0, r1, r4
	adds r4, r3, r0
	adds r0, r4, #4
	bl sub_08008158
	cmp r0, #0
	beq _0814AD50
	adds r0, r4, #0
	adds r0, #0x1c
	bl sub_08008158
	cmp r0, #0
	beq _0814AD50
_0814AD4E:
	adds r6, #1
_0814AD50:
	adds r5, #4
	adds r7, #1
	cmp r7, #0x2f
	ble _0814AD18
	cmp r6, #0x30
	bne _0814AD72
	movs r0, #0x83
	lsls r0, r0, #1
	ldr r7, [sp, #0x20]
	strh r0, [r7]
	b _0814AD72
_0814AD66:
	movs r0, #2
	ldr r1, [sp, #0x20]
	strh r0, [r1]
	mov r2, sb
	adds r2, #0x60
	str r2, [sp, #0x34]
_0814AD72:
	movs r5, #0
	movs r6, #0xae
	lsls r6, r6, #4
	add r6, sb
	ldr r7, _0814AF14 @ =gUnk_086A2238
_0814AD7C:
	movs r0, #0
	ldrsb r0, [r6, r0]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0814ADC6
	lsls r4, r5, #3
	mov r3, sb
	adds r1, r3, r4
	lsls r3, r5, #1
	adds r3, r3, r7
	ldrh r0, [r3]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	mov r1, sb
	adds r1, #2
	adds r1, r1, r4
	ldrh r0, [r3]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	mov r2, sb
	adds r2, #4
	adds r2, r2, r4
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	mov r2, sb
	adds r2, #6
	adds r2, r2, r4
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
_0814ADC6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0814AD7C
	movs r2, #0
	movs r3, #0xae
	lsls r3, r3, #4
	add r3, sb
	mov ip, r3
_0814ADDA:
	mov r4, ip
	movs r1, #0
	ldrsb r1, [r4, r1]
	asrs r1, r2
	movs r0, #1
	ands r1, r0
	adds r7, r2, #1
	mov sl, r7
	cmp r1, #0
	beq _0814AE2C
	movs r5, #0
	mov r0, sb
	adds r0, #0x20
	str r0, [sp, #0x3c]
	movs r1, #0x40
	add r1, sb
	mov r8, r1
	lsls r6, r2, #3
	lsls r0, r2, #2
	ldr r2, _0814AF18 @ =gUnk_086A2240
	adds r4, r0, r2
_0814AE04:
	lsls r1, r5, #1
	adds r1, r1, r6
	ldr r7, [sp, #0x3c]
	adds r3, r7, r1
	add r1, r8
	movs r0, #0
	ldrsh r2, [r3, r0]
	ldrh r7, [r4]
	adds r2, r2, r7
	movs r7, #0
	ldrsh r0, [r1, r7]
	ldrh r7, [r4, #2]
	adds r0, r0, r7
	strh r2, [r3]
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0814AE04
_0814AE2C:
	mov r1, sl
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0814ADDA
	movs r7, #0
	ldr r2, _0814AF1C @ =0x0000016F
	mov r8, r2
	ldr r6, [sp, #0x34]
_0814AE3E:
	ldr r0, [r6]
	cmp r0, #0
	beq _0814AEAC
	movs r0, #0x34
	adds r4, r7, #0
	muls r4, r0, r4
	mov r3, sb
	adds r5, r3, r4
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814AEAC
	adds r4, r4, r1
	add r4, sb
	adds r0, r4, #4
	bl sub_08007E68
	adds r4, #0x1c
	adds r0, r4, #0
	bl sub_08007E68
	movs r2, #0x92
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r2, r5, r3
	ldr r0, [r6]
	movs r3, #0
	ldrsh r4, [r1, r3]
	movs r1, #0
	ldrsh r5, [r2, r1]
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800A8C8
	adds r4, #0x40
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, r8
	bhi _0814AEA2
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r5, r0
	blt _0814AEA2
	cmp r5, #0xdf
	ble _0814AEAC
_0814AEA2:
	ldr r0, [r6]
	bl sub_0800AAC8
	movs r0, #0
	str r0, [r6]
_0814AEAC:
	adds r6, #4
	adds r7, #1
	cmp r7, #0x2f
	ble _0814AE3E
	movs r6, #0
	ldr r4, [sp, #0x34]
_0814AEB8:
	ldr r5, [r4]
	cmp r5, #0
	beq _0814AEF8
	movs r0, #0x34
	muls r0, r6, r0
	mov r2, sb
	adds r1, r2, r0
	movs r3, #0x91
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r2, [r0]
	lsls r2, r2, #1
	ldr r7, _0814AF20 @ =0x00000121
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r2, r2, r0
	mov r1, sb
	adds r0, r1, r2
	ldrh r3, [r0]
	adds r1, #0x20
	adds r1, r1, r2
	mov r0, sb
	adds r0, #0x40
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r7, #0
	ldrsh r2, [r0, r7]
	adds r0, r5, #0
	bl sub_0800AA6C
_0814AEF8:
	adds r4, #4
	adds r6, #1
	cmp r6, #0x2f
	ble _0814AEB8
	movs r0, #0
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0814AF14: .4byte gUnk_086A2238
_0814AF18: .4byte gUnk_086A2240
_0814AF1C: .4byte 0x0000016F
_0814AF20: .4byte 0x00000121

	thumb_func_start sub_0814AF24
sub_0814AF24: @ 0x0814AF24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #0x1c]
	mov sb, r1
	adds r6, r2, #0
	ldrh r1, [r1]
	ldr r0, _0814AF5C @ =0x00000103
	cmp r1, r0
	beq _0814B000
	cmp r1, r0
	bgt _0814AF60
	subs r0, #3
	cmp r1, r0
	beq _0814AF94
	cmp r1, r0
	bgt _0814AF4E
	b _0814B194
_0814AF4E:
	adds r0, #1
	cmp r1, r0
	beq _0814AFBC
	adds r0, #1
	cmp r1, r0
	beq _0814AFD0
	b _0814B194
	.align 2, 0
_0814AF5C: .4byte 0x00000103
_0814AF60:
	movs r0, #0x83
	lsls r0, r0, #1
	cmp r1, r0
	bne _0814AF6A
	b _0814B134
_0814AF6A:
	cmp r1, r0
	bgt _0814AF7C
	subs r0, #2
	cmp r1, r0
	beq _0814B01C
	adds r0, #1
	cmp r1, r0
	beq _0814B030
	b _0814B194
_0814AF7C:
	ldr r0, _0814AF90 @ =0x00000107
	cmp r1, r0
	bne _0814AF84
	b _0814B17A
_0814AF84:
	adds r0, #1
	cmp r1, r0
	bne _0814AF8C
	b _0814B18E
_0814AF8C:
	b _0814B194
	.align 2, 0
_0814AF90: .4byte 0x00000107
_0814AF94:
	movs r0, #4
	bl sub_0814531C
	ldr r2, _0814AFB0 @ =gUnk_03000DD0
	ldrh r1, [r2]
	ldr r0, _0814AFB4 @ =0x0000FFF8
	ands r0, r1
	ldr r1, _0814AFB8 @ =0x000011FF
	ands r0, r1
	strh r0, [r2]
	mov r1, sb
	ldrh r0, [r1]
	adds r0, #1
	b _0814B192
	.align 2, 0
_0814AFB0: .4byte gUnk_03000DD0
_0814AFB4: .4byte 0x0000FFF8
_0814AFB8: .4byte 0x000011FF
_0814AFBC:
	ldr r0, _0814AFCC @ =gUnk_086A2100
	movs r1, #2
	ldr r2, [sp, #0x1c]
	bl sub_0800751C
	str r0, [r6]
	b _0814B100
	.align 2, 0
_0814AFCC: .4byte gUnk_086A2100
_0814AFD0:
	ldr r0, [r6]
	bl sub_08006870
	cmp r0, #0
	bne _0814AFDC
	b _0814B194
_0814AFDC:
	ldr r0, [r6]
	bl sub_08006818
	movs r0, #0
	str r0, [r6]
	ldr r0, _0814AFFC @ =gUnk_086A2118
	movs r1, #2
	ldr r2, [sp, #0x1c]
	bl sub_08007578
	str r0, [r6]
	mov r1, sb
	ldrh r0, [r1]
	adds r0, #1
	b _0814B192
	.align 2, 0
_0814AFFC: .4byte gUnk_086A2118
_0814B000:
	ldr r0, [r6]
	bl sub_08006870
	cmp r0, #0
	bne _0814B00C
	b _0814B194
_0814B00C:
	ldr r0, [r6]
	bl sub_08006818
	movs r0, #0
	str r0, [r6]
	movs r0, #0x3c
	str r0, [r6, #0xc]
	b _0814B100
_0814B01C:
	ldr r0, [r6, #0xc]
	subs r0, #1
	str r0, [r6, #0xc]
	cmp r0, #0
	ble _0814B028
	b _0814B194
_0814B028:
	ldr r0, _0814B02C @ =0x00000105
	b _0814B190
	.align 2, 0
_0814B02C: .4byte 0x00000105
_0814B030:
	ldr r1, _0814B10C @ =gUnk_020025A0
	movs r2, #0
	mov r8, r2
	strh r2, [r1, #2]
	ldr r2, _0814B110 @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1, #0x22]
	ldr r0, _0814B114 @ =0x0600E000
	bl sub_08004944
	adds r4, r0, #0
	ldr r5, _0814B118 @ =0x0600C000
	adds r0, r5, #0
	bl sub_08004950
	ldr r7, _0814B11C @ =gUnk_03000DD0
	orrs r4, r0
	ldrh r0, [r7, #6]
	movs r0, #0
	mov sl, r0
	strh r4, [r7, #6]
	ldr r0, _0814B120 @ =0x0600E800
	bl sub_08004944
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08004950
	orrs r4, r0
	ldrh r0, [r7, #8]
	strh r4, [r7, #8]
	ldrh r0, [r7, #0x14]
	mov r1, sl
	strh r1, [r7, #0x14]
	ldrh r0, [r7, #0x14]
	ldrh r1, [r7, #0x12]
	strh r0, [r7, #0x12]
	ldrh r0, [r7, #0x18]
	mov r2, sl
	strh r2, [r7, #0x18]
	ldrh r0, [r7, #0x18]
	ldrh r1, [r7, #0x16]
	strh r0, [r7, #0x16]
	adds r3, r7, #0
	adds r3, #0x4a
	ldrb r0, [r3]
	movs r0, #0x48
	strb r0, [r3]
	adds r2, r7, #0
	adds r2, #0x4b
	ldrb r0, [r2]
	movs r0, #0x33
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	mov r1, r8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x4d
	ldrb r0, [r1]
	movs r0, #0x10
	strb r0, [r1]
	ldrb r0, [r2]
	mov r0, r8
	strb r0, [r2]
	ldrb r0, [r2]
	ldrb r1, [r3]
	strb r0, [r3]
	adds r1, r7, #0
	adds r1, #0x44
	ldrb r0, [r1]
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #0x3b
	strb r0, [r1]
	ldrh r0, [r7]
	movs r2, #0xff
	lsls r2, r2, #8
	adds r1, r2, #0
	orrs r0, r1
	mov r1, r8
	orrs r0, r1
	ldr r1, _0814B124 @ =0x00009DFF
	ands r0, r1
	ldr r1, _0814B128 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r7]
	movs r0, #0x10
	movs r1, #0
	movs r2, #0x78
	ldr r3, [sp, #0x1c]
	bl sub_08007654
	str r0, [r6, #8]
	ldr r0, _0814B12C @ =sub_0814A964
	ldr r1, _0814B130 @ =0x00000AE8
	mov r2, sp
	ldr r3, [sp, #0x1c]
	bl sub_0800682C
	str r0, [r6, #4]
_0814B100:
	mov r2, sb
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	b _0814B194
	.align 2, 0
_0814B10C: .4byte gUnk_020025A0
_0814B110: .4byte 0x00007FFF
_0814B114: .4byte 0x0600E000
_0814B118: .4byte 0x0600C000
_0814B11C: .4byte gUnk_03000DD0
_0814B120: .4byte 0x0600E800
_0814B124: .4byte 0x00009DFF
_0814B128: .4byte 0x0000F7FF
_0814B12C: .4byte sub_0814A964
_0814B130: .4byte 0x00000AE8
_0814B134:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0814B14C
	bl sub_08006870
	cmp r0, #0
	beq _0814B14C
	ldr r0, [r6, #8]
	bl sub_08006818
	movs r0, #0
	str r0, [r6, #8]
_0814B14C:
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _0814B16A
	bl sub_08006870
	cmp r0, #0
	beq _0814B164
	ldr r0, [r6, #4]
	bl sub_08006818
	movs r0, #0
	str r0, [r6, #4]
_0814B164:
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _0814B194
_0814B16A:
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _0814B194
	str r0, [r6, #0xc]
	mov r1, sb
	ldrh r0, [r1]
	adds r0, #1
	b _0814B192
_0814B17A:
	ldr r0, [r6, #0xc]
	adds r0, #1
	str r0, [r6, #0xc]
	cmp r0, #0x1d
	ble _0814B194
	movs r0, #0x84
	lsls r0, r0, #1
	mov r2, sb
	strh r0, [r2]
	b _0814B194
_0814B18E:
	movs r0, #2
_0814B190:
	mov r1, sb
_0814B192:
	strh r0, [r1]
_0814B194:
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0814B1A8
sub_0814B1A8: @ 0x0814B1A8
	push {lr}
	sub sp, #0x20
	ldr r0, _0814B1C4 @ =gUnk_02029C28
	ldr r0, [r0]
	ldr r1, _0814B1C8 @ =sub_0814AF24
	movs r2, #0
	str r2, [sp]
	movs r2, #0x10
	add r3, sp, #4
	bl sub_08006620
	add sp, #0x20
	pop {r1}
	bx r1
	.align 2, 0
_0814B1C4: .4byte gUnk_02029C28
_0814B1C8: .4byte sub_0814AF24

	thumb_func_start sub_0814B1CC
sub_0814B1CC: @ 0x0814B1CC
	push {lr}
	adds r1, r0, #0
	ldr r0, _0814B1DC @ =gUnk_02029C28
	ldr r0, [r0]
	bl sub_08006570
	pop {r0}
	bx r0
	.align 2, 0
_0814B1DC: .4byte gUnk_02029C28

	thumb_func_start sub_0814B1E0
sub_0814B1E0: @ 0x0814B1E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _0814B214 @ =gUnk_02002400
	str r0, [sp, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r0, _0814B218 @ =gUnk_02029AE8
	ldr r1, [r0]
	ldr r2, [r1, #4]
	mov ip, r2
	ldr r7, [r1, #8]
	ldr r3, [sp]
	cmp r3, #0
	bne _0814B21C
	ldrh r0, [r1, #0x10]
	subs r0, #1
	b _0814B220
	.align 2, 0
_0814B214: .4byte gUnk_02002400
_0814B218: .4byte gUnk_02029AE8
_0814B21C:
	ldrh r0, [r1, #0x10]
	adds r0, #1
_0814B220:
	strh r0, [r1, #0x10]
	movs r4, #0
	mov r8, r4
	movs r6, #0x1f
	ldr r0, _0814B2EC @ =gUnk_02029AE8
	mov sl, r0
	movs r1, #0x20
	mov sb, r1
_0814B230:
	mov r2, ip
	ldrh r3, [r2]
	movs r0, #0x1f
	ands r0, r3
	mov r4, sl
	ldr r1, [r4]
	ldrh r1, [r1, #0x10]
	mov r4, sb
	subs r2, r4, r1
	muls r0, r2, r0
	ldr r5, [sp, #4]
	adds r1, r5, #2
	str r1, [sp, #4]
	cmp r0, #0
	bge _0814B250
	adds r0, #0x1f
_0814B250:
	asrs r4, r0, #5
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	ands r0, r6
	muls r0, r2, r0
	cmp r0, #0
	bge _0814B260
	adds r0, #0x1f
_0814B260:
	asrs r0, r0, #5
	lsls r1, r0, #5
	orrs r1, r4
	lsrs r0, r3, #0x1a
	ands r0, r6
	muls r0, r2, r0
	cmp r0, #0
	bge _0814B272
	adds r0, #0x1f
_0814B272:
	asrs r0, r0, #5
	lsls r0, r0, #0xa
	orrs r1, r0
	strh r1, [r5]
	ldrh r2, [r7]
	movs r1, #0x1f
	ands r1, r2
	mov r3, sl
	ldr r0, [r3]
	ldrh r0, [r0, #0x10]
	mov r4, sb
	subs r3, r4, r0
	muls r1, r3, r1
	ldr r5, [sp, #8]
	adds r0, r5, #2
	str r0, [sp, #8]
	cmp r1, #0
	bge _0814B298
	adds r1, #0x1f
_0814B298:
	asrs r4, r1, #5
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	muls r0, r3, r0
	cmp r0, #0
	bge _0814B2A8
	adds r0, #0x1f
_0814B2A8:
	asrs r0, r0, #5
	lsls r2, r0, #5
	orrs r2, r4
	lsrs r0, r1, #0x1a
	ands r0, r6
	muls r0, r3, r0
	cmp r0, #0
	bge _0814B2BA
	adds r0, #0x1f
_0814B2BA:
	asrs r0, r0, #5
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r5]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r1, #2
	add ip, r1
	adds r7, #2
	cmp r0, #0xff
	bls _0814B230
	ldr r2, [sp]
	cmp r2, #0
	bne _0814B2F0
	movs r1, #0
	ldr r3, _0814B2EC @ =gUnk_02029AE8
	ldr r0, [r3]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0814B2FE
	b _0814B2FC
	.align 2, 0
_0814B2EC: .4byte gUnk_02029AE8
_0814B2F0:
	movs r1, #0
	ldr r4, _0814B310 @ =gUnk_02029AE8
	ldr r0, [r4]
	ldrh r0, [r0, #0x10]
	cmp r0, #0x20
	bne _0814B2FE
_0814B2FC:
	movs r1, #1
_0814B2FE:
	adds r0, r1, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0814B310: .4byte gUnk_02029AE8

	thumb_func_start sub_0814B314
sub_0814B314: @ 0x0814B314
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl sub_081522E8
	ldr r0, _0814B50C @ =gUnk_03001090
	ldr r2, [r0, #0x14]
	ldr r0, _0814B510 @ =gUnk_02029AE8
	mov r8, r0
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	mov r2, r8
	ldr r1, [r2]
	adds r2, r1, #0
	adds r2, #0x40
	ldrh r0, [r2]
	movs r3, #3
	mov sb, r3
	ands r0, r3
	movs r4, #0
	strh r0, [r2]
	ldr r2, _0814B514 @ =gUnk_086A2264
	adds r1, #0x21
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r5, _0814B518 @ =gUnk_02005640
	ldr r2, _0814B51C @ =gUnk_08761224
	mov r0, sb
	str r0, [sp]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r0, #0xff
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r0, _0814B520 @ =0x00010088
	str r0, [sp, #0x20]
	adds r0, r5, #0
	movs r1, #0x8a
	lsls r1, r1, #2
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	ldr r1, _0814B524 @ =0x00002CFC
	adds r1, r5, r1
	str r1, [sp, #0x2c]
	str r4, [sp, #0x24]
	add r0, sp, #0x24
	ldr r2, _0814B528 @ =0x010000D0
	bl CpuFastSet
	ldr r2, _0814B52C @ =0x00002DD0
	adds r0, r5, r2
	movs r1, #0x20
	str r1, [sp]
	str r4, [sp, #4]
	movs r1, #4
	str r1, [sp, #8]
	movs r1, #9
	movs r2, #8
	movs r3, #0
	bl sub_0801BB1C
	ldr r0, _0814B530 @ =gUnk_03000E20
	ldr r0, [r0, #0x14]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r7, r0, r3
	movs r6, #0xd
	mov r1, r8
	ldr r0, [r1]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r6, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x2c]
	adds r2, r7, #0
	movs r3, #0x20
	bl sub_08000CD4
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0x40
	ldrh r0, [r1]
	mov r3, sb
	ands r0, r3
	strh r0, [r1]
	movs r0, #0xff
	lsls r0, r0, #1
	mov sl, r0
	ldr r1, _0814B534 @ =0x0000303C
	adds r1, r5, r1
	str r1, [sp, #0x2c]
	str r4, [sp, #0x28]
	add r0, sp, #0x28
	ldr r2, _0814B528 @ =0x010000D0
	bl CpuFastSet
	ldr r2, _0814B538 @ =0x00003154
	adds r7, r5, r2
	movs r5, #0
_0814B430:
	ldr r0, _0814B53C @ =gUnk_02029AEC
	ldr r0, [r0]
	adds r0, #0x12
	adds r0, r0, r5
	ldrb r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #7
	cmp r0, #0
	bne _0814B446
	movs r1, #0x80
	lsls r1, r1, #7
_0814B446:
	mov r8, r1
	ldr r0, _0814B540 @ =gUnk_08765C8E
	movs r1, #0
	adds r2, r5, #0
	bl sub_0801C7C0
	adds r1, r0, #0
	adds r6, r7, #0
	mov r4, sl
	ldr r0, _0814B544 @ =gUnk_03000D60
	lsls r2, r4, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r2
	movs r2, #0xff
	str r2, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r2, #6
	movs r3, #1
	bl sub_0801A924
	mov r7, sl
	movs r3, #0
	movs r0, #0x80
	adds r0, r0, r6
	mov sb, r0
	adds r5, #1
	mov r2, r8
	adds r2, #1
_0814B480:
	mov r1, r8
	adds r0, r4, r1
	strh r0, [r6]
	adds r1, r6, #0
	adds r1, #0x40
	adds r0, r4, r2
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, #2
	cmp r3, #6
	blo _0814B480
	subs r0, r4, r7
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r7, sb
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #2
	bls _0814B430
	ldr r0, _0814B544 @ =gUnk_03000D60
	ldr r0, [r0, #0x14]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r7, r0, r2
	movs r4, #0xd
	ldr r5, _0814B510 @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x2c]
	adds r2, r7, #0
	movs r3, #0x20
	bl sub_08000CD4
	ldr r1, [r5]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814B50C: .4byte gUnk_03001090
_0814B510: .4byte gUnk_02029AE8
_0814B514: .4byte gUnk_086A2264
_0814B518: .4byte gUnk_02005640
_0814B51C: .4byte gUnk_08761224
_0814B520: .4byte 0x00010088
_0814B524: .4byte 0x00002CFC
_0814B528: .4byte 0x010000D0
_0814B52C: .4byte 0x00002DD0
_0814B530: .4byte gUnk_03000E20
_0814B534: .4byte 0x0000303C
_0814B538: .4byte 0x00003154
_0814B53C: .4byte gUnk_02029AEC
_0814B540: .4byte gUnk_08765C8E
_0814B544: .4byte gUnk_03000D60

	thumb_func_start sub_0814B548
sub_0814B548: @ 0x0814B548
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #7
	ldr r6, _0814B5B8 @ =gUnk_02029AEC
	cmp r0, #1
	bne _0814B578
	ldr r1, [r6]
	ldrh r0, [r1, #0x10]
	adds r0, #1
	strh r0, [r1, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	bl __udivsi3
	ands r4, r0
	cmp r4, #3
	bhi _0814B578
	movs r0, #8
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0814B578:
	ldr r0, _0814B5BC @ =gUnk_086A2270
	adds r1, r4, #0
	adds r1, #0x48
	ldr r2, _0814B5C0 @ =gUnk_02029AE8
	ldr r5, [r2]
	adds r5, #0x21
	ldrb r2, [r5]
	lsls r2, r2, #4
	adds r2, #0x5c
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r3, [r6]
	adds r3, #0x12
	ldrb r5, [r5]
	adds r3, r3, r5
	ldrb r3, [r3]
	str r3, [sp, #0x18]
	movs r3, #0
	bl sub_080022EC
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B5B8: .4byte gUnk_02029AEC
_0814B5BC: .4byte gUnk_086A2270
_0814B5C0: .4byte gUnk_02029AE8

	thumb_func_start sub_0814B5C4
sub_0814B5C4: @ 0x0814B5C4
	push {r4, r5, r6, lr}
	ldr r5, _0814B61C @ =gUnk_02029AE8
	ldr r1, [r5]
	ldrh r0, [r1, #0x10]
	cmp r0, #0
	beq _0814B5D4
	subs r0, #1
	strh r0, [r1, #0x10]
_0814B5D4:
	ldr r2, [r5]
	ldrh r1, [r2, #0x10]
	cmp r1, #0
	beq _0814B6B4
	ldr r4, _0814B620 @ =gUnk_02029AEC
	ldr r0, [r4]
	ldrh r0, [r0, #0x1e]
	cmp r0, #0x10
	bne _0814B624
	adds r0, r1, #0
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x18
	bl sub_08007F04
	ldr r2, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	strh r0, [r2, #0x16]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x10
	subs r0, r1, #6
	cmp r0, #0x13
	ble _0814B604
	movs r0, #0x13
_0814B604:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r1, #6
	bls _0814B66E
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	ldrh r1, [r2, #0x1c]
	movs r2, #0
	bl sub_08152128
	b _0814B66E
	.align 2, 0
_0814B61C: .4byte gUnk_02029AE8
_0814B620: .4byte gUnk_02029AEC
_0814B624:
	ldrh r0, [r2, #0x10]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x18
	bl sub_08007F04
	ldr r2, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	subs r1, r1, r0
	strh r1, [r2, #0x16]
	movs r0, #0x16
	ldrsh r1, [r2, r0]
	adds r0, r3, #0
	subs r0, r0, r1
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x10
	subs r0, r1, #6
	cmp r0, #0x13
	ble _0814B652
	movs r0, #0x13
_0814B652:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r1, #6
	bls _0814B66E
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	ldrh r1, [r2, #0x1c]
	movs r2, #0x13
	subs r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #0x13
	bl sub_08152128
_0814B66E:
	ldr r0, _0814B6AC @ =gUnk_02029AEC
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0x16
	adds r2, #0x18
	ldr r6, _0814B6B0 @ =gUnk_02029AE8
	ldr r0, [r6]
	adds r5, r0, #0
	adds r5, #0x40
	ldrh r4, [r5]
	adds r3, r4, #1
	strh r3, [r5]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r3, r4, #3
	subs r3, r3, r4
	lsls r3, r3, #2
	adds r3, #0x44
	adds r0, r0, r3
	movs r3, #1
	bl sub_08000BB4
	ldr r1, [r6]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
	movs r0, #0
	b _0814B6C8
	.align 2, 0
_0814B6AC: .4byte gUnk_02029AEC
_0814B6B0: .4byte gUnk_02029AE8
_0814B6B4:
	ldr r0, _0814B6D0 @ =gUnk_02029AEC
	ldr r0, [r0]
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x18]
	ldrh r0, [r2, #0x14]
	strh r0, [r2, #0x12]
	ldrh r0, [r2, #0x12]
	bl sub_0815221C
	movs r0, #1
_0814B6C8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0814B6D0: .4byte gUnk_02029AEC

	thumb_func_start sub_0814B6D4
sub_0814B6D4: @ 0x0814B6D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r4, #0
	movs r3, #0
	ldr r0, _0814B770 @ =gUnk_086B7530
	mov sb, r0
	ldr r2, _0814B774 @ =gUnk_02000000
	movs r1, #0x68
_0814B6F8:
	adds r0, r3, #0
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814B70C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0814B70C:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x1f
	bls _0814B6F8
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r3, #0
	lsls r1, r6, #1
	str r1, [sp, #8]
	ldr r0, [sp]
	adds r0, #0xa
	mov sl, r0
	lsls r6, r6, #2
	str r6, [sp, #0xc]
	mov ip, r1
	ldr r6, _0814B778 @ =gUnk_086BCA30
	movs r7, #0xf
_0814B748:
	lsls r0, r3, #1
	adds r0, r0, r5
	mov r1, ip
	adds r4, r1, r0
	mov r0, sl
	adds r2, r0, r3
	adds r1, r3, #0
	adds r1, #0x2d
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0814B77C
	asrs r0, r1, #1
	adds r0, #4
	adds r0, r0, r6
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	b _0814B788
	.align 2, 0
_0814B770: .4byte gUnk_086B7530
_0814B774: .4byte gUnk_02000000
_0814B778: .4byte gUnk_086BCA30
_0814B77C:
	asrs r0, r1, #1
	adds r0, #4
	adds r0, r0, r6
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ands r0, r7
_0814B788:
	lsls r0, r0, #0xc
	adds r0, r2, r0
	strh r0, [r4, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #1
	bls _0814B748
	ldr r1, [sp, #0xc]
	adds r2, r1, r5
	ldr r0, _0814B7F4 @ =gUnk_086BCA30
	ldrb r1, [r0, #0x1b]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0xc
	adds r0, #0xc
	ldr r1, [sp]
	adds r0, r1, r0
	strh r0, [r2, #2]
	mov r0, sb
	adds r0, #0x28
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0xc
	adds r0, #0x49
	strh r0, [r2, #4]
	mov r0, sb
	adds r0, #0x27
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0xc
	adds r0, #0x47
	strh r0, [r2, #6]
	mov r0, r8
	cmp r0, #0
	beq _0814B7F8
	lsls r0, r0, #1
	adds r2, r0, #0
	adds r2, #0x42
	asrs r0, r2, #1
	adds r0, #4
	add r0, sb
	ldrb r0, [r0]
	lsrs r0, r0, #4
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	adds r0, r2, r0
	strh r0, [r5]
	b _0814B7FC
	.align 2, 0
_0814B7F4: .4byte gUnk_086BCA30
_0814B7F8:
	mov r1, r8
	strh r1, [r5]
_0814B7FC:
	ldr r1, [sp, #4]
	lsls r0, r1, #1
	adds r2, r0, #0
	adds r2, #0x42
	asrs r0, r2, #1
	adds r0, #4
	add r0, sb
	ldrb r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	adds r0, r2, r0
	strh r0, [r5, #2]
	ldr r0, [sp, #8]
	adds r3, r0, r5
	mov r1, r8
	cmp r1, #0
	beq _0814B84E
	lsls r0, r1, #1
	adds r2, r0, #0
	adds r2, #0x43
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0814B83E
	asrs r0, r2, #1
	adds r0, #4
	add r0, sb
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	adds r0, r2, r0
	b _0814B850
_0814B83E:
	asrs r0, r2, #1
	adds r0, #4
	add r0, sb
	ldrb r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	adds r0, r2, r0
	b _0814B850
_0814B84E:
	mov r0, r8
_0814B850:
	strh r0, [r3]
	ldr r1, [sp, #8]
	adds r3, r1, r5
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r2, r0, r1
	adds r1, #0x23
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0814B87C
	asrs r0, r1, #1
	adds r0, #4
	ldr r1, _0814B878 @ =gUnk_086BCA30
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	b _0814B888
	.align 2, 0
_0814B878: .4byte gUnk_086BCA30
_0814B87C:
	asrs r0, r1, #1
	adds r0, #4
	ldr r1, _0814B8A0 @ =gUnk_086BCA30
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r0, r0, #4
_0814B888:
	lsls r0, r0, #0xc
	adds r0, r2, r0
	strh r0, [r3, #2]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814B8A0: .4byte gUnk_086BCA30

	thumb_func_start sub_0814B8A4
sub_0814B8A4: @ 0x0814B8A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	mov sl, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	movs r0, #0
	mov sb, r0
	mov r6, sl
	add r0, sp, #0x10
	movs r4, #0
	mov r1, sb
	strh r1, [r0]
	mov r1, sp
	ldr r2, _0814B94C @ =0x01000008
	bl CpuSet
	mov r5, sp
	add r5, r8
	strb r4, [r5]
	subs r5, #1
	mov r4, r8
_0814B8DA:
	cmp r4, #0
	beq _0814B924
	adds r0, r6, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x30
	strb r0, [r5]
	subs r5, #1
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r6, r0, #0
	cmp r6, #0
	bne _0814B8DA
	cmp r4, #0
	beq _0814B924
	movs r0, #0x20
	strb r0, [r5]
	subs r5, #1
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0814B924
	movs r1, #0x20
_0814B916:
	strb r1, [r5]
	subs r5, #1
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0814B916
_0814B924:
	mov r3, sl
	cmp r3, #0
	bne _0814B954
	movs r2, #0
	mov r1, r8
	subs r1, #1
	cmp r2, r1
	bge _0814B944
_0814B934:
	mov r0, sb
	strh r0, [r7]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r7, #2
	cmp r2, r1
	blt _0814B934
_0814B944:
	ldr r1, _0814B950 @ =0x00004056
	adds r0, r1, #0
	strh r0, [r7]
	b _0814B998
	.align 2, 0
_0814B94C: .4byte 0x01000008
_0814B950: .4byte 0x00004056
_0814B954:
	movs r2, #0
	cmp r2, r8
	bhs _0814B998
_0814B95A:
	mov r3, sp
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _0814B96A
	mov r0, sb
	strh r0, [r7]
	b _0814B98C
_0814B96A:
	ldrb r0, [r1]
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0814B980
	ldr r3, _0814B97C @ =0x00004056
	adds r0, r1, r3
	b _0814B982
	.align 2, 0
_0814B97C: .4byte 0x00004056
_0814B980:
	mov r0, sb
_0814B982:
	strh r0, [r7]
	cmp r1, #0
	beq _0814B98C
	ldr r1, _0814B9A8 @ =0x00004056
	mov sb, r1
_0814B98C:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r7, #2
	cmp r2, r8
	blo _0814B95A
_0814B998:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814B9A8: .4byte 0x00004056

	thumb_func_start sub_0814B9AC
sub_0814B9AC: @ 0x0814B9AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	ldr r1, _0814BB5C @ =gUnk_0824DB08
	add r0, sp, #0x24
	movs r2, #0x3c
	bl memcpy
	ldr r0, _0814BB60 @ =gUnk_03000D60
	ldr r2, [r0, #0x14]
	ldr r7, _0814BB64 @ =gUnk_02029AE8
	ldr r0, [r7]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r0, [r7]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	movs r1, #3
	mov sl, r1
	ands r3, r1
	movs r2, #0
	mov sb, r2
	strh r3, [r4]
	ldr r6, _0814BB68 @ =gUnk_03000E20
	ldr r2, [r6, #0x14]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r7]
	adds r1, #0x40
	ldrh r0, [r1]
	mov r2, sl
	ands r0, r2
	strh r0, [r1]
	ldr r3, _0814BB6C @ =gUnk_02005640
	mov r8, r3
	ldr r2, _0814BB70 @ =gUnk_08761224
	mov r4, sl
	str r4, [sp]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	movs r5, #1
	str r5, [sp, #8]
	mov r6, sb
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r0, _0814BB74 @ =0x00010088
	str r0, [sp, #0x20]
	mov r0, r8
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0xc
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	ldr r6, _0814BB78 @ =gUnk_086BCA6C
	ldr r1, _0814BB7C @ =0x06009C20
	ldr r4, _0814BB80 @ =0x00002CFC
	add r4, r8
	mov r0, sl
	str r0, [sp]
	str r5, [sp, #4]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0x1e
	bl sub_0801A59C
	ldr r1, _0814BB84 @ =0x06009CE0
	movs r0, #7
	str r0, [sp]
	str r5, [sp, #4]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0x11
	bl sub_0801A59C
	ldr r0, _0814BB88 @ =gUnk_08703368
	ldr r1, _0814BB8C @ =0x06009EA0
	movs r2, #2
	str r2, [sp]
	str r5, [sp, #4]
	adds r2, r4, #0
	movs r3, #0x2f
	bl sub_0801A59C
	str r4, [sp, #0x64]
	ldr r1, _0814BB68 @ =gUnk_03000E20
	ldr r0, [r1, #0x14]
	movs r5, #0xe5
	lsls r5, r5, #1
	adds r0, r0, r5
	str r0, [sp, #0x68]
	movs r0, #0x14
	str r0, [sp]
	mov r2, sb
	str r2, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #9
	movs r3, #0
	bl sub_0801BB1C
	movs r4, #9
	ldr r0, [r7]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0x28
	str r1, [sp, #4]
	movs r1, #0x40
	str r1, [sp, #8]
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x68]
	movs r3, #0x14
	bl sub_08000CD4
	ldr r1, [r7]
	adds r1, #0x40
	ldrh r0, [r1]
	mov r3, sl
	ands r0, r3
	strh r0, [r1]
	ldr r4, _0814BB90 @ =0x00002E64
	add r4, r8
	str r4, [sp, #0x64]
	ldr r6, _0814BB60 @ =gUnk_03000D60
	ldr r0, [r6, #0x14]
	adds r0, r0, r5
	str r0, [sp, #0x68]
	mov r0, sb
	str r0, [sp, #0x60]
	add r0, sp, #0x60
	ldr r2, _0814BB94 @ =0x0100005A
	adds r1, r4, #0
	bl CpuFastSet
	movs r0, #2
	bl sub_08020828
	adds r6, r0, #0
	ldr r1, _0814BB98 @ =0x00002E94
	add r8, r1
	adds r0, #0x52
	ldrb r2, [r0]
	mov r0, r8
	movs r1, #2
	bl sub_0814B8A4
	movs r7, #0xb3
	movs r2, #0
	ldr r4, _0814BB9C @ =gUnk_086B7530
	movs r5, #0xf
_0814BB3E:
	lsls r0, r2, #1
	ldr r1, [sp, #0x64]
	adds r3, r0, r1
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _0814BBA0
	lsrs r0, r7, #1
	adds r0, #4
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	b _0814BBAC
	.align 2, 0
_0814BB5C: .4byte gUnk_0824DB08
_0814BB60: .4byte gUnk_03000D60
_0814BB64: .4byte gUnk_02029AE8
_0814BB68: .4byte gUnk_03000E20
_0814BB6C: .4byte gUnk_02005640
_0814BB70: .4byte gUnk_08761224
_0814BB74: .4byte 0x00010088
_0814BB78: .4byte gUnk_086BCA6C
_0814BB7C: .4byte 0x06009C20
_0814BB80: .4byte 0x00002CFC
_0814BB84: .4byte 0x06009CE0
_0814BB88: .4byte gUnk_08703368
_0814BB8C: .4byte 0x06009EA0
_0814BB90: .4byte 0x00002E64
_0814BB94: .4byte 0x0100005A
_0814BB98: .4byte 0x00002E94
_0814BB9C: .4byte gUnk_086B7530
_0814BBA0:
	lsrs r0, r7, #1
	adds r0, #4
	adds r0, r0, r4
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ands r0, r5
_0814BBAC:
	lsls r0, r0, #0xc
	adds r0, r7, r0
	strh r0, [r3, #0x2c]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r2, #1
	bls _0814BB3E
	movs r7, #0xe1
	movs r2, #0
	ldr r3, [sp, #0x64]
	adds r3, #0x44
	mov r8, r3
	ldr r4, [sp, #0x64]
	adds r4, #0x56
	mov sb, r4
	adds r6, #0x30
	ldr r0, [sp, #0x64]
	adds r0, #0xa4
	mov sl, r0
	ldr r1, [sp, #0x64]
	adds r1, #0xac
	str r1, [sp, #0x6c]
	ldr r3, [sp, #0x64]
	adds r3, #0xb8
	str r3, [sp, #0x70]
	ldr r4, _0814BC0C @ =gUnk_086BCA30
	movs r5, #0xf
_0814BBEA:
	lsls r0, r2, #1
	ldr r1, [sp, #0x64]
	adds r3, r0, r1
	adds r1, r2, #0
	adds r1, #0x3c
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0814BC10
	asrs r0, r1, #1
	adds r0, #4
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	b _0814BC1C
	.align 2, 0
_0814BC0C: .4byte gUnk_086BCA30
_0814BC10:
	asrs r0, r1, #1
	adds r0, #4
	adds r0, r0, r4
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ands r0, r5
_0814BC1C:
	lsls r0, r0, #0xc
	adds r0, r7, r0
	strh r0, [r3, #0x3c]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r2, #3
	bls _0814BBEA
	movs r7, #0xf6
	movs r2, #0
	movs r4, #0x9c
	lsls r4, r4, #1
	movs r0, #0x80
	lsls r0, r0, #7
	adds r3, r0, #0
_0814BC40:
	lsls r0, r2, #1
	ldr r1, [sp, #0x64]
	adds r0, r0, r1
	adds r0, r0, r4
	adds r1, r7, r3
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r2, #2
	bls _0814BC40
	mov r0, r8
	movs r1, #0xe8
	movs r2, #0x14
	bl sub_0814B6D4
	ldr r0, _0814BF48 @ =gUnk_02029AEC
	ldr r2, [r0]
	ldrh r3, [r2, #0x1a]
	movs r1, #1
	adds r0, r3, #0
	eors r0, r1
	strh r0, [r2, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r3, #0
	beq _0814BC7E
	adds r0, #0x6c
_0814BC7E:
	adds r7, r0, #0
	mov r5, sb
	adds r4, r7, #0
	ldr r0, _0814BF4C @ =gUnk_03000D60
	lsls r1, r7, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	adds r1, r6, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	adds r2, r7, #0
	movs r1, #0
	ldr r3, _0814BF50 @ =0x00004001
_0814BCA4:
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r4, r6
	strh r0, [r5]
	adds r0, r4, r3
	strh r0, [r5, #0x28]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r1, #8
	blo _0814BCA4
	subs r0, r4, r2
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0814BF54 @ =gUnk_08765C8E
	movs r1, #3
	movs r2, #0
	bl sub_0801C7C0
	adds r3, r0, #0
	mov r5, sl
	adds r4, r7, #0
	movs r2, #0
	ldr r0, _0814BF4C @ =gUnk_03000D60
	lsls r1, r7, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r3, #0
	movs r2, #7
	movs r3, #1
	bl sub_0801A924
	adds r2, r7, #0
	movs r1, #0
	ldr r3, _0814BF50 @ =0x00004001
_0814BCFA:
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r4, r6
	strh r0, [r5]
	adds r0, r4, r3
	strh r0, [r5, #0x28]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r1, #7
	blo _0814BCFA
	subs r0, r4, r2
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0814BF58 @ =gUnk_02029AE8
	ldr r0, [r0]
	ldrh r1, [r0, #0x12]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sp
	adds r0, #0x24
	ldrh r0, [r0]
	bl sub_0801C184
	adds r1, r0, #0
	ldr r5, [sp, #0x6c]
	adds r4, r7, #0
	movs r3, #0
	ldr r0, _0814BF4C @ =gUnk_03000D60
	lsls r2, r7, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r2
	movs r2, #0xff
	str r2, [sp]
	str r3, [sp, #4]
	movs r2, #2
	movs r3, #1
	bl sub_0801A924
	adds r2, r7, #0
	movs r1, #0
	ldr r3, _0814BF50 @ =0x00004001
_0814BD5A:
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r4, r6
	strh r0, [r5]
	adds r0, r4, r3
	strh r0, [r5, #0x28]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r1, #2
	blo _0814BD5A
	subs r0, r4, r2
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0814BF54 @ =gUnk_08765C8E
	movs r1, #3
	movs r2, #1
	bl sub_0801C7C0
	adds r3, r0, #0
	ldr r0, [sp, #0x64]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r5, r0, r1
	adds r4, r7, #0
	movs r2, #0
	ldr r0, _0814BF4C @ =gUnk_03000D60
	lsls r1, r7, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r3, #0
	movs r2, #6
	movs r3, #1
	bl sub_0801A924
	adds r2, r7, #0
	movs r1, #0
	ldr r3, _0814BF50 @ =0x00004001
_0814BDB6:
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r4, r6
	strh r0, [r5]
	adds r0, r4, r3
	strh r0, [r5, #0x28]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r1, #6
	blo _0814BDB6
	subs r0, r4, r2
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r5, _0814BF58 @ =gUnk_02029AE8
	ldr r0, [r5]
	ldrh r1, [r0, #0x12]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sp
	adds r0, #0x24
	ldrh r4, [r0, #8]
	lsls r4, r4, #1
	ldr r1, [sp, #0x64]
	adds r4, r4, r1
	movs r2, #0x83
	lsls r2, r2, #1
	adds r4, r4, r2
	ldrh r0, [r0, #4]
	bl sub_0801C184
	adds r1, r0, #0
	ldr r0, [r5]
	ldrh r2, [r0, #0x12]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	mov r3, sp
	adds r3, r3, r0
	adds r3, #0x24
	adds r6, r4, #0
	adds r5, r7, #0
	movs r4, #2
	ldr r0, _0814BF4C @ =gUnk_03000D60
	lsls r2, r7, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r2
	ldrh r2, [r3, #6]
	mov r8, r2
	ldrb r2, [r3, #6]
	movs r3, #0xff
	str r3, [sp]
	str r4, [sp, #4]
	movs r3, #1
	bl sub_0801A924
	adds r3, r7, #0
	movs r1, #0
	cmp r1, r8
	bhs _0814BE5A
	ldr r2, _0814BF50 @ =0x00004001
_0814BE3C:
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r5, r4
	strh r0, [r6]
	adds r0, r5, r2
	strh r0, [r6, #0x28]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r5, #2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, #2
	cmp r1, r8
	blo _0814BE3C
_0814BE5A:
	subs r0, r5, r3
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0814BF48 @ =gUnk_02029AEC
	ldr r3, [r0]
	ldr r0, _0814BF58 @ =gUnk_02029AE8
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sp
	adds r0, #0x24
	ldrh r0, [r0, #4]
	str r0, [r3, #0xc]
	ldr r0, _0814BF54 @ =gUnk_08765C8E
	ldrh r2, [r2, #0x12]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, sp
	adds r1, #0x24
	ldrh r2, [r1, #2]
	movs r1, #4
	bl sub_0801C7C0
	adds r3, r0, #0
	ldr r5, [sp, #0x70]
	adds r4, r7, #0
	movs r2, #2
	ldr r0, _0814BF4C @ =gUnk_03000D60
	lsls r1, r4, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r3, #0
	movs r2, #6
	movs r3, #1
	bl sub_0801A924
	movs r1, #0
	ldr r2, _0814BF50 @ =0x00004001
_0814BEB4:
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r4, r6
	strh r0, [r5]
	adds r0, r4, r2
	strh r0, [r5, #0x28]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r1, #6
	blo _0814BEB4
	movs r4, #9
	ldr r5, _0814BF58 @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0x28
	str r1, [sp, #4]
	movs r1, #0x40
	str r1, [sp, #8]
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x68]
	movs r3, #0x14
	bl sub_08000CD4
	ldr r2, [r5]
	adds r2, #0x40
	ldrh r1, [r2]
	movs r0, #3
	ands r1, r0
	movs r5, #0
	movs r3, #0
	strh r1, [r2]
	ldr r4, _0814BF48 @ =gUnk_02029AEC
	ldr r0, [r4]
	strh r3, [r0, #0x16]
	strh r3, [r0, #0x18]
	strh r3, [r0]
	strh r3, [r0, #0x10]
	ldr r0, _0814BF5C @ =gUnk_0861E1A8
	ldr r1, _0814BF60 @ =gUnk_02002440
	movs r2, #8
	bl CpuFastSet
	ldr r0, [r4]
	strb r5, [r0, #9]
	strb r5, [r0, #7]
	strb r5, [r0, #8]
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #6]
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814BF48: .4byte gUnk_02029AEC
_0814BF4C: .4byte gUnk_03000D60
_0814BF50: .4byte 0x00004001
_0814BF54: .4byte gUnk_08765C8E
_0814BF58: .4byte gUnk_02029AE8
_0814BF5C: .4byte gUnk_0861E1A8
_0814BF60: .4byte gUnk_02002440

	thumb_func_start sub_0814BF64
sub_0814BF64: @ 0x0814BF64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _0814C06C @ =gUnk_02029AEC
	ldr r0, [r1]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_0801C184
	adds r7, r0, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_080197D4
	ldr r2, _0814C070 @ =gUnk_03000D60
	mov sl, r2
	lsls r1, r4, #5
	ldr r0, [r2, #0x10]
	adds r6, r0, r1
	movs r0, #0x88
	mov r8, r0
	str r0, [sp]
	movs r5, #1
	str r5, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #2
	movs r3, #1
	bl sub_0801A924
	ldr r1, _0814C074 @ =gUnk_08765C8E
	mov sb, r1
	mov r0, sb
	movs r1, #1
	movs r2, #0
	bl sub_0801C7C0
	adds r7, r0, #0
	adds r0, r4, #0
	adds r0, #0xc
	lsls r0, r0, #5
	mov r2, sl
	ldr r1, [r2, #0x10]
	adds r6, r1, r0
	mov r0, r8
	str r0, [sp]
	str r5, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #2
	movs r3, #1
	bl sub_0801A924
	adds r0, r4, #0
	adds r0, #0x18
	lsls r0, r0, #5
	mov r2, sl
	ldr r1, [r2, #0x10]
	adds r6, r1, r0
	ldr r1, _0814C06C @ =gUnk_02029AEC
	ldr r0, [r1]
	ldrb r2, [r0, #7]
	adds r2, #1
	mov r0, sb
	movs r1, #1
	bl sub_0801C7C0
	adds r7, r0, #0
	mov r2, r8
	str r2, [sp]
	str r5, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0xc
	movs r3, #1
	bl sub_0801A924
	adds r4, #0x30
	lsls r4, r4, #5
	mov r1, sl
	ldr r0, [r1, #0x10]
	adds r6, r0, r4
	ldr r2, _0814C06C @ =gUnk_02029AEC
	ldr r0, [r2]
	ldrb r2, [r0, #7]
	adds r2, #1
	mov r0, sb
	movs r1, #1
	bl sub_0801C7C0
	adds r7, r0, #0
	ldr r4, _0814C078 @ =gUnk_086A232E
	mov r0, r8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x18
	movs r3, #1
	bl sub_0801A924
	adds r0, r7, #0
	movs r1, #0x88
	bl sub_0801A6CC
	adds r0, r4, #0
	bl sub_0801C858
	mov r0, sb
	movs r1, #1
	movs r2, #0
	bl sub_0801C7C0
	adds r7, r0, #0
	movs r1, #0x88
	bl sub_0801A6CC
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814C06C: .4byte gUnk_02029AEC
_0814C070: .4byte gUnk_03000D60
_0814C074: .4byte gUnk_08765C8E
_0814C078: .4byte gUnk_086A232E

	thumb_func_start sub_0814C07C
sub_0814C07C: @ 0x0814C07C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	movs r5, #0
	ldr r7, _0814C0A0 @ =gUnk_02029AEC
	movs r6, #0
_0814C086:
	ldr r0, _0814C0A0 @ =gUnk_02029AEC
	ldr r1, [r0]
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _0814C0AE
	cmp r5, #0
	bne _0814C0A4
	movs r0, #6
	ldrsb r0, [r1, r0]
	cmp r0, #0x63
	beq _0814C0FE
	b _0814C0C0
	.align 2, 0
_0814C0A0: .4byte gUnk_02029AEC
_0814C0A4:
	movs r0, #6
	ldrsb r0, [r1, r0]
	cmp r0, #1
	beq _0814C0FE
	b _0814C0C0
_0814C0AE:
	cmp r5, #0
	bne _0814C0BA
	ldrb r0, [r1, #7]
	cmp r0, #0
	bne _0814C0FE
	b _0814C0C0
_0814C0BA:
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _0814C0FE
_0814C0C0:
	lsls r3, r5, #2
	lsls r0, r5, #3
	ldr r1, _0814C110 @ =gUnk_086A2280
	adds r0, r0, r1
	ldr r1, [r7]
	ldrb r2, [r1, #8]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #4
	adds r1, #0x58
	adds r2, r5, #0
	adds r2, #0xa
	lsls r2, r2, #3
	subs r3, #2
	adds r2, r2, r3
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x10]
	str r6, [sp, #0x14]
	ldr r3, _0814C114 @ =gUnk_086D7BF0
	ldrb r4, [r3, #0x11]
	movs r3, #0xf
	ands r3, r4
	str r3, [sp, #0x18]
	movs r3, #0
	bl sub_080022EC
_0814C0FE:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #1
	bls _0814C086
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814C110: .4byte gUnk_086A2280
_0814C114: .4byte gUnk_086D7BF0

	thumb_func_start sub_0814C118
sub_0814C118: @ 0x0814C118
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r0, _0814C318 @ =gUnk_02005640
	mov sl, r0
	ldr r2, _0814C31C @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r6, #0
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r0, #0xff
	str r0, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r0, _0814C320 @ =0x00010088
	str r0, [sp, #0x20]
	mov r0, sl
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0xe
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	ldr r1, _0814C324 @ =0x00002CFC
	add r1, sl
	mov sb, r1
	str r6, [sp, #0x24]
	ldr r2, _0814C328 @ =0x010000D0
	mov r8, r2
	add r0, sp, #0x24
	bl CpuFastSet
	ldr r0, _0814C32C @ =0x00002D8C
	add r0, sl
	movs r5, #0x20
	str r5, [sp]
	str r6, [sp, #4]
	movs r4, #4
	str r4, [sp, #8]
	movs r1, #4
	movs r2, #4
	movs r3, #2
	bl sub_0801BB1C
	ldr r0, _0814C330 @ =0x00002D94
	add r0, sl
	str r5, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0xe
	movs r2, #4
	movs r3, #2
	bl sub_0801BB1C
	movs r0, #0xbb
	lsls r0, r0, #6
	add r0, sl
	str r5, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0x1a
	movs r2, #4
	movs r3, #2
	bl sub_0801BB1C
	ldr r0, _0814C334 @ =gUnk_03000E20
	ldr r0, [r0, #0x14]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r7, r0, r1
	movs r4, #0xd
	ldr r5, _0814C338 @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, sb
	adds r2, r7, #0
	movs r3, #0x20
	bl sub_08000CD4
	ldr r1, [r5]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
	ldr r0, _0814C33C @ =0x000031FC
	add r0, sl
	mov sb, r0
	str r6, [sp, #0x28]
	add r0, sp, #0x28
	mov r1, sb
	mov r2, r8
	bl CpuFastSet
	ldr r0, _0814C340 @ =gUnk_02029AEC
	ldr r0, [r0]
	ldrh r0, [r0, #0x1a]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, #0
	beq _0814C21A
	adds r1, #0x6c
_0814C21A:
	adds r4, r1, #0
	mov r8, r4
	ldr r0, _0814C344 @ =0x0000328C
	add r0, sl
	bl sub_0814BF64
	ldr r7, _0814C348 @ =0x000032CE
	add r7, sl
	movs r2, #0
	ldr r5, _0814C34C @ =0x000032D6
	add r5, sl
	movs r1, #0x80
	lsls r1, r1, #7
	adds r6, r1, #0
	ldr r0, _0814C350 @ =0x00004001
	adds r3, r0, #0
_0814C23A:
	lsls r1, r2, #1
	adds r1, r1, r7
	adds r0, r4, r6
	strh r0, [r1]
	adds r1, #0x40
	adds r0, r4, r3
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #1
	bls _0814C23A
	mov r4, r8
	adds r4, #0x18
	adds r7, r5, #0
	movs r2, #0
	ldr r1, _0814C338 @ =gUnk_02029AE8
	mov sl, r1
	ldr r6, _0814C354 @ =gUnk_03000D60
	ldr r0, _0814C358 @ =gUnk_0200883C
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r5, r1, #0
	ldr r0, _0814C350 @ =0x00004001
	adds r3, r0, #0
_0814C274:
	lsls r1, r2, #1
	adds r1, r1, r7
	adds r0, r4, r5
	strh r0, [r1]
	adds r1, #0x40
	adds r0, r4, r3
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0xb
	bls _0814C274
	ldr r7, _0814C35C @ =0x00000206
	add r7, sb
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r5, r1, #0
	ldr r0, _0814C350 @ =0x00004001
	adds r3, r0, #0
_0814C2A2:
	lsls r1, r2, #1
	adds r1, r1, r7
	adds r0, r4, r5
	strh r0, [r1]
	adds r1, #0x40
	adds r0, r4, r3
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0x17
	bls _0814C2A2
	ldr r0, [r6, #0x14]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r7, r0, r1
	mov sb, r8
	movs r4, #0xd
	mov r2, sl
	ldr r0, [r2]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, sb
	adds r2, r7, #0
	movs r3, #0x20
	bl sub_08000CD4
	mov r0, sl
	ldr r1, [r0]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814C318: .4byte gUnk_02005640
_0814C31C: .4byte gUnk_08761224
_0814C320: .4byte 0x00010088
_0814C324: .4byte 0x00002CFC
_0814C328: .4byte 0x010000D0
_0814C32C: .4byte 0x00002D8C
_0814C330: .4byte 0x00002D94
_0814C334: .4byte gUnk_03000E20
_0814C338: .4byte gUnk_02029AE8
_0814C33C: .4byte 0x000031FC
_0814C340: .4byte gUnk_02029AEC
_0814C344: .4byte 0x0000328C
_0814C348: .4byte 0x000032CE
_0814C34C: .4byte 0x000032D6
_0814C350: .4byte 0x00004001
_0814C354: .4byte gUnk_03000D60
_0814C358: .4byte gUnk_0200883C
_0814C35C: .4byte 0x00000206

	thumb_func_start sub_0814C360
sub_0814C360: @ 0x0814C360
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	ldr r1, _0814C5CC @ =gUnk_0824DB44
	add r0, sp, #0x24
	movs r2, #0x14
	bl memcpy
	ldr r4, _0814C5D0 @ =gUnk_030010B0
	ldrh r0, [r4, #8]
	ldr r2, _0814C5D4 @ =0x0000FFEF
	ands r2, r0
	movs r5, #0
	ldrh r0, [r4, #6]
	ldr r1, _0814C5D8 @ =0x0000FFFD
	ands r1, r0
	ldr r3, _0814C5DC @ =gUnk_03000D80
	ldr r0, _0814C5E0 @ =sub_0815233C
	str r0, [r3, #0xc]
	movs r0, #0x10
	orrs r2, r0
	strh r2, [r4, #8]
	movs r0, #2
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #0xa0
	mov r8, r0
	ldr r4, _0814C5E4 @ =gUnk_0200833C
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r7, r4, r1
	movs r6, #0xec
	lsls r6, r6, #1
	ldr r0, _0814C5E8 @ =gUnk_08703368
	lsls r1, r6, #5
	ldr r2, _0814C5EC @ =0x06008000
	adds r1, r1, r2
	movs r2, #0xc
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r7, #0
	movs r3, #0x1e
	bl sub_0801A59C
	adds r6, #1
	str r5, [sp, #0x38]
	add r0, sp, #0x38
	ldr r2, _0814C5F0 @ =0x01000140
	adds r1, r7, #0
	bl CpuFastSet
	ldr r5, _0814C5F4 @ =gUnk_02002400
	ldr r0, _0814C5F8 @ =gUnk_0873AE64
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r2, #8
	bl CpuFastSet
	movs r0, #0xb0
	lsls r0, r0, #3
	adds r5, r4, r0
	movs r4, #0x90
	lsls r4, r4, #8
	movs r3, #0
	add r1, sp, #0x3c
	mov sl, r1
_0814C3EE:
	lsls r2, r3, #1
	adds r1, r2, r5
	adds r0, r6, r3
	adds r0, r4, r0
	strh r0, [r1]
	adds r1, #0x80
	mov r0, sp
	adds r0, r0, r2
	adds r0, #0x24
	ldrh r0, [r0]
	adds r0, r6, r0
	adds r0, r4, r0
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #9
	bls _0814C3EE
	adds r1, r5, #0
	adds r1, #0x40
	adds r0, r4, #0
	adds r0, #0xa
	adds r0, r6, r0
	strh r0, [r1]
	adds r1, #0x12
	adds r0, r4, #0
	adds r0, #0xb
	adds r0, r6, r0
	strh r0, [r1]
	movs r3, #1
	mov r2, r8
	lsls r2, r2, #1
	mov sb, r2
	adds r0, r4, #0
	adds r0, #0x14
	adds r1, r6, r0
_0814C436:
	lsls r0, r3, #1
	adds r0, r0, r5
	adds r0, #0x40
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #8
	bls _0814C436
	movs r1, #0x84
	lsls r1, r1, #3
	adds r0, r7, r1
	movs r5, #0x20
	str r5, [sp]
	movs r2, #0
	mov r8, r2
	str r2, [sp, #4]
	movs r4, #4
	str r4, [sp, #8]
	movs r1, #0xd
	movs r2, #4
	movs r3, #2
	bl sub_0801BB1C
	ldr r1, _0814C5FC @ =0x0000020A
	adds r0, r7, r1
	str r5, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0x14
	movs r2, #8
	movs r3, #2
	bl sub_0801BB1C
	ldr r0, _0814C600 @ =gUnk_03000E20
	ldr r2, [r0, #0x14]
	movs r6, #0x14
	ldr r5, _0814C604 @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r6, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	str r1, [sp, #8]
	adds r1, r7, #0
	movs r3, #0x20
	bl sub_08000CD4
	ldr r1, [r5]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
	ldr r0, _0814C608 @ =gUnk_0200883C
	mov r1, sb
	adds r7, r1, r0
	mov r2, r8
	str r2, [sp, #0x3c]
	ldr r2, _0814C5F0 @ =0x01000140
	mov r0, sl
	adds r1, r7, #0
	bl CpuFastSet
	movs r6, #0xf7
	lsls r6, r6, #1
	ldr r1, _0814C60C @ =gUnk_08623678
	ldr r0, [r5]
	ldrh r0, [r0, #0x12]
	movs r2, #0xee
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x8d
	lsls r1, r1, #3
	adds r4, r7, r1
	adds r5, r6, #0
	ldr r1, [r0]
	ldr r0, _0814C610 @ =gUnk_03000D60
	lsls r2, r5, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r2
	movs r2, #0xff
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	movs r2, #0
	ldr r3, _0814C614 @ =0x00004001
_0814C508:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	strh r0, [r4]
	adds r1, r4, #0
	adds r1, #0x40
	adds r0, r5, r3
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r5, #2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #2
	cmp r2, #8
	blo _0814C508
	ldr r2, _0814C618 @ =0x00000482
	adds r0, r7, r2
	ldr r1, _0814C61C @ =gUnk_02000000
	ldr r2, _0814C620 @ =0x00001184
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #8
	bl sub_0814B8A4
	ldr r0, _0814C610 @ =gUnk_03000D60
	ldr r2, [r0, #0x14]
	movs r6, #0x14
	ldr r5, _0814C604 @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r6, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	str r1, [sp, #8]
	adds r1, r7, #0
	movs r3, #0x20
	bl sub_08000CD4
	ldr r1, [r5]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r4, #3
	ands r0, r4
	movs r3, #0
	strh r0, [r1]
	ldr r0, _0814C624 @ =gUnk_02005640
	ldr r2, _0814C628 @ =gUnk_08761224
	str r4, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r3, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r1, _0814C62C @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #6
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	ldr r0, [r5]
	ldrh r0, [r0, #0x12]
	bl sub_0815221C
	bl sub_081522E8
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814C5CC: .4byte gUnk_0824DB44
_0814C5D0: .4byte gUnk_030010B0
_0814C5D4: .4byte 0x0000FFEF
_0814C5D8: .4byte 0x0000FFFD
_0814C5DC: .4byte gUnk_03000D80
_0814C5E0: .4byte sub_0815233C
_0814C5E4: .4byte gUnk_0200833C
_0814C5E8: .4byte gUnk_08703368
_0814C5EC: .4byte 0x06008000
_0814C5F0: .4byte 0x01000140
_0814C5F4: .4byte gUnk_02002400
_0814C5F8: .4byte gUnk_0873AE64
_0814C5FC: .4byte 0x0000020A
_0814C600: .4byte gUnk_03000E20
_0814C604: .4byte gUnk_02029AE8
_0814C608: .4byte gUnk_0200883C
_0814C60C: .4byte gUnk_08623678
_0814C610: .4byte gUnk_03000D60
_0814C614: .4byte 0x00004001
_0814C618: .4byte 0x00000482
_0814C61C: .4byte gUnk_02000000
_0814C620: .4byte 0x00001184
_0814C624: .4byte gUnk_02005640
_0814C628: .4byte gUnk_08761224
_0814C62C: .4byte 0x00010088

	thumb_func_start sub_0814C630
sub_0814C630: @ 0x0814C630
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	mov sb, r1
	ldrb r0, [r1]
	cmp r0, #0xa
	bls _0814C646
	b _0814CD3C
_0814C646:
	lsls r0, r0, #2
	ldr r1, _0814C650 @ =_0814C654
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0814C650: .4byte _0814C654
_0814C654: @ jump table
	.4byte _0814C680 @ case 0
	.4byte _0814C6C4 @ case 1
	.4byte _0814C8EC @ case 2
	.4byte _0814C918 @ case 3
	.4byte _0814C71C @ case 4
	.4byte _0814C9AC @ case 5
	.4byte _0814C9DC @ case 6
	.4byte _0814CC20 @ case 7
	.4byte _0814CC88 @ case 8
	.4byte _0814CCB4 @ case 9
	.4byte _0814CCE0 @ case 10
_0814C680:
	ldr r4, _0814C708 @ =gUnk_02029AEC
	ldr r0, [r4]
	movs r1, #0xf0
	bl memzero
	ldr r1, [r4]
	movs r0, #0
	strh r0, [r1, #2]
	movs r4, #0
_0814C692:
	adds r0, r4, #0
	adds r0, #0x17
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0814C6B0
	ldr r0, _0814C708 @ =gUnk_02029AEC
	ldr r1, [r0]
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
_0814C6B0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0814C692
	ldr r0, _0814C70C @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x12]
	strh r0, [r1, #0x14]
_0814C6C4:
	bl sub_0814C360
	movs r0, #0
	bl sub_0812B174
	ldr r4, _0814C710 @ =gUnk_03000F64
	adds r1, r4, #0
	adds r1, #0x10
	adds r2, r4, #0
	adds r2, #0x1c
	adds r0, r4, #0
	movs r3, #1
	bl sub_08002CD4
	ldr r2, _0814C714 @ =sub_0812AB40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08002D38
	ldr r1, _0814C718 @ =gUnk_086A2308
	movs r0, #9
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r2, #0x88
	movs r3, #0x88
	bl sub_0812B094
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000768
	movs r0, #4
	b _0814CC72
	.align 2, 0
_0814C708: .4byte gUnk_02029AEC
_0814C70C: .4byte gUnk_02029AE8
_0814C710: .4byte gUnk_03000F64
_0814C714: .4byte sub_0812AB40
_0814C718: .4byte gUnk_086A2308
_0814C71C:
	bl sub_0801A40C
	ldr r3, _0814C738 @ =gUnk_02029AEC
	ldr r1, [r3]
	movs r2, #0
	strh r0, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #2
	beq _0814C778
	cmp r0, #2
	bgt _0814C73C
	cmp r0, #1
	beq _0814C746
	b _0814C878
	.align 2, 0
_0814C738: .4byte gUnk_02029AEC
_0814C73C:
	cmp r0, #0x10
	beq _0814C78C
	cmp r0, #0x20
	beq _0814C804
	b _0814C878
_0814C746:
	movs r0, #0xad
	bl PlaySE
	ldr r1, _0814C76C @ =gUnk_030010B0
	ldrh r2, [r1, #8]
	ldr r0, _0814C770 @ =0x0000FFEF
	ands r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #6]
	ldr r0, _0814C774 @ =0x0000FFFD
	ands r0, r2
	strh r0, [r1, #6]
	bl sub_0814B9AC
	movs r0, #3
	mov r2, sb
	strb r0, [r2]
	b _0814C878
	.align 2, 0
_0814C76C: .4byte gUnk_030010B0
_0814C770: .4byte 0x0000FFEF
_0814C774: .4byte 0x0000FFFD
_0814C778:
	movs r0, #0xb0
	bl PlaySE
	ldr r0, _0814C788 @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0x19]
	b _0814CD3C
	.align 2, 0
_0814C788: .4byte gUnk_02029AE8
_0814C78C:
	strh r2, [r1, #0x1e]
	ldr r2, _0814C7B0 @ =gUnk_02029AE8
	ldr r7, _0814C7B4 @ =gUnk_086A2250
	adds r6, r7, #0
	adds r5, r2, #0
	adds r4, r3, #0
_0814C798:
	ldr r3, [r5]
	ldrh r0, [r3, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0]
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	cmp r1, r0
	blo _0814C7B8
	strh r1, [r3, #0x14]
	b _0814C798
	.align 2, 0
_0814C7B0: .4byte gUnk_02029AE8
_0814C7B4: .4byte gUnk_086A2250
_0814C7B8:
	ldr r0, [r2]
	ldrh r1, [r0, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrb r1, [r1]
	ldrh r0, [r0, #0x12]
	cmp r1, r0
	beq _0814C7EE
	movs r0, #2
	mov r6, sb
	strb r0, [r6]
	ldr r1, [r2]
	movs r2, #0x10
	strh r2, [r1, #0x10]
	ldrh r0, [r1, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0]
	strh r0, [r1, #0x14]
	ldr r4, _0814C800 @ =gUnk_02029AEC
	ldr r0, [r4]
	strh r2, [r0, #0x1e]
	ldrh r0, [r1, #0x14]
	bl sub_0815209C
	ldr r1, [r4]
	strh r0, [r1, #0x1c]
_0814C7EE:
	ldr r0, _0814C800 @ =gUnk_02029AEC
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	cmp r0, #0
	beq _0814C878
	movs r0, #0xb2
	bl PlaySE
	b _0814C878
	.align 2, 0
_0814C800: .4byte gUnk_02029AEC
_0814C804:
	strh r2, [r1, #0x1e]
	ldr r2, _0814C828 @ =gUnk_02029AE8
	ldr r7, _0814C82C @ =gUnk_086A2250
	adds r6, r7, #0
	adds r5, r2, #0
	adds r4, r3, #0
_0814C810:
	ldr r3, [r5]
	ldrh r0, [r3, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #1]
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	cmp r1, r0
	blo _0814C830
	strh r1, [r3, #0x14]
	b _0814C810
	.align 2, 0
_0814C828: .4byte gUnk_02029AE8
_0814C82C: .4byte gUnk_086A2250
_0814C830:
	ldr r0, [r2]
	ldrh r1, [r0, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrb r1, [r1, #1]
	ldrh r0, [r0, #0x12]
	cmp r1, r0
	beq _0814C868
	movs r0, #2
	mov r1, sb
	strb r0, [r1]
	ldr r2, [r2]
	movs r0, #0x10
	strh r0, [r2, #0x10]
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #1]
	strh r0, [r2, #0x14]
	ldr r4, _0814C8E0 @ =gUnk_02029AEC
	ldr r1, [r4]
	movs r0, #0x20
	strh r0, [r1, #0x1e]
	ldrh r0, [r2, #0x14]
	bl sub_0815209C
	ldr r1, [r4]
	strh r0, [r1, #0x1c]
_0814C868:
	ldr r0, _0814C8E0 @ =gUnk_02029AEC
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	cmp r0, #0
	beq _0814C878
	movs r0, #0xb2
	bl PlaySE
_0814C878:
	ldr r0, _0814C8E4 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	ldr r0, _0814C8E0 @ =gUnk_02029AEC
	ldr r2, [r0]
	ldrh r0, [r2, #2]
	cmp r0, #1
	bhi _0814C88C
	b _0814CD3C
_0814C88C:
	ldrh r1, [r2, #0x10]
	adds r1, #1
	strh r1, [r2, #0x10]
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0xd
	ands r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _0814C8A2
	b _0814CD3C
_0814C8A2:
	movs r4, #0
	movs r5, #0
_0814C8A6:
	lsls r1, r4, #2
	lsls r0, r4, #3
	ldr r2, _0814C8E8 @ =gUnk_086A2290
	adds r0, r0, r2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r1, #4
	lsls r1, r1, #3
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0x80
	lsls r2, r2, #1
	str r2, [sp, #0x10]
	str r5, [sp, #0x14]
	str r5, [sp, #0x18]
	movs r2, #0x70
	movs r3, #0
	bl sub_080022EC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #1
	bls _0814C8A6
	b _0814CD3C
	.align 2, 0
_0814C8E0: .4byte gUnk_02029AEC
_0814C8E4: .4byte gUnk_03000F64
_0814C8E8: .4byte gUnk_086A2290
_0814C8EC:
	bl sub_0814B5C4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814C8FC
	movs r0, #4
	mov r2, sb
	strb r0, [r2]
_0814C8FC:
	ldr r0, _0814C910 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	ldr r0, _0814C914 @ =gUnk_02029AEC
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x10]
	b _0814CD3C
	.align 2, 0
_0814C910: .4byte gUnk_03000F64
_0814C914: .4byte gUnk_02029AEC
_0814C918:
	ldr r0, _0814C93C @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801670C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0814C92C
	b _0814CD3C
_0814C92C:
	bl sub_080197C0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _0814C940
	movs r0, #1
	b _0814CCD0
	.align 2, 0
_0814C93C: .4byte gUnk_03000F64
_0814C940:
	ldr r0, _0814C988 @ =gUnk_02000000
	ldr r1, _0814C98C @ =0x00001184
	adds r0, r0, r1
	ldr r1, _0814C990 @ =gUnk_02029AEC
	ldr r2, [r1]
	ldr r1, [r0]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	bhs _0814C9A0
	ldr r0, _0814C994 @ =gUnk_02005640
	ldr r2, _0814C998 @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r3, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r1, _0814C99C @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0xd
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #5
	b _0814CCA4
	.align 2, 0
_0814C988: .4byte gUnk_02000000
_0814C98C: .4byte 0x00001184
_0814C990: .4byte gUnk_02029AEC
_0814C994: .4byte gUnk_02005640
_0814C998: .4byte gUnk_08761224
_0814C99C: .4byte 0x00010088
_0814C9A0:
	movs r0, #0x14
	strb r0, [r2, #6]
	bl sub_0814C118
	movs r0, #6
	b _0814CCD0
_0814C9AC:
	ldr r0, _0814C9D4 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801670C
	bl sub_0801A40C
	ldr r1, _0814C9D8 @ =gUnk_02029AEC
	ldr r1, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #2
	ble _0814C9CA
	b _0814CD3C
_0814C9CA:
	cmp r0, #1
	bge _0814C9D0
	b _0814CD3C
_0814C9D0:
	movs r0, #1
	b _0814CC72
	.align 2, 0
_0814C9D4: .4byte gUnk_03000F64
_0814C9D8: .4byte gUnk_02029AEC
_0814C9DC:
	ldr r0, _0814C9FC @ =gUnk_03000820
	ldrh r0, [r0]
	cmp r0, #0x40
	bne _0814CA04
	ldr r2, _0814CA00 @ =gUnk_02029AEC
	ldr r1, [r2]
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _0814CA2C
	ldr r1, [r2]
	movs r0, #0x3c
	b _0814CA2A
	.align 2, 0
_0814C9FC: .4byte gUnk_03000820
_0814CA00: .4byte gUnk_02029AEC
_0814CA04:
	cmp r0, #0x80
	bne _0814CA24
	ldr r2, _0814CA20 @ =gUnk_02029AEC
	ldr r1, [r2]
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _0814CA2C
	ldr r1, [r2]
	movs r0, #0x3c
	b _0814CA2A
	.align 2, 0
_0814CA20: .4byte gUnk_02029AEC
_0814CA24:
	ldr r0, _0814CA50 @ =gUnk_02029AEC
	ldr r1, [r0]
	movs r0, #0
_0814CA2A:
	strb r0, [r1, #9]
_0814CA2C:
	bl sub_0801A40C
	ldr r4, _0814CA50 @ =gUnk_02029AEC
	ldr r1, [r4]
	movs r2, #0
	mov sl, r2
	strh r0, [r1, #4]
	ldrh r7, [r1, #4]
	cmp r7, #0x10
	bne _0814CA42
	b _0814CBF8
_0814CA42:
	cmp r7, #0x10
	bgt _0814CA54
	cmp r7, #1
	beq _0814CA6C
	cmp r7, #2
	beq _0814CB28
	b _0814CC1A
	.align 2, 0
_0814CA50: .4byte gUnk_02029AEC
_0814CA54:
	cmp r7, #0x40
	beq _0814CB3E
	cmp r7, #0x40
	bgt _0814CA64
	cmp r7, #0x20
	bne _0814CA62
	b _0814CC0A
_0814CA62:
	b _0814CC1A
_0814CA64:
	cmp r7, #0x80
	bne _0814CA6A
	b _0814CB8E
_0814CA6A:
	b _0814CC1A
_0814CA6C:
	movs r0, #0xad
	bl PlaySE
	ldr r0, _0814CB10 @ =gUnk_03000D60
	ldr r2, [r0, #0x14]
	movs r6, #0xe0
	lsls r6, r6, #1
	mov r8, r6
	add r2, r8
	ldr r6, _0814CB14 @ =gUnk_02029AE8
	ldr r0, [r6]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xc0
	bl sub_08000C44
	ldr r0, [r6]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	movs r5, #3
	ands r3, r5
	strh r3, [r4]
	ldr r1, _0814CB18 @ =gUnk_03000E20
	ldr r2, [r1, #0x14]
	add r2, r8
	adds r1, r3, #1
	strh r1, [r4]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xc0
	bl sub_08000C44
	ldr r1, [r6]
	adds r1, #0x40
	ldrh r0, [r1]
	ands r0, r5
	strh r0, [r1]
	ldr r0, _0814CB1C @ =gUnk_02005640
	ldr r2, _0814CB20 @ =gUnk_08761224
	str r5, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r1, sl
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	mov r6, sl
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r1, _0814CB24 @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0x11
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #7
	b _0814CC72
	.align 2, 0
_0814CB10: .4byte gUnk_03000D60
_0814CB14: .4byte gUnk_02029AE8
_0814CB18: .4byte gUnk_03000E20
_0814CB1C: .4byte gUnk_02005640
_0814CB20: .4byte gUnk_08761224
_0814CB24: .4byte 0x00010088
_0814CB28:
	movs r0, #0xb0
	bl PlaySE
	ldr r0, [r4]
	ldrh r1, [r0, #0x1a]
	movs r2, #1
	eors r1, r2
	strh r1, [r0, #0x1a]
	mov r6, sb
	strb r2, [r6]
	b _0814CD3C
_0814CB3E:
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _0814CB7C
	ldrb r2, [r1, #6]
	movs r0, #6
	ldrsb r0, [r1, r0]
	cmp r0, #0x62
	bgt _0814CBD0
	ldrb r0, [r1, #9]
	cmp r0, #0x3c
	bne _0814CB5A
	adds r0, r2, #0
	adds r0, #0xa
	b _0814CB5C
_0814CB5A:
	adds r0, r2, #1
_0814CB5C:
	strb r0, [r1, #6]
	movs r0, #0xb2
	bl PlaySE
	ldr r0, _0814CB78 @ =gUnk_02029AEC
	ldr r1, [r0]
	movs r0, #6
	ldrsb r0, [r1, r0]
	cmp r0, #0x63
	ble _0814CBD0
	movs r0, #0x63
	strb r0, [r1, #6]
	b _0814CBD0
	.align 2, 0
_0814CB78: .4byte gUnk_02029AEC
_0814CB7C:
	ldrb r0, [r1, #7]
	cmp r0, #0
	bne _0814CB88
	movs r0, #0xb2
	bl PlaySE
_0814CB88:
	ldr r1, [r4]
	movs r0, #1
	b _0814CBCE
_0814CB8E:
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _0814CBBE
	ldrb r3, [r1, #6]
	movs r2, #6
	ldrsb r2, [r1, r2]
	cmp r2, #1
	ble _0814CBD0
	ldrb r0, [r1, #9]
	cmp r0, #0x3c
	bne _0814CBB2
	cmp r2, #0xa
	ble _0814CBAE
	adds r0, r3, #0
	subs r0, #0xa
	b _0814CBB4
_0814CBAE:
	movs r0, #1
	b _0814CBB4
_0814CBB2:
	subs r0, r3, #1
_0814CBB4:
	strb r0, [r1, #6]
	movs r0, #0xb2
	bl PlaySE
	b _0814CBD0
_0814CBBE:
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _0814CBCA
	movs r0, #0xb2
	bl PlaySE
_0814CBCA:
	ldr r1, [r4]
	movs r0, #0
_0814CBCE:
	strb r0, [r1, #7]
_0814CBD0:
	ldr r0, _0814CBF0 @ =gUnk_0200833C
	adds r2, r0, #0
	adds r2, #0x1e
	ldr r0, _0814CBF4 @ =gUnk_02029AEC
	ldr r0, [r0]
	ldrh r0, [r0, #0x1a]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, #0
	beq _0814CBE6
	adds r1, #0x6c
_0814CBE6:
	adds r0, r2, #0
	bl sub_0814BF64
	b _0814CC1A
	.align 2, 0
_0814CBF0: .4byte gUnk_0200833C
_0814CBF4: .4byte gUnk_02029AEC
_0814CBF8:
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _0814CC1A
	adds r0, #1
	strb r0, [r1, #8]
	movs r0, #0xb2
	bl PlaySE
	b _0814CC1A
_0814CC0A:
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _0814CC1A
	subs r0, #1
	strb r0, [r1, #8]
	movs r0, #0xb2
	bl PlaySE
_0814CC1A:
	bl sub_0814C07C
	b _0814CD3C
_0814CC20:
	bl sub_0801670C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0814CC2C
	b _0814CD3C
_0814CC2C:
	bl sub_080197C0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _0814CC40
	bl sub_0814C118
	movs r0, #6
	b _0814CC72
_0814CC40:
	ldr r2, _0814CC78 @ =gUnk_02000000
	ldr r6, _0814CC7C @ =0x00001184
	adds r2, r2, r6
	ldr r0, _0814CC80 @ =gUnk_02029AEC
	ldr r3, [r0]
	ldr r0, [r2]
	ldr r1, [r3, #0xc]
	subs r0, r0, r1
	str r0, [r2]
	ldr r2, _0814CC84 @ =gUnk_03000DD0
	adds r1, r2, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	movs r0, #0x9f
	strb r0, [r1]
	adds r4, r2, #0
	adds r4, #0x4b
	ldrb r1, [r4]
	strb r0, [r4]
	adds r0, r2, #0
	adds r0, #0x4e
	ldrb r1, [r0]
	strb r5, [r0]
	strh r5, [r3]
	movs r0, #8
_0814CC72:
	mov r1, sb
	strb r0, [r1]
	b _0814CD3C
	.align 2, 0
_0814CC78: .4byte gUnk_02000000
_0814CC7C: .4byte 0x00001184
_0814CC80: .4byte gUnk_02029AEC
_0814CC84: .4byte gUnk_03000DD0
_0814CC88:
	ldr r0, _0814CCAC @ =gUnk_02029AEC
	ldr r1, [r0]
	ldrh r0, [r1]
	adds r0, #1
	adds r2, r0, #0
	strh r0, [r1]
	ldr r0, _0814CCB0 @ =gUnk_03000DD0
	adds r0, #0x4e
	ldrb r3, [r0]
	strb r2, [r0]
	ldrh r0, [r1]
	cmp r0, #0x10
	bne _0814CD3C
	movs r0, #9
_0814CCA4:
	mov r2, sb
	strb r0, [r2]
	b _0814CD3C
	.align 2, 0
_0814CCAC: .4byte gUnk_02029AEC
_0814CCB0: .4byte gUnk_03000DD0
_0814CCB4:
	ldr r0, _0814CCD8 @ =gUnk_02029AEC
	ldr r1, [r0]
	ldrh r0, [r1]
	subs r0, #1
	adds r2, r0, #0
	strh r0, [r1]
	ldr r0, _0814CCDC @ =gUnk_03000DD0
	adds r0, #0x4e
	ldrb r3, [r0]
	strb r2, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	bne _0814CD3C
	movs r0, #0xa
_0814CCD0:
	mov r6, sb
	strb r0, [r6]
	b _0814CD3C
	.align 2, 0
_0814CCD8: .4byte gUnk_02029AEC
_0814CCDC: .4byte gUnk_03000DD0
_0814CCE0:
	ldr r3, _0814CD4C @ =gUnk_02029AEC
	ldr r1, [r3]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _0814CD3C
	ldr r4, _0814CD50 @ =gUnk_02029AE8
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #0x19]
	ldr r5, _0814CD54 @ =gUnk_03000FA0
	ldr r2, _0814CD58 @ =gUnk_02000000
	ldr r1, _0814CD5C @ =0x0000118B
	adds r0, r2, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa4
	strb r1, [r0]
	ldr r6, _0814CD60 @ =0x0000118C
	adds r0, r2, r6
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0xa5
	strb r0, [r1]
	ldr r3, [r3]
	ldrb r1, [r3, #7]
	ldr r6, _0814CD64 @ =0x0000141C
	adds r0, r2, r6
	strb r1, [r0]
	ldrb r0, [r3, #6]
	ldr r1, _0814CD68 @ =0x0000141D
	adds r2, r2, r1
	strb r0, [r2]
	ldr r1, _0814CD6C @ =gUnk_086A2324
	ldr r0, [r4]
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0811877C
	movs r0, #4
	strb r0, [r5]
_0814CD3C:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814CD4C: .4byte gUnk_02029AEC
_0814CD50: .4byte gUnk_02029AE8
_0814CD54: .4byte gUnk_03000FA0
_0814CD58: .4byte gUnk_02000000
_0814CD5C: .4byte 0x0000118B
_0814CD60: .4byte 0x0000118C
_0814CD64: .4byte 0x0000141C
_0814CD68: .4byte 0x0000141D
_0814CD6C: .4byte gUnk_086A2324

	thumb_func_start sub_0814CD70
sub_0814CD70: @ 0x0814CD70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r0, _0814CE54 @ =gUnk_02005640
	mov r8, r0
	ldr r2, _0814CE58 @ =gUnk_08761224
	movs r1, #3
	mov sb, r1
	str r1, [sp]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r0, #0xff
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r0, _0814CE5C @ =0x00010088
	str r0, [sp, #0x20]
	mov r0, r8
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0x13
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	ldr r2, _0814CE60 @ =0x00002CFC
	add r2, r8
	mov sl, r2
	movs r0, #0x16
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	mov r0, sl
	movs r1, #0x16
	movs r2, #8
	movs r3, #2
	bl sub_0801BB1C
	ldr r0, _0814CE64 @ =gUnk_03000E20
	ldr r0, [r0, #0x14]
	movs r3, #0x92
	lsls r3, r3, #2
	adds r7, r0, r3
	movs r5, #8
	ldr r6, _0814CE68 @ =gUnk_02029AE8
	ldr r0, [r6]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r5, [sp]
	movs r1, #0x2c
	str r1, [sp, #4]
	movs r1, #0x40
	str r1, [sp, #8]
	mov r1, sl
	adds r2, r7, #0
	movs r3, #0x16
	bl sub_08000CD4
	ldr r1, [r6]
	adds r1, #0x40
	ldrh r0, [r1]
	mov r7, sb
	ands r0, r7
	strh r0, [r1]
	ldr r0, _0814CE6C @ =0x00002E5C
	add r0, r8
	mov sl, r0
	str r4, [sp, #0x24]
	ldr r2, _0814CE70 @ =0x01000058
	add r0, sp, #0x24
	mov r1, sl
	bl CpuFastSet
	movs r3, #0
	ldr r5, _0814CE74 @ =gUnk_0871CEAB
	movs r6, #0xf
_0814CE34:
	lsls r0, r3, #1
	mov r1, sl
	adds r4, r0, r1
	adds r2, r3, #0
	adds r2, #0x62
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0814CE78
	lsrs r0, r3, #1
	adds r0, #4
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	b _0814CE84
	.align 2, 0
_0814CE54: .4byte gUnk_02005640
_0814CE58: .4byte gUnk_08761224
_0814CE5C: .4byte 0x00010088
_0814CE60: .4byte 0x00002CFC
_0814CE64: .4byte gUnk_03000E20
_0814CE68: .4byte gUnk_02029AE8
_0814CE6C: .4byte 0x00002E5C
_0814CE70: .4byte 0x01000058
_0814CE74: .4byte gUnk_0871CEAB
_0814CE78:
	lsrs r0, r3, #1
	adds r0, #4
	adds r0, r0, r5
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ands r0, r6
_0814CE84:
	lsls r0, r0, #0xc
	adds r0, r2, r0
	strh r0, [r4, #0x2e]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #4
	bls _0814CE34
	movs r3, #0
	ldr r2, _0814CECC @ =gUnk_02029AEC
	movs r7, #0x5e
	add r7, sl
	mov r8, r7
	mov r0, sl
	adds r0, #0x72
	str r0, [sp, #0x28]
	ldr r6, _0814CED0 @ =gUnk_0871CEAB
	movs r7, #0xf
_0814CEA8:
	lsls r0, r3, #1
	add r0, sl
	adds r5, r0, #0
	adds r5, #0xb2
	adds r4, r3, #0
	adds r4, #0x67
	adds r1, r3, #5
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0814CED4
	asrs r0, r1, #1
	adds r0, #4
	adds r0, r0, r6
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	b _0814CEE0
	.align 2, 0
_0814CECC: .4byte gUnk_02029AEC
_0814CED0: .4byte gUnk_0871CEAB
_0814CED4:
	asrs r0, r1, #1
	adds r0, #4
	adds r0, r0, r6
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ands r0, r7
_0814CEE0:
	lsls r0, r0, #0xc
	adds r0, r4, r0
	strh r0, [r5]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0814CEA8
	ldr r2, [r2]
	ldrh r3, [r2, #0x1a]
	movs r1, #1
	adds r0, r3, #0
	eors r0, r1
	strh r0, [r2, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r3, #0
	beq _0814CF06
	adds r0, #0x6c
_0814CF06:
	adds r6, r0, #0
	mov sb, r6
	ldr r0, _0814D05C @ =gUnk_08765C8E
	movs r1, #2
	movs r2, #0
	bl sub_0801C7C0
	adds r3, r0, #0
	mov r5, r8
	adds r4, r6, #0
	ldr r0, _0814D060 @ =gUnk_03000D60
	lsls r1, r6, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	adds r1, r3, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	adds r2, r6, #0
	movs r1, #0
	ldr r3, _0814D064 @ =0x00004001
_0814CF3A:
	movs r7, #0x80
	lsls r7, r7, #7
	adds r0, r4, r7
	strh r0, [r5]
	adds r0, r4, r3
	strh r0, [r5, #0x2c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r1, #8
	blo _0814CF3A
	subs r0, r4, r2
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0814D05C @ =gUnk_08765C8E
	movs r1, #2
	movs r2, #1
	bl sub_0801C7C0
	adds r3, r0, #0
	ldr r5, [sp, #0x28]
	adds r4, r7, #0
	movs r2, #0
	ldr r0, _0814D060 @ =gUnk_03000D60
	lsls r1, r7, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r3, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	movs r1, #0
	ldr r2, _0814D064 @ =0x00004001
_0814CF8E:
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r4, r3
	strh r0, [r5]
	adds r0, r4, r2
	strh r0, [r5, #0x2c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r1, #8
	blo _0814CF8E
	mov r6, sb
	movs r3, #0
	ldr r0, _0814D068 @ =gUnk_02029AE8
	mov sb, r0
	ldr r1, _0814D060 @ =gUnk_03000D60
	mov r8, r1
	movs r2, #0x80
	lsls r2, r2, #7
	adds r5, r2, #0
	ldr r0, _0814D064 @ =0x00004001
	adds r4, r0, #0
_0814CFC2:
	lsls r0, r3, #1
	mov r1, sl
	adds r2, r0, r1
	adds r1, r2, #0
	adds r1, #0xe2
	adds r0, r6, r5
	strh r0, [r1]
	movs r0, #0x87
	lsls r0, r0, #1
	adds r1, r2, r0
	adds r0, r6, r4
	strh r0, [r1]
	adds r1, r2, #0
	adds r1, #0xf6
	adds r0, r7, r5
	strh r0, [r1]
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r2, r0
	adds r0, r7, r4
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r3, #7
	bls _0814CFC2
	mov r1, r8
	ldr r0, [r1, #0x14]
	movs r2, #0x92
	lsls r2, r2, #2
	adds r7, r0, r2
	movs r4, #8
	mov r3, sb
	ldr r0, [r3]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0x2c
	str r1, [sp, #4]
	movs r1, #0x40
	str r1, [sp, #8]
	mov r1, sl
	adds r2, r7, #0
	movs r3, #0x16
	bl sub_08000CD4
	mov r7, sb
	ldr r1, [r7]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814D05C: .4byte gUnk_08765C8E
_0814D060: .4byte gUnk_03000D60
_0814D064: .4byte 0x00004001
_0814D068: .4byte gUnk_02029AE8

	thumb_func_start sub_0814D06C
sub_0814D06C: @ 0x0814D06C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	ldr r0, _0814D128 @ =gUnk_02029AEC
	ldr r1, [r0]
	ldrh r0, [r1, #0x10]
	adds r0, #1
	movs r7, #0
	strh r0, [r1, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	movs r1, #0xe0
	lsls r1, r1, #0xb
	ands r1, r0
	lsrs r6, r1, #0x10
	cmp r6, #3
	bhi _0814D0A2
	movs r0, #8
	subs r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0814D0A2:
	ldr r0, _0814D12C @ =gMultiSioArea
	ldrb r0, [r0]
	movs r1, #8
	eors r0, r1
	rsbs r4, r0, #0
	orrs r4, r0
	lsrs r4, r4, #0x1f
	ldr r0, _0814D130 @ =gUnk_086A2270
	mov r8, r0
	ldr r1, _0814D134 @ =gUnk_02029AE8
	mov sb, r1
	ldr r0, [r1]
	adds r0, #0x1c
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, #0x20
	adds r1, r6, r1
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	movs r5, #0x80
	lsls r5, r5, #1
	str r5, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	mov r0, r8
	movs r2, #0x5c
	movs r3, #0
	bl sub_080022EC
	movs r0, #1
	eors r4, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x1c
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, #0x20
	adds r1, r6, r1
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r5, [sp, #0x10]
	str r7, [sp, #0x14]
	movs r0, #1
	str r0, [sp, #0x18]
	mov r0, r8
	movs r2, #0x74
	movs r3, #0
	bl sub_080022EC
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814D128: .4byte gUnk_02029AEC
_0814D12C: .4byte gMultiSioArea
_0814D130: .4byte gUnk_086A2270
_0814D134: .4byte gUnk_02029AE8

	thumb_func_start sub_0814D138
sub_0814D138: @ 0x0814D138
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _0814D194 @ =gUnk_02029AEC
	ldr r0, [r2]
	adds r0, #0x38
	movs r1, #0
	strb r1, [r0]
	movs r6, #0
	mov r8, r2
	ldr r0, _0814D198 @ =gUnk_02029AE4
	mov sb, r0
_0814D158:
	adds r4, r6, #4
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl sub_0812B114
	adds r0, r6, #0
	bl sub_08144214
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov ip, r4
	cmp r2, #0
	beq _0814D236
	movs r1, #3
	ands r1, r2
	movs r0, #1
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r4, r0, #0x1f
	movs r0, #2
	ands r4, r0
	movs r3, #0
	cmp r5, #1
	beq _0814D1AC
	cmp r5, #1
	bgt _0814D19C
	cmp r5, #0
	beq _0814D1A2
	b _0814D1D8
	.align 2, 0
_0814D194: .4byte gUnk_02029AEC
_0814D198: .4byte gUnk_02029AE4
_0814D19C:
	cmp r5, #2
	beq _0814D1C6
	b _0814D1D8
_0814D1A2:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0814D1D8
	b _0814D1BE
_0814D1AC:
	mov r1, r8
	ldr r0, [r1]
	adds r1, r0, #0
	adds r1, #0x38
	adds r0, #0x3e
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0814D1D8
_0814D1BE:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0814D1D8
_0814D1C6:
	ldr r0, _0814D250 @ =gUnk_02029AE8
	ldr r0, [r0]
	ldrh r0, [r0, #0x16]
	cmp r6, r0
	bne _0814D1D8
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #1
_0814D1D8:
	mov r1, r8
	ldr r0, [r1]
	adds r1, r0, #0
	adds r1, #0x38
	adds r0, #0x20
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r7, #0
	strb r6, [r0]
	mov r0, r8
	ldr r1, [r0]
	adds r1, #0x38
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	cmp r5, #1
	bls _0814D202
	cmp r5, #2
	bne _0814D236
	cmp r3, #0
	beq _0814D236
_0814D202:
	ldr r1, _0814D254 @ =gUnk_08621228
	movs r0, #0x2c
	muls r0, r6, r0
	adds r0, r0, r1
	ldrb r2, [r0, #0x11]
	lsls r2, r2, #3
	mov r1, sb
	strh r2, [r1]
	ldrb r3, [r0, #0x12]
	lsls r3, r3, #3
	strh r3, [r1, #2]
	mov r1, ip
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r4, #3
	ldr r4, _0814D258 @ =gUnk_086A22C8
	adds r1, r1, r4
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r7, [sp]
	movs r4, #2
	str r4, [sp, #4]
	bl sub_0812B094
_0814D236:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x17
	bls _0814D158
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814D250: .4byte gUnk_02029AE8
_0814D254: .4byte gUnk_08621228
_0814D258: .4byte gUnk_086A22C8

	thumb_func_start sub_0814D25C
sub_0814D25C: @ 0x0814D25C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0814D320 @ =gUnk_086B904C
	mov r8, r0
	ldr r1, _0814D324 @ =0x06009000
	ldr r4, _0814D328 @ =gUnk_0200833C
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	mov r0, r8
	adds r2, r4, #0
	movs r3, #0x31
	bl sub_0801A59C
	mov sb, r4
	movs r0, #0x10
	str r0, [sp]
	movs r6, #0
	str r6, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	mov r0, sb
	movs r1, #0x10
	movs r2, #8
	movs r3, #2
	bl sub_0801BB1C
	ldr r0, _0814D32C @ =gUnk_03000E20
	ldr r0, [r0, #0x14]
	ldr r1, _0814D330 @ =0x0000028E
	adds r7, r0, r1
	movs r4, #8
	ldr r5, _0814D334 @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	movs r1, #0x40
	str r1, [sp, #8]
	mov r1, sb
	adds r2, r7, #0
	movs r3, #0x10
	bl sub_08000CD4
	ldr r1, [r5]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	add sb, r3
	str r6, [sp, #0xc]
	ldr r2, _0814D338 @ =0x01000040
	add r0, sp, #0xc
	mov r1, sb
	bl CpuFastSet
	movs r6, #0x81
	movs r3, #0
	mov r4, r8
	subs r4, #0x88
	movs r5, #0xf
_0814D2FE:
	lsls r0, r3, #1
	mov r7, sb
	adds r2, r0, r7
	adds r1, r3, #0
	adds r1, #0x63
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0814D33C
	asrs r0, r1, #1
	adds r0, #4
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	b _0814D348
	.align 2, 0
_0814D320: .4byte gUnk_086B904C
_0814D324: .4byte 0x06009000
_0814D328: .4byte gUnk_0200833C
_0814D32C: .4byte gUnk_03000E20
_0814D330: .4byte 0x0000028E
_0814D334: .4byte gUnk_02029AE8
_0814D338: .4byte 0x01000040
_0814D33C:
	asrs r0, r1, #1
	adds r0, #4
	adds r0, r0, r4
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ands r0, r5
_0814D348:
	lsls r0, r0, #0xc
	adds r0, r6, r0
	strh r0, [r2, #2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r3, #9
	bls _0814D2FE
	ldr r0, _0814D4D4 @ =gUnk_02029AEC
	ldr r2, [r0]
	ldrh r3, [r2, #0x1a]
	movs r1, #1
	adds r0, r3, #0
	eors r0, r1
	strh r0, [r2, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r3, #0
	beq _0814D376
	adds r0, #0x6c
_0814D376:
	adds r6, r0, #0
	ldr r0, _0814D4D8 @ =gUnk_08765C8E
	movs r1, #1
	movs r2, #1
	bl sub_0801C7C0
	adds r3, r0, #0
	mov r5, sb
	adds r5, #0x24
	adds r4, r6, #0
	ldr r0, _0814D4DC @ =gUnk_03000D60
	lsls r1, r6, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	adds r1, r3, #0
	movs r2, #0xa
	movs r3, #1
	bl sub_0801A924
	adds r3, r6, #0
	movs r1, #0
	movs r0, #0x64
	add r0, sb
	mov sl, r0
	movs r7, #0xa4
	add r7, sb
	mov r8, r7
	ldr r2, _0814D4E0 @ =0x00004001
_0814D3B6:
	movs r7, #0x80
	lsls r7, r7, #7
	adds r0, r4, r7
	strh r0, [r5]
	adds r0, r4, r2
	strh r0, [r5, #0x20]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r1, #0xa
	blo _0814D3B6
	subs r0, r4, r3
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0814D4D8 @ =gUnk_08765C8E
	movs r1, #1
	movs r2, #2
	bl sub_0801C7C0
	adds r3, r0, #0
	mov r5, sl
	adds r4, r6, #0
	movs r2, #0
	ldr r0, _0814D4DC @ =gUnk_03000D60
	lsls r1, r6, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r3, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	adds r2, r6, #0
	movs r1, #0
	ldr r3, _0814D4E0 @ =0x00004001
_0814D40C:
	movs r7, #0x80
	lsls r7, r7, #7
	adds r0, r4, r7
	strh r0, [r5]
	adds r0, r4, r3
	strh r0, [r5, #0x20]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r1, #8
	blo _0814D40C
	subs r0, r4, r2
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0814D4D8 @ =gUnk_08765C8E
	movs r1, #1
	movs r2, #3
	bl sub_0801C7C0
	adds r3, r0, #0
	mov r5, r8
	adds r4, r6, #0
	movs r2, #0
	ldr r0, _0814D4DC @ =gUnk_03000D60
	lsls r1, r4, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r3, #0
	movs r2, #0xc
	movs r3, #1
	bl sub_0801A924
	movs r1, #0
	ldr r2, _0814D4E0 @ =0x00004001
_0814D460:
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r4, r3
	strh r0, [r5]
	adds r0, r4, r2
	strh r0, [r5, #0x20]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r1, #0xc
	blo _0814D460
	ldr r0, _0814D4DC @ =gUnk_03000D60
	ldr r0, [r0, #0x14]
	ldr r1, _0814D4E4 @ =0x0000028E
	adds r7, r0, r1
	movs r4, #8
	ldr r5, _0814D4E8 @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	movs r1, #0x40
	str r1, [sp, #8]
	mov r1, sb
	adds r2, r7, #0
	movs r3, #0x10
	bl sub_08000CD4
	ldr r1, [r5]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814D4D4: .4byte gUnk_02029AEC
_0814D4D8: .4byte gUnk_08765C8E
_0814D4DC: .4byte gUnk_03000D60
_0814D4E0: .4byte 0x00004001
_0814D4E4: .4byte 0x0000028E
_0814D4E8: .4byte gUnk_02029AE8

	thumb_func_start sub_0814D4EC
sub_0814D4EC: @ 0x0814D4EC
	push {r4, lr}
	ldr r0, _0814D544 @ =gUnk_02029AEC
	ldr r4, [r0]
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	movs r1, #0xe0
	lsls r1, r1, #0xb
	ands r1, r0
	lsrs r1, r1, #0x10
	cmp r1, #3
	bhi _0814D518
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0814D518:
	adds r1, #0x30
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r4, r0
	adds r0, #0x72
	ldrh r2, [r0]
	lsls r2, r2, #0x1c
	movs r0, #0xb8
	lsls r0, r0, #0x17
	adds r2, r2, r0
	lsrs r2, r2, #0x18
	movs r0, #2
	bl sub_0812B0F0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814D544: .4byte gUnk_02029AEC

	thumb_func_start sub_0814D548
sub_0814D548: @ 0x0814D548
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x24
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldr r0, _0814D658 @ =gMultiSioArea
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0814D57A
	cmp r1, #6
	bne _0814D57C
_0814D57A:
	movs r4, #0
_0814D57C:
	cmp r4, #2
	bne _0814D586
	movs r0, #0xb0
	bl PlaySE
_0814D586:
	movs r2, #0
	ldr r0, _0814D658 @ =gMultiSioArea
	movs r3, #0x90
	lsls r3, r3, #1
	adds r1, r0, r3
	ldrh r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	bne _0814D59C
	cmp r4, #2
	bne _0814D59E
_0814D59C:
	movs r2, #1
_0814D59E:
	adds r5, r2, #0
	cmp r7, #0
	beq _0814D5C0
	movs r1, #0
	ldrb r0, [r3, #2]
	cmp r0, #3
	bne _0814D5B8
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrh r0, [r0]
	cmp r0, #0xa
	bls _0814D5BA
_0814D5B8:
	movs r1, #1
_0814D5BA:
	orrs r5, r1
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_0814D5C0:
	cmp r5, #0
	beq _0814D648
	bl MultiSioStop
	cmp r6, #0
	beq _0814D608
	adds r2, r6, #0
	cmp r4, #2
	bne _0814D5D4
	mov r2, r8
_0814D5D4:
	adds r3, r2, #0
	ldr r0, _0814D65C @ =gUnk_02005640
	ldr r2, _0814D660 @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r1, _0814D664 @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
_0814D608:
	ldr r6, _0814D668 @ =gUnk_02029AE8
	ldr r4, [r6]
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #2
	bne _0814D648
	ldr r0, _0814D66C @ =gUnk_03001090
	ldr r2, [r0, #0x14]
	adds r3, r4, #0
	adds r3, #0x40
	ldrh r1, [r3]
	adds r0, r1, #1
	strh r0, [r3]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x44
	adds r0, r4, r0
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r6]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
_0814D648:
	adds r0, r5, #0
	add sp, #0x24
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0814D658: .4byte gMultiSioArea
_0814D65C: .4byte gUnk_02005640
_0814D660: .4byte gUnk_08761224
_0814D664: .4byte 0x00010088
_0814D668: .4byte gUnk_02029AE8
_0814D66C: .4byte gUnk_03001090

	thumb_func_start sub_0814D670
sub_0814D670: @ 0x0814D670
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	mov sl, r1
	ldrb r0, [r1]
	cmp r0, #0x18
	bls _0814D688
	bl _0814E940
_0814D688:
	lsls r0, r0, #2
	ldr r1, _0814D694 @ =_0814D698
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0814D694: .4byte _0814D698
_0814D698: @ jump table
	.4byte _0814D6FC @ case 0
	.4byte _0814D8C2 @ case 1
	.4byte _0814D9A8 @ case 2
	.4byte _0814DA78 @ case 3
	.4byte _0814DAC0 @ case 4
	.4byte _0814DB0C @ case 5
	.4byte _0814DB64 @ case 6
	.4byte _0814DBB4 @ case 7
	.4byte _0814DC98 @ case 8
	.4byte _0814DD84 @ case 9
	.4byte _0814DD30 @ case 10
	.4byte _0814DDBC @ case 11
	.4byte _0814DFD0 @ case 12
	.4byte _0814E0A0 @ case 13
	.4byte _0814E22C @ case 14
	.4byte _0814E394 @ case 15
	.4byte _0814E5F8 @ case 16
	.4byte _0814E684 @ case 17
	.4byte _0814E710 @ case 18
	.4byte _0814E740 @ case 19
	.4byte _0814E7D4 @ case 20
	.4byte _0814E7FA @ case 21
	.4byte _0814E894 @ case 22
	.4byte _0814E8EC @ case 23
	.4byte _0814E8FE @ case 24
_0814D6FC:
	ldr r1, _0814D928 @ =gUnk_02029AEC
	ldr r0, [r1]
	movs r1, #0x9f
	lsls r1, r1, #2
	bl memzero
	movs r0, #0x14
	movs r1, #0
	bl sub_08142F7C
	ldr r2, _0814D928 @ =gUnk_02029AEC
	ldr r0, [r2]
	adds r0, #0xac
	ldr r4, _0814D92C @ =gUnk_0200119E
	adds r1, r4, #0
	movs r2, #0x2c
	bl memcpy2
	ldr r0, _0814D930 @ =gUnk_03000FA0
	adds r1, r4, #0
	subs r1, #0x13
	ldrb r2, [r1]
	adds r1, r0, #0
	adds r1, #0xa4
	movs r6, #0
	strb r2, [r1]
	subs r4, #0x12
	ldrb r1, [r4]
	adds r0, #0xa5
	strb r1, [r0]
	ldr r2, _0814D934 @ =gUnk_03000DD0
	adds r1, r2, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	movs r0, #0x42
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r7, #3
	strb r7, [r1]
	subs r1, #7
	ldrb r0, [r1]
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #0x33
	strb r0, [r1]
	adds r1, #7
	ldrb r0, [r1]
	movs r0, #0xa
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #8
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #0x10
	strb r0, [r1]
	subs r1, #0xc
	ldrb r0, [r1]
	strb r6, [r1]
	adds r0, r2, #0
	adds r0, #0x43
	ldrb r1, [r0]
	strb r6, [r0]
	ldr r0, _0814D938 @ =gUnk_08712FEB
	ldr r4, _0814D93C @ =gUnk_03001070
	ldr r1, [r4, #0x10]
	ldr r3, _0814D940 @ =gUnk_0200833C
	mov r8, r3
	str r6, [sp]
	movs r2, #1
	mov sb, r2
	str r2, [sp, #4]
	mov r2, r8
	movs r3, #0
	bl sub_0801A59C
	ldr r0, _0814D944 @ =gUnk_08739394
	ldr r1, [r4, #0x14]
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r2, r4, #0
	bl CpuFastSet
	ldr r0, _0814D948 @ =gUnk_08739C64
	ldr r1, _0814D94C @ =gUnk_03001090
	ldr r1, [r1, #0x14]
	adds r2, r4, #0
	bl CpuFastSet
	ldr r0, _0814D950 @ =gUnk_0873AE04
	ldr r5, _0814D954 @ =gUnk_02029AE8
	ldr r1, [r5]
	ldr r1, [r1, #4]
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldr r1, _0814D958 @ =gUnk_02002400
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	ldr r0, _0814D95C @ =gUnk_03000D60
	ldr r2, [r0, #0x14]
	ldr r0, [r5]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r0, [r5]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	ands r3, r7
	strh r3, [r4]
	ldr r1, _0814D960 @ =gUnk_03000E20
	ldr r2, [r1, #0x14]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r5]
	adds r1, #0x40
	ldrh r0, [r1]
	ands r0, r7
	strh r0, [r1]
	ldr r0, _0814D964 @ =gUnk_0871CEB7
	ldr r1, _0814D968 @ =0x06008C40
	str r6, [sp]
	mov r3, sb
	str r3, [sp, #4]
	mov r2, r8
	movs r3, #0
	bl sub_0801A59C
	movs r0, #0
	bl sub_0812B174
	ldr r4, _0814D96C @ =gUnk_03000F64
	adds r1, r4, #0
	adds r1, #0x10
	adds r2, r4, #0
	adds r2, #0x1c
	adds r0, r4, #0
	movs r3, #1
	bl sub_08002CD4
	ldr r2, _0814D970 @ =sub_0812AB40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08002D38
	ldr r4, _0814D928 @ =gUnk_02029AEC
	ldr r0, [r4]
	adds r0, #0x3e
	movs r1, #0xfa
	strb r1, [r0]
	movs r0, #0
	bl sub_0814D138
	ldr r0, _0814D974 @ =0xFFFFD304
	add r8, r0
	ldr r2, _0814D978 @ =gUnk_08761224
	str r7, [sp]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r0, _0814D97C @ =0x00010088
	str r0, [sp, #0x20]
	mov r0, r8
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0x12
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	ldr r0, [r5]
	strh r6, [r0, #0x10]
	movs r4, #0
	strb r4, [r0, #0x1c]
	ldr r0, [r5]
	mov r1, sb
	strb r1, [r0, #0x1d]
	ldr r1, [r5]
	movs r0, #0x20
	strh r0, [r1, #0x10]
	mov r3, sb
	mov r2, sl
	strb r3, [r2]
_0814D8C2:
	ldr r0, _0814D96C @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	ldr r5, _0814D954 @ =gUnk_02029AE8
	ldr r0, [r5]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	beq _0814D900
	movs r0, #0
	bl sub_0814B1E0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0814D8E4
	bl _0814E940
_0814D8E4:
	ldr r2, _0814D980 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0814D984 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldr r4, _0814D988 @ =0x04000208
	movs r0, #0
	strh r0, [r4]
	bl MultiSioInit
	bl MultiSioStart
	movs r0, #1
	strh r0, [r4]
_0814D900:
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0x10]
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814D98C
	movs r0, #0x17
	mov r4, sl
	bl _0814E93E
	.align 2, 0
_0814D928: .4byte gUnk_02029AEC
_0814D92C: .4byte gUnk_0200119E
_0814D930: .4byte gUnk_03000FA0
_0814D934: .4byte gUnk_03000DD0
_0814D938: .4byte gUnk_08712FEB
_0814D93C: .4byte gUnk_03001070
_0814D940: .4byte gUnk_0200833C
_0814D944: .4byte gUnk_08739394
_0814D948: .4byte gUnk_08739C64
_0814D94C: .4byte gUnk_03001090
_0814D950: .4byte gUnk_0873AE04
_0814D954: .4byte gUnk_02029AE8
_0814D958: .4byte gUnk_02002400
_0814D95C: .4byte gUnk_03000D60
_0814D960: .4byte gUnk_03000E20
_0814D964: .4byte gUnk_0871CEB7
_0814D968: .4byte 0x06008C40
_0814D96C: .4byte gUnk_03000F64
_0814D970: .4byte sub_0812AB40
_0814D974: .4byte 0xFFFFD304
_0814D978: .4byte gUnk_08761224
_0814D97C: .4byte 0x00010088
_0814D980: .4byte 0x04000200
_0814D984: .4byte 0x0000FF7F
_0814D988: .4byte 0x04000208
_0814D98C:
	ldr r0, _0814D9A4 @ =gMultiSioArea
	ldrb r0, [r0, #2]
	cmp r0, #3
	beq _0814D998
	bl _0814E940
_0814D998:
	bl sub_080050C4
	movs r0, #2
	bl _0814E6EE
	.align 2, 0
_0814D9A4: .4byte gMultiSioArea
_0814D9A8:
	ldr r0, _0814D9D0 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #2
	movs r2, #0x22
	movs r3, #0x23
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814D9D4
	movs r0, #0x16
	bl _0814E730
	.align 2, 0
_0814D9D0: .4byte gUnk_03000F64
_0814D9D4:
	ldr r0, _0814D9F0 @ =gUnk_0824DB58
	ldr r1, _0814D9F4 @ =gUnk_0824DB60
	bl sub_0800511C
	adds r4, r0, #0
	cmp r4, #0
	beq _0814DA04
	ldr r0, _0814D9F8 @ =gMultiSioArea
	ldrb r0, [r0]
	cmp r0, #8
	bne _0814D9FC
	movs r0, #5
	bl _0814E8CA
	.align 2, 0
_0814D9F0: .4byte gUnk_0824DB58
_0814D9F4: .4byte gUnk_0824DB60
_0814D9F8: .4byte gMultiSioArea
_0814D9FC:
	movs r0, #3
	mov r4, sl
	bl _0814E93E
_0814DA04:
	ldr r0, _0814DA64 @ =gMultiSioArea
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0814DA1A
	cmp r0, #5
	beq _0814DA1A
	bl _0814E940
_0814DA1A:
	ldr r0, _0814DA68 @ =gUnk_0824DB68
	bl sub_080063F4
	cmp r0, #0
	bne _0814DA28
	bl _0814E940
_0814DA28:
	bl MultiSioStop
	ldr r0, _0814DA6C @ =gUnk_02005640
	ldr r2, _0814DA70 @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r1, _0814DA74 @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0x22
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #0x16
	bl _0814E730
	.align 2, 0
_0814DA64: .4byte gMultiSioArea
_0814DA68: .4byte gUnk_0824DB68
_0814DA6C: .4byte gUnk_02005640
_0814DA70: .4byte gUnk_08761224
_0814DA74: .4byte 0x00010088
_0814DA78:
	ldr r0, _0814DAA0 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x23
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814DAA4
	movs r0, #0x16
	bl _0814E8CA
	.align 2, 0
_0814DAA0: .4byte gUnk_03000F64
_0814DAA4:
	ldr r0, _0814DABC @ =gMultiSioArea
	movs r4, #0x92
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _0814DAB6
	bl _0814E940
_0814DAB6:
	movs r0, #4
	bl _0814E6EE
	.align 2, 0
_0814DABC: .4byte gMultiSioArea
_0814DAC0:
	ldr r0, _0814DAE8 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x23
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814DAEC
	movs r0, #0x16
	bl _0814E730
	.align 2, 0
_0814DAE8: .4byte gUnk_03000F64
_0814DAEC:
	ldr r0, _0814DB08 @ =gMultiSioArea
	movs r3, #0x92
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #1
	beq _0814DAFE
	bl _0814E940
_0814DAFE:
	movs r0, #7
	mov r4, sl
	bl _0814E93E
	.align 2, 0
_0814DB08: .4byte gMultiSioArea
_0814DB0C:
	ldr r0, _0814DB34 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x23
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814DB38
	movs r0, #0x16
	bl _0814E6EE
	.align 2, 0
_0814DB34: .4byte gUnk_03000F64
_0814DB38:
	ldr r3, _0814DB5C @ =gUnk_0200119E
	ldr r0, _0814DB60 @ =gUnk_02029AEC
	ldr r1, [r0]
	adds r1, #0x80
	str r1, [sp]
	movs r0, #0x16
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r2, #0x16
	bl sub_0800538C
	cmp r0, #1
	beq _0814DB56
	bl _0814E940
_0814DB56:
	movs r0, #6
	bl _0814E730
	.align 2, 0
_0814DB5C: .4byte gUnk_0200119E
_0814DB60: .4byte gUnk_02029AEC
_0814DB64:
	ldr r0, _0814DB8C @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x23
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814DB90
	movs r0, #0x16
	bl _0814E8CA
	.align 2, 0
_0814DB8C: .4byte gUnk_03000F64
_0814DB90:
	ldr r0, _0814DBAC @ =gMultiSioArea
	movs r4, #0x92
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r0, _0814DBB0 @ =0x00000101
	cmp r1, r0
	beq _0814DBA4
	bl _0814E940
_0814DBA4:
	movs r0, #7
	bl _0814E6EE
	.align 2, 0
_0814DBAC: .4byte gMultiSioArea
_0814DBB0: .4byte 0x00000101
_0814DBB4:
	movs r7, #0
	ldr r2, _0814DBE4 @ =gUnk_0200119E
	mov sb, r2
	ldr r3, _0814DBE8 @ =gUnk_02029AEC
	mov r8, r3
	movs r6, #0
_0814DBC0:
	mov r4, sb
	adds r3, r7, r4
	ldrb r2, [r3]
	cmp r2, #0
	beq _0814DBD8
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x80
	adds r5, r0, r7
	ldrb r1, [r5]
	cmp r1, #0
	bne _0814DBEC
_0814DBD8:
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0x80
	adds r0, r0, r7
	strb r6, [r0]
	b _0814DC00
	.align 2, 0
_0814DBE4: .4byte gUnk_0200119E
_0814DBE8: .4byte gUnk_02029AEC
_0814DBEC:
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	bne _0814DBFE
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0814DC02
_0814DBFE:
	strb r6, [r5]
_0814DC00:
	strb r6, [r3]
_0814DC02:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x2b
	bls _0814DBC0
	movs r0, #0
	bl sub_0814D138
	ldr r4, _0814DC84 @ =gUnk_02029AEC
	ldr r1, [r4]
	ldr r0, _0814DC88 @ =gUnk_02029AE8
	ldr r2, [r0]
	ldrb r0, [r2, #0x1c]
	adds r3, r1, #0
	adds r3, #0x72
	strh r0, [r3]
	ldrb r0, [r2, #0x1d]
	adds r1, #0x7a
	strh r0, [r1]
	ldr r0, _0814DC8C @ =gMultiSioArea
	ldrb r0, [r0]
	cmp r0, #8
	bne _0814DC60
	adds r5, r4, #0
_0814DC32:
	ldr r4, [r5]
	bl sub_0813B0CC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x65
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5]
	adds r1, #0x38
	ldrb r1, [r1]
	bl __modsi3
	adds r4, #0x20
	adds r4, r4, r0
	ldrb r1, [r4]
	cmp r1, #0x12
	beq _0814DC32
	ldr r0, _0814DC88 @ =gUnk_02029AE8
	ldr r0, [r0]
	strh r1, [r0, #0x16]
_0814DC60:
	ldr r0, _0814DC90 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	ldr r0, _0814DC8C @ =gMultiSioArea
	movs r3, #0x92
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r2, #0
	movs r1, #0x16
	strb r1, [r0]
	ldr r0, _0814DC94 @ =gUnk_03002C80
	strh r2, [r0, #2]
	movs r0, #8
	mov r4, sl
	bl _0814E93E
	.align 2, 0
_0814DC84: .4byte gUnk_02029AEC
_0814DC88: .4byte gUnk_02029AE8
_0814DC8C: .4byte gMultiSioArea
_0814DC90: .4byte gUnk_03000F64
_0814DC94: .4byte gUnk_03002C80
_0814DC98:
	ldr r0, _0814DCDC @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	ldr r2, _0814DCE0 @ =gMultiSioArea
	ldrb r0, [r2]
	cmp r0, #8
	bne _0814DCF4
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0x16
	strb r0, [r1]
	ldr r1, _0814DCE4 @ =gUnk_03002C80
	ldr r2, _0814DCE8 @ =0x00001234
	strh r2, [r1, #2]
	ldr r3, _0814DCEC @ =gUnk_02029AE8
	ldr r0, [r3]
	ldrh r0, [r0, #0x16]
	strh r0, [r1, #4]
	ldr r0, _0814DCF0 @ =gUnk_03002A00
	ldrh r0, [r0, #2]
	cmp r0, r2
	beq _0814DCCC
	bl _0814E940
_0814DCCC:
	movs r0, #9
	mov r1, sl
	strb r0, [r1]
	ldr r1, [r3]
	movs r0, #0
	strh r0, [r1, #0x10]
	bl _0814E940
	.align 2, 0
_0814DCDC: .4byte gUnk_03000F64
_0814DCE0: .4byte gMultiSioArea
_0814DCE4: .4byte gUnk_03002C80
_0814DCE8: .4byte 0x00001234
_0814DCEC: .4byte gUnk_02029AE8
_0814DCF0: .4byte gUnk_03002A00
_0814DCF4:
	ldr r4, _0814DD20 @ =gUnk_03002A00
	ldrh r3, [r4, #2]
	ldr r0, _0814DD24 @ =0x00001234
	cmp r3, r0
	beq _0814DD02
	bl _0814E940
_0814DD02:
	ldr r0, _0814DD28 @ =gUnk_02029AE8
	ldr r1, [r0]
	ldrh r0, [r4, #4]
	strh r0, [r1, #0x16]
	movs r4, #0x92
	lsls r4, r4, #1
	adds r1, r2, r4
	movs r0, #0x16
	strb r0, [r1]
	ldr r0, _0814DD2C @ =gUnk_03002C80
	strh r3, [r0, #2]
	movs r0, #0xa
	bl _0814E6EE
	.align 2, 0
_0814DD20: .4byte gUnk_03002A00
_0814DD24: .4byte 0x00001234
_0814DD28: .4byte gUnk_02029AE8
_0814DD2C: .4byte gUnk_03002C80
_0814DD30:
	ldr r0, _0814DD58 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	ldr r1, _0814DD5C @ =gMultiSioArea
	ldr r2, _0814DD60 @ =0x00000125
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _0814DD6C
	movs r3, #0x92
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0x16
	strb r0, [r1]
	ldr r1, _0814DD64 @ =gUnk_03002C80
	ldr r0, _0814DD68 @ =0x00001234
	strh r0, [r1, #2]
	bl _0814E940
	.align 2, 0
_0814DD58: .4byte gUnk_03000F64
_0814DD5C: .4byte gMultiSioArea
_0814DD60: .4byte 0x00000125
_0814DD64: .4byte gUnk_03002C80
_0814DD68: .4byte 0x00001234
_0814DD6C:
	bl sub_0814CD70
	ldr r0, _0814DD80 @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #0xb
	mov r4, sl
	bl _0814E93E
	.align 2, 0
_0814DD80: .4byte gUnk_02029AE8
_0814DD84:
	ldr r0, _0814DDB4 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	ldr r4, _0814DDB8 @ =gUnk_02029AE8
	ldr r1, [r4]
	ldrh r0, [r1, #0x10]
	adds r0, #1
	strh r0, [r1, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bhi _0814DDA2
	bl _0814E940
_0814DDA2:
	bl sub_0814CD70
	ldr r0, [r4]
	movs r1, #0
	strh r1, [r0, #0x10]
	movs r0, #0xb
	bl _0814E6EE
	.align 2, 0
_0814DDB4: .4byte gUnk_03000F64
_0814DDB8: .4byte gUnk_02029AE8
_0814DDBC:
	ldr r0, _0814DDE8 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	ldr r6, _0814DDEC @ =gUnk_02029AEC
	ldr r1, [r6]
	strh r0, [r1, #4]
	ldrh r1, [r1, #4]
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x23
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814DDF0
	movs r0, #0x16
	bl _0814E730
	.align 2, 0
_0814DDE8: .4byte gUnk_03000F64
_0814DDEC: .4byte gUnk_02029AEC
_0814DDF0:
	movs r1, #0
	ldr r0, _0814DE70 @ =gMultiSioArea
	ldrb r0, [r0]
	cmp r0, #8
	bne _0814DDFC
	movs r1, #1
_0814DDFC:
	adds r5, r1, #0
	ldr r4, _0814DE74 @ =gUnk_03002A00
	ldrh r1, [r4, #2]
	ldr r0, _0814DE78 @ =0x00004567
	cmp r1, r0
	bne _0814DE2C
	ldr r0, _0814DE7C @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r0, #0x1c
	adds r2, r0, r5
	ldrh r1, [r4, #4]
	ldrb r0, [r2]
	cmp r0, r1
	beq _0814DE20
	strb r1, [r2]
	movs r0, #0xb2
	bl PlaySE
_0814DE20:
	ldr r0, [r6]
	lsls r1, r5, #3
	adds r0, r0, r1
	ldrh r1, [r4, #6]
	adds r0, #0x74
	strh r1, [r0]
_0814DE2C:
	ldr r0, _0814DE80 @ =gUnk_02029AEC
	ldr r4, [r0]
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r1, [r1]
	adds r6, r0, #0
	cmp r1, #0xff
	bne _0814DEA0
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r0, #0xff
	bne _0814DEA0
	ldr r0, _0814DE7C @ =gUnk_02029AE8
	ldr r3, [r0]
	ldrb r0, [r3, #0x1c]
	ldrb r1, [r3, #0x1d]
	cmp r0, r1
	bne _0814DE84
	ldr r0, _0814DE70 @ =gMultiSioArea
	ldrb r1, [r0]
	movs r2, #8
	eors r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	ands r0, r2
	adds r0, r4, r0
	adds r0, #0x74
	movs r1, #0
	strh r1, [r0]
	strh r1, [r3, #0x10]
	b _0814DF5C
	.align 2, 0
_0814DE70: .4byte gMultiSioArea
_0814DE74: .4byte gUnk_03002A00
_0814DE78: .4byte 0x00004567
_0814DE7C: .4byte gUnk_02029AE8
_0814DE80: .4byte gUnk_02029AEC
_0814DE84:
	ldrh r0, [r3, #0x10]
	adds r0, #1
	strh r0, [r3, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa
	bls _0814DF5C
	movs r0, #0xad
	bl PlaySE
	movs r0, #0xc
	mov r2, sl
	strb r0, [r2]
	b _0814DF5C
_0814DEA0:
	ldr r4, _0814DED8 @ =gUnk_02029AE8
	ldr r1, [r4]
	ldrb r0, [r1, #0x1c]
	ldrb r1, [r1, #0x1d]
	cmp r0, r1
	bne _0814DEC6
	ldr r2, [r6]
	ldr r0, _0814DEDC @ =gMultiSioArea
	ldrb r1, [r0]
	movs r3, #8
	eors r1, r3
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	ands r0, r3
	adds r2, r2, r0
	adds r2, #0x74
	movs r0, #0
	strh r0, [r2]
_0814DEC6:
	ldr r3, [r6]
	ldrh r0, [r3, #4]
	cmp r0, #0x10
	beq _0814DF18
	cmp r0, #0x10
	bgt _0814DEE0
	cmp r0, #1
	beq _0814DEE6
	b _0814DF5C
	.align 2, 0
_0814DED8: .4byte gUnk_02029AE8
_0814DEDC: .4byte gMultiSioArea
_0814DEE0:
	cmp r0, #0x20
	beq _0814DF18
	b _0814DF5C
_0814DEE6:
	ldr r1, [r4]
	ldrb r0, [r1, #0x1c]
	ldrb r1, [r1, #0x1d]
	cmp r0, r1
	bne _0814DEF8
	movs r0, #0xb1
	bl PlaySE
	b _0814DF5C
_0814DEF8:
	ldr r0, _0814DF14 @ =gMultiSioArea
	ldrb r1, [r0]
	movs r2, #8
	eors r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	ands r0, r2
	adds r0, r3, r0
	adds r0, #0x74
	movs r1, #0xff
	strh r1, [r0]
	b _0814DF5C
	.align 2, 0
_0814DF14: .4byte gMultiSioArea
_0814DF18:
	ldr r5, _0814DFB8 @ =gUnk_02029AE8
	ldr r2, [r5]
	ldr r4, _0814DFBC @ =gMultiSioArea
	ldrb r1, [r4]
	movs r3, #8
	eors r1, r3
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	adds r2, #0x1c
	adds r2, r2, r0
	ldrb r7, [r2]
	movs r1, #0
	ldr r0, _0814DFC0 @ =gUnk_02029AEC
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _0814DF3E
	movs r1, #1
_0814DF3E:
	strb r1, [r2]
	ldr r2, [r5]
	ldrb r0, [r4]
	eors r0, r3
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r2, #0x1c
	adds r2, r2, r1
	ldrb r0, [r2]
	cmp r0, r7
	beq _0814DF5C
	movs r0, #0xb2
	bl PlaySE
_0814DF5C:
	ldr r2, _0814DFBC @ =gMultiSioArea
	ldrb r1, [r2]
	movs r0, #8
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	ldr r3, _0814DFC4 @ =gUnk_03002A00
	ldrh r1, [r3, #2]
	ldr r0, _0814DFC8 @ =0x00004567
	ldr r6, _0814DFC0 @ =gUnk_02029AEC
	cmp r1, r0
	bne _0814DF86
	ldrh r3, [r3, #6]
	cmp r3, #0xff
	bne _0814DF86
	ldr r0, [r6]
	lsls r1, r5, #3
	adds r0, r0, r1
	adds r0, #0x74
	strh r3, [r0]
_0814DF86:
	movs r3, #0x92
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r0, #0x16
	strb r0, [r1]
	ldr r2, _0814DFCC @ =gUnk_03002C80
	ldr r0, _0814DFC8 @ =0x00004567
	strh r0, [r2, #2]
	ldr r0, _0814DFB8 @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r0, #0x1c
	adds r0, r0, r5
	ldrb r0, [r0]
	strh r0, [r2, #4]
	ldr r0, [r6]
	lsls r1, r5, #3
	adds r0, r0, r1
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r2, #6]
	bl sub_0814D06C
	bl _0814E940
	.align 2, 0
_0814DFB8: .4byte gUnk_02029AE8
_0814DFBC: .4byte gMultiSioArea
_0814DFC0: .4byte gUnk_02029AEC
_0814DFC4: .4byte gUnk_03002A00
_0814DFC8: .4byte 0x00004567
_0814DFCC: .4byte gUnk_03002C80
_0814DFD0:
	ldr r0, _0814E088 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	ldr r0, _0814E08C @ =gUnk_03000D60
	ldr r2, [r0, #0x14]
	ldr r5, _0814E090 @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r0, [r5]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	movs r1, #3
	mov r8, r1
	ands r3, r1
	movs r2, #0
	mov sb, r2
	movs r6, #0
	strh r3, [r4]
	ldr r1, _0814E094 @ =gUnk_03000E20
	ldr r2, [r1, #0x14]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r5]
	adds r1, #0x40
	ldrh r0, [r1]
	mov r3, r8
	ands r0, r3
	strh r0, [r1]
	ldr r1, _0814E098 @ =gUnk_02029AEC
	ldr r0, [r1]
	adds r0, #0x3e
	mov r4, sb
	strb r4, [r0]
	ldr r0, [r1]
	adds r0, #0x39
	strb r4, [r0]
	ldr r0, [r1]
	strh r6, [r0, #0x3a]
	strh r6, [r0, #0x3c]
	adds r0, #0x3e
	ldrb r0, [r0]
	bl sub_0812A8AC
	adds r3, r0, #0
	ldr r1, _0814E09C @ =gUnk_086A22F8
	ldrb r2, [r3]
	subs r2, #2
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r3, [r3, #2]
	subs r3, #4
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r6, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #3
	bl sub_0812AEE4
	movs r0, #0xd
	b _0814E6EE
	.align 2, 0
_0814E088: .4byte gUnk_03000F64
_0814E08C: .4byte gUnk_03000D60
_0814E090: .4byte gUnk_02029AE8
_0814E094: .4byte gUnk_03000E20
_0814E098: .4byte gUnk_02029AEC
_0814E09C: .4byte gUnk_086A22F8
_0814E0A0:
	ldr r0, _0814E0C4 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	ldr r4, _0814E0C8 @ =gUnk_02029AEC
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x23
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814E0CC
	movs r0, #0x16
	b _0814E730
	.align 2, 0
_0814E0C4: .4byte gUnk_03000F64
_0814E0C8: .4byte gUnk_02029AEC
_0814E0CC:
	ldr r0, [r4]
	ldrh r0, [r0, #0x3a]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #9
	lsrs r5, r1, #0x10
	cmp r5, #1
	bhi _0814E0EA
	movs r5, #2
_0814E0EA:
	cmp r5, #8
	bls _0814E15E
	ldr r4, [r4]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	mov r8, r0
	adds r0, #3
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r7, [r1]
	adds r1, r7, #0
	bl __modsi3
	adds r6, r4, #0
	adds r6, #0x20
	adds r0, r6, r0
	ldr r1, _0814E11C @ =gUnk_02029AE8
	ldr r1, [r1]
	ldrb r0, [r0]
	ldrh r4, [r1, #0x16]
	cmp r0, r4
	bne _0814E120
	movs r5, #0xe
	b _0814E15E
	.align 2, 0
_0814E11C: .4byte gUnk_02029AE8
_0814E120:
	mov r0, r8
	adds r0, #2
	adds r1, r7, #0
	bl __modsi3
	adds r0, r6, r0
	ldrb r0, [r0]
	cmp r0, r4
	bne _0814E136
	movs r5, #0x10
	b _0814E15E
_0814E136:
	mov r0, r8
	adds r0, #1
	adds r1, r7, #0
	bl __modsi3
	adds r0, r6, r0
	ldrb r0, [r0]
	cmp r0, r4
	bne _0814E14C
	movs r5, #0x13
	b _0814E15E
_0814E14C:
	mov r0, r8
	adds r1, r7, #0
	bl __modsi3
	adds r0, r6, r0
	ldrb r0, [r0]
	cmp r0, r4
	bne _0814E15E
	movs r5, #0x19
_0814E15E:
	ldr r4, _0814E200 @ =gUnk_02029AEC
	ldr r1, [r4]
	adds r1, #0x39
	ldrb r0, [r1]
	adds r0, #1
	movs r6, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r5
	bhs _0814E178
	bl _0814E940
_0814E178:
	ldr r0, [r4]
	adds r0, #0x39
	strb r6, [r0]
	ldr r1, [r4]
	ldrh r0, [r1, #0x3c]
	adds r0, #1
	strh r0, [r1, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x40
	bls _0814E192
	movs r0, #0x40
	strh r0, [r1, #0x3c]
_0814E192:
	ldr r0, [r4]
	ldrh r0, [r0, #0x3c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08007EF0
	ldr r1, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1, #0x3a]
	movs r0, #1
	bl sub_0814D138
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x3e
	adds r0, #0x20
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_0812A8AC
	adds r3, r0, #0
	ldrb r1, [r3]
	subs r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r2, [r3, #2]
	subs r2, #4
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #3
	bl sub_0812B0F0
	movs r0, #0xb2
	bl PlaySE
	cmp r5, #8
	bls _0814E208
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x3e
	adds r0, #0x20
	ldrb r2, [r2]
	adds r0, r0, r2
	ldr r1, _0814E204 @ =gUnk_02029AE8
	ldr r1, [r1]
	ldrb r0, [r0]
	ldrh r3, [r1, #0x16]
	cmp r0, r3
	bne _0814E208
	strh r6, [r1, #0x10]
	movs r0, #0xe
	mov r4, sl
	b _0814E93E
	.align 2, 0
_0814E200: .4byte gUnk_02029AEC
_0814E204: .4byte gUnk_02029AE8
_0814E208:
	ldr r2, _0814E228 @ =gUnk_02029AEC
	ldr r1, [r2]
	adds r1, #0x3e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r2]
	adds r4, r1, #0
	adds r4, #0x3e
	adds r1, #0x38
	ldrb r0, [r4]
	ldrb r1, [r1]
	bl __umodsi3
	b _0814E93E
	.align 2, 0
_0814E228: .4byte gUnk_02029AEC
_0814E22C:
	ldr r0, _0814E250 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	ldr r4, _0814E254 @ =gUnk_02029AEC
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	movs r0, #2
	movs r2, #0x22
	movs r3, #0x23
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814E258
	movs r0, #0x16
	b _0814E6EE
	.align 2, 0
_0814E250: .4byte gUnk_03000F64
_0814E254: .4byte gUnk_02029AEC
_0814E258:
	ldr r5, _0814E2A4 @ =gUnk_02029AE8
	ldr r1, [r5]
	ldrh r0, [r1, #0x10]
	adds r0, #1
	strh r0, [r1, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bhi _0814E26C
	b _0814E940
_0814E26C:
	movs r0, #0x78
	strh r0, [r1, #0x10]
	ldr r0, _0814E2A8 @ =gUnk_0824DB70
	ldr r1, _0814E2AC @ =gUnk_0824DB78
	bl sub_0800511C
	cmp r0, #0
	bne _0814E27E
	b _0814E940
_0814E27E:
	ldr r0, [r4]
	ldr r1, [r5]
	ldrb r1, [r1, #0x1c]
	adds r0, #0x3f
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0
	bne _0814E2B4
	ldr r0, _0814E2B0 @ =gMultiSioArea
	ldrb r0, [r0]
	cmp r0, #8
	bne _0814E2C4
	movs r0, #0x14
	movs r1, #1
	bl sub_08142F7C
	b _0814E2C4
	.align 2, 0
_0814E2A4: .4byte gUnk_02029AE8
_0814E2A8: .4byte gUnk_0824DB70
_0814E2AC: .4byte gUnk_0824DB78
_0814E2B0: .4byte gMultiSioArea
_0814E2B4:
	ldr r0, _0814E370 @ =gMultiSioArea
	ldrb r0, [r0]
	cmp r0, #8
	beq _0814E2C4
	movs r0, #0x14
	movs r1, #1
	bl sub_08142F7C
_0814E2C4:
	ldr r6, _0814E374 @ =gUnk_02029AEC
	ldr r0, [r6]
	adds r1, r0, #0
	adds r1, #0x7a
	movs r4, #0
	strh r4, [r1]
	subs r1, #8
	strh r4, [r1]
	adds r1, #0xc
	strh r4, [r1]
	adds r0, #0x76
	strh r4, [r0]
	ldr r0, _0814E378 @ =gUnk_02029AE8
	ldr r0, [r0]
	strh r4, [r0, #0x10]
	ldr r3, _0814E37C @ =gUnk_08623678
	ldr r2, _0814E380 @ =gUnk_08621228
	ldrh r1, [r0, #0x16]
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080197D4
	ldr r0, _0814E384 @ =gUnk_02005640
	ldr r2, _0814E388 @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r1, _0814E38C @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0x14
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	bl sub_0814D25C
	movs r0, #0x14
	bl sub_08142F50
	movs r5, #0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0814E344
	movs r5, #1
_0814E344:
	ldr r1, _0814E390 @ =gUnk_086A2278
	ldr r2, [r6]
	adds r0, r2, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r2, #0x72
	ldrh r3, [r2]
	lsls r3, r3, #0x1c
	movs r2, #0xb8
	lsls r2, r2, #0x17
	adds r3, r3, r2
	lsrs r3, r3, #0x18
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #2
	movs r2, #0x30
	bl sub_0812AE80
	movs r0, #0xf
	b _0814E8CA
	.align 2, 0
_0814E370: .4byte gMultiSioArea
_0814E374: .4byte gUnk_02029AEC
_0814E378: .4byte gUnk_02029AE8
_0814E37C: .4byte gUnk_08623678
_0814E380: .4byte gUnk_08621228
_0814E384: .4byte gUnk_02005640
_0814E388: .4byte gUnk_08761224
_0814E38C: .4byte 0x00010088
_0814E390: .4byte gUnk_086A2278
_0814E394:
	ldr r0, _0814E3C0 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	ldr r4, _0814E3C4 @ =gUnk_02029AEC
	ldr r1, [r4]
	strh r0, [r1, #4]
	ldrh r1, [r1, #4]
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x23
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814E3C8
	movs r0, #0x16
	mov r4, sl
	b _0814E93E
	.align 2, 0
_0814E3C0: .4byte gUnk_03000F64
_0814E3C4: .4byte gUnk_02029AEC
_0814E3C8:
	movs r1, #0
	ldr r0, _0814E478 @ =gMultiSioArea
	ldrb r0, [r0]
	cmp r0, #8
	bne _0814E3D4
	movs r1, #1
_0814E3D4:
	adds r5, r1, #0
	ldr r2, _0814E47C @ =gUnk_03002A00
	ldrh r1, [r2, #2]
	ldr r0, _0814E480 @ =0x00009006
	cmp r1, r0
	bne _0814E438
	ldr r0, [r4]
	lsls r1, r5, #3
	adds r0, r0, r1
	adds r0, #0x72
	ldrh r0, [r0]
	ldrh r2, [r2, #4]
	cmp r0, r2
	beq _0814E402
	movs r0, #0x14
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0814E402
	movs r0, #0xb2
	bl PlaySE
_0814E402:
	ldr r0, _0814E484 @ =gUnk_02029AEC
	ldr r1, [r0]
	lsls r0, r5, #3
	adds r1, r1, r0
	ldr r4, _0814E47C @ =gUnk_03002A00
	ldrh r0, [r4, #4]
	adds r2, r1, #0
	adds r2, #0x72
	strh r0, [r2]
	ldrh r0, [r4, #6]
	adds r1, #0x76
	strh r0, [r1]
	movs r0, #0x14
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0814E438
	ldr r1, _0814E488 @ =gUnk_02000000
	ldrh r2, [r4, #8]
	ldr r3, _0814E48C @ =0x0000118B
	adds r0, r1, r3
	strb r2, [r0]
	ldrh r0, [r4, #0xa]
	ldr r4, _0814E490 @ =0x0000118C
	adds r1, r1, r4
	strb r0, [r1]
_0814E438:
	ldr r1, _0814E484 @ =gUnk_02029AEC
	ldr r4, [r1]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r3, [r0]
	ldr r0, _0814E494 @ =0x00007717
	adds r6, r1, #0
	cmp r3, r0
	bne _0814E49C
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	cmp r0, r3
	bne _0814E49C
	ldr r0, _0814E498 @ =gUnk_02029AE8
	ldr r1, [r0]
	ldrh r0, [r1, #0x10]
	adds r0, #1
	strh r0, [r1, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa
	bhi _0814E468
	b _0814E56A
_0814E468:
	movs r0, #0x10
	mov r1, sl
	strb r0, [r1]
	movs r0, #0xad
	bl PlaySE
	b _0814E56A
	.align 2, 0
_0814E478: .4byte gMultiSioArea
_0814E47C: .4byte gUnk_03002A00
_0814E480: .4byte 0x00009006
_0814E484: .4byte gUnk_02029AEC
_0814E488: .4byte gUnk_02000000
_0814E48C: .4byte 0x0000118B
_0814E490: .4byte 0x0000118C
_0814E494: .4byte 0x00007717
_0814E498: .4byte gUnk_02029AE8
_0814E49C:
	ldr r0, [r6]
	ldrh r1, [r0, #4]
	cmp r1, #0x40
	beq _0814E4F8
	cmp r1, #0x40
	bgt _0814E4AE
	cmp r1, #1
	beq _0814E4B4
	b _0814E56A
_0814E4AE:
	cmp r1, #0x80
	beq _0814E4F8
	b _0814E56A
_0814E4B4:
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0
	bne _0814E4CC
	ldr r0, _0814E4C8 @ =gMultiSioArea
	ldrb r0, [r0]
	cmp r0, #8
	bne _0814E56A
	b _0814E4D4
	.align 2, 0
_0814E4C8: .4byte gMultiSioArea
_0814E4CC:
	ldr r0, _0814E4EC @ =gMultiSioArea
	ldrb r0, [r0]
	cmp r0, #8
	beq _0814E56A
_0814E4D4:
	ldr r0, _0814E4F0 @ =gUnk_02029AEC
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, #0x76
	ldr r0, _0814E4F4 @ =0x00007717
	strh r0, [r1]
	b _0814E56A
	.align 2, 0
_0814E4EC: .4byte gMultiSioArea
_0814E4F0: .4byte gUnk_02029AEC
_0814E4F4: .4byte 0x00007717
_0814E4F8:
	ldr r0, [r6]
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0
	bne _0814E510
	ldr r0, _0814E50C @ =gMultiSioArea
	ldrb r0, [r0]
	cmp r0, #8
	bne _0814E56A
	b _0814E518
	.align 2, 0
_0814E50C: .4byte gMultiSioArea
_0814E510:
	ldr r0, _0814E544 @ =gMultiSioArea
	ldrb r0, [r0]
	cmp r0, #8
	beq _0814E56A
_0814E518:
	ldr r0, _0814E548 @ =gUnk_02029AEC
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	cmp r0, #0x40
	bne _0814E54C
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r1, r0
	adds r1, r0, #0
	adds r1, #0x72
	ldrh r0, [r1]
	cmp r0, #0
	beq _0814E56A
	subs r0, #1
	strh r0, [r1]
	movs r0, #0xb2
	bl PlaySE
	b _0814E56A
	.align 2, 0
_0814E544: .4byte gMultiSioArea
_0814E548: .4byte gUnk_02029AEC
_0814E54C:
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r1, r0
	adds r1, r0, #0
	adds r1, #0x72
	ldrh r0, [r1]
	cmp r0, #1
	bhi _0814E56A
	adds r0, #1
	strh r0, [r1]
	movs r0, #0xb2
	bl PlaySE
_0814E56A:
	ldr r2, _0814E5D4 @ =gMultiSioArea
	ldrb r1, [r2]
	movs r0, #8
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	ldr r3, _0814E5D8 @ =gUnk_03002A00
	ldrh r1, [r3, #2]
	ldr r0, _0814E5DC @ =0x00009006
	ldr r6, _0814E5E0 @ =gUnk_02029AEC
	cmp r1, r0
	bne _0814E596
	ldrh r3, [r3, #6]
	ldr r0, _0814E5E4 @ =0x00007717
	cmp r3, r0
	bne _0814E596
	ldr r0, [r6]
	lsls r1, r5, #3
	adds r0, r0, r1
	adds r0, #0x76
	strh r3, [r0]
_0814E596:
	movs r3, #0x92
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r0, #0x16
	strb r0, [r1]
	ldr r2, _0814E5E8 @ =gUnk_03002C80
	ldr r0, _0814E5DC @ =0x00009006
	strh r0, [r2, #2]
	ldr r0, [r6]
	lsls r1, r5, #3
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x72
	ldrh r1, [r1]
	strh r1, [r2, #4]
	adds r0, #0x76
	ldrh r0, [r0]
	strh r0, [r2, #6]
	ldr r0, _0814E5EC @ =gUnk_02000000
	ldr r4, _0814E5F0 @ =0x0000118B
	adds r1, r0, r4
	ldrb r1, [r1]
	strh r1, [r2, #8]
	ldr r1, _0814E5F4 @ =0x0000118C
	adds r0, r0, r1
	ldrb r0, [r0]
	strh r0, [r2, #0xa]
	bl sub_0814D4EC
	b _0814E940
	.align 2, 0
_0814E5D4: .4byte gMultiSioArea
_0814E5D8: .4byte gUnk_03002A00
_0814E5DC: .4byte 0x00009006
_0814E5E0: .4byte gUnk_02029AEC
_0814E5E4: .4byte 0x00007717
_0814E5E8: .4byte gUnk_03002C80
_0814E5EC: .4byte gUnk_02000000
_0814E5F0: .4byte 0x0000118B
_0814E5F4: .4byte 0x0000118C
_0814E5F8:
	ldr r0, _0814E678 @ =gUnk_03000D60
	ldr r2, [r0, #0x14]
	ldr r5, _0814E67C @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r0, [r5]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	movs r6, #3
	ands r3, r6
	movs r2, #0
	mov r8, r2
	strh r3, [r4]
	ldr r1, _0814E680 @ =gUnk_03000E20
	ldr r2, [r1, #0x14]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r5]
	adds r1, #0x40
	ldrh r0, [r1]
	ands r0, r6
	strh r0, [r1]
	movs r0, #2
	bl sub_0812B114
	movs r0, #3
	bl sub_0812B114
	movs r0, #2
	bl sub_0814D138
	ldr r0, [r5]
	mov r3, r8
	strh r3, [r0, #0x10]
	movs r0, #0x11
	mov r4, sl
	b _0814E93E
	.align 2, 0
_0814E678: .4byte gUnk_03000D60
_0814E67C: .4byte gUnk_02029AE8
_0814E680: .4byte gUnk_03000E20
_0814E684:
	ldr r0, _0814E6F4 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	ldr r4, _0814E6F8 @ =gUnk_02029AE8
	ldr r1, [r4]
	ldrh r0, [r1, #0x10]
	adds r0, #1
	movs r5, #0
	strh r0, [r1, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _0814E6A2
	b _0814E940
_0814E6A2:
	movs r0, #0xb8
	bl PlaySE
	ldr r0, [r4]
	ldrh r2, [r0, #0x16]
	ldr r4, _0814E6FC @ =gUnk_02029AE4
	ldr r1, _0814E700 @ =gUnk_08621228
	movs r0, #0x2c
	muls r0, r2, r0
	adds r0, r0, r1
	ldrb r2, [r0, #0x11]
	lsls r2, r2, #3
	strh r2, [r4]
	ldrb r3, [r0, #0x12]
	lsls r3, r3, #3
	strh r3, [r4, #2]
	adds r2, #5
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	subs r3, #2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r5, [sp]
	str r5, [sp, #4]
	ldr r0, _0814E704 @ =gUnk_087391E0
	str r0, [sp, #8]
	ldr r0, _0814E708 @ =gUnk_08739158
	str r0, [sp, #0xc]
	ldr r0, _0814E70C @ =0x00000123
	str r0, [sp, #0x10]
	movs r0, #1
	movs r1, #1
	bl sub_0812AD2C
	movs r0, #4
	bl sub_0814531C
	movs r0, #0x12
_0814E6EE:
	mov r1, sl
	strb r0, [r1]
	b _0814E940
	.align 2, 0
_0814E6F4: .4byte gUnk_03000F64
_0814E6F8: .4byte gUnk_02029AE8
_0814E6FC: .4byte gUnk_02029AE4
_0814E700: .4byte gUnk_08621228
_0814E704: .4byte gUnk_087391E0
_0814E708: .4byte gUnk_08739158
_0814E70C: .4byte 0x00000123
_0814E710:
	ldr r0, _0814E738 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	movs r0, #1
	bl sub_0812B14C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0814E726
	b _0814E940
_0814E726:
	ldr r0, _0814E73C @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #0x13
_0814E730:
	mov r2, sl
	strb r0, [r2]
	b _0814E940
	.align 2, 0
_0814E738: .4byte gUnk_03000F64
_0814E73C: .4byte gUnk_02029AE8
_0814E740:
	ldr r0, _0814E79C @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	ldr r4, _0814E7A0 @ =gUnk_02029AE8
	ldr r1, [r4]
	ldrh r0, [r1, #0x10]
	adds r0, #1
	strh r0, [r1, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _0814E75C
	b _0814E940
_0814E75C:
	movs r0, #0xb7
	bl PlaySE
	ldr r0, [r4]
	ldrh r1, [r0, #0x16]
	ldr r2, _0814E7A4 @ =gUnk_02029AE4
	ldr r3, _0814E7A8 @ =gUnk_08621228
	movs r0, #0x2c
	muls r1, r0, r1
	adds r1, r1, r3
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #3
	strh r0, [r2]
	ldrb r0, [r1, #0x12]
	lsls r0, r0, #3
	strh r0, [r2, #2]
	adds r3, r2, #0
	ldr r5, _0814E7AC @ =gUnk_086A22A0
	ldrh r0, [r3]
	subs r0, #0x1c
	cmp r0, #0
	bge _0814E78A
	movs r0, #0
_0814E78A:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrh r1, [r3, #2]
	adds r0, r1, #0
	subs r0, #0x20
	cmp r0, #0
	bge _0814E7B0
	adds r0, #0x30
	b _0814E7B4
	.align 2, 0
_0814E79C: .4byte gUnk_03000F64
_0814E7A0: .4byte gUnk_02029AE8
_0814E7A4: .4byte gUnk_02029AE4
_0814E7A8: .4byte gUnk_08621228
_0814E7AC: .4byte gUnk_086A22A0
_0814E7B0:
	adds r0, r1, #0
	subs r0, #0x1c
_0814E7B4:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	adds r1, r5, #0
	bl sub_0812B094
	ldr r0, _0814E7D0 @ =gUnk_02029AE8
	ldr r0, [r0]
	strh r4, [r0, #0x10]
	movs r0, #0x14
	b _0814E8CA
	.align 2, 0
_0814E7D0: .4byte gUnk_02029AE8
_0814E7D4:
	ldr r0, _0814E870 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	ldr r0, _0814E874 @ =gUnk_02029AE8
	ldr r1, [r0]
	ldrh r0, [r1, #0x10]
	adds r0, #1
	strh r0, [r1, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x5f
	bhi _0814E7F0
	b _0814E940
_0814E7F0:
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #0x15
	mov r4, sl
	strb r0, [r4]
_0814E7FA:
	ldr r0, _0814E870 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	movs r0, #1
	bl sub_0814B1E0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0814E810
	b _0814E940
_0814E810:
	bl sub_081452EC
	ldr r5, _0814E878 @ =gUnk_0200119E
	ldr r4, _0814E87C @ =gUnk_02029AEC
	ldr r1, [r4]
	adds r1, #0xac
	adds r0, r5, #0
	movs r2, #0x2c
	bl memcpy2
	ldr r1, [r4]
	adds r3, r1, #0
	adds r3, #0x3f
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r1, r0
	adds r0, #0x72
	ldrh r2, [r0]
	ldr r4, _0814E880 @ =0x0000027E
	adds r0, r5, r4
	strb r2, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, #0x72
	ldrh r0, [r1]
	movs r1, #0x14
	cmp r0, #2
	bne _0814E84C
	movs r1, #5
_0814E84C:
	ldr r2, _0814E884 @ =0x0000027F
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _0814E874 @ =gUnk_02029AE8
	ldr r0, [r0]
	ldrh r0, [r0, #0x16]
	bl sub_08118370
	ldr r1, _0814E888 @ =gUnk_03000FA0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0814E88C @ =gUnk_03000E60
	ldr r2, _0814E890 @ =sub_0804767C
	movs r1, #1
	bl sub_08002D38
	b _0814E940
	.align 2, 0
_0814E870: .4byte gUnk_03000F64
_0814E874: .4byte gUnk_02029AE8
_0814E878: .4byte gUnk_0200119E
_0814E87C: .4byte gUnk_02029AEC
_0814E880: .4byte 0x0000027E
_0814E884: .4byte 0x0000027F
_0814E888: .4byte gUnk_03000FA0
_0814E88C: .4byte gUnk_03000E60
_0814E890: .4byte sub_0804767C
_0814E894:
	ldr r0, _0814E8B4 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	ldr r1, _0814E8B8 @ =gUnk_02029AEC
	ldr r1, [r1]
	movs r4, #0
	strh r0, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #1
	beq _0814E8BC
	cmp r0, #2
	beq _0814E8D4
	b _0814E940
	.align 2, 0
_0814E8B4: .4byte gUnk_03000F64
_0814E8B8: .4byte gUnk_02029AEC
_0814E8BC:
	movs r0, #0xad
	bl PlaySE
	ldr r0, _0814E8D0 @ =gUnk_02029AE8
	ldr r0, [r0]
	strh r4, [r0, #0x10]
	movs r0, #0x18
_0814E8CA:
	mov r3, sl
	strb r0, [r3]
	b _0814E940
	.align 2, 0
_0814E8D0: .4byte gUnk_02029AE8
_0814E8D4:
	movs r0, #0xb0
	bl PlaySE
	ldr r0, _0814E8E8 @ =gUnk_02029AE8
	ldr r0, [r0]
	strh r4, [r0, #0x10]
	movs r0, #0x18
	mov r4, sl
	b _0814E93E
	.align 2, 0
_0814E8E8: .4byte gUnk_02029AE8
_0814E8EC:
	bl MultiSioStop
	ldr r0, _0814E950 @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #0x18
	mov r1, sl
	strb r0, [r1]
_0814E8FE:
	ldr r0, _0814E954 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	movs r0, #1
	bl sub_0814B1E0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814E940
	ldr r0, _0814E950 @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #0x19]
	ldr r4, _0814E958 @ =gUnk_0200119E
	ldr r0, _0814E95C @ =gUnk_02029AEC
	ldr r1, [r0]
	adds r1, #0xac
	adds r0, r4, #0
	movs r2, #0x2c
	bl memcpy2
	ldr r1, _0814E960 @ =gUnk_03000FA0
	adds r0, r1, #0
	adds r0, #0xa4
	ldrb r0, [r0]
	adds r2, r4, #0
	subs r2, #0x13
	strb r0, [r2]
	adds r1, #0xa5
	ldrb r0, [r1]
	subs r4, #0x12
_0814E93E:
	strb r0, [r4]
_0814E940:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814E950: .4byte gUnk_02029AE8
_0814E954: .4byte gUnk_03000F64
_0814E958: .4byte gUnk_0200119E
_0814E95C: .4byte gUnk_02029AEC
_0814E960: .4byte gUnk_03000FA0

	thumb_func_start sub_0814E964
sub_0814E964: @ 0x0814E964
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _0814EA94 @ =gUnk_0200833C
	mov sb, r0
	movs r1, #0xe
	mov r2, r8
	cmp r2, #1
	bne _0814E984
	movs r1, #4
_0814E984:
	movs r0, #0xa
	str r0, [sp]
	movs r4, #0
	str r4, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	movs r1, #0xa
	movs r2, #8
	movs r3, #2
	bl sub_0801BB1C
	ldr r0, _0814EA98 @ =gUnk_03000E20
	ldr r0, [r0, #0x14]
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r7, r0, r1
	movs r5, #8
	ldr r6, _0814EA9C @ =gUnk_02029AE8
	ldr r0, [r6]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r5, [sp]
	movs r1, #0x14
	str r1, [sp, #4]
	movs r1, #0x40
	str r1, [sp, #8]
	mov r1, sb
	adds r2, r7, #0
	movs r3, #0xa
	bl sub_08000CD4
	ldr r1, [r6]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
	movs r2, #0xa0
	add sb, r2
	str r4, [sp, #0xc]
	ldr r2, _0814EAA0 @ =0x01000028
	add r0, sp, #0xc
	mov r1, sb
	bl CpuFastSet
	movs r7, #0xff
	lsls r7, r7, #1
	ldr r0, _0814EAA4 @ =gUnk_02029AEC
	ldr r0, [r0]
	adds r0, #0x42
	strh r4, [r0]
	movs r3, #0
	ldr r4, _0814EAA8 @ =gUnk_02000000
_0814EA02:
	lsls r0, r3, #2
	adds r1, r0, r4
	movs r2, #0xda
	lsls r2, r2, #4
	adds r0, r1, r2
	ldrb r0, [r0]
	ldr r2, _0814EAA4 @ =gUnk_02029AEC
	mov ip, r2
	cmp r0, #0
	beq _0814EA2C
	ldr r2, _0814EAAC @ =0x00000DA1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814EA2C
	mov r0, ip
	ldr r1, [r0]
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0814EA2C:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xa3
	bls _0814EA02
	movs r3, #0
	mov r5, sb
	adds r5, #0x18
	lsls r1, r7, #5
	mov sl, r1
	mov r2, sb
	adds r2, #0x40
	str r2, [sp, #0x10]
	mov r0, sb
	adds r0, #0x68
	str r0, [sp, #0x14]
	ldr r4, _0814EAA8 @ =gUnk_02000000
_0814EA4E:
	lsls r0, r3, #2
	adds r1, r0, r4
	ldr r2, _0814EAB0 @ =0x00001118
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814EA72
	adds r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814EA72
	mov r0, ip
	ldr r1, [r0]
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0814EA72:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x1a
	bls _0814EA4E
	ldr r0, _0814EAA4 @ =gUnk_02029AEC
	ldr r0, [r0]
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r0, #0
	bne _0814EAB4
	movs r0, #0xf
	mov r1, r8
	cmp r1, #1
	bne _0814EABE
	movs r0, #5
	b _0814EABE
	.align 2, 0
_0814EA94: .4byte gUnk_0200833C
_0814EA98: .4byte gUnk_03000E20
_0814EA9C: .4byte gUnk_02029AE8
_0814EAA0: .4byte 0x01000028
_0814EAA4: .4byte gUnk_02029AEC
_0814EAA8: .4byte gUnk_02000000
_0814EAAC: .4byte 0x00000DA1
_0814EAB0: .4byte 0x00001118
_0814EAB4:
	movs r0, #0xe
	mov r2, r8
	cmp r2, #1
	bne _0814EABE
	movs r0, #4
_0814EABE:
	adds r4, r0, #0
	ldr r0, _0814EB6C @ =gUnk_08765C8E
	movs r1, #5
	movs r2, #0
	bl sub_0801C7C0
	adds r3, r0, #0
	lsls r0, r4, #0x1c
	adds r4, r7, #0
	lsrs r6, r0, #0x10
	movs r2, #0
	ldr r0, _0814EB70 @ =gUnk_03000D60
	ldr r0, [r0, #0x10]
	add r0, sl
	movs r1, #0xff
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r3, #0
	movs r2, #4
	movs r3, #1
	bl sub_0801A924
	adds r3, r7, #0
	movs r1, #0
	adds r2, r6, #1
_0814EAF0:
	adds r0, r4, r6
	strh r0, [r5]
	adds r0, r4, r2
	strh r0, [r5, #0x14]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r1, #4
	blo _0814EAF0
	subs r0, r4, r3
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, _0814EB74 @ =gUnk_02029AEC
	ldr r0, [r2]
	adds r0, #0x44
	movs r1, #0
	strh r1, [r0]
	movs r3, #0
	mov ip, r2
	ldr r4, _0814EB78 @ =gUnk_02000000
_0814EB22:
	lsls r0, r3, #2
	adds r1, r0, r4
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814EB48
	adds r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814EB48
	mov r0, ip
	ldr r1, [r0]
	adds r1, #0x44
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0814EB48:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x35
	bls _0814EB22
	ldr r0, _0814EB74 @ =gUnk_02029AEC
	ldr r0, [r0]
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _0814EB7C
	movs r0, #0xf
	mov r1, r8
	cmp r1, #1
	bne _0814EB86
	movs r0, #5
	b _0814EB86
	.align 2, 0
_0814EB6C: .4byte gUnk_08765C8E
_0814EB70: .4byte gUnk_03000D60
_0814EB74: .4byte gUnk_02029AEC
_0814EB78: .4byte gUnk_02000000
_0814EB7C:
	movs r0, #0xe
	mov r2, r8
	cmp r2, #1
	bne _0814EB86
	movs r0, #4
_0814EB86:
	adds r4, r0, #0
	ldr r0, _0814EC30 @ =gUnk_08765C8E
	movs r1, #5
	movs r2, #1
	bl sub_0801C7C0
	adds r3, r0, #0
	lsls r0, r4, #0x1c
	ldr r5, [sp, #0x10]
	adds r4, r7, #0
	lsrs r6, r0, #0x10
	movs r2, #0
	ldr r0, _0814EC34 @ =gUnk_03000D60
	lsls r1, r7, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r3, #0
	movs r2, #7
	movs r3, #1
	bl sub_0801A924
	adds r3, r7, #0
	movs r1, #0
	adds r2, r6, #1
_0814EBBC:
	adds r0, r4, r6
	strh r0, [r5]
	adds r0, r4, r2
	strh r0, [r5, #0x14]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r1, #7
	blo _0814EBBC
	subs r0, r4, r3
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, _0814EC38 @ =gUnk_02029AEC
	ldr r0, [r2]
	adds r0, #0x46
	movs r1, #0
	strh r1, [r0]
	movs r3, #0
	mov ip, r2
	ldr r2, _0814EC30 @ =gUnk_08765C8E
	ldr r6, _0814EC3C @ =gUnk_02000000
	movs r5, #0x68
	mov r4, ip
_0814EBF4:
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814EC0C
	ldr r1, [r4]
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0814EC0C:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x1f
	bls _0814EBF4
	mov r1, ip
	ldr r0, [r1]
	adds r0, #0x46
	ldrh r0, [r0]
	cmp r0, #0
	bne _0814EC40
	movs r0, #0xf
	mov r1, r8
	cmp r1, #1
	bne _0814EC4A
	movs r0, #5
	b _0814EC4A
	.align 2, 0
_0814EC30: .4byte gUnk_08765C8E
_0814EC34: .4byte gUnk_03000D60
_0814EC38: .4byte gUnk_02029AEC
_0814EC3C: .4byte gUnk_02000000
_0814EC40:
	movs r0, #0xe
	mov r1, r8
	cmp r1, #1
	bne _0814EC4A
	movs r0, #4
_0814EC4A:
	adds r4, r0, #0
	adds r0, r2, #0
	movs r1, #5
	movs r2, #2
	bl sub_0801C7C0
	adds r3, r0, #0
	lsls r0, r4, #0x1c
	ldr r5, [sp, #0x14]
	adds r4, r7, #0
	lsrs r6, r0, #0x10
	movs r2, #0
	ldr r0, _0814ECF0 @ =gUnk_03000D60
	lsls r1, r4, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r3, #0
	movs r2, #7
	movs r3, #1
	bl sub_0801A924
	movs r1, #0
	adds r2, r6, #1
_0814EC7E:
	adds r0, r4, r6
	strh r0, [r5]
	adds r0, r4, r2
	strh r0, [r5, #0x14]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r1, #7
	blo _0814EC7E
	ldr r0, _0814ECF0 @ =gUnk_03000D60
	ldr r0, [r0, #0x14]
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r7, r0, r2
	movs r4, #8
	ldr r5, _0814ECF4 @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0x14
	str r1, [sp, #4]
	movs r1, #0x40
	str r1, [sp, #8]
	mov r1, sb
	adds r2, r7, #0
	movs r3, #0xa
	bl sub_08000CD4
	ldr r1, [r5]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814ECF0: .4byte gUnk_03000D60
_0814ECF4: .4byte gUnk_02029AE8

	thumb_func_start sub_0814ECF8
sub_0814ECF8: @ 0x0814ECF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #7
	ldr r6, _0814ED88 @ =gUnk_02029AEC
	cmp r0, #1
	bne _0814ED28
	ldr r1, [r6]
	ldrh r0, [r1, #0x10]
	adds r0, #1
	strh r0, [r1, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	bl __udivsi3
	ands r4, r0
	cmp r4, #3
	bhi _0814ED28
	movs r0, #8
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0814ED28:
	ldr r0, _0814ED8C @ =gMultiSioArea
	ldrb r0, [r0]
	movs r1, #8
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	ldr r7, _0814ED90 @ =gUnk_086A2270
	adds r5, r4, #0
	adds r5, #0x48
	ldr r0, _0814ED94 @ =gUnk_02029AE8
	ldr r2, [r0]
	adds r2, #0x1c
	adds r2, r2, r1
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r4, r0, #0
	adds r4, #0x5c
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	movs r3, #0
	ldr r1, [r6]
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r1, #0x42
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _0814ED72
	movs r3, #1
_0814ED72:
	str r3, [sp, #0x18]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080022EC
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814ED88: .4byte gUnk_02029AEC
_0814ED8C: .4byte gMultiSioArea
_0814ED90: .4byte gUnk_086A2270
_0814ED94: .4byte gUnk_02029AE8

	thumb_func_start sub_0814ED98
sub_0814ED98: @ 0x0814ED98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, _0814EE5C @ =gUnk_03001090
	ldr r2, [r0, #0x14]
	ldr r5, _0814EE60 @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r2, [r5]
	adds r2, #0x40
	ldrh r0, [r2]
	movs r1, #3
	ands r0, r1
	movs r6, #0
	strh r0, [r2]
	ldr r0, _0814EE64 @ =gUnk_0200833C
	mov sb, r0
	str r6, [sp, #0xc]
	ldr r2, _0814EE68 @ =0x01000040
	add r0, sp, #0xc
	mov r1, sb
	bl CpuFastSet
	ldr r4, _0814EE6C @ =gUnk_02029AEC
	ldr r1, [r4]
	ldr r0, [r5]
	adds r0, #0x31
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r1, #0x5e
	adds r1, r1, r0
	ldrh r0, [r1]
	add r1, sp, #0x10
	mov sl, r1
	cmp r0, #0xff
	beq _0814EEC8
	movs r0, #0x20
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	mov r0, sb
	movs r1, #0xd
	movs r2, #4
	movs r3, #2
	bl sub_0801BB1C
	ldr r0, [r4]
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0814EEC8
	mov r8, r6
	movs r7, #1
	ldr r5, _0814EE70 @ =gUnk_086B7530
	movs r6, #0xf
_0814EE34:
	mov r2, r8
	lsls r0, r2, #1
	mov r2, sb
	adds r1, r0, r2
	adds r4, r1, #0
	adds r4, #0x42
	mov r2, r8
	adds r2, #1
	adds r1, r2, #0
	ands r1, r7
	adds r3, r0, #0
	cmp r1, #0
	beq _0814EE74
	asrs r0, r2, #1
	adds r0, #4
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	b _0814EE80
	.align 2, 0
_0814EE5C: .4byte gUnk_03001090
_0814EE60: .4byte gUnk_02029AE8
_0814EE64: .4byte gUnk_0200833C
_0814EE68: .4byte 0x01000040
_0814EE6C: .4byte gUnk_02029AEC
_0814EE70: .4byte gUnk_086B7530
_0814EE74:
	asrs r0, r2, #1
	adds r0, #4
	adds r0, r0, r5
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ands r0, r6
_0814EE80:
	lsls r0, r0, #0xc
	adds r0, r2, r0
	strh r0, [r4]
	mov r1, sb
	adds r0, r3, r1
	adds r3, r0, #0
	adds r3, #0x82
	mov r2, r8
	adds r2, #3
	adds r0, r2, #0
	ands r0, r7
	cmp r0, #0
	beq _0814EEA8
	asrs r0, r2, #1
	adds r0, #4
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	b _0814EEB4
_0814EEA8:
	asrs r0, r2, #1
	adds r0, #4
	adds r0, r0, r5
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ands r0, r6
_0814EEB4:
	lsls r0, r0, #0xc
	adds r0, r2, r0
	strh r0, [r3]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #1
	bls _0814EE34
_0814EEC8:
	ldr r4, _0814EF3C @ =gUnk_02029AEC
	ldr r1, [r4]
	ldr r0, _0814EF40 @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r0, #0x31
	ldrb r2, [r0]
	movs r0, #1
	eors r0, r2
	lsls r0, r0, #1
	adds r1, #0x5e
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0xff
	beq _0814EF9C
	mov r0, sb
	adds r0, #0x1e
	movs r1, #0x20
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #4
	str r1, [sp, #8]
	movs r1, #0xd
	movs r2, #4
	movs r3, #2
	bl sub_0801BB1C
	ldr r0, [r4]
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0814EF9C
	movs r2, #0
	mov r8, r2
	movs r7, #1
	ldr r5, _0814EF44 @ =gUnk_086B7530
	movs r6, #0xf
_0814EF12:
	mov r1, r8
	lsls r0, r1, #1
	mov r2, sb
	adds r1, r0, r2
	adds r4, r1, #0
	adds r4, #0x60
	mov r2, r8
	adds r2, #1
	adds r1, r2, #0
	ands r1, r7
	adds r3, r0, #0
	cmp r1, #0
	beq _0814EF48
	asrs r0, r2, #1
	adds r0, #4
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	b _0814EF54
	.align 2, 0
_0814EF3C: .4byte gUnk_02029AEC
_0814EF40: .4byte gUnk_02029AE8
_0814EF44: .4byte gUnk_086B7530
_0814EF48:
	asrs r0, r2, #1
	adds r0, #4
	adds r0, r0, r5
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ands r0, r6
_0814EF54:
	lsls r0, r0, #0xc
	adds r0, r2, r0
	strh r0, [r4]
	mov r1, sb
	adds r0, r3, r1
	adds r3, r0, #0
	adds r3, #0xa0
	mov r2, r8
	adds r2, #3
	adds r0, r2, #0
	ands r0, r7
	cmp r0, #0
	beq _0814EF7C
	asrs r0, r2, #1
	adds r0, #4
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	b _0814EF88
_0814EF7C:
	asrs r0, r2, #1
	adds r0, #4
	adds r0, r0, r5
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ands r0, r6
_0814EF88:
	lsls r0, r0, #0xc
	adds r0, r2, r0
	strh r0, [r3]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #1
	bls _0814EF12
_0814EF9C:
	ldr r0, _0814F044 @ =gUnk_03000E20
	ldr r0, [r0, #0x14]
	ldr r2, _0814F048 @ =0x00000302
	adds r6, r0, r2
	movs r4, #4
	ldr r5, _0814F04C @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, sb
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08000CD4
	ldr r2, [r5]
	adds r2, #0x40
	ldrh r0, [r2]
	movs r1, #3
	ands r0, r1
	movs r1, #0
	strh r0, [r2]
	ldr r0, _0814F050 @ =gUnk_0200843C
	mov sb, r0
	str r1, [sp, #0x10]
	ldr r2, _0814F054 @ =0x01000040
	mov r0, sl
	mov r1, sb
	bl CpuFastSet
	ldr r0, _0814F058 @ =gUnk_02029AEC
	ldr r2, [r0]
	ldrh r3, [r2, #0x1a]
	movs r1, #1
	adds r0, r3, #0
	eors r0, r1
	strh r0, [r2, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r3, #0
	beq _0814F00A
	adds r0, #0x6c
_0814F00A:
	adds r7, r0, #0
	movs r1, #0
	mov r8, r1
	movs r3, #0
	adds r6, r5, #0
_0814F014:
	ldr r0, [r6]
	adds r0, #0x31
	ldrb r2, [r0]
	mov r0, r8
	cmp r0, #0
	beq _0814F024
	movs r0, #1
	eors r2, r0
_0814F024:
	ldr r0, _0814F058 @ =gUnk_02029AEC
	ldr r1, [r0]
	lsls r2, r2, #1
	adds r1, #0x5e
	adds r1, r1, r2
	ldrh r4, [r1]
	adds r1, r0, #0
	ldr r2, [sp, #0x14]
	cmp r2, #1
	bne _0814F05C
	movs r0, #0xf
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _0814F05E
	.align 2, 0
_0814F044: .4byte gUnk_03000E20
_0814F048: .4byte 0x00000302
_0814F04C: .4byte gUnk_02029AE8
_0814F050: .4byte gUnk_0200843C
_0814F054: .4byte 0x01000040
_0814F058: .4byte gUnk_02029AEC
_0814F05C:
	adds r5, r3, #0
_0814F05E:
	adds r3, #0xf
	mov sl, r3
	cmp r4, #0xff
	beq _0814F13A
	ldr r0, [r1]
	adds r0, #0x5c
	ldrb r3, [r0]
	cmp r3, #0
	beq _0814F076
	cmp r3, #1
	beq _0814F0D8
	b _0814F13A
_0814F076:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_081437AC
	adds r6, r0, #0
	lsls r0, r5, #1
	add r0, sb
	adds r5, r0, #6
	adds r4, r7, #0
	movs r2, #1
	ldr r0, _0814F0D0 @ =gUnk_03000D60
	lsls r1, r7, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r6, #0
	movs r2, #9
	movs r3, #1
	bl sub_0801A924
	adds r3, r7, #0
	movs r2, #0
	ldr r6, _0814F0D4 @ =0x00004001
_0814F0AA:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	strh r0, [r5]
	adds r1, r5, #0
	adds r1, #0x40
	adds r0, r4, r6
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r2, #9
	blo _0814F0AA
	b _0814F130
	.align 2, 0
_0814F0D0: .4byte gUnk_03000D60
_0814F0D4: .4byte 0x00004001
_0814F0D8:
	ldr r2, _0814F1E0 @ =gUnk_08623678
	ldr r1, _0814F1E4 @ =gUnk_0861A8F0
	lsls r0, r4, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r6, [r0]
	lsls r0, r5, #1
	add r0, sb
	adds r5, r0, #6
	adds r4, r7, #0
	ldr r0, _0814F1E8 @ =gUnk_03000D60
	lsls r1, r7, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	str r3, [sp, #4]
	adds r1, r6, #0
	movs r2, #9
	movs r3, #1
	bl sub_0801A924
	adds r3, r7, #0
	movs r2, #0
	ldr r6, _0814F1EC @ =0x00004001
_0814F10E:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	strh r0, [r5]
	adds r1, r5, #0
	adds r1, #0x40
	adds r0, r4, r6
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r2, #9
	blo _0814F10E
_0814F130:
	subs r0, r4, r3
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r6, _0814F1F0 @ =gUnk_02029AE8
_0814F13A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r2, sl
	lsls r0, r2, #0x10
	lsrs r3, r0, #0x10
	mov r0, r8
	cmp r0, #1
	bhi _0814F152
	b _0814F014
_0814F152:
	ldr r0, _0814F1E8 @ =gUnk_03000D60
	ldr r0, [r0, #0x14]
	ldr r1, _0814F1F4 @ =0x00000342
	adds r6, r0, r1
	movs r4, #4
	ldr r5, _0814F1F0 @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, sb
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08000CD4
	ldr r1, [r5]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
	ldr r0, _0814F1F8 @ =gUnk_08724208
	ldrh r0, [r0]
	mov sb, r0
	movs r2, #0
	mov r8, r2
_0814F1A0:
	ldr r0, _0814F1F0 @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r0, #0x31
	ldrb r1, [r0]
	mov r0, r8
	cmp r0, #0
	beq _0814F1B2
	movs r0, #1
	eors r1, r0
_0814F1B2:
	adds r6, r1, #0
	ldr r0, _0814F1FC @ =gUnk_02029AEC
	ldr r2, [r0]
	lsls r1, r6, #1
	adds r0, r2, #0
	adds r0, #0x5e
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r4, #0xff
	beq _0814F2A8
	adds r0, r2, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0814F200
	adds r0, r4, #0
	movs r1, #0x1e
	movs r2, #0
	bl sub_081437AC
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0814F252
	.align 2, 0
_0814F1E0: .4byte gUnk_08623678
_0814F1E4: .4byte gUnk_0861A8F0
_0814F1E8: .4byte gUnk_03000D60
_0814F1EC: .4byte 0x00004001
_0814F1F0: .4byte gUnk_02029AE8
_0814F1F4: .4byte 0x00000342
_0814F1F8: .4byte gUnk_08724208
_0814F1FC: .4byte gUnk_02029AEC
_0814F200:
	cmp r0, #1
	bne _0814F252
	ldr r0, _0814F21C @ =gUnk_0861A8F0
	lsls r1, r4, #6
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	subs r0, #1
	cmp r0, #5
	bhi _0814F252
	lsls r0, r0, #2
	ldr r1, _0814F220 @ =_0814F224
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0814F21C: .4byte gUnk_0861A8F0
_0814F220: .4byte _0814F224
_0814F224: @ jump table
	.4byte _0814F23C @ case 0
	.4byte _0814F240 @ case 1
	.4byte _0814F244 @ case 2
	.4byte _0814F248 @ case 3
	.4byte _0814F24C @ case 4
	.4byte _0814F250 @ case 5
_0814F23C:
	movs r4, #0xc6
	b _0814F252
_0814F240:
	movs r4, #0xc7
	b _0814F252
_0814F244:
	movs r4, #0xc8
	b _0814F252
_0814F248:
	movs r4, #0xc9
	b _0814F252
_0814F24C:
	movs r4, #0xca
	b _0814F252
_0814F250:
	movs r4, #0xcb
_0814F252:
	ldr r0, _0814F2C8 @ =gUnk_0861E288
	ldr r1, _0814F2CC @ =gUnk_02002600
	movs r2, #0x20
	bl CpuSet
	lsls r0, r4, #7
	add r0, sb
	ldr r5, _0814F2D0 @ =gUnk_08724208
	adds r0, r0, r5
	mov r2, r8
	lsls r1, r2, #7
	ldr r2, _0814F2D4 @ =0x06010000
	adds r1, r1, r2
	movs r2, #0x20
	bl CpuFastSet
	mov r0, r8
	lsls r1, r0, #3
	ldr r0, _0814F2D8 @ =gUnk_086A22E8
	adds r7, r1, r0
	ldr r0, _0814F2DC @ =gUnk_02029AEC
	ldr r1, [r0]
	lsls r2, r6, #1
	adds r0, r1, #0
	adds r0, #0x54
	adds r0, r0, r2
	ldrb r6, [r0]
	adds r1, #0x58
	adds r1, r1, r2
	ldrb r3, [r1]
	lsls r0, r4, #1
	adds r0, #4
	adds r0, r0, r5
	ldrb r0, [r0]
	lsrs r0, r0, #4
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_0812B094
_0814F2A8:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #1
	bhi _0814F2B8
	b _0814F1A0
_0814F2B8:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814F2C8: .4byte gUnk_0861E288
_0814F2CC: .4byte gUnk_02002600
_0814F2D0: .4byte gUnk_08724208
_0814F2D4: .4byte 0x06010000
_0814F2D8: .4byte gUnk_086A22E8
_0814F2DC: .4byte gUnk_02029AEC

	thumb_func_start sub_0814F2E0
sub_0814F2E0: @ 0x0814F2E0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x4f
	ldrb r4, [r6]
	movs r1, #0
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0814F310
	movs r0, #4
	b _0814F388
_0814F310:
	ldrb r4, [r6]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #5
	bl sub_0813FA44
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	subs r0, #1
	cmp r0, #6
	bhi _0814F386
	lsls r0, r0, #2
	ldr r1, _0814F340 @ =_0814F344
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0814F340: .4byte _0814F344
_0814F344: @ jump table
	.4byte _0814F360 @ case 0
	.4byte _0814F370 @ case 1
	.4byte _0814F374 @ case 2
	.4byte _0814F378 @ case 3
	.4byte _0814F37C @ case 4
	.4byte _0814F380 @ case 5
	.4byte _0814F384 @ case 6
_0814F360:
	movs r1, #0
	adds r0, r5, #0
	adds r0, #0x5e
	ldrb r0, [r0]
	cmp r0, #2
	bne _0814F386
	movs r1, #1
	b _0814F386
_0814F370:
	movs r1, #2
	b _0814F386
_0814F374:
	movs r1, #3
	b _0814F386
_0814F378:
	movs r1, #4
	b _0814F386
_0814F37C:
	movs r1, #5
	b _0814F386
_0814F380:
	movs r1, #6
	b _0814F386
_0814F384:
	movs r1, #7
_0814F386:
	adds r0, r1, #0
_0814F388:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0814F390
sub_0814F390: @ 0x0814F390
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	bl sub_08012B7C
	movs r0, #0
	mov sl, r0
	mov sb, r0
_0814F3A6:
	mov r1, sl
	cmp r1, #0
	bne _0814F3C0
	ldr r1, _0814F3BC @ =gUnk_02029AE8
	ldr r0, [r1]
	adds r0, #0x31
	ldrb r5, [r0]
	movs r2, #1
	ands r5, r2
	adds r0, r1, #0
	b _0814F3CC
	.align 2, 0
_0814F3BC: .4byte gUnk_02029AE8
_0814F3C0:
	ldr r0, _0814F484 @ =gUnk_02029AE8
	ldr r1, [r0]
	adds r1, #0x31
	ldrb r1, [r1]
	movs r5, #1
	bics r5, r1
_0814F3CC:
	ldr r0, [r0]
	adds r0, #0x1c
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0814F464
	ldr r3, _0814F488 @ =gUnk_02029AEC
	mov r8, r3
	ldr r1, [r3]
	lsls r7, r5, #1
	movs r4, #0x9e
	lsls r4, r4, #2
	adds r0, r1, r4
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r0, #0
	beq _0814F464
	movs r0, #0x68
	muls r0, r7, r0
	adds r0, #0xd8
	adds r0, r1, r0
	movs r1, #0
	movs r2, #0x12
	bl sub_08143B70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r1, r8
	ldr r0, [r1]
	lsls r1, r5, #2
	adds r0, #0x68
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #0x1c
	bl sub_08012CD0
	ldr r5, [sp, #0x34]
	ldr r2, _0814F48C @ =0xF9FF0000
	adds r5, r5, r2
	ldr r6, [sp, #0x20]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_08143530
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r4, r8
	ldr r3, [r4]
	adds r1, r3, #0
	adds r1, #0x54
	adds r1, r1, r7
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r3, #0
	adds r2, #0x58
	adds r2, r2, r7
	movs r4, #0
	ldrsh r2, [r2, r4]
	mov r4, sb
	str r4, [sp]
	str r4, [sp, #4]
	adds r3, #0x48
	adds r3, r3, r7
	ldrb r3, [r3]
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	lsrs r5, r5, #5
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	str r0, [sp, #0x18]
	adds r0, r6, #0
	movs r3, #0
	bl sub_080022EC
_0814F464:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #1
	bls _0814F3A6
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814F484: .4byte gUnk_02029AE8
_0814F488: .4byte gUnk_02029AEC
_0814F48C: .4byte 0xF9FF0000

	thumb_func_start sub_0814F490
sub_0814F490: @ 0x0814F490
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r0, _0814F4FC @ =gUnk_087C2990
	ldr r4, _0814F500 @ =gUnk_03001070
	ldr r1, [r4, #0x10]
	ldr r2, _0814F504 @ =gUnk_0200833C
	movs r3, #0
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r3, #0
	bl sub_0801A59C
	ldr r1, _0814F508 @ =gUnk_087C2424
	ldr r2, [r4, #0x14]
	movs r6, #0x14
	ldr r0, _0814F50C @ =gUnk_02029AE8
	mov r8, r0
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x40
	ldrh r4, [r5]
	adds r3, r4, #1
	strh r3, [r5]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r3, r4, #3
	subs r3, r3, r4
	lsls r3, r3, #2
	adds r3, #0x44
	adds r0, r0, r3
	str r6, [sp]
	movs r3, #0x40
	str r3, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0x20
	bl sub_08000CD4
	mov r3, r8
	ldr r1, [r3]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814F4FC: .4byte gUnk_087C2990
_0814F500: .4byte gUnk_03001070
_0814F504: .4byte gUnk_0200833C
_0814F508: .4byte gUnk_087C2424
_0814F50C: .4byte gUnk_02029AE8

	thumb_func_start sub_0814F510
sub_0814F510: @ 0x0814F510
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x24]
	ldr r1, _0814F65C @ =gUnk_0200833C
	str r1, [sp, #0x20]
	str r0, [sp, #0xc]
	ldr r2, _0814F660 @ =0x010000D0
	mov r8, r2
	add r0, sp, #0xc
	bl CpuFastSet
	ldr r7, _0814F664 @ =gUnk_02029AE8
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #0x31
	adds r0, #0x1c
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0814F57C
	movs r5, #0x20
	str r5, [sp]
	ldr r3, [sp, #0x24]
	str r3, [sp, #4]
	movs r4, #4
	str r4, [sp, #8]
	ldr r0, [sp, #0x20]
	movs r1, #0xc
	movs r2, #9
	movs r3, #2
	bl sub_0801BB1C
	ldr r6, [sp, #0x20]
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r6, r1
	str r5, [sp]
	ldr r2, [sp, #0x24]
	str r2, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0xc
	movs r2, #4
	movs r3, #2
	bl sub_0801BB1C
_0814F57C:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r2, [r0]
	movs r0, #1
	eors r0, r2
	adds r1, #0x1c
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0814F5C6
	ldr r0, [sp, #0x20]
	adds r0, #0x1c
	movs r5, #0x20
	str r5, [sp]
	ldr r3, [sp, #0x24]
	str r3, [sp, #4]
	movs r4, #4
	str r4, [sp, #8]
	movs r1, #0xc
	movs r2, #9
	movs r3, #2
	bl sub_0801BB1C
	ldr r6, [sp, #0x20]
	movs r1, #0x97
	lsls r1, r1, #2
	adds r0, r6, r1
	str r5, [sp]
	ldr r2, [sp, #0x24]
	str r2, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0xc
	movs r2, #4
	movs r3, #2
	bl sub_0801BB1C
_0814F5C6:
	ldr r0, _0814F668 @ =gUnk_03000E20
	ldr r0, [r0, #0x14]
	movs r3, #0xe2
	lsls r3, r3, #1
	adds r6, r0, r3
	movs r4, #0xd
	ldr r0, [r7]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x20]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08000CD4
	ldr r1, [r7]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
	ldr r6, [sp, #0x20]
	movs r7, #0xd0
	lsls r7, r7, #2
	adds r6, r6, r7
	str r6, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	adds r1, r6, #0
	mov r2, r8
	bl CpuFastSet
	ldr r0, _0814F66C @ =gUnk_02029AEC
	ldr r2, [r0]
	ldrh r3, [r2, #0x1a]
	movs r1, #1
	adds r0, r3, #0
	eors r0, r1
	strh r0, [r2, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r3, #0
	beq _0814F63A
	adds r0, #0x6c
_0814F63A:
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x1c]
_0814F644:
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bne _0814F670
	ldr r1, _0814F664 @ =gUnk_02029AE8
	ldr r0, [r1]
	adds r0, #0x31
	ldrb r6, [r0]
	movs r7, #1
	ands r6, r7
	adds r0, r1, #0
	b _0814F67C
	.align 2, 0
_0814F65C: .4byte gUnk_0200833C
_0814F660: .4byte 0x010000D0
_0814F664: .4byte gUnk_02029AE8
_0814F668: .4byte gUnk_03000E20
_0814F66C: .4byte gUnk_02029AEC
_0814F670:
	ldr r0, _0814F6AC @ =gUnk_02029AE8
	ldr r1, [r0]
	adds r1, #0x31
	ldrb r1, [r1]
	movs r6, #1
	bics r6, r1
_0814F67C:
	mov sb, r6
	ldr r0, [r0]
	adds r0, #0x1c
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0814F6B4
	ldr r0, _0814F6B0 @ =gUnk_02029AEC
	ldr r1, [r0]
	lsls r0, r6, #1
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1]
	ldr r3, [sp, #0x18]
	adds r3, #1
	str r3, [sp, #0x28]
	ldr r6, [sp, #0x1c]
	adds r6, #0xe
	str r6, [sp, #0x38]
	b _0814F8D0
	.align 2, 0
_0814F6AC: .4byte gUnk_02029AE8
_0814F6B0: .4byte gUnk_02029AEC
_0814F6B4:
	ldr r7, [sp, #0x14]
	cmp r7, #1
	bne _0814F6C8
	movs r0, #0xe
	ldr r1, [sp, #0x1c]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0814F6CC
_0814F6C8:
	ldr r2, [sp, #0x1c]
	mov r8, r2
_0814F6CC:
	ldr r1, _0814F82C @ =gUnk_02029AEC
	mov r3, sb
	lsls r6, r3, #1
	movs r0, #0x68
	muls r0, r6, r0
	adds r0, #0xd8
	ldr r1, [r1]
	adds r1, r1, r0
	str r1, [sp, #0x24]
	ldr r5, _0814F830 @ =gUnk_08623678
	adds r0, r1, #0
	adds r0, #0x4f
	ldrb r4, [r0]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	bl sub_0813FA44
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	mov r7, r8
	lsls r4, r7, #1
	ldr r1, [sp, #0x20]
	adds r0, r4, r1
	movs r3, #0xa3
	lsls r3, r3, #1
	adds r7, r0, r3
	mov r5, sl
	ldr r0, _0814F834 @ =gUnk_03000D60
	lsls r1, r5, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	mov ip, sl
	movs r2, #0
	str r6, [sp, #0x2c]
	mov r3, sb
	lsls r6, r3, #7
	lsls r3, r3, #2
	str r3, [sp, #0x30]
	mov r0, sb
	lsls r0, r0, #3
	str r0, [sp, #0x34]
	movs r1, #3
	add r8, r1
	ldr r3, [sp, #0x18]
	adds r3, #1
	str r3, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	adds r0, #0xe
	str r0, [sp, #0x38]
	ldr r3, _0814F838 @ =0x00004001
_0814F754:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	strh r0, [r7]
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, r5, r3
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r5, #2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, #2
	cmp r2, #8
	blo _0814F754
	mov r2, ip
	subs r0, r5, r2
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [sp, #0x24]
	movs r1, #0
	movs r2, #8
	bl sub_08143B70
	adds r2, r0, #0
	ldr r3, [sp, #0x20]
	adds r0, r4, r3
	movs r7, #0x91
	lsls r7, r7, #2
	adds r5, r0, r7
	mov r4, sl
	ldr r0, _0814F834 @ =gUnk_03000D60
	lsls r1, r4, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	movs r1, #0xff
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	mov r3, sl
	movs r2, #0
	ldr r7, _0814F838 @ =0x00004001
_0814F7BA:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	strh r0, [r5]
	adds r1, r5, #0
	adds r1, #0x40
	adds r0, r4, r7
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r2, #8
	blo _0814F7BA
	subs r0, r4, r3
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [sp, #0x24]
	bl sub_0814F2E0
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, _0814F83C @ =gUnk_086DC2D0
	ldr r2, _0814F840 @ =0x06010000
	adds r1, r6, r2
	lsls r3, r4, #0x11
	lsrs r3, r3, #0x10
	movs r0, #2
	str r0, [sp]
	movs r6, #1
	str r6, [sp, #4]
	adds r0, r5, #0
	ldr r7, [sp, #0x20]
	movs r6, #0xd0
	lsls r6, r6, #3
	adds r2, r7, r6
	bl sub_0801A59C
	lsls r4, r4, #2
	adds r0, r4, #0
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _0814F844
	asrs r0, r4, #1
	adds r0, r0, r5
	subs r0, #0x14
	ldrb r0, [r0]
	movs r4, #0xf
	ands r4, r0
	b _0814F84E
	.align 2, 0
_0814F82C: .4byte gUnk_02029AEC
_0814F830: .4byte gUnk_08623678
_0814F834: .4byte gUnk_03000D60
_0814F838: .4byte 0x00004001
_0814F83C: .4byte gUnk_086DC2D0
_0814F840: .4byte 0x06010000
_0814F844:
	asrs r0, r4, #1
	adds r0, r0, r5
	subs r0, #0x14
	ldrb r0, [r0]
	lsrs r4, r0, #4
_0814F84E:
	ldr r7, [sp, #0x30]
	ldr r1, _0814F940 @ =gUnk_086A22E8
	ldr r0, [sp, #0x34]
	adds r1, r0, r1
	mov r3, r8
	lsls r2, r3, #0x1b
	lsrs r2, r2, #0x18
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	mov r0, sb
	movs r3, #0x68
	bl sub_0812B094
	ldr r5, _0814F944 @ =gUnk_02029AEC
	ldr r0, [r5]
	movs r6, #0x9e
	lsls r6, r6, #2
	adds r0, r0, r6
	ldr r1, [sp, #0x2c]
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0814F8BC
	ldr r0, [sp, #0x24]
	bl sub_081432A8
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [sp, #0x24]
	movs r1, #0
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [sp, #0x24]
	adds r0, #0x5d
	ldrb r2, [r0]
	lsrs r2, r2, #7
	adds r0, r4, #0
	bl sub_08011C50
	ldr r2, [r5]
	adds r1, r2, #0
	adds r1, #0x68
	adds r1, r1, r7
	str r0, [r1]
	adds r0, r2, r6
	ldr r2, [sp, #0x2c]
	adds r0, r0, r2
	movs r3, #1
	strh r3, [r0]
_0814F8BC:
	ldr r0, [r5]
	adds r0, #0x68
	ldr r6, [sp, #0x30]
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r1, _0814F948 @ =0x000003AE
	movs r2, #0
	movs r3, #0
	bl sub_0801309C
_0814F8D0:
	ldr r7, [sp, #0x28]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x38]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	cmp r2, #1
	bhi _0814F8E8
	b _0814F644
_0814F8E8:
	ldr r0, _0814F94C @ =gUnk_03000D60
	ldr r0, [r0, #0x14]
	movs r3, #0x81
	lsls r3, r3, #2
	adds r6, r0, r3
	movs r4, #0xd
	ldr r5, _0814F950 @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r2, [r3]
	adds r1, r2, #1
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x20]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08000CD4
	ldr r1, [r5]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814F940: .4byte gUnk_086A22E8
_0814F944: .4byte gUnk_02029AEC
_0814F948: .4byte 0x000003AE
_0814F94C: .4byte gUnk_03000D60
_0814F950: .4byte gUnk_02029AE8

	thumb_func_start sub_0814F954
sub_0814F954: @ 0x0814F954
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0814F9D0 @ =gUnk_03001090
	ldr r2, [r0, #0x14]
	ldr r6, _0814F9D4 @ =gUnk_02029AE8
	ldr r0, [r6]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r6]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r4, #3
	ands r0, r4
	movs r3, #0
	strh r0, [r1]
	ldr r0, _0814F9D8 @ =gUnk_02005640
	ldr r2, _0814F9DC @ =gUnk_08761224
	str r4, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r3, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r1, _0814F9E0 @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r3, r5, #0
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814F9D0: .4byte gUnk_03001090
_0814F9D4: .4byte gUnk_02029AE8
_0814F9D8: .4byte gUnk_02005640
_0814F9DC: .4byte gUnk_08761224
_0814F9E0: .4byte 0x00010088

	thumb_func_start sub_0814F9E4
sub_0814F9E4: @ 0x0814F9E4
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r1, r3, #0x10
	adds r2, r6, #0
	movs r3, #0
	cmp r3, r4
	bhs _0814FA32
_0814F9FC:
	ldrb r0, [r2]
	cmp r0, r5
	bne _0814FA26
	cmp r1, #0
	bne _0814FA1A
	ldrb r0, [r2, #1]
	adds r0, #1
	strb r0, [r2, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	bls _0814FA60
	movs r0, #0x63
	strb r0, [r2, #1]
	b _0814FA60
_0814FA1A:
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _0814FA26
	subs r0, #1
	strb r0, [r2, #1]
	b _0814FA60
_0814FA26:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	cmp r3, r4
	blo _0814F9FC
_0814FA32:
	adds r2, r6, #0
	movs r3, #0
	cmp r3, r4
	bhs _0814FA60
	ldr r6, _0814FA50 @ =0x0000FFFF
	movs r7, #1
_0814FA3E:
	ldrh r0, [r2]
	adds r1, r6, #0
	ands r1, r0
	cmp r1, #0
	bne _0814FA54
	strb r5, [r2]
	strb r7, [r2, #1]
	strb r1, [r2, #2]
	b _0814FA60
	.align 2, 0
_0814FA50: .4byte 0x0000FFFF
_0814FA54:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	cmp r3, r4
	blo _0814FA3E
_0814FA60:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814FA68
sub_0814FA68: @ 0x0814FA68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	mov sb, r1
	ldrb r0, [r1]
	cmp r0, #0x21
	bls _0814FA80
	bl _0815181C
_0814FA80:
	lsls r0, r0, #2
	ldr r1, _0814FA8C @ =_0814FA90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0814FA8C: .4byte _0814FA90
_0814FA90: @ jump table
	.4byte _0814FB18 @ case 0
	.4byte _0814FC88 @ case 1
	.4byte _0814FCC4 @ case 2
	.4byte _0814FDAC @ case 3
	.4byte _08150018 @ case 4
	.4byte _081501E8 @ case 5
	.4byte _0815181C @ case 6
	.4byte _08150314 @ case 7
	.4byte _08150434 @ case 8
	.4byte _081504B8 @ case 9
	.4byte _0815064C @ case 10
	.4byte _081507C4 @ case 11
	.4byte _081509D0 @ case 12
	.4byte _08150988 @ case 13
	.4byte _08150A18 @ case 14
	.4byte _08150A60 @ case 15
	.4byte _08150AE8 @ case 16
	.4byte _08150CF4 @ case 17
	.4byte _08150DE4 @ case 18
	.4byte _08150E58 @ case 19
	.4byte _08150F4C @ case 20
	.4byte _08150F98 @ case 21
	.4byte _08151028 @ case 22
	.4byte _0815109C @ case 23
	.4byte _0815112C @ case 24
	.4byte _081511E8 @ case 25
	.4byte _081513D0 @ case 26
	.4byte _08151574 @ case 27
	.4byte _08151734 @ case 28
	.4byte _08151742 @ case 29
	.4byte _08151788 @ case 30
	.4byte _08151796 @ case 31
	.4byte _081517BC @ case 32
	.4byte _081517CA @ case 33
_0814FB18:
	ldr r2, _0814FC54 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0814FC58 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldr r4, _0814FC5C @ =0x04000208
	movs r0, #0
	strh r0, [r4]
	bl MultiSioInit
	bl MultiSioStart
	movs r0, #1
	strh r0, [r4]
	ldr r0, _0814FC60 @ =gUnk_02029AEC
	ldr r0, [r0]
	movs r1, #0x9f
	lsls r1, r1, #2
	bl memzero
	movs r0, #0
	bl sub_0812B174
	ldr r4, _0814FC64 @ =gUnk_03000F64
	adds r1, r4, #0
	adds r1, #0x10
	adds r2, r4, #0
	adds r2, #0x1c
	adds r0, r4, #0
	movs r3, #1
	bl sub_08002CD4
	ldr r2, _0814FC68 @ =sub_0812AB40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08002D38
	ldr r0, _0814FC6C @ =gUnk_02029AE8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r3, r0, #0
	adds r3, #0x80
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r7, r0, r1
	ldr r4, _0814FC70 @ =gUnk_02002400
	adds r4, r4, r1
	movs r6, #0
	movs r5, #0x1f
_0814FB7A:
	ldrh r1, [r3]
	movs r2, #0x1f
	ands r2, r1
	asrs r2, r2, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r5
	asrs r0, r0, #1
	lsls r0, r0, #5
	orrs r2, r0
	lsrs r1, r1, #0x1a
	ands r1, r5
	asrs r1, r1, #1
	lsls r1, r1, #0xa
	orrs r2, r1
	strh r2, [r4]
	adds r4, #2
	strh r2, [r7]
	adds r7, #2
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r3, #2
	cmp r6, #0x1f
	bls _0814FB7A
	ldr r0, _0814FC74 @ =gUnk_03000D60
	ldr r2, [r0, #0x14]
	ldr r0, _0814FC6C @ =gUnk_02029AE8
	mov r8, r0
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	mov r1, r8
	ldr r0, [r1]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	movs r5, #3
	ands r3, r5
	movs r7, #0
	strh r3, [r4]
	ldr r1, _0814FC78 @ =gUnk_03000E20
	ldr r2, [r1, #0x14]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0x40
	ldrh r0, [r1]
	ands r0, r5
	strh r0, [r1]
	ldr r0, _0814FC7C @ =gUnk_02005640
	ldr r2, _0814FC80 @ =gUnk_08761224
	str r5, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	movs r4, #1
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	str r7, [sp, #0x18]
	str r7, [sp, #0x1c]
	ldr r1, _0814FC84 @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0x12
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	mov r3, r8
	ldr r0, [r3]
	strh r7, [r0, #0x10]
	mov r5, sb
	strb r4, [r5]
	bl _0815181C
	.align 2, 0
_0814FC54: .4byte 0x04000200
_0814FC58: .4byte 0x0000FF7F
_0814FC5C: .4byte 0x04000208
_0814FC60: .4byte gUnk_02029AEC
_0814FC64: .4byte gUnk_03000F64
_0814FC68: .4byte sub_0812AB40
_0814FC6C: .4byte gUnk_02029AE8
_0814FC70: .4byte gUnk_02002400
_0814FC74: .4byte gUnk_03000D60
_0814FC78: .4byte gUnk_03000E20
_0814FC7C: .4byte gUnk_02005640
_0814FC80: .4byte gUnk_08761224
_0814FC84: .4byte 0x00010088
_0814FC88:
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814FCA8
	movs r0, #0x1e
	bl _08151212
_0814FCA8:
	ldr r0, _0814FCC0 @ =gMultiSioArea
	ldrb r0, [r0, #2]
	cmp r0, #3
	beq _0814FCB4
	bl _0815181C
_0814FCB4:
	bl sub_080050C4
	movs r0, #2
	bl _081516BE
	.align 2, 0
_0814FCC0: .4byte gMultiSioArea
_0814FCC4:
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #2
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0814D548
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0814FCE6
	movs r0, #0xc
	bl _08151722
_0814FCE6:
	ldr r0, _0814FD54 @ =gUnk_0824DB68
	ldr r1, _0814FD58 @ =gUnk_0824DB80
	bl sub_0800511C
	cmp r0, #0
	beq _0814FD70
	ldr r0, _0814FD5C @ =gUnk_02005640
	ldr r2, _0814FD60 @ =gUnk_08761224
	movs r4, #3
	str r4, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r5, [sp, #0x18]
	str r5, [sp, #0x1c]
	ldr r1, _0814FD64 @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0x15
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #1
	bl sub_0814E964
	ldr r0, _0814FD68 @ =gUnk_02029AE8
	ldr r0, [r0]
	movs r1, #0
	strh r5, [r0, #0x10]
	strb r1, [r0, #0x1d]
	strb r1, [r0, #0x1c]
	ldr r0, _0814FD6C @ =gUnk_02029AEC
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x7c
	strh r5, [r1]
	adds r0, #0x74
	strh r5, [r0]
	movs r0, #1
	bl sub_0814ECF8
	mov r3, sb
	strb r4, [r3]
	bl _0815181C
	.align 2, 0
_0814FD54: .4byte gUnk_0824DB68
_0814FD58: .4byte gUnk_0824DB80
_0814FD5C: .4byte gUnk_02005640
_0814FD60: .4byte gUnk_08761224
_0814FD64: .4byte 0x00010088
_0814FD68: .4byte gUnk_02029AE8
_0814FD6C: .4byte gUnk_02029AEC
_0814FD70:
	ldr r0, _0814FDA4 @ =gMultiSioArea
	movs r4, #0x93
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #0
	beq _0814FD86
	cmp r0, #5
	beq _0814FD86
	bl _0815181C
_0814FD86:
	ldr r0, _0814FDA8 @ =gUnk_0824DB58
	bl sub_080063F4
	cmp r0, #0
	bne _0814FD94
	bl _0815181C
_0814FD94:
	bl MultiSioStop
	movs r0, #0x22
	bl sub_0814F954
	movs r0, #0xc
	bl _081511D6
	.align 2, 0
_0814FDA4: .4byte gMultiSioArea
_0814FDA8: .4byte gUnk_0824DB58
_0814FDAC:
	bl sub_0801A40C
	ldr r4, _0814FE3C @ =gUnk_02029AEC
	ldr r1, [r4]
	strh r0, [r1, #4]
	ldrh r1, [r1, #4]
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0814FDCC
	bl _08151210
_0814FDCC:
	ldr r3, _0814FE40 @ =gUnk_03002A00
	ldrh r1, [r3, #2]
	ldr r0, _0814FE44 @ =0x00009001
	cmp r1, r0
	bne _0814FDFC
	movs r2, #0
	ldr r0, _0814FE48 @ =gMultiSioArea
	ldrb r0, [r0]
	cmp r0, #8
	bne _0814FDE2
	movs r2, #1
_0814FDE2:
	adds r7, r2, #0
	ldr r0, _0814FE4C @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r0, #0x1c
	adds r0, r0, r7
	ldrh r1, [r3, #4]
	strb r1, [r0]
	ldr r0, [r4]
	lsls r1, r7, #3
	adds r0, r0, r1
	ldrh r1, [r3, #6]
	adds r0, #0x74
	strh r1, [r0]
_0814FDFC:
	ldr r3, _0814FE3C @ =gUnk_02029AEC
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x74
	ldrh r0, [r0]
	cmp r0, #0xff
	bne _0814FE96
	adds r0, r1, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r0, #0xff
	bne _0814FE96
	ldr r4, _0814FE4C @ =gUnk_02029AE8
	ldr r2, [r4]
	ldrh r0, [r2, #0x10]
	adds r0, #1
	strh r0, [r2, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa
	bhi _0814FE28
	b _0814FFAE
_0814FE28:
	ldrb r0, [r2, #0x1c]
	ldrb r1, [r2, #0x1d]
	cmp r0, r1
	beq _0814FE50
	movs r0, #0x20
	bl sub_0814F954
	movs r0, #0xc
	bl _08151722
	.align 2, 0
_0814FE3C: .4byte gUnk_02029AEC
_0814FE40: .4byte gUnk_03002A00
_0814FE44: .4byte 0x00009001
_0814FE48: .4byte gMultiSioArea
_0814FE4C: .4byte gUnk_02029AE8
_0814FE50:
	ldr r0, _0814FE8C @ =gMultiSioArea
	ldrb r0, [r0]
	movs r1, #8
	eors r0, r1
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	adds r1, r2, #0
	adds r1, #0x31
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0
	strh r1, [r0, #0x10]
	ldr r1, [r3]
	adds r2, r0, #0
	adds r2, #0x31
	adds r0, #0x1c
	ldrb r2, [r2]
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0814FE90
	movs r0, #4
	bl _08151156
	.align 2, 0
_0814FE8C: .4byte gMultiSioArea
_0814FE90:
	movs r0, #0xf
	bl _081513F4
_0814FE96:
	ldr r0, _0814FEB8 @ =gMultiSioArea
	ldrb r1, [r0]
	movs r0, #8
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r7, r0, #0x1f
	ldr r5, _0814FEBC @ =gUnk_02029AEC
	ldr r2, [r5]
	ldrh r6, [r2, #4]
	cmp r6, #0x40
	beq _0814FF50
	cmp r6, #0x40
	bgt _0814FEC0
	cmp r6, #1
	beq _0814FEC6
	b _0814FFAE
	.align 2, 0
_0814FEB8: .4byte gMultiSioArea
_0814FEBC: .4byte gUnk_02029AEC
_0814FEC0:
	cmp r6, #0x80
	beq _0814FF80
	b _0814FFAE
_0814FEC6:
	ldr r0, _0814FEE8 @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r0, #0x1c
	adds r0, r0, r7
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0814FEEC
	movs r0, #0xb1
	bl PlaySE
	b _0814FFAE
	.align 2, 0
_0814FEE8: .4byte gUnk_02029AE8
_0814FEEC:
	lsls r4, r7, #3
	adds r0, r2, r4
	adds r0, #0x74
	ldrh r0, [r0]
	cmp r0, #0xff
	beq _0814FFAE
	movs r0, #0xad
	bl PlaySE
	ldr r0, _0814FF44 @ =gUnk_02005640
	ldr r2, _0814FF48 @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	str r6, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	str r3, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r1, _0814FF4C @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0x12
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #0
	bl sub_0814E964
	ldr r0, [r5]
	adds r0, r0, r4
	adds r0, #0x74
	movs r1, #0xff
	strh r1, [r0]
	b _0814FFAE
	.align 2, 0
_0814FF44: .4byte gUnk_02005640
_0814FF48: .4byte gUnk_08761224
_0814FF4C: .4byte 0x00010088
_0814FF50:
	lsls r0, r7, #3
	adds r0, r2, r0
	adds r0, #0x74
	ldrh r0, [r0]
	cmp r0, #0xff
	beq _0814FFAE
	ldr r0, _0814FF70 @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r0, #0x1c
	adds r1, r0, r7
	ldrb r0, [r1]
	cmp r0, #0
	beq _0814FF74
	subs r0, #1
	b _0814FF76
	.align 2, 0
_0814FF70: .4byte gUnk_02029AE8
_0814FF74:
	movs r0, #2
_0814FF76:
	strb r0, [r1]
	movs r0, #0xb2
	bl PlaySE
	b _0814FFAE
_0814FF80:
	lsls r0, r7, #3
	adds r0, r2, r0
	adds r0, #0x74
	ldrh r0, [r0]
	cmp r0, #0xff
	beq _0814FFAE
	ldr r0, _0814FFA0 @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r0, #0x1c
	adds r1, r0, r7
	ldrb r0, [r1]
	cmp r0, #1
	bhi _0814FFA4
	adds r0, #1
	b _0814FFA6
	.align 2, 0
_0814FFA0: .4byte gUnk_02029AE8
_0814FFA4:
	movs r0, #0
_0814FFA6:
	strb r0, [r1]
	movs r0, #0xb2
	bl PlaySE
_0814FFAE:
	ldr r4, _08150004 @ =gMultiSioArea
	ldrb r1, [r4]
	movs r0, #8
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r7, r0, #0x1f
	ldr r5, _08150008 @ =gUnk_02029AEC
	mov r8, r5
	ldr r0, [r5]
	lsls r5, r7, #3
	adds r0, r0, r5
	adds r0, #0x74
	ldrh r1, [r0]
	movs r0, #0xff
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bl sub_0814ECF8
	movs r6, #0x92
	lsls r6, r6, #1
	adds r4, r4, r6
	movs r0, #0x16
	strb r0, [r4]
	ldr r1, _0815000C @ =gUnk_03002C80
	ldr r0, _08150010 @ =0x00009001
	strh r0, [r1, #2]
	ldr r0, _08150014 @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r0, #0x1c
	adds r0, r0, r7
	ldrb r0, [r0]
	strh r0, [r1, #4]
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r5
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r1, #6]
	bl _0815181C
	.align 2, 0
_08150004: .4byte gMultiSioArea
_08150008: .4byte gUnk_02029AEC
_0815000C: .4byte gUnk_03002C80
_08150010: .4byte 0x00009001
_08150014: .4byte gUnk_02029AE8
_08150018:
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #2
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08150036
	bl _08151154
_08150036:
	ldr r0, _08150078 @ =gUnk_0824DB88
	ldr r1, _0815007C @ =gUnk_0824DB90
	bl sub_0800511C
	cmp r0, #0
	bne _08150046
	bl _0815181C
_08150046:
	ldr r0, _08150080 @ =gUnk_02029AEC
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x60
	movs r1, #0xff
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	ldr r0, _08150084 @ =gUnk_03001070
	ldr r4, [r0, #0x14]
	ldr r0, _08150088 @ =gUnk_03001090
	ldr r1, [r0, #0x14]
	ldr r3, _0815008C @ =gUnk_02007500
	movs r0, #0xc1
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, #0x7e
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08150090
	movs r0, #2
	b _08150092
	.align 2, 0
_08150078: .4byte gUnk_0824DB88
_0815007C: .4byte gUnk_0824DB90
_08150080: .4byte gUnk_02029AEC
_08150084: .4byte gUnk_03001070
_08150088: .4byte gUnk_03001090
_0815008C: .4byte gUnk_02007500
_08150090:
	movs r0, #3
_08150092:
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #0xf0
	lsls r2, r2, #2
	bl sub_08130B2C
	bl sub_08130DA4
	movs r0, #0
	bl sub_0812B174
	ldr r4, _081501B4 @ =gUnk_03000F64
	adds r1, r4, #0
	adds r1, #0x10
	adds r2, r4, #0
	adds r2, #0x1c
	adds r0, r4, #0
	movs r3, #1
	bl sub_08002CD4
	ldr r2, _081501B8 @ =sub_0812AB40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08002D38
	ldr r1, _081501BC @ =gUnk_02029AE8
	ldr r0, [r1]
	ldr r7, [r0, #8]
	movs r6, #0
	ldr r4, _081501C0 @ =gUnk_03000D60
	mov sl, r4
	movs r5, #0x1f
	mov r8, r5
_081500D8:
	lsls r0, r6, #5
	adds r3, r7, r0
	ldr r4, _081501C4 @ =gUnk_02002600
	adds r0, r6, #0
	adds r0, #0xc
	lsls r0, r0, #5
	adds r4, r0, r4
	movs r5, #0
	adds r6, #1
	mov ip, r6
_081500EC:
	ldrh r1, [r3]
	movs r2, #0x1f
	ands r2, r1
	asrs r2, r2, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	mov r6, r8
	ands r0, r6
	asrs r0, r0, #1
	lsls r0, r0, #5
	orrs r2, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	asrs r1, r1, #1
	lsls r1, r1, #0xa
	orrs r2, r1
	strh r2, [r4]
	adds r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #2
	cmp r5, #0xf
	bls _081500EC
	mov r1, ip
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _081500D8
	mov r3, sl
	ldr r2, [r3, #0x14]
	ldr r4, _081501BC @ =gUnk_02029AE8
	ldr r0, [r4]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r5, _081501BC @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	movs r5, #3
	ands r3, r5
	strh r3, [r4]
	ldr r1, _081501C8 @ =gUnk_03000E20
	ldr r2, [r1, #0x14]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r6, _081501BC @ =gUnk_02029AE8
	ldr r1, [r6]
	adds r1, #0x40
	ldrh r0, [r1]
	ands r0, r5
	strh r0, [r1]
	ldr r0, _081501CC @ =0x06008000
	ldr r1, _081501D0 @ =0x06007800
	movs r2, #0x9c
	lsls r2, r2, #1
	bl CpuFastSet
	ldr r0, _081501D4 @ =gUnk_08703368
	ldr r1, _081501D8 @ =0x06009F40
	ldr r2, _081501DC @ =gUnk_0200833C
	str r5, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r3, #0x13
	bl sub_0801A59C
	ldr r1, _081501E0 @ =gUnk_03000DD0
	ldrh r0, [r1, #4]
	ldr r0, _081501E4 @ =0x00003E0A
	strh r0, [r1, #4]
	movs r0, #5
	bl _081516BE
	.align 2, 0
_081501B4: .4byte gUnk_03000F64
_081501B8: .4byte sub_0812AB40
_081501BC: .4byte gUnk_02029AE8
_081501C0: .4byte gUnk_03000D60
_081501C4: .4byte gUnk_02002600
_081501C8: .4byte gUnk_03000E20
_081501CC: .4byte 0x06008000
_081501D0: .4byte 0x06007800
_081501D4: .4byte gUnk_08703368
_081501D8: .4byte 0x06009F40
_081501DC: .4byte gUnk_0200833C
_081501E0: .4byte gUnk_03000DD0
_081501E4: .4byte 0x00003E0A
_081501E8:
	bl sub_08132444
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _081501F8
	bl _0815181C
_081501F8:
	ldr r0, _08150218 @ =gUnk_03000DD0
	ldrh r1, [r0, #4]
	movs r7, #0
	ldr r1, _0815021C @ =0x00003E02
	strh r1, [r0, #4]
	bl sub_0814F490
	cmp r6, #2
	bhi _08150220
	movs r0, #0x20
	bl sub_0814F954
	movs r0, #0xc
	bl _08151722
	.align 2, 0
_08150218: .4byte gUnk_03000DD0
_0815021C: .4byte 0x00003E02
_08150220:
	ldr r3, _081502F0 @ =gUnk_02029AEC
	mov sl, r3
	ldr r3, [r3]
	ldr r4, _081502F4 @ =gUnk_02029AE8
	ldr r2, [r4]
	adds r2, #0x31
	ldrb r0, [r2]
	lsls r1, r0, #3
	adds r1, r3, r1
	movs r5, #1
	mov r8, r5
	mov r5, r8
	eors r0, r5
	lsls r0, r0, #3
	adds r0, r3, r0
	adds r0, #0x74
	strh r7, [r0]
	adds r1, #0x74
	strh r7, [r1]
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x5e
	adds r1, r1, r0
	subs r0, r6, #3
	strh r0, [r1]
	adds r3, #0x5c
	ldrb r5, [r3]
	cmp r5, #1
	bne _0815026E
	ldr r0, _081502F8 @ =gUnk_086BC3D8
	ldr r1, _081502FC @ =0x06008C40
	ldr r2, _08150300 @ =gUnk_0200833C
	movs r3, #0x13
	str r3, [sp]
	str r5, [sp, #4]
	movs r3, #0
	bl sub_0801A59C
_0815026E:
	mov r6, sl
	ldr r3, [r6]
	ldr r4, [r4]
	adds r4, #0x31
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r2, r3, #0
	adds r2, #0x54
	adds r0, r2, r0
	movs r1, #0x10
	strh r1, [r0]
	ldrb r0, [r4]
	mov r1, r8
	eors r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0x88
	strh r0, [r2]
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r3, #0x58
	adds r1, r3, r1
	mov r2, r8
	eors r0, r2
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0x68
	strh r0, [r3]
	strh r0, [r1]
	ldr r0, _08150304 @ =gUnk_02005640
	ldr r2, _08150308 @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r7, [sp, #0x18]
	str r7, [sp, #0x1c]
	ldr r1, _0815030C @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0x12
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #0
	bl sub_0814ED98
	ldr r0, _08150310 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	movs r0, #7
	bl _08151156
	.align 2, 0
_081502F0: .4byte gUnk_02029AEC
_081502F4: .4byte gUnk_02029AE8
_081502F8: .4byte gUnk_086BC3D8
_081502FC: .4byte 0x06008C40
_08150300: .4byte gUnk_0200833C
_08150304: .4byte gUnk_02005640
_08150308: .4byte gUnk_08761224
_0815030C: .4byte 0x00010088
_08150310: .4byte gUnk_03000F64
_08150314:
	ldr r0, _081503D8 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0814D548
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0815033C
	bl _081513F2
_0815033C:
	movs r2, #0
	ldr r0, _081503DC @ =gMultiSioArea
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #8
	bne _0815034A
	movs r2, #1
_0815034A:
	adds r7, r2, #0
	ldr r2, _081503E0 @ =gUnk_03002A00
	ldrh r1, [r2, #2]
	ldr r0, _081503E4 @ =0x00009002
	ldr r5, _081503E8 @ =gUnk_02029AEC
	mov r8, r5
	cmp r1, r0
	bne _08150366
	ldr r0, [r5]
	lsls r1, r7, #1
	adds r0, #0x5e
	adds r0, r0, r1
	ldrh r1, [r2, #4]
	strh r1, [r0]
_08150366:
	mov r0, r8
	ldr r2, [r0]
	lsls r0, r7, #1
	adds r1, r2, #0
	adds r1, #0x5e
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0xfe
	bhi _081503FC
	ldr r3, _081503EC @ =gUnk_02029AE8
	ldr r1, [r3]
	ldrh r0, [r1, #0x10]
	adds r0, #1
	strh r0, [r1, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa
	bls _081503FC
	strh r6, [r1, #0x10]
	adds r0, r2, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	movs r3, #0x27
	cmp r0, #0
	bne _0815039A
	movs r3, #0x19
_0815039A:
	ldr r0, _081503F0 @ =gUnk_02005640
	ldr r2, _081503F4 @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r1, _081503F8 @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #0
	bl sub_0814ED98
	movs r0, #8
	bl _081513F4
	.align 2, 0
_081503D8: .4byte gUnk_03000F64
_081503DC: .4byte gMultiSioArea
_081503E0: .4byte gUnk_03002A00
_081503E4: .4byte 0x00009002
_081503E8: .4byte gUnk_02029AEC
_081503EC: .4byte gUnk_02029AE8
_081503F0: .4byte gUnk_02005640
_081503F4: .4byte gUnk_08761224
_081503F8: .4byte 0x00010088
_081503FC:
	movs r5, #0x92
	lsls r5, r5, #1
	adds r1, r4, r5
	movs r0, #0x16
	strb r0, [r1]
	ldr r2, _08150428 @ =gUnk_03002C80
	ldr r0, _0815042C @ =0x00009002
	strh r0, [r2, #2]
	mov r6, r8
	ldr r1, [r6]
	ldr r3, _08150430 @ =gUnk_02029AE8
	ldr r0, [r3]
	adds r0, #0x31
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r1, #0x5e
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #4]
	bl _0815181C
	.align 2, 0
_08150428: .4byte gUnk_03002C80
_0815042C: .4byte 0x00009002
_08150430: .4byte gUnk_02029AE8
_08150434:
	ldr r0, _081504A4 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0814D548
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0815045C
	bl _081513F2
_0815045C:
	bl sub_0801670C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0815046A
	bl _0815181C
_0815046A:
	ldr r0, _081504A8 @ =gMultiSioArea
	ldrb r1, [r0]
	movs r0, #8
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r7, r0, #0x1f
	ldr r5, _081504AC @ =gUnk_02029AEC
	ldr r0, [r5]
	lsls r4, r7, #3
	adds r0, r0, r4
	adds r0, #0x74
	ldr r1, _081504B0 @ =0x00001212
	strh r1, [r0]
	bl sub_080197C0
	ldr r1, [r5]
	adds r1, r1, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #0x76
	strh r0, [r1]
	ldr r0, _081504B4 @ =gUnk_02029AE8
	ldr r0, [r0]
	strh r6, [r0, #0x10]
	movs r0, #9
	bl _081511D6
	.align 2, 0
_081504A4: .4byte gUnk_03000F64
_081504A8: .4byte gMultiSioArea
_081504AC: .4byte gUnk_02029AEC
_081504B0: .4byte 0x00001212
_081504B4: .4byte gUnk_02029AE8
_081504B8:
	ldr r0, _08150560 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _081504DE
	bl _08151210
_081504DE:
	movs r2, #0
	ldr r0, _08150564 @ =gMultiSioArea
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #8
	bne _081504EC
	movs r2, #1
_081504EC:
	adds r7, r2, #0
	ldr r0, _08150568 @ =gUnk_03002A00
	ldrh r2, [r0, #2]
	ldr r1, _0815056C @ =0x00009003
	ldr r3, _08150570 @ =gUnk_02029AEC
	mov r8, r3
	adds r3, r0, #0
	cmp r2, r1
	bne _08150514
	mov r5, r8
	ldr r1, [r5]
	lsls r0, r7, #3
	adds r1, r1, r0
	ldrh r2, [r3, #4]
	adds r0, r1, #0
	adds r0, #0x74
	strh r2, [r0]
	ldrh r0, [r3, #6]
	adds r1, #0x76
	strh r0, [r1]
_08150514:
	mov r6, r8
	ldr r2, [r6]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r1, [r0]
	ldr r0, _08150574 @ =0x00001212
	cmp r1, r0
	bne _081505E4
	adds r0, r2, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r0, r1
	bne _081505E4
	ldr r0, _08150578 @ =gUnk_02029AE8
	ldr r1, [r0]
	ldrh r0, [r1, #0x10]
	adds r0, #1
	strh r0, [r1, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa
	bls _081505E4
	adds r0, r2, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	bne _08150554
	adds r0, r2, #0
	adds r0, #0x7e
	ldrh r4, [r0]
	cmp r4, #0
	beq _0815057C
_08150554:
	movs r0, #0x20
	bl sub_0814F954
	movs r0, #0xc
	bl _081516BE
	.align 2, 0
_08150560: .4byte gUnk_03000F64
_08150564: .4byte gMultiSioArea
_08150568: .4byte gUnk_03002A00
_0815056C: .4byte 0x00009003
_08150570: .4byte gUnk_02029AEC
_08150574: .4byte 0x00001212
_08150578: .4byte gUnk_02029AE8
_0815057C:
	movs r0, #0
	bl sub_080030AC
	ldr r0, _081505D8 @ =gUnk_02005640
	movs r1, #0x8a
	lsls r1, r1, #2
	ldr r2, _081505DC @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r3, #0xff
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	movs r3, #8
	str r3, [sp, #0x20]
	movs r3, #0x49
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #4
	bl sub_0814531C
	ldr r2, _081505E0 @ =gUnk_02029AE8
	ldr r0, [r2]
	strh r4, [r0, #0x10]
	mov r3, r8
	ldr r1, [r3]
	adds r2, r1, #0
	adds r2, #0x50
	movs r0, #0x38
	strh r0, [r2]
	rsbs r0, r0, #0
	adds r1, #0x4c
	strh r0, [r1]
	movs r0, #0xa
	bl _081513F4
	.align 2, 0
_081505D8: .4byte gUnk_02005640
_081505DC: .4byte gUnk_0874A6CC
_081505E0: .4byte gUnk_02029AE8
_081505E4:
	movs r5, #0x92
	lsls r5, r5, #1
	adds r1, r4, r5
	movs r0, #0x16
	strb r0, [r1]
	ldrh r1, [r3, #2]
	ldr r0, _08150640 @ =0x00009003
	ldr r3, _08150644 @ =gUnk_03002C80
	cmp r1, r0
	bne _08150614
	ldrh r0, [r3, #6]
	cmp r0, #0
	beq _08150614
	mov r6, r8
	ldr r1, [r6]
	ldr r2, _08150648 @ =gUnk_02029AE8
	ldr r0, [r2]
	adds r0, #0x31
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, #0x76
	movs r0, #1
	strh r0, [r1]
_08150614:
	ldr r0, _08150640 @ =0x00009003
	strh r0, [r3, #2]
	mov r4, r8
	ldr r2, [r4]
	ldr r5, _08150648 @ =gUnk_02029AE8
	ldr r1, [r5]
	adds r1, #0x31
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r2, r0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r3, #4]
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r2, #0x76
	ldrh r0, [r2]
	strh r0, [r3, #6]
	bl _0815181C
	.align 2, 0
_08150640: .4byte 0x00009003
_08150644: .4byte gUnk_03002C80
_08150648: .4byte gUnk_02029AE8
_0815064C:
	movs r0, #1
	movs r1, #0
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0815066E
	movs r0, #1
	bl sub_080030AC
	movs r0, #0x1f
	bl sub_081452CC
	bl _08151210
_0815066E:
	ldr r0, _08150740 @ =gUnk_02029AEC
	mov sl, r0
	ldr r1, [r0]
	adds r3, r1, #0
	adds r3, #0x4c
	ldrh r2, [r3]
	adds r0, r2, #2
	strh r0, [r3]
	ldr r4, _08150744 @ =gUnk_02029AE8
	mov r8, r4
	ldr r4, [r4]
	adds r5, r4, #0
	adds r5, #0x31
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r1, #0x54
	adds r0, r1, r0
	adds r2, #0x52
	strh r2, [r0]
	ldrb r0, [r5]
	movs r7, #1
	eors r0, r7
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r2, [r3]
	movs r0, #0x50
	subs r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r4, #0x10]
	lsrs r0, r0, #8
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0xa
	lsrs r6, r1, #0x10
	mov r5, r8
	ldr r1, [r5]
	ldr r2, _08150748 @ =0x00000249
	adds r0, r2, #0
	ldrh r3, [r1, #0x10]
	adds r0, r0, r3
	strh r0, [r1, #0x10]
	mov r4, sl
	ldr r2, [r4]
	adds r3, r1, #0
	adds r3, #0x31
	ldrb r1, [r3]
	lsls r1, r1, #1
	adds r4, r2, #0
	adds r4, #0x58
	adds r1, r4, r1
	movs r0, #0x68
	subs r0, r0, r6
	strh r0, [r1]
	ldrb r0, [r3]
	eors r0, r7
	lsls r0, r0, #1
	adds r0, r4, r0
	adds r1, r6, #0
	adds r1, #0x68
	strh r1, [r0]
	ldrb r0, [r3]
	lsls r6, r0, #1
	adds r5, r2, #0
	adds r5, #0x54
	adds r1, r5, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08150702
	adds r0, #7
_08150702:
	asrs r0, r0, #3
	cmp r0, #0x10
	bgt _0815074C
	ldrb r1, [r1]
	adds r0, r4, r6
	ldrb r2, [r0]
	movs r0, #0
	bl sub_0812B0F0
	mov r4, sl
	ldr r3, [r4]
	mov r5, r8
	ldr r0, [r5]
	adds r0, #0x31
	ldrb r0, [r0]
	adds r2, r7, #0
	eors r2, r0
	lsls r2, r2, #1
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r3, #0x58
	adds r3, r3, r2
	ldrb r2, [r3]
	movs r0, #1
	bl sub_0812B0F0
	bl _081514F8
	.align 2, 0
_08150740: .4byte gUnk_02029AEC
_08150744: .4byte gUnk_02029AE8
_08150748: .4byte 0x00000249
_0815074C:
	movs r0, #0x88
	strh r0, [r1]
	ldrb r0, [r3]
	eors r0, r7
	lsls r0, r0, #1
	adds r0, r5, r0
	movs r1, #0x10
	strh r1, [r0]
	ldrb r0, [r3]
	lsls r2, r0, #1
	adds r2, r4, r2
	eors r0, r7
	lsls r0, r0, #1
	adds r0, r4, r0
	movs r1, #0x68
	strh r1, [r0]
	strh r1, [r2]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrb r1, [r1]
	adds r0, r4, r0
	ldrb r2, [r0]
	movs r0, #0
	bl sub_0812B0F0
	mov r6, sl
	ldr r3, [r6]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x31
	ldrb r0, [r0]
	adds r2, r7, #0
	eors r2, r0
	lsls r2, r2, #1
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r3, #0x58
	adds r3, r3, r2
	ldrb r2, [r3]
	movs r0, #1
	bl sub_0812B0F0
	ldr r0, _081507C0 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	movs r0, #1
	bl sub_0814ED98
	bl MultiSioStop
	movs r0, #0xb
	bl _08151722
	.align 2, 0
_081507C0: .4byte gUnk_03000F64
_081507C4:
	ldr r0, _081507E0 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	ldr r6, _081507E4 @ =gUnk_02029AEC
	ldr r2, [r6]
	adds r0, r2, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	beq _081507E8
	cmp r0, #1
	beq _08150878
	b _081508B6
	.align 2, 0
_081507E0: .4byte gUnk_03000F64
_081507E4: .4byte gUnk_02029AEC
_081507E8:
	ldr r0, _08150814 @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r0, #0x31
	ldrb r7, [r0]
	lsls r1, r7, #1
	adds r0, r2, #0
	adds r0, #0x5e
	adds r2, r0, r1
	ldrh r0, [r2]
	subs r0, #0xa5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x22
	bls _0815081C
	ldr r1, _08150818 @ =gEquipments
	ldrh r2, [r2]
	movs r0, #0xa4
	movs r3, #1
	bl sub_0814F9E4
	b _08150828
	.align 2, 0
_08150814: .4byte gUnk_02029AE8
_08150818: .4byte gEquipments
_0815081C:
	ldr r1, _08150854 @ =gExpendables
	ldrh r2, [r2]
	movs r0, #0x1b
	movs r3, #1
	bl sub_0814F9E4
_08150828:
	ldr r0, _08150858 @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r0, #0x31
	ldrb r1, [r0]
	movs r0, #1
	adds r7, r0, #0
	eors r7, r1
	ldr r0, _0815085C @ =gUnk_02029AEC
	ldr r0, [r0]
	lsls r1, r7, #1
	adds r0, #0x5e
	adds r2, r0, r1
	ldrh r0, [r2]
	subs r0, #0xa5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x22
	bls _08150864
	ldr r1, _08150860 @ =gEquipments
	ldrh r2, [r2]
	movs r0, #0xa4
	b _0815086A
	.align 2, 0
_08150854: .4byte gExpendables
_08150858: .4byte gUnk_02029AE8
_0815085C: .4byte gUnk_02029AEC
_08150860: .4byte gEquipments
_08150864:
	ldr r1, _08150874 @ =gExpendables
	ldrh r2, [r2]
	movs r0, #0x1b
_0815086A:
	movs r3, #0
	bl sub_0814F9E4
	b _081508B6
	.align 2, 0
_08150874: .4byte gExpendables
_08150878:
	ldr r4, _08150918 @ =gUnk_02029AE8
	ldr r0, [r4]
	adds r0, #0x31
	ldrb r7, [r0]
	ldr r5, _0815091C @ =gSpellbooks
	lsls r1, r7, #1
	adds r0, r2, #0
	adds r0, #0x5e
	adds r0, r0, r1
	ldrh r2, [r0]
	movs r0, #0x36
	adds r1, r5, #0
	movs r3, #1
	bl sub_0814F9E4
	ldr r0, [r4]
	adds r0, #0x31
	ldrb r1, [r0]
	movs r0, #1
	adds r7, r0, #0
	eors r7, r1
	ldr r0, [r6]
	lsls r1, r7, #1
	adds r0, #0x5e
	adds r0, r0, r1
	ldrh r2, [r0]
	movs r0, #0x36
	adds r1, r5, #0
	movs r3, #0
	bl sub_0814F9E4
_081508B6:
	ldr r0, _08150920 @ =gUnk_03001060
	ldrb r1, [r0]
	movs r0, #0
	bl sub_08003038
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #1
	bl sub_080030AC
	movs r0, #0x1f
	bl sub_081452CC
	cmp r6, #0
	bne _08150930
	ldr r0, _08150924 @ =gUnk_02029AEC
	ldr r0, [r0]
	ldrh r0, [r0, #0x1a]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, #0
	beq _081508E4
	adds r1, #0x6c
_081508E4:
	ldr r0, _08150928 @ =gUnk_02005640
	ldr r2, _0815092C @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r3, #0xff
	str r3, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	movs r3, #8
	str r3, [sp, #0x20]
	movs r3, #0x20
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #0xd
	bl _08151156
	.align 2, 0
_08150918: .4byte gUnk_02029AE8
_0815091C: .4byte gSpellbooks
_08150920: .4byte gUnk_03001060
_08150924: .4byte gUnk_02029AEC
_08150928: .4byte gUnk_02005640
_0815092C: .4byte gUnk_0874A6CC
_08150930:
	ldr r0, _08150978 @ =gUnk_02029AEC
	ldr r0, [r0]
	adds r0, #0x5c
	ldrb r0, [r0]
	movs r3, #0x29
	cmp r0, #0
	bne _08150940
	movs r3, #0x1b
_08150940:
	ldr r0, _0815097C @ =gUnk_02005640
	ldr r2, _08150980 @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r1, _08150984 @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #0xe
	bl _081513F4
	.align 2, 0
_08150978: .4byte gUnk_02029AEC
_0815097C: .4byte gUnk_02005640
_08150980: .4byte gUnk_08761224
_08150984: .4byte 0x00010088
_08150988:
	ldr r0, _081509A8 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	ldr r1, _081509AC @ =gUnk_02029AEC
	ldr r1, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #1
	beq _081509B0
	cmp r0, #2
	beq _081509C0
	bl _081517DE
	.align 2, 0
_081509A8: .4byte gUnk_03000F64
_081509AC: .4byte gUnk_02029AEC
_081509B0:
	movs r0, #0xad
	bl PlaySE
	movs r0, #0x20
	mov r5, sb
	strb r0, [r5]
	bl _081517DE
_081509C0:
	movs r0, #0xb0
	bl PlaySE
	movs r0, #0x20
	mov r6, sb
	strb r0, [r6]
	bl _081517DE
_081509D0:
	ldr r0, _081509F0 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	ldr r1, _081509F4 @ =gUnk_02029AEC
	ldr r1, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #1
	beq _081509F8
	cmp r0, #2
	beq _08150A08
	bl _081517DE
	.align 2, 0
_081509F0: .4byte gUnk_03000F64
_081509F4: .4byte gUnk_02029AEC
_081509F8:
	movs r0, #0xad
	bl PlaySE
	movs r0, #0x1c
	mov r1, sb
	strb r0, [r1]
	bl _081517DE
_08150A08:
	movs r0, #0xb0
	bl PlaySE
	movs r0, #0x1c
	mov r2, sb
	strb r0, [r2]
	bl _081517DE
_08150A18:
	ldr r0, _08150A38 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	ldr r1, _08150A3C @ =gUnk_02029AEC
	ldr r1, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #1
	beq _08150A40
	cmp r0, #2
	beq _08150A50
	bl _081517DE
	.align 2, 0
_08150A38: .4byte gUnk_03000F64
_08150A3C: .4byte gUnk_02029AEC
_08150A40:
	movs r0, #0xad
	bl PlaySE
	movs r0, #0x1c
	mov r3, sb
	strb r0, [r3]
	bl _081517DE
_08150A50:
	movs r0, #0xb0
	bl PlaySE
	movs r0, #0x1c
	mov r4, sb
	strb r0, [r4]
	bl _081517DE
_08150A60:
	ldr r4, _08150AD4 @ =gUnk_03000F64
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000768
	movs r0, #1
	bl sub_0814B1E0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08150A7A
	bl _0815181C
_08150A7A:
	ldr r3, _08150AD8 @ =gUnk_02029AEC
	ldr r0, [r3]
	ldr r5, _08150ADC @ =0x0000027A
	adds r1, r0, r5
	movs r2, #0
	strh r2, [r1]
	movs r6, #0x9e
	lsls r6, r6, #2
	adds r0, r0, r6
	strh r2, [r0]
	ldr r0, _08150AE0 @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #0xff
	strb r0, [r1, #0x1d]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1c]
	ldr r0, [r3]
	adds r1, r0, #0
	adds r1, #0x7c
	strh r2, [r1]
	adds r0, #0x74
	strh r2, [r0]
	movs r0, #0x16
	movs r1, #1
	bl sub_08142F7C
	bl sub_08039EC0
	adds r1, r4, #0
	adds r1, #0x10
	adds r2, r4, #0
	adds r2, #0x1c
	adds r0, r4, #0
	movs r3, #1
	bl sub_08002CD4
	ldr r2, _08150AE4 @ =sub_0803A0D0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08002D38
	movs r0, #0x10
	bl _081516BE
	.align 2, 0
_08150AD4: .4byte gUnk_03000F64
_08150AD8: .4byte gUnk_02029AEC
_08150ADC: .4byte 0x0000027A
_08150AE0: .4byte gUnk_02029AE8
_08150AE4: .4byte sub_0803A0D0
_08150AE8:
	ldr r6, _08150CC0 @ =gUnk_03000F64
	adds r0, r6, #0
	movs r1, #1
	bl sub_08000768
	adds r4, r6, #0
	subs r4, #0xb4
	ldr r0, [r6, #0xc]
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08150B02
	bl _0815181C
_08150B02:
	movs r0, #0x16
	movs r1, #0
	bl sub_08142F7C
	bl sub_08151834
	ldr r2, _08150CC4 @ =gUnk_02004440
	mov sl, r2
	str r2, [r4]
	movs r0, #0xe0
	lsls r0, r0, #4
	add r0, sl
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	add r0, sl
	str r0, [r4, #8]
	bl sub_081522E8
	movs r0, #0
	bl sub_0812B174
	adds r1, r6, #0
	adds r1, #0x10
	adds r2, r6, #0
	adds r2, #0x1c
	adds r0, r6, #0
	movs r3, #1
	bl sub_08002CD4
	ldr r2, _08150CC8 @ =sub_0812AB40
	adds r0, r6, #0
	movs r1, #0
	bl sub_08002D38
	bl sub_0814F490
	ldr r0, _08150CCC @ =gUnk_03001090
	ldr r2, [r0, #0x14]
	ldr r3, _08150CD0 @ =gUnk_02029AE8
	mov r8, r3
	ldr r0, [r3]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	mov r4, r8
	ldr r0, [r4]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	movs r5, #3
	ands r3, r5
	strh r3, [r4]
	ldr r1, _08150CD4 @ =gUnk_03000D60
	ldr r2, [r1, #0x14]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	mov r1, r8
	ldr r0, [r1]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	ands r3, r5
	strh r3, [r4]
	ldr r1, _08150CD8 @ =gUnk_03000E20
	ldr r2, [r1, #0x14]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	mov r3, r8
	ldr r2, [r3]
	adds r1, r2, #0
	adds r1, #0x40
	ldrh r0, [r1]
	ands r0, r5
	strh r0, [r1]
	ldr r4, _08150CDC @ =gMultiSioArea
	ldrb r0, [r4]
	movs r3, #8
	eors r0, r3
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	adds r2, #0x31
	strb r0, [r2]
	mov r5, r8
	ldr r2, [r5]
	ldrb r0, [r4]
	eors r0, r3
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r2, #0x1c
	adds r2, r2, r1
	adds r1, r6, #0
	subs r1, #0x77
	ldrb r0, [r1]
	strb r0, [r2]
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08150C3A
	ldrb r1, [r4]
	eors r1, r3
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r7, r0, #0x1f
	ldr r2, _08150CE0 @ =gUnk_02029AEC
	lsls r0, r7, #1
	movs r3, #0x68
	adds r1, r0, #0
	muls r1, r3, r1
	adds r1, #0xd8
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r1, [r5]
	adds r1, #0x1c
	adds r1, r1, r7
	ldrb r1, [r1]
	muls r1, r3, r1
	ldr r2, _08150CE4 @ =gPlayerUnits
	adds r1, r1, r2
	movs r2, #0x68
	bl memcpy2
_08150C3A:
	ldr r4, _08150CE8 @ =0x0000467C
	add r4, sl
	movs r0, #3
	bl sub_0801335C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800486C
	ldr r4, _08150CE0 @ =gUnk_02029AEC
	ldr r1, [r4]
	str r0, [r1, #0x64]
	ldr r2, _08150CEC @ =sub_0815237C
	ldr r3, _08150CF0 @ =sub_08152378
	movs r1, #2
	bl sub_08013374
	ldr r5, [r4]
	mov r6, r8
	ldr r4, [r6]
	adds r4, #0x31
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r2, r5, #0
	adds r2, #0x54
	adds r0, r2, r0
	movs r1, #0x40
	strh r1, [r0]
	ldrb r0, [r4]
	movs r3, #1
	eors r0, r3
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0xb0
	strh r0, [r2]
	ldrb r0, [r4]
	lsls r2, r0, #1
	adds r1, r5, #0
	adds r1, #0x58
	adds r2, r1, r2
	eors r0, r3
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x68
	strh r0, [r1]
	strh r0, [r2]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r2, r5, #0
	adds r2, #0x48
	adds r0, r2, r0
	movs r1, #0
	strh r1, [r0]
	ldrb r0, [r4]
	eors r3, r0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #1
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x11
	bl _081516BE
	.align 2, 0
_08150CC0: .4byte gUnk_03000F64
_08150CC4: .4byte gUnk_02004440
_08150CC8: .4byte sub_0812AB40
_08150CCC: .4byte gUnk_03001090
_08150CD0: .4byte gUnk_02029AE8
_08150CD4: .4byte gUnk_03000D60
_08150CD8: .4byte gUnk_03000E20
_08150CDC: .4byte gMultiSioArea
_08150CE0: .4byte gUnk_02029AEC
_08150CE4: .4byte gPlayerUnits
_08150CE8: .4byte 0x0000467C
_08150CEC: .4byte sub_0815237C
_08150CF0: .4byte sub_08152378
_08150CF4:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08150D1E
	ldr r0, _08150D74 @ =gUnk_03000EB0
	adds r0, #0x3d
	movs r1, #0xff
	strb r1, [r0]
	ldr r0, _08150D78 @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x31
	adds r0, #0x1c
	ldrb r2, [r2]
	adds r0, r0, r2
	strb r1, [r0]
_08150D1E:
	ldr r0, _08150D78 @ =gUnk_02029AE8
	ldr r2, [r0]
	ldr r0, _08150D7C @ =gMultiSioArea
	ldrb r1, [r0]
	movs r0, #8
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	adds r2, #0x1c
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _08150D8C
	bl MultiSioStop
	ldr r0, _08150D80 @ =gUnk_02005640
	ldr r2, _08150D84 @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r3, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r1, _08150D88 @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0x20
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	b _08150DC6
	.align 2, 0
_08150D74: .4byte gUnk_03000EB0
_08150D78: .4byte gUnk_02029AE8
_08150D7C: .4byte gMultiSioArea
_08150D80: .4byte gUnk_02005640
_08150D84: .4byte gUnk_08761224
_08150D88: .4byte 0x00010088
_08150D8C:
	ldr r0, _08150DD4 @ =gUnk_02005640
	ldr r2, _08150DD8 @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r3, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r1, _08150DDC @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0x12
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #0
	bl sub_0814F510
_08150DC6:
	ldr r0, _08150DE0 @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #0x20
	strh r0, [r1, #0x10]
	movs r0, #0x12
	bl _08151722
	.align 2, 0
_08150DD4: .4byte gUnk_02005640
_08150DD8: .4byte gUnk_08761224
_08150DDC: .4byte 0x00010088
_08150DE0: .4byte gUnk_02029AE8
_08150DE4:
	ldr r0, _08150E44 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0814F390
	movs r0, #0
	bl sub_0814B1E0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08150E00
	bl _0815181C
_08150E00:
	ldr r0, _08150E48 @ =gUnk_02029AE8
	ldr r2, [r0]
	movs r0, #0
	strh r0, [r2, #0x10]
	ldr r4, _08150E4C @ =gMultiSioArea
	ldrb r1, [r4]
	movs r3, #8
	eors r1, r3
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	adds r2, #0x1c
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _08150E22
	b _08151154
_08150E22:
	movs r0, #0x13
	mov r5, sb
	strb r0, [r5]
	ldr r0, _08150E50 @ =gUnk_02029AEC
	ldr r2, [r0]
	ldrb r1, [r4]
	eors r1, r3
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	ands r0, r3
	adds r2, r2, r0
	adds r2, #0x74
	ldr r0, _08150E54 @ =0x00003434
	strh r0, [r2]
	bl _0815181C
	.align 2, 0
_08150E44: .4byte gUnk_03000F64
_08150E48: .4byte gUnk_02029AE8
_08150E4C: .4byte gMultiSioArea
_08150E50: .4byte gUnk_02029AEC
_08150E54: .4byte 0x00003434
_08150E58:
	ldr r0, _08150EF0 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0814F390
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0814D548
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08150E82
	b _08151210
_08150E82:
	movs r2, #0
	ldr r0, _08150EF4 @ =gMultiSioArea
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #8
	bne _08150E90
	movs r2, #1
_08150E90:
	adds r7, r2, #0
	ldr r2, _08150EF8 @ =gUnk_03002A00
	ldrh r1, [r2, #2]
	ldr r0, _08150EFC @ =0x00009004
	ldr r5, _08150F00 @ =gUnk_02029AEC
	mov r8, r5
	cmp r1, r0
	bne _08150EB8
	ldr r6, _08150F04 @ =gUnk_02029AE8
	ldr r0, [r6]
	adds r0, #0x1c
	adds r0, r0, r7
	ldrh r1, [r2, #4]
	strb r1, [r0]
	ldr r0, [r5]
	lsls r1, r7, #3
	adds r0, r0, r1
	ldrh r1, [r2, #6]
	adds r0, #0x74
	strh r1, [r0]
_08150EB8:
	mov r0, r8
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r1, [r0]
	ldr r0, _08150F08 @ =0x00003434
	cmp r1, r0
	bne _08150F10
	adds r0, r2, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r0, r1
	bne _08150F10
	ldr r2, _08150F04 @ =gUnk_02029AE8
	ldr r1, [r2]
	ldrh r0, [r1, #0x10]
	adds r0, #1
	strh r0, [r1, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa
	bls _08150F10
	strh r3, [r1, #0x10]
	ldrb r0, [r4]
	cmp r0, #8
	bne _08150F0C
	movs r0, #0x16
	b _08151156
	.align 2, 0
_08150EF0: .4byte gUnk_03000F64
_08150EF4: .4byte gMultiSioArea
_08150EF8: .4byte gUnk_03002A00
_08150EFC: .4byte 0x00009004
_08150F00: .4byte gUnk_02029AEC
_08150F04: .4byte gUnk_02029AE8
_08150F08: .4byte 0x00003434
_08150F0C:
	movs r0, #0x14
	b _081513F4
_08150F10:
	ldrb r1, [r4]
	movs r0, #8
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r7, r0, #0x1f
	movs r5, #0x92
	lsls r5, r5, #1
	adds r1, r4, r5
	movs r0, #0x16
	strb r0, [r1]
	ldr r2, _08150F40 @ =gUnk_03002C80
	ldr r0, _08150F44 @ =0x00009004
	strh r0, [r2, #2]
	ldr r6, _08150F48 @ =gUnk_02029AE8
	ldr r0, [r6]
	adds r0, #0x1c
	adds r0, r0, r7
	ldrb r0, [r0]
	strh r0, [r2, #4]
	mov r1, r8
	ldr r0, [r1]
	b _081513B8
	.align 2, 0
_08150F40: .4byte gUnk_03002C80
_08150F44: .4byte 0x00009004
_08150F48: .4byte gUnk_02029AE8
_08150F4C:
	ldr r0, _08150F78 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0814F390
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08150F7C
	movs r0, #0xc
	b _08151722
	.align 2, 0
_08150F78: .4byte gUnk_03000F64
_08150F7C:
	ldr r0, _08150F94 @ =gMultiSioArea
	movs r3, #0x92
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08150F8E
	bl _0815181C
_08150F8E:
	movs r0, #0x15
	b _081513F4
	.align 2, 0
_08150F94: .4byte gMultiSioArea
_08150F98:
	ldr r0, _08150FC4 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0814F390
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0814D548
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08150FC8
	movs r0, #0xc
	b _081511D6
	.align 2, 0
_08150FC4: .4byte gUnk_03000F64
_08150FC8:
	ldr r0, _08151018 @ =gMultiSioArea
	movs r6, #0x92
	lsls r6, r6, #1
	adds r0, r0, r6
	ldrb r5, [r0]
	cmp r5, #1
	beq _08150FDA
	bl _0815181C
_08150FDA:
	movs r0, #0
	bl sub_0814F510
	ldr r0, _0815101C @ =gUnk_02005640
	ldr r2, _08151020 @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r1, _08151024 @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0x1f
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #0x18
	b _081516BE
	.align 2, 0
_08151018: .4byte gMultiSioArea
_0815101C: .4byte gUnk_02005640
_08151020: .4byte gUnk_08761224
_08151024: .4byte 0x00010088
_08151028:
	ldr r0, _08151054 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0814F390
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0814D548
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08151058
	movs r0, #0xc
	b _08151722
	.align 2, 0
_08151054: .4byte gUnk_03000F64
_08151058:
	ldr r0, _08151090 @ =gUnk_02029AE8
	ldr r2, [r0]
	ldrb r0, [r2, #0x1c]
	movs r3, #0x68
	muls r0, r3, r0
	ldr r4, _08151094 @ =gPlayerUnits
	adds r0, r0, r4
	ldr r1, _08151098 @ =gUnk_02029AEC
	ldr r5, [r1]
	adds r1, r5, #0
	adds r1, #0xd8
	ldrb r2, [r2, #0x1d]
	muls r3, r2, r3
	adds r3, r3, r4
	movs r4, #0xd4
	lsls r4, r4, #1
	adds r2, r5, r4
	str r2, [sp]
	movs r2, #0x35
	str r2, [sp, #4]
	bl sub_0800538C
	cmp r0, #1
	beq _0815108A
	b _0815181C
_0815108A:
	movs r0, #0x17
	b _081511D6
	.align 2, 0
_08151090: .4byte gUnk_02029AE8
_08151094: .4byte gPlayerUnits
_08151098: .4byte gUnk_02029AEC
_0815109C:
	ldr r0, _08151114 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0814F390
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0814D548
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _081510C6
	b _08151210
_081510C6:
	ldr r0, _08151118 @ =gMultiSioArea
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _0815111C @ =0x00000101
	cmp r1, r0
	beq _081510D8
	b _0815181C
_081510D8:
	movs r0, #0
	bl sub_0814F510
	ldr r0, _08151120 @ =gUnk_02005640
	ldr r2, _08151124 @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r1, _08151128 @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0x1f
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #0x18
	b _08151722
	.align 2, 0
_08151114: .4byte gUnk_03000F64
_08151118: .4byte gMultiSioArea
_0815111C: .4byte 0x00000101
_08151120: .4byte gUnk_02005640
_08151124: .4byte gUnk_08761224
_08151128: .4byte 0x00010088
_0815112C:
	ldr r0, _0815115C @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0814F390
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0814D548
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08151160
_08151154:
	movs r0, #0xc
_08151156:
	mov r3, sb
	strb r0, [r3]
	b _0815181C
	.align 2, 0
_0815115C: .4byte gUnk_03000F64
_08151160:
	bl sub_0801670C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0815116C
	b _0815181C
_0815116C:
	bl sub_080197C0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _081511B8
	ldr r0, _081511AC @ =gUnk_02005640
	ldr r2, _081511B0 @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r1, _081511B4 @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0x20
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	b _081513F2
	.align 2, 0
_081511AC: .4byte gUnk_02005640
_081511B0: .4byte gUnk_08761224
_081511B4: .4byte 0x00010088
_081511B8:
	ldr r0, _081511DC @ =gUnk_02029AEC
	ldr r2, [r0]
	ldr r0, _081511E0 @ =gMultiSioArea
	ldrb r1, [r0]
	movs r3, #8
	eors r1, r3
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	ands r0, r3
	adds r2, r2, r0
	adds r2, #0x74
	ldr r0, _081511E4 @ =0x00003535
	strh r0, [r2]
	movs r0, #0x19
_081511D6:
	mov r5, sb
	strb r0, [r5]
	b _0815181C
	.align 2, 0
_081511DC: .4byte gUnk_02029AEC
_081511E0: .4byte gMultiSioArea
_081511E4: .4byte 0x00003535
_081511E8:
	ldr r0, _08151218 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0814F390
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0814D548
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0815121C
_08151210:
	movs r0, #0xc
_08151212:
	mov r6, sb
	strb r0, [r6]
	b _0815181C
	.align 2, 0
_08151218: .4byte gUnk_03000F64
_0815121C:
	movs r2, #0
	ldr r0, _0815136C @ =gMultiSioArea
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #8
	bne _0815122A
	movs r2, #1
_0815122A:
	adds r7, r2, #0
	ldr r2, _08151370 @ =gUnk_03002A00
	ldrh r1, [r2, #2]
	ldr r0, _08151374 @ =0x00009005
	ldr r3, _08151378 @ =gUnk_02029AEC
	mov r8, r3
	cmp r1, r0
	bne _08151252
	ldr r5, _0815137C @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r0, #0x1c
	adds r0, r0, r7
	ldrh r1, [r2, #4]
	strb r1, [r0]
	ldr r0, [r3]
	lsls r1, r7, #3
	adds r0, r0, r1
	ldrh r1, [r2, #6]
	adds r0, #0x74
	strh r1, [r0]
_08151252:
	mov r0, r8
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r1, [r0]
	ldr r0, _08151380 @ =0x00003535
	cmp r1, r0
	beq _08151264
	b _0815138C
_08151264:
	adds r0, r2, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r0, r1
	beq _08151270
	b _0815138C
_08151270:
	ldr r3, _0815137C @ =gUnk_02029AE8
	ldr r1, [r3]
	ldrh r0, [r1, #0x10]
	adds r0, #1
	strh r0, [r1, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa
	bhi _08151284
	b _0815138C
_08151284:
	strh r6, [r1, #0x10]
	ldrb r0, [r4]
	movs r4, #8
	eors r0, r4
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	adds r1, r2, #0
	adds r1, #0x3f
	strb r0, [r1]
	movs r0, #0x1a
	mov r5, sb
	strb r0, [r5]
	movs r0, #0
	bl sub_080030AC
	ldr r0, _08151384 @ =gUnk_02005640
	movs r1, #0x8a
	lsls r1, r1, #2
	ldr r2, _08151388 @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	movs r5, #1
	str r5, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	str r4, [sp, #0x20]
	movs r3, #0x49
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #4
	bl sub_0814531C
	ldr r0, _0815137C @ =gUnk_02029AE8
	ldr r2, [r0]
	strh r6, [r2, #0x10]
	mov r1, r8
	ldr r3, [r1]
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0x38
	strh r0, [r1]
	rsbs r0, r0, #0
	subs r1, #4
	strh r0, [r1]
	adds r2, #0x31
	ldrb r1, [r2]
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r0, r1
	strh r5, [r0]
	ldrb r1, [r2]
	lsls r1, r1, #2
	adds r0, r3, #0
	adds r0, #0x68
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl sub_0801309C
	mov r2, r8
	ldr r1, [r2]
	ldr r3, _0815137C @ =gUnk_02029AE8
	ldr r0, [r3]
	adds r0, #0x31
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, #0x68
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08012EA8
	mov r4, r8
	ldr r1, [r4]
	ldr r5, _0815137C @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r0, #0x31
	ldrb r0, [r0]
	movs r4, #1
	eors r0, r4
	lsls r0, r0, #2
	adds r1, #0x68
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0801309C
	mov r6, r8
	ldr r1, [r6]
	ldr r0, [r5]
	adds r0, #0x31
	ldrb r0, [r0]
	eors r4, r0
	lsls r4, r4, #2
	adds r1, #0x68
	adds r1, r1, r4
	ldr r0, [r1]
	bl sub_08012EA8
	b _0815181C
	.align 2, 0
_0815136C: .4byte gMultiSioArea
_08151370: .4byte gUnk_03002A00
_08151374: .4byte 0x00009005
_08151378: .4byte gUnk_02029AEC
_0815137C: .4byte gUnk_02029AE8
_08151380: .4byte 0x00003535
_08151384: .4byte gUnk_02005640
_08151388: .4byte gUnk_0874A6CC
_0815138C:
	ldrb r1, [r4]
	movs r0, #8
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r7, r0, #0x1f
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x16
	strb r0, [r1]
	ldr r2, _081513C4 @ =gUnk_03002C80
	ldr r0, _081513C8 @ =0x00009005
	strh r0, [r2, #2]
	ldr r1, _081513CC @ =gUnk_02029AE8
	ldr r0, [r1]
	adds r0, #0x1c
	adds r0, r0, r7
	ldrb r0, [r0]
	strh r0, [r2, #4]
	mov r3, r8
	ldr r0, [r3]
_081513B8:
	lsls r1, r7, #3
	adds r0, r0, r1
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r2, #6]
	b _0815181C
	.align 2, 0
_081513C4: .4byte gUnk_03002C80
_081513C8: .4byte 0x00009005
_081513CC: .4byte gUnk_02029AE8
_081513D0:
	movs r0, #1
	movs r1, #0
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0814D548
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0
	beq _081513FA
	movs r0, #1
	bl sub_080030AC
	movs r0, #0x1f
	bl sub_081452CC
_081513F2:
	movs r0, #0xc
_081513F4:
	mov r4, sb
	strb r0, [r4]
	b _0815181C
_081513FA:
	ldr r5, _08151504 @ =gUnk_02029AEC
	ldr r1, [r5]
	adds r3, r1, #0
	adds r3, #0x4c
	ldrh r2, [r3]
	adds r0, r2, #2
	strh r0, [r3]
	ldr r7, _08151508 @ =gUnk_02029AE8
	ldr r4, [r7]
	adds r5, r4, #0
	adds r5, #0x31
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r1, #0x54
	adds r0, r1, r0
	adds r2, #0x7a
	strh r2, [r0]
	ldrb r0, [r5]
	movs r6, #1
	mov r8, r6
	mov r2, r8
	eors r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r2, [r3]
	movs r0, #0x78
	subs r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r4, #0x10]
	lsrs r0, r0, #8
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0xa
	lsrs r6, r1, #0x10
	ldr r3, [r7]
	ldr r4, _0815150C @ =0x00000249
	adds r0, r4, #0
	ldrh r5, [r3, #0x10]
	adds r0, r0, r5
	strh r0, [r3, #0x10]
	ldr r0, _08151504 @ =gUnk_02029AEC
	ldr r4, [r0]
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _081514B0
	adds r3, #0x31
	ldrb r0, [r3]
	lsls r2, r0, #1
	adds r1, r4, #0
	adds r1, #0x48
	adds r2, r1, r2
	mov r5, r8
	eors r0, r5
	lsls r0, r0, #1
	adds r1, r1, r0
	mov r0, sl
	strh r0, [r1]
	strh r0, [r2]
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r0, r4, #0
	adds r0, #0x68
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0801309C
	ldr r2, _08151504 @ =gUnk_02029AEC
	ldr r1, [r2]
	ldr r0, [r7]
	adds r0, #0x31
	ldrb r0, [r0]
	eors r0, r5
	lsls r0, r0, #2
	adds r1, #0x68
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl sub_0801309C
_081514B0:
	ldr r3, _08151504 @ =gUnk_02029AEC
	ldr r2, [r3]
	ldr r0, [r7]
	adds r4, r0, #0
	adds r4, #0x31
	ldrb r1, [r4]
	lsls r1, r1, #1
	adds r7, r2, #0
	adds r7, #0x58
	adds r1, r7, r1
	movs r0, #0x68
	subs r0, r0, r6
	strh r0, [r1]
	ldrb r0, [r4]
	mov r5, r8
	eors r0, r5
	lsls r0, r0, #1
	adds r0, r7, r0
	adds r1, r6, #0
	adds r1, #0x68
	strh r1, [r0]
	ldrb r0, [r4]
	lsls r5, r0, #1
	adds r3, r2, #0
	adds r3, #0x54
	adds r0, r3, r5
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	bge _081514EE
	adds r0, #7
_081514EE:
	asrs r0, r0, #3
	cmp r0, #0x15
	bgt _08151514
	bl sub_0814F390
_081514F8:
	ldr r0, _08151510 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	b _0815181C
	.align 2, 0
_08151504: .4byte gUnk_02029AEC
_08151508: .4byte gUnk_02029AE8
_0815150C: .4byte 0x00000249
_08151510: .4byte gUnk_03000F64
_08151514:
	adds r1, r2, #0
	adds r1, #0x48
	adds r2, r1, r5
	movs r0, #1
	strh r0, [r2]
	ldrb r0, [r4]
	mov r2, r8
	eors r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	mov r5, sl
	strh r5, [r1]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r3, r0
	movs r1, #0xb0
	strh r1, [r0]
	ldrb r0, [r4]
	eors r0, r2
	lsls r0, r0, #1
	adds r0, r3, r0
	movs r1, #0x40
	strh r1, [r0]
	ldrb r0, [r4]
	lsls r2, r0, #1
	adds r2, r7, r2
	mov r6, r8
	eors r0, r6
	lsls r0, r0, #1
	adds r0, r7, r0
	movs r1, #0x68
	strh r1, [r0]
	strh r1, [r2]
	movs r0, #1
	bl sub_0814F510
	bl sub_0814F390
	ldr r0, _08151570 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl MultiSioStop
	movs r0, #0x1b
	b _081516BE
	.align 2, 0
_08151570: .4byte gUnk_03000F64
_08151574:
	ldr r0, _081516C4 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	bl sub_0814F390
	ldr r2, _081516C8 @ =gUnk_02029AE8
	mov sl, r2
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #0x31
	ldrb r7, [r1]
	movs r1, #1
	adds r2, r7, #0
	eors r2, r1
	ldr r5, _081516CC @ =gUnk_02000000
	adds r0, #0x1c
	adds r0, r0, r7
	ldrb r0, [r0]
	movs r4, #0x68
	muls r0, r4, r0
	adds r1, r0, r5
	adds r1, #0x81
	ldrb r1, [r1]
	mov r8, r1
	adds r1, r5, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r1, _081516D0 @ =gUnk_02029AEC
	lsls r2, r2, #1
	muls r2, r4, r2
	adds r2, #0xd8
	ldr r1, [r1]
	adds r1, r1, r2
	movs r2, #0x68
	bl memcpy2
	mov r3, sl
	ldr r0, [r3]
	adds r0, #0x1c
	adds r0, r0, r7
	ldrb r0, [r0]
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x81
	mov r4, r8
	strb r4, [r0]
	movs r6, #0
	mov ip, r5
	mov r4, sl
	movs r3, #0x68
	movs r2, #0
	movs r5, #0x94
	add r5, ip
	mov sl, r5
	ldr r0, _081516D4 @ =gUnk_0861A8F0
	mov r8, r0
_081515E6:
	ldr r0, [r4]
	adds r0, #0x1c
	adds r0, r0, r7
	ldrb r0, [r0]
	muls r0, r3, r0
	adds r0, r6, r0
	mov r1, ip
	adds r1, #0x90
	adds r0, r0, r1
	strb r2, [r0]
	ldr r0, [r4]
	adds r0, #0x1c
	adds r0, r0, r7
	ldrb r0, [r0]
	muls r0, r3, r0
	adds r0, r6, r0
	mov r5, sl
	adds r1, r0, r5
	ldrb r0, [r1]
	cmp r0, #0
	beq _08151624
	cmp r0, #0xff
	beq _08151624
	lsls r0, r0, #6
	add r0, r8
	ldrb r0, [r0, #2]
	cmp r0, #6
	bgt _08151624
	cmp r0, #1
	blt _08151624
	strb r2, [r1]
_08151624:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _081515E6
	bl sub_0813A6B0
	ldr r0, _081516C8 @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r0, #0x1c
	adds r0, r0, r7
	ldrb r1, [r0]
	movs r0, #0x68
	muls r0, r1, r0
	ldr r4, _081516D8 @ =gPlayerUnits
	adds r0, r0, r4
	movs r1, #0
	movs r2, #0x12
	bl sub_08143B70
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _081516DC @ =0x00001304
	adds r4, r4, r0
	adds r1, r6, r4
	ldrb r0, [r1]
	cmp r0, #0
	bne _08151660
	movs r0, #1
	strb r0, [r1]
_08151660:
	ldr r0, _081516E0 @ =gUnk_03001060
	ldrb r1, [r0]
	movs r0, #0
	bl sub_08003038
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #1
	bl sub_080030AC
	movs r0, #0x1f
	bl sub_081452CC
	cmp r6, #0
	bne _081516EC
	ldr r0, _081516D0 @ =gUnk_02029AEC
	ldr r0, [r0]
	ldrh r0, [r0, #0x1a]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, #0
	beq _0815168E
	adds r1, #0x6c
_0815168E:
	ldr r0, _081516E4 @ =gUnk_02005640
	ldr r2, _081516E8 @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r3, #0xff
	str r3, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	movs r3, #8
	str r3, [sp, #0x20]
	movs r3, #0x20
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #0xd
_081516BE:
	mov r1, sb
	strb r0, [r1]
	b _0815181C
	.align 2, 0
_081516C4: .4byte gUnk_03000F64
_081516C8: .4byte gUnk_02029AE8
_081516CC: .4byte gUnk_02000000
_081516D0: .4byte gUnk_02029AEC
_081516D4: .4byte gUnk_0861A8F0
_081516D8: .4byte gPlayerUnits
_081516DC: .4byte 0x00001304
_081516E0: .4byte gUnk_03001060
_081516E4: .4byte gUnk_02005640
_081516E8: .4byte gUnk_0874A6CC
_081516EC:
	ldr r0, _08151728 @ =gUnk_02005640
	ldr r2, _0815172C @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r3, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r1, _08151730 @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r3, #0x21
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #0xe
_08151722:
	mov r2, sb
	strb r0, [r2]
	b _0815181C
	.align 2, 0
_08151728: .4byte gUnk_02005640
_0815172C: .4byte gUnk_08761224
_08151730: .4byte 0x00010088
_08151734:
	ldr r0, _0815177C @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #0x1d
	mov r3, sb
	strb r0, [r3]
_08151742:
	ldr r0, _08151780 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	movs r0, #1
	bl sub_0814B1E0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _081517DE
	ldr r4, _08151784 @ =gUnk_02029AEC
	ldr r0, [r4]
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #2
	bne _0815176E
	bl sub_080133E0
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	bl sub_08004928
_0815176E:
	bl MultiSioStop
	ldr r0, _0815177C @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #3
	b _0815181A
	.align 2, 0
_0815177C: .4byte gUnk_02029AE8
_08151780: .4byte gUnk_03000F64
_08151784: .4byte gUnk_02029AEC
_08151788:
	ldr r0, _081517B4 @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #0x1f
	mov r4, sb
	strb r0, [r4]
_08151796:
	ldr r0, _081517B8 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	movs r0, #1
	bl sub_0814B1E0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0815181C
	ldr r0, _081517B4 @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #3
	b _0815181A
	.align 2, 0
_081517B4: .4byte gUnk_02029AE8
_081517B8: .4byte gUnk_03000F64
_081517BC:
	ldr r0, _081517F0 @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #0x21
	mov r5, sb
	strb r0, [r5]
_081517CA:
	ldr r0, _081517F4 @ =gUnk_03000F64
	movs r1, #1
	bl sub_08000768
	movs r0, #1
	bl sub_0814B1E0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _081517FC
_081517DE:
	ldr r0, _081517F8 @ =gUnk_02029AEC
	ldr r0, [r0]
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #2
	bne _0815181C
	bl sub_0814F390
	b _0815181C
	.align 2, 0
_081517F0: .4byte gUnk_02029AE8
_081517F4: .4byte gUnk_03000F64
_081517F8: .4byte gUnk_02029AEC
_081517FC:
	ldr r4, _0815182C @ =gUnk_02029AEC
	ldr r0, [r4]
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #2
	bne _08151814
	bl sub_080133E0
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	bl sub_08004928
_08151814:
	ldr r0, _08151830 @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #4
_0815181A:
	strb r0, [r1, #0x19]
_0815181C:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0815182C: .4byte gUnk_02029AEC
_08151830: .4byte gUnk_02029AE8

	thumb_func_start sub_08151834
sub_08151834: @ 0x08151834
	push {r4, lr}
	sub sp, #0xc
	ldr r2, _08151920 @ =gUnk_030010B0
	ldrh r0, [r2, #6]
	ldr r1, _08151924 @ =0x0000FFFD
	ands r1, r0
	movs r3, #0
	movs r4, #0
	strh r1, [r2, #6]
	ldr r0, _08151928 @ =gUnk_03001064
	strh r1, [r0]
	ldr r0, _0815192C @ =0x04000200
	strh r1, [r0]
	ldr r0, _08151930 @ =gUnk_03000DD0
	ldrh r1, [r0, #0xa]
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r2, [r0, #0xc]
	strh r1, [r0, #0xc]
	ldrh r1, [r0, #0xe]
	strh r4, [r0, #0xe]
	ldrh r1, [r0, #0xe]
	ldrh r2, [r0, #0x10]
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0x12]
	strh r4, [r0, #0x12]
	ldrh r1, [r0, #0x12]
	ldrh r2, [r0, #0x14]
	strh r1, [r0, #0x14]
	ldrh r1, [r0, #0x16]
	strh r4, [r0, #0x16]
	ldrh r1, [r0, #0x16]
	ldrh r2, [r0, #0x18]
	strh r1, [r0, #0x18]
	ldrh r1, [r0, #2]
	ldr r1, _08151934 @ =0x00003F03
	strh r1, [r0, #2]
	ldrh r1, [r0, #4]
	ldr r1, _08151938 @ =0x00003E02
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	ldr r1, _0815193C @ =0x00003D08
	strh r1, [r0, #6]
	ldrh r1, [r0, #8]
	ldr r1, _08151940 @ =0x00003C09
	strh r1, [r0, #8]
	movs r1, #0xfa
	lsls r1, r1, #5
	strh r1, [r0]
	adds r2, r0, #0
	adds r2, #0x4a
	ldrb r1, [r2]
	strb r3, [r2]
	adds r0, #0x4b
	ldrb r1, [r0]
	strb r3, [r0]
	ldr r1, _08151944 @ =gUnk_03001070
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #0x10]
	ldr r0, _08151948 @ =0x0600F800
	str r0, [r1, #0x14]
	ldr r1, _0815194C @ =gUnk_03001090
	ldr r2, _08151950 @ =0x06008000
	str r2, [r1, #0x10]
	ldr r0, _08151954 @ =0x0600F000
	str r0, [r1, #0x14]
	ldr r1, _08151958 @ =gUnk_03000D60
	str r2, [r1, #0x10]
	ldr r0, _0815195C @ =0x0600E800
	str r0, [r1, #0x14]
	ldr r1, _08151960 @ =gUnk_03000E20
	str r2, [r1, #0x10]
	ldr r0, _08151964 @ =0x0600E000
	str r0, [r1, #0x14]
	add r0, sp, #8
	strh r4, [r0]
	ldr r0, _08151968 @ =0x040000D4
	add r1, sp, #8
	str r1, [r0]
	ldr r2, _0815196C @ =gUnk_02002400
	str r2, [r0, #4]
	ldr r3, _08151970 @ =0x81000100
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	add r1, sp, #8
	strh r4, [r1]
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r2, r1
	str r2, [r0, #4]
	str r3, [r0, #8]
	ldr r0, [r0, #8]
	bl sub_08139694
	ldr r1, _08151974 @ =gUnk_02029AE8
	ldr r0, _08151978 @ =gUnk_03000EB0
	str r0, [r1]
	ldr r0, _0815197C @ =gUnk_02029AEC
	ldr r2, _08151980 @ =gUnk_02007284
	str r2, [r0]
	ldr r0, _08151984 @ =gUnk_086DE118
	ldr r1, _08151988 @ =0x000010B8
	adds r2, r2, r1
	movs r1, #0x3b
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r1, _0815198C @ =0x06012440
	movs r3, #0x52
	bl sub_0801A59C
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08151920: .4byte gUnk_030010B0
_08151924: .4byte 0x0000FFFD
_08151928: .4byte gUnk_03001064
_0815192C: .4byte 0x04000200
_08151930: .4byte gUnk_03000DD0
_08151934: .4byte 0x00003F03
_08151938: .4byte 0x00003E02
_0815193C: .4byte 0x00003D08
_08151940: .4byte 0x00003C09
_08151944: .4byte gUnk_03001070
_08151948: .4byte 0x0600F800
_0815194C: .4byte gUnk_03001090
_08151950: .4byte 0x06008000
_08151954: .4byte 0x0600F000
_08151958: .4byte gUnk_03000D60
_0815195C: .4byte 0x0600E800
_08151960: .4byte gUnk_03000E20
_08151964: .4byte 0x0600E000
_08151968: .4byte 0x040000D4
_0815196C: .4byte gUnk_02002400
_08151970: .4byte 0x81000100
_08151974: .4byte gUnk_02029AE8
_08151978: .4byte gUnk_03000EB0
_0815197C: .4byte gUnk_02029AEC
_08151980: .4byte gUnk_02007284
_08151984: .4byte gUnk_086DE118
_08151988: .4byte 0x000010B8
_0815198C: .4byte 0x06012440

	thumb_func_start sub_08151990
sub_08151990: @ 0x08151990
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x24
	adds r7, r1, #0
	ldrb r0, [r7]
	cmp r0, #7
	bne _081519A4
	b _08151E8C
_081519A4:
	cmp r0, #7
	bgt _081519E4
	cmp r0, #3
	beq _08151A58
	cmp r0, #3
	bgt _081519C0
	cmp r0, #1
	beq _08151A88
	cmp r0, #1
	ble _081519BA
	b _08151B00
_081519BA:
	cmp r0, #0
	beq _08151A16
	b _08152082
_081519C0:
	cmp r0, #5
	bne _081519C6
	b _08151B98
_081519C6:
	cmp r0, #5
	ble _081519CC
	b _08151BB0
_081519CC:
	bl sub_0814B314
	ldr r0, _081519E0 @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #0x20
	strh r0, [r1, #0x10]
	movs r0, #5
	strb r0, [r7]
	b _08152082
	.align 2, 0
_081519E0: .4byte gUnk_02029AE8
_081519E4:
	cmp r0, #0xb
	bne _081519EA
	b _08151FB0
_081519EA:
	cmp r0, #0xb
	bgt _081519FC
	cmp r0, #9
	bne _081519F4
	b _08151EAC
_081519F4:
	cmp r0, #9
	ble _081519FA
	b _08151ED8
_081519FA:
	b _08151E9C
_081519FC:
	cmp r0, #0xd
	bne _08151A02
	b _08152014
_08151A02:
	cmp r0, #0xd
	bge _08151A08
	b _08152002
_08151A08:
	cmp r0, #0xe
	bne _08151A0E
	b _08152064
_08151A0E:
	cmp r0, #0xff
	bne _08151A14
	b _0815204A
_08151A14:
	b _08152082
_08151A16:
	movs r0, #0x1f
	bl sub_081452CC
	bl sub_08151834
	ldr r0, _08151A4C @ =gUnk_02005640
	movs r1, #2
	movs r2, #0
	bl sub_08152FA4
	ldr r4, _08151A50 @ =gUnk_03000F84
	adds r1, r4, #0
	adds r1, #0x10
	adds r2, r4, #0
	adds r2, #0x14
	adds r0, r4, #0
	movs r3, #1
	bl sub_08002CD4
	ldr r2, _08151A54 @ =sub_081531AC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08002D38
	movs r0, #3
	strb r0, [r7]
	b _08152082
	.align 2, 0
_08151A4C: .4byte gUnk_02005640
_08151A50: .4byte gUnk_03000F84
_08151A54: .4byte sub_081531AC
_08151A58:
	ldr r4, _08151A80 @ =gUnk_03000F84
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000768
	ldr r0, [r4, #0xc]
	ldrb r0, [r0]
	cmp r0, #0xfd
	bhi _08151A6C
	b _08152082
_08151A6C:
	cmp r0, #0xfe
	bne _08151A72
	b _08152044
_08151A72:
	ldr r0, _08151A84 @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r0, #0x21
	movs r1, #0
	strb r1, [r0]
	b _08151FFC
	.align 2, 0
_08151A80: .4byte gUnk_03000F84
_08151A84: .4byte gUnk_02029AE8
_08151A88:
	movs r0, #0x1f
	bl sub_081452CC
	bl sub_08151834
	ldr r0, _08151AF4 @ =gUnk_03000D60
	ldr r2, [r0, #0x14]
	ldr r5, _08151AF8 @ =gUnk_02029AE8
	ldr r0, [r5]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r0, [r5]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	movs r6, #3
	ands r3, r6
	strh r3, [r4]
	ldr r1, _08151AFC @ =gUnk_03000E20
	ldr r2, [r1, #0x14]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r5]
	adds r1, #0x40
	ldrh r0, [r1]
	ands r0, r6
	strh r0, [r1]
	b _08151FFC
	.align 2, 0
_08151AF4: .4byte gUnk_03000D60
_08151AF8: .4byte gUnk_02029AE8
_08151AFC: .4byte gUnk_03000E20
_08151B00:
	ldr r0, _08151B88 @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r0, #0x21
	ldrb r5, [r0]
	bl sub_08151834
	ldr r2, _08151B8C @ =gUnk_03000EB0
	ldr r0, _08151B90 @ =gUnk_02004440
	str r0, [r2]
	movs r3, #0xe0
	lsls r3, r3, #4
	adds r1, r0, r3
	str r1, [r2, #4]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r0, r4
	str r0, [r2, #8]
	ldr r0, _08151B94 @ =gUnk_02029AEC
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #2]
	movs r4, #0
_08151B2C:
	adds r0, r4, #0
	adds r0, #0x17
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08151B4A
	ldr r0, _08151B94 @ =gUnk_02029AEC
	ldr r1, [r0]
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
_08151B4A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08151B2C
	ldr r3, _08151B94 @ =gUnk_02029AEC
	ldr r2, [r3]
	movs r4, #0
	ldrh r0, [r2, #2]
	cmp r0, #0
	bne _08151B62
	movs r4, #1
_08151B62:
	movs r1, #0
	strb r4, [r2, #0x12]
	ldr r0, [r3]
	strb r1, [r0, #0x13]
	ldr r0, [r3]
	strb r1, [r0, #0x14]
	ldr r0, _08151B88 @ =gUnk_02029AE8
	ldr r4, [r0]
	adds r0, r5, #0
	movs r1, #3
	bl __umodsi3
	adds r4, #0x21
	strb r0, [r4]
	bl sub_0814F490
	movs r0, #4
	strb r0, [r7]
	b _08152082
	.align 2, 0
_08151B88: .4byte gUnk_02029AE8
_08151B8C: .4byte gUnk_03000EB0
_08151B90: .4byte gUnk_02004440
_08151B94: .4byte gUnk_02029AEC
_08151B98:
	movs r0, #1
	bl sub_0814B548
	movs r0, #0
	bl sub_0814B1E0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08151BAC
	b _08152082
_08151BAC:
	movs r0, #6
	strb r0, [r7]
_08151BB0:
	bl sub_0801A40C
	ldr r1, _08151BD4 @ =gUnk_02029AEC
	ldr r1, [r1]
	movs r2, #0
	mov r8, r2
	strh r0, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #4
	bne _08151BC6
	b _08151D44
_08151BC6:
	cmp r0, #4
	bgt _08151BD8
	cmp r0, #1
	beq _08151C00
	cmp r0, #2
	beq _08151BE6
	b _08151EB8
	.align 2, 0
_08151BD4: .4byte gUnk_02029AEC
_08151BD8:
	cmp r0, #0x40
	bne _08151BDE
	b _08151D9C
_08151BDE:
	cmp r0, #0x80
	bne _08151BE4
	b _08151E14
_08151BE4:
	b _08151EB8
_08151BE6:
	movs r0, #0xb0
	bl PlaySE
	ldr r0, _08151BFC @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0x19]
	movs r0, #0xc
	strb r0, [r7]
	b _08151EB8
	.align 2, 0
_08151BFC: .4byte gUnk_02029AE8
_08151C00:
	ldr r3, _08151C54 @ =gUnk_02029AE8
	mov sb, r3
	ldr r0, [r3]
	adds r0, #0x21
	adds r1, #0x12
	ldrb r0, [r0]
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08151C16
	b _08151EB8
_08151C16:
	movs r0, #0xad
	bl PlaySE
	mov r4, sb
	ldr r1, [r4]
	mov r0, r8
	strh r0, [r1, #0x10]
	movs r0, #0
	strb r0, [r1, #0x19]
	ldr r5, _08151C58 @ =gUnk_03000F84
	adds r1, r5, #0
	adds r1, #0x10
	adds r2, r5, #0
	adds r2, #0x14
	adds r0, r5, #0
	movs r3, #1
	bl sub_08002CD4
	movs r0, #0xb
	strb r0, [r7]
	ldr r4, [r4]
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r6, [r0]
	cmp r6, #1
	beq _08151C6C
	cmp r6, #1
	bgt _08151C5C
	cmp r6, #0
	beq _08151C62
	b _08151EB8
	.align 2, 0
_08151C54: .4byte gUnk_02029AE8
_08151C58: .4byte gUnk_03000F84
_08151C5C:
	cmp r6, #2
	beq _08151D34
	b _08151EB8
_08151C62:
	ldr r2, _08151C68 @ =sub_0814C630
	b _08151D36
	.align 2, 0
_08151C68: .4byte sub_0814C630
_08151C6C:
	ldr r0, _08151C84 @ =gUnk_02000000
	ldr r1, _08151C88 @ =0x0000132F
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08151C8C
	movs r0, #9
	strb r0, [r7]
	b _08151EB8
	.align 2, 0
_08151C84: .4byte gUnk_02000000
_08151C88: .4byte 0x0000132F
_08151C8C:
	ldr r0, _08151D24 @ =gUnk_03000D60
	ldr r2, [r0, #0x14]
	adds r3, r4, #0
	adds r3, #0x40
	ldrh r1, [r3]
	adds r0, r1, #1
	strh r0, [r3]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x44
	adds r0, r4, r0
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	mov r2, sb
	ldr r0, [r2]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	movs r5, #3
	ands r3, r5
	strh r3, [r4]
	ldr r1, _08151D28 @ =gUnk_03000E20
	ldr r2, [r1, #0x14]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	mov r3, sb
	ldr r1, [r3]
	adds r1, #0x40
	ldrh r0, [r1]
	ands r0, r5
	strh r0, [r1]
	ldr r0, _08151D2C @ =gUnk_02005640
	movs r1, #0x8a
	lsls r1, r1, #2
	ldr r2, _08151D30 @ =gUnk_0875D99A
	movs r3, #2
	str r3, [sp]
	subs r3, #3
	str r3, [sp, #4]
	str r6, [sp, #8]
	mov r4, r8
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	movs r3, #8
	str r3, [sp, #0x20]
	movs r3, #0x23
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #7
	strb r0, [r7]
	b _08151EB8
	.align 2, 0
_08151D24: .4byte gUnk_03000D60
_08151D28: .4byte gUnk_03000E20
_08151D2C: .4byte gUnk_02005640
_08151D30: .4byte gUnk_0875D99A
_08151D34:
	ldr r2, _08151D40 @ =sub_0814FA68
_08151D36:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08002D38
	b _08151EB8
	.align 2, 0
_08151D40: .4byte sub_0814FA68
_08151D44:
	movs r0, #0
	bl sub_08019830
	ldr r1, _08151D8C @ =gUnk_086A226A
	ldr r0, _08151D90 @ =gUnk_02029AE8
	ldr r0, [r0]
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r0, _08151D94 @ =gUnk_02005640
	ldr r2, _08151D98 @ =gUnk_08761224
	movs r1, #2
	str r1, [sp]
	subs r1, #3
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	mov r1, r8
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	mov r4, r8
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	movs r4, #8
	str r4, [sp, #0x20]
	bl sub_08015D50
	movs r0, #0xa
	strb r0, [r7]
	b _08151EB8
	.align 2, 0
_08151D8C: .4byte gUnk_086A226A
_08151D90: .4byte gUnk_02029AE8
_08151D94: .4byte gUnk_02005640
_08151D98: .4byte gUnk_08761224
_08151D9C:
	ldr r4, _08151E00 @ =gUnk_02029AE8
	ldr r0, [r4]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _08151DAA
	b _08151EB8
_08151DAA:
	movs r0, #0xb2
	bl PlaySE
	ldr r1, [r4]
	adds r1, #0x21
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r1, _08151E04 @ =gUnk_086A2264
	ldr r0, [r4]
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r0, _08151E08 @ =gUnk_02005640
	ldr r2, _08151E0C @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	mov r1, r8
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	mov r4, r8
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r1, _08151E10 @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	b _08151EB8
	.align 2, 0
_08151E00: .4byte gUnk_02029AE8
_08151E04: .4byte gUnk_086A2264
_08151E08: .4byte gUnk_02005640
_08151E0C: .4byte gUnk_08761224
_08151E10: .4byte 0x00010088
_08151E14:
	ldr r4, _08151E78 @ =gUnk_02029AE8
	ldr r0, [r4]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08151EB8
	movs r0, #0xb2
	bl PlaySE
	ldr r1, [r4]
	adds r1, #0x21
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08151E7C @ =gUnk_086A2264
	ldr r0, [r4]
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r0, _08151E80 @ =gUnk_02005640
	ldr r2, _08151E84 @ =gUnk_08761224
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	mov r1, r8
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	mov r4, r8
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r1, _08151E88 @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	b _08151EB8
	.align 2, 0
_08151E78: .4byte gUnk_02029AE8
_08151E7C: .4byte gUnk_086A2264
_08151E80: .4byte gUnk_02005640
_08151E84: .4byte gUnk_08761224
_08151E88: .4byte 0x00010088
_08151E8C:
	bl sub_0801670C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08151E98
	b _08152082
_08151E98:
	movs r0, #8
	strb r0, [r7]
_08151E9C:
	movs r0, #1
	bl sub_0814B1E0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08151EAA
	b _08152082
_08151EAA:
	b _08151EC0
_08151EAC:
	movs r0, #1
	bl sub_0814B1E0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08151EC0
_08151EB8:
	movs r0, #1
	bl sub_0814B548
	b _08152082
_08151EC0:
	ldr r0, _08151ED0 @ =gUnk_03000F84
	ldr r2, _08151ED4 @ =sub_0814D670
	movs r1, #0
	bl sub_08002D38
	movs r0, #0xb
	strb r0, [r7]
	b _08152082
	.align 2, 0
_08151ED0: .4byte gUnk_03000F84
_08151ED4: .4byte sub_0814D670
_08151ED8:
	movs r0, #0
	bl sub_0814B548
	bl sub_0801670C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08151EEA
	b _08152082
_08151EEA:
	movs r0, #6
	strb r0, [r7]
	ldr r0, _08151F94 @ =gUnk_03000D60
	ldr r2, [r0, #0x14]
	ldr r0, _08151F98 @ =gUnk_02029AE8
	mov r8, r0
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0x90
	lsls r3, r3, #1
	bl sub_08000C44
	mov r1, r8
	ldr r0, [r1]
	adds r4, r0, #0
	adds r4, #0x40
	ldrh r3, [r4]
	movs r5, #3
	ands r3, r5
	movs r6, #0
	strh r3, [r4]
	ldr r1, _08151F9C @ =gUnk_03000E20
	ldr r2, [r1, #0x14]
	adds r1, r3, #1
	strh r1, [r4]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x44
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0x90
	lsls r3, r3, #1
	bl sub_08000C44
	mov r2, r8
	ldr r1, [r2]
	adds r2, r1, #0
	adds r2, #0x40
	ldrh r0, [r2]
	ands r0, r5
	strh r0, [r2]
	ldr r2, _08151FA0 @ =gUnk_086A2264
	adds r1, #0x21
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r0, _08151FA4 @ =gUnk_02005640
	ldr r2, _08151FA8 @ =gUnk_08761224
	str r5, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r1, _08151FAC @ =0x00010088
	str r1, [sp, #0x20]
	movs r1, #0x8a
	lsls r1, r1, #2
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	b _08152082
	.align 2, 0
_08151F94: .4byte gUnk_03000D60
_08151F98: .4byte gUnk_02029AE8
_08151F9C: .4byte gUnk_03000E20
_08151FA0: .4byte gUnk_086A2264
_08151FA4: .4byte gUnk_02005640
_08151FA8: .4byte gUnk_08761224
_08151FAC: .4byte 0x00010088
_08151FB0:
	ldr r0, _08151FCC @ =gUnk_03000F84
	movs r1, #1
	bl sub_08000768
	ldr r0, _08151FD0 @ =gUnk_02029AE8
	ldr r0, [r0]
	ldrb r0, [r0, #0x19]
	cmp r0, #4
	bhi _08152082
	lsls r0, r0, #2
	ldr r1, _08151FD4 @ =_08151FD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08151FCC: .4byte gUnk_03000F84
_08151FD0: .4byte gUnk_02029AE8
_08151FD4: .4byte _08151FD8
_08151FD8: @ jump table
	.4byte _08152082 @ case 0
	.4byte _08151FEC @ case 1
	.4byte _08151FF6 @ case 2
	.4byte _08151FFC @ case 3
	.4byte _08152044 @ case 4
_08151FEC:
	bl sub_0814B314
	movs r0, #6
	strb r0, [r7]
	b _08152082
_08151FF6:
	movs r0, #0xc
	strb r0, [r7]
	b _08152082
_08151FFC:
	movs r0, #2
	strb r0, [r7]
	b _08152082
_08152002:
	movs r0, #4
	bl sub_0814531C
	ldr r0, _08152040 @ =gUnk_02029AE8
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #0xd
	strb r0, [r7]
_08152014:
	ldr r4, _08152040 @ =gUnk_02029AE8
	ldr r0, [r4]
	ldrb r0, [r0, #0x19]
	cmp r0, #2
	beq _08152024
	movs r0, #1
	bl sub_0814B548
_08152024:
	movs r0, #1
	bl sub_0814B1E0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08152082
	ldr r0, [r4]
	ldrb r0, [r0, #0x19]
	cmp r0, #2
	bne _08152044
	movs r0, #0xe
	strb r0, [r7]
	b _08152082
	.align 2, 0
_08152040: .4byte gUnk_02029AE8
_08152044:
	movs r0, #0xff
	strb r0, [r7]
	b _08152082
_0815204A:
	bl sub_081452EC
	ldr r0, _0815205C @ =gUnk_03000E60
	ldr r2, _08152060 @ =sub_081547D4
	movs r1, #1
	movs r3, #1
	bl sub_08002D54
	b _08152082
	.align 2, 0
_0815205C: .4byte gUnk_03000E60
_08152060: .4byte sub_081547D4
_08152064:
	bl sub_081452EC
	ldr r1, _08152090 @ =gUnk_03000FA0
	adds r2, r1, #0
	adds r2, #0x98
	movs r3, #0
	movs r0, #1
	strb r0, [r2]
	adds r1, #0x9c
	str r3, [r1]
	ldr r0, _08152094 @ =gUnk_03000E60
	ldr r2, _08152098 @ =sub_0804767C
	movs r1, #1
	bl sub_08002D38
_08152082:
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08152090: .4byte gUnk_03000FA0
_08152094: .4byte gUnk_03000E60
_08152098: .4byte sub_0804767C

	thumb_func_start sub_0815209C
sub_0815209C: @ 0x0815209C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08152118 @ =gUnk_02029AEC
	ldr r2, [r0]
	ldrh r3, [r2, #0x1a]
	movs r1, #1
	adds r0, r3, #0
	eors r0, r1
	strh r0, [r2, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r3, #0
	beq _081520C2
	adds r0, #0x6c
_081520C2:
	mov r8, r0
	movs r6, #0
	lsls r1, r4, #1
	ldr r0, _0815211C @ =gUnk_03000D60
	mov sb, r0
	ldr r0, _08152120 @ =gUnk_086A231A
	adds r7, r1, r0
	mov r0, r8
	lsls r5, r0, #5
_081520D4:
	mov r0, sb
	ldr r4, [r0, #0x10]
	adds r4, r4, r5
	ldrh r1, [r7]
	lsls r2, r6, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _08152124 @ =gUnk_08761224
	bl sub_0801C7C0
	adds r1, r0, #0
	movs r0, #0x88
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x12
	movs r3, #1
	bl sub_0801A924
	movs r0, #0x90
	lsls r0, r0, #3
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #2
	ble _081520D4
	mov r0, r8
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08152118: .4byte gUnk_02029AEC
_0815211C: .4byte gUnk_03000D60
_08152120: .4byte gUnk_086A231A
_08152124: .4byte gUnk_08761224

	thumb_func_start sub_08152128
sub_08152128: @ 0x08152128
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x80
	lsls r0, r0, #7
	mov sb, r0
	ldr r1, _08152208 @ =gUnk_0200833C
	mov sl, r1
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r2, _0815220C @ =0x01000050
	add r0, sp, #0xc
	bl CpuFastSet
	mov r7, sl
	adds r7, #0x2a
	movs r0, #0
	movs r1, #1
	add r1, sb
	mov r8, r1
	subs r5, r5, r4
	mov ip, r5
	lsls r4, r4, #1
	str r4, [sp, #0x10]
_0815216E:
	movs r2, #0
	adds r3, r7, #0
	adds r3, #0x50
	adds r4, r0, #1
_08152176:
	lsls r1, r2, #1
	adds r1, r1, r7
	mov r5, sb
	adds r0, r6, r5
	strh r0, [r1]
	mov r5, r8
	adds r0, r6, r5
	strh r0, [r1, #0x28]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r2, #0x11
	bls _08152176
	adds r7, r3, #0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0815216E
	mov r3, ip
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, [sp, #0x10]
	add r1, sl
	ldr r0, _08152210 @ =gUnk_03000D60
	ldr r2, [r0, #0x14]
	ldr r4, [sp, #0x10]
	adds r2, r4, r2
	ldr r5, _08152214 @ =0x0000020A
	adds r2, r2, r5
	movs r0, #8
	mov r8, r0
	ldr r4, _08152218 @ =gUnk_02029AE8
	ldr r0, [r4]
	adds r6, r0, #0
	adds r6, #0x40
	ldrh r5, [r6]
	adds r4, r5, #1
	strh r4, [r6]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r5, #3
	subs r4, r4, r5
	lsls r4, r4, #2
	adds r4, #0x44
	adds r0, r0, r4
	mov r5, r8
	str r5, [sp]
	movs r4, #0x28
	str r4, [sp, #4]
	movs r4, #0x40
	str r4, [sp, #8]
	bl sub_08000CD4
	ldr r0, _08152218 @ =gUnk_02029AE8
	ldr r1, [r0]
	adds r1, #0x40
	ldrh r0, [r1]
	movs r2, #3
	ands r0, r2
	strh r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08152208: .4byte gUnk_0200833C
_0815220C: .4byte 0x01000050
_08152210: .4byte gUnk_03000D60
_08152214: .4byte 0x0000020A
_08152218: .4byte gUnk_02029AE8

	thumb_func_start sub_0815221C
sub_0815221C: @ 0x0815221C
	push {r4, lr}
	sub sp, #8
	ldr r4, _081522C0 @ =gUnk_02029AE8
	ldr r0, [r4]
	ldrh r0, [r0, #0x12]
	bl sub_0815209C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r4]
	ldrh r0, [r0, #0x12]
	movs r2, #0
	movs r3, #0x13
	bl sub_08152128
	ldr r0, _081522C4 @ =gUnk_03000D60
	ldr r0, [r0, #0x10]
	movs r1, #0xf7
	lsls r1, r1, #6
	adds r2, r0, r1
	ldr r1, _081522C8 @ =gUnk_08623678
	ldr r0, [r4]
	ldrh r0, [r0, #0x12]
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xff
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r2, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	ldr r3, _081522CC @ =0x040000D4
	ldr r1, _081522D0 @ =gUnk_086A2310
	ldr r0, [r4]
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r2, _081522D4 @ =gUnk_08724208
	lsls r0, r0, #1
	adds r0, #4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #5
	ldr r1, _081522D8 @ =gUnk_0861E288
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, _081522DC @ =gUnk_02002720
	str r0, [r3, #4]
	ldr r0, _081522E0 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _081522D0 @ =gUnk_086A2310
	ldr r0, _081522C0 @ =gUnk_02029AE8
	ldr r0, [r0]
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #7
	ldrh r1, [r2]
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r2, _081522E4 @ =0x06016000
	adds r1, r2, #0
	movs r2, #0x20
	bl CpuFastSet
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081522C0: .4byte gUnk_02029AE8
_081522C4: .4byte gUnk_03000D60
_081522C8: .4byte gUnk_08623678
_081522CC: .4byte 0x040000D4
_081522D0: .4byte gUnk_086A2310
_081522D4: .4byte gUnk_08724208
_081522D8: .4byte gUnk_0861E288
_081522DC: .4byte gUnk_02002720
_081522E0: .4byte 0x80000010
_081522E4: .4byte 0x06016000

	thumb_func_start sub_081522E8
sub_081522E8: @ 0x081522E8
	push {r4, r5, lr}
	ldr r4, _0815232C @ =gUnk_0861DF68
	ldr r5, _08152330 @ =gUnk_02029AE8
	ldr r0, [r5]
	ldr r1, [r0, #4]
	adds r0, r4, #0
	movs r2, #0x80
	bl CpuFastSet
	movs r0, #0x80
	lsls r0, r0, #2
	adds r4, r4, r0
	ldr r0, [r5]
	ldr r1, [r0, #4]
	adds r0, r4, #0
	movs r2, #0x20
	bl CpuFastSet
	ldr r0, _08152334 @ =gUnk_0861E288
	ldr r1, [r5]
	ldr r1, [r1, #8]
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _08152338 @ =gUnk_087C1C24
	ldr r1, [r5]
	ldr r1, [r1, #4]
	movs r2, #0x20
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0815232C: .4byte gUnk_0861DF68
_08152330: .4byte gUnk_02029AE8
_08152334: .4byte gUnk_0861E288
_08152338: .4byte gUnk_087C1C24

	thumb_func_start sub_0815233C
sub_0815233C: @ 0x0815233C
	ldr r0, _08152358 @ =0x04000006
	ldrb r0, [r0]
	ldr r2, _0815235C @ =0x04000018
	ldr r3, _08152360 @ =0x0400001C
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	bls _08152364
	movs r0, #0
	strh r0, [r3]
	strh r0, [r2]
	b _08152370
	.align 2, 0
_08152358: .4byte 0x04000006
_0815235C: .4byte 0x04000018
_08152360: .4byte 0x0400001C
_08152364:
	ldr r0, _08152374 @ =gUnk_02029AEC
	ldr r1, [r0]
	ldrh r0, [r1, #0x18]
	strh r0, [r2]
	ldrh r0, [r1, #0x18]
	strh r0, [r3]
_08152370:
	bx lr
	.align 2, 0
_08152374: .4byte gUnk_02029AEC

	thumb_func_start sub_08152378
sub_08152378: @ 0x08152378
	movs r0, #0
	bx lr

	thumb_func_start sub_0815237C
sub_0815237C: @ 0x0815237C
	push {lr}
	bl sub_08012C64
	lsls r0, r0, #9
	ldr r1, _0815238C @ =0x06010100
	adds r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_0815238C: .4byte 0x06010100

	thumb_func_start sub_08152390
sub_08152390: @ 0x08152390
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	mov sl, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0
	cmp r3, #1
	bne _081523B2
	ldr r0, _08152440 @ =0x00004056
_081523B2:
	mov r8, r0
	mov r6, sl
	add r0, sp, #0x10
	movs r4, #0
	strh r4, [r0]
	mov r1, sp
	ldr r2, _08152444 @ =0x01000008
	bl CpuSet
	mov r5, sp
	add r5, sb
	strb r4, [r5]
	subs r5, #1
	mov r4, sb
_081523CE:
	cmp r4, #0
	beq _08152418
	adds r0, r6, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x30
	strb r0, [r5]
	subs r5, #1
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r6, r0, #0
	cmp r6, #0
	bne _081523CE
	cmp r4, #0
	beq _08152418
	movs r0, #0x20
	strb r0, [r5]
	subs r5, #1
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08152418
	movs r1, #0x20
_0815240A:
	strb r1, [r5]
	subs r5, #1
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0815240A
_08152418:
	mov r0, sl
	cmp r0, #0
	bne _08152448
	movs r2, #0
	mov r1, sb
	subs r1, #1
	cmp r2, r1
	bge _08152438
_08152428:
	mov r3, r8
	strh r3, [r7]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r7, #2
	cmp r2, r1
	blt _08152428
_08152438:
	ldr r1, _08152440 @ =0x00004056
	adds r0, r1, #0
	strh r0, [r7]
	b _0815248C
	.align 2, 0
_08152440: .4byte 0x00004056
_08152444: .4byte 0x01000008
_08152448:
	movs r2, #0
	cmp r2, sb
	bhs _0815248C
_0815244E:
	mov r3, sp
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _0815245E
	mov r0, r8
	strh r0, [r7]
	b _08152480
_0815245E:
	ldrb r0, [r1]
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08152474
	ldr r3, _08152470 @ =0x00004056
	adds r0, r1, r3
	b _08152476
	.align 2, 0
_08152470: .4byte 0x00004056
_08152474:
	mov r0, r8
_08152476:
	strh r0, [r7]
	cmp r1, #0
	beq _08152480
	ldr r1, _0815249C @ =0x00004056
	mov r8, r1
_08152480:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r7, #2
	cmp r2, sb
	blo _0815244E
_0815248C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0815249C: .4byte 0x00004056

	thumb_func_start sub_081524A0
sub_081524A0: @ 0x081524A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
	add r1, sp, #0xc
	movs r0, #0
	strh r0, [r1]
	ldr r6, _08152654 @ =gUnk_02029A88
	ldr r1, [r6]
	ldr r7, _08152658 @ =0x01000280
	add r0, sp, #0xc
	adds r2, r7, #0
	bl CpuSet
	movs r1, #0xd
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _081524D6
	movs r1, #4
_081524D6:
	ldr r0, [r6]
	movs r2, #0xb3
	lsls r2, r2, #2
	adds r2, r0, r2
	str r2, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp]
	movs r5, #0
	str r5, [sp, #4]
	str r1, [sp, #8]
	adds r0, r2, #0
	movs r1, #0x12
	movs r2, #6
	movs r3, #2
	bl sub_0801BB1C
	ldr r0, _0815265C @ =gUnk_03000E20
	ldr r1, [r6]
	ldr r2, [r0, #0x14]
	movs r4, #0x14
	ldr r3, _08152660 @ =0x00003E2F
	adds r0, r1, r3
	ldrb r3, [r0]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	ldr r3, _08152664 @ =0x00003F14
	adds r0, r0, r3
	adds r0, r1, r0
	str r4, [sp]
	movs r3, #0x40
	str r3, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0x20
	bl sub_08000CD4
	ldr r1, [r6]
	ldr r0, _08152660 @ =0x00003E2F
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r6]
	ldr r2, _08152660 @ =0x00003E2F
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #0xf
	ands r0, r2
	strb r0, [r1]
	ldr r4, [r6]
	movs r3, #0xa0
	lsls r3, r3, #3
	adds r3, r4, r3
	str r3, [sp, #0x18]
	mov r0, sp
	adds r0, #0xe
	strh r5, [r0]
	ldr r1, [sp, #0x18]
	adds r2, r7, #0
	bl CpuSet
	ldr r0, _08152668 @ =0x00000812
	adds r0, r0, r4
	mov sb, r0
	ldr r0, [r6]
	ldr r1, _0815266C @ =0x00003F08
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r0, _08152670 @ =gUnk_03000D60
	lsls r1, r4, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	mov sl, r0
	movs r2, #0x28
	mov r8, r2
_0815256C:
	movs r0, #0x80
	lsls r0, r0, #7
	ldr r3, [sp, #0x14]
	cmp r3, #0
	bne _0815257A
	movs r0, #0xd0
	lsls r0, r0, #8
_0815257A:
	adds r6, r0, #0
	cmp r5, #0
	bne _08152598
	ldr r0, _08152654 @ =gUnk_02029A88
	ldr r0, [r0]
	ldr r1, _08152674 @ =0x00003F12
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _08152598
	ldr r2, [sp, #0x14]
	cmp r2, #1
	bne _08152598
	movs r6, #0xa0
	lsls r6, r6, #7
_08152598:
	ldr r0, _08152678 @ =gUnk_0874A6CC
	mov r1, r8
	movs r2, #0
	bl sub_0801C790
	adds r1, r0, #0
	mov r0, sl
	bl sub_0801C75C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r0, r3, #6
	add sl, r0
	movs r2, #0
	movs r0, #0x80
	add r0, sb
	mov ip, r0
	adds r7, r5, #1
	movs r1, #1
	add r8, r1
	cmp r2, r3
	bhs _081525E4
	adds r5, r6, #1
_081525C6:
	lsls r0, r2, #1
	add r0, sb
	adds r1, r4, r6
	strh r1, [r0]
	adds r0, #0x40
	adds r1, r4, r5
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, r3
	blo _081525C6
_081525E4:
	mov sb, ip
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r5, #1
	bls _0815256C
	ldr r0, _08152670 @ =gUnk_03000D60
	ldr r2, [r0, #0x14]
	movs r5, #0x14
	ldr r4, _08152654 @ =gUnk_02029A88
	ldr r0, [r4]
	ldr r3, _08152660 @ =0x00003E2F
	adds r1, r0, r3
	ldrb r3, [r1]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _08152664 @ =0x00003F14
	adds r1, r1, r3
	adds r0, r0, r1
	str r5, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x18]
	movs r3, #0x20
	bl sub_08000CD4
	ldr r1, [r4]
	ldr r0, _08152660 @ =0x00003E2F
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	ldr r2, _08152660 @ =0x00003E2F
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #0xf
	ands r0, r2
	strb r0, [r1]
	ldr r0, [sp, #0x10]
	movs r1, #1
	bl sub_081544F8
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08152654: .4byte gUnk_02029A88
_08152658: .4byte 0x01000280
_0815265C: .4byte gUnk_03000E20
_08152660: .4byte 0x00003E2F
_08152664: .4byte 0x00003F14
_08152668: .4byte 0x00000812
_0815266C: .4byte 0x00003F08
_08152670: .4byte gUnk_03000D60
_08152674: .4byte 0x00003F12
_08152678: .4byte gUnk_0874A6CC

	thumb_func_start sub_0815267C
sub_0815267C: @ 0x0815267C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bne _081526D2
	lsls r4, r0, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08152878 @ =gUnk_02029A88
	ldr r7, [r5]
	movs r0, #0
	bl sub_080030AC
	movs r0, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_08002A24
	ldr r1, [r5]
	movs r2, #0x34
	muls r4, r2, r4
	adds r1, r1, r4
	ldr r2, _0815287C @ =0x00003E64
	adds r1, r1, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_080030AC
	ldr r0, _08152880 @ =0x00003E34
	adds r4, r4, r0
	ldr r0, [r5]
	adds r0, r0, r4
	adds r1, r7, #0
	movs r2, #0x30
	bl memcpy2
_081526D2:
	movs r0, #0x34
	mov r1, sb
	muls r1, r0, r1
	str r1, [sp, #0x48]
	ldr r2, _08152880 @ =0x00003E34
	adds r0, r1, r2
	ldr r4, _08152878 @ =gUnk_02029A88
	ldr r2, [r4]
	adds r1, r2, r0
	adds r0, r1, #0
	adds r0, #0x24
	ldrb r0, [r0]
	str r0, [sp, #0x30]
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	str r0, [sp, #0x34]
	adds r0, r1, #0
	adds r0, #0x29
	ldrb r0, [r0]
	str r0, [sp, #0x38]
	adds r3, r1, #0
	adds r3, #0x14
	ldrh r0, [r1, #0x26]
	str r0, [sp, #0x3c]
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	str r0, [sp, #0x40]
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	str r0, [sp, #0x44]
	movs r1, #0
	ldr r4, _08152884 @ =0x00003E32
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, sb
	bne _08152722
	movs r1, #1
_08152722:
	str r1, [sp, #0x2c]
	ldr r1, _08152888 @ =0x00003F0A
	adds r0, r2, r1
	ldrh r0, [r0]
	adds r0, #0xa
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0x2e
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r7, #5
	ldr r4, _0815288C @ =gUnk_03000D60
	ldr r0, [r4, #0x10]
	adds r6, r0, r1
	ldr r1, [sp, #0x48]
	adds r0, r2, r1
	ldr r2, _0815287C @ =0x00003E64
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _081527D6
	movs r4, #0x8a
	mov r8, r4
	str r4, [sp]
	movs r0, #1
	mov sl, r0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r3, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	movs r4, #0x80
	lsls r4, r4, #2
	adds r6, r6, r4
	ldr r5, _08152890 @ =gUnk_08623678
	ldr r1, [sp, #0x3c]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r1, [r0]
	mov r2, r8
	str r2, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	adds r6, r6, r4
	ldr r1, [sp, #0x34]
	ldr r2, _08152894 @ =0x0000019F
	adds r0, r1, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	add r0, sp, #0xc
	movs r2, #0x10
	movs r3, #0xff
	bl sub_0801995C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r1, r0, #1
	mov r2, sp
	adds r2, r2, r1
	adds r2, #0xc
	movs r1, #0x89
	strb r1, [r2]
	add r0, sp
	adds r0, #0xc
	ldr r1, [sp, #0x38]
	movs r2, #0
	bl sub_0801B644
	mov r4, r8
	str r4, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r6, #0
	add r1, sp, #0xc
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
_081527D6:
	movs r0, #0x6e
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r2, _08152878 @ =gUnk_02029A88
	ldr r1, [r2]
	adds r4, r1, r0
	str r4, [sp, #0x28]
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r1, r0
	mov sl, r1
	mov r4, sb
	lsls r0, r4, #2
	add r0, sb
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	ldr r1, _08152898 @ =gUnk_03000E20
	lsrs r0, r0, #0xf
	ldr r1, [r1, #0x14]
	adds r1, r1, r0
	str r1, [sp, #0x20]
	ldr r2, _0815288C @ =gUnk_03000D60
	ldr r1, [r2, #0x14]
	adds r1, r1, r0
	str r1, [sp, #0x24]
	movs r1, #0xd
	ldr r4, [sp, #0x2c]
	cmp r4, #0
	beq _0815281E
	movs r1, #4
_0815281E:
	movs r0, #0xa
	str r0, [sp]
	movs r4, #0
	str r4, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x28]
	movs r1, #0xa
	movs r2, #0xb
	movs r3, #2
	bl sub_0801BB1C
	str r4, [sp, #0x1c]
	add r0, sp, #0x1c
	ldr r2, _0815289C @ =0x01000037
	mov r1, sl
	bl CpuFastSet
	ldr r1, _08152878 @ =gUnk_02029A88
	ldr r0, [r1]
	ldr r2, [sp, #0x48]
	adds r0, r0, r2
	ldr r4, _0815287C @ =0x00003E64
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _081528D0
	ldr r1, _081528A0 @ =gUnk_086A2330
	movs r0, #0x8a
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _081528A8
	ldr r0, _081528A4 @ =gUnk_086B7530
	adds r0, #0x5d
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	b _081528AA
	.align 2, 0
_08152878: .4byte gUnk_02029A88
_0815287C: .4byte 0x00003E64
_08152880: .4byte 0x00003E34
_08152884: .4byte 0x00003E32
_08152888: .4byte 0x00003F0A
_0815288C: .4byte gUnk_03000D60
_08152890: .4byte gUnk_08623678
_08152894: .4byte 0x0000019F
_08152898: .4byte gUnk_03000E20
_0815289C: .4byte 0x01000037
_081528A0: .4byte gUnk_086A2330
_081528A4: .4byte gUnk_086B7530
_081528A8:
	movs r1, #0xf
_081528AA:
	lsls r3, r1, #0xc
	mov r1, sl
	adds r1, #0x52
	movs r2, #0
	adds r4, r3, #1
_081528B4:
	adds r0, r7, r3
	strh r0, [r1]
	adds r0, r7, r4
	strh r0, [r1, #0x14]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #2
	adds r0, r7, #2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r2, #7
	bls _081528B4
	b _081529C2
_081528D0:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _081528E8
	ldr r0, _081528E4 @ =gUnk_086B7530
	adds r0, #0x5d
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	b _081528EA
	.align 2, 0
_081528E4: .4byte gUnk_086B7530
_081528E8:
	movs r1, #0xf
_081528EA:
	lsls r3, r1, #0xc
	adds r0, r3, #0
	adds r0, #0xb3
	mov r2, sl
	strh r0, [r2, #0x16]
	adds r0, #1
	strh r0, [r2, #0x18]
	mov r0, sl
	adds r0, #0x1a
	movs r1, #2
	ldr r2, [sp, #0x30]
	movs r3, #0
	bl sub_08152390
	movs r0, #0xd0
	lsls r0, r0, #8
	ldr r4, [sp, #0x2c]
	cmp r4, #0
	beq _08152914
	movs r0, #0x80
	lsls r0, r0, #7
_08152914:
	adds r3, r0, #0
	mov r1, sl
	adds r1, #0x2a
	movs r2, #0
	mov r6, sl
	adds r6, #0x66
	movs r0, #0x8e
	add r0, sl
	mov r8, r0
	movs r4, #0xbc
	add r4, sl
	mov sb, r4
	mov r0, sl
	adds r0, #0xc2
	str r0, [sp, #0x50]
	mov r4, sl
	adds r4, #0xc0
	str r4, [sp, #0x4c]
	adds r4, r3, #1
	adds r5, r4, #0
_0815293C:
	adds r0, r7, r3
	strh r0, [r1]
	adds r0, r7, r5
	strh r0, [r1, #0x14]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #2
	adds r0, r7, #2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r2, #7
	bls _0815293C
	adds r1, r6, #0
	movs r2, #0
	adds r5, r4, #0
_0815295C:
	adds r0, r7, r3
	strh r0, [r1]
	adds r0, r7, r5
	strh r0, [r1, #0x14]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #2
	adds r0, r7, #2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r2, #7
	bls _0815295C
	mov r1, r8
	movs r2, #0
_0815297A:
	adds r0, r7, r3
	strh r0, [r1]
	adds r0, r7, r4
	strh r0, [r1, #0x14]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #2
	adds r0, r7, #2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r2, #7
	bls _0815297A
	mov r0, sb
	movs r1, #2
	ldr r2, [sp, #0x40]
	movs r3, #0
	bl sub_08152390
	ldr r0, [sp, #0x50]
	movs r1, #2
	ldr r2, [sp, #0x44]
	movs r3, #1
	bl sub_08152390
	ldr r0, _08152A5C @ =gUnk_02029A88
	ldr r1, [r0]
	ldr r0, _08152A60 @ =0x00003F06
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r4, [sp, #0x4c]
	strh r0, [r4]
_081529C2:
	movs r0, #0xb
	mov sb, r0
	ldr r4, _08152A5C @ =gUnk_02029A88
	ldr r0, [r4]
	ldr r2, _08152A64 @ =0x00003E2F
	adds r1, r0, r2
	ldrb r2, [r1]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	ldr r2, _08152A68 @ =0x00003F14
	adds r1, r1, r2
	adds r0, r0, r1
	mov r1, sb
	str r1, [sp]
	movs r2, #0x14
	mov r8, r2
	str r2, [sp, #4]
	movs r7, #0x40
	str r7, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x20]
	movs r3, #0xa
	bl sub_08000CD4
	ldr r1, [r4]
	ldr r0, _08152A64 @ =0x00003E2F
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	ldr r2, _08152A64 @ =0x00003E2F
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r5, #0xf
	ands r0, r5
	strb r0, [r1]
	ldr r0, [r4]
	adds r1, r0, r2
	ldrb r2, [r1]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	ldr r2, _08152A68 @ =0x00003F14
	adds r1, r1, r2
	adds r0, r0, r1
	mov r1, sb
	str r1, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	mov r1, sl
	ldr r2, [sp, #0x24]
	movs r3, #0xa
	bl sub_08000CD4
	ldr r1, [r4]
	ldr r0, _08152A64 @ =0x00003E2F
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	ldr r2, _08152A64 @ =0x00003E2F
	adds r1, r1, r2
	ldrb r0, [r1]
	ands r0, r5
	strb r0, [r1]
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08152A5C: .4byte gUnk_02029A88
_08152A60: .4byte 0x00003F06
_08152A64: .4byte 0x00003E2F
_08152A68: .4byte 0x00003F14

	thumb_func_start sub_08152A6C
sub_08152A6C: @ 0x08152A6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	ldr r0, _08152C48 @ =gUnk_03000E20
	ldr r4, [r0, #0x14]
	movs r1, #0x83
	lsls r1, r1, #2
	adds r4, r4, r1
	ldr r3, _08152C4C @ =gUnk_03000D60
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [sp, #0x20]
	ldr r5, _08152C50 @ =gUnk_02029A88
	ldr r0, [r5]
	ldr r2, _08152C54 @ =0x00003F0C
	adds r1, r0, r2
	ldrh r7, [r1]
	lsls r2, r7, #5
	ldr r1, [r3, #0x10]
	adds r6, r1, r2
	movs r1, #0x12
	str r1, [sp]
	movs r3, #0
	mov sl, r3
	str r3, [sp, #4]
	movs r1, #4
	str r1, [sp, #8]
	movs r1, #0x12
	movs r2, #0xc
	movs r3, #2
	bl sub_0801BB1C
	ldr r1, [r5]
	movs r3, #0xc
	ldr r2, _08152C58 @ =0x00003E2F
	adds r0, r1, r2
	ldrb r2, [r0]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	ldr r2, _08152C5C @ =0x00003F14
	adds r0, r0, r2
	adds r0, r1, r0
	str r3, [sp]
	movs r2, #0x24
	str r2, [sp, #4]
	movs r2, #0x40
	str r2, [sp, #8]
	adds r2, r4, #0
	movs r3, #0x12
	bl sub_08000CD4
	ldr r1, [r5]
	ldr r3, _08152C58 @ =0x00003E2F
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r4, #0xf
	ands r0, r4
	strb r0, [r1]
	ldr r0, [r5]
	mov sb, r0
	movs r1, #0xd8
	lsls r1, r1, #1
	add r1, sb
	mov r8, r1
	add r0, sp, #0x1c
	mov r2, sl
	strh r2, [r0]
	ldr r2, _08152C60 @ =0x010000D8
	bl CpuSet
	ldr r1, [r5]
	ldr r3, _08152C64 @ =0x00003ED0
	adds r3, r1, r3
	str r3, [sp, #0x40]
	ldr r5, _08152C68 @ =0x00003EF4
	adds r0, r1, r5
	ldrb r2, [r0]
	ldr r3, _08152C6C @ =0x00003EF8
	adds r0, r1, r3
	ldrb r0, [r0]
	str r0, [sp, #0x24]
	adds r5, #5
	adds r0, r1, r5
	ldrb r0, [r0]
	str r0, [sp, #0x28]
	ldr r0, _08152C70 @ =0x00003EE4
	adds r5, r1, r0
	ldr r3, [sp, #0x40]
	ldrh r3, [r3, #0x26]
	str r3, [sp, #0x2c]
	ldr r3, _08152C74 @ =0x00003EFA
	adds r0, r1, r3
	ldrb r0, [r0]
	str r0, [sp, #0x34]
	adds r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	str r0, [sp, #0x38]
	movs r0, #0x80
	lsls r0, r0, #7
	mov sl, r0
	adds r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	str r0, [sp, #0x30]
	ldr r3, _08152C78 @ =gUnk_0861D584
	ldr r0, _08152C7C @ =0x00003EFD
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #1]
	str r0, [sp, #0x3c]
	movs r3, #0xf6
	lsls r3, r3, #1
	add r3, sb
	ldr r0, _08152C80 @ =gUnk_086B7530
	adds r1, r0, #0
	adds r1, #0x5d
	ldrb r1, [r1]
	ands r4, r1
	lsls r4, r4, #0xc
	adds r4, #0xb3
	strh r4, [r3]
	adds r0, #0x5e
	ldrb r0, [r0]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	adds r0, #0xb4
	strh r0, [r3, #2]
	movs r0, #0xf9
	lsls r0, r0, #1
	add r0, sb
	movs r1, #2
	movs r3, #0
	bl sub_08152390
	movs r0, #0x8a
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	ldr r3, _08152C84 @ =0x0000021E
	add r3, sb
	movs r1, #0
	movs r2, #1
	add r2, sl
	mov sb, r2
_08152BB6:
	mov r4, sl
	adds r0, r7, r4
	strh r0, [r3]
	adds r0, r7, r2
	strh r0, [r3, #0x24]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, #2
	adds r0, r7, #2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r1, #7
	bls _08152BB6
	movs r5, #0x80
	lsls r5, r5, #2
	adds r6, r6, r5
	ldr r0, [sp, #0x40]
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0x32
	bne _08152C8C
	ldr r1, _08152C88 @ =gUnk_08623678
	ldr r2, [sp, #0x2c]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r5, [r0]
	movs r0, #0x8a
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0xe
	movs r3, #1
	bl sub_0801A924
	movs r3, #0x80
	lsls r3, r3, #1
	add r3, r8
	movs r1, #0
	mov r4, r8
	adds r4, #0x7e
	mov r5, r8
	adds r5, #0xca
	str r5, [sp, #0x54]
	mov r0, r8
	adds r0, #0x60
	str r0, [sp, #0x44]
	mov r2, r8
	adds r2, #0x66
	str r2, [sp, #0x4c]
	subs r5, #0x66
	str r5, [sp, #0x48]
	ldr r0, [sp, #0x3c]
	lsls r0, r0, #2
	str r0, [sp, #0x50]
	mov r2, sb
_08152C2A:
	mov r5, sl
	adds r0, r7, r5
	strh r0, [r3]
	adds r0, r7, r2
	strh r0, [r3, #0x24]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, #2
	adds r0, r7, #2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r1, #0xd
	bls _08152C2A
	b _08152D02
	.align 2, 0
_08152C48: .4byte gUnk_03000E20
_08152C4C: .4byte gUnk_03000D60
_08152C50: .4byte gUnk_02029A88
_08152C54: .4byte 0x00003F0C
_08152C58: .4byte 0x00003E2F
_08152C5C: .4byte 0x00003F14
_08152C60: .4byte 0x010000D8
_08152C64: .4byte 0x00003ED0
_08152C68: .4byte 0x00003EF4
_08152C6C: .4byte 0x00003EF8
_08152C70: .4byte 0x00003EE4
_08152C74: .4byte 0x00003EFA
_08152C78: .4byte gUnk_0861D584
_08152C7C: .4byte 0x00003EFD
_08152C80: .4byte gUnk_086B7530
_08152C84: .4byte 0x0000021E
_08152C88: .4byte gUnk_08623678
_08152C8C:
	ldr r0, _08152EB8 @ =gUnk_08762CE8
	ldr r2, _08152EBC @ =gUnk_0861DCAC
	ldr r3, [sp, #0x2c]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldrb r2, [r1]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1a
	lsrs r2, r2, #6
	bl sub_0801C7C0
	adds r5, r0, #0
	bl sub_0801993C
	movs r0, #0x88
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_0801A924
	movs r3, #0x80
	lsls r3, r3, #1
	add r3, r8
	movs r1, #0
	mov r4, r8
	adds r4, #0x7e
	mov r5, r8
	adds r5, #0xca
	str r5, [sp, #0x54]
	mov r0, r8
	adds r0, #0x60
	str r0, [sp, #0x44]
	mov r2, r8
	adds r2, #0x66
	str r2, [sp, #0x4c]
	subs r5, #0x66
	str r5, [sp, #0x48]
	ldr r0, [sp, #0x3c]
	lsls r0, r0, #2
	str r0, [sp, #0x50]
	mov r2, sb
_08152CE6:
	mov r5, sl
	adds r0, r7, r5
	strh r0, [r3]
	adds r0, r7, r2
	strh r0, [r3, #0x24]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, #2
	adds r0, r7, #2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r1, #0xd
	bls _08152CE6
_08152D02:
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r6, r6, r0
	ldr r1, _08152EC0 @ =gUnk_08623678
	ldr r2, [sp, #0x24]
	ldr r3, _08152EC4 @ =0x0000019F
	adds r0, r2, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	add r0, sp, #0xc
	movs r2, #0x10
	movs r3, #0xff
	bl sub_0801995C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	subs r0, r2, #1
	mov r1, sp
	adds r1, r1, r0
	adds r1, #0xc
	movs r0, #0x89
	strb r0, [r1]
	mov r0, sp
	adds r0, r0, r2
	adds r0, #0xc
	ldr r1, [sp, #0x28]
	movs r2, #0
	bl sub_0801B644
	movs r0, #0x8a
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r6, #0
	add r1, sp, #0xc
	movs r2, #8
	movs r3, #1
	bl sub_0801A924
	adds r3, r4, #0
	movs r1, #0
	mov r2, sb
_08152D58:
	mov r4, sl
	adds r0, r7, r4
	strh r0, [r3]
	adds r0, r7, r2
	strh r0, [r3, #0x24]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, #2
	adds r0, r7, #2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r1, #7
	bls _08152D58
	movs r5, #0x80
	lsls r5, r5, #2
	adds r6, r6, r5
	ldr r1, _08152EC8 @ =gUnk_086A2338
	add r0, sp, #0xc
	movs r2, #0x10
	movs r3, #0xff
	bl sub_0801995C
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r1, _08152ECC @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	mov r0, sp
	adds r0, r0, r2
	adds r0, #0xc
	ldr r1, [sp, #0x30]
	movs r2, #0
	bl sub_0801B644
	movs r0, #0x8a
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r6, #0
	add r1, sp, #0xc
	movs r2, #6
	movs r3, #1
	bl sub_0801A924
	ldr r3, [sp, #0x54]
	movs r1, #0
	mov r2, sb
_08152DB8:
	mov r4, sl
	adds r0, r7, r4
	strh r0, [r3]
	adds r0, r7, r2
	strh r0, [r3, #0x24]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, #2
	adds r0, r7, #2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r1, #5
	bls _08152DB8
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r6, r6, r5
	ldr r0, [sp, #0x44]
	movs r1, #2
	ldr r2, [sp, #0x34]
	movs r3, #0
	bl sub_08152390
	ldr r0, [sp, #0x4c]
	movs r1, #2
	ldr r2, [sp, #0x38]
	movs r3, #1
	bl sub_08152390
	ldr r0, _08152ED0 @ =gUnk_02029A88
	ldr r1, [r0]
	ldr r0, _08152ED4 @ =0x00003F06
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r3, [sp, #0x48]
	strh r0, [r3]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080197D4
	ldr r0, _08152EB8 @ =gUnk_08762CE8
	ldr r1, _08152EBC @ =gUnk_0861DCAC
	ldr r4, [sp, #0x50]
	adds r1, r4, r1
	ldrb r2, [r1]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1a
	lsrs r2, r2, #6
	bl sub_0801C7C0
	adds r5, r0, #0
	movs r0, #0x88
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0xe
	movs r3, #1
	bl sub_0801A924
	movs r3, #0xa4
	lsls r3, r3, #1
	add r3, r8
	movs r1, #0
	mov r2, sb
_08152E46:
	mov r5, sl
	adds r0, r7, r5
	strh r0, [r3]
	adds r0, r7, r2
	strh r0, [r3, #0x24]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, #2
	adds r0, r7, #2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r1, #0xd
	bls _08152E46
	movs r3, #0xc
	ldr r4, _08152ED0 @ =gUnk_02029A88
	ldr r0, [r4]
	ldr r2, _08152ED8 @ =0x00003E2F
	adds r1, r0, r2
	ldrb r2, [r1]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	ldr r5, _08152EDC @ =0x00003F14
	adds r1, r1, r5
	adds r0, r0, r1
	str r3, [sp]
	movs r1, #0x24
	str r1, [sp, #4]
	movs r1, #0x40
	str r1, [sp, #8]
	mov r1, r8
	ldr r2, [sp, #0x20]
	movs r3, #0x12
	bl sub_08000CD4
	ldr r1, [r4]
	ldr r0, _08152ED8 @ =0x00003E2F
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	ldr r2, _08152ED8 @ =0x00003E2F
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #0xf
	ands r0, r2
	strb r0, [r1]
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08152EB8: .4byte gUnk_08762CE8
_08152EBC: .4byte gUnk_0861DCAC
_08152EC0: .4byte gUnk_08623678
_08152EC4: .4byte 0x0000019F
_08152EC8: .4byte gUnk_086A2338
_08152ECC: .4byte 0xFFFF0000
_08152ED0: .4byte gUnk_02029A88
_08152ED4: .4byte 0x00003F06
_08152ED8: .4byte 0x00003E2F
_08152EDC: .4byte 0x00003F14

	thumb_func_start sub_08152EE0
sub_08152EE0: @ 0x08152EE0
	push {r4, lr}
	sub sp, #0x24
	ldr r1, _08152F10 @ =gUnk_0824DB98
	add r0, sp, #0x1c
	movs r2, #8
	bl memcpy
	movs r1, #8
	ldr r0, _08152F14 @ =gUnk_086D7BF0
	ldrb r0, [r0, #0x10]
	lsrs r4, r0, #4
	ldr r0, _08152F18 @ =gUnk_02029A88
	ldr r2, [r0]
	ldr r3, _08152F1C @ =0x00003E30
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #1
	blt _08152F60
	cmp r0, #2
	ble _08152F20
	cmp r0, #3
	bne _08152F60
	movs r4, #1
	b _08152F60
	.align 2, 0
_08152F10: .4byte gUnk_0824DB98
_08152F14: .4byte gUnk_086D7BF0
_08152F18: .4byte gUnk_02029A88
_08152F1C: .4byte 0x00003E30
_08152F20:
	ldr r1, _08152F94 @ =0x00003F12
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _08152F36
	ldr r3, _08152F98 @ =0x00003E33
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08152F36
	movs r4, #1
_08152F36:
	ldr r0, _08152F9C @ =gUnk_02029A88
	ldr r0, [r0]
	ldr r1, _08152FA0 @ =0x00003F10
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bhi _08152F60
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08152F60:
	adds r1, #0x30
	ldr r0, _08152F9C @ =gUnk_02029A88
	ldr r0, [r0]
	ldr r2, _08152F98 @ =0x00003E33
	adds r0, r0, r2
	ldrb r2, [r0]
	lsls r2, r2, #4
	adds r2, #0x64
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	add r0, sp, #0x1c
	bl sub_080022EC
	add sp, #0x24
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08152F94: .4byte 0x00003F12
_08152F98: .4byte 0x00003E33
_08152F9C: .4byte gUnk_02029A88
_08152FA0: .4byte 0x00003F10

	thumb_func_start sub_08152FA4
sub_08152FA4: @ 0x08152FA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	movs r7, #0xfa
	cmp r1, #1
	bne _08152FC4
	ldr r7, _08153054 @ =0x00000235
_08152FC4:
	ldr r0, _08153058 @ =gUnk_086B75B4
	ldr r1, _0815305C @ =0x06008000
	movs r5, #0
	str r5, [sp]
	movs r4, #1
	str r4, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0801A59C
	ldr r0, _08153060 @ =gUnk_086D7C08
	ldr r1, _08153064 @ =0x06012000
	str r5, [sp]
	str r4, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0801A59C
	ldr r0, _08153068 @ =gUnk_087C2990
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r5, [sp]
	str r4, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0801A59C
	ldr r1, _0815306C @ =0x000040D4
	adds r0, r6, #0
	bl memzero
	ldr r4, _08153070 @ =gUnk_02029A88
	str r6, [r4]
	ldr r0, _08153074 @ =0x00003E2D
	adds r2, r6, r0
	mov r1, r8
	strb r1, [r2]
	adds r3, r6, #0
	ldr r5, _08153078 @ =0x00003F06
	adds r0, r3, r5
	movs r1, #0
	mov r8, r1
	strh r7, [r0]
	adds r1, r7, #1
	adds r5, #2
	adds r0, r3, r5
	strh r1, [r0]
	adds r1, #0x2e
	adds r5, #2
	adds r0, r3, r5
	strh r1, [r0]
	adds r1, #0x90
	adds r5, #2
	adds r0, r3, r5
	strh r1, [r0]
	ldr r0, _0815307C @ =0x00000123
	adds r1, r7, r0
	adds r5, #2
	adds r0, r3, r5
	strh r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	bne _08153084
	movs r0, #0x1f
	bl sub_081452CC
	ldr r0, [r4]
	ldr r1, _08153080 @ =0x00003E2C
	adds r0, r0, r1
	mov r5, r8
	b _0815309A
	.align 2, 0
_08153054: .4byte 0x00000235
_08153058: .4byte gUnk_086B75B4
_0815305C: .4byte 0x06008000
_08153060: .4byte gUnk_086D7C08
_08153064: .4byte 0x06012000
_08153068: .4byte gUnk_087C2990
_0815306C: .4byte 0x000040D4
_08153070: .4byte gUnk_02029A88
_08153074: .4byte 0x00003E2D
_08153078: .4byte 0x00003F06
_0815307C: .4byte 0x00000123
_08153080: .4byte 0x00003E2C
_08153084:
	cmp r0, #2
	bne _08153094
	ldr r1, _08153090 @ =0x00003E2C
	adds r0, r3, r1
	mov r5, r8
	b _0815309A
	.align 2, 0
_08153090: .4byte 0x00003E2C
_08153094:
	ldr r1, _081530AC @ =0x00003E2C
	adds r0, r6, r1
	mov r5, sb
_0815309A:
	strb r5, [r0]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081530AC: .4byte 0x00003E2C

	thumb_func_start sub_081530B0
sub_081530B0: @ 0x081530B0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, _08153154 @ =gUnk_02000000
	movs r0, #2
	bl sub_08020828
	adds r2, r0, #0
	adds r0, #0x52
	ldrb r0, [r0]
	adds r7, r5, #0
	adds r7, #0x24
	strb r0, [r7]
	ldr r1, _08153158 @ =0x0000118B
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x28
	strb r0, [r1]
	ldr r1, _0815315C @ =0x0000118C
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x29
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x30
	subs r1, #0x15
	movs r2, #8
	bl CpuSet
	ldr r0, _08153160 @ =0x00001197
	adds r6, r5, r0
	ldrb r0, [r6]
	bl sub_08020BA8
	strh r0, [r5, #0x26]
	ldr r1, _08153164 @ =0x0000118D
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x2a
	strb r0, [r1]
	ldr r1, _08153168 @ =0x0000118E
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x2b
	strb r0, [r1]
	cmp r4, #0
	beq _0815319A
	bl sub_08020D60
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #2
	movs r1, #0
	bl sub_0802069C
	adds r2, r0, #0
	cmp r2, #0
	bne _08153138
	movs r0, #2
	bl sub_08020828
	adds r2, r0, #0
_08153138:
	adds r0, r2, #0
	adds r0, #0x52
	ldrb r0, [r0]
	strb r0, [r7]
	cmp r4, #0x32
	bne _08153170
	ldr r2, _0815316C @ =gUnk_08621228
	ldrb r1, [r6]
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0]
	b _08153186
	.align 2, 0
_08153154: .4byte gUnk_02000000
_08153158: .4byte 0x0000118B
_0815315C: .4byte 0x0000118C
_08153160: .4byte 0x00001197
_08153164: .4byte 0x0000118D
_08153168: .4byte 0x0000118E
_0815316C: .4byte gUnk_08621228
_08153170:
	bl sub_08020D60
	ldr r2, _081531A0 @ =gUnk_0861D584
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r1]
_08153186:
	strh r0, [r5, #0x26]
	ldr r0, _081531A4 @ =gUnk_02000000
	ldr r1, _081531A8 @ =0x000021CC
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, #1
	strb r4, [r0]
_0815319A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081531A0: .4byte gUnk_0861D584
_081531A4: .4byte gUnk_02000000
_081531A8: .4byte 0x000021CC

	thumb_func_start sub_081531AC
sub_081531AC: @ 0x081531AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sb, r1
	ldr r7, _08153204 @ =gUnk_02029A88
	ldr r5, [r7]
	ldr r0, _08153208 @ =0x00003F10
	mov r8, r0
	adds r4, r5, r0
	ldrh r0, [r4]
	adds r0, #1
	movs r1, #0xf0
	lsls r1, r1, #2
	bl __modsi3
	movs r1, #0
	mov sl, r1
	movs r6, #0
	strh r0, [r4]
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0xa
	bne _081531E4
	bl _08153E40
_081531E4:
	cmp r0, #0xa
	bgt _0815324C
	cmp r0, #4
	bne _081531EE
	b _081538D8
_081531EE:
	cmp r0, #4
	bgt _0815321C
	cmp r0, #1
	bne _081531F8
	b _08153548
_081531F8:
	cmp r0, #1
	bgt _0815320C
	cmp r0, #0
	beq _081532A0
	bl _081544C2
	.align 2, 0
_08153204: .4byte gUnk_02029A88
_08153208: .4byte 0x00003F10
_0815320C:
	cmp r0, #2
	bne _08153212
	b _081535E0
_08153212:
	cmp r0, #3
	bne _08153218
	b _081537C4
_08153218:
	bl _081544C2
_0815321C:
	cmp r0, #7
	bne _08153224
	bl sub_08153C28
_08153224:
	cmp r0, #7
	bgt _08153238
	cmp r0, #5
	bne _0815322E
	b _081538F4
_0815322E:
	cmp r0, #6
	bne _08153234
	b _0815396A
_08153234:
	bl _081544C2
_08153238:
	cmp r0, #8
	bne _08153240
	bl sub_08154274
_08153240:
	cmp r0, #9
	bne _08153248
	bl _08153E20
_08153248:
	bl _081544C2
_0815324C:
	cmp r0, #0xf
	bne _08153254
	bl sub_0815417C
_08153254:
	cmp r0, #0xf
	bgt _0815326C
	cmp r0, #0xc
	bne _08153260
	bl _08154002
_08153260:
	cmp r0, #0xc
	ble _08153268
	bl sub_08154068
_08153268:
	bl _08153E8A
_0815326C:
	cmp r0, #0x12
	bne _08153274
	bl sub_08154358
_08153274:
	cmp r0, #0x12
	bgt _0815328C
	cmp r0, #0x10
	bne _08153280
	bl sub_08154244
_08153280:
	cmp r0, #0x11
	bne _08153288
	bl sub_081542F4
_08153288:
	bl _081544C2
_0815328C:
	cmp r0, #0xff
	ble _08153294
	bl _081544C2
_08153294:
	cmp r0, #0xfc
	bge _0815329C
	bl _081544C2
_0815329C:
	bl _081544DC
_081532A0:
	add r0, sp, #0x24
	strh r6, [r0]
	ldr r0, _0815339C @ =0x040000D4
	add r3, sp, #0x24
	str r3, [r0]
	ldr r2, _081533A0 @ =gUnk_02002400
	str r2, [r0, #4]
	ldr r3, _081533A4 @ =0x81000100
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	add r1, sp, #0x24
	strh r6, [r1]
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r2, r1
	str r2, [r0, #4]
	str r3, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, _081533A8 @ =0x00003E2D
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _081532D2
	b _081533FE
_081532D2:
	ldr r0, _081533AC @ =gUnk_03000DD0
	ldrh r1, [r0, #0xa]
	strh r6, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r2, [r0, #0xc]
	strh r1, [r0, #0xc]
	ldrh r1, [r0, #0xe]
	strh r6, [r0, #0xe]
	ldrh r1, [r0, #0xe]
	ldrh r2, [r0, #0x10]
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0x12]
	strh r6, [r0, #0x12]
	ldrh r1, [r0, #0x12]
	ldrh r2, [r0, #0x14]
	strh r1, [r0, #0x14]
	ldrh r1, [r0, #0x16]
	strh r6, [r0, #0x16]
	ldrh r1, [r0, #0x16]
	ldrh r2, [r0, #0x18]
	strh r1, [r0, #0x18]
	ldrh r1, [r0, #2]
	ldr r1, _081533B0 @ =0x00002F03
	strh r1, [r0, #2]
	ldrh r1, [r0, #4]
	ldr r1, _081533B4 @ =0x00002E02
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	ldr r1, _081533B8 @ =0x00002D08
	strh r1, [r0, #6]
	ldrh r1, [r0, #8]
	ldr r1, _081533BC @ =0x00002C09
	strh r1, [r0, #8]
	movs r1, #0xfa
	lsls r1, r1, #5
	strh r1, [r0]
	adds r2, r0, #0
	adds r2, #0x4b
	ldrb r1, [r2]
	mov r3, sl
	strb r3, [r2]
	ldrb r1, [r2]
	adds r0, #0x4a
	ldrb r2, [r0]
	strb r1, [r0]
	ldr r1, _081533C0 @ =gUnk_03001070
	movs r2, #0xc0
	lsls r2, r2, #0x13
	str r2, [r1, #0x10]
	ldr r0, _081533C4 @ =0x06007800
	str r0, [r1, #0x14]
	ldr r1, _081533C8 @ =gUnk_03001090
	str r2, [r1, #0x10]
	ldr r0, _081533CC @ =0x06007000
	str r0, [r1, #0x14]
	ldr r1, _081533D0 @ =gUnk_03000D60
	ldr r2, _081533D4 @ =0x06008000
	str r2, [r1, #0x10]
	ldr r0, _081533D8 @ =0x06006800
	str r0, [r1, #0x14]
	ldr r1, _081533DC @ =gUnk_03000E20
	str r2, [r1, #0x10]
	ldr r0, _081533E0 @ =0x06006000
	str r0, [r1, #0x14]
	movs r0, #0
	bl sub_080030AC
	movs r0, #1
	movs r1, #0
	adds r2, r5, #0
	bl sub_08002A24
	ldr r1, [r7]
	movs r6, #0xfc
	lsls r6, r6, #6
	adds r1, r1, r6
	strb r0, [r1]
	movs r0, #1
	bl sub_080030AC
	ldr r0, [r7]
	ldr r1, _081533E4 @ =0x00003ED0
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x30
	bl memcpy2
	ldr r3, [r7]
	adds r0, r3, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _081533EC
	ldr r2, _081533E8 @ =0x00003F12
	adds r1, r3, r2
	movs r2, #1
	movs r0, #1
	strh r0, [r1]
	subs r6, #0xcd
	adds r0, r3, r6
	strb r2, [r0]
	b _081533FE
	.align 2, 0
_0815339C: .4byte 0x040000D4
_081533A0: .4byte gUnk_02002400
_081533A4: .4byte 0x81000100
_081533A8: .4byte 0x00003E2D
_081533AC: .4byte gUnk_03000DD0
_081533B0: .4byte 0x00002F03
_081533B4: .4byte 0x00002E02
_081533B8: .4byte 0x00002D08
_081533BC: .4byte 0x00002C09
_081533C0: .4byte gUnk_03001070
_081533C4: .4byte 0x06007800
_081533C8: .4byte gUnk_03001090
_081533CC: .4byte 0x06007000
_081533D0: .4byte gUnk_03000D60
_081533D4: .4byte 0x06008000
_081533D8: .4byte 0x06006800
_081533DC: .4byte gUnk_03000E20
_081533E0: .4byte 0x06006000
_081533E4: .4byte 0x00003ED0
_081533E8: .4byte 0x00003F12
_081533EC:
	ldr r0, _0815351C @ =gUnk_03001060
	ldrb r0, [r0]
	movs r1, #3
	eors r0, r1
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	ldr r2, _08153520 @ =0x00003E33
	adds r1, r3, r2
	strb r0, [r1]
_081533FE:
	ldr r0, _08153524 @ =gUnk_086BC3D8
	ldr r4, _08153528 @ =gUnk_02029A88
	ldr r1, [r4]
	movs r6, #1
	str r6, [sp]
	str r6, [sp, #4]
	movs r2, #0
	movs r3, #0x14
	bl sub_0801A59C
	ldr r0, [r4]
	ldr r3, _0815352C @ =gUnk_03000D60
	mov r8, r3
	ldr r2, _08153530 @ =0x00003F06
	adds r1, r0, r2
	ldrh r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r3, #0x10]
	adds r1, r1, r2
	movs r2, #0x10
	bl CpuSet
	ldr r0, _08153534 @ =gUnk_03001070
	ldr r2, [r0, #0x14]
	ldr r0, [r4]
	ldr r3, _08153538 @ =0x00003E2F
	adds r1, r0, r3
	ldrb r3, [r1]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _0815353C @ =0x00003F14
	adds r1, r1, r3
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r4]
	ldr r0, _08153538 @ =0x00003E2F
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	ldr r2, _08153538 @ =0x00003E2F
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r5, #0xf
	ands r0, r5
	strb r0, [r1]
	ldr r0, _08153540 @ =gUnk_03001090
	ldr r2, [r0, #0x14]
	ldr r0, [r4]
	ldr r3, _08153538 @ =0x00003E2F
	adds r1, r0, r3
	ldrb r3, [r1]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _0815353C @ =0x00003F14
	adds r1, r1, r3
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r4]
	ldr r0, _08153538 @ =0x00003E2F
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	ldr r2, _08153538 @ =0x00003E2F
	adds r1, r1, r2
	ldrb r0, [r1]
	ands r0, r5
	strb r0, [r1]
	mov r3, r8
	ldr r2, [r3, #0x14]
	ldr r0, [r4]
	ldr r3, _08153538 @ =0x00003E2F
	adds r1, r0, r3
	ldrb r3, [r1]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _0815353C @ =0x00003F14
	adds r1, r1, r3
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r4]
	ldr r0, _08153538 @ =0x00003E2F
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	ldr r2, _08153538 @ =0x00003E2F
	adds r1, r1, r2
	ldrb r0, [r1]
	ands r0, r5
	strb r0, [r1]
	ldr r0, _08153544 @ =gUnk_03000E20
	ldr r2, [r0, #0x14]
	ldr r0, [r4]
	ldr r3, _08153538 @ =0x00003E2F
	adds r1, r0, r3
	ldrb r3, [r1]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _0815353C @ =0x00003F14
	adds r1, r1, r3
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r4]
	ldr r0, _08153538 @ =0x00003E2F
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	ldr r2, _08153538 @ =0x00003E2F
	adds r1, r1, r2
	ldrb r0, [r1]
	ands r0, r5
	strb r0, [r1]
	mov r3, sb
	strb r6, [r3]
	bl _081544C2
	.align 2, 0
_0815351C: .4byte gUnk_03001060
_08153520: .4byte 0x00003E33
_08153524: .4byte gUnk_086BC3D8
_08153528: .4byte gUnk_02029A88
_0815352C: .4byte gUnk_03000D60
_08153530: .4byte 0x00003F06
_08153534: .4byte gUnk_03001070
_08153538: .4byte 0x00003E2F
_0815353C: .4byte 0x00003F14
_08153540: .4byte gUnk_03001090
_08153544: .4byte gUnk_03000E20
_08153548:
	ldr r1, _081535A8 @ =gUnk_03000D60
	ldr r6, _081535AC @ =0x00003F0A
	adds r0, r5, r6
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, [r1, #0x10]
	adds r5, r1, r0
	adds r0, r5, #0
	bl sub_0801BF14
	ldr r0, _081535B0 @ =gUnk_02002B18
	ldr r0, [r0]
	ldr r6, [r0]
	movs r4, #0
_08153564:
	lsls r0, r4, #6
	adds r0, r5, r0
	ldrh r1, [r6]
	movs r2, #1
	movs r3, #0
	bl sub_0801B0C8
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, #2
	cmp r4, #4
	bls _08153564
	ldr r0, _081535B4 @ =gUnk_087C2424
	ldr r1, _081535B8 @ =gUnk_03001070
	ldr r1, [r1, #0x14]
	movs r2, #0xa0
	lsls r2, r2, #1
	bl CpuFastSet
	ldr r2, _081535BC @ =gUnk_02029A88
	ldr r0, [r2]
	ldr r1, _081535C0 @ =0x00003E2E
	adds r0, r0, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r0, _081535C4 @ =gUnk_03001060
	ldrb r1, [r0]
	cmp r1, #2
	bhi _081535CC
	ldr r0, [r2]
	ldr r2, _081535C8 @ =0x00003E32
	adds r0, r0, r2
	b _081535D4
	.align 2, 0
_081535A8: .4byte gUnk_03000D60
_081535AC: .4byte 0x00003F0A
_081535B0: .4byte gUnk_02002B18
_081535B4: .4byte gUnk_087C2424
_081535B8: .4byte gUnk_03001070
_081535BC: .4byte gUnk_02029A88
_081535C0: .4byte 0x00003E2E
_081535C4: .4byte gUnk_03001060
_081535C8: .4byte 0x00003E32
_081535CC:
	ldr r0, [r2]
	ldr r3, _081535DC @ =0x00003E32
	adds r0, r0, r3
	movs r1, #0
_081535D4:
	strb r1, [r0]
	movs r0, #2
	bl _081544BE
	.align 2, 0
_081535DC: .4byte 0x00003E32
_081535E0:
	ldr r1, _08153608 @ =0x00003E2D
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08153614
	ldr r2, _0815360C @ =0x00003E31
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08153614
	ldr r3, _08153610 @ =0x00003E30
	adds r1, r5, r3
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x27
	movs r1, #1
	bl sub_081524A0
	b _08153752
	.align 2, 0
_08153608: .4byte 0x00003E2D
_0815360C: .4byte 0x00003E31
_08153610: .4byte 0x00003E30
_08153614:
	ldr r1, _0815365C @ =gUnk_02029A88
	ldr r0, [r1]
	ldr r6, _08153660 @ =0x00003E30
	adds r0, r0, r6
	movs r5, #0
	strb r5, [r0]
	ldr r1, [r1]
	ldr r2, _08153664 @ =0x00003E2D
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _08153674
	ldr r3, _08153668 @ =0x000021E0
	adds r0, r1, r3
	adds r6, #0xde
	adds r1, r1, r6
	ldrh r1, [r1]
	ldr r2, _0815366C @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r3, #0xff
	str r3, [sp, #0x14]
	str r5, [sp, #0x18]
	str r5, [sp, #0x1c]
	ldr r3, _08153670 @ =0x00010088
	str r3, [sp, #0x20]
	movs r3, #0x2a
	bl sub_08015D50
	b _081536F6
	.align 2, 0
_0815365C: .4byte gUnk_02029A88
_08153660: .4byte 0x00003E30
_08153664: .4byte 0x00003E2D
_08153668: .4byte 0x000021E0
_0815366C: .4byte gUnk_0874A6CC
_08153670: .4byte 0x00010088
_08153674:
	ldr r2, _08153684 @ =0x00003E2C
	adds r0, r1, r2
	ldrb r4, [r0]
	cmp r4, #0
	beq _08153688
	cmp r4, #1
	beq _081536C8
	b _081536F6
	.align 2, 0
_08153684: .4byte 0x00003E2C
_08153688:
	ldr r3, _081536B8 @ =0x000021E0
	adds r0, r1, r3
	ldr r6, _081536BC @ =0x00003F0E
	adds r1, r1, r6
	ldrh r1, [r1]
	ldr r2, _081536C0 @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r3, #0xff
	str r3, [sp, #0x14]
	str r5, [sp, #0x18]
	str r5, [sp, #0x1c]
	ldr r3, _081536C4 @ =0x00010088
	str r3, [sp, #0x20]
	movs r3, #0x21
	bl sub_08015D50
	b _081536F6
	.align 2, 0
_081536B8: .4byte 0x000021E0
_081536BC: .4byte 0x00003F0E
_081536C0: .4byte gUnk_0874A6CC
_081536C4: .4byte 0x00010088
_081536C8:
	ldr r2, _08153784 @ =0x000021E0
	adds r0, r1, r2
	ldr r3, _08153788 @ =0x00003F0E
	adds r1, r1, r3
	ldrh r1, [r1]
	ldr r2, _0815378C @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x14]
	str r5, [sp, #0x18]
	str r5, [sp, #0x1c]
	ldr r3, _08153790 @ =0x00010088
	str r3, [sp, #0x20]
	movs r3, #0x1c
	bl sub_08015D50
_081536F6:
	movs r6, #0
	ldr r7, _08153794 @ =gUnk_02029A88
_081536FA:
	lsls r4, r6, #0x18
	lsrs r4, r4, #0x18
	ldr r5, [r7]
	movs r0, #0
	bl sub_080030AC
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08002A24
	ldr r2, [r7]
	movs r1, #0x34
	muls r4, r1, r4
	adds r2, r2, r4
	ldr r1, _08153798 @ =0x00003E64
	adds r2, r2, r1
	strb r0, [r2]
	movs r0, #1
	bl sub_080030AC
	ldr r2, _0815379C @ =0x00003E34
	adds r4, r4, r2
	ldr r0, [r7]
	adds r0, r0, r4
	adds r1, r5, #0
	movs r2, #0x30
	bl memcpy2
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #2
	bls _081536FA
	movs r6, #0
_08153740:
	adds r0, r6, #0
	movs r1, #0
	bl sub_0815267C
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #2
	bls _08153740
_08153752:
	ldr r2, _08153794 @ =gUnk_02029A88
	ldr r1, [r2]
	ldr r3, _081537A0 @ =0x00003E2E
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _081537BE
	ldr r6, _081537A4 @ =0x00003E2D
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _081537AC
	adds r3, #3
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _081537AC
	movs r0, #6
	mov r6, sb
	strb r0, [r6]
	ldr r0, [r2]
	ldr r1, _081537A8 @ =0x00003E30
	adds r0, r0, r1
	b _08153948
	.align 2, 0
_08153784: .4byte 0x000021E0
_08153788: .4byte 0x00003F0E
_0815378C: .4byte gUnk_0874A6CC
_08153790: .4byte 0x00010088
_08153794: .4byte gUnk_02029A88
_08153798: .4byte 0x00003E64
_0815379C: .4byte 0x00003E34
_081537A0: .4byte 0x00003E2E
_081537A4: .4byte 0x00003E2D
_081537A8: .4byte 0x00003E30
_081537AC:
	movs r0, #7
	mov r2, sb
	strb r0, [r2]
	bl sub_0801670C
	bl sub_0801670C
	bl _081544C2
_081537BE:
	movs r0, #3
	bl _0815433E
_081537C4:
	ldr r0, _081538B8 @ =gUnk_0861DF68
	adds r1, r5, #0
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _081538BC @ =gUnk_087C1C24
	ldr r1, [r7]
	movs r2, #0x10
	bl CpuFastSet
	ldr r7, [r7]
	movs r6, #0
	movs r0, #0x1f
	mov r8, r0
_081537E0:
	adds r0, r6, #4
	lsls r0, r0, #5
	adds r5, r7, r0
	adds r0, r6, #0
	adds r0, #0xd
	lsls r0, r0, #5
	adds r3, r7, r0
	movs r4, #0
	adds r6, #1
	mov sl, r6
_081537F4:
	ldrh r1, [r5]
	movs r2, #0x1f
	ands r2, r1
	asrs r2, r2, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	mov r6, r8
	ands r0, r6
	asrs r0, r0, #1
	lsls r0, r0, #5
	orrs r2, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	asrs r1, r1, #1
	lsls r1, r1, #0xa
	orrs r2, r1
	strh r2, [r3]
	adds r3, #2
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r4, #0xf
	bls _081537F4
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _081537E0
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r5, r7, r2
	movs r6, #0xf0
	lsls r6, r6, #1
	adds r3, r7, r6
	movs r4, #0
	movs r6, #0x1f
_0815383E:
	ldrh r1, [r5]
	movs r2, #0x1f
	ands r2, r1
	asrs r2, r2, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	ands r0, r6
	asrs r0, r0, #1
	lsls r0, r0, #5
	orrs r2, r0
	lsrs r1, r1, #0x1a
	ands r1, r6
	asrs r1, r1, #1
	lsls r1, r1, #0xa
	orrs r2, r1
	strh r2, [r3]
	adds r3, #2
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r4, #0xf
	bls _0815383E
	movs r4, #0x80
	lsls r4, r4, #1
	ldr r5, _081538C0 @ =gUnk_02029A88
	ldr r3, [r5]
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_08138580
	ldr r1, [r5]
	ldr r2, _081538C4 @ =0x00003E24
	adds r1, r1, r2
	str r0, [r1]
	ldr r3, _081538C8 @ =gUnk_0861E288
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_08138580
	ldr r1, [r5]
	ldr r3, _081538CC @ =0x00003E28
	adds r2, r1, r3
	str r0, [r2]
	ldr r6, _081538D0 @ =0x00003E2E
	adds r1, r1, r6
	movs r0, #0
	strb r0, [r1]
	movs r0, #4
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r5]
	ldr r2, _081538D4 @ =0x00003F04
	adds r0, r0, r2
	movs r1, #5
	strh r1, [r0]
	bl _081544C2
	.align 2, 0
_081538B8: .4byte gUnk_0861DF68
_081538BC: .4byte gUnk_087C1C24
_081538C0: .4byte gUnk_02029A88
_081538C4: .4byte 0x00003E24
_081538C8: .4byte gUnk_0861E288
_081538CC: .4byte 0x00003E28
_081538D0: .4byte 0x00003E2E
_081538D4: .4byte 0x00003F04
_081538D8:
	bl sub_0801670C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _081538E6
	bl _081544C2
_081538E6:
	ldr r0, [r7]
	ldr r3, _081538F0 @ =0x00003F04
	adds r0, r0, r3
	bl _081544BC
	.align 2, 0
_081538F0: .4byte 0x00003F04
_081538F4:
	ldr r1, _08153950 @ =0x00003E24
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_08139548
	cmp r0, #0
	bne _08153906
	bl _081544C2
_08153906:
	movs r6, #0
	adds r4, r7, #0
_0815390A:
	ldr r0, [r4]
	lsls r1, r6, #2
	ldr r2, _08153950 @ =0x00003E24
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08139468
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _0815390A
	ldr r2, _08153954 @ =gUnk_02029A88
	ldr r1, [r2]
	ldr r3, _08153958 @ =0x00003E2D
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08153964
	ldr r6, _0815395C @ =0x00003E31
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _08153964
	movs r0, #6
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r2]
	ldr r2, _08153960 @ =0x00003E30
	adds r0, r0, r2
_08153948:
	movs r1, #2
	strb r1, [r0]
	bl _081544C2
	.align 2, 0
_08153950: .4byte 0x00003E24
_08153954: .4byte gUnk_02029A88
_08153958: .4byte 0x00003E2D
_0815395C: .4byte 0x00003E31
_08153960: .4byte 0x00003E30
_08153964:
	movs r0, #7
	bl _0815433E
_0815396A:
	bl sub_0801A40C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #2
	bne _08153978
	b _08153BE4
_08153978:
	cmp r5, #2
	bgt _08153984
	cmp r5, #1
	beq _08153994
	bl _081544C2
_08153984:
	cmp r5, #0x40
	bne _0815398A
	b _08153C08
_0815398A:
	cmp r5, #0x80
	bne _08153990
	b _08153C08
_08153990:
	bl _081544C2
_08153994:
	ldr r7, _081539B8 @ =gUnk_02029A88
	ldr r6, [r7]
	ldr r1, _081539BC @ =0x00003E33
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08153A8C
	ldr r2, _081539C0 @ =0x00003F12
	adds r0, r6, r2
	ldrh r4, [r0]
	cmp r4, #0
	beq _081539C4
	movs r0, #0xb1
	bl PlaySE
	bl _081544C2
	.align 2, 0
_081539B8: .4byte gUnk_02029A88
_081539BC: .4byte 0x00003E33
_081539C0: .4byte 0x00003F12
_081539C4:
	movs r3, #3
	mov r8, r3
	movs r0, #0
	bl sub_080030AC
	movs r0, #1
	movs r1, #0
	adds r2, r6, #0
	bl sub_08002A24
	ldr r1, [r7]
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r1, r1, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_080030AC
	ldr r0, [r7]
	ldr r3, _08153A4C @ =0x00003ED0
	adds r0, r0, r3
	adds r1, r6, #0
	movs r2, #0x30
	bl memcpy2
	ldr r0, [r7]
	movs r6, #0xfc
	lsls r6, r6, #6
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #1
	bne _08153A64
	movs r0, #0xad
	bl PlaySE
	bl sub_08152A6C
	ldr r0, [r7]
	ldr r1, _08153A50 @ =0x00003E30
	adds r0, r0, r1
	strb r4, [r0]
	ldr r1, [r7]
	ldr r2, _08153A54 @ =0x000021E0
	adds r0, r1, r2
	ldr r3, _08153A58 @ =0x00003F0E
	adds r1, r1, r3
	ldrh r1, [r1]
	ldr r2, _08153A5C @ =gUnk_0874A6CC
	mov r6, r8
	str r6, [sp]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r3, _08153A60 @ =0x00010088
	str r3, [sp, #0x20]
	movs r3, #0x26
	bl sub_08015D50
	movs r0, #8
	b _08153D42
	.align 2, 0
_08153A4C: .4byte 0x00003ED0
_08153A50: .4byte 0x00003E30
_08153A54: .4byte 0x000021E0
_08153A58: .4byte 0x00003F0E
_08153A5C: .4byte gUnk_0874A6CC
_08153A60: .4byte 0x00010088
_08153A64:
	movs r0, #0x25
	movs r1, #0
	bl sub_081524A0
	ldr r0, [r7]
	ldr r2, _08153A84 @ =0x00003E30
	adds r0, r0, r2
	mov r3, r8
	strb r3, [r0]
	ldr r0, [r7]
	ldr r6, _08153A88 @ =0x00003F10
	adds r0, r0, r6
	strh r4, [r0]
	movs r0, #0x10
	b _08153D42
	.align 2, 0
_08153A84: .4byte 0x00003E30
_08153A88: .4byte 0x00003F10
_08153A8C:
	movs r0, #0xad
	bl PlaySE
	ldr r0, [r7]
	ldr r2, _08153BB8 @ =0x00003E31
	adds r0, r0, r2
	movs r4, #0
	strb r5, [r0]
	ldr r0, [r7]
	ldr r3, _08153BBC @ =0x00003E30
	adds r0, r0, r3
	strb r4, [r0]
	ldr r1, [r7]
	ldr r6, _08153BC0 @ =0x000021E0
	adds r0, r1, r6
	adds r2, #0xdd
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _08153BC4 @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r3, _08153BC8 @ =0x00010088
	str r3, [sp, #0x20]
	movs r3, #0x21
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	ldr r0, _08153BCC @ =gUnk_03000D60
	ldr r0, [r0, #0x14]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r6, r0, r5
	ldr r0, [r7]
	ldr r3, _08153BD0 @ =0x00003E2F
	adds r1, r0, r3
	ldrb r2, [r1]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	ldr r2, _08153BD4 @ =0x00003F14
	adds r1, r1, r2
	adds r0, r0, r1
	movs r1, #0
	adds r2, r6, #0
	movs r3, #0xd0
	lsls r3, r3, #1
	bl sub_08000C44
	ldr r1, [r7]
	ldr r3, _08153BD0 @ =0x00003E2F
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r7]
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r4, #0xf
	ands r0, r4
	strb r0, [r1]
	ldr r0, _08153BD8 @ =gUnk_03000E20
	ldr r0, [r0, #0x14]
	adds r6, r0, r5
	ldr r0, [r7]
	adds r1, r0, r3
	ldrb r2, [r1]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	ldr r2, _08153BD4 @ =0x00003F14
	adds r1, r1, r2
	adds r0, r0, r1
	movs r1, #0
	adds r2, r6, #0
	movs r3, #0xd0
	lsls r3, r3, #1
	bl sub_08000C44
	ldr r1, [r7]
	ldr r3, _08153BD0 @ =0x00003E2F
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r7]
	adds r1, r1, r3
	ldrb r0, [r1]
	ands r0, r4
	strb r0, [r1]
	movs r6, #0
_08153B5A:
	lsls r4, r6, #0x18
	lsrs r4, r4, #0x18
	ldr r5, [r7]
	movs r0, #0
	bl sub_080030AC
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08002A24
	ldr r2, [r7]
	movs r1, #0x34
	muls r4, r1, r4
	adds r2, r2, r4
	ldr r1, _08153BDC @ =0x00003E64
	adds r2, r2, r1
	strb r0, [r2]
	movs r0, #1
	bl sub_080030AC
	ldr r2, _08153BE0 @ =0x00003E34
	adds r4, r4, r2
	ldr r0, [r7]
	adds r0, r0, r4
	adds r1, r5, #0
	movs r2, #0x30
	bl memcpy2
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #2
	bls _08153B5A
	movs r6, #0
_08153BA0:
	adds r0, r6, #0
	movs r1, #0
	bl sub_0815267C
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #2
	bls _08153BA0
	movs r0, #7
	b _0815433E
	.align 2, 0
_08153BB8: .4byte 0x00003E31
_08153BBC: .4byte 0x00003E30
_08153BC0: .4byte 0x000021E0
_08153BC4: .4byte gUnk_0874A6CC
_08153BC8: .4byte 0x00010088
_08153BCC: .4byte gUnk_03000D60
_08153BD0: .4byte 0x00003E2F
_08153BD4: .4byte 0x00003F14
_08153BD8: .4byte gUnk_03000E20
_08153BDC: .4byte 0x00003E64
_08153BE0: .4byte 0x00003E34
_08153BE4:
	movs r0, #0xb0
	bl PlaySE
	ldr r1, [r7]
	ldr r6, _08153C00 @ =0x00003F04
	adds r2, r1, r6
	movs r0, #0xfe
	strh r0, [r2]
	ldr r0, _08153C04 @ =0x00003E30
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x11
	b _08153D42
	.align 2, 0
_08153C00: .4byte 0x00003F04
_08153C04: .4byte 0x00003E30
_08153C08:
	movs r0, #0xb2
	bl PlaySE
	ldr r0, _08153C20 @ =gUnk_02029A88
	ldr r1, [r0]
	ldr r2, _08153C24 @ =0x00003E33
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #1
	eors r0, r2
	strb r0, [r1]
	b _08153E00
	.align 2, 0
_08153C20: .4byte gUnk_02029A88
_08153C24: .4byte 0x00003E33

	thumb_func_start sub_08153C28
sub_08153C28: @ 0x08153C28
	bl sub_0801A40C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #2
	bne _08153C36
	b _08153D48
_08153C36:
	cmp r5, #2
	bgt _08153C42
	cmp r5, #1
	beq _08153C52
	bl _081544C2
_08153C42:
	cmp r5, #0x10
	bne _08153C48
	b _08153D9C
_08153C48:
	cmp r5, #0x20
	bne _08153C4E
	b _08153DBE
_08153C4E:
	bl _081544C2
_08153C52:
	movs r0, #0xad
	bl PlaySE
	ldr r2, [r7]
	ldr r3, _08153C6C @ =0x00003E2C
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08153C70
	cmp r0, #1
	beq _08153CE0
	bl _081544C2
	.align 2, 0
_08153C6C: .4byte 0x00003E2C
_08153C70:
	ldr r1, _08153CC8 @ =0x00003E32
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x34
	muls r0, r1, r0
	adds r0, r2, r0
	ldr r3, _08153CCC @ =0x00003E64
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08153CDC
	ldr r1, _08153CD0 @ =0x000021E0
	adds r0, r2, r1
	adds r3, #0xaa
	adds r1, r2, r3
	ldrh r1, [r1]
	ldr r2, _08153CD4 @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	str r5, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r3, _08153CD8 @ =0x00010088
	str r3, [sp, #0x20]
	movs r3, #0x22
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	ldr r0, [r7]
	add r0, r8
	strh r6, [r0]
	movs r0, #0x10
	bl _081544BE
	.align 2, 0
_08153CC8: .4byte 0x00003E32
_08153CCC: .4byte 0x00003E64
_08153CD0: .4byte 0x000021E0
_08153CD4: .4byte gUnk_0874A6CC
_08153CD8: .4byte 0x00010088
_08153CDC:
	movs r0, #0xd
	b _08153D42
_08153CE0:
	ldr r3, _08153D2C @ =0x00003E32
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #0x34
	muls r0, r1, r0
	adds r0, r2, r0
	ldr r6, _08153D30 @ =0x00003E64
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _08153D40
	ldr r1, _08153D34 @ =0x000021E0
	adds r0, r2, r1
	adds r3, #0xdc
	adds r1, r2, r3
	ldrh r1, [r1]
	ldr r2, _08153D38 @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	str r5, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r3, _08153D3C @ =0x00010088
	str r3, [sp, #0x20]
	movs r3, #0x1d
	bl sub_08015D50
	movs r0, #9
	b _081544BE
	.align 2, 0
_08153D2C: .4byte 0x00003E32
_08153D30: .4byte 0x00003E64
_08153D34: .4byte 0x000021E0
_08153D38: .4byte gUnk_0874A6CC
_08153D3C: .4byte 0x00010088
_08153D40:
	movs r0, #0xa
_08153D42:
	mov r1, sb
	strb r0, [r1]
	b _081544C2
_08153D48:
	movs r0, #0xb0
	bl PlaySE
	ldr r1, [r7]
	ldr r2, _08153D68 @ =0x00003E2D
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08153D5E
	cmp r0, #3
	bne _08153D6C
_08153D5E:
	movs r0, #0x11
	mov r3, sb
	strb r0, [r3]
	ldr r0, [r7]
	b _08154230
	.align 2, 0
_08153D68: .4byte 0x00003E2D
_08153D6C:
	cmp r0, #2
	bne _08153D88
	movs r0, #0x11
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r7]
	ldr r2, _08153D84 @ =0x00003F04
	adds r0, r0, r2
	movs r1, #0xfe
	strh r1, [r0]
	b _081544C2
	.align 2, 0
_08153D84: .4byte 0x00003F04
_08153D88:
	ldr r3, _08153D98 @ =0x00003E31
	adds r0, r1, r3
	mov r6, sl
	strb r6, [r0]
	mov r0, sb
	strb r5, [r0]
	b _081544C2
	.align 2, 0
_08153D98: .4byte 0x00003E31
_08153D9C:
	movs r0, #0xb2
	bl PlaySE
	ldr r0, [r7]
	ldr r2, _08153DB4 @ =0x00003E32
	adds r1, r0, r2
	ldrb r6, [r1]
	cmp r6, #1
	bhi _08153DB8
	adds r0, r6, #1
	b _08153DDA
	.align 2, 0
_08153DB4: .4byte 0x00003E32
_08153DB8:
	mov r3, sl
	strb r3, [r1]
	b _08153DDC
_08153DBE:
	movs r0, #0xb2
	bl PlaySE
	ldr r0, [r7]
	ldr r3, _08153DD4 @ =0x00003E32
	adds r1, r0, r3
	ldrb r6, [r1]
	cmp r6, #0
	beq _08153DD8
	subs r0, r6, #1
	b _08153DDA
	.align 2, 0
_08153DD4: .4byte 0x00003E32
_08153DD8:
	movs r0, #2
_08153DDA:
	strb r0, [r1]
_08153DDC:
	ldr r4, _08153E14 @ =gUnk_02029A88
	ldr r0, [r4]
	ldr r1, _08153E18 @ =0x00003E32
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	beq _08153E00
	adds r0, r6, #0
	movs r1, #0
	bl sub_0815267C
	ldr r0, [r4]
	ldr r2, _08153E18 @ =0x00003E32
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r1, #0
	bl sub_0815267C
_08153E00:
	ldr r2, _08153E1C @ =gUnk_03000820
	ldrb r1, [r2, #7]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08153E0E
	b _081544C2
_08153E0E:
	ldrb r0, [r2, #0xb]
	strb r0, [r2, #0xe]
	b _081544C2
	.align 2, 0
_08153E14: .4byte gUnk_02029A88
_08153E18: .4byte 0x00003E32
_08153E1C: .4byte gUnk_03000820
_08153E20:
	bl sub_0801670C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08153E2C
	b _081544C2
_08153E2C:
	bl sub_080197C0
	lsls r0, r0, #0x18
	movs r1, #0xa
	cmp r0, #0
	beq _08153E3A
	movs r1, #2
_08153E3A:
	mov r3, sb
	strb r1, [r3]
	b _081544C2
_08153E40:
	movs r0, #4
	bl sub_0814531C
	ldr r1, [r7]
	ldr r2, _08153F30 @ =0x00003F10
	adds r0, r1, r2
	strh r6, [r0]
	ldr r3, _08153F34 @ =0x000021E0
	adds r0, r1, r3
	subs r2, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _08153F38 @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r3, #0xff
	str r3, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r3, _08153F3C @ =0x00010088
	str r3, [sp, #0x20]
	movs r3, #0x1e
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #0xb
	mov r3, sb
	strb r0, [r3]
_08153E8A:
	ldr r7, _08153F40 @ =gUnk_02029A88
	ldr r0, [r7]
	ldr r6, _08153F30 @ =0x00003F10
	adds r0, r0, r6
	ldrh r0, [r0]
	cmp r0, #0xf
	bhi _08153E9A
	b _081544C2
_08153E9A:
	movs r0, #0
	bl sub_081530B0
	movs r0, #0xb8
	bl sub_08142FAC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0xb9
	bl sub_08142FAC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	orrs r0, r4
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08153F44 @ =0x000003E7
	cmp r1, r0
	bls _08153EC4
	adds r1, r0, #0
_08153EC4:
	movs r5, #0xff
	movs r0, #0xff
	lsls r0, r0, #8
	mov sl, r0
	adds r0, r1, #0
	mov r2, sl
	ands r0, r2
	lsrs r4, r0, #8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0xb8
	bl sub_08142FC4
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0xb9
	bl sub_08142FC4
	ldr r0, [r7]
	adds r1, r0, r6
	movs r6, #0
	strh r6, [r1]
	ldr r3, _08153F48 @ =0x00003E32
	adds r0, r0, r3
	ldrb r4, [r0]
	ldr r0, _08153F4C @ =gUnk_02000000
	adds r0, #0x25
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r0]
	movs r0, #0
	bl sub_080030AC
	movs r0, #0
	adds r1, r4, #0
	bl sub_08003038
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #1
	bl sub_080030AC
	cmp r4, #1
	bne _08153F54
	ldr r1, _08153F50 @ =gUnk_03001060
	ldr r0, [r7]
	ldr r3, _08153F48 @ =0x00003E32
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0xc
	b _08153FC8
	.align 2, 0
_08153F30: .4byte 0x00003F10
_08153F34: .4byte 0x000021E0
_08153F38: .4byte gUnk_0874A6CC
_08153F3C: .4byte 0x00010088
_08153F40: .4byte gUnk_02029A88
_08153F44: .4byte 0x000003E7
_08153F48: .4byte 0x00003E32
_08153F4C: .4byte gUnk_02000000
_08153F50: .4byte gUnk_03001060
_08153F54:
	movs r0, #0xb8
	bl sub_08142FAC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0xb9
	bl sub_08142FAC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	orrs r0, r4
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	mov r2, sl
	ands r0, r2
	lsrs r4, r0, #8
	ands r5, r1
	movs r0, #0xb8
	adds r1, r5, #0
	bl sub_08142FC4
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0xb9
	bl sub_08142FC4
	ldr r1, [r7]
	ldr r3, _08153FE4 @ =0x000021E0
	adds r0, r1, r3
	ldr r2, _08153FE8 @ =0x00003F0E
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _08153FEC @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	mov r3, r8
	str r3, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r3, _08153FF0 @ =0x00010088
	str r3, [sp, #0x20]
	movs r3, #0x20
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #0x10
_08153FC8:
	mov r6, sb
	strb r0, [r6]
	ldr r0, _08153FF4 @ =gUnk_02029A88
	ldr r0, [r0]
	ldr r1, _08153FF8 @ =0x00003E2D
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08153FFC
	movs r0, #0xa
	bl sub_081452CC
	b _081544C2
	.align 2, 0
_08153FE4: .4byte 0x000021E0
_08153FE8: .4byte 0x00003F0E
_08153FEC: .4byte gUnk_0874A6CC
_08153FF0: .4byte 0x00010088
_08153FF4: .4byte gUnk_02029A88
_08153FF8: .4byte 0x00003E2D
_08153FFC:
	bl sub_081452EC
	b _081544C2
_08154002:
	ldr r2, _08154054 @ =0x000021E0
	adds r0, r5, r2
	ldr r3, _08154058 @ =0x00003F0E
	adds r1, r5, r3
	ldrh r1, [r1]
	ldr r2, _0815405C @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r3, #0xff
	str r3, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r3, _08154060 @ =0x00010088
	str r3, [sp, #0x20]
	movs r3, #0x1f
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	ldr r0, [r7]
	ldr r1, _08154064 @ =0x00003E32
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl sub_0815267C
	ldr r0, [r7]
	add r0, r8
	strh r6, [r0]
	movs r0, #0xf
	mov r2, sb
	strb r0, [r2]
	b _081544C2
	.align 2, 0
_08154054: .4byte 0x000021E0
_08154058: .4byte 0x00003F0E
_0815405C: .4byte gUnk_0874A6CC
_08154060: .4byte 0x00010088
_08154064: .4byte 0x00003E32

	thumb_func_start sub_08154068
sub_08154068: @ 0x08154068
	strh r6, [r4]
	ldr r3, _0815410C @ =0x00003E32
	adds r0, r5, r3
	ldrb r4, [r0]
	movs r0, #0
	bl sub_080030AC
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08002A24
	ldr r1, [r7]
	movs r2, #0x34
	muls r4, r2, r4
	adds r1, r1, r4
	ldr r2, _08154110 @ =0x00003E64
	adds r1, r1, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_080030AC
	ldr r3, _08154114 @ =0x00003E34
	adds r1, r4, r3
	ldr r0, [r7]
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x30
	bl memcpy2
	ldr r3, [r7]
	adds r4, r3, r4
	ldr r0, _08154110 @ =0x00003E64
	adds r4, r4, r0
	ldrb r4, [r4]
	cmp r4, #1
	bne _08154130
	ldr r1, _08154118 @ =gUnk_03001060
	ldr r2, _0815410C @ =0x00003E32
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0815411C @ =gUnk_02000000
	ldr r2, _08154120 @ =0x000021E0
	adds r1, r3, #0
	bl memcpy2
	ldr r1, [r7]
	ldr r3, _08154120 @ =0x000021E0
	adds r0, r1, r3
	ldr r2, _08154124 @ =0x00003F0E
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _08154128 @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r3, _0815412C @ =0x00010088
	str r3, [sp, #0x20]
	movs r3, #0x24
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #0x15
	movs r1, #1
	bl sub_08142F7C
	movs r0, #0xf
	b _0815433E
	.align 2, 0
_0815410C: .4byte 0x00003E32
_08154110: .4byte 0x00003E64
_08154114: .4byte 0x00003E34
_08154118: .4byte gUnk_03001060
_0815411C: .4byte gUnk_02000000
_08154120: .4byte 0x000021E0
_08154124: .4byte 0x00003F0E
_08154128: .4byte gUnk_0874A6CC
_0815412C: .4byte 0x00010088
_08154130:
	ldr r1, _0815416C @ =0x000021E0
	adds r0, r3, r1
	ldr r2, _08154170 @ =0x00003F0E
	adds r1, r3, r2
	ldrh r1, [r1]
	ldr r2, _08154174 @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r3, #0xff
	str r3, [sp, #0x14]
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r3, _08154178 @ =0x00010088
	str r3, [sp, #0x20]
	movs r3, #0x25
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
	movs r0, #0x10
	b _0815433E
	.align 2, 0
_0815416C: .4byte 0x000021E0
_08154170: .4byte 0x00003F0E
_08154174: .4byte gUnk_0874A6CC
_08154178: .4byte 0x00010088

	thumb_func_start sub_0815417C
sub_0815417C: @ 0x0815417C
	bl sub_0801A40C
	lsls r0, r0, #0x10
	ldr r6, _081541AC @ =0xFFFF0000
	adds r0, r0, r6
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08154196
	ldr r0, [r7]
	add r0, r8
	ldrh r0, [r0]
	cmp r0, #0x64
	bls _081541BA
_08154196:
	ldr r0, [r7]
	ldr r1, _081541B0 @ =0x00003E2C
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _081541B4
	movs r0, #0x11
	mov r2, sb
	strb r0, [r2]
	b _081541BA
	.align 2, 0
_081541AC: .4byte 0xFFFF0000
_081541B0: .4byte 0x00003E2C
_081541B4:
	movs r0, #2
	mov r3, sb
	strb r0, [r3]
_081541BA:
	ldr r0, _081541D4 @ =gUnk_02029A88
	ldr r2, [r0]
	ldr r6, _081541D8 @ =0x00003E2D
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, #2
	bne _081541E0
	ldr r0, _081541DC @ =0x00003F04
	adds r1, r2, r0
	movs r0, #0xff
	strh r0, [r1]
	b _081544C2
	.align 2, 0
_081541D4: .4byte gUnk_02029A88
_081541D8: .4byte 0x00003E2D
_081541DC: .4byte 0x00003F04
_081541E0:
	ldr r1, _08154204 @ =0x00003E32
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x34
	muls r0, r1, r0
	ldr r3, _08154208 @ =0x00003E34
	adds r0, r0, r3
	adds r1, r2, r0
	ldr r6, _0815420C @ =0xFFFFFE2C
	adds r0, r6, #0
	ldrh r2, [r1, #0x26]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08154210
	adds r0, r2, #0
	b _08154212
	.align 2, 0
_08154204: .4byte 0x00003E32
_08154208: .4byte 0x00003E34
_0815420C: .4byte 0xFFFFFE2C
_08154210:
	movs r0, #0
_08154212:
	cmp r0, #0
	beq _0815422C
	ldr r0, _08154224 @ =gUnk_02029A88
	ldr r0, [r0]
	ldr r3, _08154228 @ =0x00003F04
	adds r0, r0, r3
	movs r1, #0xfc
	strh r1, [r0]
	b _081544C2
	.align 2, 0
_08154224: .4byte gUnk_02029A88
_08154228: .4byte 0x00003F04
_0815422C:
	ldr r0, _0815423C @ =gUnk_02029A88
	ldr r0, [r0]
_08154230:
	ldr r6, _08154240 @ =0x00003F04
	adds r0, r0, r6
	movs r1, #0xff
	strh r1, [r0]
	b _081544C2
	.align 2, 0
_0815423C: .4byte gUnk_02029A88
_08154240: .4byte 0x00003F04

	thumb_func_start sub_08154244
sub_08154244: @ 0x08154244
	bl sub_0801A40C
	lsls r0, r0, #0x10
	ldr r1, _08154270 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0815425A
	movs r0, #2
	mov r2, sb
	strb r0, [r2]
_0815425A:
	ldr r0, [r7]
	add r0, r8
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0815426A
	b _081544C2
_0815426A:
	movs r0, #2
	b _0815433E
	.align 2, 0
_08154270: .4byte 0xFFFF0000

	thumb_func_start sub_08154274
sub_08154274: @ 0x08154274
	bl sub_0801670C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08154280
	b _081544C2
_08154280:
	bl sub_080197C0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08154292
	movs r0, #2
	mov r6, sb
	strb r0, [r6]
	b _081542D2
_08154292:
	movs r0, #0x11
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r7]
	ldr r2, _081542E0 @ =0x00003E32
	adds r0, r0, r2
	movs r1, #3
	strb r1, [r0]
	ldr r4, _081542E4 @ =gUnk_02000000
	movs r0, #0
	bl sub_080030AC
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_08002A24
	ldr r1, [r7]
	movs r3, #0xfc
	lsls r3, r3, #6
	adds r1, r1, r3
	strb r0, [r1]
	movs r0, #1
	bl sub_080030AC
	ldr r0, [r7]
	ldr r6, _081542E8 @ =0x00003ED0
	adds r0, r0, r6
	adds r1, r4, #0
	movs r2, #0x30
	bl memcpy2
_081542D2:
	ldr r0, _081542EC @ =gUnk_02029A88
	ldr r0, [r0]
	ldr r1, _081542F0 @ =0x00003F04
	adds r0, r0, r1
	movs r1, #0xfd
	strh r1, [r0]
	b _081544C2
	.align 2, 0
_081542E0: .4byte 0x00003E32
_081542E4: .4byte gUnk_02000000
_081542E8: .4byte 0x00003ED0
_081542EC: .4byte gUnk_02029A88
_081542F0: .4byte 0x00003F04

	thumb_func_start sub_081542F4
sub_081542F4: @ 0x081542F4
	ldr r2, _08154344 @ =0x00003E2D
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0815430C
	cmp r0, #2
	bne _08154312
	ldr r3, _08154348 @ =0x00003F04
	adds r0, r5, r3
	ldrh r0, [r0]
	cmp r0, #0xfe
	bne _08154312
_0815430C:
	movs r0, #4
	bl sub_0814531C
_08154312:
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_08138DAC
	ldr r5, _0815434C @ =gUnk_02029A88
	ldr r1, [r5]
	ldr r6, _08154350 @ =0x00003E24
	adds r1, r1, r6
	str r0, [r1]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_08138DAC
	ldr r1, [r5]
	ldr r2, _08154354 @ =0x00003E28
	adds r1, r1, r2
	str r0, [r1]
	movs r0, #0x12
_0815433E:
	mov r3, sb
	strb r0, [r3]
	b _081544C2
	.align 2, 0
_08154344: .4byte 0x00003E2D
_08154348: .4byte 0x00003F04
_0815434C: .4byte gUnk_02029A88
_08154350: .4byte 0x00003E24
_08154354: .4byte 0x00003E28

	thumb_func_start sub_08154358
sub_08154358: @ 0x08154358
	ldr r6, _081543F0 @ =0x00003E24
	adds r0, r5, r6
	ldr r0, [r0]
	bl sub_08139548
	cmp r0, #0
	bne _08154368
	b _081544C2
_08154368:
	movs r6, #0
	adds r4, r7, #0
_0815436C:
	ldr r0, [r4]
	lsls r1, r6, #2
	ldr r2, _081543F0 @ =0x00003E24
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08139468
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _0815436C
	ldr r0, _081543F4 @ =gUnk_02029A88
	ldr r3, [r0]
	ldr r6, _081543F8 @ =0x00003E2D
	adds r1, r3, r6
	ldrb r1, [r1]
	adds r4, r0, #0
	cmp r1, #2
	beq _0815441C
	ldr r1, _081543FC @ =0x00003F04
	adds r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #0xfc
	bne _0815441C
	bl sub_081452EC
	ldr r0, _08154400 @ =gUnk_03000E60
	bl sub_08002DC0
	ldr r3, _08154404 @ =gUnk_03000FA0
	adds r2, r3, #0
	adds r2, #0x98
	movs r1, #0
	movs r0, #1
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x9c
	str r1, [r0]
	strb r1, [r3]
	ldr r0, _08154408 @ =gUnk_02029D40
	ldrb r2, [r0]
	strb r1, [r0]
	ldrb r2, [r0, #1]
	strb r1, [r0, #1]
	ldr r2, [r4]
	ldr r3, _0815440C @ =0x00003E32
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #0x34
	muls r0, r1, r0
	adds r6, #7
	adds r0, r0, r6
	adds r2, r2, r0
	ldr r1, _08154410 @ =0xFFFFFE2C
	adds r0, r1, #0
	ldrh r3, [r2, #0x26]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08154414
	adds r0, r3, #0
	b _08154416
	.align 2, 0
_081543F0: .4byte 0x00003E24
_081543F4: .4byte gUnk_02029A88
_081543F8: .4byte 0x00003E2D
_081543FC: .4byte 0x00003F04
_08154400: .4byte gUnk_03000E60
_08154404: .4byte gUnk_03000FA0
_08154408: .4byte gUnk_02029D40
_0815440C: .4byte 0x00003E32
_08154410: .4byte 0xFFFFFE2C
_08154414:
	movs r0, #0
_08154416:
	bl sub_08118714
	b _081544DC
_0815441C:
	ldr r2, [r4]
	ldr r6, _08154464 @ =0x00003E2D
	adds r0, r2, r6
	ldrb r5, [r0]
	cmp r5, #0
	bne _081544B8
	ldr r1, _08154468 @ =0x00003F04
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #0xfd
	bne _0815447C
	bl sub_081452EC
	ldr r4, _0815446C @ =gUnk_03000E60
	adds r0, r4, #0
	bl sub_08002DC0
	ldr r2, _08154470 @ =gUnk_03000FA0
	adds r1, r2, #0
	adds r1, #0x98
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x9c
	str r5, [r0]
	ldr r0, _08154474 @ =gUnk_02029D40
	ldrb r1, [r0]
	strb r5, [r0]
	ldrb r1, [r0, #1]
	strb r5, [r0, #1]
	movs r0, #3
	strb r0, [r2]
	ldr r2, _08154478 @ =sub_0804767C
	adds r0, r4, #0
	b _0815448A
	.align 2, 0
_08154464: .4byte 0x00003E2D
_08154468: .4byte 0x00003F04
_0815446C: .4byte gUnk_03000E60
_08154470: .4byte gUnk_03000FA0
_08154474: .4byte gUnk_02029D40
_08154478: .4byte sub_0804767C
_0815447C:
	cmp r0, #0xff
	bne _0815449C
	movs r0, #0xa
	bl sub_081452CC
	ldr r0, _08154494 @ =gUnk_03000E60
	ldr r2, _08154498 @ =sub_08127C3C
_0815448A:
	movs r1, #1
	bl sub_08002D38
	b _081544DC
	.align 2, 0
_08154494: .4byte gUnk_03000E60
_08154498: .4byte sub_08127C3C
_0815449C:
	bl sub_081452EC
	ldr r0, _081544B0 @ =gUnk_03000E60
	ldr r2, _081544B4 @ =sub_081547D4
	movs r1, #1
	movs r3, #1
	bl sub_08002D54
	b _081544DC
	.align 2, 0
_081544B0: .4byte gUnk_03000E60
_081544B4: .4byte sub_081547D4
_081544B8:
	ldr r3, _081544EC @ =0x00003F04
	adds r0, r2, r3
_081544BC:
	ldrh r0, [r0]
_081544BE:
	mov r6, sb
	strb r0, [r6]
_081544C2:
	ldr r0, _081544F0 @ =gUnk_02029A88
	ldr r0, [r0]
	ldr r1, _081544F4 @ =0x00003E30
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _081544DC
	cmp r0, #0
	blt _081544DC
	cmp r0, #3
	bgt _081544DC
	bl sub_08152EE0
_081544DC:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081544EC: .4byte 0x00003F04
_081544F0: .4byte gUnk_02029A88
_081544F4: .4byte 0x00003E30

	thumb_func_start sub_081544F8
sub_081544F8: @ 0x081544F8
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r3, r0, #0
	adds r6, r1, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _08154550 @ =gUnk_02029A88
	ldr r1, [r0]
	ldr r2, _08154554 @ =0x000021E0
	adds r0, r1, r2
	ldr r2, _08154558 @ =0x00003F0E
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _0815455C @ =gUnk_0874A6CC
	movs r4, #3
	str r4, [sp]
	subs r4, #4
	str r4, [sp, #4]
	movs r4, #1
	str r4, [sp, #8]
	movs r5, #0
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r4, #0xff
	str r4, [sp, #0x14]
	str r5, [sp, #0x18]
	str r5, [sp, #0x1c]
	ldr r4, _08154560 @ =0x00010088
	str r4, [sp, #0x20]
	bl sub_08015D50
	cmp r6, #1
	bne _08154546
	bl sub_0801670C
	bl sub_0801670C
_08154546:
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08154550: .4byte gUnk_02029A88
_08154554: .4byte 0x000021E0
_08154558: .4byte 0x00003F0E
_0815455C: .4byte gUnk_0874A6CC
_08154560: .4byte 0x00010088

	thumb_func_start sub_08154564
sub_08154564: @ 0x08154564
	push {r4, lr}
	ldr r0, _0815469C @ =gUnk_03000DD0
	mov ip, r0
	ldrh r1, [r0]
	ldr r0, _081546A0 @ =0x000080FF
	ands r0, r1
	movs r2, #0
	movs r1, #0
	mov r3, ip
	strh r0, [r3]
	ldrh r0, [r3, #8]
	movs r0, #0x1f
	strh r0, [r3, #8]
	ldrh r0, [r3, #8]
	ldrh r3, [r3, #6]
	mov r4, ip
	strh r0, [r4, #6]
	ldrh r0, [r4, #6]
	ldrh r3, [r4, #4]
	strh r0, [r4, #4]
	ldrh r0, [r4, #4]
	ldrh r3, [r4, #2]
	strh r0, [r4, #2]
	ldrh r0, [r4, #0x18]
	strh r1, [r4, #0x18]
	ldrh r0, [r4, #0x18]
	ldrh r3, [r4, #0x16]
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x16]
	ldrh r3, [r4, #0x14]
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #0x14]
	ldrh r3, [r4, #0x12]
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0x12]
	ldrh r3, [r4, #0x10]
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x10]
	ldrh r3, [r4, #0xe]
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0xe]
	ldrh r3, [r4, #0xc]
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xc]
	ldrh r3, [r4, #0xa]
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	ldrh r3, [r4, #0x1c]
	strh r1, [r4, #0x1c]
	ldrh r3, [r4, #0x1e]
	strh r1, [r4, #0x1e]
	ldrh r3, [r4, #0x20]
	strh r0, [r4, #0x20]
	ldrh r3, [r4, #0x22]
	strh r1, [r4, #0x22]
	ldrh r3, [r4, #0x24]
	strh r1, [r4, #0x24]
	ldrh r3, [r4, #0x26]
	strh r1, [r4, #0x26]
	ldrh r3, [r4, #0x28]
	strh r1, [r4, #0x28]
	ldrh r3, [r4, #0x2a]
	strh r0, [r4, #0x2a]
	ldrh r3, [r4, #0x2c]
	strh r1, [r4, #0x2c]
	ldrh r3, [r4, #0x2e]
	strh r1, [r4, #0x2e]
	ldrh r3, [r4, #0x30]
	strh r0, [r4, #0x30]
	ldrh r0, [r4, #0x32]
	strh r1, [r4, #0x32]
	ldrh r0, [r4, #0x34]
	strh r1, [r4, #0x34]
	ldrh r0, [r4, #0x36]
	strh r1, [r4, #0x36]
	ldrh r0, [r4, #0x38]
	strh r1, [r4, #0x38]
	mov r1, ip
	adds r1, #0x3a
	ldrb r0, [r1]
	strb r2, [r1]
	ldrb r0, [r1]
	mov r3, ip
	adds r3, #0x3b
	ldrb r1, [r3]
	strb r0, [r3]
	mov r1, ip
	adds r1, #0x3e
	ldrb r0, [r1]
	strb r2, [r1]
	ldrb r0, [r1]
	adds r3, #4
	ldrb r1, [r3]
	strb r0, [r3]
	mov r0, ip
	adds r0, #0x3c
	ldrb r1, [r0]
	strb r2, [r0]
	ldrb r0, [r0]
	subs r3, #2
	ldrb r1, [r3]
	strb r0, [r3]
	mov r0, ip
	adds r0, #0x40
	ldrb r1, [r0]
	strb r2, [r0]
	ldrb r0, [r0]
	adds r3, #4
	ldrb r1, [r3]
	strb r0, [r3]
	mov r1, ip
	adds r1, #0x42
	ldrb r0, [r1]
	strb r2, [r1]
	adds r1, #1
	ldrb r0, [r1]
	strb r2, [r1]
	mov r0, ip
	adds r0, #0x44
	ldrb r1, [r0]
	strb r2, [r0]
	mov r1, ip
	adds r1, #0x45
	ldrb r0, [r1]
	strb r2, [r1]
	adds r1, #2
	ldrb r0, [r1]
	strb r2, [r1]
	subs r1, #1
	ldrb r0, [r1]
	strb r2, [r1]
	adds r1, #4
	ldrb r0, [r1]
	strb r2, [r1]
	adds r1, #1
	ldrb r0, [r1]
	strb r2, [r1]
	mov r0, ip
	adds r0, #0x4c
	ldrb r1, [r0]
	strb r2, [r0]
	mov r1, ip
	adds r1, #0x4d
	ldrb r0, [r1]
	strb r2, [r1]
	mov r0, ip
	adds r0, #0x4e
	ldrb r1, [r0]
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0815469C: .4byte gUnk_03000DD0
_081546A0: .4byte 0x000080FF

	thumb_func_start sub_081546A4
sub_081546A4: @ 0x081546A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	movs r0, #0
	mov sl, r0
	add r0, sp, #0x24
	bl sub_0800AB3C
	ldr r4, _081546C0 @ =gUnk_02029C30
	b _081546CE
	.align 2, 0
_081546C0: .4byte gUnk_02029C30
_081546C4:
	bl sub_0800A87C
	stm r4!, {r0}
	movs r1, #1
	add sl, r1
_081546CE:
	add r0, sp, #0x24
	bl sub_0800A808
	cmp r0, #0
	bne _081546C4
	movs r0, #0
	movs r2, #1
	rsbs r2, r2, #0
	add r2, sl
	mov r8, r2
	cmp r0, r8
	bge _08154730
	ldr r3, _08154778 @ =gUnk_02029C30
	mov sb, r3
_081546EA:
	adds r7, r0, #1
	str r7, [sp, #0x28]
	cmp r7, sl
	bge _0815472A
	lsls r0, r0, #2
	add r0, sb
	mov ip, r0
	lsls r0, r7, #2
	mov r1, sb
	adds r3, r0, r1
	mov r2, sl
	subs r5, r2, r7
_08154702:
	movs r6, #0
	mov r7, ip
	ldr r4, [r7]
	ldr r2, [r3]
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r7, #0xc
	ldrsh r0, [r2, r7]
	cmp r1, r0
	bge _08154718
	movs r6, #1
_08154718:
	cmp r6, #0
	beq _08154722
	mov r0, ip
	str r2, [r0]
	str r4, [r3]
_08154722:
	adds r3, #4
	subs r5, #1
	cmp r5, #0
	bne _08154702
_0815472A:
	ldr r0, [sp, #0x28]
	cmp r0, r8
	blt _081546EA
_08154730:
	movs r6, #0
	cmp r6, sl
	bge _081547C2
_08154736:
	ldr r0, _08154778 @ =gUnk_02029C30
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r5, [r1]
	ldrb r0, [r5, #4]
	cmp r0, #3
	bne _081547BC
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _0815477C
	ldr r0, [r5]
	movs r2, #6
	ldrsh r1, [r5, r2]
	movs r3, #8
	ldrsh r2, [r5, r3]
	ldrb r3, [r5, #0xe]
	ldrb r4, [r5, #0xf]
	str r4, [sp]
	ldrb r4, [r5, #0x10]
	str r4, [sp, #4]
	ldrb r4, [r5, #0x11]
	str r4, [sp, #8]
	ldrb r4, [r5, #0x12]
	str r4, [sp, #0xc]
	ldr r4, [r5, #0x14]
	str r4, [sp, #0x10]
	ldrb r4, [r5, #0x18]
	str r4, [sp, #0x14]
	ldr r4, [r5, #0x1c]
	str r4, [sp, #0x18]
	bl sub_080022EC
	b _081547BC
	.align 2, 0
_08154778: .4byte gUnk_02029C30
_0815477C:
	cmp r0, #1
	bne _081547BC
	ldr r0, [r5]
	movs r7, #6
	ldrsh r1, [r5, r7]
	movs r3, #8
	ldrsh r2, [r5, r3]
	ldrb r3, [r5, #0xe]
	ldrb r4, [r5, #0xf]
	str r4, [sp]
	ldrb r4, [r5, #0x10]
	str r4, [sp, #4]
	ldr r4, [r5, #0x14]
	str r4, [sp, #8]
	ldrb r4, [r5, #0x18]
	str r4, [sp, #0xc]
	ldr r4, [r5, #0x1c]
	str r4, [sp, #0x10]
	movs r7, #0x22
	ldrsh r4, [r5, r7]
	str r4, [sp, #0x14]
	movs r7, #0x24
	ldrsh r4, [r5, r7]
	str r4, [sp, #0x18]
	ldrh r4, [r5, #0x26]
	str r4, [sp, #0x1c]
	adds r4, r5, #0
	adds r4, #0x20
	ldrb r4, [r4]
	str r4, [sp, #0x20]
	bl sub_08001D5C
_081547BC:
	adds r6, #1
	cmp r6, sl
	blt _08154736
_081547C2:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081547D4
sub_081547D4: @ 0x081547D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	adds r7, r1, #0
	ldrb r4, [r7]
	cmp r4, #2
	beq _08154844
	cmp r4, #2
	bgt _081547F2
	cmp r4, #0
	beq _081547FE
	cmp r4, #1
	beq _08154820
	b _08154A04
_081547F2:
	cmp r4, #3
	bne _081547F8
	b _081549CE
_081547F8:
	cmp r4, #0xff
	beq _081548DC
	b _08154A04
_081547FE:
	ldr r0, _08154818 @ =gUnk_02029D30
	strb r4, [r0]
	bl sub_08003B98
	bl sub_081566CC
	bl sub_08154564
	bl sub_08138CAC
	ldr r0, _0815481C @ =gUnk_02002400
	strh r4, [r0]
	b _081549C8
	.align 2, 0
_08154818: .4byte gUnk_02029D30
_0815481C: .4byte gUnk_02002400
_08154820:
	ldr r0, _0815483C @ =gUnk_02029D30
	strb r4, [r0]
	bl sub_08003B98
	bl sub_081566CC
	bl sub_08154564
	bl sub_08138CAC
	ldr r1, _08154840 @ =gUnk_02002400
	movs r0, #0
	strh r0, [r1]
	b _081549C8
	.align 2, 0
_0815483C: .4byte gUnk_02029D30
_08154840: .4byte gUnk_02002400
_08154844:
	bl sub_08154564
	bl sub_08138CAC
	ldr r1, _081548B8 @ =gUnk_02002400
	movs r0, #0
	strh r0, [r1]
	ldr r0, _081548BC @ =gUnk_02029D38
	movs r1, #0x80
	lsls r1, r1, #0xa
	bl sub_0800486C
	ldr r5, _081548C0 @ =0x02049D40
	str r0, [r5]
	ldr r4, _081548C4 @ =0x02049D38
	movs r1, #0x80
	lsls r1, r1, #8
	bl sub_080048D4
	str r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #8
	bl sub_080082E0
	bl sub_080087EC
	bl sub_08010E80
	bl sub_0800AAD0
	ldr r4, _081548C8 @ =0x02049D3C
	ldr r0, [r5]
	movs r1, #0xbe
	lsls r1, r1, #9
	bl sub_080048D4
	str r0, [r4]
	movs r1, #0xbe
	lsls r1, r1, #9
	bl sub_080068C8
	ldr r1, _081548CC @ =0x02049D44
	str r0, [r1]
	ldr r2, _081548D0 @ =gUnk_02029D34
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, _081548D4 @ =sub_08156158
	movs r2, #0
	str r2, [sp]
	movs r2, #0x30
	add r3, sp, #4
	bl sub_08006620
	ldr r1, _081548D8 @ =0x02049D48
	str r0, [r1]
	movs r0, #3
	strb r0, [r7]
	b _08154A04
	.align 2, 0
_081548B8: .4byte gUnk_02002400
_081548BC: .4byte gUnk_02029D38
_081548C0: .4byte 0x02049D40
_081548C4: .4byte 0x02049D38
_081548C8: .4byte 0x02049D3C
_081548CC: .4byte 0x02049D44
_081548D0: .4byte gUnk_02029D34
_081548D4: .4byte sub_08156158
_081548D8: .4byte 0x02049D48
_081548DC:
	ldr r1, _08154944 @ =gUnk_02029D30
	movs r0, #0
	strb r0, [r1]
	bl sub_081452EC
	ldr r4, _08154948 @ =0x02049D44
	ldr r0, [r4]
	bl sub_080067D8
	ldr r0, [r4]
	bl sub_080068E8
	movs r6, #0
	str r6, [r4]
	bl sub_0800AAF0
	bl sub_08010EE0
	bl sub_08008830
	bl sub_080082F4
	ldr r5, _0815494C @ =0x02049D40
	ldr r0, [r5]
	ldr r1, _08154950 @ =0x02049D38
	mov r8, r1
	ldr r1, [r1]
	bl sub_0800490C
	ldr r0, [r5]
	ldr r4, _08154954 @ =0x02049D3C
	ldr r1, [r4]
	bl sub_0800490C
	str r6, [r4]
	mov r2, r8
	str r6, [r2]
	ldr r0, [r5]
	bl sub_08004928
	str r6, [r5]
	bl sub_081394BC
	ldr r0, _08154958 @ =gUnk_02029D34
	ldrb r0, [r0]
	cmp r0, #1
	beq _08154988
	cmp r0, #1
	bgt _0815495C
	cmp r0, #0
	beq _08154966
	b _08154A04
	.align 2, 0
_08154944: .4byte gUnk_02029D30
_08154948: .4byte 0x02049D44
_0815494C: .4byte 0x02049D40
_08154950: .4byte 0x02049D38
_08154954: .4byte 0x02049D3C
_08154958: .4byte gUnk_02029D34
_0815495C:
	cmp r0, #2
	beq _081549A8
	cmp r0, #0xff
	beq _081549C8
	b _08154A04
_08154966:
	bl sub_080211BC
	ldr r4, _08154980 @ =gUnk_03000E60
	adds r0, r4, #0
	bl sub_08002DC0
	ldr r2, _08154984 @ =sub_08003E00
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0x1e
	bl sub_08002D54
	b _08154A04
	.align 2, 0
_08154980: .4byte gUnk_03000E60
_08154984: .4byte sub_08003E00
_08154988:
	ldr r4, _081549A0 @ =gUnk_03000E60
	adds r0, r4, #0
	bl sub_08002DC0
	ldr r2, _081549A4 @ =sub_08003E00
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0x1f
	bl sub_08002D54
	b _08154A04
	.align 2, 0
_081549A0: .4byte gUnk_03000E60
_081549A4: .4byte sub_08003E00
_081549A8:
	ldr r4, _081549C0 @ =gUnk_03000E60
	adds r0, r4, #0
	bl sub_08002DC0
	ldr r2, _081549C4 @ =sub_08003E00
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0xa
	bl sub_08002D54
	b _08154A04
	.align 2, 0
_081549C0: .4byte gUnk_03000E60
_081549C4: .4byte sub_08003E00
_081549C8:
	movs r0, #2
	strb r0, [r7]
	b _08154A04
_081549CE:
	ldr r4, _08154A10 @ =0x02049D48
	ldr r0, [r4]
	bl sub_08006870
	cmp r0, #0
	beq _081549EC
	ldr r0, _08154A14 @ =0x02049D44
	ldr r0, [r0]
	ldr r1, [r4]
	bl sub_08006570
	movs r0, #0
	str r0, [r4]
	movs r0, #0xff
	strb r0, [r7]
_081549EC:
	ldr r0, _08154A14 @ =0x02049D44
	ldr r0, [r0]
	bl sub_080066E4
	bl sub_0800853C
	bl sub_080103F0
	bl sub_0800AB08
	bl sub_081546A4
_08154A04:
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08154A10: .4byte 0x02049D48
_08154A14: .4byte 0x02049D44

	thumb_func_start sub_08154A18
sub_08154A18: @ 0x08154A18
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _08154AD8 @ =gUnk_03000DD0
	ldrh r1, [r7]
	ldr r0, _08154ADC @ =0x000080FF
	ands r0, r1
	movs r1, #0
	mov r8, r1
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	ldr r0, _08154AE0 @ =0x0600E800
	bl sub_08004944
	adds r4, r0, #0
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r0, r5, #0
	bl sub_08004950
	orrs r4, r0
	movs r0, #3
	movs r6, #0
	ldrh r1, [r7, #2]
	orrs r4, r0
	strh r4, [r7, #2]
	ldr r0, _08154AE4 @ =0x0600F000
	bl sub_08004944
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08004950
	orrs r4, r0
	movs r0, #2
	orrs r4, r0
	ldrh r0, [r7, #4]
	orrs r4, r6
	strh r4, [r7, #4]
	ldr r0, _08154AE8 @ =0x0600F800
	bl sub_08004944
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08004950
	orrs r4, r0
	movs r0, #1
	orrs r4, r0
	ldrh r0, [r7, #6]
	orrs r4, r6
	strh r4, [r7, #6]
	ldrh r0, [r7, #0x14]
	mov r0, r8
	strh r0, [r7, #0x14]
	ldrh r0, [r7, #0x14]
	ldrh r1, [r7, #0x12]
	strh r0, [r7, #0x12]
	ldrh r0, [r7, #0x12]
	ldrh r1, [r7, #0x10]
	strh r0, [r7, #0x10]
	ldrh r0, [r7, #0x10]
	ldrh r1, [r7, #0xe]
	strh r0, [r7, #0xe]
	ldrh r0, [r7, #0xe]
	ldrh r1, [r7, #0xc]
	strh r0, [r7, #0xc]
	ldrh r0, [r7, #0xc]
	ldrh r1, [r7, #0xa]
	strh r0, [r7, #0xa]
	adds r1, r7, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	movs r0, #0x42
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #0x21
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #0xf
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #5
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08154AD8: .4byte gUnk_03000DD0
_08154ADC: .4byte 0x000080FF
_08154AE0: .4byte 0x0600E800
_08154AE4: .4byte 0x0600F000
_08154AE8: .4byte 0x0600F800

	thumb_func_start sub_08154AEC
sub_08154AEC: @ 0x08154AEC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r4, _08154B68 @ =gUnk_03000DD0
	ldrh r1, [r4]
	ldr r0, _08154B6C @ =0x000080FF
	ands r0, r1
	movs r1, #0
	mov sb, r1
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _08154B70 @ =0x0600C800
	bl sub_08004944
	adds r5, r0, #0
	ldr r0, _08154B74 @ =0x06008000
	mov r8, r0
	bl sub_08004950
	movs r1, #0x80
	lsls r1, r1, #8
	adds r6, r1, #0
	orrs r0, r6
	orrs r0, r5
	movs r1, #3
	ldrh r2, [r4, #2]
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r0, _08154B78 @ =0x0600D800
	bl sub_08004944
	adds r5, r0, #0
	mov r0, r8
	bl sub_08004950
	orrs r0, r6
	orrs r0, r5
	ldrh r1, [r4, #4]
	strh r0, [r4, #4]
	ldrh r0, [r4, #0x10]
	mov r2, sb
	strh r2, [r4, #0x10]
	ldrh r0, [r4, #0x10]
	ldrh r1, [r4, #0xe]
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0xe]
	ldrh r1, [r4, #0xc]
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xc]
	ldrh r1, [r4, #0xa]
	strh r0, [r4, #0xa]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08154B68: .4byte gUnk_03000DD0
_08154B6C: .4byte 0x000080FF
_08154B70: .4byte 0x0600C800
_08154B74: .4byte 0x06008000
_08154B78: .4byte 0x0600D800

	thumb_func_start sub_08154B7C
sub_08154B7C: @ 0x08154B7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldrh r1, [r6]
	ldr r0, _08154BB0 @ =0x00000105
	cmp r1, r0
	bne _08154B90
	b _08154DA0
_08154B90:
	cmp r1, r0
	bgt _08154BDC
	ldr r4, _08154BB4 @ =0x00000101
	cmp r1, r4
	beq _08154C70
	cmp r1, r4
	bgt _08154BB8
	cmp r1, #1
	beq _08154C48
	cmp r1, #1
	bgt _08154BA8
	b _08154E44
_08154BA8:
	subs r0, #5
	cmp r1, r0
	beq _08154C5A
	b _08154E44
	.align 2, 0
_08154BB0: .4byte 0x00000105
_08154BB4: .4byte 0x00000101
_08154BB8:
	ldr r0, _08154BD8 @ =0x00000103
	cmp r1, r0
	bne _08154BC0
	b _08154CF0
_08154BC0:
	cmp r1, r0
	ble _08154BC6
	b _08154D50
_08154BC6:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _08154BCE
	b _08154CC2
_08154BCE:
	bl sub_08006870
	cmp r0, #0
	beq _08154CC2
	b _08154CB8
	.align 2, 0
_08154BD8: .4byte 0x00000103
_08154BDC:
	ldr r4, _08154C28 @ =0x00000109
	cmp r1, r4
	bne _08154BE4
	b _08154DFC
_08154BE4:
	cmp r1, r4
	bgt _08154C34
	ldr r0, _08154C2C @ =0x00000107
	cmp r1, r0
	bne _08154BF0
	b _08154DB0
_08154BF0:
	cmp r1, r0
	ble _08154BF6
	b _08154DEE
_08154BF6:
	adds r0, r5, #0
	adds r0, #0x14
	ldr r3, _08154C30 @ =gUnk_086A23E4
	ldr r4, [r5, #0x2c]
	lsls r2, r4, #2
	adds r2, r2, r3
	movs r7, #0
	ldrsh r1, [r2, r7]
	movs r7, #2
	ldrsh r2, [r2, r7]
	adds r4, #1
	lsls r4, r4, #2
	adds r4, r4, r3
	movs r7, #0
	ldrsh r3, [r4, r7]
	movs r7, #2
	ldrsh r4, [r4, r7]
	str r4, [sp]
	bl sub_08007DE8
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	b _08154DB0
	.align 2, 0
_08154C28: .4byte 0x00000109
_08154C2C: .4byte 0x00000107
_08154C30: .4byte gUnk_086A23E4
_08154C34:
	ldr r0, _08154C44 @ =0x0000010B
	cmp r1, r0
	bne _08154C3C
	b _08154E40
_08154C3C:
	cmp r1, r0
	bge _08154C42
	b _08154E18
_08154C42:
	b _08154E44
	.align 2, 0
_08154C44: .4byte 0x0000010B
_08154C48:
	ldr r0, [r5]
	cmp r0, #0
	bne _08154C50
	b _08154E44
_08154C50:
	bl sub_0800AAC8
	movs r0, #0
	str r0, [r5]
	b _08154E44
_08154C5A:
	ldr r0, _08154C68 @ =gUnk_020026A0
	ldr r1, _08154C6C @ =gUnk_087473C0
	movs r2, #0x20
	bl memcpy2
	strh r4, [r6]
	b _08154E44
	.align 2, 0
_08154C68: .4byte gUnk_020026A0
_08154C6C: .4byte gUnk_087473C0
_08154C70:
	ldr r2, _08154CB4 @ =gUnk_03000DD0
	adds r1, r2, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	movs r0, #0x42
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #0x3d
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r1, #8
	strb r1, [r0]
	adds r0, #1
	ldrb r2, [r0]
	strb r1, [r0]
	movs r0, #0x10
	movs r1, #0
	movs r2, #0x14
	adds r3, r7, #0
	bl sub_08007654
	str r0, [r5, #0x10]
	movs r0, #0x30
	movs r1, #0x10
	movs r2, #0x14
	bl sub_08138E04
	str r0, [r5, #0xc]
	ldrh r0, [r6]
	adds r0, #1
	b _08154E42
	.align 2, 0
_08154CB4: .4byte gUnk_03000DD0
_08154CB8:
	ldr r0, [r5, #0x10]
	bl sub_08006818
	movs r0, #0
	str r0, [r5, #0x10]
_08154CC2:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _08154CDA
	bl sub_08139548
	cmp r0, #0
	beq _08154CDA
	ldr r0, [r5, #0xc]
	bl sub_08139468
	movs r0, #0
	str r0, [r5, #0xc]
_08154CDA:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _08154CE2
	b _08154E44
_08154CE2:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _08154CEA
	b _08154E44
_08154CEA:
	ldrh r0, [r6]
	adds r0, #1
	b _08154E42
_08154CF0:
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	strh r2, [r5, #8]
	ldr r0, _08154D4C @ =gUnk_08747B20
	movs r1, #0x58
	str r1, [sp]
	movs r1, #0x30
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #7
	movs r3, #3
	bl sub_0800A4D8
	str r0, [r5]
	movs r1, #1
	bl sub_0800A96C
	ldr r0, [r5]
	movs r1, #1
	bl sub_0800AA68
	ldr r0, [r5]
	movs r2, #4
	ldrsh r1, [r5, r2]
	movs r3, #6
	ldrsh r2, [r5, r3]
	ldrh r3, [r5, #8]
	bl sub_0800AA6C
	movs r0, #0
	movs r1, #0x10
	movs r2, #0x14
	adds r3, r7, #0
	bl sub_08007654
	str r0, [r5, #0x10]
	ldrh r0, [r6]
	adds r0, #1
	b _08154E42
	.align 2, 0
_08154D4C: .4byte gUnk_08747B20
_08154D50:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _08154D6E
	bl sub_08006870
	cmp r0, #0
	beq _08154D68
	ldr r0, [r5, #0x10]
	bl sub_08006818
	movs r0, #0
	str r0, [r5, #0x10]
_08154D68:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _08154E44
_08154D6E:
	ldr r2, _08154D98 @ =gUnk_03000DD0
	adds r1, r2, #0
	adds r1, #0x4b
	ldrb r0, [r1]
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r1]
	adds r3, r2, #0
	adds r3, #0x4a
	ldrb r1, [r3]
	strb r0, [r3]
	ldrh r1, [r2]
	ldr r0, _08154D9C @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0x14
	str r0, [r5, #0x30]
	ldrh r0, [r6]
	adds r0, #1
	b _08154E42
	.align 2, 0
_08154D98: .4byte gUnk_03000DD0
_08154D9C: .4byte 0x0000FDFF
_08154DA0:
	ldr r0, [r5, #0x30]
	subs r0, #1
	str r0, [r5, #0x30]
	cmp r0, #0
	bgt _08154E44
	movs r0, #0x83
	lsls r0, r0, #1
	b _08154E42
_08154DB0:
	adds r4, r5, #0
	adds r4, #0x14
	adds r0, r4, #0
	bl sub_08007E68
	ldrh r0, [r5, #0x14]
	strh r0, [r5, #4]
	ldr r0, [r5]
	movs r7, #4
	ldrsh r1, [r5, r7]
	movs r3, #6
	ldrsh r2, [r5, r3]
	ldrh r3, [r5, #8]
	bl sub_0800AA6C
	adds r0, r4, #0
	bl sub_08008158
	cmp r0, #0
	beq _08154E44
	ldr r0, [r5, #0x2c]
	adds r0, #1
	str r0, [r5, #0x2c]
	cmp r0, #3
	bhi _08154DE8
	movs r0, #0x83
	lsls r0, r0, #1
	b _08154E42
_08154DE8:
	ldrh r0, [r6]
	adds r0, #1
	b _08154E42
_08154DEE:
	ldr r0, [r5]
	bl sub_0800AAC8
	movs r0, #0
	str r0, [r5]
	strh r4, [r6]
	b _08154E44
_08154DFC:
	movs r1, #0x80
	lsls r1, r1, #2
	movs r0, #0x1f
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0
	movs r2, #8
	movs r3, #0x1f
	bl sub_08138E5C
	str r0, [r5, #0xc]
	ldrh r0, [r6]
	adds r0, #1
	b _08154E42
_08154E18:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _08154E36
	bl sub_08139548
	cmp r0, #0
	beq _08154E30
	ldr r0, [r5, #0xc]
	bl sub_08139468
	movs r0, #0
	str r0, [r5, #0xc]
_08154E30:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _08154E44
_08154E36:
	ldr r0, _08154E3C @ =0x0000010B
	b _08154E42
	.align 2, 0
_08154E3C: .4byte 0x0000010B
_08154E40:
	movs r0, #2
_08154E42:
	strh r0, [r6]
_08154E44:
	movs r0, #0
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08154E50
sub_08154E50: @ 0x08154E50
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	ldrh r1, [r6]
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r1, r3
	beq _08154E92
	cmp r1, r3
	bgt _08154E6A
	cmp r1, #0
	beq _08154E7C
	b _08154F48
_08154E6A:
	ldr r0, _08154E78 @ =0x00000101
	cmp r1, r0
	beq _08154EE4
	adds r0, #1
	cmp r1, r0
	beq _08154F44
	b _08154F48
	.align 2, 0
_08154E78: .4byte 0x00000101
_08154E7C:
	ldr r0, [r6, #4]
	str r0, [r5]
	ldr r0, [r6, #8]
	str r0, [r5, #4]
	ldr r0, [r6, #0xc]
	str r0, [r5, #8]
	ldr r0, [r6, #0x10]
	str r0, [r5, #0xc]
	ldrh r0, [r6, #0x14]
	strb r0, [r5, #0x10]
	b _08154F48
_08154E92:
	ldr r1, [r5]
	ldrh r0, [r5, #0x16]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrb r2, [r1, #2]
	ldrb r0, [r1, #3]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r5, #0x12]
	movs r0, #2
	strh r0, [r5, #0x14]
	adds r4, r5, #0
	adds r4, #0x34
	ldr r1, [r5, #8]
	adds r0, r4, #0
	movs r2, #0x80
	bl memcpy2
	ldrh r1, [r5, #0x12]
	ldr r0, [r5, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r0, r1
	ldr r1, _08154EE0 @ =gUnk_08746F50
	adds r2, r4, #0
	movs r3, #0x80
	bl sub_0800AE88
	adds r0, r5, #0
	adds r0, #0x18
	ldr r2, [r5, #0xc]
	adds r1, r4, #0
	movs r3, #0x20
	bl sub_08000BFC
	ldrh r0, [r6]
	adds r0, #1
	b _08154F46
	.align 2, 0
_08154EE0: .4byte gUnk_08746F50
_08154EE4:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08154F48
	ldrh r0, [r5, #0x16]
	adds r0, #1
	strh r0, [r5, #0x16]
	ldrh r2, [r5, #0x16]
	ldr r0, [r5]
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _08154F0E
	strh r3, [r6]
	b _08154F48
_08154F0E:
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	bne _08154F22
	adds r4, r5, #0
	adds r4, #0x34
	adds r0, r4, #0
	movs r1, #0x80
	bl memzero
	b _08154F30
_08154F22:
	adds r4, r5, #0
	adds r4, #0x34
	ldr r1, [r5, #8]
	adds r0, r4, #0
	movs r2, #0x80
	bl memcpy2
_08154F30:
	adds r1, r4, #0
	adds r0, r5, #0
	adds r0, #0x18
	ldr r2, [r5, #0xc]
	movs r3, #0x20
	bl sub_08000BFC
	movs r0, #0x81
	lsls r0, r0, #1
	b _08154F46
_08154F44:
	movs r0, #2
_08154F46:
	strh r0, [r6]
_08154F48:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08154F50
sub_08154F50: @ 0x08154F50
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	mov sb, r0
	adds r7, r1, #0
	adds r5, r2, #0
	ldrh r1, [r7]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08154F98
	cmp r1, r0
	bgt _08154F74
	cmp r1, #0
	beq _08154F8A
	b _081550A0
_08154F74:
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r1, r0
	beq _08155038
	cmp r1, r0
	blt _08154FAC
	adds r0, #1
	cmp r1, r0
	bne _08154F88
	b _0815509C
_08154F88:
	b _081550A0
_08154F8A:
	ldr r0, [r7, #4]
	str r0, [r5]
	ldrh r0, [r7, #0x14]
	strb r0, [r5, #4]
	ldrh r0, [r7, #0x16]
	strb r0, [r5, #5]
	b _081550A0
_08154F98:
	ldr r1, _08155024 @ =gUnk_08747CE8
	ldrb r0, [r5, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r5, #8]
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
_08154FAC:
	movs r4, #0
	ldr r2, [r5, #8]
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	bge _0815501C
	ldr r0, _08155028 @ =gUnk_087480C0
	mov r8, r0
	movs r6, #2
_08154FC2:
	adds r0, r2, r6
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #8
	orrs r1, r2
	lsls r1, r1, #5
	ldrb r0, [r5, #5]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	add r0, r8
	ldr r3, _0815502C @ =0x02049D50
	adds r3, r1, r3
	ldr r2, [r5]
	adds r2, r2, r1
	str r0, [sp, #4]
	ldr r0, _08155030 @ =gUnk_08747EA4
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r1, sp
	ldrb r0, [r5, #5]
	strh r0, [r1, #0x14]
	ldr r0, _08155034 @ =sub_08154E50
	movs r1, #0xb4
	mov r2, sp
	mov r3, sb
	bl sub_0800682C
	lsls r2, r4, #2
	adds r1, r5, #0
	adds r1, #0xc
	adds r1, r1, r2
	str r0, [r1]
	adds r6, #6
	adds r4, #1
	ldr r2, [r5, #8]
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	blt _08154FC2
_0815501C:
	ldrh r0, [r7]
	adds r0, #1
	b _0815509E
	.align 2, 0
_08155024: .4byte gUnk_08747CE8
_08155028: .4byte gUnk_087480C0
_0815502C: .4byte 0x02049D50
_08155030: .4byte gUnk_08747EA4
_08155034: .4byte sub_08154E50
_08155038:
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r0, [r5, #8]
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r1, r2
	adds r2, r0, #0
	cmp r8, r1
	bge _08155088
_0815504E:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0xc
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _08155076
	bl sub_08006870
	cmp r0, #0
	beq _0815506E
	ldr r0, [r4]
	bl sub_08006818
	movs r0, #0
	str r0, [r4]
_0815506E:
	ldr r0, [r4]
	ldr r2, [r5, #8]
	cmp r0, #0
	bne _0815507A
_08155076:
	movs r0, #1
	add r8, r0
_0815507A:
	adds r6, #1
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r6, r0
	blt _0815504E
_08155088:
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r8, r0
	bne _081550A0
	ldr r0, _08155098 @ =0x00000103
	b _0815509E
	.align 2, 0
_08155098: .4byte 0x00000103
_0815509C:
	movs r0, #2
_0815509E:
	strh r0, [r7]
_081550A0:
	movs r0, #0
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_081550B0
sub_081550B0: @ 0x081550B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x50
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r1, [r5]
	movs r0, #0x83
	lsls r0, r0, #1
	cmp r1, r0
	bne _081550C6
	b _08155262
_081550C6:
	cmp r1, r0
	bgt _08155108
	ldr r6, _081550E8 @ =0x00000101
	cmp r1, r6
	beq _08155168
	cmp r1, r6
	bgt _081550EC
	cmp r1, #1
	beq _08155140
	cmp r1, #1
	bgt _081550DE
	b _08155358
_081550DE:
	subs r0, #6
	cmp r1, r0
	beq _0815514A
	b _08155358
	.align 2, 0
_081550E8: .4byte 0x00000101
_081550EC:
	ldr r0, _08155104 @ =0x00000103
	cmp r1, r0
	bne _081550F4
	b _08155206
_081550F4:
	cmp r1, r0
	blt _08155172
	adds r0, #1
	cmp r1, r0
	bne _08155100
	b _08155228
_08155100:
	b _08155358
	.align 2, 0
_08155104: .4byte 0x00000103
_08155108:
	movs r0, #0x85
	lsls r0, r0, #1
	cmp r1, r0
	bne _08155112
	b _081552D8
_08155112:
	cmp r1, r0
	bgt _08155126
	subs r0, #2
	cmp r1, r0
	bne _0815511E
	b _0815527C
_0815511E:
	cmp r1, r0
	ble _08155124
	b _08155286
_08155124:
	b _0815526C
_08155126:
	movs r0, #0x86
	lsls r0, r0, #1
	cmp r1, r0
	bne _08155130
	b _08155332
_08155130:
	cmp r1, r0
	bge _08155136
	b _081552FA
_08155136:
	adds r0, #1
	cmp r1, r0
	bne _0815513E
	b _08155354
_0815513E:
	b _08155358
_08155140:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0800AB80
	b _08155358
_0815514A:
	ldr r0, _08155160 @ =gUnk_02002600
	ldr r1, _08155164 @ =gUnk_08747720
	movs r2, #0x80
	lsls r2, r2, #2
	bl memcpy2
	movs r0, #0
	str r0, [r4, #0x18]
	strh r6, [r5]
	b _08155358
	.align 2, 0
_08155160: .4byte gUnk_02002600
_08155164: .4byte gUnk_08747720
_08155168:
	movs r0, #0
	str r0, [r4, #0x1c]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_08155172:
	ldr r1, _081551D8 @ =gUnk_086A23F8
	ldr r0, [r4, #0x18]
	lsls r0, r0, #2
	ldr r2, [r4, #0x1c]
	adds r0, r2, r0
	adds r0, r0, r1
	ldrb r6, [r0]
	cmp r6, #0xff
	beq _081551E8
	ldr r0, _081551DC @ =gUnk_08747CE8
	movs r1, #0x78
	str r1, [sp]
	movs r1, #0x50
	str r1, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	movs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r1, #0
	adds r2, r6, #0
	movs r3, #3
	bl sub_0800A4D8
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #2
	adds r1, r4, r1
	str r0, [r1]
	ldr r0, _081551E0 @ =0x06013000
	str r0, [sp, #0x1c]
	add r0, sp, #0x18
	strh r6, [r0, #0x14]
	adds r1, r0, #0
	movs r0, #1
	strh r0, [r1, #0x16]
	ldr r0, _081551E4 @ =sub_08154F50
	movs r1, #0x8c
	add r2, sp, #0x18
	adds r3, r7, #0
	bl sub_0800682C
	ldr r2, [r4, #0x1c]
	lsls r2, r2, #2
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r1, r2
	str r0, [r1]
	b _081551FC
	.align 2, 0
_081551D8: .4byte gUnk_086A23F8
_081551DC: .4byte gUnk_08747CE8
_081551E0: .4byte 0x06013000
_081551E4: .4byte sub_08154F50
_081551E8:
	lsls r0, r2, #2
	adds r0, r4, r0
	movs r2, #0
	str r2, [r0]
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #2
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	str r2, [r0]
_081551FC:
	movs r0, #0x1e
	str r0, [r4, #0x20]
	ldrh r0, [r5]
	adds r0, #1
	b _08155356
_08155206:
	ldr r0, [r4, #0x20]
	subs r0, #1
	str r0, [r4, #0x20]
	cmp r0, #0
	ble _08155212
	b _08155358
_08155212:
	ldr r0, [r4, #0x1c]
	adds r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #2
	bgt _08155222
	movs r0, #0x81
	lsls r0, r0, #1
	b _08155356
_08155222:
	ldrh r0, [r5]
	adds r0, #1
	b _08155356
_08155228:
	movs r7, #0
	adds r4, #0xc
	movs r6, #2
_0815522E:
	ldr r0, [r4]
	cmp r0, #0
	beq _0815524C
	bl sub_08006870
	cmp r0, #0
	beq _08155246
	ldr r0, [r4]
	bl sub_08006818
	movs r0, #0
	str r0, [r4]
_08155246:
	ldr r0, [r4]
	cmp r0, #0
	bne _0815524E
_0815524C:
	adds r7, #1
_0815524E:
	adds r4, #4
	subs r6, #1
	cmp r6, #0
	bge _0815522E
	cmp r7, #3
	beq _0815525C
	b _08155358
_0815525C:
	movs r0, #0x83
	lsls r0, r0, #1
	b _08155356
_08155262:
	movs r0, #0x78
	str r0, [r4, #0x20]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_0815526C:
	ldr r0, [r4, #0x20]
	subs r0, #1
	str r0, [r4, #0x20]
	cmp r0, #0
	bgt _08155358
	movs r0, #0x84
	lsls r0, r0, #1
	b _08155356
_0815527C:
	movs r0, #0
	str r0, [r4, #0x1c]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_08155286:
	ldr r2, [r4, #0x1c]
	lsls r0, r2, #2
	adds r0, r4, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _081552C0
	ldr r1, _081552CC @ =gUnk_086A23F8
	ldr r0, [r4, #0x18]
	lsls r0, r0, #2
	adds r0, r2, r0
	adds r0, r0, r1
	ldrb r1, [r0]
	add r2, sp, #0x34
	ldr r0, _081552D0 @ =0x06013000
	str r0, [r2, #4]
	movs r0, #0
	strh r1, [r2, #0x14]
	strh r0, [r2, #0x16]
	ldr r0, _081552D4 @ =sub_08154F50
	movs r1, #0x8c
	adds r3, r7, #0
	bl sub_0800682C
	ldr r2, [r4, #0x1c]
	lsls r2, r2, #2
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r1, r2
	str r0, [r1]
_081552C0:
	movs r0, #0x1e
	str r0, [r4, #0x20]
	ldrh r0, [r5]
	adds r0, #1
	b _08155356
	.align 2, 0
_081552CC: .4byte gUnk_086A23F8
_081552D0: .4byte 0x06013000
_081552D4: .4byte sub_08154F50
_081552D8:
	ldr r0, [r4, #0x20]
	subs r0, #1
	str r0, [r4, #0x20]
	cmp r0, #0
	bgt _08155358
	ldr r0, [r4, #0x1c]
	adds r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #2
	bgt _081552F4
	ldr r0, _081552F0 @ =0x00000109
	b _08155356
	.align 2, 0
_081552F0: .4byte 0x00000109
_081552F4:
	ldrh r0, [r5]
	adds r0, #1
	b _08155356
_081552FA:
	movs r7, #0
	adds r4, #0xc
	movs r6, #2
_08155300:
	ldr r0, [r4]
	cmp r0, #0
	beq _0815531E
	bl sub_08006870
	cmp r0, #0
	beq _08155318
	ldr r0, [r4]
	bl sub_08006818
	movs r0, #0
	str r0, [r4]
_08155318:
	ldr r0, [r4]
	cmp r0, #0
	bne _08155320
_0815531E:
	adds r7, #1
_08155320:
	adds r4, #4
	subs r6, #1
	cmp r6, #0
	bge _08155300
	cmp r7, #3
	bne _08155358
	movs r0, #0x86
	lsls r0, r0, #1
	b _08155356
_08155332:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0800AB80
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	cmp r0, #3
	bhi _0815534C
	ldr r0, _08155348 @ =0x00000101
	b _08155356
	.align 2, 0
_08155348: .4byte 0x00000101
_0815534C:
	ldr r0, _08155350 @ =0x0000010D
	b _08155356
	.align 2, 0
_08155350: .4byte 0x0000010D
_08155354:
	movs r0, #2
_08155356:
	strh r0, [r5]
_08155358:
	movs r0, #0
	add sp, #0x50
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08155364
sub_08155364: @ 0x08155364
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldrh r1, [r4]
	cmp r1, #1
	beq _08155386
	cmp r1, #1
	ble _081553EC
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08155396
	adds r0, #1
	cmp r1, r0
	beq _081553B6
	b _081553EC
_08155386:
	ldr r0, [r5]
	cmp r0, #0
	beq _081553EC
	bl sub_08008760
	movs r0, #0
	str r0, [r5]
	b _081553EC
_08155396:
	ldr r0, _081553F4 @ =sub_0800CAEC
	ldr r3, _081553F8 @ =0x04000010
	movs r1, #0x14
	movs r2, #4
	bl sub_080083C8
	str r0, [r5]
	bl sub_0800874C
	movs r1, #1
	strb r1, [r0, #9]
	movs r1, #6
	strb r1, [r0, #0xa]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_081553B6:
	ldr r0, [r5]
	bl sub_0800874C
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_080068AC
	bl sub_080068B0
	adds r1, r0, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r4]
	adds r0, #0x42
	ldrh r1, [r0]
	strh r1, [r4, #2]
	movs r0, #0x98
	subs r0, r0, r1
	strh r0, [r4, #4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r4, #6]
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
_081553EC:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_081553F4: .4byte sub_0800CAEC
_081553F8: .4byte 0x04000010

	thumb_func_start sub_081553FC
sub_081553FC: @ 0x081553FC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r1, [r5]
	ldr r0, _08155420 @ =0x00000101
	cmp r1, r0
	beq _0815546C
	cmp r1, r0
	bgt _08155424
	cmp r1, #1
	beq _08155434
	cmp r1, #1
	ble _081554F0
	subs r0, #1
	cmp r1, r0
	beq _08155444
	b _081554F0
	.align 2, 0
_08155420: .4byte 0x00000101
_08155424:
	ldr r0, _08155430 @ =0x00000103
	cmp r1, r0
	beq _081554A6
	cmp r1, r0
	blt _0815549C
	b _081554F0
	.align 2, 0
_08155430: .4byte 0x00000103
_08155434:
	ldr r0, [r4]
	cmp r0, #0
	beq _081554F0
	bl sub_08008760
	movs r0, #0
	str r0, [r4]
	b _081554F0
_08155444:
	ldr r0, _08155494 @ =sub_0800CAEC
	ldr r3, _08155498 @ =0x04000014
	movs r1, #0x14
	movs r2, #4
	bl sub_080083C8
	str r0, [r4]
	bl sub_0800874C
	movs r2, #0
	movs r1, #0xa
	strb r1, [r0, #9]
	movs r1, #5
	strb r1, [r0, #0xa]
	strh r2, [r0, #4]
	movs r1, #0xa0
	strh r1, [r0, #6]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_0815546C:
	ldr r0, [r4]
	bl sub_0800874C
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_080068AC
	bl sub_080068B0
	adds r1, r0, #0
	adds r1, #0x44
	ldrh r1, [r1]
	strh r1, [r4]
	adds r0, #0x46
	ldrh r0, [r0]
	strh r0, [r4, #2]
	ldrb r0, [r4, #8]
	adds r0, #2
	strb r0, [r4, #8]
	b _081554F0
	.align 2, 0
_08155494: .4byte sub_0800CAEC
_08155498: .4byte 0x04000014
_0815549C:
	movs r0, #0
	str r0, [r4, #4]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_081554A6:
	ldr r0, [r4]
	bl sub_0800874C
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_080068AC
	bl sub_080068B0
	adds r2, r0, #0
	ldrh r0, [r4, #0xc]
	adds r0, #4
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bls _081554CE
	strh r1, [r4, #0xc]
_081554CE:
	adds r0, r2, #0
	adds r0, #0x44
	ldrh r0, [r0]
	strh r0, [r4]
	adds r0, r2, #0
	adds r0, #0x46
	ldrh r0, [r0]
	strh r0, [r4, #2]
	ldrb r0, [r4, #8]
	adds r0, #2
	strb r0, [r4, #8]
	ldrh r0, [r4, #0xc]
	cmp r0, #0xff
	bls _081554F0
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_081554F0:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_081554F8
sub_081554F8: @ 0x081554F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldrh r2, [r6]
	movs r1, #0x81
	lsls r1, r1, #1
	cmp r2, r1
	beq _0815556E
	cmp r2, r1
	bgt _0815551E
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	beq _08155550
	cmp r2, r0
	bgt _0815555E
	b _08155702
_0815551E:
	ldr r0, _08155538 @ =0x00000105
	cmp r2, r0
	bne _08155526
	b _08155660
_08155526:
	cmp r2, r0
	bgt _0815553C
	subs r0, #2
	cmp r2, r0
	beq _081555C0
	adds r0, #1
	cmp r2, r0
	beq _081555E6
	b _08155702
	.align 2, 0
_08155538: .4byte 0x00000105
_0815553C:
	movs r0, #0x83
	lsls r0, r0, #1
	cmp r2, r0
	bne _08155546
	b _081556B0
_08155546:
	adds r0, #1
	cmp r2, r0
	bne _0815554E
	b _081556C8
_0815554E:
	b _08155702
_08155550:
	bl sub_08154AEC
	movs r0, #0x5a
	str r0, [r5, #0x48]
	ldrh r0, [r6]
	adds r0, #1
	b _08155700
_0815555E:
	ldr r0, [r5, #0x48]
	subs r0, #1
	str r0, [r5, #0x48]
	cmp r0, #0
	ble _0815556A
	b _08155702
_0815556A:
	strh r1, [r6]
	b _08155702
_0815556E:
	ldr r0, _081555AC @ =gUnk_02002460
	ldr r4, _081555B0 @ =gUnk_08747780
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r4, #0
	bl memcpy2
	subs r4, #0x5e
	movs r0, #1
	movs r1, #0x1f
	movs r2, #0x1e
	adds r3, r4, #0
	bl sub_08138580
	str r0, [r5, #0xc]
	ldr r1, _081555B4 @ =gUnk_03000DD0
	ldrh r0, [r1, #0xe]
	ldr r0, _081555B8 @ =0x0000FFB0
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0x10]
	ldr r0, _081555BC @ =0x0000FF38
	strh r0, [r1, #0x10]
	ldrh r2, [r1]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldrh r0, [r6]
	adds r0, #1
	b _08155700
	.align 2, 0
_081555AC: .4byte gUnk_02002460
_081555B0: .4byte gUnk_08747780
_081555B4: .4byte gUnk_03000DD0
_081555B8: .4byte 0x0000FFB0
_081555BC: .4byte 0x0000FF38
_081555C0:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _081555E0
	bl sub_08139548
	cmp r0, #0
	beq _081555D8
	ldr r0, [r5, #0xc]
	bl sub_08139468
	movs r0, #0
	str r0, [r5, #0xc]
_081555D8:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _081555E0
	b _08155702
_081555E0:
	movs r0, #0x82
	lsls r0, r0, #1
	b _08155700
_081555E6:
	ldr r4, _081556A0 @ =gUnk_03000DD0
	adds r1, r4, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	movs r0, #0x42
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #0x3d
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r1, #8
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x4d
	ldrb r0, [r2]
	strb r1, [r2]
	ldr r0, _081556A4 @ =sub_08155364
	movs r1, #4
	add r2, sp, #4
	adds r3, r7, #0
	bl sub_0800682C
	str r0, [r5, #4]
	ldr r0, _081556A8 @ =sub_081553FC
	movs r1, #8
	add r2, sp, #4
	adds r3, r7, #0
	bl sub_0800682C
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x10
	ldrh r1, [r4, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r4, #0xc]
	adds r3, #0xa0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r4, #0x96
	lsls r4, r4, #3
	str r4, [sp]
	movs r2, #0
	bl sub_08007DE8
	adds r0, r5, #0
	adds r0, #0x28
	movs r1, #0xc8
	rsbs r1, r1, #0
	movs r3, #0x28
	rsbs r3, r3, #0
	str r4, [sp]
	movs r2, #0
	bl sub_08007DE8
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
_08155660:
	adds r4, r5, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08007E68
	adds r0, r5, #0
	adds r0, #0x28
	bl sub_08007E68
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0
	strh r0, [r1]
	ldrh r0, [r5, #0x10]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	ldr r0, _081556AC @ =0x0000FFB0
	strh r0, [r1]
	ldrh r1, [r5, #0x28]
	adds r0, r5, #0
	adds r0, #0x46
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_08008158
	cmp r0, #0
	beq _08155702
	movs r0, #0x83
	lsls r0, r0, #1
	b _08155700
	.align 2, 0
_081556A0: .4byte gUnk_03000DD0
_081556A4: .4byte sub_08155364
_081556A8: .4byte sub_081553FC
_081556AC: .4byte 0x0000FFB0
_081556B0:
	ldr r0, [r5, #8]
	bl sub_08006868
	movs r0, #0
	movs r1, #0x20
	movs r2, #0x1e
	bl sub_08138DAC
	str r0, [r5, #0xc]
	ldrh r0, [r6]
	adds r0, #1
	b _08155700
_081556C8:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _081556E6
	bl sub_08139548
	cmp r0, #0
	beq _081556E0
	ldr r0, [r5, #0xc]
	bl sub_08139468
	movs r0, #0
	str r0, [r5, #0xc]
_081556E0:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _08155702
_081556E6:
	ldr r0, [r5, #8]
	bl sub_0800686C
	movs r2, #0
	lsls r0, r0, #0x10
	movs r1, #0x82
	lsls r1, r1, #0x11
	cmp r0, r1
	bne _081556FA
	movs r2, #1
_081556FA:
	cmp r2, #0
	beq _08155702
	movs r0, #2
_08155700:
	strh r0, [r6]
_08155702:
	movs r0, #0
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0815570C
sub_0815570C: @ 0x0815570C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r1, #0
	adds r5, r2, #0
	ldrh r1, [r6]
	ldr r4, _08155738 @ =0x00000101
	cmp r1, r4
	beq _08155774
	cmp r1, r4
	bgt _0815573C
	cmp r1, #0
	bge _08155726
	b _081558B4
_08155726:
	cmp r1, #1
	bgt _0815572C
	b _081558B4
_0815572C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08155758
	b _081558B4
	.align 2, 0
_08155738: .4byte 0x00000101
_0815573C:
	ldr r0, _08155754 @ =0x00000103
	cmp r1, r0
	bne _08155744
	b _08155848
_08155744:
	cmp r1, r0
	blt _081557C8
	adds r0, #1
	cmp r1, r0
	bne _08155750
	b _08155874
_08155750:
	b _081558B4
	.align 2, 0
_08155754: .4byte 0x00000103
_08155758:
	bl sub_08154A18
	ldr r2, _08155770 @ =gUnk_03000DD0
	ldrh r1, [r2]
	movs r3, #0xe0
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r6]
	b _081558B4
	.align 2, 0
_08155770: .4byte gUnk_03000DD0
_08155774:
	ldr r3, _081557C4 @ =gUnk_087475C0
	movs r0, #0x40
	movs r1, #0x10
	movs r2, #0xa
	bl sub_08138580
	str r0, [r5, #0xc]
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0x40
	movs r2, #0xa
	movs r3, #0
	bl sub_08138E5C
	str r0, [r5]
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0x50
	movs r1, #0xb0
	movs r2, #0xa
	movs r3, #0
	bl sub_08138E5C
	str r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	str r4, [sp]
	str r4, [sp, #4]
	adds r0, r1, #0
	movs r2, #0xa
	movs r3, #0
	bl sub_08138E5C
	str r0, [r5, #8]
	ldrh r0, [r6]
	adds r0, #1
	b _081558B2
	.align 2, 0
_081557C4: .4byte gUnk_087475C0
_081557C8:
	ldr r0, [r5]
	cmp r0, #0
	beq _081557E0
	bl sub_08139548
	cmp r0, #0
	beq _081557E0
	ldr r0, [r5]
	bl sub_08139468
	movs r0, #0
	str r0, [r5]
_081557E0:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _081557F8
	bl sub_08139548
	cmp r0, #0
	beq _081557F8
	ldr r0, [r5, #4]
	bl sub_08139468
	movs r0, #0
	str r0, [r5, #4]
_081557F8:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08155810
	bl sub_08139548
	cmp r0, #0
	beq _08155810
	ldr r0, [r5, #8]
	bl sub_08139468
	movs r0, #0
	str r0, [r5, #8]
_08155810:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _08155828
	bl sub_08139548
	cmp r0, #0
	beq _08155828
	ldr r0, [r5, #0xc]
	bl sub_08139468
	movs r0, #0
	str r0, [r5, #0xc]
_08155828:
	ldr r0, [r5]
	cmp r0, #0
	bne _081558B4
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _081558B4
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _081558B4
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _081558B4
	ldr r0, _08155844 @ =0x00000103
	b _081558B2
	.align 2, 0
_08155844: .4byte 0x00000103
_08155848:
	ldr r3, _0815586C @ =gUnk_08747522
	movs r0, #1
	movs r1, #0xff
	movs r2, #0x1e
	bl sub_08138580
	str r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r3, _08155870 @ =gUnk_08747320
	adds r0, r1, #0
	movs r2, #0x1e
	bl sub_08138580
	str r0, [r5, #4]
	ldrh r0, [r6]
	adds r0, #1
	b _081558B2
	.align 2, 0
_0815586C: .4byte gUnk_08747522
_08155870: .4byte gUnk_08747320
_08155874:
	ldr r0, [r5]
	cmp r0, #0
	beq _0815588C
	bl sub_08139548
	cmp r0, #0
	beq _0815588C
	ldr r0, [r5]
	bl sub_08139468
	movs r0, #0
	str r0, [r5]
_0815588C:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _081558A4
	bl sub_08139548
	cmp r0, #0
	beq _081558A4
	ldr r0, [r5, #4]
	bl sub_08139468
	movs r0, #0
	str r0, [r5, #4]
_081558A4:
	ldr r0, [r5]
	cmp r0, #0
	bne _081558B4
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _081558B4
	movs r0, #2
_081558B2:
	strh r0, [r6]
_081558B4:
	movs r0, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_081558C0
sub_081558C0: @ 0x081558C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r1, [sp, #4]
	adds r6, r2, #0
	ldrh r1, [r1]
	cmp r1, #1
	beq _081558F8
	cmp r1, #1
	bgt _081558E0
	cmp r1, #0
	beq _081558F0
	b _08155A3A
_081558E0:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0815590A
	adds r0, #1
	cmp r1, r0
	beq _08155922
	b _08155A3A
_081558F0:
	ldr r1, [sp, #4]
	ldr r0, [r1, #4]
	str r0, [r6]
	b _08155A3A
_081558F8:
	ldr r0, [r6]
	movs r1, #0
	bl sub_0800AA68
	ldr r0, [r6]
	movs r1, #0
	bl sub_0800AA74
	b _08155A3A
_0815590A:
	ldr r0, [r6]
	movs r1, #1
	bl sub_0800AA68
	ldr r0, [r6]
	movs r1, #1
	bl sub_0800AA74
	ldr r2, [sp, #4]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_08155922:
	movs r3, #0
	mov sb, r3
	adds r0, r6, #0
	adds r0, #8
	str r0, [sp, #0xc]
	adds r1, r6, #0
	adds r1, #0x14
	str r1, [sp, #0x10]
	adds r2, r6, #0
	adds r2, #0x1a
	str r2, [sp, #0x14]
	adds r3, r6, #0
	adds r3, #0x50
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #0x18]
	adds r5, r2, #0
	adds r7, r6, #0
	adds r7, #0x20
	movs r1, #0x68
	adds r1, r1, r6
	mov r8, r1
_0815594E:
	mov r2, sb
	lsls r0, r2, #2
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	ldr r1, [r0]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x18]
	adds r0, r2, r3
	ldrh r0, [r0]
	mov sl, r0
	mov r0, r8
	ldrh r4, [r0]
	ldrb r0, [r5]
	cmp r0, #1
	beq _0815599E
	cmp r0, #1
	bgt _081559C4
	cmp r0, #0
	bne _081559C4
	lsls r0, r4, #2
	adds r0, r0, r1
	movs r2, #2
	ldrsh r1, [r0, r2]
	movs r2, #0
	ldrsh r3, [r0, r2]
	str r3, [sp, #0x1c]
	movs r2, #6
	ldrsh r3, [r0, r2]
	mov ip, r3
	movs r3, #4
	ldrsh r0, [r0, r3]
	str r0, [sp]
	adds r0, r7, #0
	ldr r2, [sp, #0x1c]
	mov r3, ip
	bl sub_08007DE8
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_0815599E:
	adds r0, r7, #0
	bl sub_08007E68
	adds r0, r7, #0
	bl sub_08008158
	cmp r0, #0
	beq _081559C4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sl
	subs r0, #1
	cmp r4, r0
	bge _081559C0
	movs r0, #0
	b _081559C2
_081559C0:
	movs r0, #0xff
_081559C2:
	strb r0, [r5]
_081559C4:
	mov r0, r8
	strh r4, [r0]
	ldr r1, [sp, #0x18]
	adds r1, #2
	str r1, [sp, #0x18]
	adds r5, #1
	adds r7, #0x18
	movs r2, #2
	add r8, r2
	movs r3, #1
	add sb, r3
	mov r0, sb
	cmp r0, #2
	ble _0815594E
	ldr r0, [r6]
	ldrb r2, [r6, #4]
	lsrs r2, r2, #1
	ldrh r1, [r6, #0x20]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r3, [r6, #5]
	lsrs r3, r3, #1
	ldrh r2, [r6, #0x38]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	bl sub_0800A8C8
	ldr r0, [r6]
	ldr r1, [sp, #8]
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0800AA6C
	movs r0, #0
	mov sb, r0
	ldrb r0, [r6, #0x1a]
	cmp r0, #0xff
	bne _08155A2E
	ldr r1, [sp, #0x14]
_08155A1C:
	movs r2, #1
	add sb, r2
	mov r3, sb
	cmp r3, #2
	bgt _08155A2E
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08155A1C
_08155A2E:
	mov r0, sb
	cmp r0, #3
	bne _08155A3A
	movs r0, #2
	ldr r1, [sp, #4]
	strh r0, [r1]
_08155A3A:
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08155A4C
sub_08155A4C: @ 0x08155A4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	str r0, [sp, #0x34]
	str r1, [sp, #0x38]
	adds r7, r2, #0
	ldrh r1, [r1]
	movs r5, #0x81
	lsls r5, r5, #1
	cmp r1, r5
	beq _08155AE4
	cmp r1, r5
	bgt _08155A86
	cmp r1, #1
	beq _08155AB4
	cmp r1, #1
	bgt _08155A76
	b _08155D04
_08155A76:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08155ACC
	adds r0, #1
	cmp r1, r0
	beq _08155AD8
	b _08155D04
_08155A86:
	ldr r0, _08155AA4 @ =0x00000105
	cmp r1, r0
	bne _08155A8E
	b _08155C54
_08155A8E:
	cmp r1, r0
	bgt _08155AA8
	subs r0, #2
	cmp r1, r0
	bne _08155A9A
	b _08155BC8
_08155A9A:
	adds r0, #1
	cmp r1, r0
	bne _08155AA2
	b _08155C2C
_08155AA2:
	b _08155D04
	.align 2, 0
_08155AA4: .4byte 0x00000105
_08155AA8:
	movs r0, #0x83
	lsls r0, r0, #1
	cmp r1, r0
	bne _08155AB2
	b _08155CE0
_08155AB2:
	b _08155D04
_08155AB4:
	ldr r0, [r7]
	cmp r0, #0
	beq _08155AC2
	bl sub_0800AAC8
	movs r0, #0
	str r0, [r7]
_08155AC2:
	adds r0, r7, #4
	movs r1, #3
	bl sub_0800AB80
	b _08155D04
_08155ACC:
	ldr r0, _08155AD4 @ =0x00000101
	ldr r1, [sp, #0x38]
	b _08155D02
	.align 2, 0
_08155AD4: .4byte 0x00000101
_08155AD8:
	movs r0, #0
	str r0, [r7, #0x1c]
	ldr r2, [sp, #0x38]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_08155AE4:
	ldr r0, _08155BB8 @ =gUnk_08747B20
	ldr r2, _08155BBC @ =gUnk_086A2408
	ldr r1, [r7, #0x1c]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	movs r1, #0
	movs r3, #3
	bl sub_0800A4D8
	ldr r1, [r7, #0x1c]
	lsls r1, r1, #2
	adds r5, r7, #4
	adds r1, r5, r1
	str r0, [r1]
	ldr r2, [r7, #0x1c]
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, #0x64
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800A8D0
	ldr r1, [r7, #0x1c]
	lsls r0, r1, #2
	adds r5, r5, r0
	mov r8, r5
	ldr r2, _08155BC0 @ =gUnk_086A248C
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r4, r2, #4
	adds r4, r0, r4
	adds r1, r0, r2
	ldrh r3, [r1, #0x10]
	str r3, [sp, #0x3c]
	adds r3, r2, #0
	adds r3, #8
	adds r3, r0, r3
	ldrh r5, [r1, #0x12]
	str r5, [sp, #0x40]
	adds r2, #0xc
	adds r0, r0, r2
	ldrh r2, [r1, #0x14]
	str r2, [sp, #0x44]
	ldrb r5, [r1]
	mov sl, r5
	ldrb r1, [r1, #1]
	str r1, [sp, #0x48]
	mov r2, r8
	ldr r1, [r2]
	ldr r5, [r4]
	ldr r3, [r3]
	mov r8, r3
	ldr r0, [r0]
	mov sb, r0
	str r1, [sp, #0x1c]
	ldr r0, _08155BC4 @ =sub_081558C0
	movs r1, #0x70
	add r2, sp, #0x18
	ldr r3, [sp, #0x34]
	bl sub_0800682C
	adds r4, r0, #0
	bl sub_080068B0
	mov r3, sl
	strb r3, [r0, #4]
	add r1, sp, #0x48
	ldrb r1, [r1]
	strb r1, [r0, #5]
	str r5, [r0, #8]
	mov r2, r8
	str r2, [r0, #0xc]
	mov r3, sb
	str r3, [r0, #0x10]
	mov r5, sp
	ldrh r5, [r5, #0x3c]
	strh r5, [r0, #0x14]
	add r1, sp, #0x40
	ldrh r1, [r1]
	strh r1, [r0, #0x16]
	add r2, sp, #0x44
	ldrh r2, [r2]
	strh r2, [r0, #0x18]
	ldr r1, [r7, #0x1c]
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r1
	str r4, [r0]
	str r6, [r7, #0x20]
	ldr r3, [sp, #0x38]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	b _08155D04
	.align 2, 0
_08155BB8: .4byte gUnk_08747B20
_08155BBC: .4byte gUnk_086A2408
_08155BC0: .4byte gUnk_086A248C
_08155BC4: .4byte sub_081558C0
_08155BC8:
	ldr r0, [r7, #0x1c]
	lsls r0, r0, #2
	adds r4, r7, #0
	adds r4, #0x10
	adds r0, r4, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _08155BDA
	b _08155D04
_08155BDA:
	bl sub_08006870
	cmp r0, #0
	bne _08155BE4
	b _08155D04
_08155BE4:
	ldr r0, [r7, #0x1c]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0]
	bl sub_08006818
	ldr r0, [r7, #0x1c]
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0]
	ldr r2, [r7, #0x1c]
	lsls r1, r2, #2
	adds r0, r7, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08155C28 @ =gUnk_086A2408
	lsls r2, r2, #3
	adds r2, r2, r1
	movs r3, #2
	ldrsh r1, [r2, r3]
	movs r3, #4
	ldrsh r2, [r2, r3]
	movs r3, #0
	bl sub_0800A8C8
	ldr r0, [r7, #0x1c]
	adds r0, #1
	str r0, [r7, #0x1c]
	cmp r0, #2
	bgt _08155CFC
	ldr r0, [sp, #0x38]
	strh r5, [r0]
	b _08155D04
	.align 2, 0
_08155C28: .4byte gUnk_086A2408
_08155C2C:
	ldr r0, _08155C50 @ =gUnk_086A2408
	adds r4, r0, #2
	adds r5, r7, #4
	movs r6, #2
_08155C34:
	ldm r5!, {r0}
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	movs r3, #0
	bl sub_0800A8C8
	adds r4, #8
	subs r6, #1
	cmp r6, #0
	bge _08155C34
	b _08155CCE
	.align 2, 0
_08155C50: .4byte gUnk_086A2408
_08155C54:
	adds r0, r7, #4
	mov r8, r0
	movs r6, #0
	adds r4, r7, #0
	adds r4, #0x10
	movs r5, #2
_08155C60:
	ldr r0, [r4]
	cmp r0, #0
	beq _08155C6C
	bl sub_08006818
	str r6, [r4]
_08155C6C:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _08155C60
	movs r5, #0
	mov r4, r8
	ldr r6, _08155CD8 @ =gUnk_086A2408
_08155C7A:
	ldr r0, [r4]
	cmp r0, #0
	bne _08155C9A
	ldrh r2, [r6]
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, _08155CDC @ =gUnk_08747B20
	movs r1, #0
	movs r3, #3
	bl sub_0800A4D8
	str r0, [r4]
_08155C9A:
	ldr r0, [r7, #0x1c]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	movs r1, #0x64
	subs r1, r1, r5
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800A8D0
	ldr r0, [r4]
	movs r2, #2
	ldrsh r1, [r6, r2]
	movs r3, #4
	ldrsh r2, [r6, r3]
	movs r3, #0
	bl sub_0800A8C8
	ldm r4!, {r0}
	movs r1, #0
	bl sub_0800AA68
	adds r6, #8
	adds r5, #1
	cmp r5, #2
	ble _08155C7A
_08155CCE:
	movs r0, #2
	ldr r5, [sp, #0x38]
	strh r0, [r5]
	b _08155D04
	.align 2, 0
_08155CD8: .4byte gUnk_086A2408
_08155CDC: .4byte gUnk_08747B20
_08155CE0:
	movs r6, #0
	adds r5, r7, #0
	adds r5, #0x10
	movs r4, #2
_08155CE8:
	ldr r0, [r5]
	cmp r0, #0
	beq _08155CF4
	bl sub_08006818
	str r6, [r5]
_08155CF4:
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _08155CE8
_08155CFC:
	ldr r1, [sp, #0x38]
	ldrh r0, [r1]
	adds r0, #1
_08155D02:
	strh r0, [r1]
_08155D04:
	movs r0, #0
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08155D18
sub_08155D18: @ 0x08155D18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r1
	adds r6, r2, #0
	ldrh r1, [r1]
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r1, r0
	bne _08155D34
	b _08155E32
_08155D34:
	cmp r1, r0
	bgt _08155D58
	cmp r1, #1
	beq _08155D7E
	movs r0, #0x28
	adds r0, r0, r6
	mov r8, r0
	cmp r1, #1
	bgt _08155D48
	b _081560E2
_08155D48:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08155DBA
	adds r0, #1
	cmp r1, r0
	beq _08155E24
	b _081560E2
_08155D58:
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, r0
	bne _08155D62
	b _08155F8C
_08155D62:
	cmp r1, r0
	bge _08155D68
	b _08155E9C
_08155D68:
	adds r0, #1
	cmp r1, r0
	bne _08155D70
	b _08155FA8
_08155D70:
	adds r0, #1
	cmp r1, r0
	bne _08155D78
	b _081560D8
_08155D78:
	movs r1, #0x28
	adds r1, r1, r6
	b _081560E0
_08155D7E:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0800AB80
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _08155D94
	bl sub_0800AAC8
	movs r0, #0
	str r0, [r6, #0x10]
_08155D94:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _08155DA2
	bl sub_0800AAC8
	movs r0, #0
	str r0, [r6, #0x14]
_08155DA2:
	ldr r0, [r6, #0x18]
	movs r2, #0x28
	adds r2, r2, r6
	mov r8, r2
	cmp r0, #0
	bne _08155DB0
	b _081560E2
_08155DB0:
	bl sub_0800AAC8
	movs r0, #0
	str r0, [r6, #0x18]
	b _081560E2
_08155DBA:
	movs r7, #0
	movs r0, #1
	mov r3, r8
	strb r0, [r3]
	str r7, [r6, #0x2c]
	bl sub_08145388
	movs r1, #0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08155DD2
	movs r1, #1
_08155DD2:
	adds r0, r6, #0
	adds r0, #0x30
	strb r1, [r0]
	ldr r5, _08155E20 @ =gUnk_08747B20
	movs r4, #0x78
	str r4, [sp]
	movs r0, #0x80
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #3
	bl sub_0800A4D8
	str r0, [r6, #0x14]
	str r4, [sp]
	movs r0, #0x68
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xe
	movs r3, #3
	bl sub_0800A4D8
	str r0, [r6, #0x18]
	str r7, [r6, #0x24]
	mov r4, sb
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	b _081560E2
	.align 2, 0
_08155E20: .4byte gUnk_08747B20
_08155E24:
	ldr r0, [r6, #0x24]
	adds r0, #1
	str r0, [r6, #0x24]
	cmp r0, #0xf
	bgt _08155E30
	b _081560E2
_08155E30:
	b _08155F78
_08155E32:
	ldr r0, [r6, #0x24]
	adds r0, #1
	str r0, [r6, #0x24]
	cmp r0, #0x27
	ble _08155E40
	movs r0, #0
	str r0, [r6, #0x24]
_08155E40:
	ldr r0, [r6, #0x24]
	cmp r0, #0x13
	bgt _08155E50
	ldr r0, [r6, #0x18]
	movs r1, #1
	bl sub_0800A978
	b _08155E58
_08155E50:
	ldr r0, [r6, #0x18]
	movs r1, #0
	bl sub_0800A978
_08155E58:
	ldr r0, _08155E94 @ =gUnk_03000820
	ldrh r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08155E74
	movs r0, #1
	ands r0, r1
	movs r2, #0x28
	adds r2, r2, r6
	mov r8, r2
	cmp r0, #0
	bne _08155E74
	b _081560E2
_08155E74:
	movs r4, #0
	str r4, [r6, #0x2c]
	ldr r0, [r6, #0x18]
	bl sub_0800AAC8
	str r4, [r6, #0x18]
	movs r0, #0xad
	bl PlaySE
	ldr r0, _08155E98 @ =0x00000103
	mov r3, sb
	strh r0, [r3]
	movs r4, #0x28
	adds r4, r4, r6
	mov r8, r4
	b _081560E2
	.align 2, 0
_08155E94: .4byte gUnk_03000820
_08155E98: .4byte 0x00000103
_08155E9C:
	movs r5, #0
	movs r0, #0x28
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0x1c
	adds r1, r1, r6
	mov sl, r1
	movs r7, #0
_08155EAC:
	mov r2, sl
	adds r1, r2, r5
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08155EF0 @ =gUnk_086A24E4
	lsls r1, r5, #3
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r3, #2
	ldrsh r0, [r1, r3]
	str r0, [sp]
	movs r4, #4
	ldrsh r0, [r1, r4]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r0, _08155EF4 @ =gUnk_08747B20
	movs r1, #0
	movs r3, #3
	bl sub_0800A4D8
	lsls r1, r5, #2
	adds r1, r6, r1
	str r0, [r1]
	cmp r5, #2
	beq _08155F18
	cmp r5, #2
	bgt _08155EF8
	cmp r5, #1
	beq _08155EFE
	b _08155F44
	.align 2, 0
_08155EF0: .4byte gUnk_086A24E4
_08155EF4: .4byte gUnk_08747B20
_08155EF8:
	cmp r5, #3
	beq _08155F30
	b _08155F44
_08155EFE:
	ldr r0, _08155F14 @ =0x0204E030
	ldrb r4, [r0]
	cmp r4, #0
	bne _08155F44
	ldr r0, [r6, #4]
	movs r1, #1
	bl sub_0800A974
	strb r4, [r6, #0x1d]
	b _08155F44
	.align 2, 0
_08155F14: .4byte 0x0204E030
_08155F18:
	ldr r0, _08155F2C @ =0x0204E031
	ldrb r4, [r0]
	cmp r4, #0
	bne _08155F44
	ldr r0, [r6, #8]
	movs r1, #1
	bl sub_0800A974
	strb r4, [r6, #0x1e]
	b _08155F44
	.align 2, 0
_08155F2C: .4byte 0x0204E031
_08155F30:
	bl sub_0814503C
	lsls r0, r0, #0x18
	movs r1, #0xc
	cmp r0, #0
	beq _08155F3E
	movs r1, #0xb
_08155F3E:
	ldr r0, [r6, #0xc]
	bl sub_0800A894
_08155F44:
	adds r5, #1
	cmp r5, #3
	ble _08155EAC
	ldr r0, _08155F84 @ =gUnk_08747B20
	movs r1, #0x1e
	rsbs r1, r1, #0
	str r1, [sp]
	movs r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0
	movs r2, #6
	movs r3, #3
	bl sub_0800A4D8
	str r0, [r6, #0x10]
	ldr r0, _08155F88 @ =0x0204E030
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [r6, #0x20]
	str r4, [r6, #0x24]
_08155F78:
	mov r1, sb
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _081560E2
	.align 2, 0
_08155F84: .4byte gUnk_08747B20
_08155F88: .4byte 0x0204E030
_08155F8C:
	ldr r0, [r6, #0x24]
	adds r0, #1
	str r0, [r6, #0x24]
	movs r2, #0x28
	adds r2, r2, r6
	mov r8, r2
	cmp r0, #0xf
	bgt _08155F9E
	b _081560E2
_08155F9E:
	mov r3, sb
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	b _081560E2
_08155FA8:
	ldr r0, _08155FE8 @ =gUnk_03000820
	ldrh r1, [r0, #2]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08155FEC
	movs r0, #0
	str r0, [r6, #0x2c]
	movs r0, #0xb2
	bl PlaySE
	movs r4, #0x28
	adds r4, r4, r6
	mov r8, r4
	movs r2, #3
	adds r1, r6, #0
	adds r1, #0x1c
_08155FCE:
	ldr r0, [r6, #0x20]
	subs r0, #1
	str r0, [r6, #0x20]
	cmp r0, #0
	bge _08155FDA
	str r2, [r6, #0x20]
_08155FDA:
	ldr r0, [r6, #0x20]
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08155FCE
	b _08156064
	.align 2, 0
_08155FE8: .4byte gUnk_03000820
_08155FEC:
	movs r2, #0x84
	ands r2, r1
	cmp r2, #0
	beq _08156020
	str r0, [r6, #0x2c]
	movs r0, #0xb2
	bl PlaySE
	movs r0, #0x28
	adds r0, r0, r6
	mov r8, r0
	movs r2, #0
	adds r1, r6, #0
	adds r1, #0x1c
_08156008:
	ldr r0, [r6, #0x20]
	adds r0, #1
	str r0, [r6, #0x20]
	cmp r0, #3
	ble _08156014
	str r2, [r6, #0x20]
_08156014:
	ldr r0, [r6, #0x20]
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08156008
	b _08156064
_08156020:
	movs r0, #0x30
	ands r0, r1
	movs r1, #0x28
	adds r1, r1, r6
	mov r8, r1
	cmp r0, #0
	beq _08156064
	ldr r0, [r6, #0x20]
	cmp r0, #3
	bne _08156064
	str r2, [r6, #0x2c]
	movs r0, #0xb2
	bl PlaySE
	bl sub_0814503C
	lsls r0, r0, #0x18
	movs r1, #0
	cmp r0, #0
	bne _0815604A
	movs r1, #0xff
_0815604A:
	adds r0, r1, #0
	bl sub_08145060
	bl sub_0814503C
	lsls r0, r0, #0x18
	movs r1, #0xc
	cmp r0, #0
	beq _0815605E
	movs r1, #0xb
_0815605E:
	ldr r0, [r6, #0xc]
	bl sub_0800A894
_08156064:
	ldr r0, _081560B8 @ =gUnk_03000820
	ldrh r1, [r0, #2]
	movs r2, #0xf0
	ands r2, r1
	cmp r2, #0
	bne _081560E2
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08156080
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _081560E2
_08156080:
	ldr r1, [r6, #0x20]
	cmp r1, #3
	bne _081560BC
	str r2, [r6, #0x2c]
	movs r0, #0xb2
	bl PlaySE
	bl sub_0814503C
	lsls r0, r0, #0x18
	movs r1, #0
	cmp r0, #0
	bne _0815609C
	movs r1, #0xff
_0815609C:
	adds r0, r1, #0
	bl sub_08145060
	bl sub_0814503C
	lsls r0, r0, #0x18
	movs r1, #0xc
	cmp r0, #0
	beq _081560B0
	movs r1, #0xb
_081560B0:
	ldr r0, [r6, #0xc]
	bl sub_0800A894
	b _081560E2
	.align 2, 0
_081560B8: .4byte gUnk_03000820
_081560BC:
	ldr r0, _081560D4 @ =gUnk_02029D34
	strb r1, [r0]
	mov r3, r8
	strb r2, [r3]
	str r2, [r6, #0x2c]
	movs r0, #0xad
	bl PlaySE
	movs r0, #2
	mov r4, sb
	strh r0, [r4]
	b _081560E2
	.align 2, 0
_081560D4: .4byte gUnk_02029D34
_081560D8:
	adds r1, r6, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
_081560E0:
	mov r8, r1
_081560E2:
	ldr r3, [r6, #0x10]
	cmp r3, #0
	beq _08156100
	ldr r1, _0815612C @ =gUnk_086A24D4
	ldr r0, [r6, #0x20]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r4, #2
	ldrsh r2, [r0, r4]
	adds r0, r3, #0
	movs r3, #0
	bl sub_0800A8C8
_08156100:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08156144
	mov r2, sb
	ldrh r0, [r2]
	cmp r0, #0xff
	bls _08156144
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	beq _08156134
	ldr r0, [r6, #0x2c]
	adds r0, #1
	str r0, [r6, #0x2c]
	ldr r1, _08156130 @ =0x00000707
	cmp r0, r1
	ble _08156144
	movs r0, #2
	strh r0, [r2]
	b _08156144
	.align 2, 0
_0815612C: .4byte gUnk_086A24D4
_08156130: .4byte 0x00000707
_08156134:
	bl sub_081452C4
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _08156144
	movs r0, #2
	mov r3, sb
	strh r0, [r3]
_08156144:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08156158
sub_08156158: @ 0x08156158
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa8
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldrh r2, [r6]
	movs r4, #0x84
	lsls r4, r4, #1
	cmp r2, r4
	bne _0815616E
	b _08156426
_0815616E:
	cmp r2, r4
	bgt _081561C0
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r2, r0
	beq _08156262
	cmp r2, r0
	bgt _0815618A
	subs r0, #2
	cmp r2, r0
	beq _0815623C
	cmp r2, r0
	bgt _08156258
	b _0815669E
_0815618A:
	ldr r0, _081561A8 @ =0x00000105
	cmp r2, r0
	bne _08156192
	b _08156388
_08156192:
	cmp r2, r0
	bgt _081561AC
	subs r0, #2
	cmp r2, r0
	bne _0815619E
	b _08156304
_0815619E:
	adds r0, #1
	cmp r2, r0
	bne _081561A6
	b _08156354
_081561A6:
	b _0815669E
	.align 2, 0
_081561A8: .4byte 0x00000105
_081561AC:
	movs r0, #0x83
	lsls r0, r0, #1
	cmp r2, r0
	bne _081561B6
	b _081563E8
_081561B6:
	adds r0, #1
	cmp r2, r0
	bne _081561BE
	b _08156400
_081561BE:
	b _0815669E
_081561C0:
	movs r1, #0x87
	lsls r1, r1, #1
	cmp r2, r1
	bne _081561CA
	b _081564D2
_081561CA:
	cmp r2, r1
	bgt _08156204
	ldr r0, _081561EC @ =0x0000010B
	cmp r2, r0
	bne _081561D6
	b _08156494
_081561D6:
	cmp r2, r0
	bgt _081561F0
	subs r0, #2
	cmp r2, r0
	bne _081561E2
	b _08156454
_081561E2:
	adds r0, #1
	cmp r2, r0
	bne _081561EA
	b _0815647A
_081561EA:
	b _0815669E
	.align 2, 0
_081561EC: .4byte 0x0000010B
_081561F0:
	movs r0, #0x86
	lsls r0, r0, #1
	cmp r2, r0
	bne _081561FA
	b _081564A2
_081561FA:
	adds r0, #1
	cmp r2, r0
	bne _08156202
	b _081564C0
_08156202:
	b _0815669E
_08156204:
	ldr r0, _08156224 @ =0x00000111
	cmp r2, r0
	bne _0815620C
	b _08156574
_0815620C:
	cmp r2, r0
	bgt _08156228
	subs r0, #2
	cmp r2, r0
	bne _08156218
	b _081564F0
_08156218:
	adds r0, #1
	cmp r2, r0
	bne _08156220
	b _08156514
_08156220:
	b _0815669E
	.align 2, 0
_08156224: .4byte 0x00000111
_08156228:
	movs r0, #0x89
	lsls r0, r0, #1
	cmp r2, r0
	bne _08156232
	b _081565D2
_08156232:
	adds r0, #1
	cmp r2, r0
	bne _0815623A
	b _0815665C
_0815623A:
	b _0815669E
_0815623C:
	ldr r2, _08156250 @ =gUnk_03000DD0
	ldrh r1, [r2]
	ldr r0, _08156254 @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	bl sub_081452EC
	ldrh r0, [r6]
	adds r0, #1
	b _0815669C
	.align 2, 0
_08156250: .4byte gUnk_03000DD0
_08156254: .4byte 0x000080FF
_08156258:
	movs r0, #0
	str r0, [r5, #0x2c]
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
_08156262:
	ldr r0, [r5, #0x2c]
	cmp r0, #1
	beq _08156298
	cmp r0, #1
	bgt _08156272
	cmp r0, #0
	beq _0815627C
	b _081562F2
_08156272:
	cmp r0, #2
	beq _081562AC
	cmp r0, #3
	beq _081562DC
	b _081562F2
_0815627C:
	ldr r0, _08156294 @ =gUnk_086A2340
	movs r1, #4
	adds r2, r7, #0
	bl sub_0800751C
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #6
	bl sub_08007550
	b _081562F0
	.align 2, 0
_08156294: .4byte gUnk_086A2340
_08156298:
	ldr r0, _081562A8 @ =gUnk_086A2370
	movs r1, #3
	adds r2, r7, #0
	bl sub_08007578
	str r0, [r5, #0xc]
	b _081562F2
	.align 2, 0
_081562A8: .4byte gUnk_086A2370
_081562AC:
	ldr r0, _081562D0 @ =0x02049D50
	ldr r1, _081562D4 @ =gUnk_087405B8
	movs r2, #0x84
	lsls r2, r2, #6
	bl memcpy2
	ldr r0, _081562D8 @ =gUnk_086A23A0
	movs r1, #3
	adds r2, r7, #0
	bl sub_0800751C
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #6
	bl sub_08007550
	b _081562F0
	.align 2, 0
_081562D0: .4byte 0x02049D50
_081562D4: .4byte gUnk_087405B8
_081562D8: .4byte gUnk_086A23A0
_081562DC:
	ldr r0, _081562F8 @ =gUnk_086A23C4
	movs r1, #2
	adds r2, r7, #0
	bl sub_08007578
	adds r4, r0, #0
	ldr r1, _081562FC @ =0x000003FF
	ldr r2, _08156300 @ =0x000001FF
	bl sub_080075A8
_081562F0:
	str r4, [r5, #0xc]
_081562F2:
	ldrh r0, [r6]
	adds r0, #1
	b _0815669C
	.align 2, 0
_081562F8: .4byte gUnk_086A23C4
_081562FC: .4byte 0x000003FF
_08156300: .4byte 0x000001FF
_08156304:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _08156324
	bl sub_08006870
	cmp r0, #0
	beq _0815631C
	ldr r0, [r5, #0xc]
	bl sub_08006818
	movs r0, #0
	str r0, [r5, #0xc]
_0815631C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _08156324
	b _0815669E
_08156324:
	ldr r0, [r5, #0x2c]
	adds r0, #1
	str r0, [r5, #0x2c]
	cmp r0, #3
	bgt _08156334
	movs r0, #0x81
	lsls r0, r0, #1
	b _0815669C
_08156334:
	ldr r0, _08156344 @ =gUnk_02029D30
	ldrb r0, [r0]
	cmp r0, #0
	bne _08156348
	movs r0, #0x82
	lsls r0, r0, #1
	b _0815669C
	.align 2, 0
_08156344: .4byte gUnk_02029D30
_08156348:
	movs r0, #0x1c
	bl sub_081452CC
	movs r0, #0x88
	lsls r0, r0, #1
	b _0815669C
_08156354:
	movs r0, #0
	strb r0, [r5]
	ldr r0, _08156380 @ =sub_081550B0
	movs r1, #0x24
	mov r2, sp
	adds r3, r7, #0
	bl sub_0800682C
	str r0, [r5, #0x14]
	ldr r0, _08156384 @ =sub_081554F8
	movs r1, #0x4c
	mov r2, sp
	adds r3, r7, #0
	bl sub_0800682C
	str r0, [r5, #0x18]
	movs r0, #0x5a
	str r0, [r5, #0x2c]
	ldrh r0, [r6]
	adds r0, #1
	b _0815669C
	.align 2, 0
_08156380: .4byte sub_081550B0
_08156384: .4byte sub_081554F8
_08156388:
	ldrb r0, [r5]
	cmp r0, #0
	bne _081563A2
	ldr r0, [r5, #0x2c]
	subs r0, #1
	str r0, [r5, #0x2c]
	cmp r0, #0
	bne _081563A2
	movs r0, #0x1c
	bl sub_081452CC
	movs r0, #1
	strb r0, [r5]
_081563A2:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _081563BA
	bl sub_08006870
	cmp r0, #0
	beq _081563BA
	ldr r0, [r5, #0x14]
	bl sub_08006818
	movs r0, #0
	str r0, [r5, #0x14]
_081563BA:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _081563D2
	bl sub_08006870
	cmp r0, #0
	beq _081563D2
	ldr r0, [r5, #0x18]
	bl sub_08006818
	movs r0, #0
	str r0, [r5, #0x18]
_081563D2:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _081563DA
	b _0815669E
_081563DA:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _081563E2
	b _0815669E
_081563E2:
	movs r0, #0x83
	lsls r0, r0, #1
	b _0815669C
_081563E8:
	ldr r0, _081563FC @ =sub_08154B7C
	add r2, sp, #0x1c
	movs r1, #0x34
	adds r3, r7, #0
	bl sub_0800682C
	str r0, [r5, #0x1c]
	ldrh r0, [r6]
	adds r0, #1
	b _0815669C
	.align 2, 0
_081563FC: .4byte sub_08154B7C
_08156400:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _08156420
	bl sub_08006870
	cmp r0, #0
	beq _08156418
	ldr r0, [r5, #0x1c]
	bl sub_08006818
	movs r0, #0
	str r0, [r5, #0x1c]
_08156418:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _08156420
	b _0815669E
_08156420:
	movs r0, #0x84
	lsls r0, r0, #1
	b _0815669C
_08156426:
	ldr r0, _0815644C @ =sub_0815570C
	add r4, sp, #0x38
	movs r1, #0x10
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800682C
	str r0, [r5, #0x20]
	ldr r0, _08156450 @ =sub_08156740
	movs r1, #4
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0800682C
	str r0, [r5, #0x24]
	ldrh r0, [r6]
	adds r0, #1
	b _0815669C
	.align 2, 0
_0815644C: .4byte sub_0815570C
_08156450: .4byte sub_08156740
_08156454:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08156474
	bl sub_08006870
	cmp r0, #0
	beq _0815646C
	ldr r0, [r5, #0x20]
	bl sub_08006818
	movs r0, #0
	str r0, [r5, #0x20]
_0815646C:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08156474
	b _0815669E
_08156474:
	ldrh r0, [r6]
	adds r0, #1
	b _0815669C
_0815647A:
	ldr r0, _08156490 @ =sub_08155A4C
	add r2, sp, #0x54
	movs r1, #0x24
	adds r3, r7, #0
	bl sub_0800682C
	str r0, [r5, #0x28]
	ldrh r0, [r6]
	adds r0, #1
	b _0815669C
	.align 2, 0
_08156490: .4byte sub_08155A4C
_08156494:
	ldr r0, [r5, #0x28]
	bl sub_08006870
	cmp r0, #0
	bne _081564A0
	b _0815669E
_081564A0:
	b _08156698
_081564A2:
	movs r0, #0
	strb r0, [r5]
	ldr r0, _081564BC @ =sub_08155D18
	add r2, sp, #0x70
	movs r1, #0x34
	adds r3, r7, #0
	bl sub_0800682C
	str r0, [r5, #0x10]
	ldrh r0, [r6]
	adds r0, #1
	b _0815669C
	.align 2, 0
_081564BC: .4byte sub_08155D18
_081564C0:
	ldr r0, [r5, #0x10]
	bl sub_08006870
	cmp r0, #0
	bne _081564CC
	b _0815669E
_081564CC:
	ldrh r0, [r6]
	adds r0, #1
	b _0815669C
_081564D2:
	ldr r0, [r5, #0x10]
	movs r1, #0x83
	lsls r1, r1, #1
	bl sub_08006868
	movs r1, #0x80
	lsls r1, r1, #2
	movs r0, #0
	movs r2, #4
	bl sub_08138DAC
	str r0, [r5, #4]
	ldrh r0, [r6]
	adds r0, #1
	b _0815669C
_081564F0:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _08156510
	bl sub_08139548
	cmp r0, #0
	beq _08156508
	ldr r0, [r5, #4]
	bl sub_08139468
	movs r0, #0
	str r0, [r5, #4]
_08156508:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _08156510
	b _0815669E
_08156510:
	movs r0, #2
	b _0815669C
_08156514:
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _08156522
	bl sub_08006868
_08156522:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0815652E
	adds r1, r4, #0
	bl sub_08006868
_0815652E:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0815653C
	movs r1, #0x86
	lsls r1, r1, #1
	bl sub_08006868
_0815653C:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08156548
	ldr r1, _08156570 @ =0x00000105
	bl sub_08006868
_08156548:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _08156556
	movs r1, #0x83
	lsls r1, r1, #1
	bl sub_08006868
_08156556:
	bl sub_081394BC
	movs r1, #0x80
	lsls r1, r1, #2
	movs r0, #0
	movs r2, #4
	bl sub_08138DAC
	str r0, [r5, #4]
	ldrh r0, [r6]
	adds r0, #1
	b _0815669C
	.align 2, 0
_08156570: .4byte 0x00000105
_08156574:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _08156594
	bl sub_08139548
	cmp r0, #0
	beq _0815658C
	ldr r0, [r5, #4]
	bl sub_08139468
	movs r0, #0
	str r0, [r5, #4]
_0815658C:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _08156594
	b _0815669E
_08156594:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _081565A2
	bl sub_08006818
	movs r0, #0
	str r0, [r5, #0x14]
_081565A2:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _081565B0
	bl sub_08006818
	movs r0, #0
	str r0, [r5, #0x18]
_081565B0:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _081565BE
	bl sub_08006818
	movs r0, #0
	str r0, [r5, #0x1c]
_081565BE:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _081565CC
	bl sub_08006818
	movs r0, #0
	str r0, [r5, #0x20]
_081565CC:
	ldrh r0, [r6]
	adds r0, #1
	b _0815669C
_081565D2:
	bl sub_08154A18
	ldr r0, _08156640 @ =gUnk_02002400
	movs r4, #0
	strh r4, [r0]
	ldr r3, _08156644 @ =gUnk_08747522
	movs r0, #1
	movs r1, #0xff
	movs r2, #4
	bl sub_08138580
	str r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r3, _08156648 @ =gUnk_08747320
	adds r0, r1, #0
	movs r2, #4
	bl sub_08138580
	str r0, [r5, #8]
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _0815660E
	ldr r0, _0815664C @ =sub_08156740
	add r2, sp, #0x8c
	movs r1, #4
	adds r3, r7, #0
	bl sub_0800682C
	str r0, [r5, #0x24]
_0815660E:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _08156622
	ldr r0, _08156650 @ =sub_08155A4C
	add r2, sp, #0x8c
	movs r1, #0x24
	adds r3, r7, #0
	bl sub_0800682C
	str r0, [r5, #0x28]
_08156622:
	ldr r0, [r5, #0x28]
	ldr r1, _08156654 @ =0x00000105
	bl sub_08006868
	ldr r2, _08156658 @ =gUnk_03000DD0
	ldrh r0, [r2]
	movs r3, #0xe0
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r6]
	adds r0, #1
	b _0815669C
	.align 2, 0
_08156640: .4byte gUnk_02002400
_08156644: .4byte gUnk_08747522
_08156648: .4byte gUnk_08747320
_0815664C: .4byte sub_08156740
_08156650: .4byte sub_08155A4C
_08156654: .4byte 0x00000105
_08156658: .4byte gUnk_03000DD0
_0815665C:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _08156674
	bl sub_08139548
	cmp r0, #0
	beq _08156674
	ldr r0, [r5, #4]
	bl sub_08139468
	movs r0, #0
	str r0, [r5, #4]
_08156674:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0815668C
	bl sub_08139548
	cmp r0, #0
	beq _0815668C
	ldr r0, [r5, #8]
	bl sub_08139468
	movs r0, #0
	str r0, [r5, #8]
_0815668C:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0815669E
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0815669E
_08156698:
	movs r0, #0x86
	lsls r0, r0, #1
_0815669C:
	strh r0, [r6]
_0815669E:
	ldrb r2, [r5]
	cmp r2, #1
	bne _081566BC
	ldr r0, _081566C8 @ =gUnk_03000820
	ldrh r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _081566B6
	ands r2, r1
	cmp r2, #0
	beq _081566BC
_081566B6:
	movs r0, #0x88
	lsls r0, r0, #1
	strh r0, [r6]
_081566BC:
	movs r0, #0
	add sp, #0xa8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_081566C8: .4byte gUnk_03000820

	thumb_func_start sub_081566CC
sub_081566CC: @ 0x081566CC
	push {r4, r5, r6, r7, lr}
	ldr r5, _0815671C @ =0x0204E030
	movs r0, #0
	strb r0, [r5]
	ldr r7, _08156720 @ =0x0204E031
	strb r0, [r7]
	ldr r2, _08156724 @ =0x0204BE50
	movs r0, #1
	movs r1, #0
	bl sub_08002A24
	cmp r0, #0
	beq _081566EC
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_081566EC:
	movs r4, #0
	adds r6, r5, #0
	adds r5, r7, #0
_081566F2:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	ldr r2, _08156724 @ =0x0204BE50
	bl sub_08002A24
	cmp r0, #0
	beq _0815670E
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_0815670E:
	adds r4, #1
	cmp r4, #2
	ble _081566F2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0815671C: .4byte 0x0204E030
_08156720: .4byte 0x0204E031
_08156724: .4byte 0x0204BE50

	thumb_func_start sub_08156728
sub_08156728: @ 0x08156728
	ldr r0, _08156730 @ =0x0204E030
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08156730: .4byte 0x0204E030

	thumb_func_start sub_08156734
sub_08156734: @ 0x08156734
	ldr r0, _0815673C @ =0x0204E031
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0815673C: .4byte 0x0204E031

	thumb_func_start sub_08156740
sub_08156740: @ 0x08156740
	adds r3, r2, #0
	ldrh r1, [r1]
	cmp r1, #0
	blt _08156780
	cmp r1, #1
	ble _08156780
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08156780
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0815676C
	ldr r0, _08156784 @ =gUnk_03000DD0
	ldrh r1, [r0, #0xa]
	adds r1, #1
	ldrh r2, [r0, #0xa]
	strh r1, [r0, #0xa]
_0815676C:
	ldr r0, [r3]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08156780
	ldr r0, _08156784 @ =gUnk_03000DD0
	ldrh r1, [r0, #0xc]
	adds r1, #1
	ldrh r2, [r0, #0xc]
	strh r1, [r0, #0xc]
_08156780:
	movs r0, #0
	bx lr
	.align 2, 0
_08156784: .4byte gUnk_03000DD0

	thumb_func_start sub_08156788
sub_08156788: @ 0x08156788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r3, [sp]
	ldr r3, [sp, #0x24]
	mov r8, r3
	ldr r3, [sp, #0x28]
	mov sl, r3
	ldr r7, [sp, #0x30]
	ldr r3, [sp, #0x34]
	mov ip, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	mov r3, r8
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	lsrs r1, r1, #0xe
	adds r1, r7, r1
	ldr r5, [r1]
	ldr r6, _08156854 @ =gUnk_02029D90
	ldr r1, [r6]
	lsls r4, r0, #3
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r1, r1, r4
	adds r0, r7, r5
	ldrh r0, [r0]
	adds r1, #0x5a
	movs r3, #0
	mov sb, r3
	strb r0, [r1]
	ldr r0, [r6]
	adds r1, r0, #0
	adds r1, #0x4c
	adds r1, r1, r4
	adds r5, #2
	adds r5, r7, r5
	str r5, [r1]
	adds r0, r0, r4
	adds r1, r0, #0
	adds r1, #0x54
	movs r5, #0
	mov r3, sb
	strh r3, [r1]
	adds r0, #0x5b
	strb r5, [r0]
	ldr r0, [r6]
	adds r0, r0, r4
	adds r0, #0x59
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, r0, r4
	adds r1, r0, #0
	adds r1, #0x56
	mov r3, r8
	strh r3, [r1]
	adds r0, #0x5c
	strb r2, [r0]
	ldr r0, [r6]
	adds r0, r0, r4
	adds r0, #0x5d
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, r0, r4
	adds r0, #0x5f
	mov r2, sl
	strb r2, [r0]
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x64
	adds r0, r0, r4
	ldr r3, [sp, #0x2c]
	str r3, [r0]
	adds r0, r1, r4
	adds r0, #0x62
	mov r2, ip
	strh r2, [r0]
	adds r0, r1, #0
	adds r0, #0x68
	adds r0, r0, r4
	adds r1, #0x6c
	adds r1, r1, r4
	mov r3, sb
	str r3, [r1]
	str r3, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08156854: .4byte gUnk_02029D90

	thumb_func_start sub_08156858
sub_08156858: @ 0x08156858
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	ldr r0, _081568CC @ =gUnk_02029D90
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x4c
	movs r6, #0
_08156866:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _081568DC
	ldrh r0, [r4, #8]
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r0, [r4, #0x18]
	adds r1, r0, r1
	ldr r1, [r1]
	adds r0, r0, r1
	ldrb r1, [r4, #0x10]
	movs r2, #0x11
	ldrsb r2, [r4, r2]
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	ldrh r3, [r4, #0x16]
	str r3, [sp, #0x10]
	ldrb r3, [r4, #0x13]
	str r3, [sp, #0x14]
	str r5, [sp, #0x18]
	movs r3, #0
	bl sub_080022EC
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	ldrh r1, [r4, #8]
	ldr r2, [r4]
	lsls r1, r1, #2
	adds r1, r1, r2
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #2]
	cmp r0, r1
	blo _081568DC
	strb r5, [r4, #0xf]
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	bne _081568D0
	ldrh r0, [r4, #8]
	adds r0, #1
	ldrb r1, [r4, #0xe]
	bl __modsi3
	b _081568DA
	.align 2, 0
_081568CC: .4byte gUnk_02029D90
_081568D0:
	ldrh r0, [r4, #8]
	adds r0, #1
	ldrb r1, [r4, #0xe]
	cmp r0, r1
	bge _081568DC
_081568DA:
	strh r0, [r4, #8]
_081568DC:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #0x24
	cmp r6, #3
	bls _08156866
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_081568F0
sub_081568F0: @ 0x081568F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r7, r1, #0
	add r1, sp, #0x14
	ldr r0, _08156920 @ =gUnk_0824DBA0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _08156924 @ =gUnk_02029D90
	ldr r1, [r2]
	ldrh r0, [r1, #0x3a]
	adds r0, #1
	strh r0, [r1, #0x3a]
	ldrb r0, [r7]
	adds r6, r2, #0
	cmp r0, #4
	bls _08156916
	b _08156A74
_08156916:
	lsls r0, r0, #2
	ldr r1, _08156928 @ =_0815692C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08156920: .4byte gUnk_0824DBA0
_08156924: .4byte gUnk_02029D90
_08156928: .4byte _0815692C
_0815692C: @ jump table
	.4byte _08156940 @ case 0
	.4byte _08156956 @ case 1
	.4byte _081569BC @ case 2
	.4byte _08156A46 @ case 3
	.4byte _08156A66 @ case 4
_08156940:
	ldr r1, [r6]
	ldrh r0, [r1, #0x3e]
	adds r0, #1
	strh r0, [r1, #0x3e]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bhi _08156952
	b _08156A74
_08156952:
	movs r0, #1
	strb r0, [r7]
_08156956:
	ldr r0, [r6]
	movs r4, #0
	strh r4, [r0, #0x3c]
	bl sub_0813B0CC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x65
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r6]
	ldrh r3, [r0, #0x3c]
	lsls r3, r3, #4
	mov r0, sp
	adds r0, r0, r3
	adds r0, #0x14
	ldrb r2, [r0]
	add r0, sp, #0x18
	adds r0, r0, r3
	ldrb r3, [r0]
	movs r0, #1
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r0, _081569B4 @ =gUnk_0873D44C
	str r0, [sp, #8]
	ldr r0, _081569B8 @ =gUnk_0873D4EC
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r0, #0
	bl sub_08156788
	ldr r0, [r6]
	str r4, [r0, #0x6c]
	str r4, [r0, #0x68]
	movs r0, #2
	b _08156A72
	.align 2, 0
_081569B4: .4byte gUnk_0873D44C
_081569B8: .4byte gUnk_0873D4EC
_081569BC:
	ldr r2, [r6]
	ldrh r1, [r2, #0x3c]
	lsls r1, r1, #4
	add r3, sp, #0x1c
	adds r1, r3, r1
	ldr r0, [r2, #0x68]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2, #0x68]
	ldrh r1, [r2, #0x3c]
	lsls r1, r1, #4
	add r4, sp, #0x20
	adds r1, r4, r1
	ldr r0, [r2, #0x6c]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2, #0x6c]
	adds r5, r2, #0
	adds r5, #0x5c
	ldrh r0, [r2, #0x3c]
	lsls r0, r0, #4
	adds r3, r3, r0
	ldr r1, [r3]
	lsrs r1, r1, #8
	ldrb r0, [r5]
	subs r0, r0, r1
	strb r0, [r5]
	ldr r0, [r6]
	adds r2, r0, #0
	adds r2, #0x5d
	ldrh r0, [r0, #0x3c]
	lsls r0, r0, #4
	adds r4, r4, r0
	ldr r1, [r4]
	lsrs r1, r1, #8
	ldrb r0, [r2]
	subs r0, r0, r1
	strb r0, [r2]
	ldr r4, [r6]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0x97
	bls _08156A1E
	adds r0, r4, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0x1f
	bhi _08156A74
_08156A1E:
	ldrh r0, [r4, #0x3a]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #4
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0x96
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	strh r1, [r4, #0x3e]
	adds r0, r4, #0
	adds r0, #0x59
	strb r2, [r0]
	movs r0, #3
	b _08156A72
_08156A46:
	ldr r1, [r6]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _08156A56
	adds r0, #1
	strh r0, [r1, #0x38]
	movs r0, #4
	b _08156A72
_08156A56:
	ldrh r0, [r1, #0x3e]
	subs r0, #1
	strh r0, [r1, #0x3e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08156A74
	movs r0, #1
	b _08156A72
_08156A66:
	ldr r1, [r6]
	ldrh r3, [r1, #0x38]
	cmp r3, #0
	bne _08156A74
	movs r0, #0
	strh r3, [r1, #0x3e]
_08156A72:
	strb r0, [r7]
_08156A74:
	bl sub_08156858
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08156A80
sub_08156A80: @ 0x08156A80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	mov sl, r1
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsrs r3, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #8
	ble _08156AA2
	movs r3, #8
_08156AA2:
	movs r0, #0
	mov r8, r0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08156AB8
	movs r1, #1
	mov r8, r1
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08156AB8:
	add r0, sp, #0x10
	movs r4, #0
	strh r4, [r0]
	ldr r2, _08156B34 @ =0x01000008
	mov r1, sp
	str r3, [sp, #0x14]
	bl CpuSet
	add r5, sp, #8
	strb r4, [r5]
	subs r5, #1
	movs r6, #8
	mov r4, sl
	ldr r3, [sp, #0x14]
	lsls r3, r3, #0x10
	mov sl, r3
_08156AD8:
	cmp r6, #0
	beq _08156B22
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x30
	strb r0, [r5]
	subs r5, #1
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
	cmp r4, #0
	bne _08156AD8
	cmp r6, #0
	beq _08156B22
	movs r0, #0x20
	strb r0, [r5]
	subs r5, #1
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08156B22
	movs r1, #0x20
_08156B14:
	strb r1, [r5]
	subs r5, #1
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _08156B14
_08156B22:
	mov r0, sl
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08156B38
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08156B3A
	.align 2, 0
_08156B34: .4byte 0x01000008
_08156B38:
	movs r0, #0
_08156B3A:
	adds r5, r0, #0
	cmp r5, #7
	bhi _08156BAA
	mov r1, sp
	adds r3, r1, r5
	ldrb r0, [r3]
	cmp r0, #0
	beq _08156BAA
	mov r0, sl
	asrs r2, r0, #0x10
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	adds r4, r7, #0
	adds r4, #0x40
_08156B58:
	ldrb r0, [r3]
	cmp r0, #0x20
	bne _08156B7C
	cmp r2, #0
	beq _08156B96
	mov r0, r8
	cmp r0, #0
	beq _08156B74
	mov r0, sb
	adds r0, #0xbd
	strh r0, [r7]
	adds r0, #1
	strh r0, [r4]
	b _08156B92
_08156B74:
	mov r1, r8
	strh r1, [r4]
	strh r1, [r7]
	b _08156B92
_08156B7C:
	ldrb r1, [r3]
	subs r1, #0x30
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r0, r1, #0
	adds r0, #0xbd
	adds r0, r6, r0
	strh r0, [r7]
	adds r1, #0xbe
	adds r1, r6, r1
	strh r1, [r4]
_08156B92:
	adds r4, #2
	adds r7, #2
_08156B96:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #7
	bhi _08156BAA
	mov r0, sp
	adds r3, r0, r5
	ldrb r0, [r3]
	cmp r0, #0
	bne _08156B58
_08156BAA:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08156BBC
sub_08156BBC: @ 0x08156BBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x108
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	mov r8, r7
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r6, r4, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	ldr r1, _08156BF0 @ =gUnk_0824DBB0
	movs r2, #0x84
	lsls r2, r2, #1
	mov r0, sp
	bl memcpy
	cmp r4, #0
	bne _08156BF4
	movs r3, #0
	b _08156C0C
	.align 2, 0
_08156BF0: .4byte gUnk_0824DBB0
_08156BF4:
	cmp r7, r4
	bhi _08156BFC
	movs r3, #0x20
	b _08156C0C
_08156BFC:
	lsls r0, r6, #5
	subs r0, r0, r6
	mov r1, r8
	bl __divsi3
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08156C0C:
	ldr r4, _08156C74 @ =0x000030B3
	mov r0, sb
	cmp r0, #1
	bhi _08156C1E
	strh r4, [r5]
	adds r1, r5, #0
	adds r1, #0x40
	ldr r0, _08156C78 @ =0x000030B4
	strh r0, [r1]
_08156C1E:
	adds r0, r4, #3
	strh r0, [r5, #0x12]
	adds r1, r5, #0
	adds r1, #0x52
	adds r0, r4, #4
	strh r0, [r1]
	movs r1, #0
	lsls r2, r3, #0x13
	adds r3, r4, #2
_08156C30:
	lsls r0, r1, #1
	adds r0, r0, r5
	adds r0, #0x42
	strh r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bls _08156C30
	lsrs r3, r2, #0x10
	movs r2, #0
_08156C46:
	lsls r1, r2, #1
	adds r1, r1, r5
	mov r6, sp
	adds r0, r6, r3
	ldrb r0, [r0]
	adds r0, #4
	adds r0, r4, r0
	strh r0, [r1, #2]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r2, #7
	bls _08156C46
	add sp, #0x108
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08156C74: .4byte 0x000030B3
_08156C78: .4byte 0x000030B4

	thumb_func_start sub_08156C7C
sub_08156C7C: @ 0x08156C7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r0, #2
	bl sub_08020828
	adds r6, r0, #0
	movs r0, #0xf0
	movs r1, #0
	bl sub_08142F7C
	ldr r1, _08156DAC @ =gUnk_02000000
	ldr r2, _08156DB0 @ =0x0000118D
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x18
	bhi _08156CBE
	ldr r3, _08156DB4 @ =0x000013B4
	adds r0, r1, r3
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08156CBE
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0x31
	bls _08156CBE
	movs r0, #0xf0
	movs r1, #1
	bl sub_08142F7C
_08156CBE:
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _08156DB8 @ =gUnk_02029D90
	ldr r1, [r4]
	adds r1, #8
	ldr r2, _08156DBC @ =0x0100000C
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	ldr r1, [r4]
	adds r1, #0x20
	ldr r2, _08156DC0 @ =0x01000006
	bl CpuSet
	ldr r1, [r4]
	ldr r2, _08156DAC @ =gUnk_02000000
	ldr r4, _08156DB4 @ =0x000013B4
	adds r0, r2, r4
	ldrh r0, [r0]
	strh r0, [r1, #0x2c]
	ldr r3, _08156DC4 @ =0x000013B6
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1, #0x2e]
	adds r4, #4
	adds r0, r2, r4
	ldrh r0, [r0]
	strh r0, [r1, #0x30]
	movs r3, #0
	movs r5, #0
	ldr r1, _08156DC8 @ =gUnk_086A2504
	ldr r0, _08156DCC @ =0x00001334
	adds r2, r2, r0
_08156D06:
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08156D1A
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08156D1A:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x31
	bls _08156D06
	ldr r1, _08156DB8 @ =gUnk_02029D90
	ldr r0, [r1]
	strh r3, [r0, #0x32]
	movs r3, #0
	movs r5, #0
	ldr r6, _08156DD0 @ =gPlayerUnits
	adds r4, r6, #0
	subs r4, #0x30
	ldr r2, _08156DD4 @ =0x00001118
_08156D36:
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08156D4C
	cmp r0, #0xc7
	bhi _08156D4C
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08156D4C:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x1a
	bls _08156D36
	movs r5, #0
	ldr r4, _08156DAC @ =gUnk_02000000
	movs r2, #0xda
	lsls r2, r2, #4
_08156D5E:
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08156D74
	cmp r0, #0xc7
	bhi _08156D74
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08156D74:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xa3
	bls _08156D5E
	ldr r0, [r1]
	strh r3, [r0, #0x34]
	movs r1, #0
	mov r8, r1
	movs r5, #0
	ldr r2, _08156DD8 @ =gUnk_086148A0
	mov sb, r2
	adds r7, r6, #0
	adds r7, #0x4e
_08156D90:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08156E08
	cmp r0, #1
	bls _08156DDC
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, sb
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _08156DDC
	adds r1, r0, #0
	b _08156DEA
	.align 2, 0
_08156DAC: .4byte gUnk_02000000
_08156DB0: .4byte 0x0000118D
_08156DB4: .4byte 0x000013B4
_08156DB8: .4byte gUnk_02029D90
_08156DBC: .4byte 0x0100000C
_08156DC0: .4byte 0x01000006
_08156DC4: .4byte 0x000013B6
_08156DC8: .4byte gUnk_086A2504
_08156DCC: .4byte 0x00001334
_08156DD0: .4byte gPlayerUnits
_08156DD4: .4byte 0x00001118
_08156DD8: .4byte gUnk_086148A0
_08156DDC:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	ldrb r0, [r7, #1]
_08156DEA:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #2
	bl sub_0813FA44
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #0
	movs r2, #2
	bl sub_08143B70
	ands r0, r4
	mov r3, r8
	orrs r3, r0
	mov r8, r3
_08156E08:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, #0x68
	adds r6, #0x68
	cmp r5, #0x1f
	bls _08156D90
	movs r3, #0
	movs r5, #0
	ldr r1, _08156E4C @ =gUnk_02029D90
	movs r2, #1
_08156E1E:
	adds r0, r2, #0
	lsls r0, r5
	mov r4, r8
	ands r0, r4
	cmp r0, #0
	beq _08156E30
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08156E30:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x1f
	bls _08156E1E
	ldr r0, [r1]
	strh r3, [r0, #0x36]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08156E4C: .4byte gUnk_02029D90

	thumb_func_start sub_08156E50
sub_08156E50: @ 0x08156E50
	push {r4, r5, r6, r7, lr}
	ldr r2, _08156E94 @ =gUnk_02029D90
	ldr r1, [r2]
	ldrh r0, [r1, #0x3a]
	adds r0, #1
	strh r0, [r1, #0x3a]
	movs r7, #6
	movs r5, #0
	adds r6, r2, #0
_08156E62:
	ldr r0, [r6]
	mov ip, r0
	lsls r2, r5, #1
	adds r0, #0x20
	adds r4, r0, r2
	lsls r3, r5, #2
	mov r0, ip
	adds r0, #8
	adds r0, r0, r3
	ldr r1, [r0]
	lsrs r1, r1, #8
	strh r1, [r4]
	mov r0, ip
	adds r0, #0x2c
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, r0
	blo _08156E98
	strh r0, [r4]
	subs r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _08156EFC
	.align 2, 0
_08156E94: .4byte gUnk_02029D90
_08156E98:
	cmp r5, #5
	bhi _08156EFC
	ldr r0, _08156EA4 @ =_08156EA8
	adds r0, r3, r0
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08156EA4: .4byte _08156EA8
_08156EA8: @ jump table
	.4byte _08156EC0 @ case 0
	.4byte _08156EC0 @ case 1
	.4byte _08156EC0 @ case 2
	.4byte _08156ED4 @ case 3
	.4byte _08156EE0 @ case 4
	.4byte _08156EF0 @ case 5
_08156EC0:
	ldr r1, [r6]
	adds r1, #8
	adds r1, r1, r3
	ldr r0, [r1]
	ldr r2, _08156ED0 @ =0x00000F9C
	adds r0, r0, r2
	b _08156EFA
	.align 2, 0
_08156ED0: .4byte 0x00000F9C
_08156ED4:
	ldr r1, [r6]
	adds r1, #8
	adds r1, r1, r3
	ldr r0, [r1]
	adds r0, #0xc4
	b _08156EFA
_08156EE0:
	ldr r1, [r6]
	adds r1, #8
	adds r1, r1, r3
	ldr r0, [r1]
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r0, r0, r2
	b _08156EFA
_08156EF0:
	ldr r1, [r6]
	adds r1, #8
	adds r1, r1, r3
	ldr r0, [r1]
	adds r0, #0x80
_08156EFA:
	str r0, [r1]
_08156EFC:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #5
	bls _08156E62
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08156F10
sub_08156F10: @ 0x08156F10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	add r1, sp, #0xc
	ldr r0, _08157288 @ =gUnk_0824DCB8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, _0815728C @ =gUnk_02029D98
	mov sl, r0
	add r0, sp, #0x24
	movs r1, #0
	strh r1, [r0]
	ldr r2, _08157290 @ =0x01000280
	mov r1, sl
	bl CpuSet
	mov r6, sl
	adds r6, #0x44
	adds r3, r6, #0
	movs r2, #1
	movs r4, #0
_08156F44:
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r2, r1
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x40
	ldr r5, _08157294 @ =0x00005002
	adds r0, r2, r5
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r4, #2
	blo _08156F44
	adds r2, r6, #4
	movs r3, #5
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x14
	mov r5, sl
	adds r5, #0x60
	ldr r6, _08157298 @ =gUnk_03000EB0
	mov r8, r6
_08156F7A:
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r3, r1
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x40
	ldr r6, _0815729C @ =0x00005008
	adds r0, r3, r6
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r4, #8
	blo _08156F7A
	adds r2, r7, #0
	movs r3, #1
	movs r4, #0
_08156FA4:
	movs r7, #0xa0
	lsls r7, r7, #7
	adds r0, r3, r7
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x40
	ldr r6, _08157294 @ =0x00005002
	adds r0, r3, r6
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r4, #2
	blo _08156FA4
	adds r6, r5, #0
	adds r2, r6, #0
	movs r3, #0xeb
	movs r4, #0
_08156FD0:
	movs r7, #0x80
	lsls r7, r7, #7
	adds r0, r3, r7
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x40
	ldr r5, _081572A0 @ =0x00004006
	adds r0, r3, r5
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r4, #6
	blo _08156FD0
	mov r7, r8
	ldrb r0, [r7, #0x19]
	lsls r0, r0, #0x12
	movs r1, #0xf6
	lsls r1, r1, #0x10
	adds r0, r0, r1
	adds r3, r6, #0
	adds r3, #0xc
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	lsrs r2, r0, #0x10
	movs r4, #0
_0815700E:
	movs r5, #0xa0
	lsls r5, r5, #7
	adds r0, r2, r5
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x40
	ldr r6, _08157294 @ =0x00005002
	adds r0, r2, r6
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r4, #2
	blo _0815700E
	movs r6, #0x80
	lsls r6, r6, #1
	add r6, sl
	movs r4, #0
_0815703A:
	adds r2, r6, #2
	movs r3, #0xd1
	movs r5, #0
	adds r7, r6, #6
	mov ip, r7
	lsls r0, r4, #2
	str r0, [sp, #0x28]
	movs r1, #0x80
	adds r1, r1, r6
	mov r8, r1
	adds r7, r4, #1
	mov sb, r7
_08157052:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r3, r1
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x40
	ldr r7, _081572A4 @ =0x00004002
	adds r0, r3, r7
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r5, #2
	blo _08157052
	cmp r4, #2
	bhi _081570A6
	adds r3, r6, #0
	adds r3, #0x20
	movs r4, #0xd5
	movs r5, #0
_08157082:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	strh r0, [r3]
	adds r2, r3, #0
	adds r2, #0x40
	adds r1, r4, #1
	ldr r6, _081572A8 @ =0x00004001
	adds r0, r4, r6
	strh r0, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #2
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r5, #1
	blo _08157082
_081570A6:
	ldr r1, [sp, #0x28]
	add r1, sp
	adds r1, #0xc
	ldrh r0, [r1, #2]
	mov r3, ip
	ldrh r4, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r5, #0
	cmp r5, r4
	bhs _081570E4
_081570BE:
	movs r7, #0x80
	lsls r7, r7, #7
	adds r0, r2, r7
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x40
	adds r0, r2, r4
	adds r6, r7, #0
	adds r0, r0, r6
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r5, r4
	blo _081570BE
_081570E4:
	mov r6, r8
	mov r7, sb
	lsls r0, r7, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #5
	bls _0815703A
	ldr r6, _081572AC @ =0x0000044A
	add r6, sl
	adds r2, r6, #0
	movs r3, #0x9d
	movs r4, #0
_081570FA:
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r3, r1
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x40
	ldr r5, _081572B0 @ =0x00005007
	adds r0, r3, r5
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r4, #7
	blo _081570FA
	adds r3, r6, #0
	adds r3, #0xe
	movs r4, #0xd5
	movs r5, #0
	adds r7, r6, #0
	adds r7, #0x14
	movs r0, #0x1c
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0x10
	adds r1, r1, r6
	mov sb, r1
	adds r6, #0x18
	str r6, [sp, #0x2c]
_0815713A:
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r4, r2
	strh r0, [r3]
	adds r2, r3, #0
	adds r2, #0x40
	adds r1, r4, #1
	ldr r6, _081572B4 @ =0x00005001
	adds r0, r4, r6
	strh r0, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #2
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r5, #1
	blo _0815713A
	adds r2, r7, #0
	movs r3, #0xab
	movs r4, #0
_08157164:
	movs r7, #0xa0
	lsls r7, r7, #7
	adds r0, r3, r7
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x40
	ldr r5, _08157294 @ =0x00005002
	adds r0, r3, r5
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r4, #2
	blo _08157164
	mov r2, r8
	movs r3, #0xaf
	movs r4, #0
_0815718E:
	movs r6, #0xa0
	lsls r6, r6, #7
	adds r0, r3, r6
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x40
	ldr r7, _08157294 @ =0x00005002
	adds r0, r3, r7
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r4, #2
	blo _0815718E
	ldr r1, _081572B8 @ =gUnk_02000000
	ldr r2, _081572BC @ =0x0000118D
	adds r0, r1, r2
	ldrb r1, [r0]
	adds r4, r6, #0
	mov r0, sb
	movs r2, #2
	adds r3, r4, #0
	bl sub_08156A80
	ldr r3, _081572B8 @ =gUnk_02000000
	ldr r5, _081572C0 @ =0x0000118E
	adds r0, r3, r5
	ldrb r1, [r0]
	ldr r0, [sp, #0x2c]
	movs r2, #2
	adds r3, r4, #0
	bl sub_08156A80
	movs r6, #0x91
	lsls r6, r6, #1
	add r6, sl
	movs r4, #0
_081571E0:
	ldr r7, _081572C4 @ =gUnk_02029D90
	ldr r0, [r7]
	lsls r1, r4, #1
	adds r0, #0x20
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #7
	bl sub_08156A80
	adds r6, #0x80
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _081571E0
	ldr r6, _081572C8 @ =0x0000029E
	add r6, sl
	ldr r0, [r7]
	ldrh r2, [r0, #0x26]
	adds r0, r6, #0
	movs r1, #0x31
	movs r3, #0
	bl sub_08156BBC
	ldr r6, _081572CC @ =0x0000031E
	add r6, sl
	ldr r0, [r7]
	ldrh r2, [r0, #0x28]
	adds r0, r6, #0
	movs r1, #0xb7
	movs r3, #1
	bl sub_08156BBC
	ldr r6, _081572D0 @ =0x0000039E
	add r6, sl
	ldr r0, [r7]
	ldrh r2, [r0, #0x2a]
	adds r0, r6, #0
	movs r1, #0x20
	movs r3, #2
	bl sub_08156BBC
	ldr r0, _081572D4 @ =gUnk_03000D60
	ldr r1, _0815728C @ =gUnk_02029D98
	ldr r2, [r0, #0x14]
	movs r6, #0x14
	movs r5, #0x40
	ldr r0, [r7]
	adds r3, r0, #0
	adds r3, #0xdc
	ldrb r4, [r3]
	lsls r3, r4, #3
	subs r3, r3, r4
	lsls r3, r3, #2
	adds r3, #0xe0
	adds r0, r0, r3
	str r6, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	movs r3, #0x20
	bl sub_08000CD4
	ldr r1, [r7]
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r7]
	adds r1, #0xdc
	ldrb r0, [r1]
	movs r2, #3
	ands r0, r2
	strb r0, [r1]
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08157288: .4byte gUnk_0824DCB8
_0815728C: .4byte gUnk_02029D98
_08157290: .4byte 0x01000280
_08157294: .4byte 0x00005002
_08157298: .4byte gUnk_03000EB0
_0815729C: .4byte 0x00005008
_081572A0: .4byte 0x00004006
_081572A4: .4byte 0x00004002
_081572A8: .4byte 0x00004001
_081572AC: .4byte 0x0000044A
_081572B0: .4byte 0x00005007
_081572B4: .4byte 0x00005001
_081572B8: .4byte gUnk_02000000
_081572BC: .4byte 0x0000118D
_081572C0: .4byte 0x0000118E
_081572C4: .4byte gUnk_02029D90
_081572C8: .4byte 0x0000029E
_081572CC: .4byte 0x0000031E
_081572D0: .4byte 0x0000039E
_081572D4: .4byte gUnk_03000D60

	thumb_func_start sub_081572D8
sub_081572D8: @ 0x081572D8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r0, #1
	bne _0815731C
	ldr r3, _08157318 @ =gUnk_03000DD0
	adds r1, r3, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #3
	strb r0, [r1]
	subs r1, #7
	ldrb r0, [r1]
	movs r0, #0x3f
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	strb r4, [r0]
	adds r0, #1
	ldrb r1, [r0]
	strb r2, [r0]
	b _08157348
	.align 2, 0
_08157318: .4byte gUnk_03000DD0
_0815731C:
	ldr r2, _08157350 @ =gUnk_03000DD0
	adds r1, r2, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	movs r0, #0x50
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #1
	strb r0, [r1]
	subs r1, #7
	ldrb r0, [r1]
	movs r0, #0x31
	strb r0, [r1]
	adds r1, #8
	ldrb r0, [r1]
	movs r0, #7
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #9
	strb r0, [r1]
_08157348:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08157350: .4byte gUnk_03000DD0

	thumb_func_start sub_08157354
sub_08157354: @ 0x08157354
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08157430 @ =gUnk_03000DD0
	ldrh r1, [r0, #0xc]
	movs r5, #0
	movs r4, #0
	strh r4, [r0, #0xc]
	ldrh r1, [r0, #0xa]
	movs r1, #0x40
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #0xe]
	strh r4, [r0, #0xe]
	ldrh r1, [r0, #0xe]
	ldrh r2, [r0, #0x10]
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0x12]
	strh r4, [r0, #0x12]
	ldrh r1, [r0, #0x12]
	ldrh r2, [r0, #0x14]
	strh r1, [r0, #0x14]
	ldrh r1, [r0, #0x16]
	strh r4, [r0, #0x16]
	ldrh r1, [r0, #0x16]
	ldrh r2, [r0, #0x18]
	strh r1, [r0, #0x18]
	ldrh r1, [r0, #2]
	ldr r1, _08157434 @ =0x00006E03
	strh r1, [r0, #2]
	ldrh r1, [r0, #4]
	ldr r1, _08157438 @ =0x00002D01
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	ldr r1, _0815743C @ =0x00002C08
	strh r1, [r0, #6]
	ldrh r1, [r0, #8]
	ldr r1, _08157440 @ =0x00002B08
	strh r1, [r0, #8]
	movs r1, #0xfa
	lsls r1, r1, #5
	strh r1, [r0]
	adds r2, r0, #0
	adds r2, #0x4e
	ldrb r1, [r2]
	strb r5, [r2]
	adds r0, #0x45
	ldrb r1, [r0]
	strb r5, [r0]
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	bl sub_081572D8
	ldr r1, _08157444 @ =gUnk_03001070
	movs r2, #0xc0
	lsls r2, r2, #0x13
	str r2, [r1, #0x10]
	ldr r0, _08157448 @ =0x06007000
	str r0, [r1, #0x14]
	ldr r1, _0815744C @ =gUnk_03001090
	str r2, [r1, #0x10]
	ldr r0, _08157450 @ =0x06006800
	str r0, [r1, #0x14]
	ldr r1, _08157454 @ =gUnk_03000D60
	ldr r2, _08157458 @ =0x06008000
	str r2, [r1, #0x10]
	ldr r0, _0815745C @ =0x06006000
	str r0, [r1, #0x14]
	ldr r1, _08157460 @ =gUnk_03000E20
	str r2, [r1, #0x10]
	ldr r0, _08157464 @ =0x06005800
	str r0, [r1, #0x14]
	mov r0, sp
	strh r4, [r0]
	ldr r0, _08157468 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _0815746C @ =gUnk_02002400
	str r2, [r0, #4]
	ldr r3, _08157470 @ =0x81000100
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r4, [r1]
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r2, r1
	str r2, [r0, #4]
	str r3, [r0, #8]
	ldr r0, [r0, #8]
	ldr r4, _08157474 @ =gUnk_030010B0
	ldrh r0, [r4, #8]
	ldr r1, _08157478 @ =0x0000FFEF
	ands r1, r0
	ldrh r0, [r4, #6]
	ldr r2, _0815747C @ =0x0000FFFD
	ands r2, r0
	ldr r3, _08157480 @ =gUnk_03000D80
	ldr r0, _08157484 @ =sub_08157B40
	str r0, [r3, #0xc]
	movs r0, #0x10
	orrs r1, r0
	strh r1, [r4, #8]
	movs r0, #2
	orrs r2, r0
	strh r2, [r4, #6]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08157430: .4byte gUnk_03000DD0
_08157434: .4byte 0x00006E03
_08157438: .4byte 0x00002D01
_0815743C: .4byte 0x00002C08
_08157440: .4byte 0x00002B08
_08157444: .4byte gUnk_03001070
_08157448: .4byte 0x06007000
_0815744C: .4byte gUnk_03001090
_08157450: .4byte 0x06006800
_08157454: .4byte gUnk_03000D60
_08157458: .4byte 0x06008000
_0815745C: .4byte 0x06006000
_08157460: .4byte gUnk_03000E20
_08157464: .4byte 0x06005800
_08157468: .4byte 0x040000D4
_0815746C: .4byte gUnk_02002400
_08157470: .4byte 0x81000100
_08157474: .4byte gUnk_030010B0
_08157478: .4byte 0x0000FFEF
_0815747C: .4byte 0x0000FFFD
_08157480: .4byte gUnk_03000D80
_08157484: .4byte sub_08157B40

	thumb_func_start sub_08157488
sub_08157488: @ 0x08157488
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	ldr r4, _08157520 @ =gUnk_02029D98
	add r1, sp, #0xc
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08157524 @ =0x01000280
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	movs r0, #0x91
	lsls r0, r0, #2
	adds r3, r4, r0
	movs r2, #0xd7
	movs r4, #0
_081574AC:
	movs r1, #0xc0
	lsls r1, r1, #7
	adds r0, r2, r1
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x40
	ldr r5, _08157528 @ =0x0000600A
	adds r0, r2, r5
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r4, #0xa
	blo _081574AC
	ldr r0, _0815752C @ =gUnk_03000D60
	ldr r1, _08157520 @ =gUnk_02029D98
	ldr r2, [r0, #0x14]
	movs r0, #0x14
	mov r8, r0
	movs r6, #0x40
	ldr r5, _08157530 @ =gUnk_02029D90
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0xdc
	ldrb r4, [r3]
	lsls r3, r4, #3
	subs r3, r3, r4
	lsls r3, r3, #2
	adds r3, #0xe0
	adds r0, r0, r3
	mov r3, r8
	str r3, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r3, #0x20
	bl sub_08000CD4
	ldr r1, [r5]
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, #0xdc
	ldrb r0, [r1]
	movs r2, #3
	ands r0, r2
	strb r0, [r1]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08157520: .4byte gUnk_02029D98
_08157524: .4byte 0x01000280
_08157528: .4byte 0x0000600A
_0815752C: .4byte gUnk_03000D60
_08157530: .4byte gUnk_02029D90

	thumb_func_start sub_08157534
sub_08157534: @ 0x08157534
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	mov sb, r1
	ldrb r7, [r1]
	cmp r7, #7
	bne _08157548
	b _081578D8
_08157548:
	cmp r7, #7
	bgt _081575B0
	cmp r7, #3
	bne _08157552
	b _08157774
_08157552:
	cmp r7, #3
	bgt _08157568
	cmp r7, #1
	bne _0815755C
	b _0815768C
_0815755C:
	cmp r7, #1
	ble _08157562
	b _08157728
_08157562:
	cmp r7, #0
	beq _08157608
	b _08157AB6
_08157568:
	cmp r7, #5
	bne _0815756E
	b _0815785C
_0815756E:
	cmp r7, #5
	ble _08157574
	b _081578B4
_08157574:
	ldr r1, _081575A8 @ =gUnk_02029D90
	ldr r0, [r1]
	adds r3, r0, #0
	adds r3, #0x48
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, r1, #0
	cmp r0, #0x3b
	bhi _0815758E
	b _08157AB6
_0815758E:
	movs r0, #0x3c
	strh r0, [r3]
	ldr r1, _081575AC @ =gUnk_03000DD0
	ldrh r0, [r1, #0xa]
	subs r0, #1
	ldrh r2, [r1, #0xa]
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _081575A4
	b _08157AB6
_081575A4:
	b _081577B4
	.align 2, 0
_081575A8: .4byte gUnk_02029D90
_081575AC: .4byte gUnk_03000DD0
_081575B0:
	cmp r7, #0xb
	bne _081575B6
	b _081579E0
_081575B6:
	cmp r7, #0xb
	bgt _081575F4
	cmp r7, #9
	bne _081575C0
	b _08157914
_081575C0:
	cmp r7, #9
	ble _081575C6
	b _081579AC
_081575C6:
	ldr r4, _081575F0 @ =gUnk_02029D90
	ldr r0, [r4]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #1
	bl sub_08000768
	ldr r0, [r4]
	ldrh r0, [r0, #0x38]
	cmp r0, #2
	beq _081575E0
	b _08157AB6
_081575E0:
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	bl sub_081572D8
	movs r0, #9
	b _08157A56
	.align 2, 0
_081575F0: .4byte gUnk_02029D90
_081575F4:
	cmp r7, #0xd
	bne _081575FA
	b _08157A60
_081575FA:
	cmp r7, #0xd
	bge _08157600
	b _08157A24
_08157600:
	cmp r7, #0xff
	bne _08157606
	b _08157AA0
_08157606:
	b _08157AB6
_08157608:
	bl sub_08157354
	add r0, sp, #0xc
	strh r7, [r0]
	ldr r0, _08157668 @ =0x040000D4
	add r3, sp, #0xc
	str r3, [r0]
	ldr r1, _0815766C @ =gUnk_03001070
	ldr r1, [r1, #0x14]
	str r1, [r0, #4]
	ldr r1, _08157670 @ =0x81000500
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r1, r3, #0
	strh r7, [r1]
	str r1, [r0]
	ldr r1, _08157674 @ =gUnk_03001090
	ldr r1, [r1, #0x14]
	str r1, [r0, #4]
	ldr r2, _08157678 @ =0x81000280
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	adds r1, r3, #0
	strh r7, [r1]
	str r1, [r0]
	ldr r1, _0815767C @ =gUnk_03000D60
	ldr r1, [r1, #0x14]
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	adds r1, r3, #0
	strh r7, [r1]
	str r1, [r0]
	ldr r1, _08157680 @ =gUnk_03000E20
	ldr r1, [r1, #0x14]
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08157684 @ =gUnk_02029D90
	ldr r0, _08157688 @ =gUnk_02029C28
	str r0, [r1]
	movs r1, #0xb4
	lsls r1, r1, #1
	bl memzero
	movs r0, #1
	b _08157A96
	.align 2, 0
_08157668: .4byte 0x040000D4
_0815766C: .4byte gUnk_03001070
_08157670: .4byte 0x81000500
_08157674: .4byte gUnk_03001090
_08157678: .4byte 0x81000280
_0815767C: .4byte gUnk_03000D60
_08157680: .4byte gUnk_03000E20
_08157684: .4byte gUnk_02029D90
_08157688: .4byte gUnk_02029C28
_0815768C:
	ldr r0, _081576FC @ =gUnk_0871EDEF
	ldr r2, _08157700 @ =gUnk_03001070
	mov r8, r2
	ldr r1, [r2, #0x10]
	ldr r6, _08157704 @ =gUnk_02029D98
	movs r5, #0
	str r5, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0801A59C
	add r0, sp, #0xc
	strh r5, [r0]
	ldr r4, _08157708 @ =gUnk_03000D60
	ldr r1, [r4, #0x10]
	ldr r2, _0815770C @ =0x01000010
	bl CpuSet
	ldr r0, _08157710 @ =gUnk_0872248B
	ldr r1, [r4, #0x10]
	adds r1, #0x20
	str r5, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0801A59C
	ldr r0, _08157714 @ =gUnk_08723B0F
	ldr r1, _08157718 @ =0x06010000
	str r5, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0801A59C
	ldr r0, _0815771C @ =gUnk_0873BCFC
	mov r3, r8
	ldr r1, [r3, #0x14]
	movs r2, #0x80
	lsls r2, r2, #4
	bl CpuSet
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r3, _08157720 @ =gUnk_0873D04C
	movs r0, #0
	movs r2, #0x40
	bl sub_08138580
	ldr r1, _08157724 @ =gUnk_02029D90
	ldr r1, [r1]
	str r0, [r1]
	movs r0, #2
	b _08157A96
	.align 2, 0
_081576FC: .4byte gUnk_0871EDEF
_08157700: .4byte gUnk_03001070
_08157704: .4byte gUnk_02029D98
_08157708: .4byte gUnk_03000D60
_0815770C: .4byte 0x01000010
_08157710: .4byte gUnk_0872248B
_08157714: .4byte gUnk_08723B0F
_08157718: .4byte 0x06010000
_0815771C: .4byte gUnk_0873BCFC
_08157720: .4byte gUnk_0873D04C
_08157724: .4byte gUnk_02029D90
_08157728:
	ldr r5, _08157768 @ =gUnk_02029D90
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_08139548
	cmp r0, #0
	bne _08157738
	b _08157AB6
_08157738:
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_08139468
	movs r4, #0x80
	lsls r4, r4, #1
	ldr r3, _0815776C @ =gUnk_0873CE4C
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0x80
	bl sub_08138580
	ldr r1, [r5]
	str r0, [r1]
	ldr r3, _08157770 @ =gUnk_0873D24C
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x80
	bl sub_08138580
	ldr r1, [r5]
	str r0, [r1, #4]
	movs r0, #3
	b _08157A56
	.align 2, 0
_08157768: .4byte gUnk_02029D90
_0815776C: .4byte gUnk_0873CE4C
_08157770: .4byte gUnk_0873D24C
_08157774:
	ldr r5, _081577B0 @ =gUnk_02029D90
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_08139548
	cmp r0, #0
	bne _08157784
	b _08157AB6
_08157784:
	movs r4, #0
_08157786:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08139468
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #1
	bls _08157786
	movs r0, #4
	mov r3, sb
	strb r0, [r3]
	ldr r0, _081577B0 @ =gUnk_02029D90
	ldr r0, [r0]
	adds r0, #0x48
	movs r1, #0
	strh r1, [r0]
	b _08157AB6
	.align 2, 0
_081577B0: .4byte gUnk_02029D90
_081577B4:
	movs r4, #0
	ldr r3, _0815784C @ =gUnk_02029D90
	movs r2, #0
_081577BA:
	ldr r0, [r3]
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, #0x59
	strb r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _081577BA
	ldr r2, [r7]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r0, r2, r4
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r2, r3
	adds r3, #4
	adds r2, r2, r3
	movs r3, #1
	bl sub_08002CD4
	ldr r0, [r7]
	adds r0, r0, r4
	ldr r2, _08157850 @ =sub_081568F0
	movs r1, #0
	bl sub_08002D38
	ldr r0, _08157854 @ =gUnk_03001090
	ldr r1, _08157858 @ =gUnk_0873B42C
	ldr r2, [r0, #0x14]
	adds r2, #0xde
	movs r6, #8
	movs r5, #0x40
	ldr r0, [r7]
	adds r3, r0, #0
	adds r3, #0xdc
	ldrb r4, [r3]
	lsls r3, r4, #3
	subs r3, r3, r4
	lsls r3, r3, #2
	adds r3, #0xe0
	adds r0, r0, r3
	str r6, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	movs r3, #9
	bl sub_08000CD4
	ldr r1, [r7]
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r0, #1
	movs r4, #0
	strb r0, [r1]
	ldr r1, [r7]
	adds r1, #0xdc
	ldrb r0, [r1]
	movs r2, #3
	ands r0, r2
	strb r0, [r1]
	bl sub_08156C7C
	movs r0, #0
	bl sub_08156F10
	ldr r0, [r7]
	adds r0, #0x48
	strh r4, [r0]
	movs r0, #5
	b _08157A96
	.align 2, 0
_0815784C: .4byte gUnk_02029D90
_08157850: .4byte sub_081568F0
_08157854: .4byte gUnk_03001090
_08157858: .4byte gUnk_0873B42C
_0815785C:
	ldr r4, _081578AC @ =gUnk_02029D90
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x48
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _08157874
	b _08157AB6
_08157874:
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _081578B0 @ =gUnk_03000DD0
	adds r3, r1, #0
	adds r3, #0x4d
	ldrb r0, [r3]
	subs r0, #1
	ldrb r2, [r3]
	strb r0, [r3]
	adds r1, #0x4c
	ldrb r0, [r1]
	adds r0, #1
	ldrb r2, [r1]
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _08157898
	b _08157AB6
_08157898:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_081572D8
	ldr r0, [r4]
	movs r1, #0
	strh r1, [r0, #0x38]
	movs r0, #6
	b _08157A56
	.align 2, 0
_081578AC: .4byte gUnk_02029D90
_081578B0: .4byte gUnk_03000DD0
_081578B4:
	bl sub_08156E50
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #1
	bl sub_08156F10
	cmp r4, #0
	beq _081578C8
	b _08157AB6
_081578C8:
	ldr r0, _081578D4 @ =gUnk_02029D90
	ldr r0, [r0]
	adds r0, #0x48
	strh r4, [r0]
	movs r0, #7
	b _08157A18
	.align 2, 0
_081578D4: .4byte gUnk_02029D90
_081578D8:
	ldr r4, _08157910 @ =gUnk_02029D90
	ldr r0, [r4]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #2
	ble _081578F6
	b _08157AB6
_081578F6:
	cmp r2, #1
	bge _081578FC
	b _08157AB6
_081578FC:
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0x48
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2, #0x38]
	movs r0, #8
	b _08157A56
	.align 2, 0
_08157910: .4byte gUnk_02029D90
_08157914:
	ldr r4, _08157994 @ =gUnk_02029D90
	ldr r0, [r4]
	adds r0, #0x48
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0815792E
	b _08157AB6
_0815792E:
	ldr r1, _08157998 @ =gUnk_03000DD0
	adds r3, r1, #0
	adds r3, #0x4d
	ldrb r0, [r3]
	adds r0, #1
	ldrb r2, [r3]
	strb r0, [r3]
	adds r2, r1, #0
	adds r2, #0x4c
	ldrb r0, [r2]
	subs r0, #1
	ldrb r1, [r2]
	strb r0, [r2]
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	beq _08157952
	b _08157AB6
_08157952:
	mov r0, sp
	adds r0, #0xe
	strh r1, [r0]
	ldr r1, _0815799C @ =0x040000D4
	str r0, [r1]
	ldr r0, _081579A0 @ =gUnk_020024C0
	str r0, [r1, #4]
	ldr r0, _081579A4 @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r3]
	movs r0, #0
	strb r0, [r3]
	ldrb r0, [r2]
	movs r0, #0x10
	strb r0, [r2]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_081572D8
	ldr r3, _081579A8 @ =gUnk_0873CF0C
	movs r0, #0x60
	movs r1, #0x10
	movs r2, #0xc8
	bl sub_08138580
	ldr r1, [r4]
	str r0, [r1]
	bl sub_08157488
	movs r0, #0xa
	b _08157A18
	.align 2, 0
_08157994: .4byte gUnk_02029D90
_08157998: .4byte gUnk_03000DD0
_0815799C: .4byte 0x040000D4
_081579A0: .4byte gUnk_020024C0
_081579A4: .4byte 0x81000010
_081579A8: .4byte gUnk_0873CF0C
_081579AC:
	ldr r4, _081579DC @ =gUnk_02029D90
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_08139548
	cmp r0, #0
	bne _081579BC
	b _08157AB6
_081579BC:
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_08139468
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0x48
	movs r0, #0
	strh r0, [r1]
	strh r0, [r2, #0x38]
	movs r1, #0
	movs r2, #0
	bl sub_081572D8
	movs r0, #0xb
	b _08157A96
	.align 2, 0
_081579DC: .4byte gUnk_02029D90
_081579E0:
	ldr r4, _08157A20 @ =gUnk_02029D90
	ldr r0, [r4]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r1, #1
	bl sub_08000768
	bl sub_0801A40C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, [r4]
	adds r1, #0x48
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _08157A0E
	movs r2, #1
_08157A0E:
	cmp r2, #2
	bgt _08157AB6
	cmp r2, #1
	blt _08157AB6
	movs r0, #0xc
_08157A18:
	mov r3, sb
	strb r0, [r3]
	b _08157AB6
	.align 2, 0
_08157A20: .4byte gUnk_02029D90
_08157A24:
	ldr r5, _08157A5C @ =gUnk_02029D90
	ldr r0, [r5]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #1
	bl sub_08000768
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0x80
	bl sub_08138DAC
	ldr r1, [r5]
	str r0, [r1]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x80
	bl sub_08138DAC
	ldr r1, [r5]
	str r0, [r1, #4]
	movs r0, #0xd
_08157A56:
	mov r2, sb
	strb r0, [r2]
	b _08157AB6
	.align 2, 0
_08157A5C: .4byte gUnk_02029D90
_08157A60:
	ldr r5, _08157A9C @ =gUnk_02029D90
	ldr r0, [r5]
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r1, #1
	bl sub_08000768
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_08139548
	cmp r0, #0
	beq _08157AB6
	movs r4, #0
_08157A7E:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08139468
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #1
	bls _08157A7E
	movs r0, #0xff
_08157A96:
	mov r1, sb
	strb r0, [r1]
	b _08157AB6
	.align 2, 0
_08157A9C: .4byte gUnk_02029D90
_08157AA0:
	ldr r1, _08157AC4 @ =gUnk_030010B0
	ldrh r2, [r1, #8]
	ldr r0, _08157AC8 @ =0x0000FFEF
	ands r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #6]
	ldr r0, _08157ACC @ =0x0000FFFD
	ands r0, r2
	strh r0, [r1, #6]
	bl sub_081183E8
_08157AB6:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08157AC4: .4byte gUnk_030010B0
_08157AC8: .4byte 0x0000FFEF
_08157ACC: .4byte 0x0000FFFD

	thumb_func_start sub_08157AD0
sub_08157AD0: @ 0x08157AD0
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _08157B20 @ =gUnk_03000EB0
	movs r6, #0
	strb r0, [r1, #0x19]
	ldr r1, _08157B24 @ =gUnk_030010B0
	ldrh r2, [r1, #8]
	ldr r0, _08157B28 @ =0x0000FFEF
	ands r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #6]
	ldr r0, _08157B2C @ =0x0000FFFD
	ands r0, r2
	strh r0, [r1, #6]
	str r6, [sp]
	ldr r4, _08157B30 @ =gUnk_02002400
	ldr r5, _08157B34 @ =0x01000080
	mov r0, sp
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	str r6, [sp, #4]
	add r0, sp, #4
	movs r1, #0x80
	lsls r1, r1, #2
	adds r4, r4, r1
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	ldr r0, _08157B38 @ =gUnk_03000E60
	ldr r2, _08157B3C @ =sub_08157534
	movs r1, #1
	bl sub_08002D38
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08157B20: .4byte gUnk_03000EB0
_08157B24: .4byte gUnk_030010B0
_08157B28: .4byte 0x0000FFEF
_08157B2C: .4byte 0x0000FFFD
_08157B30: .4byte gUnk_02002400
_08157B34: .4byte 0x01000080
_08157B38: .4byte gUnk_03000E60
_08157B3C: .4byte sub_08157534

	thumb_func_start sub_08157B40
sub_08157B40: @ 0x08157B40
	ldr r2, _08157B80 @ =0x04000006
	ldr r0, _08157B84 @ =gUnk_02029D90
	ldr r0, [r0]
	ldrh r1, [r0, #0x3a]
	lsrs r1, r1, #2
	movs r0, #0x1f
	ands r1, r0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r1, r0, #2
	adds r0, r1, #0
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1f
	bls _08157B72
	movs r0, #0x3f
	subs r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08157B72:
	ldr r1, _08157B88 @ =0x05000062
	lsls r0, r2, #5
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r0, r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_08157B80: .4byte 0x04000006
_08157B84: .4byte gUnk_02029D90
_08157B88: .4byte 0x05000062

	thumb_func_start sub_08157B8C
sub_08157B8C: @ 0x08157B8C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	ldr r0, _08157C4C @ =gUnk_02031C30
	ldr r1, [r0]
	cmp r1, #0
	beq _08157C3E
	movs r5, #0
	str r5, [sp, #8]
	ldr r4, _08157C50 @ =0x040000D4
	add r0, sp, #8
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _08157C54 @ =0x85006000
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _08157C58 @ =0x000021E0
	adds r0, r1, r2
	ldr r6, _08157C5C @ =gUnk_03000DD0
	adds r1, r6, #0
	movs r2, #0x50
	bl memcpy2
	adds r1, r6, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	movs r0, #0xf3
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	strb r5, [r1]
	adds r1, #3
	ldrb r0, [r1]
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	strb r5, [r0]
	adds r0, #1
	ldrb r1, [r0]
	strb r5, [r0]
	ldr r0, _08157C60 @ =gUnk_086B904C
	ldr r1, _08157C64 @ =0x06009F40
	ldr r2, _08157C68 @ =gUnk_02004440
	mov r8, r2
	str r5, [sp]
	movs r6, #1
	str r6, [sp, #4]
	movs r3, #0
	bl sub_0801A59C
	ldr r0, _08157C6C @ =gUnk_086DB348
	ldr r1, _08157C70 @ =0x06012440
	str r5, [sp]
	str r6, [sp, #4]
	mov r2, r8
	movs r3, #0
	bl sub_0801A59C
	bl sub_08139694
	bl sub_081396DC
	ldr r0, _08157C74 @ =gUnk_02002600
	ldr r1, _08157C78 @ =gUnk_0861E288
	movs r2, #0x80
	lsls r2, r2, #2
	bl memcpy2
	add r1, sp, #0xc
	strh r5, [r1]
	str r1, [r4]
	ldr r0, _08157C7C @ =gUnk_03000D60
	ldr r0, [r0, #0x14]
	str r0, [r4, #4]
	ldr r2, _08157C80 @ =0x81000280
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	strh r5, [r1]
	str r1, [r4]
	ldr r0, _08157C84 @ =gUnk_03000E20
	ldr r0, [r0, #0x14]
	str r0, [r4, #4]
	str r2, [r4, #8]
	ldr r0, [r4, #8]
_08157C3E:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08157C4C: .4byte gUnk_02031C30
_08157C50: .4byte 0x040000D4
_08157C54: .4byte 0x85006000
_08157C58: .4byte 0x000021E0
_08157C5C: .4byte gUnk_03000DD0
_08157C60: .4byte gUnk_086B904C
_08157C64: .4byte 0x06009F40
_08157C68: .4byte gUnk_02004440
_08157C6C: .4byte gUnk_086DB348
_08157C70: .4byte 0x06012440
_08157C74: .4byte gUnk_02002600
_08157C78: .4byte gUnk_0861E288
_08157C7C: .4byte gUnk_03000D60
_08157C80: .4byte 0x81000280
_08157C84: .4byte gUnk_03000E20

	thumb_func_start sub_08157C88
sub_08157C88: @ 0x08157C88
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08157CF4 @ =gUnk_02029C30
	movs r1, #0x80
	lsls r1, r1, #8
	bl sub_0800486C
	ldr r6, _08157CF8 @ =gUnk_02029C28
	str r0, [r6]
	ldr r5, _08157CFC @ =gUnk_02031C30
	ldr r1, _08157D00 @ =0x0000223C
	bl sub_080048D4
	str r0, [r5]
	ldr r1, _08157D00 @ =0x0000223C
	bl memzero
	ldr r0, [r6]
	ldr r1, _08157D04 @ =0x00001C44
	bl sub_080048D4
	ldr r1, [r5]
	ldr r3, _08157D08 @ =0x00002230
	adds r2, r1, r3
	str r0, [r2]
	ldr r0, _08157D0C @ =0x0000223A
	adds r1, r1, r0
	strb r4, [r1]
	movs r0, #0xf3
	bl sub_08142F50
	ldr r1, [r5]
	ldr r2, _08157D10 @ =0x00002238
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r5]
	ldr r1, _08157D14 @ =gUnk_02000000
	subs r2, #0x58
	bl memcpy2
	bl sub_08157B8C
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	movs r0, #2
	bl sub_08003CDC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08157CF4: .4byte gUnk_02029C30
_08157CF8: .4byte gUnk_02029C28
_08157CFC: .4byte gUnk_02031C30
_08157D00: .4byte 0x0000223C
_08157D04: .4byte 0x00001C44
_08157D08: .4byte 0x00002230
_08157D0C: .4byte 0x0000223A
_08157D10: .4byte 0x00002238
_08157D14: .4byte gUnk_02000000

	thumb_func_start sub_08157D18
sub_08157D18: @ 0x08157D18
	push {r4, lr}
	ldr r4, _08157D80 @ =gUnk_02031C30
	ldr r1, [r4]
	cmp r1, #0
	beq _08157D78
	ldr r0, _08157D84 @ =gUnk_02000000
	ldr r2, _08157D88 @ =0x000021E0
	bl memcpy2
	ldr r0, [r4]
	cmp r0, #0
	beq _08157D68
	ldr r1, _08157D88 @ =0x000021E0
	adds r0, r0, r1
	ldr r1, _08157D8C @ =gUnk_03000DD0
	movs r2, #0x50
	bl memcpy2
	ldr r0, [r4]
	ldr r1, _08157D90 @ =0x00002230
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08157D5A
	ldr r0, _08157D94 @ =gUnk_02029C28
	ldr r0, [r0]
	bl sub_0800490C
	ldr r0, [r4]
	ldr r1, _08157D90 @ =0x00002230
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
_08157D5A:
	ldr r1, [r4]
	ldr r0, _08157D94 @ =gUnk_02029C28
	ldr r0, [r0]
	bl sub_0800490C
	movs r0, #0
	str r0, [r4]
_08157D68:
	ldr r4, _08157D94 @ =gUnk_02029C28
	ldr r0, [r4]
	cmp r0, #0
	beq _08157D78
	bl sub_08004928
	movs r0, #0
	str r0, [r4]
_08157D78:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08157D80: .4byte gUnk_02031C30
_08157D84: .4byte gUnk_02000000
_08157D88: .4byte 0x000021E0
_08157D8C: .4byte gUnk_03000DD0
_08157D90: .4byte 0x00002230
_08157D94: .4byte gUnk_02029C28

	thumb_func_start sub_08157D98
sub_08157D98: @ 0x08157D98
	push {r4, r5, r6, lr}
	sub sp, #0x38
	adds r5, r1, #0
	ldrb r0, [r5]
	cmp r0, #7
	bne _08157DA6
	b _08158078
_08157DA6:
	cmp r0, #7
	bgt _08157DD0
	cmp r0, #2
	beq _08157E54
	cmp r0, #2
	bgt _08157DBC
	cmp r0, #0
	beq _08157E02
	cmp r0, #1
	beq _08157E16
	b _08158132
_08157DBC:
	cmp r0, #4
	bne _08157DC2
	b _08157F48
_08157DC2:
	cmp r0, #4
	bge _08157DC8
	b _08157EDC
_08157DC8:
	cmp r0, #5
	bne _08157DCE
	b _08157FDC
_08157DCE:
	b _08158132
_08157DD0:
	cmp r0, #0xa
	bne _08157DD6
	b _081580EE
_08157DD6:
	cmp r0, #0xa
	bgt _08157DE8
	cmp r0, #8
	bne _08157DE0
	b _08158090
_08157DE0:
	cmp r0, #9
	bne _08157DE6
	b _081580B8
_08157DE6:
	b _08158132
_08157DE8:
	cmp r0, #0xfe
	bne _08157DEE
	b _081580E0
_08157DEE:
	cmp r0, #0xfe
	bgt _08157DFA
	cmp r0, #0xb
	bne _08157DF8
	b _0815810C
_08157DF8:
	b _08158132
_08157DFA:
	cmp r0, #0xff
	bne _08157E00
	b _081580E8
_08157E00:
	b _08158132
_08157E02:
	movs r0, #0
	bl sub_080030E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08157E12
	b _08158130
_08157E12:
	movs r0, #1
	b _08158130
_08157E16:
	movs r0, #0
	bl sub_080030E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08157C88
	ldr r0, _08157E44 @ =gUnk_02031C30
	ldr r1, [r0]
	ldr r0, _08157E48 @ =0x00002236
	adds r2, r1, r0
	movs r0, #0x4c
	strh r0, [r2]
	ldr r3, _08157E4C @ =0x00002234
	adds r2, r1, r3
	movs r0, #3
	strh r0, [r2]
	ldr r0, _08157E50 @ =0x00002239
	adds r1, r1, r0
	movs r0, #0x3c
	strb r0, [r1]
	movs r0, #2
	b _08158130
	.align 2, 0
_08157E44: .4byte gUnk_02031C30
_08157E48: .4byte 0x00002236
_08157E4C: .4byte 0x00002234
_08157E50: .4byte 0x00002239
_08157E54:
	ldr r4, _08157EC8 @ =gUnk_02031C30
	ldr r1, [r4]
	ldr r2, _08157ECC @ =0x00002236
	adds r0, r1, r2
	ldrh r6, [r0]
	cmp r1, #0
	beq _08157EC2
	adds r0, r6, #0
	cmp r0, #0x4d
	bne _08157E86
	movs r0, #2
	bl sub_08020828
	adds r0, #0x52
	ldrb r1, [r0]
	add r0, sp, #0x24
	movs r2, #2
	bl sub_0801B644
	bl sub_08020390
	add r1, sp, #0x24
	movs r2, #0
	bl sub_080197D4
_08157E86:
	ldr r0, [r4]
	ldr r3, _08157ED0 @ =0x00002230
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r2, _08157ED4 @ =gUnk_0874A6CC
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #2
	str r1, [sp, #0x18]
	str r3, [sp, #0x1c]
	movs r1, #0x88
	str r1, [sp, #0x20]
	ldr r1, _08157ED8 @ =0x0000022F
	adds r3, r6, #0
	bl sub_08015D50
	bl sub_0801670C
	bl sub_0801670C
_08157EC2:
	movs r0, #0xb
	b _08158130
	.align 2, 0
_08157EC8: .4byte gUnk_02031C30
_08157ECC: .4byte 0x00002236
_08157ED0: .4byte 0x00002230
_08157ED4: .4byte gUnk_0874A6CC
_08157ED8: .4byte 0x0000022F
_08157EDC:
	movs r0, #0
	bl sub_080030AC
	ldr r6, _08157F2C @ =gUnk_02031C30
	ldr r0, [r6]
	ldr r1, _08157F30 @ =0x0000223A
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r2, _08157F34 @ =gUnk_02000000
	movs r0, #0
	bl sub_08002A24
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #1
	bl sub_080030AC
	cmp r4, #0
	bne _08157F44
	ldr r1, [r6]
	ldr r3, _08157F38 @ =0x00002239
	adds r2, r1, r3
	ldrb r0, [r2]
	cmp r0, #1
	bhi _08157F12
	b _08158014
_08157F12:
	ldr r0, _08157F3C @ =0x00002236
	adds r1, r1, r0
	movs r0, #0x4b
	strh r0, [r1]
	movs r0, #0x78
	strb r0, [r2]
	ldr r0, [r6]
	ldr r1, _08157F40 @ =0x00002234
	adds r0, r0, r1
	movs r1, #7
	strh r1, [r0]
	movs r0, #0xa
	b _08158130
	.align 2, 0
_08157F2C: .4byte gUnk_02031C30
_08157F30: .4byte 0x0000223A
_08157F34: .4byte gUnk_02000000
_08157F38: .4byte 0x00002239
_08157F3C: .4byte 0x00002236
_08157F40: .4byte 0x00002234
_08157F44:
	movs r0, #4
	b _08158130
_08157F48:
	ldr r0, _08157F70 @ =gUnk_02031C30
	ldr r0, [r0]
	ldr r2, _08157F74 @ =0x00002238
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08157F9E
	movs r0, #0x86
	lsls r0, r0, #1
	movs r1, #1
	bl sub_08142F7C
	add r1, sp, #0x34
	movs r0, #0x10
	bl sub_0802088C
	adds r1, r0, #0
	movs r2, #0
	ldr r3, [sp, #0x34]
	b _08157F7C
	.align 2, 0
_08157F70: .4byte gUnk_02031C30
_08157F74: .4byte 0x00002238
_08157F78:
	adds r2, #1
	adds r1, #4
_08157F7C:
	cmp r2, r3
	bge _08157F8A
	ldrb r0, [r1]
	cmp r0, #0x10
	beq _08157F8A
	cmp r0, #0
	bne _08157F78
_08157F8A:
	ldrb r2, [r1, #1]
	cmp r2, #0
	bne _08157F9E
	ldrb r0, [r1]
	cmp r0, #0
	bne _08157F9A
	movs r0, #0x10
	strb r0, [r1]
_08157F9A:
	adds r0, r2, #1
	strb r0, [r1, #1]
_08157F9E:
	movs r0, #2
	bl sub_08020828
	adds r3, r0, #0
	ldr r0, _08157FD0 @ =gUnk_02031C30
	ldr r4, [r0]
	ldr r1, _08157FD4 @ =0x00002238
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r2, #0x16
	cmp r0, #0
	bne _08157FB8
	movs r2, #0x1f
_08157FB8:
	movs r1, #1
	lsls r1, r2
	ldr r0, [r3, #8]
	orrs r0, r1
	str r0, [r3, #8]
	ldr r2, _08157FD8 @ =0x00002239
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	movs r0, #5
	b _08158130
	.align 2, 0
_08157FD0: .4byte gUnk_02031C30
_08157FD4: .4byte 0x00002238
_08157FD8: .4byte 0x00002239
_08157FDC:
	movs r0, #0
	bl sub_081530B0
	movs r0, #0
	bl sub_080030AC
	ldr r6, _0815801C @ =gUnk_02031C30
	ldr r0, [r6]
	ldr r3, _08158020 @ =0x0000223A
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r0, #0
	bl sub_08003038
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #1
	bl sub_080030AC
	cmp r4, #0
	bne _0815804C
	ldr r1, [r6]
	ldr r0, _08158024 @ =0x00002239
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #1
	bhi _08158028
_08158014:
	adds r0, #1
	strb r0, [r2]
	b _08158132
	.align 2, 0
_0815801C: .4byte gUnk_02031C30
_08158020: .4byte 0x0000223A
_08158024: .4byte 0x00002239
_08158028:
	ldr r3, _08158044 @ =0x00002236
	adds r1, r1, r3
	movs r0, #0x4b
	strh r0, [r1]
	movs r0, #0x78
	strb r0, [r2]
	ldr r0, [r6]
	ldr r1, _08158048 @ =0x00002234
	adds r0, r0, r1
	movs r1, #7
	strh r1, [r0]
	movs r0, #0xa
	b _08158130
	.align 2, 0
_08158044: .4byte 0x00002236
_08158048: .4byte 0x00002234
_0815804C:
	ldr r1, [r6]
	ldr r3, _0815806C @ =0x00002236
	adds r2, r1, r3
	movs r0, #0x4d
	strh r0, [r2]
	ldr r0, _08158070 @ =0x00002239
	adds r1, r1, r0
	movs r0, #0x78
	strb r0, [r1]
	ldr r0, [r6]
	ldr r1, _08158074 @ =0x00002234
	adds r0, r0, r1
	movs r1, #7
	strh r1, [r0]
	movs r0, #0xa
	b _08158130
	.align 2, 0
_0815806C: .4byte 0x00002236
_08158070: .4byte 0x00002239
_08158074: .4byte 0x00002234
_08158078:
	ldr r0, _08158088 @ =gUnk_02031C30
	ldr r0, [r0]
	ldr r2, _0815808C @ =0x00002234
	adds r0, r0, r2
	movs r1, #8
	strh r1, [r0]
	movs r0, #2
	b _08158130
	.align 2, 0
_08158088: .4byte gUnk_02031C30
_0815808C: .4byte 0x00002234
_08158090:
	ldr r0, _081580AC @ =gUnk_03000820
	ldrh r1, [r0]
	movs r2, #9
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08158132
	ldr r0, _081580B0 @ =gUnk_02031C30
	ldr r0, [r0]
	ldr r3, _081580B4 @ =0x00002234
	adds r0, r0, r3
	strh r2, [r0]
	movs r0, #0xa
	b _08158130
	.align 2, 0
_081580AC: .4byte gUnk_03000820
_081580B0: .4byte gUnk_02031C30
_081580B4: .4byte 0x00002234
_081580B8:
	ldr r2, _081580D4 @ =gUnk_02031C30
	ldr r0, [r2]
	ldr r1, _081580D8 @ =0x00002239
	adds r0, r0, r1
	movs r1, #0x78
	strb r1, [r0]
	ldr r0, [r2]
	ldr r2, _081580DC @ =0x00002234
	adds r0, r0, r2
	movs r1, #0xfe
	strh r1, [r0]
	movs r0, #0xb
	b _08158130
	.align 2, 0
_081580D4: .4byte gUnk_02031C30
_081580D8: .4byte 0x00002239
_081580DC: .4byte 0x00002234
_081580E0:
	bl sub_08157D18
	movs r0, #0xff
	b _08158130
_081580E8:
	bl sub_0811D304
	b _08158132
_081580EE:
	bl sub_0801670C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08158132
	ldr r0, _08158104 @ =gUnk_02031C30
	ldr r0, [r0]
	ldr r3, _08158108 @ =0x00002234
	adds r0, r0, r3
	b _0815812E
	.align 2, 0
_08158104: .4byte gUnk_02031C30
_08158108: .4byte 0x00002234
_0815810C:
	ldr r2, _0815813C @ =gUnk_02031C30
	ldr r0, [r2]
	ldr r3, _08158140 @ =0x00002239
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _08158128
	subs r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08158132
_08158128:
	ldr r0, [r2]
	ldr r1, _08158144 @ =0x00002234
	adds r0, r0, r1
_0815812E:
	ldrh r0, [r0]
_08158130:
	strb r0, [r5]
_08158132:
	add sp, #0x38
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0815813C: .4byte gUnk_02031C30
_08158140: .4byte 0x00002239
_08158144: .4byte 0x00002234

	thumb_func_start sub_08158148
sub_08158148: @ 0x08158148
	push {lr}
	ldr r0, _08158158 @ =gUnk_03000E60
	ldr r2, _0815815C @ =sub_08157D98
	movs r1, #1
	bl sub_08002D38
	pop {r0}
	bx r0
	.align 2, 0
_08158158: .4byte gUnk_03000E60
_0815815C: .4byte sub_08157D98

	thumb_func_start sub_08158160
sub_08158160: @ 0x08158160
	push {r4, lr}
	sub sp, #4
	ldr r3, _08158248 @ =gUnk_03000DD0
	ldrh r0, [r3, #0xa]
	movs r2, #0
	movs r4, #0
	strh r4, [r3, #0xa]
	ldrh r0, [r3, #0xa]
	ldrh r1, [r3, #0xc]
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xe]
	strh r4, [r3, #0xe]
	ldrh r0, [r3, #0xe]
	ldrh r1, [r3, #0x10]
	strh r0, [r3, #0x10]
	ldrh r0, [r3, #0x12]
	strh r4, [r3, #0x12]
	ldrh r0, [r3, #0x12]
	ldrh r1, [r3, #0x14]
	strh r0, [r3, #0x14]
	ldrh r0, [r3, #0x16]
	strh r4, [r3, #0x16]
	ldrh r0, [r3, #0x16]
	ldrh r1, [r3, #0x18]
	strh r0, [r3, #0x18]
	ldrh r0, [r3, #2]
	ldr r0, _0815824C @ =0x00002F03
	strh r0, [r3, #2]
	ldrh r0, [r3, #4]
	ldr r0, _08158250 @ =0x00002E02
	strh r0, [r3, #4]
	ldrh r0, [r3, #6]
	ldr r0, _08158254 @ =0x00002D08
	strh r0, [r3, #6]
	ldrh r0, [r3, #8]
	ldr r0, _08158258 @ =0x00002C09
	strh r0, [r3, #8]
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	strb r2, [r1]
	adds r1, #1
	ldrb r0, [r1]
	strb r2, [r1]
	subs r1, #7
	ldrb r0, [r1]
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	strb r2, [r1]
	adds r0, r3, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	strb r2, [r0]
	adds r1, r3, #0
	adds r1, #0x4d
	ldrb r0, [r1]
	strb r2, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #0x10
	strb r0, [r1]
	subs r1, #0xc
	ldrb r0, [r1]
	strb r2, [r1]
	adds r0, r3, #0
	adds r0, #0x43
	ldrb r1, [r0]
	strb r2, [r0]
	ldr r1, _0815825C @ =gUnk_03001070
	movs r2, #0xc0
	lsls r2, r2, #0x13
	str r2, [r1, #0x10]
	ldr r0, _08158260 @ =0x06007800
	str r0, [r1, #0x14]
	ldr r1, _08158264 @ =gUnk_03001090
	str r2, [r1, #0x10]
	ldr r0, _08158268 @ =0x06007000
	str r0, [r1, #0x14]
	ldr r1, _0815826C @ =gUnk_03000D60
	ldr r2, _08158270 @ =0x06008000
	str r2, [r1, #0x10]
	ldr r0, _08158274 @ =0x06006800
	str r0, [r1, #0x14]
	ldr r1, _08158278 @ =gUnk_03000E20
	str r2, [r1, #0x10]
	ldr r0, _0815827C @ =0x06006000
	str r0, [r1, #0x14]
	mov r0, sp
	strh r4, [r0]
	ldr r0, _08158280 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08158284 @ =gUnk_02002400
	str r2, [r0, #4]
	ldr r3, _08158288 @ =0x81000100
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r4, [r1]
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r2, r1
	str r2, [r0, #4]
	str r3, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08158248: .4byte gUnk_03000DD0
_0815824C: .4byte 0x00002F03
_08158250: .4byte 0x00002E02
_08158254: .4byte 0x00002D08
_08158258: .4byte 0x00002C09
_0815825C: .4byte gUnk_03001070
_08158260: .4byte 0x06007800
_08158264: .4byte gUnk_03001090
_08158268: .4byte 0x06007000
_0815826C: .4byte gUnk_03000D60
_08158270: .4byte 0x06008000
_08158274: .4byte 0x06006800
_08158278: .4byte gUnk_03000E20
_0815827C: .4byte 0x06006000
_08158280: .4byte 0x040000D4
_08158284: .4byte gUnk_02002400
_08158288: .4byte 0x81000100

	thumb_func_start sub_0815828C
sub_0815828C: @ 0x0815828C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r7, _081582FC @ =gUnk_02029AF0
	ldr r0, [r7]
	ldrh r0, [r0, #0x22]
	movs r1, #0x1a
	mov sl, r1
	cmp r0, #0
	bne _081582B0
	movs r0, #0x10
	mov sl, r0
_081582B0:
	movs r6, #0
	mov r0, r8
	adds r1, r4, #0
	bl sub_0801A384
	adds r5, r0, #0
	mov r1, r8
	ldrh r1, [r1, #0x14]
	cmp r4, r1
	bhs _08158368
	ldr r1, [r7]
	ldrh r0, [r1, #0x22]
	cmp r0, #0
	bne _08158304
	ldr r0, _08158300 @ =gUnk_0876595A
	movs r1, #0
	adds r2, r4, #0
	bl sub_0801C7C0
	adds r6, r0, #0
	adds r0, r4, #0
	adds r0, #0x4e
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, #1
	bne _081582F4
	movs r1, #0xa0
	lsls r1, r1, #7
_081582F4:
	adds r7, r1, #0
	movs r0, #0x10
	mov sb, r0
	b _08158318
	.align 2, 0
_081582FC: .4byte gUnk_02029AF0
_08158300: .4byte gUnk_0876595A
_08158304:
	ldr r0, _08158394 @ =gUnk_08763BB8
	ldrh r1, [r1, #0x1a]
	adds r2, r4, #0
	bl sub_0801C7C0
	adds r6, r0, #0
	movs r7, #0x80
	lsls r7, r7, #7
	movs r1, #0x1a
	mov sb, r1
_08158318:
	mov r0, r8
	adds r1, r4, #0
	mov r2, sl
	bl sub_0801A358
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08158398 @ =gUnk_03000D60
	lsls r1, r4, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	mov r2, sb
	movs r1, #0x88
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	adds r1, r6, #0
	movs r3, #1
	bl sub_0801A924
	movs r6, #0
	cmp r6, sb
	bhs _08158368
	mov r0, sl
	lsls r3, r0, #1
	adds r2, r7, #1
_0815834C:
	adds r0, r4, r7
	strh r0, [r5]
	adds r1, r3, r5
	adds r0, r4, r2
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r6, sb
	blo _0815834C
_08158368:
	cmp r6, sl
	bhs _08158384
	mov r1, sl
	lsls r2, r1, #1
	movs r1, #0
_08158372:
	adds r0, r2, r5
	strh r1, [r0]
	strh r1, [r5]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #2
	cmp r6, sl
	blo _08158372
_08158384:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08158394: .4byte gUnk_08763BB8
_08158398: .4byte gUnk_03000D60

	thumb_func_start sub_0815839C
sub_0815839C: @ 0x0815839C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	ldr r0, _0815841C @ =gUnk_02029AF0
	ldr r4, [r0]
	ldrh r0, [r4, #0x20]
	adds r0, #1
	strh r0, [r4, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bhi _081583D6
	movs r0, #8
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_081583D6:
	ldrh r4, [r4, #0x22]
	cmp r4, #0
	bne _08158428
	adds r0, r6, #0
	bl sub_0801A3E4
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xc
	adds r2, #0x5c
	ldr r0, _08158420 @ =gUnk_086A2578
	adds r1, r5, #0
	adds r1, #0x20
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r3, _08158424 @ =gUnk_086D7BF0
	ldrb r3, [r3, #0x10]
	lsrs r3, r3, #4
	str r3, [sp, #0x18]
	movs r3, #0
	bl sub_080022EC
	movs r0, #0x90
	mov sb, r0
	movs r0, #0x58
	mov r8, r0
	movs r7, #0xb8
	b _08158432
	.align 2, 0
_0815841C: .4byte gUnk_02029AF0
_08158420: .4byte gUnk_086A2578
_08158424: .4byte gUnk_086D7BF0
_08158428:
	movs r0, #0x90
	mov sb, r0
	movs r0, #0x58
	mov r8, r0
	movs r7, #0xe0
_08158432:
	movs r4, #0
	movs r5, #0
_08158436:
	cmp r4, #0
	bne _08158442
	adds r0, r6, #0
	bl sub_0801A3DC
	b _08158448
_08158442:
	adds r0, r6, #0
	bl sub_0801A3F8
_08158448:
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08158480
	lsls r1, r4, #3
	ldr r0, _08158498 @ =gUnk_086A2568
	adds r3, r1, r0
	mov r2, sb
	cmp r4, #0
	bne _0815845C
	mov r2, r8
_0815845C:
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	ldr r0, _0815849C @ =gUnk_086D7BF0
	ldrb r1, [r0, #0x11]
	movs r0, #0xf
	ands r0, r1
	str r0, [sp, #0x18]
	adds r0, r3, #0
	adds r1, r7, #0
	movs r3, #0
	bl sub_080022EC
_08158480:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #1
	bls _08158436
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08158498: .4byte gUnk_086A2568
_0815849C: .4byte gUnk_086D7BF0

	thumb_func_start sub_081584A0
sub_081584A0: @ 0x081584A0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _081584C4 @ =gUnk_02029AF0
	ldr r1, [r0]
	ldrh r0, [r1, #0x26]
	cmp r0, #0
	beq _081584C8
	subs r0, #1
	strh r0, [r1, #0x26]
	ldrh r1, [r1, #0x24]
	adds r0, r5, #0
	bl sub_0801A074
	movs r0, #1
	b _0815855A
	.align 2, 0
_081584C4: .4byte gUnk_02029AF0
_081584C8:
	cmp r7, #0x40
	bne _081584EC
	adds r0, r5, #0
	bl sub_0801A3DC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08158558
	adds r0, r5, #0
	bl sub_0801A3DC
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_0801A3E4
	adds r4, r4, r0
	subs r4, #1
	b _0815850E
_081584EC:
	cmp r7, #0x80
	bne _08158558
	adds r0, r5, #0
	bl sub_0801A3F8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08158558
	adds r0, r5, #0
	bl sub_0801A3DC
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_0801A3E4
	adds r4, r4, r0
	adds r4, #1
_0815850E:
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, _08158550 @ =gUnk_02029AF0
	ldr r1, [r6]
	strh r7, [r1, #0x24]
	movs r0, #1
	strh r0, [r1, #0x26]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0815828C
	ldr r0, [r6]
	ldrh r1, [r0, #0x24]
	adds r0, r5, #0
	bl sub_0801A074
	ldr r2, _08158554 @ =gUnk_03000820
	ldrb r1, [r2, #7]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0815853E
	ldrb r0, [r2, #0xb]
	strb r0, [r2, #0xe]
_0815853E:
	ldr r0, [r6]
	ldrh r0, [r0, #0x22]
	cmp r0, #0
	bne _0815854C
	movs r0, #0xb2
	bl PlaySE
_0815854C:
	movs r0, #2
	b _0815855A
	.align 2, 0
_08158550: .4byte gUnk_02029AF0
_08158554: .4byte gUnk_03000820
_08158558:
	movs r0, #0
_0815855A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08158560
sub_08158560: @ 0x08158560
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r1, [sp, #0x24]
	ldr r0, _081585A8 @ =gUnk_02029AF0
	mov r8, r0
	ldr r1, [r0]
	ldrh r0, [r1, #0x22]
	movs r2, #0x28
	adds r2, r2, r1
	mov sl, r2
	cmp r0, #0
	beq _08158586
	movs r3, #0x48
	adds r3, r3, r1
	mov sl, r3
_08158586:
	ldr r4, [sp, #0x24]
	ldrb r7, [r4]
	cmp r7, #4
	bne _08158590
	b _081589D6
_08158590:
	cmp r7, #4
	bgt _081585BC
	cmp r7, #1
	bne _0815859A
	b _0815879C
_0815859A:
	cmp r7, #1
	bgt _081585AC
	cmp r7, #0
	beq _081585E8
	bl _08158E28
	.align 2, 0
_081585A8: .4byte gUnk_02029AF0
_081585AC:
	cmp r7, #2
	bne _081585B2
	b _08158930
_081585B2:
	cmp r7, #3
	bne _081585B8
	b _081589BC
_081585B8:
	bl _08158E28
_081585BC:
	cmp r7, #7
	bne _081585C2
	b _08158D78
_081585C2:
	cmp r7, #7
	bgt _081585D6
	cmp r7, #5
	bne _081585CC
	b _08158C90
_081585CC:
	cmp r7, #6
	bne _081585D2
	b _08158CB8
_081585D2:
	bl _08158E28
_081585D6:
	cmp r7, #8
	bne _081585DC
	b _08158DAC
_081585DC:
	cmp r7, #0xff
	bne _081585E4
	bl _08158E38
_081585E4:
	bl _08158E28
_081585E8:
	bl sub_08158160
	ldr r5, _081588E4 @ =gUnk_02029AF4
	mov sb, r5
	ldr r0, [r5]
	movs r1, #0xdc
	lsls r1, r1, #6
	bl sub_080048D4
	adds r4, r0, #0
	ldr r0, _081588E8 @ =gUnk_087C2990
	ldr r6, _081588EC @ =gUnk_03001070
	ldr r1, [r6, #0x10]
	str r7, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r4, #0
	movs r3, #0
	bl sub_0801A59C
	ldr r0, [r5]
	adds r1, r4, #0
	bl sub_0800490C
	ldr r0, [r5]
	ldr r1, _081588F0 @ =0x00001C64
	bl sub_080048D4
	mov r2, r8
	ldr r1, [r2]
	str r0, [r1, #8]
	movs r0, #0xe6
	lsls r0, r0, #2
	strh r0, [r1, #0x1c]
	adds r0, #0x20
	strh r0, [r1, #0x1e]
	ldr r0, _081588F4 @ =gUnk_087C2424
	ldr r1, [r6, #0x14]
	movs r2, #0xa0
	lsls r2, r2, #1
	bl CpuFastSet
	ldr r0, _081588F8 @ =gUnk_03001090
	ldr r2, [r0, #0x14]
	mov r3, r8
	ldr r0, [r3]
	adds r1, r0, #0
	adds r1, #0x70
	ldrb r3, [r1]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x74
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	mov r4, r8
	ldr r1, [r4]
	adds r1, #0x70
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, #0x70
	ldrb r0, [r1]
	movs r4, #0xf
	ands r0, r4
	strb r0, [r1]
	ldr r6, _081588FC @ =gUnk_03000D60
	ldr r2, [r6, #0x14]
	mov r5, r8
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0x70
	ldrb r3, [r1]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x74
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r5]
	adds r1, #0x70
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, #0x70
	ldrb r0, [r1]
	ands r0, r4
	strb r0, [r1]
	ldr r0, _08158900 @ =gUnk_03000E20
	ldr r2, [r0, #0x14]
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0x70
	ldrb r3, [r1]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x74
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r5]
	adds r1, #0x70
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, #0x70
	ldrb r0, [r1]
	ands r0, r4
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	movs r4, #0x88
	lsls r4, r4, #2
	adds r1, r4, #0
	bl sub_080048D4
	ldr r1, [r5]
	str r0, [r1]
	mov r2, sb
	ldr r0, [r2]
	adds r1, r4, #0
	bl sub_080048D4
	ldr r1, [r5]
	str r0, [r1, #4]
	ldr r0, _08158904 @ =gUnk_0861DF68
	ldr r1, [r1]
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _08158908 @ =gUnk_0861E288
	ldr r1, [r5]
	ldr r1, [r1, #4]
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _0815890C @ =gUnk_087C1C24
	ldr r1, [r5]
	ldr r1, [r1]
	movs r2, #0x10
	bl CpuFastSet
	movs r4, #0x80
	lsls r4, r4, #1
	ldr r0, [r5]
	ldr r3, [r0]
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_08138580
	ldr r1, [r5]
	str r0, [r1, #0x68]
	ldr r3, [r1, #4]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_08138580
	ldr r1, [r5]
	str r0, [r1, #0x6c]
	mov r3, sb
	ldr r0, [r3]
	movs r4, #0x8c
	lsls r4, r4, #2
	adds r1, r4, #0
	bl sub_080048D4
	ldr r1, [r5]
	str r0, [r1, #0xc]
	mov r5, sb
	ldr r0, [r5]
	adds r1, r4, #0
	bl sub_080048D4
	mov r2, r8
	ldr r1, [r2]
	str r0, [r1, #0x10]
	movs r3, #0x8d
	lsls r3, r3, #2
	adds r1, r1, r3
	ldr r2, [r6, #0x14]
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #7
	str r0, [sp, #0xc]
	movs r0, #0xb
	str r0, [sp, #0x10]
	movs r0, #5
	str r0, [sp, #0x14]
	movs r0, #0x11
	str r0, [sp, #0x18]
	mov r0, sl
	movs r3, #0xfa
	bl sub_0801A1C0
	mov r0, sl
	movs r1, #4
	bl sub_0801A3EC
_0815879C:
	ldr r4, _08158910 @ =gUnk_02029AF0
	ldr r0, [r4]
	movs r7, #0
	strh r7, [r0, #0x22]
	movs r5, #0x28
	adds r5, r5, r0
	mov sl, r5
	movs r1, #4
	mov sb, r1
	mov r2, sb
	strh r2, [r0, #0x14]
	strh r7, [r0, #0x26]
	strh r7, [r0, #0x24]
	ldr r1, _081588FC @ =gUnk_03000D60
	ldr r2, [r1, #0x14]
	adds r1, r0, #0
	adds r1, #0x70
	ldrb r3, [r1]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x74
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r4]
	adds r1, #0x70
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, #0x70
	ldrb r0, [r1]
	movs r3, #0xf
	mov r8, r3
	ands r0, r3
	strb r0, [r1]
	ldr r6, _08158900 @ =gUnk_03000E20
	ldr r2, [r6, #0x14]
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x70
	ldrb r3, [r1]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x74
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r4]
	adds r1, #0x70
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, #0x70
	ldrb r0, [r1]
	mov r5, r8
	ands r0, r5
	strb r0, [r1]
	ldr r0, [r6, #0x14]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r5, r0, r1
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	movs r1, #0x12
	str r1, [sp]
	str r7, [sp, #4]
	mov r2, sb
	str r2, [sp, #8]
	movs r2, #0xa
	movs r3, #1
	bl sub_0801BB1C
	ldr r0, [r4]
	ldr r1, [r0, #0xc]
	movs r6, #0xa
	adds r2, r0, #0
	adds r2, #0x70
	ldrb r3, [r2]
	lsls r2, r3, #3
	subs r2, r2, r3
	lsls r2, r2, #2
	adds r2, #0x74
	adds r0, r0, r2
	str r6, [sp]
	movs r2, #0x24
	str r2, [sp, #4]
	movs r2, #0x40
	str r2, [sp, #8]
	adds r2, r5, #0
	movs r3, #0x12
	bl sub_08000CD4
	ldr r1, [r4]
	adds r1, #0x70
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, #0x70
	ldrb r0, [r1]
	mov r3, r8
	ands r0, r3
	strb r0, [r1]
	mov r0, sl
	bl sub_0801A24C
	movs r4, #0
_08158886:
	mov r0, sl
	bl sub_0801A3DC
	adds r1, r0, #0
	adds r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sl
	bl sub_0815828C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08158886
	mov r0, sl
	bl sub_08019FD4
	ldr r0, _08158910 @ =gUnk_02029AF0
	ldr r6, [r0]
	ldrh r0, [r6, #0x16]
	cmp r0, #0
	beq _0815891C
	ldr r7, _08158914 @ =0x00002004
	ldr r0, [r6, #8]
	ldrh r1, [r6, #0x1c]
	ldr r2, _08158918 @ =gUnk_087658EC
	movs r4, #0
	str r4, [sp]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r3, #0xff
	str r3, [sp, #0x14]
	ldrh r3, [r6, #0x1e]
	str r3, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r7, [sp, #0x20]
	movs r3, #0
	bl sub_08015D50
	movs r0, #3
	b _08158DA6
	.align 2, 0
_081588E4: .4byte gUnk_02029AF4
_081588E8: .4byte gUnk_087C2990
_081588EC: .4byte gUnk_03001070
_081588F0: .4byte 0x00001C64
_081588F4: .4byte gUnk_087C2424
_081588F8: .4byte gUnk_03001090
_081588FC: .4byte gUnk_03000D60
_08158900: .4byte gUnk_03000E20
_08158904: .4byte gUnk_0861DF68
_08158908: .4byte gUnk_0861E288
_0815890C: .4byte gUnk_087C1C24
_08158910: .4byte gUnk_02029AF0
_08158914: .4byte 0x00002004
_08158918: .4byte gUnk_087658EC
_0815891C:
	ldr r1, _0815892C @ =gUnk_03000820
	ldrh r0, [r1, #8]
	strh r0, [r6, #0x18]
	movs r0, #0xfc
	lsls r0, r0, #2
	strh r0, [r1, #8]
	movs r0, #2
	b _08158C1C
	.align 2, 0
_0815892C: .4byte gUnk_03000820
_08158930:
	ldr r0, [r1, #0x68]
	bl sub_08139548
	cmp r0, #0
	bne _0815893C
	b _08158E28
_0815893C:
	movs r4, #0
	mov r5, r8
_08158940:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x68
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08139468
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #1
	bls _08158940
	ldr r1, _081589AC @ =gUnk_02029AF4
	ldr r0, [r1]
	ldr r4, _081589B0 @ =gUnk_02029AF0
	ldr r1, [r4]
	ldr r1, [r1]
	bl sub_0800490C
	ldr r2, _081589AC @ =gUnk_02029AF4
	ldr r0, [r2]
	ldr r1, [r4]
	ldr r1, [r1, #4]
	bl sub_0800490C
	ldr r6, _081589B4 @ =0x00002004
	ldr r4, [r4]
	str r4, [sp, #0x28]
	ldr r0, [r4, #8]
	ldrh r1, [r4, #0x1c]
	ldr r2, _081589B8 @ =gUnk_087658EC
	movs r4, #0
	str r4, [sp]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r3, #0xff
	str r3, [sp, #0x14]
	ldr r5, [sp, #0x28]
	ldrh r3, [r5, #0x1e]
	str r3, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r6, [sp, #0x20]
	movs r3, #0
	bl sub_08015D50
	movs r0, #3
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	b _08158E28
	.align 2, 0
_081589AC: .4byte gUnk_02029AF4
_081589B0: .4byte gUnk_02029AF0
_081589B4: .4byte 0x00002004
_081589B8: .4byte gUnk_087658EC
_081589BC:
	bl sub_0801670C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _081589C8
	b _08158E28
_081589C8:
	mov r2, r8
	ldr r0, [r2]
	movs r1, #1
	strh r1, [r0, #0x16]
	ldrh r0, [r0, #0x14]
	ldr r3, [sp, #0x24]
	strb r0, [r3]
_081589D6:
	bl sub_0801670C
	bl sub_0801A40C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x40
	bne _081589E8
	b _08158C5A
_081589E8:
	cmp r7, #0x40
	bgt _081589F8
	cmp r7, #1
	beq _08158A1A
	cmp r7, #2
	bne _081589F6
	b _08158C0C
_081589F6:
	b _08158E28
_081589F8:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r7, r0
	bne _08158A02
	b _08158C28
_08158A02:
	cmp r7, r0
	bgt _08158A0E
	cmp r7, #0x80
	bne _08158A0C
	b _08158C5A
_08158A0C:
	b _08158E28
_08158A0E:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r7, r0
	bne _08158A18
	b _08158C28
_08158A18:
	b _08158E28
_08158A1A:
	movs r0, #0xad
	bl PlaySE
	mov r0, sl
	bl sub_0801A3DC
	adds r4, r0, #0
	mov r0, sl
	bl sub_0801A3E4
	ldr r5, _08158BE8 @ =gUnk_02029AF0
	ldr r1, [r5]
	adds r4, r4, r0
	movs r0, #0
	mov r8, r0
	strh r4, [r1, #0x1a]
	adds r4, #0x4e
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl sub_08142F7C
	ldr r1, _08158BEC @ =gUnk_03000D60
	mov sb, r1
	ldr r2, [r1, #0x14]
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0x70
	ldrb r3, [r1]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x74
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r5]
	adds r1, #0x70
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, #0x70
	ldrb r0, [r1]
	movs r6, #0xf
	ands r0, r6
	strb r0, [r1]
	ldr r4, _08158BF0 @ =gUnk_03000E20
	ldr r2, [r4, #0x14]
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0x70
	ldrb r3, [r1]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0x74
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000C44
	ldr r1, [r5]
	adds r1, #0x70
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, #0x70
	ldrb r0, [r1]
	ands r0, r6
	strb r0, [r1]
	ldr r0, [r4, #0x14]
	ldr r2, _08158BF4 @ =0x00000282
	adds r5, r0, r2
	ldr r3, _08158BE8 @ =gUnk_02029AF0
	ldr r0, [r3]
	ldr r0, [r0, #0xc]
	movs r1, #0x1c
	str r1, [sp]
	mov r4, r8
	str r4, [sp, #4]
	movs r1, #4
	mov r8, r1
	str r1, [sp, #8]
	movs r1, #0x1c
	movs r2, #0xa
	movs r3, #1
	bl sub_0801BB1C
	ldr r2, _08158BE8 @ =gUnk_02029AF0
	ldr r0, [r2]
	ldr r1, [r0, #0xc]
	movs r4, #0xa
	adds r2, r0, #0
	adds r2, #0x70
	ldrb r3, [r2]
	lsls r2, r3, #3
	subs r2, r2, r3
	lsls r2, r2, #2
	adds r2, #0x74
	adds r0, r0, r2
	str r4, [sp]
	movs r2, #0x38
	str r2, [sp, #4]
	movs r2, #0x40
	str r2, [sp, #8]
	adds r2, r5, #0
	movs r3, #0x1c
	bl sub_08000CD4
	ldr r3, _08158BE8 @ =gUnk_02029AF0
	ldr r1, [r3]
	adds r1, #0x70
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r3]
	adds r1, #0x70
	ldrb r0, [r1]
	ands r0, r6
	strb r0, [r1]
	ldr r1, [r3]
	strh r7, [r1, #0x22]
	movs r4, #0x48
	adds r4, r4, r1
	mov sl, r4
	ldr r0, _08158BF8 @ =gUnk_08763BB8
	ldrh r1, [r1, #0x1a]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	adds r0, r1, r0
	movs r1, #0x88
	movs r2, #0x8a
	movs r3, #0xff
	bl sub_08019A7C
	ldr r5, _08158BE8 @ =gUnk_02029AF0
	ldr r4, [r5]
	movs r2, #0x8d
	lsls r2, r2, #2
	adds r1, r4, r2
	mov r3, sb
	ldr r2, [r3, #0x14]
	movs r3, #0xcd
	lsls r3, r3, #1
	ldr r4, [r4, #0x10]
	str r4, [sp]
	movs r4, #0x1a
	str r4, [sp, #4]
	mov r4, r8
	str r4, [sp, #8]
	movs r4, #2
	str r4, [sp, #0xc]
	movs r4, #0xb
	str r4, [sp, #0x10]
	movs r4, #5
	str r4, [sp, #0x14]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, sl
	bl sub_0801A1C0
	mov r0, sl
	movs r1, #4
	bl sub_0801A3EC
	mov r0, sl
	bl sub_0801A24C
	movs r4, #0
_08158B7E:
	mov r0, sl
	bl sub_0801A3DC
	adds r1, r0, #0
	adds r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sl
	bl sub_0815828C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08158B7E
	mov r0, sl
	bl sub_08019FD4
	ldr r5, _08158BFC @ =0x00002004
	mov r8, r5
	ldr r6, _08158BE8 @ =gUnk_02029AF0
	ldr r1, [r6]
	ldr r0, [r1, #8]
	ldrh r1, [r1, #0x1c]
	ldr r2, _08158C00 @ =gUnk_087658EC
	movs r4, #0
	str r4, [sp]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r3, #0xff
	str r3, [sp, #0x14]
	ldr r5, [r6]
	ldrh r3, [r5, #0x1e]
	str r3, [sp, #0x18]
	str r4, [sp, #0x1c]
	mov r3, r8
	str r3, [sp, #0x20]
	movs r3, #1
	bl sub_08015D50
	ldr r1, [r6]
	movs r0, #6
	strh r0, [r1, #0x14]
	ldr r1, _08158C04 @ =gUnk_03000820
	ldr r0, _08158C08 @ =0x000003F1
	strh r0, [r1, #8]
	movs r0, #3
	b _08158DA6
	.align 2, 0
_08158BE8: .4byte gUnk_02029AF0
_08158BEC: .4byte gUnk_03000D60
_08158BF0: .4byte gUnk_03000E20
_08158BF4: .4byte 0x00000282
_08158BF8: .4byte gUnk_08763BB8
_08158BFC: .4byte 0x00002004
_08158C00: .4byte gUnk_087658EC
_08158C04: .4byte gUnk_03000820
_08158C08: .4byte 0x000003F1
_08158C0C:
	ldr r0, _08158C24 @ =gUnk_03000820
	movs r1, #0xfc
	lsls r1, r1, #2
	strh r1, [r0, #8]
	movs r0, #0xb0
	bl PlaySE
	movs r0, #7
_08158C1C:
	ldr r5, [sp, #0x24]
	strb r0, [r5]
	b _08158E28
	.align 2, 0
_08158C24: .4byte gUnk_03000820
_08158C28:
	mov r0, sl
	adds r1, r7, #0
	bl sub_0801A158
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08158C38
	b _08158E28
_08158C38:
	movs r4, #0
_08158C3A:
	mov r0, sl
	bl sub_0801A3DC
	adds r1, r0, #0
	adds r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sl
	bl sub_0815828C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08158C3A
	b _08158D3E
_08158C5A:
	mov r0, sl
	adds r1, r7, #0
	bl sub_0801A44C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08158C6C
	b _08158E28
_08158C6C:
	mov r0, sl
	adds r1, r7, #0
	bl sub_081584A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08158C80
	movs r0, #5
	ldr r1, [sp, #0x24]
	strb r0, [r1]
_08158C80:
	ldr r0, _08158C8C @ =gUnk_02029AF0
	ldr r1, [r0]
	movs r0, #4
	strh r0, [r1, #0x14]
	b _08158E28
	.align 2, 0
_08158C8C: .4byte gUnk_02029AF0
_08158C90:
	bl sub_0801670C
	bl sub_0801A40C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sl
	bl sub_081584A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08158CAC
	b _08158E28
_08158CAC:
	mov r2, r8
	ldr r0, [r2]
	ldrh r0, [r0, #0x14]
	ldr r3, [sp, #0x24]
	strb r0, [r3]
	b _08158E28
_08158CB8:
	bl sub_0801670C
	bl sub_0801A40C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x40
	beq _08158D48
	cmp r7, #0x40
	bgt _08158CD6
	cmp r7, #1
	beq _08158D46
	cmp r7, #2
	beq _08158CF2
	b _08158E28
_08158CD6:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r7, r0
	beq _08158CFC
	cmp r7, r0
	bgt _08158CE8
	cmp r7, #0x80
	beq _08158D48
	b _08158E28
_08158CE8:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r7, r0
	beq _08158CFC
	b _08158E28
_08158CF2:
	movs r0, #0xb0
	bl PlaySE
	movs r0, #1
	b _08158DA6
_08158CFC:
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0
	cmp r7, r0
	bne _08158D08
	movs r1, #3
_08158D08:
	mov r0, sl
	bl sub_0801A3E8
	mov r0, sl
	adds r1, r7, #0
	bl sub_0801A158
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08158D1E
	b _08158E28
_08158D1E:
	movs r4, #0
_08158D20:
	mov r0, sl
	bl sub_0801A3DC
	adds r1, r0, #0
	adds r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sl
	bl sub_0815828C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08158D20
_08158D3E:
	mov r0, sl
	bl sub_08019F38
	b _08158E28
_08158D46:
	movs r7, #0x80
_08158D48:
	movs r1, #0
	cmp r7, #0x80
	bne _08158D50
	movs r1, #3
_08158D50:
	mov r0, sl
	bl sub_0801A3E8
	mov r0, sl
	adds r1, r7, #0
	bl sub_081584A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08158E28
	movs r0, #5
	ldr r5, [sp, #0x24]
	strb r0, [r5]
	ldr r0, _08158D74 @ =gUnk_02029AF0
	ldr r1, [r0]
	movs r0, #6
	strh r0, [r1, #0x14]
	b _08158E28
	.align 2, 0
_08158D74: .4byte gUnk_02029AF0
_08158D78:
	movs r0, #0
	strh r0, [r1, #0x16]
	bl sub_0801670C
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_08138DAC
	mov r2, r8
	ldr r1, [r2]
	str r0, [r1, #0x68]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_08138DAC
	mov r3, r8
	ldr r1, [r3]
	str r0, [r1, #0x6c]
	movs r0, #8
_08158DA6:
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	b _08158E28
_08158DAC:
	bl sub_0801670C
	mov r5, r8
	ldr r0, [r5]
	ldr r0, [r0, #0x68]
	bl sub_08139548
	cmp r0, #0
	beq _08158E28
	movs r4, #0
_08158DC0:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x68
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08139468
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #1
	bls _08158DC0
	ldr r2, _08158E1C @ =gUnk_03000820
	ldr r0, _08158E20 @ =gUnk_02029AF0
	ldr r1, [r0]
	ldrh r0, [r1, #0x18]
	strh r0, [r2, #8]
	ldr r4, _08158E24 @ =gUnk_02029AF4
	ldr r0, [r4]
	ldr r1, [r1, #0x10]
	bl sub_0800490C
	ldr r0, [r4]
	ldr r2, _08158E20 @ =gUnk_02029AF0
	ldr r1, [r2]
	ldr r1, [r1, #8]
	bl sub_0800490C
	ldr r0, [r4]
	ldr r3, _08158E20 @ =gUnk_02029AF0
	ldr r1, [r3]
	ldr r1, [r1, #0xc]
	bl sub_0800490C
	ldr r0, [r4]
	ldr r5, _08158E20 @ =gUnk_02029AF0
	ldr r1, [r5]
	bl sub_0800490C
	ldr r0, [r4]
	bl sub_08004928
	movs r0, #0xff
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	b _08158E38
	.align 2, 0
_08158E1C: .4byte gUnk_03000820
_08158E20: .4byte gUnk_02029AF0
_08158E24: .4byte gUnk_02029AF4
_08158E28:
	ldr r0, _08158E48 @ =gUnk_02029AF0
	ldr r0, [r0]
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _08158E38
	mov r0, sl
	bl sub_0815839C
_08158E38:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08158E48: .4byte gUnk_02029AF0

	thumb_func_start sub_08158E4C
sub_08158E4C: @ 0x08158E4C
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, _08158EC8 @ =gUnk_086B75B4
	ldr r1, _08158ECC @ =0x06008000
	movs r6, #0
	str r6, [sp]
	movs r5, #1
	str r5, [sp, #4]
	adds r2, r4, #0
	movs r3, #0
	bl sub_0801A59C
	ldr r0, _08158ED0 @ =gUnk_086D7C08
	ldr r1, _08158ED4 @ =0x06012000
	str r6, [sp]
	str r5, [sp, #4]
	adds r2, r4, #0
	movs r3, #0
	bl sub_0801A59C
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_0800486C
	ldr r1, _08158ED8 @ =gUnk_02029AF4
	str r0, [r1]
	ldr r4, _08158EDC @ =gUnk_02029AF0
	movs r1, #0xe9
	lsls r1, r1, #2
	bl sub_080048D4
	str r0, [r4]
	movs r1, #0xe1
	lsls r1, r1, #2
	bl memzero
	add r0, sp, #8
	strh r6, [r0]
	ldr r0, _08158EE0 @ =0x040000D4
	add r1, sp, #8
	str r1, [r0]
	ldr r2, _08158EE4 @ =gUnk_02002400
	str r2, [r0, #4]
	ldr r3, _08158EE8 @ =0x81000100
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	add r1, sp, #8
	strh r6, [r1]
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r2, r1
	str r2, [r0, #4]
	str r3, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08158EC8: .4byte gUnk_086B75B4
_08158ECC: .4byte 0x06008000
_08158ED0: .4byte gUnk_086D7C08
_08158ED4: .4byte 0x06012000
_08158ED8: .4byte gUnk_02029AF4
_08158EDC: .4byte gUnk_02029AF0
_08158EE0: .4byte 0x040000D4
_08158EE4: .4byte gUnk_02002400
_08158EE8: .4byte 0x81000100
