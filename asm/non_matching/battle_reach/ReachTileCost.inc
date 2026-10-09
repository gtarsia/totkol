	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08028728
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0804C5AC
	ldrb r1, [r2, #1]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0804C5AC
	ldrb r1, [r2, #2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0804C5AC
	ldrb r1, [r2, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804C5AC
	cmp r6, #2
	beq _0804C5CA
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _0804C5B0 @ =gUnk_0861CA5C
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804C5B4
_0804C5AC:
	movs r0, #0xff
	b _0804C5D0
	.align 2, 0
_0804C5B0: .4byte gUnk_0861CA5C
_0804C5B4:
	cmp r6, #1
	beq _0804C5CA
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804C5CE
	subs r0, r7, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804C5CE
_0804C5CA:
	movs r0, #1
	b _0804C5D0
_0804C5CE:
	ldrb r0, [r2, #1]
_0804C5D0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
