	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r6, #0
_08019970:
	ldrb r0, [r4]
	adds r1, r0, #0
	adds r4, #1
	cmp r1, #0x80
	bne _0801998C
	ldrb r1, [r4]
	lsls r1, r1, #4
	ldr r0, _08019988 @ =gUnk_02002800
	adds r1, r1, r0
	adds r4, #1
	b _080199AC
	.align 2, 0
_08019988: .4byte gUnk_02002800
_0801998C:
	cmp r1, #0x87
	beq _080199A0
	strb r1, [r5]
	adds r5, #1
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r1, r8
	bne _080199C8
	b _080199CE
_080199A0:
	ldr r1, _080199DC @ =gUnk_086254D8
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r4, #1
	ldr r1, [r0]
_080199AC:
	adds r0, r5, #0
	adds r2, r7, #0
	movs r3, #0xff
	bl sub_0801995C
	lsls r0, r0, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	adds r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080199C8:
	subs r7, #1
	cmp r7, #0
	bgt _08019970
_080199CE:
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080199DC: .4byte gUnk_086254D8
