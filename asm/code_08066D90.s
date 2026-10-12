	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08066D90
sub_08066D90: @ 0x08066D90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4]
	mov r8, r0
	adds r4, #2
	ldrb r1, [r4]
	mov sl, r1
	ldrb r2, [r4, #1]
	str r2, [sp]
	mov r6, sl
	adds r5, r2, #0
	adds r4, #2
	movs r7, #0
	cmp r7, r8
	bge _08066DE8
	ldr r0, _08066DD4 @ =gUnk_03000FA0
	mov sb, r0
_08066DBC:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806D814
	cmp r0, #0
	bne _08066DDC
	mov r1, sb
	strh r6, [r1, #0x3c]
	ldr r2, _08066DD8 @ =gUnk_03000FE0
	strh r5, [r2]
	b _08066DF6
	.align 2, 0
_08066DD4: .4byte gUnk_03000FA0
_08066DD8: .4byte gUnk_03000FE0
_08066DDC:
	adds r7, #1
	ldrb r6, [r4]
	ldrb r5, [r4, #1]
	adds r4, #2
	cmp r7, r8
	blt _08066DBC
_08066DE8:
	ldr r0, _08066E08 @ =gUnk_03000FA0
	mov r1, sl
	strh r1, [r0, #0x3c]
	adds r0, #0x40
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r0]
_08066DF6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066E08: .4byte gUnk_03000FA0

	thumb_func_start sub_08066E0C
sub_08066E0C: @ 0x08066E0C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	mov r8, r0
	adds r5, r1, #0
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	cmp r6, sb
	beq _08066E64
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r4, sp
	adds r4, #0xe
	str r4, [sp]
	add r1, sp, #0x10
	str r1, [sp, #4]
	adds r1, r6, #0
	add r3, sp, #0xc
	bl sub_080769D0
	add r0, sp, #0xc
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	add r2, sp, #0xc
	adds r3, r4, #0
	bl sub_08076A28
_08066E64:
	movs r0, #0x68
	muls r0, r5, r0
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, #0
	adds r0, #0x5d
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08066E7C
	lsrs r7, r1, #7
_08066E7C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	bl sub_08143B70
	adds r1, r0, #0
	ldr r0, _08066EA4 @ =0x0600C3E0
	movs r5, #0
	str r5, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_0803A9A8
	cmp r6, sb
	bne _08066EAC
	ldr r2, _08066EA8 @ =0x0000021F
	movs r0, #2
	str r0, [sp]
	b _08066EC6
	.align 2, 0
_08066EA4: .4byte 0x0600C3E0
_08066EA8: .4byte 0x0000021F
_08066EAC:
	add r0, sp, #0xc
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x98
	ble _08066EDC
	mov r0, sp
	adds r0, #0xe
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x50
	ble _08066EDC
	ldr r2, _08066ED8 @ =0x0000021F
	str r5, [sp]
_08066EC6:
	str r5, [sp, #4]
	str r7, [sp, #8]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0801F454
	b _08066EF2
	.align 2, 0
_08066ED8: .4byte 0x0000021F
_08066EDC:
	ldr r2, _08066F00 @ =0x0000021F
	movs r0, #2
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r7, [sp, #8]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0801F454
_08066EF2:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066F00: .4byte 0x0000021F

	thumb_func_start sub_08066F04
sub_08066F04: @ 0x08066F04
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x24
	mov r8, r0
	movs r4, #0xae
	lsls r4, r4, #2
	add r4, r8
	ldrh r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08066F24
	bl sub_0801E654
_08066F24:
	ldrh r0, [r4]
	ldr r1, _08066F44 @ =0x0000FFFB
	ands r1, r0
	strh r1, [r4]
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08066F40
	bl sub_08143054
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08066F48
_08066F40:
	movs r0, #5
	b _08066F4A
	.align 2, 0
_08066F44: .4byte 0x0000FFFB
_08066F48:
	movs r0, #8
_08066F4A:
	mov sb, r0
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r7, #0
	movs r6, #0x19
_08066F68:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _08066FAC
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x10
	bl sub_08143B70
	cmp r0, #0
	beq _08066FAC
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x1e
	bl sub_08143B70
	adds r2, r0, #0
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x17]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08066FAC
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08066FA6
	cmp r5, #0
	beq _08066FAC
	b _08066FAA
_08066FA6:
	cmp r5, #1
	beq _08066FAC
_08066FAA:
	adds r7, #1
_08066FAC:
	subs r6, #1
	adds r4, #0xd0
	cmp r6, #0
	bge _08066F68
	cmp r7, sb
	bge _08066FBA
	b _08067118
_08066FBA:
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	ldr r4, _08067020 @ =gBattleEnemyAndGuestUnits
	cmp r0, #0
	bne _08066FCC
	ldr r0, _08067024 @ =0xFFFFFCC0
	adds r4, r4, r0
_08066FCC:
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	ldr r1, _08067028 @ =gUnk_02001B80
	cmp r0, #0
	bne _08066FDC
	subs r1, #0xe0
_08066FDC:
	ldr r0, _0806702C @ =0x00000266
	add r0, r8
	adds r6, r4, #0
	adds r4, r1, #0
	ldrb r5, [r0]
	bl sub_08143070
	lsls r0, r0, #0x18
	movs r3, #8
	cmp r0, #0
	beq _08066FF4
	movs r3, #5
_08066FF4:
	movs r2, #0
	cmp r2, r3
	bge _08067048
_08066FFA:
	adds r0, r6, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806703E
	ldrb r0, [r4]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0xff
	beq _08067036
	cmp r1, #0
	bge _08067030
	ldrb r0, [r4]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	cmp r0, r5
	beq _0806703A
	b _0806703E
	.align 2, 0
_08067020: .4byte gBattleEnemyAndGuestUnits
_08067024: .4byte 0xFFFFFCC0
_08067028: .4byte gUnk_02001B80
_0806702C: .4byte 0x00000266
_08067030:
	cmp r5, #0xfe
	beq _0806703A
	b _0806703E
_08067036:
	cmp r5, #0xff
	bne _0806703E
_0806703A:
	adds r7, r2, #0
	b _0806704C
_0806703E:
	adds r2, #1
	adds r6, #0x68
	adds r4, #0x1c
	cmp r2, r3
	blt _08066FFA
_08067048:
	movs r7, #1
	rsbs r7, r7, #0
_0806704C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	bne _08067118
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _080670F0 @ =gUnk_0202A5AC
	ldr r0, _080670F4 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	movs r5, #0
	strb r5, [r0]
	ldr r4, _080670F8 @ =gUnk_0202A5A8
	ldr r0, _080670FC @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08067100 @ =gUnk_0875C8DE
	movs r1, #4
	str r1, [sp]
	str r7, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _08067104 @ =0x0000022F
	movs r3, #0x2d
	bl sub_08015D50
	ldr r3, _08067108 @ =0x0000027F
	add r3, r8
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	add r2, r8
	adds r0, r2, r0
	movs r1, #3
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #6
	strb r0, [r2]
	ldr r2, _0806710C @ =0x0000026D
	add r2, r8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08067110 @ =0x0000026E
	add r1, r8
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08067114 @ =0x0000027E
	add r1, r8
	movs r0, #8
	b _080676C2
	.align 2, 0
_080670F0: .4byte gUnk_0202A5AC
_080670F4: .4byte gUnk_03000FA0
_080670F8: .4byte gUnk_0202A5A8
_080670FC: .4byte 0x00001C44
_08067100: .4byte gUnk_0875C8DE
_08067104: .4byte 0x0000022F
_08067108: .4byte 0x0000027F
_0806710C: .4byte 0x0000026D
_08067110: .4byte 0x0000026E
_08067114: .4byte 0x0000027E
_08067118:
	movs r0, #0xb
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bne _0806720C
	ldr r2, _080671DC @ =gUnk_02000000
	ldr r0, _080671E0 @ =0x00000266
	add r0, r8
	ldrb r1, [r0]
	movs r0, #0x68
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x8d
	ldrb r1, [r0]
	movs r7, #2
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0806720C
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _080671E4 @ =gUnk_0202A5AC
	ldr r0, _080671E8 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	movs r5, #0
	strb r5, [r0]
	ldr r4, _080671EC @ =gUnk_0202A5A8
	ldr r0, _080671F0 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _080671F4 @ =gUnk_0875C8DE
	movs r1, #4
	str r1, [sp]
	subs r1, #5
	str r1, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _080671F8 @ =0x0000022F
	movs r3, #0x3c
	bl sub_08015D50
	ldr r3, _080671FC @ =0x0000027F
	add r3, r8
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	add r2, r8
	adds r0, r2, r0
	movs r1, #3
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #6
	strb r0, [r2]
	ldr r2, _08067200 @ =0x0000026D
	add r2, r8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08067204 @ =0x0000026E
	add r1, r8
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08067208 @ =0x0000027E
	add r1, r8
	movs r0, #8
	b _080676C2
	.align 2, 0
_080671DC: .4byte gUnk_02000000
_080671E0: .4byte 0x00000266
_080671E4: .4byte gUnk_0202A5AC
_080671E8: .4byte gUnk_03000FA0
_080671EC: .4byte gUnk_0202A5A8
_080671F0: .4byte 0x00001C44
_080671F4: .4byte gUnk_0875C8DE
_080671F8: .4byte 0x0000022F
_080671FC: .4byte 0x0000027F
_08067200: .4byte 0x0000026D
_08067204: .4byte 0x0000026E
_08067208: .4byte 0x0000027E
_0806720C:
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801F9F0
	bl sub_08066D90
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	ldr r4, _08067284 @ =gBattleEnemyAndGuestUnits
	cmp r0, #0
	bne _08067230
	ldr r0, _08067288 @ =0xFFFFFCC0
	adds r4, r4, r0
_08067230:
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	ldr r1, _0806728C @ =gUnk_02001B80
	cmp r0, #0
	bne _08067240
	subs r1, #0xe0
_08067240:
	ldr r0, _08067290 @ =0x00000266
	add r0, r8
	adds r6, r4, #0
	adds r4, r1, #0
	ldrb r5, [r0]
	bl sub_08143070
	lsls r0, r0, #0x18
	movs r3, #8
	cmp r0, #0
	beq _08067258
	movs r3, #5
_08067258:
	movs r2, #0
	cmp r2, r3
	bge _080672AC
_0806725E:
	adds r0, r6, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080672A2
	ldrb r0, [r4]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0xff
	beq _0806729A
	cmp r1, #0
	bge _08067294
	ldrb r0, [r4]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	cmp r0, r5
	beq _0806729E
	b _080672A2
	.align 2, 0
_08067284: .4byte gBattleEnemyAndGuestUnits
_08067288: .4byte 0xFFFFFCC0
_0806728C: .4byte gUnk_02001B80
_08067290: .4byte 0x00000266
_08067294:
	cmp r5, #0xfe
	beq _0806729E
	b _080672A2
_0806729A:
	cmp r5, #0xff
	bne _080672A2
_0806729E:
	adds r7, r2, #0
	b _080672B0
_080672A2:
	adds r2, #1
	adds r6, #0x68
	adds r4, #0x1c
	cmp r2, r3
	blt _0806725E
_080672AC:
	movs r7, #1
	rsbs r7, r7, #0
_080672B0:
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _0806731C @ =gBattleEnemyAndGuestUnits
	cmp r0, #1
	bne _080672C4
	ldr r0, _08067320 @ =0xFFFFFCC0
	adds r4, r4, r0
_080672C4:
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08067324 @ =gUnk_02001B80
	cmp r0, #1
	bne _080672D6
	subs r1, #0xe0
_080672D6:
	ldr r0, _08067328 @ =0x00000266
	add r0, r8
	adds r6, r4, #0
	adds r4, r1, #0
	ldrb r5, [r0]
	bl sub_08143070
	lsls r0, r0, #0x18
	movs r3, #8
	cmp r0, #0
	beq _080672EE
	movs r3, #5
_080672EE:
	movs r2, #0
	cmp r2, r3
	bge _08067344
_080672F4:
	adds r0, r6, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806733A
	ldrb r0, [r4]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0xff
	beq _08067332
	cmp r1, #0
	bge _0806732C
	ldrb r0, [r4]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	cmp r0, r5
	beq _08067336
	b _0806733A
	.align 2, 0
_0806731C: .4byte gBattleEnemyAndGuestUnits
_08067320: .4byte 0xFFFFFCC0
_08067324: .4byte gUnk_02001B80
_08067328: .4byte 0x00000266
_0806732C:
	cmp r5, #0xfe
	beq _08067336
	b _0806733A
_08067332:
	cmp r5, #0xff
	bne _0806733A
_08067336:
	adds r4, r2, #0
	b _08067348
_0806733A:
	adds r2, #1
	adds r6, #0x68
	adds r4, #0x1c
	cmp r2, r3
	blt _080672F4
_08067344:
	movs r4, #1
	rsbs r4, r4, #0
_08067348:
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801F9F0
	ldrb r0, [r0, #1]
	ldr r6, _080673B4 @ =0x00000267
	add r6, r8
	movs r5, #0
	strb r0, [r6]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _080673C4
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	ldr r1, _080673B8 @ =gBattleEnemyAndGuestUnits
	cmp r0, #0
	bne _0806737A
	ldr r0, _080673BC @ =0xFFFFFCC0
	adds r1, r1, r0
_0806737A:
	movs r0, #0x68
	muls r0, r7, r0
	adds r0, r1, r0
	bl sub_0805B308
	adds r5, r0, #0
	ldrh r0, [r5, #0x10]
	bl sub_08058D5C
	ldr r4, _080673C0 @ =gUnk_03000FA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r4, #0x3c]
	ldrh r0, [r5, #0x14]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, #0x40
	strh r0, [r4]
	adds r0, r5, #0
	adds r0, #0x48
	ldrb r0, [r0]
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0805FE54
	b _08067488
	.align 2, 0
_080673B4: .4byte 0x00000267
_080673B8: .4byte gBattleEnemyAndGuestUnits
_080673BC: .4byte 0xFFFFFCC0
_080673C0: .4byte gUnk_03000FA0
_080673C4:
	cmp r4, r7
	beq _08067488
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _08067460 @ =gUnk_0202A5AC
	ldr r0, _08067464 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldr r4, _08067468 @ =gUnk_0202A5A8
	ldr r0, _0806746C @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08067470 @ =gUnk_0875C8DE
	movs r1, #4
	str r1, [sp]
	str r7, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r4, #1
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xfe
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _08067474 @ =0x0000022F
	movs r3, #0x2f
	bl sub_08015D50
	ldr r3, _08067478 @ =0x0000027F
	add r3, r8
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	add r2, r8
	adds r0, r2, r0
	strb r4, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #6
	strb r0, [r2]
	ldr r2, _0806747C @ =0x0000026D
	add r2, r8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08067480 @ =0x0000026E
	add r1, r8
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08067484 @ =0x0000027E
	add r1, r8
	movs r0, #8
	b _080676C2
	.align 2, 0
_08067460: .4byte gUnk_0202A5AC
_08067464: .4byte gUnk_03000FA0
_08067468: .4byte gUnk_0202A5A8
_0806746C: .4byte 0x00001C44
_08067470: .4byte gUnk_0875C8DE
_08067474: .4byte 0x0000022F
_08067478: .4byte 0x0000027F
_0806747C: .4byte 0x0000026D
_08067480: .4byte 0x0000026E
_08067484: .4byte 0x0000027E
_08067488:
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r7, #0
	movs r6, #0x19
_080674A4:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _080674E8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x10
	bl sub_08143B70
	cmp r0, #0
	beq _080674E8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x1e
	bl sub_08143B70
	adds r2, r0, #0
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x17]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080674E8
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080674E2
	cmp r5, #0
	beq _080674E8
	b _080674E6
_080674E2:
	cmp r5, #1
	beq _080674E8
_080674E6:
	adds r7, #1
_080674E8:
	subs r6, #1
	adds r4, #0xd0
	cmp r6, #0
	bge _080674A4
	mov sb, r7
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r7, #0
	movs r6, #0x19
_08067512:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _08067556
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x10
	bl sub_08143B70
	cmp r0, #0
	beq _08067556
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x1e
	bl sub_08143B70
	adds r2, r0, #0
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x17]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08067556
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08067550
	cmp r5, #0
	beq _08067556
	b _08067554
_08067550:
	cmp r5, #1
	beq _08067556
_08067554:
	adds r7, #1
_08067556:
	subs r6, #1
	adds r4, #0xd0
	cmp r6, #0
	bge _08067512
	adds r4, r7, #0
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806756E
	b _0806766C
_0806756E:
	bl sub_0814301C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806766C
	cmp r4, #0
	bne _0806766C
	movs r2, #0
	movs r3, #0
	ldr r0, _0806758C @ =gUnk_02000000
	adds r1, r0, #0
	adds r1, #0x7e
	b _0806759A
	.align 2, 0
_0806758C: .4byte gUnk_02000000
_08067590:
	adds r2, #1
	adds r1, #0x68
	adds r3, #1
	cmp r3, #0x1f
	bgt _080675A0
_0806759A:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08067590
_080675A0:
	mov r0, sb
	subs r2, r2, r0
	cmp r2, #1
	bgt _0806766C
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _08067644 @ =gUnk_0202A5AC
	ldr r0, _08067648 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	movs r5, #0
	strb r5, [r0]
	ldr r4, _0806764C @ =gUnk_0202A5A8
	ldr r0, _08067650 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08067654 @ =gUnk_0875C8DE
	movs r1, #4
	str r1, [sp]
	subs r1, #5
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _08067658 @ =0x0000022F
	movs r3, #0x2c
	bl sub_08015D50
	ldr r3, _0806765C @ =0x0000027F
	add r3, r8
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	add r2, r8
	adds r0, r2, r0
	movs r1, #3
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #6
	strb r0, [r2]
	ldr r2, _08067660 @ =0x0000026D
	add r2, r8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08067664 @ =0x0000026E
	add r1, r8
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08067668 @ =0x0000027E
	add r1, r8
	movs r0, #8
	b _080676C2
	.align 2, 0
_08067644: .4byte gUnk_0202A5AC
_08067648: .4byte gUnk_03000FA0
_0806764C: .4byte gUnk_0202A5A8
_08067650: .4byte 0x00001C44
_08067654: .4byte gUnk_0875C8DE
_08067658: .4byte 0x0000022F
_0806765C: .4byte 0x0000027F
_08067660: .4byte 0x0000026D
_08067664: .4byte 0x0000026E
_08067668: .4byte 0x0000027E
_0806766C:
	mov r0, r8
	adds r0, #0x5c
	ldr r1, _080676D4 @ =0x00000266
	add r1, r8
	ldrb r2, [r1]
	movs r1, #0x68
	muls r1, r2, r1
	ldr r2, _080676D8 @ =gPlayerUnits
	adds r1, r1, r2
	movs r2, #0x68
	bl memcpy2
	ldr r2, _080676DC @ =0x0000027F
	add r2, r8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0xa0
	lsls r0, r0, #2
	add r0, r8
	adds r0, r0, r1
	movs r1, #0xa
	strb r1, [r0]
	ldr r2, _080676E0 @ =0x0000026D
	add r2, r8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080676E4 @ =0x0000026E
	add r1, r8
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080676E8 @ =0x0000027E
	add r1, r8
	movs r0, #6
_080676C2:
	strb r0, [r1]
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080676D4: .4byte 0x00000266
_080676D8: .4byte gPlayerUnits
_080676DC: .4byte 0x0000027F
_080676E0: .4byte 0x0000026D
_080676E4: .4byte 0x0000026E
_080676E8: .4byte 0x0000027E

	thumb_func_start sub_080676EC
sub_080676EC: @ 0x080676EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r6, r0, #0
	ldr r0, [r6, #0x40]
	ldr r2, [r0, #4]
	ldrb r0, [r2, #0x17]
	movs r1, #0x40
	eors r0, r1
	strb r0, [r2, #0x17]
	ldr r5, _080677C4 @ =gUnk_03000FA0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r3, r6, r0
	ldrh r2, [r5, #0x3c]
	ldrh r1, [r3]
	cmp r2, r1
	bne _08067728
	adds r0, r5, #0
	adds r0, #0x40
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r1, r6, r4
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08067818
_08067728:
	strh r2, [r3]
	adds r4, r5, #0
	adds r4, #0x40
	ldrh r1, [r4]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r6, r2
	strh r1, [r0]
	ldrh r0, [r5, #0x3c]
	bl sub_08058D6C
	ldr r1, [r6, #0x40]
	strh r0, [r1, #0x10]
	ldrh r0, [r4]
	bl sub_08058D6C
	ldr r1, [r6, #0x40]
	strh r0, [r1, #0x14]
	ldr r0, [r6, #0x40]
	bl sub_0805AA7C
	ldrh r0, [r5, #0x3c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldrb r7, [r4]
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r5, #0
_08067766:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _08067798
	ldr r0, _080677C8 @ =gUnk_0202A88C
	ldr r0, [r0]
	adds r0, #0xc4
	ldr r1, [r4]
	cmp r1, r0
	beq _08067798
	ldrh r0, [r4, #0x10]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r8
	bne _08067798
	ldrh r0, [r4, #0x14]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r7
	beq _080677D0
_08067798:
	adds r5, #1
	adds r4, #0xd0
	cmp r5, #0x19
	ble _08067766
	movs r5, #0
_080677A2:
	cmp r5, #0
	bne _080677D4
	movs r3, #0xae
	lsls r3, r3, #2
	adds r4, r6, r3
	ldrh r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080677BA
	bl sub_0801E654
_080677BA:
	ldrh r1, [r4]
	ldr r0, _080677CC @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4]
	b _08067818
	.align 2, 0
_080677C4: .4byte gUnk_03000FA0
_080677C8: .4byte gUnk_0202A88C
_080677CC: .4byte 0x0000FFFB
_080677D0:
	adds r5, r4, #0
	b _080677A2
_080677D4:
	movs r0, #0xae
	lsls r0, r0, #2
	adds r4, r6, r0
	ldrh r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080677E8
	bl sub_0801E654
_080677E8:
	ldrh r0, [r4]
	movs r1, #4
	orrs r0, r1
	strh r0, [r4]
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r2, r0, #0
	orrs r2, r0
	lsrs r2, r2, #0x1f
	ldr r0, [r5]
	movs r1, #0x10
	ldrsh r3, [r5, r1]
	movs r4, #0x12
	ldrsh r1, [r5, r4]
	str r1, [sp]
	movs r4, #0x14
	ldrsh r1, [r5, r4]
	str r1, [sp, #4]
	movs r1, #0
	bl sub_08066E0C
_08067818:
	ldr r5, _08067920 @ =gUnk_03000FA0
	ldrh r1, [r5, #0x2e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08067826
	b _08067964
_08067826:
	movs r0, #0xb0
	bl PlaySE
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r2, #0
	mov sb, r2
	movs r1, #0xff
	strh r1, [r0]
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r0, r6, r3
	strh r1, [r0]
	movs r0, #0x10
	bl sub_08075E08
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_0806FDE4
	movs r0, #0xae
	lsls r0, r0, #2
	adds r4, r6, r0
	ldrh r1, [r4]
	movs r2, #4
	mov r8, r2
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0806786C
	bl sub_0801E654
_0806786C:
	ldrh r1, [r4]
	ldr r0, _08067924 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4]
	adds r4, r5, #0
	adds r4, #0x35
	mov r3, sb
	strb r3, [r4]
	ldr r1, [r6, #0x40]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	movs r2, #0x10
	bl sub_08143B70
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #2
	bne _08067944
	bl sub_0814301C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08067944
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08067944
	bl sub_08143054
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08067944
	ldr r0, [r6, #0x40]
	movs r1, #0
	bl sub_0805FE54
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r1, _08067928 @ =gUnk_0202A5AC
	ldrb r0, [r4]
	strb r0, [r1]
	mov r0, sb
	strb r0, [r4]
	ldr r4, _0806792C @ =gUnk_0202A5A8
	ldr r0, _08067930 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08067934 @ =gUnk_0875C8DE
	mov r1, r8
	str r1, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _08067938 @ =0x0000022F
	movs r3, #0x2e
	bl sub_08015D50
	ldr r3, _0806793C @ =0x0000027F
	adds r2, r6, r3
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r6, r4
	adds r0, r0, r1
	movs r1, #0xa
	strb r1, [r0]
	ldr r5, _08067940 @ =0x0000027E
	adds r1, r6, r5
	b _08067B2C
	.align 2, 0
_08067920: .4byte gUnk_03000FA0
_08067924: .4byte 0x0000FFFB
_08067928: .4byte gUnk_0202A5AC
_0806792C: .4byte gUnk_0202A5A8
_08067930: .4byte 0x00001C44
_08067934: .4byte gUnk_0875C8DE
_08067938: .4byte 0x0000022F
_0806793C: .4byte 0x0000027F
_08067940: .4byte 0x0000027E
_08067944:
	ldr r0, [r6, #0x40]
	movs r1, #0
	bl sub_0805FE54
	ldr r0, _08067960 @ =0x0000027E
	adds r1, r6, r0
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_08075DEC
	b _08067BDE
	.align 2, 0
_08067960: .4byte 0x0000027E
_08067964:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806796E
	b _08067BDE
_0806796E:
	ldrh r1, [r5, #0x2c]
	ldr r0, _08067A18 @ =0x00000302
	ands r0, r1
	cmp r0, #0
	beq _0806797A
	b _08067BDE
_0806797A:
	ldrh r1, [r5, #0x3c]
	str r1, [sp, #0x24]
	adds r0, r5, #0
	adds r0, #0x40
	ldrh r0, [r0]
	str r0, [sp, #0x28]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r6, r2
	movs r1, #0xff
	strh r1, [r0]
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r0, r6, r3
	strh r1, [r0]
	movs r0, #0x10
	bl sub_08075E08
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_0806FDE4
	movs r5, #0xae
	lsls r5, r5, #2
	adds r4, r6, r5
	ldrh r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080679BE
	bl sub_0801E654
_080679BE:
	ldrh r0, [r4]
	ldr r1, _08067A1C @ =0x0000FFFB
	ands r1, r0
	strh r1, [r4]
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08067A20 @ =gBattlePlayerUnits
	mov r8, r1
	cmp r0, #1
	bne _080679DE
	movs r2, #0xd0
	lsls r2, r2, #2
	add r8, r2
_080679DE:
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _08067A24 @ =gUnk_02001AA0
	cmp r0, #1
	bne _080679F0
	adds r4, #0xe0
_080679F0:
	ldr r0, [r6, #0x40]
	adds r1, r0, #0
	adds r1, #0x48
	ldrb r1, [r1]
	mov sl, r1
	movs r1, #0
	bl sub_0805FE54
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08067A28
	movs r0, #7
	bl sub_08142F50
	movs r3, #8
	mov sb, r3
	b _08067A2C
	.align 2, 0
_08067A18: .4byte 0x00000302
_08067A1C: .4byte 0x0000FFFB
_08067A20: .4byte gBattlePlayerUnits
_08067A24: .4byte gUnk_02001AA0
_08067A28:
	movs r5, #5
	mov sb, r5
_08067A2C:
	movs r0, #7
	bl sub_08142F50
	movs r3, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08067A3E
	movs r3, #1
_08067A3E:
	ldr r0, _08067A88 @ =0x00000266
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #0x68
	muls r0, r1, r0
	ldr r1, _08067A8C @ =gPlayerUnits
	adds r0, r0, r1
	ldr r5, [sp, #0x24]
	lsls r1, r5, #0x18
	lsrs r7, r1, #0x18
	str r7, [sp]
	ldr r5, [sp, #0x28]
	lsls r1, r5, #0x18
	lsrs r5, r1, #0x18
	str r5, [sp, #4]
	str r3, [sp, #8]
	ldrb r1, [r2]
	str r1, [sp, #0xc]
	mov r1, r8
	adds r2, r4, #0
	mov r3, sb
	bl sub_0805FED4
	cmp r0, #0
	blt _08067A74
	cmp r0, #3
	bne _08067B54
_08067A74:
	movs r7, #0
	adds r0, #5
	cmp r0, #8
	bhi _08067AC2
	lsls r0, r0, #2
	ldr r1, _08067A90 @ =_08067A94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08067A88: .4byte 0x00000266
_08067A8C: .4byte gPlayerUnits
_08067A90: .4byte _08067A94
_08067A94: @ jump table
	.4byte _08067ABC @ case 0
	.4byte _08067ABC @ case 1
	.4byte _08067ABC @ case 2
	.4byte _08067AB8 @ case 3
	.4byte _08067AC2 @ case 4
	.4byte _08067AC2 @ case 5
	.4byte _08067AC2 @ case 6
	.4byte _08067AC2 @ case 7
	.4byte _08067AC0 @ case 8
_08067AB8:
	movs r7, #0x2a
	b _08067AC2
_08067ABC:
	movs r7, #0x29
	b _08067AC2
_08067AC0:
	b _08067AC0
_08067AC2:
	ldr r0, _08067B34 @ =0x0000027F
	adds r2, r6, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r6, r2
	adds r1, r1, r0
	movs r5, #0
	movs r0, #0xa
	strb r0, [r1]
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _08067B38 @ =gUnk_0202A5AC
	ldr r0, _08067B3C @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldr r4, _08067B40 @ =gUnk_0202A5A8
	ldr r0, _08067B44 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08067B48 @ =gUnk_0875C8DE
	adds r3, r7, #0
	movs r1, #4
	str r1, [sp]
	subs r1, #5
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _08067B4C @ =0x0000022F
	bl sub_08015D50
	ldr r3, _08067B50 @ =0x0000027E
	adds r1, r6, r3
_08067B2C:
	movs r0, #8
	strb r0, [r1]
	b _08067BDE
	.align 2, 0
_08067B34: .4byte 0x0000027F
_08067B38: .4byte gUnk_0202A5AC
_08067B3C: .4byte gUnk_03000FA0
_08067B40: .4byte gUnk_0202A5A8
_08067B44: .4byte 0x00001C44
_08067B48: .4byte gUnk_0875C8DE
_08067B4C: .4byte 0x0000022F
_08067B50: .4byte 0x0000027E
_08067B54:
	ldr r4, _08067BF0 @ =gUnk_03000FA0
	adds r4, #0x35
	movs r0, #0
	strb r0, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0806D828
	adds r1, r0, #0
	adds r1, #0x48
	mov r5, sl
	strb r5, [r1]
	adds r2, r0, #0
	adds r2, #0x49
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, [r0, #4]
	strb r5, [r1, #0x16]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r6, r2
	mov r3, sp
	ldrh r3, [r3, #0x24]
	strh r3, [r1]
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r1, r6, r5
	mov r2, sp
	ldrh r2, [r2, #0x28]
	strh r2, [r1]
	str r0, [r6, #0x40]
	movs r0, #0xad
	bl PlaySE
	ldr r3, _08067BF4 @ =0x0000027F
	adds r2, r6, r3
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r3, r6, r5
	adds r0, r3, r0
	movs r1, #0xb
	strb r1, [r0]
	movs r0, #4
	strb r0, [r4]
	ldr r0, _08067BF8 @ =0x0000027E
	adds r1, r6, r0
	movs r0, #0xe
	strb r0, [r1]
	ldr r1, _08067BFC @ =gPlayerUnits
	ldr r4, _08067C00 @ =0x000012FF
	adds r0, r1, r4
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08067BDE
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r3, r0
	movs r1, #0xd
	strb r1, [r0]
_08067BDE:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067BF0: .4byte gUnk_03000FA0
_08067BF4: .4byte 0x0000027F
_08067BF8: .4byte 0x0000027E
_08067BFC: .4byte gPlayerUnits
_08067C00: .4byte 0x000012FF

	thumb_func_start sub_08067C04
sub_08067C04: @ 0x08067C04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x24
	adds r7, r0, #0
	ldr r1, _08067C28 @ =0x0000027E
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _08067C1C
	bl _08068402
_08067C1C:
	lsls r0, r0, #2
	ldr r1, _08067C2C @ =_08067C30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08067C28: .4byte 0x0000027E
_08067C2C: .4byte _08067C30
_08067C30: @ jump table
	.4byte _08067C6C @ case 0
	.4byte _08067CD0 @ case 1
	.4byte _08067D20 @ case 2
	.4byte _08067D50 @ case 3
	.4byte _08067D6C @ case 4
	.4byte _08067E98 @ case 5
	.4byte _080680F8 @ case 6
	.4byte _08068184 @ case 7
	.4byte _08068250 @ case 8
	.4byte _0806837C @ case 9
	.4byte _08068298 @ case 10
	.4byte _08068384 @ case 11
	.4byte _080683B0 @ case 12
	.4byte _080681DC @ case 13
	.4byte _08068348 @ case 14
_08067C6C:
	ldr r0, _08067CC8 @ =gUnk_03000FA0
	adds r0, #0xa0
	ldrh r0, [r0]
	cmp r0, #0
	beq _08067C78
	b _08068402
_08067C78:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08067C8C
	bl sub_080A1614
	cmp r0, #0
	bne _08067C8C
	b _08068402
_08067C8C:
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_08075DEC
	movs r0, #0x20
	bl sub_08075DEC
	movs r0, #0x10
	bl sub_08075DEC
	bl sub_0806FDE4
	movs r0, #3
	movs r1, #1
	bl sub_08142F7C
	bl sub_0806D758
	movs r0, #0xae
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08067CCC @ =0x0000027E
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	b _08068402
	.align 2, 0
_08067CC8: .4byte gUnk_03000FA0
_08067CCC: .4byte 0x0000027E
_08067CD0:
	bl sub_0805B3AC
	bl sub_08024CA0
	ldr r4, _08067D18 @ =gUnk_03000FA0
	adds r1, r4, #0
	adds r1, #0x37
	movs r0, #1
	strb r0, [r1]
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801F9F0
	bl sub_0808913C
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801F9F0
	bl sub_08066D90
	adds r4, #0x35
	movs r0, #4
	strb r0, [r4]
	ldr r0, _08067D1C @ =0x0000027E
	adds r1, r7, r0
	movs r0, #2
	strb r0, [r1]
	b _08068402
	.align 2, 0
_08067D18: .4byte gUnk_03000FA0
_08067D1C: .4byte 0x0000027E
_08067D20:
	ldr r1, _08067D30 @ =gUnk_03000FA0
	adds r0, r1, #0
	adds r0, #0x95
	ldrb r0, [r0]
	cmp r0, #1
	bne _08067D34
	movs r0, #1
	b _08067D3A
	.align 2, 0
_08067D30: .4byte gUnk_03000FA0
_08067D34:
	adds r1, #0x35
	movs r0, #0
	strb r0, [r1]
_08067D3A:
	cmp r0, #0
	beq _08067D40
	b _08068402
_08067D40:
	ldr r2, _08067D4C @ =0x0000027E
	adds r1, r7, r2
	movs r0, #3
	strb r0, [r1]
	b _08068402
	.align 2, 0
_08067D4C: .4byte 0x0000027E
_08067D50:
	bl sub_08075A54
	movs r0, #0x80
	lsls r0, r0, #0x13
	bl sub_08075DEC
	ldr r0, _08067D68 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #4
	strb r0, [r1]
	b _08068402
	.align 2, 0
_08067D68: .4byte 0x0000027E
_08067D6C:
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r5, r7, r1
	movs r4, #9
_08067D74:
	movs r0, #1
	movs r1, #1
	movs r2, #0
	bl sub_08011C50
	stm r5!, {r0}
	subs r4, #1
	cmp r4, #0
	bge _08067D74
	ldr r2, _08067E58 @ =0x00000265
	adds r1, r7, r2
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r5, r7, r0
	ldrh r1, [r5]
	ldr r0, _08067E5C @ =0x0000FFFB
	ands r0, r1
	movs r1, #0
	mov r8, r1
	strh r0, [r5]
	ldr r4, _08067E60 @ =0x00002144
	adds r0, r4, #0
	bl BattleAlloc
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r6, r7, r2
	str r0, [r6]
	adds r1, r4, #0
	bl memzero
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r4, r0, #0
	orrs r4, r0
	lsrs r4, r4, #0x1f
	ldr r0, _08067E64 @ =gPlayerUnits
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r3, [r6]
	adds r1, #0xdf
	str r1, [sp]
	subs r1, #0x58
	str r1, [sp, #4]
	str r4, [sp, #8]
	ldrh r4, [r5]
	lsrs r4, r4, #1
	movs r1, #1
	bics r1, r4
	str r1, [sp, #0xc]
	movs r1, #0
	bl sub_0807E51C
	ldrh r1, [r5]
	ldr r0, _08067E68 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r5]
	ldr r0, _08067E6C @ =gUnk_03000FA0
	adds r0, #0x35
	mov r2, r8
	strb r2, [r0]
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	movs r6, #0x19
_08067E18:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _08067E78
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x10
	bl sub_08143B70
	cmp r0, #0
	beq _08067E78
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x1e
	bl sub_08143B70
	adds r2, r0, #0
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x17]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08067E78
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08067E70
	cmp r5, #0
	beq _08067E78
	b _08067E74
	.align 2, 0
_08067E58: .4byte 0x00000265
_08067E5C: .4byte 0x0000FFFB
_08067E60: .4byte 0x00002144
_08067E64: .4byte gPlayerUnits
_08067E68: .4byte 0x0000FFFD
_08067E6C: .4byte gUnk_03000FA0
_08067E70:
	cmp r5, #1
	beq _08067E78
_08067E74:
	movs r1, #1
	add r8, r1
_08067E78:
	subs r6, #1
	adds r4, #0xd0
	cmp r6, #0
	bge _08067E18
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	bl sub_08075C80
	ldr r0, _08067E94 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #5
	strb r0, [r1]
	b _08068402
	.align 2, 0
_08067E94: .4byte 0x0000027E
_08067E98:
	bl sub_0807EC78
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08067EAA
	b _0806808C
_08067EAA:
	cmp r1, r0
	bgt _08067EB8
	subs r0, #1
	cmp r1, r0
	bne _08067EB6
	b _08068402
_08067EB6:
	b _080680DC
_08067EB8:
	cmp r1, #0
	beq _08067EBE
	b _080680DC
_08067EBE:
	ldr r0, _08067F44 @ =gUnk_03000FA0
	ldrh r1, [r0, #0x2c]
	ldr r0, _08067F48 @ =0x00000303
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bne _08067F64
	bl sub_08082478
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _08067F64
	ldr r1, _08067F4C @ =0x00000265
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08067EE8
	bl sub_0801E654
_08067EE8:
	movs r0, #0xae
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrh r1, [r2]
	ldr r0, _08067F50 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08067F54 @ =0x0000027F
	adds r2, r7, r1
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	movs r1, #7
	strb r1, [r0]
	ldr r0, _08067F58 @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08067F5C @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	subs r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08067F60 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #6
	strb r0, [r1]
	bl sub_08024CA0
	movs r0, #0x80
	lsls r0, r0, #0x14
	bl sub_08075DEC
	b _08068402
	.align 2, 0
_08067F44: .4byte gUnk_03000FA0
_08067F48: .4byte 0x00000303
_08067F4C: .4byte 0x00000265
_08067F50: .4byte 0x0000FFFB
_08067F54: .4byte 0x0000027F
_08067F58: .4byte 0x0000026D
_08067F5C: .4byte 0x0000026E
_08067F60: .4byte 0x0000027E
_08067F64:
	ldr r0, _0806800C @ =gUnk_03000FA0
	ldr r0, [r0, #0x2c]
	ldr r1, _08068010 @ =gUnk_02000103
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bne _08068028
	bl sub_08082478
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #1
	bne _08068028
	movs r0, #0xae
	bl PlaySE
	ldr r1, _08068014 @ =0x00000265
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08067F96
	bl sub_0801E654
_08067F96:
	movs r0, #0xae
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrh r1, [r2]
	ldr r0, _08068018 @ =0x0000FFFB
	ands r0, r1
	movs r6, #0
	strh r0, [r2]
	ldr r2, _0806801C @ =0x0000027E
	adds r1, r7, r2
	movs r0, #6
	strb r0, [r1]
	ldr r0, _08068020 @ =0x0000026D
	adds r5, r7, r0
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08068024 @ =0x0000026E
	adds r4, r7, r1
	adds r0, r4, r0
	movs r1, #2
	strb r1, [r0]
	adds r2, #1
	adds r3, r7, r2
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r7, r1
	adds r0, r2, r0
	mov r1, r8
	strb r1, [r0]
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	movs r0, #4
	strb r0, [r4]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	strb r6, [r2]
	movs r0, #0x80
	lsls r0, r0, #0x14
	bl sub_08075DEC
	bl sub_08024CA0
	b _08068402
	.align 2, 0
_0806800C: .4byte gUnk_03000FA0
_08068010: .4byte gUnk_02000103
_08068014: .4byte 0x00000265
_08068018: .4byte 0x0000FFFB
_0806801C: .4byte 0x0000027E
_08068020: .4byte 0x0000026D
_08068024: .4byte 0x0000026E
_08068028:
	ldr r2, _08068084 @ =0x00000265
	adds r5, r7, r2
	ldrb r4, [r5]
	bl sub_08082448
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _0806803C
	b _08068402
_0806803C:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _08068046
	bl sub_0801E654
_08068046:
	bl sub_08082448
	strb r0, [r5]
	movs r0, #7
	bl sub_08142F50
	movs r3, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806805E
	movs r3, #1
_0806805E:
	ldr r0, _08068088 @ =gPlayerUnits
	ldrb r1, [r5]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r3, #0
	movs r3, #0
	bl sub_08066E0C
	movs r0, #0xae
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrh r1, [r2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2]
	b _08068402
	.align 2, 0
_08068084: .4byte 0x00000265
_08068088: .4byte gPlayerUnits
_0806808C:
	ldr r2, _080680CC @ =0x0000027E
	adds r1, r7, r2
	movs r0, #6
	strb r0, [r1]
	ldr r0, _080680D0 @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080680D4 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	subs r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080680D8 @ =0x0000027F
	adds r2, r7, r0
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	movs r1, #1
	b _08068400
	.align 2, 0
_080680CC: .4byte 0x0000027E
_080680D0: .4byte 0x0000026D
_080680D4: .4byte 0x0000026E
_080680D8: .4byte 0x0000027F
_080680DC:
	subs r1, #1
	ldr r2, _080680F4 @ =0x00000266
	adds r0, r7, r2
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x14
	bl sub_08075DEC
	adds r0, r7, #0
	bl sub_08066F04
	b _08068402
	.align 2, 0
_080680F4: .4byte 0x00000266
_080680F8:
	bl sub_0807EC78
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08068104
	b _08068402
_08068104:
	ldr r0, _08068174 @ =0x00000265
	adds r4, r7, r0
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _08068112
	bl sub_0801E654
_08068112:
	movs r0, #0xff
	strb r0, [r4]
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r4, r7, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _08068126
	bl BattleFree
_08068126:
	movs r0, #0
	str r0, [r4]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r5, r7, r2
	movs r4, #9
_08068132:
	ldm r5!, {r0}
	bl sub_08012CBC
	subs r4, #1
	cmp r4, #0
	bge _08068132
	ldr r0, _08068178 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806817C @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, _08068180 @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x14
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	b _080683FE
	.align 2, 0
_08068174: .4byte 0x00000265
_08068178: .4byte 0x0000026D
_0806817C: .4byte 0x0000026E
_08068180: .4byte 0x0000027F
_08068184:
	ldr r0, _080681CC @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080681D0 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r3, r7, r0
	ldrb r0, [r3]
	movs r4, #0
	strb r0, [r1]
	ldr r1, _080681D4 @ =0x0000027F
	adds r2, r7, r1
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	movs r0, #3
	strb r0, [r3]
	ldr r1, _080681D8 @ =0x0000027E
	adds r0, r7, r1
	strb r4, [r0]
	b _08068402
	.align 2, 0
_080681CC: .4byte 0x0000026D
_080681D0: .4byte 0x0000026E
_080681D4: .4byte 0x0000027F
_080681D8: .4byte 0x0000027E
_080681DC:
	movs r6, #9
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _08068234 @ =gUnk_0202A5AC
	ldr r0, _08068238 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	movs r5, #0
	strb r5, [r0]
	ldr r4, _0806823C @ =gUnk_0202A5A8
	ldr r0, _08068240 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08068244 @ =gUnk_0875D99A
	movs r3, #2
	str r3, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	str r6, [sp, #0x20]
	ldr r1, _08068248 @ =0x0000022F
	movs r3, #9
	bl sub_08015D50
	ldr r2, _0806824C @ =0x0000027E
	adds r1, r7, r2
	movs r0, #8
	strb r0, [r1]
	b _08068402
	.align 2, 0
_08068234: .4byte gUnk_0202A5AC
_08068238: .4byte gUnk_03000FA0
_0806823C: .4byte gUnk_0202A5A8
_08068240: .4byte 0x00001C44
_08068244: .4byte gUnk_0875D99A
_08068248: .4byte 0x0000022F
_0806824C: .4byte 0x0000027E
_08068250:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _0806825E
	b _08068402
_0806825E:
	ldr r4, _08068290 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _08068272
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_08068272:
	ldr r0, _08068294 @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	b _080683FE
	.align 2, 0
_08068290: .4byte gUnk_0202A5A8
_08068294: .4byte 0x0000027F
_08068298:
	movs r0, #7
	bl sub_08142F50
	movs r6, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080682AA
	movs r6, #1
_080682AA:
	adds r0, r7, #0
	adds r0, #0x5c
	adds r5, r7, #0
	adds r5, #0xc4
	movs r1, #0x96
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r4, _0806833C @ =gUnk_03000FA0
	ldrh r3, [r4, #0x3c]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r1, r4, #0
	adds r1, #0x40
	ldrb r1, [r1]
	str r1, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r6, [sp, #8]
	adds r1, r5, #0
	bl sub_0805FBDC
	adds r0, r5, #0
	bl sub_0805B308
	str r0, [r7, #0x40]
	bl sub_080763F8
	adds r4, #0x35
	movs r0, #1
	strb r0, [r4]
	ldr r2, _08068340 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #9
	strb r0, [r1]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #0xff
	strh r1, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r7, r2
	strh r1, [r0]
	ldr r0, [r7, #0x40]
	ldr r2, [r0, #4]
	ldr r0, _08068344 @ =0x00000267
	adds r1, r7, r0
	ldrb r0, [r1]
	strb r0, [r2, #0x16]
	ldr r0, [r7, #0x40]
	ldrb r1, [r1]
	adds r0, #0x48
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	bl sub_08075DEC
	movs r0, #0x10
	bl sub_08075DEC
	bl sub_0806FDE4
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075E08
	bl sub_08075E24
	bl sub_08075DD8
	b _08068402
	.align 2, 0
_0806833C: .4byte gUnk_03000FA0
_08068340: .4byte 0x0000027E
_08068344: .4byte 0x00000267
_08068348:
	ldr r0, _08068374 @ =gUnk_03000FA0
	adds r1, r0, #0
	adds r1, #0x95
	ldrb r1, [r1]
	cmp r1, #0
	bne _08068402
	adds r0, #0x35
	strb r1, [r0]
	ldr r2, _08068378 @ =0x0000027F
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #1
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	b _080683FE
	.align 2, 0
_08068374: .4byte gUnk_03000FA0
_08068378: .4byte 0x0000027F
_0806837C:
	adds r0, r7, #0
	bl sub_080676EC
	b _08068402
_08068384:
	ldr r4, _080683A8 @ =gUnk_0202A5A0
	adds r0, r4, #0
	movs r1, #8
	bl memzero
	ldr r0, [r7, #0x40]
	str r0, [r4, #4]
	movs r1, #0x13
	bl sub_0806CF4C
	strb r0, [r4, #3]
	movs r0, #1
	strb r0, [r4]
	ldr r0, _080683AC @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0xc
	strb r0, [r1]
	b _08068402
	.align 2, 0
_080683A8: .4byte gUnk_0202A5A0
_080683AC: .4byte 0x0000027E
_080683B0:
	bl sub_0805F624
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080683C4
	cmp r1, #1
	beq _080683DC
	b _08068402
_080683C4:
	ldr r0, [r7, #0x40]
	movs r1, #0
	bl sub_0805FE54
	ldr r2, _080683D8 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0xa
	strb r0, [r1]
	b _08068402
	.align 2, 0
_080683D8: .4byte 0x0000027E
_080683DC:
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_08075DEC
	ldr r0, _08068410 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r7, #0x40]
	ldr r1, [r0, #4]
	adds r0, #0x48
	ldrb r0, [r0]
	strb r0, [r1, #0x16]
	ldr r0, [r7, #0x40]
	adds r0, #0x48
	ldrb r1, [r0]
	ldr r2, _08068414 @ =0x00000267
_080683FE:
	adds r0, r7, r2
_08068400:
	strb r1, [r0]
_08068402:
	movs r0, #0
	add sp, #0x24
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08068410: .4byte 0x0000027E
_08068414: .4byte 0x00000267

	thumb_func_start sub_08068418
sub_08068418: @ 0x08068418
	push {r4, r5, lr}
	ldr r0, _0806846C @ =gUnk_02000000
	ldr r1, _08068470 @ =0x000021CC
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #1
	bls _080684A6
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r5, #0x19
_08068430:
	adds r0, r4, #0
	bl sub_0806D918
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806849E
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0806849E
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806849E
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08068474
	ldr r0, [r4]
	adds r0, #0x5d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806849E
	b _08068482
	.align 2, 0
_0806846C: .4byte gUnk_02000000
_08068470: .4byte 0x000021CC
_08068474:
	ldr r0, [r4]
	adds r0, #0x5d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0806849E
_08068482:
	ldr r0, [r4]
	adds r3, r0, #0
	adds r3, #0x44
	ldrh r1, [r3]
	adds r1, #0xa
	adds r0, #0x46
	ldrh r2, [r0]
	cmp r1, r2
	ble _08068498
	strh r2, [r3]
	ldrh r1, [r0]
_08068498:
	ldr r0, [r4]
	adds r0, #0x44
	strh r1, [r0]
_0806849E:
	subs r5, #1
	adds r4, #0xd0
	cmp r5, #0
	bge _08068430
_080684A6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080684AC
sub_080684AC: @ 0x080684AC
	push {r4, r5, r6, lr}
	ldr r4, _08068548 @ =gUnk_0202A88C
	ldr r0, [r4]
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r5, #0
	movs r6, #4
	strb r6, [r0]
	bl sub_08144290
	bl sub_08141000
	movs r0, #1
	bl sub_0806D97C
	bl sub_0806CED0
	bl sub_0806DA00
	ldr r0, [r4]
	ldr r1, _0806854C @ =0x00000269
	adds r0, r0, r1
	movs r1, #3
	strb r1, [r0]
	ldr r0, [r4]
	ldr r1, _08068550 @ =0x000002D5
	adds r0, r0, r1
	strb r5, [r0]
	ldr r0, [r4]
	adds r1, #1
	adds r0, r0, r1
	strb r5, [r0]
	bl sub_0806CD90
	adds r4, r0, #0
	cmp r4, #0
	beq _0806851C
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806851C
	ldr r1, _08068554 @ =gUnk_03000FA0
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x14]
	strh r0, [r1, #0x3c]
	ldr r0, [r4, #4]
	ldrb r2, [r0, #0x15]
	adds r0, r1, #0
	adds r0, #0x40
	strh r2, [r0]
	adds r1, #0x35
	strb r6, [r1]
_0806851C:
	ldr r0, _08068558 @ =0x80001000
	bl sub_08075DEC
	movs r0, #0
	bl sub_08075B90
	bl sub_08075BB8
	bl sub_0805B3AC
	bl sub_08068418
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_0806FDE4
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08068548: .4byte gUnk_0202A88C
_0806854C: .4byte 0x00000269
_08068550: .4byte 0x000002D5
_08068554: .4byte gUnk_03000FA0
_08068558: .4byte 0x80001000

	thumb_func_start sub_0806855C
sub_0806855C: @ 0x0806855C
	push {r4, r5, r6, lr}
	sub sp, #0x24
	bl sub_0814301C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080685D0
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _080685B8 @ =gUnk_03000FA0
	adds r0, #0x35
	strb r5, [r0]
	ldr r0, _080685BC @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _080685C0 @ =gUnk_0202A5A8
	ldr r0, _080685C4 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _080685C8 @ =gUnk_0874A6CC
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _080685CC @ =0x0000022F
	movs r3, #0xd
	bl sub_08015D50
	b _0806868A
	.align 2, 0
_080685B8: .4byte gUnk_03000FA0
_080685BC: .4byte gUnk_0202A5AC
_080685C0: .4byte gUnk_0202A5A8
_080685C4: .4byte 0x00001C44
_080685C8: .4byte gUnk_0874A6CC
_080685CC: .4byte 0x0000022F
_080685D0:
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bne _08068640
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _08068628 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r5, #0
	strb r5, [r0]
	ldr r0, _0806862C @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _08068630 @ =gUnk_0202A5A8
	ldr r0, _08068634 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08068638 @ =gUnk_0874A6CC
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xfe
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _0806863C @ =0x0000022F
	movs r3, #0xf
	bl sub_08015D50
	b _0806868A
	.align 2, 0
_08068628: .4byte gUnk_03000FA0
_0806862C: .4byte gUnk_0202A5AC
_08068630: .4byte gUnk_0202A5A8
_08068634: .4byte 0x00001C44
_08068638: .4byte gUnk_0874A6CC
_0806863C: .4byte 0x0000022F
_08068640:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _08068694 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r5, #0
	strb r5, [r0]
	ldr r0, _08068698 @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _0806869C @ =gUnk_0202A5A8
	ldr r0, _080686A0 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _080686A4 @ =gUnk_0874A6CC
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _080686A8 @ =0x0000022F
	movs r3, #0xe
	bl sub_08015D50
_0806868A:
	movs r0, #0x14
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08068694: .4byte gUnk_03000FA0
_08068698: .4byte gUnk_0202A5AC
_0806869C: .4byte gUnk_0202A5A8
_080686A0: .4byte 0x00001C44
_080686A4: .4byte gUnk_0874A6CC
_080686A8: .4byte 0x0000022F

	thumb_func_start sub_080686AC
sub_080686AC: @ 0x080686AC
	push {r4, r5, lr}
	sub sp, #0x24
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _08068720
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _08068708 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r5, #0
	strb r5, [r0]
	ldr r0, _0806870C @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _08068710 @ =gUnk_0202A5A8
	ldr r0, _08068714 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08068718 @ =gUnk_0874A6CC
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _0806871C @ =0x0000022F
	movs r3, #0x43
	bl sub_08015D50
	b _08068768
	.align 2, 0
_08068708: .4byte gUnk_03000FA0
_0806870C: .4byte gUnk_0202A5AC
_08068710: .4byte gUnk_0202A5A8
_08068714: .4byte 0x00001C44
_08068718: .4byte gUnk_0874A6CC
_0806871C: .4byte 0x0000022F
_08068720:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _080687AC @ =gUnk_03000FA0
	adds r0, #0x35
	strb r5, [r0]
	ldr r0, _080687B0 @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _080687B4 @ =gUnk_0202A5A8
	ldr r0, _080687B8 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _080687BC @ =gUnk_0874A6CC
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _080687C0 @ =0x0000022F
	movs r3, #0x36
	bl sub_08015D50
_08068768:
	ldr r4, _080687C4 @ =gUnk_0202A88C
	ldr r2, [r4]
	ldr r0, _080687C8 @ =0x0000027F
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #0xb
	strb r0, [r2]
	ldr r2, [r4]
	ldr r0, _080687CC @ =0x0000026D
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080687D0 @ =0x0000026E
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #3
	strb r0, [r2]
	movs r0, #0x10
	add sp, #0x24
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080687AC: .4byte gUnk_03000FA0
_080687B0: .4byte gUnk_0202A5AC
_080687B4: .4byte gUnk_0202A5A8
_080687B8: .4byte 0x00001C44
_080687BC: .4byte gUnk_0874A6CC
_080687C0: .4byte 0x0000022F
_080687C4: .4byte gUnk_0202A88C
_080687C8: .4byte 0x0000027F
_080687CC: .4byte 0x0000026D
_080687D0: .4byte 0x0000026E

	thumb_func_start sub_080687D4
sub_080687D4: @ 0x080687D4
	push {r4, r5, lr}
	movs r0, #7
	movs r1, #0
	bl sub_08142F7C
	ldr r5, _08068830 @ =gUnk_0202A88C
	ldr r0, [r5]
	ldr r4, _08068834 @ =0x0000027F
	adds r0, r0, r4
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r5]
	ldr r2, _08068838 @ =0x0000026D
	adds r0, r0, r2
	strb r1, [r0]
	ldr r3, [r5]
	adds r2, r3, r2
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0806883C @ =0x0000026E
	adds r3, r3, r1
	adds r3, r3, r0
	movs r0, #2
	strb r0, [r3]
	ldr r2, [r5]
	adds r4, r2, r4
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
	bl sub_0805B3AC
	movs r0, #2
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08068830: .4byte gUnk_0202A88C
_08068834: .4byte 0x0000027F
_08068838: .4byte 0x0000026D
_0806883C: .4byte 0x0000026E

	thumb_func_start sub_08068840
sub_08068840: @ 0x08068840
	push {r4, r5, r6, lr}
	sub sp, #0x24
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r5, #0
	movs r6, #0x19
_08068850:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806888A
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x10
	bl sub_08143B70
	cmp r0, #0
	beq _0806888A
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x1e
	bl sub_08143B70
	adds r2, r0, #0
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x17]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806888A
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0806888A
	adds r5, #1
_0806888A:
	subs r6, #1
	adds r4, #0xd0
	cmp r6, #0
	bge _08068850
	cmp r5, #0
	beq _080688FC
	movs r0, #7
	movs r1, #1
	bl sub_08142F7C
	ldr r5, _080688EC @ =gUnk_0202A88C
	ldr r0, [r5]
	ldr r4, _080688F0 @ =0x0000027F
	adds r0, r0, r4
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r5]
	ldr r2, _080688F4 @ =0x0000026D
	adds r0, r0, r2
	strb r1, [r0]
	ldr r3, [r5]
	adds r2, r3, r2
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080688F8 @ =0x0000026E
	adds r3, r3, r1
	adds r3, r3, r0
	movs r0, #2
	strb r0, [r3]
	ldr r2, [r5]
	adds r4, r2, r4
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
	bl sub_0805B3AC
	movs r0, #2
	b _08068948
	.align 2, 0
_080688EC: .4byte gUnk_0202A88C
_080688F0: .4byte 0x0000027F
_080688F4: .4byte 0x0000026D
_080688F8: .4byte 0x0000026E
_080688FC:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _08068950 @ =gUnk_0202A5AC
	ldr r0, _08068954 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldr r4, _08068958 @ =gUnk_0202A5A8
	ldr r0, _0806895C @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08068960 @ =gUnk_0875C8DE
	movs r1, #4
	str r1, [sp]
	subs r1, #5
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _08068964 @ =0x0000022F
	movs r3, #0x2b
	bl sub_08015D50
	movs r0, #0x12
_08068948:
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08068950: .4byte gUnk_0202A5AC
_08068954: .4byte gUnk_03000FA0
_08068958: .4byte gUnk_0202A5A8
_0806895C: .4byte 0x00001C44
_08068960: .4byte gUnk_0875C8DE
_08068964: .4byte 0x0000022F

	thumb_func_start sub_08068968
sub_08068968: @ 0x08068968
	push {r4, r5, r6, r7, lr}
	movs r0, #0xb
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080689E0
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r6, #2
	movs r7, #0
	movs r5, #0x19
_08068984:
	adds r0, r4, #0
	bl sub_0806D918
	adds r3, r0, #0
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _080689D8
	ldr r1, [r4, #4]
	ldrb r0, [r1]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0xff
	beq _080689B2
	cmp r2, #0
	bge _080689AE
	ldrb r3, [r1]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r3, r0
	b _080689B4
_080689AE:
	movs r3, #0xfe
	b _080689B4
_080689B2:
	movs r3, #0xff
_080689B4:
	cmp r3, #0xff
	beq _080689D8
	cmp r3, #0xfe
	beq _080689D8
	ldr r1, [r4]
	adds r1, #0x5d
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	ldr r2, _080689E8 @ =gUnk_02000000
	movs r0, #0x68
	adds r1, r3, #0
	muls r1, r0, r1
	adds r1, r1, r2
	adds r1, #0x8d
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
_080689D8:
	subs r5, #1
	adds r4, #0xd0
	cmp r5, #0
	bge _08068984
_080689E0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080689E8: .4byte gUnk_02000000

	thumb_func_start sub_080689EC
sub_080689EC: @ 0x080689EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #3
	movs r1, #0
	bl sub_08142F7C
	movs r0, #7
	movs r1, #0
	bl sub_08142F7C
	bl sub_0806CC44
	bl sub_08068968
	ldr r4, _08068B28 @ =gUnk_0202A88C
	ldr r0, [r4]
	ldr r6, _08068B2C @ =0x0000027F
	adds r0, r0, r6
	movs r7, #0
	strb r7, [r0]
	ldr r0, [r4]
	ldr r5, _08068B30 @ =0x0000026D
	adds r0, r0, r5
	strb r7, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	movs r0, #0x10
	bl sub_08075E08
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_0806FDE4
	ldr r2, [r4]
	adds r3, r2, r5
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08068B34 @ =0x0000026E
	mov sl, r1
	add r2, sl
	adds r2, r2, r0
	movs r0, #4
	mov r8, r0
	mov r1, r8
	strb r1, [r2]
	ldr r2, [r4]
	adds r3, r2, r6
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	mov sb, r1
	add r2, sb
	adds r2, r2, r0
	strb r7, [r2]
	ldr r0, [r4]
	subs r1, #0x18
	adds r0, r0, r1
	mov r1, r8
	strb r1, [r0]
	ldr r2, [r4]
	adds r3, r2, r5
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r2, sl
	adds r2, r2, r0
	movs r0, #1
	mov r8, r0
	mov r1, r8
	strb r1, [r2]
	ldr r2, [r4]
	adds r3, r2, r6
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r2, sb
	adds r2, r2, r0
	mov r0, r8
	strb r0, [r2]
	ldr r2, [r4]
	adds r3, r2, r5
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r2, sl
	adds r2, r2, r0
	movs r0, #5
	strb r0, [r2]
	ldr r2, [r4]
	adds r3, r2, r6
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r2, sb
	adds r2, r2, r0
	strb r7, [r2]
	ldr r2, [r4]
	adds r5, r2, r5
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r2, sl
	adds r2, r2, r0
	mov r1, r8
	strb r1, [r2]
	ldr r2, [r4]
	adds r6, r2, r6
	ldrb r0, [r6]
	adds r1, r0, #1
	strb r1, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r2, sb
	adds r2, r2, r0
	movs r0, #3
	strb r0, [r2]
	ldr r1, [r4]
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #8
	orrs r0, r2
	str r0, [r1]
	bl sub_0805B3AC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068B28: .4byte gUnk_0202A88C
_08068B2C: .4byte 0x0000027F
_08068B30: .4byte 0x0000026D
_08068B34: .4byte 0x0000026E

	thumb_func_start sub_08068B38
sub_08068B38: @ 0x08068B38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r2, _08068BD0 @ =gUnk_0202A88C
	ldr r0, [r2]
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r3, #0
	movs r1, #4
	strb r1, [r0]
	ldr r0, [r2]
	ldr r1, _08068BD4 @ =0x00000269
	adds r0, r0, r1
	strb r3, [r0]
	bl sub_080A18F8
	movs r0, #1
	bl sub_0806D970
	bl sub_0806DA00
	bl sub_08024CA0
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08068B74
	b _08068CDC
_08068B74:
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08068BD8
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r6, #0
	movs r5, #0x19
_08068B8C:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _08068BC6
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x10
	bl sub_08143B70
	cmp r0, #0
	beq _08068BC6
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x1e
	bl sub_08143B70
	adds r2, r0, #0
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x17]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08068BC6
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08068BC6
	adds r6, #1
_08068BC6:
	subs r5, #1
	adds r4, #0xd0
	cmp r5, #0
	bge _08068B8C
	b _08068C26
	.align 2, 0
_08068BD0: .4byte gUnk_0202A88C
_08068BD4: .4byte 0x00000269
_08068BD8:
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r6, #0
	movs r5, #0x19
_08068BE4:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _08068C1E
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x10
	bl sub_08143B70
	cmp r0, #0
	beq _08068C1E
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x1e
	bl sub_08143B70
	adds r2, r0, #0
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x17]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08068C1E
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08068C1E
	adds r6, #1
_08068C1E:
	subs r5, #1
	adds r4, #0xd0
	cmp r5, #0
	bge _08068BE4
_08068C26:
	adds r5, r6, #0
	cmp r5, #0
	bne _08068C2E
	b _08068E02
_08068C2E:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _08068CB4 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r5, #0
	strb r5, [r0]
	ldr r0, _08068CB8 @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _08068CBC @ =gUnk_0202A5A8
	ldr r0, _08068CC0 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08068CC4 @ =gUnk_0874A6CC
	movs r6, #3
	str r6, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _08068CC8 @ =0x0000022F
	movs r3, #0x37
	bl sub_08015D50
	ldr r4, _08068CCC @ =gUnk_0202A88C
	ldr r2, [r4]
	ldr r0, _08068CD0 @ =0x0000026D
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08068CD4 @ =0x0000026E
	adds r2, r2, r1
	adds r2, r2, r0
	strb r6, [r2]
	ldr r2, [r4]
	ldr r0, _08068CD8 @ =0x0000027F
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #0x18
	strb r0, [r2]
	b _08068EE8
	.align 2, 0
_08068CB4: .4byte gUnk_03000FA0
_08068CB8: .4byte gUnk_0202A5AC
_08068CBC: .4byte gUnk_0202A5A8
_08068CC0: .4byte 0x00001C44
_08068CC4: .4byte gUnk_0874A6CC
_08068CC8: .4byte 0x0000022F
_08068CCC: .4byte gUnk_0202A88C
_08068CD0: .4byte 0x0000026D
_08068CD4: .4byte 0x0000026E
_08068CD8: .4byte 0x0000027F
_08068CDC:
	bl sub_0814301C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08068DB0
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r6, #0
	movs r5, #0x19
_08068CF4:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _08068D2E
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x10
	bl sub_08143B70
	cmp r0, #0
	beq _08068D2E
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x1e
	bl sub_08143B70
	adds r2, r0, #0
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x17]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08068D2E
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08068D2E
	adds r6, #1
_08068D2E:
	subs r5, #1
	adds r4, #0xd0
	cmp r5, #0
	bge _08068CF4
	adds r5, r6, #0
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r7, #0
	movs r6, #0x19
_08068D44:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _08068D7E
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x10
	bl sub_08143B70
	cmp r0, #0
	beq _08068D7E
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x1e
	bl sub_08143B70
	adds r2, r0, #0
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x17]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08068D7E
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08068D7E
	adds r7, #1
_08068D7E:
	subs r6, #1
	adds r4, #0xd0
	cmp r6, #0
	bge _08068D44
	cmp r5, #0
	beq _08068D8E
	cmp r7, #0
	bne _08068E68
_08068D8E:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _08068DA8 @ =gUnk_0202A5AC
	ldr r0, _08068DAC @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	movs r5, #0
	b _08068E18
	.align 2, 0
_08068DA8: .4byte gUnk_0202A5AC
_08068DAC: .4byte gUnk_03000FA0
_08068DB0:
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r5, #0
	movs r6, #0x19
_08068DBC:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _08068DF6
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x10
	bl sub_08143B70
	cmp r0, #0
	beq _08068DF6
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x1e
	bl sub_08143B70
	adds r2, r0, #0
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x17]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08068DF6
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08068DF6
	adds r5, #1
_08068DF6:
	subs r6, #1
	adds r4, #0xd0
	cmp r6, #0
	bge _08068DBC
	cmp r5, #0
	bne _08068E68
_08068E02:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _08068E50 @ =gUnk_0202A5AC
	ldr r0, _08068E54 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
_08068E18:
	strb r5, [r0]
	ldr r4, _08068E58 @ =gUnk_0202A5A8
	ldr r0, _08068E5C @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08068E60 @ =gUnk_0875C8DE
	movs r1, #4
	str r1, [sp]
	subs r1, #5
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _08068E64 @ =0x0000022F
	movs r3, #0x2b
	bl sub_08015D50
	movs r0, #0x12
	b _08068EEA
	.align 2, 0
_08068E50: .4byte gUnk_0202A5AC
_08068E54: .4byte gUnk_03000FA0
_08068E58: .4byte gUnk_0202A5A8
_08068E5C: .4byte 0x00001C44
_08068E60: .4byte gUnk_0875C8DE
_08068E64: .4byte 0x0000022F
_08068E68:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _08068EF4 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r5, #0
	strb r5, [r0]
	ldr r0, _08068EF8 @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _08068EFC @ =gUnk_0202A5A8
	ldr r0, _08068F00 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08068F04 @ =gUnk_0874A6CC
	movs r6, #3
	str r6, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _08068F08 @ =0x0000022F
	movs r3, #0x37
	bl sub_08015D50
	ldr r4, _08068F0C @ =gUnk_0202A88C
	ldr r2, [r4]
	ldr r0, _08068F10 @ =0x0000026D
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08068F14 @ =0x0000026E
	adds r2, r2, r1
	adds r2, r2, r0
	strb r6, [r2]
	ldr r2, [r4]
	ldr r0, _08068F18 @ =0x0000027F
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r0
	strb r6, [r2]
_08068EE8:
	movs r0, #0x10
_08068EEA:
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08068EF4: .4byte gUnk_03000FA0
_08068EF8: .4byte gUnk_0202A5AC
_08068EFC: .4byte gUnk_0202A5A8
_08068F00: .4byte 0x00001C44
_08068F04: .4byte gUnk_0874A6CC
_08068F08: .4byte 0x0000022F
_08068F0C: .4byte gUnk_0202A88C
_08068F10: .4byte 0x0000026D
_08068F14: .4byte 0x0000026E
_08068F18: .4byte 0x0000027F

	thumb_func_start sub_08068F1C
sub_08068F1C: @ 0x08068F1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r7, r0, #0
	ldr r1, _08068F44 @ =0x0000027E
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0x32
	bls _08068F38
	bl _0806A61C
_08068F38:
	lsls r0, r0, #2
	ldr r1, _08068F48 @ =_08068F4C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08068F44: .4byte 0x0000027E
_08068F48: .4byte _08068F4C
_08068F4C: @ jump table
	.4byte _08069018 @ case 0
	.4byte _08069094 @ case 1
	.4byte _080691A0 @ case 2
	.4byte _08069154 @ case 3
	.4byte _0806926C @ case 4
	.4byte _08069220 @ case 5
	.4byte _08069128 @ case 6
	.4byte _080692A8 @ case 7
	.4byte _08069308 @ case 8
	.4byte _0806933C @ case 9
	.4byte _08069460 @ case 10
	.4byte _08069510 @ case 11
	.4byte _08069668 @ case 12
	.4byte _08069684 @ case 13
	.4byte _08069718 @ case 14
	.4byte _0806A61C @ case 15
	.4byte _08069E58 @ case 16
	.4byte _08069F4E @ case 17
	.4byte _0806977C @ case 18
	.4byte _080697B4 @ case 19
	.4byte _080697F0 @ case 20
	.4byte _080699F4 @ case 21
	.4byte _08069A3C @ case 22
	.4byte _08069A70 @ case 23
	.4byte _08069A98 @ case 24
	.4byte _08069B68 @ case 25
	.4byte _08069C38 @ case 26
	.4byte _08069C8C @ case 27
	.4byte _08069CB0 @ case 28
	.4byte _08069D34 @ case 29
	.4byte _08069DF0 @ case 30
	.4byte _08069E1C @ case 31
	.4byte _08069E34 @ case 32
	.4byte _08069F70 @ case 33
	.4byte _08069F98 @ case 34
	.4byte _0806A080 @ case 35
	.4byte _0806A0AC @ case 36
	.4byte _0806A134 @ case 37
	.4byte _0806A1B0 @ case 38
	.4byte _0806A248 @ case 39
	.4byte _0806A2B8 @ case 40
	.4byte _0806A61C @ case 41
	.4byte _0806A61C @ case 42
	.4byte _0806A368 @ case 43
	.4byte _0806A3C8 @ case 44
	.4byte _0806A438 @ case 45
	.4byte _0806A468 @ case 46
	.4byte _0806A4F8 @ case 47
	.4byte _0806A528 @ case 48
	.4byte _0806A5CC @ case 49
	.4byte _0806A600 @ case 50
_08069018:
	bl sub_08076260
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806903C
	bl sub_080A16F8
	cmp r0, #0
	bne _0806903C
	ldr r2, _08069038 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #2
	bl _0806A61A
	.align 2, 0
_08069038: .4byte 0x0000027E
_0806903C:
	bl sub_08075BE4
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r7, r2
	str r0, [r1]
	ldr r0, _0806908C @ =gUnk_03000FA0
	adds r0, #0x35
	movs r1, #0
	strb r1, [r0]
	bl sub_08075BB8
	movs r0, #0
	bl sub_08075B90
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	movs r0, #0x50
	movs r1, #0x68
	bl sub_08076F58
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_08075E24
	bl sub_0806FDE4
	ldr r0, _08069090 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xae
	bl PlaySE
	bl _0806A61C
	.align 2, 0
_0806908C: .4byte gUnk_03000FA0
_08069090: .4byte 0x0000027E
_08069094:
	add r0, sp, #0x24
	bl sub_08077010
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080690D8
	ldr r1, _080690D4 @ =0x0000027F
	adds r2, r7, r1
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #1
	strh r0, [r1]
	subs r2, #2
	adds r1, r7, r2
	movs r0, #6
	bl _0806A61A
	.align 2, 0
_080690D4: .4byte 0x0000027F
_080690D8:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080690E4
	bl _0806A61C
_080690E4:
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, [sp, #0x24]
	ldr r1, _08069120 @ =0x0000027E
	adds r3, r7, r1
	strb r0, [r3]
	lsrs r0, r0, #0x10
	subs r2, #0x24
	adds r1, r7, r2
	strh r0, [r1]
	ldr r0, _08069124 @ =0x0000027F
	adds r2, r7, r0
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	ldrb r1, [r3]
	strb r1, [r0]
	movs r0, #6
	strb r0, [r3]
	bl _0806A61C
	.align 2, 0
_08069120: .4byte 0x0000027E
_08069124: .4byte 0x0000027F
_08069128:
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r7, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _0806914C
	ldr r2, _08069148 @ =0x0000027F
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #1
	bl _0806A574
	.align 2, 0
_08069148: .4byte 0x0000027F
_0806914C:
	subs r0, #1
	strh r0, [r1]
	bl _0806A61C
_08069154:
	bl sub_080689EC
	movs r0, #1
	bl sub_08075B90
	bl sub_08075BB8
	bl sub_0807628C
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_0806FDE4
	bl sub_08075E24
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, [r2]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r2, _0806919C @ =0x0000026D
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #1
	bl _0806A558
	.align 2, 0
_0806919C: .4byte 0x0000026D
_080691A0:
	ldr r0, _08069214 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08069218 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, _0806921C @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x14
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r0, [r4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08069206
	movs r0, #1
	bl sub_08075B90
	bl sub_08075BB8
	bl sub_0807628C
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_0806FDE4
	bl sub_08075E24
_08069206:
	ldr r0, [r4]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	bl _0806A61C
	.align 2, 0
_08069214: .4byte 0x0000026D
_08069218: .4byte 0x0000026E
_0806921C: .4byte 0x0000027F
_08069220:
	ldr r0, _08069264 @ =gUnk_03000FA0
	adds r0, #0x8a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806922E
	bl _0806A61C
_0806922E:
	movs r0, #1
	bl sub_0806D97C
	movs r0, #2
	bl sub_0806D970
	bl sub_0806DA00
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x50
	movs r1, #0x68
	bl sub_080772A0
	movs r0, #1
	bl sub_08077304
	ldr r2, _08069268 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #1
	bl _0806A61A
	.align 2, 0
_08069264: .4byte gUnk_03000FA0
_08069268: .4byte 0x0000027E
_0806926C:
	ldr r0, _080692A0 @ =gUnk_03000FA0
	adds r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806927A
	bl _0806A61C
_0806927A:
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x50
	movs r1, #0x68
	bl sub_080772A0
	movs r0, #2
	bl sub_08077304
	ldr r2, _080692A4 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #1
	bl _0806A61A
	.align 2, 0
_080692A0: .4byte gUnk_03000FA0
_080692A4: .4byte 0x0000027E
_080692A8:
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080692F8 @ =0x0000026D
	adds r2, r7, r1
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080692FC @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	subs r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08069300 @ =0x0000027F
	adds r2, r7, r0
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	movs r1, #8
	strb r1, [r0]
	ldr r0, _08069304 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #1
	bl _0806A61A
	.align 2, 0
_080692F8: .4byte 0x0000026D
_080692FC: .4byte 0x0000026E
_08069300: .4byte 0x0000027F
_08069304: .4byte 0x0000027E
_08069308:
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	movs r0, #0x50
	movs r1, #0x68
	bl sub_08076F58
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_08075E24
	bl sub_0806FDE4
	movs r0, #4
	bl sub_08077304
	ldr r2, _08069338 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #1
	bl _0806A61A
	.align 2, 0
_08069338: .4byte 0x0000027E
_0806933C:
	ldr r0, _08069378 @ =gUnk_03000FA0
	adds r0, #0x89
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806934A
	bl _0806A61C
_0806934A:
	movs r0, #2
	bl sub_0806D970
	movs r0, #0xb6
	bl sub_08142FAC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0806942C
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08069380
	movs r0, #0x7f
	ands r1, r0
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0x68
	muls r0, r1, r0
	ldr r1, _0806937C @ =gBattleEnemyAndGuestUnits
	b _0806938C
	.align 2, 0
_08069378: .4byte gUnk_03000FA0
_0806937C: .4byte gBattleEnemyAndGuestUnits
_08069380:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0x68
	muls r0, r1, r0
	ldr r1, _08069414 @ =gBattlePlayerUnits
_0806938C:
	adds r0, r0, r1
	bl sub_0806D808
	adds r4, r0, #0
	adds r0, r4, #0
	bl sub_0806D918
	adds r1, r0, #0
	cmp r4, #0
	beq _0806942C
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806942C
	ldr r1, _08069418 @ =gUnk_03000FA0
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x14]
	strh r0, [r1, #0x3c]
	ldr r0, [r4, #4]
	ldrb r2, [r0, #0x15]
	adds r0, r1, #0
	adds r0, #0x40
	strh r2, [r0]
	adds r1, #0x35
	ldrb r2, [r1]
	movs r0, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0xad
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #3
	strb r0, [r1]
	ldr r1, _0806941C @ =0x0000026D
	adds r2, r7, r1
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08069420 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r3, r7, r0
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r1, _08069424 @ =0x0000027F
	adds r2, r7, r1
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	movs r0, #4
	strb r0, [r3]
	ldr r0, _08069428 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #8
	bl _0806A61A
	.align 2, 0
_08069414: .4byte gBattlePlayerUnits
_08069418: .4byte gUnk_03000FA0
_0806941C: .4byte 0x0000026D
_08069420: .4byte 0x0000026E
_08069424: .4byte 0x0000027F
_08069428: .4byte 0x0000027E
_0806942C:
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	movs r0, #0x50
	movs r1, #0x68
	bl sub_08076F58
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_08075E24
	bl sub_0806FDE4
	movs r0, #3
	bl sub_08077304
	ldr r2, _0806945C @ =0x0000027E
	adds r1, r7, r2
	movs r0, #1
	bl _0806A61A
	.align 2, 0
_0806945C: .4byte 0x0000027E
_08069460:
	movs r1, #0xa4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r5, [r0]
	cmp r5, #0
	beq _080694B0
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _0806948C
	ldr r4, _080694AC @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _0806948C
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_0806948C:
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r7, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080694A2
	bl _0806A61C
_080694A2:
	bl sub_08019884
	bl _0806A61C
	.align 2, 0
_080694AC: .4byte gUnk_0202A5A8
_080694B0:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _080694C0
	bl _0806A61C
_080694C0:
	ldr r4, _08069504 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _080694D2
	bl BattleFree
	str r5, [r4]
	bl sub_0807628C
_080694D2:
	ldr r0, _08069508 @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, _0806950C @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r2, #0x10
	bl _0806A574
	.align 2, 0
_08069504: .4byte gUnk_0202A5A8
_08069508: .4byte 0x0000027F
_0806950C: .4byte 0x0000026D
_08069510:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08069610
	bl sub_080A169C
	bl sub_080A15F8
	bl MultiSioStop
	movs r0, #0x17
	bl sub_080A1664
	ldr r3, _080695E4 @ =gPlayerUnits
	movs r5, #0x7e
	movs r4, #0x1f
_08069532:
	adds r2, r3, #0
	adds r2, #0x5d
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2]
	subs r4, #1
	adds r3, #0x68
	cmp r4, #0
	bge _08069532
	ldr r0, _080695E8 @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080695EC @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r5, #0
	movs r0, #3
	strb r0, [r1]
	ldr r0, _080695F0 @ =0x0000027F
	adds r2, r7, r0
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	movs r1, #0xc
	strb r1, [r0]
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _080695F4 @ =gUnk_0202A5AC
	ldr r0, _080695F8 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldr r4, _080695FC @ =gUnk_0202A5A8
	ldr r0, _08069600 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08069604 @ =gUnk_0875C8DE
	movs r1, #4
	str r1, [sp]
	subs r1, #5
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r4, #0x80
	lsls r4, r4, #1
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #0x84
	lsls r1, r1, #1
	str r1, [sp, #0x20]
	ldr r1, _08069608 @ =0x0000022F
	movs r3, #0x45
	bl sub_08015D50
	movs r1, #0xa4
	lsls r1, r1, #2
	adds r0, r7, r1
	strh r4, [r0]
	ldr r2, _0806960C @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #2
	bl sub_0814531C
	movs r0, #0x61
	bl _0806A61E
	.align 2, 0
_080695E4: .4byte gPlayerUnits
_080695E8: .4byte 0x0000026D
_080695EC: .4byte 0x0000026E
_080695F0: .4byte 0x0000027F
_080695F4: .4byte gUnk_0202A5AC
_080695F8: .4byte gUnk_03000FA0
_080695FC: .4byte gUnk_0202A5A8
_08069600: .4byte 0x00001C44
_08069604: .4byte gUnk_0875C8DE
_08069608: .4byte 0x0000022F
_0806960C: .4byte 0x0000027E
_08069610:
	ldr r4, _08069654 @ =gUnk_0202A88C
	ldr r2, [r4]
	ldr r0, _08069658 @ =0x0000027F
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #0xd
	strb r0, [r2]
	ldr r2, [r4]
	ldr r0, _0806965C @ =0x0000026D
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08069660 @ =0x0000026E
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #3
	strb r0, [r2]
	ldr r2, _08069664 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x2e
	bl _0806A61A
	.align 2, 0
_08069654: .4byte gUnk_0202A88C
_08069658: .4byte 0x0000027F
_0806965C: .4byte 0x0000026D
_08069660: .4byte 0x0000026E
_08069664: .4byte 0x0000027E
_08069668:
	movs r0, #0x20
	bl sub_08049930
	ldr r0, _08069680 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0xc
	strb r0, [r1]
	movs r0, #0xff
	bl sub_080A1664
	bl _0806A35A
	.align 2, 0
_08069680: .4byte 0x0000027E
_08069684:
	movs r0, #2
	bl sub_0814531C
	ldr r1, _08069704 @ =0x0000026D
	adds r5, r7, r1
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08069708 @ =0x0000026E
	adds r4, r7, r2
	adds r0, r4, r0
	movs r1, #3
	strb r1, [r0]
	ldr r0, _0806970C @ =0x0000027F
	adds r3, r7, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r7, r1
	adds r0, r2, r0
	movs r1, #0xe
	strb r1, [r0]
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	movs r5, #1
	strb r5, [r4]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x1c
	strb r0, [r2]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0x20
	strh r0, [r1]
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r5, [r0]
	subs r2, #0x12
	adds r1, r7, r2
	movs r0, #0x1a
	strb r0, [r1]
	ldr r0, _08069710 @ =gUnk_02000000
	ldr r1, _08069714 @ =0x000013BA
	adds r0, r0, r1
	movs r1, #0xa
	strb r1, [r0]
	bl _0806A61C
	.align 2, 0
_08069704: .4byte 0x0000026D
_08069708: .4byte 0x0000026E
_0806970C: .4byte 0x0000027F
_08069710: .4byte gUnk_02000000
_08069714: .4byte 0x000013BA
_08069718:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806972C
	movs r0, #0x20
	bl sub_08049930
	bl _0806A35A
_0806972C:
	ldr r0, _0806976C @ =gUnk_02000000
	ldr r2, _08069770 @ =0x000013BA
	adds r0, r0, r2
	movs r1, #0xa
	strb r1, [r0]
	bl sub_08063D4C
	ldr r1, _08069774 @ =gUnk_03000FA0
	movs r0, #0xff
	strb r0, [r1, #1]
	movs r0, #0
	movs r1, #0
	bl sub_08142F7C
	bl sub_08142FEC
	movs r0, #3
	movs r1, #0
	bl sub_08142F7C
	movs r0, #7
	movs r1, #0
	bl sub_08142F7C
	bl sub_0805B3AC
	ldr r0, _08069778 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0xf
	bl _0806A61A
	.align 2, 0
_0806976C: .4byte gUnk_02000000
_08069770: .4byte 0x000013BA
_08069774: .4byte gUnk_03000FA0
_08069778: .4byte 0x0000027E
_0806977C:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _0806978C
	bl _0806A61C
_0806978C:
	ldr r4, _080697AC @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _080697A0
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_080697A0:
	ldr r2, _080697B0 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x13
	bl _0806A61A
	.align 2, 0
_080697AC: .4byte gUnk_0202A5A8
_080697B0: .4byte 0x0000027E
_080697B4:
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	movs r0, #0x50
	movs r1, #0x68
	bl sub_08076F58
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_08075E24
	bl sub_0806FDE4
	movs r1, #0xad
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r0, [r0]
	bl sub_08077304
	ldr r2, _080697EC @ =0x0000027E
	adds r1, r7, r2
	movs r0, #1
	bl _0806A61A
	.align 2, 0
_080697EC: .4byte 0x0000027E
_080697F0:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _08069800
	movs r0, #0
	b _08069854
_08069800:
	bl sub_080197C0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0806983C
	ldr r5, _08069824 @ =gUnk_0202A5A8
	ldr r0, [r5]
	cmp r0, #0
	beq _0806981E
	bl BattleFree
	str r4, [r5]
	bl sub_0807628C
_0806981E:
	movs r1, #1
	mov sb, r1
	b _08069856
	.align 2, 0
_08069824: .4byte gUnk_0202A5A8
_08069828:
	ldr r2, _08069838 @ =0x0000027E
	adds r0, r7, r2
	movs r1, #0
	strb r1, [r0]
	subs r2, #0x15
	adds r1, r7, r2
	movs r0, #3
	b _08069924
	.align 2, 0
_08069838: .4byte 0x0000027E
_0806983C:
	ldr r4, _08069994 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _08069850
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_08069850:
	movs r0, #1
	rsbs r0, r0, #0
_08069854:
	mov sb, r0
_08069856:
	movs r0, #1
	rsbs r0, r0, #0
	cmp sb, r0
	bne _08069860
	b _080699A8
_08069860:
	mov r1, sb
	cmp r1, #1
	beq _0806986A
	bl _0806A61C
_0806986A:
	bl sub_080684AC
	ldr r2, _08069998 @ =0x0000027F
	adds r4, r7, r2
	movs r0, #0
	strb r0, [r4]
	ldr r1, _0806999C @ =0x0000026D
	adds r5, r7, r1
	mov r2, sb
	strb r2, [r5]
	ldr r0, _080699A0 @ =0x0000026E
	adds r0, r0, r7
	mov sl, r0
	ldr r2, _080699A0 @ =0x0000026E
	adds r1, r7, r2
	movs r0, #4
	strb r0, [r1]
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r1, r1, r7
	mov r8, r1
	add r0, r8
	movs r2, #0
	strb r2, [r0]
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sl
	mov r1, sb
	strb r1, [r0]
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, r8
	movs r1, #0xc
	strb r1, [r0]
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sl
	mov r2, sb
	strb r2, [r0]
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, r8
	strb r2, [r0]
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r6, r7, r0
	movs r3, #5
	strb r3, [r6]
	movs r0, #7
	str r3, [sp, #0x28]
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r3, [sp, #0x28]
	cmp r2, #0
	bne _08069828
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sl
	strb r3, [r0]
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, r8
	strb r2, [r0]
	mov r1, sb
	strb r1, [r6]
	ldr r2, _080699A4 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x20
_08069924:
	strb r0, [r1]
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08069934
	bl _0806A61C
_08069934:
	bl sub_080A16F8
	cmp r0, #0
	beq _08069940
	bl _0806A61C
_08069940:
	bl sub_080A15E8
	movs r0, #0x17
	bl sub_080A1664
	ldr r0, _08069998 @ =0x0000027F
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r0
	ldr r0, _080699A4 @ =0x0000027E
	adds r3, r7, r0
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r1, _0806999C @ =0x0000026D
	adds r2, r7, r1
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080699A0 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #0x15
	strb r0, [r3]
	movs r0, #3
	strb r0, [r2]
	bl _0806A61C
	.align 2, 0
_08069994: .4byte gUnk_0202A5A8
_08069998: .4byte 0x0000027F
_0806999C: .4byte 0x0000026D
_080699A0: .4byte 0x0000026E
_080699A4: .4byte 0x0000027E
_080699A8:
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r3, r7, r1
	ldr r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #3
	ands r2, r1
	cmp r2, #0
	beq _080699DC
	ldr r0, _080699D4 @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r3]
	ldr r2, _080699D8 @ =0x0000026D
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #1
	bl _0806A558
	.align 2, 0
_080699D4: .4byte 0xFFFFFBFF
_080699D8: .4byte 0x0000026D
_080699DC:
	movs r1, #0xad
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r2, [r0]
	ldr r2, _080699F0 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x13
	bl _0806A61A
	.align 2, 0
_080699F0: .4byte 0x0000027E
_080699F4:
	bl sub_080A1634
	cmp r0, #0
	bne _08069A00
	bl _0806A61C
_08069A00:
	ldr r0, _08069A34 @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, _08069A38 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r2, #0x10
	bl _0806A574
	.align 2, 0
_08069A34: .4byte 0x0000027F
_08069A38: .4byte 0x0000026D
_08069A3C:
	bl sub_08079C00
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08069A4A
	bl _0806A61C
_08069A4A:
	ldr r0, _08069A68 @ =gUnk_0202A5A8
	ldr r0, [r0]
	bl BattleFree
	movs r0, #0xad
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #2
	strb r0, [r1]
	ldr r2, _08069A6C @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x13
	bl _0806A61A
	.align 2, 0
_08069A68: .4byte gUnk_0202A5A8
_08069A6C: .4byte 0x0000027E
_08069A70:
	bl sub_080801F8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08069A7E
	bl _0806A61C
_08069A7E:
	movs r0, #0xad
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldr r2, _08069A94 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x13
	bl _0806A61A
	.align 2, 0
_08069A94: .4byte 0x0000027E
_08069A98:
	bl sub_0808C804
	cmp r0, #0
	beq _08069B58
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _08069B2C @ =gUnk_03000FA0
	adds r0, #0x35
	movs r5, #0
	strb r5, [r0]
	ldr r0, _08069B30 @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _08069B34 @ =gUnk_0202A5A8
	ldr r0, _08069B38 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08069B3C @ =gUnk_0874A6CC
	movs r6, #3
	str r6, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _08069B40 @ =0x0000022F
	movs r3, #0x44
	bl sub_08015D50
	ldr r4, _08069B44 @ =gUnk_0202A88C
	ldr r2, [r4]
	ldr r0, _08069B48 @ =0x0000026D
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08069B4C @ =0x0000026E
	adds r2, r2, r1
	adds r2, r2, r0
	strb r6, [r2]
	ldr r2, [r4]
	ldr r0, _08069B50 @ =0x0000027F
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #0x19
	strb r0, [r2]
	ldr r2, _08069B54 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x10
	bl _0806A61A
	.align 2, 0
_08069B2C: .4byte gUnk_03000FA0
_08069B30: .4byte gUnk_0202A5AC
_08069B34: .4byte gUnk_0202A5A8
_08069B38: .4byte 0x00001C44
_08069B3C: .4byte gUnk_0874A6CC
_08069B40: .4byte 0x0000022F
_08069B44: .4byte gUnk_0202A88C
_08069B48: .4byte 0x0000026D
_08069B4C: .4byte 0x0000026E
_08069B50: .4byte 0x0000027F
_08069B54: .4byte 0x0000027E
_08069B58:
	ldr r0, _08069B64 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x19
	bl _0806A61A
	.align 2, 0
_08069B64: .4byte 0x0000027E
_08069B68:
	bl sub_0808D6B8
	cmp r0, #0
	beq _08069C28
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _08069BFC @ =gUnk_03000FA0
	adds r0, #0x35
	movs r5, #0
	strb r5, [r0]
	ldr r0, _08069C00 @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _08069C04 @ =gUnk_0202A5A8
	ldr r0, _08069C08 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08069C0C @ =gUnk_0874A6CC
	movs r6, #3
	str r6, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _08069C10 @ =0x0000022F
	movs r3, #0x54
	bl sub_08015D50
	ldr r4, _08069C14 @ =gUnk_0202A88C
	ldr r2, [r4]
	ldr r1, _08069C18 @ =0x0000026D
	adds r3, r2, r1
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08069C1C @ =0x0000026E
	adds r2, r2, r1
	adds r2, r2, r0
	strb r6, [r2]
	ldr r2, [r4]
	ldr r0, _08069C20 @ =0x0000027F
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #0x1a
	strb r0, [r2]
	ldr r2, _08069C24 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x10
	bl _0806A61A
	.align 2, 0
_08069BFC: .4byte gUnk_03000FA0
_08069C00: .4byte gUnk_0202A5AC
_08069C04: .4byte gUnk_0202A5A8
_08069C08: .4byte 0x00001C44
_08069C0C: .4byte gUnk_0874A6CC
_08069C10: .4byte 0x0000022F
_08069C14: .4byte gUnk_0202A88C
_08069C18: .4byte 0x0000026D
_08069C1C: .4byte 0x0000026E
_08069C20: .4byte 0x0000027F
_08069C24: .4byte 0x0000027E
_08069C28:
	ldr r0, _08069C34 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x1a
	bl _0806A61A
	.align 2, 0
_08069C34: .4byte 0x0000027E
_08069C38:
	ldr r0, _08069C50 @ =gUnk_02000000
	ldr r1, _08069C54 @ =0x0000141C
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08069C5C
	ldr r2, _08069C58 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x1c
	bl _0806A61A
	.align 2, 0
_08069C50: .4byte gUnk_02000000
_08069C54: .4byte 0x0000141C
_08069C58: .4byte 0x0000027E
_08069C5C:
	movs r0, #7
	bl sub_08142F50
	movs r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08069C6E
	movs r1, #1
_08069C6E:
	adds r0, r1, #0
	bl sub_0805EFEC
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	ldr r0, _08069C88 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x1b
	bl _0806A61A
	.align 2, 0
_08069C88: .4byte 0x0000027E
_08069C8C:
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r4, r7, r1
	ldr r0, [r4]
	bl sub_0805F098
	cmp r0, #0
	beq _08069CA0
	bl _0806A61C
_08069CA0:
	str r0, [r4]
	ldr r2, _08069CAC @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x1c
	bl _0806A61A
	.align 2, 0
_08069CAC: .4byte 0x0000027E
_08069CB0:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _08069D18 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r5, #0
	strb r5, [r0]
	ldr r0, _08069D1C @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _08069D20 @ =gUnk_0202A5A8
	ldr r0, _08069D24 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08069D28 @ =gUnk_0874A6CC
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	adds r1, #8
	str r1, [sp, #0x20]
	ldr r1, _08069D2C @ =0x0000022F
	movs r3, #0x3f
	bl sub_08015D50
	movs r0, #7
	bl sub_080A1664
	ldr r0, _08069D30 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x1d
	strb r0, [r1]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0x10
	strh r0, [r1]
	bl _0806A61C
	.align 2, 0
_08069D18: .4byte gUnk_03000FA0
_08069D1C: .4byte gUnk_0202A5AC
_08069D20: .4byte gUnk_0202A5A8
_08069D24: .4byte 0x00001C44
_08069D28: .4byte gUnk_0874A6CC
_08069D2C: .4byte 0x0000022F
_08069D30: .4byte 0x0000027E
_08069D34:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _08069D54
	ldr r4, _08069D68 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _08069D54
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_08069D54:
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r4, r7, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _08069D6C
	subs r0, #1
	strh r0, [r4]
	bl _0806A61C
	.align 2, 0
_08069D68: .4byte gUnk_0202A5A8
_08069D6C:
	bl sub_080A1634
	cmp r0, #0
	bne _08069D78
	bl _0806A61C
_08069D78:
	bl sub_08019884
	movs r0, #0x10
	strh r0, [r4]
	ldr r1, _08069DE0 @ =0x0000026D
	adds r5, r7, r1
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08069DE4 @ =0x0000026E
	adds r4, r7, r2
	adds r0, r4, r0
	subs r2, #2
	adds r1, r7, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _08069DE8 @ =0x0000027F
	adds r3, r7, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r7, r1
	adds r0, r2, r0
	movs r1, #0x1f
	strb r1, [r0]
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	movs r0, #1
	strb r0, [r4]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x1a
	strb r0, [r2]
	ldr r2, _08069DEC @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x1e
	bl _0806A61A
	.align 2, 0
_08069DE0: .4byte 0x0000026D
_08069DE4: .4byte 0x0000026E
_08069DE8: .4byte 0x0000027F
_08069DEC: .4byte 0x0000027E
_08069DF0:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _08069E00
	bl _0806A61C
_08069E00:
	ldr r4, _08069E18 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	bne _08069E0A
	b _0806A548
_08069E0A:
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
	b _0806A548
	.align 2, 0
_08069E18: .4byte gUnk_0202A5A8
_08069E1C:
	bl sub_080A0A08
	bl sub_08075A84
	ldr r0, _08069E30 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x20
	bl _0806A61A
	.align 2, 0
_08069E30: .4byte 0x0000027E
_08069E34:
	bl sub_080A0B14
	cmp r0, #0
	beq _08069E40
	bl _0806A61C
_08069E40:
	bl sub_08075AD8
	bl sub_080689EC
	ldr r2, _08069E54 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #2
	bl _0806A61A
	.align 2, 0
_08069E54: .4byte 0x0000027E
_08069E58:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _08069E68
	movs r1, #0
	b _08069EA8
_08069E68:
	bl sub_080197C0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08069E90
	ldr r5, _08069E8C @ =gUnk_0202A5A8
	ldr r0, [r5]
	cmp r0, #0
	beq _08069E86
	bl BattleFree
	str r4, [r5]
	bl sub_0807628C
_08069E86:
	movs r1, #1
	b _08069EA8
	.align 2, 0
_08069E8C: .4byte gUnk_0202A5A8
_08069E90:
	ldr r4, _08069EE8 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _08069EA4
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_08069EA4:
	movs r1, #1
	rsbs r1, r1, #0
_08069EA8:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08069EF4
	cmp r1, #1
	beq _08069EB6
	b _0806A61C
_08069EB6:
	ldr r0, _08069EEC @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, _08069EF0 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r2, #0x10
	b _0806A574
	.align 2, 0
_08069EE8: .4byte gUnk_0202A5A8
_08069EEC: .4byte 0x0000027F
_08069EF0: .4byte 0x0000026D
_08069EF4:
	ldr r0, _08069F3C @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	ldr r1, _08069F40 @ =0x0000027E
	adds r2, r7, r1
	strb r0, [r2]
	ldr r0, _08069F44 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #3
	strb r0, [r1]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08069F48
	movs r0, #0x11
	strb r0, [r2]
	b _0806A61C
	.align 2, 0
_08069F3C: .4byte 0x0000027F
_08069F40: .4byte 0x0000027E
_08069F44: .4byte 0x0000026D
_08069F48:
	movs r0, #0x13
	strb r0, [r2]
	b _0806A61C
_08069F4E:
	movs r0, #0x50
	movs r1, #0x68
	bl sub_080772A0
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	bl sub_08077304
	ldr r0, _08069F6C @ =0x0000027E
	adds r1, r7, r0
	movs r0, #1
	b _0806A61A
	.align 2, 0
_08069F6C: .4byte 0x0000027E
_08069F70:
	bl sub_08081CC8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08069F7C
	b _0806A61C
_08069F7C:
	movs r0, #0x50
	movs r1, #0x68
	bl sub_080772A0
	movs r0, #3
	bl sub_08077304
	ldr r2, _08069F94 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #1
	b _0806A61A
	.align 2, 0
_08069F94: .4byte 0x0000027E
_08069F98:
	bl sub_08143054
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _0806A014
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _08069FF8 @ =gUnk_0202A5AC
	ldr r0, _08069FFC @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	movs r5, #0
	strb r5, [r0]
	ldr r4, _0806A000 @ =gUnk_0202A5A8
	ldr r0, _0806A004 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _0806A008 @ =gUnk_0875C8DE
	movs r1, #4
	str r1, [sp]
	subs r1, #5
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _0806A00C @ =0x0000022F
	movs r3, #0x44
	bl sub_08015D50
	ldr r0, _0806A010 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x23
	b _0806A61A
	.align 2, 0
_08069FF8: .4byte gUnk_0202A5AC
_08069FFC: .4byte gUnk_03000FA0
_0806A000: .4byte gUnk_0202A5A8
_0806A004: .4byte 0x00001C44
_0806A008: .4byte gUnk_0875C8DE
_0806A00C: .4byte 0x0000022F
_0806A010: .4byte 0x0000027E
_0806A014:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _0806A064 @ =gUnk_03000FA0
	adds r0, #0x35
	strb r5, [r0]
	ldr r0, _0806A068 @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _0806A06C @ =gUnk_0202A5A8
	ldr r0, _0806A070 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _0806A074 @ =gUnk_0874A6CC
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _0806A078 @ =0x0000022F
	movs r3, #0x39
	bl sub_08015D50
	ldr r2, _0806A07C @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x24
	b _0806A61A
	.align 2, 0
_0806A064: .4byte gUnk_03000FA0
_0806A068: .4byte gUnk_0202A5AC
_0806A06C: .4byte gUnk_0202A5A8
_0806A070: .4byte 0x00001C44
_0806A074: .4byte gUnk_0874A6CC
_0806A078: .4byte 0x0000022F
_0806A07C: .4byte 0x0000027E
_0806A080:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _0806A08E
	b _0806A61C
_0806A08E:
	ldr r4, _0806A0A8 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	bne _0806A098
	b _0806A548
_0806A098:
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
	b _0806A548
	.align 2, 0
_0806A0A8: .4byte gUnk_0202A5A8
_0806A0AC:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _0806A0BC
	movs r1, #0
	b _0806A0FC
_0806A0BC:
	bl sub_080197C0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0806A0E4
	ldr r5, _0806A0E0 @ =gUnk_0202A5A8
	ldr r0, [r5]
	cmp r0, #0
	beq _0806A0DA
	bl BattleFree
	str r4, [r5]
	bl sub_0807628C
_0806A0DA:
	movs r1, #1
	b _0806A0FC
	.align 2, 0
_0806A0E0: .4byte gUnk_0202A5A8
_0806A0E4:
	ldr r4, _0806A114 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _0806A0F8
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_0806A0F8:
	movs r1, #1
	rsbs r1, r1, #0
_0806A0FC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806A11C
	cmp r1, #1
	beq _0806A10A
	b _0806A61C
_0806A10A:
	ldr r0, _0806A118 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x25
	b _0806A61A
	.align 2, 0
_0806A114: .4byte gUnk_0202A5A8
_0806A118: .4byte 0x0000027E
_0806A11C:
	ldr r2, _0806A130 @ =0x0000026D
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #1
	b _0806A558
	.align 2, 0
_0806A130: .4byte 0x0000026D
_0806A134:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _0806A194 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r5, #0
	strb r5, [r0]
	ldr r0, _0806A198 @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _0806A19C @ =gUnk_0202A5A8
	ldr r0, _0806A1A0 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _0806A1A4 @ =gUnk_0874A6CC
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	adds r1, #8
	str r1, [sp, #0x20]
	ldr r1, _0806A1A8 @ =0x0000022F
	movs r3, #0x3a
	bl sub_08015D50
	ldr r0, _0806A1AC @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x26
	strb r0, [r1]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #8
	strh r0, [r1]
	b _0806A61C
	.align 2, 0
_0806A194: .4byte gUnk_03000FA0
_0806A198: .4byte gUnk_0202A5AC
_0806A19C: .4byte gUnk_0202A5A8
_0806A1A0: .4byte 0x00001C44
_0806A1A4: .4byte gUnk_0874A6CC
_0806A1A8: .4byte 0x0000022F
_0806A1AC: .4byte 0x0000027E
_0806A1B0:
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r7, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _0806A1F4
	movs r0, #0
	bl sub_080030AC
	bl sub_0804BC10
	movs r0, #1
	movs r1, #0
	bl sub_08003038
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r1, r7, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_080030AC
	ldr r0, _0806A22C @ =gUnk_02000000
	ldr r1, _0806A230 @ =0x000013BA
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_081452CC
	bl sub_08019884
_0806A1F4:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _0806A202
	b _0806A61C
_0806A202:
	ldr r4, _0806A234 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _0806A216
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_0806A216:
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806A23C
	ldr r0, _0806A238 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x27
	b _0806A61A
	.align 2, 0
_0806A22C: .4byte gUnk_02000000
_0806A230: .4byte 0x000013BA
_0806A234: .4byte gUnk_0202A5A8
_0806A238: .4byte 0x0000027E
_0806A23C:
	ldr r2, _0806A244 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x2c
	b _0806A61A
	.align 2, 0
_0806A244: .4byte 0x0000027E
_0806A248:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _0806A29C @ =gUnk_03000FA0
	adds r0, #0x35
	movs r5, #0
	strb r5, [r0]
	ldr r0, _0806A2A0 @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _0806A2A4 @ =gUnk_0202A5A8
	ldr r0, _0806A2A8 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _0806A2AC @ =gUnk_0874A6CC
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _0806A2B0 @ =0x0000022F
	movs r3, #0x3b
	bl sub_08015D50
	ldr r0, _0806A2B4 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x28
	b _0806A61A
	.align 2, 0
_0806A29C: .4byte gUnk_03000FA0
_0806A2A0: .4byte gUnk_0202A5AC
_0806A2A4: .4byte gUnk_0202A5A8
_0806A2A8: .4byte 0x00001C44
_0806A2AC: .4byte gUnk_0874A6CC
_0806A2B0: .4byte 0x0000022F
_0806A2B4: .4byte 0x0000027E
_0806A2B8:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _0806A2C6
	b _0806A61C
_0806A2C6:
	ldr r5, _0806A2EC @ =gUnk_0202A5A8
	ldr r0, [r5]
	cmp r0, #0
	beq _0806A2DA
	bl BattleFree
	movs r0, #0
	str r0, [r5]
	bl sub_0807628C
_0806A2DA:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _0806A2F0
	movs r1, #0
	b _0806A326
	.align 2, 0
_0806A2EC: .4byte gUnk_0202A5A8
_0806A2F0:
	bl sub_080197C0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0806A310
	ldr r0, [r5]
	cmp r0, #0
	beq _0806A30C
	bl BattleFree
	str r4, [r5]
	bl sub_0807628C
_0806A30C:
	movs r1, #1
	b _0806A326
_0806A310:
	ldr r0, [r5]
	cmp r0, #0
	beq _0806A322
	bl BattleFree
	movs r0, #0
	str r0, [r5]
	bl sub_0807628C
_0806A322:
	movs r1, #1
	rsbs r1, r1, #0
_0806A326:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806A34C
	cmp r1, #1
	beq _0806A334
	b _0806A61C
_0806A334:
	ldr r2, _0806A348 @ =0x0000026D
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #1
	b _0806A558
	.align 2, 0
_0806A348: .4byte 0x0000026D
_0806A34C:
	movs r0, #0x20
	bl sub_08049930
	ldr r0, _0806A364 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x2b
	strb r0, [r1]
_0806A35A:
	bl sub_08024CA0
	movs r0, #0x63
	b _0806A61E
	.align 2, 0
_0806A364: .4byte 0x0000027E
_0806A368:
	bl sub_08049AA0
	cmp r0, #0
	bne _0806A372
	b _0806A61C
_0806A372:
	ldr r0, _0806A3B4 @ =gUnk_03001064
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0806A3B8 @ =0x04000200
	strh r1, [r0]
	adds r0, #8
	strh r1, [r0]
	ldr r0, _0806A3BC @ =0x04000004
	strh r1, [r0]
	bl m4aSoundVSyncOff
	movs r0, #0xf
	bl sub_08003CDC
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x80
	strh r0, [r1]
	ldr r0, _0806A3C0 @ =gUnk_03000E60
	bl sub_08002DFC
	bl sub_0815D910
	ldr r2, _0806A3C4 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x30
	strb r0, [r1]
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #1
	b _0806A61A
	.align 2, 0
_0806A3B4: .4byte gUnk_03001064
_0806A3B8: .4byte 0x04000200
_0806A3BC: .4byte 0x04000004
_0806A3C0: .4byte gUnk_03000E60
_0806A3C4: .4byte 0x0000027E
_0806A3C8:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _0806A41C @ =gUnk_03000FA0
	adds r0, #0x35
	movs r5, #0
	strb r5, [r0]
	ldr r0, _0806A420 @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _0806A424 @ =gUnk_0202A5A8
	ldr r0, _0806A428 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _0806A42C @ =gUnk_0874A6CC
	movs r1, #3
	str r1, [sp]
	subs r1, #4
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _0806A430 @ =0x0000022F
	movs r3, #0x3c
	bl sub_08015D50
	ldr r2, _0806A434 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x2d
	b _0806A61A
	.align 2, 0
_0806A41C: .4byte gUnk_03000FA0
_0806A420: .4byte gUnk_0202A5AC
_0806A424: .4byte gUnk_0202A5A8
_0806A428: .4byte 0x00001C44
_0806A42C: .4byte gUnk_0874A6CC
_0806A430: .4byte 0x0000022F
_0806A434: .4byte 0x0000027E
_0806A438:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _0806A446
	b _0806A61C
_0806A446:
	ldr r4, _0806A460 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	bne _0806A450
	b _0806A548
_0806A450:
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
	b _0806A548
	.align 2, 0
_0806A460: .4byte gUnk_0202A5A8
_0806A464:
	adds r0, r1, #0
	b _0806A47E
_0806A468:
	ldr r2, _0806A4D8 @ =gUnk_02001CD0
	movs r1, #0
_0806A46C:
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _0806A464
	adds r1, #1
	adds r2, #8
	cmp r1, #0xf
	ble _0806A46C
	movs r0, #1
	rsbs r0, r0, #0
_0806A47E:
	movs r6, #1
	rsbs r6, r6, #0
	cmp r0, r6
	beq _0806A548
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _0806A4DC @ =gUnk_03000FA0
	adds r0, #0x35
	movs r5, #0
	strb r5, [r0]
	ldr r0, _0806A4E0 @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _0806A4E4 @ =gUnk_0202A5A8
	ldr r0, _0806A4E8 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _0806A4EC @ =gUnk_0874A6CC
	movs r1, #3
	str r1, [sp]
	str r6, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r1, #0xff
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _0806A4F0 @ =0x0000022F
	movs r3, #0x3e
	bl sub_08015D50
	ldr r0, _0806A4F4 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x2f
	b _0806A61A
	.align 2, 0
_0806A4D8: .4byte gUnk_02001CD0
_0806A4DC: .4byte gUnk_03000FA0
_0806A4E0: .4byte gUnk_0202A5AC
_0806A4E4: .4byte gUnk_0202A5A8
_0806A4E8: .4byte 0x00001C44
_0806A4EC: .4byte gUnk_0874A6CC
_0806A4F0: .4byte 0x0000022F
_0806A4F4: .4byte 0x0000027E
_0806A4F8:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _0806A506
	b _0806A61C
_0806A506:
	ldr r4, _0806A520 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _0806A51A
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_0806A51A:
	ldr r2, _0806A524 @ =0x0000027E
	adds r1, r7, r2
	b _0806A618
	.align 2, 0
_0806A520: .4byte gUnk_0202A5A8
_0806A524: .4byte 0x0000027E
_0806A528:
	ldr r1, _0806A584 @ =gUnk_02001CD0
	movs r4, #0
	adds r2, r1, #0
_0806A52E:
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _0806A540
	adds r4, #1
	adds r1, #8
	cmp r4, #0xf
	ble _0806A52E
	movs r4, #1
	rsbs r4, r4, #0
_0806A540:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0806A594
_0806A548:
	ldr r0, _0806A588 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806A58C @ =0x0000026E
_0806A558:
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, _0806A590 @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x14
_0806A574:
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	b _0806A61C
	.align 2, 0
_0806A584: .4byte gUnk_02001CD0
_0806A588: .4byte 0x0000026D
_0806A58C: .4byte 0x0000026E
_0806A590: .4byte 0x0000027F
_0806A594:
	lsls r4, r4, #3
	adds r4, r4, r2
	movs r0, #0
	adds r1, r4, #0
	bl sub_08060BC0
	ldrb r0, [r4, #2]
	ldrh r1, [r4]
	movs r2, #1
	bl sub_0805FA58
	adds r0, r4, #0
	movs r1, #8
	bl memzero
	ldr r0, _0806A5C4 @ =0x0000025B
	adds r1, r7, r0
	movs r0, #0x80
	strb r0, [r1]
	ldr r2, _0806A5C8 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x31
	b _0806A61A
	.align 2, 0
_0806A5C4: .4byte 0x0000025B
_0806A5C8: .4byte 0x0000027E
_0806A5CC:
	ldr r0, _0806A5F4 @ =gUnk_03000FA0
	ldrh r1, [r0, #0x2e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806A5E8
	ldr r0, _0806A5F8 @ =0x0000025B
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806A61C
_0806A5E8:
	bl sub_080180B0
	ldr r2, _0806A5FC @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x32
	b _0806A61A
	.align 2, 0
_0806A5F4: .4byte gUnk_03000FA0
_0806A5F8: .4byte 0x0000025B
_0806A5FC: .4byte 0x0000027E
_0806A600:
	ldr r4, _0806A630 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _0806A614
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_0806A614:
	ldr r0, _0806A634 @ =0x0000027E
	adds r1, r7, r0
_0806A618:
	movs r0, #0x30
_0806A61A:
	strb r0, [r1]
_0806A61C:
	movs r0, #0x60
_0806A61E:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806A630: .4byte gUnk_0202A5A8
_0806A634: .4byte 0x0000027E

	thumb_func_start sub_0806A638
sub_0806A638: @ 0x0806A638
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_08075BC8
	cmp r0, #0
	beq _0806A6C0
	bl sub_080A16F8
	cmp r0, #0
	beq _0806A6C0
	bl sub_08075C5C
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_08075DEC
	ldr r0, _0806A6B0 @ =0x0000026D
	adds r2, r6, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806A6B4 @ =0x0000026E
	adds r1, r6, r2
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r3, r6, r0
	ldrb r0, [r3]
	movs r4, #0
	strb r0, [r1]
	ldr r1, _0806A6B8 @ =0x0000027F
	adds r2, r6, r1
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r6, r2
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r2]
	movs r0, #3
	strb r0, [r3]
	ldr r1, _0806A6BC @ =0x0000027E
	adds r0, r6, r1
	strb r4, [r0]
	b _0806A906
	.align 2, 0
_0806A6B0: .4byte 0x0000026D
_0806A6B4: .4byte 0x0000026E
_0806A6B8: .4byte 0x0000027F
_0806A6BC: .4byte 0x0000027E
_0806A6C0:
	bl sub_080A16F8
	cmp r0, #0
	beq _0806A734
	ldr r4, _0806A728 @ =gUnk_03000FA0
	ldr r0, [r4, #0x2c]
	ldr r1, _0806A72C @ =0x00020301
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xa
	cmp r0, r1
	bne _0806A734
	ldrh r0, [r4, #0x3c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x40
	ldrb r1, [r1]
	bl sub_0806D898
	str r0, [r6, #0x40]
	cmp r0, #0
	beq _0806A734
	bl sub_08075C5C
	adds r1, r4, #0
	adds r1, #0x8c
	ldr r2, [r6, #0x40]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	subs r1, #7
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	bl sub_08075BE4
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r6, r2
	str r0, [r1]
	ldr r3, _0806A730 @ =0x0000027E
	adds r1, r6, r3
	movs r0, #9
	strb r0, [r1]
	b _0806A906
	.align 2, 0
_0806A728: .4byte gUnk_03000FA0
_0806A72C: .4byte 0x00020301
_0806A730: .4byte 0x0000027E
_0806A734:
	ldr r4, _0806A7A0 @ =gUnk_03000FA0
	ldrh r1, [r4, #0x2e]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0806A812
	ldrh r1, [r4, #0x2c]
	ldr r0, _0806A7A4 @ =0x00000302
	ands r0, r1
	cmp r0, #0
	bne _0806A812
	bl sub_08075C5C
	ldrh r0, [r4, #0x3c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x40
	ldrb r1, [r1]
	bl sub_0806D898
	str r0, [r6, #0x40]
	cmp r0, #0
	beq _0806A7E8
	movs r0, #0xad
	bl PlaySE
	ldr r1, [r6, #0x40]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	bl sub_0813BE54
	cmp r0, #0
	beq _0806A790
	movs r0, #3
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806A790
	bl sub_080A1738
	cmp r0, #0
	beq _0806A7A8
_0806A790:
	movs r0, #0xae
	lsls r0, r0, #2
	adds r2, r6, r0
	ldrh r1, [r2]
	movs r0, #8
	orrs r0, r1
	b _0806A7B4
	.align 2, 0
_0806A7A0: .4byte gUnk_03000FA0
_0806A7A4: .4byte 0x00000302
_0806A7A8:
	movs r1, #0xae
	lsls r1, r1, #2
	adds r2, r6, r1
	ldrh r1, [r2]
	ldr r0, _0806A7E0 @ =0x0000FFF7
	ands r0, r1
_0806A7B4:
	strh r0, [r2]
	bl sub_08075DD8
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _0806A7E4 @ =gUnk_03000FA0
	ldrh r2, [r0, #0x3c]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r1, r6, r3
	strh r2, [r1]
	adds r0, #0x40
	ldrh r1, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r6, r2
	strh r1, [r0]
	movs r0, #1
	b _0806A908
	.align 2, 0
_0806A7E0: .4byte 0x0000FFF7
_0806A7E4: .4byte gUnk_03000FA0
_0806A7E8:
	movs r0, #0xae
	bl PlaySE
	bl sub_08075D60
	movs r0, #0x88
	lsls r0, r0, #1
	bl sub_08075E08
	movs r0, #9
	bl sub_08142F50
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	eors r1, r5
	movs r0, #9
	bl sub_08142F7C
	bl sub_0806FDE4
_0806A812:
	movs r0, #3
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806A844
	ldr r0, _0806A83C @ =gUnk_03000FA0
	ldr r0, [r0, #0x2c]
	ldr r1, _0806A840 @ =gUnk_02000103
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bne _0806A8E8
	movs r0, #0xaf
	bl PlaySE
	movs r0, #1
	rsbs r0, r0, #0
	b _0806A908
	.align 2, 0
_0806A83C: .4byte gUnk_03000FA0
_0806A840: .4byte gUnk_02000103
_0806A844:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806A8E8
	bl sub_0814301C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0806A8E8
	bl sub_080A16F8
	cmp r0, #0
	beq _0806A8E8
	ldr r5, _0806A8D8 @ =gUnk_03000FA0
	ldrh r1, [r5, #0x2e]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806A8E8
	bl sub_08075C5C
	adds r0, r5, #0
	adds r0, #0x35
	strb r4, [r0]
	ldr r3, _0806A8DC @ =0x0000026D
	adds r5, r6, r3
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0806A8E0 @ =0x0000026E
	adds r4, r6, r1
	adds r0, r4, r0
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r1, r6, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _0806A8E4 @ =0x0000027F
	adds r3, r6, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r6, r1
	adds r0, r2, r0
	movs r1, #7
	strb r1, [r0]
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	movs r0, #3
	strb r0, [r4]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x22
	strb r0, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	b _0806A908
	.align 2, 0
_0806A8D8: .4byte gUnk_03000FA0
_0806A8DC: .4byte 0x0000026D
_0806A8E0: .4byte 0x0000026E
_0806A8E4: .4byte 0x0000027F
_0806A8E8:
	ldr r2, _0806A910 @ =gUnk_03000FA0
	adds r0, r2, #0
	adds r0, #0x95
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806A906
	ldrh r1, [r2, #0x3c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r2, #0
	adds r0, #0x40
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08075D7C
_0806A906:
	movs r0, #0
_0806A908:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806A910: .4byte gUnk_03000FA0

	thumb_func_start sub_0806A914
sub_0806A914: @ 0x0806A914
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806A938
	bl sub_080A16F8
	cmp r0, #0
	beq _0806A938
	bl sub_080A15E8
	movs r0, #0x17
	bl sub_080A1664
_0806A938:
	bl sub_080684AC
	ldr r0, _0806A9F4 @ =0x0000027F
	adds r2, r7, r0
	movs r1, #0
	mov ip, r1
	mov r0, ip
	strb r0, [r2]
	ldr r1, _0806A9F8 @ =0x0000026D
	adds r3, r7, r1
	movs r6, #1
	strb r6, [r3]
	ldr r0, _0806A9FC @ =0x0000026E
	adds r5, r7, r0
	adds r0, r5, #0
	movs r1, #4
	mov r8, r1
	mov r1, r8
	strb r1, [r0]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r4, r7, r1
	adds r0, r4, r0
	mov r1, ip
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r5, r0
	strb r6, [r0]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r4, r0
	movs r1, #0xc
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r5, r0
	strb r6, [r0]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r4, r0
	strb r6, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	movs r0, #5
	strb r0, [r5]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	mov r0, ip
	strb r0, [r4]
	ldr r0, _0806AA00 @ =0x00000269
	adds r1, r7, r0
	movs r0, #3
	strb r0, [r1]
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806AA08
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r6, [r0]
	ldr r0, _0806AA04 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x20
	b _0806AA30
	.align 2, 0
_0806A9F4: .4byte 0x0000027F
_0806A9F8: .4byte 0x0000026D
_0806A9FC: .4byte 0x0000026E
_0806AA00: .4byte 0x00000269
_0806AA04: .4byte 0x0000027E
_0806AA08:
	ldr r0, _0806AA3C @ =0x0000027E
	adds r1, r7, r0
	movs r0, #8
	strb r0, [r1]
	bl sub_0806CD90
	adds r2, r0, #0
	cmp r2, #0
	beq _0806AA32
	ldr r1, _0806AA40 @ =gUnk_03000FA0
	ldr r0, [r2, #4]
	ldrb r0, [r0, #0x14]
	strh r0, [r1, #0x3c]
	ldr r0, [r2, #4]
	ldrb r2, [r0, #0x15]
	adds r0, r1, #0
	adds r0, #0x40
	strh r2, [r0]
	adds r1, #0x35
	mov r0, r8
_0806AA30:
	strb r0, [r1]
_0806AA32:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806AA3C: .4byte 0x0000027E
_0806AA40: .4byte gUnk_03000FA0

	thumb_func_start sub_0806AA44
sub_0806AA44: @ 0x0806AA44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x24
	adds r7, r0, #0
	ldr r1, _0806AA68 @ =0x0000027E
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #9
	bls _0806AA5C
	bl _0806B628
_0806AA5C:
	lsls r0, r0, #2
	ldr r1, _0806AA6C @ =_0806AA70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806AA68: .4byte 0x0000027E
_0806AA6C: .4byte _0806AA70
_0806AA70: @ jump table
	.4byte _0806AA98 @ case 0
	.4byte _0806AB4C @ case 1
	.4byte _0806AE5C @ case 2
	.4byte _0806AF7C @ case 3
	.4byte _0806AF94 @ case 4
	.4byte _0806AFC8 @ case 5
	.4byte _0806B3BE @ case 6
	.4byte _0806AF00 @ case 7
	.4byte _0806B5A8 @ case 8
	.4byte _0806B604 @ case 9
_0806AA98:
	movs r0, #0xbe
	movs r1, #0
	bl sub_08142FC4
	movs r0, #0xbd
	movs r1, #0
	bl sub_08142FC4
	bl sub_080762BC
	bl sub_080A1024
	movs r0, #3
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806AAD2
	movs r0, #0x10
	bl sub_08075E08
	bl sub_0806FDE4
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075E08
	bl sub_08075E24
_0806AAD2:
	bl sub_0814301C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806AAE2
	movs r0, #1
	bl sub_08075B90
_0806AAE2:
	bl sub_08075BC8
	cmp r0, #0
	beq _0806AB4C
	bl sub_0814301C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806AB4C
	ldr r0, _0806AB3C @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806AB40 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r3, r7, r0
	ldrb r0, [r3]
	movs r4, #0
	strb r0, [r1]
	ldr r1, _0806AB44 @ =0x0000027F
	adds r2, r7, r1
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	strb r4, [r0]
	movs r0, #3
	strb r0, [r3]
	ldr r1, _0806AB48 @ =0x0000027E
	adds r0, r7, r1
	strb r4, [r0]
	bl _0806B628
	.align 2, 0
_0806AB3C: .4byte 0x0000026D
_0806AB40: .4byte 0x0000026E
_0806AB44: .4byte 0x0000027F
_0806AB48: .4byte 0x0000027E
_0806AB4C:
	movs r0, #3
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bne _0806ABA4
	movs r0, #0x80
	lsls r0, r0, #9
	bl sub_08075DEC
	movs r0, #0x20
	bl sub_08075E08
	bl sub_08075E24
	bl sub_0806FDE4
	ldr r2, _0806AB98 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #6
	strb r0, [r1]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrh r1, [r2]
	ldr r0, _0806AB9C @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _0806ABA0 @ =gUnk_03000FA0
	adds r0, #0x35
	strb r4, [r0]
	bl _0806B628
	.align 2, 0
_0806AB98: .4byte 0x0000027E
_0806AB9C: .4byte 0x0000FFFE
_0806ABA0: .4byte gUnk_03000FA0
_0806ABA4:
	bl sub_0806D924
	adds r1, r0, #0
	str r1, [r7, #0x40]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0806ABD0
	bl sub_080A169C
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0806ABCC @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x2b
	bl _0806B626
	.align 2, 0
_0806ABCC: .4byte 0x0000027E
_0806ABD0:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0806AC10
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_08075DEC
	movs r0, #0x20
	bl sub_08075DEC
	movs r0, #0x10
	bl sub_08075DEC
	bl sub_0806FDE4
	movs r0, #0
	str r0, [r7, #0x40]
	adds r0, r7, #0
	bl sub_0806A914
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r0, [r2]
	ldr r1, _0806AC0C @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r2]
	bl _0806B628
	.align 2, 0
_0806AC0C: .4byte 0xFFFFF7FF
_0806AC10:
	cmp r1, #0
	bne _0806AC16
	b _0806AD38
_0806AC16:
	movs r0, #3
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806AC24
	b _0806AD38
_0806AC24:
	movs r2, #0xaf
	lsls r2, r2, #2
	adds r4, r7, r2
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4]
	movs r0, #0x10
	bl sub_08075E08
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_08075E24
	bl sub_0806FDE4
	ldr r0, [r4]
	ldr r1, _0806ACEC @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4]
	ldr r0, _0806ACF0 @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806ACF4 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	subs r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0806ACF8 @ =0x0000027F
	adds r3, r7, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r7, r1
	adds r0, r2, r0
	movs r1, #7
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #2
	strb r0, [r2]
	ldr r2, _0806ACFC @ =0x0000027E
	adds r1, r7, r2
	movs r0, #8
	strb r0, [r1]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	ldr r1, _0806AD00 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	ldr r2, [r7, #0x40]
	cmp r2, #0
	beq _0806ACD0
	ldr r1, _0806AD04 @ =gUnk_03000FA0
	ldr r0, [r2, #4]
	ldrb r0, [r0, #0x14]
	strh r0, [r1, #0x3c]
	ldr r0, [r2, #4]
	ldrb r2, [r0, #0x15]
	adds r0, r1, #0
	adds r0, #0x40
	strh r2, [r0]
	adds r1, #0x35
	movs r0, #4
	strb r0, [r1]
_0806ACD0:
	bl sub_0814301C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806AD08
	movs r0, #1
	bl sub_08075B90
	movs r0, #1
	bl sub_08075B6C
	b _0806AD14
	.align 2, 0
_0806ACEC: .4byte 0xFFFFF7FF
_0806ACF0: .4byte 0x0000026D
_0806ACF4: .4byte 0x0000026E
_0806ACF8: .4byte 0x0000027F
_0806ACFC: .4byte 0x0000027E
_0806AD00: .4byte 0x0000FFF7
_0806AD04: .4byte gUnk_03000FA0
_0806AD08:
	movs r0, #0
	bl sub_08075B90
	movs r0, #0
	bl sub_08075B6C
_0806AD14:
	ldr r0, _0806AD30 @ =0x80001000
	bl sub_08075DEC
	ldr r0, _0806AD34 @ =gUnk_03000FA0
	adds r0, #0x51
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_0806D97C
	bl sub_0806DA00
	bl _0806B628
	.align 2, 0
_0806AD30: .4byte 0x80001000
_0806AD34: .4byte gUnk_03000FA0
_0806AD38:
	movs r0, #0x10
	bl sub_08075E08
	bl sub_0806FDE4
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075E08
	bl sub_08075E24
	movs r1, #0xae
	lsls r1, r1, #2
	adds r2, r7, r1
	ldrh r1, [r2]
	ldr r0, _0806AE18 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0806AE1C @ =0x0000026A
	adds r1, r7, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0806AE20 @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806AE24 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	subs r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0806AE28 @ =0x0000027F
	adds r2, r7, r0
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	movs r1, #7
	strb r1, [r0]
	ldr r0, _0806AE2C @ =0x0000027E
	adds r1, r7, r0
	movs r0, #8
	strb r0, [r1]
	movs r0, #0
	bl sub_08075B6C
	bl sub_0806CD90
	adds r5, r0, #0
	cmp r5, #0
	beq _0806AE40
	ldr r4, _0806AE30 @ =gUnk_03000FA0
	adds r1, r4, #0
	adds r1, #0x51
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806AE34 @ =0x80001000
	bl sub_08075E08
	movs r0, #1
	bl sub_08075B90
	movs r0, #1
	bl sub_0806D97C
	bl sub_0806DA00
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r6, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r6
	cmp r0, #0
	beq _0806AE02
	ldr r0, [r5, #4]
	ldrb r0, [r0, #0x14]
	strh r0, [r4, #0x3c]
	ldr r0, [r5, #4]
	ldrb r1, [r0, #0x15]
	adds r0, r4, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x35
	movs r0, #4
	strb r0, [r1]
	ldr r0, _0806AE38 @ =0xFFFBFFFF
	ands r6, r0
	str r6, [r2]
_0806AE02:
	ldr r0, [r2]
	ldr r1, _0806AE3C @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075E08
	bl _0806B628
	.align 2, 0
_0806AE18: .4byte 0x0000FFFE
_0806AE1C: .4byte 0x0000026A
_0806AE20: .4byte 0x0000026D
_0806AE24: .4byte 0x0000026E
_0806AE28: .4byte 0x0000027F
_0806AE2C: .4byte 0x0000027E
_0806AE30: .4byte gUnk_03000FA0
_0806AE34: .4byte 0x80001000
_0806AE38: .4byte 0xFFFBFFFF
_0806AE3C: .4byte 0xFFFFF7FF
_0806AE40:
	adds r0, r7, #0
	bl sub_0806A914
	movs r2, #0xaf
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r1, [r0]
	ldr r2, _0806AE58 @ =0xFFFFF7FF
	ands r1, r2
	str r1, [r0]
	bl _0806B628
	.align 2, 0
_0806AE58: .4byte 0xFFFFF7FF
_0806AE5C:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806AEC8
	movs r0, #0
	bl sub_08142FAC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806AE7E
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806AE98
_0806AE7E:
	movs r0, #1
	bl sub_08142FAC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806AEC8
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806AEC8
_0806AE98:
	ldr r0, [r7, #0x40]
	ldr r0, [r0, #4]
	ldrb r1, [r0, #0xc]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #0
	beq _0806AEAE
	bl sub_080A16F8
	cmp r0, #0
	bne _0806AEC8
_0806AEAE:
	ldr r0, _0806AEC4 @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	b _0806B5E6
	.align 2, 0
_0806AEC4: .4byte 0x0000027F
_0806AEC8:
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [r0]
	cmp r2, #0
	bne _0806AED6
	b _0806B628
_0806AED6:
	ldr r0, [r7, #0x40]
	adds r1, #4
	adds r4, r7, r1
	ldr r1, [r4]
	bl _call_via_r2
	str r0, [r4]
	cmp r0, #0
	beq _0806AEEA
	b _0806B628
_0806AEEA:
	ldr r2, _0806AEFC @ =0x0000027F
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #1
	b _0806B5E6
	.align 2, 0
_0806AEFC: .4byte 0x0000027F
_0806AF00:
	movs r0, #0x10
	bl sub_08075E08
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075E08
	bl sub_0806FDE4
	bl sub_08075E24
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806AF30
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075E08
	b _0806AF40
_0806AF30:
	ldr r0, _0806AF68 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
_0806AF40:
	movs r0, #3
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806AF70
	movs r0, #0x80
	lsls r0, r0, #9
	bl sub_08075DEC
	ldr r2, _0806AF6C @ =0x0000027E
	adds r1, r7, r2
	movs r0, #6
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	b _0806B628
	.align 2, 0
_0806AF68: .4byte gUnk_03000FA0
_0806AF6C: .4byte 0x0000027E
_0806AF70:
	ldr r0, _0806AF78 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #5
	b _0806B626
	.align 2, 0
_0806AF78: .4byte 0x0000027E
_0806AF7C:
	bl sub_080763DC
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	ldr r0, _0806AF90 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #4
	b _0806B626
	.align 2, 0
_0806AF90: .4byte 0x0000027E
_0806AF94:
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r4, r7, r1
	ldr r0, [r4]
	bl sub_080758B0
	adds r5, r0, #0
	cmp r5, #0
	beq _0806AFA8
	b _0806B628
_0806AFA8:
	ldr r0, [r4]
	bl nullsub_7
	str r5, [r4]
	ldr r2, _0806AFC4 @ =0x0000026D
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #1
	b _0806B5CA
	.align 2, 0
_0806AFC4: .4byte 0x0000026D
_0806AFC8:
	movs r0, #0x4c
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B0CC
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B0CC
	bl sub_0814301C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B0CC
	ldr r0, _0806B09C @ =gUnk_02000000
	ldr r1, _0806B0A0 @ =0x000013BC
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	bls _0806B0CC
	movs r2, #0xae
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrh r0, [r0]
	movs r6, #1
	adds r5, r6, #0
	ands r5, r0
	cmp r5, #0
	bne _0806B0CC
	movs r0, #0x4c
	movs r1, #1
	bl sub_08142F7C
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _0806B0A4 @ =gUnk_0202A5AC
	ldr r0, _0806B0A8 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldr r4, _0806B0AC @ =gUnk_0202A5A8
	ldr r0, _0806B0B0 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _0806B0B4 @ =gUnk_0875D99A
	movs r3, #2
	str r3, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _0806B0B8 @ =0x0000022F
	movs r3, #0x20
	bl sub_08015D50
	ldr r0, _0806B0BC @ =0x0000027F
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r0
	ldr r0, _0806B0C0 @ =0x0000027E
	adds r3, r7, r0
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r1, _0806B0C4 @ =0x0000026D
	adds r2, r7, r1
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806B0C8 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2]
	b _0806B372
	.align 2, 0
_0806B09C: .4byte gUnk_02000000
_0806B0A0: .4byte 0x000013BC
_0806B0A4: .4byte gUnk_0202A5AC
_0806B0A8: .4byte gUnk_03000FA0
_0806B0AC: .4byte gUnk_0202A5A8
_0806B0B0: .4byte 0x00001C44
_0806B0B4: .4byte gUnk_0875D99A
_0806B0B8: .4byte 0x0000022F
_0806B0BC: .4byte 0x0000027F
_0806B0C0: .4byte 0x0000027E
_0806B0C4: .4byte 0x0000026D
_0806B0C8: .4byte 0x0000026E
_0806B0CC:
	movs r0, #0x4d
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B1BC
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B1BC
	bl sub_0814301C
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bne _0806B1BC
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r0, [r0]
	adds r5, r6, #0
	ands r5, r0
	cmp r5, #0
	bne _0806B1BC
	movs r0, #0x4d
	movs r1, #1
	bl sub_08142F7C
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _0806B194 @ =gUnk_0202A5AC
	ldr r0, _0806B198 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldr r4, _0806B19C @ =gUnk_0202A5A8
	ldr r0, _0806B1A0 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _0806B1A4 @ =gUnk_0875D99A
	movs r3, #2
	str r3, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _0806B1A8 @ =0x0000022F
	movs r3, #0x21
	bl sub_08015D50
	ldr r0, _0806B1AC @ =0x0000027F
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r0
	ldr r0, _0806B1B0 @ =0x0000027E
	adds r3, r7, r0
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r1, _0806B1B4 @ =0x0000026D
	adds r2, r7, r1
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806B1B8 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2]
	b _0806B372
	.align 2, 0
_0806B194: .4byte gUnk_0202A5AC
_0806B198: .4byte gUnk_03000FA0
_0806B19C: .4byte gUnk_0202A5A8
_0806B1A0: .4byte 0x00001C44
_0806B1A4: .4byte gUnk_0875D99A
_0806B1A8: .4byte 0x0000022F
_0806B1AC: .4byte 0x0000027F
_0806B1B0: .4byte 0x0000027E
_0806B1B4: .4byte 0x0000026D
_0806B1B8: .4byte 0x0000026E
_0806B1BC:
	ldr r1, _0806B29C @ =0x000002D6
	adds r2, r7, r1
	ldrb r0, [r2]
	cmp r0, #0
	beq _0806B1C8
	b _0806B3A0
_0806B1C8:
	subs r1, #0x1e
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r0, #1
	mov r8, r0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806B1DC
	b _0806B3A0
_0806B1DC:
	mov r1, r8
	strb r1, [r2]
	movs r0, #0x40
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bne _0806B2C8
	movs r0, #0x41
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B2C8
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0806B2C8
	movs r0, #0x41
	movs r1, #1
	bl sub_08142F7C
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _0806B2A0 @ =gUnk_0202A5AC
	ldr r0, _0806B2A4 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldr r4, _0806B2A8 @ =gUnk_0202A5A8
	ldr r0, _0806B2AC @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _0806B2B0 @ =gUnk_0875D99A
	movs r3, #2
	str r3, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _0806B2B4 @ =0x0000022F
	movs r3, #0x12
	bl sub_08015D50
	ldr r0, _0806B2B8 @ =0x0000027F
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r0
	ldr r0, _0806B2BC @ =0x0000027E
	adds r3, r7, r0
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r1, _0806B2C0 @ =0x0000026D
	adds r2, r7, r1
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806B2C4 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrb r0, [r2]
	strb r0, [r1]
	mov r1, r8
	strb r1, [r2]
	b _0806B372
	.align 2, 0
_0806B29C: .4byte 0x000002D6
_0806B2A0: .4byte gUnk_0202A5AC
_0806B2A4: .4byte gUnk_03000FA0
_0806B2A8: .4byte gUnk_0202A5A8
_0806B2AC: .4byte 0x00001C44
_0806B2B0: .4byte gUnk_0875D99A
_0806B2B4: .4byte 0x0000022F
_0806B2B8: .4byte 0x0000027F
_0806B2BC: .4byte 0x0000027E
_0806B2C0: .4byte 0x0000026D
_0806B2C4: .4byte 0x0000026E
_0806B2C8:
	movs r0, #0x40
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B3A0
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0806B3A0
	movs r0, #0x40
	movs r1, #1
	bl sub_08142F7C
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _0806B378 @ =gUnk_0202A5AC
	ldr r0, _0806B37C @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldr r4, _0806B380 @ =gUnk_0202A5A8
	ldr r0, _0806B384 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _0806B388 @ =gUnk_0875D99A
	movs r3, #2
	str r3, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	movs r4, #1
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _0806B38C @ =0x0000022F
	movs r3, #0x11
	bl sub_08015D50
	ldr r0, _0806B390 @ =0x0000027F
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r0
	ldr r0, _0806B394 @ =0x0000027E
	adds r3, r7, r0
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r1, _0806B398 @ =0x0000026D
	adds r2, r7, r1
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806B39C @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrb r0, [r2]
	strb r0, [r1]
	strb r4, [r2]
_0806B372:
	movs r0, #0x2e
	strb r0, [r3]
	b _0806B628
	.align 2, 0
_0806B378: .4byte gUnk_0202A5AC
_0806B37C: .4byte gUnk_03000FA0
_0806B380: .4byte gUnk_0202A5A8
_0806B384: .4byte 0x00001C44
_0806B388: .4byte gUnk_0875D99A
_0806B38C: .4byte 0x0000022F
_0806B390: .4byte 0x0000027F
_0806B394: .4byte 0x0000027E
_0806B398: .4byte 0x0000026D
_0806B39C: .4byte 0x0000026E
_0806B3A0:
	ldr r2, _0806B3F8 @ =0x000002D6
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	subs r2, #0x1e
	adds r1, r7, r2
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0806B3B6
	b _0806B4B2
_0806B3B6:
	ldr r0, _0806B3FC @ =gUnk_03000FA0
	adds r0, #0x35
	movs r1, #1
	strb r1, [r0]
_0806B3BE:
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r0, [r0]
	movs r6, #1
	movs r4, #1
	ands r4, r0
	cmp r4, #0
	bne _0806B4B2
	ldr r0, _0806B3FC @ =gUnk_03000FA0
	adds r5, r0, #0
	adds r5, #0x35
	strb r6, [r5]
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806B404
	bl sub_080A10C4
	cmp r0, #0
	beq _0806B404
	ldr r2, _0806B400 @ =0x0000027E
	adds r0, r7, r2
	strb r6, [r0]
	bl sub_08075C5C
	strb r4, [r5]
	b _0806B628
	.align 2, 0
_0806B3F8: .4byte 0x000002D6
_0806B3FC: .4byte gUnk_03000FA0
_0806B400: .4byte 0x0000027E
_0806B404:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806B422
	bl sub_080A16F8
	cmp r0, #0
	beq _0806B422
	ldr r0, _0806B478 @ =gUnk_03000FA0
	ldrh r1, [r0, #0x2e]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0806B438
_0806B422:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B48C
	ldr r0, _0806B478 @ =gUnk_03000FA0
	ldrh r1, [r0, #0x2e]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806B48C
_0806B438:
	ldr r0, _0806B47C @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806B480 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	subs r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0806B484 @ =0x0000027F
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r0
	ldr r0, _0806B488 @ =0x0000027E
	adds r2, r7, r0
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #3
	strb r0, [r2]
	b _0806B628
	.align 2, 0
_0806B478: .4byte gUnk_03000FA0
_0806B47C: .4byte 0x0000026D
_0806B480: .4byte 0x0000026E
_0806B484: .4byte 0x0000027F
_0806B488: .4byte 0x0000027E
_0806B48C:
	adds r0, r7, #0
	bl sub_0806A638
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806B530
	cmp r1, #1
	beq _0806B4A2
	b _0806B628
_0806B4A2:
	movs r0, #0
	bl sub_08075B90
	movs r0, #0
	bl sub_08075B6C
	bl sub_08075BB8
_0806B4B2:
	ldr r2, _0806B51C @ =0x0000027E
	adds r1, r7, r2
	movs r6, #0
	movs r0, #8
	strb r0, [r1]
	ldr r0, _0806B520 @ =0x0000026D
	adds r5, r7, r0
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0806B524 @ =0x0000026E
	adds r4, r7, r1
	adds r0, r4, r0
	subs r2, #0x12
	adds r1, r7, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _0806B528 @ =0x0000027F
	adds r3, r7, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r7, r1
	adds r0, r2, r0
	movs r1, #7
	strb r1, [r0]
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	movs r0, #6
	strb r0, [r4]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	strb r6, [r2]
	ldr r0, _0806B52C @ =gUnk_03000FA0
	adds r0, #0x35
	movs r1, #4
	strb r1, [r0]
	b _0806B628
	.align 2, 0
_0806B51C: .4byte 0x0000027E
_0806B520: .4byte 0x0000026D
_0806B524: .4byte 0x0000026E
_0806B528: .4byte 0x0000027F
_0806B52C: .4byte gUnk_03000FA0
_0806B530:
	movs r0, #1
	bl sub_08075B90
	movs r0, #0
	bl sub_08075B6C
	bl sub_08075BB8
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_08075DEC
	movs r0, #0x20
	bl sub_08075DEC
	movs r0, #0x10
	bl sub_08075DEC
	ldr r2, _0806B59C @ =0x0000027E
	adds r4, r7, r2
	ldrb r0, [r4]
	cmp r0, #6
	bne _0806B566
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_08075DEC
_0806B566:
	bl sub_08075C5C
	bl sub_0806FDE4
	ldr r0, _0806B5A0 @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4]
	ldr r0, _0806B5A4 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r2, #0x12
	b _0806B5E6
	.align 2, 0
_0806B59C: .4byte 0x0000027E
_0806B5A0: .4byte 0x0000027F
_0806B5A4: .4byte 0x0000026D
_0806B5A8:
	ldr r1, _0806B5F4 @ =gUnk_03000FA0
	adds r0, r1, #0
	adds r0, #0x95
	ldrb r0, [r0]
	cmp r0, #1
	beq _0806B628
	adds r1, #0x35
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806B5F8 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806B5FC @ =0x0000026E
_0806B5CA:
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, _0806B600 @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x14
_0806B5E6:
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	b _0806B628
	.align 2, 0
_0806B5F4: .4byte gUnk_03000FA0
_0806B5F8: .4byte 0x0000026D
_0806B5FC: .4byte 0x0000026E
_0806B600: .4byte 0x0000027F
_0806B604:
	ldr r0, _0806B638 @ =gUnk_03000FA0
	adds r0, #0x89
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806B628
	movs r0, #2
	bl sub_0806D970
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	bl sub_08075BF0
	ldr r2, _0806B63C @ =0x0000027E
	adds r1, r7, r2
	movs r0, #7
_0806B626:
	strb r0, [r1]
_0806B628:
	movs r0, #9
	add sp, #0x24
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806B638: .4byte gUnk_03000FA0
_0806B63C: .4byte 0x0000027E

	thumb_func_start sub_0806B640
sub_0806B640: @ 0x0806B640
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r4, [r5]
	cmp r4, #0x64
	bne _0806B64C
	b _0806BA50
_0806B64C:
	cmp r4, #0x64
	bgt _0806B66A
	cmp r4, #0x62
	beq _0806B6B0
	cmp r4, #0x62
	ble _0806B65A
	b _0806B9C4
_0806B65A:
	cmp r4, #0x61
	bne _0806B660
	b _0806B7E0
_0806B660:
	cmp r4, #0
	beq _0806B67E
	cmp r4, #0x60
	beq _0806B6C4
	b _0806BA50
_0806B66A:
	cmp r4, #0x66
	bne _0806B670
	b _0806B870
_0806B670:
	cmp r4, #0x66
	bge _0806B676
	b _0806B92C
_0806B676:
	cmp r4, #0x67
	bne _0806B67C
	b _0806B8C8
_0806B67C:
	b _0806BA50
_0806B67E:
	bl sub_080767B4
	ldr r1, _0806B6AC @ =gUnk_03000FA0
	adds r0, r1, #0
	adds r0, #0x95
	ldrb r0, [r0]
	cmp r0, #1
	bne _0806B690
	b _0806BA50
_0806B690:
	adds r0, r1, #0
	adds r0, #0x35
	strb r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	bl sub_0806DA48
	bl sub_080A1688
	bl sub_0806035C
	b _0806BA4E
	.align 2, 0
_0806B6AC: .4byte gUnk_03000FA0
_0806B6B0:
	ldr r0, _0806B6C0 @ =gUnk_03000FA0
	adds r0, #0x95
	ldrb r0, [r0]
	cmp r0, #1
	bne _0806B6BC
	b _0806BA50
_0806B6BC:
	movs r0, #0x60
	b _0806BA4E
	.align 2, 0
_0806B6C0: .4byte gUnk_03000FA0
_0806B6C4:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806B730
	bl sub_080A1588
	cmp r0, #0
	bne _0806B730
	ldr r4, _0806B728 @ =gUnk_0202A88C
	ldr r0, [r4]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	bne _0806B730
	movs r0, #0x61
	strb r0, [r5]
	movs r0, #0x20
	bl sub_0806D970
	bl sub_08075D38
	movs r0, #0
	movs r1, #0
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_08076674
	ldr r0, [r4]
	ldr r1, _0806B72C @ =0x0000027E
	adds r0, r0, r1
	movs r1, #0x2b
	strb r1, [r0]
	ldr r0, [r4]
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bl MultiSioStop
	movs r0, #2
	bl sub_0814531C
	b _0806BA50
	.align 2, 0
_0806B728: .4byte gUnk_0202A88C
_0806B72C: .4byte 0x0000027E
_0806B730:
	bl sub_08075BFC
	cmp r0, #1
	bne _0806B73A
	b _0806BA50
_0806B73A:
	ldr r0, _0806B754 @ =gUnk_0202A88C
	ldr r2, [r0]
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #7
	bhi _0806B7BA
	lsls r0, r0, #2
	ldr r1, _0806B758 @ =_0806B75C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806B754: .4byte gUnk_0202A88C
_0806B758: .4byte _0806B75C
_0806B75C: @ jump table
	.4byte _0806B77C @ case 0
	.4byte _0806B784 @ case 1
	.4byte _0806B78C @ case 2
	.4byte _0806B794 @ case 3
	.4byte _0806B79C @ case 4
	.4byte _0806B7A4 @ case 5
	.4byte _0806B7AC @ case 6
	.4byte _0806B7B4 @ case 7
_0806B77C:
	adds r0, r2, #0
	bl sub_08063B80
	b _0806B7BA
_0806B784:
	adds r0, r2, #0
	bl sub_080643B4
	b _0806B7BC
_0806B78C:
	adds r0, r2, #0
	bl sub_08067C04
	b _0806B7BA
_0806B794:
	adds r0, r2, #0
	bl sub_08068F1C
	b _0806B7BC
_0806B79C:
	adds r0, r2, #0
	bl sub_0806AA44
	b _0806B7BA
_0806B7A4:
	adds r0, r2, #0
	bl sub_0806377C
	b _0806B7BC
_0806B7AC:
	adds r0, r2, #0
	bl BattlePhaseMove
	b _0806B7BA
_0806B7B4:
	adds r0, r2, #0
	bl sub_08060E54
_0806B7BA:
	movs r0, #0x60
_0806B7BC:
	strb r0, [r5]
	ldr r5, _0806B7DC @ =gUnk_0202A88C
	ldr r0, [r5]
	movs r4, #0xde
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08083EB4
	ldr r1, [r5]
	adds r1, r1, r4
	str r0, [r1]
	bl sub_080A1548
	b _0806BA50
	.align 2, 0
_0806B7DC: .4byte gUnk_0202A88C
_0806B7E0:
	ldr r0, _0806B7FC @ =gUnk_0202A88C
	ldr r2, [r0]
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #7
	bhi _0806B862
	lsls r0, r0, #2
	ldr r1, _0806B800 @ =_0806B804
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806B7FC: .4byte gUnk_0202A88C
_0806B800: .4byte _0806B804
_0806B804: @ jump table
	.4byte _0806B824 @ case 0
	.4byte _0806B82C @ case 1
	.4byte _0806B834 @ case 2
	.4byte _0806B83C @ case 3
	.4byte _0806B844 @ case 4
	.4byte _0806B84C @ case 5
	.4byte _0806B854 @ case 6
	.4byte _0806B85C @ case 7
_0806B824:
	adds r0, r2, #0
	bl sub_08063B80
	b _0806B862
_0806B82C:
	adds r0, r2, #0
	bl sub_080643B4
	b _0806B864
_0806B834:
	adds r0, r2, #0
	bl sub_08067C04
	b _0806B862
_0806B83C:
	adds r0, r2, #0
	bl sub_08068F1C
	b _0806B864
_0806B844:
	adds r0, r2, #0
	bl sub_0806AA44
	b _0806B862
_0806B84C:
	adds r0, r2, #0
	bl sub_0806377C
	b _0806B864
_0806B854:
	adds r0, r2, #0
	bl BattlePhaseMove
	b _0806B862
_0806B85C:
	adds r0, r2, #0
	bl sub_08060E54
_0806B862:
	movs r0, #0x60
_0806B864:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x60
	bne _0806B86E
	b _0806BA50
_0806B86E:
	b _0806BA4E
_0806B870:
	ldr r4, _0806B8C0 @ =gUnk_0202A88C
	ldr r2, [r4]
	movs r6, #0xaf
	lsls r6, r6, #2
	adds r0, r2, r6
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0806B8A6
	ldr r1, _0806B8C4 @ =0x000002D7
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0
	bl sub_08142FC4
	ldr r0, [r4]
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	bl sub_08142FC4
	bl sub_0811FC9C
_0806B8A6:
	ldr r0, [r4]
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0806B8BA
	bl sub_0811FC9C
_0806B8BA:
	movs r0, #0x67
	b _0806BA4E
	.align 2, 0
_0806B8C0: .4byte gUnk_0202A88C
_0806B8C4: .4byte 0x000002D7
_0806B8C8:
	ldr r0, _0806B8F0 @ =gUnk_0202A88C
	ldr r0, [r0]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806B900
	movs r0, #0x80
	lsls r0, r0, #7
	ands r1, r0
	cmp r1, #0
	beq _0806B8F4
	bl sub_0811FD2C
	lsls r0, r0, #0x10
	b _0806B8FA
	.align 2, 0
_0806B8F0: .4byte gUnk_0202A88C
_0806B8F4:
	bl sub_08120164
	lsls r0, r0, #0x18
_0806B8FA:
	cmp r0, #0
	bne _0806B900
	b _0806BA50
_0806B900:
	ldr r0, _0806B928 @ =gUnk_0202A88C
	ldr r0, [r0]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0806B922
	bl sub_0811FD2C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806B922
	b _0806BA50
_0806B922:
	movs r0, #0x65
	b _0806BA4E
	.align 2, 0
_0806B928: .4byte gUnk_0202A88C
_0806B92C:
	movs r0, #1
	bl sub_080030AC
	ldr r0, _0806B978 @ =gUnk_0202A88C
	ldr r0, [r0]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0806B980
	movs r0, #0x64
	strb r0, [r5]
	movs r0, #0
	movs r1, #0
	bl sub_08142F7C
	bl sub_08142FEC
	movs r0, #3
	movs r1, #0
	bl sub_08142F7C
	movs r0, #7
	movs r1, #0
	bl sub_08142F7C
	bl sub_0805B3AC
	ldr r1, _0806B97C @ =gUnk_03000FA0
	movs r0, #0xfe
	strb r0, [r1, #1]
	movs r0, #4
	strb r0, [r1]
	b _0806BA50
	.align 2, 0
_0806B978: .4byte gUnk_0202A88C
_0806B97C: .4byte gUnk_03000FA0
_0806B980:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0806BA50
	movs r0, #0x64
	strb r0, [r5]
	movs r0, #0
	movs r1, #0
	bl sub_08142F7C
	bl sub_08142FEC
	movs r0, #3
	movs r1, #0
	bl sub_08142F7C
	movs r0, #7
	movs r1, #0
	bl sub_08142F7C
	bl sub_0805B3AC
	ldr r1, _0806B9C0 @ =gUnk_03000FA0
	movs r0, #0xfe
	strb r0, [r1, #1]
	movs r0, #2
	strb r0, [r1]
	bl MultiSioStop
	b _0806BA50
	.align 2, 0
_0806B9C0: .4byte gUnk_03000FA0
_0806B9C4:
	bl sub_08049AA0
	cmp r0, #0
	beq _0806BA50
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B9E2
	bl sub_08143054
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0806BA00
_0806B9E2:
	movs r0, #0
	bl sub_080030AC
	ldr r0, _0806B9F8 @ =gUnk_02000000
	ldr r1, _0806B9FC @ =0x000013BA
	adds r0, r0, r1
	movs r1, #0xa
	strb r1, [r0]
	movs r0, #0x66
	b _0806BA4E
	.align 2, 0
_0806B9F8: .4byte gUnk_02000000
_0806B9FC: .4byte 0x000013BA
_0806BA00:
	movs r0, #0
	movs r1, #0
	bl sub_08142F7C
	bl sub_08142FEC
	movs r0, #3
	movs r1, #0
	bl sub_08142F7C
	movs r0, #7
	movs r1, #0
	bl sub_08142F7C
	bl sub_0805B3AC
	ldr r0, _0806BA58 @ =gUnk_03001064
	strh r4, [r0]
	ldr r0, _0806BA5C @ =0x04000200
	strh r4, [r0]
	adds r0, #8
	strh r4, [r0]
	ldr r0, _0806BA60 @ =0x04000004
	strh r4, [r0]
	bl m4aSoundVSyncOff
	movs r0, #0xf
	bl sub_08003CDC
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x80
	strh r0, [r1]
	ldr r0, _0806BA64 @ =gUnk_03000E60
	bl sub_08002DFC
	bl sub_0815D910
	movs r0, #0x64
_0806BA4E:
	strb r0, [r5]
_0806BA50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806BA58: .4byte gUnk_03001064
_0806BA5C: .4byte 0x04000200
_0806BA60: .4byte 0x04000004
_0806BA64: .4byte gUnk_03000E60

	thumb_func_start sub_0806BA68
sub_0806BA68: @ 0x0806BA68
	push {r4, lr}
	ldr r3, _0806BA84 @ =gUnk_0202A88C
	ldr r2, [r3]
	movs r4, #0xd6
	lsls r4, r4, #1
	adds r2, r2, r4
	strb r0, [r2]
	ldr r0, [r3]
	ldr r2, _0806BA88 @ =0x000001AD
	adds r0, r0, r2
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806BA84: .4byte gUnk_0202A88C
_0806BA88: .4byte 0x000001AD

	thumb_func_start sub_0806BA8C
sub_0806BA8C: @ 0x0806BA8C
	ldr r1, _0806BA9C @ =gUnk_0202A88C
	ldr r1, [r1]
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_0806BA9C: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BAA0
sub_0806BAA0: @ 0x0806BAA0
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0806BAC4 @ =gUnk_0202A88C
	ldr r3, [r2]
	movs r4, #0xd8
	lsls r4, r4, #1
	adds r2, r3, r4
	strh r0, [r2]
	movs r2, #0xda
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806BAC4: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BAC8
sub_0806BAC8: @ 0x0806BAC8
	ldr r1, _0806BAD8 @ =gUnk_0202A88C
	ldr r1, [r1]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_0806BAD8: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BADC
sub_0806BADC: @ 0x0806BADC
	ldr r1, _0806BAEC @ =gUnk_0202A88C
	ldr r1, [r1]
	movs r2, #0xdd
	lsls r2, r2, #1
	adds r1, r1, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_0806BAEC: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BAF0
sub_0806BAF0: @ 0x0806BAF0
	ldr r0, _0806BAFC @ =gUnk_0202A88C
	ldr r0, [r0]
	ldr r1, _0806BB00 @ =0x000002D5
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0806BAFC: .4byte gUnk_0202A88C
_0806BB00: .4byte 0x000002D5

	thumb_func_start sub_0806BB04
sub_0806BB04: @ 0x0806BB04
	ldr r1, _0806BB10 @ =gUnk_0202A88C
	ldr r1, [r1]
	ldr r2, _0806BB14 @ =0x000002D5
	adds r1, r1, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_0806BB10: .4byte gUnk_0202A88C
_0806BB14: .4byte 0x000002D5

	thumb_func_start sub_0806BB18
sub_0806BB18: @ 0x0806BB18
	ldr r1, _0806BB28 @ =gUnk_0202A88C
	ldr r1, [r1]
	movs r2, #0xd2
	lsls r2, r2, #1
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_0806BB28: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BB2C
sub_0806BB2C: @ 0x0806BB2C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r4, _0806BB80 @ =gUnk_0202A88C
	ldr r0, [r4]
	movs r6, #0xbe
	lsls r6, r6, #1
	adds r0, r0, r6
	ldr r0, [r0]
	movs r7, #1
	cmp r0, #0
	bne _0806BB54
	movs r7, #0
	ldr r0, _0806BB84 @ =0x00002144
	bl BattleAlloc
	ldr r1, [r4]
	adds r1, r1, r6
	str r0, [r1]
_0806BB54:
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r3, r0, #0
	orrs r3, r0
	lsrs r3, r3, #0x1f
	ldr r0, [r4]
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r1, _0806BB88 @ =0x0000022F
	ldr r2, _0806BB8C @ =0x000001D7
	str r5, [sp]
	str r7, [sp, #4]
	bl sub_0807CEBC
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806BB80: .4byte gUnk_0202A88C
_0806BB84: .4byte 0x00002144
_0806BB88: .4byte 0x0000022F
_0806BB8C: .4byte 0x000001D7

	thumb_func_start sub_0806BB90
sub_0806BB90: @ 0x0806BB90
	push {r4, r5, lr}
	ldr r5, _0806BBB4 @ =gUnk_0202A88C
	ldr r0, [r5]
	movs r4, #0xbe
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0806BBA6
	bl BattleFree
_0806BBA6:
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806BBB4: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BBB8
sub_0806BBB8: @ 0x0806BBB8
	push {lr}
	ldr r0, _0806BBD0 @ =gUnk_0202A88C
	ldr r0, [r0]
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0808D054
	pop {r1}
	bx r1
	.align 2, 0
_0806BBD0: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BBD4
sub_0806BBD4: @ 0x0806BBD4
	push {lr}
	ldr r0, _0806BBF0 @ =gUnk_0202A88C
	ldr r0, [r0]
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0808CC14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0
_0806BBF0: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BBF4
sub_0806BBF4: @ 0x0806BBF4
	push {lr}
	ldr r0, _0806BC0C @ =gUnk_0202A88C
	ldr r0, [r0]
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0808D034
	pop {r1}
	bx r1
	.align 2, 0
_0806BC0C: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BC10
sub_0806BC10: @ 0x0806BC10
	push {lr}
	ldr r0, _0806BC28 @ =gUnk_0202A88C
	ldr r0, [r0]
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0808D048
	pop {r1}
	bx r1
	.align 2, 0
_0806BC28: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BC2C
sub_0806BC2C: @ 0x0806BC2C
	push {lr}
	ldr r0, _0806BC44 @ =gUnk_0202A88C
	ldr r0, [r0]
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0808D058
	pop {r1}
	bx r1
	.align 2, 0
_0806BC44: .4byte gUnk_0202A88C

	thumb_func_start sub_0806BC48
sub_0806BC48: @ 0x0806BC48
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsls r1, r1, #0x18
	ldr r0, _0806BC64 @ =gUnk_0202A88C
	ldr r0, [r0]
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r0, r0, r3
	lsrs r2, r2, #0x14
	ldr r0, [r0]
	adds r0, r0, r2
	lsrs r1, r1, #0xf
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0806BC64: .4byte gUnk_0202A88C
