	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	blt _0804C4EC
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	blt _0804C4EC
	cmp r2, #0x1f
	bgt _0804C4EC
	cmp r1, #0x1f
	bgt _0804C4EC
	lsls r0, r2, #0x10
	lsrs r7, r0, #0x10
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08028728
	adds r4, r0, #0
	ldrb r1, [r4]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0804C4EC
	ldrb r1, [r4, #1]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0804C4EC
	ldrb r1, [r4, #2]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0804C4EC
	ldrb r1, [r4, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804C4F2
_0804C4EC:
	movs r0, #1
	rsbs r0, r0, #0
	b _0804C53C
_0804C4F2:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _0804C534 @ =gUnk_0861CA5C
	adds r3, r0, r1
	ldrb r0, [r4, #1]
	adds r2, r0, #0
	ldrb r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804C51E
	cmp r5, #2
	beq _0804C51C
	cmp r5, #4
	beq _0804C51C
	cmp r5, #5
	bne _0804C51E
_0804C51C:
	subs r2, #1
_0804C51E:
	mov r0, r8
	cmp r0, #2
	beq _0804C52E
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804C538
_0804C52E:
	adds r0, r2, #0
	b _0804C53C
	.align 2, 0
_0804C534: .4byte gUnk_0861CA5C
_0804C538:
	movs r0, #2
	rsbs r0, r0, #0
_0804C53C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
