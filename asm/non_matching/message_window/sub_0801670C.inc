	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r5, _08016750 @ =gUnk_0200283C
	ldr r4, [r5]
	ldr r0, _08016754 @ =0x00001BA1
	adds r4, r4, r0
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0xf0
	bl __modsi3
	strb r0, [r4]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r0, _08016758 @ =gUnk_03000820
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	mov sb, r5
	cmp r0, #0
	beq _08016760
	ldr r0, [r5]
	ldr r2, _0801675C @ =0x00001BC8
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _08016770
	subs r0, #1
	strh r0, [r1]
	b _08016770
	.align 2, 0
_08016750: .4byte gUnk_0200283C
_08016754: .4byte 0x00001BA1
_08016758: .4byte gUnk_03000820
_0801675C: .4byte 0x00001BC8
_08016760:
	mov r3, sb
	ldr r0, [r3]
	ldr r4, _0801678C @ =0x00001BCA
	adds r1, r0, r4
	ldrh r1, [r1]
	ldr r5, _08016790 @ =0x00001BC8
	adds r0, r0, r5
	strh r1, [r0]
_08016770:
	mov r6, sb
	ldr r0, [r6]
	ldr r7, _08016794 @ =0x00001BA4
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0xf
	bls _08016782
	bl _08017AFC
_08016782:
	lsls r0, r0, #2
	ldr r1, _08016798 @ =_0801679C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801678C: .4byte 0x00001BCA
_08016790: .4byte 0x00001BC8
_08016794: .4byte 0x00001BA4
_08016798: .4byte _0801679C
_0801679C: @ jump table
	.4byte _080167DC @ case 0
	.4byte _08016A54 @ case 1
	.4byte _08017598 @ case 2
	.4byte _080179AC @ case 3
	.4byte _08016AF8 @ case 4
	.4byte _08016FE4 @ case 5
	.4byte _08017298 @ case 6
	.4byte _08017298 @ case 7
	.4byte _080172FC @ case 8
	.4byte _08017300 @ case 9
	.4byte _08017330 @ case 10
	.4byte _08017346 @ case 11
	.4byte _080173F0 @ case 12
	.4byte _0801743C @ case 13
	.4byte _08017A00 @ case 14
	.4byte _08017A26 @ case 15
_080167DC:
	bl sub_080142E8
	ldr r4, _08016830 @ =gUnk_0200283C
	ldr r0, [r4]
	ldr r5, _08016834 @ =0x00001BC1
	adds r0, r0, r5
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080167FA
	bl sub_080141C8
	bl sub_080160E4
_080167FA:
	ldr r2, [r4]
	ldr r1, _08016838 @ =0x00001BAC
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016808
	b _0801694E
_08016808:
	adds r0, r2, r5
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08016890
	ldr r5, _0801683C @ =gUnk_02002600
	ldr r3, _08016840 @ =0x00000EF8
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08016844
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r5, r5, r4
	b _08016846
	.align 2, 0
_08016830: .4byte gUnk_0200283C
_08016834: .4byte 0x00001BC1
_08016838: .4byte 0x00001BAC
_0801683C: .4byte gUnk_02002600
_08016840: .4byte 0x00000EF8
_08016844:
	adds r5, #0xe0
_08016846:
	ldr r0, _0801687C @ =gUnk_0200283C
	ldr r3, [r0]
	ldr r6, _08016880 @ =0x00001B7C
	adds r0, r3, r6
	ldr r0, [r0]
	ldr r7, _08016884 @ =0x00001BC6
	adds r1, r3, r7
	ldrh r1, [r1]
	ldr r4, _08016888 @ =0x00001BAD
	adds r2, r3, r4
	ldrb r2, [r2]
	movs r6, #0xa0
	lsls r6, r6, #4
	adds r4, r3, r6
	str r4, [sp]
	subs r7, #0x18
	adds r3, r3, r7
	ldrh r3, [r3]
	lsls r3, r3, #5
	ldr r4, _0801688C @ =0x06010000
	adds r3, r3, r4
	str r3, [sp, #4]
	adds r3, r5, #0
	bl sub_0801B8D0
	b _0801694E
	.align 2, 0
_0801687C: .4byte gUnk_0200283C
_08016880: .4byte 0x00001B7C
_08016884: .4byte 0x00001BC6
_08016888: .4byte 0x00001BAD
_0801688C: .4byte 0x06010000
_08016890:
	ldr r5, _080168A4 @ =0x00001BC2
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #5
	bhi _0801694E
	lsls r0, r0, #2
	ldr r1, _080168A8 @ =_080168AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080168A4: .4byte 0x00001BC2
_080168A8: .4byte _080168AC
_080168AC: @ jump table
	.4byte _080168C4 @ case 0
	.4byte _0801694E @ case 1
	.4byte _080168C4 @ case 2
	.4byte _08016928 @ case 3
	.4byte _080168F4 @ case 4
	.4byte _080168C4 @ case 5
_080168C4:
	ldr r0, _080168E4 @ =gUnk_0200283C
	ldr r1, [r0]
	ldr r6, _080168E8 @ =0x00001BAE
	adds r0, r1, r6
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r7, _080168EC @ =0x06010000
	adds r0, r0, r7
	ldr r2, _080168F0 @ =0x00001BC6
	adds r1, r1, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r2, #0
	bl sub_0801C264
	b _0801694E
	.align 2, 0
_080168E4: .4byte gUnk_0200283C
_080168E8: .4byte 0x00001BAE
_080168EC: .4byte 0x06010000
_080168F0: .4byte 0x00001BC6
_080168F4:
	ldr r1, _08016918 @ =gUnk_08724208
	movs r4, #0xcc
	lsls r4, r4, #7
	adds r0, r1, r4
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r1, _0801691C @ =gUnk_0200283C
	ldr r1, [r1]
	ldr r5, _08016920 @ =0x00001BAE
	adds r1, r1, r5
	ldrh r1, [r1]
	lsls r1, r1, #5
	ldr r6, _08016924 @ =0x06010000
	adds r1, r1, r6
	movs r2, #0x20
	bl CpuFastSet
	b _0801694E
	.align 2, 0
_08016918: .4byte gUnk_08724208
_0801691C: .4byte gUnk_0200283C
_08016920: .4byte 0x00001BAE
_08016924: .4byte 0x06010000
_08016928:
	ldr r2, _08016A04 @ =gUnk_08724208
	ldr r0, _08016A08 @ =gUnk_0200283C
	ldr r1, [r0]
	ldr r7, _08016A0C @ =0x00001BC6
	adds r0, r1, r7
	ldrh r0, [r0]
	lsls r0, r0, #7
	ldrh r3, [r2]
	adds r0, r0, r3
	adds r0, r0, r2
	ldr r4, _08016A10 @ =0x00001BAE
	adds r1, r1, r4
	ldrh r1, [r1]
	lsls r1, r1, #5
	ldr r5, _08016A14 @ =0x06010000
	adds r1, r1, r5
	movs r2, #0x20
	bl CpuFastSet
_0801694E:
	ldr r5, _08016A08 @ =gUnk_0200283C
	ldr r4, [r5]
	ldr r6, _08016A18 @ =0x00000EF1
	adds r0, r4, r6
	ldrb r0, [r0]
	cmp r0, #1
	bne _080169DE
	ldr r7, _08016A1C @ =0x00000EF2
	adds r0, r4, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _080169A2
	ldr r0, _08016A20 @ =0x00001BA3
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r0, [r5]
	ldr r1, _08016A20 @ =0x00001BA3
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08016A24 @ =0x000010C4
	adds r0, r0, r2
	ldr r1, [r5]
	adds r0, r1, r0
	ldr r3, _08016A28 @ =0x00000ED8
	adds r1, r1, r3
	ldr r2, [r1]
	movs r3, #0xa0
	lsls r3, r3, #2
	movs r1, #0
	bl sub_08000C44
_080169A2:
	ldr r4, [r5]
	ldr r6, _08016A20 @ =0x00001BA3
	adds r4, r4, r6
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r0, [r5]
	adds r0, r0, r6
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r7, _08016A24 @ =0x000010C4
	adds r0, r0, r7
	ldr r1, [r5]
	adds r0, r1, r0
	ldr r2, _08016A2C @ =0x00000EDC
	adds r1, r1, r2
	ldr r2, [r1]
	movs r3, #0xa0
	lsls r3, r3, #2
	movs r1, #0
	bl sub_08000C44
_080169DE:
	ldr r0, _08016A08 @ =gUnk_0200283C
	ldr r2, [r0]
	ldr r3, _08016A30 @ =0x00000EF8
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08016A38
	movs r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	adds r1, r2, #0
	ldr r2, _08016A34 @ =0x01000280
	bl CpuFastSet
	b _08016A3C
	.align 2, 0
_08016A04: .4byte gUnk_08724208
_08016A08: .4byte gUnk_0200283C
_08016A0C: .4byte 0x00001BC6
_08016A10: .4byte 0x00001BAE
_08016A14: .4byte 0x06010000
_08016A18: .4byte 0x00000EF1
_08016A1C: .4byte 0x00000EF2
_08016A20: .4byte 0x00001BA3
_08016A24: .4byte 0x000010C4
_08016A28: .4byte 0x00000ED8
_08016A2C: .4byte 0x00000EDC
_08016A30: .4byte 0x00000EF8
_08016A34: .4byte 0x01000280
_08016A38:
	bl sub_08014068
_08016A3C:
	ldr r0, _08016A4C @ =gUnk_0200283C
	ldr r0, [r0]
	ldr r4, _08016A50 @ =0x00001BA4
	adds r0, r0, r4
	movs r1, #1
	bl _08017AE8
	.align 2, 0
_08016A4C: .4byte gUnk_0200283C
_08016A50: .4byte 0x00001BA4
_08016A54:
	mov r5, sb
	ldr r2, [r5]
	ldr r6, _08016A78 @ =0x00001BA7
	adds r0, r2, r6
	ldrb r1, [r0]
	movs r3, #3
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #2
	bne _08016A80
	bl sub_08016318
	ldr r0, [r5]
	ldr r7, _08016A7C @ =0x00001BA4
	adds r0, r0, r7
	movs r1, #9
	bl _08017AE8
	.align 2, 0
_08016A78: .4byte 0x00001BA7
_08016A7C: .4byte 0x00001BA4
_08016A80:
	ldr r1, _08016AC8 @ =0x00001BC1
	adds r0, r2, r1
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08016AE0
	ldr r3, _08016ACC @ =0x00000EF8
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x82
	ands r0, r1
	cmp r0, #0
	bne _08016AE0
	ldr r4, _08016AD0 @ =0x00001BAA
	adds r0, r2, r4
	movs r2, #4
	strb r2, [r0]
	mov r5, sb
	ldr r0, [r5]
	ldr r6, _08016AD4 @ =0x00001BAB
	adds r0, r0, r6
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r5]
	ldr r7, _08016AD8 @ =0x00001BA4
	adds r0, r0, r7
	strb r1, [r0]
	ldr r0, [r5]
	ldr r1, _08016ADC @ =0x00001BA5
	adds r0, r0, r1
	strb r2, [r0]
