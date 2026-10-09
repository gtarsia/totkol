	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08006570
sub_08006570: @ 0x08006570
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r7, r1, #0
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	adds r5, r7, #0
	cmp r5, #0
	beq _08006614
_08006584:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _0800659A
_0800658A:
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _08006596
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _0800659A
_08006596:
	adds r1, r0, #0
	b _0800658A
_0800659A:
	adds r4, r1, #0
	cmp r4, #0
	bne _080065A2
	adds r4, r5, #0
_080065A2:
	adds r2, r4, #0
	adds r2, #0x18
	ldr r3, [r4]
	adds r0, r4, #0
	mov r1, sp
	bl _call_via_r3
	cmp r4, r7
	bne _080065BA
	movs r5, #0
	ldr r1, [r4, #4]
	b _080065C4
_080065BA:
	ldr r5, [r4, #4]
	adds r1, r5, #0
	cmp r5, #0
	bne _080065C4
	ldr r5, [r4, #0xc]
_080065C4:
	cmp r1, #0
	beq _080065CC
	ldr r0, [r4, #8]
	str r0, [r1, #8]
_080065CC:
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _080065D6
	ldr r0, [r4, #4]
	str r0, [r1, #4]
_080065D6:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _080065E6
	ldr r0, [r1, #0x10]
	cmp r0, r4
	bne _080065E6
	ldr r0, [r4, #8]
	str r0, [r1, #0x10]
_080065E6:
	ldr r0, [r6, #4]
	cmp r0, r4
	bne _080065F0
	ldr r0, [r4, #8]
	str r0, [r6, #4]
_080065F0:
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	str r0, [r4, #4]
	ldr r0, _0800661C @ =gUnk_0202BA50
	ldr r1, [r6]
	cmp r4, r0
	bne _08006608
	movs r0, #3
_08006602:
	subs r0, #1
	cmp r0, #0
	bge _08006602
_08006608:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_0800490C
	cmp r5, #0
	bne _08006584
_08006614:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800661C: .4byte gUnk_0202BA50

	thumb_func_start sub_08006620
sub_08006620: @ 0x08006620
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	mov r8, r1
	adds r4, r2, #0
	mov sb, r3
	ldr r6, [sp, #0x38]
	lsls r4, r4, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0xd
	adds r4, r4, r0
	lsrs r4, r4, #0x10
	ldr r0, [r5]
	adds r1, r4, #0
	bl sub_080048D4
	adds r7, r0, #0
	adds r1, r4, #0
	bl memzero
	mov r3, r8
	str r3, [r7]
	ldrh r0, [r5, #0xc]
	strh r0, [r7, #0x16]
	cmp r6, #0
	beq _08006686
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0800667C
	adds r1, r0, #0
	ldr r0, [r1, #8]
	adds r2, r7, #0
	adds r2, #0x18
	cmp r0, #0
	beq _08006674
_0800666C:
	ldr r1, [r1, #8]
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _0800666C
_08006674:
	adds r0, r1, #0
	str r7, [r0, #8]
	str r0, [r7, #4]
	b _08006682
_0800667C:
	str r7, [r6, #0x10]
	adds r2, r7, #0
	adds r2, #0x18
_08006682:
	str r6, [r7, #0xc]
	b _080066AE
_08006686:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _08006694
	str r7, [r5, #4]
	adds r2, r7, #0
	adds r2, #0x18
	b _080066AE
_08006694:
	adds r1, r0, #0
	ldr r0, [r1, #8]
	adds r2, r7, #0
	adds r2, #0x18
	cmp r0, #0
	beq _080066A8
_080066A0:
	ldr r1, [r1, #8]
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _080066A0
_080066A8:
	adds r0, r1, #0
	str r7, [r0, #8]
	str r0, [r7, #4]
_080066AE:
	mov r1, sp
	mov r0, sb
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r3, [r7]
	adds r0, r7, #0
	bl _call_via_r3
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #0x14]
	adds r0, r7, #0
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080066E4
sub_080066E4: @ 0x080066E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	ldr r0, _08006768 @ =gUnk_02026CC0
	str r6, [r0]
	ldrh r1, [r6, #0xc]
	movs r2, #1
	eors r1, r2
	strh r1, [r6, #0xc]
	ldr r4, [r6, #4]
	mov sb, r0
	cmp r4, #0
	beq _080067A8
	movs r7, #1
	movs r0, #0
	mov sl, r0
	mov r8, sb
_0800670E:
	ldrh r0, [r4, #0x16]
	ldrh r2, [r6, #0xc]
	adds r1, r7, #0
	ands r1, r0
	cmp r2, r1
	beq _0800674A
	mov r1, sp
	ldrh r0, [r4, #0x14]
	strh r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	str r4, [r0, #8]
	adds r2, r4, #0
	adds r2, #0x18
	ldr r3, [r4]
	adds r0, r4, #0
	mov r1, sp
	bl _call_via_r3
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #0x16]
	movs r1, #1
	eors r0, r1
	strh r0, [r4, #0x16]
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	str r1, [r0, #8]
_0800674A:
	ldrh r0, [r4, #0x14]
	cmp r0, #3
	bne _0800677A
	adds r5, r4, #0
	ldr r3, [r4, #8]
	cmp r3, #0
	beq _0800676C
	ldrh r0, [r3, #0x16]
	ldrh r2, [r6, #0xc]
	adds r1, r7, #0
	ands r1, r0
	cmp r2, r1
	beq _0800676C
	adds r4, r3, #0
	b _0800676E
	.align 2, 0
_08006768: .4byte gUnk_02026CC0
_0800676C:
	ldr r4, [r4, #0xc]
_0800676E:
	mov r1, r8
	ldr r0, [r1]
	adds r1, r5, #0
	bl sub_08006570
	b _080067A4
_0800677A:
	ldr r3, [r4, #0x10]
	cmp r3, #0
	beq _0800678C
	ldrh r0, [r3, #0x16]
	ldrh r2, [r6, #0xc]
	adds r1, r7, #0
	ands r1, r0
	cmp r2, r1
	bne _0800679E
_0800678C:
	ldr r3, [r4, #8]
	cmp r3, #0
	beq _080067A2
	ldrh r0, [r3, #0x16]
	ldrh r2, [r6, #0xc]
	adds r1, r7, #0
	ands r1, r0
	cmp r2, r1
	beq _080067A2
_0800679E:
	adds r4, r3, #0
	b _080067A4
_080067A2:
	ldr r4, [r4, #0xc]
_080067A4:
	cmp r4, #0
	bne _0800670E
_080067A8:
	movs r0, #0
	mov r1, sb
	str r0, [r1]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080067C0
sub_080067C0: @ 0x080067C0
	push {lr}
	ldr r0, [r0]
	bl sub_080048D4
	pop {r1}
	bx r1

	thumb_func_start sub_080067CC
sub_080067CC: @ 0x080067CC
	push {lr}
	ldr r0, [r0]
	bl sub_0800490C
	pop {r0}
	bx r0

	thumb_func_start sub_080067D8
sub_080067D8: @ 0x080067D8
	push {lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _080067E4
	bl sub_08006570
_080067E4:
	pop {r0}
	bx r0

	thumb_func_start sub_080067E8
sub_080067E8: @ 0x080067E8
	push {lr}
	adds r1, r0, #0
	ldr r0, _080067FC @ =gUnk_02026CC0
	ldr r0, [r0]
	ldr r0, [r0]
	bl sub_080048D4
	pop {r1}
	bx r1
	.align 2, 0
_080067FC: .4byte gUnk_02026CC0

	thumb_func_start sub_08006800
sub_08006800: @ 0x08006800
	push {lr}
	adds r1, r0, #0
	ldr r0, _08006814 @ =gUnk_02026CC0
	ldr r0, [r0]
	ldr r0, [r0]
	bl sub_0800490C
	pop {r0}
	bx r0
	.align 2, 0
_08006814: .4byte gUnk_02026CC0

	thumb_func_start sub_08006818
sub_08006818: @ 0x08006818
	push {lr}
	adds r1, r0, #0
	ldr r0, _08006828 @ =gUnk_02026CC0
	ldr r0, [r0]
	bl sub_08006570
	pop {r0}
	bx r0
	.align 2, 0
_08006828: .4byte gUnk_02026CC0

	thumb_func_start sub_0800682C
sub_0800682C: @ 0x0800682C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	mov r8, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, _08006864 @ =gUnk_02026CC0
	ldr r0, [r5]
	str r3, [sp]
	adds r1, r6, #0
	adds r2, r4, #0
	mov r3, r8
	bl sub_08006620
	ldr r1, [r5]
	ldrh r1, [r1, #0xc]
	movs r2, #1
	eors r1, r2
	strh r1, [r0, #0x16]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08006864: .4byte gUnk_02026CC0

	thumb_func_start sub_08006868
sub_08006868: @ 0x08006868
	strh r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_0800686C
sub_0800686C: @ 0x0800686C
	ldrh r0, [r0, #0x14]
	bx lr

	thumb_func_start sub_08006870
sub_08006870: @ 0x08006870
	movs r1, #0
	ldrh r0, [r0, #0x14]
	cmp r0, #2
	bne _0800687A
	movs r1, #1
_0800687A:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08006880
sub_08006880: @ 0x08006880
	movs r1, #0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _08006890
_08006888:
	adds r1, #1
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _08006888
_08006890:
	adds r0, r1, #0
	bx lr

	thumb_func_start sub_08006894
sub_08006894: @ 0x08006894
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _080068AA
	cmp r1, #0
	ble _080068AA
_0800689E:
	ldr r0, [r0, #8]
	subs r1, #1
	cmp r1, #0
	ble _080068AA
	cmp r0, #0
	bne _0800689E
_080068AA:
	bx lr

	thumb_func_start sub_080068AC
sub_080068AC: @ 0x080068AC
	ldr r0, [r0, #0xc]
	bx lr

	thumb_func_start sub_080068B0
sub_080068B0: @ 0x080068B0
	adds r0, #0x18
	bx lr

	thumb_func_start sub_080068B4
sub_080068B4: @ 0x080068B4
	ldr r0, [r0]
	bx lr

	thumb_func_start sub_080068B8
sub_080068B8: @ 0x080068B8
	push {lr}
	adds r2, r0, #0
	adds r2, #0x18
	ldr r3, [r0]
	bl _call_via_r3
	pop {r1}
	bx r1

	thumb_func_start sub_080068C8
sub_080068C8: @ 0x080068C8
	push {r4, lr}
	bl sub_0800486C
	adds r4, r0, #0
	movs r1, #0x10
	bl sub_080048D4
	str r4, [r0]
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080068E8
sub_080068E8: @ 0x080068E8
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_0800490C
	adds r0, r4, #0
	bl sub_08004928
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08006900
sub_08006900: @ 0x08006900
	bx lr
	.align 2, 0

	thumb_func_start sub_08006904
sub_08006904: @ 0x08006904
	bx lr
	.align 2, 0

	thumb_func_start sub_08006908
sub_08006908: @ 0x08006908
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	adds r4, r1, #0
	mov r5, ip
	adds r5, #0xc
	ldrb r1, [r4, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r4, #6]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r4, #7]
	lsls r0, r0, #0x18
	orrs r0, r1
	ldr r1, [r5, #4]
	adds r0, r0, r1
	str r0, [sp]
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r4, #2]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r4, #3]
	lsls r7, r0, #0x18
	orrs r7, r1
	movs r6, #0
	ldrb r0, [r4, #0xa]
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0x10
	beq _080069CC
	cmp r1, #0x10
	bgt _08006966
	cmp r1, #0
	beq _08006974
	movs r0, #0x18
	add r0, ip
	mov sl, r0
	b _08006AF6
_08006966:
	cmp r1, #0x20
	bne _0800696C
	b _08006A86
_0800696C:
	movs r1, #0x18
	add r1, ip
	mov sl, r1
	b _08006AF6
_08006974:
	movs r2, #0x18
	add r2, ip
	mov sl, r2
	mov r3, ip
	ldrh r3, [r3, #4]
	cmp r6, r3
	blo _08006984
	b _08006AF6
_08006984:
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	lsls r1, r1, #8
	mov r3, ip
	ldrh r2, [r3, #0xc]
	orrs r1, r0
	cmp r2, r1
	blo _08006996
	b _08006AF6
_08006996:
	mov r0, ip
	ldr r1, [r0, #8]
	adds r1, r1, r6
	ldrh r0, [r5]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	mov r1, ip
	ldrh r1, [r1, #4]
	cmp r6, r1
	blo _080069BA
	b _08006AF6
_080069BA:
	ldrb r2, [r4, #8]
	ldrb r1, [r4, #9]
	lsls r1, r1, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	orrs r1, r2
	cmp r0, r1
	blo _08006996
	b _08006AF6
_080069CC:
	movs r2, #0x18
	add r2, ip
	mov sl, r2
	mov r3, ip
	ldrh r3, [r3, #4]
	cmp r6, r3
	blo _080069DC
	b _08006AF6
_080069DC:
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	lsls r1, r1, #8
	mov r3, ip
	ldrh r2, [r3, #0xc]
	orrs r1, r0
	cmp r2, r1
	blo _080069EE
	b _08006AF6
_080069EE:
	movs r0, #7
	mov sb, r0
	ldr r1, _08006A24 @ =gUnk_085F5E4C
	mov r8, r1
_080069F6:
	mov r2, ip
	ldr r0, [r2, #8]
	adds r0, r0, r6
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r5, #8]
	lsrs r1, r0, #3
	mov r3, sb
	ands r0, r3
	adds r1, r7, r1
	add r0, r8
	ldrb r1, [r1]
	ldrb r2, [r0]
	ands r2, r1
	cmp r2, #0
	beq _08006A28
	mov r0, ip
	ldr r1, [r0, #8]
	adds r1, r1, r6
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #4
	strb r0, [r1]
	b _08006A30
	.align 2, 0
_08006A24: .4byte gUnk_085F5E4C
_08006A28:
	mov r1, ip
	ldr r0, [r1, #8]
	adds r0, r0, r6
	strb r2, [r0]
_08006A30:
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
	lsrs r1, r0, #3
	mov r2, sb
	ands r0, r2
	adds r1, r7, r1
	add r0, r8
	ldrb r1, [r1]
	ldrb r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08006A5C
	mov r3, ip
	ldr r2, [r3, #8]
	adds r2, r2, r6
	ldrb r1, [r4, #0xb]
	movs r0, #0xf
	ands r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
_08006A5C:
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
	lsrs r3, r0, #3
	strh r3, [r5]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	ldrh r0, [r0, #4]
	cmp r6, r0
	bhs _08006AF6
	ldrb r2, [r4, #8]
	ldrb r1, [r4, #9]
	lsls r1, r1, #8
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	orrs r1, r2
	cmp r0, r1
	blo _080069F6
	b _08006AF6
_08006A86:
	movs r1, #0x18
	add r1, ip
	mov sl, r1
	mov r2, ip
	ldrh r2, [r2, #4]
	cmp r6, r2
	bhs _08006AF6
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	lsls r1, r1, #8
	mov r3, ip
	ldrh r2, [r3, #0xc]
	orrs r1, r0
	cmp r2, r1
	bhs _08006AF6
_08006AA4:
	ldr r1, [r5, #8]
	lsrs r2, r1, #1
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08006AB8
	adds r0, r7, r2
	ldrb r0, [r0]
	lsrs r2, r0, #4
	b _08006AC0
_08006AB8:
	adds r0, r7, r2
	ldrb r0, [r0]
	movs r2, #0xf
	ands r2, r0
_08006AC0:
	mov r0, ip
	ldr r1, [r0, #8]
	adds r1, r1, r6
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #4
	orrs r2, r0
	strb r2, [r1]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
	lsrs r3, r0, #1
	strh r3, [r5]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r1, ip
	ldrh r1, [r1, #4]
	cmp r6, r1
	bhs _08006AF6
	ldrb r2, [r4, #8]
	ldrb r1, [r4, #9]
	lsls r1, r1, #8
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	orrs r1, r2
	cmp r0, r1
	blo _08006AA4
_08006AF6:
	mov r2, ip
	ldr r1, [r2, #8]
	lsrs r3, r6, #2
	mov r0, sl
	ldr r2, [sp]
	bl sub_08000BFC
	ldr r0, [r5, #4]
	adds r0, r0, r6
	str r0, [r5, #4]
	movs r3, #0
	ldrb r2, [r4, #8]
	ldrb r0, [r4, #9]
	lsls r0, r0, #8
	ldrh r1, [r5]
	orrs r0, r2
	cmp r1, r0
	blo _08006B1C
	movs r3, #1
_08006B1C:
	adds r0, r3, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08006B30
sub_08006B30: @ 0x08006B30
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldrb r1, [r5, #4]
	ldrb r0, [r5, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r5, #6]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r5, #7]
	lsls r0, r0, #0x18
	orrs r0, r1
	ldrh r2, [r6, #0xc]
	adds r7, r0, r2
	ldrb r1, [r5, #8]
	ldrb r0, [r5, #9]
	lsls r0, r0, #8
	orrs r0, r1
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	ldrh r1, [r6, #4]
	cmp r0, r1
	bls _08006B66
	adds r3, r1, #0
_08006B66:
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	adds r0, r6, #0
	adds r0, #0x18
	ldrb r2, [r5]
	ldrb r1, [r5, #1]
	lsls r1, r1, #8
	orrs r1, r2
	ldrb r2, [r5, #2]
	lsls r2, r2, #0x10
	orrs r2, r1
	ldrb r1, [r5, #3]
	lsls r1, r1, #0x18
	orrs r1, r2
	lsrs r3, r3, #0x12
	adds r2, r7, #0
	bl sub_08000C8C
	ldrh r0, [r6, #0xc]
	adds r4, r4, r0
	strh r4, [r6, #0xc]
	movs r2, #0
	ldrb r1, [r5, #8]
	ldrb r0, [r5, #9]
	lsls r0, r0, #8
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	orrs r0, r1
	cmp r4, r0
	blo _08006BA4
	movs r2, #1
_08006BA4:
	adds r0, r2, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08006BAC
sub_08006BAC: @ 0x08006BAC
	push {r4, r5, r6, lr}
	adds r5, r2, #0
	ldrh r2, [r1]
	cmp r2, #1
	beq _08006C04
	cmp r2, #1
	bgt _08006BC0
	cmp r2, #0
	beq _08006BCA
	b _08006C66
_08006BC0:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	beq _08006C14
	b _08006C66
_08006BCA:
	ldr r6, [r1, #4]
	ldrh r0, [r1, #0x14]
	strh r0, [r5]
	lsls r0, r0, #0x10
	movs r4, #0
	cmp r0, #0
	beq _08006BF6
_08006BD8:
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r1, r1, r6
	adds r0, #0x34
	movs r2, #0xc
	bl memcpy
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r5]
	cmp r4, r0
	blo _08006BD8
_08006BF6:
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r5, #4]
	bl sub_080067E8
	str r0, [r5, #8]
	b _08006C66
_08006C04:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08006C66
	bl sub_08006800
	movs r0, #0
	str r0, [r5, #8]
	b _08006C66
_08006C14:
	movs r3, #0
	ldrh r0, [r5, #2]
	ldrh r2, [r5]
	cmp r0, r2
	blo _08006C24
	movs r0, #2
	strh r0, [r1]
	b _08006C66
_08006C24:
	ldrh r0, [r5, #2]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0x34
	adds r1, r5, r1
	ldrb r0, [r1, #0xa]
	movs r2, #0xf
	ands r2, r0
	cmp r2, #0
	beq _08006C40
	cmp r2, #0xf
	beq _08006C48
	b _08006C52
_08006C40:
	adds r0, r5, #0
	bl sub_08006908
	b _08006C4E
_08006C48:
	adds r0, r5, #0
	bl sub_08006B30
_08006C4E:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08006C52:
	cmp r3, #0
	beq _08006C66
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0xc
	bl memzero
_08006C66:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08006C70
sub_08006C70: @ 0x08006C70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	ldr r0, [sp, #0x38]
	ldr r6, [sp, #0x3c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrb r1, [r4, #6]
	ldrb r0, [r4, #7]
	lsls r0, r0, #8
	orrs r0, r1
	movs r1, #1
	mov sb, r0
	mov r2, sb
	ands r2, r1
	mov sb, r2
	lsrs r0, r0, #1
	ands r0, r1
	str r0, [sp, #0x10]
	movs r0, #0
	mov sl, r0
	ldrb r1, [r6, #5]
	cmp sl, r1
	blo _08006CBE
	b _08006EA8
_08006CBE:
	ldrb r2, [r4, #5]
	cmp sl, r2
	blo _08006CE2
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #7]
	lsls r1, r1, #8
	orrs r1, r0
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08006CE2
	adds r0, r2, #0
	mov r1, sl
	bl DivRemArm
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08006CE4
_08006CE2:
	mov r0, sl
_08006CE4:
	adds r7, r0, #0
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _08006CFA
	ldrb r1, [r4, #5]
	cmp r7, r1
	bhs _08006CFA
	adds r0, r7, #1
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08006CFA:
	movs r0, #0
	mov r8, r0
	mov r1, sl
	adds r1, #1
	str r1, [sp, #0x14]
	ldrb r2, [r6, #4]
	cmp r8, r2
	blo _08006D0C
	b _08006E80
_08006D0C:
	ldrb r2, [r4, #4]
	cmp r8, r2
	blo _08006D30
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #7]
	lsls r1, r1, #8
	orrs r1, r0
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08006D30
	adds r0, r2, #0
	mov r1, r8
	bl DivRemArm
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08006D32
_08006D30:
	mov r0, r8
_08006D32:
	adds r3, r0, #0
	mov r0, sb
	cmp r0, #0
	beq _08006D48
	ldrb r1, [r4, #4]
	cmp r3, r1
	bhs _08006D48
	adds r0, r3, #1
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08006D48:
	ldrb r1, [r4, #5]
	cmp r7, r1
	bhs _08006DF8
	ldrb r5, [r4, #4]
	cmp r3, r5
	bhs _08006DF8
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #7]
	lsls r1, r1, #8
	orrs r1, r0
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r1, r0
	cmp r1, #0
	beq _08006D8E
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r2, [r4, #2]
	lsls r2, r2, #0x10
	orrs r2, r0
	ldrb r1, [r4, #3]
	lsls r1, r1, #0x18
	orrs r1, r2
	adds r0, r7, #0
	muls r0, r5, r0
	adds r0, r0, r3
	adds r1, r1, r0
	ldrb r3, [r1]
	ldr r0, [sp, #8]
	cmp r3, r0
	bne _08006DFA
	b _08006DF8
_08006D8E:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r4, #2]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r2, [r4, #3]
	lsls r2, r2, #0x18
	orrs r2, r1
	adds r0, r7, #0
	muls r0, r5, r0
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r2, _08006DF4 @ =0x000003FF
	adds r1, r2, #0
	adds r0, r3, #0
	ands r0, r1
	ldr r1, [sp, #8]
	cmp r0, r1
	beq _08006DF8
	ldr r2, [sp, #4]
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, [sp]
	lsls r0, r1, #0xc
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r2, sb
	cmp r2, #0
	beq _08006DE0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	eors r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_08006DE0:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _08006DFA
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	eors r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	b _08006DFA
	.align 2, 0
_08006DF4: .4byte 0x000003FF
_08006DF8:
	ldr r3, [sp, #0xc]
_08006DFA:
	ldrb r0, [r6, #6]
	ldrb r1, [r6, #7]
	lsls r1, r1, #8
	orrs r1, r0
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r1, r0
	cmp r1, #0
	beq _08006E32
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r6, #2]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r2, [r6, #3]
	lsls r2, r2, #0x18
	orrs r2, r1
	ldrb r0, [r6, #4]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, r8
	adds r2, r2, r0
	strb r3, [r2]
	b _08006E56
_08006E32:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r6, #2]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r2, [r6, #3]
	lsls r2, r2, #0x18
	orrs r2, r1
	ldrb r0, [r6, #4]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, r8
	lsls r0, r0, #1
	adds r0, r0, r2
	strh r3, [r0]
_08006E56:
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #7]
	lsls r1, r1, #8
	orrs r1, r0
	movs r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _08006E6E
	movs r0, #1
	mov r2, sb
	eors r2, r0
	mov sb, r2
_08006E6E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrb r0, [r6, #4]
	cmp r8, r0
	bhs _08006E80
	b _08006D0C
_08006E80:
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #7]
	lsls r1, r1, #8
	orrs r1, r0
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _08006E98
	movs r0, #1
	ldr r1, [sp, #0x10]
	eors r1, r0
	str r1, [sp, #0x10]
_08006E98:
	ldr r2, [sp, #0x14]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrb r0, [r6, #5]
	cmp sl, r0
	bhs _08006EA8
	b _08006CBE
_08006EA8:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08006EB8
sub_08006EB8: @ 0x08006EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sb, r1
	mov r8, r2
	ldrh r1, [r1]
	cmp r1, #1
	beq _08006F20
	cmp r1, #1
	bgt _08006ED8
	cmp r1, #0
	beq _08006EE2
	b _080070BC
_08006ED8:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08006F36
	b _080070BC
_08006EE2:
	mov r0, sb
	ldr r5, [r0, #4]
	ldrh r0, [r0, #0x14]
	mov r1, r8
	strh r0, [r1]
	lsls r0, r0, #0x10
	movs r4, #0
	cmp r0, #0
	beq _08006F12
_08006EF4:
	lsls r1, r4, #4
	mov r2, r8
	adds r0, r2, r1
	adds r1, r1, r5
	adds r0, #0x30
	movs r2, #0x10
	bl memcpy
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r3, r8
	ldrh r3, [r3]
	cmp r4, r3
	blo _08006EF4
_08006F12:
	ldr r0, _08006F1C @ =0x000003FF
	mov r5, r8
	strh r0, [r5, #0xc]
	strh r0, [r5, #0xe]
	b _080070BC
	.align 2, 0
_08006F1C: .4byte 0x000003FF
_08006F20:
	mov r1, r8
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _08006F2A
	b _080070BC
_08006F2A:
	bl sub_08006800
	movs r0, #0
	mov r2, r8
	str r0, [r2, #8]
	b _080070BC
_08006F36:
	mov r3, r8
	ldrh r0, [r3, #2]
	ldrh r5, [r3]
	cmp r0, r5
	blo _08006F44
	movs r0, #2
	b _080070B8
_08006F44:
	mov r2, r8
	ldrh r0, [r2, #2]
	lsls r0, r0, #4
	adds r0, #0x30
	adds r5, r2, r0
	ldrb r2, [r5, #0xc]
	movs r1, #0x30
	ands r1, r2
	lsrs r1, r1, #2
	movs r0, #3
	ands r0, r2
	adds r7, r1, r0
	ldr r1, _08006FA0 @ =gUnk_085F5E54
	lsls r0, r7, #2
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	mov r3, r8
	ldrh r0, [r3, #4]
	cmp r0, r1
	beq _08006F8A
	strh r1, [r3, #4]
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08006F7E
	bl sub_08006800
	movs r0, #0
	mov r1, r8
	str r0, [r1, #8]
_08006F7E:
	mov r2, r8
	ldrh r0, [r2, #4]
	bl sub_080067E8
	mov r3, r8
	str r0, [r3, #8]
_08006F8A:
	ldrb r0, [r5, #0xc]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0
	beq _08006FA4
	cmp r1, #0x10
	beq _08006FC6
	mov r6, r8
	adds r6, #0x10
	b _08006FE2
	.align 2, 0
_08006FA0: .4byte gUnk_085F5E54
_08006FA4:
	mov r1, r8
	ldrh r0, [r1, #4]
	lsrs r1, r0, #1
	mov r3, r8
	ldr r2, [r3, #8]
	mov r6, r8
	adds r6, #0x10
_08006FB2:
	mov r3, r8
	ldrh r0, [r3, #0xe]
	strh r0, [r2]
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08006FB2
	b _08006FE2
_08006FC6:
	mov r0, r8
	ldrh r1, [r0, #4]
	ldr r2, [r0, #8]
	mov r6, r8
	adds r6, #0x10
_08006FD0:
	mov r3, r8
	ldrh r0, [r3, #0xe]
	strb r0, [r2]
	adds r2, #1
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08006FD0
_08006FE2:
	ldrb r4, [r5, #0xc]
	movs r0, #0xc0
	ands r0, r4
	cmp r0, #0x40
	bne _08007032
	movs r0, #0x30
	ands r0, r4
	cmp r0, #0
	beq _08006FFA
	cmp r0, #0x10
	beq _0800701A
	b _080070AE
_08006FFA:
	mov r1, r8
	ldrh r0, [r1, #4]
	lsrs r2, r0, #1
	ldr r3, [r1, #8]
_08007002:
	ldrb r0, [r5]
	ldrb r1, [r5, #1]
	lsls r1, r1, #8
	orrs r1, r0
	strh r1, [r3]
	adds r3, #2
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08007002
	b _080070AE
_0800701A:
	mov r2, r8
	ldrh r1, [r2, #4]
	ldr r2, [r2, #8]
_08007020:
	ldrb r0, [r5]
	strb r0, [r2]
	adds r2, #1
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007020
	b _080070AE
_08007032:
	add r2, sp, #0xc
	ldrb r1, [r5, #6]
	ldrb r0, [r5, #7]
	lsls r3, r0, #8
	orrs r3, r1
	strh r3, [r2, #6]
	movs r0, #0x30
	ands r0, r4
	cmp r0, #0x10
	bne _08007052
	adds r1, r2, #0
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	orrs r3, r0
	strh r3, [r1, #6]
_08007052:
	add r1, sp, #0xc
	ldrb r0, [r5, #4]
	strb r0, [r1, #4]
	ldrb r0, [r5, #5]
	strb r0, [r1, #5]
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r5, #2]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r5, #3]
	lsls r0, r0, #0x18
	orrs r0, r1
	str r0, [sp, #0xc]
	add r4, sp, #0x14
	add r0, sp, #0xc
	ldrh r1, [r0, #6]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	strh r0, [r4, #6]
	ldr r1, _080070F4 @ =gUnk_085F5E54
	lsls r0, r7, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r1, [r4, #4]
	ldrb r0, [r0, #1]
	strb r0, [r4, #5]
	mov r3, r8
	ldr r0, [r3, #8]
	str r0, [sp, #0x14]
	ldrb r1, [r5, #0xd]
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	lsls r2, r2, #8
	orrs r2, r0
	ldrh r3, [r3, #0xc]
	mov r5, r8
	ldrh r0, [r5, #0xe]
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #0xc
	bl sub_08006C70
_080070AE:
	adds r0, r6, #0
	movs r1, #4
	bl memzero
	ldr r0, _080070F8 @ =0x00000101
_080070B8:
	mov r1, sb
	strh r0, [r1]
_080070BC:
	mov r2, sb
	ldrh r1, [r2]
	ldr r0, _080070F8 @ =0x00000101
	cmp r1, r0
	beq _080070C8
	b _080072DC
_080070C8:
	movs r3, #0
	mov sl, r3
	mov r5, r8
	ldrh r0, [r5, #2]
	lsls r0, r0, #4
	adds r0, #0x30
	adds r7, r5, r0
	ldrb r1, [r7, #0xc]
	movs r0, #0x30
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsrs r0, r0, #0x1a
	movs r2, #3
	ands r2, r1
	adds r5, r0, r2
	cmp r3, #0
	beq _080070FC
	cmp r3, #0x10
	bne _080070F2
	b _0800726C
_080070F2:
	b _080072C6
	.align 2, 0
_080070F4: .4byte gUnk_085F5E54
_080070F8: .4byte 0x00000101
_080070FC:
	movs r3, #0
	movs r4, #0
	cmp r2, #1
	beq _08007136
	cmp r2, #1
	bgt _0800710E
	cmp r2, #0
	beq _08007118
	b _0800723C
_0800710E:
	cmp r2, #2
	beq _0800716C
	cmp r2, #3
	beq _0800719E
	b _0800723C
_08007118:
	mov r0, r8
	ldr r4, [r0, #8]
	ldrb r1, [r7, #8]
	ldrb r0, [r7, #9]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r7, #0xa]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r7, #0xb]
	lsls r3, r0, #0x18
	orrs r3, r1
	movs r1, #1
	mov sl, r1
	b _0800723C
_08007136:
	mov r2, r8
	ldrh r0, [r2, #0x10]
	cmp r0, #0
	beq _08007144
	cmp r0, #1
	beq _0800714A
	b _0800723C
_08007144:
	mov r3, r8
	ldr r4, [r3, #8]
	b _080071BE
_0800714A:
	mov r1, r8
	ldr r0, [r1, #8]
	adds r4, r0, #0
	adds r4, #0x40
	ldrb r1, [r7, #8]
	ldrb r0, [r7, #9]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r7, #0xa]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r7, #0xb]
	lsls r0, r0, #0x18
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #4
	b _08007196
_0800716C:
	mov r1, r8
	ldrh r0, [r1, #0x10]
	cmp r0, #0
	beq _080071BA
	cmp r0, #1
	bne _0800723C
	mov r3, r8
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r4, r0, r2
	ldrb r1, [r7, #8]
	ldrb r0, [r7, #9]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r7, #0xa]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r7, #0xb]
	lsls r0, r0, #0x18
	orrs r0, r1
_08007196:
	adds r3, r0, r2
	movs r0, #1
	mov sl, r0
	b _0800723C
_0800719E:
	mov r1, r8
	ldrh r0, [r1, #0x10]
	cmp r0, #1
	beq _080071D4
	cmp r0, #1
	bgt _080071B0
	cmp r0, #0
	beq _080071BA
	b _0800723C
_080071B0:
	cmp r0, #2
	beq _080071F8
	cmp r0, #3
	beq _08007218
	b _0800723C
_080071BA:
	mov r2, r8
	ldr r4, [r2, #8]
_080071BE:
	ldrb r1, [r7, #8]
	ldrb r0, [r7, #9]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r7, #0xa]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r7, #0xb]
	lsls r3, r0, #0x18
	orrs r3, r1
	b _0800723C
_080071D4:
	mov r3, r8
	ldr r0, [r3, #8]
	adds r4, r0, #0
	adds r4, #0x40
	ldrb r1, [r7, #8]
	ldrb r0, [r7, #9]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r7, #0xa]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r7, #0xb]
	lsls r0, r0, #0x18
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	adds r3, r0, r1
	b _0800723C
_080071F8:
	mov r2, r8
	ldr r0, [r2, #8]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r4, r0, r2
	ldrb r1, [r7, #8]
	ldrb r0, [r7, #9]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r7, #0xa]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r7, #0xb]
	lsls r0, r0, #0x18
	orrs r0, r1
	b _0800723A
_08007218:
	mov r3, r8
	ldr r0, [r3, #8]
	movs r1, #0x82
	lsls r1, r1, #5
	adds r4, r0, r1
	ldrb r1, [r7, #8]
	ldrb r0, [r7, #9]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r7, #0xa]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldrb r0, [r7, #0xb]
	lsls r0, r0, #0x18
	orrs r0, r1
	movs r2, #0xc0
	lsls r2, r2, #5
_0800723A:
	adds r3, r0, r2
_0800723C:
	mov r1, r8
	ldrh r0, [r1, #0x10]
	adds r0, #1
	strh r0, [r1, #0x10]
	mov r0, r8
	adds r0, #0x14
	movs r1, #0x20
	str r1, [sp]
	ldr r2, _08007268 @ =gUnk_085F5E54
	lsls r1, r5, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #1
	str r1, [sp, #4]
	movs r1, #0x40
	str r1, [sp, #8]
	adds r1, r4, #0
	adds r2, r3, #0
	movs r3, #0x20
	bl sub_08000CD4
	b _080072C6
	.align 2, 0
_08007268: .4byte gUnk_085F5E54
_0800726C:
	mov r2, r8
	ldrh r0, [r2, #4]
	ldrh r1, [r2, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	bls _08007284
	adds r3, r1, #0
_08007284:
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	mov r0, r8
	ldrh r6, [r0, #0x10]
	ldr r1, [r0, #8]
	adds r1, r1, r6
	ldrb r2, [r7, #8]
	ldrb r0, [r7, #9]
	lsls r0, r0, #8
	orrs r0, r2
	ldrb r4, [r7, #0xa]
	lsls r4, r4, #0x10
	orrs r4, r0
	ldrb r2, [r7, #0xb]
	lsls r2, r2, #0x18
	orrs r2, r4
	adds r2, r2, r6
	mov r0, r8
	adds r0, #0x14
	lsrs r3, r3, #0x11
	bl sub_08000BB4
	mov r1, r8
	ldrh r0, [r1, #0x10]
	adds r5, r5, r0
	strh r5, [r1, #0x10]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldrh r2, [r1, #4]
	cmp r5, r2
	blo _080072C6
	movs r3, #1
	mov sl, r3
_080072C6:
	mov r5, sl
	cmp r5, #0
	beq _080072DC
	mov r1, r8
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	mov r2, sb
	strh r0, [r2]
_080072DC:
	movs r0, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080072F0
sub_080072F0: @ 0x080072F0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r1, #0
	adds r5, r2, #0
	ldrh r1, [r6]
	cmp r1, #1
	beq _080073B4
	cmp r1, #1
	bgt _08007308
	cmp r1, #0
	beq _08007318
	b _080073B4
_08007308:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08007332
	adds r0, #1
	cmp r1, r0
	beq _08007374
	b _080073B4
_08007318:
	ldrh r0, [r6, #0x14]
	lsrs r0, r0, #8
	strb r0, [r5]
	ldrh r0, [r6, #0x14]
	strb r0, [r5, #1]
	ldrh r0, [r6, #0x16]
	lsrs r0, r0, #8
	strb r0, [r5, #2]
	ldrh r0, [r6, #0x16]
	strb r0, [r5, #3]
	ldrh r0, [r6, #0x18]
	strh r0, [r5, #4]
	b _080073B4
_08007332:
	ldr r0, _080073C0 @ =gUnk_03000DD0
	ldrb r2, [r5]
	adds r1, r0, #0
	adds r1, #0x4c
	ldrb r3, [r1]
	strb r2, [r1]
	ldrb r1, [r5, #1]
	adds r0, #0x4d
	ldrb r2, [r0]
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #8
	ldrb r1, [r5]
	ldrb r3, [r5, #2]
	movs r4, #4
	ldrsh r2, [r5, r4]
	str r2, [sp]
	movs r2, #0
	bl sub_08007DE8
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r1, [r5, #1]
	ldrb r3, [r5, #3]
	movs r4, #4
	ldrsh r2, [r5, r4]
	str r2, [sp]
	movs r2, #0
	bl sub_08007DE8
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
_08007374:
	adds r4, r5, #0
	adds r4, #8
	adds r0, r4, #0
	bl sub_08007E68
	adds r7, r5, #0
	adds r7, #0x20
	adds r0, r7, #0
	bl sub_08007E68
	ldr r0, _080073C0 @ =gUnk_03000DD0
	ldrh r2, [r5, #8]
	adds r1, r0, #0
	adds r1, #0x4c
	ldrb r3, [r1]
	strb r2, [r1]
	ldrh r1, [r5, #0x20]
	adds r0, #0x4d
	ldrb r2, [r0]
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08008158
	cmp r0, #0
	beq _080073B4
	adds r0, r7, #0
	bl sub_08008158
	cmp r0, #0
	beq _080073B4
	movs r0, #2
	strh r0, [r6]
_080073B4:
	movs r0, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080073C0: .4byte gUnk_03000DD0

	thumb_func_start sub_080073C4
sub_080073C4: @ 0x080073C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r1, [sp]
	mov sl, r2
	ldrh r1, [r1]
	cmp r1, #1
	bne _080073DC
	b _0800750A
_080073DC:
	cmp r1, #1
	bgt _080073E6
	cmp r1, #0
	beq _080073F0
	b _0800750A
_080073E6:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08007400
	b _0800750A
_080073F0:
	ldr r1, [sp]
	ldr r0, [r1, #4]
	mov r2, sl
	str r0, [r2]
	movs r3, #0x14
	ldrsh r0, [r1, r3]
	str r0, [r2, #4]
	b _0800750A
_08007400:
	movs r3, #0
	mov r6, sl
	ldr r4, [r6]
	ldr r5, [r6, #4]
	b _08007434
_0800740A:
	mov r0, sb
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sl
	movs r6, #0xa
	ldrsh r2, [r1, r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	blt _08007432
	ldrb r1, [r7]
	ldrb r0, [r7, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	blt _0800744C
_08007432:
	adds r3, #1
_08007434:
	lsls r1, r3, #2
	adds r0, r4, r1
	mov sb, r0
	adds r0, r3, #1
	cmp r0, r5
	bge _08007446
	adds r0, r1, #4
	adds r7, r4, r0
	b _08007448
_08007446:
	movs r7, #0
_08007448:
	cmp r7, #0
	bne _0800740A
_0800744C:
	mov r1, sb
	cmp r1, #0
	beq _080074E8
	cmp r7, #0
	bne _08007474
	ldr r0, _08007470 @ =gUnk_03000DD0
	ldrb r2, [r1, #2]
	adds r1, r0, #0
	adds r1, #0x4c
	ldrb r3, [r1]
	strb r2, [r1]
	mov r2, sb
	ldrb r1, [r2, #3]
	adds r0, #0x4d
	ldrb r2, [r0]
	strb r1, [r0]
	b _080074E8
	.align 2, 0
_08007470: .4byte gUnk_03000DD0
_08007474:
	mov r3, sb
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	ldrh r6, [r1, #0xa]
	subs r6, r6, r0
	ldrb r1, [r7]
	ldrb r4, [r7, #1]
	lsls r4, r4, #8
	orrs r4, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, r4, r0
	ldrb r1, [r7, #2]
	ldrb r2, [r3, #2]
	ldrb r5, [r7, #3]
	ldrb r0, [r3, #3]
	subs r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r3, _08007500 @ =gUnk_03000DD0
	mov r8, r3
	subs r1, r1, r2
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r0, r1, #0
	muls r0, r6, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	str r2, [sp, #4]
	bl __divsi3
	ldr r2, [sp, #4]
	adds r2, r2, r0
	mov r0, r8
	adds r0, #0x4c
	ldrb r1, [r0]
	strb r2, [r0]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, #0
	muls r0, r6, r0
	adds r1, r4, #0
	bl __divsi3
	mov r6, sb
	ldrb r1, [r6, #3]
	adds r1, r1, r0
	movs r0, #0x4d
	add r8, r0
	mov r2, r8
	ldrb r0, [r2]
	strb r1, [r2]
_080074E8:
	mov r3, sl
	ldrh r0, [r3, #0xa]
	adds r0, #1
	strh r0, [r3, #0xa]
	cmp r7, #0
	bne _0800750A
	ldrb r0, [r3, #8]
	cmp r0, #0
	beq _08007504
	strh r7, [r3, #0xa]
	b _0800750A
	.align 2, 0
_08007500: .4byte gUnk_03000DD0
_08007504:
	movs r0, #2
	ldr r6, [sp]
	strh r0, [r6]
_0800750A:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800751C
sub_0800751C: @ 0x0800751C
	push {r4, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	adds r3, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #0x12
	str r0, [sp, #4]
	mov r0, sp
	strh r4, [r0, #0x14]
	ldr r0, _0800754C @ =sub_08006BAC
	movs r2, #0x80
	lsls r2, r2, #0xf
	adds r1, r1, r2
	lsrs r1, r1, #0x10
	mov r2, sp
	bl sub_0800682C
	add sp, #0x1c
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800754C: .4byte sub_08006BAC

	thumb_func_start sub_08007550
sub_08007550: @ 0x08007550
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	bl sub_080068B0
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	cmp r0, r5
	beq _08007572
	ldr r0, [r4, #8]
	bl sub_08006800
	strh r5, [r4, #4]
	ldrh r0, [r4, #4]
	bl sub_080067E8
	str r0, [r4, #8]
_08007572:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08007578
sub_08007578: @ 0x08007578
	push {lr}
	sub sp, #0x1c
	adds r3, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #0x14
	str r0, [sp, #4]
	mov r0, sp
	strh r1, [r0, #0x14]
	ldr r0, _080075A4 @ =sub_08006EB8
	movs r1, #0x80
	lsls r1, r1, #0xf
	adds r2, r2, r1
	lsrs r2, r2, #0x10
	adds r1, r2, #0
	mov r2, sp
	bl sub_0800682C
	add sp, #0x1c
	pop {r1}
	bx r1
	.align 2, 0
_080075A4: .4byte sub_08006EB8

	thumb_func_start sub_080075A8
sub_080075A8: @ 0x080075A8
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_080068B0
	strh r4, [r0, #0xc]
	strh r5, [r0, #0xe]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080075C4
sub_080075C4: @ 0x080075C4
	push {lr}
	sub sp, #0x1c
	adds r3, r2, #0
	str r0, [sp, #4]
	mov r0, sp
	strh r1, [r0, #0x14]
	ldr r0, _080075E0 @ =sub_080073C4
	movs r1, #0xc
	mov r2, sp
	bl sub_0800682C
	add sp, #0x1c
	pop {r1}
	bx r1
	.align 2, 0
_080075E0: .4byte sub_080073C4

	thumb_func_start sub_080075E4
sub_080075E4: @ 0x080075E4
	push {r4, lr}
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	bl sub_080068B0
	strb r4, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080075F8
sub_080075F8: @ 0x080075F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080068B0
	movs r1, #0
	strh r1, [r0, #0xa]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08006868
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08007614
sub_08007614: @ 0x08007614
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	ldr r5, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r4, sp
	lsrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r4, #0x14]
	mov r0, sp
	lsrs r2, r2, #0x10
	orrs r2, r3
	strh r2, [r0, #0x16]
	strh r5, [r0, #0x18]
	ldr r0, _08007650 @ =sub_080072F0
	movs r1, #0x38
	mov r2, sp
	adds r3, r6, #0
	bl sub_0800682C
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08007650: .4byte sub_080072F0

	thumb_func_start sub_08007654
sub_08007654: @ 0x08007654
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r6, sp
	ldr r5, _08007690 @ =gUnk_03000DD0
	adds r4, r5, #0
	adds r4, #0x4c
	ldrb r4, [r4]
	lsls r4, r4, #8
	adds r5, #0x4d
	ldrb r5, [r5]
	orrs r4, r5
	strh r4, [r6, #0x14]
	mov r4, sp
	lsrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r4, #0x16]
	mov r0, sp
	strh r2, [r0, #0x18]
	ldr r0, _08007694 @ =sub_080072F0
	movs r1, #0x38
	mov r2, sp
	bl sub_0800682C
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08007690: .4byte gUnk_03000DD0
_08007694: .4byte sub_080072F0

	thumb_func_start sub_08007698
sub_08007698: @ 0x08007698
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r3, #2]
	ldr r4, _08007724 @ =0x0000FFF0
	ands r4, r0
	strh r4, [r3, #2]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	orrs r0, r1
	ldr r5, _08007728 @ =0x00003FFF
	adds r1, r5, #0
	ands r0, r1
	strh r0, [r3, #0x1c]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	orrs r0, r1
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080076D2
	movs r1, #4
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3, #2]
_080076D2:
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r1, r1, #8
	orrs r1, r0
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r4, #0
	ands r1, r0
	cmp r1, #0
	beq _080076EE
	ldrh r0, [r3, #2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r3, #2]
_080076EE:
	movs r0, #4
	ldrsb r0, [r2, r0]
	strh r0, [r3, #0x14]
	movs r0, #5
	ldrsb r0, [r2, r0]
	strh r0, [r3, #0x16]
	movs r0, #6
	ldrsb r0, [r2, r0]
	strh r0, [r3, #0x18]
	ldrb r0, [r2, #7]
	strh r0, [r3, #0x1a]
	ldrb r0, [r3, #1]
	ldr r1, _0800772C @ =gUnk_02026CC4
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _0800771C
	movs r0, #2
	adds r1, r3, #0
	bl _call_via_r4
_0800771C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007724: .4byte 0x0000FFF0
_08007728: .4byte 0x00003FFF
_0800772C: .4byte gUnk_02026CC4

	thumb_func_start sub_08007730
sub_08007730: @ 0x08007730
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r6, [r4, #4]
	ldrh r0, [r6]
	mov r8, r0
	adds r6, #2
	subs r7, #1
	movs r2, #0
	str r2, [r4, #0xc]
	str r2, [r4, #8]
	strh r2, [r4, #0x12]
	ldrh r0, [r4, #2]
	ldr r1, _0800777C @ =0x0000FFFE
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r1, r0
	strh r1, [r4, #2]
	cmp r2, r7
	bgt _080077C4
	cmp r2, r8
	bge _080077C4
_08007764:
	ldr r0, [r4, #0xc]
	adds r0, r6, r0
	ldrb r5, [r0]
	ldrb r1, [r0, #1]
	strh r1, [r4, #0x12]
	ldrh r0, [r4, #0x10]
	cmp r0, #1
	beq _08007780
	cmp r0, #2
	beq _08007784
	b _0800778E
	.align 2, 0
_0800777C: .4byte 0x0000FFFE
_08007780:
	lsls r0, r1, #1
	b _0800778C
_08007784:
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	adds r0, r0, r1
_0800778C:
	strh r0, [r4, #0x12]
_0800778E:
	ldr r1, _080077D8 @ =gUnk_085F5E9C
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r1, [r4, #0xc]
	adds r1, r6, r1
	ldr r2, [r0]
	adds r0, r4, #0
	bl _call_via_r2
	adds r0, r5, #0
	movs r1, #0
	cmp r0, #9
	bhi _080077B0
	ldr r1, _080077DC @ =gUnk_085F5E74
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
_080077B0:
	ldr r0, [r4, #0xc]
	adds r1, r0, r1
	str r1, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	cmp r0, r7
	bgt _080077C4
	cmp r1, r8
	blt _08007764
_080077C4:
	ldrh r1, [r4, #2]
	ldr r0, _080077E0 @ =0x00007FFF
	ands r0, r1
	strh r0, [r4, #2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080077D8: .4byte gUnk_085F5E9C
_080077DC: .4byte gUnk_085F5E74
_080077E0: .4byte 0x00007FFF

	thumb_func_start sub_080077E4
sub_080077E4: @ 0x080077E4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800788E
	ldr r6, [r4, #4]
	ldrh r7, [r6]
	adds r6, #2
	movs r1, #0x12
	ldrsh r0, [r4, r1]
	ldrh r2, [r4, #0x12]
	cmp r0, #0
	bgt _08007868
	ldr r0, [r4, #0xc]
	cmp r0, r7
	bge _08007868
_08007808:
	adds r0, r6, r0
	ldrb r5, [r0]
	ldrb r1, [r0, #1]
	strh r1, [r4, #0x12]
	ldrh r0, [r4, #0x10]
	cmp r0, #1
	beq _0800781C
	cmp r0, #2
	beq _08007820
	b _0800782A
_0800781C:
	lsls r0, r1, #1
	b _08007828
_08007820:
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	adds r0, r0, r1
_08007828:
	strh r0, [r4, #0x12]
_0800782A:
	ldr r1, _08007894 @ =gUnk_085F5E9C
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r1, [r4, #0xc]
	adds r1, r6, r1
	ldr r2, [r0]
	adds r0, r4, #0
	bl _call_via_r2
	adds r0, r5, #0
	movs r1, #0
	cmp r0, #9
	bhi _0800784C
	ldr r1, _08007898 @ =gUnk_085F5E74
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
_0800784C:
	ldr r0, [r4, #0xc]
	adds r1, r0, r1
	str r1, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	ldrh r2, [r4, #0x12]
	cmp r0, #0
	bgt _08007868
	adds r0, r1, #0
	cmp r0, r7
	blt _08007808
_08007868:
	ldrh r1, [r4, #2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08007876
	subs r0, r2, #1
	strh r0, [r4, #0x12]
_08007876:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800788E
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800788E
	adds r0, r4, #0
	movs r1, #0
	bl sub_08007730
_0800788E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007894: .4byte gUnk_085F5E9C
_08007898: .4byte gUnk_085F5E74

	thumb_func_start sub_0800789C
sub_0800789C: @ 0x0800789C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r1, #0x24
	bl memzero
	str r6, [r5, #4]
	strb r4, [r5, #1]
	ldr r0, _080078C0 @ =0x0000FFFF
	strh r0, [r5, #0x1c]
	movs r0, #1
	strb r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080078C0: .4byte 0x0000FFFF

	thumb_func_start sub_080078C4
sub_080078C4: @ 0x080078C4
	push {lr}
	movs r1, #0x24
	bl memzero
	pop {r0}
	bx r0

	thumb_func_start sub_080078D0
sub_080078D0: @ 0x080078D0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	adds r0, #0x14
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldrh r1, [r2, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080078EA
	ldrh r0, [r2, #0x20]
	strh r0, [r3, #6]
_080078EA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080078F0
sub_080078F0: @ 0x080078F0
	strh r1, [r0, #0x20]
	ldrh r2, [r0, #2]
	movs r1, #0x40
	orrs r1, r2
	strh r1, [r0, #2]
	bx lr

	thumb_func_start sub_080078FC
sub_080078FC: @ 0x080078FC
	ldrh r2, [r0, #2]
	ldr r1, _08007908 @ =0x0000FFBF
	ands r1, r2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_08007908: .4byte 0x0000FFBF

	thumb_func_start sub_0800790C
sub_0800790C: @ 0x0800790C
	ldrb r0, [r0, #1]
	bx lr

	thumb_func_start sub_08007910
sub_08007910: @ 0x08007910
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08007914
sub_08007914: @ 0x08007914
	ldrh r1, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0

	thumb_func_start sub_08007924
sub_08007924: @ 0x08007924
	ldrh r1, [r0, #2]
	lsrs r1, r1, #1
	movs r0, #1
	bics r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_08007930
sub_08007930: @ 0x08007930
	ldrh r1, [r0, #2]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_0800793C
sub_0800793C: @ 0x0800793C
	ldrh r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_08007948
sub_08007948: @ 0x08007948
	ldrh r0, [r0, #0x10]
	bx lr

	thumb_func_start sub_0800794C
sub_0800794C: @ 0x0800794C
	strh r1, [r0, #0x10]
	bx lr

	thumb_func_start sub_08007950
sub_08007950: @ 0x08007950
	ldrh r2, [r0, #2]
	movs r1, #0x10
	orrs r1, r2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800795C
sub_0800795C: @ 0x0800795C
	ldrh r2, [r0, #2]
	ldr r1, _08007968 @ =0x0000FFEF
	ands r1, r2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_08007968: .4byte 0x0000FFEF

	thumb_func_start sub_0800796C
sub_0800796C: @ 0x0800796C
	ldrh r1, [r0, #2]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_08007978
sub_08007978: @ 0x08007978
	strh r1, [r0, #0x12]
	bx lr

	thumb_func_start sub_0800797C
sub_0800797C: @ 0x0800797C
	ldrh r1, [r0, #2]
	movs r0, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_08007984
sub_08007984: @ 0x08007984
	adds r2, r0, #0
	cmp r1, #0
	beq _08007992
	ldrh r1, [r2, #2]
	movs r0, #0x20
	orrs r0, r1
	b _08007998
_08007992:
	ldrh r1, [r2, #2]
	ldr r0, _0800799C @ =0x0000FFDF
	ands r0, r1
_08007998:
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0800799C: .4byte 0x0000FFDF

	thumb_func_start sub_080079A0
sub_080079A0: @ 0x080079A0
	ldrh r3, [r0, #2]
	movs r2, #0xf0
	lsls r2, r2, #8
	ands r2, r3
	movs r3, #0
	strh r2, [r0, #2]
	str r1, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #0xc]
	strh r3, [r0, #0x12]
	bx lr
	.align 2, 0

	thumb_func_start sub_080079B8
sub_080079B8: @ 0x080079B8
	ldr r0, [r0, #8]
	bx lr

	thumb_func_start sub_080079BC
sub_080079BC: @ 0x080079BC
	ldr r2, _080079C8 @ =gUnk_02026CC4
	str r0, [r2]
	ldr r0, _080079CC @ =gUnk_02026CC8
	strb r1, [r0]
	bx lr
	.align 2, 0
_080079C8: .4byte gUnk_02026CC4
_080079CC: .4byte gUnk_02026CC8

	thumb_func_start sub_080079D0
sub_080079D0: @ 0x080079D0
	ldrh r2, [r0, #2]
	movs r1, #1
	orrs r1, r2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_18
nullsub_18: @ 0x080079DC
	bx lr
	.align 2, 0

	thumb_func_start sub_080079E0
sub_080079E0: @ 0x080079E0
	movs r2, #2
	ldrsb r2, [r1, r2]
	strh r2, [r0, #0x14]
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strh r1, [r0, #0x16]
	bx lr

	thumb_func_start sub_080079F0
sub_080079F0: @ 0x080079F0
	ldrh r1, [r0, #2]
	movs r2, #4
	eors r1, r2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_080079FC
sub_080079FC: @ 0x080079FC
	ldrh r1, [r0, #2]
	movs r2, #8
	eors r1, r2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08007A08
sub_08007A08: @ 0x08007A08
	ldrb r1, [r1, #2]
	strh r1, [r0, #0x1a]
	bx lr
	.align 2, 0

	thumb_func_start sub_08007A10
sub_08007A10: @ 0x08007A10
	ldrh r2, [r0, #2]
	movs r1, #2
	orrs r1, r2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08007A1C
sub_08007A1C: @ 0x08007A1C
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldrh r1, [r2, #2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08007A48
	ldrb r0, [r2, #1]
	ldr r1, _08007A50 @ =gUnk_02026CC4
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	cmp r3, #0
	beq _08007A48
	movs r0, #8
	adds r1, r2, #0
	adds r2, r4, #0
	bl _call_via_r3
_08007A48:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007A50: .4byte gUnk_02026CC4

	thumb_func_start sub_08007A54
sub_08007A54: @ 0x08007A54
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldrh r1, [r2, #2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08007A80
	ldrb r0, [r2, #1]
	ldr r1, _08007A88 @ =gUnk_02026CC4
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	cmp r3, #0
	beq _08007A80
	movs r0, #9
	adds r1, r2, #0
	adds r2, r4, #0
	bl _call_via_r3
_08007A80:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007A88: .4byte gUnk_02026CC4

	thumb_func_start sub_08007A8C
sub_08007A8C: @ 0x08007A8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r4, r0, #0
	mov sl, r1
	adds r6, r2, #0
	str r3, [sp]
	cmp r4, #2
	bgt _08007AA6
_08007AA4:
	b _08007AA4
_08007AA6:
	ldr r0, [sp, #0x44]
	str r0, [sp, #4]
	lsls r3, r4, #3
	adds r1, r0, r3
	str r1, [sp, #8]
	ldr r2, _08007CB4 @ =0x00000000
	ldr r1, _08007CB0 @ =0x00000000
	ldr r5, [sp]
	str r1, [r5]
	str r2, [r5, #4]
	adds r0, r3, r5
	subs r0, #8
	str r1, [r0]
	str r2, [r0, #4]
	str r3, [sp, #0x10]
	subs r0, r4, #1
	subs r7, r4, #2
	str r7, [sp, #0xc]
	cmp r0, #0
	ble _08007B26
	mov sb, r6
	ldr r6, [sp, #8]
	mov r0, sl
	str r0, [sp, #0x20]
	ldr r1, [sp, #4]
	str r1, [sp, #0x1c]
	subs r4, #1
	mov r8, r4
_08007ADE:
	ldr r2, [sp, #0x20]
	ldr r0, [r2, #8]
	ldr r1, [r2, #0xc]
	adds r4, r2, #0
	ldm r4!, {r2, r3}
	str r4, [sp, #0x20]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r7, [sp, #0x1c]
	stm r7!, {r4, r5}
	str r7, [sp, #0x1c]
	mov r2, sb
	ldr r0, [r2, #8]
	ldr r1, [r2, #0xc]
	adds r7, r2, #0
	adds r7, #8
	mov sb, r7
	subs r7, #8
	ldm r7!, {r2, r3}
	bl __subdf3
	adds r3, r5, #0
	adds r2, r4, #0
	bl __divdf3
	str r0, [r6, #8]
	str r1, [r6, #0xc]
	adds r6, #8
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r1, r8
	cmp r1, #0
	bne _08007ADE
_08007B26:
	ldr r2, [sp, #8]
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r3, [r2, #0xc]
	ldr r2, [r2, #8]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r3, [sp, #4]
	ldr r0, [r3]
	ldr r1, [r3, #4]
	ldr r6, [sp]
	ldr r2, [r6]
	ldr r3, [r6, #4]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __subdf3
	adds r7, r6, #0
	str r0, [r7, #8]
	str r1, [r7, #0xc]
	mov r2, sl
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r3, [r2, #4]
	ldr r2, [r2]
	bl __subdf3
	adds r3, r1, #0
	adds r2, r0, #0
	bl __adddf3
	ldr r3, [sp, #8]
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	ldr r4, [sp, #0xc]
	cmp r4, #1
	ble _08007C24
	ldr r5, [sp, #4]
	adds r5, #8
	str r5, [sp, #0x14]
	mov r6, sl
	adds r6, #8
	str r6, [sp, #0x18]
	adds r7, #8
	mov sl, r7
	adds r3, #8
	mov sb, r3
	subs r4, #1
	mov r8, r4
_08007B94:
	ldr r2, [sp, #0x14]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	mov r4, sb
	ldr r2, [r4]
	ldr r3, [r4, #4]
	bl __divdf3
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	mov r2, sl
	ldr r0, [r2]
	ldr r1, [r2, #4]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __subdf3
	mov r3, sl
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldm r4!, {r2, r3}
	str r4, [sp, #0x18]
	bl __subdf3
	adds r3, r1, #0
	adds r2, r0, #0
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x14]
	ldm r2!, {r0, r1}
	str r2, [sp, #0x14]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __subdf3
	mov r3, sb
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	movs r4, #8
	add sl, r4
	add sb, r4
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	mov r6, r8
	cmp r6, #0
	bne _08007B94
_08007C24:
	ldr r7, [sp, #0x10]
	ldr r0, [sp]
	adds r2, r7, r0
	adds r4, r2, #0
	subs r4, #0x10
	ldr r1, [sp, #4]
	adds r0, r7, r1
	subs r0, #0x10
	subs r2, #8
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r3, [r2, #4]
	ldr r2, [r2]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl __subdf3
	str r0, [r4]
	str r1, [r4, #4]
	ldr r2, [sp, #0xc]
	mov r8, r2
	cmp r2, #0
	ble _08007C9E
	lsls r0, r2, #3
	ldr r3, [sp]
	adds r4, r0, r3
	ldr r5, [sp, #8]
	adds r7, r0, r5
	ldr r1, [sp, #4]
	adds r6, r0, r1
_08007C68:
	ldr r0, [r6]
	ldr r1, [r6, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl __subdf3
	ldr r2, [r7]
	ldr r3, [r7, #4]
	bl __divdf3
	str r0, [r4]
	str r1, [r4, #4]
	subs r4, #8
	subs r7, #8
	subs r6, #8
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	mov r3, r8
	cmp r3, #0
	bgt _08007C68
_08007C9E:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007CB0: .4byte 0x00000000
_08007CB4: .4byte 0x00000000

	thumb_func_start sub_08007CB8
sub_08007CB8: @ 0x08007CB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp]
	str r1, [sp, #4]
	adds r7, r3, #0
	movs r6, #0
	subs r5, r2, #1
_08007CC6:
	cmp r6, r5
	bge _08007CEE
	adds r0, r6, r5
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r4, r0, #1
	lsls r0, r4, #3
	adds r0, r0, r7
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp]
	ldr r3, [sp, #4]
	bl __ltdf2
	cmp r0, #0
	bge _08007CEA
	adds r6, r4, #1
	b _08007CC6
_08007CEA:
	adds r5, r4, #0
	b _08007CC6
_08007CEE:
	cmp r6, #0
	ble _08007CF4
	subs r6, #1
_08007CF4:
	lsls r6, r6, #3
	adds r2, r6, r7
	ldr r0, [r2, #8]
	ldr r1, [r2, #0xc]
	ldr r4, [r2]
	ldr r5, [r2, #4]
	adds r3, r5, #0
	adds r2, r4, #0
	bl __subdf3
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r3, r5, #0
	adds r2, r4, #0
	bl __subdf3
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x48]
	adds r0, r6, r0
	ldr r1, [r0, #8]
	ldr r2, [r0, #0xc]
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x20]
	str r2, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl __subdf3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl __muldf3
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl __divdf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r3, _08007DE4 @ =0x00000000
	ldr r2, _08007DE0 @ =0x40080000
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __adddf3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl __muldf3
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	ldr r0, [sp, #0x44]
	adds r6, r6, r0
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	ldr r7, [r6, #4]
	ldr r6, [r6]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __subdf3
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl __divdf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r3, r1, #0
	adds r2, r0, #0
	bl __adddf3
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl __adddf3
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __subdf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	bl __adddf3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl __muldf3
	adds r3, r7, #0
	adds r2, r6, #0
	bl __adddf3
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r2}
	bx r2
	.align 2, 0
_08007DE0: .4byte 0x40080000
_08007DE4: .4byte 0x00000000

	thumb_func_start sub_08007DE8
sub_08007DE8: @ 0x08007DE8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [sp, #0xc]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	strh r1, [r4]
	strh r2, [r4, #2]
	strh r5, [r4, #4]
	strh r3, [r4, #6]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r0, r1
	strh r1, [r4, #0xc]
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _08007E24
	rsbs r0, r1, #0
	strh r0, [r4, #0xc]
	ldr r0, _08007E20 @ =0x0000FFFF
	b _08007E26
	.align 2, 0
_08007E20: .4byte 0x0000FFFF
_08007E24:
	movs r0, #1
_08007E26:
	strh r0, [r4, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, r0, r1
	strh r1, [r4, #0xe]
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _08007E48
	rsbs r0, r1, #0
	strh r0, [r4, #0xe]
	ldr r0, _08007E44 @ =0x0000FFFF
	b _08007E4A
	.align 2, 0
_08007E44: .4byte 0x0000FFFF
_08007E48:
	movs r0, #1
_08007E4A:
	strh r0, [r4, #0xa]
	ldrh r2, [r4, #0xe]
	lsls r3, r2, #0x10
	asrs r0, r3, #0x11
	movs r1, #0
	strh r0, [r4, #0x12]
	strh r1, [r4, #0x10]
	strh r2, [r4, #0x14]
	cmp r3, #0
	bne _08007E60
	strh r5, [r4]
_08007E60:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007E68
sub_08007E68: @ 0x08007E68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r0, #0
	ldrh r1, [r2, #0x14]
	movs r3, #0x14
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _08007EE4
	subs r0, r1, #1
	strh r0, [r2, #0x14]
	ldrh r0, [r2, #0xa]
	ldrh r4, [r2, #2]
	adds r0, r0, r4
	strh r0, [r2, #2]
	ldrh r0, [r2, #0xc]
	ldrh r1, [r2, #0x10]
	adds r3, r0, r1
	strh r3, [r2, #0x10]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r7, [r2, #0xe]
	movs r4, #0xe
	ldrsh r1, [r2, r4]
	mov sb, r7
	ldrh r4, [r2, #0x12]
	mov r8, r4
	cmp r0, r1
	blt _08007EC2
	ldrh r0, [r2, #8]
	mov ip, r0
	ldrh r6, [r2]
	adds r4, r3, #0
_08007EAC:
	mov r1, ip
	adds r5, r6, r1
	adds r6, r5, #0
	subs r3, r4, r7
	adds r4, r3, #0
	lsls r1, r3, #0x10
	lsls r0, r7, #0x10
	cmp r1, r0
	bge _08007EAC
	strh r3, [r2, #0x10]
	strh r5, [r2]
_08007EC2:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _08007EE4
	ldrh r3, [r2, #0x10]
	movs r4, #0x10
	ldrsh r0, [r2, r4]
	cmp r0, r1
	blt _08007EE4
	mov r1, sb
	subs r0, r3, r1
	strh r0, [r2, #0x10]
	ldrh r0, [r2, #8]
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
_08007EE4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08007EF0
sub_08007EF0: @ 0x08007EF0
	lsls r0, r0, #0x18
	ldr r1, _08007F00 @ =gUnk_0815DA68
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08007F00: .4byte gUnk_0815DA68

	thumb_func_start sub_08007F04
sub_08007F04: @ 0x08007F04
	lsls r0, r0, #0x18
	ldr r1, _08007F14 @ =gUnk_0815DA68
	lsrs r0, r0, #0x17
	adds r0, #0x80
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08007F14: .4byte gUnk_0815DA68

	thumb_func_start sub_08007F18
sub_08007F18: @ 0x08007F18
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08007F58 @ =0x00000167
	ldr r4, _08007F5C @ =gUnk_0815DA68
	cmp r1, r0
	bls _08007F3E
	movs r3, #0xb4
	lsls r3, r3, #1
	ldr r2, _08007F60 @ =0xFFFFFE98
_08007F2C:
	cmp r1, #0
	bge _08007F32
	adds r1, r1, r3
_08007F32:
	ldr r0, _08007F58 @ =0x00000167
	cmp r1, r0
	ble _08007F3A
	adds r1, r1, r2
_08007F3A:
	cmp r1, r0
	bhi _08007F2C
_08007F3E:
	lsls r0, r1, #8
	movs r1, #0xb4
	lsls r1, r1, #1
	bl __divsi3
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08007F58: .4byte 0x00000167
_08007F5C: .4byte gUnk_0815DA68
_08007F60: .4byte 0xFFFFFE98

	thumb_func_start sub_08007F64
sub_08007F64: @ 0x08007F64
	push {lr}
	lsls r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #0xf
	adds r0, r0, r1
	asrs r2, r0, #0x10
	ldr r0, _08007F8C @ =0x00000167
_08007F72:
	cmp r2, r0
	bls _08007F94
	cmp r2, #0
	bge _08007F80
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r2, r2, r0
_08007F80:
	ldr r0, _08007F8C @ =0x00000167
	cmp r2, r0
	ble _08007F72
	ldr r1, _08007F90 @ =0xFFFFFE98
	adds r2, r2, r1
	b _08007F72
	.align 2, 0
_08007F8C: .4byte 0x00000167
_08007F90: .4byte 0xFFFFFE98
_08007F94:
	lsls r0, r2, #8
	movs r1, #0xb4
	lsls r1, r1, #1
	bl __divsi3
	adds r2, r0, #0
	ldr r1, _08007FB0 @ =gUnk_0815DA68
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	pop {r1}
	bx r1
	.align 2, 0
_08007FB0: .4byte gUnk_0815DA68

	thumb_func_start sub_08007FB4
sub_08007FB4: @ 0x08007FB4
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _08007FD8 @ =0x00000167
_08007FBE:
	cmp r2, r0
	bls _08007FE0
	cmp r2, #0
	bge _08007FCC
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r2, r2, r0
_08007FCC:
	ldr r0, _08007FD8 @ =0x00000167
	cmp r2, r0
	ble _08007FBE
	ldr r1, _08007FDC @ =0xFFFFFE98
	adds r2, r2, r1
	b _08007FBE
	.align 2, 0
_08007FD8: .4byte 0x00000167
_08007FDC: .4byte 0xFFFFFE98
_08007FE0:
	lsls r0, r2, #8
	movs r1, #0xb4
	lsls r1, r1, #1
	bl __divsi3
	adds r2, r0, #0
	ldr r1, _0800801C @ =gUnk_0815DA68
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r5, [r0, r2]
	lsls r0, r4, #0x10
	movs r1, #0xb4
	lsls r1, r1, #0xf
	adds r0, r0, r1
	asrs r2, r0, #0x10
	ldr r0, _08008020 @ =0x00000167
_08008002:
	cmp r2, r0
	bls _08008028
	cmp r2, #0
	bge _08008010
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r2, r2, r0
_08008010:
	ldr r0, _08008020 @ =0x00000167
	cmp r2, r0
	ble _08008002
	ldr r1, _08008024 @ =0xFFFFFE98
	adds r2, r2, r1
	b _08008002
	.align 2, 0
_0800801C: .4byte gUnk_0815DA68
_08008020: .4byte 0x00000167
_08008024: .4byte 0xFFFFFE98
_08008028:
	lsls r0, r2, #8
	movs r1, #0xb4
	lsls r1, r1, #1
	bl __divsi3
	adds r2, r0, #0
	ldr r1, _08008050 @ =gUnk_0815DA68
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08008050: .4byte gUnk_0815DA68

	thumb_func_start sub_08008054
sub_08008054: @ 0x08008054
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	asrs r0, r0, #0x10
	bx lr
	.align 2, 0

	thumb_func_start sub_08008064
sub_08008064: @ 0x08008064
	push {lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl DivRem
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_08008078
sub_08008078: @ 0x08008078
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl DivRem
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_08008090
sub_08008090: @ 0x08008090
	lsrs r0, r0, #0x10
	ldr r1, _0800809C @ =gUnk_085F5EC4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800809C: .4byte gUnk_085F5EC4

	thumb_func_start sub_080080A0
sub_080080A0: @ 0x080080A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [sp, #0xc]
	str r1, [r4]
	str r2, [r4, #4]
	str r3, [r4, #8]
	str r5, [r4, #0xc]
	subs r0, r3, r1
	str r0, [r4, #0x18]
	cmp r0, #0
	bge _080080C0
	rsbs r0, r0, #0
	str r0, [r4, #0x18]
	movs r0, #1
	rsbs r0, r0, #0
	b _080080C2
_080080C0:
	movs r0, #1
_080080C2:
	str r0, [r4, #0x10]
	subs r0, r5, r2
	str r0, [r4, #0x1c]
	cmp r0, #0
	bge _080080D6
	rsbs r0, r0, #0
	str r0, [r4, #0x1c]
	movs r0, #1
	rsbs r0, r0, #0
	b _080080D8
_080080D6:
	movs r0, #1
_080080D8:
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	asrs r1, r0, #1
	str r1, [r4, #0x24]
	movs r1, #0
	str r1, [r4, #0x20]
	str r0, [r4, #0x28]
	cmp r0, #0
	bne _080080EC
	str r3, [r4]
_080080EC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080080F4
sub_080080F4: @ 0x080080F4
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x28]
	cmp r0, #0
	ble _08008142
	subs r0, #1
	str r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, [r2, #0x14]
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r1, [r2, #0x20]
	ldr r0, [r2, #0x18]
	adds r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, [r2, #0x1c]
	adds r6, r0, #0
	ldr r5, [r2, #0x24]
	cmp r1, r6
	blt _0800812C
	ldr r4, [r2, #0x10]
	ldr r3, [r2]
_08008120:
	adds r3, r3, r4
	subs r1, r1, r0
	cmp r1, r0
	bge _08008120
	str r1, [r2, #0x20]
	str r3, [r2]
_0800812C:
	cmp r5, #0
	ble _08008142
	ldr r0, [r2, #0x20]
	cmp r0, r5
	blt _08008142
	subs r0, r0, r6
	str r0, [r2, #0x20]
	ldr r0, [r2]
	ldr r1, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2]
_08008142:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08008148
sub_08008148: @ 0x08008148
	movs r1, #0
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bgt _08008152
	movs r1, #1
_08008152:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08008158
sub_08008158: @ 0x08008158
	movs r1, #0
	movs r2, #0x14
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _08008164
	movs r1, #1
_08008164:
	adds r0, r1, #0
	bx lr

	thumb_func_start sub_08008168
sub_08008168: @ 0x08008168
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_0800816C
sub_0800816C: @ 0x0800816C
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08008174
sub_08008174: @ 0x08008174
	ldr r2, [r0]
	str r2, [r1]
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r2, [r0, #8]
	str r2, [r1, #8]
	ldr r0, [r0, #0xc]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08008188
sub_08008188: @ 0x08008188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #0x10]
	mov sl, r1
	mov sb, r2
	movs r1, #0
_0800819C:
	movs r0, #0
	adds r2, r1, #1
	mov r8, r2
	lsls r7, r1, #3
_080081A4:
	movs r6, #0
	lsls r4, r0, #2
	adds r0, #1
	mov ip, r0
	mov r0, sl
	adds r3, r0, r4
	ldr r1, [sp, #0x10]
	adds r5, r7, r1
	movs r2, #1
_080081B6:
	ldm r5!, {r0}
	ldr r1, [r3]
	muls r0, r1, r0
	adds r6, r6, r0
	adds r3, #8
	subs r2, #1
	cmp r2, #0
	bge _080081B6
	adds r0, r4, r7
	add r0, sp
	str r6, [r0]
	mov r0, ip
	cmp r0, #1
	ble _080081A4
	mov r1, r8
	cmp r1, #1
	ble _0800819C
	ldr r0, [sp]
	mov r2, sb
	str r0, [r2]
	ldr r0, [sp, #4]
	str r0, [r2, #4]
	ldr r0, [sp, #8]
	str r0, [r2, #8]
	ldr r0, [sp, #0xc]
	str r0, [r2, #0xc]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080081FC
sub_080081FC: @ 0x080081FC
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_08007F04
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r5, #0xc]
	str r0, [r5]
	adds r0, r4, #0
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r5, #8]
	rsbs r0, r0, #0
	str r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08008228
sub_08008228: @ 0x08008228
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov r8, r1
	mov sl, r2
	movs r1, #0
	mov ip, sp
_0800823E:
	movs r4, #0
	lsls r0, r1, #3
	lsls r6, r1, #2
	adds r7, r1, #1
	mov r5, r8
	mov r1, sb
	adds r2, r0, r1
	movs r3, #1
_0800824E:
	ldm r2!, {r0}
	ldm r5!, {r1}
	muls r0, r1, r0
	adds r4, r4, r0
	subs r3, #1
	cmp r3, #0
	bge _0800824E
	mov r1, ip
	adds r0, r6, r1
	str r4, [r0]
	adds r1, r7, #0
	cmp r1, #1
	ble _0800823E
	ldr r0, [sp]
	mov r1, sl
	str r0, [r1]
	ldr r0, [sp, #4]
	str r0, [r1, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08008284
sub_08008284: @ 0x08008284
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov r8, r1
	mov sl, r2
	movs r0, #0
	mov ip, sp
_0800829A:
	movs r4, #0
	lsls r6, r0, #2
	adds r7, r0, #1
	mov r0, r8
	adds r3, r0, r6
	mov r5, sb
	movs r2, #1
_080082A8:
	ldm r5!, {r0}
	ldr r1, [r3]
	muls r0, r1, r0
	adds r4, r4, r0
	adds r3, #8
	subs r2, #1
	cmp r2, #0
	bge _080082A8
	mov r1, ip
	adds r0, r6, r1
	str r4, [r0]
	adds r0, r7, #0
	cmp r0, #1
	ble _0800829A
	ldr r0, [sp]
	mov r1, sl
	str r0, [r1]
	ldr r0, [sp, #4]
	str r0, [r1, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080082E0
sub_080082E0: @ 0x080082E0
	push {lr}
	bl sub_0800486C
	ldr r1, _080082F0 @ =gUnk_02026CCC
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080082F0: .4byte gUnk_02026CCC

	thumb_func_start sub_080082F4
sub_080082F4: @ 0x080082F4
	push {r4, lr}
	ldr r4, _08008308 @ =gUnk_02026CCC
	ldr r0, [r4]
	bl sub_08004928
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008308: .4byte gUnk_02026CCC

	thumb_func_start sub_0800830C
sub_0800830C: @ 0x0800830C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0800831C @ =gUnk_02026CCC
	ldr r0, [r0]
	bl sub_080048D4
	pop {r1}
	bx r1
	.align 2, 0
_0800831C: .4byte gUnk_02026CCC

	thumb_func_start sub_08008320
sub_08008320: @ 0x08008320
	push {lr}
	adds r1, r0, #0
	ldr r0, _08008330 @ =gUnk_02026CCC
	ldr r0, [r0]
	bl sub_0800490C
	pop {r0}
	bx r0
	.align 2, 0
_08008330: .4byte gUnk_02026CCC

	thumb_func_start sub_08008334
sub_08008334: @ 0x08008334
	push {lr}
	adds r1, r0, #0
	ldr r0, _08008344 @ =gUnk_02026CCC
	ldr r0, [r0]
	bl sub_08004918
	pop {r1}
	bx r1
	.align 2, 0
_08008344: .4byte gUnk_02026CCC

	thumb_func_start sub_08008348
sub_08008348: @ 0x08008348
	push {lr}
	bl sub_0800486C
	ldr r1, _08008368 @ =gUnk_02026CCC
	str r0, [r1]
	bl sub_080087EC
	bl sub_08010E80
	bl sub_0800A378
	bl sub_0800AAD0
	pop {r0}
	bx r0
	.align 2, 0
_08008368: .4byte gUnk_02026CCC

	thumb_func_start sub_0800836C
sub_0800836C: @ 0x0800836C
	push {r4, lr}
	ldr r0, _08008378 @ =gUnk_02026CCC
	ldr r0, [r0]
	cmp r0, #0
	bne _0800837C
_08008376:
	b _08008376
	.align 2, 0
_08008378: .4byte gUnk_02026CCC
_0800837C:
	bl sub_0800AAF0
	bl sub_0800A3A0
	bl sub_08010EE0
	bl sub_08008830
	ldr r4, _080083A0 @ =gUnk_02026CCC
	ldr r0, [r4]
	bl sub_08004928
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080083A0: .4byte gUnk_02026CCC

	thumb_func_start sub_080083A4
sub_080083A4: @ 0x080083A4
	push {lr}
	ldr r0, _080083B0 @ =gUnk_02026CCC
	ldr r0, [r0]
	cmp r0, #0
	bne _080083B4
_080083AE:
	b _080083AE
	.align 2, 0
_080083B0: .4byte gUnk_02026CCC
_080083B4:
	bl sub_0800853C
	bl sub_080103F0
	bl sub_08009D74
	bl sub_0800AB08
	pop {r0}
	bx r0

	thumb_func_start sub_080083C8
sub_080083C8: @ 0x080083C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov sb, r3
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, _080083EC @ =gUnk_02026CD0
	ldr r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	bne _080083F0
_080083EA:
	b _080083EA
	.align 2, 0
_080083EC: .4byte gUnk_02026CD0
_080083F0:
	movs r0, #1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _080083FC
_080083FA:
	b _080083FA
_080083FC:
	movs r7, #0
	ldr r0, [r2]
	b _0800840E
_08008402:
	adds r7, #1
	cmp r7, #3
	bgt _08008418
	ldr r0, [r2]
	lsls r1, r7, #2
	adds r0, r0, r1
_0800840E:
	ldr r0, [r0]
	cmp r0, #0
	bne _08008402
	cmp r7, #3
	ble _0800841C
_08008418:
	movs r0, #0
	b _0800847C
_0800841C:
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	beq _0800842E
	ldr r0, _0800844C @ =0x0000FFFC
	ands r5, r0
	adds r0, r5, #4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0800842E:
	mov r2, r8
	lsls r0, r2, #7
	lsls r1, r2, #5
	adds r0, r0, r1
	add r0, r8
	lsls r0, r0, #1
	adds r0, #0x18
	adds r6, r5, r0
	adds r0, r6, #0
	bl sub_0800830C
	adds r4, r0, #0
	cmp r4, #0
	bne _08008450
_0800844A:
	b _0800844A
	.align 2, 0
_0800844C: .4byte 0x0000FFFC
_08008450:
	adds r0, r4, #0
	adds r1, r6, #0
	bl memzero
	mov r0, sl
	str r0, [r4]
	mov r1, sb
	str r1, [r4, #4]
	strh r5, [r4, #0xe]
	mov r2, r8
	strh r2, [r4, #0x10]
	ldr r1, _0800848C @ =0x22600000
	mov r2, r8
	lsrs r0, r2, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _08008490 @ =gUnk_02026CD0
	ldr r0, [r0]
	lsls r1, r7, #2
	adds r0, r0, r1
	str r4, [r0]
	adds r0, r4, #0
_0800847C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800848C: .4byte 0x22600000
_08008490: .4byte gUnk_02026CD0

	thumb_func_start sub_08008494
sub_08008494: @ 0x08008494
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080084A8 @ =gUnk_02026CD0
	ldr r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _080084AC
_080084A4:
	b _080084A4
	.align 2, 0
_080084A8: .4byte gUnk_02026CD0
_080084AC:
	movs r3, #0
_080084AE:
	ldr r2, [r7]
	lsls r1, r3, #2
	adds r0, r2, r1
	ldr r0, [r0]
	mov r8, r1
	adds r6, r3, #1
	cmp r0, #0
	beq _0800851C
	adds r5, r0, #0
	cmp r2, #0
	bne _080084C6
_080084C4:
	b _080084C4
_080084C6:
	movs r4, #0
	adds r6, r3, #1
_080084CA:
	ldr r2, [r7]
	lsls r3, r4, #2
	adds r1, r2, r3
	ldr r0, [r1]
	cmp r0, r5
	bne _08008516
	movs r0, #0
	str r0, [r1]
	adds r0, r2, #0
	adds r0, #0x10
	adds r1, r0, r3
	ldr r4, [r1]
	cmp r4, #0
	blt _080084FE
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	adds r0, r4, #0
	bl sub_08000EC4
	adds r0, r4, #0
	bl sub_08004030
	adds r0, r4, #0
	bl sub_08003FF8
_080084FE:
	adds r0, r5, #0
	bl sub_08008334
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0x84
	bl memset2
	adds r0, r5, #0
	bl sub_08008320
	b _0800851C
_08008516:
	adds r4, #1
	cmp r4, #3
	ble _080084CA
_0800851C:
	ldr r0, _08008538 @ =gUnk_02026CD0
	ldr r1, [r0]
	add r1, r8
	movs r2, #0
	str r2, [r1]
	adds r3, r6, #0
	adds r7, r0, #0
	cmp r3, #3
	ble _080084AE
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008538: .4byte gUnk_02026CD0

	thumb_func_start sub_0800853C
sub_0800853C: @ 0x0800853C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08008548 @ =gUnk_02026CD0
	ldr r0, [r0]
	cmp r0, #0
	bne _0800854C
_08008546:
	b _08008546
	.align 2, 0
_08008548: .4byte gUnk_02026CD0
_0800854C:
	movs r5, #0
	ldr r6, _080085D0 @ =gUnk_02026CD0
_08008550:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x10
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	blt _08008562
	bl sub_08000EC4
_08008562:
	ldr r0, [r6]
	adds r0, #0x10
	adds r0, r0, r4
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	adds r5, #1
	cmp r5, #3
	ble _08008550
	movs r7, #0
_08008576:
	ldr r0, _080085D0 @ =gUnk_02026CD0
	ldr r0, [r0]
	lsls r1, r7, #2
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _080085DE
	ldrh r1, [r4, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080085DE
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080085DE
	ldr r0, [r4]
	cmp r0, #0
	beq _080085DE
	ldrh r0, [r4, #0xe]
	movs r1, #0
	adds r2, r4, #0
	adds r2, #0x14
	cmp r0, #0
	beq _080085AA
	adds r1, r2, #0
_080085AA:
	adds r6, r1, #0
	ldrb r1, [r4, #0x12]
	ldrh r0, [r4, #0xe]
	adds r5, r2, r0
	cmp r1, #0
	beq _080085C2
	ldrh r0, [r4, #0x10]
	lsls r1, r0, #7
	lsls r2, r0, #5
	adds r1, r1, r2
	adds r1, r1, r0
	adds r5, r5, r1
_080085C2:
	adds r0, r4, #0
	bl sub_08008334
	adds r0, r4, r0
	cmp r5, r0
	blo _080085D4
_080085CE:
	b _080085CE
	.align 2, 0
_080085D0: .4byte gUnk_02026CD0
_080085D4:
	ldr r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r2
_080085DE:
	adds r7, #1
	cmp r7, #3
	ble _08008576
	movs r7, #0
	movs r6, #4
	b _080085EE
_080085EA:
	cmp r7, #1
	bgt _080086DA
_080085EE:
	ldr r0, _08008634 @ =gUnk_02026CD0
	ldr r1, [r0]
	ldr r0, [r1, #0x20]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r4, [r1]
	subs r3, r6, #1
	cmp r4, #0
	beq _080086C2
	ldrh r1, [r4, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080086C2
	ldrb r1, [r4, #0x12]
	adds r0, r4, #0
	adds r0, #0x14
	ldrh r2, [r4, #0xe]
	adds r5, r0, r2
	cmp r1, #0
	beq _08008624
	ldrh r0, [r4, #0x10]
	lsls r1, r0, #7
	lsls r2, r0, #5
	adds r1, r1, r2
	adds r1, r1, r0
	adds r5, r5, r1
_08008624:
	adds r0, r4, #0
	bl sub_08008334
	adds r0, r4, r0
	cmp r5, r0
	blo _08008638
_08008630:
	b _08008630
	.align 2, 0
_08008634: .4byte gUnk_02026CD0
_08008638:
	ldrh r2, [r4, #0x10]
	lsls r0, r2, #7
	adds r0, r5, r0
	lsls r1, r2, #5
	adds r0, r0, r1
	adds r1, r5, #0
	bl memcpy2
	ldrh r0, [r4, #0x10]
	adds r0, r5, r0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl sub_08000AD0
	ldr r1, _08008690 @ =gUnk_02026CD0
	ldr r3, [r1]
	ldr r1, [r3, #0x20]
	lsls r1, r1, #2
	adds r2, r3, #0
	adds r2, #0x10
	adds r1, r2, r1
	str r0, [r1]
	ldr r0, [r3, #0x20]
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r0, [r2]
	subs r3, r6, #1
	cmp r0, #0
	blt _080086C2
	adds r7, #1
	ldrh r0, [r4, #0x12]
	movs r1, #1
	eors r0, r1
	strh r0, [r4, #0x12]
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x13
	cmp r1, r0
	bne _08008698
	ldr r1, _08008694 @ =gUnk_03000DD0
	ldrh r0, [r5]
	strh r0, [r1]
	b _080086C2
	.align 2, 0
_08008690: .4byte gUnk_02026CD0
_08008694: .4byte gUnk_03000DD0
_08008698:
	ldr r6, _080086AC @ =0xFBFFFFF8
	adds r0, r1, r6
	cmp r0, #0x4c
	bhi _080086C2
	ldr r2, _080086B0 @ =gUnk_03000DD2
	adds r0, r2, r6
	adds r2, r1, r0
	ldrh r0, [r4, #0x10]
	lsrs r1, r0, #1
	b _080086BC
	.align 2, 0
_080086AC: .4byte 0xFBFFFFF8
_080086B0: .4byte gUnk_03000DD2
_080086B4:
	ldrh r0, [r5]
	strh r0, [r2]
	adds r5, #2
	adds r2, #2
_080086BC:
	subs r1, #1
	cmp r1, #0
	bge _080086B4
_080086C2:
	ldr r0, _080086E0 @ =gUnk_02026CD0
	ldr r1, [r0]
	ldr r0, [r1, #0x20]
	adds r0, #1
	str r0, [r1, #0x20]
	cmp r0, #3
	ble _080086D4
	movs r0, #0
	str r0, [r1, #0x20]
_080086D4:
	adds r6, r3, #0
	cmp r6, #0
	bgt _080085EA
_080086DA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080086E0: .4byte gUnk_02026CD0

	thumb_func_start sub_080086E4
sub_080086E4: @ 0x080086E4
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r2, #0
	ldrb r1, [r2, #0x12]
	adds r0, #0x14
	ldrh r3, [r2, #0xe]
	adds r4, r0, r3
	cmp r1, #0
	beq _08008702
	ldrh r0, [r2, #0x10]
	lsls r1, r0, #7
	lsls r2, r0, #5
	adds r1, r1, r2
	adds r1, r1, r0
	adds r4, r4, r1
_08008702:
	adds r0, r5, #0
	bl sub_08008334
	adds r0, r5, r0
	cmp r4, r0
	blo _08008710
_0800870E:
	b _0800870E
_08008710:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08008718
sub_08008718: @ 0x08008718
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r2, #0
	ldrb r1, [r2, #0x12]
	adds r0, #0x14
	ldrh r3, [r2, #0xe]
	adds r4, r0, r3
	cmp r1, #1
	beq _08008736
	ldrh r0, [r2, #0x10]
	lsls r1, r0, #7
	lsls r2, r0, #5
	adds r1, r1, r2
	adds r1, r1, r0
	adds r4, r4, r1
_08008736:
	adds r0, r5, #0
	bl sub_08008334
	adds r0, r5, r0
	cmp r4, r0
	blo _08008744
_08008742:
	b _08008742
_08008744:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800874C
sub_0800874C: @ 0x0800874C
	adds r1, r0, #0
	ldrh r0, [r1, #0xe]
	movs r2, #0
	cmp r0, #0
	beq _0800875A
	adds r2, r1, #0
	adds r2, #0x14
_0800875A:
	adds r0, r2, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08008760
sub_08008760: @ 0x08008760
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08008770 @ =gUnk_02026CD0
	ldr r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _08008774
_0800876E:
	b _0800876E
	.align 2, 0
_08008770: .4byte gUnk_02026CD0
_08008774:
	movs r4, #0
_08008776:
	ldr r2, [r6]
	lsls r3, r4, #2
	adds r1, r2, r3
	ldr r0, [r1]
	cmp r0, r5
	bne _080087C2
	movs r0, #0
	str r0, [r1]
	adds r0, r2, #0
	adds r0, #0x10
	adds r1, r0, r3
	ldr r4, [r1]
	cmp r4, #0
	blt _080087AA
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	adds r0, r4, #0
	bl sub_08000EC4
	adds r0, r4, #0
	bl sub_08004030
	adds r0, r4, #0
	bl sub_08003FF8
_080087AA:
	adds r0, r5, #0
	bl sub_08008334
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0x84
	bl memset2
	adds r0, r5, #0
	bl sub_08008320
	b _080087C8
_080087C2:
	adds r4, #1
	cmp r4, #3
	ble _08008776
_080087C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080087D0
sub_080087D0: @ 0x080087D0
	adds r2, r0, #0
	ldr r0, _080087DC @ =gUnk_02026CD0
	ldr r0, [r0]
	cmp r0, #0
	bne _080087E0
_080087DA:
	b _080087DA
	.align 2, 0
_080087DC: .4byte gUnk_02026CD0
_080087E0:
	ldrh r1, [r2, #0xc]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_080087EC
sub_080087EC: @ 0x080087EC
	push {r4, lr}
	ldr r4, _08008800 @ =gUnk_02026CD0
	movs r0, #0x24
	bl sub_0800830C
	str r0, [r4]
	cmp r0, #0
	bne _08008804
_080087FC:
	b _080087FC
	.align 2, 0
_08008800: .4byte gUnk_02026CD0
_08008804:
	ldr r4, _0800882C @ =gUnk_02026CD0
	ldr r0, [r4]
	movs r1, #0x24
	bl memzero
	movs r2, #0
	movs r3, #1
	rsbs r3, r3, #0
_08008814:
	ldr r0, [r4]
	lsls r1, r2, #2
	adds r0, #0x10
	adds r0, r0, r1
	str r3, [r0]
	adds r2, #1
	cmp r2, #3
	ble _08008814
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800882C: .4byte gUnk_02026CD0

	thumb_func_start sub_08008830
sub_08008830: @ 0x08008830
	push {r4, lr}
	bl sub_08008494
	ldr r4, _08008854 @ =gUnk_02026CD0
	ldr r0, [r4]
	movs r1, #0x24
	movs r2, #0x84
	bl memset2
	ldr r0, [r4]
	bl sub_08008320
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008854: .4byte gUnk_02026CD0

	thumb_func_start sub_08008858
sub_08008858: @ 0x08008858
	bx lr
	.align 2, 0

	thumb_func_start sub_0800885C
sub_0800885C: @ 0x0800885C
	bx lr
	.align 2, 0

	thumb_func_start sub_08008860
sub_08008860: @ 0x08008860
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	str r0, [sp]
	ldr r0, [sp, #0x6c]
	ldr r4, [sp, #0x70]
	ldr r5, [sp, #0x74]
	ldr r6, [sp, #0x78]
	ldr r7, [sp, #0x7c]
	mov r8, r7
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x10]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x14]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0x18]
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	lsrs r1, r2, #0x10
	str r1, [sp, #8]
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _080088B8
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _080088BA
_080088B8:
	movs r7, #0
_080088BA:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	str r0, [sp, #0x44]
	cmp r1, #0
	bge _080088CC
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080088CE
_080088CC:
	movs r4, #0
_080088CE:
	ldr r2, [sp]
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	lsls r0, r2, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	lsls r0, r7, #0x10
	asrs r3, r0, #0x10
	str r1, [sp, #0x40]
	mov ip, r2
	cmp r3, r6
	blt _080088EA
	b _08008B7C
_080088EA:
	ldr r7, [sp]
	ldrb r1, [r7, #2]
	ldrb r2, [r7, #3]
	lsls r0, r2, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	str r1, [sp, #0x3c]
	adds r1, r2, #0
	mov sb, r0
	cmp r4, r5
	blt _08008908
	b _08008B7C
_08008908:
	subs r7, r6, r3
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	subs r0, r5, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r5, [sp]
	adds r5, #8
	lsls r0, r3, #1
	adds r5, r5, r0
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r2, [sp, #0x1c]
	ands r0, r2
	cmp r0, #0
	beq _08008940
	ldr r3, _0800893C @ =0x0000FFFF
	str r3, [sp, #0x20]
	subs r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x28]
	b _08008948
	.align 2, 0
_0800893C: .4byte 0x0000FFFF
_08008940:
	movs r4, #1
	str r4, [sp, #0x20]
	movs r7, #0
	str r7, [sp, #0x28]
_08008948:
	movs r0, #0x80
	lsls r0, r0, #4
	ldr r2, [sp, #0x1c]
	ands r0, r2
	cmp r0, #0
	beq _08008996
	mov r3, ip
	lsls r0, r3, #8
	ldr r4, [sp, #0x40]
	orrs r0, r4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	lsls r0, r1, #8
	ldr r7, [sp, #0x3c]
	orrs r0, r7
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	subs r0, #2
	muls r0, r2, r0
	adds r5, r5, r0
	movs r1, #0
	mov r3, sb
	asrs r0, r3, #0x10
	ldr r7, [sp, #8]
	lsls r4, r7, #0x10
	ldr r3, [sp, #0xc]
	lsls r3, r3, #0x10
	mov sb, r3
	cmp r1, r0
	bge _080089C2
	lsls r2, r2, #1
	adds r3, r0, #0
_08008988:
	subs r5, r5, r2
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r3
	blt _08008988
	b _080089C2
_08008996:
	movs r1, #0
	mov r4, sb
	asrs r3, r4, #0x10
	ldr r7, [sp, #8]
	lsls r4, r7, #0x10
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x10
	mov sb, r0
	cmp r1, r3
	bge _080089C2
	mov r2, ip
	lsls r0, r2, #8
	ldr r7, [sp, #0x40]
	orrs r0, r7
	lsls r0, r0, #0x10
	asrs r2, r0, #0xf
_080089B6:
	adds r5, r5, r2
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r3
	blt _080089B6
_080089C2:
	ldr r0, [sp, #4]
	bl sub_0800A1EC
	str r0, [sp, #0x24]
	movs r7, #0
	cmp r4, #0
	ble _080089D2
	lsrs r7, r4, #0x10
_080089D2:
	movs r4, #0
	ldr r0, [sp, #0x44]
	cmp r0, #0
	ble _080089DC
	lsrs r4, r0, #0x10
_080089DC:
	ldr r0, [sp, #4]
	bl sub_0800A200
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	lsls r0, r7, #0x10
	asrs r6, r0, #0x10
	mov r2, sb
	asrs r1, r2, #0x10
	cmp r6, r1
	blt _080089F6
	b _08008B7C
_080089F6:
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r7, r0
	blt _08008A06
	b _08008B7C
_08008A06:
	subs r1, r1, r6
	subs r0, r0, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r4, r8
	lsls r2, r4, #0x10
	asrs r3, r2, #0x10
	subs r1, r1, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r4, sl
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _08008A36
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08008A36:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08008A46
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_08008A46:
	mov r0, r8
	cmp r0, #2
	bne _08008A50
	movs r1, #2
	mov r8, r1
_08008A50:
	lsls r0, r6, #1
	ldr r2, [sp, #0x24]
	adds r6, r2, r0
	movs r1, #0
	mov r3, sl
	lsls r3, r3, #0x10
	str r3, [sp, #0x34]
	cmp r1, r7
	bge _08008A74
	mov r4, ip
	lsls r3, r4, #1
	adds r2, r7, #0
_08008A68:
	adds r6, r6, r3
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blt _08008A68
_08008A74:
	movs r2, #0
	ldr r7, [sp, #0x34]
	cmp r7, #0
	bgt _08008A7E
	b _08008B7C
_08008A7E:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x30]
	mov r3, ip
	lsls r3, r3, #1
	str r3, [sp, #0x48]
_08008A8C:
	ldr r1, [sp, #0x28]
	movs r4, #0
	mov ip, r4
	lsls r2, r2, #0x10
	str r2, [sp, #0x38]
	ldr r7, [sp, #0x30]
	cmp ip, r7
	bge _08008B36
	ldr r2, [sp, #0x14]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r3, [sp, #0x18]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x2c]
	mov sl, sb
	movs r4, #0xc0
	lsls r4, r4, #4
	ldr r7, [sp, #0x1c]
	ands r7, r4
	mov r8, r7
_08008AB8:
	lsls r1, r1, #0x10
	asrs r0, r1, #0xf
	adds r0, r0, r5
	ldrh r3, [r0]
	adds r7, r1, #0
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x10
	mov r2, sb
	cmp r2, #0
	bne _08008AD2
	ldr r4, [sp, #0x2c]
	cmp r4, #0
	beq _08008B08
_08008AD2:
	asrs r4, r0, #0x10
	ldr r1, _08008AE4 @ =0x000003FF
	adds r0, r3, #0
	ands r0, r1
	cmp r0, r1
	bne _08008AE8
	adds r2, r3, #0
	b _08008AF4
	.align 2, 0
_08008AE4: .4byte 0x000003FF
_08008AE8:
	add r0, sl
	ands r0, r1
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r2, r3
	orrs r2, r0
_08008AF4:
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r0, r2
	lsrs r0, r0, #0xc
	adds r0, r0, r4
	lsls r0, r0, #0x1c
	ldr r1, _08008B58 @ =0x00000FFF
	ands r1, r2
	lsrs r3, r0, #0x10
	orrs r3, r1
_08008B08:
	mov r0, ip
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r0, r2, #1
	adds r0, r0, r6
	mov r1, r8
	eors r3, r1
	strh r3, [r0]
	asrs r1, r7, #0x10
	ldr r3, [sp, #0x20]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	mov ip, r4
	asrs r2, r2, #0x10
	ldr r7, [sp, #0x30]
	cmp r2, r7
	blt _08008AB8
_08008B36:
	ldr r0, [sp, #0x48]
	adds r6, r6, r0
	movs r0, #0x80
	lsls r0, r0, #4
	ldr r1, [sp, #0x1c]
	ands r0, r1
	cmp r0, #0
	beq _08008B5C
	ldr r2, [sp]
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	subs r5, r5, r0
	b _08008B6C
	.align 2, 0
_08008B58: .4byte 0x00000FFF
_08008B5C:
	ldr r3, [sp]
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r5, r5, r0
_08008B6C:
	ldr r4, [sp, #0x38]
	movs r7, #0x80
	lsls r7, r7, #9
	adds r0, r4, r7
	lsrs r2, r0, #0x10
	ldr r1, [sp, #0x34]
	cmp r0, r1
	blt _08008A8C
_08008B7C:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08008B8C
sub_08008B8C: @ 0x08008B8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sl, r0
	ldr r0, [sp, #0x3c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsrs r6, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _08008BBE
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08008BC0
_08008BBE:
	movs r2, #0
_08008BC0:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	str r0, [sp, #0x18]
	cmp r1, #0
	bge _08008BD2
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _08008BD4
_08008BD2:
	movs r3, #0
_08008BD4:
	mov r1, sl
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	adds r5, r4, #0
	cmp r2, r5
	blt _08008BEE
	b _08008D48
_08008BEE:
	mov r7, sl
	ldrb r0, [r7, #2]
	ldrb r1, [r7, #3]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	cmp r3, r1
	blt _08008C06
	b _08008D48
_08008C06:
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	subs r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r7, #8
	adds r7, r7, r2
	movs r0, #0
	lsls r4, r6, #0x10
	cmp r0, r3
	bge _08008C32
	adds r2, r5, #0
	adds r1, r3, #0
_08008C26:
	adds r7, r7, r2
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	blt _08008C26
_08008C32:
	mov r0, sb
	bl sub_0800A1EC
	str r0, [sp, #4]
	movs r6, #0
	cmp r4, #0
	ble _08008C42
	lsrs r6, r4, #0x10
_08008C42:
	movs r4, #0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _08008C4C
	lsrs r4, r0, #0x10
_08008C4C:
	mov r0, sb
	bl sub_0800A200
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, sb
	bl sub_0800A214
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r1, [sp, #0xc]
	cmp sb, r1
	bge _08008D48
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	cmp r5, r2
	bge _08008D48
	subs r1, r1, r6
	subs r0, r2, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #8]
	lsls r2, r3, #0x10
	asrs r4, r2, #0x10
	subs r1, r1, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _08008CA6
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
_08008CA6:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08008CB6
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08008CB6:
	ldr r2, [sp, #4]
	add r2, sb
	movs r0, #0
	mov r4, r8
	lsls r1, r4, #0x10
	cmp r0, r5
	bge _08008CD4
	adds r3, r5, #0
_08008CC6:
	ldr r4, [sp, #0xc]
	adds r2, r2, r4
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r3
	blt _08008CC6
_08008CD4:
	movs r0, #0
	asrs r1, r1, #0x10
	cmp r0, r1
	bge _08008D48
	ldr r3, [sp, #8]
	lsls r3, r3, #0x10
	mov sb, r3
	asrs r3, r3, #0x10
	str r3, [sp, #0x14]
	str r1, [sp, #0x10]
_08008CE8:
	movs r3, #0
	ldr r4, [sp, #0xc]
	adds r4, r4, r2
	mov ip, r4
	adds r0, #1
	mov r8, r0
	ldr r0, [sp, #0x14]
	cmp r3, r0
	bge _08008D2A
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r6, r4, #0
	mov r0, sb
	asrs r5, r0, #0x10
_08008D06:
	adds r0, r7, r3
	ldrb r1, [r0]
	cmp r4, #0
	beq _08008D1C
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08008D1A
	adds r0, r0, r6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08008D1A:
	adds r1, r0, #0
_08008D1C:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r5
	blt _08008D06
_08008D2A:
	mov r2, ip
	mov r1, sl
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r7, r7, r1
	mov r3, r8
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	ldr r4, [sp, #0x10]
	cmp r0, r4
	blt _08008CE8
_08008D48:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08008D58
sub_08008D58: @ 0x08008D58
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldrb r0, [r4, #4]
	bl sub_0800A1D8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	beq _08008D98
	cmp r0, #1
	bgt _08008D7C
	cmp r0, #0
	beq _08008D86
	b _08008E22
_08008D7C:
	cmp r0, #2
	beq _08008DA8
	cmp r0, #3
	beq _08008DE8
	b _08008E22
_08008D86:
	ldr r0, _08008D94 @ =gUnk_03000DD0
	ldrh r1, [r0, #0xa]
	strh r5, [r0, #0xa]
	ldrh r1, [r0, #0xc]
	strh r6, [r0, #0xc]
	b _08008E22
	.align 2, 0
_08008D94: .4byte gUnk_03000DD0
_08008D98:
	ldr r0, _08008DA4 @ =gUnk_03000DD0
	ldrh r1, [r0, #0xe]
	strh r5, [r0, #0xe]
	ldrh r1, [r0, #0x10]
	strh r6, [r0, #0x10]
	b _08008E22
	.align 2, 0
_08008DA4: .4byte gUnk_03000DD0
_08008DA8:
	ldrh r1, [r4, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08008DC4
	ldr r0, _08008DC0 @ =gUnk_03000DD0
	ldrh r1, [r0, #0x12]
	strh r5, [r0, #0x12]
	ldrh r1, [r0, #0x14]
	strh r6, [r0, #0x14]
	b _08008E22
	.align 2, 0
_08008DC0: .4byte gUnk_03000DD0
_08008DC4:
	lsls r0, r5, #0x10
	asrs r2, r0, #8
	ldr r0, _08008DE4 @ =gUnk_03000DD0
	ldrh r1, [r0, #0x22]
	strh r2, [r0, #0x22]
	asrs r1, r2, #0x10
	ldrh r2, [r0, #0x24]
	strh r1, [r0, #0x24]
	lsls r1, r6, #0x10
	asrs r2, r1, #8
	ldrh r1, [r0, #0x26]
	strh r2, [r0, #0x26]
	asrs r1, r2, #0x10
	ldrh r2, [r0, #0x28]
	strh r1, [r0, #0x28]
	b _08008E22
	.align 2, 0
_08008DE4: .4byte gUnk_03000DD0
_08008DE8:
	ldrh r1, [r4, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08008E04
	ldr r0, _08008E00 @ =gUnk_03000DD0
	ldrh r1, [r0, #0x16]
	strh r5, [r0, #0x16]
	ldrh r1, [r0, #0x18]
	strh r6, [r0, #0x18]
	b _08008E22
	.align 2, 0
_08008E00: .4byte gUnk_03000DD0
_08008E04:
	lsls r0, r5, #0x10
	asrs r2, r0, #8
	ldr r0, _08008E28 @ =gUnk_03000DD0
	ldrh r1, [r0, #0x32]
	strh r2, [r0, #0x32]
	asrs r1, r2, #0x10
	ldrh r2, [r0, #0x34]
	strh r1, [r0, #0x34]
	lsls r1, r6, #0x10
	asrs r2, r1, #8
	ldrh r1, [r0, #0x36]
	strh r2, [r0, #0x36]
	asrs r1, r2, #0x10
	ldrh r2, [r0, #0x38]
	strh r1, [r0, #0x38]
_08008E22:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08008E28: .4byte gUnk_03000DD0

	thumb_func_start sub_08008E2C
sub_08008E2C: @ 0x08008E2C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	mov ip, r2
	ldrh r2, [r4, #8]
	ldrh r1, [r4, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08008E62
	lsls r0, r2, #3
	adds r0, #2
	ldr r1, [r4, #0x28]
	adds r1, r1, r0
	ldrb r2, [r1]
	ldrb r0, [r1, #1]
	lsls r3, r0, #8
	orrs r3, r2
	ldrb r2, [r1, #4]
	ldrb r0, [r1, #5]
	lsls r5, r0, #8
	orrs r5, r2
	ldrb r2, [r1, #6]
	ldrb r0, [r1, #7]
	lsls r6, r0, #8
	orrs r6, r2
	b _08008E76
_08008E62:
	lsls r1, r2, #2
	adds r1, #2
	ldr r0, [r4, #0x28]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r3, r0, #8
	orrs r3, r1
	movs r5, #0
	movs r6, #0
_08008E76:
	ldrh r1, [r4, #2]
	movs r0, #1
	ands r0, r1
	ldr r2, [r4, #0x24]
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r2, r2, r0
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4, #0xa]
	adds r1, r1, r0
	ldrb r3, [r2, #4]
	ldrb r0, [r2, #5]
	lsls r0, r0, #8
	orrs r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r7]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	ldrh r4, [r4, #0xc]
	adds r1, r1, r4
	ldrb r3, [r2, #6]
	ldrb r0, [r2, #7]
	lsls r0, r0, #8
	orrs r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	mov r0, ip
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08008EC0
sub_08008EC0: @ 0x08008EC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r5, r0, #0
	ldrh r3, [r5, #8]
	ldrh r1, [r5, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08008EFA
	ldrh r0, [r5, #0x18]
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, [r5, #0x28]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrb r2, [r1, #4]
	ldrb r0, [r1, #5]
	lsls r0, r0, #8
	orrs r0, r2
	ldr r1, _08008F74 @ =0x000003E7
	cmp r0, r1
	bne _08008EFA
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08008EFA:
	lsls r0, r3, #3
	adds r0, #2
	ldr r1, [r5, #0x28]
	adds r6, r1, r0
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	lsls r4, r0, #8
	orrs r4, r1
	ldrb r0, [r5, #4]
	bl sub_0800A200
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrb r0, [r5, #4]
	bl sub_0800A214
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r3, [r5, #2]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _08008F2E
	b _08009074
_08008F2E:
	ldr r0, [r5, #0x24]
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r4, r0, r2
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	beq _08008F78
	ldrb r0, [r6, #4]
	ldrb r2, [r6, #5]
	lsls r2, r2, #8
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrh r0, [r5, #0xa]
	adds r2, r2, r0
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0xd
	ldrb r3, [r4, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #8
	orrs r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	subs r2, r2, r1
	strh r2, [r5, #0xe]
	b _08008F98
	.align 2, 0
_08008F74: .4byte 0x000003E7
_08008F78:
	ldrb r0, [r6, #4]
	ldrb r1, [r6, #5]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r5, #0xa]
	adds r1, r1, r2
	ldrb r2, [r4, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #8
	orrs r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0xe]
_08008F98:
	ldrh r1, [r5, #2]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08008FD4
	ldrb r0, [r6, #6]
	ldrb r2, [r6, #7]
	lsls r2, r2, #8
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrh r7, [r5, #0xc]
	adds r2, r2, r7
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0xd
	ldrb r3, [r4, #6]
	ldrb r0, [r4, #7]
	lsls r0, r0, #8
	orrs r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	b _08008FF4
_08008FD4:
	ldrb r0, [r6, #6]
	ldrb r1, [r6, #7]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r5, #0xc]
	adds r1, r1, r0
	ldrb r2, [r4, #6]
	ldrb r0, [r4, #7]
	lsls r0, r0, #8
	orrs r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x10]
_08008FF4:
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge _08009000
	adds r0, r1, #7
_08009000:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	strh r0, [r5, #0x12]
	movs r7, #0x10
	ldrsh r1, [r5, r7]
	adds r0, r1, #0
	cmp r1, #0
	bge _08009014
	adds r0, r1, #7
_08009014:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	strh r0, [r5, #0x14]
	ldrb r1, [r5, #4]
	movs r0, #0xe
	ldrsh r2, [r5, r0]
	cmp r2, #0
	bge _08009028
	adds r2, #7
_08009028:
	asrs r2, r2, #3
	movs r7, #0x10
	ldrsh r3, [r5, r7]
	cmp r3, #0
	bge _08009034
	adds r3, #7
_08009034:
	asrs r3, r3, #3
	mov r7, r8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	mov r7, ip
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r7, #0x1e
	ldrsh r0, [r5, r7]
	str r0, [sp, #8]
	movs r7, #0x20
	ldrsh r0, [r5, r7]
	str r0, [sp, #0xc]
	ldrh r0, [r5, #2]
	str r0, [sp, #0x10]
	adds r0, r4, #0
	bl sub_08008860
	b _0800910C
_0800905E:
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	adds r0, r5, #0
	bl sub_08009858
	ldrh r1, [r5, #2]
	ldr r0, _08009070 @ =0x0000FFDF
	b _080091D0
	.align 2, 0
_08009070: .4byte 0x0000FFDF
_08009074:
	ldr r1, [r5, #0x24]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r4, r1, r2
	ldrb r0, [r6, #4]
	ldrb r1, [r6, #5]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r5, #0xa]
	adds r1, r1, r2
	ldrb r2, [r4, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #8
	orrs r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0xe]
	ldrb r0, [r6, #6]
	ldrb r1, [r6, #7]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r7, [r5, #0xc]
	adds r1, r1, r7
	ldrb r2, [r4, #6]
	ldrb r0, [r4, #7]
	lsls r0, r0, #8
	orrs r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	movs r0, #0xe
	ldrsh r1, [r5, r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _080090CA
	adds r0, r1, #7
_080090CA:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	strh r0, [r5, #0x12]
	movs r2, #0x10
	ldrsh r1, [r5, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge _080090DE
	adds r0, r1, #7
_080090DE:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	strh r0, [r5, #0x14]
	ldrb r1, [r5, #4]
	movs r7, #0xe
	ldrsh r2, [r5, r7]
	cmp r2, #0
	bge _080090F2
	adds r2, #7
_080090F2:
	asrs r2, r2, #3
	movs r0, #0x10
	ldrsh r3, [r5, r0]
	cmp r3, #0
	bge _080090FE
	adds r3, #7
_080090FE:
	asrs r3, r3, #3
	movs r7, #0x1e
	ldrsh r0, [r5, r7]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08008B8C
_0800910C:
	ldrh r1, [r5, #2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800912E
	ldrh r1, [r5, #0x12]
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r5, #0x14]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08008D58
_0800912E:
	ldrh r0, [r5]
	cmp r0, #2
	beq _08009220
	movs r7, #1
	ldrh r1, [r5, #2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08009166
	adds r4, r5, #0
	adds r4, #0x30
	adds r0, r4, #0
	bl sub_080080F4
	ldr r1, [r5, #0x30]
	ldrh r0, [r5, #0x2c]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	strh r1, [r5, #0x2c]
	adds r0, r4, #0
	bl sub_08008148
	cmp r0, #0
	beq _08009166
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08009166:
	movs r4, #0
	cmp r4, r7
	bhs _08009220
	mov r8, r4
	ldr r0, _080091D8 @ =0x000003E7
	mov ip, r0
_08009172:
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	ldrb r2, [r6, #2]
	ldrb r1, [r6, #3]
	lsls r1, r1, #8
	orrs r1, r2
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	cmp r0, r1
	blt _08009216
	ldrh r3, [r5, #8]
	adds r0, r3, #1
	strh r0, [r5, #8]
	mov r1, r8
	strh r1, [r5, #6]
	movs r2, #8
	ldrsh r0, [r5, r2]
	ldrh r1, [r5, #0x18]
	cmp r0, r1
	bne _080091E0
	ldr r1, [r5, #0x28]
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrb r2, [r1, #4]
	ldrb r0, [r1, #5]
	lsls r0, r0, #8
	orrs r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, ip
	bne _08009216
	ldrh r0, [r5, #0x16]
	strh r0, [r5, #8]
	ldrh r1, [r5, #2]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08009216
	movs r7, #0x2e
	ldrsh r1, [r5, r7]
	adds r0, r5, #0
	bl sub_08009858
	ldrh r0, [r5, #2]
	ldr r2, _080091DC @ =0x0000FFDF
	adds r1, r2, #0
_080091D0:
	ands r0, r1
	strh r0, [r5, #2]
	b _08009220
	.align 2, 0
_080091D8: .4byte 0x000003E7
_080091DC: .4byte 0x0000FFDF
_080091E0:
	cmp r0, r1
	ble _08009216
	ldrh r0, [r5, #2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ands r1, r0
	adds r2, r0, #0
	cmp r1, #0
	beq _080091FA
	ldrh r0, [r5, #0x16]
	strh r0, [r5, #8]
	b _0800920C
_080091FA:
	movs r0, #1
	strh r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0800920C
	strh r3, [r5, #8]
_0800920C:
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0
	beq _08009216
	b _0800905E
_08009216:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r7
	blo _08009172
_08009220:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800922C
sub_0800922C: @ 0x0800922C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r5, r0, #0
	ldrh r3, [r5, #8]
	ldrh r1, [r5, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800926A
	ldrh r0, [r5, #0x18]
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, [r5, #0x28]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrb r2, [r1, #4]
	ldrb r0, [r1, #5]
	lsls r0, r0, #8
	orrs r0, r2
	ldr r1, _08009338 @ =0x000003E7
	cmp r0, r1
	bne _0800926A
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0800926A:
	lsls r0, r3, #2
	adds r0, #2
	ldr r1, [r5, #0x28]
	adds r1, r1, r0
	str r1, [sp, #0x14]
	ldrb r1, [r1]
	ldr r2, [sp, #0x14]
	ldrb r0, [r2, #1]
	lsls r2, r0, #8
	orrs r2, r1
	ldrh r3, [r5, #2]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _0800928A
	b _08009440
_0800928A:
	ldr r0, [r5, #0x24]
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r7, r0, r2
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _0800933C
	ldrh r0, [r5, #0x1a]
	ldrh r3, [r5, #0xa]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0x1c]
	ldrh r4, [r5, #0xc]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	ldrh r6, [r5, #0xc]
	str r6, [sp, #0x20]
	cmp r6, r0
	blo _080092C0
	b _080094BC
_080092C0:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x1c]
_080092C6:
	ldrh r4, [r5, #0xa]
	cmp r4, r8
	bhs _08009318
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	ldr r2, [sp, #0x20]
	lsls r2, r2, #0x10
	mov sb, r2
_080092DA:
	ldrb r1, [r5, #4]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	mov r3, sl
	str r3, [sp]
	ldr r6, [sp, #0x1c]
	str r6, [sp, #4]
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	str r0, [sp, #8]
	movs r6, #0x20
	ldrsh r0, [r5, r6]
	str r0, [sp, #0xc]
	ldrh r0, [r5, #2]
	str r0, [sp, #0x10]
	adds r0, r7, #0
	mov r6, sb
	asrs r3, r6, #0x10
	bl sub_08008860
	ldrb r1, [r7]
	ldrb r0, [r7, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r8
	blo _080092DA
_08009318:
	ldrb r1, [r7, #2]
	ldrb r0, [r7, #3]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x20]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	ldr r2, [sp, #0x18]
	cmp r0, r2
	blo _080092C6
	b _080094BC
	.align 2, 0
_08009338: .4byte 0x000003E7
_0800933C:
	ldrb r0, [r5, #4]
	bl sub_0800A200
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r5, #4]
	bl sub_0800A214
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r1, [r5, #2]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08009378
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0xd
	ldrb r2, [r7, #4]
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
	orrs r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _08009384
_08009378:
	ldrb r0, [r7, #4]
	ldrb r1, [r7, #5]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
_08009384:
	ldrh r0, [r5, #0xa]
	subs r0, r0, r1
	strh r0, [r5, #0xe]
	ldrh r1, [r5, #2]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080093B2
	ldrb r0, [r7, #2]
	ldrb r1, [r7, #3]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0xd
	ldrb r2, [r7, #6]
	ldrb r0, [r7, #7]
	lsls r0, r0, #8
	orrs r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _080093BE
_080093B2:
	ldrb r0, [r7, #6]
	ldrb r1, [r7, #7]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
_080093BE:
	ldrh r0, [r5, #0xc]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	movs r3, #0xe
	ldrsh r1, [r5, r3]
	adds r0, r1, #0
	cmp r1, #0
	bge _080093D0
	adds r0, r1, #7
_080093D0:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	strh r0, [r5, #0x12]
	movs r0, #0x10
	ldrsh r1, [r5, r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _080093E4
	adds r0, r1, #7
_080093E4:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	strh r0, [r5, #0x14]
	ldrb r1, [r5, #4]
	movs r3, #0xe
	ldrsh r2, [r5, r3]
	cmp r2, #0
	bge _080093F8
	adds r2, #7
_080093F8:
	asrs r2, r2, #3
	movs r0, #0x10
	ldrsh r3, [r5, r0]
	cmp r3, #0
	bge _08009404
	adds r3, #7
_08009404:
	asrs r3, r3, #3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r4, #0x1e
	ldrsh r0, [r5, r4]
	str r0, [sp, #8]
	movs r6, #0x20
	ldrsh r0, [r5, r6]
	str r0, [sp, #0xc]
	ldrh r0, [r5, #2]
	str r0, [sp, #0x10]
	adds r0, r7, #0
	bl sub_08008860
	b _080094BC
_0800942A:
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	adds r0, r5, #0
	bl sub_08009858
	ldrh r1, [r5, #2]
	ldr r0, _0800943C @ =0x0000FFDF
	b _08009580
	.align 2, 0
_0800943C: .4byte 0x0000FFDF
_08009440:
	ldr r1, [r5, #0x24]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r4, r1, r2
	ldrb r1, [r4, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #0xa]
	subs r1, r1, r0
	strh r1, [r5, #0xe]
	ldrb r1, [r4, #6]
	ldrb r0, [r4, #7]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #0xc]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge _0800947A
	adds r0, r1, #7
_0800947A:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	strh r0, [r5, #0x12]
	movs r3, #0x10
	ldrsh r1, [r5, r3]
	adds r0, r1, #0
	cmp r1, #0
	bge _0800948E
	adds r0, r1, #7
_0800948E:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	strh r0, [r5, #0x14]
	ldrb r1, [r5, #4]
	movs r6, #0xe
	ldrsh r2, [r5, r6]
	cmp r2, #0
	bge _080094A2
	adds r2, #7
_080094A2:
	asrs r2, r2, #3
	movs r0, #0x10
	ldrsh r3, [r5, r0]
	cmp r3, #0
	bge _080094AE
	adds r3, #7
_080094AE:
	asrs r3, r3, #3
	movs r6, #0x1e
	ldrsh r0, [r5, r6]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08008B8C
_080094BC:
	ldrh r1, [r5, #2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080094DE
	ldrh r1, [r5, #0x12]
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r5, #0x14]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08008D58
_080094DE:
	ldrh r0, [r5]
	cmp r0, #2
	beq _080095D0
	movs r6, #1
	ldrh r1, [r5, #2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08009516
	adds r4, r5, #0
	adds r4, #0x30
	adds r0, r4, #0
	bl sub_080080F4
	ldr r1, [r5, #0x30]
	ldrh r0, [r5, #0x2c]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r5, #0x2c]
	adds r0, r4, #0
	bl sub_08008148
	cmp r0, #0
	beq _08009516
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08009516:
	movs r4, #0
	cmp r4, r6
	bhs _080095D0
	mov r8, r4
	ldr r7, _08009588 @ =0x000003E7
_08009520:
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	ldr r1, [sp, #0x14]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	lsls r1, r1, #8
	orrs r1, r2
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	cmp r0, r1
	blt _080095C6
	ldrh r3, [r5, #8]
	adds r0, r3, #1
	strh r0, [r5, #8]
	mov r2, r8
	strh r2, [r5, #6]
	movs r1, #8
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #0x18]
	cmp r0, r1
	bne _08009590
	ldr r1, [r5, #0x28]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrb r2, [r1, #4]
	ldrb r0, [r1, #5]
	lsls r0, r0, #8
	orrs r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	bne _080095C6
	ldrh r0, [r5, #0x16]
	strh r0, [r5, #8]
	ldrh r1, [r5, #2]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080095C6
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	adds r0, r5, #0
	bl sub_08009858
	ldrh r0, [r5, #2]
	ldr r3, _0800958C @ =0x0000FFDF
	adds r1, r3, #0
_08009580:
	ands r0, r1
	strh r0, [r5, #2]
	b _080095D0
	.align 2, 0
_08009588: .4byte 0x000003E7
_0800958C: .4byte 0x0000FFDF
_08009590:
	cmp r0, r1
	ble _080095C6
	ldrh r0, [r5, #2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ands r1, r0
	adds r2, r0, #0
	cmp r1, #0
	beq _080095AA
	ldrh r0, [r5, #0x16]
	strh r0, [r5, #8]
	b _080095BC
_080095AA:
	movs r0, #1
	strh r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _080095BC
	strh r3, [r5, #8]
_080095BC:
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0
	beq _080095C6
	b _0800942A
_080095C6:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _08009520
_080095D0:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080095E0
sub_080095E0: @ 0x080095E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [sp, #0x20]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	mov sb, r5
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sl, r0
	adds r0, r6, #0
	bl sub_0800A308
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
	cmp r5, r8
	bne _08009616
	movs r0, #1
	bl sub_0800A308
_08009616:
	movs r0, #0x8c
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0800963C @ =gUnk_02026CE0
	adds r2, r1, r0
	strh r7, [r2, #8]
	strh r5, [r2, #0xa]
	strh r4, [r2, #0x12]
	cmp r7, #0
	bne _08009672
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r5, r0
	beq _08009652
	cmp r5, r0
	bgt _08009640
	cmp r5, #0
	beq _0800964E
	b _08009668
	.align 2, 0
_0800963C: .4byte gUnk_02026CE0
_08009640:
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r5, r0
	beq _0800965A
	cmp r5, r8
	beq _08009662
	b _08009668
_0800964E:
	movs r0, #0x20
	b _08009664
_08009652:
	movs r0, #0x40
	strh r0, [r2, #0xc]
	movs r0, #0x20
	b _08009666
_0800965A:
	movs r0, #0x20
	strh r0, [r2, #0xc]
	movs r0, #0x40
	b _08009666
_08009662:
	movs r0, #0x40
_08009664:
	strh r0, [r2, #0xc]
_08009666:
	strh r0, [r2, #0xe]
_08009668:
	ldrh r1, [r2, #0xc]
	ldrh r0, [r2, #0xe]
	muls r0, r1, r0
	lsls r0, r0, #1
	b _080096A6
_08009672:
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r5, r0
	beq _08009692
	cmp r5, r0
	bgt _08009684
	cmp r5, #0
	beq _0800968E
	b _0800969C
_08009684:
	movs r0, #0x80
	lsls r0, r0, #8
	cmp sb, r0
	beq _08009696
	b _0800969C
_0800968E:
	movs r0, #0x10
	b _08009698
_08009692:
	movs r0, #0x20
	b _08009698
_08009696:
	movs r0, #0x40
_08009698:
	strh r0, [r2, #0xc]
	strh r0, [r2, #0xe]
_0800969C:
	ldrh r0, [r2, #0xc]
	ldrh r1, [r2, #0xe]
	adds r3, r0, #0
	muls r3, r1, r3
	adds r0, r3, #0
_080096A6:
	strh r0, [r2, #0x10]
	ldr r0, [sp, #0x24]
	str r0, [r2, #0x14]
	mov r0, sl
	str r0, [r2, #4]
	cmp r6, #0
	bne _080096C0
	ldr r0, _080096BC @ =gUnk_02026CD8
	ldr r0, [r0]
	b _080096CE
	.align 2, 0
_080096BC: .4byte gUnk_02026CD8
_080096C0:
	cmp r6, #1
	bne _080096D0
	ldr r0, _080096E0 @ =gUnk_02026CD8
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
_080096CE:
	str r0, [r2]
_080096D0:
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080096E0: .4byte gUnk_02026CD8

	thumb_func_start sub_080096E4
sub_080096E4: @ 0x080096E4
	push {r4, r5, r6, r7, lr}
	adds r1, r0, #0
	movs r5, #0
	ldrh r2, [r1, #2]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080096F8
	ldrh r5, [r1, #0x2e]
	b _08009798
_080096F8:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	movs r3, #0
	cmp r0, #0
	beq _08009706
	ldrh r3, [r1, #0x16]
_08009706:
	ldrh r4, [r1, #0x18]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08009758
	ldr r6, [r1, #0x28]
	lsls r0, r3, #0x10
	lsls r4, r4, #0x10
	cmp r0, r4
	bgt _08009798
	ldr r7, _08009754 @ =0x000003E7
_0800971C:
	asrs r3, r0, #0x10
	lsls r0, r3, #3
	adds r2, r6, r0
	ldrb r1, [r2, #4]
	ldrb r0, [r2, #5]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	beq _08009798
	ldrb r0, [r2, #4]
	ldrb r1, [r2, #5]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	cmp r0, r4
	ble _0800971C
	b _08009798
	.align 2, 0
_08009754: .4byte 0x000003E7
_08009758:
	ldr r6, [r1, #0x28]
	lsls r0, r3, #0x10
	lsls r4, r4, #0x10
	cmp r0, r4
	bgt _08009798
	ldr r7, _080097A0 @ =0x000003E7
_08009764:
	asrs r3, r0, #0x10
	lsls r0, r3, #2
	adds r2, r6, r0
	ldrb r1, [r2, #4]
	ldrb r0, [r2, #5]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	beq _08009798
	ldrb r0, [r2, #4]
	ldrb r1, [r2, #5]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	cmp r0, r4
	ble _08009764
_08009798:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080097A0: .4byte 0x000003E7

	thumb_func_start sub_080097A4
sub_080097A4: @ 0x080097A4
	push {r4, r5, r6, r7, lr}
	adds r1, r0, #0
	movs r5, #0
	ldrh r3, [r1, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	movs r2, #0
	cmp r0, #0
	beq _080097BA
	ldrh r2, [r1, #0x16]
_080097BA:
	ldrh r4, [r1, #0x18]
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _0800980C
	ldr r6, [r1, #0x28]
	lsls r0, r2, #0x10
	lsls r4, r4, #0x10
	cmp r0, r4
	bgt _0800984C
	ldr r7, _08009808 @ =0x000003E7
_080097D0:
	asrs r3, r0, #0x10
	lsls r0, r3, #3
	adds r2, r6, r0
	ldrb r1, [r2, #4]
	ldrb r0, [r2, #5]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	beq _0800984C
	ldrb r0, [r2, #4]
	ldrb r1, [r2, #5]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	cmp r0, r4
	ble _080097D0
	b _0800984C
	.align 2, 0
_08009808: .4byte 0x000003E7
_0800980C:
	ldr r6, [r1, #0x28]
	lsls r0, r2, #0x10
	lsls r4, r4, #0x10
	cmp r0, r4
	bgt _0800984C
	ldr r7, _08009854 @ =0x000003E7
_08009818:
	asrs r3, r0, #0x10
	lsls r0, r3, #2
	adds r2, r6, r0
	ldrb r1, [r2, #4]
	ldrb r0, [r2, #5]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	beq _0800984C
	ldrb r0, [r2, #4]
	ldrb r1, [r2, #5]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	cmp r0, r4
	ble _08009818
_0800984C:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009854: .4byte 0x000003E7

	thumb_func_start sub_08009858
sub_08009858: @ 0x08009858
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	mov r8, r4
	bl sub_080097A4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, r5, #0
	adds r0, r4, #0
	bl sub_08009990
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080098C2
	movs r1, #0
	ldrh r0, [r4]
	cmp r0, #1
	bne _08009892
	movs r1, #1
_08009892:
	cmp r1, #0
	bne _0800989A
	cmp r3, r5
	bne _080098B4
_0800989A:
	adds r0, r4, #0
	adds r0, #0x30
	str r2, [sp]
	movs r1, #0
	movs r2, #0
	adds r3, r6, #0
	bl sub_080080A0
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldrh r1, [r4, #2]
	movs r0, #0x10
	b _080098B8
_080098B4:
	ldrh r1, [r4, #2]
	movs r0, #0x20
_080098B8:
	orrs r0, r1
	strh r0, [r4, #2]
	mov r0, r8
	strh r7, [r0, #0x2e]
	b _080098CA
_080098C2:
	ldrh r1, [r4, #2]
	ldr r0, _080098D8 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #2]
_080098CA:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080098D8: .4byte 0x0000FFEF

	thumb_func_start sub_080098DC
sub_080098DC: @ 0x080098DC
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r7, r2, #0
	movs r1, #0
	ldrh r0, [r2]
	cmp r0, #1
	bne _080098EC
	movs r1, #1
_080098EC:
	cmp r1, #0
	beq _080098F4
	movs r0, #0
	b _08009988
_080098F4:
	movs r5, #0
	ldrh r4, [r2, #2]
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _0800990A
	adds r0, r2, #0
	adds r0, #0x30
	bl sub_08008168
	b _08009982
_0800990A:
	ldrh r3, [r2, #8]
	ldrh r6, [r2, #6]
	ldrh r1, [r2, #0x18]
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _0800994A
	ldr r7, [r2, #0x28]
	lsls r3, r3, #0x10
	lsls r4, r1, #0x10
	lsls r6, r6, #0x10
	cmp r3, r4
	bgt _0800997A
_08009924:
	asrs r3, r3, #0x10
	lsls r0, r3, #3
	adds r0, r7, r0
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	lsls r1, r1, #8
	orrs r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #1
	lsls r3, r3, #0x10
	cmp r3, r4
	ble _08009924
	b _0800997A
_0800994A:
	ldr r7, [r7, #0x28]
	lsls r3, r3, #0x10
	lsls r4, r1, #0x10
	lsls r6, r6, #0x10
	cmp r3, r4
	bgt _0800997A
_08009956:
	asrs r3, r3, #0x10
	lsls r0, r3, #2
	adds r0, r7, r0
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	lsls r1, r1, #8
	orrs r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #1
	lsls r3, r3, #0x10
	cmp r3, r4
	ble _08009956
_0800997A:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	subs r0, r0, r1
_08009982:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r5, #0
_08009988:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009990
sub_08009990: @ 0x08009990
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r7, r2, #0
	movs r1, #0
	ldrh r0, [r2]
	cmp r0, #1
	bne _080099A0
	movs r1, #1
_080099A0:
	cmp r1, #0
	beq _080099A8
	movs r0, #0
	b _08009A28
_080099A8:
	movs r5, #0
	ldrh r3, [r2, #8]
	ldrh r6, [r2, #6]
	ldrh r4, [r2, #0x18]
	ldrh r1, [r2, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080099EC
	ldr r7, [r2, #0x28]
	lsls r3, r3, #0x10
	lsls r4, r4, #0x10
	lsls r6, r6, #0x10
	cmp r3, r4
	bgt _08009A1C
_080099C6:
	asrs r3, r3, #0x10
	lsls r0, r3, #3
	adds r0, r7, r0
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	lsls r1, r1, #8
	orrs r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #1
	lsls r3, r3, #0x10
	cmp r3, r4
	ble _080099C6
	b _08009A1C
_080099EC:
	ldr r7, [r7, #0x28]
	lsls r3, r3, #0x10
	lsls r4, r4, #0x10
	lsls r6, r6, #0x10
	cmp r3, r4
	bgt _08009A1C
_080099F8:
	asrs r3, r3, #0x10
	lsls r0, r3, #2
	adds r0, r7, r0
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	lsls r1, r1, #8
	orrs r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #1
	lsls r3, r3, #0x10
	cmp r3, r4
	ble _080099F8
_08009A1C:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08009A28:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009A30
sub_08009A30: @ 0x08009A30
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl sub_080096E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_08009858
	adds r0, r5, #0
	bl sub_0800A2BC
	cmp r0, #0
	bne _08009AB8
	adds r0, r5, #0
	bl sub_080098DC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	movs r6, #0
	ldrh r0, [r5]
	cmp r0, #1
	bne _08009A80
	movs r6, #1
_08009A80:
	cmp r6, #0
	bne _08009AB8
	adds r0, r5, #0
	bl sub_080098DC
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08009990
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, r7, #0
	cmp r1, r4
	beq _08009AB8
	adds r0, r5, #0
	adds r0, #0x30
	str r1, [sp]
	movs r1, #0
	movs r2, #0
	bl sub_080080A0
	strh r6, [r5, #0x2c]
	ldrh r1, [r5, #2]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r5, #2]
_08009AB8:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08009AC0
sub_08009AC0: @ 0x08009AC0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r0, #0
	ldrh r1, [r4, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08009ADC
	ldr r1, [r4, #0x28]
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #3
	b _08009AE4
_08009ADC:
	ldr r1, [r4, #0x28]
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
_08009AE4:
	adds r1, r1, r0
	ldrb r2, [r1, #2]
	ldrb r0, [r1, #3]
	lsls r3, r0, #8
	orrs r3, r2
	ldrh r1, [r4, #2]
	movs r0, #1
	ands r0, r1
	lsls r0, r3, #0x10
	ldr r1, [r4, #0x24]
	asrs r0, r0, #0xe
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r1, r0
	ldrb r2, [r1]
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r5]
	ldrb r2, [r1, #2]
	ldrb r0, [r1, #3]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009B1C
sub_08009B1C: @ 0x08009B1C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r1
	adds r4, r2, #0
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r0, #0x64
	bl sub_0800830C
	adds r3, r0, #0
	movs r0, #0
	strh r0, [r3]
	ldr r1, _08009B5C @ =gUnk_02026CE0
	movs r0, #0x8c
	muls r0, r5, r0
	adds r0, r0, r1
	ldrh r0, [r0, #8]
	cmp r0, #0
	bne _08009B60
	movs r0, #1
	b _08009B62
	.align 2, 0
_08009B5C: .4byte gUnk_02026CE0
_08009B60:
	movs r0, #2
_08009B62:
	strh r0, [r3, #2]
	ldrh r2, [r3, #2]
	movs r0, #8
	movs r1, #0
	orrs r0, r2
	orrs r0, r6
	strh r0, [r3, #2]
	strb r5, [r3, #4]
	strh r1, [r3, #6]
	strh r1, [r3, #8]
	mov r0, r8
	strh r0, [r3, #0xa]
	strh r7, [r3, #0xc]
	strh r1, [r3, #0x16]
	strh r1, [r3, #0x1e]
	strh r1, [r3, #0x20]
	mov r0, sb
	str r0, [r3, #0x24]
	str r4, [r3, #0x28]
	str r1, [r3, #0x60]
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	strh r0, [r3, #0x18]
	ldr r0, _08009BB0 @ =gUnk_02026CE0
	movs r1, #0x8c
	muls r1, r5, r1
	adds r0, #0x88
	adds r0, r1, r0
	ldr r2, [r0]
	cmp r2, #0
	bne _08009BB4
	str r3, [r0]
	str r2, [r3, #0x5c]
	b _08009BC4
	.align 2, 0
_08009BB0: .4byte gUnk_02026CE0
_08009BB4:
	adds r1, r2, #0
	b _08009BBA
_08009BB8:
	ldr r1, [r1, #0x60]
_08009BBA:
	ldr r0, [r1, #0x60]
	cmp r0, #0
	bne _08009BB8
	str r3, [r1, #0x60]
	str r1, [r3, #0x5c]
_08009BC4:
	adds r0, r3, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009BD4
sub_08009BD4: @ 0x08009BD4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r1
	adds r4, r2, #0
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r0, #0x64
	bl sub_0800830C
	adds r3, r0, #0
	movs r0, #0
	strh r0, [r3]
	ldr r1, _08009C14 @ =gUnk_02026CE0
	movs r0, #0x8c
	muls r0, r5, r0
	adds r0, r0, r1
	ldrh r0, [r0, #8]
	cmp r0, #0
	bne _08009C18
	movs r0, #1
	b _08009C1A
	.align 2, 0
_08009C14: .4byte gUnk_02026CE0
_08009C18:
	movs r0, #2
_08009C1A:
	strh r0, [r3, #2]
	ldrh r2, [r3, #2]
	movs r0, #4
	movs r1, #0
	orrs r0, r2
	orrs r0, r6
	strh r0, [r3, #2]
	strb r5, [r3, #4]
	strh r1, [r3, #6]
	strh r1, [r3, #8]
	mov r0, r8
	strh r0, [r3, #0xa]
	strh r7, [r3, #0xc]
	strh r1, [r3, #0x16]
	strh r1, [r3, #0x1e]
	strh r1, [r3, #0x20]
	mov r0, sb
	str r0, [r3, #0x24]
	str r4, [r3, #0x28]
	str r1, [r3, #0x60]
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	strh r0, [r3, #0x18]
	ldr r0, _08009C68 @ =gUnk_02026CE0
	movs r1, #0x8c
	muls r1, r5, r1
	adds r0, #0x88
	adds r0, r1, r0
	ldr r2, [r0]
	cmp r2, #0
	bne _08009C6C
	str r3, [r0]
	str r2, [r3, #0x5c]
	b _08009C7C
	.align 2, 0
_08009C68: .4byte gUnk_02026CE0
_08009C6C:
	adds r1, r2, #0
	b _08009C72
_08009C70:
	ldr r1, [r1, #0x60]
_08009C72:
	ldr r0, [r1, #0x60]
	cmp r0, #0
	bne _08009C70
	str r3, [r1, #0x60]
	str r1, [r3, #0x5c]
_08009C7C:
	adds r0, r3, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009C8C
sub_08009C8C: @ 0x08009C8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r1, [sp]
	adds r6, r2, #0
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	ldr r4, [sp, #0x30]
	ldr r5, [sp, #0x34]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #4]
	movs r0, #0x64
	bl sub_0800830C
	adds r3, r0, #0
	movs r0, #0
	strh r0, [r3]
	ldr r1, _08009CE4 @ =gUnk_02026CE0
	movs r0, #0x8c
	muls r0, r7, r0
	adds r0, r0, r1
	ldrh r0, [r0, #8]
	cmp r0, #0
	bne _08009CE8
	movs r0, #1
	b _08009CEA
	.align 2, 0
_08009CE4: .4byte gUnk_02026CE0
_08009CE8:
	movs r0, #2
_08009CEA:
	strh r0, [r3, #2]
	ldrh r1, [r3, #2]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	movs r5, #0x80
	lsls r5, r5, #5
	adds r1, r5, #0
	orrs r0, r1
	ldr r1, [sp, #4]
	orrs r0, r1
	strh r0, [r3, #2]
	strb r7, [r3, #4]
	strh r2, [r3, #6]
	strh r2, [r3, #8]
	mov r5, sl
	strh r5, [r3, #0xa]
	mov r0, sb
	strh r0, [r3, #0xc]
	mov r1, r8
	strh r1, [r3, #0x1a]
	strh r4, [r3, #0x1c]
	strh r2, [r3, #0x16]
	strh r2, [r3, #0x1e]
	strh r2, [r3, #0x20]
	ldr r5, [sp]
	str r5, [r3, #0x24]
	str r6, [r3, #0x28]
	str r2, [r3, #0x60]
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	strh r0, [r3, #0x18]
	ldr r0, _08009D4C @ =gUnk_02026CE0
	movs r1, #0x8c
	muls r1, r7, r1
	adds r0, #0x88
	adds r0, r1, r0
	ldr r2, [r0]
	cmp r2, #0
	bne _08009D50
	str r3, [r0]
	str r2, [r3, #0x5c]
	b _08009D60
	.align 2, 0
_08009D4C: .4byte gUnk_02026CE0
_08009D50:
	adds r1, r2, #0
	b _08009D56
_08009D54:
	ldr r1, [r1, #0x60]
_08009D56:
	ldr r0, [r1, #0x60]
	cmp r0, #0
	bne _08009D54
	str r3, [r1, #0x60]
	str r1, [r3, #0x5c]
_08009D60:
	adds r0, r3, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009D74
sub_08009D74: @ 0x08009D74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r1, #0
_08009D82:
	movs r0, #0x8c
	muls r0, r1, r0
	ldr r6, _08009DD8 @ =gUnk_02026CE0
	adds r5, r0, r6
	ldr r7, [r5]
	adds r0, r5, #0
	adds r0, #0x88
	ldr r4, [r0]
	adds r1, #1
	mov sl, r1
	cmp r4, #0
	bne _08009D9C
	b _08009EA2
_08009D9C:
	ldr r0, [r5, #0x14]
	str r0, [sp, #0xc]
	ldrh r2, [r5, #0x10]
	lsrs r2, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	add r0, sp, #0xc
	adds r1, r7, #0
	bl CpuFastSet
	adds r6, #0x88
	mov sb, r6
_08009DB6:
	ldr r0, [r4, #0x60]
	mov r8, r0
	ldr r0, [r4]
	ldr r1, _08009DDC @ =0x2000FFFF
	ands r0, r1
	cmp r0, #1
	beq _08009E18
	ldrh r1, [r4, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08009DE0
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08008EC0
	b _08009DE8
	.align 2, 0
_08009DD8: .4byte gUnk_02026CE0
_08009DDC: .4byte 0x2000FFFF
_08009DE0:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0800922C
_08009DE8:
	ldrh r0, [r4]
	cmp r0, #1
	bne _08009E18
	ldrh r1, [r4, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08009E18
	adds r6, r4, #0
	ldr r3, [r4, #0x5c]
	ldr r2, [r4, #0x60]
	cmp r3, #0
	beq _08009E06
	str r2, [r3, #0x60]
	b _08009E10
_08009E06:
	ldrb r1, [r4, #4]
	movs r0, #0x8c
	muls r0, r1, r0
	add r0, sb
	str r2, [r0]
_08009E10:
	str r3, [r2, #0x5c]
	adds r0, r6, #0
	bl sub_08008320
_08009E18:
	mov r4, r8
	cmp r4, #0
	bne _08009DB6
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _08009E40
	ldrh r1, [r5, #0xa]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	bne _08009E32
	movs r6, #2
	b _08009E58
_08009E32:
	movs r0, #0xc0
	lsls r0, r0, #8
	movs r6, #0
	cmp r1, r0
	bne _08009E42
	movs r6, #4
	b _08009E58
_08009E40:
	movs r6, #0
_08009E42:
	cmp r6, #0
	bne _08009E58
	adds r0, r5, #0
	adds r0, #0x18
	ldr r1, [r5]
	ldr r2, [r5, #4]
	ldrh r3, [r5, #0x10]
	lsrs r3, r3, #2
	bl sub_08000BFC
	b _08009EA2
_08009E58:
	movs r4, #0
	cmp r4, r6
	bhs _08009EA2
_08009E5E:
	lsrs r2, r4, #1
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x10
	movs r0, #1
	ands r0, r4
	lsls r0, r0, #6
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, [r5]
	adds r1, r1, r2
	lsls r0, r4, #0x1b
	lsrs r0, r0, #0x10
	ldr r2, [r5, #4]
	adds r2, r2, r0
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x18
	adds r0, r5, r0
	movs r3, #0x20
	str r3, [sp]
	movs r3, #0x80
	str r3, [sp, #4]
	movs r3, #0x40
	str r3, [sp, #8]
	movs r3, #0x10
	bl sub_08000D34
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _08009E5E
_08009EA2:
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #1
	bhi _08009EAE
	b _08009D82
_08009EAE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009EC0
sub_08009EC0: @ 0x08009EC0
	movs r1, #1
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08009EC8
sub_08009EC8: @ 0x08009EC8
	push {r4, lr}
	movs r4, #0
_08009ECC:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_08009EE4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #1
	bls _08009ECC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08009EE4
sub_08009EE4: @ 0x08009EE4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08009F08 @ =gUnk_02026CE0
	movs r2, #0x8c
	muls r0, r2, r0
	adds r1, #0x88
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08009F04
	movs r2, #1
_08009EFA:
	ldr r0, [r1, #0x60]
	strh r2, [r1]
	adds r1, r0, #0
	cmp r1, #0
	bne _08009EFA
_08009F04:
	bx lr
	.align 2, 0
_08009F08: .4byte gUnk_02026CE0

	thumb_func_start sub_08009F0C
sub_08009F0C: @ 0x08009F0C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #6]
	strh r0, [r4]
	ldrh r1, [r4, #2]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08009F34
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	adds r0, r4, #0
	bl sub_08009858
	ldrh r1, [r4, #2]
	ldr r0, _08009F3C @ =0x0000FFDF
	ands r0, r1
	strh r0, [r4, #2]
_08009F34:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009F3C: .4byte 0x0000FFDF

	thumb_func_start sub_08009F40
sub_08009F40: @ 0x08009F40
	adds r1, r0, #0
	ldrh r0, [r1]
	cmp r0, #0
	bne _08009F4C
	movs r0, #2
	strh r0, [r1]
_08009F4C:
	bx lr
	.align 2, 0

	thumb_func_start sub_08009F50
sub_08009F50: @ 0x08009F50
	push {r4, lr}
	movs r4, #0
_08009F54:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_08009F6C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #1
	bls _08009F54
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08009F6C
sub_08009F6C: @ 0x08009F6C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08009F94 @ =gUnk_02026CE0
	movs r2, #0x8c
	muls r0, r2, r0
	adds r1, #0x88
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08009F92
	movs r3, #2
_08009F82:
	ldr r2, [r1, #0x60]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08009F8C
	strh r3, [r1]
_08009F8C:
	adds r1, r2, #0
	cmp r1, #0
	bne _08009F82
_08009F92:
	bx lr
	.align 2, 0
_08009F94: .4byte gUnk_02026CE0

	thumb_func_start sub_08009F98
sub_08009F98: @ 0x08009F98
	adds r1, r0, #0
	ldrh r0, [r1]
	cmp r0, #2
	bne _08009FA4
	movs r0, #0
	strh r0, [r1]
_08009FA4:
	bx lr
	.align 2, 0

	thumb_func_start sub_08009FA8
sub_08009FA8: @ 0x08009FA8
	push {r4, lr}
	movs r4, #0
_08009FAC:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_08009FC4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #1
	bls _08009FAC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08009FC4
sub_08009FC4: @ 0x08009FC4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08009FEC @ =gUnk_02026CE0
	movs r2, #0x8c
	muls r0, r2, r0
	adds r1, #0x88
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08009FEA
	movs r3, #0
_08009FDA:
	ldr r2, [r1, #0x60]
	ldrh r0, [r1]
	cmp r0, #2
	bne _08009FE4
	strh r3, [r1]
_08009FE4:
	adds r1, r2, #0
	cmp r1, #0
	bne _08009FDA
_08009FEA:
	bx lr
	.align 2, 0
_08009FEC: .4byte gUnk_02026CE0

	thumb_func_start sub_08009FF0
sub_08009FF0: @ 0x08009FF0
	push {r4, lr}
	ldrh r3, [r0, #2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r4, #0
	orrs r2, r3
	strh r2, [r0, #2]
	strh r1, [r0, #0x16]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A008
sub_0800A008: @ 0x0800A008
	ldrh r2, [r0, #2]
	ldr r1, _0800A014 @ =0x0000FEFF
	ands r1, r2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0800A014: .4byte 0x0000FEFF

	thumb_func_start sub_0800A018
sub_0800A018: @ 0x0800A018
	adds r2, r0, #0
	cmp r1, #0
	beq _0800A02A
	ldrh r1, [r2, #2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	b _0800A030
_0800A02A:
	ldrh r1, [r2, #2]
	ldr r0, _0800A034 @ =0x0000DFFF
	ands r0, r1
_0800A030:
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0800A034: .4byte 0x0000DFFF

	thumb_func_start sub_0800A038
sub_0800A038: @ 0x0800A038
	strh r1, [r0, #0x18]
	bx lr

	thumb_func_start sub_0800A03C
sub_0800A03C: @ 0x0800A03C
	movs r2, #0
	strh r1, [r0, #8]
	strh r2, [r0, #6]
	bx lr

	thumb_func_start sub_0800A044
sub_0800A044: @ 0x0800A044
	strh r1, [r0, #0xa]
	strh r2, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A04C
sub_0800A04C: @ 0x0800A04C
	str r1, [r0, #0x24]
	bx lr

	thumb_func_start sub_0800A050
sub_0800A050: @ 0x0800A050
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r1, [r3, #2]
	movs r0, #8
	ands r0, r1
	str r2, [r3, #0x28]
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	strh r0, [r3, #0x18]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A070
sub_0800A070: @ 0x0800A070
	adds r2, r0, #0
	cmp r1, #0
	beq _0800A082
	ldrh r1, [r2, #2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r0, r1
	b _0800A088
_0800A082:
	ldrh r1, [r2, #2]
	ldr r0, _0800A08C @ =0x0000FBFF
	ands r0, r1
_0800A088:
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0800A08C: .4byte 0x0000FBFF

	thumb_func_start sub_0800A090
sub_0800A090: @ 0x0800A090
	adds r2, r0, #0
	cmp r1, #0
	beq _0800A0A2
	ldrh r1, [r2, #2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	b _0800A0A8
_0800A0A2:
	ldrh r1, [r2, #2]
	ldr r0, _0800A0AC @ =0x0000F7FF
	ands r0, r1
_0800A0A8:
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0800A0AC: .4byte 0x0000F7FF

	thumb_func_start sub_0800A0B0
sub_0800A0B0: @ 0x0800A0B0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	mov r5, sp
	mov r0, sp
	adds r0, #2
	ldrh r1, [r4]
	adds r6, r0, #0
	cmp r1, #1
	bne _0800A0CA
	movs r0, #0
	strh r0, [r5]
	b _0800A102
_0800A0CA:
	adds r0, r4, #0
	add r1, sp, #4
	mov r2, sp
	adds r2, #6
	bl sub_08008E2C
	add r0, sp, #4
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge _0800A0E4
	adds r0, r1, #7
_0800A0E4:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r0, r1
	strh r0, [r5]
	mov r0, sp
	adds r0, #6
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge _0800A0FC
	adds r0, r1, #7
_0800A0FC:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r0, r1
_0800A102:
	strh r0, [r6]
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0
	ldrsh r2, [r6, r0]
	adds r0, r4, #0
	bl sub_08008D58
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800A11C
sub_0800A11C: @ 0x0800A11C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r6, #0
	ldrh r0, [r5]
	cmp r0, #1
	bne _0800A130
	movs r6, #1
_0800A130:
	cmp r6, #0
	bne _0800A16A
	adds r0, r5, #0
	bl sub_080098DC
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08009990
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	cmp r1, r4
	beq _0800A16A
	adds r0, r5, #0
	adds r0, #0x30
	str r1, [sp]
	movs r1, #0
	movs r2, #0
	bl sub_080080A0
	strh r6, [r5, #0x2c]
	ldrh r1, [r5, #2]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r5, #2]
_0800A16A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A174
sub_0800A174: @ 0x0800A174
	adds r2, r0, #0
	cmp r1, #0
	beq _0800A182
	ldrh r1, [r2, #2]
	movs r0, #0x40
	orrs r0, r1
	b _0800A188
_0800A182:
	ldrh r1, [r2, #2]
	ldr r0, _0800A18C @ =0x0000FFBF
	ands r0, r1
_0800A188:
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0800A18C: .4byte 0x0000FFBF

	thumb_func_start sub_0800A190
sub_0800A190: @ 0x0800A190
	adds r2, r0, #0
	cmp r1, #0
	beq _0800A1A2
	ldrh r1, [r2, #2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	b _0800A1A8
_0800A1A2:
	ldrh r1, [r2, #2]
	ldr r0, _0800A1AC @ =0x0000FDFF
	ands r0, r1
_0800A1A8:
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0800A1AC: .4byte 0x0000FDFF

	thumb_func_start sub_0800A1B0
sub_0800A1B0: @ 0x0800A1B0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0800A1C0 @ =gUnk_02026CE0
	movs r1, #0x8c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0, #8]
	bx lr
	.align 2, 0
_0800A1C0: .4byte gUnk_02026CE0

	thumb_func_start sub_0800A1C4
sub_0800A1C4: @ 0x0800A1C4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0800A1D4 @ =gUnk_02026CE0
	movs r1, #0x8c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0xa]
	bx lr
	.align 2, 0
_0800A1D4: .4byte gUnk_02026CE0

	thumb_func_start sub_0800A1D8
sub_0800A1D8: @ 0x0800A1D8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0800A1E8 @ =gUnk_02026CE0
	movs r1, #0x8c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0x12]
	bx lr
	.align 2, 0
_0800A1E8: .4byte gUnk_02026CE0

	thumb_func_start sub_0800A1EC
sub_0800A1EC: @ 0x0800A1EC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0800A1FC @ =gUnk_02026CE0
	movs r1, #0x8c
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800A1FC: .4byte gUnk_02026CE0

	thumb_func_start sub_0800A200
sub_0800A200: @ 0x0800A200
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0800A210 @ =gUnk_02026CE0
	movs r1, #0x8c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	bx lr
	.align 2, 0
_0800A210: .4byte gUnk_02026CE0

	thumb_func_start sub_0800A214
sub_0800A214: @ 0x0800A214
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0800A224 @ =gUnk_02026CE0
	movs r1, #0x8c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0xe]
	bx lr
	.align 2, 0
_0800A224: .4byte gUnk_02026CE0

	thumb_func_start sub_0800A228
sub_0800A228: @ 0x0800A228
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_0800A22C
sub_0800A22C: @ 0x0800A22C
	adds r1, r0, #0
	ldrh r0, [r1]
	cmp r0, #1
	beq _0800A23A
	movs r2, #8
	ldrsh r0, [r1, r2]
	b _0800A23E
_0800A23A:
	movs r0, #1
	rsbs r0, r0, #0
_0800A23E:
	bx lr

	thumb_func_start sub_0800A240
sub_0800A240: @ 0x0800A240
	adds r2, r0, #0
	ldrh r1, [r2, #2]
	movs r0, #8
	ands r0, r1
	ldr r0, [r2, #0x28]
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r0, r1
	bx lr

	thumb_func_start sub_0800A254
sub_0800A254: @ 0x0800A254
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r3, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldrh r0, [r3]
	cmp r0, #1
	bne _0800A26A
	movs r0, #0
	strh r0, [r5]
	b _0800A2A0
_0800A26A:
	mov r4, sp
	adds r4, #2
	adds r0, r3, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_08008E2C
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge _0800A286
	adds r0, r1, #7
_0800A286:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r0, r1
	strh r0, [r5]
	movs r0, #0
	ldrsh r2, [r4, r0]
	adds r0, r2, #0
	cmp r2, #0
	bge _0800A29A
	adds r0, r2, #7
_0800A29A:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r0, r2
_0800A2A0:
	strh r0, [r6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A2AC
sub_0800A2AC: @ 0x0800A2AC
	movs r1, #0
	ldrh r0, [r0]
	cmp r0, #1
	bne _0800A2B6
	movs r1, #1
_0800A2B6:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A2BC
sub_0800A2BC: @ 0x0800A2BC
	adds r1, r0, #0
	movs r2, #0
	ldrh r0, [r1]
	cmp r0, #1
	bne _0800A2C8
	movs r2, #1
_0800A2C8:
	cmp r2, #0
	bne _0800A2DC
	movs r2, #8
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0800A2E0
	movs r2, #6
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0800A2E0
_0800A2DC:
	movs r0, #1
	b _0800A2E2
_0800A2E0:
	movs r0, #0
_0800A2E2:
	bx lr

	thumb_func_start sub_0800A2E4
sub_0800A2E4: @ 0x0800A2E4
	strh r1, [r0, #0x1e]
	bx lr

	thumb_func_start sub_0800A2E8
sub_0800A2E8: @ 0x0800A2E8
	strh r1, [r0, #0x20]
	bx lr

	thumb_func_start sub_0800A2EC
sub_0800A2EC: @ 0x0800A2EC
	push {r4, lr}
	movs r4, #0
_0800A2F0:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0800A308
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #1
	bls _0800A2F0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800A308
sub_0800A308: @ 0x0800A308
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _0800A340 @ =gUnk_02026CE0
	movs r0, #0x8c
	muls r0, r5, r0
	adds r1, #0x88
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0800A32A
_0800A31E:
	ldr r4, [r0, #0x60]
	bl sub_08008320
	adds r0, r4, #0
	cmp r0, #0
	bne _0800A31E
_0800A32A:
	ldr r0, _0800A340 @ =gUnk_02026CE0
	movs r1, #0x8c
	muls r1, r5, r1
	adds r0, #0x88
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A340: .4byte gUnk_02026CE0

	thumb_func_start sub_0800A344
sub_0800A344: @ 0x0800A344
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0
	beq _0800A36E
	ldr r4, [r5, #0x5c]
	ldr r3, [r5, #0x60]
	cmp r4, #0
	beq _0800A358
	str r3, [r4, #0x60]
	b _0800A366
_0800A358:
	ldr r1, _0800A374 @ =gUnk_02026CE0
	ldrb r2, [r5, #4]
	movs r0, #0x8c
	muls r0, r2, r0
	adds r1, #0x88
	adds r0, r0, r1
	str r3, [r0]
_0800A366:
	str r4, [r3, #0x5c]
	adds r0, r5, #0
	bl sub_08008320
_0800A36E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A374: .4byte gUnk_02026CE0

	thumb_func_start sub_0800A378
sub_0800A378: @ 0x0800A378
	push {r4, lr}
	ldr r4, _0800A398 @ =gUnk_02026CD8
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_0800830C
	str r0, [r4]
	ldr r0, _0800A39C @ =gUnk_02026CE0
	movs r1, #0x8c
	lsls r1, r1, #1
	bl memzero
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A398: .4byte gUnk_02026CD8
_0800A39C: .4byte gUnk_02026CE0

	thumb_func_start sub_0800A3A0
sub_0800A3A0: @ 0x0800A3A0
	push {r4, r5, r6, lr}
	movs r1, #0
	ldr r6, _0800A3D8 @ =gUnk_02026D68
_0800A3A6:
	movs r0, #0x8c
	muls r0, r1, r0
	adds r0, r0, r6
	ldr r0, [r0]
	adds r5, r1, #1
	cmp r0, #0
	beq _0800A3C0
_0800A3B4:
	ldr r4, [r0, #0x60]
	bl sub_08008320
	adds r0, r4, #0
	cmp r0, #0
	bne _0800A3B4
_0800A3C0:
	lsls r0, r5, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #1
	bls _0800A3A6
	ldr r0, _0800A3DC @ =gUnk_02026CD8
	ldr r0, [r0]
	bl sub_08008320
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A3D8: .4byte gUnk_02026D68
_0800A3DC: .4byte gUnk_02026CD8

	thumb_func_start sub_0800A3E0
sub_0800A3E0: @ 0x0800A3E0
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A3E4
sub_0800A3E4: @ 0x0800A3E4
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A3E8
sub_0800A3E8: @ 0x0800A3E8
	push {r4, r5, r6, r7, lr}
	ldrh r1, [r0, #0x10]
	ldr r2, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1]
	adds r6, r2, r0
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	orrs r0, r1
	movs r1, #0
	lsls r5, r0, #0x10
	movs r4, #0
	cmp r5, #0
	ble _0800A442
	ldr r7, _0800A44C @ =0x000003E7
_0800A40A:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	lsls r0, r2, #2
	adds r3, r6, r0
	ldrb r1, [r3, #4]
	ldrb r0, [r3, #5]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	beq _0800A442
	ldrb r0, [r3, #4]
	ldrb r1, [r3, #5]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, r5
	blt _0800A40A
_0800A442:
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800A44C: .4byte 0x000003E7

	thumb_func_start sub_0800A450
sub_0800A450: @ 0x0800A450
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800A464
	movs r0, #0
	b _0800A4CE
_0800A464:
	ldrh r0, [r2, #0x10]
	ldr r1, [r2, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r5, r1, r0
	movs r6, #0
	ldrh r0, [r2, #0x14]
	mov ip, r0
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r2, #0x12]
	lsls r1, r1, #0x10
	lsls r4, r0, #0x10
	cmp r1, r4
	bge _0800A4BE
	ldr r7, _0800A4D4 @ =0x000003E7
_0800A48A:
	asrs r3, r1, #0x10
	lsls r0, r3, #2
	adds r2, r5, r0
	ldrb r1, [r2, #4]
	ldrb r0, [r2, #5]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	beq _0800A4BE
	ldrb r0, [r2, #4]
	ldrb r1, [r2, #5]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r3, #1
	lsls r1, r0, #0x10
	cmp r1, r4
	blt _0800A48A
_0800A4BE:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0800A4CE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800A4D4: .4byte 0x000003E7

	thumb_func_start sub_0800A4D8
sub_0800A4D8: @ 0x0800A4D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r4, [sp, #0x30]
	ldr r5, [sp, #0x34]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r2, #0
	ldr r0, _0800A520 @ =gUnk_02026DF8
	ldr r1, [r0]
_0800A514:
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800A524
	adds r4, r1, #0
	b _0800A52E
	.align 2, 0
_0800A520: .4byte gUnk_02026DF8
_0800A524:
	adds r1, #0x48
	adds r2, #1
	cmp r2, #0x3f
	ble _0800A514
	movs r4, #0
_0800A52E:
	adds r0, r4, #0
	movs r1, #0x48
	bl memzero
	ldr r0, [sp]
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	str r0, [r4, #0xc]
	movs r1, #0
	movs r2, #0
	strh r6, [r4, #0x10]
	ldr r0, _0800A59C @ =0x0000FFFF
	strh r0, [r4, #0x14]
	mov r0, sl
	strb r0, [r4, #0x1c]
	mov r0, sb
	strh r0, [r4, #0x1e]
	mov r0, r8
	strh r0, [r4, #0x20]
	strh r7, [r4, #0x22]
	adds r0, r4, #0
	adds r0, #0x28
	strb r5, [r0]
	ldr r0, [sp, #0x38]
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x3c]
	str r0, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x3a]
	strh r0, [r4, #0x3c]
	strh r2, [r4, #0x3e]
	adds r0, r4, #0
	adds r0, #0x44
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x43
	movs r1, #1
	strb r1, [r0]
	subs r0, #3
	strh r2, [r0]
	strb r1, [r4]
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800A59C: .4byte 0x0000FFFF

	thumb_func_start sub_0800A5A0
sub_0800A5A0: @ 0x0800A5A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r0, #1
	mov r8, r0
	adds r1, r3, #0
	adds r1, #0x44
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	subs r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bhi _0800A5D0
	ldrh r1, [r3, #2]
	ldr r0, _0800A5CC @ =0x0000FFFD
	ands r0, r1
	b _0800A5D6
	.align 2, 0
_0800A5CC: .4byte 0x0000FFFD
_0800A5D0:
	ldrh r1, [r3, #2]
	movs r0, #2
	orrs r0, r1
_0800A5D6:
	strh r0, [r3, #2]
	adds r4, r3, #0
	adds r4, #0x44
	ldrb r0, [r4]
	adds r1, r3, #0
	adds r1, #0x42
	ldrb r1, [r1]
	adds r2, r3, #0
	adds r2, #0x43
	ldrb r2, [r2]
	adds r1, r1, r2
	cmp r0, r1
	bne _0800A5F4
	movs r0, #0
	strb r0, [r4]
_0800A5F4:
	ldr r2, [r3, #0xc]
	cmp r2, #0
	bne _0800A5FC
	b _0800A754
_0800A5FC:
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _0800A604
	b _0800A754
_0800A604:
	ldrh r1, [r3, #2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	mov ip, r1
	cmp r0, #0
	beq _0800A614
	b _0800A754
_0800A614:
	ldrh r0, [r3, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r4, r2, r0
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0xe
	subs r0, #4
	adds r0, r4, r0
	ldrb r1, [r0, #4]
	ldrb r0, [r0, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldr r1, _0800A650 @ =0x000003E7
	cmp r0, r1
	bne _0800A658
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	ldr r1, _0800A654 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	b _0800A660
	.align 2, 0
_0800A650: .4byte 0x000003E7
_0800A654: .4byte 0xFFFF0000
_0800A658:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
_0800A660:
	adds r7, r0, #0
	movs r2, #0x12
	ldrsh r1, [r3, r2]
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	cmp r1, r5
	blt _0800A672
	movs r0, #0
	strh r0, [r3, #0x12]
_0800A672:
	movs r0, #0x12
	ldrsh r2, [r3, r0]
	mov r6, ip
	movs r0, #0x20
	ands r0, r6
	cmp r0, #0
	beq _0800A684
	subs r0, r5, r2
	subs r2, r0, #1
_0800A684:
	ldrh r1, [r3, #0x14]
	adds r1, #1
	strh r1, [r3, #0x14]
	lsls r0, r2, #2
	adds r0, r4, r0
	ldrb r2, [r0, #4]
	ldrb r0, [r0, #5]
	lsls r0, r0, #8
	orrs r0, r2
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	blt _0800A754
	movs r0, #0
	strh r0, [r3, #0x14]
	ldrh r0, [r3, #0x12]
	adds r0, #1
	strh r0, [r3, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	blt _0800A754
	movs r5, #0
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r6
	cmp r0, #0
	bne _0800A71C
	movs r0, #0x80
	lsls r0, r0, #7
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _0800A6F0
	adds r1, r3, #0
	adds r1, #0x40
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0800A6DA
	subs r0, r2, #1
	strh r0, [r1]
_0800A6DA:
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0800A710
	ldrh r1, [r3, #2]
	ldr r0, _0800A6EC @ =0x0000BFFF
	ands r0, r1
	strh r0, [r3, #2]
	b _0800A71C
	.align 2, 0
_0800A6EC: .4byte 0x0000BFFF
_0800A6F0:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0xe
	subs r0, #4
	adds r0, r4, r0
	ldrb r1, [r0, #4]
	ldrb r0, [r0, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldr r1, _0800A718 @ =0x000003E7
	cmp r0, r1
	beq _0800A710
	movs r5, #1
_0800A710:
	cmp r5, #0
	bne _0800A71C
	strh r5, [r3, #0x12]
	b _0800A754
	.align 2, 0
_0800A718: .4byte 0x000003E7
_0800A71C:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	movs r2, #0
	strh r0, [r3, #0x12]
	ldrh r1, [r3, #2]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r4, #0
	orrs r1, r0
	orrs r1, r2
	strh r1, [r3, #2]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800A744
	movs r0, #0x10
	orrs r1, r0
	strh r1, [r3, #2]
_0800A744:
	ldrh r1, [r3, #2]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0800A754
	movs r0, #0
	mov r8, r0
_0800A754:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800A760
sub_0800A760: @ 0x0800A760
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x18
	ldr r2, [r5, #8]
	cmp r2, #0
	bne _0800A774
	ldr r0, [r5, #4]
	str r0, [r5, #0x18]
	b _0800A802
_0800A774:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bne _0800A788
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r2, r0
	str r0, [r5, #0x18]
	b _0800A802
_0800A788:
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r4, r1, r0
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0xe
	subs r0, #4
	adds r0, r4, r0
	ldrb r1, [r0, #4]
	ldrb r0, [r0, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldr r1, _0800A7C4 @ =0x000003E7
	cmp r0, r1
	bne _0800A7CC
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	ldr r1, _0800A7C8 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	b _0800A7D4
	.align 2, 0
_0800A7C4: .4byte 0x000003E7
_0800A7C8: .4byte 0xFFFF0000
_0800A7CC:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r2, r0, #8
	orrs r2, r1
_0800A7D4:
	movs r0, #0x12
	ldrsh r3, [r5, r0]
	ldrh r1, [r5, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800A7EA
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	subs r3, r0, #1
_0800A7EA:
	lsls r0, r3, #2
	adds r0, r4, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r1
	ldr r1, [r5, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r6]
_0800A802:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800A808
sub_0800A808: @ 0x0800A808
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r3, [r5]
	cmp r3, #0x3f
	bgt _0800A860
	ldr r0, _0800A850 @ =gUnk_02026DF8
	ldr r6, [r0]
_0800A816:
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r4, r0, r6
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800A854
	ldrh r1, [r4, #2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800A854
	movs r0, #1
	ands r0, r1
	movs r2, #1
	cmp r0, #0
	beq _0800A844
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
_0800A844:
	cmp r2, #0
	beq _0800A854
	adds r0, r3, #1
	str r0, [r5]
	adds r0, r4, #0
	b _0800A862
	.align 2, 0
_0800A850: .4byte gUnk_02026DF8
_0800A854:
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	adds r3, r0, #0
	cmp r3, #0x3f
	ble _0800A816
_0800A860:
	movs r0, #0
_0800A862:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0800A868
sub_0800A868: @ 0x0800A868
	push {lr}
	adds r2, r0, #0
	adds r0, r1, #0
	adds r2, #0x18
	adds r1, r2, #0
	movs r2, #0x28
	bl memcpy2
	pop {r0}
	bx r0

	thumb_func_start sub_0800A87C
sub_0800A87C: @ 0x0800A87C
	adds r0, #0x18
	bx lr

	thumb_func_start sub_0800A880
sub_0800A880: @ 0x0800A880
	ldrh r1, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A890
sub_0800A890: @ 0x0800A890
	ldrh r0, [r0, #0x10]
	bx lr

	thumb_func_start sub_0800A894
sub_0800A894: @ 0x0800A894
	movs r2, #0
	strh r1, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	ldrh r2, [r0, #2]
	ldr r1, _0800A8A8 @ =0x00007FFF
	ands r1, r2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0800A8A8: .4byte 0x00007FFF

	thumb_func_start sub_0800A8AC
sub_0800A8AC: @ 0x0800A8AC
	ldrb r0, [r0, #0x1c]
	bx lr

	thumb_func_start sub_0800A8B0
sub_0800A8B0: @ 0x0800A8B0
	push {r4, lr}
	ldrh r4, [r0, #0x1e]
	strh r4, [r1]
	ldrh r1, [r0, #0x20]
	strh r1, [r2]
	ldrh r1, [r0, #0x22]
	strh r1, [r3]
	ldrb r0, [r0, #0x1c]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800A8C8
sub_0800A8C8: @ 0x0800A8C8
	strh r1, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r3, [r0, #0x22]
	bx lr

	thumb_func_start sub_0800A8D0
sub_0800A8D0: @ 0x0800A8D0
	strh r1, [r0, #0x24]
	bx lr

	thumb_func_start sub_0800A8D4
sub_0800A8D4: @ 0x0800A8D4
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A8DC
sub_0800A8DC: @ 0x0800A8DC
	adds r2, r0, #0
	lsls r1, r1, #0x10
	cmp r1, #0
	beq _0800A8EC
	ldrh r1, [r2, #2]
	movs r0, #0x40
	orrs r0, r1
	b _0800A8F2
_0800A8EC:
	ldrh r1, [r2, #2]
	ldr r0, _0800A8F8 @ =0x0000FFBF
	ands r0, r1
_0800A8F2:
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0800A8F8: .4byte 0x0000FFBF

	thumb_func_start sub_0800A8FC
sub_0800A8FC: @ 0x0800A8FC
	ldrh r1, [r0, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0800A90A
	movs r0, #0
	b _0800A90C
_0800A90A:
	movs r0, #1
_0800A90C:
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A910
sub_0800A910: @ 0x0800A910
	adds r0, #0x28
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A918
sub_0800A918: @ 0x0800A918
	adds r0, #0x26
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A920
sub_0800A920: @ 0x0800A920
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	beq _0800A932
	adds r1, r0, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
	b _0800A936
_0800A932:
	adds r0, #0x27
	strb r1, [r0]
_0800A936:
	bx lr

	thumb_func_start sub_0800A938
sub_0800A938: @ 0x0800A938
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	beq _0800A94A
	adds r1, r0, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	b _0800A94E
_0800A94A:
	adds r0, #0x29
	strb r1, [r0]
_0800A94E:
	bx lr

	thumb_func_start sub_0800A950
sub_0800A950: @ 0x0800A950
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	beq _0800A962
	adds r1, r0, #0
	adds r1, #0x2a
	movs r0, #1
	strb r0, [r1]
	b _0800A966
_0800A962:
	adds r0, #0x2a
	strb r1, [r0]
_0800A966:
	bx lr

	thumb_func_start sub_0800A968
sub_0800A968: @ 0x0800A968
	str r1, [r0, #0x2c]
	bx lr

	thumb_func_start sub_0800A96C
sub_0800A96C: @ 0x0800A96C
	adds r0, #0x30
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A974
sub_0800A974: @ 0x0800A974
	str r1, [r0, #0x34]
	bx lr

	thumb_func_start sub_0800A978
sub_0800A978: @ 0x0800A978
	adds r2, r0, #0
	lsls r1, r1, #0x10
	cmp r1, #0
	beq _0800A98C
	ldrh r1, [r2, #2]
	ldr r0, _0800A988 @ =0x0000FFEF
	ands r0, r1
	b _0800A992
	.align 2, 0
_0800A988: .4byte 0x0000FFEF
_0800A98C:
	ldrh r1, [r2, #2]
	movs r0, #0x10
	orrs r0, r1
_0800A992:
	strh r0, [r2, #2]
	ldrh r1, [r2, #2]
	ldr r0, _0800A9A0 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0800A9A0: .4byte 0x0000F7FF

	thumb_func_start sub_0800A9A4
sub_0800A9A4: @ 0x0800A9A4
	ldrh r1, [r0, #2]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_0800A9B0
sub_0800A9B0: @ 0x0800A9B0
	ldrh r2, [r0, #2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A9C0
sub_0800A9C0: @ 0x0800A9C0
	ldrh r2, [r0, #2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A9D0
sub_0800A9D0: @ 0x0800A9D0
	adds r2, r0, #0
	lsls r1, r1, #0x10
	cmp r1, #0
	beq _0800A9E0
	ldrh r1, [r2, #2]
	movs r0, #1
	orrs r0, r1
	b _0800A9E6
_0800A9E0:
	ldrh r1, [r2, #2]
	ldr r0, _0800A9EC @ =0x0000FFFE
	ands r0, r1
_0800A9E6:
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0800A9EC: .4byte 0x0000FFFE

	thumb_func_start sub_0800A9F0
sub_0800A9F0: @ 0x0800A9F0
	mov ip, r0
	adds r0, #0x42
	movs r3, #0
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r3, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800AA04
sub_0800AA04: @ 0x0800AA04
	push {r4, lr}
	lsls r1, r1, #0x10
	adds r2, r0, #0
	lsrs r3, r1, #0x10
	cmp r1, #0
	bne _0800AA1C
	ldrh r1, [r2, #2]
	ldr r0, _0800AA18 @ =0x0000BFFF
	ands r0, r1
	b _0800AA26
	.align 2, 0
_0800AA18: .4byte 0x0000BFFF
_0800AA1C:
	ldrh r1, [r2, #2]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r4, #0
	orrs r0, r1
_0800AA26:
	strh r0, [r2, #2]
	adds r0, r2, #0
	adds r0, #0x40
	strh r3, [r0]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800AA34
sub_0800AA34: @ 0x0800AA34
	adds r2, r0, #0
	lsls r1, r1, #0x10
	cmp r1, #0
	beq _0800AA50
	ldrh r0, [r2, #2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r1, r0
	ldr r0, _0800AA4C @ =0x0000BFFF
	ands r1, r0
	b _0800AA5E
	.align 2, 0
_0800AA4C: .4byte 0x0000BFFF
_0800AA50:
	ldrh r0, [r2, #2]
	ldr r1, _0800AA64 @ =0x0000DFFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r1, r0
_0800AA5E:
	strh r1, [r2, #2]
	bx lr
	.align 2, 0
_0800AA64: .4byte 0x0000DFFF

	thumb_func_start sub_0800AA68
sub_0800AA68: @ 0x0800AA68
	strb r1, [r0, #0x1d]
	bx lr

	thumb_func_start sub_0800AA6C
sub_0800AA6C: @ 0x0800AA6C
	strh r1, [r0, #0x3a]
	strh r2, [r0, #0x3c]
	strh r3, [r0, #0x3e]
	bx lr

	thumb_func_start sub_0800AA74
sub_0800AA74: @ 0x0800AA74
	adds r0, #0x38
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800AA7C
sub_0800AA7C: @ 0x0800AA7C
	adds r2, r0, #0
	ldrh r1, [r2, #2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800AA9A
	movs r1, #0x12
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _0800AA9E
	movs r1, #0x14
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _0800AA9E
_0800AA9A:
	movs r0, #1
	b _0800AAA0
_0800AA9E:
	movs r0, #0
_0800AAA0:
	bx lr
	.align 2, 0

	thumb_func_start sub_0800AAA4
sub_0800AAA4: @ 0x0800AAA4
	adds r2, r0, #0
	lsls r1, r1, #0x10
	cmp r1, #0
	beq _0800AAB4
	ldrh r1, [r2, #2]
	movs r0, #0x20
	orrs r0, r1
	b _0800AABA
_0800AAB4:
	ldrh r1, [r2, #2]
	ldr r0, _0800AAC0 @ =0x0000FFDF
	ands r0, r1
_0800AABA:
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0800AAC0: .4byte 0x0000FFDF

	thumb_func_start sub_0800AAC4
sub_0800AAC4: @ 0x0800AAC4
	str r1, [r0, #4]
	bx lr

	thumb_func_start sub_0800AAC8
sub_0800AAC8: @ 0x0800AAC8
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800AAD0
sub_0800AAD0: @ 0x0800AAD0
	push {r4, r5, lr}
	ldr r5, _0800AAEC @ =gUnk_02026DF8
	movs r4, #0x90
	lsls r4, r4, #5
	adds r0, r4, #0
	bl sub_0800830C
	str r0, [r5]
	adds r1, r4, #0
	bl memzero
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AAEC: .4byte gUnk_02026DF8

	thumb_func_start sub_0800AAF0
sub_0800AAF0: @ 0x0800AAF0
	push {r4, lr}
	ldr r4, _0800AB04 @ =gUnk_02026DF8
	ldr r0, [r4]
	bl sub_08008320
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB04: .4byte gUnk_02026DF8

	thumb_func_start sub_0800AB08
sub_0800AB08: @ 0x0800AB08
	push {r4, r5, lr}
	ldr r0, _0800AB38 @ =gUnk_02026DF8
	ldr r4, [r0]
	movs r5, #0x40
_0800AB10:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800AB28
	adds r0, r4, #0
	bl sub_0800A5A0
	cmp r0, #0
	bne _0800AB22
	strb r0, [r4]
_0800AB22:
	adds r0, r4, #0
	bl sub_0800A760
_0800AB28:
	adds r4, #0x48
	subs r5, #1
	cmp r5, #0
	bgt _0800AB10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB38: .4byte gUnk_02026DF8

	thumb_func_start sub_0800AB3C
sub_0800AB3C: @ 0x0800AB3C
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800AB44
sub_0800AB44: @ 0x0800AB44
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r5, #0
	cmp r5, r1
	bge _0800AB78
	movs r7, #0x80
	lsls r7, r7, #8
	movs r6, #0
	adds r3, r0, #0
	adds r4, r1, #0
_0800AB5A:
	ldr r2, [r3]
	cmp r2, #0
	beq _0800AB6E
	ldrh r1, [r2, #2]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0800AB70
	strb r6, [r2]
	str r6, [r3]
_0800AB6E:
	adds r5, #1
_0800AB70:
	adds r3, #4
	subs r4, #1
	cmp r4, #0
	bne _0800AB5A
_0800AB78:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800AB80
sub_0800AB80: @ 0x0800AB80
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0
	beq _0800AB9C
	movs r3, #0
_0800AB8A:
	ldr r2, [r0]
	cmp r2, #0
	beq _0800AB94
	strb r3, [r2]
	str r3, [r0]
_0800AB94:
	adds r0, #4
	subs r1, #1
	cmp r1, #0
	bne _0800AB8A
_0800AB9C:
	bx lr
	.align 2, 0

	thumb_func_start sub_0800ABA0
sub_0800ABA0: @ 0x0800ABA0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	cmp r3, r1
	bge _0800ABC0
	adds r2, r0, #0
_0800ABAC:
	ldr r0, [r2]
	cmp r0, #0
	bne _0800ABB8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	b _0800ABC4
_0800ABB8:
	adds r2, #4
	adds r3, #1
	cmp r3, r1
	blt _0800ABAC
_0800ABC0:
	movs r0, #1
	rsbs r0, r0, #0
_0800ABC4:
	bx lr
	.align 2, 0

	thumb_func_start sub_0800ABC8
sub_0800ABC8: @ 0x0800ABC8
	bx lr
	.align 2, 0

	thumb_func_start sub_0800ABCC
sub_0800ABCC: @ 0x0800ABCC
	bx lr
	.align 2, 0

	thumb_func_start sub_0800ABD0
sub_0800ABD0: @ 0x0800ABD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r1, [sp, #8]
	adds r4, r2, #0
	ldr r1, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	mov r8, r5
	movs r6, #0
	ldr r1, _0800AC44 @ =gUnk_0815DCE8
	mov r0, sp
	movs r2, #4
	bl memcpy
	add r7, sp, #4
	ldr r1, _0800AC48 @ =gUnk_0815DCEC
	adds r0, r7, #0
	movs r2, #4
	bl memcpy
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0
	blt _0800ACD0
	mov r1, sp
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r4, r0
	bge _0800ACD0
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _0800ACD0
	adds r0, r7, r5
	ldrb r0, [r0]
	cmp r3, r0
	bge _0800ACD0
	cmp r5, #1
	beq _0800AC5E
	cmp r5, #1
	bgt _0800AC4C
	cmp r5, #0
	beq _0800AC58
	b _0800ACC6
	.align 2, 0
_0800AC44: .4byte gUnk_0815DCE8
_0800AC48: .4byte gUnk_0815DCEC
_0800AC4C:
	mov r0, r8
	cmp r0, #2
	beq _0800AC7E
	cmp r0, #3
	beq _0800AC84
	b _0800ACC6
_0800AC58:
	lsls r0, r3, #5
	adds r0, r4, r0
	b _0800ACC2
_0800AC5E:
	lsls r3, r3, #5
	adds r0, r4, #0
	cmp r4, #0
	bge _0800AC68
	adds r0, #0x1f
_0800AC68:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r4, r0
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r4, #0x1f
	ble _0800ACC6
	movs r1, #0x80
	lsls r1, r1, #3
	b _0800ACC0
_0800AC7E:
	lsls r0, r3, #5
	adds r0, r4, r0
	b _0800ACC2
_0800AC84:
	adds r0, r3, #0
	cmp r3, #0
	bge _0800AC8C
	adds r0, #0x1f
_0800AC8C:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r3, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0xb
	adds r0, r4, #0
	cmp r4, #0
	bge _0800AC9E
	adds r0, #0x1f
_0800AC9E:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r4, r0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r4, #0x1f
	ble _0800ACB8
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r6, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0800ACB8:
	cmp r3, #0x1f
	ble _0800ACC6
	movs r1, #0x80
	lsls r1, r1, #4
_0800ACC0:
	adds r0, r6, r1
_0800ACC2:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0800ACC6:
	lsls r0, r6, #1
	ldr r1, [sp, #8]
	adds r0, r0, r1
	mov r1, sl
	strh r1, [r0]
_0800ACD0:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800ACE0
sub_0800ACE0: @ 0x0800ACE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	ldr r4, [sp, #0x44]
	ldr r5, [sp, #0x48]
	ldr r6, [sp, #0x4c]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x14]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sb, r5
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r8, r6
	movs r6, #0
	cmp r6, sl
	bhs _0800ADD2
_0800AD28:
	movs r5, #0
	adds r0, r6, #1
	str r0, [sp, #0x18]
	cmp r5, r7
	bhs _0800ADC8
_0800AD32:
	adds r3, r5, #0
	movs r4, #1
	mov r1, r8
	ands r4, r1
	cmp r4, #0
	beq _0800AD46
	subs r0, r7, #1
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0800AD46:
	adds r1, r6, #0
	movs r0, #2
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0800AD60
	mov r0, sl
	subs r0, #1
	subs r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0800AD60:
	adds r0, r1, #0
	muls r0, r7, r0
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r3, [sp, #4]
	adds r0, r0, r3
	ldrh r1, [r0]
	cmp r4, #0
	beq _0800AD7A
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	eors r1, r0
_0800AD7A:
	cmp r2, #0
	beq _0800AD8A
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	eors r1, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_0800AD8A:
	movs r0, #0xf0
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	bne _0800ADA2
	ldr r2, _0800ADE4 @ =0x00000FFF
	adds r0, r2, #0
	ands r1, r0
	lsls r0, r3, #0xc
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_0800ADA2:
	ldr r3, [sp, #0xc]
	adds r2, r5, r3
	ldr r0, [sp, #0x10]
	adds r3, r6, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	ldr r0, [sp, #0x14]
	str r0, [sp]
	adds r0, r1, #0
	ldr r1, [sp, #8]
	asrs r3, r3, #0x10
	bl sub_0800ABD0
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r7
	blo _0800AD32
_0800ADC8:
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	cmp r6, sl
	blo _0800AD28
_0800ADD2:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800ADE4: .4byte 0x00000FFF

	thumb_func_start sub_0800ADE8
sub_0800ADE8: @ 0x0800ADE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	movs r1, #0
	cmp r1, r8
	bhs _0800AE78
	movs r0, #0
	mov sl, r0
_0800AE0E:
	ldr r2, [sp]
	adds r0, r2, r1
	ldrb r7, [r0]
	movs r2, #0
	lsls r3, r1, #2
	adds r1, #1
	mov ip, r1
	adds r1, r3, #0
_0800AE1E:
	adds r0, r1, r2
	adds r0, r5, r0
	mov r4, sl
	strb r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _0800AE1E
	movs r6, #0x80
	movs r2, #0
	adds r4, r3, #0
_0800AE36:
	movs r3, #0
	adds r0, r7, #0
	ands r0, r6
	cmp r0, #0
	beq _0800AE42
	mov r3, sb
_0800AE42:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0800AE56
	lsls r0, r3, #0x1c
	lsrs r3, r0, #0x18
	lsrs r0, r2, #1
	adds r0, r4, r0
	adds r0, r5, r0
	b _0800AE60
_0800AE56:
	lsrs r0, r2, #1
	adds r0, r4, r0
	adds r0, r5, r0
	ldrb r1, [r0]
	orrs r3, r1
_0800AE60:
	strb r3, [r0]
	lsrs r6, r6, #1
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #7
	bls _0800AE36
	mov r1, ip
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r8
	blo _0800AE0E
_0800AE78:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800AE88
sub_0800AE88: @ 0x0800AE88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	movs r7, #0
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	movs r4, #0
	cmp r0, #0
	bgt _0800AEB0
	b _0800B08A
_0800AEB0:
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #1
	ldr r0, [sp]
	adds r2, r0, r2
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0xc0
	lsls r3, r3, #8
	ands r1, r3
	lsrs r1, r1, #0xc
	ldrb r3, [r2, #4]
	ldrb r0, [r2, #5]
	lsls r0, r0, #8
	orrs r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #8
	ands r0, r3
	asrs r0, r0, #0xe
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0800AFB4 @ =gUnk_0815DCF4
	adds r1, r1, r0
	ldrh r5, [r1]
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ands r1, r3
	lsrs r1, r1, #0xc
	ldrb r3, [r2, #4]
	ldrb r0, [r2, #5]
	lsls r0, r0, #8
	orrs r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #8
	ands r0, r3
	asrs r0, r0, #0xe
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0800AFB4 @ =gUnk_0815DCF4
	adds r1, r1, r0
	ldrb r3, [r2, #4]
	ldrb r0, [r2, #5]
	lsls r0, r0, #8
	orrs r0, r3
	lsrs r0, r0, #0xd
	movs r3, #1
	ands r0, r3
	str r0, [sp, #0x14]
	ldrb r3, [r2, #4]
	ldrb r0, [r2, #5]
	lsls r0, r0, #8
	orrs r0, r3
	lsrs r0, r0, #0xc
	movs r3, #1
	ands r0, r3
	str r0, [sp, #0x18]
	ldrb r3, [r2, #6]
	ldrb r0, [r2, #7]
	lsls r0, r0, #8
	orrs r0, r3
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	str r0, [sp, #0x1c]
	movs r2, #0
	ldrh r0, [r1, #2]
	str r0, [sp, #0x10]
	movs r3, #2
	ldrsh r0, [r1, r3]
	adds r4, #1
	str r4, [sp, #0x40]
	cmp r2, r0
	blt _0800AF5A
	b _0800B074
_0800AF5A:
	lsls r5, r5, #0x10
	str r5, [sp, #0x2c]
	asrs r0, r5, #0x10
	str r0, [sp, #0x30]
_0800AF62:
	movs r1, #0
	ldr r4, [sp, #0x2c]
	ldr r3, [sp, #0x10]
	lsls r3, r3, #0x10
	str r3, [sp, #0x34]
	lsls r2, r2, #0x10
	str r2, [sp, #0x3c]
	ldr r0, [sp, #0x30]
	cmp r1, r0
	bge _0800B062
	ldr r2, [sp, #0xc]
	cmp r7, r2
	bge _0800B062
	adds r0, r7, #0
	adds r0, #0x1f
	cmp r0, r2
	bge _0800B062
	ldr r3, [sp, #0x1c]
	subs r3, #1
	str r3, [sp, #0x20]
	ldr r2, [sp, #0x34]
	asrs r0, r2, #0x10
	ldr r3, [sp, #0x3c]
	asrs r3, r3, #0x10
	str r3, [sp, #0x24]
	subs r0, r0, r3
	subs r0, #1
	str r0, [sp, #0x28]
_0800AF9A:
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0800AFB8
	asrs r0, r4, #0x10
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	subs r0, r0, r1
	ldr r1, [sp, #0x20]
	adds r3, r1, r0
	mov sb, r2
	b _0800AFC0
	.align 2, 0
_0800AFB4: .4byte gUnk_0815DCF4
_0800AFB8:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	adds r3, r3, r0
	mov sb, r1
_0800AFC0:
	ldr r2, [sp, #0x18]
	cmp r2, #0
	beq _0800AFCA
	ldr r1, [sp, #0x28]
	b _0800AFCC
_0800AFCA:
	ldr r1, [sp, #0x24]
_0800AFCC:
	ldr r2, [sp, #0x30]
	adds r0, r1, #0
	muls r0, r2, r0
	adds r3, r3, r0
	lsls r3, r3, #3
	ldr r0, [sp, #4]
	adds r0, r0, r3
	mov sl, r0
	ldr r1, [sp, #8]
	adds r5, r1, r7
	movs r6, #0
	ldr r2, _0800B024 @ =gUnk_085F7EC4
	mov r8, r2
	adds r7, #0x20
	str r7, [sp, #0x38]
_0800AFEA:
	movs r4, #0
	adds r3, r6, #1
	mov ip, r3
	mov r7, sl
	adds r7, r7, r6
	str r7, [sp, #0x44]
_0800AFF6:
	mov r1, r8
	adds r0, r4, r1
	ldr r2, [sp, #0x44]
	ldrb r1, [r2]
	ldrb r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0800B036
	asrs r2, r4, #0x1f
	subs r0, r4, r2
	asrs r0, r0, #1
	lsls r1, r6, #2
	adds r0, r1, r0
	adds r0, r5, r0
	ldrb r3, [r0]
	adds r0, r4, #0
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _0800B028
	movs r0, #0xf
	b _0800B02A
	.align 2, 0
_0800B024: .4byte gUnk_085F7EC4
_0800B028:
	movs r0, #0xf0
_0800B02A:
	ands r3, r0
	subs r0, r4, r2
	asrs r0, r0, #1
	adds r0, r1, r0
	adds r0, r5, r0
	strb r3, [r0]
_0800B036:
	adds r4, #1
	cmp r4, #7
	ble _0800AFF6
	mov r6, ip
	cmp r6, #7
	ble _0800AFEA
	ldr r7, [sp, #0x38]
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r1, r0, #0x10
	ldr r4, [sp, #0x2c]
	cmp r0, r4
	bge _0800B062
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bge _0800B062
	adds r0, r7, #0
	adds r0, #0x1f
	ldr r2, [sp, #0xc]
	cmp r0, r2
	blt _0800AF9A
_0800B062:
	ldr r3, [sp, #0x3c]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r2, r0, #0x10
	ldr r3, [sp, #0x34]
	cmp r0, r3
	bge _0800B074
	b _0800AF62
_0800B074:
	ldr r4, [sp, #0x40]
	ldr r0, [sp]
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r4, r0
	bge _0800B08A
	b _0800AEB0
_0800B08A:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800B09C
sub_0800B09C: @ 0x0800B09C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	movs r3, #0
	cmp r3, r5
	bhs _0800B0F8
	ldr r6, _0800B0DC @ =0x000003FF
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	mov r8, r0
_0800B0C4:
	lsls r1, r3, #1
	mov r2, ip
	adds r0, r1, r2
	ldrh r2, [r0]
	adds r0, r2, #0
	ands r0, r6
	cmp r0, r6
	bne _0800B0E0
	adds r0, r1, r4
	strh r2, [r0]
	b _0800B0EE
	.align 2, 0
_0800B0DC: .4byte 0x000003FF
_0800B0E0:
	add r0, sb
	ands r0, r6
	mov r7, r8
	ands r2, r7
	adds r1, r1, r4
	orrs r2, r0
	strh r2, [r1]
_0800B0EE:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r5
	blo _0800B0C4
_0800B0F8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B104
sub_0800B104: @ 0x0800B104
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	movs r3, #0
	cmp r3, r5
	bhs _0800B13C
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
_0800B11C:
	adds r0, r7, r3
	ldrb r2, [r0]
	adds r1, r2, #0
	cmp r1, #0xff
	bne _0800B12C
	adds r0, r4, r3
	strb r2, [r0]
	b _0800B132
_0800B12C:
	adds r1, r1, r6
	adds r0, r4, r3
	strb r1, [r0]
_0800B132:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r5
	blo _0800B11C
_0800B13C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800B144
sub_0800B144: @ 0x0800B144
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r2, #0
	cmp r2, r3
	bhs _0800B174
	ldr r7, _0800B17C @ =0x00000FFF
	lsls r4, r0, #0xc
_0800B15C:
	lsls r1, r2, #1
	adds r0, r1, r6
	ldrh r0, [r0]
	ands r0, r7
	adds r1, r1, r5
	orrs r0, r4
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	blo _0800B15C
_0800B174:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B17C: .4byte 0x00000FFF

	thumb_func_start sub_0800B180
sub_0800B180: @ 0x0800B180
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov sb, r4
	movs r6, #0
	cmp r6, r3
	bhs _0800B200
_0800B1B8:
	movs r4, #0
	adds r0, r6, #1
	mov r8, r0
	cmp r4, r5
	bhs _0800B1F4
	ldr r1, [sp, #0x10]
	adds r0, r6, r1
	lsls r7, r0, #0x10
_0800B1C8:
	adds r0, r6, #0
	muls r0, r5, r0
	adds r0, r0, r4
	lsls r0, r0, #1
	ldr r1, [sp, #4]
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r1, sl
	adds r2, r4, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r1, sb
	str r1, [sp]
	ldr r1, [sp, #8]
	asrs r3, r7, #0x10
	bl sub_0800ABD0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0800B1C8
_0800B1F4:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #0xc]
	cmp r6, r0
	blo _0800B1B8
_0800B200:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B210
sub_0800B210: @ 0x0800B210
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r8, r4
	ldr r1, _0800B2C0 @ =gUnk_0815DCF0
	mov r0, sp
	movs r2, #4
	bl memcpy
	movs r6, #0
	cmp r6, sl
	bhs _0800B2B0
_0800B252:
	movs r3, #0
	adds r0, r6, #1
	mov ip, r0
	cmp r3, r5
	bhs _0800B2A6
	ldr r1, [sp, #0xc]
	adds r0, r6, r1
	lsls r7, r0, #0x10
_0800B262:
	adds r0, r6, #0
	muls r0, r5, r0
	adds r0, r0, r3
	ldr r1, [sp, #4]
	adds r0, r1, r0
	ldrb r4, [r0]
	mov r1, sb
	adds r0, r3, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _0800B29C
	mov r0, sp
	add r0, r8
	ldrb r1, [r0]
	cmp r2, r1
	bge _0800B29C
	asrs r0, r7, #0x10
	cmp r0, #0
	blt _0800B29C
	cmp r0, r1
	bge _0800B29C
	muls r0, r1, r0
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, r0
	strb r4, [r0]
_0800B29C:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r5
	blo _0800B262
_0800B2A6:
	mov r1, ip
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	cmp r6, sl
	blo _0800B252
_0800B2B0:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B2C0: .4byte gUnk_0815DCF0

	thumb_func_start sub_0800B2C4
sub_0800B2C4: @ 0x0800B2C4
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r7, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	movs r4, #0
	cmp r4, r6
	bhs _0800B30E
	lsls r5, r2, #4
_0800B2DA:
	mov r1, ip
	adds r0, r1, r4
	ldrb r0, [r0]
	adds r3, r0, #0
	movs r1, #0xf
	ands r1, r3
	cmp r1, #0
	beq _0800B2F0
	orrs r1, r5
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
_0800B2F0:
	lsls r0, r4, #1
	adds r2, r0, r7
	strb r1, [r2]
	lsrs r1, r3, #4
	cmp r1, #0
	beq _0800B302
	orrs r1, r5
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
_0800B302:
	strb r1, [r2, #1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0800B2DA
_0800B30E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B314
sub_0800B314: @ 0x0800B314
	push {r4, r5, r6, r7, lr}
	ldr r4, _0800B398 @ =0xFFFFFD80
	add sp, r4
	adds r7, r3, #0
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	adds r0, r4, #0
	adds r2, r5, #0
	mov r3, sp
	bl sub_0800FB34
	lsls r0, r4, #1
	adds r0, #1
	lsls r6, r0, #0x10
	subs r0, r5, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0800B344
	movs r2, #0
_0800B344:
	adds r0, r5, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _0800B352
	movs r1, #0xa0
_0800B352:
	lsls r4, r2, #0x10
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r4, r5
	bgt _0800B38A
_0800B35C:
	asrs r4, r4, #0x10
	lsls r2, r4, #2
	mov r0, sp
	adds r0, #2
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r3, sp
	adds r0, r3, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	adds r0, r6, #0
	bl __divsi3
	asrs r0, r0, #8
	lsls r1, r4, #1
	adds r1, r1, r7
	strh r0, [r1]
	adds r4, #1
	lsls r4, r4, #0x10
	cmp r4, r5
	ble _0800B35C
_0800B38A:
	movs r3, #0xa0
	lsls r3, r3, #2
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B398: .4byte 0xFFFFFD80

	thumb_func_start sub_0800B39C
sub_0800B39C: @ 0x0800B39C
	push {r4, r5, r6, r7, lr}
	ldr r4, _0800B3CC @ =0xFFFFFD7C
	add sp, r4
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	lsrs r7, r1, #0x10
	asrs r5, r1, #0x10
	cmp r0, r5
	bne _0800B3D0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r4, r3, #0x10
	asrs r2, r4, #0x10
	adds r0, r5, #0
	add r3, sp, #4
	bl sub_0800FB34
	b _0800B3E2
	.align 2, 0
_0800B3CC: .4byte 0xFFFFFD7C
_0800B3D0:
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r4, r3, #0x10
	asrs r3, r4, #0x10
	add r1, sp, #4
	str r1, [sp]
	adds r1, r5, #0
	bl sub_0800FC70
_0800B3E2:
	lsls r0, r6, #0x10
	asrs r0, r0, #0xf
	adds r0, #1
	lsls r6, r0, #0x10
	asrs r3, r4, #0x10
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	subs r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _0800B3FC
	movs r4, #0
_0800B3FC:
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _0800B40A
	movs r1, #0xa0
_0800B40A:
	lsls r4, r4, #0x10
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r4, r5
	bgt _0800B446
_0800B414:
	asrs r4, r4, #0x10
	lsls r2, r4, #2
	mov r0, sp
	adds r0, #6
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r0, sp
	adds r0, r0, r2
	adds r0, #4
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	adds r0, r6, #0
	bl __divsi3
	asrs r0, r0, #8
	lsls r1, r4, #1
	ldr r3, [sp, #0x298]
	adds r1, r1, r3
	strh r0, [r1]
	adds r4, #1
	lsls r4, r4, #0x10
	cmp r4, r5
	ble _0800B414
_0800B446:
	movs r3, #0xa1
	lsls r3, r3, #2
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800B454
sub_0800B454: @ 0x0800B454
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	ldr r4, [sp, #0x68]
	ldr r5, [sp, #0x6c]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov sl, r7
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x34]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x38]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x3c]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x40]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	str r5, [sp, #0x44]
	movs r0, #0
	mov sb, r0
	add r6, sp, #0x10
	adds r1, r6, #0
	ldr r0, _0800B4D4 @ =gUnk_0815DD34
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r5, sp, #0x1c
	ldr r1, _0800B4D8 @ =gUnk_0815DD40
	adds r0, r5, #0
	movs r2, #6
	bl memcpy
	add r4, sp, #0x24
	ldr r1, _0800B4DC @ =gUnk_0815DD46
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	lsls r0, r7, #2
	adds r6, r6, r0
	ldr r0, [r6]
	lsls r2, r7, #1
	adds r5, r5, r2
	ldrh r1, [r5]
	adds r4, r4, r2
	ldrh r2, [r4]
	ldr r3, [sp, #0x70]
	bl sub_080083C8
	mov r8, r0
	cmp r7, #1
	beq _0800B4F6
	cmp r7, #1
	bgt _0800B4E0
	cmp r7, #0
	beq _0800B4E8
	b _0800B522
	.align 2, 0
_0800B4D4: .4byte gUnk_0815DD34
_0800B4D8: .4byte gUnk_0815DD40
_0800B4DC: .4byte gUnk_0815DD46
_0800B4E0:
	mov r6, sl
	cmp r6, #2
	beq _0800B508
	b _0800B522
_0800B4E8:
	mov r0, r8
	bl sub_0800874C
	str r0, [sp]
	movs r0, #1
	mov sb, r0
	b _0800B522
_0800B4F6:
	mov r0, r8
	bl sub_0800874C
	str r0, [sp]
	adds r0, #0x18
	str r0, [sp, #4]
	movs r1, #2
	mov sb, r1
	b _0800B522
_0800B508:
	mov r0, r8
	bl sub_0800874C
	str r0, [sp]
	adds r1, r0, #0
	adds r1, #0x18
	str r1, [sp, #4]
	adds r1, #0x18
	str r1, [sp, #8]
	adds r0, #0x48
	str r0, [sp, #0xc]
	movs r2, #4
	mov sb, r2
_0800B522:
	ldr r1, _0800B5B0 @ =0xFFFF0000
	ldr r0, [sp, #0x2c]
	ands r0, r1
	ldr r3, [sp, #0x40]
	orrs r0, r3
	ldr r4, [sp, #0x38]
	lsls r2, r4, #0x10
	ldr r1, _0800B5B4 @ =0xFF00FFFF
	ands r0, r1
	orrs r0, r2
	ldr r6, [sp, #0x34]
	lsls r2, r6, #0x18
	ldr r1, _0800B5B8 @ =0x00FFFFFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x2c]
	ldr r1, _0800B5BC @ =0xFFFFFF00
	add r3, sp, #0x2c
	ldr r0, [r3, #4]
	ands r0, r1
	ldr r1, [sp, #0x3c]
	orrs r0, r1
	ldr r4, [sp, #0x44]
	lsls r2, r4, #8
	ldr r1, _0800B5C0 @ =0xFFFF00FF
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	mov r6, sb
	cmp r6, #0
	beq _0800B59E
	adds r4, r3, #0
	movs r0, #0x9f
	mov ip, r0
	movs r6, #0
	movs r5, #0
	mov r3, sp
	adds r7, r4, #0
	mov r2, sb
_0800B570:
	ldr r1, [r3]
	ldrh r0, [r7]
	strh r0, [r1, #2]
	ldrb r0, [r4, #2]
	strb r0, [r1, #4]
	ldrb r0, [r4, #3]
	strb r0, [r1, #5]
	ldrb r0, [r4, #4]
	strb r0, [r1, #6]
	ldrb r0, [r4, #5]
	strb r0, [r1, #9]
	strb r6, [r1, #7]
	mov r0, ip
	strb r0, [r1, #8]
	ldr r0, [r3]
	strb r6, [r0, #0xa]
	ldm r3!, {r0}
	str r5, [r0, #0x10]
	str r5, [r0, #0x14]
	strh r5, [r0]
	subs r2, #1
	cmp r2, #0
	bne _0800B570
_0800B59E:
	mov r0, r8
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B5B0: .4byte 0xFFFF0000
_0800B5B4: .4byte 0xFF00FFFF
_0800B5B8: .4byte 0x00FFFFFF
_0800B5BC: .4byte 0xFFFFFF00
_0800B5C0: .4byte 0xFFFF00FF

	thumb_func_start sub_0800B5C4
sub_0800B5C4: @ 0x0800B5C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r1, [sp, #0x2c]
	mov r8, r2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov sl, r7
	movs r0, #0
	mov sb, r0
	add r6, sp, #0x10
	adds r1, r6, #0
	ldr r0, _0800B628 @ =gUnk_0815DD4C
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r5, sp, #0x1c
	ldr r1, _0800B62C @ =gUnk_0815DD58
	adds r0, r5, #0
	movs r2, #6
	bl memcpy
	add r4, sp, #0x24
	ldr r1, _0800B630 @ =gUnk_0815DD46
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	lsls r0, r7, #2
	adds r6, r6, r0
	ldr r0, [r6]
	lsls r2, r7, #1
	adds r5, r5, r2
	ldrh r1, [r5]
	adds r4, r4, r2
	ldrh r2, [r4]
	mov r3, r8
	bl sub_080083C8
	adds r4, r0, #0
	cmp r7, #1
	beq _0800B64A
	cmp r7, #1
	bgt _0800B634
	cmp r7, #0
	beq _0800B63C
	b _0800B674
	.align 2, 0
_0800B628: .4byte gUnk_0815DD4C
_0800B62C: .4byte gUnk_0815DD58
_0800B630: .4byte gUnk_0815DD46
_0800B634:
	mov r0, sl
	cmp r0, #2
	beq _0800B65C
	b _0800B674
_0800B63C:
	adds r0, r4, #0
	bl sub_0800874C
	str r0, [sp]
	movs r2, #1
	mov sb, r2
	b _0800B674
_0800B64A:
	adds r0, r4, #0
	bl sub_0800874C
	str r0, [sp]
	adds r0, #4
	str r0, [sp, #4]
	movs r3, #2
	mov sb, r3
	b _0800B674
_0800B65C:
	adds r0, r4, #0
	bl sub_0800874C
	str r0, [sp]
	adds r1, r0, #4
	str r1, [sp, #4]
	adds r1, #4
	str r1, [sp, #8]
	adds r0, #0xc
	str r0, [sp, #0xc]
	movs r0, #4
	mov sb, r0
_0800B674:
	mov r2, sb
	cmp r2, #0
	beq _0800B68A
	mov r2, sp
	mov r1, sb
_0800B67E:
	ldm r2!, {r0}
	ldr r3, [sp, #0x2c]
	str r3, [r0]
	subs r1, #1
	cmp r1, #0
	bne _0800B67E
_0800B68A:
	adds r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800B69C
sub_0800B69C: @ 0x0800B69C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r4, [sp, #0x30]
	ldr r5, [sp, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	cmp r0, #2
	bne _0800B6D4
	ldr r0, _0800B6D0 @ =0x04000020
	b _0800B6DA
	.align 2, 0
_0800B6D0: .4byte 0x04000020
_0800B6D4:
	cmp r0, #3
	bne _0800B6DC
	ldr r0, _0800B780 @ =0x04000030
_0800B6DA:
	mov sb, r0
_0800B6DC:
	ldr r0, _0800B784 @ =sub_0800C7D8
	movs r1, #0xbe
	lsls r1, r1, #1
	movs r2, #0x10
	mov r3, sb
	bl sub_080083C8
	adds r5, r0, #0
	movs r1, #0
	bl sub_0800D3A0
	lsls r7, r7, #0x10
	mov sb, r7
	mov r0, sb
	asrs r0, r0, #0x10
	mov sb, r0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r0, r5, #0
	mov r1, sb
	adds r2, r6, #0
	bl sub_0800D3B4
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0800D3D0
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r7, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r1, r7, r1
	asrs r1, r1, #1
	adds r0, r5, #0
	bl sub_0800D3EC
	mov r0, sb
	lsls r0, r0, #8
	mov sl, r0
	adds r4, r4, r6
	lsls r4, r4, #8
	str r6, [sp]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	mov r8, r0
	str r0, [sp, #0xc]
	adds r0, r5, #0
	mov r1, sl
	adds r2, r4, #0
	mov r3, sb
	bl sub_0800D400
	str r6, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r5, #0
	mov r1, sl
	adds r2, r4, #0
	mov r3, sb
	bl sub_0800D464
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_0800D4AC
	adds r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B780: .4byte 0x04000030
_0800B784: .4byte sub_0800C7D8

	thumb_func_start sub_0800B788
sub_0800B788: @ 0x0800B788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	adds r6, r3, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldrb r0, [r6, #3]
	str r0, [sp, #8]
	ldrb r1, [r6, #2]
	str r1, [sp, #0xc]
	ldrb r0, [r6, #4]
	str r0, [sp, #0x10]
	movs r0, #0
	ldrsh r1, [r6, r0]
	mov sl, r1
	ldrb r1, [r6, #5]
	str r1, [sp, #0x14]
	cmp r5, #1
	beq _0800B7D4
	cmp r5, #1
	bgt _0800B7C4
	cmp r5, #0
	beq _0800B7CA
	b _0800B7E2
_0800B7C4:
	cmp r5, #2
	beq _0800B7D4
	b _0800B7E2
_0800B7CA:
	mov r0, r8
	bl sub_0800874C
	adds r4, r0, #0
	b _0800B7E2
_0800B7D4:
	mov r0, r8
	bl sub_0800874C
	lsls r1, r7, #1
	adds r1, r1, r7
	lsls r1, r1, #3
	adds r4, r0, r1
_0800B7E2:
	ldr r1, _0800B844 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	mov r1, sl
	orrs r0, r1
	ldr r1, [sp, #0xc]
	lsls r2, r1, #0x10
	ldr r1, _0800B848 @ =0xFF00FFFF
	ands r0, r1
	orrs r0, r2
	ldr r1, [sp, #8]
	lsls r2, r1, #0x18
	ldr r1, _0800B84C @ =0x00FFFFFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	ldr r1, _0800B850 @ =0xFFFFFF00
	mov r3, sp
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r1, [sp, #0x10]
	orrs r0, r1
	ldr r1, [sp, #0x14]
	lsls r2, r1, #8
	ldr r1, _0800B854 @ =0xFFFF00FF
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4, #2]
	ldrb r0, [r3, #2]
	strb r0, [r4, #4]
	ldrb r0, [r3, #3]
	strb r0, [r4, #5]
	ldrb r0, [r3, #4]
	strb r0, [r4, #6]
	ldrb r0, [r3, #5]
	strb r0, [r4, #9]
	ldrb r4, [r6, #6]
	ldrb r6, [r6, #7]
	cmp r5, #1
	beq _0800B866
	cmp r5, #1
	bgt _0800B858
	cmp r5, #0
	beq _0800B85E
	b _0800B876
	.align 2, 0
_0800B844: .4byte 0xFFFF0000
_0800B848: .4byte 0xFF00FFFF
_0800B84C: .4byte 0x00FFFFFF
_0800B850: .4byte 0xFFFFFF00
_0800B854: .4byte 0xFFFF00FF
_0800B858:
	cmp r5, #2
	beq _0800B866
	b _0800B876
_0800B85E:
	mov r0, r8
	bl sub_0800874C
	b _0800B874
_0800B866:
	mov r0, r8
	bl sub_0800874C
	lsls r1, r7, #1
	adds r1, r1, r7
	lsls r1, r1, #3
	adds r0, r0, r1
_0800B874:
	mov sb, r0
_0800B876:
	mov r0, sb
	adds r3, r4, #0
	cmp r3, #0x9f
	ble _0800B880
	movs r4, #0xa0
_0800B880:
	adds r3, r6, #0
	cmp r3, #0x9f
	ble _0800B888
	movs r6, #0x9f
_0800B888:
	strb r4, [r0, #7]
	strb r6, [r0, #8]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B89C
sub_0800B89C: @ 0x0800B89C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, #0x18]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r7, r1, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	cmp r1, #1
	beq _0800B8D0
	cmp r1, #1
	bgt _0800B8C2
	cmp r1, #0
	beq _0800B8C8
	b _0800B8DC
_0800B8C2:
	cmp r7, #2
	beq _0800B8D0
	b _0800B8DC
_0800B8C8:
	bl sub_0800874C
	adds r6, r0, #0
	b _0800B8DC
_0800B8D0:
	bl sub_0800874C
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r6, r0, r1
_0800B8DC:
	adds r2, r6, #0
	mov r0, r8
	cmp r0, #0xc
	bhi _0800B976
	lsls r0, r0, #2
	ldr r1, _0800B8F0 @ =_0800B8F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800B8F0: .4byte _0800B8F4
_0800B8F4: @ jump table
	.4byte _0800B928 @ case 0
	.4byte _0800B92C @ case 1
	.4byte _0800B930 @ case 2
	.4byte _0800B934 @ case 3
	.4byte _0800B938 @ case 4
	.4byte _0800B93C @ case 5
	.4byte _0800B94E @ case 6
	.4byte _0800B960 @ case 7
	.4byte _0800B964 @ case 8
	.4byte _0800B968 @ case 9
	.4byte _0800B96C @ case 10
	.4byte _0800B970 @ case 11
	.4byte _0800B974 @ case 12
_0800B928:
	strh r4, [r2, #2]
	b _0800B976
_0800B92C:
	strb r4, [r2, #4]
	b _0800B976
_0800B930:
	strb r4, [r2, #5]
	b _0800B976
_0800B934:
	strb r4, [r2, #6]
	b _0800B976
_0800B938:
	strb r4, [r2, #9]
	b _0800B976
_0800B93C:
	cmp r4, #0
	bge _0800B944
	movs r4, #0
	b _0800B94A
_0800B944:
	cmp r4, #0x9f
	ble _0800B94A
	movs r4, #0xa0
_0800B94A:
	strb r4, [r2, #7]
	b _0800B976
_0800B94E:
	cmp r4, #0
	bge _0800B956
	movs r4, #0
	b _0800B95C
_0800B956:
	cmp r4, #0x9f
	ble _0800B95C
	movs r4, #0x9f
_0800B95C:
	strb r4, [r2, #8]
	b _0800B976
_0800B960:
	strb r4, [r2, #0xa]
	b _0800B976
_0800B964:
	strb r4, [r2, #0xb]
	b _0800B976
_0800B968:
	strb r4, [r2, #0xc]
	b _0800B976
_0800B96C:
	strb r4, [r2, #0xd]
	b _0800B976
_0800B970:
	str r4, [r2, #0x10]
	b _0800B976
_0800B974:
	str r4, [r2, #0x14]
_0800B976:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B980
sub_0800B980: @ 0x0800B980
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _0800BA3C @ =0xFFFFFD7C
	add sp, r4
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_0800874C
	strh r4, [r0, #0x38]
	strh r5, [r0, #0x3a]
	movs r1, #0x3c
	adds r1, r1, r0
	mov sb, r1
	movs r2, #2
	ldrsh r1, [r0, r2]
	movs r2, #4
	ldrsh r6, [r0, r2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add r0, sp, #4
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800FF0C
	subs r0, r6, r5
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _0800B9D2
	movs r1, #0
_0800B9D2:
	adds r0, r6, r5
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _0800B9E0
	movs r2, #0xa0
_0800B9E0:
	lsls r1, r1, #0x10
	lsls r0, r2, #0x10
	asrs r5, r1, #0x10
	adds r7, r0, #0
	cmp r1, r7
	bgt _0800BA2A
	lsls r0, r4, #1
	adds r0, #1
	lsls r0, r0, #0x10
	mov r8, r0
	lsls r0, r5, #1
	mov r1, sb
	adds r6, r0, r1
	lsls r0, r5, #2
	adds r4, r0, #0
	add r4, sp
	adds r4, #4
_0800BA02:
	lsls r1, r5, #2
	mov r0, sp
	adds r0, #6
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0
	ldrsh r0, [r4, r2]
	subs r1, r1, r0
	mov r0, r8
	bl __divsi3
	asrs r0, r0, #8
	strh r0, [r6]
	adds r6, #2
	adds r4, #4
	adds r5, #1
	asrs r0, r7, #0x10
	cmp r5, r0
	ble _0800BA02
_0800BA2A:
	movs r3, #0xa1
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BA3C: .4byte 0xFFFFFD7C

	thumb_func_start sub_0800BA40
sub_0800BA40: @ 0x0800BA40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_0800874C
	mov sb, r0
	mov r8, r4
	lsls r1, r4, #1
	movs r0, #3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r3, r4, #0x10
	movs r2, #0
	cmp r3, #0
	bge _0800BA78
	b _0800BC42
_0800BA78:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	mov r6, sp
_0800BA86:
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	ldr r4, [sp, #8]
	subs r1, r4, r0
	lsls r1, r1, #0x10
	adds r0, r4, r0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r0
	str r1, [sp]
	asrs r0, r3, #0x10
	add r0, sl
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	mov ip, r2
	cmp r0, #0x9f
	bhi _0800BAEC
	asrs r0, r1, #0xf
	mov r1, sb
	adds r2, r0, r1
	adds r2, #4
	mov r4, sp
	movs r5, #0
	ldrh r0, [r6]
	movs r3, #0
	ldrsh r1, [r6, r3]
	cmp r1, #0xf0
	ble _0800BAC4
	movs r5, #0xf5
	b _0800BACC
_0800BAC4:
	cmp r1, #0
	blt _0800BACC
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0800BACC:
	movs r3, #0
	ldrh r1, [r4, #2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0800BADC
	movs r3, #0xfa
	b _0800BAE4
_0800BADC:
	cmp r0, #0
	blt _0800BAE4
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
_0800BAE4:
	ldrb r0, [r2, #1]
	strb r5, [r2, #1]
	ldrb r0, [r2]
	strb r3, [r2]
_0800BAEC:
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	mov r2, sl
	subs r1, r2, r1
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	adds r7, r0, #0
	cmp r1, #0x9f
	bhi _0800BB42
	asrs r0, r2, #0xf
	mov r3, sb
	adds r1, r0, r3
	adds r1, #4
	mov r4, sp
	movs r5, #0
	ldrh r0, [r6]
	movs r3, #0
	ldrsh r2, [r6, r3]
	cmp r2, #0xf0
	ble _0800BB1A
	movs r5, #0xf5
	b _0800BB22
_0800BB1A:
	cmp r2, #0
	blt _0800BB22
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0800BB22:
	movs r3, #0
	ldrh r2, [r4, #2]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0800BB32
	movs r3, #0xfa
	b _0800BB3A
_0800BB32:
	cmp r0, #0
	blt _0800BB3A
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
_0800BB3A:
	ldrb r0, [r1, #1]
	strb r5, [r1, #1]
	ldrb r0, [r1]
	strb r3, [r1]
_0800BB42:
	asrs r1, r7, #0x10
	ldr r4, [sp, #8]
	subs r0, r4, r1
	strh r0, [r6]
	adds r1, r4, r1
	adds r1, #1
	mov r0, sp
	strh r1, [r0, #2]
	mov r1, ip
	asrs r0, r1, #0x10
	add r0, sl
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800BBA2
	asrs r0, r1, #0xf
	mov r3, sb
	adds r2, r0, r3
	adds r2, #4
	mov r4, sp
	movs r5, #0
	ldrh r0, [r6]
	movs r3, #0
	ldrsh r1, [r6, r3]
	cmp r1, #0xf0
	ble _0800BB7A
	movs r5, #0xf5
	b _0800BB82
_0800BB7A:
	cmp r1, #0
	blt _0800BB82
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0800BB82:
	movs r3, #0
	ldrh r1, [r4, #2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0800BB92
	movs r3, #0xfa
	b _0800BB9A
_0800BB92:
	cmp r0, #0
	blt _0800BB9A
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
_0800BB9A:
	ldrb r0, [r2, #1]
	strb r5, [r2, #1]
	ldrb r0, [r2]
	strb r3, [r2]
_0800BBA2:
	mov r4, ip
	asrs r0, r4, #0x10
	mov r1, sl
	subs r0, r1, r0
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800BBF4
	asrs r0, r1, #0xf
	mov r3, sb
	adds r2, r0, r3
	adds r2, #4
	mov r4, sp
	movs r5, #0
	ldrh r0, [r6]
	movs r3, #0
	ldrsh r1, [r6, r3]
	cmp r1, #0xf0
	ble _0800BBCC
	movs r5, #0xf5
	b _0800BBD4
_0800BBCC:
	cmp r1, #0
	blt _0800BBD4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0800BBD4:
	movs r3, #0
	ldrh r1, [r4, #2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0800BBE4
	movs r3, #0xfa
	b _0800BBEC
_0800BBE4:
	cmp r0, #0
	blt _0800BBEC
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
_0800BBEC:
	ldrb r0, [r2, #1]
	strb r5, [r2, #1]
	ldrb r0, [r2]
	strb r3, [r2]
_0800BBF4:
	ldr r4, [sp, #4]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800BC0E
	adds r0, #6
	mov r2, ip
	asrs r1, r2, #0xe
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	b _0800BC30
_0800BC0E:
	adds r2, r0, #0
	adds r2, #0xa
	mov r3, ip
	asrs r1, r3, #0x10
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0800BC30:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, ip
	lsrs r2, r0, #0x10
	mov r1, r8
	lsls r3, r1, #0x10
	cmp r0, r3
	bgt _0800BC42
	b _0800BA86
_0800BC42:
	movs r0, #0
	mov r2, sb
	strh r0, [r2]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800BC58
sub_0800BC58: @ 0x0800BC58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	mov r8, r1
	bl sub_0800874C
	mov sb, r0
	asrs r2, r4, #0x10
	cmp r2, #0
	bge _0800BC82
	b _0800BEFE
_0800BC82:
	lsls r1, r5, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	str r1, [sp, #0x14]
	cmp r0, #0
	bge _0800BC94
	movs r4, #0
_0800BC94:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf5
	ble _0800BC9E
	movs r4, #0xf5
_0800BC9E:
	ldr r0, _0800BD00 @ =0xFFFF0000
	ldr r3, [sp]
	ands r3, r0
	orrs r3, r4
	str r3, [sp]
	adds r0, r5, r2
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0800BCB6
	movs r2, #0
_0800BCB6:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xfa
	ble _0800BCC0
	movs r2, #0xfa
_0800BCC0:
	lsls r0, r2, #0x10
	ldr r1, _0800BD04 @ =0x0000FFFF
	ands r3, r1
	orrs r3, r0
	str r3, [sp]
	movs r2, #0
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	str r0, [sp, #0x10]
	cmp r2, r1
	bgt _0800BD3E
	adds r7, r1, #0
_0800BCD8:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, #0x9f
	ble _0800BCE4
	b _0800BEFE
_0800BCE4:
	lsls r0, r1, #1
	mov r3, sb
	adds r2, r0, r3
	adds r2, #4
	mov r4, sp
	movs r5, #0
	mov r0, sp
	ldrh r1, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0xf0
	ble _0800BD08
	movs r5, #0xf5
	b _0800BD10
	.align 2, 0
_0800BD00: .4byte 0xFFFF0000
_0800BD04: .4byte 0x0000FFFF
_0800BD08:
	cmp r0, #0
	blt _0800BD10
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
_0800BD10:
	movs r3, #0
	ldrh r1, [r4, #2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0800BD20
	movs r3, #0xfa
	b _0800BD28
_0800BD20:
	cmp r0, #0
	blt _0800BD28
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
_0800BD28:
	ldrb r0, [r2, #1]
	strb r5, [r2, #1]
	ldrb r0, [r2]
	strb r3, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r6, r4
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	ble _0800BCD8
_0800BD3E:
	mov r1, r8
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _0800BD48
	b _0800BEFE
_0800BD48:
	lsrs r1, r0, #0x10
	lsls r2, r1, #0x10
	asrs r0, r2, #0x11
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0
	str r3, [sp, #4]
	mov r8, r1
	lsrs r7, r2, #0x10
	lsls r4, r7, #0x10
	cmp r4, #0
	bge _0800BD62
	b _0800BEF8
_0800BD62:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	asrs r2, r2, #0x10
	str r2, [sp, #0xc]
_0800BD6C:
	asrs r4, r4, #0x10
	ldr r1, [sp, #8]
	adds r0, r4, #0
	muls r0, r1, r0
	ldr r1, [sp, #0xc]
	bl Div
	mov sl, r0
	ldr r2, [sp, #4]
	lsls r5, r2, #0x10
	asrs r0, r5, #0x10
	ldr r3, [sp, #8]
	muls r0, r3, r0
	ldr r1, [sp, #0xc]
	bl Div
	adds r3, r0, #0
	ldr r1, [sp, #0x14]
	asrs r0, r1, #0x10
	subs r1, r0, r4
	lsls r1, r1, #0x10
	adds r0, r0, r4
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	adds r6, r5, #0
	cmp r1, #0
	bge _0800BDAC
	movs r4, #0
	b _0800BDB2
_0800BDAC:
	cmp r1, #0xf0
	ble _0800BDB2
	movs r4, #0xf5
_0800BDB2:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800BDBE
	movs r2, #0
	b _0800BDC4
_0800BDBE:
	cmp r0, #0xf0
	ble _0800BDC4
	movs r2, #0xfa
_0800BDC4:
	mov r0, sp
	strh r4, [r0]
	strh r2, [r0, #2]
	ldr r2, [sp, #0x10]
	asrs r0, r2, #0x10
	adds r0, r0, r3
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800BE1C
	asrs r0, r1, #0xf
	mov r4, sb
	adds r3, r0, r4
	adds r3, #4
	mov r5, sp
	movs r2, #0
	mov r0, sp
	ldrh r1, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0xf0
	ble _0800BDF4
	movs r2, #0xf5
	b _0800BDFC
_0800BDF4:
	cmp r0, #0
	blt _0800BDFC
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
_0800BDFC:
	movs r4, #0
	ldrh r1, [r5, #2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0800BE0C
	movs r4, #0xfa
	b _0800BE14
_0800BE0C:
	cmp r0, #0
	blt _0800BE14
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
_0800BE14:
	ldrb r0, [r3, #1]
	strb r2, [r3, #1]
	ldrb r0, [r3]
	strb r4, [r3]
_0800BE1C:
	ldr r1, [sp, #0x14]
	asrs r0, r1, #0x10
	asrs r2, r6, #0x10
	subs r1, r0, r2
	lsls r1, r1, #0x10
	adds r0, r0, r2
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _0800BE3A
	movs r4, #0
	b _0800BE40
_0800BE3A:
	cmp r1, #0xf0
	ble _0800BE40
	movs r4, #0xf5
_0800BE40:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800BE4C
	movs r2, #0
	b _0800BE52
_0800BE4C:
	cmp r0, #0xf0
	ble _0800BE52
	movs r2, #0xfa
_0800BE52:
	mov r0, sp
	strh r4, [r0]
	strh r2, [r0, #2]
	ldr r2, [sp, #0x10]
	asrs r0, r2, #0x10
	add r0, sl
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800BEAA
	asrs r0, r1, #0xf
	mov r3, sb
	adds r2, r0, r3
	adds r2, #4
	mov r5, sp
	movs r4, #0
	mov r0, sp
	ldrh r1, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0xf0
	ble _0800BE82
	movs r4, #0xf5
	b _0800BE8A
_0800BE82:
	cmp r0, #0
	blt _0800BE8A
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
_0800BE8A:
	movs r3, #0
	ldrh r1, [r5, #2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0800BE9A
	movs r3, #0xfa
	b _0800BEA2
_0800BE9A:
	cmp r0, #0
	blt _0800BEA2
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
_0800BEA2:
	ldrb r0, [r2, #1]
	strb r4, [r2, #1]
	ldrb r0, [r2]
	strb r3, [r2]
_0800BEAA:
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #1
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r1, r3
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0xf
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r8, r4
	cmp r0, #0
	bge _0800BEEC
	adds r1, r7, #0
	lsls r0, r1, #0x10
	ldr r2, _0800BF10 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0xf
	subs r1, #2
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0800BEEC:
	lsls r4, r7, #0x10
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	cmp r4, r0
	blt _0800BEF8
	b _0800BD6C
_0800BEF8:
	movs r0, #0
	mov r4, sb
	strh r0, [r4]
_0800BEFE:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BF10: .4byte 0xFFFF0000

	thumb_func_start sub_0800BF14
sub_0800BF14: @ 0x0800BF14
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r1, #0
	adds r4, r2, #0
	ldr r5, [sp, #0x20]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_0800874C
	mov r8, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0xe
	adds r4, r4, r6
	ldr r0, [r4]
	adds r7, r6, r0
	ldrh r0, [r7, #2]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	movs r6, #0
	cmp r0, #0
	ble _0800C01E
	b _0800C010
_0800BF5A:
	lsls r3, r6, #2
	adds r0, r7, r3
	ldrh r1, [r0, #4]
	mov r0, sb
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800BF76
	movs r4, #0
	b _0800BF7C
_0800BF76:
	cmp r0, #0xf0
	ble _0800BF7C
	movs r4, #0xf5
_0800BF7C:
	ldr r1, _0800BF9C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r4
	str r0, [sp]
	adds r0, r7, r3
	ldrh r1, [r0, #6]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800BFA0
	movs r4, #0
	b _0800BFA6
	.align 2, 0
_0800BF9C: .4byte 0xFFFF0000
_0800BFA0:
	cmp r0, #0xf0
	ble _0800BFA6
	movs r4, #0xfa
_0800BFA6:
	lsls r2, r4, #0x10
	ldr r1, _0800BFD0 @ =0x0000FFFF
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	mov r1, ip
	asrs r0, r1, #0xf
	mov r3, r8
	adds r2, r0, r3
	adds r2, #4
	mov r4, sp
	movs r5, #0
	mov r0, sp
	ldrh r1, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0xf0
	ble _0800BFD4
	movs r5, #0xf5
	b _0800BFDC
	.align 2, 0
_0800BFD0: .4byte 0x0000FFFF
_0800BFD4:
	cmp r0, #0
	blt _0800BFDC
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
_0800BFDC:
	movs r3, #0
	ldrh r1, [r4, #2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0800BFEC
	movs r3, #0xfa
	b _0800BFF4
_0800BFEC:
	cmp r0, #0
	blt _0800BFF4
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
_0800BFF4:
	ldrb r0, [r2, #1]
	strb r5, [r2, #1]
	ldrb r0, [r2]
	strb r3, [r2]
_0800BFFC:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, ip
	lsrs r5, r0, #0x10
	adds r6, #1
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r6, r0
	bge _0800C01E
_0800C010:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	mov ip, r0
	cmp r1, #0
	blt _0800BFFC
	cmp r1, #0x9f
	ble _0800BF5A
_0800C01E:
	movs r0, #0
	mov r1, r8
	strh r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800C034
sub_0800C034: @ 0x0800C034
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	adds r4, r1, #0
	cmp r4, #0
	bne _0800C04A
	b _0800C274
_0800C04A:
	ldrh r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C068
	ldrh r2, [r7, #2]
	lsls r1, r2, #0x10
	movs r0, #0xff
	ands r0, r2
	ldrb r2, [r4]
	strb r0, [r4]
	lsrs r1, r1, #0x18
	ldrb r0, [r4, #1]
	strb r1, [r4, #1]
	b _0800C274
_0800C068:
	ldrb r0, [r7, #5]
	ldrb r2, [r7, #9]
	adds r0, r0, r2
	strb r0, [r7, #9]
	ldrb r6, [r7, #4]
	str r6, [sp]
	ldrb r0, [r7, #9]
	mov r8, r0
	ldrh r2, [r7, #2]
	mov sl, r2
	ldrb r0, [r7, #0xb]
	ldrb r6, [r7, #0xd]
	adds r0, r0, r6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xa]
	str r0, [sp, #4]
	ldrb r2, [r7, #0xd]
	mov sb, r2
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800C0DE
	movs r3, #0
	ldrb r0, [r7, #7]
	adds r6, r0, #0
	str r6, [sp, #8]
	cmp r3, r0
	bhs _0800C168
	movs r1, #0xff
	mov r2, sl
	ands r1, r2
	lsrs r2, r2, #8
	mov ip, r2
	str r0, [sp, #0x10]
	ldrb r5, [r7, #6]
	ldrb r2, [r7, #0xc]
_0800C0B0:
	ldrb r0, [r4]
	strb r1, [r4]
	ldrb r0, [r4, #1]
	mov r6, ip
	strb r6, [r4, #1]
	mov r6, r8
	adds r0, r6, r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r6, sb
	adds r0, r6, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, [sp, #0x10]
	cmp r3, r0
	blo _0800C0B0
	b _0800C168
_0800C0DE:
	ldrb r0, [r7, #6]
	ldrb r1, [r7, #7]
	adds r2, r0, #0
	muls r2, r1, r2
	adds r0, r2, #0
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldrb r0, [r7, #0xc]
	adds r6, r0, #0
	muls r6, r1, r6
	adds r0, r6, #0
	add r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r0, r8
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp]
	muls r0, r1, r0
	lsls r0, r0, #8
	lsrs r6, r0, #0x10
	ldr r5, [sp, #4]
	cmp r5, #0
	beq _0800C132
	mov r0, sb
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r5, r1
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0800C132:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	movs r3, #0
	ldrb r5, [r7, #7]
	adds r1, r5, #0
	str r1, [sp, #8]
	cmp r3, r5
	bhs _0800C168
	movs r2, #0xff
	ands r2, r6
	lsrs r1, r0, #0x18
_0800C154:
	ldrb r0, [r4]
	strb r2, [r4]
	ldrb r0, [r4, #1]
	strb r1, [r4, #1]
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r5
	blo _0800C154
_0800C168:
	ldr r3, [sp, #8]
	cmp r3, #0x9f
	bls _0800C170
	b _0800C274
_0800C170:
	movs r6, #0
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _0800C194
	ldr r5, [sp]
	cmp r5, #0
	beq _0800C1B6
	mov r0, r8
	str r3, [sp, #0xc]
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r5, r0
	lsls r0, r0, #8
	lsrs r6, r0, #0x10
	ldr r3, [sp, #0xc]
	b _0800C1B6
_0800C194:
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C1B6
	mov r0, r8
	str r3, [sp, #0xc]
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x10]
	ldr r3, [sp, #0xc]
	adds r1, r1, r3
	ldrb r1, [r1]
	muls r0, r1, r0
	lsls r0, r0, #8
	lsrs r6, r0, #0x10
_0800C1B6:
	ldr r5, [sp, #4]
	cmp r5, #0
	beq _0800C1DA
	mov r0, sb
	str r3, [sp, #0xc]
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r5, r1
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r3, [sp, #0xc]
_0800C1DA:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	movs r6, #0xff
	ands r2, r6
	ldrb r0, [r4]
	strb r2, [r4]
	lsrs r5, r1, #0x18
	ldrb r0, [r4, #1]
	strb r5, [r4, #1]
	ldrb r0, [r7, #8]
	cmp r3, r0
	blo _0800C246
	ldrh r1, [r7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800C22A
	cmp r3, #0x9f
	bhi _0800C274
	mov r1, sl
	ands r1, r6
	mov r6, sl
	lsrs r2, r6, #8
_0800C214:
	ldrb r0, [r4]
	strb r1, [r4]
	ldrb r0, [r4, #1]
	strb r2, [r4, #1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r4, #2
	cmp r3, #0x9f
	bls _0800C214
	b _0800C274
_0800C22A:
	cmp r3, #0x9f
	bhi _0800C274
	adds r1, r5, #0
_0800C230:
	ldrb r0, [r4]
	strb r2, [r4]
	ldrb r0, [r4, #1]
	strb r1, [r4, #1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r4, #2
	cmp r3, #0x9f
	bls _0800C230
	b _0800C274
_0800C246:
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _0800C252
	adds r0, r0, r3
	ldrb r0, [r0]
	b _0800C254
_0800C252:
	ldrb r0, [r7, #6]
_0800C254:
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldrb r0, [r7, #0xc]
	add r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x9f
	bhi _0800C274
	b _0800C170
_0800C274:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800C284
sub_0800C284: @ 0x0800C284
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp]
	adds r7, r1, #0
	cmp r7, #0
	bne _0800C29A
	b _0800C518
_0800C29A:
	str r7, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0xc]
_0800C2A0:
	ldr r7, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsls r0, r1, #1
	adds r1, r0, r1
	lsls r1, r1, #3
	ldr r2, [sp]
	adds r4, r2, r1
	ldrh r2, [r4]
	movs r1, #1
	ands r1, r2
	mov sl, r0
	cmp r1, #0
	beq _0800C2D6
	adds r3, r7, r0
	ldrh r1, [r4, #2]
	lsls r2, r1, #0x10
	movs r0, #0xff
	ands r0, r1
	ldrb r1, [r3]
	strb r0, [r3]
	lsrs r2, r2, #0x18
	ldrb r0, [r3, #1]
	strb r2, [r3, #1]
	ldr r0, [sp, #0xc]
	adds r0, #1
	str r0, [sp, #0x28]
	b _0800C50A
_0800C2D6:
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #9]
	adds r0, r0, r1
	strb r0, [r4, #9]
	ldrb r0, [r4, #4]
	str r0, [sp, #8]
	ldrb r1, [r4, #9]
	mov r8, r1
	ldrh r0, [r4, #2]
	str r0, [sp, #4]
	ldrb r0, [r4, #0xb]
	ldrb r1, [r4, #0xd]
	adds r0, r0, r1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #0xd]
	mov sb, r1
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _0800C34E
	movs r6, #0
	ldr r2, [sp, #0xc]
	adds r2, #1
	str r2, [sp, #0x28]
	ldrb r0, [r4, #7]
	cmp r6, r0
	bhs _0800C3E4
	mov ip, sl
	ldr r3, [sp, #4]
	movs r1, #0xff
	ands r3, r1
	ldr r2, [sp, #4]
	lsrs r5, r2, #8
	adds r2, r4, #0
_0800C31E:
	mov r1, ip
	adds r0, r7, r1
	ldrb r1, [r0]
	strb r3, [r0]
	ldrb r1, [r0, #1]
	strb r5, [r0, #1]
	ldrb r0, [r2, #6]
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldrb r0, [r2, #0xc]
	add r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r7, #4
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r2, #7]
	cmp r6, r0
	blo _0800C31E
	b _0800C3E4
_0800C34E:
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #7]
	adds r2, r0, #0
	muls r2, r1, r2
	adds r0, r2, #0
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldrb r0, [r4, #0xc]
	adds r2, r0, #0
	muls r2, r1, r2
	adds r0, r2, #0
	add r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r0, r8
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #8]
	muls r0, r1, r0
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	ldr r6, [sp, #0x14]
	cmp r6, #0
	beq _0800C3A2
	mov r0, sb
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r6, r1
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0800C3A2:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	movs r6, #0
	ldr r1, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0x28]
	ldrb r2, [r4, #7]
	cmp r6, r2
	bhs _0800C3E4
	mov ip, sl
	movs r2, #0xff
	ands r2, r5
	lsrs r5, r0, #0x18
	adds r3, r4, #0
_0800C3CA:
	mov r1, ip
	adds r0, r7, r1
	ldrb r1, [r0]
	strb r2, [r0]
	ldrb r1, [r0, #1]
	strb r5, [r0, #1]
	adds r7, #4
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r3, #7]
	cmp r6, r0
	blo _0800C3CA
_0800C3E4:
	ldr r3, [sp, #0xc]
	add r3, sl
	lsls r1, r3, #3
	ldr r0, [sp]
	adds r2, r0, r1
	ldrb r6, [r2, #7]
	cmp r6, #0x9f
	bls _0800C3F6
	b _0800C50A
_0800C3F6:
	adds r0, #0x10
	adds r0, r0, r1
	str r0, [sp, #0x18]
	str r2, [sp, #0x24]
	mov r1, sl
	str r1, [sp, #0x1c]
	str r3, [sp, #0x20]
_0800C404:
	ldr r2, [sp, #0x18]
	ldr r0, [r2]
	cmp r0, #0
	bne _0800C41A
	mov r0, r8
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #8]
	b _0800C42C
_0800C41A:
	mov r0, r8
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x18]
	ldr r1, [r2]
	adds r1, r1, r6
	ldrb r1, [r1]
_0800C42C:
	muls r0, r1, r0
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	ldr r4, [sp, #0x14]
	cmp r4, #0
	beq _0800C452
	mov r0, sb
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0800C452:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r2, [sp, #0x1c]
	adds r0, r7, r2
	movs r2, #0xff
	ands r4, r2
	ldrb r2, [r0]
	strb r4, [r0]
	lsrs r5, r1, #0x18
	ldrb r1, [r0, #1]
	strb r5, [r0, #1]
	ldr r0, [sp, #0x20]
	lsls r2, r0, #3
	ldr r0, [sp]
	adds r1, r0, r2
	ldrb r0, [r1, #8]
	cmp r6, r0
	blo _0800C4D4
	ldrh r1, [r1]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800C4B4
	cmp r6, #0x9f
	bhi _0800C50A
	mov r3, sl
	ldr r2, [sp, #4]
	movs r1, #0xff
	ands r2, r1
	ldr r0, [sp, #4]
	lsrs r4, r0, #8
_0800C49C:
	adds r0, r7, r3
	ldrb r1, [r0]
	strb r2, [r0]
	ldrb r1, [r0, #1]
	strb r4, [r0, #1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r7, #4
	cmp r6, #0x9f
	bls _0800C49C
	b _0800C50A
_0800C4B4:
	cmp r6, #0x9f
	bhi _0800C50A
	mov r3, sl
	adds r2, r5, #0
_0800C4BC:
	adds r0, r7, r3
	ldrb r1, [r0]
	strb r4, [r0]
	ldrb r1, [r0, #1]
	strb r2, [r0, #1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r7, #4
	cmp r6, #0x9f
	bls _0800C4BC
	b _0800C50A
_0800C4D4:
	ldr r0, [sp]
	adds r0, #0x14
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0800C4E6
	adds r0, r0, r6
	ldrb r0, [r0]
	b _0800C4E8
_0800C4E6:
	ldrb r0, [r1, #6]
_0800C4E8:
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, [sp, #0x24]
	ldrb r0, [r1, #0xc]
	add r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r7, #4
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x9f
	bhi _0800C50A
	b _0800C404
_0800C50A:
	ldr r2, [sp, #0x28]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	cmp r0, #1
	bhi _0800C518
	b _0800C2A0
_0800C518:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800C528
sub_0800C528: @ 0x0800C528
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp]
	adds r7, r1, #0
	str r7, [sp, #0x10]
	adds r0, r7, #0
	cmp r0, #0
	bne _0800C542
	b _0800C7C6
_0800C542:
	movs r1, #0
	str r1, [sp, #0xc]
_0800C546:
	ldr r7, [sp, #0x10]
	ldr r2, [sp, #0xc]
	lsls r0, r2, #1
	adds r1, r0, r2
	lsls r1, r1, #3
	ldr r2, [sp]
	adds r4, r2, r1
	ldrh r2, [r4]
	movs r1, #1
	ands r1, r2
	mov sl, r0
	cmp r1, #0
	beq _0800C57C
	adds r3, r7, r0
	ldrh r1, [r4, #2]
	lsls r2, r1, #0x10
	movs r0, #0xff
	ands r0, r1
	ldrb r1, [r3]
	strb r0, [r3]
	lsrs r2, r2, #0x18
	ldrb r0, [r3, #1]
	strb r2, [r3, #1]
	ldr r0, [sp, #0xc]
	adds r0, #1
	str r0, [sp, #0x28]
	b _0800C7B8
_0800C57C:
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #9]
	adds r0, r0, r1
	strb r0, [r4, #9]
	ldrb r0, [r4, #4]
	str r0, [sp, #8]
	ldrb r1, [r4, #9]
	mov r8, r1
	ldrh r0, [r4, #2]
	str r0, [sp, #4]
	ldrb r0, [r4, #0xb]
	ldrb r1, [r4, #0xd]
	adds r0, r0, r1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #0xd]
	mov sb, r1
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _0800C5F4
	movs r6, #0
	ldr r2, [sp, #0xc]
	adds r2, #1
	str r2, [sp, #0x28]
	ldrb r0, [r4, #7]
	cmp r6, r0
	bhs _0800C68A
	mov ip, sl
	ldr r3, [sp, #4]
	movs r1, #0xff
	ands r3, r1
	ldr r2, [sp, #4]
	lsrs r5, r2, #8
	adds r2, r4, #0
_0800C5C4:
	mov r1, ip
	adds r0, r7, r1
	ldrb r1, [r0]
	strb r3, [r0]
	ldrb r1, [r0, #1]
	strb r5, [r0, #1]
	ldrb r0, [r2, #6]
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldrb r0, [r2, #0xc]
	add r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r7, #8
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r2, #7]
	cmp r6, r0
	blo _0800C5C4
	b _0800C68A
_0800C5F4:
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #7]
	adds r2, r0, #0
	muls r2, r1, r2
	adds r0, r2, #0
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldrb r0, [r4, #0xc]
	adds r2, r0, #0
	muls r2, r1, r2
	adds r0, r2, #0
	add r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r0, r8
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #8]
	muls r0, r1, r0
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	ldr r6, [sp, #0x14]
	cmp r6, #0
	beq _0800C648
	mov r0, sb
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r6, r1
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0800C648:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	movs r6, #0
	ldr r1, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0x28]
	ldrb r2, [r4, #7]
	cmp r6, r2
	bhs _0800C68A
	mov ip, sl
	movs r2, #0xff
	ands r2, r5
	lsrs r5, r0, #0x18
	adds r3, r4, #0
_0800C670:
	mov r1, ip
	adds r0, r7, r1
	ldrb r1, [r0]
	strb r2, [r0]
	ldrb r1, [r0, #1]
	strb r5, [r0, #1]
	adds r7, #8
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r3, #7]
	cmp r6, r0
	blo _0800C670
_0800C68A:
	ldr r3, [sp, #0xc]
	add r3, sl
	lsls r1, r3, #3
	ldr r0, [sp]
	adds r2, r0, r1
	ldrb r6, [r2, #7]
	cmp r6, #0x9f
	bls _0800C69C
	b _0800C7B8
_0800C69C:
	adds r0, #0x10
	adds r0, r0, r1
	str r0, [sp, #0x18]
	str r2, [sp, #0x24]
	mov r1, sl
	str r1, [sp, #0x1c]
	str r3, [sp, #0x20]
_0800C6AA:
	movs r5, #0
	ldr r2, [sp, #0x18]
	ldr r0, [r2]
	cmp r0, #0
	bne _0800C6C8
	ldr r4, [sp, #8]
	cmp r4, #0
	beq _0800C6E0
	mov r0, r8
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r4, r0
	b _0800C6DC
_0800C6C8:
	mov r0, r8
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x18]
	ldr r1, [r2]
	adds r1, r1, r6
	ldrb r1, [r1]
	muls r0, r1, r0
_0800C6DC:
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
_0800C6E0:
	ldr r4, [sp, #0x14]
	cmp r4, #0
	beq _0800C700
	mov r0, sb
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0800C700:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r2, [sp, #0x1c]
	adds r0, r7, r2
	movs r2, #0xff
	ands r4, r2
	ldrb r2, [r0]
	strb r4, [r0]
	lsrs r5, r1, #0x18
	ldrb r1, [r0, #1]
	strb r5, [r0, #1]
	ldr r0, [sp, #0x20]
	lsls r2, r0, #3
	ldr r0, [sp]
	adds r1, r0, r2
	ldrb r0, [r1, #8]
	cmp r6, r0
	blo _0800C782
	ldrh r1, [r1]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800C762
	cmp r6, #0x9f
	bhi _0800C7B8
	mov r3, sl
	ldr r2, [sp, #4]
	movs r1, #0xff
	ands r2, r1
	ldr r0, [sp, #4]
	lsrs r4, r0, #8
_0800C74A:
	adds r0, r7, r3
	ldrb r1, [r0]
	strb r2, [r0]
	ldrb r1, [r0, #1]
	strb r4, [r0, #1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r7, #8
	cmp r6, #0x9f
	bls _0800C74A
	b _0800C7B8
_0800C762:
	cmp r6, #0x9f
	bhi _0800C7B8
	mov r3, sl
	adds r2, r5, #0
_0800C76A:
	adds r0, r7, r3
	ldrb r1, [r0]
	strb r4, [r0]
	ldrb r1, [r0, #1]
	strb r2, [r0, #1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r7, #8
	cmp r6, #0x9f
	bls _0800C76A
	b _0800C7B8
_0800C782:
	ldr r0, [sp]
	adds r0, #0x14
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0800C794
	adds r0, r0, r6
	ldrb r0, [r0]
	b _0800C796
_0800C794:
	ldrb r0, [r1, #6]
_0800C796:
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, [sp, #0x24]
	ldrb r0, [r1, #0xc]
	add r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r7, #8
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x9f
	bhi _0800C7B8
	b _0800C6AA
_0800C7B8:
	ldr r2, [sp, #0x28]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	cmp r0, #3
	bhi _0800C7C6
	b _0800C546
_0800C7C6:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800C7D8
sub_0800C7D8: @ 0x0800C7D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	mov sb, r0
	adds r7, r1, #0
	cmp r7, #0
	bne _0800C7EE
	b _0800CA86
_0800C7EE:
	movs r3, #0
	ldrh r0, [r0]
	cmp r0, #1
	beq _0800C80C
	cmp r0, #1
	bgt _0800C800
	cmp r0, #0
	beq _0800C806
	b _0800C816
_0800C800:
	cmp r0, #2
	beq _0800C812
	b _0800C816
_0800C806:
	mov r0, sb
	ldrh r3, [r0, #0x38]
	b _0800C816
_0800C80C:
	mov r1, sb
	ldrh r3, [r1, #0x3a]
	b _0800C816
_0800C812:
	mov r2, sb
	ldrh r3, [r2, #0x3a]
_0800C816:
	mov r4, sb
	movs r0, #6
	ldrsh r5, [r4, r0]
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	lsls r5, r5, #8
	movs r2, #4
	ldrsh r4, [r4, r2]
	mov r0, sb
	ldrh r0, [r0, #8]
	adds r4, r4, r0
	lsls r4, r4, #8
	mov r1, sb
	str r5, [r1, #0xc]
	str r4, [r1, #0x10]
	ldrh r0, [r1, #4]
	movs r2, #0
	mov r8, r2
	strh r0, [r1, #0x16]
	mov r0, sb
	adds r0, #0xc
	add r6, sp, #0x28
	adds r1, r6, #0
	movs r2, #1
	str r3, [sp, #0x74]
	bl BgAffineSet
	str r5, [sp, #4]
	str r4, [sp, #8]
	add r1, sp, #4
	mov r4, sb
	ldrh r0, [r4, #0x28]
	strh r0, [r1, #8]
	adds r0, r1, #0
	ldrh r2, [r4, #4]
	strh r2, [r0, #0xa]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	mov r1, r8
	strh r1, [r0, #0x10]
	ldr r3, [sp, #0x74]
	subs r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r8, r4
	mov sl, r6
	cmp r0, #0
	bge _0800C880
	movs r0, #0
	mov r8, r0
_0800C880:
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	mov r1, sb
	movs r4, #4
	ldrsh r0, [r1, r4]
	cmp r0, r3
	blt _0800C896
	movs r6, #0
	b _0800C89C
_0800C896:
	subs r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0800C89C:
	lsls r0, r3, #1
	adds r0, #1
	add r4, sp, #0x38
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x80
	bl sub_080080A0
	movs r5, #0
	mov r0, r8
	lsls r0, r0, #0x10
	str r0, [sp, #0x6c]
	cmp r5, r6
	bge _0800C8D2
_0800C8BC:
	add r0, sp, #0x38
	bl sub_080080F4
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	blt _0800C8BC
_0800C8D2:
	movs r5, #0
	mov r2, sl
	str r2, [sp, #0x68]
	movs r3, #0xff
	mov r8, r3
	add r4, sp, #0x18
	mov sl, r4
_0800C8E0:
	lsls r0, r5, #0x10
	asrs r6, r0, #0x10
	str r0, [sp, #0x70]
	ldr r1, [sp, #0x6c]
	cmp r0, r1
	blt _0800C8F6
	ldr r2, [sp, #0x64]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r6, r0
	ble _0800C98E
_0800C8F6:
	ldr r3, [sp, #0x68]
	ldrh r1, [r3]
	lsls r2, r1, #0x10
	mov r0, r8
	ands r0, r1
	ldrb r1, [r7]
	strb r0, [r7]
	lsrs r2, r2, #0x18
	ldrb r0, [r7, #1]
	strb r2, [r7, #1]
	ldrh r1, [r3, #2]
	lsls r2, r1, #0x10
	mov r0, r8
	ands r0, r1
	ldrb r1, [r7, #2]
	strb r0, [r7, #2]
	lsrs r2, r2, #0x18
	ldrb r0, [r7, #3]
	strb r2, [r7, #3]
	ldrh r1, [r3, #4]
	lsls r2, r1, #0x10
	mov r0, r8
	ands r0, r1
	ldrb r1, [r7, #4]
	strb r0, [r7, #4]
	lsrs r2, r2, #0x18
	ldrb r0, [r7, #5]
	strb r2, [r7, #5]
	ldrh r1, [r3, #6]
	lsls r2, r1, #0x10
	mov r0, r8
	ands r0, r1
	ldrb r1, [r7, #6]
	strb r0, [r7, #6]
	lsrs r2, r2, #0x18
	ldrb r0, [r7, #7]
	strb r2, [r7, #7]
	ldr r1, [r3, #8]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	mov r4, r8
	ands r0, r4
	ldrb r3, [r7, #8]
	strb r0, [r7, #8]
	lsrs r2, r2, #0x18
	ldrb r0, [r7, #9]
	strb r2, [r7, #9]
	asrs r1, r1, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	ands r0, r4
	ldrb r2, [r7, #0xa]
	strb r0, [r7, #0xa]
	lsrs r1, r1, #0x18
	ldrb r0, [r7, #0xb]
	strb r1, [r7, #0xb]
	mov r0, sb
	ldrh r1, [r0, #8]
	adds r1, r1, r6
	lsls r0, r1, #0x18
	movs r2, #0
	ldrb r3, [r7, #0xc]
	strb r2, [r7, #0xc]
	lsrs r0, r0, #0x18
	ldrb r2, [r7, #0xd]
	strb r0, [r7, #0xd]
	asrs r1, r1, #8
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	ands r0, r4
	ldrb r2, [r7, #0xe]
	strb r0, [r7, #0xe]
	lsrs r1, r1, #0x18
	ldrb r0, [r7, #0xf]
	strb r1, [r7, #0xf]
	b _0800CA72
_0800C98E:
	ldr r4, [sp, #0x38]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r2, sp, #4
	lsls r1, r6, #1
	mov r0, sb
	adds r0, #0x3c
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r0, r2, #0
	mov r1, sl
	movs r2, #1
	bl BgAffineSet
	adds r4, #0x40
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	movs r3, #0x34
	ldrsh r1, [r2, r3]
	adds r4, r0, #0
	muls r4, r1, r4
	lsls r4, r4, #8
	ldrh r0, [r2, #8]
	adds r0, r0, r5
	asrs r4, r4, #0x10
	adds r4, r4, r0
	mov r0, sl
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	mov r0, r8
	ands r0, r1
	ldrb r1, [r7]
	strb r0, [r7]
	lsrs r2, r2, #0x18
	ldrb r0, [r7, #1]
	strb r2, [r7, #1]
	mov r2, sl
	ldrh r1, [r2, #2]
	lsls r2, r1, #0x10
	mov r0, r8
	ands r0, r1
	ldrb r1, [r7, #2]
	strb r0, [r7, #2]
	lsrs r2, r2, #0x18
	ldrb r0, [r7, #3]
	strb r2, [r7, #3]
	mov r3, sl
	ldrh r1, [r3, #4]
	lsls r2, r1, #0x10
	mov r0, r8
	ands r0, r1
	ldrb r1, [r7, #4]
	strb r0, [r7, #4]
	lsrs r2, r2, #0x18
	ldrb r0, [r7, #5]
	strb r2, [r7, #5]
	ldrh r1, [r3, #6]
	lsls r2, r1, #0x10
	mov r0, r8
	ands r0, r1
	ldrb r1, [r7, #6]
	strb r0, [r7, #6]
	lsrs r2, r2, #0x18
	ldrb r0, [r7, #7]
	strb r2, [r7, #7]
	ldr r1, [r3, #8]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	mov r3, r8
	ands r0, r3
	ldrb r3, [r7, #8]
	strb r0, [r7, #8]
	lsrs r2, r2, #0x18
	ldrb r0, [r7, #9]
	strb r2, [r7, #9]
	asrs r1, r1, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	mov r2, r8
	ands r0, r2
	ldrb r2, [r7, #0xa]
	strb r0, [r7, #0xa]
	lsrs r1, r1, #0x18
	ldrb r0, [r7, #0xb]
	strb r1, [r7, #0xb]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #0x18
	movs r1, #0
	ldrb r2, [r7, #0xc]
	strb r1, [r7, #0xc]
	lsrs r0, r0, #0x18
	ldrb r1, [r7, #0xd]
	strb r0, [r7, #0xd]
	asrs r4, r4, #8
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	mov r3, r8
	ands r0, r3
	ldrb r1, [r7, #0xe]
	strb r0, [r7, #0xe]
	lsrs r4, r4, #0x18
	ldrb r0, [r7, #0xf]
	strb r4, [r7, #0xf]
	add r0, sp, #0x38
	bl sub_080080F4
_0800CA72:
	adds r7, #0x10
	ldr r4, [sp, #0x70]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	bgt _0800CA86
	b _0800C8E0
_0800CA86:
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800CA98
sub_0800CA98: @ 0x0800CA98
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r2, r1, #0
	ldrh r1, [r5]
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #1
	bgt _0800CAE4
	mov ip, r1
	ldrh r0, [r5, #2]
	movs r6, #1
	ands r6, r0
	adds r3, r5, #4
	movs r0, #0xa1
	lsls r0, r0, #1
	adds r7, r5, r0
	adds r4, r5, #5
_0800CABA:
	cmp r6, #0
	beq _0800CAC8
	ldrb r0, [r3]
	ldrb r1, [r2, #1]
	strb r0, [r2, #1]
	ldrb r0, [r4]
	b _0800CAD0
_0800CAC8:
	ldrb r0, [r4]
	ldrb r1, [r2, #1]
	strb r0, [r2, #1]
	ldrb r0, [r3]
_0800CAD0:
	ldrb r1, [r2]
	strb r0, [r2]
	adds r2, #2
	adds r3, #2
	adds r4, #2
	cmp r3, r7
	ble _0800CABA
	mov r0, ip
	adds r0, #1
	strh r0, [r5]
_0800CAE4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800CAEC
sub_0800CAEC: @ 0x0800CAEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	mov r8, r1
	ldrb r0, [r5, #0xa]
	cmp r0, #0xf
	bhi _0800CBB4
	ldrh r2, [r5]
	ldrb r7, [r5, #8]
	ldrh r1, [r5, #0xc]
	cmp r1, #0
	bne _0800CB54
	movs r6, #0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	mov r4, r8
_0800CB16:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r6, r0
	blt _0800CB3C
	movs r2, #6
	ldrsh r0, [r5, r2]
	cmp r6, r0
	bge _0800CB3C
	adds r0, r7, #0
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r3, [r5, #0xa]
	asrs r0, r3
	add r0, sb
	strb r0, [r4]
	lsrs r0, r0, #8
	strb r0, [r4, #1]
_0800CB3C:
	ldrb r0, [r5, #9]
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r4, #4
	adds r6, #1
	cmp r6, #0x9f
	ble _0800CB16
	ldrh r4, [r5, #2]
	ldrb r6, [r5, #0xe]
	mov sl, r6
	b _0800CBD0
_0800CB54:
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	subs r0, r0, r1
	movs r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	mov r4, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
_0800CB6C:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r6, r0
	blt _0800CB9C
	movs r2, #6
	ldrsh r0, [r5, r2]
	cmp r6, r0
	bge _0800CB9C
	adds r0, r7, #0
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r3, [r5, #0xa]
	asrs r0, r3
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	add r0, sb
	strb r0, [r4]
	lsrs r0, r0, #8
	strb r0, [r4, #1]
_0800CB9C:
	ldrb r0, [r5, #9]
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r4, #4
	adds r6, #1
	cmp r6, #0x9f
	ble _0800CB6C
	ldrh r4, [r5, #2]
	ldrb r2, [r5, #0xe]
	mov sl, r2
	b _0800CBD0
_0800CBB4:
	ldrh r4, [r5, #2]
	ldrb r3, [r5, #0xe]
	mov sl, r3
	ldrh r0, [r5]
	ldrb r3, [r5]
	lsrs r0, r0, #8
	mov r1, r8
	movs r2, #0x9f
_0800CBC4:
	strb r3, [r1]
	strb r0, [r1, #1]
	adds r1, #4
	subs r2, #1
	cmp r2, #0
	bge _0800CBC4
_0800CBD0:
	adds r6, r4, #0
	movs r7, #0xff
	mov sb, r7
	mov r2, r8
	adds r2, #2
	movs r3, #0x9f
_0800CBDC:
	adds r0, r6, #0
	lsls r1, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #9
	adds r1, r1, r6
	lsrs r6, r1, #0x10
	adds r1, r0, #0
	mov r7, sb
	ands r1, r7
	strb r1, [r2]
	lsrs r0, r0, #8
	strb r0, [r2, #1]
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	bge _0800CBDC
	mov r0, sl
	cmp r0, #1
	bls _0800CC8C
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0800CC8C
	movs r7, #0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	cmp r7, r0
	bge _0800CC8C
_0800CC12:
	adds r6, r4, #0
	ldr r1, [r5, #0x10]
	lsls r0, r7, #2
	adds r0, r0, r1
	movs r2, #2
	ldrsh r1, [r0, r2]
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r4, #6
	ldrsh r3, [r0, r4]
	movs r4, #4
	ldrsh r0, [r0, r4]
	str r0, [sp]
	add r0, sp, #4
	bl sub_08007DE8
	add r0, sp, #4
	movs r1, #2
	ldrsh r3, [r0, r1]
	cmp r3, #0x9f
	bhi _0800CC50
	lsls r0, r3, #2
	add r0, r8
	add r2, sp, #4
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	strb r1, [r0, #2]
	lsrs r1, r1, #8
	strb r1, [r0, #3]
_0800CC50:
	adds r7, #1
	add r4, sp, #4
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
_0800CC58:
	add r0, sp, #4
	bl sub_08007E68
	movs r2, #2
	ldrsh r3, [r4, r2]
	cmp r3, #0x9f
	bhi _0800CC74
	lsls r1, r3, #2
	add r1, r8
	ldrh r0, [r4]
	adds r0, r6, r0
	strb r0, [r1, #2]
	lsrs r0, r0, #8
	strb r0, [r1, #3]
_0800CC74:
	add r0, sp, #4
	bl sub_08008158
	cmp r0, #0
	beq _0800CC58
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
	ldrb r0, [r5, #0xe]
	subs r0, #1
	ldrh r4, [r5, #2]
	cmp r7, r0
	blt _0800CC12
_0800CC8C:
	movs r3, #0
	movs r4, #0xff
	mov r2, r8
	adds r2, #2
_0800CC94:
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	ands r0, r4
	strb r0, [r2]
	lsrs r1, r1, #0x18
	strb r1, [r2, #1]
	adds r2, #4
	adds r3, #1
	cmp r3, #0x9f
	ble _0800CC94
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800CCC8
sub_0800CCC8: @ 0x0800CCC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r6, r0, #0
	mov sb, r1
	ldrb r0, [r6, #0xa]
	cmp r0, #0xf
	bhi _0800CD2C
	movs r2, #0
	adds r0, r6, #4
	str r0, [sp, #0x20]
_0800CCE4:
	lsls r0, r2, #1
	adds r0, r6, r0
	ldrb r5, [r6, #8]
	lsls r1, r2, #2
	adds r2, #1
	mov r8, r2
	movs r3, #0
	ldrsh r2, [r0, r3]
	mov r7, sb
	adds r4, r7, r1
	movs r7, #0x9f
_0800CCFA:
	adds r0, r5, #0
	str r2, [sp, #0x28]
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r6, #0xa]
	asrs r0, r1
	ldr r2, [sp, #0x28]
	adds r0, r0, r2
	strb r0, [r4]
	lsrs r0, r0, #8
	strb r0, [r4, #1]
	ldrb r0, [r6, #9]
	adds r0, r5, r0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #8
	subs r7, #1
	cmp r7, #0
	bge _0800CCFA
	mov r2, r8
	cmp r2, #1
	ble _0800CCE4
	b _0800CD5A
_0800CD2C:
	movs r2, #0
	adds r3, r6, #4
	str r3, [sp, #0x20]
	movs r5, #0xff
_0800CD34:
	lsls r0, r2, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	lsls r1, r2, #2
	adds r4, r2, #1
	adds r2, r0, #0
	ands r2, r5
	lsrs r0, r0, #8
	add r1, sb
	movs r3, #0x9f
_0800CD48:
	strb r2, [r1]
	strb r0, [r1, #1]
	adds r1, #8
	subs r3, #1
	cmp r3, #0
	bge _0800CD48
	adds r2, r4, #0
	cmp r2, #1
	ble _0800CD34
_0800CD5A:
	movs r2, #0
	movs r5, #0xff
	mov sl, r5
_0800CD60:
	lsls r0, r2, #1
	ldr r7, [sp, #0x20]
	adds r1, r7, r0
	ldrh r5, [r1]
	str r0, [sp, #0x24]
	lsls r0, r2, #2
	mov r8, r0
	ldrb r4, [r6, #0xb]
	adds r2, #1
	str r2, [sp, #0x1c]
	adds r0, #2
	mov r1, sb
	adds r3, r1, r0
	movs r2, #0x9f
_0800CD7C:
	adds r0, r5, #0
	lsls r1, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #9
	adds r1, r1, r5
	lsrs r5, r1, #0x10
	adds r1, r0, #0
	mov r7, sl
	ands r1, r7
	strb r1, [r3]
	lsrs r0, r0, #8
	strb r0, [r3, #1]
	adds r3, #8
	subs r2, #1
	cmp r2, #0
	bge _0800CD7C
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800CE40
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _0800CE40
	movs r4, #0
	b _0800CE38
_0800CDAE:
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	adds r0, r1, r2
	ldrh r5, [r0]
	ldr r1, [r6, #0xc]
	lsls r0, r4, #2
	adds r0, r0, r1
	movs r3, #2
	ldrsh r1, [r0, r3]
	movs r7, #0
	ldrsh r2, [r0, r7]
	movs r7, #6
	ldrsh r3, [r0, r7]
	movs r7, #4
	ldrsh r0, [r0, r7]
	str r0, [sp]
	add r0, sp, #4
	bl sub_08007DE8
	add r0, sp, #4
	movs r1, #2
	ldrsh r2, [r0, r1]
	cmp r2, #0x9f
	bhi _0800CDFC
	lsls r2, r2, #3
	add r2, sb
	add r2, r8
	adds r1, r0, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r3, sl
	ands r1, r3
	strb r1, [r2, #2]
	lsrs r0, r0, #0x18
	strb r0, [r2, #3]
_0800CDFC:
	adds r7, r4, #1
	add r4, sp, #4
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
_0800CE04:
	add r0, sp, #4
	bl sub_08007E68
	movs r0, #2
	ldrsh r2, [r4, r0]
	cmp r2, #0x9f
	bhi _0800CE2A
	lsls r2, r2, #3
	add r2, sb
	add r2, r8
	ldrh r1, [r4]
	adds r1, r5, r1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	mov r3, sl
	ands r0, r3
	strb r0, [r2, #2]
	lsrs r1, r1, #0x18
	strb r1, [r2, #3]
_0800CE2A:
	add r0, sp, #4
	bl sub_08008158
	cmp r0, #0
	beq _0800CE04
	lsls r0, r7, #0x18
	lsrs r4, r0, #0x18
_0800CE38:
	ldrb r0, [r6, #0xb]
	subs r0, #1
	cmp r4, r0
	blt _0800CDAE
_0800CE40:
	movs r2, #0
	movs r4, #0xff
	mov r0, r8
	adds r0, #2
	mov r5, sb
	adds r3, r5, r0
_0800CE4C:
	ldrb r0, [r3]
	ldrb r1, [r3, #1]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	ands r0, r4
	strb r0, [r3]
	lsrs r1, r1, #0x18
	strb r1, [r3, #1]
	adds r3, #8
	adds r2, #1
	cmp r2, #0x9f
	ble _0800CE4C
	ldr r2, [sp, #0x1c]
	cmp r2, #1
	bgt _0800CE76
	b _0800CD60
_0800CE76:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800CE88
sub_0800CE88: @ 0x0800CE88
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0800CECC @ =sub_0800D950
	movs r1, #0xa2
	lsls r1, r1, #1
	ldr r3, _0800CED0 @ =0x04000052
	movs r2, #2
	bl sub_080083C8
	adds r4, r0, #0
	bl sub_0800874C
	movs r1, #0
	strh r1, [r0]
	adds r2, r0, #3
	adds r1, r0, #2
	movs r3, #0x9f
_0800CEB0:
	ldrb r0, [r1]
	strb r6, [r1]
	ldrb r0, [r2]
	strb r5, [r2]
	adds r2, #2
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _0800CEB0
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800CECC: .4byte sub_0800D950
_0800CED0: .4byte 0x04000052

	thumb_func_start sub_0800CED4
sub_0800CED4: @ 0x0800CED4
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	ldr r0, _0800CF20 @ =sub_0800CA98
	movs r1, #0xa2
	lsls r1, r1, #1
	lsrs r3, r3, #0x17
	ldr r2, _0800CF24 @ =0x04000040
	adds r3, r3, r2
	movs r2, #2
	bl sub_080083C8
	adds r4, r0, #0
	bl sub_0800874C
	movs r1, #0
	strh r1, [r0]
	adds r2, r0, #4
	adds r1, r0, #5
	movs r3, #0x9f
_0800CF04:
	ldrb r0, [r1]
	strb r6, [r1]
	ldrb r0, [r2]
	strb r5, [r2]
	adds r2, #2
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _0800CF04
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800CF20: .4byte sub_0800CA98
_0800CF24: .4byte 0x04000040

	thumb_func_start sub_0800CF28
sub_0800CF28: @ 0x0800CF28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	ldr r0, [sp, #0x2c]
	ldr r4, [sp, #0x30]
	ldr r5, [sp, #0x34]
	ldr r6, [sp, #0x38]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r1, #1
	beq _0800CF7E
	cmp r1, #1
	bgt _0800CF6E
	cmp r1, #0
	beq _0800CF76
	b _0800CF8E
_0800CF6E:
	mov r0, sb
	cmp r0, #2
	beq _0800CF7E
	b _0800CF8E
_0800CF76:
	mov r0, r8
	bl sub_0800874C
	b _0800CF8C
_0800CF7E:
	mov r0, r8
	bl sub_0800874C
	lsls r1, r7, #1
	adds r1, r1, r7
	lsls r1, r1, #3
	adds r0, r0, r1
_0800CF8C:
	mov ip, r0
_0800CF8E:
	ldr r1, _0800CFE8 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r5
	mov r1, sl
	lsls r2, r1, #0x10
	ldr r1, _0800CFEC @ =0xFF00FFFF
	ands r0, r1
	orrs r0, r2
	ldr r1, [sp, #8]
	lsls r2, r1, #0x18
	ldr r1, _0800CFF0 @ =0x00FFFFFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	ldr r1, _0800CFF4 @ =0xFFFFFF00
	mov r3, sp
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r4
	lsls r2, r6, #8
	ldr r1, _0800CFF8 @ =0xFFFF00FF
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r0, sp
	ldrh r0, [r0]
	mov r1, ip
	strh r0, [r1, #2]
	ldrb r0, [r3, #2]
	strb r0, [r1, #4]
	ldrb r0, [r3, #3]
	strb r0, [r1, #5]
	ldrb r0, [r3, #4]
	strb r0, [r1, #6]
	ldrb r0, [r3, #5]
	strb r0, [r1, #9]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CFE8: .4byte 0xFFFF0000
_0800CFEC: .4byte 0xFF00FFFF
_0800CFF0: .4byte 0x00FFFFFF
_0800CFF4: .4byte 0xFFFFFF00
_0800CFF8: .4byte 0xFFFF00FF

	thumb_func_start sub_0800CFFC
sub_0800CFFC: @ 0x0800CFFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	ldr r0, [sp, #0x20]
	ldr r4, [sp, #0x24]
	ldr r5, [sp, #0x28]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r1, #1
	beq _0800D04C
	cmp r1, #1
	bgt _0800D03A
	cmp r1, #0
	beq _0800D042
	b _0800D05A
_0800D03A:
	mov r0, r8
	cmp r0, #2
	beq _0800D04C
	b _0800D05A
_0800D042:
	mov r0, ip
	bl sub_0800874C
	adds r7, r0, #0
	b _0800D05A
_0800D04C:
	mov r0, ip
	bl sub_0800874C
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #3
	adds r7, r0, r1
_0800D05A:
	mov r0, sb
	strb r0, [r7, #0xa]
	mov r0, sl
	strb r0, [r7, #0xb]
	strb r4, [r7, #0xc]
	strb r5, [r7, #0xd]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D074
sub_0800D074: @ 0x0800D074
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, [sp, #0x18]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r1, #1
	beq _0800D0B2
	cmp r1, #1
	bgt _0800D0A0
	cmp r1, #0
	beq _0800D0A8
	b _0800D0C0
_0800D0A0:
	mov r0, ip
	cmp r0, #2
	beq _0800D0B2
	b _0800D0C0
_0800D0A8:
	adds r0, r5, #0
	bl sub_0800874C
	adds r6, r0, #0
	b _0800D0C0
_0800D0B2:
	adds r0, r5, #0
	bl sub_0800874C
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	adds r6, r0, r1
_0800D0C0:
	adds r1, r6, #0
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800D0D2
	movs r0, #0
	mov r8, r0
	b _0800D0DA
_0800D0D2:
	cmp r0, #0x9f
	ble _0800D0DA
	movs r2, #0xa0
	mov r8, r2
_0800D0DA:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800D0E6
	movs r7, #0
	b _0800D0EC
_0800D0E6:
	cmp r0, #0x9f
	ble _0800D0EC
	movs r7, #0x9f
_0800D0EC:
	mov r0, r8
	strb r0, [r1, #7]
	strb r7, [r1, #8]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D0FC
sub_0800D0FC: @ 0x0800D0FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r7, #0
	cmp r6, #1
	beq _0800D122
	cmp r6, #1
	bgt _0800D118
	cmp r6, #0
	beq _0800D11E
	b _0800D128
_0800D118:
	cmp r6, #2
	beq _0800D126
	b _0800D128
_0800D11E:
	movs r7, #1
	b _0800D128
_0800D122:
	movs r7, #2
	b _0800D128
_0800D126:
	movs r7, #4
_0800D128:
	movs r5, #0
	cmp r5, r7
	bge _0800D146
	adds r4, r2, #0
_0800D130:
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	mov r0, r8
	adds r1, r6, #0
	adds r3, r4, #0
	bl sub_0800B788
	adds r4, #8
	adds r5, #1
	cmp r5, r7
	blt _0800D130
_0800D146:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D150
sub_0800D150: @ 0x0800D150
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	mov r8, r3
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	movs r6, #0
	cmp r5, #1
	beq _0800D180
	cmp r5, #1
	bgt _0800D176
	cmp r5, #0
	beq _0800D17C
	b _0800D186
_0800D176:
	cmp r5, #2
	beq _0800D184
	b _0800D186
_0800D17C:
	movs r6, #1
	b _0800D186
_0800D180:
	movs r6, #2
	b _0800D186
_0800D184:
	movs r6, #4
_0800D186:
	movs r4, #0
	cmp r4, r6
	bge _0800D1A4
_0800D18C:
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	mov r0, r8
	str r0, [sp]
	mov r0, sb
	adds r1, r5, #0
	adds r3, r7, #0
	bl sub_0800B89C
	adds r4, #1
	cmp r4, r6
	blt _0800D18C
_0800D1A4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D1B4
sub_0800D1B4: @ 0x0800D1B4
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r1, #1
	beq _0800D1DC
	cmp r1, #1
	bgt _0800D1CE
	cmp r1, #0
	beq _0800D1D4
	b _0800D1E8
_0800D1CE:
	cmp r5, #2
	beq _0800D1DC
	b _0800D1E8
_0800D1D4:
	bl sub_0800874C
	adds r3, r0, #0
	b _0800D1E8
_0800D1DC:
	bl sub_0800874C
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	adds r3, r0, r1
_0800D1E8:
	ldrh r1, [r3]
	movs r0, #1
	orrs r0, r1
	strh r0, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D1F8
sub_0800D1F8: @ 0x0800D1F8
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r1, #1
	beq _0800D220
	cmp r1, #1
	bgt _0800D212
	cmp r1, #0
	beq _0800D218
	b _0800D22C
_0800D212:
	cmp r5, #2
	beq _0800D220
	b _0800D22C
_0800D218:
	bl sub_0800874C
	adds r3, r0, #0
	b _0800D22C
_0800D220:
	bl sub_0800874C
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	adds r3, r0, r1
_0800D22C:
	ldrh r1, [r3]
	ldr r0, _0800D23C @ =0x0000FFFE
	ands r0, r1
	strh r0, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D23C: .4byte 0x0000FFFE

	thumb_func_start sub_0800D240
sub_0800D240: @ 0x0800D240
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	cmp r1, #1
	beq _0800D26C
	cmp r1, #1
	bgt _0800D25E
	cmp r1, #0
	beq _0800D264
	b _0800D278
_0800D25E:
	cmp r6, #2
	beq _0800D26C
	b _0800D278
_0800D264:
	bl sub_0800874C
	adds r5, r0, #0
	b _0800D278
_0800D26C:
	bl sub_0800874C
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	adds r5, r0, r1
_0800D278:
	cmp r7, #0
	beq _0800D284
	ldrh r1, [r5]
	movs r0, #8
	orrs r0, r1
	b _0800D28A
_0800D284:
	ldrh r1, [r5]
	ldr r0, _0800D294 @ =0x0000FFF7
	ands r0, r1
_0800D28A:
	strh r0, [r5]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D294: .4byte 0x0000FFF7

	thumb_func_start sub_0800D298
sub_0800D298: @ 0x0800D298
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r7, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r5, #0
	cmp r1, #1
	beq _0800D2CC
	cmp r1, #1
	bgt _0800D2BE
	cmp r1, #0
	beq _0800D2C4
	b _0800D2D8
_0800D2BE:
	cmp r7, #2
	beq _0800D2CC
	b _0800D2D8
_0800D2C4:
	bl sub_0800874C
	adds r6, r0, #0
	b _0800D2D8
_0800D2CC:
	bl sub_0800874C
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	adds r6, r0, r1
_0800D2D8:
	adds r2, r6, #0
	mov r0, r8
	cmp r0, #0xc
	bhi _0800D358
	lsls r0, r0, #2
	ldr r1, _0800D2EC @ =_0800D2F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D2EC: .4byte _0800D2F0
_0800D2F0: @ jump table
	.4byte _0800D324 @ case 0
	.4byte _0800D32A @ case 1
	.4byte _0800D32E @ case 2
	.4byte _0800D332 @ case 3
	.4byte _0800D336 @ case 4
	.4byte _0800D33A @ case 5
	.4byte _0800D33E @ case 6
	.4byte _0800D342 @ case 7
	.4byte _0800D346 @ case 8
	.4byte _0800D34A @ case 9
	.4byte _0800D34E @ case 10
	.4byte _0800D352 @ case 11
	.4byte _0800D356 @ case 12
_0800D324:
	movs r1, #2
	ldrsh r5, [r2, r1]
	b _0800D358
_0800D32A:
	ldrb r5, [r2, #4]
	b _0800D358
_0800D32E:
	ldrb r5, [r2, #5]
	b _0800D358
_0800D332:
	ldrb r5, [r2, #6]
	b _0800D358
_0800D336:
	ldrb r5, [r2, #9]
	b _0800D358
_0800D33A:
	ldrb r5, [r2, #7]
	b _0800D358
_0800D33E:
	ldrb r5, [r2, #8]
	b _0800D358
_0800D342:
	ldrb r5, [r2, #0xa]
	b _0800D358
_0800D346:
	ldrb r5, [r2, #0xb]
	b _0800D358
_0800D34A:
	ldrb r5, [r2, #0xc]
	b _0800D358
_0800D34E:
	ldrb r5, [r2, #0xd]
	b _0800D358
_0800D352:
	ldr r5, [r2, #0x10]
	b _0800D358
_0800D356:
	ldr r5, [r2, #0x14]
_0800D358:
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800D364
sub_0800D364: @ 0x0800D364
	push {r4, r5, r6, lr}
	adds r6, r3, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r3, r1, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	cmp r1, #1
	beq _0800D38E
	cmp r1, #1
	bgt _0800D380
	cmp r1, #0
	beq _0800D386
	b _0800D396
_0800D380:
	cmp r3, #2
	beq _0800D38E
	b _0800D396
_0800D386:
	bl sub_0800874C
	adds r4, r0, #0
	b _0800D396
_0800D38E:
	bl sub_0800874C
	lsls r1, r5, #2
	adds r4, r0, r1
_0800D396:
	str r6, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D3A0
sub_0800D3A0: @ 0x0800D3A0
	push {r4, lr}
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl sub_0800874C
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D3B4
sub_0800D3B4: @ 0x0800D3B4
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_0800874C
	strh r4, [r0, #2]
	strh r5, [r0, #4]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D3D0
sub_0800D3D0: @ 0x0800D3D0
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_0800874C
	strh r4, [r0, #6]
	strh r5, [r0, #8]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D3EC
sub_0800D3EC: @ 0x0800D3EC
	push {r4, lr}
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl sub_0800874C
	strh r4, [r0, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D400
sub_0800D400: @ 0x0800D400
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov r8, r1
	mov sb, r2
	adds r4, r3, #0
	ldr r5, [sp, #0x20]
	ldr r6, [sp, #0x24]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	bl sub_0800874C
	mov r3, r8
	str r3, [r0, #0xc]
	mov r3, sb
	str r3, [r0, #0x10]
	strh r4, [r0, #0x14]
	strh r5, [r0, #0x16]
	strh r6, [r0, #0x18]
	ldr r1, [sp]
	strh r1, [r0, #0x1a]
	ldr r2, [sp, #4]
	strh r2, [r0, #0x1c]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D458
sub_0800D458: @ 0x0800D458
	push {lr}
	bl sub_0800874C
	adds r0, #0xc
	pop {r1}
	bx r1

	thumb_func_start sub_0800D464
sub_0800D464: @ 0x0800D464
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov r8, r1
	mov sb, r2
	adds r4, r3, #0
	ldr r5, [sp, #0x18]
	ldr r6, [sp, #0x1c]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	bl sub_0800874C
	mov r1, r8
	str r1, [r0, #0x20]
	mov r1, sb
	str r1, [r0, #0x24]
	strh r4, [r0, #0x28]
	strh r5, [r0, #0x2a]
	strh r6, [r0, #0x30]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D4A0
sub_0800D4A0: @ 0x0800D4A0
	push {lr}
	bl sub_0800874C
	adds r0, #0x20
	pop {r1}
	bx r1

	thumb_func_start sub_0800D4AC
sub_0800D4AC: @ 0x0800D4AC
	push {r4, lr}
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl sub_0800874C
	adds r3, r0, #0
	strh r4, [r3, #0x38]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r0, #4
	ldrsh r2, [r3, r0]
	adds r3, #0x3c
	adds r0, r4, #0
	bl sub_0800B314
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D4D4
sub_0800D4D4: @ 0x0800D4D4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_0800874C
	strh r4, [r0, #0x38]
	strh r5, [r0, #0x3a]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r1, #4
	ldrsh r3, [r0, r1]
	adds r0, #0x3c
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800B39C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D510
sub_0800D510: @ 0x0800D510
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r1, #0
	ldr r1, [sp, #0x18]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	bl sub_0800874C
	adds r5, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r3, #0
	b _0800D552
_0800D53A:
	lsls r2, r4, #1
	adds r0, r5, #2
	adds r0, r0, r2
	ldrb r1, [r0]
	mov r1, r8
	strb r1, [r0]
	adds r0, r5, #3
	adds r0, r0, r2
	ldrb r1, [r0]
	strb r7, [r0]
_0800D54E:
	adds r3, #1
	adds r4, #1
_0800D552:
	cmp r3, r6
	bge _0800D55E
	cmp r4, #0
	blt _0800D54E
	cmp r4, #0x9f
	ble _0800D53A
_0800D55E:
	movs r0, #0
	strh r0, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D56C
sub_0800D56C: @ 0x0800D56C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r1, #0
	mov r8, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	bl sub_0800874C
	adds r7, r0, #0
	lsls r4, r4, #0x10
	asrs r5, r4, #0x10
	movs r1, #0
	cmp r1, sl
	bge _0800D5DA
_0800D594:
	movs r6, #0
	lsls r3, r1, #2
	mov r2, r8
	adds r0, r3, r2
	mov ip, r3
	adds r1, #1
	mov sb, r1
	b _0800D5C6
_0800D5A4:
	lsls r4, r5, #1
	adds r0, r7, #2
	adds r0, r0, r4
	add r3, r8
	ldrb r1, [r3, #1]
	ldrb r2, [r0]
	strb r1, [r0]
	adds r0, r7, #3
	adds r0, r0, r4
	ldrb r1, [r3, #2]
	ldrb r2, [r0]
	strb r1, [r0]
_0800D5BC:
	adds r6, #1
	adds r5, #1
	mov r3, ip
	mov r1, r8
	adds r0, r3, r1
_0800D5C6:
	ldrb r0, [r0]
	cmp r6, r0
	bge _0800D5D4
	cmp r5, #0
	blt _0800D5BC
	cmp r5, #0x9f
	ble _0800D5A4
_0800D5D4:
	mov r1, sb
	cmp r1, sl
	blt _0800D594
_0800D5DA:
	movs r0, #0
	strh r0, [r7]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D5EC
sub_0800D5EC: @ 0x0800D5EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	adds r4, r1, #0
	ldr r1, [sp, #0x88]
	ldr r5, [sp, #0x8c]
	ldr r6, [sp, #0x90]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	mov r2, sb
	str r2, [sp, #0x5c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	str r1, [sp, #0x60]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	str r6, [sp, #0x64]
	bl sub_0800874C
	adds r7, r0, #0
	lsls r4, r4, #0x10
	asrs r6, r4, #0x10
	cmp r6, #0
	blt _0800D64A
	lsls r1, r6, #1
	adds r0, r7, #2
	adds r0, r0, r1
	ldrb r2, [r0]
	mov r2, sb
	strb r2, [r0]
	adds r0, r7, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	mov r1, sl
	strb r1, [r0]
_0800D64A:
	adds r6, #1
	mov r4, r8
	subs r4, #1
	str r4, [sp]
	add r0, sp, #4
	ldr r1, [sp, #0x5c]
	movs r2, #0
	adds r3, r5, #0
	bl sub_080080A0
	add r5, sp, #0x30
	str r4, [sp]
	adds r0, r5, #0
	ldr r1, [sp, #0x60]
	movs r2, #0
	ldr r3, [sp, #0x64]
	bl sub_080080A0
	movs r4, #1
	b _0800D69C
_0800D672:
	add r0, sp, #4
	bl sub_080080F4
	adds r0, r5, #0
	bl sub_080080F4
	cmp r6, #0
	blt _0800D698
	lsls r3, r6, #1
	adds r0, r7, #2
	adds r0, r0, r3
	ldr r1, [sp, #4]
	ldrb r2, [r0]
	strb r1, [r0]
	adds r0, r7, #3
	adds r0, r0, r3
	ldr r1, [sp, #0x30]
	ldrb r2, [r0]
	strb r1, [r0]
_0800D698:
	adds r4, #1
	adds r6, #1
_0800D69C:
	cmp r4, r8
	bge _0800D6A4
	cmp r6, #0x9f
	ble _0800D672
_0800D6A4:
	movs r0, #0
	strh r0, [r7]
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D6B8
sub_0800D6B8: @ 0x0800D6B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	mov sb, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	bl sub_0800874C
	adds r7, r0, #0
	lsls r4, r4, #0x10
	asrs r5, r4, #0x10
	movs r6, #0
	b _0800D6FA
_0800D6DC:
	lsls r4, r5, #1
	adds r0, r7, #2
	adds r0, r0, r4
	lsls r1, r6, #1
	add r1, sb
	ldrb r2, [r1]
	ldrb r3, [r0]
	strb r2, [r0]
	adds r0, r7, #3
	adds r0, r0, r4
	ldrb r1, [r1, #1]
	ldrb r2, [r0]
	strb r1, [r0]
_0800D6F6:
	adds r6, #1
	adds r5, #1
_0800D6FA:
	cmp r6, r8
	bge _0800D706
	cmp r5, #0
	blt _0800D6F6
	cmp r5, #0x9f
	ble _0800D6DC
_0800D706:
	movs r0, #0
	strh r0, [r7]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D718
sub_0800D718: @ 0x0800D718
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	bl sub_0800874C
	mov ip, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	mov sb, r0
	b _0800D784
_0800D73E:
	lsls r0, r4, #1
	mov r1, ip
	adds r2, r0, r1
	adds r2, #4
	movs r6, #0
	ldrh r0, [r5]
	movs r3, #0
	ldrsh r1, [r5, r3]
	cmp r1, #0xf0
	ble _0800D756
	movs r6, #0xf5
	b _0800D75E
_0800D756:
	cmp r1, #0
	blt _0800D75E
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0800D75E:
	movs r3, #0
	ldrh r0, [r5, #2]
	movs r7, #2
	ldrsh r1, [r5, r7]
	cmp r1, #0xf0
	ble _0800D76E
	movs r3, #0xfa
	b _0800D776
_0800D76E:
	cmp r1, #0
	blt _0800D776
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0800D776:
	ldrb r0, [r2, #1]
	strb r6, [r2, #1]
	ldrb r0, [r2]
	strb r3, [r2]
_0800D77E:
	movs r0, #1
	add sb, r0
	adds r4, #1
_0800D784:
	cmp sb, r8
	bge _0800D790
	cmp r4, #0
	blt _0800D77E
	cmp r4, #0x9f
	ble _0800D73E
_0800D790:
	movs r0, #0
	mov r1, ip
	strh r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D7A4
sub_0800D7A4: @ 0x0800D7A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r1, #0
	mov sb, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	bl sub_0800874C
	mov ip, r0
	lsls r4, r4, #0x10
	asrs r5, r4, #0x10
	movs r7, #0
	b _0800D818
_0800D7CA:
	lsls r0, r5, #1
	mov r1, ip
	adds r3, r0, r1
	adds r3, #4
	lsls r0, r7, #2
	mov r4, sb
	adds r2, r0, r4
	movs r6, #0
	ldrh r0, [r2]
	movs r4, #0
	ldrsh r1, [r2, r4]
	cmp r1, #0xf0
	ble _0800D7E8
	movs r6, #0xf5
	b _0800D7F0
_0800D7E8:
	cmp r1, #0
	blt _0800D7F0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0800D7F0:
	movs r4, #0
	ldrh r0, [r2, #2]
	mov sl, r0
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0xf0
	ble _0800D802
	movs r4, #0xfa
	b _0800D80C
_0800D802:
	cmp r0, #0
	blt _0800D80C
	mov r4, sl
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
_0800D80C:
	ldrb r0, [r3, #1]
	strb r6, [r3, #1]
	ldrb r0, [r3]
	strb r4, [r3]
_0800D814:
	adds r7, #1
	adds r5, #1
_0800D818:
	cmp r7, r8
	bge _0800D824
	cmp r5, #0
	blt _0800D814
	cmp r5, #0x9f
	ble _0800D7CA
_0800D824:
	movs r0, #0
	mov r1, ip
	strh r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D838
sub_0800D838: @ 0x0800D838
	push {r4, lr}
	adds r4, r1, #0
	bl sub_0800874C
	adds r2, r0, #0
	cmp r4, #0
	beq _0800D84E
	ldrh r1, [r2, #2]
	movs r0, #1
	orrs r0, r1
	b _0800D854
_0800D84E:
	ldrh r1, [r2, #2]
	ldr r0, _0800D85C @ =0x0000FFFE
	ands r0, r1
_0800D854:
	strh r0, [r2, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D85C: .4byte 0x0000FFFE

	thumb_func_start sub_0800D860
sub_0800D860: @ 0x0800D860
	push {r4, r5, r6, lr}
	adds r3, r1, #0
	cmp r3, #0
	beq _0800D88A
	movs r6, #0xff
	ldr r4, [r0]
	movs r5, #0x9f
_0800D86E:
	ldrh r1, [r4]
	lsls r2, r1, #0x10
	adds r0, r6, #0
	ands r0, r1
	ldrb r1, [r3]
	strb r0, [r3]
	lsrs r2, r2, #0x18
	ldrb r0, [r3, #1]
	strb r2, [r3, #1]
	adds r3, #2
	adds r4, #2
	subs r5, #1
	cmp r5, #0
	bge _0800D86E
_0800D88A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D890
sub_0800D890: @ 0x0800D890
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	adds r4, r1, #0
	cmp r4, #0
	beq _0800D8E2
	mov sb, r4
	movs r1, #0
	movs r0, #0xff
	mov r8, r0
_0800D8AA:
	mov r4, sb
	movs r5, #0
	lsls r0, r1, #2
	adds r2, r1, #1
	mov ip, r2
	lsls r7, r1, #1
	mov r1, sl
	adds r6, r1, r0
_0800D8BA:
	adds r3, r4, r7
	ldr r1, [r6]
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	mov r0, r8
	ands r0, r1
	ldrb r1, [r3]
	strb r0, [r3]
	lsrs r2, r2, #0x18
	ldrb r0, [r3, #1]
	strb r2, [r3, #1]
	adds r4, #4
	adds r5, #1
	cmp r5, #0x9f
	ble _0800D8BA
	mov r1, ip
	cmp r1, #1
	ble _0800D8AA
_0800D8E2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D8F0
sub_0800D8F0: @ 0x0800D8F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	adds r4, r1, #0
	cmp r4, #0
	beq _0800D942
	mov sb, r4
	movs r1, #0
	movs r0, #0xff
	mov r8, r0
_0800D90A:
	mov r4, sb
	movs r5, #0
	lsls r0, r1, #2
	adds r2, r1, #1
	mov ip, r2
	lsls r7, r1, #1
	mov r1, sl
	adds r6, r1, r0
_0800D91A:
	adds r3, r4, r7
	ldr r1, [r6]
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	mov r0, r8
	ands r0, r1
	ldrb r1, [r3]
	strb r0, [r3]
	lsrs r2, r2, #0x18
	ldrb r0, [r3, #1]
	strb r2, [r3, #1]
	adds r4, #8
	adds r5, #1
	cmp r5, #0x9f
	ble _0800D91A
	mov r1, ip
	cmp r1, #1
	ble _0800D90A
_0800D942:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D950
sub_0800D950: @ 0x0800D950
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r2, r1, #0
	ldrh r1, [r6]
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #1
	bgt _0800D984
	adds r7, r1, #0
	adds r4, r6, #3
	adds r3, r6, #2
	movs r5, #0x9f
_0800D968:
	ldrb r0, [r3]
	ldrb r1, [r2]
	strb r0, [r2]
	ldrb r0, [r4]
	ldrb r1, [r2, #1]
	strb r0, [r2, #1]
	adds r2, #2
	adds r4, #2
	adds r3, #2
	subs r5, #1
	cmp r5, #0
	bge _0800D968
	adds r0, r7, #1
	strh r0, [r6]
_0800D984:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D98C
sub_0800D98C: @ 0x0800D98C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	ldrh r0, [r6, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	movs r2, #0
	cmp r0, #0
	ble _0800DA28
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
_0800D9B8:
	lsls r0, r3, #0x10
	lsrs r1, r0, #0x10
	adds r3, r0, #0
	lsls r4, r2, #0x10
	cmp r1, #0x9f
	bhi _0800DA14
	asrs r0, r4, #0xe
	adds r0, r6, r0
	ldrh r0, [r0, #4]
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	lsls r5, r1, #0x10
	cmp r0, #0
	bge _0800D9DE
	movs r2, #0
	b _0800D9E4
_0800D9DE:
	cmp r0, #0xf0
	ble _0800D9E4
	movs r2, #0xf5
_0800D9E4:
	asrs r1, r3, #0xf
	adds r0, r7, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r2, [r0]
	asrs r0, r4, #0xe
	adds r0, r6, r0
	ldrh r1, [r0, #6]
	asrs r0, r5, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800DA06
	movs r2, #0
	b _0800DA0C
_0800DA06:
	cmp r0, #0xf0
	ble _0800DA0C
	movs r2, #0xfa
_0800DA0C:
	asrs r0, r3, #0xf
	adds r0, r7, r0
	ldrb r1, [r0]
	strb r2, [r0]
_0800DA14:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r3, r0, #0x10
	adds r1, r4, r1
	ldrh r0, [r6]
	lsrs r2, r1, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	blt _0800D9B8
_0800DA28:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800DA34
sub_0800DA34: @ 0x0800DA34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	cmp r7, #0
	bne _0800DA56
	b _0800DBB4
_0800DA56:
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	bgt _0800DA60
	b _0800DBB4
_0800DA60:
	lsls r1, r1, #1
	movs r0, #3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsrs r0, r2, #0x10
	mov sb, r0
	movs r4, #0
	cmp r2, #0
	bge _0800DA78
	b _0800DBB4
_0800DA78:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	adds r1, r7, #1
	mov ip, r1
_0800DA82:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	mov r3, r8
	subs r2, r3, r1
	lsls r2, r2, #0x10
	add r1, r8
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	str r0, [sp, #8]
	cmp r2, #0
	bge _0800DAA2
	movs r5, #0
	b _0800DAA8
_0800DAA2:
	cmp r2, #0xf0
	ble _0800DAA8
	movs r5, #0xf5
_0800DAA8:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800DAB4
	movs r3, #0
	b _0800DABA
_0800DAB4:
	cmp r0, #0xf0
	ble _0800DABA
	movs r3, #0xfa
_0800DABA:
	ldr r0, [sp]
	lsls r1, r0, #0x10
	asrs r6, r1, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	adds r0, r6, r4
	lsls r2, r0, #0x10
	lsrs r0, r2, #0x10
	mov sl, r1
	cmp r0, #0x9f
	bhi _0800DAE2
	asrs r0, r2, #0xf
	mov r2, ip
	adds r1, r2, r0
	ldrb r2, [r1]
	strb r5, [r1]
	adds r0, r7, r0
	ldrb r1, [r0]
	strb r3, [r0]
_0800DAE2:
	subs r0, r6, r4
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800DAFC
	asrs r0, r1, #0xf
	mov r2, ip
	adds r1, r2, r0
	ldrb r2, [r1]
	strb r5, [r1]
	adds r0, r7, r0
	ldrb r1, [r0]
	strb r3, [r0]
_0800DAFC:
	mov r3, r8
	subs r1, r3, r4
	lsls r1, r1, #0x10
	adds r0, r3, r4
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _0800DB16
	movs r5, #0
	b _0800DB1C
_0800DB16:
	cmp r1, #0xf0
	ble _0800DB1C
	movs r5, #0xf5
_0800DB1C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800DB28
	movs r3, #0
	b _0800DB2E
_0800DB28:
	cmp r0, #0xf0
	ble _0800DB2E
	movs r3, #0xfa
_0800DB2E:
	mov r0, sl
	asrs r6, r0, #0x10
	ldr r1, [sp, #8]
	asrs r4, r1, #0x10
	adds r0, r6, r4
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800DB50
	asrs r0, r1, #0xf
	mov r2, ip
	adds r1, r2, r0
	ldrb r2, [r1]
	strb r5, [r1]
	adds r0, r7, r0
	ldrb r1, [r0]
	strb r3, [r0]
_0800DB50:
	subs r0, r6, r4
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800DB6A
	asrs r0, r1, #0xf
	mov r2, ip
	adds r1, r2, r0
	ldrb r2, [r1]
	strb r5, [r1]
	adds r0, r7, r0
	ldrb r1, [r0]
	strb r3, [r0]
_0800DB6A:
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800DB82
	adds r0, #6
	lsls r1, r4, #2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	b _0800DBA0
_0800DB82:
	adds r2, r0, #0
	adds r2, #0xa
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r0, r4, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
_0800DBA0:
	ldr r2, [sp, #8]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r2, r3
	lsrs r4, r1, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	cmp r1, r0
	bgt _0800DBB4
	b _0800DA82
_0800DBB4:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800DBC4
sub_0800DBC4: @ 0x0800DBC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	bne _0800DBEC
	b _0800DD42
_0800DBEC:
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	bgt _0800DBF6
	b _0800DD42
_0800DBF6:
	lsls r1, r1, #1
	movs r0, #3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsrs r3, r2, #0x10
	mov ip, r3
	movs r4, #0
	cmp r2, #0
	bge _0800DC0E
	b _0800DD42
_0800DC0E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, [sp, #0x2c]
	adds r2, #1
	mov r8, r2
_0800DC22:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	mov r3, sb
	subs r2, r3, r1
	lsls r2, r2, #0x10
	add r1, sb
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsrs r4, r2, #0x10
	asrs r2, r2, #0x10
	adds r7, r0, #0
	cmp r2, #0
	bge _0800DC42
	movs r4, #0
	b _0800DC48
_0800DC42:
	cmp r2, #0xf0
	ble _0800DC48
	movs r4, #0xf5
_0800DC48:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800DC54
	movs r3, #0
	b _0800DC5A
_0800DC54:
	cmp r0, #0xf0
	ble _0800DC5A
	movs r3, #0xfa
_0800DC5A:
	ldr r0, [sp, #4]
	cmp r0, #2
	bne _0800DC6C
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r2, [sp, #8]
	adds r1, r2, r1
	b _0800DC76
_0800DC6C:
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r2, [sp, #8]
	subs r1, r2, r1
_0800DC76:
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	adds r5, r0, #0
	ldr r0, [sp]
	lsls r6, r0, #0x10
	cmp r1, #0x9f
	bhi _0800DC96
	asrs r0, r2, #0xf
	mov r2, r8
	adds r1, r2, r0
	ldrb r2, [r1]
	strb r4, [r1]
	ldr r4, [sp, #0x2c]
	adds r0, r4, r0
	ldrb r1, [r0]
	strb r3, [r0]
_0800DC96:
	asrs r0, r5, #0x10
	mov r2, sb
	subs r1, r2, r0
	lsls r1, r1, #0x10
	add r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _0800DCB2
	movs r4, #0
	b _0800DCB8
_0800DCB2:
	cmp r1, #0xf0
	ble _0800DCB8
	movs r4, #0xf5
_0800DCB8:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800DCC4
	movs r3, #0
	b _0800DCCA
_0800DCC4:
	cmp r0, #0xf0
	ble _0800DCCA
	movs r3, #0xfa
_0800DCCA:
	ldr r0, [sp, #4]
	cmp r0, #2
	bne _0800DCD8
	asrs r0, r6, #0x10
	asrs r1, r7, #0x10
	adds r0, r0, r1
	b _0800DCDE
_0800DCD8:
	asrs r0, r6, #0x10
	asrs r1, r7, #0x10
	subs r0, r0, r1
_0800DCDE:
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800DCF8
	asrs r0, r1, #0xf
	mov r2, r8
	adds r1, r2, r0
	ldrb r2, [r1]
	strb r4, [r1]
	ldr r4, [sp, #0x2c]
	adds r0, r4, r0
	ldrb r1, [r0]
	strb r3, [r0]
_0800DCF8:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800DD10
	adds r0, #6
	asrs r1, r7, #0xe
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	b _0800DD30
_0800DD10:
	adds r2, r0, #0
	adds r2, #0xa
	asrs r1, r7, #0x10
	mov r3, ip
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
_0800DD30:
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r7, r4
	lsrs r4, r1, #0x10
	mov r2, ip
	lsls r0, r2, #0x10
	cmp r1, r0
	bgt _0800DD42
	b _0800DC22
_0800DD42:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800DD54
sub_0800DD54: @ 0x0800DD54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r1, #0
	str r1, [sp, #0x14]
	ldr r2, _0800DDFC @ =0x0000FFFF
	str r2, [sp, #0x18]
	ldr r3, [sp]
	lsls r1, r3, #0x10
	ldr r4, [sp, #4]
	lsls r0, r4, #0x10
	cmp r1, r0
	bgt _0800DD92
	b _0800DF28
_0800DD92:
	mov sb, r3
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r4, r1, #0x10
	cmp r4, #0
	bge _0800DDA0
	b _0800E0B4
_0800DDA0:
	ldr r0, [sp, #0x44]
	adds r0, #1
	str r0, [sp, #0x1c]
_0800DDA6:
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x10
	asrs r7, r4, #0x10
	ldr r2, [sp]
	lsls r6, r2, #0x10
	ldr r3, [sp, #4]
	lsls r5, r3, #0x10
	cmp r4, r0
	beq _0800DDC8
	asrs r0, r5, #0x10
	muls r0, r7, r0
	asrs r1, r6, #0x10
	bl Div
	str r0, [sp, #0x14]
	lsrs r4, r4, #0x10
	str r4, [sp, #0x18]
_0800DDC8:
	ldr r0, [sp, #0x10]
	lsls r4, r0, #0x10
	asrs r1, r4, #0x10
	asrs r0, r5, #0x10
	muls r0, r1, r0
	asrs r1, r6, #0x10
	bl Div
	mov ip, r0
	ldr r1, [sp, #8]
	lsls r2, r1, #0x10
	asrs r0, r2, #0x10
	subs r1, r0, r7
	lsls r1, r1, #0x10
	adds r0, r0, r7
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	adds r7, r2, #0
	cmp r1, #0
	bge _0800DE00
	movs r5, #0
	b _0800DE06
	.align 2, 0
_0800DDFC: .4byte 0x0000FFFF
_0800DE00:
	cmp r1, #0xf0
	ble _0800DE06
	movs r5, #0xf5
_0800DE06:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800DE12
	movs r3, #0
	b _0800DE18
_0800DE12:
	cmp r0, #0xf0
	ble _0800DE18
	movs r3, #0xfa
_0800DE18:
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	mov r2, ip
	adds r1, r6, r2
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	mov r8, r0
	cmp r1, #0x9f
	bhi _0800DE3E
	asrs r0, r2, #0xf
	ldr r2, [sp, #0x1c]
	adds r1, r2, r0
	ldrb r2, [r1]
	strb r5, [r1]
	ldr r1, [sp, #0x44]
	adds r0, r1, r0
	ldrb r1, [r0]
	strb r3, [r0]
_0800DE3E:
	mov r2, ip
	subs r0, r6, r2
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800DE5C
	asrs r0, r1, #0xf
	ldr r2, [sp, #0x1c]
	adds r1, r2, r0
	ldrb r2, [r1]
	strb r5, [r1]
	ldr r1, [sp, #0x44]
	adds r0, r1, r0
	ldrb r1, [r0]
	strb r3, [r0]
_0800DE5C:
	asrs r0, r7, #0x10
	asrs r2, r4, #0x10
	subs r1, r0, r2
	lsls r1, r1, #0x10
	adds r0, r0, r2
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _0800DE78
	movs r5, #0
	b _0800DE7E
_0800DE78:
	cmp r1, #0xf0
	ble _0800DE7E
	movs r5, #0xf5
_0800DE7E:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800DE8A
	movs r3, #0
	b _0800DE90
_0800DE8A:
	cmp r0, #0xf0
	ble _0800DE90
	movs r3, #0xfa
_0800DE90:
	mov r2, r8
	asrs r4, r2, #0x10
	ldr r1, [sp, #0x14]
	adds r0, r4, r1
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800DEB2
	asrs r0, r1, #0xf
	ldr r2, [sp, #0x1c]
	adds r1, r2, r0
	ldrb r2, [r1]
	strb r5, [r1]
	ldr r1, [sp, #0x44]
	adds r0, r1, r0
	ldrb r1, [r0]
	strb r3, [r0]
_0800DEB2:
	ldr r2, [sp, #0x14]
	subs r0, r4, r2
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800DED0
	asrs r0, r1, #0xf
	ldr r4, [sp, #0x1c]
	adds r1, r4, r0
	ldrb r2, [r1]
	strb r5, [r1]
	ldr r1, [sp, #0x44]
	adds r0, r1, r0
	ldrb r1, [r0]
	strb r3, [r0]
_0800DED0:
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, #1
	ldr r2, [sp, #0x10]
	lsls r1, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r1, r3
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	lsls r2, r2, #0x10
	asrs r2, r2, #0xf
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov sb, r4
	cmp r0, #0
	bge _0800DF14
	mov r1, sl
	lsls r0, r1, #0x10
	ldr r2, _0800DF24 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0xf
	subs r1, #2
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_0800DF14:
	mov r3, sl
	lsls r4, r3, #0x10
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x10
	cmp r4, r0
	blt _0800DF22
	b _0800DDA6
_0800DF22:
	b _0800E0B4
	.align 2, 0
_0800DF24: .4byte 0xFFFF0000
_0800DF28:
	ldr r2, [sp, #4]
	mov sb, r2
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r4, r0, #0x10
	cmp r4, #0
	bge _0800DF38
	b _0800E0B4
_0800DF38:
	ldr r3, [sp, #0x44]
	adds r3, #1
	str r3, [sp, #0x20]
_0800DF3E:
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x10
	asrs r1, r4, #0x10
	ldr r2, [sp]
	lsls r6, r2, #0x10
	ldr r3, [sp, #4]
	lsls r5, r3, #0x10
	cmp r4, r0
	beq _0800DF60
	asrs r0, r6, #0x10
	muls r0, r1, r0
	asrs r1, r5, #0x10
	bl Div
	str r0, [sp, #0x14]
	lsrs r4, r4, #0x10
	str r4, [sp, #0x18]
_0800DF60:
	ldr r0, [sp, #0x10]
	lsls r4, r0, #0x10
	asrs r1, r4, #0x10
	asrs r0, r6, #0x10
	muls r0, r1, r0
	asrs r1, r5, #0x10
	bl Div
	mov ip, r0
	ldr r1, [sp, #8]
	lsls r2, r1, #0x10
	asrs r0, r2, #0x10
	ldr r3, [sp, #0x14]
	subs r1, r0, r3
	lsls r1, r1, #0x10
	adds r0, r0, r3
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	adds r7, r2, #0
	cmp r1, #0
	bge _0800DF94
	movs r5, #0
	b _0800DF9A
_0800DF94:
	cmp r1, #0xf0
	ble _0800DF9A
	movs r5, #0xf5
_0800DF9A:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800DFA6
	movs r3, #0
	b _0800DFAC
_0800DFA6:
	cmp r0, #0xf0
	ble _0800DFAC
	movs r3, #0xfa
_0800DFAC:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	asrs r4, r4, #0x10
	adds r1, r6, r4
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	mov r8, r0
	cmp r1, #0x9f
	bhi _0800DFD2
	asrs r0, r2, #0xf
	ldr r2, [sp, #0x20]
	adds r1, r2, r0
	ldrb r2, [r1]
	strb r5, [r1]
	ldr r1, [sp, #0x44]
	adds r0, r1, r0
	ldrb r1, [r0]
	strb r3, [r0]
_0800DFD2:
	subs r0, r6, r4
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800DFEE
	asrs r0, r1, #0xf
	ldr r2, [sp, #0x20]
	adds r1, r2, r0
	ldrb r2, [r1]
	strb r5, [r1]
	ldr r4, [sp, #0x44]
	adds r0, r4, r0
	ldrb r1, [r0]
	strb r3, [r0]
_0800DFEE:
	asrs r0, r7, #0x10
	mov r2, ip
	subs r1, r0, r2
	lsls r1, r1, #0x10
	add r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _0800E00A
	movs r5, #0
	b _0800E010
_0800E00A:
	cmp r1, #0xf0
	ble _0800E010
	movs r5, #0xf5
_0800E010:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800E01C
	movs r3, #0
	b _0800E022
_0800E01C:
	cmp r0, #0xf0
	ble _0800E022
	movs r3, #0xfa
_0800E022:
	mov r0, r8
	asrs r4, r0, #0x10
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	adds r0, r4, r6
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800E048
	asrs r0, r1, #0xf
	ldr r2, [sp, #0x20]
	adds r1, r2, r0
	ldrb r2, [r1]
	strb r5, [r1]
	ldr r1, [sp, #0x44]
	adds r0, r1, r0
	ldrb r1, [r0]
	strb r3, [r0]
_0800E048:
	subs r0, r4, r6
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800E064
	asrs r0, r1, #0xf
	ldr r2, [sp, #0x20]
	adds r1, r2, r0
	ldrb r2, [r1]
	strb r5, [r1]
	ldr r4, [sp, #0x44]
	adds r0, r4, r0
	ldrb r1, [r0]
	strb r3, [r0]
_0800E064:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, #1
	ldr r2, [sp, #0x10]
	lsls r1, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r1, r3
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	lsls r2, r2, #0x10
	asrs r2, r2, #0xf
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov sb, r4
	cmp r0, #0
	bge _0800E0A6
	mov r1, sl
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0xf
	subs r1, #2
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_0800E0A6:
	mov r0, sl
	lsls r4, r0, #0x10
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x10
	cmp r4, r0
	blt _0800E0B4
	b _0800DF3E
_0800E0B4:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E0C4
sub_0800E0C4: @ 0x0800E0C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r1, r3, #0x10
	asrs r0, r1, #0x11
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r1, r0
	bgt _0800E0F0
_0800E0EE:
	b _0800E0EE
_0800E0F0:
	movs r0, #0
	str r0, [sp, #8]
	mov r8, r3
	lsls r0, r3, #0x10
	lsrs r1, r0, #0x10
	mov sb, r1
	lsls r4, r1, #0x10
	str r0, [sp, #0x18]
	cmp r4, #0
	bge _0800E106
	b _0800E238
_0800E106:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, [sp]
	lsls r2, r2, #0x10
	str r2, [sp, #0x1c]
_0800E112:
	asrs r4, r4, #0x10
	ldr r3, [sp, #0xc]
	adds r0, r4, #0
	muls r0, r3, r0
	ldr r1, [sp, #0x18]
	asrs r5, r1, #0x10
	adds r1, r5, #0
	bl Div
	mov sl, r0
	ldr r2, [sp, #8]
	lsls r6, r2, #0x10
	asrs r0, r6, #0x10
	ldr r3, [sp, #0xc]
	muls r0, r3, r0
	adds r1, r5, #0
	bl Div
	adds r2, r0, #0
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r1, r0, r4
	lsls r1, r1, #0x10
	adds r0, r0, r4
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	adds r5, r6, #0
	cmp r1, #0
	bge _0800E158
	movs r3, #0
	b _0800E15E
_0800E158:
	cmp r1, #0xf0
	ble _0800E15E
	movs r3, #0xf5
_0800E15E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800E16A
	movs r4, #0
	b _0800E170
_0800E16A:
	cmp r0, #0xf0
	ble _0800E170
	movs r4, #0xfa
_0800E170:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r1, r1, r2
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	adds r6, r0, #0
	cmp r1, #0x9f
	bhi _0800E192
	asrs r1, r2, #0xf
	adds r0, r7, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	strb r3, [r0]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r4, [r1]
_0800E192:
	ldr r2, [sp, #0x1c]
	asrs r0, r2, #0x10
	asrs r2, r5, #0x10
	subs r1, r0, r2
	lsls r1, r1, #0x10
	adds r0, r0, r2
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _0800E1B0
	movs r3, #0
	b _0800E1B6
_0800E1B0:
	cmp r1, #0xf0
	ble _0800E1B6
	movs r3, #0xf5
_0800E1B6:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800E1C2
	movs r4, #0
	b _0800E1C8
_0800E1C2:
	cmp r0, #0xf0
	ble _0800E1C8
	movs r4, #0xfa
_0800E1C8:
	asrs r0, r6, #0x10
	add r0, sl
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800E1E4
	asrs r1, r1, #0xf
	adds r0, r7, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	strb r3, [r0]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r4, [r1]
_0800E1E4:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #1
	ldr r2, [sp, #8]
	lsls r1, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r1, r3
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r2, r2, #0x10
	asrs r2, r2, #0xf
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	cmp r0, #0
	bge _0800E22A
	mov r1, sb
	lsls r0, r1, #0x10
	ldr r2, _0800E288 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0xf
	subs r1, #2
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0800E22A:
	mov r0, sb
	lsls r4, r0, #0x10
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	cmp r4, r0
	blt _0800E238
	b _0800E112
_0800E238:
	ldr r2, [sp, #0x18]
	asrs r1, r2, #0xf
	movs r0, #3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r2, #0
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bge _0800E254
	b _0800E362
_0800E254:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, sl
	str r0, [sp, #0x14]
_0800E268:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	subs r2, r3, r1
	lsls r2, r2, #0x10
	add r1, sl
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	mov ip, r0
	cmp r2, #0
	bge _0800E28C
	movs r5, #0
	b _0800E292
	.align 2, 0
_0800E288: .4byte 0xFFFF0000
_0800E28C:
	cmp r2, #0xf0
	ble _0800E292
	movs r5, #0xf5
_0800E292:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800E29E
	movs r4, #0
	b _0800E2A4
_0800E29E:
	cmp r0, #0xf0
	ble _0800E2A4
	movs r4, #0xfa
_0800E2A4:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	ldr r2, [sp, #0x10]
	subs r0, r2, r3
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	ldr r2, [sp, #4]
	lsls r6, r2, #0x10
	cmp r0, #0x9f
	bhi _0800E2CA
	asrs r1, r1, #0xf
	adds r0, r7, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	strb r5, [r0]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r4, [r1]
_0800E2CA:
	ldr r0, [sp, #0x14]
	subs r1, r0, r3
	lsls r1, r1, #0x10
	adds r0, r0, r3
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _0800E2E4
	movs r5, #0
	b _0800E2EA
_0800E2E4:
	cmp r1, #0xf0
	ble _0800E2EA
	movs r5, #0xf5
_0800E2EA:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800E2F6
	movs r4, #0
	b _0800E2FC
_0800E2F6:
	cmp r0, #0xf0
	ble _0800E2FC
	movs r4, #0xfa
_0800E2FC:
	asrs r0, r6, #0x10
	mov r1, ip
	asrs r3, r1, #0x10
	subs r0, r0, r3
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800E31C
	asrs r1, r1, #0xf
	adds r0, r7, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	strb r5, [r0]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r4, [r1]
_0800E31C:
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800E334
	adds r0, #6
	lsls r1, r3, #2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	b _0800E352
_0800E334:
	adds r2, r0, #0
	adds r2, #0xa
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r0, r3, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
_0800E352:
	movs r1, #0x80
	lsls r1, r1, #9
	add r1, ip
	lsrs r2, r1, #0x10
	mov r3, r8
	lsls r0, r3, #0x10
	cmp r1, r0
	ble _0800E268
_0800E362:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E374
sub_0800E374: @ 0x0800E374
	push {r4, r5, r6, r7, lr}
	adds r7, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r6, r3, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0800E3B0
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r7, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xf5
	bne _0800E3A6
	ldrb r0, [r1]
	strb r3, [r1]
	b _0800E3B0
_0800E3A6:
	ldrb r0, [r1]
	cmp r2, r0
	bge _0800E3B0
	ldrb r0, [r1]
	strb r6, [r1]
_0800E3B0:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0800E3D2
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	adds r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #0xfa
	beq _0800E3CE
	ldrb r0, [r1]
	cmp r2, r0
	ble _0800E3D2
_0800E3CE:
	ldrb r0, [r1]
	strb r4, [r1]
_0800E3D2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E3D8
sub_0800E3D8: @ 0x0800E3D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov r4, sp
	strh r0, [r4]
	adds r4, #2
	strh r1, [r4]
	add r5, sp, #4
	strh r2, [r5]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r1, sp
	adds r1, #6
	strh r3, [r1]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov sl, r4
	cmp r2, r3
	bne _0800E474
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bls _0800E412
	b _0800E622
_0800E412:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0800E420
	movs r1, #0
	b _0800E426
_0800E420:
	cmp r0, #0xf0
	ble _0800E42A
	movs r1, #0xf5
_0800E426:
	mov r0, sp
	strh r1, [r0]
_0800E42A:
	mov r2, sp
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0800E43A
	movs r0, #0
	strh r0, [r2, #4]
	b _0800E444
_0800E43A:
	cmp r0, #0xf0
	ble _0800E444
	movs r0, #0xf5
	mov r4, sp
	strh r0, [r4, #4]
_0800E444:
	mov r0, sp
	ldrh r0, [r0]
	lsls r1, r0, #0x10
	mov r5, sp
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r1, r0
	bge _0800E45A
	lsrs r2, r1, #0x10
	lsrs r1, r0, #0x10
	b _0800E45E
_0800E45A:
	lsrs r2, r0, #0x10
	lsrs r1, r1, #0x10
_0800E45E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, sl
	movs r4, #0
	ldrsh r2, [r3, r4]
	ldr r3, [sp, #0x3c]
	bl sub_0800E374
	b _0800E622
_0800E474:
	cmp r2, r3
	blt _0800E496
	mov r0, sp
	ldrh r0, [r0]
	str r0, [sp, #0x10]
	mov r5, sp
	ldrh r1, [r5, #4]
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r5, #0x10]
	strh r0, [r5, #4]
	mov r1, sl
	ldrh r1, [r1]
	ldrh r0, [r5, #6]
	mov r2, sl
	strh r0, [r2]
	strh r1, [r5, #6]
_0800E496:
	mov r6, sp
	mov r3, sl
	ldrh r2, [r3]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	bge _0800E4D2
	ldrh r0, [r6, #4]
	ldrh r1, [r6]
	subs r0, r0, r1
	ldrh r1, [r6, #6]
	subs r1, r1, r2
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r5, [r6]
	adds r0, r0, r5
	strh r0, [r6]
	movs r0, #0
	mov r1, sl
	strh r0, [r1]
_0800E4D2:
	mov r0, sp
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrh r2, [r0, #4]
	movs r4, #4
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bge _0800E4EC
	movs r5, #1
	str r5, [sp, #0x14]
	subs r0, r2, r3
	b _0800E4F2
_0800E4EC:
	ldr r0, _0800E520 @ =0x0000FFFF
	str r0, [sp, #0x14]
	subs r0, r3, r2
_0800E4F2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r1, sp
	ldrh r0, [r1, #6]
	mov r2, sl
	ldrh r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #8]
	asrs r0, r0, #0x11
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	movs r4, #0
	mov r8, r4
	ldrh r5, [r2]
	str r5, [sp, #0x18]
	movs r1, #0
	ldrsh r0, [r2, r1]
	b _0800E618
	.align 2, 0
_0800E520: .4byte 0x0000FFFF
_0800E524:
	mov r2, sl
	ldrh r0, [r2]
	cmp r0, #0x9f
	bhi _0800E584
	mov r0, sp
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge _0800E53C
	movs r2, #0
	b _0800E542
_0800E53C:
	cmp r0, #0xf0
	ble _0800E542
	movs r2, #0xf5
_0800E542:
	mov r4, sl
	movs r5, #0
	ldrsh r1, [r4, r5]
	ldr r3, [sp, #0x18]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	beq _0800E55C
	mov r4, sp
	movs r5, #6
	ldrsh r0, [r4, r5]
	cmp r1, r0
	bne _0800E572
_0800E55C:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	mov r3, sl
	movs r4, #0
	ldrsh r2, [r3, r4]
	ldr r3, [sp, #0x3c]
	bl sub_0800E374
	b _0800E584
_0800E572:
	mov r5, sl
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	ldr r1, [sp, #0x3c]
	adds r1, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r2, [r1]
_0800E584:
	mov r2, sl
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, sp
	movs r4, #6
	ldrsh r1, [r3, r4]
	cmp r0, r1
	bgt _0800E622
	mov r5, r8
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r1, #0x10
	ldr r3, [sp, #8]
	lsls r5, r3, #0x10
	ldr r4, [sp, #0x10]
	lsls r4, r4, #0x10
	mov ip, r4
	mov sb, r5
	cmp r2, r5
	blt _0800E5E4
	mov r7, sp
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	ldrh r4, [r7]
_0800E5CA:
	adds r3, r6, r4
	adds r4, r3, #0
	asrs r0, r2, #0x10
	asrs r1, r5, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	cmp r0, r1
	bge _0800E5CA
	strh r3, [r7]
_0800E5E4:
	mov r3, ip
	asrs r2, r3, #0x10
	cmp r2, #0
	ble _0800E612
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, r2
	blt _0800E612
	mov r5, sb
	asrs r0, r5, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r2, sp
	mov r1, sp
	ldr r3, [sp, #0x14]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2]
_0800E612:
	mov r4, sl
	movs r5, #0
	ldrsh r0, [r4, r5]
_0800E618:
	cmp r0, #0x9f
	ble _0800E524
	mov r1, sp
	ldrh r0, [r1, #4]
	strh r0, [r1]
_0800E622:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E634
sub_0800E634: @ 0x0800E634
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov r4, sp
	strh r0, [r4]
	adds r4, #2
	strh r1, [r4]
	add r5, sp, #4
	strh r2, [r5]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r1, sp
	adds r1, #6
	strh r3, [r1]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov sl, r4
	cmp r2, r3
	bne _0800E6D0
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bls _0800E66E
	b _0800E880
_0800E66E:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0800E67C
	movs r1, #0
	b _0800E682
_0800E67C:
	cmp r0, #0xf0
	ble _0800E686
	movs r1, #0xf5
_0800E682:
	mov r0, sp
	strh r1, [r0]
_0800E686:
	mov r2, sp
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0800E696
	movs r0, #0
	strh r0, [r2, #4]
	b _0800E6A0
_0800E696:
	cmp r0, #0xf0
	ble _0800E6A0
	movs r0, #0xf5
	mov r4, sp
	strh r0, [r4, #4]
_0800E6A0:
	mov r0, sp
	ldrh r0, [r0]
	lsls r1, r0, #0x10
	mov r5, sp
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r1, r0
	bge _0800E6B6
	lsrs r2, r1, #0x10
	lsrs r1, r0, #0x10
	b _0800E6BA
_0800E6B6:
	lsrs r2, r0, #0x10
	lsrs r1, r1, #0x10
_0800E6BA:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, sl
	movs r4, #0
	ldrsh r2, [r3, r4]
	ldr r3, [sp, #0x3c]
	bl sub_0800E374
	b _0800E880
_0800E6D0:
	cmp r2, r3
	blt _0800E6F2
	mov r0, sp
	ldrh r0, [r0]
	str r0, [sp, #0x10]
	mov r5, sp
	ldrh r1, [r5, #4]
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r5, #0x10]
	strh r0, [r5, #4]
	mov r1, sl
	ldrh r1, [r1]
	ldrh r0, [r5, #6]
	mov r2, sl
	strh r0, [r2]
	strh r1, [r5, #6]
_0800E6F2:
	mov r6, sp
	mov r3, sl
	ldrh r2, [r3]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	bge _0800E72E
	ldrh r0, [r6, #4]
	ldrh r1, [r6]
	subs r0, r0, r1
	ldrh r1, [r6, #6]
	subs r1, r1, r2
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r5, [r6]
	adds r0, r0, r5
	strh r0, [r6]
	movs r0, #0
	mov r1, sl
	strh r0, [r1]
_0800E72E:
	mov r0, sp
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrh r2, [r0, #4]
	movs r4, #4
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bge _0800E748
	movs r5, #1
	str r5, [sp, #0x14]
	subs r0, r2, r3
	b _0800E74E
_0800E748:
	ldr r0, _0800E77C @ =0x0000FFFF
	str r0, [sp, #0x14]
	subs r0, r3, r2
_0800E74E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r1, sp
	ldrh r0, [r1, #6]
	mov r2, sl
	ldrh r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #8]
	asrs r0, r0, #0x11
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	movs r4, #0
	mov r8, r4
	ldrh r5, [r2]
	str r5, [sp, #0x18]
	movs r1, #0
	ldrsh r0, [r2, r1]
	b _0800E876
	.align 2, 0
_0800E77C: .4byte 0x0000FFFF
_0800E780:
	mov r2, sl
	ldrh r0, [r2]
	cmp r0, #0x9f
	bhi _0800E7E2
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800E79C
	movs r2, #0
	b _0800E7A2
_0800E79C:
	cmp r0, #0xf0
	ble _0800E7A2
	movs r2, #0xf5
_0800E7A2:
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r5, [sp, #0x18]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	beq _0800E7BC
	mov r3, sp
	movs r4, #6
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bne _0800E7D2
_0800E7BC:
	movs r0, #1
	rsbs r0, r0, #0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r5, sl
	movs r3, #0
	ldrsh r2, [r5, r3]
	ldr r3, [sp, #0x3c]
	bl sub_0800E374
	b _0800E7E2
_0800E7D2:
	mov r4, sl
	movs r5, #0
	ldrsh r0, [r4, r5]
	lsls r0, r0, #1
	ldr r1, [sp, #0x3c]
	adds r0, r1, r0
	ldrb r1, [r0]
	strb r2, [r0]
_0800E7E2:
	mov r2, sl
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, sp
	movs r4, #6
	ldrsh r1, [r3, r4]
	cmp r0, r1
	bgt _0800E880
	mov r5, r8
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r1, #0x10
	ldr r3, [sp, #8]
	lsls r5, r3, #0x10
	ldr r4, [sp, #0x10]
	lsls r4, r4, #0x10
	mov ip, r4
	mov sb, r5
	cmp r2, r5
	blt _0800E842
	mov r7, sp
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	ldrh r4, [r7]
_0800E828:
	adds r3, r6, r4
	adds r4, r3, #0
	asrs r0, r2, #0x10
	asrs r1, r5, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	cmp r0, r1
	bge _0800E828
	strh r3, [r7]
_0800E842:
	mov r3, ip
	asrs r2, r3, #0x10
	cmp r2, #0
	ble _0800E870
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, r2
	blt _0800E870
	mov r5, sb
	asrs r0, r5, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r2, sp
	mov r1, sp
	ldr r3, [sp, #0x14]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2]
_0800E870:
	mov r4, sl
	movs r5, #0
	ldrsh r0, [r4, r5]
_0800E876:
	cmp r0, #0x9f
	ble _0800E780
	mov r1, sp
	ldrh r0, [r1, #4]
	strh r0, [r1]
_0800E880:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E890
sub_0800E890: @ 0x0800E890
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #2
	ldrsh r1, [r5, r0]
	movs r2, #6
	ldrsh r0, [r5, r2]
	cmp r1, r0
	ble _0800E8AC
	ldr r1, [r5]
	ldr r0, [r5, #4]
	str r0, [r5]
	str r1, [r5, #4]
_0800E8AC:
	movs r7, #6
	ldrsh r1, [r5, r7]
	movs r2, #0xa
	ldrsh r0, [r5, r2]
	cmp r1, r0
	ble _0800E8C0
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	str r0, [r5, #4]
	str r1, [r5, #8]
_0800E8C0:
	movs r7, #2
	ldrsh r1, [r5, r7]
	movs r2, #6
	ldrsh r0, [r5, r2]
	cmp r1, r0
	ble _0800E8D4
	ldr r1, [r5]
	ldr r0, [r5, #4]
	str r0, [r5]
	str r1, [r5, #4]
_0800E8D4:
	movs r7, #8
	ldrsh r3, [r5, r7]
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r3, r3, r0
	movs r7, #0xa
	ldrsh r2, [r5, r7]
	movs r1, #2
	ldrsh r4, [r5, r1]
	subs r2, r2, r4
	movs r7, #4
	ldrsh r1, [r5, r7]
	subs r1, r1, r0
	movs r7, #6
	ldrsh r0, [r5, r7]
	subs r0, r0, r4
	muls r1, r2, r1
	muls r0, r3, r0
	subs r1, r1, r0
	cmp r1, #0
	blt _0800E90C
	add r0, sp, #4
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r2, [r0, #2]
	b _0800E91A
_0800E90C:
	add r0, sp, #4
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	adds r1, r0, #0
	movs r0, #1
	strb r0, [r1, #2]
_0800E91A:
	movs r1, #0
_0800E91C:
	adds r4, r1, #1
	adds r3, r4, #0
	cmp r4, #2
	ble _0800E926
	movs r3, #0
_0800E926:
	mov r0, sp
	adds r0, r0, r1
	adds r0, #4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E952
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r7, #2
	ldrsh r1, [r1, r7]
	lsls r3, r3, #2
	adds r3, r3, r5
	movs r7, #0
	ldrsh r2, [r3, r7]
	movs r7, #2
	ldrsh r3, [r3, r7]
	str r6, [sp]
	bl sub_0800E634
	b _0800E970
_0800E952:
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r7, #2
	ldrsh r1, [r1, r7]
	lsls r3, r3, #2
	adds r3, r3, r5
	movs r7, #0
	ldrsh r2, [r3, r7]
	movs r7, #2
	ldrsh r3, [r3, r7]
	str r6, [sp]
	bl sub_0800E3D8
_0800E970:
	adds r1, r4, #0
	cmp r1, #2
	ble _0800E91C
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E980
sub_0800E980: @ 0x0800E980
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov r8, r1
	adds r7, r3, #0
	cmp r2, #0
	beq _0800EA0C
	cmp r0, #0
	beq _0800E9EC
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r3, r0, r1
	ldrh r5, [r2, #4]
	ldrh r1, [r2, #8]
	movs r4, #8
	ldrsh r0, [r2, r4]
	cmp r0, #0
	blt _0800E9DC
	mov r0, r8
	cmp r0, #0
	beq _0800E9DC
	ldrh r0, [r0]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800E9C6
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0800E9C6:
	ldrh r1, [r2, #0xa]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r4, r0, #0
	muls r4, r1, r4
	adds r1, r4, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0800E9DC:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	muls r3, r0, r3
	asrs r0, r3, #8
	ldrh r1, [r2]
	adds r0, r0, r1
	mov r3, sb
	strh r0, [r3]
_0800E9EC:
	mov r4, r8
	cmp r4, #0
	beq _0800EA0C
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r3, #2
	ldrsh r0, [r2, r3]
	subs r3, r1, r0
	movs r4, #6
	ldrsh r0, [r2, r4]
	muls r3, r0, r3
	asrs r0, r3, #8
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	mov r1, r8
	strh r0, [r1]
_0800EA0C:
	cmp r7, #0
	beq _0800EA7E
	mov r3, sb
	ldrh r4, [r3]
	ldrh r0, [r7]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	ldrh r5, [r0]
	ldrh r0, [r7, #2]
	subs r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldrb r0, [r7, #4]
	bl sub_08007F04
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r6, r4, #0
	muls r6, r0, r6
	ldrb r0, [r7, #4]
	bl sub_08007EF0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r5, r0
	adds r3, r6, r0
	asrs r0, r3, #8
	ldrh r1, [r7]
	adds r0, r0, r1
	mov r3, sb
	strh r0, [r3]
	ldrb r0, [r7, #4]
	bl sub_08007EF0
	rsbs r4, r4, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r6, r4, #0
	muls r6, r0, r6
	ldrb r0, [r7, #4]
	bl sub_08007F04
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r5, r0
	adds r3, r6, r0
	asrs r0, r3, #8
	ldrh r7, [r7, #2]
	adds r0, r0, r7
	mov r4, r8
	strh r0, [r4]
_0800EA7E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800EA8C
sub_0800EA8C: @ 0x0800EA8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x74]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x20]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x24]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x28]
	movs r0, #0
	mov sb, r0
	movs r1, #0
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x1c]
	ldrh r1, [r2]
	add r0, sp, #4
	strh r1, [r0]
	ldrh r0, [r2, #2]
	mov r4, sp
	adds r4, #6
	strh r0, [r4]
	add r0, sp, #4
	adds r1, r4, #0
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_0800E980
	ldrh r5, [r4]
	movs r3, #1
	mov r8, r3
	adds r7, r4, #0
	mov r4, sp
	adds r4, #0xc
	str r4, [sp, #0x44]
	mov r0, sp
	adds r0, #0xe
	str r0, [sp, #0x48]
	cmp r8, sl
	bhs _0800EB40
	add r6, sp, #8
	subs r4, #2
_0800EAF4:
	mov r2, r8
	lsls r1, r2, #2
	ldr r3, [sp, #0x1c]
	adds r1, r1, r3
	ldrh r0, [r1]
	strh r0, [r6]
	ldrh r0, [r1, #2]
	strh r0, [r4]
	adds r0, r6, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_0800E980
	ldrh r2, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r1, r0
	bge _0800EB24
	mov sb, r8
	strh r2, [r7]
	b _0800EB32
_0800EB24:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _0800EB32
	mov r5, r8
	str r5, [sp, #0x2c]
	ldrh r5, [r4]
_0800EB32:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r8, sl
	blo _0800EAF4
_0800EB40:
	mov r0, sb
	str r0, [sp, #0x30]
	lsls r1, r0, #2
	ldr r2, [sp, #0x1c]
	adds r1, r1, r2
	ldrh r0, [r1]
	ldr r3, [sp, #0x20]
	lsls r5, r3, #0x10
	asrs r4, r5, #0x10
	str r4, [sp, #0x38]
	adds r0, r4, r0
	ldr r2, [sp, #0x44]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	ldr r3, [sp, #0x24]
	lsls r4, r3, #0x10
	asrs r1, r4, #0x10
	mov r8, r1
	add r0, r8
	ldr r2, [sp, #0x48]
	strh r0, [r2]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_0800E980
	movs r0, #0x20
	ldr r3, [sp, #0x28]
	ands r0, r3
	str r5, [sp, #0x4c]
	str r4, [sp, #0x50]
	cmp r0, #0
	beq _0800EB8A
	movs r4, #1
	str r4, [sp, #0x34]
	b _0800EC44
_0800EB8A:
	ldr r5, [sp, #0x44]
	ldrh r5, [r5]
	str r5, [sp, #0x3c]
	ldr r0, [sp, #0x48]
	ldrh r0, [r0]
	str r0, [sp, #0x40]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sl
	bl DivRem
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r4, #2
	ldr r2, [sp, #0x1c]
	adds r1, r1, r2
	ldrh r0, [r1]
	ldr r3, [sp, #0x38]
	adds r0, r3, r0
	add r7, sp, #0x10
	strh r0, [r7]
	ldrh r0, [r1, #2]
	add r0, r8
	mov r6, sp
	adds r6, #0x12
	strh r0, [r6]
	adds r0, r7, #0
	adds r1, r6, #0
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_0800E980
	ldr r0, [sp, #0x2c]
	cmp r0, r4
	bne _0800EBE6
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sl
	bl DivRem
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0800EBE6:
	mov r1, sl
	bl DivRem
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r4, [sp, #0x1c]
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r5, [sp, #0x38]
	adds r1, r5, r1
	add r4, sp, #0x14
	strh r1, [r4]
	ldrh r0, [r0, #2]
	add r0, r8
	mov r5, sp
	adds r5, #0x16
	strh r0, [r5]
	adds r0, r4, #0
	adds r1, r5, #0
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_0800E980
	movs r0, #0
	ldrsh r4, [r4, r0]
	ldr r2, [sp, #0x3c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r4, r4, r1
	movs r0, #0
	ldrsh r3, [r5, r0]
	ldr r5, [sp, #0x40]
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	subs r3, r3, r2
	movs r5, #0
	ldrsh r0, [r7, r5]
	subs r0, r0, r1
	movs r5, #0
	ldrsh r1, [r6, r5]
	subs r1, r1, r2
	muls r0, r3, r0
	muls r1, r4, r1
	subs r0, r0, r1
	mvns r0, r0
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x34]
_0800EC44:
	ldr r0, [sp, #0x44]
	ldrh r5, [r0]
	ldr r1, [sp, #0x48]
	ldrh r6, [r1]
	movs r2, #1
	mov r8, r2
	cmp r8, sl
	bhs _0800ED02
	add r7, sp, #0x18
	mov r4, sp
	adds r4, #0x1a
_0800EC5A:
	ldr r0, [sp, #0x30]
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	bl DivRem
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [sp, #0x1c]
	adds r0, r0, r3
	ldr r2, [sp, #0x4c]
	asrs r1, r2, #0x10
	ldrh r3, [r0]
	adds r1, r1, r3
	strh r1, [r7]
	ldr r2, [sp, #0x50]
	asrs r1, r2, #0x10
	ldrh r0, [r0, #2]
	adds r1, r1, r0
	strh r1, [r4]
	adds r0, r7, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_0800E980
	ldr r3, [sp, #0x34]
	cmp r3, #0
	beq _0800ECBA
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bge _0800ECC6
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r3, #0
	ldrsh r2, [r7, r3]
	movs r5, #0
	ldrsh r3, [r4, r5]
	ldr r5, [sp, #0x80]
	str r5, [sp]
	bl sub_0800E634
	b _0800ECF0
_0800ECBA:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bge _0800ECDC
_0800ECC6:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r3, #0
	ldrsh r2, [r7, r3]
	movs r5, #0
	ldrsh r3, [r4, r5]
	ldr r5, [sp, #0x80]
	str r5, [sp]
	bl sub_0800E3D8
	b _0800ECF0
_0800ECDC:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r3, #0
	ldrsh r2, [r7, r3]
	movs r5, #0
	ldrsh r3, [r4, r5]
	ldr r5, [sp, #0x80]
	str r5, [sp]
	bl sub_0800E634
_0800ECF0:
	ldrh r5, [r7]
	ldrh r6, [r4]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r8, sl
	blo _0800EC5A
_0800ED02:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _0800ED4A
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	ldr r2, [sp, #0x48]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bge _0800ED30
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp, #0x44]
	movs r5, #0
	ldrsh r2, [r4, r5]
	ldr r4, [sp, #0x48]
	movs r5, #0
	ldrsh r3, [r4, r5]
	ldr r4, [sp, #0x80]
	str r4, [sp]
	bl sub_0800E634
	b _0800ED88
_0800ED30:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r5, [sp, #0x44]
	movs r3, #0
	ldrsh r2, [r5, r3]
	ldr r4, [sp, #0x48]
	movs r5, #0
	ldrsh r3, [r4, r5]
	ldr r4, [sp, #0x80]
	str r4, [sp]
	bl sub_0800E3D8
	b _0800ED88
_0800ED4A:
	ldr r3, [sp, #0x48]
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r1, r0
	bge _0800ED70
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp, #0x44]
	movs r5, #0
	ldrsh r2, [r4, r5]
	movs r4, #0
	ldrsh r3, [r3, r4]
	ldr r5, [sp, #0x80]
	str r5, [sp]
	bl sub_0800E3D8
	b _0800ED88
_0800ED70:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x44]
	movs r4, #0
	ldrsh r2, [r3, r4]
	ldr r5, [sp, #0x48]
	movs r4, #0
	ldrsh r3, [r5, r4]
	ldr r5, [sp, #0x80]
	str r5, [sp]
	bl sub_0800E634
_0800ED88:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800ED98
sub_0800ED98: @ 0x0800ED98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov ip, r1
	adds r3, r5, #0
	adds r3, #8
	ldr r0, _0800EDB0 @ =0x000003E7
	mov r8, r0
	movs r7, #0
	b _0800EDBC
	.align 2, 0
_0800EDB0: .4byte 0x000003E7
_0800EDB4:
	strh r6, [r3, #8]
	ldrh r0, [r3, #0xa]
	adds r0, #1
	strh r0, [r3, #0xa]
_0800EDBC:
	ldrh r1, [r3, #0xa]
	ldr r2, [r3]
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	cmp r1, r0
	bne _0800EDE6
	lsls r0, r1, #3
	adds r0, #2
	adds r4, r2, r0
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #3]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r8
	bne _0800EE0E
_0800EDE2:
	strh r7, [r3, #0xa]
	b _0800EE0E
_0800EDE6:
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _0800EE0E
	ldrh r1, [r5, #2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0800EDE2
	strh r0, [r3, #8]
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r3, #0xa]
	ldrh r0, [r5, #2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r5, #2]
_0800EE0E:
	ldrh r0, [r3, #0xa]
	lsls r0, r0, #3
	adds r0, #2
	ldr r1, [r3]
	adds r4, r1, r0
	ldrh r1, [r3, #8]
	adds r1, #1
	movs r6, #0
	strh r1, [r3, #8]
	ldrb r2, [r4, #2]
	ldrb r0, [r4, #3]
	lsls r0, r0, #8
	orrs r0, r2
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	bge _0800EDB4
	mov r0, ip
	cmp r0, #0
	beq _0800EE68
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	ldr r0, [r3, #4]
	asrs r1, r1, #0xe
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r0, r1
	ldrb r2, [r4, #4]
	ldrb r1, [r4, #5]
	lsls r1, r1, #8
	orrs r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r3, [r4, #6]
	ldrb r2, [r4, #7]
	lsls r2, r2, #8
	orrs r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r3, ip
	bl sub_0800D98C
_0800EE68:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800EE74
sub_0800EE74: @ 0x0800EE74
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r5, #0
	adds r4, #8
	ldrh r2, [r4, #0xa]
	ldr r1, [r5, #8]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	cmp r2, r0
	bne _0800EEA8
	lsls r0, r2, #2
	adds r0, #2
	adds r3, r1, r0
	ldrb r1, [r3, #2]
	ldrb r0, [r3, #3]
	lsls r0, r0, #8
	orrs r0, r1
	ldr r1, _0800EEA4 @ =0x000003E7
	cmp r0, r1
	bne _0800EED8
	b _0800EEC0
	.align 2, 0
_0800EEA4: .4byte 0x000003E7
_0800EEA8:
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	blt _0800EED8
	ldrh r1, [r5, #2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0800EEC6
_0800EEC0:
	movs r0, #0
	strh r0, [r4, #0xa]
	b _0800EED8
_0800EEC6:
	strh r0, [r4, #8]
	ldr r0, [r5, #8]
	ldrh r0, [r0]
	subs r0, #1
	strh r0, [r4, #0xa]
	ldrh r1, [r5, #2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r5, #2]
_0800EED8:
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, #2
	ldr r1, [r4]
	adds r3, r1, r0
	ldrh r1, [r4, #8]
	adds r1, #1
	strh r1, [r4, #8]
	ldrb r2, [r3, #2]
	ldrb r0, [r3, #3]
	lsls r0, r0, #8
	orrs r0, r2
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	blt _0800EF02
	movs r0, #0
	strh r0, [r4, #8]
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
_0800EF02:
	cmp r6, #0
	beq _0800EF28
	ldrb r0, [r3]
	ldrb r1, [r3, #1]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	ldr r0, [r4, #4]
	asrs r1, r1, #0xe
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r0, r1
	movs r2, #4
	ldrsh r1, [r5, r2]
	movs r3, #6
	ldrsh r2, [r5, r3]
	adds r3, r6, #0
	bl sub_0800D98C
_0800EF28:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800EF30
sub_0800EF30: @ 0x0800EF30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r7, r0, #0
	mov r8, r1
	ldrh r0, [r7, #8]
	mov sb, r0
	movs r1, #8
	ldrsh r3, [r7, r1]
	ldrh r2, [r7, #0xa]
	mov sl, r2
	movs r0, #0xa
	ldrsh r4, [r7, r0]
	adds r0, r4, #1
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0
	movs r2, #0
	bl sub_080080A0
	ldrh r0, [r7, #6]
	subs r4, r0, r4
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	lsls r2, r6, #0x10
	lsls r0, r0, #0x10
	cmp r2, r0
	bgt _0800EFE8
_0800EF6E:
	lsrs r0, r2, #0x10
	cmp r0, #0x9f
	bls _0800EF7E
	add r0, sp, #4
	bl sub_080080F4
	lsls r4, r6, #0x10
	b _0800EFD4
_0800EF7E:
	ldr r0, [sp, #4]
	ldrh r2, [r7, #4]
	subs r1, r2, r0
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r1, #0
	bge _0800EF98
	movs r3, #0
	b _0800EF9E
_0800EF98:
	cmp r1, #0xf0
	ble _0800EF9E
	movs r3, #0xf5
_0800EF9E:
	lsls r2, r6, #0x10
	asrs r1, r2, #0xf
	mov r0, r8
	adds r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r3, [r0]
	adds r0, r4, r5
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r2, #0
	cmp r0, #0
	bge _0800EFC0
	movs r3, #0
	b _0800EFC6
_0800EFC0:
	cmp r0, #0xf0
	ble _0800EFC6
	movs r3, #0xfa
_0800EFC6:
	asrs r0, r4, #0xf
	add r0, r8
	ldrb r1, [r0]
	strb r3, [r0]
	add r0, sp, #4
	bl sub_080080F4
_0800EFD4:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r6, r0, #0x10
	lsls r2, r6, #0x10
	asrs r1, r2, #0x10
	movs r3, #6
	ldrsh r0, [r7, r3]
	cmp r1, r0
	ble _0800EF6E
_0800EFE8:
	mov r4, sb
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r0, sl
	lsls r5, r0, #0x10
	asrs r4, r5, #0x10
	adds r0, r4, #1
	str r0, [sp]
	add r0, sp, #4
	movs r2, #0
	movs r3, #0
	bl sub_080080A0
	ldrh r0, [r7, #6]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r3, r6, #0x10
	asrs r1, r3, #0x10
	movs r2, #6
	ldrsh r0, [r7, r2]
	adds r0, r0, r4
	mov sb, r5
	cmp r1, r0
	bgt _0800F09A
_0800F01A:
	lsrs r0, r3, #0x10
	cmp r0, #0x9f
	bls _0800F02A
	add r0, sp, #4
	bl sub_080080F4
	lsls r4, r6, #0x10
	b _0800F080
_0800F02A:
	ldr r0, [sp, #4]
	ldrh r2, [r7, #4]
	subs r1, r2, r0
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r1, #0
	bge _0800F044
	movs r3, #0
	b _0800F04A
_0800F044:
	cmp r1, #0xf0
	ble _0800F04A
	movs r3, #0xf5
_0800F04A:
	lsls r2, r6, #0x10
	asrs r1, r2, #0xf
	mov r0, r8
	adds r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r3, [r0]
	adds r0, r4, r5
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r2, #0
	cmp r0, #0
	bge _0800F06C
	movs r3, #0
	b _0800F072
_0800F06C:
	cmp r0, #0xf0
	ble _0800F072
	movs r3, #0xfa
_0800F072:
	asrs r0, r4, #0xf
	add r0, r8
	ldrb r1, [r0]
	strb r3, [r0]
	add r0, sp, #4
	bl sub_080080F4
_0800F080:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, r3
	lsrs r6, r0, #0x10
	lsls r3, r6, #0x10
	asrs r2, r3, #0x10
	movs r4, #6
	ldrsh r0, [r7, r4]
	mov r4, sb
	asrs r1, r4, #0x10
	adds r0, r0, r1
	cmp r2, r0
	ble _0800F01A
_0800F09A:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F0AC
sub_0800F0AC: @ 0x0800F0AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov ip, r0
	adds r7, r1, #0
	ldrh r0, [r0, #8]
	mov r8, r0
	mov r1, ip
	ldrh r1, [r1, #0xa]
	str r1, [sp]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800F1C6
	movs r2, #0
	mov r3, ip
	movs r4, #6
	ldrsh r1, [r3, r4]
	mov sb, r0
	ldrh r3, [r3, #6]
	mov r0, sp
	strh r3, [r0, #8]
	cmp r2, r1
	bgt _0800F148
	ldr r4, [sp]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	mov sl, r1
_0800F0EA:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	ldr r0, [sp, #4]
	cmp r1, r0
	blt _0800F13A
	cmp r1, #0x9f
	bgt _0800F13A
	mov r3, ip
	ldrh r5, [r3, #4]
	mov r0, sb
	asrs r4, r0, #0x10
	subs r0, r5, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0800F10E
	movs r2, #0
_0800F10E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bgt _0800F13A
	lsls r3, r1, #1
	adds r0, r7, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	strb r2, [r0]
	adds r0, r4, r5
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0800F13A
	cmp r0, #0xff
	ble _0800F134
	movs r2, #0xff
_0800F134:
	adds r0, r7, r3
	ldrb r1, [r0]
	strb r2, [r0]
_0800F13A:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, sl
	ble _0800F0EA
_0800F148:
	mov r3, sp
	ldrh r0, [r3, #8]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r1, sb
	cmp r1, #0
	ble _0800F1C6
	ldr r4, [sp]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
_0800F160:
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	adds r6, r0, #0
	cmp r3, sb
	blt _0800F1AC
	cmp r3, #0x9f
	bgt _0800F1AC
	mov r0, ip
	ldrh r5, [r0, #4]
	asrs r4, r1, #0x10
	subs r0, r5, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0800F180
	movs r2, #0
_0800F180:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	bgt _0800F1AC
	lsls r3, r3, #1
	adds r0, r7, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	strb r2, [r0]
	adds r0, r4, r5
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0800F1AC
	cmp r0, #0xef
	ble _0800F1A6
	movs r2, #0xef
_0800F1A6:
	adds r0, r7, r3
	ldrb r1, [r0]
	strb r2, [r0]
_0800F1AC:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	mov r3, r8
	lsls r0, r3, #0x10
	ldr r4, _0800F1D8 @ =0xFFFE0000
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r0, #0x10
	cmp r1, #0
	bgt _0800F160
_0800F1C6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F1D8: .4byte 0xFFFE0000

	thumb_func_start sub_0800F1DC
sub_0800F1DC: @ 0x0800F1DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp]
	mov r8, r1
	ldrh r7, [r0, #8]
	ldrh r3, [r0, #0xa]
	lsls r1, r7, #0x10
	cmp r1, #0
	bge _0800F1F8
	b _0800F5AC
_0800F1F8:
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	bne _0800F200
	b _0800F3D4
_0800F200:
	lsrs r2, r1, #0x10
	lsls r1, r2, #0x10
	asrs r0, r1, #0x11
	lsls r0, r0, #0x10
	ldr r4, [sp]
	ldrh r6, [r4, #4]
	str r3, [sp, #8]
	lsrs r5, r0, #0x10
	cmp r1, r0
	bgt _0800F216
_0800F214:
	b _0800F214
_0800F216:
	movs r0, #0
	str r0, [sp, #4]
	adds r7, r2, #0
	lsls r1, r7, #0x10
	lsrs r2, r1, #0x10
	mov sl, r2
	lsls r4, r2, #0x10
	lsls r3, r3, #0x10
	str r3, [sp, #0x2c]
	cmp r4, #0
	bge _0800F22E
	b _0800F35A
_0800F22E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	asrs r1, r1, #0x10
	str r1, [sp, #0x14]
_0800F23E:
	asrs r4, r4, #0x10
	ldr r3, [sp, #0x10]
	adds r0, r4, #0
	muls r0, r3, r0
	ldr r1, [sp, #0x14]
	bl Div
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	lsls r5, r0, #0x10
	asrs r0, r5, #0x10
	ldr r1, [sp, #0x10]
	muls r0, r1, r0
	ldr r1, [sp, #0x14]
	bl Div
	adds r2, r0, #0
	mov r3, sb
	subs r0, r3, r4
	subs r0, #1
	lsls r0, r0, #0x10
	add r4, sb
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800F27C
	movs r3, #0
	b _0800F282
_0800F27C:
	cmp r0, #0xf0
	ble _0800F282
	movs r3, #0xf5
_0800F282:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800F28E
	movs r4, #0
	b _0800F294
_0800F28E:
	cmp r0, #0xf0
	ble _0800F294
	movs r4, #0xfa
_0800F294:
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	subs r1, r1, r2
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	adds r6, r0, #0
	cmp r1, #0x9f
	bhi _0800F2B8
	asrs r1, r2, #0xf
	mov r0, r8
	adds r0, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	strb r3, [r0]
	add r1, r8
	ldrb r0, [r1]
	strb r4, [r1]
_0800F2B8:
	asrs r0, r5, #0x10
	mov r2, sb
	subs r1, r2, r0
	subs r1, #1
	lsls r1, r1, #0x10
	add r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _0800F2D6
	movs r3, #0
	b _0800F2DC
_0800F2D6:
	cmp r1, #0xf0
	ble _0800F2DC
	movs r3, #0xf5
_0800F2DC:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800F2E8
	movs r4, #0
	b _0800F2EE
_0800F2E8:
	cmp r0, #0xf0
	ble _0800F2EE
	movs r4, #0xfa
_0800F2EE:
	asrs r0, r6, #0x10
	ldr r5, [sp, #0xc]
	adds r0, r0, r5
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800F30E
	asrs r1, r1, #0xf
	mov r0, r8
	adds r0, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	strb r3, [r0]
	add r1, r8
	ldrb r0, [r1]
	strb r4, [r1]
_0800F30E:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, #1
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r1, r3
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0xf
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, #0
	bge _0800F34C
	mov r1, sl
	lsls r0, r1, #0x10
	ldr r4, _0800F3D0 @ =0xFFFF0000
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0xf
	subs r1, #2
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0800F34C:
	mov r5, sl
	lsls r4, r5, #0x10
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	cmp r4, r0
	blt _0800F35A
	b _0800F23E
_0800F35A:
	ldr r2, [sp]
	ldrh r7, [r2, #8]
	ldr r3, [sp, #0x2c]
	lsrs r4, r3, #0x10
	lsls r1, r4, #0x10
	asrs r0, r1, #0x10
	movs r5, #6
	ldrsh r2, [r2, r5]
	cmp r0, r2
	bgt _0800F44C
	mov sb, r2
_0800F370:
	asrs r1, r1, #0x10
	cmp r1, #0x9f
	bgt _0800F3BC
	ldr r0, [sp]
	ldrh r6, [r0, #4]
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	subs r0, r6, r5
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0800F38C
	movs r2, #0
_0800F38C:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	bgt _0800F3BC
	lsls r3, r1, #1
	mov r0, r8
	adds r0, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	strb r2, [r0]
	adds r0, r5, r6
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0800F3BC
	cmp r0, #0xef
	ble _0800F3B4
	movs r2, #0xef
_0800F3B4:
	mov r1, r8
	adds r0, r1, r3
	ldrb r1, [r0]
	strb r2, [r0]
_0800F3BC:
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	lsls r1, r4, #0x10
	asrs r0, r1, #0x10
	cmp r0, sb
	ble _0800F370
	b _0800F44C
	.align 2, 0
_0800F3D0: .4byte 0xFFFF0000
_0800F3D4:
	movs r4, #0
	ldr r5, [sp]
	movs r0, #6
	ldrsh r2, [r5, r0]
	mov ip, r1
	cmp r4, r2
	bgt _0800F44C
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	mov sb, r2
_0800F3EA:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, sl
	blt _0800F43E
	cmp r1, #0x9f
	bgt _0800F43E
	ldr r2, [sp]
	ldrh r5, [r2, #4]
	mov r3, ip
	asrs r4, r3, #0x10
	subs r0, r5, r4
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0800F40E
	movs r2, #0
_0800F40E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	bgt _0800F43E
	lsls r3, r1, #1
	mov r0, r8
	adds r0, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	strb r2, [r0]
	adds r0, r4, r5
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0800F43E
	cmp r0, #0xef
	ble _0800F436
	movs r2, #0xef
_0800F436:
	mov r4, r8
	adds r0, r4, r3
	ldrb r1, [r0]
	strb r2, [r0]
_0800F43E:
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r6, r5
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, sb
	ble _0800F3EA
_0800F44C:
	lsls r0, r7, #0x10
	cmp r0, #0
	bne _0800F454
	b _0800F5AC
_0800F454:
	lsrs r2, r0, #0x10
	lsls r1, r2, #0x10
	asrs r0, r1, #0x11
	lsls r0, r0, #0x10
	ldr r3, [sp]
	ldrh r5, [r3, #4]
	ldrh r4, [r3, #6]
	str r4, [sp, #0x1c]
	lsrs r3, r0, #0x10
	cmp r1, r0
	bgt _0800F46C
_0800F46A:
	b _0800F46A
_0800F46C:
	movs r0, #0
	str r0, [sp, #0x18]
	adds r7, r2, #0
	lsls r1, r7, #0x10
	lsrs r2, r1, #0x10
	mov sl, r2
	lsls r4, r2, #0x10
	cmp r4, #0
	bge _0800F480
	b _0800F5AC
_0800F480:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x24]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	asrs r1, r1, #0x10
	str r1, [sp, #0x28]
_0800F490:
	asrs r4, r4, #0x10
	ldr r3, [sp, #0x24]
	adds r0, r4, #0
	muls r0, r3, r0
	ldr r1, [sp, #0x28]
	bl Div
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	lsls r5, r0, #0x10
	asrs r0, r5, #0x10
	ldr r1, [sp, #0x24]
	muls r0, r1, r0
	ldr r1, [sp, #0x28]
	bl Div
	adds r2, r0, #0
	mov r3, sb
	subs r0, r3, r4
	subs r0, #1
	lsls r0, r0, #0x10
	add r4, sb
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800F4CE
	movs r3, #0
	b _0800F4D4
_0800F4CE:
	cmp r0, #0xf0
	ble _0800F4D4
	movs r3, #0xf5
_0800F4D4:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800F4E0
	movs r4, #0
	b _0800F4E6
_0800F4E0:
	cmp r0, #0xf0
	ble _0800F4E6
	movs r4, #0xfa
_0800F4E6:
	ldr r1, [sp, #0x1c]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r1, r1, r2
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	adds r6, r0, #0
	cmp r1, #0x9f
	bhi _0800F50A
	asrs r1, r2, #0xf
	mov r0, r8
	adds r0, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	strb r3, [r0]
	add r1, r8
	ldrb r0, [r1]
	strb r4, [r1]
_0800F50A:
	asrs r0, r5, #0x10
	mov r2, sb
	subs r1, r2, r0
	subs r1, #1
	lsls r1, r1, #0x10
	add r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _0800F528
	movs r3, #0
	b _0800F52E
_0800F528:
	cmp r1, #0xf0
	ble _0800F52E
	movs r3, #0xf5
_0800F52E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800F53A
	movs r4, #0
	b _0800F540
_0800F53A:
	cmp r0, #0xf0
	ble _0800F540
	movs r4, #0xfa
_0800F540:
	asrs r0, r6, #0x10
	ldr r5, [sp, #0x20]
	adds r0, r0, r5
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800F560
	asrs r1, r1, #0xf
	mov r0, r8
	adds r0, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	strb r3, [r0]
	add r1, r8
	ldrb r0, [r1]
	strb r4, [r1]
_0800F560:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, #1
	ldr r2, [sp, #0x18]
	lsls r1, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r1, r3
	lsrs r1, r1, #0x10
	str r1, [sp, #0x18]
	lsls r2, r2, #0x10
	asrs r2, r2, #0xf
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, #0
	bge _0800F59E
	mov r1, sl
	lsls r0, r1, #0x10
	ldr r4, _0800F5BC @ =0xFFFF0000
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0xf
	subs r1, #2
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0800F59E:
	mov r5, sl
	lsls r4, r5, #0x10
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x10
	cmp r4, r0
	blt _0800F5AC
	b _0800F490
_0800F5AC:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F5BC: .4byte 0xFFFF0000

	thumb_func_start sub_0800F5C0
sub_0800F5C0: @ 0x0800F5C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r2, r0, #0
	str r1, [sp, #0x30]
	ldrh r0, [r2, #8]
	str r0, [sp, #0x3c]
	ldrh r4, [r2, #4]
	ldrh r1, [r2, #6]
	mov r8, r1
	ldrh r5, [r2, #0xa]
	movs r0, #0xe
	ldrsh r1, [r2, r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x40]
	adds r6, r0, #0
	ldr r1, [sp, #0x3c]
	cmp r1, #2
	bhi _0800F5F2
_0800F5F0:
	b _0800F5F0
_0800F5F2:
	ldrb r2, [r2, #0xc]
	mov sl, r2
	movs r3, #0x80
	lsls r3, r3, #1
	ldr r2, [sp, #0x3c]
	str r2, [sp]
	add r0, sp, #4
	movs r1, #0
	movs r2, #0
	bl sub_080080A0
	mov r0, sl
	adds r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r7, r1, #0x10
	adds r1, r0, #0
	muls r1, r7, r1
	asrs r1, r1, #8
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x34]
	mov r0, sl
	adds r0, #0xc0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r7, r1
	asrs r1, r1, #8
	asrs r1, r6
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x38]
	ldr r6, [sp, #0x34]
	adds r5, r0, #0
	movs r1, #1
	mov r8, r1
	str r4, [sp, #0x44]
	str r2, [sp, #0x48]
	ldr r2, [sp, #0x3c]
	cmp r8, r2
	bhs _0800F704
	mov sb, r7
_0800F668:
	add r0, sp, #4
	bl sub_080080F4
	ldr r0, [sp, #4]
	mov r4, sl
	subs r0, r4, r0
	subs r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	muls r1, r0, r1
	asrs r1, r1, #8
	ldr r2, [sp, #0x44]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [sp, #4]
	mov r1, sl
	subs r0, r1, r0
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08007EF0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	asrs r0, r0, #8
	ldr r1, [sp, #0x40]
	asrs r0, r1
	ldr r2, [sp, #0x48]
	asrs r1, r2, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	lsrs r7, r1, #0x10
	asrs r5, r1, #0x10
	cmp r3, r5
	bge _0800F6DC
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	ldr r1, [sp, #0x30]
	str r1, [sp]
	adds r1, r3, #0
	adds r3, r5, #0
	bl sub_0800E634
	b _0800F6F0
_0800F6DC:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	ldr r1, [sp, #0x30]
	str r1, [sp]
	adds r1, r3, #0
	adds r3, r5, #0
	bl sub_0800E3D8
_0800F6F0:
	lsrs r6, r4, #0x10
	adds r5, r7, #0
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, [sp, #0x3c]
	cmp r8, r2
	blo _0800F668
_0800F704:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	ldr r4, [sp, #0x38]
	lsls r0, r4, #0x10
	asrs r3, r0, #0x10
	cmp r1, r3
	bge _0800F726
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp, #0x34]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	ldr r4, [sp, #0x30]
	str r4, [sp]
	bl sub_0800E634
	b _0800F738
_0800F726:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp, #0x34]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	ldr r4, [sp, #0x30]
	str r4, [sp]
	bl sub_0800E3D8
_0800F738:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F748
sub_0800F748: @ 0x0800F748
	push {r4, r5, r6, r7, lr}
	ldr r4, _0800F780 @ =0xFFFFFD7C
	add sp, r4
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r4, #0
	adds r5, #8
	cmp r6, #0
	beq _0800F80C
	movs r0, #8
	ldrsh r1, [r4, r0]
	cmp r1, #0
	ble _0800F80C
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _0800F80C
	cmp r1, r0
	bne _0800F784
	adds r0, r1, #0
	movs r7, #4
	ldrsh r1, [r4, r7]
	movs r3, #6
	ldrsh r2, [r4, r3]
	add r3, sp, #4
	bl sub_0800FB34
	b _0800F79C
	.align 2, 0
_0800F780: .4byte 0xFFFFFD7C
_0800F784:
	movs r7, #8
	ldrsh r0, [r4, r7]
	movs r2, #2
	ldrsh r1, [r5, r2]
	movs r3, #4
	ldrsh r2, [r4, r3]
	movs r7, #6
	ldrsh r3, [r4, r7]
	add r7, sp, #4
	str r7, [sp]
	bl sub_0800FC70
_0800F79C:
	movs r1, #6
	ldrsh r0, [r4, r1]
	movs r2, #4
	ldrsh r1, [r5, r2]
	add r2, sp, #4
	bl sub_08010204
	movs r5, #0
	mov r7, sp
	adds r7, #6
_0800F7B0:
	lsls r0, r5, #2
	mov r2, sp
	adds r2, r2, r0
	adds r2, #4
	adds r0, r7, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bgt _0800F802
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r4, [r2]
	adds r0, r1, #0
	cmp r0, #0
	bge _0800F7DA
	movs r4, #0
	b _0800F7E0
_0800F7DA:
	cmp r0, #0xf0
	ble _0800F7E0
	movs r4, #0xf5
_0800F7E0:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800F7EC
	movs r3, #0
	b _0800F7F2
_0800F7EC:
	cmp r0, #0xf0
	ble _0800F7F2
	movs r3, #0xfa
_0800F7F2:
	lsls r1, r5, #1
	adds r0, r6, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	strb r4, [r0]
	adds r1, r6, r1
	ldrb r0, [r1]
	strb r3, [r1]
_0800F802:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x9f
	bls _0800F7B0
_0800F80C:
	movs r3, #0xa1
	lsls r3, r3, #2
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F818
sub_0800F818: @ 0x0800F818
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	mov ip, r1
	adds r4, r6, #0
	adds r4, #8
	ldr r5, [r6, #8]
	movs r0, #1
	mov sl, r0
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, #2
	bhi _0800F840
_0800F83E:
	b _0800F83E
_0800F840:
	ldrh r2, [r6, #4]
	ldrh r3, [r6, #6]
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r4, #4]
	muls r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, ip
	cmp r1, #0
	beq _0800F8AA
	movs r1, #0
	mov r8, r1
	mov sb, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r7, r5, r0
	ldrh r1, [r6, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800F876
	movs r0, #8
	adds r0, r0, r4
	mov r8, r0
_0800F876:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800F884
	movs r1, #0x14
	adds r1, r1, r4
	mov sb, r1
_0800F884:
	ldrb r0, [r5]
	ldrb r1, [r5, #1]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ldrh r0, [r6, #2]
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r0, sb
	str r0, [sp, #8]
	mov r0, ip
	str r0, [sp, #0xc]
	adds r0, r7, #0
	bl sub_0800EA8C
_0800F8AA:
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _0800F8D0
	ldrh r0, [r4, #0x1c]
	adds r0, #1
	strh r0, [r4, #0x1c]
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	ldrh r0, [r4, #4]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r1, r0
	blt _0800F8CC
	movs r0, #0
	strh r0, [r4, #0x1c]
	b _0800F8D0
_0800F8CC:
	movs r1, #0
	mov sl, r1
_0800F8D0:
	mov r0, sl
	cmp r0, #0
	beq _0800F8DC
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_0800F8DC:
	ldrh r2, [r4, #4]
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	blt _0800F918
	ldrh r1, [r6, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F8FE
	movs r0, #0
	strh r0, [r4, #4]
	b _0800F918
_0800F8FE:
	ldr r0, [r4]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	strh r0, [r4, #4]
	ldrh r1, [r6, #2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r6, #2]
_0800F918:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F928
sub_0800F928: @ 0x0800F928
	push {r4, r5, r6, lr}
	movs r3, #0
	ldr r5, _0800F960 @ =gUnk_020023F0
	movs r4, #0
	movs r6, #0xfa
	lsls r6, r6, #1
	movs r2, #0
_0800F936:
	ldr r0, [r5]
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800F942
	strh r4, [r1]
_0800F942:
	ldr r0, [r5]
	adds r0, r0, r2
	adds r1, r0, r6
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800F950
	strh r4, [r1]
_0800F950:
	adds r2, #0x2c
	adds r3, #1
	cmp r3, #3
	ble _0800F936
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800F960: .4byte gUnk_020023F0

	thumb_func_start sub_0800F964
sub_0800F964: @ 0x0800F964
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0800F974
_0800F972:
	b _0800F972
_0800F974:
	cmp r2, #0
	beq _0800F988
	ldr r0, _0800F984 @ =gUnk_020023F0
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0800F98C
	.align 2, 0
_0800F984: .4byte gUnk_020023F0
_0800F988:
	ldr r0, _0800F9A8 @ =gUnk_020023F0
	ldr r0, [r0]
_0800F98C:
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x84
_0800F992:
	ldrh r0, [r3]
	cmp r0, #0
	beq _0800F9A0
	adds r3, #0x2c
	cmp r3, r1
	ble _0800F992
	movs r3, #0
_0800F9A0:
	cmp r3, #0
	bne _0800F9AC
_0800F9A4:
	b _0800F9A4
	.align 2, 0
_0800F9A8: .4byte gUnk_020023F0
_0800F9AC:
	str r4, [r3, #0xc]
	str r5, [r3, #8]
	movs r0, #0
	strh r0, [r3, #0x10]
	strh r0, [r3, #0x12]
	strh r0, [r3, #6]
	strh r0, [r3, #4]
	movs r1, #0
	cmp r2, #1
	bne _0800F9C2
	movs r1, #1
_0800F9C2:
	movs r0, #2
	orrs r0, r1
	strh r0, [r3, #2]
	movs r0, #1
	strh r0, [r3]
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800F9D4
sub_0800F9D4: @ 0x0800F9D4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r4, #1
	bls _0800F9EC
_0800F9EA:
	b _0800F9EA
_0800F9EC:
	cmp r4, #0
	beq _0800FA04
	ldr r0, _0800F9FC @ =gUnk_020023F0
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0800FA08
	.align 2, 0
_0800F9FC: .4byte gUnk_020023F0
_0800FA00:
	adds r2, r1, #0
	b _0800FA1C
_0800FA04:
	ldr r0, _0800FA24 @ =gUnk_020023F0
	ldr r0, [r0]
_0800FA08:
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x84
_0800FA0E:
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800FA00
	adds r1, #0x2c
	cmp r1, r2
	ble _0800FA0E
	movs r2, #0
_0800FA1C:
	cmp r2, #0
	bne _0800FA28
_0800FA20:
	b _0800FA20
	.align 2, 0
_0800FA24: .4byte gUnk_020023F0
_0800FA28:
	movs r1, #0
	movs r0, #0
	strh r3, [r2, #8]
	strh r0, [r2, #0xa]
	strb r1, [r2, #0xc]
	strh r6, [r2, #4]
	strh r5, [r2, #6]
	cmp r4, #1
	bne _0800FA3C
	movs r0, #1
_0800FA3C:
	strh r0, [r2, #2]
	movs r0, #0xb
	strh r0, [r2]
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FA4C
sub_0800FA4C: @ 0x0800FA4C
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r5, #1
	bls _0800FA6A
_0800FA68:
	b _0800FA68
_0800FA6A:
	cmp r5, #0
	beq _0800FA80
	ldr r0, _0800FA7C @ =gUnk_020023F0
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0800FA84
	.align 2, 0
_0800FA7C: .4byte gUnk_020023F0
_0800FA80:
	ldr r0, _0800FAA0 @ =gUnk_020023F0
	ldr r0, [r0]
_0800FA84:
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x84
_0800FA8A:
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800FA98
	adds r1, #0x2c
	cmp r1, r2
	ble _0800FA8A
	movs r1, #0
_0800FA98:
	cmp r1, #0
	bne _0800FAA4
_0800FA9C:
	b _0800FA9C
	.align 2, 0
_0800FAA0: .4byte gUnk_020023F0
_0800FAA4:
	movs r0, #0
	strh r3, [r1, #8]
	strh r4, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	strh r7, [r1, #4]
	strh r6, [r1, #6]
	cmp r5, #1
	bne _0800FAB8
	movs r0, #1
_0800FAB8:
	strh r0, [r1, #2]
	movs r0, #0xc
	strh r0, [r1]
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FAC8
sub_0800FAC8: @ 0x0800FAC8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0800FAD4
_0800FAD2:
	b _0800FAD2
_0800FAD4:
	cmp r4, #0
	beq _0800FAE8
	ldr r0, _0800FAE4 @ =gUnk_020023F0
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	b _0800FAEC
	.align 2, 0
_0800FAE4: .4byte gUnk_020023F0
_0800FAE8:
	ldr r0, _0800FB08 @ =gUnk_020023F0
	ldr r0, [r0]
_0800FAEC:
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x84
_0800FAF2:
	ldrh r0, [r2]
	cmp r0, #0
	beq _0800FB00
	adds r2, #0x2c
	cmp r2, r3
	ble _0800FAF2
	movs r2, #0
_0800FB00:
	cmp r2, #0
	bne _0800FB0C
_0800FB04:
	b _0800FB04
	.align 2, 0
_0800FB08: .4byte gUnk_020023F0
_0800FB0C:
	str r1, [r2, #8]
	movs r1, #0
	strh r1, [r2, #0xc]
	ldr r0, _0800FB30 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	strh r1, [r2, #6]
	strh r1, [r2, #4]
	movs r0, #0
	cmp r4, #1
	bne _0800FB22
	movs r0, #1
_0800FB22:
	strh r0, [r2, #2]
	movs r0, #0xe
	strh r0, [r2]
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800FB30: .4byte 0x0000FFFF

	thumb_func_start sub_0800FB34
sub_0800FB34: @ 0x0800FB34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	cmp r3, #0
	bne _0800FB54
	b _0800FC60
_0800FB54:
	ldr r0, _0800FC30 @ =0x00F000FF
	str r0, [sp]
	ldr r2, _0800FC34 @ =0x010000A0
	mov r0, sp
	mov r1, r8
	bl CpuFastSet
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _0800FC60
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #1
	movs r0, #3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [sp, #4]
	lsls r3, r0, #0x10
	movs r1, #0
	cmp r3, #0
	blt _0800FC60
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	mov r7, r8
	adds r7, #2
_0800FB94:
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	mov r2, sb
	subs r0, r2, r6
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r2, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r5, r3, #0x10
	mov r3, ip
	adds r0, r3, r5
	lsls r3, r0, #0x10
	lsrs r0, r3, #0x10
	str r1, [sp, #8]
	cmp r0, #0x9f
	bhi _0800FBC2
	asrs r1, r3, #0xe
	mov r3, r8
	adds r0, r3, r1
	strh r4, [r0]
	adds r1, r7, r1
	strh r2, [r1]
_0800FBC2:
	mov r1, ip
	subs r0, r1, r5
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800FBDA
	asrs r1, r1, #0xe
	mov r3, r8
	adds r0, r3, r1
	strh r4, [r0]
	adds r1, r7, r1
	strh r2, [r1]
_0800FBDA:
	mov r1, sb
	subs r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r3, ip
	adds r0, r3, r6
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800FC00
	asrs r1, r1, #0xe
	mov r3, r8
	adds r0, r3, r1
	strh r4, [r0]
	adds r1, r7, r1
	strh r2, [r1]
_0800FC00:
	mov r1, ip
	subs r0, r1, r6
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800FC18
	asrs r1, r1, #0xe
	mov r3, r8
	adds r0, r3, r1
	strh r4, [r0]
	adds r1, r7, r1
	strh r2, [r1]
_0800FC18:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800FC38
	adds r0, #6
	lsls r1, r6, #2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	b _0800FC4E
	.align 2, 0
_0800FC30: .4byte 0x00F000FF
_0800FC34: .4byte 0x010000A0
_0800FC38:
	adds r0, #0xa
	subs r1, r6, r5
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
_0800FC4E:
	ldr r2, [sp, #8]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r2, r3
	lsrs r1, r0, #0x10
	ldr r2, [sp, #4]
	lsls r3, r2, #0x10
	cmp r0, r3
	ble _0800FB94
_0800FC60:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800FC70
sub_0800FC70: @ 0x0800FC70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldr r0, [sp, #0x48]
	cmp r0, #0
	bne _0800FC96
	b _0800FEFC
_0800FC96:
	ldr r0, _0800FDE0 @ =0x00F000FF
	str r0, [sp]
	ldr r2, _0800FDE4 @ =0x010000A0
	mov r0, sp
	ldr r1, [sp, #0x48]
	bl CpuFastSet
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	str r0, [sp, #0x20]
	cmp r3, #0
	bgt _0800FCB0
	b _0800FEFC
_0800FCB0:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	str r0, [sp, #0x24]
	cmp r2, #0
	bgt _0800FCBC
	b _0800FEFC
_0800FCBC:
	movs r1, #0
	str r1, [sp, #4]
	cmp r3, r2
	bgt _0800FCC6
	b _0800FDE8
_0800FCC6:
	adds r7, r5, #0
	ldr r4, [sp, #0x20]
	lsrs r4, r4, #0x10
	mov sb, r4
	lsls r1, r4, #0x10
	cmp r1, #0
	bge _0800FCD6
	b _0800FEFC
_0800FCD6:
	str r2, [sp, #8]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r5, r8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x48]
	adds r0, #2
	mov sl, r0
_0800FCEC:
	asrs r1, r1, #0x10
	mov r8, r1
	ldr r1, [sp, #8]
	mov r0, r8
	muls r0, r1, r0
	ldr r2, [sp, #0x20]
	asrs r4, r2, #0x10
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	ldr r2, [sp, #8]
	adds r0, r6, #0
	muls r0, r2, r0
	adds r1, r4, #0
	bl Div
	adds r4, r0, #0
	ldr r1, [sp, #0xc]
	mov r2, r8
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r1, #0
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, [sp, #0x10]
	adds r0, r1, r4
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800FD40
	asrs r1, r1, #0xe
	ldr r0, [sp, #0x48]
	adds r0, r0, r1
	strh r3, [r0]
	add r1, sl
	strh r2, [r1]
_0800FD40:
	ldr r1, [sp, #0x10]
	subs r0, r1, r4
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800FD58
	asrs r1, r1, #0xe
	ldr r4, [sp, #0x48]
	adds r0, r4, r1
	strh r3, [r0]
	add r1, sl
	strh r2, [r1]
_0800FD58:
	ldr r1, [sp, #0xc]
	subs r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r4, [sp, #0x10]
	adds r0, r4, r5
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800FD7E
	asrs r1, r1, #0xe
	ldr r4, [sp, #0x48]
	adds r0, r4, r1
	strh r3, [r0]
	add r1, sl
	strh r2, [r1]
_0800FD7E:
	ldr r1, [sp, #0x10]
	subs r0, r1, r5
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800FD96
	asrs r1, r1, #0xe
	ldr r4, [sp, #0x48]
	adds r0, r4, r1
	strh r3, [r0]
	add r1, sl
	strh r2, [r1]
_0800FD96:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, #1
	ldr r2, [sp, #4]
	adds r1, r6, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0xf
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, #0
	bge _0800FDD0
	mov r1, sb
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0xf
	subs r1, #2
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0800FDD0:
	mov r5, sb
	lsls r1, r5, #0x10
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	cmp r1, r0
	bge _0800FCEC
	b _0800FEFC
	.align 2, 0
_0800FDE0: .4byte 0x00F000FF
_0800FDE4: .4byte 0x010000A0
_0800FDE8:
	adds r7, r4, #0
	ldr r4, [sp, #0x24]
	lsrs r4, r4, #0x10
	mov sb, r4
	lsls r1, r4, #0x10
	cmp r1, #0
	bge _0800FDF8
	b _0800FEFC
_0800FDF8:
	str r3, [sp, #0x14]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r5, r8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x48]
	adds r0, #2
	mov sl, r0
_0800FE0E:
	asrs r1, r1, #0x10
	mov r8, r1
	ldr r1, [sp, #0x14]
	mov r0, r8
	muls r0, r1, r0
	ldr r2, [sp, #0x24]
	asrs r4, r2, #0x10
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	ldr r2, [sp, #0x14]
	adds r0, r6, #0
	muls r0, r2, r0
	adds r1, r4, #0
	bl Div
	adds r4, r0, #0
	ldr r1, [sp, #0x18]
	subs r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r5, [sp, #0x1c]
	adds r0, r5, r6
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800FE5E
	asrs r1, r1, #0xe
	ldr r5, [sp, #0x48]
	adds r0, r5, r1
	strh r3, [r0]
	add r1, sl
	strh r2, [r1]
_0800FE5E:
	ldr r1, [sp, #0x1c]
	subs r0, r1, r6
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800FE76
	asrs r1, r1, #0xe
	ldr r5, [sp, #0x48]
	adds r0, r5, r1
	strh r3, [r0]
	add r1, sl
	strh r2, [r1]
_0800FE76:
	ldr r1, [sp, #0x18]
	subs r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [sp, #0x1c]
	add r0, r8
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800FE9C
	asrs r1, r1, #0xe
	ldr r4, [sp, #0x48]
	adds r0, r4, r1
	strh r3, [r0]
	add r1, sl
	strh r2, [r1]
_0800FE9C:
	ldr r5, [sp, #0x1c]
	mov r1, r8
	subs r0, r5, r1
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _0800FEB6
	asrs r1, r1, #0xe
	ldr r4, [sp, #0x48]
	adds r0, r4, r1
	strh r3, [r0]
	add r1, sl
	strh r2, [r1]
_0800FEB6:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, #1
	ldr r2, [sp, #4]
	adds r1, r6, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0xf
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, #0
	bge _0800FEF0
	mov r1, sb
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0xf
	subs r1, #2
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0800FEF0:
	mov r5, sb
	lsls r1, r5, #0x10
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	cmp r1, r0
	bge _0800FE0E
_0800FEFC:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800FF0C
sub_0800FF0C: @ 0x0800FF0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r5, r2, #0
	adds r4, r3, #0
	ldr r6, [sp, #0x54]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r0, r5, #0x10
	str r0, [sp, #0x30]
	asrs r5, r5, #0x10
	lsrs r1, r4, #0x10
	mov sl, r1
	asrs r4, r4, #0x10
	adds r0, r4, #1
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_080080A0
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	subs r4, r1, r4
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	lsls r3, r5, #0x10
	asrs r0, r3, #0x10
	cmp r0, r1
	bgt _0800FF9E
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	adds r7, r1, #0
_0800FF66:
	lsrs r0, r3, #0x10
	cmp r0, #0x9f
	bls _0800FF74
	add r0, sp, #4
	bl sub_080080F4
	b _0800FF8C
_0800FF74:
	ldr r1, [sp, #4]
	subs r2, r4, r1
	asrs r3, r3, #0xe
	adds r0, r6, r3
	strh r2, [r0]
	adds r1, r4, r1
	adds r0, r6, #2
	adds r0, r0, r3
	strh r1, [r0]
	add r0, sp, #4
	bl sub_080080F4
_0800FF8C:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	lsls r3, r5, #0x10
	asrs r0, r3, #0x10
	cmp r0, r7
	ble _0800FF66
_0800FF9E:
	ldr r2, [sp, #0x30]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r0, sl
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #1
	str r0, [sp]
	add r0, sp, #4
	movs r2, #0
	movs r3, #0
	bl sub_080080A0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r5, r0, #0x10
	lsls r3, r5, #0x10
	asrs r0, r3, #0x10
	adds r1, r1, r4
	cmp r0, r1
	bgt _08010010
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	adds r7, r1, #0
_0800FFD8:
	lsrs r0, r3, #0x10
	cmp r0, #0x9f
	bls _0800FFE6
	add r0, sp, #4
	bl sub_080080F4
	b _0800FFFE
_0800FFE6:
	ldr r1, [sp, #4]
	subs r2, r4, r1
	asrs r3, r3, #0xe
	adds r0, r6, r3
	strh r2, [r0]
	adds r1, r4, r1
	adds r0, r6, #2
	adds r0, r0, r3
	strh r1, [r0]
	add r0, sp, #4
	bl sub_080080F4
_0800FFFE:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	lsls r3, r5, #0x10
	asrs r0, r3, #0x10
	cmp r0, r7
	ble _0800FFD8
_08010010:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08010020
sub_08010020: @ 0x08010020
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0
	bge _08010042
	b _080101EE
_08010042:
	lsls r1, r0, #0x10
	asrs r3, r1, #0x10
	subs r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	str r1, [sp, #8]
	cmp r0, #0
	bge _08010054
	movs r4, #0
_08010054:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf5
	ble _0801005E
	movs r4, #0xf5
_0801005E:
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0801006A
	movs r2, #0
_0801006A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xfa
	ble _08010074
	movs r2, #0xfa
_08010074:
	movs r3, #0
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	str r0, [sp, #0xc]
	cmp r3, r1
	bgt _080100AA
	movs r0, #2
	add r0, r8
	mov sb, r0
	adds r5, r1, #0
_08010088:
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0x9f
	ble _08010092
	b _080101EE
_08010092:
	lsls r1, r3, #2
	mov r7, r8
	adds r0, r7, r1
	strh r4, [r0]
	add r1, sb
	strh r2, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	ble _08010088
_080100AA:
	lsls r0, r6, #0x10
	cmp r0, #0
	bne _080100B2
	b _080101EE
_080100B2:
	lsrs r2, r0, #0x10
	lsls r1, r2, #0x10
	asrs r0, r1, #0x11
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bgt _080100C2
_080100C0:
	b _080100C0
_080100C2:
	movs r0, #0
	mov sl, r0
	adds r6, r2, #0
	lsls r1, r6, #0x10
	lsrs r7, r1, #0x10
	lsls r4, r7, #0x10
	cmp r4, #0
	bge _080100D4
	b _080101EE
_080100D4:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	asrs r1, r1, #0x10
	str r1, [sp, #4]
_080100DE:
	asrs r4, r4, #0x10
	ldr r1, [sp]
	adds r0, r4, #0
	muls r0, r1, r0
	ldr r1, [sp, #4]
	bl Div
	mov sb, r0
	mov r2, sl
	lsls r5, r2, #0x10
	asrs r0, r5, #0x10
	ldr r3, [sp]
	muls r0, r3, r0
	ldr r1, [sp, #4]
	bl Div
	adds r3, r0, #0
	ldr r1, [sp, #8]
	asrs r0, r1, #0x10
	subs r1, r0, r4
	lsls r1, r1, #0x10
	adds r0, r0, r4
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _0801011C
	movs r4, #0
	b _08010122
_0801011C:
	cmp r1, #0xf0
	ble _08010122
	movs r4, #0xf5
_08010122:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801012E
	movs r2, #0
	b _08010134
_0801012E:
	cmp r0, #0xf0
	ble _08010134
	movs r2, #0xfa
_08010134:
	ldr r1, [sp, #0xc]
	asrs r0, r1, #0x10
	adds r0, r0, r3
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _08010152
	asrs r1, r1, #0xe
	mov r3, r8
	adds r0, r3, r1
	strh r4, [r0]
	mov r0, r8
	adds r0, #2
	adds r0, r0, r1
	strh r2, [r0]
_08010152:
	ldr r1, [sp, #8]
	asrs r0, r1, #0x10
	asrs r2, r5, #0x10
	subs r1, r0, r2
	lsls r1, r1, #0x10
	adds r0, r0, r2
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _08010170
	movs r4, #0
	b _08010176
_08010170:
	cmp r1, #0xf0
	ble _08010176
	movs r4, #0xf5
_08010176:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08010182
	movs r2, #0
	b _08010188
_08010182:
	cmp r0, #0xf0
	ble _08010188
	movs r2, #0xfa
_08010188:
	ldr r3, [sp, #0xc]
	asrs r0, r3, #0x10
	add r0, sb
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x9f
	bhi _080101A6
	asrs r1, r1, #0xe
	mov r3, r8
	adds r0, r3, r1
	strh r4, [r0]
	mov r0, r8
	adds r0, #2
	adds r0, r0, r1
	strh r2, [r0]
_080101A6:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, #1
	mov r2, sl
	lsls r1, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r1, r3
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0xf
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r0, #0
	bge _080101E2
	adds r1, r7, #0
	lsls r0, r1, #0x10
	ldr r7, _08010200 @ =0xFFFF0000
	adds r0, r0, r7
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0xf
	subs r1, #2
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080101E2:
	lsls r4, r7, #0x10
	mov r1, sl
	lsls r0, r1, #0x10
	cmp r4, r0
	blt _080101EE
	b _080100DE
_080101EE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010200: .4byte 0xFFFF0000

	thumb_func_start sub_08010204
sub_08010204: @ 0x08010204
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x30
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	cmp r3, #0
	beq _080102C4
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0
	movs r2, #0
	bl sub_080080A0
	movs r4, #1
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
_08010232:
	movs r6, #0
	add r0, sp, #4
	bl sub_080080F4
	lsls r1, r4, #0x10
	asrs r0, r1, #0x10
	mov r2, r8
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov ip, r1
	cmp r0, #0
	blt _08010274
	cmp r0, #0x9f
	bgt _08010276
	lsls r1, r0, #2
	adds r2, r5, r1
	adds r0, r5, #2
	adds r3, r0, r1
	ldrh r4, [r2]
	movs r7, #0
	ldrsh r1, [r2, r7]
	movs r7, #0
	ldrsh r0, [r3, r7]
	cmp r1, r0
	bgt _08010276
	ldr r1, [sp, #4]
	adds r0, r4, r1
	strh r0, [r2]
	ldrh r0, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	b _08010276
_08010274:
	movs r6, #1
_08010276:
	mov r1, ip
	asrs r0, r1, #0x10
	add r0, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	bgt _080102AC
	cmp r0, #0
	blt _080102B2
	lsls r1, r0, #2
	adds r2, r5, r1
	adds r0, r5, #2
	adds r3, r0, r1
	ldrh r4, [r2]
	movs r7, #0
	ldrsh r1, [r2, r7]
	movs r7, #0
	ldrsh r0, [r3, r7]
	cmp r1, r0
	bgt _080102B2
	ldr r1, [sp, #4]
	subs r0, r4, r1
	strh r0, [r2]
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r3]
	b _080102B2
_080102AC:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080102B2:
	cmp r6, #2
	beq _080102C4
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, ip
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _08010232
_080102C4:
	add sp, #0x30
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080102D0
sub_080102D0: @ 0x080102D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	mov r1, r8
	adds r1, #0xb2
	ldr r0, _080102F8 @ =0x0000FFFF
	strh r0, [r1]
	mov r0, r8
	adds r0, #0xb0
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #4
	movs r6, #0x2c
	b _08010308
	.align 2, 0
_080102F8: .4byte 0x0000FFFF
_080102FC:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08010308:
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	adds r5, r0, #0
	cmp r3, #0
	ble _0801032E
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0801031C
	movs r1, #0
_0801031C:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	muls r0, r6, r0
	mov r7, r8
	adds r4, r7, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _080102FC
_0801032E:
	cmp r5, #0
	beq _080103D4
	mov r0, r8
	adds r0, #0xb0
	strh r1, [r0]
	movs r1, #0
	mov r2, r8
	adds r2, #0xb2
	str r2, [sp, #4]
	mov sl, r0
_08010342:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r0, #0x2c
	muls r0, r2, r0
	mov r3, r8
	adds r4, r3, r0
	ldrh r0, [r4]
	mov sb, r1
	cmp r0, #0
	beq _080103BE
	mov r7, sl
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r6, #0
	cmp r2, r0
	bne _08010366
	mov r6, r8
	adds r6, #0xb4
_08010366:
	cmp r6, #0
	beq _08010378
	ldr r0, _080103E4 @ =0xF5FAF5FA
	str r0, [sp]
	mov r0, sp
	adds r1, r6, #0
	ldr r2, _080103E8 @ =0x01000050
	bl CpuFastSet
_08010378:
	ldr r0, _080103EC @ =gUnk_085F7ECC
	ldrh r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	cmp r6, #0
	beq _080103BE
	ldrh r1, [r4, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080103BE
	movs r2, #0
	adds r7, r6, #1
_0801039C:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r2, r7, r1
	ldrb r5, [r2]
	adds r1, r6, r1
	ldrb r3, [r1]
	ldrb r4, [r2]
	strb r3, [r2]
	ldrb r2, [r1]
	strb r5, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0801039C
_080103BE:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08010342
	mov r2, sl
	ldrh r0, [r2]
	ldr r3, [sp, #4]
	strh r0, [r3]
_080103D4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080103E4: .4byte 0xF5FAF5FA
_080103E8: .4byte 0x01000050
_080103EC: .4byte gUnk_085F7ECC

	thumb_func_start sub_080103F0
sub_080103F0: @ 0x080103F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08010408 @ =gUnk_020023F0
	ldr r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _0801040C
_08010404:
	b _08010404
	.align 2, 0
_08010408: .4byte gUnk_020023F0
_0801040C:
	adds r6, r7, #0
	ldr r0, [r6]
	ldr r1, _0801053C @ =0x000008F4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	blt _0801042A
	bl sub_08000EC4
	ldr r0, [r6]
	ldr r2, _0801053C @ =0x000008F4
	adds r0, r0, r2
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
_0801042A:
	ldr r0, [r6]
	bl sub_080102D0
	ldr r0, [r6]
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl sub_080102D0
	ldr r2, [r6]
	adds r0, r2, #0
	adds r0, #0xb2
	movs r1, #0
	ldrsh r3, [r0, r1]
	mvns r0, r3
	lsrs r0, r0, #0x1f
	mov sl, r0
	ldr r1, _08010540 @ =0x000002A6
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _0801045C
	movs r0, #1
	add sl, r0
_0801045C:
	mov r1, sl
	cmp r1, #0
	bgt _08010464
	b _08010636
_08010464:
	movs r1, #0x8f
	lsls r1, r1, #4
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r5, r2, r0
	mov r0, sl
	cmp r0, #2
	bne _0801054C
	movs r4, #0
	ldr r1, _08010544 @ =gUnk_03000DD0
	mov ip, r1
	adds r7, r6, #0
	movs r6, #0xff
	adds r3, r5, #0
_08010490:
	ldr r1, [r7]
	lsls r2, r4, #1
	adds r1, r1, r2
	adds r0, r1, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	adds r1, #0xb5
	ldrb r1, [r1]
	lsls r1, r1, #8
	orrs r1, r0
	adds r0, r1, #0
	ands r0, r6
	strb r0, [r3]
	lsrs r1, r1, #8
	strb r1, [r3, #1]
	ldr r1, [r7]
	adds r1, r1, r2
	movs r2, #0xaa
	lsls r2, r2, #2
	mov r8, r2
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	mov sb, r2
	add r1, sb
	ldrb r1, [r1]
	lsls r1, r1, #8
	orrs r1, r0
	adds r0, r1, #0
	ands r0, r6
	strb r0, [r3, #2]
	lsrs r1, r1, #8
	strb r1, [r3, #3]
	adds r3, #4
	adds r4, #1
	cmp r4, #0x9f
	ble _08010490
	ldr r2, _08010548 @ =gUnk_020023F0
	ldr r0, [r2]
	adds r0, #0xb4
	ldrh r0, [r0]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r1, r5, r3
	strb r0, [r1]
	lsrs r0, r0, #8
	adds r3, #1
	adds r1, r5, r3
	strb r0, [r1]
	ldr r0, [r2]
	add r0, r8
	ldrh r0, [r0]
	adds r3, #1
	adds r1, r5, r3
	strb r0, [r1]
	lsrs r0, r0, #8
	adds r3, #1
	adds r1, r5, r3
	strb r0, [r1]
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	mov r3, ip
	adds r3, #0x3a
	ldrb r2, [r3]
	strb r0, [r3]
	adds r0, r1, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	adds r3, #1
	ldrb r2, [r3]
	strb r0, [r3]
	mov r2, r8
	adds r0, r1, r2
	ldrb r2, [r0]
	mov r0, ip
	adds r0, #0x3c
	ldrb r3, [r0]
	strb r2, [r0]
	add r1, sb
	ldrb r1, [r1]
	adds r0, #1
	ldrb r2, [r0]
	strb r1, [r0]
	b _080105DA
	.align 2, 0
_0801053C: .4byte 0x000008F4
_08010540: .4byte 0x000002A6
_08010544: .4byte gUnk_03000DD0
_08010548: .4byte gUnk_020023F0
_0801054C:
	cmp r3, #0
	blt _08010598
	adds r0, r2, #0
	adds r0, #0xb4
	adds r1, r5, #0
	movs r2, #0x50
	bl CpuFastSet
	ldr r0, [r6]
	adds r0, #0xb4
	ldrh r0, [r0]
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r1, r5, r3
	strb r0, [r1]
	lsrs r0, r0, #8
	ldr r2, _08010590 @ =0x00000141
	adds r1, r5, r2
	strb r0, [r1]
	ldr r2, _08010594 @ =gUnk_03000DD0
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	adds r4, r2, #0
	adds r4, #0x3a
	ldrb r3, [r4]
	strb r0, [r4]
	adds r1, #0xb5
	ldrb r0, [r1]
	adds r2, #0x3b
	ldrb r1, [r2]
	strb r0, [r2]
	b _080105DA
	.align 2, 0
_08010590: .4byte 0x00000141
_08010594: .4byte gUnk_03000DD0
_08010598:
	movs r4, #0xaa
	lsls r4, r4, #2
	adds r0, r2, r4
	adds r1, r5, #0
	movs r2, #0x50
	bl CpuFastSet
	ldr r0, [r7]
	adds r0, r0, r4
	ldrh r0, [r0]
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r1, r5, r3
	strb r0, [r1]
	lsrs r0, r0, #8
	ldr r2, _080105F4 @ =0x00000141
	adds r1, r5, r2
	strb r0, [r1]
	ldr r1, _080105F8 @ =gUnk_03000DD0
	ldr r0, [r7]
	adds r0, r0, r4
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r3, [r0]
	strb r2, [r0]
	ldr r0, [r7]
	ldr r3, _080105FC @ =0x000002A9
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r1, #0x3d
	ldrb r2, [r1]
	strb r0, [r1]
_080105DA:
	mov r0, sl
	cmp r0, #1
	bne _08010610
	adds r0, r5, #2
	ldr r1, _08010600 @ =0x04000040
	ldr r2, _08010604 @ =0x00400001
	bl sub_08000AD0
	ldr r1, _08010608 @ =gUnk_020023F0
	ldr r1, [r1]
	ldr r2, _0801060C @ =0x000008F4
	adds r1, r1, r2
	b _08010622
	.align 2, 0
_080105F4: .4byte 0x00000141
_080105F8: .4byte gUnk_03000DD0
_080105FC: .4byte 0x000002A9
_08010600: .4byte 0x04000040
_08010604: .4byte 0x00400001
_08010608: .4byte gUnk_020023F0
_0801060C: .4byte 0x000008F4
_08010610:
	adds r0, r5, #4
	ldr r1, _08010644 @ =0x04000040
	ldr r2, _08010648 @ =0x04400001
	bl sub_08000AD0
	ldr r1, _0801064C @ =gUnk_020023F0
	ldr r1, [r1]
	ldr r3, _08010650 @ =0x000008F4
	adds r1, r1, r3
_08010622:
	str r0, [r1]
	ldr r0, _0801064C @ =gUnk_020023F0
	ldr r1, [r0]
	movs r0, #0x8f
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrh r0, [r1]
	movs r2, #1
	eors r0, r2
	strh r0, [r1]
_08010636:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010644: .4byte 0x04000040
_08010648: .4byte 0x04400001
_0801064C: .4byte gUnk_020023F0
_08010650: .4byte 0x000008F4

	thumb_func_start sub_08010654
sub_08010654: @ 0x08010654
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801065C
sub_0801065C: @ 0x0801065C
	adds r2, r0, #0
	lsls r1, r1, #0x10
	cmp r1, #0
	beq _0801066C
	ldrh r1, [r2, #2]
	movs r0, #0x40
	orrs r0, r1
	b _08010672
_0801066C:
	ldrh r1, [r2, #2]
	ldr r0, _08010678 @ =0x0000FFBF
	ands r0, r1
_08010672:
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_08010678: .4byte 0x0000FFBF

	thumb_func_start sub_0801067C
sub_0801067C: @ 0x0801067C
	push {r4, r5, lr}
	adds r4, r2, #0
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, #0
	bne _08010698
	ldr r0, _08010694 @ =gUnk_020023F0
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0xb4
	b _080106A2
	.align 2, 0
_08010694: .4byte gUnk_020023F0
_08010698:
	ldr r0, _080106C4 @ =gUnk_020023F0
	ldr r0, [r0]
	movs r5, #0xaa
	lsls r5, r5, #2
	adds r2, r0, r5
_080106A2:
	lsls r1, r1, #1
	adds r0, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4]
	adds r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r3]
	ldrb r0, [r4]
	cmp r0, #0xf5
	bne _080106C8
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xfa
	bne _080106C8
	movs r0, #0
	b _080106CA
	.align 2, 0
_080106C4: .4byte gUnk_020023F0
_080106C8:
	movs r0, #1
_080106CA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080106D0
sub_080106D0: @ 0x080106D0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, r0, #0
	ldrh r2, [r3]
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080106E8
	cmp r2, #0xe
	beq _080106E8
_080106E6:
	b _080106E6
_080106E8:
	cmp r1, #0
	beq _08010700
	ldrh r0, [r3, #2]
	movs r1, #2
	orrs r1, r0
	ldr r0, _080106FC @ =0x0000FFFB
	ands r1, r0
	strh r1, [r3, #2]
	b _08010708
	.align 2, 0
_080106FC: .4byte 0x0000FFFB
_08010700:
	ldrh r1, [r3, #2]
	ldr r0, _0801070C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3, #2]
_08010708:
	bx lr
	.align 2, 0
_0801070C: .4byte 0x0000FFFD

	thumb_func_start sub_08010710
sub_08010710: @ 0x08010710
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2]
	cmp r0, #3
	beq _0801071E
_0801071C:
	b _0801071C
_0801071E:
	strh r1, [r2, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_08010724
sub_08010724: @ 0x08010724
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r0, [r2]
	cmp r0, #3
	beq _08010732
_08010730:
	b _08010730
_08010732:
	strb r1, [r2, #0xa]
	bx lr
	.align 2, 0

	thumb_func_start sub_08010738
sub_08010738: @ 0x08010738
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r0, [r3]
	cmp r0, #4
	beq _0801074A
_08010748:
	b _08010748
_0801074A:
	strh r1, [r3, #8]
	strh r2, [r3, #0xa]
	bx lr

	thumb_func_start sub_08010750
sub_08010750: @ 0x08010750
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2]
	cmp r0, #5
	beq _0801075E
_0801075C:
	b _0801075C
_0801075E:
	strh r1, [r2, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_08010764
sub_08010764: @ 0x08010764
	adds r2, r0, #0
	ldrh r0, [r2]
	cmp r0, #8
	beq _0801076E
_0801076C:
	b _0801076C
_0801076E:
	ldr r0, [r1]
	str r0, [r2, #8]
	ldr r0, [r1, #4]
	str r0, [r2, #0xc]
	ldr r0, [r1, #8]
	str r0, [r2, #0x10]
	bx lr

	thumb_func_start sub_0801077C
sub_0801077C: @ 0x0801077C
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r0, [r3]
	cmp r0, #9
	beq _0801078E
_0801078C:
	b _0801078C
_0801078E:
	strh r1, [r3, #8]
	strh r2, [r3, #0xa]
	bx lr

	thumb_func_start sub_08010794
sub_08010794: @ 0x08010794
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2]
	cmp r0, #0xa
	beq _080107A2
_080107A0:
	b _080107A0
_080107A2:
	strh r1, [r2, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080107A8
sub_080107A8: @ 0x080107A8
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2]
	cmp r0, #0xa
	beq _080107B6
_080107B4:
	b _080107B4
_080107B6:
	strh r1, [r2, #0xa]
	bx lr
	.align 2, 0

	thumb_func_start sub_080107BC
sub_080107BC: @ 0x080107BC
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2]
	cmp r0, #0xb
	beq _080107CA
_080107C8:
	b _080107C8
_080107CA:
	strh r1, [r2, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080107D0
sub_080107D0: @ 0x080107D0
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2]
	cmp r0, #0xb
	beq _080107DE
_080107DC:
	b _080107DC
_080107DE:
	strh r1, [r2, #0xa]
	bx lr
	.align 2, 0

	thumb_func_start sub_080107E4
sub_080107E4: @ 0x080107E4
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2]
	cmp r0, #0xb
	beq _080107F2
_080107F0:
	b _080107F0
_080107F2:
	strh r1, [r2, #0xa]
	movs r0, #1
	strb r0, [r2, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_080107FC
sub_080107FC: @ 0x080107FC
	adds r2, r0, #0
	ldrh r0, [r2]
	cmp r0, #0xb
	beq _08010806
_08010804:
	b _08010804
_08010806:
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #0xa]
	strb r1, [r2, #0xc]
	bx lr

	thumb_func_start sub_08010810
sub_08010810: @ 0x08010810
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2]
	cmp r0, #0xc
	beq _0801081E
_0801081C:
	b _0801081C
_0801081E:
	strh r1, [r2, #0xa]
	bx lr
	.align 2, 0

	thumb_func_start sub_08010824
sub_08010824: @ 0x08010824
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2]
	cmp r0, #0xc
	beq _08010832
_08010830:
	b _08010830
_08010832:
	strh r1, [r2, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08010838
sub_08010838: @ 0x08010838
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2]
	cmp r0, #0xc
	beq _08010846
_08010844:
	b _08010844
_08010846:
	strh r1, [r2, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801084C
sub_0801084C: @ 0x0801084C
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r0, [r3]
	cmp r0, #0xd
	beq _0801085E
_0801085C:
	b _0801085C
_0801085E:
	strh r1, [r3, #8]
	strh r2, [r3, #0xa]
	bx lr

	thumb_func_start sub_08010864
sub_08010864: @ 0x08010864
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2]
	cmp r0, #0xd
	beq _08010872
_08010870:
	b _08010870
_08010872:
	strh r1, [r2, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08010878
sub_08010878: @ 0x08010878
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r0, #0
	ldrh r0, [r2]
	cmp r0, #0xe
	beq _08010886
_08010884:
	b _08010884
_08010886:
	cmp r1, #0
	beq _08010892
	ldrh r1, [r2, #2]
	movs r0, #0x20
	orrs r0, r1
	b _08010898
_08010892:
	ldrh r1, [r2, #2]
	ldr r0, _0801089C @ =0x0000FFDF
	ands r0, r1
_08010898:
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0801089C: .4byte 0x0000FFDF

	thumb_func_start sub_080108A0
sub_080108A0: @ 0x080108A0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [sp, #0x10]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, r4, #0
	ldrh r0, [r2]
	cmp r0, #0xe
	beq _080108C0
_080108BE:
	b _080108BE
_080108C0:
	strh r6, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r3, [r4, #0x14]
	strh r1, [r4, #0x16]
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r3, r0
	bne _080108DC
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	beq _080108E4
_080108DC:
	ldrh r0, [r2, #2]
	movs r1, #8
	orrs r0, r1
	b _080108EA
_080108E4:
	ldrh r1, [r2, #2]
	ldr r0, _080108F4 @ =0x0000FFF7
	ands r0, r1
_080108EA:
	strh r0, [r2, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080108F4: .4byte 0x0000FFF7

	thumb_func_start sub_080108F8
sub_080108F8: @ 0x080108F8
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r0, [r3]
	cmp r0, #0xe
	beq _0801090A
_08010908:
	b _08010908
_0801090A:
	strh r1, [r3, #0x10]
	strh r2, [r3, #0x12]
	bx lr

	thumb_func_start sub_08010910
sub_08010910: @ 0x08010910
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r2, r3, #0
	ldrh r0, [r2]
	cmp r0, #0xe
	beq _08010926
_08010924:
	b _08010924
_08010926:
	strh r1, [r3, #0x14]
	strh r4, [r3, #0x16]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0801093E
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _08010946
_0801093E:
	ldrh r0, [r2, #2]
	movs r1, #8
	orrs r0, r1
	b _0801094C
_08010946:
	ldrh r1, [r2, #2]
	ldr r0, _08010954 @ =0x0000FFF7
	ands r0, r1
_0801094C:
	strh r0, [r2, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010954: .4byte 0x0000FFF7

	thumb_func_start sub_08010958
sub_08010958: @ 0x08010958
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r2, r4, #0
	ldrh r0, [r2]
	cmp r0, #0xe
	beq _08010972
_08010970:
	b _08010970
_08010972:
	strh r5, [r4, #0x1c]
	strh r1, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x20
	strb r3, [r0]
	cmp r3, #0
	beq _08010988
	ldrh r0, [r2, #2]
	movs r1, #0x10
	orrs r0, r1
	b _0801098E
_08010988:
	ldrh r1, [r2, #2]
	ldr r0, _08010998 @ =0x0000FFEF
	ands r0, r1
_0801098E:
	strh r0, [r2, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010998: .4byte 0x0000FFEF

	thumb_func_start sub_0801099C
sub_0801099C: @ 0x0801099C
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r0, [r3]
	cmp r0, #0xe
	beq _080109AE
_080109AC:
	b _080109AC
_080109AE:
	strh r1, [r3, #0x1c]
	strh r2, [r3, #0x1e]
	bx lr

	thumb_func_start sub_080109B4
sub_080109B4: @ 0x080109B4
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r3, #0
	ldrh r0, [r2]
	cmp r0, #0xe
	beq _080109C4
_080109C2:
	b _080109C2
_080109C4:
	adds r0, r3, #0
	adds r0, #0x20
	strb r1, [r0]
	cmp r1, #0
	beq _080109D6
	ldrh r1, [r2, #2]
	movs r0, #0x10
	orrs r0, r1
	b _080109DC
_080109D6:
	ldrh r1, [r2, #2]
	ldr r0, _080109E0 @ =0x0000FFEF
	ands r0, r1
_080109DC:
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_080109E0: .4byte 0x0000FFEF

	thumb_func_start sub_080109E4
sub_080109E4: @ 0x080109E4
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r0, [r3]
	cmp r0, #0xe
	beq _080109F6
_080109F4:
	b _080109F4
_080109F6:
	strh r1, [r3, #0x18]
	strh r2, [r3, #0x1a]
	bx lr

	thumb_func_start sub_080109FC
sub_080109FC: @ 0x080109FC
	adds r2, r0, #0
	ldrh r0, [r2]
	cmp r0, #0xe
	beq _08010A06
_08010A04:
	b _08010A04
_08010A06:
	str r1, [r2, #8]
	movs r0, #0
	strh r0, [r2, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08010A10
sub_08010A10: @ 0x08010A10
	adds r2, r0, #0
	ldrh r0, [r2]
	cmp r0, #0xe
	beq _08010A1A
_08010A18:
	b _08010A18
_08010A1A:
	str r1, [r2, #0x28]
	movs r0, #0
	strh r0, [r2, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start sub_08010A24
sub_08010A24: @ 0x08010A24
	adds r1, r0, #0
	ldrh r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08010A34
_08010A32:
	b _08010A32
_08010A34:
	ldrh r0, [r1]
	ldrh r0, [r1, #0x12]
	bx lr
	.align 2, 0

	thumb_func_start sub_08010A3C
sub_08010A3C: @ 0x08010A3C
	adds r2, r0, #0
	ldrh r1, [r2]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08010A50
	cmp r1, #0xe
	beq _08010A50
_08010A4E:
	b _08010A4E
_08010A50:
	ldrh r1, [r2, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08010A5E
	movs r0, #0
	b _08010A60
_08010A5E:
	movs r0, #1
_08010A60:
	bx lr
	.align 2, 0

	thumb_func_start sub_08010A64
sub_08010A64: @ 0x08010A64
	movs r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08010A6C
sub_08010A6C: @ 0x08010A6C
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r1, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	cmp r4, #1
	bls _08010A86
_08010A84:
	b _08010A84
_08010A86:
	cmp r4, #0
	beq _08010A9C
	ldr r0, _08010A98 @ =gUnk_020023F0
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	b _08010AA0
	.align 2, 0
_08010A98: .4byte gUnk_020023F0
_08010A9C:
	ldr r0, _08010ABC @ =gUnk_020023F0
	ldr r0, [r0]
_08010AA0:
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x84
_08010AA6:
	ldrh r0, [r1]
	cmp r0, #0
	beq _08010AB4
	adds r1, #0x2c
	cmp r1, r2
	ble _08010AA6
	movs r1, #0
_08010AB4:
	cmp r1, #0
	bne _08010AC0
_08010AB8:
	b _08010AB8
	.align 2, 0
_08010ABC: .4byte gUnk_020023F0
_08010AC0:
	str r6, [r1, #0xc]
	str r7, [r1, #8]
	movs r0, #0
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x12]
	strh r5, [r1, #4]
	strh r3, [r1, #6]
	cmp r4, #1
	bne _08010AD4
	movs r0, #1
_08010AD4:
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1]
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08010AE4
sub_08010AE4: @ 0x08010AE4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r4, #1
	bls _08010AFC
_08010AFA:
	b _08010AFA
_08010AFC:
	cmp r4, #0
	beq _08010B10
	ldr r0, _08010B0C @ =gUnk_020023F0
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	b _08010B14
	.align 2, 0
_08010B0C: .4byte gUnk_020023F0
_08010B10:
	ldr r0, _08010B30 @ =gUnk_020023F0
	ldr r0, [r0]
_08010B14:
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x84
_08010B1A:
	ldrh r0, [r1]
	cmp r0, #0
	beq _08010B28
	adds r1, #0x2c
	cmp r1, r2
	ble _08010B1A
	movs r1, #0
_08010B28:
	cmp r1, #0
	bne _08010B34
_08010B2C:
	b _08010B2C
	.align 2, 0
_08010B30: .4byte gUnk_020023F0
_08010B34:
	movs r0, #0
	strh r3, [r1, #8]
	strb r0, [r1, #0xa]
	strh r6, [r1, #4]
	strh r5, [r1, #6]
	cmp r4, #1
	bne _08010B44
	movs r0, #1
_08010B44:
	strh r0, [r1, #2]
	movs r0, #3
	strh r0, [r1]
	adds r0, r1, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08010B54
sub_08010B54: @ 0x08010B54
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r5, #1
	bls _08010B72
_08010B70:
	b _08010B70
_08010B72:
	cmp r5, #0
	beq _08010B88
	ldr r0, _08010B84 @ =gUnk_020023F0
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	b _08010B8C
	.align 2, 0
_08010B84: .4byte gUnk_020023F0
_08010B88:
	ldr r0, _08010BA8 @ =gUnk_020023F0
	ldr r0, [r0]
_08010B8C:
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x84
_08010B92:
	ldrh r0, [r1]
	cmp r0, #0
	beq _08010BA0
	adds r1, #0x2c
	cmp r1, r2
	ble _08010B92
	movs r1, #0
_08010BA0:
	cmp r1, #0
	bne _08010BAC
_08010BA4:
	b _08010BA4
	.align 2, 0
_08010BA8: .4byte gUnk_020023F0
_08010BAC:
	strh r3, [r1, #8]
	strh r4, [r1, #0xa]
	strh r7, [r1, #4]
	strh r6, [r1, #6]
	movs r0, #0
	cmp r5, #1
	bne _08010BBC
	movs r0, #1
_08010BBC:
	strh r0, [r1, #2]
	movs r0, #4
	strh r0, [r1]
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08010BCC
sub_08010BCC: @ 0x08010BCC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r4, #1
	bls _08010BE4
_08010BE2:
	b _08010BE2
_08010BE4:
	cmp r4, #0
	beq _08010BF8
	ldr r0, _08010BF4 @ =gUnk_020023F0
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	b _08010BFC
	.align 2, 0
_08010BF4: .4byte gUnk_020023F0
_08010BF8:
	ldr r0, _08010C18 @ =gUnk_020023F0
	ldr r0, [r0]
_08010BFC:
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x84
_08010C02:
	ldrh r0, [r1]
	cmp r0, #0
	beq _08010C10
	adds r1, #0x2c
	cmp r1, r2
	ble _08010C02
	movs r1, #0
_08010C10:
	cmp r1, #0
	bne _08010C1C
_08010C14:
	b _08010C14
	.align 2, 0
_08010C18: .4byte gUnk_020023F0
_08010C1C:
	strh r3, [r1, #8]
	strh r6, [r1, #4]
	strh r5, [r1, #6]
	movs r0, #0
	cmp r4, #1
	bne _08010C2A
	movs r0, #1
_08010C2A:
	strh r0, [r1, #2]
	movs r0, #5
	strh r0, [r1]
	adds r0, r1, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08010C38
sub_08010C38: @ 0x08010C38
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r5, #1
	bls _08010C56
_08010C54:
	b _08010C54
_08010C56:
	cmp r5, #0
	beq _08010C6C
	ldr r0, _08010C68 @ =gUnk_020023F0
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	b _08010C70
	.align 2, 0
_08010C68: .4byte gUnk_020023F0
_08010C6C:
	ldr r0, _08010C8C @ =gUnk_020023F0
	ldr r0, [r0]
_08010C70:
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x84
_08010C76:
	ldrh r0, [r1]
	cmp r0, #0
	beq _08010C84
	adds r1, #0x2c
	cmp r1, r2
	ble _08010C76
	movs r1, #0
_08010C84:
	cmp r1, #0
	bne _08010C90
_08010C88:
	b _08010C88
	.align 2, 0
_08010C8C: .4byte gUnk_020023F0
_08010C90:
	strb r6, [r1, #8]
	strb r3, [r1, #9]
	strb r7, [r1, #0xa]
	strb r4, [r1, #0xb]
	movs r0, #0
	cmp r5, #1
	bne _08010CA0
	movs r0, #1
_08010CA0:
	strh r0, [r1, #2]
	movs r0, #7
	strh r0, [r1]
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08010CB0
sub_08010CB0: @ 0x08010CB0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08010CBC
_08010CBA:
	b _08010CBA
_08010CBC:
	cmp r4, #0
	beq _08010CD0
	ldr r0, _08010CCC @ =gUnk_020023F0
	ldr r0, [r0]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	b _08010CD4
	.align 2, 0
_08010CCC: .4byte gUnk_020023F0
_08010CD0:
	ldr r0, _08010CF0 @ =gUnk_020023F0
	ldr r0, [r0]
_08010CD4:
	ldr r5, [r1]
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x84
_08010CDC:
	ldrh r0, [r2]
	cmp r0, #0
	beq _08010CEA
	adds r2, #0x2c
	cmp r2, r3
	ble _08010CDC
	movs r2, #0
_08010CEA:
	cmp r2, #0
	bne _08010CF4
_08010CEE:
	b _08010CEE
	.align 2, 0
_08010CF0: .4byte gUnk_020023F0
_08010CF4:
	str r5, [r2, #8]
	ldr r0, [r1, #4]
	str r0, [r2, #0xc]
	ldr r0, [r1, #8]
	str r0, [r2, #0x10]
	movs r0, #0
	cmp r4, #1
	bne _08010D06
	movs r0, #1
_08010D06:
	strh r0, [r2, #2]
	movs r0, #8
	strh r0, [r2]
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08010D14
sub_08010D14: @ 0x08010D14
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r5, #1
	bls _08010D32
_08010D30:
	b _08010D30
_08010D32:
	cmp r5, #0
	beq _08010D48
	ldr r0, _08010D44 @ =gUnk_020023F0
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	b _08010D4C
	.align 2, 0
_08010D44: .4byte gUnk_020023F0
_08010D48:
	ldr r0, _08010D68 @ =gUnk_020023F0
	ldr r0, [r0]
_08010D4C:
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x84
_08010D52:
	ldrh r0, [r1]
	cmp r0, #0
	beq _08010D60
	adds r1, #0x2c
	cmp r1, r2
	ble _08010D52
	movs r1, #0
_08010D60:
	cmp r1, #0
	bne _08010D6C
_08010D64:
	b _08010D64
	.align 2, 0
_08010D68: .4byte gUnk_020023F0
_08010D6C:
	strh r3, [r1, #8]
	strh r4, [r1, #0xa]
	strh r7, [r1, #4]
	strh r6, [r1, #6]
	movs r0, #0
	cmp r5, #1
	bne _08010D7C
	movs r0, #1
_08010D7C:
	strh r0, [r1, #2]
	movs r0, #9
	strh r0, [r1]
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08010D8C
sub_08010D8C: @ 0x08010D8C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r4, #1
	bls _08010DA4
_08010DA2:
	b _08010DA2
_08010DA4:
	cmp r4, #0
	beq _08010DB8
	ldr r0, _08010DB4 @ =gUnk_020023F0
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	b _08010DBC
	.align 2, 0
_08010DB4: .4byte gUnk_020023F0
_08010DB8:
	ldr r0, _08010DD8 @ =gUnk_020023F0
	ldr r0, [r0]
_08010DBC:
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x84
_08010DC2:
	ldrh r0, [r1]
	cmp r0, #0
	beq _08010DD0
	adds r1, #0x2c
	cmp r1, r2
	ble _08010DC2
	movs r1, #0
_08010DD0:
	cmp r1, #0
	bne _08010DDC
_08010DD4:
	b _08010DD4
	.align 2, 0
_08010DD8: .4byte gUnk_020023F0
_08010DDC:
	movs r0, #0
	strh r3, [r1, #8]
	strh r0, [r1, #0xa]
	strh r6, [r1, #4]
	strh r5, [r1, #6]
	cmp r4, #1
	bne _08010DEC
	movs r0, #1
_08010DEC:
	strh r0, [r1, #2]
	movs r0, #0xa
	strh r0, [r1]
	adds r0, r1, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08010DFC
sub_08010DFC: @ 0x08010DFC
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	ldr r5, [sp, #0x18]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	cmp r6, #1
	bls _08010E22
_08010E20:
	b _08010E20
_08010E22:
	cmp r6, #0
	beq _08010E38
	ldr r0, _08010E34 @ =gUnk_020023F0
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	b _08010E3C
	.align 2, 0
_08010E34: .4byte gUnk_020023F0
_08010E38:
	ldr r0, _08010E58 @ =gUnk_020023F0
	ldr r0, [r0]
_08010E3C:
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x84
_08010E42:
	ldrh r0, [r1]
	cmp r0, #0
	beq _08010E50
	adds r1, #0x2c
	cmp r1, r2
	ble _08010E42
	movs r1, #0
_08010E50:
	cmp r1, #0
	bne _08010E5C
_08010E54:
	b _08010E54
	.align 2, 0
_08010E58: .4byte gUnk_020023F0
_08010E5C:
	strh r3, [r1, #8]
	strh r4, [r1, #0xa]
	strh r5, [r1, #0xc]
	mov r0, ip
	strh r0, [r1, #4]
	strh r7, [r1, #6]
	movs r0, #0
	cmp r6, #1
	bne _08010E70
	movs r0, #1
_08010E70:
	strh r0, [r1, #2]
	movs r0, #0xd
	strh r0, [r1]
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08010E80
sub_08010E80: @ 0x08010E80
	push {r4, lr}
	ldr r4, _08010E94 @ =gUnk_020023F0
	ldr r0, _08010E98 @ =0x000008F8
	bl sub_0800830C
	str r0, [r4]
	cmp r0, #0
	bne _08010E9C
_08010E90:
	b _08010E90
	.align 2, 0
_08010E94: .4byte gUnk_020023F0
_08010E98: .4byte 0x000008F8
_08010E9C:
	ldr r4, _08010ECC @ =gUnk_020023F0
	ldr r0, [r4]
	ldr r1, _08010ED0 @ =0x000008F8
	bl memzero
	ldr r1, [r4]
	ldr r0, _08010ED4 @ =0x000002A6
	adds r2, r1, r0
	ldr r0, _08010ED8 @ =0x0000FFFF
	strh r0, [r2]
	adds r2, r1, #0
	adds r2, #0xb0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r2]
	ldr r0, _08010EDC @ =0x000008F4
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010ECC: .4byte gUnk_020023F0
_08010ED0: .4byte 0x000008F8
_08010ED4: .4byte 0x000002A6
_08010ED8: .4byte 0x0000FFFF
_08010EDC: .4byte 0x000008F4

	thumb_func_start sub_08010EE0
sub_08010EE0: @ 0x08010EE0
	push {r4, lr}
	ldr r4, _08010F10 @ =gUnk_020023F0
	ldr r0, [r4]
	ldr r1, _08010F14 @ =0x000008F4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	blt _08010F00
	bl sub_08000EC4
	ldr r0, [r4]
	ldr r1, _08010F14 @ =0x000008F4
	adds r0, r0, r1
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
_08010F00:
	ldr r0, [r4]
	bl sub_08008320
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010F10: .4byte gUnk_020023F0
_08010F14: .4byte 0x000008F4

	thumb_func_start sub_08010F18
sub_08010F18: @ 0x08010F18
	bx lr
	.align 2, 0

	thumb_func_start sub_08010F1C
sub_08010F1C: @ 0x08010F1C
	bx lr
	.align 2, 0

	thumb_func_start sub_08010F20
sub_08010F20: @ 0x08010F20
	push {r4, r5, lr}
	sub sp, #4
	adds r2, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	adds r3, #8
	cmp r4, #0
	beq _08010F5E
	ldrb r0, [r3, #2]
	cmp r0, #0
	bne _08010F4A
	movs r1, #8
	ldrsh r0, [r2, r1]
	movs r3, #4
	ldrsh r1, [r2, r3]
	movs r5, #6
	ldrsh r2, [r2, r5]
	adds r3, r4, #0
	bl sub_0800DA34
	b _08010F5E
_08010F4A:
	movs r1, #8
	ldrsh r0, [r2, r1]
	movs r5, #4
	ldrsh r1, [r2, r5]
	movs r5, #6
	ldrsh r2, [r2, r5]
	ldrb r3, [r3, #2]
	str r4, [sp]
	bl sub_0800DBC4
_08010F5E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010F68
sub_08010F68: @ 0x08010F68
	push {r4, r5, lr}
	sub sp, #4
	adds r3, r0, #0
	adds r4, r1, #0
	adds r2, r3, #0
	adds r2, #8
	cmp r4, #0
	beq _08010FB4
	movs r0, #8
	ldrsh r1, [r3, r0]
	cmp r1, #0
	ble _08010FB4
	movs r5, #2
	ldrsh r0, [r2, r5]
	cmp r0, #0
	ble _08010FB4
	cmp r1, r0
	bne _08010F9E
	adds r0, r1, #0
	movs r2, #4
	ldrsh r1, [r3, r2]
	movs r5, #6
	ldrsh r2, [r3, r5]
	adds r3, r4, #0
	bl sub_0800DA34
	b _08010FB4
_08010F9E:
	movs r1, #8
	ldrsh r0, [r3, r1]
	movs r5, #2
	ldrsh r1, [r2, r5]
	movs r5, #4
	ldrsh r2, [r3, r5]
	movs r5, #6
	ldrsh r3, [r3, r5]
	str r4, [sp]
	bl sub_0800DD54
_08010FB4:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08010FBC
sub_08010FBC: @ 0x08010FBC
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r3, #0
	beq _08010FDA
	movs r1, #8
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _08010FDA
	movs r4, #4
	ldrsh r1, [r2, r4]
	movs r4, #6
	ldrsh r2, [r2, r4]
	bl sub_0800E0C4
_08010FDA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start nullsub_9
nullsub_9: @ 0x08010FE0
	bx lr
	.align 2, 0

	thumb_func_start sub_08010FE4
sub_08010FE4: @ 0x08010FE4
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r1, r0, #0
	adds r1, #8
	cmp r4, #0
	beq _08011030
	ldrb r0, [r0, #8]
	mov ip, r0
	ldrb r0, [r1, #1]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldrb r3, [r1, #2]
	lsls r3, r3, #0x10
	asrs r0, r3, #0x10
	cmp r0, #0x9f
	bgt _08011030
	ldrb r1, [r1, #3]
	cmp r0, r1
	bgt _08011030
	adds r6, r4, #1
	adds r5, r1, #0
_08011010:
	asrs r3, r3, #0x10
	lsls r0, r3, #1
	adds r1, r6, r0
	ldrb r2, [r1]
	mov r2, ip
	strb r2, [r1]
	adds r0, r4, r0
	ldrb r1, [r0]
	strb r7, [r0]
	adds r3, #1
	lsls r3, r3, #0x10
	asrs r0, r3, #0x10
	cmp r0, #0x9f
	bgt _08011030
	cmp r0, r5
	ble _08011010
_08011030:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011038
sub_08011038: @ 0x08011038
	push {lr}
	adds r0, #8
	cmp r1, #0
	beq _08011044
	bl sub_0800E890
_08011044:
	pop {r0}
	bx r0

	thumb_func_start sub_08011048
sub_08011048: @ 0x08011048
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	str r0, [sp]
	adds r4, r2, #0
	ldr r0, [sp, #0x5c]
	ldr r2, [sp, #0x60]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #8]
	adds r0, r1, #2
	mov ip, r0
	ldrb r2, [r1]
	ldrb r0, [r1, #1]
	lsls r5, r0, #8
	orrs r5, r2
	lsls r0, r5, #0x10
	cmp r0, #0
	bgt _0801107C
	b _080112F6
_0801107C:
	lsls r4, r4, #3
	str r4, [sp, #0xc]
	lsls r3, r3, #3
	str r3, [sp, #0x10]
_08011084:
	mov r2, ip
	ldrb r1, [r2, #1]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	ldrb r0, [r2, #3]
	lsrs r4, r0, #6
	orrs r4, r1
	ldrb r2, [r2, #2]
	mov r3, ip
	ldrb r0, [r3, #3]
	movs r1, #1
	ands r0, r1
	lsls r3, r0, #8
	orrs r3, r2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080110B8
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r3
	b _080110BA
_080110B8:
	adds r0, r3, #0
_080110BA:
	mov sl, r0
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _080110E4
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #0xc]
	subs r1, r3, r1
	lsls r2, r4, #0x10
	asrs r0, r2, #0xe
	ldr r3, _080110E0 @ =gUnk_0815DD60
	adds r0, r0, r3
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	mov sb, r2
	b _080110F8
	.align 2, 0
_080110E0: .4byte gUnk_0815DD60
_080110E4:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r4, r4, #0x10
	mov sb, r4
_080110F8:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r0, ip
	ldrb r2, [r0]
	movs r1, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08011120
	ldr r1, _0801111C @ =0x0000FF80
	adds r0, r1, #0
	orrs r0, r2
	b _08011122
	.align 2, 0
_0801111C: .4byte 0x0000FF80
_08011120:
	adds r0, r2, #0
_08011122:
	mov r8, r0
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _08011144
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x10]
	subs r0, r3, r0
	mov r2, sb
	asrs r1, r2, #0xe
	ldr r3, _08011140 @ =gUnk_0815DD60
	adds r1, r1, r3
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	b _0801114E
	.align 2, 0
_08011140: .4byte gUnk_0815DD60
_08011144:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x10]
	adds r0, r0, r2
_0801114E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r4, #0
	movs r2, #0x80
	lsls r2, r2, #0xd
	add r2, sb
	asrs r0, r2, #0xe
	ldr r1, _08011238 @ =gUnk_0815DD60
	adds r0, r0, r1
	movs r3, #2
	ldrsh r0, [r0, r3]
	lsls r5, r5, #0x10
	str r5, [sp, #0x30]
	mov r5, ip
	adds r5, #6
	str r5, [sp, #0x2c]
	cmp r4, r0
	blt _08011182
	b _080112E4
_08011182:
	mov sb, r2
	adds r0, r1, #0
	str r0, [sp, #0x38]
_08011188:
	movs r1, #0
	asrs r0, r2, #0x10
	lsls r2, r0, #2
	ldr r3, _08011238 @ =gUnk_0815DD60
	adds r0, r2, r3
	movs r5, #0
	ldrsh r0, [r0, r5]
	lsls r4, r4, #0x10
	str r4, [sp, #0x34]
	cmp r1, r0
	blt _080111A0
	b _080112C6
_080111A0:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r5, r8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, _08011238 @ =gUnk_0815DD60
	adds r0, r2, r0
	str r0, [sp, #0x24]
	movs r3, #0
	ldrsh r2, [r0, r3]
	str r2, [sp, #0x14]
	ldr r5, [sp, #4]
	str r5, [sp, #0x28]
_080111C2:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	ldr r2, [sp, #0x18]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r7, r1, #0
	cmp r0, #0
	bge _080111DE
	ldr r3, [sp]
	ldrh r0, [r3]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080111DE:
	ldr r0, [sp, #0x34]
	asrs r5, r0, #0x10
	ldr r1, [sp, #0x1c]
	adds r0, r1, r5
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _080111F8
	ldr r3, [sp]
	ldrh r0, [r3, #2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080111F8:
	ldr r3, [sp]
	ldrh r0, [r3]
	muls r1, r0, r1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #0x20]
	ldr r1, _08011238 @ =gUnk_0815DD60
	adds r3, r0, r1
	movs r2, #0
	ldrsh r4, [r3, r2]
	mov r0, ip
	ldrb r2, [r0, #4]
	ldrb r0, [r0, #5]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #8
	orrs r0, r2
	ldr r1, [sp, #0x64]
	adds r2, r0, r1
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0801123C
	movs r1, #2
	ldrsh r0, [r3, r1]
	adds r1, r5, #1
	subs r0, r0, r1
	muls r0, r4, r0
	b _08011240
	.align 2, 0
_08011238: .4byte gUnk_0815DD60
_0801123C:
	adds r0, r4, #0
	muls r0, r5, r0
_08011240:
	adds r2, r2, r0
	ldr r3, [sp, #4]
	cmp r3, #0
	beq _0801125C
	ldr r5, [sp, #0x24]
	movs r0, #0
	ldrsh r1, [r5, r0]
	asrs r0, r7, #0x10
	adds r0, #1
	subs r1, r1, r0
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	b _08011264
_0801125C:
	asrs r0, r7, #0x10
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08011264:
	lsls r0, r6, #0x10
	ldr r3, [sp]
	ldr r1, [r3, #4]
	asrs r0, r0, #0xf
	adds r3, r0, r1
	strh r2, [r3]
	mov r5, ip
	ldrb r0, [r5, #3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	ldr r1, [sp, #0x28]
	cmp r0, r1
	beq _08011288
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	orrs r2, r0
	strh r2, [r3]
_08011288:
	mov r1, ip
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	ldr r2, [sp, #8]
	cmp r0, r2
	beq _080112A2
	ldrh r1, [r3]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r5, #0
	orrs r1, r0
	strh r1, [r3]
_080112A2:
	mov r1, ip
	ldrb r0, [r1, #5]
	lsrs r0, r0, #4
	ldr r2, [sp, #0x68]
	adds r0, r0, r2
	lsls r0, r0, #0xc
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r7, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r5, [sp, #0x14]
	cmp r0, r5
	bge _080112C6
	b _080111C2
_080112C6:
	ldr r0, [sp, #0x34]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r0, r2
	mov r2, sb
	asrs r0, r2, #0xe
	ldr r3, _08011308 @ =gUnk_0815DD60
	adds r0, r0, r3
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r1, r0
	bge _080112E4
	b _08011188
_080112E4:
	ldr r1, [sp, #0x30]
	ldr r2, _0801130C @ =0xFFFF0000
	adds r0, r1, r2
	ldr r3, [sp, #0x2c]
	mov ip, r3
	lsrs r5, r0, #0x10
	cmp r0, #0
	ble _080112F6
	b _08011084
_080112F6:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011308: .4byte gUnk_0815DD60
_0801130C: .4byte 0xFFFF0000

	thumb_func_start sub_08011310
sub_08011310: @ 0x08011310
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xf1
	lsls r0, r0, #2
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08011328
	bl sub_08013428
	adds r5, r0, #0
	b _0801132A
_08011328:
	movs r5, #0
_0801132A:
	ldr r3, _0801133C @ =0x000003C5
	adds r1, r4, r3
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08011340
	bl sub_08013428
	adds r2, r0, #0
	b _08011342
	.align 2, 0
_0801133C: .4byte 0x000003C5
_08011340:
	movs r2, #0
_08011342:
	ldr r3, _08011398 @ =gUnk_02026F08
	ldr r0, [r3]
	ldr r6, _0801139C @ =0x0000200C
	adds r1, r0, r6
	ldr r0, [r1]
	cmp r0, r4
	bne _08011352
	str r2, [r1]
_08011352:
	ldr r0, [r3]
	ldr r3, _080113A0 @ =0x00002010
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r0, r4
	bne _08011360
	str r5, [r1]
_08011360:
	cmp r5, #0
	beq _0801136E
	ldr r0, _080113A4 @ =0x000003C5
	adds r1, r4, r0
	ldrb r1, [r1]
	adds r0, r5, r0
	strb r1, [r0]
_0801136E:
	cmp r2, #0
	beq _0801137E
	movs r0, #0xf1
	lsls r0, r0, #2
	adds r1, r4, r0
	ldrb r1, [r1]
	adds r0, r2, r0
	strb r1, [r0]
_0801137E:
	ldr r6, _080113A4 @ =0x000003C5
	adds r1, r4, r6
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xf1
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011398: .4byte gUnk_02026F08
_0801139C: .4byte 0x0000200C
_080113A0: .4byte 0x00002010
_080113A4: .4byte 0x000003C5

	thumb_func_start sub_080113A8
sub_080113A8: @ 0x080113A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	str r0, [sp, #0x44]
	adds r7, r1, #0
	ldr r1, _080113E0 @ =gUnk_02026E00
	movs r0, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x10]
	adds r0, r7, #4
	bl sub_0800790C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _080113D6
	bl _08011BD4
_080113D6:
	lsls r0, r0, #2
	ldr r1, _080113E4 @ =_080113E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080113E0: .4byte gUnk_02026E00
_080113E4: .4byte _080113E8
_080113E8: @ jump table
	.4byte _08011408 @ case 0
	.4byte _08011408 @ case 1
	.4byte _080115D0 @ case 2
	.4byte _08011718 @ case 3
	.4byte _08011844 @ case 4
	.4byte _08011880 @ case 5
	.4byte _080119A4 @ case 6
	.4byte _08011ABC @ case 7
_08011408:
	ldr r1, [sp, #0x44]
	ldrh r0, [r1, #6]
	bl sub_08013804
	mov sl, r0
	add r1, sp, #0x10
	bl sub_08013834
	adds r0, r7, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #1
	beq _080114AE
	cmp r0, #1
	bgt _0801142C
	cmp r0, #0
	beq _08011432
	b _08011570
_0801142C:
	cmp r0, #2
	beq _08011432
	b _08011570
_08011432:
	adds r0, r7, #4
	add r1, sp, #4
	bl sub_080078D0
	add r0, sp, #4
	movs r2, #8
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _08011446
	b _08011572
_08011446:
	add r0, sp, #4
	movs r2, #8
	ldrsh r1, [r0, r2]
	ldr r0, [sp, #0x44]
	ldrb r2, [r0, #0xc]
	add r3, sp, #0x14
	mov r0, sl
	bl sub_08013860
	ldr r5, _08011478 @ =gUnk_02026E00
	ldr r6, _0801147C @ =gUnk_02026E08
	ldr r3, [sp, #0x14]
	movs r4, #0
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	blo _0801146E
	b _08011572
_0801146E:
	ldrh r0, [r5]
	cmp r0, #0x7f
	bls _08011480
_08011474:
	b _08011474
	.align 2, 0
_08011478: .4byte gUnk_02026E00
_0801147C: .4byte gUnk_02026E08
_08011480:
	ldrh r1, [r5]
	lsls r1, r1, #1
	adds r1, r1, r6
	lsls r0, r4, #1
	adds r0, r3, r0
	ldrb r2, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r1]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	blo _0801146E
	b _08011572
_080114AE:
	movs r5, #0
	movs r1, #0x36
	adds r1, r1, r7
	mov r8, r1
	movs r2, #0x58
	adds r2, r2, r7
	mov sb, r2
	ldrh r0, [r7, #0x34]
	cmp r5, r0
	bhs _0801152C
	ldr r6, _080114F0 @ =gUnk_02026E00
_080114C4:
	lsls r0, r5, #1
	add r0, r8
	ldrh r1, [r0]
	ldr r0, [sp, #0x44]
	ldrb r2, [r0, #0xc]
	mov r0, sl
	add r3, sp, #0x14
	bl sub_08013860
	ldr r3, [sp, #0x14]
	movs r4, #0
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	adds r5, #1
	cmp r4, r0
	bhs _08011522
_080114E8:
	ldrh r0, [r6]
	cmp r0, #0x7f
	bls _080114F4
_080114EE:
	b _080114EE
	.align 2, 0
_080114F0: .4byte gUnk_02026E00
_080114F4:
	ldrh r1, [r6]
	lsls r1, r1, #1
	ldr r2, _0801156C @ =gUnk_02026E08
	adds r1, r1, r2
	lsls r0, r4, #1
	adds r0, r3, r0
	ldrb r2, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r1]
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	blo _080114E8
_08011522:
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r7, #0x34]
	cmp r5, r0
	blo _080114C4
_0801152C:
	ldrh r0, [r7, #0x34]
	ldr r1, [sp, #0x44]
	ldrb r1, [r1, #0xc]
	str r1, [sp, #0x4c]
	movs r6, #0
	cmp r0, #0
	beq _08011572
	mov r4, r8
	adds r5, r0, #0
_0801153E:
	ldrh r1, [r4]
	mov r0, sl
	ldr r2, [sp, #0x4c]
	add r3, sp, #0x18
	bl sub_08013860
	mov r2, sb
	adds r2, #4
	mov sb, r2
	subs r2, #4
	stm r2!, {r6}
	ldr r0, [sp, #0x18]
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #5
	adds r6, r6, r0
	adds r4, #2
	subs r5, #1
	cmp r5, #0
	bne _0801153E
	b _08011572
	.align 2, 0
_0801156C: .4byte gUnk_02026E08
_08011570:
	b _08011570
_08011572:
	ldr r0, _080115C0 @ =gUnk_02026F08
	ldr r3, [r0]
	ldr r1, _080115C4 @ =0x00002008
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #8
	adds r0, r0, r3
	mov sb, r0
	ldr r0, _080115C8 @ =gUnk_02026E00
	ldr r2, [sp, #0x10]
	mov r8, r2
	ldrh r4, [r0]
	ldr r6, _080115CC @ =gUnk_02026E08
	cmp r4, #0
	bne _08011592
	b _08011BD6
_08011592:
	adds r2, r3, r1
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #8
	adds r5, r3, r1
	lsls r1, r4, #5
	adds r0, r0, r1
	str r0, [r2]
_080115A2:
	ldrh r0, [r6]
	lsls r0, r0, #5
	add r0, r8
	adds r1, r5, #0
	movs r2, #8
	bl CpuFastSet
	adds r5, #0x20
	adds r6, #2
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080115A2
	b _08011BD6
	.align 2, 0
_080115C0: .4byte gUnk_02026F08
_080115C4: .4byte 0x00002008
_080115C8: .4byte gUnk_02026E00
_080115CC: .4byte gUnk_02026E08
_080115D0:
	adds r0, r7, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #1
	beq _080115DC
_080115DA:
	b _080115DA
_080115DC:
	ldr r1, [sp, #0x44]
	ldrh r0, [r1, #0xe]
	ldrb r1, [r1, #8]
	bl sub_08013960
	mov sl, r0
	add r1, sp, #0x10
	bl sub_080139BC
	movs r5, #0
	movs r2, #0x36
	adds r2, r2, r7
	mov r8, r2
	movs r0, #0x58
	adds r0, r0, r7
	mov sb, r0
	ldrh r1, [r7, #0x34]
	cmp r5, r1
	bhs _08011670
	ldr r6, _08011634 @ =gUnk_02026E00
_08011604:
	lsls r0, r5, #1
	add r0, r8
	ldrh r1, [r0]
	ldr r0, [sp, #0x44]
	ldrh r2, [r0, #0xe]
	ldrb r3, [r0, #8]
	add r0, sp, #0x1c
	str r0, [sp]
	mov r0, sl
	bl sub_08013A28
	ldr r3, [sp, #0x1c]
	movs r4, #0
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	adds r5, #1
	cmp r4, r0
	bhs _08011666
_0801162C:
	ldrh r0, [r6]
	cmp r0, #0x7f
	bls _08011638
_08011632:
	b _08011632
	.align 2, 0
_08011634: .4byte gUnk_02026E00
_08011638:
	ldrh r1, [r6]
	lsls r1, r1, #1
	ldr r2, _08011708 @ =gUnk_02026E08
	adds r1, r1, r2
	lsls r0, r4, #1
	adds r0, r3, r0
	ldrb r2, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r1]
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	blo _0801162C
_08011666:
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r7, #0x34]
	cmp r5, r0
	blo _08011604
_08011670:
	ldrh r0, [r7, #0x34]
	ldr r1, [sp, #0x44]
	ldrh r1, [r1, #0xe]
	str r1, [sp, #0x50]
	ldr r2, [sp, #0x44]
	ldrb r2, [r2, #8]
	str r2, [sp, #0x54]
	movs r6, #0
	cmp r0, #0
	beq _080116B8
	mov r4, r8
	adds r5, r0, #0
_08011688:
	ldrh r1, [r4]
	add r0, sp, #0x20
	str r0, [sp]
	mov r0, sl
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_08013A28
	mov r0, sb
	adds r0, #4
	mov sb, r0
	subs r0, #4
	stm r0!, {r6}
	ldr r0, [sp, #0x20]
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #5
	adds r6, r6, r0
	adds r4, #2
	subs r5, #1
	cmp r5, #0
	bne _08011688
_080116B8:
	ldr r0, _0801170C @ =gUnk_02026F08
	ldr r3, [r0]
	ldr r1, _08011710 @ =0x00002008
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #8
	adds r0, r0, r3
	mov sb, r0
	ldr r0, _08011714 @ =gUnk_02026E00
	ldr r2, [sp, #0x10]
	mov r8, r2
	ldrh r4, [r0]
	ldr r6, _08011708 @ =gUnk_02026E08
	cmp r4, #0
	bne _080116D8
	b _08011BD6
_080116D8:
	adds r2, r3, r1
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #8
	adds r5, r3, r1
	lsls r1, r4, #5
	adds r0, r0, r1
	str r0, [r2]
_080116E8:
	ldrh r0, [r6]
	lsls r0, r0, #5
	add r0, r8
	adds r1, r5, #0
	movs r2, #8
	bl CpuFastSet
	adds r5, #0x20
	adds r6, #2
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080116E8
	b _08011BD6
	.align 2, 0
_08011708: .4byte gUnk_02026E08
_0801170C: .4byte gUnk_02026F08
_08011710: .4byte 0x00002008
_08011714: .4byte gUnk_02026E00
_08011718:
	adds r0, r7, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #1
	beq _08011724
_08011722:
	b _08011722
_08011724:
	ldr r1, [sp, #0x44]
	ldrh r0, [r1, #0xe]
	ldrb r1, [r1, #8]
	bl sub_08013988
	mov sl, r0
	add r1, sp, #0x10
	bl sub_080139BC
	movs r5, #0
	movs r2, #0x36
	adds r2, r2, r7
	mov r8, r2
	movs r0, #0x58
	adds r0, r0, r7
	mov sb, r0
	ldrh r1, [r7, #0x34]
	cmp r5, r1
	bhs _080117B0
	ldr r6, _08011774 @ =gUnk_02026E00
_0801174C:
	lsls r0, r5, #1
	add r0, r8
	ldrh r1, [r0]
	mov r0, sl
	add r2, sp, #0x24
	bl sub_08013A80
	ldr r3, [sp, #0x24]
	movs r4, #0
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	adds r5, #1
	cmp r4, r0
	bhs _080117A6
_0801176C:
	ldrh r0, [r6]
	cmp r0, #0x7f
	bls _08011778
_08011772:
	b _08011772
	.align 2, 0
_08011774: .4byte gUnk_02026E00
_08011778:
	ldrh r1, [r6]
	lsls r1, r1, #1
	ldr r2, _08011834 @ =gUnk_02026E08
	adds r1, r1, r2
	lsls r0, r4, #1
	adds r0, r3, r0
	ldrb r2, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r1]
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	blo _0801176C
_080117A6:
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r7, #0x34]
	cmp r5, r0
	blo _0801174C
_080117B0:
	ldrh r0, [r7, #0x34]
	movs r6, #0
	cmp r0, #0
	beq _080117E6
	mov r4, r8
	adds r5, r0, #0
_080117BC:
	ldrh r1, [r4]
	mov r0, sl
	add r2, sp, #0x28
	bl sub_08013A80
	mov r1, sb
	adds r1, #4
	mov sb, r1
	subs r1, #4
	stm r1!, {r6}
	ldr r0, [sp, #0x28]
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #5
	adds r6, r6, r0
	adds r4, #2
	subs r5, #1
	cmp r5, #0
	bne _080117BC
_080117E6:
	ldr r0, _08011838 @ =gUnk_02026F08
	ldr r3, [r0]
	ldr r2, _0801183C @ =0x00002008
	adds r0, r3, r2
	ldr r0, [r0]
	adds r0, #8
	adds r0, r0, r3
	mov sb, r0
	ldr r0, _08011840 @ =gUnk_02026E00
	ldr r1, [sp, #0x10]
	mov r8, r1
	ldrh r4, [r0]
	ldr r6, _08011834 @ =gUnk_02026E08
	cmp r4, #0
	bne _08011806
	b _08011BD6
_08011806:
	adds r2, r3, r2
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #8
	adds r5, r3, r1
	lsls r1, r4, #5
	adds r0, r0, r1
	str r0, [r2]
_08011816:
	ldrh r0, [r6]
	lsls r0, r0, #5
	add r0, r8
	adds r1, r5, #0
	movs r2, #8
	bl CpuFastSet
	adds r5, #0x20
	adds r6, #2
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08011816
	b _08011BD6
	.align 2, 0
_08011834: .4byte gUnk_02026E08
_08011838: .4byte gUnk_02026F08
_0801183C: .4byte 0x00002008
_08011840: .4byte gUnk_02026E00
_08011844:
	ldr r5, _08011874 @ =gUnk_02026F08
	ldr r1, [r5]
	ldr r4, _08011878 @ =0x00002008
	adds r0, r1, r4
	ldr r0, [r0]
	adds r0, #8
	adds r1, r1, r0
	mov sb, r1
	ldr r2, [sp, #0x44]
	movs r0, #0xe
	ldrsh r1, [r2, r0]
	mov r0, sb
	movs r2, #0
	bl sub_0801C264
	ldr r1, _0801187C @ =gUnk_02026E00
	movs r0, #4
	strh r0, [r1]
	ldr r1, [r5]
	adds r1, r1, r4
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	b _08011BD6
	.align 2, 0
_08011874: .4byte gUnk_02026F08
_08011878: .4byte 0x00002008
_0801187C: .4byte gUnk_02026E00
_08011880:
	add r0, sp, #0x10
	bl sub_08013B14
	movs r5, #0
	movs r1, #0x36
	adds r1, r1, r7
	mov r8, r1
	movs r2, #0x58
	adds r2, r2, r7
	mov sb, r2
	ldrh r0, [r7, #0x34]
	cmp r5, r0
	bhs _0801190A
	ldr r6, _080118CC @ =gUnk_02026E00
	ldr r1, _080118D0 @ =gUnk_02026E08
	mov sl, r1
_080118A0:
	lsls r0, r5, #1
	add r0, r8
	ldrh r0, [r0]
	ldr r2, [sp, #0x44]
	ldrb r1, [r2, #0xc]
	add r2, sp, #0x2c
	bl sub_08013BBC
	ldr r3, [sp, #0x2c]
	movs r4, #0
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	adds r5, #1
	cmp r4, r0
	bhs _08011900
_080118C2:
	ldrh r0, [r6]
	cmp r0, #0x7f
	bls _080118D4
_080118C8:
	b _080118C8
	.align 2, 0
_080118CC: .4byte gUnk_02026E00
_080118D0: .4byte gUnk_02026E08
_080118D4:
	ldrh r1, [r6]
	lsls r1, r1, #1
	add r1, sl
	lsls r0, r4, #1
	adds r0, r3, r0
	ldrb r2, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r1]
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	blo _080118C2
_08011900:
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r7, #0x34]
	cmp r5, r0
	blo _080118A0
_0801190A:
	ldrh r0, [r7, #0x34]
	ldr r1, [sp, #0x44]
	ldrb r1, [r1, #0xc]
	mov sl, r1
	movs r6, #0
	cmp r0, #0
	beq _08011946
	mov r4, r8
	adds r5, r0, #0
_0801191C:
	ldrh r0, [r4]
	mov r1, sl
	add r2, sp, #0x30
	bl sub_08013BBC
	mov r2, sb
	adds r2, #4
	mov sb, r2
	subs r2, #4
	stm r2!, {r6}
	ldr r0, [sp, #0x30]
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #5
	adds r6, r6, r0
	adds r4, #2
	subs r5, #1
	cmp r5, #0
	bne _0801191C
_08011946:
	ldr r0, _08011994 @ =gUnk_02026F08
	ldr r3, [r0]
	ldr r1, _08011998 @ =0x00002008
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #8
	adds r0, r0, r3
	mov sb, r0
	ldr r0, _0801199C @ =gUnk_02026E00
	ldr r2, [sp, #0x10]
	mov r8, r2
	ldrh r4, [r0]
	ldr r6, _080119A0 @ =gUnk_02026E08
	cmp r4, #0
	bne _08011966
	b _08011BD6
_08011966:
	adds r2, r3, r1
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #8
	adds r5, r3, r1
	lsls r1, r4, #5
	adds r0, r0, r1
	str r0, [r2]
_08011976:
	ldrh r0, [r6]
	lsls r0, r0, #5
	add r0, r8
	adds r1, r5, #0
	movs r2, #8
	bl CpuFastSet
	adds r5, #0x20
	adds r6, #2
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08011976
	b _08011BD6
	.align 2, 0
_08011994: .4byte gUnk_02026F08
_08011998: .4byte 0x00002008
_0801199C: .4byte gUnk_02026E00
_080119A0: .4byte gUnk_02026E08
_080119A4:
	add r0, sp, #0x10
	bl sub_08013BF4
	movs r5, #0
	movs r0, #0x36
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0x58
	adds r1, r1, r7
	mov sb, r1
	ldrh r2, [r7, #0x34]
	cmp r5, r2
	bhs _08011A2A
	ldr r6, _080119EC @ =gUnk_02026E00
	ldr r0, _080119F0 @ =gUnk_02026E08
	mov sl, r0
_080119C4:
	lsls r0, r5, #1
	add r0, r8
	ldrh r0, [r0]
	add r1, sp, #0x34
	bl sub_08013C80
	ldr r3, [sp, #0x34]
	movs r4, #0
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	adds r5, #1
	cmp r4, r0
	bhs _08011A20
_080119E2:
	ldrh r0, [r6]
	cmp r0, #0x7f
	bls _080119F4
_080119E8:
	b _080119E8
	.align 2, 0
_080119EC: .4byte gUnk_02026E00
_080119F0: .4byte gUnk_02026E08
_080119F4:
	ldrh r1, [r6]
	lsls r1, r1, #1
	add r1, sl
	lsls r0, r4, #1
	adds r0, r3, r0
	ldrb r2, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r1]
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	blo _080119E2
_08011A20:
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	ldrh r1, [r7, #0x34]
	cmp r5, r1
	blo _080119C4
_08011A2A:
	ldrh r0, [r7, #0x34]
	movs r6, #0
	cmp r0, #0
	beq _08011A5E
	mov r4, r8
	adds r5, r0, #0
_08011A36:
	ldrh r0, [r4]
	add r1, sp, #0x38
	bl sub_08013C80
	mov r2, sb
	adds r2, #4
	mov sb, r2
	subs r2, #4
	stm r2!, {r6}
	ldr r0, [sp, #0x38]
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #5
	adds r6, r6, r0
	adds r4, #2
	subs r5, #1
	cmp r5, #0
	bne _08011A36
_08011A5E:
	ldr r0, _08011AAC @ =gUnk_02026F08
	ldr r3, [r0]
	ldr r1, _08011AB0 @ =0x00002008
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #8
	adds r0, r0, r3
	mov sb, r0
	ldr r0, _08011AB4 @ =gUnk_02026E00
	ldr r2, [sp, #0x10]
	mov r8, r2
	ldrh r4, [r0]
	ldr r6, _08011AB8 @ =gUnk_02026E08
	cmp r4, #0
	bne _08011A7E
	b _08011BD6
_08011A7E:
	adds r2, r3, r1
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #8
	adds r5, r3, r1
	lsls r1, r4, #5
	adds r0, r0, r1
	str r0, [r2]
_08011A8E:
	ldrh r0, [r6]
	lsls r0, r0, #5
	add r0, r8
	adds r1, r5, #0
	movs r2, #8
	bl CpuFastSet
	adds r5, #0x20
	adds r6, #2
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08011A8E
	b _08011BD6
	.align 2, 0
_08011AAC: .4byte gUnk_02026F08
_08011AB0: .4byte 0x00002008
_08011AB4: .4byte gUnk_02026E00
_08011AB8: .4byte gUnk_02026E08
_08011ABC:
	add r0, sp, #0x10
	bl sub_08013CA4
	movs r5, #0
	movs r0, #0x36
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0x58
	adds r1, r1, r7
	mov sb, r1
	ldrh r2, [r7, #0x34]
	cmp r5, r2
	bhs _08011B42
	ldr r6, _08011B04 @ =gUnk_02026E00
	ldr r0, _08011B08 @ =gUnk_02026E08
	mov sl, r0
_08011ADC:
	lsls r0, r5, #1
	add r0, r8
	ldrh r0, [r0]
	add r1, sp, #0x3c
	bl sub_08013D38
	ldr r3, [sp, #0x3c]
	movs r4, #0
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	adds r5, #1
	cmp r4, r0
	bhs _08011B38
_08011AFA:
	ldrh r0, [r6]
	cmp r0, #0x7f
	bls _08011B0C
_08011B00:
	b _08011B00
	.align 2, 0
_08011B04: .4byte gUnk_02026E00
_08011B08: .4byte gUnk_02026E08
_08011B0C:
	ldrh r1, [r6]
	lsls r1, r1, #1
	add r1, sl
	lsls r0, r4, #1
	adds r0, r3, r0
	ldrb r2, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r1]
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	blo _08011AFA
_08011B38:
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	ldrh r1, [r7, #0x34]
	cmp r5, r1
	blo _08011ADC
_08011B42:
	ldrh r0, [r7, #0x34]
	movs r6, #0
	cmp r0, #0
	beq _08011B76
	mov r4, r8
	adds r5, r0, #0
_08011B4E:
	ldrh r0, [r4]
	add r1, sp, #0x40
	bl sub_08013D38
	mov r2, sb
	adds r2, #4
	mov sb, r2
	subs r2, #4
	stm r2!, {r6}
	ldr r0, [sp, #0x40]
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #5
	adds r6, r6, r0
	adds r4, #2
	subs r5, #1
	cmp r5, #0
	bne _08011B4E
_08011B76:
	ldr r0, _08011BC4 @ =gUnk_02026F08
	ldr r3, [r0]
	ldr r1, _08011BC8 @ =0x00002008
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #8
	adds r0, r0, r3
	mov sb, r0
	ldr r0, _08011BCC @ =gUnk_02026E00
	ldr r2, [sp, #0x10]
	mov r8, r2
	ldrh r4, [r0]
	ldr r6, _08011BD0 @ =gUnk_02026E08
	cmp r4, #0
	beq _08011BD6
	adds r2, r3, r1
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #8
	adds r5, r3, r1
	lsls r1, r4, #5
	adds r0, r0, r1
	str r0, [r2]
_08011BA4:
	ldrh r0, [r6]
	lsls r0, r0, #5
	add r0, r8
	adds r1, r5, #0
	movs r2, #8
	bl CpuFastSet
	adds r5, #0x20
	adds r6, #2
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08011BA4
	b _08011BD6
	.align 2, 0
_08011BC4: .4byte gUnk_02026F08
_08011BC8: .4byte 0x00002008
_08011BCC: .4byte gUnk_02026E00
_08011BD0: .4byte gUnk_02026E08
_08011BD4:
	b _08011BD4
_08011BD6:
	ldr r6, _08011C44 @ =gUnk_02026E00
	ldrh r0, [r6]
	cmp r0, #0
	beq _08011C26
	ldr r0, [sp, #0x44]
	bl sub_08013424
	adds r5, r0, #0
	adds r0, r7, #4
	bl sub_0800790C
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _08011C48 @ =gUnk_02026F08
	ldr r4, [r0]
	ldr r0, _08011C4C @ =0x00002014
	adds r4, r4, r0
	adds r0, r7, #0
	adds r0, #0x30
	ldrb r1, [r0]
	ldrh r2, [r6]
	lsls r2, r2, #5
	adds r0, #1
	ldrb r0, [r0]
	str r0, [sp]
	ldr r4, [r4]
	adds r0, r5, #0
	bl _call_via_r4
	str r0, [sp, #0x48]
	adds r0, r7, #0
	adds r0, #0x98
	ldrh r3, [r6]
	lsls r3, r3, #0x13
	lsrs r3, r3, #0x10
	mov r1, sb
	ldr r2, [sp, #0x48]
	bl sub_08000BFC
_08011C26:
	ldr r1, [sp, #0x48]
	str r1, [r7, #0x28]
	ldrh r0, [r6]
	lsls r0, r0, #5
	adds r1, r1, r0
	str r1, [sp, #0x48]
	adds r0, r1, #0
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08011C44: .4byte gUnk_02026E00
_08011C48: .4byte gUnk_02026F08
_08011C4C: .4byte 0x00002014

	thumb_func_start sub_08011C50
sub_08011C50: @ 0x08011C50
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	movs r2, #0
	ldr r0, _08011C84 @ =gUnk_02026F08
	ldr r1, [r0]
	ldr r3, _08011C88 @ =0x0000201C
	adds r0, r1, r3
	ldr r0, [r0]
	cmp r2, r0
	bge _08011C98
	adds r3, r0, #0
	ldr r0, _08011C8C @ =0x00002020
	adds r1, r1, r0
	movs r4, #0xf2
	lsls r4, r4, #2
_08011C78:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08011C90
	adds r4, r1, #0
	b _08011C9A
	.align 2, 0
_08011C84: .4byte gUnk_02026F08
_08011C88: .4byte 0x0000201C
_08011C8C: .4byte 0x00002020
_08011C90:
	adds r1, r1, r4
	adds r2, #1
	cmp r2, r3
	blt _08011C78
_08011C98:
	movs r4, #0
_08011C9A:
	movs r1, #0xf2
	lsls r1, r1, #2
	adds r0, r4, #0
	bl memzero
	movs r0, #1
	strh r0, [r4]
	strh r7, [r4, #6]
	strb r6, [r4, #4]
	strb r5, [r4, #8]
	ldr r3, _08011CCC @ =0x000003C5
	adds r1, r4, r3
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xf1
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08011CCC: .4byte 0x000003C5

	thumb_func_start sub_08011CD0
sub_08011CD0: @ 0x08011CD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov sb, r0
	bl sub_08011310
	mov r0, sb
	strh r5, [r0, #0xa]
	strb r4, [r0, #0xc]
	strb r6, [r0, #0xd]
	ldrh r0, [r0, #6]
	cmp r0, #0x56
	bne _08011D08
	movs r0, #0
	mov r1, sb
	strb r0, [r1, #0xd]
_08011D08:
	mov r2, sb
	ldrh r1, [r2, #2]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r0, r1
	strh r0, [r2, #2]
	movs r6, #0
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x34]
	mov r4, sp
	adds r4, #0x24
	str r4, [sp, #0x38]
_08011D22:
	movs r0, #0xec
	muls r0, r6, r0
	adds r0, #0x14
	mov r1, sb
	adds r5, r1, r0
	adds r4, r5, #4
	adds r0, r4, #0
	bl sub_08007910
	cmp r0, #0
	beq _08011D46
	adds r0, r4, #0
	bl sub_0800790C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _08011D4E
_08011D46:
	adds r0, r5, #0
	movs r1, #0xec
	bl memzero
_08011D4E:
	adds r6, #1
	cmp r6, #3
	bls _08011D22
	mov r2, sb
	ldrh r0, [r2, #6]
	bl sub_08013804
	mov r3, sb
	ldrh r1, [r3, #0xa]
	ldr r4, [sp, #0x38]
	str r4, [sp]
	add r2, sp, #4
	ldr r3, [sp, #0x34]
	bl sub_08013528
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x2c]
	movs r7, #0
_08011D74:
	lsls r0, r7, #2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r1, [r1]
	mov r8, r0
	adds r0, r7, #1
	str r0, [sp, #0x30]
	cmp r1, #0
	beq _08011E62
	movs r4, #0
	rsbs r5, r7, #0
	lsls r1, r7, #1
	mov sl, r1
_08011D90:
	movs r0, #0xec
	muls r0, r4, r0
	add r0, sb
	adds r0, #0x18
	bl sub_08007910
	cmp r0, #0
	bne _08011DA4
	adds r1, r4, #0
	b _08011DAE
_08011DA4:
	adds r4, #1
	cmp r4, #3
	bls _08011D90
	movs r1, #1
	rsbs r1, r1, #0
_08011DAE:
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, #0x14
	mov r2, sb
	adds r6, r2, r0
	adds r0, r6, #4
	orrs r5, r7
	lsrs r1, r5, #0x1f
	mov r2, sp
	add r2, r8
	adds r2, #4
	ldr r2, [r2]
	bl sub_0800789C
	adds r0, r6, #0
	adds r0, #0x30
	movs r1, #0
	add r3, sp, #0x2c
	ldrb r3, [r3]
	strb r3, [r0]
	adds r0, #1
	strb r7, [r0]
	ldr r0, [sp, #0x38]
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r6, #0x32]
	ldr r4, [sp, #0x2c]
	cmp r4, #1
	bne _08011E5A
	strh r1, [r6, #0x34]
	ldr r0, [sp, #0x34]
	add r0, r8
	ldr r5, [r0]
	adds r7, r6, #0
	adds r7, #0x34
	movs r0, #0x36
	adds r0, r0, r6
	mov ip, r0
	movs r4, #0
	b _08011E4E
_08011DFE:
	lsls r0, r4, #1
	adds r0, r5, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r2, r0, #8
	orrs r2, r1
	movs r3, #0
	ldrh r0, [r7]
	adds r1, r0, #0
	mov r8, r0
	adds r4, #1
	mov sl, r4
	cmp r3, r1
	bhs _08011E3A
	mov r4, ip
	ldrh r0, [r4]
	cmp r0, r2
	beq _08011E36
_08011E22:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r1
	bhs _08011E3A
	lsls r0, r3, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r0, r2
	bne _08011E22
_08011E36:
	cmp r3, r8
	blo _08011E48
_08011E3A:
	ldrh r0, [r7]
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
_08011E48:
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
_08011E4E:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	blo _08011DFE
_08011E5A:
	ldrh r1, [r6]
	movs r0, #2
	orrs r0, r1
	strh r0, [r6]
_08011E62:
	ldr r7, [sp, #0x30]
	cmp r7, #3
	ble _08011D74
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08011E78
sub_08011E78: @ 0x08011E78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r4, [sp, #0x44]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r1, r8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r7, r0, #0
	bl sub_08011310
	strh r5, [r7, #0xe]
	add r1, sp, #0x10
	add r2, sp, #0xc
	mov sb, r2
	adds r0, r4, #0
	bl sub_08013D5C
	ldrb r1, [r7, #8]
	adds r0, r5, #0
	bl sub_08013D98
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r0, [r7, #4]
	ldrh r1, [r7, #6]
	add r3, sp, #4
	str r3, [sp]
	adds r3, r6, #0
	bl sub_08013704
	add r0, sp, #4
	ldr r2, [sp, #0x10]
	ldrh r1, [r0]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r4, sb
	ldrb r2, [r4]
	adds r0, r7, #0
	mov r3, r8
	bl sub_08011CD0
	add r0, sp, #4
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	cmp r0, #0
	blt _08011FCC
	ldr r0, [sp, #0x10]
	adds r0, r1, r0
	strh r0, [r7, #0x10]
	movs r4, #0
	add r5, sp, #0x14
	add r6, sp, #0x18
_08011EFE:
	movs r0, #0xec
	muls r0, r4, r0
	adds r0, r0, r7
	adds r0, #0x18
	bl sub_08007910
	cmp r0, #0
	beq _08011F18
	adds r4, #1
	cmp r4, #3
	bls _08011EFE
	movs r4, #1
	rsbs r4, r4, #0
_08011F18:
	movs r0, #0xec
	muls r0, r4, r0
	adds r0, #0x14
	adds r0, r0, r7
	mov sl, r0
	ldrh r0, [r7, #0xe]
	ldrb r1, [r7, #8]
	bl sub_08013960
	ldrh r1, [r7, #0x10]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_080139C4
	mov r0, sl
	adds r0, #4
	ldr r2, [sp, #0x14]
	movs r1, #2
	bl sub_0800789C
	mov r1, sl
	adds r1, #0x30
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x31
	strb r4, [r0]
	mov r0, sl
	strh r2, [r0, #0x32]
	strh r2, [r0, #0x34]
	ldr r6, [sp, #0x18]
	mov r5, sl
	adds r5, #0x34
	movs r1, #0x36
	add r1, sl
	mov r8, r1
	movs r4, #0
	b _08011FB6
_08011F66:
	lsls r0, r4, #1
	adds r0, r6, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r3, r0, #8
	orrs r3, r1
	movs r1, #0
	ldrh r0, [r5]
	adds r2, r0, #0
	mov sb, r0
	adds r4, #1
	mov ip, r4
	cmp r1, r2
	bhs _08011FA2
	mov r4, r8
	ldrh r0, [r4]
	cmp r0, r3
	beq _08011F9E
_08011F8A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bhs _08011FA2
	lsls r0, r1, #1
	add r0, r8
	ldrh r0, [r0]
	cmp r0, r3
	bne _08011F8A
_08011F9E:
	cmp r1, sb
	blo _08011FB0
_08011FA2:
	ldrh r0, [r5]
	lsls r0, r0, #1
	add r0, r8
	strh r3, [r0]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_08011FB0:
	mov r1, ip
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
_08011FB6:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	blo _08011F66
	mov r2, sl
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_08011FCC:
	add r0, sp, #4
	ldrh r1, [r0, #4]
	movs r3, #4
	ldrsh r0, [r0, r3]
	cmp r0, #0
	blt _080120AC
	ldr r0, [sp, #0x10]
	adds r0, r1, r0
	strh r0, [r7, #0x12]
	movs r4, #0
	add r5, sp, #0x1c
	add r6, sp, #0x20
_08011FE4:
	movs r0, #0xec
	muls r0, r4, r0
	adds r0, r0, r7
	adds r0, #0x18
	bl sub_08007910
	cmp r0, #0
	beq _08011FFE
	adds r4, #1
	cmp r4, #3
	bls _08011FE4
	movs r4, #1
	rsbs r4, r4, #0
_08011FFE:
	movs r0, #0xec
	muls r0, r4, r0
	adds r0, #0x14
	adds r0, r0, r7
	mov sb, r0
	ldrh r0, [r7, #0xe]
	ldrb r1, [r7, #8]
	bl sub_08013988
	ldrh r1, [r7, #0x12]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_080139C4
	mov r0, sb
	adds r0, #4
	ldr r2, [sp, #0x1c]
	movs r1, #3
	bl sub_0800789C
	mov r1, sb
	adds r1, #0x30
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	mov r0, sb
	adds r0, #0x31
	strb r4, [r0]
	mov r4, sb
	strh r2, [r4, #0x32]
	strh r2, [r4, #0x34]
	ldr r6, [sp, #0x20]
	mov r5, sb
	adds r5, #0x34
	mov r7, sb
	adds r7, #0x36
	movs r4, #0
	b _08012094
_0801204A:
	lsls r0, r4, #1
	adds r0, r6, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r3, r0, #8
	orrs r3, r1
	movs r1, #0
	ldrh r0, [r5]
	adds r2, r0, #0
	mov r8, r0
	adds r4, #1
	cmp r1, r2
	bhs _08012082
	ldrh r0, [r7]
	cmp r0, r3
	beq _0801207E
_0801206A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bhs _08012082
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0801206A
_0801207E:
	cmp r1, r8
	blo _08012090
_08012082:
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r3, [r0]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_08012090:
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
_08012094:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	blo _0801204A
	mov r0, sb
	ldrh r1, [r0]
	movs r0, #2
	orrs r0, r1
	mov r1, sb
	strh r0, [r1]
_080120AC:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080120BC
sub_080120BC: @ 0x080120BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r4, [sp, #0x30]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sb, r0
	str r3, [sp, #0xc]
	bl sub_08011310
	mov r0, sb
	strh r4, [r0, #0xe]
	adds r1, r5, #0
	adds r2, r6, #0
	ldr r3, [sp, #0xc]
	bl sub_08011CD0
	movs r4, #0
	add r5, sp, #4
	add r1, sp, #8
	mov sl, r1
_080120FC:
	movs r0, #0xec
	muls r0, r4, r0
	add r0, sb
	adds r0, #0x18
	bl sub_08007910
	cmp r0, #0
	beq _08012116
	adds r4, #1
	cmp r4, #3
	bls _080120FC
	movs r4, #1
	rsbs r4, r4, #0
_08012116:
	movs r0, #0xec
	muls r0, r4, r0
	adds r0, #0x14
	add r0, sb
	mov r8, r0
	mov r2, sb
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #0xa]
	mov r2, sp
	adds r3, r5, #0
	bl sub_08013B20
	mov r0, r8
	adds r0, #4
	ldr r2, [sp]
	movs r1, #5
	bl sub_0800789C
	mov r1, r8
	adds r1, #0x30
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	strb r4, [r1]
	mov r1, r8
	strh r0, [r1, #0x32]
	strh r2, [r1, #0x34]
	ldr r6, [sp, #4]
	mov r5, r8
	adds r5, #0x34
	mov r7, r8
	adds r7, #0x36
	movs r4, #0
	b _080121A6
_0801215C:
	lsls r0, r4, #1
	adds r0, r6, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r3, r0, #8
	orrs r3, r1
	movs r1, #0
	ldrh r0, [r5]
	adds r2, r0, #0
	mov ip, r0
	adds r4, #1
	cmp r1, r2
	bhs _08012194
	ldrh r0, [r7]
	cmp r0, r3
	beq _08012190
_0801217C:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bhs _08012194
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0801217C
_08012190:
	cmp r1, ip
	blo _080121A2
_08012194:
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r3, [r0]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_080121A2:
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
_080121A6:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	blo _0801215C
	mov r2, r8
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	movs r4, #0
_080121BE:
	movs r0, #0xec
	muls r0, r4, r0
	add r0, sb
	adds r0, #0x18
	bl sub_08007910
	cmp r0, #0
	bne _080121D2
	adds r5, r4, #0
	b _080121DC
_080121D2:
	adds r4, #1
	cmp r4, #3
	bls _080121BE
	movs r5, #1
	rsbs r5, r5, #0
_080121DC:
	movs r0, #0xec
	muls r0, r5, r0
	adds r0, #0x14
	mov r1, sb
	adds r4, r1, r0
	ldrh r0, [r1, #6]
	ldrh r1, [r1, #0xa]
	mov r2, sl
	bl sub_08013A9C
	adds r0, r4, #4
	ldr r2, [sp, #8]
	movs r1, #4
	bl sub_0800789C
	adds r0, r4, #0
	adds r0, #0x30
	movs r1, #1
	strb r1, [r0]
	adds r0, #1
	strb r5, [r0]
	strh r1, [r4, #0x32]
	ldrh r1, [r4]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08012220
sub_08012220: @ 0x08012220
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	adds r7, r0, #0
	bl sub_08011310
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08011CD0
	movs r4, #0
	add r5, sp, #4
_08012250:
	movs r0, #0xec
	muls r0, r4, r0
	adds r0, r0, r7
	adds r0, #0x18
	bl sub_08007910
	cmp r0, #0
	beq _0801226A
	adds r4, #1
	cmp r4, #3
	bls _08012250
	movs r4, #1
	rsbs r4, r4, #0
_0801226A:
	movs r0, #0xec
	muls r0, r4, r0
	adds r0, #0x14
	adds r0, r0, r7
	mov r8, r0
	ldrh r0, [r7, #6]
	ldrh r1, [r7, #0xa]
	mov r2, sp
	adds r3, r5, #0
	bl sub_08013C00
	mov r0, r8
	adds r0, #4
	ldr r2, [sp]
	movs r1, #6
	bl sub_0800789C
	mov r1, r8
	adds r1, #0x30
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	strb r4, [r1]
	mov r1, r8
	strh r0, [r1, #0x32]
	strh r2, [r1, #0x34]
	ldr r6, [sp, #4]
	mov r5, r8
	adds r5, #0x34
	mov r7, r8
	adds r7, #0x36
	movs r4, #0
	b _080122F8
_080122AE:
	lsls r0, r4, #1
	adds r0, r6, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r3, r0, #8
	orrs r3, r1
	movs r1, #0
	ldrh r0, [r5]
	adds r2, r0, #0
	mov ip, r0
	adds r4, #1
	cmp r1, r2
	bhs _080122E6
	ldrh r0, [r7]
	cmp r0, r3
	beq _080122E2
_080122CE:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bhs _080122E6
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _080122CE
_080122E2:
	cmp r1, ip
	blo _080122F4
_080122E6:
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r3, [r0]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_080122F4:
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
_080122F8:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	blo _080122AE
	mov r0, r8
	ldrh r1, [r0]
	movs r0, #2
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801231C
sub_0801231C: @ 0x0801231C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	adds r7, r0, #0
	bl sub_08011310
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08011CD0
	movs r4, #0
	add r5, sp, #4
_0801234C:
	movs r0, #0xec
	muls r0, r4, r0
	adds r0, r0, r7
	adds r0, #0x18
	bl sub_08007910
	cmp r0, #0
	beq _08012366
	adds r4, #1
	cmp r4, #3
	bls _0801234C
	movs r4, #1
	rsbs r4, r4, #0
_08012366:
	movs r0, #0xec
	muls r0, r4, r0
	adds r0, #0x14
	adds r0, r0, r7
	mov r8, r0
	ldrh r0, [r7, #6]
	ldrh r1, [r7, #0xa]
	mov r2, sp
	adds r3, r5, #0
	bl sub_08013CB0
	mov r0, r8
	adds r0, #4
	ldr r2, [sp]
	movs r1, #7
	bl sub_0800789C
	mov r1, r8
	adds r1, #0x30
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	strb r4, [r1]
	mov r1, r8
	strh r0, [r1, #0x32]
	strh r2, [r1, #0x34]
	ldr r6, [sp, #4]
	mov r5, r8
	adds r5, #0x34
	mov r7, r8
	adds r7, #0x36
	movs r4, #0
	b _080123F4
_080123AA:
	lsls r0, r4, #1
	adds r0, r6, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r3, r0, #8
	orrs r3, r1
	movs r1, #0
	ldrh r0, [r5]
	adds r2, r0, #0
	mov ip, r0
	adds r4, #1
	cmp r1, r2
	bhs _080123E2
	ldrh r0, [r7]
	cmp r0, r3
	beq _080123DE
_080123CA:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bhs _080123E2
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _080123CA
_080123DE:
	cmp r1, ip
	blo _080123F0
_080123E2:
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r3, [r0]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_080123F0:
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
_080123F4:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	blo _080123AA
	mov r0, r8
	ldrh r1, [r0]
	movs r0, #2
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08012418
sub_08012418: @ 0x08012418
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r5, r0, #0
	ldrh r0, [r5, #2]
	movs r2, #0xff
	lsls r2, r2, #8
	mov r8, r2
	ands r2, r0
	mov r8, r2
	strb r3, [r5, #8]
	ldrh r0, [r5, #6]
	cmp r1, r0
	beq _0801249E
	strh r1, [r5, #6]
	adds r0, r5, #0
	adds r0, #0x18
	bl sub_080079B8
	mov sb, r0
	ldrh r1, [r5, #0xa]
	ldrb r2, [r5, #0xd]
	ldrb r3, [r5, #0xc]
	adds r0, r5, #0
	bl sub_08011CD0
	ldr r0, _080124B4 @ =gUnk_0815DDE0
	movs r1, #9
	bl sub_080079BC
	ldr r0, _080124B8 @ =gUnk_02026F08
	ldr r0, [r0]
	str r5, [r0, #4]
	adds r6, r5, #0
	adds r6, #0x14
	movs r7, #4
_08012466:
	adds r4, r6, #4
	adds r0, r4, #0
	bl sub_08007910
	cmp r0, #0
	beq _08012488
	adds r0, r4, #0
	bl sub_0800790C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _08012488
	adds r0, r4, #0
	mov r1, sb
	bl sub_08007730
_08012488:
	adds r6, #0xec
	subs r7, #1
	cmp r7, #0
	bgt _08012466
	ldr r0, _080124B8 @ =gUnk_02026F08
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1, #4]
	movs r1, #0
	bl sub_080079BC
_0801249E:
	ldrb r0, [r5, #2]
	mov r1, r8
	orrs r1, r0
	strh r1, [r5, #2]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080124B4: .4byte gUnk_0815DDE0
_080124B8: .4byte gUnk_02026F08

	thumb_func_start sub_080124BC
sub_080124BC: @ 0x080124BC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _080124D8 @ =gUnk_02026F08
	ldr r0, [r0]
	ldr r5, [r0, #4]
	cmp r3, #8
	beq _0801255C
	cmp r3, #8
	bgt _080124DC
	cmp r3, #2
	beq _080124E2
	b _08012586
	.align 2, 0
_080124D8: .4byte gUnk_02026F08
_080124DC:
	cmp r3, #9
	beq _08012576
	b _08012586
_080124E2:
	adds r4, r5, #0
	adds r4, #0x14
	movs r2, #4
_080124E8:
	adds r0, r4, #4
	cmp r0, r1
	beq _080124FA
	adds r4, #0xec
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _080124E8
_080124FA:
	cmp r2, #0
	bne _08012500
_080124FE:
	b _080124FE
_08012500:
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #1
	beq _08012586
	cmp r0, #1
	bgt _08012514
	cmp r0, #0
	beq _0801251A
	b _0801255A
_08012514:
	cmp r0, #2
	beq _08012532
	b _0801255A
_0801251A:
	adds r0, r4, #4
	bl sub_08007914
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801253E
	ldrh r1, [r4]
	movs r0, #1
	orrs r1, r0
	strh r1, [r4]
	ldrh r1, [r5, #2]
	b _08012554
_08012532:
	adds r0, r4, #4
	bl sub_08007914
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08012548
_0801253E:
	ldrh r1, [r4]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4]
	b _08012586
_08012548:
	ldrh r1, [r4]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4]
	ldrh r1, [r5, #2]
	movs r0, #2
_08012554:
	orrs r0, r1
	strh r0, [r5, #2]
	b _08012586
_0801255A:
	b _0801255A
_0801255C:
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	lsls r2, r0, #8
	orrs r2, r1
	ldrh r1, [r5, #2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08012586
	adds r0, r2, #0
	bl sub_08145120
	b _08012586
_08012576:
	ldrb r2, [r2, #2]
	ldr r1, _0801258C @ =0x00002018
	adds r0, r0, r1
	ldr r3, [r0]
	adds r0, r5, #0
	movs r1, #9
	bl _call_via_r3
_08012586:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801258C: .4byte 0x00002018

	thumb_func_start sub_08012590
sub_08012590: @ 0x08012590
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r5, #4
	adds r4, r6, #0
	adds r4, #0x14
_0801259A:
	adds r0, r4, #4
	bl sub_08007910
	cmp r0, #0
	beq _080125AE
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08012696
_080125AE:
	adds r4, #0xec
	subs r5, #1
	cmp r5, #0
	bgt _0801259A
	ldr r0, _08012620 @ =gUnk_02026F08
	ldr r0, [r0]
	str r6, [r0, #4]
	movs r7, #4
	adds r5, r6, #0
	adds r5, #0x14
_080125C2:
	adds r4, r5, #4
	adds r0, r4, #0
	bl sub_08007910
	cmp r0, #0
	beq _080125D4
	adds r0, r4, #0
	bl sub_080077E4
_080125D4:
	adds r5, #0xec
	subs r7, #1
	cmp r7, #0
	bgt _080125C2
	ldrh r1, [r6, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012636
	ldr r0, _08012624 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r6, #2]
	adds r0, r6, #0
	bl sub_08011310
	ldr r0, _08012620 @ =gUnk_02026F08
	ldr r1, [r0]
	ldr r2, _08012628 @ =0x00002010
	adds r0, r1, r2
	ldr r4, [r0]
	str r6, [r0]
	cmp r4, #0
	beq _08012630
	adds r0, r4, #0
	bl sub_08013460
	movs r2, #0xf1
	lsls r2, r2, #2
	adds r1, r6, r2
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_08013460
	ldr r2, _0801262C @ =0x000003C5
	adds r1, r4, r2
	strb r0, [r1]
	b _08012636
	.align 2, 0
_08012620: .4byte gUnk_02026F08
_08012624: .4byte 0x0000FFFE
_08012628: .4byte 0x00002010
_0801262C: .4byte 0x000003C5
_08012630:
	ldr r2, _08012678 @ =0x0000200C
	adds r0, r1, r2
	str r6, [r0]
_08012636:
	ldrh r1, [r6, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801268E
	ldr r0, _0801267C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #2]
	adds r0, r6, #0
	bl sub_08011310
	ldr r0, _08012680 @ =gUnk_02026F08
	ldr r1, [r0]
	ldr r2, _08012678 @ =0x0000200C
	adds r0, r1, r2
	ldr r4, [r0]
	str r6, [r0]
	cmp r4, #0
	beq _08012688
	adds r0, r4, #0
	bl sub_08013460
	ldr r2, _08012684 @ =0x000003C5
	adds r1, r6, r2
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_08013460
	movs r2, #0xf1
	lsls r2, r2, #2
	adds r1, r4, r2
	strb r0, [r1]
	b _0801268E
	.align 2, 0
_08012678: .4byte 0x0000200C
_0801267C: .4byte 0x0000FFFD
_08012680: .4byte gUnk_02026F08
_08012684: .4byte 0x000003C5
_08012688:
	ldr r2, _0801269C @ =0x00002010
	adds r0, r1, r2
	str r6, [r0]
_0801268E:
	ldr r0, _080126A0 @ =gUnk_02026F08
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1, #4]
_08012696:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801269C: .4byte 0x00002010
_080126A0: .4byte gUnk_02026F08

	thumb_func_start sub_080126A4
sub_080126A4: @ 0x080126A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r5, #4
	adds r4, r7, #0
	adds r4, #0x14
_080126B4:
	adds r0, r4, #4
	bl sub_08007910
	cmp r0, #0
	beq _080126C8
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801272C
_080126C8:
	adds r4, #0xec
	subs r5, #1
	cmp r5, #0
	bgt _080126B4
	movs r0, #4
	mov r8, r0
	adds r6, r7, #0
	adds r6, #0x14
	movs r1, #1
	mov sb, r1
	adds r5, r7, #0
	adds r5, #0xc8
_080126E0:
	adds r4, r6, #4
	adds r0, r4, #0
	bl sub_08007910
	cmp r0, #0
	beq _0801271C
	adds r0, r4, #0
	bl sub_080079B8
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, r4
	beq _0801271A
	ldrb r0, [r5, #4]
	mov r1, sb
	eors r0, r1
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	adds r2, #0xbc
	adds r2, r6, r2
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08012738
	ldrb r0, [r5, #4]
	mov r1, sb
	eors r0, r1
	strb r0, [r5, #4]
_0801271A:
	str r4, [r5]
_0801271C:
	adds r5, #0xec
	adds r6, #0xec
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r1, r8
	cmp r1, #0
	bgt _080126E0
_0801272C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08012738
sub_08012738: @ 0x08012738
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r7, r4, #4
	adds r0, r7, #0
	mov r1, sp
	bl sub_080078D0
	adds r0, r7, #0
	bl sub_0800790C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #0
	str r0, [r5]
	strh r0, [r5, #8]
	str r0, [r5, #0x14]
	mov r0, r8
	strb r0, [r5, #4]
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r0, [r0]
	strb r0, [r5, #5]
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	strb r0, [r5, #6]
	ldrh r0, [r4, #0x32]
	strb r0, [r5, #7]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	mov r0, sp
	ldrh r0, [r0, #2]
	strh r0, [r5, #0xc]
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r5, #0xe]
	mov r0, sp
	ldrh r0, [r0, #6]
	strh r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_08007930
	cmp r0, #0
	beq _080127AA
	ldrh r0, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #8]
_080127AA:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080127C4
	movs r3, #0xa
	ldrsh r0, [r5, r3]
	rsbs r0, r0, #0
	strh r0, [r5, #0xa]
	ldrh r0, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r5, #8]
_080127C4:
	adds r0, r7, #0
	bl sub_0800793C
	cmp r0, #0
	beq _080127DA
	ldrh r0, [r5, #8]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r5, #8]
_080127DA:
	adds r0, r7, #0
	bl sub_08007924
	cmp r0, #0
	beq _080127F0
	ldrh r0, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #8]
_080127F0:
	mov r0, sp
	movs r3, #8
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge _080127FC
	b _08012A7E
_080127FC:
	mov r0, r8
	cmp r0, #8
	bls _08012804
	b _08012A7C
_08012804:
	lsls r0, r0, #2
	ldr r1, _08012810 @ =_08012814
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012810: .4byte _08012814
_08012814: @ jump table
	.4byte _08012838 @ case 0
	.4byte _08012838 @ case 1
	.4byte _080128A2 @ case 2
	.4byte _080128A2 @ case 3
	.4byte _08012920 @ case 4
	.4byte _0801293C @ case 5
	.4byte _0801299C @ case 6
	.4byte _080129FA @ case 7
	.4byte _08012A64 @ case 8
_08012838:
	ldrh r0, [r6, #6]
	bl sub_08013804
	mov r1, sp
	movs r2, #8
	ldrsh r1, [r1, r2]
	ldrb r2, [r6, #0xc]
	adds r3, r5, #0
	bl sub_0801383C
	ldrh r0, [r4, #0x34]
	cmp r0, #0
	bne _08012854
	b _08012A5E
_08012854:
	mov r0, sp
	ldrh r3, [r4, #0x34]
	movs r1, #0x36
	adds r1, r1, r4
	mov ip, r1
	movs r2, #0x58
	adds r2, r2, r4
	mov r8, r2
	ldrh r2, [r0, #8]
	movs r6, #1
	rsbs r6, r6, #0
	movs r1, #0
	ldr r7, [r4, #0x28]
	cmp r1, r3
	bhs _08012896
	ldrh r0, [r4, #0x36]
	cmp r2, r0
	bne _0801287C
	ldr r6, [r4, #0x58]
	b _08012896
_0801287C:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r3
	bhs _08012896
	lsls r0, r1, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r2, r0
	bne _0801287C
	lsls r0, r1, #2
	add r0, r8
	ldr r6, [r0]
_08012896:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _080128A0
	b _08012A58
_080128A0:
	b _080128A0
_080128A2:
	mov r1, r8
	cmp r1, #2
	bne _080128B2
	ldrh r0, [r6, #0xe]
	ldrb r1, [r6, #8]
	bl sub_08013960
	b _080128BA
_080128B2:
	ldrh r0, [r6, #0xe]
	ldrb r1, [r6, #8]
	bl sub_08013988
_080128BA:
	adds r2, r0, #0
	mov r0, sp
	movs r3, #8
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	adds r2, r5, #0
	bl sub_08013A0C
	ldrh r0, [r4, #0x34]
	cmp r0, #0
	bne _080128D2
	b _08012A5E
_080128D2:
	mov r0, sp
	ldrh r3, [r4, #0x34]
	movs r1, #0x36
	adds r1, r1, r4
	mov ip, r1
	movs r2, #0x58
	adds r2, r2, r4
	mov r8, r2
	ldrh r2, [r0, #8]
	movs r6, #1
	rsbs r6, r6, #0
	movs r1, #0
	ldr r7, [r4, #0x28]
	cmp r1, r3
	bhs _08012914
	ldrh r0, [r4, #0x36]
	cmp r2, r0
	bne _080128FA
	ldr r6, [r4, #0x58]
	b _08012914
_080128FA:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r3
	bhs _08012914
	lsls r0, r1, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r2, r0
	bne _080128FA
	lsls r0, r1, #2
	add r0, r8
	ldr r6, [r0]
_08012914:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _0801291E
	b _08012A58
_0801291E:
	b _0801291E
_08012920:
	ldrh r2, [r6, #0xe]
	ldr r0, _08012938 @ =gUnk_08724208
	lsls r1, r2, #1
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	lsrs r0, r0, #4
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_08013AF8
	b _08012A5E
	.align 2, 0
_08012938: .4byte gUnk_08724208
_0801293C:
	mov r0, sp
	movs r1, #8
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	bl sub_08013B98
	ldrh r0, [r4, #0x34]
	cmp r0, #0
	bne _08012950
	b _08012A5E
_08012950:
	mov r0, sp
	ldrh r3, [r4, #0x34]
	movs r2, #0x36
	adds r2, r2, r4
	mov ip, r2
	movs r1, #0x58
	adds r1, r1, r4
	mov r8, r1
	ldrh r2, [r0, #8]
	movs r6, #1
	rsbs r6, r6, #0
	movs r1, #0
	ldr r7, [r4, #0x28]
	cmp r1, r3
	bhs _08012992
	ldrh r0, [r4, #0x36]
	cmp r2, r0
	bne _08012978
	ldr r6, [r4, #0x58]
	b _08012992
_08012978:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r3
	bhs _08012992
	lsls r0, r1, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r2, r0
	bne _08012978
	lsls r0, r1, #2
	add r0, r8
	ldr r6, [r0]
_08012992:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _08012A58
_0801299A:
	b _0801299A
_0801299C:
	mov r0, sp
	movs r1, #8
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	bl sub_08013C5C
	ldrh r0, [r4, #0x34]
	cmp r0, #0
	beq _08012A5E
	mov r0, sp
	ldrh r3, [r4, #0x34]
	movs r2, #0x36
	adds r2, r2, r4
	mov ip, r2
	movs r1, #0x58
	adds r1, r1, r4
	mov r8, r1
	ldrh r2, [r0, #8]
	movs r6, #1
	rsbs r6, r6, #0
	movs r1, #0
	ldr r7, [r4, #0x28]
	cmp r1, r3
	bhs _080129F0
	ldrh r0, [r4, #0x36]
	cmp r2, r0
	bne _080129D6
	ldr r6, [r4, #0x58]
	b _080129F0
_080129D6:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r3
	bhs _080129F0
	lsls r0, r1, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r2, r0
	bne _080129D6
	lsls r0, r1, #2
	add r0, r8
	ldr r6, [r0]
_080129F0:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _08012A58
_080129F8:
	b _080129F8
_080129FA:
	mov r0, sp
	movs r1, #8
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	bl sub_08013D14
	ldrh r0, [r4, #0x34]
	cmp r0, #0
	beq _08012A5E
	mov r0, sp
	ldrh r3, [r4, #0x34]
	movs r2, #0x36
	adds r2, r2, r4
	mov ip, r2
	movs r1, #0x58
	adds r1, r1, r4
	mov r8, r1
	ldrh r2, [r0, #8]
	movs r6, #1
	rsbs r6, r6, #0
	movs r1, #0
	ldr r7, [r4, #0x28]
	cmp r1, r3
	bhs _08012A4E
	ldrh r0, [r4, #0x36]
	cmp r2, r0
	bne _08012A34
	ldr r6, [r4, #0x58]
	b _08012A4E
_08012A34:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r3
	bhs _08012A4E
	lsls r0, r1, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r2, r0
	bne _08012A34
	lsls r0, r1, #2
	add r0, r8
	ldr r6, [r0]
_08012A4E:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _08012A58
_08012A56:
	b _08012A56
_08012A58:
	adds r0, r7, r6
	str r0, [r5, #0x14]
	b _08012A7E
_08012A5E:
	ldr r0, [r4, #0x28]
	str r0, [r5, #0x14]
	b _08012A7E
_08012A64:
	ldr r0, [r4, #0x2c]
	mov r1, sp
	movs r2, #8
	ldrsh r1, [r1, r2]
	bl sub_08013ED0
	str r0, [r5]
	ldr r0, [r4, #0x28]
	str r0, [r5, #0x14]
	movs r0, #1
	strb r0, [r5, #7]
	b _08012A7E
_08012A7C:
	b _08012A7C
_08012A7E:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08012A8C
sub_08012A8C: @ 0x08012A8C
	push {r4, r5, r6, r7, lr}
	ldr r1, _08012AF0 @ =gUnk_02026F08
	ldr r2, [r1]
	ldr r3, _08012AF4 @ =0x0000200C
	adds r0, r2, r3
	ldr r5, [r0]
	adds r4, r1, #0
	cmp r5, #0
	beq _08012B50
	ldr r1, _08012AF8 @ =0x00002008
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0xff
	bhi _08012B50
	ldr r2, _08012AFC @ =0x0000FFFC
	adds r7, r2, #0
_08012AAC:
	movs r6, #4
	adds r4, r5, #0
	adds r4, #0x14
_08012AB2:
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012ACA
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080113A8
	ldrh r0, [r4]
	ands r0, r7
	strh r0, [r4]
_08012ACA:
	adds r4, #0xec
	subs r6, #1
	cmp r6, #0
	bgt _08012AB2
	ldr r3, _08012B00 @ =0x000003C5
	adds r0, r5, r3
	ldrb r2, [r0]
	ldr r4, _08012AF0 @ =gUnk_02026F08
	cmp r2, #0
	blt _08012AEA
	ldr r1, [r4]
	ldr r3, _08012B04 @ =0x0000201C
	adds r0, r1, r3
	ldr r0, [r0]
	cmp r2, r0
	blt _08012B08
_08012AEA:
	movs r2, #0
	b _08012B18
	.align 2, 0
_08012AF0: .4byte gUnk_02026F08
_08012AF4: .4byte 0x0000200C
_08012AF8: .4byte 0x00002008
_08012AFC: .4byte 0x0000FFFC
_08012B00: .4byte 0x000003C5
_08012B04: .4byte 0x0000201C
_08012B08:
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r2, _08012B68 @ =0x00002020
	adds r0, r0, r2
	adds r2, r1, r0
_08012B18:
	ldr r3, _08012B6C @ =0x000003C5
	adds r1, r5, r3
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xf1
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	adds r3, r0, #0
	strb r0, [r1]
	cmp r2, #0
	beq _08012B3E
	movs r0, #0xf1
	lsls r0, r0, #2
	adds r1, r2, r0
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
_08012B3E:
	adds r5, r2, #0
	cmp r5, #0
	beq _08012B50
	ldr r0, [r4]
	ldr r1, _08012B70 @ =0x00002008
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0xff
	bls _08012AAC
_08012B50:
	ldr r1, [r4]
	ldr r2, _08012B74 @ =0x0000200C
	adds r0, r1, r2
	str r5, [r0]
	cmp r5, #0
	bne _08012B62
	ldr r3, _08012B78 @ =0x00002010
	adds r0, r1, r3
	str r5, [r0]
_08012B62:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012B68: .4byte 0x00002020
_08012B6C: .4byte 0x000003C5
_08012B70: .4byte 0x00002008
_08012B74: .4byte 0x0000200C
_08012B78: .4byte 0x00002010

	thumb_func_start sub_08012B7C
sub_08012B7C: @ 0x08012B7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08012C4C @ =gUnk_0815DDE0
	movs r1, #9
	bl sub_080079BC
	ldr r0, _08012C50 @ =gUnk_02026F08
	ldr r1, [r0]
	ldr r0, _08012C54 @ =0x00002008
	adds r2, r1, r0
	movs r0, #0
	str r0, [r2]
	ldr r2, _08012C58 @ =0x0000201C
	adds r0, r1, r2
	ldr r5, [r0]
	ldr r0, _08012C5C @ =0x00002020
	adds r4, r1, r0
_08012BA2:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08012BAE
	adds r0, r4, #0
	bl sub_08012590
_08012BAE:
	movs r1, #0xf2
	lsls r1, r1, #2
	adds r4, r4, r1
	subs r5, #1
	cmp r5, #0
	bgt _08012BA2
	bl sub_08012A8C
	ldr r0, _08012C50 @ =gUnk_02026F08
	ldr r0, [r0]
	ldr r2, _08012C5C @ =0x00002020
	adds r5, r0, r2
	ldr r1, _08012C58 @ =0x0000201C
	adds r0, r0, r1
	ldr r1, [r0]
_08012BCC:
	ldrh r0, [r5]
	movs r2, #0xf2
	lsls r2, r2, #2
	adds r2, r2, r5
	mov r8, r2
	subs r7, r1, #1
	cmp r0, #1
	bne _08012C0A
	adds r4, r5, #0
	adds r4, #0x14
	movs r6, #4
	ldr r0, _08012C60 @ =0x0000FFFC
	adds r2, r0, #0
_08012BE6:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012C02
	adds r0, r5, #0
	adds r1, r4, #0
	str r2, [sp]
	bl sub_080113A8
	ldrh r0, [r4]
	ldr r2, [sp]
	ands r0, r2
	strh r0, [r4]
_08012C02:
	adds r4, #0xec
	subs r6, #1
	cmp r6, #0
	bgt _08012BE6
_08012C0A:
	mov r5, r8
	adds r1, r7, #0
	cmp r1, #0
	bgt _08012BCC
	ldr r0, _08012C50 @ =gUnk_02026F08
	ldr r1, [r0]
	ldr r2, _08012C58 @ =0x0000201C
	adds r0, r1, r2
	ldr r5, [r0]
	ldr r0, _08012C5C @ =0x00002020
	adds r4, r1, r0
_08012C20:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08012C2C
	adds r0, r4, #0
	bl sub_080126A4
_08012C2C:
	movs r1, #0xf2
	lsls r1, r1, #2
	adds r4, r4, r1
	subs r5, #1
	cmp r5, #0
	bgt _08012C20
	movs r0, #0
	movs r1, #0
	bl sub_080079BC
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012C4C: .4byte gUnk_0815DDE0
_08012C50: .4byte gUnk_02026F08
_08012C54: .4byte 0x00002008
_08012C58: .4byte 0x0000201C
_08012C5C: .4byte 0x00002020
_08012C60: .4byte 0x0000FFFC

	thumb_func_start sub_08012C64
sub_08012C64: @ 0x08012C64
	ldr r1, _08012C78 @ =0xFFFFDFE0
	adds r0, r0, r1
	ldr r1, _08012C7C @ =gUnk_02026F08
	ldr r1, [r1]
	subs r0, r0, r1
	ldr r1, _08012C80 @ =0x56BE69C9
	muls r0, r1, r0
	asrs r0, r0, #3
	bx lr
	.align 2, 0
_08012C78: .4byte 0xFFFFDFE0
_08012C7C: .4byte gUnk_02026F08
_08012C80: .4byte 0x56BE69C9

	thumb_func_start sub_08012C84
sub_08012C84: @ 0x08012C84
	adds r1, r0, #0
	cmp r1, #0
	blt _08012C98
	ldr r0, _08012C9C @ =gUnk_02026F08
	ldr r2, [r0]
	ldr r3, _08012CA0 @ =0x0000201C
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r1, r0
	blt _08012CA4
_08012C98:
	movs r0, #0
	b _08012CB4
	.align 2, 0
_08012C9C: .4byte gUnk_02026F08
_08012CA0: .4byte 0x0000201C
_08012CA4:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08012CB8 @ =0x00002020
	adds r0, r0, r1
	adds r0, r2, r0
_08012CB4:
	bx lr
	.align 2, 0
_08012CB8: .4byte 0x00002020

	thumb_func_start sub_08012CBC
sub_08012CBC: @ 0x08012CBC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08011310
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08012CD0
sub_08012CD0: @ 0x08012CD0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	movs r0, #0
	str r0, [r5]
	ldrh r1, [r2, #2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08012D3E
	movs r6, #4
	adds r4, r2, #0
	adds r4, #0x14
	b _08012CF4
_08012CEE:
	ldr r0, [r5]
	cmp r0, #3
	bhi _08012D3E
_08012CF4:
	adds r0, r4, #4
	bl sub_08007910
	cmp r0, #0
	beq _08012D36
	adds r0, r4, #0
	adds r0, #0xb8
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xbc
	adds r2, r4, r0
	ldrh r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08012D36
	ldr r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r5, r0
	adds r1, r2, #0
	movs r2, #0x18
	bl memcpy2
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
_08012D36:
	adds r4, #0xec
	subs r6, #1
	cmp r6, #0
	bgt _08012CEE
_08012D3E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08012D44
sub_08012D44: @ 0x08012D44
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	movs r0, #0
	str r0, [r5]
	ldrh r1, [r2, #2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08012DA6
	movs r6, #4
	adds r4, r2, #0
	adds r4, #0x14
	b _08012D68
_08012D62:
	ldr r0, [r5]
	cmp r0, #3
	bhi _08012DA6
_08012D68:
	adds r0, r4, #4
	bl sub_08007910
	cmp r0, #0
	beq _08012D9E
	adds r0, r4, #0
	adds r0, #0xb8
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xbc
	adds r3, r4, r0
	ldrh r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08012D9E
	adds r0, r5, #0
	ldm r0!, {r2}
	lsls r1, r2, #2
	adds r0, r0, r1
	str r3, [r0]
	adds r2, #1
	str r2, [r5]
_08012D9E:
	adds r4, #0xec
	subs r6, #1
	cmp r6, #0
	bgt _08012D62
_08012DA6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08012DAC
sub_08012DAC: @ 0x08012DAC
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	movs r1, #0
	str r1, [r4]
	movs r6, #4
	adds r5, r0, #0
	adds r5, #0x14
	b _08012DC2
_08012DBC:
	ldr r0, [r4]
	cmp r0, #3
	bhi _08012DFC
_08012DC2:
	adds r0, r5, #4
	bl sub_08007910
	cmp r0, #0
	beq _08012DF4
	adds r0, r5, #0
	adds r0, #0xb8
	ldrb r0, [r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0xbc
	adds r1, r5, r1
	ldr r2, [r4]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r4, r0
	movs r2, #0x18
	bl memcpy2
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
_08012DF4:
	adds r5, #0xec
	subs r6, #1
	cmp r6, #0
	bgt _08012DBC
_08012DFC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08012E04
sub_08012E04: @ 0x08012E04
	adds r2, r0, #0
	cmp r1, #0
	beq _08012E18
	ldrh r1, [r2, #2]
	ldr r0, _08012E14 @ =0x00007FFF
	ands r0, r1
	b _08012E22
	.align 2, 0
_08012E14: .4byte 0x00007FFF
_08012E18:
	ldrh r1, [r2, #2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
_08012E22:
	strh r0, [r2, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08012E28
sub_08012E28: @ 0x08012E28
	ldrh r0, [r0, #2]
	lsrs r0, r0, #0xf
	movs r1, #1
	eors r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_08012E34
sub_08012E34: @ 0x08012E34
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
_08012E3A:
	movs r0, #0xec
	muls r0, r5, r0
	adds r0, r0, r6
	adds r4, r0, #0
	adds r4, #0x18
	adds r0, r4, #0
	bl sub_08007910
	cmp r0, #0
	beq _08012E6A
	adds r0, r4, #0
	bl sub_0800790C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _08012E6A
	adds r0, r4, #0
	bl sub_0800797C
	cmp r0, #0
	bne _08012E6A
	movs r0, #0
	b _08012E72
_08012E6A:
	adds r5, #1
	cmp r5, #3
	ble _08012E3A
	movs r0, #1
_08012E72:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08012E78
sub_08012E78: @ 0x08012E78
	push {r4, r5, lr}
	movs r5, #4
	adds r4, r0, #0
	adds r4, #0x14
_08012E80:
	adds r0, r4, #4
	bl sub_08007910
	cmp r0, #0
	beq _08012E98
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012E98
	movs r0, #1
	b _08012EA2
_08012E98:
	adds r4, #0xec
	subs r5, #1
	cmp r5, #0
	bgt _08012E80
	movs r0, #0
_08012EA2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08012EA8
sub_08012EA8: @ 0x08012EA8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
_08012EAE:
	movs r0, #0xec
	muls r0, r5, r0
	adds r0, r0, r6
	adds r4, r0, #0
	adds r4, #0x18
	adds r0, r4, #0
	bl sub_08007910
	cmp r0, #0
	beq _08012ED8
	adds r0, r4, #0
	bl sub_0800790C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _08012ED8
	adds r0, r4, #0
	movs r1, #1
	bl sub_08007984
_08012ED8:
	adds r5, #1
	cmp r5, #3
	ble _08012EAE
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08012EE4
sub_08012EE4: @ 0x08012EE4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
_08012EEA:
	movs r0, #0xec
	muls r0, r5, r0
	adds r0, r0, r6
	adds r4, r0, #0
	adds r4, #0x18
	adds r0, r4, #0
	bl sub_08007910
	cmp r0, #0
	beq _08012F14
	adds r0, r4, #0
	bl sub_0800790C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _08012F14
	adds r0, r4, #0
	movs r1, #0
	bl sub_08007984
_08012F14:
	adds r5, #1
	cmp r5, #3
	ble _08012EEA
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08012F20
sub_08012F20: @ 0x08012F20
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
_08012F26:
	movs r0, #0xec
	muls r0, r5, r0
	adds r0, r0, r6
	adds r4, r0, #0
	adds r4, #0x18
	adds r0, r4, #0
	bl sub_08007910
	cmp r0, #0
	beq _08012F4E
	adds r0, r4, #0
	bl sub_0800790C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _08012F4E
	adds r0, r4, #0
	bl sub_08007950
_08012F4E:
	adds r5, #1
	cmp r5, #3
	ble _08012F26
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08012F5C
sub_08012F5C: @ 0x08012F5C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
_08012F62:
	movs r0, #0xec
	muls r0, r5, r0
	adds r0, r0, r6
	adds r4, r0, #0
	adds r4, #0x18
	adds r0, r4, #0
	bl sub_08007910
	cmp r0, #0
	beq _08012F8A
	adds r0, r4, #0
	bl sub_0800790C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _08012F8A
	adds r0, r4, #0
	bl sub_0800795C
_08012F8A:
	adds r5, #1
	cmp r5, #3
	ble _08012F62
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08012F98
sub_08012F98: @ 0x08012F98
	push {lr}
	adds r0, #0x18
	bl sub_0800796C
	pop {r1}
	bx r1

	thumb_func_start sub_08012FA4
sub_08012FA4: @ 0x08012FA4
	push {lr}
	adds r0, #0x18
	bl sub_080079B8
	pop {r1}
	bx r1

	thumb_func_start sub_08012FB0
sub_08012FB0: @ 0x08012FB0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r0, _08013008 @ =gUnk_0815DDE0
	movs r1, #9
	bl sub_080079BC
	ldr r0, _0801300C @ =gUnk_02026F08
	ldr r0, [r0]
	str r4, [r0, #4]
	adds r5, r4, #0
	adds r5, #0x14
	movs r6, #4
_08012FCA:
	adds r4, r5, #4
	adds r0, r4, #0
	bl sub_08007910
	cmp r0, #0
	beq _08012FEC
	adds r0, r4, #0
	bl sub_0800790C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _08012FEC
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08007730
_08012FEC:
	adds r5, #0xec
	subs r6, #1
	cmp r6, #0
	bgt _08012FCA
	ldr r0, _0801300C @ =gUnk_02026F08
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1, #4]
	movs r1, #0
	bl sub_080079BC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013008: .4byte gUnk_0815DDE0
_0801300C: .4byte gUnk_02026F08

	thumb_func_start sub_08013010
sub_08013010: @ 0x08013010
	strb r1, [r0, #8]
	bx lr

	thumb_func_start sub_08013014
sub_08013014: @ 0x08013014
	ldrb r0, [r0, #8]
	bx lr

	thumb_func_start sub_08013018
sub_08013018: @ 0x08013018
	ldrb r0, [r0, #4]
	bx lr

	thumb_func_start sub_0801301C
sub_0801301C: @ 0x0801301C
	ldrh r0, [r0, #6]
	bx lr

	thumb_func_start sub_08013020
sub_08013020: @ 0x08013020
	ldrh r0, [r0, #0xa]
	bx lr

	thumb_func_start sub_08013024
sub_08013024: @ 0x08013024
	ldrh r0, [r0, #0xe]
	bx lr

	thumb_func_start sub_08013028
sub_08013028: @ 0x08013028
	push {lr}
	sub sp, #0xc
	adds r0, #0x18
	mov r1, sp
	bl sub_080078D0
	mov r0, sp
	movs r1, #8
	ldrsh r0, [r0, r1]
	add sp, #0xc
	pop {r1}
	bx r1

	thumb_func_start sub_08013040
sub_08013040: @ 0x08013040
	ldrh r2, [r0, #2]
	movs r1, #0x10
	orrs r1, r2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801304C
sub_0801304C: @ 0x0801304C
	push {lr}
	adds r0, #0x18
	bl sub_08007948
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_0801305C
sub_0801305C: @ 0x0801305C
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r6, r0, #0
	movs r5, #0
_08013066:
	movs r0, #0xec
	muls r0, r5, r0
	adds r0, r0, r6
	adds r4, r0, #0
	adds r4, #0x18
	adds r0, r4, #0
	bl sub_08007910
	cmp r0, #0
	beq _08013090
	adds r0, r4, #0
	bl sub_0800790C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _08013090
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0800794C
_08013090:
	adds r5, #1
	cmp r5, #3
	ble _08013066
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801309C
sub_0801309C: @ 0x0801309C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	adds r0, r2, #0
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	add r1, sp, #4
	mov r2, sp
	bl sub_08013D5C
	ldr r0, [sp, #4]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sp
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r3, r5, #0
	bl sub_08011CD0
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080130DC
sub_080130DC: @ 0x080130DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	mov r8, r0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r0, r3, #0
	ldr r5, [sp, #0x20]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	add r1, sp, #8
	add r2, sp, #4
	bl sub_08013D5C
	ldr r0, [sp, #8]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	ldrb r2, [r0]
	str r5, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_080120BC
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801312C
sub_0801312C: @ 0x0801312C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r0, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r1, sp, #4
	mov r2, sp
	bl sub_08013D5C
	ldr r0, [sp, #4]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sp
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r3, r5, #0
	bl sub_08012220
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801316C
sub_0801316C: @ 0x0801316C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r0, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r1, sp, #4
	mov r2, sp
	bl sub_08013D5C
	ldr r0, [sp, #4]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sp
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r3, r5, #0
	bl sub_0801231C
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080131AC
sub_080131AC: @ 0x080131AC
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r7, r0, #0
	ldrb r0, [r7, #0xc]
	cmp r0, r1
	beq _080131F6
	strb r1, [r7, #0xc]
	movs r6, #0
_080131BE:
	movs r0, #0xec
	muls r0, r6, r0
	adds r0, #0x14
	adds r5, r7, r0
	adds r4, r5, #4
	adds r0, r4, #0
	bl sub_08007910
	cmp r0, #0
	beq _080131F0
	adds r0, r4, #0
	bl sub_0800790C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	blt _080131F0
	cmp r0, #1
	ble _080131E8
	cmp r0, #5
	bne _080131F0
_080131E8:
	ldrh r1, [r5]
	movs r0, #2
	orrs r0, r1
	strh r0, [r5]
_080131F0:
	adds r6, #1
	cmp r6, #3
	ble _080131BE
_080131F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080131FC
sub_080131FC: @ 0x080131FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r1, #0
	mov sb, r2
	mov r8, r3
	adds r6, r0, #0
	movs r4, #0
_0801320E:
	movs r0, #0xec
	muls r0, r4, r0
	adds r0, r0, r6
	adds r0, #0x18
	bl sub_08007910
	cmp r0, #0
	bne _08013222
	adds r5, r4, #0
	b _0801322C
_08013222:
	adds r4, #1
	cmp r4, #3
	bls _0801320E
	movs r5, #1
	rsbs r5, r5, #0
_0801322C:
	movs r0, #0xec
	adds r4, r5, #0
	muls r4, r0, r4
	adds r4, #0x14
	adds r4, r6, r4
	adds r0, r4, #0
	movs r1, #0xec
	bl memzero
	adds r0, r4, #4
	movs r1, #8
	adds r2, r7, #0
	bl sub_0800789C
	adds r1, r4, #0
	adds r1, #0x30
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x31
	strb r5, [r0]
	movs r0, #1
	strh r0, [r4, #0x32]
	mov r0, r8
	str r0, [r4, #0x28]
	mov r0, sb
	str r0, [r4, #0x2c]
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08013270
sub_08013270: @ 0x08013270
	push {r4, r5, lr}
	movs r2, #0xec
	muls r1, r2, r1
	adds r1, #0x14
	adds r5, r0, r1
	adds r4, r5, #4
	adds r0, r4, #0
	bl sub_08007910
	cmp r0, #0
	beq _0801328C
	adds r0, r4, #0
	bl sub_080078C4
_0801328C:
	adds r0, r5, #0
	movs r1, #0xec
	bl memzero
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801329C
sub_0801329C: @ 0x0801329C
	movs r2, #0xec
	muls r1, r2, r1
	adds r1, r1, r0
	adds r1, #0x18
	adds r0, r1, #0
	bx lr

	thumb_func_start sub_080132A8
sub_080132A8: @ 0x080132A8
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	adds r6, r0, #0
	movs r5, #0
_080132B2:
	movs r0, #0xec
	muls r0, r5, r0
	adds r0, r0, r6
	adds r4, r0, #0
	adds r4, #0x18
	adds r0, r4, #0
	bl sub_08007910
	cmp r0, #0
	beq _080132D8
	adds r0, r4, #0
	bl sub_0800790C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r7
	bne _080132D8
	adds r0, r4, #0
	b _080132E0
_080132D8:
	adds r5, #1
	cmp r5, #3
	ble _080132B2
	movs r0, #0
_080132E0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080132E8
sub_080132E8: @ 0x080132E8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r5, #0x14
	movs r6, #4
_080132F0:
	adds r4, r5, #4
	adds r0, r4, #0
	bl sub_08007910
	cmp r0, #0
	beq _08013312
	adds r0, r4, #0
	bl sub_0800790C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _08013312
	ldrh r1, [r5]
	movs r0, #2
	orrs r0, r1
	strh r0, [r5]
_08013312:
	adds r5, #0xec
	subs r6, #1
	cmp r6, #0
	bgt _080132F0
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08013320
sub_08013320: @ 0x08013320
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	adds r0, #0x18
	add r1, sp, #4
	bl sub_080078D0
	add r0, sp, #4
	ldrh r4, [r0, #8]
	ldrh r0, [r5, #6]
	bl sub_08013804
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrb r2, [r5, #0xc]
	str r6, [sp]
	adds r1, r4, #0
	mov r3, r8
	bl sub_080138BC
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0801335C
sub_0801335C: @ 0x0801335C
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08013370 @ =0x000027E8
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08013370: .4byte 0x000027E8

	thumb_func_start sub_08013374
sub_08013374: @ 0x08013374
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	mov r8, r0
	adds r5, r1, #0
	mov sb, r2
	mov sl, r3
	lsls r4, r5, #4
	subs r4, r4, r5
	lsls r4, r4, #3
	adds r4, r4, r5
	lsls r4, r4, #3
	ldr r0, _080133D0 @ =0x000023E8
	adds r4, r4, r0
	ldr r6, _080133D4 @ =gUnk_02026F08
	mov r0, r8
	adds r1, r4, #0
	bl sub_080048D4
	str r0, [r6]
	adds r1, r4, #0
	bl memzero
	ldr r0, [r6]
	mov r1, r8
	str r1, [r0]
	ldr r2, _080133D8 @ =0x0000201C
	adds r1, r0, r2
	str r5, [r1]
	subs r2, #8
	adds r1, r0, r2
	mov r2, sb
	str r2, [r1]
	ldr r1, _080133DC @ =0x00002018
	adds r0, r0, r1
	mov r2, sl
	str r2, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080133D0: .4byte 0x000023E8
_080133D4: .4byte gUnk_02026F08
_080133D8: .4byte 0x0000201C
_080133DC: .4byte 0x00002018

	thumb_func_start sub_080133E0
sub_080133E0: @ 0x080133E0
	push {r4, lr}
	ldr r4, _080133F8 @ =gUnk_02026F08
	ldr r1, [r4]
	ldr r0, [r1]
	bl sub_0800490C
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080133F8: .4byte gUnk_02026F08

	thumb_func_start sub_080133FC
sub_080133FC: @ 0x080133FC
	push {r4, lr}
	ldr r2, _08013414 @ =gUnk_02026F08
	ldr r2, [r2]
	ldr r4, _08013418 @ =0x00002014
	adds r3, r2, r4
	str r0, [r3]
	ldr r0, _0801341C @ =0x00002018
	adds r2, r2, r0
	str r1, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013414: .4byte gUnk_02026F08
_08013418: .4byte 0x00002014
_0801341C: .4byte 0x00002018

	thumb_func_start sub_08013420
sub_08013420: @ 0x08013420
	bx lr
	.align 2, 0

	thumb_func_start sub_08013424
sub_08013424: @ 0x08013424
	bx lr
	.align 2, 0

	thumb_func_start sub_08013428
sub_08013428: @ 0x08013428
	adds r1, r0, #0
	cmp r1, #0
	blt _0801343C
	ldr r0, _08013440 @ =gUnk_02026F08
	ldr r2, [r0]
	ldr r3, _08013444 @ =0x0000201C
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r1, r0
	blt _08013448
_0801343C:
	movs r0, #0
	b _08013458
	.align 2, 0
_08013440: .4byte gUnk_02026F08
_08013444: .4byte 0x0000201C
_08013448:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0801345C @ =0x00002020
	adds r0, r0, r1
	adds r0, r2, r0
_08013458:
	bx lr
	.align 2, 0
_0801345C: .4byte 0x00002020

	thumb_func_start sub_08013460
sub_08013460: @ 0x08013460
	cmp r0, #0
	beq _08013484
	ldr r2, _08013478 @ =0xFFFFDFE0
	adds r1, r0, r2
	ldr r0, _0801347C @ =gUnk_02026F08
	ldr r0, [r0]
	subs r1, r1, r0
	ldr r0, _08013480 @ =0x56BE69C9
	muls r0, r1, r0
	asrs r0, r0, #3
	b _08013488
	.align 2, 0
_08013478: .4byte 0xFFFFDFE0
_0801347C: .4byte gUnk_02026F08
_08013480: .4byte 0x56BE69C9
_08013484:
	movs r0, #1
	rsbs r0, r0, #0
_08013488:
	bx lr
	.align 2, 0

	thumb_func_start sub_0801348C
sub_0801348C: @ 0x0801348C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080134B8 @ =gUnk_02026F08
	ldr r1, [r1]
	ldr r3, [r1, #4]
	cmp r0, #8
	bne _080134B4
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	lsls r2, r0, #8
	orrs r2, r1
	ldrh r1, [r3, #2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080134B4
	adds r0, r2, #0
	bl sub_08145120
_080134B4:
	pop {r0}
	bx r0
	.align 2, 0
_080134B8: .4byte gUnk_02026F08

	thumb_func_start sub_080134BC
sub_080134BC: @ 0x080134BC
	ldrb r0, [r0, #0xc]
	bx lr

	thumb_func_start sub_080134C0
sub_080134C0: @ 0x080134C0
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r4, [r0, #0x1c]
	movs r6, #0
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r2, r3, #1
	b _08013504
_080134DC:
	cmp r3, r6
	bhi _080134E2
_080134E0:
	b _080134E0
_080134E2:
	lsls r0, r2, #4
	adds r0, r4, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r5, r0
	bhs _080134FA
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _08013500
_080134FA:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08013500:
	adds r0, r6, r3
	lsrs r2, r0, #1
_08013504:
	lsls r0, r2, #4
	adds r0, r4, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, r5
	bne _080134DC
	lsls r0, r2, #4
	adds r0, r4, r0
	ldrb r1, [r0, #4]
	ldrb r0, [r0, #5]
	lsls r0, r0, #8
	orrs r0, r1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08013528
sub_08013528: @ 0x08013528
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r2, #0
	mov r8, r3
	ldr r2, [sp, #0x24]
	mov sb, r2
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov ip, r0
	ldr r5, [r0, #0x1c]
	movs r6, #0
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	lsls r0, r0, #8
	orrs r0, r1
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsrs r4, r2, #1
	b _0801357E
_08013556:
	cmp r2, r6
	bhi _0801355C
_0801355A:
	b _0801355A
_0801355C:
	lsls r0, r4, #4
	adds r0, r5, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r3, r0
	bhs _08013574
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _0801357A
_08013574:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0801357A:
	adds r0, r6, r2
	lsrs r4, r0, #1
_0801357E:
	lsls r0, r4, #4
	adds r0, r5, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, r3
	bne _08013556
	adds r6, r4, #0
	mov r3, sp
	lsls r4, r6, #4
	adds r1, r5, r4
	ldrb r2, [r1, #0xa]
	ldrb r0, [r1, #0xb]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r3]
	ldrb r2, [r1, #0xc]
	ldrb r0, [r1, #0xd]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r3, #2]
	ldrb r2, [r1, #0xe]
	ldrb r0, [r1, #0xf]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r3, #4]
	ldrb r2, [r1, #0x10]
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r3, #6]
	adds r0, r5, #6
	adds r0, r0, r4
	ldrb r0, [r0]
	mov r1, sb
	strh r0, [r1]
	adds r0, r5, #7
	adds r0, r0, r4
	ldrb r0, [r0]
	strh r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #8
	adds r0, r0, r4
	ldrb r0, [r0]
	strh r0, [r1, #4]
	adds r0, r5, #0
	adds r0, #9
	adds r0, r0, r4
	ldrb r0, [r0]
	strh r0, [r1, #6]
	movs r3, #0
	ldr r4, _080135FC @ =0x0000FFFF
_080135E8:
	lsls r0, r3, #1
	mov r2, sp
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, r4
	bne _08013600
	lsls r0, r3, #2
	adds r0, r0, r7
	movs r1, #0
	b _08013620
	.align 2, 0
_080135FC: .4byte 0x0000FFFF
_08013600:
	ldrh r2, [r1]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #0
	bge _08013614
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0, #4]
	b _0801361A
_08013614:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0, #4]
_0801361A:
	adds r1, r1, r0
	lsls r0, r3, #2
	adds r0, r0, r7
_08013620:
	str r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _080135E8
	movs r3, #0
	lsls r4, r6, #4
	ldr r6, _08013648 @ =0x0000FFFF
_08013632:
	lsls r0, r3, #1
	mov r2, sp
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, r6
	bne _0801364C
	lsls r0, r3, #2
	add r0, r8
	movs r1, #0
	b _0801366C
	.align 2, 0
_08013648: .4byte 0x0000FFFF
_0801364C:
	ldrh r2, [r1]
	mov r0, ip
	ldr r1, [r0, #4]
	ldr r0, [r1]
	cmp r0, #0
	bge _08013660
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0, #4]
	b _08013666
_08013660:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0, #4]
_08013666:
	adds r1, r1, r0
	lsls r0, r3, #2
	add r0, r8
_0801366C:
	str r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08013632
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	ldrb r0, [r0, #5]
	lsls r0, r0, #8
	orrs r0, r1
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08013690
sub_08013690: @ 0x08013690
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r0, r0, #0x10
	rsbs r0, r0, #0
	asrs r2, r0, #0x10
	subs r0, r2, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb
	bhi _080136B0
	ldr r1, _080136AC @ =gUnk_085F7FB0
	movs r3, #4
	b _080136E2
	.align 2, 0
_080136AC: .4byte gUnk_085F7FB0
_080136B0:
	adds r0, r2, #0
	subs r0, #0xe
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb
	bhi _080136D6
	ldr r1, _080136C4 @ =gUnk_085F8020
	movs r3, #2
	b _080136E2
	.align 2, 0
_080136C4: .4byte gUnk_085F8020
_080136C8:
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r1, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	b _080136FA
_080136D6:
	ldr r1, _08013700 @ =gUnk_085F8058
	movs r3, #2
	adds r0, r2, #0
	subs r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080136E2:
	movs r2, #0
	cmp r2, r3
	bge _080136F6
_080136E8:
	ldrb r5, [r1]
	cmp r4, r5
	beq _080136C8
	adds r1, #0x1c
	adds r2, #1
	cmp r2, r3
	blt _080136E8
_080136F6:
	movs r0, #1
	rsbs r0, r0, #0
_080136FA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08013700: .4byte gUnk_085F8058

	thumb_func_start sub_08013704
sub_08013704: @ 0x08013704
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r5, [sp, #0x20]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r1, #0
	strh r0, [r5, #4]
	strh r0, [r5, #2]
	strh r0, [r5]
	cmp r4, #0x4f
	beq _08013738
	cmp r4, #0x55
	beq _08013748
	b _08013752
_08013738:
	ldr r0, _08013744 @ =gUnk_0860CFEC
	lsls r1, r3, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r5]
	b _080137E4
	.align 2, 0
_08013744: .4byte gUnk_0860CFEC
_08013748:
	ldr r0, _080137F4 @ =gUnk_0860D014
	lsls r1, r3, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r5]
_08013752:
	cmp r4, #0x53
	bhi _080137E4
	ldr r1, _080137F8 @ =gUnk_085F7F08
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, _080137FC @ =gUnk_085F8090
	lsls r1, r6, #2
	adds r1, r1, r0
	lsls r0, r3, #1
	adds r0, r0, r3
	ldr r1, [r1]
	adds r4, r1, r0
	ldr r0, _08013800 @ =gUnk_085F80C4
	mov sb, r0
	lsls r6, r2, #1
	movs r1, #0x6e
	mov r8, r1
	mov r0, r8
	muls r0, r4, r0
	adds r0, r6, r0
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #1
	rsbs r7, r7, #0
	cmp r0, r7
	bge _0801379C
	movs r1, #0
	ldrsh r0, [r5, r1]
	mov r1, sl
	bl sub_08013690
	strh r0, [r5]
_0801379C:
	adds r0, r4, #1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r6, r0
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	bge _080137C0
	movs r1, #2
	ldrsh r0, [r5, r1]
	mov r1, sl
	bl sub_08013690
	strh r0, [r5, #2]
_080137C0:
	adds r0, r4, #2
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r6, r0
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	bge _080137E4
	movs r1, #4
	ldrsh r0, [r5, r1]
	mov r1, sl
	bl sub_08013690
	strh r0, [r5, #4]
_080137E4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080137F4: .4byte gUnk_0860D014
_080137F8: .4byte gUnk_085F7F08
_080137FC: .4byte gUnk_085F8090
_08013800: .4byte gUnk_085F80C4

	thumb_func_start sub_08013804
sub_08013804: @ 0x08013804
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x73
	bls _0801380E
	movs r0, #1
_0801380E:
	lsls r0, r0, #5
	ldr r1, _08013818 @ =gUnk_08318B04
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08013818: .4byte gUnk_08318B04

	thumb_func_start sub_0801381C
sub_0801381C: @ 0x0801381C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x73
	bls _08013826
	movs r1, #1
_08013826:
	ldr r0, _08013830 @ =gUnk_08319984
	adds r0, r1, r0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08013830: .4byte gUnk_08319984

	thumb_func_start sub_08013834
sub_08013834: @ 0x08013834
	ldr r0, [r0, #8]
	str r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801383C
sub_0801383C: @ 0x0801383C
	cmp r2, #0
	bne _08013844
	ldr r2, [r0, #0xc]
	b _08013846
_08013844:
	ldr r2, [r0, #0x10]
_08013846:
	ldr r0, [r2]
	cmp r0, #0
	bge _08013854
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0, #4]
	b _0801385A
_08013854:
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0, #4]
_0801385A:
	adds r0, r2, r0
	str r0, [r3]
	bx lr

	thumb_func_start sub_08013860
sub_08013860: @ 0x08013860
	cmp r2, #0
	bne _08013868
	ldr r2, [r0, #0x14]
	b _0801386A
_08013868:
	ldr r2, [r0, #0x18]
_0801386A:
	ldr r0, [r2]
	cmp r0, #0
	bge _08013878
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0, #4]
	b _0801387E
_08013878:
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0, #4]
_0801387E:
	adds r0, r2, r0
	str r0, [r3]
	bx lr

	thumb_func_start sub_08013884
sub_08013884: @ 0x08013884
	sub sp, #4
	mov r3, sp
	cmp r2, #0
	bne _08013890
	ldr r2, [r0, #0x14]
	b _08013892
_08013890:
	ldr r2, [r0, #0x18]
_08013892:
	ldr r0, [r2]
	cmp r0, #0
	bge _080138A0
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0, #4]
	b _080138A6
_080138A0:
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0, #4]
_080138A6:
	adds r0, r2, r0
	str r0, [r3]
	ldr r0, [sp]
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #5
	add sp, #4
	bx lr
	.align 2, 0

	thumb_func_start sub_080138BC
sub_080138BC: @ 0x080138BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	mov ip, r3
	ldr r0, [sp, #0x20]
	mov sb, r0
	mov r3, sp
	cmp r2, #0
	bne _080138D8
	ldr r2, [r4, #0x14]
	b _080138DA
_080138D8:
	ldr r2, [r4, #0x18]
_080138DA:
	ldr r0, [r2]
	cmp r0, #0
	bge _080138E8
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0, #4]
	b _080138EE
_080138E8:
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0, #4]
_080138EE:
	adds r0, r2, r0
	str r0, [r3]
	ldr r4, [r4, #8]
	mov r8, r4
	movs r5, #0
	movs r6, #0
	ldr r2, [sp]
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r5, r0
	bhs _08013950
_08013908:
	lsls r0, r6, #1
	adds r0, r2, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r2, r0, #5
	adds r4, r2, #0
	adds r4, #0x20
	ldr r7, [sp]
	adds r6, #1
	cmp r2, r4
	bhs _0801393E
	cmp r5, ip
	bhs _0801393E
	mov r3, r8
_08013928:
	mov r1, sb
	adds r0, r1, r5
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r5, #1
	adds r2, #1
	cmp r2, r4
	bhs _0801393E
	cmp r5, ip
	blo _08013928
_0801393E:
	lsls r0, r6, #0x10
	lsrs r6, r0, #0x10
	adds r2, r7, #0
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r6, r0
	blo _08013908
_08013950:
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08013960
sub_08013960: @ 0x08013960
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08013D98
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08013984 @ =gUnk_083199F8
	adds r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_08013984: .4byte gUnk_083199F8

	thumb_func_start sub_08013988
sub_08013988: @ 0x08013988
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08013D98
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080139B0 @ =gUnk_08319B10
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _080139B4
	adds r0, r1, #0
	b _080139B6
	.align 2, 0
_080139B0: .4byte gUnk_08319B10
_080139B4:
	movs r0, #0
_080139B6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080139BC
sub_080139BC: @ 0x080139BC
	ldr r0, [r0, #8]
	str r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_080139C4
sub_080139C4: @ 0x080139C4
	push {r4, r5, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	adds r2, r0, #0
	ldr r1, [r2]
	ldr r0, [r1]
	cmp r0, #0
	bge _080139E0
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0, #4]
	b _080139E6
_080139E0:
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r0, [r0, #4]
_080139E6:
	adds r0, r1, r0
	str r0, [r4]
	ldr r2, [r2, #4]
	ldr r0, [r2]
	cmp r0, #0
	bge _080139FA
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0, #4]
	b _08013A00
_080139FA:
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0, #4]
_08013A00:
	adds r0, r2, r0
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08013A0C
sub_08013A0C: @ 0x08013A0C
	ldr r3, [r0, #0xc]
	ldr r0, [r3]
	cmp r0, #0
	bge _08013A1C
	lsls r0, r1, #2
	adds r0, r0, r3
	ldr r0, [r0, #4]
	b _08013A22
_08013A1C:
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r0, [r0, #4]
_08013A22:
	adds r0, r3, r0
	str r0, [r2]
	bx lr

	thumb_func_start sub_08013A28
sub_08013A28: @ 0x08013A28
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	mov r8, r1
	adds r4, r2, #0
	adds r1, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0xc]
	ldrh r5, [r0]
	adds r0, r4, #0
	bl sub_08013DE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r4, r4, r0
	adds r0, r4, #0
	muls r0, r5, r0
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, [r6, #0x10]
	ldr r0, [r1]
	cmp r0, #0
	bge _08013A68
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0, #4]
	b _08013A6E
_08013A68:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0, #4]
_08013A6E:
	adds r1, r1, r0
	ldr r0, [sp, #0x14]
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08013A80
sub_08013A80: @ 0x08013A80
	ldr r3, [r0, #0x10]
	ldr r0, [r3]
	cmp r0, #0
	bge _08013A90
	lsls r0, r1, #2
	adds r0, r0, r3
	ldr r0, [r0, #4]
	b _08013A96
_08013A90:
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r0, [r0, #4]
_08013A96:
	adds r0, r3, r0
	str r0, [r2]
	bx lr

	thumb_func_start sub_08013A9C
sub_08013A9C: @ 0x08013A9C
	push {r4, r5, lr}
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r1, #0
	ldr r4, _08013ABC @ =gUnk_084CA9D0
	lsrs r3, r0, #0xe
	cmp r1, #0x11
	beq _08013ACA
	cmp r1, #0x11
	bgt _08013AC0
	cmp r1, #0x10
	beq _08013AD8
	b _08013AD6
	.align 2, 0
_08013ABC: .4byte gUnk_084CA9D0
_08013AC0:
	cmp r2, #0x12
	beq _08013ACE
	cmp r2, #0x13
	beq _08013AD2
	b _08013AD6
_08013ACA:
	adds r3, #1
	b _08013AD8
_08013ACE:
	adds r3, #2
	b _08013AD8
_08013AD2:
	adds r3, #3
	b _08013AD8
_08013AD6:
	b _08013AD6
_08013AD8:
	ldr r0, [r4]
	cmp r0, #0
	bge _08013AE6
	lsls r0, r3, #2
	adds r0, r0, r4
	ldr r0, [r0, #4]
	b _08013AEC
_08013AE6:
	lsls r0, r3, #1
	adds r0, r0, r4
	ldrh r0, [r0, #4]
_08013AEC:
	adds r0, r4, r0
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08013AF8
sub_08013AF8: @ 0x08013AF8
	adds r2, r0, #0
	ldr r1, _08013B08 @ =gUnk_084D241C
	ldr r0, [r1]
	cmp r0, #0
	bge _08013B0C
	ldr r0, [r1, #4]
	b _08013B0E
	.align 2, 0
_08013B08: .4byte gUnk_084D241C
_08013B0C:
	ldrh r0, [r1, #4]
_08013B0E:
	adds r0, r1, r0
	str r0, [r2]
	bx lr

	thumb_func_start sub_08013B14
sub_08013B14: @ 0x08013B14
	ldr r1, _08013B1C @ =gUnk_08319C28
	ldr r1, [r1, #8]
	str r1, [r0]
	bx lr
	.align 2, 0
_08013B1C: .4byte gUnk_08319C28

	thumb_func_start sub_08013B20
sub_08013B20: @ 0x08013B20
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r6, r3, #0
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, r1, #0
	ldr r5, _08013B40 @ =gUnk_08319C28
	lsrs r2, r0, #0xe
	cmp r1, #0x11
	beq _08013B4E
	cmp r1, #0x11
	bgt _08013B44
	cmp r1, #0x10
	beq _08013B5C
	b _08013B5A
	.align 2, 0
_08013B40: .4byte gUnk_08319C28
_08013B44:
	cmp r3, #0x12
	beq _08013B52
	cmp r3, #0x13
	beq _08013B56
	b _08013B5A
_08013B4E:
	adds r2, #1
	b _08013B5C
_08013B52:
	adds r2, #2
	b _08013B5C
_08013B56:
	adds r2, #3
	b _08013B5C
_08013B5A:
	b _08013B5A
_08013B5C:
	ldr r1, [r5]
	ldr r0, [r1]
	cmp r0, #0
	bge _08013B6C
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0, #4]
	b _08013B72
_08013B6C:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0, #4]
_08013B72:
	adds r0, r1, r0
	str r0, [r4]
	ldr r1, [r5, #4]
	ldr r0, [r1]
	cmp r0, #0
	bge _08013B86
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0, #4]
	b _08013B8C
_08013B86:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0, #4]
_08013B8C:
	adds r0, r1, r0
	str r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08013B98
sub_08013B98: @ 0x08013B98
	adds r3, r0, #0
	ldr r0, _08013BAC @ =gUnk_08319C28
	ldr r2, [r0, #0xc]
	ldr r0, [r2]
	cmp r0, #0
	bge _08013BB0
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0, #4]
	b _08013BB6
	.align 2, 0
_08013BAC: .4byte gUnk_08319C28
_08013BB0:
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0, #4]
_08013BB6:
	adds r0, r2, r0
	str r0, [r1]
	bx lr

	thumb_func_start sub_08013BBC
sub_08013BBC: @ 0x08013BBC
	push {r4, lr}
	adds r4, r2, #0
	ldr r3, _08013BE0 @ =gUnk_08319C28
	ldr r2, [r3, #0xc]
	ldrh r2, [r2]
	muls r1, r2, r1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, [r3, #0x10]
	ldr r0, [r1]
	cmp r0, #0
	bge _08013BE4
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0, #4]
	b _08013BEA
	.align 2, 0
_08013BE0: .4byte gUnk_08319C28
_08013BE4:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0, #4]
_08013BEA:
	adds r0, r1, r0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08013BF4
sub_08013BF4: @ 0x08013BF4
	ldr r1, _08013BFC @ =gUnk_08319C3C
	ldr r1, [r1, #8]
	str r1, [r0]
	bx lr
	.align 2, 0
_08013BFC: .4byte gUnk_08319C3C

	thumb_func_start sub_08013C00
sub_08013C00: @ 0x08013C00
	push {r4, r5, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08013C1C @ =gUnk_08319C3C
	lsrs r2, r0, #0xf
	cmp r1, #0x14
	beq _08013C22
	cmp r1, #0x15
	bne _08013C20
	adds r2, #1
	b _08013C22
	.align 2, 0
_08013C1C: .4byte gUnk_08319C3C
_08013C20:
	b _08013C20
_08013C22:
	ldr r1, [r3]
	ldr r0, [r1]
	cmp r0, #0
	bge _08013C32
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0, #4]
	b _08013C38
_08013C32:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0, #4]
_08013C38:
	adds r0, r1, r0
	str r0, [r4]
	ldr r1, [r3, #4]
	ldr r0, [r1]
	cmp r0, #0
	bge _08013C4C
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0, #4]
	b _08013C52
_08013C4C:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0, #4]
_08013C52:
	adds r0, r1, r0
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08013C5C
sub_08013C5C: @ 0x08013C5C
	adds r3, r0, #0
	ldr r0, _08013C70 @ =gUnk_08319C3C
	ldr r2, [r0, #0xc]
	ldr r0, [r2]
	cmp r0, #0
	bge _08013C74
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0, #4]
	b _08013C7A
	.align 2, 0
_08013C70: .4byte gUnk_08319C3C
_08013C74:
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0, #4]
_08013C7A:
	adds r0, r2, r0
	str r0, [r1]
	bx lr

	thumb_func_start sub_08013C80
sub_08013C80: @ 0x08013C80
	adds r3, r0, #0
	ldr r0, _08013C94 @ =gUnk_08319C3C
	ldr r2, [r0, #0x10]
	ldr r0, [r2]
	cmp r0, #0
	bge _08013C98
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0, #4]
	b _08013C9E
	.align 2, 0
_08013C94: .4byte gUnk_08319C3C
_08013C98:
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0, #4]
_08013C9E:
	adds r0, r2, r0
	str r0, [r1]
	bx lr

	thumb_func_start sub_08013CA4
sub_08013CA4: @ 0x08013CA4
	ldr r1, _08013CAC @ =gUnk_08319C50
	ldr r1, [r1, #8]
	str r1, [r0]
	bx lr
	.align 2, 0
_08013CAC: .4byte gUnk_08319C50

	thumb_func_start sub_08013CB0
sub_08013CB0: @ 0x08013CB0
	push {r4, r5, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08013CD4 @ =gUnk_08319C50
	lsrs r2, r0, #0xf
	movs r0, #0xe9
	lsls r0, r0, #2
	cmp r1, r0
	beq _08013CDA
	adds r0, #1
	cmp r1, r0
	bne _08013CD8
	adds r2, #1
	b _08013CDA
	.align 2, 0
_08013CD4: .4byte gUnk_08319C50
_08013CD8:
	b _08013CD8
_08013CDA:
	ldr r1, [r3]
	ldr r0, [r1]
	cmp r0, #0
	bge _08013CEA
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0, #4]
	b _08013CF0
_08013CEA:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0, #4]
_08013CF0:
	adds r0, r1, r0
	str r0, [r4]
	ldr r1, [r3, #4]
	ldr r0, [r1]
	cmp r0, #0
	bge _08013D04
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0, #4]
	b _08013D0A
_08013D04:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0, #4]
_08013D0A:
	adds r0, r1, r0
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08013D14
sub_08013D14: @ 0x08013D14
	adds r3, r0, #0
	ldr r0, _08013D28 @ =gUnk_08319C50
	ldr r2, [r0, #0xc]
	ldr r0, [r2]
	cmp r0, #0
	bge _08013D2C
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0, #4]
	b _08013D32
	.align 2, 0
_08013D28: .4byte gUnk_08319C50
_08013D2C:
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0, #4]
_08013D32:
	adds r0, r2, r0
	str r0, [r1]
	bx lr

	thumb_func_start sub_08013D38
sub_08013D38: @ 0x08013D38
	adds r3, r0, #0
	ldr r0, _08013D4C @ =gUnk_08319C50
	ldr r2, [r0, #0x10]
	ldr r0, [r2]
	cmp r0, #0
	bge _08013D50
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0, #4]
	b _08013D56
	.align 2, 0
_08013D4C: .4byte gUnk_08319C50
_08013D50:
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0, #4]
_08013D56:
	adds r0, r2, r0
	str r0, [r1]
	bx lr

	thumb_func_start sub_08013D5C
sub_08013D5C: @ 0x08013D5C
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	beq _08013D7E
	cmp r3, #1
	bgt _08013D6E
	cmp r3, #0
	beq _08013D78
	b _08013D94
_08013D6E:
	cmp r3, #2
	beq _08013D86
	cmp r3, #3
	beq _08013D8E
	b _08013D94
_08013D78:
	str r3, [r1]
	strb r3, [r2]
	b _08013D94
_08013D7E:
	movs r0, #0
	str r0, [r1]
	strb r3, [r2]
	b _08013D94
_08013D86:
	movs r0, #1
	str r0, [r1]
	movs r0, #0
	b _08013D92
_08013D8E:
	movs r0, #1
	str r0, [r1]
_08013D92:
	strb r0, [r2]
_08013D94:
	bx lr
	.align 2, 0

	thumb_func_start sub_08013D98
sub_08013D98: @ 0x08013D98
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	adds r4, r2, #0
	cmp r0, #0
	bne _08013DAE
	movs r0, #0
	b _08013DE2
_08013DAE:
	movs r1, #3
	bl sub_081437AC
	cmp r0, #0xb
	bls _08013DBC
	movs r0, #0xd
	b _08013DE2
_08013DBC:
	cmp r0, #0xa
	bne _08013DDC
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	bl sub_081437AC
	cmp r0, #3
	beq _08013DD4
	cmp r0, #4
	beq _08013DD8
	b _08013DE0
_08013DD4:
	movs r6, #0xa
	b _08013DE0
_08013DD8:
	movs r6, #0xc
	b _08013DE0
_08013DDC:
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08013DE0:
	adds r0, r6, #0
_08013DE2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08013DE8
sub_08013DE8: @ 0x08013DE8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	adds r4, r2, #0
	ldr r7, _08013E00 @ =gUnk_0815DE04
	cmp r0, #0
	bne _08013E04
	movs r0, #0
	b _08013E38
	.align 2, 0
_08013E00: .4byte gUnk_0815DE04
_08013E04:
	movs r1, #3
	bl sub_081437AC
	cmp r0, #0xb
	bls _08013E12
	movs r0, #0xd
	b _08013E38
_08013E12:
	cmp r0, #0xa
	bne _08013E32
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	bl sub_081437AC
	cmp r0, #3
	beq _08013E2A
	cmp r0, #4
	beq _08013E2E
	b _08013E36
_08013E2A:
	movs r6, #0xa
	b _08013E36
_08013E2E:
	movs r6, #0xc
	b _08013E36
_08013E32:
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08013E36:
	adds r0, r6, #0
_08013E38:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r7, r0
	ldrh r0, [r0]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08013E48
sub_08013E48: @ 0x08013E48
	lsls r0, r0, #0x18
	ldr r1, _08013E54 @ =gUnk_0815DE04
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08013E54: .4byte gUnk_0815DE04

	thumb_func_start sub_08013E58
sub_08013E58: @ 0x08013E58
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r6, #0
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r2, r3, #1
	b _08013E9C
_08013E74:
	cmp r3, r6
	bhi _08013E7A
_08013E78:
	b _08013E78
_08013E7A:
	lsls r0, r2, #4
	adds r0, r4, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r5, r0
	bhs _08013E92
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _08013E98
_08013E92:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08013E98:
	adds r0, r6, r3
	lsrs r2, r0, #1
_08013E9C:
	lsls r0, r2, #4
	adds r0, r4, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, r5
	bne _08013E74
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08013EB4
sub_08013EB4: @ 0x08013EB4
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_08013EB8
sub_08013EB8: @ 0x08013EB8
	adds r2, r0, #0
	ldr r0, [r2]
	cmp r0, #0
	bge _08013EC8
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0, #4]
	b _08013ECE
_08013EC8:
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0, #4]
_08013ECE:
	bx lr

	thumb_func_start sub_08013ED0
sub_08013ED0: @ 0x08013ED0
	adds r2, r0, #0
	ldr r0, [r2]
	cmp r0, #0
	bge _08013EE0
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0, #4]
	b _08013EE6
_08013EE0:
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0, #4]
_08013EE6:
	adds r0, r2, r0
	bx lr
	.align 2, 0

	thumb_func_start sub_08013EEC
sub_08013EEC: @ 0x08013EEC
	adds r1, r0, #0
	cmp r1, #0
	beq _08013F0C
	movs r3, #0
	b _08013F02
_08013EF6:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #1
	cmp r3, #7
	bhi _08013F08
_08013F02:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08013EF6
_08013F08:
	cmp r3, #8
	bne _08013F10
_08013F0C:
	movs r0, #0
	b _08013F48
_08013F10:
	movs r2, #7
	ldrb r0, [r1, #7]
	cmp r0, #0
	bne _08013F2A
_08013F18:
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08013F2A
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013F18
_08013F2A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0
	cmp r3, r2
	bhs _08013F46
_08013F36:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r2
	blo _08013F36
_08013F46:
	adds r0, r1, #0
_08013F48:
	bx lr
	.align 2, 0

	thumb_func_start sub_08013F4C
sub_08013F4C: @ 0x08013F4C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	movs r6, #0
_08013F56:
	ldrb r0, [r4]
	adds r1, r0, #0
	adds r4, #1
	cmp r0, #0x80
	bne _08013F70
	ldrb r1, [r4]
	lsls r1, r1, #4
	ldr r0, _08013F6C @ =gUnk_02002800
	adds r1, r1, r0
	adds r4, #1
	b _08013F80
	.align 2, 0
_08013F6C: .4byte gUnk_02002800
_08013F70:
	cmp r0, #0x87
	bne _08013FA0
	ldr r1, _08013F9C @ =gUnk_086254D8
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r4, #1
	ldr r1, [r0]
_08013F80:
	adds r0, r5, #0
	adds r2, r7, #0
	bl sub_08013F4C
	lsls r0, r0, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	adds r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	b _08013FB6
	.align 2, 0
_08013F9C: .4byte gUnk_086254D8
_08013FA0:
	strb r1, [r5]
	adds r5, #1
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r1, #0xff
	beq _08013FBC
	cmp r1, #0x88
	beq _08013FBC
	cmp r1, #0x8a
	beq _08013FBC
_08013FB6:
	subs r7, #1
	cmp r7, #0
	bgt _08013F56
_08013FBC:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08013FC4
sub_08013FC4: @ 0x08013FC4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r1, #0
	lsls r0, r0, #0x10
	mov r2, sp
	ldr r3, _08014018 @ =0x0000FFFF
	adds r1, r3, #0
	strh r1, [r2]
	lsrs r0, r0, #0xc
	ldr r1, _0801401C @ =gUnk_02002800
	adds r4, r0, r1
	ldr r2, _08014020 @ =0x01000008
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	cmp r6, #0
	beq _0801405E
	adds r5, r4, #0
	adds r4, r6, #0
	movs r6, #0x10
_08013FEE:
	ldrb r0, [r4]
	adds r1, r0, #0
	adds r4, #1
	cmp r0, #0x80
	bne _08014024
	ldrb r1, [r4]
	lsls r1, r1, #4
	ldr r0, _0801401C @ =gUnk_02002800
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
	b _08014046
	.align 2, 0
_08014018: .4byte 0x0000FFFF
_0801401C: .4byte gUnk_02002800
_08014020: .4byte 0x01000008
_08014024:
	cmp r0, #0x87
	bne _08014050
	ldr r1, _0801404C @ =gUnk_086254D8
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
	movs r3, #0xff
	lsls r3, r3, #0x18
	adds r0, r0, r3
_08014046:
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	b _08014058
	.align 2, 0
_0801404C: .4byte gUnk_086254D8
_08014050:
	strb r1, [r5]
	adds r5, #1
	cmp r1, #0xff
	beq _0801405E
_08014058:
	subs r6, #1
	cmp r6, #0
	bgt _08013FEE
_0801405E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08014068
sub_08014068: @ 0x08014068
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r6, _08014104 @ =gUnk_0200283C
	ldr r5, [r6]
	ldr r1, _08014108 @ =0x00000ED8
	adds r0, r5, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r0, _0801410C @ =0x00001BA3
	adds r4, r5, r0
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r1, [r6]
	ldr r0, _0801410C @ =0x00001BA3
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08014110 @ =0x000010C4
	adds r1, r1, r0
	ldr r0, [r6]
	adds r0, r0, r1
	mov r1, r8
	adds r2, r5, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000BB4
	ldr r4, [r6]
	ldr r1, _08014114 @ =0x00000EDC
	adds r0, r4, r1
	ldr r5, [r0]
	movs r0, #0xa0
	lsls r0, r0, #3
	adds r0, r0, r4
	mov r8, r0
	ldr r1, _0801410C @ =0x00001BA3
	adds r4, r4, r1
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r1, [r6]
	ldr r0, _0801410C @ =0x00001BA3
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08014110 @ =0x000010C4
	adds r1, r1, r0
	ldr r0, [r6]
	adds r0, r0, r1
	adds r1, r5, #0
	mov r2, r8
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000BB4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014104: .4byte gUnk_0200283C
_08014108: .4byte 0x00000ED8
_0801410C: .4byte 0x00001BA3
_08014110: .4byte 0x000010C4
_08014114: .4byte 0x00000EDC

	thumb_func_start sub_08014118
sub_08014118: @ 0x08014118
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r6, _080141B4 @ =gUnk_0200283C
	ldr r5, [r6]
	ldr r1, _080141B8 @ =0x00000ED8
	adds r0, r5, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r0, _080141BC @ =0x00001BA3
	adds r4, r5, r0
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r1, [r6]
	ldr r0, _080141BC @ =0x00001BA3
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080141C0 @ =0x000010C4
	adds r1, r1, r0
	ldr r0, [r6]
	adds r0, r0, r1
	adds r1, r5, #0
	mov r2, r8
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000BB4
	ldr r4, [r6]
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r1, r1, r4
	mov r8, r1
	ldr r1, _080141C4 @ =0x00000EDC
	adds r0, r4, r1
	ldr r5, [r0]
	ldr r0, _080141BC @ =0x00001BA3
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r1, [r6]
	ldr r0, _080141BC @ =0x00001BA3
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080141C0 @ =0x000010C4
	adds r1, r1, r0
	ldr r0, [r6]
	adds r0, r0, r1
	mov r1, r8
	adds r2, r5, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	bl sub_08000BB4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080141B4: .4byte gUnk_0200283C
_080141B8: .4byte 0x00000ED8
_080141BC: .4byte 0x00001BA3
_080141C0: .4byte 0x000010C4
_080141C4: .4byte 0x00000EDC

	thumb_func_start sub_080141C8
sub_080141C8: @ 0x080141C8
	push {r4, lr}
	ldr r0, _080141F0 @ =gUnk_0200283C
	ldr r2, [r0]
	ldr r3, _080141F4 @ =0x00000EF2
	adds r1, r2, r3
	ldrb r1, [r1]
	adds r4, r0, #0
	cmp r1, #0
	beq _080141FC
	movs r1, #0xdd
	lsls r1, r1, #5
	adds r0, r2, r1
	ldrb r1, [r0]
	cmp r1, #0x1c
	bls _080141E8
	movs r1, #0x1c
_080141E8:
	ldr r3, _080141F8 @ =0x00001B94
	adds r0, r2, r3
	strb r1, [r0]
	b _080142D0
	.align 2, 0
_080141F0: .4byte gUnk_0200283C
_080141F4: .4byte 0x00000EF2
_080141F8: .4byte 0x00001B94
_080141FC:
	ldr r3, _08014240 @ =0x00001BC1
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080142DA
	ldr r1, _08014244 @ =0x00000EF8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08014226
	subs r3, #0x21
	adds r1, r2, r3
	ldrb r0, [r1]
	cmp r0, #0x16
	bls _08014226
	movs r0, #0x16
	strb r0, [r1]
_08014226:
	ldr r1, [r4]
	ldr r2, _08014248 @ =0x00001B74
	adds r0, r1, r2
	ldr r0, [r0]
	ldrb r3, [r0, #0xb]
	adds r2, r3, #0
	cmp r2, #0
	beq _0801427C
	adds r0, r1, #0
	cmp r2, #1
	bls _0801424C
	subs r2, r3, #2
	b _0801424E
	.align 2, 0
_08014240: .4byte 0x00001BC1
_08014244: .4byte 0x00000EF8
_08014248: .4byte 0x00001B74
_0801424C:
	movs r2, #0
_0801424E:
	ldr r3, _08014274 @ =0x00001B94
	adds r0, r0, r3
	strb r2, [r0]
	ldr r1, [r4]
	ldr r2, _08014278 @ =0x00001BAC
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080142D0
	adds r2, r1, r3
	ldrb r0, [r2]
	cmp r0, #5
	bhi _080142D0
	adds r3, #0xc
	adds r0, r1, r3
	ldrb r0, [r0]
	adds r0, #6
	strb r0, [r2]
	b _080142D0
	.align 2, 0
_08014274: .4byte 0x00001B94
_08014278: .4byte 0x00001BAC
_0801427C:
	ldr r2, _080142A0 @ =0x00001BAC
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080142BC
	movs r3, #0xdd
	lsls r3, r3, #5
	adds r0, r1, r3
	ldrb r0, [r0]
	adds r2, r0, #6
	cmp r2, #6
	bgt _080142A8
	ldr r0, _080142A4 @ =0x00001B94
	adds r1, r1, r0
	movs r0, #6
	strb r0, [r1]
	b _080142D0
	.align 2, 0
_080142A0: .4byte 0x00001BAC
_080142A4: .4byte 0x00001B94
_080142A8:
	cmp r2, #0x1b
	ble _080142CA
	ldr r0, _080142B8 @ =0x00001B94
	adds r1, r1, r0
	movs r0, #0x1c
	strb r0, [r1]
	b _080142D0
	.align 2, 0
_080142B8: .4byte 0x00001B94
_080142BC:
	movs r2, #0xdd
	lsls r2, r2, #5
	adds r0, r1, r2
	ldrb r2, [r0]
	cmp r2, #0x1c
	bls _080142CA
	movs r2, #0x1c
_080142CA:
	ldr r3, _080142E0 @ =0x00001B94
	adds r0, r1, r3
	strb r2, [r0]
_080142D0:
	ldr r0, [r4]
	ldr r1, _080142E4 @ =0x00001B95
	adds r0, r0, r1
	movs r1, #3
	strb r1, [r0]
_080142DA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080142E0: .4byte 0x00001B94
_080142E4: .4byte 0x00001B95

	thumb_func_start sub_080142E8
sub_080142E8: @ 0x080142E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080143BC @ =gUnk_0200283C
	ldr r3, [r2]
	ldr r1, _080143C0 @ =0x00001BA7
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	mov sb, r2
	cmp r0, #2
	beq _080143AE
	ldr r1, _080143C4 @ =0x00001BC1
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080143AE
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r1, _080143C8 @ =0x00001B74
	adds r0, r3, r1
	ldr r0, [r0]
	movs r5, #0
	ldrb r0, [r0, #4]
	cmp r6, r0
	bge _08014374
	mov r7, sb
_08014328:
	ldr r2, [r7]
	lsls r1, r5, #1
	ldr r3, _080143CC @ =0x00001BD2
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r3, _080143D0 @ =0x00000FFF
	adds r1, r3, #0
	ands r1, r0
	ldr r0, _080143D4 @ =0x00001B78
	adds r2, r2, r0
	ldr r0, [r2]
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_0801992C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	ble _08014352
	adds r6, r0, #0
_08014352:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r8
	ble _08014364
	mov r8, r1
_08014364:
	adds r5, #1
	ldr r0, [r7]
	ldr r1, _080143C8 @ =0x00001B74
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r5, r0
	blt _08014328
_08014374:
	mov r3, sb
	ldr r0, [r3]
	ldr r1, _080143D8 @ =0x00001B9F
	adds r0, r0, r1
	mov r3, r8
	strb r3, [r0]
	mov r0, sb
	ldr r2, [r0]
	ldr r1, _080143DC @ =0x00000EF8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08014394
	movs r6, #0x10
_08014394:
	asrs r1, r6, #3
	movs r0, #7
	ands r0, r6
	cmp r0, #0
	beq _080143A0
	adds r1, #1
_080143A0:
	movs r3, #0xdd
	lsls r3, r3, #5
	adds r2, r2, r3
	ldrb r0, [r2]
	cmp r0, r1
	bge _080143AE
	strb r1, [r2]
_080143AE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080143BC: .4byte gUnk_0200283C
_080143C0: .4byte 0x00001BA7
_080143C4: .4byte 0x00001BC1
_080143C8: .4byte 0x00001B74
_080143CC: .4byte 0x00001BD2
_080143D0: .4byte 0x00000FFF
_080143D4: .4byte 0x00001B78
_080143D8: .4byte 0x00001B9F
_080143DC: .4byte 0x00000EF8

	thumb_func_start sub_080143E0
sub_080143E0: @ 0x080143E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	movs r5, #0
	movs r7, #0
	movs r6, #0
	b _0801456C
_080143F2:
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _080143FA
	b _08014560
_080143FA:
	ldrb r0, [r4]
	subs r0, #0x80
	cmp r0, #0x11
	bls _08014404
	b _0801456C
_08014404:
	lsls r0, r0, #2
	ldr r1, _08014410 @ =_08014414
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014410: .4byte _08014414
_08014414: @ jump table
	.4byte _08014480 @ case 0
	.4byte _0801446E @ case 1
	.4byte _080144A6 @ case 2
	.4byte _080144A6 @ case 3
	.4byte _080144A6 @ case 4
	.4byte _080144B0 @ case 5
	.4byte _080144A6 @ case 6
	.4byte _08014490 @ case 7
	.4byte _0801456C @ case 8
	.4byte _0801445C @ case 9
	.4byte _0801456C @ case 10
	.4byte _0801456A @ case 11
	.4byte _0801456A @ case 12
	.4byte _0801456A @ case 13
	.4byte _08014462 @ case 14
	.4byte _0801456A @ case 15
	.4byte _0801456A @ case 16
	.4byte _0801456A @ case 17
_0801445C:
	adds r4, #1
	adds r5, #6
	b _0801456C
_08014462:
	mov r0, r8
	cmp r0, #0
	beq _0801446A
	b _0801456A
_0801446A:
	adds r5, #0xe
	b _0801456A
_0801446E:
	ldr r0, _0801447C @ =gUnk_0860D088
	ldrb r1, [r4, #1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #3
	b _080144A4
	.align 2, 0
_0801447C: .4byte gUnk_0860D088
_08014480:
	ldrb r0, [r4, #1]
	lsls r0, r0, #4
	ldr r1, _0801448C @ =gUnk_02002800
	adds r0, r0, r1
	b _0801449A
	.align 2, 0
_0801448C: .4byte gUnk_02002800
_08014490:
	ldr r1, _080144AC @ =gUnk_086254D8
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
_0801449A:
	movs r1, #0
	bl sub_080143E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080144A4:
	adds r5, r5, r0
_080144A6:
	adds r4, #2
	b _0801456C
	.align 2, 0
_080144AC: .4byte gUnk_086254D8
_080144B0:
	ldrb r0, [r4, #1]
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0
	bne _08014506
	adds r5, #0x18
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0
	bl sub_080143E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r6, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_080143E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r7, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r4, r4, r0
	adds r0, r7, #0
	cmp r0, r6
	bge _08014502
	adds r0, r6, #0
_08014502:
	adds r5, r5, r0
	b _0801456C
_08014506:
	cmp r1, #0x10
	bne _0801453C
	adds r5, #0x18
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0
	bl sub_080143E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_080143E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	b _0801454E
_0801453C:
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r4, r4, r0
_0801454E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r4, r4, r0
	b _0801456C
_08014560:
	ldr r0, _0801458C @ =gUnk_0815DE6C
	ldrb r1, [r4]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r5, r5, r0
_0801456A:
	adds r4, #1
_0801456C:
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0xff
	beq _0801457E
	cmp r1, #0x88
	beq _0801457E
	cmp r1, #0x8a
	beq _0801457E
	b _080143F2
_0801457E:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801458C: .4byte gUnk_0815DE6C

	thumb_func_start sub_08014590
sub_08014590: @ 0x08014590
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r6, #0
	b _080146C2
_0801459A:
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08014600
	ldrb r0, [r4]
	subs r0, #0x80
	cmp r0, #0x11
	bls _080145AA
	b _080146C2
_080145AA:
	lsls r0, r0, #2
	ldr r1, _080145B4 @ =_080145B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080145B4: .4byte _080145B8
_080145B8: @ jump table
	.4byte _0801460C @ case 0
	.4byte _08014606 @ case 1
	.4byte _08014608 @ case 2
	.4byte _08014638 @ case 3
	.4byte _08014638 @ case 4
	.4byte _0801463C @ case 5
	.4byte _08014608 @ case 6
	.4byte _0801461C @ case 7
	.4byte _080146C2 @ case 8
	.4byte _08014600 @ case 9
	.4byte _080146C2 @ case 10
	.4byte _08014602 @ case 11
	.4byte _08014602 @ case 12
	.4byte _08014602 @ case 13
	.4byte _08014602 @ case 14
	.4byte _08014602 @ case 15
	.4byte _08014602 @ case 16
	.4byte _08014602 @ case 17
_08014600:
	adds r6, #1
_08014602:
	adds r4, #1
	b _080146C2
_08014606:
	adds r6, #1
_08014608:
	adds r4, #2
	b _080146C2
_0801460C:
	ldrb r0, [r4, #1]
	lsls r0, r0, #4
	ldr r1, _08014618 @ =gUnk_02002800
	adds r0, r0, r1
	b _08014626
	.align 2, 0
_08014618: .4byte gUnk_02002800
_0801461C:
	ldr r1, _08014634 @ =gUnk_086254D8
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
_08014626:
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r6, r0
	b _08014608
	.align 2, 0
_08014634: .4byte gUnk_086254D8
_08014638:
	adds r4, #3
	b _080146C2
_0801463C:
	cmp r7, #1
	bne _080146A0
	ldrb r0, [r4, #1]
	cmp r0, #0x30
	bne _08014670
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #1
	adds r6, r6, r5
	adds r4, r4, r5
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #1
	adds r0, r6, #6
	adds r6, r0, r1
_0801466C:
	adds r4, r4, r1
	b _080146C2
_08014670:
	cmp r0, #0x20
	bne _080146A0
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #1
	adds r4, r4, r5
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #1
	cmp r5, r1
	ble _0801469C
	adds r6, r6, r5
	b _0801466C
_0801469C:
	adds r6, r6, r1
	b _0801466C
_080146A0:
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r4, r4, r0
_080146C2:
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0xff
	beq _080146D4
	cmp r1, #0x88
	beq _080146D4
	cmp r1, #0x8a
	beq _080146D4
	b _0801459A
_080146D4:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080146E0
sub_080146E0: @ 0x080146E0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	b _08014784
_080146E8:
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08014780
	ldrb r0, [r4]
	subs r0, #0x80
	cmp r0, #0x11
	bhi _08014784
	lsls r0, r0, #2
	ldr r1, _08014700 @ =_08014704
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014700: .4byte _08014704
_08014704: @ jump table
	.4byte _08014752 @ case 0
	.4byte _0801474C @ case 1
	.4byte _0801474E @ case 2
	.4byte _0801477C @ case 3
	.4byte _0801477C @ case 4
	.4byte _08014784 @ case 5
	.4byte _0801474E @ case 6
	.4byte _08014760 @ case 7
	.4byte _08014784 @ case 8
	.4byte _08014780 @ case 9
	.4byte _08014784 @ case 10
	.4byte _08014782 @ case 11
	.4byte _08014782 @ case 12
	.4byte _08014782 @ case 13
	.4byte _08014782 @ case 14
	.4byte _08014782 @ case 15
	.4byte _08014782 @ case 16
	.4byte _08014782 @ case 17
_0801474C:
	adds r5, #1
_0801474E:
	adds r4, #2
	b _08014784
_08014752:
	ldrb r0, [r4, #1]
	lsls r0, r0, #4
	ldr r1, _0801475C @ =gUnk_02002800
	adds r0, r0, r1
	b _0801476A
	.align 2, 0
_0801475C: .4byte gUnk_02002800
_08014760:
	ldr r1, _08014778 @ =gUnk_086254D8
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
_0801476A:
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	b _0801474E
	.align 2, 0
_08014778: .4byte gUnk_086254D8
_0801477C:
	adds r4, #3
	b _08014784
_08014780:
	adds r5, #1
_08014782:
	adds r4, #1
_08014784:
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0xff
	beq _08014798
	cmp r1, #0x88
	beq _08014798
	cmp r1, #0x8a
	beq _08014798
	cmp r1, #0x85
	bne _080146E8
_08014798:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080147A4
sub_080147A4: @ 0x080147A4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	movs r5, #0
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0xff
	beq _08014868
	cmp r1, #0x88
	beq _08014868
	cmp r1, #0x8a
	beq _08014870
_080147BE:
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08014854
	ldrb r0, [r4]
	subs r0, #0x80
	cmp r0, #0x11
	bhi _08014858
	lsls r0, r0, #2
	ldr r1, _080147D8 @ =_080147DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080147D8: .4byte _080147DC
_080147DC: @ jump table
	.4byte _0801482A @ case 0
	.4byte _0801482A @ case 1
	.4byte _0801482A @ case 2
	.4byte _08014824 @ case 3
	.4byte _08014824 @ case 4
	.4byte _08014830 @ case 5
	.4byte _0801482A @ case 6
	.4byte _0801482A @ case 7
	.4byte _08014858 @ case 8
	.4byte _08014824 @ case 9
	.4byte _08014858 @ case 10
	.4byte _08014824 @ case 11
	.4byte _08014824 @ case 12
	.4byte _08014824 @ case 13
	.4byte _08014824 @ case 14
	.4byte _08014824 @ case 15
	.4byte _08014824 @ case 16
	.4byte _08014824 @ case 17
_08014824:
	adds r5, #1
	adds r4, #1
	b _08014858
_0801482A:
	adds r5, #2
	adds r4, #2
	b _08014858
_08014830:
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r4, r4, r0
	b _08014858
_08014854:
	adds r4, #1
	adds r5, #1
_08014858:
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0xff
	beq _08014868
	cmp r1, #0x88
	beq _08014868
	cmp r1, #0x8a
	bne _080147BE
_08014868:
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0x8a
	bne _08014884
_08014870:
	ldr r0, [r6]
	adds r0, #1
	str r0, [r6]
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #0x8a
	bne _08014884
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	beq _0801488E
_08014884:
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08014892
	cmp r7, #0
	bne _08014892
_0801488E:
	movs r0, #0
	b _08014898
_08014892:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08014898:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080148A0
sub_080148A0: @ 0x080148A0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r2, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r4, #0
	ldrb r0, [r5]
	b _08014996
_080148B0:
	adds r1, r5, r4
	ldrb r0, [r1]
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, r6
	beq _0801494A
	lsls r0, r2, #0x18
	cmp r0, #0
	bge _0801498C
	adds r0, r2, #0
	subs r0, #0x80
	cmp r0, #7
	bhi _0801498C
	lsls r0, r0, #2
	ldr r1, _080148D4 @ =_080148D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080148D4: .4byte _080148D8
_080148D8: @ jump table
	.4byte _080148F8 @ case 0
	.4byte _08014924 @ case 1
	.4byte _08014924 @ case 2
	.4byte _0801495C @ case 3
	.4byte _0801495C @ case 4
	.4byte _08014960 @ case 5
	.4byte _08014924 @ case 6
	.4byte _08014928 @ case 7
_080148F8:
	cmp r7, #0
	bne _08014918
	ldrb r0, [r3, #1]
	lsls r0, r0, #4
	ldr r1, _0801491C @ =gUnk_02002800
	adds r0, r0, r1
	adds r1, r6, #0
	movs r2, #1
	bl sub_080148A0
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08014920 @ =0x0000FFFF
	cmp r4, r0
	bne _0801494A
_08014918:
	adds r0, r4, #2
	b _0801498E
	.align 2, 0
_0801491C: .4byte gUnk_02002800
_08014920: .4byte 0x0000FFFF
_08014924:
	adds r0, r4, #2
	b _0801498E
_08014928:
	cmp r7, #0
	bne _08014958
	ldr r1, _08014950 @ =gUnk_086254D8
	ldrb r0, [r3, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r6, #0
	movs r2, #1
	bl sub_080148A0
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08014954 @ =0x0000FFFF
	cmp r4, r0
	beq _08014958
_0801494A:
	adds r0, r4, #0
	b _080149A4
	.align 2, 0
_08014950: .4byte gUnk_086254D8
_08014954: .4byte 0x0000FFFF
_08014958:
	adds r0, r4, #2
	b _0801498E
_0801495C:
	adds r0, r4, #3
	b _0801498E
_08014960:
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl sub_08014590
	adds r1, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl sub_08014590
	adds r1, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r1
	b _0801498E
_0801498C:
	adds r0, r4, #1
_0801498E:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, r4
	ldrb r0, [r0]
_08014996:
	cmp r0, #0xff
	beq _080149A2
	cmp r0, #0x88
	beq _080149A2
	cmp r0, #0x8a
	bne _080148B0
_080149A2:
	ldr r0, _080149AC @ =0x0000FFFF
_080149A4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080149AC: .4byte 0x0000FFFF

	thumb_func_start sub_080149B0
sub_080149B0: @ 0x080149B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r2, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	b _08014A5A
_080149BC:
	lsls r0, r1, #0x18
	cmp r1, r5
	beq _08014A6A
	cmp r0, #0
	bge _08014A58
	ldrb r0, [r4]
	subs r0, #0x80
	cmp r0, #7
	bhi _08014A58
	lsls r0, r0, #2
	ldr r1, _080149D8 @ =_080149DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080149D8: .4byte _080149DC
_080149DC: @ jump table
	.4byte _080149FC @ case 0
	.4byte _08014A2A @ case 1
	.4byte _08014A2A @ case 2
	.4byte _08014A2A @ case 3
	.4byte _08014A2A @ case 4
	.4byte _08014A34 @ case 5
	.4byte _08014A2A @ case 6
	.4byte _08014A10 @ case 7
_080149FC:
	cmp r6, #0
	bne _08014A2A
	ldrb r0, [r4, #1]
	lsls r0, r0, #4
	ldr r1, _08014A0C @ =gUnk_02002800
	adds r0, r0, r1
	b _08014A1E
	.align 2, 0
_08014A0C: .4byte gUnk_02002800
_08014A10:
	cmp r6, #0
	bne _08014A2A
	ldr r0, _08014A30 @ =gUnk_086254D8
	ldrb r1, [r4, #1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
_08014A1E:
	adds r1, r5, #0
	movs r2, #1
	bl sub_080149B0
	cmp r0, #0
	bne _08014A6C
_08014A2A:
	adds r4, #2
	b _08014A5A
	.align 2, 0
_08014A30: .4byte gUnk_086254D8
_08014A34:
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #1
	adds r4, r4, r0
	b _08014A5A
_08014A58:
	adds r4, #1
_08014A5A:
	ldrb r1, [r4]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _080149BC
	cmp r5, #0xff
	beq _08014A6A
	movs r0, #0
	b _08014A6C
_08014A6A:
	adds r0, r4, #0
_08014A6C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08014A74
sub_08014A74: @ 0x08014A74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sl, r0
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [sp, #0x4c]
	movs r2, #0x10
	ands r0, r2
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	movs r0, #2
	add sl, r0
	movs r7, #0
	movs r2, #0
	str r2, [sp, #0x10]
	str r7, [sp]
	movs r3, #0
	str r3, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x1c]
	str r2, [sp, #0x14]
	str r3, [sp, #0xc]
	str r2, [sp, #0x18]
	mov r0, sp
	ldrh r0, [r0, #0x14]
	strh r0, [r1]
	mov sb, r1
_08014AB4:
	mov r1, sl
	adds r4, r1, r7
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014590
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, [sp, #0x1c]
	cmp r0, r2
	ble _08014ACC
	str r0, [sp, #0x1c]
_08014ACC:
	adds r0, r4, #0
	ldr r1, [sp, #0x24]
	bl sub_080143E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, [sp, #0x20]
	cmp r0, r3
	ble _08014AE0
	str r0, [sp, #0x20]
_08014AE0:
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0
	bl sub_080147A4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, r6
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r1, sl
	adds r0, r1, r7
	movs r1, #0x85
	movs r2, #1
	bl sub_080148A0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08014B6C @ =0x0000FFFF
	cmp r1, r0
	bne _08014B0C
	b _08014CB4
_08014B0C:
	adds r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r2, sl
	adds r0, r2, r7
	ldrb r0, [r0, #1]
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0x20
	beq _08014B24
	cmp r1, #0x30
	bne _08014B78
_08014B24:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r3, sl
	adds r0, r3, r7
	mov r1, sp
	movs r2, #1
	bl sub_080147A4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, r6
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r1, sl
	adds r0, r1, r7
	mov r1, sp
	movs r2, #1
	bl sub_080147A4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, r6
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _08014B70 @ =gUnk_0200283C
	ldr r0, [r0]
	ldr r2, _08014B74 @ =0x00001C12
	adds r0, r0, r2
	mov r3, sp
	ldrh r3, [r3, #0x10]
	strh r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, #1
	mov r8, r0
	b _08014CCE
	.align 2, 0
_08014B6C: .4byte 0x0000FFFF
_08014B70: .4byte gUnk_0200283C
_08014B74: .4byte 0x00001C12
_08014B78:
	cmp r1, #0x10
	bne _08014C0C
	movs r1, #2
	add sb, r1
	ldr r2, [sp, #0x10]
	adds r2, #1
	str r2, [sp, #0x10]
	movs r0, #0
	mov r3, sb
	strh r0, [r3]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, sl
	adds r4, r0, r7
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_080147A4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	ldr r1, [sp, #0x24]
	bl sub_080143E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	adds r5, #0x20
	adds r0, r7, r6
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r1, sl
	adds r4, r1, r7
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_080147A4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	ldr r1, [sp, #0x24]
	bl sub_080143E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	adds r0, r7, r6
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _08014C00 @ =gUnk_0200283C
	ldr r1, [r0]
	ldr r2, [sp, #0x18]
	adds r2, #1
	ldr r3, _08014C04 @ =0x00001C12
	adds r0, r1, r3
	strh r2, [r0]
	ldr r0, _08014C08 @ =0x00001C14
	adds r1, r1, r0
	strh r2, [r1]
	mov r8, r2
	ldr r1, [sp, #0x20]
	cmp r5, r1
	ble _08014CCE
	str r5, [sp, #0x20]
	b _08014CCE
	.align 2, 0
_08014C00: .4byte gUnk_0200283C
_08014C04: .4byte 0x00001C12
_08014C08: .4byte 0x00001C14
_08014C0C:
	ldr r2, [sp, #0x18]
	adds r2, #1
	mov r8, r2
	cmp r1, #0
	bne _08014CCE
	movs r3, #2
	add sb, r3
	mov r0, sb
	strh r1, [r0]
	add sb, r3
	ldr r2, [sp, #0x10]
	adds r2, #2
	str r2, [sp, #0x10]
	mov r3, sb
	strh r1, [r3]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, sl
	adds r4, r0, r7
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_080147A4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	ldr r1, [sp, #0x24]
	bl sub_080143E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	adds r5, #0x20
	adds r0, r7, r6
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r1, sl
	adds r4, r1, r7
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_080147A4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	ldr r1, [sp, #0x24]
	bl sub_080143E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	adds r2, #0x20
	adds r0, r7, r6
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _08014CA8 @ =gUnk_0200283C
	ldr r1, [r0]
	ldr r3, _08014CAC @ =0x00001C12
	adds r0, r1, r3
	mov r3, r8
	strh r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, #2
	ldr r3, _08014CB0 @ =0x00001C14
	adds r1, r1, r3
	strh r0, [r1]
	ldr r0, [sp, #0x20]
	cmp r5, r0
	ble _08014C9E
	str r5, [sp, #0x20]
_08014C9E:
	ldr r1, [sp, #0x20]
	cmp r2, r1
	ble _08014CCE
	str r2, [sp, #0x20]
	b _08014CCE
	.align 2, 0
_08014CA8: .4byte gUnk_0200283C
_08014CAC: .4byte 0x00001C12
_08014CB0: .4byte 0x00001C14
_08014CB4:
	movs r2, #2
	add sb, r2
	ldr r3, [sp, #0x10]
	adds r3, #1
	str r3, [sp, #0x10]
	ldr r0, [sp]
	lsls r0, r0, #0xc
	orrs r0, r7
	mov r1, sb
	strh r0, [r1]
	ldr r2, [sp, #0x18]
	adds r2, #1
	mov r8, r2
_08014CCE:
	mov r3, r8
	str r3, [sp, #0x18]
	ldr r1, [sp]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _08014CE8
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x14]
	cmp r3, r2
	ble _08014CE4
	str r3, [sp, #0x14]
_08014CE4:
	movs r3, #0
	str r3, [sp, #0x18]
_08014CE8:
	cmp r6, #0
	beq _08014CEE
	b _08014AB4
_08014CEE:
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #4]
	str r0, [r2]
	ldr r3, [sp, #0x20]
	ldr r0, [sp, #8]
	str r3, [r0]
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x14]
	str r2, [r0]
	adds r0, r1, #0
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08014D14
sub_08014D14: @ 0x08014D14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	adds r7, r0, #0
	str r2, [sp, #0x54]
	adds r4, r3, #0
	ldr r0, [r7]
	adds r0, r1, r0
	ldrh r0, [r0]
	adds r1, r1, r0
	mov sl, r1
	ldrb r0, [r7, #9]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7, #9]
	mov r0, sl
	ldrb r1, [r0]
	lsrs r1, r1, #4
	movs r0, #3
	ands r1, r0
	ldrb r2, [r7, #7]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #7]
	movs r0, #0
	str r0, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	movs r6, #0
	str r6, [sp, #0x48]
	add r2, sp, #0x48
	add r3, sp, #0x4c
	add r0, sp, #0x50
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, sl
	add r1, sp, #8
	bl sub_08014A74
	adds r5, r0, #0
	ldr r0, [sp, #0x4c]
	asrs r2, r0, #3
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08014D80
	adds r0, r2, #1
	lsls r0, r0, #0x18
	b _08014D82
_08014D80:
	lsls r0, r2, #0x18
_08014D82:
	lsrs r0, r0, #0x18
	str r0, [sp, #0x58]
	strb r5, [r7, #5]
	ldr r0, [sp, #0x48]
	strb r0, [r7, #6]
	cmp r0, #0
	beq _08014D98
	ldrb r0, [r7, #7]
	movs r1, #4
	orrs r0, r1
	b _08014DA0
_08014D98:
	ldrb r1, [r7, #7]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
_08014DA0:
	strb r0, [r7, #7]
	mov r0, sl
	movs r1, #0x8f
	movs r2, #1
	bl sub_080149B0
	cmp r0, #0
	beq _08014DB8
	ldrb r0, [r7, #9]
	movs r1, #0x10
	orrs r0, r1
	b _08014DC0
_08014DB8:
	ldrb r1, [r7, #9]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
_08014DC0:
	strb r0, [r7, #9]
	mov r0, sl
	movs r1, #0x85
	movs r2, #1
	bl sub_080149B0
	adds r3, r0, #0
	cmp r3, #0
	bne _08014DD4
	b _08015080
_08014DD4:
	ldrb r0, [r3, #1]
	movs r4, #0xf0
	ands r4, r0
	cmp r4, #0
	bne _08014EB8
	movs r1, #0xf
	ands r1, r0
	movs r2, #3
	mov sb, r2
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r7, #9]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #9]
	ldrb r0, [r7, #7]
	movs r2, #0x19
	rsbs r2, r2, #0
	ands r2, r0
	movs r0, #0x10
	orrs r2, r0
	strb r2, [r7, #7]
	lsls r1, r2, #0x1e
	lsrs r0, r1, #0x1e
	cmp r0, #2
	bhi _08014E1E
	adds r0, #2
	mov r1, sb
	ands r0, r1
	movs r1, #4
	rsbs r1, r1, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r7, #7]
_08014E1E:
	ldr r5, _08014EA4 @ =gUnk_0200283C
	ldr r1, [r5]
	ldr r2, _08014EA8 @ =0x00001C18
	mov r8, r2
	adds r2, r1, r2
	adds r0, r3, #2
	str r0, [r2]
	movs r3, #0xe1
	lsls r3, r3, #5
	adds r1, r1, r3
	strb r4, [r1]
	ldr r1, [r5]
	ldr r2, _08014EAC @ =0x00001C21
	adds r1, r1, r2
	movs r2, #1
	strb r2, [r1]
	movs r1, #0xff
	bl sub_080149B0
	adds r3, r0, #0
	ldr r4, [r5]
	ldr r6, _08014EB0 @ =0x00001C1C
	adds r1, r4, r6
	adds r0, r3, #1
	str r0, [r1]
	ldr r3, _08014EB4 @ =0x00001C12
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r1, [sp, #0x48]
	bl __modsi3
	mov r1, sb
	ands r0, r1
	ldrb r2, [r7, #8]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #8]
	add r4, r8
	ldr r0, [r4]
	bl sub_080146E0
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r7, #8]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #8]
	ldr r0, [r5]
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_080146E0
	lsls r0, r0, #5
	ldrb r2, [r7, #8]
	movs r1, #0x1f
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #8]
	ldrb r1, [r7, #9]
	movs r0, #0x21
	rsbs r0, r0, #0
	b _0801501A
	.align 2, 0
_08014EA4: .4byte gUnk_0200283C
_08014EA8: .4byte 0x00001C18
_08014EAC: .4byte 0x00001C21
_08014EB0: .4byte 0x00001C1C
_08014EB4: .4byte 0x00001C12
_08014EB8:
	cmp r4, #0x10
	bne _08014FB4
	movs r1, #0xf
	ands r1, r0
	movs r2, #3
	mov r8, r2
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r7, #9]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #9]
	ldrb r1, [r7, #7]
	movs r0, #0x18
	adds r2, r1, #0
	orrs r2, r0
	strb r2, [r7, #7]
	lsls r1, r2, #0x1e
	lsrs r0, r1, #0x1e
	cmp r0, #1
	bhi _08014EF8
	adds r0, #1
	mov r1, r8
	ands r0, r1
	movs r1, #4
	rsbs r1, r1, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r7, #7]
_08014EF8:
	ldr r6, _08014FA0 @ =gUnk_0200283C
	ldr r0, [r6]
	ldr r2, _08014FA4 @ =0x00001C18
	adds r0, r0, r2
	adds r5, r3, #2
	str r5, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080143E0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	asrs r1, r4, #3
	movs r3, #7
	mov sb, r3
	ands r4, r3
	cmp r4, #0
	beq _08014F1E
	adds r1, #1
_08014F1E:
	ldr r0, [r6]
	adds r1, #2
	movs r2, #0xe1
	lsls r2, r2, #5
	adds r0, r0, r2
	movs r2, #0
	strb r1, [r0]
	ldr r0, [r6]
	ldr r3, _08014FA8 @ =0x00001C21
	adds r0, r0, r3
	strb r2, [r0]
	adds r0, r5, #0
	movs r1, #0xff
	movs r2, #1
	bl sub_080149B0
	adds r3, r0, #0
	ldr r4, [r6]
	ldr r5, _08014FAC @ =0x00001C1C
	adds r1, r4, r5
	adds r0, r3, #1
	str r0, [r1]
	ldr r1, _08014FB0 @ =0x00001C12
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r1, [sp, #0x48]
	bl __modsi3
	mov r2, r8
	ands r0, r2
	ldrb r2, [r7, #8]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #8]
	ldr r3, _08014FA4 @ =0x00001C18
	adds r4, r4, r3
	ldr r0, [r4]
	bl sub_080146E0
	mov r1, sb
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r7, #8]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #8]
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_080146E0
	lsls r0, r0, #5
	ldrb r2, [r7, #8]
	movs r1, #0x1f
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #8]
	ldrb r1, [r7, #9]
	movs r0, #0x21
	rsbs r0, r0, #0
	b _0801501A
	.align 2, 0
_08014FA0: .4byte gUnk_0200283C
_08014FA4: .4byte 0x00001C18
_08014FA8: .4byte 0x00001C21
_08014FAC: .4byte 0x00001C1C
_08014FB0: .4byte 0x00001C12
_08014FB4:
	cmp r4, #0x20
	beq _08014FBC
	cmp r4, #0x30
	bne _0801501E
_08014FBC:
	movs r1, #0xf
	ands r1, r0
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r7, #9]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #9]
	ldrb r1, [r7, #7]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r7, #7]
	ldr r4, _0801506C @ =gUnk_0200283C
	ldr r1, [r4]
	ldr r0, _08015070 @ =0x00001C18
	adds r1, r1, r0
	adds r0, r3, #2
	str r0, [r1]
	movs r1, #0xff
	movs r2, #1
	bl sub_080149B0
	adds r3, r0, #0
	ldr r1, [r4]
	ldr r0, _08015074 @ =0x00001C1C
	adds r2, r1, r0
	adds r0, r3, #1
	str r0, [r2]
	movs r2, #0xe1
	lsls r2, r2, #5
	adds r1, r1, r2
	movs r2, #0
	strb r2, [r1]
	ldr r0, [r4]
	ldr r3, _08015078 @ =0x00001C21
	adds r0, r0, r3
	strb r2, [r0]
	movs r0, #0
	strb r0, [r7, #8]
	ldrb r1, [r7, #9]
	subs r0, #0x21
_0801501A:
	ands r0, r1
	strb r0, [r7, #9]
_0801501E:
	ldrb r1, [r7, #7]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #7]
	ldr r5, _0801506C @ =gUnk_0200283C
	ldr r0, [r5]
	ldr r1, _08015070 @ =0x00001C18
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_080143E0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r5]
	ldr r2, _08015074 @ =0x00001C1C
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0
	bl sub_080143E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r4
	bge _08015054
	adds r0, r4, #0
_08015054:
	adds r4, r0, #0
	ldr r2, [r5]
	asrs r1, r4, #3
	movs r0, #7
	ands r0, r4
	cmp r0, #0
	beq _08015064
	adds r1, #1
_08015064:
	ldr r3, _0801507C @ =0x00001C22
	adds r0, r2, r3
	strh r1, [r0]
	b _080150A0
	.align 2, 0
_0801506C: .4byte gUnk_0200283C
_08015070: .4byte 0x00001C18
_08015074: .4byte 0x00001C1C
_08015078: .4byte 0x00001C21
_0801507C: .4byte 0x00001C22
_08015080:
	ldrb r0, [r7, #7]
	movs r2, #0x19
	rsbs r2, r2, #0
	ands r2, r0
	ldrb r1, [r7, #9]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r7, #9]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	strb r2, [r7, #7]
_080150A0:
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #0x83
	bne _080150C2
	ldrb r0, [r1, #3]
	strb r0, [r7, #0xa]
	ldrb r0, [r7, #9]
	movs r1, #2
	orrs r0, r1
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r7, #9]
	ldrb r0, [r7, #7]
	movs r1, #0x80
	orrs r0, r1
	b _080150FA
_080150C2:
	cmp r0, #0x84
	bne _080150E0
	mov r2, sl
	ldrb r0, [r2, #3]
	strb r0, [r7, #0xa]
	ldrb r0, [r7, #9]
	movs r1, #2
	orrs r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r7, #9]
	ldrb r0, [r7, #7]
	movs r1, #0x80
	orrs r0, r1
	b _080150FA
_080150E0:
	ldrb r1, [r7, #9]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r7, #9]
	movs r0, #0
	strb r0, [r7, #0xa]
	ldrb r1, [r7, #7]
	movs r0, #0x7f
	ands r0, r1
_080150FA:
	strb r0, [r7, #7]
	ldrb r1, [r7, #7]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #7]
	movs r0, #0
	strb r0, [r7, #0xb]
	mov ip, r0
	movs r6, #0
	movs r0, #2
	ldr r3, [sp, #0x54]
	strh r0, [r3]
	movs r5, #0
	ldrb r0, [r7, #5]
	mov sl, r0
	cmp r6, sl
	bge _08015172
	ldr r1, [sp, #0x50]
	mov r8, r1
_08015122:
	movs r4, #0
	adds r2, r5, #1
	mov sb, r2
	cmp r4, r8
	bge _0801516C
	mov r3, ip
	lsls r0, r3, #1
	adds r3, r0, #0
	add r3, sp
	adds r3, #8
	lsls r0, r6, #1
	ldr r1, [sp, #0x54]
	adds r2, r0, r1
_0801513C:
	cmp r5, #0
	bne _08015144
	cmp r4, #0
	beq _0801514A
_08015144:
	ldrh r0, [r3]
	cmp r0, #0
	beq _08015160
_0801514A:
	ldrh r1, [r3]
	lsrs r0, r1, #0xc
	cmp r0, r5
	bne _0801515E
	adds r0, r1, #2
	strh r0, [r2]
	adds r3, #2
	movs r0, #1
	add ip, r0
	b _08015162
_0801515E:
	lsls r0, r5, #0xc
_08015160:
	strh r0, [r2]
_08015162:
	adds r2, #2
	adds r6, #1
	adds r4, #1
	cmp r4, r8
	blt _0801513C
_0801516C:
	mov r5, sb
	cmp r5, sl
	blt _08015122
_08015172:
	strb r6, [r7, #4]
	ldr r0, [sp, #0x58]
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08015188
sub_08015188: @ 0x08015188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r0, _08015328 @ =gUnk_0200283C
	ldr r3, [r0]
	ldr r2, _0801532C @ =0x00000EF8
	adds r1, r3, r2
	ldr r4, [r1]
	movs r5, #2
	mov r8, r5
	adds r1, r4, #0
	ands r1, r5
	movs r7, #0x80
	lsls r7, r7, #7
	adds r5, r0, #0
	cmp r1, #0
	beq _080151B4
	movs r7, #0x80
	lsls r7, r7, #8
_080151B4:
	ldr r6, _08015330 @ =0x00000EDC
	adds r1, r3, r6
	ldr r2, _08015334 @ =0x00001BC4
	adds r0, r3, r2
	ldrh r0, [r0]
	lsls r0, r0, #1
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r6, _08015338 @ =0x00001B93
	adds r0, r3, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r1, r1, r0
	subs r2, #0x32
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #6
	adds r0, #2
	adds r1, r1, r0
	str r1, [sp, #0x1c]
	subs r6, #9
	adds r0, r3, r6
	ldrh r0, [r0]
	lsls r0, r0, #1
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	adds r0, r3, r0
	str r0, [sp, #0x18]
	movs r2, #0xee
	lsls r2, r2, #4
	adds r1, r3, r2
	ldr r6, _0801533C @ =0x00000EE4
	adds r0, r3, r6
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	str r1, [sp, #0x20]
	ldr r0, _08015340 @ =0x00001B84
	adds r2, r3, r0
	ldr r1, _08015344 @ =0x00000EED
	adds r0, r3, r1
	ldrb r1, [r0]
	ldrh r0, [r2]
	adds r2, r0, #0
	muls r2, r1, r2
	adds r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r6, _08015348 @ =0x00001B98
	adds r0, r3, r6
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801523C
	cmp r0, #1
	bgt _0801522E
	bl _08015A36
_0801522E:
	cmp r0, #2
	bne _08015234
	b _08015488
_08015234:
	cmp r0, #3
	beq _0801523C
	bl _08015A36
_0801523C:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r4, r0
	cmp r4, #0
	beq _08015260
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r4, _0801534C @ =0x00001B96
	adds r0, r3, r4
	ldrb r2, [r0]
	lsls r2, r2, #4
	movs r0, #0xa0
	lsls r0, r0, #0x13
	orrs r2, r0
	add r0, sp, #0xc
	ldr r1, [sp, #0x1c]
	bl CpuSet
_08015260:
	movs r4, #0
	str r4, [sp, #0x10]
	add r0, sp, #0x10
	ldr r1, [r5]
	ldr r3, _08015350 @ =0x00001B95
	adds r2, r1, r3
	ldrb r2, [r2]
	adds r3, #0xb
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #4
	muls r2, r1, r2
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r2, r1
	ldr r1, [sp, #0x20]
	bl CpuFastSet
	ldr r0, [r5]
	ldr r1, _08015354 @ =0x00001B9B
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r5]
	ldr r2, _08015358 @ =0x00001B9E
	adds r1, r0, r2
	strb r4, [r1]
	ldr r3, _0801535C @ =0x00001B9D
	adds r1, r0, r3
	strb r4, [r1]
	ldr r1, _08015360 @ =0x00001B9C
	adds r0, r0, r1
	strb r4, [r0]
	ldr r1, [r5]
	adds r2, #0x1e
	adds r0, r1, r2
	movs r2, #0
	strh r4, [r0]
	adds r3, #0xc
	adds r0, r1, r3
	strb r2, [r0]
	ldr r4, _08015364 @ =0x00001BA8
	adds r1, r1, r4
	strb r2, [r1]
	ldr r0, [r5]
	ldr r2, _08015368 @ =0x00000EEE
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r2, #1
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, [r5]
	subs r3, #0x21
	adds r1, r0, r3
	strh r7, [r1]
	adds r2, r0, r2
	ldrb r1, [r2]
	subs r4, #0xe
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r0, r6
	mov r6, r8
	strb r6, [r0]
	ldr r2, [r5]
	ldr r0, _0801536C @ =0x00001B78
	adds r3, r2, r0
	ldr r4, [sp, #0x14]
	lsls r1, r4, #1
	ldr r6, _08015370 @ =0x00001BD2
	adds r0, r2, r6
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08015374 @ =0x00000FFF
	ands r0, r1
	ldr r1, [r3]
	adds r4, r1, r0
	ldr r0, _0801532C @ =0x00000EF8
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015378
	adds r0, r4, #0
	movs r1, #1
	bl sub_080143E0
	ldr r1, [r5]
	movs r2, #0xdd
	lsls r2, r2, #5
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	lsrs r2, r1, #1
	b _0801537A
	.align 2, 0
_08015328: .4byte gUnk_0200283C
_0801532C: .4byte 0x00000EF8
_08015330: .4byte 0x00000EDC
_08015334: .4byte 0x00001BC4
_08015338: .4byte 0x00001B93
_0801533C: .4byte 0x00000EE4
_08015340: .4byte 0x00001B84
_08015344: .4byte 0x00000EED
_08015348: .4byte 0x00001B98
_0801534C: .4byte 0x00001B96
_08015350: .4byte 0x00001B95
_08015354: .4byte 0x00001B9B
_08015358: .4byte 0x00001B9E
_0801535C: .4byte 0x00001B9D
_08015360: .4byte 0x00001B9C
_08015364: .4byte 0x00001BA8
_08015368: .4byte 0x00000EEE
_0801536C: .4byte 0x00001B78
_08015370: .4byte 0x00001BD2
_08015374: .4byte 0x00000FFF
_08015378:
	movs r2, #0
_0801537A:
	ldr r4, _0801546C @ =gUnk_0200283C
	ldr r0, [r4]
	movs r1, #0xde
	lsls r1, r1, #5
	adds r0, r0, r1
	strb r2, [r0]
	ldr r0, [r4]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, [sp, #0x20]
	bl sub_0801BFA8
	movs r7, #0
	ldr r0, [r4]
	ldr r3, _08015470 @ =0x00001B95
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r7, r0
	bge _08015412
	mov sb, r4
	movs r4, #0xdd
	lsls r4, r4, #5
	mov ip, r4
	mov sl, sb
_080153AA:
	mov r5, sb
	ldr r2, [r5]
	ldr r6, _08015474 @ =0x00000EE4
	adds r4, r2, r6
	mov r1, ip
	adds r0, r2, r1
	ldrb r5, [r0]
	adds r3, r7, #0
	muls r3, r5, r3
	lsls r1, r3, #1
	ldrh r4, [r4]
	adds r1, r1, r4
	ldr r4, _08015478 @ =0x00001B88
	adds r2, r2, r4
	ldrh r0, [r2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r3, #2
	ldr r1, [sp, #0x18]
	adds r6, r1, r3
	movs r3, #0
	adds r7, #1
	cmp r3, r5
	bge _08015404
	mov r8, sl
	movs r5, #0xdd
	lsls r5, r5, #5
	adds r4, r0, #1
	adds r2, r0, #0
_080153E6:
	strh r2, [r6]
	mov r0, r8
	ldr r1, [r0]
	adds r1, r1, r5
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r6
	strh r4, [r0]
	adds r6, #2
	adds r4, #2
	adds r2, #2
	adds r3, #1
	ldrb r1, [r1]
	cmp r3, r1
	blt _080153E6
_08015404:
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _08015470 @ =0x00001B95
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r7, r0
	blt _080153AA
_08015412:
	ldr r5, _0801546C @ =gUnk_0200283C
	ldr r4, [r5]
	movs r3, #0xdd
	lsls r3, r3, #5
	adds r0, r4, r3
	ldrb r6, [r0]
	ldr r1, _0801547C @ =0x00001B96
	adds r0, r4, r1
	ldrb r0, [r0]
	mov r8, r0
	ldr r2, _08015480 @ =0x00001BA3
	adds r4, r4, r2
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r1, [r5]
	ldr r3, _08015480 @ =0x00001BA3
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r4, _08015484 @ =0x000010C4
	adds r1, r1, r4
	ldr r0, [r5]
	adds r0, r0, r1
	mov r5, r8
	str r5, [sp]
	lsls r1, r6, #1
	str r1, [sp, #4]
	movs r1, #0x40
	str r1, [sp, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	adds r3, r6, #0
	bl sub_08000CD4
	b _08015506
	.align 2, 0
_0801546C: .4byte gUnk_0200283C
_08015470: .4byte 0x00001B95
_08015474: .4byte 0x00000EE4
_08015478: .4byte 0x00001B88
_0801547C: .4byte 0x00001B96
_08015480: .4byte 0x00001BA3
_08015484: .4byte 0x000010C4
_08015488:
	ldr r6, _08015544 @ =0x00001B9B
	adds r0, r3, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080154A6
	ldr r0, _08015548 @ =gUnk_03000820
	ldrh r1, [r0, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080154A6
	ldr r0, _0801554C @ =0x00001BC8
	adds r1, r3, r0
	movs r0, #0
	strh r0, [r1]
_080154A6:
	ldr r2, [r5]
	ldr r1, _08015550 @ =0x00001B9A
	adds r3, r2, r1
	ldrb r0, [r3]
	cmp r0, #0
	beq _08015506
	ldr r4, _08015554 @ =0x00000EF8
	adds r0, r2, r4
	ldr r0, [r0]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080154CE
	ldr r6, _0801554C @ =0x00001BC8
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, #0
	bne _080154CE
	movs r0, #1
	strb r0, [r3]
_080154CE:
	ldr r1, [r5]
	ldr r3, _08015550 @ =0x00001B9A
	adds r1, r1, r3
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080154E2
	b _08015A36
_080154E2:
	ldr r2, [r5]
	ldr r1, _08015554 @ =0x00000EF8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080154FC
	ldr r4, _0801554C @ =0x00001BC8
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08015506
_080154FC:
	ldr r5, _08015558 @ =0x00000EEF
	adds r0, r2, r5
	ldrb r1, [r0]
	adds r0, r2, r3
	strb r1, [r0]
_08015506:
	ldr r2, _0801555C @ =gUnk_0200283C
	ldr r4, [r2]
	ldr r6, _08015560 @ =0x00001B82
	adds r0, r4, r6
	mov r1, sp
	ldrh r1, [r1, #0x14]
	strh r1, [r0]
	movs r3, #0xdc
	lsls r3, r3, #5
	adds r0, r4, r3
	mov r5, sp
	ldrh r5, [r5, #0x14]
	strh r5, [r0]
	adds r6, #0xc
	adds r5, r4, r6
	ldrh r0, [r5]
	mov sl, r0
	lsls r1, r0, #1
	adds r3, #0x52
	adds r0, r4, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r3, _08015564 @ =0x00000FFF
	ands r3, r0
	cmp r3, #0
	bne _08015568
	mov r0, sl
	adds r0, #1
	strh r0, [r5]
	b _08015A36
	.align 2, 0
_08015544: .4byte 0x00001B9B
_08015548: .4byte gUnk_03000820
_0801554C: .4byte 0x00001BC8
_08015550: .4byte 0x00001B9A
_08015554: .4byte 0x00000EF8
_08015558: .4byte 0x00000EEF
_0801555C: .4byte gUnk_0200283C
_08015560: .4byte 0x00001B82
_08015564: .4byte 0x00000FFF
_08015568:
	ldr r5, _08015580 @ =0x00001B78
	adds r0, r4, r5
	ldr r0, [r0]
	ldr r6, _08015584 @ =0x00001B9B
	adds r1, r4, r6
	adds r0, r0, r3
	ldrb r1, [r1]
	adds r4, r0, r1
	adds r7, r2, #0
	movs r0, #0
	mov r8, r0
	b _080158D4
	.align 2, 0
_08015580: .4byte 0x00001B78
_08015584: .4byte 0x00001B9B
_08015588:
	cmp r5, #0xff
	bne _080155C0
	ldr r0, [r7]
	ldr r1, _080155B4 @ =0x00001B98
	adds r0, r0, r1
	mov r2, r8
	strb r2, [r0]
	ldr r2, [r7]
	ldr r3, _080155B8 @ =0x00001BCA
	adds r1, r2, r3
	movs r0, #8
	strh r0, [r1]
	ldr r4, _080155BC @ =0x00000EF2
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080155AC
	b _08015A36
_080155AC:
	movs r5, #0xef
	lsls r5, r5, #4
	adds r1, r2, r5
	b _0801585A
	.align 2, 0
_080155B4: .4byte 0x00001B98
_080155B8: .4byte 0x00001BCA
_080155BC: .4byte 0x00000EF2
_080155C0:
	cmp r5, #0x88
	beq _080155C6
	b _08015754
_080155C6:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r5, _08015688 @ =gUnk_0200283C
	ldr r1, [r5]
	ldr r6, _0801568C @ =0x00001B9D
	adds r1, r1, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	mov r0, sl
	lsls r2, r0, #1
	ldr r3, _08015690 @ =0x00001BD2
	mov sb, r3
	adds r0, r1, r3
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r4, _08015694 @ =0x00000FFF
	mov ip, r4
	mov r3, ip
	ands r3, r0
	ldr r4, _08015698 @ =0x00001B9E
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, [r5]
	adds r0, r2, r4
	ldr r6, _0801569C @ =0x00000EED
	adds r6, r2, r6
	ldrb r0, [r0]
	ldrb r1, [r6]
	cmp r0, r1
	beq _08015614
	cmp r3, #0
	bne _080156B8
_08015614:
	mov r3, sl
	adds r3, #1
	lsls r3, r3, #0x10
	ldr r6, _080156A0 @ =0x00001B98
	adds r0, r2, r6
	movs r1, #0
	strb r1, [r0]
	ldr r1, [r5]
	ldr r2, _080156A4 @ =0x00001BC8
	adds r0, r1, r2
	movs r6, #0
	strh r6, [r0]
	adds r1, r1, r4
	mov r0, r8
	strb r0, [r1]
	ldr r2, [r5]
	ldr r4, _080156A8 @ =0x00001BCA
	adds r1, r2, r4
	movs r0, #0x10
	strh r0, [r1]
	lsrs r3, r3, #0xf
	mov r6, sb
	adds r0, r2, r6
	adds r0, r0, r3
	ldrh r0, [r0]
	mov r3, ip
	ands r3, r0
	ldr r1, _080156AC @ =0x00001B78
	adds r0, r2, r1
	ldr r0, [r0]
	adds r4, r0, r3
	ldr r3, _0801568C @ =0x00001B9D
	adds r2, r2, r3
	mov r6, r8
	strb r6, [r2]
	ldr r0, [r5]
	adds r1, #0x24
	adds r0, r0, r1
	strb r6, [r0]
	ldr r0, [r5]
	ldr r2, _080156B0 @ =0x00001B9B
	adds r0, r0, r2
	strb r6, [r0]
	ldr r1, [r5]
	subs r3, #0xf
	adds r2, r1, r3
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r6, _080156B4 @ =0x00000EF8
	adds r1, r1, r6
	ldr r0, [r1]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015686
	b _080157D6
_08015686:
	b _0801581C
	.align 2, 0
_08015688: .4byte gUnk_0200283C
_0801568C: .4byte 0x00001B9D
_08015690: .4byte 0x00001BD2
_08015694: .4byte 0x00000FFF
_08015698: .4byte 0x00001B9E
_0801569C: .4byte 0x00000EED
_080156A0: .4byte 0x00001B98
_080156A4: .4byte 0x00001BC8
_080156A8: .4byte 0x00001BCA
_080156AC: .4byte 0x00001B78
_080156B0: .4byte 0x00001B9B
_080156B4: .4byte 0x00000EF8
_080156B8:
	ldr r4, _0801570C @ =0x00001B78
	adds r0, r2, r4
	ldr r0, [r0]
	adds r4, r0, r3
	ldr r6, _08015710 @ =0x00001B9C
	adds r0, r2, r6
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r5]
	ldr r2, _08015714 @ =0x00001B9B
	adds r0, r0, r2
	strb r1, [r0]
	ldr r1, [r5]
	ldr r3, _08015718 @ =0x00001B8E
	adds r2, r1, r3
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r6, _0801571C @ =0x00000EF8
	adds r1, r1, r6
	ldr r0, [r1]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015720
	adds r0, r4, #0
	movs r1, #1
	bl sub_080143E0
	ldr r1, [r5]
	movs r2, #0xdd
	lsls r2, r2, #5
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	lsrs r1, r1, #1
	b _08015722
	.align 2, 0
_0801570C: .4byte 0x00001B78
_08015710: .4byte 0x00001B9C
_08015714: .4byte 0x00001B9B
_08015718: .4byte 0x00001B8E
_0801571C: .4byte 0x00000EF8
_08015720:
	movs r1, #0
_08015722:
	ldr r0, [r7]
	movs r3, #0xde
	lsls r3, r3, #5
	adds r0, r0, r3
	strb r1, [r0]
	ldr r1, [r7]
	ldr r5, _0801574C @ =0x00001B9D
	adds r0, r1, r5
	ldrb r2, [r0]
	ldr r6, _08015750 @ =0x00001B8C
	adds r0, r1, r6
	ldrh r0, [r0]
	muls r0, r2, r0
	lsls r0, r0, #1
	ldr r2, [sp, #0x20]
	adds r0, r2, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	bl sub_0801BFA8
	b _080158D4
	.align 2, 0
_0801574C: .4byte 0x00001B9D
_08015750: .4byte 0x00001B8C
_08015754:
	cmp r5, #0x8a
	beq _0801575A
	b _0801586C
_0801575A:
	mov r3, sl
	adds r3, #1
	lsls r3, r3, #0x10
	ldr r5, _080157F8 @ =gUnk_0200283C
	ldr r0, [r5]
	ldr r4, _080157FC @ =0x00001B98
	adds r0, r0, r4
	mov r6, r8
	strb r6, [r0]
	ldr r1, [r5]
	ldr r2, _08015800 @ =0x00001BC8
	adds r0, r1, r2
	mov r4, r8
	strh r4, [r0]
	ldr r6, _08015804 @ =0x00001B9E
	adds r1, r1, r6
	mov r0, r8
	strb r0, [r1]
	ldr r2, [r5]
	ldr r4, _08015808 @ =0x00001BCA
	adds r1, r2, r4
	movs r0, #0x10
	strh r0, [r1]
	lsrs r3, r3, #0xf
	adds r6, #0x34
	adds r0, r2, r6
	adds r0, r0, r3
	ldrh r1, [r0]
	ldr r3, _0801580C @ =0x00000FFF
	adds r0, r3, #0
	adds r3, r0, #0
	ands r3, r1
	subs r4, #0x52
	adds r0, r2, r4
	ldr r0, [r0]
	adds r4, r0, r3
	subs r6, #0x35
	adds r2, r2, r6
	mov r0, r8
	strb r0, [r2]
	ldr r0, [r5]
	ldr r1, _08015810 @ =0x00001B9C
	adds r0, r0, r1
	mov r2, r8
	strb r2, [r0]
	ldr r0, [r5]
	ldr r3, _08015814 @ =0x00001B9B
	adds r0, r0, r3
	strb r2, [r0]
	ldr r1, [r5]
	subs r6, #0xf
	adds r2, r1, r6
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r0, _08015818 @ =0x00000EF8
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801581C
_080157D6:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080143E0
	ldr r1, [r5]
	movs r2, #0xdd
	lsls r2, r2, #5
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	lsrs r1, r1, #1
	b _0801581E
	.align 2, 0
_080157F8: .4byte gUnk_0200283C
_080157FC: .4byte 0x00001B98
_08015800: .4byte 0x00001BC8
_08015804: .4byte 0x00001B9E
_08015808: .4byte 0x00001BCA
_0801580C: .4byte 0x00000FFF
_08015810: .4byte 0x00001B9C
_08015814: .4byte 0x00001B9B
_08015818: .4byte 0x00000EF8
_0801581C:
	movs r1, #0
_0801581E:
	ldr r0, [r7]
	movs r3, #0xde
	lsls r3, r3, #5
	adds r0, r0, r3
	strb r1, [r0]
	ldr r1, [r7]
	ldr r4, _08015860 @ =0x00001B9D
	adds r0, r1, r4
	ldrb r2, [r0]
	ldr r5, _08015864 @ =0x00001B8C
	adds r0, r1, r5
	ldrh r0, [r0]
	muls r0, r2, r0
	lsls r0, r0, #1
	ldr r6, [sp, #0x20]
	adds r0, r6, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	bl sub_0801BFA8
	ldr r1, [r7]
	ldr r2, _08015868 @ =0x00000EF2
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015854
	b _08015A36
_08015854:
	movs r3, #0xef
	lsls r3, r3, #4
	adds r1, r1, r3
_0801585A:
	movs r0, #1
	strb r0, [r1]
	b _08015A36
	.align 2, 0
_08015860: .4byte 0x00001B9D
_08015864: .4byte 0x00001B8C
_08015868: .4byte 0x00000EF2
_0801586C:
	ldr r2, _080158BC @ =gUnk_0200283C
	ldr r1, [r2]
	ldr r6, _080158C0 @ =0x00001BA8
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015886
	adds r4, #1
	ldr r0, _080158C4 @ =0x00001B9B
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08015886:
	ldr r1, [r2]
	ldr r2, _080158C8 @ =0x00001B9A
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080158D4
	ldr r3, _080158CC @ =0x00000EF2
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801589E
	b _08015A36
_0801589E:
	cmp r5, #1
	bhi _080158A4
	b _08015A36
_080158A4:
	ldr r0, _080158D0 @ =0x0000012B
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080158B2
	b _08015A36
_080158B2:
	movs r0, #0xb4
	bl PlaySE
	b _08015A36
	.align 2, 0
_080158BC: .4byte gUnk_0200283C
_080158C0: .4byte 0x00001BA8
_080158C4: .4byte 0x00001B9B
_080158C8: .4byte 0x00001B9A
_080158CC: .4byte 0x00000EF2
_080158D0: .4byte 0x0000012B
_080158D4:
	ldrb r5, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _080158E4
	movs r0, #0
	adds r1, r5, #0
	b _080158EC
_080158E4:
	cmp r5, #0x89
	bne _080158F6
	movs r0, #0
	movs r1, #0x89
_080158EC:
	movs r2, #1
	movs r3, #0
	bl sub_0801B0C8
	b _0801586C
_080158F6:
	cmp r5, #0x8b
	bne _08015920
	ldr r0, [r7]
	ldr r6, _08015914 @ =0x00000EEE
	adds r1, r0, r6
	mov r2, r8
	strb r2, [r1]
	ldr r3, _08015918 @ =0x00000EEF
	adds r1, r0, r3
	strb r2, [r1]
	ldr r6, _0801591C @ =0x00001B9A
	adds r0, r0, r6
	strb r2, [r0]
	b _0801586C
	.align 2, 0
_08015914: .4byte 0x00000EEE
_08015918: .4byte 0x00000EEF
_0801591C: .4byte 0x00001B9A
_08015920:
	cmp r5, #0x8c
	bne _0801596C
	ldr r2, [r7]
	ldr r1, _08015954 @ =0x00000EF2
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801586C
	ldr r0, _08015958 @ =gUnk_02000000
	ldr r3, _0801595C @ =0x0000132E
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801586C
	ldr r6, _08015960 @ =0x00000EEE
	adds r0, r2, r6
	movs r1, #2
	strb r1, [r0]
	ldr r3, _08015964 @ =0x00000EEF
	adds r0, r2, r3
	strb r1, [r0]
	ldr r6, _08015968 @ =0x00001B9A
	adds r0, r2, r6
	strb r1, [r0]
	b _0801586C
	.align 2, 0
_08015954: .4byte 0x00000EF2
_08015958: .4byte gUnk_02000000
_0801595C: .4byte 0x0000132E
_08015960: .4byte 0x00000EEE
_08015964: .4byte 0x00000EEF
_08015968: .4byte 0x00001B9A
_0801596C:
	cmp r5, #0x80
	bne _08015990
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #4
	ldr r1, _08015988 @ =gUnk_02002800
	adds r0, r0, r1
	bl sub_0801C858
	ldr r1, [r7]
	ldr r0, _0801598C @ =0x00001B9B
	adds r1, r1, r0
	b _08015A0C
	.align 2, 0
_08015988: .4byte gUnk_02002800
_0801598C: .4byte 0x00001B9B
_08015990:
	cmp r5, #0x8d
	bne _080159B4
	ldr r0, [r7]
	ldr r1, _080159B0 @ =0x00000EF8
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080159A8
	b _0801586C
_080159A8:
	movs r0, #0x80
	orrs r1, r0
	str r1, [r2]
	b _0801586C
	.align 2, 0
_080159B0: .4byte 0x00000EF8
_080159B4:
	cmp r5, #0x87
	bne _080159D8
	adds r4, #1
	ldr r1, _080159D0 @ =gUnk_086254D8
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0801C858
	ldr r1, [r7]
	ldr r2, _080159D4 @ =0x00001B9B
	adds r1, r1, r2
	b _08015A0C
	.align 2, 0
_080159D0: .4byte gUnk_086254D8
_080159D4: .4byte 0x00001B9B
_080159D8:
	cmp r5, #0x81
	bne _080159F8
	adds r4, #1
	ldrb r1, [r4]
	movs r0, #0
	movs r2, #1
	movs r3, #1
	bl sub_0801B0C8
	ldr r1, [r7]
	ldr r3, _080159F4 @ =0x00001B9B
	adds r1, r1, r3
	b _08015A0C
	.align 2, 0
_080159F4: .4byte 0x00001B9B
_080159F8:
	adds r0, r5, #0
	adds r0, #0x7d
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08015A18
	adds r4, #1
	ldr r1, [r7]
	ldr r6, _08015A14 @ =0x00001B9B
	adds r1, r1, r6
_08015A0C:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0801586C
	.align 2, 0
_08015A14: .4byte 0x00001B9B
_08015A18:
	cmp r5, #0x85
	beq _08015A1E
	b _08015588
_08015A1E:
	ldr r0, [r7]
	ldr r1, _08015A48 @ =0x00001B98
	adds r0, r0, r1
	mov r2, r8
	strb r2, [r0]
	ldr r2, [r7]
	ldr r3, _08015A4C @ =0x00001BA7
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_08015A36:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015A48: .4byte 0x00001B98
_08015A4C: .4byte 0x00001BA7

	thumb_func_start sub_08015A50
sub_08015A50: @ 0x08015A50
	push {r4, r5, r6, r7, lr}
	ldr r0, _08015AA8 @ =gUnk_0200283C
	ldr r1, [r0]
	ldr r2, _08015AAC @ =0x00000EED
	adds r0, r1, r2
	ldrb r3, [r0]
	movs r4, #0xdc
	lsls r4, r4, #5
	adds r0, r1, r4
	ldrh r2, [r0]
	mov ip, r2
	movs r6, #0
	ldr r5, _08015AB0 @ =0x00001B90
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _08015AC0
	lsls r0, r3, #0x11
	ldr r4, _08015AB4 @ =0xFFFF0000
	adds r0, r0, r4
	lsrs r7, r0, #0x10
	adds r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r5, #0xe
	adds r0, r1, r5
	ldrh r0, [r0]
	cmp r2, r0
	bhs _08015A90
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08015A90:
	ldr r5, _08015AB8 @ =0x00001B74
	adds r0, r1, r5
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	subs r0, r0, r3
	cmp ip, r0
	bge _08015ADA
	ldr r3, _08015ABC @ =0x00001B78
	adds r0, r1, r3
	ldr r1, [r0]
	lsls r0, r4, #1
	b _08015AD4
	.align 2, 0
_08015AA8: .4byte gUnk_0200283C
_08015AAC: .4byte 0x00000EED
_08015AB0: .4byte 0x00001B90
_08015AB4: .4byte 0xFFFF0000
_08015AB8: .4byte 0x00001B74
_08015ABC: .4byte 0x00001B78
_08015AC0:
	movs r7, #0
	cmp r2, #0
	beq _08015ACC
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08015ACC:
	ldr r4, _08015B54 @ =0x00001B78
	adds r0, r1, r4
	ldr r1, [r0]
	lsls r0, r2, #1
_08015AD4:
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r6, r1, r0
_08015ADA:
	ldr r4, _08015B58 @ =gUnk_0200283C
	ldr r1, [r4]
	ldr r5, _08015B5C @ =0x00001B91
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015AF0
	movs r3, #0xdc
	lsls r3, r3, #5
	adds r0, r1, r3
	strh r2, [r0]
_08015AF0:
	ldr r2, [r4]
	ldr r5, _08015B60 @ =0x00000EDC
	adds r1, r2, r5
	ldr r3, _08015B64 @ =0x00001BC4
	adds r0, r2, r3
	ldrh r0, [r0]
	lsls r0, r0, #1
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r5, _08015B68 @ =0x00001B93
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _08015B6C @ =0x00001B92
	adds r2, r2, r0
	adds r0, r7, #1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #6
	adds r0, #2
	adds r7, r1, r0
	adds r0, r7, #0
	bl sub_0801BF60
	ldr r0, [r4]
	ldr r1, _08015B70 @ =0x00000EF8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015B74
	adds r0, r6, #0
	movs r1, #1
	bl sub_080143E0
	ldr r1, [r4]
	movs r2, #0xdd
	lsls r2, r2, #5
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	lsrs r1, r1, #1
	b _08015B76
	.align 2, 0
_08015B54: .4byte 0x00001B78
_08015B58: .4byte gUnk_0200283C
_08015B5C: .4byte 0x00001B91
_08015B60: .4byte 0x00000EDC
_08015B64: .4byte 0x00001BC4
_08015B68: .4byte 0x00001B93
_08015B6C: .4byte 0x00001B92
_08015B70: .4byte 0x00000EF8
_08015B74:
	movs r1, #0
_08015B76:
	ldr r5, _08015C04 @ =gUnk_0200283C
	ldr r0, [r5]
	movs r3, #0xde
	lsls r3, r3, #5
	adds r0, r0, r3
	strb r1, [r0]
	ldr r2, [r5]
	ldr r4, _08015C08 @ =0x00000EF8
	adds r0, r2, r4
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	adds r3, r1, #0
	cmp r0, #0
	beq _08015B9E
	movs r4, #0x80
	lsls r4, r4, #8
	adds r3, r4, #0
_08015B9E:
	ldr r1, _08015C0C @ =0x00001B88
	adds r0, r2, r1
	movs r1, #0
	strh r3, [r0]
	ldr r3, _08015C10 @ =0x00001BA9
	adds r0, r2, r3
	strb r1, [r0]
	ldr r4, _08015C14 @ =0x00001BA8
	adds r0, r2, r4
	strb r1, [r0]
	ldr r4, [r5]
	movs r1, #0xdd
	lsls r1, r1, #5
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08015BFC
	ldr r2, _08015C18 @ =0x00001BA3
	adds r4, r4, r2
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r0, [r5]
	ldr r3, _08015C18 @ =0x00001BA3
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r4, _08015C1C @ =0x000010C4
	adds r0, r0, r4
	ldr r1, [r5]
	adds r0, r1, r0
	movs r5, #0xdd
	lsls r5, r5, #5
	adds r1, r1, r5
	ldrb r3, [r1]
	movs r1, #0
	adds r2, r7, #0
	bl sub_08000C44
_08015BFC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015C04: .4byte gUnk_0200283C
_08015C08: .4byte 0x00000EF8
_08015C0C: .4byte 0x00001B88
_08015C10: .4byte 0x00001BA9
_08015C14: .4byte 0x00001BA8
_08015C18: .4byte 0x00001BA3
_08015C1C: .4byte 0x000010C4

	thumb_func_start sub_08015C20
sub_08015C20: @ 0x08015C20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08015C6C @ =gUnk_0200283C
	ldr r3, [r0]
	ldr r0, _08015C70 @ =0x00000EDC
	adds r1, r3, r0
	ldr r2, _08015C74 @ =0x00001B93
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, [r1]
	adds r1, r1, r0
	subs r2, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #6
	adds r0, #2
	adds r2, r1, r0
	ldr r1, _08015C78 @ =0x00001BAC
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08015C5A
	adds r2, #0xc
_08015C5A:
	mov sl, r2
	mov r4, sl
	ldr r2, _08015C7C @ =0x00001B90
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _08015C80
	adds r4, #0x40
	b _08015C84
	.align 2, 0
_08015C6C: .4byte gUnk_0200283C
_08015C70: .4byte 0x00000EDC
_08015C74: .4byte 0x00001B93
_08015C78: .4byte 0x00001BAC
_08015C7C: .4byte 0x00001B90
_08015C80:
	movs r3, #0x40
	add sl, r3
_08015C84:
	ldr r2, _08015D3C @ =gUnk_0200283C
	ldr r1, [r2]
	ldr r3, _08015D40 @ =0x00000EED
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x11
	ldr r3, _08015D44 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0xa0
	lsls r0, r0, #4
	adds r5, r1, r0
	movs r6, #0
	cmp r6, sb
	bhs _08015CD2
	adds r3, r2, #0
	movs r7, #0xdd
	lsls r7, r7, #5
_08015CAA:
	ldr r0, [r3]
	adds r0, r0, r7
	ldrb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	str r3, [sp, #0xc]
	bl CpuSet
	adds r4, #0x40
	ldr r3, [sp, #0xc]
	ldr r0, [r3]
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r5, r5, r0
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, sb
	blo _08015CAA
_08015CD2:
	ldr r5, _08015D3C @ =gUnk_0200283C
	ldr r4, [r5]
	movs r1, #0xdd
	lsls r1, r1, #5
	adds r0, r4, r1
	ldrb r6, [r0]
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r2, r2, r4
	mov r8, r2
	ldr r3, _08015D48 @ =0x00001BA3
	adds r4, r4, r3
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r1, [r5]
	ldr r0, _08015D48 @ =0x00001BA3
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _08015D4C @ =0x000010C4
	adds r1, r1, r2
	ldr r0, [r5]
	adds r0, r0, r1
	mov r3, sb
	str r3, [sp]
	lsls r1, r6, #1
	str r1, [sp, #4]
	movs r1, #0x40
	str r1, [sp, #8]
	mov r1, r8
	mov r2, sl
	adds r3, r6, #0
	bl sub_08000CD4
	bl sub_08015A50
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015D3C: .4byte gUnk_0200283C
_08015D40: .4byte 0x00000EED
_08015D44: .4byte 0xFFFF0000
_08015D48: .4byte 0x00001BA3
_08015D4C: .4byte 0x000010C4

	thumb_func_start sub_08015D50
sub_08015D50: @ 0x08015D50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r1
	str r2, [sp]
	ldr r4, [sp, #0x30]
	ldr r5, [sp, #0x34]
	ldr r6, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x4c]
	mov r8, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #4]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	str r6, [sp, #0xc]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r3, r8
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldr r7, _08015EFC @ =gUnk_0200283C
	str r0, [r7]
	ldr r1, _08015F00 @ =0x00001C24
	str r2, [sp, #8]
	bl memzero
	ldr r1, [r7]
	ldr r6, _08015F04 @ =0x00000EE4
	adds r0, r1, r6
	movs r3, #0
	mov sl, r3
	mov r6, sb
	strh r6, [r0]
	ldr r3, _08015F08 @ =0x00000ED4
	adds r0, r1, r3
	ldr r6, [sp]
	str r6, [r0]
	adds r3, #0x12
	adds r0, r1, r3
	mov r6, sp
	ldrh r6, [r6, #4]
	strh r6, [r0]
	ldr r0, _08015F0C @ =0x00000EEB
	adds r1, r1, r0
	strb r4, [r1]
	ldr r0, [r7]
	ldr r1, _08015F10 @ =0x00000EE8
	adds r0, r0, r1
	strb r5, [r0]
	ldr r0, [r7]
	adds r3, #3
	adds r0, r0, r3
	mov r4, sp
	ldrb r4, [r4, #0xc]
	strb r4, [r0]
	ldr r0, [r7]
	ldr r6, _08015F14 @ =0x00000EEC
	adds r0, r0, r6
	ldr r2, [sp, #8]
	strb r2, [r0]
	ldr r1, [r7]
	ldr r2, _08015F18 @ =0x00000EFE
	adds r0, r1, r2
	add r3, sp, #0x40
	ldrh r3, [r3]
	strh r3, [r0]
	movs r4, #0xf0
	lsls r4, r4, #4
	adds r0, r1, r4
	add r6, sp, #0x44
	ldrh r6, [r6]
	strh r6, [r0]
	ldr r2, _08015F1C @ =0x00001BAE
	adds r0, r1, r2
	add r3, sp, #0x48
	ldrh r3, [r3]
	strh r3, [r0]
	subs r2, #1
	adds r1, r1, r2
	mov r4, r8
	strb r4, [r1]
	ldr r0, [r7]
	ldr r6, _08015F20 @ =0x00001B9B
	adds r0, r0, r6
	mov r1, sl
	strb r1, [r0]
	ldr r3, [r7]
	ldr r5, _08015F24 @ =0x00000EF8
	adds r0, r3, r5
	ldr r4, [sp, #0x50]
	str r4, [r0]
	adds r2, r3, r2
	ldrb r0, [r2]
	movs r1, #7
	cmp r0, #0
	bne _08015E26
	movs r1, #4
_08015E26:
	ldr r6, _08015F28 @ =0x00001BCC
	adds r0, r3, r6
	strh r1, [r0]
	ldr r0, _08015F2C @ =0x00000ED8
	adds r1, r3, r0
	ldr r0, _08015F30 @ =gUnk_03000E20
	ldr r0, [r0, #0x14]
	str r0, [r1]
	ldr r2, _08015F34 @ =0x00000EDC
	adds r1, r3, r2
	ldr r2, _08015F38 @ =gUnk_03000D60
	ldr r0, [r2, #0x14]
	str r0, [r1]
	movs r4, #0xee
	lsls r4, r4, #4
	adds r1, r3, r4
	ldr r0, [r2, #0x10]
	str r0, [r1]
	ldr r6, _08015F3C @ =0x00000EF1
	adds r0, r3, r6
	mov r1, sl
	strb r1, [r0]
	ldr r0, [r7]
	movs r2, #0xef
	lsls r2, r2, #4
	adds r0, r0, r2
	strb r1, [r0]
	ldr r1, [r7]
	ldr r3, _08015F40 @ =0x00001BBE
	adds r2, r1, r3
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r2]
	ldr r4, _08015F44 @ =0x00001BD0
	adds r1, r1, r4
	movs r6, #1
	strb r6, [r1]
	ldr r1, [r7]
	ldr r2, _08015F48 @ =0x00001B74
	adds r0, r1, r2
	ldr r4, _08015F4C @ =gUnk_02002830
	str r4, [r0]
	ldr r3, [sp, #4]
	lsls r0, r3, #1
	str r0, [r4]
	ldr r0, _08015F50 @ =0x00001BD2
	adds r2, r1, r0
	adds r1, r1, r5
	ldr r3, [r1]
	adds r0, r4, #0
	ldr r1, [sp]
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
	ldr r3, _08015F54 @ =0x00000EED
	adds r1, r1, r3
	strb r0, [r1]
	ldr r2, [r7]
	adds r0, r2, r5
	ldr r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08015F6C
	ldr r4, _08015F58 @ =0x00000EEA
	adds r0, r2, r4
	strb r6, [r0]
	ldr r0, [r7]
	ldr r6, _08015F5C @ =0x00000EEE
	adds r1, r0, r6
	mov r2, sl
	strb r2, [r1]
	adds r3, #2
	adds r0, r0, r3
	strb r2, [r0]
	ldr r0, [r7]
	ldr r4, _08015F60 @ =0x00001B94
	adds r0, r0, r4
	movs r1, #0x1a
	strb r1, [r0]
	ldr r0, [r7]
	subs r6, #1
	adds r1, r0, r6
	ldrb r1, [r1]
	ldr r2, _08015F64 @ =0x00001B95
	adds r0, r0, r2
	strb r1, [r0]
	ldr r2, [r7]
	ldr r3, _08015F68 @ =0x00001BC1
	adds r2, r2, r3
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	b _080160BE
	.align 2, 0
_08015EFC: .4byte gUnk_0200283C
_08015F00: .4byte 0x00001C24
_08015F04: .4byte 0x00000EE4
_08015F08: .4byte 0x00000ED4
_08015F0C: .4byte 0x00000EEB
_08015F10: .4byte 0x00000EE8
_08015F14: .4byte 0x00000EEC
_08015F18: .4byte 0x00000EFE
_08015F1C: .4byte 0x00001BAE
_08015F20: .4byte 0x00001B9B
_08015F24: .4byte 0x00000EF8
_08015F28: .4byte 0x00001BCC
_08015F2C: .4byte 0x00000ED8
_08015F30: .4byte gUnk_03000E20
_08015F34: .4byte 0x00000EDC
_08015F38: .4byte gUnk_03000D60
_08015F3C: .4byte 0x00000EF1
_08015F40: .4byte 0x00001BBE
_08015F44: .4byte 0x00001BD0
_08015F48: .4byte 0x00001B74
_08015F4C: .4byte gUnk_02002830
_08015F50: .4byte 0x00001BD2
_08015F54: .4byte 0x00000EED
_08015F58: .4byte 0x00000EEA
_08015F5C: .4byte 0x00000EEE
_08015F60: .4byte 0x00001B94
_08015F64: .4byte 0x00001B95
_08015F68: .4byte 0x00001BC1
_08015F6C:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08015F8C
	ldr r4, _08015F84 @ =0x00000EEE
	adds r0, r2, r4
	mov r6, sl
	strb r6, [r0]
	ldr r1, _08015F88 @ =0x00000EEF
	adds r0, r2, r1
	strb r6, [r0]
	b _08015FA8
	.align 2, 0
_08015F84: .4byte 0x00000EEE
_08015F88: .4byte 0x00000EEF
_08015F8C:
	ldr r0, _08016004 @ =gUnk_02000000
	ldr r3, _08016008 @ =0x0000132E
	adds r0, r0, r3
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	bne _08015F9C
	movs r1, #2
_08015F9C:
	ldr r4, _0801600C @ =0x00000EEE
	adds r0, r2, r4
	strb r1, [r0]
	ldr r6, _08016010 @ =0x00000EEF
	adds r0, r2, r6
	strb r1, [r0]
_08015FA8:
	ldr r5, _08016014 @ =gUnk_0200283C
	ldr r0, [r5]
	ldr r1, _08016018 @ =0x00000EEA
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	ldr r4, [r5]
	ldr r2, _0801601C @ =0x00001B74
	adds r0, r4, r2
	ldr r0, [r0]
	ldrb r1, [r0, #7]
	lsrs r1, r1, #7
	movs r0, #1
	adds r2, #0x4d
	adds r4, r4, r2
	eors r1, r0
	ldrb r3, [r4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	ldr r3, [r5]
	adds r2, r3, r2
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	adds r6, r5, #0
	cmp r0, #0
	bne _08016092
	ldr r0, _0801601C @ =0x00001B74
	adds r4, r3, r0
	ldr r0, [r4]
	ldrb r1, [r0, #0xa]
	ldr r2, _08016020 @ =0x00001BC6
	adds r0, r3, r2
	strh r1, [r0]
	adds r2, r3, #0
	cmp r1, #0
	beq _08016024
	ldr r0, [r4]
	ldrb r0, [r0, #9]
	lsls r0, r0, #0x1e
	lsrs r3, r0, #0x1f
	b _08016026
	.align 2, 0
_08016004: .4byte gUnk_02000000
_08016008: .4byte 0x0000132E
_0801600C: .4byte 0x00000EEE
_08016010: .4byte 0x00000EEF
_08016014: .4byte gUnk_0200283C
_08016018: .4byte 0x00000EEA
_0801601C: .4byte 0x00001B74
_08016020: .4byte 0x00001BC6
_08016024:
	movs r3, #0
_08016026:
	ldr r1, _08016070 @ =0x00001BAC
	adds r0, r2, r1
	strb r3, [r0]
	adds r3, r6, #0
	ldr r0, [r3]
	adds r2, r0, r1
	ldrb r1, [r2]
	cmp r1, #0
	beq _0801607C
	ldr r4, _08016074 @ =0x00001B74
	adds r0, r0, r4
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	adds r0, r1, r0
	strb r0, [r2]
	ldr r1, [r3]
	ldr r2, _08016070 @ =0x00001BAC
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801605C
	ldr r3, _08016078 @ =0x00001BC4
	adds r1, r1, r3
	movs r0, #6
	strh r0, [r1]
_0801605C:
	ldr r0, [r6]
	movs r4, #0xdd
	lsls r4, r4, #5
	adds r0, r0, r4
	ldrb r1, [r0]
	cmp r1, #0x16
	bls _0801608A
	movs r1, #0x16
	b _0801608A
	.align 2, 0
_08016070: .4byte 0x00001BAC
_08016074: .4byte 0x00001B74
_08016078: .4byte 0x00001BC4
_0801607C:
	movs r6, #0xdd
	lsls r6, r6, #5
	adds r0, r0, r6
	ldrb r1, [r0]
	cmp r1, #0x1c
	bls _0801608A
	movs r1, #0x1c
_0801608A:
	strb r1, [r0]
	bl sub_080141C8
	b _080160BE
_08016092:
	ldr r1, _080160D4 @ =0x00000EED
	adds r0, r3, r1
	ldrb r1, [r0]
	ldr r2, _080160D8 @ =0x00001B95
	adds r0, r3, r2
	strb r1, [r0]
	ldr r0, [r5]
	ldr r3, _080160DC @ =0x00001B74
	adds r1, r0, r3
	ldr r1, [r1]
	ldrb r1, [r1, #6]
	ldr r4, _080160E0 @ =0x00001B9F
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r5]
	movs r6, #0xdd
	lsls r6, r6, #5
	adds r1, r0, r6
	ldrb r1, [r1]
	subs r2, #1
	adds r0, r0, r2
	strb r1, [r0]
_080160BE:
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
_080160D4: .4byte 0x00000EED
_080160D8: .4byte 0x00001B95
_080160DC: .4byte 0x00001B74
_080160E0: .4byte 0x00001B9F

	thumb_func_start sub_080160E4
sub_080160E4: @ 0x080160E4
	push {r4, r5, r6, lr}
	ldr r3, _08016140 @ =gUnk_0200283C
	ldr r2, [r3]
	ldr r0, _08016144 @ =0x00001B78
	adds r4, r2, r0
	ldr r5, _08016148 @ =0x00000ED4
	adds r1, r2, r5
	ldr r5, _0801614C @ =0x00001B74
	adds r0, r2, r5
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r0, [r0]
	adds r0, r1, r0
	ldrh r0, [r0]
	adds r1, r1, r0
	str r1, [r4]
	ldr r1, _08016150 @ =0x00001B95
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r4, _08016154 @ =0x00001B96
	adds r2, r2, r4
	strb r0, [r2]
	ldr r2, [r3]
	ldr r5, _08016158 @ =0x00000EE8
	adds r1, r2, r5
	movs r4, #0
	ldrsb r4, [r1, r4]
	movs r0, #2
	rsbs r0, r0, #0
	adds r6, r3, #0
	cmp r4, r0
	beq _08016164
	adds r0, #1
	cmp r4, r0
	bne _08016180
	ldr r1, _0801615C @ =0x00001B94
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x1c
	subs r0, r0, r1
	asrs r0, r0, #1
	ldr r3, _08016160 @ =0x00001B93
	adds r1, r2, r3
	strb r0, [r1]
	b _08016188
	.align 2, 0
_08016140: .4byte gUnk_0200283C
_08016144: .4byte 0x00001B78
_08016148: .4byte 0x00000ED4
_0801614C: .4byte 0x00001B74
_08016150: .4byte 0x00001B95
_08016154: .4byte 0x00001B96
_08016158: .4byte 0x00000EE8
_0801615C: .4byte 0x00001B94
_08016160: .4byte 0x00001B93
_08016164:
	ldr r4, _08016178 @ =0x00001B94
	adds r0, r2, r4
	ldrb r1, [r0]
	movs r0, #0x1c
	subs r0, r0, r1
	ldr r5, _0801617C @ =0x00001B93
	adds r1, r2, r5
	strb r0, [r1]
	b _08016188
	.align 2, 0
_08016178: .4byte 0x00001B94
_0801617C: .4byte 0x00001B93
_08016180:
	ldrb r1, [r1]
	ldr r3, _080161B4 @ =0x00001B93
	adds r0, r2, r3
	strb r1, [r0]
_08016188:
	ldr r2, [r6]
	ldr r4, _080161B8 @ =0x00000EE9
	adds r1, r2, r4
	movs r3, #0
	ldrsb r3, [r1, r3]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r3, r0
	beq _080161C4
	adds r0, #1
	cmp r3, r0
	bne _080161E0
	ldr r5, _080161BC @ =0x00001B96
	adds r0, r2, r5
	ldrb r1, [r0]
	movs r0, #0x12
	subs r0, r0, r1
	asrs r0, r0, #1
	ldr r3, _080161C0 @ =0x00001B92
	adds r1, r2, r3
	strb r0, [r1]
	b _080161E8
	.align 2, 0
_080161B4: .4byte 0x00001B93
_080161B8: .4byte 0x00000EE9
_080161BC: .4byte 0x00001B96
_080161C0: .4byte 0x00001B92
_080161C4:
	ldr r4, _080161D8 @ =0x00001B96
	adds r0, r2, r4
	ldrb r1, [r0]
	movs r0, #0x12
	subs r0, r0, r1
	ldr r5, _080161DC @ =0x00001B92
	adds r1, r2, r5
	strb r0, [r1]
	b _080161E8
	.align 2, 0
_080161D8: .4byte 0x00001B96
_080161DC: .4byte 0x00001B92
_080161E0:
	ldrb r1, [r1]
	ldr r3, _080162E4 @ =0x00001B92
	adds r0, r2, r3
	strb r1, [r0]
_080161E8:
	ldr r2, [r6]
	ldr r4, _080162E8 @ =0x00001B94
	adds r0, r2, r4
	ldrb r1, [r0]
	adds r1, #2
	ldr r5, _080162EC @ =0x00001B96
	adds r0, r2, r5
	ldrb r0, [r0]
	adds r0, #2
	muls r1, r0, r1
	ldr r3, _080162F0 @ =0x00001B8A
	adds r0, r2, r3
	strh r1, [r0]
	adds r4, #0xc
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #5
	subs r5, #0xa
	adds r1, r2, r5
	strh r0, [r1]
	ldr r1, _080162F4 @ =0x00000EED
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r0, #1
	adds r3, #0x18
	adds r2, r2, r3
	strb r0, [r2]
	ldr r0, [r6]
	adds r4, #7
	adds r3, r0, r4
	ldrb r2, [r3]
	subs r5, #0x18
	adds r0, r0, r5
	ldr r0, [r0]
	ldrb r0, [r0, #7]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	orrs r2, r0
	strb r2, [r3]
	ldr r0, [r6]
	adds r3, r0, r4
	ldrb r2, [r3]
	adds r0, r0, r5
	ldr r0, [r0]
	ldrb r1, [r0, #7]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0
	beq _08016250
	movs r0, #2
	orrs r2, r0
_08016250:
	strb r2, [r3]
	ldr r2, [r6]
	ldr r1, _080162F8 @ =0x00001BC1
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801627A
	adds r4, r2, r4
	ldrb r3, [r4]
	adds r0, r2, r5
	ldr r0, [r0]
	ldrb r1, [r0, #9]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08016278
	movs r0, #2
	orrs r3, r0
_08016278:
	strb r3, [r4]
_0801627A:
	ldr r0, [r6]
	ldr r2, _080162FC @ =0x00001BA4
	adds r0, r0, r2
	movs r2, #0
	strb r2, [r0]
	ldr r3, [r6]
	ldr r4, _08016300 @ =0x00001BCA
	adds r1, r3, r4
	movs r0, #8
	strh r0, [r1]
	ldr r5, _08016304 @ =0x00001B8E
	adds r0, r3, r5
	strh r2, [r0]
	ldr r0, _08016308 @ =0x00000EF8
	adds r2, r3, r0
	ldr r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080162B2
	ldr r4, _0801630C @ =0x00000EF2
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080162B2
	movs r0, #0x10
	orrs r1, r0
	str r1, [r2]
_080162B2:
	ldr r0, [r6]
	ldr r5, _08016310 @ =0x00000EF3
	adds r1, r0, r5
	ldrb r0, [r1]
	cmp r0, #0
	bne _080162C2
	movs r0, #1
	strb r0, [r1]
_080162C2:
	ldr r2, [r6]
	ldr r1, _08016308 @ =0x00000EF8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080162DC
	ldr r3, _08016314 @ =0x00000EFC
	adds r1, r2, r3
	movs r0, #1
	strh r0, [r1]
_080162DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080162E4: .4byte 0x00001B92
_080162E8: .4byte 0x00001B94
_080162EC: .4byte 0x00001B96
_080162F0: .4byte 0x00001B8A
_080162F4: .4byte 0x00000EED
_080162F8: .4byte 0x00001BC1
_080162FC: .4byte 0x00001BA4
_08016300: .4byte 0x00001BCA
_08016304: .4byte 0x00001B8E
_08016308: .4byte 0x00000EF8
_0801630C: .4byte 0x00000EF2
_08016310: .4byte 0x00000EF3
_08016314: .4byte 0x00000EFC

	thumb_func_start sub_08016318
sub_08016318: @ 0x08016318
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _080164C4 @ =gUnk_0200283C
	ldr r1, [r0]
	ldr r3, _080164C8 @ =0x00001B74
	adds r0, r1, r3
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	ldr r2, _080164CC @ =0x00001BA6
	adds r1, r1, r2
	strb r0, [r1]
	ldr r4, _080164C4 @ =gUnk_0200283C
	ldr r2, [r4]
	ldr r5, _080164D0 @ =0x00001BC1
	adds r0, r2, r5
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801635C
	adds r0, r2, r3
	ldr r0, [r0]
	ldrb r1, [r0, #9]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801635C
	b _080166D6
_0801635C:
	ldr r1, _080164D4 @ =0x00000EF8
	adds r0, r2, r1
	ldr r1, [r0]
	lsrs r4, r1, #9
	movs r0, #1
	ands r4, r0
	str r4, [sp, #0xc]
	movs r5, #0xdc
	lsls r5, r5, #4
	adds r5, r2, r5
	str r5, [sp, #0x10]
	adds r0, r2, r3
	ldr r0, [r0]
	ldrb r3, [r0, #7]
	movs r0, #0x18
	ands r0, r3
	cmp r0, #8
	beq _0801638A
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	bne _0801638A
	b _0801649A
_0801638A:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	movs r0, #1
	mov sb, r0
	cmp r1, #0
	beq _0801639C
	movs r1, #2
	mov sb, r1
_0801639C:
	ldr r3, _080164D8 @ =0x00001C22
	mov r8, r3
	adds r0, r2, r3
	movs r4, #4
	rsbs r4, r4, #0
	add r4, sb
	mov sl, r4
	ldrh r0, [r0]
	subs r1, r0, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r5, _080164DC @ =0x00000EFE
	adds r0, r2, r5
	ldrh r0, [r0]
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	movs r2, #6
	movs r3, #2
	bl sub_0801BB1C
	ldr r0, _080164C4 @ =gUnk_0200283C
	ldr r5, [r0]
	ldr r1, _080164E0 @ =0x00000ED8
	adds r0, r5, r1
	movs r6, #0xb
	ldr r2, [sp, #0xc]
	subs r6, r6, r2
	lsls r6, r6, #6
	adds r6, #0x16
	ldr r0, [r0]
	adds r7, r0, r6
	mov r3, r8
	adds r0, r5, r3
	ldrh r4, [r0]
	adds r4, #4
	mov r0, sb
	subs r3, r4, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r1, #6
	mov sb, r1
	ldr r2, _080164E4 @ =0x00001BA3
	adds r5, r5, r2
	ldrb r0, [r5]
	movs r1, #0x60
	str r3, [sp, #0x14]
	bl __umodsi3
	strb r0, [r5]
	ldr r5, _080164C4 @ =gUnk_0200283C
	ldr r1, [r5]
	ldr r0, _080164E4 @ =0x00001BA3
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _080164E8 @ =0x000010C4
	adds r1, r1, r2
	ldr r0, [r5]
	adds r0, r0, r1
	mov r5, sb
	str r5, [sp]
	lsls r4, r4, #0x11
	lsrs r4, r4, #0x10
	str r4, [sp, #4]
	movs r5, #0x40
	str r5, [sp, #8]
	ldr r1, [sp, #0x10]
	adds r2, r7, #0
	ldr r3, [sp, #0x14]
	bl sub_08000CD4
	ldr r0, _080164C4 @ =gUnk_0200283C
	ldr r4, [r0]
	ldr r1, _080164EC @ =0x00000EDC
	adds r0, r4, r1
	ldr r0, [r0]
	adds r7, r0, r6
	ldr r2, _080164E4 @ =0x00001BA3
	adds r4, r4, r2
	ldrb r0, [r4]
	movs r1, #0x60
	bl __umodsi3
	strb r0, [r4]
	ldr r3, _080164C4 @ =gUnk_0200283C
	ldr r0, [r3]
	ldr r4, _080164E4 @ =0x00001BA3
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080164E8 @ =0x000010C4
	adds r0, r0, r1
	ldr r1, [r3]
	adds r0, r1, r0
	add r1, r8
	ldrh r3, [r1]
	mov r2, sl
	subs r3, r3, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r4, sb
	str r4, [sp]
	str r5, [sp, #4]
	movs r1, #0
	adds r2, r7, #0
	bl sub_08000D94
_0801649A:
	ldr r2, _080164C4 @ =gUnk_0200283C
	ldr r1, [r2]
	ldr r5, _080164F0 @ =0x00000EE4
	adds r0, r1, r5
	ldrh r0, [r0]
	adds r0, #0x90
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _080164C8 @ =0x00001B74
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r1, [r0, #7]
	movs r0, #0x18
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	beq _080164F4
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1e
	b _080164F6
	.align 2, 0
_080164C4: .4byte gUnk_0200283C
_080164C8: .4byte 0x00001B74
_080164CC: .4byte 0x00001BA6
_080164D0: .4byte 0x00001BC1
_080164D4: .4byte 0x00000EF8
_080164D8: .4byte 0x00001C22
_080164DC: .4byte 0x00000EFE
_080164E0: .4byte 0x00000ED8
_080164E4: .4byte 0x00001BA3
_080164E8: .4byte 0x000010C4
_080164EC: .4byte 0x00000EDC
_080164F0: .4byte 0x00000EE4
_080164F4:
	movs r0, #1
_080164F6:
	cmp r0, #2
	beq _08016564
	cmp r0, #2
	bgt _08016504
	cmp r0, #1
	beq _0801650C
	b _080166D6
_08016504:
	cmp r0, #3
	bne _0801650A
	b _0801662C
_0801650A:
	b _080166D6
_0801650C:
	mov r1, sl
	ldr r2, [r1]
	ldr r3, _08016554 @ =0x00000EDC
	adds r1, r2, r3
	movs r0, #0xc
	ldr r4, [sp, #0xc]
	subs r0, r0, r4
	lsls r0, r0, #6
	adds r0, #0x1a
	ldr r1, [r1]
	adds r7, r1, r0
	ldr r5, _08016558 @ =0x00000F04
	adds r0, r2, r5
	ldr r6, _0801655C @ =gUnk_02028D20
	subs r5, #0x24
	adds r1, r2, r5
	ldr r3, [r1]
	ldr r4, _08016560 @ =0x00001C18
	adds r1, r2, r4
	ldr r1, [r1]
	str r1, [sp]
	mov r1, sb
	str r1, [sp, #4]
	adds r4, #0xa
	mov r8, r4
	add r2, r8
	ldrh r1, [r2]
	str r1, [sp, #8]
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0801BD60
	mov r0, sl
	ldr r4, [r0]
	b _080165D8
	.align 2, 0
_08016554: .4byte 0x00000EDC
_08016558: .4byte 0x00000F04
_0801655C: .4byte gUnk_02028D20
_08016560: .4byte 0x00001C18
_08016564:
	mov r0, sl
	ldr r4, [r0]
	ldr r1, _08016608 @ =0x00001BAC
	adds r0, r4, r1
	ldrb r5, [r0]
	movs r3, #4
	cmp r5, #0
	beq _08016576
	movs r3, #9
_08016576:
	ldr r2, _0801660C @ =0x00000EDC
	adds r1, r4, r2
	ldr r2, _08016610 @ =0x00001B93
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, [r1]
	adds r2, r2, r0
	lsls r0, r3, #1
	adds r2, r2, r0
	ldr r3, _08016614 @ =0x00001B92
	adds r0, r4, r3
	ldrb r1, [r0]
	subs r3, #0x1e
	adds r0, r4, r3
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, #1
	adds r1, r1, r0
	lsls r1, r1, #6
	adds r7, r2, r1
	cmp r5, #2
	bne _080165AA
	subs r7, #0xa
_080165AA:
	ldr r5, _08016618 @ =0x00000F04
	adds r0, r4, r5
	ldr r6, _0801661C @ =gUnk_02028D20
	subs r5, #0x24
	adds r1, r4, r5
	ldr r3, [r1]
	ldr r2, _08016620 @ =0x00001C18
	adds r1, r4, r2
	ldr r1, [r1]
	str r1, [sp]
	mov r1, sb
	str r1, [sp, #4]
	adds r2, #0xa
	mov r8, r2
	adds r1, r4, r2
	ldrh r1, [r1]
	str r1, [sp, #8]
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0801BD60
	mov r3, sl
	ldr r4, [r3]
_080165D8:
	ldr r1, _08016624 @ =0x00000FE4
	adds r0, r4, r1
	adds r6, #0x80
	adds r2, r7, #0
	adds r2, #0x80
	adds r5, r4, r5
	ldr r3, [r5]
	ldr r5, _08016628 @ =0x00001C1C
	adds r1, r4, r5
	ldr r1, [r1]
	str r1, [sp]
	add r4, r8
	ldrh r1, [r4]
	lsls r1, r1, #1
	add r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	ldrh r1, [r4]
	str r1, [sp, #8]
	adds r1, r6, #0
	bl sub_0801BD60
	b _080166D6
	.align 2, 0
_08016608: .4byte 0x00001BAC
_0801660C: .4byte 0x00000EDC
_08016610: .4byte 0x00001B93
_08016614: .4byte 0x00001B92
_08016618: .4byte 0x00000F04
_0801661C: .4byte gUnk_02028D20
_08016620: .4byte 0x00001C18
_08016624: .4byte 0x00000FE4
_08016628: .4byte 0x00001C1C
_0801662C:
	mov r0, sl
	ldr r4, [r0]
	ldr r1, _080166E8 @ =0x00001BAC
	adds r0, r4, r1
	ldrb r5, [r0]
	movs r3, #4
	cmp r5, #0
	beq _0801663E
	movs r3, #9
_0801663E:
	ldr r2, _080166EC @ =0x00000EDC
	adds r1, r4, r2
	ldr r2, _080166F0 @ =0x00001B93
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, [r1]
	adds r2, r2, r0
	lsls r0, r3, #1
	adds r2, r2, r0
	ldr r3, _080166F4 @ =0x00001B92
	adds r0, r4, r3
	ldrb r1, [r0]
	subs r3, #0x1e
	adds r0, r4, r3
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, #1
	adds r1, r1, r0
	lsls r1, r1, #6
	adds r7, r2, r1
	cmp r5, #2
	bne _08016672
	subs r7, #0xc
_08016672:
	ldr r5, _080166F8 @ =0x00000F04
	adds r0, r4, r5
	ldr r6, _080166FC @ =gUnk_02028D20
	subs r5, #0x24
	adds r1, r4, r5
	ldr r3, [r1]
	ldr r2, _08016700 @ =0x00001C18
	adds r1, r4, r2
	ldr r1, [r1]
	str r1, [sp]
	mov r1, sb
	str r1, [sp, #4]
	adds r2, #0xa
	mov r8, r2
	adds r1, r4, r2
	ldrh r1, [r1]
	str r1, [sp, #8]
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0801BD60
	mov r3, sl
	ldr r4, [r3]
	ldr r1, _08016704 @ =0x00000FE4
	adds r0, r4, r1
	adds r6, #0x80
	movs r2, #0xe1
	lsls r2, r2, #5
	adds r1, r4, r2
	ldrb r2, [r1]
	lsls r2, r2, #1
	adds r2, r7, r2
	adds r5, r4, r5
	ldr r3, [r5]
	ldr r5, _08016708 @ =0x00001C1C
	adds r1, r4, r5
	ldr r1, [r1]
	str r1, [sp]
	add r4, r8
	ldrh r1, [r4]
	lsls r1, r1, #1
	add r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	ldrh r1, [r4]
	str r1, [sp, #8]
	adds r1, r6, #0
	bl sub_0801BD60
_080166D6:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080166E8: .4byte 0x00001BAC
_080166EC: .4byte 0x00000EDC
_080166F0: .4byte 0x00001B93
_080166F4: .4byte 0x00001B92
_080166F8: .4byte 0x00000F04
_080166FC: .4byte gUnk_02028D20
_08016700: .4byte 0x00001C18
_08016704: .4byte 0x00000FE4
_08016708: .4byte 0x00001C1C

	thumb_func_start sub_0801670C
sub_0801670C: @ 0x0801670C
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

