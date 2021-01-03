    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	THUMB_FUNC_START sub_8004E60 @WorldMapMain
sub_8004E60: @ 0x08004E60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08004E90
	ldrb r0, [r0]
	bl sub_80056CC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08004E94
	ldrb r0, [r0]
	movs r7, #0xf
	ands r7, r0
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_8004F90
	movs r0, #3
	bl PlayMusic
	ldr r6, _08004E98
	ldr r0, _08004E9C
	mov r8, r0
	b _08004F4A
	.align 2, 0
_08004E90: .4byte 0x02020DC8
_08004E94: .4byte 0x02020DD0
_08004E98: .4byte gUnk_8DF7A18
_08004E9C: .4byte gUnk_8DF79F8
_08004EA0:
	ldr r0, _08004ECC
	ldrh r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08004F28
	ldr r0, _08004ED0
	ldr r0, [r0]
	ldrh r1, [r0]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08004EEE
	lsls r0, r7, #1
	mov r1, r8
	adds r5, r0, r1
_08004EC0:
	cmp r4, #0
	beq _08004ED4
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _08004ED6
	.align 2, 0
_08004ECC: .4byte gKeyState
_08004ED0: .4byte gUnk_8DF7A28
_08004ED4:
	movs r4, #0xc
_08004ED6:
	movs r0, #0x36
	bl PlayMusic
	ldrh r0, [r5]
	adds r1, r4, r6
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08004EC0
	b _08004F20
_08004EEE:
	movs r0, #0x90
	ands r0, r1
	cmp r0, #0
	beq _08004F20
	lsls r0, r7, #1
	mov r1, r8
	adds r5, r0, r1
_08004EFC:
	cmp r4, #0xb
	bhi _08004F08
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _08004F0A
_08004F08:
	movs r4, #0
_08004F0A:
	movs r0, #0x36
	bl PlayMusic
	ldrh r0, [r5]
	adds r1, r4, r6
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08004EFC
_08004F20:
	adds r0, r4, r6
	ldrb r0, [r0]
	bl sub_80054C4
_08004F28:
	bl sub_80056AC
	adds r0, r4, r6
	ldrb r0, [r0]
	bl sub_800521C
	adds r0, r7, #0
	bl sub_80052E4
	bl LoadOam
	bl LoadPalettes
	bl sub_8008220
	bl sub_8005590
_08004F4A:
	ldr r0, _08004F88
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08004EA0
	movs r0, #0x37
	bl PlayMusic
	bl sub_80056F8
	bl sub_803ED78
	bl LoadOam
	bl LoadPalettes
	bl LoadVRAM
	bl sub_8045718
	ldr r0, _08004F8C
	adds r1, r4, r6
	ldrb r1, [r1]
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004F88: .4byte gUnk2020DFC
_08004F8C: .4byte 0x02020DCC

	THUMB_FUNC_START sub_8004F90
sub_8004F90: @ 0x08004F90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	movs r5, #0
	ldr r3, _08005168
	movs r2, #0
	ldr r1, _0800516C
_08004FA8:
	adds r0, r5, r3
	strb r2, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r1
	bls _08004FA8
	bl sub_803ED78
	bl LoadOam
	bl LoadPalettes
	bl LoadVRAM
	bl sub_8045718
	ldr r0, _08005170
	ldr r4, _08005174
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r5, #0
	ldr r1, _08005178
	ldr r3, _0800517C
	movs r0, #0x98
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r2, _08005180
_08004FE2:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r3
	str r0, [r1]
	lsls r0, r5, #6
	adds r0, r0, r4
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x13
	bls _08004FE2
	movs r5, #0
	ldr r1, _08005178
	ldr r4, _08005184
	ldr r3, _08005188
	ldr r2, _08005180
_0800500A:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r4
	str r0, [r1]
	lsls r0, r5, #6
	adds r0, r0, r3
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #1
	bls _0800500A
	movs r5, #0
