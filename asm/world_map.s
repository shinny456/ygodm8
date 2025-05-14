    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

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
_080052D8: .4byte gOamBuffer+0x10
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
_08005420: .4byte gOamBuffer
_08005424: .4byte gOamBuffer+4
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
_080054C0: .4byte gOamBuffer

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
_080055A8: .4byte gNewButtons
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
_080055D4: .4byte gPressedButtons

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
_08005680: .4byte gOamBuffer
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
_080056C0: .4byte gOamBuffer
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
	bl WaitForVBlank
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xe
	bls _0800570C
	movs r0, #4
	bl FadeOutMusic
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
	bl WaitForVBlank
	ldrh r0, [r4]
	cmp r0, #0xf
	bls _0800572A
_08005756:
	movs r4, #0
_08005758:
	bl WaitForVBlank
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xe
	bls _08005758
	pop {r4, r5, r6}
	pop {r0}
	bx r0


  .align 2, 0

