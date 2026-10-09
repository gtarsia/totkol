	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	thumb_func_start sub_08002694
sub_08002694: @ 0x08002694
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x44
	adds r7, r0, #0
	ldr r1, _08002784 @ =gUnk_03000834
	movs r0, #0
	str r0, [r1]
	movs r4, #0
	add r0, sp, #0x30
	mov sb, r0
	add r1, sp, #0x40
	mov r8, r1
	movs r1, #0xff
_080026B2:
	adds r0, r7, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _080026B2
	movs r5, #0
_080026C2:
	lsls r2, r5, #2
	mov r0, sb
	adds r1, r0, r2
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0xff
	strb r0, [r1]
	movs r4, #0
	adds r6, r2, #0
_080026DA:
	adds r0, r4, #0
	movs r1, #0
	mov r2, sp
	movs r3, #0x30
	bl ReadFlash
	mov r0, sp
	ldr r1, _08002788 @ =gUnk_0815DA3C
	movs r2, #8
	bl sub_08003278
	cmp r0, #0
	bne _0800271C
	ldr r2, _08002784 @ =gUnk_03000834
	ldr r0, [r2]
	ldr r1, [sp, #8]
	adds r3, r1, #0
	cmp r0, r1
	bhs _08002702
	str r1, [r2]
_08002702:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, r5
	bne _0800271C
	mov r0, sb
	adds r1, r0, r6
	ldr r0, [r1]
	cmp r0, r3
	bge _0800271C
	str r3, [r1]
	mov r1, r8
	adds r0, r1, r5
	strb r4, [r0]
_0800271C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _080026DA
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _080026C2
	movs r5, #0
	mov r6, sp
_08002734:
	mov r0, r8
	adds r4, r0, r5
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0800276A
	movs r1, #0
	mov r2, sp
	movs r3, #0x30
	bl ReadFlash
	ldrb r0, [r4]
	adds r0, r7, r0
	strb r5, [r0]
	ldrb r1, [r6, #0x12]
	adds r1, r7, r1
	movs r2, #0x10
	adds r0, r5, #0
	orrs r0, r2
	strb r0, [r1]
	cmp r5, #2
	bls _0800276A
	ldrb r0, [r6, #0x13]
	adds r0, r7, r0
	movs r2, #0x20
	adds r1, r5, #0
	orrs r1, r2
	strb r1, [r0]
_0800276A:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08002734
	add sp, #0x44
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002784: .4byte gUnk_03000834
_08002788: .4byte gUnk_0815DA3C

	thumb_func_start sub_0800278C
sub_0800278C: @ 0x0800278C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r1, #0
	adds r6, r2, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r4, #0
	movs r3, #0
	ldr r0, _08002808 @ =gUnk_030010D0
	mov sb, r0
	ldr r1, _0800280C @ =gUnk_030010C0
	mov ip, r1
	movs r0, #0xf
	mov r8, r0
	adds r2, r6, #2
_080027AE:
	mov r1, ip
	adds r0, r3, r1
	ldrb r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, r5
	bne _080027C8
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r2, r1
	strb r3, [r1]
_080027C8:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bls _080027AE
	strh r4, [r6]
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #0xf
	ands r2, r0
	movs r4, #0
	movs r3, #0
	ldr r0, _0800280C @ =gUnk_030010C0
	mov r8, r0
	adds r5, r7, #2
_080027E6:
	mov r1, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080027FC
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r5, r1
	strb r2, [r1]
_080027FC:
	cmp r2, #0xe
	bhi _08002810
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08002812
	.align 2, 0
_08002808: .4byte gUnk_030010D0
_0800280C: .4byte gUnk_030010C0
_08002810:
	movs r2, #0
_08002812:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bls _080027E6
	movs r3, #0
	ldrh r0, [r6]
	cmp r3, r0
	bhs _08002844
	adds r5, r7, #2
	adds r2, r6, #2
_08002828:
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r5, r1
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r1, [r6]
	cmp r3, r1
	blo _08002828
_08002844:
	strh r4, [r7]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002858
sub_08002858: @ 0x08002858
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	mov sl, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r3, r1, #0
	ldr r5, _08002894 @ =0x000021E0
	cmp r2, #0
	bne _0800287C
	movs r5, #0xa1
	lsls r5, r5, #5
_0800287C:
	movs r0, #0
	str r0, [sp, #0x2c]
	mov r8, sl
	ldr r0, _08002898 @ =gFlash
	ldr r0, [r0]
	cmp r0, #0
	bne _0800288C
	b _08002A10
_0800288C:
	cmp r2, #0
	bne _0800289C
	adds r4, r1, #0
	b _080028A2
	.align 2, 0
_08002894: .4byte 0x000021E0
_08002898: .4byte gFlash
_0800289C:
	adds r0, r3, #3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080028A2:
	mov r1, r8
	ldr r0, _08002914 @ =gUnk_0815DA3C
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	mov r7, r8
	str r0, [r7, #0xc]
	strb r0, [r7, #0x12]
	strb r0, [r7, #0x13]
	ldr r0, _08002918 @ =gUnk_03000834
	ldr r0, [r0]
	adds r0, #1
	str r0, [r7, #8]
	strb r4, [r7, #0x11]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #0
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x30]
	cmp r2, r5
	bhs _080028F6
	ldr r6, _0800291C @ =0x00FFFFFF
	ldr r3, _08002920 @ =gUnk_085F5A1C
_080028D6:
	mov r7, sl
	adds r0, r7, r2
	ldrb r0, [r0]
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	ands r1, r6
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r0, [r0]
	eors r1, r0
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	blo _080028D6
_080028F6:
	mvns r1, r1
	mov r0, r8
	str r1, [r0, #0xc]
	adds r0, r4, #0
	mov r1, sp
	ldr r2, [sp, #0x30]
	bl sub_0800278C
	cmp r4, #2
	bhi _08002924
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #1
	bhi _08002934
	b _08002A10
	.align 2, 0
_08002914: .4byte gUnk_0815DA3C
_08002918: .4byte gUnk_03000834
_0800291C: .4byte 0x00FFFFFF
_08002920: .4byte gUnk_085F5A1C
_08002924:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #2
	bhi _08002934
	b _08002A10
_0800292E:
	movs r1, #1
	str r1, [sp, #0x2c]
	b _080029BA
_08002934:
	movs r0, #2
	cmp r4, #2
	bhi _0800293C
	movs r0, #1
_0800293C:
	adds r6, r0, #0
	movs r7, #0
	mov r0, sp
	ldrh r0, [r0]
	cmp r7, r0
	bhs _080029BA
	add r2, sp, #0x28
	mov sb, r2
_0800294C:
	cmp r6, #0
	bne _0800295C
	mov r3, sb
	ldrb r0, [r3, #1]
	mov r1, r8
	strb r0, [r1, #0x12]
	ldrb r0, [r3, #2]
	strb r0, [r1, #0x13]
_0800295C:
	mov r0, sp
	adds r0, #2
	adds r0, r0, r7
	ldrb r4, [r0]
	ldr r1, _08002994 @ =gProgramFlashSector
	lsls r0, r6, #0xc
	mov r2, sl
	adds r5, r2, r0
	ldr r2, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08002988
	adds r0, r4, #0
	adds r1, r5, #0
	bl VerifyFlashSector
	cmp r0, #0
	beq _0800299C
_08002988:
	ldr r0, _08002998 @ =gEraseFlashSector
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	b _080029AC
	.align 2, 0
_08002994: .4byte gProgramFlashSector
_08002998: .4byte gEraseFlashSector
_0800299C:
	mov r3, sb
	adds r0, r3, r6
	strb r4, [r0]
	cmp r6, #0
	beq _0800292E
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080029AC:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, sp
	ldrh r0, [r0]
	cmp r7, r0
	blo _0800294C
_080029BA:
	ldr r0, _08002A08 @ =gUnk_030010C0
	bl sub_08002694
	ldr r7, [sp, #0x2c]
	cmp r7, #0
	beq _08002A10
	movs r4, #0
	movs r7, #0
	ldr r5, [sp, #0x30]
	ldrh r0, [r5]
	cmp r7, r0
	bhs _08002A02
	ldr r6, _08002A0C @ =gEraseFlashSector
_080029D4:
	mov r0, sp
	adds r0, #0x16
	adds r0, r0, r7
	ldrb r0, [r0]
	ldr r1, [r6]
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080029F4
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r1, #3
	bls _080029FC
_080029F4:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r4, #0
_080029FC:
	ldrh r1, [r5]
	cmp r7, r1
	blo _080029D4
_08002A02:
	movs r0, #1
	b _08002A12
	.align 2, 0
_08002A08: .4byte gUnk_030010C0
_08002A0C: .4byte gEraseFlashSector
_08002A10:
	movs r0, #0
_08002A12:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002A24
sub_08002A24: @ 0x08002A24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r3, r1, #0
	ldr r0, _08002AA8 @ =0x000021E0
	mov r8, r0
	cmp r2, #0
	bne _08002A4C
	movs r0, #0xa1
	lsls r0, r0, #5
	mov r8, r0
_08002A4C:
	adds r7, r6, #0
	ldr r0, _08002AAC @ =gFlash
	ldr r0, [r0]
	cmp r0, #0
	bne _08002A58
	b _08002B88
_08002A58:
	cmp r2, #0
	beq _08002A62
	adds r0, r3, #3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08002A62:
	mov sb, sp
	movs r4, #0
	movs r3, #0
	ldr r2, _08002AB0 @ =gUnk_030010C0
	mov sl, r2
	movs r0, #0xf
	mov ip, r0
	mov r5, sp
	adds r5, #2
_08002A74:
	mov r2, sl
	adds r0, r3, r2
	ldrb r2, [r0]
	mov r0, ip
	ands r0, r2
	cmp r0, r1
	bne _08002A8E
	lsrs r0, r2, #4
	adds r0, r5, r0
	strb r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08002A8E:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bls _08002A74
	mov r0, sb
	strh r4, [r0]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08002AB8
	b _08002B88
	.align 2, 0
_08002AA8: .4byte 0x000021E0
_08002AAC: .4byte gFlash
_08002AB0: .4byte gUnk_030010C0
_08002AB4:
	str r1, [r7, #0xc]
	b _08002B76
_08002AB8:
	ldr r0, _08002AFC @ =0x00000FFF
	add r0, r8
	lsrs r0, r0, #0xc
	subs r0, #1
	lsls r0, r0, #0xc
	mov r1, r8
	subs r1, r1, r0
	mov sb, r1
	movs r2, #0
	mov sl, r2
_08002ACC:
	movs r4, #0
	mov r0, sp
	ldrh r0, [r0]
	cmp r4, r0
	bhs _08002B1A
	mov r5, sp
_08002AD8:
	mov r0, sp
	adds r0, #2
	adds r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r5]
	subs r0, #1
	cmp r4, r0
	bge _08002B00
	lsls r2, r4, #0xc
	adds r2, r6, r2
	adds r0, r1, #0
	movs r1, #0
	movs r3, #0x80
	lsls r3, r3, #5
	bl ReadFlash
	b _08002B0E
	.align 2, 0
_08002AFC: .4byte 0x00000FFF
_08002B00:
	lsls r2, r4, #0xc
	adds r2, r6, r2
	adds r0, r1, #0
	movs r1, #0
	mov r3, sb
	bl ReadFlash
_08002B0E:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r5]
	cmp r4, r0
	blo _08002AD8
_08002B1A:
	adds r0, r6, #0
	ldr r1, _08002B7C @ =gUnk_0815DA3C
	movs r2, #8
	bl sub_08003278
	cmp r0, #0
	bne _08002B62
	ldr r4, [r7, #0xc]
	str r0, [r7, #0xc]
	strb r0, [r7, #0x12]
	strb r0, [r7, #0x13]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #0
	cmp r2, r8
	bhs _08002B5C
	ldr r5, _08002B80 @ =0x00FFFFFF
	ldr r3, _08002B84 @ =gUnk_085F5A1C
_08002B3E:
	adds r0, r6, r2
	ldrb r0, [r0]
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	ands r1, r5
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r0, [r0]
	eors r1, r0
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r8
	blo _08002B3E
_08002B5C:
	mvns r1, r1
	cmp r1, r4
	beq _08002AB4
_08002B62:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #2
	bls _08002ACC
	movs r0, #0
	cmp r0, #0
	beq _08002B88
_08002B76:
	movs r0, #1
	b _08002B8A
	.align 2, 0
_08002B7C: .4byte gUnk_0815DA3C
_08002B80: .4byte 0x00FFFFFF
_08002B84: .4byte gUnk_085F5A1C
_08002B88:
	movs r0, #0
_08002B8A:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002B9C
sub_08002B9C: @ 0x08002B9C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	lsls r5, r3, #0x10
	lsrs r0, r5, #0x10
	mov ip, r0
	cmp r6, #0
	bne _08002BD4
	ldr r2, _08002BD0 @ =0x040000D4
	str r7, [r2]
	adds r3, r4, #0
	adds r3, #0x30
	str r3, [r2, #4]
	lsrs r0, r5, #0x11
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	str r3, [r4]
	lsrs r0, r5, #0x12
	strh r0, [r4, #6]
	movs r3, #0
	b _08002C12
	.align 2, 0
_08002BD0: .4byte 0x040000D4
_08002BD4:
	ldr r3, _08002C2C @ =0x040000D4
	str r7, [r3]
	subs r0, r6, #1
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, r4, r2
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	adds r0, #0x30
	adds r0, r4, r0
	str r0, [r3, #4]
	lsrs r0, r5, #0x11
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	lsls r3, r6, #1
	adds r1, r3, r6
	lsls r1, r1, #2
	adds r1, r4, r1
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	adds r0, #0x30
	adds r0, r4, r0
	str r0, [r1]
	lsrs r0, r5, #0x12
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	strh r0, [r1, #6]
_08002C12:
	adds r1, r3, r6
	lsls r1, r1, #2
	adds r2, r4, r1
	mov r0, ip
	strh r0, [r2, #4]
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r1
	str r7, [r0]
	ldr r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002C2C: .4byte 0x040000D4

	thumb_func_start sub_08002C30
sub_08002C30: @ 0x08002C30
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	lsls r5, r3, #0x10
	lsrs r0, r5, #0x10
	mov ip, r0
	cmp r6, #0
	bne _08002C68
	ldr r2, _08002C64 @ =0x040000D4
	str r7, [r2]
	adds r3, r4, #0
	adds r3, #0x30
	str r3, [r2, #4]
	lsrs r0, r5, #0x11
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	str r3, [r4]
	lsrs r0, r5, #0x12
	strh r0, [r4, #6]
	movs r3, #0
	b _08002CA6
	.align 2, 0
_08002C64: .4byte 0x040000D4
_08002C68:
	ldr r3, _08002CD0 @ =0x040000D4
	str r7, [r3]
	subs r0, r6, #1
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, r4, r2
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	adds r0, #0x30
	adds r0, r4, r0
	str r0, [r3, #4]
	lsrs r0, r5, #0x11
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	lsls r3, r6, #1
	adds r1, r3, r6
	lsls r1, r1, #2
	adds r1, r4, r1
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	adds r0, #0x30
	adds r0, r4, r0
	str r0, [r1]
	lsrs r0, r5, #0x12
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	strh r0, [r1, #6]
_08002CA6:
	adds r0, r3, r6
	lsls r3, r0, #2
	adds r1, r4, r3
	ldrh r2, [r1, #6]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08002CBA
	adds r0, r2, #1
	strh r0, [r1, #6]
_08002CBA:
	mov r0, ip
	strh r0, [r1, #4]
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r3
	str r7, [r0]
	ldr r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002CD0: .4byte 0x040000D4

	thumb_func_start sub_08002CD4
sub_08002CD4: @ 0x08002CD4
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r4, #0
	movs r0, #0
	strh r0, [r5]
	strb r4, [r5, #4]
	strb r4, [r5, #5]
	strb r3, [r5, #2]
	movs r0, #0xff
	strb r0, [r5, #3]
	str r1, [r5, #8]
	str r2, [r5, #0xc]
	movs r2, #0
	cmp r2, r3
	bhs _08002D10
	movs r4, #0
_08002CF8:
	ldr r1, [r5, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	str r4, [r0]
	ldr r0, [r5, #0xc]
	adds r0, r0, r2
	strb r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	blo _08002CF8
_08002D10:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002D18
sub_08002D18: @ 0x08002D18
	adds r2, r0, #0
	adds r3, r1, #0
	ldrb r0, [r2, #3]
	cmp r0, #0xff
	beq _08002D34
	ldr r1, [r2, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	str r3, [r0]
	ldrb r1, [r2, #3]
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
_08002D34:
	bx lr
	.align 2, 0

	thumb_func_start sub_08002D38
sub_08002D38: @ 0x08002D38
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r4, [r0, #8]
	lsls r3, r1, #2
	adds r3, r3, r4
	str r2, [r3]
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08002D54
sub_08002D54: @ 0x08002D54
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r5, [r0, #8]
	lsls r4, r1, #2
	adds r4, r4, r5
	str r2, [r4]
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	strb r3, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002D70
sub_08002D70: @ 0x08002D70
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	movs r3, #0
	movs r6, #1
	ldrb r0, [r2, #2]
	cmp r3, r0
	bhs _08002DB2
	ldr r0, [r2, #8]
	ldr r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _08002D92
	str r5, [r4]
	ldr r0, [r2, #0xc]
	strb r3, [r0]
	b _08002DB8
_08002D92:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r0, [r2, #2]
	cmp r3, r0
	bhs _08002DB2
	lsls r0, r3, #2
	adds r0, r0, r4
	ldr r1, [r0]
	cmp r1, #0
	bne _08002D92
	str r5, [r0]
	ldr r0, [r2, #0xc]
	adds r0, r0, r3
	strb r1, [r0]
	movs r6, #0
_08002DB2:
	cmp r6, #0
	beq _08002DB8
_08002DB6:
	b _08002DB6
_08002DB8:
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08002DC0
sub_08002DC0: @ 0x08002DC0
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	cmp r0, #0xff
	beq _08002DD2
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
_08002DD2:
	bx lr

	thumb_func_start sub_08002DD4
sub_08002DD4: @ 0x08002DD4
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldrb r0, [r2, #3]
	cmp r0, #0xff
	beq _08002DE8
	adds r1, r0, #0
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	strb r3, [r0]
_08002DE8:
	bx lr
	.align 2, 0

	thumb_func_start sub_08002DEC
sub_08002DEC: @ 0x08002DEC
	lsls r1, r1, #0x18
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x16
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08002DFC
sub_08002DFC: @ 0x08002DFC
	push {r4, lr}
	adds r1, r0, #0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xff
	strb r0, [r1, #3]
	movs r2, #0
	ldrb r0, [r1, #2]
	cmp r2, r0
	bhs _08002E26
	ldr r3, [r1, #8]
	movs r4, #0
_08002E14:
	lsls r0, r2, #2
	adds r0, r0, r3
	str r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r0, [r1, #2]
	cmp r2, r0
	blo _08002E14
_08002E26:
	movs r0, #0
	strb r0, [r1, #2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08002E30
sub_08002E30: @ 0x08002E30
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0
	strh r0, [r2]
	movs r0, #0xff
	strb r0, [r2, #3]
	movs r1, #0
	ldrb r0, [r2, #2]
	cmp r1, r0
	bhs _08002E5A
	ldr r3, [r2, #8]
	movs r4, #0
_08002E48:
	lsls r0, r1, #2
	adds r0, r0, r3
	str r4, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrb r0, [r2, #2]
	cmp r1, r0
	blo _08002E48
_08002E5A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08002E60
sub_08002E60: @ 0x08002E60
	movs r2, #0
	movs r1, #3
_08002E64:
	str r2, [r0]
	strh r2, [r0, #4]
	adds r0, #0xc
	subs r1, #1
	cmp r1, #0
	bge _08002E64
	bx lr
	.align 2, 0

	thumb_func_start sub_08002E74
sub_08002E74: @ 0x08002E74
	bx lr
	.align 2, 0

	thumb_func_start sub_08002E78
sub_08002E78: @ 0x08002E78
	bx lr
	.align 2, 0

	thumb_func_start sub_08002E7C
sub_08002E7C: @ 0x08002E7C
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r2, #3]
	cmp r0, #0xff
	beq _08002E98
	ldr r0, [r2, #8]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r0, r2
	str r0, [r1]
_08002E98:
	bx lr
	.align 2, 0

	thumb_func_start sub_08002E9C
sub_08002E9C: @ 0x08002E9C
	adds r2, r0, #0
	ldrb r0, [r2, #3]
	cmp r0, #0xff
	beq _08002EB6
	adds r1, r0, #0
	ldr r0, [r2, #8]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r0, r2
	str r0, [r1]
_08002EB6:
	bx lr

	thumb_func_start sub_08002EB8
sub_08002EB8: @ 0x08002EB8
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r2, #3]
	cmp r0, #0xff
	beq _08002ED2
	ldr r0, [r2, #8]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _08002ED4 @ =0x7FFFFFFF
	ands r0, r2
	str r0, [r1]
_08002ED2:
	bx lr
	.align 2, 0
_08002ED4: .4byte 0x7FFFFFFF

	thumb_func_start sub_08002ED8
sub_08002ED8: @ 0x08002ED8
	adds r2, r0, #0
	ldrb r0, [r2, #3]
	cmp r0, #0xff
	beq _08002EF0
	adds r1, r0, #0
	ldr r0, [r2, #8]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _08002EF4 @ =0x7FFFFFFF
	ands r0, r2
	str r0, [r1]
_08002EF0:
	bx lr
	.align 2, 0
_08002EF4: .4byte 0x7FFFFFFF

	thumb_func_start sub_08002EF8
sub_08002EF8: @ 0x08002EF8
	push {lr}
	ldr r2, _08002F14 @ =gUnk_03000DC0
	ldr r1, [r2]
	ldr r0, _08002F18 @ =0x0000A51D
	cmp r1, r0
	bne _08002F24
	ldr r1, [r2, #4]
	ldr r0, _08002F1C @ =0x0000C269
	cmp r1, r0
	bne _08002F24
	ldr r1, _08002F20 @ =gUnk_03000E58
	movs r0, #1
	b _08002F28
	.align 2, 0
_08002F14: .4byte gUnk_03000DC0
_08002F18: .4byte 0x0000A51D
_08002F1C: .4byte 0x0000C269
_08002F20: .4byte gUnk_03000E58
_08002F24:
	ldr r1, _08002F40 @ =gUnk_03000E58
	movs r0, #0
_08002F28:
	str r0, [r1]
	bl sub_08002F50
	bl sub_08003B98
	ldr r0, _08002F44 @ =gUnk_03000DC0
	ldr r1, _08002F48 @ =0x0000A51D
	str r1, [r0]
	ldr r1, _08002F4C @ =0x0000C269
	str r1, [r0, #4]
	pop {r0}
	bx r0
	.align 2, 0
_08002F40: .4byte gUnk_03000E58
_08002F44: .4byte gUnk_03000DC0
_08002F48: .4byte 0x0000A51D
_08002F4C: .4byte 0x0000C269

	thumb_func_start sub_08002F50
sub_08002F50: @ 0x08002F50
	sub sp, #8
	movs r2, #0
	str r2, [sp]
	ldr r1, _08002F80 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r1, #4]
	ldr r0, _08002F84 @ =0x85010000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #4
	strh r2, [r0]
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	str r0, [r1, #4]
	ldr r0, _08002F88 @ =0x81003F00
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #8
	bx lr
	.align 2, 0
_08002F80: .4byte 0x040000D4
_08002F84: .4byte 0x85010000
_08002F88: .4byte 0x81003F00

	thumb_func_start memzero
memzero: @ 0x08002F8C
	cmp r1, #0
	ble _08002F9C
	movs r2, #0
_08002F92:
	strb r2, [r0]
	adds r0, #1
	subs r1, #1
	cmp r1, #0
	bgt _08002F92
_08002F9C:
	bx lr
	.align 2, 0

	thumb_func_start memset2
memset2: @ 0x08002FA0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r1, #0
	ble _08002FB2
_08002FA8:
	strb r2, [r0]
	adds r0, #1
	subs r1, #1
	cmp r1, #0
	bgt _08002FA8
_08002FB2:
	bx lr

	thumb_func_start memcpy2
memcpy2: @ 0x08002FB4
	adds r3, r0, #0
	cmp r2, #0
	ble _08002FC8
_08002FBA:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	subs r2, #1
	cmp r2, #0
	bgt _08002FBA
_08002FC8:
	bx lr
	.align 2, 0

	thumb_func_start sub_08002FCC
sub_08002FCC: @ 0x08002FCC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	mvns r2, r2
	movs r3, #0
	cmp r3, r1
	bhs _08002FFA
	ldr r6, _08003004 @ =0x00FFFFFF
	ldr r5, _08003008 @ =gUnk_085F5A1C
_08002FDC:
	adds r0, r4, r3
	ldrb r0, [r0]
	eors r0, r2
	lsls r0, r0, #0x18
	lsrs r2, r2, #8
	ands r2, r6
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r0, [r0]
	eors r2, r0
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r1
	blo _08002FDC
_08002FFA:
	mvns r2, r2
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08003004: .4byte 0x00FFFFFF
_08003008: .4byte gUnk_085F5A1C

	thumb_func_start sub_0800300C
sub_0800300C: @ 0x0800300C
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r4, #0
	movs r3, #0
	cmp r4, r1
	bhs _08003030
_0800301C:
	ldrb r0, [r2]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #1
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r1
	blo _0800301C
_08003030:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08003038
sub_08003038: @ 0x08003038
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0800304C @ =gUnk_02000000
	bl sub_08003050
	pop {r1}
	bx r1
	.align 2, 0
_0800304C: .4byte gUnk_02000000

	thumb_func_start sub_08003050
sub_08003050: @ 0x08003050
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	movs r0, #2
	bl sub_08003CDC
	cmp r4, #1
	bne _08003076
	movs r0, #2
	bl sub_08000EC4
_08003076:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08002858
	adds r5, r0, #0
	cmp r4, #1
	bne _08003096
	ldr r0, _080030A4 @ =gUnk_02003768
	ldr r1, [r0]
	movs r2, #0xa0
	lsls r2, r2, #0x13
	ldr r3, _080030A8 @ =0x20400001
	movs r0, #2
	bl sub_08000E7C
_08003096:
	bl m4aSoundVSyncOn
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080030A4: .4byte gUnk_02003768
_080030A8: .4byte 0x20400001

	thumb_func_start sub_080030AC
sub_080030AC: @ 0x080030AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _080030C0
	ldr r1, _080030BC @ =gUnk_030010D4
	ldrb r0, [r1]
	strh r0, [r1]
	b _080030CE
	.align 2, 0
_080030BC: .4byte gUnk_030010D4
_080030C0:
	ldr r0, _080030D0 @ =gUnk_030010D4
	ldrh r1, [r0]
	movs r3, #0xff
	lsls r3, r3, #8
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
_080030CE:
	bx lr
	.align 2, 0
_080030D0: .4byte gUnk_030010D4

	thumb_func_start sub_080030D4
sub_080030D4: @ 0x080030D4
	ldr r0, _080030DC @ =gUnk_03001060
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080030DC: .4byte gUnk_03001060

	thumb_func_start sub_080030E0
sub_080030E0: @ 0x080030E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r6, #0
	movs r7, #0xff
	movs r5, #0
	mov r4, sp
_080030F6:
	adds r0, r5, #0
	movs r1, #0
	mov r2, sp
	movs r3, #0x30
	bl ReadFlash
	mov r0, sp
	ldr r1, _08003140 @ =gUnk_0815DA3C
	movs r2, #8
	bl sub_08003278
	cmp r0, #0
	bne _08003126
	mov r0, r8
	cmp r0, #0
	bne _0800311C
	ldrb r0, [r4, #0x11]
	cmp r0, #2
	bhi _08003126
_0800311C:
	ldr r0, [sp, #8]
	cmp r6, r0
	bhs _08003126
	adds r6, r0, #0
	ldrb r7, [r4, #0x11]
_08003126:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bls _080030F6
	adds r0, r7, #0
	add sp, #0x30
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003140: .4byte gUnk_0815DA3C

	thumb_func_start sub_08003144
sub_08003144: @ 0x08003144
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r1, #0
	movs r3, #0
	ldr r7, _08003188 @ =gUnk_030010C0
	movs r0, #0xf
	mov ip, r0
	adds r4, r6, #2
_08003158:
	adds r0, r3, r7
	ldrb r2, [r0]
	mov r0, ip
	ands r0, r2
	cmp r0, r5
	bne _08003170
	lsrs r0, r2, #4
	adds r0, r4, r0
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08003170:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bls _08003158
	strh r1, [r6]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003188: .4byte gUnk_030010C0
_0800318C:
	b _0800318C
	.align 2, 0

	thumb_func_start sub_08003190
sub_08003190: @ 0x08003190
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	movs r1, #0
	b _0800319C
_0800319A:
	adds r2, #1
_0800319C:
	ldrb r0, [r2]
	cmp r0, #9
	beq _0800319A
	cmp r0, #0x20
	beq _0800319A
	ldrb r0, [r2]
	cmp r0, #0x2d
	bne _080031B0
	movs r3, #1
	adds r2, #1
_080031B0:
	ldrb r0, [r2]
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r3, #0x10
	cmp r0, #9
	bhi _080031E2
	ldr r4, _080031EC @ =0x0000FFD0
_080031C0:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	ldrb r0, [r2]
	adds r0, r0, r4
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, #1
	ldrb r0, [r2]
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _080031C0
_080031E2:
	cmp r3, #0
	bne _080031F0
	lsls r0, r1, #0x10
	b _080031F4
	.align 2, 0
_080031EC: .4byte 0x0000FFD0
_080031F0:
	lsls r0, r1, #0x10
	rsbs r0, r0, #0
_080031F4:
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080031FC
sub_080031FC: @ 0x080031FC
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r4, #0
	movs r5, #0
	b _08003208
_08003206:
	adds r2, #2
_08003208:
	ldrh r3, [r2]
	ldrb r0, [r2]
	cmp r0, #9
	beq _08003206
	cmp r3, #0x20
	beq _08003206
	movs r1, #0xff
	ldrb r0, [r2]
	cmp r0, #0x2d
	bne _08003220
	movs r4, #1
	adds r2, #2
_08003220:
	ldrh r3, [r2]
	ands r1, r3
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r6, r4, #0x10
	cmp r0, #9
	bhi _0800325E
	movs r4, #0xff
	ldr r7, _08003268 @ =0x0000FFD0
_08003236:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r0, r4, #0
	ands r0, r3
	adds r0, r0, r7
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r2, #2
	ldrh r3, [r2]
	adds r0, r4, #0
	ands r0, r3
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08003236
_0800325E:
	cmp r6, #0
	bne _0800326C
	lsls r0, r5, #0x10
	b _08003270
	.align 2, 0
_08003268: .4byte 0x0000FFD0
_0800326C:
	lsls r0, r5, #0x10
	rsbs r0, r0, #0
_08003270:
	asrs r0, r0, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08003278
sub_08003278: @ 0x08003278
	push {r4, r5, lr}
	adds r4, r0, #0
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080032AC
	adds r5, r0, #0
_08003288:
	ldrb r3, [r4]
	ldrb r0, [r1]
	cmp r3, r0
	bls _08003294
	movs r0, #1
	b _080032AE
_08003294:
	adds r1, #1
	cmp r3, r0
	bhs _080032A0
	movs r0, #1
	rsbs r0, r0, #0
	b _080032AE
_080032A0:
	adds r4, #1
	cmp r3, #0
	beq _080032AC
	subs r2, #1
	cmp r2, r5
	bne _08003288
_080032AC:
	movs r0, #0
_080032AE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080032B4
sub_080032B4: @ 0x080032B4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r2, #0x9f
	lsls r2, r2, #0x18
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _080032DC
	adds r0, r1, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _080032DC
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _080032E0
_080032DC:
	movs r0, #1
	b _080032E2
_080032E0:
	movs r0, #0
_080032E2:
	bx lr

	thumb_func_start sub_080032E4
sub_080032E4: @ 0x080032E4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r2, #0x9f
	lsls r2, r2, #0x18
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _08003300
	adds r0, r1, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _08003304
_08003300:
	movs r0, #1
	b _08003306
_08003304:
	movs r0, #0
_08003306:
	bx lr

	thumb_func_start sub_08003308
sub_08003308: @ 0x08003308
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08003312
	movs r0, #0
	b _08003314
_08003312:
	movs r0, #1
_08003314:
	bx lr
	.align 2, 0

	thumb_func_start sub_08003318
sub_08003318: @ 0x08003318
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _08003324
	cmp r0, #0x7f
	bne _08003328
_08003324:
	movs r0, #1
	b _0800332A
_08003328:
	movs r0, #0
_0800332A:
	bx lr

	thumb_func_start sub_0800332C
sub_0800332C: @ 0x0800332C
	lsls r0, r0, #0x18
	movs r1, #0xd0
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0800333E
	movs r0, #0
	b _08003340
_0800333E:
	movs r0, #1
_08003340:
	bx lr
	.align 2, 0

	thumb_func_start sub_08003344
sub_08003344: @ 0x08003344
	lsls r0, r0, #0x18
	movs r1, #0x9f
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _08003356
	movs r0, #0
	b _08003358
_08003356:
	movs r0, #1
_08003358:
	bx lr
	.align 2, 0

	thumb_func_start sub_0800335C
sub_0800335C: @ 0x0800335C
	lsls r0, r0, #0x18
	movs r1, #0xe0
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	cmp r0, #0x5e
	bls _0800336E
	movs r0, #0
	b _08003370
_0800336E:
	movs r0, #1
_08003370:
	bx lr
	.align 2, 0

	thumb_func_start sub_08003374
sub_08003374: @ 0x08003374
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r2, #0x9f
	lsls r2, r2, #0x18
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _08003390
	adds r0, r1, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _08003394
_08003390:
	movs r0, #1
	b _08003396
_08003394:
	movs r0, #0
_08003396:
	cmp r0, #0
	bne _080033AC
	cmp r1, #0x1f
	bls _080033A2
	cmp r1, #0x7f
	bne _080033A6
_080033A2:
	movs r0, #1
	b _080033A8
_080033A6:
	movs r0, #0
_080033A8:
	cmp r0, #0
	beq _080033B0
_080033AC:
	movs r0, #0
	b _080033B2
_080033B0:
	movs r0, #1
_080033B2:
	bx lr

	thumb_func_start sub_080033B4
sub_080033B4: @ 0x080033B4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	beq _080033CC
	cmp r0, #9
	beq _080033CC
	cmp r0, #0xd
	beq _080033CC
	cmp r0, #0xa
	beq _080033CC
	cmp r0, #0xc
	bne _080033D0
_080033CC:
	movs r0, #1
	b _080033D2
_080033D0:
	movs r0, #0
_080033D2:
	bx lr

	thumb_func_start sub_080033D4
sub_080033D4: @ 0x080033D4
	lsls r0, r0, #0x18
	movs r1, #0xbf
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _080033E6
	movs r0, #0
	b _080033E8
_080033E6:
	movs r0, #1
_080033E8:
	bx lr
	.align 2, 0

	thumb_func_start sub_080033EC
sub_080033EC: @ 0x080033EC
	adds r2, r0, #0
	adds r3, r2, #0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080033FE
_080033F6:
	adds r2, #1
	ldrb r0, [r2]
	cmp r0, #0
	bne _080033F6
_080033FE:
	ldrb r0, [r1]
	strb r0, [r2]
	lsls r0, r0, #0x18
	adds r1, #1
	adds r2, #1
	cmp r0, #0
	bne _080033FE
	adds r0, r3, #0
	bx lr

	thumb_func_start sub_08003410
sub_08003410: @ 0x08003410
	adds r2, r0, #0
	adds r3, r2, #0
	ldrh r0, [r3]
	cmp r0, #0
	beq _08003422
_0800341A:
	adds r2, #2
	ldrh r0, [r2]
	cmp r0, #0
	bne _0800341A
_08003422:
	ldrh r0, [r1]
	strh r0, [r2]
	lsls r0, r0, #0x10
	adds r1, #2
	adds r2, #2
	cmp r0, #0
	bne _08003422
	adds r0, r3, #0
	bx lr
_08003434:
	ldrh r2, [r0]
	ldrh r3, [r1]
	cmp r2, r3
	bls _08003440
	movs r0, #1
	b _08003454
_08003440:
	adds r1, #2
	cmp r2, r3
	blo _08003450
	adds r0, #2
	cmp r2, #0
	bne _08003434
	movs r0, #0
	b _08003454
_08003450:
	movs r0, #1
	rsbs r0, r0, #0
_08003454:
	bx lr
	.align 2, 0

	thumb_func_start sub_08003458
sub_08003458: @ 0x08003458
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	b _0800346E
_08003464:
	ldrh r0, [r3]
	adds r1, r2, #0
	orrs r1, r0
	strh r1, [r3]
	adds r3, #2
_0800346E:
	ldrb r0, [r4]
	strh r0, [r3]
	adds r4, #1
	cmp r0, #0
	bne _08003464
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003480
sub_08003480: @ 0x08003480
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	b _08003496
_0800348C:
	ldrh r0, [r3]
	adds r1, r2, #0
	orrs r1, r0
	strh r1, [r3]
	adds r3, #2
_08003496:
	ldrb r0, [r4]
	strh r0, [r3]
	adds r4, #1
	cmp r0, #0
	bne _0800348C
	adds r3, #2
	movs r0, #0
	strh r0, [r3]
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080034B0
sub_080034B0: @ 0x080034B0
	adds r2, r0, #0
_080034B2:
	ldrh r0, [r1]
	strh r0, [r2]
	lsls r0, r0, #0x10
	adds r1, #2
	adds r2, #2
	cmp r0, #0
	bne _080034B2
	bx lr
	.align 2, 0

	thumb_func_start sub_080034C4
sub_080034C4: @ 0x080034C4
	adds r1, r0, #0
	movs r2, #0
	b _080034D0
_080034CA:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080034D0:
	ldrh r0, [r1]
	adds r1, #2
	cmp r0, #0
	bne _080034CA
	adds r0, r2, #0
	bx lr

	thumb_func_start sub_080034DC
sub_080034DC: @ 0x080034DC
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r4, r3, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _080034F4
_080034EC:
	adds r3, #2
	ldrh r0, [r3]
	cmp r0, #0
	bne _080034EC
_080034F4:
	movs r5, #1
	rsbs r5, r5, #0
_080034F8:
	lsls r0, r2, #0x10
	ldr r2, _0800351C @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	beq _08003514
	ldrh r0, [r1]
	strh r0, [r3]
	lsls r0, r0, #0x10
	adds r1, #2
	adds r3, #2
	cmp r0, #0
	bne _080034F8
_08003514:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800351C: .4byte 0xFFFF0000

	thumb_func_start sub_08003520
sub_08003520: @ 0x08003520
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r2, r2, #0x10
	ldr r0, _08003544 @ =0xFFFF0000
	adds r2, r2, r0
	lsrs r4, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08003568
	adds r5, r0, #0
_08003538:
	ldrh r0, [r3]
	ldrh r2, [r1]
	cmp r0, r2
	bls _08003548
	movs r0, #1
	b _0800356A
	.align 2, 0
_08003544: .4byte 0xFFFF0000
_08003548:
	adds r1, #2
	cmp r0, r2
	bhs _08003554
	movs r0, #1
	rsbs r0, r0, #0
	b _0800356A
_08003554:
	adds r3, #2
	cmp r0, #0
	beq _08003568
	lsls r0, r4, #0x10
	ldr r2, _08003570 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _08003538
_08003568:
	movs r0, #0
_0800356A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08003570: .4byte 0xFFFF0000

	thumb_func_start sub_08003574
sub_08003574: @ 0x08003574
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r3, #0
	movs r4, #1
	rsbs r4, r4, #0
_08003582:
	lsls r0, r2, #0x10
	ldr r2, _080035CC @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	beq _0800359E
	ldrh r0, [r1]
	strh r0, [r3]
	lsls r0, r0, #0x10
	adds r1, #2
	adds r3, #2
	cmp r0, #0
	bne _08003582
_0800359E:
	adds r1, r2, #0
	lsls r0, r1, #0x10
	ldr r2, _080035CC @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	cmp r1, #0
	ble _080035C4
	movs r4, #0
_080035B0:
	strh r4, [r3]
	adds r3, #2
	adds r1, r2, #0
	lsls r0, r1, #0x10
	ldr r2, _080035CC @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	cmp r1, #0
	bgt _080035B0
_080035C4:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080035CC: .4byte 0xFFFF0000

	thumb_func_start sub_080035D0
sub_080035D0: @ 0x080035D0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r2, #0xbf
	lsls r2, r2, #0x18
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _080035E4
	adds r0, r1, #0
	b _080035EC
_080035E4:
	adds r0, r1, #0
	adds r0, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080035EC:
	bx lr
	.align 2, 0

	thumb_func_start sub_080035F0
sub_080035F0: @ 0x080035F0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	adds r0, r1, #0
	subs r0, #0x61
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _08003606
	adds r2, r1, #0
	subs r2, #0x20
_08003606:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	bx lr

	thumb_func_start sub_0800360C
sub_0800360C: @ 0x0800360C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x11
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08003646
	adds r2, r0, #0
_08003628:
	ldrb r1, [r4]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r3]
	adds r4, #1
	adds r3, #1
	strb r1, [r3]
	adds r3, #1
	lsls r0, r5, #0x10
	ldr r1, _0800364C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	bne _08003628
_08003646:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800364C: .4byte 0xFFFF0000

	thumb_func_start sub_08003650
sub_08003650: @ 0x08003650
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08003668
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r7, #0x2d
	b _0800366A
_08003668:
	movs r7, #0x20
_0800366A:
	adds r5, #6
	movs r0, #0
	strb r0, [r5]
	subs r5, #1
	movs r6, #6
_08003674:
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	strb r0, [r5]
	subs r5, #1
	subs r6, #1
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bne _08003674
	strb r7, [r5]
	subs r5, #1
	subs r6, #1
	cmp r6, #0
	beq _080036AE
	movs r0, #0x20
_080036A4:
	strb r0, [r5]
	subs r5, #1
	subs r6, #1
	cmp r6, #0
	bne _080036A4
_080036AE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080036B4
sub_080036B4: @ 0x080036B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080036D6
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r1, #0x2d
	b _080036D8
_080036D6:
	movs r1, #0x20
_080036D8:
	adds r5, #0xc
	movs r0, #0
	strh r0, [r5]
	subs r5, #2
	movs r6, #6
	mov r7, r8
	orrs r7, r1
_080036E6:
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	mov r1, r8
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	subs r6, #1
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bne _080036E6
	strh r7, [r5]
	subs r5, #2
	subs r6, #1
	cmp r6, #0
	beq _08003728
	movs r0, #0x20
	mov r2, r8
	orrs r2, r0
_0800371E:
	strh r2, [r5]
	subs r5, #2
	subs r6, #1
	cmp r6, #0
	bne _0800371E
_08003728:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003734
sub_08003734: @ 0x08003734
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08003750
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r7, #0x2d
	b _08003752
_08003750:
	movs r7, #0x20
_08003752:
	adds r5, r5, r2
	movs r0, #0
	strb r0, [r5]
	subs r5, #1
	adds r6, r2, #0
_0800375C:
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	strb r0, [r5]
	subs r5, #1
	subs r6, #1
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bne _0800375C
	strb r7, [r5]
	subs r5, #1
	subs r6, #1
	cmp r6, #0
	beq _08003796
	movs r0, #0x20
_0800378C:
	strb r0, [r5]
	subs r5, #1
	subs r6, #1
	cmp r6, #0
	bne _0800378C
_08003796:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800379C
sub_0800379C: @ 0x0800379C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080037C2
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r1, #0x2d
	b _080037C4
_080037C2:
	movs r1, #0x20
_080037C4:
	lsls r0, r3, #1
	adds r5, r5, r0
	movs r0, #0
	strh r0, [r5]
	subs r5, #2
	adds r6, r3, #0
	mov r7, r8
	orrs r7, r1
_080037D4:
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	mov r1, r8
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	subs r6, #1
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bne _080037D4
	strh r7, [r5]
	subs r5, #2
	subs r6, #1
	cmp r6, #0
	beq _08003816
	movs r0, #0x20
	mov r2, r8
	orrs r2, r0
_0800380C:
	strh r2, [r5]
	subs r5, #2
	subs r6, #1
	cmp r6, #0
	bne _0800380C
_08003816:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08003820
sub_08003820: @ 0x08003820
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, #6
	movs r0, #0
	strb r0, [r6]
	subs r6, #1
	movs r7, #6
_08003832:
	lsls r5, r5, #0x10
	asrs r4, r5, #0x10
	movs r0, #1
	ands r4, r0
	lsrs r5, r5, #0x11
	adds r0, r5, #0
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, #0x30
	strb r0, [r6]
	subs r6, #1
	subs r7, #1
	adds r0, r5, #0
	movs r1, #5
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0
	bne _08003832
	subs r7, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _08003876
	movs r1, #0x20
_0800386C:
	strb r1, [r6]
	subs r6, #1
	subs r7, #1
	cmp r7, r0
	bne _0800386C
_08003876:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800387C
sub_0800387C: @ 0x0800387C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	adds r6, #0xc
	movs r0, #0
	strh r0, [r6]
	subs r6, #2
	movs r7, #6
_08003898:
	lsls r5, r5, #0x10
	asrs r4, r5, #0x10
	movs r0, #1
	ands r4, r0
	lsrs r5, r5, #0x11
	adds r0, r5, #0
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, #0x30
	mov r1, r8
	orrs r0, r1
	strh r0, [r6]
	subs r6, #2
	subs r7, #1
	adds r0, r5, #0
	movs r1, #5
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0
	bne _08003898
	subs r7, #1
	movs r1, #1
	rsbs r1, r1, #0
	cmp r7, r1
	beq _080038E6
	movs r0, #0x20
	mov r2, r8
	orrs r2, r0
	adds r0, r1, #0
_080038DC:
	strh r2, [r6]
	subs r6, #2
	subs r7, #1
	cmp r7, r0
	bne _080038DC
_080038E6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080038F0
sub_080038F0: @ 0x080038F0
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #6
	movs r0, #0
	strb r0, [r1]
	subs r1, #1
	movs r3, #6
	movs r5, #7
	ldr r0, _0800393C @ =0x00001FFF
	adds r4, r0, #0
_08003906:
	adds r0, r2, #0
	ands r0, r5
	adds r0, #0x30
	strb r0, [r1]
	subs r1, #1
	subs r3, #1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x13
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bne _08003906
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08003936
	movs r2, #0x20
_0800392C:
	strb r2, [r1]
	subs r1, #1
	subs r3, #1
	cmp r3, r0
	bne _0800392C
_08003936:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800393C: .4byte 0x00001FFF

	thumb_func_start sub_08003940
sub_08003940: @ 0x08003940
	push {r4, r5, r6, r7, lr}
	adds r3, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r3, #0xc
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r5, #6
	movs r7, #7
	ldr r0, _08003998 @ =0x00001FFF
	adds r6, r0, #0
_0800395C:
	lsls r1, r4, #0x10
	asrs r0, r1, #0x10
	ands r0, r7
	adds r0, #0x30
	orrs r0, r2
	strh r0, [r3]
	subs r3, #2
	subs r5, #1
	asrs r1, r1, #0x13
	ands r1, r6
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r1, #0
	bne _0800395C
	subs r5, #1
	movs r1, #1
	rsbs r1, r1, #0
	cmp r5, r1
	beq _08003992
	movs r0, #0x20
	orrs r2, r0
	adds r0, r1, #0
_08003988:
	strh r2, [r3]
	subs r3, #2
	subs r5, #1
	cmp r5, r0
	bne _08003988
_08003992:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003998: .4byte 0x00001FFF

	thumb_func_start sub_0800399C
sub_0800399C: @ 0x0800399C
	push {r4, lr}
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, #6
	movs r0, #0
	strb r0, [r2]
	subs r2, #1
	movs r3, #6
_080039AE:
	adds r4, r2, #0
	subs r2, #1
	lsls r1, r1, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r1
	asrs r0, r0, #0x10
	cmp r0, #9
	bgt _080039C4
	adds r0, #0x30
	b _080039C6
_080039C4:
	adds r0, #0x37
_080039C6:
	strb r0, [r4]
	subs r3, #1
	lsrs r0, r1, #0x14
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bne _080039AE
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _080039EA
	movs r1, #0x20
_080039E0:
	strb r1, [r2]
	subs r2, #1
	subs r3, #1
	cmp r3, r0
	bne _080039E0
_080039EA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080039F0
sub_080039F0: @ 0x080039F0
	push {r4, r5, lr}
	adds r3, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r3, #0xc
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r4, #6
_08003A06:
	adds r2, r3, #0
	subs r3, #2
	lsls r1, r1, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r1
	asrs r0, r0, #0x10
	cmp r0, #9
	bgt _08003A1C
	adds r0, #0x30
	b _08003A1E
_08003A1C:
	adds r0, #0x37
_08003A1E:
	orrs r0, r5
	strh r0, [r2]
	subs r4, #1
	lsrs r0, r1, #0x14
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bne _08003A06
	subs r4, #1
	movs r1, #1
	rsbs r1, r1, #0
	cmp r4, r1
	beq _08003A4A
	movs r0, #0x20
	adds r2, r5, #0
	orrs r2, r0
	adds r0, r1, #0
_08003A40:
	strh r2, [r3]
	subs r3, #2
	subs r4, #1
	cmp r4, r0
	bne _08003A40
_08003A4A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08003A50
sub_08003A50: @ 0x08003A50
	push {r4, r5, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	ldr r5, _08003A6C @ =gUnk_03000840
	cmp r0, #0
	bne _08003A64
	ldr r0, _08003A70 @ =gUnk_03000850
	str r0, [r5]
_08003A64:
	ldr r3, [r5]
	adds r2, r4, #0
	adds r4, r1, #0
	b _08003A7E
	.align 2, 0
_08003A6C: .4byte gUnk_03000840
_08003A70: .4byte gUnk_03000850
_08003A74:
	ldrh r0, [r3]
	adds r1, r4, #0
	orrs r1, r0
	strh r1, [r3]
	adds r3, #2
_08003A7E:
	ldrb r0, [r2]
	strh r0, [r3]
	adds r2, #1
	cmp r0, #0
	bne _08003A74
	adds r3, #2
	movs r0, #0
	strh r0, [r3]
	subs r0, r3, #2
	str r0, [r5]
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08003A98
sub_08003A98: @ 0x08003A98
	lsrs r2, r1, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x12
	ldr r0, [r0, #0x14]
	adds r0, r0, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x17
	adds r1, r0, r1
	ldr r2, _08003ABC @ =gUnk_03000850
_08003AAA:
	ldrh r0, [r2]
	strh r0, [r1]
	lsls r0, r0, #0x10
	adds r2, #2
	adds r1, #2
	cmp r0, #0
	bne _08003AAA
	bx lr
	.align 2, 0
_08003ABC: .4byte gUnk_03000850

	thumb_func_start sub_08003AC0
sub_08003AC0: @ 0x08003AC0
	ldr r1, _08003B0C @ =gUnk_03001070
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	ldr r1, _08003B10 @ =gUnk_03001090
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	ldr r1, _08003B14 @ =gUnk_03000D60
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	ldr r1, _08003B18 @ =gUnk_03000E20
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	bx lr
	.align 2, 0
_08003B0C: .4byte gUnk_03001070
_08003B10: .4byte gUnk_03001090
_08003B14: .4byte gUnk_03000D60
_08003B18: .4byte gUnk_03000E20

	thumb_func_start sub_08003B1C
sub_08003B1C: @ 0x08003B1C
	adds r3, r0, #0
	cmp r1, #2
	beq _08003B28
	cmp r1, #3
	beq _08003B60
	b _08003B92
_08003B28:
	ldr r0, _08003B5C @ =gUnk_03000DD0
	ldrh r1, [r3]
	ldrh r2, [r0, #0x1a]
	strh r1, [r0, #0x1a]
	ldrh r1, [r3, #2]
	ldrh r2, [r0, #0x1c]
	strh r1, [r0, #0x1c]
	ldrh r1, [r3, #4]
	ldrh r2, [r0, #0x1e]
	strh r1, [r0, #0x1e]
	ldrh r1, [r3, #6]
	ldrh r2, [r0, #0x20]
	strh r1, [r0, #0x20]
	ldr r1, [r3, #8]
	ldrh r2, [r0, #0x22]
	strh r1, [r0, #0x22]
	asrs r1, r1, #0x10
	ldrh r2, [r0, #0x24]
	strh r1, [r0, #0x24]
	ldr r1, [r3, #0xc]
	ldrh r2, [r0, #0x26]
	strh r1, [r0, #0x26]
	asrs r1, r1, #0x10
	ldrh r2, [r0, #0x28]
	strh r1, [r0, #0x28]
	b _08003B92
	.align 2, 0
_08003B5C: .4byte gUnk_03000DD0
_08003B60:
	ldr r0, _08003B94 @ =gUnk_03000DD0
	ldrh r1, [r3]
	ldrh r2, [r0, #0x2a]
	strh r1, [r0, #0x2a]
	ldrh r1, [r3, #2]
	ldrh r2, [r0, #0x2c]
	strh r1, [r0, #0x2c]
	ldrh r1, [r3, #4]
	ldrh r2, [r0, #0x2e]
	strh r1, [r0, #0x2e]
	ldrh r1, [r3, #6]
	ldrh r2, [r0, #0x30]
	strh r1, [r0, #0x30]
	ldr r1, [r3, #8]
	ldrh r2, [r0, #0x32]
	strh r1, [r0, #0x32]
	asrs r1, r1, #0x10
	ldrh r2, [r0, #0x34]
	strh r1, [r0, #0x34]
	ldr r1, [r3, #0xc]
	ldrh r2, [r0, #0x36]
	strh r1, [r0, #0x36]
	asrs r1, r1, #0x10
	ldrh r2, [r0, #0x38]
	strh r1, [r0, #0x38]
_08003B92:
	bx lr
	.align 2, 0
_08003B94: .4byte gUnk_03000DD0

	thumb_func_start sub_08003B98
sub_08003B98: @ 0x08003B98
	push {lr}
	bl sub_08003BAC
	bl sub_08003BD4
	bl sub_08003C38
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003BAC
sub_08003BAC: @ 0x08003BAC
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08003BCC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08003BD0 @ =0x8100C000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08003BCC: .4byte 0x040000D4
_08003BD0: .4byte 0x8100C000

	thumb_func_start sub_08003BD4
sub_08003BD4: @ 0x08003BD4
	push {r4, lr}
	movs r0, #0xe0
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r1, #0
	movs r1, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r4, r3, #0
	movs r3, #0x1f
_08003BEA:
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	subs r3, #1
	cmp r3, #0
	bge _08003BEA
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003C38
sub_08003C38: @ 0x08003C38
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08003C58 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08003C5C @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08003C58: .4byte 0x040000D4
_08003C5C: .4byte 0x81000200

	thumb_func_start sub_08003C60
sub_08003C60: @ 0x08003C60
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	ldr r1, [r0, #0x14]
	ldr r0, [r0]
	ldrh r0, [r0]
	lsrs r0, r0, #0xe
	adds r4, r0, #1
	movs r3, #0
	cmp r3, r4
	bhs _08003C9E
	mov r5, sp
	ldr r2, _08003CA8 @ =0x040000D4
	ldr r7, _08003CAC @ =0x81000400
	movs r6, #0x80
	lsls r6, r6, #5
_08003C84:
	mov r0, ip
	strh r0, [r5]
	mov r0, sp
	str r0, [r2]
	str r1, [r2, #4]
	str r7, [r2, #8]
	ldr r0, [r2, #8]
	adds r1, r1, r6
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r4
	blo _08003C84
_08003C9E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003CA8: .4byte 0x040000D4
_08003CAC: .4byte 0x81000400

	thumb_func_start sub_08003CB0
sub_08003CB0: @ 0x08003CB0
	ldr r2, _08003CD8 @ =0x04000004
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08003CC8
	movs r3, #1
_08003CBE:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08003CBE
_08003CC8:
	ldr r2, _08003CD8 @ =0x04000004
	movs r3, #1
_08003CCC:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08003CCC
	bx lr
	.align 2, 0
_08003CD8: .4byte 0x04000004

	thumb_func_start sub_08003CDC
sub_08003CDC: @ 0x08003CDC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r2, #0
	cmp r2, r5
	bhs _08003D1A
_08003CE8:
	ldr r3, _08003D20 @ =0x04000004
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	adds r4, r2, #1
	cmp r0, #0
	beq _08003D04
	adds r2, r3, #0
	movs r3, #1
_08003CFA:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08003CFA
_08003D04:
	ldr r2, _08003D20 @ =0x04000004
	movs r3, #1
_08003D08:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08003D08
	lsls r0, r4, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	blo _08003CE8
_08003D1A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003D20: .4byte 0x04000004

	thumb_func_start sub_08003D24
sub_08003D24: @ 0x08003D24
	push {r4, lr}
	ldr r4, _08003D34 @ =gUnk_03000DD0
	adds r0, r4, #0
	movs r1, #0x50
	bl memzero
	b _08003D3A
	.align 2, 0
_08003D34: .4byte gUnk_03000DD0
_08003D38:
	b _08003D38
_08003D3A:
	ldr r0, _08003D60 @ =gUnk_03000DD0
	movs r1, #0x60
	strh r1, [r0]
	ldrh r1, [r0, #0x1e]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0, #0x1e]
	ldrh r1, [r0, #0x1e]
	ldrh r3, [r0, #0x1a]
	strh r1, [r0, #0x1a]
	ldrh r1, [r0, #0x2e]
	strh r2, [r0, #0x2e]
	ldrh r1, [r0, #0x2e]
	ldrh r2, [r0, #0x2a]
	strh r1, [r0, #0x2a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003D60: .4byte gUnk_03000DD0

	thumb_func_start sub_08003D64
sub_08003D64: @ 0x08003D64
	movs r3, #0xa0
	lsls r3, r3, #0x13
	ldr r0, _08003D84 @ =gUnk_02003768
	ldr r1, [r0]
	ldrb r2, [r1]
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r3]
	ldr r3, _08003D88 @ =gUnk_02002400
	ldrb r2, [r1]
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r3]
	bx lr
	.align 2, 0
_08003D84: .4byte gUnk_02003768
_08003D88: .4byte gUnk_02002400

	thumb_func_start sub_08003D8C
sub_08003D8C: @ 0x08003D8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08003DB4 @ =gUnk_02003768
	str r4, [r0]
	ldr r0, _08003DB8 @ =gUnk_03002960
	ldr r2, _08003DBC @ =sub_08003D64
	movs r1, #1
	bl sub_08002D38
	movs r2, #0xa0
	lsls r2, r2, #0x13
	ldr r3, _08003DC0 @ =0x20400001
	movs r0, #2
	adds r1, r4, #0
	bl sub_08000E7C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003DB4: .4byte gUnk_02003768
_08003DB8: .4byte gUnk_03002960
_08003DBC: .4byte sub_08003D64
_08003DC0: .4byte 0x20400001

	thumb_func_start sub_08003DC4
sub_08003DC4: @ 0x08003DC4
	push {lr}
	ldr r1, _08003DDC @ =gUnk_02002400
	strh r0, [r1]
	movs r0, #2
	bl sub_08000EC4
	ldr r0, _08003DE0 @ =gUnk_03002960
	bl sub_08002E30
	pop {r0}
	bx r0
	.align 2, 0
_08003DDC: .4byte gUnk_02002400
_08003DE0: .4byte gUnk_03002960

	thumb_func_start sub_08003DE4
sub_08003DE4: @ 0x08003DE4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08003DFC @ =gUnk_03000DD0
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r1, [r0]
	bx lr
	.align 2, 0
_08003DFC: .4byte gUnk_03000DD0

	thumb_func_start sub_08003E00
sub_08003E00: @ 0x08003E00
	push {r4, lr}
	ldrb r0, [r1]
	cmp r0, #0x29
	bls _08003E0A
	b _08003F9E
_08003E0A:
	lsls r0, r0, #2
	ldr r1, _08003E14 @ =_08003E18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003E14: .4byte _08003E18
_08003E18: @ jump table
	.4byte _08003EC0 @ case 0
	.4byte _08003ED8 @ case 1
	.4byte _08003EF8 @ case 2
	.4byte _08003F9E @ case 3
	.4byte _08003F9E @ case 4
	.4byte _08003F9E @ case 5
	.4byte _08003F9E @ case 6
	.4byte _08003F9E @ case 7
	.4byte _08003F9E @ case 8
	.4byte _08003F9E @ case 9
	.4byte _08003F38 @ case 10
	.4byte _08003F9E @ case 11
	.4byte _08003F9E @ case 12
	.4byte _08003F9E @ case 13
	.4byte _08003F9E @ case 14
	.4byte _08003F9E @ case 15
	.4byte _08003F9E @ case 16
	.4byte _08003F9E @ case 17
	.4byte _08003F9E @ case 18
	.4byte _08003F9E @ case 19
	.4byte _08003F9E @ case 20
	.4byte _08003F9E @ case 21
	.4byte _08003F9E @ case 22
	.4byte _08003F9E @ case 23
	.4byte _08003F9E @ case 24
	.4byte _08003F9E @ case 25
	.4byte _08003F9E @ case 26
	.4byte _08003F9E @ case 27
	.4byte _08003F9E @ case 28
	.4byte _08003F9E @ case 29
	.4byte _08003F48 @ case 30
	.4byte _08003F58 @ case 31
	.4byte _08003F9E @ case 32
	.4byte _08003F9E @ case 33
	.4byte _08003F9E @ case 34
	.4byte _08003F9E @ case 35
	.4byte _08003F9E @ case 36
	.4byte _08003F9E @ case 37
	.4byte _08003F9E @ case 38
	.4byte _08003F9E @ case 39
	.4byte _08003F68 @ case 40
	.4byte _08003F94 @ case 41
_08003EC0:
	bl sub_08003D24
	ldr r4, _08003ED0 @ =gUnk_03000E60
	adds r0, r4, #0
	bl sub_08002DC0
	ldr r1, _08003ED4 @ =sub_08004064
	b _08003EE6
	.align 2, 0
_08003ED0: .4byte gUnk_03000E60
_08003ED4: .4byte sub_08004064
_08003ED8:
	bl sub_08003D24
	ldr r4, _08003EF0 @ =gUnk_03000E60
	adds r0, r4, #0
	bl sub_08002DC0
	ldr r1, _08003EF4 @ =sub_081547D4
_08003EE6:
	adds r0, r4, #0
	bl sub_08002D18
	b _08003F9E
	.align 2, 0
_08003EF0: .4byte gUnk_03000E60
_08003EF4: .4byte sub_081547D4
_08003EF8:
	ldr r1, _08003F1C @ =gUnk_02000000
	ldr r2, _08003F20 @ =0x000013B8
	adds r0, r1, r2
	ldr r2, _08003F24 @ =0x000003E7
	strh r2, [r0]
	ldr r3, _08003F28 @ =0x000013B6
	adds r0, r1, r3
	strh r2, [r0]
	ldr r0, _08003F2C @ =0x000013B4
	adds r1, r1, r0
	strh r2, [r1]
	movs r0, #3
	bl sub_08157AD0
	ldr r0, _08003F30 @ =gUnk_03000E60
	ldr r2, _08003F34 @ =sub_08157534
	b _08003F7A
	.align 2, 0
_08003F1C: .4byte gUnk_02000000
_08003F20: .4byte 0x000013B8
_08003F24: .4byte 0x000003E7
_08003F28: .4byte 0x000013B6
_08003F2C: .4byte 0x000013B4
_08003F30: .4byte gUnk_03000E60
_08003F34: .4byte sub_08157534
_08003F38:
	ldr r0, _08003F40 @ =gUnk_03000E60
	ldr r2, _08003F44 @ =sub_08151990
	b _08003F7A
	.align 2, 0
_08003F40: .4byte gUnk_03000E60
_08003F44: .4byte sub_08151990
_08003F48:
	ldr r0, _08003F50 @ =gUnk_03000E60
	ldr r2, _08003F54 @ =sub_08003FD4
	b _08003F7A
	.align 2, 0
_08003F50: .4byte gUnk_03000E60
_08003F54: .4byte sub_08003FD4
_08003F58:
	ldr r0, _08003F60 @ =gUnk_03000E60
	ldr r2, _08003F64 @ =sub_08003FAC
	b _08003F7A
	.align 2, 0
_08003F60: .4byte gUnk_03000E60
_08003F64: .4byte sub_08003FAC
_08003F68:
	bl sub_08144258
	ldr r1, _08003F84 @ =gUnk_03000E50
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08003F88 @ =sub_08003E00
	str r0, [r1, #4]
	ldr r0, _08003F8C @ =gUnk_03000E60
	ldr r2, _08003F90 @ =sub_08127C3C
_08003F7A:
	movs r1, #1
	bl sub_08002D38
	b _08003F9E
	.align 2, 0
_08003F84: .4byte gUnk_03000E50
_08003F88: .4byte sub_08003E00
_08003F8C: .4byte gUnk_03000E60
_08003F90: .4byte sub_08127C3C
_08003F94:
	ldr r0, _08003FA4 @ =gUnk_03000E60
	ldr r2, _08003FA8 @ =sub_0804767C
	movs r1, #1
	bl sub_08002D38
_08003F9E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003FA4: .4byte gUnk_03000E60
_08003FA8: .4byte sub_0804767C

	thumb_func_start sub_08003FAC
sub_08003FAC: @ 0x08003FAC
	push {lr}
	ldr r0, _08003FC8 @ =gUnk_02004440
	movs r1, #0
	movs r2, #0
	bl sub_08152FA4
	ldr r0, _08003FCC @ =gUnk_03000E60
	ldr r2, _08003FD0 @ =sub_081531AC
	movs r1, #1
	bl sub_08002D38
	pop {r0}
	bx r0
	.align 2, 0
_08003FC8: .4byte gUnk_02004440
_08003FCC: .4byte gUnk_03000E60
_08003FD0: .4byte sub_081531AC

	thumb_func_start sub_08003FD4
sub_08003FD4: @ 0x08003FD4
	push {lr}
	ldrb r0, [r1]
	cmp r0, #0
	bne _08003FEA
	bl sub_081186F4
	ldr r0, _08003FF0 @ =gUnk_03000E60
	ldr r2, _08003FF4 @ =sub_0804767C
	movs r1, #1
	bl sub_08002D38
_08003FEA:
	pop {r0}
	bx r0
	.align 2, 0
_08003FF0: .4byte gUnk_03000E60
_08003FF4: .4byte sub_0804767C
