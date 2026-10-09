	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	thumb_func_start sub_0804CD88
sub_0804CD88: @ 0x0804CD88
	push {r4, r5, r6, r7, lr}
	ldr r7, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	asrs r5, r2, #0x18
	adds r4, r0, r5
	lsls r3, r3, #0x18
	asrs r6, r3, #0x18
	adds r3, r1, r6
	cmp r4, #0
	blt _0804CE74
	cmp r3, #0
	blt _0804CE74
	cmp r4, #0x1f
	bgt _0804CE74
	cmp r3, #0x1f
	bgt _0804CE74
	lsls r0, r4, #4
	adds r0, r7, r0
	lsls r1, r3, #9
	adds r2, r0, r1
	cmp r5, #0
	bge _0804CDCC
	ldrb r1, [r2, #2]
	movs r0, #0x11
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r0, [r2, #4]
	ldr r1, _0804CE7C @ =0xFFEEEEEE
	ands r0, r1
	str r0, [r2, #4]
_0804CDCC:
	cmp r5, #0
	ble _0804CDE0
	ldrb r1, [r2, #2]
	movs r0, #0x44
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r0, [r2, #4]
	ldr r1, _0804CE80 @ =0xFFBBBBBB
	ands r0, r1
	str r0, [r2, #4]
_0804CDE0:
	cmp r6, #0
	bge _0804CDF4
	ldrb r1, [r2, #2]
	movs r0, #0x88
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r0, [r2, #4]
	ldr r1, _0804CE84 @ =0xFF777777
	ands r0, r1
	str r0, [r2, #4]
_0804CDF4:
	cmp r6, #0
	ble _0804CE08
	ldrb r1, [r2, #2]
	movs r0, #0x22
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r0, [r2, #4]
	ldr r1, _0804CE88 @ =0xFFDDDDDD
	ands r0, r1
	str r0, [r2, #4]
_0804CE08:
	adds r4, r4, r5
	adds r3, r3, r6
	cmp r4, #0
	blt _0804CE74
	cmp r3, #0
	blt _0804CE74
	cmp r4, #0x1f
	bgt _0804CE74
	cmp r3, #0x1f
	bgt _0804CE74
	lsls r0, r4, #4
	adds r0, r7, r0
	lsls r1, r3, #9
	adds r2, r0, r1
	cmp r5, #0
	bge _0804CE38
	ldrb r1, [r2, #2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r0, [r2, #4]
	ldr r1, _0804CE8C @ =0xFFEFEFEF
	ands r0, r1
	str r0, [r2, #4]
_0804CE38:
	cmp r5, #0
	ble _0804CE4C
	ldrb r1, [r2, #2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r0, [r2, #4]
	ldr r1, _0804CE90 @ =0xFFBFBFBF
	ands r0, r1
	str r0, [r2, #4]
_0804CE4C:
	cmp r6, #0
	bge _0804CE60
	ldrb r1, [r2, #2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r0, [r2, #4]
	ldr r1, _0804CE94 @ =0xFF7F7F7F
	ands r0, r1
	str r0, [r2, #4]
_0804CE60:
	cmp r6, #0
	ble _0804CE74
	ldrb r1, [r2, #2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r0, [r2, #4]
	ldr r1, _0804CE98 @ =0xFFDFDFDF
	ands r0, r1
	str r0, [r2, #4]
_0804CE74:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CE7C: .4byte 0xFFEEEEEE
_0804CE80: .4byte 0xFFBBBBBB
_0804CE84: .4byte 0xFF777777
_0804CE88: .4byte 0xFFDDDDDD
_0804CE8C: .4byte 0xFFEFEFEF
_0804CE90: .4byte 0xFFBFBFBF
_0804CE94: .4byte 0xFF7F7F7F
_0804CE98: .4byte 0xFFDFDFDF

	thumb_func_start sub_0804CE9C
sub_0804CE9C: @ 0x0804CE9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r1, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	lsrs r6, r0, #7
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	movs r7, #0x19
_0804CEBC:
	adds r0, r4, #0
	bl sub_0806D918
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804CF54
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804CF54
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804CF54
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #4
	adds r1, r5, r1
	ldrb r0, [r0, #0x15]
	lsls r0, r0, #9
	adds r2, r1, r0
	ldr r0, [r4]
	adds r0, #0x5d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804CEFE
	cmp r6, #1
	beq _0804CF02
	b _0804CF0C
_0804CEFE:
	cmp r6, #0
	bne _0804CF0C
_0804CF02:
	ldrb r1, [r2, #3]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, #3]
	b _0804CF54
_0804CF0C:
	ldrb r1, [r2, #3]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r1, [r4, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	str r5, [sp]
	mov r2, r8
	movs r3, #0
	bl sub_0804CD88
	ldr r1, [r4, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	str r5, [sp]
	movs r2, #1
	movs r3, #0
	bl sub_0804CD88
	ldr r1, [r4, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	str r5, [sp]
	movs r2, #0
	mov r3, r8
	bl sub_0804CD88
	ldr r1, [r4, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	str r5, [sp]
	movs r2, #0
	movs r3, #1
	bl sub_0804CD88
_0804CF54:
	subs r7, #1
	adds r4, #0xd0
	cmp r7, #0
	bge _0804CEBC
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804CF68
sub_0804CF68: @ 0x0804CF68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	movs r0, #0
	bl sub_0805B308
	adds r5, r0, #0
	movs r7, #0
_0804CF8A:
	adds r0, r5, #0
	bl sub_0806D918
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D008
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804D008
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804D008
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x5d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804CFC0
	cmp r6, #0
	beq _0804D008
	b _0804CFC4
_0804CFC0:
	cmp r6, #1
	beq _0804D008
_0804CFC4:
	ldr r1, [r5, #4]
	adds r0, r2, #0
	movs r2, #0x12
	bl sub_08143B70
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x11
	bl sub_08143B70
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D008
	ldr r0, [r5, #4]
	ldrb r1, [r0, #0x14]
	cmp sb, r1
	bne _0804D008
	ldrb r0, [r0, #0x15]
	cmp r8, r0
	bne _0804D008
	adds r0, r5, #0
	b _0804D012
_0804D008:
	adds r7, #1
	adds r5, #0xd0
	cmp r7, #0x19
	ble _0804CF8A
	movs r0, #0
_0804D012:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804D020
sub_0804D020: @ 0x0804D020
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r3, #0
	ldr r5, [sp, #0x20]
	ldr r3, [sp, #0x24]
	mov sb, r3
	ldr r3, [sp, #0x28]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	cmp r2, #2
	beq _0804D064
	cmp r2, #3
	beq _0804D05E
	movs r7, #2
	rsbs r7, r7, #0
	cmp r2, #4
	bne _0804D068
	subs r7, #1
	b _0804D068
_0804D05E:
	movs r7, #4
	rsbs r7, r7, #0
	b _0804D068
_0804D064:
	movs r7, #0x80
	rsbs r7, r7, #0
_0804D068:
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r3, [r4, #1]
	subs r2, r0, r3
	subs r6, r3, r0
	mov r0, sb
	ldrb r1, [r0, #3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804D080
	b _0804D1CC
_0804D080:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804D08A
	b _0804D1CC
_0804D08A:
	mov r0, sb
	ldrb r1, [r0, #1]
	adds r0, r3, #3
	cmp r1, r0
	ble _0804D096
	b _0804D1CC
_0804D096:
	cmp r2, #0
	bgt _0804D0E2
	cmp r2, r7
	blt _0804D0E2
	mov r1, ip
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D0B2
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4, #4]
_0804D0B2:
	cmp r2, #0
	ble _0804D0C0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #4]
_0804D0C0:
	mov r3, r8
	lsls r0, r3, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D0D4
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #4]
_0804D0D4:
	cmp r2, #0
	ble _0804D0E2
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #4]
_0804D0E2:
	cmp r6, #0
	bgt _0804D126
	cmp r6, r7
	blt _0804D126
	mov r1, ip
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D0FC
	ldr r0, [r5, #4]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5, #4]
_0804D0FC:
	cmp r2, #0
	ble _0804D108
	ldr r0, [r5, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #4]
_0804D108:
	mov r3, r8
	lsls r0, r3, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D11A
	ldr r0, [r5, #4]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5, #4]
_0804D11A:
	cmp r2, #0
	ble _0804D126
	ldr r0, [r5, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5, #4]
_0804D126:
	mov r0, sl
	cmp r0, #0
	beq _0804D1CC
	ldrb r1, [r5, #1]
	ldrb r0, [r4, #1]
	subs r2, r1, r0
	subs r6, r0, r1
	cmp r2, #0
	blt _0804D180
	cmp r2, r7
	blt _0804D180
	mov r1, ip
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D150
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #4]
_0804D150:
	cmp r2, #0
	ble _0804D15E
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r4, #4]
_0804D15E:
	mov r3, r8
	lsls r0, r3, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D172
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #4]
_0804D172:
	cmp r2, #0
	ble _0804D180
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r4, #4]
_0804D180:
	cmp r6, #0
	bgt _0804D1CC
	cmp r6, r7
	blt _0804D1CC
	mov r1, ip
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D19C
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r5, #4]
_0804D19C:
	cmp r2, #0
	ble _0804D1AA
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #4]
_0804D1AA:
	mov r3, r8
	lsls r0, r3, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D1BE
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #4]
_0804D1BE:
	cmp r2, #0
	ble _0804D1CC
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #4]
_0804D1CC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804D1DC
sub_0804D1DC: @ 0x0804D1DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r3, #0
	ldr r5, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	cmp r2, #2
	beq _0804D216
	cmp r2, #3
	beq _0804D212
	movs r7, #1
	cmp r2, #4
	bne _0804D218
	movs r7, #2
	b _0804D218
_0804D212:
	movs r7, #3
	b _0804D218
_0804D216:
	movs r7, #0x7f
_0804D218:
	cmp r2, #2
	beq _0804D232
	cmp r2, #3
	beq _0804D22C
	movs r6, #2
	rsbs r6, r6, #0
	cmp r2, #4
	bne _0804D236
	subs r6, #1
	b _0804D236
_0804D22C:
	movs r6, #4
	rsbs r6, r6, #0
	b _0804D236
_0804D232:
	movs r6, #0x80
	rsbs r6, r6, #0
_0804D236:
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r4, #1]
	subs r2, r0, r1
	subs r3, r1, r0
	cmp r2, r7
	bgt _0804D28C
	cmp r2, r6
	blt _0804D28C
	mov r1, ip
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D25C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #4]
_0804D25C:
	cmp r2, #0
	ble _0804D26A
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #4]
_0804D26A:
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D27E
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #4]
_0804D27E:
	cmp r2, #0
	ble _0804D28C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #4]
_0804D28C:
	cmp r3, r7
	bgt _0804D2D0
	cmp r3, r6
	blt _0804D2D0
	mov r1, ip
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D2A6
	ldr r0, [r5, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #4]
_0804D2A6:
	cmp r2, #0
	ble _0804D2B2
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
_0804D2B2:
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D2C4
	ldr r0, [r5, #4]
	movs r1, #8
	orrs r0, r1
	str r0, [r5, #4]
_0804D2C4:
	cmp r2, #0
	ble _0804D2D0
	ldr r0, [r5, #4]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #4]
_0804D2D0:
	mov r0, sb
	cmp r0, #0
	beq _0804D376
	ldrb r1, [r5, #1]
	ldrb r0, [r4, #1]
	subs r2, r1, r0
	subs r3, r0, r1
	cmp r2, r7
	bgt _0804D32A
	cmp r2, r6
	blt _0804D32A
	mov r1, ip
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D2FA
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #4]
_0804D2FA:
	cmp r2, #0
	ble _0804D308
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #4]
_0804D308:
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D31C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r4, #4]
_0804D31C:
	cmp r2, #0
	ble _0804D32A
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #4]
_0804D32A:
	cmp r3, r7
	bgt _0804D376
	cmp r3, r6
	blt _0804D376
	mov r1, ip
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D346
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r5, #4]
_0804D346:
	cmp r2, #0
	ble _0804D354
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #4]
_0804D354:
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	bge _0804D368
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #4]
_0804D368:
	cmp r2, #0
	ble _0804D376
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r5, #4]
_0804D376:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804D384
sub_0804D384: @ 0x0804D384
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, [sp, #0x38]
	ldr r5, [sp, #0x3c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0xc]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sb, r5
	lsls r4, r0, #4
	ldr r5, [sp, #0x40]
	adds r4, r5, r4
	lsls r5, r1, #9
	adds r4, r4, r5
	str r4, [sp, #0x10]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov r8, r2
	adds r6, r0, r2
	lsls r3, r3, #0x18
	asrs r7, r3, #0x18
	adds r5, r1, r7
	cmp r6, #0
	blt _0804D480
	cmp r5, #0
	blt _0804D480
	cmp r6, #0x1f
	bgt _0804D480
	cmp r5, #0x1f
	bgt _0804D480
	lsls r0, r6, #4
	ldr r1, [sp, #0x40]
	adds r0, r1, r0
	lsls r1, r5, #9
	adds r4, r0, r1
	str r4, [sp, #0x14]
	ldrb r0, [r4, #2]
	cmp r0, #0xff
	beq _0804D480
	ldrb r1, [r4, #3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804D480
	movs r2, #8
	mov sl, r2
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0804D480
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	mov r2, sb
	bl sub_0804CF68
	adds r1, r0, #0
	str r4, [sp]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_0804D1DC
	add r6, r8
	adds r5, r5, r7
	cmp r6, #0
	blt _0804D480
	cmp r5, #0
	blt _0804D480
	cmp r6, #0x1f
	bgt _0804D480
	cmp r5, #0x1f
	bgt _0804D480
	lsls r0, r6, #4
	ldr r1, [sp, #0x40]
	adds r0, r1, r0
	lsls r1, r5, #9
	adds r4, r0, r1
	ldrb r0, [r4, #2]
	cmp r0, #0xff
	beq _0804D480
	ldrb r1, [r4, #3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804D480
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0804D480
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	mov r2, sb
	bl sub_0804CF68
	adds r1, r0, #0
	str r4, [sp]
	ldr r2, [sp, #0x14]
	str r2, [sp, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #8]
	mov r0, r8
	adds r1, r7, #0
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_0804D020
_0804D480:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804D490
sub_0804D490: @ 0x0804D490
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r0, #0
	bl sub_0805B308
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	movs r2, #0x19
	mov sb, r2
_0804D4BA:
	adds r0, r5, #0
	bl sub_0806D918
	adds r1, r0, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _0804D58C
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804D58C
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x5d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804D4E8
	cmp r6, #0
	beq _0804D58C
	b _0804D4EC
_0804D4E8:
	cmp r6, #1
	beq _0804D58C
_0804D4EC:
	ldr r1, [r5, #4]
	adds r0, r2, #0
	movs r2, #0x12
	bl sub_08143B70
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x11
	bl sub_08143B70
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D58C
	ldr r0, [r5, #4]
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #4
	adds r1, r7, r1
	ldrb r0, [r0, #0x15]
	lsls r0, r0, #9
	adds r1, r1, r0
	ldrb r2, [r1, #3]
	movs r0, #1
	orrs r0, r2
	strb r0, [r1, #3]
	ldr r1, [r5, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r2, sl
	movs r3, #0
	bl sub_0804D384
	ldr r1, [r5, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	movs r2, #1
	movs r3, #0
	bl sub_0804D384
	ldr r1, [r5, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	movs r2, #0
	mov r3, sl
	bl sub_0804D384
	ldr r1, [r5, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	movs r2, #0
	movs r3, #1
	bl sub_0804D384
_0804D58C:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	adds r5, #0xd0
	mov r2, sb
	cmp r2, #0
	bge _0804D4BA
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804D5AC
sub_0804D5AC: @ 0x0804D5AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r2, #0
	mov sb, r3
	ldr r5, [sp, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	mov r0, sb
	adds r1, r5, #0
	bl sub_08139B74
	adds r6, r0, #0
	mov r0, sb
	adds r1, r5, #0
	bl sub_08139920
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	ldrb r5, [r6, #1]
	lsrs r0, r0, #0x18
	mov r2, r8
	lsls r1, r2, #4
	adds r4, r4, r1
	lsls r1, r7, #9
	adds r4, r4, r1
	ldrh r1, [r4, #0xa]
	cmp r1, r0
	bhi _0804D654
	mov r0, r8
	adds r1, r7, #0
	bl sub_08028728
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0804D654
	ldrb r1, [r2, #1]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0804D654
	ldrb r1, [r2, #2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D654
	ldrb r1, [r2, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804D654
	mov r0, r8
	adds r1, r7, #0
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _0804D65C @ =gUnk_0861CA5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804D654
	movs r0, #0x10
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	beq _0804D650
	cmp r5, #1
	beq _0804D650
	subs r1, #1
_0804D650:
	cmp r1, #0
	beq _0804D660
_0804D654:
	movs r1, #1
	rsbs r1, r1, #0
	b _0804D678
	.align 2, 0
_0804D65C: .4byte gUnk_0861CA5C
_0804D660:
	mov r0, r8
	adds r1, r7, #0
	bl sub_0806D814
	cmp r0, #0
	beq _0804D676
	ldr r0, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	cmp r0, sb
	bne _0804D678
_0804D676:
	movs r1, #0
_0804D678:
	adds r0, r1, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804D688
sub_0804D688: @ 0x0804D688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	adds r4, r1, #0
	str r2, [sp]
	bl sub_08139B74
	str r0, [sp, #4]
	mov r0, sb
	adds r1, r4, #0
	bl sub_08139920
	movs r1, #0xa
	bl __udivsi3
	movs r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
_0804D6B6:
	movs r6, #0
	lsls r0, r1, #0x18
	lsls r7, r1, #0x10
	adds r1, #1
	mov sl, r1
	lsrs r5, r0, #0x18
_0804D6C2:
	lsls r0, r6, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #4]
	ldrb r0, [r0, #1]
	mov r8, r0
	lsls r0, r4, #4
	ldr r1, [sp]
	adds r0, r1, r0
	lsls r1, r5, #9
	adds r0, r0, r1
	ldrh r0, [r0, #0xa]
	ldr r1, [sp, #8]
	cmp r0, r1
	bhi _0804D75E
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08028728
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0804D75E
	ldrb r1, [r2, #1]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0804D75E
	ldrb r1, [r2, #2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D75E
	ldrb r1, [r2, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804D75E
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _0804D76C @ =gUnk_0861CA5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804D75E
	movs r0, #0x10
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	beq _0804D73E
	mov r0, r8
	cmp r0, #1
	beq _0804D73E
	subs r1, #1
_0804D73E:
	cmp r1, #0
	bne _0804D75E
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D814
	cmp r0, #0
	beq _0804D770
	ldr r0, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	cmp r0, sb
	bne _0804D75A
	movs r1, #0
_0804D75A:
	cmp r1, #0
	beq _0804D770
_0804D75E:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r7, #0x10
	bl sub_080288B8
	b _0804D77A
	.align 2, 0
_0804D76C: .4byte gUnk_0861CA5C
_0804D770:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r7, #0x10
	bl sub_0802885C
_0804D77A:
	adds r6, #1
	cmp r6, #0x1f
	ble _0804D6C2
	mov r1, sl
	cmp r1, #0x1f
	ble _0804D6B6
	bl sub_0805B380
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804D79C
sub_0804D79C: @ 0x0804D79C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r3
	ldr r3, [sp, #0x24]
	ldr r4, [sp, #0x28]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r8, r4
	lsls r0, r5, #4
	adds r2, r2, r0
	lsls r0, r7, #9
	adds r2, r2, r0
	movs r6, #0
	mov r0, ip
	cmp r0, #0
	beq _0804D7E6
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0804D7E6
	lsls r0, r3, #1
	subs r0, #2
	mov r1, ip
	adds r6, r1, r0
_0804D7E6:
	movs r0, #0
	mov sl, r0
	mov sb, r0
	adds r4, r7, #0
	movs r7, #0
_0804D7F0:
	ldrh r3, [r2, #0xc]
	mov r1, sl
	cmp r1, #0
	beq _0804D7FA
	asrs r3, r3, #4
_0804D7FA:
	movs r0, #0xf
	ands r3, r0
	cmp r3, #9
	beq _0804D822
	cmp r3, #0xa
	beq _0804D82A
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0804D842
	ldrh r0, [r2, #0xa]
	cmp r0, r1
	bgt _0804D842
	mov r0, ip
	cmp r0, #0
	beq _0804D83C
	b _0804D830
_0804D822:
	movs r1, #0
	mov sb, r1
	mov sl, r1
	b _0804D7F0
_0804D82A:
	movs r0, #1
	mov sl, r0
	b _0804D7F0
_0804D830:
	ldr r1, [sp]
	subs r0, r1, r7
	lsls r0, r0, #1
	mov r1, ip
	adds r6, r1, r0
	subs r6, #2
_0804D83C:
	movs r0, #0xff
	mov r8, r0
	movs r7, #0
_0804D842:
	cmp r6, #0
	beq _0804D878
	mov r1, sb
	cmp r1, #1
	bne _0804D858
	movs r1, #0x80
	rsbs r1, r1, #0
	adds r0, r1, #0
	adds r1, r0, #0
	orrs r1, r5
	b _0804D85A
_0804D858:
	adds r1, r5, #0
_0804D85A:
	ldrb r0, [r6]
	strb r1, [r6]
	mov r0, sb
	cmp r0, #1
	bne _0804D870
	movs r1, #0x80
	rsbs r1, r1, #0
	adds r0, r1, #0
	adds r1, r0, #0
	orrs r1, r4
	b _0804D872
_0804D870:
	adds r1, r4, #0
_0804D872:
	ldrb r0, [r6, #1]
	strb r1, [r6, #1]
	subs r6, #2
_0804D878:
	adds r7, #1
	mov sb, sl
	cmp r3, #8
	bhi _0804D7F0
	lsls r0, r3, #2
	ldr r1, _0804D88C @ =_0804D890
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804D88C: .4byte _0804D890
_0804D890: @ jump table
	.4byte _0804D8B4 @ case 0
	.4byte _0804D8B8 @ case 1
	.4byte _0804D8C4 @ case 2
	.4byte _0804D8BE @ case 3
	.4byte _0804D8D0 @ case 4
	.4byte _0804D8DA @ case 5
	.4byte _0804D8E6 @ case 6
	.4byte _0804D8E0 @ case 7
	.4byte _0804D8F4 @ case 8
_0804D8B4:
	adds r0, r7, #0
	b _0804D8FE
_0804D8B8:
	adds r2, #0x10
	adds r5, #1
	b _0804D7F0
_0804D8BE:
	subs r2, #0x10
	subs r5, #1
	b _0804D7F0
_0804D8C4:
	ldr r0, _0804D8CC @ =0xFFFFFE00
	adds r2, r2, r0
	subs r4, #1
	b _0804D7F0
	.align 2, 0
_0804D8CC: .4byte 0xFFFFFE00
_0804D8D0:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r4, #1
	b _0804D7F0
_0804D8DA:
	adds r5, #2
	adds r2, #0x20
	b _0804D7F0
_0804D8E0:
	subs r5, #2
	subs r2, #0x20
	b _0804D7F0
_0804D8E6:
	ldr r0, _0804D8F0 @ =0xFFFFFC00
	adds r2, r2, r0
	subs r4, #2
	b _0804D7F0
	.align 2, 0
_0804D8F0: .4byte 0xFFFFFC00
_0804D8F4:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r2, r2, r1
	adds r4, #2
	b _0804D7F0
_0804D8FE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804D910
sub_0804D910: @ 0x0804D910
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	ldr r7, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	ldr r6, [sp, #0x20]
	strb r1, [r0]
	strb r2, [r0, #1]
	str r4, [r0, #0x14]
	str r3, [r0, #0x10]
	str r5, [r0, #0xc]
	str r7, [r0, #8]
	strh r6, [r0, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804D930
sub_0804D930: @ 0x0804D930
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	str r4, [sp]
	str r5, [sp, #4]
	movs r4, #1
	str r4, [sp, #8]
	bl sub_0804C1A8
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0804D954
sub_0804D954: @ 0x0804D954
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	str r4, [sp]
	str r5, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	bl sub_0804C1A8
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0804D978
sub_0804D978: @ 0x0804D978
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r2, #0
	bl sub_08139B74
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0804D9FC
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	lsrs r6, r0, #7
	movs r5, #0
_0804D9A0:
	adds r0, r4, #0
	bl sub_0806D918
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D9EA
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804D9EA
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0804D9C8
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804D9EA
_0804D9C8:
	ldr r0, [r4]
	adds r0, #0x5d
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, r6
	beq _0804D9EA
	ldr r0, [r4, #4]
	ldrb r2, [r0, #0x14]
	adds r2, r7, r2
	ldrb r0, [r0, #0x15]
	lsls r0, r0, #5
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r0, #3
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
_0804D9EA:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0xd0
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x19
	ble _0804D9A0
_0804D9FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804DA04
sub_0804DA04: @ 0x0804DA04
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, r2, #0
	adds r1, r3, #0
	ldr r2, [sp, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_0804EBFC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, r1, #0
	ldr r0, _0804DA2C @ =0x0000FFFF
	cmp r1, r0
	bne _0804DA30
	adds r0, r1, #0
	b _0804DA44
	.align 2, 0
_0804DA2C: .4byte 0x0000FFFF
_0804DA30:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08139B74
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804DA42
	adds r0, r4, #0
	b _0804DA44
_0804DA42:
	movs r0, #2
_0804DA44:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804DA4C
sub_0804DA4C: @ 0x0804DA4C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r2, [sp, #0x14]
	ldr r4, [sp, #0x24]
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08139B74
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _0804DAD2
	lsls r0, r0, #2
	ldr r1, _0804DA7C @ =_0804DA80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804DA7C: .4byte _0804DA80
_0804DA80: @ jump table
	.4byte _0804DAD2 @ case 0
	.4byte _0804DA94 @ case 1
	.4byte _0804DAA0 @ case 2
	.4byte _0804DAAC @ case 3
	.4byte _0804DAB8 @ case 4
_0804DA94:
	movs r0, #0x7f
	strh r0, [r5, #4]
	ldr r0, _0804DA9C @ =0x0000FF80
	b _0804DABE
	.align 2, 0
_0804DA9C: .4byte 0x0000FF80
_0804DAA0:
	movs r0, #3
	strh r0, [r5, #4]
	ldr r0, _0804DAA8 @ =0x0000FFFC
	b _0804DABE
	.align 2, 0
_0804DAA8: .4byte 0x0000FFFC
_0804DAAC:
	movs r0, #2
	strh r0, [r5, #4]
	ldr r0, _0804DAB4 @ =0x0000FFFD
	b _0804DABE
	.align 2, 0
_0804DAB4: .4byte 0x0000FFFD
_0804DAB8:
	movs r0, #1
	strh r0, [r5, #4]
	ldr r0, _0804DAD8 @ =0x0000FFFE
_0804DABE:
	strh r0, [r5, #6]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x18]
	str r0, [r5, #8]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0xc]
	strb r7, [r5]
	strb r6, [r5, #1]
	strh r4, [r5, #2]
_0804DAD2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DAD8: .4byte 0x0000FFFE

	thumb_func_start sub_0804DADC
sub_0804DADC: @ 0x0804DADC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r1, #0
	adds r4, r2, #0
	mov sb, r3
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	adds r1, r5, #0
	bl sub_08139B74
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804DB26
	ldrb r0, [r5, #0x14]
	ldrb r1, [r4]
	strb r0, [r4]
	ldrb r0, [r5, #0x15]
	ldrb r1, [r4, #1]
	strb r0, [r4, #1]
	adds r0, r4, #2
	ldrb r1, [r4, #2]
	strb r7, [r4, #2]
	ldrb r1, [r0, #1]
	mov r1, r8
	strb r1, [r0, #1]
	b _0804DB34
_0804DB26:
	str r6, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r7, #0
	mov r3, r8
	bl sub_0804EC80
_0804DB34:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804DB44
sub_0804DB44: @ 0x0804DB44
	push {r4, lr}
	adds r4, r2, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r0, #0x18
	lsrs r0, r3, #0x18
	cmp r0, #0x1f
	bhi _0804DB80
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0804DB80
	cmp r0, #0x1f
	bgt _0804DB80
	asrs r2, r3, #0x1b
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r4, r2
	movs r1, #0xe0
	lsls r1, r1, #0x13
	ands r1, r3
	asrs r1, r1, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r1
	lsrs r0, r0, #0x18
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0804DB84
_0804DB80:
	movs r0, #0
	b _0804DB86
_0804DB84:
	movs r0, #1
_0804DB86:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0804DB8C
sub_0804DB8C: @ 0x0804DB8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	bl sub_08139B74
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804DBA6
	movs r0, #0
	b _0804DC28
_0804DBA6:
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r4, #0
	bl BattleAlloc
	mov r8, r0
	adds r1, r4, #0
	bl memzero
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08139B74
	adds r5, r0, #0
	adds r0, r7, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	lsrs r0, r0, #7
	mov sb, r0
	ldrb r0, [r5]
	ldrb r1, [r5, #1]
	ldrb r2, [r5, #2]
	mov r3, r8
	bl BuildReachMap
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	movs r1, #0x80
	lsls r1, r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0804DC18
	ldrb r0, [r5]
	cmp r0, #2
	beq _0804DC26
	mov r1, sb
	mov r2, r8
	bl sub_0804D490
_0804DC18:
	ldrb r0, [r5]
	cmp r0, #2
	beq _0804DC26
	adds r0, r7, #0
	mov r1, r8
	bl sub_0804CE9C
_0804DC26:
	mov r0, r8
_0804DC28:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0804DC34
sub_0804DC34: @ 0x0804DC34
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #7
	mov sb, r0
	bl BattleAlloc
	adds r4, r0, #0
	mov r1, sb
	bl memzero
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, r8
	adds r3, r4, #0
	bl BuildReachMap
	adds r0, r4, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804DC80
sub_0804DC80: @ 0x0804DC80
	push {lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r3, #0
	str r3, [sp]
	subs r3, #1
	str r3, [sp, #4]
	movs r3, #0
	bl sub_0804D79C
	add sp, #8
	pop {r1}
	bx r1

	thumb_func_start sub_0804DCA0
sub_0804DCA0: @ 0x0804DCA0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r0, #0
	str r0, [sp]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_0804D79C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	mov r3, sb
	bl sub_0804D79C
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0804DCF0
sub_0804DCF0: @ 0x0804DCF0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r4, [sp, #0x20]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0
	str r0, [sp]
	subs r0, #1
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #0
	bl sub_0804D79C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	str r4, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, r8
	mov r3, sb
	bl sub_0804D79C
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0804DD48
sub_0804DD48: @ 0x0804DD48
	push {r4, r5, lr}
	adds r4, r2, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0x1f
	bhi _0804DD92
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	blt _0804DD92
	cmp r1, #0x1f
	bgt _0804DD92
	asrs r0, r2, #0x1b
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r3, r4, r0
	movs r1, #0xe0
	lsls r1, r1, #0x13
	ands r1, r2
	asrs r1, r1, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r1
	lsrs r2, r0, #0x18
	cmp r5, #1
	bne _0804DD8C
	ldrb r1, [r3]
	adds r0, r2, #0
	orrs r0, r1
	b _0804DD90
_0804DD8C:
	ldrb r0, [r3]
	bics r0, r2
_0804DD90:
	strb r0, [r3]
_0804DD92:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0804DD98
sub_0804DD98: @ 0x0804DD98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r4, [sp, #0x44]
	ldr r5, [sp, #0x48]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r6, #2
	beq _0804DDE2
	cmp r6, #3
	beq _0804DDDC
	movs r0, #1
	str r0, [sp, #0xc]
	cmp r6, #4
	bne _0804DDE6
	movs r1, #2
	str r1, [sp, #0xc]
	b _0804DDE6
_0804DDDC:
	movs r2, #3
	str r2, [sp, #0xc]
	b _0804DDE6
_0804DDE2:
	movs r0, #0x7f
	str r0, [sp, #0xc]
_0804DDE6:
	cmp r6, #2
	beq _0804DE08
	cmp r6, #3
	beq _0804DE00
	movs r1, #2
	rsbs r1, r1, #0
	str r1, [sp, #0x10]
	cmp r6, #4
	bne _0804DE0E
	movs r2, #3
	rsbs r2, r2, #0
	str r2, [sp, #0x10]
	b _0804DE0E
_0804DE00:
	movs r0, #4
	rsbs r0, r0, #0
	str r0, [sp, #0x10]
	b _0804DE0E
_0804DE08:
	movs r1, #0x80
	rsbs r1, r1, #0
	str r1, [sp, #0x10]
_0804DE0E:
	mov r2, r8
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	mov r2, sb
	lsls r1, r2, #0x18
	asrs r1, r1, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileHeight
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x14]
	cmp r7, #0
	blt _0804DF1A
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x18]
	add r0, r8
	str r0, [sp, #4]
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x1c]
	add r0, sb
	mov r8, r0
	movs r1, #0
	mov sb, r1
	ldr r2, [sp, #4]
	lsls r5, r2, #0x18
	asrs r0, r5, #0x18
	mov r1, r8
	lsls r4, r1, #0x18
	asrs r1, r4, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileHeight
	str r0, [sp, #8]
	cmp r0, #0
	bge _0804DE62
	movs r0, #3
	b _0804DF1A
_0804DE62:
	ldr r2, [sp, #8]
	subs r2, r2, r7
	str r2, [sp, #0x20]
	lsrs r0, r5, #0x18
	lsrs r1, r4, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileCost
	mov sl, r0
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x18]
	adds r0, r1, r2
	ldr r1, [sp, #0x1c]
	add r1, r8
	lsls r4, r0, #0x18
	asrs r0, r4, #0x18
	lsls r5, r1, #0x18
	asrs r1, r5, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileHeight
	mov r8, r0
	cmp r0, #0
	bge _0804DE9C
	movs r0, #2
	mov sb, r0
	b _0804DEDC
_0804DE9C:
	lsrs r4, r4, #0x18
	lsrs r5, r5, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileCost
	add sl, r0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileCost
	adds r0, #1
	str r0, [sp, #0x14]
	mov r1, r8
	subs r0, r1, r7
	cmp r8, r7
	ble _0804DECA
	movs r2, #2
	mov sb, r2
_0804DECA:
	cmp r0, #0
	bgt _0804DEDC
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bge _0804DEDC
	movs r0, #2
	mov r2, sb
	orrs r2, r0
	mov sb, r2
_0804DEDC:
	ldr r0, [sp, #8]
	cmp r0, r7
	ble _0804DEEA
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804DEEA:
	ldr r2, [sp, #0x20]
	ldr r0, [sp, #0xc]
	cmp r2, r0
	bgt _0804DEF8
	ldr r1, [sp, #0x10]
	cmp r2, r1
	bge _0804DF00
_0804DEF8:
	movs r0, #1
	mov r2, sb
	orrs r2, r0
	mov sb, r2
_0804DF00:
	ldr r0, [sp, #0x14]
	cmp sl, r0
	bne _0804DF18
	cmp r7, r8
	bne _0804DF10
	ldr r1, [sp, #8]
	cmp r1, r7
	blt _0804DF18
_0804DF10:
	movs r0, #2
	mov r2, sb
	orrs r2, r0
	mov sb, r2
_0804DF18:
	mov r0, sb
_0804DF1A:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804DF2C
sub_0804DF2C: @ 0x0804DF2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa4
	ldr r4, [sp, #0xc4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #8]
	bl sub_08028728
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0804DF72
	ldrb r1, [r2, #1]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DF7A
_0804DF72:
	movs r0, #0xff
	ldr r1, [sp, #0xc8]
	strb r0, [r1, #2]
	b _0804E68E
_0804DF7A:
	ldrb r1, [r2, #2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0804DF8C
	movs r0, #0xff
	ldr r2, [sp, #0xc8]
	strb r0, [r2, #2]
	b _0804E68E
_0804DF8C:
	ldrb r1, [r2, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804DF9E
	movs r0, #0xff
	ldr r5, [sp, #0xc8]
	strb r0, [r5, #2]
	b _0804E68E
_0804DF9E:
	ldr r0, [sp]
	cmp r0, #0xa
	bne _0804DFA6
	ldr r1, [sp, #4]
_0804DFA6:
	cmp r6, #2
	beq _0804DFC2
	cmp r6, #3
	beq _0804DFBC
	movs r2, #1
	str r2, [sp, #0xc]
	cmp r6, #4
	bne _0804DFC6
	movs r5, #2
	str r5, [sp, #0xc]
	b _0804DFC6
_0804DFBC:
	movs r0, #3
	str r0, [sp, #0xc]
	b _0804DFC6
_0804DFC2:
	movs r1, #0x7f
	str r1, [sp, #0xc]
_0804DFC6:
	cmp r6, #2
	beq _0804DFE8
	cmp r6, #3
	beq _0804DFE0
	movs r2, #2
	rsbs r2, r2, #0
	str r2, [sp, #0x10]
	cmp r6, #4
	bne _0804DFEE
	movs r5, #3
	rsbs r5, r5, #0
	str r5, [sp, #0x10]
	b _0804DFEE
_0804DFE0:
	movs r0, #4
	rsbs r0, r0, #0
	str r0, [sp, #0x10]
	b _0804DFEE
_0804DFE8:
	movs r1, #0x80
	rsbs r1, r1, #0
	str r1, [sp, #0x10]
_0804DFEE:
	ldr r2, [sp]
	lsls r5, r2, #0x18
	asrs r0, r5, #0x18
	ldr r1, [sp, #4]
	lsls r4, r1, #0x18
	asrs r1, r4, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileHeight
	adds r7, r0, #0
	movs r2, #0
	str r2, [sp, #0x18]
	str r5, [sp, #0x9c]
	str r4, [sp, #0xa0]
	cmp r7, #0
	blt _0804E100
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [sp, #0x1c]
	ldr r0, [sp]
	adds r0, r0, r5
	str r0, [sp, #0x20]
	movs r1, #0
	str r1, [sp, #0x24]
	ldr r2, [sp, #4]
	adds r2, r2, r1
	mov r8, r2
	mov sb, r1
	lsls r5, r0, #0x18
	asrs r0, r5, #0x18
	lsls r4, r2, #0x18
	asrs r1, r4, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileHeight
	str r0, [sp, #0x28]
	cmp r0, #0
	bge _0804E042
	movs r2, #3
	b _0804E100
_0804E042:
	ldr r0, [sp, #0x28]
	subs r0, r0, r7
	str r0, [sp, #0x98]
	lsrs r0, r5, #0x18
	lsrs r1, r4, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileCost
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	adds r0, r1, r2
	ldr r1, [sp, #0x24]
	add r1, r8
	lsls r4, r0, #0x18
	asrs r0, r4, #0x18
	lsls r5, r1, #0x18
	asrs r1, r5, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileHeight
	mov r8, r0
	cmp r0, #0
	bge _0804E07C
	movs r5, #2
	mov sb, r5
	b _0804E0C0
_0804E07C:
	lsrs r4, r4, #0x18
	lsrs r5, r5, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileCost
	ldr r1, [sp, #0x14]
	adds r1, r1, r0
	str r1, [sp, #0x14]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileCost
	adds r0, #1
	str r0, [sp, #0x18]
	mov r2, r8
	subs r0, r2, r7
	cmp r8, r7
	ble _0804E0AE
	movs r5, #2
	mov sb, r5
_0804E0AE:
	cmp r0, #0
	bgt _0804E0C0
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bge _0804E0C0
	movs r0, #2
	mov r2, sb
	orrs r2, r0
	mov sb, r2
_0804E0C0:
	ldr r5, [sp, #0x28]
	cmp r5, r7
	ble _0804E0CE
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804E0CE:
	ldr r2, [sp, #0x98]
	ldr r5, [sp, #0xc]
	cmp r2, r5
	bgt _0804E0DC
	ldr r0, [sp, #0x10]
	cmp r2, r0
	bge _0804E0E4
_0804E0DC:
	movs r0, #1
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804E0E4:
	ldr r2, [sp, #0x14]
	ldr r5, [sp, #0x18]
	cmp r2, r5
	bne _0804E0FE
	cmp r7, r8
	bne _0804E0F6
	ldr r0, [sp, #0x28]
	cmp r0, r7
	blt _0804E0FE
_0804E0F6:
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804E0FE:
	mov r2, sb
_0804E100:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0804E112
	ldr r5, [sp, #0xc8]
	ldrb r1, [r5, #2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r5, #2]
_0804E112:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0804E126
	ldr r0, [sp, #0xc8]
	ldrb r1, [r0, #2]
	movs r0, #0x40
	orrs r0, r1
	ldr r1, [sp, #0xc8]
	strb r0, [r1, #2]
_0804E126:
	cmp r6, #2
	beq _0804E142
	cmp r6, #3
	beq _0804E13C
	movs r2, #1
	str r2, [sp, #0x2c]
	cmp r6, #4
	bne _0804E146
	movs r5, #2
	str r5, [sp, #0x2c]
	b _0804E146
_0804E13C:
	movs r0, #3
	str r0, [sp, #0x2c]
	b _0804E146
_0804E142:
	movs r1, #0x7f
	str r1, [sp, #0x2c]
_0804E146:
	cmp r6, #2
	beq _0804E168
	cmp r6, #3
	beq _0804E160
	movs r2, #2
	rsbs r2, r2, #0
	str r2, [sp, #0x30]
	cmp r6, #4
	bne _0804E16E
	movs r5, #3
	rsbs r5, r5, #0
	str r5, [sp, #0x30]
	b _0804E16E
_0804E160:
	movs r0, #4
	rsbs r0, r0, #0
	str r0, [sp, #0x30]
	b _0804E16E
_0804E168:
	movs r1, #0x80
	rsbs r1, r1, #0
	str r1, [sp, #0x30]
_0804E16E:
	ldr r2, [sp, #0x9c]
	asrs r0, r2, #0x18
	ldr r5, [sp, #0xa0]
	asrs r1, r5, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileHeight
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x38]
	cmp r7, #0
	bge _0804E18C
	movs r2, #0
	b _0804E27A
_0804E18C:
	movs r1, #1
	str r1, [sp, #0x3c]
	ldr r2, [sp]
	adds r2, r2, r1
	str r2, [sp, #0x40]
	movs r5, #0
	str r5, [sp, #0x44]
	ldr r0, [sp, #4]
	adds r0, r0, r5
	mov r8, r0
	mov sb, r5
	lsls r5, r2, #0x18
	asrs r0, r5, #0x18
	mov r1, r8
	lsls r4, r1, #0x18
	asrs r1, r4, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileHeight
	str r0, [sp, #0x48]
	cmp r0, #0
	bge _0804E1BE
	movs r2, #3
	b _0804E27A
_0804E1BE:
	ldr r2, [sp, #0x48]
	subs r2, r2, r7
	str r2, [sp, #0x90]
	lsrs r0, r5, #0x18
	lsrs r1, r4, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileCost
	str r0, [sp, #0x34]
	ldr r5, [sp, #0x40]
	ldr r1, [sp, #0x3c]
	adds r0, r5, r1
	ldr r1, [sp, #0x44]
	add r1, r8
	lsls r4, r0, #0x18
	asrs r0, r4, #0x18
	lsls r5, r1, #0x18
	asrs r1, r5, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileHeight
	mov r8, r0
	cmp r0, #0
	bge _0804E1F6
	movs r2, #2
	b _0804E238
_0804E1F6:
	lsrs r4, r4, #0x18
	lsrs r5, r5, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileCost
	ldr r1, [sp, #0x34]
	adds r1, r1, r0
	str r1, [sp, #0x34]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileCost
	adds r0, #1
	str r0, [sp, #0x38]
	mov r2, r8
	subs r0, r2, r7
	cmp r8, r7
	ble _0804E228
	movs r5, #2
	mov sb, r5
_0804E228:
	cmp r0, #0
	bgt _0804E23A
	ldr r1, [sp, #0x30]
	cmp r0, r1
	bge _0804E23A
	movs r0, #2
	mov r2, sb
	orrs r2, r0
_0804E238:
	mov sb, r2
_0804E23A:
	ldr r5, [sp, #0x48]
	cmp r5, r7
	ble _0804E248
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804E248:
	ldr r2, [sp, #0x90]
	ldr r5, [sp, #0x2c]
	cmp r2, r5
	bgt _0804E256
	ldr r0, [sp, #0x30]
	cmp r2, r0
	bge _0804E25E
_0804E256:
	movs r0, #1
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804E25E:
	ldr r2, [sp, #0x34]
	ldr r5, [sp, #0x38]
	cmp r2, r5
	bne _0804E278
	cmp r7, r8
	bne _0804E270
	ldr r0, [sp, #0x48]
	cmp r0, r7
	blt _0804E278
_0804E270:
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804E278:
	mov r2, sb
_0804E27A:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0804E28C
	ldr r5, [sp, #0xc8]
	ldrb r1, [r5, #2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r5, #2]
_0804E28C:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0804E2A0
	ldr r0, [sp, #0xc8]
	ldrb r1, [r0, #2]
	movs r0, #0x10
	orrs r0, r1
	ldr r1, [sp, #0xc8]
	strb r0, [r1, #2]
_0804E2A0:
	cmp r6, #2
	beq _0804E2BC
	cmp r6, #3
	beq _0804E2B6
	movs r2, #1
	str r2, [sp, #0x4c]
	cmp r6, #4
	bne _0804E2C0
	movs r5, #2
	str r5, [sp, #0x4c]
	b _0804E2C0
_0804E2B6:
	movs r0, #3
	str r0, [sp, #0x4c]
	b _0804E2C0
_0804E2BC:
	movs r1, #0x7f
	str r1, [sp, #0x4c]
_0804E2C0:
	cmp r6, #2
	beq _0804E2E2
	cmp r6, #3
	beq _0804E2DA
	movs r2, #2
	rsbs r2, r2, #0
	str r2, [sp, #0x50]
	cmp r6, #4
	bne _0804E2E8
	movs r5, #3
	rsbs r5, r5, #0
	str r5, [sp, #0x50]
	b _0804E2E8
_0804E2DA:
	movs r0, #4
	rsbs r0, r0, #0
	str r0, [sp, #0x50]
	b _0804E2E8
_0804E2E2:
	movs r1, #0x80
	rsbs r1, r1, #0
	str r1, [sp, #0x50]
_0804E2E8:
	ldr r2, [sp, #0x9c]
	asrs r0, r2, #0x18
	ldr r5, [sp, #0xa0]
	asrs r1, r5, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileHeight
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x58]
	cmp r7, #0
	bge _0804E306
	movs r2, #0
	b _0804E3F6
_0804E306:
	movs r1, #0
	str r1, [sp, #0x5c]
	ldr r2, [sp]
	adds r2, r2, r1
	str r2, [sp, #0x60]
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [sp, #0x64]
	ldr r0, [sp, #4]
	adds r0, r0, r5
	mov r8, r0
	mov sb, r1
	lsls r5, r2, #0x18
	asrs r0, r5, #0x18
	mov r1, r8
	lsls r4, r1, #0x18
	asrs r1, r4, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileHeight
	str r0, [sp, #0x68]
	cmp r0, #0
	bge _0804E33A
	movs r2, #3
	b _0804E3F6
_0804E33A:
	ldr r2, [sp, #0x68]
	subs r2, r2, r7
	str r2, [sp, #0x94]
	lsrs r0, r5, #0x18
	lsrs r1, r4, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileCost
	str r0, [sp, #0x54]
	ldr r5, [sp, #0x60]
	ldr r1, [sp, #0x5c]
	adds r0, r5, r1
	ldr r1, [sp, #0x64]
	add r1, r8
	lsls r4, r0, #0x18
	asrs r0, r4, #0x18
	lsls r5, r1, #0x18
	asrs r1, r5, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileHeight
	mov r8, r0
	cmp r0, #0
	bge _0804E372
	movs r2, #2
	b _0804E3B4
_0804E372:
	lsrs r4, r4, #0x18
	lsrs r5, r5, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileCost
	ldr r1, [sp, #0x54]
	adds r1, r1, r0
	str r1, [sp, #0x54]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileCost
	adds r0, #1
	str r0, [sp, #0x58]
	mov r2, r8
	subs r0, r2, r7
	cmp r8, r7
	ble _0804E3A4
	movs r5, #2
	mov sb, r5
_0804E3A4:
	cmp r0, #0
	bgt _0804E3B6
	ldr r1, [sp, #0x50]
	cmp r0, r1
	bge _0804E3B6
	movs r0, #2
	mov r2, sb
	orrs r2, r0
_0804E3B4:
	mov sb, r2
_0804E3B6:
	ldr r5, [sp, #0x68]
	cmp r5, r7
	ble _0804E3C4
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804E3C4:
	ldr r2, [sp, #0x94]
	ldr r5, [sp, #0x4c]
	cmp r2, r5
	bgt _0804E3D2
	ldr r0, [sp, #0x50]
	cmp r2, r0
	bge _0804E3DA
_0804E3D2:
	movs r0, #1
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804E3DA:
	ldr r2, [sp, #0x54]
	ldr r5, [sp, #0x58]
	cmp r2, r5
	bne _0804E3F4
	cmp r7, r8
	bne _0804E3EC
	ldr r0, [sp, #0x68]
	cmp r0, r7
	blt _0804E3F4
_0804E3EC:
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804E3F4:
	mov r2, sb
_0804E3F6:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0804E408
	ldr r5, [sp, #0xc8]
	ldrb r1, [r5, #2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r5, #2]
_0804E408:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0804E41C
	ldr r0, [sp, #0xc8]
	ldrb r1, [r0, #2]
	movs r0, #0x20
	orrs r0, r1
	ldr r1, [sp, #0xc8]
	strb r0, [r1, #2]
_0804E41C:
	cmp r6, #2
	beq _0804E438
	cmp r6, #3
	beq _0804E432
	movs r2, #1
	str r2, [sp, #0x6c]
	cmp r6, #4
	bne _0804E43C
	movs r5, #2
	str r5, [sp, #0x6c]
	b _0804E43C
_0804E432:
	movs r0, #3
	str r0, [sp, #0x6c]
	b _0804E43C
_0804E438:
	movs r1, #0x7f
	str r1, [sp, #0x6c]
_0804E43C:
	cmp r6, #2
	beq _0804E45E
	cmp r6, #3
	beq _0804E456
	movs r2, #2
	rsbs r2, r2, #0
	str r2, [sp, #0x70]
	cmp r6, #4
	bne _0804E464
	movs r5, #3
	rsbs r5, r5, #0
	str r5, [sp, #0x70]
	b _0804E464
_0804E456:
	movs r0, #4
	rsbs r0, r0, #0
	str r0, [sp, #0x70]
	b _0804E464
_0804E45E:
	movs r1, #0x80
	rsbs r1, r1, #0
	str r1, [sp, #0x70]
_0804E464:
	ldr r2, [sp, #0x9c]
	asrs r0, r2, #0x18
	ldr r5, [sp, #0xa0]
	asrs r1, r5, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileHeight
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x78]
	cmp r7, #0
	bge _0804E482
	movs r2, #0
	b _0804E570
_0804E482:
	movs r1, #0
	str r1, [sp, #0x7c]
	ldr r2, [sp]
	adds r2, r2, r1
	str r2, [sp, #0x80]
	movs r5, #1
	str r5, [sp, #0x84]
	ldr r0, [sp, #4]
	adds r0, r0, r5
	mov r8, r0
	mov sb, r1
	lsls r5, r2, #0x18
	asrs r0, r5, #0x18
	mov r1, r8
	lsls r4, r1, #0x18
	asrs r1, r4, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileHeight
	str r0, [sp, #0x88]
	cmp r0, #0
	bge _0804E4B4
	movs r2, #3
	b _0804E570
_0804E4B4:
	ldr r2, [sp, #0x88]
	subs r2, r2, r7
	str r2, [sp, #0x8c]
	lsrs r0, r5, #0x18
	lsrs r1, r4, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileCost
	str r0, [sp, #0x74]
	ldr r5, [sp, #0x80]
	ldr r1, [sp, #0x7c]
	adds r0, r5, r1
	ldr r1, [sp, #0x84]
	add r1, r8
	lsls r4, r0, #0x18
	asrs r0, r4, #0x18
	lsls r5, r1, #0x18
	asrs r1, r5, #0x18
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileHeight
	mov r8, r0
	cmp r0, #0
	bge _0804E4EC
	movs r2, #2
	b _0804E52E
_0804E4EC:
	lsrs r4, r4, #0x18
	lsrs r5, r5, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileCost
	ldr r1, [sp, #0x74]
	adds r1, r1, r0
	str r1, [sp, #0x74]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, sl
	bl ReachTileCost
	adds r0, #1
	str r0, [sp, #0x78]
	mov r2, r8
	subs r0, r2, r7
	cmp r8, r7
	ble _0804E51E
	movs r5, #2
	mov sb, r5
_0804E51E:
	cmp r0, #0
	bgt _0804E530
	ldr r1, [sp, #0x70]
	cmp r0, r1
	bge _0804E530
	movs r0, #2
	mov r2, sb
	orrs r2, r0
_0804E52E:
	mov sb, r2
_0804E530:
	ldr r5, [sp, #0x88]
	cmp r5, r7
	ble _0804E53E
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804E53E:
	ldr r2, [sp, #0x8c]
	ldr r5, [sp, #0x6c]
	cmp r2, r5
	bgt _0804E54C
	ldr r0, [sp, #0x70]
	cmp r2, r0
	bge _0804E554
_0804E54C:
	movs r0, #1
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804E554:
	ldr r2, [sp, #0x74]
	ldr r5, [sp, #0x78]
	cmp r2, r5
	bne _0804E56E
	cmp r7, r8
	bne _0804E566
	ldr r0, [sp, #0x88]
	cmp r0, r7
	blt _0804E56E
_0804E566:
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804E56E:
	mov r2, sb
_0804E570:
	movs r5, #1
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _0804E586
	ldr r0, [sp, #0xc8]
	ldrb r1, [r0, #2]
	movs r0, #8
	orrs r0, r1
	ldr r1, [sp, #0xc8]
	strb r0, [r1, #2]
_0804E586:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0804E598
	ldr r2, [sp, #0xc8]
	ldrb r1, [r2, #2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #2]
_0804E598:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _0804E5CC @ =gUnk_0861CA5C
	adds r4, r0, r1
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_08028728
	adds r2, r0, #0
	ldrb r1, [r2, #1]
	movs r0, #0x7f
	ands r0, r1
	ldr r1, [sp, #0xc8]
	strb r0, [r1, #1]
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804E5D0
	strb r5, [r1]
	b _0804E68E
	.align 2, 0
_0804E5CC: .4byte gUnk_0861CA5C
_0804E5D0:
	ldrb r0, [r4, #1]
	ldr r2, [sp, #0xc8]
	strb r0, [r2]
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804E5E8
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0804E5E8
	strb r5, [r2]
_0804E5E8:
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804E602
	movs r0, #0xff
	ldr r1, [sp, #0xc8]
	strb r0, [r1]
	ldrb r1, [r1, #3]
	movs r0, #2
	orrs r0, r1
	ldr r2, [sp, #0xc8]
	strb r0, [r2, #3]
_0804E602:
	mov r0, sl
	subs r0, #1
	cmp r0, #4
	bhi _0804E68E
	lsls r0, r0, #2
	ldr r1, _0804E614 @ =_0804E618
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804E614: .4byte _0804E618
_0804E618: @ jump table
	.4byte _0804E62C @ case 0
	.4byte _0804E652 @ case 1
	.4byte _0804E630 @ case 2
	.4byte _0804E662 @ case 3
	.4byte _0804E662 @ case 4
_0804E62C:
	movs r0, #1
	b _0804E68A
_0804E630:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804E640
	movs r0, #1
	ldr r1, [sp, #0xc8]
	strb r0, [r1]
_0804E640:
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804E68E
	movs r0, #0xff
	ldr r2, [sp, #0xc8]
	strb r0, [r2]
	b _0804E68E
_0804E652:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804E67E
	movs r0, #1
	ldr r5, [sp, #0xc8]
	strb r0, [r5]
_0804E662:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804E67E
	ldr r1, [sp, #0xc8]
	ldrb r0, [r1, #1]
	subs r0, #1
	strb r0, [r1, #1]
	ldrb r1, [r1, #3]
	movs r0, #4
	orrs r0, r1
	ldr r2, [sp, #0xc8]
	strb r0, [r2, #3]
_0804E67E:
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804E68E
	movs r0, #0xff
_0804E68A:
	ldr r5, [sp, #0xc8]
	strb r0, [r5]
_0804E68E:
	add sp, #0xa4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804E6A0
sub_0804E6A0: @ 0x0804E6A0
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r3, r3, #0x18
	ldrb r7, [r2, #1]
	lsrs r3, r3, #0x18
	lsls r0, r6, #4
	adds r4, r4, r0
	lsls r0, r5, #9
	adds r4, r4, r0
	ldrh r0, [r4, #0xa]
	cmp r0, r3
	bhi _0804E722
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08028728
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0804E722
	ldrb r1, [r2, #1]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0804E722
	ldrb r1, [r2, #2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0804E722
	ldrb r1, [r2, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804E722
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _0804E728 @ =gUnk_0861CA5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804E722
	movs r0, #0x10
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	beq _0804E71E
	cmp r7, #1
	beq _0804E71E
	subs r1, #1
_0804E71E:
	cmp r1, #0
	beq _0804E72C
_0804E722:
	movs r0, #1
	rsbs r0, r0, #0
	b _0804E748
	.align 2, 0
_0804E728: .4byte gUnk_0861CA5C
_0804E72C:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806D814
	cmp r0, #0
	beq _0804E746
	ldr r1, [r0]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	beq _0804E746
	movs r0, #2
	rsbs r0, r0, #0
	b _0804E748
_0804E746:
	movs r0, #0
_0804E748:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804E750
sub_0804E750: @ 0x0804E750
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x28]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsls r2, r2, #0x18
	asrs r4, r2, #0x18
	ldrb r1, [r6]
	subs r1, r4, r1
	lsls r1, r1, #0x10
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	ldrb r0, [r6, #1]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsrs r2, r1, #0x10
	str r2, [sp]
	asrs r2, r1, #0x10
	cmp r2, #0
	bge _0804E78A
	rsbs r2, r2, #0
_0804E78A:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	mov sb, r0
	cmp r1, #0
	bge _0804E796
	rsbs r1, r1, #0
_0804E796:
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r3, #5
	ldr r2, [r7, #0x14]
	adds r0, r2, r4
	adds r0, r0, r1
	ldrb r4, [r0]
	movs r0, #0x80
	ands r0, r4
	mov r8, r2
	cmp r0, #0
	bne _0804E7B8
	mov r3, ip
	cmp r3, #1
	beq _0804E888
_0804E7B8:
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	bne _0804E888
	ldrb r2, [r6]
	ldrb r3, [r6, #1]
	lsls r1, r3, #5
	mov r4, r8
	adds r0, r4, r2
	adds r0, r0, r1
	movs r4, #0xff
	ands r4, r5
	ldrb r5, [r0]
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r5, r0
	str r3, [sp, #4]
	mov r0, ip
	cmp r0, #0
	beq _0804E7F0
	adds r1, r4, #0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804E7F0
	adds r4, r1, #3
_0804E7F0:
	movs r1, #0xc1
	rsbs r1, r1, #0
	mov ip, r1
	ands r4, r1
	ldrb r1, [r6, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804E80C
	lsls r0, r5, #0x10
	movs r3, #0xc0
	lsls r3, r3, #0xa
	adds r0, r0, r3
	lsrs r5, r0, #0x10
_0804E80C:
	subs r0, r4, r5
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804E834
	movs r1, #2
	ldrsb r1, [r7, r1]
	lsls r0, r6, #0x18
	asrs r2, r0, #0x18
	cmp r1, r2
	blt _0804E888
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, r2
	bgt _0804E888
	movs r0, #1
	b _0804E88A
_0804E834:
	ldr r3, [sp]
	lsls r1, r3, #0x10
	asrs r0, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r2, r0
	mov r2, sb
	asrs r1, r2, #0x10
	lsrs r2, r2, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	ldr r3, [sp, #4]
	adds r1, r3, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0xb
	add r0, r8
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0804E888
	mov r2, ip
	ands r2, r1
	lsls r0, r5, #0x10
	lsls r1, r4, #0x10
	asrs r3, r0, #0x10
	cmp r0, r1
	blt _0804E888
	cmp r2, r3
	bgt _0804E888
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bgt _0804E888
	movs r0, #1
	b _0804E88A
_0804E888:
	movs r0, #0
_0804E88A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804E89C
sub_0804E89C: @ 0x0804E89C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sl, r1
	str r2, [sp]
	ldr r1, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	lsls r3, r3, #0x18
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	lsrs r0, r3, #0x18
	str r0, [sp, #4]
	asrs r6, r3, #0x18
	ldr r0, [r2, #8]
	adds r0, r0, r6
	lsrs r2, r1, #0x18
	str r2, [sp, #8]
	asrs r1, r1, #0x18
	lsls r3, r1, #5
	mov ip, r3
	add r0, ip
	str r0, [sp, #0x10]
	ldrb r4, [r0]
	mov r8, r4
	mov r0, sl
	ldrb r0, [r0]
	mov sb, r0
	subs r7, r6, r0
	adds r2, r7, #0
	cmp r7, #0
	bge _0804E8E6
	rsbs r2, r7, #0
_0804E8E6:
	mov r3, sl
	ldrb r0, [r3, #1]
	subs r3, r1, r0
	adds r1, r3, #0
	str r0, [sp, #0x1c]
	cmp r3, #0
	bge _0804E8F6
	rsbs r1, r3, #0
_0804E8F6:
	adds r1, r2, r1
	lsls r1, r1, #0x18
	ldr r4, [sp]
	ldr r2, [r4, #0x14]
	adds r0, r2, r6
	add r0, ip
	str r0, [sp, #0x18]
	movs r5, #0
	ldrsb r5, [r0, r5]
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r5, r0
	movs r0, #0xff
	ands r5, r0
	mov r0, sl
	ldrb r4, [r0, #3]
	lsrs r0, r1, #0x18
	str r0, [sp, #0x14]
	asrs r1, r1, #0x18
	str r2, [sp, #0x28]
	cmp r1, #1
	bgt _0804E948
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _0804E92E
	adds r4, #1
	adds r5, #3
	b _0804E95E
_0804E92E:
	ldr r1, [sp]
	ldr r0, [r1, #0x10]
	adds r0, r0, r6
	add r0, ip
	ldrb r0, [r0]
	ldr r1, _0804E944 @ =0x0000FF7F
	ands r0, r1
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0804E95E
	.align 2, 0
_0804E944: .4byte 0x0000FF7F
_0804E948:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0804E968
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r5, r0, #0x10
_0804E95E:
	mov r2, sl
	ldrb r2, [r2, #2]
	add r3, sp, #0x20
	strb r2, [r3]
	b _0804EA22
_0804E968:
	mov r0, sl
	ldrb r1, [r0, #2]
	movs r0, #1
	ands r0, r1
	add r2, sp, #0x20
	strb r1, [r2]
	cmp r0, #0
	beq _0804E988
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, [sp]
	ldr r0, [r3, #0x10]
	adds r0, r0, r6
	add r0, ip
	b _0804EA16
_0804E988:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r6, [sp, #0x1c]
	lsls r6, r6, #5
	mov ip, r6
	ldr r0, [sp]
	ldr r1, [r0, #0x10]
	mov r2, sb
	adds r0, r1, r2
	add r0, ip
	ldrb r2, [r0]
	movs r0, #0x80
	ands r2, r0
	str r1, [sp, #0x24]
	cmp r2, #0
	beq _0804E9AC
	b _0804EAF4
_0804E9AC:
	lsrs r1, r7, #0x1f
	adds r1, r7, r1
	asrs r1, r1, #1
	lsrs r0, r3, #0x1f
	adds r0, r3, r0
	asrs r0, r0, #1
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	lsls r7, r0, #5
	mov r0, sb
	adds r6, r0, r1
	ldr r1, [sp, #0x24]
	adds r0, r1, r6
	adds r0, r0, r7
	ldrb r2, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	cmp r2, #1
	bgt _0804EA04
	ldr r0, [sp, #0x28]
	add r0, sb
	add r0, ip
	ldrb r1, [r0]
	ldr r3, _0804EAE4 @ =0x0000FF3F
	ldr r2, [sp, #0x28]
	adds r0, r2, r6
	adds r0, r0, r7
	ldrb r0, [r0]
	ldr r6, [sp, #0x18]
	ldrb r2, [r6]
	ands r1, r3
	ands r0, r3
	subs r0, r1, r0
	ands r2, r3
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0804EAF4
	lsls r0, r1, #0x10
	cmp r0, #0
	blt _0804EAF4
_0804EA04:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	ldr r2, [sp, #8]
	lsls r1, r2, #0x18
	asrs r1, r1, #0x13
	ldr r3, [sp, #0x24]
	adds r0, r3, r0
	adds r0, r0, r1
_0804EA16:
	ldrb r0, [r0]
	ldr r1, _0804EAE8 @ =0x0000FF7F
	ands r0, r1
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0804EA22:
	mov r6, sl
	ldrb r0, [r6]
	ldr r2, [sp, #0x1c]
	lsls r1, r2, #5
	ldr r3, [sp, #0x28]
	adds r0, r3, r0
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x3f
	ands r1, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #1
	add r6, sp, #0x20
	ldrb r6, [r6]
	ands r0, r6
	cmp r0, #0
	beq _0804EA56
	lsls r0, r5, #0x10
	ldr r1, _0804EAEC @ =0xFFFD0000
	adds r0, r0, r1
	lsrs r5, r0, #0x10
_0804EA56:
	ldr r2, [sp, #0xc]
	cmp r2, #1
	bne _0804EA62
	mov r3, r8
	lsrs r3, r3, #4
	mov r8, r3
_0804EA62:
	movs r0, #0xf
	mov r6, r8
	ands r6, r0
	mov r8, r6
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	adds r0, r3, #0
	cmp r3, #0
	bge _0804EA76
	rsbs r0, r3, #0
_0804EA76:
	adds r1, r0, #0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0804EA84
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
_0804EA84:
	ldr r0, [sp, #0x54]
	strh r1, [r0]
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0804EADE
	cmp r4, r8
	blo _0804EADE
	cmp r4, r8
	bhi _0804EAF4
	ldr r2, [sp, #0x14]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bgt _0804EAF4
	ldr r4, [sp, #4]
	lsls r0, r4, #0x18
	asrs r0, r0, #0x17
	ldr r6, [sp, #8]
	lsls r1, r6, #0x18
	asrs r1, r1, #0x12
	ldr r4, [sp]
	ldr r2, [r4, #8]
	adds r0, r0, r1
	adds r0, r0, r2
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r0, r6
	ldrh r0, [r0]
	mov r8, r0
	adds r1, r3, #0
	cmp r1, #0
	bge _0804EAC8
	rsbs r1, r1, #0
_0804EAC8:
	mov r2, sl
	ldrh r0, [r2, #4]
	adds r0, r0, r1
	ldr r1, _0804EAF0 @ =0x00007FFF
	mov r3, r8
	ands r3, r1
	mov r8, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r8, r0
	blt _0804EAF4
_0804EADE:
	movs r0, #1
	b _0804EAF6
	.align 2, 0
_0804EAE4: .4byte 0x0000FF3F
_0804EAE8: .4byte 0x0000FF7F
_0804EAEC: .4byte 0xFFFD0000
_0804EAF0: .4byte 0x00007FFF
_0804EAF4:
	movs r0, #0
_0804EAF6:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804EB08
sub_0804EB08: @ 0x0804EB08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	mov sl, r1
	str r3, [sp, #4]
	ldr r6, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r1, sl
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r6, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	mov sb, r2
	mov r1, sb
	movs r2, #0xff
	bl memset2
	ldr r0, [r6, #8]
	add r0, sb
	movs r1, #0x80
	lsls r1, r1, #4
	movs r2, #0xff
	bl memset2
	ldr r0, [sp, #4]
	mov r1, sb
	movs r2, #0xff
	bl memset2
	ldrh r0, [r6, #4]
	lsrs r0, r0, #3
	movs r5, #0
	strh r0, [r6, #6]
	ldr r0, [r6, #0xc]
	ldrh r1, [r6, #6]
	lsls r1, r1, #3
	bl memzero
	ldr r4, [r6, #0xc]
	mov r0, r8
	strb r0, [r4]
	mov r1, sl
	strb r1, [r4, #1]
	movs r0, #0x80
	strb r0, [r4, #2]
	strb r5, [r4, #3]
	mov r2, sl
	lsls r1, r2, #5
	mov r2, r8
	adds r0, r2, r1
	ldr r2, [sp, #4]
	adds r7, r2, r0
	strb r5, [r7]
	ldr r0, [r6, #8]
	add r0, r8
	adds r7, r0, r1
	strb r5, [r7]
	add sb, r8
	ldr r0, [r6, #8]
	add r0, sb
	adds r7, r0, r1
	strb r5, [r7]
	ldr r5, _0804EBF8 @ =gUnk_0202A1D0
	movs r0, #0x24
	bl BattleAlloc
	str r0, [r5]
	adds r0, #0x20
	mov r1, sp
	ldrb r1, [r1, #8]
	strb r1, [r0]
	ldr r0, [r5]
	str r7, [r0]
	movs r2, #0
	str r2, [r0, #4]
	movs r1, #1
	str r1, [r0, #8]
	ldr r1, [sp, #4]
	str r1, [r0, #0x10]
	str r6, [r0, #0x14]
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r0, #0xc]
	ldr r0, [r5]
	str r4, [r0, #0x18]
	adds r0, #0x21
	mov r1, r8
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, #0x22
	mov r2, sl
	strb r2, [r0]
	adds r4, #8
	ldr r0, [r5]
	str r4, [r0, #0x1c]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804EBF8: .4byte gUnk_0202A1D0

	thumb_func_start sub_0804EBFC
sub_0804EBFC: @ 0x0804EBFC
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	movs r5, #0
	movs r4, #0
_0804EC0C:
	lsls r0, r3, #5
	adds r0, r2, r0
	adds r0, r6, r0
	cmp r5, #0
	beq _0804EC1C
	ldrb r0, [r0]
	lsrs r1, r0, #4
	b _0804EC22
_0804EC1C:
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
_0804EC22:
	cmp r1, #9
	beq _0804EC4C
	cmp r1, #9
	bgt _0804EC30
	cmp r1, #0
	beq _0804EC3A
	b _0804EC54
_0804EC30:
	cmp r1, #0xa
	beq _0804EC50
	cmp r1, #0xf
	beq _0804EC42
	b _0804EC54
_0804EC3A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0804EC78
_0804EC42:
	ldr r0, _0804EC48 @ =0x0000FFFF
	b _0804EC78
	.align 2, 0
_0804EC48: .4byte 0x0000FFFF
_0804EC4C:
	movs r5, #0
	b _0804EC0C
_0804EC50:
	movs r5, #1
	b _0804EC0C
_0804EC54:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #1
	ldr r0, _0804EC74 @ =gUnk_0860EEB0
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r1, #1]
	adds r0, r3, r0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	b _0804EC0C
	.align 2, 0
_0804EC74: .4byte gUnk_0860EEB0
_0804EC78:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804EC80
sub_0804EC80: @ 0x0804EC80
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov r8, r1
	ldr r0, [sp, #0x1c]
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x10
	movs r7, #0
	movs r6, #0
	lsrs r0, r0, #0xf
	subs r0, #2
	adds r4, r4, r0
	movs r0, #0x80
	mov ip, r0
	ldr r0, _0804ECBC @ =gUnk_0860EEB0
	mov sb, r0
_0804ECAA:
	lsls r0, r3, #5
	adds r0, r5, r0
	add r0, r8
	cmp r7, #0
	beq _0804ECC0
	ldrb r0, [r0]
	lsrs r1, r0, #4
	b _0804ECC6
	.align 2, 0
_0804ECBC: .4byte gUnk_0860EEB0
_0804ECC0:
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
_0804ECC6:
	adds r2, r1, #0
	cmp r2, #9
	beq _0804ECDC
	cmp r2, #9
	bgt _0804ECD6
	cmp r2, #0
	beq _0804ED1C
	b _0804ECE6
_0804ECD6:
	cmp r2, #0xa
	beq _0804ECE2
	b _0804ECE6
_0804ECDC:
	movs r7, #0
	movs r6, #0
	b _0804ECAA
_0804ECE2:
	movs r7, #1
	b _0804ECAA
_0804ECE6:
	adds r1, r5, #0
	cmp r6, #0
	beq _0804ECF0
	mov r0, ip
	orrs r1, r0
_0804ECF0:
	ldrb r0, [r4]
	strb r1, [r4]
	adds r1, r3, #0
	cmp r6, #0
	beq _0804ECFE
	mov r0, ip
	orrs r1, r0
_0804ECFE:
	ldrb r0, [r4, #1]
	strb r1, [r4, #1]
	subs r4, #2
	adds r6, r7, #0
	lsls r1, r2, #1
	add r1, sb
	ldrb r0, [r1]
	adds r0, r5, r0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r0, [r1, #1]
	adds r0, r3, r0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	b _0804ECAA
_0804ED1C:
	ldrb r0, [r4]
	strb r5, [r4]
	ldrb r0, [r4, #1]
	strb r3, [r4, #1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804ED30
sub_0804ED30: @ 0x0804ED30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r5, r0, #0
	adds r6, r1, #0
	mov sb, r2
	mov r8, r3
	ldr r4, [sp, #0x40]
	ldr r0, [sp, #0x44]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	mov r0, sp
	movs r1, #0x18
	bl memzero
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	mov r0, r8
	bl memzero
	mov r0, sb
	str r0, [sp, #0x14]
	mov r0, sp
	subs r4, #1
	strh r4, [r0]
	mov r1, r8
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r2, sl
	strh r2, [r0, #6]
	lsls r5, r5, #4
	add sb, r5
	lsls r6, r6, #9
	mov r3, sb
	adds r7, r3, r6
	mov r4, sp
	movs r0, #0
	mov sb, r0
	ldrh r0, [r7, #0xa]
	cmp sb, r0
	bls _0804ED9E
	bl _0804F9A0
_0804ED9E:
	cmp sb, r0
	bne _0804EDAC
	ldrh r1, [r7, #8]
	cmp sb, r1
	blo _0804EDAC
	bl _0804F9A0
_0804EDAC:
	ldrh r0, [r7, #0xc]
	movs r1, #0xf0
	ands r1, r0
	strh r1, [r7, #0xc]
	mov r2, sb
	strh r2, [r7, #0xa]
	strh r2, [r7, #8]
	movs r3, #1
	mov ip, r3
	ldrb r1, [r7, #2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0804EDCA
	bl _0804F9A0
_0804EDCA:
	mov r0, ip
	ands r0, r1
	cmp r0, #0
	bne _0804EE74
	adds r6, r7, #0
	adds r6, #0x10
	ldrb r5, [r7, #0x10]
	cmp sl, r5
	blo _0804EE74
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804EDE8
	rsbs r0, r0, #0
_0804EDE8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0804EE74
	cmp r5, r0
	bne _0804EDFE
	ldrh r0, [r6, #8]
	cmp r8, r0
	bhs _0804EE74
_0804EDFE:
	ldrh r2, [r4, #4]
	ldr r3, [sp, #0x10]
_0804EE02:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804EE26
	cmp r0, r6
	bne _0804EE2A
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804EE2A
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0804EE2A
	cmp r0, r5
	bne _0804EE26
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0804EE2A
_0804EE26:
	adds r2, r3, #0
	b _0804EE42
_0804EE2A:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _0804EE3A
	adds r2, r0, #0
	cmp r2, r1
	blt _0804EE3E
_0804EE3A:
	ldr r3, [r4, #8]
	b _0804EE02
_0804EE3E:
	adds r3, #0xc
	b _0804EE02
_0804EE42:
	cmp r3, #0
	beq _0804EE74
	str r6, [r2, #8]
	strh r5, [r2, #2]
	mov r1, r8
	strh r1, [r2, #4]
	movs r0, #3
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804EE74
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r4]
	cmp r0, r2
	blo _0804EE74
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804EE74:
	ldrb r1, [r7, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804EF22
	adds r6, r7, #0
	subs r6, #0x10
	ldrb r5, [r6]
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _0804EF22
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804EE96
	rsbs r0, r0, #0
_0804EE96:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0804EF22
	cmp r5, r0
	bne _0804EEAC
	ldrh r3, [r6, #8]
	cmp r8, r3
	bhs _0804EF22
_0804EEAC:
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_0804EEB0:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804EED4
	cmp r0, r6
	bne _0804EED8
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804EED8
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0804EED8
	cmp r0, r5
	bne _0804EED4
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0804EED8
_0804EED4:
	adds r2, r3, #0
	b _0804EEF0
_0804EED8:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _0804EEE8
	adds r2, r0, #0
	cmp r2, r1
	blt _0804EEEC
_0804EEE8:
	ldr r3, [r4, #8]
	b _0804EEB0
_0804EEEC:
	adds r3, #0xc
	b _0804EEB0
_0804EEF0:
	cmp r3, #0
	beq _0804EF22
	str r6, [r2, #8]
	strh r5, [r2, #2]
	mov r0, r8
	strh r0, [r2, #4]
	movs r0, #1
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804EF22
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804EF22
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804EF22:
	ldrb r1, [r7, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804EFD6
	ldr r2, _0804EF88 @ =0xFFFFFE00
	adds r6, r7, r2
	ldrb r5, [r6]
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _0804EFD6
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804EF44
	rsbs r0, r0, #0
_0804EF44:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0804EFD6
	cmp r5, r0
	bne _0804EF5A
	ldrh r3, [r6, #8]
	cmp r8, r3
	bhs _0804EFD6
_0804EF5A:
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_0804EF5E:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804EF82
	cmp r0, r6
	bne _0804EF8C
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804EF8C
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0804EF8C
	cmp r0, r5
	bne _0804EF82
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0804EF8C
_0804EF82:
	adds r2, r3, #0
	b _0804EFA4
	.align 2, 0
_0804EF88: .4byte 0xFFFFFE00
_0804EF8C:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _0804EF9C
	adds r2, r0, #0
	cmp r2, r1
	blt _0804EFA0
_0804EF9C:
	ldr r3, [r4, #8]
	b _0804EF5E
_0804EFA0:
	adds r3, #0xc
	b _0804EF5E
_0804EFA4:
	cmp r3, #0
	beq _0804EFD6
	str r6, [r2, #8]
	strh r5, [r2, #2]
	mov r0, r8
	strh r0, [r2, #4]
	movs r0, #4
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804EFD6
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804EFD6
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804EFD6:
	ldrb r1, [r7, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0804F086
	movs r2, #0x80
	lsls r2, r2, #2
	adds r6, r7, r2
	ldrb r5, [r6]
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _0804F086
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804EFFA
	rsbs r0, r0, #0
_0804EFFA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0804F086
	cmp r5, r0
	bne _0804F010
	ldrh r3, [r6, #8]
	cmp r8, r3
	bhs _0804F086
_0804F010:
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_0804F014:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804F038
	cmp r0, r6
	bne _0804F03C
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804F03C
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0804F03C
	cmp r0, r5
	bne _0804F038
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0804F03C
_0804F038:
	adds r2, r3, #0
	b _0804F054
_0804F03C:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _0804F04C
	adds r2, r0, #0
	cmp r2, r1
	blt _0804F050
_0804F04C:
	ldr r3, [r4, #8]
	b _0804F014
_0804F050:
	adds r3, #0xc
	b _0804F014
_0804F054:
	cmp r3, #0
	beq _0804F086
	str r6, [r2, #8]
	strh r5, [r2, #2]
	mov r0, r8
	strh r0, [r2, #4]
	movs r0, #2
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804F086
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804F086
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804F086:
	ldrb r1, [r7, #3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0804F092
	b _0804F382
_0804F092:
	ldrb r1, [r7, #2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0804F14C
	mov r2, ip
	lsls r0, r2, #0x10
	adds r6, r7, #0
	adds r6, #0x20
	lsrs r0, r0, #0x10
	ldrb r3, [r6]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _0804F14C
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804F0C0
	rsbs r0, r0, #0
_0804F0C0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0804F14C
	cmp r5, r0
	bne _0804F0D6
	ldrh r0, [r6, #8]
	cmp r8, r0
	bhs _0804F14C
_0804F0D6:
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_0804F0DA:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804F0FE
	cmp r0, r6
	bne _0804F102
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804F102
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0804F102
	cmp r0, r5
	bne _0804F0FE
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0804F102
_0804F0FE:
	adds r2, r3, #0
	b _0804F11A
_0804F102:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _0804F112
	adds r2, r0, #0
	cmp r2, r1
	blt _0804F116
_0804F112:
	ldr r3, [r4, #8]
	b _0804F0DA
_0804F116:
	adds r3, #0xc
	b _0804F0DA
_0804F11A:
	cmp r3, #0
	beq _0804F14C
	str r6, [r2, #8]
	strh r5, [r2, #2]
	mov r1, r8
	strh r1, [r2, #4]
	movs r0, #7
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804F14C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r4]
	cmp r0, r2
	blo _0804F14C
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804F14C:
	ldrb r1, [r7, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0804F206
	mov r3, ip
	lsls r0, r3, #0x10
	adds r6, r7, #0
	subs r6, #0x20
	lsrs r0, r0, #0x10
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _0804F206
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804F17A
	rsbs r0, r0, #0
_0804F17A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0804F206
	cmp r5, r0
	bne _0804F190
	ldrh r2, [r6, #8]
	cmp r8, r2
	bhs _0804F206
_0804F190:
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_0804F194:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804F1B8
	cmp r0, r6
	bne _0804F1BC
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804F1BC
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0804F1BC
	cmp r0, r5
	bne _0804F1B8
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0804F1BC
_0804F1B8:
	adds r2, r3, #0
	b _0804F1D4
_0804F1BC:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _0804F1CC
	adds r2, r0, #0
	cmp r2, r1
	blt _0804F1D0
_0804F1CC:
	ldr r3, [r4, #8]
	b _0804F194
_0804F1D0:
	adds r3, #0xc
	b _0804F194
_0804F1D4:
	cmp r3, #0
	beq _0804F206
	str r6, [r2, #8]
	strh r5, [r2, #2]
	mov r3, r8
	strh r3, [r2, #4]
	movs r0, #5
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804F206
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804F206
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804F206:
	ldrb r1, [r7, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804F2C6
	mov r2, ip
	lsls r0, r2, #0x10
	ldr r3, _0804F278 @ =0xFFFFFC00
	adds r6, r7, r3
	lsrs r0, r0, #0x10
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _0804F2C6
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804F234
	rsbs r0, r0, #0
_0804F234:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0804F2C6
	cmp r5, r0
	bne _0804F24A
	ldrh r2, [r6, #8]
	cmp r8, r2
	bhs _0804F2C6
_0804F24A:
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_0804F24E:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804F272
	cmp r0, r6
	bne _0804F27C
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804F27C
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0804F27C
	cmp r0, r5
	bne _0804F272
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0804F27C
_0804F272:
	adds r2, r3, #0
	b _0804F294
	.align 2, 0
_0804F278: .4byte 0xFFFFFC00
_0804F27C:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _0804F28C
	adds r2, r0, #0
	cmp r2, r1
	blt _0804F290
_0804F28C:
	ldr r3, [r4, #8]
	b _0804F24E
_0804F290:
	adds r3, #0xc
	b _0804F24E
_0804F294:
	cmp r3, #0
	beq _0804F2C6
	str r6, [r2, #8]
	strh r5, [r2, #2]
	mov r3, r8
	strh r3, [r2, #4]
	movs r0, #8
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804F2C6
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804F2C6
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804F2C6:
	ldrb r1, [r7, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804F382
	mov r2, ip
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	adds r6, r7, r3
	lsrs r0, r0, #0x10
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _0804F382
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804F2F6
	rsbs r0, r0, #0
_0804F2F6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0804F382
	cmp r5, r0
	bne _0804F30C
	ldrh r2, [r6, #8]
	cmp r8, r2
	bhs _0804F382
_0804F30C:
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_0804F310:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804F334
	cmp r0, r6
	bne _0804F338
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804F338
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0804F338
	cmp r0, r5
	bne _0804F334
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0804F338
_0804F334:
	adds r2, r3, #0
	b _0804F350
_0804F338:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _0804F348
	adds r2, r0, #0
	cmp r2, r1
	blt _0804F34C
_0804F348:
	ldr r3, [r4, #8]
	b _0804F310
_0804F34C:
	adds r3, #0xc
	b _0804F310
_0804F350:
	cmp r3, #0
	beq _0804F382
	str r6, [r2, #8]
	strh r5, [r2, #2]
	mov r3, r8
	strh r3, [r2, #4]
	movs r0, #6
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804F382
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804F382
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804F382:
	ldrh r1, [r7, #0xc]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xa
	bne _0804F390
	b _0804F9A0
_0804F390:
	movs r2, #1
	mov ip, r2
	ldr r2, [r7, #4]
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _0804F39E
	b _0804F9A0
_0804F39E:
	ldrh r0, [r7, #0xe]
	cmp sb, r0
	bls _0804F3A6
	b _0804F9A0
_0804F3A6:
	adds r0, r3, #0
	ands r0, r1
	movs r1, #0x90
	orrs r0, r1
	strh r0, [r7, #0xc]
	mov r1, ip
	ands r2, r1
	movs r3, #2
	mov sl, r3
	cmp r2, #0
	beq _0804F46E
	movs r6, #1
	adds r5, r7, #0
	adds r5, #0x10
	ldrb r1, [r5, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0804F3D0
	rsbs r1, r1, #0
_0804F3D0:
	ldrh r0, [r5, #0xe]
	cmp r0, #1
	bls _0804F46E
	ldrh r0, [r5, #0xa]
	cmp r0, #1
	blo _0804F46E
	cmp r0, #1
	bne _0804F3E6
	ldrh r0, [r5, #8]
	cmp r1, r0
	bge _0804F46E
_0804F3E6:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov sb, r0
	movs r0, #2
	mov sl, r0
_0804F3F6:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804F41A
	cmp r0, r5
	bne _0804F41E
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804F41E
	ldrh r0, [r3, #2]
	cmp r0, r6
	blo _0804F41E
	cmp r0, r6
	bne _0804F41A
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0804F41E
_0804F41A:
	adds r2, r3, #0
	b _0804F436
_0804F41E:
	ldrh r0, [r4]
	cmp r2, r0
	blt _0804F428
	ldr r3, [r4, #8]
	b _0804F42A
_0804F428:
	adds r3, #0xc
_0804F42A:
	movs r1, #0
	cmp r2, r0
	bge _0804F432
	adds r1, r2, #1
_0804F432:
	adds r2, r1, #0
	b _0804F3F6
_0804F436:
	cmp r3, #0
	beq _0804F46E
	movs r0, #1
	strh r0, [r2]
	mov r1, sb
	lsrs r0, r1, #0x10
	str r5, [r2, #8]
	strh r6, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #3
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804F46E
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r4]
	cmp r0, r2
	blo _0804F46E
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804F46E:
	ldr r0, [r7, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0804F52A
	mov r3, ip
	lsls r0, r3, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	subs r6, #0x10
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0804F490
	rsbs r1, r1, #0
_0804F490:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0804F52A
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0804F52A
	cmp r0, r5
	bne _0804F4A6
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _0804F52A
_0804F4A6:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov sb, r0
_0804F4B2:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804F4D6
	cmp r0, r6
	bne _0804F4DA
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804F4DA
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0804F4DA
	cmp r0, r5
	bne _0804F4D6
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0804F4DA
_0804F4D6:
	adds r2, r3, #0
	b _0804F4F2
_0804F4DA:
	ldrh r0, [r4]
	cmp r2, r0
	blt _0804F4E4
	ldr r3, [r4, #8]
	b _0804F4E6
_0804F4E4:
	adds r3, #0xc
_0804F4E6:
	movs r1, #0
	cmp r2, r0
	bge _0804F4EE
	adds r1, r2, #1
_0804F4EE:
	adds r2, r1, #0
	b _0804F4B2
_0804F4F2:
	cmp r3, #0
	beq _0804F52A
	movs r0, #1
	strh r0, [r2]
	mov r3, sb
	lsrs r0, r3, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #1
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804F52A
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804F52A
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804F52A:
	ldr r0, [r7, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804F5EC
	mov r2, ip
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _0804F598 @ =0xFFFFFE00
	adds r6, r7, r3
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0804F54C
	rsbs r1, r1, #0
_0804F54C:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0804F5EC
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0804F5EC
	cmp r0, r5
	bne _0804F562
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _0804F5EC
_0804F562:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov sb, r0
_0804F56E:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804F592
	cmp r0, r6
	bne _0804F59C
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804F59C
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0804F59C
	cmp r0, r5
	bne _0804F592
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0804F59C
_0804F592:
	adds r2, r3, #0
	b _0804F5B4
	.align 2, 0
_0804F598: .4byte 0xFFFFFE00
_0804F59C:
	ldrh r0, [r4]
	cmp r2, r0
	blt _0804F5A6
	ldr r3, [r4, #8]
	b _0804F5A8
_0804F5A6:
	adds r3, #0xc
_0804F5A8:
	movs r1, #0
	cmp r2, r0
	bge _0804F5B0
	adds r1, r2, #1
_0804F5B0:
	adds r2, r1, #0
	b _0804F56E
_0804F5B4:
	cmp r3, #0
	beq _0804F5EC
	movs r0, #1
	strh r0, [r2]
	mov r3, sb
	lsrs r0, r3, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #4
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804F5EC
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804F5EC
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804F5EC:
	ldr r0, [r7, #4]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0804F6AA
	mov r2, ip
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r6, r7, r3
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0804F610
	rsbs r1, r1, #0
_0804F610:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0804F6AA
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0804F6AA
	cmp r0, r5
	bne _0804F626
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _0804F6AA
_0804F626:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov sb, r0
_0804F632:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804F656
	cmp r0, r6
	bne _0804F65A
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804F65A
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0804F65A
	cmp r0, r5
	bne _0804F656
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0804F65A
_0804F656:
	adds r2, r3, #0
	b _0804F672
_0804F65A:
	ldrh r0, [r4]
	cmp r2, r0
	blt _0804F664
	ldr r3, [r4, #8]
	b _0804F666
_0804F664:
	adds r3, #0xc
_0804F666:
	movs r1, #0
	cmp r2, r0
	bge _0804F66E
	adds r1, r2, #1
_0804F66E:
	adds r2, r1, #0
	b _0804F632
_0804F672:
	cmp r3, #0
	beq _0804F6AA
	movs r0, #1
	strh r0, [r2]
	mov r3, sb
	lsrs r0, r3, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #2
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804F6AA
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804F6AA
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804F6AA:
	mov ip, sl
	ldr r0, [r7, #4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804F768
	mov r2, ip
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	adds r6, #0x20
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0804F6CE
	rsbs r1, r1, #0
_0804F6CE:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0804F768
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0804F768
	cmp r0, r5
	bne _0804F6E4
	ldrh r3, [r6, #8]
	cmp r1, r3
	bge _0804F768
_0804F6E4:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov sb, r0
_0804F6F0:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804F714
	cmp r0, r6
	bne _0804F718
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804F718
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0804F718
	cmp r0, r5
	bne _0804F714
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0804F718
_0804F714:
	adds r2, r3, #0
	b _0804F730
_0804F718:
	ldrh r0, [r4]
	cmp r2, r0
	blt _0804F722
	ldr r3, [r4, #8]
	b _0804F724
_0804F722:
	adds r3, #0xc
_0804F724:
	movs r1, #0
	cmp r2, r0
	bge _0804F72C
	adds r1, r2, #1
_0804F72C:
	adds r2, r1, #0
	b _0804F6F0
_0804F730:
	cmp r3, #0
	beq _0804F768
	movs r0, #1
	strh r0, [r2]
	mov r3, sb
	lsrs r0, r3, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #7
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804F768
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804F768
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804F768:
	ldr r0, [r7, #4]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804F824
	mov r2, ip
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	subs r6, #0x20
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0804F78A
	rsbs r1, r1, #0
_0804F78A:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0804F824
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0804F824
	cmp r0, r5
	bne _0804F7A0
	ldrh r3, [r6, #8]
	cmp r1, r3
	bge _0804F824
_0804F7A0:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov sb, r0
_0804F7AC:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804F7D0
	cmp r0, r6
	bne _0804F7D4
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804F7D4
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0804F7D4
	cmp r0, r5
	bne _0804F7D0
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0804F7D4
_0804F7D0:
	adds r2, r3, #0
	b _0804F7EC
_0804F7D4:
	ldrh r0, [r4]
	cmp r2, r0
	blt _0804F7DE
	ldr r3, [r4, #8]
	b _0804F7E0
_0804F7DE:
	adds r3, #0xc
_0804F7E0:
	movs r1, #0
	cmp r2, r0
	bge _0804F7E8
	adds r1, r2, #1
_0804F7E8:
	adds r2, r1, #0
	b _0804F7AC
_0804F7EC:
	cmp r3, #0
	beq _0804F824
	movs r0, #1
	strh r0, [r2]
	mov r3, sb
	lsrs r0, r3, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #5
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804F824
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804F824
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804F824:
	ldr r0, [r7, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804F8E4
	mov r2, ip
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _0804F890 @ =0xFFFFFC00
	adds r6, r7, r3
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0804F846
	rsbs r1, r1, #0
_0804F846:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0804F8E4
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0804F8E4
	cmp r0, r5
	bne _0804F85C
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _0804F8E4
_0804F85C:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov sb, r0
_0804F868:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804F88C
	cmp r0, r6
	bne _0804F894
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804F894
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0804F894
	cmp r0, r5
	bne _0804F88C
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0804F894
_0804F88C:
	adds r2, r3, #0
	b _0804F8AC
	.align 2, 0
_0804F890: .4byte 0xFFFFFC00
_0804F894:
	ldrh r0, [r4]
	cmp r2, r0
	blt _0804F89E
	ldr r3, [r4, #8]
	b _0804F8A0
_0804F89E:
	adds r3, #0xc
_0804F8A0:
	movs r1, #0
	cmp r2, r0
	bge _0804F8A8
	adds r1, r2, #1
_0804F8A8:
	adds r2, r1, #0
	b _0804F868
_0804F8AC:
	cmp r3, #0
	beq _0804F8E4
	movs r0, #1
	strh r0, [r2]
	mov r3, sb
	lsrs r0, r3, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #8
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804F8E4
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804F8E4
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804F8E4:
	ldr r0, [r7, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804F9A0
	mov r2, ip
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	adds r6, r7, r3
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0804F908
	rsbs r1, r1, #0
_0804F908:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0804F9A0
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0804F9A0
	cmp r0, r5
	bne _0804F91E
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _0804F9A0
_0804F91E:
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_0804F928:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0804F94C
	cmp r0, r6
	bne _0804F950
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804F950
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0804F950
	cmp r0, r5
	bne _0804F94C
	ldrh r0, [r3, #4]
	cmp r0, r7
	bls _0804F950
_0804F94C:
	adds r2, r3, #0
	b _0804F968
_0804F950:
	ldrh r0, [r4]
	cmp r2, r0
	blt _0804F95A
	ldr r3, [r4, #8]
	b _0804F95C
_0804F95A:
	adds r3, #0xc
_0804F95C:
	movs r1, #0
	cmp r2, r0
	bge _0804F964
	adds r1, r2, #1
_0804F964:
	adds r2, r1, #0
	b _0804F928
_0804F968:
	cmp r3, #0
	beq _0804F9A0
	movs r0, #1
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #6
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0804F9A0
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r4]
	cmp r0, r2
	blo _0804F9A0
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804F9A0:
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	cmp r0, r2
	bne _0804F9AC
	bl _08051390
_0804F9AC:
	movs r3, #1
	mov sl, r3
	mov r4, sp
_0804F9B2:
	ldrh r3, [r2, #4]
	ldrb r5, [r2, #6]
	ldrb r1, [r2]
	mov r0, sl
	ands r0, r1
	ldr r7, [r2, #8]
	ldrh r2, [r2, #2]
	mov ip, r2
	cmp r0, #0
	beq _0804F9CA
	bl _080506B6
_0804F9CA:
	ldrh r0, [r7, #0xa]
	cmp ip, r0
	bls _0804F9D4
	bl _0805135E
_0804F9D4:
	cmp ip, r0
	bne _0804F9E2
	ldrh r0, [r7, #8]
	cmp r3, r0
	blo _0804F9E2
	bl _0805135E
_0804F9E2:
	ldrh r0, [r7, #0xc]
	movs r1, #0xf0
	ands r1, r0
	orrs r1, r5
	strh r1, [r7, #0xc]
	mov r1, ip
	strh r1, [r7, #0xa]
	strh r3, [r7, #8]
	movs r2, #1
	add r2, ip
	mov sb, r2
	ldrb r1, [r7, #2]
	adds r0, r1, #0
	mov r3, sb
	str r3, [sp, #0x18]
	cmp r0, #0xff
	bne _0804FA08
	bl _0805135E
_0804FA08:
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0804FAC2
	adds r6, r7, #0
	adds r6, #0x10
	ldrb r0, [r7, #0x10]
	add r0, ip
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _0804FAC2
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804FA2E
	rsbs r0, r0, #0
_0804FA2E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0804FAC2
	cmp r5, r0
	bne _0804FA44
	ldrh r0, [r6, #8]
	cmp r8, r0
	bhs _0804FAC2
_0804FA44:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_0804FA48:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0804FA52
	bl _080506B0
_0804FA52:
	cmp r0, r6
	bne _0804FA78
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0804FA78
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0804FA78
	cmp r0, r5
	beq _0804FA6E
	bl _080506B0
_0804FA6E:
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _0804FA78
	bl _080506B0
_0804FA78:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _0804FA88
	adds r3, r0, #0
	cmp r3, r1
	blt _0804FA8C
_0804FA88:
	ldr r2, [r4, #8]
	b _0804FA48
_0804FA8C:
	adds r2, #0xc
	b _0804FA48
_0804FA90:
	cmp r2, #0
	beq _0804FAC2
	str r6, [r1, #8]
	movs r2, #0
	strh r5, [r1, #2]
	mov r3, r8
	strh r3, [r1, #4]
	movs r0, #3
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _0804FAC2
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804FAC2
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804FAC2:
	ldrb r1, [r7, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804FB7E
	adds r6, r7, #0
	subs r6, #0x10
	ldrb r0, [r6]
	add r0, ip
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _0804FB7E
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804FAEA
	rsbs r0, r0, #0
_0804FAEA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0804FB7E
	cmp r5, r0
	bne _0804FB00
	ldrh r2, [r6, #8]
	cmp r8, r2
	bhs _0804FB7E
_0804FB00:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_0804FB04:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0804FB0E
	bl _080506AA
_0804FB0E:
	cmp r0, r6
	bne _0804FB34
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0804FB34
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0804FB34
	cmp r0, r5
	beq _0804FB2A
	bl _080506AA
_0804FB2A:
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _0804FB34
	bl _080506AA
_0804FB34:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _0804FB44
	adds r3, r0, #0
	cmp r3, r1
	blt _0804FB48
_0804FB44:
	ldr r2, [r4, #8]
	b _0804FB04
_0804FB48:
	adds r2, #0xc
	b _0804FB04
_0804FB4C:
	cmp r2, #0
	beq _0804FB7E
	str r6, [r1, #8]
	movs r2, #0
	strh r5, [r1, #2]
	mov r3, r8
	strh r3, [r1, #4]
	movs r0, #1
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _0804FB7E
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804FB7E
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804FB7E:
	ldrb r1, [r7, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804FC3E
	ldr r2, _0804FC04 @ =0xFFFFFE00
	adds r6, r7, r2
	ldrb r0, [r6]
	add r0, ip
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _0804FC3E
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804FBA6
	rsbs r0, r0, #0
_0804FBA6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0804FC3E
	cmp r5, r0
	bne _0804FBBC
	ldrh r3, [r6, #8]
	cmp r8, r3
	bhs _0804FC3E
_0804FBBC:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_0804FBC0:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0804FBCA
	bl _080506A4
_0804FBCA:
	cmp r0, r6
	bne _0804FBF0
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0804FBF0
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0804FBF0
	cmp r0, r5
	beq _0804FBE6
	bl _080506A4
_0804FBE6:
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _0804FBF0
	bl _080506A4
_0804FBF0:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _0804FC00
	adds r3, r0, #0
	cmp r3, r1
	blt _0804FC08
_0804FC00:
	ldr r2, [r4, #8]
	b _0804FBC0
	.align 2, 0
_0804FC04: .4byte 0xFFFFFE00
_0804FC08:
	adds r2, #0xc
	b _0804FBC0
_0804FC0C:
	cmp r2, #0
	beq _0804FC3E
	str r6, [r1, #8]
	movs r2, #0
	strh r5, [r1, #2]
	mov r0, r8
	strh r0, [r1, #4]
	movs r3, #4
	strb r3, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _0804FC3E
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804FC3E
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804FC3E:
	ldrb r1, [r7, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0804FCFC
	movs r2, #0x80
	lsls r2, r2, #2
	adds r6, r7, r2
	ldrb r0, [r6]
	add r0, ip
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _0804FCFC
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804FC68
	rsbs r0, r0, #0
_0804FC68:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0804FCFC
	cmp r5, r0
	bne _0804FC7E
	ldrh r3, [r6, #8]
	cmp r8, r3
	bhs _0804FCFC
_0804FC7E:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_0804FC82:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0804FC8C
	bl _0805069E
_0804FC8C:
	cmp r0, r6
	bne _0804FCB2
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0804FCB2
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0804FCB2
	cmp r0, r5
	beq _0804FCA8
	bl _0805069E
_0804FCA8:
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _0804FCB2
	bl _0805069E
_0804FCB2:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _0804FCC2
	adds r3, r0, #0
	cmp r3, r1
	blt _0804FCC6
_0804FCC2:
	ldr r2, [r4, #8]
	b _0804FC82
_0804FCC6:
	adds r2, #0xc
	b _0804FC82
_0804FCCA:
	cmp r2, #0
	beq _0804FCFC
	str r6, [r1, #8]
	movs r2, #0
	strh r5, [r1, #2]
	mov r0, r8
	strh r0, [r1, #4]
	movs r3, #2
	strb r3, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _0804FCFC
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804FCFC
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804FCFC:
	ldrb r1, [r7, #3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0804FD08
	b _08050010
_0804FD08:
	ldrb r1, [r7, #2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0804FDCA
	mov r2, sb
	lsls r0, r2, #0x10
	adds r6, r7, #0
	adds r6, #0x20
	lsrs r0, r0, #0x10
	ldrb r3, [r6]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _0804FDCA
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804FD36
	rsbs r0, r0, #0
_0804FD36:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0804FDCA
	cmp r5, r0
	bne _0804FD4C
	ldrh r0, [r6, #8]
	cmp r8, r0
	bhs _0804FDCA
_0804FD4C:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_0804FD50:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0804FD5A
	bl _08050698
_0804FD5A:
	cmp r0, r6
	bne _0804FD80
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0804FD80
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0804FD80
	cmp r0, r5
	beq _0804FD76
	bl _08050698
_0804FD76:
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _0804FD80
	bl _08050698
_0804FD80:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _0804FD90
	adds r3, r0, #0
	cmp r3, r1
	blt _0804FD94
_0804FD90:
	ldr r2, [r4, #8]
	b _0804FD50
_0804FD94:
	adds r2, #0xc
	b _0804FD50
_0804FD98:
	cmp r2, #0
	beq _0804FDCA
	str r6, [r1, #8]
	movs r2, #0
	strh r5, [r1, #2]
	mov r3, r8
	strh r3, [r1, #4]
	movs r0, #7
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _0804FDCA
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804FDCA
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804FDCA:
	ldrb r1, [r7, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0804FE8C
	mov r2, sb
	lsls r0, r2, #0x10
	adds r6, r7, #0
	subs r6, #0x20
	lsrs r0, r0, #0x10
	ldrb r3, [r6]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _0804FE8C
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804FDF8
	rsbs r0, r0, #0
_0804FDF8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0804FE8C
	cmp r5, r0
	bne _0804FE0E
	ldrh r0, [r6, #8]
	cmp r8, r0
	bhs _0804FE8C
_0804FE0E:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_0804FE12:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0804FE1C
	bl _08050692
_0804FE1C:
	cmp r0, r6
	bne _0804FE42
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0804FE42
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0804FE42
	cmp r0, r5
	beq _0804FE38
	bl _08050692
_0804FE38:
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _0804FE42
	bl _08050692
_0804FE42:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _0804FE52
	adds r3, r0, #0
	cmp r3, r1
	blt _0804FE56
_0804FE52:
	ldr r2, [r4, #8]
	b _0804FE12
_0804FE56:
	adds r2, #0xc
	b _0804FE12
_0804FE5A:
	cmp r2, #0
	beq _0804FE8C
	str r6, [r1, #8]
	movs r2, #0
	strh r5, [r1, #2]
	mov r3, r8
	strh r3, [r1, #4]
	movs r0, #5
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _0804FE8C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804FE8C
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804FE8C:
	ldrb r1, [r7, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804FF4E
	mov r2, sb
	lsls r0, r2, #0x10
	ldr r3, _0804FF14 @ =0xFFFFFC00
	adds r6, r7, r3
	lsrs r0, r0, #0x10
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _0804FF4E
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804FEBA
	rsbs r0, r0, #0
_0804FEBA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0804FF4E
	cmp r5, r0
	bne _0804FED0
	ldrh r2, [r6, #8]
	cmp r8, r2
	bhs _0804FF4E
_0804FED0:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_0804FED4:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0804FEDC
	b _0805068E
_0804FEDC:
	cmp r0, r6
	bne _0804FEFE
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0804FEFE
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0804FEFE
	cmp r0, r5
	beq _0804FEF6
	b _0805068E
_0804FEF6:
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _0804FEFE
	b _0805068E
_0804FEFE:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _0804FF0E
	adds r3, r0, #0
	cmp r3, r1
	blt _0804FF18
_0804FF0E:
	ldr r2, [r4, #8]
	b _0804FED4
	.align 2, 0
_0804FF14: .4byte 0xFFFFFC00
_0804FF18:
	adds r2, #0xc
	b _0804FED4
_0804FF1C:
	cmp r2, #0
	beq _0804FF4E
	str r6, [r1, #8]
	movs r2, #0
	strh r5, [r1, #2]
	mov r3, r8
	strh r3, [r1, #4]
	movs r0, #8
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _0804FF4E
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0804FF4E
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0804FF4E:
	ldrb r1, [r7, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08050010
	mov r2, sb
	lsls r0, r2, #0x10
	movs r3, #6
	mov sb, r3
	movs r1, #0x80
	lsls r1, r1, #3
	adds r6, r7, r1
	lsrs r0, r0, #0x10
	ldrb r2, [r6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _08050010
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804FF82
	rsbs r0, r0, #0
_0804FF82:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _08050010
	cmp r5, r0
	bne _0804FF98
	ldrh r3, [r6, #8]
	cmp r8, r3
	bhs _08050010
_0804FF98:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_0804FF9C:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0804FFA4
	b _0805068A
_0804FFA4:
	cmp r0, r6
	bne _0804FFC6
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0804FFC6
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0804FFC6
	cmp r0, r5
	beq _0804FFBE
	b _0805068A
_0804FFBE:
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _0804FFC6
	b _0805068A
_0804FFC6:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _0804FFD6
	adds r3, r0, #0
	cmp r3, r1
	blt _0804FFDA
_0804FFD6:
	ldr r2, [r4, #8]
	b _0804FF9C
_0804FFDA:
	adds r2, #0xc
	b _0804FF9C
_0804FFDE:
	cmp r2, #0
	beq _08050010
	str r6, [r1, #8]
	movs r2, #0
	strh r5, [r1, #2]
	mov r0, r8
	strh r0, [r1, #4]
	mov r3, sb
	strb r3, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08050010
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08050010
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08050010:
	ldrh r1, [r7, #0xc]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xa
	bne _08050020
	bl _0805135E
_08050020:
	ldr r2, [sp, #0x18]
	mov sb, r2
	ldr r2, [r7, #4]
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _08050030
	bl _0805135E
_08050030:
	ldrh r0, [r7, #0xe]
	cmp ip, r0
	bls _0805003A
	bl _0805135E
_0805003A:
	adds r0, r3, #0
	ands r0, r1
	movs r1, #0x90
	orrs r0, r1
	strh r0, [r7, #0xc]
	mov r1, sl
	ands r2, r1
	mov r3, sb
	adds r3, #1
	str r3, [sp, #0x1c]
	cmp r2, #0
	beq _0805010C
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	adds r6, #0x10
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0805006A
	rsbs r1, r1, #0
_0805006A:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0805010C
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0805010C
	cmp r0, r5
	bne _08050080
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _0805010C
_08050080:
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x10
	mov r8, r3
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov ip, r0
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0x1c]
_08050092:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0805009A
	b _08050686
_0805009A:
	cmp r0, r6
	bne _080500BC
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _080500BC
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _080500BC
	cmp r0, r5
	beq _080500B4
	b _08050686
_080500B4:
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _080500BC
	b _08050686
_080500BC:
	ldrh r0, [r4]
	cmp r3, r0
	blt _080500C6
	ldr r2, [r4, #8]
	b _080500C8
_080500C6:
	adds r2, #0xc
_080500C8:
	movs r1, #0
	cmp r3, r0
	bge _080500D0
	adds r1, r3, #1
_080500D0:
	adds r3, r1, #0
	b _08050092
_080500D4:
	cmp r2, #0
	beq _0805010C
	movs r2, #0
	mov r3, sl
	strh r3, [r1]
	mov r3, ip
	lsrs r0, r3, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #3
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _0805010C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0805010C
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805010C:
	ldr r0, [r7, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080501CA
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	subs r6, #0x10
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0805012E
	rsbs r1, r1, #0
_0805012E:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _080501CA
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _080501CA
	cmp r0, r5
	bne _08050144
	ldrh r3, [r6, #8]
	cmp r1, r3
	bge _080501CA
_08050144:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov ip, r0
_08050150:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08050158
	b _08050682
_08050158:
	cmp r0, r6
	bne _0805017A
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0805017A
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0805017A
	cmp r0, r5
	beq _08050172
	b _08050682
_08050172:
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _0805017A
	b _08050682
_0805017A:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08050184
	ldr r2, [r4, #8]
	b _08050186
_08050184:
	adds r2, #0xc
_08050186:
	movs r1, #0
	cmp r3, r0
	bge _0805018E
	adds r1, r3, #1
_0805018E:
	adds r3, r1, #0
	b _08050150
_08050192:
	cmp r2, #0
	beq _080501CA
	movs r2, #0
	mov r3, sl
	strh r3, [r1]
	mov r3, ip
	lsrs r0, r3, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #1
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _080501CA
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080501CA
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080501CA:
	ldr r0, [r7, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0805028E
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _08050244 @ =0xFFFFFE00
	adds r6, r7, r3
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _080501EC
	rsbs r1, r1, #0
_080501EC:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0805028E
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0805028E
	cmp r0, r5
	bne _08050202
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _0805028E
_08050202:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov ip, r0
_0805020E:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08050216
	b _0805067E
_08050216:
	cmp r0, r6
	bne _08050238
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08050238
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08050238
	cmp r0, r5
	beq _08050230
	b _0805067E
_08050230:
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _08050238
	b _0805067E
_08050238:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08050248
	ldr r2, [r4, #8]
	b _0805024A
	.align 2, 0
_08050244: .4byte 0xFFFFFE00
_08050248:
	adds r2, #0xc
_0805024A:
	movs r1, #0
	cmp r3, r0
	bge _08050252
	adds r1, r3, #1
_08050252:
	adds r3, r1, #0
	b _0805020E
_08050256:
	cmp r2, #0
	beq _0805028E
	movs r2, #0
	mov r3, sl
	strh r3, [r1]
	mov r3, ip
	lsrs r0, r3, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #4
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _0805028E
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0805028E
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805028E:
	ldr r0, [r7, #4]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08050352
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	movs r3, #2
	mov ip, r3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _080502B6
	rsbs r1, r1, #0
_080502B6:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08050352
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08050352
	cmp r0, r5
	bne _080502CC
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _08050352
_080502CC:
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x10
	mov r8, r3
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov sb, r0
_080502D8:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _080502E0
	b _0805067A
_080502E0:
	cmp r0, r6
	bne _08050302
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08050302
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08050302
	cmp r0, r5
	beq _080502FA
	b _0805067A
_080502FA:
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _08050302
	b _0805067A
_08050302:
	ldrh r0, [r4]
	cmp r3, r0
	blt _0805030C
	ldr r2, [r4, #8]
	b _0805030E
_0805030C:
	adds r2, #0xc
_0805030E:
	movs r1, #0
	cmp r3, r0
	bge _08050316
	adds r1, r3, #1
_08050316:
	adds r3, r1, #0
	b _080502D8
_0805031A:
	cmp r2, #0
	beq _08050352
	movs r2, #0
	mov r0, sl
	strh r0, [r1]
	mov r3, sb
	lsrs r0, r3, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	mov r0, ip
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08050352
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08050352
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08050352:
	ldr r2, [sp, #0x1c]
	mov sb, r2
	ldr r0, [r7, #4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08050412
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	adds r6, #0x20
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08050376
	rsbs r1, r1, #0
_08050376:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08050412
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08050412
	cmp r0, r5
	bne _0805038C
	ldrh r3, [r6, #8]
	cmp r1, r3
	bge _08050412
_0805038C:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov ip, r0
_08050398:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _080503A0
	b _08050676
_080503A0:
	cmp r0, r6
	bne _080503C2
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _080503C2
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _080503C2
	cmp r0, r5
	beq _080503BA
	b _08050676
_080503BA:
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _080503C2
	b _08050676
_080503C2:
	ldrh r0, [r4]
	cmp r3, r0
	blt _080503CC
	ldr r2, [r4, #8]
	b _080503CE
_080503CC:
	adds r2, #0xc
_080503CE:
	movs r1, #0
	cmp r3, r0
	bge _080503D6
	adds r1, r3, #1
_080503D6:
	adds r3, r1, #0
	b _08050398
_080503DA:
	cmp r2, #0
	beq _08050412
	movs r2, #0
	mov r3, sl
	strh r3, [r1]
	mov r3, ip
	lsrs r0, r3, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #7
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08050412
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08050412
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08050412:
	ldr r0, [r7, #4]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080504D0
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	subs r6, #0x20
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08050434
	rsbs r1, r1, #0
_08050434:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _080504D0
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _080504D0
	cmp r0, r5
	bne _0805044A
	ldrh r3, [r6, #8]
	cmp r1, r3
	bge _080504D0
_0805044A:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov ip, r0
_08050456:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0805045E
	b _08050672
_0805045E:
	cmp r0, r6
	bne _08050480
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08050480
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08050480
	cmp r0, r5
	beq _08050478
	b _08050672
_08050478:
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _08050480
	b _08050672
_08050480:
	ldrh r0, [r4]
	cmp r3, r0
	blt _0805048A
	ldr r2, [r4, #8]
	b _0805048C
_0805048A:
	adds r2, #0xc
_0805048C:
	movs r1, #0
	cmp r3, r0
	bge _08050494
	adds r1, r3, #1
_08050494:
	adds r3, r1, #0
	b _08050456
_08050498:
	cmp r2, #0
	beq _080504D0
	movs r2, #0
	mov r3, sl
	strh r3, [r1]
	mov r3, ip
	lsrs r0, r3, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #5
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _080504D0
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080504D0
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080504D0:
	ldr r0, [r7, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08050592
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _08050548 @ =0xFFFFFC00
	adds r6, r7, r3
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _080504F2
	rsbs r1, r1, #0
_080504F2:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08050592
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08050592
	cmp r0, r5
	bne _08050508
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _08050592
_08050508:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov ip, r0
_08050514:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0805051C
	b _0805066E
_0805051C:
	cmp r0, r6
	bne _0805053E
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0805053E
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0805053E
	cmp r0, r5
	beq _08050536
	b _0805066E
_08050536:
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _0805053E
	b _0805066E
_0805053E:
	ldrh r0, [r4]
	cmp r3, r0
	blt _0805054C
	ldr r2, [r4, #8]
	b _0805054E
	.align 2, 0
_08050548: .4byte 0xFFFFFC00
_0805054C:
	adds r2, #0xc
_0805054E:
	movs r1, #0
	cmp r3, r0
	bge _08050556
	adds r1, r3, #1
_08050556:
	adds r3, r1, #0
	b _08050514
_0805055A:
	cmp r2, #0
	beq _08050592
	movs r2, #0
	mov r3, sl
	strh r3, [r1]
	mov r3, ip
	lsrs r0, r3, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #8
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08050592
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08050592
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08050592:
	ldr r0, [r7, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080505A0
	bl _0805135E
_080505A0:
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	movs r3, #6
	mov sb, r3
	movs r0, #0x80
	lsls r0, r0, #3
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _080505BE
	rsbs r1, r1, #0
_080505BE:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bhi _080505C8
	bl _0805135E
_080505C8:
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	bhs _080505D2
	bl _0805135E
_080505D2:
	cmp r0, r5
	bne _080505E0
	ldrh r2, [r6, #8]
	cmp r1, r2
	blt _080505E0
	bl _0805135E
_080505E0:
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov r8, r0
_080505EA:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _0805066A
	cmp r0, r6
	bne _0805060E
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0805060E
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0805060E
	cmp r0, r5
	bne _0805066A
	ldrh r0, [r2, #4]
	cmp r0, r7
	bhi _0805066A
_0805060E:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08050618
	ldr r2, [r4, #8]
	b _0805061A
_08050618:
	adds r2, #0xc
_0805061A:
	movs r1, #0
	cmp r3, r0
	bge _08050622
	adds r1, r3, #1
_08050622:
	adds r3, r1, #0
	b _080505EA
_08050626:
	cmp r2, #0
	bne _0805062E
	bl _0805135E
_0805062E:
	movs r2, #0
	mov r3, sl
	strh r3, [r1]
	mov r3, r8
	lsrs r0, r3, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	mov r0, sb
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	beq _0805064C
	bl _0805135E
_0805064C:
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	bhs _08050664
	bl _0805135E
_08050664:
	strh r2, [r4, #2]
	bl _0805135A
_0805066A:
	adds r1, r2, #0
	b _08050626
_0805066E:
	adds r1, r2, #0
	b _0805055A
_08050672:
	adds r1, r2, #0
	b _08050498
_08050676:
	adds r1, r2, #0
	b _080503DA
_0805067A:
	adds r1, r2, #0
	b _0805031A
_0805067E:
	adds r1, r2, #0
	b _08050256
_08050682:
	adds r1, r2, #0
	b _08050192
_08050686:
	adds r1, r2, #0
	b _080500D4
_0805068A:
	adds r1, r2, #0
	b _0804FFDE
_0805068E:
	adds r1, r2, #0
	b _0804FF1C
_08050692:
	adds r1, r2, #0
	bl _0804FE5A
_08050698:
	adds r1, r2, #0
	bl _0804FD98
_0805069E:
	adds r1, r2, #0
	bl _0804FCCA
_080506A4:
	adds r1, r2, #0
	bl _0804FC0C
_080506AA:
	adds r1, r2, #0
	bl _0804FB4C
_080506B0:
	adds r1, r2, #0
	bl _0804FA90
_080506B6:
	ldrh r0, [r7, #0xe]
	cmp r0, ip
	bhi _080506C0
	bl _0805135E
_080506C0:
	ldrh r1, [r7, #0xc]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x90
	bne _080506CE
	bl _0805135E
_080506CE:
	mov r2, ip
	strh r2, [r7, #0xe]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	lsls r1, r5, #4
	orrs r0, r1
	strh r0, [r7, #0xc]
	ldr r1, [r7, #4]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080506EC
	b _08050D3E
_080506EC:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	mov r3, ip
	adds r3, #1
	str r3, [sp, #0x18]
	cmp r1, #0
	beq _080507BA
	adds r5, r7, #0
	adds r5, #0x10
	ldrb r0, [r7, #0x10]
	add r0, ip
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _080507BA
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _0805071C
	rsbs r0, r0, #0
_0805071C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _080507BA
	cmp r6, r0
	bne _08050732
	ldrh r0, [r5, #8]
	cmp r8, r0
	bhs _080507BA
_08050732:
	ldrh r0, [r5, #0xc]
	adds r1, r2, #0
	ands r1, r0
	movs r0, #0x30
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov r1, ip
	adds r1, #1
	str r1, [sp, #0x18]
_08050748:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _0805076C
	cmp r0, r5
	bne _08050770
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08050770
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _08050770
	cmp r0, r6
	bne _0805076C
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _08050770
_0805076C:
	adds r0, r2, #0
	b _08050788
_08050770:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _08050780
	adds r3, r0, #0
	cmp r3, r1
	blt _08050784
_08050780:
	ldr r2, [r4, #8]
	b _08050748
_08050784:
	adds r2, #0xc
	b _08050748
_08050788:
	cmp r2, #0
	beq _080507BA
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r3, r8
	strh r3, [r0, #4]
	movs r1, #0xa
	strb r1, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _080507BA
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r4]
	cmp r0, r3
	blo _080507BA
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080507BA:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805087E
	adds r5, r7, #0
	subs r5, #0x10
	ldrb r0, [r5]
	add r0, ip
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _0805087E
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _080507E6
	rsbs r0, r0, #0
_080507E6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _0805087E
	cmp r6, r0
	bne _080507FC
	ldrh r2, [r5, #8]
	cmp r8, r2
	bhs _0805087E
_080507FC:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_0805080C:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08050830
	cmp r0, r5
	bne _08050834
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08050834
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _08050834
	cmp r0, r6
	bne _08050830
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _08050834
_08050830:
	adds r0, r2, #0
	b _0805084C
_08050834:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _08050844
	adds r3, r0, #0
	cmp r3, r1
	blt _08050848
_08050844:
	ldr r2, [r4, #8]
	b _0805080C
_08050848:
	adds r2, #0xc
	b _0805080C
_0805084C:
	cmp r2, #0
	beq _0805087E
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r3, r8
	strh r3, [r0, #4]
	movs r1, #0xa
	strb r1, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _0805087E
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r4]
	cmp r0, r3
	blo _0805087E
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805087E:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08050946
	ldr r0, _080508F8 @ =0xFFFFFE00
	adds r5, r7, r0
	ldrb r0, [r5]
	add r0, ip
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _08050946
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _080508AA
	rsbs r0, r0, #0
_080508AA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _08050946
	cmp r6, r0
	bne _080508C0
	ldrh r1, [r5, #8]
	cmp r8, r1
	bhs _08050946
_080508C0:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_080508D0:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080508F4
	cmp r0, r5
	bne _080508FC
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _080508FC
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _080508FC
	cmp r0, r6
	bne _080508F4
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _080508FC
_080508F4:
	adds r0, r2, #0
	b _08050914
	.align 2, 0
_080508F8: .4byte 0xFFFFFE00
_080508FC:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _0805090C
	adds r3, r0, #0
	cmp r3, r1
	blt _08050910
_0805090C:
	ldr r2, [r4, #8]
	b _080508D0
_08050910:
	adds r2, #0xc
	b _080508D0
_08050914:
	cmp r2, #0
	beq _08050946
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r3, r8
	strh r3, [r0, #4]
	movs r1, #0xa
	strb r1, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _08050946
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r4]
	cmp r0, r3
	blo _08050946
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08050946:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08050A0C
	movs r2, #0x20
	movs r0, #0x80
	lsls r0, r0, #2
	adds r5, r7, r0
	ldrb r0, [r5]
	add r0, ip
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _08050A0C
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08050976
	rsbs r0, r0, #0
_08050976:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _08050A0C
	cmp r6, r0
	bne _0805098C
	ldrh r1, [r5, #8]
	cmp r8, r1
	bhs _08050A0C
_0805098C:
	ldrh r1, [r5, #0xc]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_0805099A:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080509BE
	cmp r0, r5
	bne _080509C2
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _080509C2
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _080509C2
	cmp r0, r6
	bne _080509BE
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _080509C2
_080509BE:
	adds r0, r2, #0
	b _080509DA
_080509C2:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _080509D2
	adds r3, r0, #0
	cmp r3, r1
	blt _080509D6
_080509D2:
	ldr r2, [r4, #8]
	b _0805099A
_080509D6:
	adds r2, #0xc
	b _0805099A
_080509DA:
	cmp r2, #0
	beq _08050A0C
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r3, r8
	strh r3, [r0, #4]
	movs r1, #0xa
	strb r1, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _08050A0C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r4]
	cmp r0, r3
	blo _08050A0C
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08050A0C:
	ldr r0, [sp, #0x18]
	mov sb, r0
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08050ADA
	mov r1, sb
	lsls r0, r1, #0x10
	adds r5, r7, #0
	adds r5, #0x20
	lsrs r0, r0, #0x10
	ldrb r2, [r5]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _08050ADA
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08050A42
	rsbs r0, r0, #0
_08050A42:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _08050ADA
	cmp r6, r0
	bne _08050A58
	ldrh r3, [r5, #8]
	cmp r8, r3
	bhs _08050ADA
_08050A58:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x70
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_08050A68:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08050A8C
	cmp r0, r5
	bne _08050A90
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08050A90
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _08050A90
	cmp r0, r6
	bne _08050A8C
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _08050A90
_08050A8C:
	adds r0, r2, #0
	b _08050AA8
_08050A90:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _08050AA0
	adds r3, r0, #0
	cmp r3, r1
	blt _08050AA4
_08050AA0:
	ldr r2, [r4, #8]
	b _08050A68
_08050AA4:
	adds r2, #0xc
	b _08050A68
_08050AA8:
	cmp r2, #0
	beq _08050ADA
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r1, r8
	strh r1, [r0, #4]
	movs r3, #0xa
	strb r3, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _08050ADA
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08050ADA
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08050ADA:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08050BA4
	mov r2, sb
	lsls r0, r2, #0x10
	adds r5, r7, #0
	subs r5, #0x20
	lsrs r0, r0, #0x10
	ldrb r3, [r5]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _08050BA4
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08050B0C
	rsbs r0, r0, #0
_08050B0C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _08050BA4
	cmp r6, r0
	bne _08050B22
	ldrh r0, [r5, #8]
	cmp r8, r0
	bhs _08050BA4
_08050B22:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x50
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_08050B32:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08050B56
	cmp r0, r5
	bne _08050B5A
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08050B5A
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _08050B5A
	cmp r0, r6
	bne _08050B56
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _08050B5A
_08050B56:
	adds r0, r2, #0
	b _08050B72
_08050B5A:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _08050B6A
	adds r3, r0, #0
	cmp r3, r1
	blt _08050B6E
_08050B6A:
	ldr r2, [r4, #8]
	b _08050B32
_08050B6E:
	adds r2, #0xc
	b _08050B32
_08050B72:
	cmp r2, #0
	beq _08050BA4
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r1, r8
	strh r1, [r0, #4]
	movs r3, #0xa
	strb r3, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _08050BA4
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08050BA4
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08050BA4:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08050C72
	mov r2, sb
	lsls r0, r2, #0x10
	ldr r3, _08050C24 @ =0xFFFFFC00
	adds r5, r7, r3
	lsrs r0, r0, #0x10
	ldrb r1, [r5]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _08050C72
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08050BD6
	rsbs r0, r0, #0
_08050BD6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _08050C72
	cmp r6, r0
	bne _08050BEC
	ldrh r2, [r5, #8]
	cmp r8, r2
	bhs _08050C72
_08050BEC:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x80
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_08050BFC:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08050C20
	cmp r0, r5
	bne _08050C28
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08050C28
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _08050C28
	cmp r0, r6
	bne _08050C20
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _08050C28
_08050C20:
	adds r0, r2, #0
	b _08050C40
	.align 2, 0
_08050C24: .4byte 0xFFFFFC00
_08050C28:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _08050C38
	adds r3, r0, #0
	cmp r3, r1
	blt _08050C3C
_08050C38:
	ldr r2, [r4, #8]
	b _08050BFC
_08050C3C:
	adds r2, #0xc
	b _08050BFC
_08050C40:
	cmp r2, #0
	beq _08050C72
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r3, r8
	strh r3, [r0, #4]
	movs r1, #0xa
	strb r1, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _08050C72
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r4]
	cmp r0, r3
	blo _08050C72
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08050C72:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08050D3E
	mov r1, sb
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #3
	adds r5, r7, r2
	lsrs r0, r0, #0x10
	ldrb r3, [r5]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _08050D3E
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08050CA6
	rsbs r0, r0, #0
_08050CA6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _08050D3E
	cmp r6, r0
	bne _08050CBC
	ldrh r0, [r5, #8]
	cmp r8, r0
	bhs _08050D3E
_08050CBC:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x60
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_08050CCC:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08050CF0
	cmp r0, r5
	bne _08050CF4
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08050CF4
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _08050CF4
	cmp r0, r6
	bne _08050CF0
	ldrh r0, [r2, #4]
	cmp r0, r8
	bls _08050CF4
_08050CF0:
	adds r0, r2, #0
	b _08050D0C
_08050CF4:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _08050D04
	adds r3, r0, #0
	cmp r3, r1
	blt _08050D08
_08050D04:
	ldr r2, [r4, #8]
	b _08050CCC
_08050D08:
	adds r2, #0xc
	b _08050CCC
_08050D0C:
	cmp r2, #0
	beq _08050D3E
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r1, r8
	strh r1, [r0, #4]
	movs r3, #0xa
	strb r3, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _08050D3E
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08050D3E
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08050D3E:
	ldr r1, [r7, #4]
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08050D4C
	b _0805135E
_08050D4C:
	movs r2, #1
	add r2, ip
	mov sb, r2
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _08050E0C
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	adds r6, #0x10
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08050D72
	rsbs r1, r1, #0
_08050D72:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08050E0C
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08050E0C
	cmp r0, r5
	bne _08050D88
	ldrh r3, [r6, #8]
	cmp r1, r3
	bge _08050E0C
_08050D88:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov ip, r0
_08050D94:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08050DB8
	cmp r0, r6
	bne _08050DBC
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08050DBC
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08050DBC
	cmp r0, r5
	bne _08050DB8
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _08050DBC
_08050DB8:
	adds r2, r3, #0
	b _08050DD4
_08050DBC:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08050DC6
	ldr r3, [r4, #8]
	b _08050DC8
_08050DC6:
	adds r3, #0xc
_08050DC8:
	movs r1, #0
	cmp r2, r0
	bge _08050DD0
	adds r1, r2, #1
_08050DD0:
	adds r2, r1, #0
	b _08050D94
_08050DD4:
	cmp r3, #0
	beq _08050E0C
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, ip
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #3
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _08050E0C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08050E0C
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08050E0C:
	ldr r1, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r1, r0
	mov r2, sb
	adds r2, #1
	str r2, [sp, #0x1c]
	cmp r1, #0
	beq _08050ED6
	mov r3, sb
	lsls r0, r3, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	subs r6, #0x10
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08050E36
	rsbs r1, r1, #0
_08050E36:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08050ED6
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08050ED6
	cmp r0, r5
	bne _08050E4C
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _08050ED6
_08050E4C:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r1, sb
	adds r1, #1
	str r1, [sp, #0x1c]
	mov ip, r0
_08050E5E:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08050E82
	cmp r0, r6
	bne _08050E86
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08050E86
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08050E86
	cmp r0, r5
	bne _08050E82
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _08050E86
_08050E82:
	adds r2, r3, #0
	b _08050E9E
_08050E86:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08050E90
	ldr r3, [r4, #8]
	b _08050E92
_08050E90:
	adds r3, #0xc
_08050E92:
	movs r1, #0
	cmp r2, r0
	bge _08050E9A
	adds r1, r2, #1
_08050E9A:
	adds r2, r1, #0
	b _08050E5E
_08050E9E:
	cmp r3, #0
	beq _08050ED6
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, ip
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #1
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _08050ED6
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08050ED6
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08050ED6:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08050F98
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _08050F44 @ =0xFFFFFE00
	adds r6, r7, r3
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08050EFA
	rsbs r1, r1, #0
_08050EFA:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08050F98
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08050F98
	cmp r0, r5
	bne _08050F10
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _08050F98
_08050F10:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov ip, r0
_08050F1C:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08050F40
	cmp r0, r6
	bne _08050F48
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08050F48
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08050F48
	cmp r0, r5
	bne _08050F40
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _08050F48
_08050F40:
	adds r2, r3, #0
	b _08050F60
	.align 2, 0
_08050F44: .4byte 0xFFFFFE00
_08050F48:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08050F52
	ldr r3, [r4, #8]
	b _08050F54
_08050F52:
	adds r3, #0xc
_08050F54:
	movs r1, #0
	cmp r2, r0
	bge _08050F5C
	adds r1, r2, #1
_08050F5C:
	adds r2, r1, #0
	b _08050F1C
_08050F60:
	cmp r3, #0
	beq _08050F98
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, ip
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #4
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _08050F98
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08050F98
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08050F98:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0805105C
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	movs r3, #2
	mov ip, r3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08050FC2
	rsbs r1, r1, #0
_08050FC2:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0805105C
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0805105C
	cmp r0, r5
	bne _08050FD8
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _0805105C
_08050FD8:
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x10
	mov r8, r3
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov sb, r0
_08050FE4:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08051008
	cmp r0, r6
	bne _0805100C
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0805100C
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0805100C
	cmp r0, r5
	bne _08051008
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0805100C
_08051008:
	adds r2, r3, #0
	b _08051024
_0805100C:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08051016
	ldr r3, [r4, #8]
	b _08051018
_08051016:
	adds r3, #0xc
_08051018:
	movs r1, #0
	cmp r2, r0
	bge _08051020
	adds r1, r2, #1
_08051020:
	adds r2, r1, #0
	b _08050FE4
_08051024:
	cmp r3, #0
	beq _0805105C
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, sb
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	mov r0, ip
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0805105C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0805105C
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805105C:
	ldr r2, [sp, #0x1c]
	mov sb, r2
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xd
	ands r0, r1
	cmp r0, #0
	beq _0805111C
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	adds r6, #0x20
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08051082
	rsbs r1, r1, #0
_08051082:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0805111C
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0805111C
	cmp r0, r5
	bne _08051098
	ldrh r3, [r6, #8]
	cmp r1, r3
	bge _0805111C
_08051098:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov ip, r0
_080510A4:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080510C8
	cmp r0, r6
	bne _080510CC
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _080510CC
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _080510CC
	cmp r0, r5
	bne _080510C8
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _080510CC
_080510C8:
	adds r2, r3, #0
	b _080510E4
_080510CC:
	ldrh r0, [r4]
	cmp r2, r0
	blt _080510D6
	ldr r3, [r4, #8]
	b _080510D8
_080510D6:
	adds r3, #0xc
_080510D8:
	movs r1, #0
	cmp r2, r0
	bge _080510E0
	adds r1, r2, #1
_080510E0:
	adds r2, r1, #0
	b _080510A4
_080510E4:
	cmp r3, #0
	beq _0805111C
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, ip
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #7
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0805111C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0805111C
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805111C:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080511DA
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	subs r6, #0x20
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08051140
	rsbs r1, r1, #0
_08051140:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _080511DA
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _080511DA
	cmp r0, r5
	bne _08051156
	ldrh r3, [r6, #8]
	cmp r1, r3
	bge _080511DA
_08051156:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov ip, r0
_08051162:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08051186
	cmp r0, r6
	bne _0805118A
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0805118A
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0805118A
	cmp r0, r5
	bne _08051186
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0805118A
_08051186:
	adds r2, r3, #0
	b _080511A2
_0805118A:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08051194
	ldr r3, [r4, #8]
	b _08051196
_08051194:
	adds r3, #0xc
_08051196:
	movs r1, #0
	cmp r2, r0
	bge _0805119E
	adds r1, r2, #1
_0805119E:
	adds r2, r1, #0
	b _08051162
_080511A2:
	cmp r3, #0
	beq _080511DA
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, ip
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #5
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _080511DA
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080511DA
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080511DA:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0805129C
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _08051248 @ =0xFFFFFC00
	adds r6, r7, r3
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _080511FE
	rsbs r1, r1, #0
_080511FE:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0805129C
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0805129C
	cmp r0, r5
	bne _08051214
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _0805129C
_08051214:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov ip, r0
_08051220:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08051244
	cmp r0, r6
	bne _0805124C
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0805124C
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0805124C
	cmp r0, r5
	bne _08051244
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0805124C
_08051244:
	adds r2, r3, #0
	b _08051264
	.align 2, 0
_08051248: .4byte 0xFFFFFC00
_0805124C:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08051256
	ldr r3, [r4, #8]
	b _08051258
_08051256:
	adds r3, #0xc
_08051258:
	movs r1, #0
	cmp r2, r0
	bge _08051260
	adds r1, r2, #1
_08051260:
	adds r2, r1, #0
	b _08051220
_08051264:
	cmp r3, #0
	beq _0805129C
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, ip
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #8
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0805129C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0805129C
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805129C:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805135E
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	movs r3, #6
	mov sb, r3
	movs r0, #0x80
	lsls r0, r0, #3
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _080512C6
	rsbs r1, r1, #0
_080512C6:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0805135E
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0805135E
	cmp r0, r5
	bne _080512DC
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _0805135E
_080512DC:
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_080512E6:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0805130A
	cmp r0, r6
	bne _0805130E
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0805130E
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0805130E
	cmp r0, r5
	bne _0805130A
	ldrh r0, [r3, #4]
	cmp r0, r7
	bls _0805130E
_0805130A:
	adds r2, r3, #0
	b _08051326
_0805130E:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08051318
	ldr r3, [r4, #8]
	b _0805131A
_08051318:
	adds r3, #0xc
_0805131A:
	movs r1, #0
	cmp r2, r0
	bge _08051322
	adds r1, r2, #1
_08051322:
	adds r2, r1, #0
	b _080512E6
_08051326:
	cmp r3, #0
	beq _0805135E
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	mov r0, sb
	strb r0, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0805135E
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0805135E
	strh r3, [r4, #2]
_0805135A:
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805135E:
	ldr r0, [sp, #0x10]
	movs r2, #0
	str r2, [r0, #8]
	strh r2, [r0]
	mov r1, sp
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	ldr r0, [sp, #0x10]
	adds r0, #0xc
	str r0, [sp, #0x10]
	ldrh r0, [r1, #4]
	ldrh r3, [r1]
	cmp r0, r3
	blo _08051382
	strh r2, [r1, #4]
	ldr r0, [sp, #8]
	str r0, [sp, #0x10]
_08051382:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r2, r0, #0
	cmp r1, r2
	beq _08051390
	bl _0804F9B2
_08051390:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080513A0
sub_080513A0: @ 0x080513A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	mov sl, r2
	mov sb, r3
	ldr r4, [sp, #0x20]
	ldr r0, [sp, #0x24]
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r1, r8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r7, _0805149C @ =gUnk_0202A1D8
	adds r0, r7, #0
	movs r1, #0x18
	bl memzero
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	mov r0, sb
	bl memzero
	mov r0, sl
	str r0, [r7, #0x14]
	subs r4, #1
	strh r4, [r7]
	mov r1, sb
	str r1, [r7, #8]
	str r1, [r7, #0xc]
	str r1, [r7, #0x10]
	mov r0, r8
	strh r0, [r7, #6]
	lsls r5, r5, #4
	add sl, r5
	lsls r6, r6, #9
	add r6, sl
	movs r1, #0
	mov sb, r1
	ldrh r0, [r6, #0xa]
	cmp sb, r0
	bls _0805140C
	bl _08052014
_0805140C:
	cmp sb, r0
	bne _0805141A
	ldrh r0, [r6, #8]
	cmp sb, r0
	blo _0805141A
	bl _08052014
_0805141A:
	ldrh r0, [r6, #0xc]
	movs r1, #0xf0
	ands r1, r0
	strh r1, [r6, #0xc]
	mov r1, sb
	strh r1, [r6, #0xa]
	strh r1, [r6, #8]
	movs r0, #1
	mov sl, r0
	ldrb r1, [r6, #2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08051438
	bl _08052014
_08051438:
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _080514EA
	adds r5, r6, #0
	adds r5, #0x10
	ldrb r4, [r6, #0x10]
	ldrh r0, [r7, #6]
	cmp r0, r4
	blo _080514EA
	ldrb r1, [r5, #1]
	ldrb r0, [r6, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _08051458
	rsbs r0, r0, #0
_08051458:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r4, r0
	bhi _080514EA
	cmp r4, r0
	bne _0805146E
	ldrh r1, [r5, #8]
	cmp r8, r1
	bhs _080514EA
_0805146E:
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
_08051472:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08051496
	cmp r0, r5
	bne _080514A0
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080514A0
	ldrh r0, [r3, #2]
	cmp r0, r4
	blo _080514A0
	cmp r0, r4
	bne _08051496
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _080514A0
_08051496:
	adds r2, r3, #0
	b _080514B8
	.align 2, 0
_0805149C: .4byte gUnk_0202A1D8
_080514A0:
	adds r0, r2, #1
	ldrh r1, [r7]
	movs r2, #0
	cmp r0, r1
	bge _080514B0
	adds r2, r0, #0
	cmp r2, r1
	blt _080514B4
_080514B0:
	ldr r3, [r7, #8]
	b _08051472
_080514B4:
	adds r3, #0xc
	b _08051472
_080514B8:
	cmp r3, #0
	beq _080514EA
	str r5, [r2, #8]
	strh r4, [r2, #2]
	mov r0, r8
	strh r0, [r2, #4]
	movs r0, #3
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _080514EA
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _080514EA
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_080514EA:
	ldrb r1, [r6, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08051598
	adds r5, r6, #0
	subs r5, #0x10
	ldrb r4, [r5]
	ldrh r0, [r7, #6]
	cmp r0, r4
	blo _08051598
	ldrb r1, [r5, #1]
	ldrb r0, [r6, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805150C
	rsbs r0, r0, #0
_0805150C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r4, r0
	bhi _08051598
	cmp r4, r0
	bne _08051522
	ldrh r0, [r5, #8]
	cmp r8, r0
	bhs _08051598
_08051522:
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
_08051526:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0805154A
	cmp r0, r5
	bne _0805154E
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805154E
	ldrh r0, [r3, #2]
	cmp r0, r4
	blo _0805154E
	cmp r0, r4
	bne _0805154A
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _0805154E
_0805154A:
	adds r2, r3, #0
	b _08051566
_0805154E:
	adds r0, r2, #1
	ldrh r1, [r7]
	movs r2, #0
	cmp r0, r1
	bge _0805155E
	adds r2, r0, #0
	cmp r2, r1
	blt _08051562
_0805155E:
	ldr r3, [r7, #8]
	b _08051526
_08051562:
	adds r3, #0xc
	b _08051526
_08051566:
	cmp r3, #0
	beq _08051598
	str r5, [r2, #8]
	strh r4, [r2, #2]
	mov r1, r8
	strh r1, [r2, #4]
	movs r0, #1
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _08051598
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _08051598
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_08051598:
	ldrb r1, [r6, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805164A
	ldr r0, _080515FC @ =0xFFFFFE00
	adds r5, r6, r0
	ldrb r4, [r5]
	ldrh r0, [r7, #6]
	cmp r0, r4
	blo _0805164A
	ldrb r1, [r5, #1]
	ldrb r0, [r6, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _080515BA
	rsbs r0, r0, #0
_080515BA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r4, r0
	bhi _0805164A
	cmp r4, r0
	bne _080515D0
	ldrh r1, [r5, #8]
	cmp r8, r1
	bhs _0805164A
_080515D0:
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
_080515D4:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080515F8
	cmp r0, r5
	bne _08051600
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08051600
	ldrh r0, [r3, #2]
	cmp r0, r4
	blo _08051600
	cmp r0, r4
	bne _080515F8
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _08051600
_080515F8:
	adds r2, r3, #0
	b _08051618
	.align 2, 0
_080515FC: .4byte 0xFFFFFE00
_08051600:
	adds r0, r2, #1
	ldrh r1, [r7]
	movs r2, #0
	cmp r0, r1
	bge _08051610
	adds r2, r0, #0
	cmp r2, r1
	blt _08051614
_08051610:
	ldr r3, [r7, #8]
	b _080515D4
_08051614:
	adds r3, #0xc
	b _080515D4
_08051618:
	cmp r3, #0
	beq _0805164A
	str r5, [r2, #8]
	strh r4, [r2, #2]
	mov r0, r8
	strh r0, [r2, #4]
	movs r0, #4
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _0805164A
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _0805164A
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_0805164A:
	ldrb r1, [r6, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080516FA
	movs r0, #0x80
	lsls r0, r0, #2
	adds r5, r6, r0
	ldrb r4, [r5]
	ldrh r0, [r7, #6]
	cmp r0, r4
	blo _080516FA
	ldrb r1, [r5, #1]
	ldrb r0, [r6, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805166E
	rsbs r0, r0, #0
_0805166E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r4, r0
	bhi _080516FA
	cmp r4, r0
	bne _08051684
	ldrh r1, [r5, #8]
	cmp r8, r1
	bhs _080516FA
_08051684:
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
_08051688:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080516AC
	cmp r0, r5
	bne _080516B0
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080516B0
	ldrh r0, [r3, #2]
	cmp r0, r4
	blo _080516B0
	cmp r0, r4
	bne _080516AC
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _080516B0
_080516AC:
	adds r2, r3, #0
	b _080516C8
_080516B0:
	adds r0, r2, #1
	ldrh r1, [r7]
	movs r2, #0
	cmp r0, r1
	bge _080516C0
	adds r2, r0, #0
	cmp r2, r1
	blt _080516C4
_080516C0:
	ldr r3, [r7, #8]
	b _08051688
_080516C4:
	adds r3, #0xc
	b _08051688
_080516C8:
	cmp r3, #0
	beq _080516FA
	str r5, [r2, #8]
	strh r4, [r2, #2]
	mov r0, r8
	strh r0, [r2, #4]
	movs r0, #2
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _080516FA
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _080516FA
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_080516FA:
	ldrb r1, [r6, #3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08051706
	b _080519F6
_08051706:
	ldrb r1, [r6, #2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080517C0
	mov r1, sl
	lsls r0, r1, #0x10
	adds r5, r6, #0
	adds r5, #0x20
	lsrs r0, r0, #0x10
	ldrb r1, [r5]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r7, #6]
	cmp r0, r4
	blo _080517C0
	ldrb r1, [r5, #1]
	ldrb r0, [r6, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _08051734
	rsbs r0, r0, #0
_08051734:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r4, r0
	bhi _080517C0
	cmp r4, r0
	bne _0805174A
	ldrh r0, [r5, #8]
	cmp r8, r0
	bhs _080517C0
_0805174A:
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
_0805174E:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08051772
	cmp r0, r5
	bne _08051776
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08051776
	ldrh r0, [r3, #2]
	cmp r0, r4
	blo _08051776
	cmp r0, r4
	bne _08051772
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _08051776
_08051772:
	adds r2, r3, #0
	b _0805178E
_08051776:
	adds r0, r2, #1
	ldrh r1, [r7]
	movs r2, #0
	cmp r0, r1
	bge _08051786
	adds r2, r0, #0
	cmp r2, r1
	blt _0805178A
_08051786:
	ldr r3, [r7, #8]
	b _0805174E
_0805178A:
	adds r3, #0xc
	b _0805174E
_0805178E:
	cmp r3, #0
	beq _080517C0
	str r5, [r2, #8]
	strh r4, [r2, #2]
	mov r1, r8
	strh r1, [r2, #4]
	movs r0, #7
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _080517C0
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _080517C0
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_080517C0:
	ldrb r1, [r6, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0805187A
	mov r1, sl
	lsls r0, r1, #0x10
	adds r5, r6, #0
	subs r5, #0x20
	lsrs r0, r0, #0x10
	ldrb r1, [r5]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r7, #6]
	cmp r0, r4
	blo _0805187A
	ldrb r1, [r5, #1]
	ldrb r0, [r6, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _080517EE
	rsbs r0, r0, #0
_080517EE:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r4, r0
	bhi _0805187A
	cmp r4, r0
	bne _08051804
	ldrh r0, [r5, #8]
	cmp r8, r0
	bhs _0805187A
_08051804:
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
_08051808:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0805182C
	cmp r0, r5
	bne _08051830
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08051830
	ldrh r0, [r3, #2]
	cmp r0, r4
	blo _08051830
	cmp r0, r4
	bne _0805182C
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _08051830
_0805182C:
	adds r2, r3, #0
	b _08051848
_08051830:
	adds r0, r2, #1
	ldrh r1, [r7]
	movs r2, #0
	cmp r0, r1
	bge _08051840
	adds r2, r0, #0
	cmp r2, r1
	blt _08051844
_08051840:
	ldr r3, [r7, #8]
	b _08051808
_08051844:
	adds r3, #0xc
	b _08051808
_08051848:
	cmp r3, #0
	beq _0805187A
	str r5, [r2, #8]
	strh r4, [r2, #2]
	mov r1, r8
	strh r1, [r2, #4]
	movs r0, #5
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _0805187A
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _0805187A
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_0805187A:
	ldrb r1, [r6, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805193A
	mov r1, sl
	lsls r0, r1, #0x10
	ldr r1, _080518EC @ =0xFFFFFC00
	adds r5, r6, r1
	lsrs r0, r0, #0x10
	ldrb r1, [r5]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r7, #6]
	cmp r0, r4
	blo _0805193A
	ldrb r1, [r5, #1]
	ldrb r0, [r6, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _080518A8
	rsbs r0, r0, #0
_080518A8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r4, r0
	bhi _0805193A
	cmp r4, r0
	bne _080518BE
	ldrh r0, [r5, #8]
	cmp r8, r0
	bhs _0805193A
_080518BE:
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
_080518C2:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080518E6
	cmp r0, r5
	bne _080518F0
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080518F0
	ldrh r0, [r3, #2]
	cmp r0, r4
	blo _080518F0
	cmp r0, r4
	bne _080518E6
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _080518F0
_080518E6:
	adds r2, r3, #0
	b _08051908
	.align 2, 0
_080518EC: .4byte 0xFFFFFC00
_080518F0:
	adds r0, r2, #1
	ldrh r1, [r7]
	movs r2, #0
	cmp r0, r1
	bge _08051900
	adds r2, r0, #0
	cmp r2, r1
	blt _08051904
_08051900:
	ldr r3, [r7, #8]
	b _080518C2
_08051904:
	adds r3, #0xc
	b _080518C2
_08051908:
	cmp r3, #0
	beq _0805193A
	str r5, [r2, #8]
	strh r4, [r2, #2]
	mov r1, r8
	strh r1, [r2, #4]
	movs r0, #8
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _0805193A
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _0805193A
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_0805193A:
	ldrb r1, [r6, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080519F6
	mov r1, sl
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #3
	adds r5, r6, r1
	lsrs r0, r0, #0x10
	ldrb r1, [r5]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r7, #6]
	cmp r0, r4
	blo _080519F6
	ldrb r1, [r5, #1]
	ldrb r0, [r6, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805196A
	rsbs r0, r0, #0
_0805196A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0xa]
	cmp r4, r0
	bhi _080519F6
	cmp r4, r0
	bne _08051980
	ldrh r0, [r5, #8]
	cmp r8, r0
	bhs _080519F6
_08051980:
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
_08051984:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080519A8
	cmp r0, r5
	bne _080519AC
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080519AC
	ldrh r0, [r3, #2]
	cmp r0, r4
	blo _080519AC
	cmp r0, r4
	bne _080519A8
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _080519AC
_080519A8:
	adds r2, r3, #0
	b _080519C4
_080519AC:
	adds r0, r2, #1
	ldrh r1, [r7]
	movs r2, #0
	cmp r0, r1
	bge _080519BC
	adds r2, r0, #0
	cmp r2, r1
	blt _080519C0
_080519BC:
	ldr r3, [r7, #8]
	b _08051984
_080519C0:
	adds r3, #0xc
	b _08051984
_080519C4:
	cmp r3, #0
	beq _080519F6
	str r5, [r2, #8]
	strh r4, [r2, #2]
	mov r1, r8
	strh r1, [r2, #4]
	movs r0, #6
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _080519F6
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _080519F6
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_080519F6:
	ldrh r1, [r6, #0xc]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xa
	bne _08051A04
	b _08052014
_08051A04:
	movs r0, #1
	mov sl, r0
	ldr r2, [r6, #4]
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _08051A12
	b _08052014
_08051A12:
	ldrh r0, [r6, #0xe]
	cmp sb, r0
	bls _08051A1A
	b _08052014
_08051A1A:
	adds r0, r3, #0
	ands r0, r1
	movs r1, #0x90
	orrs r0, r1
	strh r0, [r6, #0xc]
	mov r1, sl
	ands r2, r1
	movs r0, #2
	mov ip, r0
	cmp r2, #0
	beq _08051AE2
	movs r5, #1
	adds r4, r6, #0
	adds r4, #0x10
	ldrb r1, [r4, #1]
	ldrb r0, [r6, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08051A44
	rsbs r1, r1, #0
_08051A44:
	ldrh r0, [r4, #0xe]
	cmp r0, #1
	bls _08051AE2
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	blo _08051AE2
	cmp r0, #1
	bne _08051A5A
	ldrh r0, [r4, #8]
	cmp r1, r0
	bge _08051AE2
_08051A5A:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
	mov sb, r0
	movs r0, #2
	mov ip, r0
_08051A6A:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08051A8E
	cmp r0, r4
	bne _08051A92
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08051A92
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08051A92
	cmp r0, r5
	bne _08051A8E
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _08051A92
_08051A8E:
	adds r2, r3, #0
	b _08051AAA
_08051A92:
	ldrh r0, [r7]
	cmp r2, r0
	blt _08051A9C
	ldr r3, [r7, #8]
	b _08051A9E
_08051A9C:
	adds r3, #0xc
_08051A9E:
	movs r1, #0
	cmp r2, r0
	bge _08051AA6
	adds r1, r2, #1
_08051AA6:
	adds r2, r1, #0
	b _08051A6A
_08051AAA:
	cmp r3, #0
	beq _08051AE2
	movs r0, #1
	strh r0, [r2]
	mov r1, sb
	lsrs r0, r1, #0x10
	str r4, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #3
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _08051AE2
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _08051AE2
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_08051AE2:
	ldr r0, [r6, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08051B9E
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	adds r5, r6, #0
	subs r5, #0x10
	ldrb r1, [r5, #1]
	ldrb r0, [r6, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08051B04
	rsbs r1, r1, #0
_08051B04:
	ldrh r0, [r5, #0xe]
	cmp r0, r4
	bls _08051B9E
	ldrh r0, [r5, #0xa]
	cmp r0, r4
	blo _08051B9E
	cmp r0, r4
	bne _08051B1A
	ldrh r0, [r5, #8]
	cmp r1, r0
	bge _08051B9E
_08051B1A:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
	mov sb, r0
_08051B26:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08051B4A
	cmp r0, r5
	bne _08051B4E
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08051B4E
	ldrh r0, [r3, #2]
	cmp r0, r4
	blo _08051B4E
	cmp r0, r4
	bne _08051B4A
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _08051B4E
_08051B4A:
	adds r2, r3, #0
	b _08051B66
_08051B4E:
	ldrh r0, [r7]
	cmp r2, r0
	blt _08051B58
	ldr r3, [r7, #8]
	b _08051B5A
_08051B58:
	adds r3, #0xc
_08051B5A:
	movs r1, #0
	cmp r2, r0
	bge _08051B62
	adds r1, r2, #1
_08051B62:
	adds r2, r1, #0
	b _08051B26
_08051B66:
	cmp r3, #0
	beq _08051B9E
	movs r0, #1
	strh r0, [r2]
	mov r1, sb
	lsrs r0, r1, #0x10
	str r5, [r2, #8]
	strh r4, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #1
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _08051B9E
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _08051B9E
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_08051B9E:
	ldr r0, [r6, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08051C60
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08051C0C @ =0xFFFFFE00
	adds r5, r6, r0
	ldrb r1, [r5, #1]
	ldrb r0, [r6, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08051BC0
	rsbs r1, r1, #0
_08051BC0:
	ldrh r0, [r5, #0xe]
	cmp r0, r4
	bls _08051C60
	ldrh r0, [r5, #0xa]
	cmp r0, r4
	blo _08051C60
	cmp r0, r4
	bne _08051BD6
	ldrh r0, [r5, #8]
	cmp r1, r0
	bge _08051C60
_08051BD6:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
	mov sb, r0
_08051BE2:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08051C06
	cmp r0, r5
	bne _08051C10
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08051C10
	ldrh r0, [r3, #2]
	cmp r0, r4
	blo _08051C10
	cmp r0, r4
	bne _08051C06
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _08051C10
_08051C06:
	adds r2, r3, #0
	b _08051C28
	.align 2, 0
_08051C0C: .4byte 0xFFFFFE00
_08051C10:
	ldrh r0, [r7]
	cmp r2, r0
	blt _08051C1A
	ldr r3, [r7, #8]
	b _08051C1C
_08051C1A:
	adds r3, #0xc
_08051C1C:
	movs r1, #0
	cmp r2, r0
	bge _08051C24
	adds r1, r2, #1
_08051C24:
	adds r2, r1, #0
	b _08051BE2
_08051C28:
	cmp r3, #0
	beq _08051C60
	movs r0, #1
	strh r0, [r2]
	mov r1, sb
	lsrs r0, r1, #0x10
	str r5, [r2, #8]
	strh r4, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #4
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _08051C60
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _08051C60
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_08051C60:
	ldr r0, [r6, #4]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08051D1E
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #2
	adds r5, r6, r0
	ldrb r1, [r5, #1]
	ldrb r0, [r6, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08051C84
	rsbs r1, r1, #0
_08051C84:
	ldrh r0, [r5, #0xe]
	cmp r0, r4
	bls _08051D1E
	ldrh r0, [r5, #0xa]
	cmp r0, r4
	blo _08051D1E
	cmp r0, r4
	bne _08051C9A
	ldrh r0, [r5, #8]
	cmp r1, r0
	bge _08051D1E
_08051C9A:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
	mov sb, r0
_08051CA6:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08051CCA
	cmp r0, r5
	bne _08051CCE
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08051CCE
	ldrh r0, [r3, #2]
	cmp r0, r4
	blo _08051CCE
	cmp r0, r4
	bne _08051CCA
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _08051CCE
_08051CCA:
	adds r2, r3, #0
	b _08051CE6
_08051CCE:
	ldrh r0, [r7]
	cmp r2, r0
	blt _08051CD8
	ldr r3, [r7, #8]
	b _08051CDA
_08051CD8:
	adds r3, #0xc
_08051CDA:
	movs r1, #0
	cmp r2, r0
	bge _08051CE2
	adds r1, r2, #1
_08051CE2:
	adds r2, r1, #0
	b _08051CA6
_08051CE6:
	cmp r3, #0
	beq _08051D1E
	movs r0, #1
	strh r0, [r2]
	mov r1, sb
	lsrs r0, r1, #0x10
	str r5, [r2, #8]
	strh r4, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #2
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _08051D1E
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _08051D1E
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_08051D1E:
	mov sl, ip
	ldr r0, [r6, #4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08051DDC
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	adds r5, r6, #0
	adds r5, #0x20
	ldrb r1, [r5, #1]
	ldrb r0, [r6, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08051D42
	rsbs r1, r1, #0
_08051D42:
	ldrh r0, [r5, #0xe]
	cmp r0, r4
	bls _08051DDC
	ldrh r0, [r5, #0xa]
	cmp r0, r4
	blo _08051DDC
	cmp r0, r4
	bne _08051D58
	ldrh r0, [r5, #8]
	cmp r1, r0
	bge _08051DDC
_08051D58:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
	mov sb, r0
_08051D64:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08051D88
	cmp r0, r5
	bne _08051D8C
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08051D8C
	ldrh r0, [r3, #2]
	cmp r0, r4
	blo _08051D8C
	cmp r0, r4
	bne _08051D88
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _08051D8C
_08051D88:
	adds r2, r3, #0
	b _08051DA4
_08051D8C:
	ldrh r0, [r7]
	cmp r2, r0
	blt _08051D96
	ldr r3, [r7, #8]
	b _08051D98
_08051D96:
	adds r3, #0xc
_08051D98:
	movs r1, #0
	cmp r2, r0
	bge _08051DA0
	adds r1, r2, #1
_08051DA0:
	adds r2, r1, #0
	b _08051D64
_08051DA4:
	cmp r3, #0
	beq _08051DDC
	movs r0, #1
	strh r0, [r2]
	mov r1, sb
	lsrs r0, r1, #0x10
	str r5, [r2, #8]
	strh r4, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #7
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _08051DDC
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _08051DDC
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_08051DDC:
	ldr r0, [r6, #4]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08051E98
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	adds r5, r6, #0
	subs r5, #0x20
	ldrb r1, [r5, #1]
	ldrb r0, [r6, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08051DFE
	rsbs r1, r1, #0
_08051DFE:
	ldrh r0, [r5, #0xe]
	cmp r0, r4
	bls _08051E98
	ldrh r0, [r5, #0xa]
	cmp r0, r4
	blo _08051E98
	cmp r0, r4
	bne _08051E14
	ldrh r0, [r5, #8]
	cmp r1, r0
	bge _08051E98
_08051E14:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
	mov sb, r0
_08051E20:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08051E44
	cmp r0, r5
	bne _08051E48
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08051E48
	ldrh r0, [r3, #2]
	cmp r0, r4
	blo _08051E48
	cmp r0, r4
	bne _08051E44
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _08051E48
_08051E44:
	adds r2, r3, #0
	b _08051E60
_08051E48:
	ldrh r0, [r7]
	cmp r2, r0
	blt _08051E52
	ldr r3, [r7, #8]
	b _08051E54
_08051E52:
	adds r3, #0xc
_08051E54:
	movs r1, #0
	cmp r2, r0
	bge _08051E5C
	adds r1, r2, #1
_08051E5C:
	adds r2, r1, #0
	b _08051E20
_08051E60:
	cmp r3, #0
	beq _08051E98
	movs r0, #1
	strh r0, [r2]
	mov r1, sb
	lsrs r0, r1, #0x10
	str r5, [r2, #8]
	strh r4, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #5
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _08051E98
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _08051E98
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_08051E98:
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08051F58
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08051F04 @ =0xFFFFFC00
	adds r5, r6, r0
	ldrb r1, [r5, #1]
	ldrb r0, [r6, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08051EBA
	rsbs r1, r1, #0
_08051EBA:
	ldrh r0, [r5, #0xe]
	cmp r0, r4
	bls _08051F58
	ldrh r0, [r5, #0xa]
	cmp r0, r4
	blo _08051F58
	cmp r0, r4
	bne _08051ED0
	ldrh r0, [r5, #8]
	cmp r1, r0
	bge _08051F58
_08051ED0:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
	mov sb, r0
_08051EDC:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08051F00
	cmp r0, r5
	bne _08051F08
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08051F08
	ldrh r0, [r3, #2]
	cmp r0, r4
	blo _08051F08
	cmp r0, r4
	bne _08051F00
	ldrh r0, [r3, #4]
	cmp r0, r8
	bls _08051F08
_08051F00:
	adds r2, r3, #0
	b _08051F20
	.align 2, 0
_08051F04: .4byte 0xFFFFFC00
_08051F08:
	ldrh r0, [r7]
	cmp r2, r0
	blt _08051F12
	ldr r3, [r7, #8]
	b _08051F14
_08051F12:
	adds r3, #0xc
_08051F14:
	movs r1, #0
	cmp r2, r0
	bge _08051F1C
	adds r1, r2, #1
_08051F1C:
	adds r2, r1, #0
	b _08051EDC
_08051F20:
	cmp r3, #0
	beq _08051F58
	movs r0, #1
	strh r0, [r2]
	mov r1, sb
	lsrs r0, r1, #0x10
	str r5, [r2, #8]
	strh r4, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #8
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _08051F58
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _08051F58
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_08051F58:
	ldr r0, [r6, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08052014
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r6, r0
	ldrb r1, [r5, #1]
	ldrb r0, [r6, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08051F7C
	rsbs r1, r1, #0
_08051F7C:
	ldrh r0, [r5, #0xe]
	cmp r0, r4
	bls _08052014
	ldrh r0, [r5, #0xa]
	cmp r0, r4
	blo _08052014
	cmp r0, r4
	bne _08051F92
	ldrh r0, [r5, #8]
	cmp r1, r0
	bge _08052014
_08051F92:
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	ldrh r2, [r7, #4]
	ldr r3, [r7, #0x10]
	mov r8, r0
_08051F9C:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08051FC0
	cmp r0, r5
	bne _08051FC4
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08051FC4
	ldrh r0, [r3, #2]
	cmp r0, r4
	blo _08051FC4
	cmp r0, r4
	bne _08051FC0
	ldrh r0, [r3, #4]
	cmp r0, r6
	bls _08051FC4
_08051FC0:
	adds r2, r3, #0
	b _08051FDC
_08051FC4:
	ldrh r0, [r7]
	cmp r2, r0
	blt _08051FCE
	ldr r3, [r7, #8]
	b _08051FD0
_08051FCE:
	adds r3, #0xc
_08051FD0:
	movs r1, #0
	cmp r2, r0
	bge _08051FD8
	adds r1, r2, #1
_08051FD8:
	adds r2, r1, #0
	b _08051F9C
_08051FDC:
	cmp r3, #0
	beq _08052014
	movs r0, #1
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r5, [r2, #8]
	strh r4, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #6
	strb r0, [r2, #6]
	ldr r1, [r7, #0xc]
	cmp r1, r2
	bne _08052014
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	adds r1, #0xc
	str r1, [r7, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	blo _08052014
	movs r0, #0
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	str r0, [r7, #0xc]
_08052014:
	adds r0, r7, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08052024
sub_08052024: @ 0x08052024
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r1, [sp]
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	cmp r8, r1
	blt _08052040
	bl _080539BC
_08052040:
	movs r1, #1
	mov sl, r1
_08052044:
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x10]
	cmp r0, r2
	bne _08052052
	movs r0, #0
	bl _080539BE
_08052052:
	ldrh r3, [r2, #4]
	ldrb r5, [r2, #6]
	ldrb r1, [r2]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	ldr r7, [r2, #8]
	ldrh r2, [r2, #2]
	str r2, [sp, #4]
	cmp r0, #0
	beq _0805206C
	bl sub_08052CCC
_0805206C:
	ldrh r0, [r7, #0xa]
	mov r2, r8
	adds r2, #1
	str r2, [sp, #8]
	ldr r1, [sp, #4]
	cmp r1, r0
	bls _0805207E
	bl _0805398A
_0805207E:
	cmp r1, r0
	bne _0805208C
	ldrh r2, [r7, #8]
	cmp r3, r2
	blo _0805208C
	bl _0805398A
_0805208C:
	ldrh r0, [r7, #0xc]
	movs r1, #0xf0
	ands r1, r0
	orrs r1, r5
	strh r1, [r7, #0xc]
	mov r5, sp
	ldrh r5, [r5, #4]
	strh r5, [r7, #0xa]
	strh r3, [r7, #8]
	ldr r0, [sp, #4]
	adds r0, #1
	mov sb, r0
	ldrb r1, [r7, #2]
	adds r0, r1, #0
	mov r2, sb
	str r2, [sp, #0xc]
	mov r5, r8
	adds r5, #1
	str r5, [sp, #8]
	cmp r0, #0xff
	bne _080520BA
	bl _0805398A
_080520BA:
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08052174
	adds r6, r7, #0
	adds r6, #0x10
	ldrb r0, [r7, #0x10]
	ldr r1, [sp, #4]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _08052174
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _080520E2
	rsbs r0, r0, #0
_080520E2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _08052174
	cmp r5, r0
	bne _080520F8
	ldrh r2, [r6, #8]
	cmp ip, r2
	bhs _08052174
_080520F8:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov r0, r8
	adds r0, #1
	str r0, [sp, #8]
_08052102:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08052126
	cmp r0, r6
	bne _0805212A
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0805212A
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0805212A
	cmp r0, r5
	bne _08052126
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _0805212A
_08052126:
	adds r0, r2, #0
	b _08052142
_0805212A:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _0805213A
	adds r3, r0, #0
	cmp r3, r1
	blt _0805213E
_0805213A:
	ldr r2, [r4, #8]
	b _08052102
_0805213E:
	adds r2, #0xc
	b _08052102
_08052142:
	cmp r2, #0
	beq _08052174
	str r6, [r0, #8]
	movs r2, #0
	strh r5, [r0, #2]
	mov r1, ip
	strh r1, [r0, #4]
	movs r5, #3
	strb r5, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _08052174
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08052174
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08052174:
	ldrb r1, [r7, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0805222E
	movs r2, #1
	mov r8, r2
	adds r6, r7, #0
	subs r6, #0x10
	ldrb r0, [r6]
	ldr r5, [sp, #4]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _0805222E
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _080521A2
	rsbs r0, r0, #0
_080521A2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _0805222E
	cmp r5, r0
	bne _080521B8
	ldrh r0, [r6, #8]
	cmp ip, r0
	bhs _0805222E
_080521B8:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_080521BC:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080521E0
	cmp r0, r6
	bne _080521E4
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _080521E4
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _080521E4
	cmp r0, r5
	bne _080521E0
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _080521E4
_080521E0:
	adds r0, r2, #0
	b _080521FC
_080521E4:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _080521F4
	adds r3, r0, #0
	cmp r3, r1
	blt _080521F8
_080521F4:
	ldr r2, [r4, #8]
	b _080521BC
_080521F8:
	adds r2, #0xc
	b _080521BC
_080521FC:
	cmp r2, #0
	beq _0805222E
	str r6, [r0, #8]
	movs r2, #0
	strh r5, [r0, #2]
	mov r1, ip
	strh r1, [r0, #4]
	mov r5, r8
	strb r5, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _0805222E
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0805222E
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805222E:
	ldrb r1, [r7, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080522EE
	movs r2, #4
	mov r8, r2
	ldr r5, _080522A0 @ =0xFFFFFE00
	adds r6, r7, r5
	ldrb r0, [r6]
	ldr r1, [sp, #4]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _080522EE
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805225C
	rsbs r0, r0, #0
_0805225C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _080522EE
	cmp r5, r0
	bne _08052272
	ldrh r2, [r6, #8]
	cmp ip, r2
	bhs _080522EE
_08052272:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_08052276:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _0805229A
	cmp r0, r6
	bne _080522A4
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _080522A4
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _080522A4
	cmp r0, r5
	bne _0805229A
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _080522A4
_0805229A:
	adds r0, r2, #0
	b _080522BC
	.align 2, 0
_080522A0: .4byte 0xFFFFFE00
_080522A4:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _080522B4
	adds r3, r0, #0
	cmp r3, r1
	blt _080522B8
_080522B4:
	ldr r2, [r4, #8]
	b _08052276
_080522B8:
	adds r2, #0xc
	b _08052276
_080522BC:
	cmp r2, #0
	beq _080522EE
	str r6, [r0, #8]
	movs r2, #0
	strh r5, [r0, #2]
	mov r5, ip
	strh r5, [r0, #4]
	mov r1, r8
	strb r1, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _080522EE
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r5, [r4]
	cmp r0, r5
	blo _080522EE
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080522EE:
	ldrb r1, [r7, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080523AA
	movs r0, #2
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r6, r7, r1
	ldrb r0, [r6]
	ldr r2, [sp, #4]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _080523AA
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805231E
	rsbs r0, r0, #0
_0805231E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _080523AA
	cmp r5, r0
	bne _08052334
	ldrh r0, [r6, #8]
	cmp ip, r0
	bhs _080523AA
_08052334:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_08052338:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _0805235C
	cmp r0, r6
	bne _08052360
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08052360
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08052360
	cmp r0, r5
	bne _0805235C
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08052360
_0805235C:
	adds r0, r2, #0
	b _08052378
_08052360:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _08052370
	adds r3, r0, #0
	cmp r3, r1
	blt _08052374
_08052370:
	ldr r2, [r4, #8]
	b _08052338
_08052374:
	adds r2, #0xc
	b _08052338
_08052378:
	cmp r2, #0
	beq _080523AA
	str r6, [r0, #8]
	movs r2, #0
	strh r5, [r0, #2]
	mov r1, ip
	strh r1, [r0, #4]
	mov r5, r8
	strb r5, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _080523AA
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080523AA
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080523AA:
	ldrb r1, [r7, #3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080523B6
	b _080526B6
_080523B6:
	ldrb r1, [r7, #2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08052474
	mov r2, sb
	lsls r0, r2, #0x10
	movs r5, #7
	mov r8, r5
	adds r6, r7, #0
	adds r6, #0x20
	lsrs r0, r0, #0x10
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _08052474
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _080523E8
	rsbs r0, r0, #0
_080523E8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _08052474
	cmp r5, r0
	bne _080523FE
	ldrh r2, [r6, #8]
	cmp ip, r2
	bhs _08052474
_080523FE:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_08052402:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08052426
	cmp r0, r6
	bne _0805242A
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0805242A
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0805242A
	cmp r0, r5
	bne _08052426
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _0805242A
_08052426:
	adds r0, r2, #0
	b _08052442
_0805242A:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _0805243A
	adds r3, r0, #0
	cmp r3, r1
	blt _0805243E
_0805243A:
	ldr r2, [r4, #8]
	b _08052402
_0805243E:
	adds r2, #0xc
	b _08052402
_08052442:
	cmp r2, #0
	beq _08052474
	str r6, [r0, #8]
	movs r2, #0
	strh r5, [r0, #2]
	mov r5, ip
	strh r5, [r0, #4]
	mov r1, r8
	strb r1, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _08052474
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r5, [r4]
	cmp r0, r5
	blo _08052474
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08052474:
	ldrb r1, [r7, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08052532
	mov r1, sb
	lsls r0, r1, #0x10
	movs r2, #5
	mov r8, r2
	adds r6, r7, #0
	subs r6, #0x20
	lsrs r0, r0, #0x10
	ldrb r5, [r6]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _08052532
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _080524A6
	rsbs r0, r0, #0
_080524A6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _08052532
	cmp r5, r0
	bne _080524BC
	ldrh r0, [r6, #8]
	cmp ip, r0
	bhs _08052532
_080524BC:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_080524C0:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080524E4
	cmp r0, r6
	bne _080524E8
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _080524E8
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _080524E8
	cmp r0, r5
	bne _080524E4
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _080524E8
_080524E4:
	adds r0, r2, #0
	b _08052500
_080524E8:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _080524F8
	adds r3, r0, #0
	cmp r3, r1
	blt _080524FC
_080524F8:
	ldr r2, [r4, #8]
	b _080524C0
_080524FC:
	adds r2, #0xc
	b _080524C0
_08052500:
	cmp r2, #0
	beq _08052532
	str r6, [r0, #8]
	movs r2, #0
	strh r5, [r0, #2]
	mov r1, ip
	strh r1, [r0, #4]
	mov r5, r8
	strb r5, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _08052532
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08052532
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08052532:
	ldrb r1, [r7, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080525F6
	mov r2, sb
	lsls r0, r2, #0x10
	movs r5, #8
	mov r8, r5
	ldr r1, _080525A8 @ =0xFFFFFC00
	adds r6, r7, r1
	lsrs r0, r0, #0x10
	ldrb r2, [r6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _080525F6
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _08052564
	rsbs r0, r0, #0
_08052564:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _080525F6
	cmp r5, r0
	bne _0805257A
	ldrh r0, [r6, #8]
	cmp ip, r0
	bhs _080525F6
_0805257A:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_0805257E:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080525A2
	cmp r0, r6
	bne _080525AC
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _080525AC
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _080525AC
	cmp r0, r5
	bne _080525A2
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _080525AC
_080525A2:
	adds r0, r2, #0
	b _080525C4
	.align 2, 0
_080525A8: .4byte 0xFFFFFC00
_080525AC:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _080525BC
	adds r3, r0, #0
	cmp r3, r1
	blt _080525C0
_080525BC:
	ldr r2, [r4, #8]
	b _0805257E
_080525C0:
	adds r2, #0xc
	b _0805257E
_080525C4:
	cmp r2, #0
	beq _080525F6
	str r6, [r0, #8]
	movs r2, #0
	strh r5, [r0, #2]
	mov r1, ip
	strh r1, [r0, #4]
	mov r5, r8
	strb r5, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _080525F6
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080525F6
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080525F6:
	ldrb r1, [r7, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080526B6
	mov r2, sb
	lsls r0, r2, #0x10
	movs r5, #6
	mov r8, r5
	movs r1, #0x80
	lsls r1, r1, #3
	adds r6, r7, r1
	lsrs r0, r0, #0x10
	ldrb r2, [r6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _080526B6
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805262A
	rsbs r0, r0, #0
_0805262A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _080526B6
	cmp r5, r0
	bne _08052640
	ldrh r0, [r6, #8]
	cmp ip, r0
	bhs _080526B6
_08052640:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_08052644:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08052668
	cmp r0, r6
	bne _0805266C
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0805266C
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0805266C
	cmp r0, r5
	bne _08052668
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _0805266C
_08052668:
	adds r0, r2, #0
	b _08052684
_0805266C:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _0805267C
	adds r3, r0, #0
	cmp r3, r1
	blt _08052680
_0805267C:
	ldr r2, [r4, #8]
	b _08052644
_08052680:
	adds r2, #0xc
	b _08052644
_08052684:
	cmp r2, #0
	beq _080526B6
	str r6, [r0, #8]
	movs r2, #0
	strh r5, [r0, #2]
	mov r1, ip
	strh r1, [r0, #4]
	mov r5, r8
	strb r5, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _080526B6
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080526B6
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080526B6:
	ldrh r1, [r7, #0xc]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xa
	bne _080526C6
	bl _0805398A
_080526C6:
	ldr r2, [sp, #0xc]
	mov sb, r2
	ldr r2, [r7, #4]
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _080526D6
	bl _0805398A
_080526D6:
	ldr r5, [sp, #4]
	ldrh r0, [r7, #0xe]
	cmp r5, r0
	bls _080526E2
	bl _0805398A
_080526E2:
	adds r0, r3, #0
	ands r0, r1
	movs r1, #0x90
	orrs r0, r1
	strh r0, [r7, #0xc]
	mov r1, sl
	ands r2, r1
	mov r5, sb
	adds r5, #1
	str r5, [sp, #0x10]
	cmp r2, #0
	beq _080527B2
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	adds r6, #0x10
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08052712
	rsbs r1, r1, #0
_08052712:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _080527B2
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _080527B2
	cmp r0, r5
	bne _08052728
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _080527B2
_08052728:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0x10]
_0805273A:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0805275E
	cmp r0, r6
	bne _08052762
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08052762
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08052762
	cmp r0, r5
	bne _0805275E
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _08052762
_0805275E:
	adds r2, r3, #0
	b _0805277A
_08052762:
	ldrh r0, [r4]
	cmp r2, r0
	blt _0805276C
	ldr r3, [r4, #8]
	b _0805276E
_0805276C:
	adds r3, #0xc
_0805276E:
	movs r1, #0
	cmp r2, r0
	bge _08052776
	adds r1, r2, #1
_08052776:
	adds r2, r1, #0
	b _0805273A
_0805277A:
	cmp r3, #0
	beq _080527B2
	movs r3, #0
	mov r1, sl
	strh r1, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r5, #3
	strb r5, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _080527B2
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080527B2
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080527B2:
	ldr r0, [r7, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0805286E
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	subs r6, #0x10
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _080527D4
	rsbs r1, r1, #0
_080527D4:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0805286E
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0805286E
	cmp r0, r5
	bne _080527EA
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _0805286E
_080527EA:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_080527F6:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0805281A
	cmp r0, r6
	bne _0805281E
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0805281E
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0805281E
	cmp r0, r5
	bne _0805281A
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _0805281E
_0805281A:
	adds r2, r3, #0
	b _08052836
_0805281E:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08052828
	ldr r3, [r4, #8]
	b _0805282A
_08052828:
	adds r3, #0xc
_0805282A:
	movs r1, #0
	cmp r2, r0
	bge _08052832
	adds r1, r2, #1
_08052832:
	adds r2, r1, #0
	b _080527F6
_08052836:
	cmp r3, #0
	beq _0805286E
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r5, #1
	strb r5, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0805286E
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0805286E
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805286E:
	ldr r0, [r7, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08052930
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _080528DC @ =0xFFFFFE00
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08052890
	rsbs r1, r1, #0
_08052890:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08052930
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08052930
	cmp r0, r5
	bne _080528A6
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _08052930
_080528A6:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_080528B2:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080528D6
	cmp r0, r6
	bne _080528E0
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _080528E0
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _080528E0
	cmp r0, r5
	bne _080528D6
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _080528E0
_080528D6:
	adds r2, r3, #0
	b _080528F8
	.align 2, 0
_080528DC: .4byte 0xFFFFFE00
_080528E0:
	ldrh r0, [r4]
	cmp r2, r0
	blt _080528EA
	ldr r3, [r4, #8]
	b _080528EC
_080528EA:
	adds r3, #0xc
_080528EC:
	movs r1, #0
	cmp r2, r0
	bge _080528F4
	adds r1, r2, #1
_080528F4:
	adds r2, r1, #0
	b _080528B2
_080528F8:
	cmp r3, #0
	beq _08052930
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r5, #4
	strb r5, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _08052930
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08052930
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08052930:
	ldr r0, [r7, #4]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080529F2
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	movs r0, #2
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r6, r7, r1
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08052958
	rsbs r1, r1, #0
_08052958:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _080529F2
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _080529F2
	cmp r0, r5
	bne _0805296E
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _080529F2
_0805296E:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_0805297A:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0805299E
	cmp r0, r6
	bne _080529A2
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _080529A2
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _080529A2
	cmp r0, r5
	bne _0805299E
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _080529A2
_0805299E:
	adds r2, r3, #0
	b _080529BA
_080529A2:
	ldrh r0, [r4]
	cmp r2, r0
	blt _080529AC
	ldr r3, [r4, #8]
	b _080529AE
_080529AC:
	adds r3, #0xc
_080529AE:
	movs r1, #0
	cmp r2, r0
	bge _080529B6
	adds r1, r2, #1
_080529B6:
	adds r2, r1, #0
	b _0805297A
_080529BA:
	cmp r3, #0
	beq _080529F2
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	mov r5, sb
	strb r5, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _080529F2
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080529F2
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080529F2:
	ldr r2, [sp, #0x10]
	mov sb, r2
	ldr r0, [r7, #4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08052AB0
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	adds r6, #0x20
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08052A16
	rsbs r1, r1, #0
_08052A16:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08052AB0
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08052AB0
	cmp r0, r5
	bne _08052A2C
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _08052AB0
_08052A2C:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_08052A38:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08052A5C
	cmp r0, r6
	bne _08052A60
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08052A60
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08052A60
	cmp r0, r5
	bne _08052A5C
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _08052A60
_08052A5C:
	adds r2, r3, #0
	b _08052A78
_08052A60:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08052A6A
	ldr r3, [r4, #8]
	b _08052A6C
_08052A6A:
	adds r3, #0xc
_08052A6C:
	movs r1, #0
	cmp r2, r0
	bge _08052A74
	adds r1, r2, #1
_08052A74:
	adds r2, r1, #0
	b _08052A38
_08052A78:
	cmp r3, #0
	beq _08052AB0
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r5, #7
	strb r5, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _08052AB0
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08052AB0
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08052AB0:
	ldr r0, [r7, #4]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08052B6C
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	subs r6, #0x20
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08052AD2
	rsbs r1, r1, #0
_08052AD2:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08052B6C
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08052B6C
	cmp r0, r5
	bne _08052AE8
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _08052B6C
_08052AE8:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_08052AF4:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08052B18
	cmp r0, r6
	bne _08052B1C
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08052B1C
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08052B1C
	cmp r0, r5
	bne _08052B18
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _08052B1C
_08052B18:
	adds r2, r3, #0
	b _08052B34
_08052B1C:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08052B26
	ldr r3, [r4, #8]
	b _08052B28
_08052B26:
	adds r3, #0xc
_08052B28:
	movs r1, #0
	cmp r2, r0
	bge _08052B30
	adds r1, r2, #1
_08052B30:
	adds r2, r1, #0
	b _08052AF4
_08052B34:
	cmp r3, #0
	beq _08052B6C
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r5, #5
	strb r5, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _08052B6C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08052B6C
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08052B6C:
	ldr r0, [r7, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08052C2C
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08052BD8 @ =0xFFFFFC00
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08052B8E
	rsbs r1, r1, #0
_08052B8E:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08052C2C
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08052C2C
	cmp r0, r5
	bne _08052BA4
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _08052C2C
_08052BA4:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_08052BB0:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08052BD4
	cmp r0, r6
	bne _08052BDC
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08052BDC
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08052BDC
	cmp r0, r5
	bne _08052BD4
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _08052BDC
_08052BD4:
	adds r2, r3, #0
	b _08052BF4
	.align 2, 0
_08052BD8: .4byte 0xFFFFFC00
_08052BDC:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08052BE6
	ldr r3, [r4, #8]
	b _08052BE8
_08052BE6:
	adds r3, #0xc
_08052BE8:
	movs r1, #0
	cmp r2, r0
	bge _08052BF0
	adds r1, r2, #1
_08052BF0:
	adds r2, r1, #0
	b _08052BB0
_08052BF4:
	cmp r3, #0
	beq _08052C2C
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r5, #8
	strb r5, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _08052C2C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08052C2C
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08052C2C:
	ldr r0, [r7, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08052C3A
	bl _0805398A
_08052C3A:
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	movs r0, #6
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r6, r7, r1
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08052C58
	rsbs r1, r1, #0
_08052C58:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bhi _08052C62
	bl _0805398A
_08052C62:
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	bhs _08052C6C
	bl _0805398A
_08052C6C:
	cmp r0, r5
	bne _08052C7A
	ldrh r2, [r6, #8]
	cmp r1, r2
	blt _08052C7A
	bl _0805398A
_08052C7A:
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_08052C84:
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _08052C8E
	bl _08053936
_08052C8E:
	cmp r0, r6
	bne _08052CB4
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08052CB4
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08052CB4
	cmp r0, r5
	beq _08052CAA
	bl _08053936
_08052CAA:
	ldrh r0, [r3, #4]
	cmp r0, r7
	bls _08052CB4
	bl _08053936
_08052CB4:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08052CBE
	ldr r3, [r4, #8]
	b _08052CC0
_08052CBE:
	adds r3, #0xc
_08052CC0:
	movs r1, #0
	cmp r2, r0
	bge _08052CC8
	adds r1, r2, #1
_08052CC8:
	adds r2, r1, #0
	b _08052C84

	thumb_func_start sub_08052CCC
sub_08052CCC: @ 0x08052CCC
	ldrh r0, [r7, #0xe]
	mov r2, r8
	adds r2, #1
	str r2, [sp, #8]
	ldr r1, [sp, #4]
	cmp r0, r1
	bhi _08052CDE
	bl _0805398A
_08052CDE:
	ldrh r1, [r7, #0xc]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x90
	bne _08052CEC
	bl _0805398A
_08052CEC:
	mov r2, sp
	ldrh r2, [r2, #4]
	strh r2, [r7, #0xe]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	lsls r1, r5, #4
	orrs r0, r1
	strh r0, [r7, #0xc]
	ldr r1, [r7, #4]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08052D0C
	b _0805336A
_08052D0C:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	ldr r5, [sp, #4]
	adds r5, #1
	str r5, [sp, #0xc]
	cmp r1, #0
	beq _08052DE2
	adds r5, r7, #0
	adds r5, #0x10
	ldrb r0, [r7, #0x10]
	ldr r1, [sp, #4]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _08052DE2
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08052D3E
	rsbs r0, r0, #0
_08052D3E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _08052DE2
	cmp r6, r0
	bne _08052D54
	ldrh r0, [r5, #8]
	cmp ip, r0
	bhs _08052DE2
_08052D54:
	ldrh r0, [r5, #0xc]
	adds r1, r2, #0
	ands r1, r0
	movs r0, #0x30
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	ldr r1, [sp, #4]
	adds r1, #1
	str r1, [sp, #0xc]
	mov r0, r8
	adds r0, #1
	str r0, [sp, #8]
_08052D70:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08052D94
	cmp r0, r5
	bne _08052D98
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08052D98
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _08052D98
	cmp r0, r6
	bne _08052D94
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08052D98
_08052D94:
	adds r0, r2, #0
	b _08052DB0
_08052D98:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _08052DA8
	adds r3, r0, #0
	cmp r3, r1
	blt _08052DAC
_08052DA8:
	ldr r2, [r4, #8]
	b _08052D70
_08052DAC:
	adds r2, #0xc
	b _08052D70
_08052DB0:
	cmp r2, #0
	beq _08052DE2
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r1, ip
	strh r1, [r0, #4]
	movs r5, #0xa
	strb r5, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _08052DE2
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08052DE2
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08052DE2:
	ldr r0, [r7, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	cmp r0, #0
	beq _08052EA8
	adds r5, r7, #0
	subs r5, #0x10
	ldrb r0, [r5]
	ldr r1, [sp, #4]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _08052EA8
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08052E10
	rsbs r0, r0, #0
_08052E10:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _08052EA8
	cmp r6, r0
	bne _08052E26
	ldrh r2, [r5, #8]
	cmp ip, r2
	bhs _08052EA8
_08052E26:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_08052E36:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08052E5A
	cmp r0, r5
	bne _08052E5E
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08052E5E
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _08052E5E
	cmp r0, r6
	bne _08052E5A
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08052E5E
_08052E5A:
	adds r0, r2, #0
	b _08052E76
_08052E5E:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _08052E6E
	adds r3, r0, #0
	cmp r3, r1
	blt _08052E72
_08052E6E:
	ldr r2, [r4, #8]
	b _08052E36
_08052E72:
	adds r2, #0xc
	b _08052E36
_08052E76:
	cmp r2, #0
	beq _08052EA8
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r5, ip
	strh r5, [r0, #4]
	movs r1, #0xa
	strb r1, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _08052EA8
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r5, [r4]
	cmp r0, r5
	blo _08052EA8
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08052EA8:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08052F72
	ldr r0, _08052F24 @ =0xFFFFFE00
	adds r5, r7, r0
	ldrb r0, [r5]
	ldr r1, [sp, #4]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _08052F72
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08052ED6
	rsbs r0, r0, #0
_08052ED6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _08052F72
	cmp r6, r0
	bne _08052EEC
	ldrh r2, [r5, #8]
	cmp ip, r2
	bhs _08052F72
_08052EEC:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_08052EFC:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08052F20
	cmp r0, r5
	bne _08052F28
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08052F28
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _08052F28
	cmp r0, r6
	bne _08052F20
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08052F28
_08052F20:
	adds r0, r2, #0
	b _08052F40
	.align 2, 0
_08052F24: .4byte 0xFFFFFE00
_08052F28:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _08052F38
	adds r3, r0, #0
	cmp r3, r1
	blt _08052F3C
_08052F38:
	ldr r2, [r4, #8]
	b _08052EFC
_08052F3C:
	adds r2, #0xc
	b _08052EFC
_08052F40:
	cmp r2, #0
	beq _08052F72
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r5, ip
	strh r5, [r0, #4]
	movs r1, #0xa
	strb r1, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _08052F72
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r5, [r4]
	cmp r0, r5
	blo _08052F72
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08052F72:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0805303A
	movs r2, #0x20
	movs r0, #0x80
	lsls r0, r0, #2
	adds r5, r7, r0
	ldrb r0, [r5]
	ldr r1, [sp, #4]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _0805303A
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08052FA4
	rsbs r0, r0, #0
_08052FA4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _0805303A
	cmp r6, r0
	bne _08052FBA
	ldrh r0, [r5, #8]
	cmp ip, r0
	bhs _0805303A
_08052FBA:
	ldrh r1, [r5, #0xc]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_08052FC8:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08052FEC
	cmp r0, r5
	bne _08052FF0
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08052FF0
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _08052FF0
	cmp r0, r6
	bne _08052FEC
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08052FF0
_08052FEC:
	adds r0, r2, #0
	b _08053008
_08052FF0:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _08053000
	adds r3, r0, #0
	cmp r3, r1
	blt _08053004
_08053000:
	ldr r2, [r4, #8]
	b _08052FC8
_08053004:
	adds r2, #0xc
	b _08052FC8
_08053008:
	cmp r2, #0
	beq _0805303A
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r1, ip
	strh r1, [r0, #4]
	movs r5, #0xa
	strb r5, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _0805303A
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0805303A
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805303A:
	ldr r2, [sp, #0xc]
	mov sb, r2
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08053106
	lsls r0, r2, #0x10
	adds r5, r7, #0
	adds r5, #0x20
	lsrs r0, r0, #0x10
	ldrb r1, [r5]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _08053106
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _0805306E
	rsbs r0, r0, #0
_0805306E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _08053106
	cmp r6, r0
	bne _08053084
	ldrh r2, [r5, #8]
	cmp ip, r2
	bhs _08053106
_08053084:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x70
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_08053094:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080530B8
	cmp r0, r5
	bne _080530BC
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _080530BC
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _080530BC
	cmp r0, r6
	bne _080530B8
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _080530BC
_080530B8:
	adds r0, r2, #0
	b _080530D4
_080530BC:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _080530CC
	adds r3, r0, #0
	cmp r3, r1
	blt _080530D0
_080530CC:
	ldr r2, [r4, #8]
	b _08053094
_080530D0:
	adds r2, #0xc
	b _08053094
_080530D4:
	cmp r2, #0
	beq _08053106
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r5, ip
	strh r5, [r0, #4]
	movs r1, #0xa
	strb r1, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _08053106
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r5, [r4]
	cmp r0, r5
	blo _08053106
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08053106:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080531D0
	mov r1, sb
	lsls r0, r1, #0x10
	adds r5, r7, #0
	subs r5, #0x20
	lsrs r0, r0, #0x10
	ldrb r2, [r5]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _080531D0
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08053138
	rsbs r0, r0, #0
_08053138:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _080531D0
	cmp r6, r0
	bne _0805314E
	ldrh r0, [r5, #8]
	cmp ip, r0
	bhs _080531D0
_0805314E:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x50
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_0805315E:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08053182
	cmp r0, r5
	bne _08053186
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08053186
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _08053186
	cmp r0, r6
	bne _08053182
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08053186
_08053182:
	adds r0, r2, #0
	b _0805319E
_08053186:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _08053196
	adds r3, r0, #0
	cmp r3, r1
	blt _0805319A
_08053196:
	ldr r2, [r4, #8]
	b _0805315E
_0805319A:
	adds r2, #0xc
	b _0805315E
_0805319E:
	cmp r2, #0
	beq _080531D0
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r1, ip
	strh r1, [r0, #4]
	movs r5, #0xa
	strb r5, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _080531D0
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080531D0
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080531D0:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0805329E
	mov r2, sb
	lsls r0, r2, #0x10
	ldr r1, _08053250 @ =0xFFFFFC00
	adds r5, r7, r1
	lsrs r0, r0, #0x10
	ldrb r2, [r5]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _0805329E
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08053202
	rsbs r0, r0, #0
_08053202:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _0805329E
	cmp r6, r0
	bne _08053218
	ldrh r0, [r5, #8]
	cmp ip, r0
	bhs _0805329E
_08053218:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x80
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_08053228:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _0805324C
	cmp r0, r5
	bne _08053254
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08053254
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _08053254
	cmp r0, r6
	bne _0805324C
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08053254
_0805324C:
	adds r0, r2, #0
	b _0805326C
	.align 2, 0
_08053250: .4byte 0xFFFFFC00
_08053254:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _08053264
	adds r3, r0, #0
	cmp r3, r1
	blt _08053268
_08053264:
	ldr r2, [r4, #8]
	b _08053228
_08053268:
	adds r2, #0xc
	b _08053228
_0805326C:
	cmp r2, #0
	beq _0805329E
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r1, ip
	strh r1, [r0, #4]
	movs r5, #0xa
	strb r5, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _0805329E
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0805329E
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805329E:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0805336A
	mov r2, sb
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #3
	adds r5, r7, r1
	lsrs r0, r0, #0x10
	ldrb r2, [r5]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _0805336A
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _080532D2
	rsbs r0, r0, #0
_080532D2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _0805336A
	cmp r6, r0
	bne _080532E8
	ldrh r0, [r5, #8]
	cmp ip, r0
	bhs _0805336A
_080532E8:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x60
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_080532F8:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _0805331C
	cmp r0, r5
	bne _08053320
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08053320
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _08053320
	cmp r0, r6
	bne _0805331C
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08053320
_0805331C:
	adds r0, r2, #0
	b _08053338
_08053320:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _08053330
	adds r3, r0, #0
	cmp r3, r1
	blt _08053334
_08053330:
	ldr r2, [r4, #8]
	b _080532F8
_08053334:
	adds r2, #0xc
	b _080532F8
_08053338:
	cmp r2, #0
	beq _0805336A
	str r5, [r0, #8]
	movs r2, #0
	strh r6, [r0, #2]
	mov r1, ip
	strh r1, [r0, #4]
	movs r5, #0xa
	strb r5, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _0805336A
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0805336A
	strh r2, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805336A:
	ldr r1, [r7, #4]
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08053378
	b _0805398A
_08053378:
	ldr r2, [sp, #4]
	adds r2, #1
	mov sb, r2
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _08053438
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	adds r6, #0x10
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0805339E
	rsbs r1, r1, #0
_0805339E:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08053438
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08053438
	cmp r0, r5
	bne _080533B4
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _08053438
_080533B4:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_080533C0:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080533E4
	cmp r0, r6
	bne _080533E8
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _080533E8
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _080533E8
	cmp r0, r5
	bne _080533E4
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _080533E8
_080533E4:
	adds r2, r3, #0
	b _08053400
_080533E8:
	ldrh r0, [r4]
	cmp r2, r0
	blt _080533F2
	ldr r3, [r4, #8]
	b _080533F4
_080533F2:
	adds r3, #0xc
_080533F4:
	movs r1, #0
	cmp r2, r0
	bge _080533FC
	adds r1, r2, #1
_080533FC:
	adds r2, r1, #0
	b _080533C0
_08053400:
	cmp r3, #0
	beq _08053438
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r5, #3
	strb r5, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _08053438
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08053438
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08053438:
	ldr r1, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r1, r0
	mov r2, sb
	adds r2, #1
	str r2, [sp, #0x10]
	cmp r1, #0
	beq _08053502
	mov r5, sb
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	subs r6, #0x10
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08053462
	rsbs r1, r1, #0
_08053462:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08053502
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08053502
	cmp r0, r5
	bne _08053478
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _08053502
_08053478:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r1, sb
	adds r1, #1
	str r1, [sp, #0x10]
	mov r8, r0
_0805348A:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080534AE
	cmp r0, r6
	bne _080534B2
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _080534B2
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _080534B2
	cmp r0, r5
	bne _080534AE
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _080534B2
_080534AE:
	adds r2, r3, #0
	b _080534CA
_080534B2:
	ldrh r0, [r4]
	cmp r2, r0
	blt _080534BC
	ldr r3, [r4, #8]
	b _080534BE
_080534BC:
	adds r3, #0xc
_080534BE:
	movs r1, #0
	cmp r2, r0
	bge _080534C6
	adds r1, r2, #1
_080534C6:
	adds r2, r1, #0
	b _0805348A
_080534CA:
	cmp r3, #0
	beq _08053502
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r5, #1
	strb r5, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _08053502
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08053502
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08053502:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _080535C4
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08053570 @ =0xFFFFFE00
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08053526
	rsbs r1, r1, #0
_08053526:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _080535C4
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _080535C4
	cmp r0, r5
	bne _0805353C
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _080535C4
_0805353C:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_08053548:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0805356C
	cmp r0, r6
	bne _08053574
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08053574
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08053574
	cmp r0, r5
	bne _0805356C
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _08053574
_0805356C:
	adds r2, r3, #0
	b _0805358C
	.align 2, 0
_08053570: .4byte 0xFFFFFE00
_08053574:
	ldrh r0, [r4]
	cmp r2, r0
	blt _0805357E
	ldr r3, [r4, #8]
	b _08053580
_0805357E:
	adds r3, #0xc
_08053580:
	movs r1, #0
	cmp r2, r0
	bge _08053588
	adds r1, r2, #1
_08053588:
	adds r2, r1, #0
	b _08053548
_0805358C:
	cmp r3, #0
	beq _080535C4
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r5, #4
	strb r5, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _080535C4
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080535C4
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080535C4:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08053688
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	movs r0, #2
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r6, r7, r1
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _080535EE
	rsbs r1, r1, #0
_080535EE:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08053688
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08053688
	cmp r0, r5
	bne _08053604
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _08053688
_08053604:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_08053610:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08053634
	cmp r0, r6
	bne _08053638
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08053638
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08053638
	cmp r0, r5
	bne _08053634
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _08053638
_08053634:
	adds r2, r3, #0
	b _08053650
_08053638:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08053642
	ldr r3, [r4, #8]
	b _08053644
_08053642:
	adds r3, #0xc
_08053644:
	movs r1, #0
	cmp r2, r0
	bge _0805364C
	adds r1, r2, #1
_0805364C:
	adds r2, r1, #0
	b _08053610
_08053650:
	cmp r3, #0
	beq _08053688
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	mov r5, sb
	strb r5, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _08053688
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08053688
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08053688:
	ldr r2, [sp, #0x10]
	mov sb, r2
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xd
	ands r0, r1
	cmp r0, #0
	beq _08053748
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	adds r6, #0x20
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _080536AE
	rsbs r1, r1, #0
_080536AE:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08053748
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08053748
	cmp r0, r5
	bne _080536C4
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _08053748
_080536C4:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_080536D0:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080536F4
	cmp r0, r6
	bne _080536F8
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _080536F8
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _080536F8
	cmp r0, r5
	bne _080536F4
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _080536F8
_080536F4:
	adds r2, r3, #0
	b _08053710
_080536F8:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08053702
	ldr r3, [r4, #8]
	b _08053704
_08053702:
	adds r3, #0xc
_08053704:
	movs r1, #0
	cmp r2, r0
	bge _0805370C
	adds r1, r2, #1
_0805370C:
	adds r2, r1, #0
	b _080536D0
_08053710:
	cmp r3, #0
	beq _08053748
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r5, #7
	strb r5, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _08053748
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08053748
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08053748:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08053806
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	subs r6, #0x20
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0805376C
	rsbs r1, r1, #0
_0805376C:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08053806
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08053806
	cmp r0, r5
	bne _08053782
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _08053806
_08053782:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_0805378E:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080537B2
	cmp r0, r6
	bne _080537B6
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _080537B6
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _080537B6
	cmp r0, r5
	bne _080537B2
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _080537B6
_080537B2:
	adds r2, r3, #0
	b _080537CE
_080537B6:
	ldrh r0, [r4]
	cmp r2, r0
	blt _080537C0
	ldr r3, [r4, #8]
	b _080537C2
_080537C0:
	adds r3, #0xc
_080537C2:
	movs r1, #0
	cmp r2, r0
	bge _080537CA
	adds r1, r2, #1
_080537CA:
	adds r2, r1, #0
	b _0805378E
_080537CE:
	cmp r3, #0
	beq _08053806
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r5, #5
	strb r5, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _08053806
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08053806
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08053806:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _080538C8
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08053874 @ =0xFFFFFC00
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0805382A
	rsbs r1, r1, #0
_0805382A:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _080538C8
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _080538C8
	cmp r0, r5
	bne _08053840
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _080538C8
_08053840:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_0805384C:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08053870
	cmp r0, r6
	bne _08053878
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08053878
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08053878
	cmp r0, r5
	bne _08053870
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _08053878
_08053870:
	adds r2, r3, #0
	b _08053890
	.align 2, 0
_08053874: .4byte 0xFFFFFC00
_08053878:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08053882
	ldr r3, [r4, #8]
	b _08053884
_08053882:
	adds r3, #0xc
_08053884:
	movs r1, #0
	cmp r2, r0
	bge _0805388C
	adds r1, r2, #1
_0805388C:
	adds r2, r1, #0
	b _0805384C
_08053890:
	cmp r3, #0
	beq _080538C8
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	movs r5, #8
	strb r5, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _080538C8
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080538C8
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080538C8:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805398A
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	movs r0, #6
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r6, r7, r1
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _080538F2
	rsbs r1, r1, #0
_080538F2:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0805398A
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0805398A
	cmp r0, r5
	bne _08053908
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _0805398A
_08053908:
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	mov r8, r0
_08053912:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08053936
	cmp r0, r6
	bne _0805393A
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0805393A
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0805393A
	cmp r0, r5
	bne _08053936
	ldrh r0, [r3, #4]
	cmp r0, r7
	bls _0805393A
_08053936:
	adds r2, r3, #0
	b _08053952
_0805393A:
	ldrh r0, [r4]
	cmp r2, r0
	blt _08053944
	ldr r3, [r4, #8]
	b _08053946
_08053944:
	adds r3, #0xc
_08053946:
	movs r1, #0
	cmp r2, r0
	bge _0805394E
	adds r1, r2, #1
_0805394E:
	adds r2, r1, #0
	b _08053912
_08053952:
	cmp r3, #0
	beq _0805398A
	movs r3, #0
	mov r0, sl
	strh r0, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r2, #8]
	strh r5, [r2, #2]
	strh r0, [r2, #4]
	mov r5, sb
	strb r5, [r2, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r2
	bne _0805398A
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0805398A
	strh r3, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805398A:
	ldr r0, [r4, #0x10]
	movs r2, #0
	str r2, [r0, #8]
	strh r2, [r0]
	ldrh r1, [r4, #4]
	adds r1, #1
	strh r1, [r4, #4]
	ldr r0, [r4, #0x10]
	adds r0, #0xc
	str r0, [r4, #0x10]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r5, [r4]
	cmp r1, r5
	blo _080539AE
	strh r2, [r4, #4]
	ldr r0, [r4, #8]
	str r0, [r4, #0x10]
_080539AE:
	ldr r0, [sp, #8]
	mov r8, r0
	ldr r1, [sp]
	cmp r8, r1
	bge _080539BC
	bl _08052044
_080539BC:
	movs r0, #1
_080539BE:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080539D0
sub_080539D0: @ 0x080539D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	subs r2, r2, r0
	subs r3, r3, r1
	movs r1, #2
	cmp r2, #0
	ble _080539EC
	movs r1, #0xa
_080539EC:
	cmp r2, #0
	bge _080539F4
	movs r0, #0x10
	orrs r1, r0
_080539F4:
	cmp r3, #0
	ble _08053A00
	movs r0, #0x40
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
_08053A00:
	cmp r3, #0
	bge _08053A0C
	movs r0, #0x20
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
_08053A0C:
	adds r0, r1, #0
	bx lr

	thumb_func_start sub_08053A10
sub_08053A10: @ 0x08053A10
	adds r2, r2, r0
	lsls r1, r1, #5
	adds r2, r2, r1
	ldrb r0, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08053A1C
sub_08053A1C: @ 0x08053A1C
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp]
	movs r4, #0xff
	str r4, [sp, #4]
	bl sub_0804ED30
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08053A40
sub_08053A40: @ 0x08053A40
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, r2, #0
	adds r1, r3, #0
	ldr r7, [sp, #0x1c]
	ldr r4, [sp, #0x24]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08139920
	movs r1, #0xa
	bl __udivsi3
	str r4, [sp]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	ldr r3, [sp, #0x20]
	bl sub_0804ED30
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08053A84
sub_08053A84: @ 0x08053A84
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, r2, #0
	adds r1, r3, #0
	ldr r7, [sp, #0x1c]
	ldr r4, [sp, #0x24]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08139920
	movs r1, #0xa
	bl __udivsi3
	str r4, [sp]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	ldr r3, [sp, #0x20]
	bl sub_080513A0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08053AC8
sub_08053AC8: @ 0x08053AC8
	push {lr}
	ldr r0, _08053AD8 @ =gUnk_0202A1D8
	movs r1, #0x18
	bl memzero
	pop {r0}
	bx r0
	.align 2, 0
_08053AD8: .4byte gUnk_0202A1D8

	thumb_func_start sub_08053ADC
sub_08053ADC: @ 0x08053ADC
	push {r4, r5, lr}
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	ldr r4, _08053B00 @ =gUnk_0860EEB0
	adds r3, r0, r4
	ldrb r3, [r3]
	ldrb r5, [r1]
	adds r3, r3, r5
	strb r3, [r1]
	adds r0, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053B00: .4byte gUnk_0860EEB0

	thumb_func_start sub_08053B04
sub_08053B04: @ 0x08053B04
	push {r4, lr}
	ldr r4, _08053B30 @ =gUnk_0202A1D0
	ldr r2, [r4]
	ldr r1, [r2, #4]
	adds r1, #1
	str r1, [r2, #4]
	ldr r0, [r2, #0x18]
	adds r0, #8
	str r0, [r2, #0x18]
	ldr r3, [r2, #0x14]
	ldrh r0, [r3, #6]
	cmp r1, r0
	blt _08053B26
	movs r0, #0
	str r0, [r2, #4]
	ldr r0, [r3, #0xc]
	str r0, [r2, #0x18]
_08053B26:
	ldr r0, [r4]
	ldr r0, [r0, #4]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08053B30: .4byte gUnk_0202A1D0

	thumb_func_start sub_08053B34
sub_08053B34: @ 0x08053B34
	push {r4, r5, lr}
	ldr r2, _08053B58 @ =gUnk_0202A1D0
	ldr r1, [r2]
	ldr r0, [r1, #8]
	adds r3, r0, #1
	str r3, [r1, #8]
	ldr r0, [r1, #0x1c]
	adds r0, #8
	str r0, [r1, #0x1c]
	ldr r0, [r1, #0x14]
	ldrh r0, [r0, #6]
	lsrs r4, r0, #1
	ldr r1, [r1, #4]
	adds r5, r2, #0
	cmp r3, r1
	bge _08053B5C
	subs r0, r1, r3
	b _08053B64
	.align 2, 0
_08053B58: .4byte gUnk_0202A1D0
_08053B5C:
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r0, r1
_08053B64:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bhs _08053B78
	ldr r0, [r5]
	adds r0, #0x20
	ldrb r2, [r0]
	movs r1, #6
	ands r1, r2
	strb r1, [r0]
_08053B78:
	ldr r1, [r5]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #8]
	ldrh r3, [r2, #6]
	cmp r0, r3
	blt _08053B8C
	movs r0, #0
	str r0, [r1, #8]
	ldr r0, [r2, #0xc]
	str r0, [r1, #0x1c]
_08053B8C:
	ldr r0, [r5]
	ldr r0, [r0, #8]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08053B98
sub_08053B98: @ 0x08053B98
	ldr r0, _08053BA0 @ =gUnk_0202A1D0
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	bx lr
	.align 2, 0
_08053BA0: .4byte gUnk_0202A1D0

	thumb_func_start sub_08053BA4
sub_08053BA4: @ 0x08053BA4
	ldr r0, _08053BAC @ =gUnk_0202A1D0
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	bx lr
	.align 2, 0
_08053BAC: .4byte gUnk_0202A1D0

	thumb_func_start sub_08053BB0
sub_08053BB0: @ 0x08053BB0
	ldr r0, _08053BC4 @ =gUnk_0202A1D0
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	ldrb r1, [r0, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08053BC8
	movs r0, #0
	b _08053BCA
	.align 2, 0
_08053BC4: .4byte gUnk_0202A1D0
_08053BC8:
	movs r0, #1
_08053BCA:
	bx lr

	thumb_func_start sub_08053BCC
sub_08053BCC: @ 0x08053BCC
	push {r4, r5, lr}
	ldr r4, [sp, #0xc]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsrs r2, r2, #0x13
	adds r1, r1, r2
	adds r3, r3, r1
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _08053BF6
	ldrb r0, [r3]
	movs r1, #0xf
	ands r1, r0
	lsls r0, r5, #4
	b _08053C00
_08053BF6:
	ldrb r0, [r3]
	movs r1, #0xf0
	ands r1, r0
	movs r0, #0xf
	ands r0, r5
_08053C00:
	orrs r1, r0
	strb r1, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08053C0C
sub_08053C0C: @ 0x08053C0C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsrs r1, r1, #0x13
	adds r0, r0, r1
	adds r2, r2, r0
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _08053C2A
	ldrb r0, [r2]
	lsrs r2, r0, #4
	b _08053C30
_08053C2A:
	ldrb r0, [r2]
	movs r2, #0xf
	ands r2, r0
_08053C30:
	adds r0, r2, #0
	bx lr

	thumb_func_start sub_08053C34
sub_08053C34: @ 0x08053C34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	ldr r5, [sp, #0x50]
	ldr r0, [sp, #0x5c]
	ldr r4, [sp, #0x60]
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x1c]
	mov r1, sl
	ldrb r0, [r1, #2]
	movs r1, #1
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r1, r0, #0x1f
	movs r0, #0x80
	ands r1, r0
	cmp r4, #1
	bne _08053C7E
	movs r0, #0x40
	orrs r1, r0
_08053C7E:
	mov r3, sl
	ldrb r2, [r3, #6]
	movs r0, #0xc0
	ands r0, r2
	cmp r1, r0
	beq _08053C8C
	b _08053E08
_08053C8C:
	movs r0, #0x3f
	ands r0, r2
	subs r0, #1
	cmp r0, #7
	bls _08053C98
	b _08053E08
_08053C98:
	lsls r0, r0, #2
	ldr r1, _08053CA4 @ =_08053CA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08053CA4: .4byte _08053CA8
_08053CA8: @ jump table
	.4byte _08053CC8 @ case 0
	.4byte _08053D6C @ case 1
	.4byte _08053D1C @ case 2
	.4byte _08053DBC @ case 3
	.4byte _08053CC8 @ case 4
	.4byte _08053D6C @ case 5
	.4byte _08053D1C @ case 6
	.4byte _08053DBC @ case 7
_08053CC8:
	cmp r7, #3
	bne _08053CCE
	b _08054220
_08053CCE:
	cmp r7, #7
	bne _08053CD4
	b _08054220
_08053CD4:
	ldr r0, _08053D18 @ =gUnk_0202A1D0
	ldr r1, [r0]
	adds r1, #0x20
	ldrb r2, [r1]
	movs r1, #0x10
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	beq _08053CE8
	b _08053E08
_08053CE8:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08053CFC
	cmp r7, #2
	bne _08053CF6
	b _08054220
_08053CF6:
	cmp r7, #6
	bne _08053CFC
	b _08054220
_08053CFC:
	ldr r0, [r3]
	adds r0, #0x20
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08053D0C
	b _08053E08
_08053D0C:
	cmp r7, #4
	bne _08053D12
	b _08054220
_08053D12:
	cmp r7, #8
	bne _08053E08
	b _08054220
	.align 2, 0
_08053D18: .4byte gUnk_0202A1D0
_08053D1C:
	cmp r7, #1
	bne _08053D22
	b _08054220
_08053D22:
	cmp r7, #5
	bne _08053D28
	b _08054220
_08053D28:
	ldr r0, _08053D68 @ =gUnk_0202A1D0
	ldr r1, [r0]
	adds r1, #0x20
	ldrb r2, [r1]
	movs r1, #8
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	bne _08053E08
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08053D4E
	cmp r7, #4
	bne _08053D48
	b _08054220
_08053D48:
	cmp r7, #8
	bne _08053D4E
	b _08054220
_08053D4E:
	ldr r0, [r3]
	adds r0, #0x20
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08053E08
	cmp r7, #2
	bne _08053D62
	b _08054220
_08053D62:
	cmp r7, #6
	bne _08053E08
	b _08054220
	.align 2, 0
_08053D68: .4byte gUnk_0202A1D0
_08053D6C:
	cmp r7, #4
	bne _08053D72
	b _08054220
_08053D72:
	cmp r7, #8
	bne _08053D78
	b _08054220
_08053D78:
	ldr r0, _08053DB8 @ =gUnk_0202A1D0
	ldr r1, [r0]
	adds r1, #0x20
	ldrb r2, [r1]
	movs r1, #0x40
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	bne _08053E08
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08053D9E
	cmp r7, #3
	bne _08053D98
	b _08054220
_08053D98:
	cmp r7, #7
	bne _08053D9E
	b _08054220
_08053D9E:
	ldr r0, [r3]
	adds r0, #0x20
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08053E08
	cmp r7, #1
	bne _08053DB2
	b _08054220
_08053DB2:
	cmp r7, #5
	bne _08053E08
	b _08054220
	.align 2, 0
_08053DB8: .4byte gUnk_0202A1D0
_08053DBC:
	cmp r7, #2
	bne _08053DC2
	b _08054220
_08053DC2:
	cmp r7, #6
	bne _08053DC8
	b _08054220
_08053DC8:
	ldr r0, _08053F24 @ =gUnk_0202A1D0
	ldr r1, [r0]
	adds r1, #0x20
	ldrb r2, [r1]
	movs r1, #0x20
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	bne _08053E08
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08053DEE
	cmp r7, #1
	bne _08053DE8
	b _08054220
_08053DE8:
	cmp r7, #5
	bne _08053DEE
	b _08054220
_08053DEE:
	ldr r0, [r3]
	adds r0, #0x20
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08053E08
	cmp r7, #3
	bne _08053E02
	b _08054220
_08053E02:
	cmp r7, #7
	bne _08053E08
	b _08054220
_08053E08:
	ldr r4, [sp, #0x10]
	lsls r0, r4, #0x18
	asrs r1, r0, #0x18
	mov sb, r1
	str r0, [sp, #0x28]
	cmp r1, #0
	bge _08053E18
	b _08054220
_08053E18:
	ldr r2, [sp, #0x14]
	lsls r0, r2, #0x18
	asrs r6, r0, #0x18
	str r0, [sp, #0x2c]
	cmp r6, #0
	bge _08053E26
	b _08054220
_08053E26:
	cmp r1, #0x1f
	ble _08053E2C
	b _08054220
_08053E2C:
	cmp r6, #0x1f
	ble _08053E32
	b _08054220
_08053E32:
	str r7, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	cmp r3, #1
	bne _08053E42
	movs r0, #0x80
	adds r4, r7, #0
	orrs r4, r0
	str r4, [sp, #0x20]
_08053E42:
	mov r1, sl
	ldrb r0, [r1, #2]
	movs r2, #1
	ands r2, r0
	cmp r2, #0
	beq _08053E5A
	movs r0, #0x40
	ldr r3, [sp, #0x20]
	orrs r3, r0
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x20]
_08053E5A:
	ldr r4, [sp, #0x58]
	ldr r0, [r4, #0x14]
	add r0, sb
	lsls r1, r6, #5
	str r1, [sp, #0x24]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08053E72
	b _08054220
_08053E72:
	mov r3, sl
	ldrb r3, [r3, #3]
	mov r8, r3
	cmp r2, #0
	bne _08053E7E
	b _08053FDC
_08053E7E:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08053F28
	movs r4, #1
	str r4, [sp]
	mov r0, sl
	ldr r1, [sp, #0x58]
	mov r2, sb
	adds r3, r6, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053EA2
	b _08054220
_08053EA2:
	str r6, [sp]
	movs r0, #1
	str r0, [sp, #4]
	add r1, sp, #0xc
	str r1, [sp, #8]
	ldr r0, [sp, #0x54]
	mov r1, sl
	ldr r2, [sp, #0x58]
	mov r3, sb
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053EC0
	b _08054220
_08053EC0:
	movs r2, #1
	mov ip, r2
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	subs r0, r7, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08053EE2
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08053EE2:
	ldr r3, [sp, #0x18]
	cmp r3, r8
	bhi _08053EEA
	b _08054220
_08053EEA:
	ldr r4, [sp, #0x28]
	lsrs r0, r4, #0x18
	ldr r2, [sp, #0x2c]
	lsrs r1, r2, #0x13
	adds r0, r0, r1
	ldr r3, [sp, #0x54]
	adds r2, r3, r0
	ldrb r3, [r2]
	lsrs r1, r3, #4
	cmp r1, #9
	bne _08053F02
	b _08054220
_08053F02:
	movs r0, #0xf
	ands r0, r3
	lsls r1, r7, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r4, [sp, #0x28]
	asrs r1, r4, #0x18
	ldr r2, [sp, #0x58]
	ldr r0, [r2, #8]
	adds r0, r0, r1
	ldr r3, [sp, #0x2c]
	asrs r1, r3, #0x13
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r0, #0xf
	b _080540BE
	.align 2, 0
_08053F24: .4byte gUnk_0202A1D0
_08053F28:
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _08053F30
	b _08054220
_08053F30:
	str r4, [sp]
	mov r0, sl
	ldr r1, [sp, #0x58]
	mov r2, sb
	adds r3, r6, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053F46
	b _08054220
_08053F46:
	str r6, [sp]
	str r4, [sp, #4]
	add r1, sp, #0xc
	str r1, [sp, #8]
	ldr r0, [sp, #0x54]
	mov r1, sl
	ldr r2, [sp, #0x58]
	mov r3, sb
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053F62
	b _08054220
_08053F62:
	movs r2, #0
	mov ip, r2
	ldr r3, [sp, #0x58]
	ldr r0, [r3, #0x10]
	add r0, sb
	ldr r4, [sp, #0x24]
	adds r0, r0, r4
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	subs r0, r7, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08053F92
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08053F92:
	ldr r0, [sp, #0x18]
	cmp r0, r8
	bhs _08053F9A
	b _08054220
_08053F9A:
	ldr r1, [sp, #0x28]
	lsrs r0, r1, #0x18
	ldr r2, [sp, #0x2c]
	lsrs r1, r2, #0x13
	adds r0, r0, r1
	ldr r3, [sp, #0x54]
	adds r6, r3, r0
	ldrb r0, [r6]
	lsrs r1, r0, #4
	cmp r1, #9
	bne _08053FB2
	b _08054220
_08053FB2:
	ldr r4, [sp, #0x10]
	lsls r3, r4, #0x18
	ldr r0, [sp, #0x14]
	lsls r4, r0, #0x18
	movs r2, #0xf0
	movs r0, #0xa
	lsls r1, r7, #4
	orrs r0, r1
	strb r0, [r6]
	asrs r3, r3, #0x18
	ldr r1, [sp, #0x58]
	ldr r0, [r1, #8]
	adds r0, r0, r3
	asrs r4, r4, #0x13
	adds r3, r0, r4
	ldrb r0, [r3]
	ands r2, r0
	mov r4, r8
	orrs r2, r4
	strb r2, [r3]
	b _08054178
_08053FDC:
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080540CA
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _080540D2
	str r0, [sp]
	mov r0, sl
	ldr r1, [sp, #0x58]
	mov r2, sb
	adds r3, r6, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054002
	b _08054220
_08054002:
	str r6, [sp]
	ldr r1, [sp, #0x1c]
	str r1, [sp, #4]
	add r2, sp, #0xc
	str r2, [sp, #8]
	ldr r0, [sp, #0x54]
	mov r1, sl
	ldr r2, [sp, #0x58]
	mov r3, sb
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054020
	b _08054220
_08054020:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	subs r0, r7, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0805403E
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0805403E:
	ldr r3, [sp, #0x18]
	cmp r3, r8
	bhi _08054046
	b _08054220
_08054046:
	mov r0, sl
	ldrb r2, [r0]
	ldr r1, [sp, #0x58]
	ldr r0, [r1, #0x14]
	adds r0, r0, r2
	mov r3, sl
	ldrb r1, [r3, #1]
	lsls r3, r1, #5
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08054064
	b _08054220
_08054064:
	movs r4, #1
	mov ip, r4
	ldr r1, [sp, #0x28]
	lsrs r0, r1, #0x18
	ldr r4, [sp, #0x2c]
	lsrs r1, r4, #0x13
	adds r0, r0, r1
	ldr r1, [sp, #0x54]
	adds r4, r1, r0
	ldrb r0, [r4]
	lsrs r1, r0, #4
	cmp r1, #9
	bne _08054080
	b _08054220
_08054080:
	adds r0, r2, r3
	ldr r2, [sp, #0x54]
	adds r1, r2, r0
	ldrb r0, [r1]
	movs r2, #0xf
	adds r3, r2, #0
	ands r3, r0
	cmp r3, #0xa
	bne _08054094
	b _08054220
_08054094:
	movs r0, #0x90
	orrs r0, r3
	strb r0, [r1]
	ldrb r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	lsls r1, r7, #4
	orrs r0, r1
	strb r0, [r4]
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	ldr r4, [sp, #0x58]
	ldr r1, [r4, #8]
	adds r1, r1, r0
	ldr r3, [sp, #0x14]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x13
	adds r3, r1, r0
	ldrb r1, [r3]
	adds r0, r2, #0
_080540BE:
	ands r0, r1
	mov r4, r8
	lsls r1, r4, #4
	orrs r0, r1
	strb r0, [r3]
	b _08054178
_080540CA:
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _080540D2
	b _08054220
_080540D2:
	ldr r1, [sp, #0x28]
	asrs r6, r1, #0x18
	ldr r2, [sp, #0x2c]
	asrs r4, r2, #0x18
	movs r3, #0
	mov sb, r3
	str r3, [sp]
	mov r0, sl
	ldr r1, [sp, #0x58]
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080540F4
	b _08054220
_080540F4:
	str r4, [sp]
	mov r0, sb
	str r0, [sp, #4]
	add r1, sp, #0xc
	str r1, [sp, #8]
	ldr r0, [sp, #0x54]
	mov r1, sl
	ldr r2, [sp, #0x58]
	adds r3, r6, #0
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054112
	b _08054220
_08054112:
	movs r2, #0
	mov ip, r2
	lsls r2, r4, #5
	ldr r3, [sp, #0x58]
	ldr r0, [r3, #0x10]
	adds r0, r0, r6
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	subs r0, r7, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08054142
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08054142:
	ldr r4, [sp, #0x18]
	cmp r4, r8
	blo _08054220
	ldr r1, [sp, #0x58]
	ldr r0, [r1, #8]
	adds r0, r0, r6
	adds r3, r0, r2
	ldrb r2, [r3]
	movs r1, #0xf0
	adds r0, r1, #0
	ands r0, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r3]
	ldr r3, [sp, #0x28]
	lsrs r2, r3, #0x18
	ldr r4, [sp, #0x2c]
	lsrs r0, r4, #0x13
	adds r2, r2, r0
	ldr r0, [sp, #0x54]
	adds r2, r0, r2
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #0xf
	ands r0, r7
	orrs r1, r0
	strb r1, [r2]
_08054178:
	ldr r1, [sp, #0x28]
	asrs r0, r1, #0x17
	ldr r2, [sp, #0x2c]
	asrs r1, r2, #0x12
	adds r0, r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r4, [sp, #0x58]
	ldr r2, [r4, #8]
	adds r2, r2, r0
	add r1, sp, #0xc
	mov r3, sl
	ldrh r0, [r3, #4]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r3, _080541E4 @ =gUnk_0202A1D0
	ldr r0, [r3]
	ldr r1, [r0, #0x1c]
	mov r4, sp
	ldrb r4, [r4, #0x10]
	strb r4, [r1]
	mov r0, sp
	ldrb r0, [r0, #0x14]
	strb r0, [r1, #1]
	mov r4, r8
	strb r4, [r1, #3]
	movs r0, #0x80
	mov r4, ip
	orrs r4, r0
	strb r4, [r1, #2]
	add r0, sp, #0x20
	ldrb r0, [r0]
	strb r0, [r1, #6]
	ldrh r2, [r2]
	ldr r0, _080541E8 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #4]
	ldr r1, [r3]
	ldr r0, [r1, #8]
	adds r2, r0, #1
	str r2, [r1, #8]
	ldr r0, [r1, #0x1c]
	adds r0, #8
	str r0, [r1, #0x1c]
	ldr r0, [r1, #0x14]
	ldrh r0, [r0, #6]
	lsrs r4, r0, #1
	ldr r1, [r1, #4]
	cmp r2, r1
	bge _080541EC
	subs r0, r1, r2
	b _080541F4
	.align 2, 0
_080541E4: .4byte gUnk_0202A1D0
_080541E8: .4byte 0x00007FFF
_080541EC:
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r0, r1
_080541F4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bhs _08054208
	ldr r0, [r3]
	adds r0, #0x20
	ldrb r2, [r0]
	movs r1, #6
	ands r1, r2
	strb r1, [r0]
_08054208:
	ldr r1, [r3]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #8]
	ldrh r4, [r2, #6]
	cmp r0, r4
	blt _0805421C
	movs r0, #0
	str r0, [r1, #8]
	ldr r0, [r2, #0xc]
	str r0, [r1, #0x1c]
_0805421C:
	ldr r0, [r3]
	ldr r5, [r0, #8]
_08054220:
	adds r0, r5, #0
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08054234
sub_08054234: @ 0x08054234
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	adds r6, r0, #0
	str r2, [sp, #0x10]
	mov sl, r3
	ldr r0, [sp, #0x98]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	ldrb r0, [r6]
	adds r0, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x18]
	movs r0, #1
	ldrsb r0, [r6, r0]
	str r0, [sp, #0x1c]
	mov sb, r1
	ldrb r1, [r6, #2]
	movs r0, #1
	ands r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x80
	ands r1, r0
	ldrb r2, [r6, #6]
	movs r0, #0xc0
	ands r0, r2
	cmp r1, r0
	bne _080542F8
	movs r0, #0x3f
	ands r0, r2
	subs r0, #1
	cmp r0, #7
	bhi _080542F8
	lsls r0, r0, #2
	ldr r1, _08054290 @ =_08054294
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054290: .4byte _08054294
_08054294: @ jump table
	.4byte _080542B4 @ case 0
	.4byte _080542B8 @ case 1
	.4byte _080542F8 @ case 2
	.4byte _080542D8 @ case 3
	.4byte _080542B4 @ case 4
	.4byte _080542B8 @ case 5
	.4byte _080542F8 @ case 6
	.4byte _080542D8 @ case 7
_080542B4:
	mov r1, sb
	b _080545E2
_080542B8:
	ldr r0, _080542D4 @ =gUnk_0202A1D0
	ldr r0, [r0]
	adds r0, #0x20
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080542F8
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080542F8
	mov r1, sb
	b _080545E2
	.align 2, 0
_080542D4: .4byte gUnk_0202A1D0
_080542D8:
	ldr r0, _080542F4 @ =gUnk_0202A1D0
	ldr r0, [r0]
	adds r0, #0x20
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080542F8
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080542F8
	mov r1, sb
	b _080545E2
	.align 2, 0
_080542F4: .4byte gUnk_0202A1D0
_080542F8:
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	mov r8, r2
	str r0, [sp, #0x58]
	cmp r2, #0
	blt _0805431A
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #0x18
	asrs r5, r0, #0x18
	str r0, [sp, #0x5c]
	cmp r5, #0
	blt _0805431A
	cmp r2, #0x1f
	bgt _0805431A
	cmp r5, #0x1f
	ble _0805431E
_0805431A:
	mov r1, sb
	b _080545E2
_0805431E:
	movs r4, #3
	str r4, [sp, #0x20]
	ldrb r0, [r6, #2]
	movs r4, #1
	ands r4, r0
	adds r3, r0, #0
	cmp r4, #0
	beq _08054332
	movs r0, #0x43
	str r0, [sp, #0x20]
_08054332:
	mov r1, sl
	ldr r0, [r1, #0x14]
	add r0, r8
	lsls r2, r5, #5
	str r2, [sp, #0x24]
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805434C
	mov r1, sb
	b _080545E4
_0805434C:
	ldrb r7, [r6, #3]
	cmp r4, #0
	bne _08054354
	b _080544A2
_08054354:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08054400
	movs r3, #1
	str r3, [sp]
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805437A
	mov r1, sb
	b _080545E2
_0805437A:
	str r5, [sp]
	movs r4, #1
	str r4, [sp, #4]
	add r5, sp, #0xc
	str r5, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	mov r2, sl
	mov r3, r8
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805439A
	mov r1, sb
	b _080545E2
_0805439A:
	movs r4, #1
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #3
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080543B4
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080543B4:
	ldr r0, [sp, #0x14]
	cmp r0, r7
	bhi _080543BE
	mov r1, sb
	b _080545E2
_080543BE:
	ldr r1, [sp, #0x58]
	lsrs r0, r1, #0x18
	ldr r2, [sp, #0x5c]
	lsrs r1, r2, #0x13
	adds r0, r0, r1
	ldr r3, [sp, #0x10]
	adds r2, r3, r0
	ldrb r1, [r2]
	lsrs r0, r1, #4
	cmp r0, #9
	bne _080543D8
	mov r1, sb
	b _080545E2
_080543D8:
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x30
	orrs r0, r1
	strb r0, [r2]
	ldr r5, [sp, #0x58]
	asrs r1, r5, #0x18
	mov r2, sl
	ldr r0, [r2, #8]
	adds r0, r0, r1
	ldr r3, [sp, #0x5c]
	asrs r1, r3, #0x13
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	lsls r1, r7, #4
	orrs r0, r1
	strb r0, [r3]
	b _0805453A
_08054400:
	str r4, [sp]
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054418
	mov r1, sb
	b _080545E2
_08054418:
	str r5, [sp]
	str r4, [sp, #4]
	add r4, sp, #0xc
	str r4, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	mov r2, sl
	mov r3, r8
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054436
	mov r1, sb
	b _080545E2
_08054436:
	movs r4, #0
	mov r5, sl
	ldr r0, [r5, #0x10]
	add r0, r8
	ldr r1, [sp, #0x24]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #3
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08054460
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08054460:
	ldr r2, [sp, #0x14]
	cmp r2, r7
	bhs _0805446A
	mov r1, sb
	b _080545E2
_0805446A:
	ldr r3, [sp, #0x58]
	lsrs r0, r3, #0x18
	ldr r5, [sp, #0x5c]
	lsrs r1, r5, #0x13
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	adds r3, r1, r0
	ldrb r1, [r3]
	lsrs r0, r1, #4
	cmp r0, #9
	bne _08054484
	mov r1, sb
	b _080545E2
_08054484:
	movs r2, #0xf0
	movs r0, #0x3a
	strb r0, [r3]
	mov r3, sl
	ldr r0, [r3, #8]
	ldr r5, [sp, #0x18]
	adds r0, r0, r5
	ldr r3, [sp, #0x1c]
	lsls r1, r3, #5
	adds r3, r0, r1
	ldrb r0, [r3]
	ands r2, r0
	orrs r2, r7
	strb r2, [r3]
	b _0805453A
_080544A2:
	str r4, [sp]
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080544BA
	mov r1, sb
	b _080545E2
_080544BA:
	str r5, [sp]
	str r4, [sp, #4]
	add r4, sp, #0xc
	str r4, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	mov r2, sl
	mov r3, r8
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080544D8
	mov r1, sb
	b _080545E2
_080544D8:
	movs r4, #0
	mov r5, sl
	ldr r0, [r5, #0x10]
	add r0, r8
	ldr r1, [sp, #0x24]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #3
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08054502
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08054502:
	ldr r2, [sp, #0x14]
	cmp r2, r7
	bhs _0805450C
	mov r1, sb
	b _080545E2
_0805450C:
	mov r3, sl
	ldr r0, [r3, #8]
	add r0, r8
	ldr r5, [sp, #0x24]
	adds r3, r0, r5
	ldrb r2, [r3]
	movs r1, #0xf0
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r7
	strb r0, [r3]
	ldr r0, [sp, #0x58]
	lsrs r2, r0, #0x18
	ldr r3, [sp, #0x5c]
	lsrs r0, r3, #0x13
	adds r2, r2, r0
	ldr r5, [sp, #0x10]
	adds r2, r5, r2
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #3
	orrs r1, r0
	strb r1, [r2]
_0805453A:
	ldr r1, [sp, #0x58]
	asrs r0, r1, #0x17
	ldr r2, [sp, #0x5c]
	asrs r1, r2, #0x12
	adds r0, r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	mov r5, sl
	ldr r2, [r5, #8]
	adds r2, r2, r0
	add r1, sp, #0xc
	ldrh r0, [r6, #4]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r3, _080545A4 @ =gUnk_0202A1D0
	ldr r0, [r3]
	ldr r1, [r0, #0x1c]
	mov r0, sp
	ldrb r0, [r0, #0x18]
	strb r0, [r1]
	mov r5, sp
	ldrb r5, [r5, #0x1c]
	strb r5, [r1, #1]
	strb r7, [r1, #3]
	movs r0, #0x80
	orrs r4, r0
	strb r4, [r1, #2]
	add r0, sp, #0x20
	ldrb r0, [r0]
	strb r0, [r1, #6]
	ldrh r2, [r2]
	ldr r0, _080545A8 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #4]
	ldr r1, [r3]
	ldr r0, [r1, #8]
	adds r2, r0, #1
	str r2, [r1, #8]
	ldr r0, [r1, #0x1c]
	adds r0, #8
	str r0, [r1, #0x1c]
	ldr r0, [r1, #0x14]
	ldrh r0, [r0, #6]
	lsrs r4, r0, #1
	ldr r1, [r1, #4]
	adds r5, r3, #0
	cmp r2, r1
	bge _080545AC
	subs r0, r1, r2
	b _080545B4
	.align 2, 0
_080545A4: .4byte gUnk_0202A1D0
_080545A8: .4byte 0x00007FFF
_080545AC:
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r0, r1
_080545B4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bhs _080545C8
	ldr r0, [r5]
	adds r0, #0x20
	ldrb r2, [r0]
	movs r1, #6
	ands r1, r2
	strb r1, [r0]
_080545C8:
	ldr r3, _08054624 @ =gUnk_0202A1D0
	ldr r1, [r3]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #8]
	ldrh r4, [r2, #6]
	cmp r0, r4
	blt _080545DE
	movs r0, #0
	str r0, [r1, #8]
	ldr r0, [r2, #0xc]
	str r0, [r1, #0x1c]
_080545DE:
	ldr r0, [r3]
	ldr r1, [r0, #8]
_080545E2:
	ldrb r3, [r6, #2]
_080545E4:
	ldrb r0, [r6, #1]
	subs r0, #1
	lsls r0, r0, #0x18
	movs r5, #0
	ldrsb r5, [r6, r5]
	str r5, [sp, #0x28]
	asrs r0, r0, #0x18
	str r0, [sp, #0x2c]
	mov sb, r1
	movs r0, #1
	ands r0, r3
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x80
	ands r1, r0
	ldrb r2, [r6, #6]
	movs r0, #0xc0
	ands r0, r2
	cmp r1, r0
	bne _08054684
	movs r0, #0x3f
	ands r0, r2
	subs r0, #1
	cmp r0, #7
	bhi _08054684
	lsls r0, r0, #2
	ldr r1, _08054628 @ =_0805462C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054624: .4byte gUnk_0202A1D0
_08054628: .4byte _0805462C
_0805462C: @ jump table
	.4byte _0805464C @ case 0
	.4byte _0805467C @ case 1
	.4byte _08054664 @ case 2
	.4byte _08054684 @ case 3
	.4byte _0805464C @ case 4
	.4byte _0805467C @ case 5
	.4byte _08054664 @ case 6
	.4byte _08054684 @ case 7
_0805464C:
	ldr r0, _08054660 @ =gUnk_0202A1D0
	ldr r0, [r0]
	adds r0, #0x20
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08054684
	movs r0, #4
	b _08054676
	.align 2, 0
_08054660: .4byte gUnk_0202A1D0
_08054664:
	ldr r0, _08054680 @ =gUnk_0202A1D0
	ldr r0, [r0]
	adds r0, #0x20
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08054684
	movs r0, #2
_08054676:
	ands r0, r1
	cmp r0, #0
	beq _08054684
_0805467C:
	mov r1, sb
	b _0805495E
	.align 2, 0
_08054680: .4byte gUnk_0202A1D0
_08054684:
	ldr r1, [sp, #0x28]
	lsls r0, r1, #0x18
	asrs r4, r0, #0x18
	mov r8, r4
	str r0, [sp, #0x60]
	cmp r4, #0
	blt _0805467C
	ldr r5, [sp, #0x2c]
	lsls r0, r5, #0x18
	asrs r5, r0, #0x18
	str r0, [sp, #0x64]
	cmp r5, #0
	blt _0805467C
	cmp r4, #0x1f
	bgt _0805467C
	cmp r5, #0x1f
	bgt _0805467C
	movs r0, #4
	str r0, [sp, #0x30]
	movs r4, #1
	ands r4, r3
	cmp r4, #0
	beq _080546B6
	movs r1, #0x44
	str r1, [sp, #0x30]
_080546B6:
	mov r1, sl
	ldr r0, [r1, #0x14]
	add r0, r8
	lsls r1, r5, #5
	str r1, [sp, #0x34]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0805467C
	ldrb r7, [r6, #3]
	cmp r4, #0
	bne _080546D4
	b _0805481E
_080546D4:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0805477E
	movs r2, #1
	str r2, [sp]
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080546FA
	mov r1, sb
	b _0805495A
_080546FA:
	str r5, [sp]
	movs r3, #1
	str r3, [sp, #4]
	add r4, sp, #0xc
	str r4, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	mov r2, sl
	mov r3, r8
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805471A
	mov r1, sb
	b _0805495A
_0805471A:
	movs r4, #1
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #0xfb
	movs r5, #4
	orrs r0, r5
	cmp r0, #3
	bhi _08054732
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08054732:
	ldr r0, [sp, #0x14]
	cmp r0, r7
	bhi _0805473C
	mov r1, sb
	b _0805495A
_0805473C:
	ldr r1, [sp, #0x60]
	lsrs r0, r1, #0x18
	ldr r2, [sp, #0x64]
	lsrs r1, r2, #0x13
	adds r0, r0, r1
	ldr r3, [sp, #0x10]
	adds r2, r3, r0
	ldrb r1, [r2]
	lsrs r0, r1, #4
	cmp r0, #9
	bne _08054756
	mov r1, sb
	b _0805495A
_08054756:
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r5, [sp, #0x60]
	asrs r1, r5, #0x18
	mov r2, sl
	ldr r0, [r2, #8]
	adds r0, r0, r1
	ldr r3, [sp, #0x64]
	asrs r1, r3, #0x13
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	lsls r1, r7, #4
	orrs r0, r1
	strb r0, [r3]
	b _080548B4
_0805477E:
	str r4, [sp]
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054796
	mov r1, sb
	b _0805495A
_08054796:
	str r5, [sp]
	str r4, [sp, #4]
	add r4, sp, #0xc
	str r4, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	mov r2, sl
	mov r3, r8
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080547B4
	mov r1, sb
	b _0805495A
_080547B4:
	movs r4, #0
	mov r5, sl
	ldr r0, [r5, #0x10]
	add r0, r8
	ldr r1, [sp, #0x34]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #0xfb
	movs r2, #4
	orrs r0, r2
	cmp r0, #3
	bhi _080547DC
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080547DC:
	ldr r3, [sp, #0x14]
	cmp r3, r7
	bhs _080547E6
	mov r1, sb
	b _0805495A
_080547E6:
	ldr r5, [sp, #0x60]
	lsrs r0, r5, #0x18
	ldr r2, [sp, #0x64]
	lsrs r1, r2, #0x13
	adds r0, r0, r1
	ldr r5, [sp, #0x10]
	adds r3, r5, r0
	ldrb r1, [r3]
	lsrs r0, r1, #4
	cmp r0, #9
	bne _08054800
	mov r1, sb
	b _0805495A
_08054800:
	movs r2, #0xf0
	movs r0, #0x4a
	strb r0, [r3]
	mov r1, sl
	ldr r0, [r1, #8]
	ldr r3, [sp, #0x28]
	adds r0, r0, r3
	ldr r5, [sp, #0x2c]
	lsls r1, r5, #5
	adds r3, r0, r1
	ldrb r0, [r3]
	ands r2, r0
	orrs r2, r7
	strb r2, [r3]
	b _080548B4
_0805481E:
	str r4, [sp]
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054836
	mov r1, sb
	b _0805495A
_08054836:
	str r5, [sp]
	str r4, [sp, #4]
	add r0, sp, #0xc
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	mov r2, sl
	mov r3, r8
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054854
	mov r1, sb
	b _0805495A
_08054854:
	movs r4, #0
	mov r1, sl
	ldr r0, [r1, #0x10]
	add r0, r8
	ldr r2, [sp, #0x34]
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #0xfb
	movs r3, #4
	orrs r0, r3
	cmp r0, #3
	bhi _0805487C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_0805487C:
	ldr r5, [sp, #0x14]
	cmp r5, r7
	bhs _08054886
	mov r1, sb
	b _0805495A
_08054886:
	mov r1, sl
	ldr r0, [r1, #8]
	add r0, r8
	ldr r2, [sp, #0x34]
	adds r3, r0, r2
	ldrb r2, [r3]
	movs r1, #0xf0
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r7
	strb r0, [r3]
	ldr r3, [sp, #0x60]
	lsrs r2, r3, #0x18
	ldr r5, [sp, #0x64]
	lsrs r0, r5, #0x13
	adds r2, r2, r0
	ldr r0, [sp, #0x10]
	adds r2, r0, r2
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r2]
_080548B4:
	ldr r1, [sp, #0x60]
	asrs r0, r1, #0x17
	ldr r2, [sp, #0x64]
	asrs r1, r2, #0x12
	adds r0, r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	mov r5, sl
	ldr r2, [r5, #8]
	adds r2, r2, r0
	add r1, sp, #0xc
	ldrh r0, [r6, #4]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r3, _0805491C @ =gUnk_0202A1D0
	ldr r0, [r3]
	ldr r1, [r0, #0x1c]
	add r0, sp, #0x28
	ldrb r0, [r0]
	strb r0, [r1]
	add r5, sp, #0x2c
	ldrb r5, [r5]
	strb r5, [r1, #1]
	strb r7, [r1, #3]
	movs r0, #0x80
	orrs r4, r0
	strb r4, [r1, #2]
	add r0, sp, #0x30
	ldrb r0, [r0]
	strb r0, [r1, #6]
	ldrh r2, [r2]
	ldr r0, _08054920 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #4]
	ldr r1, [r3]
	ldr r0, [r1, #8]
	adds r2, r0, #1
	str r2, [r1, #8]
	ldr r0, [r1, #0x1c]
	adds r0, #8
	str r0, [r1, #0x1c]
	ldr r0, [r1, #0x14]
	ldrh r0, [r0, #6]
	lsrs r4, r0, #1
	ldr r1, [r1, #4]
	adds r5, r3, #0
	cmp r2, r1
	bge _08054924
	subs r0, r1, r2
	b _0805492C
	.align 2, 0
_0805491C: .4byte gUnk_0202A1D0
_08054920: .4byte 0x00007FFF
_08054924:
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r0, r1
_0805492C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bhs _08054940
	ldr r0, [r5]
	adds r0, #0x20
	ldrb r2, [r0]
	movs r1, #6
	ands r1, r2
	strb r1, [r0]
_08054940:
	ldr r3, _0805499C @ =gUnk_0202A1D0
	ldr r1, [r3]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #8]
	ldrh r4, [r2, #6]
	cmp r0, r4
	blt _08054956
	movs r0, #0
	str r0, [r1, #8]
	ldr r0, [r2, #0xc]
	str r0, [r1, #0x1c]
_08054956:
	ldr r0, [r3]
	ldr r1, [r0, #8]
_0805495A:
	ldrb r3, [r6, #2]
	ldrb r2, [r6, #6]
_0805495E:
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x38]
	movs r5, #1
	ldrsb r5, [r6, r5]
	str r5, [sp, #0x3c]
	mov sb, r1
	movs r0, #1
	ands r0, r3
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x80
	ands r1, r0
	movs r0, #0xc0
	ands r0, r2
	cmp r1, r0
	bne _080549F4
	movs r0, #0x3f
	ands r0, r2
	subs r0, #1
	cmp r0, #7
	bhi _080549F4
	lsls r0, r0, #2
	ldr r1, _080549A0 @ =_080549A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805499C: .4byte gUnk_0202A1D0
_080549A0: .4byte _080549A4
_080549A4: @ jump table
	.4byte _080549F4 @ case 0
	.4byte _080549C4 @ case 1
	.4byte _08054A3C @ case 2
	.4byte _080549DC @ case 3
	.4byte _080549F4 @ case 4
	.4byte _080549C4 @ case 5
	.4byte _08054A3C @ case 6
	.4byte _080549DC @ case 7
_080549C4:
	ldr r0, _080549D8 @ =gUnk_0202A1D0
	ldr r0, [r0]
	adds r0, #0x20
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080549F4
	movs r0, #4
	b _080549EE
	.align 2, 0
_080549D8: .4byte gUnk_0202A1D0
_080549DC:
	ldr r0, _08054A40 @ =gUnk_0202A1D0
	ldr r0, [r0]
	adds r0, #0x20
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080549F4
	movs r0, #2
_080549EE:
	ands r0, r1
	cmp r0, #0
	bne _08054A3C
_080549F4:
	ldr r1, [sp, #0x38]
	lsls r0, r1, #0x18
	asrs r4, r0, #0x18
	mov r8, r4
	str r0, [sp, #0x68]
	cmp r4, #0
	blt _08054A3C
	ldr r5, [sp, #0x3c]
	lsls r0, r5, #0x18
	asrs r5, r0, #0x18
	str r0, [sp, #0x6c]
	cmp r5, #0
	blt _08054A3C
	cmp r4, #0x1f
	bgt _08054A3C
	cmp r5, #0x1f
	bgt _08054A3C
	movs r0, #1
	str r0, [sp, #0x40]
	adds r4, r0, #0
	ands r4, r3
	cmp r4, #0
	beq _08054A26
	movs r1, #0x41
	str r1, [sp, #0x40]
_08054A26:
	mov r1, sl
	ldr r0, [r1, #0x14]
	add r0, r8
	lsls r1, r5, #5
	str r1, [sp, #0x44]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08054A44
_08054A3C:
	mov r1, sb
	b _08054CDE
	.align 2, 0
_08054A40: .4byte gUnk_0202A1D0
_08054A44:
	ldrb r7, [r6, #3]
	cmp r4, #0
	bne _08054A4C
	b _08054B9A
_08054A4C:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08054AF8
	movs r2, #1
	str r2, [sp]
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054A72
	mov r1, sb
	b _08054CDA
_08054A72:
	str r5, [sp]
	movs r3, #1
	str r3, [sp, #4]
	add r4, sp, #0xc
	str r4, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	mov r2, sl
	mov r3, r8
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054A92
	mov r1, sb
	b _08054CDA
_08054A92:
	movs r4, #1
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #1
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08054AAC
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08054AAC:
	ldr r5, [sp, #0x14]
	cmp r5, r7
	bhi _08054AB6
	mov r1, sb
	b _08054CDA
_08054AB6:
	ldr r1, [sp, #0x68]
	lsrs r0, r1, #0x18
	ldr r2, [sp, #0x6c]
	lsrs r1, r2, #0x13
	adds r0, r0, r1
	ldr r3, [sp, #0x10]
	adds r2, r3, r0
	ldrb r1, [r2]
	lsrs r0, r1, #4
	cmp r0, #9
	bne _08054AD0
	mov r1, sb
	b _08054CDA
_08054AD0:
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r5, [sp, #0x68]
	asrs r1, r5, #0x18
	mov r2, sl
	ldr r0, [r2, #8]
	adds r0, r0, r1
	ldr r3, [sp, #0x6c]
	asrs r1, r3, #0x13
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	lsls r1, r7, #4
	orrs r0, r1
	strb r0, [r3]
	b _08054C32
_08054AF8:
	str r4, [sp]
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054B10
	mov r1, sb
	b _08054CDA
_08054B10:
	str r5, [sp]
	str r4, [sp, #4]
	add r4, sp, #0xc
	str r4, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	mov r2, sl
	mov r3, r8
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054B2E
	mov r1, sb
	b _08054CDA
_08054B2E:
	movs r4, #0
	mov r5, sl
	ldr r0, [r5, #0x10]
	add r0, r8
	ldr r1, [sp, #0x44]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #1
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08054B58
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08054B58:
	ldr r2, [sp, #0x14]
	cmp r2, r7
	bhs _08054B62
	mov r1, sb
	b _08054CDA
_08054B62:
	ldr r3, [sp, #0x68]
	lsrs r0, r3, #0x18
	ldr r5, [sp, #0x6c]
	lsrs r1, r5, #0x13
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	adds r3, r1, r0
	ldrb r1, [r3]
	lsrs r0, r1, #4
	cmp r0, #9
	bne _08054B7C
	mov r1, sb
	b _08054CDA
_08054B7C:
	movs r2, #0xf0
	movs r0, #0x1a
	strb r0, [r3]
	mov r3, sl
	ldr r0, [r3, #8]
	ldr r5, [sp, #0x38]
	adds r0, r0, r5
	ldr r3, [sp, #0x3c]
	lsls r1, r3, #5
	adds r3, r0, r1
	ldrb r0, [r3]
	ands r2, r0
	orrs r2, r7
	strb r2, [r3]
	b _08054C32
_08054B9A:
	str r4, [sp]
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054BB2
	mov r1, sb
	b _08054CDA
_08054BB2:
	str r5, [sp]
	str r4, [sp, #4]
	add r4, sp, #0xc
	str r4, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	mov r2, sl
	mov r3, r8
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054BD0
	mov r1, sb
	b _08054CDA
_08054BD0:
	movs r4, #0
	mov r5, sl
	ldr r0, [r5, #0x10]
	add r0, r8
	ldr r1, [sp, #0x44]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #1
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08054BFA
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08054BFA:
	ldr r2, [sp, #0x14]
	cmp r2, r7
	bhs _08054C04
	mov r1, sb
	b _08054CDA
_08054C04:
	mov r3, sl
	ldr r0, [r3, #8]
	add r0, r8
	ldr r5, [sp, #0x44]
	adds r3, r0, r5
	ldrb r2, [r3]
	movs r1, #0xf0
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r7
	strb r0, [r3]
	ldr r0, [sp, #0x68]
	lsrs r2, r0, #0x18
	ldr r3, [sp, #0x6c]
	lsrs r0, r3, #0x13
	adds r2, r2, r0
	ldr r5, [sp, #0x10]
	adds r2, r5, r2
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2]
_08054C32:
	ldr r1, [sp, #0x68]
	asrs r0, r1, #0x17
	ldr r2, [sp, #0x6c]
	asrs r1, r2, #0x12
	adds r0, r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	mov r5, sl
	ldr r2, [r5, #8]
	adds r2, r2, r0
	add r1, sp, #0xc
	ldrh r0, [r6, #4]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r3, _08054C9C @ =gUnk_0202A1D0
	ldr r0, [r3]
	ldr r1, [r0, #0x1c]
	add r0, sp, #0x38
	ldrb r0, [r0]
	strb r0, [r1]
	add r5, sp, #0x3c
	ldrb r5, [r5]
	strb r5, [r1, #1]
	strb r7, [r1, #3]
	movs r0, #0x80
	orrs r4, r0
	strb r4, [r1, #2]
	add r0, sp, #0x40
	ldrb r0, [r0]
	strb r0, [r1, #6]
	ldrh r2, [r2]
	ldr r0, _08054CA0 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #4]
	ldr r1, [r3]
	ldr r0, [r1, #8]
	adds r2, r0, #1
	str r2, [r1, #8]
	ldr r0, [r1, #0x1c]
	adds r0, #8
	str r0, [r1, #0x1c]
	ldr r0, [r1, #0x14]
	ldrh r0, [r0, #6]
	lsrs r4, r0, #1
	ldr r1, [r1, #4]
	adds r5, r3, #0
	cmp r2, r1
	bge _08054CA4
	subs r0, r1, r2
	b _08054CAC
	.align 2, 0
_08054C9C: .4byte gUnk_0202A1D0
_08054CA0: .4byte 0x00007FFF
_08054CA4:
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r0, r1
_08054CAC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bhs _08054CC0
	ldr r0, [r5]
	adds r0, #0x20
	ldrb r2, [r0]
	movs r1, #6
	ands r1, r2
	strb r1, [r0]
_08054CC0:
	ldr r3, _08054D1C @ =gUnk_0202A1D0
	ldr r1, [r3]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #8]
	ldrh r4, [r2, #6]
	cmp r0, r4
	blt _08054CD6
	movs r0, #0
	str r0, [r1, #8]
	ldr r0, [r2, #0xc]
	str r0, [r1, #0x1c]
_08054CD6:
	ldr r0, [r3]
	ldr r1, [r0, #8]
_08054CDA:
	ldrb r3, [r6, #2]
	ldrb r2, [r6, #6]
_08054CDE:
	ldrb r0, [r6, #1]
	adds r0, #1
	lsls r0, r0, #0x18
	movs r5, #0
	ldrsb r5, [r6, r5]
	str r5, [sp, #0x48]
	asrs r0, r0, #0x18
	str r0, [sp, #0x4c]
	mov sb, r1
	movs r0, #1
	ands r0, r3
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x80
	ands r1, r0
	movs r0, #0xc0
	ands r0, r2
	cmp r1, r0
	bne _08054D84
	movs r0, #0x3f
	ands r0, r2
	subs r0, #1
	cmp r0, #7
	bhi _08054D84
	lsls r0, r0, #2
	ldr r1, _08054D20 @ =_08054D24
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054D1C: .4byte gUnk_0202A1D0
_08054D20: .4byte _08054D24
_08054D24: @ jump table
	.4byte _08054D44 @ case 0
	.4byte _08054D84 @ case 1
	.4byte _08054D60 @ case 2
	.4byte _08054F72 @ case 3
	.4byte _08054D44 @ case 4
	.4byte _08054D84 @ case 5
	.4byte _08054D60 @ case 6
	.4byte _08054F72 @ case 7
_08054D44:
	ldr r0, _08054D5C @ =gUnk_0202A1D0
	ldr r1, [r0]
	adds r1, #0x20
	ldrb r2, [r1]
	movs r1, #0x10
	ands r1, r2
	adds r5, r0, #0
	cmp r1, #0
	bne _08054D84
	movs r0, #2
	b _08054D74
	.align 2, 0
_08054D5C: .4byte gUnk_0202A1D0
_08054D60:
	ldr r0, _08054D80 @ =gUnk_0202A1D0
	ldr r1, [r0]
	adds r1, #0x20
	ldrb r2, [r1]
	movs r1, #8
	ands r1, r2
	adds r5, r0, #0
	cmp r1, #0
	bne _08054D84
	movs r0, #4
_08054D74:
	ands r0, r2
	cmp r0, #0
	beq _08054D84
	mov r1, sb
	b _08055050
	.align 2, 0
_08054D80: .4byte gUnk_0202A1D0
_08054D84:
	ldr r1, [sp, #0x48]
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	mov r8, r2
	str r0, [sp, #0x70]
	cmp r2, #0
	bge _08054D94
	b _08054F72
_08054D94:
	ldr r4, [sp, #0x4c]
	lsls r0, r4, #0x18
	asrs r5, r0, #0x18
	str r0, [sp, #0x74]
	cmp r5, #0
	bge _08054DA2
	b _08054F72
_08054DA2:
	cmp r2, #0x1f
	ble _08054DA8
	b _08054F72
_08054DA8:
	cmp r5, #0x1f
	ble _08054DAE
	b _08054F72
_08054DAE:
	movs r0, #2
	str r0, [sp, #0x50]
	movs r4, #1
	ands r4, r3
	cmp r4, #0
	beq _08054DBE
	movs r1, #0x42
	str r1, [sp, #0x50]
_08054DBE:
	mov r2, sl
	ldr r0, [r2, #0x14]
	add r0, r8
	lsls r3, r5, #5
	str r3, [sp, #0x54]
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08054DD6
	b _08054F72
_08054DD6:
	ldrb r7, [r6, #3]
	cmp r4, #0
	bne _08054DDE
	b _08054F14
_08054DDE:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08054E82
	movs r4, #1
	str r4, [sp]
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054E02
	b _08054F72
_08054E02:
	str r5, [sp]
	movs r5, #1
	str r5, [sp, #4]
	add r0, sp, #0xc
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	mov r2, sl
	mov r3, r8
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054E20
	b _08054F72
_08054E20:
	movs r4, #1
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #2
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08054E3A
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08054E3A:
	ldr r1, [sp, #0x14]
	cmp r1, r7
	bhi _08054E42
	b _08054F72
_08054E42:
	ldr r2, [sp, #0x70]
	lsrs r0, r2, #0x18
	ldr r3, [sp, #0x74]
	lsrs r1, r3, #0x13
	adds r0, r0, r1
	ldr r5, [sp, #0x10]
	adds r2, r5, r0
	ldrb r1, [r2]
	lsrs r0, r1, #4
	cmp r0, #9
	bne _08054E5A
	b _08054F72
_08054E5A:
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [sp, #0x70]
	asrs r1, r0, #0x18
	mov r2, sl
	ldr r0, [r2, #8]
	adds r0, r0, r1
	ldr r3, [sp, #0x74]
	asrs r1, r3, #0x13
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	lsls r1, r7, #4
	orrs r0, r1
	strb r0, [r3]
	b _08054FAA
_08054E82:
	str r4, [sp]
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08054F72
	str r5, [sp]
	str r4, [sp, #4]
	add r4, sp, #0xc
	str r4, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	mov r2, sl
	mov r3, r8
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08054F72
	movs r4, #0
	mov r5, sl
	ldr r0, [r5, #0x10]
	add r0, r8
	ldr r1, [sp, #0x54]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #2
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08054EDA
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08054EDA:
	ldr r2, [sp, #0x14]
	cmp r2, r7
	blo _08054F72
	ldr r3, [sp, #0x70]
	lsrs r0, r3, #0x18
	ldr r5, [sp, #0x74]
	lsrs r1, r5, #0x13
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	adds r3, r1, r0
	ldrb r1, [r3]
	lsrs r0, r1, #4
	cmp r0, #9
	beq _08054F72
	movs r2, #0xf0
	movs r0, #0x2a
	strb r0, [r3]
	mov r3, sl
	ldr r0, [r3, #8]
	ldr r5, [sp, #0x48]
	adds r0, r0, r5
	ldr r3, [sp, #0x4c]
	lsls r1, r3, #5
	adds r3, r0, r1
	ldrb r0, [r3]
	ands r2, r0
	orrs r2, r7
	strb r2, [r3]
	b _08054FAA
_08054F14:
	str r4, [sp]
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_0804E750
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08054F72
	str r5, [sp]
	str r4, [sp, #4]
	add r4, sp, #0xc
	str r4, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	mov r2, sl
	mov r3, r8
	bl sub_0804E89C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08054F72
	movs r4, #0
	mov r5, sl
	ldr r0, [r5, #0x10]
	add r0, r8
	ldr r1, [sp, #0x54]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #2
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08054F6C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08054F6C:
	ldr r2, [sp, #0x14]
	cmp r2, r7
	bhs _08054F7C
_08054F72:
	mov r1, sb
	ldr r5, _08054F78 @ =gUnk_0202A1D0
	b _08055050
	.align 2, 0
_08054F78: .4byte gUnk_0202A1D0
_08054F7C:
	mov r3, sl
	ldr r0, [r3, #8]
	add r0, r8
	ldr r5, [sp, #0x54]
	adds r3, r0, r5
	ldrb r2, [r3]
	movs r1, #0xf0
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r7
	strb r0, [r3]
	ldr r0, [sp, #0x70]
	lsrs r2, r0, #0x18
	ldr r3, [sp, #0x74]
	lsrs r0, r3, #0x13
	adds r2, r2, r0
	ldr r5, [sp, #0x10]
	adds r2, r5, r2
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_08054FAA:
	ldr r1, [sp, #0x70]
	asrs r0, r1, #0x17
	ldr r2, [sp, #0x74]
	asrs r1, r2, #0x12
	adds r0, r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	mov r5, sl
	ldr r2, [r5, #8]
	adds r2, r2, r0
	add r1, sp, #0xc
	ldrh r0, [r6, #4]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r3, _08055014 @ =gUnk_0202A1D0
	ldr r0, [r3]
	ldr r1, [r0, #0x1c]
	add r0, sp, #0x48
	ldrb r0, [r0]
	strb r0, [r1]
	add r5, sp, #0x4c
	ldrb r5, [r5]
	strb r5, [r1, #1]
	strb r7, [r1, #3]
	movs r0, #0x80
	orrs r4, r0
	strb r4, [r1, #2]
	add r0, sp, #0x50
	ldrb r0, [r0]
	strb r0, [r1, #6]
	ldrh r2, [r2]
	ldr r0, _08055018 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #4]
	ldr r1, [r3]
	ldr r0, [r1, #8]
	adds r2, r0, #1
	str r2, [r1, #8]
	ldr r0, [r1, #0x1c]
	adds r0, #8
	str r0, [r1, #0x1c]
	ldr r0, [r1, #0x14]
	ldrh r0, [r0, #6]
	lsrs r4, r0, #1
	ldr r1, [r1, #4]
	adds r5, r3, #0
	cmp r2, r1
	bge _0805501C
	subs r0, r1, r2
	b _08055024
	.align 2, 0
_08055014: .4byte gUnk_0202A1D0
_08055018: .4byte 0x00007FFF
_0805501C:
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r0, r1
_08055024:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bhs _08055038
	ldr r0, [r5]
	adds r0, #0x20
	ldrb r2, [r0]
	movs r1, #6
	ands r1, r2
	strb r1, [r0]
_08055038:
	ldr r1, [r5]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #8]
	ldrh r3, [r2, #6]
	cmp r0, r3
	blt _0805504C
	movs r0, #0
	str r0, [r1, #8]
	ldr r0, [r2, #0xc]
	str r0, [r1, #0x1c]
_0805504C:
	ldr r0, [r5]
	ldr r1, [r0, #8]
_08055050:
	ldr r0, [r5]
	adds r0, #0x20
	ldrb r0, [r0]
	movs r2, #1
	ands r2, r0
	cmp r2, #0
	beq _08055064
	movs r0, #0
	strb r0, [r6, #2]
	b _08055066
_08055064:
	strb r2, [r6, #2]
_08055066:
	adds r0, r1, #0
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08055078
sub_08055078: @ 0x08055078
	adds r2, r0, #0
	ldrh r1, [r2, #2]
	adds r1, #1
	strh r1, [r2, #2]
	ldr r0, [r2, #0xc]
	adds r0, #0xc
	str r0, [r2, #0xc]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2]
	cmp r1, r0
	blo _08055098
	movs r0, #0
	strh r0, [r2, #2]
	ldr r0, [r2, #8]
	str r0, [r2, #0xc]
_08055098:
	bx lr
	.align 2, 0

	thumb_func_start sub_0805509C
sub_0805509C: @ 0x0805509C
	adds r2, r0, #0
	ldrh r1, [r2, #4]
	adds r1, #1
	strh r1, [r2, #4]
	ldr r0, [r2, #0x10]
	adds r0, #0xc
	str r0, [r2, #0x10]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2]
	cmp r1, r0
	blo _080550BC
	movs r0, #0
	strh r0, [r2, #4]
	ldr r0, [r2, #8]
	str r0, [r2, #0x10]
_080550BC:
	bx lr
	.align 2, 0

	thumb_func_start sub_080550C0
sub_080550C0: @ 0x080550C0
	push {r4, lr}
	ldr r4, [sp, #8]
	str r1, [r0, #8]
	strh r2, [r0, #2]
	strh r3, [r0, #4]
	strb r4, [r0, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080550D4
sub_080550D4: @ 0x080550D4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_080550E6:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _0805510A
	cmp r0, r7
	bne _0805510E
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805510E
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0805510E
	cmp r0, r5
	bne _0805510A
	ldrh r0, [r2, #4]
	cmp r0, r6
	bls _0805510E
_0805510A:
	adds r0, r2, #0
	b _08055126
_0805510E:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _0805511E
	adds r3, r0, #0
	cmp r3, r1
	blt _08055122
_0805511E:
	ldr r2, [r4, #8]
	b _080550E6
_08055122:
	adds r2, #0xc
	b _080550E6
_08055126:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805512C
sub_0805512C: @ 0x0805512C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	lsls r2, r2, #0x18
	asrs r2, r2, #0x14
	adds r5, r7, r2
	lsls r3, r3, #0x18
	asrs r0, r3, #0x18
	cmp r0, #0
	blt _08055154
	lsls r0, r0, #9
	adds r5, r5, r0
	b _0805515C
_08055154:
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0xf
	subs r5, r5, r0
_0805515C:
	ldrb r0, [r5]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _080551FE
	ldrb r1, [r5, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _08055176
	rsbs r0, r0, #0
_08055176:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _080551FE
	cmp r6, r0
	bne _0805518A
	ldrh r0, [r5, #8]
	cmp r7, r0
	bhs _080551FE
_0805518A:
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_0805518E:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080551B2
	cmp r0, r5
	bne _080551B6
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080551B6
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _080551B6
	cmp r0, r6
	bne _080551B2
	ldrh r0, [r2, #4]
	cmp r0, r7
	bls _080551B6
_080551B2:
	adds r0, r2, #0
	b _080551CE
_080551B6:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _080551C6
	adds r3, r0, #0
	cmp r3, r1
	blt _080551CA
_080551C6:
	ldr r2, [r4, #8]
	b _0805518E
_080551CA:
	adds r2, #0xc
	b _0805518E
_080551CE:
	cmp r2, #0
	beq _080551FE
	str r5, [r0, #8]
	strh r6, [r0, #2]
	strh r7, [r0, #4]
	mov r1, ip
	strb r1, [r0, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _080551FE
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080551FE
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080551FE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08055204
sub_08055204: @ 0x08055204
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_08055216:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _0805523A
	cmp r0, r7
	bne _0805523E
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805523E
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0805523E
	cmp r0, r5
	bne _0805523A
	ldrh r0, [r2, #4]
	cmp r0, r6
	bls _0805523E
_0805523A:
	adds r0, r2, #0
	b _08055256
_0805523E:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08055248
	ldr r2, [r4, #8]
	b _0805524A
_08055248:
	adds r2, #0xc
_0805524A:
	movs r1, #0
	cmp r3, r0
	bge _08055252
	adds r1, r3, #1
_08055252:
	adds r3, r1, #0
	b _08055216
_08055256:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805525C
sub_0805525C: @ 0x0805525C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	asrs r2, r2, #0x14
	adds r4, r7, r2
	lsls r3, r3, #0x18
	asrs r0, r3, #0x18
	cmp r0, #0
	blt _08055288
	lsls r0, r0, #9
	adds r4, r4, r0
	b _08055290
_08055288:
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0xf
	subs r4, r4, r0
_08055290:
	ldrb r1, [r4, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0805529E
	rsbs r1, r1, #0
_0805529E:
	ldrh r0, [r4, #0xe]
	cmp r0, r6
	bls _08055336
	ldrh r0, [r4, #0xa]
	cmp r0, r6
	blo _08055336
	cmp r0, r6
	bne _080552B4
	ldrh r0, [r4, #8]
	cmp r1, r0
	bge _08055336
_080552B4:
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	ldrh r3, [r5, #4]
	ldr r2, [r5, #0x10]
	mov ip, r0
_080552BE:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080552E2
	cmp r0, r4
	bne _080552E6
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080552E6
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _080552E6
	cmp r0, r6
	bne _080552E2
	ldrh r0, [r2, #4]
	cmp r0, r7
	bls _080552E6
_080552E2:
	adds r3, r2, #0
	b _080552FE
_080552E6:
	ldrh r0, [r5]
	cmp r3, r0
	blt _080552F0
	ldr r2, [r5, #8]
	b _080552F2
_080552F0:
	adds r2, #0xc
_080552F2:
	movs r1, #0
	cmp r3, r0
	bge _080552FA
	adds r1, r3, #1
_080552FA:
	adds r3, r1, #0
	b _080552BE
_080552FE:
	cmp r2, #0
	beq _08055336
	movs r0, #1
	strh r0, [r3]
	mov r1, ip
	lsrs r0, r1, #0x10
	str r4, [r3, #8]
	strh r6, [r3, #2]
	strh r0, [r3, #4]
	mov r0, r8
	strb r0, [r3, #6]
	ldr r1, [r5, #0xc]
	cmp r1, r3
	bne _08055336
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	adds r1, #0xc
	str r1, [r5, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	cmp r0, r1
	blo _08055336
	movs r0, #0
	strh r0, [r5, #2]
	ldr r0, [r5, #8]
	str r0, [r5, #0xc]
_08055336:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08055340
sub_08055340: @ 0x08055340
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	lsls r2, r2, #0x18
	asrs r2, r2, #0x14
	adds r5, r7, r2
	lsls r3, r3, #0x18
	asrs r0, r3, #0x18
	cmp r0, #0
	blt _08055368
	lsls r0, r0, #9
	adds r5, r5, r0
	b _0805536C
_08055368:
	lsls r0, r0, #9
	adds r5, r0, r5
_0805536C:
	ldrb r0, [r5]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _0805541E
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08055388
	rsbs r0, r0, #0
_08055388:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _0805541E
	cmp r6, r0
	bne _0805539C
	ldrh r0, [r5, #8]
	cmp r7, r0
	bhs _0805541E
_0805539C:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	mov r2, ip
	lsls r0, r2, #4
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
_080553AE:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080553D2
	cmp r0, r5
	bne _080553D6
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080553D6
	ldrh r0, [r2, #2]
	cmp r0, r6
	blo _080553D6
	cmp r0, r6
	bne _080553D2
	ldrh r0, [r2, #4]
	cmp r0, r7
	bls _080553D6
_080553D2:
	adds r3, r2, #0
	b _080553EE
_080553D6:
	adds r0, r3, #1
	ldrh r1, [r4]
	movs r3, #0
	cmp r0, r1
	bge _080553E6
	adds r3, r0, #0
	cmp r3, r1
	blt _080553EA
_080553E6:
	ldr r2, [r4, #8]
	b _080553AE
_080553EA:
	adds r2, #0xc
	b _080553AE
_080553EE:
	cmp r2, #0
	beq _0805541E
	movs r0, #0xa
	str r5, [r3, #8]
	strh r6, [r3, #2]
	strh r7, [r3, #4]
	strb r0, [r3, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r3
	bne _0805541E
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0805541E
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805541E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08055424
sub_08055424: @ 0x08055424
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r2, r3, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r6, r5, #0
	lsls r1, r1, #0x18
	cmp r1, #0
	beq _08055452
	bl _0805612A
_08055452:
	ldrh r0, [r7, #0xa]
	cmp sb, r0
	bls _0805545C
	bl _08056DDA
_0805545C:
	cmp sb, r0
	bne _0805546A
	ldrh r0, [r7, #8]
	cmp r3, r0
	blo _0805546A
	bl _08056DDA
_0805546A:
	ldrh r0, [r7, #0xc]
	movs r1, #0xf0
	ands r1, r0
	orrs r1, r5
	strh r1, [r7, #0xc]
	mov r1, sb
	strh r1, [r7, #0xa]
	strh r2, [r7, #8]
	movs r2, #1
	add r2, sb
	mov r8, r2
	ldrb r1, [r7, #2]
	adds r0, r1, #0
	mov sl, r8
	cmp r0, #0xff
	bne _0805548E
	bl _08056DDA
_0805548E:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08055548
	adds r6, r7, #0
	adds r6, #0x10
	ldrb r0, [r7, #0x10]
	add r0, sb
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _08055548
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _080554B4
	rsbs r0, r0, #0
_080554B4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _08055548
	cmp r5, r0
	bne _080554CA
	ldrh r0, [r6, #8]
	cmp ip, r0
	bhs _08055548
_080554CA:
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_080554CE:
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _080554D8
	bl _08056124
_080554D8:
	cmp r0, r6
	bne _080554FE
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080554FE
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _080554FE
	cmp r0, r5
	beq _080554F4
	bl _08056124
_080554F4:
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _080554FE
	bl _08056124
_080554FE:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _0805550E
	adds r2, r0, #0
	cmp r2, r1
	blt _08055512
_0805550E:
	ldr r3, [r4, #8]
	b _080554CE
_08055512:
	adds r3, #0xc
	b _080554CE
sub_08055516:
	cmp r3, #0
	beq _08055548
	str r6, [r1, #8]
	strh r5, [r1, #2]
	mov r2, ip
	strh r2, [r1, #4]
	movs r0, #3
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08055548
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08055548
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08055548:
	ldrb r1, [r7, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08055604
	adds r6, r7, #0
	subs r6, #0x10
	ldrb r0, [r6]
	add r0, sb
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _08055604
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _08055570
	rsbs r0, r0, #0
_08055570:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _08055604
	cmp r5, r0
	bne _08055586
	ldrh r2, [r6, #8]
	cmp ip, r2
	bhs _08055604
_08055586:
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_0805558A:
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _08055594
	bl _0805611E
_08055594:
	cmp r0, r6
	bne _080555BA
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080555BA
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _080555BA
	cmp r0, r5
	beq _080555B0
	bl _0805611E
_080555B0:
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _080555BA
	bl _0805611E
_080555BA:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _080555CA
	adds r2, r0, #0
	cmp r2, r1
	blt _080555CE
_080555CA:
	ldr r3, [r4, #8]
	b _0805558A
_080555CE:
	adds r3, #0xc
	b _0805558A
sub_080555D2:
	cmp r3, #0
	beq _08055604
	str r6, [r1, #8]
	strh r5, [r1, #2]
	mov r0, ip
	strh r0, [r1, #4]
	movs r0, #1
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08055604
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08055604
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08055604:
	ldrb r1, [r7, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080556C6
	ldr r2, _0805568C @ =0xFFFFFE00
	adds r6, r7, r2
	ldrb r0, [r6]
	add r0, sb
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _080556C6
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805562C
	rsbs r0, r0, #0
_0805562C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _080556C6
	cmp r5, r0
	bne _08055642
	ldrh r0, [r6, #8]
	cmp ip, r0
	bhs _080556C6
_08055642:
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_08055646:
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _08055650
	bl _08056118
_08055650:
	cmp r0, r6
	bne _08055676
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08055676
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08055676
	cmp r0, r5
	beq _0805566C
	bl _08056118
_0805566C:
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _08055676
	bl _08056118
_08055676:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _08055686
	adds r2, r0, #0
	cmp r2, r1
	blt _08055690
_08055686:
	ldr r3, [r4, #8]
	b _08055646
	.align 2, 0
_0805568C: .4byte 0xFFFFFE00
_08055690:
	adds r3, #0xc
	b _08055646
_08055694:
	cmp r3, #0
	beq _080556C6
	str r6, [r1, #8]
	strh r5, [r1, #2]
	mov r2, ip
	strh r2, [r1, #4]
	movs r0, #4
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _080556C6
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080556C6
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080556C6:
	ldrb r1, [r7, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08055784
	movs r2, #0x80
	lsls r2, r2, #2
	adds r6, r7, r2
	ldrb r0, [r6]
	add r0, sb
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _08055784
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _080556F0
	rsbs r0, r0, #0
_080556F0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _08055784
	cmp r5, r0
	bne _08055706
	ldrh r0, [r6, #8]
	cmp ip, r0
	bhs _08055784
_08055706:
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_0805570A:
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _08055714
	bl _08056112
_08055714:
	cmp r0, r6
	bne _0805573A
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805573A
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _0805573A
	cmp r0, r5
	beq _08055730
	bl _08056112
_08055730:
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _0805573A
	bl _08056112
_0805573A:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _0805574A
	adds r2, r0, #0
	cmp r2, r1
	blt _0805574E
_0805574A:
	ldr r3, [r4, #8]
	b _0805570A
_0805574E:
	adds r3, #0xc
	b _0805570A
sub_08055752:
	cmp r3, #0
	beq _08055784
	str r6, [r1, #8]
	strh r5, [r1, #2]
	mov r2, ip
	strh r2, [r1, #4]
	movs r0, #2
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08055784
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08055784
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08055784:
	ldrb r1, [r7, #3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08055790
	b _08055A94
_08055790:
	ldrb r1, [r7, #2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08055852
	mov r2, r8
	lsls r0, r2, #0x10
	adds r6, r7, #0
	adds r6, #0x20
	lsrs r0, r0, #0x10
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _08055852
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _080557BE
	rsbs r0, r0, #0
_080557BE:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _08055852
	cmp r5, r0
	bne _080557D4
	ldrh r2, [r6, #8]
	cmp ip, r2
	bhs _08055852
_080557D4:
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_080557D8:
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _080557E2
	bl _0805610C
_080557E2:
	cmp r0, r6
	bne _08055808
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08055808
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08055808
	cmp r0, r5
	beq _080557FE
	bl _0805610C
_080557FE:
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _08055808
	bl _0805610C
_08055808:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _08055818
	adds r2, r0, #0
	cmp r2, r1
	blt _0805581C
_08055818:
	ldr r3, [r4, #8]
	b _080557D8
_0805581C:
	adds r3, #0xc
	b _080557D8

	thumb_func_start sub_08055820
sub_08055820: @ 0x08055820
	cmp r3, #0
	beq _08055852
	str r6, [r1, #8]
	strh r5, [r1, #2]
	mov r0, ip
	strh r0, [r1, #4]
	movs r0, #7
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08055852
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08055852
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08055852:
	ldrb r1, [r7, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08055914
	mov r2, r8
	lsls r0, r2, #0x10
	adds r6, r7, #0
	subs r6, #0x20
	lsrs r0, r0, #0x10
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _08055914
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _08055880
	rsbs r0, r0, #0
_08055880:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _08055914
	cmp r5, r0
	bne _08055896
	ldrh r2, [r6, #8]
	cmp ip, r2
	bhs _08055914
_08055896:
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_0805589A:
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _080558A4
	bl _08056106
_080558A4:
	cmp r0, r6
	bne _080558CA
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080558CA
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _080558CA
	cmp r0, r5
	beq _080558C0
	bl _08056106
_080558C0:
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _080558CA
	bl _08056106
_080558CA:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _080558DA
	adds r2, r0, #0
	cmp r2, r1
	blt _080558DE
_080558DA:
	ldr r3, [r4, #8]
	b _0805589A
_080558DE:
	adds r3, #0xc
	b _0805589A
sub_080558E2:
	cmp r3, #0
	beq _08055914
	str r6, [r1, #8]
	strh r5, [r1, #2]
	mov r0, ip
	strh r0, [r1, #4]
	movs r0, #5
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08055914
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08055914
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08055914:
	ldrb r1, [r7, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080559D6
	mov r2, r8
	lsls r0, r2, #0x10
	ldr r1, _0805599C @ =0xFFFFFC00
	adds r6, r7, r1
	lsrs r0, r0, #0x10
	ldrb r2, [r6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _080559D6
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _08055942
	rsbs r0, r0, #0
_08055942:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _080559D6
	cmp r5, r0
	bne _08055958
	ldrh r0, [r6, #8]
	cmp ip, r0
	bhs _080559D6
_08055958:
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_0805595C:
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _08055964
	b _08056102
_08055964:
	cmp r0, r6
	bne _08055986
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08055986
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08055986
	cmp r0, r5
	beq _0805597E
	b _08056102
_0805597E:
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _08055986
	b _08056102
_08055986:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _08055996
	adds r2, r0, #0
	cmp r2, r1
	blt _080559A0
_08055996:
	ldr r3, [r4, #8]
	b _0805595C
	.align 2, 0
_0805599C: .4byte 0xFFFFFC00
_080559A0:
	adds r3, #0xc
	b _0805595C
_080559A4:
	cmp r3, #0
	beq _080559D6
	str r6, [r1, #8]
	strh r5, [r1, #2]
	mov r2, ip
	strh r2, [r1, #4]
	movs r0, #8
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _080559D6
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080559D6
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080559D6:
	ldrb r1, [r7, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08055A94
	mov r2, r8
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #3
	adds r6, r7, r1
	lsrs r0, r0, #0x10
	ldrb r2, [r6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _08055A94
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, r1, r0
	cmp r0, #0
	bge _08055A06
	rsbs r0, r0, #0
_08055A06:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _08055A94
	cmp r5, r0
	bne _08055A1C
	ldrh r0, [r6, #8]
	cmp ip, r0
	bhs _08055A94
_08055A1C:
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_08055A20:
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _08055A28
	b _080560FE
_08055A28:
	cmp r0, r6
	bne _08055A4A
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08055A4A
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _08055A4A
	cmp r0, r5
	beq _08055A42
	b _080560FE
_08055A42:
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _08055A4A
	b _080560FE
_08055A4A:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _08055A5A
	adds r2, r0, #0
	cmp r2, r1
	blt _08055A5E
_08055A5A:
	ldr r3, [r4, #8]
	b _08055A20
_08055A5E:
	adds r3, #0xc
	b _08055A20
_08055A62:
	cmp r3, #0
	beq _08055A94
	str r6, [r1, #8]
	strh r5, [r1, #2]
	mov r2, ip
	strh r2, [r1, #4]
	movs r0, #6
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08055A94
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08055A94
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08055A94:
	ldrh r1, [r7, #0xc]
	movs r5, #0xf
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0xa
	bne _08055AA4
	bl _08056DDA
_08055AA4:
	mov r8, sl
	ldr r3, [r7, #4]
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _08055AB2
	bl _08056DDA
_08055AB2:
	ldrh r2, [r7, #0xe]
	cmp sb, r2
	bls _08055ABC
	bl _08056DDA
_08055ABC:
	adds r0, r5, #0
	ands r0, r1
	movs r1, #0x90
	orrs r0, r1
	strh r0, [r7, #0xc]
	movs r0, #1
	ands r3, r0
	add r0, r8
	mov sl, r0
	cmp r3, #0
	beq _08055B8C
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	adds r6, #0x10
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08055AEA
	rsbs r1, r1, #0
_08055AEA:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08055B8C
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08055B8C
	cmp r0, r5
	bne _08055B00
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _08055B8C
_08055B00:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov sb, r0
	movs r0, #1
	add r0, r8
	mov sl, r0
_08055B12:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08055B1A
	b _080560FA
_08055B1A:
	cmp r0, r6
	bne _08055B3C
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08055B3C
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08055B3C
	cmp r0, r5
	beq _08055B34
	b _080560FA
_08055B34:
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08055B3C
	b _080560FA
_08055B3C:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08055B46
	ldr r2, [r4, #8]
	b _08055B48
_08055B46:
	adds r2, #0xc
_08055B48:
	movs r1, #0
	cmp r3, r0
	bge _08055B50
	adds r1, r3, #1
_08055B50:
	adds r3, r1, #0
	b _08055B12
_08055B54:
	cmp r2, #0
	beq _08055B8C
	movs r0, #1
	strh r0, [r1]
	mov r2, sb
	lsrs r0, r2, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #3
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08055B8C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08055B8C
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08055B8C:
	ldr r0, [r7, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08055C4A
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	subs r6, #0x10
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08055BAE
	rsbs r1, r1, #0
_08055BAE:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08055C4A
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08055C4A
	cmp r0, r5
	bne _08055BC4
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _08055C4A
_08055BC4:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov sb, r0
_08055BD0:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08055BD8
	b _080560F6
_08055BD8:
	cmp r0, r6
	bne _08055BFA
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08055BFA
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08055BFA
	cmp r0, r5
	beq _08055BF2
	b _080560F6
_08055BF2:
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08055BFA
	b _080560F6
_08055BFA:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08055C04
	ldr r2, [r4, #8]
	b _08055C06
_08055C04:
	adds r2, #0xc
_08055C06:
	movs r1, #0
	cmp r3, r0
	bge _08055C0E
	adds r1, r3, #1
_08055C0E:
	adds r3, r1, #0
	b _08055BD0
_08055C12:
	cmp r2, #0
	beq _08055C4A
	movs r0, #1
	strh r0, [r1]
	mov r2, sb
	lsrs r0, r2, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #1
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08055C4A
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08055C4A
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08055C4A:
	ldr r0, [r7, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08055D0E
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08055CC4 @ =0xFFFFFE00
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08055C6C
	rsbs r1, r1, #0
_08055C6C:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08055D0E
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08055D0E
	cmp r0, r5
	bne _08055C82
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _08055D0E
_08055C82:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov sb, r0
_08055C8E:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08055C96
	b _080560F2
_08055C96:
	cmp r0, r6
	bne _08055CB8
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08055CB8
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08055CB8
	cmp r0, r5
	beq _08055CB0
	b _080560F2
_08055CB0:
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08055CB8
	b _080560F2
_08055CB8:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08055CC8
	ldr r2, [r4, #8]
	b _08055CCA
	.align 2, 0
_08055CC4: .4byte 0xFFFFFE00
_08055CC8:
	adds r2, #0xc
_08055CCA:
	movs r1, #0
	cmp r3, r0
	bge _08055CD2
	adds r1, r3, #1
_08055CD2:
	adds r3, r1, #0
	b _08055C8E
_08055CD6:
	cmp r2, #0
	beq _08055D0E
	movs r0, #1
	strh r0, [r1]
	mov r2, sb
	lsrs r0, r2, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #4
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08055D0E
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08055D0E
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08055D0E:
	ldr r0, [r7, #4]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08055DCE
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #2
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08055D32
	rsbs r1, r1, #0
_08055D32:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08055DCE
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08055DCE
	cmp r0, r5
	bne _08055D48
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _08055DCE
_08055D48:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov r8, r0
_08055D54:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08055D5C
	b _080560EE
_08055D5C:
	cmp r0, r6
	bne _08055D7E
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08055D7E
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08055D7E
	cmp r0, r5
	beq _08055D76
	b _080560EE
_08055D76:
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08055D7E
	b _080560EE
_08055D7E:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08055D88
	ldr r2, [r4, #8]
	b _08055D8A
_08055D88:
	adds r2, #0xc
_08055D8A:
	movs r1, #0
	cmp r3, r0
	bge _08055D92
	adds r1, r3, #1
_08055D92:
	adds r3, r1, #0
	b _08055D54
_08055D96:
	cmp r2, #0
	beq _08055DCE
	movs r0, #1
	strh r0, [r1]
	mov r2, r8
	lsrs r0, r2, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #2
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08055DCE
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08055DCE
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08055DCE:
	mov r8, sl
	ldr r0, [r7, #4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08055E8E
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	adds r6, #0x20
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08055DF2
	rsbs r1, r1, #0
_08055DF2:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08055E8E
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08055E8E
	cmp r0, r5
	bne _08055E08
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _08055E8E
_08055E08:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov sb, r0
_08055E14:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08055E1C
	b _080560EA
_08055E1C:
	cmp r0, r6
	bne _08055E3E
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08055E3E
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08055E3E
	cmp r0, r5
	beq _08055E36
	b _080560EA
_08055E36:
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08055E3E
	b _080560EA
_08055E3E:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08055E48
	ldr r2, [r4, #8]
	b _08055E4A
_08055E48:
	adds r2, #0xc
_08055E4A:
	movs r1, #0
	cmp r3, r0
	bge _08055E52
	adds r1, r3, #1
_08055E52:
	adds r3, r1, #0
	b _08055E14
_08055E56:
	cmp r2, #0
	beq _08055E8E
	movs r0, #1
	strh r0, [r1]
	mov r2, sb
	lsrs r0, r2, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #7
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08055E8E
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08055E8E
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08055E8E:
	ldr r0, [r7, #4]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08055F4C
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	subs r6, #0x20
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08055EB0
	rsbs r1, r1, #0
_08055EB0:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08055F4C
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08055F4C
	cmp r0, r5
	bne _08055EC6
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _08055F4C
_08055EC6:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov sb, r0
_08055ED2:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08055EDA
	b _080560E6
_08055EDA:
	cmp r0, r6
	bne _08055EFC
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08055EFC
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08055EFC
	cmp r0, r5
	beq _08055EF4
	b _080560E6
_08055EF4:
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08055EFC
	b _080560E6
_08055EFC:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08055F06
	ldr r2, [r4, #8]
	b _08055F08
_08055F06:
	adds r2, #0xc
_08055F08:
	movs r1, #0
	cmp r3, r0
	bge _08055F10
	adds r1, r3, #1
_08055F10:
	adds r3, r1, #0
	b _08055ED2
_08055F14:
	cmp r2, #0
	beq _08055F4C
	movs r0, #1
	strh r0, [r1]
	mov r2, sb
	lsrs r0, r2, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #5
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _08055F4C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08055F4C
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08055F4C:
	ldr r0, [r7, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805600E
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08055FC4 @ =0xFFFFFC00
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08055F6E
	rsbs r1, r1, #0
_08055F6E:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0805600E
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0805600E
	cmp r0, r5
	bne _08055F84
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _0805600E
_08055F84:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov sb, r0
_08055F90:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08055F98
	b _080560E2
_08055F98:
	cmp r0, r6
	bne _08055FBA
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08055FBA
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08055FBA
	cmp r0, r5
	beq _08055FB2
	b _080560E2
_08055FB2:
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08055FBA
	b _080560E2
_08055FBA:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08055FC8
	ldr r2, [r4, #8]
	b _08055FCA
	.align 2, 0
_08055FC4: .4byte 0xFFFFFC00
_08055FC8:
	adds r2, #0xc
_08055FCA:
	movs r1, #0
	cmp r3, r0
	bge _08055FD2
	adds r1, r3, #1
_08055FD2:
	adds r3, r1, #0
	b _08055F90
_08055FD6:
	cmp r2, #0
	beq _0805600E
	movs r0, #1
	strh r0, [r1]
	mov r2, sb
	lsrs r0, r2, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #8
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bne _0805600E
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0805600E
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805600E:
	ldr r0, [r7, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0805601C
	bl _08056DDA
_0805601C:
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #3
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08056036
	rsbs r1, r1, #0
_08056036:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bhi _08056040
	bl _08056DDA
_08056040:
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	bhs _0805604A
	bl _08056DDA
_0805604A:
	cmp r0, r5
	bne _08056058
	ldrh r2, [r6, #8]
	cmp r1, r2
	blt _08056058
	bl _08056DDA
_08056058:
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov r8, r0
_08056062:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080560DE
	cmp r0, r6
	bne _08056086
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08056086
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08056086
	cmp r0, r5
	bne _080560DE
	ldrh r0, [r2, #4]
	cmp r0, r7
	bhi _080560DE
_08056086:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08056090
	ldr r2, [r4, #8]
	b _08056092
_08056090:
	adds r2, #0xc
_08056092:
	movs r1, #0
	cmp r3, r0
	bge _0805609A
	adds r1, r3, #1
_0805609A:
	adds r3, r1, #0
	b _08056062
_0805609E:
	cmp r2, #0
	bne _080560A6
	bl _08056DDA
_080560A6:
	movs r0, #1
	strh r0, [r1]
	mov r2, r8
	lsrs r0, r2, #0x10
	str r6, [r1, #8]
	strh r5, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #6
	strb r0, [r1, #6]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	beq _080560C2
	bl _08056DDA
_080560C2:
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	bhs _080560DA
	bl _08056DDA
_080560DA:
	bl _08056DD2
_080560DE:
	adds r1, r2, #0
	b _0805609E
_080560E2:
	adds r1, r2, #0
	b _08055FD6
_080560E6:
	adds r1, r2, #0
	b _08055F14
_080560EA:
	adds r1, r2, #0
	b _08055E56
_080560EE:
	adds r1, r2, #0
	b _08055D96
_080560F2:
	adds r1, r2, #0
	b _08055CD6
_080560F6:
	adds r1, r2, #0
	b _08055C12
_080560FA:
	adds r1, r2, #0
	b _08055B54
_080560FE:
	adds r1, r3, #0
	b _08055A62
_08056102:
	adds r1, r3, #0
	b _080559A4
_08056106:
	adds r1, r3, #0
	bl sub_080558E2
_0805610C:
	adds r1, r3, #0
	bl sub_08055820
_08056112:
	adds r1, r3, #0
	bl sub_08055752
_08056118:
	adds r1, r3, #0
	bl _08055694
_0805611E:
	adds r1, r3, #0
	bl sub_080555D2
_08056124:
	adds r1, r3, #0
	bl sub_08055516
_0805612A:
	ldrh r0, [r7, #0xe]
	cmp r0, sb
	bhi _08056134
	bl _08056DDA
_08056134:
	ldrh r1, [r7, #0xc]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x90
	bne _08056142
	bl _08056DDA
_08056142:
	mov r2, sb
	strh r2, [r7, #0xe]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	lsls r1, r6, #4
	orrs r0, r1
	strh r0, [r7, #0xc]
	ldr r1, [r7, #4]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08056160
	b _080567C2
_08056160:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	movs r0, #1
	add r0, sb
	mov sl, r0
	cmp r1, #0
	beq _08056230
	adds r6, r7, #0
	adds r6, #0x10
	ldrb r0, [r7, #0x10]
	add r0, sb
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r5
	blo _08056230
	ldrb r0, [r6, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08056190
	rsbs r0, r0, #0
_08056190:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r6, #0xa]
	cmp r5, r0
	bhi _08056230
	cmp r5, r0
	bne _080561A6
	ldrh r1, [r6, #8]
	cmp ip, r1
	bhs _08056230
_080561A6:
	ldrh r0, [r6, #0xc]
	adds r1, r2, #0
	ands r1, r0
	movs r0, #0x30
	orrs r1, r0
	strh r1, [r6, #0xc]
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
	movs r0, #1
	add r0, sb
	mov sl, r0
_080561BC:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080561E0
	cmp r0, r6
	bne _080561E4
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080561E4
	ldrh r0, [r3, #2]
	cmp r0, r5
	blo _080561E4
	cmp r0, r5
	bne _080561E0
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _080561E4
_080561E0:
	adds r1, r3, #0
	b _080561FC
_080561E4:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _080561F4
	adds r2, r0, #0
	cmp r2, r1
	blt _080561F8
_080561F4:
	ldr r3, [r4, #8]
	b _080561BC
_080561F8:
	adds r3, #0xc
	b _080561BC
_080561FC:
	cmp r3, #0
	beq _08056230
	movs r0, #0xa
	str r6, [r1, #8]
	strh r5, [r1, #2]
	mov r2, ip
	strh r2, [r1, #4]
	strb r0, [r1, #6]
	ldr r3, [r4, #0xc]
	cmp r3, r1
	bne _08056230
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, r3, #0
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08056230
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08056230:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080562F6
	adds r5, r7, #0
	subs r5, #0x10
	ldrb r0, [r5]
	add r0, sb
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _080562F6
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _0805625C
	rsbs r0, r0, #0
_0805625C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _080562F6
	cmp r6, r0
	bne _08056272
	ldrh r2, [r5, #8]
	cmp ip, r2
	bhs _080562F6
_08056272:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_08056282:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080562A6
	cmp r0, r5
	bne _080562AA
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080562AA
	ldrh r0, [r3, #2]
	cmp r0, r6
	blo _080562AA
	cmp r0, r6
	bne _080562A6
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _080562AA
_080562A6:
	adds r1, r3, #0
	b _080562C2
_080562AA:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _080562BA
	adds r2, r0, #0
	cmp r2, r1
	blt _080562BE
_080562BA:
	ldr r3, [r4, #8]
	b _08056282
_080562BE:
	adds r3, #0xc
	b _08056282
_080562C2:
	cmp r3, #0
	beq _080562F6
	movs r0, #0xa
	str r5, [r1, #8]
	strh r6, [r1, #2]
	mov r2, ip
	strh r2, [r1, #4]
	strb r0, [r1, #6]
	ldr r3, [r4, #0xc]
	cmp r3, r1
	bne _080562F6
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, r3, #0
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080562F6
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080562F6:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080563C0
	ldr r2, _08056370 @ =0xFFFFFE00
	adds r5, r7, r2
	ldrb r0, [r5]
	add r0, sb
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _080563C0
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08056322
	rsbs r0, r0, #0
_08056322:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _080563C0
	cmp r6, r0
	bne _08056338
	ldrh r0, [r5, #8]
	cmp ip, r0
	bhs _080563C0
_08056338:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_08056348:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0805636C
	cmp r0, r5
	bne _08056374
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08056374
	ldrh r0, [r3, #2]
	cmp r0, r6
	blo _08056374
	cmp r0, r6
	bne _0805636C
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _08056374
_0805636C:
	adds r1, r3, #0
	b _0805638C
	.align 2, 0
_08056370: .4byte 0xFFFFFE00
_08056374:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _08056384
	adds r2, r0, #0
	cmp r2, r1
	blt _08056388
_08056384:
	ldr r3, [r4, #8]
	b _08056348
_08056388:
	adds r3, #0xc
	b _08056348
_0805638C:
	cmp r3, #0
	beq _080563C0
	movs r0, #0xa
	str r5, [r1, #8]
	strh r6, [r1, #2]
	mov r2, ip
	strh r2, [r1, #4]
	strb r0, [r1, #6]
	ldr r3, [r4, #0xc]
	cmp r3, r1
	bne _080563C0
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, r3, #0
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080563C0
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080563C0:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08056488
	movs r3, #0x20
	movs r2, #0x80
	lsls r2, r2, #2
	adds r5, r7, r2
	ldrb r0, [r5]
	add r0, sb
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _08056488
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _080563F0
	rsbs r0, r0, #0
_080563F0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _08056488
	cmp r6, r0
	bne _08056406
	ldrh r0, [r5, #8]
	cmp ip, r0
	bhs _08056488
_08056406:
	ldrh r1, [r5, #0xc]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #0xc]
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_08056414:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08056438
	cmp r0, r5
	bne _0805643C
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805643C
	ldrh r0, [r3, #2]
	cmp r0, r6
	blo _0805643C
	cmp r0, r6
	bne _08056438
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _0805643C
_08056438:
	adds r1, r3, #0
	b _08056454
_0805643C:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _0805644C
	adds r2, r0, #0
	cmp r2, r1
	blt _08056450
_0805644C:
	ldr r3, [r4, #8]
	b _08056414
_08056450:
	adds r3, #0xc
	b _08056414
_08056454:
	cmp r3, #0
	beq _08056488
	movs r0, #0xa
	str r5, [r1, #8]
	strh r6, [r1, #2]
	mov r2, ip
	strh r2, [r1, #4]
	strb r0, [r1, #6]
	ldr r3, [r4, #0xc]
	cmp r3, r1
	bne _08056488
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, r3, #0
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08056488
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08056488:
	mov r8, sl
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08056556
	mov r2, r8
	lsls r0, r2, #0x10
	adds r5, r7, #0
	adds r5, #0x20
	lsrs r0, r0, #0x10
	ldrb r1, [r5]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _08056556
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _080564BC
	rsbs r0, r0, #0
_080564BC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _08056556
	cmp r6, r0
	bne _080564D2
	ldrh r2, [r5, #8]
	cmp ip, r2
	bhs _08056556
_080564D2:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x70
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_080564E2:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08056506
	cmp r0, r5
	bne _0805650A
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805650A
	ldrh r0, [r3, #2]
	cmp r0, r6
	blo _0805650A
	cmp r0, r6
	bne _08056506
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _0805650A
_08056506:
	adds r1, r3, #0
	b _08056522
_0805650A:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _0805651A
	adds r2, r0, #0
	cmp r2, r1
	blt _0805651E
_0805651A:
	ldr r3, [r4, #8]
	b _080564E2
_0805651E:
	adds r3, #0xc
	b _080564E2
_08056522:
	cmp r3, #0
	beq _08056556
	movs r0, #0xa
	str r5, [r1, #8]
	strh r6, [r1, #2]
	mov r2, ip
	strh r2, [r1, #4]
	strb r0, [r1, #6]
	ldr r3, [r4, #0xc]
	cmp r3, r1
	bne _08056556
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, r3, #0
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08056556
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08056556:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08056622
	mov r2, r8
	lsls r0, r2, #0x10
	adds r5, r7, #0
	subs r5, #0x20
	lsrs r0, r0, #0x10
	ldrb r1, [r5]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _08056622
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08056588
	rsbs r0, r0, #0
_08056588:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _08056622
	cmp r6, r0
	bne _0805659E
	ldrh r2, [r5, #8]
	cmp ip, r2
	bhs _08056622
_0805659E:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x50
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_080565AE:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080565D2
	cmp r0, r5
	bne _080565D6
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080565D6
	ldrh r0, [r3, #2]
	cmp r0, r6
	blo _080565D6
	cmp r0, r6
	bne _080565D2
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _080565D6
_080565D2:
	adds r1, r3, #0
	b _080565EE
_080565D6:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _080565E6
	adds r2, r0, #0
	cmp r2, r1
	blt _080565EA
_080565E6:
	ldr r3, [r4, #8]
	b _080565AE
_080565EA:
	adds r3, #0xc
	b _080565AE
_080565EE:
	cmp r3, #0
	beq _08056622
	movs r0, #0xa
	str r5, [r1, #8]
	strh r6, [r1, #2]
	mov r2, ip
	strh r2, [r1, #4]
	strb r0, [r1, #6]
	ldr r3, [r4, #0xc]
	cmp r3, r1
	bne _08056622
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, r3, #0
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08056622
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08056622:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080566F4
	mov r2, r8
	lsls r0, r2, #0x10
	ldr r1, _080566A4 @ =0xFFFFFC00
	adds r5, r7, r1
	lsrs r0, r0, #0x10
	ldrb r2, [r5]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _080566F4
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08056654
	rsbs r0, r0, #0
_08056654:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _080566F4
	cmp r6, r0
	bne _0805666A
	ldrh r0, [r5, #8]
	cmp ip, r0
	bhs _080566F4
_0805666A:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x80
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_0805667A:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0805669E
	cmp r0, r5
	bne _080566A8
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080566A8
	ldrh r0, [r3, #2]
	cmp r0, r6
	blo _080566A8
	cmp r0, r6
	bne _0805669E
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _080566A8
_0805669E:
	adds r1, r3, #0
	b _080566C0
	.align 2, 0
_080566A4: .4byte 0xFFFFFC00
_080566A8:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _080566B8
	adds r2, r0, #0
	cmp r2, r1
	blt _080566BC
_080566B8:
	ldr r3, [r4, #8]
	b _0805667A
_080566BC:
	adds r3, #0xc
	b _0805667A
_080566C0:
	cmp r3, #0
	beq _080566F4
	movs r0, #0xa
	str r5, [r1, #8]
	strh r6, [r1, #2]
	mov r2, ip
	strh r2, [r1, #4]
	strb r0, [r1, #6]
	ldr r3, [r4, #0xc]
	cmp r3, r1
	bne _080566F4
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, r3, #0
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080566F4
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080566F4:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080567C2
	mov r2, r8
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #3
	adds r5, r7, r1
	lsrs r0, r0, #0x10
	ldrb r2, [r5]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r0, r6
	blo _080567C2
	ldrb r0, [r5, #1]
	subs r0, #3
	ldrb r1, [r7, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _08056728
	rsbs r0, r0, #0
_08056728:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhi _080567C2
	cmp r6, r0
	bne _0805673E
	ldrh r0, [r5, #8]
	cmp ip, r0
	bhs _080567C2
_0805673E:
	ldrh r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x60
	orrs r1, r0
	strh r1, [r5, #0xc]
	ldrh r2, [r4, #4]
	ldr r3, [r4, #0x10]
_0805674E:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08056772
	cmp r0, r5
	bne _08056776
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08056776
	ldrh r0, [r3, #2]
	cmp r0, r6
	blo _08056776
	cmp r0, r6
	bne _08056772
	ldrh r0, [r3, #4]
	cmp r0, ip
	bls _08056776
_08056772:
	adds r1, r3, #0
	b _0805678E
_08056776:
	adds r0, r2, #1
	ldrh r1, [r4]
	movs r2, #0
	cmp r0, r1
	bge _08056786
	adds r2, r0, #0
	cmp r2, r1
	blt _0805678A
_08056786:
	ldr r3, [r4, #8]
	b _0805674E
_0805678A:
	adds r3, #0xc
	b _0805674E
_0805678E:
	cmp r3, #0
	beq _080567C2
	movs r0, #0xa
	str r5, [r1, #8]
	strh r6, [r1, #2]
	mov r2, ip
	strh r2, [r1, #4]
	strb r0, [r1, #6]
	ldr r3, [r4, #0xc]
	cmp r3, r1
	bne _080567C2
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, r3, #0
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _080567C2
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_080567C2:
	ldr r1, [r7, #4]
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080567D0
	b _08056DDA
_080567D0:
	movs r2, #1
	add r2, sb
	mov r8, r2
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _08056890
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	adds r6, #0x10
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _080567F6
	rsbs r1, r1, #0
_080567F6:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08056890
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08056890
	cmp r0, r5
	bne _0805680C
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _08056890
_0805680C:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov sb, r0
_08056818:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _0805683C
	cmp r0, r6
	bne _08056840
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08056840
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08056840
	cmp r0, r5
	bne _0805683C
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08056840
_0805683C:
	adds r3, r2, #0
	b _08056858
_08056840:
	ldrh r0, [r4]
	cmp r3, r0
	blt _0805684A
	ldr r2, [r4, #8]
	b _0805684C
_0805684A:
	adds r2, #0xc
_0805684C:
	movs r1, #0
	cmp r3, r0
	bge _08056854
	adds r1, r3, #1
_08056854:
	adds r3, r1, #0
	b _08056818
_08056858:
	cmp r2, #0
	beq _08056890
	movs r0, #1
	strh r0, [r3]
	mov r2, sb
	lsrs r0, r2, #0x10
	str r6, [r3, #8]
	strh r5, [r3, #2]
	strh r0, [r3, #4]
	movs r0, #3
	strb r0, [r3, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r3
	bne _08056890
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08056890
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08056890:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	movs r2, #1
	add r2, r8
	mov sl, r2
	cmp r0, #0
	beq _0805695A
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	subs r6, #0x10
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _080568BA
	rsbs r1, r1, #0
_080568BA:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _0805695A
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _0805695A
	cmp r0, r5
	bne _080568D0
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _0805695A
_080568D0:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	movs r1, #1
	add r1, r8
	mov sl, r1
	mov sb, r0
_080568E2:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08056906
	cmp r0, r6
	bne _0805690A
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805690A
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _0805690A
	cmp r0, r5
	bne _08056906
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _0805690A
_08056906:
	adds r3, r2, #0
	b _08056922
_0805690A:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08056914
	ldr r2, [r4, #8]
	b _08056916
_08056914:
	adds r2, #0xc
_08056916:
	movs r1, #0
	cmp r3, r0
	bge _0805691E
	adds r1, r3, #1
_0805691E:
	adds r3, r1, #0
	b _080568E2
_08056922:
	cmp r2, #0
	beq _0805695A
	movs r0, #1
	strh r0, [r3]
	mov r2, sb
	lsrs r0, r2, #0x10
	str r6, [r3, #8]
	strh r5, [r3, #2]
	strh r0, [r3, #4]
	movs r0, #1
	strb r0, [r3, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r3
	bne _0805695A
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _0805695A
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0805695A:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08056A1C
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _080569C8 @ =0xFFFFFE00
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _0805697E
	rsbs r1, r1, #0
_0805697E:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08056A1C
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08056A1C
	cmp r0, r5
	bne _08056994
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _08056A1C
_08056994:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov sb, r0
_080569A0:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080569C4
	cmp r0, r6
	bne _080569CC
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080569CC
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _080569CC
	cmp r0, r5
	bne _080569C4
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _080569CC
_080569C4:
	adds r3, r2, #0
	b _080569E4
	.align 2, 0
_080569C8: .4byte 0xFFFFFE00
_080569CC:
	ldrh r0, [r4]
	cmp r3, r0
	blt _080569D6
	ldr r2, [r4, #8]
	b _080569D8
_080569D6:
	adds r2, #0xc
_080569D8:
	movs r1, #0
	cmp r3, r0
	bge _080569E0
	adds r1, r3, #1
_080569E0:
	adds r3, r1, #0
	b _080569A0
_080569E4:
	cmp r2, #0
	beq _08056A1C
	movs r0, #1
	strh r0, [r3]
	mov r2, sb
	lsrs r0, r2, #0x10
	str r6, [r3, #8]
	strh r5, [r3, #2]
	strh r0, [r3, #4]
	movs r0, #4
	strb r0, [r3, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r3
	bne _08056A1C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08056A1C
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08056A1C:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08056ADC
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #2
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08056A42
	rsbs r1, r1, #0
_08056A42:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08056ADC
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08056ADC
	cmp r0, r5
	bne _08056A58
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _08056ADC
_08056A58:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov r8, r0
_08056A64:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08056A88
	cmp r0, r6
	bne _08056A8C
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08056A8C
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08056A8C
	cmp r0, r5
	bne _08056A88
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08056A8C
_08056A88:
	adds r3, r2, #0
	b _08056AA4
_08056A8C:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08056A96
	ldr r2, [r4, #8]
	b _08056A98
_08056A96:
	adds r2, #0xc
_08056A98:
	movs r1, #0
	cmp r3, r0
	bge _08056AA0
	adds r1, r3, #1
_08056AA0:
	adds r3, r1, #0
	b _08056A64
_08056AA4:
	cmp r2, #0
	beq _08056ADC
	movs r0, #1
	strh r0, [r3]
	mov r2, r8
	lsrs r0, r2, #0x10
	str r6, [r3, #8]
	strh r5, [r3, #2]
	strh r0, [r3, #4]
	movs r0, #2
	strb r0, [r3, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r3
	bne _08056ADC
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08056ADC
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08056ADC:
	mov r8, sl
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xd
	ands r0, r1
	cmp r0, #0
	beq _08056B9C
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	adds r6, #0x20
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08056B02
	rsbs r1, r1, #0
_08056B02:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08056B9C
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08056B9C
	cmp r0, r5
	bne _08056B18
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _08056B9C
_08056B18:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov sb, r0
_08056B24:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08056B48
	cmp r0, r6
	bne _08056B4C
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08056B4C
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08056B4C
	cmp r0, r5
	bne _08056B48
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08056B4C
_08056B48:
	adds r3, r2, #0
	b _08056B64
_08056B4C:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08056B56
	ldr r2, [r4, #8]
	b _08056B58
_08056B56:
	adds r2, #0xc
_08056B58:
	movs r1, #0
	cmp r3, r0
	bge _08056B60
	adds r1, r3, #1
_08056B60:
	adds r3, r1, #0
	b _08056B24
_08056B64:
	cmp r2, #0
	beq _08056B9C
	movs r0, #1
	strh r0, [r3]
	mov r2, sb
	lsrs r0, r2, #0x10
	str r6, [r3, #8]
	strh r5, [r3, #2]
	strh r0, [r3, #4]
	movs r0, #7
	strb r0, [r3, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r3
	bne _08056B9C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08056B9C
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08056B9C:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08056C5A
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r6, r7, #0
	subs r6, #0x20
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08056BC0
	rsbs r1, r1, #0
_08056BC0:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08056C5A
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08056C5A
	cmp r0, r5
	bne _08056BD6
	ldrh r0, [r6, #8]
	cmp r1, r0
	bge _08056C5A
_08056BD6:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov sb, r0
_08056BE2:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08056C06
	cmp r0, r6
	bne _08056C0A
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08056C0A
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08056C0A
	cmp r0, r5
	bne _08056C06
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08056C0A
_08056C06:
	adds r3, r2, #0
	b _08056C22
_08056C0A:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08056C14
	ldr r2, [r4, #8]
	b _08056C16
_08056C14:
	adds r2, #0xc
_08056C16:
	movs r1, #0
	cmp r3, r0
	bge _08056C1E
	adds r1, r3, #1
_08056C1E:
	adds r3, r1, #0
	b _08056BE2
_08056C22:
	cmp r2, #0
	beq _08056C5A
	movs r0, #1
	strh r0, [r3]
	mov r2, sb
	lsrs r0, r2, #0x10
	str r6, [r3, #8]
	strh r5, [r3, #2]
	strh r0, [r3, #4]
	movs r0, #5
	strb r0, [r3, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r3
	bne _08056C5A
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08056C5A
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08056C5A:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _08056D1C
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08056CC8 @ =0xFFFFFC00
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08056C7E
	rsbs r1, r1, #0
_08056C7E:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08056D1C
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08056D1C
	cmp r0, r5
	bne _08056C94
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _08056D1C
_08056C94:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov sb, r0
_08056CA0:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08056CC4
	cmp r0, r6
	bne _08056CCC
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08056CCC
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08056CCC
	cmp r0, r5
	bne _08056CC4
	ldrh r0, [r2, #4]
	cmp r0, ip
	bls _08056CCC
_08056CC4:
	adds r3, r2, #0
	b _08056CE4
	.align 2, 0
_08056CC8: .4byte 0xFFFFFC00
_08056CCC:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08056CD6
	ldr r2, [r4, #8]
	b _08056CD8
_08056CD6:
	adds r2, #0xc
_08056CD8:
	movs r1, #0
	cmp r3, r0
	bge _08056CE0
	adds r1, r3, #1
_08056CE0:
	adds r3, r1, #0
	b _08056CA0
_08056CE4:
	cmp r2, #0
	beq _08056D1C
	movs r0, #1
	strh r0, [r3]
	mov r2, sb
	lsrs r0, r2, #0x10
	str r6, [r3, #8]
	strh r5, [r3, #2]
	strh r0, [r3, #4]
	movs r0, #8
	strb r0, [r3, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r3
	bne _08056D1C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08056D1C
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08056D1C:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08056DDA
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #3
	adds r6, r7, r0
	ldrb r1, [r6, #1]
	ldrb r0, [r7, #1]
	subs r0, #3
	subs r1, r1, r0
	cmp r1, #0
	bge _08056D42
	rsbs r1, r1, #0
_08056D42:
	ldrh r0, [r6, #0xe]
	cmp r0, r5
	bls _08056DDA
	ldrh r0, [r6, #0xa]
	cmp r0, r5
	blo _08056DDA
	cmp r0, r5
	bne _08056D58
	ldrh r2, [r6, #8]
	cmp r1, r2
	bge _08056DDA
_08056D58:
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	ldrh r3, [r4, #4]
	ldr r2, [r4, #0x10]
	mov r8, r0
_08056D62:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08056D86
	cmp r0, r6
	bne _08056D8A
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08056D8A
	ldrh r0, [r2, #2]
	cmp r0, r5
	blo _08056D8A
	cmp r0, r5
	bne _08056D86
	ldrh r0, [r2, #4]
	cmp r0, r7
	bls _08056D8A
_08056D86:
	adds r3, r2, #0
	b _08056DA2
_08056D8A:
	ldrh r0, [r4]
	cmp r3, r0
	blt _08056D94
	ldr r2, [r4, #8]
	b _08056D96
_08056D94:
	adds r2, #0xc
_08056D96:
	movs r1, #0
	cmp r3, r0
	bge _08056D9E
	adds r1, r3, #1
_08056D9E:
	adds r3, r1, #0
	b _08056D62
_08056DA2:
	cmp r2, #0
	beq _08056DDA
	movs r0, #1
	strh r0, [r3]
	mov r1, r8
	lsrs r0, r1, #0x10
	str r6, [r3, #8]
	strh r5, [r3, #2]
	strh r0, [r3, #4]
	movs r0, #6
	strb r0, [r3, #6]
	ldr r1, [r4, #0xc]
	cmp r1, r3
	bne _08056DDA
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r1, #0xc
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r4]
	cmp r0, r2
	blo _08056DDA
_08056DD2:
	movs r0, #0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_08056DDA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08056DE8
sub_08056DE8: @ 0x08056DE8
	push {r4, r5, lr}
	ldr r1, _08056E0C @ =gUnk_03000FA0
	ldrh r2, [r1, #0x2c]
	movs r0, #0x20
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _08056E18
	ldr r1, _08056E10 @ =gUnk_02026C70
	ldr r0, _08056E14 @ =gUnk_0860EEC4
	ldrh r2, [r1, #8]
	ldrh r0, [r0]
	adds r4, r1, #0
	cmp r2, r0
	bls _08056E36
	subs r0, r2, r0
	b _08056E34
	.align 2, 0
_08056E0C: .4byte gUnk_03000FA0
_08056E10: .4byte gUnk_02026C70
_08056E14: .4byte gUnk_0860EEC4
_08056E18:
	movs r0, #0x10
	ands r0, r2
	ldr r4, _08056E5C @ =gUnk_02026C70
	cmp r0, #0
	beq _08056E36
	ldrh r3, [r4, #8]
	ldr r0, _08056E60 @ =gUnk_0860EEC4
	ldrh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	subs r0, r0, r2
	cmp r3, r0
	bge _08056E36
	adds r0, r3, r2
_08056E34:
	strh r0, [r4, #8]
_08056E36:
	ldrh r1, [r5, #0x2c]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08056E64
	ldrh r3, [r4, #0xa]
	ldr r0, _08056E60 @ =gUnk_0860EEC4
	ldrh r2, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	subs r0, r0, r2
	cmp r3, r0
	bge _08056E82
	adds r0, r3, r2
	strh r0, [r4, #0xa]
	b _08056E82
	.align 2, 0
_08056E5C: .4byte gUnk_02026C70
_08056E60: .4byte gUnk_0860EEC4
_08056E64:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08056E82
	ldr r0, _08056E7C @ =gUnk_0860EEC4
	ldrh r2, [r4, #0xa]
	ldrh r0, [r0]
	cmp r2, r0
	bls _08056E80
	subs r0, r2, r0
	strh r0, [r4, #0xa]
	b _08056E82
	.align 2, 0
_08056E7C: .4byte gUnk_0860EEC4
_08056E80:
	strh r3, [r4, #0xa]
_08056E82:
	ldrh r0, [r4, #8]
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0xa]
	strh r0, [r4, #0x12]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08056E90
sub_08056E90: @ 0x08056E90
	push {r4, r5, r6, lr}
	ldr r4, _08056ED8 @ =gUnk_03000FA0
	adds r6, r4, #0
	adds r6, #0x35
	ldrb r2, [r6]
	adds r5, r4, #0
	cmp r2, #0
	beq _08056F80
	cmp r2, #6
	beq _08056EEA
	ldrh r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08056EEA
	cmp r2, #5
	bne _08056EEA
	adds r0, r4, #0
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0xff
	bne _08056EDC
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x3c
	bl sub_080279E8
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	str r0, [r4, #0x44]
	str r1, [r4, #0x48]
	movs r0, #4
	strb r0, [r6]
	b _08056F86
	.align 2, 0
_08056ED8: .4byte gUnk_03000FA0
_08056EDC:
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x48]
	str r0, [r4, #0x3c]
	str r1, [r4, #0x40]
	movs r0, #8
	strb r0, [r6]
	b _08056F86
_08056EEA:
	adds r0, r5, #0
	adds r0, #0x95
	ldrb r0, [r0]
	cmp r0, #0
	bne _08056F86
	adds r4, r5, #0
	adds r4, #0x35
	ldrb r1, [r4]
	cmp r1, #4
	beq _08056F86
	adds r0, r5, #0
	adds r0, #0x51
	ldrb r0, [r0]
	cmp r0, #0
	bne _08056F52
	ldrh r2, [r5, #0x30]
	cmp r1, #6
	beq _08056F1C
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	bne _08056F52
_08056F1C:
	movs r0, #0xf0
	ands r0, r2
	cmp r0, #0
	beq _08056F86
	adds r0, r5, #0
	adds r0, #0x44
	movs r1, #0xff
	strh r1, [r0]
	subs r0, #0xe
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08056F86
	adds r0, r5, #0
	adds r0, #0x54
	ldr r1, [r5, #0x5c]
	ldr r2, [r5, #0x58]
	bl sub_08057410
	ldr r0, [r5, #0x54]
	bl sub_08057A94
	ldrb r0, [r4]
	cmp r0, #6
	beq _08056F86
	movs r0, #5
	strb r0, [r4]
	b _08056F86
_08056F52:
	ldr r0, _08056F78 @ =gUnk_02026C70
	ldr r0, [r0, #8]
	str r0, [r5, #0x54]
	ldrh r1, [r5, #0x2c]
	ldr r0, _08056F7C @ =0x0000030D
	ands r0, r1
	cmp r0, #0
	bne _08056F86
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08056F86
	adds r1, r5, #0
	adds r1, #0x35
	movs r0, #1
	strb r0, [r1]
	bl sub_08056F90
	b _08056F86
	.align 2, 0
_08056F78: .4byte gUnk_02026C70
_08056F7C: .4byte 0x0000030D
_08056F80:
	ldr r0, _08056F8C @ =gUnk_02026C70
	ldr r0, [r0, #8]
	str r0, [r4, #0x54]
_08056F86:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056F8C: .4byte gUnk_02026C70

	thumb_func_start sub_08056F90
sub_08056F90: @ 0x08056F90
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08057000 @ =gUnk_03000FA0
	ldrh r6, [r2, #0x3c]
	adds r0, r2, #0
	adds r0, #0x40
	ldrh r5, [r0]
	subs r0, #0xa
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08056FAC
	b _0805731E
_08056FAC:
	ldr r0, _08057004 @ =gUnk_02000000
	ldr r1, _08057008 @ =0x0000132C
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08056FBA
	b _08057182
_08056FBA:
	ldrh r1, [r2, #0x2e]
	movs r0, #0x20
	mov sb, r0
	ands r0, r1
	cmp r0, #0
	beq _0805700C
	cmp r6, #0
	beq _0805708C
	subs r4, r6, #1
	lsls r0, r4, #0x10
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08028800
	mov r1, sb
	ands r1, r0
	mov r8, r4
	cmp r1, #0
	bne _0805703E
	cmp r5, #0x1e
	bhi _08057068
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08028800
	mov r1, sb
	ands r1, r0
	cmp r1, #0
	bne _08057062
	b _08057068
	.align 2, 0
_08057000: .4byte gUnk_03000FA0
_08057004: .4byte gUnk_02000000
_08057008: .4byte 0x0000132C
_0805700C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805708C
	ldr r0, _08057044 @ =gUnk_02029CC0
	ldr r0, [r0]
	ldrb r1, [r0, #6]
	ldrb r0, [r0, #7]
	lsls r0, r0, #8
	orrs r0, r1
	subs r0, #1
	cmp r0, r6
	ble _0805708C
	adds r4, r6, #1
	lsls r0, r4, #0x10
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08028800
	mov r1, sb
	ands r1, r0
	mov r8, r4
	cmp r1, #0
	beq _08057048
_0805703E:
	adds r6, r7, #0
	b _0805708C
	.align 2, 0
_08057044: .4byte gUnk_02029CC0
_08057048:
	cmp r5, #0x1e
	bhi _08057068
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08028800
	mov r1, sb
	ands r1, r0
	cmp r1, #0
	beq _08057068
_08057062:
	adds r6, r7, #0
	adds r5, r4, #0
	b _0805708C
_08057068:
	cmp r5, #0
	beq _0805708C
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08028800
	movs r1, #0x20
	ands r1, r0
	cmp r1, #0
	beq _0805708C
	adds r6, r4, #0
	adds r5, r7, #0
_0805708C:
	ldr r0, _0805710C @ =gUnk_03000FA0
	ldrh r1, [r0, #0x2e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08057114
	ldr r0, _08057110 @ =gUnk_02029CC0
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	ldrb r0, [r0, #9]
	lsls r0, r0, #8
	orrs r0, r1
	subs r0, #1
	cmp r0, r5
	bgt _080570AC
	b _0805730E
_080570AC:
	adds r4, r5, #1
	lsls r0, r4, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08028800
	movs r1, #0x20
	mov sb, r1
	ands r1, r0
	mov r8, r4
	cmp r1, #0
	beq _080570C8
	b _0805730C
_080570C8:
	cmp r6, #0x1e
	bhi _080570E4
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08028800
	mov r1, sb
	ands r1, r0
	cmp r1, #0
	beq _080570E4
	b _0805730A
_080570E4:
	cmp r6, #0
	bne _080570EA
	b _0805730E
_080570EA:
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08028800
	movs r1, #0x20
	ands r1, r0
	cmp r1, #0
	bne _08057108
	b _0805730E
_08057108:
	b _080572E4
	.align 2, 0
_0805710C: .4byte gUnk_03000FA0
_08057110: .4byte gUnk_02029CC0
_08057114:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0805711E
	b _0805730E
_0805711E:
	cmp r5, #0
	bne _08057124
	b _0805730E
_08057124:
	subs r4, r5, #1
	lsls r0, r4, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08028800
	movs r1, #0x20
	mov sb, r1
	ands r1, r0
	mov r8, r4
	cmp r1, #0
	beq _08057140
	b _0805730C
_08057140:
	cmp r6, #0x1e
	bhi _0805715C
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08028800
	mov r1, sb
	ands r1, r0
	cmp r1, #0
	beq _0805715C
	b _0805730A
_0805715C:
	cmp r6, #0
	bne _08057162
	b _0805730E
_08057162:
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08028800
	movs r1, #0x20
	ands r1, r0
	cmp r1, #0
	bne _08057180
	b _0805730E
_08057180:
	b _080572E4
_08057182:
	ldrh r1, [r2, #0x2e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080571C6
	cmp r5, #0
	beq _08057244
	subs r4, r5, #1
	lsls r0, r4, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08028800
	movs r1, #0x20
	mov sb, r1
	ands r1, r0
	mov r8, r4
	cmp r1, #0
	bne _08057216
	cmp r6, #0x1e
	bhi _08057220
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08028800
	mov r1, sb
	ands r1, r0
	cmp r1, #0
	bne _08057214
	b _08057220
_080571C6:
	movs r0, #0x20
	mov sb, r0
	ands r0, r1
	cmp r0, #0
	beq _08057244
	ldr r0, _0805721C @ =gUnk_02029CC0
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	ldrb r0, [r0, #9]
	lsls r0, r0, #8
	orrs r0, r1
	subs r0, #1
	cmp r0, r5
	ble _08057244
	adds r4, r5, #1
	lsls r0, r4, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08028800
	mov r1, sb
	ands r1, r0
	mov r8, r4
	cmp r1, #0
	bne _08057216
	cmp r6, #0x1e
	bhi _08057220
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08028800
	mov r1, sb
	ands r1, r0
	cmp r1, #0
	beq _08057220
_08057214:
	adds r6, r4, #0
_08057216:
	adds r5, r7, #0
	b _08057244
	.align 2, 0
_0805721C: .4byte gUnk_02029CC0
_08057220:
	cmp r6, #0
	beq _08057244
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08028800
	movs r1, #0x20
	ands r1, r0
	cmp r1, #0
	beq _08057244
	adds r6, r7, #0
	adds r5, r4, #0
_08057244:
	ldr r0, _08057298 @ =gUnk_03000FA0
	ldrh r1, [r0, #0x2e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080572A0
	ldr r0, _0805729C @ =gUnk_02029CC0
	ldr r0, [r0]
	ldrb r1, [r0, #6]
	ldrb r0, [r0, #7]
	lsls r0, r0, #8
	orrs r0, r1
	subs r0, #1
	cmp r0, r6
	ble _0805730E
	adds r4, r6, #1
	lsls r0, r4, #0x10
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08028800
	movs r1, #0x20
	mov sb, r1
	ands r1, r0
	mov r8, r4
	cmp r1, #0
	bne _080572C6
	cmp r5, #0x1e
	bhi _080572EA
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08028800
	mov r1, sb
	ands r1, r0
	cmp r1, #0
	bne _080572E4
	b _080572EA
	.align 2, 0
_08057298: .4byte gUnk_03000FA0
_0805729C: .4byte gUnk_02029CC0
_080572A0:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805730E
	cmp r6, #0
	beq _0805730E
	subs r4, r6, #1
	lsls r0, r4, #0x10
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08028800
	movs r1, #0x20
	mov sb, r1
	ands r1, r0
	mov r8, r4
	cmp r1, #0
	beq _080572CA
_080572C6:
	adds r6, r7, #0
	b _0805730E
_080572CA:
	cmp r5, #0x1e
	bhi _080572EA
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08028800
	mov r1, sb
	ands r1, r0
	cmp r1, #0
	beq _080572EA
_080572E4:
	adds r6, r7, #0
	adds r5, r4, #0
	b _0805730E
_080572EA:
	cmp r5, #0
	beq _0805730E
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08028800
	movs r1, #0x20
	ands r1, r0
	cmp r1, #0
	beq _0805730E
_0805730A:
	adds r6, r4, #0
_0805730C:
	adds r5, r7, #0
_0805730E:
	ldr r2, _0805732C @ =gUnk_03000FA0
	ldr r0, [r2, #0x3c]
	ldr r1, [r2, #0x40]
	str r0, [r2, #0x44]
	str r1, [r2, #0x48]
	strh r6, [r2, #0x3c]
	adds r2, #0x40
	strh r5, [r2]
_0805731E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805732C: .4byte gUnk_03000FA0

	thumb_func_start sub_08057330
sub_08057330: @ 0x08057330
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, _08057374 @ =gUnk_03000FA0
	adds r1, r0, #0
	adds r1, #0x36
	ldrb r1, [r1]
	adds r2, r0, #0
	cmp r1, #0xff
	beq _08057408
	ldr r0, _08057378 @ =gUnk_02000000
	ldr r1, _0805737C @ =0x0000132C
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080573BC
	ldrh r1, [r2, #0x2c]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08057380
	ldrh r0, [r4]
	cmp r0, r7
	bls _08057392
	subs r0, #1
	b _08057390
	.align 2, 0
_08057374: .4byte gUnk_03000FA0
_08057378: .4byte gUnk_02000000
_0805737C: .4byte 0x0000132C
_08057380:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08057392
	ldrh r0, [r4]
	cmp r0, r5
	bhs _08057392
	adds r0, #1
_08057390:
	strh r0, [r4]
_08057392:
	ldrh r1, [r2, #0x2c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080573A8
	ldrh r0, [r4, #4]
	cmp r0, r3
	bhs _08057408
	adds r0, #1
	strh r0, [r4, #4]
	b _08057408
_080573A8:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08057408
	ldrh r0, [r4, #4]
	cmp r0, r6
	bls _08057408
	subs r0, #1
	strh r0, [r4, #4]
	b _08057408
_080573BC:
	ldrh r1, [r2, #0x2c]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080573D0
	ldrh r0, [r4, #4]
	cmp r0, r6
	bls _080573E2
	subs r0, #1
	b _080573E0
_080573D0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080573E2
	ldrh r0, [r4, #4]
	cmp r0, r3
	bhs _080573E2
	adds r0, #1
_080573E0:
	strh r0, [r4, #4]
_080573E2:
	ldrh r1, [r2, #0x2c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080573F6
	ldrh r0, [r4]
	cmp r0, r5
	bhs _08057408
	adds r0, #1
	b _08057406
_080573F6:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08057408
	ldrh r0, [r4]
	cmp r0, r7
	bls _08057408
	subs r0, #1
_08057406:
	strh r0, [r4]
_08057408:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08057410
sub_08057410: @ 0x08057410
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	movs r6, #8
	ldr r0, _08057440 @ =gUnk_03000FA0
	adds r1, r0, #0
	adds r1, #0x36
	ldrb r1, [r1]
	adds r5, r0, #0
	cmp r1, #0xff
	beq _08057486
	ldrh r1, [r5, #0x2c]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08057444
	ldrh r1, [r3]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bls _0805745C
	adds r0, r1, #0
	subs r0, #8
	b _0805745A
	.align 2, 0
_08057440: .4byte gUnk_03000FA0
_08057444:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805745C
	ldrh r1, [r3]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bhs _0805745C
	adds r0, r1, #0
	adds r0, #8
_0805745A:
	strh r0, [r3]
_0805745C:
	ldrh r1, [r5, #0x2c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08057472
	ldrh r1, [r3, #2]
	lsrs r0, r2, #0x10
	cmp r1, r0
	bhs _08057486
	adds r0, r6, r1
	b _08057484
_08057472:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08057486
	ldrh r1, [r3, #2]
	lsrs r0, r4, #0x10
	cmp r1, r0
	bls _08057486
	subs r0, r1, r6
_08057484:
	strh r0, [r3, #2]
_08057486:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805748C
sub_0805748C: @ 0x0805748C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _080574D0 @ =gUnk_03000FA0
	adds r1, r7, #0
	adds r1, #0x35
	ldrb r0, [r1]
	movs r2, #0x7f
	mov r8, r2
	mov r3, r8
	ands r3, r0
	mov r8, r3
	cmp r3, #0
	bne _080574AC
	b _08057634
_080574AC:
	cmp r3, #6
	bne _080574B2
	b _08057634
_080574B2:
	cmp r3, #5
	bne _080574B8
	b _08057634
_080574B8:
	adds r0, r7, #0
	adds r0, #0x97
	ldrb r0, [r0]
	cmp r0, #0
	beq _080574C4
	b _08057634
_080574C4:
	cmp r3, #8
	bne _080574D4
	movs r0, #7
	strb r0, [r1]
	b _08057634
	.align 2, 0
_080574D0: .4byte gUnk_03000FA0
_080574D4:
	mov r0, r8
	cmp r0, #7
	bne _080574E0
	movs r0, #1
	strb r0, [r1]
	b _08057634
_080574E0:
	adds r0, r7, #0
	adds r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _080574EC
	b _08057634
_080574EC:
	mov r0, r8
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08057500
	ldrb r0, [r1]
	bl sub_08057644
	b _08057634
_08057500:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	beq _0805751A
	adds r0, r7, #0
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0xff
	beq _0805751A
	adds r0, r7, #0
	adds r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0xff
	bne _08057522
_0805751A:
	movs r0, #0x83
	bl sub_08057644
	b _08057634
_08057522:
	ldr r4, _08057588 @ =gUnk_02029D40
	ldrb r0, [r4, #2]
	ldrb r2, [r4, #3]
	lsls r2, r2, #8
	orrs r2, r0
	ldrh r0, [r7, #0x3c]
	lsls r1, r0, #1
	adds r2, r2, r1
	adds r5, r7, #0
	adds r5, #0x40
	ldrh r1, [r5]
	lsls r3, r1, #1
	subs r2, r2, r3
	lsls r2, r2, #3
	movs r3, #0x80
	lsls r3, r3, #1
	mov sb, r3
	add r2, sb
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	bl sub_08028914
	ldrb r2, [r4, #4]
	ldrb r1, [r4, #5]
	lsls r1, r1, #8
	orrs r1, r2
	ldrh r7, [r7, #0x3c]
	adds r1, r1, r7
	ldrh r2, [r5]
	adds r2, r2, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r2, r2, r0
	lsls r2, r2, #3
	add r2, sb
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, _0805758C @ =gUnk_02026C70
	ldrh r1, [r3, #8]
	adds r0, r1, #0
	adds r0, #0x30
	cmp r6, r0
	bge _08057590
	adds r0, r6, #0
	subs r0, #0x30
	strh r0, [r3, #0x10]
	ldrh r0, [r3, #8]
	adds r0, #0x30
	subs r0, r0, r6
	b _080575A4
	.align 2, 0
_08057588: .4byte gUnk_02029D40
_0805758C: .4byte gUnk_02026C70
_08057590:
	adds r0, r1, #0
	adds r0, #0xa0
	cmp r6, r0
	ble _080575AA
	adds r0, r6, #0
	subs r0, #0xa0
	strh r0, [r3, #0x10]
	ldrh r0, [r3, #8]
	adds r0, #0xa0
	subs r0, r6, r0
_080575A4:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _080575AE
_080575AA:
	strh r1, [r3, #0x10]
	movs r5, #0
_080575AE:
	ldr r0, _080575CC @ =gUnk_02026C70
	ldrh r3, [r0, #0xa]
	adds r1, r3, #0
	adds r1, #0x38
	adds r4, r0, #0
	cmp r2, r1
	bge _080575D0
	adds r0, r2, #0
	subs r0, #0x38
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0xa]
	adds r0, #0x38
	subs r0, r0, r2
	b _080575E4
	.align 2, 0
_080575CC: .4byte gUnk_02026C70
_080575D0:
	adds r0, r3, #0
	adds r0, #0x70
	cmp r2, r0
	ble _080575EA
	adds r0, r2, #0
	subs r0, #0x70
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0xa]
	adds r0, #0x70
	subs r0, r2, r0
_080575E4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080575EE
_080575EA:
	strh r3, [r4, #0x12]
	movs r0, #0
_080575EE:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bgt _08057608
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bgt _08057608
	ldr r0, _08057604 @ =gUnk_03000FA0
	adds r0, #0x60
	b _0805760C
	.align 2, 0
_08057604: .4byte gUnk_03000FA0
_08057608:
	ldr r0, _08057640 @ =gUnk_03000FA0
	adds r0, #0x62
_0805760C:
	ldrh r0, [r0]
	strh r0, [r4, #0x14]
	bl sub_08027830
	ldr r2, _08057640 @ =gUnk_03000FA0
	ldrh r1, [r2, #0x3c]
	adds r0, r2, #0
	adds r0, #0x44
	strh r1, [r0]
	subs r0, #4
	ldrh r1, [r0]
	adds r0, #8
	strh r1, [r0]
	mov r0, r8
	cmp r0, #1
	bne _08057634
	ldr r0, [r2, #0x3c]
	ldr r1, [r2, #0x40]
	bl sub_08057768
_08057634:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057640: .4byte gUnk_03000FA0

	thumb_func_start sub_08057644
sub_08057644: @ 0x08057644
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r0, #0x7f
	mov r1, sb
	ands r0, r1
	cmp r0, #4
	beq _08057674
	cmp r0, #3
	beq _0805766A
	ldr r0, _080576CC @ =gUnk_03000FA0
	adds r0, #0x95
	ldrb r0, [r0]
	cmp r0, #1
	bne _08057674
_0805766A:
	ldr r0, _080576CC @ =gUnk_03000FA0
	ldr r1, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_08057768
_08057674:
	ldr r4, _080576D0 @ =gUnk_02029D40
	ldrb r0, [r4, #2]
	ldrb r2, [r4, #3]
	lsls r2, r2, #8
	orrs r2, r0
	ldr r5, _080576CC @ =gUnk_03000FA0
	ldrh r0, [r5, #0x3c]
	lsls r1, r0, #1
	adds r2, r2, r1
	adds r6, r5, #0
	adds r6, #0x40
	ldrh r1, [r6]
	lsls r3, r1, #1
	subs r2, r2, r3
	lsls r2, r2, #3
	movs r3, #0x80
	lsls r3, r3, #1
	mov r8, r3
	add r2, r8
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	bl sub_08028914
	ldrb r2, [r4, #4]
	ldrb r1, [r4, #5]
	lsls r1, r1, #8
	orrs r1, r2
	ldrh r5, [r5, #0x3c]
	adds r1, r1, r5
	ldrh r2, [r6]
	adds r2, r2, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r2, r2, r0
	lsls r2, r2, #3
	add r2, r8
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	cmp r7, #0x80
	bls _080576DC
	ldr r1, _080576D4 @ =gUnk_02026C70
	ldr r2, _080576D8 @ =0x0000FF90
	adds r0, r7, r2
	b _080576E0
	.align 2, 0
_080576CC: .4byte gUnk_03000FA0
_080576D0: .4byte gUnk_02029D40
_080576D4: .4byte gUnk_02026C70
_080576D8: .4byte 0x0000FF90
_080576DC:
	ldr r1, _080576EC @ =gUnk_02026C70
	movs r0, #0
_080576E0:
	strh r0, [r1, #0x10]
	cmp r4, #0x40
	bls _080576F0
	adds r0, r4, #0
	subs r0, #0x60
	b _080576F2
	.align 2, 0
_080576EC: .4byte gUnk_02026C70
_080576F0:
	movs r0, #0
_080576F2:
	strh r0, [r1, #0x12]
	movs r0, #0x80
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _08057708
	ldr r0, _08057704 @ =0x0000FFFF
	b _0805770E
	.align 2, 0
_08057704: .4byte 0x0000FFFF
_08057708:
	ldr r0, _08057760 @ =gUnk_03000FA0
	adds r0, #0x62
	ldrh r0, [r0]
_0805770E:
	strh r0, [r1, #0x14]
	bl sub_08027830
	ldr r3, _08057760 @ =gUnk_03000FA0
	ldrh r1, [r3, #0x3c]
	adds r0, r3, #0
	adds r0, #0x44
	strh r1, [r0]
	subs r0, #4
	ldrh r1, [r0]
	adds r0, #8
	strh r1, [r0]
	ldr r2, _08057764 @ =gUnk_02026C70
	ldrh r0, [r2, #0x10]
	subs r0, r7, r0
	subs r0, #8
	adds r1, r3, #0
	adds r1, #0x4c
	strh r0, [r1]
	ldrh r0, [r2, #0x12]
	subs r0, r4, r0
	subs r0, #8
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r2, #0x10]
	str r0, [r3, #0x54]
	movs r0, #0x7f
	mov r1, sb
	ands r0, r1
	cmp r0, #3
	bne _08057754
	ldr r0, [r3, #0x3c]
	ldr r1, [r3, #0x40]
	bl sub_08057768
_08057754:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057760: .4byte gUnk_03000FA0
_08057764: .4byte gUnk_02026C70

	thumb_func_start sub_08057768
sub_08057768: @ 0x08057768
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	str r0, [sp, #0x88]
	str r1, [sp, #0x8c]
	ldr r7, _0805779C @ =gUnk_03000FA0
	movs r1, #0
	ldr r0, _080577A0 @ =gUnk_03000FD8
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #3
	bne _0805778C
	b _08057908
_0805778C:
	cmp r0, #3
	bgt _080577A4
	cmp r0, #1
	beq _080577B6
	cmp r0, #2
	bne _0805779A
	b _080578C4
_0805779A:
	b _08057A74
	.align 2, 0
_0805779C: .4byte gUnk_03000FA0
_080577A0: .4byte gUnk_03000FD8
_080577A4:
	cmp r0, #4
	bne _080577AA
	b _080579A8
_080577AA:
	cmp r0, #0xfe
	ble _080577B0
	b _08057A74
_080577B0:
	cmp r0, #0xfc
	bge _080577B6
	b _08057A74
_080577B6:
	add r2, sp, #0x88
	ldrh r1, [r2]
	lsls r0, r1, #5
	adds r0, #0x10
	add r5, sp, #0x28
	strh r0, [r5]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	add r3, sp, #0x8c
	ldrh r4, [r3]
	lsls r0, r4, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08028914
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	mov r3, sp
	adds r3, #0x2a
	strh r0, [r3]
	lsls r4, r4, #5
	adds r4, #0x10
	add r1, sp, #0x2c
	strh r4, [r1]
	ldr r0, _080578AC @ =gUnk_02004420
	ldrh r2, [r0]
	ldr r0, _080578B0 @ =0x0000FFFF
	adds r4, r3, #0
	mov r8, r1
	cmp r2, r0
	beq _0805780A
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08028ACC
	cmp r0, #0
	bne _0805780A
	ldr r0, _080578B4 @ =gUnk_03000FA0
	adds r0, #0x38
	movs r1, #1
	strb r1, [r0]
_0805780A:
	movs r6, #0
	ldrsh r0, [r5, r6]
	movs r2, #0
	ldrsh r1, [r4, r2]
	mov r3, r8
	movs r6, #0
	ldrsh r2, [r3, r6]
	str r4, [sp]
	str r3, [sp, #4]
	adds r3, r5, #0
	bl sub_080769D0
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	add r2, sp, #0x24
	mov r3, sp
	adds r3, #0x26
	bl sub_08076A28
	add r4, sp, #8
	ldr r1, _080578B8 @ =gUnk_0815FB10
	add r0, sp, #0x30
	movs r2, #8
	bl memcpy
	movs r3, #0x1c
	ldrsh r1, [r4, r3]
	subs r1, #5
	movs r6, #0x1e
	ldrsh r2, [r4, r6]
	ldr r3, _080578BC @ =gUnk_0860EEC6
	ldr r6, _080578B4 @ =gUnk_03000FA0
	adds r0, r6, #0
	adds r0, #0x50
	ldrb r0, [r0]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r0, [r0]
	str r0, [sp, #4]
	add r0, sp, #0x30
	movs r3, #0
	bl sub_08002394
	add r4, sp, #0x88
	ldrh r5, [r4]
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	add r1, sp, #0x8c
	ldrh r4, [r1]
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	bl sub_08028914
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x14
	ldr r0, _080578C0 @ =sub_08057AD4
	lsls r5, r5, #5
	adds r5, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #5
	adds r4, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	movs r1, #2
	rsbs r1, r1, #0
	str r1, [sp, #4]
	adds r1, r6, #0
	b _080578FA
	.align 2, 0
_080578AC: .4byte gUnk_02004420
_080578B0: .4byte 0x0000FFFF
_080578B4: .4byte gUnk_03000FA0
_080578B8: .4byte gUnk_0815FB10
_080578BC: .4byte gUnk_0860EEC6
_080578C0: .4byte sub_08057AD4
_080578C4:
	add r2, sp, #0x88
	ldrh r5, [r2]
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	add r3, sp, #0x8c
	ldrh r4, [r3]
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	bl sub_08028914
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x14
	ldr r0, _08057904 @ =sub_08057AD4
	lsls r5, r5, #5
	adds r5, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #5
	adds r4, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	movs r1, #2
	rsbs r1, r1, #0
	str r1, [sp, #4]
	adds r1, r7, #0
_080578FA:
	adds r2, r5, #0
	bl sub_0807696C
	b _08057A74
	.align 2, 0
_08057904: .4byte sub_08057AD4
_08057908:
	add r4, sp, #0x88
	ldrh r0, [r4]
	lsls r1, r0, #5
	adds r1, #0x10
	add r6, sp, #0x58
	strh r1, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r1, sp, #0x8c
	ldrh r4, [r1]
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	bl sub_08028914
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	mov r5, sp
	adds r5, #0x5a
	strh r0, [r5]
	lsls r4, r4, #5
	adds r4, #0x10
	add r3, sp, #0x5c
	strh r4, [r3]
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r4, #0
	ldrsh r1, [r5, r4]
	movs r4, #0
	ldrsh r2, [r3, r4]
	str r5, [sp]
	str r3, [sp, #4]
	adds r3, r6, #0
	bl sub_080769D0
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	add r4, sp, #0x38
	add r2, sp, #0x54
	mov r3, sp
	adds r3, #0x56
	bl sub_08076A28
	ldr r1, _0805799C @ =gUnk_0815FB10
	add r0, sp, #0x30
	movs r2, #8
	bl memcpy
	movs r3, #0x1c
	ldrsh r1, [r4, r3]
	subs r1, #5
	movs r6, #0x1e
	ldrsh r2, [r4, r6]
	ldr r3, _080579A0 @ =gUnk_0860EEC6
	adds r0, r7, #0
	adds r0, #0x50
	ldrb r0, [r0]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r2, r2, r0
	movs r4, #0
	str r4, [sp]
	ldr r6, _080579A4 @ =gUnk_03000FD8
	ldrb r0, [r6]
	str r0, [sp, #4]
	add r0, sp, #0x30
	movs r3, #0
	bl sub_08002394
	b _08057A74
	.align 2, 0
_0805799C: .4byte gUnk_0815FB10
_080579A0: .4byte gUnk_0860EEC6
_080579A4: .4byte gUnk_03000FD8
_080579A8:
	add r0, sp, #0x88
	ldrh r6, [r0]
	lsls r0, r6, #5
	adds r0, #0x10
	lsls r1, r0, #0x10
	str r1, [sp, #0x90]
	add r2, sp, #0x80
	mov r8, r2
	strh r0, [r2]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	add r3, sp, #0x8c
	ldrh r4, [r3]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r6, #0
	mov r1, sb
	bl sub_08028914
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	mov r5, sp
	adds r5, #0x82
	strh r0, [r5]
	lsls r4, r4, #5
	adds r4, #0x10
	lsls r1, r4, #0x10
	mov sl, r1
	add r3, sp, #0x84
	strh r4, [r3]
	mov r2, r8
	movs r4, #0
	ldrsh r0, [r2, r4]
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r4, #0
	ldrsh r2, [r3, r4]
	str r5, [sp]
	str r3, [sp, #4]
	mov r3, r8
	bl sub_080769D0
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	add r4, sp, #0x60
	add r2, sp, #0x7c
	mov r3, sp
	adds r3, #0x7e
	bl sub_08076A28
	ldr r1, _08057A84 @ =gUnk_0815FB10
	add r0, sp, #0x30
	movs r2, #8
	bl memcpy
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	subs r1, #5
	movs r3, #0x1e
	ldrsh r2, [r4, r3]
	ldr r3, _08057A88 @ =gUnk_0860EEC6
	adds r0, r7, #0
	adds r0, #0x50
	ldrb r0, [r0]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldr r3, _08057A8C @ =gUnk_03000FD8
	ldrb r0, [r3]
	str r0, [sp, #4]
	add r0, sp, #0x30
	movs r3, #0
	bl sub_08002394
	adds r0, r6, #0
	mov r1, sb
	bl sub_08028914
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x14
	ldr r0, _08057A90 @ =sub_08057B2C
	ldr r4, [sp, #0x90]
	asrs r2, r4, #0x10
	mov r6, sl
	asrs r6, r6, #0x10
	str r6, [sp]
	movs r1, #2
	rsbs r1, r1, #0
	str r1, [sp, #4]
	adds r1, r7, #0
	bl sub_0807696C
_08057A74:
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057A84: .4byte gUnk_0815FB10
_08057A88: .4byte gUnk_0860EEC6
_08057A8C: .4byte gUnk_03000FD8
_08057A90: .4byte sub_08057B2C

	thumb_func_start sub_08057A94
sub_08057A94: @ 0x08057A94
	push {lr}
	ldr r1, _08057AB0 @ =gUnk_02026C70
	strh r0, [r1, #0x10]
	lsrs r0, r0, #0x10
	strh r0, [r1, #0x12]
	ldr r0, _08057AB4 @ =gUnk_03000FA0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r1, #0x14]
	bl sub_08027830
	pop {r0}
	bx r0
	.align 2, 0
_08057AB0: .4byte gUnk_02026C70
_08057AB4: .4byte gUnk_03000FA0

	thumb_func_start sub_08057AB8
sub_08057AB8: @ 0x08057AB8
	ldr r0, _08057AC8 @ =gUnk_03000FA0
	adds r1, r0, #0
	adds r1, #0x50
	ldrb r0, [r1]
	cmp r0, #0x28
	bls _08057ACC
	movs r0, #0
	b _08057ACE
	.align 2, 0
_08057AC8: .4byte gUnk_03000FA0
_08057ACC:
	adds r0, #1
_08057ACE:
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08057AD4
sub_08057AD4: @ 0x08057AD4
	push {r4, r5, r6, lr}
	sub sp, #0x2c
	ldr r4, _08057B24 @ =gUnk_0860FC68
	ldr r5, _08057B28 @ =gUnk_0860EEF0
	movs r2, #0x1c
	ldrsh r1, [r0, r2]
	movs r3, #0x1e
	ldrsh r2, [r0, r3]
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	movs r6, #0xe
	ldrsh r3, [r0, r6]
	str r3, [sp, #0x18]
	movs r6, #0x10
	ldrsh r3, [r0, r6]
	str r3, [sp, #0x1c]
	movs r6, #0x16
	ldrsh r3, [r0, r6]
	str r3, [sp, #0x20]
	movs r6, #0x18
	ldrsh r3, [r0, r6]
	str r3, [sp, #0x24]
	movs r3, #0x1a
	ldrsh r0, [r0, r3]
	str r0, [sp, #0x28]
	ldr r4, [r4]
	adds r0, r5, #0
	movs r3, #0
	bl _call_via_r4
	add sp, #0x2c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057B24: .4byte gUnk_0860FC68
_08057B28: .4byte gUnk_0860EEF0

	thumb_func_start sub_08057B2C
sub_08057B2C: @ 0x08057B2C
	push {r4, r5, r6, lr}
	sub sp, #0x2c
	ldr r4, _08057B7C @ =gUnk_0860FC68
	ldr r5, _08057B80 @ =gUnk_0860EF0A
	movs r2, #0x1c
	ldrsh r1, [r0, r2]
	movs r3, #0x1e
	ldrsh r2, [r0, r3]
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #1
	str r3, [sp, #0x14]
	movs r6, #0xe
	ldrsh r3, [r0, r6]
	str r3, [sp, #0x18]
	movs r6, #0x10
	ldrsh r3, [r0, r6]
	str r3, [sp, #0x1c]
	movs r6, #0x16
	ldrsh r3, [r0, r6]
	str r3, [sp, #0x20]
	movs r6, #0x18
	ldrsh r3, [r0, r6]
	str r3, [sp, #0x24]
	movs r3, #0x1a
	ldrsh r0, [r0, r3]
	str r0, [sp, #0x28]
	ldr r4, [r4]
	adds r0, r5, #0
	movs r3, #0
	bl _call_via_r4
	add sp, #0x2c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057B7C: .4byte gUnk_0860FC68
_08057B80: .4byte gUnk_0860EF0A

	thumb_func_start sub_08057B84
sub_08057B84: @ 0x08057B84
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	movs r1, #1
	ldrsb r1, [r3, r1]
	movs r0, #2
	ldrsb r0, [r3, r0]
	cmp r1, r0
	bge _08057B9C
	subs r0, r0, r1
	asrs r1, r0, #1
	b _08057BB2
_08057B9C:
	movs r1, #2
	ldrsb r1, [r3, r1]
	movs r0, #1
	ldrsb r0, [r3, r0]
	subs r0, r1, r0
	cmp r0, #0
	bge _08057BAC
	rsbs r0, r0, #0
_08057BAC:
	asrs r1, r0, #1
	mvns r0, r1
	adds r1, r0, #1
_08057BB2:
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r2, r0, r1
	cmp r2, #0
	bgt _08057BBE
	movs r2, #1
_08057BBE:
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #1
	subs r5, r0, r2
	movs r0, #0
	strb r0, [r4]
	ldrb r3, [r3, #3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	cmp r2, r3
	bgt _08057BE8
	cmp r2, r1
	blt _08057BDC
	movs r0, #1
	strb r0, [r4]
_08057BDC:
	cmp r2, r3
	bge _08057BE8
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
_08057BE8:
	strb r2, [r4, #2]
	strb r5, [r4, #1]
	strb r2, [r4, #3]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08057BF4
sub_08057BF4: @ 0x08057BF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf8
	adds r5, r0, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	movs r0, #0
	str r0, [sp, #0xf0]
	lsls r1, r1, #0x18
	ldr r0, _08057CC8 @ =0x00FFFFFF
	add r6, sp, #0xe8
	ldr r2, [r6]
	ands r2, r0
	orrs r2, r1
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _08057CCC @ =0xFFFF00FF
	ands r2, r1
	orrs r2, r0
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r1, _08057CD0 @ =0xFF00FFFF
	ands r2, r1
	orrs r2, r0
	str r2, [r6]
	movs r3, #8
	ldrsh r1, [r5, r3]
	movs r4, #4
	ldrsh r0, [r5, r4]
	subs r3, r1, r0
	cmp r3, #0
	bge _08057C4E
	rsbs r3, r3, #0
_08057C4E:
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	movs r4, #6
	ldrsh r0, [r5, r4]
	subs r0, r1, r0
	cmp r0, #0
	bge _08057C5E
	rsbs r0, r0, #0
_08057C5E:
	adds r0, r3, r0
	asrs r0, r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08057CD4 @ =0xFFFFFF00
	ands r2, r1
	orrs r2, r0
	str r2, [r6]
	add r4, sp, #0xec
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08057B84
	ldrb r0, [r4]
	adds r6, r4, #0
	cmp r0, #0
	bne _08057C84
	movs r0, #1
	str r0, [sp, #0xf0]
_08057C84:
	add r4, sp, #0xa8
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	movs r2, #0xc
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	bl __floatsidf
	str r0, [r4]
	str r1, [r4, #4]
	movs r3, #0x12
	ldrsh r0, [r5, r3]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	bl __floatsidf
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	adds r7, r0, #0
	cmp r2, #1
	bne _08057CD8
	ldrb r1, [r6]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08057CC2
	movs r3, #2
	str r3, [sp, #0xf0]
_08057CC2:
	movs r0, #3
	ldrsb r0, [r6, r0]
	b _08057CEA
	.align 2, 0
_08057CC8: .4byte 0x00FFFFFF
_08057CCC: .4byte 0xFFFF00FF
_08057CD0: .4byte 0xFF00FFFF
_08057CD4: .4byte 0xFFFFFF00
_08057CD8:
	ldrb r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08057CE6
	movs r3, #3
	str r3, [sp, #0xf0]
_08057CE6:
	movs r0, #1
	ldrsb r0, [r6, r0]
_08057CEA:
	lsls r0, r0, #4
	movs r4, #0xc
	ldrsh r1, [r5, r4]
	adds r0, r0, r1
	movs r2, #0x10
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	bl __floatsidf
	str r0, [sp, #0xb0]
	str r1, [sp, #0xb4]
	add r4, sp, #0x88
	ldr r1, _08057E04 @ =0x00000000
	ldr r0, _08057E00 @ =0x00000000
	str r0, [r4]
	str r1, [r4, #4]
	movs r0, #2
	ldrsb r0, [r6, r0]
	lsls r0, r0, #4
	bl __floatsidf
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	movs r0, #2
	ldrsb r0, [r6, r0]
	lsls r0, r0, #5
	bl __floatsidf
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	asrs r0, r7, #0x10
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08057D54
	ldr r0, [sp, #0xb8]
	ldr r1, [sp, #0xbc]
	ldr r4, [sp, #0xa8]
	ldr r5, [sp, #0xac]
	adds r3, r5, #0
	adds r2, r4, #0
	bl __subdf3
	ldr r2, _08057E08 @ =0x3FE00000
	ldr r3, _08057E0C @ =0x00000000
	bl __muldf3
	adds r3, r5, #0
	adds r2, r4, #0
	bl __adddf3
	str r0, [sp, #0xb0]
	str r1, [sp, #0xb4]
_08057D54:
	add r5, sp, #0xc8
	add r1, sp, #8
	str r1, [sp]
	movs r0, #3
	add r1, sp, #0x88
	add r2, sp, #0xa8
	adds r3, r5, #0
	bl sub_08007A8C
	mov r2, r8
	lsls r4, r2, #0x10
	asrs r3, r4, #0x10
	mov sl, r3
	mov r0, sl
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x98]
	ldr r1, [sp, #0x9c]
	bl __divdf3
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r3, _08057E04 @ =0x00000000
	ldr r2, _08057E00 @ =0x00000000
	bl __eqdf2
	str r4, [sp, #0xf4]
	cmp r0, #0
	bne _08057D96
	ldr r6, _08057E10 @ =0x3FF00000
	ldr r7, _08057E14 @ =0x00000000
_08057D96:
	ldr r5, _08057E04 @ =0x00000000
	ldr r4, _08057E00 @ =0x00000000
	ldr r0, [sp, #0x118]
	mov sb, r0
	movs r1, #0
	mov r8, r1
	cmp r8, sl
	bgt _08057DEE
_08057DA6:
	add r2, sp, #0xa8
	str r2, [sp]
	add r3, sp, #0xc8
	str r3, [sp, #4]
	adds r1, r5, #0
	adds r0, r4, #0
	movs r2, #3
	add r3, sp, #0x88
	bl sub_08007CB8
	bl __fixdfsi
	mov r1, sb
	strh r0, [r1]
	mov r2, r8
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #2
	add sb, r0
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	mov r1, r8
	lsls r0, r1, #0x10
	ldr r2, [sp, #0xf4]
	cmp r0, r2
	ble _08057DA6
_08057DEE:
	ldr r0, [sp, #0xf0]
	add sp, #0xf8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08057E00: .4byte 0x00000000
_08057E04: .4byte 0x00000000
_08057E08: .4byte 0x3FE00000
_08057E0C: .4byte 0x00000000
_08057E10: .4byte 0x3FF00000
_08057E14: .4byte 0x00000000

	thumb_func_start sub_08057E18
sub_08057E18: @ 0x08057E18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xec
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xd0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	mov r3, sb
	movs r4, #4
	ldrsh r2, [r3, r4]
	subs r7, r0, r2
	movs r0, #0xa
	ldrsh r1, [r3, r0]
	movs r4, #6
	ldrsh r0, [r3, r4]
	subs r1, r1, r0
	mov sl, r1
	ldr r0, [r3]
	mov r8, r0
	adds r1, r7, #0
	cmp r7, #0
	bge _08057E50
	rsbs r1, r7, #0
_08057E50:
	mov r0, sl
	cmp r0, #0
	bge _08057E58
	rsbs r0, r0, #0
_08057E58:
	cmp r1, r0
	blt _08057E5E
	b _08057F78
_08057E5E:
	add r5, sp, #0xa0
	adds r0, r2, #0
	bl __floatsidf
	str r0, [r5]
	str r1, [r5, #4]
	mov r1, sb
	movs r2, #4
	ldrsh r0, [r1, r2]
	lsrs r1, r7, #0x1f
	adds r1, r7, r1
	asrs r1, r1, #1
	adds r0, r0, r1
	bl __floatsidf
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	mov r3, sb
	movs r4, #8
	ldrsh r0, [r3, r4]
	bl __floatsidf
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	add r4, sp, #0x88
	mov r1, sb
	movs r2, #6
	ldrsh r0, [r1, r2]
	bl __floatsidf
	str r0, [sp, #0xdc]
	str r1, [sp, #0xe0]
	str r0, [r4]
	str r1, [r4, #4]
	mov r3, sb
	movs r1, #6
	ldrsh r0, [r3, r1]
	mov r2, sl
	lsrs r1, r2, #0x1f
	add r1, sl
	asrs r1, r1, #1
	adds r0, r0, r1
	bl __floatsidf
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	mov r3, sb
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	bl __floatsidf
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	ldr r2, [sp, #0xd0]
	lsls r6, r2, #0x10
	asrs r3, r6, #0x10
	str r3, [sp, #0xe4]
	mov r0, sl
	adds r1, r3, #0
	bl __divsi3
	bl __floatsidf
	str r0, [sp, #0xd4]
	str r1, [sp, #0xd8]
	ldr r3, _08057F6C @ =0x00000000
	ldr r2, _08057F68 @ =0x00000000
	bl __eqdf2
	mov sl, r6
	cmp r0, #0
	bne _08057EF6
	ldr r0, _08057F70 @ =0x3FF00000
	ldr r1, _08057F74 @ =0x00000000
	str r0, [sp, #0xd4]
	str r1, [sp, #0xd8]
_08057EF6:
	ldr r0, [sp, #0xdc]
	ldr r1, [sp, #0xe0]
	ldr r2, [sp, #0xd4]
	ldr r3, [sp, #0xd8]
	bl __adddf3
	adds r6, r1, #0
	adds r5, r0, #0
	add r4, sp, #0xb8
	add r1, sp, #8
	str r1, [sp]
	movs r0, #3
	add r1, sp, #0x88
	add r2, sp, #0xa0
	adds r3, r4, #0
	bl sub_08007A8C
	movs r7, #0
	ldr r2, [sp, #0xe4]
	cmp r7, r2
	blt _08057F22
	b _0805807A
_08057F22:
	add r3, sp, #0xa0
	str r3, [sp]
	str r4, [sp, #4]
	adds r1, r6, #0
	adds r0, r5, #0
	movs r2, #3
	add r3, sp, #0x88
	bl sub_08007CB8
	bl __fixdfsi
	mov r1, r8
	strh r0, [r1]
	adds r1, r6, #0
	adds r0, r5, #0
	bl __fixdfsi
	mov r2, r8
	strh r0, [r2, #2]
	adds r7, #1
	adds r1, r6, #0
	adds r0, r5, #0
	ldr r2, [sp, #0xd4]
	ldr r3, [sp, #0xd8]
	bl __adddf3
	adds r6, r1, #0
	adds r5, r0, #0
	movs r3, #4
	add r8, r3
	mov r1, sl
	asrs r0, r1, #0x10
	cmp r7, r0
	blt _08057F22
	b _0805807A
	.align 2, 0
_08057F68: .4byte 0x00000000
_08057F6C: .4byte 0x00000000
_08057F70: .4byte 0x3FF00000
_08057F74: .4byte 0x00000000
_08057F78:
	add r6, sp, #0x88
	adds r0, r2, #0
	bl __floatsidf
	str r0, [r6]
	str r1, [r6, #4]
	mov r2, sb
	movs r3, #4
	ldrsh r0, [r2, r3]
	lsrs r1, r7, #0x1f
	adds r1, r7, r1
	asrs r1, r1, #1
	adds r0, r0, r1
	bl __floatsidf
	str r0, [r6, #8]
	str r1, [r6, #0xc]
	mov r4, sb
	movs r1, #8
	ldrsh r0, [r4, r1]
	bl __floatsidf
	str r0, [r6, #0x10]
	str r1, [r6, #0x14]
	add r4, sp, #0xa0
	mov r2, sb
	movs r3, #6
	ldrsh r0, [r2, r3]
	bl __floatsidf
	str r0, [r4]
	str r1, [r4, #4]
	mov r1, sb
	movs r2, #6
	ldrsh r0, [r1, r2]
	mov r3, sl
	lsrs r1, r3, #0x1f
	add r1, sl
	asrs r1, r1, #1
	adds r0, r0, r1
	bl __floatsidf
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	mov r1, sb
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	bl __floatsidf
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	ldr r3, [sp, #0xd0]
	lsls r5, r3, #0x10
	asrs r0, r5, #0x10
	str r0, [sp, #0xe8]
	adds r0, r7, #0
	ldr r1, [sp, #0xe8]
	bl __divsi3
	bl __floatsidf
	str r0, [sp, #0xd4]
	str r1, [sp, #0xd8]
	ldr r3, _080580A4 @ =0x00000000
	ldr r2, _080580A0 @ =0x00000000
	bl __eqdf2
	mov sl, r5
	cmp r0, #0
	bne _0805800C
	ldr r1, _080580A8 @ =0x3FF00000
	ldr r2, _080580AC @ =0x00000000
	str r1, [sp, #0xd4]
	str r2, [sp, #0xd8]
_0805800C:
	ldr r0, [sp, #0x88]
	ldr r1, [sp, #0x8c]
	ldr r2, [sp, #0xd4]
	ldr r3, [sp, #0xd8]
	bl __adddf3
	adds r6, r1, #0
	adds r5, r0, #0
	add r4, sp, #0xb8
	add r2, sp, #8
	str r2, [sp]
	movs r0, #3
	add r1, sp, #0x88
	add r2, sp, #0xa0
	adds r3, r4, #0
	bl sub_08007A8C
	movs r7, #0
	ldr r3, [sp, #0xe8]
	cmp r7, r3
	bge _0805807A
_08058036:
	add r0, sp, #0xa0
	str r0, [sp]
	str r4, [sp, #4]
	adds r1, r6, #0
	adds r0, r5, #0
	movs r2, #3
	add r3, sp, #0x88
	bl sub_08007CB8
	bl __fixdfsi
	mov r1, r8
	strh r0, [r1, #2]
	adds r1, r6, #0
	adds r0, r5, #0
	bl __fixdfsi
	mov r2, r8
	strh r0, [r2]
	adds r7, #1
	adds r1, r6, #0
	adds r0, r5, #0
	ldr r2, [sp, #0xd4]
	ldr r3, [sp, #0xd8]
	bl __adddf3
	adds r6, r1, #0
	adds r5, r0, #0
	movs r3, #4
	add r8, r3
	mov r1, sl
	asrs r0, r1, #0x10
	cmp r7, r0
	blt _08058036
_0805807A:
	movs r2, #4
	rsbs r2, r2, #0
	add r8, r2
	mov r3, sb
	ldrh r0, [r3, #8]
	mov r4, r8
	strh r0, [r4]
	ldrh r0, [r3, #0xa]
	strh r0, [r4, #2]
	adds r0, r7, #0
	add sp, #0xec
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080580A0: .4byte 0x00000000
_080580A4: .4byte 0x00000000
_080580A8: .4byte 0x3FF00000
_080580AC: .4byte 0x00000000

	thumb_func_start sub_080580B0
sub_080580B0: @ 0x080580B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	movs r7, #0
	ldr r5, [r6]
	movs r0, #8
	ldrsh r1, [r6, r0]
	movs r2, #4
	ldrsh r0, [r6, r2]
	subs r0, r1, r0
	cmp r0, #0
	bge _080580DE
	rsbs r0, r0, #0
_080580DE:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r4, #0xa
	ldrsh r1, [r6, r4]
	movs r2, #6
	ldrsh r0, [r6, r2]
	subs r0, r1, r0
	cmp r0, #0
	bge _080580F4
	rsbs r0, r0, #0
_080580F4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r1, [r6, #4]
	lsls r2, r1, #0x10
	ldr r0, _08058210 @ =0xFFFF0000
	ands r3, r0
	orrs r3, r1
	ldrh r0, [r6, #6]
	lsls r0, r0, #0x10
	ldr r4, _08058214 @ =0x0000FFFF
	ands r3, r4
	orrs r3, r0
	movs r1, #0
	str r1, [sp]
	asrs r2, r2, #0x10
	str r2, [sp, #0x28]
	movs r2, #8
	ldrsh r1, [r6, r2]
	ldr r2, [sp, #0x28]
	cmp r2, r1
	bge _08058124
	movs r2, #1
	str r2, [sp]
_08058124:
	ldr r2, [sp, #0x28]
	cmp r2, r1
	ble _0805812C
	str r4, [sp]
_0805812C:
	movs r1, #0
	str r1, [sp, #4]
	asrs r0, r0, #0x10
	movs r2, #0xa
	ldrsh r1, [r6, r2]
	cmp r0, r1
	bge _0805813E
	movs r2, #1
	str r2, [sp, #4]
_0805813E:
	cmp r0, r1
	ble _08058144
	str r4, [sp, #4]
_08058144:
	mov r4, sb
	lsls r0, r4, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	cmp r0, r1
	blt _08058218
	asrs r0, r0, #0x11
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sl
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x18]
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
_0805816A:
	strh r3, [r5]
	asrs r0, r3, #0x10
	strh r0, [r5, #2]
	movs r2, #0
	ldr r0, [sp, #0x18]
	cmp r2, r0
	bgt _08058200
	movs r0, #8
	ldrsh r1, [r6, r0]
	str r1, [sp, #8]
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [sp, #0x24]
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r1, [sp, #0x20]
	asrs r1, r1, #0x10
	mov r8, r1
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
_0805819A:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #8]
	cmp r0, r1
	bne _080581A6
	b _080582DC
_080581A6:
	mov r1, sl
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08058210 @ =0xFFFF0000
	ands r3, r1
	orrs r3, r0
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r4, sb
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _080581EE
	lsls r0, r7, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r7, r0, #0x10
	mov r4, r8
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r3, #0x10
	add r0, ip
	lsls r0, r0, #0x10
	ldr r1, _08058214 @ =0x0000FFFF
	ands r3, r1
	orrs r3, r0
_080581EE:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x18]
	cmp r0, r1
	ble _0805819A
_08058200:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0xc]
	cmp r0, r2
	bgt _080582D4
	adds r5, #4
	b _0805816A
	.align 2, 0
_08058210: .4byte 0xFFFF0000
_08058214: .4byte 0x0000FFFF
_08058218:
	ldr r4, [sp, #0x24]
	asrs r0, r4, #0x11
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sl
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	asrs r1, r1, #0x10
	str r1, [sp, #0x10]
	mov r2, ip
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x14]
_08058236:
	strh r3, [r5]
	asrs r0, r3, #0x10
	strh r0, [r5, #2]
	movs r2, #0
	ldr r0, [sp, #0x1c]
	cmp r2, r0
	bgt _080582BE
	movs r0, #0xa
	ldrsh r1, [r6, r0]
	mov sl, r1
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r0, [sp, #0x24]
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
_08058260:
	asrs r0, r3, #0x10
	cmp r0, sl
	beq _080582DC
	add r0, sb
	lsls r1, r0, #0x10
	ldr r0, _080582CC @ =0x0000FFFF
	ands r3, r0
	orrs r3, r1
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp, #0x10]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _080582AC
	lsls r0, r7, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r7, r0, #0x10
	mov r4, r8
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r1, ip
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080582D0 @ =0xFFFF0000
	ands r3, r1
	orrs r3, r0
_080582AC:
	lsls r0, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x1c]
	cmp r0, r1
	ble _08058260
_080582BE:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x14]
	cmp r0, r2
	bgt _080582D4
	adds r5, #4
	b _08058236
	.align 2, 0
_080582CC: .4byte 0x0000FFFF
_080582D0: .4byte 0xFFFF0000
_080582D4:
	ldrh r0, [r5]
	strh r0, [r6, #8]
	ldrh r0, [r5, #2]
	strh r0, [r6, #0xa]
_080582DC:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080582EC
sub_080582EC: @ 0x080582EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	adds r7, r0, #0
	ldrh r1, [r7, #8]
	ldrh r0, [r7]
	subs r2, r1, r0
	ldrh r1, [r7, #0xa]
	ldrh r0, [r7, #2]
	subs r5, r1, r0
	ldrh r1, [r7, #0xc]
	ldrh r0, [r7, #4]
	subs r1, r1, r0
	mov r8, r1
	adds r3, r2, #0
	cmp r2, #0
	bge _08058312
	rsbs r3, r2, #0
_08058312:
	adds r0, r5, #0
	cmp r5, #0
	bge _0805831A
	rsbs r0, r5, #0
_0805831A:
	mov r1, r8
	cmp r1, #0
	bge _08058322
	rsbs r1, r1, #0
_08058322:
	adds r0, r3, r0
	adds r6, r0, r1
	cmp r6, #0
	beq _080583CC
	ldrh r0, [r7, #0x12]
	str r0, [sp]
	adds r1, r0, #0
	adds r0, r1, #0
	muls r0, r2, r0
	bl __floatsidf
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r6, #0
	bl __floatsidf
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl __divdf3
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r4, [sp]
	adds r0, r4, #0
	muls r0, r5, r0
	bl __floatsidf
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl __divdf3
	str r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	mov r0, r8
	muls r0, r4, r0
	bl __floatsidf
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl __divdf3
	str r0, [sp, #0x24]
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r3, _080583DC @ =0x00000000
	ldr r2, _080583D8 @ =0x40700000
	bl __muldf3
	bl __fixdfsi
	str r0, [r7, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r3, _080583DC @ =0x00000000
	ldr r2, _080583D8 @ =0x40700000
	bl __muldf3
	bl __fixdfsi
	str r0, [r7, #0x1c]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	ldr r3, _080583DC @ =0x00000000
	ldr r2, _080583D8 @ =0x40700000
	bl __muldf3
	bl __fixdfsi
	str r0, [r7, #0x20]
	ldrh r0, [r7]
	lsls r0, r0, #8
	str r0, [r7, #0x24]
	ldrh r0, [r7, #2]
	lsls r0, r0, #8
	str r0, [r7, #0x28]
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	str r0, [r7, #0x2c]
	movs r0, #0
	str r0, [r7, #0x30]
_080583CC:
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080583D8: .4byte 0x40700000
_080583DC: .4byte 0x00000000

	thumb_func_start sub_080583E0
sub_080583E0: @ 0x080583E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	adds r2, r0, #0
	ldr r0, [r2, #0x30]
	lsls r0, r0, #3
	ldr r1, [r2, #0x14]
	adds r5, r1, r0
	ldrh r0, [r2, #8]
	lsls r0, r0, #8
	mov r8, r0
	ldrh r0, [r2, #0xa]
	lsls r0, r0, #8
	mov ip, r0
	ldrh r0, [r2, #0xc]
	lsls r7, r0, #8
	movs r6, #0
	ldr r0, [sp]
	cmp r6, r0
	bge _080584CA
	movs r0, #2
	mov sl, r0
	movs r0, #4
	mov sb, r0
_0805841C:
	ldr r0, [r2, #0x24]
	asrs r0, r0, #8
	strh r0, [r5]
	ldr r0, [r2, #0x28]
	asrs r0, r0, #8
	strh r0, [r5, #2]
	ldr r0, [r2, #0x2c]
	asrs r0, r0, #8
	strh r0, [r5, #4]
	ldr r0, [r2, #0x24]
	ldr r3, [r2, #0x18]
	adds r4, r0, r3
	str r4, [r2, #0x24]
	ldr r0, [r2, #0x28]
	ldr r1, [r2, #0x1c]
	adds r0, r0, r1
	str r0, [r2, #0x28]
	ldr r0, [r2, #0x2c]
	ldr r1, [r2, #0x20]
	adds r0, r0, r1
	str r0, [r2, #0x2c]
	movs r1, #0
	cmp r3, #0
	beq _0805845E
	cmp r3, #0
	ble _08058456
	cmp r4, r8
	blt _08058460
	b _0805845E
_08058456:
	cmp r3, #0
	bge _08058460
	cmp r4, r8
	bgt _08058460
_0805845E:
	movs r1, #1
_08058460:
	ldr r0, [r2, #0x1c]
	cmp r0, #0
	beq _0805847C
	cmp r0, #0
	ble _08058472
	ldr r0, [r2, #0x28]
	cmp r0, ip
	blt _08058480
	b _0805847C
_08058472:
	cmp r0, #0
	bge _08058480
	ldr r0, [r2, #0x28]
	cmp r0, ip
	bgt _08058480
_0805847C:
	mov r0, sl
	orrs r1, r0
_08058480:
	ldr r0, [r2, #0x20]
	cmp r0, #0
	beq _0805849C
	cmp r0, #0
	ble _08058492
	ldr r0, [r2, #0x2c]
	cmp r0, r7
	blt _080584A0
	b _0805849C
_08058492:
	cmp r0, #0
	bge _080584A0
	ldr r0, [r2, #0x2c]
	cmp r0, r7
	bgt _080584A0
_0805849C:
	mov r0, sb
	orrs r1, r0
_080584A0:
	cmp r1, #7
	bne _080584BA
	ldrh r0, [r2, #8]
	strh r0, [r5]
	ldrh r0, [r2, #0xa]
	strh r0, [r5, #2]
	ldrh r0, [r2, #0xc]
	strh r0, [r5, #4]
	ldr r0, [r2, #0x30]
	adds r0, #1
	str r0, [r2, #0x30]
	movs r0, #0
	b _080584CC
_080584BA:
	adds r6, #1
	adds r5, #8
	ldr r0, [r2, #0x30]
	adds r0, #1
	str r0, [r2, #0x30]
	ldr r0, [sp]
	cmp r6, r0
	blt _0805841C
_080584CA:
	movs r0, #1
_080584CC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080584DC
sub_080584DC: @ 0x080584DC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08057B84
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldrb r2, [r4, #3]
	movs r0, #3
	ldrsb r0, [r4, r0]
	cmp r1, r0
	blt _08058502
	strb r2, [r4]
	b _08058526
_080584F8:
	movs r0, #1
	strb r0, [r4]
	b _0805851A
_080584FE:
	subs r0, r1, #1
	strb r0, [r4]
_08058502:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08057B84
	ldrb r1, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _080584F8
	ldrb r0, [r5]
	cmp r0, #0
	beq _080584FE
_0805851A:
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _08058526
	ldrb r0, [r4, #3]
	strb r0, [r4]
_08058526:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805852C
sub_0805852C: @ 0x0805852C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, [r5, #4]
	ldr r4, [r5, #8]
	lsls r6, r1, #0x10
	movs r3, #0
	cmp r6, #0
	ble _0805856E
_0805853C:
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	ldr r1, [r5]
	adds r1, r1, r0
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	lsls r0, r0, #5
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r1, r0
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	cmp r1, r0
	bgt _0805856E
	adds r3, #1
	adds r2, #4
	adds r4, #2
	asrs r0, r6, #0x10
	cmp r3, r0
	blt _0805853C
_0805856E:
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08058578
sub_08058578: @ 0x08058578
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x28]
	mov sl, r0
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r3, r8
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	mov r3, sb
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	mov r3, sl
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r0, r2, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0x34
	bl BattleAlloc
	adds r4, r0, #0
	movs r1, #0x34
	bl memzero
	strh r5, [r4]
	strh r6, [r4, #2]
	mov r0, r8
	strh r0, [r4, #4]
	mov r1, sb
	strh r1, [r4, #8]
	mov r3, sl
	strh r3, [r4, #0xa]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r4, #0x10]
	strh r7, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080582EC
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

	thumb_func_start sub_0805860C
sub_0805860C: @ 0x0805860C
	push {lr}
	cmp r0, #0
	beq _08058616
	bl BattleFree
_08058616:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805861C
sub_0805861C: @ 0x0805861C
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_08058620
sub_08058620: @ 0x08058620
	ldrh r0, [r0, #0x30]
	bx lr

	thumb_func_start sub_08058624
sub_08058624: @ 0x08058624
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	ldr r4, [sp, #0xa8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	subs r2, r6, r0
	cmp r2, #0
	bge _08058648
	rsbs r2, r2, #0
_08058648:
	subs r0, r5, r7
	cmp r0, #0
	bge _08058650
	rsbs r0, r0, #0
_08058650:
	adds r1, r2, r0
	cmp r3, #0
	beq _0805865A
	cmp r3, r1
	blt _08058662
_0805865A:
	cmp r2, r0
	blt _080586A4
	lsls r0, r2, #0x18
	b _080586A6
_08058662:
	add r4, sp, #0x80
	mov r0, sp
	str r0, [r4]
	mov r2, ip
	strh r2, [r4, #4]
	strh r7, [r4, #6]
	strh r6, [r4, #8]
	strh r5, [r4, #0xa]
	adds r0, r4, #0
	adds r1, r3, #0
	movs r2, #0
	bl sub_080580B0
	movs r3, #8
	ldrsh r1, [r4, r3]
	movs r2, #4
	ldrsh r0, [r4, r2]
	subs r2, r1, r0
	cmp r2, #0
	bge _0805868C
	rsbs r2, r2, #0
_0805868C:
	movs r3, #0xa
	ldrsh r1, [r4, r3]
	movs r3, #6
	ldrsh r0, [r4, r3]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805869C
	rsbs r0, r0, #0
_0805869C:
	cmp r2, r0
	blt _080586A4
	lsls r0, r2, #0x18
	b _080586A6
_080586A4:
	lsls r0, r0, #0x18
_080586A6:
	lsrs r0, r0, #0x18
	add sp, #0x94
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080586B0
sub_080586B0: @ 0x080586B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x4c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x48]
	mov sl, r1
	ldr r2, [sp, #0x14]
	cmp r2, #0
	bne _080586E4
	b _0805883E
_080586E4:
	ldr r3, [sp, #0x18]
	movs r1, #0
	ldrsh r0, [r3, r1]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080587FC @ =0xFFFF0000
	ands r7, r1
	orrs r7, r0
	ldr r2, [sp, #0x18]
	movs r3, #2
	ldrsh r0, [r2, r3]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r1, _08058800 @ =0x0000FFFF
	ands r7, r1
	orrs r7, r0
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r7, #0x10
	bl sub_08028728
	ldrb r1, [r0, #1]
	movs r0, #0x3f
	ands r0, r1
	bl sub_08058D78
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	cmp r0, r1
	bge _080587F6
	ldr r5, [sp, #0xc]
	ldr r6, [sp, #8]
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x10
	movs r2, #0
	mov sb, r2
	str r0, [sp, #0x1c]
	cmp r0, #0
	ble _08058820
_08058740:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl sub_08143B70
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08058808
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #9
	bl sub_08143B70
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08058808
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [sp]
	ldr r1, [sp, #4]
	movs r2, #0x11
	bl sub_08143B70
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	beq _08058808
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldrb r3, [r5, #0x14]
	cmp r0, r3
	bne _08058808
	asrs r0, r7, #0x10
	ldrb r1, [r5, #0x15]
	cmp r0, r1
	bne _08058808
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08139B74
	mov r8, r0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0x15]
	bl sub_08028774
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0xb
	ldr r0, _08058804 @ =gUnk_0861CA5C
	adds r4, r4, r0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0x15]
	bl sub_08028728
	ldrb r0, [r0, #1]
	adds r2, r0, #0
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080587E2
	mov r3, r8
	ldrb r0, [r3, #1]
	cmp r0, #2
	beq _080587DA
	cmp r0, #2
	blt _080587E2
	cmp r0, #5
	bgt _080587E2
	cmp r0, #4
	blt _080587E2
_080587DA:
	lsls r0, r2, #0x10
	ldr r1, _080587FC @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
_080587E2:
	lsls r0, r2, #0x10
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	asrs r0, r0, #0x10
	mov r3, sl
	movs r2, #0
	ldrsh r1, [r3, r2]
	cmp r0, r1
	bgt _08058808
_080587F6:
	movs r0, #1
	b _08058840
	.align 2, 0
_080587FC: .4byte 0xFFFF0000
_08058800: .4byte 0x0000FFFF
_08058804: .4byte gUnk_0861CA5C
_08058808:
	mov r3, sb
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r5, #0x1c
	adds r6, #0x68
	lsrs r2, r0, #0x10
	mov sb, r2
	ldr r3, [sp, #0x1c]
	cmp r0, r3
	blt _08058740
_08058820:
	mov r1, sb
	lsls r0, r1, #0x10
	ldr r2, [sp, #0x18]
	adds r2, #4
	str r2, [sp, #0x18]
	movs r3, #2
	add sl, r3
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x14]
	cmp r0, r2
	bge _0805883E
	b _080586E4
_0805883E:
	movs r0, #0
_08058840:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08058850
sub_08058850: @ 0x08058850
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	str r0, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r3, [sp, #0x38]
	ldr r0, [sp, #0x7c]
	ldr r1, [sp, #0x80]
	ldr r4, [sp, #0x84]
	ldr r5, [sp, #0x88]
	ldr r6, [sp, #0x8c]
	ldr r3, [sp, #0x94]
	mov sl, r3
	ldr r3, [sp, #0xa0]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x3c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x40]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x44]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	str r5, [sp, #0x48]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	str r6, [sp, #0x4c]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x50]
	movs r4, #0x7f
	ands r0, r4
	mov sb, r0
	movs r0, #0
	mov r8, r0
	mov r1, sp
	adds r1, #0x24
	str r1, [sp, #0x54]
	mov r2, sp
	adds r2, #0x28
	str r2, [sp, #0x58]
	add r6, sp, #0x10
_080588B4:
	mov r3, sl
	ldrb r0, [r3, #0x14]
	ldrb r1, [r3, #0x15]
	bl sub_08028728
	adds r4, r0, #0
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x48]
	bl sub_08028728
	mov r2, sl
	ldrb r1, [r2, #0x14]
	strh r1, [r6, #4]
	ldrb r1, [r2, #0x15]
	strh r1, [r6, #6]
	add r3, sp, #0x44
	ldrh r3, [r3]
	strh r3, [r6, #8]
	add r1, sp, #0x48
	ldrh r1, [r1]
	strh r1, [r6, #0xa]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #0x10]
	ldrb r3, [r4, #1]
	movs r2, #0x3f
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	strh r1, [r6, #0xc]
	ldrb r0, [r0, #1]
	ands r2, r0
	strh r2, [r6, #0xe]
	add r4, sp, #0x4c
	ldrh r4, [r4]
	strh r4, [r6, #0x10]
	movs r0, #2
	strh r0, [r6, #0x12]
	movs r2, #8
	ldrsh r1, [r6, r2]
	movs r4, #4
	ldrsh r0, [r6, r4]
	subs r2, r1, r0
	cmp r2, #0
	bge _0805890E
	rsbs r2, r2, #0
_0805890E:
	movs r0, #0xa
	ldrsh r1, [r6, r0]
	movs r4, #6
	ldrsh r0, [r6, r4]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805891E
	rsbs r0, r0, #0
_0805891E:
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r2, r3, #8
	ldr r1, _080589A4 @ =0xFFFF00FF
	ldr r0, [sp, #0x24]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x24]
	ldrb r2, [r6, #0xe]
	lsls r2, r2, #0x10
	ldr r1, _080589A8 @ =0xFF00FFFF
	ands r0, r1
	orrs r0, r2
	ldr r1, [sp, #0x40]
	lsls r2, r1, #0x18
	ldr r1, _080589AC @ =0x00FFFFFF
	ands r0, r1
	orrs r0, r2
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	ldr r1, _080589B0 @ =0xFFFFFF00
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x24]
	ldr r4, [sp, #0x58]
	ldr r0, [sp, #0x54]
	adds r1, r4, #0
	bl sub_080584DC
	movs r0, #0x80
	ldr r2, [sp, #0x3c]
	ands r0, r2
	cmp r0, #0
	beq _0805897E
	ldr r3, [sp, #0x54]
	movs r1, #0
	ldrsb r1, [r3, r1]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_080580B0
	add r0, sp, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0805897E:
	ldrh r0, [r6, #8]
	ldr r1, [sp, #0x38]
	strh r0, [r1]
	ldrh r0, [r6, #0xa]
	strh r0, [r1, #2]
	mov r2, sb
	cmp r2, #4
	bne _08058992
	movs r3, #5
	mov sb, r3
_08058992:
	mov r0, sb
	cmp r0, #2
	beq _080589CA
	cmp r0, #2
	bgt _080589B4
	cmp r0, #1
	beq _080589BC
	b _08058A08
	.align 2, 0
_080589A4: .4byte 0xFFFF00FF
_080589A8: .4byte 0xFF00FFFF
_080589AC: .4byte 0x00FFFFFF
_080589B0: .4byte 0xFFFFFF00
_080589B4:
	mov r1, sb
	cmp r1, #5
	beq _080589E4
	b _08058A08
_080589BC:
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r8, r2
	b _080589D8
_080589CA:
	ldr r3, [sp, #0x58]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r8, r4
_080589D8:
	lsls r1, r7, #0x10
	cmp r0, r1
	bge _08058A08
	lsrs r1, r1, #0x10
	mov r8, r1
	b _08058A08
_080589E4:
	movs r0, #0xe
	ldrsh r1, [r6, r0]
	movs r2, #0xc
	ldrsh r0, [r6, r2]
	subs r1, r1, r0
	cmp r1, #0
	bge _080589F4
	rsbs r1, r1, #0
_080589F4:
	lsls r1, r1, #0xf
	lsrs r3, r1, #0x10
	mov r8, r3
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r0, r2, #0x10
	cmp r1, r0
	bge _08058A08
	lsrs r2, r2, #0x10
	mov r8, r2
_08058A08:
	mov r4, r8
	lsls r0, r4, #0x12
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x34]
	cmp r0, r2
	ble _08058A1A
	mov r8, r2
_08058A1A:
	movs r3, #0x10
	ldrsh r0, [r6, r3]
	bl sub_08058D78
	strh r0, [r6, #0x10]
	movs r4, #0x12
	ldrsh r0, [r6, r4]
	bl sub_08058D78
	strh r0, [r6, #0x12]
	movs r1, #0xc
	ldrsh r0, [r6, r1]
	bl sub_08058D78
	strh r0, [r6, #0xc]
	movs r2, #0xe
	ldrsh r0, [r6, r2]
	bl sub_08058D78
	strh r0, [r6, #0xe]
	movs r3, #4
	ldrsh r0, [r6, r3]
	bl sub_08058D6C
	strh r0, [r6, #4]
	movs r4, #6
	ldrsh r0, [r6, r4]
	bl sub_08058D6C
	strh r0, [r6, #6]
	movs r1, #8
	ldrsh r0, [r6, r1]
	bl sub_08058D6C
	strh r0, [r6, #8]
	movs r2, #0xa
	ldrsh r0, [r6, r2]
	bl sub_08058D6C
	strh r0, [r6, #0xa]
	mov r3, r8
	lsls r5, r3, #0x10
	asrs r4, r5, #0x10
	add r0, sp, #0x10
	adds r1, r4, #0
	bl sub_08057E18
	lsls r1, r7, #0x18
	asrs r1, r1, #0x18
	ldr r0, [sp, #0x30]
	str r0, [sp]
	add r0, sp, #0x10
	mov r2, sb
	adds r3, r4, #0
	bl sub_08057BF4
	ldr r1, [sp, #0x50]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #4]
	ldr r3, [sp, #0x30]
	str r3, [sp, #8]
	lsrs r0, r5, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x90]
	mov r1, sl
	ldr r2, [sp, #0x98]
	ldr r3, [sp, #0x9c]
	bl sub_080586B0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08058ABC
	mov r4, sb
	cmp r4, #1
	bne _08058ABC
	movs r0, #2
	mov sb, r0
	b _080588B4
_08058ABC:
	asrs r0, r5, #0x10
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08058AD0
sub_08058AD0: @ 0x08058AD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	mov sl, r0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldrh r0, [r1]
	mov r1, sl
	ldrh r1, [r1]
	str r1, [sp, #0x30]
	subs r2, r0, r1
	ldr r3, [sp, #8]
	ldrh r1, [r3, #2]
	mov r3, sl
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	ldrh r0, [r1, #4]
	ldrh r6, [r3, #4]
	subs r5, r0, r6
	mov r8, r2
	cmp r2, #0
	bge _08058B0E
	mov r3, r8
	rsbs r3, r3, #0
	mov r8, r3
_08058B0E:
	ldr r4, [sp, #0x14]
	cmp r4, #0
	bge _08058B16
	rsbs r4, r4, #0
_08058B16:
	adds r7, r5, #0
	cmp r7, #0
	bge _08058B1E
	rsbs r7, r7, #0
_08058B1E:
	movs r0, #0
	str r0, [sp, #0x18]
	movs r1, #0
	str r1, [sp, #0x1c]
	mov r3, r8
	cmp r3, #0
	beq _08058B36
	adds r0, r2, #0
	mov r1, r8
	bl __divsi3
	str r0, [sp, #0x18]
_08058B36:
	cmp r7, #0
	beq _08058B44
	adds r0, r5, #0
	adds r1, r7, #0
	bl __divsi3
	str r0, [sp, #0x1c]
_08058B44:
	mov sb, r8
	cmp sb, r7
	bge _08058B4C
	mov sb, r7
_08058B4C:
	mov r0, r8
	asrs r4, r0, #1
	cmp r8, r7
	bge _08058B56
	asrs r4, r7, #1
_08058B56:
	ldr r5, [sp, #0x30]
	str r5, [sp, #0x24]
	str r5, [sp, #0x28]
	movs r1, #0
	str r1, [sp, #0x2c]
	ldr r1, _08058C00 @ =0xFFFF0000
	mov r2, sl
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	orrs r0, r5
	str r0, [sp]
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r6
	str r0, [sp, #4]
	movs r3, #0
	str r3, [sp, #0x20]
	ldr r0, [sp, #0x2c]
	cmp r0, sb
	bge _08058C4C
	mov r3, sp
	movs r1, #0
	str r1, [sp, #0x34]
_08058B84:
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp]
	ldr r2, _08058C00 @ =0xFFFF0000
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r3, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r3, #4]
	ldr r0, [sp, #0x34]
	mov r1, sb
	str r3, [sp, #0x38]
	bl __divsi3
	mov r2, sl
	ldrh r1, [r2, #2]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r2, _08058C04 @ =0x0000FFFF
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	mov r1, sl
	ldrh r0, [r1]
	subs r1, r5, r0
	ldr r3, [sp, #0x38]
	cmp r1, #0
	bge _08058BC8
	rsbs r1, r1, #0
_08058BC8:
	mov r2, sl
	ldrh r0, [r2, #4]
	subs r0, r6, r0
	cmp r0, #0
	bge _08058BD4
	rsbs r0, r0, #0
_08058BD4:
	adds r0, r1, r0
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bhi _08058C4C
	ldr r0, [sp, #0x10]
	mov r1, sp
	str r3, [sp, #0x38]
	ldr r2, [sp, #0x5c]
	bl _call_via_r2
	str r0, [sp, #0x2c]
	ldr r3, [sp, #0x38]
	cmp r0, #2
	bne _08058C08
	mov r0, sp
	ldrh r0, [r0, #0x24]
	strh r0, [r3]
	mov r1, sp
	ldrh r1, [r1, #0x28]
	strh r1, [r3, #4]
	b _08058C4C
	.align 2, 0
_08058C00: .4byte 0xFFFF0000
_08058C04: .4byte 0x0000FFFF
_08058C08:
	ldr r2, [sp, #0x2c]
	cmp r2, #0
	bne _08058C4C
	str r5, [sp, #0x24]
	str r6, [sp, #0x28]
	cmp r8, r7
	bge _08058C2A
	ldr r0, [sp, #0x1c]
	adds r6, r6, r0
	mov r1, r8
	subs r4, r4, r1
	cmp r4, #0
	bge _08058C3A
	adds r4, r4, r7
	ldr r2, [sp, #0x18]
	adds r5, r5, r2
	b _08058C3A
_08058C2A:
	ldr r0, [sp, #0x18]
	adds r5, r5, r0
	subs r4, r4, r7
	cmp r4, #0
	bge _08058C3A
	add r4, r8
	ldr r1, [sp, #0x1c]
	adds r6, r6, r1
_08058C3A:
	ldr r2, [sp, #0x34]
	ldr r0, [sp, #0x14]
	adds r2, r2, r0
	str r2, [sp, #0x34]
	ldr r1, [sp, #0x20]
	adds r1, #1
	str r1, [sp, #0x20]
	cmp r1, sb
	blt _08058B84
_08058C4C:
	mov r0, sp
	ldrh r0, [r0]
	ldr r2, [sp, #8]
	strh r0, [r2]
	mov r1, sp
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	ldrh r0, [r1, #4]
	strh r0, [r2, #4]
	ldr r0, [sp, #0x2c]
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start nullsub_34
nullsub_34: @ 0x08058C70
	bx lr
	.align 2, 0

	thumb_func_start sub_08058C74
sub_08058C74: @ 0x08058C74
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r7, r2, #0
	ldrh r4, [r1]
	ldrh r2, [r1, #4]
	subs r0, r4, r2
	lsls r0, r0, #4
	cmp r0, #0
	bge _08058C88
	adds r0, #0x1f
_08058C88:
	asrs r5, r0, #5
	adds r0, r2, r4
	lsls r0, r0, #3
	asrs r4, r0, #5
	ldrh r0, [r1, #2]
	lsls r0, r0, #3
	asrs r0, r0, #4
	subs r4, r4, r0
	ldrb r0, [r3, #2]
	ldrb r1, [r3, #3]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3, #4]
	ldrb r0, [r3, #5]
	lsls r0, r0, #8
	orrs r0, r2
	lsls r0, r0, #3
	adds r5, r5, r1
	adds r4, r4, r0
	lsls r1, r5, #0x10
	ldr r3, _08058CF0 @ =0xFFFF0000
	lsls r0, r4, #0x10
	ldr r4, _08058CF4 @ =0x0000FFFF
	lsrs r6, r1, #0x10
	orrs r6, r0
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	lsrs r2, r6, #0x10
	ldrh r1, [r7]
	subs r0, r0, r1
	ldrh r1, [r7, #2]
	subs r2, r2, r1
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	ands r3, r6
	orrs r3, r0
	lsls r2, r2, #0x10
	ldr r0, _08058CF8 @ =0xFFFC0000
	adds r2, r2, r0
	ands r3, r4
	orrs r3, r2
	mov r1, ip
	str r3, [r1]
	mov r0, ip
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08058CF0: .4byte 0xFFFF0000
_08058CF4: .4byte 0x0000FFFF
_08058CF8: .4byte 0xFFFC0000

	thumb_func_start sub_08058CFC
sub_08058CFC: @ 0x08058CFC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	bl sub_08139B74
	adds r6, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0x15]
	bl sub_08028774
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0xb
	ldr r0, _08058D54 @ =gUnk_0861CA5C
	adds r4, r4, r0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0x15]
	bl sub_08028728
	ldrb r0, [r0, #1]
	adds r2, r0, #0
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08058D48
	ldrb r0, [r6, #1]
	cmp r0, #2
	beq _08058D40
	cmp r0, #2
	blt _08058D48
	cmp r0, #5
	bgt _08058D48
	cmp r0, #4
	blt _08058D48
_08058D40:
	lsls r0, r2, #0x10
	ldr r1, _08058D58 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
_08058D48:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08058D54: .4byte gUnk_0861CA5C
_08058D58: .4byte 0xFFFF0000

	thumb_func_start sub_08058D5C
sub_08058D5C: @ 0x08058D5C
	asrs r0, r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr

	thumb_func_start sub_08058D64
sub_08058D64: @ 0x08058D64
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr

	thumb_func_start sub_08058D6C
sub_08058D6C: @ 0x08058D6C
	lsls r0, r0, #5
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0

	thumb_func_start sub_08058D78
sub_08058D78: @ 0x08058D78
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0

	thumb_func_start sub_08058D80
sub_08058D80: @ 0x08058D80
	ldrh r2, [r0]
	asrs r2, r2, #5
	strb r2, [r1]
	ldrh r2, [r0, #4]
	asrs r2, r2, #5
	strb r2, [r1, #2]
	ldrh r0, [r0, #2]
	asrs r0, r0, #4
	strb r0, [r1, #1]
	bx lr

	thumb_func_start sub_08058D94
sub_08058D94: @ 0x08058D94
	ldrb r2, [r0]
	lsls r2, r2, #5
	adds r2, #0x10
	strh r2, [r1]
	ldrb r2, [r0, #2]
	lsls r2, r2, #5
	adds r2, #0x10
	strh r2, [r1, #4]
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	strh r0, [r1, #2]
	bx lr

	thumb_func_start sub_08058DAC
sub_08058DAC: @ 0x08058DAC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r2, #0
	ldrh r3, [r1]
	ldrh r2, [r1, #4]
	subs r0, r3, r2
	lsls r0, r0, #4
	cmp r0, #0
	bge _08058DC0
	adds r0, #0x1f
_08058DC0:
	asrs r5, r0, #5
	adds r0, r2, r3
	lsls r0, r0, #3
	asrs r3, r0, #5
	ldrh r0, [r1, #2]
	lsls r0, r0, #3
	asrs r0, r0, #4
	subs r3, r3, r0
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	lsls r1, r1, #8
	orrs r1, r0
	lsls r1, r1, #3
	ldrb r2, [r4, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #8
	orrs r0, r2
	lsls r0, r0, #3
	adds r5, r5, r1
	adds r3, r3, r0
	lsls r0, r5, #0x10
	lsls r1, r3, #0x10
	lsrs r6, r0, #0x10
	orrs r6, r1
	str r6, [r7]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08058DFC
sub_08058DFC: @ 0x08058DFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	str r1, [sp]
	mov r8, r2
	adds r5, r3, #0
	ldr r6, [sp, #0x24]
	ldr r0, [sp, #0x28]
	mov sb, r0
	ldr r1, [sp, #0x2c]
	mov sl, r1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r2, sb
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	mov r0, sl
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	mov r1, r8
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	bl sub_08028728
	adds r7, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08028728
	mov r2, r8
	ldrb r1, [r2, #0x14]
	strh r1, [r4, #4]
	ldrb r1, [r2, #0x15]
	strh r1, [r4, #6]
	strh r5, [r4, #8]
	strh r6, [r4, #0xa]
	ldr r1, [sp]
	str r1, [r4]
	ldrb r3, [r7, #1]
	movs r2, #0x3f
	adds r1, r2, #0
	ands r1, r3
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #1]
	ands r2, r0
	strh r2, [r4, #0xe]
	mov r2, sb
	strh r2, [r4, #0x10]
	mov r0, sl
	strh r0, [r4, #0x12]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08058E80
sub_08058E80: @ 0x08058E80
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	bne _08058E90
	movs r0, #0
	b _08058F0E
_08058E90:
	ldr r1, [r6, #4]
	ldrb r2, [r1, #0x17]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _08058EA0
	movs r0, #1
	b _08058F0E
_08058EA0:
	movs r0, #2
	movs r5, #3
	ands r0, r2
	cmp r0, #0
	beq _08058EAC
	movs r5, #0x23
_08058EAC:
	ldr r2, [r6]
	adds r0, r2, #0
	adds r0, #0x40
	ldrh r0, [r0]
	cmp r0, #0
	bne _08058EBC
	movs r0, #4
	orrs r5, r0
_08058EBC:
	adds r0, r2, #0
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r6]
	ldr r1, [r6, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08058EEC
	orrs r5, r1
_08058EEC:
	ldr r0, [r6, #4]
	ldrb r1, [r0, #0xc]
	movs r0, #0xe0
	ands r0, r1
	cmp r0, #0
	bne _08058F0C
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	bne _08058F0C
	movs r0, #0x41
	ands r0, r5
	cmp r0, #0
	beq _08058F0C
	movs r0, #0x10
	orrs r5, r0
_08058F0C:
	adds r0, r5, #0
_08058F0E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08058F14
sub_08058F14: @ 0x08058F14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	ldr r0, _08058F3C @ =gUnk_0202A238
	ldr r5, [r0]
	adds r1, r5, #0
	cmp r4, #0
	bne _08058F50
	mov sl, r5
	b _08058F6E
	.align 2, 0
_08058F3C: .4byte gUnk_0202A238
_08058F40:
	mov sl, r1
	b _08058F6E
_08058F44:
	adds r7, r1, #0
	movs r0, #0x80
	mov r1, r8
	orrs r1, r0
	mov r8, r1
	b _08058FE8
_08058F50:
	movs r2, #0
_08058F52:
	adds r0, r1, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _08058F62
	ldr r0, [r1]
	cmp r4, r0
	beq _08058F40
_08058F62:
	adds r2, #1
	adds r1, #0xd0
	cmp r2, #0x19
	ble _08058F52
	movs r0, #0
	mov sl, r0
_08058F6E:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_08028728
	ldrb r0, [r0, #1]
	movs r7, #0x3f
	ands r7, r0
	mov r1, sl
	ldrh r0, [r1, #0x12]
	bl sub_08058D64
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r7, sb
	ble _08058F90
	mov r7, sb
_08058F90:
	movs r0, #0
	mov r8, r0
	movs r1, #0
	str r1, [sp, #8]
_08058F98:
	adds r0, r5, #0
	bl sub_0806D918
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08058FDC
	cmp r5, sl
	beq _08058FDC
	ldrh r0, [r5, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r5, #0x14]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrh r0, [r5, #0x12]
	bl sub_08058D64
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, [sp]
	cmp r4, r0
	bne _08058FDC
	ldr r0, [sp, #4]
	cmp r6, r0
	bne _08058FDC
	adds r0, r1, #3
	cmp r0, sb
	ble _08058F44
_08058FDC:
	ldr r1, [sp, #8]
	adds r1, #1
	str r1, [sp, #8]
	adds r5, #0xd0
	cmp r1, #0x19
	ble _08058F98
_08058FE8:
	mov r0, r8
	orrs r0, r7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08059000
sub_08059000: @ 0x08059000
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r7, r2, #0
	ldr r0, [sp, #0x18]
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r3, #0
	movs r4, #0
	ldr r0, _0805904C @ =gUnk_0202A238
	ldr r2, [r0]
_08059022:
	adds r1, r2, #0
	ldr r0, [r1, #8]
	cmp r0, ip
	beq _08059050
	adds r2, #0xd0
	adds r4, #1
	cmp r4, #0x19
	ble _08059022
	movs r4, #0
_08059034:
	cmp r6, #0
	bge _0805903A
	b _08059198
_0805903A:
	cmp r6, #1
	ble _08059054
	cmp r6, #8
	ble _08059044
	b _08059198
_08059044:
	cmp r5, #1
	bne _0805904A
	b _08059146
_0805904A:
	b _08059144
	.align 2, 0
_0805904C: .4byte gUnk_0202A238
_08059050:
	adds r4, r2, #0
	b _08059034
_08059054:
	cmp r5, #1
	beq _080590D0
	cmp r5, #1
	bgt _08059062
	cmp r5, #0
	beq _08059068
	b _0805919A
_08059062:
	cmp r5, #2
	beq _08059118
	b _0805919A
_08059068:
	mov r0, ip
	bl sub_08012C64
	adds r2, r0, #0
	cmp r2, #0xf
	bls _080590A4
	ldr r0, _08059090 @ =gUnk_0202A514
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08059098
	ldr r0, _08059094 @ =gUnk_0202A51C
	adds r1, r2, #0
	subs r1, #0x10
	lsls r1, r1, #9
	ldr r0, [r0]
	adds r3, r0, r1
	b _0805919A
	.align 2, 0
_08059090: .4byte gUnk_0202A514
_08059094: .4byte gUnk_0202A51C
_08059098:
	lsls r0, r2, #9
	ldr r1, _080590A0 @ =0x06012000
	adds r3, r0, r1
	b _0805919A
	.align 2, 0
_080590A0: .4byte 0x06012000
_080590A4:
	lsls r0, r2, #9
	ldr r1, _080590C4 @ =0x06010000
	adds r3, r0, r1
	adds r2, r4, #0
	adds r2, #0x78
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	ldr r1, _080590C8 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x7a
	ldr r0, _080590CC @ =0x0000FFFF
	strh r0, [r1]
	b _0805919A
	.align 2, 0
_080590C4: .4byte 0x06010000
_080590C8: .4byte 0x0000FFFE
_080590CC: .4byte 0x0000FFFF
_080590D0:
	ldr r2, _080590EC @ =gUnk_0202A510
	ldr r4, [r2]
	adds r3, r4, r7
	ldr r0, _080590F0 @ =gUnk_0202A50C
	ldr r1, [r0]
	adds r5, r0, #0
	cmp r3, r1
	bhs _080590E6
	ldr r0, _080590F4 @ =0x06013FFF
	cmp r4, r0
	bhi _080590FC
_080590E6:
	ldr r0, _080590F8 @ =0x06014000
	b _080590FE
	.align 2, 0
_080590EC: .4byte gUnk_0202A510
_080590F0: .4byte gUnk_0202A50C
_080590F4: .4byte 0x06013FFF
_080590F8: .4byte 0x06014000
_080590FC:
	adds r0, r4, #0
_080590FE:
	str r0, [r2]
	adds r3, r0, #0
	adds r1, r3, r7
	ldr r0, [r5]
	cmp r1, r0
	bhs _08059184
	ldr r0, _08059114 @ =0x06013FFF
	cmp r3, r0
	bls _08059184
	b _08059190
	.align 2, 0
_08059114: .4byte 0x06013FFF
_08059118:
	mov r0, r8
	cmp r0, #0
	beq _08059124
	cmp r0, #1
	beq _0805912C
	b _080590D0
_08059124:
	ldr r3, _08059128 @ =0x06004700
	b _0805912E
	.align 2, 0
_08059128: .4byte 0x06004700
_0805912C:
	ldr r3, _0805913C @ =0x06004C00
_0805912E:
	adds r2, r4, #0
	adds r2, #0x78
	ldrh r1, [r2]
	ldr r0, _08059140 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	b _0805919A
	.align 2, 0
_0805913C: .4byte 0x06004C00
_08059140: .4byte 0x0000FFBF
_08059144:
	b _08059144
_08059146:
	ldr r2, _08059160 @ =gUnk_0202A510
	ldr r4, [r2]
	adds r3, r4, r7
	ldr r0, _08059164 @ =gUnk_0202A50C
	ldr r1, [r0]
	adds r5, r0, #0
	cmp r3, r1
	bhs _0805915C
	ldr r0, _08059168 @ =0x06013FFF
	cmp r4, r0
	bhi _08059170
_0805915C:
	ldr r0, _0805916C @ =0x06014000
	b _08059172
	.align 2, 0
_08059160: .4byte gUnk_0202A510
_08059164: .4byte gUnk_0202A50C
_08059168: .4byte 0x06013FFF
_0805916C: .4byte 0x06014000
_08059170:
	adds r0, r4, #0
_08059172:
	str r0, [r2]
	adds r3, r0, #0
	adds r1, r3, r7
	ldr r0, [r5]
	cmp r1, r0
	bhs _08059184
	ldr r0, _08059188 @ =0x06013FFF
	cmp r3, r0
	bhi _08059190
_08059184:
	ldr r0, _0805918C @ =0x06014000
	b _08059192
	.align 2, 0
_08059188: .4byte 0x06013FFF
_0805918C: .4byte 0x06014000
_08059190:
	adds r0, r3, #0
_08059192:
	adds r0, r0, r7
	str r0, [r2]
	b _0805919A
_08059198:
	b _08059198
_0805919A:
	adds r0, r3, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080591A8
sub_080591A8: @ 0x080591A8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #8
	beq _08059296
	cmp r1, #9
	bne _08059294
	cmp r5, #8
	beq _080591EC
	cmp r5, #8
	bls _080591CA
	cmp r5, #9
	beq _08059240
	b _08059296
_080591CA:
	cmp r5, #1
	bhi _08059296
	bl sub_0806BDB0
	adds r4, r0, #0
	bl sub_0806BDC4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #9
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08089094
	b _08059296
_080591EC:
	adds r0, r6, #0
	bl sub_0806D9F4
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x78
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08059296
	adds r0, r6, #0
	movs r1, #0
	bl sub_080131AC
	ldrh r0, [r5, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r5, #0x14]
	bl sub_08058D5C
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r3, #0
	bl sub_0805954C
	b _08059296
_08059240:
	adds r0, r6, #0
	bl sub_0806D9F4
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x78
	ldrh r1, [r2]
	ldr r0, _08059290 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08059296
	ldrh r0, [r5, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r5, #0x14]
	bl sub_08058D5C
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	movs r2, #3
	movs r3, #0
	bl sub_0805954C
	adds r0, r6, #0
	movs r1, #1
	bl sub_080131AC
	b _08059296
	.align 2, 0
_08059290: .4byte 0x0000FDFF
_08059294:
	b _08059294
_08059296:
	movs r0, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080592A0
sub_080592A0: @ 0x080592A0
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _08059348 @ =0x06016000
	ldr r0, _0805934C @ =gUnk_0202A50C
	str r1, [r0]
	ldr r1, _08059350 @ =gUnk_0202A510
	ldr r0, _08059354 @ =0x06014000
	str r0, [r1]
	ldr r0, _08059358 @ =gUnk_0202A528
	movs r1, #0x20
	bl memzero
	ldr r0, _0805935C @ =gUnk_0202A520
	movs r4, #0
	strb r4, [r0]
	ldr r0, _08059360 @ =gUnk_0202A518
	strb r4, [r0]
	ldr r0, _08059364 @ =gUnk_0202A519
	strb r4, [r0]
	ldr r6, _08059368 @ =gUnk_0202A500
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_0806CD3C
	str r0, [r6]
	ldr r5, _0805936C @ =gUnk_0202A504
	movs r0, #0xe0
	lsls r0, r0, #3
	bl sub_0806CD3C
	str r0, [r5]
	ldr r0, _08059370 @ =gUnk_0202A50A
	strb r4, [r0]
	ldr r0, _08059374 @ =gUnk_086D80C4
	ldr r1, [r6]
	movs r2, #0
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl sub_0801A59C
	ldr r5, _08059378 @ =gUnk_0202A238
	movs r4, #0xa9
	lsls r4, r4, #5
	adds r0, r4, #0
	bl sub_0806CD3C
	str r0, [r5]
	adds r1, r4, #0
	bl memzero
	ldr r4, _0805937C @ =gUnk_0202A240
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r4, #0
	bl memzero
	ldr r0, _08059380 @ =0x0000D8F0
	adds r4, #8
	movs r1, #0xf
_0805931C:
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	adds r4, #0x2c
	subs r1, #1
	cmp r1, #0
	bge _0805931C
	bl sub_0806CD84
	ldr r2, _08059384 @ =sub_08059000
	ldr r3, _08059388 @ =sub_080591A8
	movs r1, #0x1a
	bl sub_08013374
	bl sub_0806C408
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059348: .4byte 0x06016000
_0805934C: .4byte gUnk_0202A50C
_08059350: .4byte gUnk_0202A510
_08059354: .4byte 0x06014000
_08059358: .4byte gUnk_0202A528
_0805935C: .4byte gUnk_0202A520
_08059360: .4byte gUnk_0202A518
_08059364: .4byte gUnk_0202A519
_08059368: .4byte gUnk_0202A500
_0805936C: .4byte gUnk_0202A504
_08059370: .4byte gUnk_0202A50A
_08059374: .4byte gUnk_086D80C4
_08059378: .4byte gUnk_0202A238
_0805937C: .4byte gUnk_0202A240
_08059380: .4byte 0x0000D8F0
_08059384: .4byte sub_08059000
_08059388: .4byte sub_080591A8

	thumb_func_start sub_0805938C
sub_0805938C: @ 0x0805938C
	push {r4, r5, r6, lr}
	ldr r0, _080593E0 @ =gUnk_0202A238
	ldr r4, [r0]
	movs r5, #0x19
_08059394:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _080593AC
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080593A8
	bl sub_08012CBC
_080593A8:
	movs r0, #0
	str r0, [r4, #8]
_080593AC:
	subs r5, #1
	adds r4, #0xd0
	cmp r5, #0
	bge _08059394
	bl sub_080133E0
	ldr r6, _080593E0 @ =gUnk_0202A238
	ldr r0, [r6]
	bl sub_0806CD64
	ldr r5, _080593E4 @ =gUnk_0202A504
	ldr r0, [r5]
	bl sub_0806CD64
	ldr r4, _080593E8 @ =gUnk_0202A500
	ldr r0, [r4]
	bl sub_0806CD64
	movs r0, #0
	str r0, [r6]
	str r0, [r4]
	str r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080593E0: .4byte gUnk_0202A238
_080593E4: .4byte gUnk_0202A504
_080593E8: .4byte gUnk_0202A500

	thumb_func_start sub_080593EC
sub_080593EC: @ 0x080593EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	adds r7, r1, #0
	ldr r1, _08059494 @ =gUnk_0860FC68
	mov r8, r1
	ldr r5, [r7, #4]
	ldr r2, [r5, #8]
	mov ip, r2
	movs r3, #0x1c
	ldrsh r1, [r0, r3]
	movs r4, #4
	ldrsh r2, [r5, r4]
	subs r2, #0x10
	adds r1, r1, r2
	movs r3, #0x1e
	ldrsh r2, [r0, r3]
	movs r4, #6
	ldrsh r3, [r5, r4]
	subs r3, #4
	adds r2, r2, r3
	movs r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r3, _08059498 @ =gUnk_086DB2E8
	adds r3, #0x37
	ldrb r4, [r3]
	movs r3, #0xf
	ands r3, r4
	str r3, [sp, #0x14]
	ldrh r3, [r5, #4]
	subs r3, #0x10
	ldrh r4, [r0, #0xe]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r3, [sp, #0x18]
	ldrh r3, [r5, #6]
	subs r3, #4
	ldrh r4, [r0, #0x10]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r3, [sp, #0x1c]
	movs r4, #0x16
	ldrsh r3, [r0, r4]
	str r3, [sp, #0x20]
	movs r4, #0x18
	ldrsh r3, [r0, r4]
	str r3, [sp, #0x24]
	movs r3, #0x1a
	ldrsh r0, [r0, r3]
	str r0, [sp, #0x28]
	mov r0, r8
	ldr r4, [r0]
	mov r0, ip
	movs r3, #0
	bl _call_via_r4
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08059488
	strb r6, [r7]
	ldr r0, [r7, #4]
	adds r0, #0xc
	str r0, [r7, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _08059488
	str r0, [r7, #4]
_08059488:
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059494: .4byte gUnk_0860FC68
_08059498: .4byte gUnk_086DB2E8

	thumb_func_start sub_0805949C
sub_0805949C: @ 0x0805949C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	ldr r6, _08059538 @ =gUnk_0202A528
	add r7, sp, #8
	movs r0, #3
	mov r8, r0
_080594AC:
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _0805951E
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	bl sub_08028728
	ldrb r3, [r6, #2]
	ldr r1, _0805953C @ =0xFFFFFF00
	ldr r2, [sp, #8]
	ands r2, r1
	orrs r2, r3
	str r2, [sp, #8]
	ldrb r3, [r6, #3]
	lsls r3, r3, #0x10
	ldr r1, _08059540 @ =0xFF00FFFF
	ands r1, r2
	orrs r1, r3
	str r1, [sp, #8]
	ldrb r0, [r0, #1]
	movs r2, #0x3f
	ands r2, r0
	lsls r2, r2, #8
	ldr r0, _08059544 @ =0xFFFF00FF
	ands r1, r0
	orrs r1, r2
	str r1, [sp, #8]
	add r0, sp, #8
	add r1, sp, #0xc
	bl sub_08058D94
	ldrb r0, [r7]
	bl sub_08058D6C
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldrb r0, [r7, #1]
	bl sub_08058D78
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrb r0, [r7, #2]
	bl sub_08058D6C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	ldr r0, _08059548 @ =sub_080593EC
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0807696C
_0805951E:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r6, #8
	mov r0, r8
	cmp r0, #0
	bge _080594AC
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059538: .4byte gUnk_0202A528
_0805953C: .4byte 0xFFFFFF00
_08059540: .4byte 0xFF00FFFF
_08059544: .4byte 0xFFFF00FF
_08059548: .4byte sub_080593EC

	thumb_func_start sub_0805954C
sub_0805954C: @ 0x0805954C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	movs r1, #0
	ldr r5, _080595B4 @ =gUnk_0202A528
	adds r2, r5, #4
_08059566:
	lsls r3, r1, #3
	ldr r0, [r2]
	cmp r0, #0
	beq _080595D4
	adds r2, #8
	adds r1, #1
	cmp r1, #3
	ble _08059566
	movs r2, #0
_08059578:
	cmp r2, #0
	bne _0805957E
	b _08059662
_0805957E:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08059588
	movs r4, #3
_08059588:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	movs r1, #3
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _08059596
	movs r4, #0xfe
_08059596:
	cmp r6, #0
	bne _08059600
	lsls r0, r4, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	asrs r0, r0, #0x18
	cmp r0, #5
	bhi _08059662
	lsls r0, r0, #2
	ldr r1, _080595B8 @ =_080595BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080595B4: .4byte gUnk_0202A528
_080595B8: .4byte _080595BC
_080595BC: @ jump table
	.4byte _080595D8 @ case 0
	.4byte _080595E0 @ case 1
	.4byte _080595E0 @ case 2
	.4byte _080595E8 @ case 3
	.4byte _080595F0 @ case 4
	.4byte _080595F8 @ case 5
_080595D4:
	adds r2, r3, r5
	b _08059578
_080595D8:
	ldr r0, _080595DC @ =gUnk_0860F078
	b _08059656
	.align 2, 0
_080595DC: .4byte gUnk_0860F078
_080595E0:
	ldr r0, _080595E4 @ =gUnk_0860F114
	b _08059656
	.align 2, 0
_080595E4: .4byte gUnk_0860F114
_080595E8:
	ldr r0, _080595EC @ =gUnk_0860F18C
	b _08059656
	.align 2, 0
_080595EC: .4byte gUnk_0860F18C
_080595F0:
	ldr r0, _080595F4 @ =gUnk_0860F210
	b _08059656
	.align 2, 0
_080595F4: .4byte gUnk_0860F210
_080595F8:
	ldr r0, _080595FC @ =gUnk_0860F2B8
	b _08059656
	.align 2, 0
_080595FC: .4byte gUnk_0860F2B8
_08059600:
	lsls r0, r4, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	asrs r0, r0, #0x18
	cmp r0, #5
	bhi _08059662
	lsls r0, r0, #2
	ldr r1, _08059618 @ =_0805961C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059618: .4byte _0805961C
_0805961C: @ jump table
	.4byte _08059634 @ case 0
	.4byte _0805963C @ case 1
	.4byte _0805963C @ case 2
	.4byte _08059644 @ case 3
	.4byte _0805964C @ case 4
	.4byte _08059654 @ case 5
_08059634:
	ldr r0, _08059638 @ =gUnk_0860F624
	b _08059656
	.align 2, 0
_08059638: .4byte gUnk_0860F624
_0805963C:
	ldr r0, _08059640 @ =gUnk_0860F5A0
	b _08059656
	.align 2, 0
_08059640: .4byte gUnk_0860F5A0
_08059644:
	ldr r0, _08059648 @ =gUnk_0860F51C
	b _08059656
	.align 2, 0
_08059648: .4byte gUnk_0860F51C
_0805964C:
	ldr r0, _08059650 @ =gUnk_0860F48C
	b _08059656
	.align 2, 0
_08059650: .4byte gUnk_0860F48C
_08059654:
	ldr r0, _08059668 @ =gUnk_0860F3F0
_08059656:
	str r0, [r2, #4]
	movs r0, #0
	strb r0, [r2]
	mov r0, ip
	strb r0, [r2, #2]
	strb r7, [r2, #3]
_08059662:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059668: .4byte gUnk_0860F3F0

	thumb_func_start sub_0805966C
sub_0805966C: @ 0x0805966C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	ldrb r0, [r0, #0x14]
	bl sub_08058D6C
	strh r0, [r7, #0x10]
	ldr r0, [r7, #4]
	ldrb r0, [r0, #0x15]
	bl sub_08058D6C
	strh r0, [r7, #0x14]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #0x16]
	adds r0, r7, #0
	adds r0, #0x48
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r5, [r7]
	ldr r6, [r7, #4]
	ldrh r0, [r7, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r7, #0x14]
	bl sub_08058D5C
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0804C3F8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r1, r7, #0
	adds r1, #0x6e
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _080596D2
	cmp r4, #0xff
	beq _080596D2
	movs r0, #1
	strb r0, [r1]
	b _080596E0
_080596D2:
	adds r1, r7, #0
	adds r1, #0x6e
	movs r0, #0
	strb r0, [r1]
	subs r1, #4
	movs r0, #2
	strh r0, [r1]
_080596E0:
	ldr r1, [r7, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	bl sub_08028728
	cmp r4, #0xff
	bne _080596FC
	ldrb r1, [r0, #1]
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r0, r1
	bl sub_08058D78
	b _08059706
_080596FC:
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r0, r4
	bl sub_08058D78
_08059706:
	strh r0, [r7, #0x12]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	str r0, [r7, #0x18]
	str r1, [r7, #0x1c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08059718
sub_08059718: @ 0x08059718
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	movs r3, #0
	ldr r0, _080597A0 @ =gUnk_0202A238
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x76
	adds r5, r0, #0
_0805972E:
	adds r1, r5, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080597A4
	adds r2, #0xd0
	adds r5, #0xd0
	adds r3, #1
	cmp r3, #0x19
	ble _0805972E
	movs r7, #0
_08059742:
	adds r0, r7, #0
	movs r1, #0xd0
	bl memzero
	adds r1, r7, #0
	adds r1, #0x76
	movs r0, #1
	strb r0, [r1]
	str r6, [r7]
	mov r0, r8
	str r0, [r7, #4]
	adds r0, r6, #0
	bl sub_081432A8
	adds r4, r7, #0
	adds r4, #0x68
	strh r0, [r4]
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0x1e
	bl sub_08143B70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080597A8
	adds r0, r6, #0
	movs r1, #1
	bl sub_08143378
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrh r4, [r4]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	movs r2, #1
	b _080597CC
	.align 2, 0
_080597A0: .4byte gUnk_0202A238
_080597A4:
	adds r7, r5, #0
	b _08059742
_080597A8:
	adds r0, r6, #0
	movs r1, #0
	bl sub_08143378
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrh r4, [r4]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	movs r2, #0
_080597CC:
	bl sub_08011C50
	str r0, [r7, #8]
	adds r3, r7, #0
	adds r3, #0x6a
	movs r6, #2
	movs r0, #2
	strh r0, [r3]
	adds r2, r7, #0
	adds r2, #0x56
	ldrh r1, [r2]
	ldr r0, _08059848 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r7, #8]
	ldrh r1, [r3]
	adds r5, r7, #0
	adds r5, #0x48
	ldrb r2, [r5]
	adds r3, #4
	ldrb r4, [r3]
	movs r3, #1
	ands r3, r4
	bl sub_0801309C
	ldr r0, [r7, #8]
	bl sub_08012EA8
	ldr r0, [r7, #8]
	bl sub_08012F5C
	adds r0, r7, #0
	adds r0, #0x4a
	strb r6, [r0]
	mov r1, r8
	ldrb r0, [r1, #0x14]
	bl sub_08058D6C
	strh r0, [r7, #0x10]
	mov r1, r8
	ldrb r0, [r1, #0x15]
	bl sub_08058D6C
	strh r0, [r7, #0x14]
	ldrh r1, [r7, #0x10]
	strh r1, [r7, #0x18]
	strh r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x49
	movs r0, #0xff
	strb r0, [r1]
	mov r1, r8
	ldrb r0, [r1, #0x16]
	strb r0, [r5]
	adds r0, r7, #0
	bl sub_0805AA7C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059848: .4byte 0x0000F7FF

	thumb_func_start sub_0805984C
sub_0805984C: @ 0x0805984C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r0, [r6, #0x10]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080598D4 @ =0xFFFFFF00
	ands r5, r1
	orrs r5, r0
	ldrh r0, [r6, #0x14]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r1, _080598D8 @ =0xFF00FFFF
	ands r5, r1
	orrs r5, r0
	ldr r0, [r6]
	ldr r1, [r6, #4]
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	ldr r0, [r6]
	ldr r1, [r6, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	adds r3, r0, #0
	adds r7, r6, #0
	adds r7, #0x6e
	ldrb r1, [r7]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _080598CC
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r5, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r6, #0
	adds r2, #0x30
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	lsrs r3, r3, #8
	movs r4, #1
	ands r3, r4
	bl sub_0805954C
	ldrb r0, [r7]
	ands r4, r0
	strb r4, [r7]
_080598CC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080598D4: .4byte 0xFFFFFF00
_080598D8: .4byte 0xFF00FFFF

	thumb_func_start sub_080598DC
sub_080598DC: @ 0x080598DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	mov r8, r0
	adds r7, r1, #0
	ldr r0, _080599C8 @ =gUnk_0860EF24
	mov ip, r0
	mov r1, r8
	ldrh r1, [r1, #0xe]
	str r1, [sp, #0x30]
	mov r2, r8
	ldrh r2, [r2, #0x10]
	str r2, [sp, #0x34]
	adds r0, r7, #0
	adds r0, #0x78
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08059968
	ldrh r0, [r7, #0x10]
	lsrs r0, r0, #3
	ldr r3, _080599CC @ =0xFFFF0000
	adds r1, r3, #0
	ands r1, r4
	orrs r1, r0
	ldrh r0, [r7, #0x12]
	lsrs r0, r0, #1
	lsls r0, r0, #0x10
	ldr r2, _080599D0 @ =0x0000FFFF
	ands r2, r1
	orrs r2, r0
	adds r4, r2, #0
	ldrh r0, [r7, #0x14]
	lsrs r0, r0, #3
	ands r3, r5
	adds r5, r3, #0
	orrs r5, r0
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, [r0]
	adds r6, r0, #0
	adds r3, r7, #0
	adds r3, #0x84
	cmp r2, r1
	bne _0805995C
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r3]
	cmp r0, r1
	bne _0805995C
	adds r0, r7, #0
	adds r0, #0x88
	mov r2, sp
	ldrh r2, [r2, #0x30]
	strh r2, [r0]
	adds r0, #2
	mov r1, sp
	ldrh r1, [r1, #0x34]
	strh r1, [r0]
_0805995C:
	strh r4, [r6]
	lsrs r0, r4, #0x10
	adds r1, r7, #0
	adds r1, #0x82
	strh r0, [r1]
	strh r5, [r3]
_08059968:
	adds r1, r7, #0
	adds r1, #0xac
	movs r2, #0
	ldrsh r3, [r1, r2]
	ldr r4, [sp, #0x30]
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	str r1, [sp, #0x3c]
	str r0, [sp, #0x50]
	adds r5, r7, #0
	adds r5, #0xae
	str r5, [sp, #0x40]
	ldr r6, [sp, #0x34]
	lsls r6, r6, #0x10
	str r6, [sp, #0x54]
	cmp r3, r2
	bne _080599D8
	movs r0, #0
	ldrsh r1, [r5, r0]
	asrs r0, r6, #0x10
	cmp r1, r0
	bne _080599D8
	movs r1, #0
	adds r2, r7, #0
	adds r2, #0xb4
	str r2, [sp, #0x44]
	adds r3, r7, #0
	adds r3, #0xbc
	str r3, [sp, #0x48]
	adds r4, r7, #0
	adds r4, #0xc0
	str r4, [sp, #0x4c]
	ldr r4, _080599D4 @ =gUnk_0202A1F0
	subs r3, #0xc
_080599AC:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r4
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080599AC
	b _08059A44
	.align 2, 0
_080599C8: .4byte gUnk_0860EF24
_080599CC: .4byte 0xFFFF0000
_080599D0: .4byte 0x0000FFFF
_080599D4: .4byte gUnk_0202A1F0
_080599D8:
	ldr r5, [sp, #0x50]
	asrs r0, r5, #0x10
	ldr r6, [sp, #0x54]
	asrs r1, r6, #0x10
	mov r3, r8
	movs r4, #0x16
	ldrsh r2, [r3, r4]
	movs r5, #0x18
	ldrsh r3, [r3, r5]
	mov r6, r8
	movs r5, #0x1a
	ldrsh r4, [r6, r5]
	str r4, [sp]
	mov r6, ip
	str r6, [sp, #4]
	movs r4, #1
	str r4, [sp, #8]
	ldr r5, _08059B38 @ =gUnk_0202A1F0
	str r5, [sp, #0xc]
	ldr r6, _08059B3C @ =gUnk_0860FC5C
	ldr r4, [r6]
	bl _call_via_r4
	movs r1, #0
	adds r0, r7, #0
	adds r0, #0xb4
	str r0, [sp, #0x44]
	adds r2, r7, #0
	adds r2, #0xbc
	str r2, [sp, #0x48]
	adds r3, r7, #0
	adds r3, #0xc0
	str r3, [sp, #0x4c]
	subs r3, #0x10
_08059A1C:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r3, r0
	adds r1, r0, r5
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08059A1C
	mov r4, sp
	ldrh r5, [r4, #0x30]
	ldr r4, [sp, #0x3c]
	strh r5, [r4]
	mov r6, sp
	ldrh r0, [r6, #0x34]
	ldr r6, [sp, #0x40]
	strh r0, [r6]
_08059A44:
	mov r1, r8
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	str r0, [sp, #0x18]
	movs r3, #0x1e
	ldrsh r0, [r1, r3]
	str r0, [sp, #0x1c]
	add r0, sp, #0x18
	movs r1, #0
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	str r1, [sp, #0x24]
	movs r4, #0
	mov r8, r4
	mov r5, sp
	ldrh r5, [r5, #0x30]
	strh r5, [r0, #0x14]
	mov r6, sp
	ldrh r6, [r6, #0x34]
	strh r6, [r0, #0x16]
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x44]
	ldr r1, [r0]
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	beq _08059A7A
	b _08059CCC
_08059A7A:
	adds r4, r7, #0
	adds r4, #0x24
	ldrb r0, [r4]
	cmp r0, #0
	beq _08059B50
	ldr r0, [r7]
	ldr r1, [r7, #4]
	bl sub_08139B74
	adds r5, r0, #0
	ldrh r0, [r7, #0x10]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08059B40 @ =0xFFFFFF00
	mov r2, sl
	ands r2, r1
	orrs r2, r0
	mov sl, r2
	ldrh r0, [r7, #0x14]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r1, _08059B44 @ =0xFF00FFFF
	mov r3, sl
	ands r3, r1
	orrs r3, r0
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r3, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _08059B48 @ =gUnk_0861CA5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08059BC0
	ldrb r0, [r5, #1]
	cmp r0, #3
	bne _08059BC0
	ldrb r0, [r4]
	cmp r0, #0
	beq _08059BC0
	adds r0, r7, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	adds r5, r0, #0
	adds r6, r7, #0
	adds r6, #0x6d
	cmp r1, #3
	bls _08059AF6
	mov r4, r8
	strb r4, [r5]
	strb r4, [r6]
_08059AF6:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r7]
	ldr r1, [r7, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08059B2E
	b _08059C68
_08059B2E:
	ldrb r0, [r5]
	lsls r0, r0, #3
	ldr r1, _08059B4C @ =gUnk_0860EFCA
	b _08059C6E
	.align 2, 0
_08059B38: .4byte gUnk_0202A1F0
_08059B3C: .4byte gUnk_0860FC5C
_08059B40: .4byte 0xFFFFFF00
_08059B44: .4byte 0xFF00FFFF
_08059B48: .4byte gUnk_0861CA5C
_08059B4C: .4byte gUnk_0860EFCA
_08059B50:
	ldr r6, [sp, #0x48]
	ldr r1, [r6]
	ldr r0, _08059BFC @ =gUnk_0860EFBC
	cmp r1, r0
	bne _08059B5C
	b _08059C98
_08059B5C:
	ldr r0, _08059C00 @ =gUnk_0860EFEA
	cmp r1, r0
	bne _08059B64
	b _08059C98
_08059B64:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	bl sub_08139B74
	adds r5, r0, #0
	ldrh r0, [r7, #0x10]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08059C04 @ =0xFFFFFF00
	ldr r2, [sp, #0x38]
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x38]
	ldrh r0, [r7, #0x14]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r1, _08059C08 @ =0xFF00FFFF
	ldr r3, [sp, #0x38]
	ands r3, r1
	orrs r3, r0
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r3, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _08059C0C @ =gUnk_0861CA5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08059BC0
	ldrb r0, [r5, #1]
	cmp r0, #3
	bne _08059BC0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08059C10
_08059BC0:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r7]
	ldr r1, [r7, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	ldr r2, _08059C00 @ =gUnk_0860EFEA
	cmp r1, #0
	bne _08059C94
	ldr r2, _08059BFC @ =gUnk_0860EFBC
	b _08059C94
	.align 2, 0
_08059BFC: .4byte gUnk_0860EFBC
_08059C00: .4byte gUnk_0860EFEA
_08059C04: .4byte 0xFFFFFF00
_08059C08: .4byte 0xFF00FFFF
_08059C0C: .4byte gUnk_0861CA5C
_08059C10:
	adds r0, r7, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	adds r5, r0, #0
	adds r6, r7, #0
	adds r6, #0x6d
	cmp r1, #3
	bls _08059C26
	mov r4, r8
	strb r4, [r5]
	strb r4, [r6]
_08059C26:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r7]
	ldr r1, [r7, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08059C68
	ldrb r0, [r5]
	lsls r0, r0, #3
	ldr r1, _08059C64 @ =gUnk_0860EFCA
	b _08059C6E
	.align 2, 0
_08059C64: .4byte gUnk_0860EFCA
_08059C68:
	ldrb r0, [r5]
	lsls r0, r0, #3
	ldr r1, _08059CBC @ =gUnk_0860EFF8
_08059C6E:
	adds r2, r0, r1
	ldrb r0, [r6]
	adds r0, #1
	movs r1, #0
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08059C94
	strb r1, [r6]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08059C94
	strb r1, [r5]
	strb r1, [r6]
_08059C94:
	ldr r5, [sp, #0x48]
	str r2, [r5]
_08059C98:
	movs r1, #0
	ldr r5, _08059CC0 @ =gUnk_0202A1F8
	ldr r7, _08059CC4 @ =gUnk_02029D60
	ldr r4, _08059CC8 @ =gUnk_0860FC58
	adds r6, r5, #0
	ldr r3, [sp, #0x4c]
_08059CA4:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r6
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _08059CA4
	b _08059E6E
	.align 2, 0
_08059CBC: .4byte gUnk_0860EFF8
_08059CC0: .4byte gUnk_0202A1F8
_08059CC4: .4byte gUnk_02029D60
_08059CC8: .4byte gUnk_0860FC58
_08059CCC:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	bl sub_08139B74
	adds r4, r0, #0
	ldrh r0, [r7, #0x10]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08059D64 @ =0xFFFFFF00
	mov r6, sb
	ands r6, r1
	orrs r6, r0
	ldrh r0, [r7, #0x14]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r1, _08059D68 @ =0xFF00FFFF
	ands r6, r1
	orrs r6, r0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r6, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _08059D6C @ =gUnk_0861CA5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08059D28
	ldrb r0, [r4, #1]
	cmp r0, #3
	bne _08059D28
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _08059D78
_08059D28:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r7]
	ldr r1, [r7, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	ldr r3, _08059D70 @ =gUnk_0860EFEA
	cmp r1, #0
	bne _08059DFC
	ldr r3, _08059D74 @ =gUnk_0860EFBC
	b _08059DFC
	.align 2, 0
_08059D64: .4byte 0xFFFFFF00
_08059D68: .4byte 0xFF00FFFF
_08059D6C: .4byte gUnk_0861CA5C
_08059D70: .4byte gUnk_0860EFEA
_08059D74: .4byte gUnk_0860EFBC
_08059D78:
	adds r0, r7, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	adds r5, r0, #0
	adds r6, r7, #0
	adds r6, #0x6d
	cmp r1, #3
	bls _08059D8E
	mov r0, r8
	strb r0, [r5]
	strb r0, [r6]
_08059D8E:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r7]
	ldr r1, [r7, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08059DD0
	ldrb r0, [r5]
	lsls r0, r0, #3
	ldr r1, _08059DCC @ =gUnk_0860EFCA
	b _08059DD6
	.align 2, 0
_08059DCC: .4byte gUnk_0860EFCA
_08059DD0:
	ldrb r0, [r5]
	lsls r0, r0, #3
	ldr r1, _08059E98 @ =gUnk_0860EFF8
_08059DD6:
	adds r3, r0, r1
	ldrb r0, [r6]
	adds r0, #1
	movs r1, #0
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08059DFC
	strb r1, [r6]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08059DFC
	strb r1, [r5]
	strb r1, [r6]
_08059DFC:
	mov r8, r3
	ldr r4, _08059E9C @ =gUnk_0860FC60
	ldr r0, _08059EA0 @ =gUnk_0202A1F0
	ldr r2, [sp, #0x50]
	asrs r1, r2, #0x10
	ldr r3, [sp, #0x54]
	asrs r2, r3, #0x10
	add r3, sp, #0x18
	ldrb r3, [r3, #9]
	str r3, [sp]
	add r3, sp, #0x18
	ldrb r3, [r3, #0xa]
	str r3, [sp, #4]
	add r3, sp, #0x18
	movs r5, #0x14
	ldrsh r3, [r3, r5]
	str r3, [sp, #8]
	add r3, sp, #0x18
	movs r6, #0x16
	ldrsh r3, [r3, r6]
	str r3, [sp, #0xc]
	ldr r5, _08059EA4 @ =gUnk_0202A1F8
	str r5, [sp, #0x10]
	movs r3, #0x10
	str r3, [sp, #0x14]
	ldr r4, [r4]
	mov r3, r8
	bl _call_via_r4
	movs r1, #0
	adds r6, r7, #0
	adds r6, #0xb6
	ldr r3, [sp, #0x4c]
	adds r4, r5, #0
_08059E40:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r3, r0
	adds r1, r0, r4
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _08059E40
	add r0, sp, #0x18
	ldrh r0, [r0, #0x14]
	ldr r1, [sp, #0x44]
	strh r0, [r1]
	add r0, sp, #0x18
	ldrh r0, [r0, #0x16]
	strh r0, [r6]
	mov r2, r8
	ldr r3, [sp, #0x48]
	str r2, [r3]
	ldr r7, _08059EA8 @ =gUnk_02029D60
	ldr r4, _08059EAC @ =gUnk_0860FC58
_08059E6E:
	add r2, sp, #0x18
	ldrb r1, [r7, #8]
	movs r0, #1
	ands r0, r1
	strb r0, [r2, #8]
	ldr r6, [sp, #0x48]
	ldr r0, [r6]
	ldr r4, [r4]
	adds r1, r2, #0
	adds r2, r5, #0
	movs r3, #0x10
	bl _call_via_r4
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059E98: .4byte gUnk_0860EFF8
_08059E9C: .4byte gUnk_0860FC60
_08059EA0: .4byte gUnk_0202A1F0
_08059EA4: .4byte gUnk_0202A1F8
_08059EA8: .4byte gUnk_02029D60
_08059EAC: .4byte gUnk_0860FC58

	thumb_func_start sub_08059EB0
sub_08059EB0: @ 0x08059EB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r4, _08059F40 @ =gUnk_0202A514
	ldr r0, [r4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08059ECC
	b _0805A016
_08059ECC:
	movs r0, #0xa0
	bl sub_08142FAC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08059EDA
	b _0805A016
_08059EDA:
	ldr r0, [r5]
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _08059EF2
	movs r0, #0x18
	bl sub_08142FAC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08059EF2
	b _0805A016
_08059EF2:
	ldr r0, [r4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08059F1E
	bl sub_08075BE4
	movs r1, #0x80
	lsls r1, r1, #4
	ands r1, r0
	cmp r1, #0
	bne _08059F1E
	ldr r0, [r4]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	ldr r0, _08059F44 @ =gUnk_02002780
	ldr r1, _08059F48 @ =gUnk_0861E4E8
	movs r2, #0x20
	bl memcpy2
_08059F1E:
	ldr r0, [r5]
	ldr r1, [r5, #4]
	adds r2, r6, #0
	bl sub_08144308
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08059F50
	adds r2, r5, #0
	adds r2, #0x78
	ldrh r1, [r2]
	ldr r0, _08059F4C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	b _0805A016
	.align 2, 0
_08059F40: .4byte gUnk_0202A514
_08059F44: .4byte gUnk_02002780
_08059F48: .4byte gUnk_0861E4E8
_08059F4C: .4byte 0x0000FFFD
_08059F50:
	adds r3, r5, #0
	adds r3, #0x78
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08059F74
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r2, r0
	bne _08059F74
	ldr r0, _08059F70 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3]
	b _0805A016
	.align 2, 0
_08059F70: .4byte 0x0000FFFD
_08059F74:
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0xb
	bgt _08059F82
	cmp r0, #5
	bge _0805A016
_08059F82:
	ldr r0, [r5, #0x34]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0805A016
	adds r0, r5, #0
	adds r0, #0x7a
	strh r2, [r0]
	ldr r0, _0805A004 @ =gUnk_0202A500
	lsls r1, r2, #5
	ldr r0, [r0]
	adds r6, r0, r1
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x10
	bl sub_08143B70
	adds r7, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	movs r1, #0x80
	lsls r1, r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08059FE0
	cmp r7, #0x18
	beq _08059FE0
	cmp r7, #0x12
	bne _0805A008
_08059FE0:
	bl sub_0805B258
	mov r2, r8
	adds r2, #0x20
	adds r1, r6, #0
	movs r3, #0x10
	bl sub_08000BB4
	bl sub_0805B258
	adds r1, r6, #0
	adds r1, #0x20
	mov r2, r8
	adds r2, #0x80
	movs r3, #0x10
	bl sub_08000BB4
	b _0805A016
	.align 2, 0
_0805A004: .4byte gUnk_0202A500
_0805A008:
	bl sub_0805B258
	adds r1, r6, #0
	mov r2, r8
	movs r3, #0x20
	bl sub_08000BB4
_0805A016:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0805A020
sub_0805A020: @ 0x0805A020
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	mov sl, r1
	adds r7, r2, #0
	ldrh r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0805A10A
	movs r0, #0
	movs r1, #0
	bl sub_08028728
	mov sb, r0
	ldr r4, _0805A11C @ =gUnk_02026C78
	add r5, sp, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08028A10
	bl sub_08022784
	subs r4, #8
	mov r8, r4
	ldr r0, [r4, #0x2c]
	ldr r3, [r0, #4]
	ldrh r1, [r3]
	ldrh r2, [r5, #2]
	ldr r4, [r0, #8]
	ldrh r0, [r4]
	subs r2, r2, r0
	ldrh r0, [r6, #0xa]
	subs r1, r1, r0
	strh r1, [r3]
	ldrh r0, [r5, #2]
	ldrh r1, [r6, #0xc]
	subs r0, r0, r1
	subs r0, r0, r2
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0x78
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0805A10A
	ldr r1, _0805A120 @ =gUnk_0202A520
	ldrb r0, [r1]
	cmp r0, #3
	bhi _0805A10A
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r6, #0x14]
	movs r1, #0xfa
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #5
	mov ip, r0
	ldr r7, [r6]
	cmp r7, #0
	beq _0805A10A
	ldr r1, _0805A124 @ =0xFFFF0000
	ldr r0, [sp, #0x14]
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	ldr r1, _0805A128 @ =0x0000FFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [sp, #0x14]
	mov r4, r8
	ldr r1, [r4, #0x3c]
	add r0, sp, #0x14
	str r1, [r0, #4]
	ldr r1, _0805A12C @ =gUnk_02029D40
	ldrb r3, [r1, #2]
	ldrb r2, [r1, #3]
	lsls r2, r2, #8
	orrs r2, r3
	adds r2, #1
	ldrb r4, [r1, #4]
	ldrb r3, [r1, #5]
	lsls r3, r3, #8
	orrs r3, r4
	mov r4, sb
	ldrb r1, [r4, #1]
	subs r3, r3, r1
	adds r3, #1
	ldrh r1, [r6, #8]
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x1c
	movs r5, #1
	ands r4, r5
	str r4, [sp]
	lsrs r1, r1, #0x1d
	ands r1, r5
	str r1, [sp, #4]
	mov r1, ip
	str r1, [sp, #8]
	movs r4, #0x10
	ldrsh r1, [r6, r4]
	add r1, sl
	str r1, [sp, #0xc]
	adds r1, r7, #0
	bl sub_08011048
	movs r0, #0x81
	mov r1, r8
	strb r0, [r1]
_0805A10A:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A11C: .4byte gUnk_02026C78
_0805A120: .4byte gUnk_0202A520
_0805A124: .4byte 0xFFFF0000
_0805A128: .4byte 0x0000FFFF
_0805A12C: .4byte gUnk_02029D40

	thumb_func_start sub_0805A130
sub_0805A130: @ 0x0805A130
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x90
	str r0, [sp, #0x54]
	mov sl, r1
	mov r4, sl
	adds r4, #0x78
	ldrh r1, [r4]
	movs r0, #4
	ands r0, r1
	ldr r2, _0805A2F4 @ =gUnk_0860EF27
	str r2, [sp, #0x58]
	cmp r0, #0
	beq _0805A156
	ldr r3, _0805A2F8 @ =gUnk_0860EF2A
	str r3, [sp, #0x58]
_0805A156:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0805A164
	ldr r6, _0805A2FC @ =gUnk_0860EF30
	str r6, [sp, #0x58]
_0805A164:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805A170
	ldr r0, _0805A300 @ =gUnk_0860EF2D
	str r0, [sp, #0x58]
_0805A170:
	mov r1, sl
	ldr r0, [r1, #8]
	add r1, sp, #0x18
	bl sub_08012D44
	ldr r2, [sp, #0x1c]
	str r2, [sp, #0x5c]
	movs r2, #0
	ldr r3, [sp, #0x18]
	str r4, [sp, #0x6c]
	mov r4, sl
	adds r4, #0x88
	str r4, [sp, #0x7c]
	mov r6, sl
	adds r6, #0x8a
	str r6, [sp, #0x80]
	mov r0, sl
	adds r0, #0x8c
	str r0, [sp, #0x84]
	cmp r2, r3
	bge _0805A1AC
	add r1, sp, #0x1c
_0805A19C:
	ldr r0, [r1]
	str r0, [r1, #0x10]
	adds r1, #4
	adds r2, #1
	cmp r2, #3
	bgt _0805A1AC
	cmp r2, r3
	blt _0805A19C
_0805A1AC:
	movs r2, #0
	ldr r1, [sp, #0x18]
	subs r0, r1, #1
	mov sb, r1
	ldr r3, [sp, #0x5c]
	ldr r3, [r3]
	mov ip, r3
	cmp r2, r0
	bge _0805A202
	add r4, sp, #0x2c
	mov r8, r4
_0805A1C2:
	adds r7, r2, #1
	cmp r7, r1
	bge _0805A1F8
	lsls r0, r2, #2
	add r0, r8
	str r0, [sp, #0x88]
	lsls r0, r7, #2
	mov r6, r8
	adds r4, r6, r0
	mov r0, sb
	subs r5, r0, r7
_0805A1D8:
	ldr r2, [r4]
	ldr r1, [sp, #0x88]
	ldr r3, [r1]
	movs r6, #0xe
	ldrsh r1, [r2, r6]
	movs r6, #0xe
	ldrsh r0, [r3, r6]
	cmp r1, r0
	ble _0805A1F0
	ldr r0, [sp, #0x88]
	str r2, [r0]
	str r3, [r4]
_0805A1F0:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bne _0805A1D8
_0805A1F8:
	adds r2, r7, #0
	mov r1, sb
	subs r0, r1, #1
	cmp r2, r0
	blt _0805A1C2
_0805A202:
	mov r1, ip
	cmp r1, #0
	beq _0805A220
	mov r0, sl
	bl sub_0805984C
	ldr r2, [sp, #0x5c]
	ldr r1, [r2, #0x14]
	ldrh r2, [r2, #8]
	lsrs r2, r2, #0xc
	movs r0, #1
	ands r2, r0
	mov r0, sl
	bl sub_08059EB0
_0805A220:
	ldr r3, [sp, #0x54]
	ldrh r7, [r3, #0xe]
	ldrh r4, [r3, #0x10]
	str r4, [sp, #0x60]
	ldr r6, [sp, #0x6c]
	ldrh r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805A310
	mov r1, sl
	ldrh r0, [r1, #0x10]
	lsrs r0, r0, #3
	ldr r3, _0805A304 @ =0xFFFF0000
	adds r1, r3, #0
	ldr r2, [sp, #0x64]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x64]
	mov r4, sl
	ldrh r0, [r4, #0x12]
	lsrs r0, r0, #1
	lsls r0, r0, #0x10
	ldr r2, _0805A308 @ =0x0000FFFF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x64]
	ldrh r0, [r4, #0x14]
	lsrs r0, r0, #3
	ldr r6, [sp, #0x68]
	ands r3, r6
	orrs r3, r0
	str r3, [sp, #0x68]
	mov r0, sl
	adds r0, #0x80
	ldr r1, [r0]
	adds r4, r0, #0
	mov r3, sl
	adds r3, #0x84
	cmp r2, r1
	bne _0805A28C
	ldr r1, [sp, #0x68]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r3]
	cmp r0, r2
	bne _0805A28C
	ldr r6, [sp, #0x7c]
	strh r7, [r6]
	add r0, sp, #0x60
	ldrh r1, [r0]
	ldr r0, [sp, #0x80]
	strh r1, [r0]
_0805A28C:
	add r1, sp, #0x64
	ldrh r1, [r1]
	strh r1, [r4]
	ldr r2, [sp, #0x64]
	lsrs r0, r2, #0x10
	mov r1, sl
	adds r1, #0x82
	strh r0, [r1]
	add r4, sp, #0x68
	ldrh r4, [r4]
	strh r4, [r3]
	ldr r6, [sp, #0x6c]
	ldrh r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805A310
	ldr r1, [sp, #0x7c]
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r1, r7, #0x10
	asrs r2, r1, #0x10
	str r1, [sp, #0x74]
	cmp r0, r2
	bne _0805A310
	ldr r3, [sp, #0x80]
	movs r4, #0
	ldrsh r0, [r3, r4]
	ldr r6, [sp, #0x60]
	lsls r1, r6, #0x10
	asrs r2, r1, #0x10
	str r1, [sp, #0x78]
	cmp r0, r2
	bne _0805A310
	movs r1, #0
	ldr r4, _0805A30C @ =gUnk_0202A208
	ldr r3, [sp, #0x84]
_0805A2D8:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r4
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0805A2D8
	b _0805A382
	.align 2, 0
_0805A2F4: .4byte gUnk_0860EF27
_0805A2F8: .4byte gUnk_0860EF2A
_0805A2FC: .4byte gUnk_0860EF30
_0805A300: .4byte gUnk_0860EF2D
_0805A304: .4byte 0xFFFF0000
_0805A308: .4byte 0x0000FFFF
_0805A30C: .4byte gUnk_0202A208
_0805A310:
	ldr r0, _0805A3C8 @ =gUnk_0860FC5C
	mov sb, r0
	lsls r1, r7, #0x10
	mov r8, r1
	asrs r0, r1, #0x10
	ldr r2, [sp, #0x60]
	lsls r6, r2, #0x10
	asrs r1, r6, #0x10
	ldr r3, [sp, #0x54]
	movs r4, #0x16
	ldrsh r2, [r3, r4]
	movs r4, #0x18
	ldrsh r3, [r3, r4]
	str r3, [sp, #0x8c]
	ldr r3, [sp, #0x54]
	movs r4, #0x1a
	ldrsh r3, [r3, r4]
	str r3, [sp]
	ldr r3, [sp, #0x58]
	str r3, [sp, #4]
	ldr r3, [sp, #0x6c]
	ldrh r4, [r3]
	lsrs r4, r4, #3
	movs r5, #1
	ands r4, r5
	str r4, [sp, #8]
	ldr r5, _0805A3CC @ =gUnk_0202A208
	str r5, [sp, #0xc]
	mov r4, sb
	ldr r4, [r4]
	mov sb, r4
	ldr r3, [sp, #0x8c]
	bl _call_via_r9
	movs r1, #0
	mov r0, r8
	str r0, [sp, #0x74]
	str r6, [sp, #0x78]
	ldr r3, [sp, #0x84]
_0805A35E:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r3, r0
	adds r1, r0, r5
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0805A35E
	ldr r1, [sp, #0x7c]
	strh r7, [r1]
	add r2, sp, #0x60
	ldrh r3, [r2]
	ldr r2, [sp, #0x80]
	strh r3, [r2]
_0805A382:
	movs r1, #0
	ldr r0, [sp, #0x18]
	cmp r1, r0
	blt _0805A38C
	b _0805A744
_0805A38C:
	add r0, sp, #0x2c
	lsls r2, r1, #0x10
	asrs r1, r2, #0xe
	adds r1, r0, r1
	ldr r3, [r1]
	str r2, [sp, #0x70]
	cmp r3, #0
	bne _0805A39E
	b _0805A72C
_0805A39E:
	ldrh r1, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0805A3AC
	b _0805A72C
_0805A3AC:
	ldr r0, [r3]
	cmp r0, #0
	bne _0805A3B4
	b _0805A72C
_0805A3B4:
	mov r2, sl
	adds r2, #0x64
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805A3D0
	ldrh r6, [r3, #0xa]
	ldrh r4, [r3, #0xc]
	b _0805A3D4
	.align 2, 0
_0805A3C8: .4byte gUnk_0860FC5C
_0805A3CC: .4byte gUnk_0202A208
_0805A3D0:
	ldrh r4, [r3, #0xa]
	ldrh r6, [r3, #0xc]
_0805A3D4:
	ldrb r2, [r2]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0805A3E4
	lsls r0, r4, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x10
_0805A3E4:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0805A3F2
	lsls r0, r6, #0x10
	rsbs r0, r0, #0
	lsrs r6, r0, #0x10
_0805A3F2:
	ldr r3, [sp, #0x70]
	asrs r0, r3, #0xe
	add r0, sp
	adds r0, #0x2c
	ldr r1, [r0]
	ldrb r0, [r1, #7]
	cmp r0, #1
	bne _0805A408
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	b _0805A516
_0805A408:
	ldrb r0, [r1, #4]
	cmp r0, #8
	bls _0805A410
	b _0805A518
_0805A410:
	lsls r0, r0, #2
	ldr r1, _0805A41C @ =_0805A420
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A41C: .4byte _0805A420
_0805A420: @ jump table
	.4byte _0805A444 @ case 0
	.4byte _0805A444 @ case 1
	.4byte _0805A498 @ case 2
	.4byte _0805A514 @ case 3
	.4byte _0805A504 @ case 4
	.4byte _0805A504 @ case 5
	.4byte _0805A504 @ case 6
	.4byte _0805A504 @ case 7
	.4byte _0805A504 @ case 8
_0805A444:
	ldr r0, _0805A488 @ =gUnk_0202A514
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0805A47E
	mov r3, sl
	ldr r0, [r3, #4]
	ldrb r1, [r0, #0xc]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805A47E
	bl sub_08075BE4
	movs r1, #0x80
	lsls r1, r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0805A47E
	ldr r0, _0805A48C @ =gUnk_0202A518
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _0805A47E
	ldr r0, _0805A490 @ =gUnk_03000FA0
	adds r0, #0x89
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805A494
_0805A47E:
	mov r0, sl
	adds r0, #0x65
	ldrb r0, [r0]
	b _0805A516
	.align 2, 0
_0805A488: .4byte gUnk_0202A514
_0805A48C: .4byte gUnk_0202A518
_0805A490: .4byte gUnk_03000FA0
_0805A494:
	movs r0, #0xc
	b _0805A516
_0805A498:
	ldr r0, [sp, #0x6c]
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0805A4AE
	mov r0, sl
	adds r0, #0x7c
	ldrb r0, [r0]
	b _0805A516
_0805A4AE:
	add r7, sp, #0x3c
	mov r1, sl
	ldr r0, [r1, #8]
	bl sub_08013024
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, sl
	ldr r1, [r2]
	adds r1, #0x5d
	ldrb r2, [r1]
	lsrs r2, r2, #5
	movs r5, #1
	ands r2, r5
	movs r1, #0x1e
	bl sub_081437AC
	mov r3, sl
	ldr r0, [r3, #8]
	bl sub_08013024
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, sl
	ldr r1, [r2]
	adds r1, #0x5d
	ldrb r2, [r1]
	lsrs r2, r2, #5
	ands r2, r5
	movs r1, #0x1e
	bl sub_081437AC
	ldr r1, _0805A500 @ =gUnk_08724208
	lsls r0, r0, #1
	adds r0, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r1, r0, #4
	str r1, [r7, #0x10]
	b _0805A518
	.align 2, 0
_0805A500: .4byte gUnk_08724208
_0805A504:
	ldr r3, [sp, #0x70]
	asrs r0, r3, #0xe
	add r0, sp
	adds r0, #0x2c
	ldr r0, [r0]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	b _0805A516
_0805A514:
	movs r0, #9
_0805A516:
	str r0, [sp, #0x4c]
_0805A518:
	ldr r2, [sp, #0x70]
	asrs r0, r2, #0xe
	add r0, sp
	adds r0, #0x2c
	ldr r2, [r0]
	ldrb r0, [r2, #6]
	cmp r0, #2
	bne _0805A54A
	ldrb r0, [r2, #5]
	cmp r0, #1
	bhi _0805A54A
	mov r3, sl
	ldr r0, [r3, #4]
	ldrb r1, [r0, #0x17]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0805A53E
	b _0805A72C
_0805A53E:
	adds r0, r2, #0
	movs r1, #0
	mov r2, sl
	bl sub_0805A020
	b _0805A72C
_0805A54A:
	movs r0, #0x18
	bl sub_08142FAC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805A56C
	mov r1, sl
	ldr r0, [r1]
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _0805A56C
	lsls r0, r6, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xb
	adds r0, r0, r2
	lsrs r6, r0, #0x10
_0805A56C:
	add r2, sp, #0x3c
	ldr r3, [sp, #0x54]
	movs r1, #0x1c
	ldrsh r0, [r3, r1]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r0, r4
	str r0, [sp, #0x3c]
	movs r1, #0x1e
	ldrsh r0, [r3, r1]
	lsls r3, r6, #0x10
	asrs r3, r3, #0x10
	adds r0, r0, r3
	str r0, [r2, #4]
	ldr r6, [sp, #0x70]
	asrs r0, r6, #0xe
	mov r5, sp
	adds r5, r5, r0
	adds r5, #0x2c
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	lsrs r0, r0, #0xc
	movs r1, #1
	ands r0, r1
	strb r0, [r2, #9]
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	lsrs r0, r0, #0xd
	ands r0, r1
	strb r0, [r2, #0xa]
	ldr r0, [r5]
	ldr r0, [r0, #0x14]
	ldr r1, _0805A624 @ =0xF9FF0000
	adds r0, r0, r1
	lsrs r0, r0, #5
	str r0, [r2, #0xc]
	ldr r6, [sp, #0x74]
	asrs r0, r6, #0x10
	adds r0, r0, r4
	strh r0, [r2, #0x14]
	ldr r1, [sp, #0x78]
	asrs r0, r1, #0x10
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	ldr r3, [sp, #0x6c]
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _0805A62C
	ldr r2, [r5]
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _0805A62C
	mov r0, sl
	adds r0, #0x98
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bne _0805A62C
	mov r0, sl
	adds r0, #0x90
	ldr r1, [r0]
	ldr r0, [r7, #0x14]
	cmp r1, r0
	bne _0805A62C
	mov r0, sl
	adds r0, #0x94
	mov r1, sl
	adds r1, #0x48
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805A62C
	movs r1, #0
	ldr r4, _0805A628 @ =gUnk_0202A210
	mov r3, sl
	adds r3, #0x9c
_0805A60C:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r4
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _0805A60C
	b _0805A6CA
	.align 2, 0
_0805A624: .4byte 0xF9FF0000
_0805A628: .4byte gUnk_0202A210
_0805A62C:
	ldr r4, _0805A764 @ =gUnk_0860FC60
	mov r8, r4
	ldr r0, _0805A768 @ =gUnk_0202A208
	ldr r6, [sp, #0x74]
	asrs r1, r6, #0x10
	ldr r3, [sp, #0x78]
	asrs r2, r3, #0x10
	ldr r4, [sp, #0x70]
	asrs r5, r4, #0xe
	add r5, sp
	adds r5, #0x2c
	ldr r3, [r5]
	ldr r3, [r3]
	ldrb r4, [r7, #9]
	str r4, [sp]
	ldrb r4, [r7, #0xa]
	str r4, [sp, #4]
	movs r6, #0x14
	ldrsh r4, [r7, r6]
	str r4, [sp, #8]
	movs r6, #0x16
	ldrsh r4, [r7, r6]
	str r4, [sp, #0xc]
	ldr r4, _0805A76C @ =gUnk_0202A210
	str r4, [sp, #0x10]
	movs r4, #0x10
	str r4, [sp, #0x14]
	mov r6, r8
	ldr r4, [r6]
	bl _call_via_r4
	ldr r0, [r5]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0805A6CA
	movs r1, #0
	mov r6, sl
	adds r6, #0x98
	movs r0, #0x90
	add r0, sl
	mov r8, r0
	movs r2, #0x94
	add r2, sl
	mov ip, r2
	movs r3, #0x48
	add r3, sl
	mov sb, r3
	mov r5, sl
	adds r5, #0x92
	mov r3, sl
	adds r3, #0x9c
	ldr r4, _0805A76C @ =gUnk_0202A210
_0805A694:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r3, r0
	adds r1, r0, r4
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _0805A694
	ldr r4, [sp, #0x70]
	asrs r0, r4, #0xe
	add r0, sp
	adds r0, #0x2c
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r6]
	ldrh r0, [r7, #0x14]
	mov r6, r8
	strh r0, [r6]
	ldrh r0, [r7, #0x16]
	strh r0, [r5]
	mov r1, sb
	ldrb r0, [r1]
	mov r2, ip
	strb r0, [r2]
_0805A6CA:
	ldr r3, [sp, #0x6c]
	ldrh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805A6F4
	movs r0, #2
	strb r0, [r7, #8]
	ldr r1, _0805A770 @ =gUnk_0860FC58
	ldr r4, [sp, #0x70]
	asrs r0, r4, #0xe
	add r0, sp
	adds r0, #0x2c
	ldr r0, [r0]
	ldr r0, [r0]
	ldr r2, _0805A76C @ =gUnk_0202A210
	ldr r4, [r1]
	adds r1, r7, #0
	movs r3, #0x10
	bl _call_via_r4
_0805A6F4:
	adds r2, r7, #0
	ldr r0, _0805A774 @ =gUnk_02029D60
	ldrb r1, [r0, #8]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2, #8]
	ldr r6, [sp, #0x6c]
	ldrh r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805A712
	strb r3, [r2, #8]
_0805A712:
	ldr r1, _0805A770 @ =gUnk_0860FC58
	ldr r2, [sp, #0x70]
	asrs r0, r2, #0xe
	add r0, sp
	adds r0, #0x2c
	ldr r0, [r0]
	ldr r0, [r0]
	ldr r2, _0805A76C @ =gUnk_0202A210
	ldr r4, [r1]
	adds r1, r7, #0
	movs r3, #0x10
	bl _call_via_r4
_0805A72C:
	ldr r3, [sp, #0x70]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r3, r4
	lsrs r1, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #3
	bgt _0805A744
	ldr r0, [sp, #0x18]
	cmp r2, r0
	bge _0805A744
	b _0805A38C
_0805A744:
	ldr r6, [sp, #0x6c]
	ldrh r0, [r6]
	ldr r1, _0805A778 @ =0x00007FFF
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strh r1, [r6]
	add sp, #0x90
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A764: .4byte gUnk_0860FC60
_0805A768: .4byte gUnk_0202A208
_0805A76C: .4byte gUnk_0202A210
_0805A770: .4byte gUnk_0860FC58
_0805A774: .4byte gUnk_02029D60
_0805A778: .4byte 0x00007FFF

	thumb_func_start sub_0805A77C
sub_0805A77C: @ 0x0805A77C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	ldr r0, _0805A810 @ =gUnk_0202A514
	ldr r4, [r0]
	movs r0, #0x20
	ands r4, r0
	cmp r4, #0
	beq _0805A796
	b _0805AA66
_0805A796:
	ldr r1, _0805A814 @ =gUnk_0202A518
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _0805A7A8
	strb r4, [r1]
_0805A7A8:
	bl sub_0805B054
	ldr r1, _0805A818 @ =gUnk_0202A519
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	bls _0805A7BE
	strb r4, [r1]
_0805A7BE:
	add r0, sp, #8
	movs r1, #0x68
	bl memzero
	add r0, sp, #8
	mov r8, r0
	ldr r0, _0805A81C @ =gUnk_0202A238
	ldr r4, [r0]
	movs r5, #0
	ldr r7, _0805A820 @ =gUnk_03000DD0
	movs r1, #0x19
	mov sb, r1
_0805A7D6:
	movs r0, #0x18
	bl sub_08142FAC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805A840
	ldr r0, [r4]
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _0805A840
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x17]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805A802
	ldr r0, [r4, #8]
	bl sub_08012E28
	cmp r0, #0
	bne _0805A828
_0805A802:
	ldrh r0, [r7]
	ldr r2, _0805A824 @ =0x0000FDFF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r7]
	b _0805A862
	.align 2, 0
_0805A810: .4byte gUnk_0202A514
_0805A814: .4byte gUnk_0202A518
_0805A818: .4byte gUnk_0202A519
_0805A81C: .4byte gUnk_0202A238
_0805A820: .4byte gUnk_03000DD0
_0805A824: .4byte 0x0000FDFF
_0805A828:
	ldrh r1, [r7]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r7]
	mov r0, r8
	adds r0, #4
	mov r8, r0
	subs r0, #4
	stm r0!, {r4}
	b _0805A860
_0805A840:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805A862
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x17]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805A862
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r4}
_0805A860:
	adds r5, #1
_0805A862:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	adds r4, #0xd0
	mov r3, sb
	cmp r3, #0
	bge _0805A7D6
	bl sub_0805949C
	add r0, sp, #8
	mov sl, r0
	cmp r5, #0
	bgt _0805A87E
	b _0805AA62
_0805A87E:
	ldr r1, _0805A950 @ =0xFFFF00FF
	mov r8, r1
	mov sb, r5
_0805A884:
	mov r2, sl
	ldr r7, [r2]
	movs r3, #0x10
	ldrsh r2, [r7, r3]
	ldrh r3, [r7, #0x12]
	subs r3, #8
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r1, #0x14
	ldrsh r0, [r7, r1]
	str r0, [sp]
	ldr r0, _0805A954 @ =sub_0805A130
	adds r1, r7, #0
	bl sub_080769B0
	movs r0, #0x18
	bl sub_08142FAC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805A8BA
	ldr r0, [r7]
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _0805A8BA
	b _0805AA50
_0805A8BA:
	adds r0, r7, #0
	adds r0, #0x78
	ldrh r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	ands r1, r2
	adds r4, r0, #0
	cmp r1, #0
	bne _0805A8F8
	subs r0, #0xa
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805A8DC
	b _0805AA50
_0805A8DC:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	bne _0805A8F8
	ldrh r0, [r7, #0x20]
	ldrh r1, [r7, #0x22]
	cmp r0, r1
	blo _0805A904
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805A8F8
	b _0805AA50
_0805A8F8:
	ldrh r0, [r7, #0x20]
	ldrh r2, [r7, #0x22]
	cmp r0, r2
	bne _0805A904
	adds r0, #1
	strh r0, [r7, #0x20]
_0805A904:
	ldrh r0, [r7, #0x10]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0805A958 @ =0xFFFFFF00
	ands r6, r1
	orrs r6, r0
	ldrh r0, [r7, #0x14]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r1, _0805A95C @ =0xFF00FFFF
	ands r6, r1
	orrs r6, r0
	ldrh r1, [r4]
	movs r3, #0x88
	lsls r3, r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0805A960
	ldr r0, [r7]
	ldr r1, [r7, #4]
	lsls r2, r6, #0x18
	lsrs r2, r2, #0x18
	lsrs r3, r6, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl sub_08058F14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	mov r1, r8
	ands r6, r1
	b _0805A97A
	.align 2, 0
_0805A950: .4byte 0xFFFF00FF
_0805A954: .4byte sub_0805A130
_0805A958: .4byte 0xFFFFFF00
_0805A95C: .4byte 0xFF00FFFF
_0805A960:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r6, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08028728
	ldrb r1, [r0, #1]
	movs r0, #0x3f
	ands r0, r1
	lsls r0, r0, #8
	mov r2, r8
	ands r6, r2
_0805A97A:
	orrs r6, r0
	lsls r2, r6, #0x10
	lsrs r1, r2, #0x18
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805A996
	movs r0, #0x3f
	ands r0, r1
	adds r0, #3
	lsls r0, r0, #8
	mov r3, r8
	ands r6, r3
	b _0805A9A2
_0805A996:
	lsrs r1, r2, #0x18
	movs r0, #0x3f
	ands r0, r1
	lsls r0, r0, #8
	mov r1, r8
	ands r6, r1
_0805A9A2:
	orrs r6, r0
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0805A9D2
	lsrs r4, r6, #8
	ldrh r0, [r7, #0x12]
	bl sub_08058D64
	lsls r4, r4, #0x18
	lsls r0, r0, #0x18
	cmp r4, r0
	bls _0805A9D2
	ldrh r0, [r7, #0x12]
	bl sub_08058D64
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	mov r3, r8
	ands r6, r3
	orrs r6, r0
_0805A9D2:
	ldr r0, _0805AA20 @ =gUnk_0202A514
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0805AA28
	ldr r0, [r7, #4]
	ldrb r0, [r0, #0x14]
	bl sub_08058D6C
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsrs r0, r6, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08058D78
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [r7, #4]
	ldrb r0, [r0, #0x15]
	bl sub_08058D6C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x64
	rsbs r0, r0, #0
	str r0, [sp, #4]
	ldr r0, _0805AA24 @ =sub_080598DC
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0807696C
	b _0805AA50
	.align 2, 0
_0805AA20: .4byte gUnk_0202A514
_0805AA24: .4byte sub_080598DC
_0805AA28:
	lsrs r0, r6, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08058D78
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r0, #0x10
	ldrsh r2, [r7, r0]
	movs r1, #0x14
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r0, #0x64
	rsbs r0, r0, #0
	str r0, [sp, #4]
	ldr r0, _0805AA78 @ =sub_080598DC
	adds r1, r7, #0
	bl sub_0807696C
_0805AA50:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r3, #4
	add sl, r3
	mov r0, sb
	cmp r0, #0
	beq _0805AA62
	b _0805A884
_0805AA62:
	bl sub_0805ABC0
_0805AA66:
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805AA78: .4byte sub_080598DC

	thumb_func_start sub_0805AA7C
sub_0805AA7C: @ 0x0805AA7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	cmp r7, #0
	bne _0805AA8E
	b _0805ABB2
_0805AA8E:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0805AA96
	b _0805ABB2
_0805AA96:
	ldrh r0, [r7, #0x10]
	bl sub_08058D5C
	ldr r1, [r7, #4]
	strb r0, [r1, #0x14]
	ldrh r0, [r7, #0x14]
	bl sub_08058D5C
	ldr r1, [r7, #4]
	strb r0, [r1, #0x15]
	ldr r1, [r7, #4]
	movs r0, #0x48
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x16]
	ldr r5, [r7]
	ldr r6, [r7, #4]
	ldrh r0, [r7, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r7, #0x14]
	bl sub_08058D5C
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0804C3F8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r7, #0
	adds r2, #0x6a
	ldrb r1, [r2]
	mov sb, r1
	adds r1, r7, #0
	adds r1, #0x6e
	ldrb r3, [r1]
	mov sl, r3
	movs r0, #0x80
	ands r0, r4
	adds r6, r2, #0
	adds r5, r1, #0
	cmp r0, #0
	beq _0805AB06
	cmp r4, #0xff
	beq _0805AB06
	movs r0, #1
	strb r0, [r5]
	b _0805AB0E
_0805AB06:
	movs r0, #0
	strb r0, [r5]
	movs r0, #2
	strh r0, [r6]
_0805AB0E:
	ldr r1, [r7, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	bl sub_08028728
	cmp r4, #0xff
	bne _0805AB2A
	ldrb r1, [r0, #1]
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r0, r1
	bl sub_08058D78
	b _0805AB34
_0805AB2A:
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r0, r4
	bl sub_08058D78
_0805AB34:
	strh r0, [r7, #0x12]
	ldr r0, [r7, #4]
	ldrb r0, [r0, #0x14]
	bl sub_08058D6C
	strh r0, [r7, #0x10]
	ldr r0, [r7, #4]
	ldrb r0, [r0, #0x15]
	bl sub_08058D6C
	strh r0, [r7, #0x14]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	str r0, [r7, #0x18]
	str r1, [r7, #0x1c]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	bl sub_08139B74
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne _0805AB68
	adds r0, r7, #0
	adds r0, #0x4b
	strb r1, [r0]
	b _0805AB70
_0805AB68:
	adds r1, r7, #0
	adds r1, #0x4b
	movs r0, #0
	strb r0, [r1]
_0805AB70:
	adds r4, r7, #0
	adds r4, #0x49
	ldrh r6, [r6]
	cmp sb, r6
	bne _0805AB8A
	ldrb r5, [r5]
	cmp sl, r5
	bne _0805AB8A
	mov r1, r8
	ldrb r0, [r1]
	ldrb r2, [r4]
	cmp r0, r2
	beq _0805ABA2
_0805AB8A:
	ldr r2, [r7, #4]
	ldrb r1, [r2, #0x17]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2, #0x17]
	adds r0, r7, #0
	movs r1, #8
	bl sub_0805DDB4
	mov r3, r8
	ldrb r0, [r3]
	strb r0, [r4]
_0805ABA2:
	adds r2, r7, #0
	adds r2, #0x78
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0805ABB2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0805ABC0
sub_0805ABC0: @ 0x0805ABC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl sub_0806C4AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805ABD8
	b _0805ACFC
_0805ABD8:
	bl sub_0806C4C4
	adds r4, r0, #0
	bl sub_0806C298
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	movs r2, #0x12
	ldrsh r1, [r4, r2]
	movs r3, #0x14
	ldrsh r2, [r4, r3]
	mov r4, sp
	adds r4, #0x1e
	str r4, [sp]
	add r3, sp, #0x20
	str r3, [sp, #4]
	add r3, sp, #0x1c
	bl sub_080769D0
	add r0, sp, #0x1c
	movs r7, #0
	ldrsh r0, [r0, r7]
	movs r2, #0
	ldrsh r1, [r4, r2]
	add r2, sp, #0x1c
	adds r3, r4, #0
	bl sub_08076A28
	ldrh r0, [r4]
	subs r0, #0x20
	strh r0, [r4]
	movs r5, #0
	movs r3, #0x22
	add r3, sp
	mov sb, r3
	add r7, sp, #0x24
	mov r8, r7
	mov r0, sp
	adds r0, #0x26
	str r0, [sp, #0x2c]
	movs r1, #0
	mov sl, r1
	movs r6, #0
_0805AC34:
	lsls r0, r5, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	beq _0805AC5E
	cmp r1, #1
	bgt _0805AC46
	cmp r1, #0
	beq _0805AC50
	b _0805AC9E
_0805AC46:
	cmp r1, #2
	beq _0805AC74
	cmp r1, #3
	beq _0805AC8C
	b _0805AC9E
_0805AC50:
	movs r0, #1
	mov r2, sp
	strh r0, [r2, #0x26]
	movs r0, #0x10
	strh r0, [r2, #0x22]
	strh r1, [r2, #0x24]
	b _0805AC9E
_0805AC5E:
	mov r7, sl
	ldr r3, [sp, #0x2c]
	strh r7, [r3]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, sb
	strh r0, [r2]
	mov r3, r8
	strh r7, [r3]
	b _0805AC9E
_0805AC74:
	mov r0, sl
	mov r7, sp
	strh r0, [r7, #0x26]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	strh r0, [r7, #0x22]
	movs r2, #8
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r7, #0x24]
	b _0805AC9E
_0805AC8C:
	movs r0, #1
	mov r3, sp
	strh r0, [r3, #0x26]
	movs r0, #0x10
	strh r0, [r3, #0x22]
	movs r7, #8
	rsbs r7, r7, #0
	adds r0, r7, #0
	strh r0, [r3, #0x24]
_0805AC9E:
	ldr r0, [sp, #0x28]
	cmp r5, r0
	bne _0805ACAC
	bl sub_0806C41C
	adds r4, r0, #0
	b _0805ACB4
_0805ACAC:
	ldr r4, _0805AD0C @ =gUnk_0860F6BC
	cmp r5, #1
	bhi _0805ACB4
	ldr r4, _0805AD10 @ =gUnk_0860F69C
_0805ACB4:
	bl sub_0806C4D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r1, sp, #0x1c
	movs r2, #0
	ldrsh r1, [r1, r2]
	mov r3, sb
	movs r7, #0
	ldrsh r2, [r3, r7]
	adds r1, r1, r2
	mov r3, sp
	movs r7, #0x1e
	ldrsh r2, [r3, r7]
	mov r3, r8
	movs r7, #0
	ldrsh r3, [r3, r7]
	mov ip, r3
	add r2, ip
	str r6, [sp]
	str r6, [sp, #4]
	ldr r7, [sp, #0x2c]
	ldrb r3, [r7]
	str r3, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r3, #1
	str r3, [sp, #0x14]
	str r0, [sp, #0x18]
	adds r0, r4, #0
	movs r3, #0
	bl sub_080020C8
	adds r5, #1
	cmp r5, #3
	ble _0805AC34
_0805ACFC:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805AD0C: .4byte gUnk_0860F6BC
_0805AD10: .4byte gUnk_0860F69C

	thumb_func_start sub_0805AD14
sub_0805AD14: @ 0x0805AD14
	push {r4, r5, lr}
	ldr r0, _0805AD50 @ =gUnk_0202A238
	ldr r4, [r0]
	movs r5, #0x19
_0805AD1C:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805AD88
	ldr r0, [r4, #4]
	ldrb r1, [r0]
	lsls r2, r1, #0x18
	lsrs r1, r2, #0x18
	adds r3, r0, #0
	cmp r1, #0xff
	beq _0805AD44
	cmp r2, #0
	bge _0805AD54
	ldrb r0, [r3]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	cmp r0, #0xff
	bne _0805AD54
_0805AD44:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0805FE54
	b _0805AD88
	.align 2, 0
_0805AD50: .4byte gUnk_0202A238
_0805AD54:
	ldrb r0, [r3]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0xff
	beq _0805AD80
	cmp r1, #0
	bge _0805AD78
	ldrb r1, [r3]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #0x68
	muls r1, r0, r1
	ldr r0, _0805AD74 @ =gPlayerUnits
	adds r1, r1, r0
	b _0805AD82
	.align 2, 0
_0805AD74: .4byte gPlayerUnits
_0805AD78:
	ldr r1, _0805AD7C @ =gUnk_02006760
	b _0805AD82
	.align 2, 0
_0805AD7C: .4byte gUnk_02006760
_0805AD80:
	ldr r1, _0805AD98 @ =gUnk_020067C8
_0805AD82:
	adds r0, r4, #0
	bl sub_0805FE54
_0805AD88:
	subs r5, #1
	adds r4, #0xd0
	cmp r5, #0
	bge _0805AD1C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805AD98: .4byte gUnk_020067C8

	thumb_func_start sub_0805AD9C
sub_0805AD9C: @ 0x0805AD9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	mov sb, r0
	adds r7, r1, #0
	ldr r0, _0805AE08 @ =gUnk_0860EF33
	mov ip, r0
	mov r1, sb
	ldrh r1, [r1, #0x10]
	mov sl, r1
	movs r2, #8
	ldrsh r1, [r7, r2]
	mov r3, sb
	ldrh r3, [r3, #0xe]
	str r3, [sp, #0x30]
	mov r4, sb
	movs r5, #0xe
	ldrsh r0, [r4, r5]
	cmp r1, r0
	bne _0805AE10
	movs r1, #0xa
	ldrsh r0, [r7, r1]
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	adds r6, r1, #0
	cmp r0, r2
	bne _0805AE10
	movs r1, #0
	ldr r3, _0805AE0C @ =gUnk_0202A220
	mov ip, r3
	movs r4, #0x1c
	adds r4, r4, r7
	mov r8, r4
	mov r4, ip
	adds r3, r7, #0
	adds r3, #0xc
_0805ADEC:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r4
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0805ADEC
	b _0805AE7C
	.align 2, 0
_0805AE08: .4byte gUnk_0860EF33
_0805AE0C: .4byte gUnk_0202A220
_0805AE10:
	ldr r5, _0805AECC @ =gUnk_0860FC5C
	mov r8, r5
	ldr r1, [sp, #0x30]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	lsls r6, r2, #0x10
	asrs r1, r6, #0x10
	mov r3, sb
	movs r4, #0x16
	ldrsh r2, [r3, r4]
	movs r4, #0x18
	ldrsh r5, [r3, r4]
	str r5, [sp, #0x34]
	movs r4, #0x1a
	ldrsh r5, [r3, r4]
	str r5, [sp]
	mov r5, ip
	str r5, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	ldr r5, _0805AED0 @ =gUnk_0202A220
	str r5, [sp, #0xc]
	mov r3, r8
	ldr r3, [r3]
	mov r8, r3
	ldr r3, [sp, #0x34]
	bl _call_via_r8
	movs r1, #0
	movs r4, #0x1c
	adds r4, r4, r7
	mov r8, r4
	adds r3, r7, #0
	adds r3, #0xc
	mov ip, r5
	mov r4, ip
_0805AE5A:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r3, r0
	adds r1, r0, r4
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0805AE5A
	mov r5, sp
	ldrh r5, [r5, #0x30]
	strh r5, [r7, #8]
	mov r0, sl
	strh r0, [r7, #0xa]
_0805AE7C:
	mov r1, sb
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	str r0, [sp, #0x18]
	movs r3, #0x1e
	ldrsh r0, [r1, r3]
	str r0, [sp, #0x1c]
	add r0, sp, #0x18
	movs r1, #0
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	str r1, [sp, #0x24]
	mov r4, sp
	ldrh r4, [r4, #0x30]
	strh r4, [r0, #0x14]
	mov r5, sl
	strh r5, [r0, #0x16]
	str r1, [sp, #0x28]
	ldr r1, [r7, #0x10]
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	bne _0805AEE0
	movs r1, #0
	ldr r4, _0805AED4 @ =gUnk_02029D60
	ldr r5, _0805AED8 @ =gUnk_0860FC58
	ldr r6, _0805AEDC @ =gUnk_0202A228
	mov r3, r8
_0805AEB2:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r6
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _0805AEB2
	ldr r3, [r7, #4]
	b _0805AF4A
	.align 2, 0
_0805AECC: .4byte gUnk_0860FC5C
_0805AED0: .4byte gUnk_0202A220
_0805AED4: .4byte gUnk_02029D60
_0805AED8: .4byte gUnk_0860FC58
_0805AEDC: .4byte gUnk_0202A228
_0805AEE0:
	ldr r4, _0805AF74 @ =gUnk_0860FC60
	ldr r0, [sp, #0x30]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	asrs r2, r6, #0x10
	ldr r3, [r7, #4]
	add r0, sp, #0x18
	ldrb r0, [r0, #9]
	str r0, [sp]
	add r0, sp, #0x18
	ldrb r0, [r0, #0xa]
	str r0, [sp, #4]
	add r0, sp, #0x18
	movs r5, #0x14
	ldrsh r0, [r0, r5]
	str r0, [sp, #8]
	add r0, sp, #0x18
	movs r5, #0x16
	ldrsh r0, [r0, r5]
	str r0, [sp, #0xc]
	ldr r5, _0805AF78 @ =gUnk_0202A228
	str r5, [sp, #0x10]
	movs r0, #0x10
	str r0, [sp, #0x14]
	ldr r4, [r4]
	mov r0, ip
	bl _call_via_r4
	movs r1, #0
	mov r3, r8
	ldr r4, _0805AF78 @ =gUnk_0202A228
_0805AF1E:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r3, r0
	adds r1, r0, r4
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _0805AF1E
	ldr r1, [r7, #4]
	str r1, [r7, #0x18]
	add r0, sp, #0x18
	ldrh r0, [r0, #0x14]
	strh r0, [r7, #0x10]
	add r0, sp, #0x18
	ldrh r0, [r0, #0x16]
	strh r0, [r7, #0x12]
	adds r3, r1, #0
	ldr r4, _0805AF7C @ =gUnk_02029D60
	ldr r5, _0805AF80 @ =gUnk_0860FC58
_0805AF4A:
	add r2, sp, #0x18
	ldrb r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	strb r0, [r2, #8]
	ldr r4, [r5]
	adds r0, r3, #0
	adds r1, r2, #0
	ldr r2, _0805AF78 @ =gUnk_0202A228
	movs r3, #0x10
	bl _call_via_r4
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805AF74: .4byte gUnk_0860FC60
_0805AF78: .4byte gUnk_0202A228
_0805AF7C: .4byte gUnk_02029D60
_0805AF80: .4byte gUnk_0860FC58

	thumb_func_start sub_0805AF84
sub_0805AF84: @ 0x0805AF84
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	adds r6, r1, #0
	ldrb r0, [r7, #3]
	ldrb r1, [r7, #4]
	bl sub_08028728
	ldrb r0, [r0, #1]
	movs r4, #0x3f
	ands r4, r0
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _0805B03A
	ldrb r0, [r7, #3]
	ldrb r1, [r7, #4]
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _0805AFE0 @ =gUnk_0861CA5C
	adds r1, r0, r1
	movs r3, #1
	strb r3, [r6]
	movs r2, #0
	ldr r0, _0805AFE4 @ =gUnk_0202A519
	ldrb r0, [r0]
	cmp r0, #0x20
	bls _0805AFC4
	movs r2, #1
_0805AFC4:
	ldrb r1, [r1]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805AFF0
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ands r2, r3
	ldr r0, _0805AFE8 @ =gUnk_0860F78A
	cmp r2, #0
	beq _0805AFFA
	ldr r0, _0805AFEC @ =gUnk_0860F798
	b _0805AFFA
	.align 2, 0
_0805AFE0: .4byte gUnk_0861CA5C
_0805AFE4: .4byte gUnk_0202A519
_0805AFE8: .4byte gUnk_0860F78A
_0805AFEC: .4byte gUnk_0860F798
_0805AFF0:
	ands r2, r3
	ldr r0, _0805B048 @ =gUnk_0860F76E
	cmp r2, #0
	beq _0805AFFA
	ldr r0, _0805B04C @ =gUnk_0860F77C
_0805AFFA:
	str r0, [r6, #4]
	movs r0, #0
	mov r8, r0
	strb r4, [r6, #1]
	ldrb r0, [r7, #3]
	bl sub_08058D6C
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldrb r0, [r6, #1]
	bl sub_08058D78
	adds r4, r0, #0
	subs r4, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrb r0, [r7, #4]
	bl sub_08058D6C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0805B050 @ =sub_0805AD9C
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0807696C
_0805B03A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B048: .4byte gUnk_0860F76E
_0805B04C: .4byte gUnk_0860F77C
_0805B050: .4byte sub_0805AD9C

	thumb_func_start sub_0805B054
sub_0805B054: @ 0x0805B054
	push {r4, r5, r6, r7, lr}
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805B0F2
	bl sub_08143054
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805B0F2
	ldr r0, _0805B0A8 @ =gUnk_0202A514
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0805B0F2
	ldr r5, _0805B0AC @ =gUnk_02001CD0
	ldr r4, _0805B0B0 @ =gUnk_0202A240
	ldr r6, _0805B0B4 @ =0x0000D8F0
	movs r7, #0xf
_0805B07E:
	ldrb r0, [r5, #3]
	cmp r0, #0xff
	beq _0805B0E8
	ldrb r0, [r5, #4]
	cmp r0, #0xff
	beq _0805B0E8
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0805B0B8
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805B0E8
	adds r0, r4, #0
	movs r1, #0x2c
	bl memzero
	strh r6, [r4, #8]
	strh r6, [r4, #0xa]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	b _0805B0E8
	.align 2, 0
_0805B0A8: .4byte gUnk_0202A514
_0805B0AC: .4byte gUnk_02001CD0
_0805B0B0: .4byte gUnk_0202A240
_0805B0B4: .4byte 0x0000D8F0
_0805B0B8:
	ldrb r0, [r5, #3]
	ldrb r1, [r5, #4]
	bl sub_0806D83C
	adds r2, r0, #0
	cmp r2, #0
	beq _0805B0E0
	adds r0, #0x78
	ldrh r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0805B0E0
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B0E8
_0805B0E0:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0805AF84
_0805B0E8:
	subs r7, #1
	adds r5, #8
	adds r4, #0x2c
	cmp r7, #0
	bge _0805B07E
_0805B0F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0805B0F8
sub_0805B0F8: @ 0x0805B0F8
	push {r4, lr}
	adds r3, r1, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r2, #0
	cmp r2, #0
	bne _0805B144
	ldr r0, [r3, #4]
	ldrb r1, [r0, #0x17]
	movs r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0805B120
	ldr r0, _0805B11C @ =gUnk_0202A548
	strh r4, [r0]
	b _0805B192
	.align 2, 0
_0805B11C: .4byte gUnk_0202A548
_0805B120:
	ldr r0, [r3]
	adds r0, #0x5d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805B138
	ldr r1, _0805B134 @ =gUnk_0202A548
	movs r0, #1
	b _0805B190
	.align 2, 0
_0805B134: .4byte gUnk_0202A548
_0805B138:
	ldr r0, _0805B140 @ =gUnk_0202A548
	strh r2, [r0]
	b _0805B192
	.align 2, 0
_0805B140: .4byte gUnk_0202A548
_0805B144:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0805B164
	ldr r0, _0805B15C @ =0xFFFF7FFF
	ands r0, r2
	lsls r0, r0, #6
	ldr r1, _0805B160 @ =gUnk_0861A8F0
	adds r0, r0, r1
	ldrb r2, [r0, #8]
	b _0805B180
	.align 2, 0
_0805B15C: .4byte 0xFFFF7FFF
_0805B160: .4byte gUnk_0861A8F0
_0805B164:
	ldr r0, _0805B198 @ =0x0000BFFF
	ands r1, r0
	ldr r0, [r3]
	adds r0, #0x5d
	ldrb r2, [r0]
	lsrs r2, r2, #5
	movs r0, #1
	ands r2, r0
	adds r0, r1, #0
	movs r1, #4
	bl sub_081437AC
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0805B180:
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0805B18C
	movs r2, #0
_0805B18C:
	ldr r1, _0805B19C @ =gUnk_0202A548
	adds r0, r2, #3
_0805B190:
	strh r0, [r1]
_0805B192:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B198: .4byte 0x0000BFFF
_0805B19C: .4byte gUnk_0202A548

	thumb_func_start sub_0805B1A0
sub_0805B1A0: @ 0x0805B1A0
	ldr r1, _0805B1A8 @ =gUnk_0202A50C
	str r0, [r1]
	bx lr
	.align 2, 0
_0805B1A8: .4byte gUnk_0202A50C

	thumb_func_start sub_0805B1AC
sub_0805B1AC: @ 0x0805B1AC
	ldr r1, _0805B1B4 @ =gUnk_0202A510
	ldr r0, _0805B1B8 @ =0x06014000
	str r0, [r1]
	bx lr
	.align 2, 0
_0805B1B4: .4byte gUnk_0202A510
_0805B1B8: .4byte 0x06014000

	thumb_func_start sub_0805B1BC
sub_0805B1BC: @ 0x0805B1BC
	ldr r1, _0805B1CC @ =0x06016000
	ldr r0, _0805B1D0 @ =gUnk_0202A50C
	str r1, [r0]
	ldr r1, _0805B1D4 @ =gUnk_0202A510
	ldr r0, _0805B1D8 @ =0x06014000
	str r0, [r1]
	bx lr
	.align 2, 0
_0805B1CC: .4byte 0x06016000
_0805B1D0: .4byte gUnk_0202A50C
_0805B1D4: .4byte gUnk_0202A510
_0805B1D8: .4byte 0x06014000

	thumb_func_start sub_0805B1DC
sub_0805B1DC: @ 0x0805B1DC
	push {lr}
	adds r1, r0, #0
	ldr r0, _0805B1EC @ =sub_08059000
	bl sub_080133FC
	pop {r0}
	bx r0
	.align 2, 0
_0805B1EC: .4byte sub_08059000

	thumb_func_start sub_0805B1F0
sub_0805B1F0: @ 0x0805B1F0
	push {lr}
	ldr r0, _0805B200 @ =sub_08059000
	ldr r1, _0805B204 @ =sub_080591A8
	bl sub_080133FC
	pop {r0}
	bx r0
	.align 2, 0
_0805B200: .4byte sub_08059000
_0805B204: .4byte sub_080591A8

	thumb_func_start sub_0805B208
sub_0805B208: @ 0x0805B208
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _0805B220
	ldr r0, _0805B218 @ =gUnk_02002720
	ldr r1, _0805B21C @ =gUnk_0861EAC8
	b _0805B22E
	.align 2, 0
_0805B218: .4byte gUnk_02002720
_0805B21C: .4byte gUnk_0861EAC8
_0805B220:
	subs r0, r1, #2
	cmp r0, #3
	bhi _0805B240
	ldr r0, _0805B238 @ =gUnk_02002720
	lsls r1, r1, #5
	ldr r2, _0805B23C @ =gUnk_0861EB48
	adds r1, r1, r2
_0805B22E:
	movs r2, #0x20
	bl memcpy2
	b _0805B24A
	.align 2, 0
_0805B238: .4byte gUnk_02002720
_0805B23C: .4byte gUnk_0861EB48
_0805B240:
	ldr r0, _0805B250 @ =gUnk_02002720
	ldr r1, _0805B254 @ =gUnk_0861EB48
	movs r2, #0x20
	bl memcpy2
_0805B24A:
	pop {r0}
	bx r0
	.align 2, 0
_0805B250: .4byte gUnk_02002720
_0805B254: .4byte gUnk_0861EB48

	thumb_func_start sub_0805B258
sub_0805B258: @ 0x0805B258
	push {r4, lr}
	ldr r0, _0805B268 @ =gUnk_0202A508
	ldrh r1, [r0]
	adds r4, r0, #0
	cmp r1, #0x1f
	bls _0805B26C
_0805B264:
	b _0805B264
	.align 2, 0
_0805B268: .4byte gUnk_0202A508
_0805B26C:
	ldr r3, _0805B290 @ =gUnk_0202A504
	ldr r0, _0805B294 @ =gUnk_0202A50A
	ldrb r2, [r0]
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r2, r0
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	ldr r0, [r3]
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805B290: .4byte gUnk_0202A504
_0805B294: .4byte gUnk_0202A50A

	thumb_func_start sub_0805B298
sub_0805B298: @ 0x0805B298
	ldr r1, _0805B2AC @ =gUnk_0202A508
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0805B2B0 @ =gUnk_0202A50A
	ldrb r0, [r2]
	movs r1, #0x20
	eors r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_0805B2AC: .4byte gUnk_0202A508
_0805B2B0: .4byte gUnk_0202A50A

	thumb_func_start sub_0805B2B4
sub_0805B2B4: @ 0x0805B2B4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _0805B2F4 @ =gUnk_0202A238
	ldr r4, [r0]
	movs r5, #0
_0805B2C4:
	adds r0, r4, #0
	bl sub_08058E80
	movs r1, #7
	ands r1, r0
	cmp r1, #3
	bne _0805B2F8
	ldrh r0, [r4, #0x10]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r7
	bne _0805B2F8
	ldrh r0, [r4, #0x14]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _0805B2F8
	adds r0, r4, #0
	b _0805B302
	.align 2, 0
_0805B2F4: .4byte gUnk_0202A238
_0805B2F8:
	adds r5, #1
	adds r4, #0xd0
	cmp r5, #0x19
	ble _0805B2C4
	movs r0, #0
_0805B302:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805B308
sub_0805B308: @ 0x0805B308
	adds r3, r0, #0
	ldr r0, _0805B318 @ =gUnk_0202A238
	ldr r1, [r0]
	cmp r3, #0
	bne _0805B31C
_0805B312:
	adds r0, r1, #0
	b _0805B338
	.align 2, 0
_0805B318: .4byte gUnk_0202A238
_0805B31C:
	movs r2, #0
_0805B31E:
	adds r0, r1, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B32E
	ldr r0, [r1]
	cmp r3, r0
	beq _0805B312
_0805B32E:
	adds r2, #1
	adds r1, #0xd0
	cmp r2, #0x19
	ble _0805B31E
	movs r0, #0
_0805B338:
	bx lr
	.align 2, 0

	thumb_func_start sub_0805B33C
sub_0805B33C: @ 0x0805B33C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _0805B36C @ =gUnk_0202A238
	ldr r4, [r0]
	movs r5, #0
_0805B34C:
	adds r0, r4, #0
	bl sub_08058E80
	movs r1, #7
	ands r1, r0
	cmp r1, #3
	bne _0805B370
	ldr r1, [r4, #4]
	ldrb r0, [r1, #0x14]
	cmp r0, r7
	bne _0805B370
	ldrb r0, [r1, #0x15]
	cmp r0, r6
	bne _0805B370
	adds r0, r4, #0
	b _0805B37A
	.align 2, 0
_0805B36C: .4byte gUnk_0202A238
_0805B370:
	adds r5, #1
	adds r4, #0xd0
	cmp r5, #0x19
	ble _0805B34C
	movs r0, #0
_0805B37A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805B380
sub_0805B380: @ 0x0805B380
	push {lr}
	ldr r1, _0805B394 @ =gUnk_0202A548
	ldrh r2, [r1, #2]
	ldr r0, _0805B398 @ =0x0000FFFF
	cmp r2, r0
	bne _0805B39C
	ldrh r0, [r1]
	bl sub_0802411C
	b _0805B3A6
	.align 2, 0
_0805B394: .4byte gUnk_0202A548
_0805B398: .4byte 0x0000FFFF
_0805B39C:
	orrs r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r1, #2]
	bl sub_0802411C
_0805B3A6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805B3AC
sub_0805B3AC: @ 0x0805B3AC
	push {r4, lr}
	ldr r4, _0805B3CC @ =gUnk_0202A548
	ldr r0, _0805B3D0 @ =0x0000FFFF
	strh r0, [r4, #2]
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0805B3C4
	movs r0, #1
_0805B3C4:
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B3CC: .4byte gUnk_0202A548
_0805B3D0: .4byte 0x0000FFFF

	thumb_func_start sub_0805B3D4
sub_0805B3D4: @ 0x0805B3D4
	ldr r1, _0805B3DC @ =gUnk_0202A51C
	str r0, [r1]
	bx lr
	.align 2, 0
_0805B3DC: .4byte gUnk_0202A51C

	thumb_func_start sub_0805B3E0
sub_0805B3E0: @ 0x0805B3E0
	adds r3, r0, #0
	ldr r0, _0805B3F0 @ =gUnk_0202A238
	ldr r1, [r0]
	cmp r3, #0
	bne _0805B3F4
_0805B3EA:
	adds r0, r1, #0
	b _0805B410
	.align 2, 0
_0805B3F0: .4byte gUnk_0202A238
_0805B3F4:
	movs r2, #0
_0805B3F6:
	adds r0, r1, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B406
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _0805B3EA
_0805B406:
	adds r2, #1
	adds r1, #0xd0
	cmp r2, #0x19
	ble _0805B3F6
	movs r0, #0
_0805B410:
	bx lr
	.align 2, 0

	thumb_func_start sub_0805B414
sub_0805B414: @ 0x0805B414
	adds r3, r0, #0
	movs r2, #0
	ldr r0, _0805B428 @ =gUnk_0202A238
	ldr r1, [r0]
_0805B41C:
	ldr r0, [r1, #8]
	cmp r0, r3
	bne _0805B42C
	adds r0, r1, #0
	b _0805B436
	.align 2, 0
_0805B428: .4byte gUnk_0202A238
_0805B42C:
	adds r1, #0xd0
	adds r2, #1
	cmp r2, #0x19
	ble _0805B41C
	movs r0, #0
_0805B436:
	bx lr

	thumb_func_start sub_0805B438
sub_0805B438: @ 0x0805B438
	push {lr}
	ldr r0, _0805B448 @ =gUnk_0202A528
	movs r1, #0x20
	bl memzero
	pop {r0}
	bx r0
	.align 2, 0
_0805B448: .4byte gUnk_0202A528

	thumb_func_start sub_0805B44C
sub_0805B44C: @ 0x0805B44C
	movs r3, #0
	ldr r1, _0805B45C @ =gUnk_0202A528
	adds r2, r1, #4
_0805B452:
	ldr r0, [r2]
	cmp r0, #0
	bne _0805B460
	adds r0, r1, #0
	b _0805B46C
	.align 2, 0
_0805B45C: .4byte gUnk_0202A528
_0805B460:
	adds r1, #8
	adds r2, #8
	adds r3, #1
	cmp r3, #3
	ble _0805B452
	movs r0, #0
_0805B46C:
	bx lr
	.align 2, 0

	thumb_func_start sub_0805B470
sub_0805B470: @ 0x0805B470
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	bl sub_08139B74
	adds r6, r0, #0
	ldrh r0, [r5, #0x10]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0805B50C @ =0xFFFFFF00
	ands r4, r1
	orrs r4, r0
	ldrh r0, [r5, #0x14]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r1, _0805B510 @ =0xFF00FFFF
	ands r4, r1
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r4, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _0805B514 @ =gUnk_0861CA5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805B4CE
	ldrb r0, [r6, #1]
	cmp r0, #3
	bne _0805B4CE
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805B520
_0805B4CE:
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	ldr r2, _0805B518 @ =gUnk_0860EFEA
	cmp r1, #0
	bne _0805B5A4
	ldr r2, _0805B51C @ =gUnk_0860EFBC
	b _0805B5A4
	.align 2, 0
_0805B50C: .4byte 0xFFFFFF00
_0805B510: .4byte 0xFF00FFFF
_0805B514: .4byte gUnk_0861CA5C
_0805B518: .4byte gUnk_0860EFEA
_0805B51C: .4byte gUnk_0860EFBC
_0805B520:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0x6d
	cmp r1, #3
	bls _0805B536
	movs r0, #0
	strb r0, [r6]
	strb r0, [r7]
_0805B536:
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	cmp r1, #0
	bne _0805B578
	ldrb r0, [r6]
	lsls r0, r0, #3
	ldr r1, _0805B574 @ =gUnk_0860EFCA
	b _0805B57E
	.align 2, 0
_0805B574: .4byte gUnk_0860EFCA
_0805B578:
	ldrb r0, [r6]
	lsls r0, r0, #3
	ldr r1, _0805B5AC @ =gUnk_0860EFF8
_0805B57E:
	adds r2, r0, r1
	ldrb r0, [r7]
	adds r0, #1
	movs r1, #0
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0805B5A4
	strb r1, [r7]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0805B5A4
	strb r1, [r6]
	strb r1, [r7]
_0805B5A4:
	adds r0, r2, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805B5AC: .4byte gUnk_0860EFF8

	thumb_func_start sub_0805B5B0
sub_0805B5B0: @ 0x0805B5B0
	ldr r2, _0805B5BC @ =gUnk_0202A514
	ldr r1, [r2]
	orrs r1, r0
	str r1, [r2]
	bx lr
	.align 2, 0
_0805B5BC: .4byte gUnk_0202A514

	thumb_func_start sub_0805B5C0
sub_0805B5C0: @ 0x0805B5C0
	ldr r2, _0805B5CC @ =gUnk_0202A514
	ldr r1, [r2]
	bics r1, r0
	str r1, [r2]
	bx lr
	.align 2, 0
_0805B5CC: .4byte gUnk_0202A514

	thumb_func_start sub_0805B5D0
sub_0805B5D0: @ 0x0805B5D0
	ldr r0, _0805B5D8 @ =gUnk_0202A514
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0805B5D8: .4byte gUnk_0202A514

	thumb_func_start sub_0805B5DC
sub_0805B5DC: @ 0x0805B5DC
	ldr r1, _0805B5E4 @ =gUnk_0202A514
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0805B5E4: .4byte gUnk_0202A514

	thumb_func_start sub_0805B5E8
sub_0805B5E8: @ 0x0805B5E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0x10
	mov r7, sp
	mov r1, sp
	bl sub_08058D80
	ldr r0, [r4]
	ldr r1, [r4, #4]
	mov r2, sp
	ldrb r2, [r2]
	ldrb r3, [r7, #2]
	bl sub_0804C3F8
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xff
	beq _0805B692
	mov r0, sp
	ldrb r0, [r0]
	ldrb r1, [r7, #2]
	bl sub_08028728
	adds r7, r0, #0
	movs r0, #0x80
	ands r0, r6
	cmp r0, #0
	beq _0805B67E
	adds r2, r4, #0
	adds r2, #0x6e
	ldrb r1, [r2]
	movs r0, #1
	mov r8, r0
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _0805B662
	ldrb r1, [r7, #1]
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r0, r1
	bl sub_08058D78
	ldrh r1, [r4, #0x12]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bhs _0805B658
	movs r0, #5
	strb r0, [r6]
	movs r0, #2
	orrs r5, r0
_0805B658:
	ldrb r1, [r6]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0805B692
_0805B662:
	ldrb r1, [r7, #1]
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r0, r1
	bl sub_08058D78
	ldrh r1, [r4, #0x12]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0805B692
	movs r0, #2
	strb r0, [r6]
	b _0805B690
_0805B67E:
	adds r2, r4, #0
	adds r2, #0x6e
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805B692
	movs r0, #2
	strb r0, [r2]
_0805B690:
	orrs r5, r0
_0805B692:
	adds r0, r5, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805B6A0
sub_0805B6A0: @ 0x0805B6A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldrh r0, [r5, #0x1a]
	bl sub_08058D64
	adds r4, r0, #0
	ldrh r0, [r5, #0x12]
	bl sub_08058D64
	subs r4, r4, r0
	adds r6, r5, #0
	adds r6, #0x30
	strb r4, [r6]
	ldrh r0, [r5, #0x1a]
	bl sub_08058D64
	adds r4, r0, #0
	ldrh r0, [r5, #0x12]
	bl sub_08058D64
	subs r4, r4, r0
	strb r4, [r6]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	cmp r4, #3
	ble _0805B6DE
	movs r0, #3
	strb r0, [r6]
_0805B6DE:
	movs r0, #0
	ldrsb r0, [r6, r0]
	movs r1, #4
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805B6EC
	strb r1, [r6]
_0805B6EC:
	adds r7, r5, #0
	adds r7, #0x4b
	ldrb r0, [r7]
	movs r1, #0x10
	adds r1, r1, r5
	mov r8, r1
	movs r2, #0x18
	adds r2, r2, r5
	mov sb, r2
	bl sub_08096BFC
	adds r6, r0, #0
	ldrh r1, [r5, #0x10]
	ldrh r0, [r5, #0x18]
	subs r2, r1, r0
	cmp r2, #0
	bge _0805B710
	rsbs r2, r2, #0
_0805B710:
	ldrh r1, [r5, #0x14]
	ldrh r0, [r5, #0x1c]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805B71C
	rsbs r0, r0, #0
_0805B71C:
	adds r0, r2, r0
	adds r1, r5, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl __divsi3
	adds r4, r0, #0
	lsls r0, r6, #1
	bl BattleAlloc
	adds r3, r0, #0
	str r3, [r5, #0x28]
	strh r4, [r5, #0x2c]
	movs r0, #0
	strh r0, [r5, #0x2e]
	ldrb r0, [r7]
	mov r1, r8
	mov r2, sb
	bl sub_08096AD8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805B754
sub_0805B754: @ 0x0805B754
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x98
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r8, r5
	ldrh r1, [r6, #0x1a]
	ldrh r0, [r6, #0x12]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805B774
	rsbs r0, r0, #0
_0805B774:
	bl sub_08058D64
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bgt _0805B788
	adds r0, r6, #0
	bl sub_0805B6A0
	b _0805B8C2
_0805B788:
	ldrh r0, [r6, #0x1a]
	bl sub_08058D64
	adds r4, r0, #0
	ldrh r0, [r6, #0x12]
	bl sub_08058D64
	subs r4, r4, r0
	adds r1, r6, #0
	adds r1, #0x30
	strb r4, [r1]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	cmp r4, #3
	ble _0805B7AA
	movs r0, #3
	strb r0, [r1]
_0805B7AA:
	movs r0, #0
	ldrsb r0, [r1, r0]
	movs r2, #4
	rsbs r2, r2, #0
	cmp r0, r2
	bge _0805B7B8
	strb r2, [r1]
_0805B7B8:
	ldrh r1, [r6, #0x10]
	ldrh r0, [r6, #0x18]
	subs r2, r1, r0
	cmp r2, #0
	bge _0805B7C4
	rsbs r2, r2, #0
_0805B7C4:
	ldrh r1, [r6, #0x14]
	ldrh r0, [r6, #0x1c]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805B7D0
	rsbs r0, r0, #0
_0805B7D0:
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r7, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrh r1, [r6, #0x12]
	ldrh r0, [r6, #0x1a]
	cmp r1, r0
	bhs _0805B7F4
	adds r0, r0, r5
	b _0805B7F8
_0805B7F4:
	mov r2, r8
	adds r0, r1, r2
_0805B7F8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r0, r7, #1
	bl BattleAlloc
	str r0, [r6, #0x28]
	movs r0, #0
	strh r7, [r6, #0x2c]
	strh r0, [r6, #0x2e]
	add r5, sp, #0x38
	ldr r1, _0805B8D8 @ =0x00000000
	ldr r0, _0805B8D4 @ =0x00000000
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	lsrs r0, r7, #1
	bl __floatsidf
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl __floatsidf
	mov sb, r5
	cmp r4, #0
	bge _0805B838
	ldr r2, _0805B8DC @ =0x40F00000
	ldr r3, _0805B8E0 @ =0x00000000
	bl __adddf3
_0805B838:
	mov r2, sb
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	add r5, sp, #0x58
	movs r0, #0x12
	ldrsh r4, [r6, r0]
	adds r0, r4, #0
	bl __floatsidf
	mov r8, r5
	cmp r4, #0
	bge _0805B858
	ldr r2, _0805B8DC @ =0x40F00000
	ldr r3, _0805B8E0 @ =0x00000000
	bl __adddf3
_0805B858:
	str r0, [sp, #0x58]
	str r1, [sp, #0x5c]
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	bl __floatsidf
	mov r2, r8
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	movs r0, #0x1a
	ldrsh r4, [r6, r0]
	adds r0, r4, #0
	bl __floatsidf
	cmp r4, #0
	bge _0805B882
	ldr r2, _0805B8DC @ =0x40F00000
	ldr r3, _0805B8E0 @ =0x00000000
	bl __adddf3
_0805B882:
	mov r2, r8
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	add r4, sp, #0x78
	add r0, sp, #8
	str r0, [sp]
	movs r0, #3
	mov r1, sb
	adds r3, r4, #0
	bl sub_08007A8C
	ldr r6, [r6, #0x28]
	movs r5, #0
	cmp r5, r7
	bge _0805B8C2
_0805B8A0:
	adds r0, r5, #0
	bl __floatsidf
	mov r2, r8
	str r2, [sp]
	str r4, [sp, #4]
	movs r2, #3
	mov r3, sb
	bl sub_08007CB8
	bl __fixdfsi
	strh r0, [r6]
	adds r5, #1
	adds r6, #2
	cmp r5, r7
	blt _0805B8A0
_0805B8C2:
	add sp, #0x98
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B8D4: .4byte 0x00000000
_0805B8D8: .4byte 0x00000000
_0805B8DC: .4byte 0x40F00000
_0805B8E0: .4byte 0x00000000

	thumb_func_start sub_0805B8E4
sub_0805B8E4: @ 0x0805B8E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x9c
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x98]
	ldrh r1, [r6, #0x10]
	ldrh r0, [r6, #0x18]
	subs r2, r1, r0
	cmp r2, #0
	bge _0805B904
	rsbs r2, r2, #0
_0805B904:
	ldrh r1, [r6, #0x14]
	ldrh r0, [r6, #0x1c]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805B910
	rsbs r0, r0, #0
_0805B910:
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r7, #0
	bl __divsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	ldrh r0, [r6, #0x1a]
	ldrh r1, [r6, #0x12]
	subs r0, r0, r1
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r0, r7, #1
	bl BattleAlloc
	str r0, [r6, #0x28]
	movs r0, #0
	strh r7, [r6, #0x2c]
	strh r0, [r6, #0x2e]
	add r5, sp, #0x38
	ldr r1, _0805BA64 @ =0x00000000
	ldr r0, _0805BA60 @ =0x00000000
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	lsrs r4, r4, #0x11
	adds r0, r4, #0
	bl __floatsidf
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl __floatsidf
	mov sb, r5
	cmp r4, #0
	bge _0805B97A
	ldr r2, _0805BA68 @ =0x40F00000
	ldr r3, _0805BA6C @ =0x00000000
	bl __adddf3
_0805B97A:
	mov r2, sb
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	add r5, sp, #0x58
	movs r0, #0x12
	ldrsh r4, [r6, r0]
	adds r0, r4, #0
	bl __floatsidf
	mov r8, r5
	cmp r4, #0
	bge _0805B99A
	ldr r2, _0805BA68 @ =0x40F00000
	ldr r3, _0805BA6C @ =0x00000000
	bl __adddf3
_0805B99A:
	str r0, [sp, #0x58]
	str r1, [sp, #0x5c]
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	bl __floatsidf
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x98]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __adddf3
	mov r2, r8
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	movs r0, #0x1a
	ldrsh r4, [r6, r0]
	adds r0, r4, #0
	bl __floatsidf
	cmp r4, #0
	bge _0805B9DE
	ldr r2, _0805BA68 @ =0x40F00000
	ldr r3, _0805BA6C @ =0x00000000
	bl __adddf3
_0805B9DE:
	mov r2, r8
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	ldrh r0, [r6, #0x1a]
	bl sub_08058D64
	adds r4, r0, #0
	ldrh r0, [r6, #0x12]
	bl sub_08058D64
	subs r4, r4, r0
	adds r1, r6, #0
	adds r1, #0x30
	strb r4, [r1]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	cmp r4, #3
	ble _0805BA06
	movs r0, #3
	strb r0, [r1]
_0805BA06:
	movs r0, #0
	ldrsb r0, [r1, r0]
	movs r2, #4
	rsbs r2, r2, #0
	cmp r0, r2
	bge _0805BA14
	strb r2, [r1]
_0805BA14:
	add r4, sp, #0x78
	add r0, sp, #8
	str r0, [sp]
	movs r0, #3
	mov r1, sb
	mov r2, r8
	adds r3, r4, #0
	bl sub_08007A8C
	ldr r6, [r6, #0x28]
	movs r5, #0
	cmp r5, r7
	bge _0805BA50
_0805BA2E:
	adds r0, r5, #0
	bl __floatsidf
	mov r2, r8
	str r2, [sp]
	str r4, [sp, #4]
	movs r2, #3
	mov r3, sb
	bl sub_08007CB8
	bl __fixdfsi
	strh r0, [r6]
	adds r5, #1
	adds r6, #2
	cmp r5, r7
	blt _0805BA2E
_0805BA50:
	add sp, #0x9c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BA60: .4byte 0x00000000
_0805BA64: .4byte 0x00000000
_0805BA68: .4byte 0x40F00000
_0805BA6C: .4byte 0x00000000

	thumb_func_start sub_0805BA70
sub_0805BA70: @ 0x0805BA70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	str r0, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x18]
	adds r3, r0, #0
	adds r3, #0x10
	adds r4, r0, #0
	adds r4, #0x18
	movs r2, #0xff
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0, #0x18]
	cmp r1, r0
	bhs _0805BA9A
	movs r2, #0
	b _0805BAB4
_0805BA9A:
	cmp r1, r0
	bls _0805BAA2
	movs r2, #2
	b _0805BAB4
_0805BAA2:
	ldrh r1, [r3, #4]
	ldrh r0, [r4, #4]
	cmp r1, r0
	bhs _0805BAAE
	movs r2, #1
	b _0805BAB4
_0805BAAE:
	cmp r1, r0
	bls _0805BAB4
	movs r2, #3
_0805BAB4:
	str r2, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ldrh r0, [r0, #0x20]
	mov sl, r0
	lsls r1, r0, #1
	ldr r2, [sp, #0x14]
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	mov sb, r0
	adds r5, r2, #0
	adds r5, #0x10
	mov r4, sp
	adds r0, r5, #0
	mov r1, sp
	bl sub_08058D80
	mov r0, sp
	ldrb r1, [r0]
	ldr r2, _0805BB4C @ =0xFFFF0000
	adds r0, r2, #0
	ands r0, r6
	orrs r0, r1
	ldrb r1, [r4, #1]
	lsls r1, r1, #0x10
	ldr r3, _0805BB50 @ =0x0000FFFF
	ands r0, r3
	adds r6, r0, #0
	orrs r6, r1
	ldrb r1, [r4, #2]
	adds r0, r2, #0
	ands r0, r7
	adds r7, r0, #0
	orrs r7, r1
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #4]
	ands r0, r2
	orrs r0, r1
	lsrs r1, r6, #0x10
	lsls r1, r1, #0x10
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #4]
	lsls r1, r7, #0x10
	lsrs r1, r1, #0x10
	add r4, sp, #4
	ldr r0, [r4, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r4, #4]
	ldr r1, [sp, #0x14]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	lsls r2, r6, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r7, #0x18
	lsrs r3, r3, #0x18
	bl sub_0804C3F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsrs r1, r6, #0x10
	movs r0, #0xc1
	rsbs r0, r0, #0
	mov r2, r8
	ands r2, r0
	mov r8, r2
	str r5, [sp, #0x30]
	cmp r1, r8
	bne _0805BB8C
	movs r5, #1
	str r5, [sp, #0x20]
	movs r0, #0
	b _0805BB92
	.align 2, 0
_0805BB4C: .4byte 0xFFFF0000
_0805BB50: .4byte 0x0000FFFF
_0805BB54:
	movs r1, #1
	rsbs r1, r1, #0
	add sl, r1
	b _0805BD54
_0805BB5C:
	mov r2, sp
	ldrh r0, [r2, #4]
	strh r0, [r5]
	add r2, sp, #4
	ldrh r0, [r2, #2]
	add r1, sp, #0xc
	strh r0, [r1, #2]
	ldrh r0, [r2, #4]
	strh r0, [r1, #4]
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	b _0805BD54
_0805BB76:
	mov r1, sp
	ldrh r0, [r1, #4]
	strh r0, [r5]
	ldrh r0, [r1, #6]
	strh r0, [r5, #2]
	ldrh r0, [r1, #8]
	strh r0, [r5, #4]
	movs r2, #1
	rsbs r2, r2, #0
	add sl, r2
	b _0805BD54
_0805BB8C:
	movs r5, #0
	str r5, [sp, #0x20]
	movs r0, #1
_0805BB92:
	str r0, [sp, #0x24]
	movs r1, #0
	str r1, [sp, #0x28]
	mov r8, sl
	add r5, sp, #0xc
	b _0805BD12
_0805BB9E:
	ldr r2, [sp, #0x20]
	cmp r2, #1
	beq _0805BB54
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r7, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_08028728
	ldrb r0, [r0, #1]
	ldr r1, _0805BC74 @ =0x0000FF3F
	ands r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0805BC78 @ =0x0000FFFF
	adds r0, r3, #0
	ands r0, r6
	adds r6, r0, #0
	orrs r6, r1
	mov sl, r8
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0805BC7C @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r2
	orrs r0, r1
	lsrs r1, r6, #0x10
	lsls r1, r1, #0x10
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r4
	str r0, [sp, #8]
	mov r0, r8
	lsls r1, r0, #1
	ldr r2, [sp, #0x14]
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	mov sb, r0
	movs r0, #1
	str r0, [sp, #0x20]
_0805BBF4:
	mov r1, sb
	ldrb r0, [r1]
	ldr r2, _0805BC74 @ =0x0000FF3F
	adds r1, r2, #0
	ands r1, r0
	ldr r3, _0805BC7C @ =0xFFFF0000
	ldr r0, [sp, #0xc]
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #0xc]
	mov r1, sb
	ldrb r0, [r1, #1]
	ands r2, r0
	ldr r0, [r5, #4]
	ands r0, r3
	orrs r0, r2
	str r0, [r5, #4]
	add r0, sp, #0xc
	ldrh r0, [r0]
	ldrh r1, [r5, #4]
	bl sub_08028728
	ldrb r0, [r0, #1]
	movs r1, #0xc1
	rsbs r1, r1, #0
	ands r1, r0
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _0805BC30
	adds r1, #3
_0805BC30:
	lsls r1, r1, #0x10
	ldr r4, _0805BC78 @ =0x0000FFFF
	ldr r0, [sp, #0xc]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #0xc]
	ldrb r0, [r5]
	ldrb r1, [r5, #4]
	ldr r2, [sp, #0x18]
	cmp r2, #1
	bne _0805BC62
	bl sub_0804BE50
	movs r1, #0x80
	ands r1, r0
	cmp r1, #0
	beq _0805BC62
	ldr r2, [sp, #0xc]
	lsrs r1, r2, #0x10
	adds r1, #3
	lsls r1, r1, #0x10
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0xc]
_0805BC62:
	movs r3, #0xff
	add r0, sp, #4
	add r1, sp, #0xc
	ldrh r2, [r0]
	ldrh r0, [r1]
	cmp r2, r0
	bhs _0805BC80
	movs r3, #0
	b _0805BC9C
	.align 2, 0
_0805BC74: .4byte 0x0000FF3F
_0805BC78: .4byte 0x0000FFFF
_0805BC7C: .4byte 0xFFFF0000
_0805BC80:
	cmp r2, r0
	bls _0805BC88
	movs r3, #2
	b _0805BC9C
_0805BC88:
	mov r0, sp
	ldrh r1, [r0, #8]
	ldrh r0, [r5, #4]
	cmp r1, r0
	bhs _0805BC96
	movs r3, #1
	b _0805BC9C
_0805BC96:
	cmp r1, r0
	bls _0805BC9C
	movs r3, #3
_0805BC9C:
	ldr r1, [sp, #0x1c]
	cmp r3, r1
	beq _0805BCA4
	b _0805BB5C
_0805BCA4:
	ldrh r0, [r5, #2]
	adds r1, r0, #0
	lsrs r0, r6, #0x10
	cmp r1, r0
	bhi _0805BD54
	mov r2, sp
	ldrh r0, [r2, #6]
	cmp r1, r0
	bhi _0805BD54
	ldrh r1, [r5]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	subs r2, r1, r0
	cmp r2, #0
	bge _0805BCC4
	rsbs r2, r2, #0
_0805BCC4:
	ldrh r0, [r5, #4]
	lsls r1, r7, #0x10
	lsrs r1, r1, #0x10
	subs r0, r0, r1
	adds r1, r2, r0
	ldrh r4, [r5, #2]
	lsrs r0, r6, #0x10
	subs r0, r4, r0
	cmp r0, #0
	bge _0805BCDA
	rsbs r0, r0, #0
_0805BCDA:
	asrs r0, r0, #1
	lsls r0, r0, #8
	bl __divsi3
	adds r1, r0, #0
	ldr r0, [sp, #0x28]
	cmp r0, r1
	blt _0805BCF0
	lsrs r0, r6, #0x10
	cmp r4, r0
	bhs _0805BCF6
_0805BCF0:
	cmp sl, r8
	beq _0805BCF6
	b _0805BB76
_0805BCF6:
	str r1, [sp, #0x28]
	ldrh r0, [r5]
	mov r1, sp
	strh r0, [r1, #4]
	add r2, sp, #0xc
	ldrh r0, [r2, #2]
	add r1, sp, #4
	strh r0, [r1, #2]
	ldrh r0, [r2, #4]
	strh r0, [r1, #4]
	movs r2, #2
	add sb, r2
	movs r0, #1
	add sl, r0
_0805BD12:
	ldr r1, [sp, #0x14]
	ldrh r1, [r1, #0x22]
	cmp sl, r1
	bge _0805BD1C
	b _0805BBF4
_0805BD1C:
	cmp sl, r8
	beq _0805BD22
	b _0805BB9E
_0805BD22:
	ldr r0, [sp, #0x14]
	adds r0, #0x18
	mov r4, sp
	mov r1, sp
	bl sub_08058D80
	mov r0, sp
	ldrb r1, [r0]
	ldr r2, _0805BDD4 @ =0xFFFF0000
	ldr r0, [sp, #0xc]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0xc]
	ldrb r1, [r4, #2]
	ldr r0, [r5, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #4]
	ldrb r1, [r4, #1]
	lsls r1, r1, #0x10
	ldr r2, _0805BDD8 @ =0x0000FFFF
	ldr r0, [sp, #0xc]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0xc]
_0805BD54:
	mov r4, sp
	ldr r0, [sp, #0x30]
	mov r1, sp
	bl sub_08058D80
	ldrb r3, [r4, #1]
	ldrh r0, [r5, #2]
	cmp r3, r0
	bls _0805BD8C
	mov r0, sp
	ldrb r1, [r0]
	ldrh r0, [r5]
	subs r2, r1, r0
	cmp r2, #0
	bge _0805BD74
	rsbs r2, r2, #0
_0805BD74:
	ldrb r1, [r4, #2]
	ldrh r0, [r5, #4]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805BD80
	rsbs r0, r0, #0
_0805BD80:
	adds r0, r2, r0
	subs r1, r3, r0
	ldrh r0, [r5, #2]
	cmp r1, r0
	ble _0805BD8C
	strh r1, [r5, #2]
_0805BD8C:
	ldrh r1, [r5]
	mov r0, sp
	strb r1, [r0]
	mov r2, sp
	adds r2, #0xc
	str r2, [sp, #0x2c]
	ldrh r0, [r2, #2]
	mov r4, sp
	strb r0, [r4, #1]
	ldrh r0, [r2, #4]
	strb r0, [r4, #2]
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _0805BDB6
	mov r2, sl
	ldr r1, [sp, #0x14]
	strh r2, [r1, #0x20]
	adds r1, #0x18
	mov r0, sp
	bl sub_08058D94
_0805BDB6:
	ldr r0, [sp, #0x2c]
	ldrh r1, [r0, #2]
	lsrs r0, r6, #0x10
	cmp r0, r1
	beq _0805BE8A
	ldr r1, [sp, #0x18]
	cmp r1, #1
	bne _0805BDDC
	ldr r0, [sp, #0x14]
	movs r1, #0
	bl sub_0805B8E4
_0805BDCE:
	movs r0, #1
	b _0805BE8C
	.align 2, 0
_0805BDD4: .4byte 0xFFFF0000
_0805BDD8: .4byte 0x0000FFFF
_0805BDDC:
	ldr r0, [sp, #0x30]
	mov r1, sp
	bl sub_08058D80
	mov r0, sp
	ldrb r0, [r0]
	ldr r3, _0805BE9C @ =0xFFFF0000
	adds r2, r3, #0
	ands r2, r6
	orrs r2, r0
	ldrb r1, [r4, #1]
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _0805BDFA
	adds r1, #3
_0805BDFA:
	lsls r1, r1, #0x10
	ldr r0, _0805BEA0 @ =0x0000FFFF
	ands r2, r0
	adds r6, r2, #0
	orrs r6, r1
	ldrb r1, [r4, #2]
	adds r0, r3, #0
	ands r0, r7
	adds r7, r0, #0
	orrs r7, r1
	ldr r1, [sp, #0x14]
	ldrh r1, [r1, #0x20]
	mov r8, r1
	lsls r1, r1, #1
	ldr r2, [sp, #0x14]
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	mov sb, r0
	cmp r8, sl
	bgt _0805BE8A
	ldr r4, [sp, #0x2c]
_0805BE24:
	mov r0, sb
	ldrb r1, [r0]
	ldr r0, _0805BEA4 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r5]
	mov r2, sb
	ldrb r1, [r2, #1]
	ldr r0, _0805BEA4 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r4, #4]
	ldrh r0, [r4]
	ldrh r1, [r4, #4]
	bl sub_08028728
	ldrb r0, [r0, #1]
	movs r1, #0xc1
	rsbs r1, r1, #0
	ands r1, r0
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _0805BE50
	adds r1, #3
_0805BE50:
	strh r1, [r4, #2]
	lsrs r0, r6, #0x10
	ldrh r3, [r4, #2]
	subs r0, r0, r3
	cmp r0, #0
	bge _0805BE5E
	rsbs r0, r0, #0
_0805BE5E:
	cmp r0, #1
	bgt _0805BDCE
	ldrh r0, [r5]
	ldr r1, _0805BE9C @ =0xFFFF0000
	ands r1, r6
	orrs r1, r0
	ldrh r2, [r4, #4]
	ldr r0, _0805BE9C @ =0xFFFF0000
	ands r0, r7
	adds r7, r0, #0
	orrs r7, r2
	lsls r2, r3, #0x10
	ldr r0, _0805BEA0 @ =0x0000FFFF
	ands r1, r0
	adds r6, r1, #0
	orrs r6, r2
	movs r1, #1
	add r8, r1
	movs r2, #2
	add sb, r2
	cmp r8, sl
	ble _0805BE24
_0805BE8A:
	movs r0, #0
_0805BE8C:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805BE9C: .4byte 0xFFFF0000
_0805BEA0: .4byte 0x0000FFFF
_0805BEA4: .4byte 0x0000FF3F

	thumb_func_start sub_0805BEA8
sub_0805BEA8: @ 0x0805BEA8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x18]
	cmp r1, r0
	bne _0805BEEA
	ldrh r0, [r5, #0x14]
	ldrh r1, [r5, #0x1c]
	cmp r0, r1
	bne _0805BEEA
	adds r1, r5, #0
	adds r1, #0x6a
	ldrh r0, [r1]
	cmp r0, #2
	beq _0805BEE4
	movs r0, #2
	strh r0, [r1]
	ldr r0, _0805BEE0 @ =0x00008002
	b _0805C2D6
	.align 2, 0
_0805BEE0: .4byte 0x00008002
_0805BEE4:
	movs r0, #0x80
	lsls r0, r0, #8
	b _0805C2D6
_0805BEEA:
	adds r0, r5, #0
	adds r0, #0x10
	mov r6, sp
	mov r1, sp
	bl sub_08058D80
	adds r0, r5, #0
	adds r0, #0x18
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08058D80
	mov r0, sp
	ldrb r1, [r0]
	ldrb r0, [r4]
	subs r2, r1, r0
	adds r7, r4, #0
	cmp r2, #0
	bge _0805BF12
	rsbs r2, r2, #0
_0805BF12:
	ldrb r1, [r6, #2]
	ldrb r0, [r7, #2]
	subs r1, r1, r0
	cmp r1, #0
	bge _0805BF1E
	rsbs r1, r1, #0
_0805BF1E:
	adds r4, r2, r1
	ldr r1, [r5, #0x34]
	movs r0, #8
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _0805BFAA
	ldrh r6, [r5, #0x1a]
	ldrh r0, [r5, #0x12]
	subs r4, r6, r0
	cmp r4, #0x50
	ble _0805BF86
	ldrh r1, [r5, #0x18]
	ldrh r0, [r5, #0x10]
	subs r2, r1, r0
	cmp r2, #0
	bge _0805BF42
	rsbs r2, r2, #0
_0805BF42:
	ldrh r1, [r5, #0x1c]
	ldrh r0, [r5, #0x14]
	subs r1, r1, r0
	cmp r1, #0
	bge _0805BF4E
	rsbs r1, r1, #0
_0805BF4E:
	adds r1, r2, r1
	adds r0, r4, #0
	cmp r0, #0
	bge _0805BF58
	rsbs r0, r0, #0
_0805BF58:
	cmp r1, r0
	bgt _0805BF86
	adds r0, r5, #0
	adds r0, #0x44
	strh r6, [r0]
	ldrh r1, [r5, #0x12]
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	cmp r1, #0
	bge _0805BF70
	rsbs r1, r1, #0
_0805BF70:
	adds r0, r5, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #0xa
	strh r0, [r5, #0x3a]
	movs r0, #0
	strh r0, [r5, #0x38]
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #9
	b _0805C2C2
_0805BF86:
	movs r4, #8
	ands r3, r4
	cmp r3, #0
	beq _0805BF94
	ldrh r0, [r5, #0x1a]
	adds r0, #0x30
	strh r0, [r5, #0x1a]
_0805BF94:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0805BA70
	ldr r0, [r5, #0x34]
	orrs r0, r4
	str r0, [r5, #0x34]
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #7
	b _0805C2C2
_0805BFAA:
	ldr r0, _0805C018 @ =0xFFFFFEFF
	ands r1, r0
	str r1, [r5, #0x34]
	ldr r0, [r5]
	ldr r1, [r5, #4]
	bl sub_08139B74
	mov sb, r0
	ldrb r0, [r7]
	ldrb r1, [r7, #2]
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _0805C01C @ =gUnk_0861CA5C
	adds r0, r0, r1
	mov r8, r0
	cmp r4, #1
	ble _0805BFD2
	b _0805C1C2
_0805BFD2:
	adds r4, r5, #0
	adds r4, #0x24
	movs r0, #1
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0805BA70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r4, #0
	cmp r0, #1
	beq _0805C030
	ldrb r0, [r7]
	ldrb r1, [r7, #2]
	bl sub_0804BE50
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x1e
	bl sub_08143B70
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0805C020
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805C028
	b _0805C034
	.align 2, 0
_0805C018: .4byte 0xFFFFFEFF
_0805C01C: .4byte gUnk_0861CA5C
_0805C020:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805C034
_0805C028:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _0805C034
_0805C030:
	movs r0, #1
	b _0805C036
_0805C034:
	movs r0, #0
_0805C036:
	adds r2, r0, #0
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #2
	bne _0805C09E
	mov r1, r8
	ldrb r0, [r1, #1]
	cmp r0, #1
	bhi _0805C07A
	ldrb r0, [r7, #1]
	mov r1, sp
	ldrb r1, [r1, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _0805C056
	rsbs r0, r0, #0
_0805C056:
	cmp r0, #1
	bgt _0805C07A
	cmp r2, #1
	beq _0805C07A
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805C07A
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805C09E
	mov r1, sb
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _0805C09E
_0805C07A:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	strh r1, [r0]
	movs r0, #0xa
	strh r0, [r5, #0x3a]
	strh r1, [r5, #0x38]
	movs r0, #3
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #6
	strb r0, [r1]
	movs r0, #0x24
	strh r0, [r5, #0x3c]
	movs r0, #2
	strh r0, [r5, #0x3e]
	b _0805C2C6
_0805C09E:
	ldrh r0, [r5, #0x12]
	ldrh r2, [r5, #0x1a]
	cmp r0, r2
	bne _0805C0A8
	b _0805C2C6
_0805C0A8:
	adds r0, r5, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #8
	bl sub_0805B754
	adds r1, r5, #0
	adds r1, #0x30
	ldrb r0, [r1]
	adds r0, #4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #7
	bls _0805C0CE
	b _0805C2C6
_0805C0CE:
	lsls r0, r0, #2
	ldr r1, _0805C0D8 @ =_0805C0DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805C0D8: .4byte _0805C0DC
_0805C0DC: @ jump table
	.4byte _0805C160 @ case 0
	.4byte _0805C160 @ case 1
	.4byte _0805C160 @ case 2
	.4byte _0805C14C @ case 3
	.4byte _0805C2C6 @ case 4
	.4byte _0805C14C @ case 5
	.4byte _0805C0FC @ case 6
	.4byte _0805C0FC @ case 7
_0805C0FC:
	movs r0, #0
	strh r0, [r5, #0x38]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	strh r0, [r5, #0x3a]
	movs r0, #3
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #4
	strb r0, [r1]
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	movs r1, #0x80
	lsls r1, r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0805C1B8
	movs r0, #0x1e
	b _0805C1BA
_0805C14C:
	movs r0, #0
	strh r0, [r5, #0x38]
	strh r0, [r5, #0x3a]
	movs r0, #2
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #0xff
	strb r0, [r1]
	b _0805C2C6
_0805C160:
	movs r0, #0
	strh r0, [r5, #0x38]
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #0
	bge _0805C16E
	rsbs r1, r1, #0
_0805C16E:
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	strh r0, [r5, #0x3a]
	movs r0, #3
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	movs r1, #0x80
	lsls r1, r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0805C1B8
	movs r0, #0x1e
	b _0805C1BA
_0805C1B8:
	movs r0, #0x1a
_0805C1BA:
	strh r0, [r5, #0x3c]
	movs r0, #1
	strh r0, [r5, #0x3e]
	b _0805C2C6
_0805C1C2:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0805BA70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805C20E
	ldrb r0, [r7]
	ldrb r1, [r7, #2]
	bl sub_0804BE50
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x1e
	bl sub_08143B70
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0805C1FE
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805C206
	b _0805C212
_0805C1FE:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805C212
_0805C206:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _0805C212
_0805C20E:
	movs r0, #1
	b _0805C214
_0805C212:
	movs r0, #0
_0805C214:
	adds r2, r0, #0
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #2
	bne _0805C280
	mov r1, r8
	ldrb r0, [r1, #1]
	cmp r0, #1
	bhi _0805C258
	ldrb r0, [r7, #1]
	mov r1, sp
	ldrb r1, [r1, #1]
	subs r0, r0, r1
	cmp r0, #0
	bge _0805C234
	rsbs r0, r0, #0
_0805C234:
	cmp r0, #1
	bgt _0805C258
	cmp r2, #1
	beq _0805C258
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805C258
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805C280
	mov r1, sb
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _0805C280
_0805C258:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	strh r1, [r0]
	movs r0, #0xa
	strh r0, [r5, #0x3a]
	strh r1, [r5, #0x38]
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #3
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x25
	movs r0, #6
	strb r0, [r2]
	movs r0, #0x24
	strh r0, [r5, #0x3c]
	movs r0, #2
	strh r0, [r5, #0x3e]
	b _0805C2C4
_0805C280:
	ldr r0, [r5, #0x34]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0x34]
	adds r0, r5, #0
	adds r0, #0x4c
	ldrb r2, [r0]
	adds r1, r5, #0
	adds r1, #0x4a
	adds r3, r0, #0
	cmp r2, #2
	beq _0805C2B0
	cmp r2, #4
	beq _0805C2B0
	ldrb r0, [r1]
	strb r0, [r3]
	ldrb r0, [r1]
	cmp r0, #2
	beq _0805C2B0
	cmp r0, #4
	beq _0805C2B0
	movs r0, #2
	strb r0, [r1]
_0805C2B0:
	ldrb r0, [r3]
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0x18
	bl sub_0805B754
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #2
_0805C2C2:
	strb r0, [r1]
_0805C2C4:
	adds r6, r1, #0
_0805C2C6:
	ldr r1, _0805C2E4 @ =gUnk_0860EF38
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_0805C2D6:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805C2E4: .4byte gUnk_0860EF38

	thumb_func_start sub_0805C2E8
sub_0805C2E8: @ 0x0805C2E8
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	movs r4, #0
	adds r1, r2, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0805C304
	movs r0, #8
	strh r0, [r1]
_0805C304:
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	ldrh r0, [r2, #0x12]
	subs r0, r0, r1
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	adds r0, #0x30
	movs r5, #3
	strb r5, [r0]
	ldrh r1, [r2, #0x12]
	ldrh r0, [r2, #0x1a]
	subs r1, r1, r0
	cmp r1, #0
	bge _0805C324
	rsbs r1, r1, #0
_0805C324:
	cmp r1, #0x10
	ble _0805C33C
	ldr r1, [r2, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805C390
	movs r0, #0x60
	orrs r1, r0
	str r1, [r2, #0x34]
	movs r0, #2
	b _0805C404
_0805C33C:
	ldr r1, [r2, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805C350
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0x34]
	movs r4, #2
_0805C350:
	ldrh r3, [r2, #0x1a]
	ldrh r0, [r2, #0x12]
	cmp r0, r3
	bls _0805C366
	adds r0, r2, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805C394
_0805C366:
	strh r3, [r2, #0x12]
	ldr r0, [r2, #0x34]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x34]
	movs r0, #0
	strh r0, [r2, #0x38]
	movs r0, #0xa
	strh r0, [r2, #0x3a]
	adds r0, r2, #0
	adds r0, #0x24
	strb r5, [r0]
	adds r1, r2, #0
	adds r1, #0x25
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x28
	strh r0, [r2, #0x3c]
	movs r0, #6
	strh r0, [r2, #0x3e]
_0805C390:
	movs r0, #0
	b _0805C404
_0805C394:
	adds r5, r2, #0
	adds r5, #0x10
	adds r6, r2, #0
	adds r6, #0x18
	movs r3, #0xff
	ldrh r1, [r2, #0x10]
	ldrh r0, [r2, #0x18]
	cmp r1, r0
	bhs _0805C3AA
	movs r3, #0
	b _0805C3C4
_0805C3AA:
	cmp r1, r0
	bls _0805C3B2
	movs r3, #2
	b _0805C3C4
_0805C3B2:
	ldrh r1, [r5, #4]
	ldrh r0, [r6, #4]
	cmp r1, r0
	bhs _0805C3BE
	movs r3, #1
	b _0805C3C4
_0805C3BE:
	cmp r1, r0
	bls _0805C3C4
	movs r3, #3
_0805C3C4:
	adds r0, r3, #0
	cmp r0, #0xff
	beq _0805C3DA
	adds r1, r2, #0
	adds r1, #0x48
	ldrb r3, [r1]
	cmp r0, r3
	beq _0805C3DA
	strb r0, [r1]
	movs r0, #1
	orrs r4, r0
_0805C3DA:
	adds r1, r4, #0
	adds r3, r2, #0
	adds r3, #0x6a
	ldrh r0, [r3]
	cmp r0, #0x28
	beq _0805C3EE
	movs r0, #0x28
	strh r0, [r3]
	movs r1, #2
	orrs r1, r4
_0805C3EE:
	adds r4, r1, #0
	adds r2, #0x4a
	ldrb r0, [r2]
	cmp r0, #3
	beq _0805C400
	movs r0, #3
	strb r0, [r2]
	movs r1, #4
	orrs r1, r4
_0805C400:
	adds r4, r1, #0
	adds r0, r4, #0
_0805C404:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805C40C
sub_0805C40C: @ 0x0805C40C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_08012FA4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	beq _0805C426
	cmp r4, #2
	beq _0805C426
	movs r0, #0
	b _0805C470
_0805C426:
	ldr r0, [r5, #0x34]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x34]
	movs r6, #8
	ands r0, r6
	cmp r0, #0
	beq _0805C43E
	ldrh r0, [r5, #0x1a]
	adds r0, #0x30
	strh r0, [r5, #0x1a]
_0805C43E:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0805BA70
	ldr r0, [r5, #0x34]
	orrs r0, r6
	str r0, [r5, #0x34]
	adds r0, r5, #0
	adds r0, #0x4a
	strb r4, [r0]
	adds r4, r5, #0
	adds r4, #0x24
	movs r0, #7
	strb r0, [r4]
	ldr r0, [r5, #8]
	bl sub_08012F20
	ldr r1, _0805C478 @ =gUnk_0860EF38
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_0805C470:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805C478: .4byte gUnk_0860EF38

	thumb_func_start sub_0805C47C
sub_0805C47C: @ 0x0805C47C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r3, r5, #0
	adds r3, #0x10
	adds r4, r5, #0
	adds r4, #0x18
	movs r2, #0xff
	ldrh r1, [r5, #0x10]
	ldrh r0, [r5, #0x18]
	cmp r1, r0
	bhs _0805C498
	movs r2, #0
	b _0805C4B2
_0805C498:
	cmp r1, r0
	bls _0805C4A0
	movs r2, #2
	b _0805C4B2
_0805C4A0:
	ldrh r1, [r3, #4]
	ldrh r0, [r4, #4]
	cmp r1, r0
	bhs _0805C4AC
	movs r2, #1
	b _0805C4B2
_0805C4AC:
	cmp r1, r0
	bls _0805C4B2
	movs r2, #3
_0805C4B2:
	adds r0, r2, #0
	cmp r0, #0xff
	beq _0805C4C8
	adds r1, r5, #0
	adds r1, #0x48
	ldrb r2, [r1]
	cmp r0, r2
	beq _0805C4C8
	strb r0, [r1]
	movs r0, #1
	orrs r6, r0
_0805C4C8:
	adds r1, r6, #0
	adds r2, r5, #0
	adds r2, #0x6a
	ldrh r0, [r2]
	cmp r0, #0x26
	beq _0805C4DC
	movs r0, #0x26
	strh r0, [r2]
	movs r1, #2
	orrs r1, r6
_0805C4DC:
	adds r6, r1, #0
	ldr r1, [r5, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805C4F2
	movs r0, #0x60
	orrs r1, r0
	str r1, [r5, #0x34]
	movs r0, #2
	orrs r6, r0
_0805C4F2:
	adds r0, r5, #0
	adds r0, #0x44
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrh r0, [r5, #0x12]
	subs r4, r1, r0
	cmp r4, #0
	bge _0805C506
	movs r4, #0xb4
	b _0805C520
_0805C506:
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r4, r1
	blt _0805C516
	movs r4, #0
	b _0805C520
_0805C516:
	movs r0, #0xb4
	muls r0, r4, r0
	bl __divsi3
	adds r4, r0, #0
_0805C520:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_08007F18
	lsls r0, r0, #0x10
	asrs r0, r0, #0xd
	cmp r0, #0xff
	bgt _0805C534
	movs r0, #0x80
	lsls r0, r0, #1
_0805C534:
	adds r1, r0, #0
	cmp r0, #0
	bge _0805C53C
	adds r1, #0xff
_0805C53C:
	asrs r0, r1, #8
	ldrh r1, [r5, #0x12]
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	cmp r4, #0xb3
	ble _0805C560
	ldr r0, [r5, #0x34]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x34]
	ldr r0, [r5, #8]
	bl sub_08012EE4
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #0xb
	strb r0, [r1]
_0805C560:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0805C568
sub_0805C568: @ 0x0805C568
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r5, #0
	adds r3, r7, #0
	adds r3, #0x10
	adds r4, r7, #0
	adds r4, #0x18
	movs r2, #0xff
	ldrh r1, [r7, #0x10]
	ldrh r0, [r7, #0x18]
	cmp r1, r0
	bhs _0805C588
	movs r2, #0
	b _0805C5A2
_0805C588:
	cmp r1, r0
	bls _0805C590
	movs r2, #2
	b _0805C5A2
_0805C590:
	ldrh r1, [r3, #4]
	ldrh r0, [r4, #4]
	cmp r1, r0
	bhs _0805C59C
	movs r2, #1
	b _0805C5A2
_0805C59C:
	cmp r1, r0
	bls _0805C5A2
	movs r2, #3
_0805C5A2:
	adds r0, r2, #0
	cmp r0, #0xff
	beq _0805C5B8
	adds r1, r7, #0
	adds r1, #0x48
	ldrb r2, [r1]
	cmp r0, r2
	beq _0805C5B8
	strb r0, [r1]
	movs r0, #1
	orrs r5, r0
_0805C5B8:
	ldr r1, [r7, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805C5CC
	movs r0, #0x60
	orrs r1, r0
	str r1, [r7, #0x34]
	movs r0, #2
	orrs r5, r0
_0805C5CC:
	ldrh r0, [r7, #0x12]
	adds r1, r7, #0
	adds r1, #0x44
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r4, r0, r1
	cmp r4, #0
	bge _0805C5E0
	movs r4, #0xb4
	b _0805C5FA
_0805C5E0:
	adds r0, r7, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r4, r1
	blt _0805C5F0
	movs r4, #0
	b _0805C5FA
_0805C5F0:
	movs r0, #0xb4
	muls r0, r4, r0
	bl __divsi3
	adds r4, r0, #0
_0805C5FA:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_08007F18
	lsls r0, r0, #0x10
	asrs r2, r0, #0xd
	cmp r2, #0xff
	bgt _0805C60E
	movs r2, #0x80
	lsls r2, r2, #1
_0805C60E:
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r2, r0
	ble _0805C618
	adds r2, r0, #0
_0805C618:
	adds r0, r2, #0
	cmp r2, #0
	bge _0805C620
	adds r0, #0xff
_0805C620:
	asrs r2, r0, #8
	adds r1, r7, #0
	adds r1, #0x30
	movs r0, #3
	strb r0, [r1]
	cmp r4, #0xb3
	bgt _0805C63C
	adds r0, r7, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805C6AC
_0805C63C:
	ldr r0, [r7, #0x34]
	movs r1, #0x61
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x34]
	ldr r0, [r7, #8]
	bl sub_08012F20
	ldr r0, [r7, #8]
	bl sub_08012EE4
	movs r0, #0x24
	adds r0, r0, r7
	mov r8, r0
	movs r0, #8
	mov r1, r8
	strb r0, [r1]
	ldr r5, [r7]
	ldr r6, [r7, #4]
	ldrh r0, [r7, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r7, #0x14]
	bl sub_08058D5C
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0804C3F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xc1
	rsbs r1, r1, #0
	ands r0, r1
	bl sub_08058D78
	strh r0, [r7, #0x1a]
	ldr r1, _0805C6A8 @ =gUnk_0860EF38
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	b _0805C6B4
	.align 2, 0
_0805C6A8: .4byte gUnk_0860EF38
_0805C6AC:
	ldrh r0, [r7, #0x12]
	subs r0, r0, r2
	strh r0, [r7, #0x12]
	adds r0, r5, #0
_0805C6B4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805C6C0
sub_0805C6C0: @ 0x0805C6C0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r3, r5, #0
	adds r3, #0x10
	adds r4, r5, #0
	adds r4, #0x18
	movs r2, #0xff
	ldrh r1, [r5, #0x10]
	ldrh r0, [r5, #0x18]
	cmp r1, r0
	bhs _0805C6DC
	movs r2, #0
	b _0805C6F6
_0805C6DC:
	cmp r1, r0
	bls _0805C6E4
	movs r2, #2
	b _0805C6F6
_0805C6E4:
	ldrh r1, [r3, #4]
	ldrh r0, [r4, #4]
	cmp r1, r0
	bhs _0805C6F0
	movs r2, #1
	b _0805C6F6
_0805C6F0:
	cmp r1, r0
	bls _0805C6F6
	movs r2, #3
_0805C6F6:
	adds r0, r2, #0
	cmp r0, #0xff
	beq _0805C70C
	adds r1, r5, #0
	adds r1, #0x48
	ldrb r2, [r1]
	cmp r0, r2
	beq _0805C70C
	strb r0, [r1]
	movs r0, #1
	orrs r6, r0
_0805C70C:
	adds r4, r6, #0
	adds r1, r5, #0
	adds r1, #0x30
	movs r3, #0
	movs r0, #0xfe
	strb r0, [r1]
	adds r6, r5, #0
	adds r6, #0x40
	movs r0, #0
	ldrsh r1, [r6, r0]
	cmp r1, #1
	beq _0805C770
	cmp r1, #1
	bgt _0805C72E
	cmp r1, #0
	beq _0805C738
	b _0805C8E8
_0805C72E:
	cmp r1, #2
	beq _0805C7C6
	cmp r1, #3
	beq _0805C7F0
	b _0805C8E8
_0805C738:
	adds r1, r4, #0
	adds r2, r5, #0
	adds r2, #0x6a
	ldrh r0, [r2]
	cmp r0, #0x24
	beq _0805C74C
	movs r0, #0x24
	strh r0, [r2]
	movs r1, #2
	orrs r1, r4
_0805C74C:
	adds r4, r1, #0
	adds r2, r5, #0
	adds r2, #0x4a
	ldrb r0, [r2]
	cmp r0, #3
	beq _0805C760
	movs r0, #3
	strb r0, [r2]
	movs r1, #4
	orrs r1, r4
_0805C760:
	adds r4, r1, #0
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #8
	strh r1, [r0]
	movs r0, #1
	strh r0, [r6]
	b _0805C8E8
_0805C770:
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	ldrh r2, [r5, #0x12]
	adds r0, r0, r2
	strh r0, [r5, #0x12]
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805C78A
	b _0805C8E8
_0805C78A:
	strh r3, [r1]
	ldr r0, [r5, #0x34]
	movs r1, #0x60
	orrs r0, r1
	str r0, [r5, #0x34]
	adds r1, r4, #0
	adds r2, r5, #0
	adds r2, #0x6a
	ldrh r0, [r2]
	cmp r0, #0x26
	beq _0805C7A8
	movs r0, #0x26
	strh r0, [r2]
	movs r1, #2
	orrs r1, r4
_0805C7A8:
	adds r4, r1, #0
	movs r3, #2
	adds r2, r4, #0
	adds r1, r5, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	cmp r0, #2
	beq _0805C7BE
	strb r3, [r1]
	movs r2, #4
	orrs r2, r4
_0805C7BE:
	adds r4, r3, #0
	orrs r4, r2
	strh r3, [r6]
	b _0805C8E8
_0805C7C6:
	adds r2, r5, #0
	adds r2, #0x42
	ldrh r0, [r2]
	ands r1, r0
	cmp r1, #0
	beq _0805C7D8
	ldrh r0, [r5, #0x12]
	adds r0, #2
	strh r0, [r5, #0x12]
_0805C7D8:
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bgt _0805C7E8
	b _0805C8E8
_0805C7E8:
	strh r3, [r2]
	movs r0, #3
	strh r0, [r6]
	b _0805C8E8
_0805C7F0:
	ldr r0, [r5, #8]
	bl sub_08012FA4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _0805C802
	cmp r0, #4
	bne _0805C8E8
_0805C802:
	adds r1, r5, #0
	adds r1, #0x4a
	movs r7, #0
	strb r0, [r1]
	ldr r0, [r5, #0x34]
	movs r1, #0x61
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x34]
	ldr r0, [r5, #8]
	bl sub_08012F20
	ldr r0, [r5, #8]
	bl sub_08012EE4
	movs r6, #0xa
	strh r6, [r5, #0x3a]
	strh r7, [r5, #0x38]
	ldrh r0, [r5, #0x18]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r5, #0x1c]
	bl sub_08058D5C
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08028728
	ldrb r1, [r0, #1]
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r0, r1
	adds r0, #3
	bl sub_08058D78
	strh r0, [r5, #0x1a]
	ldrh r4, [r5, #0x1a]
	ldrh r0, [r5, #0x12]
	subs r3, r4, r0
	cmp r3, #0x50
	ble _0805C8AA
	ldrh r1, [r5, #0x18]
	ldrh r0, [r5, #0x10]
	subs r2, r1, r0
	cmp r2, #0
	bge _0805C86A
	rsbs r2, r2, #0
_0805C86A:
	ldrh r1, [r5, #0x1c]
	ldrh r0, [r5, #0x14]
	subs r1, r1, r0
	cmp r1, #0
	bge _0805C876
	rsbs r1, r1, #0
_0805C876:
	adds r1, r2, r1
	adds r0, r3, #0
	cmp r0, #0
	bge _0805C880
	rsbs r0, r0, #0
_0805C880:
	cmp r1, r0
	bgt _0805C8AA
	adds r0, r5, #0
	adds r0, #0x44
	strh r4, [r0]
	ldrh r1, [r5, #0x12]
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	cmp r1, #0
	bge _0805C898
	rsbs r1, r1, #0
_0805C898:
	adds r0, r5, #0
	adds r0, #0x42
	strh r1, [r0]
	strh r6, [r5, #0x3a]
	strh r7, [r5, #0x38]
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #9
	b _0805C8CE
_0805C8AA:
	ldr r0, [r5, #0x34]
	movs r4, #8
	ands r0, r4
	cmp r0, #0
	beq _0805C8BA
	ldrh r0, [r5, #0x1a]
	adds r0, #0x30
	strh r0, [r5, #0x1a]
_0805C8BA:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0805BA70
	ldr r0, [r5, #0x34]
	orrs r0, r4
	str r0, [r5, #0x34]
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #7
_0805C8CE:
	strb r0, [r1]
	adds r0, r1, #0
	ldr r1, _0805C8E4 @ =gUnk_0860EF38
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	b _0805C8EA
	.align 2, 0
_0805C8E4: .4byte gUnk_0860EF38
_0805C8E8:
	adds r0, r4, #0
_0805C8EA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805C8F0
sub_0805C8F0: @ 0x0805C8F0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r6, #0
	adds r3, r5, #0
	adds r3, #0x10
	adds r4, r5, #0
	adds r4, #0x18
	movs r2, #0xff
	ldrh r1, [r5, #0x10]
	ldrh r0, [r5, #0x18]
	cmp r1, r0
	bhs _0805C90E
	movs r2, #0
	b _0805C928
_0805C90E:
	cmp r1, r0
	bls _0805C916
	movs r2, #2
	b _0805C928
_0805C916:
	ldrh r1, [r3, #4]
	ldrh r0, [r4, #4]
	cmp r1, r0
	bhs _0805C922
	movs r2, #1
	b _0805C928
_0805C922:
	cmp r1, r0
	bls _0805C928
	movs r2, #3
_0805C928:
	adds r0, r2, #0
	adds r3, r5, #0
	adds r3, #0x48
	cmp r0, #0xff
	beq _0805C93E
	ldrb r1, [r3]
	cmp r0, r1
	beq _0805C93E
	strb r0, [r3]
	movs r0, #1
	orrs r6, r0
_0805C93E:
	adds r1, r6, #0
	adds r2, r5, #0
	adds r2, #0x6a
	ldrh r0, [r2]
	cmp r0, #4
	beq _0805C952
	movs r0, #4
	strh r0, [r2]
	movs r1, #2
	orrs r1, r6
_0805C952:
	adds r6, r1, #0
	ldrb r1, [r3]
	adds r0, r5, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r3, r5, #0
	adds r3, #0x10
	cmp r1, #1
	beq _0805C98A
	cmp r1, #1
	bgt _0805C970
	cmp r1, #0
	beq _0805C97A
	b _0805C996
_0805C970:
	cmp r1, #2
	beq _0805C982
	cmp r1, #3
	beq _0805C990
	b _0805C996
_0805C97A:
	ldrh r0, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	b _0805C996
_0805C982:
	ldrh r0, [r5, #0x10]
	subs r0, r0, r2
	strh r0, [r5, #0x10]
	b _0805C996
_0805C98A:
	ldrh r0, [r3, #4]
	adds r0, r0, r2
	b _0805C994
_0805C990:
	ldrh r0, [r3, #4]
	subs r0, r0, r2
_0805C994:
	strh r0, [r3, #4]
_0805C996:
	adds r0, r3, #0
	mov r1, sp
	bl sub_08058D80
	add r4, sp, #4
	mov r0, sp
	adds r1, r4, #0
	bl sub_08058D94
	ldrh r1, [r5, #0x10]
	ldrh r0, [r4]
	subs r2, r1, r0
	cmp r2, #0
	bge _0805C9B4
	rsbs r2, r2, #0
_0805C9B4:
	ldrh r1, [r5, #0x14]
	ldrh r0, [r4, #4]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805C9C0
	rsbs r0, r0, #0
_0805C9C0:
	adds r0, r2, r0
	cmp r0, #7
	bgt _0805C9F8
	adds r2, r6, #0
	adds r0, r5, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #4
	bls _0805C9DC
	movs r0, #2
	strb r0, [r4]
	movs r2, #4
	orrs r2, r6
_0805C9DC:
	ldrb r0, [r4]
	cmp r0, #1
	bne _0805C9EA
	movs r0, #2
	strb r0, [r4]
	movs r0, #4
	b _0805C9F2
_0805C9EA:
	cmp r0, #3
	bne _0805C9F4
	movs r0, #4
	strb r0, [r4]
_0805C9F2:
	orrs r2, r0
_0805C9F4:
	adds r6, r2, #0
	b _0805CA1E
_0805C9F8:
	adds r3, r6, #0
	adds r0, r5, #0
	adds r0, #0x4a
	ldrb r2, [r0]
	adds r4, r0, #0
	cmp r2, #2
	bne _0805CA10
	movs r0, #3
	strb r0, [r4]
	movs r3, #4
	orrs r3, r6
	b _0805CA1C
_0805CA10:
	cmp r2, #4
	bne _0805CA1C
	movs r0, #1
	strb r0, [r4]
	adds r3, r6, #0
	orrs r3, r2
_0805CA1C:
	adds r6, r3, #0
_0805CA1E:
	ldrh r0, [r5, #0x10]
	ldrh r1, [r5, #0x18]
	cmp r0, r1
	bne _0805CA3C
	ldrh r0, [r5, #0x14]
	ldrh r3, [r5, #0x1c]
	cmp r0, r3
	bne _0805CA3C
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r6, r0
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x4c
	strb r1, [r0]
_0805CA3C:
	adds r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805CA48
sub_0805CA48: @ 0x0805CA48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	movs r5, #0
	adds r3, r7, #0
	adds r3, #0x10
	adds r4, r7, #0
	adds r4, #0x18
	movs r2, #0xff
	ldrh r1, [r7, #0x10]
	ldrh r0, [r7, #0x18]
	cmp r1, r0
	bhs _0805CA6A
	movs r2, #0
	b _0805CA84
_0805CA6A:
	cmp r1, r0
	bls _0805CA72
	movs r2, #2
	b _0805CA84
_0805CA72:
	ldrh r1, [r3, #4]
	ldrh r0, [r4, #4]
	cmp r1, r0
	bhs _0805CA7E
	movs r2, #1
	b _0805CA84
_0805CA7E:
	cmp r1, r0
	bls _0805CA84
	movs r2, #3
_0805CA84:
	adds r0, r2, #0
	adds r3, r7, #0
	adds r3, #0x48
	cmp r0, #0xff
	beq _0805CA9A
	ldrb r1, [r3]
	cmp r0, r1
	beq _0805CA9A
	strb r0, [r3]
	movs r0, #1
	orrs r5, r0
_0805CA9A:
	mov r8, r5
	mov r1, r8
	adds r2, r7, #0
	adds r2, #0x6a
	ldrh r0, [r2]
	cmp r0, #0x26
	beq _0805CAB2
	movs r0, #0x26
	strh r0, [r2]
	movs r1, #2
	mov r0, r8
	orrs r1, r0
_0805CAB2:
	mov r8, r1
	ldrb r1, [r3]
	adds r0, r7, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r3, r7, #0
	adds r3, #0x10
	cmp r1, #1
	beq _0805CAEA
	cmp r1, #1
	bgt _0805CAD0
	cmp r1, #0
	beq _0805CADA
	b _0805CAF6
_0805CAD0:
	cmp r1, #2
	beq _0805CAE2
	cmp r1, #3
	beq _0805CAF0
	b _0805CAF6
_0805CADA:
	ldrh r0, [r7, #0x10]
	adds r0, r0, r2
	strh r0, [r7, #0x10]
	b _0805CAF6
_0805CAE2:
	ldrh r0, [r7, #0x10]
	subs r0, r0, r2
	strh r0, [r7, #0x10]
	b _0805CAF6
_0805CAEA:
	ldrh r0, [r3, #4]
	adds r0, r0, r2
	b _0805CAF4
_0805CAF0:
	ldrh r0, [r3, #4]
	subs r0, r0, r2
_0805CAF4:
	strh r0, [r3, #4]
_0805CAF6:
	adds r0, r3, #0
	mov r1, sp
	bl sub_08058D80
	add r4, sp, #4
	mov r0, sp
	adds r1, r4, #0
	bl sub_08058D94
	ldrh r1, [r7, #0x10]
	ldrh r0, [r4]
	subs r2, r1, r0
	cmp r2, #0
	bge _0805CB14
	rsbs r2, r2, #0
_0805CB14:
	ldrh r1, [r7, #0x14]
	ldrh r0, [r4, #4]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805CB20
	rsbs r0, r0, #0
_0805CB20:
	adds r1, r2, r0
	cmp r1, #7
	bgt _0805CB58
	mov r1, r8
	adds r2, r7, #0
	adds r2, #0x4a
	ldrb r0, [r2]
	cmp r0, #4
	bls _0805CB3C
	movs r0, #2
	strb r0, [r2]
	movs r1, #4
	mov r0, r8
	orrs r1, r0
_0805CB3C:
	ldrb r0, [r2]
	cmp r0, #1
	bne _0805CB4A
	movs r0, #2
	strb r0, [r2]
	movs r0, #4
	b _0805CB52
_0805CB4A:
	cmp r0, #3
	bne _0805CB54
	movs r0, #4
	strb r0, [r2]
_0805CB52:
	orrs r1, r0
_0805CB54:
	mov r8, r1
	b _0805CB7C
_0805CB58:
	mov r0, r8
	adds r2, r7, #0
	adds r2, #0x4a
	ldrb r1, [r2]
	cmp r1, #2
	bne _0805CB6E
	movs r0, #3
	strb r0, [r2]
	movs r0, #4
	mov r1, r8
	b _0805CB78
_0805CB6E:
	cmp r1, #4
	bne _0805CB7A
	movs r0, #1
	strb r0, [r2]
	mov r0, r8
_0805CB78:
	orrs r0, r1
_0805CB7A:
	mov r8, r0
_0805CB7C:
	ldr r2, [r7, #0x28]
	cmp r2, #0
	beq _0805CBAE
	ldrh r1, [r7, #0x2e]
	adds r1, #1
	strh r1, [r7, #0x2e]
	movs r3, #0x2e
	ldrsh r0, [r7, r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r7, #0x12]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x2c
	ldrsh r0, [r7, r3]
	cmp r1, r0
	blt _0805CBAE
	ldrh r0, [r7, #0x1a]
	strh r0, [r7, #0x12]
	adds r0, r2, #0
	bl BattleFree
	movs r0, #0
	str r0, [r7, #0x28]
_0805CBAE:
	ldrh r0, [r7, #0x10]
	ldrh r1, [r7, #0x18]
	cmp r0, r1
	bne _0805CC54
	ldrh r0, [r7, #0x14]
	ldrh r3, [r7, #0x1c]
	cmp r0, r3
	bne _0805CC54
	ldrh r0, [r7, #0x20]
	adds r0, #1
	ldrh r1, [r7, #0x22]
	cmp r0, r1
	blt _0805CC4A
	ldr r5, [r7]
	ldr r6, [r7, #4]
	ldrh r0, [r7, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r7, #0x14]
	bl sub_08058D5C
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0804C3F8
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r1, #0
	bl sub_08058D78
	strh r0, [r7, #0x1a]
	ldrh r1, [r7, #0x1a]
	ldrh r0, [r7, #0x12]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805CC0C
	rsbs r0, r0, #0
_0805CC0C:
	cmp r0, #0x50
	ble _0805CC40
	adds r0, r1, #3
	strh r0, [r7, #0x1a]
	adds r1, r7, #0
	adds r1, #0x44
	strh r0, [r1]
	ldrh r2, [r7, #0x12]
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r2, r2, r0
	cmp r2, #0
	bge _0805CC28
	rsbs r2, r2, #0
_0805CC28:
	adds r0, r7, #0
	adds r0, #0x42
	strh r2, [r0]
	movs r1, #0xa
	movs r0, #0xa
	strh r0, [r7, #0x3a]
	movs r0, #0
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x24
	strb r1, [r0]
	b _0805CC54
_0805CC40:
	adds r1, r7, #0
	adds r1, #0x24
	movs r0, #8
	strb r0, [r1]
	b _0805CC54
_0805CC4A:
	movs r0, #0x80
	lsls r0, r0, #8
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_0805CC54:
	mov r0, r8
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805CC64
sub_0805CC64: @ 0x0805CC64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r6, #0
	adds r3, r5, #0
	adds r3, #0x10
	adds r4, r5, #0
	adds r4, #0x18
	movs r2, #0xff
	ldrh r1, [r5, #0x10]
	ldrh r0, [r5, #0x18]
	cmp r1, r0
	bhs _0805CC84
	movs r2, #0
	b _0805CC9E
_0805CC84:
	cmp r1, r0
	bls _0805CC8C
	movs r2, #2
	b _0805CC9E
_0805CC8C:
	ldrh r1, [r3, #4]
	ldrh r0, [r4, #4]
	cmp r1, r0
	bhs _0805CC98
	movs r2, #1
	b _0805CC9E
_0805CC98:
	cmp r1, r0
	bls _0805CC9E
	movs r2, #3
_0805CC9E:
	adds r0, r2, #0
	adds r7, r5, #0
	adds r7, #0x48
	cmp r0, #0xff
	beq _0805CCB4
	ldrb r1, [r7]
	cmp r0, r1
	beq _0805CCB4
	strb r0, [r7]
	movs r0, #1
	orrs r6, r0
_0805CCB4:
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #1
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _0805CD2C
	movs r3, #4
	mov ip, r3
	adds r1, r6, #0
	adds r2, r5, #0
	adds r2, #0x6a
	ldrh r0, [r2]
	cmp r0, #4
	beq _0805CD02
	mov r0, ip
	strh r0, [r2]
	movs r1, #2
	orrs r1, r6
_0805CD02:
	adds r6, r1, #0
	adds r3, r6, #0
	adds r0, r5, #0
	adds r0, #0x4a
	ldrb r2, [r0]
	adds r4, r0, #0
	cmp r2, #2
	bne _0805CD1C
	movs r0, #3
	strb r0, [r4]
	mov r3, ip
	orrs r3, r6
	b _0805CD28
_0805CD1C:
	cmp r2, #4
	bne _0805CD28
	movs r0, #1
	strb r0, [r4]
	adds r3, r6, #0
	orrs r3, r2
_0805CD28:
	adds r6, r3, #0
	b _0805CD68
_0805CD2C:
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	movs r0, #0xb
	muls r0, r1, r0
	movs r3, #0x2c
	ldrsh r1, [r5, r3]
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, r6, #0
	adds r2, r5, #0
	adds r2, #0x6a
	ldrh r0, [r2]
	cmp r0, #0x18
	beq _0805CD54
	movs r0, #0x18
	strh r0, [r2]
	movs r1, #2
	orrs r1, r6
_0805CD54:
	adds r6, r1, #0
	adds r0, r5, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, r3
	beq _0805CD68
	strb r3, [r4]
	movs r0, #4
	orrs r6, r0
_0805CD68:
	ldr r0, [r5, #0x34]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805CD96
	ldrh r0, [r5, #0x2e]
	adds r0, #1
	strh r0, [r5, #0x2e]
	ldrb r0, [r7]
	adds r1, r5, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r2, [r1, r3]
	subs r1, #0x36
	cmp r0, #1
	beq _0805CD90
	cmp r0, #1
	ble _0805CDB0
	b _0805CDB6
_0805CD90:
	ldrh r0, [r1, #4]
	adds r0, r0, r2
	b _0805CDDA
_0805CD96:
	ldrh r0, [r5, #0x2e]
	adds r0, #1
	strh r0, [r5, #0x2e]
	ldrb r0, [r7]
	adds r1, r5, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r2, [r1, r3]
	subs r1, #0x36
	cmp r0, #1
	beq _0805CDD0
	cmp r0, #1
	bgt _0805CDB6
_0805CDB0:
	cmp r0, #0
	beq _0805CDC0
	b _0805CDDC
_0805CDB6:
	cmp r0, #2
	beq _0805CDC8
	cmp r0, #3
	beq _0805CDD6
	b _0805CDDC
_0805CDC0:
	ldrh r0, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	b _0805CDDC
_0805CDC8:
	ldrh r0, [r5, #0x10]
	subs r0, r0, r2
	strh r0, [r5, #0x10]
	b _0805CDDC
_0805CDD0:
	ldrh r0, [r1, #4]
	adds r0, r0, r2
	b _0805CDDA
_0805CDD6:
	ldrh r0, [r1, #4]
	subs r0, r0, r2
_0805CDDA:
	strh r0, [r1, #4]
_0805CDDC:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, [r5, #0x28]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r5, #0x12]
	movs r3, #0x2e
	ldrsh r1, [r5, r3]
	movs r3, #0x2c
	ldrsh r0, [r5, r3]
	cmp r1, r0
	blt _0805CED6
	ldrh r0, [r5, #0x1a]
	strh r0, [r5, #0x12]
	adds r0, r2, #0
	bl BattleFree
	movs r0, #0
	str r0, [r5, #0x28]
	adds r1, r6, #0
	ldrb r0, [r4]
	cmp r0, #4
	bls _0805CE14
	movs r0, #2
	strb r0, [r4]
	movs r1, #4
	orrs r1, r6
_0805CE14:
	ldrb r0, [r4]
	cmp r0, #1
	bne _0805CE22
	movs r0, #2
	strb r0, [r4]
	movs r0, #4
	b _0805CE2A
_0805CE22:
	cmp r0, #3
	bne _0805CE2C
	movs r0, #4
	strb r0, [r4]
_0805CE2A:
	orrs r1, r0
_0805CE2C:
	adds r6, r1, #0
	ldr r1, [r5, #0x34]
	lsrs r2, r1, #8
	movs r0, #1
	ands r2, r0
	movs r3, #0
	strh r3, [r5, #0x3a]
	ldr r0, _0805CE68 @ =0xFFFFFEFF
	ands r1, r0
	str r1, [r5, #0x34]
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x4c
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x30
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0805CE56
	rsbs r0, r0, #0
_0805CE56:
	cmp r0, #1
	bgt _0805CE5E
	cmp r2, #0
	beq _0805CEA6
_0805CE5E:
	strh r3, [r5, #0x38]
	cmp r2, #0
	beq _0805CE6C
	movs r0, #0xa
	b _0805CE7E
	.align 2, 0
_0805CE68: .4byte 0xFFFFFEFF
_0805CE6C:
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #0
	bge _0805CE78
	rsbs r1, r1, #0
_0805CE78:
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
_0805CE7E:
	strh r0, [r5, #0x3a]
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, #1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0805CE9C
	movs r0, #0x1e
	b _0805CE9E
_0805CE9C:
	movs r0, #0x1a
_0805CE9E:
	strh r0, [r5, #0x3c]
	movs r0, #1
	strh r0, [r5, #0x3e]
	b _0805CED6
_0805CEA6:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _0805CED0
	strh r2, [r5, #0x38]
	movs r0, #0xa
	strh r0, [r5, #0x3a]
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x1e
	strh r0, [r5, #0x3c]
	movs r0, #2
	strh r0, [r5, #0x3e]
	b _0805CED6
_0805CED0:
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r6, r0
_0805CED6:
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805CEE4
sub_0805CEE4: @ 0x0805CEE4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl sub_08139B74
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _0805CEFA
	ldrh r0, [r4, #0x3a]
	strh r0, [r4, #0x38]
_0805CEFA:
	movs r6, #0
	adds r3, r4, #0
	adds r3, #0x10
	adds r5, r4, #0
	adds r5, #0x18
	movs r2, #0xff
	ldrh r1, [r4, #0x10]
	ldrh r0, [r4, #0x18]
	cmp r1, r0
	bhs _0805CF12
	movs r2, #0
	b _0805CF2C
_0805CF12:
	cmp r1, r0
	bls _0805CF1A
	movs r2, #2
	b _0805CF2C
_0805CF1A:
	ldrh r1, [r3, #4]
	ldrh r0, [r5, #4]
	cmp r1, r0
	bhs _0805CF26
	movs r2, #1
	b _0805CF2C
_0805CF26:
	cmp r1, r0
	bls _0805CF2C
	movs r2, #3
_0805CF2C:
	adds r0, r2, #0
	cmp r0, #0xff
	beq _0805CF42
	adds r1, r4, #0
	adds r1, #0x48
	ldrb r2, [r1]
	cmp r0, r2
	beq _0805CF42
	strb r0, [r1]
	movs r0, #1
	orrs r6, r0
_0805CF42:
	adds r3, r6, #0
	ldrh r2, [r4, #0x3c]
	adds r1, r3, #0
	adds r5, r4, #0
	adds r5, #0x6a
	ldrh r0, [r5]
	cmp r0, r2
	beq _0805CF58
	strh r2, [r5]
	movs r1, #2
	orrs r1, r3
_0805CF58:
	adds r3, r1, #0
	ldrh r2, [r4, #0x3e]
	movs r6, #0x4a
	adds r6, r6, r4
	mov ip, r6
	ldrb r0, [r6]
	cmp r0, r2
	beq _0805CF6E
	strb r2, [r6]
	movs r1, #4
	orrs r1, r3
_0805CF6E:
	adds r3, r1, #0
	ldrh r0, [r4, #0x38]
	adds r0, #1
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	cmp r0, r1
	blt _0805CFDE
	adds r0, r4, #0
	adds r0, #0x25
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0805CFAC
	adds r1, r3, #0
	ldrh r0, [r5]
	cmp r0, #4
	beq _0805CF9E
	movs r0, #4
	strh r0, [r5]
	movs r1, #2
	orrs r1, r3
_0805CF9E:
	movs r0, #2
	mov r6, ip
	strb r0, [r6]
	movs r3, #0x80
	lsls r3, r3, #8
	orrs r3, r1
	b _0805CFDE
_0805CFAC:
	adds r0, r4, #0
	adds r0, #0x24
	strb r1, [r0]
	adds r0, #0x28
	ldrb r0, [r0]
	mov r1, ip
	strb r0, [r1]
	adds r1, r3, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bne _0805CFCE
	movs r0, #3
	mov r2, ip
	strb r0, [r2]
	movs r1, #4
	b _0805CFDA
_0805CFCE:
	cmp r2, #4
	bne _0805CFDC
	movs r0, #1
	mov r6, ip
	strb r0, [r6]
	adds r1, r2, #0
_0805CFDA:
	orrs r1, r3
_0805CFDC:
	adds r3, r1, #0
_0805CFDE:
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805CFE8
sub_0805CFE8: @ 0x0805CFE8
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r6, #0
	adds r4, r3, #0
	adds r4, #0x10
	adds r5, r3, #0
	adds r5, #0x18
	movs r2, #0xff
	ldrh r1, [r3, #0x10]
	ldrh r0, [r3, #0x18]
	cmp r1, r0
	bhs _0805D004
	movs r2, #0
	b _0805D01E
_0805D004:
	cmp r1, r0
	bls _0805D00C
	movs r2, #2
	b _0805D01E
_0805D00C:
	ldrh r1, [r4, #4]
	ldrh r0, [r5, #4]
	cmp r1, r0
	bhs _0805D018
	movs r2, #1
	b _0805D01E
_0805D018:
	cmp r1, r0
	bls _0805D01E
	movs r2, #3
_0805D01E:
	adds r0, r2, #0
	adds r5, r3, #0
	adds r5, #0x48
	cmp r0, #0xff
	beq _0805D034
	ldrb r1, [r5]
	cmp r0, r1
	beq _0805D034
	strb r0, [r5]
	movs r0, #1
	orrs r6, r0
_0805D034:
	adds r4, r6, #0
	adds r2, r4, #0
	adds r0, r3, #0
	adds r0, #0x6a
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0x1a
	beq _0805D04C
	movs r0, #0x1a
	strh r0, [r7]
	movs r2, #2
	orrs r2, r4
_0805D04C:
	adds r4, r2, #0
	adds r0, r3, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #2
	beq _0805D062
	movs r0, #2
	strb r0, [r6]
	movs r0, #4
	orrs r4, r0
_0805D062:
	ldrb r0, [r5]
	adds r1, r3, #0
	adds r1, #0x46
	movs r5, #0
	ldrsh r2, [r1, r5]
	subs r1, #0x36
	cmp r0, #1
	beq _0805D096
	cmp r0, #1
	bgt _0805D07C
	cmp r0, #0
	beq _0805D086
	b _0805D0A2
_0805D07C:
	cmp r0, #2
	beq _0805D08E
	cmp r0, #3
	beq _0805D09C
	b _0805D0A2
_0805D086:
	ldrh r0, [r3, #0x10]
	adds r0, r0, r2
	strh r0, [r3, #0x10]
	b _0805D0A2
_0805D08E:
	ldrh r0, [r3, #0x10]
	subs r0, r0, r2
	strh r0, [r3, #0x10]
	b _0805D0A2
_0805D096:
	ldrh r0, [r1, #4]
	adds r0, r0, r2
	b _0805D0A0
_0805D09C:
	ldrh r0, [r1, #4]
	subs r0, r0, r2
_0805D0A0:
	strh r0, [r1, #4]
_0805D0A2:
	ldrh r0, [r3, #0x2e]
	adds r0, #1
	strh r0, [r3, #0x2e]
	adds r2, r3, #0
	adds r2, #0x40
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r1, [r3, #0x28]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x12]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #2
	ble _0805D0DA
	movs r0, #1
	strb r0, [r6]
	movs r0, #4
	strh r0, [r7]
	adds r1, r3, #0
	adds r1, #0x24
	movs r0, #2
	strb r0, [r1]
	orrs r4, r0
_0805D0DA:
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805D0E4
sub_0805D0E4: @ 0x0805D0E4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	adds r3, r4, #0
	adds r3, #0x10
	adds r5, r4, #0
	adds r5, #0x18
	movs r2, #0xff
	ldrh r1, [r4, #0x10]
	ldrh r0, [r4, #0x18]
	cmp r1, r0
	bhs _0805D100
	movs r2, #0
	b _0805D11A
_0805D100:
	cmp r1, r0
	bls _0805D108
	movs r2, #2
	b _0805D11A
_0805D108:
	ldrh r1, [r3, #4]
	ldrh r0, [r5, #4]
	cmp r1, r0
	bhs _0805D114
	movs r2, #1
	b _0805D11A
_0805D114:
	cmp r1, r0
	bls _0805D11A
	movs r2, #3
_0805D11A:
	adds r0, r2, #0
	adds r3, r4, #0
	adds r3, #0x48
	cmp r0, #0xff
	beq _0805D130
	ldrb r1, [r3]
	cmp r0, r1
	beq _0805D130
	strb r0, [r3]
	movs r0, #1
	orrs r6, r0
_0805D130:
	adds r5, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	adds r2, #0x6a
	ldrh r0, [r2]
	cmp r0, #0x1e
	beq _0805D146
	movs r0, #0x1e
	strh r0, [r2]
	movs r1, #2
	orrs r1, r5
_0805D146:
	adds r5, r1, #0
	adds r2, r5, #0
	adds r0, r4, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #2
	bne _0805D160
	movs r0, #3
	strb r0, [r6]
	movs r2, #4
	orrs r2, r5
	b _0805D16C
_0805D160:
	cmp r1, #4
	bne _0805D16C
	movs r0, #1
	strb r0, [r6]
	adds r2, r5, #0
	orrs r2, r1
_0805D16C:
	adds r5, r2, #0
	ldrb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r2, [r1, r3]
	subs r1, #0x36
	cmp r0, #1
	beq _0805D1A2
	cmp r0, #1
	bgt _0805D188
	cmp r0, #0
	beq _0805D192
	b _0805D1AE
_0805D188:
	cmp r0, #2
	beq _0805D19A
	cmp r0, #3
	beq _0805D1A8
	b _0805D1AE
_0805D192:
	ldrh r0, [r4, #0x10]
	adds r0, r0, r2
	strh r0, [r4, #0x10]
	b _0805D1AE
_0805D19A:
	ldrh r0, [r4, #0x10]
	subs r0, r0, r2
	strh r0, [r4, #0x10]
	b _0805D1AE
_0805D1A2:
	ldrh r0, [r1, #4]
	adds r0, r0, r2
	b _0805D1AC
_0805D1A8:
	ldrh r0, [r1, #4]
	subs r0, r0, r2
_0805D1AC:
	strh r0, [r1, #4]
_0805D1AE:
	ldrh r1, [r4, #0x2e]
	adds r1, #1
	strh r1, [r4, #0x2e]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	ldr r2, [r4, #0x28]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0x12]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x2c
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _0805D230
	ldrh r0, [r4, #0x1a]
	strh r0, [r4, #0x12]
	adds r0, r2, #0
	bl BattleFree
	adds r1, r5, #0
	adds r2, r6, #0
	ldrb r0, [r2]
	cmp r0, #4
	bls _0805D1EA
	movs r0, #2
	strb r0, [r2]
	movs r1, #4
	orrs r1, r5
_0805D1EA:
	ldrb r0, [r2]
	cmp r0, #1
	bne _0805D1F8
	movs r0, #2
	strb r0, [r2]
	movs r0, #4
	b _0805D200
_0805D1F8:
	cmp r0, #3
	bne _0805D202
	movs r0, #4
	strb r0, [r6]
_0805D200:
	orrs r1, r0
_0805D202:
	adds r5, r1, #0
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0805D214
	rsbs r0, r0, #0
_0805D214:
	cmp r0, #1
	ble _0805D22A
	movs r0, #0
	strh r0, [r4, #0x38]
	movs r0, #0x10
	strh r0, [r4, #0x3a]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #3
	strb r0, [r1]
	b _0805D230
_0805D22A:
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r5, r0
_0805D230:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0805D238
sub_0805D238: @ 0x0805D238
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r2, [r5, #0x12]
	adds r1, r5, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r2, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r5, #0x1a]
	cmp r2, r0
	bgt _0805D31C
	ldr r0, [r5]
	ldr r1, [r5, #4]
	bl sub_08139B74
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _0805D26E
	ldr r2, [r5, #4]
	ldrb r1, [r2, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805D290
_0805D26E:
	adds r3, r5, #0
	adds r3, #0x24
	movs r0, #0
	strb r0, [r3]
	ldrh r0, [r5, #0x1a]
	strh r0, [r5, #0x12]
	adds r2, r5, #0
	adds r2, #0x78
	ldrh r1, [r2]
	ldr r0, _0805D28C @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2]
	adds r7, r3, #0
	b _0805D2E4
	.align 2, 0
_0805D28C: .4byte 0x0000FFDF
_0805D290:
	ldr r0, [r5]
	adds r1, r2, #0
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	movs r1, #0x80
	lsls r1, r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0805D2C6
	movs r0, #0x1e
	b _0805D2C8
_0805D2C6:
	movs r0, #0x1a
_0805D2C8:
	strh r0, [r5, #0x3c]
	movs r0, #1
	strh r0, [r5, #0x3e]
	ldrh r0, [r5, #0x1a]
	movs r1, #0
	strh r0, [r5, #0x12]
	strh r1, [r5, #0x38]
	movs r0, #0xa
	strh r0, [r5, #0x3a]
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #3
	strb r0, [r1]
	adds r7, r1, #0
_0805D2E4:
	adds r6, r5, #0
	adds r6, #0x5a
	ldrh r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805D30A
	ldr r0, _0805D318 @ =0x00007FFF
	ands r0, r1
	movs r4, #0
	strh r0, [r6]
	ldrh r1, [r6]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_08076158
	strh r4, [r6]
_0805D30A:
	ldrb r0, [r7]
	cmp r0, #0
	bne _0805D31E
	movs r0, #0x80
	lsls r0, r0, #7
	b _0805D320
	.align 2, 0
_0805D318: .4byte 0x00007FFF
_0805D31C:
	strh r2, [r5, #0x12]
_0805D31E:
	movs r0, #0
_0805D320:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805D328
sub_0805D328: @ 0x0805D328
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x12]
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r2, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r4, #0x1a]
	cmp r2, r0
	bgt _0805D384
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_0805EB88
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #0
	strb r0, [r1]
	adds r5, r4, #0
	adds r5, #0x5a
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805D37A
	ldr r0, _0805D380 @ =0x00007FFF
	ands r0, r1
	strh r0, [r5]
	ldrh r1, [r5]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_08076158
	movs r0, #0
	strh r0, [r5]
_0805D37A:
	movs r0, #0x80
	lsls r0, r0, #7
	b _0805D388
	.align 2, 0
_0805D380: .4byte 0x00007FFF
_0805D384:
	strh r2, [r4, #0x12]
	movs r0, #0
_0805D388:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805D390
sub_0805D390: @ 0x0805D390
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x78
	ldrh r1, [r5]
	ldr r4, _0805D3DC @ =0x0000FFFE
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r5]
	ldr r1, _0805D3E0 @ =gUnk_0860EF38
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r7, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0805B5E8
	adds r7, r0, #0
	ldrh r0, [r5]
	ands r4, r0
	strh r4, [r5]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r7
	cmp r0, #0
	beq _0805D3E4
	movs r0, #1
	b _0805D6D2
	.align 2, 0
_0805D3DC: .4byte 0x0000FFFE
_0805D3E0: .4byte gUnk_0860EF38
_0805D3E4:
	movs r0, #3
	ands r0, r7
	cmp r0, #0
	beq _0805D44C
	adds r2, r6, #0
	adds r2, #0x56
	ldrh r1, [r2]
	ldr r0, _0805D430 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x6a
	ldrh r1, [r1]
	subs r2, #0xe
	ldrb r2, [r2]
	adds r3, r6, #0
	adds r3, #0x6e
	ldrb r4, [r3]
	movs r3, #1
	ands r3, r4
	bl sub_0801309C
	ldr r0, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x4a
	ldrb r1, [r1]
	bl sub_08012FB0
	ldr r0, [r6, #0x34]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805D434
	ldr r0, [r6, #8]
	bl sub_08012F5C
	b _0805D43A
	.align 2, 0
_0805D430: .4byte 0x0000F7FF
_0805D434:
	ldr r0, [r6, #8]
	bl sub_08012F20
_0805D43A:
	ldr r0, [r6, #0x34]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0805D494
	ldr r0, [r6, #8]
	bl sub_08012EE4
	b _0805D4A2
_0805D44C:
	movs r0, #4
	ands r0, r7
	cmp r0, #0
	beq _0805D4A2
	adds r2, r6, #0
	adds r2, #0x56
	ldrh r1, [r2]
	ldr r0, _0805D480 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x4a
	ldrb r1, [r1]
	bl sub_08012FB0
	ldr r0, [r6, #0x34]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805D484
	ldr r0, [r6, #8]
	bl sub_08012F5C
	b _0805D48A
	.align 2, 0
_0805D480: .4byte 0x0000F7FF
_0805D484:
	ldr r0, [r6, #8]
	bl sub_08012F20
_0805D48A:
	ldr r0, [r6, #0x34]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805D49C
_0805D494:
	ldr r0, [r6, #8]
	bl sub_08012EA8
	b _0805D4A2
_0805D49C:
	ldr r0, [r6, #8]
	bl sub_08012EE4
_0805D4A2:
	movs r4, #0x80
	lsls r4, r4, #8
	ands r7, r4
	cmp r7, #0
	bne _0805D4C0
	adds r2, r6, #0
	adds r2, #0x78
	ldrh r1, [r2]
	ldr r0, _0805D4BC @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	b _0805D6D0
	.align 2, 0
_0805D4BC: .4byte 0x0000FFFE
_0805D4C0:
	adds r1, r6, #0
	adds r1, #0x24
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r6, #0x20]
	adds r0, #1
	strh r0, [r6, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6, #0x22]
	cmp r0, r1
	blo _0805D53C
	adds r0, r6, #0
	bl sub_0805BEA8
	adds r7, r0, #0
	ands r7, r4
	cmp r7, #0
	beq _0805D518
	adds r2, r6, #0
	adds r2, #0x56
	ldrh r1, [r2]
	ldr r0, _0805D534 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x6a
	ldrh r1, [r1]
	subs r2, #0xe
	ldrb r2, [r2]
	adds r3, r6, #0
	adds r3, #0x6e
	ldrb r4, [r3]
	movs r3, #1
	ands r3, r4
	bl sub_0801309C
	ldr r0, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x4a
	ldrb r1, [r1]
	bl sub_08012FB0
_0805D518:
	ldr r0, [r6, #8]
	bl sub_08012F5C
	ldr r0, [r6, #8]
	bl sub_08012EA8
	adds r2, r6, #0
	adds r2, #0x78
	ldrh r1, [r2]
	ldr r0, _0805D538 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	b _0805D6D2
	.align 2, 0
_0805D534: .4byte 0x0000F7FF
_0805D538: .4byte 0x0000FFFE
_0805D53C:
	ldrh r4, [r6, #0x20]
	lsls r1, r4, #1
	ldr r0, [r6, #0xc]
	adds r5, r0, r1
	ldr r1, [r6, #0x34]
	movs r2, #0x80
	mov r8, r2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0805D55E
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	str r1, [r6, #0x34]
_0805D55E:
	ldrb r1, [r5]
	movs r7, #0x3f
	adds r0, r7, #0
	ands r0, r1
	ldr r2, _0805D5CC @ =0xFFFFFF00
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	ldrb r2, [r5, #1]
	adds r0, r7, #0
	ands r0, r2
	lsls r0, r0, #0x10
	ldr r3, _0805D5D0 @ =0xFF00FFFF
	ands r3, r1
	orrs r3, r0
	str r3, [sp]
	ldr r0, [r6, #0x34]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0805D5FC
	adds r0, r4, #1
	ldrh r1, [r6, #0x22]
	cmp r0, r1
	blt _0805D5D4
	ldr r0, [r6]
	ldr r1, [r6, #4]
	mov r2, sp
	ldrb r2, [r2]
	lsrs r3, r3, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl sub_0804C3F8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r2, r0
	cmp r2, #0x3f
	bne _0805D5C8
	mov r0, sp
	ldrb r0, [r0]
	ldr r1, [sp]
	lsrs r1, r1, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08028728
	ldrb r0, [r0, #1]
	adds r2, r7, #0
	ands r2, r0
_0805D5C8:
	lsls r2, r2, #8
	b _0805D6BC
	.align 2, 0
_0805D5CC: .4byte 0xFFFFFF00
_0805D5D0: .4byte 0xFF00FFFF
_0805D5D4:
	mov r0, sp
	ldrb r0, [r0]
	lsrs r1, r3, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08028728
	ldrb r0, [r0, #1]
	adds r1, r7, #0
	ands r1, r0
	adds r1, #3
	lsls r1, r1, #8
	ldr r2, _0805D5F8 @ =0xFFFF00FF
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	b _0805D6C4
	.align 2, 0
_0805D5F8: .4byte 0xFFFF00FF
_0805D5FC:
	mov r0, sp
	ldrb r0, [r0]
	lsrs r1, r3, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_0806D814
	adds r2, r0, #0
	cmp r2, #0
	beq _0805D684
	ldrb r1, [r5]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0805D684
	ldr r0, [r2]
	ldr r1, [r2, #4]
	mov r2, sp
	ldrb r2, [r2]
	ldr r3, [sp]
	lsrs r3, r3, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl sub_0804C3F8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r4, r0
	cmp r4, #0x3f
	bne _0805D650
	mov r0, sp
	ldrb r0, [r0]
	ldr r1, [sp]
	lsrs r1, r1, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08028728
	ldrb r0, [r0, #1]
	ands r4, r0
_0805D650:
	lsls r0, r4, #8
	ldr r2, _0805D680 @ =0xFFFF00FF
	ldr r3, [sp]
	ands r3, r2
	orrs r3, r0
	str r3, [sp]
	ldrb r1, [r5]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0805D6C6
	lsrs r0, r3, #8
	adds r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ands r3, r2
	orrs r3, r0
	str r3, [sp]
	ldr r0, [r6, #0x34]
	mov r2, r8
	orrs r0, r2
	str r0, [r6, #0x34]
	b _0805D6C6
	.align 2, 0
_0805D680: .4byte 0xFFFF00FF
_0805D684:
	ldr r0, [r6]
	ldr r1, [r6, #4]
	mov r2, sp
	ldrb r2, [r2]
	ldr r3, [sp]
	lsrs r3, r3, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl sub_0804C3F8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r4, r0
	cmp r4, #0x3f
	bne _0805D6BA
	mov r0, sp
	ldrb r0, [r0]
	ldr r1, [sp]
	lsrs r1, r1, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08028728
	ldrb r0, [r0, #1]
	ands r4, r0
_0805D6BA:
	lsls r2, r4, #8
_0805D6BC:
	ldr r1, _0805D6E0 @ =0xFFFF00FF
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r2
_0805D6C4:
	str r0, [sp]
_0805D6C6:
	adds r1, r6, #0
	adds r1, #0x18
	mov r0, sp
	bl sub_08058D94
_0805D6D0:
	movs r0, #0
_0805D6D2:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805D6E0: .4byte 0xFFFF00FF

	thumb_func_start sub_0805D6E4
sub_0805D6E4: @ 0x0805D6E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	str r2, [sp]
	movs r4, #0
	cmp r4, r2
	bge _0805D7EA
_0805D6FC:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl sub_08143B70
	lsls r0, r0, #0x18
	adds r4, #1
	str r4, [sp, #4]
	movs r1, #0x68
	adds r1, r1, r6
	mov sl, r1
	movs r3, #0x1c
	adds r3, r3, r5
	mov sb, r3
	cmp r0, #0
	beq _0805D7DE
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	mov r8, r0
	ldrb r4, [r5, #0x17]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08059718
	strb r4, [r5, #0x17]
	movs r7, #0
	movs r4, #0xa7
	lsls r4, r4, #0x10
_0805D758:
	lsrs r0, r4, #0x10
	bl sub_08142FAC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5]
	cmp r0, r1
	bne _0805D770
	ldrb r1, [r5, #0x17]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r5, #0x17]
_0805D770:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r4, r4, r3
	adds r7, #1
	cmp r7, #7
	ble _0805D758
	movs r0, #8
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _0805D7A2
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #9
	bl sub_08143B70
	cmp r0, #0
	bne _0805D7A2
	adds r0, r6, #0
	bl sub_0805B308
	ldrb r1, [r5, #0x17]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r5, #0x17]
_0805D7A2:
	ldrb r1, [r5, #0x17]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0805D7C0
	adds r0, r6, #0
	bl sub_0805B308
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_08012CBC
	str r5, [r4, #8]
_0805D7C0:
	adds r0, r6, #0
	bl sub_0805B308
	movs r1, #0
	bl sub_0805DDB4
	adds r0, r6, #0
	bl sub_0805B308
	adds r0, #0x78
	ldrh r1, [r0]
	ldr r3, _0805D7FC @ =0x0000FFDF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
_0805D7DE:
	ldr r4, [sp, #4]
	mov r6, sl
	mov r5, sb
	ldr r0, [sp]
	cmp r4, r0
	blt _0805D6FC
_0805D7EA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D7FC: .4byte 0x0000FFDF

	thumb_func_start sub_0805D800
sub_0805D800: @ 0x0805D800
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r0, #0x10
	mov r1, sp
	bl sub_08058D80
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r1, #4]
	movs r2, #0x10
	bl sub_08143B70
	adds r1, r0, #0
	cmp r1, #0
	bne _0805D82E
	b _0805DB96
_0805D82E:
	mov r2, sb
	ldr r0, [r2, #0x34]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0805D83C
	b _0805DB96
_0805D83C:
	ldr r0, [r2]
	ldr r1, [r2, #4]
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r1, #4]
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
	str r0, [sp, #8]
	cmp r6, #0
	bgt _0805D872
	b _0805DB96
_0805D872:
	str r6, [sp, #4]
_0805D874:
	movs r2, #0x42
	adds r2, r2, r5
	mov sl, r2
	cmp sb, r5
	bne _0805D880
	b _0805DB88
_0805D880:
	adds r0, r5, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805D88C
	b _0805DB88
_0805D88C:
	ldr r2, [r5, #4]
	ldrb r1, [r2, #0x17]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0805D89A
	b _0805DB88
_0805D89A:
	ldr r0, [r5]
	adds r1, r2, #0
	movs r2, #0x10
	bl sub_08143B70
	adds r1, r0, #0
	cmp r1, #0
	bne _0805D8AC
	b _0805DB88
_0805D8AC:
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #9
	bl sub_08143B70
	adds r1, r0, #0
	cmp r1, #0
	bne _0805D8BE
	b _0805DB88
_0805D8BE:
	ldr r4, [r5, #4]
	ldrb r1, [r4, #0xc]
	movs r0, #0xe0
	ands r0, r1
	cmp r0, #0
	beq _0805D8CC
	b _0805DB88
_0805D8CC:
	ldrb r1, [r4, #0x14]
	ldr r0, _0805D9B0 @ =0xFFFFFF00
	ands r7, r0
	orrs r7, r1
	ldrb r1, [r4, #0x15]
	lsls r1, r1, #0x10
	ldr r0, _0805D9B4 @ =0xFF00FFFF
	ands r7, r0
	orrs r7, r1
	ldr r1, [sp]
	ldr r2, _0805D9B8 @ =0x00FF00FF
	ands r1, r2
	adds r0, r7, #0
	ands r0, r2
	cmp r1, r0
	beq _0805D8EE
	b _0805DB88
_0805D8EE:
	ldr r0, [r5]
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	lsrs r3, r7, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r1, r4, #0
	bl sub_0804C3F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _0805D9BC @ =0xFFFF00FF
	mov r8, r1
	ands r7, r1
	orrs r7, r0
	lsrs r1, r7, #8
	movs r0, #0x3f
	ands r0, r1
	lsls r0, r0, #8
	mov r2, r8
	ands r7, r2
	orrs r7, r0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r1, sb
	ldr r0, [r1, #0x34]
	movs r1, #0x81
	ands r0, r1
	cmp r0, #0
	beq _0805D9C0
	ldr r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #6
	mov ip, r0
	adds r0, r4, #0
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	bne _0805D9C0
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [sp, #8]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _0805D9C0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0805D9C0
	lsrs r0, r7, #8
	adds r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	mov r2, r8
	ands r7, r2
	orrs r7, r0
	mov r2, sp
	lsls r3, r7, #0x10
	ldrb r1, [r2, #1]
	lsrs r0, r3, #0x18
	cmp r1, r0
	bhs _0805D998
	b _0805DB88
_0805D998:
	ldrb r1, [r2, #1]
	adds r0, #1
	cmp r1, r0
	ble _0805D9A2
	b _0805DB88
_0805D9A2:
	mov r0, ip
	orrs r4, r0
	str r4, [r5, #0x34]
	mov r1, sl
	strh r6, [r1]
	strh r6, [r1, #2]
	b _0805DB88
	.align 2, 0
_0805D9B0: .4byte 0xFFFFFF00
_0805D9B4: .4byte 0xFF00FFFF
_0805D9B8: .4byte 0x00FF00FF
_0805D9BC: .4byte 0xFFFF00FF
_0805D9C0:
	lsrs r0, r7, #8
	adds r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _0805DA08 @ =0xFFFF00FF
	ands r7, r1
	mov r1, sp
	orrs r7, r0
	ldrb r1, [r1, #1]
	lsrs r0, r0, #8
	cmp r1, r0
	blo _0805D9DA
	b _0805DB88
_0805D9DA:
	ldr r1, [r5, #0x34]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0805D9EA
	b _0805DB88
_0805D9EA:
	ldr r0, _0805DA0C @ =0xFFFFE0FF
	ands r1, r0
	orrs r1, r2
	str r1, [r5, #0x34]
	mov r0, sb
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805DAD0
	cmp r0, #1
	bgt _0805DA10
	cmp r0, #0
	beq _0805DA1A
	b _0805DB80
	.align 2, 0
_0805DA08: .4byte 0xFFFF00FF
_0805DA0C: .4byte 0xFFFFE0FF
_0805DA10:
	cmp r0, #2
	beq _0805DA1A
	cmp r0, #3
	beq _0805DAD0
	b _0805DB80
_0805DA1A:
	ldr r0, [r5, #4]
	ldrb r2, [r0, #0x15]
	subs r1, r2, #1
	cmp r1, #0
	bge _0805DA2A
	ldrb r0, [r0, #0x14]
	adds r1, r2, #0
	b _0805DA30
_0805DA2A:
	ldrb r0, [r0, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
_0805DA30:
	bl sub_08028728
	mov r8, r0
	ldr r0, [r5, #4]
	ldrb r2, [r0, #0x15]
	adds r1, r2, #1
	cmp r1, #0x1f
	ble _0805DA46
	ldrb r0, [r0, #0x14]
	adds r1, r2, #0
	b _0805DA48
_0805DA46:
	ldrb r0, [r0, #0x14]
_0805DA48:
	bl sub_08028728
	adds r4, r0, #0
	ldr r1, [r5, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	bl sub_08028728
	adds r3, r0, #0
	ldrb r0, [r3, #1]
	movs r6, #0xc1
	rsbs r6, r6, #0
	adds r1, r6, #0
	ands r1, r0
	ldrb r2, [r4, #1]
	adds r0, r6, #0
	ands r0, r2
	cmp r1, r0
	blt _0805DAAE
	ldrb r0, [r3, #1]
	adds r1, r6, #0
	ands r1, r0
	mov r0, r8
	ldrb r2, [r0, #1]
	adds r0, r6, #0
	ands r0, r2
	cmp r1, r0
	blt _0805DAAE
	bl sub_0813B0CC
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0805DA90
	adds r0, #0x7f
_0805DA90:
	asrs r0, r0, #7
	lsls r0, r0, #7
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3f
	bgt _0805DAA6
	ldr r0, [r5, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	b _0805DB7C
_0805DAA6:
	ldr r0, [r5, #0x34]
	movs r1, #0x80
	lsls r1, r1, #4
	b _0805DB7C
_0805DAAE:
	ldrb r2, [r3, #1]
	movs r0, #0xc1
	rsbs r0, r0, #0
	adds r1, r0, #0
	ands r1, r2
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r1, r0
	bge _0805DAC8
	ldr r0, [r5, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	b _0805DB7C
_0805DAC8:
	ldr r0, [r5, #0x34]
	movs r1, #0x80
	lsls r1, r1, #4
	b _0805DB7C
_0805DAD0:
	ldr r2, [r5, #4]
	ldrb r1, [r2, #0x15]
	subs r0, r1, #1
	cmp r0, #0
	bge _0805DADE
	ldrb r0, [r2, #0x14]
	b _0805DAE6
_0805DADE:
	ldrb r0, [r2, #0x14]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0805DAE6:
	bl sub_08028728
	mov r8, r0
	ldr r2, [r5, #4]
	ldrb r1, [r2, #0x15]
	adds r0, r1, #1
	cmp r0, #0x1f
	ble _0805DAFA
	ldrb r0, [r2, #0x14]
	b _0805DAFE
_0805DAFA:
	ldrb r0, [r2, #0x14]
	adds r0, #1
_0805DAFE:
	bl sub_08028728
	adds r4, r0, #0
	ldr r1, [r5, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	bl sub_08028728
	adds r3, r0, #0
	ldrb r0, [r3, #1]
	movs r6, #0xc1
	rsbs r6, r6, #0
	adds r1, r6, #0
	ands r1, r0
	ldrb r2, [r4, #1]
	adds r0, r6, #0
	ands r0, r2
	cmp r1, r0
	blt _0805DB5C
	ldrb r0, [r3, #1]
	adds r1, r6, #0
	ands r1, r0
	mov r0, r8
	ldrb r2, [r0, #1]
	adds r0, r6, #0
	ands r0, r2
	cmp r1, r0
	blt _0805DB5C
	bl sub_0813B0CC
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0805DB46
	adds r0, #0x7f
_0805DB46:
	asrs r0, r0, #7
	lsls r0, r0, #7
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3f
	ble _0805DB76
	ldr r0, [r5, #0x34]
	movs r1, #0x80
	lsls r1, r1, #2
	b _0805DB7C
_0805DB5C:
	ldrb r2, [r3, #1]
	movs r0, #0xc1
	rsbs r0, r0, #0
	adds r1, r0, #0
	ands r1, r2
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r1, r0
	bge _0805DB76
	ldr r0, [r5, #0x34]
	movs r1, #0x80
	lsls r1, r1, #2
	b _0805DB7C
_0805DB76:
	ldr r0, [r5, #0x34]
	movs r1, #0x80
	lsls r1, r1, #1
_0805DB7C:
	orrs r0, r1
	str r0, [r5, #0x34]
_0805DB80:
	movs r0, #0
	mov r1, sl
	strh r0, [r1]
	strh r0, [r1, #2]
_0805DB88:
	ldr r2, [sp, #4]
	subs r2, #1
	str r2, [sp, #4]
	adds r5, #0xd0
	cmp r2, #0
	beq _0805DB96
	b _0805D874
_0805DB96:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805DBA8
sub_0805DBA8: @ 0x0805DBA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	mov r8, r1
	movs r0, #0
	mov sl, r0
	cmp sl, r2
	blt _0805DBC2
	b _0805DD96
_0805DBC2:
	str r2, [sp, #4]
	movs r1, #0x6e
	add r1, r8
	mov sb, r1
	mov r5, r8
	adds r5, #8
	mov r6, r8
	adds r6, #0x42
_0805DBD2:
	ldr r2, [sp]
	cmp r2, r8
	bne _0805DBDA
	b _0805DD80
_0805DBDA:
	mov r3, sb
	ldrb r0, [r3, #8]
	cmp r0, #0
	bne _0805DBE4
	b _0805DD80
_0805DBE4:
	mov r4, r8
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x17]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0805DBF4
	b _0805DD80
_0805DBF4:
	ldr r2, [r5, #0x2c]
	movs r0, #0x90
	lsls r0, r0, #8
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	bne _0805DCC0
	movs r3, #2
	mov r2, r8
	adds r2, #0x44
	ldrh r1, [r5, #0x3c]
	movs r4, #0x3c
	ldrsh r0, [r5, r4]
	cmp r0, #0
	bge _0805DC1A
	adds r0, r1, #1
	strh r0, [r5, #0x3c]
	b _0805DCB6
_0805DC1A:
	movs r0, #0
	strh r0, [r2]
	movs r1, #0x3a
	ldrsh r0, [r5, r1]
	adds r2, r6, #0
	cmp r0, #0x1f
	ble _0805DC36
	ldr r0, [r5, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r5, #0x2c]
	movs r0, #0
	b _0805DCB8
_0805DC36:
	cmp r0, #0xf
	bgt _0805DC6A
	ldr r1, [r5, #0x2c]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805DC88
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805DC76
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0805DCAA
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0805DCB0
	ldrh r0, [r5, #0xc]
	adds r0, #2
	b _0805DCAE
_0805DC6A:
	ldr r1, [r5, #0x2c]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805DC7E
_0805DC76:
	ldrh r0, [r5, #8]
	adds r0, #2
	strh r0, [r5, #8]
	b _0805DCB0
_0805DC7E:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805DC90
_0805DC88:
	ldrh r0, [r5, #8]
	subs r0, #2
	strh r0, [r5, #8]
	b _0805DCB0
_0805DC90:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0805DCA0
	ldrh r0, [r5, #0xc]
	adds r0, #2
	b _0805DCAE
_0805DCA0:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0805DCB0
_0805DCAA:
	ldrh r0, [r5, #0xc]
	subs r0, #2
_0805DCAE:
	strh r0, [r5, #0xc]
_0805DCB0:
	ldrh r0, [r2]
	adds r0, r0, r3
	strh r0, [r2]
_0805DCB6:
	movs r0, #1
_0805DCB8:
	mov r2, sl
	orrs r2, r0
	mov sl, r2
	b _0805DD80
_0805DCC0:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r2, r0
	cmp r2, #0
	beq _0805DD80
	ldr r3, [sp]
	ldr r0, [r3, #0x34]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x34]
	mov r7, r8
	adds r7, #0x78
	ldrh r1, [r6, #0x36]
	movs r0, #1
	movs r2, #0
	orrs r1, r0
	strh r1, [r6, #0x36]
	movs r4, #0x3a
	ldrsh r0, [r5, r4]
	cmp r0, #0
	bne _0805DD28
	movs r0, #0x20
	orrs r1, r0
	strh r1, [r6, #0x36]
	ldrh r0, [r6, #0x14]
	ldr r2, _0805DD24 @ =0x0000F7FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r6, #0x14]
	ldr r0, [r5]
	ldrb r2, [r6, #6]
	mov r3, sb
	ldrb r1, [r3]
	movs r3, #1
	ands r3, r1
	movs r1, #0x3a
	bl sub_0801309C
	ldr r0, [r5]
	bl sub_08012EE4
	ldr r0, [r5]
	bl sub_08012F5C
	movs r4, #1
	strh r4, [r5, #0x3a]
	movs r0, #1
	b _0805DD7A
	.align 2, 0
_0805DD24: .4byte 0x0000F7FF
_0805DD28:
	ldr r0, [r5]
	bl sub_08012E34
	cmp r0, #0
	bne _0805DD36
	movs r0, #1
	b _0805DD7A
_0805DD36:
	ldr r0, [r5, #0x2c]
	ldr r1, _0805DDA8 @ =0xFFFFDFFF
	ands r0, r1
	str r0, [r5, #0x2c]
	ldrh r0, [r6, #0x14]
	ldr r2, _0805DDAC @ =0x0000F7FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r6, #0x14]
	ldr r0, [r5]
	ldrh r1, [r6, #0x28]
	ldrb r2, [r6, #6]
	mov r3, sb
	ldrb r4, [r3]
	movs r3, #1
	ands r3, r4
	bl sub_0801309C
	ldrh r0, [r7]
	ldr r4, _0805DDB0 @ =0x0000FFDF
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r7]
	ldr r0, [r5]
	ldrb r1, [r6, #8]
	bl sub_08012FB0
	ldr r0, [r5]
	bl sub_08012F5C
	ldr r0, [r5]
	bl sub_08012EA8
	movs r0, #0
_0805DD7A:
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_0805DD80:
	ldr r2, [sp, #4]
	subs r2, #1
	str r2, [sp, #4]
	movs r3, #0xd0
	add sb, r3
	adds r5, #0xd0
	adds r6, #0xd0
	add r8, r3
	cmp r2, #0
	beq _0805DD96
	b _0805DBD2
_0805DD96:
	mov r0, sl
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805DDA8: .4byte 0xFFFFDFFF
_0805DDAC: .4byte 0x0000F7FF
_0805DDB0: .4byte 0x0000FFDF

@ Sprite animation speeds (sub_0801305C): durations as written, doubled or halved.
@ sub_0805DDB4 picks it from UnitInfo byte 3: > 0 fast, < 0 slow, else normal.
	.set ANIM_NORMAL, 0
	.set ANIM_SLOW, 1
	.set ANIM_FAST, 2

	thumb_func_start sub_0805DDB4
sub_0805DDB4: @ 0x0805DDB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	cmp r5, #0
	bne _0805DDCA
	b _0805E01C
_0805DDCA:
	bl sub_0806D918
	adds r6, r0, #0
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _0805DDDA
	b _0805E01C
_0805DDDA:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0805DDE2
	b _0805E01C
_0805DDE2:
	adds r1, r5, #0
	adds r1, #0x78
	ldrh r2, [r1]
	ldr r0, _0805DE50 @ =0x0000FFDF
	ands r0, r2
	strh r0, [r1]
	movs r0, #2
	ands r0, r6
	mov r8, r1
	cmp r0, #0
	bne _0805DDFA
	b _0805E01C
_0805DDFA:
	adds r2, r5, #0
	adds r2, #0x64
	ldrb r1, [r2]
	movs r0, #0xf8
	ands r0, r1
	strb r0, [r2]
	movs r0, #8
	ands r0, r7
	adds r4, r5, #0
	adds r4, #0x56
	cmp r0, #0
	bne _0805DE20
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805DE20
	b _0805E01C
_0805DE20:
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r0, [r5]
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _0805DE54
	movs r0, #0x18
	bl sub_08142FAC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805DE54
	ldr r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x6a
	ldrh r1, [r1]
	movs r2, #0
	movs r3, #0
	b _0805DEE4
	.align 2, 0
_0805DE50: .4byte 0x0000FFDF
_0805DE54:
	movs r0, #8
	ands r0, r6
	cmp r0, #0
	bne _0805DE96
	movs r0, #4
	ands r0, r6
	cmp r0, #0
	beq _0805DE96
	ldrh r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805DE70
	b _0805E01C
_0805DE70:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0805DE78
	b _0805E01C
_0805DE78:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805DE88
	b _0805E01C
_0805DE88:
	mov r0, r8
	ldrh r1, [r0]
	movs r0, #0x20
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
	b _0805E01C
_0805DE96:
	ldr r0, [r5, #8]
	bl sub_08013020
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r2, #0
	mov r8, r2
	subs r0, #2
	cmp r0, #1
	bhi _0805DEC0
	ldr r0, [r5, #8]
	bl sub_08012FA4
	mov r8, r0
	cmp r0, #2
	beq _0805DEC0
	cmp r0, #4
	beq _0805DEC0
	movs r0, #2
	mov r8, r0
_0805DEC0:
	movs r0, #0xc
	ands r0, r6
	cmp r0, #0xc
	bne _0805DEF0
	ldrh r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805DEF0
	ldr r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x48
	ldrb r2, [r1]
	adds r1, #0x26
	ldrb r1, [r1]
	movs r3, #1
	ands r3, r1
	movs r1, #0xa
_0805DEE4:
	bl sub_0801309C
	ldr r0, [r5, #8]
	bl sub_08012EA8
	b _0805E01C
_0805DEF0:
	ldr r0, [r5, #4]
	ldrb r1, [r0, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805DF2A
	adds r1, r5, #0
	adds r1, #0x6a
	movs r0, #0x16
	strh r0, [r1]
	movs r4, #4
	adds r0, r7, #0
	ands r0, r4
	cmp r0, #0
	bne _0805DF22
	ldr r0, [r5, #8]
	subs r1, #0x22
	ldrb r2, [r1]
	adds r1, #0x26
	ldrb r1, [r1]
	movs r3, #1
	ands r3, r1
	movs r1, #0x16
	bl sub_0801309C
_0805DF22:
	ands r6, r4
	cmp r6, #0
	bne _0805E01C
	b _0805DFA4
_0805DF2A:
	adds r2, r5, #0
	adds r2, #0x6a
	movs r1, #2
	mov sl, r1
	movs r0, #2
	strh r0, [r2]
	ldr r0, [r5, #4]
	ldrb r1, [r0, #0xc]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	bne _0805DFAA
	ldr r0, [r5, #8]
	ldrh r1, [r2]
	subs r2, #0x22
	ldrb r2, [r2]
	adds r3, r5, #0
	adds r3, #0x6e
	ldrb r4, [r3]
	movs r3, #1
	ands r3, r4
	bl sub_0801309C
	mov r0, sb
	subs r0, #2
	cmp r0, #1
	bhi _0805DF68
	ldr r0, [r5, #8]
	mov r1, r8
	bl sub_08012FB0
_0805DF68:
	movs r0, #4
	ands r0, r6
	cmp r0, #0
	beq _0805DF80
	movs r0, #1
	orrs r7, r0
	adds r0, r5, #0
	adds r0, #0x4a
	mov r2, sl
	strb r2, [r0]
	adds r6, r0, #0
	b _0805DFE0
_0805DF80:
	ldr r0, [r5, #4]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0805DF92
	ldr r0, [r5, #8]
	movs r1, #ANIM_FAST
	b _0805DFA0
_0805DF92:
	cmp r0, #0
	bge _0805DF9C
	ldr r0, [r5, #8]
	movs r1, #ANIM_SLOW
	b _0805DFA0
_0805DF9C:
	ldr r0, [r5, #8]
	movs r1, #ANIM_NORMAL
_0805DFA0:
	bl sub_0801305C
_0805DFA4:
	adds r6, r5, #0
	adds r6, #0x4a
	b _0805DFE0
_0805DFAA:
	movs r0, #1
	orrs r7, r0
	adds r1, r5, #0
	adds r1, #0x4a
	mov r0, sl
	strb r0, [r1]
	movs r0, #4
	ands r0, r7
	adds r6, r1, #0
	cmp r0, #0
	bne _0805DFE0
	ldr r0, [r5, #8]
	ldrh r1, [r2]
	adds r2, r5, #0
	adds r2, #0x48
	ldrb r2, [r2]
	adds r3, r5, #0
	adds r3, #0x6e
	ldrb r4, [r3]
	movs r3, #1
	ands r3, r4
	bl sub_0801309C
	ldr r0, [r5, #8]
	ldrb r1, [r6]
	bl sub_08012FB0
_0805DFE0:
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0805DFF0
	movs r0, #1
	strb r0, [r6]
_0805DFF0:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _0805E000
	ldr r0, [r5, #8]
	bl sub_08012F20
	b _0805E006
_0805E000:
	ldr r0, [r5, #8]
	bl sub_08012F5C
_0805E006:
	movs r0, #2
	ands r7, r0
	cmp r7, #0
	beq _0805E016
	ldr r0, [r5, #8]
	bl sub_08012EE4
	b _0805E01C
_0805E016:
	ldr r0, [r5, #8]
	bl sub_08012EA8
_0805E01C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805E02C
sub_0805E02C: @ 0x0805E02C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r5, [r7]
	ldr r6, [r7, #4]
	ldrh r0, [r7, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r7, #0x14]
	bl sub_08058D5C
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0804C3F8
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r1, #0
	bl sub_08058D78
	strh r0, [r7, #0x1a]
	ldrh r0, [r7, #0x1a]
	bl sub_08058D64
	adds r4, r0, #0
	ldrh r0, [r7, #0x12]
	bl sub_08058D64
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r5, r4, r0
	ldrh r0, [r7, #0x1a]
	bl sub_08058D64
	adds r4, r0, #0
	ldrh r0, [r7, #0x12]
	bl sub_08058D64
	subs r4, r4, r0
	adds r1, r7, #0
	adds r1, #0x30
	strb r4, [r1]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	movs r0, #4
	rsbs r0, r0, #0
	cmp r4, r0
	bge _0805E0A6
	movs r0, #0xfc
	strb r0, [r1]
_0805E0A6:
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	ble _0805E0B2
	movs r0, #3
	strb r0, [r1]
_0805E0B2:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	bl sub_08139920
	ldr r0, [r7]
	ldr r1, [r7, #4]
	bl sub_08139B74
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _0805E0CC
	movs r1, #2
_0805E0CC:
	ldr r0, [r7, #4]
	ldrb r2, [r0, #0xc]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0805E0DA
	movs r1, #5
_0805E0DA:
	cmp r1, #2
	bne _0805E0E8
	movs r0, #0x60
	ands r0, r2
	cmp r0, #0
	beq _0805E0E8
	movs r1, #5
_0805E0E8:
	subs r0, r1, #1
	cmp r0, #4
	bhi _0805E1CC
	lsls r0, r0, #2
	ldr r1, _0805E0F8 @ =_0805E0FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805E0F8: .4byte _0805E0FC
_0805E0FC: @ jump table
	.4byte _0805E1A4 @ case 0
	.4byte _0805E110 @ case 1
	.4byte _0805E198 @ case 2
	.4byte _0805E19E @ case 3
	.4byte _0805E1A4 @ case 4
_0805E110:
	adds r1, r7, #0
	adds r1, #0x30
	movs r0, #0xff
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x56
	ldrh r1, [r2]
	ldr r0, _0805E18C @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r7, #8]
	adds r1, r7, #0
	adds r1, #0x48
	ldrb r2, [r1]
	adds r1, #0x26
	ldrb r1, [r1]
	movs r3, #1
	ands r3, r1
	movs r1, #0x26
	bl sub_0801309C
	ldr r0, [r7, #8]
	bl sub_08012EA8
	adds r1, r7, #0
	adds r1, #0x6a
	movs r0, #0x26
	strh r0, [r1]
	ldrh r0, [r7, #0x22]
	strh r0, [r7, #0x20]
	ldrh r1, [r7, #0x1a]
	ldrh r0, [r7, #0x12]
	subs r0, r1, r0
	cmp r0, #0
	bge _0805E158
	rsbs r0, r0, #0
_0805E158:
	cmp r0, #0x50
	ble _0805E190
	adds r0, r1, #3
	strh r0, [r7, #0x1a]
	adds r1, r7, #0
	adds r1, #0x44
	strh r0, [r1]
	ldrh r2, [r7, #0x12]
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r2, r2, r0
	cmp r2, #0
	bge _0805E174
	rsbs r2, r2, #0
_0805E174:
	adds r0, r7, #0
	adds r0, #0x42
	strh r2, [r0]
	movs r1, #0xa
	movs r0, #0xa
	strh r0, [r7, #0x3a]
	movs r0, #0
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x24
	strb r1, [r0]
	b _0805E1CC
	.align 2, 0
_0805E18C: .4byte 0x0000F7FF
_0805E190:
	adds r1, r7, #0
	adds r1, #0x24
	movs r0, #8
	b _0805E1CA
_0805E198:
	movs r1, #4
	rsbs r1, r1, #0
	b _0805E1A8
_0805E19E:
	movs r1, #3
	rsbs r1, r1, #0
	b _0805E1A8
_0805E1A4:
	movs r1, #2
	rsbs r1, r1, #0
_0805E1A8:
	cmp r5, r1
	blt _0805E1BE
	adds r1, r7, #0
	adds r1, #0x24
	movs r2, #0
	movs r0, #0xc
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x42
	strh r2, [r0]
	b _0805E1CC
_0805E1BE:
	adds r1, r7, #0
	adds r1, #0x42
	movs r0, #0
	strh r0, [r1]
	subs r1, #0x1e
	movs r0, #0xd
_0805E1CA:
	strb r0, [r1]
_0805E1CC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805E1D4
sub_0805E1D4: @ 0x0805E1D4
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	beq _0805E212
	cmp r1, #1
	bgt _0805E1EA
	cmp r1, #0
	beq _0805E1F4
	b _0805E2A2
_0805E1EA:
	cmp r1, #2
	beq _0805E23A
	cmp r1, #3
	beq _0805E26A
	b _0805E2A2
_0805E1F4:
	adds r0, r3, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805E230
	cmp r0, #1
	bgt _0805E208
	cmp r0, #0
	beq _0805E260
	b _0805E2A2
_0805E208:
	cmp r0, #2
	beq _0805E29C
	cmp r0, #3
	bne _0805E2A2
	b _0805E288
_0805E212:
	adds r0, r3, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805E260
	cmp r0, #1
	bgt _0805E226
	cmp r0, #0
	beq _0805E230
	b _0805E2A2
_0805E226:
	cmp r0, #2
	beq _0805E29C
	cmp r0, #3
	beq _0805E292
	b _0805E2A2
_0805E230:
	adds r1, r3, #0
	adds r1, #0x64
	movs r0, #2
	strb r0, [r1]
	b _0805E2A2
_0805E23A:
	adds r0, r3, #0
	adds r0, #0x48
	ldrb r2, [r0]
	cmp r2, #1
	beq _0805E258
	cmp r2, #1
	bgt _0805E24E
	cmp r2, #0
	beq _0805E258
	b _0805E2A2
_0805E24E:
	cmp r2, #2
	beq _0805E260
	cmp r2, #3
	beq _0805E29C
	b _0805E2A2
_0805E258:
	adds r0, r3, #0
	adds r0, #0x64
	strb r2, [r0]
	b _0805E2A2
_0805E260:
	adds r1, r3, #0
	adds r1, #0x64
	movs r0, #3
	strb r0, [r1]
	b _0805E2A2
_0805E26A:
	adds r0, r3, #0
	adds r0, #0x48
	ldrb r1, [r0]
	cmp r1, #1
	beq _0805E292
	cmp r1, #1
	bgt _0805E27E
	cmp r1, #0
	beq _0805E288
	b _0805E2A2
_0805E27E:
	cmp r1, #2
	beq _0805E29C
	cmp r1, #3
	beq _0805E29C
	b _0805E2A2
_0805E288:
	adds r1, r3, #0
	adds r1, #0x64
	movs r0, #1
	strb r0, [r1]
	b _0805E2A2
_0805E292:
	adds r1, r3, #0
	adds r1, #0x64
	movs r0, #0
	strb r0, [r1]
	b _0805E2A2
_0805E29C:
	adds r0, r3, #0
	adds r0, #0x64
	strb r1, [r0]
_0805E2A2:
	adds r0, r3, #0
	bl sub_0805EB88
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805E2B0
sub_0805E2B0: @ 0x0805E2B0
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0
	beq _0805E2E6
	ldr r0, [r5, #4]
	ldrb r1, [r0, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0805E2E6
	adds r2, r5, #0
	adds r2, #0x56
	ldrh r1, [r2]
	ldr r0, _0805E314 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x48
	ldrb r2, [r1]
	adds r1, #0x26
	ldrb r1, [r1]
	movs r3, #1
	ands r3, r1
	movs r1, #6
	bl sub_0801309C
_0805E2E6:
	ldr r0, [r5, #4]
	ldrb r0, [r0, #0x14]
	bl sub_08058D6C
	movs r4, #0
	strh r0, [r5, #0x18]
	ldr r0, [r5, #4]
	ldrb r0, [r0, #0x15]
	bl sub_08058D6C
	strh r0, [r5, #0x1c]
	ldr r0, [r5, #0x34]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r5, #0x34]
	adds r0, r5, #0
	adds r0, #0x59
	strb r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805E314: .4byte 0x0000F7FF

	thumb_func_start sub_0805E318
sub_0805E318: @ 0x0805E318
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	cmp r0, #0
	bne _0805E324
	b _0805E486
_0805E324:
	adds r7, r0, #0
	bl sub_0806D918
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805E33C
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805E342
_0805E33C:
	movs r0, #1
	rsbs r0, r0, #0
	b _0805E492
_0805E342:
	ldr r0, [r7, #0x34]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _0805E350
	b _0805E486
_0805E350:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #4
	bls _0805E35E
	b _0805E490
_0805E35E:
	lsls r0, r1, #2
	ldr r1, _0805E368 @ =_0805E36C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805E368: .4byte _0805E36C
_0805E36C: @ jump table
	.4byte _0805E380 @ case 0
	.4byte _0805E460 @ case 1
	.4byte _0805E46E @ case 2
	.4byte _0805E486 @ case 3
	.4byte _0805E486 @ case 4
_0805E380:
	ldrh r1, [r7, #0x18]
	ldrh r0, [r7, #0x10]
	subs r4, r1, r0
	ldrh r1, [r7, #0x1c]
	ldrh r0, [r7, #0x14]
	subs r5, r1, r0
	cmp r4, #0
	beq _0805E3A0
	adds r1, r4, #0
	cmp r4, #0
	bge _0805E398
	rsbs r1, r4, #0
_0805E398:
	adds r0, r4, #0
	bl __divsi3
	adds r4, r0, #0
_0805E3A0:
	cmp r5, #0
	beq _0805E3B4
	adds r1, r5, #0
	cmp r5, #0
	bge _0805E3AC
	rsbs r1, r5, #0
_0805E3AC:
	adds r0, r5, #0
	bl __divsi3
	adds r5, r0, #0
_0805E3B4:
	lsls r0, r4, #3
	ldrh r1, [r7, #0x10]
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	lsls r1, r5, #3
	ldrh r2, [r7, #0x14]
	adds r1, r1, r2
	strh r1, [r7, #0x14]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r7, #0x18]
	cmp r0, r2
	bne _0805E490
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7, #0x1c]
	cmp r0, r1
	bne _0805E490
	ldr r5, [r7]
	ldr r6, [r7, #4]
	ldrh r0, [r7, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r7, #0x14]
	bl sub_08058D5C
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0804C3F8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r7, #0x12]
	bl sub_08058D64
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xc1
	rsbs r1, r1, #0
	ands r4, r1
	cmp r0, r4
	bne _0805E458
	ldr r0, [r7, #0x34]
	ldr r1, _0805E450 @ =0xFFFEFFFF
	ands r0, r1
	str r0, [r7, #0x34]
	movs r0, #4
	mov r2, r8
	strb r0, [r2]
	adds r4, r7, #0
	adds r4, #0x5a
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805E490
	ldr r0, _0805E454 @ =0x00007FFF
	ands r0, r1
	strh r0, [r4]
	ldrh r1, [r4]
	adds r0, r7, #0
	movs r2, #0
	movs r3, #1
	bl sub_08076158
	movs r0, #0
	strh r0, [r4]
	b _0805E490
	.align 2, 0
_0805E450: .4byte 0xFFFEFFFF
_0805E454: .4byte 0x00007FFF
_0805E458:
	movs r0, #1
	mov r1, r8
	strb r0, [r1]
	b _0805E490
_0805E460:
	movs r0, #2
	mov r2, r8
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_0805E02C
	b _0805E490
_0805E46E:
	adds r0, r7, #0
	bl sub_0805D390
	cmp r0, #0
	beq _0805E490
	ldr r0, [r7, #0x34]
	ldr r1, _0805E48C @ =0xFFFEFFFF
	ands r0, r1
	str r0, [r7, #0x34]
	movs r0, #3
	mov r1, r8
	strb r0, [r1]
_0805E486:
	movs r0, #1
	b _0805E492
	.align 2, 0
_0805E48C: .4byte 0xFFFEFFFF
_0805E490:
	movs r0, #0
_0805E492:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805E49C
sub_0805E49C: @ 0x0805E49C
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0
	strh r0, [r1]
	adds r1, r4, #0
	ldr r5, _0805E4D0 @ =0xFFFF0F7E
	movs r2, #0
_0805E4B2:
	ldr r0, [r1, #0x34]
	ands r0, r5
	str r0, [r1, #0x34]
	subs r2, #1
	adds r1, #0xd0
	cmp r2, #0
	bge _0805E4B2
	cmp r3, #1
	beq _0805E4E6
	cmp r3, #1
	bgt _0805E4D4
	cmp r3, #0
	beq _0805E4DE
	b _0805E4FE
	.align 2, 0
_0805E4D0: .4byte 0xFFFF0F7E
_0805E4D4:
	cmp r3, #2
	beq _0805E4EE
	cmp r3, #3
	beq _0805E4F6
	b _0805E4FE
_0805E4DE:
	adds r1, r4, #0
	adds r1, #0x48
	movs r0, #2
	b _0805E4FC
_0805E4E6:
	adds r1, r4, #0
	adds r1, #0x48
	movs r0, #3
	b _0805E4FC
_0805E4EE:
	adds r1, r4, #0
	adds r1, #0x48
	movs r0, #0
	b _0805E4FC
_0805E4F6:
	adds r1, r4, #0
	adds r1, #0x48
	movs r0, #1
_0805E4FC:
	strb r0, [r1]
_0805E4FE:
	ldr r0, [r4, #0x34]
	ldr r1, _0805E520 @ =0xFFFFE0FF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r4, #0x34]
	cmp r3, #1
	beq _0805E5E2
	cmp r3, #1
	bgt _0805E524
	cmp r3, #0
	beq _0805E52E
	b _0805E690
	.align 2, 0
_0805E520: .4byte 0xFFFFE0FF
_0805E524:
	cmp r3, #2
	beq _0805E52E
	cmp r3, #3
	beq _0805E5E2
	b _0805E690
_0805E52E:
	ldr r0, [r4, #4]
	ldrb r2, [r0, #0x15]
	subs r1, r2, #1
	cmp r1, #0
	bge _0805E53E
	ldrb r0, [r0, #0x14]
	adds r1, r2, #0
	b _0805E544
_0805E53E:
	ldrb r0, [r0, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
_0805E544:
	bl sub_08028728
	adds r7, r0, #0
	ldr r0, [r4, #4]
	ldrb r2, [r0, #0x15]
	adds r1, r2, #1
	cmp r1, #0x1f
	ble _0805E55A
	ldrb r0, [r0, #0x14]
	adds r1, r2, #0
	b _0805E55C
_0805E55A:
	ldrb r0, [r0, #0x14]
_0805E55C:
	bl sub_08028728
	adds r5, r0, #0
	ldr r1, [r4, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	bl sub_08028728
	adds r3, r0, #0
	ldrb r0, [r3, #1]
	movs r6, #0xc1
	rsbs r6, r6, #0
	adds r1, r6, #0
	ands r1, r0
	ldrb r2, [r5, #1]
	adds r0, r6, #0
	ands r0, r2
	cmp r1, r0
	blt _0805E5C0
	ldrb r0, [r3, #1]
	adds r1, r6, #0
	ands r1, r0
	ldrb r2, [r7, #1]
	adds r0, r6, #0
	ands r0, r2
	cmp r1, r0
	blt _0805E5C0
	bl sub_0813B0CC
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0805E5A2
	adds r0, #0x7f
_0805E5A2:
	asrs r0, r0, #7
	lsls r0, r0, #7
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3f
	bgt _0805E5B8
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	b _0805E68C
_0805E5B8:
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #4
	b _0805E68C
_0805E5C0:
	ldrb r2, [r3, #1]
	movs r0, #0xc1
	rsbs r0, r0, #0
	adds r1, r0, #0
	ands r1, r2
	ldrb r2, [r5, #1]
	ands r0, r2
	cmp r1, r0
	bge _0805E5DA
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	b _0805E68C
_0805E5DA:
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #4
	b _0805E68C
_0805E5E2:
	ldr r2, [r4, #4]
	ldrb r1, [r2, #0x15]
	subs r0, r1, #1
	cmp r0, #0
	bge _0805E5F0
	ldrb r0, [r2, #0x14]
	b _0805E5F8
_0805E5F0:
	ldrb r0, [r2, #0x14]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0805E5F8:
	bl sub_08028728
	adds r7, r0, #0
	ldr r2, [r4, #4]
	ldrb r1, [r2, #0x15]
	adds r0, r1, #1
	cmp r0, #0x1f
	ble _0805E60C
	ldrb r0, [r2, #0x14]
	b _0805E610
_0805E60C:
	ldrb r0, [r2, #0x14]
	adds r0, #1
_0805E610:
	bl sub_08028728
	adds r5, r0, #0
	ldr r1, [r4, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	bl sub_08028728
	adds r3, r0, #0
	ldrb r0, [r3, #1]
	movs r6, #0xc1
	rsbs r6, r6, #0
	adds r1, r6, #0
	ands r1, r0
	ldrb r2, [r5, #1]
	adds r0, r6, #0
	ands r0, r2
	cmp r1, r0
	blt _0805E66C
	ldrb r0, [r3, #1]
	adds r1, r6, #0
	ands r1, r0
	ldrb r2, [r7, #1]
	adds r0, r6, #0
	ands r0, r2
	cmp r1, r0
	blt _0805E66C
	bl sub_0813B0CC
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0805E656
	adds r0, #0x7f
_0805E656:
	asrs r0, r0, #7
	lsls r0, r0, #7
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3f
	ble _0805E686
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #2
	b _0805E68C
_0805E66C:
	ldrb r2, [r3, #1]
	movs r0, #0xc1
	rsbs r0, r0, #0
	adds r1, r0, #0
	ands r1, r2
	ldrb r2, [r5, #1]
	ands r0, r2
	cmp r1, r0
	bge _0805E686
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #2
	b _0805E68C
_0805E686:
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #1
_0805E68C:
	orrs r0, r1
	str r0, [r4, #0x34]
_0805E690:
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, r4, #0
	movs r1, #9
	bl sub_0805DDB4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805E6AC
sub_0805E6AC: @ 0x0805E6AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	adds r2, r5, #0
	ldr r1, [r2, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	bne _0805E6C6
	movs r0, #1
	rsbs r0, r0, #0
	b _0805E7BC
_0805E6C6:
	movs r0, #0x90
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	bne _0805E78A
	adds r1, r2, #0
	adds r1, #0x44
	ldrh r3, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _0805E6E8
	adds r0, r3, #1
	strh r0, [r1]
	b _0805E786
_0805E6E8:
	strh r4, [r1]
	adds r0, r2, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r1, #0x1f
	ble _0805E706
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r2, #0x34]
	movs r0, #0
	b _0805E788
_0805E706:
	cmp r1, #0xf
	bgt _0805E73A
	ldr r1, [r2, #0x34]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805E758
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805E746
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0805E77A
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0805E780
	ldrh r0, [r2, #0x14]
	adds r0, #4
	b _0805E77E
_0805E73A:
	ldr r1, [r2, #0x34]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805E74E
_0805E746:
	ldrh r0, [r2, #0x10]
	adds r0, #4
	strh r0, [r2, #0x10]
	b _0805E780
_0805E74E:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805E760
_0805E758:
	ldrh r0, [r2, #0x10]
	subs r0, #4
	strh r0, [r2, #0x10]
	b _0805E780
_0805E760:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0805E770
	ldrh r0, [r2, #0x14]
	adds r0, #4
	b _0805E77E
_0805E770:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0805E780
_0805E77A:
	ldrh r0, [r2, #0x14]
	subs r0, #4
_0805E77E:
	strh r0, [r2, #0x14]
_0805E780:
	ldrh r0, [r3]
	adds r0, #4
	strh r0, [r3]
_0805E786:
	movs r0, #1
_0805E788:
	adds r4, r0, #0
_0805E78A:
	cmp r4, #1
	bne _0805E792
	movs r0, #0
	b _0805E7BC
_0805E792:
	ldr r0, [r2, #0x34]
	ldr r1, _0805E7C4 @ =0xFFFDFFFF
	ands r0, r1
	str r0, [r2, #0x34]
	adds r1, r5, #0
	adds r3, r2, #0
	adds r3, #0x56
	ldr r4, _0805E7C8 @ =0xFFFF0F7E
	movs r2, #0
_0805E7A4:
	ldr r0, [r1, #0x34]
	ands r0, r4
	str r0, [r1, #0x34]
	subs r2, #1
	adds r1, #0xd0
	cmp r2, #0
	bge _0805E7A4
	ldrh r1, [r3]
	ldr r0, _0805E7CC @ =0x0000F7FF
	ands r0, r1
	strh r0, [r3]
	movs r0, #1
_0805E7BC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805E7C4: .4byte 0xFFFDFFFF
_0805E7C8: .4byte 0xFFFF0F7E
_0805E7CC: .4byte 0x0000F7FF

	thumb_func_start sub_0805E7D0
sub_0805E7D0: @ 0x0805E7D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	bl sub_0805B308
	adds r7, r0, #0
	movs r0, #0x19
	str r0, [sp]
	movs r1, #0x6e
	adds r1, r1, r7
	mov sl, r1
	movs r2, #0x48
	adds r2, r2, r7
	mov r8, r2
_0805E7F4:
	adds r0, r7, #0
	bl sub_0806D918
	adds r1, r0, #0
	movs r3, #1
	ands r0, r3
	movs r2, #0x6a
	adds r2, r2, r7
	mov sb, r2
	cmp r0, #0
	bne _0805E80C
	b _0805E918
_0805E80C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805E816
	b _0805E918
_0805E816:
	movs r3, #0
	str r3, [sp, #4]
	cmp r7, #0
	beq _0805E824
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0805E828
_0805E824:
	movs r0, #0
	b _0805E8FE
_0805E828:
	ldrh r0, [r7, #0x10]
	bl sub_08058D5C
	ldr r1, [r7, #4]
	strb r0, [r1, #0x14]
	ldrh r0, [r7, #0x14]
	bl sub_08058D5C
	ldr r1, [r7, #4]
	strb r0, [r1, #0x15]
	ldr r1, [r7, #4]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r1, #0x16]
	ldr r5, [r7]
	ldr r6, [r7, #4]
	ldrh r0, [r7, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r7, #0x14]
	bl sub_08058D5C
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0804C3F8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r3, sb
	ldrb r1, [r3, #4]
	movs r0, #1
	ands r1, r0
	movs r0, #0x80
	ands r0, r4
	mov r2, sl
	cmp r0, #0
	beq _0805E88A
	cmp r4, #0xff
	beq _0805E88A
	movs r0, #1
	strb r0, [r3, #4]
	b _0805E894
_0805E88A:
	movs r0, #0
	strb r0, [r2]
	movs r0, #2
	mov r3, r8
	strh r0, [r3, #0x22]
_0805E894:
	ldrb r2, [r2]
	cmp r1, r2
	beq _0805E89E
	movs r0, #1
	str r0, [sp, #4]
_0805E89E:
	ldr r1, [r7, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	bl sub_08028728
	cmp r4, #0xff
	bne _0805E8BA
	ldrb r1, [r0, #1]
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r0, r1
	bl sub_08058D78
	b _0805E8C4
_0805E8BA:
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r0, r4
	bl sub_08058D78
_0805E8C4:
	movs r4, #0
	strh r0, [r7, #0x12]
	ldr r0, [r7, #4]
	ldrb r0, [r0, #0x14]
	bl sub_08058D6C
	strh r0, [r7, #0x10]
	ldr r0, [r7, #4]
	ldrb r0, [r0, #0x15]
	bl sub_08058D6C
	strh r0, [r7, #0x14]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	str r0, [r7, #0x18]
	str r1, [r7, #0x1c]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	bl sub_08139B74
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _0805E8F8
	mov r1, r8
	strb r0, [r1, #3]
	b _0805E8FC
_0805E8F8:
	mov r2, r8
	strb r4, [r2, #3]
_0805E8FC:
	ldr r0, [sp, #4]
_0805E8FE:
	cmp r0, #1
	bne _0805E918
	adds r0, r7, #0
	movs r1, #8
	bl sub_0805DDB4
	mov r3, r8
	ldrh r1, [r3, #0x30]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #0x30]
_0805E918:
	ldr r3, [sp]
	subs r3, #1
	str r3, [sp]
	movs r0, #0xd0
	add sl, r0
	add r8, r0
	adds r7, #0xd0
	cmp r3, #0
	blt _0805E92C
	b _0805E7F4
_0805E92C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0805E93C
sub_0805E93C: @ 0x0805E93C
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r5
	ldr r4, _0805E958 @ =gUnk_0202A54C
	cmp r1, #1
	bne _0805E95C
	adds r0, r4, #0
	movs r1, #4
	bl memzero
	b _0805EA34
	.align 2, 0
_0805E958: .4byte gUnk_0202A54C
_0805E95C:
	ldrb r1, [r4]
	cmp r1, #8
	bhi _0805EA1C
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0805E96E
	subs r0, #1
	strb r0, [r4, #1]
	b _0805EA34
_0805E96E:
	adds r0, r1, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _0805E9C0
	adds r2, r5, #0
	adds r2, #0x56
	ldrh r1, [r2]
	ldr r0, _0805E9BC @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r5, #8]
	adds r4, r5, #0
	adds r4, #0x48
	ldrb r2, [r4]
	adds r1, r5, #0
	adds r1, #0x6e
	ldrb r1, [r1]
	movs r3, #1
	ands r3, r1
	movs r1, #0xe
	bl sub_0801309C
	ldr r0, [r5, #8]
	movs r1, #0xa
	bl sub_08012FB0
	ldr r0, [r5, #4]
	ldrb r0, [r0, #0x16]
	strb r0, [r4]
	adds r2, r5, #0
	adds r2, #0x78
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	b _0805EA34
	.align 2, 0
_0805E9BC: .4byte 0x0000F7FF
_0805E9C0:
	ldr r0, [r5, #4]
	ldrb r2, [r0, #0x16]
	cmp r2, #1
	bhi _0805E9DC
	ldr r0, _0805E9D8 @ =gUnk_0860EF85
	ldrb r1, [r4]
	adds r0, r1, r0
	ldrb r3, [r0]
	cmp r2, #0
	beq _0805E9EC
	b _0805E9E8
	.align 2, 0
_0805E9D8: .4byte gUnk_0860EF85
_0805E9DC:
	ldr r0, _0805EA14 @ =gUnk_0860EF70
	ldrb r1, [r4]
	adds r0, r1, r0
	ldrb r3, [r0]
	cmp r2, #2
	beq _0805E9EC
_0805E9E8:
	movs r0, #1
	eors r3, r0
_0805E9EC:
	ldr r0, _0805EA18 @ =gUnk_0860EF9A
	adds r0, r1, r0
	ldrb r0, [r0]
	subs r0, #1
	strb r0, [r4, #1]
	cmp r3, #3
	ble _0805E9FC
	subs r3, #3
_0805E9FC:
	mov r0, ip
	adds r0, #0x48
	strb r3, [r0]
	mov r1, ip
	adds r1, #0x4a
	movs r0, #2
	strb r0, [r1]
	mov r0, ip
	movs r1, #0xb
	bl sub_0805DDB4
	b _0805EA34
	.align 2, 0
_0805EA14: .4byte gUnk_0860EF70
_0805EA18: .4byte gUnk_0860EF9A
_0805EA1C:
	ldr r0, [r5, #8]
	bl sub_08012E34
	cmp r0, #0
	beq _0805EA34
	ldr r0, [r5, #4]
	ldrb r1, [r0, #0x16]
	adds r0, r5, #0
	adds r0, #0x48
	strb r1, [r0]
	movs r0, #0
	b _0805EA36
_0805EA34:
	movs r0, #1
_0805EA36:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805EA3C
sub_0805EA3C: @ 0x0805EA3C
	push {r4, r5, r6, lr}
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r6, #0x19
_0805EA48:
	adds r0, r4, #0
	bl sub_0806D918
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805EA8C
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0805EA8C
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0805EA8C
	adds r5, r4, #0
	adds r5, #0x4a
	strb r2, [r5]
	adds r0, r4, #0
	movs r1, #0xb
	bl sub_0805DDB4
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0805EA8C
	ldr r0, [r4, #8]
	ldrb r1, [r5]
	bl sub_08012FB0
_0805EA8C:
	subs r6, #1
	adds r4, #0xd0
	cmp r6, #0
	bge _0805EA48
	bl sub_0806DA00
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805EAA0
sub_0805EAA0: @ 0x0805EAA0
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r1, _0805EAE8 @ =gUnk_02029E90
	ldr r0, [r1]
	cmp r4, r0
	bge _0805EAC0
	adds r5, r1, #0
	adds r6, r5, #4
_0805EAB0:
	ldm r6!, {r0}
	movs r1, #8
	bl sub_0805DDB4
	adds r4, #1
	ldr r0, [r5]
	cmp r4, r0
	blt _0805EAB0
_0805EAC0:
	movs r4, #0
	ldr r1, _0805EAE8 @ =gUnk_02029E90
	ldr r0, [r1, #0x30]
	cmp r4, r0
	bge _0805EAE2
	adds r6, r1, #0
	adds r5, r6, #0
	adds r5, #0x34
_0805EAD0:
	ldr r0, [r5]
	movs r1, #8
	bl sub_0805DDB4
	adds r5, #0x10
	adds r4, #1
	ldr r0, [r6, #0x30]
	cmp r4, r0
	blt _0805EAD0
_0805EAE2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805EAE8: .4byte gUnk_02029E90

	thumb_func_start sub_0805EAEC
sub_0805EAEC: @ 0x0805EAEC
	push {r4, r5, lr}
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r5, #0x19
_0805EAF8:
	adds r0, r4, #0
	bl sub_0806D918
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805EB32
	ldr r0, [r4]
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805EB32
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805EB32
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805EB2A
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0805EB32
_0805EB2A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0805DDB4
_0805EB32:
	subs r5, #1
	adds r4, #0xd0
	cmp r5, #0
	bge _0805EAF8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805EB40
sub_0805EB40: @ 0x0805EB40
	push {lr}
	movs r1, #0
	bl sub_0805B5E8
	pop {r0}
	bx r0

	thumb_func_start sub_0805EB4C
sub_0805EB4C: @ 0x0805EB4C
	push {lr}
	bl sub_0805D390
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EB58
sub_0805EB58: @ 0x0805EB58
	adds r2, r0, #0
	cmp r1, #0
	ble _0805EB6E
	ldr r3, _0805EB70 @ =0xFFFF0F7E
_0805EB60:
	ldr r0, [r2, #0x34]
	ands r0, r3
	str r0, [r2, #0x34]
	subs r1, #1
	adds r2, #0xd0
	cmp r1, #0
	bne _0805EB60
_0805EB6E:
	bx lr
	.align 2, 0
_0805EB70: .4byte 0xFFFF0F7E

	thumb_func_start sub_0805EB74
sub_0805EB74: @ 0x0805EB74
	adds r0, #0x44
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805EB82
	movs r0, #0
	b _0805EB84
_0805EB82:
	movs r0, #1
_0805EB84:
	bx lr
	.align 2, 0

	thumb_func_start sub_0805EB88
sub_0805EB88: @ 0x0805EB88
	push {lr}
	adds r3, r0, #0
	cmp r3, #0
	beq _0805EBC8
	ldr r0, [r3, #4]
	ldrb r1, [r0, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0805EBC8
	adds r2, r3, #0
	adds r2, #0x56
	ldrh r1, [r2]
	ldr r0, _0805EBC4 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x48
	ldrb r2, [r1]
	adds r1, #0x26
	ldrb r1, [r1]
	movs r3, #1
	ands r3, r1
	movs r1, #6
	bl sub_0801309C
	movs r0, #1
	b _0805EBCA
	.align 2, 0
_0805EBC4: .4byte 0x0000F7FF
_0805EBC8:
	movs r0, #0
_0805EBCA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EBD0
sub_0805EBD0: @ 0x0805EBD0
	push {lr}
	adds r2, r0, #0
	adds r2, #0x4a
	ldrb r3, [r2]
	adds r2, #2
	strb r3, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0805B754
	pop {r0}
	bx r0

	thumb_func_start sub_0805EBE8
sub_0805EBE8: @ 0x0805EBE8
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r3, r2, #0
	adds r3, #0x44
	ldrh r4, [r3]
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	bge _0805EC04
	adds r0, r4, #1
	strh r0, [r3]
	b _0805ECA4
_0805EC04:
	movs r0, #0
	strh r0, [r3]
	adds r0, r2, #0
	adds r0, #0x42
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r4, r0, #0
	cmp r3, #0x1f
	ble _0805EC24
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r2, #0x34]
	movs r0, #0
	b _0805ECA6
_0805EC24:
	cmp r3, #0xf
	bgt _0805EC58
	ldr r3, [r2, #0x34]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	bne _0805EC76
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	cmp r0, #0
	bne _0805EC64
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _0805EC98
	movs r0, #0x80
	lsls r0, r0, #4
	ands r3, r0
	cmp r3, #0
	beq _0805EC9E
	ldrh r0, [r2, #0x14]
	adds r0, r0, r1
	b _0805EC9C
_0805EC58:
	ldr r3, [r2, #0x34]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0805EC6C
_0805EC64:
	ldrh r0, [r2, #0x10]
	adds r0, r0, r1
	strh r0, [r2, #0x10]
	b _0805EC9E
_0805EC6C:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0805EC7E
_0805EC76:
	ldrh r0, [r2, #0x10]
	subs r0, r0, r1
	strh r0, [r2, #0x10]
	b _0805EC9E
_0805EC7E:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	beq _0805EC8E
	ldrh r0, [r2, #0x14]
	adds r0, r0, r1
	b _0805EC9C
_0805EC8E:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r3, r0
	cmp r3, #0
	beq _0805EC9E
_0805EC98:
	ldrh r0, [r2, #0x14]
	subs r0, r0, r1
_0805EC9C:
	strh r0, [r2, #0x14]
_0805EC9E:
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_0805ECA4:
	movs r0, #1
_0805ECA6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805ECAC
sub_0805ECAC: @ 0x0805ECAC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x78
	ldrh r1, [r6]
	movs r0, #1
	movs r2, #0
	orrs r1, r0
	strh r1, [r6]
	adds r7, r5, #0
	adds r7, #0x42
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r0, #0
	beq _0805ED34
	ldr r0, [r5, #8]
	bl sub_08012E34
	cmp r0, #0
	beq _0805ED6C
	ldr r0, [r5, #0x34]
	ldr r1, _0805ED28 @ =0xFFFFDFFF
	ands r0, r1
	str r0, [r5, #0x34]
	adds r2, r5, #0
	adds r2, #0x56
	ldrh r1, [r2]
	ldr r0, _0805ED2C @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x6a
	ldrh r1, [r1]
	subs r2, #0xe
	ldrb r2, [r2]
	adds r3, r5, #0
	adds r3, #0x6e
	ldrb r4, [r3]
	movs r3, #1
	ands r3, r4
	bl sub_0801309C
	ldrh r1, [r6]
	ldr r0, _0805ED30 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r6]
	ldr r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x4a
	ldrb r1, [r1]
	bl sub_08012FB0
	ldr r0, [r5, #8]
	bl sub_08012F5C
	ldr r0, [r5, #8]
	bl sub_08012EA8
	movs r0, #0
	b _0805ED6E
	.align 2, 0
_0805ED28: .4byte 0xFFFFDFFF
_0805ED2C: .4byte 0x0000F7FF
_0805ED30: .4byte 0x0000FFDF
_0805ED34:
	movs r0, #0x20
	orrs r1, r0
	strh r1, [r6]
	adds r2, r5, #0
	adds r2, #0x56
	ldrh r1, [r2]
	ldr r0, _0805ED74 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x48
	ldrb r2, [r1]
	adds r1, #0x26
	ldrb r1, [r1]
	movs r4, #1
	adds r3, r4, #0
	ands r3, r1
	movs r1, #0x3a
	bl sub_0801309C
	ldr r0, [r5, #8]
	bl sub_08012EE4
	ldr r0, [r5, #8]
	bl sub_08012F5C
	strh r4, [r7]
_0805ED6C:
	movs r0, #1
_0805ED6E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805ED74: .4byte 0x0000F7FF

	thumb_func_start sub_0805ED78
sub_0805ED78: @ 0x0805ED78
	push {r4, r5, lr}
	movs r0, #0
	bl sub_0806D808
	adds r4, r0, #0
	movs r5, #0x19
_0805ED84:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805EDBC
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805EDBC
	adds r0, r4, #0
	bl sub_0806D918
	adds r1, r0, #0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805EDBC
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805EDB4
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0805EDBC
_0805EDB4:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_0805DDB4
_0805EDBC:
	subs r5, #1
	adds r4, #0xd0
	cmp r5, #0
	bge _0805ED84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805EDCC
sub_0805EDCC: @ 0x0805EDCC
	movs r2, #0
	strh r2, [r0, #0x38]
	strh r2, [r0, #0x3a]
	strh r2, [r0, #0x3c]
	strh r2, [r0, #0x3e]
	adds r1, r0, #0
	adds r1, #0x40
	strh r2, [r1]
	adds r0, #0x44
	strh r2, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0805EDE4
sub_0805EDE4: @ 0x0805EDE4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r0, #0
	mov r8, r0
	cmp r7, #0
	beq _0805EEDA
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0805EDFE
	movs r0, #0
	b _0805EEDA
_0805EDFE:
	ldrh r0, [r7, #0x10]
	bl sub_08058D5C
	ldr r1, [r7, #4]
	strb r0, [r1, #0x14]
	ldrh r0, [r7, #0x14]
	bl sub_08058D5C
	ldr r1, [r7, #4]
	strb r0, [r1, #0x15]
	ldr r1, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x48
	ldrb r0, [r0]
	strb r0, [r1, #0x16]
	ldr r5, [r7]
	ldr r6, [r7, #4]
	ldrh r0, [r7, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r7, #0x14]
	bl sub_08058D5C
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0804C3F8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r1, r7, #0
	adds r1, #0x6e
	ldrb r3, [r1]
	movs r2, #1
	ands r3, r2
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _0805EE60
	cmp r4, #0xff
	beq _0805EE60
	strb r2, [r1]
	b _0805EE6C
_0805EE60:
	movs r0, #0
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x6a
	movs r0, #2
	strh r0, [r2]
_0805EE6C:
	ldrb r1, [r1]
	cmp r3, r1
	beq _0805EE76
	movs r0, #1
	mov r8, r0
_0805EE76:
	ldr r1, [r7, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	bl sub_08028728
	cmp r4, #0xff
	bne _0805EE92
	ldrb r1, [r0, #1]
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r0, r1
	bl sub_08058D78
	b _0805EE9C
_0805EE92:
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r0, r4
	bl sub_08058D78
_0805EE9C:
	strh r0, [r7, #0x12]
	ldr r0, [r7, #4]
	ldrb r0, [r0, #0x14]
	bl sub_08058D6C
	strh r0, [r7, #0x10]
	ldr r0, [r7, #4]
	ldrb r0, [r0, #0x15]
	bl sub_08058D6C
	strh r0, [r7, #0x14]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	str r0, [r7, #0x18]
	str r1, [r7, #0x1c]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	bl sub_08139B74
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne _0805EED0
	adds r0, r7, #0
	adds r0, #0x4b
	strb r1, [r0]
	b _0805EED8
_0805EED0:
	adds r1, r7, #0
	adds r1, #0x4b
	movs r0, #0
	strb r0, [r1]
_0805EED8:
	mov r0, r8
_0805EEDA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805EEE4
sub_0805EEE4: @ 0x0805EEE4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r0, #0x80
	movs r1, #0
	bl sub_08142FC4
	movs r0, #0x81
	movs r1, #0
	bl sub_08142FC4
	movs r4, #0
	movs r5, #0x82
	lsls r5, r5, #0x10
_0805EF04:
	lsrs r0, r5, #0x10
	movs r1, #0
	bl sub_08142FC4
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #7
	ble _0805EF04
	movs r4, #0
	movs r5, #0x8a
	lsls r5, r5, #0x10
_0805EF1E:
	lsrs r0, r5, #0x10
	movs r1, #0
	bl sub_08142FC4
	movs r1, #0x80
	lsls r1, r1, #9
	adds r5, r5, r1
	adds r4, #1
	cmp r4, #7
	ble _0805EF1E
	bl sub_0814301C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805EFD4
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805EFD4
	ldr r0, _0805EFE4 @ =gUnk_02029D80
	ldr r4, [r0, #4]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x10
	bl sub_08143B70
	adds r1, r0, #0
	movs r0, #0x80
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x80
	bl sub_08142FC4
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r3, #0
	movs r2, #0
_0805EF74:
	movs r6, #0
	ldr r1, _0805EFE8 @ =gUnk_02029E90
	ldr r0, [r1, #0x30]
	adds r2, #1
	mov r8, r2
	movs r2, #0xd0
	adds r2, r2, r4
	mov sb, r2
	cmp r6, r0
	bge _0805EFCC
	adds r7, r1, #0
	lsls r0, r3, #0x10
	movs r1, #0x82
	lsls r1, r1, #0x10
	adds r5, r0, r1
_0805EF92:
	lsls r0, r6, #4
	adds r1, r7, #0
	adds r1, #0x34
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bne _0805EFC4
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #0x10
	str r3, [sp]
	bl sub_08143B70
	movs r1, #0x80
	orrs r1, r0
	lsrs r0, r5, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08142FC4
	movs r2, #0x80
	lsls r2, r2, #9
	adds r5, r5, r2
	ldr r3, [sp]
	adds r3, #1
_0805EFC4:
	adds r6, #1
	ldr r0, [r7, #0x30]
	cmp r6, r0
	blt _0805EF92
_0805EFCC:
	mov r2, r8
	mov r4, sb
	cmp r2, #0x19
	ble _0805EF74
_0805EFD4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805EFE4: .4byte gUnk_02029D80
_0805EFE8: .4byte gUnk_02029E90

	thumb_func_start sub_0805EFEC
sub_0805EFEC: @ 0x0805EFEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r4, _0805F04C @ =gUnk_0202A890
	adds r0, r4, #0
	movs r1, #0x44
	bl memzero
	mov r8, r4
	mov r1, r8
	adds r1, #0x40
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r6, #0
	movs r2, #1
	movs r5, #0x19
	mov sb, r8
	movs r7, #0x80
_0805F024:
	adds r0, r4, #0
	str r2, [sp]
	bl sub_0806D918
	ldr r2, [sp]
	ands r0, r2
	cmp r0, #0
	beq _0805F07C
	mov r0, sl
	cmp r0, #0
	bne _0805F050
	ldr r0, [r4]
	adds r0, #0x5d
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _0805F07C
	b _0805F05E
	.align 2, 0
_0805F04C: .4byte gUnk_0202A890
_0805F050:
	ldr r0, [r4]
	adds r0, #0x5d
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0805F07C
_0805F05E:
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x17]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0805F070
	mov r0, r8
	adds r0, #0x40
	strb r6, [r0]
_0805F070:
	mov r0, sb
	adds r0, #4
	mov sb, r0
	subs r0, #4
	stm r0!, {r4}
	adds r6, #1
_0805F07C:
	subs r5, #1
	adds r4, #0xd0
	cmp r5, #0
	bge _0805F024
	mov r0, r8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805F098
sub_0805F098: @ 0x0805F098
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	mov r8, r0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0xc
	bls _0805F0B0
	b _0805F520
_0805F0B0:
	lsls r0, r0, #2
	ldr r1, _0805F0BC @ =_0805F0C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805F0BC: .4byte _0805F0C0
_0805F0C0: @ jump table
	.4byte _0805F0F4 @ case 0
	.4byte _0805F124 @ case 1
	.4byte _0805F130 @ case 2
	.4byte _0805F164 @ case 3
	.4byte _0805F1DA @ case 4
	.4byte _0805F204 @ case 5
	.4byte _0805F2C4 @ case 6
	.4byte _0805F2E4 @ case 7
	.4byte _0805F346 @ case 8
	.4byte _0805F39C @ case 9
	.4byte _0805F428 @ case 10
	.4byte _0805F464 @ case 11
	.4byte _0805F508 @ case 12
_0805F0F4:
	bl sub_08076260
	ldr r0, _0805F120 @ =gUnk_03000FA0
	adds r1, r0, #0
	adds r1, #0x35
	ldrb r1, [r1]
	mov r2, r8
	adds r2, #0x41
	strb r1, [r2]
	adds r0, #0x37
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #0x42
	strb r0, [r1]
	movs r0, #0x41
	bl sub_0806C2A4
	mov r1, r8
	adds r1, #0x43
	movs r0, #1
	b _0805F51E
	.align 2, 0
_0805F120: .4byte gUnk_03000FA0
_0805F124:
	bl sub_0806BC68
	cmp r0, #0
	bne _0805F12E
	b _0805F520
_0805F12E:
	b _0805F518
_0805F130:
	ldr r2, _0805F160 @ =gUnk_03000FA0
	mov r0, r8
	adds r0, #0x41
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x35
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x42
	ldrb r0, [r0]
	adds r1, #2
	strb r0, [r1]
	adds r1, #0x1a
	movs r0, #1
	strb r0, [r1]
	bl sub_0807628C
	bl sub_08075E24
	bl sub_0806FDE4
	movs r0, #0
	b _0805F522
	.align 2, 0
_0805F160: .4byte gUnk_03000FA0
_0805F164:
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075E08
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075E08
	ldr r4, _0805F1A8 @ =gUnk_03000FA0
	adds r1, r4, #0
	adds r1, #0x51
	movs r0, #0
	strb r0, [r1]
	bl sub_08075E24
	bl sub_0806FDE4
	mov r1, r8
	adds r1, #0x40
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0805F1AC
	adds r1, r4, #0
	adds r1, #0x35
	movs r0, #1
	strb r0, [r1]
	adds r1, #2
	movs r0, #4
	strb r0, [r1]
	mov r1, r8
	adds r1, #0x43
	movs r0, #5
	b _0805F51E
	.align 2, 0
_0805F1A8: .4byte gUnk_03000FA0
_0805F1AC:
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x14]
	strh r0, [r4, #0x3c]
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r1, [r0, #0x15]
	adds r0, r4, #0
	adds r0, #0x40
	strh r1, [r0]
	subs r0, #0xb
	movs r1, #4
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x43
	strb r1, [r0]
	b _0805F520
_0805F1DA:
	ldr r1, _0805F200 @ =gUnk_03000FA0
	adds r0, r1, #0
	adds r0, #0x95
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805F1E8
	b _0805F520
_0805F1E8:
	adds r2, r1, #0
	adds r2, #0x35
	movs r0, #1
	strb r0, [r2]
	adds r1, #0x37
	movs r0, #4
	strb r0, [r1]
	mov r1, r8
	adds r1, #0x43
	movs r0, #5
	b _0805F51E
	.align 2, 0
_0805F200: .4byte gUnk_03000FA0
_0805F204:
	ldr r2, _0805F284 @ =gUnk_03000FA0
	ldrh r1, [r2, #0x2e]
	movs r0, #2
	ands r0, r1
	adds r3, r2, #0
	cmp r0, #0
	beq _0805F240
	movs r4, #0
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	beq _0805F240
	ldrh r5, [r3, #0x3c]
	mov r2, r8
	adds r6, r3, #0
	adds r6, #0x40
_0805F224:
	ldr r1, [r0, #4]
	ldrb r0, [r1, #0x14]
	cmp r0, r5
	bne _0805F236
	ldrb r0, [r1, #0x15]
	ldrh r1, [r6]
	cmp r0, r1
	bne _0805F236
	b _0805F498
_0805F236:
	adds r2, #4
	adds r4, #1
	ldr r0, [r2]
	cmp r0, #0
	bne _0805F224
_0805F240:
	ldrh r1, [r3, #0x2e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805F2AC
	movs r7, #0
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	beq _0805F288
	adds r4, r0, #0
	adds r6, r3, #0
	ldrh r0, [r6, #0x3c]
	mov sb, r0
	mov r2, r8
_0805F25E:
	ldr r1, [r4, #4]
	ldrb r0, [r1, #0x14]
	cmp r0, sb
	bne _0805F274
	adds r5, r3, #0
	adds r5, #0x40
	ldrb r0, [r1, #0x15]
	ldrh r1, [r5]
	cmp r0, r1
	bne _0805F274
	b _0805F4C2
_0805F274:
	adds r2, #4
	adds r7, #1
	ldr r0, [r2]
	cmp r0, #0
	beq _0805F288
	adds r4, r0, #0
	b _0805F25E
	.align 2, 0
_0805F284: .4byte gUnk_03000FA0
_0805F288:
	movs r0, #0xae
	bl PlaySE
	movs r0, #9
	bl sub_08142F50
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	eors r1, r0
	movs r0, #9
	bl sub_08142F7C
	bl sub_08075E24
	bl sub_0806FDE4
_0805F2AC:
	ldr r0, _0805F2C0 @ =gUnk_03000FA0
	ldrh r1, [r0, #0x3c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, #0x40
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08075D7C
	b _0805F520
	.align 2, 0
_0805F2C0: .4byte gUnk_03000FA0
_0805F2C4:
	ldr r1, _0805F2E0 @ =gUnk_03000FA0
	adds r0, r1, #0
	adds r0, #0x95
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805F2D2
	b _0805F520
_0805F2D2:
	adds r1, #0x35
	movs r0, #0
	strb r0, [r1]
	mov r1, r8
	adds r1, #0x43
	movs r0, #7
	b _0805F51E
	.align 2, 0
_0805F2E0: .4byte gUnk_03000FA0
_0805F2E4:
	mov r0, r8
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	mov sb, r0
	bl sub_0805B3AC
	movs r7, #0
	movs r0, #0x43
	add r0, r8
	mov sl, r0
_0805F2FE:
	movs r6, #0
	lsls r4, r7, #0x10
	adds r1, r7, #1
	mov r8, r1
	movs r5, #0
_0805F308:
	mov r1, sb
	ldr r0, [r1, #4]
	ldrb r1, [r0, #0x14]
	cmp r6, r1
	bne _0805F322
	ldrb r0, [r0, #0x15]
	cmp r7, r0
	bne _0805F322
	lsrs r0, r5, #0x10
	lsrs r1, r4, #0x10
	bl sub_0802885C
	b _0805F32A
_0805F322:
	lsrs r0, r5, #0x10
	lsrs r1, r4, #0x10
	bl sub_080288B8
_0805F32A:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #0x1f
	ble _0805F308
	mov r7, r8
	cmp r7, #0x1f
	ble _0805F2FE
	bl sub_0805B380
	movs r0, #8
	mov r1, sl
	b _0805F51E
_0805F346:
	ldr r4, _0805F380 @ =gUnk_03000FA0
	ldrh r1, [r4, #0x2e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805F384
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075E08
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075E08
	bl sub_08075E24
	bl sub_0806FDE4
	adds r1, r4, #0
	adds r1, #0x35
	movs r0, #1
	strb r0, [r1]
	bl sub_08024CA0
	mov r1, r8
	adds r1, #0x43
	movs r0, #5
	b _0805F51E
	.align 2, 0
_0805F380: .4byte gUnk_03000FA0
_0805F384:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805F38E
	b _0805F520
_0805F38E:
	movs r0, #0xad
	bl PlaySE
	mov r1, r8
	adds r1, #0x43
	movs r0, #9
	b _0805F51E
_0805F39C:
	mov r0, r8
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldr r6, [r0]
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _0805F410 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r4, #0
	strb r4, [r0]
	ldr r0, _0805F414 @ =gUnk_0202A5AC
	strb r4, [r0]
	ldr r5, _0805F418 @ =gUnk_0202A5A8
	ldr r0, _0805F41C @ =0x00001C44
	bl BattleAlloc
	str r0, [r5]
	ldr r0, [r6]
	ldr r1, [r6, #4]
	movs r2, #8
	bl sub_08143B70
	movs r1, #0
	movs r2, #0
	bl sub_080197D4
	ldr r0, [r5]
	ldr r1, _0805F420 @ =0x0000022F
	ldr r2, _0805F424 @ =gUnk_0874A6CC
	movs r3, #3
	str r3, [sp]
	subs r3, #4
	str r3, [sp, #4]
	movs r3, #2
	str r3, [sp, #8]
	movs r3, #1
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r3, #0xff
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	str r4, [sp, #0x1c]
	movs r3, #9
	str r3, [sp, #0x20]
	movs r3, #0x42
	bl sub_08015D50
	mov r1, r8
	adds r1, #0x43
	movs r0, #0xa
	b _0805F51E
	.align 2, 0
_0805F410: .4byte gUnk_03000FA0
_0805F414: .4byte gUnk_0202A5AC
_0805F418: .4byte gUnk_0202A5A8
_0805F41C: .4byte 0x00001C44
_0805F420: .4byte 0x0000022F
_0805F424: .4byte gUnk_0874A6CC
_0805F428:
	bl sub_0806BC9C
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0805F45C
	cmp r1, #1
	bne _0805F520
	mov r0, r8
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r2, [r0, #4]
	ldrb r1, [r2, #0x17]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #0x17]
	bl sub_08024CA0
	mov r1, r8
	adds r1, #0x43
	movs r0, #2
	b _0805F51E
_0805F45C:
	mov r1, r8
	adds r1, #0x43
	movs r0, #8
	b _0805F51E
_0805F464:
	mov r3, r8
	adds r3, #0x40
	ldrb r0, [r3]
	lsls r0, r0, #2
	add r0, r8
	ldr r2, [r0]
	ldr r4, _0805F494 @ =gUnk_03000FA0
	adds r1, r4, #0
	adds r1, #0x8c
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	subs r1, #7
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r3]
	mov r1, r8
	adds r1, #0x43
	movs r0, #0xc
	b _0805F51E
	.align 2, 0
_0805F494: .4byte gUnk_03000FA0
_0805F498:
	mov r0, r8
	adds r0, #0x40
	strb r4, [r0]
	bl sub_08075C5C
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075E08
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_08075E24
	bl sub_0806FDE4
	mov r1, r8
	adds r1, #0x43
	movs r0, #0xb
	b _0805F51E
_0805F4C2:
	movs r0, #0xad
	bl PlaySE
	bl sub_08075C5C
	mov r0, r8
	adds r0, #0x40
	strb r7, [r0]
	mov r1, r8
	adds r1, #0x43
	movs r0, #6
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x35
	movs r0, #4
	strb r0, [r1]
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x14]
	strh r0, [r6, #0x3c]
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x15]
	strh r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_08075E24
	bl sub_0806FDE4
	b _0805F520
_0805F508:
	ldr r0, _0805F534 @ =gUnk_03000FA0
	adds r0, #0x89
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805F520
	movs r0, #2
	bl sub_0806D970
_0805F518:
	mov r1, r8
	adds r1, #0x43
	movs r0, #3
_0805F51E:
	strb r0, [r1]
_0805F520:
	movs r0, #1
_0805F522:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805F534: .4byte gUnk_03000FA0

	thumb_func_start sub_0805F538
sub_0805F538: @ 0x0805F538
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, [r6, #4]
	ldrb r1, [r6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805F54C
	ldrb r2, [r6, #3]
	b _0805F552
_0805F54C:
	adds r0, r5, #0
	adds r0, #0x48
	ldrb r2, [r0]
_0805F552:
	adds r4, r2, #0
	ldr r0, _0805F588 @ =gUnk_02000000
	ldr r1, _0805F58C @ =0x0000132C
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805F594
	ldr r0, _0805F590 @ =gUnk_03000FA0
	ldrh r1, [r0, #0x2e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0805F5C4
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0805F5B8
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805F5A0
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805F5C6
_0805F584:
	movs r4, #0
	b _0805F5C6
	.align 2, 0
_0805F588: .4byte gUnk_02000000
_0805F58C: .4byte 0x0000132C
_0805F590: .4byte gUnk_03000FA0
_0805F594:
	ldr r0, _0805F5A4 @ =gUnk_03000FA0
	ldrh r1, [r0, #0x2e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805F5A8
_0805F5A0:
	movs r4, #2
	b _0805F5C6
	.align 2, 0
_0805F5A4: .4byte gUnk_03000FA0
_0805F5A8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0805F584
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805F5BC
_0805F5B8:
	movs r4, #1
	b _0805F5C6
_0805F5BC:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805F5C6
_0805F5C4:
	movs r4, #3
_0805F5C6:
	cmp r4, r2
	beq _0805F61E
	movs r0, #0xb2
	bl PlaySE
	ldrb r1, [r6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805F5DE
	strb r4, [r6, #3]
	b _0805F616
_0805F5DE:
	adds r2, r5, #0
	adds r2, #0x48
	strb r4, [r2]
	strb r4, [r6, #3]
	ldr r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x6a
	ldrh r1, [r1]
	ldrb r2, [r2]
	adds r3, r5, #0
	adds r3, #0x6e
	ldrb r4, [r3]
	movs r3, #1
	ands r3, r4
	bl sub_0801309C
	ldr r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x4a
	ldrb r1, [r1]
	bl sub_08012FB0
	ldr r0, [r5, #8]
	bl sub_08012F5C
	ldr r0, [r5, #8]
	bl sub_08012EA8
_0805F616:
	movs r0, #3
	strb r0, [r6, #2]
	movs r0, #2
	strb r0, [r6, #1]
_0805F61E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805F624
sub_0805F624: @ 0x0805F624
	push {lr}
	bl sub_0806C4AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805F662
	ldr r0, _0805F644 @ =gUnk_0202A5A0
	ldrb r1, [r0, #1]
	adds r3, r1, #0
	adds r2, r0, #0
	cmp r3, #0
	beq _0805F648
	subs r0, r1, #1
	strb r0, [r2, #1]
	b _0805F65C
	.align 2, 0
_0805F644: .4byte gUnk_0202A5A0
_0805F648:
	movs r0, #2
	strb r0, [r2, #1]
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _0805F65C
	strb r3, [r2, #2]
_0805F65C:
	adds r0, r2, #0
	bl sub_0805F538
_0805F662:
	ldr r0, _0805F684 @ =gUnk_03000FA0
	ldrh r1, [r0, #0x2e]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0805F68C
	movs r0, #0xb0
	bl PlaySE
	ldr r1, _0805F688 @ =gUnk_0202A5A0
	movs r0, #0
	strb r0, [r1]
	subs r0, #1
	b _0805F6A4
	.align 2, 0
_0805F684: .4byte gUnk_03000FA0
_0805F688: .4byte gUnk_0202A5A0
_0805F68C:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805F698
	movs r0, #0
	b _0805F6A4
_0805F698:
	ldr r0, _0805F6A8 @ =gUnk_0202A5A0
	strb r2, [r0]
	movs r0, #0xad
	bl PlaySE
	movs r0, #1
_0805F6A4:
	pop {r1}
	bx r1
	.align 2, 0
_0805F6A8: .4byte gUnk_0202A5A0

	thumb_func_start sub_0805F6AC
sub_0805F6AC: @ 0x0805F6AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r7, _0805F714 @ =gUnk_0202A550
	ldr r0, [r7]
	bl sub_0805B308
	ldr r2, _0805F718 @ =gUnk_03000FA0
	ldr r1, [r0, #4]
	ldrb r1, [r1, #0x14]
	strh r1, [r2, #0x3c]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x15]
	adds r2, #0x40
	strh r0, [r2]
	ldr r0, _0805F71C @ =gUnk_0202A560
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805F72C
	ldr r0, [r7]
	ldr r1, _0805F720 @ =gUnk_0202A554
	mov r8, r1
	ldr r1, [r1]
	ldr r6, _0805F724 @ =gUnk_0202A568
	ldr r2, [r6]
	ldr r4, _0805F728 @ =gBattlePlayerUnits
	movs r5, #0xd0
	lsls r5, r5, #3
	adds r3, r4, r5
	str r3, [sp]
	movs r5, #8
	str r5, [sp, #4]
	adds r3, r4, #0
	bl sub_0804C308
	ldr r0, [r7]
	mov r2, r8
	ldr r1, [r2]
	ldr r2, [r6]
	movs r6, #0xd0
	lsls r6, r6, #2
	adds r3, r4, r6
	movs r6, #0xec
	lsls r6, r6, #3
	adds r4, r4, r6
	str r4, [sp]
	str r5, [sp, #4]
	bl sub_0804D978
	b _0805F766
	.align 2, 0
_0805F714: .4byte gUnk_0202A550
_0805F718: .4byte gUnk_03000FA0
_0805F71C: .4byte gUnk_0202A560
_0805F720: .4byte gUnk_0202A554
_0805F724: .4byte gUnk_0202A568
_0805F728: .4byte gBattlePlayerUnits
_0805F72C:
	ldr r0, [r7]
	ldr r1, _0805F774 @ =gUnk_0202A554
	mov r8, r1
	ldr r1, [r1]
	ldr r6, _0805F778 @ =gUnk_0202A568
	ldr r2, [r6]
	ldr r4, _0805F77C @ =gBattleEnemyAndGuestUnits
	movs r5, #0x84
	lsls r5, r5, #3
	adds r3, r4, r5
	str r3, [sp]
	movs r5, #8
	str r5, [sp, #4]
	adds r3, r4, #0
	bl sub_0804C308
	ldr r0, [r7]
	mov r2, r8
	ldr r1, [r2]
	ldr r2, [r6]
	ldr r6, _0805F780 @ =0xFFFFFCC0
	adds r3, r4, r6
	movs r6, #0xd0
	lsls r6, r6, #2
	adds r4, r4, r6
	str r4, [sp]
	str r5, [sp, #4]
	bl sub_0804D978
_0805F766:
	movs r0, #0xc
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805F774: .4byte gUnk_0202A554
_0805F778: .4byte gUnk_0202A568
_0805F77C: .4byte gBattleEnemyAndGuestUnits
_0805F780: .4byte 0xFFFFFCC0

	thumb_func_start sub_0805F784
sub_0805F784: @ 0x0805F784
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4]
	bl sub_0808CFF4
	movs r2, #0xde
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	ldr r0, _0805F7B0 @ =gUnk_02029D80
	ldrh r0, [r0, #0xc]
	cmp r0, #0x4e
	bne _0805F7B4
	ldr r0, [r4]
	ldr r1, [r4, #4]
	mov r2, sp
	bl sub_0813F484
	b _0805F7C4
	.align 2, 0
_0805F7B0: .4byte gUnk_02029D80
_0805F7B4:
	ldrh r1, [r4, #0x10]
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r4, #0x12]
	mov r1, sp
	strh r0, [r1, #2]
	ldrh r0, [r4, #0x14]
	strh r0, [r1, #4]
_0805F7C4:
	movs r3, #0xde
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r0, [r4]
	mov r1, sp
	bl sub_0808D070
	ldr r0, [r4]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrb r1, [r1]
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r2, r5, r3
	ldrb r2, [r2]
	bl sub_0808CF90
	ldr r0, [r4]
	ldr r1, _0805F804 @ =gUnk_02029D80
	ldr r1, [r1]
	ldrb r1, [r1, #0x10]
	bl sub_0808CEF8
	ldr r0, [r4]
	movs r1, #1
	bl sub_0808CF84
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F804: .4byte gUnk_02029D80

	thumb_func_start sub_0805F808
sub_0805F808: @ 0x0805F808
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [sp, #0x2c]
	ldr r4, [sp, #0x30]
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #8]
	ldr r0, [r5]
	bl sub_0808CFF4
	ldr r1, _0805F924 @ =gUnk_0202A88C
	ldr r1, [r1]
	movs r2, #0xde
	lsls r2, r2, #1
	adds r1, r1, r2
	str r0, [r1]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	bl sub_0808CFE0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	bl sub_08139B74
	mov r8, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08028728
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_08058D6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _0805F928 @ =0xFFFF0000
	ldr r1, [sp]
	ands r1, r5
	orrs r1, r0
	str r1, [sp]
	ldrb r1, [r4, #1]
	movs r0, #0x3f
	ands r0, r1
	bl sub_08058D78
	lsls r0, r0, #0x10
	ldr r4, _0805F92C @ =0x0000FFFF
	ldr r1, [sp]
	ands r1, r4
	orrs r1, r0
	str r1, [sp]
	adds r0, r7, #0
	bl sub_08058D6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #4]
	ands r1, r5
	orrs r1, r0
	str r1, [sp, #4]
	mov r1, r8
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _0805F8DA
	cmp r0, #3
	beq _0805F8DA
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _0805F930 @ =gUnk_0861CA5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805F8DA
	movs r0, #1
	bl sub_08058D78
	ldr r2, [sp]
	lsrs r1, r2, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
_0805F8DA:
	ldr r5, _0805F924 @ =gUnk_0202A88C
	ldr r0, [r5]
	movs r4, #0xde
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r0, [r0]
	mov r1, sp
	bl sub_0808D070
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	mov r1, sl
	mov r2, sb
	bl sub_0808CF90
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #8]
	bl sub_0808CEF8
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_0808CF84
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F924: .4byte gUnk_0202A88C
_0805F928: .4byte 0xFFFF0000
_0805F92C: .4byte 0x0000FFFF
_0805F930: .4byte gUnk_0861CA5C

	thumb_func_start sub_0805F934
sub_0805F934: @ 0x0805F934
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [sp, #0x2c]
	ldr r4, [sp, #0x30]
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #8]
	ldr r0, [r5]
	bl sub_0808CFF4
	ldr r1, _0805FA48 @ =gUnk_0202A88C
	ldr r1, [r1]
	movs r2, #0xde
	lsls r2, r2, #1
	adds r1, r1, r2
	str r0, [r1]
	ldr r0, [r5]
	ldr r1, [r5, #4]
	bl sub_08139B74
	mov r8, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08028728
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_08058D6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _0805FA4C @ =0xFFFF0000
	ldr r1, [sp]
	ands r1, r5
	orrs r1, r0
	str r1, [sp]
	ldrb r1, [r4, #1]
	movs r0, #0x3f
	ands r0, r1
	bl sub_08058D78
	lsls r0, r0, #0x10
	ldr r4, _0805FA50 @ =0x0000FFFF
	ldr r1, [sp]
	ands r1, r4
	orrs r1, r0
	str r1, [sp]
	adds r0, r7, #0
	bl sub_08058D6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #4]
	ands r1, r5
	orrs r1, r0
	str r1, [sp, #4]
	mov r1, r8
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _0805F9FE
	cmp r0, #3
	beq _0805F9FE
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _0805FA54 @ =gUnk_0861CA5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805F9FE
	movs r0, #1
	bl sub_08058D78
	ldr r2, [sp]
	lsrs r1, r2, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
_0805F9FE:
	ldr r5, _0805FA48 @ =gUnk_0202A88C
	ldr r0, [r5]
	movs r4, #0xde
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r0, [r0]
	mov r1, sp
	bl sub_0808D070
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	mov r1, sl
	mov r2, sb
	bl sub_0808CF90
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #8]
	bl sub_0808D098
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_0808CF84
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FA48: .4byte gUnk_0202A88C
_0805FA4C: .4byte 0xFFFF0000
_0805FA50: .4byte 0x0000FFFF
_0805FA54: .4byte gUnk_0861CA5C

	thumb_func_start sub_0805FA58
sub_0805FA58: @ 0x0805FA58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	mov r8, r4
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	adds r7, r5, #0
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	movs r1, #0x7f
	ands r1, r6
	cmp r1, #1
	bne _0805FA96
	movs r6, #0x28
	cmp r5, #0
	bne _0805FA8C
	movs r6, #0x2c
_0805FA8C:
	adds r0, r4, #0
	bl sub_0801C184
	adds r5, r0, #0
	b _0805FACC
_0805FA96:
	movs r0, #0x80
	ands r0, r6
	movs r6, #0x27
	cmp r0, #0
	beq _0805FAA2
	movs r6, #0x29
_0805FAA2:
	cmp r7, #0
	bne _0805FAA8
	movs r6, #0x2b
_0805FAA8:
	cmp r1, #2
	bne _0805FABA
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_081437AC
	adds r5, r0, #0
	b _0805FACC
_0805FABA:
	ldr r2, _0805FB04 @ =gUnk_08623678
	ldr r1, _0805FB08 @ =gUnk_0861A8F0
	mov r3, r8
	lsls r0, r3, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r5, [r0]
_0805FACC:
	ldr r4, _0805FB0C @ =gUnk_0202A5A8
	ldr r0, _0805FB10 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r1, _0805FB14 @ =0x0000022F
	ldr r2, _0805FB18 @ =gUnk_0875EC2E
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	adds r3, r6, #0
	bl sub_08017B24
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FB04: .4byte gUnk_08623678
_0805FB08: .4byte gUnk_0861A8F0
_0805FB0C: .4byte gUnk_0202A5A8
_0805FB10: .4byte 0x00001C44
_0805FB14: .4byte 0x0000022F
_0805FB18: .4byte gUnk_0875EC2E

	thumb_func_start sub_0805FB1C
sub_0805FB1C: @ 0x0805FB1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r0, #0
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _0805FB7C @ =gUnk_0202A5AC
	ldr r0, _0805FB80 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	movs r7, #0
	strb r7, [r0]
	ldr r4, _0805FB84 @ =gUnk_0202A5A8
	ldr r0, _0805FB88 @ =0x00001C44
	bl BattleAlloc
	adds r6, r0, #0
	str r6, [r4]
	ldr r0, _0805FB8C @ =0x000001FF
	cmp r5, r0
	bgt _0805FB98
	ldr r1, _0805FB90 @ =0x0000022F
	ldr r2, _0805FB94 @ =gUnk_0874B6DC
	lsls r3, r5, #0x10
	lsrs r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r7, [sp, #0x10]
	adds r0, #0xfe
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r7, [sp, #0x1c]
	movs r0, #9
	str r0, [sp, #0x20]
	adds r0, r6, #0
	bl sub_08015D50
	b _0805FBC8
	.align 2, 0
_0805FB7C: .4byte gUnk_0202A5AC
_0805FB80: .4byte gUnk_03000FA0
_0805FB84: .4byte gUnk_0202A5A8
_0805FB88: .4byte 0x00001C44
_0805FB8C: .4byte 0x000001FF
_0805FB90: .4byte 0x0000022F
_0805FB94: .4byte gUnk_0874B6DC
_0805FB98:
	ldr r1, _0805FBD0 @ =0x0000022F
	ldr r2, _0805FBD4 @ =gUnk_0875976C
	ldr r0, _0805FBD8 @ =0xFFFFFE00
	adds r3, r5, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r7, [sp, #0x10]
	adds r0, #0xfe
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r7, [sp, #0x1c]
	movs r0, #9
	str r0, [sp, #0x20]
	adds r0, r6, #0
	bl sub_08015D50
_0805FBC8:
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FBD0: .4byte 0x0000022F
_0805FBD4: .4byte gUnk_0875976C
_0805FBD8: .4byte 0xFFFFFE00

	thumb_func_start sub_0805FBDC
sub_0805FBDC: @ 0x0805FBDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	str r1, [sp]
	mov r8, r2
	ldr r0, [sp, #0x2c]
	ldr r7, [sp, #0x30]
	ldr r1, [sp, #0x34]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	cmp r7, #0
	bge _0805FC0C
	b _0805FD90
_0805FC0C:
	adds r5, r4, #0
	adds r5, #0x5d
	ldrb r0, [r5]
	movs r2, #0
	mov r1, sp
	strb r2, [r1, #8]
	movs r3, #1
	orrs r0, r3
	strb r0, [r5]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	movs r2, #0
	mov r3, sb
	bl sub_08140A14
	adds r6, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _0805FC3A
	movs r0, #0
	b _0805FE3C
_0805FC3A:
	mov r0, sb
	cmp r0, #0
	bne _0805FD10
	ldr r4, _0805FCF4 @ =gUnk_02000000
	lsls r1, r6, #3
	subs r1, r1, r6
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r2, _0805FCF8 @ =0x00001AB4
	adds r0, r1, r2
	mov r3, sl
	strb r3, [r0]
	ldr r5, _0805FCFC @ =0x00001AB5
	adds r0, r1, r5
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	ldr r0, _0805FD00 @ =gUnk_0202A88C
	ldr r0, [r0]
	ldr r3, _0805FD04 @ =0x00000267
	adds r0, r0, r3
	ldrb r2, [r0]
	adds r5, #1
	adds r0, r1, r5
	strb r2, [r0]
	movs r2, #0x68
	adds r0, r7, #0
	muls r0, r2, r0
	adds r0, r0, r4
	mov sb, r0
	mov r5, sb
	adds r5, #0x8d
	ldrb r0, [r5]
	movs r3, #1
	orrs r0, r3
	strb r0, [r5]
	ldr r0, _0805FD08 @ =0x00001AB7
	adds r7, r1, r0
	ldrb r0, [r7]
	movs r1, #0x40
	orrs r0, r1
	mov r1, sp
	ldrb r1, [r1, #8]
	orrs r0, r1
	movs r3, #0x7f
	ands r0, r3
	strb r0, [r7]
	adds r1, r6, #0
	muls r1, r2, r1
	adds r1, r1, r4
	ldr r2, _0805FD0C @ =0x0000147D
	adds r1, r1, r2
	ldrb r2, [r1]
	adds r0, r3, #0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	mov r2, sp
	ldrb r2, [r2, #8]
	orrs r0, r2
	ands r0, r3
	strb r0, [r5]
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805FCC6
	b _0805FE30
_0805FCC6:
	bl sub_08143054
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805FCD2
	b _0805FE30
_0805FCD2:
	bl sub_0814301C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805FCDE
	b _0805FE30
_0805FCDE:
	mov r0, sb
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #2
	beq _0805FCEA
	b _0805FE30
_0805FCEA:
	ldrb r0, [r7]
	movs r3, #1
	orrs r0, r3
	strb r0, [r7]
	b _0805FE30
	.align 2, 0
_0805FCF4: .4byte gUnk_02000000
_0805FCF8: .4byte 0x00001AB4
_0805FCFC: .4byte 0x00001AB5
_0805FD00: .4byte gUnk_0202A88C
_0805FD04: .4byte 0x00000267
_0805FD08: .4byte 0x00001AB7
_0805FD0C: .4byte 0x0000147D
_0805FD10:
	ldrb r0, [r5]
	movs r4, #0x80
	orrs r0, r4
	strb r0, [r5]
	ldr r3, _0805FD74 @ =gUnk_02000000
	lsls r1, r6, #3
	subs r1, r1, r6
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r5, _0805FD78 @ =0x00001B94
	adds r0, r1, r5
	mov r2, sl
	strb r2, [r0]
	adds r5, #1
	adds r0, r1, r5
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	ldr r0, _0805FD7C @ =gUnk_0202A88C
	ldr r0, [r0]
	ldr r5, _0805FD80 @ =0x00000267
	adds r0, r0, r5
	ldrb r2, [r0]
	ldr r5, _0805FD84 @ =0x00001B96
	adds r0, r1, r5
	strb r2, [r0]
	ldr r0, _0805FD88 @ =0x00001B97
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0xc0
	orrs r0, r2
	strb r0, [r1]
	movs r2, #0x68
	adds r1, r6, #0
	muls r1, r2, r1
	adds r1, r1, r3
	ldr r5, _0805FD8C @ =0x000017BD
	adds r1, r1, r5
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r1, r7, #0
	muls r1, r2, r1
	adds r1, r1, r3
	adds r1, #0x8d
	ldrb r0, [r1]
	movs r2, #0x81
	orrs r0, r2
	strb r0, [r1]
	b _0805FE30
	.align 2, 0
_0805FD74: .4byte gUnk_02000000
_0805FD78: .4byte 0x00001B94
_0805FD7C: .4byte gUnk_0202A88C
_0805FD80: .4byte 0x00000267
_0805FD84: .4byte 0x00001B96
_0805FD88: .4byte 0x00001B97
_0805FD8C: .4byte 0x000017BD
_0805FD90:
	ldr r0, [sp]
	adds r1, r4, #0
	movs r2, #0x68
	bl memcpy2
	mov r0, r8
	movs r1, #0x1c
	bl memzero
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FDD6
	bl sub_08143054
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FDD6
	bl sub_0814301C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FDD6
	ldr r0, [sp]
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805FDD6
	mov r0, r8
	ldrb r1, [r0, #0x17]
	movs r0, #1
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #0x17]
_0805FDD6:
	ldr r2, [sp]
	adds r2, #0x5d
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r2]
	mov r3, sb
	cmp r3, #0
	beq _0805FDEE
	movs r0, #0x80
	orrs r1, r0
_0805FDEE:
	strb r1, [r2]
	mov r5, r8
	ldrb r1, [r5, #0x17]
	mov r0, sb
	cmp r0, #0
	beq _0805FDFE
	movs r0, #0xc0
	b _0805FE00
_0805FDFE:
	movs r0, #0x40
_0805FE00:
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #0x17]
	mov r2, sl
	strb r2, [r1, #0x14]
	mov r3, sp
	ldrb r3, [r3, #4]
	strb r3, [r1, #0x15]
	movs r5, #0x80
	rsbs r5, r5, #0
	adds r0, r5, #0
	orrs r7, r0
	strb r7, [r1]
	ldr r0, _0805FE4C @ =gUnk_0202A88C
	ldr r0, [r0]
	ldr r1, _0805FE50 @ =0x00000267
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2, #0x16]
	ldr r0, [sp]
	adds r0, #0x52
	ldrb r0, [r0]
	strb r0, [r2, #2]
_0805FE30:
	ldr r0, [sp]
	mov r1, r8
	movs r2, #1
	bl sub_0805D6E4
	movs r0, #1
_0805FE3C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805FE4C: .4byte gUnk_0202A88C
_0805FE50: .4byte 0x00000267

	thumb_func_start sub_0805FE54
sub_0805FE54: @ 0x0805FE54
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _0805FE68
	adds r2, r1, #0
	adds r2, #0x5d
	ldrb r1, [r2]
	movs r0, #0x7e
	ands r0, r1
	strb r0, [r2]
_0805FE68:
	ldr r1, [r4, #4]
	ldrb r0, [r1]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0xff
	beq _0805FE86
	cmp r2, #0
	bge _0805FE82
	ldrb r1, [r1]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	b _0805FE88
_0805FE82:
	movs r1, #0xfe
	b _0805FE88
_0805FE86:
	movs r1, #0xff
_0805FE88:
	adds r0, r1, #0
	subs r0, #0xfe
	cmp r0, #1
	bls _0805FEA2
	ldr r2, _0805FED0 @ =gUnk_02000000
	movs r0, #0x68
	muls r1, r0, r1
	adds r1, r1, r2
	adds r1, #0x8d
	ldrb r2, [r1]
	movs r0, #0x7e
	ands r0, r2
	strb r0, [r1]
_0805FEA2:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805FEAC
	bl sub_08012CBC
_0805FEAC:
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	movs r1, #0x68
	bl memzero
	ldr r0, [r4, #4]
	movs r1, #0x1c
	bl memzero
	adds r0, r4, #0
	movs r1, #0xd0
	bl memzero
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805FED0: .4byte gUnk_02000000

	thumb_func_start sub_0805FED4
sub_0805FED4: @ 0x0805FED4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sl, r0
	adds r7, r1, #0
	str r2, [sp, #0xc]
	adds r6, r3, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801F9F0
	mov r1, sl
	mov r2, sb
	mov r3, r8
	bl sub_0808CB84
	cmp r0, #2
	beq _0805FF32
	cmp r0, #2
	bgt _0805FF26
	cmp r0, #1
	beq _0805FF2C
	b _0805FF3E
_0805FF26:
	cmp r0, #3
	beq _0805FF38
	b _0805FF3E
_0805FF2C:
	movs r0, #3
	rsbs r0, r0, #0
	b _08060004
_0805FF32:
	movs r0, #4
	rsbs r0, r0, #0
	b _08060004
_0805FF38:
	movs r0, #5
	rsbs r0, r0, #0
	b _08060004
_0805FF3E:
	adds r0, r7, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x40]
	bl sub_0806C98C
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _0805FFB4
	adds r4, r7, #0
	movs r5, #0
	cmp r5, r6
	bge _0805FF6C
_0805FF5A:
	adds r0, r4, #0
	bl sub_0805B308
	cmp r0, #0
	beq _0805FF70
	adds r5, #1
	adds r4, #0x68
	cmp r5, r6
	blt _0805FF5A
_0805FF6C:
	movs r5, #1
	rsbs r5, r5, #0
_0805FF70:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _0805FF7C
	adds r0, r5, #0
	b _08060004
_0805FF7C:
	mov r0, sb
	mov r1, r8
	bl sub_0805B33C
	adds r4, r0, #0
	cmp r4, #0
	bne _08060000
	movs r0, #0x68
	adds r1, r5, #0
	muls r1, r0, r1
	adds r1, r7, r1
	lsls r2, r5, #3
	subs r2, r2, r5
	lsls r2, r2, #2
	ldr r0, [sp, #0xc]
	adds r2, r0, r2
	mov r3, r8
	str r3, [sp]
	ldr r0, [sp, #0x40]
	str r0, [sp, #4]
	ldr r3, [sp, #0x10]
	str r3, [sp, #8]
	mov r0, sl
	mov r3, sb
	bl sub_0805FBDC
	movs r0, #0
	b _08060004
_0805FFB4:
	mov r0, sb
	mov r1, r8
	bl sub_0805B33C
	adds r4, r0, #0
	cmp r4, #0
	bne _0805FFE8
	movs r0, #0x68
	muls r0, r5, r0
	adds r0, r7, r0
	bl sub_0805B308
	adds r4, r0, #0
	mov r0, sb
	bl sub_08058D6C
	strh r0, [r4, #0x10]
	mov r0, r8
	bl sub_08058D6C
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0805AA7C
	movs r0, #2
	b _08060004
_0805FFE8:
	movs r0, #0x68
	muls r0, r5, r0
	adds r0, r7, r0
	ldr r1, [r4]
	cmp r1, r0
	bne _08060000
	adds r0, r4, #0
	mov r1, sl
	bl sub_0805FE54
	movs r0, #3
	b _08060004
_08060000:
	movs r0, #2
	rsbs r0, r0, #0
_08060004:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08060014
sub_08060014: @ 0x08060014
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r7, #0
	b _08060102
_08060028:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _080600FC
	adds r0, r6, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080600FC
	ldrb r1, [r5, #0x17]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080600FC
	adds r0, r6, #0
	adds r0, #0x40
	ldrh r0, [r0]
	cmp r0, #0
	bne _080600FC
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x11
	bl sub_08143B70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x12
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xf
	bl sub_0813FA44
	adds r4, r0, #0
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	bne _080600FC
	ldrb r0, [r5]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0xff
	beq _080600AC
	cmp r1, #0
	bge _080600A4
	ldrb r1, [r5]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #0x68
	muls r1, r0, r1
	ldr r0, _080600A0 @ =gPlayerUnits
	adds r0, r1, r0
	b _080600AE
	.align 2, 0
_080600A0: .4byte gPlayerUnits
_080600A4:
	ldr r0, _080600A8 @ =gUnk_02006760
	b _080600AE
	.align 2, 0
_080600A8: .4byte gUnk_02006760
_080600AC:
	ldr r0, _080600D4 @ =gUnk_020067C8
_080600AE:
	bl sub_08140F98
	ldrb r0, [r5]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0xff
	beq _080600E4
	cmp r1, #0
	bge _080600DC
	ldrb r1, [r5]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #0x68
	muls r1, r0, r1
	ldr r0, _080600D8 @ =gPlayerUnits
	adds r0, r1, r0
	b _080600E6
	.align 2, 0
_080600D4: .4byte gUnk_020067C8
_080600D8: .4byte gPlayerUnits
_080600DC:
	ldr r0, _080600E0 @ =gUnk_02006760
	b _080600E6
	.align 2, 0
_080600E0: .4byte gUnk_02006760
_080600E4:
	ldr r0, _0806015C @ =gUnk_020067C8
_080600E6:
	movs r1, #0x68
	bl memzero
	adds r0, r6, #0
	movs r1, #0x68
	bl memzero
	adds r0, r5, #0
	movs r1, #0x1c
	bl memzero
_080600FC:
	adds r7, #1
	adds r6, #0x68
	adds r5, #0x1c
_08060102:
	cmp r7, r8
	bge _08060126
	bl sub_0814301C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08060126
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08060126
	bl sub_08143054
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08060126
	b _08060028
_08060126:
	movs r5, #0xa7
	lsls r5, r5, #0x10
	movs r7, #7
_0806012C:
	lsrs r4, r5, #0x10
	adds r0, r4, #0
	bl sub_08142FAC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08060164
	adds r0, r4, #0
	bl sub_08142FAC
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08060160
	adds r0, r4, #0
	bl sub_08142FAC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r4, r0
	b _08060166
	.align 2, 0
_0806015C: .4byte gUnk_020067C8
_08060160:
	movs r4, #0xfe
	b _08060166
_08060164:
	movs r4, #0xff
_08060166:
	lsrs r0, r5, #0x10
	movs r1, #0
	bl sub_08142FC4
	cmp r4, #0xff
	beq _0806018C
	cmp r4, #0xfe
	beq _0806018C
	movs r0, #0x68
	muls r4, r0, r4
	ldr r0, _080601A4 @ =gPlayerUnits
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_08140F98
	adds r0, r4, #0
	movs r1, #0x68
	bl memzero
_0806018C:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	subs r7, #1
	cmp r7, #0
	bge _0806012C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080601A4: .4byte gPlayerUnits

	thumb_func_start sub_080601A8
sub_080601A8: @ 0x080601A8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #0
	beq _0806021A
	adds r7, r2, #0
_080601B8:
	ldrb r0, [r5]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0xff
	beq _08060210
	adds r0, r6, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08060210
	cmp r1, #0
	bge _080601DA
	ldrb r1, [r5]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	b _080601DC
_080601DA:
	movs r1, #0xfe
_080601DC:
	cmp r1, #0xff
	beq _08060210
	movs r0, #0x68
	muls r1, r0, r1
	ldr r0, _08060220 @ =gPlayerUnits
	adds r4, r1, r0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x68
	bl memcpy2
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, #6
	ldrh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x5d
	ldrb r1, [r2]
	movs r0, #0x7e
	ands r0, r1
	strb r0, [r2]
_08060210:
	subs r7, #1
	adds r6, #0x68
	adds r5, #0x1c
	cmp r7, #0
	bne _080601B8
_0806021A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060220: .4byte gPlayerUnits

	thumb_func_start sub_08060224
sub_08060224: @ 0x08060224
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _0806034C @ =gUnk_0202A88C
	ldr r0, [r6]
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	mov sl, r2
	movs r5, #4
	strb r5, [r0]
	ldr r0, [r6]
	adds r1, #1
	adds r0, r0, r1
	mov r2, sl
	strb r2, [r0]
	ldr r0, [r6]
	movs r7, #0x9b
	lsls r7, r7, #2
	adds r0, r0, r7
	movs r1, #3
	strb r1, [r0]
	ldr r0, [r6]
	ldr r2, _08060350 @ =0x0000027E
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, [r6]
	ldr r1, _08060354 @ =0x0000027F
	mov sb, r1
	add r0, sb
	mov r2, sl
	strb r2, [r0]
	ldr r0, [r6]
	subs r1, #0x12
	mov r8, r1
	add r0, r8
	strb r2, [r0]
	movs r0, #2
	bl sub_0806D970
	ldr r2, [r6]
	mov r0, r8
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _08060358 @ =0x0000026E
	adds r2, r2, r4
	adds r2, r2, r0
	strb r5, [r2]
	ldr r2, [r6]
	mov r1, sb
	adds r3, r2, r1
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r2, r2, r5
	adds r2, r2, r0
	mov r0, sl
	strb r0, [r2]
	ldr r2, [r6]
	mov r1, r8
	adds r3, r2, r1
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r4
	adds r2, r2, r0
	movs r0, #5
	strb r0, [r2]
	ldr r2, [r6]
	mov r0, sb
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r5
	adds r2, r2, r0
	mov r1, sl
	strb r1, [r2]
	movs r0, #1
	bl sub_08075B90
	bl sub_08075BB8
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_08075E24
	bl sub_0806FDE4
	ldr r2, [r6]
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	add r8, r2
	mov r1, r8
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r2, r4
	adds r4, r4, r0
	ldrb r0, [r4]
	adds r2, r2, r7
	strb r0, [r2]
	ldr r1, [r6]
	add sb, r1
	mov r2, sb
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r1, r5
	adds r5, r5, r0
	ldrb r0, [r5]
	ldr r2, _08060350 @ =0x0000027E
	adds r1, r1, r2
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806034C: .4byte gUnk_0202A88C
_08060350: .4byte 0x0000027E
_08060354: .4byte 0x0000027F
_08060358: .4byte 0x0000026E

	thumb_func_start sub_0806035C
sub_0806035C: @ 0x0806035C
	push {r4, r5, lr}
	bl sub_0808D3D0
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08060376
	bl sub_08143054
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08060390
_08060376:
	ldr r3, _080604E4 @ =gPlayerUnits
	movs r5, #0x7e
	movs r4, #0x1f
_0806037C:
	adds r2, r3, #0
	adds r2, #0x5d
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2]
	subs r4, #1
	adds r3, #0x68
	cmp r4, #0
	bge _0806037C
_08060390:
	movs r0, #0xbe
	movs r1, #0
	bl sub_08142FC4
	movs r0, #0xbd
	movs r1, #0
	bl sub_08142FC4
	movs r0, #0xbb
	movs r1, #0
	bl sub_08142FC4
	movs r0, #0xbc
	movs r1, #0
	bl sub_08142FC4
	ldr r4, _080604E8 @ =gUnk_03000FA0
	adds r1, r4, #0
	adds r1, #0x51
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #9
	bl sub_08075E08
	movs r0, #0xa0
	movs r1, #0
	bl sub_08142FC4
	movs r0, #4
	movs r1, #0
	bl sub_08142F7C
	movs r0, #0xe
	movs r1, #0
	bl sub_08142F7C
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0806040E
	movs r5, #0
	movs r4, #0xa7
	lsls r4, r4, #0x10
_080603E6:
	lsrs r0, r4, #0x10
	movs r1, #0
	bl sub_08142FC4
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #7
	ble _080603E6
	ldr r0, _080604EC @ =gUnk_02000000
	ldr r1, _080604F0 @ =0x000021CC
	adds r2, r0, r1
	movs r1, #1
	strh r1, [r2]
	ldr r2, _080604F4 @ =0x00001CD0
	adds r0, r0, r2
	movs r1, #0x80
	bl memzero
_0806040E:
	bl sub_0805B3AC
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_08075DEC
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	movs r0, #0x20
	bl sub_08075DEC
	movs r0, #0x10
	bl sub_08075DEC
	bl sub_0806FDE4
	ldr r4, _080604F8 @ =gUnk_0202A88C
	ldr r0, _080604FC @ =gUnk_0202A5B0
	str r0, [r4]
	movs r1, #0xb7
	lsls r1, r1, #2
	bl memzero
	ldr r2, [r4]
	movs r5, #0xaf
	lsls r5, r5, #2
	adds r3, r2, r5
	ldr r0, [r3]
	movs r1, #8
	orrs r0, r1
	str r0, [r3]
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r0, #0
	strb r0, [r2]
	bl sub_0809F35C
	movs r0, #7
	movs r1, #0
	bl sub_08142F7C
	bl sub_08143054
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806047E
	ldr r0, [r4]
	adds r0, r0, r5
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #9
	orrs r1, r2
	str r1, [r0]
_0806047E:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08060510
	movs r0, #0
	bl sub_08142FAC
	ldr r1, [r4]
	ldr r2, _08060500 @ =0x000002D7
	adds r1, r1, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_08142FAC
	ldr r1, [r4]
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r1, r1, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_08142FAC
	movs r0, #0
	movs r1, #0
	bl sub_08142FC4
	movs r0, #1
	movs r1, #0
	bl sub_08142FC4
	ldr r2, [r4]
	adds r2, r2, r5
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, _08060504 @ =0xFFFEFFFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x14
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08060508
	movs r0, #7
	movs r1, #0
	bl sub_08142F7C
	b _08060510
	.align 2, 0
_080604E4: .4byte gPlayerUnits
_080604E8: .4byte gUnk_03000FA0
_080604EC: .4byte gUnk_02000000
_080604F0: .4byte 0x000021CC
_080604F4: .4byte 0x00001CD0
_080604F8: .4byte gUnk_0202A88C
_080604FC: .4byte gUnk_0202A5B0
_08060500: .4byte 0x000002D7
_08060504: .4byte 0xFFFEFFFF
_08060508:
	movs r0, #7
	movs r1, #1
	bl sub_08142F7C
_08060510:
	bl sub_0814301C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08060528
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806054A
_08060528:
	ldr r4, _0806057C @ =gUnk_03000FA0
	adds r1, r4, #0
	adds r1, #0x37
	movs r0, #1
	strb r0, [r1]
	movs r0, #7
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801F9F0
	bl sub_08066D90
	adds r4, #0x35
	movs r0, #0x84
	strb r0, [r4]
_0806054A:
	bl sub_0805B3AC
	ldr r0, _0806057C @ =gUnk_03000FA0
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08060572
	bl sub_08060224
	movs r0, #0xfe
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08060572
	ldr r0, _08060580 @ =gUnk_02000000
	ldr r1, _08060584 @ =0x000013BA
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_081452CC
_08060572:
	movs r0, #0x62
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806057C: .4byte gUnk_03000FA0
_08060580: .4byte gUnk_02000000
_08060584: .4byte 0x000013BA

	thumb_func_start sub_08060588
sub_08060588: @ 0x08060588
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #0x40]
	adds r0, #0x56
	movs r1, #0
	mov sl, r1
	mov r2, sl
	strh r2, [r0]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r6, r7, r0
	ldrh r4, [r6]
	ldr r1, [r7, #0x40]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	movs r2, #0x1e
	bl sub_08143B70
	adds r2, r0, #0
	lsrs r2, r2, #5
	movs r5, #1
	ands r2, r5
	adds r0, r4, #0
	movs r1, #3
	bl sub_081437AC
	cmp r0, #0xa
	bne _080606B8
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080605F6
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r1, [r0]
	subs r2, #0x68
	adds r0, r7, r2
	strh r1, [r0]
	movs r1, #0xda
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r1, [r0]
	adds r2, #4
	adds r0, r7, r2
	strh r1, [r0]
_080605F6:
	ldr r0, [r7, #0x40]
	adds r0, #0x58
	movs r1, #0
	strb r1, [r0]
	ldr r1, [r7, #0x40]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrb r0, [r0]
	mov sb, r0
	adds r2, #4
	adds r0, r7, r2
	ldrb r0, [r0]
	mov r8, r0
	ldrh r6, [r6]
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_0808CFF4
	ldr r5, _080606AC @ =gUnk_0202A88C
	ldr r1, [r5]
	movs r2, #0xde
	lsls r2, r2, #1
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	bl sub_0805B308
	ldrh r1, [r0, #0x10]
	ldr r4, _080606B0 @ =0xFFFF0000
	ldr r2, [sp]
	ands r2, r4
	orrs r2, r1
	str r2, [sp]
	ldrh r3, [r0, #0x12]
	lsls r3, r3, #0x10
	ldr r1, _080606B4 @ =0x0000FFFF
	ands r1, r2
	orrs r1, r3
	str r1, [sp]
	ldrh r1, [r0, #0x14]
	ldr r0, [sp, #4]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #4]
	ldr r0, [r5]
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sp
	bl sub_0808D070
	ldr r0, [r5]
	movs r2, #0xde
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r6, #0
	bl sub_0808CDE4
	ldr r0, [r5]
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sb
	mov r2, r8
	bl sub_0808CF90
	ldr r0, [r5]
	movs r2, #0xde
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_0808CEC0
	ldr r0, [r5]
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	bl sub_0808CF84
	ldr r0, [r7, #0x40]
	adds r0, #0x56
	mov r2, sl
	strh r2, [r0]
	movs r0, #1
	b _080606BA
	.align 2, 0
_080606AC: .4byte gUnk_0202A88C
_080606B0: .4byte 0xFFFF0000
_080606B4: .4byte 0x0000FFFF
_080606B8:
	movs r0, #0
_080606BA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080606CC
sub_080606CC: @ 0x080606CC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r5, [r6, #0x40]
	adds r1, r5, #0
	adds r1, #0x58
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r5, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r5, #0x14]
	bl sub_08058D5C
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r3, [r0]
	adds r1, #4
	adds r0, r6, r1
	ldrb r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080880EC
	adds r7, r0, #0
	adds r2, r5, #0
	adds r2, #0x56
	ldrh r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0806075E
	cmp r7, #1
	bne _0806075E
	movs r0, #8
	orrs r0, r1
	strh r0, [r2]
	adds r2, #0x22
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r4, r6, r0
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_0808C944
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r5, #8]
	ldrh r1, [r4]
	adds r3, r5, #0
	adds r3, #0x6e
	ldrb r4, [r3]
	adds r3, r7, #0
	ands r3, r4
	adds r4, r5, #0
	adds r4, #0x48
	ldrb r4, [r4]
	str r4, [sp]
	bl sub_08011E78
_0806075E:
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	bl sub_0808CC14
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08060774
	cmp r7, #0
	bne _08060778
_08060774:
	movs r0, #0
	b _0806077A
_08060778:
	movs r0, #1
_0806077A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08060784
sub_08060784: @ 0x08060784
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080607C4
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrh r1, [r0]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r5, r3
	strh r1, [r0]
	movs r4, #0xda
	lsls r4, r4, #1
	adds r0, r5, r4
	ldrh r1, [r0]
	movs r6, #0xa6
	lsls r6, r6, #1
	adds r0, r5, r6
	strh r1, [r0]
_080607C4:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080607F6
	bl sub_080A16F8
	cmp r0, #0
	bne _080607F6
	bl sub_080A15A8
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r3, r5, r1
	str r0, [r3]
	movs r4, #0xde
	lsls r4, r4, #1
	adds r2, r5, r4
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, [r3]
	ldr r1, [r2]
	bl sub_080A1244
	b _0806083A
_080607F6:
	ldr r0, [r5, #0x40]
	movs r6, #0xe0
	lsls r6, r6, #1
	adds r1, r5, r6
	ldrh r1, [r1]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r2, r5, r3
	ldrb r2, [r2]
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r3, r5, r4
	ldrb r3, [r3]
	subs r6, #4
	adds r4, r5, r6
	ldr r4, [r4]
	str r4, [sp]
	bl sub_08087AE4
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r4, r5, r1
	str r0, [r4]
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806083A
	ldr r0, [r4]
	bl sub_080A1608
	movs r0, #0x14
	bl sub_080A1664
_0806083A:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08060854
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _08060854
	bl sub_0808D66C
_08060854:
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r0, [r4]
	movs r1, #0
	bl sub_080A3098
	ldr r0, [r4]
	bl sub_08087A0C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08060870
sub_08060870: @ 0x08060870
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	movs r0, #0xe6
	lsls r0, r0, #1
	adds r5, r1, r0
	ldr r0, [r5]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r4, r1, r2
	ldr r1, [r4]
	bl sub_08088E58
	str r0, [r4]
	cmp r0, #0
	bge _08060910
	ldr r0, [r5]
	bl sub_0808B724
	ldr r6, _0806090C @ =gUnk_0202A88C
	ldr r0, [r6]
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080608A8
	bl sub_0808CEB0
_080608A8:
	ldr r0, [r6]
	movs r2, #0xde
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r4, #0
	str r4, [r0]
	ldr r0, [r5]
	bl sub_0808C9C4
	str r4, [r5]
	ldr r0, [r6]
	ldr r4, [r0, #0x40]
	cmp r4, #0
	beq _08060906
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08060906
	ldrh r0, [r4, #0x10]
	bl sub_08058D5C
	ldr r1, [r4, #4]
	strb r0, [r1, #0x14]
	ldrh r0, [r4, #0x14]
	bl sub_08058D5C
	ldr r1, [r4, #4]
	strb r0, [r1, #0x15]
	adds r0, r4, #0
	bl sub_0806D918
	adds r1, r0, #0
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080608F6
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08060906
_080608F6:
	adds r0, r4, #0
	bl sub_0805AA7C
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_08060906:
	movs r0, #0
	b _08060912
	.align 2, 0
_0806090C: .4byte gUnk_0202A88C
_08060910:
	movs r0, #1
_08060912:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08060918
sub_08060918: @ 0x08060918
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x40]
	ldrh r0, [r0, #0x10]
	bl sub_08058D5C
	ldr r1, [r5, #0x40]
	ldr r1, [r1, #4]
	strb r0, [r1, #0x14]
	ldr r0, [r5, #0x40]
	ldrh r0, [r0, #0x14]
	bl sub_08058D5C
	ldr r1, [r5, #0x40]
	ldr r1, [r1, #4]
	strb r0, [r1, #0x15]
	ldr r0, [r5, #0x40]
	ldr r1, [r0, #4]
	adds r0, #0x48
	ldrb r0, [r0]
	strb r0, [r1, #0x16]
	ldr r0, _080609C8 @ =gUnk_0202A88C
	ldr r0, [r0]
	ldr r4, [r0, #0x40]
	cmp r4, #0
	beq _0806098E
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806098E
	ldrh r0, [r4, #0x10]
	bl sub_08058D5C
	ldr r1, [r4, #4]
	strb r0, [r1, #0x14]
	ldrh r0, [r4, #0x14]
	bl sub_08058D5C
	ldr r1, [r4, #4]
	strb r0, [r1, #0x15]
	adds r0, r4, #0
	bl sub_0806D918
	adds r1, r0, #0
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0806097E
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0806098E
_0806097E:
	adds r0, r4, #0
	bl sub_0805AA7C
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_0806098E:
	ldr r0, [r5, #0x40]
	ldr r0, [r0]
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _080609B8
	movs r0, #0x18
	bl sub_08142FAC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080609B8
	ldr r0, _080609CC @ =0x000002D5
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080609C2
_080609B8:
	ldr r1, [r5, #0x40]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	bl sub_081444A4
_080609C2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080609C8: .4byte gUnk_0202A88C
_080609CC: .4byte 0x000002D5

	thumb_func_start sub_080609D0
sub_080609D0: @ 0x080609D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, [r5, #4]
	ldrb r1, [r2, #0x17]
	movs r6, #0xbf
	adds r0, r6, #0
	ands r0, r1
	movs r4, #0
	strb r0, [r2, #0x17]
	ldr r0, [r5, #8]
	bl sub_08012CBC
	str r4, [r5, #8]
	bl sub_0814301C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08060A4A
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08060A4A
	bl sub_08143054
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08060A4A
	adds r0, r5, #0
	adds r0, #0x56
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08060A2A
	ldr r2, [r5, #4]
	ldrb r1, [r2, #0x17]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r2, #0x17]
	b _08060A4A
_08060A2A:
	ldr r0, [r5, #4]
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08060A4A
	ldr r0, [r5]
	movs r1, #0x68
	bl memzero
	ldr r0, [r5, #4]
	movs r1, #0x1c
	bl memzero
	adds r0, r5, #0
	movs r1, #0xd0
	bl memzero
_08060A4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08060A50
sub_08060A50: @ 0x08060A50
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x56
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08060AA2
	strh r0, [r5]
	bl sub_0814301C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08060A8E
	bl sub_08143054
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08060A8E
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08060A96
_08060A8E:
	adds r0, r4, #0
	bl sub_080609D0
	b _08060AFC
_08060A96:
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08060AFC
_08060AA2:
	ldr r0, [r4, #4]
	ldrb r7, [r0]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08060AB4
	bl sub_08012CBC
	movs r0, #0
	str r0, [r4, #8]
_08060AB4:
	ldr r0, [r4]
	movs r1, #0x68
	bl memzero
	ldr r0, [r4, #4]
	movs r1, #0x1c
	bl memzero
	adds r0, r4, #0
	movs r1, #0xd0
	bl memzero
	cmp r7, #0xff
	beq _08060AFC
	movs r6, #0
	movs r5, #0xa7
	lsls r5, r5, #0x10
	lsls r7, r7, #0x18
	b _08060AE2
_08060ADA:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r6, #1
_08060AE2:
	cmp r6, #7
	bgt _08060AFC
	lsrs r4, r5, #0x10
	adds r0, r4, #0
	bl sub_08142FAC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08060ADA
	adds r0, r4, #0
	lsrs r1, r7, #0x18
	bl sub_08142FC4
_08060AFC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08060B04
sub_08060B04: @ 0x08060B04
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r1, #2]
	cmp r0, #2
	beq _08060B18
	cmp r0, #3
	beq _08060B30
	movs r4, #0xc0
	b _08060B7E
_08060B18:
	ldrh r0, [r1]
	ldr r1, [r5]
	adds r1, #0x5d
	ldrb r2, [r1]
	lsrs r2, r2, #5
	movs r1, #1
	ands r2, r1
	movs r1, #0x1e
	bl sub_081437AC
	adds r4, r0, #0
	b _08060B7E
_08060B30:
	ldr r0, _08060B4C @ =gUnk_0861A8F0
	ldrh r1, [r1]
	lsls r1, r1, #6
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	subs r0, #1
	cmp r0, #4
	bhi _08060B7C
	lsls r0, r0, #2
	ldr r1, _08060B50 @ =_08060B54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08060B4C: .4byte gUnk_0861A8F0
_08060B50: .4byte _08060B54
_08060B54: @ jump table
	.4byte _08060B68 @ case 0
	.4byte _08060B6C @ case 1
	.4byte _08060B70 @ case 2
	.4byte _08060B74 @ case 3
	.4byte _08060B78 @ case 4
_08060B68:
	movs r4, #0xc6
	b _08060B7E
_08060B6C:
	movs r4, #0xc7
	b _08060B7E
_08060B70:
	movs r4, #0xc8
	b _08060B7E
_08060B74:
	movs r4, #0xc9
	b _08060B7E
_08060B78:
	movs r4, #0xca
	b _08060B7E
_08060B7C:
	movs r4, #0xcb
_08060B7E:
	ldr r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x6e
	ldrb r1, [r1]
	movs r2, #1
	ands r2, r1
	adds r1, r5, #0
	adds r1, #0x48
	ldrb r3, [r1]
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	movs r1, #0x12
	bl sub_080130DC
	adds r2, r5, #0
	adds r2, #0x78
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	subs r2, #0x22
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08060BC0
sub_08060BC0: @ 0x08060BC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r2, #0
	cmp r4, #0
	beq _08060C0C
	ldr r0, [r4]
	adds r0, #0x5d
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08060BDE
	movs r0, #1
	b _08060CC2
_08060BDE:
	bl sub_0814301C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08060BFC
	ldr r0, [r4]
	adds r0, #0x5d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08060BFC
	movs r0, #1
	rsbs r0, r0, #0
	b _08060CC2
_08060BFC:
	ldr r0, [r4]
	adds r0, #0x5d
	ldrb r0, [r0]
	lsrs r2, r0, #5
	movs r0, #1
	ands r2, r0
	cmp r2, #1
	beq _08060CC2
_08060C0C:
	ldrb r0, [r5, #2]
	cmp r0, #2
	beq _08060C54
	cmp r0, #2
	bgt _08060C1C
	cmp r0, #1
	beq _08060C22
	b _08060CC0
_08060C1C:
	cmp r0, #3
	beq _08060C48
	b _08060CC0
_08060C22:
	ldr r0, _08060C3C @ =gUnk_02000000
	ldr r2, _08060C40 @ =0x00001184
	adds r1, r0, r2
	ldr r2, [r1]
	ldrh r0, [r5]
	adds r2, r2, r0
	ldr r0, _08060C44 @ =0x05F5E0FF
	cmp r2, r0
	ble _08060C36
	adds r2, r0, #0
_08060C36:
	str r2, [r1]
	movs r0, #1
	b _08060CC2
	.align 2, 0
_08060C3C: .4byte gUnk_02000000
_08060C40: .4byte 0x00001184
_08060C44: .4byte 0x05F5E0FF
_08060C48:
	ldr r3, _08060C50 @ =gSpellbooks
	movs r4, #0x36
	b _08060C84
	.align 2, 0
_08060C50: .4byte gSpellbooks
_08060C54:
	ldrh r0, [r5]
	movs r1, #3
	bl sub_081437AC
	cmp r0, #0x11
	bne _08060C6C
	ldr r3, _08060C68 @ =gExpendables
	movs r4, #0x1b
	b _08060C84
	.align 2, 0
_08060C68: .4byte gExpendables
_08060C6C:
	ldr r3, _08060C74 @ =gEquipments
	movs r4, #0xa8
	b _08060C84
	.align 2, 0
_08060C74: .4byte gEquipments
_08060C78:
	ldrh r0, [r5]
	strb r0, [r3]
	movs r0, #1
	strb r0, [r3, #1]
	strb r2, [r3, #2]
	b _08060CC2
_08060C84:
	adds r2, r3, #0
	movs r1, #0
	cmp r1, r4
	bge _08060CAA
_08060C8C:
	ldrb r0, [r3]
	ldrh r6, [r5]
	cmp r0, r6
	bne _08060CA2
	ldrb r0, [r3, #1]
	cmp r0, #0x62
	bhi _08060CC0
	adds r0, #1
	strb r0, [r3, #1]
	movs r0, #1
	b _08060CC2
_08060CA2:
	adds r1, #1
	adds r3, #4
	cmp r1, r4
	blt _08060C8C
_08060CAA:
	adds r3, r2, #0
	movs r1, #0
	cmp r1, r4
	bge _08060CC0
_08060CB2:
	ldrb r2, [r3]
	cmp r2, #0
	beq _08060C78
	adds r1, #1
	adds r3, #4
	cmp r1, r4
	blt _08060CB2
_08060CC0:
	movs r0, #0
_08060CC2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08060CC8
sub_08060CC8: @ 0x08060CC8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08060D2C @ =gUnk_02029D80
	ldrh r0, [r0, #0xc]
	cmp r0, #0x54
	bne _08060D38
	bl sub_08020C60
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08060D38
	movs r0, #0
	bl sub_0805B308
	adds r4, r0, #0
	movs r6, #0
_08060CE8:
	adds r0, r4, #0
	bl sub_0806D918
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08060D30
	ldr r0, [r4]
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #2
	bne _08060D30
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x14]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x15]
	adds r2, #4
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x14]
	adds r2, #0x64
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x15]
	adds r2, #4
	adds r0, r5, r2
	strh r1, [r0]
	b _08060D38
	.align 2, 0
_08060D2C: .4byte gUnk_02029D80
_08060D30:
	adds r6, #1
	adds r4, #0xd0
	cmp r6, #0x19
	ble _08060CE8
_08060D38:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08060D40
sub_08060D40: @ 0x08060D40
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08060D64
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #7
	strb r0, [r1]
	ldr r2, _08060D60 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x3b
	b _08060E3C
	.align 2, 0
_08060D60: .4byte 0x0000027E
_08060D64:
	bl sub_080A16F8
	cmp r0, #0
	beq _08060DDC
	bl sub_08075AF8
	movs r3, #0xae
	lsls r3, r3, #2
	adds r0, r7, r3
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08060DA0
	ldr r0, [r7, #0x40]
	movs r4, #0xd6
	lsls r4, r4, #1
	adds r1, r7, r4
	ldrb r1, [r1]
	ldr r3, _08060D9C @ =0x000001AD
	adds r2, r7, r3
	ldrb r2, [r2]
	adds r4, #0xe
	adds r3, r7, r4
	ldrb r3, [r3]
	bl sub_0809FDB8
	b _08060DCA
	.align 2, 0
_08060D9C: .4byte 0x000001AD
_08060DA0:
	ldr r5, [r7, #0x40]
	ldrh r0, [r5, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r7, #0x40]
	ldrh r0, [r0, #0x14]
	bl sub_08058D5C
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r7, #0x40]
	adds r0, #0x48
	ldrb r3, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0809FDB8
_08060DCA:
	movs r0, #0x17
	bl sub_080A1664
	ldr r0, _08060DD8 @ =0x0000026D
	adds r5, r7, r0
	b _08060DE0
	.align 2, 0
_08060DD8: .4byte 0x0000026D
_08060DDC:
	ldr r4, _08060E44 @ =0x0000026D
	adds r5, r7, r4
_08060DE0:
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08060E48 @ =0x0000026E
	adds r4, r7, r1
	adds r0, r4, r0
	movs r6, #7
	strb r6, [r0]
	ldr r2, _08060E4C @ =0x0000027F
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
	movs r1, #0x3b
	strb r1, [r0]
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	strb r6, [r4]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x3a
	strb r0, [r2]
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	ldr r3, _08060E50 @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x2a
_08060E3C:
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060E44: .4byte 0x0000026D
_08060E48: .4byte 0x0000026E
_08060E4C: .4byte 0x0000027F
_08060E50: .4byte 0x0000027E

@ Waits before an action, in frames: queued in Battle+0x294 and popped by phase 1.
@ QOL idea, once this is in C: 4 and 2.
	.set ACTION_WAIT_LONG, 0x10
	.set ACTION_WAIT_SHORT, 8

	thumb_func_start sub_08060E54
sub_08060E54: @ 0x08060E54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r7, r0, #0
	ldr r1, _08060E7C @ =0x0000027E
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0x44
	bls _08060E70
	bl _08063756
_08060E70:
	lsls r0, r0, #2
	ldr r1, _08060E80 @ =_08060E84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08060E7C: .4byte 0x0000027E
_08060E80: .4byte _08060E84
_08060E84: @ jump table
	.4byte _08060F98 @ case 0
	.4byte _080612FA @ case 1
	.4byte _080614A8 @ case 2
	.4byte _080613B4 @ case 3
	.4byte _080613EC @ case 4
	.4byte _08061358 @ case 5
	.4byte _0806153C @ case 6
	.4byte _08061574 @ case 7
	.4byte _08061698 @ case 8
	.4byte _080616DC @ case 9
	.4byte _080616F0 @ case 10
	.4byte _080616FE @ case 11
	.4byte _08061910 @ case 12
	.4byte _080619A8 @ case 13
	.4byte _080619C8 @ case 14
	.4byte _080619E8 @ case 15
	.4byte _08061B88 @ case 16
	.4byte _08062458 @ case 17
	.4byte _0806248C @ case 18
	.4byte _080624C8 @ case 19
	.4byte _0806294A @ case 20
	.4byte _08061A80 @ case 21
	.4byte _08061AFC @ case 22
	.4byte _08061C80 @ case 23
	.4byte _08061C80 @ case 24
	.4byte _08061BA0 @ case 25
	.4byte _08061BE0 @ case 26
	.4byte _08061D56 @ case 27
	.4byte _08061E2C @ case 28
	.4byte _08061F14 @ case 29
	.4byte _08061FA4 @ case 30
	.4byte _08062000 @ case 31
	.4byte _08062060 @ case 32
	.4byte _0806209C @ case 33
	.4byte _080621A8 @ case 34
	.4byte _080621B2 @ case 35
	.4byte _080621D8 @ case 36
	.4byte _0806250C @ case 37
	.4byte _08062758 @ case 38
	.4byte _08062788 @ case 39
	.4byte _0806267C @ case 40
	.4byte _08062720 @ case 41
	.4byte _0806287C @ case 42
	.4byte _08062900 @ case 43
	.4byte _08062914 @ case 44
	.4byte _08062580 @ case 45
	.4byte _08062590 @ case 46
	.4byte _0806296C @ case 47
	.4byte _08062A08 @ case 48
	.4byte _08062AD4 @ case 49
	.4byte _08062D04 @ case 50
	.4byte _08062D30 @ case 51
	.4byte _08062D68 @ case 52
	.4byte _08062DD8 @ case 53
	.4byte _08062E38 @ case 54
	.4byte _08062E0C @ case 55
	.4byte _08062A94 @ case 56
	.4byte _08062AB0 @ case 57
	.4byte _08062E74 @ case 58
	.4byte _08062EAC @ case 59
	.4byte _08063060 @ case 60
	.4byte _08063078 @ case 61
	.4byte _080631FC @ case 62
	.4byte _08063268 @ case 63
	.4byte _080634E8 @ case 64
	.4byte _08063584 @ case 65
	.4byte _080635A0 @ case 66
	.4byte _0806369C @ case 67
	.4byte _080633E0 @ case 68
_08060F98:
	bl sub_080762E8
	bl sub_0808D3D0
	movs r0, #0
	bl sub_08075B6C
	movs r0, #0
	bl sub_08075B90
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	movs r2, #0xad
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806123C @ =gUnk_02029D80
	movs r1, #0xa4
	bl memzero
	movs r3, #0xaf
	lsls r3, r3, #2
	adds r4, r7, r3
	ldr r0, [r4]
	ldr r1, _08061240 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4]
	movs r5, #0xae
	lsls r5, r5, #2
	adds r0, r7, r5
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08060FEA
	b _080612FA
_08060FEA:
	movs r0, #1
	bl sub_0806D970
	bl sub_0806DA00
	movs r1, #0xdc
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08061002
	b _08061254
_08061002:
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r1, [r0]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r7, r3
	strh r1, [r0]
	movs r5, #0xda
	lsls r5, r5, #1
	adds r0, r7, r5
	ldrh r1, [r0]
	subs r2, #0x64
	adds r0, r7, r2
	strh r1, [r0]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4]
	adds r5, #0xb9
	adds r3, r7, r5
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08061244 @ =0x0000026E
	adds r5, r7, r1
	adds r0, r5, r0
	movs r2, #7
	strb r2, [r0]
	ldr r0, _08061248 @ =0x0000027F
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r4, r7, r1
	adds r0, r4, r0
	movs r1, #0xc
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r5, r0
	movs r1, #7
	strb r1, [r0]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r4, r0
	movs r1, #0xb
	strb r1, [r0]
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
	movs r1, #0x1a
	strb r1, [r0]
	ldr r0, _0806124C @ =0x00000292
	adds r6, r7, r0
	ldrh r0, [r6]
	adds r1, r0, #1
	strh r1, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r1, r1, r7
	mov r8, r1
	add r0, r8
	movs r1, #ACTION_WAIT_SHORT
	strh r1, [r0]
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
	movs r1, #0x1b
	mov sl, r1
	mov r1, sl
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r5, r0
	movs r1, #6
	mov sb, r1
	mov r1, sb
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
	movs r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r4, r0
	movs r1, #0x1a
	strb r1, [r0]
	ldrh r0, [r6]
	adds r1, r0, #1
	strh r1, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	add r0, r8
	movs r1, #ACTION_WAIT_LONG
	mov ip, r1
	mov r1, ip
	strh r1, [r0]
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
	mov r1, sl
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r5, r0
	movs r1, #7
	strb r1, [r0]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r4, r0
	movs r1, #0x16
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r5, r0
	mov r1, sb
	strb r1, [r0]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r4, r0
	mov r1, sb
	strb r1, [r0]
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
	movs r1, #0x1a
	strb r1, [r0]
	ldrh r0, [r6]
	adds r1, r0, #1
	strh r1, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	add r8, r0
	movs r1, #ACTION_WAIT_SHORT
	mov r0, r8
	strh r1, [r0]
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
	mov r1, sl
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r5, r0
	mov r1, sb
	strb r1, [r0]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r4, r0
	movs r1, #4
	strb r1, [r0]
	movs r1, #0xa4
	lsls r1, r1, #2
	adds r0, r7, r1
	mov r1, ip
	strh r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	movs r3, #1
	strb r3, [r5]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	movs r5, #0x1a
	strb r5, [r4]
	ldr r0, _08061250 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x15
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_0806123C: .4byte gUnk_02029D80
_08061240: .4byte 0xFFFFFEFF
_08061244: .4byte 0x0000026E
_08061248: .4byte 0x0000027F
_0806124C: .4byte 0x00000292
_08061250: .4byte 0x0000027E
_08061254:
	cmp r0, #1
	blt _080612E4
	cmp r0, #3
	bgt _080612E4
	cmp r0, #3
	bne _0806126A
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	b _08061270
_0806126A:
	ldr r0, [r4]
	ldr r1, _080612D0 @ =0xFFFFDFFF
	ands r0, r1
_08061270:
	str r0, [r4]
	ldr r1, _080612D4 @ =0x0000026D
	adds r5, r7, r1
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080612D8 @ =0x0000026E
	adds r4, r7, r2
	adds r0, r4, r0
	movs r6, #7
	strb r6, [r0]
	ldr r0, _080612DC @ =0x0000027F
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
	movs r1, #0x1b
	strb r1, [r0]
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	strb r6, [r4]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0xb
	strb r0, [r2]
	ldr r2, _080612E0 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x19
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_080612D0: .4byte 0xFFFFDFFF
_080612D4: .4byte 0x0000026D
_080612D8: .4byte 0x0000026E
_080612DC: .4byte 0x0000027F
_080612E0: .4byte 0x0000027E
_080612E4:
	adds r0, r7, #0
	bl sub_08060D40
	ldr r0, [r7, #0x40]
	movs r3, #0xdd
	lsls r3, r3, #1
	adds r1, r7, r3
	ldrh r1, [r1]
	adds r0, #0x48
	bl _08063754
_080612FA:
	ldr r0, [r7, #0x40]
	ldr r2, [r0]
	ldr r3, [r0, #4]
	movs r0, #0x50
	movs r1, #0x68
	bl sub_08077324
	movs r5, #0xad
	lsls r5, r5, #2
	adds r0, r7, r5
	ldrb r0, [r0]
	bl sub_08077304
	ldr r0, _08061354 @ =0x0000027E
	adds r4, r7, r0
	movs r0, #2
	strb r0, [r4]
	movs r0, #0x42
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806132C
	bl _08063756
_0806132C:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806133A
	bl _08063756
_0806133A:
	movs r0, #0x42
	movs r1, #1
	bl sub_08142F7C
	movs r0, #3
	strb r0, [r4]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #4
	strh r0, [r1]
	bl _08063756
	.align 2, 0
_08061354: .4byte 0x0000027E
_08061358:
	bl sub_08075BB8
	movs r0, #1
	bl sub_08075B90
	movs r0, #0
	bl sub_08075B6C
	ldr r3, _080613AC @ =0x0000026D
	adds r1, r7, r3
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, _080613B0 @ =0x0000026E
	adds r1, r7, r5
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	adds r3, #0x12
	adds r1, r7, r3
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, #0x12
	adds r1, r7, r5
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r2, #0x12
	adds r0, r7, r2
	strb r1, [r0]
	bl sub_0807628C
	bl _08063756
	.align 2, 0
_080613AC: .4byte 0x0000026D
_080613B0: .4byte 0x0000026E
_080613B4:
	ldr r4, _080613E4 @ =gUnk_03000FA0
	ldrh r5, [r4, #0x2e]
	movs r0, #0
	strh r0, [r4, #0x2e]
	add r0, sp, #0x34
	bl sub_08077010
	strh r5, [r4, #0x2e]
	movs r3, #0xa4
	lsls r3, r3, #2
	adds r1, r7, r3
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080613DA
	bl _08063756
_080613DA:
	ldr r5, _080613E8 @ =0x0000027E
	adds r1, r7, r5
	bl _08061E18
	.align 2, 0
_080613E4: .4byte gUnk_03000FA0
_080613E8: .4byte 0x0000027E
_080613EC:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _08061480 @ =gUnk_0202A5AC
	ldr r0, _08061484 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	movs r5, #0
	strb r5, [r0]
	ldr r4, _08061488 @ =gUnk_0202A5A8
	ldr r0, _0806148C @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08061490 @ =gUnk_0875D99A
	movs r4, #2
	str r4, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r4, [sp, #8]
	movs r6, #1
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _08061494 @ =0x0000022F
	movs r3, #0x13
	bl sub_08015D50
	ldr r0, _08061498 @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806149C @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r3, r7, r5
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r0, _080614A0 @ =0x0000027F
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
	strb r4, [r0]
	strb r6, [r3]
	ldr r3, _080614A4 @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x2e
	strb r0, [r1]
	adds r5, #0x6a
	b _080618FC
	.align 2, 0
_08061480: .4byte gUnk_0202A5AC
_08061484: .4byte gUnk_03000FA0
_08061488: .4byte gUnk_0202A5A8
_0806148C: .4byte 0x00001C44
_08061490: .4byte gUnk_0875D99A
_08061494: .4byte 0x0000022F
_08061498: .4byte 0x0000026D
_0806149C: .4byte 0x0000026E
_080614A0: .4byte 0x0000027F
_080614A4: .4byte 0x0000027E
_080614A8:
	add r0, sp, #0x38
	bl sub_08077010
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080614F0
	ldr r0, _080614E8 @ =0x0000027F
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
	movs r1, #5
	strb r1, [r0]
	movs r3, #0xa4
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #4
	strh r0, [r1]
	ldr r5, _080614EC @ =0x0000027E
	adds r1, r7, r5
	movs r0, #6
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_080614E8: .4byte 0x0000027F
_080614EC: .4byte 0x0000027E
_080614F0:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080614FC
	bl _08063756
_080614FC:
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, [sp, #0x38]
	ldr r5, _08061538 @ =0x0000027E
	adds r3, r7, r5
	strb r0, [r3]
	lsrs r0, r0, #0x10
	subs r2, #0x24
	adds r1, r7, r2
	strh r0, [r1]
	adds r5, #1
	adds r2, r7, r5
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
	bl _08063756
	.align 2, 0
_08061538: .4byte 0x0000027E
_0806153C:
	movs r3, #0xa4
	lsls r3, r3, #2
	adds r1, r7, r3
	ldrh r0, [r1]
	cmp r0, #0
	bne _0806156C
	ldr r5, _08061568 @ =0x0000027F
	adds r1, r7, r5
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
	subs r3, #0x12
	bl _08063752
	.align 2, 0
_08061568: .4byte 0x0000027F
_0806156C:
	subs r0, #1
	strh r0, [r1]
	bl _08063756
_08061574:
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r0, [r5]
	bl sub_08089C9C
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08061658
	cmp r1, #1
	beq _08061592
	bl _08063756
_08061592:
	ldr r2, _08061648 @ =0x000002D6
	adds r1, r7, r2
	movs r4, #0
	movs r0, #3
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #3
	bl sub_08075DEC
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, [r5]
	bl sub_0808D0FC
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r7, r3
	strh r0, [r1]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r7, r2
	bl sub_08075CB4
	ldr r0, [r5]
	bl sub_0808D100
	ldrb r2, [r0]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r1, r7, r3
	strh r2, [r1]
	ldrb r1, [r0, #2]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r7, r2
	strh r1, [r0]
	ldr r0, [r5]
	bl sub_0808D0DC
	str r4, [r5]
	ldr r3, _0806164C @ =0x0000027F
	adds r2, r7, r3
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r0, r0, r1
	movs r1, #0xc
	strb r1, [r0]
	ldr r0, _08061650 @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08061654 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	subs r3, #0x13
	adds r0, r7, r3
	ldrb r0, [r0]
	strb r0, [r1]
	subs r5, #2
	adds r1, r7, r5
	movs r0, #9
	strb r0, [r1]
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2]
	bl _08062630
	.align 2, 0
_08061648: .4byte 0x000002D6
_0806164C: .4byte 0x0000027F
_08061650: .4byte 0x0000026D
_08061654: .4byte 0x0000026E
_08061658:
	ldr r0, [r5]
	bl sub_0808D0DC
	movs r4, #0
	str r4, [r5]
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075E08
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	bl sub_08075E24
	ldr r2, _08061690 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #8
	strb r0, [r1]
	movs r3, #0xad
	lsls r3, r3, #2
	adds r0, r7, r3
	strb r4, [r0]
	ldr r5, _08061694 @ =0x0000027F
	adds r2, r7, r5
	bl _080627C0
	.align 2, 0
_08061690: .4byte 0x0000027E
_08061694: .4byte 0x0000027F
_08061698:
	ldr r1, _080616D0 @ =gUnk_03000FA0
	adds r0, r1, #0
	adds r0, #0x95
	ldrb r0, [r0]
	cmp r0, #1
	bne _080616A8
	bl _08063756
_080616A8:
	adds r1, #0x35
	movs r0, #0
	strb r0, [r1]
	ldr r3, _080616D4 @ =0x0000027F
	adds r1, r7, r3
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
	ldr r2, _080616D8 @ =0x0000027E
	adds r0, r7, r2
	bl _08063754
	.align 2, 0
_080616D0: .4byte gUnk_03000FA0
_080616D4: .4byte 0x0000027F
_080616D8: .4byte 0x0000027E
_080616DC:
	bl sub_0806F3DC
	ldr r3, _080616EC @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0xa
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_080616EC: .4byte 0x0000027E
_080616F0:
	bl sub_08075E84
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080616FE
	bl _08063756
_080616FE:
	movs r0, #0x80
	movs r1, #0
	bl sub_08142FC4
	movs r0, #0x81
	movs r1, #0
	bl sub_08142FC4
	movs r4, #0
	movs r5, #0x82
	lsls r5, r5, #0x10
_08061714:
	lsrs r0, r5, #0x10
	movs r1, #0
	bl sub_08142FC4
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #7
	ble _08061714
	movs r4, #0
	movs r5, #0x8a
	lsls r5, r5, #0x10
_0806172E:
	lsrs r0, r5, #0x10
	movs r1, #0
	bl sub_08142FC4
	movs r1, #0x80
	lsls r1, r1, #9
	adds r5, r5, r1
	adds r4, #1
	cmp r4, #7
	ble _0806172E
	movs r2, #0xaf
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08061756
	b _08061876
_08061756:
	add r0, sp, #0x24
	movs r1, #0x10
	bl memzero
	ldr r3, [r7, #0x40]
	mov r8, r3
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r0, r7, r5
	ldrh r1, [r0]
	ldr r2, [r3, #4]
	ldrb r0, [r2, #0x14]
	subs r5, r1, r0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r1, [r0]
	ldrb r0, [r2, #0x15]
	subs r4, r1, r0
	cmp r5, #0
	beq _08061790
	adds r1, r5, #0
	cmp r5, #0
	bge _08061788
	rsbs r1, r5, #0
_08061788:
	adds r0, r5, #0
	bl __divsi3
	adds r5, r0, #0
_08061790:
	cmp r4, #0
	beq _080617A4
	adds r1, r4, #0
	cmp r4, #0
	bge _0806179C
	rsbs r1, r4, #0
_0806179C:
	adds r0, r4, #0
	bl __divsi3
	adds r4, r0, #0
_080617A4:
	lsls r1, r5, #0x18
	asrs r1, r1, #0x18
	lsls r2, r4, #0x18
	asrs r2, r2, #0x18
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrb r3, [r0]
	add r5, sp, #0x24
	str r5, [sp]
	mov r0, r8
	bl sub_0808C9D0
	mov sl, r0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r0, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrb r1, [r1]
	bl sub_0806D828
	adds r6, r0, #0
	mov r3, r8
	ldr r0, [r3]
	ldr r1, [r3, #4]
	movs r2, #0x10
	bl sub_08143B70
	adds r1, r0, #0
	movs r4, #0x80
	orrs r1, r4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x80
	bl sub_08142FC4
	movs r0, #0x81
	movs r1, #1
	bl sub_08142FC4
	ldr r0, [r6]
	ldr r1, [r6, #4]
	movs r2, #0x10
	bl sub_08143B70
	adds r1, r0, #0
	orrs r1, r4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x82
	bl sub_08142FC4
	movs r0, #0x8a
	movs r1, #1
	bl sub_08142FC4
	str r6, [sp, #0x3c]
	movs r5, #1
	rsbs r5, r5, #0
	add sl, r5
	movs r0, #0
	mov r8, r0
	cmp r8, sl
	bge _080618DA
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _080618DA
	add r5, sp, #0x24
	movs r1, #0x83
	lsls r1, r1, #0x10
	mov sb, r1
_08061838:
	ldr r6, [r5]
	ldr r2, [sp, #0x3c]
	cmp r2, r6
	beq _08061864
	mov r3, sb
	lsrs r4, r3, #0x10
	ldr r0, [r6]
	ldr r1, [r6, #4]
	movs r2, #0x10
	bl sub_08143B70
	adds r1, r0, #0
	movs r0, #0x80
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08142FC4
	movs r0, #0x80
	lsls r0, r0, #9
	add sb, r0
_08061864:
	adds r5, #4
	movs r1, #1
	add r8, r1
	cmp r8, sl
	bge _080618DA
	ldr r0, [r5]
	cmp r0, #0
	bne _08061838
	b _080618DA
_08061876:
	ldr r5, _08061908 @ =gUnk_02029D80
	ldr r1, [r5, #4]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	movs r2, #0x10
	bl sub_08143B70
	adds r1, r0, #0
	movs r0, #0x80
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x80
	bl sub_08142FC4
	movs r4, #0
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r2, [r0]
	cmp r4, r2
	bge _080618DA
	adds r6, r5, #0
	mov r8, r0
	movs r5, #0x82
	lsls r5, r5, #0x10
_080618A8:
	lsls r0, r4, #2
	adds r1, r6, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	movs r2, #0x10
	bl sub_08143B70
	movs r1, #0x80
	orrs r1, r0
	lsrs r0, r5, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08142FC4
	movs r3, #0x80
	lsls r3, r3, #9
	adds r5, r5, r3
	adds r4, #1
	mov r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	blt _080618A8
_080618DA:
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r0, r7, r2
	movs r1, #1
	strb r1, [r0]
	ldr r3, _0806190C @ =0x0000027E
	adds r0, r7, r3
	strb r1, [r0]
	movs r5, #0x9a
	lsls r5, r5, #2
_080618FC:
	adds r1, r7, r5
	movs r0, #5
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08061908: .4byte gUnk_02029D80
_0806190C: .4byte 0x0000027E
_08061910:
	ldr r0, [r7, #0x40]
	ldrh r0, [r0, #0x10]
	bl sub_08058D5C
	ldr r1, [r7, #0x40]
	ldr r1, [r1, #4]
	strb r0, [r1, #0x14]
	ldr r0, [r7, #0x40]
	ldrh r0, [r0, #0x14]
	bl sub_08058D5C
	ldr r1, [r7, #0x40]
	ldr r1, [r1, #4]
	strb r0, [r1, #0x15]
	ldr r0, [r7, #0x40]
	ldr r1, [r0, #4]
	adds r0, #0x48
	ldrb r0, [r0]
	strb r0, [r1, #0x16]
	adds r0, r7, #0
	bl sub_08060588
	cmp r0, #1
	bne _0806199C
	ldr r0, [r7, #0x40]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r1, [r1]
	adds r0, #0x54
	strh r1, [r0]
	ldr r3, _08061990 @ =0x0000027F
	adds r2, r7, r3
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r0, r0, r1
	movs r1, #0xe
	strb r1, [r0]
	ldr r0, _08061994 @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08061998 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	subs r3, #0x13
	adds r0, r7, r3
	ldrb r0, [r0]
	strb r0, [r1]
	subs r5, #2
	adds r1, r7, r5
	movs r0, #0xd
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08061990: .4byte 0x0000027F
_08061994: .4byte 0x0000026D
_08061998: .4byte 0x0000026E
_0806199C:
	ldr r0, _080619A4 @ =0x0000027E
	adds r1, r7, r0
	b _080619DA
	.align 2, 0
_080619A4: .4byte 0x0000027E
_080619A8:
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	bl sub_0808CC14
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080619BE
	bl _08063756
_080619BE:
	ldr r2, _080619C4 @ =0x0000027E
	adds r1, r7, r2
	b _08061DFE
	.align 2, 0
_080619C4: .4byte 0x0000027E
_080619C8:
	adds r0, r7, #0
	bl sub_080606CC
	cmp r0, #0
	bne _080619D6
	bl _08063756
_080619D6:
	ldr r3, _080619E4 @ =0x0000027E
	adds r1, r7, r3
_080619DA:
	movs r0, #0xf
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_080619E4: .4byte 0x0000027E
_080619E8:
	adds r0, r7, #0
	bl sub_08060784
	movs r5, #0xe6
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r0, [r0]
	bl sub_08074CAC
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08061A74
	ldr r0, _08061A44 @ =0x0000026D
	adds r2, r7, r0
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _08061A48 @ =0x0000026E
	adds r0, r7, r2
	adds r0, r0, r1
	movs r1, #7
	strb r1, [r0]
	ldr r3, _08061A4C @ =0x0000027F
	adds r4, r7, r3
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r5, r7, r1
	adds r0, r5, r0
	movs r1, #0x10
	strb r1, [r0]
	bl sub_080A16F8
	cmp r0, #0
	bne _08061A54
	ldr r2, _08061A50 @ =0x0000027E
	adds r1, r7, r2
	b _08062192
	.align 2, 0
_08061A44: .4byte 0x0000026D
_08061A48: .4byte 0x0000026E
_08061A4C: .4byte 0x0000027F
_08061A50: .4byte 0x0000027E
_08061A54:
	bl sub_08075AF8
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r5, r0
	movs r1, #0x22
	strb r1, [r0]
	ldr r3, _08061A70 @ =0x0000027E
	adds r1, r7, r3
	b _0806213E
	.align 2, 0
_08061A70: .4byte 0x0000027E
_08061A74:
	ldr r5, _08061A7C @ =0x0000027E
	adds r1, r7, r5
	bl _0806244A
	.align 2, 0
_08061A7C: .4byte 0x0000027E
_08061A80:
	movs r0, #0xad
	bl PlaySE
	ldr r0, [r7, #0x40]
	ldrh r0, [r0, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r7, #0x40]
	ldrh r0, [r0, #0x14]
	bl sub_08058D5C
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r1, [r7, #0x40]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r2, r7, r5
	ldrh r2, [r2]
	str r2, [sp]
	adds r2, r4, #0
	bl sub_0808CDE8
	ldr r0, _08061AF4 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08061AF8 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r3, #0x9b
	lsls r3, r3, #2
	adds r0, r7, r3
	strb r1, [r0]
	adds r5, #0xbf
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r3, #0x12
	bl _08063752
	.align 2, 0
_08061AF4: .4byte 0x0000026D
_08061AF8: .4byte 0x0000026E
_08061AFC:
	movs r0, #0xad
	bl PlaySE
	ldr r0, [r7, #0x40]
	ldrh r0, [r0, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r7, #0x40]
	ldrh r0, [r0, #0x14]
	bl sub_08058D5C
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r1, [r7, #0x40]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r2, r7, r5
	ldrb r2, [r2]
	str r2, [sp]
	adds r5, #4
	adds r2, r7, r5
	ldrb r2, [r2]
	str r2, [sp, #4]
	adds r5, #0x74
	adds r2, r7, r5
	ldrh r2, [r2]
	str r2, [sp, #8]
	adds r2, r4, #0
	bl sub_080867BC
	ldr r0, _08061B80 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08061B84 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r3, #0x9b
	lsls r3, r3, #2
	adds r0, r7, r3
	strb r1, [r0]
	adds r5, #0xbf
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r3, #0x12
	bl _08063752
	.align 2, 0
_08061B80: .4byte 0x0000026D
_08061B84: .4byte 0x0000026E
_08061B88:
	adds r0, r7, #0
	bl sub_08060870
	cmp r0, #0
	beq _08061B96
	bl _08063756
_08061B96:
	movs r0, #0x40
	bl sub_0806D97C
	bl _0806250C
_08061BA0:
	ldr r2, _08061BDC @ =gUnk_02029D80
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r7, r3
	ldrh r0, [r1]
	movs r4, #0
	strh r0, [r2, #0xc]
	ldr r0, [r7, #0x40]
	ldrh r1, [r1]
	movs r5, #0xd8
	lsls r5, r5, #1
	adds r2, r7, r5
	ldrb r2, [r2]
	adds r5, #4
	adds r3, r7, r5
	ldrb r3, [r3]
	str r4, [sp]
	str r4, [sp, #4]
	adds r5, #6
	adds r4, r7, r5
	ldrb r4, [r4]
	str r4, [sp, #8]
	bl sub_0808D310
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	b _08061F7E
	.align 2, 0
_08061BDC: .4byte gUnk_02029D80
_08061BE0:
	movs r5, #0xe6
	lsls r5, r5, #1
	adds r4, r7, r5
	ldr r0, [r4]
	bl sub_0808AC34
	cmp r0, #0
	beq _08061BF4
	bl _08063756
_08061BF4:
	ldr r0, [r4]
	bl sub_0808D1C0
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08061C20
	ldr r2, _08061C1C @ =gUnk_02029D80
	ldrh r1, [r2, #0x18]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	b _08061C28
	.align 2, 0
_08061C1C: .4byte gUnk_02029D80
_08061C20:
	ldr r2, _08061C70 @ =gUnk_02029D80
	ldrh r1, [r2, #0x18]
	ldr r0, _08061C74 @ =0x0000EFFF
	ands r0, r1
_08061C28:
	strh r0, [r2, #0x18]
	movs r5, #0xe6
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r0, #0
	str r0, [r1]
	ldr r0, _08061C78 @ =0x0000027F
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
	ldr r3, _08061C7C @ =0x0000027E
	adds r0, r7, r3
	strb r1, [r0]
	adds r5, #0xa1
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r3, #0x12
	bl _08063752
	.align 2, 0
_08061C70: .4byte gUnk_02029D80
_08061C74: .4byte 0x0000EFFF
_08061C78: .4byte 0x0000027F
_08061C7C: .4byte 0x0000027E
_08061C80:
	movs r5, #0xd0
	lsls r5, r5, #1
	adds r4, r7, r5
	ldr r0, [r4]
	bl sub_0808A3EC
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08061D4C
	cmp r1, #1
	beq _08061C9E
	bl _08063756
_08061C9E:
	ldr r1, _08061CB8 @ =0x0000027E
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _08061CC0
	ldr r2, _08061CBC @ =gUnk_02029D80
	ldrh r1, [r2, #0x18]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	b _08061CD0
	.align 2, 0
_08061CB8: .4byte 0x0000027E
_08061CBC: .4byte gUnk_02029D80
_08061CC0:
	ldr r5, _08061D34 @ =0x000002D6
	adds r1, r7, r5
	movs r0, #4
	strb r0, [r1]
	ldr r2, _08061D38 @ =gUnk_02029D80
	ldrh r1, [r2, #0x18]
	ldr r0, _08061D3C @ =0x0000EFFF
	ands r0, r1
_08061CD0:
	strh r0, [r2, #0x18]
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	bl sub_0808D130
	ldr r3, _08061D40 @ =0x0000027F
	adds r2, r7, r3
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r0, r0, r1
	movs r1, #0x1b
	strb r1, [r0]
	ldr r0, _08061D44 @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08061D48 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	subs r3, #0x13
	adds r0, r7, r3
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _08061D38 @ =gUnk_02029D80
	ldrb r1, [r2, #0xe]
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r0, r7, r5
	strh r1, [r0]
	ldrb r1, [r2, #0xf]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r7, r2
	strh r1, [r0]
	adds r3, #0x12
	adds r1, r7, r3
	movs r0, #9
	bl _0806262E
	.align 2, 0
_08061D34: .4byte 0x000002D6
_08061D38: .4byte gUnk_02029D80
_08061D3C: .4byte 0x0000EFFF
_08061D40: .4byte 0x0000027F
_08061D44: .4byte 0x0000026D
_08061D48: .4byte 0x0000026E
_08061D4C:
	ldr r0, [r4]
	bl sub_0808D130
	bl _080627A0
_08061D56:
	ldr r5, [r7, #0x40]
	adds r1, r5, #0
	adds r1, #0x58
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r5, #0x10]
	bl sub_08058D5C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r5, #0x14]
	bl sub_08058D5C
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrb r3, [r0]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080880EC
	cmp r0, #0
	bne _08061D9A
	bl _08063756
_08061D9A:
	ldr r0, [r7, #0x40]
	ldrh r0, [r0, #0x10]
	bl sub_08058D5C
	ldr r1, [r7, #0x40]
	ldr r1, [r1, #4]
	strb r0, [r1, #0x14]
	ldr r0, [r7, #0x40]
	ldrh r0, [r0, #0x14]
	bl sub_08058D5C
	ldr r1, [r7, #0x40]
	ldr r1, [r1, #4]
	strb r0, [r1, #0x15]
	ldr r0, [r7, #0x40]
	ldr r1, [r0, #4]
	adds r0, #0x48
	ldrb r0, [r0]
	strb r0, [r1, #0x16]
	ldr r0, [r7, #0x40]
	ldr r0, [r0]
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _08061DD8
	movs r0, #0x18
	bl sub_08142FAC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08061DE0
_08061DD8:
	ldr r0, [r7, #0x40]
	movs r1, #8
	bl sub_0805DDB4
_08061DE0:
	ldr r3, _08061E20 @ =0x0000027F
	adds r2, r7, r3
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r0, r0, r1
	movs r1, #0x1c
	strb r1, [r0]
	ldr r0, _08061E24 @ =0x0000027E
	adds r1, r7, r0
_08061DFE:
	movs r0, #8
	strb r0, [r1]
	ldr r1, _08061E28 @ =gUnk_03000FA0
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
_08061E18:
	movs r0, #4
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08061E20: .4byte 0x0000027F
_08061E24: .4byte 0x0000027E
_08061E28: .4byte gUnk_03000FA0
_08061E2C:
	ldr r0, _08061ED0 @ =gUnk_02000000
	ldr r1, _08061ED4 @ =0x0000132F
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08061F04
	ldr r0, _08061ED8 @ =gUnk_02029D80
	ldrh r5, [r0, #0xc]
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	lsls r5, r5, #6
	ldr r0, _08061EDC @ =gUnk_0861A8F0
	adds r5, r5, r0
	ldr r4, _08061EE0 @ =gUnk_0202A5A8
	ldr r0, _08061EE4 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08061EE8 @ =gUnk_0875EC2E
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r3, #0
	str r3, [sp, #8]
	movs r1, #0x20
	str r1, [sp, #0xc]
	ldr r4, _08061EEC @ =gUnk_08623678
	ldrh r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r1, [r1]
	str r1, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r1, _08061EF0 @ =0x0000022F
	bl sub_08017B24
	ldr r3, _08061EF4 @ =0x0000026D
	adds r2, r7, r3
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, _08061EF8 @ =0x0000026E
	adds r1, r7, r5
	adds r1, r1, r0
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r3, #0x12
	adds r2, r7, r3
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, #0x12
	adds r0, r7, r5
	adds r0, r0, r1
	movs r1, #0x1f
	strb r1, [r0]
	ldr r0, _08061EFC @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x1d
	strb r0, [r1]
	ldr r2, _08061F00 @ =0x0000025B
	adds r1, r7, r2
	movs r0, #0x80
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08061ED0: .4byte gUnk_02000000
_08061ED4: .4byte 0x0000132F
_08061ED8: .4byte gUnk_02029D80
_08061EDC: .4byte gUnk_0861A8F0
_08061EE0: .4byte gUnk_0202A5A8
_08061EE4: .4byte 0x00001C44
_08061EE8: .4byte gUnk_0875EC2E
_08061EEC: .4byte gUnk_08623678
_08061EF0: .4byte 0x0000022F
_08061EF4: .4byte 0x0000026D
_08061EF8: .4byte 0x0000026E
_08061EFC: .4byte 0x0000027E
_08061F00: .4byte 0x0000025B
_08061F04:
	ldr r3, _08061F10 @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x1f
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08061F10: .4byte 0x0000027E
_08061F14:
	ldr r0, _08061F8C @ =gUnk_03000FA0
	ldrh r1, [r0, #0x2e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08061F34
	ldr r5, _08061F90 @ =0x0000025B
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08061F34
	bl _08063756
_08061F34:
	bl sub_080180B0
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #2
	strh r0, [r1]
	ldr r1, _08061F94 @ =0x0000026D
	adds r2, r7, r1
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08061F98 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r3, r7, r5
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r0, _08061F9C @ =0x0000027F
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
	movs r1, #0x1e
	strb r1, [r0]
	movs r0, #1
	strb r0, [r3]
_08061F7E:
	ldr r3, _08061FA0 @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x1a
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08061F8C: .4byte gUnk_03000FA0
_08061F90: .4byte 0x0000025B
_08061F94: .4byte 0x0000026D
_08061F98: .4byte 0x0000026E
_08061F9C: .4byte 0x0000027F
_08061FA0: .4byte 0x0000027E
_08061FA4:
	ldr r4, _08061FF4 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _08061FB8
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_08061FB8:
	ldr r5, _08061FF8 @ =0x0000026D
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08061FFC @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r3, #0x9b
	lsls r3, r3, #2
	adds r0, r7, r3
	strb r1, [r0]
	adds r5, #0x12
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r3, #0x12
	bl _08063752
	.align 2, 0
_08061FF4: .4byte gUnk_0202A5A8
_08061FF8: .4byte 0x0000026D
_08061FFC: .4byte 0x0000026E
_08062000:
	ldr r0, _08062010 @ =gUnk_02029D80
	ldr r0, [r0]
	ldrb r0, [r0, #0xa]
	cmp r0, #2
	beq _08062018
	ldr r5, _08062014 @ =0x0000027E
	adds r1, r7, r5
	b _0806208C
	.align 2, 0
_08062010: .4byte gUnk_02029D80
_08062014: .4byte 0x0000027E
_08062018:
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08062046
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r1, [r0]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r7, r3
	strh r1, [r0]
	movs r5, #0xda
	lsls r5, r5, #1
	adds r0, r7, r5
	ldrh r1, [r0]
	subs r2, #0x64
	adds r0, r7, r2
	strh r1, [r0]
_08062046:
	ldr r0, [r7, #0x40]
	adds r1, r7, #0
	bl sub_0805F784
	ldr r3, _0806205C @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x20
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_0806205C: .4byte 0x0000027E
_08062060:
	movs r0, #0xde
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r0, [r5]
	bl sub_0808CC14
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08062076
	bl _08063756
_08062076:
	ldr r4, _08062094 @ =gUnk_02029DA8
	adds r0, r4, #0
	movs r1, #0x44
	bl memzero
	ldr r0, [r5]
	bl sub_0808D054
	str r0, [r4]
	ldr r2, _08062098 @ =0x0000027E
	adds r1, r7, r2
_0806208C:
	movs r0, #0x21
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062094: .4byte gUnk_02029DA8
_08062098: .4byte 0x0000027E
_0806209C:
	movs r0, #9
	bl sub_0806D970
	bl sub_0806DA00
	ldr r0, _080620D4 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r1, #0
	strb r1, [r0]
	bl sub_08075F24
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080620E0
	adds r0, r7, #0
	bl sub_08060CC8
	movs r0, #3
	bl sub_0808667C
	ldr r3, _080620D8 @ =0x000002B6
	adds r1, r7, r3
	strh r0, [r1]
	ldr r5, _080620DC @ =0x0000027E
	adds r1, r7, r5
	b _080621C6
	.align 2, 0
_080620D4: .4byte gUnk_03000FA0
_080620D8: .4byte 0x000002B6
_080620DC: .4byte 0x0000027E
_080620E0:
	movs r0, #2
	bl sub_0808667C
	ldr r2, _08062148 @ =0x000002B6
	adds r1, r7, r2
	strh r0, [r1]
	bl sub_080A16F8
	cmp r0, #0
	beq _0806215C
	bl sub_08075AF8
	ldr r3, _0806214C @ =0x0000026D
	adds r2, r7, r3
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r5, _08062150 @ =0x0000026E
	adds r0, r7, r5
	adds r0, r0, r1
	movs r1, #7
	strb r1, [r0]
	ldr r0, _08062154 @ =0x0000027F
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
	movs r1, #0x23
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x22
	strb r0, [r2]
	ldr r2, _08062158 @ =0x0000027E
	adds r1, r7, r2
_0806213E:
	movs r0, #0x11
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062148: .4byte 0x000002B6
_0806214C: .4byte 0x0000026D
_08062150: .4byte 0x0000026E
_08062154: .4byte 0x0000027F
_08062158: .4byte 0x0000027E
_0806215C:
	ldr r3, _0806219C @ =0x0000026D
	adds r2, r7, r3
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r5, _080621A0 @ =0x0000026E
	adds r0, r7, r5
	adds r0, r0, r1
	movs r1, #7
	strb r1, [r0]
	ldr r0, _080621A4 @ =0x0000027F
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
	movs r1, #0x23
	strb r1, [r0]
	adds r3, #0x11
	adds r1, r7, r3
_08062192:
	movs r0, #0x22
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_0806219C: .4byte 0x0000026D
_080621A0: .4byte 0x0000026E
_080621A4: .4byte 0x0000027F
_080621A8:
	movs r0, #6
	bl sub_080A1664
	bl _08062E90
_080621B2:
	bl sub_08075AD8
	movs r0, #1
	bl sub_0808667C
	ldr r2, _080621D0 @ =0x000002B6
	adds r1, r7, r2
	strh r0, [r1]
	ldr r3, _080621D4 @ =0x0000027E
	adds r1, r7, r3
_080621C6:
	movs r0, #0x24
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_080621D0: .4byte 0x000002B6
_080621D4: .4byte 0x0000027E
_080621D8:
	movs r5, #0xaf
	lsls r5, r5, #2
	adds r4, r7, r5
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r4]
	bl sub_080A3B68
	adds r5, r0, #0
	cmp r5, #0
	beq _080621F6
	bl _08063756
_080621F6:
	ldr r0, [r4]
	ldr r1, _08062244 @ =0xFFFDFFFF
	ands r0, r1
	str r0, [r4]
	movs r0, #8
	bl sub_0806D97C
	bl sub_08076208
	bl sub_08075FC4
	ldr r4, _08062248 @ =gUnk_0202A88C
	ldr r0, [r4]
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08062220
	bl sub_0808CEB0
_08062220:
	ldr r0, [r4]
	movs r2, #0xde
	lsls r2, r2, #1
	adds r0, r0, r2
	str r5, [r0]
	ldr r3, _0806224C @ =0x000002B6
	adds r0, r7, r3
	ldrh r0, [r0]
	ldr r1, _08062250 @ =gUnk_02029D80
	bl sub_08094058
	bl sub_0805EEE4
	bl sub_0808797C
	movs r5, #0
	b _0806227A
	.align 2, 0
_08062244: .4byte 0xFFFDFFFF
_08062248: .4byte gUnk_0202A88C
_0806224C: .4byte 0x000002B6
_08062250: .4byte gUnk_02029D80
_08062254:
	lsls r0, r5, #4
	adds r1, #0x34
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _08062278
	adds r0, r4, #0
	bl sub_0806D918
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08062278
	ldr r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x48
	ldrb r1, [r1]
	strb r1, [r0, #0x16]
_08062278:
	adds r5, #1
_0806227A:
	ldr r1, _080622CC @ =gUnk_02029E90
	ldr r0, [r1, #0x30]
	cmp r5, r0
	blt _08062254
	bl sub_0808B7E4
	bl sub_08074DA4
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08062298
	bl sub_0808D614
_08062298:
	bl sub_0805EAA0
	ldr r5, _080622D0 @ =gUnk_02029D80
	ldrh r0, [r5, #0xc]
	bl sub_080A232C
	ldrb r0, [r5, #0xc]
	bl sub_0808CA9C
	adds r4, r0, #0
	cmp r4, #0
	bne _080622D8
	movs r0, #0x40
	bl sub_0806D97C
	movs r5, #0xe6
	lsls r5, r5, #1
	adds r0, r7, r5
	str r4, [r0]
	ldr r0, _080622D4 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x25
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_080622CC: .4byte gUnk_02029E90
_080622D0: .4byte gUnk_02029D80
_080622D4: .4byte 0x0000027E
_080622D8:
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080622E6
	b _08062424
_080622E6:
	bl sub_080A16F8
	mov sb, r0
	cmp r0, #0
	beq _0806238C
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	ldrb r0, [r5, #0xc]
	bl sub_08087D40
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r5, r7, r3
	str r0, [r5]
	movs r1, #0
	bl sub_080A3098
	ldr r0, _0806237C @ =0x0000027F
	adds r3, r7, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r4, r7, r1
	adds r0, r4, r0
	movs r1, #0x10
	strb r1, [r0]
	ldr r0, _08062380 @ =0x0000026D
	adds r2, r7, r0
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _08062384 @ =0x0000026E
	adds r0, r7, r2
	adds r0, r0, r1
	movs r1, #7
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r4, r0
	movs r1, #0x22
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	movs r0, #0x11
	strb r0, [r4]
	ldr r3, _08062388 @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x12
	strb r0, [r1]
	ldr r0, [r5]
	cmp r0, #0
	bne _08062372
	bl _08063756
_08062372:
	bl sub_0808D66C
	bl _08063756
	.align 2, 0
_0806237C: .4byte 0x0000027F
_08062380: .4byte 0x0000026D
_08062384: .4byte 0x0000026E
_08062388: .4byte 0x0000027E
_0806238C:
	ldr r5, _08062414 @ =0x0000027F
	adds r6, r7, r5
	ldrb r0, [r6]
	adds r1, r0, #1
	strb r1, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r7, r1
	adds r0, r2, r0
	movs r1, #0x10
	strb r1, [r0]
	ldr r3, _08062418 @ =0x0000026D
	adds r5, r7, r3
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0806241C @ =0x0000026E
	adds r4, r7, r1
	adds r0, r4, r0
	movs r3, #7
	mov r8, r3
	mov r1, r8
	strb r1, [r0]
	ldrb r0, [r6]
	adds r1, r0, #1
	strb r1, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r2, r0
	movs r1, #0x13
	strb r1, [r0]
	movs r0, #0x18
	str r2, [sp, #0x40]
	bl sub_080A1664
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	mov r3, r8
	strb r3, [r4]
	ldrb r0, [r6]
	adds r1, r0, #1
	strb r1, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, [sp, #0x40]
	adds r2, r2, r0
	movs r0, #0x22
	strb r0, [r2]
	ldr r5, _08062420 @ =0x0000027E
	adds r1, r7, r5
	movs r0, #0x11
	strb r0, [r1]
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r2, sb
	str r2, [r0]
	bl _08063756
	.align 2, 0
_08062414: .4byte 0x0000027F
_08062418: .4byte 0x0000026D
_0806241C: .4byte 0x0000026E
_08062420: .4byte 0x0000027E
_08062424:
	movs r3, #0xe8
	lsls r3, r3, #1
	adds r0, r7, r3
	str r1, [r0]
	ldrb r0, [r5, #0xc]
	bl sub_08087D40
	movs r5, #0xe6
	lsls r5, r5, #1
	adds r4, r7, r5
	str r0, [r4]
	movs r1, #0
	bl sub_080A3098
	ldr r0, [r4]
	bl sub_08074CAC
	ldr r0, _08062454 @ =0x0000027E
	adds r1, r7, r0
_0806244A:
	movs r0, #0x10
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062454: .4byte 0x0000027E
_08062458:
	bl sub_080A1634
	cmp r0, #0
	bne _08062464
	bl _08063756
_08062464:
	ldr r2, _08062484 @ =0x0000027F
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
	ldr r5, _08062488 @ =0x0000027E
	adds r0, r7, r5
	bl _08063754
	.align 2, 0
_08062484: .4byte 0x0000027F
_08062488: .4byte 0x0000027E
_0806248C:
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	bl sub_080A1608
	movs r0, #0x15
	bl sub_080A1664
	ldr r2, _080624C0 @ =0x0000027F
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
	ldr r5, _080624C4 @ =0x0000027E
	adds r0, r7, r5
	bl _08063754
	.align 2, 0
_080624C0: .4byte 0x0000027F
_080624C4: .4byte 0x0000027E
_080624C8:
	bl sub_080A15B8
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r4, r7, r1
	str r0, [r4]
	movs r1, #0
	bl sub_080A1244
	ldr r0, [r4]
	cmp r0, #0
	beq _080624E4
	bl sub_0808D66C
_080624E4:
	ldr r2, _08062504 @ =0x0000027F
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
	ldr r5, _08062508 @ =0x0000027E
	adds r0, r7, r5
	bl _08063754
	.align 2, 0
_08062504: .4byte 0x0000027F
_08062508: .4byte 0x0000027E
_0806250C:
	ldr r0, _08062570 @ =0x0000026D
	adds r5, r7, r0
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08062574 @ =0x0000026E
	adds r4, r7, r1
	adds r0, r4, r0
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r6, r7, r2
	ldrb r1, [r6]
	strb r1, [r0]
	ldr r0, _08062578 @ =0x0000027F
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
	movs r1, #0x31
	strb r1, [r0]
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	ldrb r0, [r6]
	strb r0, [r4]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x30
	strb r0, [r2]
	ldr r2, _0806257C @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x14
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062570: .4byte 0x0000026D
_08062574: .4byte 0x0000026E
_08062578: .4byte 0x0000027F
_0806257C: .4byte 0x0000027E
_08062580:
	ldr r3, _0806258C @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x2e
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_0806258C: .4byte 0x0000027E
_08062590:
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r0, [r5]
	bl sub_080893DC
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _080625B4
	cmp r4, #1
	bne _080625BE
	ldr r0, [r5]
	bl sub_0808C938
	movs r1, #1
	b _080625C0
_080625B4:
	ldr r0, [r5]
	bl sub_0808C938
	adds r1, r4, #0
	b _080625C0
_080625BE:
	movs r1, #0
_080625C0:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08062650
	cmp r1, #1
	beq _080625D0
	bl _08063756
_080625D0:
	ldr r1, _08062640 @ =0x0000026D
	adds r5, r7, r1
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08062644 @ =0x0000026E
	adds r4, r7, r2
	adds r0, r4, r0
	movs r3, #0x9b
	lsls r3, r3, #2
	adds r6, r7, r3
	ldrb r1, [r6]
	strb r1, [r0]
	ldr r0, _08062648 @ =0x0000027F
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
	movs r1, #0x31
	strb r1, [r0]
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	ldrb r0, [r6]
	strb r0, [r4]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x30
	strb r0, [r2]
	ldr r2, _0806264C @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x14
_0806262E:
	strb r0, [r1]
_08062630:
	movs r0, #1
	bl sub_0806D970
	bl sub_0806DA00
	bl _08063756
	.align 2, 0
_08062640: .4byte 0x0000026D
_08062644: .4byte 0x0000026E
_08062648: .4byte 0x0000027F
_0806264C: .4byte 0x0000027E
_08062650:
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075E08
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	bl sub_08075E24
	ldr r3, _08062674 @ =0x0000027E
	adds r1, r7, r3
	movs r0, #8
	strb r0, [r1]
	ldr r5, _08062678 @ =0x0000027F
	adds r2, r7, r5
	b _080627C0
	.align 2, 0
_08062674: .4byte 0x0000027E
_08062678: .4byte 0x0000027F
_0806267C:
	ldr r3, _080626F4 @ =0x0000027E
	adds r6, r7, r3
	movs r7, #0
	movs r5, #0x29
	mov sb, r5
	mov r0, sb
	strb r0, [r6]
	ldr r0, _080626F8 @ =gUnk_02000000
	ldr r1, _080626FC @ =0x0000132F
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	mov r8, r2
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08062718
	movs r5, #9
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _08062700 @ =gUnk_0202A5AC
	ldr r0, _08062704 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	strb r7, [r0]
	ldr r4, _08062708 @ =gUnk_0202A5A8
	ldr r0, _0806270C @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08062710 @ =gUnk_0875D99A
	movs r3, #2
	str r3, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r3, r8
	str r3, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r7, [sp, #0x1c]
	str r5, [sp, #0x20]
	ldr r1, _08062714 @ =0x0000022F
	movs r3, #9
	bl sub_08015D50
	mov r5, sb
	strb r5, [r6]
	bl _08063756
	.align 2, 0
_080626F4: .4byte 0x0000027E
_080626F8: .4byte gUnk_02000000
_080626FC: .4byte 0x0000132F
_08062700: .4byte gUnk_0202A5AC
_08062704: .4byte gUnk_03000FA0
_08062708: .4byte gUnk_0202A5A8
_0806270C: .4byte 0x00001C44
_08062710: .4byte gUnk_0875D99A
_08062714: .4byte 0x0000022F
_08062718:
	movs r0, #0x26
	strb r0, [r6]
	bl _08063756
_08062720:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _08062730
	bl _08063756
_08062730:
	ldr r4, _08062750 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _08062744
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_08062744:
	ldr r0, _08062754 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x26
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062750: .4byte gUnk_0202A5A8
_08062754: .4byte 0x0000027E
_08062758:
	ldr r4, _08062780 @ =gUnk_0202A5A0
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
	ldr r2, _08062784 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x27
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062780: .4byte gUnk_0202A5A0
_08062784: .4byte 0x0000027E
_08062788:
	bl sub_0805F624
	adds r6, r0, #0
	movs r3, #1
	rsbs r3, r3, #0
	mov r8, r3
	cmp r6, r8
	beq _080627A0
	cmp r6, #1
	beq _08062810
	bl _08063756
_080627A0:
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075E08
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	bl sub_08075E24
	ldr r5, _08062804 @ =0x0000027E
	adds r1, r7, r5
	movs r0, #8
	strb r0, [r1]
	ldr r0, _08062808 @ =0x0000027F
	adds r2, r7, r0
_080627C0:
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
	ldr r0, [r7, #0x40]
	ldrh r0, [r0, #0x10]
	bl sub_08058D5C
	ldr r4, _0806280C @ =gUnk_03000FA0
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
	bl _08063756
	.align 2, 0
_08062804: .4byte 0x0000027E
_08062808: .4byte 0x0000027F
_0806280C: .4byte gUnk_03000FA0
_08062810:
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _08062860 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r4, #0
	strb r4, [r0]
	ldr r0, _08062864 @ =gUnk_0202A5AC
	strb r4, [r0]
	ldr r5, _08062868 @ =gUnk_0202A5A8
	ldr r0, _0806286C @ =0x00001C44
	bl BattleAlloc
	str r0, [r5]
	ldr r2, _08062870 @ =gUnk_0874A6CC
	movs r1, #3
	str r1, [sp]
	mov r3, r8
	str r3, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r1, #0xfe
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r4, [sp, #0x1c]
	movs r1, #9
	str r1, [sp, #0x20]
	ldr r1, _08062874 @ =0x0000022F
	movs r3, #0xc
	bl sub_08015D50
	ldr r5, _08062878 @ =0x0000027E
	adds r1, r7, r5
	b _08062E9E
	.align 2, 0
_08062860: .4byte gUnk_03000FA0
_08062864: .4byte gUnk_0202A5AC
_08062868: .4byte gUnk_0202A5A8
_0806286C: .4byte 0x00001C44
_08062870: .4byte gUnk_0874A6CC
_08062874: .4byte 0x0000022F
_08062878: .4byte 0x0000027E
_0806287C:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _0806288C
	movs r1, #0
	b _080628CC
_0806288C:
	bl sub_080197C0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080628B4
	ldr r5, _080628B0 @ =gUnk_0202A5A8
	ldr r0, [r5]
	cmp r0, #0
	beq _080628AA
	bl BattleFree
	str r4, [r5]
	bl sub_0807628C
_080628AA:
	movs r1, #1
	b _080628CC
	.align 2, 0
_080628B0: .4byte gUnk_0202A5A8
_080628B4:
	ldr r4, _080628E8 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _080628C8
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_080628C8:
	movs r1, #1
	rsbs r1, r1, #0
_080628CC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080628F0
	cmp r1, #1
	beq _080628DC
	bl _08063756
_080628DC:
	ldr r0, _080628EC @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x2b
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_080628E8: .4byte gUnk_0202A5A8
_080628EC: .4byte 0x0000027E
_080628F0:
	ldr r2, _080628FC @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x28
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_080628FC: .4byte 0x0000027E
_08062900:
	bl sub_0806F3DC
	ldr r3, _08062910 @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x2c
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062910: .4byte 0x0000027E
_08062914:
	bl sub_08075E84
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08062922
	bl _08063756
_08062922:
	adds r0, r7, #0
	bl sub_08060D40
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08062936
	bl _08063756
_08062936:
	bl sub_080A16F8
	cmp r0, #0
	bne _08062942
	bl _08063756
_08062942:
	bl sub_08075AF8
	bl _08063756
_0806294A:
	bl sub_08076330
	cmp r0, #0
	beq _08062956
	bl _08063756
_08062956:
	bl sub_080762E8
	ldr r5, _08062968 @ =0x0000027E
	adds r1, r7, r5
	movs r0, #0x2f
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062968: .4byte 0x0000027E
_0806296C:
	bl sub_0814301C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08062984
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080629A4
_08062984:
	movs r1, #0xea
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_08087E3C
	movs r2, #0x96
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r2, #0
	strb r0, [r1]
	ldr r3, _080629A0 @ =0x00000259
	adds r0, r7, r3
	strb r2, [r0]
	b _080629C2
	.align 2, 0
_080629A0: .4byte 0x00000259
_080629A4:
	movs r5, #0xea
	lsls r5, r5, #1
	adds r0, r7, r5
	bl sub_08087E3C
	movs r2, #0x96
	lsls r2, r2, #2
	adds r1, r7, r2
	strb r0, [r1]
	movs r0, #6
	bl sub_080211D0
	ldr r3, _080629FC @ =0x00000259
	adds r1, r7, r3
	strb r0, [r1]
_080629C2:
	ldr r5, _08062A00 @ =0x0000026D
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08062A04 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r3, #0x9b
	lsls r3, r3, #2
	adds r0, r7, r3
	strb r1, [r0]
	adds r5, #0x12
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r3, #0x12
	bl _08063752
	.align 2, 0
_080629FC: .4byte 0x00000259
_08062A00: .4byte 0x0000026D
_08062A04: .4byte 0x0000026E
_08062A08:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08062A16
	bl sub_0808C6CC
_08062A16:
	movs r5, #0xea
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r1, #0x96
	lsls r1, r1, #2
	adds r5, r7, r1
	ldrb r1, [r5]
	bl sub_0808C878
	ldrb r1, [r5]
	adds r1, r1, r0
	movs r4, #0
	strb r1, [r5]
	bl sub_0808C8F0
	ldr r2, _08062A88 @ =0x0000025A
	adds r6, r7, r2
	strb r4, [r6]
	bl sub_08021248
	movs r1, #0x20
	ands r1, r0
	cmp r1, #0
	beq _08062A4A
	ldrb r0, [r5]
	strb r0, [r6]
_08062A4A:
	ldr r3, _08062A8C @ =0x0000026D
	adds r1, r7, r3
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, _08062A90 @ =0x0000026E
	adds r1, r7, r5
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	adds r3, #0x12
	adds r1, r7, r3
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, #0x12
	adds r1, r7, r5
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r2, #0x12
	adds r0, r7, r2
	bl _08063754
	.align 2, 0
_08062A88: .4byte 0x0000025A
_08062A8C: .4byte 0x0000026D
_08062A90: .4byte 0x0000026E
_08062A94:
	bl sub_0808D4C0
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r1, r7, r3
	str r0, [r1]
	ldr r5, _08062AAC @ =0x0000027E
	adds r1, r7, r5
	movs r0, #0x39
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062AAC: .4byte 0x0000027E
_08062AB0:
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	bl sub_0808C524
	cmp r0, #0
	beq _08062AC4
	bl _08063756
_08062AC4:
	ldr r2, _08062AD0 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x31
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062AD0: .4byte 0x0000027E
_08062AD4:
	ldr r3, _08062AFC @ =0x0000025A
	adds r2, r7, r3
	movs r5, #0x96
	lsls r5, r5, #2
	adds r1, r7, r5
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	blo _08062B84
	bl sub_0806DC04
	adds r5, r0, #0
	cmp r5, #0
	beq _08062B04
	ldr r0, _08062B00 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x38
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062AFC: .4byte 0x0000025A
_08062B00: .4byte 0x0000027E
_08062B04:
	ldr r1, _08062B5C @ =0x00000259
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08062B74
	ldr r0, _08062B60 @ =gUnk_03000FA0
	adds r0, #0x35
	strb r5, [r0]
	ldr r3, _08062B64 @ =0x0000026D
	adds r2, r7, r3
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08062B68 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	subs r3, #1
	adds r4, r7, r3
	ldrb r0, [r4]
	strb r0, [r1]
	ldr r0, _08062B6C @ =0x0000027F
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
	movs r1, #0x3b
	strb r1, [r0]
	bl sub_0811831C
	movs r0, #1
	strb r0, [r4]
	ldr r3, _08062B70 @ =0x0000027E
	adds r0, r7, r3
	strb r5, [r0]
	bl _08063756
	.align 2, 0
_08062B5C: .4byte 0x00000259
_08062B60: .4byte gUnk_03000FA0
_08062B64: .4byte 0x0000026D
_08062B68: .4byte 0x0000026E
_08062B6C: .4byte 0x0000027F
_08062B70: .4byte 0x0000027E
_08062B74:
	ldr r5, _08062B80 @ =0x0000027E
	adds r1, r7, r5
	movs r0, #0x3b
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062B80: .4byte 0x0000027E
_08062B84:
	ldrb r1, [r2]
	lsls r1, r1, #2
	movs r2, #0xea
	lsls r2, r2, #1
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r0, [r5]
	adds r0, #0x23
	movs r1, #0xff
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08062BF6
	movs r6, #0
_08062BAC:
	ldr r4, [r5]
	adds r4, #0x4e
	adds r0, r6, #0
	adds r0, #0x98
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08142FAC
	ldrb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _08062BF0
	ldr r3, _08062BEC @ =0x0000025A
	adds r4, r7, r3
	ldrb r1, [r4]
	lsls r1, r1, #2
	movs r2, #0xea
	lsls r2, r2, #1
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0806D1B0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0811C508
	bl _08063756
	.align 2, 0
_08062BEC: .4byte 0x0000025A
_08062BF0:
	adds r6, #1
	cmp r6, #7
	ble _08062BAC
_08062BF6:
	adds r0, r5, #0
	bl sub_0806D918
	adds r1, r0, #0
	adds r3, r5, #0
	adds r3, #0x56
	ldrh r2, [r3]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08062C30
	ldr r3, _08062C2C @ =0x0000025A
	adds r4, r7, r3
	ldrb r1, [r4]
	lsls r1, r1, #2
	movs r5, #0xea
	lsls r5, r5, #1
	adds r0, r7, r5
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08060A50
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	bl _08063756
	.align 2, 0
_08062C2C: .4byte 0x0000025A
_08062C30:
	movs r6, #8
	ands r1, r6
	cmp r1, #0
	beq _08062C7C
	ldr r0, _08062C70 @ =0x0000F7FF
	ands r0, r2
	movs r4, #0
	strh r0, [r3]
	ldr r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x48
	ldrb r2, [r1]
	adds r1, #0x26
	ldrb r1, [r1]
	movs r3, #1
	ands r3, r1
	movs r1, #0xa
	bl sub_0801309C
	ldr r0, [r5, #4]
	strb r4, [r0, #0xc]
	ldr r0, _08062C74 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x31
	strb r0, [r1]
	ldr r2, _08062C78 @ =0x0000025A
	adds r1, r7, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062C70: .4byte 0x0000F7FF
_08062C74: .4byte 0x0000027E
_08062C78: .4byte 0x0000025A
_08062C7C:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08062C90
	ldr r3, _08062C8C @ =0x0000027E
	adds r1, r7, r3
	b _08062E2A
	.align 2, 0
_08062C8C: .4byte 0x0000027E
_08062C90:
	ldr r0, _08062CF8 @ =0x0000027F
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r3, r7, r1
	adds r0, r3, r0
	movs r1, #0x35
	strb r1, [r0]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r3, r0
	movs r1, #0x34
	strb r1, [r0]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r3, r0
	movs r0, #0x32
	strb r0, [r3]
	ldrh r0, [r5, #0x10]
	bl sub_08058D5C
	ldr r4, _08062CFC @ =gUnk_03000FA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r4, #0x3c]
	ldrh r0, [r5, #0x14]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r4, #0x35
	movs r0, #4
	strb r0, [r4]
	ldr r2, _08062D00 @ =0x0000027E
	adds r0, r7, r2
	strb r6, [r0]
	bl _08063756
	.align 2, 0
_08062CF8: .4byte 0x0000027F
_08062CFC: .4byte gUnk_03000FA0
_08062D00: .4byte 0x0000027E
_08062D04:
	ldr r3, _08062D28 @ =0x0000025A
	adds r0, r7, r3
	ldrb r1, [r0]
	lsls r1, r1, #2
	movs r5, #0xea
	lsls r5, r5, #1
	adds r0, r7, r5
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0811D1FC
	ldr r0, _08062D2C @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x33
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062D28: .4byte 0x0000025A
_08062D2C: .4byte 0x0000027E
_08062D30:
	bl sub_0811D274
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08062D3E
	bl _08063756
_08062D3E:
	ldr r2, _08062D60 @ =0x0000027F
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
	ldr r5, _08062D64 @ =0x0000027E
	adds r0, r7, r5
	bl _08063754
	.align 2, 0
_08062D60: .4byte 0x0000027F
_08062D64: .4byte 0x0000027E
_08062D68:
	ldr r1, _08062DC8 @ =0x0000025A
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r1, r1, #2
	movs r2, #0xea
	lsls r2, r2, #1
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r3, [r0]
	adds r2, r3, #0
	adds r2, #0x78
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	subs r2, #0x22
	ldrh r1, [r2]
	ldr r0, _08062DCC @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x48
	ldrb r2, [r1]
	adds r1, #0x26
	ldrb r1, [r1]
	movs r3, #1
	ands r3, r1
	movs r1, #8
	bl sub_0801309C
	ldr r3, _08062DD0 @ =0x0000027F
	adds r1, r7, r3
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
	ldr r2, _08062DD4 @ =0x0000027E
	adds r0, r7, r2
	bl _08063754
	.align 2, 0
_08062DC8: .4byte 0x0000025A
_08062DCC: .4byte 0x0000F7FF
_08062DD0: .4byte 0x0000027F
_08062DD4: .4byte 0x0000027E
_08062DD8:
	ldr r3, _08062E04 @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x37
	strb r0, [r1]
	ldr r5, _08062E08 @ =0x0000025A
	adds r0, r7, r5
	ldrb r1, [r0]
	lsls r1, r1, #2
	movs r2, #0xea
	lsls r2, r2, #1
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_080A3B9C
	movs r3, #0x95
	lsls r3, r3, #2
	adds r1, r7, r3
	str r0, [r1]
	bl _08063756
	.align 2, 0
_08062E04: .4byte 0x0000027E
_08062E08: .4byte 0x0000025A
_08062E0C:
	movs r5, #0x95
	lsls r5, r5, #2
	adds r4, r7, r5
	ldr r0, [r4]
	bl sub_080A3B78
	cmp r0, #0
	bne _08062E20
	bl _08063756
_08062E20:
	ldr r0, [r4]
	bl sub_080A3B84
	ldr r0, _08062E34 @ =0x0000027E
	adds r1, r7, r0
_08062E2A:
	movs r0, #0x36
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062E34: .4byte 0x0000027E
_08062E38:
	ldr r1, _08062E6C @ =0x0000025A
	adds r5, r7, r1
	ldrb r0, [r5]
	lsls r0, r0, #2
	movs r2, #0xea
	lsls r2, r2, #1
	adds r4, r7, r2
	adds r0, r4, r0
	ldr r0, [r0]
	bl sub_0806D1B0
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r4, r4, r0
	ldr r0, [r4]
	bl sub_080609D0
	ldr r3, _08062E70 @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x31
	strb r0, [r1]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	bl _08063756
	.align 2, 0
_08062E6C: .4byte 0x0000025A
_08062E70: .4byte 0x0000027E
_08062E74:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08062E90
	bl sub_080A1634
	cmp r0, #0
	bne _08062E8A
	bl _08063756
_08062E8A:
	movs r0, #6
	bl sub_080A1664
_08062E90:
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r1, r7, r5
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08062EA8 @ =0x0000027E
	adds r1, r7, r0
_08062E9E:
	movs r0, #0x2a
	strb r0, [r1]
	bl _08063756
	.align 2, 0
_08062EA8: .4byte 0x0000027E
_08062EAC:
	movs r0, #0x43
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08062F98
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08062F98
	ldr r1, _08062F6C @ =0x000002D6
	adds r0, r7, r1
	ldrb r0, [r0]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08062F98
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _08062F70 @ =gUnk_0202A5AC
	ldr r0, _08062F74 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldr r4, _08062F78 @ =gUnk_0202A5A8
	ldr r0, _08062F7C @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08062F80 @ =gUnk_0875D99A
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
	ldr r1, _08062F84 @ =0x0000022F
	movs r3, #0x14
	bl sub_08015D50
	movs r0, #0x43
	movs r1, #1
	bl sub_08142F7C
	ldr r3, _08062F88 @ =0x0000027F
	adds r2, r7, r3
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r1, r7, r5
	adds r1, r1, r0
	ldr r0, _08062F8C @ =0x0000027E
	adds r3, r7, r0
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r1, _08062F90 @ =0x0000026D
	adds r2, r7, r1
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08062F94 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	subs r5, #0x14
	adds r2, r7, r5
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #0x2e
	strb r0, [r3]
	strb r4, [r2]
	bl _08063756
	.align 2, 0
_08062F6C: .4byte 0x000002D6
_08062F70: .4byte gUnk_0202A5AC
_08062F74: .4byte gUnk_03000FA0
_08062F78: .4byte gUnk_0202A5A8
_08062F7C: .4byte 0x00001C44
_08062F80: .4byte gUnk_0875D99A
_08062F84: .4byte 0x0000022F
_08062F88: .4byte 0x0000027F
_08062F8C: .4byte 0x0000027E
_08062F90: .4byte 0x0000026D
_08062F94: .4byte 0x0000026E
_08062F98:
	ldr r0, _08063048 @ =0x000002D6
	adds r1, r7, r0
	movs r0, #0
	strb r0, [r1]
	bl sub_0806CED0
	adds r0, r7, #0
	bl sub_08060918
	ldr r1, [r7, #0x40]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	movs r2, #0
	bl sub_0813DF6C
	cmp r0, #0
	bne _08062FC6
	bl sub_0806DB84
	ldr r1, _0806304C @ =0x0000026E
	adds r6, r7, r1
	cmp r0, #0
	beq _0806300A
_08062FC6:
	movs r0, #1
	bl sub_0806D970
	bl sub_08021248
	lsls r0, r0, #0x18
	ldr r2, _0806304C @ =0x0000026E
	adds r6, r7, r2
	cmp r0, #0
	bne _0806300A
	movs r0, #0
	bl sub_0805B308
	adds r3, r0, #0
	ldr r5, _08063050 @ =0x0000F7FF
	movs r4, #0x19
_08062FE6:
	adds r0, r3, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _08063002
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08063002
	adds r2, r3, #0
	adds r2, #0x56
	ldrh r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r2]
_08063002:
	subs r4, #1
	adds r3, #0xd0
	cmp r4, #0
	bge _08062FE6
_0806300A:
	movs r0, #2
	bl sub_0806D970
	bl sub_0805EAEC
	ldr r3, _08063054 @ =0x0000027F
	adds r2, r7, r3
	movs r3, #0
	strb r3, [r2]
	ldr r5, _08063058 @ =0x0000026D
	adds r1, r7, r5
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	strb r0, [r6]
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
	ldr r3, _0806305C @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x3c
	strb r0, [r1]
	b _08063756
	.align 2, 0
_08063048: .4byte 0x000002D6
_0806304C: .4byte 0x0000026E
_08063050: .4byte 0x0000F7FF
_08063054: .4byte 0x0000027F
_08063058: .4byte 0x0000026D
_0806305C: .4byte 0x0000027E
_08063060:
	bl sub_0808D4A0
	cmp r0, #0
	beq _0806306A
	b _08063756
_0806306A:
	ldr r5, _08063074 @ =0x0000027E
	adds r1, r7, r5
	movs r0, #0x3d
	strb r0, [r1]
	b _08063756
	.align 2, 0
_08063074: .4byte 0x0000027E
_08063078:
	ldr r0, [r7, #0x40]
	ldr r1, [r0, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	bl sub_0806DA54
	str r0, [r7, #0x50]
	cmp r0, #0
	beq _0806309A
	ldr r0, [r7, #0x40]
	bl sub_0806D918
	movs r1, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0806309A
	b _080631AC
_0806309A:
	bl sub_0806DB84
	str r0, [r7, #0x44]
	cmp r0, #0
	beq _080630F8
	ldrh r0, [r0, #0x10]
	bl sub_08058D5C
	ldr r4, _080630EC @ =gUnk_03000FA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r4, #0x3c]
	ldr r0, [r7, #0x44]
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
	ldr r0, _080630F0 @ =0x0000027F
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
	movs r1, #0x3e
	strb r1, [r0]
	ldr r3, _080630F4 @ =0x0000027E
	adds r1, r7, r3
	b _08063686
	.align 2, 0
_080630EC: .4byte gUnk_03000FA0
_080630F0: .4byte 0x0000027F
_080630F4: .4byte 0x0000027E
_080630F8:
	ldr r5, _0806319C @ =0x0000026D
	adds r3, r7, r5
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080631A0 @ =0x0000026E
	adds r5, r7, r1
	adds r0, r5, r0
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080631A4 @ =0x0000027F
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r4, r7, r1
	adds r0, r4, r0
	movs r1, #4
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r5, r0
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r6, r7, r1
	ldrb r1, [r6]
	strb r1, [r0]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r4, r0
	movs r1, #0x40
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	ldrb r0, [r6]
	strb r0, [r5]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	movs r0, #0x41
	strb r0, [r4]
	ldr r2, _080631A8 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x43
	strb r0, [r1]
	bl sub_0806DA00
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08063188
	b _08063756
_08063188:
	bl sub_080A16F8
	cmp r0, #0
	beq _08063194
	bl sub_08075AF8
_08063194:
	movs r0, #5
	bl sub_080A1664
	b _08063756
	.align 2, 0
_0806319C: .4byte 0x0000026D
_080631A0: .4byte 0x0000026E
_080631A4: .4byte 0x0000027F
_080631A8: .4byte 0x0000027E
_080631AC:
	ldr r0, [r7, #0x40]
	str r0, [r7, #0x44]
	ldrh r0, [r0, #0x10]
	bl sub_08058D5C
	ldr r4, _080631F4 @ =gUnk_03000FA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r4, #0x3c]
	ldr r0, [r7, #0x44]
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
	ldr r3, _080631F8 @ =0x0000027F
	adds r2, r7, r3
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r0, r0, r1
	movs r1, #0x3e
	strb r1, [r0]
	b _08063682
	.align 2, 0
_080631F4: .4byte gUnk_03000FA0
_080631F8: .4byte 0x0000027F
_080631FC:
	ldr r0, [r7, #0x44]
	ldr r1, [r0, #4]
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x15]
	bl sub_0806DA54
	adds r4, r0, #0
	str r4, [r7, #0x50]
	movs r0, #1
	bl sub_0806D970
	ldr r1, _0806325C @ =0x0000027F
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
	movs r1, #0x3d
	strb r1, [r0]
	ldr r3, _08063260 @ =0x0000026D
	adds r2, r7, r3
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, _08063264 @ =0x0000026E
	adds r1, r7, r5
	adds r1, r1, r0
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r3, #0x11
	adds r1, r7, r3
	movs r0, #0x3f
	strb r0, [r1]
	ldr r0, [r7, #0x44]
	adds r1, r4, #0
	bl sub_08060B04
	b _08063756
	.align 2, 0
_0806325C: .4byte 0x0000027F
_08063260: .4byte 0x0000026D
_08063264: .4byte 0x0000026E
_08063268:
	ldr r0, [r7, #0x44]
	ldr r0, [r0, #8]
	bl sub_08012E34
	cmp r0, #0
	bne _08063276
	b _08063756
_08063276:
	ldr r1, [r7, #0x44]
	adds r1, #0x56
	ldrh r2, [r1]
	ldr r0, _08063338 @ =0x0000F7FF
	ands r0, r2
	strh r0, [r1]
	ldr r0, [r7, #0x44]
	bl sub_080A27A8
	ldr r0, _0806333C @ =gUnk_0202A88C
	ldr r0, [r0]
	ldr r4, [r0, #0x40]
	cmp r4, #0
	beq _080632D4
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080632D4
	ldrh r0, [r4, #0x10]
	bl sub_08058D5C
	ldr r1, [r4, #4]
	strb r0, [r1, #0x14]
	ldrh r0, [r4, #0x14]
	bl sub_08058D5C
	ldr r1, [r4, #4]
	strb r0, [r1, #0x15]
	adds r0, r4, #0
	bl sub_0806D918
	adds r1, r0, #0
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080632C4
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080632D4
_080632C4:
	adds r0, r4, #0
	bl sub_0805AA7C
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_080632D4:
	bl sub_0806D924
	cmp r0, #0
	bne _080632EA
	bl sub_0806CD90
	cmp r0, #0
	bne _080632EA
	movs r0, #1
	bl sub_0806D970
_080632EA:
	bl sub_0805EAEC
	ldr r1, [r7, #0x44]
	adds r1, #0x78
	ldrh r2, [r1]
	ldr r0, _08063340 @ =0x0000FFDF
	ands r0, r2
	strh r0, [r1]
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x50]
	bl sub_08060BC0
	adds r2, r0, #0
	ldr r0, _08063344 @ =gUnk_02000000
	ldr r5, _08063348 @ =0x0000132F
	adds r0, r0, r5
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080633C8
	cmp r2, #1
	bgt _0806335C
	cmp r2, #0
	blt _0806335C
	ldr r0, [r7, #0x50]
	ldrb r3, [r0, #2]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0806334C
	movs r2, #0x80
	orrs r2, r3
	b _0806334E
	.align 2, 0
_08063338: .4byte 0x0000F7FF
_0806333C: .4byte gUnk_0202A88C
_08063340: .4byte 0x0000FFDF
_08063344: .4byte gUnk_02000000
_08063348: .4byte 0x0000132F
_0806334C:
	adds r2, r3, #0
_0806334E:
	ldr r0, [r7, #0x50]
	ldrh r1, [r0]
	adds r0, r2, #0
	movs r2, #1
	bl sub_0805FA58
	b _08063368
_0806335C:
	ldr r1, [r7, #0x50]
	ldrb r0, [r1, #2]
	ldrh r1, [r1]
	movs r2, #0
	bl sub_0805FA58
_08063368:
	ldr r0, [r7, #0x50]
	movs r1, #8
	bl memzero
	ldr r2, _080633B8 @ =0x0000025B
	adds r1, r7, r2
	movs r0, #0x80
	strb r0, [r1]
	ldr r3, _080633BC @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x1d
	strb r0, [r1]
	ldr r5, _080633C0 @ =0x0000026D
	adds r2, r7, r5
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080633C4 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	subs r3, #0x12
	adds r0, r7, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r5, #0x12
	adds r2, r7, r5
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	movs r1, #0x44
	b _08063754
	.align 2, 0
_080633B8: .4byte 0x0000025B
_080633BC: .4byte 0x0000027E
_080633C0: .4byte 0x0000026D
_080633C4: .4byte 0x0000026E
_080633C8:
	ldr r0, [r7, #0x50]
	movs r1, #8
	bl memzero
	ldr r3, _080633DC @ =0x0000027E
	adds r1, r7, r3
	movs r0, #0x44
	strb r0, [r1]
	b _08063756
	.align 2, 0
_080633DC: .4byte 0x0000027E
_080633E0:
	movs r5, #0xaf
	lsls r5, r5, #2
	adds r4, r7, r5
	ldr r0, [r4]
	movs r6, #0x80
	lsls r6, r6, #5
	ands r0, r6
	cmp r0, #0
	beq _08063498
	movs r0, #0x45
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08063498
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08063498
	ldr r0, [r4]
	ldr r1, _08063478 @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r4]
	movs r0, #0x45
	movs r1, #1
	bl sub_08142F7C
	bl sub_08076260
	adds r0, r6, #0
	bl sub_08075DEC
	ldr r2, _0806347C @ =gUnk_0202A5AC
	ldr r0, _08063480 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldr r4, _08063484 @ =gUnk_0202A5A8
	ldr r0, _08063488 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _0806348C @ =gUnk_0875D99A
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
	ldr r1, _08063490 @ =0x0000022F
	movs r3, #0x16
	bl sub_08015D50
	ldr r0, _08063494 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x2e
	strb r0, [r1]
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r4, [r0]
	b _08063756
	.align 2, 0
_08063478: .4byte 0xFFFFEFFF
_0806347C: .4byte gUnk_0202A5AC
_08063480: .4byte gUnk_03000FA0
_08063484: .4byte gUnk_0202A5A8
_08063488: .4byte 0x00001C44
_0806348C: .4byte gUnk_0875D99A
_08063490: .4byte 0x0000022F
_08063494: .4byte 0x0000027E
_08063498:
	movs r3, #0xaf
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r0, [r2]
	ldr r1, _080634E0 @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r2]
	ldr r5, _080634E4 @ =0x0000027F
	adds r1, r7, r5
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
	subs r3, #0x3e
	adds r0, r7, r3
	strb r1, [r0]
	subs r5, #0x12
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r3, #0x12
	b _08063752
	.align 2, 0
_080634E0: .4byte 0xFFFFEFFF
_080634E4: .4byte 0x0000027F
_080634E8:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08063534
	ldr r5, _0806352C @ =0x0000026D
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08063530 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r3, #0x9b
	lsls r3, r3, #2
	adds r0, r7, r3
	strb r1, [r0]
	adds r5, #0x12
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r3, #0x12
	b _08063752
	.align 2, 0
_0806352C: .4byte 0x0000026D
_08063530: .4byte 0x0000026E
_08063534:
	bl sub_080A1634
	cmp r0, #0
	bne _0806353E
	b _08063756
_0806353E:
	bl sub_08075B4C
	ldr r5, _0806357C @ =0x0000026D
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08063580 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r3, #0x9b
	lsls r3, r3, #2
	adds r0, r7, r3
	strb r1, [r0]
	adds r5, #0x12
	adds r1, r7, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r3, #0x12
	b _08063752
	.align 2, 0
_0806357C: .4byte 0x0000026D
_08063580: .4byte 0x0000026E
_08063584:
	bl sub_080A30A8
	movs r5, #0xe6
	lsls r5, r5, #1
	adds r1, r7, r5
	str r0, [r1]
	ldr r0, _0806359C @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x42
	strb r0, [r1]
	b _08063756
	.align 2, 0
_0806359C: .4byte 0x0000027E
_080635A0:
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r4, r7, r1
	ldr r0, [r4]
	bl sub_080A2E2C
	adds r5, r0, #0
	cmp r5, #0
	beq _080635B4
	b _08063756
_080635B4:
	ldr r0, [r4]
	bl sub_080A30D0
	str r5, [r4]
	ldr r2, _080635F4 @ =0x0000026D
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _080635F8 @ =0x0000026E
	adds r1, r7, r3
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r5, #0x9b
	lsls r5, r5, #2
	adds r0, r7, r5
	strb r1, [r0]
	ldr r0, _080635FC @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x13
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r3, #0x10
	b _08063752
	.align 2, 0
_080635F4: .4byte 0x0000026D
_080635F8: .4byte 0x0000026E
_080635FC: .4byte 0x0000027F
_08063600:
	adds r4, r7, #0
	adds r4, #0x48
	strh r0, [r4]
	adds r1, r7, #0
	adds r1, #0x4a
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r7, #0x44]
	adds r1, r4, #0
	bl sub_08060B04
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5]
	str r4, [r7, #0x50]
	ldr r5, _0806368C @ =0x0000027F
	adds r4, r7, r5
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r3, r7, r1
	adds r0, r3, r0
	movs r1, #0x43
	strb r1, [r0]
	subs r5, #0x12
	adds r2, r7, r5
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08063690 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	subs r5, #1
	adds r0, r7, r5
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r3, r0
	movs r0, #0x3f
	strb r0, [r3]
	ldr r1, _08063694 @ =gUnk_03000FA0
	ldr r2, [r7, #0x44]
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
_08063682:
	ldr r0, _08063698 @ =0x0000027E
	adds r1, r7, r0
_08063686:
	movs r0, #8
	strb r0, [r1]
	b _08063756
	.align 2, 0
_0806368C: .4byte 0x0000027F
_08063690: .4byte 0x0000026E
_08063694: .4byte gUnk_03000FA0
_08063698: .4byte 0x0000027E
_0806369C:
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r4, r7, r1
	movs r2, #0x80
	lsls r2, r2, #2
	mov r8, r2
	movs r3, #0xff
	mov sb, r3
	movs r6, #0
	b _080636C6
_080636B0:
	adds r1, #0x56
	ldrh r0, [r1]
	orrs r2, r0
	strh r2, [r1]
	ldr r1, [r7, #0x44]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	bl sub_0813F8B0
	cmp r0, #0
	bne _08063600
_080636C6:
	ldr r0, [r7, #0x40]
	bl sub_0806D918
	adds r1, r0, #0
	ldr r0, [r4]
	mov r5, r8
	ands r0, r5
	cmp r0, #0
	bne _080636F8
	ldr r2, [r7, #0x40]
	cmp r2, #0
	beq _080636F8
	movs r0, #0x13
	ands r0, r1
	cmp r0, #0x13
	bne _080636F8
	adds r0, r2, #0
	adds r0, #0x56
	ldrh r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080636F8
	str r2, [r7, #0x44]
	b _080636FA
_080636F8:
	str r6, [r7, #0x44]
_080636FA:
	ldr r1, [r7, #0x44]
	cmp r1, #0
	beq _08063712
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	ands r0, r2
	cmp r0, #0
	beq _080636B0
_08063712:
	ldr r0, [r4]
	ldr r1, _08063768 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4]
	bl sub_0806DC44
	ldr r1, _0806376C @ =0x0000027F
	adds r0, r7, r1
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	mov r2, sb
	ands r1, r2
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r5, _08063770 @ =0x0000027E
	adds r0, r7, r5
	strb r1, [r0]
	ldr r1, _08063774 @ =0x0000026D
	adds r0, r7, r1
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	ands r1, r2
	ldr r2, _08063778 @ =0x0000026E
	adds r0, r7, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	subs r3, #0x14
_08063752:
	adds r0, r7, r3
_08063754:
	strb r1, [r0]
_08063756:
	movs r0, #0
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08063768: .4byte 0xFFFFFDFF
_0806376C: .4byte 0x0000027F
_08063770: .4byte 0x0000027E
_08063774: .4byte 0x0000026D
_08063778: .4byte 0x0000026E

	thumb_func_start sub_0806377C
sub_0806377C: @ 0x0806377C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08063794 @ =gUnk_03000FA0
	adds r1, r0, #0
	adds r1, #0xa0
	ldrh r1, [r1]
	adds r2, r0, #0
	cmp r1, #0
	beq _08063798
	movs r0, #0
	b _08063B74
	.align 2, 0
_08063794: .4byte gUnk_03000FA0
_08063798:
	ldr r1, _080637B0 @ =0x0000027E
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	bls _080637A4
	b _08063B72
_080637A4:
	lsls r0, r0, #2
	ldr r1, _080637B4 @ =_080637B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080637B0: .4byte 0x0000027E
_080637B4: .4byte _080637B8
_080637B8: @ jump table
	.4byte _080637E4 @ case 0
	.4byte _08063820 @ case 1
	.4byte _08063888 @ case 2
	.4byte _080638D8 @ case 3
	.4byte _080638F8 @ case 4
	.4byte _08063930 @ case 5
	.4byte _080639EC @ case 6
	.4byte _08063A48 @ case 7
	.4byte _08063AB4 @ case 8
	.4byte _08063B48 @ case 9
	.4byte _08063B5C @ case 10
_080637E4:
	movs r0, #0
	bl sub_08075B90
	bl sub_08075BB8
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #0x18
	bl sub_08075DEC
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	movs r0, #0x10
	bl sub_08075E08
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_0806FDE4
	ldr r2, _0806381C @ =0x0000027E
	adds r1, r5, r2
	movs r0, #1
	b _08063B70
	.align 2, 0
_0806381C: .4byte 0x0000027E
_08063820:
	bl sub_08021274
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806385C
	ldr r1, _08063854 @ =0x00000269
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _0806385C
	cmp r0, #1
	beq _0806385C
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806384A
	movs r0, #0xe
	bl sub_080A1664
_0806384A:
	ldr r2, _08063858 @ =0x0000027E
	adds r1, r5, r2
	movs r0, #6
	b _08063B70
	.align 2, 0
_08063854: .4byte 0x00000269
_08063858: .4byte 0x0000027E
_0806385C:
	ldr r1, _0806387C @ =0x00000269
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08063868
	b _08063B6A
_08063868:
	ldr r0, _08063880 @ =gUnk_03000FA0
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _08063874
	bl sub_080A18F8
_08063874:
	ldr r2, _08063884 @ =0x0000027E
	adds r1, r5, r2
	movs r0, #9
	b _08063B70
	.align 2, 0
_0806387C: .4byte 0x00000269
_08063880: .4byte gUnk_03000FA0
_08063884: .4byte 0x0000027E
_08063888:
	bl sub_0806CD90
	adds r6, r0, #0
	cmp r6, #0
	beq _080638C4
	ldr r1, _080638CC @ =0x00000269
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _080638C4
	cmp r0, #2
	beq _080638C4
	ldrh r0, [r6, #0x10]
	bl sub_08058D5C
	ldr r4, _080638D0 @ =gUnk_03000FA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r4, #0x3c]
	ldrh r0, [r6, #0x14]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r4, #0x35
	movs r0, #4
	strb r0, [r4]
_080638C4:
	ldr r2, _080638D4 @ =0x0000027E
	adds r1, r5, r2
	movs r0, #3
	b _08063B70
	.align 2, 0
_080638CC: .4byte 0x00000269
_080638D0: .4byte gUnk_03000FA0
_080638D4: .4byte 0x0000027E
_080638D8:
	adds r0, r2, #0
	adds r0, #0x95
	ldrb r0, [r0]
	cmp r0, #1
	bne _080638E4
	b _08063B72
_080638E4:
	adds r1, r2, #0
	adds r1, #0x35
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080638F4 @ =0x0000027E
	adds r1, r5, r0
	movs r0, #4
	b _08063B70
	.align 2, 0
_080638F4: .4byte 0x0000027E
_080638F8:
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _08063924 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r4, #0
	strb r4, [r0]
	ldr r1, _08063928 @ =0x00000269
	adds r0, r5, r1
	ldrb r0, [r0]
	bl sub_080732C0
	ldr r2, _0806392C @ =0x0000027E
	adds r1, r5, r2
	movs r0, #5
	strb r0, [r1]
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r5, r1
	strh r4, [r0]
	b _08063B72
	.align 2, 0
_08063924: .4byte gUnk_03000FA0
_08063928: .4byte 0x00000269
_0806392C: .4byte 0x0000027E
_08063930:
	ldr r2, _080639AC @ =0x00000269
	adds r4, r5, r2
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080639B8
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	movs r4, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc7
	bhi _08063958
	b _08063B72
_08063958:
	movs r1, #0xc8
	lsls r1, r1, #1
	movs r0, #0
	movs r2, #0x64
	bl sub_08138DAC
	movs r2, #0xb1
	lsls r2, r2, #2
	adds r1, r5, r2
	str r0, [r1]
	movs r0, #0xd0
	lsls r0, r0, #1
	movs r1, #0x60
	movs r2, #0x64
	bl sub_08138DAC
	movs r2, #0xb2
	lsls r2, r2, #2
	adds r1, r5, r2
	str r0, [r1]
	ldr r1, _080639B0 @ =gUnk_03000DD0
	adds r2, r1, #0
	adds r2, #0x4a
	ldrb r0, [r2]
	movs r0, #0xe0
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	strb r4, [r2]
	adds r0, r1, #0
	adds r0, #0x4e
	ldrb r1, [r0]
	strb r4, [r0]
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x32
	strh r0, [r1]
	ldr r2, _080639B4 @ =0x0000027E
	adds r1, r5, r2
	movs r0, #7
	b _08063B70
	.align 2, 0
_080639AC: .4byte 0x00000269
_080639B0: .4byte gUnk_03000DD0
_080639B4: .4byte 0x0000027E
_080639B8:
	bl sub_08075C18
	cmp r0, #1
	bne _080639C2
	b _08063B72
_080639C2:
	bl sub_08075C34
	ldrb r0, [r4]
	cmp r0, #0
	bne _080639D0
	bl sub_0806D758
_080639D0:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080639E0
	movs r0, #0xe
	bl sub_080A1664
_080639E0:
	ldr r0, _080639E8 @ =0x0000027E
	adds r1, r5, r0
	movs r0, #6
	b _08063B70
	.align 2, 0
_080639E8: .4byte 0x0000027E
_080639EC:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08063A00
	bl sub_080A1634
	cmp r0, #0
	bne _08063A00
	b _08063B72
_08063A00:
	ldr r2, _08063A40 @ =0x0000026D
	adds r1, r5, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #1
	adds r1, r5, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _08063A44 @ =0x0000027F
	adds r1, r5, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x14
	adds r1, r5, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	bl sub_0807628C
	b _08063B72
	.align 2, 0
_08063A40: .4byte 0x0000026D
_08063A44: .4byte 0x0000027F
_08063A48:
	ldr r0, _08063A7C @ =gUnk_03000DD0
	adds r3, r0, #0
	adds r3, #0x4e
	ldrb r0, [r3]
	cmp r0, #0xe
	bhi _08063A80
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r1, r5, r0
	ldrh r2, [r1]
	adds r0, r2, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08063A6A
	b _08063B72
_08063A6A:
	adds r0, r2, #0
	adds r0, #0x55
	strh r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	ldrb r1, [r3]
	strb r0, [r3]
	b _08063B72
	.align 2, 0
_08063A7C: .4byte gUnk_03000DD0
_08063A80:
	ldrh r1, [r2, #0x2e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08063B72
	movs r0, #0xc8
	lsls r0, r0, #1
	movs r1, #0x10
	movs r2, #0x64
	bl sub_08138DAC
	movs r2, #0xb3
	lsls r2, r2, #2
	adds r1, r5, r2
	str r0, [r1]
	ldr r0, _08063AB0 @ =0x0000027E
	adds r1, r5, r0
	movs r0, #8
	strb r0, [r1]
	movs r0, #6
	bl sub_0814531C
	b _08063B72
	.align 2, 0
_08063AB0: .4byte 0x0000027E
_08063AB4:
	movs r1, #0xb3
	lsls r1, r1, #2
	adds r4, r5, r1
	ldr r0, [r4]
	bl sub_08139548
	cmp r0, #0
	beq _08063B72
	movs r2, #0xb1
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	bl sub_08139468
	movs r1, #0xb2
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_08139468
	ldr r0, [r4]
	bl sub_08139468
	bl sub_08075C34
	bl sub_08143054
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08063AF6
	movs r0, #0x66
	b _08063B74
_08063AF6:
	ldr r0, _08063B34 @ =gUnk_03001064
	strh r1, [r0]
	ldr r0, _08063B38 @ =0x04000200
	strh r1, [r0]
	adds r0, #8
	strh r1, [r0]
	ldr r0, _08063B3C @ =0x04000004
	strh r1, [r0]
	bl m4aSoundVSyncOff
	movs r0, #0xf
	bl sub_08003CDC
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x80
	strh r0, [r1]
	ldr r0, _08063B40 @ =gUnk_03000E60
	bl sub_08002DFC
	bl sub_0815D910
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08063B44 @ =0x0000027E
	adds r1, r5, r0
	movs r0, #0x30
	b _08063B70
	.align 2, 0
_08063B34: .4byte gUnk_03001064
_08063B38: .4byte 0x04000200
_08063B3C: .4byte 0x04000004
_08063B40: .4byte gUnk_03000E60
_08063B44: .4byte 0x0000027E
_08063B48:
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_08075DEC
	ldr r2, _08063B58 @ =0x0000027E
	adds r1, r5, r2
	movs r0, #0xa
	b _08063B70
	.align 2, 0
_08063B58: .4byte 0x0000027E
_08063B5C:
	bl sub_08075BE4
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r1, r0
	cmp r1, #0
	bne _08063B72
_08063B6A:
	ldr r0, _08063B7C @ =0x0000027E
	adds r1, r5, r0
	movs r0, #2
_08063B70:
	strb r0, [r1]
_08063B72:
	movs r0, #0x60
_08063B74:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08063B7C: .4byte 0x0000027E

	thumb_func_start sub_08063B80
sub_08063B80: @ 0x08063B80
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0814301C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08063B9C
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08063BC4
_08063B9C:
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, [r2]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r7, #0x9b
	lsls r7, r7, #2
	adds r1, r5, r7
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08063BC0 @ =0x0000027E
	adds r0, r5, r1
	strb r2, [r0]
	b _08063C5E
	.align 2, 0
_08063BC0: .4byte 0x0000027E
_08063BC4:
	movs r7, #0xaf
	lsls r7, r7, #2
	adds r6, r5, r7
	ldr r4, [r6]
	movs r0, #8
	ands r4, r0
	cmp r4, #0
	bne _08063C5E
	movs r0, #0x40
	bl sub_0806D97C
	movs r0, #2
	bl sub_0806D970
	ldr r0, [r6]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08063C00
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #2
	strb r1, [r0]
	ldr r7, _08063BFC @ =0x0000027E
	adds r0, r5, r7
	strb r4, [r0]
	b _08063C5E
	.align 2, 0
_08063BFC: .4byte 0x0000027E
_08063C00:
	bl sub_080689EC
	ldr r0, _08063C68 @ =0x0000027F
	adds r4, r5, r0
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r3, r5, r1
	adds r0, r3, r0
	ldrb r0, [r0]
	ldr r7, _08063C6C @ =0x0000027E
	adds r6, r5, r7
	strb r0, [r6]
	ldr r0, _08063C70 @ =0x0000026D
	adds r2, r5, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r7, #0x10
	adds r1, r5, r7
	adds r0, r1, r0
	ldrb r0, [r0]
	subs r7, #2
	adds r5, r5, r7
	strb r0, [r5]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r3, r0
	ldrb r0, [r3]
	strb r0, [r6]
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5]
_08063C5E:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08063C68: .4byte 0x0000027F
_08063C6C: .4byte 0x0000027E
_08063C70: .4byte 0x0000026D

	thumb_func_start sub_08063C74
sub_08063C74: @ 0x08063C74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r5, #0xd0
	lsls r5, r5, #2
	adds r0, r5, #0
	bl BattleAlloc
	str r0, [r4, #0x54]
	movs r0, #0xe0
	bl BattleAlloc
	str r0, [r4, #0x58]
	ldr r0, [r4, #0x54]
	adds r1, r5, #0
	bl memzero
	ldr r0, [r4, #0x58]
	movs r1, #0xe0
	bl memzero
	ldr r6, _08063D48 @ =gBattleEnemyAndGuestUnits
	movs r0, #0x84
	lsls r0, r0, #3
	adds r0, r0, r6
	mov sb, r0
	ldr r5, [r4, #0x54]
	ldr r7, [r4, #0x58]
	movs r1, #7
	mov sl, r1
	movs r0, #0x4e
	adds r0, r0, r6
	mov r8, r0
	adds r4, r5, #0
	adds r4, #0x40
_08063CC0:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08063D22
	mov r0, sb
	ldrb r1, [r0, #0x17]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08063D22
	adds r0, r6, #0
	bl sub_0805B308
	cmp r0, #0
	beq _08063D22
	bl sub_0806D918
	adds r1, r0, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _08063D22
	movs r0, #0xc
	ands r0, r1
	cmp r0, #4
	beq _08063D22
	mov r0, r8
	ldrb r1, [r0, #0xf]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08063D22
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0x68
	bl memcpy2
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0x1c
	bl memcpy2
	ldrh r0, [r4, #2]
	strh r0, [r4]
	ldrh r0, [r4, #6]
	strh r0, [r4, #4]
	adds r4, #0x68
	adds r5, #0x68
	adds r7, #0x1c
_08063D22:
	movs r1, #1
	rsbs r1, r1, #0
	add sl, r1
	movs r0, #0x68
	add r8, r0
	adds r6, #0x68
	movs r1, #0x1c
	add sb, r1
	mov r0, sl
	cmp r0, #0
	bge _08063CC0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063D48: .4byte gBattleEnemyAndGuestUnits

	thumb_func_start sub_08063D4C
sub_08063D4C: @ 0x08063D4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_080A169C
	ldr r5, _08063DC4 @ =gBattlePlayerUnits
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r4, r5, r0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl sub_08060014
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl sub_080601A8
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r2, #0xec
	lsls r2, r2, #3
	adds r1, r5, r2
	movs r2, #8
	bl sub_080601A8
	ldr r3, _08063DC8 @ =0xFFFFEC10
	adds r4, r5, r3
	bl sub_080209CC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r7, #0
	subs r0, #1
	cmp r7, r0
	bge _08063DF0
	movs r0, #0x68
	mov sl, r0
	ldr r6, _08063DCC @ =0x00000C98
	ldr r1, _08063DD0 @ =0xFFFFEC5E
	adds r5, r5, r1
	mov r8, r6
_08063DAA:
	adds r1, r4, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _08063DD4
	subs r6, #0x68
	mov r2, r8
	mov r3, sl
	subs r2, r2, r3
	mov r8, r2
	adds r5, #0x68
	adds r4, #0x68
	adds r7, #1
	b _08063DE8
	.align 2, 0
_08063DC4: .4byte gBattlePlayerUnits
_08063DC8: .4byte 0xFFFFEC10
_08063DCC: .4byte 0x00000C98
_08063DD0: .4byte 0xFFFFEC5E
_08063DD4:
	adds r1, r4, #0
	adds r1, #0x68
	adds r0, r4, #0
	mov r2, r8
	bl memcpy2
	adds r0, r4, r6
	movs r1, #0x68
	bl memzero
_08063DE8:
	mov r0, sb
	subs r0, #1
	cmp r7, r0
	blt _08063DAA
_08063DF0:
	movs r0, #0xb
	bl sub_08142F50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08063E18
	ldr r0, _08063EB4 @ =gUnk_02000000
	movs r4, #0xfd
	adds r2, r0, #0
	adds r2, #0x8d
	movs r3, #0x1f
_08063E08:
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #0x68
	subs r3, #1
	cmp r3, #0
	bge _08063E08
_08063E18:
	ldr r1, _08063EB8 @ =gUnk_0202A88C
	ldr r0, [r1]
	ldr r2, _08063EBC @ =0x0000025D
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r1
	cmp r0, #1
	bhi _08063EC8
	ldr r0, _08063EC0 @ =gBattleEnemyAndGuestUnits
	movs r3, #0x84
	lsls r3, r3, #3
	adds r6, r0, r3
	movs r1, #0
	mov r8, r1
	movs r7, #7
	adds r5, r0, #0
	adds r5, #0x4e
_08063E40:
	ldrb r4, [r5]
	cmp r4, #0
	beq _08063E72
	ldrb r2, [r6, #0x17]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	bne _08063E72
	ldrb r1, [r5, #0xf]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08063E72
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08063E68
	cmp r4, #1
	bne _08063E72
_08063E68:
	movs r0, #0xfd
	ands r0, r2
	strb r0, [r6, #0x17]
	movs r2, #1
	mov r8, r2
_08063E72:
	subs r7, #1
	adds r5, #0x68
	adds r6, #0x1c
	cmp r7, #0
	bge _08063E40
	mov r3, r8
	cmp r3, #0
	beq _08063EC8
	mov r1, sb
	ldr r0, [r1]
	bl sub_08063C74
	movs r0, #4
	movs r1, #1
	bl sub_08142F7C
	ldr r2, _08063EC4 @ =gUnk_03000FA0
	adds r1, r2, #0
	adds r1, #0x89
	movs r0, #2
	strb r0, [r1]
	adds r1, #3
	mov r3, sb
	ldr r0, [r3]
	ldr r0, [r0, #0x54]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r3]
	ldr r0, [r0, #0x58]
	str r0, [r1]
	movs r0, #1
	b _08063ECA
	.align 2, 0
_08063EB4: .4byte gUnk_02000000
_08063EB8: .4byte gUnk_0202A88C
_08063EBC: .4byte 0x0000025D
_08063EC0: .4byte gBattleEnemyAndGuestUnits
_08063EC4: .4byte gUnk_03000FA0
_08063EC8:
	movs r0, #0
_08063ECA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08063ED8
sub_08063ED8: @ 0x08063ED8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08021248
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	cmp r4, #0
	bne _08063F30
	ldr r0, _08063F24 @ =0x0000026D
	adds r1, r5, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08063F28 @ =0x0000026E
	adds r1, r5, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _08063F2C @ =0x0000027F
	adds r1, r5, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x14
	adds r1, r5, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	b _0806405E
	.align 2, 0
_08063F24: .4byte 0x0000026D
_08063F28: .4byte 0x0000026E
_08063F2C: .4byte 0x0000027F
_08063F30:
	movs r0, #1
	bl sub_0806D970
	bl sub_0806DA00
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _08063FCC
	movs r0, #0xb
	bl sub_081452CC
	movs r0, #0xa0
	movs r1, #0
	bl sub_08142FC4
	ldr r1, _08063FAC @ =0x0000025D
	adds r0, r5, r1
	movs r3, #0
	movs r4, #1
	strb r4, [r0]
	ldr r0, _08063FB0 @ =0x0000026D
	adds r2, r5, r0
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _08063FB4 @ =0x0000026E
	adds r0, r5, r2
	adds r0, r0, r1
	movs r1, #5
	strb r1, [r0]
	ldr r0, _08063FB8 @ =0x0000027F
	adds r2, r5, r0
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r5, r2
	adds r0, r0, r1
	strb r3, [r0]
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r0, r5, r1
	strb r4, [r0]
	subs r2, #2
	adds r1, r5, r2
	movs r0, #0xa
	strb r0, [r1]
	bl sub_08143054
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08063FC0
	ldr r0, _08063FBC @ =0x00000269
	adds r1, r5, r0
	movs r0, #2
	b _0806405C
	.align 2, 0
_08063FAC: .4byte 0x0000025D
_08063FB0: .4byte 0x0000026D
_08063FB4: .4byte 0x0000026E
_08063FB8: .4byte 0x0000027F
_08063FBC: .4byte 0x00000269
_08063FC0:
	ldr r1, _08063FC8 @ =0x00000269
	adds r0, r5, r1
	strb r4, [r0]
	b _0806405E
	.align 2, 0
_08063FC8: .4byte 0x00000269
_08063FCC:
	movs r0, #8
	ands r6, r0
	cmp r6, #0
	beq _08064034
	ldr r2, _08064028 @ =0x0000025D
	adds r4, r5, r2
	movs r0, #3
	strb r0, [r4]
	bl sub_0814301C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08063FF4
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08063FF8
_08063FF4:
	movs r0, #4
	strb r0, [r4]
_08063FF8:
	ldr r0, _0806402C @ =0x0000027F
	adds r3, r5, r0
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r5, r1
	adds r0, r2, r0
	movs r1, #0xa
	strb r1, [r0]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x1d
	strb r0, [r2]
	ldr r2, _08064030 @ =0x0000027E
	adds r1, r5, r2
	b _0806405A
	.align 2, 0
_08064028: .4byte 0x0000025D
_0806402C: .4byte 0x0000027F
_08064030: .4byte 0x0000027E
_08064034:
	ldr r0, _08064064 @ =0x0000025D
	adds r1, r5, r0
	movs r0, #4
	strb r0, [r1]
	ldr r1, _08064068 @ =0x0000027F
	adds r2, r5, r1
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r5, r2
	adds r0, r0, r1
	movs r1, #0xa
	strb r1, [r0]
	ldr r0, _0806406C @ =0x0000027E
	adds r1, r5, r0
_0806405A:
	movs r0, #5
_0806405C:
	strb r0, [r1]
_0806405E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064064: .4byte 0x0000025D
_08064068: .4byte 0x0000027F
_0806406C: .4byte 0x0000027E

	thumb_func_start sub_08064070
sub_08064070: @ 0x08064070
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806408C @ =0x0000025D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #4
	bls _08064080
	b _080641BE
_08064080:
	lsls r0, r0, #2
	ldr r1, _08064090 @ =_08064094
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806408C: .4byte 0x0000025D
_08064090: .4byte _08064094
_08064094: @ jump table
	.4byte _080640A8 @ case 0
	.4byte _080640AE @ case 1
	.4byte _0806410C @ case 2
	.4byte _0806410C @ case 3
	.4byte _08064164 @ case 4
_080640A8:
	bl sub_080A169C
	b _080641BE
_080640AE:
	ldr r2, _080640FC @ =0x00000269
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _080640BC
	bl sub_08063D4C
_080640BC:
	bl sub_080A169C
	ldr r0, _08064100 @ =0x0000026D
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08064104 @ =0x0000026E
	adds r1, r4, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08064108 @ =0x0000027F
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x14
	adds r1, r4, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #2
	adds r0, r4, r2
	strb r1, [r0]
	b _080641BE
	.align 2, 0
_080640FC: .4byte 0x00000269
_08064100: .4byte 0x0000026D
_08064104: .4byte 0x0000026E
_08064108: .4byte 0x0000027F
_0806410C:
	bl sub_08063D4C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080641A4
	ldr r0, _08064158 @ =0x0000026D
	adds r2, r4, r0
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0806415C @ =0x0000026E
	adds r0, r4, r2
	adds r0, r0, r1
	movs r3, #1
	strb r3, [r0]
	ldr r0, _08064160 @ =0x0000027F
	adds r2, r4, r0
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r4, r2
	adds r0, r0, r1
	movs r1, #0x2f
	strb r1, [r0]
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r0, r4, r1
	strb r3, [r0]
	subs r2, #2
	adds r1, r4, r2
	movs r0, #0xb
	b _080641BC
	.align 2, 0
_08064158: .4byte 0x0000026D
_0806415C: .4byte 0x0000026E
_08064160: .4byte 0x0000027F
_08064164:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080641A0
	bl sub_08063D4C
	ldr r1, _0806419C @ =gUnk_03000FA0
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
	b _080641A4
	.align 2, 0
_0806419C: .4byte gUnk_03000FA0
_080641A0:
	bl sub_08063D4C
_080641A4:
	movs r0, #0xa0
	movs r1, #0
	bl sub_08142FC4
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r2, _080641C4 @ =0x0000027E
	adds r1, r4, r2
	movs r0, #0x2f
_080641BC:
	strb r0, [r1]
_080641BE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080641C4: .4byte 0x0000027E

	thumb_func_start sub_080641C8
sub_080641C8: @ 0x080641C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r4, #0
	bl BattleAlloc
	str r0, [sp, #8]
	adds r1, r4, #0
	bl memzero
	ldr r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	movs r2, #0
	str r2, [sp]
_080641F4:
	movs r3, #0
	mov sb, r3
	ldr r1, [sp]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
_08064200:
	mov r2, sb
	lsls r0, r2, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	ldr r1, [sp, #0x10]
	bl sub_08028728
	adds r2, r0, #0
	ldrb r1, [r2, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806421C
	b _08064342
_0806421C:
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08064228
	b _08064342
_08064228:
	ldrb r1, [r2, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08064234
	b _08064342
_08064234:
	ldrb r1, [r2, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08064240
	b _08064342
_08064240:
	adds r0, r4, #0
	ldr r1, [sp, #0x10]
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _080643B0 @ =gUnk_0861CA5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08064342
	ldr r5, [sp]
	mov r3, sb
	lsls r0, r3, #1
	ldr r1, [sp, #8]
	adds r0, r1, r0
	lsls r1, r5, #6
	adds r1, r0, r1
	ldrh r0, [r1]
	adds r0, #3
	strh r0, [r1]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	movs r7, #1
	mov r4, sb
	adds r4, #1
	adds r6, r4, #0
	ldr r3, [sp]
	str r3, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x14]
	movs r1, #1
	mov sl, r1
_08064288:
	ldr r2, [sp, #0x14]
	subs r2, #1
	str r2, [sp, #0x20]
	mov r3, sl
	adds r3, #1
	str r3, [sp, #0x1c]
_08064294:
	cmp r4, #0
	blt _080642EE
	cmp r5, #0
	blt _080642EE
	cmp r4, #0x1f
	bgt _080642EE
	cmp r5, #0x1f
	bgt _080642EE
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	bl sub_08028728
	adds r2, r0, #0
	ldrb r1, [r2, #1]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080642EE
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080642EE
	ldrb r1, [r2, #2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080642EE
	ldrb r1, [r2, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080642EE
	lsls r1, r4, #1
	ldr r0, [sp, #8]
	adds r1, r0, r1
	lsls r0, r5, #6
	adds r1, r1, r0
	ldrh r0, [r1]
	ldr r2, [sp, #0x14]
	adds r0, r0, r2
	strh r0, [r1]
_080642EE:
	mov r3, r8
	adds r0, r4, r3
	mov r1, sb
	subs r0, r1, r0
	cmp r0, #0
	bge _080642FC
	rsbs r0, r0, #0
_080642FC:
	cmp r0, sl
	ble _08064308
	mov r2, r8
	mvns r0, r2
	adds r0, #1
	mov r8, r0
_08064308:
	adds r0, r5, r7
	ldr r3, [sp]
	subs r0, r3, r0
	cmp r0, #0
	bge _08064314
	rsbs r0, r0, #0
_08064314:
	cmp r0, sl
	ble _0806431C
	mvns r0, r7
	adds r7, r0, #1
_0806431C:
	add r4, r8
	adds r5, r5, r7
	cmp r6, r4
	bne _08064294
	ldr r0, [sp, #0x18]
	cmp r0, r5
	bne _08064294
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	movs r7, #1
	adds r4, r6, #1
	adds r6, r4, #0
	ldr r2, [sp, #0x20]
	str r2, [sp, #0x14]
	ldr r3, [sp, #0x1c]
	mov sl, r3
	cmp r2, #0
	bgt _08064288
_08064342:
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #0x1f
	bgt _0806434E
	b _08064200
_0806434E:
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp]
	cmp r2, #0x1f
	bgt _0806435A
	b _080641F4
_0806435A:
	movs r5, #0
	movs r4, #0
	movs r3, #0
	str r3, [sp]
_08064362:
	movs r0, #0
	mov sb, r0
	ldr r1, [sp]
	adds r1, #1
_0806436A:
	ldr r2, [sp, #0xc]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r2, [sp, #4]
	cmp r2, r0
	bgt _0806437C
	str r0, [sp, #4]
	mov r5, sb
	ldr r4, [sp]
_0806437C:
	movs r3, #1
	add sb, r3
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	mov r2, sb
	cmp r2, #0x1f
	ble _0806436A
	str r1, [sp]
	cmp r1, #0x1f
	ble _08064362
	ldr r0, [sp, #8]
	bl BattleFree
	lsls r0, r5, #8
	orrs r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080643B0: .4byte gUnk_0861CA5C

	thumb_func_start sub_080643B4
sub_080643B4: @ 0x080643B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x24
	adds r7, r0, #0
	ldr r1, _080643D8 @ =0x0000027E
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0x30
	bls _080643CC
	bl _080657A4
_080643CC:
	lsls r0, r0, #2
	ldr r1, _080643DC @ =_080643E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080643D8: .4byte 0x0000027E
_080643DC: .4byte _080643E0
_080643E0: @ jump table
	.4byte _080644A4 @ case 0
	.4byte _08064594 @ case 1
	.4byte _080657A4 @ case 2
	.4byte _080646FC @ case 3
	.4byte _080647AC @ case 4
	.4byte _080647B6 @ case 5
	.4byte _080647E4 @ case 6
	.4byte _08064814 @ case 7
	.4byte _08064828 @ case 8
	.4byte _08064844 @ case 9
	.4byte _0806492C @ case 10
	.4byte _08064956 @ case 11
	.4byte _080649E4 @ case 12
	.4byte _08064A08 @ case 13
	.4byte _08064AB8 @ case 14
	.4byte _08064AEC @ case 15
	.4byte _08064B90 @ case 16
	.4byte _08064BF0 @ case 17
	.4byte _08064C3C @ case 18
	.4byte _08064C70 @ case 19
	.4byte _08064CA0 @ case 20
	.4byte _08064CBC @ case 21
	.4byte _08064CEC @ case 22
	.4byte _08064D04 @ case 23
	.4byte _08064D4C @ case 24
	.4byte _08064D7C @ case 25
	.4byte _08064E4C @ case 26
	.4byte _08064E9C @ case 27
	.4byte _08064F00 @ case 28
	.4byte _08064F48 @ case 29
	.4byte _08064FCC @ case 30
	.4byte _0806504C @ case 31
	.4byte _08065108 @ case 32
	.4byte _0806513C @ case 33
	.4byte _0806518C @ case 34
	.4byte _080651C0 @ case 35
	.4byte _080651E4 @ case 36
	.4byte _08065404 @ case 37
	.4byte _08065450 @ case 38
	.4byte _080654C0 @ case 39
	.4byte _080654F8 @ case 40
	.4byte _08065528 @ case 41
	.4byte _0806557C @ case 42
	.4byte _08065680 @ case 43
	.4byte _08065724 @ case 44
	.4byte _0806576C @ case 45
	.4byte _080655A8 @ case 46
	.4byte _08065596 @ case 47
	.4byte _08065610 @ case 48
_080644A4:
	bl sub_081186E0
	cmp r0, #1
	bne _080644BE
	movs r0, #0xa0
	bl sub_08142FAC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _080644BE
	bl _080657A4
_080644BE:
	bl sub_08021248
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080644F8
	movs r0, #0
	bl sub_0805B308
	adds r3, r0, #0
	ldr r5, _08064524 @ =0x0000F7FF
	movs r4, #0x19
_080644D4:
	adds r0, r3, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _080644F0
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080644F0
	adds r2, r3, #0
	adds r2, #0x56
	ldrh r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r2]
_080644F0:
	subs r4, #1
	adds r3, #0xd0
	cmp r4, #0
	bge _080644D4
_080644F8:
	movs r0, #0x40
	bl sub_0806D97C
	movs r0, #0xa0
	bl sub_08142FAC
	movs r1, #0x10
	ands r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	beq _08064530
	ldr r0, _08064528 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r1, #0
	strb r1, [r0]
	ldr r2, _0806452C @ =0x0000027E
	adds r1, r7, r2
	movs r0, #4
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064524: .4byte 0x0000F7FF
_08064528: .4byte gUnk_03000FA0
_0806452C: .4byte 0x0000027E
_08064530:
	ldr r0, _08064588 @ =gUnk_03000FA0
	adds r0, #0x35
	strb r1, [r0]
	ldr r4, _0806458C @ =0x0000027F
	adds r1, r7, r4
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
	subs r4, #1
	adds r0, r7, r4
	strb r1, [r0]
	ldr r0, _08064590 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r4, #0x12
	adds r0, r7, r4
	strb r1, [r0]
	bl sub_08021248
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806457E
	bl _080657A4
_0806457E:
	bl sub_0805EAEC
	bl _080657A4
	.align 2, 0
_08064588: .4byte gUnk_03000FA0
_0806458C: .4byte 0x0000027F
_08064590: .4byte 0x0000026D
_08064594:
	bl sub_0814301C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080645AC
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080645F4
_080645AC:
	ldr r0, _080645E8 @ =0x0000027F
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
	ldr r4, _080645EC @ =0x0000027E
	adds r0, r7, r4
	strb r1, [r0]
	ldr r0, _080645F0 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r4, #0x12
	bl _080655FE
	.align 2, 0
_080645E8: .4byte 0x0000027F
_080645EC: .4byte 0x0000027E
_080645F0: .4byte 0x0000026D
_080645F4:
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _08064662
	ldr r2, [r7, #0x40]
	ldr r3, [r2, #4]
	ldrb r1, [r3, #0x17]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08064662
	movs r4, #0xaf
	lsls r4, r4, #2
	adds r5, r7, r4
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08064662
	ldr r0, [r2]
	adds r1, r3, #0
	movs r2, #0x10
	bl sub_08143B70
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0xb0
	bl sub_08142FC4
	ldr r4, _080646AC @ =gUnk_02029D80
	ldrb r1, [r4, #0xc]
	movs r0, #0xaf
	bl sub_08142FC4
	ldr r0, [r5]
	ands r0, r6
	cmp r0, #0
	beq _08064654
	movs r1, #0xdd
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r0, [r0]
	strb r0, [r4, #0x1f]
_08064654:
	ldrb r1, [r4, #0x1f]
	movs r0, #0xb1
	bl sub_08142FC4
	adds r0, r7, #0
	bl sub_08060CC8
_08064662:
	movs r2, #0x9a
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	bl sub_080211D0
	cmp r0, #1
	bne _080646B4
	movs r0, #1
	bl sub_0806D970
	bl sub_0806DA00
	ldr r4, _080646B0 @ =0x0000027E
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
	bl sub_0811831C
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	movs r0, #0x10
	bl sub_08075E08
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_08075DEC
	bl sub_0806FDE4
	bl _080657A4
	.align 2, 0
_080646AC: .4byte gUnk_02029D80
_080646B0: .4byte 0x0000027E
_080646B4:
	ldr r0, _080646F0 @ =0x0000027F
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
	ldr r4, _080646F4 @ =0x0000027E
	adds r0, r7, r4
	strb r1, [r0]
	ldr r0, _080646F8 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r4, #0x12
	bl _080655FE
	.align 2, 0
_080646F0: .4byte 0x0000027F
_080646F4: .4byte 0x0000027E
_080646F8: .4byte 0x0000026D
_080646FC:
	bl sub_0814301C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08064714
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806475C
_08064714:
	ldr r0, _08064750 @ =0x0000027F
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
	ldr r4, _08064754 @ =0x0000027E
	adds r0, r7, r4
	strb r1, [r0]
	ldr r0, _08064758 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r4, #0x12
	bl _080655FE
	.align 2, 0
_08064750: .4byte 0x0000027F
_08064754: .4byte 0x0000027E
_08064758: .4byte 0x0000026D
_0806475C:
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08064770
	bl _080657A4
_08064770:
	movs r0, #0x40
	bl sub_0806D97C
	ldr r2, _080647A8 @ =0x0000027F
	adds r1, r7, r2
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
	subs r2, #1
	adds r0, r7, r2
	strb r1, [r0]
	subs r4, #0x13
	adds r1, r7, r4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r2, #0x10
	bl _080655F6
	.align 2, 0
_080647A8: .4byte 0x0000027F
_080647AC:
	adds r0, r7, #0
	bl sub_08063ED8
	bl _080657A4
_080647B6:
	bl sub_080A30DC
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	ldr r4, _080647E0 @ =0x0000027E
	adds r1, r7, r4
	movs r0, #6
	strb r0, [r1]
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080647D8
	bl _080657A4
_080647D8:
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r7, r1
	b _08064946
	.align 2, 0
_080647E0: .4byte 0x0000027E
_080647E4:
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r4, r7, r2
	ldr r0, [r4]
	bl sub_080A2E2C
	adds r5, r0, #0
	cmp r5, #0
	beq _080647FA
	bl _080657A4
_080647FA:
	ldr r0, [r4]
	bl sub_080A30D0
	str r5, [r4]
	ldr r4, _08064810 @ =0x0000027E
	adds r1, r7, r4
	movs r0, #7
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064810: .4byte 0x0000027E
_08064814:
	bl sub_0808D53C
	ldr r0, _08064824 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #8
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064824: .4byte 0x0000027E
_08064828:
	bl sub_0808B10C
	cmp r0, #0
	beq _08064834
	bl _080657A4
_08064834:
	ldr r2, _08064840 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #9
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064840: .4byte 0x0000027E
_08064844:
	bl sub_0805EA3C
	movs r0, #0x44
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08064904
	bl sub_08143070
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08064904
	movs r0, #0x44
	movs r1, #1
	bl sub_08142F7C
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r2, _080648E0 @ =gUnk_0202A5AC
	ldr r0, _080648E4 @ =gUnk_03000FA0
	adds r0, #0x35
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldr r4, _080648E8 @ =gUnk_0202A5A8
	ldr r0, _080648EC @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _080648F0 @ =gUnk_0875D99A
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
	ldr r1, _080648F4 @ =0x0000022F
	movs r3, #0x15
	bl sub_08015D50
	ldr r0, _080648F8 @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080648FC @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r0, _08064900 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x2e
	strb r0, [r1]
	strb r4, [r2]
	bl _080657A4
	.align 2, 0
_080648E0: .4byte gUnk_0202A5AC
_080648E4: .4byte gUnk_03000FA0
_080648E8: .4byte gUnk_0202A5A8
_080648EC: .4byte 0x00001C44
_080648F0: .4byte gUnk_0875D99A
_080648F4: .4byte 0x0000022F
_080648F8: .4byte 0x0000026D
_080648FC: .4byte 0x0000026E
_08064900: .4byte 0x0000027E
_08064904:
	ldr r2, _08064928 @ =0x0000027F
	adds r1, r7, r2
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
	subs r2, #1
	adds r0, r7, r2
	strb r1, [r0]
	bl _080657A4
	.align 2, 0
_08064928: .4byte 0x0000027F
_0806492C:
	adds r0, r7, #0
	bl sub_08064070
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08064940
	bl _080657A4
_08064940:
	movs r4, #0xaf
	lsls r4, r4, #2
	adds r0, r7, r4
_08064946:
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r1, r2
	str r1, [r0]
	movs r0, #0x61
	bl _080657A6
_08064956:
	ldr r0, _080649D4 @ =gUnk_03000FA0
	adds r0, #0x89
	ldrb r4, [r0]
	cmp r4, #0
	beq _08064964
	bl _080657A4
_08064964:
	ldr r0, [r7, #0x54]
	cmp r0, #0
	beq _0806496E
	bl BattleFree
_0806496E:
	ldr r0, [r7, #0x58]
	cmp r0, #0
	beq _08064978
	bl BattleFree
_08064978:
	str r4, [r7, #0x54]
	str r4, [r7, #0x58]
	movs r0, #4
	movs r1, #0
	bl sub_08142F7C
	movs r0, #0xa0
	movs r1, #0
	bl sub_08142FC4
	movs r0, #1
	bl sub_0806D970
	bl sub_0805EA3C
	bl sub_0806DA00
	ldr r0, _080649D8 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080649DC @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r4, #0x9b
	lsls r4, r4, #2
	adds r0, r7, r4
	strb r1, [r0]
	ldr r0, _080649E0 @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r4, #0x12
	bl _080655FE
	.align 2, 0
_080649D4: .4byte gUnk_03000FA0
_080649D8: .4byte 0x0000026D
_080649DC: .4byte 0x0000026E
_080649E0: .4byte 0x0000027F
_080649E4:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080649F8
	bl sub_08075AF8
	movs r0, #0x13
	bl sub_080A1664
_080649F8:
	ldr r0, _08064A04 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0xd
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064A04: .4byte 0x0000027E
_08064A08:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08064A3C
	bl sub_08021274
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08064AF8
	movs r0, #0x85
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r4, #0
	movs r1, #0x40
	bl memzero
	adds r0, r4, #0
	bl sub_0806DA8C
	movs r2, #0x97
	lsls r2, r2, #2
	adds r1, r7, r2
	strb r0, [r1]
	b _08064C28
_08064A3C:
	bl sub_080A1634
	cmp r0, #0
	bne _08064A48
	bl _080657A4
_08064A48:
	bl sub_08021274
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08064A60
	ldr r0, _08064A5C @ =0x0000027E
	adds r1, r7, r0
	b _08064AFC
	.align 2, 0
_08064A5C: .4byte 0x0000027E
_08064A60:
	bl sub_080A16F8
	cmp r0, #0
	beq _08064AA0
	movs r1, #0x85
	lsls r1, r1, #2
	adds r4, r7, r1
	adds r0, r4, #0
	movs r1, #0x40
	bl memzero
	adds r0, r4, #0
	bl sub_0806DA8C
	movs r2, #0x97
	lsls r2, r2, #2
	adds r1, r7, r2
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_080A14C0
	movs r0, #0x17
	bl sub_080A1664
	ldr r4, _08064A9C @ =0x0000027E
	adds r1, r7, r4
	movs r0, #0xe
	strb r0, [r1]
	b _08064AA6
	.align 2, 0
_08064A9C: .4byte 0x0000027E
_08064AA0:
	movs r0, #0x18
	bl sub_080A1664
_08064AA6:
	ldr r0, _08064AB4 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0xe
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064AB4: .4byte 0x0000027E
_08064AB8:
	bl sub_080A1634
	cmp r0, #0
	bne _08064AC4
	bl _080657A4
_08064AC4:
	bl sub_080A16F8
	cmp r0, #0
	beq _08064ACE
	b _08064C28
_08064ACE:
	movs r1, #0x85
	lsls r1, r1, #2
	adds r4, r7, r1
	adds r0, r4, #0
	movs r1, #0x40
	bl memzero
	adds r0, r4, #0
	bl sub_080A185C
	movs r2, #0x97
	lsls r2, r2, #2
	adds r1, r7, r2
	strb r0, [r1]
	b _08064C28
_08064AEC:
	movs r0, #0x97
	lsls r0, r0, #2
	adds r3, r7, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _08064B08
_08064AF8:
	ldr r2, _08064B04 @ =0x0000027E
	adds r1, r7, r2
_08064AFC:
	movs r0, #0x12
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064B04: .4byte 0x0000027E
_08064B08:
	subs r0, #1
	strb r0, [r3]
	ldr r4, _08064B7C @ =0x0000026D
	adds r2, r7, r4
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08064B80 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r4, r7, r0
	ldrb r0, [r4]
	strb r0, [r1]
	ldr r1, _08064B84 @ =0x0000027F
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
	movs r1, #0x10
	strb r1, [r0]
	ldrb r1, [r3]
	lsls r1, r1, #2
	subs r2, #0x6c
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08064B6C
	ldr r1, _08064B88 @ =gUnk_03000FA0
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
_08064B6C:
	movs r0, #6
	strb r0, [r4]
	ldr r4, _08064B8C @ =0x0000027E
	adds r1, r7, r4
	movs r0, #0x1a
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064B7C: .4byte 0x0000026D
_08064B80: .4byte 0x0000026E
_08064B84: .4byte 0x0000027F
_08064B88: .4byte gUnk_03000FA0
_08064B8C: .4byte 0x0000027E
_08064B90:
	movs r1, #0x97
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r1, r1, #2
	movs r2, #0x85
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r2, r4, #0
	adds r2, #0x56
	ldrh r1, [r2]
	ldr r0, _08064BE8 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805E93C
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x42
	ldrh r0, [r0]
	lsrs r0, r0, #1
	adds r1, #0x40
	strh r0, [r1]
	ldr r2, [r4, #4]
	ldrb r1, [r2, #0xc]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2, #0xc]
	adds r4, #0x78
	ldrh r1, [r4]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r4]
	ldr r4, _08064BEC @ =0x0000027E
	adds r1, r7, r4
	movs r0, #0x11
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064BE8: .4byte 0x0000F7FF
_08064BEC: .4byte 0x0000027E
_08064BF0:
	movs r1, #0x97
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r1, r1, #2
	movs r2, #0x85
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0805E93C
	cmp r0, #0
	beq _08064C14
	bl _080657A4
_08064C14:
	adds r0, r4, #0
	movs r1, #8
	bl sub_0805DDB4
	adds r2, r4, #0
	adds r2, #0x78
	ldrh r1, [r2]
	ldr r0, _08064C34 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2]
_08064C28:
	ldr r4, _08064C38 @ =0x0000027E
	adds r1, r7, r4
	movs r0, #0xf
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064C34: .4byte 0x0000FFDF
_08064C38: .4byte 0x0000027E
_08064C3C:
	bl sub_08021274
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08064C54
	ldr r0, _08064C50 @ =0x0000027E
	adds r1, r7, r0
	b _08064CDE
	.align 2, 0
_08064C50: .4byte 0x0000027E
_08064C54:
	bl sub_0808C20C
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	ldr r4, _08064C6C @ =0x0000027E
	adds r1, r7, r4
	movs r0, #0x13
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064C6C: .4byte 0x0000027E
_08064C70:
	movs r0, #0xe6
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r0, [r4]
	bl sub_0808C2C0
	adds r5, r0, #0
	cmp r5, #0
	beq _08064C86
	bl _080657A4
_08064C86:
	ldr r0, [r4]
	bl sub_0808D4E0
	str r5, [r4]
	ldr r2, _08064C9C @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x14
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064C9C: .4byte 0x0000027E
_08064CA0:
	bl sub_0808C050
	movs r4, #0xe6
	lsls r4, r4, #1
	adds r1, r7, r4
	str r0, [r1]
	ldr r0, _08064CB8 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x15
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064CB8: .4byte 0x0000027E
_08064CBC:
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r4, r7, r1
	ldr r0, [r4]
	bl sub_0808C120
	adds r5, r0, #0
	cmp r5, #0
	beq _08064CD2
	bl _080657A4
_08064CD2:
	ldr r0, [r4]
	bl sub_0808D558
	str r5, [r4]
	ldr r2, _08064CE8 @ =0x0000027E
	adds r1, r7, r2
_08064CDE:
	movs r0, #0x16
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064CE8: .4byte 0x0000027E
_08064CEC:
	movs r0, #0x20
	bl sub_08075DEC
	ldr r4, _08064D00 @ =0x0000027E
	adds r1, r7, r4
	movs r0, #0x17
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064D00: .4byte 0x0000027E
_08064D04:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08064D1A
	bl sub_080A1634
	cmp r0, #0
	bne _08064D1A
	bl _080657A4
_08064D1A:
	bl sub_08021274
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08064D30
	ldr r0, _08064D2C @ =0x0000027E
	adds r1, r7, r0
	b _08064D6E
	.align 2, 0
_08064D2C: .4byte 0x0000027E
_08064D30:
	bl sub_0808B8A0
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	ldr r4, _08064D48 @ =0x0000027E
	adds r1, r7, r4
	movs r0, #0x18
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064D48: .4byte 0x0000027E
_08064D4C:
	movs r0, #0xe6
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r0, [r4]
	bl sub_0808B9B0
	adds r5, r0, #0
	cmp r5, #0
	beq _08064D62
	bl _080657A4
_08064D62:
	ldr r0, [r4]
	bl sub_0808D4B0
	str r5, [r4]
	ldr r2, _08064D78 @ =0x0000027E
	adds r1, r7, r2
_08064D6E:
	movs r0, #0x19
	strb r0, [r1]
	bl _080657A4
	.align 2, 0
_08064D78: .4byte 0x0000027E
_08064D7C:
	ldr r4, _08064E3C @ =0x0000026D
	adds r5, r7, r4
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08064E40 @ =0x0000026E
	adds r4, r7, r1
	adds r0, r4, r0
	movs r2, #0
	mov r8, r2
	movs r6, #7
	strb r6, [r0]
	ldr r0, _08064E44 @ =0x0000027F
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
	movs r1, #0x31
	strb r1, [r0]
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	strb r6, [r4]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x30
	strb r0, [r2]
	movs r4, #0xaf
	lsls r4, r4, #2
	adds r2, r7, r4
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r2]
	mov r0, r8
	str r0, [r7, #0x40]
	adds r1, #0x6c
	adds r0, r7, r1
	strb r6, [r0]
	ldr r2, _08064E48 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x2f
	strb r0, [r1]
	movs r0, #0x80
	movs r1, #0
	bl sub_08142FC4
	movs r0, #0x81
	movs r1, #0
	bl sub_08142FC4
	movs r4, #0
	movs r5, #0x82
	lsls r5, r5, #0x10
_08064E08:
	lsrs r0, r5, #0x10
	movs r1, #0
	bl sub_08142FC4
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #7
	ble _08064E08
	movs r4, #0
	movs r5, #0x8a
	lsls r5, r5, #0x10
_08064E22:
	lsrs r0, r5, #0x10
	movs r1, #0
	bl sub_08142FC4
	movs r1, #0x80
	lsls r1, r1, #9
	adds r5, r5, r1
	adds r4, #1
	cmp r4, #7
	ble _08064E22
	bl _080657A4
	.align 2, 0
_08064E3C: .4byte 0x0000026D
_08064E40: .4byte 0x0000026E
_08064E44: .4byte 0x0000027F
_08064E48: .4byte 0x0000027E
_08064E4C:
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r7, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _08064E5C
	bl sub_0806573C
_08064E5C:
	ldr r4, _08064E94 @ =0x0000026D
	adds r1, r7, r4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r2, #0x22
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r4, #1
	adds r0, r7, r4
	strb r1, [r0]
	ldr r0, _08064E98 @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r4, #0x12
	b _080655FE
	.align 2, 0
_08064E94: .4byte 0x0000026D
_08064E98: .4byte 0x0000027F
_08064E9C:
	ldr r0, _08064EF4 @ =0x00000292
	adds r1, r7, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r4, #0xa4
	lsls r4, r4, #2
	adds r0, r7, r4
	strh r1, [r0]
	ldr r0, _08064EF8 @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r2, #0x26
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r4, #0x24
	adds r0, r7, r4
	strb r1, [r0]
	ldr r0, _08064EFC @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r4, #0x12
	b _080655FE
	.align 2, 0
_08064EF4: .4byte 0x00000292
_08064EF8: .4byte 0x0000026D
_08064EFC: .4byte 0x0000027F
_08064F00:
	bl sub_081452EC
	ldr r0, _08064F3C @ =0x0000026D
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08064F40 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r4, #0x9b
	lsls r4, r4, #2
	adds r0, r7, r4
	strb r1, [r0]
	ldr r0, _08064F44 @ =0x0000027F
	adds r1, r7, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x12
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r4, #0x12
	b _080655FE
	.align 2, 0
_08064F3C: .4byte 0x0000026D
_08064F40: .4byte 0x0000026E
_08064F44: .4byte 0x0000027F
_08064F48:
	movs r0, #2
	bl sub_0814531C
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0x20
	strh r0, [r1]
	ldr r1, _08064FBC @ =0x0000026D
	adds r5, r7, r1
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08064FC0 @ =0x0000026E
	adds r4, r7, r2
	adds r0, r4, r0
	movs r6, #1
	strb r6, [r0]
	ldr r0, _08064FC4 @ =0x0000027F
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
	movs r1, #0x1c
	strb r1, [r0]
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r4, r0
	strb r6, [r4]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x1e
	strb r0, [r2]
	ldr r2, _08064FC8 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x1a
	strb r0, [r1]
	movs r4, #0x9b
	lsls r4, r4, #2
	adds r0, r7, r4
	strb r6, [r0]
	bl _080657A4
	.align 2, 0
_08064FBC: .4byte 0x0000026D
_08064FC0: .4byte 0x0000026E
_08064FC4: .4byte 0x0000027F
_08064FC8: .4byte 0x0000027E
_08064FCC:
	movs r0, #1
	bl sub_0806D970
	bl sub_0806DA00
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806501A
	bl sub_0806DBC4
	cmp r0, #1
	beq _08065006
	cmp r0, #1
	bgt _08064FF2
	cmp r0, #0
	beq _08064FF8
	b _08065028
_08064FF2:
	cmp r0, #2
	beq _08065022
	b _08065028
_08064FF8:
	movs r0, #0x14
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806501A
	b _08065012
_08065006:
	movs r0, #0x14
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806501A
_08065012:
	movs r0, #0xb
	bl sub_081452CC
	b _08065028
_0806501A:
	movs r0, #0xc
	bl sub_081452CC
	b _08065028
_08065022:
	movs r0, #0xc
	bl sub_081452CC
_08065028:
	ldr r4, _08065044 @ =0x0000022F
	bl sub_0806DBC4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08080428
	ldr r0, _08065048 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x1f
	strb r0, [r1]
	b _080657A4
	.align 2, 0
_08065044: .4byte 0x0000022F
_08065048: .4byte 0x0000027E
_0806504C:
	bl sub_08080614
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08065058
	b _080657A4
_08065058:
	bl MultiSioStop
	movs r0, #1
	bl sub_0806D970
	bl sub_0806DA00
	movs r0, #2
	bl sub_0814531C
	ldr r1, _080650F0 @ =0x0000026D
	adds r4, r7, r1
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080650F4 @ =0x0000026E
	adds r5, r7, r2
	adds r0, r5, r0
	subs r2, #2
	adds r1, r7, r2
	ldrb r1, [r1]
	strb r1, [r0]
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r5, r0
	movs r1, #3
	strb r1, [r0]
	ldr r0, _080650F8 @ =0x0000027F
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
	movs r1, #0x2e
	strb r1, [r0]
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r5, r0
	movs r0, #1
	strb r0, [r5]
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
	ldr r4, _080650FC @ =0x0000027E
	adds r1, r7, r4
	movs r0, #0x1a
	strb r0, [r1]
	ldr r0, _08065100 @ =gUnk_02000000
	ldr r1, _08065104 @ =0x000013BA
	adds r0, r0, r1
	movs r1, #0xa
	strb r1, [r0]
	b _080657A4
	.align 2, 0
_080650F0: .4byte 0x0000026D
_080650F4: .4byte 0x0000026E
_080650F8: .4byte 0x0000027F
_080650FC: .4byte 0x0000027E
_08065100: .4byte gUnk_02000000
_08065104: .4byte 0x000013BA
_08065108:
	ldr r0, _08065134 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r1, #0
	strb r1, [r0]
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806512A
	bl sub_080A1634
	cmp r0, #0
	bne _08065124
	b _080657A4
_08065124:
	movs r0, #0x12
	bl sub_080A1664
_0806512A:
	ldr r2, _08065138 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x21
	strb r0, [r1]
	b _080657A4
	.align 2, 0
_08065134: .4byte gUnk_03000FA0
_08065138: .4byte 0x0000027E
_0806513C:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08065150
	bl sub_080A1634
	cmp r0, #0
	bne _08065150
	b _080657A4
_08065150:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08065160
	bl sub_0811C6DC
	b _0806517E
_08065160:
	bl sub_080A16F8
	cmp r0, #0
	beq _08065178
	bl sub_0811C6DC
	bl sub_080A17F8
	movs r0, #0x17
	bl sub_080A1664
	b _0806517E
_08065178:
	movs r0, #0x18
	bl sub_080A1664
_0806517E:
	ldr r4, _08065188 @ =0x0000027E
	adds r1, r7, r4
	movs r0, #0x22
	strb r0, [r1]
	b _080657A4
	.align 2, 0
_08065188: .4byte 0x0000027E
_0806518C:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080651B4
	bl sub_080A1634
	cmp r0, #0
	bne _080651A0
	b _080657A4
_080651A0:
	movs r0, #0xc
	bl sub_080A1664
	ldr r0, _080651B0 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x23
	strb r0, [r1]
	b _080657A4
	.align 2, 0
_080651B0: .4byte 0x0000027E
_080651B4:
	ldr r2, _080651BC @ =0x0000027E
	adds r1, r7, r2
	b _080651DA
	.align 2, 0
_080651BC: .4byte 0x0000027E
_080651C0:
	bl sub_080A1634
	cmp r0, #0
	bne _080651CA
	b _080657A4
_080651CA:
	bl sub_080A16F8
	cmp r0, #0
	bne _080651D6
	bl sub_080A1828
_080651D6:
	ldr r4, _080651E0 @ =0x0000027E
	adds r1, r7, r4
_080651DA:
	movs r0, #0x24
	strb r0, [r1]
	b _080657A4
	.align 2, 0
_080651E0: .4byte 0x0000027E
_080651E4:
	bl sub_0811CFEC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080651F0
	b _080657A4
_080651F0:
	bl sub_0813F8BC
	cmp r0, #0
	beq _080651FA
	b _080653B0
_080651FA:
	ldr r1, _08065214 @ =gUnk_02000000
	ldr r2, _08065218 @ =0x000021BC
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, r1, #0
	cmp r0, #1
	beq _0806523C
	cmp r0, #1
	bgt _0806521C
	cmp r0, #0
	beq _08065226
	b _0806526C
	.align 2, 0
_08065214: .4byte gUnk_02000000
_08065218: .4byte 0x000021BC
_0806521C:
	cmp r0, #2
	beq _0806524C
	cmp r0, #3
	beq _0806525C
	b _0806526C
_08065226:
	ldr r4, _08065238 @ =0x000021CF
	adds r0, r2, r4
	ldrb r3, [r0]
	subs r3, #2
_0806522E:
	cmp r3, #0
	bge _0806527A
	movs r3, #0
	b _0806527A
	.align 2, 0
_08065238: .4byte 0x000021CF
_0806523C:
	ldr r1, _08065248 @ =0x000021CF
	adds r0, r2, r1
	ldrb r3, [r0]
	subs r3, #1
	b _0806522E
	.align 2, 0
_08065248: .4byte 0x000021CF
_0806524C:
	ldr r4, _08065258 @ =0x000021CF
	adds r0, r2, r4
	ldrb r3, [r0]
	adds r3, #1
	b _08065274
	.align 2, 0
_08065258: .4byte 0x000021CF
_0806525C:
	ldr r1, _08065268 @ =0x000021CF
	adds r0, r2, r1
	ldrb r3, [r0]
	adds r3, #2
	b _08065274
	.align 2, 0
_08065268: .4byte 0x000021CF
_0806526C:
	ldr r4, _0806530C @ =0x000021CF
	adds r0, r2, r4
	ldrb r3, [r0]
	adds r3, #3
_08065274:
	cmp r3, #8
	ble _0806527A
	movs r3, #8
_0806527A:
	strb r3, [r0]
	ldr r0, _08065310 @ =gUnk_02029CC0
	ldr r0, [r0]
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0806528A
	b _080653EE
_0806528A:
	ldr r1, _08065314 @ =0x000021C8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806532C
	ldr r4, _0806530C @ =0x000021CF
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #3
	bls _080652A4
	b _080653EE
_080652A4:
	ldr r0, _08065318 @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806531C @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r4, #0x9b
	lsls r4, r4, #2
	adds r3, r7, r4
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r0, _08065320 @ =0x0000027F
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
	movs r1, #0x25
	strb r1, [r0]
	movs r4, #4
	strb r4, [r3]
	ldr r0, _08065324 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #8
	strb r0, [r1]
	adds r2, #0x52
	adds r1, r7, r2
	movs r0, #0x2e
	strh r0, [r1]
	bl sub_080641C8
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _08065328 @ =gUnk_03000FA0
	movs r2, #0xff
	lsrs r0, r3, #8
	strh r0, [r1, #0x3c]
	ands r3, r2
	adds r0, r1, #0
	adds r0, #0x40
	strh r3, [r0]
	b _0806556C
	.align 2, 0
_0806530C: .4byte 0x000021CF
_08065310: .4byte gUnk_02029CC0
_08065314: .4byte 0x000021C8
_08065318: .4byte 0x0000026D
_0806531C: .4byte 0x0000026E
_08065320: .4byte 0x0000027F
_08065324: .4byte 0x0000027E
_08065328: .4byte gUnk_03000FA0
_0806532C:
	ldr r4, _08065398 @ =0x000021CF
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #7
	bls _080653EE
	ldr r0, _0806539C @ =0x0000026D
	adds r2, r7, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080653A0 @ =0x0000026E
	adds r1, r7, r2
	adds r1, r1, r0
	movs r4, #0x9b
	lsls r4, r4, #2
	adds r3, r7, r4
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r0, _080653A4 @ =0x0000027F
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
	movs r1, #0x25
	strb r1, [r0]
	movs r4, #4
	strb r4, [r3]
	ldr r0, _080653A8 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #8
	strb r0, [r1]
	adds r2, #0x52
	adds r1, r7, r2
	movs r0, #0x2d
	strh r0, [r1]
	bl sub_080641C8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _080653AC @ =gUnk_03000FA0
	lsrs r0, r0, #0x18
	strh r0, [r1, #0x3c]
	movs r0, #0xff
	ands r2, r0
	b _08065566
	.align 2, 0
_08065398: .4byte 0x000021CF
_0806539C: .4byte 0x0000026D
_080653A0: .4byte 0x0000026E
_080653A4: .4byte 0x0000027F
_080653A8: .4byte 0x0000027E
_080653AC: .4byte gUnk_03000FA0
_080653B0:
	ldr r0, _080653C8 @ =gUnk_02000000
	ldr r4, _080653CC @ =0x000021BC
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #2
	beq _080653D8
	cmp r0, #2
	ble _080653D0
	cmp r0, #3
	beq _080653DC
	b _080653E0
	.align 2, 0
_080653C8: .4byte gUnk_02000000
_080653CC: .4byte 0x000021BC
_080653D0:
	cmp r0, #0
	blt _080653E0
	movs r0, #0
	b _080653E2
_080653D8:
	movs r0, #1
	b _080653E2
_080653DC:
	movs r0, #2
	b _080653E2
_080653E0:
	movs r0, #3
_080653E2:
	bl sub_08049744
	cmp r0, #0
	beq _080653EE
	bl sub_080298E4
_080653EE:
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r4, #4
	strb r4, [r0]
	ldr r2, _08065400 @ =0x0000027E
	adds r1, r7, r2
	b _0806554A
	.align 2, 0
_08065400: .4byte 0x0000027E
_08065404:
	ldr r1, _08065420 @ =gUnk_02000000
	ldr r4, _08065424 @ =0x000021CF
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #3
	bhi _0806542C
	ldr r2, _08065428 @ =0x000021C8
	adds r0, r1, r2
	ldr r1, [r0]
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	b _0806543A
	.align 2, 0
_08065420: .4byte gUnk_02000000
_08065424: .4byte 0x000021CF
_08065428: .4byte 0x000021C8
_0806542C:
	cmp r0, #7
	bls _0806543C
	ldr r4, _08065448 @ =0x000021C8
	adds r0, r1, r4
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
_0806543A:
	str r1, [r0]
_0806543C:
	ldr r0, _0806544C @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x26
	strb r0, [r1]
	b _080657A4
	.align 2, 0
_08065448: .4byte 0x000021C8
_0806544C: .4byte 0x0000027E
_08065450:
	bl sub_0805E7D0
	ldr r0, _080654A0 @ =gUnk_03000FA0
	adds r0, #0x85
	ldrb r5, [r0]
	cmp r5, #0
	beq _08065460
	b _080657A4
_08065460:
	ldr r4, _080654A4 @ =gUnk_0202A5A8
	ldr r0, _080654A8 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r1, _080654AC @ =0x0000022F
	ldr r2, _080654B0 @ =gUnk_0875EC2E
	ldr r4, _080654B4 @ =0x000002D2
	adds r3, r7, r4
	ldrh r3, [r3]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp]
	movs r4, #1
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r4, #0x20
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	str r5, [sp, #0x18]
	bl sub_08017B24
	ldr r0, _080654B8 @ =0x0000025B
	adds r1, r7, r0
	movs r0, #0x80
	strb r0, [r1]
	ldr r2, _080654BC @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x27
	strb r0, [r1]
	b _080657A4
	.align 2, 0
_080654A0: .4byte gUnk_03000FA0
_080654A4: .4byte gUnk_0202A5A8
_080654A8: .4byte 0x00001C44
_080654AC: .4byte 0x0000022F
_080654B0: .4byte gUnk_0875EC2E
_080654B4: .4byte 0x000002D2
_080654B8: .4byte 0x0000025B
_080654BC: .4byte 0x0000027E
_080654C0:
	ldr r0, _080654EC @ =gUnk_03000FA0
	ldrh r1, [r0, #0x2e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080654DE
	ldr r4, _080654F0 @ =0x0000025B
	adds r1, r7, r4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080654DE
	b _080657A4
_080654DE:
	bl sub_080180B0
	ldr r0, _080654F4 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x28
	strb r0, [r1]
	b _080657A4
	.align 2, 0
_080654EC: .4byte gUnk_03000FA0
_080654F0: .4byte 0x0000025B
_080654F4: .4byte 0x0000027E
_080654F8:
	ldr r4, _08065520 @ =gUnk_0202A5A8
	ldr r0, [r4]
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08065514
	movs r0, #0xd
	bl sub_080A1664
_08065514:
	ldr r2, _08065524 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x29
	strb r0, [r1]
	b _080657A4
	.align 2, 0
_08065520: .4byte gUnk_0202A5A8
_08065524: .4byte 0x0000027E
_08065528:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806553C
	bl sub_080A1634
	cmp r0, #0
	bne _0806553C
	b _080657A4
_0806553C:
	movs r4, #0x9b
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r4, #4
	strb r4, [r0]
	ldr r0, _08065574 @ =0x0000027E
	adds r1, r7, r0
_0806554A:
	movs r0, #8
	strb r0, [r1]
	bl sub_0806CD90
	adds r2, r0, #0
	cmp r2, #0
	bne _0806555A
	b _080657A4
_0806555A:
	ldr r1, _08065578 @ =gUnk_03000FA0
	ldr r0, [r2, #4]
	ldrb r0, [r0, #0x14]
	strh r0, [r1, #0x3c]
	ldr r0, [r2, #4]
	ldrb r2, [r0, #0x15]
_08065566:
	adds r0, r1, #0
	adds r0, #0x40
	strh r2, [r0]
_0806556C:
	adds r1, #0x35
	strb r4, [r1]
	b _080657A4
	.align 2, 0
_08065574: .4byte 0x0000027E
_08065578: .4byte gUnk_03000FA0
_0806557C:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080655CA
	bl sub_080A1634
	cmp r0, #0
	bne _08065590
	b _080657A4
_08065590:
	bl sub_08075B4C
	b _080655CA
_08065596:
	bl sub_0813A6B0
	ldr r0, _080655A4 @ =0x0000027E
	adds r1, r7, r0
	movs r0, #0x30
	strb r0, [r1]
	b _080657A4
	.align 2, 0
_080655A4: .4byte 0x0000027E
_080655A8:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _080655B6
	b _080657A4
_080655B6:
	ldr r4, _08065604 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _080655CA
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_080655CA:
	ldr r2, _08065608 @ =0x0000026D
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _0806560C @ =0x0000026E
	adds r1, r7, r4
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r2, #1
	adds r0, r7, r2
	strb r1, [r0]
	adds r4, #0x11
	adds r1, r7, r4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, #0x14
_080655F6:
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	subs r4, #1
_080655FE:
	adds r0, r7, r4
	strb r1, [r0]
	b _080657A4
	.align 2, 0
_08065604: .4byte gUnk_0202A5A8
_08065608: .4byte 0x0000026D
_0806560C: .4byte 0x0000026E
_08065610:
	movs r0, #0xfe
	bl sub_08142F50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806566C
	movs r0, #7
	movs r1, #1
	bl sub_08142F7C
	bl sub_08144290
	bl sub_08141000
	bl sub_080762BC
	ldr r4, _0806565C @ =gUnk_03000FA0
	ldrh r6, [r4, #2]
	movs r0, #0
	mov r8, r0
	movs r5, #1
	strh r5, [r4, #2]
	bl sub_0806035C
	strh r6, [r4, #2]
	ldr r0, _08065660 @ =gUnk_02000000
	ldr r2, _08065664 @ =0x000021CC
	adds r1, r0, r2
	strh r5, [r1]
	ldr r4, _08065668 @ =0x000021CE
	adds r0, r0, r4
	mov r1, r8
	strb r1, [r0]
	movs r0, #0xfe
	movs r1, #0
	bl sub_08142F7C
	b _080657A4
	.align 2, 0
_0806565C: .4byte gUnk_03000FA0
_08065660: .4byte gUnk_02000000
_08065664: .4byte 0x000021CC
_08065668: .4byte 0x000021CE
_0806566C:
	bl sub_08143070
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08065678
	b _080657A4
_08065678:
	movs r0, #0x20
	bl sub_08049930
	b _08065798
_08065680:
	bl sub_08024CA0
	movs r0, #0
	bl sub_080A1664
	ldr r3, _08065704 @ =gPlayerUnits
	movs r5, #0x7e
	movs r4, #0x1f
_08065690:
	adds r2, r3, #0
	adds r2, #0x5d
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2]
	subs r4, #1
	adds r3, #0x68
	cmp r4, #0
	bge _08065690
	bl sub_08076260
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08075DEC
	ldr r0, _08065708 @ =gUnk_03000FA0
	adds r0, #0x35
	movs r5, #0
	strb r5, [r0]
	ldr r0, _0806570C @ =gUnk_0202A5AC
	strb r5, [r0]
	ldr r4, _08065710 @ =gUnk_0202A5A8
	ldr r0, _08065714 @ =0x00001C44
	bl BattleAlloc
	str r0, [r4]
	ldr r2, _08065718 @ =gUnk_0874A6CC
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
	ldr r1, _0806571C @ =0x0000022F
	movs r3, #0x40
	bl sub_08015D50
	ldr r2, _08065720 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x2c
	strb r0, [r1]
	movs r4, #0xa4
	lsls r4, r4, #2
	adds r1, r7, r4
	movs r0, #0x80
	strh r0, [r1]
	b _080657A4
	.align 2, 0
_08065704: .4byte gPlayerUnits
_08065708: .4byte gUnk_03000FA0
_0806570C: .4byte gUnk_0202A5AC
_08065710: .4byte gUnk_0202A5A8
_08065714: .4byte 0x00001C44
_08065718: .4byte gUnk_0874A6CC
_0806571C: .4byte 0x0000022F
_08065720: .4byte 0x0000027E
_08065724:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	beq _08065742
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r7, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08065756

	thumb_func_start sub_0806573C
sub_0806573C: @ 0x0806573C
	subs r0, #1
	strh r0, [r1]
	b _080657A4
_08065742:
	ldr r4, _08065764 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _08065756
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_08065756:
	bl sub_08019884
	ldr r2, _08065768 @ =0x0000027E
	adds r1, r7, r2
	movs r0, #0x2d
	strb r0, [r1]
	b _080657A4
	.align 2, 0
_08065764: .4byte gUnk_0202A5A8
_08065768: .4byte 0x0000027E
_0806576C:
	bl sub_0801670C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _080657A4
	ldr r4, _080657A0 @ =gUnk_0202A5A8
	ldr r0, [r4]
	cmp r0, #0
	beq _0806578C
	bl BattleFree
	movs r0, #0
	str r0, [r4]
	bl sub_0807628C
_0806578C:
	movs r0, #0x20
	bl sub_08049930
	movs r0, #0xff
	bl sub_080A1664
_08065798:
	bl sub_08024CA0
	movs r0, #0x63
	b _080657A6
	.align 2, 0
_080657A0: .4byte gUnk_0202A5A8
_080657A4:
	movs r0, #0x60
_080657A6:
	add sp, #0x24
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080657B4
sub_080657B4: @ 0x080657B4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _080657CC
	bl BattleFree
_080657CC:
	movs r6, #0
	str r6, [r4]
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _080657E0
	bl BattleFree
_080657E0:
	str r6, [r4]
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _080657F2
	bl sub_08053AC8
_080657F2:
	str r6, [r4]
	cmp r7, #0
	beq _0806581C
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08065808
	bl BattleFree
_08065808:
	str r6, [r4]
	movs r0, #0xce
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0806581A
	bl BattleFree
_0806581A:
	str r6, [r4]
_0806581C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08065824
sub_08065824: @ 0x08065824
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, [r0, #0x40]
	ldr r6, [r0]
	ldr r4, [r0, #4]
	movs r0, #0xc0
	lsls r0, r0, #5
	bl BattleAlloc
	ldr r5, _08065884 @ =gUnk_0202A88C
	ldr r1, [r5]
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0804DB8C
	ldr r3, [r5]
	movs r7, #0xc6
	lsls r7, r7, #1
	adds r1, r3, r7
	str r0, [r1]
	ldrb r2, [r4, #0x14]
	ldrb r1, [r4, #0x15]
	str r0, [sp]
	subs r7, #4
	adds r0, r3, r7
	ldr r0, [r0]
	str r0, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #8]
	adds r0, r2, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_08053A84
	ldr r1, [r5]
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r1, r1, r2
	str r0, [r1]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065884: .4byte gUnk_0202A88C

	thumb_func_start sub_08065888
sub_08065888: @ 0x08065888
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, [r6, #0x40]
	ldrh r0, [r0, #0x10]
	bl sub_08058D5C
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, [r6, #0x40]
	ldrh r0, [r0, #0x14]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [r6, #0x40]
	bl sub_0805EB4C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r4, [r6, #0x40]
	movs r0, #0
	bl sub_0805B308
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x10
	bl sub_0805D800
	ldr r4, [r6, #0x40]
	movs r0, #0
	bl sub_0805B308
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x10
	bl sub_0805DBA8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r6, #0x40]
	ldrh r0, [r0, #0x10]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r5
	bne _08065906
	ldr r0, [r6, #0x40]
	ldrh r0, [r0, #0x14]
	bl sub_08058D5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r7
	beq _08065920
_08065906:
	mov r0, sb
	cmp r0, #0
	beq _08065920
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08065920
	bl sub_0806F0C8
_08065920:
	mov r0, r8
	cmp r0, #1
	bne _08065942
	cmp r4, #0
	bne _08065942
	adds r0, r6, #0
	movs r1, #1
	bl sub_080657B4
	movs r0, #0
	bl sub_0805B308
	movs r1, #0x10
	bl sub_0805EB58
	movs r0, #0
	b _08065944
_08065942:
	movs r0, #1
_08065944:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08065950
sub_08065950: @ 0x08065950
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	mov sl, r5
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl sub_08139920
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl sub_08139B74
	mov sb, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _080659E0 @ =gUnk_0861CA5C
	adds r7, r0, r1
	movs r3, #0
	ldr r2, [r4, #4]
	ldrb r0, [r2, #0x14]
	subs r1, r6, r0
	cmp r1, #0
	bge _080659A4
	rsbs r1, r1, #0
_080659A4:
	ldrb r0, [r2, #0x15]
	subs r0, r5, r0
	cmp r0, #0
	bge _080659AE
	rsbs r0, r0, #0
_080659AE:
	adds r0, r1, r0
	cmp r0, r8
	bhi _080659B6
	movs r3, #1
_080659B6:
	cmp r3, #0
	beq _080659F0
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080659F0
	adds r0, r6, #0
	mov r1, sl
	bl sub_0806D898
	cmp r0, r4
	beq _080659DC
	cmp r0, #0
	bne _080659F0
	mov r1, sb
	ldrb r0, [r1, #1]
	cmp r0, #1
	bne _080659E4
_080659DC:
	movs r1, #1
	b _080659F2
	.align 2, 0
_080659E0: .4byte gUnk_0861CA5C
_080659E4:
	ldrb r1, [r7]
	movs r0, #0x10
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _080659F2
_080659F0:
	movs r1, #0
_080659F2:
	adds r0, r1, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08065A04
sub_08065A04: @ 0x08065A04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, [r7]
	ldr r1, [r7, #4]
	bl sub_08139920
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #4]
_08065A30:
	movs r1, #0
	str r1, [sp]
	ldr r2, [sp, #4]
	lsls r2, r2, #0x10
	mov sb, r2
	ldr r0, [sp, #4]
	adds r0, #1
	str r0, [sp, #0xc]
	mov r8, r1
_08065A42:
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _08065A56
	mov r2, r8
	lsrs r0, r2, #0x10
	mov r2, sb
	lsrs r1, r2, #0x10
	bl sub_080288B8
	b _08065AF4
_08065A56:
	ldr r1, [sp]
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp, #4]
	lsls r0, r2, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r7]
	ldr r1, [r7, #4]
	bl sub_08139B74
	mov sl, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _08065AE4 @ =gUnk_0861CA5C
	adds r6, r0, r1
	movs r3, #0
	ldr r2, [r7, #4]
	ldrb r0, [r2, #0x14]
	subs r1, r5, r0
	cmp r1, #0
	bge _08065A8A
	rsbs r1, r1, #0
_08065A8A:
	ldrb r0, [r2, #0x15]
	subs r0, r4, r0
	cmp r0, #0
	bge _08065A94
	rsbs r0, r0, #0
_08065A94:
	adds r0, r1, r0
	ldr r1, [sp, #8]
	cmp r0, r1
	bhi _08065A9E
	movs r3, #1
_08065A9E:
	cmp r3, #0
	beq _08065AE8
	ldrb r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08065AE8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D898
	cmp r0, r7
	beq _08065AD6
	cmp r0, #0
	bne _08065AE8
	mov r2, sl
	ldrb r0, [r2, #1]
	cmp r0, #1
	beq _08065AD6
	ldrb r1, [r6]
	movs r0, #0x10
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08065AD2
	movs r1, #0
_08065AD2:
	cmp r1, #0
	beq _08065AE8
_08065AD6:
	mov r1, r8
	lsrs r0, r1, #0x10
	mov r2, sb
	lsrs r1, r2, #0x10
	bl sub_0802885C
	b _08065AF4
	.align 2, 0
_08065AE4: .4byte gUnk_0861CA5C
_08065AE8:
	mov r1, r8
	lsrs r0, r1, #0x10
	mov r2, sb
	lsrs r1, r2, #0x10
	bl sub_080288B8
_08065AF4:
	movs r0, #0x80
	lsls r0, r0, #9
	add r8, r0
	ldr r1, [sp]
	adds r1, #1
	str r1, [sp]
	cmp r1, #0x1f
	ble _08065A42
	ldr r2, [sp, #0xc]
	str r2, [sp, #4]
	cmp r2, #0x1f
	ble _08065A30
	bl sub_0805B380
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