_0800502A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #7
	ldr r1, _0800518C
	adds r0, r0, r1
	lsls r1, r5, #0xa
	ldr r6, _08005190
	adds r1, r1, r6
	movs r2, #0xa0
	lsls r2, r2, #1
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #5
	bls _0800502A
	ldr r0, _08005194
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r6, r2
	bl LZ77UnCompWram
	ldr r1, _08005198
	adds r0, r6, r1
	ldr r1, _0800519C
	ldr r4, _080051A0
	adds r2, r4, #0
	bl sub_8020A3C
	ldr r2, _080051A4
	adds r0, r6, r2
	ldr r1, _080051A8
	adds r2, r4, #0
	bl sub_8020A3C
	ldr r1, _080051AC
	adds r0, r6, r1
	ldr r1, _080051B0
	adds r2, r4, #0
	bl sub_8020A3C
	ldr r2, _080051B4
	adds r0, r6, r2
	ldr r1, _080051B8
	adds r2, r4, #0
	bl sub_8020A3C
	ldr r1, _080051BC
	adds r0, r6, r1
	ldr r1, _080051C0
	adds r2, r4, #0
	bl sub_8020A3C
	ldr r2, _080051C4
	adds r0, r6, r2
	ldr r1, _080051C8
	adds r2, r4, #0
	bl sub_8020A3C
	ldr r1, _080051CC
	adds r0, r6, r1
	ldr r1, _080051D0
	adds r2, r4, #0
	bl sub_8020A3C
	ldr r2, _080051D4
	adds r0, r6, r2
	ldr r1, _080051D8
	adds r2, r4, #0
	bl sub_8020A3C
	ldr r1, _080051DC
	adds r0, r6, r1
	ldr r1, _080051E0
	adds r2, r4, #0
	bl sub_8020A3C
	ldr r2, _080051E4
	adds r0, r6, r2
	ldr r1, _080051E8
	adds r2, r4, #0
	bl sub_8020A3C
	ldr r1, _080051EC
	adds r0, r6, r1
	ldr r1, _080051F0
	adds r2, r4, #0
	bl sub_8020A3C
	ldr r2, _080051F4
	adds r0, r6, r2
	ldr r1, _080051F8
	adds r2, r4, #0
	bl sub_8020A3C
	ldr r0, _080051FC
	ldr r4, _08005200
	adds r1, r4, #0
	movs r2, #0xc0
	bl CpuSet
	ldr r0, _08005204
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r2, #0x10
	bl CpuSet
	ldr r0, _08005208
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0x80
	bl CpuSet
	ldr r0, _0800520C
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0x10
	bl CpuSet
	ldr r0, _08005210
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0x10
	bl CpuSet
	ldr r0, _08005214
	bl sub_80081DC
	ldr r4, _08005218
	adds r4, r7, r4
	ldrb r0, [r4]
	bl sub_80054C4
	bl sub_80056AC
	ldrb r0, [r4]
	bl sub_800521C
	mov r0, r8
	bl sub_80052E4
	bl LoadOam
	bl LoadVRAM
	bl LoadPalettes
	bl sub_8008220
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005168: .4byte 0x02018800
_0800516C: .4byte 0x00004313
_08005170: .4byte gWorldMapBgTileset
_08005174: .4byte 0x02000400
_08005178: .4byte 0x040000D4
_0800517C: .4byte gUnk_80666F0
_08005180: .4byte 0x8000001E
_08005184: .4byte gUnk_8073BA0
_08005188: .4byte 0x0200A414
_0800518C: .4byte gUnk_8066BA0
_08005190: .4byte 0x02010400
_08005194: .4byte gUnk_80746F8
_08005198: .4byte 0xFFFFC020
_0800519C: .4byte gUnk_8075330
_080051A0: .4byte 0x00000901
_080051A4: .4byte 0xFFFFC520
_080051A8: .4byte gUnk_8075398
_080051AC: .4byte 0xFFFFCA20
_080051B0: .4byte gUnk_80753BC
_080051B4: .4byte 0xFFFFCF20
_080051B8: .4byte gUnk_80753E8
_080051BC: .4byte 0xFFFFD420
_080051C0: .4byte gUnk_807540C
_080051C4: .4byte 0xFFFFD920
_080051C8: .4byte gUnk_8075428
_080051CC: .4byte 0xFFFFDE20
_080051D0: .4byte gUnk_8075440
_080051D4: .4byte 0xFFFFE320
_080051D8: .4byte gUnk_807545C
_080051DC: .4byte 0xFFFFE820
_080051E0: .4byte gUnk_807547C
_080051E4: .4byte 0xFFFFED20
_080051E8: .4byte gUnk_80754A4
_080051EC: .4byte 0xFFFFF220
_080051F0: .4byte gUnk_80754C4
_080051F4: .4byte 0xFFFFF720
_080051F8: .4byte gUnk_80754EC
_080051FC: .4byte gWorldMapBgPalette
_08005200: .4byte 0x02000000
_08005204: .4byte gUnk_80741B8
_08005208: .4byte gUnk_8072EA0
_0800520C: .4byte gUnk_80741D8
_08005210: .4byte gUnk_8074400
_08005214: .4byte sub_80055D8
_08005218: .4byte gUnk_8DF7A18

	THUMB_FUNC_START sub_800521C
