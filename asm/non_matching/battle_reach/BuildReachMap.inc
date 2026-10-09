	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa8
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #4]
	str r3, [sp, #0xc]
	movs r0, #0
_0804C5F8:
	movs r1, #0
	str r1, [sp, #8]
	lsls r2, r0, #0x18
	str r2, [sp, #0xa0]
	adds r0, #1
	str r0, [sp, #0x9c]
_0804C604:
	ldr r1, [sp, #8]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r2, [sp, #0xa0]
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	adds r1, r2, #0
	bl sub_08028728
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0804C64C
	ldrb r1, [r2, #1]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0804C64C
	ldrb r1, [r2, #2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0804C642
	movs r0, #0xff
	ldr r2, [sp, #0xc]
	strb r0, [r2, #2]
	b _0804CD4A
_0804C642:
	ldrb r1, [r2, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804C654
_0804C64C:
	movs r0, #0xff
	ldr r1, [sp, #0xc]
	strb r0, [r1, #2]
	b _0804CD4A
_0804C654:
	ldr r2, [sp, #0x10]
	cmp r2, #0xa
	bne _0804C65C
	ldr r0, [sp, #0x14]
_0804C65C:
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	movs r2, #0
	mov sb, r2
	cmp r6, #2
	beq _0804C682
	cmp r6, #3
	beq _0804C67C
	movs r0, #1
	str r0, [sp, #0x18]
	cmp r6, #4
	bne _0804C686
	movs r1, #2
	str r1, [sp, #0x18]
	b _0804C686
_0804C67C:
	movs r2, #3
	str r2, [sp, #0x18]
	b _0804C686
_0804C682:
	movs r0, #0x7f
	str r0, [sp, #0x18]
_0804C686:
	cmp r6, #2
	beq _0804C6A8
	cmp r6, #3
	beq _0804C6A0
	movs r1, #2
	rsbs r1, r1, #0
	str r1, [sp, #0x1c]
	cmp r6, #4
	bne _0804C6AE
	movs r2, #3
	rsbs r2, r2, #0
	str r2, [sp, #0x1c]
	b _0804C6AE
_0804C6A0:
	movs r0, #4
	rsbs r0, r0, #0
	str r0, [sp, #0x1c]
	b _0804C6AE
_0804C6A8:
	movs r1, #0x80
	rsbs r1, r1, #0
	str r1, [sp, #0x1c]
_0804C6AE:
	ldr r2, [sp, #0x10]
	lsls r5, r2, #0x18
	asrs r0, r5, #0x18
	ldr r1, [sp, #0x14]
	lsls r4, r1, #0x18
	asrs r1, r4, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileHeight
	adds r7, r0, #0
	movs r2, #0
	str r2, [sp, #0x24]
	str r5, [sp, #0xa4]
	str r4, [sp, #0x88]
	cmp r7, #0
	blt _0804C7C0
	mov r0, r8
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x10]
	adds r1, r1, r0
	str r1, [sp, #0x2c]
	movs r2, #0
	mov sl, r2
	ldr r0, [sp, #0x14]
	add r0, sl
	mov r8, r0
	mov sb, r2
	lsls r5, r1, #0x18
	asrs r0, r5, #0x18
	mov r1, r8
	lsls r4, r1, #0x18
	asrs r1, r4, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileHeight
	str r0, [sp, #0x30]
	cmp r0, #0
	bge _0804C702
	movs r2, #3
	b _0804C7C0
_0804C702:
	ldr r2, [sp, #0x30]
	subs r2, r2, r7
	str r2, [sp, #0x98]
	lsrs r0, r5, #0x18
	lsrs r1, r4, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileCost
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	adds r0, r1, r2
	mov r1, r8
	add r1, sl
	lsls r4, r0, #0x18
	asrs r0, r4, #0x18
	lsls r5, r1, #0x18
	asrs r1, r5, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileHeight
	mov r8, r0
	cmp r0, #0
	bge _0804C73C
	movs r0, #2
	mov sb, r0
	b _0804C780
_0804C73C:
	lsrs r4, r4, #0x18
	lsrs r5, r5, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileCost
	ldr r1, [sp, #0x20]
	adds r1, r1, r0
	str r1, [sp, #0x20]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileCost
	adds r0, #1
	str r0, [sp, #0x24]
	mov r2, r8
	subs r0, r2, r7
	cmp r8, r7
	ble _0804C76E
	movs r1, #2
	mov sb, r1
_0804C76E:
	cmp r0, #0
	bgt _0804C780
	ldr r2, [sp, #0x1c]
	cmp r0, r2
	bge _0804C780
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804C780:
	ldr r2, [sp, #0x30]
	cmp r2, r7
	ble _0804C78E
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804C78E:
	ldr r2, [sp, #0x98]
	ldr r0, [sp, #0x18]
	cmp r2, r0
	bgt _0804C79C
	ldr r1, [sp, #0x1c]
	cmp r2, r1
	bge _0804C7A4
_0804C79C:
	movs r0, #1
	mov r2, sb
	orrs r2, r0
	mov sb, r2
_0804C7A4:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	cmp r0, r1
	bne _0804C7BE
	cmp r7, r8
	bne _0804C7B6
	ldr r2, [sp, #0x30]
	cmp r2, r7
	blt _0804C7BE
_0804C7B6:
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804C7BE:
	mov r2, sb
_0804C7C0:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0804C7D4
	ldr r0, [sp, #0xc]
	ldrb r1, [r0, #2]
	movs r0, #4
	orrs r0, r1
	ldr r1, [sp, #0xc]
	strb r0, [r1, #2]
_0804C7D4:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0804C7E6
	ldr r2, [sp, #0xc]
	ldrb r1, [r2, #2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2, #2]
_0804C7E6:
	movs r4, #1
	movs r5, #0
	cmp r6, #2
	beq _0804C806
	cmp r6, #3
	beq _0804C800
	movs r0, #1
	str r0, [sp, #0x34]
	cmp r6, #4
	bne _0804C80A
	movs r1, #2
	str r1, [sp, #0x34]
	b _0804C80A
_0804C800:
	movs r2, #3
	str r2, [sp, #0x34]
	b _0804C80A
_0804C806:
	movs r0, #0x7f
	str r0, [sp, #0x34]
_0804C80A:
	cmp r6, #2
	beq _0804C82C
	cmp r6, #3
	beq _0804C824
	movs r1, #2
	rsbs r1, r1, #0
	str r1, [sp, #0x38]
	cmp r6, #4
	bne _0804C832
	movs r2, #3
	rsbs r2, r2, #0
	str r2, [sp, #0x38]
	b _0804C832
_0804C824:
	movs r0, #4
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	b _0804C832
_0804C82C:
	movs r1, #0x80
	rsbs r1, r1, #0
	str r1, [sp, #0x38]
_0804C832:
	ldr r2, [sp, #0xa4]
	asrs r0, r2, #0x18
	ldr r2, [sp, #0x88]
	asrs r1, r2, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileHeight
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x40]
	cmp r7, #0
	bge _0804C850
	movs r2, #0
	b _0804C93E
_0804C850:
	str r4, [sp, #0x44]
	ldr r1, [sp, #0x10]
	adds r1, r1, r4
	str r1, [sp, #0x48]
	movs r2, #0
	mov sl, r2
	ldr r0, [sp, #0x14]
	add r0, sl
	mov r8, r0
	mov sb, r2
	lsls r5, r1, #0x18
	asrs r0, r5, #0x18
	mov r1, r8
	lsls r4, r1, #0x18
	asrs r1, r4, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileHeight
	str r0, [sp, #0x4c]
	cmp r0, #0
	bge _0804C880
	movs r2, #3
	b _0804C93E
_0804C880:
	ldr r2, [sp, #0x4c]
	subs r2, r2, r7
	str r2, [sp, #0x90]
	lsrs r0, r5, #0x18
	lsrs r1, r4, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileCost
	str r0, [sp, #0x3c]
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x44]
	adds r0, r1, r2
	mov r1, r8
	add r1, sl
	lsls r4, r0, #0x18
	asrs r0, r4, #0x18
	lsls r5, r1, #0x18
	asrs r1, r5, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileHeight
	mov r8, r0
	cmp r0, #0
	bge _0804C8BA
	movs r0, #2
	mov sb, r0
	b _0804C8FE
_0804C8BA:
	lsrs r4, r4, #0x18
	lsrs r5, r5, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileCost
	ldr r1, [sp, #0x3c]
	adds r1, r1, r0
	str r1, [sp, #0x3c]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileCost
	adds r0, #1
	str r0, [sp, #0x40]
	mov r2, r8
	subs r0, r2, r7
	cmp r8, r7
	ble _0804C8EC
	movs r1, #2
	mov sb, r1
_0804C8EC:
	cmp r0, #0
	bgt _0804C8FE
	ldr r2, [sp, #0x38]
	cmp r0, r2
	bge _0804C8FE
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804C8FE:
	ldr r2, [sp, #0x4c]
	cmp r2, r7
	ble _0804C90C
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804C90C:
	ldr r2, [sp, #0x90]
	ldr r0, [sp, #0x34]
	cmp r2, r0
	bgt _0804C91A
	ldr r1, [sp, #0x38]
	cmp r2, r1
	bge _0804C922
_0804C91A:
	movs r0, #1
	mov r2, sb
	orrs r2, r0
	mov sb, r2
_0804C922:
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	cmp r0, r1
	bne _0804C93C
	cmp r7, r8
	bne _0804C934
	ldr r2, [sp, #0x4c]
	cmp r2, r7
	blt _0804C93C
_0804C934:
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804C93C:
	mov r2, sb
_0804C93E:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0804C952
	ldr r0, [sp, #0xc]
	ldrb r1, [r0, #2]
	movs r0, #1
	orrs r0, r1
	ldr r1, [sp, #0xc]
	strb r0, [r1, #2]
_0804C952:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0804C964
	ldr r2, [sp, #0xc]
	ldrb r1, [r2, #2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, #2]
_0804C964:
	movs r4, #0
	movs r5, #1
	rsbs r5, r5, #0
	cmp r6, #2
	beq _0804C986
	cmp r6, #3
	beq _0804C980
	movs r0, #1
	str r0, [sp, #0x50]
	cmp r6, #4
	bne _0804C98A
	movs r1, #2
	str r1, [sp, #0x50]
	b _0804C98A
_0804C980:
	movs r2, #3
	str r2, [sp, #0x50]
	b _0804C98A
_0804C986:
	movs r0, #0x7f
	str r0, [sp, #0x50]
_0804C98A:
	cmp r6, #2
	beq _0804C9AC
	cmp r6, #3
	beq _0804C9A4
	movs r1, #2
	rsbs r1, r1, #0
	str r1, [sp, #0x54]
	cmp r6, #4
	bne _0804C9B2
	movs r2, #3
	rsbs r2, r2, #0
	str r2, [sp, #0x54]
	b _0804C9B2
_0804C9A4:
	movs r0, #4
	rsbs r0, r0, #0
	str r0, [sp, #0x54]
	b _0804C9B2
_0804C9AC:
	movs r1, #0x80
	rsbs r1, r1, #0
	str r1, [sp, #0x54]
_0804C9B2:
	ldr r2, [sp, #0xa4]
	asrs r0, r2, #0x18
	ldr r2, [sp, #0x88]
	asrs r1, r2, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileHeight
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x5c]
	cmp r7, #0
	bge _0804C9D0
	movs r2, #0
	b _0804CABE
_0804C9D0:
	movs r1, #0
	str r1, [sp, #0x60]
	ldr r2, [sp, #0x10]
	adds r2, r2, r1
	str r2, [sp, #0x64]
	mov sl, r5
	ldr r0, [sp, #0x14]
	add r0, sl
	mov r8, r0
	mov sb, r1
	lsls r5, r2, #0x18
	asrs r0, r5, #0x18
	mov r1, r8
	lsls r4, r1, #0x18
	asrs r1, r4, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileHeight
	str r0, [sp, #0x68]
	cmp r0, #0
	bge _0804CA00
	movs r2, #3
	b _0804CABE
_0804CA00:
	ldr r2, [sp, #0x68]
	subs r2, r2, r7
	str r2, [sp, #0x94]
	lsrs r0, r5, #0x18
	lsrs r1, r4, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileCost
	str r0, [sp, #0x58]
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x60]
	adds r0, r1, r2
	mov r1, r8
	add r1, sl
	lsls r4, r0, #0x18
	asrs r0, r4, #0x18
	lsls r5, r1, #0x18
	asrs r1, r5, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileHeight
	mov r8, r0
	cmp r0, #0
	bge _0804CA3A
	movs r0, #2
	mov sb, r0
	b _0804CA7E
_0804CA3A:
	lsrs r4, r4, #0x18
	lsrs r5, r5, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileCost
	ldr r1, [sp, #0x58]
	adds r1, r1, r0
	str r1, [sp, #0x58]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileCost
	adds r0, #1
	str r0, [sp, #0x5c]
	mov r2, r8
	subs r0, r2, r7
	cmp r8, r7
	ble _0804CA6C
	movs r1, #2
	mov sb, r1
_0804CA6C:
	cmp r0, #0
	bgt _0804CA7E
	ldr r2, [sp, #0x54]
	cmp r0, r2
	bge _0804CA7E
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804CA7E:
	ldr r2, [sp, #0x68]
	cmp r2, r7
	ble _0804CA8C
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804CA8C:
	ldr r2, [sp, #0x94]
	ldr r0, [sp, #0x50]
	cmp r2, r0
	bgt _0804CA9A
	ldr r1, [sp, #0x54]
	cmp r2, r1
	bge _0804CAA2
_0804CA9A:
	movs r0, #1
	mov r2, sb
	orrs r2, r0
	mov sb, r2
_0804CAA2:
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x5c]
	cmp r0, r1
	bne _0804CABC
	cmp r7, r8
	bne _0804CAB4
	ldr r2, [sp, #0x68]
	cmp r2, r7
	blt _0804CABC
_0804CAB4:
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804CABC:
	mov r2, sb
_0804CABE:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0804CAD2
	ldr r0, [sp, #0xc]
	ldrb r1, [r0, #2]
	movs r0, #2
	orrs r0, r1
	ldr r1, [sp, #0xc]
	strb r0, [r1, #2]
_0804CAD2:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0804CAE4
	ldr r2, [sp, #0xc]
	ldrb r1, [r2, #2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #2]
_0804CAE4:
	movs r4, #0
	movs r5, #1
	cmp r6, #2
	beq _0804CB04
	cmp r6, #3
	beq _0804CAFE
	movs r0, #1
	str r0, [sp, #0x6c]
	cmp r6, #4
	bne _0804CB08
	movs r1, #2
	str r1, [sp, #0x6c]
	b _0804CB08
_0804CAFE:
	movs r2, #3
	str r2, [sp, #0x6c]
	b _0804CB08
_0804CB04:
	movs r0, #0x7f
	str r0, [sp, #0x6c]
_0804CB08:
	cmp r6, #2
	beq _0804CB2A
	cmp r6, #3
	beq _0804CB22
	movs r1, #2
	rsbs r1, r1, #0
	str r1, [sp, #0x70]
	cmp r6, #4
	bne _0804CB30
	movs r2, #3
	rsbs r2, r2, #0
	str r2, [sp, #0x70]
	b _0804CB30
_0804CB22:
	movs r0, #4
	rsbs r0, r0, #0
	str r0, [sp, #0x70]
	b _0804CB30
_0804CB2A:
	movs r1, #0x80
	rsbs r1, r1, #0
	str r1, [sp, #0x70]
_0804CB30:
	ldr r2, [sp, #0xa4]
	asrs r0, r2, #0x18
	ldr r2, [sp, #0x88]
	asrs r1, r2, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileHeight
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x78]
	cmp r7, #0
	bge _0804CB4E
	movs r2, #0
	b _0804CC3C
_0804CB4E:
	movs r1, #0
	str r1, [sp, #0x7c]
	ldr r2, [sp, #0x10]
	adds r2, r2, r1
	str r2, [sp, #0x80]
	mov sl, r5
	ldr r0, [sp, #0x14]
	add r0, sl
	mov r8, r0
	mov sb, r1
	lsls r5, r2, #0x18
	asrs r0, r5, #0x18
	mov r1, r8
	lsls r4, r1, #0x18
	asrs r1, r4, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileHeight
	str r0, [sp, #0x84]
	cmp r0, #0
	bge _0804CB7E
	movs r2, #3
	b _0804CC3C
_0804CB7E:
	ldr r2, [sp, #0x84]
	subs r2, r2, r7
	str r2, [sp, #0x8c]
	lsrs r0, r5, #0x18
	lsrs r1, r4, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileCost
	str r0, [sp, #0x74]
	ldr r1, [sp, #0x80]
	ldr r2, [sp, #0x7c]
	adds r0, r1, r2
	mov r1, r8
	add r1, sl
	lsls r4, r0, #0x18
	asrs r0, r4, #0x18
	lsls r5, r1, #0x18
	asrs r1, r5, #0x18
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileHeight
	mov r8, r0
	cmp r0, #0
	bge _0804CBB8
	movs r0, #2
	mov sb, r0
	b _0804CBFC
_0804CBB8:
	lsrs r4, r4, #0x18
	lsrs r5, r5, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileCost
	ldr r1, [sp, #0x74]
	adds r1, r1, r0
	str r1, [sp, #0x74]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	ldr r3, [sp]
	bl ReachTileCost
	adds r0, #1
	str r0, [sp, #0x78]
	mov r2, r8
	subs r0, r2, r7
	cmp r8, r7
	ble _0804CBEA
	movs r1, #2
	mov sb, r1
_0804CBEA:
	cmp r0, #0
	bgt _0804CBFC
	ldr r2, [sp, #0x70]
	cmp r0, r2
	bge _0804CBFC
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804CBFC:
	ldr r2, [sp, #0x84]
	cmp r2, r7
	ble _0804CC0A
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804CC0A:
	ldr r2, [sp, #0x8c]
	ldr r0, [sp, #0x6c]
	cmp r2, r0
	bgt _0804CC18
	ldr r1, [sp, #0x70]
	cmp r2, r1
	bge _0804CC20
_0804CC18:
	movs r0, #1
	mov r2, sb
	orrs r2, r0
	mov sb, r2
_0804CC20:
	ldr r0, [sp, #0x74]
	ldr r1, [sp, #0x78]
	cmp r0, r1
	bne _0804CC3A
	cmp r7, r8
	bne _0804CC32
	ldr r2, [sp, #0x84]
	cmp r2, r7
	blt _0804CC3A
_0804CC32:
	movs r0, #2
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0804CC3A:
	mov r2, sb
_0804CC3C:
	movs r5, #1
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _0804CC52
	ldr r0, [sp, #0xc]
	ldrb r1, [r0, #2]
	movs r0, #8
	orrs r0, r1
	ldr r1, [sp, #0xc]
	strb r0, [r1, #2]
_0804CC52:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0804CC64
	ldr r2, [sp, #0xc]
	ldrb r1, [r2, #2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #2]
_0804CC64:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl sub_08028774
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r1, _0804CC98 @ =gUnk_0861CA5C
	adds r4, r0, r1
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl sub_08028728
	adds r2, r0, #0
	ldrb r1, [r2, #1]
	movs r0, #0x7f
	ands r0, r1
	ldr r1, [sp, #0xc]
	strb r0, [r1, #1]
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804CC9C
	strb r5, [r1]
	b _0804CD4A
	.align 2, 0
_0804CC98: .4byte gUnk_0861CA5C
_0804CC9C:
	ldrb r0, [r4, #1]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804CCB4
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0804CCB4
	strb r5, [r2]
_0804CCB4:
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804CCCE
	movs r0, #0xff
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldrb r1, [r1, #3]
	movs r0, #2
	orrs r0, r1
	ldr r2, [sp, #0xc]
	strb r0, [r2, #3]
_0804CCCE:
	ldr r0, [sp]
	subs r0, #1
	cmp r0, #4
	bhi _0804CD4A
	lsls r0, r0, #2
	ldr r1, _0804CCE0 @ =_0804CCE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CCE0: .4byte _0804CCE4
_0804CCE4: @ jump table
	.4byte _0804CCF8 @ case 0
	.4byte _0804CD0E @ case 1
	.4byte _0804CCFC @ case 2
	.4byte _0804CD1E @ case 3
	.4byte _0804CD1E @ case 4
_0804CCF8:
	movs r0, #1
	b _0804CD46
_0804CCFC:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804CD3A
	movs r0, #1
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	b _0804CD3A
_0804CD0E:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804CD3A
	movs r0, #1
	ldr r2, [sp, #0xc]
	strb r0, [r2]
_0804CD1E:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804CD3A
	ldr r1, [sp, #0xc]
	ldrb r0, [r1, #1]
	subs r0, #1
	strb r0, [r1, #1]
	ldrb r1, [r1, #3]
	movs r0, #4
	orrs r0, r1
	ldr r2, [sp, #0xc]
	strb r0, [r2, #3]
_0804CD3A:
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804CD4A
	movs r0, #0xff
_0804CD46:
	ldr r1, [sp, #0xc]
	strb r0, [r1]
_0804CD4A:
	movs r0, #0xff
	ldr r2, [sp, #0xc]
	strh r0, [r2, #0xc]
	ldr r0, _0804CD84 @ =0x0000FFFF
	strh r0, [r2, #0xa]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r2, #8]
	strh r0, [r2, #0xe]
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	adds r2, #0x10
	str r2, [sp, #0xc]
	cmp r0, #0x1f
	bgt _0804CD6C
	b _0804C604
_0804CD6C:
	ldr r0, [sp, #0x9c]
	cmp r0, #0x1f
	bgt _0804CD74
	b _0804C5F8
_0804CD74:
	add sp, #0xa8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CD84: .4byte 0x0000FFFF