_08016AC0:
	movs r0, #0
	bl _08017B12
	.align 2, 0
_08016AC8: .4byte 0x00001BC1
_08016ACC: .4byte 0x00000EF8
_08016AD0: .4byte 0x00001BAA
_08016AD4: .4byte 0x00001BAB
_08016AD8: .4byte 0x00001BA4
_08016ADC: .4byte 0x00001BA5
_08016AE0:
	mov r2, sb
	ldr r0, [r2]
	movs r3, #0xef
	lsls r3, r3, #4
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	ldr r4, _08016C0C @ =0x00001BA4
	adds r0, r0, r4
	movs r1, #4
	strb r1, [r0]
_08016AF8:
	ldr r5, _08016C10 @ =gUnk_0200283C
	ldr r0, [r5]
	ldr r4, _08016C14 @ =0x00000EEB
	adds r0, r0, r4
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08016B12
	movs r0, #0xb6
	bl PlaySE
_08016B12:
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #4
	bne _08016B22
	movs r0, #0xb5
	bl PlaySE
_08016B22:
	ldr r4, [r5]
	ldr r6, _08016C18 @ =0x00000EF8
	adds r0, r4, r6
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08016B34
	b _08016C40
_08016B34:
	ldr r7, _08016C1C @ =0x00000EF2
	adds r0, r4, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016BA2
	ldr r0, _08016C20 @ =0x00000ED8
	adds r1, r4, r0
	ldr r2, _08016C24 @ =0x00001B93
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r3, _08016C28 @ =0x00001B92
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r6, _08016C2C @ =0x00001BA3
	adds r4, r4, r6
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r0, [r5]
	adds r0, r0, r6
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r7, _08016C30 @ =0x000010C4
	adds r0, r0, r7
	ldr r1, [r5]
	adds r0, r1, r0
	ldr r3, _08016C34 @ =0x00001B94
	adds r2, r1, r3
	ldrb r3, [r2]
	adds r3, #2
	ldr r4, _08016C38 @ =0x00001B96
	adds r1, r1, r4
	ldrb r1, [r1]
	adds r1, #2
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #0
	mov r2, sl
	bl sub_08000D94
_08016BA2:
	ldr r4, [r5]
	ldr r6, _08016C3C @ =0x00000EDC
	adds r1, r4, r6
	ldr r7, _08016C24 @ =0x00001B93
	adds r0, r4, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r2, _08016C28 @ =0x00001B92
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r3, _08016C2C @ =0x00001BA3
	adds r4, r4, r3
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r0, [r5]
	ldr r4, _08016C2C @ =0x00001BA3
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r6, _08016C30 @ =0x000010C4
	adds r0, r0, r6
	ldr r1, [r5]
	adds r0, r1, r0
	adds r7, #1
	adds r2, r1, r7
	ldrb r3, [r2]
	adds r3, #2
	ldr r2, _08016C38 @ =0x00001B96
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r1, #2
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #0
	mov r2, sl
	bl sub_08000D94
	b _08016FCA
	.align 2, 0
