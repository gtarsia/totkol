	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080008EC
sub_080008EC: @ 0x080008EC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800091C @ =gUnk_03002CEC
	ldr r4, [r0]
	cmp r4, #0
	beq _080009CC
_080008F6:
	ldr r0, _08000920 @ =gUnk_03000E60
	ldrh r1, [r0]
	cmp r1, #1
	bne _08000906
	ldrb r0, [r4, #1]
	ands r1, r0
	cmp r1, #0
	bne _080009C6
_08000906:
	ldrb r1, [r4, #1]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08000916
	ldr r1, _08000924 @ =gUnk_03002CE8
	ldr r0, [r4, #4]
	str r0, [r1]
_08000916:
	ldr r7, _08000928 @ =gUnk_03002CE0
	b _08000980
	.align 2, 0
_0800091C: .4byte gUnk_03002CEC
_08000920: .4byte gUnk_03000E60
_08000924: .4byte gUnk_03002CE8
_08000928: .4byte gUnk_03002CE0
_0800092C:
	ldr r1, _08000994 @ =gUnk_085F5A0C
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r1, [r4, #1]
	movs r6, #2
	adds r0, r6, #0
	ands r0, r1
	ldr r1, _08000998 @ =gUnk_03002CE8
	cmp r0, #0
	bne _08000944
	adds r1, r5, #0
_08000944:
	str r1, [r2]
	ldr r0, [r4, #8]
	str r0, [r2, #4]
	ldr r0, [r4, #0xc]
	str r0, [r2, #8]
	adds r0, r3, #0
	bl sub_08003FF8
	ldrb r0, [r4]
	cmp r0, #1
	bne _080009BE
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080009BE
	ldrb r1, [r4, #1]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08000978
	ldrh r1, [r4, #0x12]
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_08000978:
	ldrh r1, [r4, #0x14]
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
_08000980:
	ldr r0, [r4, #4]
	ldr r1, _0800099C @ =0x07FFFFFF
	adds r5, r0, #0
	cmp r5, r1
	bhi _08000990
	ldr r0, [r4, #8]
	cmp r0, r1
	bls _080009A0
_08000990:
	movs r3, #3
	b _080009A2
	.align 2, 0
_08000994: .4byte gUnk_085F5A0C
_08000998: .4byte gUnk_03002CE8
_0800099C: .4byte 0x07FFFFFF
_080009A0:
	movs r3, #0
_080009A2:
	cmp r3, #3
	bgt _080009BE
	lsls r0, r3, #1
	adds r1, r0, r7
	b _080009B4
_080009AC:
	adds r1, #2
	adds r3, #1
	cmp r3, #3
	bgt _080009BE
_080009B4:
	ldrh r0, [r1]
	cmp r0, #0
	bne _080009AC
	cmp r3, #3
	ble _0800092C
_080009BE:
	ldrb r1, [r4, #1]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #1]
_080009C6:
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _080008F6
_080009CC:
	ldr r0, _080009F0 @ =gUnk_03002CEC
	ldr r4, [r0]
	movs r2, #0
	str r2, [r0]
	cmp r4, #0
	beq _080009FE
	movs r5, #0x80
	adds r3, r0, #0
_080009DC:
	ldrb r1, [r4, #1]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080009F8
	cmp r2, #0
	bne _080009F4
	adds r2, r4, #0
	str r4, [r3]
	b _080009F8
	.align 2, 0
_080009F0: .4byte gUnk_03002CEC
_080009F4:
	str r4, [r2, #0x18]
	adds r2, r4, #0
_080009F8:
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _080009DC
_080009FE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08000A04
sub_08000A04: @ 0x08000A04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r0, _08000A48 @ =gUnk_03002CE0
	mov ip, r0
	ldr r1, _08000A4C @ =gUnk_03002D30
	mov r8, r1
	movs r6, #0
	ldr r4, _08000A50 @ =gUnk_03002CF0
_08000A18:
	lsls r0, r5, #1
	add r0, ip
	ldrh r2, [r0]
	cmp r2, #0
	bne _08000A80
	ldr r0, _08000A54 @ =gUnk_03000E60
	ldrh r0, [r0]
	lsls r3, r5, #4
	cmp r0, #1
	bne _08000A36
	ldrb r1, [r4, #0xd]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08000A80
_08000A36:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08000A64
	cmp r0, #1
	bgt _08000A58
	cmp r0, #0
	beq _08000A5E
	b _08000A80
	.align 2, 0
_08000A48: .4byte gUnk_03002CE0
_08000A4C: .4byte gUnk_03002D30
_08000A50: .4byte gUnk_03002CF0
_08000A54: .4byte gUnk_03000E60
_08000A58:
	cmp r0, #2
	beq _08000A78
	b _08000A80
_08000A5E:
	mov r3, r8
	adds r0, r6, r3
	b _08000A7E
_08000A64:
	movs r0, #3
	strb r0, [r4, #0xc]
	mov r7, r8
	adds r1, r3, r7
	adds r0, r4, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	b _08000A80
_08000A78:
	strb r2, [r4, #0xc]
	mov r1, r8
	adds r0, r6, r1
_08000A7E:
	strb r2, [r0, #0xc]
_08000A80:
	adds r6, #0x10
	adds r4, #0x10
	adds r5, #1
	cmp r5, #3
	ble _08000A18
	movs r5, #0
	ldr r6, _08000AC4 @ =gUnk_085F5A0C
	ldr r4, _08000AC8 @ =gUnk_03002CE0
	ldr r3, _08000ACC @ =gUnk_03002D30
_08000A92:
	ldrh r2, [r4]
	cmp r2, #0
	bne _08000AAE
	ldrb r0, [r3, #0xc]
	cmp r0, #3
	bne _08000AAE
	ldr r1, [r6]
	str r2, [r1, #8]
	ldr r0, [r3]
	str r0, [r1]
	ldr r0, [r3, #4]
	str r0, [r1, #4]
	ldr r0, [r3, #8]
	str r0, [r1, #8]
_08000AAE:
	adds r6, #4
	adds r4, #2
	adds r3, #0x10
	adds r5, #1
	cmp r5, #3
	ble _08000A92
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000AC4: .4byte gUnk_085F5A0C
_08000AC8: .4byte gUnk_03002CE0
_08000ACC: .4byte gUnk_03002D30

	thumb_func_start sub_08000AD0
sub_08000AD0: @ 0x08000AD0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	mov ip, r2
	ldr r0, _08000B0C @ =0x07FFFFFF
	movs r4, #3
	cmp r7, r0
	bhi _08000AE8
	movs r4, #0
	cmp r6, r0
	bls _08000AE8
	movs r4, #1
_08000AE8:
	cmp r4, #3
	bgt _08000B22
	ldr r2, _08000B10 @ =gUnk_03002CE0
	ldr r1, _08000B14 @ =gUnk_03002CF0
	lsls r0, r4, #4
	adds r3, r0, r1
	lsls r0, r4, #1
	adds r1, r0, r2
_08000AF8:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08000B18
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	beq _08000B08
	cmp r0, #2
	bne _08000B18
_08000B08:
	adds r5, r4, #0
	b _08000B26
	.align 2, 0
_08000B0C: .4byte 0x07FFFFFF
_08000B10: .4byte gUnk_03002CE0
_08000B14: .4byte gUnk_03002CF0
_08000B18:
	adds r3, #0x10
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	ble _08000AF8
_08000B22:
	movs r5, #1
	rsbs r5, r5, #0
_08000B26:
	cmp r5, #0
	blt _08000B5A
	ldr r0, _08000B64 @ =gUnk_03002CE0
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _08000B5A
	movs r3, #0xa2
	lsls r3, r3, #0x18
	mov r0, ip
	orrs r3, r0
	ldr r1, _08000B68 @ =gUnk_03002CF0
	lsls r2, r5, #4
	adds r4, r2, r1
	str r6, [r4]
	adds r0, r1, #4
	adds r0, r2, r0
	str r7, [r0]
	adds r1, #8
	adds r2, r2, r1
	str r3, [r2]
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x80
	strb r0, [r4, #0xd]
_08000B5A:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08000B64: .4byte gUnk_03002CE0
_08000B68: .4byte gUnk_03002CF0

	thumb_func_start sub_08000B6C
sub_08000B6C: @ 0x08000B6C
	push {r4, r5, lr}
	movs r1, #0
	ldr r3, _08000BA4 @ =gUnk_03002CE0
	ldr r4, _08000BA8 @ =gUnk_03002CEC
	ldr r5, _08000BAC @ =gUnk_03002CF0
	movs r2, #0
	adds r0, r3, #0
_08000B7A:
	strh r2, [r0]
	adds r0, #2
	adds r1, #1
	cmp r1, #3
	bls _08000B7A
	movs r0, #0
	movs r1, #1
	strh r1, [r3, #2]
	str r0, [r4]
	adds r0, r5, #0
	movs r1, #0x40
	bl memzero
	ldr r0, _08000BB0 @ =gUnk_03002D30
	movs r1, #0x40
	bl memzero
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000BA4: .4byte gUnk_03002CE0
_08000BA8: .4byte gUnk_03002CEC
_08000BAC: .4byte gUnk_03002CF0
_08000BB0: .4byte gUnk_03002D30

	thumb_func_start sub_08000BB4
sub_08000BB4: @ 0x08000BB4
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	strb r4, [r5]
	movs r0, #1
	strb r0, [r5, #1]
	str r1, [r5, #4]
	str r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r5, #0xc]
	str r4, [r5, #0x18]
	ldr r1, _08000BE0 @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000BE4
	str r5, [r1]
	b _08000BF4
	.align 2, 0
_08000BE0: .4byte gUnk_03002CEC
_08000BE4:
	adds r1, r0, #0
	cmp r1, r5
	bne _08000BEC
_08000BEA:
	b _08000BEA
_08000BEC:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000BE4
	str r5, [r1, #0x18]
_08000BF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000BFC
sub_08000BFC: @ 0x08000BFC
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	strb r4, [r5]
	movs r0, #1
	strb r0, [r5, #1]
	str r1, [r5, #4]
	str r2, [r5, #8]
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r5, #0xc]
	str r4, [r5, #0x18]
	ldr r1, _08000C28 @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000C2C
	str r5, [r1]
	b _08000C3C
	.align 2, 0
_08000C28: .4byte gUnk_03002CEC
_08000C2C:
	adds r1, r0, #0
	cmp r1, r5
	bne _08000C34
_08000C32:
	b _08000C32
_08000C34:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000C2C
	str r5, [r1, #0x18]
_08000C3C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000C44
sub_08000C44: @ 0x08000C44
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	strb r4, [r5]
	movs r0, #3
	strb r0, [r5, #1]
	lsls r1, r1, #0x10
	str r1, [r5, #4]
	str r2, [r5, #8]
	movs r0, #0x81
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r5, #0xc]
	str r4, [r5, #0x18]
	ldr r1, _08000C70 @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000C74
	str r5, [r1]
	b _08000C84
	.align 2, 0
_08000C70: .4byte gUnk_03002CEC
_08000C74:
	adds r1, r0, #0
	cmp r1, r5
	bne _08000C7C
_08000C7A:
	b _08000C7A
_08000C7C:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000C74
	str r5, [r1, #0x18]
_08000C84:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000C8C
sub_08000C8C: @ 0x08000C8C
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	strb r4, [r5]
	movs r0, #3
	strb r0, [r5, #1]
	str r1, [r5, #4]
	str r2, [r5, #8]
	movs r0, #0x85
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r5, #0xc]
	str r4, [r5, #0x18]
	ldr r1, _08000CB8 @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000CBC
	str r5, [r1]
	b _08000CCC
	.align 2, 0
_08000CB8: .4byte gUnk_03002CEC
_08000CBC:
	adds r1, r0, #0
	cmp r1, r5
	bne _08000CC4
_08000CC2:
	b _08000CC2
_08000CC4:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000CBC
	str r5, [r1, #0x18]
_08000CCC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000CD4
sub_08000CD4: @ 0x08000CD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r5, [sp, #0x18]
	ldr r6, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r8, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	movs r0, #1
	strb r0, [r7]
	strb r0, [r7, #1]
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r7, #0xc]
	strh r5, [r7, #0x10]
	strh r6, [r7, #0x12]
	mov r0, r8
	strh r0, [r7, #0x14]
	str r4, [r7, #0x18]
	ldr r1, _08000D14 @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000D18
	str r7, [r1]
	b _08000D28
	.align 2, 0
_08000D14: .4byte gUnk_03002CEC
_08000D18:
	adds r1, r0, #0
	cmp r1, r7
	bne _08000D20
_08000D1E:
	b _08000D1E
_08000D20:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000D18
	str r7, [r1, #0x18]
_08000D28:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000D34
sub_08000D34: @ 0x08000D34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r5, [sp, #0x18]
	ldr r6, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r8, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	movs r0, #1
	strb r0, [r7]
	strb r0, [r7, #1]
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r7, #0xc]
	strh r5, [r7, #0x10]
	strh r6, [r7, #0x12]
	mov r0, r8
	strh r0, [r7, #0x14]
	str r4, [r7, #0x18]
	ldr r1, _08000D74 @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000D78
	str r7, [r1]
	b _08000D88
	.align 2, 0
_08000D74: .4byte gUnk_03002CEC
_08000D78:
	adds r1, r0, #0
	cmp r1, r7
	bne _08000D80
_08000D7E:
	b _08000D7E
_08000D80:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000D78
	str r7, [r1, #0x18]
_08000D88:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000D94
sub_08000D94: @ 0x08000D94
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r5, [sp, #0x14]
	ldr r6, [sp, #0x18]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	movs r0, #1
	strb r0, [r7]
	movs r0, #3
	strb r0, [r7, #1]
	lsls r1, r1, #0x10
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0x81
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r7, #0xc]
	strh r5, [r7, #0x10]
	strh r4, [r7, #0x12]
	strh r6, [r7, #0x14]
	str r4, [r7, #0x18]
	ldr r1, _08000DCC @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000DD0
	str r7, [r1]
	b _08000DE0
	.align 2, 0
_08000DCC: .4byte gUnk_03002CEC
_08000DD0:
	adds r1, r0, #0
	cmp r1, r7
	bne _08000DD8
_08000DD6:
	b _08000DD6
_08000DD8:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000DD0
	str r7, [r1, #0x18]
_08000DE0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000DE8
sub_08000DE8: @ 0x08000DE8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r5, [sp, #0x14]
	ldr r6, [sp, #0x18]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	movs r0, #1
	strb r0, [r7]
	movs r0, #3
	strb r0, [r7, #1]
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0x85
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r7, #0xc]
	strh r5, [r7, #0x10]
	strh r4, [r7, #0x12]
	strh r6, [r7, #0x14]
	str r4, [r7, #0x18]
	ldr r1, _08000E20 @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000E24
	str r7, [r1]
	b _08000E34
	.align 2, 0
_08000E20: .4byte gUnk_03002CEC
_08000E24:
	adds r1, r0, #0
	cmp r1, r7
	bne _08000E2C
_08000E2A:
	b _08000E2A
_08000E2C:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000E24
	str r7, [r1, #0x18]
_08000E34:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000E3C
sub_08000E3C: @ 0x08000E3C
	push {r4, r5, r6, r7, lr}
	ldr r7, _08000E70 @ =gUnk_03002D30
	movs r4, #0
	ldr r6, _08000E74 @ =gUnk_03002CE0
	ldr r5, _08000E78 @ =gUnk_085F5A0C
_08000E46:
	ldrh r1, [r6]
	cmp r1, #0
	bne _08000E5C
	ldrb r0, [r7, #0xc]
	cmp r0, #3
	bne _08000E5C
	ldr r0, [r5]
	str r1, [r0, #8]
	adds r0, r4, #0
	bl sub_08003FF8
_08000E5C:
	adds r6, #2
	adds r5, #4
	adds r4, #1
	adds r7, #0x10
	cmp r4, #3
	ble _08000E46
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000E70: .4byte gUnk_03002D30
_08000E74: .4byte gUnk_03002CE0
_08000E78: .4byte gUnk_085F5A0C

	thumb_func_start sub_08000E7C
sub_08000E7C: @ 0x08000E7C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r2, r3, #0
	ldr r0, _08000EBC @ =gUnk_03002CE0
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _08000EB4
	movs r3, #0xa2
	lsls r3, r3, #0x18
	orrs r3, r2
	ldr r1, _08000EC0 @ =gUnk_03002CF0
	lsls r2, r4, #4
	adds r4, r2, r1
	str r5, [r4]
	adds r0, r1, #4
	adds r0, r2, r0
	str r6, [r0]
	adds r1, #8
	adds r2, r2, r1
	str r3, [r2]
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x80
	strb r0, [r4, #0xd]
_08000EB4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000EBC: .4byte gUnk_03002CE0
_08000EC0: .4byte gUnk_03002CF0

	thumb_func_start sub_08000EC4
sub_08000EC4: @ 0x08000EC4
	ldr r1, _08000EE4 @ =gUnk_03002D30
	lsls r2, r0, #4
	adds r1, r2, r1
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq _08000EE0
	ldr r1, _08000EE8 @ =gUnk_03002CF0
	adds r1, r2, r1
	movs r0, #2
	strb r0, [r1, #0xc]
	ldrb r2, [r1, #0xd]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #0xd]
_08000EE0:
	bx lr
	.align 2, 0
_08000EE4: .4byte gUnk_03002D30
_08000EE8: .4byte gUnk_03002CF0

	thumb_func_start sub_08000EEC
sub_08000EEC: @ 0x08000EEC
	push {r4, r5, r6, lr}
	sub sp, #4
	str r0, [sp]
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r0, _08000F2C @ =0x07FFFFFF
	movs r4, #3
	cmp r5, r0
	bhi _08000F08
	movs r4, #0
	cmp sp, r0
	bls _08000F08
	movs r4, #1
_08000F08:
	cmp r4, #3
	bgt _08000F42
	ldr r2, _08000F30 @ =gUnk_03002CE0
	ldr r1, _08000F34 @ =gUnk_03002CF0
	lsls r0, r4, #4
	adds r3, r0, r1
	lsls r0, r4, #1
	adds r1, r0, r2
_08000F18:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08000F38
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	beq _08000F28
	cmp r0, #2
	bne _08000F38
_08000F28:
	adds r3, r4, #0
	b _08000F46
	.align 2, 0
_08000F2C: .4byte 0x07FFFFFF
_08000F30: .4byte gUnk_03002CE0
_08000F34: .4byte gUnk_03002CF0
_08000F38:
	adds r3, #0x10
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	ble _08000F18
_08000F42:
	movs r3, #1
	rsbs r3, r3, #0
_08000F46:
	cmp r3, #0
	blt _08000F60
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r1, r6
	ldr r2, _08000F6C @ =gUnk_085F5A0C
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov r2, sp
	str r2, [r0]
	str r5, [r0, #4]
	str r1, [r0, #8]
_08000F60:
	adds r0, r3, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08000F6C: .4byte gUnk_085F5A0C

	thumb_func_start sub_08000F70
sub_08000F70: @ 0x08000F70
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	mov r1, sp
	strh r0, [r1]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r0, _08000FB4 @ =0x07FFFFFF
	movs r4, #3
	cmp r5, r0
	bhi _08000F8E
	movs r4, #0
	cmp sp, r0
	bls _08000F8E
	movs r4, #1
_08000F8E:
	cmp r4, #3
	bgt _08000FCA
	ldr r2, _08000FB8 @ =gUnk_03002CE0
	ldr r1, _08000FBC @ =gUnk_03002CF0
	lsls r0, r4, #4
	adds r3, r0, r1
	lsls r0, r4, #1
	adds r1, r0, r2
_08000F9E:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08000FC0
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	beq _08000FAE
	cmp r0, #2
	bne _08000FC0
_08000FAE:
	adds r3, r4, #0
	b _08000FCE
	.align 2, 0
_08000FB4: .4byte 0x07FFFFFF
_08000FB8: .4byte gUnk_03002CE0
_08000FBC: .4byte gUnk_03002CF0
_08000FC0:
	adds r3, #0x10
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	ble _08000F9E
_08000FCA:
	movs r3, #1
	rsbs r3, r3, #0
_08000FCE:
	cmp r3, #0
	blt _08000FE8
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r1, r6
	ldr r2, _08000FF4 @ =gUnk_085F5A0C
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov r2, sp
	str r2, [r0]
	str r5, [r0, #4]
	str r1, [r0, #8]
_08000FE8:
	adds r0, r3, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08000FF4: .4byte gUnk_085F5A0C

	thumb_func_start sub_08000FF8
sub_08000FF8: @ 0x08000FF8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r0, _08001038 @ =0x07FFFFFF
	movs r4, #3
	cmp r6, r0
	bhi _08001012
	movs r4, #0
	cmp r5, r0
	bls _08001012
	movs r4, #1
_08001012:
	cmp r4, #3
	bgt _0800104E
	ldr r2, _0800103C @ =gUnk_03002CE0
	ldr r1, _08001040 @ =gUnk_03002CF0
	lsls r0, r4, #4
	adds r3, r0, r1
	lsls r0, r4, #1
	adds r1, r0, r2
_08001022:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08001044
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	beq _08001032
	cmp r0, #2
	bne _08001044
_08001032:
	adds r3, r4, #0
	b _08001052
	.align 2, 0
_08001038: .4byte 0x07FFFFFF
_0800103C: .4byte gUnk_03002CE0
_08001040: .4byte gUnk_03002CF0
_08001044:
	adds r3, #0x10
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	ble _08001022
_0800104E:
	movs r3, #1
	rsbs r3, r3, #0
_08001052:
	cmp r3, #0
	blt _0800106A
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r1, r7
	ldr r2, _08001074 @ =gUnk_085F5A0C
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r5, [r0]
	str r6, [r0, #4]
	str r1, [r0, #8]
_0800106A:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001074: .4byte gUnk_085F5A0C

	thumb_func_start sub_08001078
sub_08001078: @ 0x08001078
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r0, _080010B8 @ =0x07FFFFFF
	movs r4, #3
	cmp r6, r0
	bhi _08001092
	movs r4, #0
	cmp r5, r0
	bls _08001092
	movs r4, #1
_08001092:
	cmp r4, #3
	bgt _080010CE
	ldr r2, _080010BC @ =gUnk_03002CE0
	ldr r1, _080010C0 @ =gUnk_03002CF0
	lsls r0, r4, #4
	adds r3, r0, r1
	lsls r0, r4, #1
	adds r1, r0, r2
_080010A2:
	ldrh r0, [r1]
	cmp r0, #0
	bne _080010C4
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	beq _080010B2
	cmp r0, #2
	bne _080010C4
_080010B2:
	adds r3, r4, #0
	b _080010D2
	.align 2, 0
_080010B8: .4byte 0x07FFFFFF
_080010BC: .4byte gUnk_03002CE0
_080010C0: .4byte gUnk_03002CF0
_080010C4:
	adds r3, #0x10
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	ble _080010A2
_080010CE:
	movs r3, #1
	rsbs r3, r3, #0
_080010D2:
	cmp r3, #0
	blt _080010EA
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	ldr r2, _080010F4 @ =gUnk_085F5A0C
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r5, [r0]
	str r6, [r0, #4]
	str r1, [r0, #8]
_080010EA:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080010F4: .4byte gUnk_085F5A0C

	thumb_func_start sub_080010F8
sub_080010F8: @ 0x080010F8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0800113C @ =gUnk_03000008
	ldrb r1, [r0]
	lsls r2, r1, #5
	ldr r0, _08001140 @ =gUnk_03002D70
	adds r5, r2, r0
	lsls r1, r1, #8
	ldr r0, _08001144 @ =gUnk_03002DB0
	adds r6, r1, r0
	movs r2, #0
	adds r3, r6, #0
_08001110:
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08001148
	ldrh r1, [r4]
	ldrh r0, [r3]
	cmp r1, r0
	bne _08001148
	ldrh r1, [r4, #2]
	ldrh r0, [r3, #2]
	cmp r1, r0
	bne _08001148
	ldrh r1, [r4, #4]
	ldrh r0, [r3, #4]
	cmp r1, r0
	bne _08001148
	ldrh r1, [r4, #6]
	ldrh r0, [r3, #6]
	cmp r1, r0
	bne _08001148
	adds r0, r2, #0
	b _08001186
	.align 2, 0
_0800113C: .4byte gUnk_03000008
_08001140: .4byte gUnk_03002D70
_08001144: .4byte gUnk_03002DB0
_08001148:
	adds r3, #8
	adds r2, #1
	cmp r2, #0x1f
	ble _08001110
	movs r2, #0
	adds r3, r6, #0
	movs r6, #1
_08001156:
	adds r1, r5, r2
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800117C
	strb r6, [r1]
	ldrh r0, [r4]
	ldrh r1, [r3]
	strh r0, [r3]
	ldrh r0, [r4, #2]
	ldrh r1, [r3, #2]
	strh r0, [r3, #2]
	ldrh r0, [r4, #4]
	ldrh r1, [r3, #4]
	strh r0, [r3, #4]
	ldrh r0, [r4, #6]
	ldrh r1, [r3, #6]
	strh r0, [r3, #6]
	adds r0, r2, #0
	b _08001186
_0800117C:
	adds r3, #8
	adds r2, #1
	cmp r2, #0x1f
	ble _08001156
	movs r0, #0
_08001186:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0800118C
sub_0800118C: @ 0x0800118C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08001314 @ =gUnk_03000008
	ldr r1, _08001318 @ =gUnk_030032B8
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	ldr r1, _0800131C @ =gUnk_03002FB0
	movs r0, #0
	str r0, [r1, #4]
	str r0, [r1]
	ldr r1, _08001320 @ =gUnk_030032C0
	str r0, [r1, #4]
	str r0, [r1]
	ldr r1, _08001324 @ =gUnk_03000000
	str r0, [r1, #4]
	str r0, [r1]
	ldr r1, _08001328 @ =gUnk_030034C8
	str r0, [r1, #4]
	str r0, [r1]
	ldr r2, _0800132C @ =gUnk_03002FB8
	movs r3, #0x30
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r7, r2, r0
	ldr r0, _08001330 @ =gUnk_030032C8
	mov ip, r0
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, ip
	mov sb, r0
	ldr r0, _08001334 @ =gUnk_03000010
	mov r8, r0
	ldr r0, _08001338 @ =gUnk_030034D0
	mov sl, r0
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_080011DE:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _080011DE
	adds r2, r7, #0
	movs r3, #0x30
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_08001202:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _08001202
	mov r2, ip
	movs r3, #0x20
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_08001226:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _08001226
	mov r2, sb
	movs r3, #0x20
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_0800124A:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _0800124A
	mov r2, r8
	movs r3, #0x80
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_0800126E:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _0800126E
	ldr r2, _0800133C @ =gUnk_03000410
	movs r3, #0x80
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_08001292:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _08001292
	mov r2, sl
	movs r3, #0x10
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_080012B6:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _080012B6
	ldr r2, _08001340 @ =gUnk_03003550
	movs r3, #0x10
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_080012DA:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _080012DA
	ldr r0, _08001344 @ =gUnk_03002D70
	movs r1, #0x40
	bl memzero
	ldr r0, _08001348 @ =gUnk_03002DB0
	movs r1, #0x80
	lsls r1, r1, #2
	bl memzero
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001314: .4byte gUnk_03000008
_08001318: .4byte gUnk_030032B8
_0800131C: .4byte gUnk_03002FB0
_08001320: .4byte gUnk_030032C0
_08001324: .4byte gUnk_03000000
_08001328: .4byte gUnk_030034C8
_0800132C: .4byte gUnk_03002FB8
_08001330: .4byte gUnk_030032C8
_08001334: .4byte gUnk_03000010
_08001338: .4byte gUnk_030034D0
_0800133C: .4byte gUnk_03000410
_08001340: .4byte gUnk_03003550
_08001344: .4byte gUnk_03002D70
_08001348: .4byte gUnk_03002DB0

	thumb_func_start sub_0800134C
sub_0800134C: @ 0x0800134C
	push {r4, r5, r6, r7, lr}
	ldr r4, _08001400 @ =gUnk_03000008
	ldrb r0, [r4]
	lsls r0, r0, #5
	ldr r1, _08001404 @ =gUnk_03002D70
	adds r0, r0, r1
	movs r1, #0x20
	bl memzero
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldr r1, _08001408 @ =gUnk_03002DB0
	adds r2, r0, r1
	movs r3, #0x20
	movs r4, #0
_0800136A:
	ldrh r0, [r2, #6]
	strh r4, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	ldrh r0, [r2, #4]
	ldrh r1, [r2, #2]
	strh r0, [r2, #2]
	ldrh r0, [r2, #2]
	ldrh r1, [r2]
	strh r0, [r2]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _0800136A
	ldr r2, _0800140C @ =gUnk_03002FB0
	ldr r3, _08001400 @ =gUnk_03000008
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r2, r0, r2
	ldr r1, _08001410 @ =gUnk_03000000
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	str r1, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r1, _08001414 @ =gUnk_03002FB8
	adds r2, r0, r1
	movs r4, #0x30
	adds r7, r3, #0
	ldr r0, _08001418 @ =gUnk_03000010
	mov ip, r0
	movs r6, #0
	movs r5, #0xa8
	movs r3, #0xf8
_080013B6:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r3, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r4, #1
	cmp r4, #0
	bgt _080013B6
	ldrb r0, [r7]
	lsls r0, r0, #0xa
	mov r1, ip
	adds r3, r0, r1
	movs r2, #0x80
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_080013E0:
	ldrh r0, [r3]
	strh r5, [r3]
	ldrh r0, [r3, #2]
	strh r4, [r3, #2]
	ldrh r0, [r3, #6]
	strh r6, [r3, #6]
	ldrh r0, [r3, #6]
	ldrh r1, [r3, #4]
	strh r0, [r3, #4]
	adds r3, #8
	subs r2, #1
	cmp r2, #0
	bgt _080013E0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001400: .4byte gUnk_03000008
_08001404: .4byte gUnk_03002D70
_08001408: .4byte gUnk_03002DB0
_0800140C: .4byte gUnk_03002FB0
_08001410: .4byte gUnk_03000000
_08001414: .4byte gUnk_03002FB8
_08001418: .4byte gUnk_03000010

	thumb_func_start sub_0800141C
sub_0800141C: @ 0x0800141C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080014A4 @ =gUnk_030032C0
	ldr r2, _080014A8 @ =gUnk_030032B8
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #8
	ldr r1, _080014AC @ =gUnk_030032C8
	adds r3, r0, r1
	movs r4, #0x20
	adds r7, r2, #0
	ldr r0, _080014B0 @ =gUnk_030034C8
	mov ip, r0
	ldr r1, _080014B4 @ =gUnk_030034D0
	mov r8, r1
	movs r6, #0
	movs r5, #0xa8
	movs r2, #0xf8
_0800144A:
	ldrh r0, [r3]
	strh r5, [r3]
	ldrh r0, [r3, #2]
	strh r2, [r3, #2]
	ldrh r0, [r3, #6]
	strh r6, [r3, #6]
	ldrh r0, [r3, #6]
	ldrh r1, [r3, #4]
	strh r0, [r3, #4]
	adds r3, #8
	subs r4, #1
	cmp r4, #0
	bgt _0800144A
	ldrb r0, [r7]
	lsls r0, r0, #2
	add r0, ip
	movs r1, #0
	str r1, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #7
	mov r1, r8
	adds r2, r0, r1
	movs r3, #0x10
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_0800147E:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _0800147E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080014A4: .4byte gUnk_030032C0
_080014A8: .4byte gUnk_030032B8
_080014AC: .4byte gUnk_030032C8
_080014B0: .4byte gUnk_030034C8
_080014B4: .4byte gUnk_030034D0

	thumb_func_start sub_080014B8
sub_080014B8: @ 0x080014B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0xe0
	lsls r5, r5, #0x13
	movs r7, #0
	adds r2, r5, #0
	movs r3, #0x80
	ldr r0, _08001684 @ =gUnk_03000008
	mov sl, r0
	ldr r1, _08001688 @ =gUnk_03002FB8
	mov r8, r1
	ldr r0, _0800168C @ =gUnk_03002FB0
	mov sb, r0
	movs r1, #0
	mov ip, r1
	movs r6, #0xa8
	movs r4, #0xf8
_080014E0:
	ldrh r0, [r2]
	strh r6, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	mov r0, ip
	strh r0, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _080014E0
	mov r1, sl
	ldrb r0, [r1]
	movs r1, #1
	eors r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	mov r2, r8
	adds r6, r0, r2
	lsls r1, r1, #2
	add r1, sb
	ldr r3, [r1]
	cmp r3, #0
	ble _08001546
	lsls r4, r3, #3
	ldr r2, _08001690 @ =0x040000B0
	str r6, [r2]
	str r5, [r2, #4]
	lsrs r0, r4, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r6, #0x80
	lsls r6, r6, #0x18
	adds r1, r7, r3
	cmp r0, #0
	bge _08001542
	adds r3, r6, #0
_0800153A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0800153A
_08001542:
	adds r5, r5, r4
	adds r7, r1, #0
_08001546:
	ldr r0, _08001694 @ =gUnk_030032B8
	ldrb r1, [r0]
	movs r0, #1
	eors r0, r1
	lsls r1, r0, #8
	ldr r2, _08001698 @ =gUnk_030032C8
	adds r6, r1, r2
	lsls r0, r0, #2
	ldr r1, _0800169C @ =gUnk_030032C0
	adds r0, r0, r1
	ldr r3, [r0]
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #2
	ldr r1, _080016A0 @ =gUnk_03000000
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	subs r0, r0, r1
	subs r0, r0, r7
	cmp r3, r0
	ble _08001574
	adds r3, r0, #0
_08001574:
	cmp r3, #0
	ble _080015A6
	lsls r4, r3, #3
	ldr r2, _08001690 @ =0x040000B0
	str r6, [r2]
	str r5, [r2, #4]
	lsrs r0, r4, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r6, #0x80
	lsls r6, r6, #0x18
	adds r1, r7, r3
	cmp r0, #0
	bge _080015A2
	adds r3, r6, #0
_0800159A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0800159A
_080015A2:
	adds r5, r5, r4
	adds r7, r1, #0
_080015A6:
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #1
	eors r0, r1
	lsls r1, r0, #0xa
	ldr r2, _080016A4 @ =gUnk_03000010
	adds r6, r1, r2
	lsls r0, r0, #2
	ldr r1, _080016A0 @ =gUnk_03000000
	adds r0, r0, r1
	ldr r3, [r0]
	movs r0, #0x80
	subs r0, r0, r7
	cmp r3, r0
	ble _080015C6
	adds r3, r0, #0
_080015C6:
	cmp r3, #0
	ble _080015F8
	lsls r4, r3, #3
	ldr r2, _08001690 @ =0x040000B0
	str r6, [r2]
	str r5, [r2, #4]
	lsrs r0, r4, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r6, #0x80
	lsls r6, r6, #0x18
	adds r1, r7, r3
	cmp r0, #0
	bge _080015F4
	adds r3, r6, #0
_080015EC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080015EC
_080015F4:
	adds r5, r5, r4
	adds r7, r1, #0
_080015F8:
	ldr r2, _08001694 @ =gUnk_030032B8
	ldrb r1, [r2]
	movs r0, #1
	eors r0, r1
	lsls r1, r0, #7
	ldr r2, _080016A8 @ =gUnk_030034D0
	adds r6, r1, r2
	lsls r0, r0, #2
	ldr r1, _080016AC @ =gUnk_030034C8
	adds r0, r0, r1
	ldr r3, [r0]
	movs r0, #0x80
	subs r0, r0, r7
	cmp r3, r0
	ble _08001618
	adds r3, r0, #0
_08001618:
	cmp r3, #0
	ble _08001642
	lsls r4, r3, #3
	ldr r2, _08001690 @ =0x040000B0
	str r6, [r2]
	str r5, [r2, #4]
	lsrs r0, r4, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08001642
_0800163A:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0800163A
_08001642:
	ldr r5, _080016B0 @ =0x07000006
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #1
	eors r0, r1
	lsls r0, r0, #8
	ldr r2, _080016B4 @ =gUnk_03002DB0
	adds r1, r0, r2
	movs r3, #0x20
_08001654:
	ldrh r0, [r1]
	strh r0, [r5]
	adds r5, #8
	ldrh r0, [r1, #2]
	strh r0, [r5]
	adds r5, #8
	ldrh r0, [r1, #4]
	strh r0, [r5]
	adds r5, #8
	ldrh r0, [r1, #6]
	strh r0, [r5]
	adds r5, #8
	adds r1, #8
	subs r3, #1
	cmp r3, #0
	bgt _08001654
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001684: .4byte gUnk_03000008
_08001688: .4byte gUnk_03002FB8
_0800168C: .4byte gUnk_03002FB0
_08001690: .4byte 0x040000B0
_08001694: .4byte gUnk_030032B8
_08001698: .4byte gUnk_030032C8
_0800169C: .4byte gUnk_030032C0
_080016A0: .4byte gUnk_03000000
_080016A4: .4byte gUnk_03000010
_080016A8: .4byte gUnk_030034D0
_080016AC: .4byte gUnk_030034C8
_080016B0: .4byte 0x07000006
_080016B4: .4byte gUnk_03002DB0

	thumb_func_start sub_080016B8
sub_080016B8: @ 0x080016B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov ip, r0
	str r1, [sp]
	str r2, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	ldr r4, [sp, #0x54]
	ldr r5, [sp, #0x5c]
	ldr r6, [sp, #0x64]
	ldr r7, [sp, #0x6c]
	mov r8, r7
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x10]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x18]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	str r5, [sp, #0x1c]
	ldr r0, [sp, #0x68]
	cmp r8, r0
	blt _08001706
	b _0800193A
_08001706:
	mov r1, r8
	lsls r0, r1, #3
	adds r6, r6, r0
	mov r7, ip
	adds r7, #2
	mov r2, ip
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	mov ip, r0
	mov r3, ip
	orrs r3, r1
	mov ip, r3
	lsls r0, r3, #0x10
	cmp r0, #0
	bgt _08001728
	b _0800193A
_08001728:
	ldr r4, _08001780 @ =gUnk_0815D9FC
	mov sb, r4
_0800172C:
	ldr r5, [sp, #0x68]
	cmp r8, r5
	blt _08001734
	b _0800193A
_08001734:
	ldrb r1, [r7, #1]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	ldrb r0, [r7, #3]
	lsrs r5, r0, #6
	orrs r5, r1
	ldrb r1, [r7, #2]
	ldrb r2, [r7, #3]
	adds r0, r2, #0
	movs r3, #1
	ands r0, r3
	lsls r3, r0, #8
	orrs r3, r1
	adds r4, r3, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	str r1, [sp, #0x20]
	mov sl, r2
	cmp r0, #0
	beq _08001768
	ldr r1, _08001784 @ =0xFFFFFF00
	adds r0, r1, #0
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r3, r0, #0x10
_08001768:
	ldr r2, [sp, #0x14]
	cmp r2, #0
	beq _08001788
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp]
	subs r0, r3, r0
	lsls r1, r5, #2
	add r1, sb
	ldrh r1, [r1]
	subs r0, r0, r1
	b _08001790
	.align 2, 0
_08001780: .4byte gUnk_0815D9FC
_08001784: .4byte 0xFFFFFF00
_08001788:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp]
	adds r0, r0, r4
_08001790:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	str r0, [sp, #0x24]
	cmp r1, #0
	bge _080017AE
	lsls r0, r5, #2
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r1, r0
	cmp r0, #0
	bge _080017AE
	b _08001926
_080017AE:
	cmp r1, #0xef
	ble _080017C2
	lsls r0, r5, #2
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r1, r0
	cmp r0, #0xef
	ble _080017C2
	b _08001926
_080017C2:
	ldrb r0, [r7]
	adds r3, r0, #0
	adds r1, r3, #0
	movs r0, #0x80
	ands r0, r1
	adds r2, r3, #0
	cmp r0, #0
	beq _080017DE
	movs r4, #0x80
	rsbs r4, r4, #0
	adds r0, r4, #0
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x10
_080017DE:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _080017F6
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #4]
	subs r0, r1, r0
	lsls r1, r5, #2
	add r1, sb
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	b _080017FE
_080017F6:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #4]
	adds r0, r0, r3
_080017FE:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0800181A
	lsls r0, r5, #2
	add r0, sb
	movs r4, #2
	ldrsh r0, [r0, r4]
	adds r0, r1, r0
	cmp r0, #0
	bge _0800181A
	b _08001926
_0800181A:
	cmp r1, #0x9f
	ble _0800182C
	lsls r0, r5, #2
	add r0, sb
	movs r5, #2
	ldrsh r0, [r0, r5]
	adds r0, r1, r0
	cmp r0, #0x9f
	bgt _08001926
_0800182C:
	ldrb r0, [r7, #1]
	lsls r0, r0, #8
	orrs r0, r2
	ldrh r1, [r6]
	strh r0, [r6]
	mov r1, sl
	lsls r0, r1, #8
	ldr r2, [sp, #0x20]
	orrs r0, r2
	ldrh r1, [r6, #2]
	strh r0, [r6, #2]
	ldrb r1, [r7, #4]
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r6, #4]
	strh r0, [r6, #4]
	ldr r4, [sp, #8]
	cmp r4, #3
	beq _08001868
	movs r0, #3
	adds r1, r4, #0
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r6, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #1]
_08001868:
	ldr r1, [sp, #0xc]
	movs r5, #1
	ands r1, r5
	lsls r1, r1, #4
	ldrb r2, [r6, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #1]
	ldr r1, [sp, #0x10]
	ands r1, r5
	lsls r1, r1, #5
	ldrb r2, [r6, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #1]
	ldrb r0, [r6]
	strb r3, [r6]
	ldrb r1, [r6, #3]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1f
	ldr r0, [sp, #0x14]
	eors r1, r0
	ands r1, r5
	lsls r1, r1, #4
	ldrb r2, [r6, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #3]
	ldrb r1, [r6, #3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	ldr r2, [sp, #0x18]
	eors r1, r2
	ands r1, r5
	lsls r1, r1, #5
	ldrb r2, [r6, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #3]
	ldr r3, [sp, #0x24]
	lsls r1, r3, #7
	lsrs r1, r1, #0x17
	ldrh r2, [r6, #2]
	ldr r0, _0800194C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #2]
	ldrh r1, [r6, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r4, [sp, #0x58]
	adds r1, r1, r4
	ldr r5, _08001950 @ =0x000003FF
	adds r0, r5, #0
	ands r1, r0
	ldrh r2, [r6, #4]
	ldr r0, _08001954 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #4]
	ldrb r1, [r6, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	ldr r0, [sp, #0x1c]
	adds r1, r1, r0
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r6, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #5]
	ldrb r1, [r6, #5]
	lsrs r1, r1, #4
	ldr r2, [sp, #0x60]
	adds r1, r1, r2
	lsls r1, r1, #4
	ldrb r2, [r6, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #5]
	adds r6, #8
	movs r3, #1
	add r8, r3
_08001926:
	mov r4, ip
	lsls r0, r4, #0x10
	ldr r5, _08001958 @ =0xFFFF0000
	adds r0, r0, r5
	adds r7, #6
	lsrs r1, r0, #0x10
	mov ip, r1
	cmp r0, #0
	ble _0800193A
	b _0800172C
_0800193A:
	mov r0, r8
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800194C: .4byte 0xFFFFFE00
_08001950: .4byte 0x000003FF
_08001954: .4byte 0xFFFFFC00
_08001958: .4byte 0xFFFF0000

	thumb_func_start sub_0800195C
sub_0800195C: @ 0x0800195C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x3c]
	ldr r1, [sp, #0x44]
	mov ip, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x40]
	cmp ip, r2
	blt _08001986
	b _08001B04
_08001986:
	mov r5, ip
	lsls r0, r5, #3
	adds r3, r3, r0
	adds r6, r4, #2
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	mov r8, r0
	mov r7, r8
	orrs r7, r1
	mov r8, r7
	lsls r0, r7, #0x10
	cmp r0, #0
	bgt _080019A4
	b _08001B04
_080019A4:
	ldr r0, [sp, #0x40]
	cmp ip, r0
	blt _080019AC
	b _08001B04
_080019AC:
	ldrb r1, [r6, #1]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	ldrb r0, [r6, #3]
	lsrs r4, r0, #6
	orrs r4, r1
	ldrb r1, [r6, #2]
	mov sl, r1
	ldrb r2, [r6, #3]
	mov sb, r2
	movs r0, #1
	ands r0, r2
	lsls r2, r0, #8
	orrs r2, r1
	adds r1, r2, #0
	adds r0, r1, #0
	movs r5, #0x80
	lsls r5, r5, #1
	ands r0, r5
	cmp r0, #0
	beq _080019E0
	ldr r7, _08001B18 @ =0xFFFFFF00
	adds r0, r7, #0
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
_080019E0:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bge _08001A00
	lsls r0, r4, #2
	ldr r2, _08001B1C @ =gUnk_0815D9FC
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r0, r5, r0
	cmp r0, #0
	blt _08001AF0
_08001A00:
	cmp r5, #0xef
	ble _08001A14
	lsls r0, r4, #2
	ldr r1, _08001B1C @ =gUnk_0815D9FC
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r5, r0
	cmp r0, #0xef
	bgt _08001AF0
_08001A14:
	ldrb r7, [r6]
	str r7, [sp, #0x10]
	adds r2, r7, #0
	adds r1, r2, #0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08001A30
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r0, r2, #0
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
_08001A30:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r7, [sp, #4]
	adds r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _08001A52
	lsls r0, r4, #2
	ldr r7, _08001B1C @ =gUnk_0815D9FC
	adds r0, r0, r7
	movs r7, #2
	ldrsh r0, [r0, r7]
	adds r0, r1, r0
	cmp r0, #0
	blt _08001AF0
_08001A52:
	cmp r1, #0x9f
	ble _08001A66
	lsls r0, r4, #2
	ldr r4, _08001B1C @ =gUnk_0815D9FC
	adds r0, r0, r4
	movs r7, #2
	ldrsh r0, [r0, r7]
	adds r0, r1, r0
	cmp r0, #0x9f
	bgt _08001AF0
_08001A66:
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	ldr r1, [sp, #0x10]
	orrs r0, r1
	ldrh r1, [r3]
	strh r0, [r3]
	mov r4, sb
	lsls r0, r4, #8
	mov r7, sl
	orrs r0, r7
	ldrh r1, [r3, #2]
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
	ldrb r0, [r6, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r3, #4]
	strh r0, [r3, #4]
	ldrb r0, [r3]
	strb r2, [r3]
	ldr r1, _08001B20 @ =0x000001FF
	adds r0, r1, #0
	adds r1, r5, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08001B24 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r3, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r2, [sp, #8]
	adds r1, r1, r2
	ldr r4, _08001B28 @ =0x000003FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08001B2C @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	ldr r5, [sp, #0xc]
	adds r1, r1, r5
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldrb r1, [r3, #5]
	lsrs r1, r1, #4
	ldr r7, [sp, #0x38]
	adds r1, r1, r7
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	adds r3, #8
	movs r0, #1
	add ip, r0
_08001AF0:
	mov r1, r8
	lsls r0, r1, #0x10
	ldr r2, _08001B30 @ =0xFFFF0000
	adds r0, r0, r2
	adds r6, #6
	lsrs r4, r0, #0x10
	mov r8, r4
	cmp r0, #0
	ble _08001B04
	b _080019A4
_08001B04:
	mov r0, ip
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001B18: .4byte 0xFFFFFF00
_08001B1C: .4byte gUnk_0815D9FC
_08001B20: .4byte 0x000001FF
_08001B24: .4byte 0xFFFFFE00
_08001B28: .4byte 0x000003FF
_08001B2C: .4byte 0xFFFFFC00
_08001B30: .4byte 0xFFFF0000

	thumb_func_start sub_08001B34
sub_08001B34: @ 0x08001B34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x64]
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	ldr r6, [sp, #0x74]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x20]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x24]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x28]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r3, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _08001D3C @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r2, r0, #0xa
	ldr r1, _08001D40 @ =gUnk_03000010
	adds r5, r2, r1
	ldr r1, _08001D44 @ =gUnk_03000000
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0x7f
	ble _08001B90
	b _08001D2C
_08001B90:
	ldr r2, _08001D48 @ =0xFFFF0000
	lsls r0, r3, #0x10
	orrs r0, r4
	str r0, [sp, #8]
	add r0, sp, #8
	ldr r1, [r0, #4]
	ands r1, r2
	orrs r1, r6
	str r1, [r0, #4]
	add r4, sp, #0x10
	adds r1, r4, #0
	movs r2, #1
	movs r3, #2
	bl ObjAffineSet
	ldrh r1, [r4]
	mov r0, sp
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r4, #2]
	adds r0, #2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r4, #4]
	add r0, sp, #4
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r4, #6]
	adds r0, #2
	ldrh r2, [r0]
	strh r1, [r0]
	mov r0, sp
	bl sub_080010F8
	str r0, [sp, #0x2c]
	mov r1, r8
	lsls r0, r1, #3
	adds r5, r5, r0
	adds r3, r7, #2
	ldrb r1, [r7]
	ldrb r0, [r7, #1]
	lsls r6, r0, #8
	orrs r6, r1
	lsls r0, r6, #0x10
	cmp r0, #0
	bgt _08001BEE
	b _08001D1E
_08001BEE:
	movs r2, #1
	mov sb, r2
	ldr r0, [sp, #0x20]
	ands r0, r2
	lsls r0, r0, #4
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x24]
	ands r0, r2
	lsls r0, r0, #5
	str r0, [sp, #0x34]
_08001C02:
	mov r4, r8
	cmp r4, #0x7f
	ble _08001C0A
	b _08001D2C
_08001C0A:
	ldrb r1, [r3, #2]
	ldrb r0, [r3, #3]
	mov r2, sb
	ands r0, r2
	lsls r0, r0, #8
	orrs r0, r1
	ldr r4, [sp, #0x18]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r1, [r3]
	ldr r2, [sp, #0x1c]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5]
	strh r0, [r5]
	ldrb r1, [r3, #2]
	ldrb r0, [r3, #3]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5, #2]
	strh r0, [r5, #2]
	ldrb r1, [r3, #4]
	ldrb r0, [r3, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5, #4]
	strh r0, [r5, #4]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r4, #3
	mov r1, sb
	orrs r1, r0
	ldrb r2, [r5, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	mov r0, sl
	cmp r0, #3
	beq _08001C7A
	ands r0, r4
	lsls r0, r0, #2
	ldrb r2, [r5, #1]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #1]
_08001C7A:
	ldrb r1, [r5, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #0x30]
	orrs r0, r1
	strb r0, [r5, #1]
	ldrb r1, [r5, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	ldr r2, [sp, #0x34]
	orrs r0, r2
	strb r0, [r5, #1]
	ldrb r0, [r5]
	strb r7, [r5]
	mov r0, ip
	lsls r1, r0, #0x17
	lsrs r1, r1, #0x17
	ldrh r2, [r5, #2]
	ldr r0, _08001D4C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #2]
	ldrh r1, [r5, #2]
	ldr r0, _08001D50 @ =0x0000C1FF
	ands r0, r1
	ldrh r1, [r5, #2]
	strh r0, [r5, #2]
	ldr r2, [sp, #0x2c]
	lsls r1, r2, #9
	ldrh r0, [r5, #2]
	orrs r1, r0
	ldrh r0, [r5, #2]
	strh r1, [r5, #2]
	ldrh r1, [r5, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r0, [sp, #0x60]
	adds r1, r1, r0
	ldr r2, _08001D54 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r5, #4]
	ldr r0, _08001D58 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #4]
	ldrb r1, [r5, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	ldr r0, [sp, #0x28]
	adds r1, r1, r0
	ands r1, r4
	lsls r1, r1, #2
	ldrb r2, [r5, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	ldrb r1, [r5, #5]
	lsrs r1, r1, #4
	ldr r2, [sp, #0x68]
	adds r1, r1, r2
	lsls r1, r1, #4
	ldrb r2, [r5, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	adds r5, #8
	movs r4, #1
	add r8, r4
	lsls r0, r6, #0x10
	ldr r1, _08001D48 @ =0xFFFF0000
	adds r0, r0, r1
	adds r3, #6
	lsrs r6, r0, #0x10
	cmp r0, #0
	ble _08001D1E
	b _08001C02
_08001D1E:
	ldr r1, _08001D44 @ =gUnk_03000000
	ldr r0, _08001D3C @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	mov r2, r8
	str r2, [r0]
_08001D2C:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001D3C: .4byte gUnk_03000008
_08001D40: .4byte gUnk_03000010
_08001D44: .4byte gUnk_03000000
_08001D48: .4byte 0xFFFF0000
_08001D4C: .4byte 0xFFFFFE00
_08001D50: .4byte 0x0000C1FF
_08001D54: .4byte 0x000003FF
_08001D58: .4byte 0xFFFFFC00

	thumb_func_start sub_08001D5C
sub_08001D5C: @ 0x08001D5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r7, r0, #0
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x68]
	ldr r4, [sp, #0x70]
	ldr r5, [sp, #0x74]
	ldr r6, [sp, #0x78]
	mov sl, r6
	ldr r6, [sp, #0x7c]
	mov r8, r6
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x20]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x24]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x28]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r3, r5, #0x10
	mov r0, sl
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	mov r1, r8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x2c]
	ldr r0, _08001F74 @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r2, r0, #0xa
	ldr r1, _08001F78 @ =gUnk_03000010
	adds r5, r2, r1
	ldr r1, _08001F7C @ =gUnk_03000000
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0x7f
	ble _08001DC8
	b _08001F64
_08001DC8:
	ldr r2, _08001F80 @ =0xFFFF0000
	lsls r0, r3, #0x10
	orrs r0, r4
	str r0, [sp, #8]
	add r0, sp, #8
	ldr r1, [r0, #4]
	ands r1, r2
	orrs r1, r6
	str r1, [r0, #4]
	add r4, sp, #0x10
	adds r1, r4, #0
	movs r2, #1
	movs r3, #2
	bl ObjAffineSet
	ldrh r1, [r4]
	mov r0, sp
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r4, #2]
	adds r0, #2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r4, #4]
	add r0, sp, #4
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r4, #6]
	adds r0, #2
	ldrh r2, [r0]
	strh r1, [r0]
	mov r0, sp
	bl sub_080010F8
	str r0, [sp, #0x30]
	mov r2, r8
	lsls r0, r2, #3
	adds r5, r5, r0
	adds r3, r7, #2
	ldrb r1, [r7]
	ldrb r0, [r7, #1]
	lsls r6, r0, #8
	orrs r6, r1
	lsls r0, r6, #0x10
	cmp r0, #0
	bgt _08001E26
	b _08001F56
_08001E26:
	movs r4, #1
	mov sl, r4
	ldr r0, [sp, #0x20]
	ands r0, r4
	lsls r0, r0, #4
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x24]
	ands r0, r4
	lsls r0, r0, #5
	str r0, [sp, #0x38]
_08001E3A:
	mov r0, r8
	cmp r0, #0x7f
	ble _08001E42
	b _08001F64
_08001E42:
	ldrb r1, [r3, #2]
	ldrb r0, [r3, #3]
	mov r2, sl
	ands r0, r2
	lsls r0, r0, #8
	orrs r0, r1
	ldr r4, [sp, #0x18]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r1, [r3]
	ldr r2, [sp, #0x1c]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5]
	strh r0, [r5]
	ldrb r1, [r3, #2]
	ldrb r0, [r3, #3]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5, #2]
	strh r0, [r5, #2]
	ldrb r1, [r3, #4]
	ldrb r0, [r3, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5, #4]
	strh r0, [r5, #4]
	movs r2, #1
	ldr r4, [sp, #0x2c]
	cmp r4, #0
	beq _08001E8E
	movs r2, #3
_08001E8E:
	movs r4, #3
	ldrb r1, [r5, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r2, r0
	strb r2, [r5, #1]
	mov r0, sb
	cmp r0, #3
	beq _08001EB2
	ands r0, r4
	lsls r0, r0, #2
	ldrb r2, [r5, #1]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #1]
_08001EB2:
	ldrb r1, [r5, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #0x34]
	orrs r0, r1
	strb r0, [r5, #1]
	ldrb r1, [r5, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	ldr r2, [sp, #0x38]
	orrs r0, r2
	strb r0, [r5, #1]
	ldrb r0, [r5]
	strb r7, [r5]
	mov r0, ip
	lsls r1, r0, #0x17
	lsrs r1, r1, #0x17
	ldrh r2, [r5, #2]
	ldr r0, _08001F84 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #2]
	ldrh r1, [r5, #2]
	ldr r0, _08001F88 @ =0x0000C1FF
	ands r0, r1
	ldrh r1, [r5, #2]
	strh r0, [r5, #2]
	ldr r2, [sp, #0x30]
	lsls r1, r2, #9
	ldrh r0, [r5, #2]
	orrs r1, r0
	ldrh r0, [r5, #2]
	strh r1, [r5, #2]
	ldrh r1, [r5, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r0, [sp, #0x64]
	adds r1, r1, r0
	ldr r2, _08001F8C @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r5, #4]
	ldr r0, _08001F90 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #4]
	ldrb r1, [r5, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	ldr r0, [sp, #0x28]
	adds r1, r1, r0
	ands r1, r4
	lsls r1, r1, #2
	ldrb r2, [r5, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	ldrb r1, [r5, #5]
	lsrs r1, r1, #4
	ldr r2, [sp, #0x6c]
	adds r1, r1, r2
	lsls r1, r1, #4
	ldrb r2, [r5, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	adds r5, #8
	movs r4, #1
	add r8, r4
	lsls r0, r6, #0x10
	ldr r6, _08001F80 @ =0xFFFF0000
	adds r0, r0, r6
	adds r3, #6
	lsrs r6, r0, #0x10
	cmp r0, #0
	ble _08001F56
	b _08001E3A
_08001F56:
	ldr r1, _08001F7C @ =gUnk_03000000
	ldr r0, _08001F74 @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0]
_08001F64:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001F74: .4byte gUnk_03000008
_08001F78: .4byte gUnk_03000010
_08001F7C: .4byte gUnk_03000000
_08001F80: .4byte 0xFFFF0000
_08001F84: .4byte 0xFFFFFE00
_08001F88: .4byte 0x0000C1FF
_08001F8C: .4byte 0x000003FF
_08001F90: .4byte 0xFFFFFC00

	thumb_func_start sub_08001F94
sub_08001F94: @ 0x08001F94
	ldr r1, _08001FA4 @ =gUnk_03002FB0
	ldr r0, _08001FA8 @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08001FA4: .4byte gUnk_03002FB0
_08001FA8: .4byte gUnk_03000008

	thumb_func_start sub_08001FAC
sub_08001FAC: @ 0x08001FAC
	ldr r1, _08001FBC @ =gUnk_030032C0
	ldr r0, _08001FC0 @ =gUnk_030032B8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08001FBC: .4byte gUnk_030032C0
_08001FC0: .4byte gUnk_030032B8

	thumb_func_start sub_08001FC4
sub_08001FC4: @ 0x08001FC4
	ldr r1, _08001FD4 @ =gUnk_03000000
	ldr r0, _08001FD8 @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08001FD4: .4byte gUnk_03000000
_08001FD8: .4byte gUnk_03000008

	thumb_func_start sub_08001FDC
sub_08001FDC: @ 0x08001FDC
	ldr r1, _08001FEC @ =gUnk_030034C8
	ldr r0, _08001FF0 @ =gUnk_030032B8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08001FEC: .4byte gUnk_030034C8
_08001FF0: .4byte gUnk_030032B8

	thumb_func_start sub_08001FF4
sub_08001FF4: @ 0x08001FF4
	ldr r2, _08002004 @ =gUnk_03002FB0
	ldr r1, _08002008 @ =gUnk_03000008
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_08002004: .4byte gUnk_03002FB0
_08002008: .4byte gUnk_03000008

	thumb_func_start sub_0800200C
sub_0800200C: @ 0x0800200C
	ldr r2, _0800201C @ =gUnk_030032C0
	ldr r1, _08002020 @ =gUnk_030032B8
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_0800201C: .4byte gUnk_030032C0
_08002020: .4byte gUnk_030032B8

	thumb_func_start sub_08002024
sub_08002024: @ 0x08002024
	ldr r2, _08002034 @ =gUnk_03000000
	ldr r1, _08002038 @ =gUnk_03000008
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_08002034: .4byte gUnk_03000000
_08002038: .4byte gUnk_03000008

	thumb_func_start sub_0800203C
sub_0800203C: @ 0x0800203C
	ldr r2, _0800204C @ =gUnk_030034C8
	ldr r1, _08002050 @ =gUnk_030032B8
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_0800204C: .4byte gUnk_030034C8
_08002050: .4byte gUnk_030032B8

	thumb_func_start sub_08002054
sub_08002054: @ 0x08002054
	ldr r0, _08002064 @ =gUnk_03000008
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r1, _08002068 @ =gUnk_03002FB8
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08002064: .4byte gUnk_03000008
_08002068: .4byte gUnk_03002FB8

	thumb_func_start sub_0800206C
sub_0800206C: @ 0x0800206C
	ldr r0, _08002078 @ =gUnk_030032B8
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldr r1, _0800207C @ =gUnk_030032C8
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08002078: .4byte gUnk_030032B8
_0800207C: .4byte gUnk_030032C8

	thumb_func_start sub_08002080
sub_08002080: @ 0x08002080
	ldr r0, _0800208C @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r0, r0, #0xa
	ldr r1, _08002090 @ =gUnk_03000010
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0800208C: .4byte gUnk_03000008
_08002090: .4byte gUnk_03000010

	thumb_func_start sub_08002094
sub_08002094: @ 0x08002094
	ldr r0, _080020A0 @ =gUnk_030032B8
	ldrb r0, [r0]
	lsls r0, r0, #7
	ldr r1, _080020A4 @ =gUnk_030034D0
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080020A0: .4byte gUnk_030032B8
_080020A4: .4byte gUnk_030034D0

	thumb_func_start sub_080020A8
sub_080020A8: @ 0x080020A8
	ldr r0, _080020B4 @ =gUnk_03000008
	ldrb r1, [r0]
	movs r2, #1
	eors r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080020B4: .4byte gUnk_03000008

	thumb_func_start sub_080020B8
sub_080020B8: @ 0x080020B8
	ldr r0, _080020C4 @ =gUnk_030032B8
	ldrb r1, [r0]
	movs r2, #1
	eors r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080020C4: .4byte gUnk_030032B8

	thumb_func_start sub_080020C8
sub_080020C8: @ 0x080020C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r4, [sp, #0x48]
	mov r8, r4
	ldr r5, [sp, #0x4c]
	mov sb, r5
	ldr r4, [sp, #0x50]
	mov sl, r4
	ldr r5, [sp, #0x54]
	mov ip, r5
	ldr r4, [sp, #0x5c]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r5, r8
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r8, r5
	mov r5, sb
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sb, r5
	mov r5, sl
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sl, r5
	mov r5, ip
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	lsls r4, r4, #0x18
	lsrs r7, r4, #0x18
	ldr r5, _08002168 @ =gUnk_03000008
	ldrb r4, [r5]
	lsls r6, r4, #1
	adds r6, r6, r4
	lsls r6, r6, #7
	ldr r5, _0800216C @ =gUnk_03002FB8
	adds r6, r6, r5
	lsls r4, r4, #2
	ldr r5, _08002170 @ =gUnk_03002FB0
	adds r4, r4, r5
	ldr r5, [r4]
	mov r4, r8
	str r4, [sp]
	mov r4, sb
	str r4, [sp, #4]
	mov r4, sl
	str r4, [sp, #8]
	mov r4, ip
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x58]
	str r4, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r4, [sp, #0x60]
	str r4, [sp, #0x18]
	str r6, [sp, #0x1c]
	movs r4, #0x30
	str r4, [sp, #0x20]
	str r5, [sp, #0x24]
	bl sub_080016B8
	ldr r5, _08002168 @ =gUnk_03000008
	ldrb r1, [r5]
	lsls r1, r1, #2
	ldr r2, _08002170 @ =gUnk_03002FB0
	adds r1, r1, r2
	str r0, [r1]
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002168: .4byte gUnk_03000008
_0800216C: .4byte gUnk_03002FB8
_08002170: .4byte gUnk_03002FB0

	thumb_func_start sub_08002174
sub_08002174: @ 0x08002174
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, [sp, #0x34]
	mov r8, r4
	ldr r7, [sp, #0x38]
	mov r5, r8
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r8, r5
	ldr r6, _080021D4 @ =gUnk_03000008
	mov sl, r6
	ldrb r4, [r6]
	lsls r5, r4, #1
	adds r5, r5, r4
	lsls r5, r5, #7
	ldr r6, _080021D8 @ =gUnk_03002FB8
	adds r5, r5, r6
	ldr r6, _080021DC @ =gUnk_03002FB0
	mov sb, r6
	lsls r4, r4, #2
	add r4, sb
	ldr r6, [r4]
	mov r4, r8
	str r4, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	movs r4, #0x30
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	bl sub_0800195C
	mov r5, sl
	ldrb r1, [r5]
	lsls r1, r1, #2
	add r1, sb
	str r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080021D4: .4byte gUnk_03000008
_080021D8: .4byte gUnk_03002FB8
_080021DC: .4byte gUnk_03002FB0

	thumb_func_start sub_080021E0
sub_080021E0: @ 0x080021E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r4, [sp, #0x48]
	mov r8, r4
	ldr r5, [sp, #0x4c]
	mov sb, r5
	ldr r4, [sp, #0x50]
	mov sl, r4
	ldr r5, [sp, #0x54]
	mov ip, r5
	ldr r4, [sp, #0x5c]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r5, r8
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r8, r5
	mov r5, sb
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sb, r5
	mov r5, sl
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sl, r5
	mov r5, ip
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	lsls r4, r4, #0x18
	lsrs r7, r4, #0x18
	ldr r5, _0800227C @ =gUnk_030032B8
	ldrb r4, [r5]
	lsls r6, r4, #8
	ldr r5, _08002280 @ =gUnk_030032C8
	adds r6, r6, r5
	lsls r4, r4, #2
	ldr r5, _08002284 @ =gUnk_030032C0
	adds r4, r4, r5
	ldr r5, [r4]
	mov r4, r8
	str r4, [sp]
	mov r4, sb
	str r4, [sp, #4]
	mov r4, sl
	str r4, [sp, #8]
	mov r4, ip
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x58]
	str r4, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r4, [sp, #0x60]
	str r4, [sp, #0x18]
	str r6, [sp, #0x1c]
	movs r4, #0x20
	str r4, [sp, #0x20]
	str r5, [sp, #0x24]
	bl sub_080016B8
	ldr r5, _0800227C @ =gUnk_030032B8
	ldrb r1, [r5]
	lsls r1, r1, #2
	ldr r2, _08002284 @ =gUnk_030032C0
	adds r1, r1, r2
	str r0, [r1]
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800227C: .4byte gUnk_030032B8
_08002280: .4byte gUnk_030032C8
_08002284: .4byte gUnk_030032C0

	thumb_func_start sub_08002288
sub_08002288: @ 0x08002288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r6, [sp, #0x34]
	ldr r7, [sp, #0x38]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r4, _080022E0 @ =gUnk_030032B8
	mov sl, r4
	ldrb r4, [r4]
	lsls r5, r4, #8
	mov r8, r5
	ldr r5, _080022E4 @ =gUnk_030032C8
	add r8, r5
	ldr r5, _080022E8 @ =gUnk_030032C0
	mov sb, r5
	lsls r4, r4, #2
	add r4, sb
	ldr r5, [r4]
	str r6, [sp]
	str r7, [sp, #4]
	mov r4, r8
	str r4, [sp, #8]
	movs r4, #0x20
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	bl sub_0800195C
	mov r5, sl
	ldrb r1, [r5]
	lsls r1, r1, #2
	add r1, sb
	str r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080022E0: .4byte gUnk_030032B8
_080022E4: .4byte gUnk_030032C8
_080022E8: .4byte gUnk_030032C0

	thumb_func_start sub_080022EC
sub_080022EC: @ 0x080022EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r4, [sp, #0x48]
	mov r8, r4
	ldr r5, [sp, #0x4c]
	mov sb, r5
	ldr r4, [sp, #0x50]
	mov sl, r4
	ldr r5, [sp, #0x54]
	mov ip, r5
	ldr r4, [sp, #0x5c]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r5, r8
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r8, r5
	mov r5, sb
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sb, r5
	mov r5, sl
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sl, r5
	mov r5, ip
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	lsls r4, r4, #0x18
	lsrs r7, r4, #0x18
	ldr r5, _08002388 @ =gUnk_03000008
	ldrb r4, [r5]
	lsls r6, r4, #0xa
	ldr r5, _0800238C @ =gUnk_03000010
	adds r6, r6, r5
	lsls r4, r4, #2
	ldr r5, _08002390 @ =gUnk_03000000
	adds r4, r4, r5
	ldr r5, [r4]
	mov r4, r8
	str r4, [sp]
	mov r4, sb
	str r4, [sp, #4]
	mov r4, sl
	str r4, [sp, #8]
	mov r4, ip
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x58]
	str r4, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r4, [sp, #0x60]
	str r4, [sp, #0x18]
	str r6, [sp, #0x1c]
	movs r4, #0x80
	str r4, [sp, #0x20]
	str r5, [sp, #0x24]
	bl sub_080016B8
	ldr r5, _08002388 @ =gUnk_03000008
	ldrb r1, [r5]
	lsls r1, r1, #2
	ldr r2, _08002390 @ =gUnk_03000000
	adds r1, r1, r2
	str r0, [r1]
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002388: .4byte gUnk_03000008
_0800238C: .4byte gUnk_03000010
_08002390: .4byte gUnk_03000000

	thumb_func_start sub_08002394
sub_08002394: @ 0x08002394
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r6, [sp, #0x34]
	ldr r7, [sp, #0x38]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r4, _080023EC @ =gUnk_03000008
	mov sl, r4
	ldrb r4, [r4]
	lsls r5, r4, #0xa
	mov r8, r5
	ldr r5, _080023F0 @ =gUnk_03000010
	add r8, r5
	ldr r5, _080023F4 @ =gUnk_03000000
	mov sb, r5
	lsls r4, r4, #2
	add r4, sb
	ldr r5, [r4]
	str r6, [sp]
	str r7, [sp, #4]
	mov r4, r8
	str r4, [sp, #8]
	movs r4, #0x80
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	bl sub_0800195C
	mov r5, sl
	ldrb r1, [r5]
	lsls r1, r1, #2
	add r1, sb
	str r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080023EC: .4byte gUnk_03000008
_080023F0: .4byte gUnk_03000010
_080023F4: .4byte gUnk_03000000

	thumb_func_start sub_080023F8
sub_080023F8: @ 0x080023F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r4, [sp, #0x48]
	mov r8, r4
	ldr r5, [sp, #0x4c]
	mov sb, r5
	ldr r4, [sp, #0x50]
	mov sl, r4
	ldr r5, [sp, #0x54]
	mov ip, r5
	ldr r4, [sp, #0x5c]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r5, r8
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r8, r5
	mov r5, sb
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sb, r5
	mov r5, sl
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sl, r5
	mov r5, ip
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	lsls r4, r4, #0x18
	lsrs r7, r4, #0x18
	ldr r5, _08002494 @ =gUnk_030032B8
	ldrb r4, [r5]
	lsls r6, r4, #7
	ldr r5, _08002498 @ =gUnk_030034D0
	adds r6, r6, r5
	lsls r4, r4, #2
	ldr r5, _0800249C @ =gUnk_030034C8
	adds r4, r4, r5
	ldr r5, [r4]
	mov r4, r8
	str r4, [sp]
	mov r4, sb
	str r4, [sp, #4]
	mov r4, sl
	str r4, [sp, #8]
	mov r4, ip
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x58]
	str r4, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r4, [sp, #0x60]
	str r4, [sp, #0x18]
	str r6, [sp, #0x1c]
	movs r4, #0x10
	str r4, [sp, #0x20]
	str r5, [sp, #0x24]
	bl sub_080016B8
	ldr r5, _08002494 @ =gUnk_030032B8
	ldrb r1, [r5]
	lsls r1, r1, #2
	ldr r2, _0800249C @ =gUnk_030034C8
	adds r1, r1, r2
	str r0, [r1]
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002494: .4byte gUnk_030032B8
_08002498: .4byte gUnk_030034D0
_0800249C: .4byte gUnk_030034C8

	thumb_func_start sub_080024A0
sub_080024A0: @ 0x080024A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r6, [sp, #0x34]
	ldr r7, [sp, #0x38]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r4, _080024F8 @ =gUnk_030032B8
	mov sl, r4
	ldrb r4, [r4]
	lsls r5, r4, #7
	mov r8, r5
	ldr r5, _080024FC @ =gUnk_030034D0
	add r8, r5
	ldr r5, _08002500 @ =gUnk_030034C8
	mov sb, r5
	lsls r4, r4, #2
	add r4, sb
	ldr r5, [r4]
	str r6, [sp]
	str r7, [sp, #4]
	mov r4, r8
	str r4, [sp, #8]
	movs r4, #0x10
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	bl sub_0800195C
	mov r5, sl
	ldrb r1, [r5]
	lsls r1, r1, #2
	add r1, sb
	str r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080024F8: .4byte gUnk_030032B8
_080024FC: .4byte gUnk_030034D0
_08002500: .4byte gUnk_030034C8
