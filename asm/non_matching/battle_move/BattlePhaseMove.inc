	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r7, r0, #0
	ldr r1, _08065B48 @ =0x0000027E
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0x1e
	bls _08065B3C
	bl _08066D74
_08065B3C:
	lsls r0, r0, #2
	ldr r1, _08065B4C @ =_08065B50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08065B48: .4byte 0x0000027E
_08065B4C: .4byte _08065B50
_08065B50: @ jump table
	.4byte _08065BCC @ case 0
	.4byte _08065BE4 @ case 1
	.4byte _08065D48 @ case 2
	.4byte _08065D96 @ case 3
	.4byte _08065F5C @ case 4
	.4byte _08065FAC @ case 5
	.4byte _080666BE @ case 6
	.4byte _080661FC @ case 7
	.4byte _08066268 @ case 8
	.4byte _080662F0 @ case 9
	.4byte _08066160 @ case 10
	.4byte _08066334 @ case 11
	.4byte _080666F0 @ case 12
	.4byte _0806673C @ case 13
	.4byte _08066050 @ case 14
	.4byte _08066098 @ case 15
	.4byte _080660B4 @ case 16
	.4byte _080660EC @ case 17
	.4byte _0806611C @ case 18
	.4byte _080667A0 @ case 19
	.4byte _08066860 @ case 20
	.4byte _080668B0 @ case 21
	.4byte _08066958 @ case 22
	.4byte _08066964 @ case 23
	.4byte _08066A68 @ case 24
	.4byte _08066B28 @ case 25
	.4byte _08066B78 @ case 26
	.4byte _08066BDC @ case 27
	.4byte _08066C24 @ case 28
	.4byte _08066CC4 @ case 29
	.4byte _08066D28 @ case 30
_08065BCC:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_08075E9C
_08065BE4:
	movs r2, #0xce
	lsls r2, r2, #1
	adds r4, r7, r2
	ldr r0, [r4]
	cmp r0, #0
	bne _08065BF8
	movs r0, #0x80
	bl BattleAlloc
	str r0, [r4]
_08065BF8:
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r4, r7, r3
	ldr r0, [r4]
	cmp r0, #0
	bne _08065C0C
	movs r0, #0x80
	bl BattleAlloc
	str r0, [r4]
_08065C0C:
	ldr r1, [r7, #0x40]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	bl sub_0804DB8C
	movs r5, #0xc6
	lsls r5, r5, #1
	adds r4, r7, r5
	str r0, [r4]
	cmp r0, #0
	bne _08065C32
	movs r6, #0xae
	lsls r6, r6, #2
	adds r2, r7, r6
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	b _08065C7A
_08065C32:
	movs r0, #0xae
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrh r1, [r2]
	ldr r0, _08065CBC @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2]
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r5, r7, r1
	ldr r0, [r5]
	cmp r0, #0
	bne _08065C56
	movs r0, #0xc0
	lsls r0, r0, #5
	bl BattleAlloc
	str r0, [r5]
