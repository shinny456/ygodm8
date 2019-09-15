    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED
    
    THUMB_FUNC_START sub_8000224
sub_8000224: @ 0x08000224
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	bl sub_8000724
_08000230:
	ldr r1, _08000248
	ldr r0, [r1]
	ldr r0, [r0]
	adds r5, r1, #0
	cmp r0, #9
	bls _0800023E
	b _08000708
_0800023E:
	lsls r0, r0, #2
	ldr r1, _0800024C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08000248: .4byte 0x08DF758C
_0800024C: .4byte 0x08000250
_08000250: @ jump table
	.4byte _08000278 @ case 0
	.4byte _080002B0 @ case 1
	.4byte _080002D0 @ case 2
	.4byte _0800040C @ case 3
	.4byte _0800044C @ case 4
	.4byte _08000708 @ case 5
	.4byte _08000708 @ case 6
	.4byte _08000580 @ case 7
	.4byte _080005D4 @ case 8
	.4byte _0800070E @ case 9
_08000278:
	ldr r1, [r5]
	ldrh r0, [r1, #6]
	adds r0, #1
	movs r2, #0
	movs r4, #0
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bhi _0800028E
	b _0800070E
_0800028E:
	strb r2, [r1, #0xa]
	ldr r2, _080002AC
	ldr r0, [r5]
	ldrb r1, [r0, #0xa]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2]
	bl sub_804549C
	ldr r1, [r5]
	strh r4, [r1, #6]
	movs r0, #1
	b _0800070C
	.align 2, 0
_080002AC: .4byte 0x02024238
_080002B0:
	ldr r1, _080002C8
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_8045434
	ldr r0, _080002CC
	ldr r1, [r0]
	movs r0, #2
	b _0800070C
	.align 2, 0
_080002C8: .4byte 0x02024240
_080002CC: .4byte 0x08DF758C
_080002D0:
	ldr r0, [r5]
	ldrh r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080002F0
	ldr r1, _0800033C
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r1, _08000340
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8045434
_080002F0:
	ldr r2, [r5]
	ldrb r3, [r2, #0xa]
	cmp r3, #0xf
	bhi _0800031A
	ldrh r0, [r2, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0800031A
	adds r0, r3, #1
	strb r0, [r2, #0xa]
	ldr r2, _08000344
	ldr r0, [r5]
	ldrb r1, [r0, #0xa]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2]
	bl sub_804549C
_0800031A:
	ldr r0, _0800033C
	ldrh r3, [r0]
	ldr r0, _08000348
	ands r3, r0
	cmp r3, #0
	beq _08000328
	b _0800070E
_08000328:
	ldr r0, _0800034C
	ldr r2, [r0]
	ldrh r1, [r2, #8]
	adds r5, r0, #0
	cmp r1, #0xf
	bhi _08000350
	adds r0, r1, #1
	strh r0, [r2, #8]
	b _08000352
	.align 2, 0
_0800033C: .4byte 0x02024240
_08000340: .4byte 0x0202422C
_08000344: .4byte 0x02024238
_08000348: .4byte 0x000001FF
_0800034C: .4byte 0x08DF758C
_08000350:
	strh r3, [r2, #8]
_08000352:
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r0, #0xe
	bhi _080003F2
	movs r0, #0
	str r0, [sp]
	ldr r1, _080003D0
	ldr r2, _080003D4
	mov r0, sp
	bl CpuFastSet
	movs r4, #0
	ldr r2, _080003D8
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	lsls r0, r0, #1
	adds r1, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhs _080003C0
	ldr r3, _080003DC
	adds r7, r2, #0
	adds r6, r1, #0
_08000382:
	ldr r0, [r5]
	ldrh r2, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r3
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrb r1, [r2]
	adds r1, r1, r4
	lsls r1, r1, #6
	ldr r2, _080003D0
	adds r1, r1, r2
	movs r2, #0x1f
	str r3, [sp, #0xc]
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldr r3, [sp, #0xc]
	ldrb r0, [r0]
	cmp r4, r0
	blo _08000382
_080003C0:
	ldr r0, _080003E0
	ldr r0, [r0]
	ldrh r0, [r0, #8]
	cmp r0, #0xa
	beq _080003E4
	cmp r0, #0xc
	beq _080003EC
	b _080003F2
	.align 2, 0
_080003D0: .4byte 0x0200F400
_080003D4: .4byte 0x01000200
_080003D8: .4byte 0x08063FA0
_080003DC: .4byte 0x08DF754C
_080003E0: .4byte 0x08DF758C
_080003E4:
	movs r0, #2
	bl sub_80008EC
	b _080003F2
_080003EC:
	movs r0, #0
	bl sub_80008EC
_080003F2:
	bl sub_80455E4
	ldr r1, _08000404
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08000408
	ldr r1, [r0]
	movs r0, #3
	b _0800070C
	.align 2, 0
_08000404: .4byte 0x02024240
_08000408: .4byte 0x08DF758C
_0800040C:
	bl sub_8045434
	ldr r0, _08000444
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	adds r0, #1
	strh r0, [r2, #6]
	lsls r0, r0, #0x10
	movs r1, #0x87
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08000426
	b _0800070E
_08000426:
	ldrh r0, [r2, #8]
	cmp r0, #0xf
	bls _0800042E
	b _080005C0
_0800042E:
	movs r0, #4
	str r0, [r2]
	ldr r1, _08000448
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_8045434
	b _080005C4
	.align 2, 0
_08000444: .4byte 0x08DF758C
_08000448: .4byte 0x0202422C
_0800044C:
	ldr r0, [r5]
	ldrh r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800046C
	ldr r1, _080004B4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r1, _080004B8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8045434
_0800046C:
	ldr r2, [r5]
	ldrb r3, [r2, #0xa]
	cmp r3, #0
	beq _08000496
	ldrh r0, [r2, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08000496
	subs r0, r3, #1
	strb r0, [r2, #0xa]
	ldr r2, _080004BC
	ldr r0, [r5]
	ldrb r1, [r0, #0xa]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2]
	bl sub_804549C
_08000496:
	ldr r0, _080004B8
	ldrh r2, [r0]
	ldr r0, _080004C0
	ands r2, r0
	cmp r2, #0
	beq _080004A4
	b _0800070E
_080004A4:
	ldr r0, _080004C4
	ldr r1, [r0]
	ldrh r0, [r1, #8]
	cmp r0, #0xf
	bhi _080004C8
	adds r0, #1
	strh r0, [r1, #8]
	b _080004CA
	.align 2, 0
_080004B4: .4byte 0x02024240
_080004B8: .4byte 0x0202422C
_080004BC: .4byte 0x02024238
_080004C0: .4byte 0x000001FF
_080004C4: .4byte 0x08DF758C
_080004C8:
	strh r2, [r1, #8]
_080004CA:
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r1, _08000544
	ldr r2, _08000548
	bl CpuFastSet
	movs r4, #0
	ldr r3, _0800054C
	ldr r2, _08000550
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	lsls r0, r0, #1
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhs _08000532
	ldr r0, _08000554
	mov r8, r0
	adds r5, r2, #0
	adds r7, r3, #0
	adds r6, r1, #0
_080004F8:
	ldr r0, [r5]
	ldrh r2, [r0, #8]
	lsls r0, r2, #2
	add r0, r8
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrb r1, [r2]
	adds r1, r1, r4
	lsls r1, r1, #6
	ldr r2, _08000544
	adds r1, r1, r2
	movs r2, #0x1f
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r4, r0
	blo _080004F8
_08000532:
	ldr r0, _08000550
	ldr r0, [r0]
	ldrh r0, [r0, #8]
	cmp r0, #0xa
	beq _08000558
	cmp r0, #0xc
	beq _08000560
	b _08000566
	.align 2, 0
_08000544: .4byte 0x0200FC00
_08000548: .4byte 0x01000200
_0800054C: .4byte 0x08063FA0
_08000550: .4byte 0x08DF758C
_08000554: .4byte 0x08DF754C
_08000558:
	movs r0, #1
	bl sub_80008EC
	b _08000566
_08000560:
	movs r0, #0
	bl sub_80008EC
_08000566:
	bl sub_80455E4
	ldr r1, _08000578
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800057C
	ldr r1, [r0]
	movs r0, #7
	b _0800070C
	.align 2, 0
_08000578: .4byte 0x0202422C
_0800057C: .4byte 0x08DF758C
_08000580:
	bl sub_8045434
	ldr r4, _080005B8
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	adds r0, #1
	strh r0, [r2, #6]
	lsls r0, r0, #0x10
	movs r1, #0x87
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0800059A
	b _0800070E
_0800059A:
	ldrh r0, [r2, #8]
	cmp r0, #0xf
	bhi _080005C0
	ldr r1, _080005BC
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_8045434
	ldr r1, [r4]
	movs r0, #8
	str r0, [r1]
	b _080005C4
	.align 2, 0
_080005B8: .4byte 0x08DF758C
_080005BC: .4byte 0x02024240
_080005C0:
	movs r0, #9
	str r0, [r2]
_080005C4:
	ldr r0, _080005D0
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #6]
	b _0800070E
	.align 2, 0
_080005D0: .4byte 0x08DF758C
_080005D4:
	ldr r0, [r5]
	ldrh r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080005F4
	ldr r1, _0800063C
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r1, _08000640
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8045434
_080005F4:
	ldr r2, [r5]
	ldrb r3, [r2, #0xa]
	cmp r3, #0xf
	bhi _0800061E
	ldrh r0, [r2, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0800061E
	adds r0, r3, #1
	strb r0, [r2, #0xa]
	ldr r2, _08000644
	ldr r0, [r5]
	ldrb r1, [r0, #0xa]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2]
	bl sub_804549C
_0800061E:
	ldr r0, _0800063C
	ldrh r2, [r0]
	ldr r0, _08000648
	ands r2, r0
	cmp r2, #0
	bne _0800070E
	ldr r0, _0800064C
	ldr r1, [r0]
	ldrh r0, [r1, #8]
	cmp r0, #0xf
	bhi _08000650
	adds r0, #1
	strh r0, [r1, #8]
	b _08000652
	.align 2, 0
_0800063C: .4byte 0x02024240
_08000640: .4byte 0x0202422C
_08000644: .4byte 0x02024238
_08000648: .4byte 0x000001FF
_0800064C: .4byte 0x08DF758C
_08000650:
	strh r2, [r1, #8]
_08000652:
	movs r0, #0
	str r0, [sp, #8]
	add r0, sp, #8
	ldr r1, _080006CC
	ldr r2, _080006D0
	bl CpuFastSet
	movs r4, #0
	ldr r3, _080006D4
	ldr r2, _080006D8
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	lsls r0, r0, #1
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhs _080006BA
	ldr r0, _080006DC
	mov r8, r0
	adds r5, r2, #0
	adds r7, r3, #0
	adds r6, r1, #0
_08000680:
	ldr r0, [r5]
	ldrh r2, [r0, #8]
	lsls r0, r2, #2
	add r0, r8
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrb r1, [r2]
	adds r1, r1, r4
	lsls r1, r1, #6
	ldr r2, _080006CC
	adds r1, r1, r2
	movs r2, #0x1f
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r4, r0
	blo _08000680
_080006BA:
	ldr r0, _080006D8
	ldr r0, [r0]
	ldrh r0, [r0, #8]
	cmp r0, #0xa
	beq _080006E0
	cmp r0, #0xc
	beq _080006E8
	b _080006EE
	.align 2, 0
_080006CC: .4byte 0x0200F400
_080006D0: .4byte 0x01000200
_080006D4: .4byte 0x08063FA0
_080006D8: .4byte 0x08DF758C
_080006DC: .4byte 0x08DF754C
_080006E0:
	movs r0, #2
	bl sub_80008EC
	b _080006EE
_080006E8:
	movs r0, #0
	bl sub_80008EC
_080006EE:
	bl sub_80455E4
	ldr r1, _08000700
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08000704
	ldr r1, [r0]
	movs r0, #3
	b _0800070C
	.align 2, 0
_08000700: .4byte 0x02024240
_08000704: .4byte 0x08DF758C
_08000708:
	ldr r1, [r5]
	movs r0, #0
_0800070C:
	str r0, [r1]
_0800070E:
	bl sub_8008220
	ldr r0, _08000720
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	b _08000230
	.align 2, 0
_08000720: .4byte 0x08DF758C

	THUMB_FUNC_START sub_8000724
sub_8000724: @ 0x08000724
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _080007E4
	ldr r1, _080007E8
	bl sub_805D134
	bl sub_803ED78
	bl sub_80454C8
	bl sub_80454E0
	bl sub_80454F8
	bl sub_8045718
	movs r0, #0x31
	bl sub_8034F60
	ldr r0, _080007EC
	ldr r1, _080007F0
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	ldr r0, _080007F4
	ldr r4, _080007F8
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r4, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r5, #0
	str r5, [sp]
	movs r0, #0xf0
	lsls r0, r0, #8
	adds r1, r4, r0
	ldr r6, _080007FC
	mov r0, sp
	adds r2, r6, #0
	bl CpuFastSet
	str r5, [sp, #4]
	add r0, sp, #4
	movs r1, #0xf8
	lsls r1, r1, #8
	adds r4, r4, r1
	adds r1, r4, #0
	adds r2, r6, #0
	bl CpuFastSet
	movs r4, #0
	ldr r1, _08000800
	ldrb r0, [r1, #1]
	cmp r4, r0
	bhs _080007C8
	ldr r7, _08000804
	adds r6, r1, #0
	adds r5, r0, #0
_080007A4:
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r7]
	adds r0, r0, r1
	ldrb r1, [r6]
	adds r1, r1, r4
	lsls r1, r1, #6
	ldr r2, _08000808
	adds r1, r1, r2
	movs r2, #0x1f
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _080007A4
_080007C8:
	bl sub_80455E4
	bl sub_80454E0
	ldr r0, _0800080C
	bl sub_80081DC
	bl sub_8008220
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080007E4: .4byte 0x02018800
_080007E8: .4byte 0x00004314
_080007EC: .4byte 0x08063DA0
_080007F0: .4byte 0x02000000
_080007F4: .4byte 0x0805D2B0
_080007F8: .4byte 0x02000400
_080007FC: .4byte 0x01000200
_08000800: .4byte 0x08063FA0
_08000804: .4byte 0x08DF754C
_08000808: .4byte 0x0200FC00
_0800080C: .4byte 0x08000811

	THUMB_FUNC_START sub_8000810
sub_8000810: @ 0x08000810
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r3, #0
	ldr r7, _080008C0
	ldr r0, _080008C4
	mov ip, r0
	ldr r1, _080008C8
	mov r8, r1
	ldr r2, _080008CC
	mov sb, r2
	ldr r4, _080008D0
	movs r6, #0
	movs r5, #0xa0
_0800082E:
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
	bls _0800082E
	ldr r1, _080008D4
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	subs r2, #0xff
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080008D8
	movs r1, #1
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	ldr r1, _080008DC
	movs r0, #8
	strh r0, [r1]
	subs r1, #4
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	movs r4, #0
	strh r4, [r7]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r1, #0
	mov r2, ip
	strh r0, [r2]
	mov r0, r8
	strh r4, [r0]
	mov r1, sb
	strh r4, [r1]
	bl sub_8045434
	ldr r1, _080008E0
	ldr r2, _080008E4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080008E8
	strh r4, [r0]
	bl sub_804549C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080008C0: .4byte 0x02024214
_080008C4: .4byte 0x02024240
_080008C8: .4byte 0x02024248
_080008CC: .4byte 0x0202422C
_080008D0: .4byte 0x02018400
_080008D4: .4byte 0x04000008
_080008D8: .4byte 0x04000208
_080008DC: .4byte 0x04000004
_080008E0: .4byte 0x02024228
_080008E4: .4byte 0x00000241
_080008E8: .4byte 0x02024238

	THUMB_FUNC_START sub_80008EC
sub_80008EC: @ 0x080008EC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0800090C
	cmp r0, #2
	beq _08000928
	ldr r1, _08000908
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	subs r2, #0xff
	b _08000936
	.align 2, 0
_08000908: .4byte 0x04000008
_0800090C:
	ldr r1, _0800091C
	ldr r2, _08000920
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08000924
	b _08000936
	.align 2, 0
_0800091C: .4byte 0x04000008
_08000920: .4byte 0x00001F08
_08000924: .4byte 0x00001E01
_08000928:
	ldr r1, _0800093C
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	subs r2, #0xf7
_08000936:
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0800093C: .4byte 0x04000008

	THUMB_FUNC_START sub_8000940
sub_8000940: @ 0x08000940
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _080009B0
	lsls r0, r0, #2
	ldr r1, _08000954
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08000954: .4byte 0x08000958
_08000958: @ jump table
	.4byte _0800097C @ case 0
	.4byte _08000982 @ case 1
	.4byte _08000988 @ case 2
	.4byte _0800098E @ case 3
	.4byte _08000994 @ case 4
	.4byte _0800099A @ case 5
	.4byte _080009A0 @ case 6
	.4byte _080009A6 @ case 7
	.4byte _080009AC @ case 8
_0800097C:
	bl sub_80009BC
	b _080009B0
_08000982:
	bl sub_8001C70
	b _080009B0
_08000988:
	bl sub_8000224
	b _080009B0
_0800098E:
	bl sub_8001B88
	b _080009B0
_08000994:
	bl sub_8001BFC
	b _080009B0
_0800099A:
	bl sub_8001CE4
	b _080009B0
_080009A0:
	bl sub_8001DD4
	b _080009B0
_080009A6:
	bl sub_8001D58
	b _080009B0
_080009AC:
	bl sub_8001AD8
_080009B0:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80009BC
sub_80009BC: @ 0x080009BC
	push {r4, r5, r6, r7, lr}
	movs r6, #0x10
	movs r7, #0x10
	movs r0, #0x96
	lsls r0, r0, #2
	bl sub_8034F60
	ldr r0, _080009EC
	bl sub_8034F60
	bl sub_8000D74
_080009D4:
	ldr r0, _080009F0
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #7
	bls _080009E0
	b _08000BF2
_080009E0:
	lsls r0, r0, #2
	ldr r1, _080009F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080009EC: .4byte 0x00000161
_080009F0: .4byte 0x08DF7590
_080009F4: .4byte 0x080009F8
_080009F8: @ jump table
	.4byte _08000A18 @ case 0
	.4byte _08000A34 @ case 1
	.4byte _08000A84 @ case 2
	.4byte _08000AF8 @ case 3
	.4byte _08000B30 @ case 4
	.4byte _08000B70 @ case 5
	.4byte _08000BB4 @ case 6
	.4byte _08000BF2 @ case 7
_08000A18:
	ldr r4, _08000A30
	ldr r0, [r4]
	adds r0, #0x3e
	movs r1, #0x80
	strb r1, [r0]
	bl sub_8001110
	bl sub_80454E0
	movs r5, #0
	ldr r1, [r4]
	b _08000A78
	.align 2, 0
_08000A30: .4byte 0x08DF7590
_08000A34:
	lsls r4, r5, #0x10
	asrs r0, r4, #0x10
	movs r1, #3
	bl sub_805B004
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08000A5E
	ldr r0, _08000A80
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	cmp r0, #0
	beq _08000A56
	subs r0, #2
	strb r0, [r1]
_08000A56:
	bl sub_8001110
	bl sub_80454E0
_08000A5E:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r5, r0, #0x10
	ldr r0, _08000A80
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08000A76
	b _08000BF2
_08000A76:
	movs r5, #0
_08000A78:
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	b _08000BF2
	.align 2, 0
_08000A80: .4byte 0x08DF7590
_08000A84:
	bl sub_8001360
	lsls r2, r5, #0x10
	asrs r1, r2, #0x10
	movs r0, #0x10
	ands r1, r0
	adds r4, r2, #0
	cmp r1, #0
	bne _08000AB8
	ldr r0, _08000AB4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x3e
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08000AAC
	adds r0, r2, #2
	strb r0, [r1]
_08000AAC:
	bl sub_8001110
	b _08000ACE
	.align 2, 0
_08000AB4: .4byte 0x08DF7590
_08000AB8:
	ldr r0, _08000AF4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	cmp r0, #0
	beq _08000ACA
	subs r0, #2
	strb r0, [r1]
_08000ACA:
	bl sub_8001110
_08000ACE:
	bl sub_80454E0
	ldr r0, _08000AF4
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x82
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08000AEA
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
_08000AEA:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r5, r0, #0x10
	b _08000BF2
	.align 2, 0
_08000AF4: .4byte 0x08DF7590
_08000AF8:
	bl sub_80013E0
	ldr r3, _08000B2C
	ldr r0, [r3]
	adds r1, r0, #0
	adds r1, #0x3e
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08000B12
	adds r0, r2, #2
	strb r0, [r1]
_08000B12:
	ldr r1, [r3]
	ldr r0, [r1]
	cmp r0, #5
	bne _08000B22
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	movs r5, #0
_08000B22:
	bl sub_8001110
	bl sub_80454E0
	b _08000BF2
	.align 2, 0
_08000B2C: .4byte 0x08DF7590
_08000B30:
	ldr r4, _08000B6C
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x3e
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08000B46
	adds r0, r2, #2
	strb r0, [r1]
_08000B46:
	bl sub_8001110
	bl sub_80454E0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _08000B60
	ldr r1, [r4]
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	movs r5, #0
_08000B60:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	b _08000BF2
	.align 2, 0
_08000B6C: .4byte 0x08DF7590
_08000B70:
	lsls r4, r5, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	bne _08000B90
	ldr r0, _08000BB0
	ldr r1, [r0]
	adds r1, #0x3f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl sub_80011B4
	bl sub_80454E0
_08000B90:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r5, r0, #0x10
	ldr r4, _08000BB0
	ldr r0, [r4]
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x2f
	bls _08000BF2
	movs r0, #8
	bl sub_8035038
	ldr r1, [r4]
	b _08000BEA
	.align 2, 0
_08000BB0: .4byte 0x08DF7590
_08000BB4:
	lsls r4, r5, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	bne _08000BD4
	ldr r0, _08000CB0
	ldr r1, [r0]
	adds r1, #0x40
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl sub_80012B4
	bl sub_80454E0
_08000BD4:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r5, r0, #0x10
	ldr r0, _08000CB0
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r0, #0x2f
	bls _08000BF2
_08000BEA:
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	movs r5, #0
_08000BF2:
	movs r3, #0
	ldr r4, _08000CB0
_08000BF6:
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x48
	adds r2, r2, r3
	adds r0, #0x64
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	subs r1, r1, r0
	strb r1, [r2]
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x56
	adds r2, r2, r3
	adds r0, #0x72
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	subs r1, r1, r0
	strb r1, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bls _08000BF6
	ldr r4, _08000CB0
	ldr r1, [r4]
	adds r1, #0x41
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl sub_80018E8
	bl sub_80015A4
	bl sub_80454C8
	ldr r4, [r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r1, #9
	bl sub_805B940
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08000C60
	adds r4, #0x42
	ldrb r0, [r4]
	cmp r0, #0
	beq _08000C60
	subs r0, #1
	strb r0, [r4]
_08000C60:
	ldr r2, _08000CB0
	ldr r0, [r2]
	adds r0, #0x80
	ldrh r1, [r0]
	movs r0, #7
	ands r1, r0
	adds r4, r2, #0
	cmp r1, #0
	bne _08000C7E
	ldr r1, _08000CB4
	ldrh r0, [r1]
	cmp r0, #0
	beq _08000C7E
	subs r0, #1
	strh r0, [r1]
_08000C7E:
	ldr r0, [r4]
	ldr r0, [r0, #4]
	cmp r0, #7
	beq _08000CC0
	bl sub_8045434
	ldr r1, _08000CB8
	lsls r0, r7, #8
	orrs r0, r6
	strh r0, [r1]
	bl sub_804549C
	bl sub_80082E8
	ldr r1, [r4]
	adds r1, #0x80
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r0, _08000CBC
	bl sub_80081DC
	bl sub_8008220
	b _080009D4
	.align 2, 0
_08000CB0: .4byte 0x08DF7590
_08000CB4: .4byte 0x02024214
_08000CB8: .4byte 0x02024238
_08000CBC: .4byte 0x0804557D
_08000CC0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8000CC8
sub_8000CC8: @ 0x08000CC8
	push {r4, r5, lr}
	ldr r2, _08000D6C
	ldr r0, [r2]
	movs r4, #0
	str r4, [r0, #4]
	str r4, [r0]
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	strh r4, [r1]
	strb r3, [r0, #0xa]
	ldr r0, [r2]
	strb r3, [r0, #0xb]
	ldr r0, [r2]
	adds r0, #0x42
	movs r1, #0x40
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0x3f
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, #0x40
	strb r3, [r0]
	ldr r0, [r2]
	mov ip, r0
	mov r1, ip
	adds r1, #0x44
	ldr r0, _08000D70
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x46
	strh r4, [r0]
	subs r0, #5
	strb r3, [r0]
	ldr r0, [r2]
	adds r3, r0, #0
	adds r3, #0x82
	movs r1, #0x80
	strh r1, [r3]
	adds r0, #0x84
	strh r1, [r0]
	adds r5, r2, #0
_08000D1C:
	movs r0, #0
	movs r1, #0xf0
	bl sub_8056258
	ldr r1, [r5]
	adds r1, #0x48
	adds r1, r1, r4
	strb r0, [r1]
	movs r0, #0
	movs r1, #0xa0
	bl sub_8056258
	ldr r1, [r5]
	adds r1, #0x56
	adds r1, r1, r4
	strb r0, [r1]
	movs r0, #1
	movs r1, #4
	bl sub_8056258
	ldr r1, [r5]
	adds r1, #0x64
	adds r1, r1, r4
	strb r0, [r1]
	movs r0, #1
	movs r1, #4
	bl sub_8056258
	ldr r1, [r5]
	adds r1, #0x72
	adds r1, r1, r4
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xd
	bls _08000D1C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000D6C: .4byte 0x08DF7590
_08000D70: .4byte 0x0000FF4C

	THUMB_FUNC_START sub_8000D74
sub_8000D74: @ 0x08000D74
	push {r4, r5, r6, r7, lr}
	bl sub_803ED78
	bl sub_80454C8
	bl sub_80454E0
	bl sub_80454F8
	bl sub_8045718
	bl sub_8000CC8
	movs r1, #0
	ldr r4, _08000F44
	ldr r3, _08000F48
_08000D94:
	lsls r0, r1, #1
	adds r2, r0, r4
	adds r0, r0, r3
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r0, #0
	bge _08000DA4
	adds r0, #3
_08000DA4:
	asrs r0, r0, #2
	strh r0, [r2]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xe3
	bls _08000D94
	ldr r0, _08000F4C
	ldr r4, _08000F50
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _08000F54
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r4, r2
	bl LZ77UnCompWram
	ldr r0, _08000F58
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r4, r5
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08000F5C
	ldr r5, _08000F60
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r4, r4, r0
	ldr r3, _08000F64
_08000DE2:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	str r0, [r2]
	lsls r0, r1, #5
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x13
	bls _08000DE2
	movs r1, #0
	ldr r2, _08000F68
	mov ip, r2
	ldr r7, _08000F6C
	ldr r2, _08000F5C
	ldr r5, _08000F70
	ldr r4, _08000F74
	ldr r3, _08000F64
_08000E10:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #5
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08000E10
	movs r1, #0
	ldr r2, _08000F5C
	movs r6, #0x5a
	ldr r5, _08000F78
	ldr r4, _08000F7C
	ldr r3, _08000F80
_08000E3C:
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08000E3C
	movs r1, #0
	ldr r2, _08000F5C
	movs r6, #0x5a
	ldr r5, _08000F84
	ldr r4, _08000F88
	ldr r3, _08000F8C
_08000E66:
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08000E66
	movs r1, #0
	ldr r2, _08000F5C
	movs r6, #0x5a
	ldr r5, _08000F90
	ldr r4, _08000F94
	ldr r3, _08000F80
_08000E90:
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08000E90
	movs r1, #0
	ldr r2, _08000F5C
	movs r6, #0x5a
	ldr r5, _08000F98
	ldr r4, _08000F9C
	ldr r3, _08000F8C
_08000EBA:
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08000EBA
	movs r1, #0
	ldr r2, _08000F5C
	ldr r5, _08000FA0
	ldr r4, _08000F94
	ldr r3, _08000FA4
_08000EE2:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #0
	adds r0, #0x11
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bls _08000EE2
	mov r0, ip
	adds r1, r7, #0
	movs r2, #0x30
	bl CpuSet
	ldr r0, _08000FA8
	movs r5, #0xf0
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r2, #0x10
	bl CpuSet
	bl sub_8001788
	ldr r0, _08000FAC
	bl sub_80081DC
	bl sub_8001068
	bl sub_80454C8
	bl sub_80454F8
	bl sub_80454E0
	bl sub_804557C
	bl sub_8008220
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000F44: .4byte 0x02020C00
_08000F48: .4byte 0x08088ED4
_08000F4C: .4byte 0x08A47010
_08000F50: .4byte 0x02000400
_08000F54: .4byte 0x08A481C8
_08000F58: .4byte 0x08A45DE4
_08000F5C: .4byte 0x040000D4
_08000F60: .4byte 0x08A45880
_08000F64: .4byte 0x8000000F
_08000F68: .4byte 0x08A4A430
_08000F6C: .4byte 0x02000000
_08000F70: .4byte 0x08A45AD8
_08000F74: .4byte 0x02007C00
_08000F78: .4byte 0x08A44F5C
_08000F7C: .4byte 0x0200E400
_08000F80: .4byte 0x80000020
_08000F84: .4byte 0x08A44F9C
_08000F88: .4byte 0x0200EC00
_08000F8C: .4byte 0x8000000D
_08000F90: .4byte 0x08A453EE
_08000F94: .4byte 0x0200F400
_08000F98: .4byte 0x08A4542E
_08000F9C: .4byte 0x0200FC00
_08000FA0: .4byte 0x08063FC0
_08000FA4: .4byte 0x8000001E
_08000FA8: .4byte 0x08064038
_08000FAC: .4byte 0x080019C5

	THUMB_FUNC_START sub_8000FB0
sub_8000FB0: @ 0x08000FB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r2, _08001020
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08001024
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08001028
	mov r8, r0
	ldr r7, _0800102C
_08000FD2:
	ldr r0, _08001030
	ldrb r0, [r0]
	adds r5, r0, #0
	ldr r0, _08001034
	ldr r0, [r0]
	adds r0, #0x80
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r5, r0
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, r6, #0
	movs r1, #0x19
	bl sub_805B51C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #8
	subs r1, r1, r0
	adds r0, r4, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _0800100A
	adds r0, #0xff
_0800100A:
	asrs r0, r0, #8
	mov r1, r8
	strh r0, [r1]
	bl sub_8008288
	cmp r5, #0xc8
	beq _08001038
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	b _08000FD2
	.align 2, 0
_08001020: .4byte 0x04000200
_08001024: .4byte 0x04000004
_08001028: .4byte 0x04000014
_0800102C: .4byte 0x08088ED4
_08001030: .4byte 0x04000006
_08001034: .4byte 0x08DF7590
_08001038:
	ldr r2, _08001058
	ldrh r1, [r2]
	ldr r0, _0800105C
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08001060
	ldrh r1, [r2]
	ldr r0, _08001064
	ands r0, r1
	strh r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001058: .4byte 0x04000200
_0800105C: .4byte 0x0000FFFD
_08001060: .4byte 0x04000004
_08001064: .4byte 0x0000FFEF

	THUMB_FUNC_START sub_8001068
sub_8001068: @ 0x08001068
	push {r4, r5, r6, r7, lr}
	ldr r1, _080010F4
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _080010F8
	movs r0, #2
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _080010FC
	movs r0, #3
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r0, _08001100
	ldr r4, _08001104
	adds r1, r4, #0
	movs r2, #0x30
	bl CpuSet
	movs r5, #0
	ldr r6, _08001108
	ldr r0, _0800110C
	adds r7, r4, r0
	movs r0, #0xf8
	lsls r0, r0, #2
	mov ip, r0
	movs r4, #0xf8
	lsls r4, r4, #7
_080010AA:
	ldr r1, [r6]
	adds r1, #0xe
	adds r1, r1, r5
	movs r0, #0x88
	lsls r0, r0, #1
	adds r3, r5, r0
	lsls r3, r3, #1
	adds r3, r3, r7
	ldrb r2, [r3]
	movs r0, #0x1f
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0x1e
	adds r1, r1, r5
	ldrh r2, [r3]
	mov r0, ip
	ands r0, r2
	lsrs r0, r0, #5
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0x2e
	adds r1, r1, r5
	ldrh r2, [r3]
	adds r0, r4, #0
	ands r0, r2
	lsrs r0, r0, #0xa
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _080010AA
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080010F4: .4byte 0x08A4A490
_080010F8: .4byte 0x08A4E490
_080010FC: .4byte 0x08A50490
_08001100: .4byte 0x08A52490
_08001104: .4byte 0x02000200
_08001108: .4byte 0x08DF7590
_0800110C: .4byte 0xFFFFFE00

	THUMB_FUNC_START sub_8001110
sub_8001110: @ 0x08001110
	push {r4, r5, r6, r7, lr}
	ldr r1, _08001128
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x3e
	ldrb r0, [r2]
	mov ip, r1
	cmp r0, #0xbf
	bls _0800112C
	movs r0, #0
	b _08001132
	.align 2, 0
_08001128: .4byte 0x08DF7590
_0800112C:
	cmp r0, #0x80
	bls _08001134
	movs r0, #0x80
_08001132:
	strb r0, [r2]
_08001134:
	movs r5, #0
	ldr r7, _080011B0
_08001138:
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r6, r0, r7
	mov r0, ip
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0xe
	adds r0, r0, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r3, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _08001160
	adds r0, #0x7f
_08001160:
	asrs r0, r0, #7
	subs r4, r2, r0
	adds r0, r3, #0
	adds r0, #0x1e
	adds r0, r0, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _08001178
	adds r0, #0x7f
_08001178:
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r4
	adds r0, r3, #0
	adds r0, #0x2e
	adds r0, r0, r5
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r3, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _08001194
	adds r0, #0x7f
_08001194:
	asrs r0, r0, #7
	subs r0, r3, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _08001138
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080011B0: .4byte 0x02000000

	THUMB_FUNC_START sub_80011B4
sub_80011B4: @ 0x080011B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080011D4
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	mov r8, r1
	cmp r0, #0xbf
	bls _080011D8
	movs r0, #0
	b _080011DE
	.align 2, 0
_080011D4: .4byte 0x08DF7590
_080011D8:
	cmp r0, #0x80
	bls _080011E0
	movs r0, #0x80
_080011DE:
	strb r0, [r2]
_080011E0:
	movs r6, #0
	ldr r0, _080012B0
	mov ip, r0
	movs r1, #0xf8
	lsls r1, r1, #2
	mov sl, r1
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sb, r0
_080011F2:
	lsls r0, r6, #1
	mov r1, ip
	adds r7, r0, r1
	ldrh r1, [r7]
	movs r2, #0x1f
	ands r2, r1
	mov r0, sl
	ands r0, r1
	lsrs r4, r0, #5
	mov r0, sb
	ands r0, r1
	lsrs r5, r0, #0xa
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x3f
	ldrb r3, [r0]
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r1, r2, r0
	adds r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r4, r0
	lsls r2, r0, #5
	orrs r2, r1
	adds r0, r5, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r5, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r7]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x2f
	bls _080011F2
	movs r6, #0
	mov sl, ip
	movs r0, #0xf8
	lsls r0, r0, #2
	mov ip, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	mov sb, r1
_0800124E:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r6, r0
	lsls r0, r0, #1
	mov r1, sl
	adds r7, r0, r1
	ldrh r1, [r7]
	movs r2, #0x1f
	ands r2, r1
	mov r0, ip
	ands r0, r1
	lsrs r4, r0, #5
	mov r0, sb
	ands r0, r1
	lsrs r5, r0, #0xa
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x3f
	ldrb r3, [r0]
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r1, r2, r0
	adds r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r4, r0
	lsls r2, r0, #5
	orrs r2, r1
	adds r0, r5, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r5, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r7]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0800124E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080012B0: .4byte 0x02000000

	THUMB_FUNC_START sub_80012B4
sub_80012B4: @ 0x080012B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080012D0
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r0, [r2]
	cmp r0, #0xbf
	bls _080012D4
	movs r0, #0
	b _080012DA
	.align 2, 0
_080012D0: .4byte 0x08DF7590
_080012D4:
	cmp r0, #0x80
	bls _080012DC
	movs r0, #0x80
_080012DA:
	strb r0, [r2]
_080012DC:
	movs r0, #0
	mov r8, r0
	ldr r1, _08001358
	mov sl, r1
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sb, r0
_080012EA:
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, r8
	lsls r0, r0, #1
	add r0, sl
	mov ip, r0
	ldrh r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	adds r3, r0, #0
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r4, r0, #5
	adds r6, r4, #0
	mov r0, sb
	ands r0, r1
	lsrs r5, r0, #0xa
	adds r7, r5, #0
	ldr r1, _0800135C
	ldr r0, [r1]
	adds r0, #0x40
	ldrb r2, [r0]
	adds r0, r3, #0
	muls r0, r2, r0
	asrs r0, r0, #7
	subs r3, r3, r0
	adds r0, r4, #0
	muls r0, r2, r0
	asrs r0, r0, #7
	subs r0, r6, r0
	lsls r1, r0, #5
	orrs r1, r3
	adds r0, r5, #0
	muls r0, r2, r0
	asrs r0, r0, #7
	subs r0, r7, r0
	lsls r0, r0, #0xa
	orrs r1, r0
	mov r0, ip
	strh r1, [r0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0xf
	bls _080012EA
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001358: .4byte 0x02000000
_0800135C: .4byte 0x08DF7590

	THUMB_FUNC_START sub_8001360
sub_8001360: @ 0x08001360
	push {lr}
	ldr r2, _080013C0
	ldr r3, [r2]
	adds r0, r3, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r1, #1
	ands r0, r1
	adds r1, r2, #0
	cmp r0, #0
	bne _08001386
	adds r2, r3, #0
	adds r2, #0x44
	ldrh r3, [r2]
	ldr r0, _080013C4
	cmp r3, r0
	bhi _08001386
	adds r0, r3, #1
	strh r0, [r2]
_08001386:
	ldr r1, [r1]
	mov ip, r1
	mov r0, ip
	adds r0, #0x44
	ldrh r1, [r0]
	ldr r0, _080013C8
	cmp r1, r0
	bls _080013D8
	mov r2, ip
	adds r2, #0x82
	ldrh r1, [r2]
	cmp r1, #0xff
	bhi _080013CC
	mov r3, ip
	adds r3, #0x46
	ldrh r0, [r3]
	adds r0, r1, r0
	strh r0, [r2]
	mov r1, ip
	adds r1, #0x84
	ldrh r0, [r3]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	b _080013D8
	.align 2, 0
_080013C0: .4byte 0x08DF7590
_080013C4: .4byte 0x0000FFEF
_080013C8: .4byte 0x0000FFE8
_080013CC:
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2]
	mov r0, ip
	adds r0, #0x84
	strh r1, [r0]
_080013D8:
	bl sub_8001788
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80013E0
sub_80013E0: @ 0x080013E0
	push {lr}
	ldr r1, _080013F8
	ldr r0, [r1]
	ldr r0, [r0]
	adds r2, r1, #0
	cmp r0, #5
	bhi _0800144E
	lsls r0, r0, #2
	ldr r1, _080013FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080013F8: .4byte 0x08DF7590
_080013FC: .4byte 0x08001400
_08001400: @ jump table
	.4byte _08001418 @ case 0
	.4byte _08001420 @ case 1
	.4byte _0800141C @ case 2
	.4byte _08001420 @ case 3
	.4byte _0800143A @ case 4
	.4byte _0800144E @ case 5
_08001418:
	movs r0, #0
	b _0800143C
_0800141C:
	movs r0, #1
	b _0800143C
_08001420:
	ldr r2, [r2]
	ldrh r0, [r2, #8]
	adds r0, #1
	strh r0, [r2, #8]
	ldrh r0, [r2, #8]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0800144E
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	b _0800144E
_0800143A:
	movs r0, #2
_0800143C:
	bl sub_8001458
	ldr r0, _08001454
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #8]
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_0800144E:
	pop {r0}
	bx r0
	.align 2, 0
_08001454: .4byte 0x08DF7590

	THUMB_FUNC_START sub_8001458
sub_8001458: @ 0x08001458
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #1
	beq _080014DC
	cmp r0, #1
	bgt _0800146E
	cmp r0, #0
	beq _08001478
	b _08001582
_0800146E:
	cmp r1, #2
	beq _08001478
	cmp r1, #3
	beq _08001540
	b _08001582
_08001478:
	ldr r1, _080014C0
	ldr r2, _080014C4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080014C8
	ldr r4, _080014CC
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _080014D0
	ldr r5, _080014D4
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r4, r4, r0
	ldr r3, _080014D8
_08001498:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #5
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08001498
	bl sub_8045658
	b _08001582
	.align 2, 0
_080014C0: .4byte 0x0400000C
_080014C4: .4byte 0x00004781
_080014C8: .4byte 0x08A481C8
_080014CC: .4byte 0x02004400
_080014D0: .4byte 0x040000D4
_080014D4: .4byte 0x08A45AD8
_080014D8: .4byte 0x8000000F
_080014DC:
	ldr r1, _08001524
	ldr r2, _08001528
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0800152C
	ldr r4, _08001530
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08001534
	ldr r5, _08001538
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r4, r4, r0
	ldr r3, _0800153C
_080014FC:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #5
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _080014FC
	bl sub_8045640
	b _08001582
	.align 2, 0
_08001524: .4byte 0x0400000C
_08001528: .4byte 0x00004F85
_0800152C: .4byte 0x08A492D8
_08001530: .4byte 0x02000400
_08001534: .4byte 0x040000D4
_08001538: .4byte 0x08A45C5E
_0800153C: .4byte 0x8000000F
_08001540:
	ldr r1, _08001588
	ldr r2, _0800158C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08001590
	ldr r4, _08001594
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08001598
	ldr r5, _0800159C
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r4, r4, r0
	ldr r3, _080015A0
_08001560:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	str r0, [r2]
	lsls r0, r1, #5
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x13
	bls _08001560
	bl sub_8045640
_08001582:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001588: .4byte 0x0400000C
_0800158C: .4byte 0x00004F85
_08001590: .4byte 0x08A47010
_08001594: .4byte 0x02000400
_08001598: .4byte 0x040000D4
_0800159C: .4byte 0x08A45880
_080015A0: .4byte 0x8000000F

	THUMB_FUNC_START sub_80015A4
sub_80015A4: @ 0x080015A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r3, _080015D8
	ldr r5, [r3]
	ldr r2, _080015DC
	ldrb r0, [r5, #0xb]
	ldr r1, [r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r5, #0xa]
	ldrb r0, [r0]
	cmp r1, r0
	bne _080015E0
	movs r0, #0
	strb r0, [r5, #0xa]
	adds r0, r3, #0
	ldr r1, [r0]
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	b _080015E4
	.align 2, 0
_080015D8: .4byte 0x08DF7590
_080015DC: .4byte 0x08FA3630
_080015E0:
	adds r0, r1, #1
	strb r0, [r5, #0xa]
_080015E4:
	ldr r1, _0800176C
	ldr r3, [r1]
	ldrb r0, [r3, #0xb]
	ldr r1, [r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080015F8
	strb r0, [r3, #0xb]
_080015F8:
	movs r0, #0
	ldr r4, _08001770
	mov sb, r4
	ldr r2, [r2]
	mov ip, r2
_08001602:
	movs r6, #0
	lsls r5, r0, #5
	mov sl, r5
	adds r7, r0, #1
	str r7, [sp]
	lsls r7, r0, #3
_0800160E:
	lsls r3, r6, #3
	add r3, sl
	mov r0, sb
	adds r5, r3, r0
	ldr r1, _0800176C
	ldr r4, [r1]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #3
	add r0, ip
	ldr r0, [r0, #4]
	adds r0, r7, r0
	ldrh r0, [r0]
	movs r1, #0xff
	lsls r1, r1, #8
	ands r1, r0
	adds r0, #0x50
	movs r2, #0xff
	ands r0, r2
	orrs r1, r0
	strh r1, [r5]
	movs r2, #2
	add r2, sb
	mov r8, r2
	adds r2, r3, r2
	str r2, [sp, #4]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #3
	add r0, ip
	ldr r0, [r0, #4]
	adds r0, r7, r0
	ldrh r0, [r0, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r2, r0
	lsls r1, r6, #6
	adds r0, r0, r1
	ldr r5, _08001774
	adds r1, r5, #0
	ands r0, r1
	orrs r2, r0
	ldr r0, [sp, #4]
	strh r2, [r0]
	ldr r1, _08001778
	adds r3, r3, r1
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #3
	add r0, ip
	ldr r0, [r0, #4]
	adds r0, r7, r0
	ldrh r0, [r0, #4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0800160E
	ldr r4, [sp]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08001602
	movs r6, #0
	movs r5, #0x5e
	add r5, r8
	mov ip, r5
	ldr r0, _0800177C
	ldr r0, [r0]
	ldr r0, [r0, #4]
	mov sb, r0
	movs r7, #0xff
	lsls r7, r7, #8
	mov sl, r7
	movs r0, #0x62
	add r8, r0
_080016AA:
	lsls r3, r6, #3
	mov r1, ip
	adds r5, r3, r1
	mov r2, sb
	adds r4, r3, r2
	ldrh r1, [r4]
	mov r2, sl
	ands r2, r1
	ldr r7, _0800176C
	ldr r0, [r7]
	adds r0, #0x42
	ldrb r0, [r0]
	adds r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	orrs r2, r1
	strh r2, [r5]
	mov r2, ip
	adds r2, #2
	adds r1, r3, r2
	ldrh r0, [r4, #2]
	strh r0, [r1]
	add r3, r8
	ldrh r0, [r4, #4]
	movs r4, #0xc1
	lsls r4, r4, #4
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x26
	bls _080016AA
	movs r6, #0
	ldr r5, _08001780
	mov sl, r5
	movs r7, #0xff
	lsls r7, r7, #8
	mov ip, r7
	movs r0, #0xfe
	lsls r0, r0, #8
	mov sb, r0
	movs r1, #0x9d
	lsls r1, r1, #1
	adds r1, r1, r2
	mov r8, r1
_08001708:
	lsls r4, r6, #3
	ldr r2, _08001784
	adds r3, r4, r2
	lsls r0, r6, #2
	add r0, sl
	ldr r0, [r0]
	ldr r5, [r0, #4]
	ldrh r0, [r5]
	mov r1, ip
	ands r1, r0
	ldr r7, _0800176C
	ldr r2, [r7]
	adds r0, r2, #0
	adds r0, #0x56
	adds r0, r0, r6
	ldrb r0, [r0]
	orrs r0, r1
	movs r7, #0xc0
	lsls r7, r7, #2
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r3, _08001784
	adds r3, #2
	adds r3, r4, r3
	ldrh r0, [r5, #2]
	mov r1, sb
	ands r1, r0
	adds r2, #0x48
	adds r2, r2, r6
	ldrb r0, [r2]
	orrs r0, r1
	strh r0, [r3]
	add r4, r8
	ldrh r0, [r5, #4]
	strh r0, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xd
	bls _08001708
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800176C: .4byte 0x08DF7590
_08001770: .4byte 0x02018400
_08001774: .4byte 0x000001FF
_08001778: .4byte 0x02018404
_0800177C: .4byte 0x08FA3770
_08001780: .4byte 0x08FA37E8
_08001784: .4byte 0x02018598

	THUMB_FUNC_START sub_8001788
sub_8001788: @ 0x08001788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r6, _080018B8
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x44
	ldrh r0, [r0]
	mov r8, r0
	ldr r4, _080018BC
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r7, [r0, r2]
	adds r1, #0x82
	movs r3, #0
	ldrsh r0, [r1, r3]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_8008144
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	ldrsh r5, [r4, r0]
	ldr r0, [r6]
	adds r0, #0x82
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8008144
	mov sl, r0
	mov r2, sl
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	ldrh r4, [r4]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [r6]
	adds r0, #0x84
	movs r3, #0
	ldrsh r0, [r0, r3]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	mov sb, r0
	mov r4, sb
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sb, r4
	ldr r0, [r6]
	adds r0, #0x84
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_8008144
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r8, r2
	movs r3, #0x78
	rsbs r3, r3, #0
	add r8, r3
	ldr r4, [sp]
	mov r3, r8
	muls r3, r4, r3
	movs r1, #0
	movs r2, #0x50
	subs r4, r1, r2
	mov r1, sl
	muls r1, r4, r1
	adds r3, r3, r1
	movs r1, #0xf0
	lsls r1, r1, #7
	adds r3, r3, r1
	asrs r5, r3, #0x10
	ldr r2, _080018C0
	adds r6, r2, #0
	ands r5, r6
	mov r1, r8
	mov r2, sb
	muls r2, r1, r2
	adds r1, r0, #0
	muls r1, r4, r1
	adds r2, r2, r1
	movs r4, #0x50
	lsls r1, r4, #8
	adds r2, r2, r1
	asrs r4, r2, #0x10
	ands r4, r6
	ldr r6, _080018C4
	movs r1, #0
	strh r1, [r6]
	ldr r1, _080018C8
	strh r3, [r1]
	ldr r1, _080018CC
	strh r5, [r1]
	ldr r1, _080018D0
	strh r2, [r1]
	ldr r1, _080018D4
	strh r4, [r1]
	ldr r1, _080018D8
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r1]
	ldr r1, _080018DC
	mov r3, sl
	strh r3, [r1]
	ldr r1, _080018E0
	mov r4, sb
	strh r4, [r1]
	ldr r1, _080018E4
	strh r0, [r1]
	movs r0, #1
	strh r0, [r6]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080018B8: .4byte 0x08DF7590
_080018BC: .4byte 0x08088ED4
_080018C0: .4byte 0x00000FFF
_080018C4: .4byte 0x04000208
_080018C8: .4byte 0x0202423C
_080018CC: .4byte 0x02024210
_080018D0: .4byte 0x02024244
_080018D4: .4byte 0x0202421C
_080018D8: .4byte 0x02024234
_080018DC: .4byte 0x02024220
_080018E0: .4byte 0x02024208
_080018E4: .4byte 0x02024224

	THUMB_FUNC_START sub_80018E8
sub_80018E8: @ 0x080018E8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	ldr r0, _080019B8
	mov sl, r0
	ldr r5, _080019BC
	ldr r0, [r5]
	adds r0, #0x41
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sl
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r2, #0x80
	lsls r2, r2, #1
	mov sb, r2
	mov r0, sb
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	mov r8, r0
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r5]
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sl
	movs r1, #0
	ldrsh r4, [r0, r1]
	mov r0, sb
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, [r5]
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sl
	ldrh r4, [r0]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, sb
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5]
	adds r0, #0x41
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r5, [r0, r2]
	mov r0, sb
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8008144
	ldr r1, _080019C0
	mov r2, r8
	strh r2, [r1]
	strh r6, [r1, #8]
	strh r4, [r1, #0x10]
	strh r0, [r1, #0x18]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080019B8: .4byte 0x08088ED4
_080019BC: .4byte 0x08DF7590
_080019C0: .4byte 0x02018406

	THUMB_FUNC_START sub_80019C4
sub_80019C4: @ 0x080019C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r3, #0
	ldr r7, _08001A94
	ldr r0, _08001A98
	mov ip, r0
	ldr r1, _08001A9C
	mov r8, r1
	ldr r2, _08001AA0
	mov sb, r2
	ldr r4, _08001AA4
	movs r6, #0
	movs r5, #0xa0
_080019E2:
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
	bls _080019E2
	ldr r1, _08001AA8
	ldr r2, _08001AAC
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08001AB0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08001AB4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08001AB8
	movs r1, #1
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	ldr r1, _08001ABC
	movs r0, #8
	strh r0, [r1]
	subs r1, #4
	ldr r2, _08001AC0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08001AC4
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #2
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x78
	strh r0, [r7]
	movs r0, #0
	mov r1, ip
	strh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	mov r1, sb
	strh r0, [r1]
	bl sub_8045434
	ldr r1, _08001AC8
	ldr r2, _08001ACC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08001AD0
	ldr r2, _08001AD4
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804549C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001A94: .4byte 0x02024214
_08001A98: .4byte 0x02024240
_08001A9C: .4byte 0x02024248
_08001AA0: .4byte 0x0202422C
_08001AA4: .4byte 0x02018400
_08001AA8: .4byte 0x04000008
_08001AAC: .4byte 0x00005C0A
_08001AB0: .4byte 0x00005E0B
_08001AB4: .4byte 0x00004781
_08001AB8: .4byte 0x04000208
_08001ABC: .4byte 0x04000004
_08001AC0: .4byte 0x00003701
_08001AC4: .4byte 0x00001078
_08001AC8: .4byte 0x02024228
_08001ACC: .4byte 0x00003F50
_08001AD0: .4byte 0x02024238
_08001AD4: .4byte 0x00001010

	THUMB_FUNC_START sub_8001AD8
sub_8001AD8: @ 0x08001AD8
	push {lr}
	bl sub_8002E98
	ldr r0, _08001B00
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1]
_08001AE6:
	bl sub_80043D0
	ldr r0, _08001B00
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #5
	bhi _08001B58
	lsls r0, r0, #2
	ldr r1, _08001B04
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08001B00: .4byte 0x08DF7594
_08001B04: .4byte 0x08001B08
_08001B08: @ jump table
	.4byte _08001B20 @ case 0
	.4byte _08001B2C @ case 1
	.4byte _08001B32 @ case 2
	.4byte _08001B38 @ case 3
	.4byte _08001B3E @ case 4
	.4byte _08001B44 @ case 5
_08001B20:
	ldr r0, _08001B28
	ldr r1, [r0]
	movs r0, #1
	b _08001B5A
	.align 2, 0
_08001B28: .4byte 0x08DF7594
_08001B2C:
	bl sub_8001E8C
	b _08001B5C
_08001B32:
	bl sub_80020D8
	b _08001B5C
_08001B38:
	bl sub_80029D4
	b _08001B5C
_08001B3E:
	bl sub_80027F0
	b _08001B5C
_08001B44:
	ldr r0, _08001B54
	ldr r0, [r0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b _08001B5C
	.align 2, 0
_08001B54: .4byte 0x08DF7594
_08001B58:
	movs r0, #0
_08001B5A:
	str r0, [r1]
_08001B5C:
	ldr r0, _08001B80
	ldr r1, [r0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001B84
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8008220
	b _08001AE6
	.align 2, 0
_08001B80: .4byte 0x08DF7594
_08001B84:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8001B88
sub_8001B88: @ 0x08001B88
	push {r4, r5, lr}
	bl sub_8002E98
	ldr r2, _08001BB8
	ldr r1, [r2]
	movs r0, #0
	str r0, [r1]
	adds r5, r2, #0
	movs r4, #1
_08001B9A:
	bl sub_80043D0
	ldr r1, [r5]
	ldr r0, [r1]
	cmp r0, #1
	beq _08001BC0
	cmp r0, #1
	blo _08001BBC
	cmp r0, #2
	beq _08001BC6
	cmp r0, #5
	beq _08001BCC
	movs r0, #0
	str r0, [r1]
	b _08001BD4
	.align 2, 0
_08001BB8: .4byte 0x08DF7594
_08001BBC:
	str r4, [r1]
	b _08001BD4
_08001BC0:
	bl sub_8001E8C
	b _08001BD4
_08001BC6:
	movs r0, #5
	str r0, [r1]
	b _08001BD4
_08001BCC:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	strb r4, [r0]
_08001BD4:
	ldr r1, [r5]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001BF4
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8008220
	b _08001B9A
_08001BF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8001BFC
sub_8001BFC: @ 0x08001BFC
	push {r4, r5, lr}
	bl sub_8002E98
	ldr r2, _08001C2C
	ldr r1, [r2]
	movs r0, #0
	str r0, [r1]
	adds r5, r2, #0
	movs r4, #1
_08001C0E:
	bl sub_80043D0
	ldr r1, [r5]
	ldr r0, [r1]
	cmp r0, #1
	beq _08001C34
	cmp r0, #1
	blo _08001C30
	cmp r0, #2
	beq _08001C3A
	cmp r0, #5
	beq _08001C40
	movs r0, #0
	str r0, [r1]
	b _08001C48
	.align 2, 0
_08001C2C: .4byte 0x08DF7594
_08001C30:
	str r4, [r1]
	b _08001C48
_08001C34:
	bl sub_80020D8
	b _08001C48
_08001C3A:
	movs r0, #5
	str r0, [r1]
	b _08001C48
_08001C40:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	strb r4, [r0]
_08001C48:
	ldr r1, [r5]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001C68
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8008220
	b _08001C0E
_08001C68:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8001C70
sub_8001C70: @ 0x08001C70
	push {r4, r5, lr}
	bl sub_8002E98
	ldr r2, _08001CA0
	ldr r1, [r2]
	movs r0, #0
	str r0, [r1]
	adds r5, r2, #0
	movs r4, #1
_08001C82:
	bl sub_80043D0
	ldr r1, [r5]
	ldr r0, [r1]
	cmp r0, #1
	beq _08001CA8
	cmp r0, #1
	blo _08001CA4
	cmp r0, #2
	beq _08001CAE
	cmp r0, #5
	beq _08001CB4
	movs r0, #0
	str r0, [r1]
	b _08001CBC
	.align 2, 0
_08001CA0: .4byte 0x08DF7594
_08001CA4:
	str r4, [r1]
	b _08001CBC
_08001CA8:
	bl sub_80027F0
	b _08001CBC
_08001CAE:
	movs r0, #5
	str r0, [r1]
	b _08001CBC
_08001CB4:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	strb r4, [r0]
_08001CBC:
	ldr r1, [r5]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001CDC
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8008220
	b _08001C82
_08001CDC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8001CE4
sub_8001CE4: @ 0x08001CE4
	push {r4, r5, lr}
	bl sub_8002E98
	ldr r2, _08001D14
	ldr r1, [r2]
	movs r0, #0
	str r0, [r1]
	adds r5, r2, #0
	movs r4, #1
_08001CF6:
	bl sub_80043D0
	ldr r1, [r5]
	ldr r0, [r1]
	cmp r0, #1
	beq _08001D1C
	cmp r0, #1
	blo _08001D18
	cmp r0, #2
	beq _08001D22
	cmp r0, #5
	beq _08001D28
	movs r0, #0
	str r0, [r1]
	b _08001D30
	.align 2, 0
_08001D14: .4byte 0x08DF7594
_08001D18:
	str r4, [r1]
	b _08001D30
_08001D1C:
	bl sub_80029D4
	b _08001D30
_08001D22:
	movs r0, #5
	str r0, [r1]
	b _08001D30
_08001D28:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	strb r4, [r0]
_08001D30:
	ldr r1, [r5]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001D50
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8008220
	b _08001CF6
_08001D50:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8001D58
sub_8001D58: @ 0x08001D58
	push {r4, r5, lr}
	movs r0, #0
	bl sub_8034F60
	bl sub_8002E98
	ldr r2, _08001D90
	ldr r1, [r2]
	movs r0, #0
	str r0, [r1]
	adds r5, r2, #0
	movs r4, #1
_08001D70:
	bl sub_80043D0
	ldr r1, [r5]
	ldr r0, [r1]
	cmp r0, #1
	beq _08001D98
	cmp r0, #1
	blo _08001D94
	cmp r0, #2
	beq _08001D9E
	cmp r0, #5
	beq _08001DA4
	movs r0, #0
	str r0, [r1]
	b _08001DAC
	.align 2, 0
_08001D90: .4byte 0x08DF7594
_08001D94:
	str r4, [r1]
	b _08001DAC
_08001D98:
	bl sub_8002D10
	b _08001DAC
_08001D9E:
	movs r0, #5
	str r0, [r1]
	b _08001DAC
_08001DA4:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	strb r4, [r0]
_08001DAC:
	ldr r1, [r5]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001DCC
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8008220
	b _08001D70
_08001DCC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8001DD4
sub_8001DD4: @ 0x08001DD4
	push {lr}
	bl sub_8002E98
	ldr r0, _08001DFC
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1]
_08001DE2:
	bl sub_80043D0
	ldr r0, _08001DFC
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #5
	bhi _08001E5C
	lsls r0, r0, #2
	ldr r1, _08001E00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08001DFC: .4byte 0x08DF7594
_08001E00: .4byte 0x08001E04
_08001E04: @ jump table
	.4byte _08001E1C @ case 0
	.4byte _08001E28 @ case 1
	.4byte _08001E2E @ case 2
	.4byte _08001E34 @ case 3
	.4byte _08001E3A @ case 4
	.4byte _08001E48 @ case 5
_08001E1C:
	ldr r0, _08001E24
	ldr r1, [r0]
	movs r0, #1
	b _08001E5E
	.align 2, 0
_08001E24: .4byte 0x08DF7594
_08001E28:
	bl sub_8001E8C
	b _08001E60
_08001E2E:
	bl sub_80020D8
	b _08001E60
_08001E34:
	bl sub_80029D4
	b _08001E60
_08001E3A:
	ldr r0, _08001E44
	ldr r1, [r0]
	movs r0, #5
	b _08001E5E
	.align 2, 0
_08001E44: .4byte 0x08DF7594
_08001E48:
	ldr r0, _08001E58
	ldr r0, [r0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b _08001E60
	.align 2, 0
_08001E58: .4byte 0x08DF7594
_08001E5C:
	movs r0, #0
_08001E5E:
	str r0, [r1]
_08001E60:
	ldr r0, _08001E84
	ldr r1, [r0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001E88
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8008220
	b _08001DE2
	.align 2, 0
_08001E84: .4byte 0x08DF7594
_08001E88:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8001E8C
sub_8001E8C: @ 0x08001E8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r7, #2
	movs r6, #1
	mov r8, r6
	ldr r1, _08001EB0
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	adds r5, r1, #0
	cmp r0, #8
	bls _08001EA6
	b _080020CA
_08001EA6:
	lsls r0, r0, #2
	ldr r1, _08001EB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08001EB0: .4byte 0x08DF7594
_08001EB4: .4byte 0x08001EB8
_08001EB8: @ jump table
	.4byte _08001EDC @ case 0
	.4byte _08001F2C @ case 1
	.4byte _08001F88 @ case 2
	.4byte _08001F9C @ case 3
	.4byte _08001FD8 @ case 4
	.4byte _08001FF6 @ case 5
	.4byte _08002050 @ case 6
	.4byte _0800207C @ case 7
	.4byte _0800209A @ case 8
_08001EDC:
	movs r0, #0xb1
	lsls r0, r0, #1
	bl sub_8034F60
	bl sub_8002E98
	ldr r4, _08001F28
	ldr r0, [r4]
	movs r2, #0xab
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r5, #0
	movs r0, #0x80
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	strb r5, [r0]
	bl sub_8003B78
	bl sub_8004D7C
	bl sub_80045D4
	bl sub_80454C8
	bl sub_80454E0
	bl sub_80454F8
	ldr r1, [r4]
	strh r5, [r1, #0xa]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	b _080020CA
	.align 2, 0
_08001F28: .4byte 0x08DF7594
_08001F2C:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	ldr r6, _08001F7C
	ldrh r0, [r1, #0xa]
	adds r1, r7, #0
	bl sub_805AF28
	strh r0, [r6]
	bl sub_804549C
	ldr r4, [r5]
	ldrh r0, [r4, #0xa]
	adds r1, r7, #0
	bl sub_805AF28
	cmp r0, #0xf
	bgt _08001F54
	b _080020CA
_08001F54:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	ldr r1, _08001F80
	ldr r2, _08001F84
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	strh r0, [r6]
	bl sub_804549C
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xb0
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	b _080020CA
	.align 2, 0
_08001F7C: .4byte 0x02024238
_08001F80: .4byte 0x02024228
_08001F84: .4byte 0x00003F54
_08001F88:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _08001F9A
	b _080020CA
_08001F9A:
	b _08001FE8
_08001F9C:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	ldr r4, _08001FD4
	ldrh r0, [r1, #0xa]
	adds r1, r6, #0
	bl sub_805AF28
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	bl sub_804549C
	ldr r4, [r5]
	ldrh r0, [r4, #0xa]
	adds r1, r6, #0
	bl sub_805AF28
	cmp r0, #0xf
	bgt _08001FCC
	b _080020CA
_08001FCC:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	b _080020CA
	.align 2, 0
_08001FD4: .4byte 0x02024238
_08001FD8:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _080020CA
_08001FE8:
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0xa]
	b _080020CA
_08001FF6:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	ldr r6, _08002048
	ldrh r0, [r1, #0xa]
	mov r1, r8
	bl sub_805AF28
	movs r1, #0x10
	subs r0, r1, r0
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r6]
	bl sub_804549C
	ldr r4, [r5]
	ldrh r0, [r4, #0xa]
	mov r1, r8
	bl sub_805AF28
	cmp r0, #0xf
	ble _080020CA
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0xa]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xd0
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0800204C
	adds r0, r1, #0
	strh r0, [r6]
	bl sub_804549C
	b _080020CA
	.align 2, 0
_08002048: .4byte 0x02024238
_0800204C: .4byte 0x00001010
_08002050:
	ldr r0, [r5]
	movs r4, #0xab
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	bl sub_80045D4
	bl sub_80454E0
	ldr r1, [r5]
	adds r4, r1, r4
	ldrb r2, [r4]
	cmp r2, #0
	bne _080020CA
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r0, [r5]
	strh r2, [r0, #0xa]
	b _080020CA
_0800207C:
	ldr r2, [r5]
	ldrh r0, [r2, #0xa]
	cmp r0, #0xa
	bls _08002090
	ldrb r0, [r2, #8]
	adds r0, #1
	movs r1, #0
	strb r0, [r2, #8]
	ldr r0, [r5]
	strh r1, [r0, #0xa]
_08002090:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	b _080020CA
_0800209A:
	ldr r1, [r5]
	movs r4, #0xac
	lsls r4, r4, #1
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #2
	movs r6, #0
	strb r0, [r1]
	bl sub_8004730
	bl sub_80454E0
	ldr r1, [r5]
	adds r4, r1, r4
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080020CA
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	strb r6, [r1, #8]
	ldr r0, [r5]
	strh r6, [r0, #0xa]
_080020CA:
	bl sub_800373C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80020D8
sub_80020D8: @ 0x080020D8
	push {r4, r5, r6, r7, lr}
	ldr r1, _080020F4
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	adds r6, r1, #0
	cmp r0, #7
	bls _080020E8
	b _080027CC
_080020E8:
	lsls r0, r0, #2
	ldr r1, _080020F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080020F4: .4byte 0x08DF7594
_080020F8: .4byte 0x080020FC
_080020FC: @ jump table
	.4byte _0800211C @ case 0
	.4byte _08002134 @ case 1
	.4byte _080021C8 @ case 2
	.4byte _08002388 @ case 3
	.4byte _080023FC @ case 4
	.4byte _08002518 @ case 5
	.4byte _08002640 @ case 6
	.4byte _08002760 @ case 7
_0800211C:
	ldr r0, _0800212C
	bl sub_8034F60
	bl sub_8003020
	ldr r0, _08002130
	ldr r1, [r0]
	b _0800274A
	.align 2, 0
_0800212C: .4byte 0x00000163
_08002130: .4byte 0x08DF7594
_08002134:
	ldr r4, _080021B0
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	ldr r2, _080021B4
	ldrh r1, [r1, #0xa]
	lsrs r1, r1, #1
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2]
	bl sub_804549C
	ldr r1, _080021B8
	ldrh r0, [r1]
	subs r0, #0x14
	strh r0, [r1]
	bl sub_8045434
	bl sub_8003D10
	bl sub_80454C8
	ldr r0, [r4]
	ldrh r0, [r0, #0xa]
	lsrs r0, r0, #1
	cmp r0, #0xf
	bhi _0800216E
	b _080027CC
_0800216E:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xf8
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080021BC
	movs r3, #0xfd
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _080021C0
	ldr r2, _080021C4
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804549C
	movs r3, #0
	movs r2, #1
_08002194:
	ldr r0, [r4]
	lsls r1, r3, #1
	adds r0, #0xc
	adds r0, r0, r1
	strh r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _08002194
	ldr r0, _080021B0
	ldr r1, [r0]
	b _0800274A
	.align 2, 0
_080021B0: .4byte 0x08DF7594
_080021B4: .4byte 0x02024230
_080021B8: .4byte 0x02024218
_080021BC: .4byte 0x02024228
_080021C0: .4byte 0x02024238
_080021C4: .4byte 0x00000808
_080021C8:
	ldr r3, [r6]
	movs r0, #0xc5
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0x30
	bls _080021F8
	ldr r1, _080021F0
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	ldrb r0, [r2]
	subs r0, #4
	strb r0, [r2]
	ldr r0, [r6]
	ldr r2, _080021F4
	adds r1, r0, r2
	ldrb r0, [r1]
	subs r0, #4
	b _0800232C
	.align 2, 0
_080021F0: .4byte 0x0202422C
_080021F4: .4byte 0x0000018B
_080021F8:
	cmp r0, #0x18
	bls _08002238
	ldr r1, _0800222C
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	ldrb r0, [r2]
	subs r0, #2
	strb r0, [r2]
	ldr r0, [r6]
	ldr r3, _08002230
	adds r1, r0, r3
	ldrb r0, [r1]
	subs r0, #2
	strb r0, [r1]
	ldr r1, _08002234
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	ldr r1, [r6]
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	subs r0, #4
	b _0800232C
	.align 2, 0
_0800222C: .4byte 0x0202422C
_08002230: .4byte 0x0000018B
_08002234: .4byte 0x0202420C
_08002238:
	cmp r0, #0xc
	bls _08002278
	ldr r1, _0800226C
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r0, [r6]
	ldr r2, _08002270
	adds r1, r0, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r1, _08002274
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	ldr r1, [r6]
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r1, r1, r3
	ldrb r0, [r1]
	subs r0, #2
	b _0800232C
	.align 2, 0
_0800226C: .4byte 0x0202422C
_08002270: .4byte 0x0000018B
_08002274: .4byte 0x0202420C
_08002278:
	cmp r0, #6
	bls _080022C0
	ldrh r0, [r3, #0xa]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080022A0
	ldr r1, _080022B4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r0, [r6]
	ldr r2, _080022B8
	adds r1, r0, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_080022A0:
	ldr r1, _080022BC
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r1, [r6]
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r1, r1, r3
	b _08002328
	.align 2, 0
_080022B4: .4byte 0x0202422C
_080022B8: .4byte 0x0000018B
_080022BC: .4byte 0x0202420C
_080022C0:
	cmp r0, #0
	beq _08002310
	ldrh r0, [r3, #0xa]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080022E8
	ldr r1, _08002304
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r0, [r6]
	ldr r2, _08002308
	adds r1, r0, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_080022E8:
	ldr r2, [r6]
	ldrh r0, [r2, #0xa]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800232E
	ldr r1, _0800230C
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r1, r2, r3
	b _08002328
	.align 2, 0
_08002304: .4byte 0x0202422C
_08002308: .4byte 0x0000018B
_0800230C: .4byte 0x0202420C
_08002310:
	ldrh r0, [r3, #0xa]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0800232E
	ldr r1, _08002378
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r1, r3, r0
_08002328:
	ldrb r0, [r1]
	subs r0, #1
_0800232C:
	strb r0, [r1]
_0800232E:
	ldr r5, _0800237C
	ldr r1, _08002380
	adds r4, r1, #0
	ldrh r2, [r5]
	adds r4, r4, r2
	ldr r6, _08002384
	ldr r0, [r6]
	ldrh r0, [r0, #0xa]
	movs r1, #0x1e
	bl sub_805B51C
	adds r4, r4, r0
	strh r4, [r5]
	bl sub_8045434
	bl sub_8003D10
	bl sub_80454C8
	ldr r1, [r6]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r2, [r0]
	cmp r2, #0
	beq _0800236A
	b _080027CC
_0800236A:
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r0, [r6]
	strh r2, [r0, #0xa]
	b _080027CC
	.align 2, 0
_08002378: .4byte 0x0202420C
_0800237C: .4byte 0x02024218
_08002380: .4byte 0x0000FFEC
_08002384: .4byte 0x08DF7594
_08002388:
	ldr r5, _080023B0
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r2, r0, #1
	movs r4, #0
	strh r2, [r1, #0xa]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bhi _080023C0
	ldr r0, _080023B4
	ldr r3, _080023B8
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, _080023BC
	strh r2, [r0]
	bl sub_804549C
	b _080023E6
	.align 2, 0
_080023B0: .4byte 0x08DF7594
_080023B4: .4byte 0x02024228
_080023B8: .4byte 0x00003FC8
_080023BC: .4byte 0x02024230
_080023C0:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xd8
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080023F0
	ldr r3, _080023F4
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080023F8
	strh r4, [r0]
	bl sub_804549C
	ldr r1, [r5]
	strh r4, [r1, #0xa]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
_080023E6:
	bl sub_8003D10
	bl sub_80454C8
	b _080027CC
	.align 2, 0
_080023F0: .4byte 0x02024228
_080023F4: .4byte 0x00003FBF
_080023F8: .4byte 0x02024230
_080023FC:
	adds r4, r6, #0
	ldr r1, [r4]
	ldrh r2, [r1, #0xa]
	adds r0, r2, #0
	cmp r0, #0x10
	bhi _08002428
	ldr r1, _0800241C
	ldr r3, _08002420
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08002424
	strh r2, [r0]
	bl sub_804549C
	ldr r1, [r4]
	b _080024CE
	.align 2, 0
_0800241C: .4byte 0x02024228
_08002420: .4byte 0x00003FBF
_08002424: .4byte 0x02024230
_08002428:
	cmp r0, #0x11
	bne _080024B4
	movs r3, #0
	ldr r7, _080024AC
_08002430:
	adds r0, r3, #0
	adds r0, #0x30
	lsls r0, r0, #1
	adds r5, r0, r7
	ldr r4, [r6]
	adds r0, r4, #0
	adds r0, #0x36
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x4d
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0x96
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x97
	muls r0, r1, r0
	adds r2, r2, r0
	adds r0, r4, #0
	adds r0, #0xf6
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r0, r2, #0
	cmp r2, #0
	bge _08002474
	adds r0, #0xff
_08002474:
	asrs r0, r0, #8
	lsls r1, r0, #5
	orrs r1, r0
	lsls r0, r0, #0xa
	orrs r1, r0
	strh r1, [r5]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x5f
	bls _08002430
	movs r1, #0xf3
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r6]
	ldr r2, _080024B0
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, [r6]
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r0, r0, r3
	strb r1, [r0]
	bl sub_80454E0
	b _080024CC
	.align 2, 0
_080024AC: .4byte 0x02000000
_080024B0: .4byte 0x000001E7
_080024B4:
	cmp r0, #0x22
	bhi _080024E4
	ldr r1, _080024D8
	ldr r3, _080024DC
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _080024E0
	movs r0, #0x22
	subs r0, r0, r2
	strh r0, [r1]
	bl sub_804549C
_080024CC:
	ldr r1, [r6]
_080024CE:
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	b _0800261A
	.align 2, 0
_080024D8: .4byte 0x02024228
_080024DC: .4byte 0x00003FBF
_080024E0: .4byte 0x02024230
_080024E4:
	movs r0, #0
	strh r0, [r1, #0xa]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, _08002510
	movs r2, #0xfd
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08002514
	movs r0, #0x10
	strh r0, [r1]
	bl sub_804549C
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r3, #0xd8
	lsls r3, r3, #6
	adds r0, r3, #0
	b _08002618
	.align 2, 0
_08002510: .4byte 0x02024228
_08002514: .4byte 0x02024230
_08002518:
	ldr r4, _080025BC
	ldr r2, [r4]
	ldrh r0, [r2, #0xa]
	adds r0, #1
	strh r0, [r2, #0xa]
	movs r0, #0xf5
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	movs r3, #0xf9
	lsls r3, r3, #1
	adds r1, r2, r3
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	movs r0, #0xf6
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	adds r3, #2
	adds r1, r2, r3
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	movs r0, #0xf7
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	adds r3, #2
	adds r1, r2, r3
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	movs r0, #0xad
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	subs r3, #0x9a
	adds r1, r2, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r5, [r4]
	ldrh r0, [r5, #0xa]
	movs r1, #5
	bl sub_805B51C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bhi _080025CC
	ldr r1, _080025C0
	ldr r2, _080025C4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _080025C8
	ldrh r0, [r5, #0xa]
	movs r1, #5
	bl sub_805B51C
	movs r1, #0x10
	subs r1, r1, r0
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r4]
	bl sub_804549C
	b _0800261A
	.align 2, 0
_080025BC: .4byte 0x08DF7594
_080025C0: .4byte 0x02024228
_080025C4: .4byte 0x00003F50
_080025C8: .4byte 0x02024238
_080025CC:
	movs r3, #0xf3
	lsls r3, r3, #1
	adds r0, r5, r3
	movs r1, #3
	strb r1, [r0]
	ldr r0, [r4]
	ldr r2, _08002628
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, [r4]
	adds r3, #2
	adds r0, r0, r3
	strb r1, [r0]
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, [r4]
	movs r0, #0
	strh r0, [r1, #0xa]
	ldr r1, _0800262C
	ldr r2, _08002630
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08002634
	ldr r3, _08002638
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _0800263C
	movs r0, #0x10
	strh r0, [r1]
	bl sub_804549C
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xb8
	lsls r2, r2, #6
	adds r0, r2, #0
_08002618:
	strh r0, [r1]
_0800261A:
	bl sub_8003D10
	bl sub_80043D0
	bl sub_80454C8
	b _080027CC
	.align 2, 0
_08002628: .4byte 0x000001E7
_0800262C: .4byte 0x02024228
_08002630: .4byte 0x00003FC8
_08002634: .4byte 0x02024238
_08002638: .4byte 0x00000808
_0800263C: .4byte 0x02024230
_08002640:
	ldr r6, _08002690
	ldr r0, [r6]
	ldrh r2, [r0, #0xa]
	cmp r2, #0x10
	bhi _0800265E
	ldr r1, _08002694
	ldr r3, _08002698
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _0800269C
	movs r0, #0x10
	subs r0, r0, r2
	strh r0, [r1]
	bl sub_804549C
_0800265E:
	ldr r5, _080026A0
	ldrh r4, [r5]
	adds r4, #1
	ldr r6, [r6]
	ldrh r0, [r6, #0xa]
	movs r1, #0xa
	bl sub_805B51C
	adds r4, r4, r0
	strh r4, [r5]
	ldr r3, _080026A4
	ldrh r1, [r3]
	subs r2, r1, #1
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf9
	bls _080026A8
	ldrh r0, [r6, #0xa]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08002720
	strh r2, [r3]
	b _08002720
	.align 2, 0
_08002690: .4byte 0x08DF7594
_08002694: .4byte 0x02024228
_08002698: .4byte 0x00003FC8
_0800269C: .4byte 0x02024230
_080026A0: .4byte 0x02024218
_080026A4: .4byte 0x0202422C
_080026A8:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf4
	bls _080026D4
	ldrh r0, [r6, #0xa]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080026BC
	strh r2, [r3]
_080026BC:
	ldrh r0, [r6, #0xa]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08002720
	ldr r1, _080026D0
	ldrh r0, [r1]
	subs r0, #1
	b _0800271E
	.align 2, 0
_080026D0: .4byte 0x0202420C
_080026D4:
	cmp r0, #0xe8
	bls _080026F0
	strh r2, [r3]
	ldrh r0, [r6, #0xa]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08002720
	ldr r1, _080026EC
	ldrh r0, [r1]
	subs r0, #1
	b _0800271E
	.align 2, 0
_080026EC: .4byte 0x0202420C
_080026F0:
	cmp r0, #0xd0
	bls _08002704
	subs r0, r1, #2
	strh r0, [r3]
	ldr r1, _08002700
	ldrh r0, [r1]
	subs r0, #1
	b _0800271E
	.align 2, 0
_08002700: .4byte 0x0202420C
_08002704:
	cmp r0, #0xa0
	bls _08002718
	subs r0, r1, #4
	strh r0, [r3]
	ldr r1, _08002714
	ldrh r0, [r1]
	subs r0, #2
	b _0800271E
	.align 2, 0
_08002714: .4byte 0x0202420C
_08002718:
	ldr r1, _08002758
	ldrh r0, [r1]
	subs r0, #4
_0800271E:
	strh r0, [r1]
_08002720:
	bl sub_8045434
	bl sub_8003D10
	bl sub_80043D0
	bl sub_80454C8
	ldr r0, _0800275C
	ldr r1, [r0]
	ldrh r0, [r1, #0xa]
	adds r2, r0, #1
	strh r2, [r1, #0xa]
	ldr r0, _08002758
	ldrh r0, [r0]
	cmp r0, #0xa0
	bhi _080027CC
	movs r3, #0xd5
	lsls r3, r3, #1
	adds r0, r1, r3
	strh r2, [r0]
_0800274A:
	movs r0, #0
	strh r0, [r1, #0xa]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	b _080027CC
	.align 2, 0
_08002758: .4byte 0x0202420C
_0800275C: .4byte 0x08DF7594
_08002760:
	ldr r6, _080027A8
	ldr r0, [r6]
	movs r2, #0xd5
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r5, _080027AC
	ldrh r4, [r5]
	adds r4, #1
	ldrh r0, [r1]
	movs r1, #0xa
	bl sub_805B51C
	adds r4, r4, r0
	strh r4, [r5]
	bl sub_8045434
	ldr r1, [r6]
	ldrh r2, [r1, #0xa]
	cmp r2, #0x10
	bhi _080027BC
	ldr r1, _080027B0
	ldr r3, _080027B4
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080027B8
	strh r2, [r0]
	bl sub_804549C
	ldr r1, [r6]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	b _080027CA
	.align 2, 0
_080027A8: .4byte 0x08DF7594
_080027AC: .4byte 0x02024218
_080027B0: .4byte 0x02024228
_080027B4: .4byte 0x00003FFF
_080027B8: .4byte 0x02024230
_080027BC:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #0
	strb r0, [r1, #8]
	ldr r1, [r6]
	movs r0, #0
_080027CA:
	strh r0, [r1, #0xa]
_080027CC:
	ldr r0, _080027EC
	ldr r2, [r0]
	movs r0, #0xd3
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0x18
	strh r0, [r1]
	movs r3, #0xd4
	lsls r3, r3, #1
	adds r1, r2, r3
	ldrb r0, [r1]
	adds r0, #0xa
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080027EC: .4byte 0x08DF7594

	THUMB_FUNC_START sub_80027F0
sub_80027F0: @ 0x080027F0
	push {r4, r5, r6, lr}
	movs r6, #1
	ldr r1, _0800280C
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	adds r5, r1, #0
	cmp r0, #6
	bls _08002802
	b _080029C8
_08002802:
	lsls r0, r0, #2
	ldr r1, _08002810
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800280C: .4byte 0x08DF7594
_08002810: .4byte 0x08002814
_08002814: @ jump table
	.4byte _08002830 @ case 0
	.4byte _08002894 @ case 1
	.4byte _080028D0 @ case 2
	.4byte _080028FA @ case 3
	.4byte _08002926 @ case 4
	.4byte _08002962 @ case 5
	.4byte _08002998 @ case 6
_08002830:
	ldr r0, _08002888
	bl sub_8034F60
	bl sub_8003268
	ldr r4, _0800288C
	ldr r0, [r4]
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r5, #0
	movs r1, #0x80
	strb r1, [r0]
	ldr r0, [r4]
	ldr r2, _08002890
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, [r4]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r0, r3
	strb r5, [r0]
	bl sub_8003C10
	bl sub_8004DE0
	bl sub_80045D4
	bl sub_8004678
	bl sub_80454C8
	bl sub_80454E0
	bl sub_80454F8
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r0, [r4]
	strh r5, [r0, #0xa]
	b _080029C8
	.align 2, 0
_08002888: .4byte 0x00000165
_0800288C: .4byte 0x08DF7594
_08002890: .4byte 0x00000157
_08002894:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	ldr r4, _080028CC
	ldrh r0, [r1, #0xa]
	adds r1, r6, #0
	bl sub_805AF28
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	bl sub_804549C
	ldr r4, [r5]
	ldrh r0, [r4, #0xa]
	adds r1, r6, #0
	bl sub_805AF28
	cmp r0, #0xf
	bgt _080028C4
	b _080029C8
_080028C4:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	b _0800295A
	.align 2, 0
_080028CC: .4byte 0x02024238
_080028D0:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _080029C8
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0xa]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r3, #0xd0
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	b _080029C8
_080028FA:
	ldr r0, [r5]
	movs r4, #0xab
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	bl sub_80045D4
	bl sub_80454E0
	ldr r1, [r5]
	adds r4, r1, r4
	ldrb r2, [r4]
	cmp r2, #0
	bne _080029C8
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r0, [r5]
	strh r2, [r0, #0xa]
	b _080029C8
_08002926:
	ldr r1, [r5]
	movs r4, #0xab
	lsls r4, r4, #1
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #4
	strb r0, [r1]
	bl sub_80045D4
	bl sub_80454E0
	ldr r2, [r5]
	adds r4, r2, r4
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080029C8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r3, #0xb0
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	ldrb r0, [r2, #8]
	adds r0, #1
	strb r0, [r2, #8]
_0800295A:
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0xa]
	b _080029C8
_08002962:
	ldr r1, [r5]
	ldr r4, _08002994
	adds r1, r1, r4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	bl sub_8004678
	bl sub_80454E0
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r4, [r0]
	cmp r4, #0
	bne _080029C8
	movs r0, #8
	bl sub_8035038
	ldr r0, [r5]
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	ldr r0, [r5]
	strh r4, [r0, #0xa]
	b _080029C8
	.align 2, 0
_08002994: .4byte 0x00000157
_08002998:
	ldr r1, [r5]
	movs r4, #0xac
	lsls r4, r4, #1
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #2
	movs r6, #0
	strb r0, [r1]
	bl sub_8004730
	bl sub_80454E0
	ldr r1, [r5]
	adds r4, r1, r4
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080029C8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	strb r6, [r1, #8]
	ldr r0, [r5]
	strh r6, [r0, #0xa]
_080029C8:
	bl sub_80037B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80029D4
sub_80029D4: @ 0x080029D4
	push {r4, r5, lr}
	ldr r1, _080029F0
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #7
	bls _080029E4
	b _08002CFC
_080029E4:
	lsls r0, r0, #2
	ldr r1, _080029F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080029F0: .4byte 0x08DF7594
_080029F4: .4byte 0x080029F8
_080029F8: @ jump table
	.4byte _08002A18 @ case 0
	.4byte _08002A3C @ case 1
	.4byte _08002B30 @ case 2
	.4byte _08002BEC @ case 3
	.4byte _08002C34 @ case 4
	.4byte _08002C60 @ case 5
	.4byte _08002CAC @ case 6
	.4byte _08002CC8 @ case 7
_08002A18:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl sub_8034F60
	bl sub_8003444
	ldr r3, _08002A38
	ldr r1, [r3]
	ldrb r0, [r1, #8]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #8]
	ldr r0, [r3]
	strh r2, [r0, #0xa]
	b _08002CFC
	.align 2, 0
_08002A38: .4byte 0x08DF7594
_08002A3C:
	ldr r0, [r4]
	ldrh r1, [r0, #0xa]
	adds r1, #1
	strh r1, [r0, #0xa]
	ldr r2, _08002A78
	ldr r3, _08002A7C
	adds r0, r3, #0
	strh r0, [r2]
	ldr r2, _08002A80
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2]
	bl sub_804549C
	ldr r0, [r4]
	movs r1, #0xc5
	lsls r1, r1, #1
	adds r1, r1, r0
	mov ip, r1
	ldrb r3, [r1]
	adds r2, r3, #0
	cmp r2, #0x30
	bls _08002A88
	subs r0, r3, #3
	strb r0, [r1]
	ldr r1, _08002A84
	ldrh r0, [r1]
	adds r0, #3
	b _08002AE6
	.align 2, 0
_08002A78: .4byte 0x02024228
_08002A7C: .4byte 0x00003FD8
_08002A80: .4byte 0x02024230
_08002A84: .4byte 0x02024218
_08002A88:
	cmp r2, #0x18
	bls _08002AA0
	subs r0, r3, #2
	mov r2, ip
	strb r0, [r2]
	ldr r1, _08002A9C
	ldrh r0, [r1]
	adds r0, #2
	b _08002AE6
	.align 2, 0
_08002A9C: .4byte 0x02024218
_08002AA0:
	cmp r2, #0xc
	bhi _08002ADA
	cmp r2, #6
	bls _08002ABA
	ldrh r0, [r0, #0xa]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08002AE8
	subs r0, r3, #1
	mov r1, ip
	strb r0, [r1]
	b _08002AE0
_08002ABA:
	cmp r2, #3
	bls _08002AD0
	ldrh r0, [r0, #0xa]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08002AE8
	subs r0, r3, #1
	mov r2, ip
	strb r0, [r2]
	b _08002AE0
_08002AD0:
	ldrh r0, [r0, #0xa]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08002AE8
_08002ADA:
	subs r0, r3, #1
	mov r3, ip
	strb r0, [r3]
_08002AE0:
	ldr r1, _08002B18
	ldrh r0, [r1]
	adds r0, #1
_08002AE6:
	strh r0, [r1]
_08002AE8:
	bl sub_8004E54
	bl sub_80454C8
	bl sub_8045434
	ldr r0, _08002B1C
	ldr r1, [r0]
	ldrh r0, [r1, #0xa]
	cmp r0, #0x10
	beq _08002B00
	b _08002CFC
_08002B00:
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, _08002B20
	ldr r2, _08002B24
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08002B28
	ldr r3, _08002B2C
	adds r0, r3, #0
	b _08002BCE
	.align 2, 0
_08002B18: .4byte 0x02024218
_08002B1C: .4byte 0x08DF7594
_08002B20: .4byte 0x02024228
_08002B24: .4byte 0x00003F50
_08002B28: .4byte 0x02024238
_08002B2C: .4byte 0x00001010
_08002B30:
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	movs r0, #0xc5
	lsls r0, r0, #1
	adds r3, r1, r0
	ldrb r2, [r3]
	adds r0, r2, #0
	cmp r0, #0x30
	bls _08002B58
	subs r0, r2, #3
	strb r0, [r3]
	ldr r1, _08002B54
	ldrh r0, [r1]
	adds r0, #3
	b _08002B98
	.align 2, 0
_08002B54: .4byte 0x02024218
_08002B58:
	cmp r0, #0x18
	bls _08002B6C
	subs r0, r2, #2
	strb r0, [r3]
	ldr r1, _08002B68
	ldrh r0, [r1]
	adds r0, #2
	b _08002B98
	.align 2, 0
_08002B68: .4byte 0x02024218
_08002B6C:
	cmp r0, #0xc
	bhi _08002B8E
	cmp r0, #6
	bls _08002B7A
	ldrh r0, [r1, #0xa]
	movs r1, #1
	b _08002B88
_08002B7A:
	cmp r0, #3
	bls _08002B84
	ldrh r0, [r1, #0xa]
	movs r1, #3
	b _08002B88
_08002B84:
	ldrh r0, [r1, #0xa]
	movs r1, #7
_08002B88:
	ands r0, r1
	cmp r0, #0
	bne _08002B9A
_08002B8E:
	subs r0, r2, #1
	strb r0, [r3]
	ldr r1, _08002BD8
	ldrh r0, [r1]
	adds r0, #1
_08002B98:
	strh r0, [r1]
_08002B9A:
	bl sub_8004E54
	bl sub_80454C8
	bl sub_8045434
	ldr r3, _08002BDC
	ldr r1, [r3]
	movs r2, #0xc5
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r2, [r0]
	cmp r2, #0
	beq _08002BB8
	b _08002CFC
_08002BB8:
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r0, [r3]
	strh r2, [r0, #0xa]
	ldr r1, _08002BE0
	ldr r3, _08002BE4
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08002BE8
	movs r0, #0x10
_08002BCE:
	strh r0, [r1]
	bl sub_804549C
	b _08002CFC
	.align 2, 0
_08002BD8: .4byte 0x02024218
_08002BDC: .4byte 0x08DF7594
_08002BE0: .4byte 0x02024228
_08002BE4: .4byte 0x00003FBF
_08002BE8: .4byte 0x02024230
_08002BEC:
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	bl sub_8003820
	ldr r1, _08002C28
	ldr r2, _08002C2C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08002C30
	ldr r0, [r4]
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #1
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2]
	bl sub_804549C
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	cmp r0, #7
	bls _08002CFC
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, [r4]
	movs r0, #0
	strh r0, [r1, #0xa]
	b _08002C56
	.align 2, 0
_08002C28: .4byte 0x02024228
_08002C2C: .4byte 0x00003FBF
_08002C30: .4byte 0x02024230
_08002C34:
	ldr r0, [r4]
	ldrh r1, [r0, #0xa]
	adds r1, #1
	strh r1, [r0, #0xa]
	bl sub_8003820
	bl sub_8004894
	bl sub_80454E0
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	cmp r0, #9
	bls _08002CFC
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
_08002C56:
	bl sub_8004318
	bl sub_80454C8
	b _08002CFC
_08002C60:
	ldr r0, [r4]
	ldrh r1, [r0, #0xa]
	adds r1, #1
	movs r5, #0
	strh r1, [r0, #0xa]
	bl sub_8004894
	bl sub_80454E0
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	cmp r0, #0x1f
	bls _08002CFC
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r0, [r4]
	strh r5, [r0, #0xa]
	ldr r1, _08002CA0
	ldr r3, _08002CA4
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08002CA8
	strh r5, [r0]
	bl sub_804549C
	bl sub_8004260
	bl sub_80454C8
	b _08002CFC
	.align 2, 0
_08002CA0: .4byte 0x02024228
_08002CA4: .4byte 0x00003FFF
_08002CA8: .4byte 0x02024230
_08002CAC:
	ldr r2, [r4]
	ldrh r0, [r2, #0xa]
	cmp r0, #0x1d
	bls _08002CC0
	ldrb r0, [r2, #8]
	adds r0, #1
	movs r1, #0
	strb r0, [r2, #8]
	ldr r0, [r4]
	strh r1, [r0, #0xa]
_08002CC0:
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	b _08002CFA
_08002CC8:
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	ldr r2, _08002D04
	ldr r3, _08002D08
	adds r0, r3, #0
	strh r0, [r2]
	ldr r2, _08002D0C
	ldrh r0, [r1, #0xa]
	lsrs r0, r0, #2
	strh r0, [r2]
	bl sub_804549C
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	cmp r0, #0x3f
	bls _08002CFC
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #0
	strb r0, [r1, #8]
	ldr r1, [r4]
	movs r0, #0
_08002CFA:
	strh r0, [r1, #0xa]
_08002CFC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08002D04: .4byte 0x02024228
_08002D08: .4byte 0x00003FFF
_08002D0C: .4byte 0x02024230

	THUMB_FUNC_START sub_8002D10
sub_8002D10: @ 0x08002D10
	push {r4, r5, r6, lr}
	movs r6, #1
	ldr r1, _08002D2C
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	adds r5, r1, #0
	cmp r0, #5
	bls _08002D22
	b _08002E8C
_08002D22:
	lsls r0, r0, #2
	ldr r1, _08002D30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002D2C: .4byte 0x08DF7594
_08002D30: .4byte 0x08002D34
_08002D34: @ jump table
	.4byte _08002D4C @ case 0
	.4byte _08002DA4 @ case 1
	.4byte _08002DE0 @ case 2
	.4byte _08002E0A @ case 3
	.4byte _08002E40 @ case 4
	.4byte _08002E5E @ case 5
_08002D4C:
	bl sub_8003560
	ldr r4, _08002D9C
	ldr r0, [r4]
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r5, #0
	movs r1, #0x80
	strb r1, [r0]
	ldr r0, [r4]
	ldr r2, _08002DA0
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, [r4]
	adds r1, #0xd8
	adds r0, r0, r1
	strb r5, [r0]
	bl sub_8003C10
	bl sub_8004DE0
	bl sub_80045D4
	bl sub_8004678
	bl sub_80454C8
	bl sub_80454E0
	bl sub_80454F8
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r0, [r4]
	strh r5, [r0, #0xa]
	b _08002E8C
	.align 2, 0
_08002D9C: .4byte 0x08DF7594
_08002DA0: .4byte 0x00000157
_08002DA4:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	ldr r4, _08002DDC
	ldrh r0, [r1, #0xa]
	adds r1, r6, #0
	bl sub_805AF28
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	bl sub_804549C
	ldr r4, [r5]
	ldrh r0, [r4, #0xa]
	adds r1, r6, #0
	bl sub_805AF28
	cmp r0, #0xf
	ble _08002E8C
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	b _08002E56
	.align 2, 0
_08002DDC: .4byte 0x02024238
_08002DE0:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _08002E8C
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0xa]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xe0
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	b _08002E8C
_08002E0A:
	ldr r1, [r5]
	ldr r4, _08002E3C
	adds r1, r1, r4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	bl sub_8004678
	bl sub_80454E0
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r4, [r0]
	cmp r4, #0
	bne _08002E8C
	movs r0, #8
	bl sub_8035038
	ldr r0, [r5]
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	ldr r0, [r5]
	strh r4, [r0, #0xa]
	b _08002E8C
	.align 2, 0
_08002E3C: .4byte 0x00000157
_08002E40:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _08002E8C
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
_08002E56:
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0xa]
	b _08002E8C
_08002E5E:
	ldr r1, [r5]
	ldr r4, _08002E94
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #1
	movs r6, #0
	strb r0, [r1]
	bl sub_8004678
	bl sub_80454E0
	ldr r1, [r5]
	adds r4, r1, r4
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08002E8C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	strb r6, [r1, #8]
	ldr r0, [r5]
	strh r6, [r0, #0xa]
_08002E8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002E94: .4byte 0x00000157

	THUMB_FUNC_START sub_8002E98
sub_8002E98: @ 0x08002E98
	push {r4, r5, r6, lr}
	bl sub_803ED78
	bl sub_80454C8
	bl sub_80454E0
	bl sub_80454F8
	bl sub_8045718
	ldr r0, _08002FD0
	ldr r0, [r0]
	ldr r5, [r0]
	movs r1, #0
	ldr r4, _08002FD4
	movs r3, #0
	ldr r2, _08002FD8
_08002EBC:
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bls _08002EBC
	ldr r0, _08002FD0
	ldr r0, [r0]
	str r5, [r0]
	ldr r0, _08002FDC
	ldr r4, _08002FE0
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _08002FE4
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r4, r2
	bl LZ77UnCompWram
	ldr r0, _08002FE8
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r4, r2
	bl LZ77UnCompWram
	ldr r0, _08002FEC
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r1, r4, r2
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08002FF0
	ldr r5, _08002FF4
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r4, r4, r0
	ldr r3, _08002FF8
_08002F0C:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08002F0C
	movs r1, #0
	ldr r6, _08002FFC
	ldr r2, _08002FF0
	ldr r5, _08003000
	ldr r4, _08003004
	ldr r3, _08002FF8
_08002F38:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08002F38
	movs r1, #0
	ldr r2, _08002FF0
	ldr r5, _08003008
	ldr r4, _0800300C
	ldr r3, _08002FF8
_08002F62:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08002F62
	movs r1, #0
	ldr r2, _08002FF0
	ldr r5, _08003010
	ldr r4, _08003014
	ldr r3, _08002FF8
_08002F8C:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08002F8C
	adds r0, r6, #0
	bl sub_80081DC
	bl sub_80454F8
	ldr r0, _08003018
	ldr r1, _0800301C
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	bl sub_80454E0
	bl sub_8008220
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002FD0: .4byte 0x08DF7594
_08002FD4: .4byte 0x02018800
_08002FD8: .4byte 0x00004313
_08002FDC: .4byte 0x08A52618
_08002FE0: .4byte 0x02000400
_08002FE4: .4byte 0x08A536F4
_08002FE8: .4byte 0x08A5E54C
_08002FEC: .4byte 0x08A5F8E8
_08002FF0: .4byte 0x040000D4
_08002FF4: .4byte 0x08AA6958
_08002FF8: .4byte 0x8000001E
_08002FFC: .4byte 0x080048F9
_08003000: .4byte 0x08AA6C64
_08003004: .4byte 0x02007C00
_08003008: .4byte 0x08AA8DE8
_0800300C: .4byte 0x0200BC00
_08003010: .4byte 0x08AA90F4
_08003014: .4byte 0x0200FC00
_08003018: .4byte 0x08AA6358
_0800301C: .4byte 0x02000000

	THUMB_FUNC_START sub_8003020
sub_8003020: @ 0x08003020
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_803ED78
	bl sub_80454C8
	bl sub_80454E0
	bl sub_80454F8
	bl sub_8045718
	ldr r0, _08003224
	ldr r0, [r0]
	ldr r5, [r0]
	movs r1, #0
	ldr r4, _08003228
	movs r3, #0
	ldr r2, _0800322C
_0800304A:
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bls _0800304A
	ldr r2, _08003224
	ldr r4, [r2]
	str r5, [r4]
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r3, #0
	movs r1, #0
	strh r1, [r0]
	movs r5, #0xae
	lsls r5, r5, #1
	adds r0, r4, r5
	strh r1, [r0]
	adds r5, #2
	adds r0, r4, r5
	strh r1, [r0]
	movs r1, #0xc5
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0x60
	strb r1, [r0]
	ldr r0, [r2]
	ldr r4, _08003230
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r2]
	adds r5, #0x2e
	adds r0, r0, r5
	strb r1, [r0]
	ldr r0, [r2]
	movs r1, #0xd1
	lsls r1, r1, #1
	adds r0, r0, r1
	strb r3, [r0]
	ldr r0, [r2]
	adds r4, #0x18
	adds r0, r0, r4
	strb r3, [r0]
	ldr r0, [r2]
	adds r5, #0x18
	adds r0, r0, r5
	strb r3, [r0]
	ldr r0, [r2]
	movs r3, #0xab
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r0, #0x80
	strb r0, [r1]
	movs r5, #0
	mov r8, r2
	ldr r4, _08003234
	mov sb, r4
	ldr r6, _08003238
	mov ip, r8
	movs r7, #0xf5
	lsls r7, r7, #1
	subs r3, #0x56
	movs r4, #0xf9
	lsls r4, r4, #1
_080030CE:
	mov r0, ip
	ldr r1, [r0]
	lsls r2, r5, #1
	adds r0, r1, r7
	adds r0, r0, r2
	strh r3, [r0]
	adds r1, r1, r4
	adds r1, r1, r2
	strh r3, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _080030CE
	mov r1, r8
	ldr r2, [r1]
	movs r3, #0xf8
	lsls r3, r3, #1
	adds r0, r2, r3
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r1, [r0]
	mov r0, sb
	adds r1, r6, #0
	bl LZ77UnCompWram
	ldr r0, _0800323C
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r6, r5
	bl LZ77UnCompWram
	movs r5, #0
	ldr r2, _08003240
	ldr r4, _08003244
	movs r0, #0xc0
	lsls r0, r0, #7
	adds r1, r6, r0
	ldr r3, _08003248
_08003124:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r4
	str r0, [r2]
	lsls r0, r5, #6
	adds r0, r0, r1
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _08003124
	movs r5, #0
	ldr r6, _0800324C
	ldr r1, _08003240
	ldr r4, _08003250
	ldr r3, _08003254
	ldr r2, _08003248
_0800314E:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r4
	str r0, [r1]
	adds r0, r5, #2
	lsls r0, r0, #6
	adds r0, r0, r3
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xc
	bls _0800314E
	movs r5, #0
	ldr r1, _08003240
	ldr r4, _08003258
	ldr r3, _0800325C
	ldr r2, _08003248
_08003178:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r4
	str r0, [r1]
	adds r0, r5, #2
	lsls r0, r0, #6
	adds r0, r0, r3
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xc
	bls _08003178
	adds r0, r6, #0
	bl sub_80081DC
	bl sub_8003D10
	bl sub_8004D34
	bl sub_80043D0
	bl sub_80454C8
	bl sub_80454F8
	ldr r0, _08003260
	ldr r4, _08003264
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, #0
	bl CpuSet
	bl sub_80454E0
	movs r5, #0
	ldr r6, _08003224
	movs r1, #0xf8
	lsls r1, r1, #2
	mov r8, r1
	movs r7, #0xf8
	lsls r7, r7, #7
_080031D2:
	ldr r1, [r6]
	adds r1, #0x36
	adds r1, r1, r5
	adds r3, r5, #0
	adds r3, #0x30
	lsls r3, r3, #1
	adds r3, r3, r4
	ldrb r2, [r3]
	movs r0, #0x1f
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0x96
	adds r1, r1, r5
	ldrh r2, [r3]
	mov r0, r8
	ands r0, r2
	lsrs r0, r0, #5
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0xf6
	adds r1, r1, r5
	ldrh r2, [r3]
	adds r0, r7, #0
	ands r0, r2
	lsrs r0, r0, #0xa
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x5f
	bls _080031D2
	bl sub_8008220
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003224: .4byte 0x08DF7594
_08003228: .4byte 0x02018800
_0800322C: .4byte 0x00004313
_08003230: .4byte 0x0000018B
_08003234: .4byte 0x08A6F6F4
_08003238: .4byte 0x02000400
_0800323C: .4byte 0x08A71A60
_08003240: .4byte 0x040000D4
_08003244: .4byte 0x08AAB278
_08003248: .4byte 0x8000001E
_0800324C: .4byte 0x08004A19
_08003250: .4byte 0x08AAB9F8
_08003254: .4byte 0x0200A400
_08003258: .4byte 0x08AABD04
_0800325C: .4byte 0x0200AC00
_08003260: .4byte 0x08AA6358
_08003264: .4byte 0x02000000

	THUMB_FUNC_START sub_8003268
sub_8003268: @ 0x08003268
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_803ED78
	bl sub_80454C8
	bl sub_80454E0
	bl sub_80454F8
	bl sub_8045718
	ldr r0, _08003410
	ldr r0, [r0]
	ldr r5, [r0]
	movs r1, #0
	ldr r4, _08003414
	movs r3, #0
	ldr r2, _08003418
_08003294:
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bls _08003294
	ldr r2, _08003410
	ldr r4, [r2]
	str r5, [r4]
	movs r0, #0xad
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x20
	strh r0, [r1]
	movs r3, #0xae
	lsls r3, r3, #1
	adds r1, r4, r3
	movs r0, #0xa0
	strh r0, [r1]
	movs r5, #0xaf
	lsls r5, r5, #1
	adds r1, r4, r5
	movs r3, #0x60
	movs r0, #0x60
	strh r0, [r1]
	movs r1, #0xc5
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0x90
	strb r1, [r0]
	ldr r0, [r2]
	ldr r4, _0800341C
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r2]
	adds r5, #0x2e
	adds r0, r0, r5
	strb r1, [r0]
	ldr r0, [r2]
	adds r5, #0x16
	adds r4, r0, r5
	movs r0, #0x30
	strb r0, [r4]
	ldr r0, [r2]
	ldr r4, _08003420
	adds r0, r0, r4
	strb r3, [r0]
	ldr r0, [r2]
	adds r5, #2
	adds r0, r0, r5
	strb r1, [r0]
	ldr r0, [r2]
	movs r3, #0xab
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r0, #0x80
	strb r0, [r1]
	movs r5, #0
	mov r8, r2
	ldr r4, _08003424
	mov sl, r4
	ldr r0, _08003428
	mov sb, r0
	mov ip, r8
	movs r7, #0xf5
	lsls r7, r7, #1
	movs r6, #0x80
	lsls r6, r6, #2
	movs r4, #0xf9
	lsls r4, r4, #1
	subs r3, #0x56
_08003324:
	mov r0, ip
	ldr r1, [r0]
	lsls r2, r5, #1
	adds r0, r1, r7
	adds r0, r0, r2
	strh r6, [r0]
	adds r1, r1, r4
	adds r1, r1, r2
	strh r3, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08003324
	mov r1, r8
	ldr r2, [r1]
	movs r3, #0xf8
	lsls r3, r3, #1
	adds r0, r2, r3
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r1, [r0]
	mov r0, sl
	mov r1, sb
	bl LZ77UnCompWram
	movs r5, #0
	ldr r2, _0800342C
	ldr r4, _08003430
	movs r1, #0xf0
	lsls r1, r1, #7
	add r1, sb
	ldr r3, _08003434
_0800336E:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r4
	str r0, [r2]
	lsls r0, r5, #6
	adds r0, r0, r1
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _0800336E
	ldr r0, _08003438
	bl sub_80081DC
	bl sub_80454F8
	ldr r0, _0800343C
	ldr r4, _08003440
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, #0
	bl CpuSet
	movs r5, #0
	ldr r6, _08003410
	mov r8, r4
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r7, #0xf8
	lsls r7, r7, #7
_080033B4:
	ldr r2, [r6]
	adds r4, r5, #0
	adds r4, #0x20
	adds r2, #0x36
	adds r2, r2, r4
	adds r3, r5, #0
	adds r3, #0x90
	lsls r3, r3, #1
	add r3, r8
	ldrb r1, [r3]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r6]
	adds r1, #0x96
	adds r1, r1, r4
	ldrh r2, [r3]
	mov r0, sb
	ands r0, r2
	lsrs r0, r0, #5
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0xf6
	adds r1, r1, r4
	ldrh r2, [r3]
	adds r0, r7, #0
	ands r0, r2
	lsrs r0, r0, #0xa
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _080033B4
	bl sub_80454E0
	bl sub_8008220
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003410: .4byte 0x08DF7594
_08003414: .4byte 0x02018800
_08003418: .4byte 0x00004313
_0800341C: .4byte 0x0000018B
_08003420: .4byte 0x000001A3
_08003424: .4byte 0x08A950D4
_08003428: .4byte 0x02008400
_0800342C: .4byte 0x040000D4
_08003430: .4byte 0x08AADBF4
_08003434: .4byte 0x8000001E
_08003438: .4byte 0x08004B45
_0800343C: .4byte 0x08AA6358
_08003440: .4byte 0x02000000

	THUMB_FUNC_START sub_8003444
sub_8003444: @ 0x08003444
	push {r4, r5, r6, lr}
	bl sub_803ED78
	bl sub_80454C8
	bl sub_80454E0
	bl sub_80454F8
	bl sub_8045718
	ldr r0, _08003528
	ldr r0, [r0]
	ldr r5, [r0]
	movs r1, #0
	ldr r4, _0800352C
	movs r3, #0
	ldr r2, _08003530
_08003468:
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bls _08003468
	ldr r0, _08003528
	ldr r0, [r0]
	str r5, [r0]
	ldr r0, _08003534
	ldr r4, _08003538
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0800353C
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r4, r2
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08003540
	ldr r5, _08003544
	movs r0, #0xf0
	lsls r0, r0, #7
	adds r4, r4, r0
	ldr r3, _08003548
_080034A0:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xe
	bls _080034A0
	movs r1, #0
	ldr r6, _0800354C
	ldr r2, _08003540
	ldr r5, _08003550
	ldr r4, _08003554
	ldr r3, _08003548
_080034CA:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _080034CA
	adds r0, r6, #0
	bl sub_80081DC
	ldr r0, _08003528
	ldr r0, [r0]
	movs r2, #0xc5
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0x60
	strb r0, [r1]
	bl sub_8003CA8
	bl sub_8004E54
	bl sub_80454C8
	bl sub_80454F8
	ldr r0, _08003558
	ldr r1, _0800355C
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	bl sub_80454E0
	bl sub_8008220
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003528: .4byte 0x08DF7594
_0800352C: .4byte 0x02018800
_08003530: .4byte 0x00004313
_08003534: .4byte 0x08A72DFC
_08003538: .4byte 0x02000400
_0800353C: .4byte 0x08A75548
_08003540: .4byte 0x040000D4
_08003544: .4byte 0x08AAC010
_08003548: .4byte 0x8000001E
_0800354C: .4byte 0x08004C31
_08003550: .4byte 0x08AAC394
_08003554: .4byte 0x0200FC00
_08003558: .4byte 0x08AA6558
_0800355C: .4byte 0x02000000

	THUMB_FUNC_START sub_8003560
sub_8003560: @ 0x08003560
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_803ED78
	bl sub_80454C8
	bl sub_80454E0
	bl sub_80454F8
	bl sub_8045718
	ldr r0, _08003708
	ldr r0, [r0]
	ldr r5, [r0]
	movs r1, #0
	ldr r4, _0800370C
	movs r3, #0
	ldr r2, _08003710
_0800358C:
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bls _0800358C
	ldr r2, _08003708
	ldr r4, [r2]
	str r5, [r4]
	movs r0, #0xad
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x20
	strh r0, [r1]
	movs r3, #0xae
	lsls r3, r3, #1
	adds r1, r4, r3
	movs r0, #0xa0
	strh r0, [r1]
	movs r5, #0xaf
	lsls r5, r5, #1
	adds r1, r4, r5
	movs r3, #0x60
	movs r0, #0x60
	strh r0, [r1]
	movs r1, #0xc5
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0x90
	strb r1, [r0]
	ldr r0, [r2]
	ldr r4, _08003714
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r2]
	adds r5, #0x2e
	adds r0, r0, r5
	strb r1, [r0]
	ldr r0, [r2]
	adds r5, #0x16
	adds r4, r0, r5
	movs r0, #0x30
	strb r0, [r4]
	ldr r0, [r2]
	ldr r4, _08003718
	adds r0, r0, r4
	strb r3, [r0]
	ldr r0, [r2]
	adds r5, #2
	adds r0, r0, r5
	strb r1, [r0]
	ldr r0, [r2]
	movs r3, #0xab
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r0, #0x80
	strb r0, [r1]
	movs r5, #0
	mov r8, r2
	ldr r4, _0800371C
	mov sl, r4
	ldr r0, _08003720
	mov sb, r0
	mov ip, r8
	movs r7, #0xf5
	lsls r7, r7, #1
	movs r6, #0x80
	lsls r6, r6, #2
	movs r4, #0xf9
	lsls r4, r4, #1
	subs r3, #0x56
_0800361C:
	mov r0, ip
	ldr r1, [r0]
	lsls r2, r5, #1
	adds r0, r1, r7
	adds r0, r0, r2
	strh r6, [r0]
	adds r1, r1, r4
	adds r1, r1, r2
	strh r3, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0800361C
	mov r1, r8
	ldr r2, [r1]
	movs r3, #0xf8
	lsls r3, r3, #1
	adds r0, r2, r3
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r1, [r0]
	mov r0, sl
	mov r1, sb
	bl LZ77UnCompWram
	movs r5, #0
	ldr r2, _08003724
	ldr r4, _08003728
	movs r1, #0xf0
	lsls r1, r1, #7
	add r1, sb
	ldr r3, _0800372C
_08003666:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r4
	str r0, [r2]
	lsls r0, r5, #6
	adds r0, r0, r1
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _08003666
	ldr r0, _08003730
	bl sub_80081DC
	bl sub_80454F8
	ldr r0, _08003734
	ldr r4, _08003738
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, #0
	bl CpuSet
	movs r5, #0
	ldr r6, _08003708
	mov r8, r4
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r7, #0xf8
	lsls r7, r7, #7
_080036AC:
	ldr r2, [r6]
	adds r4, r5, #0
	adds r4, #0x20
	adds r2, #0x36
	adds r2, r2, r4
	adds r3, r5, #0
	adds r3, #0xa0
	lsls r3, r3, #1
	add r3, r8
	ldrb r1, [r3]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r6]
	adds r1, #0x96
	adds r1, r1, r4
	ldrh r2, [r3]
	mov r0, sb
	ands r0, r2
	lsrs r0, r0, #5
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0xf6
	adds r1, r1, r4
	ldrh r2, [r3]
	adds r0, r7, #0
	ands r0, r2
	lsrs r0, r0, #0xa
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _080036AC
	bl sub_80454E0
	bl sub_8008220
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003708: .4byte 0x08DF7594
_0800370C: .4byte 0x02018800
_08003710: .4byte 0x00004313
_08003714: .4byte 0x0000018B
_08003718: .4byte 0x000001A3
_0800371C: .4byte 0x08A950D4
_08003720: .4byte 0x02008400
_08003724: .4byte 0x040000D4
_08003728: .4byte 0x08AADBF4
_0800372C: .4byte 0x8000001E
_08003730: .4byte 0x08004B45
_08003734: .4byte 0x08AA6358
_08003738: .4byte 0x02000000

	THUMB_FUNC_START sub_800373C
sub_800373C: @ 0x0800373C
	push {r4, r5, lr}
	ldr r0, _08003754
	ldr r3, [r0]
	ldr r2, [r3, #4]
	adds r5, r0, #0
	cmp r2, #1
	beq _08003776
	cmp r2, #1
	blo _08003758
	cmp r2, #2
	beq _08003782
	b _080037AC
	.align 2, 0
_08003754: .4byte 0x08DF7594
_08003758:
	movs r4, #0
	strb r4, [r3, #0x14]
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003888
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003980
	ldr r1, [r5]
	strh r4, [r1, #0x12]
	ldr r0, [r1, #4]
	adds r0, #1
	b _080037AA
_08003776:
	ldrh r0, [r3, #0x12]
	adds r0, #1
	strh r0, [r3, #0x12]
	movs r0, #2
	str r0, [r3, #4]
	b _080037AC
_08003782:
	ldrb r0, [r3, #0x14]
	cmp r0, #0xa
	bhi _0800378C
	adds r0, #1
	b _0800378E
_0800378C:
	movs r0, #0
_0800378E:
	strb r0, [r3, #0x14]
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003888
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003980
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0x12]
	ldr r0, [r1, #4]
	subs r0, #1
_080037AA:
	str r0, [r1, #4]
_080037AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80037B4
sub_80037B4: @ 0x080037B4
	push {r4, r5, lr}
	ldr r0, _080037CC
	ldr r3, [r0]
	ldr r2, [r3, #4]
	adds r5, r0, #0
	cmp r2, #1
	beq _080037E6
	cmp r2, #1
	blo _080037D0
	cmp r2, #2
	beq _080037F2
	b _08003814
	.align 2, 0
_080037CC: .4byte 0x08DF7594
_080037D0:
	movs r4, #0
	strb r4, [r3, #0x14]
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003888
	ldr r1, [r5]
	strh r4, [r1, #0x12]
	ldr r0, [r1, #4]
	adds r0, #1
	b _08003812
_080037E6:
	ldrh r0, [r3, #0x12]
	adds r0, #1
	strh r0, [r3, #0x12]
	movs r0, #2
	str r0, [r3, #4]
	b _08003814
_080037F2:
	ldrb r0, [r3, #0x14]
	cmp r0, #0xa
	bhi _080037FC
	adds r0, #1
	b _080037FE
_080037FC:
	movs r0, #0
_080037FE:
	strb r0, [r3, #0x14]
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003888
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0x12]
	ldr r0, [r1, #4]
	subs r0, #1
_08003812:
	str r0, [r1, #4]
_08003814:
	bl sub_8008220
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8003820
sub_8003820: @ 0x08003820
	push {r4, r5, lr}
	ldr r0, _08003838
	ldr r3, [r0]
	ldr r2, [r3, #4]
	adds r5, r0, #0
	cmp r2, #1
	beq _08003852
	cmp r2, #1
	blo _0800383C
	cmp r2, #2
	beq _0800385E
	b _08003880
	.align 2, 0
_08003838: .4byte 0x08DF7594
_0800383C:
	movs r4, #0
	strb r4, [r3, #0x14]
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003A78
	ldr r1, [r5]
	strh r4, [r1, #0x12]
	ldr r0, [r1, #4]
	adds r0, #1
	b _0800387E
_08003852:
	ldrh r0, [r3, #0x12]
	adds r0, #1
	strh r0, [r3, #0x12]
	movs r0, #2
	str r0, [r3, #4]
	b _08003880
_0800385E:
	ldrb r0, [r3, #0x14]
	cmp r0, #7
	bhi _08003868
	adds r0, #1
	b _0800386A
_08003868:
	movs r0, #0
_0800386A:
	strb r0, [r3, #0x14]
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003A78
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0x12]
	ldr r0, [r1, #4]
	subs r0, #1
_0800387E:
	str r0, [r1, #4]
_08003880:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8003888
sub_8003888: @ 0x08003888
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800389C
	cmp r0, #1
	beq _0800390C
	b _0800395C
_0800389C:
	ldr r1, _080038F0
	ldr r2, _080038F4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080038F8
	adds r4, #1
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r5, _080038FC
	adds r1, r5, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08003900
	ldr r0, _08003904
	adds r4, r4, r0
	ldr r4, [r4]
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r5, r5, r0
	ldr r3, _08003908
_080038C8:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r5
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _080038C8
	bl sub_8045658
	b _0800395C
	.align 2, 0
_080038F0: .4byte 0x0400000C
_080038F4: .4byte 0x00000702
_080038F8: .4byte 0x08FA3A4C
_080038FC: .4byte 0x02004400
_08003900: .4byte 0x040000D4
_08003904: .4byte 0x08FA3ADC
_08003908: .4byte 0x8000001E
_0800390C:
	ldr r1, _08003964
	ldr r2, _08003968
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0800396C
	adds r4, #1
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r5, _08003970
	adds r1, r5, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08003974
	ldr r0, _08003978
	adds r4, r4, r0
	ldr r4, [r4]
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r5, r5, r0
	ldr r3, _0800397C
_08003938:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r5
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08003938
	bl sub_8045640
_0800395C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003964: .4byte 0x0400000C
_08003968: .4byte 0x00000F06
_0800396C: .4byte 0x08FA3A4C
_08003970: .4byte 0x02000400
_08003974: .4byte 0x040000D4
_08003978: .4byte 0x08FA3ADC
_0800397C: .4byte 0x8000001E

	THUMB_FUNC_START sub_8003980
sub_8003980: @ 0x08003980
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08003994
	cmp r0, #1
	beq _08003A04
	b _08003A54
_08003994:
	ldr r1, _080039E8
	ldr r2, _080039EC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080039F0
	adds r4, #1
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r5, _080039F4
	adds r1, r5, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _080039F8
	ldr r0, _080039FC
	adds r4, r4, r0
	ldr r4, [r4]
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r5, r5, r0
	ldr r3, _08003A00
_080039C0:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r5
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _080039C0
	bl sub_8045690
	b _08003A54
	.align 2, 0
_080039E8: .4byte 0x0400000E
_080039EC: .4byte 0x0000170B
_080039F0: .4byte 0x08FA3A80
_080039F4: .4byte 0x0200C400
_080039F8: .4byte 0x040000D4
_080039FC: .4byte 0x08FA3B10
_08003A00: .4byte 0x8000001E
_08003A04:
	ldr r1, _08003A5C
	ldr r2, _08003A60
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08003A64
	adds r4, #1
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r5, _08003A68
	adds r1, r5, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08003A6C
	ldr r0, _08003A70
	adds r4, r4, r0
	ldr r4, [r4]
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r5, r5, r0
	ldr r3, _08003A74
_08003A30:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r5
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08003A30
	bl sub_8045674
_08003A54:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003A5C: .4byte 0x0400000E
_08003A60: .4byte 0x00001F0F
_08003A64: .4byte 0x08FA3A80
_08003A68: .4byte 0x02008400
_08003A6C: .4byte 0x040000D4
_08003A70: .4byte 0x08FA3B10
_08003A74: .4byte 0x8000001E

	THUMB_FUNC_START sub_8003A78
sub_8003A78: @ 0x08003A78
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08003A8C
	cmp r0, #1
	beq _08003B00
	b _08003B54
_08003A8C:
	ldr r1, _08003AE4
	ldr r2, _08003AE8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08003AEC
	adds r4, #1
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r5, _08003AF0
	adds r1, r5, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08003AF4
	ldr r0, _08003AF8
	adds r4, r4, r0
	ldr r4, [r4]
	movs r0, #0xf0
	lsls r0, r0, #7
	adds r5, r5, r0
	ldr r3, _08003AFC
_08003AB8:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r5
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08003AB8
	bl sub_8045674
	bl sub_8045690
	b _08003B54
	.align 2, 0
_08003AE4: .4byte 0x0400000E
_08003AE8: .4byte 0x00000F83
_08003AEC: .4byte 0x08FA3AB4
_08003AF0: .4byte 0x02008400
_08003AF4: .4byte 0x040000D4
_08003AF8: .4byte 0x08FA3B44
_08003AFC: .4byte 0x8000001E
_08003B00:
	ldr r1, _08003B5C
	ldr r2, _08003B60
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08003B64
	adds r4, #1
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r5, _08003B68
	adds r1, r5, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08003B6C
	ldr r0, _08003B70
	adds r4, r4, r0
	ldr r4, [r4]
	movs r0, #0xf0
	lsls r0, r0, #7
	adds r5, r5, r0
	ldr r3, _08003B74
_08003B2C:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r5
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08003B2C
	bl sub_8045640
	bl sub_8045658
_08003B54:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003B5C: .4byte 0x0400000E
_08003B60: .4byte 0x00001F8B
_08003B64: .4byte 0x08FA3AB4
_08003B68: .4byte 0x02000400
_08003B6C: .4byte 0x040000D4
_08003B70: .4byte 0x08FA3B44
_08003B74: .4byte 0x8000001E

	THUMB_FUNC_START sub_8003B78
sub_8003B78: @ 0x08003B78
	push {r4, r5, r6, r7, lr}
	ldr r1, _08003BF8
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _08003BFC
	movs r0, #1
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r0, _08003C00
	ldr r5, _08003C04
	adds r1, r5, #0
	adds r2, r4, #0
	bl CpuSet
	movs r4, #0
	ldr r6, _08003C08
	ldr r0, _08003C0C
	adds r7, r5, r0
	movs r0, #0xf8
	lsls r0, r0, #2
	mov ip, r0
	movs r5, #0xf8
	lsls r5, r5, #7
_08003BB0:
	ldr r3, [r6]
	adds r3, #0x36
	adds r3, r3, r4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r2, r4, r2
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrb r1, [r2]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r3]
	ldr r1, [r6]
	adds r1, #0x96
	adds r1, r1, r4
	ldrh r3, [r2]
	mov r0, ip
	ands r0, r3
	lsrs r0, r0, #5
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0xf6
	adds r1, r1, r4
	ldrh r2, [r2]
	adds r0, r5, #0
	ands r0, r2
	lsrs r0, r0, #0xa
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bls _08003BB0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003BF8: .4byte 0x08A96358
_08003BFC: .4byte 0x08A98358
_08003C00: .4byte 0x08AA6758
_08003C04: .4byte 0x02000200
_08003C08: .4byte 0x08DF7594
_08003C0C: .4byte 0xFFFFFE00

	THUMB_FUNC_START sub_8003C10
sub_8003C10: @ 0x08003C10
	push {r4, r5, r6, r7, lr}
	ldr r1, _08003C90
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _08003C94
	movs r0, #1
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r0, _08003C98
	ldr r5, _08003C9C
	adds r1, r5, #0
	adds r2, r4, #0
	bl CpuSet
	movs r4, #0
	ldr r6, _08003CA0
	ldr r0, _08003CA4
	adds r7, r5, r0
	movs r0, #0xf8
	lsls r0, r0, #2
	mov ip, r0
	movs r5, #0xf8
	lsls r5, r5, #7
_08003C48:
	ldr r3, [r6]
	adds r3, #0x36
	adds r3, r3, r4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r2, r4, r2
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrb r1, [r2]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r3]
	ldr r1, [r6]
	adds r1, #0x96
	adds r1, r1, r4
	ldrh r3, [r2]
	mov r0, ip
	ands r0, r3
	lsrs r0, r0, #5
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0xf6
	adds r1, r1, r4
	ldrh r2, [r2]
	adds r0, r5, #0
	ands r0, r2
	lsrs r0, r0, #0xa
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bls _08003C48
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003C90: .4byte 0x08A4E490
_08003C94: .4byte 0x08A50490
_08003C98: .4byte 0x08AA6758
_08003C9C: .4byte 0x02000200
_08003CA0: .4byte 0x08DF7594
_08003CA4: .4byte 0xFFFFFE00

	THUMB_FUNC_START sub_8003CA8
sub_8003CA8: @ 0x08003CA8
	push {r4, r5, r6, r7, lr}
	ldr r1, _08003CFC
	movs r5, #0x80
	lsls r5, r5, #1
	movs r0, #1
	adds r2, r5, #0
	bl sub_803EEFC
	ldr r0, _08003D00
	ldr r4, _08003D04
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	movs r3, #0
	ldr r7, _08003D08
	ldr r0, _08003D0C
	adds r4, r4, r0
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r6, r4, r0
	adds r5, #0x60
_08003CD4:
	ldr r2, [r7]
	lsls r0, r3, #1
	adds r2, #0x16
	adds r2, r2, r0
	adds r1, r3, r5
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r6]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _08003CD4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003CFC: .4byte 0x08AA4358
_08003D00: .4byte 0x08AA6758
_08003D04: .4byte 0x02000200
_08003D08: .4byte 0x08DF7594
_08003D0C: .4byte 0xFFFFFE00

	THUMB_FUNC_START sub_8003D10
sub_8003D10: @ 0x08003D10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08004100
	mov sl, r0
	ldr r7, [r0]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sb, r1
	ldrh r0, [r1]
	movs r1, #0x30
	bl sub_805B940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x13
	str r0, [sp]
	ldr r5, _08004104
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	movs r4, #0xff
	lsls r4, r4, #8
	adds r1, r4, #0
	ands r1, r0
	movs r3, #0xc5
	lsls r3, r3, #1
	adds r2, r7, r3
	ldrb r2, [r2]
	adds r0, r0, r2
	subs r0, #0x10
	movs r6, #0xff
	ands r0, r6
	orrs r1, r0
	movs r0, #0xc0
	lsls r0, r0, #2
	mov r8, r0
	movs r2, #0xd5
	lsls r2, r2, #1
	adds r0, r7, r2
	mov r3, r8
	orrs r1, r3
	strh r1, [r0]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #2]
	movs r3, #0xfe
	lsls r3, r3, #8
	adds r2, r3, #0
	ands r2, r0
	adds r6, #0x5b
	ldrh r1, [r6, r7]
	mov ip, r1
	add r0, ip
	subs r0, #0x20
	adds r6, #0xa5
	ands r0, r6
	orrs r2, r0
	movs r1, #0xd6
	lsls r1, r1, #1
	adds r0, r7, r1
	strh r2, [r0]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #4]
	movs r2, #0xd7
	lsls r2, r2, #1
	adds r1, r7, r2
	strh r0, [r1]
	ldr r5, _08004108
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	adds r1, r4, #0
	ands r1, r0
	subs r6, #0x74
	ldrb r2, [r6, r7]
	mov ip, r2
	add r0, ip
	subs r0, #0x10
	movs r6, #0xff
	ands r0, r6
	orrs r1, r0
	movs r2, #0xde
	lsls r2, r2, #1
	adds r0, r7, r2
	mov r6, r8
	orrs r1, r6
	strh r1, [r0]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #2]
	adds r1, r3, #0
	ands r1, r0
	subs r2, #0x60
	ldrh r6, [r2, r7]
	mov ip, r6
	add r0, ip
	subs r0, #0x20
	adds r2, #0xa3
	ands r0, r2
	orrs r1, r0
	movs r6, #0xc0
	lsls r6, r6, #3
	adds r0, r6, #0
	subs r2, #0x41
	orrs r1, r0
	strh r1, [r2, r7]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r1, [r0, #4]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r0, r7, r5
	strh r1, [r0]
	ldr r2, _0800410C
	ldr r0, [r2]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	ands r4, r0
	movs r6, #0xc6
	lsls r6, r6, #1
	adds r1, r7, r6
	ldrb r1, [r1]
	adds r0, r0, r1
	subs r0, #0x10
	movs r1, #0xff
	ands r0, r1
	orrs r4, r0
	adds r5, #0xe
	adds r0, r7, r5
	mov r6, r8
	orrs r4, r6
	strh r4, [r0]
	ldr r0, [r2]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #2]
	ands r3, r0
	movs r4, #0xaf
	lsls r4, r4, #1
	adds r1, r7, r4
	ldrh r1, [r1]
	adds r0, r0, r1
	subs r0, #0x20
	adds r5, #0x31
	ands r0, r5
	orrs r3, r0
	movs r6, #0xc0
	lsls r6, r6, #4
	adds r0, r6, #0
	adds r4, #0x72
	adds r1, r7, r4
	orrs r3, r0
	strh r3, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #4]
	subs r5, #0x2d
	adds r1, r7, r5
	strh r0, [r1]
	mov r6, sb
	ldrh r0, [r6]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08003E64
	b _08003FC0
_08003E64:
	movs r0, #0x40
	movs r1, #0x50
	bl sub_8056258
	adds r5, r0, #0
	mov r0, sl
	ldr r4, [r0]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #0x18
	bl sub_805B940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	adds r0, r4, r0
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r3, #0xd5
	lsls r3, r3, #1
	adds r1, r4, r3
	ldrb r1, [r1]
	adds r5, r5, r1
	strb r5, [r0]
	movs r0, #0x28
	movs r1, #0x50
	bl sub_8056258
	adds r4, r0, #0
	mov r6, sl
	ldr r5, [r6]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r1, #0x18
	bl sub_805B940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	adds r0, #6
	lsls r0, r0, #1
	movs r2, #0xad
	lsls r2, r2, #1
	adds r1, r5, r2
	adds r1, r1, r0
	movs r3, #0xd6
	lsls r3, r3, #1
	adds r0, r5, r3
	ldrh r2, [r0]
	ldr r6, _08004110
	adds r0, r6, #0
	ands r0, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r4, r4, r0
	strh r4, [r1]
	movs r0, #0x40
	movs r1, #0x50
	bl sub_8056258
	adds r5, r0, #0
	mov r0, sl
	ldr r4, [r0]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #0x18
	bl sub_805B940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	adds r0, r4, r0
	movs r2, #0xcb
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r3, #0xde
	lsls r3, r3, #1
	adds r4, r4, r3
	ldrb r4, [r4]
	adds r5, r5, r4
	strb r5, [r0]
	movs r0, #0x28
	movs r1, #0x50
	bl sub_8056258
	adds r4, r0, #0
	mov r0, sl
	ldr r5, [r0]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r1, #0x18
	bl sub_805B940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	adds r0, #0xc
	lsls r0, r0, #1
	movs r3, #0xad
	lsls r3, r3, #1
	adds r2, r5, r3
	adds r2, r2, r0
	movs r1, #0xdf
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r4, r4, r0
	strh r4, [r2]
	movs r0, #0x40
	movs r1, #0x50
	bl sub_8056258
	adds r5, r0, #0
	mov r2, sl
	ldr r4, [r2]
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrh r0, [r0]
	movs r1, #0x18
	bl sub_805B940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	adds r0, r4, r0
	movs r1, #0xce
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0xe7
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrb r1, [r1]
	adds r5, r5, r1
	strb r5, [r0]
	movs r0, #0x28
	movs r1, #0x50
	bl sub_8056258
	adds r4, r0, #0
	mov r3, sl
	ldr r5, [r3]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r1, #0x18
	bl sub_805B940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	adds r0, #0x12
	lsls r0, r0, #1
	movs r2, #0xad
	lsls r2, r2, #1
	adds r1, r5, r2
	adds r1, r1, r0
	movs r3, #0xe8
	lsls r3, r3, #1
	adds r0, r5, r3
	ldrh r0, [r0]
	ands r6, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r4, r4, r6
	strh r4, [r1]
_08003FC0:
	movs r4, #0
	mov sb, r4
_08003FC4:
	ldr r5, _08004100
	ldr r0, [r5]
	movs r6, #0xf3
	lsls r6, r6, #1
	adds r0, r0, r6
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003FD8
	b _08004144
_08003FD8:
	movs r7, #0
	mov r0, sb
	lsls r0, r0, #1
	mov sl, r0
	mov r1, sb
	adds r1, #1
	str r1, [sp, #4]
_08003FE6:
	mov r4, sl
	add r4, sb
	lsls r4, r4, #1
	adds r4, r4, r7
	lsls r5, r4, #3
	ldr r2, _08004114
	adds r2, r2, r5
	mov r8, r2
	ldr r3, [sp]
	adds r0, r3, r4
	movs r1, #6
	bl sub_805B004
	ldr r6, _08004118
	ldr r1, [r6]
	lsls r0, r0, #3
	adds r1, r0, r1
	ldr r6, [r1, #4]
	ldr r1, _08004100
	ldr r2, [r1]
	adds r4, #6
	movs r3, #0xc5
	lsls r3, r3, #1
	adds r2, r2, r3
	adds r2, r2, r4
	ldrb r1, [r2]
	adds r3, r1, #1
	strb r3, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r2, [r6]
	orrs r1, r2
	mov r6, r8
	strh r1, [r6]
	ldr r6, _08004114
	adds r6, #2
	adds r3, r5, r6
	ldr r2, _08004118
	ldr r1, [r2]
	adds r0, r0, r1
	ldr r2, [r0, #4]
	ldr r1, _08004100
	ldr r0, [r1]
	lsls r4, r4, #1
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r0, [r0]
	ldr r4, _08004110
	adds r1, r4, #0
	ands r0, r1
	ldrh r1, [r2, #2]
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _0800411C
	adds r5, r5, r0
	ldrh r0, [r2, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	adds r1, r2, #0
	adds r2, r0, #0
	ands r2, r1
	adds r0, #0x10
	ldr r3, _08004120
	adds r1, r3, #0
	ands r0, r1
	orrs r2, r0
	strh r2, [r5]
	adds r0, r7, #2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _08003FE6
	movs r7, #1
_0800407C:
	mov r4, sl
	add r4, sb
	lsls r4, r4, #1
	adds r4, r4, r7
	lsls r5, r4, #3
	ldr r6, _08004114
	adds r6, r6, r5
	mov r8, r6
	ldr r1, [sp]
	adds r0, r1, r4
	movs r1, #6
	bl sub_805B004
	ldr r2, _08004124
	ldr r1, [r2]
	lsls r0, r0, #3
	adds r1, r0, r1
	ldr r6, [r1, #4]
	ldr r3, _08004100
	ldr r2, [r3]
	adds r4, #6
	movs r1, #0xc5
	lsls r1, r1, #1
	adds r2, r2, r1
	adds r2, r2, r4
	ldrb r1, [r2]
	adds r3, r1, #1
	strb r3, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r2, [r6]
	orrs r1, r2
	mov r2, r8
	strh r1, [r2]
	ldr r2, _08004114
	adds r2, #2
	adds r2, r5, r2
	ldr r3, _08004124
	ldr r1, [r3]
	adds r0, r0, r1
	ldr r3, [r0, #4]
	ldr r6, _08004100
	ldr r0, [r6]
	lsls r4, r4, #1
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r0, [r0]
	ldr r4, _08004110
	adds r1, r4, #0
	ands r0, r1
	ldrh r1, [r3, #2]
	orrs r0, r1
	strh r0, [r2]
	ldr r6, _0800411C
	adds r5, r5, r6
	ldrh r0, [r3, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	adds r1, r2, #0
	adds r2, r0, #0
	ands r2, r1
	adds r0, #0x10
	b _08004128
	.align 2, 0
_08004100: .4byte 0x08DF7594
_08004104: .4byte 0x08FA38AC
_08004108: .4byte 0x08FA38BC
_0800410C: .4byte 0x08FA38CC
_08004110: .4byte 0x000001FF
_08004114: .4byte 0x02018410
_08004118: .4byte 0x08FA3904
_0800411C: .4byte 0x02018414
_08004120: .4byte 0x000003FF
_08004124: .4byte 0x08FA3950
_08004128:
	ldr r3, _08004140
	adds r1, r3, #0
	ands r0, r1
	orrs r2, r0
	strh r2, [r5]
	adds r0, r7, #2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _0800407C
	b _0800418C
	.align 2, 0
_08004140: .4byte 0x000003FF
_08004144:
	movs r7, #0
	mov r4, sb
	lsls r4, r4, #1
	mov sl, r4
	mov r5, sb
	adds r5, #1
	str r5, [sp, #4]
	mov r0, sl
	add r0, sb
	lsls r4, r0, #1
	ldr r2, _08004254
	adds r6, r2, #4
	mov sb, r6
	movs r0, #0xa0
	mov r8, r0
	adds r1, r2, #2
	mov sl, r1
	movs r5, #0xf0
	movs r6, #0xc0
	lsls r6, r6, #4
	adds r3, r6, #0
_0800416E:
	adds r0, r4, r7
	lsls r0, r0, #3
	adds r1, r0, r2
	mov r6, r8
	strh r6, [r1]
	mov r6, sl
	adds r1, r0, r6
	strh r5, [r1]
	add r0, sb
	strh r3, [r0]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _0800416E
_0800418C:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #2
	bhi _0800419A
	b _08003FC4
_0800419A:
	movs r7, #0
	ldr r2, _08004258
	mov r8, r2
	movs r3, #0x34
	add r3, r8
	mov sb, r3
_080041A6:
	lsls r3, r7, #3
	mov r4, r8
	adds r1, r3, r4
	ldr r5, _0800425C
	ldr r4, [r5]
	lsls r2, r7, #1
	adds r2, r2, r7
	lsls r2, r2, #1
	movs r0, #0xd5
	lsls r0, r0, #1
	adds r6, r4, r0
	adds r0, r6, r2
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, r8
	adds r1, #2
	adds r1, r3, r1
	movs r0, #0xd6
	lsls r0, r0, #1
	adds r5, r4, r0
	adds r0, r5, r2
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, r8
	adds r1, #4
	adds r1, r3, r1
	movs r0, #0xd7
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r2, r4, r2
	ldrh r0, [r2]
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x18
	adds r1, r3, r1
	adds r0, r7, #3
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x1a
	adds r1, r3, r1
	adds r0, r5, r2
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x1c
	adds r1, r3, r1
	adds r2, r4, r2
	ldrh r0, [r2]
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x30
	adds r1, r3, r1
	adds r0, r7, #6
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r6, r6, r2
	ldrh r0, [r6]
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x32
	adds r1, r3, r1
	adds r5, r5, r2
	ldrh r0, [r5]
	strh r0, [r1]
	add r3, sb
	adds r4, r4, r2
	ldrh r0, [r4]
	strh r0, [r3]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _080041A6
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004254: .4byte 0x02018410
_08004258: .4byte 0x020184A0
_0800425C: .4byte 0x08DF7594

	THUMB_FUNC_START sub_8004260
sub_8004260: @ 0x08004260
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _08004304
	ldr r0, [r0]
	ldr r0, [r0, #4]
	mov sb, r0
	movs r0, #0xff
	lsls r0, r0, #8
	mov r8, r0
	ldr r2, _08004308
	adds r2, #4
	mov sl, r2
_08004280:
	lsls r4, r6, #3
	ldr r7, _08004308
	adds r3, r4, r7
	mov r0, sb
	adds r5, r4, r0
	ldrh r2, [r5]
	mov r1, r8
	ands r1, r2
	ldr r7, _0800430C
	ldr r7, [r7]
	mov ip, r7
	movs r0, #0xc5
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	orrs r1, r2
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r3]
	ldr r3, _08004308
	adds r3, #2
	adds r3, r4, r3
	ldrh r1, [r5, #2]
	mov r2, r8
	ands r2, r1
	movs r0, #0xad
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r7, _08004310
	adds r0, r7, #0
	ands r1, r0
	orrs r2, r1
	strh r2, [r3]
	add r4, sl
	ldrh r1, [r5, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r3, _08004314
	adds r0, r3, #0
	ands r1, r0
	orrs r2, r1
	strh r2, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #9
	bls _08004280
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004304: .4byte 0x08FA3A44
_08004308: .4byte 0x02018400
_0800430C: .4byte 0x08DF7594
_08004310: .4byte 0x000001FF
_08004314: .4byte 0x000003FF

	THUMB_FUNC_START sub_8004318
sub_8004318: @ 0x08004318
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _080043BC
	ldr r0, [r0]
	ldr r0, [r0, #4]
	mov sb, r0
	movs r0, #0xff
	lsls r0, r0, #8
	mov r8, r0
	ldr r2, _080043C0
	adds r2, #4
	mov sl, r2
_08004338:
	lsls r4, r6, #3
	ldr r7, _080043C0
	adds r3, r4, r7
	mov r0, sb
	adds r5, r4, r0
	ldrh r2, [r5]
	mov r1, r8
	ands r1, r2
	ldr r7, _080043C4
	ldr r7, [r7]
	mov ip, r7
	movs r0, #0xc5
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	orrs r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r3]
	ldr r3, _080043C0
	adds r3, #2
	adds r3, r4, r3
	ldrh r1, [r5, #2]
	mov r2, r8
	ands r2, r1
	movs r0, #0xad
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r7, _080043C8
	adds r0, r7, #0
	ands r1, r0
	orrs r2, r1
	strh r2, [r3]
	add r4, sl
	ldrh r1, [r5, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r3, _080043CC
	adds r0, r3, #0
	ands r1, r0
	orrs r2, r1
	strh r2, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #9
	bls _08004338
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080043BC: .4byte 0x08FA3A44
_080043C0: .4byte 0x02018400
_080043C4: .4byte 0x08DF7594
_080043C8: .4byte 0x000001FF
_080043CC: .4byte 0x000003FF

	THUMB_FUNC_START sub_80043D0
sub_80043D0: @ 0x080043D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _080045C8
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	ldr r1, _080045CC
	ldr r0, [r1]
	movs r5, #0xf5
	lsls r5, r5, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	str r0, [sp]
	ldr r2, _080045CC
	ldr r0, [r2]
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp]
	bl sub_8008144
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldrh r4, [r4]
	mov sb, r4
	mov r2, sb
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov sb, r2
	ldr r1, _080045CC
	ldr r0, [r1]
	movs r2, #0xf9
	lsls r2, r2, #1
	mov sl, r2
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_8008144
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _080045CC
	ldr r0, [r2]
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	ldr r7, _080045D0
	strh r6, [r7]
	strh r5, [r7, #8]
	strh r4, [r7, #0x10]
	strh r0, [r7, #0x18]
	ldr r2, _080045CC
	ldr r0, [r2]
	movs r4, #0xf6
	lsls r4, r4, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r2, _080045CC
	ldr r0, [r2]
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp]
	bl sub_8008144
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r2, _080045CC
	ldr r0, [r2]
	movs r1, #0xfa
	lsls r1, r1, #1
	mov sl, r1
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_8008144
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _080045CC
	ldr r0, [r1]
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	adds r1, r7, #0
	adds r1, #0x60
	strh r6, [r1]
	adds r1, #8
	strh r5, [r1]
	adds r1, #8
	strh r4, [r1]
	adds r1, #8
	strh r0, [r1]
	ldr r1, _080045CC
	ldr r0, [r1]
	movs r4, #0xf7
	lsls r4, r4, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r1, _080045CC
	ldr r0, [r1]
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp]
	bl sub_8008144
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r1, _080045CC
	ldr r0, [r1]
	movs r2, #0xfb
	lsls r2, r2, #1
	mov sl, r2
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_8008144
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _080045CC
	ldr r0, [r2]
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	adds r1, r7, #0
	adds r1, #0xc0
	strh r6, [r1]
	adds r1, #8
	strh r5, [r1]
	adds r1, #8
	strh r4, [r1]
	adds r1, #8
	strh r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080045C8: .4byte 0x08088ED4
_080045CC: .4byte 0x08DF7594
_080045D0: .4byte 0x02018406

	THUMB_FUNC_START sub_80045D4
sub_80045D4: @ 0x080045D4
	push {r4, r5, r6, r7, lr}
	ldr r1, _080045EC
	ldr r0, [r1]
	movs r3, #0xab
	lsls r3, r3, #1
	adds r2, r0, r3
	ldrb r0, [r2]
	mov ip, r1
	cmp r0, #0xbf
	bls _080045F0
	movs r0, #0
	b _080045F6
	.align 2, 0
_080045EC: .4byte 0x08DF7594
_080045F0:
	cmp r0, #0x80
	bls _080045F8
	movs r0, #0x80
_080045F6:
	strb r0, [r2]
_080045F8:
	movs r5, #0
	ldr r7, _08004674
_080045FC:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #1
	adds r6, r0, r7
	mov r0, ip
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x36
	adds r0, r0, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _08004626
	adds r0, #0x7f
_08004626:
	asrs r0, r0, #7
	subs r4, r2, r0
	adds r0, r3, #0
	adds r0, #0x96
	adds r0, r0, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _0800463E
	adds r0, #0x7f
_0800463E:
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r4
	adds r0, r3, #0
	adds r0, #0xf6
	adds r0, r0, r5
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r3, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _0800465A
	adds r0, #0x7f
_0800465A:
	asrs r0, r0, #7
	subs r0, r3, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _080045FC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004674: .4byte 0x02000000

	THUMB_FUNC_START sub_8004678
sub_8004678: @ 0x08004678
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08004694
	ldr r0, [r1]
	ldr r3, _08004698
	adds r2, r0, r3
	ldrb r0, [r2]
	mov r8, r1
	cmp r0, #0xbf
	bls _0800469C
	movs r0, #0
	b _080046A2
	.align 2, 0
_08004694: .4byte 0x08DF7594
_08004698: .4byte 0x00000157
_0800469C:
	cmp r0, #0x80
	bls _080046A4
	movs r0, #0x80
_080046A2:
	strb r0, [r2]
_080046A4:
	movs r6, #0
	ldr r0, _08004728
	mov ip, r0
_080046AA:
	adds r0, r6, #0
	adds r0, #0x90
	lsls r0, r0, #1
	mov r1, ip
	adds r7, r0, r1
	mov r0, r8
	ldr r3, [r0]
	adds r4, r6, #0
	adds r4, #0x20
	adds r0, r3, #0
	adds r0, #0x36
	adds r0, r0, r4
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r1, _0800472C
	adds r0, r3, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _080046D6
	adds r0, #0x7f
_080046D6:
	asrs r0, r0, #7
	subs r5, r2, r0
	adds r0, r3, #0
	adds r0, #0x96
	adds r0, r0, r4
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _080046EE
	adds r0, #0x7f
_080046EE:
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r5
	adds r0, r3, #0
	adds r0, #0xf6
	adds r0, r0, r4
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r3, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _0800470A
	adds r0, #0x7f
_0800470A:
	asrs r0, r0, #7
	subs r0, r3, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r7]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _080046AA
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004728: .4byte 0x02000000
_0800472C: .4byte 0x00000157

	THUMB_FUNC_START sub_8004730
sub_8004730: @ 0x08004730
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _08004750
	ldr r0, [r1]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r2, r0, r3
	ldrb r0, [r2]
	mov ip, r1
	cmp r0, #0xbf
	bls _08004754
	movs r0, #0
	b _0800475A
	.align 2, 0
_08004750: .4byte 0x08DF7594
_08004754:
	cmp r0, #0x80
	bls _0800475C
	movs r0, #0x80
_0800475A:
	strb r0, [r2]
_0800475C:
	movs r5, #0
	ldr r7, _08004890
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	mov r8, r1
_0800476C:
	lsls r0, r5, #1
	adds r6, r0, r7
	ldrh r1, [r6]
	movs r4, #0x1f
	ands r4, r1
	mov r0, sb
	ands r0, r1
	lsrs r2, r0, #5
	mov r0, r8
	ands r0, r1
	lsrs r1, r0, #0xa
	mov r3, ip
	ldr r0, [r3]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r4, r4, r0
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r4
	adds r0, r1, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r1, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _0800476C
	movs r5, #0
	mov r8, r7
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r7, #0xf8
	lsls r7, r7, #7
_080047C8:
	adds r0, r5, #0
	adds r0, #0x90
	lsls r0, r0, #1
	mov r1, r8
	adds r6, r0, r1
	ldrh r1, [r6]
	movs r4, #0x1f
	ands r4, r1
	mov r0, sb
	ands r0, r1
	lsrs r2, r0, #5
	adds r0, r7, #0
	ands r0, r1
	lsrs r1, r0, #0xa
	mov r3, ip
	ldr r0, [r3]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r4, r4, r0
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r4
	adds r0, r1, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r1, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _080047C8
	movs r5, #0
	ldr r0, _08004890
	mov r8, r0
	movs r1, #0xf8
	lsls r1, r1, #2
	mov sb, r1
	movs r7, #0xf8
	lsls r7, r7, #7
_0800482C:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #1
	mov r3, r8
	adds r6, r0, r3
	ldrh r1, [r6]
	movs r4, #0x1f
	ands r4, r1
	mov r0, sb
	ands r0, r1
	lsrs r2, r0, #5
	adds r0, r7, #0
	ands r0, r1
	lsrs r1, r0, #0xa
	mov r3, ip
	ldr r0, [r3]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r4, r4, r0
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r4
	adds r0, r1, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r1, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _0800482C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004890: .4byte 0x02000000

	THUMB_FUNC_START sub_8004894
sub_8004894: @ 0x08004894
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r6, _080048DC
	ldr r7, _080048E0
	adds r3, r6, #0
	ldr r5, _080048E4
	movs r4, #0xb7
	lsls r4, r4, #1
_080048A4:
	subs r1, r5, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	subs r0, r4, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xe
	bls _080048A4
	ldr r2, [r7]
	ldrh r3, [r2, #0xa]
	movs r0, #0x1f
	ands r0, r3
	cmp r0, #0xf
	bhi _080048E8
	movs r1, #0xf
	bics r1, r3
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x16
	adds r0, r0, r1
	ldrh r1, [r0]
	b _080048EA
	.align 2, 0
_080048DC: .4byte 0x02000000
_080048E0: .4byte 0x08DF7594
_080048E4: .4byte 0x0000016F
_080048E8:
	ldrh r1, [r2, #0x16]
_080048EA:
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80048F8
sub_80048F8: @ 0x080048F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r7, _080049D0
	ldr r0, _080049D4
	mov ip, r0
	ldr r2, _080049D8
	mov r8, r2
	ldr r3, _080049DC
	mov sb, r3
	ldr r0, _080049E0
	mov sl, r0
	ldr r3, _080049E4
	movs r6, #0
	movs r5, #0xa0
_0800491C:
	lsls r0, r4, #3
	adds r0, r0, r3
	strh r5, [r0]
	lsls r2, r4, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r3
	strh r6, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x7f
	bls _0800491C
	ldr r0, _080049E8
	movs r2, #1
	strh r2, [r0]
	subs r0, #8
	strh r2, [r0]
	ldr r1, _080049EC
	movs r0, #8
	strh r0, [r1]
	adds r1, #8
	ldr r3, _080049F0
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _080049F4
	adds r0, r3, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r3, #0xa0
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r3, _080049F8
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	ldr r0, _080049FC
	strb r2, [r0]
	movs r4, #0
	strh r4, [r7]
	mov r0, ip
	strh r4, [r0]
	mov r2, r8
	strh r4, [r2]
	mov r3, sb
	strh r4, [r3]
	mov r0, sl
	strh r4, [r0]
	ldr r2, _08004A00
	strh r4, [r2]
	ldr r3, _08004A04
	strh r4, [r3]
	ldr r0, _08004A08
	strh r4, [r0]
	bl sub_8045434
	ldr r1, _08004A0C
	ldr r2, _08004A10
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08004A14
	strh r4, [r0]
	bl sub_804549C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080049D0: .4byte 0x02024214
_080049D4: .4byte 0x02024240
_080049D8: .4byte 0x02024248
_080049DC: .4byte 0x0202422C
_080049E0: .4byte 0x0202424C
_080049E4: .4byte 0x02018400
_080049E8: .4byte 0x04000208
_080049EC: .4byte 0x04000004
_080049F0: .4byte 0x00000702
_080049F4: .4byte 0x0000170B
_080049F8: .4byte 0x00001078
_080049FC: .4byte 0x0400004A
_08004A00: .4byte 0x0202420C
_08004A04: .4byte 0x02024204
_08004A08: .4byte 0x02024218
_08004A0C: .4byte 0x02024228
_08004A10: .4byte 0x00003F48
_08004A14: .4byte 0x02024238

	THUMB_FUNC_START sub_8004A18
sub_8004A18: @ 0x08004A18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r0, _08004AFC
	mov r8, r0
	ldr r7, _08004B00
	ldr r1, _08004B04
	mov ip, r1
	ldr r2, _08004B08
	mov sb, r2
	ldr r3, _08004B0C
	mov sl, r3
	ldr r3, _08004B10
	movs r6, #0
	movs r5, #0xa0
_08004A3C:
	lsls r0, r4, #3
	adds r0, r0, r3
	strh r5, [r0]
	lsls r2, r4, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r3
	strh r6, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x7f
	bls _08004A3C
	ldr r0, _08004B14
	movs r2, #1
	strh r2, [r0]
	subs r0, #8
	strh r2, [r0]
	ldr r1, _08004B18
	movs r0, #8
	strh r0, [r1]
	adds r1, #6
	ldr r3, _08004B1C
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _08004B20
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _08004B24
	adds r0, r3, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r3, #0xb8
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r3, _08004B28
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	ldr r0, _08004B2C
	strb r2, [r0]
	movs r0, #0
	mov r1, r8
	strh r0, [r1]
	strh r0, [r7]
	mov r2, ip
	strh r0, [r2]
	movs r1, #0xa0
	mov r3, sb
	strh r1, [r3]
	mov r2, sl
	strh r0, [r2]
	ldr r3, _08004B30
	strh r1, [r3]
	ldr r1, _08004B34
	strh r0, [r1]
	ldr r2, _08004B38
	strh r0, [r2]
	bl sub_8045434
	ldr r1, _08004B3C
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _08004B40
	movs r0, #0x10
	strh r0, [r1]
	bl sub_804549C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004AFC: .4byte 0x02024214
_08004B00: .4byte 0x02024240
_08004B04: .4byte 0x02024248
_08004B08: .4byte 0x0202422C
_08004B0C: .4byte 0x0202424C
_08004B10: .4byte 0x02018400
_08004B14: .4byte 0x04000208
_08004B18: .4byte 0x04000004
_08004B1C: .4byte 0x0000140A
_08004B20: .4byte 0x0000150A
_08004B24: .4byte 0x00000C03
_08004B28: .4byte 0x00001078
_08004B2C: .4byte 0x0400004A
_08004B30: .4byte 0x0202420C
_08004B34: .4byte 0x02024204
_08004B38: .4byte 0x02024218
_08004B3C: .4byte 0x02024228
_08004B40: .4byte 0x02024230

	THUMB_FUNC_START sub_8004B44
sub_8004B44: @ 0x08004B44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r3, #0
	ldr r7, _08004BFC
	ldr r0, _08004C00
	mov ip, r0
	ldr r2, _08004C04
	mov r8, r2
	ldr r0, _08004C08
	mov sb, r0
	ldr r4, _08004C0C
	movs r6, #0
	movs r5, #0xa0
_08004B62:
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
	bls _08004B62
	ldr r0, _08004C10
	movs r2, #1
	strh r2, [r0]
	subs r0, #8
	strh r2, [r0]
	ldr r1, _08004C14
	movs r0, #8
	strh r0, [r1]
	adds r1, #0xa
	ldr r3, _08004C18
	adds r0, r3, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r3, #0x90
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r3, _08004C1C
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	ldr r0, _08004C20
	strb r2, [r0]
	movs r4, #0
	strh r4, [r7]
	mov r0, ip
	strh r4, [r0]
	mov r2, r8
	strh r4, [r2]
	mov r3, sb
	strh r4, [r3]
	bl sub_8045434
	ldr r1, _08004C24
	ldr r2, _08004C28
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08004C2C
	strh r4, [r0]
	bl sub_804549C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004BFC: .4byte 0x0202424C
_08004C00: .4byte 0x0202420C
_08004C04: .4byte 0x02024204
_08004C08: .4byte 0x02024218
_08004C0C: .4byte 0x02018400
_08004C10: .4byte 0x04000208
_08004C14: .4byte 0x04000004
_08004C18: .4byte 0x00001F0B
_08004C1C: .4byte 0x00001078
_08004C20: .4byte 0x0400004A
_08004C24: .4byte 0x02024228
_08004C28: .4byte 0x00003F4C
_08004C2C: .4byte 0x02024238

	THUMB_FUNC_START sub_8004C30
sub_8004C30: @ 0x08004C30
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r7, _08004CD0
	ldr r0, _08004CD4
	mov ip, r0
	ldr r4, _08004CD8
	movs r6, #0
	movs r5, #0xa0
_08004C40:
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
	bls _08004C40
	ldr r0, _08004CDC
	movs r2, #1
	strh r2, [r0]
	subs r0, #8
	strh r2, [r0]
	ldr r1, _08004CE0
	movs r0, #8
	strh r0, [r1]
	adds r1, #0xa
	ldr r3, _08004CE4
	adds r0, r3, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r3, #0xe0
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r3, _08004CE8
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	ldr r0, _08004CEC
	strb r2, [r0]
	movs r0, #0
	strh r0, [r7]
	movs r0, #0xa0
	mov r1, ip
	strh r0, [r1]
	bl sub_8045434
	ldr r1, _08004CF0
	ldr r2, _08004CF4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08004CF8
	movs r0, #0x10
	strh r0, [r1]
	bl sub_804549C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004CD0: .4byte 0x02024204
_08004CD4: .4byte 0x02024218
_08004CD8: .4byte 0x02018400
_08004CDC: .4byte 0x04000208
_08004CE0: .4byte 0x04000004
_08004CE4: .4byte 0x00000F83
_08004CE8: .4byte 0x00001078
_08004CEC: .4byte 0x0400004A
_08004CF0: .4byte 0x02024228
_08004CF4: .4byte 0x00003FD8
_08004CF8: .4byte 0x02024230

	THUMB_FUNC_START sub_8004CFC
sub_8004CFC: @ 0x08004CFC
	push {r4, r5, r6, lr}
	ldr r1, _08004D28
	ldr r0, [r1]
	ldr r5, [r0]
	movs r2, #0
	adds r6, r1, #0
	ldr r4, _08004D2C
	movs r1, #0
	ldr r3, _08004D30
_08004D0E:
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	bls _08004D0E
	ldr r0, [r6]
	str r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004D28: .4byte 0x08DF7594
_08004D2C: .4byte 0x02018800
_08004D30: .4byte 0x00004313

	THUMB_FUNC_START sub_8004D34
sub_8004D34: @ 0x08004D34
	push {r4, lr}
	ldr r1, _08004D68
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _08004D6C
	movs r0, #1
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _08004D70
	movs r0, #2
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r0, _08004D74
	ldr r1, _08004D78
	adds r2, r4, #0
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004D68: .4byte 0x08A9A358
_08004D6C: .4byte 0x08A9C358
_08004D70: .4byte 0x08A9E358
_08004D74: .4byte 0x08AA6758
_08004D78: .4byte 0x02000200

	THUMB_FUNC_START sub_8004D7C
sub_8004D7C: @ 0x08004D7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r4, #0
	ldr r5, _08004DD8
	ldr r0, _08004DDC
	ldr r0, [r0]
	ldr r6, [r0, #4]
	adds r0, r5, #4
	mov r8, r0
	movs r3, #0x80
	lsls r3, r3, #3
	mov ip, r3
	adds r7, r5, #2
	mov sb, r7
_08004D9C:
	lsls r2, r4, #3
	adds r1, r2, r5
	adds r3, r2, r6
	ldrh r0, [r3]
	mov r7, ip
	orrs r0, r7
	strh r0, [r1]
	mov r0, sb
	adds r1, r2, r0
	ldrh r0, [r3, #2]
	strh r0, [r1]
	add r2, r8
	ldrh r0, [r3, #4]
	movs r3, #0xc0
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _08004D9C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004DD8: .4byte 0x02018400
_08004DDC: .4byte 0x08FA389C

	THUMB_FUNC_START sub_8004DE0
sub_8004DE0: @ 0x08004DE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r5, _08004E48
	ldr r0, _08004E4C
	ldr r0, [r0]
	ldr r6, [r0, #4]
	adds r0, r5, #4
	mov r8, r0
	ldr r2, _08004E50
	mov sb, r2
	movs r7, #0x80
	lsls r7, r7, #3
	mov ip, r7
	adds r0, r5, #2
	mov sl, r0
_08004E06:
	lsls r3, r4, #3
	adds r1, r3, r5
	adds r2, r3, r6
	ldrh r0, [r2]
	mov r7, ip
	orrs r0, r7
	strh r0, [r1]
	mov r0, sl
	adds r1, r3, r0
	ldrh r0, [r2, #2]
	strh r0, [r1]
	add r3, r8
	ldrh r1, [r2, #4]
	mov r0, sb
	ands r0, r1
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x26
	bls _08004E06
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004E48: .4byte 0x02018400
_08004E4C: .4byte 0x08FA3770
_08004E50: .4byte 0x000003FF

	THUMB_FUNC_START sub_8004E54
sub_8004E54: @ 0x08004E54
	push {lr}
	bl sub_8004260
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8004E60
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
	bl sub_8034F60
	ldr r6, _08004E98
	ldr r0, _08004E9C
	mov r8, r0
	b _08004F4A
	.align 2, 0
_08004E90: .4byte 0x02020DC8
_08004E94: .4byte 0x02020DD0
_08004E98: .4byte 0x08DF7A18
_08004E9C: .4byte 0x08DF79F8
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
_08004ED0: .4byte 0x08DF7A28
_08004ED4:
	movs r4, #0xc
_08004ED6:
	movs r0, #0x36
	bl sub_8034F60
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
	bl sub_8034F60
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
	bl sub_80454C8
	bl sub_80454E0
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
	bl sub_8034F60
	bl sub_80056F8
	bl sub_803ED78
	bl sub_80454C8
	bl sub_80454E0
	bl sub_80454F8
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
_08004F88: .4byte 0x02020DFC
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
	bl sub_80454C8
	bl sub_80454E0
	bl sub_80454F8
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
	bl sub_80454C8
	bl sub_80454F8
	bl sub_80454E0
	bl sub_8008220
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005168: .4byte 0x02018800
_0800516C: .4byte 0x00004313
_08005170: .4byte 0x08064058
_08005174: .4byte 0x02000400
_08005178: .4byte 0x040000D4
_0800517C: .4byte 0x080666F0
_08005180: .4byte 0x8000001E
_08005184: .4byte 0x08073BA0
_08005188: .4byte 0x0200A414
_0800518C: .4byte 0x08066BA0
_08005190: .4byte 0x02010400
_08005194: .4byte 0x080746F8
_08005198: .4byte 0xFFFFC020
_0800519C: .4byte 0x08075330
_080051A0: .4byte 0x00000901
_080051A4: .4byte 0xFFFFC520
_080051A8: .4byte 0x08075398
_080051AC: .4byte 0xFFFFCA20
_080051B0: .4byte 0x080753BC
_080051B4: .4byte 0xFFFFCF20
_080051B8: .4byte 0x080753E8
_080051BC: .4byte 0xFFFFD420
_080051C0: .4byte 0x0807540C
_080051C4: .4byte 0xFFFFD920
_080051C8: .4byte 0x08075428
_080051CC: .4byte 0xFFFFDE20
_080051D0: .4byte 0x08075440
_080051D4: .4byte 0xFFFFE320
_080051D8: .4byte 0x0807545C
_080051DC: .4byte 0xFFFFE820
_080051E0: .4byte 0x0807547C
_080051E4: .4byte 0xFFFFED20
_080051E8: .4byte 0x080754A4
_080051EC: .4byte 0xFFFFF220
_080051F0: .4byte 0x080754C4
_080051F4: .4byte 0xFFFFF720
_080051F8: .4byte 0x080754EC
_080051FC: .4byte 0x08066570
_08005200: .4byte 0x02000000
_08005204: .4byte 0x080741B8
_08005208: .4byte 0x08072EA0
_0800520C: .4byte 0x080741D8
_08005210: .4byte 0x08074400
_08005214: .4byte 0x080055D9
_08005218: .4byte 0x08DF7A18

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
_08005260: .4byte 0x08DF7A28
_08005264: .4byte 0x08DF76F8
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
_08005344: .4byte 0x08DF7A28
_08005348: .4byte 0x08DF7940
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
_08005414: .4byte 0x08DF79F8
_08005418: .4byte 0x08DF7940
_0800541C: .4byte 0x08DF7A28
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
_080054B8: .4byte 0x08DF7940
_080054BC: .4byte 0x08DF7A28
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
_08005564: .4byte 0x08DF79B8
_08005568: .4byte 0x02010400
_0800556C: .4byte 0x08DF7978
_08005570: .4byte 0x02000200
_08005574: .4byte 0x040000D4
_08005578: .4byte 0x08073BA0
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
_080055A8: .4byte 0x02020DFC
_080055AC: .4byte 0x000003FF
_080055B0: .4byte 0x08DF7A28
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
_080055C4: .4byte 0x08DF7A28
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
	bl sub_804549C
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
	bl sub_8045434
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005678: .4byte 0x02024228
_0800567C: .4byte 0x02024238
_08005680: .4byte 0x02018400
_08005684: .4byte 0x0400000E
_08005688: .4byte 0x00001383
_0800568C: .4byte 0x04000208
_08005690: .4byte 0x04000004
_08005694: .4byte 0x00001010
_08005698: .4byte 0x02024204
_0800569C: .4byte 0x02024218
_080056A0: .4byte 0x0202424C
_080056A4: .4byte 0x0202420C
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
_080056E4: .4byte 0x08DF7A18
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
_08005738: .4byte 0x02024228
_0800573C: .4byte 0x02024230
_08005740:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	bl sub_804549C
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

	THUMB_FUNC_START sub_800576C
sub_800576C: @ 0x0800576C
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _08005798
_08005772:
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080057C8
	bl sub_801DBBC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800579C
	movs r0, #0x39
	bl sub_8034F60
	bl sub_8005C9C
	bl sub_8005BE0
	b _080057C8
	.align 2, 0
_08005798: .4byte 0x02020DFC
_0800579C:
	bl sub_801DBE4
	cmp r0, #0
	beq _080057BA
	bl sub_801DBBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080057C8
	bl sub_801DBE4
	cmp r0, #1
	bne _080057C8
	b _08005882
_080057BA:
	movs r0, #0x39
	bl sub_8034F60
	bl sub_8005C80
	bl sub_8005BE0
_080057C8:
	ldrh r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080057E2
	cmp r4, #0
	beq _080057E2
	movs r0, #0x36
	bl sub_8034F60
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080057E2:
	ldr r5, _0800580C
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080057FE
	cmp r4, #1
	bhi _08005802
	movs r0, #0x36
	bl sub_8034F60
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080057FE:
	cmp r4, #1
	beq _08005830
_08005802:
	cmp r4, #1
	bgt _08005810
	cmp r4, #0
	beq _08005816
	b _08005872
	.align 2, 0
_0800580C: .4byte 0x02020DFC
_08005810:
	cmp r4, #2
	beq _0800584A
	b _08005872
_08005816:
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08005872
	movs r0, #0x37
	bl sub_8034F60
	bl sub_80075DC
	bl sub_8005BE0
	b _08005872
_08005830:
	ldrh r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08005872
	movs r0, #0x37
	bl sub_8034F60
	bl sub_8008548
	bl sub_8005B48
	b _08005872
_0800584A:
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08005872
	bl sub_801D3FC
	cmp r0, #1
	bne _0800586C
	movs r0, #0x37
	bl sub_8034F60
	bl sub_801D1C0
	bl sub_8005B48
	b _08005872
_0800586C:
	movs r0, #0x39
	bl sub_8034F60
_08005872:
	adds r0, r4, #0
	bl sub_8005C60
	bl sub_80454C8
	bl sub_8008220
	b _08005772
_08005882:
	movs r0, #0x38
	bl sub_8034F60
	bl sub_8045718
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8005894
sub_8005894: @ 0x08005894
	push {r4, r5, r6, r7, lr}
	ldr r0, _08005984
	ldr r4, _08005988
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _0800598C
	ldr r5, _08005990
	ldr r0, _08005994
	adds r4, r4, r0
	ldr r3, _08005998
_080058AC:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x13
	bls _080058AC
	movs r1, #0
	ldr r7, _0800599C
	ldr r6, _080059A0
	ldr r2, _0800598C
	ldr r5, _080059A4
	ldr r4, _080059A8
	ldr r3, _08005998
_080058D8:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x13
	bls _080058D8
	movs r1, #0
	ldr r2, _0800598C
	ldr r5, _080059AC
	ldr r4, _080059B0
	ldr r3, _08005998
_08005900:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x13
	bls _08005900
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0x10
	bl CpuSet
	ldr r0, _080059B4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r6, r2
	movs r2, #0x10
	bl CpuSet
	ldr r4, _080059B8
	ldr r1, _080059BC
	ldr r5, _080059C0
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020A3C
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r4, r1
	ldr r1, _080059C4
	adds r2, r5, #0
	bl sub_8020A3C
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r4, r2
	ldr r1, _080059C8
	adds r2, r5, #0
	bl sub_8020A3C
	movs r1, #0xa5
	lsls r1, r1, #7
	adds r0, r4, r1
	ldr r1, _080059CC
	adds r2, r5, #0
	bl sub_8020A3C
	movs r2, #0xaa
	lsls r2, r2, #7
	adds r4, r4, r2
	ldr r1, _080059D0
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020A3C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005984: .4byte 0x08078C08
_08005988: .4byte 0x02010400
_0800598C: .4byte 0x040000D4
_08005990: .4byte 0x080798F4
_08005994: .4byte 0xFFFFF800
_08005998: .4byte 0x8000001E
_0800599C: .4byte 0x080793E4
_080059A0: .4byte 0x02000000
_080059A4: .4byte 0x08079CB4
_080059A8: .4byte 0x0200EC00
_080059AC: .4byte 0x0807A164
_080059B0: .4byte 0x0200E400
_080059B4: .4byte 0x08079404
_080059B8: .4byte 0x02008420
_080059BC: .4byte 0x0807A614
_080059C0: .4byte 0x00000901
_080059C4: .4byte 0x0807A790
_080059C8: .4byte 0x0807A910
_080059CC: .4byte 0x0807A95C
_080059D0: .4byte 0x0807A9A4

	THUMB_FUNC_START sub_80059D4
sub_80059D4: @ 0x080059D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r7, _08005ABC
	ldr r0, _08005AC0
	mov ip, r0
	ldr r1, _08005AC4
	mov r8, r1
	ldr r2, _08005AC8
	mov sb, r2
	ldr r0, _08005ACC
	mov sl, r0
	ldr r3, _08005AD0
	movs r6, #0
	movs r5, #0xa0
_080059F8:
	lsls r0, r4, #3
	adds r0, r0, r3
	strh r5, [r0]
	lsls r2, r4, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r3
	strh r6, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x7f
	bls _080059F8
	ldr r1, _08005AD4
	ldr r2, _08005AD8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08005ADC
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08005AE0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08005AE4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08005AE8
	movs r1, #1
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	ldr r0, _08005AEC
	movs r4, #8
	strh r4, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xf0
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08005AF0
	adds r0, r1, #0
	strh r0, [r7]
	ldr r2, _08005AF4
	adds r0, r2, #0
	mov r1, ip
	strh r0, [r1]
	movs r0, #0
	ldr r2, _08005AF8
	strh r0, [r2]
	mov r1, r8
	strh r0, [r1]
	mov r2, sb
	strh r0, [r2]
	mov r1, sl
	strh r0, [r1]
	ldr r2, _08005AFC
	strh r0, [r2]
	ldr r1, _08005B00
	strh r0, [r1]
	bl sub_8045434
	ldr r1, _08005B04
	ldr r2, _08005B08
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08005B0C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08005B10
	movs r0, #0xe8
	strh r0, [r1]
	ldr r0, _08005B14
	strh r4, [r0]
	bl sub_804549C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005ABC: .4byte 0x0202424C
_08005AC0: .4byte 0x0202420C
_08005AC4: .4byte 0x02024218
_08005AC8: .4byte 0x02024214
_08005ACC: .4byte 0x02024240
_08005AD0: .4byte 0x02018400
_08005AD4: .4byte 0x04000008
_08005AD8: .4byte 0x00001C09
_08005ADC: .4byte 0x00001D09
_08005AE0: .4byte 0x00001F0E
_08005AE4: .4byte 0x00001E03
_08005AE8: .4byte 0x04000208
_08005AEC: .4byte 0x04000004
_08005AF0: .4byte 0x0000FFB0
_08005AF4: .4byte 0x0000FFC8
_08005AF8: .4byte 0x02024204
_08005AFC: .4byte 0x02024248
_08005B00: .4byte 0x0202422C
_08005B04: .4byte 0x04000040
_08005B08: .4byte 0x000038B8
_08005B0C: .4byte 0x00002878
_08005B10: .4byte 0x02024228
_08005B14: .4byte 0x02024230

	THUMB_FUNC_START sub_8005B18
sub_8005B18: @ 0x08005B18
	push {lr}
	movs r0, #1
	bl sub_8035020
	bl sub_8005D08
	movs r0, #0x2f
	bl sub_8034F60
	bl sub_800576C
	movs r0, #1
	bl sub_8035020
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8005B38
sub_8005B38: @ 0x08005B38
	push {lr}
	bl sub_8005D08
	bl sub_800576C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8005B48
sub_8005B48: @ 0x08005B48
	push {r4, r5, lr}
	bl sub_803ED78
	bl sub_80454C8
	bl sub_80454E0
	bl sub_80454F8
	bl sub_8045718
	ldr r0, _08005BC0
	ldr r4, _08005BC4
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl sub_8005894
	movs r1, #0
	ldr r2, _08005BC8
	ldr r5, _08005BCC
	movs r0, #0xf0
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r3, _08005BD0
_08005B7A:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x13
	bls _08005B7A
	ldr r0, _08005BD4
	ldr r1, _08005BD8
	movs r2, #0x10
	bl CpuSet
	ldr r0, _08005BDC
	bl sub_80081DC
	bl sub_80455E4
	bl sub_80456E0
	bl sub_80454E0
	bl sub_8008220
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005BC0: .4byte 0x08075514
_08005BC4: .4byte 0x02000400
_08005BC8: .4byte 0x040000D4
_08005BCC: .4byte 0x08079444
_08005BD0: .4byte 0x8000001E
_08005BD4: .4byte 0x08079424
_08005BD8: .4byte 0x020001E0
_08005BDC: .4byte 0x08005C39

	THUMB_FUNC_START sub_8005BE0
sub_8005BE0: @ 0x08005BE0
	push {r4, lr}
	ldr r0, _08005C24
	ldr r4, _08005C28
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r0, _08005C2C
	movs r1, #0x80
	lsls r1, r1, #2
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	bl sub_8005894
	ldr r0, _08005C30
	bl sub_80081DC
	bl sub_80456E0
	bl sub_8045690
	bl sub_80454E0
	ldr r0, _08005C34
	bl sub_80081DC
	bl sub_8008220
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005C24: .4byte 0x080793E4
_08005C28: .4byte 0x02000000
_08005C2C: .4byte 0x08079404
_08005C30: .4byte 0x08005C55
_08005C34: .4byte 0x08005C39

	THUMB_FUNC_START sub_8005C38
sub_8005C38: @ 0x08005C38
	push {lr}
	ldr r1, _08005C50
	movs r0, #0x3c
	strb r0, [r1]
	adds r1, #2
	movs r0, #8
	strb r0, [r1]
	bl sub_80059D4
	pop {r0}
	bx r0
	.align 2, 0
_08005C50: .4byte 0x04000048

	THUMB_FUNC_START sub_8005C54
sub_8005C54: @ 0x08005C54
	push {lr}
	bl sub_80059D4
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8005C60
sub_8005C60: @ 0x08005C60
	lsls r0, r0, #0x18
	ldr r2, _08005C78
	lsrs r0, r0, #0x14
	adds r0, #0x38
	ldr r1, _08005C7C
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r2, #4]
	bx lr
	.align 2, 0
_08005C78: .4byte 0x02018400
_08005C7C: .4byte 0x40400000

	THUMB_FUNC_START sub_8005C80
sub_8005C80: @ 0x08005C80
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xe8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_8045434
	bl sub_8005CB8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8005C9C
sub_8005C9C: @ 0x08005C9C
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xf0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_8045434
	bl sub_8005CB8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8005CB8
sub_8005CB8: @ 0x08005CB8
	push {r4, r5, lr}
	ldr r1, _08005CF8
	movs r0, #0xfc
	strh r0, [r1]
	ldr r1, _08005CFC
	movs r0, #8
	strh r0, [r1]
	bl sub_804549C
	bl sub_8008220
	ldr r3, _08005D00
	ldrh r1, [r3]
	ldr r2, _08005D04
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08005CEC
	adds r5, r3, #0
	adds r4, r2, #0
_08005CE0:
	bl sub_8008220
	ldrh r0, [r5]
	ands r0, r4
	cmp r0, #0
	beq _08005CE0
_08005CEC:
	bl sub_8008220
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005CF8: .4byte 0x02024228
_08005CFC: .4byte 0x02024230
_08005D00: .4byte 0x02020DFC
_08005D04: .4byte 0x000003FF

	THUMB_FUNC_START sub_8005D08
sub_8005D08: @ 0x08005D08
	push {lr}
	bl sub_8005B48
	bl sub_8008F24
	bl sub_801DA20
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8005D1C
sub_8005D1C: @ 0x08005D1C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_803ED78
	bl sub_800604C
	movs r0, #0x2e
	bl sub_8034F60
	ldr r0, _08005DE8
	ldr r1, _08005DEC
	bl LZ77UnCompWram
	ldr r0, _08005DF0
	ldr r1, _08005DF4
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	movs r4, #0
_08005D48:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08005DF8
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _08005DFC
	adds r1, r1, r5
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x13
	bls _08005D48
	ldr r0, _08005E00
	movs r1, #0x80
	lsls r1, r1, #4
	adds r4, r5, r1
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08005E04
	ldr r1, _08005E08
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	ldr r0, _08005E0C
	movs r2, #0x80
	lsls r2, r2, #4
	adds r4, r4, r2
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _08005E10
	adds r0, r5, r1
	ldr r4, _08005E14
	ldr r1, [r4]
	adds r1, #0xe
	ldr r2, _08005E18
	bl sub_8020DB8
	bl sub_800683C
	ldr r0, _08005E1C
	bl sub_80081DC
	bl sub_8008220
	bl sub_80075B0
	ldr r2, _08005E20
	mov r8, r2
	movs r5, #0
	movs r0, #0x80
	lsls r0, r0, #2
	mov sb, r0
	adds r7, r4, #0
_08005DC4:
	ldr r2, _08005E24
	ldrh r1, [r2]
	movs r0, #8
	ands r0, r1
	ldr r4, _08005E14
	cmp r0, #0
	beq _08005E54
	ldr r1, [r4]
	ldrh r0, [r1, #0x32]
	cmp r0, #5
	beq _08005E28
	movs r0, #0x36
	bl sub_8034F60
	ldr r1, [r4]
	movs r0, #5
	strh r0, [r1, #0x32]
	b _08005E46
	.align 2, 0
_08005DE8: .4byte 0x0807A9EC
_08005DEC: .4byte 0x02000400
_08005DF0: .4byte 0x08081440
_08005DF4: .4byte 0x02000000
_08005DF8: .4byte 0x08081640
_08005DFC: .4byte 0x0200F400
_08005E00: .4byte 0x08081F10
_08005E04: .4byte 0x08081AF0
_08005E08: .4byte 0x02000200
_08005E0C: .4byte 0x0807F2F0
_08005E10: .4byte 0xFFFF9020
_08005E14: .4byte 0x08DF8114
_08005E18: .4byte 0x00000901
_08005E1C: .4byte 0x080074CD
_08005E20: .4byte 0x00004081
_08005E24: .4byte 0x02020DFC
_08005E28:
	ldrh r0, [r1, #0xe]
	cmp r0, r8
	beq _08005E40
	movs r0, #0x37
	bl sub_8034F60
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #9]
	bl sub_8006B40
	b _08006040
_08005E40:
	movs r0, #0x39
	bl sub_8034F60
_08005E46:
	ldr r0, [r7]
	movs r1, #0xb5
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r5, [r0]
	ldr r4, _08005E80
	ldr r2, _08005E84
_08005E54:
	ldrh r1, [r2]
	movs r6, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08005E8E
	ldr r1, [r4]
	ldrh r0, [r1, #0x32]
	cmp r0, #5
	bne _08005E8E
	ldrh r0, [r1, #0xe]
	cmp r0, r8
	beq _08005E88
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, [r4]
	strb r6, [r0, #9]
	bl sub_8006B40
	b _08006040
	.align 2, 0
_08005E80: .4byte 0x08DF8114
_08005E84: .4byte 0x02020DFC
_08005E88:
	movs r0, #0x39
	bl sub_8034F60
_08005E8E:
	ldr r0, _08005EB8
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08005EC0
	ldr r4, _08005EBC
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	cmp r0, #7
	bhi _08005EE4
	movs r0, #0x36
	bl sub_8034F60
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	adds r0, #1
	b _08005EE2
	.align 2, 0
_08005EB8: .4byte 0x02020DF4
_08005EBC: .4byte 0x08DF8114
_08005EC0:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08005EE4
	ldr r4, _08005EF4
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08005EE4
	movs r0, #0x36
	bl sub_8034F60
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	subs r0, #1
_08005EE2:
	strb r0, [r1, #2]
_08005EE4:
	ldr r4, _08005EF4
	ldr r2, [r4]
	ldrb r1, [r2, #3]
	cmp r1, #0
	beq _08005EF8
	cmp r1, #1
	beq _08005F02
	b _08005FB2
	.align 2, 0
_08005EF4: .4byte 0x08DF8114
_08005EF8:
	bl sub_8006764
	bl sub_80064F4
	b _08005FB2
_08005F02:
	ldr r0, _08005F60
	ldrh r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08005F24
	ldrh r0, [r2, #0x32]
	cmp r0, #5
	beq _08005F18
	movs r0, #0x37
	bl sub_8034F60
_08005F18:
	ldr r0, [r4]
	strb r5, [r0]
	ldr r0, [r4]
	strb r5, [r0, #1]
	ldr r0, [r4]
	strb r5, [r0, #3]
_08005F24:
	ldr r0, _08005F60
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08005F7A
	ldr r4, _08005F64
	ldr r0, [r4]
	ldrh r0, [r0, #0x32]
	cmp r0, #5
	bne _08005F68
	movs r0, #0x38
	bl sub_8034F60
	ldr r1, [r4]
	movs r0, #3
	strh r0, [r1, #0x32]
	strb r5, [r1]
	ldr r0, [r4]
	strb r5, [r0, #1]
	ldr r0, [r4]
	strb r5, [r0, #3]
	ldr r0, [r4]
	movs r1, #0xb5
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r5, [r0]
	bl sub_800683C
	b _08005F7A
	.align 2, 0
_08005F60: .4byte 0x02020DFC
_08005F64: .4byte 0x08DF8114
_08005F68:
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, [r4]
	strb r5, [r0]
	ldr r0, [r4]
	strb r5, [r0, #1]
	ldr r0, [r4]
	strb r5, [r0, #3]
_08005F7A:
	ldr r0, _08005F98
	ldrh r2, [r0]
	movs r0, #0x20
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08005F9C
	ldr r0, [r7]
	strb r5, [r0, #3]
	ldr r1, [r7]
	movs r0, #0xa
	strb r0, [r1]
	b _08005FAC
	.align 2, 0
_08005F98: .4byte 0x02020DF4
_08005F9C:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08005FB2
	ldr r0, [r7]
	strb r1, [r0, #3]
	ldr r0, [r7]
	strb r1, [r0]
_08005FAC:
	ldr r1, [r7]
	movs r0, #3
	strh r0, [r1, #0x32]
_08005FB2:
	ldr r4, _08005FE8
	ldr r1, [r4]
	ldrh r0, [r1, #0x32]
	cmp r0, #5
	bne _08005FC0
	movs r0, #1
	strb r0, [r1, #3]
_08005FC0:
	bl sub_8006958
	bl sub_8006B40
	bl sub_8006C60
	bl sub_8006E84
	bl sub_8007068
	bl sub_8007350
	ldr r3, [r4]
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _08005FEC
	cmp r0, #1
	beq _08006010
	strb r5, [r3, #4]
	b _08006036
	.align 2, 0
_08005FE8: .4byte 0x08DF8114
_08005FEC:
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r1, r3, r2
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	movs r0, #0xb7
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r2]
	ldrh r0, [r1]
	cmp r0, sb
	bne _08006036
	movs r0, #1
	strb r0, [r3, #4]
	b _08006036
_08006010:
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r1, r3, r2
	ldrh r0, [r1]
	subs r0, #0x10
	movs r4, #0
	strh r0, [r1]
	movs r0, #0xb7
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	ldrh r1, [r1]
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	bne _08006036
	strb r4, [r3, #4]
_08006036:
	bl sub_80454C8
	bl sub_8008220
	b _08005DC4
_08006040:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800604C
sub_800604C: @ 0x0800604C
	push {r4, r5, lr}
	ldr r0, _080060A8
	ldr r1, _080060AC
	bl sub_805D134
	ldr r4, _080060B0
	ldr r0, [r4]
	adds r0, #0xe
	ldr r1, _080060B4
	movs r2, #0x13
	bl sub_805D240
	movs r2, #0
	adds r5, r4, #0
	ldr r3, _080060B8
_0800606A:
	ldr r0, [r4]
	lsls r1, r2, #1
	adds r0, #0xe
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	bne _0800607A
	strh r3, [r1]
_0800607A:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0800606A
	ldr r2, [r5]
	movs r0, #0
	strh r0, [r2, #0x1e]
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r2, r1
	subs r1, #0x6c
	strh r1, [r0]
	movs r3, #0xb7
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	movs r0, #3
	strh r0, [r2, #0x32]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080060A8: .4byte 0x02018800
_080060AC: .4byte 0x00004314
_080060B0: .4byte 0x08DF8114
_080060B4: .4byte 0x02020DE0
_080060B8: .4byte 0x00004081

	THUMB_FUNC_START sub_80060BC
sub_80060BC: @ 0x080060BC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800616C
	mov ip, r0
	ldr r4, [r0]
	ldrh r0, [r4, #0x32]
	cmp r0, #5
	bne _080060CC
	b _080064E6
_080060CC:
	ldrb r0, [r4, #2]
	lsls r0, r0, #1
	adds r6, r4, #0
	adds r6, #0x20
	adds r1, r6, r0
	adds r5, r4, #0
	adds r5, #0xe
	adds r0, r5, r0
	ldrh r0, [r0]
	strh r0, [r1]
	ldrb r2, [r4, #2]
	lsls r2, r2, #1
	adds r2, r5, r2
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r3, #1
	ldrsb r3, [r4, r3]
	movs r1, #0x2c
	muls r1, r3, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r1, r1, r0
	ldrh r0, [r1, #0x34]
	strh r0, [r2]
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _08006104
	b _0800646E
_08006104:
	adds r7, r0, #0
	lsls r1, r7, #1
	adds r2, r5, r1
	ldrh r3, [r2]
	ldr r0, _08006170
	cmp r3, r0
	beq _08006114
	b _08006378
_08006114:
	adds r0, r6, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	mov r2, ip
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	lsls r0, r0, #1
	adds r1, #0xe
	adds r1, r1, r0
	ldrh r2, [r1]
	ldr r0, _08006174
	cmp r2, r0
	bne _08006136
	b _08006328
_08006136:
	cmp r2, r0
	ble _0800613C
	b _08006244
_0800613C:
	ldr r0, _08006178
	cmp r2, r0
	bne _08006144
	b _08006328
_08006144:
	cmp r2, r0
	bgt _080061D0
	ldr r0, _0800617C
	cmp r2, r0
	bne _08006150
	b _08006328
_08006150:
	cmp r2, r0
	bgt _0800619C
	ldr r0, _08006180
	cmp r2, r0
	bne _0800615C
	b _08006328
_0800615C:
	cmp r2, r0
	bgt _08006188
	ldr r0, _08006184
	cmp r2, r0
	bne _08006168
	b _08006348
_08006168:
	b _08006354
	.align 2, 0
_0800616C: .4byte 0x08DF8114
_08006170: .4byte 0x00004A81
_08006174: .4byte 0x00007783
_08006178: .4byte 0x00005883
_0800617C: .4byte 0x00005083
_08006180: .4byte 0x00004A83
_08006184: .4byte 0x00004583
_08006188:
	ldr r0, _08006194
	cmp r2, r0
	bne _08006190
	b _08006328
_08006190:
	ldr r0, _08006198
	b _0800630A
	.align 2, 0
_08006194: .4byte 0x00004C83
_08006198: .4byte 0x00004E83
_0800619C:
	ldr r0, _080061B4
	cmp r2, r0
	bne _080061A4
	b _08006328
_080061A4:
	cmp r2, r0
	bgt _080061BC
	ldr r0, _080061B8
	cmp r2, r0
	bne _080061B0
	b _08006328
_080061B0:
	adds r0, #2
	b _0800630A
	.align 2, 0
_080061B4: .4byte 0x00005481
_080061B8: .4byte 0x00005281
_080061BC:
	ldr r0, _080061C8
	cmp r2, r0
	bne _080061C4
	b _08006328
_080061C4:
	ldr r0, _080061CC
	b _0800630A
	.align 2, 0
_080061C8: .4byte 0x00005483
_080061CC: .4byte 0x00005683
_080061D0:
	ldr r0, _080061EC
	cmp r2, r0
	bne _080061D8
	b _08006328
_080061D8:
	cmp r2, r0
	bgt _0800620C
	ldr r0, _080061F0
	cmp r2, r0
	bne _080061E4
	b _08006328
_080061E4:
	cmp r2, r0
	bgt _080061F8
	ldr r0, _080061F4
	b _0800630A
	.align 2, 0
_080061EC: .4byte 0x00006383
_080061F0: .4byte 0x00005C83
_080061F4: .4byte 0x00005A83
_080061F8:
	ldr r0, _08006204
	cmp r2, r0
	bne _08006200
	b _08006328
_08006200:
	ldr r0, _08006208
	b _0800630A
	.align 2, 0
_08006204: .4byte 0x00005E83
_08006208: .4byte 0x00006083
_0800620C:
	ldr r0, _08006224
	cmp r2, r0
	bne _08006214
	b _08006328
_08006214:
	cmp r2, r0
	bgt _08006230
	ldr r0, _08006228
	cmp r2, r0
	bne _08006220
	b _08006328
_08006220:
	ldr r0, _0800622C
	b _0800630A
	.align 2, 0
_08006224: .4byte 0x00006E83
_08006228: .4byte 0x00006583
_0800622C: .4byte 0x00006783
_08006230:
	ldr r0, _0800623C
	cmp r2, r0
	bne _08006238
	b _08006328
_08006238:
	ldr r0, _08006240
	b _0800630A
	.align 2, 0
_0800623C: .4byte 0x00007183
_08006240: .4byte 0x00007483
_08006244:
	ldr r0, _08006268
	cmp r2, r0
	beq _08006328
	cmp r2, r0
	bgt _080062C0
	ldr r0, _0800626C
	cmp r2, r0
	beq _08006328
	cmp r2, r0
	bgt _0800628C
	ldr r0, _08006270
	cmp r2, r0
	beq _08006328
	cmp r2, r0
	bgt _08006278
	ldr r0, _08006274
	b _0800630A
	.align 2, 0
_08006268: .4byte 0x0000BB82
_0800626C: .4byte 0x0000AF82
_08006270: .4byte 0x0000A982
_08006274: .4byte 0x00007A83
_08006278:
	ldr r0, _08006284
	cmp r2, r0
	beq _08006328
	ldr r0, _08006288
	b _0800630A
	.align 2, 0
_08006284: .4byte 0x0000AB82
_08006288: .4byte 0x0000AD82
_0800628C:
	ldr r0, _080062A0
	cmp r2, r0
	beq _08006328
	cmp r2, r0
	bgt _080062AC
	ldr r0, _080062A4
	cmp r2, r0
	beq _08006328
	ldr r0, _080062A8
	b _0800630A
	.align 2, 0
_080062A0: .4byte 0x0000B582
_080062A4: .4byte 0x0000B182
_080062A8: .4byte 0x0000B382
_080062AC:
	ldr r0, _080062B8
	cmp r2, r0
	beq _08006328
	ldr r0, _080062BC
	b _0800630A
	.align 2, 0
_080062B8: .4byte 0x0000B782
_080062BC: .4byte 0x0000B982
_080062C0:
	ldr r0, _080062D8
	cmp r2, r0
	beq _08006328
	cmp r2, r0
	bgt _080062F8
	ldr r0, _080062DC
	cmp r2, r0
	beq _08006328
	cmp r2, r0
	bgt _080062E4
	ldr r0, _080062E0
	b _0800630A
	.align 2, 0
_080062D8: .4byte 0x0000C682
_080062DC: .4byte 0x0000BF82
_080062E0: .4byte 0x0000BD82
_080062E4:
	ldr r0, _080062F0
	cmp r2, r0
	beq _08006328
	ldr r0, _080062F4
	b _0800630A
	.align 2, 0
_080062F0: .4byte 0x0000C282
_080062F4: .4byte 0x0000C482
_080062F8:
	ldr r0, _08006310
	cmp r2, r0
	beq _08006328
	cmp r2, r0
	bgt _0800631C
	ldr r0, _08006314
	cmp r2, r0
	beq _08006328
	ldr r0, _08006318
_0800630A:
	cmp r2, r0
	beq _08006328
	b _08006354
	.align 2, 0
_08006310: .4byte 0x0000D382
_08006314: .4byte 0x0000CD82
_08006318: .4byte 0x0000D082
_0800631C:
	ldr r0, _0800633C
	cmp r2, r0
	beq _08006328
	ldr r0, _08006340
	cmp r2, r0
	bne _08006354
_08006328:
	ldr r0, _08006344
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	lsls r0, r0, #1
	adds r1, #0xe
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	b _08006414
	.align 2, 0
_0800633C: .4byte 0x0000D682
_08006340: .4byte 0x0000D982
_08006344: .4byte 0x08DF8114
_08006348:
	ldr r0, _08006350
	strh r0, [r1]
	b _0800646E
	.align 2, 0
_08006350: .4byte 0x00009483
_08006354:
	ldr r2, _08006370
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	lsls r0, r0, #1
	adds r1, #0xe
	adds r1, r1, r0
	ldr r0, _08006374
	strh r0, [r1]
	b _0800646E
	.align 2, 0
_08006370: .4byte 0x08DF8114
_08006374: .4byte 0x00004A81
_08006378:
	ldr r0, _080063B0
	cmp r3, r0
	bne _08006450
	adds r0, r6, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	mov r1, ip
	ldr r0, [r1]
	ldrb r1, [r0, #2]
	lsls r1, r1, #1
	adds r0, #0xe
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080063B4
	cmp r1, r0
	beq _08006404
	cmp r1, r0
	bgt _080063D4
	ldr r0, _080063B8
	cmp r1, r0
	beq _08006404
	cmp r1, r0
	bgt _080063C0
	ldr r0, _080063BC
	b _080063E6
	.align 2, 0
_080063B0: .4byte 0x00004B81
_080063B4: .4byte 0x00007A83
_080063B8: .4byte 0x00007183
_080063BC: .4byte 0x00006E83
_080063C0:
	ldr r0, _080063CC
	cmp r1, r0
	beq _08006404
	ldr r0, _080063D0
	b _080063E6
	.align 2, 0
_080063CC: .4byte 0x00007483
_080063D0: .4byte 0x00007783
_080063D4:
	ldr r0, _080063EC
	cmp r1, r0
	beq _08006404
	cmp r1, r0
	bgt _080063F8
	ldr r0, _080063F0
	cmp r1, r0
	beq _08006404
	ldr r0, _080063F4
_080063E6:
	cmp r1, r0
	beq _08006404
	b _0800642C
	.align 2, 0
_080063EC: .4byte 0x0000D382
_080063F0: .4byte 0x0000CD82
_080063F4: .4byte 0x0000D082
_080063F8:
	ldr r0, _08006420
	cmp r1, r0
	beq _08006404
	ldr r0, _08006424
	cmp r1, r0
	bne _0800642C
_08006404:
	ldr r0, _08006428
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	lsls r0, r0, #1
	adds r1, #0xe
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #2
_08006414:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	b _0800646E
	.align 2, 0
_08006420: .4byte 0x0000D682
_08006424: .4byte 0x0000D982
_08006428: .4byte 0x08DF8114
_0800642C:
	ldr r2, _08006448
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	lsls r0, r0, #1
	adds r1, #0xe
	adds r1, r1, r0
	ldr r0, _0800644C
	strh r0, [r1]
	b _0800646E
	.align 2, 0
_08006448: .4byte 0x08DF8114
_0800644C: .4byte 0x00004B81
_08006450:
	cmp r7, #7
	bls _0800646E
	movs r0, #7
	strb r0, [r4, #2]
	mov r1, ip
	ldr r0, [r1]
	ldrb r1, [r0, #2]
	lsls r2, r1, #1
	adds r0, #0xe
	adds r2, r0, r2
	adds r1, #1
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_0800646E:
	movs r4, #0
	ldr r6, _08006498
	ldr r5, _0800649C
_08006474:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080064A4
	lsrs r0, r4, #1
	lsls r0, r0, #2
	adds r0, #2
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [r5]
	lsls r2, r4, #1
	adds r1, #0xe
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _080064A0
	bl sub_8020968
	b _080064BE
	.align 2, 0
_08006498: .4byte 0x02008400
_0800649C: .4byte 0x08DF8114
_080064A0: .4byte 0x00000901
_080064A4:
	lsrs r0, r4, #1
	lsls r0, r0, #2
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [r5]
	lsls r2, r4, #1
	adds r1, #0xe
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _080064EC
	bl sub_8020968
_080064BE:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _08006474
	bl sub_8045674
	ldr r2, _080064F0
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	cmp r0, #7
	bhi _080064DA
	adds r0, #1
	strb r0, [r1, #2]
_080064DA:
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	cmp r0, #8
	bne _080064E6
	movs r0, #5
	strh r0, [r1, #0x32]
_080064E6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080064EC: .4byte 0x00000901
_080064F0: .4byte 0x08DF8114

	THUMB_FUNC_START sub_80064F4
sub_80064F4: @ 0x080064F4
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800651C
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08006558
	movs r0, #0x36
	bl sub_8034F60
	ldr r5, _08006520
	ldr r2, [r5]
	ldrb r0, [r2, #1]
	movs r1, #1
	ldrsb r1, [r2, r1]
	cmp r1, #7
	bne _08006524
	movs r0, #6
	strb r0, [r2, #1]
	b _08006558
	.align 2, 0
_0800651C: .4byte 0x02020DF4
_08006520: .4byte 0x08DF8114
_08006524:
	cmp r1, #0
	ble _0800652E
	subs r0, #1
	strb r0, [r2, #1]
	b _08006558
_0800652E:
	movs r0, #0xb5
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _08006558
	adds r4, r0, #0
	adds r4, #0x9a
	ldr r1, _08006584
	ldrh r0, [r2, #0x32]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805D1FC
	lsrs r0, r0, #1
	cmp r4, r0
	blo _08006558
	ldr r1, [r5]
	movs r0, #6
	strb r0, [r1, #1]
_08006558:
	ldr r0, _08006588
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080065C2
	movs r0, #0x36
	bl sub_8034F60
	ldr r6, _0800658C
	ldr r2, [r6]
	ldrb r3, [r2, #1]
	movs r1, #1
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08006590
	movs r0, #0
	strb r0, [r2, #1]
	b _080065C2
	.align 2, 0
_08006584: .4byte 0x08DF8030
_08006588: .4byte 0x02020DF4
_0800658C: .4byte 0x08DF8114
_08006590:
	cmp r1, #5
	bgt _0800659A
	adds r0, r3, #1
	strb r0, [r2, #1]
	b _080065C2
_0800659A:
	movs r1, #0xb5
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r5, [r0]
	cmp r5, #0
	bne _080065C2
	adds r4, r5, #0
	adds r4, #0x9a
	ldr r1, _080065F4
	ldrh r0, [r2, #0x32]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805D1FC
	lsrs r0, r0, #1
	cmp r4, r0
	blo _080065C2
	ldr r0, [r6]
	strb r5, [r0, #1]
_080065C2:
	ldr r2, _080065F8
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08006628
	movs r0, #0x36
	bl sub_8034F60
	ldr r3, _080065FC
	ldr r1, [r3]
	ldrb r4, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	ble _08006618
	ldrh r0, [r1, #0x32]
	cmp r0, #2
	bhi _08006600
	cmp r2, #6
	bne _08006600
	subs r0, r4, #2
	strb r0, [r1]
	b _08006628
	.align 2, 0
_080065F4: .4byte 0x08DF8030
_080065F8: .4byte 0x02020DF4
_080065FC: .4byte 0x08DF8114
_08006600:
	ldr r0, _08006610
	ldr r1, [r0]
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r5, _08006614
	b _08006628
	.align 2, 0
_08006610: .4byte 0x08DF8114
_08006614: .4byte 0x02020DF4
_08006618:
	movs r0, #0xa
	strb r0, [r1]
	ldr r1, [r3]
	movs r0, #1
	strb r0, [r1, #3]
	ldr r1, [r3]
	movs r0, #5
	strh r0, [r1, #0x32]
_08006628:
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800667C
	movs r0, #0x36
	bl sub_8034F60
	ldr r3, _08006658
	ldr r1, [r3]
	ldrb r4, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #9
	bgt _0800666C
	ldrh r0, [r1, #0x32]
	cmp r0, #2
	bhi _0800665C
	cmp r2, #4
	bne _0800665C
	adds r0, r4, #2
	strb r0, [r1]
	b _0800667C
	.align 2, 0
_08006658: .4byte 0x08DF8114
_0800665C:
	ldr r0, _08006668
	ldr r1, [r0]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0800667C
	.align 2, 0
_08006668: .4byte 0x08DF8114
_0800666C:
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r3]
	movs r0, #1
	strb r0, [r1, #3]
	ldr r1, [r3]
	movs r0, #5
	strh r0, [r1, #0x32]
_0800667C:
	ldr r0, _080066D8
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08006718
	movs r0, #0x37
	bl sub_8034F60
	ldr r7, _080066DC
	ldr r4, [r7]
	ldrh r0, [r4, #0x32]
	cmp r0, #2
	bne _080066EE
	movs r5, #0
	ldrsb r5, [r4, r5]
	movs r6, #1
	ldrsb r6, [r4, r6]
	movs r0, #0x2c
	adds r1, r6, #0
	muls r1, r0, r1
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r1, r1, r0
	ldrh r1, [r1, #0x34]
	ldr r0, _080066E0
	cmp r1, r0
	beq _080066E4
	adds r1, r5, #6
	movs r0, #0xb
	muls r0, r6, r0
	adds r1, r1, r0
	movs r2, #0
	movs r3, #0
	strh r1, [r4, #0x32]
	strh r5, [r4, #0xa]
	strh r6, [r4, #0xc]
	strb r2, [r4]
	ldr r0, [r7]
	strb r2, [r0, #1]
	ldr r0, [r7]
	movs r1, #0xb5
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r3, [r0]
	b _080066E8
	.align 2, 0
_080066D8: .4byte 0x02020DF4
_080066DC: .4byte 0x08DF8114
_080066E0: .4byte 0x00004081
_080066E4:
	bl sub_80060BC
_080066E8:
	bl sub_800683C
	b _08006718
_080066EE:
	bl sub_80060BC
	ldr r1, [r7]
	ldrh r0, [r1, #0x32]
	cmp r0, #5
	bls _08006718
	movs r2, #0
	movs r0, #2
	strh r0, [r1, #0x32]
	ldrh r0, [r1, #0xa]
	strb r0, [r1]
	ldr r1, [r7]
	ldrh r0, [r1, #0xc]
	strb r0, [r1, #1]
	ldr r0, [r7]
	movs r1, #0xb5
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r2, [r0]
	bl sub_800683C
_08006718:
	ldr r0, _08006750
	ldrh r1, [r0]
	movs r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800675C
	ldr r3, _08006754
	ldr r1, [r3]
	ldrh r0, [r1, #0x32]
	cmp r0, #5
	bls _08006758
	movs r2, #0
	strh r4, [r1, #0x32]
	ldrh r0, [r1, #0xa]
	strb r0, [r1]
	ldr r1, [r3]
	ldrh r0, [r1, #0xc]
	strb r0, [r1, #1]
	ldr r0, [r3]
	movs r1, #0xb5
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r2, [r0]
	bl sub_800683C
	b _0800675C
	.align 2, 0
_08006750: .4byte 0x02020DF4
_08006754: .4byte 0x08DF8114
_08006758:
	bl sub_80068C4
_0800675C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8006764
sub_8006764: @ 0x08006764
	push {r4, r5, r6, lr}
	ldr r1, _080067A8
	ldr r4, _080067AC
	ldr r0, [r4]
	ldrh r0, [r0, #0x32]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805D1FC
	movs r1, #0x9a
	lsls r1, r1, #1
	cmp r0, r1
	bls _08006832
	ldr r0, _080067B0
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080067B6
	ldr r0, [r4]
	movs r2, #1
	ldrsb r2, [r0, r2]
	cmp r2, #0
	bne _080067B6
	movs r3, #0xb5
	lsls r3, r3, #1
	adds r1, r0, r3
	ldrh r0, [r1]
	cmp r0, #0xb
	bls _080067B4
	subs r0, #0xb
	strh r0, [r1]
	b _080067B6
	.align 2, 0
_080067A8: .4byte 0x08DF8030
_080067AC: .4byte 0x08DF8114
_080067B0: .4byte 0x02020DF4
_080067B4:
	strh r2, [r1]
_080067B6:
	ldr r0, _080067FC
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08006822
	ldr r5, _08006800
	ldr r1, [r5]
	movs r0, #1
	ldrsb r0, [r1, r0]
	cmp r0, #6
	bne _08006822
	movs r2, #0xb5
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r4, [r0]
	adds r4, #0xa5
	ldr r6, _08006804
	ldrh r0, [r1, #0x32]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_805D1FC
	lsrs r0, r0, #1
	cmp r4, r0
	bhs _08006808
	ldr r0, [r5]
	movs r3, #0xb5
	lsls r3, r3, #1
	adds r1, r0, r3
	ldrh r0, [r1]
	adds r0, #0xb
	b _08006820
	.align 2, 0
_080067FC: .4byte 0x02020DF4
_08006800: .4byte 0x08DF8114
_08006804: .4byte 0x08DF8030
_08006808:
	ldr r4, [r5]
	ldrh r0, [r4, #0x32]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_805D1FC
	lsrs r0, r0, #1
	subs r0, #0x9a
	movs r2, #0xb5
	lsls r2, r2, #1
	adds r1, r4, r2
_08006820:
	strh r0, [r1]
_08006822:
	ldr r0, _08006838
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08006832
	bl sub_800683C
_08006832:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08006838: .4byte 0x02020DF4

	THUMB_FUNC_START sub_800683C
sub_800683C: @ 0x0800683C
	push {r4, r5, lr}
	ldr r5, _080068B4
	ldr r2, [r5]
	movs r0, #0xb5
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _08006878
	adds r4, r0, #0
	adds r4, #0x9a
	ldr r1, _080068B8
	ldrh r0, [r2, #0x32]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805D1FC
	lsrs r0, r0, #1
	cmp r4, r0
	bls _08006878
	ldr r0, [r5]
	ldrh r0, [r0, #0x32]
	cmp r0, #5
	beq _08006878
	ldr r0, _080068BC
	movs r1, #0x9a
	lsls r1, r1, #7
	bl sub_805D134
_08006878:
	ldr r4, _080068B4
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x34
	ldr r2, _080068B8
	ldrh r1, [r3, #0x32]
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r5, #0xb5
	lsls r5, r5, #1
	adds r2, r3, r5
	ldrh r2, [r2]
	lsls r2, r2, #1
	ldr r1, [r1]
	adds r1, r1, r2
	movs r2, #0x9a
	lsls r2, r2, #1
	bl sub_805D240
	ldr r0, _080068BC
	ldr r1, [r4]
	adds r1, #0x34
	ldr r2, _080068C0
	bl sub_8020DB8
	bl sub_8045674
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080068B4: .4byte 0x08DF8114
_080068B8: .4byte 0x08DF8030
_080068BC: .4byte 0x02008A20
_080068C0: .4byte 0x00000901

	THUMB_FUNC_START sub_80068C4
sub_80068C4: @ 0x080068C4
	push {r4, lr}
	ldr r4, _0800691C
	ldr r1, [r4]
	ldrh r0, [r1, #0x32]
	cmp r0, #5
	beq _0800694A
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _080068E4
	movs r0, #0x38
	bl sub_8034F60
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	subs r0, #1
	strb r0, [r1, #2]
_080068E4:
	ldr r2, [r4]
	ldrb r0, [r2, #2]
	lsls r0, r0, #1
	adds r3, r2, #0
	adds r3, #0xe
	adds r0, r3, r0
	ldr r1, _08006920
	strh r1, [r0]
	ldrb r1, [r2, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800692C
	ldrb r2, [r2, #2]
	lsrs r0, r2, #1
	lsls r0, r0, #2
	adds r0, #2
	lsls r0, r0, #5
	ldr r1, _08006924
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r3, r2
	ldrh r1, [r2]
	ldr r2, _08006928
	bl sub_8020968
	b _08006946
	.align 2, 0
_0800691C: .4byte 0x08DF8114
_08006920: .4byte 0x00004081
_08006924: .4byte 0x02008400
_08006928: .4byte 0x00000901
_0800692C:
	ldrb r2, [r2, #2]
	lsrs r0, r2, #1
	lsls r0, r0, #2
	adds r0, #1
	lsls r0, r0, #5
	ldr r1, _08006950
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r3, r2
	ldrh r1, [r2]
	ldr r2, _08006954
	bl sub_8020968
_08006946:
	bl sub_8045674
_0800694A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006950: .4byte 0x02008400
_08006954: .4byte 0x00000901

	THUMB_FUNC_START sub_8006958
sub_8006958: @ 0x08006958
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _080069E0
	ldr r0, [r0]
	ldrh r0, [r0, #0x32]
	cmp r0, #5
	bne _080069EC
	movs r1, #0
_08006972:
	movs r6, #0
	lsls r5, r1, #2
	ldr r2, _080069E4
	adds r0, r5, r2
	ldr r0, [r0]
	adds r1, #1
	mov r8, r1
	ldrb r0, [r0, #1]
	cmp r6, r0
	bhs _080069D2
	ldr r7, _080069E8
	adds r0, r2, #0
	mov sl, r0
	adds r1, r7, #4
	mov sb, r1
_08006990:
	mov r2, ip
	lsls r3, r2, #3
	adds r1, r3, r7
	mov r2, sl
	adds r0, r5, r2
	ldr r4, [r0]
	ldr r0, [r4, #4]
	lsls r2, r6, #3
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r7, #2
	adds r0, r3, r0
	ldrh r1, [r2, #2]
	strh r1, [r0]
	add r3, sb
	ldrh r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r4, [r4, #1]
	cmp r6, r4
	blo _08006990
_080069D2:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bls _08006972
	b _08006B28
	.align 2, 0
_080069E0: .4byte 0x08DF8114
_080069E4: .4byte 0x08DF7FD4
_080069E8: .4byte 0x02018400
_080069EC:
	cmp r0, #4
	bhi _08006A68
	movs r1, #0
_080069F2:
	movs r6, #0
	lsls r5, r1, #2
	ldr r2, _08006A60
	adds r0, r5, r2
	ldr r0, [r0]
	adds r1, #1
	mov r8, r1
	ldrb r0, [r0, #1]
	cmp r6, r0
	bhs _08006A52
	ldr r7, _08006A64
	adds r0, r2, #0
	mov sl, r0
	adds r1, r7, #4
	mov sb, r1
_08006A10:
	mov r2, ip
	lsls r3, r2, #3
	adds r1, r3, r7
	mov r2, sl
	adds r0, r5, r2
	ldr r4, [r0]
	ldr r0, [r4, #4]
	lsls r2, r6, #3
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r7, #2
	adds r0, r3, r0
	ldrh r1, [r2, #2]
	strh r1, [r0]
	add r3, sb
	ldrh r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r4, [r4, #1]
	cmp r6, r4
	blo _08006A10
_08006A52:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bls _080069F2
	b _08006B28
	.align 2, 0
_08006A60: .4byte 0x08DF7FD4
_08006A64: .4byte 0x02018400
_08006A68:
	movs r1, #0
_08006A6A:
	adds r2, r1, #1
	mov r8, r2
	cmp r1, #2
	beq _08006ACE
	movs r6, #0
	lsls r5, r1, #2
	ldr r1, _08006B38
	adds r0, r5, r1
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	cmp r6, r0
	bhs _08006ACE
	ldr r7, _08006B3C
	adds r2, r1, #0
	mov sl, r2
	adds r0, r7, #4
	mov sb, r0
_08006A8C:
	mov r1, ip
	lsls r3, r1, #3
	adds r1, r3, r7
	mov r2, sl
	adds r0, r5, r2
	ldr r4, [r0]
	ldr r0, [r4, #4]
	lsls r2, r6, #3
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r7, #2
	adds r0, r3, r0
	ldrh r1, [r2, #2]
	strh r1, [r0]
	add r3, sb
	ldrh r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r4, [r4, #1]
	cmp r6, r4
	blo _08006A8C
_08006ACE:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bls _08006A6A
	movs r6, #0
	ldr r2, _08006B38
	ldr r0, [r2, #0x1c]
	ldrb r1, [r0, #1]
	cmp r6, r1
	bhs _08006B28
	ldr r5, _08006B3C
	adds r4, r0, #0
	adds r2, r5, #4
	mov r8, r2
	ldr r7, [r4, #4]
_08006AEE:
	mov r0, ip
	lsls r3, r0, #3
	adds r1, r3, r5
	lsls r2, r6, #3
	adds r2, r2, r7
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r5, #2
	adds r0, r3, r0
	ldrh r1, [r2, #2]
	strh r1, [r0]
	add r3, r8
	ldrh r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r6, r0
	blo _08006AEE
_08006B28:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006B38: .4byte 0x08DF7FD4
_08006B3C: .4byte 0x02018400

	THUMB_FUNC_START sub_8006B40
sub_8006B40: @ 0x08006B40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0xa
	ldr r0, _08006BB0
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	cmp r0, #1
	bne _08006C00
	movs r4, #0
	ldr r0, _08006BB4
	ldr r0, [r0, #0x2c]
	ldrb r1, [r0, #1]
	cmp r4, r1
	bhs _08006B9E
	ldr r7, _08006BB8
	adds r5, r0, #0
	ldr r2, [r5, #4]
	mov ip, r2
	adds r0, r7, #4
	mov r8, r0
_08006B6A:
	lsls r3, r6, #3
	adds r1, r3, r7
	lsls r2, r4, #3
	add r2, ip
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r7, #2
	adds r0, r3, r0
	ldrh r1, [r2, #2]
	strh r1, [r0]
	add r3, r8
	ldrh r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08006B6A
_08006B9E:
	bl sub_80454C8
	ldr r3, _08006BB0
	ldr r0, [r3]
	movs r1, #0
	strh r1, [r0, #0x1e]
	movs r4, #7
	ldrh r2, [r0, #0x1c]
	b _08006BD6
	.align 2, 0
_08006BB0: .4byte 0x08DF8114
_08006BB4: .4byte 0x08DF7FD4
_08006BB8: .4byte 0x02018400
_08006BBC:
	ldr r3, _08006BF4
	ldr r2, [r3]
	lsls r1, r4, #1
	adds r2, #0xe
	adds r1, r2, r1
	movs r0, #0
	strh r0, [r1]
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r4, #1
	adds r2, r2, r0
	ldrh r2, [r2]
_08006BD6:
	ldr r0, _08006BF8
	cmp r2, r0
	beq _08006BBC
	cmp r2, #0
	beq _08006BBC
	ldr r0, _08006BFC
	ldr r1, [r3]
	adds r1, #0xe
	movs r2, #0x13
	bl sub_805D240
	bl sub_80072A8
	b _08006C4C
	.align 2, 0
_08006BF4: .4byte 0x08DF8114
_08006BF8: .4byte 0x00004081
_08006BFC: .4byte 0x02020DE0
_08006C00:
	movs r4, #0
	ldr r0, _08006C58
	ldr r0, [r0, #0x28]
	ldrb r1, [r0, #1]
	cmp r4, r1
	bhs _08006C4C
	ldr r7, _08006C5C
	adds r5, r0, #0
	ldr r2, [r5, #4]
	mov ip, r2
	adds r0, r7, #4
	mov r8, r0
_08006C18:
	lsls r3, r6, #3
	adds r1, r3, r7
	lsls r2, r4, #3
	add r2, ip
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r7, #2
	adds r0, r3, r0
	ldrh r1, [r2, #2]
	strh r1, [r0]
	add r3, r8
	ldrh r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08006C18
_08006C4C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006C58: .4byte 0x08DF7FD4
_08006C5C: .4byte 0x02018400

	THUMB_FUNC_START sub_8006C60
sub_8006C60: @ 0x08006C60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0x15
	mov sb, r0
	ldr r3, _08006C98
	ldr r4, [r3]
	ldr r2, _08006C9C
	ldrb r0, [r4, #8]
	ldr r1, [r2, #0x30]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r4, #7]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08006CA0
	movs r0, #0
	strb r0, [r4, #7]
	adds r2, r3, #0
	ldr r1, [r2]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	b _08006CA4
	.align 2, 0
_08006C98: .4byte 0x08DF8114
_08006C9C: .4byte 0x08DF7FD4
_08006CA0:
	adds r0, r1, #1
	strb r0, [r4, #7]
_08006CA4:
	ldr r3, _08006D3C
	ldr r2, [r3]
	ldrb r0, [r2, #8]
	ldr r3, _08006D40
	ldr r1, [r3, #0x30]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08006CBA
	strb r0, [r2, #8]
_08006CBA:
	movs r7, #0
	ldr r1, _08006D3C
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	ldr r2, _08006D40
	ldr r1, [r2, #0x30]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r7, r0
	bhs _08006D86
	ldr r3, _08006D3C
	mov sl, r3
	ldr r6, _08006D44
	adds r0, r6, #4
	mov ip, r0
	str r1, [sp]
	adds r1, r6, #2
	mov r8, r1
_08006CE0:
	mov r2, sl
	ldr r5, [r2]
	movs r3, #0xb5
	lsls r3, r3, #1
	adds r0, r5, r3
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006D48
	ldrh r0, [r5, #0x32]
	cmp r0, #5
	beq _08006D48
	mov r0, sb
	lsls r2, r0, #3
	adds r4, r2, r6
	ldrb r0, [r5, #8]
	ldr r1, _08006D40
	ldr r3, [r1, #0x30]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r0, [r0, #4]
	lsls r1, r7, #3
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r4]
	mov r0, r8
	adds r4, r2, r0
	ldrb r0, [r5, #8]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r0, [r0, #4]
	adds r0, r1, r0
	ldrh r0, [r0, #2]
	strh r0, [r4]
	add r2, ip
	ldrb r0, [r5, #8]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r0, [r0, #4]
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _08006D64
	.align 2, 0
_08006D3C: .4byte 0x08DF8114
_08006D40: .4byte 0x08DF7FD4
_08006D44: .4byte 0x02018400
_08006D48:
	mov r0, sb
	lsls r1, r0, #3
	adds r2, r1, r6
	movs r0, #0xa0
	strh r0, [r2]
	mov r3, r8
	adds r2, r1, r3
	movs r0, #0xf0
	strh r0, [r2]
	add r1, ip
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
_08006D64:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r3, sl
	ldr r0, [r3]
	ldrb r0, [r0, #8]
	lsls r0, r0, #3
	ldr r1, [sp]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r7, r0
	blo _08006CE0
_08006D86:
	movs r7, #0
	ldr r2, _08006E18
	ldr r0, [r2]
	ldrb r0, [r0, #8]
	ldr r3, _08006E1C
	ldr r1, [r3, #0x34]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r7, r0
	bhs _08006E6C
	ldr r0, _08006E20
	mov r8, r0
	movs r1, #4
	add r1, r8
	mov sl, r1
_08006DA6:
	ldr r0, [r2]
	movs r3, #0xb5
	lsls r3, r3, #1
	adds r1, r0, r3
	ldrh r4, [r1]
	adds r4, #0x9a
	ldr r1, _08006E24
	ldrh r0, [r0, #0x32]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r2, [sp, #4]
	bl sub_805D1FC
	lsrs r0, r0, #1
	ldr r2, [sp, #4]
	cmp r4, r0
	bhs _08006E28
	mov r0, sb
	lsls r5, r0, #3
	mov r3, r8
	adds r1, r5, r3
	ldr r6, _08006E1C
	ldr r3, [r2]
	ldrb r0, [r3, #8]
	ldr r4, [r6, #0x34]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0, #4]
	lsls r2, r7, #3
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, r8
	adds r1, #2
	adds r1, r5, r1
	ldrb r0, [r3, #8]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0, #4]
	adds r0, r2, r0
	ldrh r0, [r0, #2]
	strh r0, [r1]
	add r5, sl
	ldrb r0, [r3, #8]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0, #4]
	adds r2, r2, r0
	ldrh r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
	b _08006E48
	.align 2, 0
_08006E18: .4byte 0x08DF8114
_08006E1C: .4byte 0x08DF7FD4
_08006E20: .4byte 0x02018400
_08006E24: .4byte 0x08DF8030
_08006E28:
	mov r3, sb
	lsls r2, r3, #3
	mov r0, r8
	adds r1, r2, r0
	movs r0, #0xa0
	strh r0, [r1]
	mov r0, r8
	adds r0, #2
	adds r0, r2, r0
	movs r1, #0xf0
	strh r1, [r0]
	add r2, sl
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r1, #0
	strh r0, [r2]
_08006E48:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r2, _08006E7C
	ldr r0, [r2]
	ldrb r0, [r0, #8]
	ldr r3, _08006E80
	ldr r1, [r3, #0x34]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r7, r0
	blo _08006DA6
_08006E6C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006E7C: .4byte 0x08DF8114
_08006E80: .4byte 0x08DF7FD4

	THUMB_FUNC_START sub_8006E84
sub_8006E84: @ 0x08006E84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0x17
	mov ip, r0
	ldr r0, _08006F14
	ldr r1, [r0]
	ldrb r1, [r1, #3]
	cmp r1, #0
	bne _08006F28
	movs r7, #0
	ldr r0, _08006F18
	ldr r1, [r0, #0x38]
	ldrb r2, [r1, #1]
	cmp r7, r2
	bhs _08006F6C
	ldr r0, _08006F1C
	mov sb, r0
	mov r8, r1
	ldr r1, [r1, #4]
	mov sl, r1
_08006EB2:
	mov r2, ip
	lsls r5, r2, #3
	mov r0, sb
	adds r6, r5, r0
	lsls r3, r7, #3
	add r3, sl
	ldrh r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r2, r1, #0
	orrs r2, r0
	ldr r0, _08006F14
	ldr r4, [r0]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #4
	adds r0, #3
	lsls r0, r0, #0x10
	ldr r1, _08006F20
	ands r0, r1
	orrs r2, r0
	movs r0, #1
	ldrsb r0, [r4, r0]
	lsls r0, r0, #4
	adds r0, #0x1f
	movs r1, #0xff
	ands r0, r1
	orrs r2, r0
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x10
	orrs r2, r0
	str r2, [r6]
	ldr r1, _08006F24
	adds r5, r5, r1
	ldrh r0, [r3, #4]
	strh r0, [r5]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	mov r2, r8
	ldrb r2, [r2, #1]
	cmp r7, r2
	blo _08006EB2
	b _08006F6C
	.align 2, 0
_08006F14: .4byte 0x08DF8114
_08006F18: .4byte 0x08DF7FD4
_08006F1C: .4byte 0x02018400
_08006F20: .4byte 0x01FF0000
_08006F24: .4byte 0x02018404
_08006F28:
	movs r7, #0
	ldr r0, _08006FF8
	ldr r1, [r0, #0x38]
	ldrb r0, [r1, #1]
	cmp r7, r0
	bhs _08006F6C
	ldr r3, _08006FFC
	adds r6, r3, #4
	adds r4, r1, #0
	movs r5, #0xa0
_08006F3C:
	mov r1, ip
	lsls r2, r1, #3
	adds r0, r2, r3
	strh r5, [r0]
	adds r0, r3, #2
	adds r0, r2, r0
	movs r1, #0xf0
	strh r1, [r0]
	adds r2, r2, r6
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r1, #0
	strh r0, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r2, [r4, #1]
	cmp r7, r2
	blo _08006F3C
_08006F6C:
	ldr r1, _08007000
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	cmp r0, #7
	bhi _0800700C
	movs r7, #0
	ldr r2, _08006FF8
	ldr r0, [r2, #0x54]
	ldrb r1, [r0, #1]
	cmp r7, r1
	bhs _08007050
	ldr r2, _08006FFC
	mov r8, r2
	adds r6, r0, #0
	movs r0, #4
	add r0, r8
	mov sl, r0
	ldr r1, [r6, #4]
	mov sb, r1
_08006F92:
	mov r2, ip
	lsls r4, r2, #3
	mov r0, r8
	adds r5, r4, r0
	lsls r3, r7, #3
	add r3, sb
	ldrh r0, [r3]
	movs r1, #0x84
	lsls r1, r1, #8
	adds r2, r1, #0
	orrs r2, r0
	ldr r1, _08007000
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0xf
	adds r0, r0, r1
	ldr r1, _08007004
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	orrs r2, r0
	ldrh r1, [r3, #2]
	ldr r0, _08007008
	ands r0, r1
	lsls r0, r0, #0x10
	movs r1, #8
	orrs r0, r1
	orrs r2, r0
	str r2, [r5]
	add r4, sl
	ldrh r0, [r3, #4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r0, [r6, #1]
	cmp r7, r0
	blo _08006F92
	b _08007050
	.align 2, 0
_08006FF8: .4byte 0x08DF7FD4
_08006FFC: .4byte 0x02018400
_08007000: .4byte 0x08DF8114
_08007004: .4byte 0x01FF0000
_08007008: .4byte 0x00003FFF
_0800700C:
	movs r7, #0
	ldr r1, _08007060
	ldr r0, [r1, #0x54]
	ldrb r2, [r0, #1]
	cmp r7, r2
	bhs _08007050
	ldr r3, _08007064
	adds r6, r3, #4
	adds r4, r0, #0
	movs r5, #0xa0
_08007020:
	mov r0, ip
	lsls r2, r0, #3
	adds r0, r2, r3
	strh r5, [r0]
	adds r0, r3, #2
	adds r0, r2, r0
	movs r1, #0xf0
	strh r1, [r0]
	adds r2, r2, r6
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r1, #0
	strh r0, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r2, [r4, #1]
	cmp r7, r2
	blo _08007020
_08007050:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007060: .4byte 0x08DF7FD4
_08007064: .4byte 0x02018400

	THUMB_FUNC_START sub_8007068
sub_8007068: @ 0x08007068
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0x19
	mov ip, r0
	movs r6, #0
	ldr r1, _080070F8
	mov sb, r1
	ldr r2, _080070FC
	movs r7, #0xa0
	mov r8, r7
	adds r0, r2, #4
	mov sl, r0
	adds r5, r2, #2
	movs r4, #0xf0
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r3, r1, #0
_08007090:
	mov r7, ip
	lsls r1, r7, #3
	adds r0, r1, r2
	mov r7, r8
	strh r7, [r0]
	adds r0, r1, r5
	strh r4, [r0]
	add r1, sl
	strh r3, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	cmp r6, #8
	bls _08007090
	movs r0, #0x19
	mov ip, r0
	mov r1, sb
	ldr r4, [r1]
	ldrb r0, [r4, #3]
	cmp r0, #1
	beq _080070C6
	b _08007294
_080070C6:
	ldrh r0, [r4, #0x32]
	cmp r0, #5
	bls _080070CE
	b _080071D8
_080070CE:
	ldr r2, _08007100
	adds r0, #0xf
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r4, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r0, [r4, #5]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08007104
	movs r0, #0
	strb r0, [r4, #5]
	mov r7, sb
	ldr r1, [r7]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	b _08007108
	.align 2, 0
_080070F8: .4byte 0x08DF8114
_080070FC: .4byte 0x02018400
_08007100: .4byte 0x08DF7FD4
_08007104:
	adds r0, #1
	strb r0, [r4, #5]
_08007108:
	mov r0, sb
	ldr r3, [r0]
	ldrh r0, [r3, #0x32]
	adds r0, #0xf
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r3, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _08007124
	strb r0, [r3, #6]
_08007124:
	movs r6, #0
	mov r7, sb
	ldr r1, [r7]
	ldrh r0, [r1, #0x32]
	adds r0, #0xf
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r1, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r1, [r1, #1]
	cmp r6, r1
	blo _08007142
	b _08007294
_08007142:
	ldr r0, _080071D4
	mov r8, r0
	adds r7, r2, #0
	movs r1, #4
	add r1, r8
	mov sl, r1
_0800714E:
	mov r0, ip
	lsls r5, r0, #3
	mov r1, r8
	adds r2, r5, r1
	mov r0, sb
	ldr r3, [r0]
	ldrh r0, [r3, #0x32]
	adds r0, #0xf
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r3, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, [r1, #4]
	lsls r4, r6, #3
	adds r0, r4, r0
	ldrh r0, [r0]
	strh r0, [r2]
	mov r2, r8
	adds r2, #2
	adds r2, r5, r2
	ldrh r0, [r3, #0x32]
	adds r0, #0xf
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r3, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, [r1, #4]
	adds r0, r4, r0
	ldrh r0, [r0, #2]
	strh r0, [r2]
	add r5, sl
	ldrh r0, [r3, #0x32]
	adds r0, #0xf
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r3, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, [r1, #4]
	adds r4, r4, r0
	ldrh r0, [r4, #4]
	strh r0, [r5]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r3, #0x32]
	adds r0, #0xf
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r3, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r1, [r1, #1]
	cmp r6, r1
	blo _0800714E
	b _08007294
	.align 2, 0
_080071D4: .4byte 0x02018400
_080071D8:
	ldr r2, _08007200
	movs r3, #0x11
	lsls r0, r3, #2
	adds r0, r0, r2
	ldrb r1, [r4, #6]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r0, [r4, #5]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08007204
	movs r0, #0
	strb r0, [r4, #5]
	mov r7, sb
	ldr r1, [r7]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	b _08007208
	.align 2, 0
_08007200: .4byte 0x08DF7FD4
_08007204:
	adds r0, #1
	strb r0, [r4, #5]
_08007208:
	lsls r0, r3, #2
	adds r2, r0, r2
	mov r0, sb
	ldr r4, [r0]
	ldrb r0, [r4, #6]
	ldr r1, [r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08007220
	strb r0, [r4, #6]
_08007220:
	movs r6, #0
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #6]
	ldr r1, [r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r6, r0
	bhs _08007294
	ldr r7, _080072A4
	adds r5, r1, #0
	adds r0, r7, #4
	mov r8, r0
_0800723C:
	mov r1, ip
	lsls r3, r1, #3
	adds r1, r3, r7
	mov r0, sb
	ldr r4, [r0]
	ldrb r0, [r4, #6]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #4]
	lsls r2, r6, #3
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, r7, #2
	adds r1, r3, r1
	ldrb r0, [r4, #6]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #4]
	adds r0, r2, r0
	ldrh r0, [r0, #2]
	strh r0, [r1]
	add r3, r8
	ldrb r0, [r4, #6]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #4]
	adds r2, r2, r0
	ldrh r0, [r2, #4]
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r0, [r4, #6]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrb r0, [r0, #1]
	cmp r6, r0
	blo _0800723C
_08007294:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080072A4: .4byte 0x02018400

	THUMB_FUNC_START sub_80072A8
sub_80072A8: @ 0x080072A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #6
	mov r8, r5
	ldr r1, _08007314
	ldr r2, _08007318
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0800731C
	ldr r2, _08007320
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08007324
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08007328
	ldr r1, [r0]
	movs r0, #8
	strb r0, [r1, #2]
	bl sub_8006E84
	bl sub_80454C8
	movs r4, #0
_080072DA:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1d
	bls _080072DA
	movs r0, #8
	bl sub_8035020
	movs r4, #0
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	add r0, r8
	cmp r4, r0
	bge _08007344
	ldr r6, _08007324
	adds r7, r0, #0
_08007302:
	ldrh r0, [r6]
	cmp r0, #0xf
	bhi _08007336
	cmp r5, #0
	beq _0800732C
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _08007336
	.align 2, 0
_08007314: .4byte 0x02024228
_08007318: .4byte 0x000006D6
_0800731C: .4byte 0x02024238
_08007320: .4byte 0x00000C0A
_08007324: .4byte 0x02024230
_08007328: .4byte 0x08DF8114
_0800732C:
	adds r0, #1
	strh r0, [r6]
	bl sub_804549C
	mov r5, r8
_08007336:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r7
	blt _08007302
_08007344:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8007350
sub_8007350: @ 0x08007350
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080074C0
	mov sl, r0
	ldr r1, _080074C4
	mov sb, r1
	ldr r1, [r1]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	ldrh r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r6, #0xb6
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	mov r8, r0
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r2, sb
	ldr r1, [r2]
	adds r0, r1, r5
	ldrh r0, [r0]
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r4, [r0, r2]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, sb
	ldr r1, [r0]
	adds r0, r1, r5
	ldrh r0, [r0]
	lsls r0, r0, #1
	add r0, sl
	ldrh r4, [r0]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r7, #0xb7
	lsls r7, r7, #1
	adds r1, r1, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sb
	ldr r1, [r0]
	adds r5, r1, r5
	ldrh r0, [r5]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r5, [r0, r2]
	adds r1, r1, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8008144
	ldr r5, _080074C8
	mov r1, r8
	strh r1, [r5]
	strh r6, [r5, #8]
	strh r4, [r5, #0x10]
	strh r0, [r5, #0x18]
	mov r0, sl
	adds r0, #0x80
	movs r2, #0
	ldrsh r7, [r0, r2]
	movs r0, #0xa0
	lsls r0, r0, #1
	mov sb, r0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_8008144
	mov r8, r0
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r2, sl
	movs r0, #0
	ldrsh r4, [r2, r0]
	mov r0, sb
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r1, sl
	ldrh r4, [r1]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, sb
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sb
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_8008144
	mov r2, r8
	strh r2, [r5, #0x20]
	strh r6, [r5, #0x28]
	strh r4, [r5, #0x30]
	strh r0, [r5, #0x38]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080074C0: .4byte 0x08088ED4
_080074C4: .4byte 0x08DF8114
_080074C8: .4byte 0x02018406

	THUMB_FUNC_START sub_80074CC
sub_80074CC: @ 0x080074CC
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r7, _08007568
	ldr r0, _0800756C
	mov ip, r0
	ldr r4, _08007570
	movs r6, #0
	movs r5, #0xa0
_080074DC:
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
	bls _080074DC
	ldr r1, _08007574
	ldr r2, _08007578
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800757C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08007580
	movs r1, #1
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	ldr r1, _08007584
	movs r0, #8
	strh r0, [r1]
	subs r1, #4
	movs r2, #0xb0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r0, r1, #0
	strh r0, [r7]
	ldr r2, _08007588
	adds r0, r2, #0
	mov r1, ip
	strh r0, [r1]
	bl sub_804549C
	ldr r0, _0800758C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08007590
	strh r1, [r0]
	ldr r0, _08007594
	strh r1, [r0]
	ldr r0, _08007598
	strh r1, [r0]
	bl sub_8045434
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007568: .4byte 0x02024228
_0800756C: .4byte 0x02024238
_08007570: .4byte 0x02018400
_08007574: .4byte 0x0400000A
_08007578: .4byte 0x00001F09
_0800757C: .4byte 0x00001E02
_08007580: .4byte 0x04000208
_08007584: .4byte 0x04000004
_08007588: .4byte 0x00000C0A
_0800758C: .4byte 0x02024248
_08007590: .4byte 0x0202422C
_08007594: .4byte 0x0202424C
_08007598: .4byte 0x0202420C

	THUMB_FUNC_START sub_800759C
sub_800759C: @ 0x0800759C
	push {lr}
	ldr r0, _080075AC
	movs r1, #0x13
	bl sub_805D134
	pop {r0}
	bx r0
	.align 2, 0
_080075AC: .4byte 0x02020DE0

	THUMB_FUNC_START sub_80075B0
sub_80075B0: @ 0x080075B0
	push {lr}
	bl sub_8006958
	bl sub_8006B40
	bl sub_8006C60
	bl sub_8006E84
	bl sub_8007068
	bl sub_8007350
	bl sub_80454C8
	bl sub_80454F8
	bl sub_80454E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80075DC
sub_80075DC: @ 0x080075DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
_080075E8:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08007914
	adds r0, r0, r1
	lsls r1, r5, #6
	ldr r4, _08007918
	adds r1, r1, r4
	movs r2, #0x1e
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _080075E8
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r6, [r0]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r6, r0
	movs r5, #0
	ldr r0, _0800791C
	adds r7, r4, r0
	ldr r1, _08007920
	mov sb, r1
	ldr r2, _08007924
	mov sl, r2
	adds r3, r7, #0
	ldr r2, _08007928
_0800762E:
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r1, #0x19
	orrs r1, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _0800762E
	movs r5, #0
	ldr r2, _0800792C
	ldr r1, _08007930
_08007652:
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	mov r3, r8
	strh r3, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08007652
	movs r5, #0
	ldr r4, _0800792C
	movs r0, #0xf8
	lsls r0, r0, #7
	mov ip, r0
	movs r1, #0xf9
	lsls r1, r1, #7
	mov r8, r1
_0800767C:
	adds r1, r5, #3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r2, sb
	adds r3, r5, r2
	ldrb r2, [r3]
	adds r2, #0x5c
	orrs r2, r6
	mov r0, ip
	adds r0, #0x60
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	strh r2, [r0]
	ldrb r0, [r3]
	adds r0, #0x5e
	orrs r0, r6
	add r1, r8
	lsls r1, r1, #1
	adds r1, r1, r4
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0800767C
	movs r5, #0
_080076B2:
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_805B940
	adds r4, r0, #0
	adds r4, #2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_805B51C
	adds r0, #6
	lsls r0, r0, #0x18
	adds r1, r5, #0
	adds r1, #0x20
	orrs r1, r6
	lsrs r0, r0, #0x13
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r0, r3
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _080076B2
	movs r5, #0
_080076F0:
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_805B940
	adds r4, r0, #0
	adds r4, #0xd
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_805B51C
	adds r0, #1
	lsls r0, r0, #0x18
	adds r1, r5, #0
	adds r1, #0x34
	orrs r1, r6
	lsrs r0, r0, #0x13
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r0, r0, r2
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _080076F0
	movs r5, #0
_0800772E:
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_805B940
	adds r4, r0, #0
	adds r4, #0xd
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_805B51C
	adds r0, #6
	lsls r0, r0, #0x18
	adds r1, r5, #0
	adds r1, #0x48
	orrs r1, r6
	lsrs r0, r0, #0x13
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r0, r3
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _0800772E
	movs r5, #0
	ldr r4, _0800792C
	movs r3, #0xfc
	lsls r3, r3, #7
_08007772:
	adds r2, r5, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r5, #0
	adds r1, #0x6c
	orrs r1, r6
	adds r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	strh r1, [r0]
	adds r5, r2, #0
	cmp r5, #9
	bls _08007772
	movs r5, #0
	ldr r3, _0800792C
	ldr r2, _08007934
_08007792:
	adds r0, r5, #0
	adds r0, #0x16
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r1, #0x76
	orrs r1, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08007792
	mov r0, sl
	ldr r1, _08007938
	movs r2, #0x10
	bl CpuSet
	ldr r5, _08007920
	ldrb r0, [r5]
	adds r0, #1
	lsls r0, r0, #5
	ldr r4, _0800793C
	adds r0, r0, r4
	ldr r1, _08007940
	ldr r6, _08007944
	adds r2, r6, #0
	bl sub_8020A3C
	ldrb r0, [r5, #1]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08007948
	adds r2, r6, #0
	bl sub_8020A3C
	ldrb r0, [r5, #2]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _0800794C
	adds r2, r6, #0
	bl sub_8020A3C
	ldrb r0, [r5, #3]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08007950
	adds r2, r6, #0
	bl sub_8020A3C
	ldrb r0, [r5, #4]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08007954
	adds r2, r6, #0
	bl sub_8020A3C
	ldrb r0, [r5, #5]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08007958
	adds r2, r6, #0
	bl sub_8020A3C
	ldrb r0, [r5, #6]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _0800795C
	adds r2, r6, #0
	bl sub_8020A3C
	ldrb r0, [r5, #7]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08007960
	adds r2, r6, #0
	bl sub_8020A3C
	ldrb r0, [r5, #8]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08007964
	adds r2, r6, #0
	bl sub_8020A3C
	ldrb r0, [r5, #9]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08007968
	adds r2, r6, #0
	bl sub_8020A3C
	movs r0, #0xec
	lsls r0, r0, #4
	adds r0, r0, r4
	mov r8, r0
	ldr r1, _0800796C
	adds r2, r6, #0
	bl sub_8020A3C
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _08007970
	adds r2, r6, #0
	bl sub_8020A3C
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r1, _08007974
	ldr r5, _08007978
	adds r2, r5, #0
	bl sub_8020A3C
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r4, r3
	ldr r1, _0800797C
	adds r2, r5, #0
	bl sub_8020A3C
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, _08007980
	adds r2, r5, #0
	bl sub_8020A3C
	movs r2, #0x90
	lsls r2, r2, #4
	adds r0, r4, r2
	ldr r1, _08007984
	adds r2, r5, #0
	bl sub_8020A3C
	movs r3, #0xb8
	lsls r3, r3, #4
	adds r0, r4, r3
	ldr r1, _08007988
	ldr r1, [r1]
	adds r2, r6, #0
	bl sub_8020A3C
	movs r0, #0xd8
	lsls r0, r0, #4
	adds r4, r4, r0
	ldr r1, _0800798C
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020A3C
	ldr r1, _08007990
	mov r0, r8
	adds r2, r5, #0
	bl sub_8020A3C
	ldr r0, _08007994
	bl sub_80081DC
	bl sub_80079C4
	bl sub_8007AB8
	bl sub_8007BB0
	bl sub_8007CA0
	bl sub_8045690
	bl sub_80454E0
	ldr r0, _08007998
	bl sub_80081DC
	bl sub_8008220
	ldr r4, _0800799C
	movs r5, #2
	b _080079A4
	.align 2, 0
_08007914: .4byte 0x08088778
_08007918: .4byte 0x0200FC00
_0800791C: .4byte 0xFFFF0800
_08007920: .4byte 0x08DF811C
_08007924: .4byte 0x08088288
_08007928: .4byte 0x00007C20
_0800792C: .4byte 0x02000400
_08007930: .4byte 0x00007C40
_08007934: .4byte 0x00007E40
_08007938: .4byte 0x02000000
_0800793C: .4byte 0x0200C400
_08007940: .4byte 0x08088C28
_08007944: .4byte 0x00000901
_08007948: .4byte 0x08088C2C
_0800794C: .4byte 0x08088C30
_08007950: .4byte 0x08088C34
_08007954: .4byte 0x08088C38
_08007958: .4byte 0x08088C3C
_0800795C: .4byte 0x08088C40
_08007960: .4byte 0x08088C44
_08007964: .4byte 0x08088C48
_08007968: .4byte 0x08088C4C
_0800796C: .4byte 0x08088C50
_08007970: .4byte 0x08088C54
_08007974: .4byte 0x08088C58
_08007978: .4byte 0x00000801
_0800797C: .4byte 0x08088C90
_08007980: .4byte 0x08088D14
_08007984: .4byte 0x08088D9C
_08007988: .4byte 0x08E0CD14
_0800798C: .4byte 0x08088DCC
_08007990: .4byte 0x08088E14
_08007994: .4byte 0x08007EA9
_08007998: .4byte 0x08007DE5
_0800799C: .4byte 0x02020DFC
_080079A0:
	bl sub_8008220
_080079A4:
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080079A0
	movs r0, #0x38
	bl sub_8034F60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80079C4
sub_80079C4: @ 0x080079C4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r4, #0
	ldr r1, _08007A30
	mov r0, sp
	movs r2, #8
	bl sub_805D150
	movs r5, #0
	ldr r6, _08007A34
	ldr r7, _08007A38
_080079DA:
	ldr r0, _08007A3C
	ldr r2, [r0, #4]
	lsls r0, r5, #1
	mov r3, sp
	adds r1, r3, r0
	ldrh r0, [r2]
	ldrh r1, [r1]
	bl sub_805B51C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xa
	bl sub_805B940
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08007A44
	adds r2, r5, #3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0xfa
	lsls r1, r1, #7
	adds r3, r2, r1
	lsls r3, r3, #1
	adds r3, r3, r6
	adds r4, r0, r7
	ldrb r0, [r4]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r3, _08007A40
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r4]
	adds r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r4, #1
	b _08007AA0
	.align 2, 0
_08007A30: .4byte 0x08088E5A
_08007A34: .4byte 0x02000400
_08007A38: .4byte 0x08DF811C
_08007A3C: .4byte 0x08E0CD14
_08007A40: .4byte 0x00007D20
_08007A44:
	cmp r4, #1
	bne _08007A74
	adds r2, r5, #3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xfa
	lsls r0, r0, #7
	adds r3, r2, r0
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08007A70
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7]
	b _08007A98
	.align 2, 0
_08007A70: .4byte 0x00007D20
_08007A74:
	adds r2, r5, #3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xfa
	lsls r0, r0, #7
	adds r3, r2, r0
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7, #0xa]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08007AB4
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7, #0xa]
_08007A98:
	adds r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
_08007AA0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080079DA
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007AB4: .4byte 0x00007D20

	THUMB_FUNC_START sub_8007AB8
sub_8007AB8: @ 0x08007AB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	movs r4, #0
	ldr r1, _08007B28
	mov r0, sp
	movs r2, #0xa
	bl sub_805D150
	movs r5, #0
	ldr r6, _08007B2C
	ldr r7, _08007B30
_08007ACE:
	ldr r0, _08007B34
	ldr r2, [r0, #8]
	lsls r0, r5, #1
	mov r3, sp
	adds r1, r3, r0
	ldrh r0, [r2]
	ldrh r1, [r1]
	bl sub_805B51C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xa
	bl sub_805B940
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08007B3C
	adds r2, r5, #0
	adds r2, #0xe
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r1, _08007B38
	adds r3, r2, r1
	lsls r3, r3, #1
	adds r3, r3, r6
	adds r4, r0, r7
	ldrb r0, [r4]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	movs r3, #0xf9
	lsls r3, r3, #7
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r4]
	adds r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r4, #1
	b _08007B9A
	.align 2, 0
_08007B28: .4byte 0x08088E62
_08007B2C: .4byte 0x02000400
_08007B30: .4byte 0x08DF811C
_08007B34: .4byte 0x08E0CD14
_08007B38: .4byte 0x00007C60
_08007B3C:
	cmp r4, #1
	bne _08007B6C
	adds r2, r5, #0
	adds r2, #0xe
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08007B68
	adds r3, r2, r0
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	movs r1, #0xf9
	lsls r1, r1, #7
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7]
	b _08007B92
	.align 2, 0
_08007B68: .4byte 0x00007C60
_08007B6C:
	adds r2, r5, #0
	adds r2, #0xe
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08007BAC
	adds r3, r2, r0
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7, #0xa]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	movs r1, #0xf9
	lsls r1, r1, #7
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7, #0xa]
_08007B92:
	adds r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
_08007B9A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08007ACE
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007BAC: .4byte 0x00007C60

	THUMB_FUNC_START sub_8007BB0
sub_8007BB0: @ 0x08007BB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	movs r4, #0
	ldr r1, _08007C18
	mov r0, sp
	movs r2, #0xa
	bl sub_805D150
	movs r5, #0
	ldr r6, _08007C1C
	ldr r7, _08007C20
_08007BC6:
	ldr r2, _08007C24
	lsls r0, r5, #1
	add r0, sp
	ldrh r1, [r0]
	ldr r0, [r2]
	bl sub_805B51C
	movs r1, #0xa
	bl sub_805B940
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08007C2C
	adds r2, r5, #0
	adds r2, #0xe
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0xfa
	lsls r1, r1, #7
	adds r3, r2, r1
	lsls r3, r3, #1
	adds r3, r3, r6
	adds r4, r0, r7
	ldrb r0, [r4]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _08007C28
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r4]
	adds r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r4, #1
	b _08007C8A
	.align 2, 0
_08007C18: .4byte 0x08088E62
_08007C1C: .4byte 0x02000400
_08007C20: .4byte 0x08DF811C
_08007C24: .4byte 0x02024254
_08007C28: .4byte 0x00007D20
_08007C2C:
	cmp r4, #1
	bne _08007C5C
	adds r2, r5, #0
	adds r2, #0xe
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0xfa
	lsls r1, r1, #7
	adds r3, r2, r1
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _08007C58
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7]
	b _08007C82
	.align 2, 0
_08007C58: .4byte 0x00007D20
_08007C5C:
	adds r2, r5, #0
	adds r2, #0xe
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0xfa
	lsls r1, r1, #7
	adds r3, r2, r1
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7, #0xa]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _08007C9C
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7, #0xa]
_08007C82:
	adds r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
_08007C8A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08007BC6
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007C9C: .4byte 0x00007D20

	THUMB_FUNC_START sub_8007CA0
sub_8007CA0: @ 0x08007CA0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x68
	movs r4, #0
	ldr r1, _08007D20
	mov r0, sp
	movs r2, #0x68
	bl sub_805D150
	movs r5, #0
	ldr r6, _08007D24
	ldr r7, _08007D28
	movs r0, #0x14
	mov sb, r0
	ldr r1, _08007D2C
	adds r1, r1, r6
	mov r8, r1
_08007CC6:
	ldr r0, _08007D30
	ldr r1, [r0, #0x18]
	lsls r0, r5, #3
	mov r3, sp
	adds r2, r3, r0
	ldr r0, [r1]
	ldr r1, [r1, #4]
	ldr r3, [r2, #4]
	ldr r2, [r2]
	bl sub_805B144
	movs r2, #0xa
	movs r3, #0
	bl sub_805B594
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08007D3C
	adds r2, r5, #0
	adds r2, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r1, _08007D34
	adds r3, r2, r1
	lsls r3, r3, #1
	adds r3, r3, r6
	adds r4, r0, r7
	ldrb r0, [r4]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r3, _08007D38
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r4]
	adds r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r4, #1
	b _08007DC0
	.align 2, 0
_08007D20: .4byte 0x08088E6C
_08007D24: .4byte 0x02000400
_08007D28: .4byte 0x08DF811C
_08007D2C: .4byte 0x0000FCA8
_08007D30: .4byte 0x08E0CD14
_08007D34: .4byte 0x00007E20
_08007D38: .4byte 0x00007E40
_08007D3C:
	cmp r4, #1
	bne _08007D70
	adds r2, r5, #0
	adds r2, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08007D68
	adds r3, r2, r0
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08007D6C
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7]
	b _08007DB8
	.align 2, 0
_08007D68: .4byte 0x00007E20
_08007D6C: .4byte 0x00007E40
_08007D70:
	cmp r5, #0xc
	bne _08007D94
	ldr r2, _08007D90
	add r2, sb
	lsls r2, r2, #1
	adds r2, r6, r2
	ldrb r0, [r7]
	adds r0, #1
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r7]
	adds r0, #3
	mov r2, r8
	b _08007DBA
	.align 2, 0
_08007D90: .4byte 0x00007E20
_08007D94:
	adds r2, r5, #0
	adds r2, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08007DDC
	adds r3, r2, r0
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7, #0xa]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08007DE0
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7, #0xa]
_08007DB8:
	adds r0, #3
_08007DBA:
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
_08007DC0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xc
	bhi _08007DCC
	b _08007CC6
_08007DCC:
	add sp, #0x68
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007DDC: .4byte 0x00007E20
_08007DE0: .4byte 0x00007E40

	THUMB_FUNC_START sub_8007DE4
sub_8007DE4: @ 0x08007DE4
	push {r4, lr}
	ldr r1, _08007E6C
	ldr r2, _08007E70
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08007E74
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08007E78
	movs r1, #1
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	ldr r0, _08007E7C
	movs r4, #8
	strh r4, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xd8
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08007E80
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08007E84
	strh r1, [r0]
	ldr r0, _08007E88
	strh r1, [r0]
	ldr r0, _08007E8C
	strh r1, [r0]
	bl sub_8045434
	ldr r1, _08007E90
	ldr r2, _08007E94
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	subs r2, #0x78
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #2
	adds r2, #0xa0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08007E98
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08007E9C
	movs r1, #0x2c
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r4, [r0]
	ldr r1, _08007EA0
	movs r0, #0xe8
	strh r0, [r1]
	ldr r1, _08007EA4
	movs r0, #6
	strh r0, [r1]
	bl sub_804549C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007E6C: .4byte 0x0400000C
_08007E70: .4byte 0x00001F0E
_08007E74: .4byte 0x00001E03
_08007E78: .4byte 0x04000208
_08007E7C: .4byte 0x04000004
_08007E80: .4byte 0x0202424C
_08007E84: .4byte 0x0202420C
_08007E88: .4byte 0x02024204
_08007E8C: .4byte 0x02024218
_08007E90: .4byte 0x04000040
_08007E94: .4byte 0x000008C7
_08007E98: .4byte 0x00007F97
_08007E9C: .4byte 0x04000048
_08007EA0: .4byte 0x02024228
_08007EA4: .4byte 0x02024230

	THUMB_FUNC_START sub_8007EA8
sub_8007EA8: @ 0x08007EA8
	push {r4, lr}
	ldr r1, _08007F30
	ldr r2, _08007F34
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08007F38
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08007F3C
	movs r1, #1
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	ldr r0, _08007F40
	movs r4, #8
	strh r4, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xd8
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08007F44
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08007F48
	strh r1, [r0]
	ldr r0, _08007F4C
	strh r1, [r0]
	ldr r0, _08007F50
	strh r1, [r0]
	bl sub_8045434
	ldr r1, _08007F54
	ldr r2, _08007F58
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	subs r2, #0x78
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #2
	adds r2, #0xa0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08007F5C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08007F60
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	ldr r1, _08007F64
	movs r0, #0xe8
	strh r0, [r1]
	ldr r1, _08007F68
	movs r0, #6
	strh r0, [r1]
	bl sub_804549C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007F30: .4byte 0x0400000C
_08007F34: .4byte 0x00001F0E
_08007F38: .4byte 0x00001E03
_08007F3C: .4byte 0x04000208
_08007F40: .4byte 0x04000004
_08007F44: .4byte 0x0202424C
_08007F48: .4byte 0x0202420C
_08007F4C: .4byte 0x02024204
_08007F50: .4byte 0x02024218
_08007F54: .4byte 0x04000040
_08007F58: .4byte 0x000008C7
_08007F5C: .4byte 0x00007F97
_08007F60: .4byte 0x04000048
_08007F64: .4byte 0x02024228
_08007F68: .4byte 0x02024230

	THUMB_FUNC_START sub_8007F6C
sub_8007F6C: @ 0x08007F6C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r6, _08007FB4
	lsls r4, r1, #5
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r0, r3
	adds r4, r4, r0
	lsls r4, r4, #1
	adds r4, r4, r6
	ldr r3, _08007FB8
	adds r2, r2, r3
	ldrb r3, [r2]
	adds r3, #1
	ldrh r5, [r4]
	orrs r3, r5
	strh r3, [r4]
	adds r1, #1
	lsls r1, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrb r0, [r2]
	adds r0, #3
	ldrh r2, [r1]
	orrs r0, r2
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08007FB4: .4byte 0x02000400
_08007FB8: .4byte 0x08DF811C

	THUMB_FUNC_START sub_8007FBC
sub_8007FBC: @ 0x08007FBC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _08007FE8
	lsrs r1, r1, #0x13
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r0, r3
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	adds r2, #0x76
	ldrh r0, [r1]
	orrs r2, r0
	strh r2, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007FE8: .4byte 0x02000400

	THUMB_FUNC_START sub_08007FEC
sub_08007FEC: @ 0x08007FEC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsls r2, r2, #0x10
	ldr r3, _08008008
	lsrs r2, r2, #0x11
	lsrs r1, r1, #0x13
	adds r2, r2, r1
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r3
	ldrh r0, [r2]
	bx lr
	.align 2, 0
_08008008: .4byte 0x02000400

	THUMB_FUNC_START sub_800800C
sub_800800C: @ 0x0800800C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsls r2, r2, #0x10
	ldr r4, _0800802C
	lsrs r2, r2, #0x11
	lsrs r1, r1, #0x13
	adds r2, r2, r1
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r4
	strh r3, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800802C: .4byte 0x02000400

	THUMB_FUNC_START sub_8008030
sub_8008030: @ 0x08008030
	push {lr}
	bl sub_8008040
	bl sub_800807C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8008040
sub_8008040: @ 0x08008040
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _08008070
	mov r1, sp
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0, #4]
	ldr r1, _08008074
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	str r1, [r0, #4]
	ldr r1, _08008078
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08008070: .4byte 0x040000D4
_08008074: .4byte 0x85010000
_08008078: .4byte 0x85001F80

	THUMB_FUNC_START sub_800807C
sub_800807C: @ 0x0800807C
	push {lr}
	bl sub_8008090
	bl sub_80080B8
	bl sub_800811C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8008090
sub_8008090: @ 0x08008090
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080080B0
	mov r0, sp
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080080B4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_080080B0: .4byte 0x040000D4
_080080B4: .4byte 0x8100C000

	THUMB_FUNC_START sub_80080B8
sub_80080B8: @ 0x080080B8
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
_080080CE:
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
	bge _080080CE
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800811C
sub_800811C: @ 0x0800811C
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0800813C
	mov r0, sp
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08008140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_0800813C: .4byte 0x040000D4
_08008140: .4byte 0x81000200

	THUMB_FUNC_START sub_8008144
sub_8008144: @ 0x08008144
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	adds r1, r0, #0
	cmp r0, #0
	bge _08008156
	adds r1, #0xff
_08008156:
	lsls r0, r1, #8
	asrs r0, r0, #0x10
	bx lr

	THUMB_FUNC_START sub_800815C
sub_800815C: @ 0x0800815C
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_805AF28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8008174
sub_8008174: @ 0x08008174
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_805AF28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800818C
sub_800818C: @ 0x0800818C
	push {r4, lr}
	ldr r0, _080081B8
	ldr r1, _080081BC
	ldr r2, _080081C0
	bl CpuSet
	bl sub_80081F4
	ldr r1, _080081C4
	ldr r0, _080081C8
	str r0, [r1]
	ldr r0, _080081CC
	ldr r4, _080081D0
	ldr r2, _080081D4
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _080081D8
	str r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080081B8: .4byte 0x08089154
_080081BC: .4byte 0x03000C00
_080081C0: .4byte 0x0400000E
_080081C4: .4byte 0x0201CB20
_080081C8: .4byte 0x0800842D
_080081CC: .4byte 0x080000FC
_080081D0: .4byte 0x03000400
_080081D4: .4byte 0x04000200
_080081D8: .4byte 0x03007FFC

	THUMB_FUNC_START sub_80081DC
sub_80081DC: @ 0x080081DC
	ldr r1, _080081EC
	str r0, [r1]
	cmp r0, #0
	bne _080081E8
	ldr r0, _080081F0
	str r0, [r1]
_080081E8:
	bx lr
	.align 2, 0
_080081EC: .4byte 0x0201CB20
_080081F0: .4byte 0x0800842D

	THUMB_FUNC_START sub_80081F4
sub_80081F4: @ 0x080081F4
	ldr r2, _08008200
	ldrh r1, [r2]
	ldr r0, _08008204
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_08008200: .4byte 0x02020E00
_08008204: .4byte 0x0000FFFE

	THUMB_FUNC_START sub_8008208
sub_8008208: @ 0x08008208
	ldr r0, _08008218
	movs r2, #1
	strh r2, [r0]
	ldr r1, _0800821C
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_08008218: .4byte 0x04000202
_0800821C: .4byte 0x02020E00

	THUMB_FUNC_START sub_8008220
sub_8008220: @ 0x08008220
	push {r4, r5, lr}
	ldr r0, _0800824C
	ldrh r2, [r0]
	ldr r1, _08008250
	ands r1, r2
	strh r1, [r0]
	ldr r5, _08008254
	ldr r4, _08008258
	adds r2, r0, #0
	movs r3, #1
_08008234:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08008234
	str r4, [r5]
	bl sub_80082E8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800824C: .4byte 0x02020E00
_08008250: .4byte 0x0000FFFE
_08008254: .4byte 0x0201CB20
_08008258: .4byte 0x0800842D

	THUMB_FUNC_START sub_800825C
sub_800825C: @ 0x0800825C
	ldr r2, _08008268
	ldrh r1, [r2]
	ldr r0, _0800826C
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_08008268: .4byte 0x02020E00
_0800826C: .4byte 0x0000FFFD

	THUMB_FUNC_START sub_8008270
sub_8008270: @ 0x08008270
	ldr r0, _08008280
	movs r2, #2
	strh r2, [r0]
	ldr r1, _08008284
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_08008280: .4byte 0x04000202
_08008284: .4byte 0x02020E00

	THUMB_FUNC_START sub_8008288
sub_8008288: @ 0x08008288
	push {r4, r5, lr}
	ldr r0, _080082B0
	ldrh r2, [r0]
	ldr r1, _080082B4
	ands r1, r2
	strh r1, [r0]
	ldr r5, _080082B8
	ldr r4, _080082BC
	adds r2, r0, #0
	movs r3, #2
_0800829C:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800829C
	str r4, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080082B0: .4byte 0x02020E00
_080082B4: .4byte 0x0000FFFD
_080082B8: .4byte 0x0201CB24
_080082BC: .4byte 0x0800842D

	THUMB_FUNC_START sub_80082C0
sub_80082C0: @ 0x080082C0
	ldr r0, _080082D8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080082DC
	strh r1, [r0]
	ldr r0, _080082E0
	strh r1, [r0]
	ldr r1, _080082E4
	movs r0, #0xa
	strb r0, [r1]
	bx lr
	.align 2, 0
_080082D8: .4byte gKeyState
_080082DC: .4byte 0x02020DFC
_080082E0: .4byte 0x02020DF4
_080082E4: .4byte 0x02020E04

	THUMB_FUNC_START sub_80082E8
sub_80082E8: @ 0x080082E8
	push {r4, lr}
	ldr r0, _08008328
	ldrh r0, [r0]
	mvns r0, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, _0800832C
	ldr r1, _08008330
	ldrh r2, [r1]
	adds r0, r4, #0
	bics r0, r2
	strh r0, [r3]
	ldrh r0, [r1]
	adds r3, r1, #0
	cmp r0, r4
	bne _0800833C
	ldr r2, _08008334
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08008338
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08008346
	movs r0, #3
	strb r0, [r1]
	ldrh r0, [r3]
	strh r0, [r2]
	b _08008346
	.align 2, 0
_08008328: .4byte 0x04000130
_0800832C: .4byte 0x02020DFC
_08008330: .4byte gKeyState
_08008334: .4byte 0x02020DF4
_08008338: .4byte 0x02020E04
_0800833C:
	ldr r0, _08008350
	strh r4, [r0]
	ldr r1, _08008354
	movs r0, #0xa
	strb r0, [r1]
_08008346:
	strh r4, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008350: .4byte 0x02020DF4
_08008354: .4byte 0x02020E04

	THUMB_FUNC_START sub_8008358
sub_8008358: @ 0x08008358
	push {r4, r5, r6, r7, lr}
	adds r2, r1, #0
	adds r4, r0, #0
	asrs r5, r0, #0x1f
	asrs r3, r2, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_805B0D4
	adds r5, r1, #0
	adds r4, r0, #0
	adds r7, r5, #0
	adds r6, r4, #0
	cmp r5, #0
	bge _0800837E
	movs r6, #0xff
	movs r7, #0
	adds r6, r6, r4
	adcs r7, r5
_0800837E:
	lsls r3, r7, #0x18
	lsrs r2, r6, #8
	adds r0, r3, #0
	orrs r0, r2
	asrs r1, r7, #8
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8008394
sub_8008394: @ 0x08008394
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r2, r1, #0
	asrs r5, r4, #0x1f
	lsrs r0, r4, #0x18
	mov r8, r0
	lsls r6, r5, #8
	mov r1, r8
	orrs r1, r6
	lsls r0, r4, #8
	asrs r3, r2, #0x1f
	bl sub_805AAF4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80083BC
sub_80083BC: @ 0x080083BC
	push {r4, r5, r6, r7, lr}
	ldr r6, _08008400
	movs r7, #0
	strh r7, [r6]
	ldr r5, _08008404
	ldrh r0, [r5]
	ldr r1, _08008408
	ands r1, r0
	strh r1, [r5]
	movs r4, #1
	strh r4, [r6]
	bl sub_8058F68
	bl sub_8034E48
	ldr r0, _0800840C
	ldr r0, [r0]
	cmp r0, #0
	beq _080083E6
	bl sub_805AAB8
_080083E6:
	bl sub_8008208
	bl sub_805963C
	strh r7, [r6]
	ldrh r0, [r5]
	orrs r0, r4
	strh r0, [r5]
	strh r4, [r6]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008400: .4byte 0x04000208
_08008404: .4byte 0x04000200
_08008408: .4byte 0x0000FFFE
_0800840C: .4byte 0x0201CB20

	THUMB_FUNC_START sub_8008410
sub_8008410: @ 0x08008410
	push {lr}
	ldr r0, _08008428
	ldr r0, [r0]
	cmp r0, #0
	beq _0800841E
	bl sub_805AAB8
_0800841E:
	bl sub_8008270
	pop {r0}
	bx r0
	.align 2, 0
_08008428: .4byte 0x0201CB24
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8008430
sub_8008430: @ 0x08008430
	push {r4, r5, r6, r7, lr}
	ldr r5, _08008468
	movs r7, #0
	strh r7, [r5]
	ldr r4, _0800846C
	ldrh r0, [r4]
	ldr r1, _08008470
	ands r1, r0
	strh r1, [r4]
	movs r6, #1
	strh r6, [r5]
	ldr r0, _08008474
	ldr r0, [r0]
	cmp r0, #0
	beq _08008452
	bl sub_805AAB8
_08008452:
	bl sub_80084A4
	strh r7, [r5]
	ldrh r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r4]
	strh r6, [r5]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008468: .4byte 0x04000208
_0800846C: .4byte 0x04000200
_08008470: .4byte 0x0000FF7F
_08008474: .4byte 0x0201CB28

	THUMB_FUNC_START sub_8008478
sub_8008478: @ 0x08008478
	ldr r1, _08008488
	str r0, [r1]
	cmp r0, #0
	bne _08008484
	ldr r0, _0800848C
	str r0, [r1]
_08008484:
	bx lr
	.align 2, 0
_08008488: .4byte 0x0201CB28
_0800848C: .4byte 0x0800842D

	THUMB_FUNC_START sub_8008490
sub_8008490: @ 0x08008490
	ldr r2, _0800849C
	ldrh r1, [r2]
	ldr r0, _080084A0
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0800849C: .4byte 0x02020E00
_080084A0: .4byte 0x0000FF7F

	THUMB_FUNC_START sub_80084A4
sub_80084A4: @ 0x080084A4
	ldr r0, _080084B4
	movs r2, #0x80
	strh r2, [r0]
	ldr r1, _080084B8
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_080084B4: .4byte 0x04000202
_080084B8: .4byte 0x02020E00

	THUMB_FUNC_START sub_80084BC
sub_80084BC: @ 0x080084BC
	push {r4, r5, r6, r7, lr}
	ldr r5, _080084F4
	movs r7, #0
	strh r7, [r5]
	ldr r4, _080084F8
	ldrh r0, [r4]
	ldr r1, _080084FC
	ands r1, r0
	strh r1, [r4]
	movs r6, #1
	strh r6, [r5]
	ldr r0, _08008500
	ldr r0, [r0]
	cmp r0, #0
	beq _080084DE
	bl sub_805AAB8
_080084DE:
	bl sub_8008530
	strh r7, [r5]
	ldrh r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r4]
	strh r6, [r5]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080084F4: .4byte 0x04000208
_080084F8: .4byte 0x04000200
_080084FC: .4byte 0x0000FFBF
_08008500: .4byte 0x0201CB2C

	THUMB_FUNC_START sub_8008504
sub_8008504: @ 0x08008504
	ldr r1, _08008514
	str r0, [r1]
	cmp r0, #0
	bne _08008510
	ldr r0, _08008518
	str r0, [r1]
_08008510:
	bx lr
	.align 2, 0
_08008514: .4byte 0x0201CB2C
_08008518: .4byte 0x0800842D

	THUMB_FUNC_START sub_800851C
sub_800851C: @ 0x0800851C
	ldr r2, _08008528
	ldrh r1, [r2]
	ldr r0, _0800852C
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_08008528: .4byte 0x02020E00
_0800852C: .4byte 0x0000FFBF

	THUMB_FUNC_START sub_8008530
sub_8008530: @ 0x08008530
	ldr r0, _08008540
	movs r2, #0x40
	strh r2, [r0]
	ldr r1, _08008544
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_08008540: .4byte 0x04000202
_08008544: .4byte 0x02020E00

	THUMB_FUNC_START sub_8008548
sub_8008548: @ 0x08008548
	push {r4, lr}
	movs r4, #1
	bl sub_800882C
_08008550:
	bl sub_8008644
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x10
	beq _080085C4
	cmp r1, #0x10
	bgt _0800857C
	cmp r1, #2
	beq _080085F6
	cmp r1, #2
	bgt _08008572
	cmp r1, #0
	beq _0800862A
	cmp r1, #1
	beq _080085EA
	b _0800862A
_08008572:
	cmp r1, #4
	beq _0800861A
	cmp r1, #8
	beq _08008608
	b _0800862A
_0800857C:
	cmp r1, #0x80
	beq _080085B8
	cmp r1, #0x80
	bgt _0800858E
	cmp r1, #0x20
	beq _080085CA
	cmp r1, #0x40
	beq _080085AC
	b _0800862A
_0800858E:
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	beq _080085BE
	cmp r1, r0
	bgt _080085A2
	subs r0, #0x40
	cmp r1, r0
	beq _080085B2
	b _0800862A
_080085A2:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _080085DA
	b _0800862A
_080085AC:
	bl sub_800876C
	b _080085DE
_080085B2:
	bl sub_8008780
	b _080085DE
_080085B8:
	bl sub_8008794
	b _080085DE
_080085BE:
	bl sub_80087A8
	b _080085DE
_080085C4:
	bl sub_80087BC
	b _080085CE
_080085CA:
	bl sub_80087D0
_080085CE:
	bl sub_800ABD0
	movs r0, #6
	bl sub_800AA58
	b _0800863A
_080085DA:
	bl sub_8008804
_080085DE:
	bl sub_800ABB4
	movs r0, #4
	bl sub_800AA58
	b _0800863A
_080085EA:
	bl sub_8008854
	movs r0, #7
	bl sub_800AA58
	b _0800863A
_080085F6:
	bl sub_80087E4
	movs r4, #0
	bl sub_0800ABA4
	movs r0, #2
	bl sub_800AA58
	b _0800863A
_08008608:
	bl sub_800A6D0
	movs r0, #8
	bl sub_800A3D8
	movs r0, #8
	bl sub_800AA58
	b _0800863A
_0800861A:
	bl sub_8008818
	movs r0, #9
	bl sub_800AA58
	bl sub_800ABE4
	b _0800863A
_0800862A:
	movs r0, #5
	bl sub_800A3D8
	bl sub_0800ABE0
	movs r0, #5
	bl sub_800AA58
_0800863A:
	cmp r4, #0
	bne _08008550
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8008644
sub_8008644: @ 0x08008644
	push {r4, r5, lr}
	movs r4, #0
	bl sub_802612C
	movs r2, #1
	movs r1, #0
	ldr r0, _080086CC
	ldrh r3, [r0]
_08008654:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0800865E
	adds r4, r0, #0
_0800865E:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _08008654
	movs r2, #0x10
	movs r1, #0
	ldr r5, _080086D0
	ldrh r3, [r5]
_08008674:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0800867E
	adds r4, r0, #0
_0800867E:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08008674
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080086A8
	ldr r0, _080086D4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080086A8
	movs r4, #0xa0
	lsls r4, r4, #1
_080086A8:
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080086C4
	ldr r0, _080086D4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080086C4
	movs r4, #0xc0
	lsls r4, r4, #1
_080086C4:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080086CC: .4byte 0x02020DFC
_080086D0: .4byte 0x02021DCC
_080086D4: .4byte gKeyState

	THUMB_FUNC_START sub_80086D8
sub_80086D8: @ 0x080086D8
	push {r4, r5, lr}
	movs r4, #0
	movs r2, #1
	movs r1, #0
	ldr r5, _08008760
	ldr r0, _08008764
	ldrh r3, [r0]
_080086E6:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _080086F0
	adds r4, r0, #0
_080086F0:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _080086E6
	movs r2, #0x10
	movs r1, #0
	ldr r0, _08008760
	ldrh r3, [r0]
_08008706:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08008710
	adds r4, r0, #0
_08008710:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08008706
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800873A
	ldr r0, _08008768
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800873A
	movs r4, #0xa0
	lsls r4, r4, #1
_0800873A:
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008756
	ldr r0, _08008768
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08008756
	movs r4, #0xc0
	lsls r4, r4, #1
_08008756:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08008760: .4byte 0x02020DF4
_08008764: .4byte 0x02020DFC
_08008768: .4byte gKeyState

	THUMB_FUNC_START sub_800876C
sub_800876C: @ 0x0800876C
	push {lr}
	movs r0, #3
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8008780
sub_8008780: @ 0x08008780
	push {lr}
	movs r0, #5
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8008794
sub_8008794: @ 0x08008794
	push {lr}
	movs r0, #2
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80087A8
sub_80087A8: @ 0x080087A8
	push {lr}
	movs r0, #4
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80087BC
sub_80087BC: @ 0x080087BC
	push {lr}
	movs r0, #7
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80087D0
sub_80087D0: @ 0x080087D0
	push {lr}
	movs r0, #8
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80087E4
sub_80087E4: @ 0x080087E4
	push {lr}
	movs r0, #9
	bl sub_8008F88
	movs r0, #1
	bl sub_800A3D8
	movs r0, #8
	bl sub_801DA7C
	movs r0, #0x38
	bl sub_8034F60
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8008804
sub_8008804: @ 0x08008804
	push {lr}
	movs r0, #6
	bl sub_8008F88
	movs r0, #4
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8008818
sub_8008818: @ 0x08008818
	push {lr}
	movs r0, #0xa
	bl sub_8008F88
	movs r0, #7
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800882C
sub_800882C: @ 0x0800882C
	push {lr}
	bl sub_80090B8
	movs r0, #0
	bl sub_800A3D8
	movs r0, #2
	bl sub_800A3D8
	movs r0, #1
	bl sub_800AA58
	bl sub_800ABA8
	movs r0, #3
	bl sub_800AA58
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8008854
sub_8008854: @ 0x08008854
	push {r4, lr}
	ldr r0, _0800888C
	movs r1, #0
	strb r1, [r0, #4]
	bl sub_8009364
	bl sub_80089EC
	bl sub_8045658
	ldr r0, _08008890
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0x37
	bl sub_8034F60
	movs r4, #1
_0800887A:
	bl sub_80086D8
	cmp r0, #2
	beq _080088E0
	cmp r0, #2
	bgt _08008894
	cmp r0, #1
	beq _080088AA
	b _080088D8
	.align 2, 0
_0800888C: .4byte 0x02020E10
_08008890: .4byte 0x08008A5D
_08008894:
	cmp r0, #0x40
	beq _0800889E
	cmp r0, #0x80
	beq _080088A4
	b _080088D8
_0800889E:
	bl sub_80088F0
	b _080088DC
_080088A4:
	bl sub_8008924
	b _080088DC
_080088AA:
	ldr r0, _080088BC
	ldrb r0, [r0, #4]
	cmp r0, #1
	beq _080088CC
	cmp r0, #1
	bgt _080088C0
	cmp r0, #0
	beq _080088C6
	b _080088DC
	.align 2, 0
_080088BC: .4byte 0x02020E10
_080088C0:
	cmp r0, #2
	beq _080088D2
	b _080088DC
_080088C6:
	bl sub_8008958
	b _080088DC
_080088CC:
	bl sub_80089B4
	b _080088DC
_080088D2:
	bl sub_80089D0
	b _080088DC
_080088D8:
	bl sub_8008220
_080088DC:
	cmp r4, #0
	bne _0800887A
_080088E0:
	movs r0, #0x38
	bl sub_8034F60
	bl sub_8008A48
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80088F0
sub_80088F0: @ 0x080088F0
	push {lr}
	ldr r2, _08008918
	ldr r1, _0800891C
	ldrb r0, [r2, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #4]
	bl sub_80089EC
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _08008920
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_08008918: .4byte 0x02020E10
_0800891C: .4byte 0x08DF813C
_08008920: .4byte 0x080454C9

	THUMB_FUNC_START sub_8008924
sub_8008924: @ 0x08008924
	push {lr}
	ldr r2, _0800894C
	ldr r1, _08008950
	ldrb r0, [r2, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #4]
	bl sub_80089EC
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _08008954
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0800894C: .4byte 0x02020E10
_08008950: .4byte 0x08DF813F
_08008954: .4byte 0x080454C9

	THUMB_FUNC_START sub_8008958
sub_8008958: @ 0x08008958
	push {lr}
	movs r0, #2
	bl sub_800901C
	adds r2, r0, #0
	ldr r0, _080089AC
	movs r1, #0
	strh r2, [r0]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	bl sub_800B538
	movs r0, #0x37
	bl sub_8034F60
	bl sub_801F6B0
	movs r0, #0
	bl sub_800A3D8
	movs r0, #2
	bl sub_800A3D8
	movs r0, #1
	bl sub_800AA58
	bl sub_800ABA8
	bl sub_8009364
	bl sub_80089EC
	ldr r0, _080089B0
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045658
	pop {r0}
	bx r0
	.align 2, 0
_080089AC: .4byte 0x02021AC0
_080089B0: .4byte 0x08008A5D

	THUMB_FUNC_START sub_80089B4
sub_80089B4: @ 0x080089B4
	push {lr}
	movs r0, #7
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	bl sub_800ABD0
	movs r0, #6
	bl sub_800AA58
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80089D0
sub_80089D0: @ 0x080089D0
	push {lr}
	movs r0, #8
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	bl sub_800ABD0
	movs r0, #6
	bl sub_800AA58
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80089EC
sub_80089EC: @ 0x080089EC
	push {r4, r5, lr}
	ldr r3, _08008A30
	ldr r2, _08008A34
	ldr r5, _08008A38
	ldrb r0, [r5, #4]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _08008A3C
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _08008A40
	str r0, [r3, #4]
	ldrb r0, [r5, #4]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _08008A44
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008A30: .4byte 0x02018430
_08008A34: .4byte 0x08DF8142
_08008A38: .4byte 0x02020E10
_08008A3C: .4byte 0x08DF8145
_08008A40: .4byte 0x0000C120
_08008A44: .4byte 0x40000800

	THUMB_FUNC_START sub_8008A48
sub_8008A48: @ 0x08008A48
	ldr r1, _08008A58
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08008A58: .4byte 0x02018430

	THUMB_FUNC_START sub_8008A5C
sub_8008A5C: @ 0x08008A5C
	push {lr}
	bl sub_80454E0
	bl sub_80454C8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xbf
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x52
	movs r0, #6
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa
	strh r0, [r1]
	ldr r2, _08008A8C
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08008A8C: .4byte 0x04000050

	THUMB_FUNC_START sub_8008A90
sub_8008A90: @ 0x08008A90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r1, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r1, #0xeb
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08008B18
	ldr r6, _08008B0C
	ldr r5, _08008B10
	ldrb r0, [r5]
	lsls r0, r0, #2
	lsls r4, r3, #2
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r0, r6
	ldr r0, [r0]
	adds r1, r7, #0
	movs r2, #0x20
	bl CpuSet
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, #0x80
	adds r1, r7, #0
	adds r1, #0x40
	movs r2, #0x20
	bl CpuSet
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, #0x40
	ldr r2, _08008B14
	mov r8, r2
	ldr r1, [r2]
	movs r2, #0x20
	bl CpuSet
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, #0xc0
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0x40
	movs r2, #0x20
	bl CpuSet
	b _08008B32
	.align 2, 0
_08008B0C: .4byte 0x08DFA3A8
_08008B10: .4byte 0x02021CF8
_08008B14: .4byte 0x0201CB30
_08008B18:
	ldr r2, _08008B3C
	ldr r1, _08008B40
	lsls r0, r3, #2
	adds r0, r0, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r7, #0
	movs r2, #0x40
	bl CpuSet
_08008B32:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008B3C: .4byte 0x08DFA3A8
_08008B40: .4byte 0x02021CF8

	THUMB_FUNC_START sub_8008B44
sub_8008B44: @ 0x08008B44
	push {r4, r5, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r4, r2, #0
	adds r0, r2, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08008B6C
	ldr r1, _08008B84
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08008B88
	ldr r1, [r1]
	movs r2, #0x10
	bl CpuSet
_08008B6C:
	ldr r0, _08008B84
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r1, r5, #0
	movs r2, #0x10
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008B84: .4byte 0x08DFA348
_08008B88: .4byte 0x0201CB34

	THUMB_FUNC_START sub_8008B8C
sub_8008B8C: @ 0x08008B8C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08008BB4
	str r1, [r2]
	ldr r4, _08008BB8
	ldr r3, _08008BBC
	lsls r2, r0, #2
	adds r2, r2, r0
	ldrb r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #2
	adds r2, r2, r4
	ldr r0, [r2]
	movs r2, #0x40
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008BB4: .4byte 0x0201CB30
_08008BB8: .4byte 0x08DFA5B8
_08008BBC: .4byte 0x02021CF8

	THUMB_FUNC_START sub_8008BC0
sub_8008BC0: @ 0x08008BC0
	push {lr}
	lsls r0, r0, #0x18
	ldr r2, _08008BDC
	str r1, [r2]
	ldr r2, _08008BE0
	lsrs r0, r0, #0x16
	adds r0, r0, r2
	ldr r0, [r0]
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08008BDC: .4byte 0x0201CB34
_08008BE0: .4byte 0x08DFA588

	THUMB_FUNC_START sub_8008BE4
sub_8008BE4: @ 0x08008BE4
	push {lr}
	adds r1, r0, #0
	ldr r0, _08008BF4
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08008BF4: .4byte 0x0808E310

	THUMB_FUNC_START sub_8008BF8
sub_8008BF8: @ 0x08008BF8
	push {lr}
	adds r1, r0, #0
	ldr r0, _08008C08
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08008C08: .4byte 0x0808ECD0

	THUMB_FUNC_START sub_8008C0C
sub_8008C0C: @ 0x08008C0C
	push {lr}
	adds r1, r0, #0
	ldr r0, _08008C1C
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08008C1C: .4byte 0x0808E330

	THUMB_FUNC_START sub_8008C20
sub_8008C20: @ 0x08008C20
	push {lr}
	adds r1, r0, #0
	ldr r0, _08008C30
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08008C30: .4byte 0x0808E350

	THUMB_FUNC_START sub_8008C34
sub_8008C34: @ 0x08008C34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08008C84
	ldr r1, [r0, #4]
	ldr r0, [r0]
	lsls r3, r1, #0x1f
	lsrs r2, r0, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r1, #1
	bl sub_8026F54
	movs r4, #0
	ldr r5, _08008C88
	ldrh r0, [r5]
	cmp r0, #0
	beq _08008CA0
	mov r8, r5
	movs r0, #0xc8
	lsls r0, r0, #2
	mov ip, r0
	movs r7, #1
	ldr r6, _08008C8C
_08008C64:
	lsls r0, r4, #1
	mov r2, r8
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, ip
	bhi _08008C94
	ldrh r0, [r1]
	adds r1, r0, r6
	ldrb r2, [r1]
	movs r3, #0xfa
	subs r0, r3, r2
	cmp r7, r0
	ble _08008C90
	strb r3, [r1]
	b _08008C94
	.align 2, 0
_08008C84: .4byte 0x02021DD0
_08008C88: .4byte 0x08090470
_08008C8C: .4byte 0x02021790
_08008C90:
	adds r0, r2, #1
	strb r0, [r1]
_08008C94:
	adds r4, #1
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _08008C64
_08008CA0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

.align 2, 0