sub_800521C: @ 0x0800521C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, _08005260
	ldr r1, [r3]
	adds r5, r1, #0
	adds r5, #0x23
	ldr r2, _08005264
	lsls r0, r7, #2
	adds r0, r0, r2
	adds r1, #0x24
	ldrb r1, [r1]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r0, [r5]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08005268
	movs r4, #0
	strb r4, [r5]
	ldr r1, [r3]
	adds r1, #0x24
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r3]
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r0, [r1]
	cmp r0, #3
	bls _0800526C
	strb r4, [r1]
	b _0800526C
	.align 2, 0
_08005260: .4byte gUnk_8DF7A28
_08005264: .4byte gUnk_8DF76F8
_08005268:
	adds r0, #1
	strb r0, [r5]
_0800526C:
	ldr r6, _080052D8
	lsls r1, r7, #2
	adds r1, r1, r2
	ldr r4, [r3]
	adds r4, #0x24
	ldrb r0, [r4]
	ldr r5, [r1]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r3, [r0, #4]
	ldrh r1, [r3, #2]
	ldr r2, _080052DC
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	ldrb r1, [r3]
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #4]
	ldrh r0, [r0, #4]
	movs r1, #0x82
	lsls r1, r1, #8
	adds r3, r1, #0
	orrs r0, r3
	str r0, [r6, #4]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, [r0, #4]
	ldrh r0, [r1, #2]
	ands r2, r0
	lsls r2, r2, #0x10
	ldrb r0, [r1]
	orrs r2, r0
	ldr r0, _080052E0
	orrs r2, r0
	str r2, [r6, #8]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #4]
	ldrh r0, [r0, #4]
	orrs r3, r0
	str r3, [r6, #0xc]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080052D8: .4byte 0x02018410
_080052DC: .4byte 0x000001FF
_080052E0: .4byte 0x80000800

	THUMB_FUNC_START sub_80052E4
sub_80052E4: @ 0x080052E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #4
	mov sl, r0
	movs r1, #0
	mov r8, r1
_080052FE:
	ldr r2, _08005344
	ldr r1, [r2]
	adds r0, r1, #3
	mov r6, r8
	adds r4, r0, r6
	lsls r3, r6, #2
	ldr r0, _08005348
	adds r2, r3, r0
	adds r1, #0x13
	add r1, r8
	ldrb r0, [r1]
	ldr r1, [r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r4]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0800534C
	movs r2, #0
	strb r2, [r4]
	ldr r4, _08005344
	ldr r1, [r4]
	adds r1, #0x13
	add r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x13
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, #6
	bls _08005350
	strb r2, [r1]
	b _08005350
	.align 2, 0
_08005344: .4byte gUnk_8DF7A28
_08005348: .4byte gUnk_8DF7940
_0800534C:
	adds r0, r1, #1
	strb r0, [r4]
_08005350:
	ldr r6, [sp]
	lsls r0, r6, #1
	ldr r1, _08005414
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r2, r8
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800542C
	movs r4, #0
	mov ip, r4
	adds r7, r3, #0
	ldr r6, _08005418
	adds r1, r7, r6
	ldr r2, _0800541C
	ldr r0, [r2]
	adds r0, #0x13
	add r0, r8
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r0, r0, r1
	mov r4, r8
	adds r4, #1
	str r4, [sp, #4]
	ldrb r0, [r0, #1]
	cmp ip, r0
	blo _0800538E
	b _08005498
_0800538E:
	ldr r6, _08005420
	mov sb, r6
_08005392:
	mov r0, sl
	lsls r4, r0, #3
	mov r1, sb
	adds r1, r4, r1
	str r1, [sp, #8]
	ldr r2, _08005418
	adds r1, r7, r2
	ldr r6, _0800541C
	ldr r3, [r6]
	adds r3, #0x13
	add r3, r8
	ldrb r0, [r3]
	ldr r5, [r1]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #4]
	mov r1, ip
	lsls r2, r1, #3
	adds r0, r2, r0
	ldrh r0, [r0]
	movs r6, #0x80
	lsls r6, r6, #3
	adds r1, r6, #0
	orrs r0, r1
	ldr r1, [sp, #8]
	strh r0, [r1]
	mov r1, sb
	adds r1, #2
	adds r1, r4, r1
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #4]
	adds r0, r2, r0
	ldrh r0, [r0, #2]
	strh r0, [r1]
	ldr r6, _08005424
	adds r4, r4, r6
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #4]
	adds r2, r2, r0
	ldrh r0, [r2, #4]
	ldr r2, _08005428
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrb r0, [r0, #1]
	cmp ip, r0
	blo _08005392
	b _08005498
	.align 2, 0
_08005414: .4byte gUnk_8DF79F8
_08005418: .4byte gUnk_8DF7940
_0800541C: .4byte gUnk_8DF7A28
_08005420: .4byte 0x02018400
_08005424: .4byte 0x02018404
_08005428: .4byte 0x00009610
_0800542C:
	movs r4, #0
	mov ip, r4
	ldr r6, _080054B8
	adds r0, r3, r6
	ldr r5, _080054BC
	ldr r1, [r5]
	adds r1, #0x13
	add r1, r8
	ldrb r1, [r1]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	mov r2, r8
	adds r2, #1
	str r2, [sp, #4]
	ldrb r1, [r1, #1]
	cmp ip, r1
	bhs _08005498
	ldr r4, _080054C0
	adds r6, r4, #4
	adds r3, r0, #0
_08005456:
	mov r0, sl
	lsls r2, r0, #3
	adds r1, r2, r4
	movs r0, #0xa0
	strh r0, [r1]
	adds r0, r4, #2
	adds r0, r2, r0
	movs r1, #0xf0
	strh r1, [r0]
	adds r2, r2, r6
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r1, #0
	strh r0, [r2]
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, [r5]
	adds r0, #0x13
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0, #1]
	cmp ip, r0
	blo _08005456
_08005498:
	ldr r2, [sp, #4]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0xc
	bhi _080054A6
	b _080052FE
_080054A6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080054B8: .4byte gUnk_8DF7940
_080054BC: .4byte gUnk_8DF7A28
_080054C0: .4byte 0x02018400

	THUMB_FUNC_START sub_80054C4
sub_80054C4: @ 0x080054C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r4, #0
	ldr r1, _08005564
	lsls r0, r0, #2
	adds r6, r0, r1
	adds r7, r0, #0
_080054DA:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #7
	ldr r0, [r6]
	adds r0, r0, r1
	lsls r1, r4, #0xa
	ldr r5, _08005568
	adds r1, r1, r5
	movs r2, #0xa0
	lsls r2, r2, #1
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _080054DA
	ldr r0, _0800556C
	adds r0, r7, r0
	ldr r0, [r0]
	ldr r1, _08005570
	movs r2, #0x80
	bl CpuSet
	movs r4, #0
	ldr r2, _08005574
	mov r0, r8
	lsls r3, r0, #1
	ldr r7, _08005578
	ldr r0, _0800557C
	adds r6, r5, r0
	ldr r5, _08005580
_0800551A:
	adds r1, r4, r3
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	str r0, [r2]
	lsls r0, r4, #6
	adds r0, r0, r6
	str r0, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0800551A
	ldr r4, _08005584
	ldr r1, _08005588
	adds r0, r4, #0
	movs r2, #0x40
	bl CpuSet
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r4, r4, r2
	ldr r1, _0800558C
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r0, r4, #0
	bl CpuSet
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005564: .4byte gUnk_8DF79B8
_08005568: .4byte 0x02010400
_0800556C: .4byte gUnk_8DF7978
_08005570: .4byte 0x02000200
_08005574: .4byte 0x040000D4
_08005578: .4byte gUnk_8073BA0
_0800557C: .4byte 0xFFFFA014
_08005580: .4byte 0x8000001E
_08005584: .4byte 0x0200A400
_08005588: .4byte 0x0600A000
_0800558C: .4byte 0x06010000

	THUMB_FUNC_START sub_8005590
sub_8005590: @ 0x08005590
	ldr r0, _080055A8
	ldrh r3, [r0]
	ldr r2, _080055AC
	ands r2, r3
	cmp r2, #0
	beq _080055B4
	ldr r0, _080055B0
	ldr r1, [r0]
	strh r3, [r1]
	movs r0, #0xa
	b _080055D0
	.align 2, 0
_080055A8: .4byte gUnk2020DFC
_080055AC: .4byte 0x000003FF
_080055B0: .4byte gUnk_8DF7A28
_080055B4:
	ldr r0, _080055C4
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _080055C8
	strh r2, [r1]
	subs r0, #1
	b _080055D0
	.align 2, 0
_080055C4: .4byte gUnk_8DF7A28
_080055C8:
	ldr r0, _080055D4
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #5
_080055D0:
	strb r0, [r1, #2]
	bx lr
	.align 2, 0
_080055D4: .4byte gKeyState

	THUMB_FUNC_START sub_80055D8
sub_80055D8: @ 0x080055D8
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r7, _08005678
	ldr r0, _0800567C
	mov ip, r0
	ldr r4, _08005680
	movs r6, #0
	movs r5, #0xa0
_080055E8:
	lsls r0, r3, #3
	adds r0, r0, r4
	strh r5, [r0]
	lsls r2, r3, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r4
	strh r6, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x7f
	bls _080055E8
	ldr r1, _08005684
	ldr r2, _08005688
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #2
	adds r2, #0x8b
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0800568C
	movs r1, #1
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	ldr r1, _08005690
	movs r0, #8
	strh r0, [r1]
	subs r1, #4
	movs r2, #0xe0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0xc1
	lsls r1, r1, #4
	adds r0, r1, #0
	strh r0, [r7]
	ldr r2, _08005694
	adds r0, r2, #0
	mov r1, ip
	strh r0, [r1]
	bl LoadBlendingRegs
	ldr r0, _08005698
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800569C
	strh r1, [r0]
	ldr r0, _080056A0
	strh r1, [r0]
	ldr r1, _080056A4
	ldr r2, _080056A8
	adds r0, r2, #0
	strh r0, [r1]
	bl LoadBgOffsets
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005678: .4byte gBLDCNT
_0800567C: .4byte gBLDALPHA
_08005680: .4byte 0x02018400
_08005684: .4byte 0x0400000E
_08005688: .4byte 0x00001383
_0800568C: .4byte 0x04000208
_08005690: .4byte 0x04000004
_08005694: .4byte 0x00001010
_08005698: .4byte gBG3HOFS
_0800569C: .4byte gBG3VOFS
_080056A0: .4byte gBG2HOFS
_080056A4: .4byte gBG2VOFS
_080056A8: .4byte 0x0000FF70

	THUMB_FUNC_START sub_80056AC
sub_80056AC: @ 0x080056AC
	ldr r1, _080056C0
	ldr r0, _080056C4
	str r0, [r1]
	movs r0, #0
	str r0, [r1, #4]
	ldr r0, _080056C8
	str r0, [r1, #8]
	movs r0, #0x10
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_080056C0: .4byte 0x02018400
_080056C4: .4byte 0xC0002070
_080056C8: .4byte 0xC0402070

	THUMB_FUNC_START sub_80056CC
sub_80056CC: @ 0x080056CC
	push {r4, lr}
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	movs r2, #0
	ldr r4, _080056E4
_080056D8:
	adds r1, r2, r4
	ldrb r1, [r1]
	cmp r1, r3
	bne _080056E8
	adds r0, r2, #0
	b _080056F2
	.align 2, 0
_080056E4: .4byte gUnk_8DF7A18
_080056E8:
	adds r1, r2, #1
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	cmp r2, #0xc
	bls _080056D8
_080056F2:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80056F8
sub_80056F8: @ 0x080056F8
	push {r4, r5, r6, lr}
	movs r5, #1
	movs r6, #1
	ldr r1, _08005738
	movs r0, #0xfc
	strh r0, [r1]
	ldr r1, _0800573C
	movs r0, #0
	strh r0, [r1]
	movs r4, #0
_0800570C:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xe
	bls _0800570C
	movs r0, #4
	bl sub_8035020
	ldr r1, _0800573C
	ldrh r0, [r1]
	cmp r0, #0xf
	bhi _08005756
	adds r4, r1, #0
_0800572A:
	cmp r5, #0
	beq _08005740
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _0800574C
	.align 2, 0
_08005738: .4byte gBLDCNT
_0800573C: .4byte gBLDY
_08005740:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	bl LoadBlendingRegs
	adds r5, r6, #0
_0800574C:
	bl sub_8008220
	ldrh r0, [r4]
	cmp r0, #0xf
	bls _0800572A
_08005756:
	movs r4, #0
_08005758:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xe
	bls _08005758
	pop {r4, r5, r6}
	pop {r0}
	bx r0


  .align 2, 0