_08065C56:
	ldr r2, [r7, #0x40]
	ldr r3, [r2, #4]
	ldrb r0, [r3, #0x14]
	ldrb r1, [r3, #0x15]
	ldr r2, [r2]
	ldr r4, [r4]
	str r4, [sp]
	ldr r4, [r5]
	str r4, [sp, #4]
	movs r4, #0x80
	lsls r4, r4, #2
	str r4, [sp, #8]
	bl sub_08053A84
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
_08065C7A:
	movs r3, #0xc2
	lsls r3, r3, #1
	adds r4, r7, r3
	movs r5, #4
	strb r5, [r4]
	ldr r6, _08065CC0 @ =0x0000027E
	adds r1, r7, r6
	movs r0, #2
	strb r0, [r1]
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08065CC8
	ldr r3, _08065CC4 @ =0x0000027F
	adds r2, r7, r3
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r7, r4
	adds r0, r0, r1
	movs r1, #0xc
	b _08065CE8
	.align 2, 0
_08065CBC: .4byte 0x0000FFDF
_08065CC0: .4byte 0x0000027E
_08065CC4: .4byte 0x0000027F
_08065CC8:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08065CF8
	ldr r5, _08065CF0 @ =0x0000027F
	adds r2, r7, r5
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r7, r6
	adds r0, r0, r1
	movs r1, #0xe
_08065CE8:
	strb r1, [r0]
	ldr r3, _08065CF4 @ =gUnk_03000FA0
	b _08065D1E
	.align 2, 0
_08065CF0: .4byte 0x0000027F
_08065CF4: .4byte gUnk_03000FA0
_08065CF8:
	ldr r0, _08065D40 @ =0x0000027F
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
	movs r1, #0xa
	strb r1, [r0]
	ldr r0, _08065D44 @ =gUnk_03000FA0
	adds r1, r0, #0
	adds r1, #0x35
	strb r3, [r1]
	strb r5, [r4]
	adds r3, r0, #0
_08065D1E:
	ldr r4, _08065D40 @ =0x0000027F
	adds r2, r7, r4
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r1, r7, r5
	adds r1, r1, r0
	movs r2, #0
	movs r0, #3
	strb r0, [r1]
	bl _08066BC2
	.align 2, 0
_08065D40: .4byte 0x0000027F
_08065D44: .4byte gUnk_03000FA0
_08065D48:
	movs r6, #0xae
	lsls r6, r6, #2
	adds r0, r7, r6
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08065D60
	bl _08066B4A
_08065D60:
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrb r1, [r1]
	bl sub_08052024
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08065D80
	bl _08066D74
_08065D80:
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r4, r7, r3
	ldr r0, [r4]
	cmp r0, #0
	beq _08065D90
	bl BattleFree
_08065D90:
	str r5, [r4]
	bl _08066B4A
_08065D96:
	ldr r1, [r7, #0x40]
	movs r0, #0
	bl sub_0805B0F8
	movs r0, #0xae
	lsls r0, r0, #2
	adds r4, r7, r0
	ldrh r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08065E34
	ldr r0, [r7, #0x40]
	bl sub_08065A04
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08065DC0
	b _080660C2
_08065DC0:
	movs r0, #0xad
	bl PlaySE
	ldr r1, _08065E28 @ =0x0000026D
	adds r3, r7, r1
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _08065E2C @ =0x0000026E
	adds r2, r7, r4
	adds r0, r2, r0
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r4, r7, r5
	ldrb r1, [r4]
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	ldrb r0, [r4]
	strb r0, [r2]
	ldr r6, _08065E30 @ =0x0000027F
	adds r2, r7, r6
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	movs r1, #4
	strb r1, [r0]
	movs r3, #0xa4
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0x10
	strh r0, [r1]
	adds r5, #0x12
	adds r1, r7, r5
	movs r0, #0x1a
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4]
	bl _08066D74
	.align 2, 0
_08065E28: .4byte 0x0000026D
_08065E2C: .4byte 0x0000026E
_08065E30: .4byte 0x0000027F
_08065E34:
	ldr r1, [r7, #0x40]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	movs r4, #0xc6
	lsls r4, r4, #1
	adds r2, r7, r4
	ldr r2, [r2]
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r3, r7, r5
	ldr r3, [r3]
	bl sub_0804BFF8
	adds r0, r7, #0
	movs r1, #0
	bl sub_080657B4
	movs r0, #0
_08065E58:
	movs r6, #0
	lsls r1, r0, #0x18
	mov r8, r1
	lsls r4, r0, #0x10
	adds r0, #1
	mov sb, r0
	movs r5, #0
_08065E66:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r2, [r1]
	mov r3, r8
	asrs r1, r3, #0x18
	bl sub_0804DB44
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08065E8A
	lsrs r0, r5, #0x10
	lsrs r1, r4, #0x10
	bl sub_080288B8
	b _08065E92
_08065E8A:
	lsrs r0, r5, #0x10
	lsrs r1, r4, #0x10
	bl sub_0802885C
_08065E92:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #0x1f
	ble _08065E66
	mov r0, sb
	cmp r0, #0x1f
	ble _08065E58
	bl sub_0805B380
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08065F30
	ldr r2, _08065F20 @ =0x0000026D
	adds r5, r7, r2
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _08065F24 @ =0x0000026E
	adds r4, r7, r3
	adds r0, r4, r0
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r6, r7, r1
	ldrb r1, [r6]
	strb r1, [r0]
	movs r0, #0xad
	bl PlaySE
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	ldrb r0, [r6]
	strb r0, [r4]
	ldr r3, _08065F28 @ =0x0000027F
	adds r2, r7, r3
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r7, r4
	adds r0, r0, r1
	movs r1, #4
	strb r1, [r0]
	movs r5, #0xa4
	lsls r5, r5, #2
	adds r1, r7, r5
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _08065F2C @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x1a
	strb r0, [r1]
	movs r0, #1
	strb r0, [r6]
	bl _08066D74
	.align 2, 0
_08065F20: .4byte 0x0000026D
_08065F24: .4byte 0x0000026E
_08065F28: .4byte 0x0000027F
_08065F2C: .4byte 0x0000027E
_08065F30:
	ldr r2, _08065F54 @ =0x0000027F
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r1, r7, r3
	adds r1, r1, r0
	ldrb r1, [r1]
	ldr r4, _08065F58 @ =0x0000027E
	adds r0, r7, r4
	strb r1, [r0]
	bl _08066D74
	.align 2, 0
_08065F54: .4byte 0x0000027F
_08065F58: .4byte 0x0000027E
_08065F5C:
	bl sub_08024CA0
	ldr r5, _08065FA0 @ =0x0000026D
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r6, _08065FA4 @ =0x0000026E
	adds r1, r7, r6
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, _08065FA8 @ =0x0000027F
	adds r1, r7, r3
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r1, r7, r4
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r5, #0x11
	adds r0, r7, r5
	strb r1, [r0]
	bl _08066D74
	.align 2, 0
_08065FA0: .4byte 0x0000026D
_08065FA4: .4byte 0x0000026E
_08065FA8: .4byte 0x0000027F
_08065FAC:
	movs r2, #0
_08065FAE:
	movs r6, #0
	lsls r4, r2, #0x10
	adds r0, r2, #1
	mov r8, r0
	movs r5, #0
_08065FB8:
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r0, [r0]
	cmp r0, r6
	bne _08065FDC
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrh r0, [r0]
	cmp r0, r2
	bne _08065FDC
	lsrs r0, r5, #0x10
	lsrs r1, r4, #0x10
	str r2, [sp, #0x24]
	bl sub_0802885C
	b _08065FE6
_08065FDC:
	lsrs r0, r5, #0x10
	lsrs r1, r4, #0x10
	str r2, [sp, #0x24]
	bl sub_080288B8
_08065FE6:
	ldr r2, [sp, #0x24]
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #0x1f
	ble _08065FB8
	mov r2, r8
	cmp r2, #0x1f
	ble _08065FAE
	bl sub_0805B380
	ldr r2, _08066044 @ =0x0000026D
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _08066048 @ =0x0000026E
	adds r1, r7, r3
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r4, #0x9b
	lsls r4, r4, #2
	adds r0, r7, r4
	strb r1, [r0]
	ldr r5, _0806604C @ =0x0000027F
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r1, r7, r6
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r2, #0x11
	adds r0, r7, r2
	strb r1, [r0]
	movs r0, #0xad
	bl PlaySE
	bl _08066D74
	.align 2, 0
_08066044: .4byte 0x0000026D
_08066048: .4byte 0x0000026E
_0806604C: .4byte 0x0000027F
_08066050:
	ldr r1, [r7, #0x40]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	bl sub_0806F5B4
	bl sub_08075E84
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08066074
	ldr r3, _08066070 @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0xf
	bl _08066D72
	.align 2, 0
_08066070: .4byte 0x0000027E
_08066074:
	movs r0, #0x10
	bl sub_08075DEC
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_08075E24
	bl sub_0806FDE4
	ldr r4, _08066094 @ =0x0000027E
	adds r1, r7, r4
	movs r0, #0xf
	bl _08066D72
	.align 2, 0
_08066094: .4byte 0x0000027E
_08066098:
	bl sub_08075E84
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080660A6
	bl _08066D74
_080660A6:
	ldr r5, _080660B0 @ =0x0000027E
	adds r1, r7, r5
	movs r0, #0xa
	bl _08066D72
	.align 2, 0
_080660B0: .4byte 0x0000027E
_080660B4:
	bl sub_08075E84
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080660C2
	bl _08066D74
_080660C2:
	ldr r6, _080660E4 @ =0x0000027F
	adds r1, r7, r6
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
	ldr r3, _080660E8 @ =0x0000027E
	adds r0, r7, r3
	strb r1, [r0]
	bl _08066D74
	.align 2, 0
_080660E4: .4byte 0x0000027F
_080660E8: .4byte 0x0000027E
_080660EC:
	bl sub_0806F3DC
	ldr r4, _08066114 @ =0x0000027F
	adds r2, r7, r4
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r0, r0, r1
	movs r1, #0x12
	strb r1, [r0]
	ldr r6, _08066118 @ =0x0000027E
	adds r1, r7, r6
	movs r0, #0x10
	bl _08066D72
	.align 2, 0
_08066114: .4byte 0x0000027F
_08066118: .4byte 0x0000027E
_0806611C:
	adds r0, r7, #0
	movs r1, #1
	bl sub_080657B4
	bl sub_08075C5C
	bl sub_08024CA0
	bl sub_0807628C
	bl sub_0806FDE4
	ldr r0, _08066158 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806615C @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r3, #0x9b
	lsls r3, r3, #2
	adds r0, r7, r3
	strb r1, [r0]
	bl _08066B4A
	.align 2, 0
_08066158: .4byte 0x0000026D
_0806615C: .4byte 0x0000026E
_08066160:
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0806618C
	ldr r0, _08066184 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08066188 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0xb
	bl _08066D72
	.align 2, 0
_08066184: .4byte gUnk_03000FA0
_08066188: .4byte 0x0000027E
_0806618C:
	movs r0, #0x10
	bl sub_08075DEC
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075E08
	bl sub_08075E24
	ldr r0, _080661CC @ =gUnk_02000000
	ldr r3, _080661D0 @ =0x0000132F
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080661DC
	movs r4, #0xa4
	lsls r4, r4, #2
	adds r1, r7, r4
	movs r2, #0
	movs r0, #4
	strh r0, [r1]
	ldr r5, _080661D4 @ =0x0000027E
	adds r1, r7, r5
	movs r0, #8
	strb r0, [r1]
	ldr r0, _080661D8 @ =gUnk_03000FA0
	adds r0, #0x35
	strb r2, [r0]
	b _080661EC
	.align 2, 0
_080661CC: .4byte gUnk_02000000
_080661D0: .4byte 0x0000132F
_080661D4: .4byte 0x0000027E
_080661D8: .4byte gUnk_03000FA0
_080661DC:
	ldr r0, _080661F4 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r1, #1
	strb r1, [r0]
	ldr r6, _080661F8 @ =0x0000027E
	adds r1, r7, r6
	movs r0, #0xb
	strb r0, [r1]
_080661EC:
	bl sub_08075DD8
	b _0806672A
	.align 2, 0
_080661F4: .4byte gUnk_03000FA0
_080661F8: .4byte 0x0000027E
_080661FC:
	movs r0, #0xe6
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r0, [r4]
	bl sub_08075508
	adds r5, r0, #0
	cmp r5, #0
	beq _08066212
	bl _08066D74
_08066212:
	ldr r0, [r4]
	bl sub_080763C4
	str r5, [r4]
	ldr r2, _0806625C @ =0x0000026D
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _08066260 @ =0x0000026E
	adds r1, r7, r3
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r4, #0x9b
	lsls r4, r4, #2
	adds r0, r7, r4
	strb r1, [r0]
	ldr r5, _08066264 @ =0x0000027F
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r1, r7, r6
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r2, #0x11
	adds r0, r7, r2
	strb r1, [r0]
	bl _08066D74
	.align 2, 0
_0806625C: .4byte 0x0000026D
_08066260: .4byte 0x0000026E
_08066264: .4byte 0x0000027F
_08066268:
	movs r3, #0xa4
	lsls r3, r3, #2
	adds r1, r7, r3
	ldrh r0, [r1]
	adds r5, r0, #0
	cmp r5, #0
	beq _0806627E
	subs r0, #1
	strh r0, [r1]
	bl _08066D74
_0806627E:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _080662D4 @ =gUnk_0202A5AC
	ldr r0, _080662D8 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldr r4, _080662DC @ =gUnk_0202A5A8
	ldr r0, _080662E0 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _080662E4 @ =gUnk_0875D99A
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
	movs r4, #9
	str r4, [sp, #0x20]
	ldr r1, _080662E8 @ =0x0000022F
	movs r3, #0x22
	bl sub_08015D50
	ldr r5, _080662EC @ =0x0000027E
	adds r0, r7, r5
	strb r4, [r0]
	bl _08066D74
	.align 2, 0
_080662D4: .4byte gUnk_0202A5AC
_080662D8: .4byte gUnk_03000FA0
_080662DC: .4byte gUnk_0202A5A8
_080662E0: .4byte 0x00001C44
_080662E4: .4byte gUnk_0875D99A
_080662E8: .4byte 0x0000022F
_080662EC: .4byte 0x0000027E
_080662F0:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _08066300
	bl _08066D74
_08066300:
	ldr r4, _08066328 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _08066314
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_08066314:
	movs r1, #1
	ldr r0, _0806632C @ =gUnk_03000FA0
	adds r0, #0x35
	strb r1, [r0]
	ldr r6, _08066330 @ =0x0000027E
	adds r1, r7, r6
	movs r0, #0xb
	bl _08066D72
	.align 2, 0
_08066328: .4byte gUnk_0202A5A8
_0806632C: .4byte gUnk_03000FA0
_08066330: .4byte 0x0000027E
_08066334:
	movs r0, #0xae
	lsls r0, r0, #2
	adds r4, r7, r0
	ldrh r1, [r4]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08066348
	b _08066450
_08066348:
	ldr r0, _08066444 @ =gUnk_03000FA0
	adds r2, r0, #0
	adds r2, #0x37
	movs r1, #0
	movs r3, #1
	strb r3, [r2]
	adds r0, #0x35
	strb r1, [r0]
	movs r4, #0xd6
	lsls r4, r4, #1
	adds r0, r7, r4
	ldrb r1, [r0]
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r0, r7, r5
	strh r1, [r0]
	ldr r6, _08066448 @ =0x000001AD
	adds r0, r7, r6
	ldrb r1, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #0xc1
	adds r3, r7, r4
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, #0xc1
	adds r5, r7, r6
	adds r0, r5, r0
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r1, r1, r7
	mov r8, r1
	ldrb r1, [r1]
	strb r1, [r0]
	adds r4, #0x12
	adds r2, r7, r4
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, #0x12
	adds r4, r7, r6
	adds r0, r4, r0
	movs r1, #0x13
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r5, r0
	mov r6, r8
	ldrb r1, [r6]
	strb r1, [r0]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r4, r0
	movs r1, #4
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r5, r0
	ldrb r1, [r6]
	strb r1, [r0]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r4, r0
	movs r6, #0x1a
	strb r6, [r0]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0x10
	strh r0, [r1]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r5, r0
	movs r1, #1
	strb r1, [r0]
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
	mov r3, r8
	ldrb r0, [r3]
	strb r0, [r5]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	movs r0, #6
	strb r0, [r4]
	ldr r4, _0806644C @ =0x0000027E
	adds r1, r7, r4
	movs r0, #5
	bl _08066D72
	.align 2, 0
_08066444: .4byte gUnk_03000FA0
_08066448: .4byte 0x000001AD
_0806644C: .4byte 0x0000027E
_08066450:
	ldr r5, _080664B4 @ =gUnk_03000FA0
	mov r8, r5
	ldrh r1, [r5, #0x2e]
	movs r0, #4
	mov sb, r0
	ands r0, r1
	cmp r0, #0
	beq _080664C8
	ldr r2, _080664B8 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #7
	strb r0, [r1]
	ldr r0, [r7, #0x40]
	bl sub_080752BC
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r1, r7, r3
	str r0, [r1]
	ldr r4, _080664BC @ =0x0000026D
	adds r2, r7, r4
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, _080664C0 @ =0x0000026E
	adds r1, r7, r5
	adds r1, r1, r0
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r0, r7, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080664C4 @ =0x0000027F
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
	movs r1, #0xb
	strb r1, [r0]
	bl _08066D74
	.align 2, 0
_080664B4: .4byte gUnk_03000FA0
_080664B8: .4byte 0x0000027E
_080664BC: .4byte 0x0000026D
_080664C0: .4byte 0x0000026E
_080664C4: .4byte 0x0000027F
_080664C8:
	movs r3, #2
	mov sl, r3
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _080664F4
	movs r0, #0xb0
	bl PlaySE
	bl sub_08024CA0
	ldr r4, _080664F0 @ =0x0000027E
	adds r0, r7, r4
	movs r1, #0x11
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x37
	movs r5, #1
	strb r5, [r0]
	b _0806678E
	.align 2, 0
_080664F0: .4byte 0x0000027E
_080664F4:
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080664FE
	b _080666A8
_080664FE:
	bl sub_08075C5C
	ldrh r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080665B8
	mov r1, r8
	ldrh r0, [r1, #0x3c]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, #0x40
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r7, r3
	ldr r2, [r2]
	bl sub_0804DB44
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _08066532
	b _08066660
_08066532:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _0806659C @ =gUnk_0202A5AC
	mov r1, r8
	adds r1, #0x35
	ldrb r0, [r1]
	strb r0, [r2]
	strb r5, [r1]
	ldr r4, _080665A0 @ =gUnk_0202A5A8
	ldr r0, _080665A4 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _080665A8 @ =gUnk_0875C8DE
	mov r4, sb
	str r4, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	mov r1, sl
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _080665AC @ =0x0000022F
	movs r3, #0x1d
	bl sub_08015D50
	ldr r2, _080665B0 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x19
	strb r0, [r1]
	ldr r3, _080665B4 @ =0x0000027F
	adds r2, r7, r3
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r7, r4
	b _0806663A
	.align 2, 0
_0806659C: .4byte gUnk_0202A5AC
_080665A0: .4byte gUnk_0202A5A8
_080665A4: .4byte 0x00001C44
_080665A8: .4byte gUnk_0875C8DE
_080665AC: .4byte 0x0000022F
_080665B0: .4byte 0x0000027E
_080665B4: .4byte 0x0000027F
_080665B8:
	ldr r0, [r7, #0x40]
	mov r5, r8
	ldrh r1, [r5, #0x3c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r2, r8
	adds r2, #0x40
	ldrb r2, [r2]
	bl sub_08065950
	adds r5, r0, #0
	cmp r5, #0
	bne _08066660
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _08066644 @ =gUnk_0202A5AC
	mov r1, r8
	adds r1, #0x35
	ldrb r0, [r1]
	strb r0, [r2]
	strb r5, [r1]
	ldr r4, _08066648 @ =gUnk_0202A5A8
	ldr r0, _0806664C @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08066650 @ =gUnk_0875C8DE
	mov r1, sb
	str r1, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	mov r3, sl
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
	ldr r1, _08066654 @ =0x0000022F
	movs r3, #0x1d
	bl sub_08015D50
	ldr r4, _08066658 @ =0x0000027E
	adds r1, r7, r4
	movs r0, #0x19
	strb r0, [r1]
	ldr r5, _0806665C @ =0x0000027F
	adds r2, r7, r5
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r7, r6
_0806663A:
	adds r0, r0, r1
	movs r1, #0xa
	strb r1, [r0]
	b _08066D74
	.align 2, 0
_08066644: .4byte gUnk_0202A5AC
_08066648: .4byte gUnk_0202A5A8
_0806664C: .4byte 0x00001C44
_08066650: .4byte gUnk_0875C8DE
_08066654: .4byte 0x0000022F
_08066658: .4byte 0x0000027E
_0806665C: .4byte 0x0000027F
_08066660:
	movs r0, #0xad
	bl PlaySE
	bl sub_08024CA0
	ldr r3, _080666A0 @ =gUnk_03000FA0
	adds r4, r3, #0
	adds r4, #0x37
	movs r0, #0
	movs r2, #1
	adds r1, r3, #0
	adds r1, #0x35
	strb r0, [r1]
	ldrh r1, [r3, #0x3c]
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r0, r7, r5
	strh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x40
	ldrh r1, [r0]
	movs r6, #0xa6
	lsls r6, r6, #1
	adds r0, r7, r6
	strh r1, [r0]
	ldr r0, _080666A4 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x13
	strb r0, [r1]
	strb r2, [r4]
	b _08066D74
	.align 2, 0
_080666A0: .4byte gUnk_03000FA0
_080666A4: .4byte 0x0000027E
_080666A8:
	ldr r0, [r7, #0x40]
	ldr r0, [r0]
	mov r2, r8
	ldrh r1, [r2, #0x3c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, #0x40
	ldrb r2, [r2]
	bl sub_08075D7C
	b _08066D74
_080666BE:
	ldr r1, _080666E8 @ =gUnk_03000FA0
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrh r0, [r0]
	strh r0, [r1, #0x3c]
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r0, r7, r4
	ldrh r2, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	strh r2, [r0]
	adds r1, #0x35
	movs r0, #4
	strb r0, [r1]
	ldr r5, _080666EC @ =0x0000027E
	adds r1, r7, r5
	movs r0, #0x1a
	b _08066D72
	.align 2, 0
_080666E8: .4byte gUnk_03000FA0
_080666EC: .4byte 0x0000027E
_080666F0:
	adds r0, r7, #0
	movs r1, #1
	bl sub_080657B4
	ldr r1, _08066734 @ =gUnk_03000FA0
	adds r2, r1, #0
	adds r2, #0x51
	movs r0, #0
	strb r0, [r2]
	adds r1, #0x35
	movs r0, #6
	strb r0, [r1]
	ldr r6, _08066738 @ =0x0000027E
	adds r1, r7, r6
	movs r0, #0xd
	strb r0, [r1]
	bl sub_08075DD8
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08075D7C
_0806672A:
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075E08
	b _08066D74
	.align 2, 0
_08066734: .4byte gUnk_03000FA0
_08066738: .4byte 0x0000027E
_0806673C:
	ldr r4, _08066780 @ =gUnk_03000FA0
	ldrh r1, [r4, #0x2e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08066752
	bl sub_080A10C4
	cmp r0, #0
	bne _08066752
	b _08066D74
_08066752:
	movs r0, #0xb0
	bl PlaySE
	ldr r3, _08066784 @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x12
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x37
	movs r5, #1
	strb r5, [r0]
	movs r0, #3
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08066788
	adds r0, r4, #0
	adds r0, #0x51
	strb r5, [r0]
	b _0806678E
	.align 2, 0
_08066780: .4byte gUnk_03000FA0
_08066784: .4byte 0x0000027E
_08066788:
	adds r0, r4, #0
	adds r0, #0x51
	strb r1, [r0]
_0806678E:
	movs r0, #1
	bl sub_08075B90
	movs r0, #0
	bl sub_08075B6C
	bl sub_08075BB8
	b _08066D74
_080667A0:
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	movs r4, #0xae
	lsls r4, r4, #2
	adds r0, r7, r4
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080667F4
	adds r0, r7, #0
	bl sub_08065824
	ldr r5, _080667EC @ =0x0000027F
	adds r2, r7, r5
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r7, r6
	adds r0, r0, r1
	movs r1, #0x14
	strb r1, [r0]
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #4
	strb r0, [r1]
	ldr r2, _080667F0 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #2
	b _08066D72
	.align 2, 0
_080667EC: .4byte 0x0000027F
_080667F0: .4byte 0x0000027E
_080667F4:
	ldr r1, _08066850 @ =gUnk_03000FA0
	ldr r2, [r7, #0x40]
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
	ldr r3, _08066854 @ =0x0000026D
	adds r2, r7, r3
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _08066858 @ =0x0000026E
	adds r1, r7, r4
	adds r1, r1, r0
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r0, r7, r5
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r6, _0806685C @ =0x0000027F
	adds r2, r7, r6
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	movs r1, #0x1b
	strb r1, [r0]
	adds r3, #0x11
	adds r1, r7, r3
	movs r0, #0x1a
	b _08066D72
	.align 2, 0
_08066850: .4byte gUnk_03000FA0
_08066854: .4byte 0x0000026D
_08066858: .4byte 0x0000026E
_0806685C: .4byte 0x0000027F
_08066860:
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r7, r4
	ldrb r0, [r0]
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r1, r7, r5
	ldrb r1, [r1]
	movs r6, #0xc6
	lsls r6, r6, #1
	adds r2, r7, r6
	ldr r2, [r2]
	movs r3, #0xce
	lsls r3, r3, #1
	adds r4, r7, r3
	ldr r3, [r4]
	bl sub_0804DCA0
	ldr r2, [r7, #0x40]
	ldr r1, [r4]
	str r1, [r2, #0xc]
	movs r1, #0
	strh r1, [r2, #0x20]
	ldr r1, [r7, #0x40]
	adds r1, #0x46
	movs r2, #2
	strh r2, [r1]
	ldr r1, [r7, #0x40]
	strh r0, [r1, #0x22]
	adds r0, r7, #0
	movs r1, #0
	bl sub_080657B4
	ldr r4, _080668AC @ =0x0000027E
	adds r1, r7, r4
	movs r0, #0x15
	b _08066D72
	.align 2, 0
_080668AC: .4byte 0x0000027E
_080668B0:
	adds r0, r7, #0
	movs r1, #1
	bl sub_08065888
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080668C2
	b _08066D74
_080668C2:
	movs r5, #0xae
	lsls r5, r5, #2
	adds r0, r7, r5
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080668DC
	ldr r6, _080668D8 @ =0x0000027E
	adds r1, r7, r6
	b _08066D70
	.align 2, 0
_080668D8: .4byte 0x0000027E
_080668DC:
	ldr r0, [r7, #0x40]
	ldrh r0, [r0, #0x10]
	bl sub_08058D5C
	ldr r4, _08066944 @ =gUnk_03000FA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r4, #0x3c]
	ldr r0, [r7, #0x40]
	ldrh r0, [r0, #0x14]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r4, #0x35
	movs r0, #4
	strb r0, [r4]
	ldr r0, _08066948 @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806694C @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r3, #0x9b
	lsls r3, r3, #2
	adds r0, r7, r3
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r4, _08066950 @ =0x0000027F
	adds r2, r7, r4
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r0, r0, r1
	movs r1, #0x16
	strb r1, [r0]
	ldr r6, _08066954 @ =0x0000027E
	adds r1, r7, r6
	movs r0, #0x1a
	b _08066D72
	.align 2, 0
_08066944: .4byte gUnk_03000FA0
_08066948: .4byte 0x0000026D
_0806694C: .4byte 0x0000026E
_08066950: .4byte 0x0000027F
_08066954: .4byte 0x0000027E
_08066958:
	ldr r0, _08066960 @ =0x0000027E
	adds r1, r7, r0
	b _08066D70
	.align 2, 0
_08066960: .4byte 0x0000027E
_08066964:
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r0, [r0]
	movs r6, #1
	ands r6, r0
	cmp r6, #0
	beq _080669DC
	ldr r0, _080669C4 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r3, #0
	movs r1, #4
	strb r1, [r0]
	ldr r0, [r7, #0x40]
	adds r0, #0x48
	ldrb r1, [r0]
	ldr r2, _080669C8 @ =0x00000267
	adds r0, r7, r2
	strb r1, [r0]
	ldr r4, _080669CC @ =0x0000026D
	adds r2, r7, r4
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r5, _080669D0 @ =0x0000026E
	adds r0, r7, r5
	adds r0, r0, r1
	movs r1, #7
	strb r1, [r0]
	ldr r6, _080669D4 @ =0x0000027F
	adds r2, r7, r6
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	strb r3, [r0]
	ldr r3, _080669D8 @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x1a
	b _08066D72
	.align 2, 0
_080669C4: .4byte gUnk_03000FA0
_080669C8: .4byte 0x00000267
_080669CC: .4byte 0x0000026D
_080669D0: .4byte 0x0000026E
_080669D4: .4byte 0x0000027F
_080669D8: .4byte 0x0000027E
_080669DC:
	ldr r0, _08066A50 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r1, #4
	strb r1, [r0]
	ldr r0, [r7, #0x40]
	adds r0, #0x48
	ldrb r1, [r0]
	ldr r4, _08066A54 @ =0x00000267
	adds r0, r7, r4
	strb r1, [r0]
	ldr r0, _08066A58 @ =0x0000026D
	adds r5, r7, r0
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08066A5C @ =0x0000026E
	adds r4, r7, r1
	adds r0, r4, r0
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r1, r7, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _08066A60 @ =0x0000027F
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
	movs r1, #0x18
	strb r1, [r0]
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	movs r0, #7
	strb r0, [r4]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	strb r6, [r2]
	ldr r2, _08066A64 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x1a
	b _08066D72
	.align 2, 0
_08066A50: .4byte gUnk_03000FA0
_08066A54: .4byte 0x00000267
_08066A58: .4byte 0x0000026D
_08066A5C: .4byte 0x0000026E
_08066A60: .4byte 0x0000027F
_08066A64: .4byte 0x0000027E
_08066A68:
	ldr r0, [r7, #0x40]
	ldr r1, [r0, #4]
	ldrb r1, [r1, #0x16]
	adds r0, #0x48
	strb r1, [r0]
	ldr r0, [r7, #0x40]
	adds r0, #0x49
	movs r1, #0xff
	strb r1, [r0]
	ldr r0, [r7, #0x40]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x14]
	bl sub_08058D6C
	ldr r1, [r7, #0x40]
	strh r0, [r1, #0x10]
	ldr r0, [r7, #0x40]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x15]
	bl sub_08058D6C
	ldr r1, [r7, #0x40]
	strh r0, [r1, #0x14]
	ldr r0, [r7, #0x40]
	bl sub_0805AA7C
	ldr r0, [r7, #0x40]
	movs r1, #8
	bl sub_0805DDB4
	bl sub_0806F0C8
	ldr r4, _08066B14 @ =gUnk_03000FA0
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	ldrb r0, [r0, #0x14]
	strh r0, [r4, #0x3c]
	ldr r0, [r1, #4]
	ldrb r1, [r0, #0x15]
	adds r0, r4, #0
	adds r0, #0x40
	strh r1, [r0]
	ldr r3, _08066B18 @ =0x0000026D
	adds r2, r7, r3
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, _08066B1C @ =0x0000026E
	adds r1, r7, r5
	adds r1, r1, r0
	movs r6, #0x9b
	lsls r6, r6, #2
	adds r0, r7, r6
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #1
	bl sub_080657B4
	ldr r0, _08066B20 @ =0x0000027F
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
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08075E08
	adds r4, #0x35
	movs r0, #4
	strb r0, [r4]
	ldr r3, _08066B24 @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x1a
	b _08066D72
	.align 2, 0
_08066B14: .4byte gUnk_03000FA0
_08066B18: .4byte 0x0000026D
_08066B1C: .4byte 0x0000026E
_08066B20: .4byte 0x0000027F
_08066B24: .4byte 0x0000027E
_08066B28:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _08066B36
	b _08066D74
_08066B36:
	ldr r4, _08066B6C @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _08066B4A
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_08066B4A:
	ldr r4, _08066B70 @ =0x0000027F
	adds r1, r7, r4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r1, r7, r5
	adds r1, r1, r0
	ldrb r1, [r1]
	ldr r6, _08066B74 @ =0x0000027E
	adds r0, r7, r6
	strb r1, [r0]
	b _08066D74
	.align 2, 0
_08066B6C: .4byte gUnk_0202A5A8
_08066B70: .4byte 0x0000027F
_08066B74: .4byte 0x0000027E
_08066B78:
	ldr r3, _08066BCC @ =gUnk_03000FA0
	adds r0, r3, #0
	adds r0, #0x95
	ldrb r0, [r0]
	cmp r0, #1
	bne _08066B86
	b _08066D74
_08066B86:
	ldr r1, _08066BD0 @ =0x0000026D
	adds r0, r7, r1
	ldrb r1, [r0]
	subs r1, #1
	movs r2, #0
	strb r1, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r4, _08066BD4 @ =0x0000026E
	adds r0, r7, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r0, r7, r5
	strb r1, [r0]
	ldr r6, _08066BD8 @ =0x0000027F
	adds r1, r7, r6
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, #0x12
	adds r1, r7, r4
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r5, #0x12
	adds r0, r7, r5
	strb r1, [r0]
_08066BC2:
	adds r0, r3, #0
	adds r0, #0x35
	strb r2, [r0]
	b _08066D74
	.align 2, 0
_08066BCC: .4byte gUnk_03000FA0
_08066BD0: .4byte 0x0000026D
_08066BD4: .4byte 0x0000026E
_08066BD8: .4byte 0x0000027F
_08066BDC:
	ldr r0, [r7, #0x40]
	ldr r3, [r0, #4]
	movs r6, #0xa4
	lsls r6, r6, #1
	adds r2, r7, r6
	ldrb r1, [r3, #0x14]
	adds r4, r0, #0
	ldrh r2, [r2]
	cmp r1, r2
	bne _08066C08
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, r0
	ldrb r0, [r3, #0x15]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08066C08
	ldr r2, _08066C04 @ =0x0000027E
	adds r1, r7, r2
	b _08066D70
	.align 2, 0
_08066C04: .4byte 0x0000027E
_08066C08:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080A3B9C
	movs r3, #0xca
	lsls r3, r3, #1
	adds r1, r7, r3
	str r0, [r1]
	ldr r4, _08066C20 @ =0x0000027E
	adds r1, r7, r4
	movs r0, #0x1c
	b _08066D72
	.align 2, 0
_08066C20: .4byte 0x0000027E
_08066C24:
	movs r5, #0xca
	lsls r5, r5, #1
	adds r4, r7, r5
	ldr r0, [r4]
	bl sub_080A3B78
	cmp r0, #0
	bne _08066C36
	b _08066D74
_08066C36:
	ldr r0, [r4]
	bl sub_080A3B84
	movs r6, #0xa4
	lsls r6, r6, #1
	adds r5, r7, r6
	ldrh r0, [r5]
	bl sub_08058D6C
	ldr r1, [r7, #0x40]
	strh r0, [r1, #0x10]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r7, r0
	ldrh r0, [r4]
	bl sub_08058D6C
	ldr r1, [r7, #0x40]
	strh r0, [r1, #0x14]
	ldr r1, _08066CB0 @ =gUnk_03000FA0
	ldrh r0, [r5]
	strh r0, [r1, #0x3c]
	ldrh r2, [r4]
	adds r0, r1, #0
	adds r0, #0x40
	strh r2, [r0]
	adds r1, #0x35
	movs r0, #4
	strb r0, [r1]
	ldr r1, _08066CB4 @ =0x0000026D
	adds r2, r7, r1
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08066CB8 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r3, #0x9b
	lsls r3, r3, #2
	adds r0, r7, r3
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r4, _08066CBC @ =0x0000027F
	adds r2, r7, r4
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r0, r0, r1
	movs r1, #0x1d
	strb r1, [r0]
	ldr r6, _08066CC0 @ =0x0000027E
	adds r1, r7, r6
	movs r0, #0x1a
	b _08066D72
	.align 2, 0
_08066CB0: .4byte gUnk_03000FA0
_08066CB4: .4byte 0x0000026D
_08066CB8: .4byte 0x0000026E
_08066CBC: .4byte 0x0000027F
_08066CC0: .4byte 0x0000027E
_08066CC4:
	ldr r0, [r7, #0x40]
	ldr r0, [r0, #4]
	ldrb r1, [r0, #0x14]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, [r7, #0x40]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x15]
	ldr r3, _08066D20 @ =0x00000199
	adds r1, r7, r3
	strb r0, [r1]
	ldr r0, [r7, #0x40]
	bl sub_0805AA7C
	movs r4, #0xae
	lsls r4, r4, #2
	adds r0, r7, r4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08066CF8
	bl sub_0806F0C8
_08066CF8:
	ldr r1, [r7, #0x40]
	adds r1, #0x78
	ldrh r2, [r1]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r5, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, [r7, #0x40]
	bl sub_080A3BCC
	movs r6, #0xca
	lsls r6, r6, #1
	adds r1, r7, r6
	str r0, [r1]
	ldr r0, _08066D24 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x1e
	b _08066D72
	.align 2, 0
_08066D20: .4byte 0x00000199
_08066D24: .4byte 0x0000027E
_08066D28:
	ldr r1, [r7, #0x40]
	adds r1, #0x78
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	movs r5, #0xca
	lsls r5, r5, #1
	adds r4, r7, r5
	ldr r0, [r4]
	bl sub_080A3B78
	cmp r0, #0
	beq _08066D74
	ldr r0, [r4]
	bl sub_080A3B84
	bl sub_0806D758
	ldr r0, [r7, #0x40]
	ldr r1, [r0, #4]
	movs r6, #0xcc
	lsls r6, r6, #1
	adds r0, r7, r6
	ldrb r0, [r0]
	strb r0, [r1, #0x14]
	ldr r0, [r7, #0x40]
	ldr r1, [r0, #4]
	ldr r2, _08066D88 @ =0x00000199
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1, #0x15]
	ldr r3, _08066D8C @ =0x0000027E
	adds r1, r7, r3
_08066D70:
	movs r0, #0x17
_08066D72:
	strb r0, [r1]
_08066D74:
	movs r0, #0
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08066D88: .4byte 0x00000199
_08066D8C: .4byte 0x0000027E