_08016C0C: .4byte 0x00001BA4
_08016C10: .4byte gUnk_0200283C
_08016C14: .4byte 0x00000EEB
_08016C18: .4byte 0x00000EF8
_08016C1C: .4byte 0x00000EF2
_08016C20: .4byte 0x00000ED8
_08016C24: .4byte 0x00001B93
_08016C28: .4byte 0x00001B92
_08016C2C: .4byte 0x00001BA3
_08016C30: .4byte 0x000010C4
_08016C34: .4byte 0x00001B94
_08016C38: .4byte 0x00001B96
_08016C3C: .4byte 0x00000EDC
_08016C40:
	movs r3, #0xa0
	lsls r3, r3, #4
	adds r0, r4, r3
	ldr r7, _08016CD0 @ =0x00001B94
	adds r1, r4, r7
	ldrb r1, [r1]
	adds r1, #2
	ldr r6, _08016CD4 @ =0x00001B96
	mov sl, r6
	adds r2, r4, r6
	ldrb r2, [r2]
	adds r2, #2
	ldr r6, _08016CD8 @ =0x00000EEA
	adds r3, r4, r6
	ldrb r3, [r3]
	str r1, [sp]
	adds r6, #0x14
	mov r8, r6
	add r4, r8
	ldrh r4, [r4]
	str r4, [sp, #4]
	movs r4, #4
	str r4, [sp, #8]
	bl sub_0801BB1C
	ldr r1, [r5]
	ldr r2, _08016CDC @ =0x00001BC1
	adds r0, r1, r2
	ldrb r6, [r0]
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	bne _08016D4A
	ldr r3, _08016CE0 @ =0x00001BAC
	adds r0, r1, r3
	ldrb r5, [r0]
	cmp r5, #0
	beq _08016D4A
	adds r0, r1, r7
	ldrb r3, [r0]
	lsls r2, r3, #1
	adds r0, r2, r1
	ldr r4, _08016CE4 @ =0x00000A06
	adds r4, r4, r0
	mov sb, r4
	movs r4, #0xc
	ands r4, r6
	cmp r4, #0
	bne _08016CEC
	cmp r5, #2
	bne _08016CAC
	adds r0, r2, #0
	subs r0, #0xa
	add sb, r0
_08016CAC:
	mov r5, sl
	adds r0, r1, r5
	ldrb r2, [r0]
	adds r3, #2
	mov r6, r8
	adds r0, r1, r6
	ldrh r0, [r0]
	str r0, [sp]
	ldr r7, _08016CE8 @ =0x00001BCC
	adds r0, r1, r7
	ldrh r0, [r0]
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, sb
	movs r1, #5
	bl sub_0801B9AC
	b _08016D4A
	.align 2, 0
_08016CD0: .4byte 0x00001B94
_08016CD4: .4byte 0x00001B96
_08016CD8: .4byte 0x00000EEA
_08016CDC: .4byte 0x00001BC1
_08016CE0: .4byte 0x00001BAC
_08016CE4: .4byte 0x00000A06
_08016CE8: .4byte 0x00001BCC
_08016CEC:
	ldr r2, _08016D00 @ =0x00001BC2
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #5
	bhi _08016D4A
	lsls r0, r0, #2
	ldr r1, _08016D04 @ =_08016D08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08016D00: .4byte 0x00001BC2
_08016D04: .4byte _08016D08
_08016D08: @ jump table
	.4byte _08016D20 @ case 0
	.4byte _08016D4A @ case 1
	.4byte _08016D20 @ case 2
	.4byte _08016D4A @ case 3
	.4byte _08016D4A @ case 4
	.4byte _08016D4A @ case 5
_08016D20:
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #1
	mov r4, sb
	strh r0, [r4]
	adds r0, r3, #2
	strh r0, [r4, #2]
	ldr r0, _08016EB4 @ =gUnk_0200283C
	ldr r2, [r0]
	ldr r5, _08016EB8 @ =0x00001B94
	adds r2, r2, r5
	ldrb r0, [r2]
	lsls r0, r0, #1
	add r0, sb
	adds r1, r3, #3
	strh r1, [r0, #4]
	ldrb r0, [r2]
	lsls r0, r0, #1
	add r0, sb
	adds r3, #4
	strh r3, [r0, #6]
_08016D4A:
	ldr r6, _08016EB4 @ =gUnk_0200283C
	ldr r4, [r6]
	ldr r7, _08016EBC @ =0x00001B93
	adds r0, r4, r7
	ldrb r1, [r0]
	ldr r2, _08016EC0 @ =0x00001B92
	adds r0, r4, r2
	ldrb r5, [r0]
	ldr r3, _08016EB8 @ =0x00001B94
	adds r0, r4, r3
	ldrb r3, [r0]
	adds r3, #2
	ldr r6, _08016EC4 @ =0x00001B96
	adds r0, r4, r6
	ldrb r6, [r0]
	adds r6, #2
	movs r7, #0xa0
	lsls r7, r7, #4
	adds r7, r7, r4
	mov r8, r7
	lsls r5, r5, #6
	lsls r1, r1, #1
	ldr r2, _08016EC8 @ =0x00000ED8
	adds r0, r4, r2
	ldr r0, [r0]
	adds r1, r1, r0
	adds r5, r5, r1
	ldr r7, _08016ECC @ =0x00001BA3
	adds r4, r4, r7
	ldrb r0, [r4]
	movs r1, #0x60
	str r3, [sp, #0x1c]
	bl __umodsi3
	strb r0, [r4]
	ldr r0, _08016EB4 @ =gUnk_0200283C
	ldr r1, [r0]
	adds r2, r7, #0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r4, _08016ED0 @ =0x000010C4
	adds r1, r1, r4
	ldr r7, _08016EB4 @ =gUnk_0200283C
	ldr r0, [r7]
	adds r0, r0, r1
	str r6, [sp]
	ldr r3, [sp, #0x1c]
	lsls r1, r3, #1
	str r1, [sp, #4]
	movs r1, #0x40
	mov sb, r1
	str r1, [sp, #8]
	mov r1, r8
	adds r2, r5, #0
	bl sub_08000CD4
	ldr r7, [r7]
	ldr r2, _08016ED4 @ =0x00001BC1
	adds r0, r7, r2
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08016DDA
	b _08016EEC
_08016DDA:
	ldr r3, _08016ED8 @ =0x00001BC2
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #1
	beq _08016DE6
	b _08016FCA
_08016DE6:
	ldr r4, _08016EDC @ =0x00000E98
	adds r4, r4, r7
	mov sb, r4
	ldr r5, _08016EE0 @ =0x00001BC6
	adds r0, r7, r5
	ldrh r1, [r0]
	mov r0, sb
	bl sub_08018F80
	ldr r6, _08016EB4 @ =gUnk_0200283C
	ldr r4, [r6]
	ldr r5, _08016EE4 @ =0x00000EDC
	adds r1, r4, r5
	ldr r2, _08016EBC @ =0x00001B93
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r3, _08016EC0 @ =0x00001B92
	adds r0, r4, r3
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #6
	adds r0, #2
	adds r1, r1, r0
	mov sl, r1
	ldr r6, _08016ECC @ =0x00001BA3
	adds r4, r4, r6
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r0, _08016EB4 @ =gUnk_0200283C
	ldr r1, [r0]
	adds r1, r1, r6
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _08016ED0 @ =0x000010C4
	adds r1, r1, r2
	ldr r3, _08016EB4 @ =gUnk_0200283C
	ldr r0, [r3]
	adds r0, r0, r1
	mov r1, sb
	mov r2, sl
	movs r3, #2
	bl sub_08000BB4
	ldr r6, _08016EB4 @ =gUnk_0200283C
	ldr r4, [r6]
	adds r5, r4, r5
	ldr r1, _08016EBC @ =0x00001B93
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, [r5]
	adds r1, r1, r0
	ldr r2, _08016EC0 @ =0x00001B92
	adds r0, r4, r2
	ldrb r0, [r0]
	adds r0, #2
	lsls r0, r0, #6
	adds r0, #2
	adds r1, r1, r0
	mov sl, r1
	ldr r3, _08016EE8 @ =0x00000E9C
	adds r3, r3, r7
	mov sb, r3
	ldr r5, _08016ECC @ =0x00001BA3
	adds r4, r4, r5
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r1, [r6]
	adds r1, r1, r5
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r6, _08016ED0 @ =0x000010C4
	adds r1, r1, r6
	ldr r7, _08016EB4 @ =gUnk_0200283C
	ldr r0, [r7]
	adds r0, r0, r1
	mov r1, sb
	mov r2, sl
	movs r3, #2
	bl sub_08000BB4
	b _08016FCA
	.align 2, 0
_08016EB4: .4byte gUnk_0200283C
_08016EB8: .4byte 0x00001B94
_08016EBC: .4byte 0x00001B93
_08016EC0: .4byte 0x00001B92
_08016EC4: .4byte 0x00001B96
_08016EC8: .4byte 0x00000ED8
_08016ECC: .4byte 0x00001BA3
_08016ED0: .4byte 0x000010C4
_08016ED4: .4byte 0x00001BC1
_08016ED8: .4byte 0x00001BC2
_08016EDC: .4byte 0x00000E98
_08016EE0: .4byte 0x00001BC6
_08016EE4: .4byte 0x00000EDC
_08016EE8: .4byte 0x00000E9C
_08016EEC:
	ldr r6, _08017034 @ =0x00000E98
	adds r0, r7, r6
	ldr r2, _08017038 @ =0x00001B94
	adds r1, r7, r2
	ldrb r1, [r1]
	adds r1, #2
	lsls r1, r1, #1
	bl memzero
	ldr r3, _0801703C @ =gUnk_0200283C
	ldr r2, [r3]
	ldr r4, _08017040 @ =0x00000E9A
	adds r0, r2, r4
	ldr r5, _08017044 @ =0x00000EEB
	adds r1, r2, r5
	ldrb r1, [r1]
	ldr r7, _08017048 @ =0x00000EFE
	adds r2, r2, r7
	ldrh r2, [r2]
	bl sub_0801BC70
	ldr r0, _0801703C @ =gUnk_0200283C
	ldr r4, [r0]
	ldr r2, _0801704C @ =0x00000EDC
	adds r1, r4, r2
	ldr r3, _08017050 @ =0x00001B93
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r5, _08017054 @ =0x00001B92
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r7, _08017038 @ =0x00001B94
	adds r0, r4, r7
	ldrb r5, [r0]
	adds r5, #2
	adds r6, r4, r6
	ldr r0, _08017058 @ =0x00001BA3
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r2, _0801703C @ =gUnk_0200283C
	ldr r1, [r2]
	ldr r3, _08017058 @ =0x00001BA3
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r4, _0801705C @ =0x000010C4
	adds r1, r1, r4
	ldr r7, _0801703C @ =gUnk_0200283C
	ldr r0, [r7]
	adds r0, r0, r1
	adds r1, r6, #0
	mov r2, sl
	adds r3, r5, #0
	bl sub_08000BB4
	movs r0, #0x40
	add sl, r0
	ldr r4, [r7]
	ldr r1, _08017058 @ =0x00001BA3
	adds r4, r4, r1
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r0, [r7]
	ldr r2, _08017058 @ =0x00001BA3
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _0801705C @ =0x000010C4
	adds r0, r0, r3
	ldr r1, [r7]
	adds r0, r1, r0
	ldr r4, _08017038 @ =0x00001B94
	adds r2, r1, r4
	ldrb r3, [r2]
	adds r3, #2
	ldr r5, _08017060 @ =0x00001B96
	adds r1, r1, r5
	ldrb r1, [r1]
	adds r1, #1
	str r1, [sp]
	mov r6, sb
	str r6, [sp, #4]
	movs r1, #0
	mov r2, sl
	bl sub_08000D94
_08016FCA:
	ldr r2, _0801703C @ =gUnk_0200283C
	ldr r0, [r2]
	ldr r7, _08017064 @ =0x00001B98
	adds r0, r0, r7
	movs r1, #3
	strb r1, [r0]
	ldr r0, [r2]
	ldr r1, _08017068 @ =0x00001BA4
	adds r0, r0, r1
	movs r1, #5
	strb r1, [r0]
	bl sub_08015188
_08016FE4:
	ldr r0, _0801703C @ =gUnk_0200283C
	ldr r3, [r0]
	ldr r2, _0801706C @ =0x00001BB8
	adds r1, r3, r2
	ldrb r1, [r1]
	mov sb, r0
	cmp r1, #1
	beq _08016FF6
	b _080171FE
_08016FF6:
	ldr r4, _08017070 @ =0x00001B74
	adds r0, r3, r4
	ldr r0, [r0]
	ldrb r1, [r0, #7]
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bls _08017010
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08017010
	b _080171FE
_08017010:
	movs r5, #0
	movs r6, #0
	mov r8, r6
	ldr r7, _08017074 @ =0x00001BAC
	adds r0, r3, r7
	ldrb r2, [r0]
	cmp r2, #0
	beq _08017086
	ldr r1, _08017078 @ =0x00001BC1
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0801707C
	movs r6, #3
	b _08017086
	.align 2, 0
_08017034: .4byte 0x00000E98
_08017038: .4byte 0x00001B94
_0801703C: .4byte gUnk_0200283C
_08017040: .4byte 0x00000E9A
_08017044: .4byte 0x00000EEB
_08017048: .4byte 0x00000EFE
_0801704C: .4byte 0x00000EDC
_08017050: .4byte 0x00001B93
_08017054: .4byte 0x00001B92
_08017058: .4byte 0x00001BA3
_0801705C: .4byte 0x000010C4
_08017060: .4byte 0x00001B96
_08017064: .4byte 0x00001B98
_08017068: .4byte 0x00001BA4
_0801706C: .4byte 0x00001BB8
_08017070: .4byte 0x00001B74
_08017074: .4byte 0x00001BAC
_08017078: .4byte 0x00001BC1
_0801707C:
	cmp r2, #1
	bne _08017084
	movs r6, #6
	b _08017086
_08017084:
	movs r5, #6
_08017086:
	mov r2, sb
	ldr r3, [r2]
	ldr r4, _08017124 @ =0x00000EF8
	adds r0, r3, r4
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0801709C
	movs r7, #3
	mov r8, r7
_0801709C:
	ldr r1, _08017128 @ =0x00001BB9
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08017140
	ldr r4, _0801712C @ =gUnk_03000DD0
	ldr r2, _08017130 @ =0x00001B93
	adds r1, r3, r2
	ldr r7, _08017134 @ =0x00001B94
	adds r0, r3, r7
	ldrb r0, [r0]
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #1
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r1, r8
	subs r0, r0, r1
	adds r3, r4, #0
	adds r3, #0x3a
	ldrb r1, [r3]
	strb r0, [r3]
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, r0, r6
	lsls r0, r0, #3
	add r0, r8
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	strb r0, [r2]
	ldr r0, [r3]
	ldr r2, _08017138 @ =0x00001B92
	adds r1, r0, r2
	ldr r5, _0801713C @ =0x00001B96
	adds r0, r0, r5
	ldrb r0, [r0]
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r0, #2
	lsls r0, r0, #3
	mov r6, r8
	subs r0, r0, r6
	adds r3, r4, #0
	adds r3, #0x3e
	ldrb r1, [r3]
	strb r0, [r3]
	mov r7, sb
	ldr r0, [r7]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #3
	add r0, r8
	adds r2, r4, #0
	adds r2, #0x3f
	ldrb r1, [r2]
	strb r0, [r2]
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4]
	adds r3, #4
	b _080171BC
	.align 2, 0
_08017124: .4byte 0x00000EF8
_08017128: .4byte 0x00001BB9
_0801712C: .4byte gUnk_03000DD0
_08017130: .4byte 0x00001B93
_08017134: .4byte 0x00001B94
_08017138: .4byte 0x00001B92
_0801713C: .4byte 0x00001B96
_08017140:
	ldr r4, _08017250 @ =gUnk_03000DD0
	ldr r2, _08017254 @ =0x00001B93
	adds r1, r3, r2
	ldr r7, _08017258 @ =0x00001B94
	adds r0, r3, r7
	ldrb r0, [r0]
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #1
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r1, r8
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r3, [r1]
	strb r0, [r1]
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, r0, r6
	lsls r0, r0, #3
	add r0, r8
	adds r2, r4, #0
	adds r2, #0x3d
	ldrb r1, [r2]
	strb r0, [r2]
	ldr r0, [r3]
	ldr r2, _0801725C @ =0x00001B92
	adds r1, r0, r2
	ldr r5, _08017260 @ =0x00001B96
	adds r0, r0, r5
	ldrb r0, [r0]
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r0, #2
	lsls r0, r0, #3
	mov r6, r8
	subs r0, r0, r6
	adds r1, r4, #0
	adds r1, #0x40
	ldrb r3, [r1]
	strb r0, [r1]
	mov r7, sb
	ldr r0, [r7]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #3
	add r0, r8
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	strb r0, [r2]
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4]
	adds r3, r4, #0
	adds r3, #0x43
_080171BC:
	ldrb r1, [r3]
	movs r0, #0xe0
	ands r0, r1
	ldrb r1, [r3]
	strb r0, [r3]
	ldrb r1, [r3]
	movs r0, #0xf
	ldrb r2, [r3]
	orrs r0, r1
	strb r0, [r3]
	adds r3, r4, #0
	ldr r0, _08017264 @ =gUnk_0200283C
	ldr r0, [r0]
	ldr r4, _08017268 @ =0x00001BBB
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #1
	bne _080171FE
	adds r1, r3, #0
	adds r1, #0x44
	ldrb r0, [r1]
	movs r0, #0x1f
	strb r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r3]
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3a
	adds r1, #0x40
	movs r2, #6
	bl CpuSet
_080171FE:
	ldr r1, _08017264 @ =gUnk_0200283C
	ldr r3, [r1]
	ldr r5, _0801726C @ =0x00001B84
	adds r0, r3, r5
	ldrh r2, [r0]
	ldr r6, _08017270 @ =0x00001B74
	adds r0, r3, r6
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	subs r0, #1
	mov sb, r1
	cmp r2, r0
	blt _08017284
	ldr r7, _08017274 @ =0x00000EEE
	adds r0, r3, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _08017284
	ldr r1, _08017278 @ =0x00001B98
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08017284
	ldr r2, _0801727C @ =0x00001BA7
	adds r0, r3, r2
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08017284
	bl sub_08016318
	mov r3, sb
	ldr r0, [r3]
	ldr r4, _08017280 @ =0x00001BA4
	adds r0, r0, r4
	movs r1, #9
	strb r1, [r0]
	bl _08017AFC
	.align 2, 0
_08017250: .4byte gUnk_03000DD0
_08017254: .4byte 0x00001B93
_08017258: .4byte 0x00001B94
_0801725C: .4byte 0x00001B92
_08017260: .4byte 0x00001B96
_08017264: .4byte gUnk_0200283C
_08017268: .4byte 0x00001BBB
_0801726C: .4byte 0x00001B84
_08017270: .4byte 0x00001B74
_08017274: .4byte 0x00000EEE
_08017278: .4byte 0x00001B98
_0801727C: .4byte 0x00001BA7
_08017280: .4byte 0x00001BA4
_08017284:
	mov r5, sb
	ldr r0, [r5]
	ldr r6, _08017294 @ =0x00001BA4
	adds r0, r0, r6
	movs r1, #6
	strb r1, [r0]
	bl _08017AFC
	.align 2, 0
_08017294: .4byte 0x00001BA4
_08017298:
	mov r7, sb
	ldr r2, [r7]
	ldr r1, _080172B8 @ =0x00000EF8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080172C0
	ldr r3, _080172BC @ =0x00001BA4
	adds r1, r2, r3
	movs r0, #0xc
	strb r0, [r1]
	bl _08017AFC
	.align 2, 0
_080172B8: .4byte 0x00000EF8
_080172BC: .4byte 0x00001BA4
_080172C0:
	bl sub_08018568
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r0, #1
	bne _080172D8
	bl sub_08018D58
	movs r0, #1
	bl _08017B12
_080172D8:
	ldr r4, [sp, #0x10]
	cmp r4, #0xff
	beq _080172E2
	bl _08017AFC
_080172E2:
	mov r5, sb
	ldr r0, [r5]
	ldr r6, _080172F8 @ =0x00001BA4
	adds r0, r0, r6
	movs r1, #0xb
	strb r1, [r0]
	movs r7, #0
	str r7, [sp, #0x10]
	bl _08017AFC
	.align 2, 0
_080172F8: .4byte 0x00001BA4
_080172FC:
	bl sub_08016318
_08017300:
	ldr r2, _08017324 @ =gUnk_0200283C
	ldr r0, [r2]
	ldr r1, _08017328 @ =0x00001BA4
	adds r0, r0, r1
	movs r1, #0xa
	strb r1, [r0]
	ldr r0, [r2]
	ldr r2, _0801732C @ =0x00001B99
	adds r0, r0, r2
	movs r1, #8
	strb r1, [r0]
	bl sub_08018D58
	bl sub_080188D0
	bl _08016AC0
	.align 2, 0
_08017324: .4byte gUnk_0200283C
_08017328: .4byte 0x00001BA4
_0801732C: .4byte 0x00001B99
_08017330:
	bl sub_08018808
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _0801733E
	b _08017AFC
_0801733E:
	bl sub_08018D58
	bl _08016AC0
_08017346:
	mov r3, sb
	ldr r2, [r3]
	ldr r4, _08017368 @ =0x00000EF2
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017374
	ldr r5, _0801736C @ =0x00001BA4
	adds r1, r2, r5
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, [r3]
	ldr r6, _08017370 @ =0x00001BA5
	adds r0, r0, r6
	movs r1, #0xc
	strb r1, [r0]
	b _08017AFC
	.align 2, 0
_08017368: .4byte 0x00000EF2
_0801736C: .4byte 0x00001BA4
_08017370: .4byte 0x00001BA5
_08017374:
	ldr r7, _080173CC @ =0x00001BC1
	adds r0, r2, r7
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080173E4
	movs r1, #0xef
	lsls r1, r1, #4
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080173E4
	ldr r3, _080173D0 @ =0x00000EF8
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x82
	ands r0, r1
	cmp r0, #0
	bne _080173E4
	ldr r4, _080173D4 @ =0x00001BAA
	adds r1, r2, r4
	movs r0, #4
	strb r0, [r1]
	mov r5, sb
	ldr r0, [r5]
	ldr r6, _080173D8 @ =0x00001B94
	adds r1, r0, r6
	ldrb r1, [r1]
	subs r7, #0x16
	adds r0, r0, r7
	strb r1, [r0]
	ldr r0, [r5]
	ldr r1, _080173DC @ =0x00001BA5
	adds r0, r0, r1
	movs r1, #0xc
	strb r1, [r0]
	ldr r0, [r5]
	ldr r2, _080173E0 @ =0x00001BA4
	adds r0, r0, r2
	movs r1, #2
	strb r1, [r0]
	b _08017AFC
	.align 2, 0
_080173CC: .4byte 0x00001BC1
_080173D0: .4byte 0x00000EF8
_080173D4: .4byte 0x00001BAA
_080173D8: .4byte 0x00001B94
_080173DC: .4byte 0x00001BA5
_080173E0: .4byte 0x00001BA4
_080173E4:
	mov r3, sb
	ldr r0, [r3]
	ldr r4, _08017408 @ =0x00001BA4
	adds r0, r0, r4
	movs r1, #0xc
	strb r1, [r0]
_080173F0:
	ldr r0, _0801740C @ =gUnk_0200283C
	ldr r0, [r0]
	ldr r5, _08017410 @ =0x00000EF8
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08017414
	bl sub_08014118
	b _08017418
	.align 2, 0
_08017408: .4byte 0x00001BA4
_0801740C: .4byte gUnk_0200283C
_08017410: .4byte 0x00000EF8
_08017414:
	bl sub_08018D58
_08017418:
	ldr r2, _08017490 @ =gUnk_0200283C
	ldr r0, [r2]
	ldr r6, _08017494 @ =0x00001BA4
	adds r0, r0, r6
	movs r1, #0xd
	strb r1, [r0]
	ldr r0, [r2]
	ldr r7, _08017498 @ =0x00000EF8
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	bne _0801743C
	bl _08016AC0
_0801743C:
	mov r0, sb
	ldr r1, [r0]
	ldr r2, _0801749C @ =0x00001BB8
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801744C
	b _0801754E
_0801744C:
	ldr r3, _080174A0 @ =0x00001BB9
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080174B8
	ldr r3, _080174A4 @ =gUnk_03000DD0
	ldr r4, _080174A8 @ =0x00001BB1
	adds r0, r1, r4
	ldrb r0, [r0]
	adds r2, r3, #0
	adds r2, #0x3a
	ldrb r1, [r2]
	strb r0, [r2]
	mov r5, sb
	ldr r0, [r5]
	ldr r6, _080174AC @ =0x00001BB0
	adds r0, r0, r6
	ldrb r0, [r0]
	adds r2, #1
	ldrb r1, [r2]
	strb r0, [r2]
	ldr r0, [r5]
	ldr r7, _080174B0 @ =0x00001BB3
	adds r0, r0, r7
	ldrb r0, [r0]
	adds r2, #3
	ldrb r1, [r2]
	strb r0, [r2]
	ldr r0, [r5]
	ldr r1, _080174B4 @ =0x00001BB2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, #1
	b _080174F6
	.align 2, 0
_08017490: .4byte gUnk_0200283C
_08017494: .4byte 0x00001BA4
_08017498: .4byte 0x00000EF8
_0801749C: .4byte 0x00001BB8
_080174A0: .4byte 0x00001BB9
_080174A4: .4byte gUnk_03000DD0
_080174A8: .4byte 0x00001BB1
_080174AC: .4byte 0x00001BB0
_080174B0: .4byte 0x00001BB3
_080174B4: .4byte 0x00001BB2
_080174B8:
	ldr r3, _08017568 @ =gUnk_03000DD0
	ldr r2, _0801756C @ =0x00001BB1
	adds r0, r1, r2
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x3c
	ldrb r2, [r0]
	strb r1, [r0]
	mov r4, sb
	ldr r0, [r4]
	ldr r5, _08017570 @ =0x00001BB0
	adds r0, r0, r5
	ldrb r0, [r0]
	adds r2, r3, #0
	adds r2, #0x3d
	ldrb r1, [r2]
	strb r0, [r2]
	ldr r0, [r4]
	ldr r6, _08017574 @ =0x00001BB3
	adds r0, r0, r6
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x40
	ldrb r2, [r0]
	strb r1, [r0]
	ldr r0, [r4]
	ldr r7, _08017578 @ =0x00001BB2
	adds r0, r0, r7
	ldrb r0, [r0]
	adds r2, r3, #0
	adds r2, #0x41
_080174F6:
	ldrb r1, [r2]
	strb r0, [r2]
	ldr r2, _0801757C @ =gUnk_0200283C
	ldr r0, [r2]
	ldr r4, _08017580 @ =0x00001BB6
	adds r1, r0, r4
	ldrh r1, [r1]
	strh r1, [r3]
	ldr r5, _08017584 @ =0x00001BB4
	adds r0, r0, r5
	ldrb r0, [r0]
	adds r4, r3, #0
	adds r4, #0x42
	ldrb r1, [r4]
	strb r0, [r4]
	ldr r2, [r2]
	ldr r6, _08017588 @ =0x00001BB5
	adds r0, r2, r6
	ldrb r0, [r0]
	adds r4, #1
	ldrb r1, [r4]
	strb r0, [r4]
	ldr r7, _0801758C @ =0x00001BBB
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801754E
	ldr r1, _08017590 @ =0x00001BBA
	adds r0, r2, r1
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x44
	ldrb r2, [r0]
	strb r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r3]
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3a
	adds r1, #0x40
	movs r2, #6
	bl CpuSet
_0801754E:
	ldr r0, _0801757C @ =gUnk_0200283C
	ldr r0, [r0]
	ldr r2, _08017594 @ =0x00000EF8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08017564
	bl sub_08018D58
_08017564:
	movs r0, #0xff
	b _08017B12
	.align 2, 0
_08017568: .4byte gUnk_03000DD0
_0801756C: .4byte 0x00001BB1
_08017570: .4byte 0x00001BB0
_08017574: .4byte 0x00001BB3
_08017578: .4byte 0x00001BB2
_0801757C: .4byte gUnk_0200283C
_08017580: .4byte 0x00001BB6
_08017584: .4byte 0x00001BB4
_08017588: .4byte 0x00001BB5
_0801758C: .4byte 0x00001BBB
_08017590: .4byte 0x00001BBA
_08017594: .4byte 0x00000EF8
_08017598:
	mov r3, sb
	ldr r1, [r3]
	ldr r4, _080176C4 @ =0x00001BAA
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	mov sl, r5
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080175B6
	bl _08016AC0
_080175B6:
	mov r6, sb
	ldr r0, [r6]
	ldr r7, _080176C4 @ =0x00001BAA
	adds r0, r0, r7
	movs r1, #0
	strb r1, [r0]
	ldr r2, [r6]
	ldr r1, _080176C8 @ =0x00001BB8
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _080175D0
	b _080177D8
_080175D0:
	ldr r3, _080176CC @ =0x00001B74
	adds r0, r2, r3
	ldr r0, [r0]
	ldrb r1, [r0, #7]
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bls _080175EA
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080175EA
	b _080177D8
_080175EA:
	movs r4, #0
	mov r8, r4
	ldr r5, _080176D0 @ =0x00000EF8
	adds r0, r2, r5
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08017600
	movs r6, #3
	mov r8, r6
_08017600:
	ldr r7, _080176D4 @ =0x00001BB9
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _080176F0
	ldr r7, _080176D8 @ =gUnk_03000DD0
	ldr r4, _080176DC @ =0x00001B93
	adds r5, r2, r4
	ldr r3, _080176E0 @ =0x00001B94
	adds r0, r2, r3
	ldrb r0, [r0]
	ldr r6, _080176E4 @ =0x00001BAB
	adds r1, r2, r6
	ldrb r1, [r1]
	subs r0, r0, r1
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	ldrb r5, [r5]
	adds r0, r0, r5
	adds r1, r1, r0
	adds r1, #2
	lsls r1, r1, #3
	mov r0, r8
	subs r1, r1, r0
	adds r2, r7, #0
	adds r2, #0x3a
	ldrb r0, [r2]
	strb r1, [r2]
	mov r2, sb
	ldr r1, [r2]
	adds r4, r1, r4
	adds r3, r1, r3
	ldrb r0, [r3]
	adds r1, r1, r6
	ldrb r1, [r1]
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrb r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #3
	add r0, r8
	adds r2, r7, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	strb r0, [r2]
	mov r3, sb
	ldr r0, [r3]
	ldr r1, _080176E8 @ =0x00001B92
	adds r2, r0, r1
	ldr r3, _080176EC @ =0x00001B96
	adds r0, r0, r3
	ldrb r0, [r0]
	lsrs r0, r0, #1
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r0, #2
	lsls r0, r0, #3
	mov r4, r8
	subs r0, r0, r4
	adds r4, r7, #0
	adds r4, #0x3e
	ldrb r2, [r4]
	strb r0, [r4]
	mov r5, sb
	ldr r0, [r5]
	adds r1, r0, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsrs r0, r0, #1
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	adds r2, r7, #0
	adds r2, #0x3f
	ldrb r1, [r2]
	strb r0, [r2]
	adds r2, #3
	ldrb r1, [r2]
	movs r0, #0xe0
	ands r0, r1
	ldrb r1, [r2]
	strb r0, [r2]
	ldrb r0, [r2]
	movs r1, #0xf
	orrs r0, r1
	ldrb r1, [r2]
	mov r6, sl
	orrs r0, r6
	strb r0, [r2]
	ldrh r1, [r7]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	b _080177A6
	.align 2, 0
_080176C4: .4byte 0x00001BAA
_080176C8: .4byte 0x00001BB8
_080176CC: .4byte 0x00001B74
_080176D0: .4byte 0x00000EF8
_080176D4: .4byte 0x00001BB9
_080176D8: .4byte gUnk_03000DD0
_080176DC: .4byte 0x00001B93
_080176E0: .4byte 0x00001B94
_080176E4: .4byte 0x00001BAB
_080176E8: .4byte 0x00001B92
_080176EC: .4byte 0x00001B96
_080176F0:
	ldr r7, _08017934 @ =gUnk_03000DD0
	ldr r4, _08017938 @ =0x00001B93
	adds r5, r2, r4
	ldr r3, _0801793C @ =0x00001B94
	adds r0, r2, r3
	ldrb r0, [r0]
	ldr r6, _08017940 @ =0x00001BAB
	adds r1, r2, r6
	ldrb r1, [r1]
	subs r0, r0, r1
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	ldrb r5, [r5]
	adds r0, r0, r5
	adds r1, r1, r0
	adds r1, #2
	lsls r1, r1, #3
	mov r5, r8
	subs r1, r1, r5
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r2, [r0]
	strb r1, [r0]
	mov r0, sb
	ldr r1, [r0]
	adds r4, r1, r4
	adds r3, r1, r3
	ldrb r0, [r3]
	adds r1, r1, r6
	ldrb r1, [r1]
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrb r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #3
	add r0, r8
	adds r2, r7, #0
	adds r2, #0x3d
	ldrb r1, [r2]
	strb r0, [r2]
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _08017944 @ =0x00001B92
	adds r1, r0, r2
	ldr r3, _08017948 @ =0x00001B96
	adds r0, r0, r3
	ldrb r0, [r0]
	lsrs r0, r0, #1
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r0, #2
	lsls r0, r0, #3
	subs r0, r0, r5
	adds r1, r7, #0
	adds r1, #0x40
	ldrb r4, [r1]
	strb r0, [r1]
	mov r4, sb
	ldr r0, [r4]
	adds r2, r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsrs r0, r0, #1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #3
	add r0, r8
	adds r2, r7, #0
	adds r2, #0x41
	ldrb r1, [r2]
	strb r0, [r2]
	adds r2, #2
	ldrb r1, [r2]
	movs r0, #0xe0
	ands r0, r1
	ldrb r1, [r2]
	strb r0, [r2]
	ldrb r0, [r2]
	movs r1, #0xf
	orrs r0, r1
	ldrb r1, [r2]
	mov r5, sl
	orrs r0, r5
	strb r0, [r2]
	ldrh r1, [r7]
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r6, #0
_080177A6:
	orrs r0, r1
	strh r0, [r7]
	adds r3, r7, #0
	mov r7, sb
	ldr r0, [r7]
	ldr r1, _0801794C @ =0x00001BBB
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080177D8
	adds r1, r3, #0
	adds r1, #0x44
	ldrb r0, [r1]
	movs r0, #0x1f
	strb r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r3]
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3a
	adds r1, #0x40
	movs r2, #6
	bl CpuSet
_080177D8:
	bl sub_08014118
	ldr r6, _08017950 @ =gUnk_0200283C
	ldr r4, [r6]
	movs r5, #0xa0
	lsls r5, r5, #4
	adds r0, r4, r5
	ldr r2, _08017940 @ =0x00001BAB
	adds r1, r4, r2
	ldrb r1, [r1]
	adds r1, #2
	ldr r3, _08017954 @ =0x00000EEA
	adds r2, r4, r3
	ldrb r3, [r2]
	str r1, [sp]
	ldr r7, _08017958 @ =0x00000EFE
	adds r4, r4, r7
	ldrh r2, [r4]
	str r2, [sp, #4]
	movs r2, #4
	str r2, [sp, #8]
	movs r2, #2
	bl sub_0801BB1C
	ldr r4, [r6]
	adds r5, r5, r4
	mov sb, r5
	ldr r0, _0801795C @ =0x00000ED8
	adds r1, r4, r0
	ldr r2, _08017938 @ =0x00001B93
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, [r1]
	adds r2, r2, r0
	ldr r3, _0801793C @ =0x00001B94
	adds r0, r4, r3
	ldrb r0, [r0]
	ldr r5, _08017940 @ =0x00001BAB
	adds r1, r4, r5
	ldrb r5, [r1]
	subs r0, r0, r5
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r7, _08017944 @ =0x00001B92
	adds r1, r4, r7
	ldr r0, _08017948 @ =0x00001B96
	mov r8, r0
	adds r0, r4, r0
	ldrb r0, [r0]
	lsrs r0, r0, #1
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #6
	adds r2, r2, r0
	mov sl, r2
	adds r5, #2
	movs r7, #2
	ldr r1, _08017960 @ =0x00001BA3
	adds r4, r4, r1
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r1, [r6]
	ldr r2, _08017960 @ =0x00001BA3
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r3, _08017964 @ =0x000010C4
	adds r1, r1, r3
	ldr r0, [r6]
	adds r0, r0, r1
	str r7, [sp]
	lsls r1, r5, #1
	str r1, [sp, #4]
	movs r4, #0x40
	str r4, [sp, #8]
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	bl sub_08000CD4
	ldr r4, [r6]
	ldr r5, _08017968 @ =0x00000EDC
	adds r1, r4, r5
	ldr r0, _08017938 @ =0x00001B93
	adds r0, r4, r0
	str r0, [sp, #0x14]
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, [r1]
	adds r2, r2, r0
	ldr r1, _0801793C @ =0x00001B94
	adds r1, r4, r1
	str r1, [sp, #0x18]
	ldrb r0, [r1]
	ldr r3, _08017940 @ =0x00001BAB
	adds r1, r4, r3
	ldrb r1, [r1]
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r5, _08017944 @ =0x00001B92
	adds r3, r4, r5
	add r8, r4
	mov r1, r8
	ldrb r0, [r1]
	lsrs r0, r0, #1
	ldrb r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #6
	adds r2, r2, r0
	mov sl, r2
	ldr r2, _08017960 @ =0x00001BA3
	adds r4, r4, r2
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r0, [r6]
	ldr r3, _08017960 @ =0x00001BA3
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r4, _08017964 @ =0x000010C4
	adds r0, r0, r4
	ldr r1, [r6]
	adds r0, r1, r0
	adds r5, #0x19
	adds r1, r1, r5
	ldrb r3, [r1]
	adds r3, #2
	str r7, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #0
	mov r2, sl
	bl sub_08000D94
	ldr r1, [r6]
	ldr r2, _0801796C @ =0x00001BA5
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0801797C
	adds r2, r1, r5
	ldrb r0, [r2]
	cmp r0, #2
	bls _08017970
	strb r7, [r2]
	bl _08016AC0
	.align 2, 0
_08017934: .4byte gUnk_03000DD0
_08017938: .4byte 0x00001B93
_0801793C: .4byte 0x00001B94
_08017940: .4byte 0x00001BAB
_08017944: .4byte 0x00001B92
_08017948: .4byte 0x00001B96
_0801794C: .4byte 0x00001BBB
_08017950: .4byte gUnk_0200283C
_08017954: .4byte 0x00000EEA
_08017958: .4byte 0x00000EFE
_0801795C: .4byte 0x00000ED8
_08017960: .4byte 0x00001BA3
_08017964: .4byte 0x000010C4
_08017968: .4byte 0x00000EDC
_0801796C: .4byte 0x00001BA5
_08017970:
	ldr r3, _08017978 @ =0x00001BA4
	adds r1, r1, r3
	b _080179A0
	.align 2, 0
_08017978: .4byte 0x00001BA4
_0801797C:
	ldr r4, _08017994 @ =0x00001BAB
	adds r3, r1, r4
	ldr r5, _08017998 @ =0x00001B94
	adds r0, r1, r5
	ldrb r2, [r0]
	ldrb r0, [r3]
	cmp r0, r2
	bhs _0801799C
	strb r2, [r3]
	bl _08016AC0
	.align 2, 0
_08017994: .4byte 0x00001BAB
_08017998: .4byte 0x00001B94
_0801799C:
	ldr r6, _080179A8 @ =0x00001BA4
	adds r1, r1, r6
_080179A0:
	movs r0, #3
	strb r0, [r1]
	bl _08016AC0
	.align 2, 0
_080179A8: .4byte 0x00001BA4
_080179AC:
	mov r7, sb
	ldr r1, [r7]
	ldr r0, _080179F8 @ =0x00001BAA
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080179C6
	bl _08016AC0
_080179C6:
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _080179F8 @ =0x00001BAA
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0]
	mov r3, sb
	ldr r0, [r3]
	subs r2, #5
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _080179FC @ =0x00001BA4
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r3]
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _080179F0
	bl _08016AC0
_080179F0:
	bl sub_08014118
	bl _08016AC0
	.align 2, 0
_080179F8: .4byte 0x00001BAA
_080179FC: .4byte 0x00001BA4
_08017A00:
	ldr r2, _08017AB4 @ =gUnk_0200283C
	ldr r0, [r2]
	ldr r5, _08017AB8 @ =0x00000EF4
	adds r0, r0, r5
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	ldr r6, _08017ABC @ =0x00001BA4
	adds r0, r0, r6
	movs r1, #0xf
	strb r1, [r0]
	ldr r0, _08017AC0 @ =gUnk_02002500
	ldr r1, [r2]
	movs r7, #0xa0
	lsls r7, r7, #4
	adds r1, r1, r7
	movs r2, #0x10
	bl CpuSet
_08017A26:
	ldr r4, _08017AB4 @ =gUnk_0200283C
	ldr r1, [r4]
	ldr r0, _08017AB8 @ =0x00000EF4
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	ldr r3, _08017AC4 @ =0x00000EF3
	adds r2, r1, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r5, [r2]
	cmp r0, r5
	bhs _08017AC8
	ldr r6, _08017AB8 @ =0x00000EF4
	adds r0, r1, r6
	ldrb r0, [r0]
	movs r7, #0xa0
	lsls r7, r7, #4
	adds r5, r1, r7
	ldr r1, _08017AC0 @ =gUnk_02002500
	mov sb, r1
	ldrb r6, [r2]
	movs r2, #0
	mov r8, r2
	movs r3, #0x1f
	mov sl, r3
	subs r7, r6, r0
_08017A60:
	ldrh r1, [r5]
	movs r0, #0x1f
	ands r0, r1
	muls r0, r7, r0
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	ldrh r0, [r5]
	lsrs r0, r0, #5
	mov r1, sl
	ands r0, r1
	muls r0, r7, r0
	adds r1, r6, #0
	bl __divsi3
	lsls r0, r0, #5
	orrs r4, r0
	ldrh r0, [r5]
	lsrs r0, r0, #0xa
	mov r2, sl
	ands r0, r2
	muls r0, r7, r0
	adds r1, r6, #0
	bl __divsi3
	lsls r0, r0, #0xa
	orrs r0, r4
	mov r3, sb
	strh r0, [r3]
	movs r4, #2
	add sb, r4
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r5, #2
	cmp r0, #0xf
	bls _08017A60
	bl _08016AC0
	.align 2, 0
_08017AB4: .4byte gUnk_0200283C
_08017AB8: .4byte 0x00000EF4
_08017ABC: .4byte 0x00001BA4
_08017AC0: .4byte gUnk_02002500
_08017AC4: .4byte 0x00000EF3
_08017AC8:
	bl sub_08014118
	ldr r0, [r4]
	movs r5, #0xa0
	lsls r5, r5, #4
	adds r0, r0, r5
	ldr r1, _08017AF0 @ =gUnk_02002500
	movs r2, #0x10
	bl CpuSet
	ldr r0, [r4]
	ldr r6, _08017AF4 @ =0x00001BA5
	adds r1, r0, r6
	ldrb r1, [r1]
	ldr r7, _08017AF8 @ =0x00001BA4
	adds r0, r0, r7
_08017AE8:
	strb r1, [r0]
	bl _08016AC0
	.align 2, 0
_08017AF0: .4byte gUnk_02002500
_08017AF4: .4byte 0x00001BA5
_08017AF8: .4byte 0x00001BA4
_08017AFC:
	bl sub_08018D58
	ldr r0, [sp, #0x10]
	cmp r0, #2
	beq _08017B0C
	bl sub_080188D0
	b _08017B10
_08017B0C:
	movs r1, #0
	str r1, [sp, #0x10]
_08017B10:
	ldr r0, [sp, #0x10]
_08017B12:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

