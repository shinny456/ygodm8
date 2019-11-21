    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED



	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_804D4E8
sub_804D4E8: @ 0x0804D4E8
	push {r4, lr}
	ldr r4, _0804D540
	adds r0, r4, #0
	bl NumEmptyZonesAndGodCardsInRow
	cmp r0, #5
	beq _0804D50A
	adds r0, r4, #0
	bl HighestAtkMonInRowExceptGodCards
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
_0804D50A:
	adds r2, r4, #0
	subs r2, #0x14
	ldr r4, _0804D544
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D548
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D538
	ldr r1, _0804D54C
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
_0804D538:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D540: .4byte gBoard+0x14
_0804D544: .4byte 0x02024260
_0804D548: .4byte gUnk_02021C08
_0804D54C: .4byte gUnk_02021C10
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_804D554
sub_804D554: @ 0x0804D554
	push {r4, lr}
	movs r0, #0
	bl sub_80452E0
	movs r0, #1
	bl sub_80452E0
	ldr r2, _0804D594
	ldr r4, _0804D598
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D59C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D58E
	ldr r1, _0804D5A0
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
_0804D58E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D594: .4byte gBoard
_0804D598: .4byte 0x02024260
_0804D59C: .4byte gUnk_02021C08
_0804D5A0: .4byte gUnk_02021C10
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_804D600
sub_804D600: @ 0x0804D600
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	strh r1, [r4]
	ldrb r1, [r4, #5]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	strb r0, [r4, #5]
	strb r2, [r4, #4]
	adds r0, r4, #0
	bl sub_8040360
	adds r0, r4, #0
	bl sub_80403E8
	ldrb r1, [r4, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #5]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804D640
sub_804D640: @ 0x0804D640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _0804DA14
	ldrh r0, [r1, #8]
	movs r2, #0
	strh r0, [r1]
	ldrh r0, [r1, #0xa]
	strh r0, [r1, #2]
	ldrh r0, [r1, #0xc]
	strh r0, [r1, #4]
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r1, r3
	strb r2, [r0]
	movs r4, #0x8f
	lsls r4, r4, #2
	adds r3, r1, r4
	ldr r2, _0804DA18
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r3]
	movs r6, #0
	str r1, [sp]
	adds r5, r1, #0
	movs r0, #0xfa
	lsls r0, r0, #1
	adds r0, r0, r5
	mov sb, r0
	ldr r7, _0804DA1C
	movs r1, #0x82
	lsls r1, r1, #2
	adds r1, r1, r5
	mov r8, r1
_0804D68E:
	lsls r2, r6, #2
	mov r3, sb
	adds r4, r2, r3
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	lsls r3, r6, #3
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r4]
	add r2, r8
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r4, #0xb4
	lsls r4, r4, #1
	adds r0, r0, r4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r2]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _0804D68E
	ldr r4, _0804DA14
	ldr r6, _0804DA1C
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r4, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _0804DA20
	adds r0, r4, r2
	movs r2, #0
	strh r1, [r0]
	movs r3, #0xf8
	lsls r3, r3, #1
	adds r5, r4, r3
	strb r2, [r5]
	movs r0, #0xf2
	bl sub_8055554
	cmp r0, #0
	bne _0804D738
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r4, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r4, #0xfb
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D738
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
_0804D738:
	movs r0, #0xf1
	bl sub_8055554
	cmp r0, #0
	bne _0804D774
	ldr r1, _0804DA1C
	ldr r2, _0804DA14
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r2, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r6, #0xfb
	lsls r6, r6, #1
	adds r0, r0, r6
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804D774
	movs r0, #0xf8
	lsls r0, r0, #1
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_0804D774:
	movs r1, #0
	mov sb, r1
	ldr r2, _0804DA14
	str r2, [sp]
	adds r6, r2, #0
	movs r4, #0
	movs r5, #0xc0
	movs r3, #5
	rsbs r3, r3, #0
	mov sl, r3
	movs r0, #9
	rsbs r0, r0, #0
	mov r8, r0
	movs r7, #0x11
	rsbs r7, r7, #0
_0804D792:
	mov r1, sb
	lsls r0, r1, #5
	adds r2, r0, r6
	ldr r0, _0804DA24
	strh r0, [r2, #0x10]
	strb r4, [r2, #0x12]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x16]
	strh r4, [r2, #0x18]
	adds r3, r2, #0
	adds r3, #0x2d
	ldrb r1, [r3]
	mov r0, sl
	ands r0, r1
	mov r1, r8
	ands r0, r1
	ands r0, r7
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x2c
	strb r4, [r0]
	strb r4, [r2, #0x1a]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0xe
	bls _0804D792
	ldr r5, [sp]
	ldr r3, _0804DA1C
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r5, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	ldrh r2, [r5, #4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	movs r4, #0
	strh r0, [r5, #0x10]
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r5, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	ldrh r1, [r5, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r6, #0xc9
	lsls r6, r6, #1
	adds r0, r2, r6
	ldrb r0, [r0]
	strb r0, [r5, #0x12]
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r5, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	ldrh r2, [r5, #4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r5, #0x20]
	movs r0, #0x13
	strb r0, [r5, #0x1e]
	adds r0, r5, #0
	adds r0, #0x28
	strb r4, [r0]
	adds r2, r5, #0
	adds r2, #0x2d
	ldrb r0, [r2]
	movs r4, #1
	orrs r0, r4
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r5, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	ldrh r2, [r5, #4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r6, #2
	adds r1, r1, r6
	ldrh r0, [r1]
	strh r0, [r5, #0x14]
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r5, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	ldrh r1, [r5, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0xcb
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x16]
	movs r0, #0
	bl sub_8052088
	movs r2, #0xd
	mov sl, r2
	bl sub_804F6C0
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0804D8FA
	mov r3, sl
	lsls r1, r3, #5
	adds r1, r5, r1
	strh r2, [r1, #0x10]
	ldrb r0, [r5, #0x12]
	strb r0, [r1, #0x12]
	ldrh r0, [r5, #0x14]
	strh r0, [r1, #0x14]
	ldrh r0, [r5, #0x16]
	strh r0, [r1, #0x16]
	adds r6, #0x2c
	adds r0, r5, r6
	ldr r1, _0804DA28
	str r1, [r0]
	movs r2, #0xe2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	ldr r3, _0804DA2C
	adds r2, r5, r3
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xd
	bl sub_8052088
	movs r6, #0xe
	mov sl, r6
_0804D8FA:
	bl sub_804F6C0
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq _0804D946
	mov r0, sl
	lsls r1, r0, #5
	adds r2, r1, r5
	movs r0, #4
	strh r0, [r2, #0x10]
	ldrb r0, [r5, #0x12]
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x14]
	strh r0, [r2, #0x14]
	ldrh r0, [r5, #0x16]
	strh r0, [r2, #0x16]
	adds r0, r5, #0
	adds r0, #0x20
	adds r0, r1, r0
	ldr r3, _0804DA28
	str r3, [r0]
	adds r0, r5, #0
	adds r0, #0x24
	adds r1, r1, r0
	str r3, [r1]
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	mov r0, sl
	bl sub_8052088
_0804D946:
	bl sub_804F714
	movs r1, #0
	mov sl, r1
	movs r2, #1
	mov sb, r2
	ldr r3, [sp]
	ldrh r0, [r3]
	lsls r0, r0, #2
	ldr r4, _0804DA1C
	adds r0, r0, r4
	ldrh r1, [r3, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r6, #0
	ldrsh r1, [r0, r6]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0804D974
	b _0804DB18
_0804D974:
	adds r7, r3, #0
	mov r8, r4
_0804D978:
	mov r0, sb
	lsls r6, r0, #5
	adds r5, r6, r7
	ldrh r0, [r7]
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r7, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	mov r1, sl
	lsls r4, r1, #2
	add r4, sl
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	ldrh r0, [r7]
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r7, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r4
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x12]
	ldrh r0, [r7]
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r7, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r4
	ldrh r0, [r0, #4]
	strh r0, [r5, #0x14]
	ldrh r0, [r7]
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r7, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r4
	ldrh r0, [r0, #6]
	strh r0, [r5, #0x16]
	ldrh r0, [r7]
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r7, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r4
	ldrb r0, [r0, #0x11]
	strh r0, [r5, #0x18]
	mov r0, sb
	bl sub_8052088
	adds r2, r7, #0
	adds r2, #0x20
	adds r2, r6, r2
	ldrh r0, [r7]
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r7, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #8
	b _0804DA30
	.align 2, 0
_0804DA14: .4byte 0x02024270
_0804DA18: .4byte 0x08E11DC4
_0804DA1C: .4byte 0x08E19274
_0804DA20: .4byte 0x00000242
_0804DA24: .4byte 0x0000FFFF
_0804DA28: .4byte 0x08F04040
_0804DA2C: .4byte 0x000001CD
_0804DA30:
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r2]
	adds r0, r7, #0
	adds r0, #0x24
	adds r6, r6, r0
	ldrh r0, [r7]
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r7, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #0xc
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r6]
	movs r0, #0x13
	strb r0, [r5, #0x1e]
	ldrh r0, [r7]
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r7, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r4
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	adds r3, r5, #0
	adds r3, #0x2d
	movs r1, #1
	ands r1, r0
	ldrb r2, [r3]
	movs r6, #2
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r2, r0
	orrs r2, r1
	strb r2, [r3]
	ldrh r0, [r7]
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r7, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r4
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	subs r6, #1
	adds r0, r6, #0
	ands r2, r0
	orrs r2, r1
	strb r2, [r3]
	ldrh r0, [r7]
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r7, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r4
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #2
	movs r4, #5
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r2, r0
	orrs r2, r1
	strb r2, [r3]
	movs r6, #0
	strh r6, [r5, #0x2a]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrh r0, [r7]
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r7, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	mov r2, sl
	lsls r0, r2, #2
	add r0, sl
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0804DB18
	b _0804D978
_0804DB18:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_804DB28
sub_804DB28: @ 0x0804DB28
	push {r4, r5, lr}
	ldr r0, _0804DC24
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r5, #4
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DC38
	ldr r4, _0804DC28
	movs r0, #0
	strb r0, [r4]
	movs r0, #0xee
	bl sub_8055554
	cmp r0, #0
	beq _0804DB52
	movs r0, #1
	strb r0, [r4]
_0804DB52:
	movs r0, #0xff
	bl sub_8055554
	cmp r0, #0
	beq _0804DB60
	movs r0, #2
	strb r0, [r4]
_0804DB60:
	movs r0, #0xfe
	bl sub_8055554
	cmp r0, #0
	beq _0804DB6E
	movs r0, #3
	strb r0, [r4]
_0804DB6E:
	movs r0, #0xfd
	bl sub_8055554
	cmp r0, #0
	beq _0804DB7A
	strb r5, [r4]
_0804DB7A:
	movs r0, #0xfc
	bl sub_8055554
	cmp r0, #0
	beq _0804DB88
	movs r0, #5
	strb r0, [r4]
_0804DB88:
	movs r0, #0xfb
	bl sub_8055554
	cmp r0, #0
	beq _0804DB96
	movs r0, #6
	strb r0, [r4]
_0804DB96:
	movs r0, #0xe4
	bl sub_8055554
	cmp r0, #0
	beq _0804DBA4
	movs r0, #0xb
	strb r0, [r4]
_0804DBA4:
	movs r0, #0xfa
	bl sub_8055554
	cmp r0, #0
	beq _0804DBB2
	movs r0, #7
	strb r0, [r4]
_0804DBB2:
	movs r0, #0xf9
	bl sub_8055554
	cmp r0, #0
	beq _0804DBC0
	movs r0, #8
	strb r0, [r4]
_0804DBC0:
	movs r0, #0xf8
	bl sub_8055554
	cmp r0, #0
	beq _0804DBD0
	ldr r1, _0804DC28
	movs r0, #9
	strb r0, [r1]
_0804DBD0:
	movs r0, #0xed
	bl sub_8055554
	cmp r0, #0
	beq _0804DBE0
	ldr r1, _0804DC28
	movs r0, #0xa
	strb r0, [r1]
_0804DBE0:
	ldr r2, _0804DC2C
	ldr r1, _0804DC24
	ldrh r0, [r1, #8]
	strb r0, [r2]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0xfb
	ands r0, r2
	strb r0, [r1]
	movs r0, #4
	bl sub_804F750
	bl sub_8004E60
	ldr r3, _0804DC30
	ldr r0, _0804DC34
	ldrb r0, [r0]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	adds r1, r3, #2
	adds r1, r2, r1
	ldrh r1, [r1]
	adds r3, #4
	adds r2, r2, r3
	ldrh r2, [r2]
	bl sub_80523EC
	b _0804DC3C
	.align 2, 0
_0804DC24: .4byte 0x02024270
_0804DC28: .4byte 0x02020DD0
_0804DC2C: .4byte 0x02020DC8
_0804DC30: .4byte 0x08E0D9C4
_0804DC34: .4byte 0x02020DCC
_0804DC38:
	bl sub_0804F76C
_0804DC3C:
	bl sub_804D640
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804DC48
sub_804DC48: @ 0x0804DC48
	push {r4, r5, r6, lr}
	movs r0, #0x2b
	bl sub_8055554
	cmp r0, #0
	bne _0804DC68
	bl sub_8005D1C
	movs r0, #8
	bl sub_8000940
	movs r0, #0x2b
	bl sub_8055508
	bl sub_800AD4C
_0804DC68:
	movs r0, #9
	movs r1, #1
	movs r2, #0
	bl sub_80523EC
	bl sub_804D640
	ldr r3, _0804DCE4
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrb r2, [r0]
	movs r1, #0xfe
	ands r1, r2
	strb r1, [r0]
	adds r4, r3, #0
	adds r5, r0, #0
	movs r2, #0x82
	lsls r2, r2, #2
	adds r6, r4, r2
_0804DC90:
	bl sub_804DB28
	bl sub_80554C4
	bl sub_804ED08
	ldrb r1, [r5]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r5]
	ldrh r0, [r4, #4]
	lsls r0, r0, #2
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r1, r4, r2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805254C
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804DCD4
	bl sub_804F770
	bl sub_804E288
	ldrb r0, [r4, #6]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_805254C
_0804DCD4:
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DC90
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DCE4: .4byte 0x02024270

	THUMB_FUNC_START sub_804DCE8
sub_804DCE8: @ 0x0804DCE8
	push {r4, r5, r6, lr}
	ldr r6, _0804DD04
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804DD78
	cmp r0, #1
	bgt _0804DD08
	cmp r0, #0
	beq _0804DD0E
	b _0804DE46
	.align 2, 0
_0804DD04: .4byte 0x02024270
_0804DD08:
	cmp r0, #2
	beq _0804DDF4
	b _0804DE46
_0804DD0E:
	ldr r1, _0804DD64
	ldrh r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r5, _0804DD68
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl sub_804F5D8
	ldr r1, _0804DD6C
	ldrh r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xf8
	lsls r2, r2, #8
	adds r1, r5, r2
	movs r4, #0x80
	lsls r4, r4, #3
	adds r2, r4, #0
	bl CpuSet
	ldr r1, _0804DD70
	ldrh r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r1, r5, r2
	adds r2, r4, #0
	bl CpuSet
	ldrh r0, [r6]
	cmp r0, #0x29
	bne _0804DE46
	ldr r0, _0804DD74
	movs r2, #0xb8
	lsls r2, r2, #8
	adds r1, r5, r2
	b _0804DDC4
	.align 2, 0
_0804DD64: .4byte 0x08E119F4
_0804DD68: .4byte 0x02000400
_0804DD6C: .4byte 0x08E11AE8
_0804DD70: .4byte 0x08E11BDC
_0804DD74: .4byte 0x0841D91C
_0804DD78:
	ldr r0, _0804DDCC
	ldr r5, _0804DDD0
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r0, _0804DDD4
	ldr r4, _0804DDD8
	adds r1, r4, #0
	movs r2, #0xc0
	bl CpuSet
	ldr r0, _0804DDDC
	ldr r2, _0804DDE0
	adds r1, r4, r2
	movs r2, #0x10
	bl CpuSet
	ldr r0, _0804DDE4
	ldr r1, _0804DDE8
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #0xf0
	bl CpuSet
	ldr r0, _0804DDEC
	movs r2, #0xf8
	lsls r2, r2, #8
	adds r1, r5, r2
	movs r4, #0x80
	lsls r4, r4, #3
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _0804DDF0
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r5, r5, r1
	adds r1, r5, #0
_0804DDC4:
	adds r2, r4, #0
	bl CpuSet
	b _0804DE46
	.align 2, 0
_0804DDCC: .4byte 0x084C9FBC
_0804DDD0: .4byte 0x02000400
_0804DDD4: .4byte 0x082AD06C
_0804DDD8: .4byte 0x02000200
_0804DDDC: .4byte 0x082ADC8C
_0804DDE0: .4byte 0xFFFFFE00
_0804DDE4: .4byte 0x084D0CE0
_0804DDE8: .4byte 0xFFFFFE20
_0804DDEC: .4byte 0x084CFCE0
_0804DDF0: .4byte 0x084D04E0
_0804DDF4:
	ldr r0, _0804DE4C
	ldr r5, _0804DE50
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r0, _0804DE54
	ldr r4, _0804DE58
	adds r1, r4, #0
	movs r2, #0xc0
	bl CpuSet
	ldr r0, _0804DE5C
	ldr r2, _0804DE60
	adds r1, r4, r2
	movs r2, #0x10
	bl CpuSet
	ldr r0, _0804DE64
	ldr r1, _0804DE68
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #0xf0
	bl CpuSet
	ldr r0, _0804DE6C
	movs r2, #0xf8
	lsls r2, r2, #8
	adds r1, r5, r2
	movs r4, #0x80
	lsls r4, r4, #3
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _0804DE70
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r5, r5, r1
	adds r1, r5, #0
	adds r2, r4, #0
	bl CpuSet
_0804DE46:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DE4C: .4byte 0x084D0EC0
_0804DE50: .4byte 0x02000400
_0804DE54: .4byte 0x082AD06C
_0804DE58: .4byte 0x02000200
_0804DE5C: .4byte 0x082ADC8C
_0804DE60: .4byte 0xFFFFFE00
_0804DE64: .4byte 0x084D69D0
_0804DE68: .4byte 0xFFFFFE20
_0804DE6C: .4byte 0x084D59D0
_0804DE70: .4byte 0x084D61D0

	THUMB_FUNC_START sub_804DE74
sub_804DE74: @ 0x0804DE74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r0, _0804DF40
	movs r1, #0x87
	lsls r1, r1, #2
	adds r5, r0, r1
_0804DE88:
	ldrb r0, [r5]
	bl sub_804DF5C
	adds r5, #2
	adds r4, #1
	cmp r4, #0xe
	bls _0804DE88
	ldr r0, _0804DF44
	ldrh r0, [r0, #0x1e]
	lsls r0, r0, #5
	ldr r1, _0804DF48
	adds r2, r0, r1
	ldr r3, _0804DF4C
	movs r4, #0
	mov sl, r1
	ldr r0, _0804DF50
	mov sb, r0
	movs r6, #0xf0
	lsls r6, r6, #2
	movs r5, #0xe0
	lsls r5, r5, #1
_0804DEB2:
	movs r1, #0
_0804DEB4:
	ldrb r0, [r3]
	strb r0, [r2]
	adds r3, #1
	adds r2, #1
	adds r1, #1
	cmp r1, #0x3f
	bls _0804DEB4
	adds r2, r2, r6
	adds r3, r3, r5
	adds r4, #1
	cmp r4, #1
	bls _0804DEB2
	movs r4, #0
	ldr r6, _0804DF40
	movs r1, #0x87
	lsls r1, r1, #2
	adds r1, r1, r6
	mov r8, r1
	ldr r3, _0804DF54
	mov ip, r3
	ldr r7, _0804DF58
_0804DEDE:
	lsls r0, r4, #1
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #5
	mov r3, sl
	adds r2, r0, r3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r1, #0x2c
	ldrb r0, [r1]
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #5
	mov r3, sb
	adds r1, r0, r3
	movs r0, #0
	adds r5, r4, #1
_0804DF08:
	movs r3, #0
	adds r4, r0, #1
_0804DF0C:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	adds r3, #1
	cmp r3, #0x3f
	bls _0804DF0C
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r4, #0
	cmp r0, #1
	bls _0804DF08
	adds r4, r5, #0
	cmp r4, #0xe
	bls _0804DEDE
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DF40: .4byte 0x02024270
_0804DF44: .4byte 0x08103264
_0804DF48: .4byte 0x02010400
_0804DF4C: .4byte 0x082A8E4C
_0804DF50: .4byte 0x082A906C
_0804DF54: .4byte 0x081032A2
_0804DF58: .4byte 0x08103284

	THUMB_FUNC_START sub_804DF5C
sub_804DF5C: @ 0x0804DF5C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _0804DFCC
	lsls r0, r6, #5
	adds r5, r0, r1
	ldrb r0, [r5, #0x12]
	cmp r0, #3
	bhi _0804DFE4
	ldrh r4, [r5, #0x10]
	adds r3, r0, #0
	lsls r2, r3, #1
	ldr r1, _0804DFD0
	ldrb r0, [r5, #0x1e]
	adds r0, r0, r1
	adds r2, r2, r3
	ldrb r0, [r0]
	adds r2, r2, r0
	lsls r2, r2, #0x18
	ldr r1, _0804DFD4
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0804DFD8
	adds r3, r0, r1
	ldr r0, _0804DFDC
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, _0804DFE0
	lsrs r2, r2, #0x17
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #5
	ldr r1, [r4]
	adds r1, r1, r0
	movs r0, #0
_0804DFA6:
	movs r2, #0
	adds r4, r0, #1
_0804DFAA:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	adds r2, #1
	cmp r2, #0x7f
	bls _0804DFAA
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	cmp r0, #3
	bls _0804DFA6
	b _0804E036
	.align 2, 0
_0804DFCC: .4byte 0x02024270
_0804DFD0: .4byte 0x08E0DA12
_0804DFD4: .4byte 0x08103264
_0804DFD8: .4byte 0x02010400
_0804DFDC: .4byte 0x08E11790
_0804DFE0: .4byte 0x081032D2
_0804DFE4:
	ldrh r3, [r5, #0x10]
	ldr r1, _0804E03C
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r1, _0804E040
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0804E044
	adds r4, r0, r1
	ldr r0, _0804E048
	lsls r3, r3, #2
	adds r3, r3, r0
	ldr r0, _0804E04C
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #5
	ldr r1, [r3]
	adds r1, r1, r0
	movs r0, #0
_0804E012:
	movs r2, #0
	adds r3, r0, #1
_0804E016:
	ldrb r0, [r1]
	strb r0, [r4]
	adds r1, #1
	adds r4, #1
	adds r2, #1
	cmp r2, #0x7f
	bls _0804E016
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r3, #0
	cmp r0, #3
	bls _0804E012
_0804E036:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804E03C: .4byte 0x08E0DA4F
_0804E040: .4byte 0x08103264
_0804E044: .4byte 0x02010400
_0804E048: .4byte 0x08E11790
_0804E04C: .4byte 0x081032D2

	THUMB_FUNC_START sub_804E050
sub_804E050: @ 0x0804E050
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _0804E0C4
	lsls r0, r4, #5
	adds r0, r0, r1
	movs r2, #0x10
	ldrsh r1, [r0, r2]
	cmp r1, #0x19
	bne _0804E0DC
	ldrb r3, [r0, #0x12]
	lsls r2, r3, #1
	ldr r1, _0804E0C8
	ldrb r0, [r0, #0x1e]
	adds r0, r0, r1
	adds r2, r2, r3
	ldrb r0, [r0]
	adds r2, r2, r0
	lsls r2, r2, #0x18
	ldr r1, _0804E0CC
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0804E0D0
	adds r3, r0, r1
	ldr r1, _0804E0D4
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _0804E0D8
	lsrs r2, r2, #0x17
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	movs r0, #0
_0804E09C:
	movs r2, #0
	adds r4, r0, #1
_0804E0A0:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	adds r2, #1
	cmp r2, #0x7f
	bls _0804E0A0
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r3, r3, r2
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	cmp r0, #3
	bls _0804E09C
	b _0804E1AE
	.align 2, 0
_0804E0C4: .4byte 0x02024270
_0804E0C8: .4byte 0x08E0DA26
_0804E0CC: .4byte 0x08103264
_0804E0D0: .4byte 0x02010400
_0804E0D4: .4byte 0x08E11790
_0804E0D8: .4byte 0x081032D2
_0804E0DC:
	cmp r1, #1
	bne _0804E154
	ldrb r3, [r0, #0x12]
	lsls r2, r3, #1
	ldr r1, _0804E140
	ldrb r0, [r0, #0x1e]
	adds r0, r0, r1
	adds r2, r2, r3
	ldrb r0, [r0]
	adds r2, r2, r0
	lsls r2, r2, #0x18
	ldr r1, _0804E144
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0804E148
	adds r3, r0, r1
	ldr r1, _0804E14C
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _0804E150
	lsrs r2, r2, #0x17
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	movs r0, #0
_0804E118:
	movs r2, #0
	adds r4, r0, #1
_0804E11C:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	adds r2, #1
	cmp r2, #0x7f
	bls _0804E11C
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r3, r3, r2
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	cmp r0, #3
	bls _0804E118
	b _0804E1AE
	.align 2, 0
_0804E140: .4byte 0x08E0DA26
_0804E144: .4byte 0x08103264
_0804E148: .4byte 0x02010400
_0804E14C: .4byte 0x08E11790
_0804E150: .4byte 0x081032D2
_0804E154:
	cmp r1, #4
	bne _0804E1AE
	ldrb r3, [r0, #0x12]
	lsls r1, r3, #1
	ldr r2, _0804E1B4
	ldrb r0, [r0, #0x1e]
	adds r0, r0, r2
	adds r1, r1, r3
	ldrb r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x18
	ldr r2, _0804E1B8
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r2, _0804E1BC
	adds r3, r0, r2
	ldr r2, _0804E1C0
	ldr r0, _0804E1C4
	lsrs r1, r1, #0x17
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #5
	ldr r1, [r2, #0x24]
	adds r1, r1, r0
	movs r0, #0
_0804E18A:
	movs r2, #0
	adds r4, r0, #1
_0804E18E:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	adds r2, #1
	cmp r2, #0x7f
	bls _0804E18E
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r3, r3, r2
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	cmp r0, #3
	bls _0804E18A
_0804E1AE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E1B4: .4byte 0x08E0DA26
_0804E1B8: .4byte 0x08103264
_0804E1BC: .4byte 0x02010400
_0804E1C0: .4byte 0x08E11790
_0804E1C4: .4byte 0x081032D2

	THUMB_FUNC_START sub_804E1C8
sub_804E1C8: @ 0x0804E1C8
	ldr r0, _0804E1D8
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804E1DC
	movs r0, #6
	b _0804E286
	.align 2, 0
_0804E1D8: .4byte gUnk2020DFC
_0804E1DC:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804E1EA
	movs r0, #5
	b _0804E286
_0804E1EA:
	ldr r1, _0804E204
	ldrh r2, [r1]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0804E22C
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0804E208
	movs r0, #0xb
	b _0804E286
	.align 2, 0
_0804E204: .4byte gKeyState
_0804E208:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0804E214
	movs r0, #0xc
	b _0804E286
_0804E214:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0804E220
	movs r0, #0xd
	b _0804E286
_0804E220:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0804E22C
	movs r0, #0xe
	b _0804E286
_0804E22C:
	ldrh r1, [r1]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804E23A
	movs r0, #1
	b _0804E286
_0804E23A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804E246
	movs r0, #2
	b _0804E286
_0804E246:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804E252
	movs r0, #3
	b _0804E286
_0804E252:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804E25E
	movs r0, #4
	b _0804E286
_0804E25E:
	ldr r0, _0804E280
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804E284
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0804E284
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804E284
	movs r0, #0
	b _0804E286
	.align 2, 0
_0804E280: .4byte 0x02020DF4
_0804E284:
	movs r0, #7
_0804E286:
	bx lr

	THUMB_FUNC_START sub_804E288
sub_804E288: @ 0x0804E288
	push {r4, r5, lr}
	movs r5, #0x66
	ldr r2, _0804E298
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r2, r1
	b _0804E500
	.align 2, 0
_0804E298: .4byte 0x02024270
_0804E29C:
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
	bl sub_804E1C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #1
	cmp r0, #0xd
	bls _0804E2B4
	b _0804E4F0
_0804E2B4:
	lsls r0, r0, #2
	ldr r1, _0804E2C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804E2C0: .4byte 0x0804E2C4
_0804E2C4: @ jump table
	.4byte _0804E2FC @ case 0
	.4byte _0804E304 @ case 1
	.4byte _0804E30C @ case 2
	.4byte _0804E314 @ case 3
	.4byte _0804E31C @ case 4
	.4byte _0804E326 @ case 5
	.4byte _0804E330 @ case 6
	.4byte _0804E3D0 @ case 7
	.4byte _0804E4F0 @ case 8
	.4byte _0804E478 @ case 9
	.4byte _0804E4D4 @ case 10
	.4byte _0804E4D8 @ case 11
	.4byte _0804E4DC @ case 12
	.4byte _0804E4E0 @ case 13
_0804E2FC:
	movs r0, #2
	bl sub_80521D0
	b _0804E4E6
_0804E304:
	movs r0, #0
	bl sub_80521D0
	b _0804E4E6
_0804E30C:
	movs r0, #1
	bl sub_80521D0
	b _0804E4E6
_0804E314:
	movs r0, #3
	bl sub_80521D0
	b _0804E4E6
_0804E31C:
	bl sub_8051FFC
	bl sub_804EEE0
	b _0804E4F8
_0804E326:
	bl sub_8051F70
	bl sub_804EEE0
	b _0804E4F8
_0804E330:
	movs r0, #0x37
	bl sub_8034F60
	bl sub_8005B18
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0
	strh r1, [r0]
	adds r0, #0x50
	strh r1, [r0]
	bl sub_804DCE8
	bl sub_804EDA0
	bl sub_804EDC8
	bl sub_804EDF0
	bl sub_804EE18
	bl sub_804EE6C
	movs r0, #0xf3
	bl sub_8055554
	cmp r0, #0
	beq _0804E372
	ldr r0, _0804E3BC
	movs r1, #0x10
	ldr r2, _0804E3C0
	bl sub_8044E50
_0804E372:
	movs r0, #0xf0
	bl sub_8055554
	cmp r0, #0
	beq _0804E388
	ldr r0, _0804E3BC
	movs r1, #0x10
	ldr r2, _0804E3C0
	movs r3, #6
	bl sub_8044EC8
_0804E388:
	movs r0, #0xef
	bl sub_8055554
	cmp r0, #0
	beq _0804E39C
	ldr r0, _0804E3BC
	movs r1, #0x10
	movs r2, #0xff
	bl sub_8045284
_0804E39C:
	ldr r1, _0804E3C4
	movs r0, #7
	strh r0, [r1]
	bl sub_8008220
	bl sub_804EC4C
	ldr r1, _0804E3C8
	ldr r2, _0804E3CC
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F508
	bl sub_804F770
	b _0804E4F8
	.align 2, 0
_0804E3BC: .4byte 0x02000000
_0804E3C0: .4byte 0x000001FF
_0804E3C4: .4byte 0x04000054
_0804E3C8: .4byte 0x0400004A
_0804E3CC: .4byte 0x00003D3F
_0804E3D0:
	ldr r2, _0804E45C
	ldr r1, _0804E460
	movs r3, #0x10
	ldrsh r0, [r2, r3]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r1, [r0]
	adds r0, #0x50
	strh r1, [r0]
	bl sub_804DCE8
	bl sub_804EDA0
	bl sub_804EDC8
	bl sub_804EDF0
	bl sub_804EE18
	bl sub_804EE6C
	movs r0, #0xf3
	bl sub_8055554
	cmp r0, #0
	beq _0804E416
	ldr r0, _0804E464
	movs r1, #0x10
	ldr r2, _0804E468
	bl sub_8044E50
_0804E416:
	movs r0, #0xf0
	bl sub_8055554
	cmp r0, #0
	beq _0804E42C
	ldr r0, _0804E464
	movs r1, #0x10
	ldr r2, _0804E468
	movs r3, #6
	bl sub_8044EC8
_0804E42C:
	movs r0, #0xef
	bl sub_8055554
	cmp r0, #0
	beq _0804E440
	ldr r0, _0804E464
	movs r1, #0x10
	movs r2, #0xff
	bl sub_8045284
_0804E440:
	ldr r1, _0804E46C
	movs r0, #7
	strh r0, [r1]
	bl sub_8008220
	bl sub_804EC4C
	ldr r1, _0804E470
	ldr r2, _0804E474
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F508
	b _0804E4F8
	.align 2, 0
_0804E45C: .4byte 0x02024270
_0804E460: .4byte 0x08E0DA9C
_0804E464: .4byte 0x02000000
_0804E468: .4byte 0x000001FF
_0804E46C: .4byte 0x04000054
_0804E470: .4byte 0x0400004A
_0804E474: .4byte 0x00003D3F
_0804E478:
	ldr r0, _0804E4C8
	adds r0, r5, r0
	ldrb r5, [r0]
	ldr r0, _0804E4CC
	movs r4, #0
	strh r5, [r0, #8]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0xc]
	bl sub_804D640
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r4, [r0]
	adds r0, #0x50
	strh r4, [r0]
	bl sub_804DCE8
	bl sub_804EDA0
	bl sub_804EDC8
	bl sub_804EDF0
	bl sub_804EE18
	bl sub_804EE6C
	ldr r1, _0804E4D0
	movs r0, #7
	strh r0, [r1]
	bl sub_8008220
	bl sub_804EC4C
	bl sub_804F508
	bl sub_804EEE0
	b _0804E4F8
	.align 2, 0
_0804E4C8: .4byte 0x08E0DA56
_0804E4CC: .4byte 0x02024270
_0804E4D0: .4byte 0x04000054
_0804E4D4:
	movs r0, #2
	b _0804E4E2
_0804E4D8:
	movs r0, #0
	b _0804E4E2
_0804E4DC:
	movs r0, #1
	b _0804E4E2
_0804E4E0:
	movs r0, #3
_0804E4E2:
	bl sub_80521E8
_0804E4E6:
	bl sub_804F2F0
	bl sub_804EF10
	b _0804E4F8
_0804E4F0:
	bl sub_804F2F0
	bl sub_804EF10
_0804E4F8:
	ldr r2, _0804E514
	movs r3, #0x90
	lsls r3, r3, #2
	adds r0, r2, r3
_0804E500:
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0804E50C
	b _0804E29C
_0804E50C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804E514: .4byte 0x02024270

	THUMB_FUNC_START sub_804E518
sub_804E518: @ 0x0804E518
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _0804E5B8
	lsls r7, r6, #5
	adds r5, r7, r1
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r0, [r0]
	mov ip, r1
	cmp r0, #1
	bne _0804E5E8
	ldrh r0, [r5, #0x10]
	subs r0, #0x7a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0804E5CC
	ldrh r4, [r5, #0x10]
	ldrb r3, [r5, #0x12]
	lsls r1, r3, #1
	ldr r2, _0804E5BC
	ldrb r0, [r5, #0x1e]
	adds r0, r0, r2
	adds r1, r1, r3
	ldrb r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x18
	adds r2, r6, r2
	ldrb r0, [r2]
	lsls r0, r0, #5
	ldr r2, _0804E5C0
	adds r2, r0, r2
	ldr r0, _0804E5C4
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, _0804E5C8
	lsrs r1, r1, #0x17
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #5
	ldr r1, [r4]
	adds r1, r1, r0
	movs r0, #0
	adds r5, r7, #0
_0804E572:
	movs r3, #0
	adds r4, r0, #1
_0804E576:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	adds r3, #1
	cmp r3, #0x7f
	bls _0804E576
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	cmp r0, #3
	bls _0804E572
	mov r0, ip
	adds r1, r5, r0
	ldrb r0, [r1, #0x1e]
	cmp r0, #0xf
	bls _0804E5A4
	movs r0, #0xf
	strb r0, [r1, #0x1e]
_0804E5A4:
	ldrb r0, [r1, #0x1e]
	subs r0, #1
	cmp r0, #0
	bge _0804E5B0
	movs r0, #0xf
	strb r0, [r1, #0x1e]
_0804E5B0:
	ldrb r0, [r1, #0x1e]
	subs r0, #1
	strb r0, [r1, #0x1e]
	b _0804E610
	.align 2, 0
_0804E5B8: .4byte 0x02024270
_0804E5BC: .4byte 0x08E0DA40
_0804E5C0: .4byte 0x02010400
_0804E5C4: .4byte 0x08E11790
_0804E5C8: .4byte 0x081032D2
_0804E5CC:
	adds r0, r6, #0
	bl sub_804DF5C
	ldrb r0, [r5, #0x1e]
	cmp r0, #0x14
	bls _0804E5DC
	movs r0, #0x14
	strb r0, [r5, #0x1e]
_0804E5DC:
	ldrb r0, [r5, #0x1e]
	subs r0, #1
	cmp r0, #0
	bge _0804E5FE
	movs r0, #0x14
	b _0804E5FC
_0804E5E8:
	cmp r0, #2
	bne _0804E606
	adds r0, r6, #0
	bl sub_804E050
	ldrb r0, [r5, #0x1e]
	subs r0, #1
	cmp r0, #0
	bge _0804E5FE
	movs r0, #0x1a
_0804E5FC:
	strb r0, [r5, #0x1e]
_0804E5FE:
	ldrb r0, [r5, #0x1e]
	subs r0, #1
	strb r0, [r5, #0x1e]
	b _0804E610
_0804E606:
	movs r0, #0x13
	strb r0, [r5, #0x1e]
	adds r0, r6, #0
	bl sub_804DF5C
_0804E610:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804E618
sub_804E618: @ 0x0804E618
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	movs r6, #0
	ldr r0, _0804E6D8
	mov sb, r0
	ldr r1, _0804E6DC
_0804E62A:
	lsls r0, r6, #1
	add r0, sp
	strh r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xe
	bls _0804E62A
	movs r6, #0
	mov r8, sp
	ldr r1, _0804E6D8
	mov ip, r1
_0804E642:
	movs r5, #0
	lsls r0, r6, #5
	mov r2, ip
	adds r1, r0, r2
	mov r3, r8
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r3, #0x16
	ldrsh r1, [r1, r3]
	adds r3, r0, #0
	cmp r2, r1
	blt _0804E66C
_0804E65A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r5, #1
	add r0, sp
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, r1
	bge _0804E65A
_0804E66C:
	mov r1, ip
	adds r0, r3, r1
	ldrh r4, [r0, #0x16]
	adds r3, r6, #0
	cmp r5, #0xe
	bhi _0804E698
	ldr r7, _0804E6E0
_0804E67A:
	lsls r1, r5, #1
	mov r2, sp
	adds r0, r2, r1
	ldrh r2, [r0]
	strh r4, [r0]
	adds r4, r2, #0
	adds r1, r1, r7
	ldrh r0, [r1]
	strh r3, [r1]
	adds r3, r0, #0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xe
	bls _0804E67A
_0804E698:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xe
	bls _0804E642
	ldr r1, _0804E6E4
	add r1, sb
	movs r0, #0
	strb r0, [r1]
	movs r6, #0
	movs r2, #0x87
	lsls r2, r2, #2
	add r2, sb
_0804E6B2:
	lsls r0, r6, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _0804E6C0
	strb r6, [r1]
_0804E6C0:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xe
	bls _0804E6B2
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E6D8: .4byte 0x02024270
_0804E6DC: .4byte 0x00008001
_0804E6E0: .4byte 0x0202448C
_0804E6E4: .4byte 0x0000023A

	THUMB_FUNC_START sub_804E6E8
sub_804E6E8: @ 0x0804E6E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r4, r3, #0
	ldr r0, _0804E7DC
	str r0, [r6]
	ldr r0, _0804E7E0
	str r0, [r2]
	ldr r7, _0804E7E4
	lsls r0, r3, #5
	adds r5, r0, r7
	movs r0, #0x10
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0804E7D0
	movs r2, #0x14
	ldrsh r1, [r5, r2]
	movs r0, #0x16
	ldrsh r2, [r5, r0]
	adds r0, r3, #0
	bl sub_805222C
	cmp r0, #0
	beq _0804E7D0
	ldr r1, [r6]
	movs r2, #0x80
	lsls r2, r2, #0x18
	mov sb, r2
	orrs r1, r2
	str r1, [r6]
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0804E746
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r6]
_0804E746:
	ldr r1, _0804E7E8
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _0804E7EC
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r1, r0
	str r1, [r6, #4]
	mov r0, r8
	str r1, [r0, #4]
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0x16]
	bl sub_80520E0
	strh r0, [r5, #0x1c]
	movs r2, #0x16
	ldrsh r1, [r5, r2]
	lsls r1, r1, #1
	movs r3, #0x18
	ldrsh r0, [r5, r3]
	subs r1, r1, r0
	movs r2, #0x93
	lsls r2, r2, #2
	adds r0, r7, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r0, #0x18
	adds r1, r1, r0
	ldrb r0, [r5, #0x1a]
	subs r4, r1, r0
	movs r0, #0xff
	ands r4, r0
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	lsls r1, r1, #1
	adds r2, #2
	adds r0, r7, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _0804E7F0
	ands r1, r0
	orrs r4, r1
	ldr r0, [r6]
	ldr r7, _0804E7F4
	ands r0, r7
	orrs r0, r4
	str r0, [r6]
	ldrh r0, [r5, #0x1c]
	bl sub_8052194
	cmp r0, #0
	bne _0804E7D0
	mov r1, r8
	ldr r0, [r1]
	mov r2, sb
	orrs r0, r2
	ands r0, r7
	orrs r0, r4
	str r0, [r1]
_0804E7D0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E7DC: .4byte 0x01C000C0
_0804E7E0: .4byte 0x01C008C0
_0804E7E4: .4byte 0x02024270
_0804E7E8: .4byte 0x08103264
_0804E7EC: .4byte 0x082AD20C
_0804E7F0: .4byte 0x01FF0000
_0804E7F4: .4byte 0xFE00FF00

	THUMB_FUNC_START sub_804E7F8
sub_804E7F8: @ 0x0804E7F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	movs r0, #0xd
	rsbs r0, r0, #0
	mov sb, r0
	ldrb r1, [r4, #3]
	movs r7, #0x3f
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4, #3]
	movs r0, #0
	strb r0, [r4, #1]
	ldrb r1, [r4, #5]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r4, #5]
	movs r0, #0xc0
	strb r0, [r4]
	ldrh r1, [r4, #2]
	ldr r2, _0804E8FC
	mov sl, r2
	mov r0, sl
	ands r0, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r0, _0804E900
	mov r8, r0
	lsls r0, r3, #5
	mov r1, r8
	adds r5, r0, r1
	movs r2, #0x10
	ldrsh r1, [r5, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0804E8EE
	adds r6, r5, #0
	adds r6, #0x2d
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804E8EE
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	movs r0, #0x16
	ldrsh r2, [r5, r0]
	adds r0, r3, #0
	bl sub_805222C
	cmp r0, #0
	beq _0804E8EE
	ldrb r1, [r4, #3]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4, #3]
	ldrb r0, [r4, #1]
	adds r1, r7, #0
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #1]
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0804E896
	mov r2, sb
	ands r1, r2
	movs r0, #4
	orrs r1, r0
	strb r1, [r4, #1]
_0804E896:
	ldr r0, _0804E904
	ldrh r0, [r0, #0x1e]
	ldr r1, _0804E908
	ands r1, r0
	ldrh r2, [r4, #4]
	ldr r0, _0804E90C
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #4]
	ldrb r1, [r4, #5]
	mov r0, sb
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #5]
	movs r1, #0x16
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	movs r2, #0x93
	lsls r2, r2, #2
	add r2, r8
	subs r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	strb r0, [r4]
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	lsls r1, r1, #1
	ldr r0, _0804E910
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #8
	adds r1, r1, r0
	ldr r2, _0804E914
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r4, #2]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
_0804E8EE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E8FC: .4byte 0xFFFFFE00
_0804E900: .4byte 0x02024270
_0804E904: .4byte 0x08103264
_0804E908: .4byte 0x000003FF
_0804E90C: .4byte 0xFFFFFC00
_0804E910: .4byte 0x0000024E
_0804E914: .4byte 0x000001FF

	THUMB_FUNC_START sub_804E918
sub_804E918: @ 0x0804E918
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	mov sb, r3
	movs r0, #0xd
	rsbs r0, r0, #0
	mov sl, r0
	ldrb r1, [r4, #3]
	movs r6, #0x3f
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r4, #3]
	movs r0, #0
	strb r0, [r4, #1]
	ldr r1, _0804EA2C
	ldr r7, _0804EA30
	lsls r0, r3, #5
	adds r5, r0, r7
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r4, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #5]
	movs r0, #0xc0
	strb r0, [r4]
	ldrh r1, [r4, #2]
	ldr r2, _0804EA34
	mov r8, r2
	mov r0, r8
	ands r0, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #2]
	movs r0, #0x10
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0804EA1E
	movs r2, #0x14
	ldrsh r1, [r5, r2]
	movs r0, #0x16
	ldrsh r2, [r5, r0]
	adds r0, r3, #0
	bl sub_805222C
	cmp r0, #0
	beq _0804EA1E
	ldrb r1, [r4, #3]
	adds r0, r6, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #3]
	ldrb r0, [r4, #1]
	adds r1, r6, #0
	ands r1, r0
	strb r1, [r4, #1]
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0804E9BE
	adds r0, r1, #0
	mov r1, sl
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #1]
_0804E9BE:
	movs r2, #0x16
	ldrsh r0, [r5, r2]
	lsls r0, r0, #1
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	movs r2, #0x93
	lsls r2, r2, #2
	adds r1, r7, r2
	subs r0, #0x1c
	ldrb r1, [r1]
	adds r0, r0, r1
	strb r0, [r4]
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	lsls r1, r1, #1
	adds r2, #2
	adds r0, r7, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #2
	adds r1, r1, r0
	ldr r2, _0804EA38
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r4, #2]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r1, _0804EA3C
	mov r2, sb
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0804EA40
	ands r1, r0
	ldrh r2, [r4, #4]
	ldr r0, _0804EA44
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #4]
	ldrb r1, [r4, #5]
	mov r0, sl
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #5]
_0804EA1E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EA2C: .4byte 0x082AD2B6
_0804EA30: .4byte 0x02024270
_0804EA34: .4byte 0xFFFFFE00
_0804EA38: .4byte 0x000001FF
_0804EA3C: .4byte 0x08103284
_0804EA40: .4byte 0x000003FF
_0804EA44: .4byte 0xFFFFFC00
	.byte 0xF0, 0xB5, 0x05, 0x1C, 0x09, 0x06, 0x0E, 0x0E
	.byte 0x27, 0x48, 0x28, 0x60, 0x27, 0x4F, 0x70, 0x01, 0xC4, 0x19, 0x10, 0x20, 0x21, 0x5E, 0x01, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x40, 0xD0, 0x14, 0x22, 0xA1, 0x5E, 0x16, 0x20, 0x22, 0x5E, 0x30, 0x1C
	.byte 0x03, 0xF0, 0xDC, 0xFB, 0x00, 0x28, 0x37, 0xD0, 0xA0, 0x8B, 0x03, 0xF0, 0x8B, 0xFB, 0x00, 0x28
	.byte 0x32, 0xD1, 0x28, 0x68, 0x80, 0x21, 0x09, 0x06, 0x08, 0x43, 0x28, 0x60, 0x1A, 0x49, 0x70, 0x00
	.byte 0x40, 0x18, 0x01, 0x88, 0x80, 0x22, 0xD2, 0x00, 0x10, 0x1C, 0x08, 0x43, 0x68, 0x60, 0x20, 0x7D
	.byte 0xA1, 0x7D, 0x03, 0xF0, 0x1D, 0xFB, 0xA0, 0x83, 0x2B, 0x68, 0x14, 0x48, 0x03, 0x40, 0x2B, 0x60
	.byte 0x16, 0x20, 0x22, 0x5E, 0x52, 0x00, 0x18, 0x21, 0x60, 0x5E, 0x12, 0x1A, 0x93, 0x21, 0x89, 0x00
	.byte 0x78, 0x18, 0x00, 0x21, 0x40, 0x5E, 0x18, 0x38, 0x12, 0x18, 0xA0, 0x7E, 0x12, 0x1A, 0x14, 0x20
	.byte 0x21, 0x5E, 0x49, 0x00, 0x0A, 0x4C, 0x38, 0x19, 0x00, 0x24, 0x00, 0x5F, 0x10, 0x38, 0x09, 0x18
	.byte 0x09, 0x04, 0x0A, 0x43, 0x13, 0x43, 0x2B, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xC0, 0x08, 0xC0, 0x01, 0x70, 0x42, 0x02, 0x02, 0x64, 0x32, 0x10, 0x08, 0x00, 0xFF, 0x00, 0xFE
	.byte 0x4E, 0x02, 0x00, 0x00

	THUMB_FUNC_START sub_804EB04
sub_804EB04: @ 0x0804EB04
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #8
	bne _0804EB1E
	movs r1, #0
	ldr r0, _0804EB2C
	movs r2, #0x14
	ldrsh r0, [r0, r2]
	cmp r0, #0x3b
	bgt _0804EB1E
	movs r1, #1
_0804EB1E:
	cmp r1, #1
	beq _0804EB84
	cmp r1, #1
	bgt _0804EB30
	cmp r1, #0
	beq _0804EB36
	b _0804EBDE
	.align 2, 0
_0804EB2C: .4byte 0x02024270
_0804EB30:
	cmp r1, #2
	beq _0804EBD8
	b _0804EBDE
_0804EB36:
	ldrb r0, [r4, #1]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r1, r0
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	ldrb r0, [r4, #3]
	movs r2, #0xc0
	orrs r0, r2
	strb r0, [r4, #3]
	movs r0, #0x3f
	ands r1, r0
	strb r1, [r4, #1]
	ldrb r0, [r4, #5]
	ands r3, r0
	strb r3, [r4, #5]
	ldrh r1, [r4, #4]
	ldr r0, _0804EB7C
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #4]
	movs r0, #0x30
	strb r0, [r4]
	ldrh r1, [r4, #2]
	ldr r0, _0804EB80
	ands r0, r1
	movs r1, #8
	b _0804EBC8
	.align 2, 0
_0804EB7C: .4byte 0xFFFFFC00
_0804EB80: .4byte 0xFFFFFE00
_0804EB84:
	ldrb r0, [r4, #1]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r1, r0
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	ldrb r0, [r4, #3]
	movs r2, #0xc0
	orrs r0, r2
	strb r0, [r4, #3]
	movs r0, #0x3f
	ands r1, r0
	strb r1, [r4, #1]
	ldrb r0, [r4, #5]
	ands r3, r0
	strb r3, [r4, #5]
	ldrh r1, [r4, #4]
	ldr r0, _0804EBD0
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #4]
	movs r0, #0x30
	strb r0, [r4]
	ldrh r1, [r4, #2]
	ldr r0, _0804EBD4
	ands r0, r1
	movs r1, #0xa8
_0804EBC8:
	orrs r0, r1
	strh r0, [r4, #2]
	b _0804EBDE
	.align 2, 0
_0804EBD0: .4byte 0xFFFFFC00
_0804EBD4: .4byte 0xFFFFFE00
_0804EBD8:
	adds r0, r4, #0
	bl sub_80411EC
_0804EBDE:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_804EBE4
sub_804EBE4: @ 0x0804EBE4
	push {r4, r5, r6, r7, lr}
	ldr r6, _0804EC44
	movs r4, #0
	adds r5, r6, #0
	ldr r7, _0804EC48
_0804EBEE:
	adds r0, r4, #0
	adds r0, #0x61
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r1, r4, #0
	adds r1, #0x43
	lsls r1, r1, #3
	adds r1, r1, r5
	adds r2, r4, #0
	adds r2, #0x52
	lsls r2, r2, #3
	adds r2, r2, r5
	lsls r3, r4, #1
	adds r3, r3, r7
	ldrb r3, [r3]
	bl sub_804E6E8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0804EBEE
	movs r4, #0
	ldr r5, _0804EC48
_0804EC1E:
	lsls r0, r4, #3
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	lsls r1, r4, #1
	adds r1, r1, r5
	ldrb r1, [r1]
	bl sub_804E7F8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0804EC1E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EC44: .4byte 0x02018400
_0804EC48: .4byte 0x0202448C

	THUMB_FUNC_START sub_804EC4C
sub_804EC4C: @ 0x0804EC4C
	push {lr}
	bl sub_8045434
	bl sub_80454C8
	bl sub_80454F8
	bl sub_80454E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804EC64
sub_804EC64: @ 0x0804EC64
	push {r4, lr}
	ldr r4, _0804EC94
	ldr r1, _0804EC98
	ldr r2, _0804EC9C
	adds r0, r4, #0
	bl CpuSet
	movs r0, #0x80
	lsls r0, r0, #5
	adds r4, r4, r0
	ldr r1, _0804ECA0
	ldr r2, _0804ECA4
	adds r0, r4, #0
	bl CpuSet
	bl sub_80456AC
	bl sub_80454E0
	bl sub_80454C8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804EC94: .4byte 0x0200DC00
_0804EC98: .4byte 0x0600D800
_0804EC9C: .4byte 0x04000388
_0804ECA0: .4byte 0x0600E800
_0804ECA4: .4byte 0x04000040

	THUMB_FUNC_START sub_804ECA8
sub_804ECA8: @ 0x0804ECA8
	push {r4, lr}
	ldr r4, _0804ECD0
	ldr r1, _0804ECD4
	ldr r2, _0804ECD8
	adds r0, r4, #0
	bl CpuSet
	movs r0, #0x80
	lsls r0, r0, #5
	adds r4, r4, r0
	ldr r1, _0804ECDC
	ldr r2, _0804ECE0
	adds r0, r4, #0
	bl CpuSet
	bl sub_80454C8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804ECD0: .4byte 0x0200DC00
_0804ECD4: .4byte 0x0600D800
_0804ECD8: .4byte 0x04000388
_0804ECDC: .4byte 0x0600E800
_0804ECE0: .4byte 0x04000040

	THUMB_FUNC_START sub_804ECE4
sub_804ECE4: @ 0x0804ECE4
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0804ED04
_0804ECEA:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _0804ECEA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804ED04: .4byte 0x02018400

	THUMB_FUNC_START sub_804ED08
sub_804ED08: @ 0x0804ED08
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0
	strh r1, [r0]
	adds r0, #0x50
	strh r1, [r0]
	bl sub_804DCE8
	bl sub_804EDA0
	bl sub_804EDC8
	bl sub_804EDF0
	bl sub_804EE18
	bl sub_804EE6C
	movs r0, #0xf3
	bl sub_8055554
	cmp r0, #0
	beq _0804ED42
	ldr r0, _0804ED8C
	ldr r2, _0804ED90
	movs r1, #0x10
	bl sub_8044E50
_0804ED42:
	movs r0, #0xf0
	bl sub_8055554
	cmp r0, #0
	beq _0804ED58
	ldr r0, _0804ED8C
	ldr r2, _0804ED90
	movs r1, #0x10
	movs r3, #6
	bl sub_8044EC8
_0804ED58:
	movs r0, #0xef
	bl sub_8055554
	cmp r0, #0
	beq _0804ED6C
	ldr r0, _0804ED8C
	movs r1, #0x10
	movs r2, #0xff
	bl sub_8045284
_0804ED6C:
	ldr r1, _0804ED94
	movs r0, #7
	strh r0, [r1]
	bl sub_8008220
	bl sub_804EC4C
	ldr r1, _0804ED98
	ldr r2, _0804ED9C
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F508
	pop {r0}
	bx r0
	.align 2, 0
_0804ED8C: .4byte 0x02000000
_0804ED90: .4byte 0x000001FF
_0804ED94: .4byte 0x04000054
_0804ED98: .4byte 0x0400004A
_0804ED9C: .4byte 0x00003D3F

	THUMB_FUNC_START sub_804EDA0
sub_804EDA0: @ 0x0804EDA0
	ldr r1, _0804EDB8
	ldr r2, _0804EDBC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0804EDC0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0804EDC4
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0804EDB8: .4byte 0x0400000E
_0804EDBC: .4byte 0x00001783
_0804EDC0: .4byte 0x02024218
_0804EDC4: .4byte 0x02024204

	THUMB_FUNC_START sub_804EDC8
sub_804EDC8: @ 0x0804EDC8
	ldr r1, _0804EDE0
	ldr r2, _0804EDE4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0804EDE8
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0804EDEC
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0804EDE0: .4byte 0x0400000C
_0804EDE4: .4byte 0x00001F82
_0804EDE8: .4byte 0x0202420C
_0804EDEC: .4byte 0x0202424C

	THUMB_FUNC_START sub_804EDF0
sub_804EDF0: @ 0x0804EDF0
	ldr r1, _0804EE08
	ldr r2, _0804EE0C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0804EE10
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0804EE14
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0804EE08: .4byte 0x0400000A
_0804EE0C: .4byte 0x00001E81
_0804EE10: .4byte 0x0202422C
_0804EE14: .4byte 0x02024248

	THUMB_FUNC_START sub_804EE18
sub_804EE18: @ 0x0804EE18
	push {r4, lr}
	ldr r1, _0804EE50
	ldr r2, _0804EE54
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0804EE58
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0804EE5C
	movs r0, #8
	strh r0, [r1]
	ldr r0, _0804EE60
	ldr r4, _0804EE64
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0804EE68
	movs r1, #0x80
	lsls r1, r1, #5
	adds r4, r4, r1
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r4, #0
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804EE50: .4byte 0x04000008
_0804EE54: .4byte 0x00001D0C
_0804EE58: .4byte 0x02024240
_0804EE5C: .4byte 0x02024214
_0804EE60: .4byte 0x082AD2D0
_0804EE64: .4byte 0x0200DC00
_0804EE68: .4byte 0x082AD48C

	THUMB_FUNC_START sub_804EE6C
sub_804EE6C: @ 0x0804EE6C
	push {lr}
	bl sub_804ECE4
	bl sub_804E618
	bl sub_804DE74
	bl sub_804EBE4
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804EE84
sub_804EE84: @ 0x0804EE84
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r2, #0xe8
	strb r2, [r0]
	subs r1, #0x10
	ldr r3, _0804EEA4
	adds r2, r3, #0
	ands r1, r2
	ldrh r3, [r0, #2]
	ldr r2, _0804EEA8
	ands r2, r3
	orrs r2, r1
	strh r2, [r0, #2]
	bx lr
	.align 2, 0
_0804EEA4: .4byte 0x000001FF
_0804EEA8: .4byte 0xFFFFFE00

	THUMB_FUNC_START sub_804EEAC
sub_804EEAC: @ 0x0804EEAC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldrb r2, [r4, #5]
	movs r5, #0xd
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r1, r2
	movs r2, #8
	orrs r1, r2
	strb r1, [r4, #5]
	bl sub_8052194
	cmp r0, #0
	bne _0804EED8
	ldrb r0, [r4, #5]
	adds r1, r5, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r4, #5]
_0804EED8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804EEE0
sub_804EEE0: @ 0x0804EEE0
	push {lr}
	bl sub_804E618
	bl sub_804EBE4
	ldr r0, _0804EF04
	bl sub_80081DC
	bl sub_8008220
	ldr r0, _0804EF08
	ldr r1, _0804EF0C
	movs r2, #0x80
	lsls r2, r2, #5
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_0804EF04: .4byte 0x0804F1E5
_0804EF08: .4byte 0x02010400
_0804EF0C: .4byte 0x06010000

	THUMB_FUNC_START sub_804EF10
sub_804EF10: @ 0x0804EF10
	push {r4, r5, lr}
	movs r0, #0
	bl sub_804E518
	ldr r4, _0804EF6C
	ldr r1, _0804EF70
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r5, #8
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0804EF30
	movs r0, #0xd
	bl sub_804E518
_0804EF30:
	ldr r1, _0804EF74
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0804EF44
	movs r0, #0xe
	bl sub_804E518
_0804EF44:
	bl sub_80551B8
	bl sub_804E618
	bl sub_804EBE4
	ldr r0, _0804EF78
	bl sub_80081DC
	bl sub_8008220
	ldr r0, _0804EF7C
	ldr r1, _0804EF80
	movs r2, #0x80
	lsls r2, r2, #5
	bl CpuFastSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804EF6C: .4byte 0x02024270
_0804EF70: .4byte 0x000001CD
_0804EF74: .4byte 0x000001ED
_0804EF78: .4byte 0x0804F1E5
_0804EF7C: .4byte 0x02010400
_0804EF80: .4byte 0x06010000

	THUMB_FUNC_START sub_804EF84
sub_804EF84: @ 0x0804EF84
	ldr r3, _0804EF90
	strh r0, [r3, #8]
	strh r1, [r3, #0xa]
	strh r2, [r3, #0xc]
	bx lr
	.align 2, 0
_0804EF90: .4byte 0x02024270
	.byte 0x00, 0xB5, 0x09, 0x20, 0x01, 0x21, 0x00, 0x22, 0x03, 0xF0, 0x26, 0xFA
	.byte 0xFE, 0xF7, 0x4E, 0xFB, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x80, 0x20, 0xC0, 0x04, 0x00, 0x21
	.byte 0x01, 0x80, 0x50, 0x30, 0x01, 0x80, 0xFE, 0xF7, 0x97, 0xFE, 0xFF, 0xF7, 0xF1, 0xFE, 0xFF, 0xF7
	.byte 0x03, 0xFF, 0xFF, 0xF7, 0x15, 0xFF, 0xFF, 0xF7, 0x27, 0xFF, 0xFF, 0xF7, 0x4F, 0xFF, 0x05, 0x49
	.byte 0x07, 0x20, 0x08, 0x80, 0xB9, 0xF7, 0x24, 0xF9, 0xFF, 0xF7, 0x38, 0xFE, 0x00, 0xF0, 0x94, 0xFA
	.byte 0x01, 0xBC, 0x00, 0x47, 0x54, 0x00, 0x00, 0x04

	THUMB_FUNC_START sub_804EFE8
sub_804EFE8: @ 0x0804EFE8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0804F040
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #5
	ldr r2, _0804F044
	adds r3, r1, r2
	ldr r2, _0804F048
	ldr r1, _0804F04C
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0804F050
	adds r1, r0, r1
	movs r0, #0
	movs r6, #0xf0
	lsls r6, r6, #2
	movs r5, #0xe0
	lsls r5, r5, #1
_0804F01E:
	movs r2, #0
	adds r4, r0, #1
_0804F022:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	adds r2, #1
	cmp r2, #0x3f
	bls _0804F022
	adds r3, r3, r6
	adds r1, r1, r5
	adds r0, r4, #0
	cmp r0, #1
	bls _0804F01E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F040: .4byte 0x08103284
_0804F044: .4byte 0x02010400
_0804F048: .4byte 0x081032A2
_0804F04C: .4byte 0x02024270
_0804F050: .4byte 0x082A906C

	THUMB_FUNC_START sub_804F054
sub_804F054: @ 0x0804F054
	push {r4, r5, r6, lr}
	adds r3, r2, #0
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	ldr r2, _0804F09C
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	ldr r2, _0804F0A0
	lsrs r1, r1, #0x17
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #5
	ldr r0, [r0]
	adds r1, r0, r1
	movs r0, #0
	movs r6, #0xe0
	lsls r6, r6, #2
	movs r5, #0xc0
	lsls r5, r5, #1
_0804F07A:
	movs r2, #0
	adds r4, r0, #1
_0804F07E:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	adds r2, #1
	cmp r2, #0x7f
	bls _0804F07E
	adds r3, r3, r6
	adds r1, r1, r5
	adds r0, r4, #0
	cmp r0, #3
	bls _0804F07A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F09C: .4byte 0x08E11790
_0804F0A0: .4byte 0x081032D2
	.byte 0x30, 0xB5, 0x00, 0x06, 0x00, 0x0E, 0x19, 0x4A, 0x41, 0x01, 0x89, 0x18
	.byte 0x0C, 0x8A, 0x8B, 0x7C, 0x5A, 0x00, 0x17, 0x4D, 0x89, 0x7F, 0x49, 0x19, 0xD2, 0x18, 0x09, 0x78
	.byte 0x52, 0x18, 0x12, 0x06, 0x40, 0x19, 0x00, 0x78, 0x40, 0x01, 0x13, 0x49, 0x43, 0x18, 0x13, 0x48
	.byte 0xA4, 0x00, 0x24, 0x18, 0x12, 0x48, 0xD2, 0x0D, 0x12, 0x18, 0x10, 0x88, 0x40, 0x01, 0x21, 0x68
	.byte 0x09, 0x18, 0x00, 0x20, 0x00, 0x22, 0x44, 0x1C, 0x08, 0x78, 0x18, 0x70, 0x01, 0x31, 0x01, 0x33
	.byte 0x01, 0x32, 0x7F, 0x2A, 0xF8, 0xD9, 0xE0, 0x20, 0x80, 0x00, 0x1B, 0x18, 0xC0, 0x20, 0x40, 0x00
	.byte 0x09, 0x18, 0x20, 0x1C, 0x03, 0x28, 0xED, 0xD9, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x70, 0x42, 0x02, 0x02, 0x40, 0xDA, 0xE0, 0x08, 0x00, 0x04, 0x01, 0x02, 0x90, 0x17, 0xE1, 0x08
	.byte 0xD2, 0x32, 0x10, 0x08

	THUMB_FUNC_START sub_804F124
sub_804F124: @ 0x0804F124
	lsls r0, r0, #0x18
	ldr r1, _0804F14C
	lsrs r0, r0, #0x13
	adds r1, r0, r1
	ldrb r0, [r1, #0x1e]
	cmp r0, #0x14
	bls _0804F136
	movs r0, #0x14
	strb r0, [r1, #0x1e]
_0804F136:
	ldrb r0, [r1, #0x1e]
	subs r0, #1
	cmp r0, #0
	bge _0804F142
	movs r0, #0x14
	strb r0, [r1, #0x1e]
_0804F142:
	ldrb r0, [r1, #0x1e]
	subs r0, #1
	strb r0, [r1, #0x1e]
	bx lr
	.align 2, 0
_0804F14C: .4byte 0x02024270
	.byte 0x00, 0x06, 0x06, 0x49, 0xC0, 0x0C, 0x41, 0x18, 0x88, 0x7F, 0x01, 0x38, 0x00, 0x28, 0x01, 0xDA
	.byte 0x1A, 0x20, 0x88, 0x77, 0x88, 0x7F, 0x01, 0x38, 0x88, 0x77, 0x70, 0x47, 0x70, 0x42, 0x02, 0x02
	.byte 0x00, 0x06, 0x09, 0x49, 0xC0, 0x0C, 0x41, 0x18, 0x88, 0x7F, 0x0F, 0x28, 0x01, 0xD9, 0x0F, 0x20
	.byte 0x88, 0x77, 0x88, 0x7F, 0x01, 0x38, 0x00, 0x28, 0x01, 0xDA, 0x0F, 0x20, 0x88, 0x77, 0x88, 0x7F
	.byte 0x01, 0x38, 0x88, 0x77, 0x70, 0x47, 0x00, 0x00, 0x70, 0x42, 0x02, 0x02

	THUMB_FUNC_START sub_804F19C
sub_804F19C: @ 0x0804F19C
	lsls r0, r0, #0x18
	ldr r1, _0804F1AC
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	movs r1, #0x13
	strb r1, [r0, #0x1e]
	bx lr
	.align 2, 0
_0804F1AC: .4byte 0x02024270
	.byte 0x70, 0xB5, 0x0A, 0x4E, 0x00, 0x24, 0x0A, 0x4D, 0xE0, 0x00, 0x86, 0x21, 0x89, 0x00, 0x40, 0x18
	.byte 0x30, 0x18, 0x61, 0x00, 0x49, 0x19, 0x09, 0x78, 0xFF, 0xF7, 0xA6, 0xFB, 0x60, 0x1C, 0x00, 0x06
	.byte 0x04, 0x0E, 0x0E, 0x2C, 0xF0, 0xD9, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x84, 0x01, 0x02
	.byte 0x8C, 0x44, 0x02, 0x02

	THUMB_FUNC_START sub_804F1E4
sub_804F1E4: @ 0x0804F1E4
	push {lr}
	bl sub_8045434
	bl sub_80454C8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804F1F4
sub_804F1F4: @ 0x0804F1F4
	push {lr}
	bl sub_8008220
	ldr r0, _0804F210
	ldr r1, _0804F214
	movs r2, #0x80
	lsls r2, r2, #4
	bl CpuFastSet
	bl sub_80454E0
	pop {r0}
	bx r0
	.align 2, 0
_0804F210: .4byte 0x02010400
_0804F214: .4byte 0x06010000

	THUMB_FUNC_START sub_804F218
sub_804F218: @ 0x0804F218
	push {lr}
	bl sub_804E618
	bl sub_804EBE4
	bl sub_80551B8
	ldr r0, _0804F244
	bl sub_80081DC
	bl sub_8008220
	bl sub_80454C8
	ldr r0, _0804F248
	ldr r1, _0804F24C
	ldr r2, _0804F250
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_0804F244: .4byte 0x08045435
_0804F248: .4byte 0x0200DC00
_0804F24C: .4byte 0x0600D800
_0804F250: .4byte 0x04000388

	THUMB_FUNC_START sub_804F254
sub_804F254: @ 0x0804F254
	push {lr}
	bl sub_804E618
	bl sub_804EBE4
	bl sub_80551B8
	ldr r0, _0804F280
	bl sub_80081DC
	bl sub_8008220
	bl sub_80454C8
	ldr r0, _0804F284
	ldr r1, _0804F288
	movs r2, #0x80
	lsls r2, r2, #4
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_0804F280: .4byte 0x08045435
_0804F284: .4byte 0x02010400
_0804F288: .4byte 0x06010000

	THUMB_FUNC_START sub_804F28C
sub_804F28C: @ 0x0804F28C
	push {r4, r5, r6, lr}
	ldr r6, _0804F2D0
	movs r4, #0
	ldr r5, _0804F2D4
_0804F294:
	lsls r0, r4, #3
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	lsls r1, r4, #1
	adds r1, r1, r5
	ldrb r1, [r1]
	bl sub_804E918
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0804F294
	bl sub_80551B8
	ldr r0, _0804F2D8
	bl sub_80081DC
	bl sub_8008220
	bl sub_80456FC
	bl sub_80454C8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F2D0: .4byte 0x02018400
_0804F2D4: .4byte 0x0202448C
_0804F2D8: .4byte 0x08045435

	THUMB_FUNC_START sub_804F2DC
sub_804F2DC: @ 0x0804F2DC
	push {lr}
	bl sub_80456FC
	bl sub_80454E0
	bl sub_804549C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804F2F0
sub_804F2F0: @ 0x0804F2F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	bl sub_804F3E4
	movs r0, #1
	mov r8, r0
	ldr r1, _0804F360
	mov sb, r1
	mov r7, sp
	mov r6, sb
	adds r6, #0x32
_0804F30C:
	ldrb r0, [r6, #0x1b]
	lsls r0, r0, #0x1d
	lsrs r1, r0, #0x1f
	cmp r1, #1
	bne _0804F3C8
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	cmp r0, #1
	ble _0804F364
	ldrh r0, [r6, #0x18]
	ands r0, r1
	cmp r0, #0
	bne _0804F358
	mov r0, r8
	lsls r5, r0, #0x18
	lsrs r5, r5, #0x18
	ldrb r1, [r6]
	lsls r4, r5, #5
	add r4, sb
	strb r1, [r4, #0x12]
	adds r0, r5, #0
	mov r2, sp
	bl sub_8051A44
	ldrh r0, [r7]
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	ldrh r0, [r7, #2]
	ldrh r2, [r4, #0x16]
	adds r0, r0, r2
	strh r0, [r4, #0x16]
	adds r0, r5, #0
	bl sub_8052088
	adds r0, r5, #0
	bl sub_804E518
_0804F358:
	ldrh r0, [r6, #0x18]
	subs r0, #1
	b _0804F3C6
	.align 2, 0
_0804F360: .4byte 0x02024270
_0804F364:
	cmp r0, #1
	bne _0804F3A6
	mov r0, r8
	bl sub_804F19C
	mov r0, r8
	lsls r5, r0, #0x18
	lsrs r5, r5, #0x18
	ldrb r1, [r6]
	lsls r4, r5, #5
	add r4, sb
	strb r1, [r4, #0x12]
	adds r0, r5, #0
	mov r2, sp
	bl sub_8051A44
	ldrh r0, [r7]
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	ldrh r0, [r7, #2]
	ldrh r2, [r4, #0x16]
	adds r0, r0, r2
	strh r0, [r4, #0x16]
	adds r0, r5, #0
	bl sub_8052088
	adds r0, r5, #0
	bl sub_804E518
	ldrh r0, [r6, #0x18]
	subs r0, #1
	b _0804F3C6
_0804F3A6:
	movs r0, #0
	movs r1, #0x14
	bl sub_8056258
	cmp r0, #0
	bne _0804F3C8
	movs r0, #0
	movs r1, #3
	bl sub_8056258
	strb r0, [r6]
	movs r0, #5
	movs r1, #0x14
	bl sub_8056258
	lsls r0, r0, #2
_0804F3C6:
	strh r0, [r6, #0x18]
_0804F3C8:
	adds r6, #0x20
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0xe
	ble _0804F30C
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804F3E4
sub_804F3E4: @ 0x0804F3E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	movs r6, #0
	mov r8, sp
	ldr r5, _0804F48C
_0804F3F4:
	ldr r1, _0804F490
	ldrb r0, [r5, #0x12]
	lsls r3, r6, #2
	adds r0, r0, r3
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r5, #0x14]
	adds r1, r1, r0
	mov r2, r8
	strh r1, [r2]
	ldr r2, _0804F494
	ldrb r0, [r5, #0x12]
	adds r0, r0, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r5, #0x16]
	adds r2, r0, r3
	mov r4, r8
	strh r2, [r4, #2]
	movs r3, #0
	movs r7, #0xd
	adds r7, r7, r6
	mov sb, r7
	lsls r0, r7, #5
	adds r0, r0, r5
	mov ip, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r4, #0x14
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bne _0804F43C
	movs r3, #1
_0804F43C:
	cmp r1, r0
	ble _0804F442
	movs r3, #2
_0804F442:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r7, ip
	movs r0, #0x16
	ldrsh r1, [r7, r0]
	cmp r2, r1
	bne _0804F45A
	lsls r0, r3, #0x18
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	lsrs r3, r0, #0x18
_0804F45A:
	cmp r2, r1
	ble _0804F468
	lsls r0, r3, #0x18
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r0, r0, r4
	lsrs r3, r0, #0x18
_0804F468:
	mov r0, ip
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0804F4CA
	mov r1, ip
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
	lsls r1, r3, #0x18
	cmp r3, #4
	bne _0804F498
	ldrb r0, [r5, #0x12]
	mov r7, ip
	strb r0, [r7, #0x12]
	b _0804F4CA
	.align 2, 0
_0804F48C: .4byte 0x02024270
_0804F490: .4byte 0x08E0DB04
_0804F494: .4byte 0x08E0DB0C
_0804F498:
	mov r0, sb
	lsls r4, r0, #0x18
	lsrs r4, r4, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	add r2, sp, #4
	bl sub_8051C14
	lsls r1, r4, #5
	adds r1, r1, r5
	add r2, sp, #4
	ldrh r0, [r2]
	ldrh r3, [r1, #0x14]
	adds r0, r0, r3
	strh r0, [r1, #0x14]
	ldrh r0, [r2, #2]
	ldrh r7, [r1, #0x16]
	adds r0, r0, r7
	strh r0, [r1, #0x16]
	adds r0, r4, #0
	bl sub_8052088
	adds r0, r4, #0
	bl sub_804E518
_0804F4CA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0804F3F4
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x00, 0x88, 0x3C, 0x28, 0x08, 0xD1, 0xE2, 0x20
	.byte 0x06, 0xF0, 0x30, 0xF8, 0x00, 0x28, 0x03, 0xD1, 0x00, 0x20, 0x02, 0xE0, 0x70, 0x42, 0x02, 0x02
	.byte 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_804F508
sub_804F508: @ 0x0804F508
	push {lr}
	ldr r0, _0804F520
	ldrh r0, [r0]
	cmp r0, #0x3c
	bne _0804F524
	movs r0, #0xe2
	bl sub_8055554
	cmp r0, #0
	bne _0804F524
	movs r0, #0
	b _0804F526
	.align 2, 0
_0804F520: .4byte 0x02024270
_0804F524:
	movs r0, #1
_0804F526:
	cmp r0, #0
	bne _0804F534
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x9d
	lsls r2, r2, #8
	b _0804F53C
_0804F534:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x9f
	lsls r2, r2, #8
_0804F53C:
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_804F544
sub_804F544: @ 0x0804F544
	push {lr}
	ldr r0, _0804F55C
	ldrh r0, [r0]
	cmp r0, #0x3c
	bne _0804F560
	movs r0, #0xe2
	bl sub_8055554
	cmp r0, #0
	bne _0804F560
	movs r0, #0
	b _0804F562
	.align 2, 0
_0804F55C: .4byte 0x02024270
_0804F560:
	movs r0, #1
_0804F562:
	cmp r0, #0
	bne _0804F570
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xdd
	lsls r2, r2, #8
	b _0804F578
_0804F570:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xdf
	lsls r2, r2, #8
_0804F578:
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_804F580
sub_804F580: @ 0x0804F580
	push {lr}
	ldr r0, _0804F590
	ldr r1, _0804F594
	movs r2, #0xc0
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_0804F590: .4byte 0x082AD06C
_0804F594: .4byte 0x02000200

	THUMB_FUNC_START sub_804F598
sub_804F598: @ 0x0804F598
	push {lr}
	ldr r0, _0804F5A8
	ldr r1, _0804F5AC
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_0804F5A8: .4byte 0x082ADC8C
_0804F5AC: .4byte 0x02000000
	.byte 0x00, 0xB5, 0x06, 0x49, 0x06, 0x48, 0x00, 0x88, 0x80, 0x00, 0x40, 0x18, 0x00, 0x68, 0x05, 0x49
	.byte 0xF0, 0x22, 0x09, 0xF0, 0xC7, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xD0, 0x1C, 0xE1, 0x08
	.byte 0x70, 0x42, 0x02, 0x02, 0x20, 0x00, 0x00, 0x02

	THUMB_FUNC_START sub_804F5D8
sub_804F5D8: @ 0x0804F5D8
	push {r4, lr}
	ldr r0, _0804F610
	ldr r4, _0804F614
	adds r1, r4, #0
	movs r2, #0xc0
	bl CpuSet
	ldr r0, _0804F618
	ldr r2, _0804F61C
	adds r1, r4, r2
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0804F620
	ldr r0, _0804F624
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0804F628
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #0xf0
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F610: .4byte 0x082AD06C
_0804F614: .4byte 0x02000200
_0804F618: .4byte 0x082ADC8C
_0804F61C: .4byte 0xFFFFFE00
_0804F620: .4byte 0x08E11CD0
_0804F624: .4byte 0x02024270
_0804F628: .4byte 0xFFFFFE20
	.byte 0x30, 0xB5, 0x82, 0xB0
	.byte 0x05, 0x1C, 0x2D, 0x06, 0x2D, 0x0E, 0x09, 0x06, 0x09, 0x0E, 0x0E, 0x48, 0x6C, 0x01, 0x24, 0x18
	.byte 0xA1, 0x74, 0x28, 0x1C, 0x6A, 0x46, 0x02, 0xF0, 0xFD, 0xF9, 0x68, 0x46, 0x00, 0x88, 0xA1, 0x8A
	.byte 0x40, 0x18, 0xA0, 0x82, 0x68, 0x46, 0x40, 0x88, 0xE1, 0x8A, 0x40, 0x18, 0xE0, 0x82, 0x28, 0x1C
	.byte 0x02, 0xF0, 0x12, 0xFD, 0x28, 0x1C, 0xFE, 0xF7, 0x57, 0xFF, 0x02, 0xB0, 0x30, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x70, 0x42, 0x02, 0x02, 0x10, 0xB5, 0x82, 0xB0, 0x04, 0x1C, 0x24, 0x06
	.byte 0x24, 0x0E, 0x09, 0x06, 0x09, 0x0E, 0x20, 0x1C, 0x6A, 0x46, 0x02, 0xF0, 0xC3, 0xFA, 0x0B, 0x48
	.byte 0x61, 0x01, 0x09, 0x18, 0x68, 0x46, 0x00, 0x88, 0x8A, 0x8A, 0x80, 0x18, 0x88, 0x82, 0x68, 0x46
	.byte 0x40, 0x88, 0xCA, 0x8A, 0x80, 0x18, 0xC8, 0x82, 0x20, 0x1C, 0x02, 0xF0, 0xED, 0xFC, 0x20, 0x1C
	.byte 0xFE, 0xF7, 0x32, 0xFF, 0x02, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x70, 0x42, 0x02, 0x02

	THUMB_FUNC_START sub_804F6C0
sub_804F6C0: @ 0x0804F6C0
	ldr r0, _0804F6D0
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0804F6D0: .4byte 0x02024270
	.byte 0x10, 0xB5, 0x09, 0x06, 0x0B, 0x4B, 0x0C, 0x4C, 0x9A, 0x7C, 0x89, 0x0D
	.byte 0x52, 0x18, 0x12, 0x19, 0x12, 0x78, 0x12, 0x06, 0x12, 0x16, 0x9C, 0x8A, 0x12, 0x19, 0x02, 0x80
	.byte 0x07, 0x4C, 0x9A, 0x7C, 0x52, 0x18, 0x12, 0x19, 0x00, 0x21, 0x51, 0x56, 0xDB, 0x8A, 0xC9, 0x18
	.byte 0x41, 0x80, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x70, 0x42, 0x02, 0x02, 0x04, 0xDB, 0xE0, 0x08
	.byte 0x0C, 0xDB, 0xE0, 0x08

	THUMB_FUNC_START sub_804F714
sub_804F714: @ 0x0804F714
	push {r4, lr}
	movs r4, #9
_0804F718:
	bl sub_804F3E4
	subs r4, #1
	cmp r4, #0
	bge _0804F718
	ldr r2, _0804F74C
	movs r3, #0x13
	movs r0, #0xd9
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r4, #1
_0804F72E:
	ldrb r0, [r1, #0x1b]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0804F73C
	ldrb r0, [r2, #0x12]
	strb r0, [r1]
	strb r3, [r1, #0xc]
_0804F73C:
	adds r1, #0x20
	subs r4, #1
	cmp r4, #0
	bge _0804F72E
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F74C: .4byte 0x02024270

	THUMB_FUNC_START sub_804F750
sub_804F750: @ 0x0804F750
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_8035038
	adds r0, r4, #0
	bl sub_8053E34
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_0804F76C
sub_0804F76C: @ 0x0804F76C
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804F770
sub_804F770: @ 0x0804F770
	push {lr}
	ldr r0, _0804F784
	ldr r1, _0804F788
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_8034F60
	pop {r0}
	bx r0
	.align 2, 0
_0804F784: .4byte 0x02024270
_0804F788: .4byte 0x00000242

	THUMB_FUNC_START sub_804F78C
sub_804F78C: @ 0x0804F78C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r5, #0x17
	ldr r0, _0804F840
	mov sb, r0
	mov r0, r8
	movs r1, #0x1d
	bl sub_805B940
	mov sl, r0
_0804F7AC:
	adds r1, r5, #0
	subs r1, #0x17
	mov r2, sb
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r0, #0x1d
	mov r2, sl
	subs r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r7, r1, #0
	cmp r4, #0x1c
	bls _0804F7CE
	adds r0, r4, #0
	subs r0, #0x1d
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0804F7CE:
	movs r2, #0
	lsls r1, r5, #4
	adds r5, #1
	mov ip, r5
	ldr r6, _0804F844
	adds r3, r1, #0
	movs r5, #0
_0804F7DC:
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r6
	strh r5, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bls _0804F7DC
	mov r2, sb
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r8, r0
	bls _0804F826
	movs r2, #1
	adds r3, r1, #0
	adds r5, r3, r4
	ldr r7, _0804F848
	ldr r6, _0804F84C
_0804F802:
	adds r0, r4, r2
	cmp r0, #0xe
	ble _0804F81C
	cmp r0, #0x1e
	bgt _0804F81C
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r1, r3, r2
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	strh r1, [r0]
_0804F81C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bls _0804F802
_0804F826:
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x19
	bls _0804F7AC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F840: .4byte 0x08E0E08C
_0804F844: .4byte 0x02000000
_0804F848: .4byte 0x01FFFFE4
_0804F84C: .4byte 0x02018800

	THUMB_FUNC_START sub_804F850
sub_804F850: @ 0x0804F850
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, _0804F8A4
	adds r4, r0, #0
	adds r4, #8
	movs r0, #0x41
	mov r8, r0
_0804F86C:
	adds r0, r4, #0
	bl sub_80411EC
	adds r4, #8
	movs r1, #1
	rsbs r1, r1, #0
	add r8, r1
	mov r2, r8
	cmp r2, #0
	bge _0804F86C
	movs r3, #0
	mov r8, r3
	ldr r1, _0804F8A8
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r6, r6, #2
	mov ip, r6
	add r0, ip
	ldr r0, [r0]
	lsls r7, r7, #3
	adds r0, r7, r0
	mov r4, ip
	str r4, [sp]
	str r7, [sp, #4]
	b _0804FA00
	.align 2, 0
_0804F8A4: .4byte 0x02018400
_0804F8A8: .4byte 0x08FC4618
_0804F8AC:
	lsls r0, r2, #2
	ldr r6, _0804FA18
	adds r0, r0, r6
	ldr r0, [r0]
	add r0, ip
	ldr r0, [r0]
	adds r6, r7, r0
	ldr r0, [r6, #4]
	mov r2, r8
	lsls r1, r2, #3
	adds r0, r1, r0
	ldrh r3, [r0]
	mov sb, r3
	movs r3, #0xc0
	ldrb r2, [r0]
	movs r4, #4
	ldrsh r0, [r5, r4]
	adds r4, r2, r0
	mov sl, r1
	cmp r4, #0xbf
	ble _0804F8DE
	ldrh r0, [r5, #4]
	adds r3, r2, r0
	movs r0, #0xff
	ands r3, r0
_0804F8DE:
	cmp r4, #0xa0
	bgt _0804F8EA
	ldrh r0, [r5, #4]
	adds r3, r2, r0
	movs r1, #0xff
	ands r3, r1
_0804F8EA:
	ldr r2, _0804FA1C
	ldrb r1, [r6, #1]
	mov r4, r8
	subs r1, r1, r4
	lsls r1, r1, #3
	adds r1, r1, r2
	movs r0, #0xff
	lsls r0, r0, #8
	mov r6, sb
	ands r0, r6
	orrs r3, r0
	movs r4, #0
	strh r3, [r1]
	ldrb r1, [r5, #6]
	movs r3, #3
	adds r0, r3, #0
	ands r0, r1
	movs r1, #1
	add r1, r8
	mov sb, r1
	cmp r0, #1
	bne _0804F93C
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r6, _0804FA18
	adds r0, r0, r6
	ldr r0, [r0]
	add r0, ip
	ldr r0, [r0]
	adds r0, r7, r0
	ldrb r0, [r0, #1]
	subs r0, r0, r1
	adds r0, #1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r6, #0x80
	lsls r6, r6, #3
	adds r2, r6, #0
	orrs r1, r2
	strh r1, [r0]
_0804F93C:
	ldrb r1, [r5, #6]
	adds r0, r3, #0
	ands r0, r1
	ldrb r2, [r5]
	cmp r0, #2
	bne _0804F96C
	lsls r0, r2, #2
	ldr r1, _0804FA18
	adds r0, r0, r1
	ldr r0, [r0]
	add r0, ip
	ldr r0, [r0]
	adds r0, r7, r0
	ldrb r0, [r0, #1]
	subs r0, #1
	cmp r8, r0
	bne _0804F96C
	ldr r3, _0804FA1C
	ldrh r0, [r3, #8]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3, #8]
_0804F96C:
	lsls r0, r2, #2
	ldr r6, _0804FA18
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r7, [sp]
	adds r0, r7, r0
	ldr r0, [r0]
	ldr r1, [sp, #4]
	adds r4, r1, r0
	ldr r0, [r4, #4]
	add r0, sl
	ldrh r6, [r0, #2]
	ldr r3, _0804FA20
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r3, #0
	ands r0, r6
	ldrh r7, [r5, #2]
	adds r1, r0, r7
	ldr r0, _0804FA24
	cmp r1, r0
	ble _0804F99C
	adds r2, r1, #0
	ands r2, r3
_0804F99C:
	cmp r1, #0xf0
	bgt _0804F9A4
	adds r2, r3, #0
	ands r2, r1
_0804F9A4:
	ldrb r1, [r4, #1]
	mov r0, sb
	subs r1, r1, r0
	adds r1, #1
	lsls r1, r1, #2
	adds r1, #1
	lsls r1, r1, #1
	ldr r3, _0804FA1C
	adds r1, r1, r3
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r6
	orrs r2, r0
	strh r2, [r1]
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r4, _0804FA18
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r6, [sp]
	adds r0, r6, r0
	ldr r0, [r0]
	ldr r7, [sp, #4]
	adds r0, r7, r0
	ldrb r1, [r0, #1]
	mov r2, sb
	subs r1, r1, r2
	adds r1, #1
	lsls r1, r1, #2
	adds r1, #2
	lsls r1, r1, #1
	adds r1, r1, r3
	ldr r0, [r0, #4]
	add r0, sl
	ldrh r0, [r0, #4]
	strh r0, [r1]
	mov r8, sb
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r0, [r0]
	mov ip, r6
	add r0, ip
	ldr r0, [r0]
	ldr r7, [sp, #4]
	adds r0, r7, r0
_0804FA00:
	ldrb r0, [r0, #1]
	cmp r8, r0
	bge _0804FA08
	b _0804F8AC
_0804FA08:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FA18: .4byte 0x08FC4618
_0804FA1C: .4byte 0x02018400
_0804FA20: .4byte 0x000001FF
_0804FA24: .4byte 0x000001BF

	THUMB_FUNC_START sub_804FA28
sub_804FA28: @ 0x0804FA28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r1, _0804FAE4
	ldrb r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0804FAE8
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r2, _0804FAEC
	ldr r6, _0804FAF0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r0, r0, r4
	mov ip, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r0, r0, r2
	mov r8, r0
	ldr r0, _0804FAF4
	mov sl, r0
	ldr r0, _0804FAF8
	mov sb, r0
	movs r3, #0xf
	movs r5, #0x80
	lsls r5, r5, #2
_0804FA68:
	adds r1, r6, #1
_0804FA6A:
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _0804FA6A
	adds r2, r2, r5
	subs r3, #1
	cmp r3, #0
	bge _0804FA68
	mov r4, ip
	mov r2, r8
	movs r3, #0
	ldr r6, _0804FAF0
	movs r5, #0x80
	lsls r5, r5, #2
_0804FA8C:
	adds r3, #1
	adds r1, r6, #1
_0804FA90:
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _0804FA90
	adds r2, r2, r5
	cmp r3, #0xb
	ble _0804FA8C
	ldrb r0, [r7]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	mov r1, sb
	movs r2, #0x50
	bl CpuSet
	movs r0, #0xf3
	bl sub_8055554
	cmp r0, #0
	beq _0804FACC
	ldr r0, _0804FAFC
	add r0, sb
	movs r1, #0xb8
	lsls r1, r1, #1
	ldr r2, _0804FB00
	bl sub_8044E50
_0804FACC:
	bl sub_8008220
	bl sub_804F2DC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FAE4: .4byte 0x08FC4440
_0804FAE8: .4byte 0x02018C00
_0804FAEC: .4byte 0x02014400
_0804FAF0: .4byte 0x000001FF
_0804FAF4: .4byte 0x08FC452C
_0804FAF8: .4byte 0x020002E0
_0804FAFC: .4byte 0xFFFFFD20
_0804FB00: .4byte 0x000001BF

	THUMB_FUNC_START sub_804FB04
sub_804FB04: @ 0x0804FB04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r2, #0
	strh r2, [r6, #2]
	strh r2, [r6, #4]
	ldrb r1, [r6, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #6]
	ldr r0, _0804FB4C
	strh r2, [r0]
	adds r0, r6, #0
	bl sub_804FA28
	ldr r0, _0804FB50
	ldr r1, _0804FB54
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r0, #0
	str r0, [sp]
	ldr r3, _0804FB58
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	b _0804FC30
	.align 2, 0
_0804FB4C: .4byte 0x02024228
_0804FB50: .4byte 0x02000000
_0804FB54: .4byte 0x02018800
_0804FB58: .4byte 0x08FC4618
_0804FB5C:
	movs r7, #0
	ldrb r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [sp]
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	mov sb, r1
	adds r3, #1
	str r3, [sp, #4]
	cmp r0, #0
	beq _0804FC1E
	ldr r0, _0804FC64
	mov sl, r0
_0804FB7E:
	adds r0, r6, #0
	ldr r1, [sp]
	adds r2, r7, #0
	bl sub_804F850
	ldr r0, _0804FC68
	mov r1, sl
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldr r4, _0804FC6C
	adds r4, r7, r4
	ldrb r3, [r4]
	mov r0, sl
	movs r1, #0
	ldr r2, _0804FC70
	bl sub_8044EC8
	ldrb r3, [r4]
	mov r0, sl
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _0804FC74
	bl sub_8044EC8
	ldr r0, _0804FC78
	adds r0, r7, r0
	ldrb r3, [r0]
	mov r0, sl
	movs r1, #0
	ldr r2, _0804FC74
	bl sub_8044F80
	movs r4, #0
	ldrb r0, [r6]
	lsls r0, r0, #2
	ldr r1, _0804FC7C
	adds r0, r0, r1
	ldr r0, [r0]
	add r0, sb
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r1, r0, r1
	adds r5, r0, #0
	adds r7, #1
	ldrb r1, [r1]
	cmp r4, r1
	bge _0804FC06
	ldr r2, _0804FC7C
	mov r8, r2
_0804FBE4:
	bl sub_8008220
	bl sub_80454C8
	bl sub_80454E0
	adds r4, #1
	ldrb r0, [r6]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	add r0, sb
	ldr r0, [r0]
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r4, r0
	blt _0804FBE4
_0804FC06:
	ldrb r2, [r6]
	lsls r0, r2, #2
	ldr r3, _0804FC7C
	adds r0, r0, r3
	ldr r0, [r0]
	add r0, sb
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804FB7E
_0804FC1E:
	ldr r0, [sp, #4]
	str r0, [sp]
	ldr r3, _0804FC7C
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, [sp]
	lsls r0, r2, #2
	adds r0, r0, r1
_0804FC30:
	ldr r0, [r0]
	cmp r0, #0
	bne _0804FB5C
	movs r4, #1
	ldr r5, _0804FC80
_0804FC3A:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _0804FC3A
	bl sub_8008220
	bl sub_80454C8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FC64: .4byte 0x02000000
_0804FC68: .4byte 0x02018800
_0804FC6C: .4byte 0x08E0E0D2
_0804FC70: .4byte 0x0000016F
_0804FC74: .4byte 0x000001FF
_0804FC78: .4byte 0x08E0E0AC
_0804FC7C: .4byte 0x08FC4618
_0804FC80: .4byte 0x02018400

	THUMB_FUNC_START sub_804FC84
sub_804FC84: @ 0x0804FC84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	ldrb r1, [r0, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #6]
	ldr r1, _0804FE4C
	movs r2, #0xbc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r5, _0804FE50
	ldr r0, _0804FE54
	ldrb r0, [r0]
	lsls r0, r0, #8
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r5]
	mov r0, r8
	bl sub_804FA28
	movs r3, #0
	str r3, [sp]
	ldr r1, _0804FE58
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r1, r0, r1
	movs r3, #0
	ldrsh r0, [r1, r3]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _0804FCDE
	bl sub_8034F60
_0804FCDE:
	ldr r3, _0804FE5C
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, r4
	beq _0804FDE4
_0804FCE8:
	ldr r2, [sp]
	lsls r0, r2, #1
	ldr r3, _0804FE5C
	adds r0, r0, r3
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1, #2]
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1, #4]
	ldrb r2, [r1, #1]
	str r2, [sp, #4]
	movs r7, #0
	ldr r2, _0804FE60
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r3, [sp, #4]
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	ldr r3, [sp]
	adds r3, #2
	str r3, [sp, #8]
	ldr r3, [sp]
	adds r3, #3
	str r3, [sp, #0xc]
	cmp r0, #0
	beq _0804FD94
	mov sl, r2
	adds r6, r1, #0
_0804FD30:
	mov r0, r8
	ldr r1, [sp, #4]
	adds r2, r7, #0
	bl sub_804F850
	movs r4, #0
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	adds r0, r6, r0
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r1, r0, r1
	adds r5, r0, #0
	adds r7, #1
	ldrb r1, [r1]
	cmp r4, r1
	bge _0804FD7C
	ldr r2, _0804FE60
	mov sb, r2
_0804FD5C:
	bl sub_8008220
	bl sub_80454C8
	adds r4, #1
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	adds r0, r6, r0
	ldr r0, [r0]
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r4, r0
	blt _0804FD5C
_0804FD7C:
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	adds r0, r6, r0
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804FD30
_0804FD94:
	ldr r4, _0804FE54
	ldr r0, [sp]
	movs r1, #3
	bl sub_805AF28
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #8
	movs r1, #0x10
	orrs r0, r1
	ldr r2, _0804FE50
	strh r0, [r2]
	ldr r3, [sp, #8]
	lsls r0, r3, #1
	ldr r1, _0804FE5C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r4, [r0, r2]
	cmp r4, #0
	ble _0804FDCA
_0804FDBC:
	bl sub_8008220
	bl sub_804549C
	subs r4, #1
	cmp r4, #0
	bgt _0804FDBC
_0804FDCA:
	ldr r3, [sp, #0xc]
	str r3, [sp]
	adds r0, r3, #0
	adds r0, #2
	lsls r0, r0, #1
	ldr r1, _0804FE5C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0804FCE8
_0804FDE4:
	movs r4, #1
	ldr r5, _0804FE64
_0804FDE8:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _0804FDE8
	bl sub_8008220
	bl sub_80454C8
	ldr r1, _0804FE68
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _0804FE3C
	ldr r5, _0804FE6C
	adds r4, r1, #0
_0804FE10:
	ldr r0, _0804FE70
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _0804FE74
	bl sub_8044F80
	bl sub_8008220
	bl sub_80454E0
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0804FE10
_0804FE3C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FE4C: .4byte 0x02024228
_0804FE50: .4byte 0x02024238
_0804FE54: .4byte 0x08E0E0F8
_0804FE58: .4byte 0x08E0E146
_0804FE5C: .4byte 0x08E0DB14
_0804FE60: .4byte 0x08FC4618
_0804FE64: .4byte 0x02018400
_0804FE68: .4byte 0x08E0E11C
_0804FE6C: .4byte 0x02000000
_0804FE70: .4byte 0x02018800
_0804FE74: .4byte 0x000001FF

	THUMB_FUNC_START sub_804FE78
sub_804FE78: @ 0x0804FE78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	ldrb r1, [r0, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, r8
	strb r0, [r1, #6]
	ldr r1, _0804FEB0
	movs r0, #0
	strh r0, [r1]
	mov r0, r8
	bl sub_804FA28
	movs r2, #0
	str r2, [sp]
	mov r3, r8
	ldrb r2, [r3]
	lsls r0, r2, #2
	ldr r1, _0804FEB4
	adds r0, r0, r1
	ldr r0, [r0]
	b _0804FFFC
	.align 2, 0
_0804FEB0: .4byte 0x02024228
_0804FEB4: .4byte 0x08E0DFC0
_0804FEB8:
	lsls r0, r2, #2
	ldr r1, _0805001C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r3, [sp]
	lsls r2, r3, #1
	adds r1, r2, r3
	lsls r1, r1, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	mov r3, r8
	strh r0, [r3, #2]
	ldrb r0, [r3]
	lsls r0, r0, #2
	ldr r3, _0805001C
	adds r0, r0, r3
	ldr r0, [r0]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	mov r1, r8
	strh r0, [r1, #4]
	movs r3, #0
	mov sb, r3
	ldr r4, _08050020
	ldrb r1, [r1]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0]
	adds r3, r1, #0
	str r2, [sp, #0xc]
	ldr r1, [sp]
	adds r1, #1
	str r1, [sp, #8]
	cmp r0, #0
	beq _0804FFA0
_0804FF00:
	movs r6, #0
	lsls r0, r3, #2
	adds r0, r0, r4
	ldr r0, [r0]
	mov r2, sb
	lsls r1, r2, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	adds r7, r1, #0
	adds r2, #1
	str r2, [sp, #4]
	cmp r0, #0
	beq _0804FF88
	ldr r3, _08050020
	mov sl, r3
_0804FF20:
	mov r0, r8
	mov r1, sb
	adds r2, r6, #0
	bl sub_804F850
	movs r4, #0
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r1, [r0]
	lsls r0, r6, #3
	adds r1, r0, r1
	adds r5, r0, #0
	adds r6, #1
	ldrb r1, [r1]
	cmp r4, r1
	bge _0804FF6E
	ldr r1, _08050020
_0804FF4A:
	str r1, [sp, #0x10]
	bl sub_8008220
	bl sub_80454C8
	adds r4, #1
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #2
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r0, [r0]
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r4, r0
	blt _0804FF4A
_0804FF6E:
	mov r3, r8
	ldrb r2, [r3]
	lsls r0, r2, #2
	add r0, sl
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r1, [r0]
	lsls r0, r6, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r3, r2, #0
	cmp r0, #0
	bne _0804FF20
_0804FF88:
	ldr r0, [sp, #4]
	mov sb, r0
	ldr r4, _08050020
	lsls r0, r3, #2
	adds r0, r0, r4
	ldr r1, [r0]
	mov r2, sb
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0804FF00
_0804FFA0:
	ldr r0, _08050024
	mov r3, r8
	ldrb r1, [r3]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r1, [sp]
	cmp r0, r1
	bne _0804FFBA
	movs r0, #0xa7
	lsls r0, r0, #1
	bl sub_8034F60
_0804FFBA:
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #2
	ldr r3, _0805001C
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, [sp, #0xc]
	ldr r3, [sp]
	adds r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #4
	ldrsh r4, [r0, r1]
	cmp r4, #0
	ble _0804FFE2
_0804FFD8:
	bl sub_8008220
	subs r4, #1
	cmp r4, #0
	bgt _0804FFD8
_0804FFE2:
	ldr r2, [sp, #8]
	str r2, [sp]
	mov r3, r8
	ldrb r2, [r3]
	lsls r0, r2, #2
	ldr r1, _0805001C
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r3, [sp]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r1
_0804FFFC:
	movs r3, #4
	ldrsh r1, [r0, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0805000A
	b _0804FEB8
_0805000A:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805001C: .4byte 0x08E0DFC0
_08050020: .4byte 0x08FC4618
_08050024: .4byte 0x08E0E1D2

	THUMB_FUNC_START sub_8050028
sub_8050028: @ 0x08050028
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r1, #0
	strh r1, [r5, #2]
	strh r1, [r5, #4]
	ldrb r2, [r5, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r5, #6]
	ldr r0, _08050060
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_804FA28
	movs r0, #0
	str r0, [sp]
	ldr r3, _08050064
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	b _080500FA
	.align 2, 0
_08050060: .4byte 0x02024228
_08050064: .4byte 0x08FC4618
_08050068:
	movs r7, #0
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [sp]
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	mov r8, r1
	adds r3, #1
	str r3, [sp, #4]
	cmp r0, #0
	beq _080500E8
	ldr r0, _08050110
	mov sl, r0
_0805008A:
	adds r0, r5, #0
	ldr r1, [sp]
	adds r2, r7, #0
	bl sub_804F850
	movs r4, #0
	ldrb r0, [r5]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	add r0, r8
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r1, r0, r1
	adds r6, r0, #0
	adds r7, #1
	ldrb r1, [r1]
	cmp r4, r1
	bge _080500D2
	ldr r1, _08050110
	mov sb, r1
_080500B4:
	bl sub_8008220
	bl sub_80454C8
	adds r4, #1
	ldrb r0, [r5]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	add r0, r8
	ldr r0, [r0]
	adds r0, r6, r0
	ldrb r0, [r0]
	cmp r4, r0
	blt _080500B4
_080500D2:
	ldrb r2, [r5]
	lsls r0, r2, #2
	add r0, sl
	ldr r0, [r0]
	add r0, r8
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805008A
_080500E8:
	ldr r3, [sp, #4]
	str r3, [sp]
	ldr r3, _08050110
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, [sp]
	lsls r0, r2, #2
	adds r0, r0, r1
_080500FA:
	ldr r0, [r0]
	cmp r0, #0
	bne _08050068
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050110: .4byte 0x08FC4618

	THUMB_FUNC_START sub_8050114
sub_8050114: @ 0x08050114
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r1, #0
	strh r1, [r5, #2]
	strh r1, [r5, #4]
	ldrb r2, [r5, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r5, #6]
	ldr r0, _0805021C
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_804FA28
	movs r6, #0
	ldr r2, _08050220
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r5, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #0
	beq _080501F0
	ldr r0, _08050224
	mov sl, r0
	mov sb, r2
_0805015A:
	movs r4, #1
	lsls r7, r6, #3
	adds r0, r6, #1
	mov r8, r0
_08050162:
	lsls r0, r4, #3
	add r0, sl
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08050162
	ldrb r1, [r5, #1]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_804F850
	ldr r1, _08050228
	ldrb r0, [r5]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r6
	bne _08050196
	movs r0, #0xa7
	lsls r0, r0, #1
	bl sub_8034F60
_08050196:
	movs r4, #0
	ldrb r0, [r5]
	lsls r0, r0, #2
	add r0, sb
	ldrb r1, [r5, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r0, [r0]
	cmp r4, r0
	bge _080501D4
	ldr r6, _08050220
_080501B2:
	bl sub_8008220
	bl sub_80454C8
	adds r4, #1
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r5, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r0, [r0]
	cmp r4, r0
	blt _080501B2
_080501D4:
	mov r6, r8
	ldrb r0, [r5]
	lsls r0, r0, #2
	add r0, sb
	ldrb r1, [r5, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	lsls r0, r6, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805015A
_080501F0:
	movs r4, #1
	ldr r5, _08050224
_080501F4:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _080501F4
	bl sub_8008220
	bl sub_80454C8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805021C: .4byte 0x02024228
_08050220: .4byte 0x08FC4618
_08050224: .4byte 0x02018400
_08050228: .4byte 0x08E0E1D2

	THUMB_FUNC_START sub_805022C
sub_805022C: @ 0x0805022C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r1, #0
	strh r1, [r5, #2]
	strh r1, [r5, #4]
	ldrb r2, [r5, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r5, #6]
	ldr r0, _080503B0
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_804FA28
	ldr r4, _080503B4
	ldr r1, _080503B8
	adds r0, r4, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r7, #0
	ldr r3, _080503BC
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r2, [r5, #1]
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805033A
	mov r8, r4
	mov sb, r3
_0805027E:
	adds r0, r5, #0
	adds r1, r2, #0
	adds r2, r7, #0
	bl sub_804F850
	ldr r0, _080503C0
	ldrb r1, [r5]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r7
	bne _0805029E
	movs r0, #0xa7
	lsls r0, r0, #1
	bl sub_8034F60
_0805029E:
	ldr r0, _080503C4
	adds r4, r7, r0
	ldrb r0, [r4]
	cmp r0, #5
	bhi _080502CE
	ldr r0, _080503B8
	mov r1, r8
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldrb r3, [r4]
	mov r0, r8
	movs r1, #0
	ldr r2, _080503C8
	bl sub_8044EC8
	ldrb r3, [r4]
	mov r0, r8
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _080503CC
	bl sub_8044EC8
_080502CE:
	bl sub_8008220
	bl sub_80454C8
	bl sub_80454E0
	ldrb r0, [r5]
	lsls r0, r0, #2
	add r0, sb
	ldrb r1, [r5, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	lsls r1, r7, #3
	adds r0, r1, r0
	ldrb r0, [r0]
	movs r4, #2
	adds r6, r1, #0
	adds r7, #1
	cmp r0, #1
	ble _08050320
	ldr r2, _080503BC
_080502FC:
	str r2, [sp]
	bl sub_8008220
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r2, [sp]
	adds r0, r0, r2
	ldrb r1, [r5, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r6, r0
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r4, #1
	cmp r1, r0
	bgt _080502FC
_08050320:
	ldrb r0, [r5]
	lsls r0, r0, #2
	add r0, sb
	ldrb r2, [r5, #1]
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805027E
_0805033A:
	ldr r1, _080503D0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08050384
	ldr r5, _080503B4
	adds r4, r1, #0
_08050348:
	ldr r0, _080503B8
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _080503C8
	bl sub_8044EC8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _080503CC
	bl sub_8044EC8
	bl sub_8008220
	bl sub_80454E0
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08050348
_08050384:
	movs r4, #1
	ldr r5, _080503D4
_08050388:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08050388
	bl sub_8008220
	bl sub_80454C8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080503B0: .4byte 0x02024228
_080503B4: .4byte 0x02000000
_080503B8: .4byte 0x02018800
_080503BC: .4byte 0x08FC4618
_080503C0: .4byte 0x08E0E1D2
_080503C4: .4byte 0x08E0E20E
_080503C8: .4byte 0x0000016F
_080503CC: .4byte 0x000001FF
_080503D0: .4byte 0x08E0E284
_080503D4: .4byte 0x02018400

	THUMB_FUNC_START sub_80503D8
sub_80503D8: @ 0x080503D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	movs r1, #0
	strh r1, [r5, #2]
	strh r1, [r5, #4]
	ldrb r2, [r5, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r5, #6]
	ldr r0, _08050420
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_804FA28
	ldr r0, _08050424
	ldr r1, _08050428
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r0, #0
	mov sb, r0
	movs r1, #0
	str r1, [sp]
	ldr r3, _0805042C
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	b _080504FE
	.align 2, 0
_08050420: .4byte 0x02024228
_08050424: .4byte 0x02000000
_08050428: .4byte 0x02018800
_0805042C: .4byte 0x08FC4618
_08050430:
	movs r2, #0
	mov r8, r2
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [sp]
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	adds r7, r1, #0
	adds r3, #1
	str r3, [sp, #4]
	cmp r0, #0
	beq _080504EC
_08050450:
	adds r0, r5, #0
	ldr r1, [sp]
	mov r2, r8
	bl sub_804F850
	movs r4, #0
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r1, _0805056C
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r1, [r0]
	mov r2, r8
	lsls r0, r2, #3
	adds r1, r0, r1
	mov sl, r0
	adds r2, #1
	str r2, [sp, #8]
	ldrb r1, [r1]
	cmp r4, r1
	bge _080504CE
	ldr r6, _08050570
_0805047E:
	ldr r0, _08050574
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	mov r3, r8
	cmp r3, #9
	ble _080504AA
	movs r0, #2
	add sb, r0
	mov r1, sb
	cmp r1, #0x10
	ble _0805049E
	movs r2, #0x10
	mov sb, r2
_0805049E:
	adds r0, r6, #0
	movs r1, #0
	ldr r2, _08050578
	mov r3, sb
	bl sub_8044F80
_080504AA:
	bl sub_8008220
	bl sub_80454C8
	bl sub_80454E0
	adds r4, #1
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r3, _0805056C
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r0, [r0]
	add r0, sl
	ldrb r0, [r0]
	cmp r4, r0
	blt _0805047E
_080504CE:
	ldr r0, [sp, #8]
	mov r8, r0
	ldrb r2, [r5]
	lsls r0, r2, #2
	ldr r1, _0805056C
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r1, [r0]
	mov r3, r8
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08050450
_080504EC:
	ldr r0, [sp, #4]
	str r0, [sp]
	ldr r3, _0805056C
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, [sp]
	lsls r0, r2, #2
	adds r0, r0, r1
_080504FE:
	ldr r0, [r0]
	cmp r0, #0
	bne _08050430
	movs r4, #1
	ldr r5, _0805057C
_08050508:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08050508
	bl sub_8008220
	bl sub_80454C8
	ldr r1, _08050580
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _0805055C
	ldr r5, _08050570
	adds r4, r1, #0
_08050530:
	ldr r0, _08050574
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _08050578
	bl sub_8044F80
	bl sub_8008220
	bl sub_80454E0
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08050530
_0805055C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805056C: .4byte 0x08FC4618
_08050570: .4byte 0x02000000
_08050574: .4byte 0x02018800
_08050578: .4byte 0x000001FF
_0805057C: .4byte 0x02018400
_08050580: .4byte 0x08E0E091

	THUMB_FUNC_START sub_8050584
sub_8050584: @ 0x08050584
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r1, #0
	strh r1, [r6, #2]
	strh r1, [r6, #4]
	ldrb r2, [r6, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r6, #6]
	ldr r0, _080505CC
	strh r1, [r0]
	adds r0, r6, #0
	bl sub_804FA28
	ldr r0, _080505D0
	ldr r1, _080505D4
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r0, #0
	str r0, [sp]
	mov sl, r0
	ldr r3, _080505D8
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	b _080506BA
	.align 2, 0
_080505CC: .4byte 0x02024228
_080505D0: .4byte 0x02000000
_080505D4: .4byte 0x02018800
_080505D8: .4byte 0x08FC4618
_080505DC:
	movs r7, #0
	ldrb r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [sp]
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	mov sb, r1
	adds r3, #1
	str r3, [sp, #4]
	cmp r0, #0
	beq _080506A8
_080505FA:
	adds r0, r6, #0
	ldr r1, [sp]
	adds r2, r7, #0
	bl sub_804F850
	ldr r0, _08050728
	ldr r1, _0805072C
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldr r4, _08050730
	adds r4, r7, r4
	ldrb r3, [r4]
	ldr r0, _0805072C
	movs r1, #0
	ldr r2, _08050734
	bl sub_8044EC8
	ldrb r3, [r4]
	ldr r0, _0805072C
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _08050738
	bl sub_8044EC8
	cmp r7, #0xa
	ble _0805064C
	movs r0, #3
	add sl, r0
	mov r1, sl
	cmp r1, #0x10
	ble _08050640
	movs r2, #0x10
	mov sl, r2
_08050640:
	ldr r0, _0805072C
	movs r1, #0
	ldr r2, _08050738
	mov r3, sl
	bl sub_8044F80
_0805064C:
	movs r4, #0
	ldrb r0, [r6]
	lsls r0, r0, #2
	ldr r3, _0805073C
	adds r0, r0, r3
	ldr r0, [r0]
	add r0, sb
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r1, r0, r1
	adds r5, r0, #0
	adds r7, #1
	ldrb r1, [r1]
	cmp r4, r1
	bge _08050690
	adds r0, r3, #0
	mov r8, r0
_0805066E:
	bl sub_8008220
	bl sub_80454C8
	bl sub_80454E0
	adds r4, #1
	ldrb r0, [r6]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	add r0, sb
	ldr r0, [r0]
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r4, r0
	blt _0805066E
_08050690:
	ldrb r2, [r6]
	lsls r0, r2, #2
	ldr r1, _0805073C
	adds r0, r0, r1
	ldr r0, [r0]
	add r0, sb
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080505FA
_080506A8:
	ldr r3, [sp, #4]
	str r3, [sp]
	ldr r3, _0805073C
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, [sp]
	lsls r0, r2, #2
	adds r0, r0, r1
_080506BA:
	ldr r0, [r0]
	cmp r0, #0
	bne _080505DC
	movs r4, #1
	ldr r5, _08050740
_080506C4:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _080506C4
	bl sub_8008220
	bl sub_80454C8
	ldr r1, _08050744
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08050718
	ldr r5, _0805072C
	adds r4, r1, #0
_080506EC:
	ldr r0, _08050728
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _08050738
	bl sub_8044F80
	bl sub_8008220
	bl sub_80454E0
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080506EC
_08050718:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050728: .4byte 0x02018800
_0805072C: .4byte 0x02000000
_08050730: .4byte 0x08E0E20E
_08050734: .4byte 0x0000016F
_08050738: .4byte 0x000001FF
_0805073C: .4byte 0x08FC4618
_08050740: .4byte 0x02018400
_08050744: .4byte 0x08E0E091

	THUMB_FUNC_START sub_8050748
sub_8050748: @ 0x08050748
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	movs r2, #0
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	ldrb r1, [r0, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	mov r1, sb
	strb r0, [r1, #6]
	ldr r0, _08050838
	strh r2, [r0]
	mov r0, sb
	bl sub_804FA28
	ldr r0, _0805083C
	ldr r4, _08050840
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldr r5, _08050844
	movs r2, #0x80
	lsls r2, r2, #3
	adds r4, r4, r2
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r4, #0x52
_08050798:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x60
	bls _08050798
	bl sub_8008220
	bl sub_80454C8
	ldr r1, _08050848
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080507F4
	ldr r5, _0805083C
	adds r4, r1, #0
_080507C0:
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #1
	ldr r2, _0805084C
	bl sub_8044EC8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _08050850
	bl sub_8044EC8
	ldr r0, _08050854
	strh r0, [r5]
	bl sub_8008220
	bl sub_80454E0
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080507C0
_080507F4:
	ldr r1, _08050858
	movs r0, #0x3f
	strh r0, [r1]
	subs r1, #0x4a
	movs r3, #0x9f
	lsls r3, r3, #8
	adds r0, r3, #0
	strh r0, [r1]
	mov r0, sb
	movs r1, #0
	movs r2, #0
	bl sub_804F850
	bl sub_8008220
	bl sub_80454C8
	movs r2, #0
	ldr r1, _0805085C
	mov r3, sb
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _080508C4
	ldr r0, _08050860
	mov sl, r0
_0805082E:
	movs r5, #0
	adds r2, #1
	mov r8, r2
	ldr r7, _08050860
	b _08050898
	.align 2, 0
_08050838: .4byte 0x02024228
_0805083C: .4byte 0x02000000
_08050840: .4byte 0x02018800
_08050844: .4byte 0x02018400
_08050848: .4byte 0x08E0E2A0
_0805084C: .4byte 0x0000019F
_08050850: .4byte 0x000001FF
_08050854: .4byte 0x0000FFFF
_08050858: .4byte 0x0400004A
_0805085C: .4byte 0x08FC4618
_08050860: .4byte 0x08E0E295
_08050864:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	bl sub_804F78C
	movs r4, #0
	adds r6, r5, #1
	b _08050880
_08050872:
	bl sub_8008220
	bl sub_80454E0
	bl sub_80454C8
	adds r4, #1
_08050880:
	adds r0, r5, #0
	movs r1, #0x1d
	bl sub_805AF28
	add r0, sl
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r7, _08050954
	cmp r4, r0
	ble _08050872
	adds r5, r6, #0
_08050898:
	adds r0, r5, #0
	movs r1, #0x1d
	bl sub_805AF28
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08050864
	mov r2, r8
	ldr r1, _08050958
	mov r3, sb
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0805082E
_080508C4:
	ldr r0, _0805095C
	ldr r4, _08050960
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r5, #1
_080508D4:
	lsls r0, r5, #3
	adds r0, r0, r4
	bl sub_80411EC
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x51
	bls _080508D4
	bl sub_8008220
	bl sub_80454C8
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	ldr r1, _08050964
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08050944
	ldr r5, _08050968
	adds r4, r1, #0
_08050908:
	ldr r0, _0805096C
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _08050970
	bl sub_8044EC8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _08050974
	bl sub_8044EC8
	bl sub_8008220
	bl sub_80454E0
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08050908
_08050944:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050954: .4byte 0x08E0E295
_08050958: .4byte 0x08FC4618
_0805095C: .4byte 0x02018C00
_08050960: .4byte 0x02018400
_08050964: .4byte 0x08E0E2B2
_08050968: .4byte 0x02000000
_0805096C: .4byte 0x02018800
_08050970: .4byte 0x0000016F
_08050974: .4byte 0x000001FF

	THUMB_FUNC_START sub_8050978
sub_8050978: @ 0x08050978
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r1, #0
	strh r1, [r6, #2]
	strh r1, [r6, #4]
	ldrb r2, [r6, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r6, #6]
	ldr r0, _080509BC
	strh r1, [r0]
	adds r0, r6, #0
	bl sub_804FA28
	ldr r0, _080509C0
	ldr r1, _080509C4
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r0, #0
	str r0, [sp]
	ldr r3, _080509C8
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	b _08050A9E
	.align 2, 0
_080509BC: .4byte 0x02024228
_080509C0: .4byte 0x02000000
_080509C4: .4byte 0x02018800
_080509C8: .4byte 0x08FC4618
_080509CC:
	movs r7, #0
	ldrb r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [sp]
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	mov sb, r1
	adds r3, #1
	str r3, [sp, #4]
	cmp r0, #0
	beq _08050A8C
	ldr r0, _08050B2C
	mov sl, r0
_080509EE:
	adds r0, r6, #0
	ldr r1, [sp]
	adds r2, r7, #0
	bl sub_804F850
	ldr r0, _08050B30
	mov r1, sl
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldr r4, _08050B34
	adds r4, r7, r4
	ldrb r3, [r4]
	mov r0, sl
	movs r1, #0
	ldr r2, _08050B38
	bl sub_8044EC8
	ldrb r3, [r4]
	mov r0, sl
	movs r1, #0xa8
	lsls r1, r1, #1
	ldr r2, _08050B3C
	bl sub_8044EC8
	ldrb r3, [r4]
	mov r0, sl
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _08050B40
	bl sub_8044EC8
	movs r4, #0
	ldrb r0, [r6]
	lsls r0, r0, #2
	ldr r1, _08050B44
	adds r0, r0, r1
	ldr r0, [r0]
	add r0, sb
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r1, r0, r1
	adds r5, r0, #0
	adds r7, #1
	ldrb r1, [r1]
	cmp r4, r1
	bge _08050A74
	ldr r2, _08050B44
	mov r8, r2
_08050A52:
	bl sub_8008220
	bl sub_80454C8
	bl sub_80454E0
	adds r4, #1
	ldrb r0, [r6]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	add r0, sb
	ldr r0, [r0]
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r4, r0
	blt _08050A52
_08050A74:
	ldrb r2, [r6]
	lsls r0, r2, #2
	ldr r3, _08050B44
	adds r0, r0, r3
	ldr r0, [r0]
	add r0, sb
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080509EE
_08050A8C:
	ldr r0, [sp, #4]
	str r0, [sp]
	ldr r3, _08050B44
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, [sp]
	lsls r0, r2, #2
	adds r0, r0, r1
_08050A9E:
	ldr r0, [r0]
	cmp r0, #0
	bne _080509CC
	ldr r1, _08050B48
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08050AFE
	ldr r5, _08050B2C
	adds r4, r1, #0
_08050AB2:
	ldr r0, _08050B30
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _08050B38
	bl sub_8044EC8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	ldr r2, _08050B3C
	bl sub_8044EC8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _08050B40
	bl sub_8044EC8
	bl sub_8008220
	bl sub_80454E0
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08050AB2
_08050AFE:
	movs r4, #1
	ldr r5, _08050B4C
_08050B02:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08050B02
	bl sub_8008220
	bl sub_80454C8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050B2C: .4byte 0x02000000
_08050B30: .4byte 0x02018800
_08050B34: .4byte 0x08E0E20E
_08050B38: .4byte 0x0000013F
_08050B3C: .4byte 0x0000016F
_08050B40: .4byte 0x000001FF
_08050B44: .4byte 0x08FC4618
_08050B48: .4byte 0x08E0E284
_08050B4C: .4byte 0x02018400

	THUMB_FUNC_START sub_8050B50
sub_8050B50: @ 0x08050B50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	movs r1, #0
	strh r1, [r5, #2]
	strh r1, [r5, #4]
	ldrb r2, [r5, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r5, #6]
	ldr r0, _08050B98
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_804FA28
	ldr r0, _08050B9C
	ldr r1, _08050BA0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r0, #0
	mov sb, r0
	movs r1, #0
	str r1, [sp]
	ldr r3, _08050BA4
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	b _08050C76
	.align 2, 0
_08050B98: .4byte 0x02024228
_08050B9C: .4byte 0x02000000
_08050BA0: .4byte 0x02018800
_08050BA4: .4byte 0x08FC4618
_08050BA8:
	movs r2, #0
	mov r8, r2
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [sp]
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	adds r7, r1, #0
	adds r3, #1
	str r3, [sp, #4]
	cmp r0, #0
	beq _08050C64
_08050BC8:
	adds r0, r5, #0
	ldr r1, [sp]
	mov r2, r8
	bl sub_804F850
	movs r4, #0
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r1, _08050CAC
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r1, [r0]
	mov r2, r8
	lsls r0, r2, #3
	adds r1, r0, r1
	mov sl, r0
	adds r2, #1
	str r2, [sp, #8]
	ldrb r1, [r1]
	cmp r4, r1
	bge _08050C46
	ldr r6, _08050CB0
_08050BF6:
	ldr r0, _08050CB4
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	mov r3, r8
	cmp r3, #3
	ble _08050C22
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #0x10
	ble _08050C16
	movs r2, #0x10
	mov sb, r2
_08050C16:
	adds r0, r6, #0
	movs r1, #0
	ldr r2, _08050CB8
	mov r3, sb
	bl sub_8044F80
_08050C22:
	bl sub_8008220
	bl sub_80454C8
	bl sub_80454E0
	adds r4, #1
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r3, _08050CAC
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r0, [r0]
	add r0, sl
	ldrb r0, [r0]
	cmp r4, r0
	blt _08050BF6
_08050C46:
	ldr r0, [sp, #8]
	mov r8, r0
	ldrb r2, [r5]
	lsls r0, r2, #2
	ldr r1, _08050CAC
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r1, [r0]
	mov r3, r8
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08050BC8
_08050C64:
	ldr r0, [sp, #4]
	str r0, [sp]
	ldr r3, _08050CAC
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, [sp]
	lsls r0, r2, #2
	adds r0, r0, r1
_08050C76:
	ldr r0, [r0]
	cmp r0, #0
	bne _08050BA8
	movs r4, #1
	ldr r5, _08050CBC
_08050C80:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08050C80
	bl sub_8008220
	bl sub_80454C8
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050CAC: .4byte 0x08FC4618
_08050CB0: .4byte 0x02000000
_08050CB4: .4byte 0x02018800
_08050CB8: .4byte 0x000001FF
_08050CBC: .4byte 0x02018400

	THUMB_FUNC_START sub_8050CC0
sub_8050CC0: @ 0x08050CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	movs r2, #0
	strh r2, [r4, #2]
	strh r2, [r4, #4]
	ldrb r1, [r4, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #6]
	ldr r1, _08050D14
	movs r0, #0xbf
	strh r0, [r1]
	ldr r0, _08050D18
	strh r2, [r0]
	adds r0, r4, #0
	bl sub_804FA28
	ldr r0, _08050D1C
	ldr r1, _08050D20
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r0, #0
	mov r8, r0
	movs r7, #0
	ldr r3, _08050D24
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r2, [r4, #1]
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	b _08050E56
	.align 2, 0
_08050D14: .4byte 0x02024228
_08050D18: .4byte 0x02024230
_08050D1C: .4byte 0x02000000
_08050D20: .4byte 0x02018800
_08050D24: .4byte 0x08FC4618
_08050D28:
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r7, #0
	bl sub_804F850
	movs r5, #0
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldr r1, _08050DB8
	adds r0, r0, r1
	ldrb r1, [r4, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	lsls r0, r7, #3
	adds r1, r0, r1
	str r0, [sp, #4]
	adds r0, r7, #1
	str r0, [sp]
	ldrb r1, [r1]
	cmp r5, r1
	bge _08050E3E
	ldr r1, _08050DBC
	mov sl, r1
	ldr r0, _08050DC0
	mov sb, r0
	ldr r0, _08050DC4
	adds r6, r7, r0
_08050D62:
	movs r0, #0
	mov r1, sl
	strh r0, [r1]
	ldr r1, _08050DC8
	cmp r5, #0
	bne _08050DD8
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08050DD8
	movs r0, #8
	mov r1, sl
	strh r0, [r1]
	bl sub_8008220
	bl sub_804549C
	bl sub_80454C8
	bl sub_80454E0
	ldr r0, _08050DCC
	mov r1, sb
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldrb r3, [r6]
	mov r0, sb
	movs r1, #0
	ldr r2, _08050DD0
	bl sub_8044EC8
	ldrb r3, [r6]
	mov r0, sb
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _08050DD4
	bl sub_8044EC8
	b _08050E20
	.align 2, 0
_08050DB8: .4byte 0x08FC4618
_08050DBC: .4byte 0x02024230
_08050DC0: .4byte 0x02000000
_08050DC4: .4byte 0x08E0E20E
_08050DC8: .4byte 0x08E0E2C4
_08050DCC: .4byte 0x02018800
_08050DD0: .4byte 0x0000016F
_08050DD4: .4byte 0x000001FF
_08050DD8:
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _08050E10
	movs r0, #2
	add r8, r0
	mov r1, r8
	cmp r1, #0x10
	ble _08050DF2
	movs r0, #0x10
	mov r8, r0
_08050DF2:
	mov r0, r8
	ldr r1, _08050E0C
	strh r0, [r1]
	bl sub_8008220
	bl sub_804549C
	bl sub_80454C8
	bl sub_80454E0
	b _08050E20
	.align 2, 0
_08050E0C: .4byte 0x02024230
_08050E10:
	bl sub_8008220
	bl sub_804549C
	bl sub_80454C8
	bl sub_80454E0
_08050E20:
	adds r5, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldr r1, _08050EC8
	adds r0, r0, r1
	ldrb r1, [r4, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [sp, #4]
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r5, r0
	blt _08050D62
_08050E3E:
	ldr r7, [sp]
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldr r1, _08050EC8
	adds r0, r0, r1
	ldrb r2, [r4, #1]
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r0, r0, r1
_08050E56:
	ldrb r0, [r0]
	cmp r0, #0
	beq _08050E5E
	b _08050D28
_08050E5E:
	movs r4, #1
	ldr r5, _08050ECC
_08050E62:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08050E62
	bl sub_8008220
	bl sub_80454C8
	ldr r1, _08050ED0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08050EB6
	ldr r5, _08050ED4
	adds r4, r1, #0
_08050E8A:
	ldr r0, _08050ED8
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _08050EDC
	bl sub_8044F80
	bl sub_8008220
	bl sub_80454E0
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08050E8A
_08050EB6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050EC8: .4byte 0x08FC4618
_08050ECC: .4byte 0x02018400
_08050ED0: .4byte 0x08E0E091
_08050ED4: .4byte 0x02000000
_08050ED8: .4byte 0x02018800
_08050EDC: .4byte 0x000001FF

	THUMB_FUNC_START sub_8050EE0
sub_8050EE0: @ 0x08050EE0
	push {r4, r5, r6, lr}
	movs r2, #0
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	ldrb r3, [r0, #6]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r3
	strb r1, [r0, #6]
	ldr r0, _08050FDC
	strh r2, [r0]
	ldr r4, _08050FE0
	ldr r1, _08050FE4
	adds r0, r4, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldr r1, _08050FE8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08050F3E
	adds r5, r4, #0
	adds r4, r1, #0
_08050F12:
	ldr r0, _08050FE4
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _08050FEC
	bl sub_8044EC8
	bl sub_8008220
	bl sub_80454E0
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08050F12
_08050F3E:
	movs r5, #0
	ldr r6, _08050FF0
_08050F42:
	ldr r0, _08050FF4
	lsls r4, r5, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r1, _08050FF8
	adds r1, r5, r1
	ldrb r1, [r1]
	adds r1, r1, r6
	bl LZ77UnCompWram
	ldr r0, _08050FFC
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r2, _08051000
	lsls r1, r5, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r6
	movs r2, #0x80
	lsls r2, r2, #3
	bl CpuSet
	ldr r0, _08051004
	adds r4, r4, r0
	ldr r0, [r4]
	ldr r1, _08051008
	adds r1, r5, r1
	ldrb r1, [r1]
	lsls r1, r1, #1
	ldr r4, _08050FE0
	adds r1, r1, r4
	movs r2, #0xf0
	bl CpuSet
	bl sub_8008220
	bl sub_804EC4C
	movs r0, #0x80
	bl sub_805787C
	adds r5, #1
	cmp r5, #5
	ble _08050F42
	ldr r1, _0805100C
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08050FD6
	adds r5, r4, #0
	adds r4, r1, #0
_08050FAA:
	ldr r0, _08050FE4
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _08050FEC
	bl sub_8044EC8
	bl sub_8008220
	bl sub_80454E0
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08050FAA
_08050FD6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08050FDC: .4byte 0x02024228
_08050FE0: .4byte 0x02000000
_08050FE4: .4byte 0x02018800
_08050FE8: .4byte 0x08E0E2FF
_08050FEC: .4byte 0x000001FF
_08050FF0: .4byte 0x02000400
_08050FF4: .4byte 0x08E0E324
_08050FF8: .4byte 0x08E0E36C
_08050FFC: .4byte 0x08E0E33C
_08051000: .4byte 0x08E0E372
_08051004: .4byte 0x08E0E354
_08051008: .4byte 0x08E0E37E
_0805100C: .4byte 0x08E0E311

	THUMB_FUNC_START sub_8051010
sub_8051010: @ 0x08051010
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #1
	ldr r6, _08051120
_08051018:
	lsls r0, r4, #3
	adds r0, r0, r6
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08051018
	bl sub_8008220
	bl sub_80454C8
	movs r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	ldrb r1, [r5, #6]
	subs r0, #4
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #6]
	ldr r1, _08051124
	movs r2, #0xbc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08051128
	movs r0, #0x10
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_804FA28
	ldr r4, _0805112C
	ldr r1, _08051130
	adds r0, r4, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldr r1, _08051134
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080510B2
	adds r6, r4, #0
	adds r4, r1, #0
_08051076:
	ldr r0, _08051130
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r6, #0
	movs r1, #0
	ldr r2, _08051138
	bl sub_8044F80
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r6, #0
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _0805113C
	bl sub_8044F80
	bl sub_8008220
	bl sub_80454E0
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08051076
_080510B2:
	ldrb r1, [r5, #1]
	adds r0, r5, #0
	movs r2, #0
	bl sub_804F850
	bl sub_8008220
	bl sub_80454C8
	movs r0, #8
	bl sub_805787C
	ldr r1, _08051140
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080510FC
	ldr r5, _08051128
	adds r4, r1, #0
_080510D8:
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r5]
	bl sub_8008220
	bl sub_804549C
	movs r0, #0
	bl sub_805787C
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080510D8
_080510FC:
	movs r4, #1
	ldr r5, _08051120
_08051100:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08051100
	bl sub_8008220
	bl sub_80454C8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08051120: .4byte 0x02018400
_08051124: .4byte 0x02024228
_08051128: .4byte 0x02024238
_0805112C: .4byte 0x02000000
_08051130: .4byte 0x02018800
_08051134: .4byte 0x08E0E099
_08051138: .4byte 0x0000016F
_0805113C: .4byte 0x000001FF
_08051140: .4byte 0x08E0E0A2

	THUMB_FUNC_START sub_8051144
sub_8051144: @ 0x08051144
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	ldrb r1, [r4, #6]
	subs r0, #4
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #6]
	ldr r1, _080511DC
	movs r2, #0xbc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r5, _080511E0
	movs r0, #0x10
	strh r0, [r5]
	adds r0, r4, #0
	bl sub_804FA28
	ldrb r1, [r4, #1]
	adds r0, r4, #0
	movs r2, #0
	bl sub_804F850
	bl sub_8008220
	bl sub_80454C8
	movs r0, #8
	bl sub_805787C
	ldr r1, _080511E4
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080511B8
	adds r4, r1, #0
_08051194:
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r5]
	bl sub_8008220
	bl sub_804549C
	movs r0, #0
	bl sub_805787C
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08051194
_080511B8:
	movs r4, #1
	ldr r5, _080511E8
_080511BC:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _080511BC
	bl sub_8008220
	bl sub_80454C8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080511DC: .4byte 0x02024228
_080511E0: .4byte 0x02024238
_080511E4: .4byte 0x08E0E0A2
_080511E8: .4byte 0x02018400

	THUMB_FUNC_START sub_80511EC
sub_80511EC: @ 0x080511EC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	ldrb r1, [r4, #6]
	subs r0, #4
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #6]
	ldr r1, _080512C0
	movs r2, #0xbc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r5, _080512C4
	movs r0, #0x10
	strh r0, [r5]
	adds r0, r4, #0
	bl sub_804FA28
	ldrb r1, [r4, #1]
	adds r0, r4, #0
	movs r2, #0
	bl sub_804F850
	bl sub_8008220
	bl sub_80454C8
	movs r0, #0x20
	bl sub_805787C
	ldr r1, _080512C8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08051260
	adds r4, r1, #0
_0805123C:
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r5]
	bl sub_8008220
	bl sub_804549C
	movs r0, #1
	bl sub_805787C
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805123C
_08051260:
	movs r4, #1
	ldr r5, _080512CC
_08051264:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08051264
	bl sub_8008220
	bl sub_80454C8
	ldr r1, _080512D0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080512B8
	ldr r5, _080512D4
	adds r4, r1, #0
_0805128C:
	ldr r0, _080512D8
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _080512DC
	bl sub_8044F80
	bl sub_8008220
	bl sub_80454E0
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805128C
_080512B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080512C0: .4byte 0x02024228
_080512C4: .4byte 0x02024238
_080512C8: .4byte 0x08E0E0A2
_080512CC: .4byte 0x02018400
_080512D0: .4byte 0x08E0E091
_080512D4: .4byte 0x02000000
_080512D8: .4byte 0x02018800
_080512DC: .4byte 0x000001FF

	THUMB_FUNC_START sub_80512E0
sub_80512E0: @ 0x080512E0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r1, _08051310
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r6
	str r0, [sp]
	ldr r1, _08051314
	mov r0, sp
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #0x10
	bls _08051306
	b _08051518
_08051306:
	lsls r0, r0, #2
	ldr r1, _08051318
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08051310: .4byte 0xFFFFFF00
_08051314: .4byte 0x08E0E384
_08051318: .4byte 0x0805131C
_0805131C: @ jump table
	.4byte _08051360 @ case 0
	.4byte _0805137A @ case 1
	.4byte _08051390 @ case 2
	.4byte _080513A6 @ case 3
	.4byte _080513BE @ case 4
	.4byte _080513CC @ case 5
	.4byte _080513E2 @ case 6
	.4byte _080513F8 @ case 7
	.4byte _0805140E @ case 8
	.4byte _08051428 @ case 9
	.4byte _08051452 @ case 10
	.4byte _08051468 @ case 11
	.4byte _0805147E @ case 12
	.4byte _08051494 @ case 13
	.4byte _080514A2 @ case 14
	.4byte _080514D6 @ case 15
	.4byte _080514F2 @ case 16
_08051360:
	adds r0, r2, #0
	adds r0, #0x86
	movs r5, #0
	strb r5, [r0]
	adds r0, r2, #0
	bl sub_8053404
	mov r4, sp
	mov r0, sp
	bl sub_804FB04
	adds r1, r6, #1
	b _08051446
_0805137A:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_8050028
	b _08051518
_08051390:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_804FE78
	b _08051518
_080513A6:
	adds r0, r2, #0
	adds r0, #0x86
	movs r4, #0
	strb r4, [r0]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	strb r4, [r0, #1]
	bl sub_8050114
	b _08051518
_080513BE:
	adds r0, r2, #0
	adds r0, #0x86
	movs r1, #0
	strb r1, [r0]
	mov r0, sp
	strb r1, [r0, #1]
	b _080514E4
_080513CC:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_8050978
	b _08051518
_080513E2:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_8050748
	b _08051518
_080513F8:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_8050584
	b _08051518
_0805140E:
	adds r0, r2, #0
	adds r0, #0x86
	movs r1, #0
	strb r1, [r0]
	mov r0, sp
	strb r1, [r0, #1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_8050CC0
	b _08051518
_08051428:
	adds r0, r2, #0
	adds r0, #0x86
	movs r5, #0
	strb r5, [r0]
	movs r1, #4
	mov r0, sp
	strb r1, [r0]
	adds r0, r2, #0
	bl sub_8053404
	mov r4, sp
	mov r0, sp
	bl sub_804FB04
	movs r1, #0x29
_08051446:
	mov r0, sp
	strb r1, [r0]
	strb r5, [r4, #1]
	bl sub_804FC84
	b _08051518
_08051452:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_80503D8
	b _08051518
_08051468:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_8050B50
	b _08051518
_0805147E:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_8050EE0
	b _08051518
_08051494:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	mov r1, sp
	movs r0, #1
	b _080514E2
_080514A2:
	adds r0, r2, #0
	adds r0, #0x86
	movs r5, #0
	strb r5, [r0]
	adds r0, r2, #0
	bl sub_8053404
	mov r4, sp
	movs r6, #1
	strb r6, [r4, #1]
	mov r0, sp
	bl sub_8051010
	movs r1, #0x2d
	mov r0, sp
	strb r1, [r0]
	strb r5, [r4, #1]
	bl sub_8051144
	movs r1, #0x2e
	mov r0, sp
	strb r1, [r0]
	strb r6, [r4, #1]
	bl sub_80511EC
	b _08051518
_080514D6:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	mov r1, sp
	movs r0, #2
_080514E2:
	strb r0, [r1, #1]
_080514E4:
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_805022C
	b _08051518
_080514F2:
	adds r0, r2, #0
	adds r0, #0x86
	movs r5, #0
	strb r5, [r0]
	adds r0, r2, #0
	bl sub_8053404
	mov r4, sp
	movs r0, #1
	strb r0, [r4, #1]
	mov r0, sp
	bl sub_8051010
	movs r1, #0x16
	mov r0, sp
	strb r1, [r0]
	strb r5, [r4, #1]
	bl sub_80511EC
_08051518:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x09, 0x04, 0xE0, 0x22, 0x52, 0x00, 0x09, 0x0C, 0x40, 0x88, 0x09, 0x18, 0x07, 0x48, 0x81, 0x42
	.byte 0x03, 0xDD, 0x3F, 0x32, 0x10, 0x1C, 0x0A, 0x1C, 0x02, 0x40, 0xF0, 0x29, 0x03, 0xDC, 0x04, 0x4A
	.byte 0x10, 0x1C, 0x02, 0x1C, 0x0A, 0x40, 0x10, 0x1C, 0x70, 0x47, 0x00, 0x00, 0xBF, 0x01, 0x00, 0x00
	.byte 0xFF, 0x01, 0x00, 0x00, 0x10, 0xB5, 0x03, 0x1C, 0xC0, 0x22, 0x09, 0x04, 0x09, 0x14, 0x04, 0x24
	.byte 0x18, 0x5F, 0x0C, 0x18, 0xBF, 0x2C, 0x03, 0xDD, 0x98, 0x88, 0x0A, 0x18, 0xFF, 0x20, 0x02, 0x40
	.byte 0xA0, 0x2C, 0x03, 0xDC, 0x98, 0x88, 0x0A, 0x18, 0xFF, 0x20, 0x02, 0x40, 0x10, 0x1C, 0x10, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_8051584
sub_8051584: @ 0x08051584
	push {lr}
	ldr r0, _08051598
	ldr r1, _0805159C
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08051598: .4byte 0x02000000
_0805159C: .4byte 0x02018800

	THUMB_FUNC_START sub_80515A0
sub_80515A0: @ 0x080515A0
	push {lr}
	ldr r0, _080515B4
	ldr r1, _080515B8
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_080515B4: .4byte 0x02018800
_080515B8: .4byte 0x02000000
	.byte 0x00, 0xB5, 0x04, 0x48
	.byte 0x04, 0x49, 0x80, 0x22, 0x92, 0x00, 0x07, 0xF0, 0xC5, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x00, 0x84, 0x01, 0x02, 0x00, 0x8C, 0x01, 0x02, 0x00, 0xB5, 0x04, 0x48, 0x04, 0x49, 0x80, 0x22
	.byte 0x92, 0x00, 0x07, 0xF0, 0xB7, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x8C, 0x01, 0x02
	.byte 0x00, 0x84, 0x01, 0x02, 0x30, 0xB5, 0x10, 0x49, 0x00, 0x20, 0x08, 0x56, 0x00, 0x28, 0x17, 0xDB
	.byte 0x0E, 0x4D, 0x0C, 0x1C, 0x0E, 0x48, 0x29, 0x1C, 0x80, 0x22, 0x92, 0x00, 0x07, 0xF0, 0xA2, 0xF8
	.byte 0x00, 0x23, 0xE3, 0x56, 0x28, 0x1C, 0x00, 0x21, 0x0A, 0x4A, 0xF3, 0xF7, 0xB1, 0xFC, 0xB6, 0xF7
	.byte 0xFF, 0xFD, 0xF3, 0xF7, 0x5D, 0xFF, 0x01, 0x34, 0x00, 0x20, 0x20, 0x56, 0x00, 0x28, 0xE9, 0xDA
	.byte 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x91, 0xE0, 0xE0, 0x08, 0x00, 0x00, 0x00, 0x02
	.byte 0x00, 0x88, 0x01, 0x02, 0xFF, 0x01, 0x00, 0x00, 0x30, 0xB5, 0x14, 0x49, 0x00, 0x20, 0x08, 0x56
	.byte 0x00, 0x28, 0x1F, 0xDB, 0x12, 0x4D, 0x0C, 0x1C, 0x12, 0x48, 0x29, 0x1C, 0x80, 0x22, 0x92, 0x00
	.byte 0x07, 0xF0, 0x78, 0xF8, 0x00, 0x23, 0xE3, 0x56, 0x28, 0x1C, 0x00, 0x21, 0x0E, 0x4A, 0xF3, 0xF7
	.byte 0x87, 0xFC, 0x00, 0x23, 0xE3, 0x56, 0x28, 0x1C, 0xE0, 0x21, 0x49, 0x00, 0x0B, 0x4A, 0xF3, 0xF7
	.byte 0x7F, 0xFC, 0xB6, 0xF7, 0xCD, 0xFD, 0xF3, 0xF7, 0x2B, 0xFF, 0x01, 0x34, 0x00, 0x20, 0x20, 0x56
	.byte 0x00, 0x28, 0xE1, 0xDA, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x99, 0xE0, 0xE0, 0x08
	.byte 0x00, 0x00, 0x00, 0x02, 0x00, 0x88, 0x01, 0x02, 0x6F, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00
	.byte 0x70, 0xB5, 0x09, 0x06, 0x0D, 0x0E, 0x0E, 0x49, 0x00, 0x20, 0x08, 0x56, 0x00, 0x28, 0x13, 0xDB
	.byte 0x0C, 0x4E, 0x0C, 0x1C, 0x00, 0x20, 0x20, 0x56, 0x00, 0x02, 0x10, 0x21, 0x08, 0x43, 0x30, 0x80
	.byte 0xB6, 0xF7, 0xA6, 0xFD, 0xF3, 0xF7, 0xE2, 0xFE, 0x28, 0x1C, 0x06, 0xF0, 0xCF, 0xF8, 0x01, 0x34
	.byte 0x00, 0x20, 0x20, 0x56, 0x00, 0x28, 0xED, 0xDA, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA2, 0xE0, 0xE0, 0x08, 0x38, 0x42, 0x02, 0x02, 0x30, 0xB5, 0x01, 0x24, 0x06, 0x4D, 0xE0, 0x00
	.byte 0x40, 0x19, 0xEF, 0xF7, 0x73, 0xFD, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x51, 0x2C, 0xF6, 0xD9
	.byte 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x84, 0x01, 0x02, 0x30, 0xB5, 0x52, 0x24
	.byte 0x06, 0x4D, 0xE0, 0x00, 0x40, 0x19, 0xEF, 0xF7, 0x61, 0xFD, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E
	.byte 0x60, 0x2C, 0xF6, 0xD9, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x84, 0x01, 0x02
	.byte 0x30, 0xB5, 0x01, 0x24, 0x08, 0x4D, 0xE0, 0x00, 0x40, 0x19, 0xEF, 0xF7, 0x4F, 0xFD, 0x60, 0x1C
	.byte 0x00, 0x06, 0x04, 0x0E, 0x51, 0x2C, 0xF6, 0xD9, 0xB6, 0xF7, 0x62, 0xFD, 0xF3, 0xF7, 0xB4, 0xFE
	.byte 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x84, 0x01, 0x02, 0xF0, 0xB5, 0x57, 0x46
	.byte 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x81, 0xB0, 0x06, 0x1C, 0x8A, 0x46, 0x00, 0x23, 0x24, 0x4A
	.byte 0x30, 0x78, 0x80, 0x00, 0x80, 0x18, 0x00, 0x68, 0x89, 0x00, 0x08, 0x18, 0x00, 0x68, 0x00, 0x78
	.byte 0x00, 0x28, 0x35, 0xD0, 0x0F, 0x1C, 0x30, 0x1C, 0x51, 0x46, 0x1A, 0x1C, 0x00, 0x93, 0xFE, 0xF7
	.byte 0x57, 0xF8, 0x00, 0x24, 0x30, 0x78, 0x80, 0x00, 0x19, 0x49, 0x40, 0x18, 0x00, 0x68, 0x38, 0x18
	.byte 0x01, 0x68, 0x00, 0x9B, 0xD8, 0x00, 0x41, 0x18, 0x05, 0x1C, 0x01, 0x33, 0x98, 0x46, 0x09, 0x78
	.byte 0x8C, 0x42, 0x10, 0xDA, 0x12, 0x48, 0x81, 0x46, 0xB6, 0xF7, 0x2A, 0xFD, 0xF3, 0xF7, 0x7C, 0xFE
	.byte 0x01, 0x34, 0x30, 0x78, 0x80, 0x00, 0x48, 0x44, 0x00, 0x68, 0x38, 0x18, 0x00, 0x68, 0x28, 0x18
	.byte 0x00, 0x78, 0x84, 0x42, 0xF0, 0xDB, 0x43, 0x46, 0x30, 0x78, 0x80, 0x00, 0x08, 0x49, 0x40, 0x18
	.byte 0x00, 0x68, 0x38, 0x18, 0x01, 0x68, 0xD8, 0x00, 0x40, 0x18, 0x00, 0x78, 0x00, 0x28, 0xCA, 0xD1
	.byte 0x01, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x18, 0x46, 0xFC, 0x08, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x82, 0xB0
	.byte 0x05, 0x1C, 0x00, 0x20, 0x00, 0x90, 0x03, 0x4B, 0x28, 0x78, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68
	.byte 0x4B, 0xE0, 0x00, 0x00, 0x18, 0x46, 0xFC, 0x08, 0x00, 0x27, 0x2A, 0x78, 0x90, 0x00, 0xC0, 0x18
	.byte 0x00, 0x68, 0x00, 0x9B, 0x99, 0x00, 0x08, 0x18, 0x00, 0x68, 0x00, 0x78, 0x88, 0x46, 0x01, 0x33
	.byte 0x01, 0x93, 0x00, 0x28, 0x30, 0xD0, 0x22, 0x48, 0x82, 0x46, 0x28, 0x1C, 0x00, 0x99, 0x3A, 0x1C
	.byte 0xFD, 0xF7, 0xF6, 0xFF, 0x00, 0x24, 0x28, 0x78, 0x80, 0x00, 0x50, 0x44, 0x00, 0x68, 0x40, 0x44
	.byte 0x01, 0x68, 0xF8, 0x00, 0x41, 0x18, 0x06, 0x1C, 0x01, 0x37, 0x09, 0x78, 0x8C, 0x42, 0x10, 0xDA
	.byte 0x17, 0x49, 0x89, 0x46, 0xB6, 0xF7, 0xCC, 0xFC, 0xF3, 0xF7, 0x1E, 0xFE, 0x01, 0x34, 0x28, 0x78
	.byte 0x80, 0x00, 0x48, 0x44, 0x00, 0x68, 0x40, 0x44, 0x00, 0x68, 0x30, 0x18, 0x00, 0x78, 0x84, 0x42
	.byte 0xF0, 0xDB, 0x2A, 0x78, 0x90, 0x00, 0x50, 0x44, 0x00, 0x68, 0x40, 0x44, 0x01, 0x68, 0xF8, 0x00
	.byte 0x40, 0x18, 0x00, 0x78, 0x00, 0x28, 0xD0, 0xD1, 0x01, 0x9B, 0x00, 0x93, 0x08, 0x4B, 0x90, 0x00
	.byte 0xC0, 0x18, 0x01, 0x68, 0x00, 0x9A, 0x90, 0x00, 0x40, 0x18, 0x00, 0x68, 0x00, 0x28, 0xB3, 0xD1
	.byte 0x02, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x18, 0x46, 0xFC, 0x08, 0x30, 0xB5, 0x0D, 0x4A, 0x51, 0x78, 0x0D, 0x23, 0x5B, 0x42, 0x18, 0x1C
	.byte 0x08, 0x40, 0x04, 0x21, 0x08, 0x43, 0x50, 0x70, 0x70, 0x24, 0x1D, 0x1C, 0x04, 0x23, 0x08, 0x48
	.byte 0x12, 0x18, 0x11, 0x78, 0x28, 0x1C, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0x20, 0x32, 0x01, 0x34
	.byte 0x7F, 0x2C, 0xF6, 0xDD, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x84, 0x01, 0x02
	.byte 0x01, 0x0E, 0x00, 0x00, 0x10, 0xB5, 0x0A, 0x49, 0x4A, 0x78, 0x0D, 0x23, 0x5B, 0x42, 0x18, 0x1C
	.byte 0x10, 0x40, 0x48, 0x70, 0x70, 0x24, 0x07, 0x48, 0x0A, 0x18, 0x11, 0x78, 0x18, 0x1C, 0x08, 0x40
	.byte 0x10, 0x70, 0x20, 0x32, 0x01, 0x34, 0x7F, 0x2C, 0xF7, 0xDD, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0x84, 0x01, 0x02, 0x01, 0x0E, 0x00, 0x00

	THUMB_FUNC_START sub_8051958
sub_8051958: @ 0x08051958
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	movs r0, #0
	mov r8, r0
	ldr r1, _080519B0
	ldr r0, _080519B4
	lsrs r2, r2, #0x17
	adds r6, r2, r0
	adds r5, r2, r1
	adds r4, r2, #0
_08051984:
	ldr r0, _080519B0
	adds r0, r4, r0
	ldrb r0, [r0]
	add r0, sb
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _080519B4
	adds r0, r4, r0
	ldrb r0, [r0]
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, #0xdf
	bhi _080519AC
	cmp r1, #0x77
	bhi _080519AC
	cmp r0, #0xdf
	bhi _080519AC
	cmp r0, #0x4f
	bls _080519B8
_080519AC:
	movs r0, #0
	b _080519BA
	.align 2, 0
_080519B0: .4byte 0x08E0E3D4
_080519B4: .4byte 0x08E0E3EC
_080519B8:
	movs r0, #1
_080519BA:
	cmp r0, #0
	beq _08051A24
	ldrb r0, [r5]
	add r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r6]
	adds r1, r7, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r2, sl
	bl sub_8051DAC
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08051A24
	ldrb r2, [r5]
	add r2, sb
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r0, [r6]
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _08051A20
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	movs r0, #0x8f
	lsls r0, r0, #2
	adds r3, r3, r0
	ldr r0, [r3]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_8052174
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08051A24
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08051A36
	.align 2, 0
_08051A20: .4byte 0x02024270
_08051A24:
	adds r6, #8
	adds r5, #8
	adds r4, #8
	movs r1, #1
	add r8, r1
	mov r0, r8
	cmp r0, #2
	ble _08051984
	movs r0, #0
_08051A36:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8051A44
sub_8051A44: @ 0x08051A44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r4, _08051AA0
	lsls r0, r5, #1
	mov r8, r0
	add r4, r8
	ldrh r0, [r4]
	strh r0, [r6]
	ldr r2, _08051AA4
	add r2, r8
	ldrh r0, [r2]
	strh r0, [r6, #2]
	ldr r1, _08051AA8
	lsls r0, r3, #5
	adds r7, r0, r1
	ldrb r0, [r4]
	ldrb r1, [r7, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2]
	ldrb r2, [r7, #0x16]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r5, #0
	bl sub_8051958
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	cmp r2, #1
	beq _08051AC2
	cmp r2, #1
	bgt _08051AAC
	cmp r2, #0
	beq _08051AB6
	b _08051B14
	.align 2, 0
_08051AA0: .4byte 0x08E0E3C4
_08051AA4: .4byte 0x08E0E3CC
_08051AA8: .4byte 0x02024270
_08051AAC:
	cmp r2, #2
	beq _08051ACA
	cmp r2, #3
	beq _08051AF0
	b _08051B14
_08051AB6:
	adds r0, r7, #0
	adds r0, #0x28
	strb r2, [r0]
	strh r2, [r6]
	strh r2, [r6, #2]
	b _08051B14
_08051AC2:
	adds r0, r7, #0
	adds r0, #0x28
	strb r2, [r0]
	b _08051B14
_08051ACA:
	adds r1, r7, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08051AE8
	adds r0, #8
	add r0, r8
	ldrh r0, [r0]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	ldr r0, _08051AEC
	adds r0, #8
	b _08051B0A
	.align 2, 0
_08051AE8: .4byte 0x08E0E3D4
_08051AEC: .4byte 0x08E0E3EC
_08051AF0:
	adds r1, r7, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08051B20
	adds r0, #0x10
	add r0, r8
	ldrh r0, [r0]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	ldr r0, _08051B24
	adds r0, #0x10
_08051B0A:
	add r0, r8
	ldrh r0, [r0]
	ldrh r2, [r6, #2]
	adds r0, r0, r2
	strh r0, [r6, #2]
_08051B14:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051B20: .4byte 0x08E0E3D4
_08051B24: .4byte 0x08E0E3EC

	THUMB_FUNC_START sub_8051B28
sub_8051B28: @ 0x08051B28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	movs r3, #0
	ldr r1, _08051B84
	ldr r0, _08051B88
	lsrs r2, r2, #0x17
	adds r6, r2, r0
	adds r5, r2, r1
	adds r4, r2, #0
	ldr r0, _08051B8C
	mov sl, r0
_08051B58:
	ldr r0, _08051B84
	adds r0, r4, r0
	ldrb r0, [r0]
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08051B88
	adds r0, r4, r0
	ldrb r0, [r0]
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, #0xdf
	bhi _08051B80
	cmp r1, #0x77
	bhi _08051B80
	cmp r0, #0xdf
	bhi _08051B80
	cmp r0, #0x4f
	bls _08051B90
_08051B80:
	movs r0, #0
	b _08051B92
	.align 2, 0
_08051B84: .4byte 0x08E0E428
_08051B88: .4byte 0x08E0E45E
_08051B8C: .4byte 0x020244AC
_08051B90:
	movs r0, #1
_08051B92:
	cmp r0, #0
	beq _08051BF4
	ldrb r0, [r5]
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r6]
	adds r1, r7, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r2, sb
	str r3, [sp]
	bl sub_8051DAC
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	ldr r3, [sp]
	cmp r0, r1
	bne _08051BF4
	ldrb r2, [r5]
	add r2, r8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r0, [r6]
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	mov r2, sl
	ldr r0, [r2]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_8052174
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, [sp]
	cmp r0, #1
	beq _08051BF4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08051C02
_08051BF4:
	adds r6, #0x12
	adds r5, #0x12
	adds r4, #0x12
	adds r3, #1
	cmp r3, #2
	ble _08051B58
	movs r0, #0
_08051C02:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8051C14
sub_8051C14: @ 0x08051C14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r4, _08051C70
	lsls r0, r5, #1
	mov r8, r0
	add r4, r8
	ldrh r0, [r4]
	strh r0, [r7]
	ldr r2, _08051C74
	add r2, r8
	ldrh r0, [r2]
	strh r0, [r7, #2]
	ldr r1, _08051C78
	lsls r0, r3, #5
	adds r6, r0, r1
	ldrb r0, [r4]
	ldrb r1, [r6, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2]
	ldrb r2, [r6, #0x16]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r5, #0
	bl sub_8051B28
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	cmp r2, #1
	beq _08051C92
	cmp r2, #1
	bgt _08051C7C
	cmp r2, #0
	beq _08051C86
	b _08051D0A
	.align 2, 0
_08051C70: .4byte 0x08E0E404
_08051C74: .4byte 0x08E0E416
_08051C78: .4byte 0x02024270
_08051C7C:
	cmp r2, #2
	beq _08051CA8
	cmp r2, #3
	beq _08051CDC
	b _08051D0A
_08051C86:
	adds r0, r6, #0
	adds r0, #0x28
	strb r2, [r0]
	strh r2, [r7]
	strh r2, [r7, #2]
	b _08051D0A
_08051C92:
	adds r0, r6, #0
	adds r0, #0x28
	strb r2, [r0]
	ldr r0, _08051CA4
	add r0, r8
	ldrh r0, [r0]
	strb r0, [r6, #0x12]
	b _08051D0A
	.align 2, 0
_08051CA4: .4byte 0x08E0E494
_08051CA8:
	adds r1, r6, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08051CD0
	adds r0, #0x12
	add r0, r8
	ldrh r0, [r0]
	strb r0, [r6, #0x12]
	ldr r0, _08051CD4
	adds r0, #0x12
	add r0, r8
	ldrh r0, [r0]
	ldrh r1, [r7]
	adds r0, r0, r1
	strh r0, [r7]
	ldr r0, _08051CD8
	adds r0, #0x12
	b _08051D00
	.align 2, 0
_08051CD0: .4byte 0x08E0E494
_08051CD4: .4byte 0x08E0E428
_08051CD8: .4byte 0x08E0E45E
_08051CDC:
	adds r1, r6, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08051D14
	adds r0, #0x24
	add r0, r8
	ldrh r0, [r0]
	strb r0, [r6, #0x12]
	ldr r0, _08051D18
	adds r0, #0x24
	add r0, r8
	ldrh r0, [r0]
	ldrh r1, [r7]
	adds r0, r0, r1
	strh r0, [r7]
	ldr r0, _08051D1C
	adds r0, #0x24
_08051D00:
	add r0, r8
	ldrh r0, [r0]
	ldrh r2, [r7, #2]
	adds r0, r0, r2
	strh r0, [r7, #2]
_08051D0A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051D14: .4byte 0x08E0E494
_08051D18: .4byte 0x08E0E428
_08051D1C: .4byte 0x08E0E45E

	THUMB_FUNC_START sub_8051D20
sub_8051D20: @ 0x08051D20
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0xc
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r2, sp
	ldr r0, _08051DA8
	mov r8, r0
	lsls r0, r6, #5
	mov sb, r0
	mov r5, sb
	add r5, r8
	ldrh r0, [r5, #0x14]
	strb r0, [r2]
	ldrh r0, [r5, #0x16]
	strb r0, [r2, #1]
	strb r1, [r5, #0x12]
	add r4, sp, #4
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_8051A44
	ldrh r2, [r4]
	ldrh r0, [r5, #0x14]
	adds r2, r2, r0
	strh r2, [r5, #0x14]
	ldrh r1, [r4, #2]
	ldrh r0, [r5, #0x16]
	adds r1, r1, r0
	strh r1, [r5, #0x16]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	movs r1, #0x8f
	lsls r1, r1, #2
	add r1, r8
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x1c]
	adds r0, r6, #0
	bl sub_8052088
	movs r0, #0x14
	add r8, r0
	add sb, r8
	mov r0, sp
	mov r1, sb
	bl sub_8052108
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08051DA8: .4byte 0x02024270

	THUMB_FUNC_START sub_8051DAC
sub_8051DAC: @ 0x08051DAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r1, _08051DD4
	lsls r0, r6, #5
	adds r0, r0, r1
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08051DDE
	b _08051E38
	.align 2, 0
_08051DD4: .4byte 0x02024270
_08051DD8:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	b _08051E3C
_08051DDE:
	movs r5, #0
	adds r7, r1, #0
_08051DE2:
	cmp r5, r6
	beq _08051E2E
	lsls r1, r5, #5
	adds r3, r1, r7
	adds r0, r3, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	adds r4, r1, #0
	cmp r0, #0
	blt _08051E2E
	movs r2, #0
	movs r1, #0x16
	ldrsh r0, [r3, r1]
	mov r3, ip
	subs r1, r3, r0
	cmp r1, #4
	bgt _08051E10
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08051E10
	movs r2, #1
_08051E10:
	adds r0, r4, r7
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	mov r3, r8
	subs r1, r3, r0
	cmp r1, #6
	bgt _08051E2A
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08051E2A
	movs r0, #2
	orrs r2, r0
_08051E2A:
	cmp r2, #3
	beq _08051DD8
_08051E2E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xe
	bls _08051DE2
_08051E38:
	movs r0, #1
	rsbs r0, r0, #0
_08051E3C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8051E48
sub_8051E48: @ 0x08051E48
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	movs r4, #1
	ldr r0, _08051E7C
	mov sb, r0
	movs r1, #4
	rsbs r1, r1, #0
	mov r8, r1
	movs r2, #2
	mov ip, r2
_08051E6C:
	cmp r5, #1
	beq _08051EBC
	cmp r5, #1
	bgt _08051E80
	cmp r5, #0
	beq _08051E8A
	b _08051F4C
	.align 2, 0
_08051E7C: .4byte 0x02024270
_08051E80:
	cmp r5, #2
	beq _08051EE8
	cmp r5, #3
	beq _08051F14
	b _08051F4C
_08051E8A:
	lsls r0, r4, #5
	add r0, sb
	movs r2, #0x16
	ldrsh r1, [r0, r2]
	subs r1, r6, r1
	movs r2, #0x14
	ldrsh r0, [r0, r2]
	subs r3, r7, r0
	movs r2, #0
	cmp r1, #0
	bgt _08051EAA
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08051EAA
	movs r2, #1
_08051EAA:
	cmp r3, #4
	bgt _08051EB6
	cmp r3, r8
	blt _08051EB6
	mov r0, ip
	orrs r2, r0
_08051EB6:
	cmp r2, #3
	beq _08051F44
	b _08051F48
_08051EBC:
	lsls r0, r4, #5
	add r0, sb
	movs r2, #0x16
	ldrsh r1, [r0, r2]
	subs r3, r6, r1
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	subs r0, r7, r0
	movs r1, #0
	cmp r0, #8
	bgt _08051ED6
	mvns r0, r0
	lsrs r1, r0, #0x1f
_08051ED6:
	cmp r3, #4
	bgt _08051EE2
	cmp r3, r8
	blt _08051EE2
	mov r2, ip
	orrs r1, r2
_08051EE2:
	cmp r1, #3
	beq _08051F44
	b _08051F48
_08051EE8:
	lsls r0, r4, #5
	add r0, sb
	movs r2, #0x16
	ldrsh r1, [r0, r2]
	subs r1, r6, r1
	movs r2, #0x14
	ldrsh r0, [r0, r2]
	subs r3, r7, r0
	movs r0, #0
	cmp r1, #8
	bgt _08051F02
	mvns r0, r1
	lsrs r0, r0, #0x1f
_08051F02:
	cmp r3, #4
	bgt _08051F0E
	cmp r3, r8
	blt _08051F0E
	mov r1, ip
	orrs r0, r1
_08051F0E:
	cmp r0, #3
	beq _08051F44
	b _08051F48
_08051F14:
	lsls r0, r4, #5
	add r0, sb
	movs r2, #0x16
	ldrsh r1, [r0, r2]
	movs r2, #0x14
	ldrsh r0, [r0, r2]
	subs r3, r7, r0
	subs r1, r6, r1
	movs r2, #0
	cmp r3, #0
	bgt _08051F34
	movs r0, #8
	rsbs r0, r0, #0
	cmp r3, r0
	blt _08051F34
	movs r2, #1
_08051F34:
	cmp r1, #4
	bgt _08051F40
	cmp r1, r8
	blt _08051F40
	mov r0, ip
	orrs r2, r0
_08051F40:
	cmp r2, #3
	bne _08051F48
_08051F44:
	movs r0, #1
	b _08051F4A
_08051F48:
	movs r0, #0
_08051F4A:
	adds r3, r0, #0
_08051F4C:
	cmp r3, #0
	beq _08051F56
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	b _08051F64
_08051F56:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _08051E6C
	movs r0, #1
	rsbs r0, r0, #0
_08051F64:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8051F70
sub_8051F70: @ 0x08051F70
	push {r4, r5, r6, lr}
	ldr r6, _08051FEC
	ldr r0, _08051FF0
	ldrb r2, [r6, #0x12]
	lsls r3, r2, #1
	adds r0, r3, r0
	ldrb r0, [r0]
	ldrb r1, [r6, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08051FF4
	adds r3, r3, r1
	ldrb r1, [r3]
	ldrb r3, [r6, #0x16]
	adds r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_8051E48
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _08051FE4
	movs r0, #0xca
	bl sub_8034F60
	lsls r5, r4, #5
	adds r2, r5, r6
	adds r0, r2, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08051FC4
	ldr r0, _08051FF8
	ldrb r1, [r6, #0x12]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #0x12]
_08051FC4:
	adds r0, r4, #0
	bl sub_804F19C
	adds r0, r4, #0
	bl sub_804DF5C
	bl sub_804EF10
	bl sub_80456AC
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r5, r0
	ldr r0, [r0]
	bl sub_805254C
_08051FE4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08051FEC: .4byte 0x02024270
_08051FF0: .4byte 0x08E0E3C4
_08051FF4: .4byte 0x08E0E3CC
_08051FF8: .4byte 0x08E0E3C0

	THUMB_FUNC_START sub_8051FFC
sub_8051FFC: @ 0x08051FFC
	push {r4, r5, r6, lr}
	ldr r6, _08052078
	ldr r0, _0805207C
	ldrb r2, [r6, #0x12]
	lsls r3, r2, #1
	adds r0, r3, r0
	ldrb r0, [r0]
	ldrb r1, [r6, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08052080
	adds r3, r3, r1
	ldrb r1, [r3]
	ldrb r3, [r6, #0x16]
	adds r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_8051E48
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _08052070
	movs r0, #0xca
	bl sub_8034F60
	lsls r5, r4, #5
	adds r2, r5, r6
	adds r0, r2, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08052050
	ldr r0, _08052084
	ldrb r1, [r6, #0x12]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #0x12]
_08052050:
	adds r0, r4, #0
	bl sub_804F19C
	adds r0, r4, #0
	bl sub_804DF5C
	bl sub_804EF10
	bl sub_80456AC
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r5, r0
	ldr r0, [r0]
	bl sub_805254C
_08052070:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08052078: .4byte 0x02024270
_0805207C: .4byte 0x08E0E3C4
_08052080: .4byte 0x08E0E3CC
_08052084: .4byte 0x08E0E3C0

	THUMB_FUNC_START sub_8052088
sub_8052088: @ 0x08052088
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r2, _080520A8
	lsls r0, r3, #5
	adds r0, r0, r2
	ldrb r1, [r0, #0x14]
	ldrb r0, [r0, #0x16]
	adds r4, r2, #0
	cmp r1, #0x77
	bhi _080520A2
	cmp r0, #0x4f
	bls _080520AC
_080520A2:
	movs r0, #0
	b _080520AE
	.align 2, 0
_080520A8: .4byte 0x02024270
_080520AC:
	movs r0, #1
_080520AE:
	cmp r0, #0
	beq _080520D8
	lsls r2, r3, #5
	adds r2, r2, r4
	ldrb r1, [r2, #0x16]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	ldrb r1, [r2, #0x14]
	adds r0, r0, r1
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0xfe
	ands r0, r1
	lsrs r0, r0, #1
	strh r0, [r2, #0x18]
_080520D8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80520E0
sub_80520E0: @ 0x080520E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _08052104
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, r2, r0
	movs r0, #0x8f
	lsls r0, r0, #2
	adds r3, r3, r0
	ldr r0, [r3]
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrh r0, [r2]
	bx lr
	.align 2, 0
_08052104: .4byte 0x02024270

	THUMB_FUNC_START sub_8052108
sub_8052108: @ 0x08052108
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805216C
	mov r8, r0
	ldr r6, _08052170
	ldrh r1, [r6, #0x1c]
	bl sub_804EEAC
	mov r2, sp
	ldrb r0, [r5]
	ldrb r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #1
	strb r0, [r2]
	ldrb r0, [r5, #1]
	ldrb r1, [r4, #1]
	subs r0, r0, r1
	lsls r0, r0, #1
	strb r0, [r2, #1]
	movs r3, #0x18
	ldrsh r1, [r6, r3]
	subs r0, r0, r1
	strb r0, [r2, #1]
	ldrb r1, [r4]
	lsls r1, r1, #1
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldrb r2, [r4, #1]
	lsls r2, r2, #1
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	mov r0, r8
	bl sub_804EE84
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805216C: .4byte 0x02018400
_08052170: .4byte 0x02024270

	THUMB_FUNC_START sub_8052174
sub_8052174: @ 0x08052174
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805218A
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805218E
_0805218A:
	movs r0, #0
	b _08052190
_0805218E:
	movs r0, #1
_08052190:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8052194
sub_8052194: @ 0x08052194
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080521A6
	movs r0, #1
	b _080521A8
_080521A6:
	movs r0, #0
_080521A8:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80521AC
sub_80521AC: @ 0x080521AC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _080521BE
	movs r0, #1
	b _080521CE
_080521BE:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080521CC
	movs r0, #0
	b _080521CE
_080521CC:
	movs r0, #2
_080521CE:
	bx lr

	THUMB_FUNC_START sub_80521D0
sub_80521D0: @ 0x080521D0
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	bl sub_8051D20
	bl sub_805236C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80521E8
sub_80521E8: @ 0x080521E8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	adds r1, r4, #0
	bl sub_8051D20
	bl sub_805236C
	ldr r5, _08052228
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08052214
	movs r0, #0
	adds r1, r4, #0
	bl sub_8051D20
	bl sub_805236C
_08052214:
	adds r1, r5, #0
	adds r1, #0x28
	ldrb r0, [r1]
	cmp r0, #1
	bne _08052222
	movs r0, #2
	strb r0, [r1]
_08052222:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052228: .4byte 0x02024270

	THUMB_FUNC_START sub_805222C
sub_805222C: @ 0x0805222C
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r1, #0x77
	bhi _08052240
	cmp r2, #0x4f
	bhi _08052240
	movs r0, #1
	b _08052242
_08052240:
	movs r0, #0
_08052242:
	bx lr
	.byte 0x09, 0x06, 0x09, 0x0E, 0x12, 0x06, 0x12, 0x0E, 0x10, 0x1C, 0xDF, 0x29
	.byte 0x07, 0xD8, 0x77, 0x29, 0x05, 0xD8, 0xDF, 0x2A, 0x03, 0xD8, 0x4F, 0x28, 0x01, 0xD8, 0x01, 0x20
	.byte 0x00, 0xE0, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00, 0x02, 0x1C, 0x00, 0x23, 0x00, 0x2A, 0x04, 0xDC
	.byte 0x08, 0x20, 0x40, 0x42, 0x82, 0x42, 0x00, 0xDB, 0x01, 0x23, 0x04, 0x29, 0x05, 0xDC, 0x04, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x01, 0xDB, 0x02, 0x20, 0x03, 0x43, 0x03, 0x2B, 0x01, 0xD0, 0x00, 0x20
	.byte 0x00, 0xE0, 0x01, 0x20, 0x70, 0x47, 0x00, 0x00, 0x03, 0x1C, 0x00, 0x22, 0x08, 0x29, 0x01, 0xDC
	.byte 0xC8, 0x43, 0xC2, 0x0F, 0x04, 0x2B, 0x05, 0xDC, 0x04, 0x20, 0x40, 0x42, 0x83, 0x42, 0x01, 0xDB
	.byte 0x02, 0x20, 0x02, 0x43, 0x03, 0x2A, 0x01, 0xD0, 0x00, 0x20, 0x00, 0xE0, 0x01, 0x20, 0x70, 0x47
	.byte 0x00, 0x22, 0x08, 0x28, 0x01, 0xDC, 0xC0, 0x43, 0xC2, 0x0F, 0x04, 0x29, 0x05, 0xDC, 0x04, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x01, 0xDB, 0x02, 0x20, 0x02, 0x43, 0x03, 0x2A, 0x01, 0xD0, 0x00, 0x20
	.byte 0x00, 0xE0, 0x01, 0x20, 0x70, 0x47, 0x00, 0x00, 0x03, 0x1C, 0x00, 0x22, 0x00, 0x29, 0x04, 0xDC
	.byte 0x08, 0x20, 0x40, 0x42, 0x81, 0x42, 0x00, 0xDB, 0x01, 0x22, 0x04, 0x2B, 0x05, 0xDC, 0x04, 0x20
	.byte 0x40, 0x42, 0x83, 0x42, 0x01, 0xDB, 0x02, 0x20, 0x02, 0x43, 0x03, 0x2A, 0x01, 0xD0, 0x00, 0x20
	.byte 0x00, 0xE0, 0x01, 0x20, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8052318
sub_8052318: @ 0x08052318
	push {r4, lr}
	lsls r0, r0, #0x10
	ldr r4, _08052360
	movs r2, #0xe0
	lsls r2, r2, #0x13
	ands r2, r0
	lsrs r2, r2, #0x18
	strb r2, [r4, #6]
	ldr r1, _08052364
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r4, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r3, [r1]
	lsls r2, r2, #3
	adds r2, r3, r2
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r2, r2, r0
	ldrb r0, [r2]
	ldrb r1, [r4, #6]
	lsls r1, r1, #3
	adds r3, r3, r1
	ldr r2, _08052368
	adds r1, r3, r2
	ldrb r2, [r1]
	movs r1, #0
	bl sub_80523EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052360: .4byte 0x02024270
_08052364: .4byte 0x08E19274
_08052368: .4byte 0x0000016D

	THUMB_FUNC_START sub_805236C
sub_805236C: @ 0x0805236C
	push {r4, r5, lr}
	ldr r4, _0805238C
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0x16]
	bl sub_80520E0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r5, #0
	bl sub_80521AC
	cmp r0, #1
	beq _08052390
	cmp r0, #2
	beq _080523A6
	b _080523E2
	.align 2, 0
_0805238C: .4byte 0x02024270
_08052390:
	movs r0, #0x90
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_8052318
	b _080523E2
_080523A6:
	movs r1, #0x90
	lsls r1, r1, #2
	adds r2, r4, r1
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r2, #0xe0
	lsls r2, r2, #3
	ands r2, r5
	ldr r1, _080523E8
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r4, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	lsrs r2, r2, #5
	adds r0, r0, r2
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strh r0, [r4, #8]
	movs r0, #4
	strb r0, [r4, #6]
_080523E2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080523E8: .4byte 0x08E19274

	THUMB_FUNC_START sub_80523EC
sub_80523EC: @ 0x080523EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	ldr r2, _08052498
	movs r6, #0
	ldrh r0, [r2]
	ldr r1, _0805249C
	adds r4, r2, #0
	cmp r0, r1
	beq _0805247E
_08052418:
	lsls r0, r6, #1
	adds r1, r0, r6
	lsls r3, r1, #3
	adds r2, r3, r2
	ldrh r1, [r2]
	mov r8, r0
	adds r0, r6, #1
	mov sb, r0
	ldr r0, [sp]
	cmp r1, r0
	bne _0805246A
	ldrh r0, [r2, #2]
	cmp r0, sl
	bne _0805246A
	movs r7, #0
	ldr r1, _080524A0
	adds r4, r3, r1
	movs r5, #7
_0805243C:
	ldrh r0, [r4]
	ldr r1, _0805249C
	cmp r0, r1
	beq _0805244E
	bl sub_8055554
	cmp r0, #0
	bne _0805244E
	movs r7, #1
_0805244E:
	adds r4, #2
	subs r5, #1
	cmp r5, #0
	bge _0805243C
	ldr r4, _08052498
	cmp r7, #0
	bne _0805246A
	mov r1, r8
	adds r0, r1, r6
	lsls r0, r0, #3
	adds r1, r4, #0
	adds r0, r0, r1
	ldrh r0, [r0, #0x14]
	mov sl, r0
_0805246A:
	adds r2, r4, #0
	mov r6, sb
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r1, _0805249C
	cmp r0, r1
	bne _08052418
_0805247E:
	ldr r0, [sp]
	mov r1, sl
	ldr r2, [sp, #4]
	bl sub_804EF84
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052498: .4byte 0x08103314
_0805249C: .4byte 0x0000FFFF
_080524A0: .4byte 0x08103318

	THUMB_FUNC_START sub_80524A4
sub_80524A4: @ 0x080524A4
	lsls r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #0x13
	ands r2, r0
	ldr r3, _080524D0
	ldr r1, _080524D4
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r1, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	lsrs r2, r2, #0x15
	adds r0, r0, r2
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080524D0: .4byte 0x08E19274
_080524D4: .4byte 0x02024270
	.byte 0x00, 0x04, 0xE0, 0x22, 0xD2, 0x04, 0x02, 0x40
	.byte 0x09, 0x49, 0x0A, 0x4B, 0x18, 0x88, 0x80, 0x00, 0x40, 0x18, 0x59, 0x88, 0x00, 0x68, 0x89, 0x00
	.byte 0x09, 0x18, 0x08, 0x68, 0x52, 0x0D, 0x80, 0x18, 0xB6, 0x21, 0x49, 0x00, 0x40, 0x18, 0x00, 0x78
	.byte 0x18, 0x81, 0x04, 0x20, 0x98, 0x71, 0x70, 0x47, 0x74, 0x92, 0xE1, 0x08, 0x70, 0x42, 0x02, 0x02
	.byte 0x10, 0xB5, 0x0C, 0x49, 0x08, 0x1C, 0x28, 0x30, 0x04, 0x78, 0x01, 0x2C, 0x0E, 0xD1, 0x08, 0x7D
	.byte 0x89, 0x7D, 0xFF, 0xF7, 0xDD, 0xFD, 0x00, 0x04, 0x00, 0x0C, 0xFF, 0xF7, 0x23, 0xFE, 0x01, 0x1C
	.byte 0x00, 0x29, 0x03, 0xD1, 0x04, 0x48, 0x01, 0x70, 0x41, 0x70, 0x84, 0x70, 0x10, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x70, 0x42, 0x02, 0x02, 0x6C, 0x1D, 0x02, 0x02

	THUMB_FUNC_START sub_805254C
sub_805254C: @ 0x0805254C
	push {r4, r5, lr}
	sub sp, #0x88
	adds r1, r0, #0
	mov r0, sp
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	str r4, [sp, #4]
	strb r5, [r0, #0x1e]
	str r4, [sp, #8]
	strb r5, [r0, #0xc]
	movs r3, #1
	strb r3, [r0, #0xd]
	strh r4, [r0, #0x1c]
	add r0, sp, #0x78
	strb r5, [r0]
	add r0, sp, #0x74
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	mov r2, sp
	adds r2, #0x7a
	movs r0, #0x1d
	strh r0, [r2]
	add r0, sp, #0x7c
	strh r3, [r0]
	adds r2, #4
	movs r0, #3
	strh r0, [r2]
	add r0, sp, #0x80
	strh r3, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #4
	strb r5, [r0]
	mov r0, sp
	bl sub_8053274
	mov r0, sp
	bl sub_80532A8
	mov r0, sp
	bl sub_80526D0
	mov r0, sp
	strh r4, [r0]
	str r4, [sp, #4]
	str r4, [sp, #8]
	add sp, #0x88
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80525B4
sub_80525B4: @ 0x080525B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r4, _08052698
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #1
	bne _080525F4
	ldr r1, _0805269C
	ldr r2, _080526A0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _080526A4
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #3
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #1
	ldr r2, _080526A8
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F544
	ldr r1, _080526AC
	movs r0, #0xde
	strh r0, [r1]
	adds r1, #4
	movs r0, #7
	strh r0, [r1]
_080525F4:
	adds r0, r4, #0
	movs r1, #2
	bl sub_804EB04
	ldr r0, _080526B0
	bl sub_80081DC
	bl sub_8008220
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_804EB04
	ldr r0, _080526B4
	ldrh r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x84
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, _080526B8
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r2, _080526BC
	movs r0, #0
	ldr r6, _080526C0
	ldr r7, _080526C4
	ldr r1, _080526C8
	mov r8, r1
_0805263C:
	adds r3, r0, #1
	adds r1, r6, #1
_08052640:
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08052640
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r0, r3, #0
	cmp r0, #7
	ble _0805263C
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r0, [r0]
	mov r1, r8
	movs r2, #0x40
	bl CpuSet
	movs r0, #0xf3
	bl sub_8055554
	cmp r0, #0
	beq _08052684
	ldr r0, _080526CC
	add r0, r8
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _080526C0
	bl sub_8044E50
_08052684:
	bl sub_8008220
	bl sub_804EC64
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052698: .4byte 0x02018400
_0805269C: .4byte 0x04000042
_080526A0: .4byte 0x000003ED
_080526A4: .4byte 0x0000739D
_080526A8: .4byte 0x00001D1E
_080526AC: .4byte 0x04000050
_080526B0: .4byte 0x080454C9
_080526B4: .4byte 0x08FA31C0
_080526B8: .4byte 0x02018800
_080526BC: .4byte 0x02012400
_080526C0: .4byte 0x000001FF
_080526C4: .4byte 0x08FA3360
_080526C8: .4byte 0x02000380
_080526CC: .4byte 0xFFFFFC80

	THUMB_FUNC_START sub_80526D0
sub_80526D0: @ 0x080526D0
	push {r4, r5, lr}
	adds r4, r0, #0
_080526D4:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08052704
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	bne _080526EA
	ldr r1, [r4, #0x14]
	b _080526EC
_080526EA:
	ldr r1, [r4, #0x18]
_080526EC:
	ldr r0, [r1]
	str r0, [r4, #0x10]
	ldr r0, [r1, #4]
	str r0, [r4, #0x14]
	ldr r0, [r1, #8]
	str r0, [r4, #0x18]
	movs r0, #0
	str r0, [r4, #4]
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	bl sub_8053388
_08052704:
	ldr r0, [r4, #0x10]
	ldrb r0, [r0]
	cmp r0, #0x5d
	beq _08052798
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805272E
	cmp r0, #1
	bgt _0805271C
	cmp r0, #0
	beq _08052726
	b _08052744
_0805271C:
	cmp r0, #2
	beq _08052736
	cmp r0, #3
	beq _0805273E
	b _08052744
_08052726:
	adds r0, r4, #0
	bl sub_80527E8
	b _08052744
_0805272E:
	adds r0, r4, #0
	bl sub_8052F60
	b _08052744
_08052736:
	adds r0, r4, #0
	bl sub_8053138
	b _08052744
_0805273E:
	adds r0, r4, #0
	bl sub_8053040
_08052744:
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805277C
	ldr r1, _08052784
	ldr r2, _08052788
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0805278C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #3
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #1
	ldr r2, _08052790
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F544
	ldr r1, _08052794
	movs r0, #0xde
	strh r0, [r1]
	adds r1, #4
	movs r0, #7
	strh r0, [r1]
_0805277C:
	bl sub_804F218
	b _080526D4
	.align 2, 0
_08052784: .4byte 0x04000042
_08052788: .4byte 0x000003ED
_0805278C: .4byte 0x0000739D
_08052790: .4byte 0x00001D1E
_08052794: .4byte 0x04000050
_08052798:
	ldr r0, _080527D8
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080527D2
	bl sub_804F770
	movs r1, #0
	strh r5, [r4]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_80525B4
	ldr r1, _080527DC
	ldr r2, _080527E0
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F508
	ldr r0, _080527E4
	strh r5, [r0]
_080527D2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080527D8: .4byte 0x02024270
_080527DC: .4byte 0x0400004A
_080527E0: .4byte 0x00003D3E
_080527E4: .4byte 0x04000050

	THUMB_FUNC_START sub_80527E8
sub_80527E8: @ 0x080527E8
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r2, [r6, #0x10]
	ldr r0, [r6, #4]
	adds r3, r2, r0
	ldrb r1, [r3]
	cmp r1, #0x40
	bne _080527FC
	b _0805293A
_080527FC:
	cmp r1, #0x40
	bgt _0805280C
	cmp r1, #0x23
	beq _0805281A
	cmp r1, #0x24
	bne _0805280A
	b _08052928
_0805280A:
	b _08052D10
_0805280C:
	cmp r1, #0x5e
	bne _08052812
	b _08052A9E
_08052812:
	cmp r1, #0x7c
	bne _08052818
	b _08052BBC
_08052818:
	b _08052D10
_0805281A:
	adds r0, #1
	str r0, [r6, #4]
	adds r0, r2, r0
	ldrb r0, [r0]
	subs r0, #0x30
	cmp r0, #9
	bls _0805282A
	b _08052F4E
_0805282A:
	lsls r0, r0, #2
	ldr r1, _08052834
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052834: .4byte 0x08052838
_08052838: @ jump table
	.4byte _08052860 @ case 0
	.4byte _08052894 @ case 1
	.4byte _080528A2 @ case 2
	.4byte _080528B4 @ case 3
	.4byte _080528C6 @ case 4
	.4byte _080528EE @ case 5
	.4byte _080528F6 @ case 6
	.4byte _08052904 @ case 7
	.4byte _08052914 @ case 8
	.4byte _08052922 @ case 9
_08052860:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	ldrb r0, [r6, #0xd]
	cmp r0, #1
	bne _08052880
	ldr r0, [r6, #8]
	cmp r0, #0x1b
	bls _08052876
	movs r0, #0x1b
	str r0, [r6, #8]
_08052876:
	ldr r0, _0805287C
	b _08052882
	.align 2, 0
_0805287C: .4byte 0x08E0E4CC
_08052880:
	ldr r0, _08052890
_08052882:
	ldr r1, [r6, #8]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r6, #8]
	b _08052F4E
	.align 2, 0
_08052890: .4byte 0x08E0E53C
_08052894:
	adds r1, r6, #0
	adds r1, #0x82
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strb r0, [r6, #0xc]
	b _08052F4E
_080528A2:
	movs r0, #0
	strb r0, [r6, #0xd]
	strb r0, [r6, #0x1e]
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	movs r0, #1
	str r0, [r6, #8]
	b _08052F4E
_080528B4:
	adds r1, r6, #0
	adds r1, #0x82
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strb r0, [r6, #0xd]
	movs r0, #3
	strb r0, [r6, #0xc]
	b _08052C74
_080528C6:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	strh r1, [r6]
	ldrb r1, [r0, #2]
	adds r0, r6, #0
	adds r0, #0x84
	strb r1, [r0]
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	adds r1, r6, #0
	adds r1, #0x85
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_80525B4
	b _08052CE2
_080528EE:
	adds r0, r6, #0
	bl sub_80532E8
	b _08052C74
_080528F6:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	bl sub_8055508
	b _08052D08
_08052904:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	bl sub_8055554
	strb r0, [r6, #0x1e]
	b _08052D08
_08052914:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	bl sub_8055534
	b _08052D08
_08052922:
	bl sub_8048D08
	b _08052C74
_08052928:
	adds r0, r3, #0
	bl sub_8020698
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r0
	str r1, [r6, #4]
	b _08052F4E
_0805293A:
	adds r0, #1
	str r0, [r6, #4]
	adds r0, r2, r0
	ldrb r0, [r0]
	subs r0, #0x30
	cmp r0, #9
	bls _0805294A
	b _08052F4E
_0805294A:
	lsls r0, r0, #2
	ldr r1, _08052954
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052954: .4byte 0x08052958
_08052958: @ jump table
	.4byte _08052980 @ case 0
	.4byte _080529FC @ case 1
	.4byte _08052A06 @ case 2
	.4byte _08052A0C @ case 3
	.4byte _08052A20 @ case 4
	.4byte _08052A44 @ case 5
	.4byte _08052A58 @ case 6
	.4byte _08052A6C @ case 7
	.4byte _08052A82 @ case 8
	.4byte _08052A88 @ case 9
_08052980:
	bl sub_800BE0C
	ldr r4, _080529D4
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	strh r0, [r4, #0x12]
	bl sub_8021718
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #1
	bne _080529EC
	movs r0, #0
	strb r0, [r6, #0x1e]
	bl sub_804ED08
	ldr r1, _080529D8
	ldr r2, _080529DC
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _080529E0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #3
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #1
	ldr r2, _080529E4
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F544
	ldr r1, _080529E8
	movs r0, #0xde
	strh r0, [r1]
	adds r1, #4
	movs r0, #7
	strh r0, [r1]
	b _080529F0
	.align 2, 0
_080529D4: .4byte 0x02021D10
_080529D8: .4byte 0x04000042
_080529DC: .4byte 0x000003ED
_080529E0: .4byte 0x0000739D
_080529E4: .4byte 0x00001D1E
_080529E8: .4byte 0x04000050
_080529EC:
	movs r0, #1
	strb r0, [r6, #0x1e]
_080529F0:
	ldr r0, [r6, #4]
	adds r0, #2
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6]
	b _08052F4E
_080529FC:
	bl sub_8005B38
	bl sub_804ED08
	b _08052D08
_08052A06:
	bl sub_800AD4C
	b _08052C74
_08052A0C:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	bl sub_8034F60
	b _08052C98
_08052A20:
	ldr r3, _08052A3C
	ldr r2, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r0, r2, r0
	ldrb r1, [r0, #1]
	ldrb r0, [r0, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _08052A40
	adds r3, r3, r0
	strh r1, [r3]
	adds r2, #3
	str r2, [r6, #4]
	b _08052F4E
	.align 2, 0
_08052A3C: .4byte 0x02024270
_08052A40: .4byte 0x00000242
_08052A44:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	bl sub_8034FEC
	b _08052C98
_08052A58:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	bl sub_8035020
	b _08052C98
_08052A6C:
	ldr r3, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r3, r3, r0
	ldrb r0, [r3, #1]
	ldrb r1, [r3, #2]
	ldrb r2, [r3, #3]
	ldrb r3, [r3, #4]
	str r6, [sp]
	bl sub_805345C
	b _08052CC0
_08052A82:
	bl sub_8034FE0
	b _08052C74
_08052A88:
	ldr r3, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r3, r3, r0
	ldrb r0, [r3, #1]
	ldrb r1, [r3, #2]
	ldrb r2, [r3, #3]
	ldrb r3, [r3, #4]
	str r6, [sp]
	bl sub_8053CF0
	b _08052CC0
_08052A9E:
	adds r0, #1
	str r0, [r6, #4]
	adds r0, r2, r0
	ldrb r0, [r0]
	subs r0, #0x30
	cmp r0, #9
	bls _08052AAE
	b _08052F4E
_08052AAE:
	lsls r0, r0, #2
	ldr r1, _08052AB8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052AB8: .4byte 0x08052ABC
_08052ABC: @ jump table
	.4byte _08052AE4 @ case 0
	.4byte _08052B08 @ case 1
	.4byte _08052B1A @ case 2
	.4byte _08052B2C @ case 3
	.4byte _08052B40 @ case 4
	.4byte _08052B58 @ case 5
	.4byte _08052B68 @ case 6
	.4byte _08052B82 @ case 7
	.4byte _08052B98 @ case 8
	.4byte _08052BAC @ case 9
_08052AE4:
	ldr r4, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r4, r4, r0
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #3]
	ldrb r3, [r4, #4]
	ldrb r5, [r4, #5]
	str r5, [sp]
	ldrb r4, [r4, #6]
	str r4, [sp, #4]
	str r6, [sp, #8]
	bl sub_8053520
	ldr r0, [r6, #4]
	adds r0, #7
	str r0, [r6, #4]
	b _08052F4E
_08052B08:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	adds r2, r6, #0
	bl sub_8053984
	b _08052C98
_08052B1A:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	adds r2, r6, #0
	bl sub_8053A74
	b _08052C98
_08052B2C:
	ldr r2, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r2, r2, r0
	ldrb r0, [r2, #1]
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	adds r3, r6, #0
	bl sub_8053D88
	b _08052CE2
_08052B40:
	ldr r2, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r2, r2, r0
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	ldrb r1, [r2, #2]
	orrs r0, r1
	ldrb r1, [r2, #3]
	adds r2, r6, #0
	bl sub_8053884
	b _08052CE2
_08052B58:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	adds r1, r6, #0
	bl sub_8054AB0
	b _08052D08
_08052B68:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r4, [r0, #1]
	cmp r4, #0
	bne _08052B76
	b _08052D08
_08052B76:
	bl sub_804F218
	subs r4, #1
	cmp r4, #0
	bne _08052B76
	b _08052D08
_08052B82:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	movs r1, #1
	bl AddCardToTrunk
	b _08052C98
_08052B98:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	bl sub_8008D88
	b _08052C98
_08052BAC:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	adds r0, r6, #0
	bl sub_8053C18
	b _08052D08
_08052BBC:
	adds r0, #1
	str r0, [r6, #4]
	adds r0, r2, r0
	ldrb r0, [r0]
	subs r0, #0x30
	cmp r0, #8
	bls _08052BCC
	b _08052F4E
_08052BCC:
	lsls r0, r0, #2
	ldr r1, _08052BD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052BD8: .4byte 0x08052BDC
_08052BDC: @ jump table
	.4byte _08052C00 @ case 0
	.4byte _08052C34 @ case 1
	.4byte _08052C4A @ case 2
	.4byte _08052C58 @ case 3
	.4byte _08052C88 @ case 4
	.4byte _08052CA0 @ case 5
	.4byte _08052CCC @ case 6
	.4byte _08052CEA @ case 7
	.4byte _08052CFA @ case 8
_08052C00:
	ldr r1, _08052C30
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x16]
	bl sub_80520E0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r3, #0
	bl sub_80524A4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #1
	strb r0, [r6, #0x1e]
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	lsrs r0, r0, #2
	cmp r3, r0
	bne _08052D08
	movs r0, #0
	strb r0, [r6, #0x1e]
	b _08052D08
	.align 2, 0
_08052C30: .4byte 0x02024270
_08052C34:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	bl sub_8053E34
	adds r1, r6, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	b _08052D08
_08052C4A:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	bl sub_8035038
	b _08052D08
_08052C58:
	adds r0, r6, #0
	adds r0, #0x86
	movs r4, #0
	strb r4, [r0]
	bl sub_805339C
	ldr r1, _08052C7C
	ldr r2, _08052C80
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F508
	ldr r0, _08052C84
	strh r4, [r0]
_08052C74:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	b _08052F4E
	.align 2, 0
_08052C7C: .4byte 0x0400004A
_08052C80: .4byte 0x00003D3E
_08052C84: .4byte 0x04000050
_08052C88:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	adds r2, r6, #0
	bl sub_8053D50
_08052C98:
	ldr r0, [r6, #4]
	adds r0, #3
	str r0, [r6, #4]
	b _08052F4E
_08052CA0:
	ldr r1, _08052CC8
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r2, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r2, r2, r0
	ldrb r0, [r2, #1]
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	bl sub_80523EC
_08052CC0:
	ldr r0, [r6, #4]
	adds r0, #5
	str r0, [r6, #4]
	b _08052F4E
	.align 2, 0
_08052CC8: .4byte 0x02024270
_08052CCC:
	ldr r2, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r2, r2, r0
	ldrb r0, [r2, #1]
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	ldrb r2, [r2, #3]
	orrs r1, r2
	adds r2, r6, #0
	bl sub_8053B40
_08052CE2:
	ldr r0, [r6, #4]
	adds r0, #4
	str r0, [r6, #4]
	b _08052F4E
_08052CEA:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	adds r0, r6, #0
	bl sub_80553F8
	b _08052D08
_08052CFA:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	adds r0, r6, #0
	bl sub_80512E0
_08052D08:
	ldr r0, [r6, #4]
	adds r0, #2
	str r0, [r6, #4]
	b _08052F4E
_08052D10:
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #4]
	adds r2, r1, r0
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08052D3C
	adds r1, r6, #0
	adds r1, #0x86
	movs r0, #1
	strb r0, [r1]
	ldr r2, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r1, r2, r1
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	ldrb r3, [r1]
	orrs r3, r0
	adds r2, #2
	str r2, [r6, #4]
	b _08052F06
_08052D3C:
	ldrb r0, [r2]
	subs r0, #0x20
	cmp r0, #0x5a
	bls _08052D46
	b _08052EEC
_08052D46:
	lsls r0, r0, #2
	ldr r1, _08052D50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052D50: .4byte 0x08052D54
_08052D54: @ jump table
	.4byte _08052EC0 @ case 0
	.4byte _08052EC0 @ case 1
	.4byte _08052EC0 @ case 2
	.4byte _08052EEC @ case 3
	.4byte _08052EEC @ case 4
	.4byte _08052EC0 @ case 5
	.4byte _08052EEC @ case 6
	.4byte _08052EC0 @ case 7
	.4byte _08052EEC @ case 8
	.4byte _08052EEC @ case 9
	.4byte _08052EEC @ case 10
	.4byte _08052EEC @ case 11
	.4byte _08052EC0 @ case 12
	.4byte _08052EC0 @ case 13
	.4byte _08052EC0 @ case 14
	.4byte _08052EEC @ case 15
	.4byte _08052EEC @ case 16
	.4byte _08052EEC @ case 17
	.4byte _08052EEC @ case 18
	.4byte _08052EEC @ case 19
	.4byte _08052EEC @ case 20
	.4byte _08052EEC @ case 21
	.4byte _08052EEC @ case 22
	.4byte _08052EEC @ case 23
	.4byte _08052EEC @ case 24
	.4byte _08052EEC @ case 25
	.4byte _08052EC0 @ case 26
	.4byte _08052EC0 @ case 27
	.4byte _08052EEC @ case 28
	.4byte _08052EEC @ case 29
	.4byte _08052EEC @ case 30
	.4byte _08052EC0 @ case 31
	.4byte _08052EEC @ case 32
	.4byte _08052EC0 @ case 33
	.4byte _08052EC0 @ case 34
	.4byte _08052EC0 @ case 35
	.4byte _08052EC0 @ case 36
	.4byte _08052EC0 @ case 37
	.4byte _08052EC0 @ case 38
	.4byte _08052EC0 @ case 39
	.4byte _08052EC0 @ case 40
	.4byte _08052EC0 @ case 41
	.4byte _08052EC0 @ case 42
	.4byte _08052EC0 @ case 43
	.4byte _08052EC0 @ case 44
	.4byte _08052EC0 @ case 45
	.4byte _08052EC0 @ case 46
	.4byte _08052EC0 @ case 47
	.4byte _08052EC0 @ case 48
	.4byte _08052EC0 @ case 49
	.4byte _08052EC0 @ case 50
	.4byte _08052EC0 @ case 51
	.4byte _08052EC0 @ case 52
	.4byte _08052EC0 @ case 53
	.4byte _08052EC0 @ case 54
	.4byte _08052EC0 @ case 55
	.4byte _08052EC0 @ case 56
	.4byte _08052EC0 @ case 57
	.4byte _08052EC0 @ case 58
	.4byte _08052EEC @ case 59
	.4byte _08052EEC @ case 60
	.4byte _08052EEC @ case 61
	.4byte _08052EEC @ case 62
	.4byte _08052EEC @ case 63
	.4byte _08052EEC @ case 64
	.4byte _08052EC0 @ case 65
	.4byte _08052EC0 @ case 66
	.4byte _08052EC0 @ case 67
	.4byte _08052EC0 @ case 68
	.4byte _08052EC0 @ case 69
	.4byte _08052EC0 @ case 70
	.4byte _08052EC0 @ case 71
	.4byte _08052EC0 @ case 72
	.4byte _08052EC0 @ case 73
	.4byte _08052EC0 @ case 74
	.4byte _08052EC0 @ case 75
	.4byte _08052EC0 @ case 76
	.4byte _08052EC0 @ case 77
	.4byte _08052EC0 @ case 78
	.4byte _08052EC0 @ case 79
	.4byte _08052EC0 @ case 80
	.4byte _08052EC0 @ case 81
	.4byte _08052EC0 @ case 82
	.4byte _08052EC0 @ case 83
	.4byte _08052EC0 @ case 84
	.4byte _08052EC0 @ case 85
	.4byte _08052EC0 @ case 86
	.4byte _08052EC0 @ case 87
	.4byte _08052EC0 @ case 88
	.4byte _08052EC0 @ case 89
	.4byte _08052EC0 @ case 90
_08052EC0:
	movs r4, #1
	adds r0, r6, #0
	adds r0, #0x86
	strb r4, [r0]
	ldr r2, _08052EE8
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrb r3, [r0, #1]
	lsls r3, r3, #8
	ldrb r0, [r0]
	orrs r3, r0
	adds r1, #1
	str r1, [r6, #4]
	b _08052F06
	.align 2, 0
_08052EE8: .4byte gUnk_8E00E30
_08052EEC:
	adds r1, r6, #0
	adds r1, #0x86
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08052F2C
	ldr r0, [r0]
	ldrb r3, [r0, #1]
	lsls r3, r3, #8
	ldrb r0, [r0]
	orrs r3, r0
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
_08052F06:
	adds r0, r6, #0
	adds r0, #0x82
	movs r1, #1
	strh r1, [r0]
	ldr r2, [r6, #8]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08052F38
	lsrs r0, r2, #1
	lsls r0, r0, #7
	ldr r1, _08052F30
	adds r0, r0, r1
	ldr r2, _08052F34
	adds r1, r3, #0
	bl sub_8020968
	b _08052F48
	.align 2, 0
_08052F2C: .4byte gUnk_8E00E30
_08052F30: .4byte 0x0200DC40
_08052F34: .4byte 0x00000101
_08052F38:
	lsrs r0, r2, #1
	lsls r0, r0, #7
	ldr r1, _08052F58
	adds r0, r0, r1
	ldr r2, _08052F5C
	adds r1, r3, #0
	bl sub_8020968
_08052F48:
	adds r0, r6, #0
	bl sub_8053284
_08052F4E:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08052F58: .4byte 0x0200DC20
_08052F5C: .4byte 0x00000101

	THUMB_FUNC_START sub_8052F60
sub_8052F60: @ 0x08052F60
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08052F88
	ldrh r0, [r0]
	ldr r2, _08052F8C
	ands r2, r0
	cmp r2, #0
	beq _08052FB0
	movs r0, #0xca
	bl sub_8034F60
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _08052F90
	movs r0, #0
	b _08052F92
	.align 2, 0
_08052F88: .4byte gUnk2020DFC
_08052F8C: .4byte 0x00000103
_08052F90:
	movs r0, #1
_08052F92:
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strb r1, [r4, #0xc]
	ldr r0, _08052FA8
	ldr r1, _08052FAC
	bl LZ77UnCompWram
	b _0805303A
	.align 2, 0
_08052FA8: .4byte 0x082AD2D0
_08052FAC: .4byte 0x0200DC00
_08052FB0:
	ldrh r0, [r4, #0x1c]
	adds r1, r0, #1
	strh r1, [r4, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	beq _08053000
	cmp r0, #0xf
	bgt _08052FC8
	cmp r0, #0
	beq _08052FCE
	b _0805303A
_08052FC8:
	cmp r0, #0x1d
	beq _08053038
	b _0805303A
_08052FCE:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08052FEC
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _08052FE4
	adds r0, r0, r1
	ldr r1, _08052FE8
	b _08053022
	.align 2, 0
_08052FE4: .4byte 0x0200DC40
_08052FE8: .4byte 0x0000A081
_08052FEC:
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _08052FF8
	adds r0, r0, r1
	ldr r1, _08052FFC
	b _08053022
	.align 2, 0
_08052FF8: .4byte 0x0200DC20
_08052FFC: .4byte 0x0000A081
_08053000:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08053018
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _08053014
	b _0805301E
	.align 2, 0
_08053014: .4byte 0x0200DC40
_08053018:
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _0805302C
_0805301E:
	adds r0, r0, r1
	ldr r1, _08053030
_08053022:
	ldr r2, _08053034
	bl sub_8020968
	b _0805303A
	.align 2, 0
_0805302C: .4byte 0x0200DC20
_08053030: .4byte 0x00004081
_08053034: .4byte 0x00000101
_08053038:
	strh r2, [r4, #0x1c]
_0805303A:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8053040
sub_8053040: @ 0x08053040
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08053068
	ldrh r1, [r0]
	ldr r5, _0805306C
	ands r5, r1
	cmp r5, #0
	beq _08053090
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _08053070
	movs r0, #0
	b _08053072
	.align 2, 0
_08053068: .4byte gUnk2020DFC
_0805306C: .4byte 0x00000103
_08053070:
	movs r0, #1
_08053072:
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strb r1, [r4, #0xc]
	ldr r0, _08053088
	ldr r1, _0805308C
	bl LZ77UnCompWram
	b _08053122
	.align 2, 0
_08053088: .4byte 0x082AD2D0
_0805308C: .4byte 0x0200DC00
_08053090:
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _080530A6
	ldrb r0, [r4, #0x1e]
	cmp r0, #1
	bne _080530A6
	movs r0, #0x36
	bl sub_8034F60
	strb r5, [r4, #0x1e]
_080530A6:
	ldr r0, _080530D0
	ldrh r1, [r0]
	movs r0, #0x90
	ands r0, r1
	cmp r0, #0
	beq _080530C2
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	bne _080530C2
	movs r0, #0x36
	bl sub_8034F60
	movs r0, #1
	strb r0, [r4, #0x1e]
_080530C2:
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080530D4
	cmp r0, #1
	beq _08053104
	b _08053122
	.align 2, 0
_080530D0: .4byte gUnk2020DFC
_080530D4:
	ldr r4, _080530F4
	ldr r1, _080530F8
	ldr r5, _080530FC
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020968
	movs r0, #0xe0
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r1, _08053100
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020968
	b _08053122
	.align 2, 0
_080530F4: .4byte 0x0200DC20
_080530F8: .4byte 0x00007281
_080530FC: .4byte 0x00000101
_08053100: .4byte 0x00004081
_08053104:
	ldr r4, _08053128
	ldr r1, _0805312C
	ldr r5, _08053130
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020968
	movs r0, #0xe0
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r1, _08053134
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020968
_08053122:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053128: .4byte 0x0200DC20
_0805312C: .4byte 0x00004081
_08053130: .4byte 0x00000101
_08053134: .4byte 0x00007281

	THUMB_FUNC_START sub_8053138
sub_8053138: @ 0x08053138
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x86
	movs r0, #1
	strb r0, [r1]
	adds r6, r4, #0
	adds r6, #0x78
	ldrb r5, [r6]
	subs r1, #0x64
	adds r2, r1, r5
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _08053174
	ldr r1, _08053170
	ldrb r0, [r2]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r3, [r0, #1]
	lsls r3, r3, #8
	ldrb r0, [r0]
	orrs r3, r0
	adds r0, r5, #1
	b _08053182
	.align 2, 0
_08053170: .4byte gUnk_8E00E30
_08053174:
	adds r0, r5, #1
	adds r0, r1, r0
	ldrb r3, [r0]
	lsls r3, r3, #8
	ldrb r0, [r2]
	orrs r3, r0
	adds r0, r5, #2
_08053182:
	strb r0, [r6]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080531A8
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _080531A0
	adds r0, r0, r1
	ldr r2, _080531A4
	adds r1, r3, #0
	bl sub_8020968
	b _080531B8
	.align 2, 0
_080531A0: .4byte 0x0200DC40
_080531A4: .4byte 0x00000101
_080531A8:
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _080531C4
	adds r0, r0, r1
	ldr r2, _080531C8
	adds r1, r3, #0
	bl sub_8020968
_080531B8:
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _080531D0
	ldr r0, _080531CC
	b _080531D2
	.align 2, 0
_080531C4: .4byte 0x0200DC20
_080531C8: .4byte 0x00000101
_080531CC: .4byte 0x08E0E674
_080531D0:
	ldr r0, _080531F8
_080531D2:
	ldr r1, [r4, #8]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x78
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080531F0
	strb r0, [r4, #0xc]
_080531F0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080531F8: .4byte 0x08E0E754
	.byte 0xF0, 0xB5, 0x06, 0x1C
	.byte 0x30, 0x8C, 0xB8, 0xF7, 0xEF, 0xF8, 0x35, 0x1C, 0x78, 0x35, 0x00, 0x20, 0x28, 0x70, 0x18, 0x4C
	.byte 0x20, 0x68, 0xCD, 0xF7, 0x41, 0xFA, 0x29, 0x78, 0x40, 0x18, 0x28, 0x70, 0x00, 0x23, 0x20, 0x68
	.byte 0x02, 0x78, 0x00, 0x2A, 0x17, 0xD0, 0x31, 0x1C, 0x22, 0x31, 0x24, 0x2A, 0x13, 0xD0, 0x0F, 0x1C
	.byte 0x2A, 0x1C, 0x04, 0x1C, 0xF9, 0x18, 0x10, 0x78, 0x20, 0x18, 0x00, 0x78, 0x08, 0x70, 0x10, 0x78
	.byte 0x01, 0x30, 0x10, 0x70, 0x01, 0x33, 0x4F, 0x2B, 0x05, 0xDC, 0xE0, 0x18, 0x00, 0x78, 0x00, 0x28
	.byte 0x01, 0xD0, 0x24, 0x28, 0xEE, 0xD1, 0x30, 0x1C, 0x22, 0x30, 0xC0, 0x18, 0x00, 0x21, 0x01, 0x70
	.byte 0x30, 0x1C, 0x78, 0x30, 0x01, 0x70, 0x02, 0x20, 0x30, 0x73, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0xD0, 0x1A, 0x02, 0x02

	THUMB_FUNC_START sub_8053274
sub_8053274: @ 0x08053274
	ldr r2, [r1]
	str r2, [r0, #0x10]
	ldr r2, [r1, #4]
	str r2, [r0, #0x14]
	ldr r1, [r1, #8]
	str r1, [r0, #0x18]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8053284
sub_8053284: @ 0x08053284
	adds r2, r0, #0
	ldrb r0, [r2, #0xd]
	cmp r0, #1
	bne _08053294
	ldr r0, _08053290
	b _08053296
	.align 2, 0
_08053290: .4byte 0x08E0E674
_08053294:
	ldr r0, _080532A4
_08053296:
	ldr r1, [r2, #8]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2, #8]
	bx lr
	.align 2, 0
_080532A4: .4byte 0x08E0E754

	THUMB_FUNC_START sub_80532A8
sub_80532A8: @ 0x080532A8
	push {r4, lr}
	ldr r0, _080532D8
	ldr r4, _080532DC
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _080532E0
	movs r1, #0x80
	lsls r1, r1, #5
	adds r4, r4, r1
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _080532E4
	bl sub_80081DC
	bl sub_8008220
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080532D8: .4byte 0x082AD2D0
_080532DC: .4byte 0x0200DC00
_080532E0: .4byte 0x082AD48C
_080532E4: .4byte 0x0804ECA9

	THUMB_FUNC_START sub_80532E8
sub_80532E8: @ 0x080532E8
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r0, _08053330
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _08053314
	adds r5, r3, #0
	adds r5, #0x22
	adds r6, r4, #0
_080532FE:
	adds r0, r5, r2
	adds r1, r2, r6
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #0x4f
	bgt _08053314
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080532FE
_08053314:
	adds r0, r3, #0
	adds r0, #0x22
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x78
	strb r1, [r0]
	movs r0, #2
	strb r0, [r3, #0xc]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053330: .4byte 0x02020DE0
	.byte 0x30, 0xB5, 0x05, 0x1C, 0x0F, 0x48, 0x90, 0x21, 0x89, 0x00, 0x40, 0x18
	.byte 0x01, 0x78, 0x02, 0x20, 0x08, 0x40, 0x00, 0x06, 0x04, 0x0E, 0x00, 0x2C, 0x11, 0xD1, 0xFC, 0xF7
	.byte 0x0F, 0xFA, 0x00, 0x21, 0x2C, 0x80, 0x28, 0x1C, 0x84, 0x30, 0x01, 0x70, 0x28, 0x1C, 0xFF, 0xF7
	.byte 0x29, 0xF9, 0x06, 0x49, 0x06, 0x4A, 0x10, 0x1C, 0x08, 0x80, 0xFC, 0xF7, 0xCD, 0xF8, 0x05, 0x48
	.byte 0x04, 0x80, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x70, 0x42, 0x02, 0x02, 0x4A, 0x00, 0x00, 0x04
	.byte 0x3E, 0x3D, 0x00, 0x00, 0x50, 0x00, 0x00, 0x04

	THUMB_FUNC_START sub_8053388
sub_8053388: @ 0x08053388
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	cmp r0, #1
	bne _08053394
	movs r0, #0
	b _08053396
_08053394:
	movs r0, #1
_08053396:
	str r0, [r1, #8]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805339C
sub_805339C: @ 0x0805339C
	push {lr}
	ldr r0, _080533B4
	movs r1, #2
	bl sub_804EB04
	ldr r0, _080533B8
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_080533B4: .4byte 0x02018400
_080533B8: .4byte 0x080454C9

	THUMB_FUNC_START sub_80533BC
sub_80533BC: @ 0x080533BC
	push {lr}
	ldr r1, _080533F0
	ldr r2, _080533F4
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _080533F8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #3
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #1
	ldr r2, _080533FC
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F544
	ldr r1, _08053400
	movs r0, #0xde
	strh r0, [r1]
	adds r1, #4
	movs r0, #7
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080533F0: .4byte 0x04000042
_080533F4: .4byte 0x000003ED
_080533F8: .4byte 0x0000739D
_080533FC: .4byte 0x00001D1E
_08053400: .4byte 0x04000050

	THUMB_FUNC_START sub_8053404
sub_8053404: @ 0x08053404
	push {lr}
	bl sub_805339C
	ldr r1, _08053420
	ldr r2, _08053424
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F508
	ldr r1, _08053428
	movs r0, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08053420: .4byte 0x0400004A
_08053424: .4byte 0x00003D3E
_08053428: .4byte 0x04000050
	.byte 0x70, 0xB5, 0x03, 0x1C
	.byte 0x00, 0x20, 0x09, 0x4E, 0x80, 0x25, 0xAD, 0x00, 0x44, 0x1C, 0x72, 0x1C, 0x08, 0x78, 0x18, 0x70
	.byte 0x01, 0x31, 0x01, 0x33, 0x01, 0x3A, 0x00, 0x2A, 0xF8, 0xD1, 0x5B, 0x19, 0x20, 0x1C, 0x07, 0x28
	.byte 0xF2, 0xDD, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xFF, 0x01, 0x00, 0x00

	THUMB_FUNC_START sub_805345C
sub_805345C: @ 0x0805345C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, [sp, #0x1c]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	adds r1, r4, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_8053404
	ldr r1, _08053514
	lsls r0, r5, #5
	adds r0, r0, r1
	strb r7, [r0, #0x12]
	cmp r6, #0
	beq _080534D4
	adds r4, r0, #0
	ldr r0, _08053518
	adds r0, r0, r7
	mov r8, r0
	ldr r0, _0805351C
	adds r7, r7, r0
_0805349E:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldrh r1, [r4, #0x16]
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	adds r0, r5, #0
	bl sub_8052088
	adds r0, r5, #0
	bl sub_804F124
	adds r0, r5, #0
	bl sub_804DF5C
	bl sub_804F254
	bl sub_804F254
	subs r6, #1
	cmp r6, #0
	bne _0805349E
_080534D4:
	ldr r0, _08053514
	lsls r1, r5, #5
	adds r1, r1, r0
	adds r2, r1, #0
	adds r2, #0x2d
	ldrb r0, [r2]
	movs r3, #5
	rsbs r3, r3, #0
	ands r3, r0
	strb r3, [r2]
	mov r0, sb
	cmp r0, #1
	bne _080534F6
	movs r1, #4
	adds r0, r3, #0
	orrs r0, r1
	strb r0, [r2]
_080534F6:
	adds r0, r5, #0
	bl sub_804F19C
	adds r0, r5, #0
	bl sub_804DF5C
	bl sub_804F254
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053514: .4byte 0x02024270
_08053518: .4byte 0x08E0E834
_0805351C: .4byte 0x08E0E838

	THUMB_FUNC_START sub_8053520
sub_8053520: @ 0x08053520
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r4, r4, #0x18
	lsrs r0, r4, #0x18
	cmp r0, #4
	bls _0805353E
	b _0805371E
_0805353E:
	lsls r0, r0, #2
	ldr r1, _08053548
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08053548: .4byte 0x0805354C
_0805354C: @ jump table
	.4byte _08053560 @ case 0
	.4byte _0805357C @ case 1
	.4byte _08053610 @ case 2
	.4byte _08053684 @ case 3
	.4byte _080536D8 @ case 4
_08053560:
	ldr r0, _08053578
	lsls r4, r5, #5
	adds r4, r4, r0
	strh r6, [r4, #0x14]
	strh r2, [r4, #0x16]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	b _0805369E
	.align 2, 0
_08053578: .4byte 0x02024270
_0805357C:
	ldr r0, _080535FC
	lsls r4, r5, #5
	adds r4, r4, r0
	adds r3, r4, #0
	adds r3, #0x2d
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08053600
	mov ip, r0
	movs r1, #0xe4
	lsls r1, r1, #4
	adds r0, r1, #0
	mov r1, ip
	strh r0, [r1]
	strh r6, [r4, #0x14]
	strh r2, [r4, #0x16]
	ldrb r1, [r3]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	adds r0, r5, #0
	bl sub_8052088
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	ldrb r2, [r4, #0x12]
	lsls r1, r2, #1
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r3, _08053604
	lsls r2, r5, #1
	adds r2, r2, r3
	ldrh r2, [r2]
	lsls r2, r2, #5
	ldr r3, _08053608
	adds r2, r2, r3
	bl sub_804F054
	movs r4, #0x10
	ldr r6, _0805360C
	movs r5, #0x1f
_080535D4:
	adds r1, r4, #0
	ands r1, r5
	lsls r1, r1, #8
	movs r0, #0x10
	subs r0, r0, r4
	ands r0, r5
	orrs r1, r0
	strh r1, [r6]
	bl sub_804F218
	bl sub_804F218
	bl sub_804F218
	bl sub_804F218
	subs r4, #1
	cmp r4, #0
	bge _080535D4
	b _0805371E
	.align 2, 0
_080535FC: .4byte 0x02024270
_08053600: .4byte 0x04000050
_08053604: .4byte 0x08103264
_08053608: .4byte 0x02010400
_0805360C: .4byte 0x04000052
_08053610:
	ldr r1, _08053674
	lsls r0, r5, #5
	adds r4, r0, r1
	strh r6, [r4, #0x14]
	strh r2, [r4, #0x16]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_8052088
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	ldrb r2, [r4, #0x12]
	lsls r1, r2, #1
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r3, _08053678
	lsls r2, r5, #1
	adds r2, r2, r3
	ldrh r2, [r2]
	lsls r2, r2, #5
	ldr r3, _0805367C
	adds r2, r2, r3
	bl sub_804F054
	ldr r2, _08053680
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0805371E
	adds r5, r4, #0
	adds r6, r1, #0
	adds r4, r2, #0
_08053660:
	ldrh r0, [r4]
	strb r0, [r5, #0x1a]
	bl sub_804F218
	adds r4, #2
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r6
	bne _08053660
	b _0805371E
	.align 2, 0
_08053674: .4byte 0x02024270
_08053678: .4byte 0x08103264
_0805367C: .4byte 0x02010400
_08053680: .4byte 0x08E0E83C
_08053684:
	ldr r0, _080536CC
	lsls r4, r5, #5
	adds r4, r4, r0
	strh r6, [r4, #0x14]
	strh r2, [r4, #0x16]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
_0805369E:
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_8052088
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	ldrb r2, [r4, #0x12]
	lsls r1, r2, #1
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r3, _080536D0
	lsls r2, r5, #1
	adds r2, r2, r3
	ldrh r2, [r2]
	lsls r2, r2, #5
	ldr r3, _080536D4
	adds r2, r2, r3
	bl sub_804F054
	bl sub_804F218
	b _0805371E
	.align 2, 0
_080536CC: .4byte 0x02024270
_080536D0: .4byte 0x08103264
_080536D4: .4byte 0x02010400
_080536D8:
	ldr r0, _08053724
	lsls r4, r5, #5
	adds r4, r4, r0
	strh r6, [r4, #0x14]
	strh r2, [r4, #0x16]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_8052088
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	ldrb r2, [r4, #0x12]
	lsls r1, r2, #1
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r3, _08053728
	lsls r2, r5, #1
	adds r2, r2, r3
	ldrh r2, [r2]
	lsls r2, r2, #5
	ldr r3, _0805372C
	adds r2, r2, r3
	bl sub_804F054
	bl sub_804F218
_0805371E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053724: .4byte 0x02024270
_08053728: .4byte 0x08103264
_0805372C: .4byte 0x02010400

	THUMB_FUNC_START sub_8053730
sub_8053730: @ 0x08053730
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r2, r1, #0
	adds r2, #0x86
	movs r0, #0
	strb r0, [r2]
	adds r0, r1, #0
	bl sub_8053404
	movs r7, #0
	movs r0, #2
	add r0, sp
	mov sl, r0
	add r1, sp, #4
	mov sb, r1
	ldr r6, _0805387C
	mov r5, sl
	mov r4, sb
_08053762:
	lsls r1, r7, #1
	adds r1, r1, r7
	lsls r1, r1, #1
	mov r0, sp
	adds r3, r0, r1
	lsls r2, r7, #5
	adds r2, r2, r6
	ldrh r0, [r2, #0x14]
	strh r0, [r3]
	adds r3, r5, r1
	ldrh r0, [r2, #0x16]
	strh r0, [r3]
	adds r1, r4, r1
	ldrh r0, [r2, #0x18]
	strh r0, [r1]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xe
	bls _08053762
	movs r7, #0
	ldr r0, _08053880
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r1, #1
	rsbs r1, r1, #0
	adds r6, r0, #0
	cmp r2, r1
	beq _0805386A
_0805379C:
	movs r3, #1
	movs r4, #0
_080537A0:
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080537CA
	lsls r2, r4, #5
	ldr r1, _0805387C
	adds r2, r2, r1
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #1
	mov r5, sp
	adds r1, r5, r0
	ldrh r1, [r1]
	strh r1, [r2, #0x14]
	mov r5, sl
	adds r1, r5, r0
	ldrh r1, [r1]
	strh r1, [r2, #0x16]
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
_080537CA:
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _080537A0
	movs r4, #0
	adds r0, r7, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _080537FC
	ldr r0, _08053880
	adds r5, r7, r0
_080537EA:
	bl sub_804F254
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r4, r0
	blt _080537EA
_080537FC:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r3, #1
	movs r4, #0
	ldr r6, _08053880
	ldr r5, _0805387C
	movs r2, #0
	movs r1, #0xc0
_0805380E:
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08053820
	lsls r0, r4, #5
	adds r0, r0, r5
	strh r1, [r0, #0x14]
	strh r1, [r0, #0x16]
	strh r2, [r0, #0x18]
_08053820:
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0805380E
	movs r4, #0
	adds r0, r7, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r7, #1
	cmp r4, r0
	bge _08053854
	ldr r1, _08053880
	adds r5, r7, r1
_08053842:
	bl sub_804F254
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r4, r0
	blt _08053842
_08053854:
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	ldr r5, _08053880
	adds r0, r7, r5
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	adds r6, r5, #0
	cmp r1, r0
	bne _0805379C
_0805386A:
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805387C: .4byte 0x02024270
_08053880: .4byte 0x08E0E854

	THUMB_FUNC_START sub_8053884
sub_8053884: @ 0x08053884
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	beq _08053908
	cmp r1, #1
	bgt _080538A6
	cmp r1, #0
	beq _080538AC
	b _08053974
_080538A6:
	cmp r1, #2
	beq _0805396C
	b _08053974
_080538AC:
	adds r0, r2, #0
	adds r0, #0x86
	strb r1, [r0]
	adds r0, r2, #0
	bl sub_8053404
	movs r5, #1
	movs r4, #0
	movs r6, #0
_080538BE:
	mov r0, r8
	ands r0, r5
	cmp r0, #0
	beq _080538F4
	ldr r0, _08053904
	lsls r2, r4, #5
	adds r2, r2, r0
	adds r3, r2, #0
	adds r3, #0x2d
	ldrb r0, [r3]
	movs r7, #5
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	adds r7, #3
	adds r1, r7, #0
	ands r0, r1
	subs r7, #1
	adds r1, r7, #0
	ands r0, r1
	strb r0, [r3]
	movs r0, #4
	strb r0, [r2, #0x12]
	strb r6, [r2, #0x1e]
	adds r0, r4, #0
	bl sub_804DF5C
_080538F4:
	lsls r0, r5, #0x11
	lsrs r5, r0, #0x10
	adds r4, #1
	cmp r4, #0xe
	ble _080538BE
	bl sub_804F254
	b _08053974
	.align 2, 0
_08053904: .4byte 0x02024270
_08053908:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	movs r1, #0
	ldr r3, _08053964
	movs r0, #0
	ldrsb r0, [r3, r0]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	beq _08053974
	ldr r0, _08053968
	mov sl, r0
	adds r7, r3, #0
	mov sb, r2
_0805392E:
	movs r5, #1
	adds r6, r1, #1
	adds r2, r1, r7
	mov r1, sl
	movs r4, #0xe
_08053938:
	mov r0, r8
	ands r0, r5
	cmp r0, #0
	beq _08053944
	ldrb r0, [r2]
	strb r0, [r1, #0x1a]
_08053944:
	lsls r0, r5, #0x11
	lsrs r5, r0, #0x10
	adds r1, #0x20
	subs r4, #1
	cmp r4, #0
	bge _08053938
	bl sub_804F254
	adds r1, r6, #0
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, sb
	bne _0805392E
	b _08053974
	.align 2, 0
_08053964: .4byte 0x08E0E865
_08053968: .4byte 0x02024270
_0805396C:
	mov r0, r8
	adds r1, r2, #0
	bl sub_8053730
_08053974:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8053984
sub_8053984: @ 0x08053984
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	cmp r4, #0xdf
	bls _080539AC
	lsls r0, r4, #0x18
	asrs r0, r0, #8
	lsrs r4, r0, #0x10
_080539AC:
	ldr r0, _08053A64
	lsls r1, r5, #5
	adds r2, r1, r0
	movs r0, #3
	strb r0, [r2, #0x12]
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	movs r3, #0x14
	ldrsh r0, [r2, r3]
	subs r7, r4, r0
	mov r8, r1
	cmp r0, r4
	ble _080539D0
	movs r0, #1
	strb r0, [r2, #0x12]
	movs r1, #0x14
	ldrsh r0, [r2, r1]
	subs r7, r0, r4
_080539D0:
	movs r6, #0
	cmp r6, r7
	bge _08053A3A
	adds r4, r2, #0
_080539D8:
	ldrh r0, [r4, #0x10]
	subs r0, #0x7a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080539F6
	adds r0, r6, #0
	movs r1, #0xf
	bl sub_805B004
	cmp r0, #0
	bne _080539F6
	ldr r0, _08053A68
	bl sub_8034F60
_080539F6:
	ldr r1, _08053A6C
	ldrb r0, [r4, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r4, #0x14]
	adds r0, r0, r3
	strh r0, [r4, #0x14]
	ldr r1, _08053A70
	ldrb r0, [r4, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x16]
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	adds r0, r5, #0
	bl sub_8052088
	adds r0, r5, #0
	bl sub_804F124
	adds r0, r5, #0
	bl sub_804DF5C
	bl sub_804F254
	bl sub_804F254
	adds r6, #1
	cmp r6, r7
	blt _080539D8
_08053A3A:
	ldr r0, _08053A64
	add r0, r8
	adds r0, #0x2d
	ldrb r2, [r0]
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	adds r0, r5, #0
	bl sub_804F19C
	adds r0, r5, #0
	bl sub_804DF5C
	bl sub_804F254
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053A64: .4byte 0x02024270
_08053A68: .4byte 0x00000139
_08053A6C: .4byte 0x08E0E834
_08053A70: .4byte 0x08E0E838

	THUMB_FUNC_START sub_8053A74
sub_8053A74: @ 0x08053A74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r2, #0
	adds r0, #0x86
	movs r5, #0
	strb r5, [r0]
	adds r0, r2, #0
	bl sub_8053404
	cmp r4, #0xdf
	bls _08053A9C
	lsls r0, r4, #0x18
	asrs r0, r0, #8
	lsrs r4, r0, #0x10
_08053A9C:
	ldr r0, _08053B34
	lsls r1, r6, #5
	adds r2, r1, r0
	strb r5, [r2, #0x12]
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	movs r3, #0x16
	ldrsh r0, [r2, r3]
	subs r3, r4, r0
	mov r8, r1
	cmp r0, r4
	ble _08053ABE
	movs r0, #2
	strb r0, [r2, #0x12]
	movs r1, #0x16
	ldrsh r0, [r2, r1]
	subs r3, r0, r4
_08053ABE:
	cmp r3, #0
	ble _08053B0A
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r7, _08053B38
_08053AC8:
	ldrb r0, [r4, #0x12]
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r4, #0x14]
	adds r0, r0, r3
	strh r0, [r4, #0x14]
	ldr r1, _08053B3C
	ldrb r0, [r4, #0x12]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x16]
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	adds r0, r6, #0
	bl sub_8052088
	adds r0, r6, #0
	bl sub_804F124
	adds r0, r6, #0
	bl sub_804DF5C
	bl sub_804F254
	bl sub_804F254
	subs r5, #1
	cmp r5, #0
	bne _08053AC8
_08053B0A:
	ldr r0, _08053B34
	add r0, r8
	adds r0, #0x2d
	ldrb r2, [r0]
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_804F19C
	adds r0, r6, #0
	bl sub_804DF5C
	bl sub_804F254
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053B34: .4byte 0x02024270
_08053B38: .4byte 0x08E0E834
_08053B3C: .4byte 0x08E0E838

	THUMB_FUNC_START sub_8053B40
sub_8053B40: @ 0x08053B40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	movs r2, #0
	ldr r4, _08053C0C
	movs r0, #0xd8
	ldr r1, [sp]
	adds r3, r1, #0
	muls r3, r0, r3
	adds r0, r3, r4
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08053BFC
	mov r8, r3
	ldr r0, _08053C10
	str r0, [sp, #4]
_08053B84:
	movs r7, #1
	movs r5, #0
	lsls r6, r2, #3
	adds r2, #1
	mov sb, r2
	mov r1, r8
	adds r0, r6, r1
	ldr r2, _08053C0C
	adds r1, r0, r2
	ldr r4, [sp, #4]
	adds r4, #0x2c
_08053B9A:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08053BB0
	ldr r0, [r1]
	strb r0, [r4]
	adds r0, r5, #0
	str r1, [sp, #8]
	bl sub_804EFE8
	ldr r1, [sp, #8]
_08053BB0:
	lsls r0, r7, #0x11
	lsrs r7, r0, #0x10
	adds r4, #0x20
	adds r5, #1
	cmp r5, #0xe
	ble _08053B9A
	bl sub_804F28C
	mov r1, r8
	adds r0, r6, r1
	ldr r2, _08053C14
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #1
	ble _08053BE8
	movs r0, #0xd8
	ldr r1, [sp]
	muls r0, r1, r0
	adds r0, r6, r0
	adds r1, r2, #0
	adds r0, r0, r1
	ldr r0, [r0]
	subs r5, r0, #1
_08053BDE:
	bl sub_804F28C
	subs r5, #1
	cmp r5, #0
	bne _08053BDE
_08053BE8:
	mov r2, sb
	lsls r0, r2, #3
	add r0, r8
	ldr r1, _08053C0C
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08053B84
_08053BFC:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053C0C: .4byte 0x08105114
_08053C10: .4byte 0x02024270
_08053C14: .4byte 0x08105118

	THUMB_FUNC_START sub_8053C18
sub_8053C18: @ 0x08053C18
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	beq _08053C70
	cmp r1, #1
	bgt _08053C2E
	cmp r1, #0
	beq _08053C38
	b _08053C98
_08053C2E:
	cmp r1, #2
	beq _08053C7A
	cmp r1, #3
	beq _08053C86
	b _08053C98
_08053C38:
	strb r1, [r4, #0x1e]
	movs r0, #0x52
	bl sub_8055554
	cmp r0, #0
	beq _08053C98
	movs r0, #0x53
	bl sub_8055554
	cmp r0, #0
	beq _08053C98
	movs r0, #0x54
	bl sub_8055554
	cmp r0, #0
	beq _08053C98
	movs r0, #0x55
	bl sub_8055554
	cmp r0, #0
	beq _08053C98
	movs r0, #0x56
	bl sub_8055554
	cmp r0, #0
	beq _08053C98
	movs r0, #1
	b _08053C96
_08053C70:
	movs r0, #0
	strb r0, [r4, #0x1e]
	bl sub_8056070
	b _08053C92
_08053C7A:
	movs r0, #0
	strb r0, [r4, #0x1e]
	movs r0, #1
	bl sub_8056070
	b _08053C92
_08053C86:
	movs r0, #0
	strb r0, [r4, #0x1e]
	ldr r1, _08053CA4
	ldr r0, _08053CA0
	bl sub_8027018
_08053C92:
	cmp r0, #1
	bne _08053C98
_08053C96:
	strb r0, [r4, #0x1e]
_08053C98:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08053CA0: .4byte 0x000003E8
_08053CA4: .4byte 0x00000000
	.byte 0x70, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x16, 0x1C
	.byte 0x18, 0x1C, 0x24, 0x06, 0x24, 0x0E, 0x2D, 0x04, 0x2D, 0x0C, 0x36, 0x04, 0x36, 0x0C, 0x02, 0x1C
	.byte 0x86, 0x32, 0x00, 0x21, 0x11, 0x70, 0xFF, 0xF7, 0x9D, 0xFB, 0x08, 0x49, 0x60, 0x01, 0x40, 0x18
	.byte 0x85, 0x82, 0xC6, 0x82, 0x20, 0x1C, 0xFE, 0xF7, 0xD7, 0xF9, 0x20, 0x1C, 0xFA, 0xF7, 0x3E, 0xF9
	.byte 0xFB, 0xF7, 0x9A, 0xFA, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x70, 0x42, 0x02, 0x02

	THUMB_FUNC_START sub_8053CF0
sub_8053CF0: @ 0x08053CF0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r3, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _08053D44
	lsls r4, r5, #5
	adds r4, r4, r0
	strh r1, [r4, #0x14]
	strh r2, [r4, #0x16]
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_8052088
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	ldrb r2, [r4, #0x12]
	lsls r1, r2, #1
	adds r1, r1, r2
	adds r1, r1, r6
	ldr r2, _08053D48
	lsls r5, r5, #1
	adds r5, r5, r2
	ldrh r2, [r5]
	lsls r2, r2, #5
	ldr r3, _08053D4C
	adds r2, r2, r3
	bl sub_804F054
	bl sub_804F218
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053D44: .4byte 0x02024270
_08053D48: .4byte 0x08103264
_08053D4C: .4byte 0x02010400

	THUMB_FUNC_START sub_8053D50
sub_8053D50: @ 0x08053D50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r2, #0x86
	movs r1, #0
	strb r1, [r2]
	bl sub_8053404
	ldr r1, _08053D84
	lsls r0, r4, #5
	adds r0, r0, r1
	strh r5, [r0, #0x10]
	adds r0, r4, #0
	bl sub_804DF5C
	bl sub_804F1F4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053D84: .4byte 0x02024270

	THUMB_FUNC_START sub_8053D88
sub_8053D88: @ 0x08053D88
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r2, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r4, r4, #0x18
	lsrs r0, r4, #0x18
	mov sb, r0
	adds r1, r3, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r3, #0
	bl sub_8053404
	movs r6, #0
	lsrs r4, r4, #0x19
	cmp r6, r4
	bge _08053DFA
	ldr r1, _08053E28
	lsls r0, r5, #5
	adds r4, r0, r1
	ldr r0, _08053E2C
	adds r0, r0, r7
	mov r8, r0
	ldr r0, _08053E30
	adds r7, r7, r0
_08053DC6:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #1
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #1
	ldrh r1, [r4, #0x16]
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	adds r0, r5, #0
	bl sub_8052088
	adds r0, r5, #0
	bl sub_804DF5C
	bl sub_804F254
	adds r6, #1
	mov r1, sb
	lsrs r0, r1, #1
	cmp r6, r0
	blt _08053DC6
_08053DFA:
	ldr r0, _08053E28
	lsls r1, r5, #5
	adds r1, r1, r0
	adds r1, #0x2d
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_804F19C
	adds r0, r5, #0
	bl sub_804DF5C
	bl sub_804F254
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053E28: .4byte 0x02024270
_08053E2C: .4byte 0x08E0E834
_08053E30: .4byte 0x08E0E838

	THUMB_FUNC_START sub_8053E34
sub_8053E34: @ 0x08053E34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	bl sub_805339C
	bl sub_804F508
	ldr r1, _08053E88
	movs r0, #0xff
	strh r0, [r1]
	subs r1, #6
	ldr r2, _08053E8C
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
_08053E5C:
	ldr r0, _08053E90
	strh r1, [r0]
	subs r4, r7, #1
	adds r6, r1, #1
	cmp r4, r8
	beq _08053E76
	movs r5, #1
	rsbs r5, r5, #0
_08053E6C:
	bl sub_804F218
	subs r4, #1
	cmp r4, r5
	bne _08053E6C
_08053E76:
	adds r1, r6, #0
	cmp r1, #0xf
	ble _08053E5C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053E88: .4byte 0x04000050
_08053E8C: .4byte 0x00003D3E
_08053E90: .4byte 0x04000054
	.byte 0x10, 0xB5, 0x04, 0x1C, 0x00, 0x20, 0xA0, 0x77, 0x52, 0x20, 0x01, 0xF0
	.byte 0x59, 0xFB, 0x00, 0x28, 0x15, 0xD0, 0x53, 0x20, 0x01, 0xF0, 0x54, 0xFB, 0x00, 0x28, 0x10, 0xD0
	.byte 0x54, 0x20, 0x01, 0xF0, 0x4F, 0xFB, 0x00, 0x28, 0x0B, 0xD0, 0x55, 0x20, 0x01, 0xF0, 0x4A, 0xFB
	.byte 0x00, 0x28, 0x06, 0xD0, 0x56, 0x20, 0x01, 0xF0, 0x45, 0xFB, 0x00, 0x28, 0x01, 0xD0, 0x01, 0x20
	.byte 0xA0, 0x77, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x10, 0xB5, 0x04, 0x1C, 0x00, 0x20, 0xA0, 0x77
	.byte 0x02, 0xF0, 0xC6, 0xF8, 0x01, 0x28, 0x00, 0xD1, 0xA0, 0x77, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x10, 0xB5, 0x04, 0x1C, 0x00, 0x20, 0xA0, 0x77, 0x01, 0x20, 0x02, 0xF0, 0xB9, 0xF8, 0x01, 0x28
	.byte 0x00, 0xD1, 0xA0, 0x77, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x04, 0x1C
	.byte 0x00, 0x20, 0xA0, 0x77, 0x05, 0x49, 0x04, 0x48, 0xD3, 0xF7, 0x7E, 0xF8, 0x01, 0x28, 0x00, 0xD1
	.byte 0xA0, 0x77, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xE8, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	THUMB_FUNC_START sub_8053F30
sub_8053F30: @ 0x08053F30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _08053FC4
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	orrs r0, r1
	bl sub_80562CC
	movs r1, #0xc8
	lsls r1, r1, #2
	movs r0, #1
	bl sub_805629C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	ldr r0, _08053FC8
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_8020824
	adds r5, r0, #0
	movs r4, #0
	ldr r3, _08053FCC
	ldr r6, _08053FD0
	movs r2, #0
_08053F80:
	adds r1, r4, r3
	adds r0, r4, r6
	strb r2, [r0]
	strb r2, [r1]
	adds r4, #1
	cmp r4, #0x6f
	ble _08053F80
	movs r0, #0x1a
	mov ip, r0
	movs r7, #0
	movs r6, #0
	movs r3, #0
	ldrb r0, [r5]
	movs r1, #0x22
	add r1, r8
	mov sl, r1
	mov r1, r8
	adds r1, #0x78
	str r1, [sp]
	cmp r0, #0
	beq _08053FF8
	cmp r0, #0x24
	beq _08053FF8
	adds r2, r5, #0
	ldr r4, _08053FCC
_08053FB2:
	ldrb r1, [r2]
	lsls r0, r1, #0x18
	cmp r0, #0
	bge _08053FD4
	strb r1, [r4]
	adds r4, #1
	adds r6, #1
	adds r2, #1
	b _08053FE2
	.align 2, 0
_08053FC4: .4byte 0x08E0CD14
_08053FC8: .4byte gCardInfo
_08053FCC: .4byte 0x0201EF50
_08053FD0: .4byte 0x0201EFC0
_08053FD4:
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _08053FE2
	cmp r3, #0x1b
	bgt _08053FE2
	adds r7, r6, #0
	mov sb, r3
_08053FE2:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r4, #1
	adds r6, #1
	adds r2, #1
	adds r3, #1
	ldrb r0, [r2]
	cmp r0, #0
	beq _08053FF8
	cmp r0, #0x24
	bne _08053FB2
_08053FF8:
	cmp r3, ip
	ble _0805403C
	ldr r1, _08054034
	adds r2, r7, r1
	movs r0, #0
	strb r0, [r2]
	adds r6, r7, #1
	ldr r4, _08054038
	adds r0, r4, #0
	bl sub_805D1B0
	mov r3, sb
	cmp r3, #0x1b
	bgt _08054024
	adds r2, r4, #0
	movs r1, #0x20
_08054018:
	adds r0, r7, r2
	strb r1, [r0]
	adds r7, #1
	adds r3, #1
	cmp r3, #0x1b
	ble _08054018
_08054024:
	ldr r0, _08054038
	adds r0, r7, r0
	ldr r1, _08054034
	adds r1, r6, r1
	bl sub_805D1B0
	b _08054044
	.align 2, 0
_08054034: .4byte 0x0201EF50
_08054038: .4byte 0x0201EFC0
_0805403C:
	ldr r0, _080540A8
	ldr r1, _080540AC
	bl sub_805D1B0
_08054044:
	movs r4, #0
	mov ip, r4
	ldr r1, _080540A8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08054080
	adds r3, r1, #0
	mov r1, sl
_08054054:
	ldrb r2, [r3]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _08054066
	strb r2, [r1]
	adds r3, #1
	adds r1, #1
	adds r4, #1
_08054066:
	ldrb r0, [r3]
	strb r0, [r1]
	adds r3, #1
	adds r1, #1
	adds r4, #1
	movs r0, #1
	add ip, r0
	mov r0, ip
	cmp r0, #0x4f
	bgt _08054080
	ldrb r0, [r3]
	cmp r0, #0
	bne _08054054
_08054080:
	mov r0, sl
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
	ldr r1, [sp]
	strb r0, [r1]
	movs r0, #2
	mov r1, r8
	strb r0, [r1, #0xc]
	bl sub_80562E0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080540A8: .4byte 0x0201EFC0
_080540AC: .4byte 0x0201EF50

	THUMB_FUNC_START sub_80540B0
sub_80540B0: @ 0x080540B0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08054148
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	orrs r0, r1
	bl sub_80562CC
	bl sub_8056208
	ldr r4, _0805414C
	movs r0, #0
	movs r1, #3
	bl sub_8056258
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8020824
	movs r4, #0
	movs r5, #0
	ldrb r1, [r0]
	cmp r1, #0
	beq _08054128
	adds r2, r6, #0
	adds r2, #0x22
	cmp r1, #0x24
	beq _08054128
	adds r1, r0, #0
_080540FC:
	ldrb r3, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0805410E
	strb r3, [r2]
	adds r1, #1
	adds r2, #1
	adds r4, #1
_0805410E:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	adds r4, #1
	adds r5, #1
	cmp r5, #0x4f
	bgt _08054128
	ldrb r0, [r1]
	cmp r0, #0
	beq _08054128
	cmp r0, #0x24
	bne _080540FC
_08054128:
	adds r0, r6, #0
	adds r0, #0x22
	adds r0, r0, r4
	movs r1, #0
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x78
	strb r1, [r0]
	movs r0, #2
	strb r0, [r6, #0xc]
	bl sub_80562E0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054148: .4byte 0x08E0CD14
_0805414C: .4byte 0x08E0F4F4

	THUMB_FUNC_START sub_8054150
sub_8054150: @ 0x08054150
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080541EC
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	orrs r0, r1
	bl sub_80562CC
	bl sub_8056208
	bl sub_8056208
	ldr r4, _080541F0
	movs r0, #0
	movs r1, #8
	bl sub_8056258
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8020824
	movs r4, #0
	movs r5, #0
	ldrb r1, [r0]
	cmp r1, #0
	beq _080541CC
	adds r2, r6, #0
	adds r2, #0x22
	cmp r1, #0x24
	beq _080541CC
	adds r1, r0, #0
_080541A0:
	ldrb r3, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080541B2
	strb r3, [r2]
	adds r1, #1
	adds r2, #1
	adds r4, #1
_080541B2:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	adds r4, #1
	adds r5, #1
	cmp r5, #0x4f
	bgt _080541CC
	ldrb r0, [r1]
	cmp r0, #0
	beq _080541CC
	cmp r0, #0x24
	bne _080541A0
_080541CC:
	adds r0, r6, #0
	adds r0, #0x22
	adds r0, r0, r4
	movs r1, #0
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x78
	strb r1, [r0]
	movs r0, #2
	strb r0, [r6, #0xc]
	bl sub_80562E0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080541EC: .4byte 0x08E0CD14
_080541F0: .4byte 0x08E0F504

	THUMB_FUNC_START sub_80541F4
sub_80541F4: @ 0x080541F4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08054294
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	orrs r0, r1
	bl sub_80562CC
	movs r5, #2
_08054216:
	bl sub_8056208
	subs r5, #1
	cmp r5, #0
	bge _08054216
	ldr r4, _08054298
	movs r0, #0
	movs r1, #5
	bl sub_8056258
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8020824
	movs r5, #0
	movs r1, #0
	ldrb r2, [r0]
	adds r7, r6, #0
	adds r7, #0x22
	movs r3, #0x78
	adds r3, r3, r6
	mov ip, r3
	cmp r2, #0
	beq _0805427C
	cmp r2, #0x24
	beq _0805427C
	adds r2, r0, #0
	adds r3, r7, #0
_08054250:
	ldrb r4, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _08054262
	strb r4, [r3]
	adds r2, #1
	adds r3, #1
	adds r5, #1
_08054262:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r5, #1
	adds r1, #1
	cmp r1, #0x4f
	bgt _0805427C
	ldrb r0, [r2]
	cmp r0, #0
	beq _0805427C
	cmp r0, #0x24
	bne _08054250
_0805427C:
	adds r1, r7, r5
	movs r0, #0
	strb r0, [r1]
	mov r1, ip
	strb r0, [r1]
	movs r0, #2
	strb r0, [r6, #0xc]
	bl sub_80562E0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054294: .4byte 0x08E0CD14
_08054298: .4byte 0x08E0F528

	THUMB_FUNC_START sub_805429C
sub_805429C: @ 0x0805429C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08054318
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	orrs r0, r1
	bl sub_80562CC
	movs r4, #3
_080542BE:
	bl sub_8056208
	subs r4, #1
	cmp r4, #0
	bge _080542BE
	ldr r4, _0805431C
	movs r0, #0
	movs r1, #0x14
	bl sub_8056258
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	movs r4, #0
	ldrb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x22
	adds r6, r5, #0
	adds r6, #0x78
	cmp r0, #0
	beq _08054302
	adds r3, r1, #0
_080542EA:
	ldrb r0, [r2]
	strb r0, [r3]
	ldrb r0, [r2, #1]
	strb r0, [r3, #1]
	adds r2, #2
	adds r3, #2
	adds r4, #2
	cmp r4, #0x4f
	bgt _08054302
	ldrb r0, [r2]
	cmp r0, #0
	bne _080542EA
_08054302:
	adds r1, r1, r4
	movs r0, #0
	strb r0, [r1]
	strb r0, [r6]
	movs r0, #2
	strb r0, [r5, #0xc]
	bl sub_80562E0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054318: .4byte 0x08E0CD14
_0805431C: .4byte 0x08E0F540

	THUMB_FUNC_START sub_8054320
sub_8054320: @ 0x08054320
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0805439C
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	orrs r0, r1
	bl sub_80562CC
	movs r4, #4
_08054342:
	bl sub_8056208
	subs r4, #1
	cmp r4, #0
	bge _08054342
	ldr r4, _080543A0
	movs r0, #0
	movs r1, #0x14
	bl sub_8056258
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	movs r4, #0
	ldrb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x22
	adds r6, r5, #0
	adds r6, #0x78
	cmp r0, #0
	beq _08054386
	adds r3, r1, #0
_0805436E:
	ldrb r0, [r2]
	strb r0, [r3]
	ldrb r0, [r2, #1]
	strb r0, [r3, #1]
	adds r2, #2
	adds r3, #2
	adds r4, #2
	cmp r4, #0x4f
	bgt _08054386
	ldrb r0, [r2]
	cmp r0, #0
	bne _0805436E
_08054386:
	adds r1, r1, r4
	movs r0, #0
	strb r0, [r1]
	strb r0, [r6]
	movs r0, #2
	strb r0, [r5, #0xc]
	bl sub_80562E0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805439C: .4byte 0x08E0CD14
_080543A0: .4byte 0x08E0F594

	THUMB_FUNC_START sub_80543A4
sub_80543A4: @ 0x080543A4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08054444
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	orrs r0, r1
	bl sub_80562CC
	movs r5, #5
_080543C6:
	bl sub_8056208
	subs r5, #1
	cmp r5, #0
	bge _080543C6
	ldr r4, _08054448
	movs r0, #0
	movs r1, #5
	bl sub_8056258
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8020824
	movs r5, #0
	movs r1, #0
	ldrb r2, [r0]
	adds r7, r6, #0
	adds r7, #0x22
	movs r3, #0x78
	adds r3, r3, r6
	mov ip, r3
	cmp r2, #0
	beq _0805442C
	cmp r2, #0x24
	beq _0805442C
	adds r2, r0, #0
	adds r3, r7, #0
_08054400:
	ldrb r4, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _08054412
	strb r4, [r3]
	adds r2, #1
	adds r3, #1
	adds r5, #1
_08054412:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r5, #1
	adds r1, #1
	cmp r1, #0x4f
	bgt _0805442C
	ldrb r0, [r2]
	cmp r0, #0
	beq _0805442C
	cmp r0, #0x24
	bne _08054400
_0805442C:
	adds r1, r7, r5
	movs r0, #0
	strb r0, [r1]
	mov r1, ip
	strb r0, [r1]
	movs r0, #2
	strb r0, [r6, #0xc]
	bl sub_80562E0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054444: .4byte 0x08E0CD14
_08054448: .4byte 0x08E0F5E8

	THUMB_FUNC_START sub_805444C
sub_805444C: @ 0x0805444C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _080544EC
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	orrs r0, r1
	bl sub_80562CC
	movs r5, #6
_0805446E:
	bl sub_8056208
	subs r5, #1
	cmp r5, #0
	bge _0805446E
	ldr r4, _080544F0
	movs r0, #0
	movs r1, #5
	bl sub_8056258
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8020824
	movs r5, #0
	movs r1, #0
	ldrb r2, [r0]
	adds r7, r6, #0
	adds r7, #0x22
	movs r3, #0x78
	adds r3, r3, r6
	mov ip, r3
	cmp r2, #0
	beq _080544D4
	cmp r2, #0x24
	beq _080544D4
	adds r2, r0, #0
	adds r3, r7, #0
_080544A8:
	ldrb r4, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080544BA
	strb r4, [r3]
	adds r2, #1
	adds r3, #1
	adds r5, #1
_080544BA:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r5, #1
	adds r1, #1
	cmp r1, #0x4f
	bgt _080544D4
	ldrb r0, [r2]
	cmp r0, #0
	beq _080544D4
	cmp r0, #0x24
	bne _080544A8
_080544D4:
	adds r1, r7, r5
	movs r0, #0
	strb r0, [r1]
	mov r1, ip
	strb r0, [r1]
	movs r0, #2
	strb r0, [r6, #0xc]
	bl sub_80562E0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080544EC: .4byte 0x08E0CD14
_080544F0: .4byte 0x08E0F600

	THUMB_FUNC_START sub_80544F4
sub_80544F4: @ 0x080544F4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08054594
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	orrs r0, r1
	bl sub_80562CC
	movs r5, #7
_08054516:
	bl sub_8056208
	subs r5, #1
	cmp r5, #0
	bge _08054516
	ldr r4, _08054598
	movs r0, #0
	movs r1, #3
	bl sub_8056258
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8020824
	movs r5, #0
	movs r1, #0
	ldrb r2, [r0]
	adds r7, r6, #0
	adds r7, #0x22
	movs r3, #0x78
	adds r3, r3, r6
	mov ip, r3
	cmp r2, #0
	beq _0805457C
	cmp r2, #0x24
	beq _0805457C
	adds r2, r0, #0
	adds r3, r7, #0
_08054550:
	ldrb r4, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _08054562
	strb r4, [r3]
	adds r2, #1
	adds r3, #1
	adds r5, #1
_08054562:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r5, #1
	adds r1, #1
	cmp r1, #0x4f
	bgt _0805457C
	ldrb r0, [r2]
	cmp r0, #0
	beq _0805457C
	cmp r0, #0x24
	bne _08054550
_0805457C:
	adds r1, r7, r5
	movs r0, #0
	strb r0, [r1]
	mov r1, ip
	strb r0, [r1]
	movs r0, #2
	strb r0, [r6, #0xc]
	bl sub_80562E0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054594: .4byte 0x08E0CD14
_08054598: .4byte 0x08E0F4F4

	THUMB_FUNC_START sub_805459C
sub_805459C: @ 0x0805459C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0805463C
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	orrs r0, r1
	bl sub_80562CC
	movs r5, #8
_080545BE:
	bl sub_8056208
	subs r5, #1
	cmp r5, #0
	bge _080545BE
	ldr r4, _08054640
	movs r0, #0
	movs r1, #5
	bl sub_8056258
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8020824
	movs r5, #0
	movs r1, #0
	ldrb r2, [r0]
	adds r7, r6, #0
	adds r7, #0x22
	movs r3, #0x78
	adds r3, r3, r6
	mov ip, r3
	cmp r2, #0
	beq _08054624
	cmp r2, #0x24
	beq _08054624
	adds r2, r0, #0
	adds r3, r7, #0
_080545F8:
	ldrb r4, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _0805460A
	strb r4, [r3]
	adds r2, #1
	adds r3, #1
	adds r5, #1
_0805460A:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r5, #1
	adds r1, #1
	cmp r1, #0x4f
	bgt _08054624
	ldrb r0, [r2]
	cmp r0, #0
	beq _08054624
	cmp r0, #0x24
	bne _080545F8
_08054624:
	adds r1, r7, r5
	movs r0, #0
	strb r0, [r1]
	mov r1, ip
	strb r0, [r1]
	movs r0, #2
	strb r0, [r6, #0xc]
	bl sub_80562E0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805463C: .4byte 0x08E0CD14
_08054640: .4byte 0x08E0F528

	THUMB_FUNC_START sub_8054644
sub_8054644: @ 0x08054644
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _080546E4
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	orrs r0, r1
	bl sub_80562CC
	movs r4, #9
_08054670:
	bl sub_8056208
	subs r4, #1
	cmp r4, #0
	bge _08054670
	movs r1, #0xc8
	lsls r1, r1, #2
	movs r0, #1
	bl sub_805629C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	ldr r0, _080546E8
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_8020824
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0x22
	add r0, r8
	mov sl, r0
	mov r1, r8
	adds r1, #0x78
	str r1, [sp]
	ldr r3, _080546EC
	ldr r6, _080546F0
	movs r2, #0
_080546AC:
	adds r1, r4, r3
	adds r0, r4, r6
	strb r2, [r0]
	strb r2, [r1]
	adds r4, #1
	cmp r4, #0x6f
	ble _080546AC
	movs r0, #0x1a
	mov ip, r0
	movs r7, #0
	movs r6, #0
	movs r3, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _08054718
	cmp r0, #0x24
	beq _08054718
	adds r2, r5, #0
	ldr r4, _080546EC
_080546D2:
	ldrb r1, [r2]
	lsls r0, r1, #0x18
	cmp r0, #0
	bge _080546F4
	strb r1, [r4]
	adds r4, #1
	adds r6, #1
	adds r2, #1
	b _08054702
	.align 2, 0
_080546E4: .4byte 0x08E0CD14
_080546E8: .4byte gCardInfo
_080546EC: .4byte 0x0201EF50
_080546F0: .4byte 0x0201EFC0
_080546F4:
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _08054702
	cmp r3, #0x1b
	bgt _08054702
	adds r7, r6, #0
	mov sb, r3
_08054702:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r4, #1
	adds r6, #1
	adds r2, #1
	adds r3, #1
	ldrb r0, [r2]
	cmp r0, #0
	beq _08054718
	cmp r0, #0x24
	bne _080546D2
_08054718:
	cmp r3, ip
	ble _0805475C
	ldr r1, _08054754
	adds r2, r7, r1
	movs r0, #0
	strb r0, [r2]
	adds r6, r7, #1
	ldr r4, _08054758
	adds r0, r4, #0
	bl sub_805D1B0
	mov r3, sb
	cmp r3, #0x1b
	bgt _08054744
	adds r2, r4, #0
	movs r1, #0x20
_08054738:
	adds r0, r7, r2
	strb r1, [r0]
	adds r7, #1
	adds r3, #1
	cmp r3, #0x1b
	ble _08054738
_08054744:
	ldr r0, _08054758
	adds r0, r7, r0
	ldr r1, _08054754
	adds r1, r6, r1
	bl sub_805D1B0
	b _08054764
	.align 2, 0
_08054754: .4byte 0x0201EF50
_08054758: .4byte 0x0201EFC0
_0805475C:
	ldr r0, _080547C8
	ldr r1, _080547CC
	bl sub_805D1B0
_08054764:
	movs r4, #0
	mov ip, r4
	ldr r1, _080547C8
	ldrb r0, [r1]
	cmp r0, #0
	beq _080547A0
	adds r3, r1, #0
	mov r1, sl
_08054774:
	ldrb r2, [r3]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _08054786
	strb r2, [r1]
	adds r3, #1
	adds r1, #1
	adds r4, #1
_08054786:
	ldrb r0, [r3]
	strb r0, [r1]
	adds r3, #1
	adds r1, #1
	adds r4, #1
	movs r0, #1
	add ip, r0
	mov r0, ip
	cmp r0, #0x4f
	bgt _080547A0
	ldrb r0, [r3]
	cmp r0, #0
	bne _08054774
_080547A0:
	mov r0, sl
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
	ldr r1, [sp]
	strb r0, [r1]
	movs r0, #2
	mov r1, r8
	strb r0, [r1, #0xc]
	bl sub_80562E0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080547C8: .4byte 0x0201EFC0
_080547CC: .4byte 0x0201EF50

	THUMB_FUNC_START sub_80547D0
sub_80547D0: @ 0x080547D0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08054870
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	orrs r0, r1
	bl sub_80562CC
	movs r5, #0xa
_080547F2:
	bl sub_8056208
	subs r5, #1
	cmp r5, #0
	bge _080547F2
	ldr r4, _08054874
	movs r0, #0
	movs r1, #3
	bl sub_8056258
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8020824
	movs r5, #0
	movs r1, #0
	ldrb r2, [r0]
	adds r7, r6, #0
	adds r7, #0x22
	movs r3, #0x78
	adds r3, r3, r6
	mov ip, r3
	cmp r2, #0
	beq _08054858
	cmp r2, #0x24
	beq _08054858
	adds r2, r0, #0
	adds r3, r7, #0
_0805482C:
	ldrb r4, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _0805483E
	strb r4, [r3]
	adds r2, #1
	adds r3, #1
	adds r5, #1
_0805483E:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r5, #1
	adds r1, #1
	cmp r1, #0x4f
	bgt _08054858
	ldrb r0, [r2]
	cmp r0, #0
	beq _08054858
	cmp r0, #0x24
	bne _0805482C
_08054858:
	adds r1, r7, r5
	movs r0, #0
	strb r0, [r1]
	mov r1, ip
	strb r0, [r1]
	movs r0, #2
	strb r0, [r6, #0xc]
	bl sub_80562E0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054870: .4byte 0x08E0CD14
_08054874: .4byte 0x08E0F4F4

	THUMB_FUNC_START sub_8054878
sub_8054878: @ 0x08054878
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08054918
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	orrs r0, r1
	bl sub_80562CC
	movs r5, #0xb
_0805489A:
	bl sub_8056208
	subs r5, #1
	cmp r5, #0
	bge _0805489A
	ldr r4, _0805491C
	movs r0, #0
	movs r1, #8
	bl sub_8056258
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8020824
	movs r5, #0
	movs r1, #0
	ldrb r2, [r0]
	adds r7, r6, #0
	adds r7, #0x22
	movs r3, #0x78
	adds r3, r3, r6
	mov ip, r3
	cmp r2, #0
	beq _08054900
	cmp r2, #0x24
	beq _08054900
	adds r2, r0, #0
	adds r3, r7, #0
_080548D4:
	ldrb r4, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080548E6
	strb r4, [r3]
	adds r2, #1
	adds r3, #1
	adds r5, #1
_080548E6:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r5, #1
	adds r1, #1
	cmp r1, #0x4f
	bgt _08054900
	ldrb r0, [r2]
	cmp r0, #0
	beq _08054900
	cmp r0, #0x24
	bne _080548D4
_08054900:
	adds r1, r7, r5
	movs r0, #0
	strb r0, [r1]
	mov r1, ip
	strb r0, [r1]
	movs r0, #2
	strb r0, [r6, #0xc]
	bl sub_80562E0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054918: .4byte 0x08E0CD14
_0805491C: .4byte 0x08E0F504

	THUMB_FUNC_START sub_8054920
sub_8054920: @ 0x08054920
	push {r4, r5, r6, lr}
	ldr r0, _080549C4
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bl sub_805339C
	bl sub_804F508
	ldr r1, _080549C8
	movs r0, #0xc7
	strh r0, [r1]
	movs r4, #0
	ldr r5, _080549CC
_08054940:
	strh r4, [r5]
	movs r0, #8
	bl sub_805787C
	adds r4, #1
	cmp r4, #0x10
	ble _08054940
	movs r0, #0xa
	bl sub_805787C
	ldr r6, _080549CC
	movs r0, #0x10
	strh r0, [r6]
	bl sub_8008220
	ldr r0, _080549D0
	ldr r4, _080549D4
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _080549D8
	ldr r1, _080549DC
	movs r2, #0xf0
	bl CpuSet
	ldr r0, _080549E0
	movs r2, #0xf8
	lsls r2, r2, #8
	adds r1, r4, r2
	movs r5, #0x80
	lsls r5, r5, #3
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _080549E4
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r4, r4, r1
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	bl sub_8008220
	bl sub_804EC4C
	movs r4, #0x10
_0805499E:
	strh r4, [r6]
	movs r0, #8
	bl sub_805787C
	subs r4, #1
	cmp r4, #0
	bge _0805499E
	movs r0, #0x64
	bl sub_805787C
	ldr r1, _080549CC
	movs r0, #0
	strh r0, [r1]
	bl sub_8008220
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080549C4: .4byte 0x02024270
_080549C8: .4byte 0x04000050
_080549CC: .4byte 0x04000054
_080549D0: .4byte 0x084C9FBC
_080549D4: .4byte 0x02000400
_080549D8: .4byte 0x084D0CE0
_080549DC: .4byte 0x02000020
_080549E0: .4byte 0x084CFCE0
_080549E4: .4byte 0x084D04E0

	THUMB_FUNC_START sub_80549E8
sub_80549E8: @ 0x080549E8
	push {r4, r5, r6, lr}
	ldr r0, _08054A8C
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	bl sub_805339C
	bl sub_804F508
	ldr r1, _08054A90
	movs r0, #0xc7
	strh r0, [r1]
	movs r4, #0
	ldr r5, _08054A94
_08054A08:
	strh r4, [r5]
	movs r0, #8
	bl sub_805787C
	adds r4, #1
	cmp r4, #0x10
	ble _08054A08
	movs r0, #0xa
	bl sub_805787C
	ldr r6, _08054A94
	movs r0, #0x10
	strh r0, [r6]
	bl sub_8008220
	ldr r0, _08054A98
	ldr r4, _08054A9C
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _08054AA0
	ldr r1, _08054AA4
	movs r2, #0xf0
	bl CpuSet
	ldr r0, _08054AA8
	movs r2, #0xf8
	lsls r2, r2, #8
	adds r1, r4, r2
	movs r5, #0x80
	lsls r5, r5, #3
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _08054AAC
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r4, r4, r1
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	bl sub_8008220
	bl sub_804EC4C
	movs r4, #0x10
_08054A66:
	strh r4, [r6]
	movs r0, #8
	bl sub_805787C
	subs r4, #1
	cmp r4, #0
	bge _08054A66
	movs r0, #0x64
	bl sub_805787C
	ldr r1, _08054A94
	movs r0, #0
	strh r0, [r1]
	bl sub_8008220
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054A8C: .4byte 0x02024270
_08054A90: .4byte 0x04000050
_08054A94: .4byte 0x04000054
_08054A98: .4byte 0x084D0EC0
_08054A9C: .4byte 0x02000400
_08054AA0: .4byte 0x084D69D0
_08054AA4: .4byte 0x02000020
_08054AA8: .4byte 0x084D59D0
_08054AAC: .4byte 0x084D61D0

	THUMB_FUNC_START sub_8054AB0
sub_8054AB0: @ 0x08054AB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x23
	bls _08054AC6
	b _08054EB0
_08054AC6:
	lsls r0, r0, #2
	ldr r1, _08054AD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054AD0: .4byte 0x08054AD4
_08054AD4: @ jump table
	.4byte _08054B64 @ case 0
	.4byte _08054BB4 @ case 1
	.4byte _08054C2C @ case 2
	.4byte _08054C34 @ case 3
	.4byte _08054C3C @ case 4
	.4byte _08054C44 @ case 5
	.4byte _08054C4C @ case 6
	.4byte _08054C54 @ case 7
	.4byte _08054C5C @ case 8
	.4byte _08054C64 @ case 9
	.4byte _08054C6C @ case 10
	.4byte _08054C74 @ case 11
	.4byte _08054C7C @ case 12
	.4byte _08054C84 @ case 13
	.4byte _08054C8C @ case 14
	.4byte _08054C94 @ case 15
	.4byte _08054C9C @ case 16
	.4byte _08054CA4 @ case 17
	.4byte _08054CAA @ case 18
	.4byte _08054CB8 @ case 19
	.4byte _08054CC2 @ case 20
	.4byte _08054CC8 @ case 21
	.4byte _08054D40 @ case 22
	.4byte _08054D48 @ case 23
	.4byte _08054D50 @ case 24
	.4byte _08054DC0 @ case 25
	.4byte _08054EB0 @ case 26
	.4byte _08054EB0 @ case 27
	.4byte _08054EB0 @ case 28
	.4byte _08054EB0 @ case 29
	.4byte _08054EB0 @ case 30
	.4byte _08054EB0 @ case 31
	.4byte _08054E18 @ case 32
	.4byte _08054E98 @ case 33
	.4byte _08054EA0 @ case 34
	.4byte _08054EA8 @ case 35
_08054B64:
	bl sub_8053404
	bl sub_804F508
	ldr r1, _08054BAC
	movs r0, #0x9f
	strh r0, [r1]
	movs r5, #0
	ldr r7, _08054BB0
	movs r6, #1
	rsbs r6, r6, #0
_08054B7A:
	strh r5, [r7]
	movs r4, #1
_08054B7E:
	bl sub_8008220
	subs r4, #1
	cmp r4, r6
	bne _08054B7E
	adds r5, #1
	cmp r5, #0x10
	ble _08054B7A
	movs r5, #9
_08054B90:
	bl sub_8008220
	subs r5, #1
	cmp r5, #0
	bge _08054B90
	movs r5, #0x10
	ldr r4, _08054BB0
_08054B9E:
	strh r5, [r4]
	bl sub_8008220
	subs r5, #4
	cmp r5, #0
	bge _08054B9E
	b _08054DA8
	.align 2, 0
_08054BAC: .4byte 0x04000050
_08054BB0: .4byte 0x04000054
_08054BB4:
	bl sub_805339C
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x50
	movs r0, #0x9f
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	movs r4, #1
_08054BD2:
	bl sub_8008220
	subs r4, #1
	cmp r4, #0
	bge _08054BD2
	ldr r1, _08054C28
	movs r0, #0
	strh r0, [r1]
	movs r4, #0x1d
_08054BE4:
	bl sub_8008220
	subs r4, #1
	cmp r4, #0
	bge _08054BE4
	ldr r1, _08054C28
	movs r0, #0x10
	strh r0, [r1]
	movs r4, #1
_08054BF6:
	bl sub_8008220
	subs r4, #1
	cmp r4, #0
	bge _08054BF6
	ldr r1, _08054C28
	movs r0, #0
	strh r0, [r1]
	movs r4, #7
_08054C08:
	bl sub_8008220
	subs r4, #1
	cmp r4, #0
	bge _08054C08
	ldr r1, _08054C28
	movs r0, #0x10
	strh r0, [r1]
	movs r4, #1
_08054C1A:
	bl sub_8008220
	subs r4, #1
	cmp r4, #0
	bge _08054C1A
	b _08054DA8
	.align 2, 0
_08054C28: .4byte 0x04000054
_08054C2C:
	adds r0, r4, #0
	bl sub_8053F30
	b _08054EB0
_08054C34:
	adds r0, r4, #0
	bl sub_80540B0
	b _08054EB0
_08054C3C:
	adds r0, r4, #0
	bl sub_8054150
	b _08054EB0
_08054C44:
	adds r0, r4, #0
	bl sub_80541F4
	b _08054EB0
_08054C4C:
	adds r0, r4, #0
	bl sub_805429C
	b _08054EB0
_08054C54:
	adds r0, r4, #0
	bl sub_8054320
	b _08054EB0
_08054C5C:
	adds r0, r4, #0
	bl sub_80543A4
	b _08054EB0
_08054C64:
	adds r0, r4, #0
	bl sub_805444C
	b _08054EB0
_08054C6C:
	adds r0, r4, #0
	bl sub_80544F4
	b _08054EB0
_08054C74:
	adds r0, r4, #0
	bl sub_805459C
	b _08054EB0
_08054C7C:
	adds r0, r4, #0
	bl sub_8054644
	b _08054EB0
_08054C84:
	adds r0, r4, #0
	bl sub_80547D0
	b _08054EB0
_08054C8C:
	adds r0, r4, #0
	bl sub_8054878
	b _08054EB0
_08054C94:
	movs r0, #0
	bl sub_8000940
	b _08054EB0
_08054C9C:
	movs r0, #1
	bl sub_8000940
	b _08054EB0
_08054CA4:
	bl sub_802BF70
	b _08054CAE
_08054CAA:
	bl sub_802C5B4
_08054CAE:
	bl sub_804ED08
	bl sub_80533BC
	b _08054EB0
_08054CB8:
	bl sub_8055C64
	bl sub_804ED08
	b _08054EB0
_08054CC2:
	bl sub_8000224
	b _08054EB0
_08054CC8:
	bl sub_8053404
	bl sub_804F508
	ldr r0, _08054D34
	movs r1, #0x82
	strh r1, [r0]
	movs r1, #0
	ldr r0, _08054D38
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	beq _08054DA8
	ldr r0, _08054D3C
	mov sb, r0
	mov r3, r8
	adds r7, r2, #0
_08054CF2:
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, sb
	strh r0, [r2]
	adds r0, r1, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsb r4, [r0, r4]
	subs r4, #1
	adds r6, r1, #2
	cmp r4, r7
	beq _08054D20
	movs r5, #1
	rsbs r5, r5, #0
_08054D12:
	str r3, [sp]
	bl sub_8008220
	subs r4, #1
	ldr r3, [sp]
	cmp r4, r5
	bne _08054D12
_08054D20:
	adds r1, r6, #0
	mov r2, r8
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r7
	bne _08054CF2
	b _08054DA8
	.align 2, 0
_08054D34: .4byte 0x04000050
_08054D38: .4byte 0x08E0F618
_08054D3C: .4byte 0x04000054
_08054D40:
	adds r0, r4, #0
	bl sub_8054920
	b _08054EB0
_08054D48:
	adds r0, r4, #0
	bl sub_80549E8
	b _08054EB0
_08054D50:
	bl sub_8053404
	bl sub_804F508
	ldr r0, _08054DB4
	movs r1, #0x82
	strh r1, [r0]
	ldr r2, _08054DB8
	movs r0, #0
	ldrsb r0, [r2, r0]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08054D8A
	ldr r6, _08054DBC
	adds r5, r1, #0
	adds r4, r2, #0
_08054D72:
	movs r0, #0
	ldrsb r0, [r4, r0]
	strh r0, [r6]
	movs r0, #1
	ldrsb r0, [r4, r0]
	bl sub_805787C
	adds r4, #2
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, r5
	bne _08054D72
_08054D8A:
	ldr r1, _08054DB4
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0
	ldr r5, _08054DBC
_08054D94:
	strh r4, [r5]
	movs r0, #4
	bl sub_805787C
	adds r4, #1
	cmp r4, #0x10
	ble _08054D94
	movs r0, #0xa
	bl sub_805787C
_08054DA8:
	ldr r1, _08054DBC
	movs r0, #0
	strh r0, [r1]
	bl sub_8008220
	b _08054EB0
	.align 2, 0
_08054DB4: .4byte 0x04000050
_08054DB8: .4byte 0x08E0F65B
_08054DBC: .4byte 0x04000054
_08054DC0:
	bl sub_8053404
	bl sub_804F508
	bl sub_804F5D8
	bl sub_8051584
	ldr r2, _08054E0C
	movs r0, #0
	ldrsb r0, [r2, r0]
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r4, #0
	adds r7, #0x86
	cmp r0, r1
	beq _08054E80
	adds r5, r1, #0
	adds r4, r2, #0
_08054DE6:
	bl sub_80515A0
	movs r3, #0
	ldrsb r3, [r4, r3]
	ldr r0, _08054E10
	movs r1, #0
	ldr r2, _08054E14
	bl sub_8044F80
	bl sub_8008220
	bl sub_80454E0
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, r5
	bne _08054DE6
	b _08054E80
	.align 2, 0
_08054E0C: .4byte 0x08E0F688
_08054E10: .4byte 0x02000000
_08054E14: .4byte 0x000001FF
_08054E18:
	bl sub_8053404
	bl sub_804F508
	bl sub_804F580
	bl sub_804F598
	bl sub_8051584
	movs r6, #0
	ldr r2, _08054E88
	movs r0, #0
	ldrsb r0, [r2, r0]
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r4, #0
	adds r7, #0x86
	cmp r0, r1
	beq _08054E80
	ldr r5, _08054E8C
	mov r8, r1
	adds r4, r2, #0
_08054E46:
	bl sub_80515A0
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, _08054E90
	bl sub_8044F80
	ldr r0, _08054E94
	adds r0, r6, r0
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0xff
	bl sub_8044EC8
	bl sub_8008220
	bl sub_80454E0
	adds r4, #1
	adds r6, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, r8
	bne _08054E46
_08054E80:
	movs r0, #0
	strb r0, [r7]
	b _08054EB0
	.align 2, 0
_08054E88: .4byte 0x08E0F69A
_08054E8C: .4byte 0x02000000
_08054E90: .4byte 0x000001FF
_08054E94: .4byte 0x08E0F6AC
_08054E98:
	movs r0, #8
	bl sub_8000940
	b _08054EB0
_08054EA0:
	movs r0, #7
	bl sub_8000940
	b _08054EB0
_08054EA8:
	ldr r1, _08054EC4
	ldr r0, _08054EC0
	bl sub_8026FA8
_08054EB0:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054EC0: .4byte 0x000003E8
_08054EC4: .4byte 0x00000000
	.byte 0xF0, 0xB5, 0xFE, 0xF7, 0x9B, 0xFA, 0xFA, 0xF7
	.byte 0x1B, 0xFB, 0x13, 0x49, 0x9F, 0x20, 0x08, 0x80, 0x00, 0x25, 0x12, 0x4F, 0x01, 0x26, 0x76, 0x42
	.byte 0x3D, 0x80, 0x01, 0x24, 0xB3, 0xF7, 0x9C, 0xF9, 0x01, 0x3C, 0xB4, 0x42, 0xFA, 0xD1, 0x01, 0x35
	.byte 0x10, 0x2D, 0xF5, 0xDD, 0x09, 0x25, 0xB3, 0xF7, 0x93, 0xF9, 0x01, 0x3D, 0x00, 0x2D, 0xFA, 0xDA
	.byte 0x10, 0x25, 0x08, 0x4C, 0x25, 0x80, 0xB3, 0xF7, 0x8B, 0xF9, 0x04, 0x3D, 0x00, 0x2D, 0xF9, 0xDA
	.byte 0x04, 0x49, 0x00, 0x20, 0x08, 0x80, 0xB3, 0xF7, 0x83, 0xF9, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x50, 0x00, 0x00, 0x04, 0x54, 0x00, 0x00, 0x04, 0x10, 0xB5, 0xFE, 0xF7, 0x37, 0xFA, 0x80, 0x21
	.byte 0xC9, 0x04, 0xF8, 0x22, 0x52, 0x01, 0x10, 0x1C, 0x08, 0x80, 0x50, 0x31, 0x9F, 0x20, 0x08, 0x80
	.byte 0x04, 0x31, 0x10, 0x20, 0x08, 0x80, 0x01, 0x24, 0xB3, 0xF7, 0x6A, 0xF9, 0x01, 0x3C, 0x00, 0x2C
	.byte 0xFA, 0xDA, 0x16, 0x49, 0x00, 0x20, 0x08, 0x80, 0x1D, 0x24, 0xB3, 0xF7, 0x61, 0xF9, 0x01, 0x3C
	.byte 0x00, 0x2C, 0xFA, 0xDA, 0x11, 0x49, 0x10, 0x20, 0x08, 0x80, 0x01, 0x24, 0xB3, 0xF7, 0x58, 0xF9
	.byte 0x01, 0x3C, 0x00, 0x2C, 0xFA, 0xDA, 0x0D, 0x49, 0x00, 0x20, 0x08, 0x80, 0x07, 0x24, 0xB3, 0xF7
	.byte 0x4F, 0xF9, 0x01, 0x3C, 0x00, 0x2C, 0xFA, 0xDA, 0x08, 0x49, 0x10, 0x20, 0x08, 0x80, 0x01, 0x24
	.byte 0xB3, 0xF7, 0x46, 0xF9, 0x01, 0x3C, 0x00, 0x2C, 0xFA, 0xDA, 0x04, 0x49, 0x00, 0x20, 0x08, 0x80
	.byte 0xB3, 0xF7, 0x3E, 0xF9, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x54, 0x00, 0x00, 0x04
	.byte 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x81, 0xB0, 0xFE, 0xF7, 0x23, 0xFA, 0xFA, 0xF7
	.byte 0xA3, 0xFA, 0x1E, 0x48, 0x82, 0x21, 0x01, 0x80, 0x00, 0x21, 0x1D, 0x48, 0x80, 0x46, 0x00, 0x78
	.byte 0x00, 0x06, 0x00, 0x16, 0x01, 0x22, 0x52, 0x42, 0x90, 0x42, 0x22, 0xD0, 0x19, 0x48, 0x81, 0x46
	.byte 0x43, 0x46, 0x17, 0x1C, 0xC8, 0x18, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x4A, 0x46, 0x10, 0x80
	.byte 0x48, 0x1C, 0xC0, 0x18, 0x00, 0x24, 0x04, 0x57, 0x01, 0x3C, 0x8E, 0x1C, 0xBC, 0x42, 0x08, 0xD0
	.byte 0x01, 0x25, 0x6D, 0x42, 0x00, 0x93, 0xB3, 0xF7, 0x0B, 0xF9, 0x01, 0x3C, 0x00, 0x9B, 0xAC, 0x42
	.byte 0xF8, 0xD1, 0x31, 0x1C, 0x42, 0x46, 0x88, 0x18, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0xB8, 0x42
	.byte 0xE0, 0xD1, 0x08, 0x49, 0x00, 0x20, 0x08, 0x80, 0xB3, 0xF7, 0xFA, 0xF8, 0x01, 0xB0, 0x18, 0xBC
	.byte 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x50, 0x00, 0x00, 0x04
	.byte 0x18, 0xF6, 0xE0, 0x08, 0x54, 0x00, 0x00, 0x04, 0x70, 0xB5, 0xFE, 0xF7, 0xDB, 0xF9, 0xFA, 0xF7
	.byte 0x5B, 0xFA, 0x18, 0x48, 0x82, 0x21, 0x01, 0x80, 0x17, 0x4A, 0x00, 0x20, 0x10, 0x56, 0x01, 0x21
	.byte 0x49, 0x42, 0x88, 0x42, 0x0E, 0xD0, 0x15, 0x4E, 0x0D, 0x1C, 0x14, 0x1C, 0x00, 0x20, 0x20, 0x56
	.byte 0x30, 0x80, 0x01, 0x20, 0x20, 0x56, 0x02, 0xF0, 0x01, 0xFC, 0x02, 0x34, 0x00, 0x20, 0x20, 0x56
	.byte 0xA8, 0x42, 0xF3, 0xD1, 0x0B, 0x49, 0xBF, 0x20, 0x08, 0x80, 0x00, 0x24, 0x0B, 0x4D, 0x2C, 0x80
	.byte 0x04, 0x20, 0x02, 0xF0, 0xF3, 0xFB, 0x01, 0x34, 0x10, 0x2C, 0xF8, 0xDD, 0x0A, 0x20, 0x02, 0xF0
	.byte 0xED, 0xFB, 0x06, 0x49, 0x00, 0x20, 0x08, 0x80, 0xB3, 0xF7, 0xBA, 0xF8, 0x70, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x50, 0x00, 0x00, 0x04, 0x5B, 0xF6, 0xE0, 0x08, 0x54, 0x00, 0x00, 0x04
	.byte 0x70, 0xB5, 0x06, 0x1C, 0xFE, 0xF7, 0x9E, 0xF9, 0xFA, 0xF7, 0x1E, 0xFA, 0xFA, 0xF7, 0x84, 0xFA
	.byte 0xFC, 0xF7, 0x58, 0xFA, 0x10, 0x4A, 0x00, 0x20, 0x10, 0x56, 0x01, 0x21, 0x49, 0x42, 0x88, 0x42
	.byte 0x13, 0xD0, 0x0D, 0x1C, 0x14, 0x1C, 0xFC, 0xF7, 0x5B, 0xFA, 0x00, 0x23, 0xE3, 0x56, 0x0B, 0x48
	.byte 0x00, 0x21, 0x0B, 0x4A, 0xEF, 0xF7, 0x44, 0xFF, 0xB3, 0xF7, 0x92, 0xF8, 0xF0, 0xF7, 0xF0, 0xF9
	.byte 0x01, 0x34, 0x00, 0x20, 0x20, 0x56, 0xA8, 0x42, 0xED, 0xD1, 0x31, 0x1C, 0x86, 0x31, 0x00, 0x20
	.byte 0x08, 0x70, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x88, 0xF6, 0xE0, 0x08, 0x00, 0x00, 0x00, 0x02
	.byte 0xFF, 0x01, 0x00, 0x00, 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x80, 0x46, 0xFE, 0xF7, 0x6A, 0xF9
	.byte 0xFA, 0xF7, 0xEA, 0xF9, 0xFA, 0xF7, 0x24, 0xFA, 0xFA, 0xF7, 0x2E, 0xFA, 0xFC, 0xF7, 0x22, 0xFA
	.byte 0x00, 0x26, 0x18, 0x4A, 0x00, 0x20, 0x10, 0x56, 0x01, 0x21, 0x49, 0x42, 0x88, 0x42, 0x1F, 0xD0
	.byte 0x15, 0x4D, 0x0F, 0x1C, 0x14, 0x1C, 0xFC, 0xF7, 0x23, 0xFA, 0x00, 0x23, 0xE3, 0x56, 0x28, 0x1C
	.byte 0x80, 0x21, 0x49, 0x00, 0x11, 0x4A, 0xEF, 0xF7, 0x0B, 0xFF, 0x11, 0x48, 0x30, 0x18, 0x00, 0x23
	.byte 0xC3, 0x56, 0x28, 0x1C, 0x10, 0x21, 0xFF, 0x22, 0xEF, 0xF7, 0xA6, 0xFE, 0xB3, 0xF7, 0x50, 0xF8
	.byte 0xF0, 0xF7, 0xAE, 0xF9, 0x01, 0x34, 0x01, 0x36, 0x00, 0x20, 0x20, 0x56, 0xB8, 0x42, 0xE2, 0xD1
	.byte 0x41, 0x46, 0x86, 0x31, 0x00, 0x20, 0x08, 0x70, 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x9A, 0xF6, 0xE0, 0x08, 0x00, 0x00, 0x00, 0x02, 0xFF, 0x01, 0x00, 0x00
	.byte 0xAC, 0xF6, 0xE0, 0x08, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80551B8
sub_80551B8: @ 0x080551B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #1
	rsbs r5, r5, #0
	ldr r0, _080551D8
	ldrh r0, [r0]
	subs r0, #0x10
	cmp r0, #0x27
	bhi _080552B4
	lsls r0, r0, #2
	ldr r1, _080551DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080551D8: .4byte 0x02024270
_080551DC: .4byte 0x080551E0
_080551E0: @ jump table
	.4byte _0805529A @ case 0
	.4byte _0805529A @ case 1
	.4byte _0805529A @ case 2
	.4byte _080552B4 @ case 3
	.4byte _080552B4 @ case 4
	.4byte _080552B4 @ case 5
	.4byte _080552B4 @ case 6
	.4byte _080552B4 @ case 7
	.4byte _080552B4 @ case 8
	.4byte _080552B4 @ case 9
	.4byte _080552B4 @ case 10
	.4byte _080552B4 @ case 11
	.4byte _080552B4 @ case 12
	.4byte _080552B4 @ case 13
	.4byte _080552B4 @ case 14
	.4byte _080552B4 @ case 15
	.4byte _080552B4 @ case 16
	.4byte _080552B4 @ case 17
	.4byte _080552B4 @ case 18
	.4byte _080552B4 @ case 19
	.4byte _080552B4 @ case 20
	.4byte _080552B4 @ case 21
	.4byte _080552B4 @ case 22
	.4byte _080552B4 @ case 23
	.4byte _080552B4 @ case 24
	.4byte _08055280 @ case 25
	.4byte _080552B4 @ case 26
	.4byte _080552B4 @ case 27
	.4byte _080552B4 @ case 28
	.4byte _080552B4 @ case 29
	.4byte _080552B4 @ case 30
	.4byte _080552B4 @ case 31
	.4byte _080552B4 @ case 32
	.4byte _080552B4 @ case 33
	.4byte _080552A8 @ case 34
	.4byte _080552A8 @ case 35
	.4byte _080552A8 @ case 36
	.4byte _080552A8 @ case 37
	.4byte _080552A8 @ case 38
	.4byte _080552A8 @ case 39
_08055280:
	movs r0, #0xf6
	bl sub_8055554
	cmp r0, #0
	beq _080552B4
	movs r5, #0
	movs r0, #0xb4
	bl sub_8055554
	cmp r0, #0
	bne _080552B4
	movs r5, #2
	b _080552B4
_0805529A:
	movs r0, #0xf7
	bl sub_8055554
	cmp r0, #0
	beq _080552B4
	movs r5, #1
	b _080552B4
_080552A8:
	movs r0, #0xf7
	bl sub_8055554
	cmp r0, #0
	beq _080552B4
	movs r5, #3
_080552B4:
	movs r3, #1
	rsbs r3, r3, #0
	cmp r5, r3
	beq _080553B4
	ldr r7, _080553C0
	cmp r5, #0
	bne _08055302
	movs r0, #0x91
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r1, [r2]
	ldr r0, _080553C4
	cmp r1, r0
	ble _080552D2
	str r3, [r2]
_080552D2:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080552EC
	ldr r1, _080553C8
	ldr r3, _080553CC
	adds r0, r3, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
_080552EC:
	ldr r0, [r2]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08055302
	ldr r1, _080553D0
	ldr r2, _080553CC
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
_08055302:
	cmp r5, #2
	bne _0805533E
	movs r0, #0x91
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, [r2]
	cmp r0, #0
	bgt _08055316
	ldr r0, _080553CC
	str r0, [r2]
_08055316:
	ldr r0, [r2]
	subs r0, #1
	str r0, [r2]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805532C
	ldr r1, _080553C8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0805532C:
	ldr r0, [r2]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0805533E
	ldr r1, _080553D0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0805533E:
	movs r1, #0x92
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r1, [r2]
	ldr r0, _080553C4
	cmp r1, r0
	ble _08055352
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2]
_08055352:
	ldr r6, [r2]
	adds r6, #1
	str r6, [r2]
	ldr r4, _080553D4
	lsls r5, r5, #2
	adds r4, r5, r4
	ldr r0, _080553D8
	adds r0, r5, r0
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_805B004
	ldr r1, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r8, r0
	ldr r2, _080553DC
	adds r0, r7, r2
	mov r3, r8
	strh r3, [r0]
	ldr r4, _080553E0
	adds r4, r5, r4
	ldr r0, _080553E4
	adds r5, r5, r0
	ldr r1, [r5]
	adds r0, r6, #0
	bl sub_805B004
	ldr r1, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r7, r1
	strh r2, [r0]
	ldr r0, _080553E8
	rsbs r2, r2, #0
	strh r2, [r0]
	ldr r0, _080553EC
	movs r1, #8
	mov r3, r8
	subs r1, r1, r3
	strh r1, [r0]
	ldr r0, _080553F0
	strh r2, [r0]
	ldr r0, _080553F4
	strh r1, [r0]
_080553B4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080553C0: .4byte 0x02024270
_080553C4: .4byte 0x0000FFFE
_080553C8: .4byte 0x02024204
_080553CC: .4byte 0x0000FFFF
_080553D0: .4byte 0x02024218
_080553D4: .4byte 0x08E0FD04
_080553D8: .4byte 0x08E0FD24
_080553DC: .4byte 0x0000024E
_080553E0: .4byte 0x08E0FD14
_080553E4: .4byte 0x08E0FD34
_080553E8: .4byte 0x0202420C
_080553EC: .4byte 0x0202424C
_080553F0: .4byte 0x0202422C
_080553F4: .4byte 0x02024248

	THUMB_FUNC_START sub_80553F8
sub_80553F8: @ 0x080553F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	adds r2, r0, #0
	adds r2, #0x86
	movs r1, #0
	strb r1, [r2]
	bl sub_8053404
	movs r0, #0
	cmp r0, r8
	beq _08055466
	ldr r5, _080554A4
	adds r7, r5, #2
	ldr r1, _080554A8
	mov sl, r1
	ldr r1, _080554AC
	mov sb, r1
_08055426:
	movs r4, #0
	adds r6, r0, #1
_0805542A:
	ldr r0, _080554B0
	lsls r1, r4, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r0, _080554B4
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7]
	bl sub_804EEE0
	ldrh r2, [r5]
	rsbs r2, r2, #0
	mov r0, sl
	strh r2, [r0]
	ldrh r1, [r7]
	movs r0, #8
	subs r1, r0, r1
	mov r0, sb
	strh r1, [r0]
	ldr r0, _080554B8
	strh r2, [r0]
	ldr r0, _080554BC
	strh r1, [r0]
	adds r4, #1
	cmp r4, #9
	ble _0805542A
	adds r0, r6, #0
	cmp r0, r8
	bne _08055426
_08055466:
	ldr r4, _080554C0
	movs r1, #0x93
	lsls r1, r1, #2
	adds r5, r4, r1
	movs r0, #0
	strh r0, [r5]
	adds r1, #2
	adds r4, r4, r1
	strh r0, [r4]
	bl sub_804EEE0
	ldr r0, _080554A8
	ldrh r2, [r5]
	rsbs r2, r2, #0
	strh r2, [r0]
	ldr r3, _080554AC
	ldrh r0, [r4]
	movs r1, #8
	subs r1, r1, r0
	strh r1, [r3]
	ldr r0, _080554B8
	strh r2, [r0]
	ldr r0, _080554BC
	strh r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080554A4: .4byte 0x020244BC
_080554A8: .4byte 0x0202420C
_080554AC: .4byte 0x0202424C
_080554B0: .4byte 0x08E0FCEE
_080554B4: .4byte 0x08E0FCDA
_080554B8: .4byte 0x0202422C
_080554BC: .4byte 0x02024248
_080554C0: .4byte 0x02024270

	THUMB_FUNC_START sub_80554C4
sub_80554C4: @ 0x080554C4
	ldr r2, _080554E8
	movs r1, #0x91
	lsls r1, r1, #2
	adds r0, r2, r1
	movs r1, #0
	str r1, [r0]
	movs r3, #0x92
	lsls r3, r3, #2
	adds r0, r2, r3
	str r1, [r0]
	adds r3, #4
	adds r0, r2, r3
	strh r1, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	bx lr
	.align 2, 0
_080554E8: .4byte 0x02024270

	THUMB_FUNC_START sub_80554EC
sub_80554EC: @ 0x080554EC
	movs r1, #0
	ldr r3, _08055504
	movs r2, #0
_080554F2:
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x31
	bls _080554F2
	bx lr
	.align 2, 0
_08055504: .4byte 0x020244D0

	THUMB_FUNC_START sub_8055508
sub_8055508: @ 0x08055508
	adds r3, r0, #0
	ldr r0, _08055528
	cmp r3, r0
	bhi _08055526
	ldr r0, _0805552C
	lsrs r2, r3, #3
	adds r2, r2, r0
	ldr r1, _08055530
	movs r0, #7
	ands r0, r3
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0]
	orrs r1, r0
	strb r1, [r2]
_08055526:
	bx lr
	.align 2, 0
_08055528: .4byte 0x0000018F
_0805552C: .4byte 0x020244D0
_08055530: .4byte 0x08E0FD44

	THUMB_FUNC_START sub_8055534
sub_8055534: @ 0x08055534
	ldr r1, _0805554C
	lsrs r2, r0, #3
	adds r2, r2, r1
	ldr r3, _08055550
	movs r1, #7
	ands r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_0805554C: .4byte 0x020244D0
_08055550: .4byte 0x08E0FD44

	THUMB_FUNC_START sub_8055554
sub_8055554: @ 0x08055554
	ldr r1, _08055570
	lsrs r2, r0, #3
	adds r2, r2, r1
	ldr r3, _08055574
	movs r1, #7
	ands r1, r0
	adds r1, r1, r3
	ldrb r2, [r2]
	ldrb r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _08055578
	movs r0, #0
	b _0805557A
	.align 2, 0
_08055570: .4byte 0x020244D0
_08055574: .4byte 0x08E0FD44
_08055578:
	movs r0, #1
_0805557A:
	bx lr
	.byte 0x30, 0xB5, 0x05, 0x1C
	.byte 0x0C, 0x04, 0xE0, 0x20, 0xC0, 0x02, 0x20, 0x40, 0x00, 0x0C, 0xE9, 0xF7, 0x5F, 0xFD, 0xE4, 0x0C
	.byte 0x2D, 0x19, 0x29, 0x78, 0x01, 0x40, 0x00, 0x29, 0x00, 0xD0, 0x01, 0x21, 0x08, 0x1C, 0x30, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_80555A4
sub_80555A4: @ 0x080555A4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _080555D0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080555C6
	movs r1, #1
_080555C6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080555D0: .4byte 0x081060A8

	THUMB_FUNC_START sub_80555D4
sub_80555D4: @ 0x080555D4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055600
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080555F6
	movs r1, #1
_080555F6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055600: .4byte 0x0810610D

	THUMB_FUNC_START sub_8055604
sub_8055604: @ 0x08055604
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055630
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055626
	movs r1, #1
_08055626:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055630: .4byte 0x08106172

	THUMB_FUNC_START sub_8055634
sub_8055634: @ 0x08055634
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055660
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055656
	movs r1, #1
_08055656:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055660: .4byte 0x081061D7

	THUMB_FUNC_START sub_8055664
sub_8055664: @ 0x08055664
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055690
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055686
	movs r1, #1
_08055686:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055690: .4byte 0x0810623C

	THUMB_FUNC_START sub_8055694
sub_8055694: @ 0x08055694
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _080556C0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080556B6
	movs r1, #1
_080556B6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080556C0: .4byte 0x081062A1

	THUMB_FUNC_START sub_80556C4
sub_80556C4: @ 0x080556C4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _080556F0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080556E6
	movs r1, #1
_080556E6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080556F0: .4byte 0x08106306

	THUMB_FUNC_START sub_80556F4
sub_80556F4: @ 0x080556F4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055720
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055716
	movs r1, #1
_08055716:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055720: .4byte 0x0810636B

	THUMB_FUNC_START sub_8055724
sub_8055724: @ 0x08055724
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055750
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055746
	movs r1, #1
_08055746:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055750: .4byte 0x081063D0

	THUMB_FUNC_START sub_8055754
sub_8055754: @ 0x08055754
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055780
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055776
	movs r1, #1
_08055776:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055780: .4byte 0x08106435

	THUMB_FUNC_START sub_8055784
sub_8055784: @ 0x08055784
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _080557B0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080557A6
	movs r1, #1
_080557A6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080557B0: .4byte 0x0810649A

	THUMB_FUNC_START sub_80557B4
sub_80557B4: @ 0x080557B4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _080557E0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080557D6
	movs r1, #1
_080557D6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080557E0: .4byte 0x081064FF

	THUMB_FUNC_START sub_80557E4
sub_80557E4: @ 0x080557E4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055810
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055806
	movs r1, #1
_08055806:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055810: .4byte 0x08106564

	THUMB_FUNC_START sub_8055814
sub_8055814: @ 0x08055814
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055840
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055836
	movs r1, #1
_08055836:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055840: .4byte 0x081065C9

	THUMB_FUNC_START sub_8055844
sub_8055844: @ 0x08055844
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055870
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055866
	movs r1, #1
_08055866:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055870: .4byte 0x0810662E

	THUMB_FUNC_START sub_8055874
sub_8055874: @ 0x08055874
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _080558A0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055896
	movs r1, #1
_08055896:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080558A0: .4byte 0x08106693

	THUMB_FUNC_START sub_80558A4
sub_80558A4: @ 0x080558A4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _080558D0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080558C6
	movs r1, #1
_080558C6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080558D0: .4byte 0x081066F8

	THUMB_FUNC_START sub_80558D4
sub_80558D4: @ 0x080558D4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055900
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080558F6
	movs r1, #1
_080558F6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055900: .4byte 0x0810675D

	THUMB_FUNC_START sub_8055904
sub_8055904: @ 0x08055904
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055930
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055926
	movs r1, #1
_08055926:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055930: .4byte 0x081067C2

	THUMB_FUNC_START sub_8055934
sub_8055934: @ 0x08055934
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055960
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055956
	movs r1, #1
_08055956:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055960: .4byte 0x08106827

	THUMB_FUNC_START sub_8055964
sub_8055964: @ 0x08055964
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055990
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055986
	movs r1, #1
_08055986:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055990: .4byte 0x0810688C

	THUMB_FUNC_START sub_8055994
sub_8055994: @ 0x08055994
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _080559C0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080559B6
	movs r1, #1
_080559B6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080559C0: .4byte 0x081068F1

	THUMB_FUNC_START sub_80559C4
sub_80559C4: @ 0x080559C4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _080559F0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080559E6
	movs r1, #1
_080559E6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080559F0: .4byte 0x08106956

	THUMB_FUNC_START sub_80559F4
sub_80559F4: @ 0x080559F4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055A20
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055A16
	movs r1, #1
_08055A16:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055A20: .4byte 0x081069BB

	THUMB_FUNC_START sub_8055A24
sub_8055A24: @ 0x08055A24
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055A50
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055A46
	movs r1, #1
_08055A46:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055A50: .4byte 0x08106A20

	THUMB_FUNC_START sub_8055A54
sub_8055A54: @ 0x08055A54
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055A80
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055A76
	movs r1, #1
_08055A76:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055A80: .4byte 0x08106A85

	THUMB_FUNC_START sub_8055A84
sub_8055A84: @ 0x08055A84
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055AB0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055AA6
	movs r1, #1
_08055AA6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055AB0: .4byte 0x08106AEA

	THUMB_FUNC_START sub_8055AB4
sub_8055AB4: @ 0x08055AB4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055AE0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055AD6
	movs r1, #1
_08055AD6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055AE0: .4byte 0x08106B4F

	THUMB_FUNC_START sub_8055AE4
sub_8055AE4: @ 0x08055AE4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055B10
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055B06
	movs r1, #1
_08055B06:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055B10: .4byte 0x08106BB4

	THUMB_FUNC_START sub_8055B14
sub_8055B14: @ 0x08055B14
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055B40
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055B36
	movs r1, #1
_08055B36:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055B40: .4byte 0x08106C19

	THUMB_FUNC_START sub_8055B44
sub_8055B44: @ 0x08055B44
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055B70
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055B66
	movs r1, #1
_08055B66:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055B70: .4byte 0x08106C7E

	THUMB_FUNC_START sub_8055B74
sub_8055B74: @ 0x08055B74
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055BA0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055B96
	movs r1, #1
_08055B96:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055BA0: .4byte 0x08106CE3

	THUMB_FUNC_START sub_8055BA4
sub_8055BA4: @ 0x08055BA4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055BD0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055BC6
	movs r1, #1
_08055BC6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055BD0: .4byte 0x08106D48

	THUMB_FUNC_START sub_8055BD4
sub_8055BD4: @ 0x08055BD4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r5, _08055C00
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r4
	lsrs r0, r0, #0x10
	bl sub_803F04C
	lsrs r4, r4, #0x13
	adds r4, r4, r5
	ldrb r1, [r4]
	ands r1, r0
	cmp r1, #0
	beq _08055BF6
	movs r1, #1
_08055BF6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08055C00: .4byte 0x08106DAD

	THUMB_FUNC_START sub_8055C04
sub_8055C04: @ 0x08055C04
	push {r4, r5, lr}
	ldr r1, _08055C24
	movs r0, #0
	strh r0, [r1]
	adds r5, r1, #0
	adds r4, r5, #0
_08055C10:
	ldrh r0, [r4]
	bl sub_8055ED4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08055C28
	cmp r0, #1
	bne _08055C2E
	b _08055C4C
	.align 2, 0
_08055C24: .4byte 0x02024510
_08055C28:
	movs r0, #0xb
	strb r0, [r5, #2]
	b _08055C5C
_08055C2E:
	ldrh r1, [r4]
	lsls r1, r1, #3
	ldr r0, _08055C48
	adds r1, r1, r0
	adds r0, r4, #3
	bl sub_8055F1C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _08055C4C
	strb r0, [r4, #2]
	b _08055C5C
	.align 2, 0
_08055C48: .4byte 0x08E0FD4C
_08055C4C:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldr r5, _08055C58
	b _08055C10
	.align 2, 0
_08055C58: .4byte 0x02024510
_08055C5C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8055C64
sub_8055C64: @ 0x08055C64
	push {r4, lr}
	bl sub_80255A8
	movs r2, #0
	ldr r4, _08055CA4
	ldr r3, _08055CA8
_08055C70:
	adds r0, r2, r4
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #7
	ble _08055C70
	bl sub_8055C04
	ldr r4, _08055CAC
	ldrb r0, [r4, #2]
	cmp r0, #0xa
	bne _08055CB0
	ldrh r0, [r4]
	bl SetCardInfo
	movs r0, #0xc9
	bl sub_8034F60
	bl sub_801F6B0
	ldrh r0, [r4]
	movs r1, #1
	bl sub_802D90C
	b _08055CF8
	.align 2, 0
_08055CA4: .4byte 0x02024513
_08055CA8: .4byte 0x02021DC0
_08055CAC: .4byte 0x02024510
_08055CB0:
	bl sub_8055D04
	ldrb r0, [r4, #2]
	cmp r0, #0xa
	bne _08055CDA
	ldrh r0, [r4]
	bl sub_8056014
	cmp r0, #0
	bne _08055CD2
	ldrh r0, [r4]
	bl sub_8055FEC
	ldrh r0, [r4]
	bl sub_08055F64
	b _08055CF8
_08055CD2:
	movs r0, #0x39
	bl sub_8034F60
	b _08055CF8
_08055CDA:
	bl sub_8055DEC
	ldrb r0, [r4, #2]
	cmp r0, #0xa
	bne _08055CF2
	ldrh r0, [r4]
	bl sub_8056048
	ldrh r0, [r4]
	bl sub_8055F68
	b _08055CF8
_08055CF2:
	movs r0, #0x39
	bl sub_8034F60
_08055CF8:
	bl sub_80258E8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8055D04
sub_8055D04: @ 0x08055D04
	push {r4, r5, r6, r7, lr}
	ldr r1, _08055D28
	movs r0, #0
	strh r0, [r1]
	adds r5, r1, #0
	adds r7, r5, #0
_08055D10:
	ldrh r0, [r5]
	bl sub_8055D78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08055D2C
	cmp r0, #1
	bne _08055D32
	ldr r7, _08055D28
	b _08055D68
	.align 2, 0
_08055D28: .4byte 0x02024510
_08055D2C:
	movs r0, #0xb
	strb r0, [r7, #2]
	b _08055D70
_08055D32:
	ldrh r0, [r5]
	lsls r0, r0, #3
	ldr r1, _08055D64
	adds r4, r5, #3
	adds r2, r0, r1
	movs r6, #0xa
	movs r3, #0
	adds r7, r5, #0
_08055D42:
	ldrb r1, [r4]
	ldrb r0, [r2]
	adds r2, #1
	adds r4, #1
	cmp r1, r0
	beq _08055D50
	movs r6, #0xb
_08055D50:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08055D42
	adds r0, r6, #0
	cmp r0, #0xa
	bne _08055D68
	strb r0, [r7, #2]
	b _08055D70
	.align 2, 0
_08055D64: .4byte 0x08E1165C
_08055D68:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	b _08055D10
_08055D70:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8055D78
sub_8055D78: @ 0x08055D78
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r6, #3
	ldr r1, _08055DAC
	ldr r4, _08055DB0
	adds r2, r0, r1
	movs r5, #0xa
	movs r3, #0
	adds r7, r1, #0
_08055D8C:
	ldrb r1, [r4]
	ldrb r0, [r2]
	adds r2, #1
	adds r4, #1
	cmp r1, r0
	beq _08055D9A
	movs r5, #0xb
_08055D9A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08055D8C
	cmp r5, #0xa
	bne _08055DB4
	movs r0, #0
	b _08055DE6
	.align 2, 0
_08055DAC: .4byte 0x08E1165C
_08055DB0: .4byte 0x08E1167C
_08055DB4:
	lsls r0, r6, #3
	ldr r4, _08055DE0
	adds r2, r0, r7
	movs r5, #0xa
	movs r3, #0
_08055DBE:
	ldrb r1, [r4]
	ldrb r0, [r2]
	adds r2, #1
	adds r4, #1
	cmp r1, r0
	beq _08055DCC
	movs r5, #0xb
_08055DCC:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08055DBE
	cmp r5, #0xa
	beq _08055DE4
	movs r0, #2
	b _08055DE6
	.align 2, 0
_08055DE0: .4byte 0x08E11684
_08055DE4:
	movs r0, #1
_08055DE6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8055DEC
sub_8055DEC: @ 0x08055DEC
	push {r4, r5, r6, r7, lr}
	ldr r1, _08055E10
	movs r0, #0
	strh r0, [r1]
	adds r5, r1, #0
	adds r7, r5, #0
_08055DF8:
	ldrh r0, [r5]
	bl sub_8055E60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08055E14
	cmp r0, #1
	bne _08055E1A
	ldr r7, _08055E10
	b _08055E50
	.align 2, 0
_08055E10: .4byte 0x02024510
_08055E14:
	movs r0, #0xb
	strb r0, [r7, #2]
	b _08055E58
_08055E1A:
	ldrh r0, [r5]
	lsls r0, r0, #3
	ldr r1, _08055E4C
	adds r4, r5, #3
	adds r2, r0, r1
	movs r6, #0xa
	movs r3, #0
	adds r7, r5, #0
_08055E2A:
	ldrb r1, [r4]
	ldrb r0, [r2]
	adds r2, #1
	adds r4, #1
	cmp r1, r0
	beq _08055E38
	movs r6, #0xb
_08055E38:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08055E2A
	adds r0, r6, #0
	cmp r0, #0xa
	bne _08055E50
	strb r0, [r7, #2]
	b _08055E58
	.align 2, 0
_08055E4C: .4byte 0x08E11664
_08055E50:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	b _08055DF8
_08055E58:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8055E60
sub_8055E60: @ 0x08055E60
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r6, #3
	ldr r1, _08055E94
	ldr r4, _08055E98
	adds r2, r0, r1
	movs r5, #0xa
	movs r3, #0
	adds r7, r1, #0
_08055E74:
	ldrb r1, [r4]
	ldrb r0, [r2]
	adds r2, #1
	adds r4, #1
	cmp r1, r0
	beq _08055E82
	movs r5, #0xb
_08055E82:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08055E74
	cmp r5, #0xa
	bne _08055E9C
	movs r0, #0
	b _08055ECE
	.align 2, 0
_08055E94: .4byte 0x08E11664
_08055E98: .4byte 0x08E1167C
_08055E9C:
	lsls r0, r6, #3
	ldr r4, _08055EC8
	adds r2, r0, r7
	movs r5, #0xa
	movs r3, #0
_08055EA6:
	ldrb r1, [r4]
	ldrb r0, [r2]
	adds r2, #1
	adds r4, #1
	cmp r1, r0
	beq _08055EB4
	movs r5, #0xb
_08055EB4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08055EA6
	cmp r5, #0xa
	beq _08055ECC
	movs r0, #2
	b _08055ECE
	.align 2, 0
_08055EC8: .4byte 0x08E11684
_08055ECC:
	movs r0, #1
_08055ECE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8055ED4
sub_8055ED4: @ 0x08055ED4
	push {r4, lr}
	lsls r0, r0, #0x10
	ldr r2, _08055EF4
	lsrs r0, r0, #0xd
	ldr r1, _08055EF8
	adds r4, r0, r1
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_8055F1C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _08055EFC
	movs r0, #0
	b _08055F16
	.align 2, 0
_08055EF4: .4byte 0x08E1167C
_08055EF8: .4byte 0x08E0FD4C
_08055EFC:
	ldr r0, _08055F10
	adds r1, r4, #0
	bl sub_8055F1C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	beq _08055F14
	movs r0, #2
	b _08055F16
	.align 2, 0
_08055F10: .4byte 0x08E11684
_08055F14:
	movs r0, #1
_08055F16:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8055F1C
sub_8055F1C: @ 0x08055F1C
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r5, #0xa
	movs r4, #0
_08055F26:
	ldrb r1, [r3]
	ldrb r0, [r2]
	adds r2, #1
	adds r3, #1
	cmp r1, r0
	beq _08055F34
	movs r5, #0xb
_08055F34:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08055F26
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x00, 0x21, 0x05, 0x4B, 0x00, 0x22, 0xC8, 0x18
	.byte 0x02, 0x70, 0x48, 0x1C, 0x00, 0x06, 0x01, 0x0E, 0x07, 0x29, 0xF8, 0xD9, 0x70, 0x47, 0x00, 0x00
	.byte 0x13, 0x45, 0x02, 0x02

	THUMB_FUNC_START sub_08055F64
sub_08055F64: @ 0x08055F64
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8055F68
sub_8055F68: @ 0x08055F68
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08055F78
	cmp r0, #1
	beq _08055F80
	b _08055F86
_08055F78:
	movs r0, #0xc9
	bl sub_8034F60
	b _08055F86
_08055F80:
	movs r0, #0xc9
	bl sub_8034F60
_08055F86:
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0x21, 0x05, 0x4B
	.byte 0x00, 0x22, 0xC8, 0x18, 0x02, 0x70, 0x48, 0x1C, 0x00, 0x06, 0x01, 0x0E, 0x64, 0x29, 0xF8, 0xD9
	.byte 0x70, 0x47, 0x00, 0x00, 0x20, 0x45, 0x02, 0x02, 0x10, 0xB5, 0x04, 0x1C, 0x24, 0x04, 0x20, 0x0C
	.byte 0x07, 0x21, 0x08, 0x40, 0xE9, 0xF7, 0x4A, 0xF8, 0x04, 0x49, 0xE4, 0x0C, 0x64, 0x18, 0x21, 0x78
	.byte 0x08, 0x43, 0x20, 0x70, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x20, 0x45, 0x02, 0x02

	THUMB_FUNC_START sub_8055FD0
sub_8055FD0: @ 0x08055FD0
	movs r1, #0
	ldr r3, _08055FE8
	movs r2, #0
_08055FD6:
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bls _08055FD6
	bx lr
	.align 2, 0
_08055FE8: .4byte 0x0202458C

	THUMB_FUNC_START sub_8055FEC
sub_8055FEC: @ 0x08055FEC
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	movs r1, #7
	ands r0, r1
	bl sub_803F04C
	ldr r1, _08056010
	lsrs r4, r4, #0x13
	adds r4, r4, r1
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056010: .4byte 0x0202458C

	THUMB_FUNC_START sub_8056014
sub_8056014: @ 0x08056014
	push {r4, lr}
	lsls r4, r0, #0x10
	lsrs r1, r4, #0x10
	cmp r1, #9
	bls _08056022
	movs r0, #0
	b _0805603A
_08056022:
	movs r0, #7
	ands r0, r1
	bl sub_803F04C
	ldr r2, _08056040
	lsrs r1, r4, #0x13
	adds r1, r1, r2
	ldrb r1, [r1]
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_0805603A:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08056040: .4byte 0x0202458C
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8056048
sub_8056048: @ 0x08056048
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	movs r1, #7
	ands r0, r1
	bl sub_803F04C
	ldr r1, _0805606C
	lsrs r4, r4, #0x13
	adds r4, r4, r1
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805606C: .4byte 0x02024588

	THUMB_FUNC_START sub_8056070
sub_8056070: @ 0x08056070
	push {r4, lr}
	lsls r4, r0, #0x10
	lsrs r1, r4, #0x10
	cmp r1, #7
	bls _0805607E
	movs r0, #0
	b _08056096
_0805607E:
	movs r0, #7
	ands r0, r1
	bl sub_803F04C
	ldr r2, _0805609C
	lsrs r1, r4, #0x13
	adds r1, r1, r2
	ldrb r1, [r1]
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08056096:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805609C: .4byte 0x02024588
	.byte 0xF0, 0xB5, 0x00, 0x26, 0x06, 0x4D, 0x07, 0x4C, 0x07, 0x48, 0x00, 0x88, 0x10, 0x28, 0x31, 0xD0
	.byte 0x10, 0x28, 0x0B, 0xDC, 0x01, 0x28, 0x37, 0xD0, 0x02, 0x28, 0x38, 0xD0, 0x39, 0xE0, 0x00, 0x00
	.byte 0x90, 0x45, 0x02, 0x02, 0x13, 0x45, 0x02, 0x02, 0xF8, 0x0D, 0x02, 0x02, 0x40, 0x28, 0x07, 0xD0
	.byte 0x40, 0x28, 0x02, 0xDC, 0x20, 0x28, 0x13, 0xD0, 0x2B, 0xE0, 0x80, 0x28, 0x08, 0xD0, 0x28, 0xE0
	.byte 0x28, 0x78, 0x00, 0x19, 0xFF, 0x21, 0x01, 0x70, 0x29, 0x78, 0x09, 0x19, 0x08, 0x78, 0x15, 0xE0
	.byte 0x28, 0x78, 0x00, 0x19, 0x0A, 0x21, 0x01, 0x70, 0x29, 0x78, 0x09, 0x19, 0x08, 0x78, 0x03, 0xE0
	.byte 0x03, 0x49, 0x08, 0x78, 0x00, 0x28, 0x14, 0xD0, 0x01, 0x38, 0x08, 0x70, 0x11, 0xE0, 0x00, 0x00
	.byte 0x90, 0x45, 0x02, 0x02, 0x03, 0x49, 0x08, 0x78, 0x07, 0x28, 0x0A, 0xD0, 0x01, 0x30, 0x08, 0x70
	.byte 0x07, 0xE0, 0x00, 0x00, 0x90, 0x45, 0x02, 0x02, 0x01, 0x26, 0x01, 0x27, 0x01, 0xE0, 0x01, 0x26
	.byte 0x00, 0x27, 0xB2, 0xF7, 0x75, 0xF8, 0x00, 0x2E, 0xB6, 0xD0, 0x38, 0x1C, 0xF0, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0x06, 0x4A, 0x07, 0x4B, 0x18, 0x78, 0x03, 0x32, 0x80, 0x18, 0xFF, 0x21
	.byte 0x01, 0x70, 0x19, 0x78, 0x89, 0x18, 0x08, 0x78, 0x01, 0x30, 0x08, 0x70, 0x70, 0x47, 0x00, 0x00
	.byte 0x10, 0x45, 0x02, 0x02, 0x90, 0x45, 0x02, 0x02, 0x06, 0x4A, 0x07, 0x4B, 0x18, 0x78, 0x03, 0x32
	.byte 0x80, 0x18, 0x0A, 0x21, 0x01, 0x70, 0x19, 0x78, 0x89, 0x18, 0x08, 0x78, 0x01, 0x38, 0x08, 0x70
	.byte 0x70, 0x47, 0x00, 0x00, 0x10, 0x45, 0x02, 0x02, 0x90, 0x45, 0x02, 0x02, 0x03, 0x49, 0x08, 0x78
	.byte 0x00, 0x28, 0x01, 0xD0, 0x01, 0x38, 0x08, 0x70, 0x70, 0x47, 0x00, 0x00, 0x90, 0x45, 0x02, 0x02
	.byte 0x03, 0x49, 0x08, 0x78, 0x07, 0x28, 0x01, 0xD0, 0x01, 0x30, 0x08, 0x70, 0x70, 0x47, 0x00, 0x00
	.byte 0x90, 0x45, 0x02, 0x02

	THUMB_FUNC_START sub_80561B4
sub_80561B4: @ 0x080561B4
	push {r4, r5, r6, lr}
	movs r4, #0
	movs r5, #0
_080561BA:
	lsls r0, r4, #0x19
	lsrs r4, r0, #0x18
	bl sub_8056230
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _080561BA
	adds r6, r4, #0
	movs r4, #0
	movs r5, #0
_080561D8:
	lsls r0, r4, #0x19
	lsrs r4, r0, #0x18
	bl sub_8056230
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _080561D8
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x10
	orrs r0, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80561FC
sub_80561FC: @ 0x080561FC
	ldr r1, _08056204
	movs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08056204: .4byte 0x02024594

	THUMB_FUNC_START sub_8056208
sub_8056208: @ 0x08056208
	push {r4, r5, lr}
	movs r4, #0
	movs r5, #0
_0805620E:
	lsls r0, r4, #0x19
	lsrs r4, r0, #0x18
	bl sub_8056230
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0805620E
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8056230
sub_8056230: @ 0x08056230
	ldr r2, _08056240
	ldr r1, [r2]
	cmp r1, #0
	blt _08056244
	lsls r0, r1, #1
	str r0, [r2]
	movs r0, #0
	b _08056254
	.align 2, 0
_08056240: .4byte 0x02024594
_08056244:
	movs r0, #0x80
	lsls r0, r0, #9
	eors r1, r0
	lsls r0, r1, #1
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	movs r0, #1
_08056254:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8056258
sub_8056258: @ 0x08056258
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r6, r1
	bne _0805626A
	adds r0, r6, #0
	b _08056296
_0805626A:
	movs r4, #0
	movs r5, #0
	subs r7, r1, r6
_08056270:
	lsls r0, r4, #0x19
	lsrs r4, r0, #0x18
	bl sub_8056230
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08056270
	adds r0, r4, #0
	adds r1, r7, #1
	bl sub_805B004
	adds r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08056296:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_805629C
sub_805629C: @ 0x0805629C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_80561B4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r4, r4, r5
	adds r4, #1
	adds r1, r4, #0
	bl sub_805B004
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80562CC
sub_80562CC: @ 0x080562CC
	ldr r3, _080562D8
	ldr r2, _080562DC
	ldr r1, [r2]
	str r1, [r3]
	str r0, [r2]
	bx lr
	.align 2, 0
_080562D8: .4byte 0x02024598
_080562DC: .4byte 0x02024594

	THUMB_FUNC_START sub_80562E0
sub_80562E0: @ 0x080562E0
	ldr r0, _080562EC
	ldr r1, _080562F0
	ldr r1, [r1]
	str r1, [r0]
	bx lr
	.align 2, 0
_080562EC: .4byte 0x02024594
_080562F0: .4byte 0x02024598

	THUMB_FUNC_START sub_80562F4
sub_80562F4: @ 0x080562F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov r8, r0
	ldr r5, _08056330
	ldr r4, _08056334
_08056306:
	ldr r1, _08056338
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805633C
	mov r3, r8
	lsls r0, r3, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r4
	ldrh r1, [r2]
	bl sub_80573D0
	b _0805634C
	.align 2, 0
_08056330: .4byte 0x08E116BC
_08056334: .4byte 0x02010400
_08056338: .4byte 0x02024040
_0805633C:
	mov r1, r8
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r4
	bl sub_8057474
_0805634C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bls _08056306
	movs r2, #0
	mov r8, r2
	ldr r3, _080563E0
	mov sl, r3
	ldr r0, _080563E4
	mov sb, r0
_08056366:
	mov r1, r8
	lsls r0, r1, #2
	ldr r2, _080563E8
	adds r7, r0, r2
	ldr r2, [r7]
	ldrb r1, [r2, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080563EC
	mov r6, r8
	adds r6, #5
	lsls r5, r6, #1
	add r5, sl
	ldrh r0, [r5]
	lsls r0, r0, #5
	add r0, sb
	ldrh r1, [r2]
	bl sub_80573D0
	ldrh r0, [r5]
	lsls r0, r0, #5
	add r0, sb
	ldr r1, [r7]
	ldrh r1, [r1]
	bl sub_80576EC
	ldrh r0, [r5]
	lsls r0, r0, #5
	add r0, sb
	ldr r1, [r7]
	ldrh r1, [r1]
	bl sub_80576B4
	ldrh r4, [r5]
	lsls r4, r4, #5
	add r4, sb
	ldr r0, [r7]
	bl sub_804069C
	adds r1, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_805763C
	ldrh r0, [r5]
	lsls r0, r0, #5
	add r0, sb
	ldr r1, [r7]
	bl sub_80572A8
	ldrh r0, [r5]
	lsls r0, r0, #5
	add r0, sb
	ldr r1, [r7]
	bl sub_805733C
	adds r4, r6, #0
	b _080563FE
	.align 2, 0
_080563E0: .4byte 0x08E116BC
_080563E4: .4byte 0x02010400
_080563E8: .4byte 0x02024054
_080563EC:
	mov r4, r8
	adds r4, #5
	lsls r0, r4, #1
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #5
	add r0, sb
	bl sub_8057474
_080563FE:
	mov r3, r8
	lsls r0, r3, #2
	ldr r1, _080565E0
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r0, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08056420
	lsls r0, r4, #1
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #5
	add r0, sb
	bl sub_8057620
_08056420:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bls _08056366
	movs r2, #0
	mov r8, r2
	ldr r7, _080565E4
_08056434:
	ldr r1, _080565E8
	mov r0, r8
	adds r0, #0xa
	lsls r0, r0, #1
	adds r6, r0, r1
	ldrh r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r3, _080565EC
	mov sb, r3
	mov r1, r8
	lsls r2, r1, #2
	mov r1, sb
	adds r1, #0x28
	adds r5, r2, r1
	ldr r1, [r5]
	ldrh r1, [r1]
	bl sub_80573D0
	ldr r0, [r5]
	ldrb r1, [r0, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08056470
	ldrh r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r7
	bl sub_8057620
_08056470:
	ldrh r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r1, [r5]
	ldrh r1, [r1]
	bl sub_80576B4
	ldrh r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r1, [r5]
	ldrh r1, [r1]
	bl sub_80576EC
	ldrh r4, [r6]
	lsls r4, r4, #5
	adds r4, r4, r7
	ldr r0, [r5]
	bl sub_804069C
	adds r1, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_805763C
	ldrh r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r1, [r5]
	bl sub_80572A8
	ldrh r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r1, [r5]
	bl sub_805733C
	ldr r0, [r5]
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080564D2
	ldrh r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r7
	bl sub_8057698
_080564D2:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bls _08056434
	movs r2, #0
	mov r8, r2
	ldr r6, _080565E4
	mov r7, sb
	adds r7, #0x3c
_080564EA:
	ldr r1, _080565E8
	mov r0, r8
	adds r0, #0xf
	lsls r0, r0, #1
	adds r5, r0, r1
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	mov r3, r8
	lsls r4, r3, #2
	adds r4, r4, r7
	ldr r1, [r4]
	ldrh r1, [r1]
	bl sub_80573D0
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [r4]
	ldrh r1, [r1]
	bl sub_8057718
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0805652C
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	bl sub_8057698
_0805652C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bls _080564EA
	movs r0, #0
	mov r8, r0
	ldr r6, _080565E4
_08056540:
	ldr r1, _080565E8
	mov r0, r8
	adds r0, #0x14
	lsls r0, r0, #1
	adds r5, r0, r1
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, _080565EC
	mov r3, r8
	lsls r2, r3, #2
	adds r1, #0x50
	adds r4, r2, r1
	ldr r1, [r4]
	ldrh r1, [r1]
	bl sub_80573D0
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [r4]
	ldrh r1, [r1]
	bl sub_80576B4
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [r4]
	ldrh r1, [r1]
	bl sub_80576EC
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [r4]
	bl sub_80572A8
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [r4]
	bl sub_805733C
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080565AC
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	bl sub_8057620
_080565AC:
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080565C2
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	bl sub_8057698
_080565C2:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bls _08056540
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080565E0: .4byte 0x02024054
_080565E4: .4byte 0x02010400
_080565E8: .4byte 0x08E116BC
_080565EC: .4byte 0x02024040

	THUMB_FUNC_START sub_80565F0
sub_80565F0: @ 0x080565F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov r8, r0
	movs r1, #0
_08056600:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _08056600
	movs r6, #0
_08056610:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
_08056616:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056616
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_0805662C:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _0805662C
	cmp r6, #5
	bls _08056610
	movs r0, #0
	mov ip, r0
	movs r4, #0x40
	mov r8, r4
	movs r1, #0
_0805664A:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _0805664A
	movs r6, #0
_0805665A:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08056668:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056668
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_08056680:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056680
	cmp r6, #5
	bls _0805665A
	movs r0, #0x40
	mov ip, r0
	movs r4, #0x80
	mov r8, r4
	movs r1, #0
_0805669E:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _0805669E
	movs r6, #0
_080566AE:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_080566BC:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080566BC
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_080566D4:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _080566D4
	cmp r6, #5
	bls _080566AE
	movs r0, #0x80
	mov ip, r0
	movs r1, #0
_080566EE:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _080566EE
	movs r6, #0
	mov r4, ip
	adds r5, r4, r7
_08056702:
	movs r1, #4
	adds r4, r5, #4
_08056706:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056706
	movs r1, #0
_08056718:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08056718
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _08056702
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r6, #6
	movs r5, #0x30
_08056738:
	movs r1, #4
_0805673A:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _0805673A
	movs r1, #0
	adds r4, r5, r7
_0805674C:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _0805674C
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _08056738
	movs r6, #0
	movs r5, #0xc0
_08056768:
	movs r1, #4
_0805676A:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _0805676A
	movs r1, #0
	adds r4, r5, r7
_0805677C:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _0805677C
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _08056768
	movs r4, #0x40
	mov r8, r4
	movs r6, #6
	movs r0, #0x30
	mov ip, r0
	adds r5, r7, #0
	adds r5, #0x30
_080567A2:
	movs r1, #4
	adds r4, r5, #4
_080567A6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080567A6
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_080567BE:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _080567BE
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #7
	bls _080567A2
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	movs r6, #0
	mov ip, r6
	adds r5, r7, #0
	adds r5, #0xc0
_080567E8:
	movs r1, #4
	adds r4, r5, #4
_080567EC:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080567EC
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056804:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056804
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #5
	bls _080567E8
	movs r0, #0x80
	mov r8, r0
	movs r6, #6
	movs r4, #0x30
	mov ip, r4
	adds r5, r7, #0
	adds r5, #0x70
_0805682E:
	movs r1, #4
	adds r4, r5, #4
_08056832:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056832
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_0805684A:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _0805684A
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #7
	bls _0805682E
	movs r4, #0xa0
	lsls r4, r4, #1
	mov r8, r4
	movs r6, #0
	mov ip, r6
	adds r0, #0xf8
	adds r5, r7, r0
_08056874:
	movs r1, #4
	adds r4, r5, #4
_08056878:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056878
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056890:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056890
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #5
	bls _08056874
	movs r6, #6
	adds r5, r7, #0
	adds r5, #0xb0
_080568B2:
	movs r1, #4
	adds r4, r5, #4
_080568B6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080568B6
	movs r1, #0
_080568C8:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _080568C8
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _080568B2
	movs r6, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r5, r7, r0
_080568E6:
	movs r1, #4
	adds r4, r5, #4
_080568EA:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080568EA
	movs r1, #0
_080568FC:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _080568FC
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _080568E6
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r3, r3, r4
	movs r6, #6
	movs r5, #0xf0
_0805691C:
	movs r1, #4
_0805691E:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _0805691E
	movs r1, #0
	adds r4, r5, r7
_08056930:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056930
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _0805691C
	movs r6, #0
	movs r5, #0xc0
	lsls r5, r5, #1
_0805694E:
	movs r1, #4
_08056950:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056950
	movs r1, #0
	adds r4, r5, r7
_08056962:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056962
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _0805694E
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	movs r6, #6
	movs r4, #0x30
	mov ip, r4
	adds r5, r7, #0
	adds r5, #0xf0
_0805698A:
	movs r1, #4
	adds r4, r5, #4
_0805698E:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _0805698E
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_080569A6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _080569A6
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #7
	bls _0805698A
	movs r4, #0xe0
	lsls r4, r4, #1
	mov r8, r4
	movs r6, #0
	mov ip, r6
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r5, r7, r0
_080569D2:
	movs r1, #4
	adds r4, r5, #4
_080569D6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080569D6
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_080569EE:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _080569EE
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #5
	bls _080569D2
	movs r0, #0xa0
	lsls r0, r0, #1
	mov r8, r0
	movs r6, #6
	movs r4, #0x30
	mov ip, r4
	subs r0, #0x10
	adds r5, r7, r0
_08056A1A:
	movs r1, #4
	adds r4, r5, #4
_08056A1E:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056A1E
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056A36:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056A36
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #7
	bls _08056A1A
	movs r0, #0x80
	lsls r0, r0, #2
	mov r8, r0
	movs r6, #0
	mov ip, r6
	movs r4, #0xe0
	lsls r4, r4, #1
	adds r5, r7, r4
_08056A62:
	movs r1, #4
	adds r4, r5, #4
_08056A66:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056A66
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056A7E:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056A7E
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #5
	bls _08056A62
	movs r6, #6
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r5, r7, r4
_08056AA2:
	movs r1, #4
	adds r4, r5, #4
_08056AA6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056AA6
	movs r1, #0
_08056AB8:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08056AB8
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _08056AA2
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r5, r7, r0
_08056AD6:
	movs r1, #4
	adds r4, r5, #4
_08056ADA:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056ADA
	movs r1, #0
_08056AEC:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08056AEC
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _08056AD6
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r3, r3, r4
	movs r0, #0xc0
	lsls r0, r0, #1
	mov r8, r0
	movs r6, #6
_08056B10:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
_08056B16:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056B16
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_08056B2C:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056B2C
	cmp r6, #7
	bls _08056B10
	movs r1, #0
_08056B42:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _08056B42
	movs r0, #0xc0
	lsls r0, r0, #1
	mov ip, r0
	movs r4, #0xe0
	lsls r4, r4, #1
	mov r8, r4
	movs r6, #6
_08056B5E:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08056B6C:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056B6C
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_08056B84:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056B84
	cmp r6, #7
	bls _08056B5E
	movs r1, #0
_08056B9A:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _08056B9A
	movs r0, #0xe0
	lsls r0, r0, #1
	mov ip, r0
	movs r4, #0x80
	lsls r4, r4, #2
	mov r8, r4
	movs r6, #6
_08056BB6:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08056BC4:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056BC4
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_08056BDC:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056BDC
	cmp r6, #7
	bls _08056BB6
	movs r1, #0
_08056BF2:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _08056BF2
	movs r0, #0x80
	lsls r0, r0, #2
	mov ip, r0
	movs r6, #6
_08056C08:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08056C16:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056C16
	movs r1, #0
_08056C28:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08056C28
	cmp r6, #7
	bls _08056C08
	movs r1, #0
_08056C3C:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _08056C3C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8056C54
sub_8056C54: @ 0x08056C54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov r8, r0
	movs r1, #0
_08056C64:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _08056C64
	movs r6, #0
_08056C74:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
_08056C7A:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056C7A
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_08056C90:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056C90
	cmp r6, #5
	bls _08056C74
	movs r0, #0
	mov ip, r0
	movs r4, #0x40
	mov r8, r4
	movs r1, #0
_08056CAE:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _08056CAE
	movs r6, #0
_08056CBE:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08056CCC:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056CCC
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_08056CE4:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056CE4
	cmp r6, #5
	bls _08056CBE
	movs r0, #0x40
	mov ip, r0
	movs r4, #0x80
	mov r8, r4
	movs r1, #0
_08056D02:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _08056D02
	movs r6, #0
_08056D12:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08056D20:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056D20
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_08056D38:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056D38
	cmp r6, #5
	bls _08056D12
	movs r0, #0x80
	mov ip, r0
	movs r1, #0
_08056D52:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _08056D52
	movs r6, #0
	mov r4, ip
	adds r5, r4, r7
_08056D66:
	movs r1, #4
	adds r4, r5, #4
_08056D6A:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056D6A
	movs r1, #0
_08056D7C:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08056D7C
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _08056D66
	movs r6, #6
	movs r5, #0x30
_08056D96:
	movs r1, #4
_08056D98:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056D98
	movs r1, #0
	adds r4, r5, r7
_08056DAA:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056DAA
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _08056D96
	movs r6, #0
	movs r5, #0xc0
_08056DC6:
	movs r1, #4
_08056DC8:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056DC8
	movs r1, #0
	adds r4, r5, r7
_08056DDA:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056DDA
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _08056DC6
	movs r0, #0x40
	mov r8, r0
	movs r6, #6
	movs r4, #0x30
	mov ip, r4
	adds r5, r7, #0
	adds r5, #0x30
_08056E00:
	movs r1, #4
	adds r4, r5, #4
_08056E04:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056E04
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056E1C:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056E1C
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #7
	bls _08056E00
	movs r4, #0x80
	lsls r4, r4, #1
	mov r8, r4
	movs r6, #0
	mov ip, r6
	adds r5, r7, #0
	adds r5, #0xc0
_08056E46:
	movs r1, #4
	adds r4, r5, #4
_08056E4A:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056E4A
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056E62:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056E62
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #5
	bls _08056E46
	movs r4, #0x80
	mov r8, r4
	movs r6, #6
	movs r0, #0x30
	mov ip, r0
	adds r5, r7, #0
	adds r5, #0x70
_08056E8C:
	movs r1, #4
	adds r4, r5, #4
_08056E90:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056E90
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056EA8:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056EA8
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #7
	bls _08056E8C
	movs r0, #0xa0
	lsls r0, r0, #1
	mov r8, r0
	movs r6, #0
	mov ip, r6
	adds r4, #0xf8
	adds r5, r7, r4
_08056ED2:
	movs r1, #4
	adds r4, r5, #4
_08056ED6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056ED6
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056EEE:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056EEE
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #5
	bls _08056ED2
	movs r6, #6
	adds r5, r7, #0
	adds r5, #0xb0
_08056F10:
	movs r1, #4
	adds r4, r5, #4
_08056F14:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056F14
	movs r1, #0
_08056F26:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08056F26
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _08056F10
	movs r6, #0
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r5, r7, r4
_08056F44:
	movs r1, #4
	adds r4, r5, #4
_08056F48:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056F48
	movs r1, #0
_08056F5A:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08056F5A
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _08056F44
	movs r6, #6
	movs r5, #0xf0
_08056F74:
	movs r1, #4
_08056F76:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056F76
	movs r1, #0
	adds r4, r5, r7
_08056F88:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056F88
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _08056F74
	movs r6, #0
	movs r5, #0xc0
	lsls r5, r5, #1
_08056FA6:
	movs r1, #4
_08056FA8:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056FA8
	movs r1, #0
	adds r4, r5, r7
_08056FBA:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056FBA
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _08056FA6
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	movs r6, #6
	movs r4, #0x30
	mov ip, r4
	adds r5, r7, #0
	adds r5, #0xf0
_08056FE2:
	movs r1, #4
	adds r4, r5, #4
_08056FE6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056FE6
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056FFE:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056FFE
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #7
	bls _08056FE2
	movs r4, #0xe0
	lsls r4, r4, #1
	mov r8, r4
	movs r6, #0
	mov ip, r6
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r5, r7, r0
_0805702A:
	movs r1, #4
	adds r4, r5, #4
_0805702E:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _0805702E
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08057046:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08057046
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #5
	bls _0805702A
	movs r0, #0xa0
	lsls r0, r0, #1
	mov r8, r0
	movs r6, #6
	movs r4, #0x30
	mov ip, r4
	subs r0, #0x10
	adds r5, r7, r0
_08057072:
	movs r1, #4
	adds r4, r5, #4
_08057076:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08057076
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_0805708E:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _0805708E
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #7
	bls _08057072
	movs r0, #0x80
	lsls r0, r0, #2
	mov r8, r0
	movs r6, #0
	mov ip, r6
	movs r4, #0xe0
	lsls r4, r4, #1
	adds r5, r7, r4
_080570BA:
	movs r1, #4
	adds r4, r5, #4
_080570BE:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080570BE
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_080570D6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _080570D6
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #5
	bls _080570BA
	movs r6, #6
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r5, r7, r4
_080570FA:
	movs r1, #4
	adds r4, r5, #4
_080570FE:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080570FE
	movs r1, #0
_08057110:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08057110
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _080570FA
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r5, r7, r0
_0805712E:
	movs r1, #4
	adds r4, r5, #4
_08057132:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08057132
	movs r1, #0
_08057144:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08057144
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _0805712E
	movs r4, #0xc0
	lsls r4, r4, #1
	mov r8, r4
	movs r6, #6
_08057162:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
_08057168:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08057168
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_0805717E:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _0805717E
	cmp r6, #7
	bls _08057162
	movs r1, #0
_08057194:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _08057194
	movs r0, #0xc0
	lsls r0, r0, #1
	mov ip, r0
	movs r4, #0xe0
	lsls r4, r4, #1
	mov r8, r4
	movs r6, #6
_080571B0:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_080571BE:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080571BE
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_080571D6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _080571D6
	cmp r6, #7
	bls _080571B0
	movs r1, #0
_080571EC:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _080571EC
	movs r0, #0xe0
	lsls r0, r0, #1
	mov ip, r0
	movs r4, #0x80
	lsls r4, r4, #2
	mov r8, r4
	movs r6, #6
_08057208:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08057216:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08057216
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_0805722E:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _0805722E
	cmp r6, #7
	bls _08057208
	movs r1, #0
_08057244:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _08057244
	movs r0, #0x80
	lsls r0, r0, #2
	mov ip, r0
	movs r6, #6
_0805725A:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08057268:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08057268
	movs r1, #0
_0805727A:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _0805727A
	cmp r6, #7
	bls _0805725A
	movs r1, #0
_0805728E:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _0805728E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80572A8
sub_80572A8: @ 0x080572A8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _080572EC
	ldrh r1, [r0]
	strh r1, [r4]
	ldr r1, _080572F0
	adds r1, #0xf0
	ldrb r1, [r1]
	strb r1, [r4, #2]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r1, _080572F4
	ldrb r0, [r1, #0x1a]
	cmp r0, #2
	bne _08057328
	ldrh r0, [r1, #0x12]
	movs r1, #0x64
	bl sub_805B51C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x63
	bls _080572F8
	movs r0, #0x63
	movs r1, #0
	bl sub_800DDA0
	b _080572FE
	.align 2, 0
_080572EC: .4byte gUnk2021AC0
_080572F0: .4byte gDuel
_080572F4: .4byte gCardInfo
_080572F8:
	movs r1, #0
	bl sub_800DDA0
_080572FE:
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	ldr r4, _08057330
	ldrb r0, [r4, #3]
	lsls r0, r0, #6
	ldr r1, _08057334
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x40
	ldrb r0, [r4, #4]
	lsls r0, r0, #6
	ldr r1, _08057338
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
_08057328:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057330: .4byte 0x02021BD0
_08057334: .4byte 0x089A81DE
_08057338: .4byte 0x089A7F1E

	THUMB_FUNC_START sub_805733C
sub_805733C: @ 0x0805733C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _08057380
	ldrh r1, [r0]
	strh r1, [r4]
	ldr r1, _08057384
	adds r1, #0xf0
	ldrb r1, [r1]
	strb r1, [r4, #2]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r1, _08057388
	ldrb r0, [r1, #0x1a]
	cmp r0, #2
	bne _080573BC
	ldrh r0, [r1, #0x14]
	movs r1, #0x64
	bl sub_805B51C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x63
	bls _0805738C
	movs r0, #0x63
	movs r1, #0
	bl sub_800DDA0
	b _08057392
	.align 2, 0
_08057380: .4byte gUnk2021AC0
_08057384: .4byte gDuel
_08057388: .4byte gCardInfo
_0805738C:
	movs r1, #0
	bl sub_800DDA0
_08057392:
	movs r0, #0x88
	lsls r0, r0, #4
	adds r5, r5, r0
	ldr r4, _080573C4
	ldrb r0, [r4, #3]
	lsls r0, r0, #6
	ldr r1, _080573C8
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x40
	ldrb r0, [r4, #4]
	lsls r0, r0, #6
	ldr r1, _080573CC
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
_080573BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080573C4: .4byte 0x02021BD0
_080573C8: .4byte 0x089A875E
_080573CC: .4byte 0x089A849E

	THUMB_FUNC_START sub_80573D0
sub_80573D0: @ 0x080573D0
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	bl SetCardInfo
	ldr r0, _08057408
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	ldr r4, _0805740C
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _08057410
	ldr r0, _08057414
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80565F0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057408: .4byte 0x08E17F70
_0805740C: .4byte 0x02018800
_08057410: .4byte 0x08E17F48
_08057414: .4byte gCardInfo

	THUMB_FUNC_START sub_8057418
sub_8057418: @ 0x08057418
	push {lr}
	adds r1, r0, #0
	ldr r0, _08057428
	movs r2, #0xa0
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08057428: .4byte 0x089A781C

	THUMB_FUNC_START sub_805742C
sub_805742C: @ 0x0805742C
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	bl SetCardInfo
	ldr r0, _08057464
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	ldr r4, _08057468
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0805746C
	ldr r0, _08057470
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8056C54
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057464: .4byte 0x08E17F70
_08057468: .4byte 0x02018800
_0805746C: .4byte 0x08E17F48
_08057470: .4byte gCardInfo

	THUMB_FUNC_START sub_8057474
sub_8057474: @ 0x08057474
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	movs r1, #0
	ldr r6, _080574A4
	movs r5, #0xc0
	lsls r5, r5, #2
_08057480:
	movs r3, #0
	lsls r0, r1, #8
	adds r4, r1, #1
	adds r1, r0, r6
_08057488:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r2, #1
	adds r1, #1
	adds r3, #1
	cmp r3, #0xff
	bls _08057488
	adds r2, r2, r5
	adds r1, r4, #0
	cmp r1, #3
	bls _08057480
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080574A4: .4byte 0x0893B290

	THUMB_FUNC_START sub_80574A8
sub_80574A8: @ 0x080574A8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8057600
	mov sl, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80575E0
	adds r3, r0, #0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r5
	lsls r1, r0, #3
	mov r8, r1
	ldr r6, _08057534
	adds r1, r1, r6
	mov sb, r1
	movs r1, #0xff
	mov r2, sl
	ands r1, r2
	lsls r3, r3, #0x10
	ldr r2, _08057538
	ands r3, r2
	orrs r1, r3
	ldr r2, _0805753C
	orrs r1, r2
	mov r3, sb
	str r1, [r3]
	adds r1, r6, #4
	add r8, r1
	ldr r2, _08057540
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	ldr r1, _08057544
	ands r1, r2
	movs r3, #0x80
	lsls r3, r3, #4
	adds r2, r3, #0
	orrs r1, r2
	mov r2, r8
	strh r1, [r2]
	adds r0, #0x66
	lsls r0, r0, #3
	ldr r3, _08057548
	adds r6, r6, r3
	adds r0, r0, r6
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_805754C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057534: .4byte 0x02018730
_08057538: .4byte 0x01FF0000
_0805753C: .4byte 0x80002100
_08057540: .4byte 0x08E116BC
_08057544: .4byte 0x000003FF
_08057548: .4byte 0xFFFFFCD0

	THUMB_FUNC_START sub_805754C
sub_805754C: @ 0x0805754C
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #1
	beq _08057572
	cmp r2, #1
	bgt _08057564
	cmp r2, #0
	beq _0805756A
	b _080575BC
_08057564:
	cmp r2, #2
	beq _0805759C
	b _080575BC
_0805756A:
	ldr r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	b _080575C2
_08057572:
	ldr r0, _08057590
	lsls r1, r1, #2
	adds r0, #0x14
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r1, [r0, #5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08057594
	ldr r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	b _080575C2
	.align 2, 0
_08057590: .4byte 0x02024040
_08057594:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x14
	b _080575C2
_0805759C:
	ldr r0, _080575B8
	lsls r1, r1, #2
	adds r0, #0x28
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r1, [r0, #5]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080575BC
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x13
	b _080575C2
	.align 2, 0
_080575B8: .4byte 0x02024040
_080575BC:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x12
_080575C2:
	orrs r0, r1
	str r0, [r3]
	bx lr
	.byte 0x00, 0xB5, 0x03, 0x48, 0x03, 0x49, 0xA0, 0x22
	.byte 0x01, 0xF0, 0xC0, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x1C, 0x78, 0x9A, 0x08, 0x00, 0x02, 0x00, 0x02

	THUMB_FUNC_START sub_80575E0
sub_80575E0: @ 0x080575E0
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _080575FC
	lsrs r0, r0, #0x17
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_080575FC: .4byte 0x08E116EE

	THUMB_FUNC_START sub_8057600
sub_8057600: @ 0x08057600
	lsls r1, r1, #0x18
	ldr r0, _08057618
	lsrs r1, r1, #0x17
	adds r1, r1, r0
	ldr r2, _0805761C
	ldrh r0, [r1]
	ldrh r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08057618: .4byte 0x08E11720
_0805761C: .4byte 0x0202420C

	THUMB_FUNC_START sub_8057620
sub_8057620: @ 0x08057620
	push {lr}
	adds r1, r0, #0
	movs r0, #0xcc
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, _08057638
	movs r2, #0x20
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08057638: .4byte 0x089A77DC

	THUMB_FUNC_START sub_805763C
sub_805763C: @ 0x0805763C
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0xc0
	lsls r0, r0, #4
	adds r5, r5, r0
	cmp r1, #0
	bge _0805765E
	ldr r0, _08057690
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x40
_0805765E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08057668
	rsbs r0, r0, #0
_08057668:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _08057688
	cmp r0, #9
	ble _08057678
	movs r4, #0xa
_08057678:
	lsls r0, r4, #0x10
	asrs r0, r0, #0xa
	ldr r1, _08057694
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
_08057688:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057690: .4byte 0x089A8CDE
_08057694: .4byte 0x089A8A1E

	THUMB_FUNC_START sub_8057698
sub_8057698: @ 0x08057698
	push {lr}
	adds r1, r0, #0
	movs r0, #0xc8
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, _080576B0
	movs r2, #0x20
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_080576B0: .4byte 0x089A7BDE

	THUMB_FUNC_START sub_80576B4
sub_80576B4: @ 0x080576B4
	push {r4, lr}
	adds r4, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	ldr r1, _080576E4
	ldrb r0, [r1, #0x17]
	cmp r0, #0
	beq _080576DC
	adds r4, #0xc0
	ldr r0, _080576E8
	ldrb r1, [r1, #0x17]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuSet
_080576DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080576E4: .4byte gCardInfo
_080576E8: .4byte 0x08E1168C

	THUMB_FUNC_START sub_80576EC
sub_80576EC: @ 0x080576EC
	push {r4, lr}
	adds r4, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_8045410
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0805770E
	lsls r0, r0, #6
	ldr r1, _08057714
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuSet
_0805770E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057714: .4byte 0x089A7ADE

	THUMB_FUNC_START sub_8057718
sub_8057718: @ 0x08057718
	push {r4, lr}
	adds r4, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_8021D00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0805773A
	lsls r0, r0, #6
	ldr r1, _08057740
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuSet
_0805773A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057740: .4byte 0x089A7ADE
	.byte 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x00, 0x25, 0x0F, 0x48, 0x80, 0x46
	.byte 0x00, 0x24, 0xA8, 0x00, 0x6F, 0x1C, 0x40, 0x19, 0x86, 0x00, 0xA0, 0x00, 0x80, 0x19, 0x40, 0x44
	.byte 0x00, 0x68, 0x00, 0x88, 0x00, 0x28, 0x03, 0xD0, 0x20, 0x1C, 0x29, 0x1C, 0xFF, 0xF7, 0x9C, 0xFE
	.byte 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xEF, 0xD9, 0x38, 0x06, 0x05, 0x0E, 0x04, 0x2D
	.byte 0xE6, 0xD9, 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x40, 0x40, 0x02, 0x02

	THUMB_FUNC_START sub_8057790
sub_8057790: @ 0x08057790
	lsls r1, r1, #0x18
	ldr r0, _080577A0
	lsrs r1, r1, #0x17
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bx lr
	.align 2, 0
_080577A0: .4byte 0x08E11720

	THUMB_FUNC_START sub_80577A4
sub_80577A4: @ 0x080577A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_80562F4
	ldr r0, _080577FC
	ldr r1, _08057800
	movs r2, #0xa0
	bl CpuSet
	movs r5, #0
	ldr r0, _08057804
	mov r8, r0
_080577BE:
	movs r4, #0
	lsls r0, r5, #2
	adds r7, r5, #1
	adds r0, r0, r5
	lsls r6, r0, #2
_080577C8:
	lsls r0, r4, #2
	adds r0, r0, r6
	add r0, r8
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080577DE
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80574A8
_080577DE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080577C8
	lsls r0, r7, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080577BE
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080577FC: .4byte 0x089A781C
_08057800: .4byte 0x02000200
_08057804: .4byte 0x02024040

	THUMB_FUNC_START sub_8057808
sub_8057808: @ 0x08057808
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r0, _08057850
	mov r8, r0
_08057814:
	movs r4, #0
	lsls r0, r5, #2
	adds r7, r5, #1
	adds r0, r0, r5
	lsls r6, r0, #2
_0805781E:
	lsls r0, r4, #2
	adds r0, r0, r6
	add r0, r8
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08057834
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80574A8
_08057834:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0805781E
	lsls r0, r7, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08057814
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057850: .4byte 0x02024040

	THUMB_FUNC_START sub_8057854
sub_8057854: @ 0x08057854
	push {lr}
	ldr r1, _08057874
	ldr r2, _08057878
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_8008030
	bl sub_800807C
	bl sub_8034E30
	bl sub_800818C
	pop {r0}
	bx r0
	.align 2, 0
_08057874: .4byte 0x04000204
_08057878: .4byte 0x000045B6

	THUMB_FUNC_START sub_805787C
sub_805787C: @ 0x0805787C
	push {r4, lr}
	cmp r0, #0
	ble _0805788E
	adds r4, r0, #0
_08057884:
	bl sub_8008220
	subs r4, #1
	cmp r4, #0
	bne _08057884
_0805788E:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8057894
sub_8057894: @ 0x08057894
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	ldr r0, _080578B0
	ldrb r0, [r0, #0x1c]
	cmp r0, #0x14
	bhi _0805798E
	lsls r0, r0, #2
	ldr r1, _080578B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080578B0: .4byte gCardInfo
_080578B4: .4byte 0x080578B8
_080578B8: @ jump table
	.4byte _0805790C @ case 0
	.4byte _08057912 @ case 1
	.4byte _08057918 @ case 2
	.4byte _0805791E @ case 3
	.4byte _08057924 @ case 4
	.4byte _0805792A @ case 5
	.4byte _08057930 @ case 6
	.4byte _08057936 @ case 7
	.4byte _0805793C @ case 8
	.4byte _08057942 @ case 9
	.4byte _08057948 @ case 10
	.4byte _0805794E @ case 11
	.4byte _08057954 @ case 12
	.4byte _0805795A @ case 13
	.4byte _08057960 @ case 14
	.4byte _08057966 @ case 15
	.4byte _0805796C @ case 16
	.4byte _08057972 @ case 17
	.4byte _08057978 @ case 18
	.4byte _0805797E @ case 19
	.4byte _08057984 @ case 20
_0805790C:
	bl sub_80584B4
	b _08057988
_08057912:
	bl sub_80584B8
	b _08057988
_08057918:
	bl sub_8057998
	b _08057988
_0805791E:
	bl sub_8057A1C
	b _08057988
_08057924:
	bl sub_8057AA0
	b _08057988
_0805792A:
	bl sub_8057B28
	b _08057988
_08057930:
	bl sub_8057BAC
	b _08057988
_08057936:
	bl sub_80584E4
	b _08057988
_0805793C:
	bl sub_8058540
	b _08057988
_08057942:
	bl sub_805859C
	b _08057988
_08057948:
	bl sub_80585F0
	b _08057988
_0805794E:
	bl sub_80585F4
	b _08057988
_08057954:
	bl sub_8058650
	b _08057988
_0805795A:
	bl sub_8058674
	b _08057988
_08057960:
	bl sub_80586A0
	b _08057988
_08057966:
	bl sub_80586C4
	b _08057988
_0805796C:
	bl sub_80586C8
	b _08057988
_08057972:
	bl sub_80586CC
	b _08057988
_08057978:
	bl sub_80586D0
	b _08057988
_0805797E:
	bl sub_80586D4
	b _08057988
_08057984:
	bl sub_80586D8
_08057988:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08057990
_0805798E:
	movs r0, #0
_08057990:
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8057998
sub_8057998: @ 0x08057998
	push {r4, r5, lr}
	ldr r5, _08057A00
	ldrh r0, [r5]
	bl IsGodCard
	cmp r0, #1
	beq _08057A14
	ldrh r0, [r5]
	bl sub_803FCBC
	cmp r0, #1
	bne _08057A14
	ldr r4, _08057A04
	ldr r2, _08057A08
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08057A0C
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _08057A10
	ldrh r1, [r0, #0x12]
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08057A14
	movs r0, #2
	strb r0, [r5, #5]
	movs r0, #1
	b _08057A16
	.align 2, 0
_08057A00: .4byte 0x020245A0
_08057A04: .4byte gUnk2021AC0
_08057A08: .4byte gBoard
_08057A0C: .4byte gDuel
_08057A10: .4byte gCardInfo
_08057A14:
	movs r0, #0
_08057A16:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8057A1C
sub_8057A1C: @ 0x08057A1C
	push {r4, r5, lr}
	ldr r5, _08057A84
	ldrh r0, [r5]
	bl IsGodCard
	cmp r0, #1
	beq _08057A98
	ldrh r0, [r5]
	bl sub_803FCBC
	cmp r0, #1
	bne _08057A98
	ldr r4, _08057A88
	ldr r2, _08057A8C
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08057A90
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _08057A94
	ldrh r1, [r0, #0x12]
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bhi _08057A98
	movs r0, #3
	strb r0, [r5, #5]
	movs r0, #1
	b _08057A9A
	.align 2, 0
_08057A84: .4byte 0x020245A0
_08057A88: .4byte gUnk2021AC0
_08057A8C: .4byte gBoard
_08057A90: .4byte gDuel
_08057A94: .4byte gCardInfo
_08057A98:
	movs r0, #0
_08057A9A:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8057AA0
sub_8057AA0: @ 0x08057AA0
	push {r4, r5, lr}
	ldr r5, _08057B08
	ldrh r0, [r5]
	bl IsGodCard
	cmp r0, #1
	beq _08057B20
	ldrh r0, [r5]
	bl sub_803FCBC
	cmp r0, #1
	bne _08057B20
	ldr r4, _08057B0C
	ldr r2, _08057B10
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08057B14
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _08057B18
	ldrh r1, [r0, #0x12]
	ldr r0, _08057B1C
	cmp r1, r0
	bhi _08057B20
	movs r0, #4
	strb r0, [r5, #5]
	movs r0, #1
	b _08057B22
	.align 2, 0
_08057B08: .4byte 0x020245A0
_08057B0C: .4byte gUnk2021AC0
_08057B10: .4byte gBoard
_08057B14: .4byte gDuel
_08057B18: .4byte gCardInfo
_08057B1C: .4byte 0x000005DC
_08057B20:
	movs r0, #0
_08057B22:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8057B28
sub_8057B28: @ 0x08057B28
	push {r4, r5, lr}
	ldr r5, _08057B90
	ldrh r0, [r5]
	bl IsGodCard
	cmp r0, #1
	beq _08057BA4
	ldrh r0, [r5]
	bl sub_803FCBC
	cmp r0, #1
	bne _08057BA4
	ldr r4, _08057B94
	ldr r2, _08057B98
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08057B9C
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _08057BA0
	ldrh r1, [r0, #0x12]
	movs r0, #0xfa
	lsls r0, r0, #3
	cmp r1, r0
	bhi _08057BA4
	movs r0, #5
	strb r0, [r5, #5]
	movs r0, #1
	b _08057BA6
	.align 2, 0
_08057B90: .4byte 0x020245A0
_08057B94: .4byte gUnk2021AC0
_08057B98: .4byte gBoard
_08057B9C: .4byte gDuel
_08057BA0: .4byte gCardInfo
_08057BA4:
	movs r0, #0
_08057BA6:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8057BAC
sub_8057BAC: @ 0x08057BAC
	push {r4, r5, lr}
	ldr r5, _08057C14
	ldrh r0, [r5]
	bl IsGodCard
	cmp r0, #1
	beq _08057C2C
	ldrh r0, [r5]
	bl sub_803FCBC
	cmp r0, #1
	bne _08057C2C
	ldr r4, _08057C18
	ldr r2, _08057C1C
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08057C20
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _08057C24
	ldrh r1, [r0, #0x12]
	ldr r0, _08057C28
	cmp r1, r0
	bhi _08057C2C
	movs r0, #6
	strb r0, [r5, #5]
	movs r0, #1
	b _08057C2E
	.align 2, 0
_08057C14: .4byte 0x020245A0
_08057C18: .4byte gUnk2021AC0
_08057C1C: .4byte gBoard
_08057C20: .4byte gDuel
_08057C24: .4byte gCardInfo
_08057C28: .4byte 0x00000BB8
_08057C2C:
	movs r0, #0
_08057C2E:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8057C34
sub_8057C34: @ 0x08057C34
	push {r4, r5, lr}
	ldr r5, _08057C90
	ldr r4, _08057C94
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _08057CA4
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08057C98
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057CD8
	ldr r0, _08057C9C
	ldr r1, _08057CA0
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
	b _08057CD8
	.align 2, 0
_08057C90: .4byte gBoard
_08057C94: .4byte 0x020245A0
_08057C98: .4byte gUnk_02021C08
_08057C9C: .4byte gUnk_02021C10
_08057CA0: .4byte 0x000002AE
_08057CA4:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r0, _08057CE0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057CD8
	movs r0, #4
	bl sub_801D188
	ldr r0, _08057CE4
	ldr r1, _08057CE8
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_08057CD8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057CE0: .4byte gUnk_02021C08
_08057CE4: .4byte gUnk_02021C10
_08057CE8: .4byte 0x000002AE

	THUMB_FUNC_START sub_8057CEC
sub_8057CEC: @ 0x08057CEC
	push {r4, r5, lr}
	ldr r5, _08057D48
	ldr r4, _08057D4C
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _08057D5C
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08057D50
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057D90
	ldr r0, _08057D54
	ldr r1, _08057D58
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
	b _08057D90
	.align 2, 0
_08057D48: .4byte gBoard
_08057D4C: .4byte 0x020245A0
_08057D50: .4byte gUnk_02021C08
_08057D54: .4byte gUnk_02021C10
_08057D58: .4byte 0x000002A9
_08057D5C:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r0, _08057D98
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057D90
	movs r0, #4
	bl sub_801D188
	ldr r0, _08057D9C
	ldr r1, _08057DA0
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_08057D90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057D98: .4byte gUnk_02021C08
_08057D9C: .4byte gUnk_02021C10
_08057DA0: .4byte 0x000002A9

	THUMB_FUNC_START sub_8057DA4
sub_8057DA4: @ 0x08057DA4
	push {r4, r5, lr}
	ldr r5, _08057E00
	ldr r4, _08057E04
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _08057E14
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08057E08
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057E48
	ldr r0, _08057E0C
	ldr r1, _08057E10
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
	b _08057E48
	.align 2, 0
_08057E00: .4byte gBoard
_08057E04: .4byte 0x020245A0
_08057E08: .4byte gUnk_02021C08
_08057E0C: .4byte gUnk_02021C10
_08057E10: .4byte 0x000002AA
_08057E14:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r0, _08057E50
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057E48
	movs r0, #4
	bl sub_801D188
	ldr r0, _08057E54
	ldr r1, _08057E58
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_08057E48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057E50: .4byte gUnk_02021C08
_08057E54: .4byte gUnk_02021C10
_08057E58: .4byte 0x000002AA

	THUMB_FUNC_START sub_8057E5C
sub_8057E5C: @ 0x08057E5C
	push {r4, r5, lr}
	ldr r5, _08057EB8
	ldr r4, _08057EBC
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _08057ECC
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08057EC0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057F00
	ldr r0, _08057EC4
	ldr r1, _08057EC8
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
	b _08057F00
	.align 2, 0
_08057EB8: .4byte gBoard
_08057EBC: .4byte 0x020245A0
_08057EC0: .4byte gUnk_02021C08
_08057EC4: .4byte gUnk_02021C10
_08057EC8: .4byte 0x000002AB
_08057ECC:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r0, _08057F08
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057F00
	movs r0, #4
	bl sub_801D188
	ldr r0, _08057F0C
	ldr r1, _08057F10
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_08057F00:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057F08: .4byte gUnk_02021C08
_08057F0C: .4byte gUnk_02021C10
_08057F10: .4byte 0x000002AB

	THUMB_FUNC_START sub_8057F14
sub_8057F14: @ 0x08057F14
	push {r4, r5, lr}
	ldr r5, _08057F74
	ldr r4, _08057F78
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _08057F84
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08057F7C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057FBA
	ldr r0, _08057F80
	movs r1, #0xab
	lsls r1, r1, #2
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
	b _08057FBA
	.align 2, 0
_08057F74: .4byte gBoard
_08057F78: .4byte 0x020245A0
_08057F7C: .4byte gUnk_02021C08
_08057F80: .4byte gUnk_02021C10
_08057F84:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r0, _08057FC0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057FBA
	movs r0, #4
	bl sub_801D188
	ldr r0, _08057FC4
	movs r1, #0xab
	lsls r1, r1, #2
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_08057FBA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057FC0: .4byte gUnk_02021C08
_08057FC4: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8057FC8
sub_8057FC8: @ 0x08057FC8
	push {r4, r5, lr}
	ldr r5, _08058024
	ldr r4, _08058028
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _08058038
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0805802C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805806C
	ldr r0, _08058030
	ldr r1, _08058034
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
	b _0805806C
	.align 2, 0
_08058024: .4byte gBoard
_08058028: .4byte 0x020245A0
_0805802C: .4byte gUnk_02021C08
_08058030: .4byte gUnk_02021C10
_08058034: .4byte 0x000002AD
_08058038:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r0, _08058074
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805806C
	movs r0, #4
	bl sub_801D188
	ldr r0, _08058078
	ldr r1, _0805807C
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0805806C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058074: .4byte gUnk_02021C08
_08058078: .4byte gUnk_02021C10
_0805807C: .4byte 0x000002AD

	THUMB_FUNC_START sub_8058080
sub_8058080: @ 0x08058080
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _080580E8
_08058086:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _0805809E
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
_0805809E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08058086
	ldr r5, _080580EC
	ldr r4, _080580F0
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #3]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _080580F4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080580E2
	ldr r1, _080580F8
	ldr r0, _080580FC
	strh r0, [r1]
	bl sub_801CEBC
_080580E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080580E8: .4byte gBoard+0x28
_080580EC: .4byte gBoard
_080580F0: .4byte 0x020245A0
_080580F4: .4byte gUnk_02021C08
_080580F8: .4byte gUnk_02021C10
_080580FC: .4byte 0x0000030E

	THUMB_FUNC_START sub_8058100
sub_8058100: @ 0x08058100
	push {r4, r5, lr}
	ldr r4, _08058154
	ldr r5, _08058158
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r3, r4, #0
	adds r3, #0x28
	adds r0, r0, r3
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	ldrb r0, [r5, #4]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	ldr r0, _0805815C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805814E
	ldr r0, _08058160
	ldr r1, _08058164
	strh r1, [r0]
	ldrh r1, [r5]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0805814E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058154: .4byte gBoard
_08058158: .4byte 0x020245A0
_0805815C: .4byte gUnk_02021C08
_08058160: .4byte gUnk_02021C10
_08058164: .4byte 0x000002B6

	THUMB_FUNC_START sub_8058168
sub_8058168: @ 0x08058168
	push {r4, r5, r6, lr}
	ldr r5, _080581C8
	ldr r6, _080581CC
	ldrb r0, [r6, #3]
	lsls r0, r0, #2
	adds r4, r5, #0
	adds r4, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_804037C
	ldrb r0, [r6, #3]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldrb r0, [r6, #3]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	ldrb r0, [r6, #4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	ldr r0, _080581D0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080581C2
	ldr r0, _080581D4
	ldr r1, _080581D8
	strh r1, [r0]
	ldrh r1, [r6]
	strh r1, [r0, #2]
	bl sub_801CEBC
_080581C2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080581C8: .4byte gBoard
_080581CC: .4byte 0x020245A0
_080581D0: .4byte gUnk_02021C08
_080581D4: .4byte gUnk_02021C10
_080581D8: .4byte 0x00000281

	THUMB_FUNC_START sub_80581DC
sub_80581DC: @ 0x080581DC
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_801D1A8
	movs r0, #3
	bl sub_801D188
	ldr r0, _08058200
	ldrb r0, [r0, #5]
	cmp r0, #0x13
	bhi _080582D2
	lsls r0, r0, #2
	ldr r1, _08058204
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08058200: .4byte 0x020245A0
_08058204: .4byte 0x08058208
_08058208: @ jump table
	.4byte _08058258 @ case 0
	.4byte _0805825E @ case 1
	.4byte _08058264 @ case 2
	.4byte _0805826A @ case 3
	.4byte _08058270 @ case 4
	.4byte _08058276 @ case 5
	.4byte _0805827C @ case 6
	.4byte _08058282 @ case 7
	.4byte _0805828A @ case 8
	.4byte _08058292 @ case 9
	.4byte _08058298 @ case 10
	.4byte _0805829E @ case 11
	.4byte _080582A4 @ case 12
	.4byte _080582AA @ case 13
	.4byte _080582B0 @ case 14
	.4byte _080582B6 @ case 15
	.4byte _080582BC @ case 16
	.4byte _080582C2 @ case 17
	.4byte _080582C8 @ case 18
	.4byte _080582CE @ case 19
_08058258:
	bl sub_080582D8
	b _080582D2
_0805825E:
	bl sub_8057C34
	b _080582D2
_08058264:
	bl sub_8057CEC
	b _080582D2
_0805826A:
	bl sub_8057DA4
	b _080582D2
_08058270:
	bl sub_8057E5C
	b _080582D2
_08058276:
	bl sub_8057F14
	b _080582D2
_0805827C:
	bl sub_8057FC8
	b _080582D2
_08058282:
	adds r0, r4, #0
	bl sub_80582DC
	b _080582D2
_0805828A:
	adds r0, r4, #0
	bl sub_8058358
	b _080582D2
_08058292:
	bl sub_80583D4
	b _080582D2
_08058298:
	bl sub_08058430
	b _080582D2
_0805829E:
	bl sub_8058080
	b _080582D2
_080582A4:
	bl sub_8058100
	b _080582D2
_080582AA:
	bl sub_8058434
	b _080582D2
_080582B0:
	bl sub_8058168
	b _080582D2
_080582B6:
	bl sub_0805849C
	b _080582D2
_080582BC:
	bl sub_080584A0
	b _080582D2
_080582C2:
	bl sub_080584A4
	b _080582D2
_080582C8:
	bl sub_080584A8
	b _080582D2
_080582CE:
	bl sub_080584AC
_080582D2:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_080582D8
sub_080582D8: @ 0x080582D8
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80582DC
sub_80582DC: @ 0x080582DC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl GetCurrTurn
	cmp r0, #0
	bne _080582F2
	adds r0, r4, #0
	bl sub_803F99C
	b _080582F8
_080582F2:
	adds r0, r4, #0
	bl sub_803F9E4
_080582F8:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r4, _08058344
	ldr r5, _08058348
	ldrb r0, [r5, #4]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0805834C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805833E
	ldr r0, _08058350
	ldr r1, _08058354
	strh r1, [r0]
	ldrh r1, [r5]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0805833E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058344: .4byte gBoard
_08058348: .4byte 0x020245A0
_0805834C: .4byte gUnk_02021C08
_08058350: .4byte gUnk_02021C10
_08058354: .4byte 0x000002AF

	THUMB_FUNC_START sub_8058358
sub_8058358: @ 0x08058358
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl GetCurrTurn
	cmp r0, #0
	bne _0805836E
	adds r0, r4, #0
	bl sub_803F99C
	b _08058374
_0805836E:
	adds r0, r4, #0
	bl sub_803F9E4
_08058374:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r4, _080583C4
	ldr r5, _080583C8
	ldrb r0, [r5, #4]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _080583CC
	ldrb r0, [r0]
	cmp r0, #0
	bne _080583BC
	ldr r0, _080583D0
	movs r1, #0xac
	lsls r1, r1, #2
	strh r1, [r0]
	ldrh r1, [r5]
	strh r1, [r0, #2]
	bl sub_801CEBC
_080583BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080583C4: .4byte gBoard
_080583C8: .4byte 0x020245A0
_080583CC: .4byte gUnk_02021C08
_080583D0: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_80583D4
sub_80583D4: @ 0x080583D4
	push {r4, r5, lr}
	ldr r4, _0805841C
	ldr r5, _08058420
	ldrb r0, [r5, #4]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08058424
	ldrb r0, [r0]
	cmp r0, #0
	bne _08058414
	ldr r0, _08058428
	ldr r1, _0805842C
	strh r1, [r0]
	ldrh r1, [r5]
	strh r1, [r0, #2]
	bl sub_801CEBC
_08058414:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805841C: .4byte gBoard
_08058420: .4byte 0x020245A0
_08058424: .4byte gUnk_02021C08
_08058428: .4byte gUnk_02021C10
_0805842C: .4byte 0x000002B1

	THUMB_FUNC_START sub_08058430
sub_08058430: @ 0x08058430
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058434
sub_8058434: @ 0x08058434
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08058488
_0805843A:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _08058452
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
_08058452:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0805843A
	ldr r1, _0805848C
	ldr r0, _08058490
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	ldr r0, _08058494
	ldrb r0, [r0]
	cmp r0, #0
	bne _08058482
	ldr r1, _08058498
	movs r0, #0xad
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_08058482:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08058488: .4byte gBoard+0x28
_0805848C: .4byte gBoard
_08058490: .4byte 0x020245A0
_08058494: .4byte gUnk_02021C08
_08058498: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_0805849C
sub_0805849C: @ 0x0805849C
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_080584A0
sub_080584A0: @ 0x080584A0
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_080584A4
sub_080584A4: @ 0x080584A4
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_080584A8
sub_080584A8: @ 0x080584A8
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_080584AC
sub_080584AC: @ 0x080584AC
	bx lr
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80584B4
sub_80584B4: @ 0x080584B4
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_80584B8
sub_80584B8: @ 0x080584B8
	push {r4, lr}
	ldr r4, _080584D4
	ldrh r0, [r4]
	bl IsGodCard
	cmp r0, #1
	beq _080584D0
	ldrh r0, [r4]
	bl sub_803FCBC
	cmp r0, #1
	beq _080584D8
_080584D0:
	movs r0, #0
	b _080584DC
	.align 2, 0
_080584D4: .4byte 0x020245A0
_080584D8:
	strb r0, [r4, #5]
	movs r0, #1
_080584DC:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80584E4
sub_80584E4: @ 0x080584E4
	push {r4, r5, r6, lr}
	ldr r4, _08058520
	ldrh r0, [r4]
	bl sub_803FCBC
	cmp r0, #2
	bne _08058536
	ldrh r0, [r4]
	bl SetCardInfo
	ldr r3, _08058524
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08058536
	ldr r0, _08058528
	ldrb r2, [r0, #0x1a]
	adds r5, r4, #0
	adds r4, r1, #0
	adds r1, r3, #0
	movs r3, #7
_08058512:
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, r2
	bne _0805852C
	strb r3, [r5, #5]
	movs r0, #1
	b _08058538
	.align 2, 0
_08058520: .4byte 0x020245A0
_08058524: .4byte 0x08E1172C
_08058528: .4byte gCardInfo
_0805852C:
	adds r1, #2
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, r4
	bne _08058512
_08058536:
	movs r0, #0
_08058538:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058540
sub_8058540: @ 0x08058540
	push {r4, r5, r6, lr}
	ldr r4, _0805857C
	ldrh r0, [r4]
	bl sub_803FCBC
	cmp r0, #2
	bne _08058592
	ldrh r0, [r4]
	bl SetCardInfo
	ldr r3, _08058580
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08058592
	ldr r0, _08058584
	ldrb r2, [r0, #0x1a]
	adds r5, r4, #0
	adds r4, r1, #0
	adds r1, r3, #0
	movs r3, #8
_0805856E:
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, r2
	bne _08058588
	strb r3, [r5, #5]
	movs r0, #1
	b _08058594
	.align 2, 0
_0805857C: .4byte 0x020245A0
_08058580: .4byte 0x08E11738
_08058584: .4byte gCardInfo
_08058588:
	adds r1, #2
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, r4
	bne _0805856E
_08058592:
	movs r0, #0
_08058594:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805859C
sub_805859C: @ 0x0805859C
	push {r4, r5, r6, lr}
	ldr r4, _080585D0
	ldrh r0, [r4]
	bl SetCardInfo
	ldr r3, _080585D4
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080585E6
	ldr r0, _080585D8
	ldrb r2, [r0, #0x1a]
	adds r5, r4, #0
	adds r4, r1, #0
	adds r1, r3, #0
	movs r3, #9
_080585C0:
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, r2
	bne _080585DC
	strb r3, [r5, #5]
	movs r0, #1
	b _080585E8
	.align 2, 0
_080585D0: .4byte 0x020245A0
_080585D4: .4byte 0x08E11744
_080585D8: .4byte gCardInfo
_080585DC:
	adds r1, #2
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, r4
	bne _080585C0
_080585E6:
	movs r0, #0
_080585E8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80585F0
sub_80585F0: @ 0x080585F0
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_80585F4
sub_80585F4: @ 0x080585F4
	push {r4, r5, r6, lr}
	ldr r4, _08058630
	ldrh r0, [r4]
	bl sub_803FCBC
	cmp r0, #2
	bne _08058646
	ldrh r0, [r4]
	bl SetCardInfo
	ldr r3, _08058634
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08058646
	ldr r0, _08058638
	ldrb r2, [r0, #0x1a]
	adds r5, r4, #0
	adds r4, r1, #0
	adds r1, r3, #0
	movs r3, #0xb
_08058622:
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, r2
	bne _0805863C
	strb r3, [r5, #5]
	movs r0, #1
	b _08058648
	.align 2, 0
_08058630: .4byte 0x020245A0
_08058634: .4byte 0x08E11788
_08058638: .4byte gCardInfo
_0805863C:
	adds r1, #2
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, r4
	bne _08058622
_08058646:
	movs r0, #0
_08058648:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058650
sub_8058650: @ 0x08058650
	push {r4, lr}
	ldr r4, _08058664
	ldrh r0, [r4]
	bl sub_803FCBC
	cmp r0, #1
	beq _08058668
	movs r0, #0
	b _0805866E
	.align 2, 0
_08058664: .4byte 0x020245A0
_08058668:
	movs r0, #0xc
	strb r0, [r4, #5]
	movs r0, #1
_0805866E:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8058674
sub_8058674: @ 0x08058674
	push {r4, lr}
	ldr r4, _08058690
	ldrh r0, [r4]
	bl IsGodCard
	cmp r0, #1
	beq _0805868C
	ldrh r0, [r4]
	bl sub_803FCBC
	cmp r0, #1
	beq _08058694
_0805868C:
	movs r0, #0
	b _0805869A
	.align 2, 0
_08058690: .4byte 0x020245A0
_08058694:
	movs r0, #0xd
	strb r0, [r4, #5]
	movs r0, #1
_0805869A:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80586A0
sub_80586A0: @ 0x080586A0
	push {r4, lr}
	ldr r4, _080586B4
	ldrh r0, [r4]
	bl sub_803FCBC
	cmp r0, #1
	beq _080586B8
	movs r0, #0
	b _080586BE
	.align 2, 0
_080586B4: .4byte 0x020245A0
_080586B8:
	movs r0, #0xe
	strb r0, [r4, #5]
	movs r0, #1
_080586BE:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80586C4
sub_80586C4: @ 0x080586C4
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_80586C8
sub_80586C8: @ 0x080586C8
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_80586CC
sub_80586CC: @ 0x080586CC
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_80586D0
sub_80586D0: @ 0x080586D0
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_80586D4
sub_80586D4: @ 0x080586D4
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_80586D8
sub_80586D8: @ 0x080586D8
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_80586DC
sub_80586DC: @ 0x080586DC
	push {r4, r5, lr}
	ldr r1, _08058704
	movs r0, #0
	strb r0, [r1, #5]
	movs r4, #0
	ldr r5, _08058708
_080586E8:
	ldr r0, _08058704
	strb r4, [r0, #4]
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8057894
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0805870C
	movs r0, #1
	b _08058718
	.align 2, 0
_08058704: .4byte 0x020245A0
_08058708: .4byte gBoard
_0805870C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080586E8
	movs r0, #0
_08058718:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058720
sub_8058720: @ 0x08058720
	ldr r1, _08058728
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_08058728: .4byte gCurrTurn

	THUMB_FUNC_START sub_805872C
sub_805872C: @ 0x0805872C
	ldr r2, _0805873C
	ldr r1, _08058740
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	bx lr
	.align 2, 0
_0805873C: .4byte gCurrTurn
_08058740: .4byte 0x08E1178C

	THUMB_FUNC_START GetCurrTurn
GetCurrTurn: @ 0x08058744
	ldr r0, _0805874C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0805874C: .4byte gCurrTurn

	THUMB_FUNC_START CpuFastSet
CpuFastSet: @ 0x08058750
	svc #0xc
	bx lr

	THUMB_FUNC_START CpuSet
CpuSet: @ 0x08058754
	svc #0xb
	bx lr

	THUMB_FUNC_START HuffUnComp
HuffUnComp: @ 0x08058758
	svc #0x13
	bx lr

	THUMB_FUNC_START LZ77UnCompWram
LZ77UnCompWram: @ 0x0805875C
	svc #0x11
	bx lr

	THUMB_FUNC_START sub_8058760
sub_8058760: @ 0x08058760
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _08058798
	ldrh r0, [r2]
	ldr r1, _0805879C
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08058790
	adds r1, r0, #0
_08058782:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r3, #1
	cmp r3, r1
	bne _08058782
_08058790:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058798: .4byte 0x04000204
_0805879C: .4byte 0x0000FFFC

	THUMB_FUNC_START sub_80587A0
sub_80587A0: @ 0x080587A0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _080587D8
	ldrh r0, [r2]
	ldr r1, _080587DC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _080587D0
	adds r1, r0, #0
_080587C2:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r3, #1
	cmp r3, r1
	bne _080587C2
_080587D0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080587D8: .4byte 0x04000204
_080587DC: .4byte 0x0000FFFC

	THUMB_FUNC_START sub_80587E0
sub_80587E0: @ 0x080587E0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _08058814
	ldrh r0, [r2]
	ldr r1, _08058818
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08058822
	adds r2, r0, #0
_08058802:
	ldrb r1, [r4]
	ldrb r0, [r5]
	adds r5, #1
	adds r4, #1
	cmp r1, r0
	beq _0805881C
	subs r0, r4, #1
	b _08058824
	.align 2, 0
_08058814: .4byte 0x04000204
_08058818: .4byte 0x0000FFFC
_0805881C:
	subs r3, #1
	cmp r3, r2
	bne _08058802
_08058822:
	movs r0, #0
_08058824:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805882C
sub_805882C: @ 0x0805882C
	ldr r2, _08058840
	movs r0, #1
	eors r2, r0
	ldr r3, _08058844
	ldr r0, _08058848
	ldr r1, _08058840
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08058858
	.align 2, 0
_08058840: .4byte 0x08058761
_08058844: .4byte 0x0201F0D0
_08058848: .4byte 0x080587A1
_0805884C:
	ldrh r0, [r2]
	strh r0, [r3]
	adds r2, #2
	adds r3, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08058858:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0805884C
	ldr r1, _08058878
	ldr r0, _0805887C
	str r0, [r1]
	ldr r2, _08058880
	movs r0, #1
	eors r2, r0
	ldr r3, _08058884
	ldr r0, _08058888
	ldr r1, _08058880
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08058898
	.align 2, 0
_08058878: .4byte 0x020245AC
_0805887C: .4byte 0x0201F0D1
_08058880: .4byte 0x080587E1
_08058884: .4byte 0x0201F030
_08058888: .4byte 0x0805882D
_0805888C:
	ldrh r0, [r2]
	strh r0, [r3]
	adds r2, #2
	adds r3, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08058898:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0805888C
	ldr r1, _080588B4
	ldr r0, _080588B8
	str r0, [r1]
	ldr r2, _080588BC
	ldrh r0, [r2]
	ldr r1, _080588C0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_080588B4: .4byte 0x020245B0
_080588B8: .4byte 0x0201F031
_080588BC: .4byte 0x04000204
_080588C0: .4byte 0x0000FFFC

	THUMB_FUNC_START sub_80588C4
sub_80588C4: @ 0x080588C4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r7, #0
	b _080588D6
_080588D0:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080588D6:
	cmp r7, #2
	bhi _080588F8
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80587A0
	ldr r0, _08058900
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_805AAC4
	adds r3, r0, #0
	cmp r3, #0
	bne _080588D0
_080588F8:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08058900: .4byte 0x020245B0

	THUMB_FUNC_START sub_8058904
sub_8058904: @ 0x08058904
	add r2, pc, #0x0
	bx r2
	.byte 0x90, 0x21, 0x83, 0xE0, 0x00, 0x00, 0x83, 0xE2
	.byte 0x1E, 0xFF, 0x2F, 0xE1

	THUMB_FUNC_START sub_8058914
sub_8058914: @ 0x08058914
	ldr r0, _08058980
	ldr r0, [r0]
	ldr r2, _08058984
	ldr r3, [r0]
	cmp r2, r3
	beq _08058922
	bx lr
_08058922:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _08058946
	ldr r2, _0805898C
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _08058944
	adds r2, #0xe4
_08058944:
	adds r1, r1, r2
_08058946:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _08058956
	ldr r0, [r0, #0x24]
	bl sub_8058D36
	ldr r0, [sp, #0x18]
_08058956:
	ldr r3, [r0, #0x28]
	bl sub_8058D36
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _08058990
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _08058976
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_08058976:
	str r5, [sp, #8]
	ldr r6, _08058994
	ldr r3, _08058988
	bx r3
	.align 2, 0
_08058980: .4byte 0x03007FF0
_08058984: .4byte 0x68736D53
_08058988: .4byte 0x03000001
_0805898C: .4byte 0x04000006
_08058990: .4byte 0x00000350
_08058994: .4byte 0x00000630
	.byte 0x43, 0x79, 0x00, 0x2B, 0x2C, 0xD0, 0x01, 0xA1
	.byte 0x08, 0x47, 0x00, 0x00, 0x02, 0x00, 0x54, 0xE3, 0x35, 0x7E, 0x80, 0x02, 0x08, 0x70, 0x85, 0x10
	.byte 0x08, 0x40, 0xA0, 0xE1, 0xD6, 0x00, 0x95, 0xE1, 0xD0, 0x10, 0xD5, 0xE1, 0x01, 0x00, 0x80, 0xE0
	.byte 0xD6, 0x10, 0x97, 0xE1, 0x01, 0x00, 0x80, 0xE0, 0xD1, 0x10, 0xD7, 0xE0, 0x01, 0x00, 0x80, 0xE0
	.byte 0x90, 0x03, 0x01, 0xE0, 0xC1, 0x04, 0xA0, 0xE1, 0x80, 0x00, 0x10, 0xE3, 0x01, 0x00, 0x80, 0x12
	.byte 0x06, 0x00, 0xC5, 0xE7, 0x01, 0x00, 0xC5, 0xE4, 0x01, 0x40, 0x54, 0xE2, 0xF0, 0xFF, 0xFF, 0xCA
	.byte 0x2F, 0x00, 0x8F, 0xE2, 0x10, 0xFF, 0x2F, 0xE1, 0x00, 0x20, 0x41, 0x46, 0x76, 0x19, 0xC9, 0x08
	.byte 0x01, 0xD3, 0x01, 0xC5, 0x01, 0xC6, 0x49, 0x08, 0x03, 0xD3, 0x01, 0xC5, 0x01, 0xC6, 0x01, 0xC5
	.byte 0x01, 0xC6, 0x01, 0xC5, 0x01, 0xC6, 0x01, 0xC5, 0x01, 0xC6, 0x01, 0xC5, 0x01, 0xC6, 0x01, 0xC5
	.byte 0x01, 0xC6, 0x01, 0x39, 0xF5, 0xDC, 0x06, 0x9C, 0xA0, 0x69, 0x84, 0x46, 0xA0, 0x79, 0x50, 0x34
	.byte 0x01, 0x90, 0x63, 0x6A, 0x05, 0x98, 0x00, 0x28, 0x0A, 0xD0, 0x04, 0x49, 0x09, 0x78, 0xA0, 0x29
	.byte 0x00, 0xD2, 0xE4, 0x31, 0x81, 0x42, 0x03, 0xD3, 0x6B, 0xE1, 0x00, 0x00, 0x06, 0x00, 0x00, 0x04
	.byte 0x26, 0x78, 0xC7, 0x20, 0x30, 0x42, 0x00, 0xD1, 0x5E, 0xE1, 0x80, 0x20, 0x30, 0x42, 0x14, 0xD0
	.byte 0x40, 0x20, 0x30, 0x42, 0x19, 0xD1, 0x03, 0x26, 0x26, 0x70, 0x18, 0x1C, 0x10, 0x30, 0xA0, 0x62
	.byte 0xD8, 0x68, 0xA0, 0x61, 0x00, 0x25, 0x65, 0x72, 0xE5, 0x61, 0xDA, 0x78, 0xC0, 0x20, 0x10, 0x42
	.byte 0x2F, 0xD0, 0x10, 0x20, 0x06, 0x43, 0x26, 0x70, 0x2B, 0xE0, 0x65, 0x7A, 0x04, 0x20, 0x30, 0x42
	.byte 0x06, 0xD0, 0x60, 0x7B, 0x01, 0x38, 0x60, 0x73, 0x2A, 0xD8, 0x00, 0x20, 0x20, 0x70, 0x3B, 0xE1
	.byte 0x40, 0x20, 0x30, 0x42, 0x0C, 0xD0, 0xE0, 0x79, 0x45, 0x43, 0x2D, 0x0A, 0x20, 0x7B, 0x85, 0x42
	.byte 0x1E, 0xD8, 0x25, 0x7B, 0x00, 0x2D, 0xF0, 0xD0, 0x04, 0x20, 0x06, 0x43, 0x26, 0x70, 0x17, 0xE0
	.byte 0x03, 0x22, 0x32, 0x40, 0x02, 0x2A, 0x0A, 0xD1, 0x60, 0x79, 0x45, 0x43, 0x2D, 0x0A, 0xA0, 0x79
	.byte 0x85, 0x42, 0x0D, 0xD8, 0x05, 0x1C, 0xEC, 0xD0, 0x01, 0x3E, 0x26, 0x70, 0x08, 0xE0, 0x03, 0x2A
	.byte 0x06, 0xD1, 0x20, 0x79, 0x2D, 0x18, 0xFF, 0x2D, 0x02, 0xD3, 0xFF, 0x25, 0x01, 0x3E, 0x26, 0x70
	.byte 0x65, 0x72, 0x06, 0x98, 0xC0, 0x79, 0x01, 0x30, 0x68, 0x43, 0x05, 0x09, 0xA0, 0x78, 0x68, 0x43
	.byte 0x00, 0x0A, 0xA0, 0x72, 0xE0, 0x78, 0x68, 0x43, 0x00, 0x0A, 0xE0, 0x72, 0x10, 0x20, 0x30, 0x40
	.byte 0x04, 0x90, 0x07, 0xD0, 0x18, 0x1C, 0x10, 0x30, 0x99, 0x68, 0x40, 0x18, 0x03, 0x90, 0xD8, 0x68
	.byte 0x40, 0x1A, 0x04, 0x90, 0x02, 0x9D, 0xA2, 0x69, 0xA3, 0x6A, 0x01, 0xA0, 0x00, 0x47, 0x00, 0x00
	.byte 0x00, 0x80, 0x8D, 0xE5, 0x0A, 0xA0, 0xD4, 0xE5, 0x0B, 0xB0, 0xD4, 0xE5, 0x0A, 0xA8, 0xA0, 0xE1
	.byte 0x0B, 0xB8, 0xA0, 0xE1, 0x01, 0x00, 0xD4, 0xE5, 0x08, 0x00, 0x10, 0xE3, 0x47, 0x00, 0x00, 0x0A
	.byte 0x04, 0x00, 0x52, 0xE3, 0x19, 0x00, 0x00, 0xDA, 0x08, 0x20, 0x52, 0xE0, 0x00, 0xE0, 0xA0, 0xC3
	.byte 0x05, 0x00, 0x00, 0xCA, 0x08, 0xE0, 0xA0, 0xE1, 0x08, 0x20, 0x82, 0xE0, 0x04, 0x80, 0x42, 0xE2
	.byte 0x08, 0xE0, 0x4E, 0xE0, 0x03, 0x20, 0x12, 0xE2, 0x04, 0x20, 0xA0, 0x03, 0x00, 0x60, 0x95, 0xE5
	.byte 0x30, 0x76, 0x95, 0xE5, 0xD1, 0x00, 0xD3, 0xE0, 0x9A, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3
	.byte 0x66, 0x64, 0x81, 0xE0, 0x9B, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3, 0x67, 0x74, 0x81, 0xE0
	.byte 0x01, 0x51, 0x95, 0xE2, 0xF6, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4
	.byte 0x04, 0x80, 0x58, 0xE2, 0xF0, 0xFF, 0xFF, 0xCA, 0x0E, 0x80, 0x98, 0xE0, 0x50, 0x00, 0x00, 0x0A
	.byte 0x00, 0x60, 0x95, 0xE5, 0x30, 0x76, 0x95, 0xE5, 0xD1, 0x00, 0xD3, 0xE0, 0x9A, 0x00, 0x01, 0xE0
	.byte 0xFF, 0x18, 0xC1, 0xE3, 0x66, 0x64, 0x81, 0xE0, 0x9B, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3
	.byte 0x67, 0x74, 0x81, 0xE0, 0x01, 0x20, 0x52, 0xE2, 0x12, 0x00, 0x00, 0x0A, 0x01, 0x51, 0x95, 0xE2
	.byte 0xF4, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4, 0x04, 0x80, 0x58, 0xE2
	.byte 0xD2, 0xFF, 0xFF, 0xCA, 0x3E, 0x00, 0x00, 0xEA, 0x18, 0x00, 0x9D, 0xE5, 0x00, 0x00, 0x50, 0xE3
	.byte 0x05, 0x00, 0x00, 0x0A, 0x14, 0x30, 0x9D, 0xE5, 0x00, 0x90, 0x62, 0xE2, 0x02, 0x20, 0x90, 0xE0
	.byte 0x2B, 0x00, 0x00, 0xCA, 0x00, 0x90, 0x49, 0xE0, 0xFB, 0xFF, 0xFF, 0xEA, 0x10, 0x10, 0xBD, 0xE8
	.byte 0x00, 0x20, 0xA0, 0xE3, 0x03, 0x00, 0x00, 0xEA, 0x10, 0x20, 0x9D, 0xE5, 0x00, 0x00, 0x52, 0xE3
	.byte 0x0C, 0x30, 0x9D, 0x15, 0xE8, 0xFF, 0xFF, 0x1A, 0x00, 0x20, 0xC4, 0xE5, 0x25, 0x0F, 0xA0, 0xE1
	.byte 0x03, 0x51, 0xC5, 0xE3, 0x03, 0x00, 0x60, 0xE2, 0x80, 0x01, 0xA0, 0xE1, 0x76, 0x60, 0xA0, 0xE1
	.byte 0x77, 0x70, 0xA0, 0xE1, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4, 0x26, 0x00, 0x00, 0xEA
	.byte 0x10, 0x10, 0x2D, 0xE9, 0x1C, 0xE0, 0x94, 0xE5, 0x20, 0x10, 0x94, 0xE5, 0x9C, 0x01, 0x04, 0xE0
	.byte 0xD0, 0x00, 0xD3, 0xE1, 0xD1, 0x10, 0xF3, 0xE1, 0x00, 0x10, 0x41, 0xE0, 0x00, 0x60, 0x95, 0xE5
	.byte 0x30, 0x76, 0x95, 0xE5, 0x9E, 0x01, 0x09, 0xE0, 0xC9, 0x9B, 0x80, 0xE0, 0x9A, 0x09, 0x0C, 0xE0
	.byte 0xFF, 0xC8, 0xCC, 0xE3, 0x66, 0x64, 0x8C, 0xE0, 0x9B, 0x09, 0x0C, 0xE0, 0xFF, 0xC8, 0xCC, 0xE3
	.byte 0x67, 0x74, 0x8C, 0xE0, 0x04, 0xE0, 0x8E, 0xE0, 0xAE, 0x9B, 0xB0, 0xE1, 0x07, 0x00, 0x00, 0x0A
	.byte 0xFE, 0xE5, 0xCE, 0xE3, 0x09, 0x20, 0x52, 0xE0, 0xCE, 0xFF, 0xFF, 0xDA, 0x01, 0x90, 0x59, 0xE2
	.byte 0x01, 0x00, 0x80, 0x00, 0xD9, 0x00, 0xB3, 0x11, 0xD1, 0x10, 0xF3, 0xE1, 0x00, 0x10, 0x41, 0xE0
	.byte 0x01, 0x51, 0x95, 0xE2, 0xEA, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4
	.byte 0x04, 0x80, 0x58, 0xE2, 0xE4, 0xFF, 0xFF, 0xCA, 0x01, 0x30, 0x43, 0xE2, 0x10, 0x10, 0xBD, 0xE8
	.byte 0x1C, 0xE0, 0x84, 0xE5, 0x18, 0x20, 0x84, 0xE5, 0x28, 0x30, 0x84, 0xE5, 0x00, 0x80, 0x9D, 0xE5
	.byte 0x01, 0x00, 0x8F, 0xE2, 0x10, 0xFF, 0x2F, 0xE1, 0x01, 0x98, 0x01, 0x38, 0x01, 0xDD, 0x40, 0x34
	.byte 0x86, 0xE6, 0x06, 0x98, 0x04, 0x4B, 0x03, 0x60, 0x07, 0xB0, 0xFF, 0xBC, 0x80, 0x46, 0x89, 0x46
	.byte 0x92, 0x46, 0x9B, 0x46, 0x08, 0xBC


	.GLOBAL sub_8058D36
	.THUMB
	.THUMB_FUNC
	.TYPE sub_8058D36, function
sub_8058D36: @ 0x08058D36
	bx r3
	.byte 0x53, 0x6D, 0x73, 0x68, 0xA4, 0x46, 0x00, 0x21
	.byte 0x00, 0x22, 0x00, 0x23, 0x00, 0x24, 0x1E, 0xC0, 0x1E, 0xC0, 0x1E, 0xC0, 0x1E, 0xC0, 0x64, 0x46
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8058D54
sub_8058D54: @ 0x08058D54
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _08058D72
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _08058D66
	str r1, [r2, #0x34]
	b _08058D68
_08058D66:
	str r1, [r3, #0x20]
_08058D68:
	cmp r1, #0
	beq _08058D6E
	str r2, [r1, #0x30]
_08058D6E:
	movs r1, #0
	str r1, [r0, #0x2c]
_08058D72:
	bx lr
sub_8058D74:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08058D98
_08058D7E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08058D8C
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_08058D8C:
	adds r0, r4, #0
	bl sub_8058D54
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08058D7E
_08058D98:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058DA4
sub_8058DA4: @ 0x08058DA4
	mov ip, lr
	movs r1, #0x24
	ldr r2, _08058DD4
_08058DAA:
	ldr r3, [r2]
	bl sub_8058DBE
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _08058DAA
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058DBC
sub_8058DBC: @ 0x08058DBC
	ldrb r3, [r2]
sub_8058DBE:
	push {r0}
	lsrs r0, r2, #0x19
	bne _08058DD0
	ldr r0, _08058DD4
	cmp r2, r0
	blo _08058DCE
	lsrs r0, r2, #0xe
	beq _08058DD0
_08058DCE:
	movs r3, #0
_08058DD0:
	pop {r0}
	bx lr
	.align 2, 0
_08058DD4: .4byte 0x08AEA65C

	THUMB_FUNC_START sub_8058DD8
sub_8058DD8: @ 0x08058DD8
	ldr r2, [r1, #0x40]


sub_08058DDA: @ 0x08058DDA
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b sub_8058DBE
	.byte 0x00, 0x00
sub_8058DE4:
	push {lr}
_08058DE6:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_8058DBC
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8058E04
sub_8058E04: @ 0x08058E04
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _08058E1C
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b sub_8058DE4
_08058E1C:
	b sub_8058D74
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058E20
sub_8058E20: @ 0x08058E20
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _08058E32
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_08058E32:
	bx lr

	THUMB_FUNC_START sub_8058E34
sub_8058E34: @ 0x08058E34
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _08058E44
	adds r2, #1
	str r2, [r1, #0x40]
	b _08058DE6
_08058E44:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl sub_8058DD8
	cmp ip, r3
	bhs _08058E56
	b _08058DE6
_08058E56:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058E64
sub_8058E64: @ 0x08058E64
	mov ip, lr
	bl sub_8058DD8
	strb r3, [r1, #0x1d]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058E70
sub_8058E70: @ 0x08058E70
	mov ip, lr
	bl sub_8058DD8
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	THUMB_FUNC_START sub_8058E84
sub_8058E84: @ 0x08058E84
	mov ip, lr
	bl sub_8058DD8
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058E98
sub_8058E98: @ 0x08058E98
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl sub_8058DBE
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl sub_8058DBE
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl sub_8058DBE
	str r3, [r1, #0x2c]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058EC8
sub_8058EC8: @ 0x08058EC8
	mov ip, lr
	bl sub_8058DD8
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058EDC
sub_8058EDC: @ 0x08058EDC
	mov ip, lr
	bl sub_8058DD8
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	THUMB_FUNC_START sub_8058EF0
sub_8058EF0: @ 0x08058EF0
	mov ip, lr
	bl sub_8058DD8
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	THUMB_FUNC_START sub_8058F04
sub_8058F04: @ 0x08058F04
	mov ip, lr
	bl sub_8058DD8
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058F18
sub_8058F18: @ 0x08058F18
	mov ip, lr
	bl sub_8058DD8
	strb r3, [r1, #0x1b]
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8058F24
sub_8058F24: @ 0x08058F24
	mov ip, lr
	bl sub_8058DD8
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _08058F3A
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_08058F3A:
	bx ip

	THUMB_FUNC_START sub_8058F3C
sub_8058F3C: @ 0x08058F3C
	mov ip, lr
	bl sub_8058DD8
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	THUMB_FUNC_START sub_8058F50
sub_8058F50: @ 0x08058F50
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _08058F64
	adds r0, r0, r3
	bl sub_08058DDA
	strb r3, [r0]
	bx ip
	.align 2, 0
_08058F64: .4byte 0x04000060

	THUMB_FUNC_START sub_8058F68
sub_8058F68: @ 0x08058F68
	ldr r0, _08059214
	ldr r0, [r0]
	ldr r2, _08059218
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _08058FA8
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _08058FA8
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _08058FAC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _08058F8E
	ldr r1, _08058FB0
	str r1, [r2, #8]
_08058F8E:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _08058F98
	ldr r1, _08058FB0
	str r1, [r2, #0x14]
_08058F98:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_08058FA8:
	bx lr
	.align 2, 0
_08058FAC: .4byte 0x040000BC
_08058FB0: .4byte 0x84400004
	.byte 0x98, 0x4A, 0x43, 0x6B, 0x9A, 0x42, 0x00, 0xD0, 0x70, 0x47, 0x01, 0x33
	.byte 0x43, 0x63, 0x01, 0xB5, 0x83, 0x6B, 0x00, 0x2B, 0x02, 0xD0, 0xC0, 0x6B, 0x00, 0xF0, 0x1E, 0xF9
	.byte 0x01, 0xBC, 0xF0, 0xB4, 0x44, 0x46, 0x4D, 0x46, 0x56, 0x46, 0x5F, 0x46, 0xF0, 0xB4, 0x07, 0x1C
	.byte 0x78, 0x68, 0x00, 0x28, 0x00, 0xDA, 0x09, 0xE1, 0x8A, 0x48, 0x00, 0x68, 0x80, 0x46, 0x38, 0x1C
	.byte 0x00, 0xF0, 0x56, 0xFF, 0x78, 0x68, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0xE0, 0x78, 0x8C, 0x39, 0x8C
	.byte 0x40, 0x18, 0xA3, 0xE0, 0x3E, 0x7A, 0xFD, 0x6A, 0x01, 0x23, 0x00, 0x24, 0x28, 0x78, 0x80, 0x21
	.byte 0x01, 0x42, 0x00, 0xD1, 0x88, 0xE0, 0x9A, 0x46, 0x1C, 0x43, 0xA3, 0x46, 0x2C, 0x6A, 0x00, 0x2C
	.byte 0x13, 0xD0, 0x21, 0x78, 0xC7, 0x20, 0x08, 0x42, 0x09, 0xD0, 0x20, 0x7C, 0x00, 0x28, 0x09, 0xD0
	.byte 0x01, 0x38, 0x20, 0x74, 0x06, 0xD1, 0x40, 0x20, 0x01, 0x43, 0x21, 0x70, 0x02, 0xE0, 0x20, 0x1C
	.byte 0x00, 0xF0, 0xAC, 0xFC, 0x64, 0x6B, 0x00, 0x2C, 0xEB, 0xD1, 0x2B, 0x78, 0x40, 0x20, 0x18, 0x42
	.byte 0x3A, 0xD0, 0x28, 0x1C, 0x00, 0xF0, 0xAC, 0xFC, 0x80, 0x20, 0x28, 0x70, 0x02, 0x20, 0xE8, 0x73
	.byte 0x40, 0x20, 0xE8, 0x74, 0x16, 0x20, 0x68, 0x76, 0x01, 0x20, 0xA9, 0x1D, 0x88, 0x77, 0x2B, 0xE0
	.byte 0x2A, 0x6C, 0x11, 0x78, 0x80, 0x29, 0x01, 0xD2, 0xE9, 0x79, 0x04, 0xE0, 0x01, 0x32, 0x2A, 0x64
	.byte 0xBD, 0x29, 0x00, 0xD3, 0xE9, 0x71, 0xCF, 0x29, 0x08, 0xD3, 0x40, 0x46, 0x83, 0x6B, 0x08, 0x1C
	.byte 0xCF, 0x38, 0x39, 0x1C, 0x2A, 0x1C, 0x00, 0xF0, 0xB9, 0xF8, 0x15, 0xE0, 0xB0, 0x29, 0x0E, 0xD9
	.byte 0x08, 0x1C, 0xB1, 0x38, 0xB8, 0x72, 0x43, 0x46, 0x5B, 0x6B, 0x80, 0x00, 0x1B, 0x58, 0x38, 0x1C
	.byte 0x29, 0x1C, 0x00, 0xF0, 0xAB, 0xF8, 0x28, 0x78, 0x00, 0x28, 0x33, 0xD0, 0x04, 0xE0, 0x54, 0x48
	.byte 0x80, 0x39, 0x09, 0x18, 0x08, 0x78, 0x68, 0x70, 0x68, 0x78, 0x00, 0x28, 0xD0, 0xD0, 0x01, 0x38
	.byte 0x68, 0x70, 0x69, 0x7E, 0x00, 0x29, 0x25, 0xD0, 0xE8, 0x7D, 0x00, 0x28, 0x22, 0xD0, 0x28, 0x7F
	.byte 0x00, 0x28, 0x02, 0xD0, 0x01, 0x38, 0x28, 0x77, 0x1C, 0xE0, 0xA8, 0x7E, 0x40, 0x18, 0xA8, 0x76
	.byte 0x01, 0x1C, 0x40, 0x38, 0x00, 0x06, 0x02, 0xD5, 0x0A, 0x06, 0x12, 0x16, 0x01, 0xE0, 0x80, 0x20
	.byte 0x42, 0x1A, 0xE8, 0x7D, 0x50, 0x43, 0x82, 0x11, 0xA8, 0x7D, 0x50, 0x40, 0x00, 0x06, 0x09, 0xD0
	.byte 0xAA, 0x75, 0x28, 0x78, 0x29, 0x7E, 0x00, 0x29, 0x01, 0xD1, 0x0C, 0x21, 0x00, 0xE0, 0x03, 0x21
	.byte 0x08, 0x43, 0x28, 0x70, 0x53, 0x46, 0x5C, 0x46, 0x01, 0x3E, 0x03, 0xDD, 0x50, 0x20, 0x2D, 0x18
	.byte 0x5B, 0x00, 0x6B, 0xE7, 0xF8, 0x68, 0x01, 0x30, 0xF8, 0x60, 0x00, 0x2C, 0x03, 0xD1, 0x80, 0x20
	.byte 0x00, 0x06, 0x78, 0x60, 0x5A, 0xE0, 0x7C, 0x60, 0x78, 0x8C, 0x96, 0x38, 0x78, 0x84, 0x96, 0x28
	.byte 0x00, 0xD3, 0x57, 0xE7, 0x3A, 0x7A, 0xFD, 0x6A, 0x28, 0x78, 0x80, 0x21, 0x01, 0x42, 0x48, 0xD0
	.byte 0x0F, 0x21, 0x01, 0x42, 0x45, 0xD0, 0x91, 0x46, 0x38, 0x1C, 0x29, 0x1C, 0x00, 0xF0, 0xFC, 0xFE
	.byte 0x2C, 0x6A, 0x00, 0x2C, 0x38, 0xD0, 0x21, 0x78, 0xC7, 0x20, 0x08, 0x42, 0x03, 0xD1, 0x20, 0x1C
	.byte 0x00, 0xF0, 0x0C, 0xFC, 0x2D, 0xE0, 0x60, 0x78, 0x07, 0x26, 0x06, 0x40, 0x2B, 0x78, 0x03, 0x20
	.byte 0x18, 0x42, 0x07, 0xD0, 0x00, 0xF0, 0x64, 0xF8, 0x00, 0x2E, 0x03, 0xD0, 0x60, 0x7F, 0x01, 0x21
	.byte 0x08, 0x43, 0x60, 0x77, 0x2B, 0x78, 0x0C, 0x20, 0x18, 0x42, 0x1A, 0xD0, 0x21, 0x7A, 0x08, 0x20
	.byte 0x28, 0x56, 0x0A, 0x18, 0x00, 0xD5, 0x00, 0x22, 0x00, 0x2E, 0x0C, 0xD0, 0x40, 0x46, 0x03, 0x6B
	.byte 0x11, 0x1C, 0x6A, 0x7A, 0x30, 0x1C, 0x00, 0xF0, 0x21, 0xF8, 0x20, 0x62, 0x60, 0x7F, 0x02, 0x21
	.byte 0x08, 0x43, 0x60, 0x77, 0x05, 0xE0, 0x11, 0x1C, 0x6A, 0x7A, 0x60, 0x6A, 0x00, 0xF0, 0xA0, 0xF9
	.byte 0x20, 0x62, 0x64, 0x6B, 0x00, 0x2C, 0xC6, 0xD1, 0x28, 0x78, 0xF0, 0x21, 0x08, 0x40, 0x28, 0x70
	.byte 0x4A, 0x46, 0x01, 0x3A, 0x02, 0xDD, 0x50, 0x20, 0x2D, 0x18, 0xAD, 0xDC, 0x06, 0x48, 0x78, 0x63
	.byte 0xFF, 0xBC, 0x80, 0x46, 0x89, 0x46, 0x92, 0x46, 0x9B, 0x46, 0x08, 0xBC

	THUMB_FUNC_START sub_805920C
sub_805920C: @ 0x0805920C
	bx r3
	.byte 0x00, 0x00
	.byte 0xD0, 0xA8, 0xAE, 0x08
_08059214: .4byte 0x03007FF0
_08059218: .4byte 0x68736D53

	THUMB_FUNC_START sub_805921C
sub_805921C: @ 0x0805921C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _08059254
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08059252
	movs r6, #0
_08059230:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805924A
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _08059248
	ldr r3, _0805925C
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_805920C
_08059248:
	strb r6, [r4]
_0805924A:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08059230
_08059252:
	str r4, [r5, #0x20]
_08059254:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805925C: .4byte 0x03007FF0

	THUMB_FUNC_START sub_8059260
sub_8059260: @ 0x08059260
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08059278
	movs r0, #0xff
_08059278:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _0805928C
	movs r0, #0xff
_0805928C:
	strb r0, [r4, #3]
	bx lr

	THUMB_FUNC_START sub_8059290
sub_8059290: @ 0x08059290
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _08059488
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _0805948C
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080592D6
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080592D4
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080592D4
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_080592D4:
	str r3, [r5, #0x40]
_080592D6:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _08059328
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _080592F6
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _080592F8
_080592F6:
	adds r0, r3, #0
_080592F8:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _08059310
	b _08059476
_08059310:
	movs r0, #0x80
	tst r0, r2
	beq _0805932C
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _08059324
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_08059324:
	ldrb r3, [r6, #1]
	b _0805932C
_08059328:
	mov sb, r4
	ldrb r3, [r5, #5]
_0805932C:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _0805933C
	movs r0, #0xff
_0805933C:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _0805937C
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _08059354
	b _08059476
_08059354:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080593D0
	movs r0, #0x40
	tst r0, r1
	bne _080593D0
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _080593D0
	beq _08059374
	b _08059476
_08059374:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _080593D0
	b _08059476
_0805937C:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_0805938A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080593D0
	movs r0, #0x40
	tst r0, r1
	beq _080593A4
	cmp r2, #0
	bne _080593A8
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _080593C2
_080593A4:
	cmp r2, #0
	bne _080593C4
_080593A8:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _080593B4
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _080593C2
_080593B4:
	bhi _080593C4
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _080593C0
	adds r7, r0, #0
	b _080593C2
_080593C0:
	blo _080593C4
_080593C2:
	mov r8, r4
_080593C4:
	adds r4, #0x40
	subs r3, #1
	bgt _0805938A
	mov r4, r8
	cmp r4, #0
	beq _08059476
_080593D0:
	adds r0, r4, #0
	bl sub_805999C
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _080593E4
	str r4, [r3, #0x30]
_080593E4:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _080593F6
	adds r1, r5, #0
	bl sub_80594D0
_080593F6:
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_8059F68
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl sub_8059260
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _08059430
	movs r3, #0
_08059430:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _0805945E
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _0805944A
	movs r0, #0x70
	tst r0, r1
	bne _0805944C
_0805944A:
	movs r1, #8
_0805944C:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_805920C
	b _08059468
_0805945E:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl sub_8059520
_08059468:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_08059476:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_08059488: .4byte 0x03007FF0
_0805948C: .4byte 0x08AEA8D0

	THUMB_FUNC_START sub_8059490
sub_8059490: @ 0x08059490
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _080594A2
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _080594A4
_080594A2:
	ldrb r3, [r1, #5]
_080594A4:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _080594CC
	movs r4, #0x83
	movs r5, #0x40
_080594AE:
	ldrb r2, [r1]
	tst r2, r4
	beq _080594C6
	tst r2, r5
	bne _080594C6
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _080594C6
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _080594CC
_080594C6:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _080594AE
_080594CC:
	pop {r4, r5}
	bx lr

	THUMB_FUNC_START sub_80594D0
sub_80594D0: @ 0x080594D0
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _080594E0
	movs r2, #0xc
	b _080594E2
_080594E0:
	movs r2, #3
_080594E2:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80594EC
sub_80594EC: @ 0x080594EC
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80594F8
sub_80594F8: @ 0x080594F8
	mov ip, lr
	bl sub_80594EC
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _08059508
	bl sub_80594D0
_08059508:
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805950C
sub_805950C: @ 0x0805950C
	mov ip, lr
	bl sub_80594EC
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _0805951C
	bl sub_80594D0
_0805951C:
	bx ip
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8059520
sub_8059520: @ 0x08059520
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _08059534
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_08059534:
	ldr r3, _0805957C
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _08059580
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl sub_8058904
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl sub_8058904
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805957C: .4byte 0x08AEA6EC
_08059580: .4byte 0x08AEA7A0
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8059588
sub_8059588: @ 0x08059588
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _0805959C
	cmp r3, r0
	bne _0805959A
	ldr r0, [r2, #4]
	ldr r1, _080595A0
	ands r0, r1
	str r0, [r2, #4]
_0805959A:
	bx lr
	.align 2, 0
_0805959C: .4byte 0x68736D53
_080595A0: .4byte 0x7FFFFFFF

	THUMB_FUNC_START sub_80595A4
sub_80595A4: @ 0x080595A4
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080595C0
	cmp r3, r0
	bne _080595BC
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_080595BC:
	bx lr
	.align 2, 0
_080595C0: .4byte 0x68736D53

	THUMB_FUNC_START sub_80595C4
sub_80595C4: @ 0x080595C4
	push {r4, r5, r6, lr}
	ldr r0, _08059618
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _0805961C
	ldr r2, _08059620
	bl CpuSet
	ldr r0, _08059624
	bl sub_80599C4
	ldr r0, _08059628
	bl sub_8059880
	ldr r0, _0805962C
	bl sub_8059B60
	ldr r0, _08059630
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08059612
	ldr r5, _08059634
	adds r6, r0, #0
_080595F6:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_8059D04
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _08059638
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _080595F6
_08059612:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059618: .4byte 0x08058999
_0805961C: .4byte 0x03000000
_08059620: .4byte 0x04000100
_08059624: .4byte 0x020245C0
_08059628: .4byte 0x02025600
_0805962C: .4byte 0x0097FC00
_08059630: .4byte 0x00000012
_08059634: .4byte 0x08AFBD0C
_08059638: .4byte 0x02025AC0

	THUMB_FUNC_START sub_805963C
sub_805963C: @ 0x0805963C
	push {lr}
	bl sub_8058914
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8059648
sub_8059648: @ 0x08059648
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _0805966C
	ldr r1, _08059670
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_8059D7C
	pop {r0}
	bx r0
	.align 2, 0
_0805966C: .4byte 0x08AFBD0C
_08059670: .4byte 0x08AFBDE4

	THUMB_FUNC_START sub_8059674
sub_8059674: @ 0x08059674
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080596A0
	ldr r1, _080596A4
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _080596A8
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_8059D7C
	b _080596BC
	.align 2, 0
_080596A0: .4byte 0x08AFBD0C
_080596A4: .4byte 0x08AFBDE4
_080596A8:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080596B4
	cmp r2, #0
	bge _080596BC
_080596B4:
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_8059D7C
_080596BC:
	pop {r0}
	bx r0
	.byte 0x00, 0xB5, 0x00, 0x04, 0x09, 0x4A, 0x0A, 0x49, 0x40, 0x0B, 0x40, 0x18, 0x83, 0x88, 0x59, 0x00
	.byte 0xC9, 0x18, 0x89, 0x00, 0x89, 0x18, 0x09, 0x68, 0x0B, 0x68, 0x02, 0x68, 0x93, 0x42, 0x09, 0xD0
	.byte 0x08, 0x1C, 0x11, 0x1C, 0x00, 0xF0, 0x4A, 0xFB, 0x12, 0xE0, 0x00, 0x00, 0x0C, 0xBD, 0xAF, 0x08
	.byte 0xE4, 0xBD, 0xAF, 0x08, 0x4A, 0x68, 0x88, 0x88, 0x00, 0x28, 0x04, 0xD1, 0x08, 0x1C, 0x19, 0x1C
	.byte 0x00, 0xF0, 0x3C, 0xFB, 0x04, 0xE0, 0x00, 0x2A, 0x02, 0xDA, 0x08, 0x1C, 0xFF, 0xF7, 0x3C, 0xFF
	.byte 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_8059714
sub_8059714: @ 0x08059714
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08059740
	ldr r1, _08059744
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0805973A
	adds r0, r2, #0
	bl sub_8059E60
_0805973A:
	pop {r0}
	bx r0
	.align 2, 0
_08059740: .4byte 0x08AFBD0C
_08059744: .4byte 0x08AFBDE4
	.byte 0x00, 0xB5, 0x00, 0x04, 0x09, 0x4A, 0x0A, 0x49
	.byte 0x40, 0x0B, 0x40, 0x18, 0x83, 0x88, 0x59, 0x00, 0xC9, 0x18, 0x89, 0x00, 0x89, 0x18, 0x0A, 0x68
	.byte 0x11, 0x68, 0x00, 0x68, 0x81, 0x42, 0x02, 0xD1, 0x10, 0x1C, 0xFF, 0xF7, 0x0D, 0xFF, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x0C, 0xBD, 0xAF, 0x08, 0xE4, 0xBD, 0xAF, 0x08

	THUMB_FUNC_START sub_805977C
sub_805977C: @ 0x0805977C
	push {r4, r5, lr}
	ldr r0, _080597A0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0805979A
	ldr r5, _080597A4
	adds r4, r0, #0
_0805978C:
	ldr r0, [r5]
	bl sub_8059E60
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _0805978C
_0805979A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080597A0: .4byte 0x00000012
_080597A4: .4byte 0x08AFBD0C
	.byte 0x00, 0xB5, 0xFF, 0xF7, 0xED, 0xFE, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x08, 0x48, 0x00, 0x04, 0x00, 0x0C, 0x00, 0x28, 0x08, 0xD0
	.byte 0x06, 0x4D, 0x04, 0x1C, 0x28, 0x68, 0xFF, 0xF7, 0xDF, 0xFE, 0x0C, 0x35, 0x01, 0x3C, 0x00, 0x2C
	.byte 0xF8, 0xD1, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x12, 0x00, 0x00, 0x00, 0x0C, 0xBD, 0xAF, 0x08

	THUMB_FUNC_START sub_80597E0
sub_80597E0: @ 0x080597E0
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_80595A4
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x02, 0x1C, 0x09, 0x04, 0x09, 0x0C, 0x53, 0x6B, 0x03, 0x48, 0x83, 0x42, 0x03, 0xD1, 0xD1, 0x84
	.byte 0x91, 0x84, 0x02, 0x48, 0x10, 0x85, 0x70, 0x47, 0x53, 0x6D, 0x73, 0x68, 0x01, 0x01, 0x00, 0x00
	.byte 0x02, 0x1C, 0x09, 0x04, 0x09, 0x0C, 0x53, 0x6B, 0x05, 0x48, 0x83, 0x42, 0x07, 0xD1, 0xD1, 0x84
	.byte 0x91, 0x84, 0x02, 0x20, 0x10, 0x85, 0x50, 0x68, 0x02, 0x49, 0x08, 0x40, 0x50, 0x60, 0x70, 0x47
	.byte 0x53, 0x6D, 0x73, 0x68, 0xFF, 0xFF, 0xFF, 0x7F, 0xF0, 0xB5, 0x05, 0x7A, 0xC4, 0x6A, 0x00, 0x2D
	.byte 0x1B, 0xDD, 0x80, 0x27, 0x21, 0x78, 0x38, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x11, 0xD0, 0x40, 0x26
	.byte 0x30, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x0C, 0xD0, 0x20, 0x1C, 0x00, 0xF0, 0xA9, 0xF8, 0x27, 0x70
	.byte 0x02, 0x20, 0xE0, 0x73, 0xE6, 0x74, 0x16, 0x20, 0x60, 0x76, 0x21, 0x1C, 0x24, 0x31, 0x01, 0x20
	.byte 0x08, 0x70, 0x01, 0x3D, 0x50, 0x34, 0x00, 0x2D, 0xE4, 0xDC, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_8059880
sub_8059880: @ 0x08059880
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08059948
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _0805994C
	movs r2, #0
	strh r2, [r3]
	ldr r0, _08059950
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _08059954
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _08059958
	cmp r6, r0
	bne _08059940
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _0805995C
	ldr r0, _08059960
	str r0, [r1, #0x20]
	ldr r0, _08059964
	str r0, [r1, #0x44]
	ldr r0, _08059968
	str r0, [r1, #0x4c]
	ldr r0, _0805996C
	str r0, [r1, #0x70]
	ldr r0, _08059970
	str r0, [r1, #0x74]
	ldr r0, _08059974
	str r0, [r1, #0x78]
	ldr r0, _08059978
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _0805997C
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _08059980
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _08059984
	str r0, [r4, #0x28]
	ldr r0, _08059988
	str r0, [r4, #0x2c]
	ldr r0, _0805998C
	str r0, [r4, #0x30]
	ldr r0, _08059990
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _08059994
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_08059940:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059948: .4byte 0x04000084
_0805994C: .4byte 0x04000080
_08059950: .4byte 0x04000063
_08059954: .4byte 0x03007FF0
_08059958: .4byte 0x68736D53
_0805995C: .4byte 0x02025570
_08059960: .4byte 0x0805A83D
_08059964: .4byte 0x080594F9
_08059968: .4byte 0x0805950D
_0805996C: .4byte 0x0805A995
_08059970: .4byte 0x08059491
_08059974: .4byte 0x08059ABD
_08059978: .4byte 0x0805921D
_0805997C: .4byte 0x08059EA1
_08059980: .4byte 0x08059F69
_08059984: .4byte 0x0805A17D
_08059988: .4byte 0x0805A0C5
_0805998C: .4byte 0x0805A01D
_08059990: .4byte 0x00000000
_08059994: .4byte 0x05000040
	.byte 0x2A, 0xDF, 0x70, 0x47

	THUMB_FUNC_START sub_805999C
sub_805999C: @ 0x0805999C
	push {lr}
	ldr r1, _080599AC
	ldr r1, [r1]
	bl sub_805AABC
	pop {r0}
	bx r0
	.align 2, 0
_080599AC: .4byte 0x020255F8

	THUMB_FUNC_START sub_80599B0
sub_80599B0: @ 0x080599B0
	push {lr}
	ldr r1, _080599C0
	ldr r1, [r1]
	bl sub_805AABC
	pop {r0}
	bx r0
	.align 2, 0
_080599C0: .4byte 0x020255FC

	THUMB_FUNC_START sub_80599C4
sub_80599C4: @ 0x080599C4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _08059A7C
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _080599E0
	ldr r0, _08059A80
	str r0, [r1]
_080599E0:
	ldr r1, _08059A84
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _080599EE
	ldr r0, _08059A80
	str r0, [r1]
_080599EE:
	ldr r0, _08059A88
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _08059A8C
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _08059A90
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08059A94
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08059A98
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08059A9C
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08059AA0
	str r0, [r1]
	ldr r0, _08059AA4
	str r5, [r0]
	str r3, [sp]
	ldr r2, _08059AA8
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _08059AAC
	str r0, [r5, #0x38]
	ldr r0, _08059AB0
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _08059AB4
	adds r0, r4, #0
	bl sub_8058DA4
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_8059ABC
	ldr r0, _08059AB8
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059A7C: .4byte 0x040000C4
_08059A80: .4byte 0x84400004
_08059A84: .4byte 0x040000D0
_08059A88: .4byte 0x040000C6
_08059A8C: .4byte 0x04000084
_08059A90: .4byte 0x0000A90E
_08059A94: .4byte 0x04000089
_08059A98: .4byte 0x040000BC
_08059A9C: .4byte 0x040000A0
_08059AA0: .4byte 0x040000A4
_08059AA4: .4byte 0x03007FF0
_08059AA8: .4byte 0x050003EC
_08059AAC: .4byte 0x08059291
_08059AB0: .4byte 0x0805AAB5
_08059AB4: .4byte 0x02025570
_08059AB8: .4byte 0x68736D53

	THUMB_FUNC_START sub_8059ABC
sub_8059ABC: @ 0x08059ABC
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08059B3C
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _08059B40
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl sub_805AF28
	strb r0, [r4, #0xb]
	ldr r0, _08059B44
	muls r0, r5, r0
	ldr r1, _08059B48
	adds r0, r0, r1
	ldr r1, _08059B4C
	bl sub_805AF28
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_805AF28
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _08059B50
	strh r6, [r0]
	ldr r4, _08059B54
	ldr r0, _08059B58
	adds r1, r5, #0
	bl sub_805AF28
	rsbs r0, r0, #0
	strh r0, [r4]
	bl sub_8059CC8
	ldr r1, _08059B5C
_08059B20:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _08059B20
	ldr r1, _08059B5C
_08059B28:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _08059B28
	ldr r1, _08059B50
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059B3C: .4byte 0x03007FF0
_08059B40: .4byte 0x08AEA7D0
_08059B44: .4byte 0x00091D1B
_08059B48: .4byte 0x00001388
_08059B4C: .4byte 0x00002710
_08059B50: .4byte 0x04000102
_08059B54: .4byte 0x04000100
_08059B58: .4byte 0x00044940
_08059B5C: .4byte 0x04000006

	THUMB_FUNC_START sub_8059B60
sub_8059B60: @ 0x08059B60
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08059BEC
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08059BF0
	cmp r1, r0
	bne _08059BE6
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _08059B82
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_08059B82:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _08059BA2
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_08059B98:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _08059B98
_08059BA2:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _08059BB0
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_08059BB0:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _08059BCE
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _08059BF4
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_08059BCE:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _08059BE2
	bl sub_8059C4C
	adds r0, r4, #0
	bl sub_8059ABC
_08059BE2:
	ldr r0, _08059BF0
	str r0, [r5]
_08059BE6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059BEC: .4byte 0x03007FF0
_08059BF0: .4byte 0x68736D53
_08059BF4: .4byte 0x04000089
	.byte 0xF0, 0xB5, 0x12, 0x48, 0x06, 0x68, 0x31, 0x68
	.byte 0x11, 0x48, 0x81, 0x42, 0x1B, 0xD1, 0x48, 0x1C, 0x30, 0x60, 0x0C, 0x25, 0x34, 0x1C, 0x50, 0x34
	.byte 0x00, 0x20, 0x20, 0x70, 0x01, 0x3D, 0x40, 0x34, 0x00, 0x2D, 0xFA, 0xDC, 0xF4, 0x69, 0x00, 0x2C
	.byte 0x0B, 0xD0, 0x01, 0x25, 0x00, 0x27, 0x28, 0x06, 0x00, 0x0E, 0xF1, 0x6A, 0x00, 0xF0, 0x46, 0xFF
	.byte 0x27, 0x70, 0x01, 0x35, 0x40, 0x34, 0x04, 0x2D, 0xF5, 0xDD, 0x03, 0x48, 0x30, 0x60, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0xF0, 0x7F, 0x00, 0x03, 0x53, 0x6D, 0x73, 0x68

	THUMB_FUNC_START sub_8059C4C
sub_8059C4C: @ 0x08059C4C
	push {lr}
	sub sp, #4
	ldr r0, _08059CAC
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08059CB0
	adds r0, r1, r3
	cmp r0, #1
	bhi _08059CA4
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08059CB4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _08059C76
	ldr r0, _08059CB8
	str r0, [r1]
_08059C76:
	ldr r1, _08059CBC
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08059C84
	ldr r0, _08059CB8
	str r0, [r1]
_08059C84:
	ldr r0, _08059CC0
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _08059CC4
	mov r0, sp
	bl CpuSet
_08059CA4:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08059CAC: .4byte 0x03007FF0
_08059CB0: .4byte 0x978C92AD
_08059CB4: .4byte 0x040000C4
_08059CB8: .4byte 0x84400004
_08059CBC: .4byte 0x040000D0
_08059CC0: .4byte 0x040000C6
_08059CC4: .4byte 0x05000318

	THUMB_FUNC_START sub_8059CC8
sub_8059CC8: @ 0x08059CC8
	push {r4, lr}
	ldr r0, _08059CF8
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _08059CFC
	cmp r3, r0
	beq _08059CF0
	ldr r0, _08059D00
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r1, r4, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_08059CF0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08059CF8: .4byte 0x03007FF0
_08059CFC: .4byte 0x68736D53
_08059D00: .4byte 0x040000C6

	THUMB_FUNC_START sub_8059D04
sub_8059D04: @ 0x08059D04
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _08059D68
	cmp r4, #0x10
	bls _08059D18
	movs r4, #0x10
_08059D18:
	ldr r0, _08059D70
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08059D74
	cmp r1, r0
	bne _08059D68
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl sub_80599B0
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _08059D4C
	movs r1, #0
_08059D3E:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _08059D3E
_08059D4C:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08059D5C
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_08059D5C:
	str r7, [r5, #0x24]
	ldr r0, _08059D78
	str r0, [r5, #0x20]
	ldr r0, _08059D74
	str r0, [r5]
	str r0, [r7, #0x34]
_08059D68:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059D70: .4byte 0x03007FF0
_08059D74: .4byte 0x68736D53
_08059D78: .4byte 0x08058FB5

	THUMB_FUNC_START sub_8059D7C
sub_8059D7C: @ 0x08059D7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _08059E5C
	cmp r1, r0
	bne _08059E52
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _08059DBE
	ldr r0, [r5]
	cmp r0, #0
	beq _08059DA8
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08059DB4
_08059DA8:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08059DBE
	cmp r1, #0
	blt _08059DBE
_08059DB4:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _08059E52
_08059DBE:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _08059E1E
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08059E3E
	mov r8, r6
_08059DF2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_805921C
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _08059E1E
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08059DF2
_08059E1E:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08059E3E
	movs r1, #0
	mov r8, r1
_08059E28:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_805921C
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08059E28
_08059E3E:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _08059E4E
	ldrb r0, [r7, #3]
	bl sub_8059B60
_08059E4E:
	ldr r0, _08059E5C
	str r0, [r5, #0x34]
_08059E52:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059E5C: .4byte 0x68736D53

	THUMB_FUNC_START sub_8059E60
sub_8059E60: @ 0x08059E60
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _08059E9C
	cmp r1, r0
	bne _08059E96
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _08059E92
_08059E82:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_805921C
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _08059E82
_08059E92:
	ldr r0, _08059E9C
	str r0, [r6, #0x34]
_08059E96:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059E9C: .4byte 0x68736D53

	THUMB_FUNC_START sub_8059EA0
sub_8059EA0: @ 0x08059EA0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _08059F62
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _08059EE0
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08059F62
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08059EE4
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _08059F36
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _08059F36
	.align 2, 0
_08059EE0: .4byte 0x0000FFFF
_08059EE4:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08059F36
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08059F16
_08059EFA:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_805921C
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _08059F0E
	strb r0, [r4]
_08059F0E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08059EFA
_08059F16:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _08059F2A
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _08059F2E
_08059F2A:
	movs r0, #0x80
	lsls r0, r0, #0x18
_08059F2E:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _08059F62
_08059F36:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08059F62
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_08059F44:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08059F5A
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_08059F5A:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08059F44
_08059F62:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8059F68
sub_8059F68: @ 0x08059F68
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08059FCC
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _08059F90
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_08059F90:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _08059FA6
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_08059FA6:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08059FB2
	adds r1, r0, #0
	b _08059FB8
_08059FB2:
	cmp r1, #0x7f
	ble _08059FB8
	movs r1, #0x7f
_08059FB8:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_08059FCC:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _0805A010
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _0805A00A
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_0805A00A:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_0805A010:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805A01C
sub_805A01C: @ 0x0805A01C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _0805A054
	cmp r5, #0x14
	bhi _0805A038
	movs r5, #0
	b _0805A046
_0805A038:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _0805A046
	movs r5, #0x3b
_0805A046:
	ldr r0, _0805A050
	adds r0, r5, r0
	ldrb r0, [r0]
	b _0805A0B6
	.align 2, 0
_0805A050: .4byte 0x08AEA884
_0805A054:
	cmp r5, #0x23
	bhi _0805A060
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _0805A072
_0805A060:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _0805A072
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_0805A072:
	ldr r3, _0805A0BC
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _0805A0C0
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_0805A0B6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805A0BC: .4byte 0x08AEA7E8
_0805A0C0: .4byte 0x08AEA86C

	THUMB_FUNC_START sub_805A0C4
sub_805A0C4: @ 0x0805A0C4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _0805A0EC
	cmp r0, #2
	bgt _0805A0D8
	cmp r0, #1
	beq _0805A0DE
	b _0805A100
_0805A0D8:
	cmp r1, #3
	beq _0805A0F4
	b _0805A100
_0805A0DE:
	ldr r1, _0805A0E8
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _0805A108
	.align 2, 0
_0805A0E8: .4byte 0x04000063
_0805A0EC:
	ldr r1, _0805A0F0
	b _0805A102
	.align 2, 0
_0805A0F0: .4byte 0x04000069
_0805A0F4:
	ldr r1, _0805A0FC
	movs r0, #0
	b _0805A10A
	.align 2, 0
_0805A0FC: .4byte 0x04000070
_0805A100:
	ldr r1, _0805A110
_0805A102:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_0805A108:
	movs r0, #0x80
_0805A10A:
	strb r0, [r1]
	bx lr
	.align 2, 0
_0805A110: .4byte 0x04000079

	THUMB_FUNC_START sub_805A114
sub_805A114: @ 0x0805A114
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _0805A134
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _0805A140
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _0805A14E
_0805A134:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _0805A140
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _0805A14E
_0805A140:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _0805A15E
_0805A14E:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _0805A160
	movs r0, #0xf
_0805A15E:
	strb r0, [r1, #0xa]
_0805A160:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805A17C
sub_805A17C: @ 0x0805A17C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _0805A19C
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _0805A1A0
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _0805A1A6
	.align 2, 0
_0805A19C: .4byte 0x03007FF0
_0805A1A0:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_0805A1A6:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_0805A1AC:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _0805A1C2
	b _0805A5AC
_0805A1C2:
	cmp r6, #2
	beq _0805A1F4
	cmp r6, #2
	bgt _0805A1D0
	cmp r6, #1
	beq _0805A1D6
	b _0805A22C
_0805A1D0:
	cmp r6, #3
	beq _0805A20C
	b _0805A22C
_0805A1D6:
	ldr r0, _0805A1E8
	str r0, [sp, #8]
	ldr r7, _0805A1EC
	ldr r2, _0805A1F0
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _0805A23C
	.align 2, 0
_0805A1E8: .4byte 0x04000060
_0805A1EC: .4byte 0x04000062
_0805A1F0: .4byte 0x04000063
_0805A1F4:
	ldr r0, _0805A200
	str r0, [sp, #8]
	ldr r7, _0805A204
	ldr r2, _0805A208
	b _0805A234
	.align 2, 0
_0805A200: .4byte 0x04000061
_0805A204: .4byte 0x04000068
_0805A208: .4byte 0x04000069
_0805A20C:
	ldr r0, _0805A220
	str r0, [sp, #8]
	ldr r7, _0805A224
	ldr r2, _0805A228
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _0805A23C
	.align 2, 0
_0805A220: .4byte 0x04000070
_0805A224: .4byte 0x04000072
_0805A228: .4byte 0x04000073
_0805A22C:
	ldr r0, _0805A28C
	str r0, [sp, #8]
	ldr r7, _0805A290
	ldr r2, _0805A294
_0805A234:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_0805A23C:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0805A332
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _0805A356
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl sub_805A114
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _0805A2A4
	cmp r6, #2
	bgt _0805A298
	cmp r6, #1
	beq _0805A29E
	b _0805A2F8
	.align 2, 0
_0805A28C: .4byte 0x04000071
_0805A290: .4byte 0x04000078
_0805A294: .4byte 0x04000079
_0805A298:
	cmp r6, #3
	beq _0805A2B0
	b _0805A2F8
_0805A29E:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_0805A2A4:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _0805A304
_0805A2B0:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _0805A2D8
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _0805A2EC
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_0805A2D8:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _0805A2F0
	movs r0, #0xc0
	b _0805A312
	.align 2, 0
_0805A2EC: .4byte 0x04000090
_0805A2F0:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _0805A314
_0805A2F8:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_0805A304:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _0805A312
	movs r0, #0x40
_0805A312:
	strb r0, [r4, #0x1a]
_0805A314:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _0805A32E
	b _0805A46A
_0805A32E:
	strb r2, [r4, #9]
	b _0805A498
_0805A332:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0805A364
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _0805A356
	b _0805A4AA
_0805A356:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_805A0C4
	movs r0, #0
	strb r0, [r4]
	b _0805A5A8
_0805A364:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _0805A3A4
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0805A3A4
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _0805A3D6
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _0805A498
	ldrb r2, [r4, #7]
	mov r8, r2
	b _0805A498
_0805A3A4:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0805A498
	cmp r6, #3
	bne _0805A3B6
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_0805A3B6:
	adds r0, r4, #0
	bl sub_805A114
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _0805A40A
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0805A406
_0805A3D6:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805A356
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _0805A4AA
	movs r2, #8
	mov r8, r2
	b _0805A4AA
_0805A406:
	ldrb r0, [r4, #7]
	b _0805A496
_0805A40A:
	cmp r0, #1
	bne _0805A416
_0805A40E:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _0805A496
_0805A416:
	cmp r0, #2
	bne _0805A45A
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _0805A456
_0805A42E:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0805A43E
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _0805A3D6
_0805A43E:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _0805A40E
	movs r0, #8
	mov r8, r0
	b _0805A40E
_0805A456:
	ldrb r0, [r4, #5]
	b _0805A496
_0805A45A:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _0805A494
_0805A46A:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _0805A42E
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _0805A498
	ldrb r2, [r4, #5]
	mov r8, r2
	b _0805A498
_0805A494:
	ldrb r0, [r4, #4]
_0805A496:
	strb r0, [r4, #0xb]
_0805A498:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _0805A4AA
	subs r0, #1
	str r0, [sp]
	b _0805A3A4
_0805A4AA:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _0805A522
	cmp r6, #3
	bgt _0805A4EA
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _0805A4EA
	ldr r0, _0805A4D4
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _0805A4DC
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _0805A4D8
	b _0805A4E6
	.align 2, 0
_0805A4D4: .4byte 0x04000089
_0805A4D8: .4byte 0x000007FC
_0805A4DC:
	cmp r0, #0x7f
	bgt _0805A4EA
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _0805A4F8
_0805A4E6:
	ands r0, r1
	str r0, [r4, #0x20]
_0805A4EA:
	cmp r6, #4
	beq _0805A4FC
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _0805A50A
	.align 2, 0
_0805A4F8: .4byte 0x000007FE
_0805A4FC:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_0805A50A:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_0805A522:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _0805A5A8
	ldr r1, _0805A56C
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _0805A574
	ldr r0, _0805A570
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _0805A5A8
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _0805A5A8
	.align 2, 0
_0805A56C: .4byte 0x04000081
_0805A570: .4byte 0x08AEA8C0
_0805A574:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _0805A5A8
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805A5A8
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_0805A5A8:
	movs r0, #0
	strb r0, [r4, #0x1d]
_0805A5AC:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _0805A5B6
	b _0805A1AC
_0805A5B6:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x10, 0xB5, 0x02, 0x1C, 0x09, 0x04, 0x09, 0x0C
	.byte 0x53, 0x6B, 0x06, 0x48, 0x83, 0x42, 0x05, 0xD1, 0xD1, 0x83, 0x94, 0x8B, 0x08, 0x1C, 0x60, 0x43
	.byte 0x00, 0x12, 0x10, 0x84, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x53, 0x6D, 0x73, 0x68

	THUMB_FUNC_START sub_805A5F0
sub_805A5F0: @ 0x0805A5F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _0805A654
	cmp r3, r0
	bne _0805A648
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _0805A644
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_0805A620:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _0805A63A
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _0805A63A
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_0805A63A:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _0805A620
_0805A644:
	ldr r0, _0805A654
	str r0, [r4, #0x34]
_0805A648:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A654: .4byte 0x68736D53
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46
	.byte 0xE0, 0xB4, 0x04, 0x1C, 0x09, 0x04, 0x09, 0x0C, 0x8C, 0x46, 0x12, 0x04, 0x16, 0x0C, 0x63, 0x6B
	.byte 0x15, 0x48, 0x83, 0x42, 0x21, 0xD1, 0x58, 0x1C, 0x60, 0x63, 0x22, 0x7A, 0xE3, 0x6A, 0x01, 0x25
	.byte 0x00, 0x2A, 0x18, 0xDD, 0x80, 0x20, 0x81, 0x46, 0x30, 0x04, 0x07, 0x16, 0x0C, 0x20, 0x80, 0x46
	.byte 0x60, 0x46, 0x28, 0x40, 0x00, 0x28, 0x09, 0xD0, 0x19, 0x78, 0x48, 0x46, 0x08, 0x40, 0x00, 0x28
	.byte 0x04, 0xD0, 0xDF, 0x72, 0x5E, 0x73, 0x40, 0x46, 0x08, 0x43, 0x18, 0x70, 0x01, 0x3A, 0x50, 0x33
	.byte 0x6D, 0x00, 0x00, 0x2A, 0xEC, 0xDC, 0x04, 0x48, 0x60, 0x63, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x53, 0x6D, 0x73, 0x68, 0xF0, 0xB5, 0x4F, 0x46
	.byte 0x46, 0x46, 0xC0, 0xB4, 0x04, 0x1C, 0x09, 0x04, 0x0F, 0x0C, 0x12, 0x06, 0x16, 0x0E, 0x63, 0x6B
	.byte 0x13, 0x48, 0x83, 0x42, 0x1E, 0xD1, 0x58, 0x1C, 0x60, 0x63, 0x22, 0x7A, 0xE1, 0x6A, 0x01, 0x25
	.byte 0x00, 0x2A, 0x15, 0xDD, 0x80, 0x20, 0x80, 0x46, 0x03, 0x20, 0x84, 0x46, 0x38, 0x1C, 0x28, 0x40
	.byte 0x00, 0x28, 0x08, 0xD0, 0x0B, 0x78, 0x40, 0x46, 0x18, 0x40, 0x00, 0x28, 0x03, 0xD0, 0x4E, 0x75
	.byte 0x60, 0x46, 0x18, 0x43, 0x08, 0x70, 0x01, 0x3A, 0x50, 0x31, 0x6D, 0x00, 0x00, 0x2A, 0xED, 0xDC
	.byte 0x03, 0x48, 0x60, 0x63, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x53, 0x6D, 0x73, 0x68

	THUMB_FUNC_START sub_805A734
sub_805A734: @ 0x0805A734
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _0805A748
	movs r0, #0xc
	b _0805A74A
_0805A748:
	movs r0, #3
_0805A74A:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x06, 0x1C
	.byte 0x09, 0x04, 0x09, 0x0C, 0x8A, 0x46, 0x12, 0x06, 0x12, 0x0E, 0x90, 0x46, 0x71, 0x6B, 0x15, 0x48
	.byte 0x81, 0x42, 0x1F, 0xD1, 0x48, 0x1C, 0x70, 0x63, 0x35, 0x7A, 0xF4, 0x6A, 0x01, 0x27, 0x00, 0x2D
	.byte 0x16, 0xDD, 0xC1, 0x46, 0x50, 0x46, 0x38, 0x40, 0x00, 0x28, 0x0C, 0xD0, 0x80, 0x20, 0x21, 0x78
	.byte 0x08, 0x40, 0x00, 0x28, 0x07, 0xD0, 0x40, 0x46, 0xE0, 0x75, 0x49, 0x46, 0x00, 0x29, 0x02, 0xD1
	.byte 0x20, 0x1C, 0xFF, 0xF7, 0xC7, 0xFF, 0x01, 0x3D, 0x50, 0x34, 0x7F, 0x00, 0x00, 0x2D, 0xE9, 0xDC
	.byte 0x04, 0x48, 0x70, 0x63, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x53, 0x6D, 0x73, 0x68, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46
	.byte 0xE0, 0xB4, 0x06, 0x1C, 0x09, 0x04, 0x09, 0x0C, 0x8A, 0x46, 0x12, 0x06, 0x12, 0x0E, 0x90, 0x46
	.byte 0x71, 0x6B, 0x15, 0x48, 0x81, 0x42, 0x1F, 0xD1, 0x48, 0x1C, 0x70, 0x63, 0x35, 0x7A, 0xF4, 0x6A
	.byte 0x01, 0x27, 0x00, 0x2D, 0x16, 0xDD, 0xC1, 0x46, 0x50, 0x46, 0x38, 0x40, 0x00, 0x28, 0x0C, 0xD0
	.byte 0x80, 0x20, 0x21, 0x78, 0x08, 0x40, 0x00, 0x28, 0x07, 0xD0, 0x40, 0x46, 0x60, 0x76, 0x49, 0x46
	.byte 0x00, 0x29, 0x02, 0xD1, 0x20, 0x1C, 0xFF, 0xF7, 0x8D, 0xFF, 0x01, 0x3D, 0x50, 0x34, 0x7F, 0x00
	.byte 0x00, 0x2D, 0xE9, 0xDC, 0x04, 0x48, 0x70, 0x63, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46
	.byte 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x53, 0x6D, 0x73, 0x68

	THUMB_FUNC_START sub_805A83C
sub_805A83C: @ 0x0805A83C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _0805A860
	b _0805A98E
_0805A860:
	lsls r0, r5, #2
	ldr r1, _0805A86C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A86C: .4byte 0x0805A870
_0805A870: @ jump table
	.4byte _0805A8B8 @ case 0
	.4byte _0805A8BC @ case 1
	.4byte _0805A8C4 @ case 2
	.4byte _0805A8CC @ case 3
	.4byte _0805A8D6 @ case 4
	.4byte _0805A8E4 @ case 5
	.4byte _0805A8F2 @ case 6
	.4byte _0805A8FA @ case 7
	.4byte _0805A902 @ case 8
	.4byte _0805A90A @ case 9
	.4byte _0805A912 @ case 10
	.4byte _0805A91A @ case 11
	.4byte _0805A922 @ case 12
	.4byte _0805A930 @ case 13
	.4byte _0805A93E @ case 14
	.4byte _0805A94C @ case 15
	.4byte _0805A95A @ case 16
	.4byte _0805A968 @ case 17
_0805A8B8:
	strb r2, [r3]
	b _0805A98E
_0805A8BC:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _0805A98E
_0805A8C4:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _0805A98E
_0805A8CC:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _0805A98E
_0805A8D6:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _0805A98E
_0805A8E4:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _0805A98E
_0805A8F2:
	ldrb r3, [r3]
	cmp r3, r2
	beq _0805A974
	b _0805A988
_0805A8FA:
	ldrb r3, [r3]
	cmp r3, r2
	bne _0805A974
	b _0805A988
_0805A902:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _0805A974
	b _0805A988
_0805A90A:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _0805A974
	b _0805A988
_0805A912:
	ldrb r3, [r3]
	cmp r3, r2
	bls _0805A974
	b _0805A988
_0805A91A:
	ldrb r3, [r3]
	cmp r3, r2
	blo _0805A974
	b _0805A988
_0805A922:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _0805A974
	b _0805A988
_0805A930:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _0805A974
	b _0805A988
_0805A93E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _0805A974
	b _0805A988
_0805A94C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0805A974
	b _0805A988
_0805A95A:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _0805A974
	b _0805A988
_0805A968:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0805A988
_0805A974:
	ldr r0, _0805A984
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_805AAC0
	b _0805A98E
	.align 2, 0
_0805A984: .4byte 0x02025574
_0805A988:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_0805A98E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805A994
sub_805A994: @ 0x0805A994
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _0805A9B0
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl sub_805AAC0
	pop {r0}
	bx r0
	.align 2, 0
_0805A9B0: .4byte 0x08AEA904
	.byte 0x00, 0xB5, 0x03, 0x4A, 0x12, 0x68, 0x00, 0xF0, 0x81, 0xF8, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x70, 0x55, 0x02, 0x02, 0x10, 0xB5, 0x0A, 0x6C, 0x0C, 0x48, 0x04, 0x40
	.byte 0x10, 0x78, 0x04, 0x43, 0x50, 0x78, 0x03, 0x02, 0x0A, 0x48, 0x04, 0x40, 0x1C, 0x43, 0x90, 0x78
	.byte 0x03, 0x04, 0x09, 0x48, 0x04, 0x40, 0x1C, 0x43, 0xD0, 0x78, 0x03, 0x06, 0x07, 0x48, 0x04, 0x40
	.byte 0x1C, 0x43, 0x8C, 0x62, 0x04, 0x32, 0x0A, 0x64, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00
	.byte 0x08, 0x6C, 0x02, 0x78, 0x08, 0x1C, 0x24, 0x30, 0x02, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64
	.byte 0x70, 0x47, 0x00, 0x00, 0x08, 0x6C, 0x02, 0x78, 0x08, 0x1C, 0x2C, 0x30, 0x02, 0x70, 0x08, 0x6C
	.byte 0x01, 0x30, 0x08, 0x64, 0x70, 0x47, 0x00, 0x00, 0x08, 0x6C, 0x00, 0x78, 0x0A, 0x1C, 0x2D, 0x32
	.byte 0x10, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64, 0x70, 0x47, 0x00, 0x00, 0x08, 0x6C, 0x00, 0x78
	.byte 0x0A, 0x1C, 0x2E, 0x32, 0x10, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64, 0x70, 0x47, 0x00, 0x00
	.byte 0x08, 0x6C, 0x00, 0x78, 0x0A, 0x1C, 0x2F, 0x32, 0x10, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64
	.byte 0x70, 0x47, 0x00, 0x00, 0x08, 0x6C, 0x02, 0x78, 0x8A, 0x77, 0x01, 0x30, 0x08, 0x64, 0x70, 0x47
	.byte 0x08, 0x6C, 0x02, 0x78, 0xCA, 0x77, 0x01, 0x30, 0x08, 0x64, 0x70, 0x47, 0x08, 0x6C, 0x00, 0x78
	.byte 0x0A, 0x1C, 0x26, 0x32, 0x10, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64, 0x70, 0x47, 0x00, 0x00
	.byte 0x08, 0x6C, 0x00, 0x78, 0x0A, 0x1C, 0x27, 0x32, 0x10, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START _call_via_r0
_call_via_r0: @ 0x0805AAB8
	bx r0
	.byte 0xC0, 0x46

	THUMB_FUNC_START sub_805AABC
sub_805AABC: @ 0x0805AABC
	bx r1
	.byte 0xC0, 0x46

	THUMB_FUNC_START sub_805AAC0
sub_805AAC0: @ 0x0805AAC0
	bx r2
	.byte 0xC0, 0x46

	THUMB_FUNC_START sub_805AAC4
sub_805AAC4: @ 0x0805AAC4
	bx r3
	.byte 0xC0, 0x46, 0x20, 0x47, 0xC0, 0x46, 0x28, 0x47, 0xC0, 0x46
	.byte 0x30, 0x47, 0xC0, 0x46, 0x38, 0x47, 0xC0, 0x46, 0x40, 0x47, 0xC0, 0x46, 0x48, 0x47, 0xC0, 0x46
	.byte 0x50, 0x47, 0xC0, 0x46, 0x58, 0x47, 0xC0, 0x46, 0x60, 0x47, 0xC0, 0x46, 0x68, 0x47, 0xC0, 0x46
	.byte 0x70, 0x47, 0xC0, 0x46

	THUMB_FUNC_START sub_805AAF4
sub_805AAF4: @ 0x0805AAF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	movs r4, #0
	str r4, [sp]
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, #0
	bge _0805AB24
	ldr r0, [sp]
	mvns r0, r0
	str r0, [sp]
	rsbs r0, r4, #0
	adds r6, r0, #0
	rsbs r1, r5, #0
	cmp r0, #0
	beq _0805AB1E
	subs r1, #1
_0805AB1E:
	adds r7, r1, #0
	adds r5, r7, #0
	adds r4, r6, #0
_0805AB24:
	cmp r3, #0
	bge _0805AB40
	ldr r1, [sp]
	mvns r1, r1
	str r1, [sp]
	rsbs r0, r2, #0
	str r0, [sp, #4]
	rsbs r2, r3, #0
	cmp r0, #0
	beq _0805AB3A
	subs r2, #1
_0805AB3A:
	str r2, [sp, #8]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
_0805AB40:
	adds r7, r2, #0
	adds r6, r3, #0
	mov sl, r4
	mov r8, r5
	cmp r6, #0
	beq _0805AB4E
	b _0805AD9C
_0805AB4E:
	cmp r7, r8
	bls _0805AC28
	ldr r0, _0805AB64
	cmp r7, r0
	bhi _0805AB68
	movs r1, #0
	cmp r7, #0xff
	bls _0805AB72
	movs r1, #8
	b _0805AB72
	.align 2, 0
_0805AB64: .4byte 0x0000FFFF
_0805AB68:
	ldr r0, _0805AC1C
	movs r1, #0x18
	cmp r7, r0
	bhi _0805AB72
	movs r1, #0x10
_0805AB72:
	ldr r0, _0805AC20
	lsrs r2, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	beq _0805AB9A
	lsls r7, r2
	mov r3, r8
	lsls r3, r2
	subs r1, r1, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
_0805AB9A:
	lsrs r0, r7, #0x10
	mov sb, r0
	ldr r1, _0805AC24
	ands r1, r7
	str r1, [sp, #0xc]
	mov r0, r8
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl sub_805B51C
	adds r6, r0, #0
	ldr r3, [sp, #0xc]
	adds r2, r6, #0
	muls r2, r3, r2
	lsls r4, r4, #0x10
	mov r1, sl
	lsrs r0, r1, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0805ABDA
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0805ABDA
	cmp r4, r2
	bhs _0805ABDA
	subs r6, #1
	adds r4, r4, r7
_0805ABDA:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r1, r0, #0
	ldr r3, [sp, #0xc]
	adds r2, r1, #0
	muls r2, r3, r2
	lsls r5, r5, #0x10
	ldr r0, _0805AC24
	mov r4, sl
	ands r4, r0
	orrs r5, r4
	cmp r5, r2
	bhs _0805AC12
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0805AC12
	cmp r5, r2
	bhs _0805AC12
	subs r1, #1
_0805AC12:
	lsls r6, r6, #0x10
	orrs r6, r1
	movs r0, #0
	str r0, [sp, #0x10]
	b _0805AEF2
	.align 2, 0
_0805AC1C: .4byte 0x00FFFFFF
_0805AC20: .4byte 0x08DF1828
_0805AC24: .4byte 0x0000FFFF
_0805AC28:
	cmp r2, #0
	bne _0805AC36
	movs r0, #1
	movs r1, #0
	bl sub_805B51C
	adds r7, r0, #0
_0805AC36:
	adds r1, r7, #0
	ldr r0, _0805AC48
	cmp r7, r0
	bhi _0805AC4C
	movs r2, #0
	cmp r7, #0xff
	bls _0805AC56
	movs r2, #8
	b _0805AC56
	.align 2, 0
_0805AC48: .4byte 0x0000FFFF
_0805AC4C:
	ldr r0, _0805AC74
	movs r2, #0x18
	cmp r7, r0
	bhi _0805AC56
	movs r2, #0x10
_0805AC56:
	ldr r0, _0805AC78
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _0805AC7C
	mov r1, r8
	subs r1, r1, r7
	mov r8, r1
	movs r2, #1
	str r2, [sp, #0x10]
	b _0805AD1A
	.align 2, 0
_0805AC74: .4byte 0x00FFFFFF
_0805AC78: .4byte 0x08DF1828
_0805AC7C:
	subs r1, r1, r2
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r7, #0x10
	mov sb, r0
	ldr r1, _0805AD98
	ands r1, r7
	str r1, [sp, #0x14]
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B51C
	adds r6, r0, #0
	ldr r2, [sp, #0x14]
	adds r1, r6, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r3, r8
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0805ACD6
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0805ACD6
	cmp r4, r1
	bhs _0805ACD6
	subs r6, #1
	adds r4, r4, r7
_0805ACD6:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r2, r0, #0
	ldr r4, [sp, #0x14]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _0805AD98
	mov r3, r8
	ands r3, r0
	orrs r5, r3
	cmp r5, r1
	bhs _0805AD10
	subs r2, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0805AD10
	cmp r5, r1
	bhs _0805AD10
	subs r2, #1
	adds r5, r5, r7
_0805AD10:
	lsls r6, r6, #0x10
	orrs r6, r2
	str r6, [sp, #0x10]
	subs r1, r5, r1
	mov r8, r1
_0805AD1A:
	lsrs r4, r7, #0x10
	mov sb, r4
	ldr r0, _0805AD98
	ands r0, r7
	str r0, [sp, #0x18]
	mov r0, r8
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl sub_805B51C
	adds r6, r0, #0
	ldr r1, [sp, #0x18]
	adds r2, r6, #0
	muls r2, r1, r2
	lsls r4, r4, #0x10
	mov r3, sl
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0805AD5A
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0805AD5A
	cmp r4, r2
	bhs _0805AD5A
	subs r6, #1
	adds r4, r4, r7
_0805AD5A:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r1, r0, #0
	ldr r4, [sp, #0x18]
	adds r2, r1, #0
	muls r2, r4, r2
	lsls r5, r5, #0x10
	ldr r0, _0805AD98
	mov r3, sl
	ands r3, r0
	orrs r5, r3
	cmp r5, r2
	bhs _0805AD92
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0805AD92
	cmp r5, r2
	bhs _0805AD92
	subs r1, #1
_0805AD92:
	lsls r6, r6, #0x10
	orrs r6, r1
	b _0805AEF2
	.align 2, 0
_0805AD98: .4byte 0x0000FFFF
_0805AD9C:
	cmp r6, r8
	bls _0805ADA8
	movs r6, #0
	movs r4, #0
	str r4, [sp, #0x10]
	b _0805AEF2
_0805ADA8:
	adds r1, r6, #0
	ldr r0, _0805ADBC
	cmp r6, r0
	bhi _0805ADC0
	movs r2, #0
	cmp r6, #0xff
	bls _0805ADCA
	movs r2, #8
	b _0805ADCA
	.align 2, 0
_0805ADBC: .4byte 0x0000FFFF
_0805ADC0:
	ldr r0, _0805ADEC
	movs r2, #0x18
	cmp r6, r0
	bhi _0805ADCA
	movs r2, #0x10
_0805ADCA:
	ldr r0, _0805ADF0
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _0805ADF8
	cmp r8, r6
	bhi _0805ADE4
	cmp sl, r7
	blo _0805ADF4
_0805ADE4:
	movs r6, #1
	mov r1, sl
	b _0805AEEC
	.align 2, 0
_0805ADEC: .4byte 0x00FFFFFF
_0805ADF0: .4byte 0x08DF1828
_0805ADF4:
	movs r6, #0
	b _0805AEEE
_0805ADF8:
	subs r1, r1, r2
	lsls r6, r2
	adds r0, r7, #0
	lsrs r0, r1
	orrs r6, r0
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r6, #0x10
	mov sb, r0
	ldr r1, _0805AF24
	ands r1, r6
	str r1, [sp, #0x1c]
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B51C
	adds r3, r0, #0
	ldr r2, [sp, #0x1c]
	adds r1, r3, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r2, r8
	lsrs r0, r2, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0805AE5A
	subs r3, #1
	adds r4, r4, r6
	cmp r4, r6
	blo _0805AE5A
	cmp r4, r1
	bhs _0805AE5A
	subs r3, #1
	adds r4, r4, r6
_0805AE5A:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	str r3, [sp, #0x30]
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r2, r0, #0
	ldr r4, [sp, #0x1c]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _0805AF24
	mov r4, r8
	ands r4, r0
	orrs r5, r4
	ldr r3, [sp, #0x30]
	cmp r5, r1
	bhs _0805AE98
	subs r2, #1
	adds r5, r5, r6
	cmp r5, r6
	blo _0805AE98
	cmp r5, r1
	bhs _0805AE98
	subs r2, #1
	adds r5, r5, r6
_0805AE98:
	lsls r6, r3, #0x10
	orrs r6, r2
	subs r1, r5, r1
	mov r8, r1
	ldr r0, _0805AF24
	mov sb, r0
	adds r1, r6, #0
	ands r1, r0
	lsrs r3, r6, #0x10
	adds r0, r7, #0
	mov r2, sb
	ands r0, r2
	lsrs r2, r7, #0x10
	adds r5, r1, #0
	muls r5, r0, r5
	adds r4, r1, #0
	muls r4, r2, r4
	adds r1, r3, #0
	muls r1, r0, r1
	muls r3, r2, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r1
	cmp r4, r1
	bhs _0805AED0
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_0805AED0:
	lsrs r0, r4, #0x10
	adds r3, r3, r0
	mov r1, sb
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r1, r0, r5
	cmp r3, r8
	bhi _0805AEEA
	cmp r3, r8
	bne _0805AEEE
	cmp r1, sl
	bls _0805AEEE
_0805AEEA:
	subs r6, #1
_0805AEEC:
	subs r0, r1, r7
_0805AEEE:
	movs r2, #0
	str r2, [sp, #0x10]
_0805AEF2:
	str r6, [sp, #0x20]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r4, [sp]
	cmp r4, #0
	beq _0805AF14
	rsbs r0, r1, #0
	str r0, [sp, #0x28]
	rsbs r1, r2, #0
	cmp r0, #0
	beq _0805AF0E
	subs r1, #1
_0805AF0E:
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
_0805AF14:
	adds r0, r1, #0
	adds r1, r2, #0
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805AF24: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_805AF28
sub_805AF28: @ 0x0805AF28
	cmp r1, #0
	beq _0805AFB0
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _0805AF3E
	rsbs r1, r1, #0
_0805AF3E:
	cmp r0, #0
	bpl _0805AF44
	rsbs r0, r0, #0
_0805AF44:
	cmp r0, r1
	blo _0805AFA2
	movs r4, #1
	lsls r4, r4, #0x1c
_0805AF4C:
	cmp r1, r4
	bhs _0805AF5A
	cmp r1, r0
	bhs _0805AF5A
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0805AF4C
_0805AF5A:
	lsls r4, r4, #3
_0805AF5C:
	cmp r1, r4
	bhs _0805AF6A
	cmp r1, r0
	bhs _0805AF6A
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0805AF5C
_0805AF6A:
	cmp r0, r1
	blo _0805AF72
	subs r0, r0, r1
	orrs r2, r3
_0805AF72:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0805AF7E
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_0805AF7E:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0805AF8A
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_0805AF8A:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0805AF96
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_0805AF96:
	cmp r0, #0
	beq _0805AFA2
	lsrs r3, r3, #4
	beq _0805AFA2
	lsrs r1, r1, #4
	b _0805AF6A
_0805AFA2:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _0805AFAC
	rsbs r0, r0, #0
_0805AFAC:
	pop {r4}
	mov pc, lr
_0805AFB0:
	push {lr}
	bl sub_0805AFBC
	movs r0, #0
	pop {pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_0805AFBC
sub_0805AFBC: @ 0x0805AFBC
	mov pc, lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805AFC0
sub_805AFC0: @ 0x0805AFC0
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r3, _0805AFE0
	ldr r2, _0805AFDC
	bl sub_805C534
	cmp r0, #0
	bge _0805AFE4
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_805C694
	b _0805AFFA
	.align 2, 0
_0805AFDC: .4byte 0x41E00000
_0805AFE0: .4byte 0x00000000
_0805AFE4:
	ldr r3, _0805B000
	ldr r2, _0805AFFC
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_805BE8C
	bl sub_805C694
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r0, r0, r1
_0805AFFA:
	pop {r4, r5, pc}
	.align 2, 0
_0805AFFC: .4byte 0xC1E00000
_0805B000: .4byte 0x00000000

	THUMB_FUNC_START sub_805B004
sub_805B004: @ 0x0805B004
	movs r3, #1
	cmp r1, #0
	beq _0805B0C8
	bpl _0805B00E
	rsbs r1, r1, #0
_0805B00E:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _0805B018
	rsbs r0, r0, #0
_0805B018:
	cmp r0, r1
	blo _0805B0BC
	movs r4, #1
	lsls r4, r4, #0x1c
_0805B020:
	cmp r1, r4
	bhs _0805B02E
	cmp r1, r0
	bhs _0805B02E
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0805B020
_0805B02E:
	lsls r4, r4, #3
_0805B030:
	cmp r1, r4
	bhs _0805B03E
	cmp r1, r0
	bhs _0805B03E
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0805B030
_0805B03E:
	movs r2, #0
	cmp r0, r1
	blo _0805B046
	subs r0, r0, r1
_0805B046:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0805B058
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0805B058:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0805B06A
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0805B06A:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0805B07C
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0805B07C:
	mov ip, r3
	cmp r0, #0
	beq _0805B08A
	lsrs r3, r3, #4
	beq _0805B08A
	lsrs r1, r1, #4
	b _0805B03E
_0805B08A:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _0805B0BC
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _0805B0A0
	lsrs r4, r1, #3
	adds r0, r0, r4
_0805B0A0:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _0805B0AE
	lsrs r4, r1, #2
	adds r0, r0, r4
_0805B0AE:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0805B0BC
	lsrs r4, r1, #1
	adds r0, r0, r4
_0805B0BC:
	pop {r4}
	cmp r4, #0
	bpl _0805B0C4
	rsbs r0, r0, #0
_0805B0C4:
	pop {r4}
	mov pc, lr
_0805B0C8:
	push {lr}
	bl sub_0805AFBC
	movs r0, #0
	pop {pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805B0D4
sub_805B0D4: @ 0x0805B0D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _0805B140
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r1, r4
	adds r2, r3, #0
	muls r2, r0, r2
	muls r3, r1, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _0805B114
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_0805B114:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0
	orrs r6, r5
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r3, [sp]
	ldr r4, [sp, #0xc]
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r5, #0
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805B140: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_805B144
sub_805B144: @ 0x0805B144
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r2, #0
	adds r6, r3, #0
	mov sl, r0
	mov r8, r1
	cmp r6, #0
	beq _0805B15E
	b _0805B3AC
_0805B15E:
	cmp r7, r8
	bls _0805B238
	ldr r0, _0805B174
	cmp r7, r0
	bhi _0805B178
	movs r1, #0
	cmp r7, #0xff
	bls _0805B182
	movs r1, #8
	b _0805B182
	.align 2, 0
_0805B174: .4byte 0x0000FFFF
_0805B178:
	ldr r0, _0805B22C
	movs r1, #0x18
	cmp r7, r0
	bhi _0805B182
	movs r1, #0x10
_0805B182:
	ldr r0, _0805B230
	lsrs r2, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	beq _0805B1AE
	lsls r7, r2
	mov r0, r8
	lsls r0, r2
	mov r8, r0
	subs r1, r1, r2
	mov r0, sl
	lsrs r0, r1
	mov r1, r8
	orrs r1, r0
	mov r8, r1
	mov r3, sl
	lsls r3, r2
	mov sl, r3
_0805B1AE:
	lsrs r4, r7, #0x10
	mov sb, r4
	ldr r0, _0805B234
	ands r0, r7
	str r0, [sp]
	mov r0, r8
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl sub_805B51C
	adds r6, r0, #0
	ldr r1, [sp]
	adds r2, r6, #0
	muls r2, r1, r2
	lsls r4, r4, #0x10
	mov r3, sl
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0805B1EE
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0805B1EE
	cmp r4, r2
	bhs _0805B1EE
	subs r6, #1
	adds r4, r4, r7
_0805B1EE:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r1, r0, #0
	ldr r4, [sp]
	adds r2, r1, #0
	muls r2, r4, r2
	lsls r5, r5, #0x10
	ldr r0, _0805B234
	mov r3, sl
	ands r3, r0
	orrs r5, r3
	cmp r5, r2
	bhs _0805B226
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0805B226
	cmp r5, r2
	bhs _0805B226
	subs r1, #1
_0805B226:
	lsls r6, r6, #0x10
	orrs r6, r1
	b _0805B3B2
	.align 2, 0
_0805B22C: .4byte 0x00FFFFFF
_0805B230: .4byte 0x08DF1928
_0805B234: .4byte 0x0000FFFF
_0805B238:
	cmp r2, #0
	bne _0805B246
	movs r0, #1
	movs r1, #0
	bl sub_805B51C
	adds r7, r0, #0
_0805B246:
	adds r1, r7, #0
	ldr r0, _0805B258
	cmp r7, r0
	bhi _0805B25C
	movs r2, #0
	cmp r7, #0xff
	bls _0805B266
	movs r2, #8
	b _0805B266
	.align 2, 0
_0805B258: .4byte 0x0000FFFF
_0805B25C:
	ldr r0, _0805B284
	movs r2, #0x18
	cmp r7, r0
	bhi _0805B266
	movs r2, #0x10
_0805B266:
	ldr r0, _0805B288
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _0805B28C
	mov r0, r8
	subs r0, r0, r7
	mov r8, r0
	movs r1, #1
	str r1, [sp, #4]
	b _0805B32A
	.align 2, 0
_0805B284: .4byte 0x00FFFFFF
_0805B288: .4byte 0x08DF1928
_0805B28C:
	subs r1, r1, r2
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r7, #0x10
	mov sb, r0
	ldr r1, _0805B3A8
	ands r1, r7
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B51C
	adds r6, r0, #0
	ldr r2, [sp, #8]
	adds r1, r6, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r3, r8
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0805B2E6
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0805B2E6
	cmp r4, r1
	bhs _0805B2E6
	subs r6, #1
	adds r4, r4, r7
_0805B2E6:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r2, r0, #0
	ldr r4, [sp, #8]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _0805B3A8
	mov r3, r8
	ands r3, r0
	orrs r5, r3
	cmp r5, r1
	bhs _0805B320
	subs r2, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0805B320
	cmp r5, r1
	bhs _0805B320
	subs r2, #1
	adds r5, r5, r7
_0805B320:
	lsls r6, r6, #0x10
	orrs r6, r2
	str r6, [sp, #4]
	subs r1, r5, r1
	mov r8, r1
_0805B32A:
	lsrs r4, r7, #0x10
	mov sb, r4
	ldr r0, _0805B3A8
	ands r0, r7
	str r0, [sp, #0xc]
	mov r0, r8
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl sub_805B51C
	adds r6, r0, #0
	ldr r1, [sp, #0xc]
	adds r2, r6, #0
	muls r2, r1, r2
	lsls r4, r4, #0x10
	mov r3, sl
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0805B36A
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0805B36A
	cmp r4, r2
	bhs _0805B36A
	subs r6, #1
	adds r4, r4, r7
_0805B36A:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r1, r0, #0
	ldr r4, [sp, #0xc]
	adds r2, r1, #0
	muls r2, r4, r2
	lsls r5, r5, #0x10
	ldr r0, _0805B3A8
	mov r3, sl
	ands r3, r0
	orrs r5, r3
	cmp r5, r2
	bhs _0805B3A2
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0805B3A2
	cmp r5, r2
	bhs _0805B3A2
	subs r1, #1
_0805B3A2:
	lsls r6, r6, #0x10
	orrs r6, r1
	b _0805B502
	.align 2, 0
_0805B3A8: .4byte 0x0000FFFF
_0805B3AC:
	cmp r6, r8
	bls _0805B3B8
	movs r6, #0
_0805B3B2:
	movs r4, #0
	str r4, [sp, #4]
	b _0805B502
_0805B3B8:
	adds r1, r6, #0
	ldr r0, _0805B3CC
	cmp r6, r0
	bhi _0805B3D0
	movs r2, #0
	cmp r6, #0xff
	bls _0805B3DA
	movs r2, #8
	b _0805B3DA
	.align 2, 0
_0805B3CC: .4byte 0x0000FFFF
_0805B3D0:
	ldr r0, _0805B3FC
	movs r2, #0x18
	cmp r6, r0
	bhi _0805B3DA
	movs r2, #0x10
_0805B3DA:
	ldr r0, _0805B400
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _0805B408
	cmp r8, r6
	bhi _0805B3F4
	cmp sl, r7
	blo _0805B404
_0805B3F4:
	movs r6, #1
	mov r1, sl
	b _0805B4FC
	.align 2, 0
_0805B3FC: .4byte 0x00FFFFFF
_0805B400: .4byte 0x08DF1928
_0805B404:
	movs r6, #0
	b _0805B4FE
_0805B408:
	subs r1, r1, r2
	lsls r6, r2
	adds r0, r7, #0
	lsrs r0, r1
	orrs r6, r0
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r6, #0x10
	mov sb, r0
	ldr r1, _0805B518
	ands r1, r6
	str r1, [sp, #0x10]
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B940
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_805B51C
	adds r3, r0, #0
	ldr r2, [sp, #0x10]
	adds r1, r3, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r2, r8
	lsrs r0, r2, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0805B46A
	subs r3, #1
	adds r4, r4, r6
	cmp r4, r6
	blo _0805B46A
	cmp r4, r1
	bhs _0805B46A
	subs r3, #1
	adds r4, r4, r6
_0805B46A:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	str r3, [sp, #0x1c]
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_805B51C
	adds r2, r0, #0
	ldr r4, [sp, #0x10]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _0805B518
	mov r4, r8
	ands r4, r0
	orrs r5, r4
	ldr r3, [sp, #0x1c]
	cmp r5, r1
	bhs _0805B4A8
	subs r2, #1
	adds r5, r5, r6
	cmp r5, r6
	blo _0805B4A8
	cmp r5, r1
	bhs _0805B4A8
	subs r2, #1
	adds r5, r5, r6
_0805B4A8:
	lsls r6, r3, #0x10
	orrs r6, r2
	subs r1, r5, r1
	mov r8, r1
	ldr r0, _0805B518
	mov sb, r0
	adds r1, r6, #0
	ands r1, r0
	lsrs r3, r6, #0x10
	adds r0, r7, #0
	mov r2, sb
	ands r0, r2
	lsrs r2, r7, #0x10
	adds r5, r1, #0
	muls r5, r0, r5
	adds r4, r1, #0
	muls r4, r2, r4
	adds r1, r3, #0
	muls r1, r0, r1
	muls r3, r2, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r1
	cmp r4, r1
	bhs _0805B4E0
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_0805B4E0:
	lsrs r0, r4, #0x10
	adds r3, r3, r0
	mov r1, sb
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r1, r0, r5
	cmp r3, r8
	bhi _0805B4FA
	cmp r3, r8
	bne _0805B4FE
	cmp r1, sl
	bls _0805B4FE
_0805B4FA:
	subs r6, #1
_0805B4FC:
	subs r0, r1, r7
_0805B4FE:
	movs r2, #0
	str r2, [sp, #4]
_0805B502:
	str r6, [sp, #0x14]
	ldr r3, [sp, #4]
	str r3, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805B518: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_805B51C
sub_805B51C: @ 0x0805B51C
	cmp r1, #0
	beq _0805B58A
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _0805B584
	movs r4, #1
	lsls r4, r4, #0x1c
_0805B52E:
	cmp r1, r4
	bhs _0805B53C
	cmp r1, r0
	bhs _0805B53C
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0805B52E
_0805B53C:
	lsls r4, r4, #3
_0805B53E:
	cmp r1, r4
	bhs _0805B54C
	cmp r1, r0
	bhs _0805B54C
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0805B53E
_0805B54C:
	cmp r0, r1
	blo _0805B554
	subs r0, r0, r1
	orrs r2, r3
_0805B554:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0805B560
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_0805B560:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0805B56C
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_0805B56C:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0805B578
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_0805B578:
	cmp r0, #0
	beq _0805B584
	lsrs r3, r3, #4
	beq _0805B584
	lsrs r1, r1, #4
	b _0805B54C
_0805B584:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_0805B58A:
	push {lr}
	bl sub_0805AFBC
	movs r0, #0
	pop {pc}

	THUMB_FUNC_START sub_805B594
sub_805B594: @ 0x0805B594
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	mov r4, sp
	str r4, [sp, #8]
	adds r7, r2, #0
	mov r8, r3
	str r0, [sp, #0xc]
	adds r6, r1, #0
	cmp r3, #0
	beq _0805B5B2
	b _0805B77C
_0805B5B2:
	cmp r7, r6
	bls _0805B61C
	ldr r0, _0805B5C8
	cmp r7, r0
	bhi _0805B5CC
	movs r1, #0
	cmp r7, #0xff
	bls _0805B5D6
	movs r1, #8
	b _0805B5D6
	.align 2, 0
_0805B5C8: .4byte 0x0000FFFF
_0805B5CC:
	ldr r0, _0805B610
	movs r1, #0x18
	cmp r7, r0
	bhi _0805B5D6
	movs r1, #0x10
_0805B5D6:
	ldr r0, _0805B614
	lsrs r2, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0x20
	subs r0, r1, r0
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _0805B5FE
	lsls r7, r0
	lsls r6, r0
	subs r1, r1, r0
	ldr r0, [sp, #0xc]
	lsrs r0, r1
	orrs r6, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsls r0, r1
	str r0, [sp, #0xc]
_0805B5FE:
	lsrs r2, r7, #0x10
	mov r8, r2
	ldr r3, _0805B618
	mov sb, r3
	mov r4, sb
	ands r4, r7
	mov sb, r4
	b _0805B6FC
	.align 2, 0
_0805B610: .4byte 0x00FFFFFF
_0805B614: .4byte 0x08DF1A28
_0805B618: .4byte 0x0000FFFF
_0805B61C:
	cmp r2, #0
	bne _0805B62A
	movs r0, #1
	movs r1, #0
	bl sub_805B51C
	adds r7, r0, #0
_0805B62A:
	adds r1, r7, #0
	ldr r0, _0805B63C
	cmp r7, r0
	bhi _0805B640
	movs r2, #0
	cmp r7, #0xff
	bls _0805B64A
	movs r2, #8
	b _0805B64A
	.align 2, 0
_0805B63C: .4byte 0x0000FFFF
_0805B640:
	ldr r0, _0805B664
	movs r2, #0x18
	cmp r7, r0
	bhi _0805B64A
	movs r2, #0x10
_0805B64A:
	ldr r0, _0805B668
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r0, r1, r0
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0805B66C
	subs r6, r6, r7
	b _0805B6EE
	.align 2, 0
_0805B664: .4byte 0x00FFFFFF
_0805B668: .4byte 0x08DF1A28
_0805B66C:
	ldr r4, [sp, #0x10]
	subs r1, r1, r4
	lsls r7, r4
	adds r5, r6, #0
	lsrs r5, r1
	lsls r6, r4
	ldr r0, [sp, #0xc]
	lsrs r0, r1
	orrs r6, r0
	ldr r0, [sp, #0xc]
	lsls r0, r4
	str r0, [sp, #0xc]
	lsrs r1, r7, #0x10
	mov r8, r1
	ldr r2, _0805B778
	mov sb, r2
	mov r3, sb
	ands r3, r7
	mov sb, r3
	adds r0, r5, #0
	bl sub_805B940
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, r8
	bl sub_805B51C
	mov r1, sb
	muls r1, r0, r1
	lsls r4, r4, #0x10
	lsrs r0, r6, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0805B6BC
	adds r4, r4, r7
	cmp r4, r7
	blo _0805B6BC
	cmp r4, r1
	bhs _0805B6BC
	adds r4, r4, r7
_0805B6BC:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, r8
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r8
	bl sub_805B51C
	mov r1, sb
	muls r1, r0, r1
	lsls r5, r5, #0x10
	ldr r0, _0805B778
	ands r6, r0
	orrs r5, r6
	cmp r5, r1
	bhs _0805B6EC
	adds r5, r5, r7
	cmp r5, r7
	blo _0805B6EC
	cmp r5, r1
	bhs _0805B6EC
	adds r5, r5, r7
_0805B6EC:
	subs r6, r5, r1
_0805B6EE:
	lsrs r4, r7, #0x10
	mov r8, r4
	ldr r0, _0805B778
	mov sb, r0
	mov r1, sb
	ands r1, r7
	mov sb, r1
_0805B6FC:
	adds r0, r6, #0
	mov r1, r8
	bl sub_805B940
	adds r4, r0, #0
	adds r0, r6, #0
	mov r1, r8
	bl sub_805B51C
	mov r1, sb
	muls r1, r0, r1
	lsls r4, r4, #0x10
	ldr r2, [sp, #0xc]
	lsrs r0, r2, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0805B72A
	adds r4, r4, r7
	cmp r4, r7
	blo _0805B72A
	cmp r4, r1
	bhs _0805B72A
	adds r4, r4, r7
_0805B72A:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, r8
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r8
	bl sub_805B51C
	mov r1, sb
	muls r1, r0, r1
	lsls r5, r5, #0x10
	ldr r0, _0805B778
	ldr r3, [sp, #0xc]
	ands r0, r3
	orrs r5, r0
	cmp r5, r1
	bhs _0805B75C
	adds r5, r5, r7
	cmp r5, r7
	blo _0805B75C
	cmp r5, r1
	bhs _0805B75C
	adds r5, r5, r7
_0805B75C:
	subs r1, r5, r1
	str r1, [sp, #0xc]
	ldr r4, [sp, #8]
	cmp r4, #0
	bne _0805B768
	b _0805B92A
_0805B768:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r0, r1
	str r0, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x1c]
	b _0805B920
	.align 2, 0
_0805B778: .4byte 0x0000FFFF
_0805B77C:
	cmp r8, r6
	bls _0805B78E
	str r0, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	str r1, [sp]
	str r2, [sp, #4]
	b _0805B92A
_0805B78E:
	mov r1, r8
	ldr r0, _0805B7A0
	cmp r8, r0
	bhi _0805B7A4
	movs r2, #0
	cmp r1, #0xff
	bls _0805B7AE
	movs r2, #8
	b _0805B7AE
	.align 2, 0
_0805B7A0: .4byte 0x0000FFFF
_0805B7A4:
	ldr r0, _0805B7F0
	movs r2, #0x18
	cmp r8, r0
	bhi _0805B7AE
	movs r2, #0x10
_0805B7AE:
	ldr r0, _0805B7F4
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r0, r1, r0
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0805B7F8
	cmp r6, r8
	bhi _0805B7CC
	ldr r2, [sp, #0xc]
	cmp r2, r7
	blo _0805B7DC
_0805B7CC:
	ldr r3, [sp, #0xc]
	subs r0, r3, r7
	mov r4, r8
	subs r6, r6, r4
	cmp r0, r3
	bls _0805B7DA
	subs r6, #1
_0805B7DA:
	str r0, [sp, #0xc]
_0805B7DC:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0805B7E4
	b _0805B92A
_0805B7E4:
	ldr r1, [sp, #0xc]
	str r1, [sp, #0x18]
	str r6, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	b _0805B926
	.align 2, 0
_0805B7F0: .4byte 0x00FFFFFF
_0805B7F4: .4byte 0x08DF1A28
_0805B7F8:
	ldr r2, [sp, #0x10]
	subs r1, r1, r2
	str r1, [sp, #0x14]
	mov r3, r8
	lsls r3, r2
	adds r0, r7, #0
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	lsls r7, r2
	adds r5, r6, #0
	lsrs r5, r1
	lsls r6, r2
	ldr r0, [sp, #0xc]
	lsrs r0, r1
	orrs r6, r0
	ldr r4, [sp, #0xc]
	lsls r4, r2
	str r4, [sp, #0xc]
	lsrs r3, r3, #0x10
	mov sl, r3
	ldr r0, _0805B93C
	mov r1, r8
	ands r1, r0
	str r1, [sp, #0x20]
	adds r0, r5, #0
	mov r1, sl
	bl sub_805B940
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sl
	bl sub_805B51C
	mov sb, r0
	ldr r3, [sp, #0x20]
	mov r2, sb
	muls r2, r3, r2
	lsls r4, r4, #0x10
	lsrs r0, r6, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0805B862
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	add r4, r8
	cmp r4, r8
	blo _0805B862
	cmp r4, r2
	bhs _0805B862
	add sb, r0
	add r4, r8
_0805B862:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sl
	bl sub_805B940
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sl
	bl sub_805B51C
	adds r3, r0, #0
	ldr r1, [sp, #0x20]
	adds r2, r3, #0
	muls r2, r1, r2
	lsls r5, r5, #0x10
	ldr r0, _0805B93C
	ands r6, r0
	orrs r5, r6
	cmp r5, r2
	bhs _0805B89A
	subs r3, #1
	add r5, r8
	cmp r5, r8
	blo _0805B89A
	cmp r5, r2
	bhs _0805B89A
	subs r3, #1
	add r5, r8
_0805B89A:
	mov r4, sb
	lsls r1, r4, #0x10
	orrs r1, r3
	subs r6, r5, r2
	ldr r0, _0805B93C
	mov sb, r0
	adds r2, r1, #0
	ands r2, r0
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	mov r3, sb
	ands r0, r3
	lsrs r3, r7, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r3, r4
	adds r2, r1, #0
	muls r2, r0, r2
	muls r1, r3, r1
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _0805B8D2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
_0805B8D2:
	lsrs r0, r4, #0x10
	adds r1, r1, r0
	mov r2, sb
	ands r4, r2
	lsls r0, r4, #0x10
	ands r5, r2
	adds r0, r0, r5
	cmp r1, r6
	bhi _0805B8EE
	cmp r1, r6
	bne _0805B8FC
	ldr r3, [sp, #0xc]
	cmp r0, r3
	bls _0805B8FC
_0805B8EE:
	subs r3, r0, r7
	mov r4, r8
	subs r1, r1, r4
	cmp r3, r0
	bls _0805B8FA
	subs r1, #1
_0805B8FA:
	adds r0, r3, #0
_0805B8FC:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _0805B92A
	ldr r3, [sp, #0xc]
	subs r2, r3, r0
	subs r6, r6, r1
	cmp r2, r3
	bls _0805B90E
	subs r6, #1
_0805B90E:
	adds r0, r6, #0
	ldr r4, [sp, #0x14]
	lsls r0, r4
	ldr r1, [sp, #0x10]
	lsrs r2, r1
	orrs r0, r2
	str r0, [sp, #0x18]
	lsrs r6, r1
	str r6, [sp, #0x1c]
_0805B920:
	ldr r3, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	ldr r0, [sp, #8]
_0805B926:
	str r3, [r0]
	str r4, [r0, #4]
_0805B92A:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805B93C: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_805B940
sub_805B940: @ 0x0805B940
	cmp r1, #0
	beq _0805B9F6
	movs r3, #1
	cmp r0, r1
	bhs _0805B94C
	mov pc, lr
_0805B94C:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_0805B952:
	cmp r1, r4
	bhs _0805B960
	cmp r1, r0
	bhs _0805B960
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0805B952
_0805B960:
	lsls r4, r4, #3
_0805B962:
	cmp r1, r4
	bhs _0805B970
	cmp r1, r0
	bhs _0805B970
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0805B962
_0805B970:
	movs r2, #0
	cmp r0, r1
	blo _0805B978
	subs r0, r0, r1
_0805B978:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0805B98A
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0805B98A:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0805B99C
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0805B99C:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0805B9AE
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0805B9AE:
	mov ip, r3
	cmp r0, #0
	beq _0805B9BC
	lsrs r3, r3, #4
	beq _0805B9BC
	lsrs r1, r1, #4
	b _0805B970
_0805B9BC:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _0805B9C8
	pop {r4}
	mov pc, lr
_0805B9C8:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _0805B9D6
	lsrs r4, r1, #3
	adds r0, r0, r4
_0805B9D6:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _0805B9E4
	lsrs r4, r1, #2
	adds r0, r0, r4
_0805B9E4:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0805B9F2
	lsrs r4, r1, #1
	adds r0, r0, r4
_0805B9F2:
	pop {r4}
	mov pc, lr
_0805B9F6:
	push {lr}
	bl sub_0805AFBC
	movs r0, #0
	pop {pc}

	THUMB_FUNC_START sub_805BA00
sub_805BA00: @ 0x0805BA00
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _0805BA18
	movs r2, #1
_0805BA18:
	cmp r2, #0
	beq _0805BA38
	ldr r6, _0805BA2C
	ldr r2, _0805BA30
	ldr r3, _0805BA34
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _0805BAF0
	.align 2, 0
_0805BA2C: .4byte 0x000007FF
_0805BA30: .4byte 0x00000000
_0805BA34: .4byte 0x00080000
_0805BA38:
	movs r2, #0
	cmp r0, #4
	bne _0805BA40
	movs r2, #1
_0805BA40:
	cmp r2, #0
	bne _0805BA8C
	movs r2, #0
	cmp r0, #2
	bne _0805BA4C
	movs r2, #1
_0805BA4C:
	cmp r2, #0
	beq _0805BA56
	movs r4, #0
	movs r5, #0
	b _0805BAF4
_0805BA56:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _0805BAF4
	ldr r2, [r1, #8]
	ldr r0, _0805BA74
	cmp r2, r0
	bge _0805BA86
	subs r2, r0, r2
	cmp r2, #0x38
	ble _0805BA78
	movs r4, #0
	movs r5, #0
	b _0805BAE6
	.align 2, 0
_0805BA74: .4byte 0xFFFFFC02
_0805BA78:
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_805D0E8
	adds r5, r1, #0
	adds r4, r0, #0
	b _0805BAE6
_0805BA86:
	ldr r0, _0805BA94
	cmp r2, r0
	ble _0805BA9C
_0805BA8C:
	ldr r6, _0805BA98
	movs r4, #0
	movs r5, #0
	b _0805BAF4
	.align 2, 0
_0805BA94: .4byte 0x000003FF
_0805BA98: .4byte 0x000007FF
_0805BA9C:
	ldr r0, _0805BAC4
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0805BAC8
	cmp r2, #0
	bne _0805BAC8
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _0805BAD0
	movs r0, #0x80
	movs r1, #0
	b _0805BACC
	.align 2, 0
_0805BAC4: .4byte 0x000003FF
_0805BAC8:
	movs r0, #0x7f
	movs r1, #0
_0805BACC:
	adds r4, r4, r0
	adcs r5, r1
_0805BAD0:
	ldr r0, _0805BB34
	cmp r5, r0
	bls _0805BAE6
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_0805BAE6:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_0805BAF0:
	adds r5, r1, #0
	adds r4, r0, #0
_0805BAF4:
	str r4, [sp]
	ldr r2, _0805BB38
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _0805BB3C
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _0805BB40
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _0805BB44
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805BB34: .4byte 0x1FFFFFFF
_0805BB38: .4byte 0x000FFFFF
_0805BB3C: .4byte 0xFFF00000
_0805BB40: .4byte 0x000007FF
_0805BB44: .4byte 0xFFFF800F

	THUMB_FUNC_START sub_805BB48
sub_805BB48: @ 0x0805BB48
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _0805BBBC
	orrs r1, r5
	cmp r1, #0
	bne _0805BB7C
	movs r0, #2
	str r0, [r6]
	b _0805BC10
_0805BB7C:
	ldr r0, _0805BBB4
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _0805BBB8
	cmp r5, r0
	bhi _0805BBEC
	adds r7, r0, #0
_0805BB9A:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _0805BB9A
	b _0805BBEC
	.align 2, 0
_0805BBB4: .4byte 0xFFFFFC02
_0805BBB8: .4byte 0x0FFFFFFF
_0805BBBC:
	ldr r0, _0805BBD0
	cmp r3, r0
	bne _0805BBF2
	orrs r1, r5
	cmp r1, #0
	bne _0805BBD4
	movs r0, #4
	str r0, [r6]
	b _0805BC10
	.align 2, 0
_0805BBD0: .4byte 0x000007FF
_0805BBD4:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _0805BBEA
	movs r0, #1
	str r0, [r6]
	b _0805BBEC
_0805BBEA:
	str r1, [r6]
_0805BBEC:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _0805BC10
_0805BBF2:
	ldr r1, _0805BC14
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _0805BC18
	ldr r3, _0805BC1C
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_0805BC10:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805BC14: .4byte 0xFFFFFC01
_0805BC18: .4byte 0x00000000
_0805BC1C: .4byte 0x10000000

	THUMB_FUNC_START sub_805BC20
sub_805BC20: @ 0x0805BC20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _0805BC3C
	movs r0, #1
_0805BC3C:
	cmp r0, #0
	beq _0805BC44
_0805BC40:
	adds r0, r3, #0
	b _0805BE7C
_0805BC44:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _0805BC4E
	movs r1, #1
_0805BC4E:
	cmp r1, #0
	bne _0805BCC6
	movs r1, #0
	cmp r2, #4
	bne _0805BC5A
	movs r1, #1
_0805BC5A:
	cmp r1, #0
	beq _0805BC7C
	movs r1, #0
	cmp r0, #4
	bne _0805BC66
	movs r1, #1
_0805BC66:
	cmp r1, #0
	beq _0805BC40
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _0805BC40
	ldr r0, _0805BC78
	b _0805BE7C
	.align 2, 0
_0805BC78: .4byte 0x02020A00
_0805BC7C:
	movs r1, #0
	cmp r0, #4
	bne _0805BC84
	movs r1, #1
_0805BC84:
	cmp r1, #0
	bne _0805BCC6
	movs r1, #0
	cmp r0, #2
	bne _0805BC90
	movs r1, #1
_0805BC90:
	cmp r1, #0
	beq _0805BCB8
	movs r0, #0
	cmp r2, #2
	bne _0805BC9C
	movs r0, #1
_0805BC9C:
	cmp r0, #0
	beq _0805BC40
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _0805BE7A
_0805BCB8:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _0805BCC2
	movs r1, #1
_0805BCC2:
	cmp r1, #0
	beq _0805BCCA
_0805BCC6:
	adds r0, r4, #0
	b _0805BE7C
_0805BCCA:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _0805BCEA
	rsbs r0, r0, #0
_0805BCEA:
	cmp r0, #0x3f
	bgt _0805BD68
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _0805BD34
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_0805BD02:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _0805BD02
	mov r8, sb
_0805BD34:
	cmp r8, sb
	ble _0805BD84
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_0805BD40:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _0805BD40
	mov sb, r8
	b _0805BD84
_0805BD68:
	cmp sb, r8
	ble _0805BD76
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _0805BD7C
_0805BD76:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_0805BD7C:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_0805BD84:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _0805BE2C
	mov r2, ip
	cmp r2, #0
	beq _0805BDA6
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_805D11C
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _0805BDB2
_0805BDA6:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_0805BDB2:
	cmp r3, #0
	blt _0805BDC8
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _0805BDE0
_0805BDC8:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl sub_805D11C
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_0805BDE0:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_0805BDEC:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _0805BE28
	cmp r3, r0
	bhi _0805BE44
	cmp r3, r0
	bne _0805BE02
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _0805BE44
_0805BE02:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	rsbs r2, r2, #0
	asrs r3, r2, #0x1f
	b _0805BDEC
	.align 2, 0
_0805BE28: .4byte 0x0FFFFFFF
_0805BE2C:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_0805BE44:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _0805BE88
	cmp r1, r0
	bls _0805BE7A
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_0805BE7A:
	mov r0, sl
_0805BE7C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805BE88: .4byte 0x1FFFFFFF

	THUMB_FUNC_START sub_805BE8C
sub_805BE8C: @ 0x0805BE8C
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_805BB48
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_805BB48
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl sub_805BC20
	bl sub_805BA00
	add sp, #0x4c
	pop {r4, pc}
	.byte 0x10, 0xB5, 0x93, 0xB0
	.byte 0x0F, 0x90, 0x10, 0x91, 0x11, 0x92, 0x12, 0x93, 0x0F, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x3C, 0xFE
	.byte 0x11, 0xA8, 0x05, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0x37, 0xFE, 0x60, 0x68, 0x01, 0x21, 0x48, 0x40
	.byte 0x60, 0x60, 0x0A, 0xAA, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7, 0x9A, 0xFE, 0xFF, 0xF7, 0x88, 0xFD
	.byte 0x13, 0xB0, 0x10, 0xBD

	THUMB_FUNC_START sub_805BEF4
sub_805BEF4: @ 0x0805BEF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_805BB48
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_805BB48
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _0805BF2A
	movs r0, #1
_0805BF2A:
	cmp r0, #0
	bne _0805BF8E
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0805BF38
	movs r2, #1
_0805BF38:
	cmp r2, #0
	beq _0805BF40
	ldr r0, [sp, #4]
	b _0805BFB0
_0805BF40:
	movs r2, #0
	cmp r1, #4
	bne _0805BF48
	movs r2, #1
_0805BF48:
	cmp r2, #0
	beq _0805BF5A
	movs r1, #0
	cmp r0, #2
	bne _0805BF54
	movs r1, #1
_0805BF54:
	cmp r1, #0
	bne _0805BF72
	b _0805BF8E
_0805BF5A:
	movs r2, #0
	cmp r0, #4
	bne _0805BF62
	movs r2, #1
_0805BF62:
	cmp r2, #0
	beq _0805BF82
	movs r0, #0
	cmp r1, #2
	bne _0805BF6E
	movs r0, #1
_0805BF6E:
	cmp r0, #0
	beq _0805BF7C
_0805BF72:
	ldr r0, _0805BF78
	b _0805C17A
	.align 2, 0
_0805BF78: .4byte 0x02020A00
_0805BF7C:
	mov r1, r8
	ldr r0, [r1, #4]
	b _0805BFB0
_0805BF82:
	movs r2, #0
	cmp r1, #2
	bne _0805BF8A
	movs r2, #1
_0805BF8A:
	cmp r2, #0
	beq _0805BFA0
_0805BF8E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _0805C17A
_0805BFA0:
	movs r1, #0
	cmp r0, #2
	bne _0805BFA8
	movs r1, #1
_0805BFA8:
	cmp r1, #0
	beq _0805BFC0
	mov r2, r8
	ldr r0, [r2, #4]
_0805BFB0:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _0805C17A
_0805BFC0:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_805B0D4
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_805B0D4
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_805B0D4
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_805B0D4
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _0805C038
	cmp r7, r3
	bne _0805C040
	cmp r6, r2
	bls _0805C040
_0805C038:
	ldr r5, _0805C190
	ldr r4, _0805C18C
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_0805C040:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _0805C05C
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _0805C06C
	cmp r0, r6
	bls _0805C06C
_0805C05C:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_0805C06C:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _0805C194
	cmp r5, r0
	bls _0805C0EE
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_0805C0B2:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _0805C0D8
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_0805C0D8:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _0805C0B2
	mov r0, ip
	str r0, [sp, #0x30]
_0805C0EE:
	ldr r0, _0805C198
	cmp r5, r0
	bhi _0805C140
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_0805C100:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _0805C12A
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_0805C12A:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _0805C100
	mov r1, ip
	str r1, [sp, #0x30]
_0805C140:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0805C16E
	cmp r2, #0
	bne _0805C16E
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0805C166
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _0805C16E
_0805C166:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_0805C16E:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_0805C17A:
	bl sub_805BA00
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805C18C: .4byte 0x00000000
_0805C190: .4byte 0x00000001
_0805C194: .4byte 0x1FFFFFFF
_0805C198: .4byte 0x0FFFFFFF
	.byte 0xF0, 0xB5, 0x92, 0xB0
	.byte 0x0A, 0x90, 0x0B, 0x91, 0x0C, 0x92, 0x0D, 0x93, 0x0A, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xCC, 0xFC
	.byte 0x0C, 0xA8, 0x05, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0xC7, 0xFC, 0xEC, 0x46, 0x00, 0x20, 0x00, 0x9B
	.byte 0x01, 0x2B, 0x00, 0xD8, 0x01, 0x20, 0x00, 0x28, 0x01, 0xD0, 0x69, 0x46, 0xA0, 0xE0, 0x00, 0x20
	.byte 0x05, 0x9A, 0x15, 0x1C, 0x01, 0x2A, 0x00, 0xD8, 0x01, 0x20, 0x00, 0x28, 0x01, 0xD0, 0x21, 0x1C
	.byte 0x96, 0xE0, 0x01, 0x98, 0x06, 0x99, 0x48, 0x40, 0x01, 0x90, 0x00, 0x20, 0x04, 0x2B, 0x00, 0xD1
	.byte 0x01, 0x20, 0x00, 0x28, 0x05, 0xD1, 0x00, 0x24, 0x02, 0x2B, 0x00, 0xD1, 0x01, 0x24, 0x00, 0x2C
	.byte 0x08, 0xD0, 0x61, 0x46, 0x08, 0x68, 0xA8, 0x42, 0x00, 0xD0, 0x81, 0xE0, 0x00, 0x49, 0x7F, 0xE0
	.byte 0x00, 0x0A, 0x02, 0x02, 0x00, 0x20, 0x04, 0x2A, 0x00, 0xD1, 0x01, 0x20, 0x00, 0x28, 0x06, 0xD0
	.byte 0x00, 0x20, 0x00, 0x21, 0x03, 0x90, 0x04, 0x91, 0x02, 0x94, 0x69, 0x46, 0x70, 0xE0, 0x00, 0x20
	.byte 0x02, 0x2A, 0x00, 0xD1, 0x01, 0x20, 0x00, 0x28, 0x03, 0xD0, 0x04, 0x20, 0x62, 0x46, 0x10, 0x60
	.byte 0x65, 0xE0, 0x63, 0x46, 0x99, 0x68, 0x07, 0x98, 0x0E, 0x1A, 0x9E, 0x60, 0xDC, 0x68, 0x1D, 0x69
	.byte 0x08, 0x98, 0x09, 0x99, 0x0E, 0x90, 0x0F, 0x91, 0xA9, 0x42, 0x04, 0xD8, 0x0F, 0x99, 0xA9, 0x42
	.byte 0x0B, 0xD1, 0xA0, 0x42, 0x09, 0xD9, 0xE3, 0x0F, 0x6A, 0x00, 0x19, 0x1C, 0x11, 0x43, 0x60, 0x00
	.byte 0x0D, 0x1C, 0x04, 0x1C, 0x70, 0x1E, 0x62, 0x46, 0x90, 0x60, 0x29, 0x4F, 0x27, 0x4E, 0x00, 0x20
	.byte 0x00, 0x21, 0x10, 0x90, 0x11, 0x91, 0x0F, 0x99, 0xA9, 0x42, 0x0E, 0xD8, 0xA9, 0x42, 0x02, 0xD1
	.byte 0x0E, 0x9A, 0xA2, 0x42, 0x09, 0xD8, 0x10, 0x98, 0x30, 0x43, 0x11, 0x99, 0x39, 0x43, 0x10, 0x90
	.byte 0x11, 0x91, 0x0E, 0x98, 0x0F, 0x99, 0x24, 0x1A, 0x8D, 0x41, 0xFB, 0x07, 0x72, 0x08, 0x18, 0x1C
	.byte 0x10, 0x43, 0x79, 0x08, 0x0F, 0x1C, 0x06, 0x1C, 0xE3, 0x0F, 0x6A, 0x00, 0x19, 0x1C, 0x11, 0x43
	.byte 0x60, 0x00, 0x0D, 0x1C, 0x04, 0x1C, 0x38, 0x1C, 0x30, 0x43, 0x00, 0x28, 0xDB, 0xD1, 0xFF, 0x20
	.byte 0x10, 0x99, 0x01, 0x40, 0x00, 0x22, 0x80, 0x29, 0x14, 0xD1, 0x00, 0x2A, 0x12, 0xD1, 0x01, 0x30
	.byte 0x10, 0x99, 0x01, 0x40, 0x10, 0x1C, 0x08, 0x43, 0x00, 0x28, 0x03, 0xD1, 0x28, 0x1C, 0x20, 0x43
	.byte 0x00, 0x28, 0x07, 0xD0, 0x80, 0x20, 0x00, 0x21, 0x10, 0x9A, 0x11, 0x9B, 0x12, 0x18, 0x4B, 0x41
	.byte 0x10, 0x92, 0x11, 0x93, 0x10, 0x98, 0x11, 0x99, 0x62, 0x46, 0xD0, 0x60, 0x11, 0x61, 0x61, 0x46
	.byte 0x08, 0x1C, 0xFF, 0xF7, 0x75, 0xFB, 0x12, 0xB0, 0xF0, 0xBD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10

	THUMB_FUNC_START sub_805C324
sub_805C324: @ 0x0805C324
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _0805C334
	movs r0, #1
_0805C334:
	cmp r0, #0
	bne _0805C346
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _0805C342
	movs r0, #1
_0805C342:
	cmp r0, #0
	beq _0805C34A
_0805C346:
	movs r0, #1
	b _0805C420
_0805C34A:
	movs r0, #0
	cmp r1, #4
	bne _0805C352
	movs r0, #1
_0805C352:
	cmp r0, #0
	beq _0805C36A
	movs r0, #0
	cmp r2, #4
	bne _0805C35E
	movs r0, #1
_0805C35E:
	cmp r0, #0
	beq _0805C36A
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _0805C420
_0805C36A:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _0805C374
	movs r1, #1
_0805C374:
	cmp r1, #0
	bne _0805C3C2
	movs r1, #0
	cmp r2, #4
	bne _0805C380
	movs r1, #1
_0805C380:
	cmp r1, #0
	beq _0805C392
_0805C384:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _0805C3CC
	movs r1, #1
	b _0805C3CC
_0805C392:
	movs r1, #0
	cmp r0, #2
	bne _0805C39A
	movs r1, #1
_0805C39A:
	cmp r1, #0
	beq _0805C3AA
	movs r1, #0
	cmp r2, #2
	bne _0805C3A6
	movs r1, #1
_0805C3A6:
	cmp r1, #0
	bne _0805C41E
_0805C3AA:
	movs r1, #0
	cmp r0, #2
	bne _0805C3B2
	movs r1, #1
_0805C3B2:
	cmp r1, #0
	bne _0805C384
	movs r0, #0
	cmp r2, #2
	bne _0805C3BE
	movs r0, #1
_0805C3BE:
	cmp r0, #0
	beq _0805C3D0
_0805C3C2:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _0805C3CC
	subs r1, #2
_0805C3CC:
	adds r0, r1, #0
	b _0805C420
_0805C3D0:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _0805C3E2
_0805C3D8:
	movs r0, #1
	cmp r4, #0
	beq _0805C420
	subs r0, #2
	b _0805C420
_0805C3E2:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _0805C3D8
	cmp r1, r0
	bge _0805C3FA
_0805C3EE:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _0805C420
	movs r0, #1
	b _0805C420
_0805C3FA:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _0805C3D8
	cmp r3, r2
	bne _0805C40E
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _0805C3D8
_0805C40E:
	cmp r2, r3
	bhi _0805C3EE
	cmp r2, r3
	bne _0805C41E
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _0805C3EE
_0805C41E:
	movs r0, #0
_0805C420:
	pop {r4, r5, r6, pc}
	.byte 0x00, 0x00, 0x10, 0xB5, 0x8E, 0xB0, 0x0A, 0x90, 0x0B, 0x91, 0x0C, 0x92, 0x0D, 0x93
	.byte 0x0A, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x88, 0xFB, 0x0C, 0xA8, 0x05, 0xAC, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0x83, 0xFB, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7, 0x6D, 0xFF, 0x0E, 0xB0, 0x10, 0xBD, 0x00, 0x00
	.byte 0x10, 0xB5, 0x8E, 0xB0, 0x0A, 0x90, 0x0B, 0x91, 0x0C, 0x92, 0x0D, 0x93, 0x0A, 0xA8, 0x69, 0x46
	.byte 0xFF, 0xF7, 0x72, 0xFB, 0x0C, 0xA8, 0x05, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0x6D, 0xFB, 0x00, 0x21
	.byte 0x00, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x05, 0x98
	.byte 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20, 0x03, 0xE0, 0x68, 0x46
	.byte 0x21, 0x1C, 0xFF, 0xF7, 0x47, 0xFF, 0x0E, 0xB0, 0x10, 0xBD, 0x00, 0x00, 0x10, 0xB5, 0x8E, 0xB0
	.byte 0x0A, 0x90, 0x0B, 0x91, 0x0C, 0x92, 0x0D, 0x93, 0x0A, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x4C, 0xFB
	.byte 0x0C, 0xA8, 0x05, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0x47, 0xFB, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28
	.byte 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x05, 0x98, 0x01, 0x28, 0x00, 0xD8
	.byte 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20, 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0x21, 0xFF, 0x0E, 0xB0, 0x10, 0xBD, 0x00, 0x00, 0x10, 0xB5, 0x8E, 0xB0, 0x0A, 0x90, 0x0B, 0x91
	.byte 0x0C, 0x92, 0x0D, 0x93, 0x0A, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x26, 0xFB, 0x0C, 0xA8, 0x05, 0xAC
	.byte 0x21, 0x1C, 0xFF, 0xF7, 0x21, 0xFB, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21
	.byte 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x05, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29
	.byte 0x02, 0xD0, 0x01, 0x20, 0x40, 0x42, 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7, 0xFA, 0xFE
	.byte 0x0E, 0xB0, 0x10, 0xBD

	THUMB_FUNC_START sub_805C534
sub_805C534: @ 0x0805C534
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_805BB48
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_805BB48
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0805C55C
	movs r1, #1
_0805C55C:
	cmp r1, #0
	bne _0805C56E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0805C56A
	movs r1, #1
_0805C56A:
	cmp r1, #0
	beq _0805C574
_0805C56E:
	movs r0, #1
	rsbs r0, r0, #0
	b _0805C57C
_0805C574:
	mov r0, sp
	adds r1, r4, #0
	bl sub_805C324
_0805C57C:
	add sp, #0x38
	pop {r4, pc}
	.byte 0x10, 0xB5, 0x8E, 0xB0, 0x0A, 0x90, 0x0B, 0x91, 0x0C, 0x92, 0x0D, 0x93, 0x0A, 0xA8, 0x69, 0x46
	.byte 0xFF, 0xF7, 0xDA, 0xFA, 0x0C, 0xA8, 0x05, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0xD5, 0xFA, 0x00, 0x21
	.byte 0x00, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x05, 0x98
	.byte 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20, 0x03, 0xE0, 0x68, 0x46
	.byte 0x21, 0x1C, 0xFF, 0xF7, 0xAF, 0xFE, 0x0E, 0xB0, 0x10, 0xBD, 0x00, 0x00, 0x10, 0xB5, 0x8E, 0xB0
	.byte 0x0A, 0x90, 0x0B, 0x91, 0x0C, 0x92, 0x0D, 0x93, 0x0A, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xB4, 0xFA
	.byte 0x0C, 0xA8, 0x05, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0xAF, 0xFA, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28
	.byte 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x05, 0x98, 0x01, 0x28, 0x00, 0xD8
	.byte 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20, 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0x89, 0xFE, 0x0E, 0xB0, 0x10, 0xBD, 0x00, 0x00

	THUMB_FUNC_START sub_805C618
sub_805C618: @ 0x0805C618
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _0805C630
	movs r0, #2
	str r0, [sp]
	b _0805C686
_0805C630:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _0805C656
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _0805C650
	ldr r1, _0805C64C
	ldr r0, _0805C648
	b _0805C68C
	.align 2, 0
_0805C648: .4byte 0xC1E00000
_0805C64C: .4byte 0x00000000
_0805C650:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _0805C65A
_0805C656:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_0805C65A:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _0805C690
	cmp r0, r1
	bhi _0805C686
	adds r5, r1, #0
	ldr r4, [sp, #8]
_0805C66A:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _0805C66A
	str r4, [sp, #8]
_0805C686:
	mov r0, sp
	bl sub_805BA00
_0805C68C:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_0805C690: .4byte 0x0FFFFFFF

	THUMB_FUNC_START sub_805C694
sub_805C694: @ 0x0805C694
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_805BB48
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _0805C6AE
	movs r1, #1
_0805C6AE:
	cmp r1, #0
	bne _0805C6E2
	movs r1, #0
	cmp r0, #1
	bhi _0805C6BA
	movs r1, #1
_0805C6BA:
	cmp r1, #0
	bne _0805C6E2
	movs r1, #0
	cmp r0, #4
	bne _0805C6C6
	movs r1, #1
_0805C6C6:
	cmp r1, #0
	beq _0805C6DC
_0805C6CA:
	ldr r0, [sp, #4]
	ldr r1, _0805C6D8
	cmp r0, #0
	beq _0805C700
	adds r1, #1
	b _0805C700
	.align 2, 0
_0805C6D8: .4byte 0x7FFFFFFF
_0805C6DC:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _0805C6E6
_0805C6E2:
	movs r0, #0
	b _0805C702
_0805C6E6:
	cmp r0, #0x1e
	bgt _0805C6CA
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl sub_805D0E8
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0805C700
	rsbs r1, r1, #0
_0805C700:
	adds r0, r1, #0
_0805C702:
	add sp, #0x1c
	pop {pc}
	.byte 0x00, 0x00, 0x00, 0xB5, 0x87, 0xB0, 0x05, 0x90, 0x06, 0x91
	.byte 0x05, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x18, 0xFA, 0x00, 0x21, 0x01, 0x98, 0x00, 0x28, 0x00, 0xD1
	.byte 0x01, 0x21, 0x01, 0x91, 0x68, 0x46, 0xFF, 0xF7, 0x6B, 0xF9, 0x07, 0xB0, 0x00, 0xBD, 0x00, 0x00

	THUMB_FUNC_START sub_805C730
sub_805C730: @ 0x0805C730
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl sub_805BA00
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.byte 0x00, 0x00, 0x30, 0xB5, 0x87, 0xB0, 0x05, 0x90, 0x06, 0x91
	.byte 0x05, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xF0, 0xF9, 0x03, 0x9A, 0x04, 0x9B, 0x9D, 0x00, 0x94, 0x0F
	.byte 0x28, 0x1C, 0x20, 0x43, 0x05, 0x1C, 0x08, 0x4C, 0x10, 0x1C, 0x20, 0x40, 0x00, 0x21, 0x08, 0x43
	.byte 0x00, 0x28, 0x01, 0xD0, 0x01, 0x20, 0x05, 0x43, 0x00, 0x98, 0x01, 0x99, 0x02, 0x9A, 0x2B, 0x1C
	.byte 0x00, 0xF0, 0x88, 0xFC, 0x07, 0xB0, 0x30, 0xBD, 0xFF, 0xFF, 0xFF, 0x3F

	THUMB_FUNC_START sub_805C79C
sub_805C79C: @ 0x0805C79C
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _0805C7AE
	movs r1, #1
_0805C7AE:
	cmp r1, #0
	beq _0805C7BC
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _0805C822
_0805C7BC:
	movs r1, #0
	cmp r3, #4
	bne _0805C7C4
	movs r1, #1
_0805C7C4:
	cmp r1, #0
	bne _0805C7F8
	movs r1, #0
	cmp r3, #2
	bne _0805C7D0
	movs r1, #1
_0805C7D0:
	cmp r1, #0
	beq _0805C7D8
	movs r2, #0
	b _0805C822
_0805C7D8:
	cmp r2, #0
	beq _0805C822
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _0805C7F4
	subs r0, r3, r0
	cmp r0, #0x19
	ble _0805C7F0
	movs r2, #0
	b _0805C820
_0805C7F0:
	lsrs r2, r0
	b _0805C820
_0805C7F4:
	cmp r0, #0x7f
	ble _0805C7FE
_0805C7F8:
	movs r5, #0xff
	movs r2, #0
	b _0805C822
_0805C7FE:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _0805C816
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0805C818
	adds r2, #0x40
	b _0805C818
_0805C816:
	adds r2, #0x3f
_0805C818:
	cmp r2, #0
	bge _0805C820
	lsrs r2, r2, #1
	adds r5, #1
_0805C820:
	lsrs r2, r2, #7
_0805C822:
	ldr r0, _0805C844
	ands r2, r0
	ldr r0, _0805C848
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _0805C84C
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _0805C850
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805C844: .4byte 0x007FFFFF
_0805C848: .4byte 0xFF800000
_0805C84C: .4byte 0x807FFFFF
_0805C850: .4byte 0x7FFFFFFF

	THUMB_FUNC_START sub_805C854
sub_805C854: @ 0x0805C854
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _0805C898
	cmp r2, #0
	bne _0805C874
	movs r0, #2
	str r0, [r3]
	b _0805C8CC
_0805C874:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _0805C894
	cmp r2, r1
	bhi _0805C8B4
	adds r0, r4, #0
_0805C888:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _0805C888
	str r0, [r3, #8]
	b _0805C8B4
	.align 2, 0
_0805C894: .4byte 0x3FFFFFFF
_0805C898:
	cmp r1, #0xff
	bne _0805C8B8
	cmp r2, #0
	bne _0805C8A6
	movs r0, #4
	str r0, [r3]
	b _0805C8CC
_0805C8A6:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _0805C8B2
	movs r0, #1
_0805C8B2:
	str r0, [r3]
_0805C8B4:
	str r2, [r3, #0xc]
	b _0805C8CC
_0805C8B8:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_0805C8CC:
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805C8D0
sub_805C8D0: @ 0x0805C8D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _0805C8E6
	movs r0, #1
_0805C8E6:
	cmp r0, #0
	beq _0805C8EE
_0805C8EA:
	adds r0, r6, #0
	b _0805CA44
_0805C8EE:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _0805C8F8
	movs r1, #1
_0805C8F8:
	cmp r1, #0
	bne _0805C96C
	movs r1, #0
	cmp r2, #4
	bne _0805C904
	movs r1, #1
_0805C904:
	cmp r1, #0
	beq _0805C924
	movs r1, #0
	cmp r0, #4
	bne _0805C910
	movs r1, #1
_0805C910:
	cmp r1, #0
	beq _0805C8EA
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _0805C8EA
	ldr r0, _0805C920
	b _0805CA44
	.align 2, 0
_0805C920: .4byte 0x02020A18
_0805C924:
	movs r1, #0
	cmp r0, #4
	bne _0805C92C
	movs r1, #1
_0805C92C:
	cmp r1, #0
	bne _0805C96C
	movs r1, #0
	cmp r0, #2
	bne _0805C938
	movs r1, #1
_0805C938:
	cmp r1, #0
	beq _0805C95E
	movs r0, #0
	cmp r2, #2
	bne _0805C944
	movs r0, #1
_0805C944:
	cmp r0, #0
	beq _0805C8EA
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _0805CA42
_0805C95E:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _0805C968
	movs r1, #1
_0805C968:
	cmp r1, #0
	beq _0805C970
_0805C96C:
	adds r0, r7, #0
	b _0805CA44
_0805C970:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _0805C980
	rsbs r0, r0, #0
_0805C980:
	cmp r0, #0x1f
	bgt _0805C9C4
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _0805C9A6
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_0805C994:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _0805C994
	adds r3, r1, #0
_0805C9A6:
	cmp r3, r1
	ble _0805C9D6
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_0805C9B0:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _0805C9B0
	adds r1, r3, #0
	b _0805C9D6
_0805C9C4:
	cmp r1, r3
	ble _0805C9CC
	movs r4, #0
	b _0805C9D0
_0805C9CC:
	adds r1, r3, #0
	movs r2, #0
_0805C9D0:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_0805C9D6:
	cmp r6, r8
	beq _0805CA20
	cmp r6, #0
	beq _0805C9E2
	subs r3, r4, r2
	b _0805C9E4
_0805C9E2:
	subs r3, r2, r4
_0805C9E4:
	cmp r3, #0
	blt _0805C9F2
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _0805C9FC
_0805C9F2:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_0805C9FC:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _0805CA1C
	cmp r0, r2
	bhi _0805CA28
_0805CA06:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _0805CA06
	b _0805CA28
	.align 2, 0
_0805CA1C: .4byte 0x3FFFFFFE
_0805CA20:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_0805CA28:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _0805CA42
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_0805CA42:
	adds r0, r5, #0
_0805CA44:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00, 0x10, 0xB5, 0x8E, 0xB0
	.byte 0x0C, 0x90, 0x0D, 0x91, 0x0C, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xFC, 0xFE, 0x0D, 0xA8, 0x04, 0xAC
	.byte 0x21, 0x1C, 0xFF, 0xF7, 0xF7, 0xFE, 0x08, 0xAA, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7, 0x30, 0xFF
	.byte 0xFF, 0xF7, 0x94, 0xFE, 0x0E, 0xB0, 0x10, 0xBD, 0x10, 0xB5, 0x8E, 0xB0, 0x0C, 0x90, 0x0D, 0x91
	.byte 0x0C, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xE6, 0xFE, 0x0D, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0xE1, 0xFE, 0x60, 0x68, 0x01, 0x21, 0x48, 0x40, 0x60, 0x60, 0x08, 0xAA, 0x68, 0x46, 0x21, 0x1C
	.byte 0xFF, 0xF7, 0x16, 0xFF, 0xFF, 0xF7, 0x7A, 0xFE, 0x0E, 0xB0, 0x10, 0xBD, 0xF0, 0xB5, 0x4F, 0x46
	.byte 0x46, 0x46, 0xC0, 0xB4, 0x8E, 0xB0, 0x0C, 0x90, 0x0D, 0x91, 0x0C, 0xA8, 0x69, 0x46, 0xFF, 0xF7
	.byte 0xC9, 0xFE, 0x0D, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0xC4, 0xFE, 0x6F, 0x46, 0x08, 0xA8
	.byte 0x80, 0x46, 0x00, 0x20, 0x00, 0x99, 0xC1, 0x46, 0x01, 0x29, 0x00, 0xD8, 0x01, 0x20, 0x00, 0x28
	.byte 0x2C, 0xD1, 0x00, 0x22, 0x04, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x22, 0x00, 0x2A, 0x01, 0xD0
	.byte 0x01, 0x98, 0x33, 0xE0, 0x00, 0x22, 0x04, 0x29, 0x00, 0xD1, 0x01, 0x22, 0x00, 0x2A, 0x06, 0xD0
	.byte 0x00, 0x21, 0x02, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x00, 0x29, 0x0C, 0xD1, 0x16, 0xE0, 0x00, 0x22
	.byte 0x04, 0x28, 0x00, 0xD1, 0x01, 0x22, 0x00, 0x2A, 0x0A, 0xD0, 0x00, 0x20, 0x02, 0x29, 0x00, 0xD1
	.byte 0x01, 0x20, 0x00, 0x28, 0x19, 0xD0, 0x01, 0x48, 0x69, 0xE0, 0x00, 0x00, 0x18, 0x0A, 0x02, 0x02
	.byte 0x00, 0x22, 0x02, 0x29, 0x00, 0xD1, 0x01, 0x22, 0x00, 0x2A, 0x08, 0xD0, 0x01, 0x98, 0x05, 0x99
	.byte 0x48, 0x40, 0x41, 0x42, 0x01, 0x43, 0xC9, 0x0F, 0x01, 0x91, 0x68, 0x46, 0x57, 0xE0, 0x00, 0x21
	.byte 0x02, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x00, 0x29, 0x08, 0xD0, 0x78, 0x68, 0x05, 0x99, 0x48, 0x40
	.byte 0x41, 0x42, 0x01, 0x43, 0xC9, 0x0F, 0x05, 0x91, 0x20, 0x1C, 0x48, 0xE0, 0xF8, 0x68, 0x00, 0x21
	.byte 0x07, 0x9A, 0x00, 0x23, 0xFE, 0xF7, 0xAE, 0xFA, 0x0A, 0x1C, 0x15, 0x1C, 0x06, 0x1C, 0xBC, 0x68
	.byte 0x06, 0x98, 0x24, 0x18, 0x0A, 0x94, 0x79, 0x68, 0x05, 0x98, 0x41, 0x40, 0x48, 0x42, 0x08, 0x43
	.byte 0xC0, 0x0F, 0x09, 0x90, 0x02, 0x34, 0x0A, 0x94, 0x00, 0x2A, 0x0D, 0xDA, 0x01, 0x22, 0x80, 0x21
	.byte 0x09, 0x06, 0x01, 0x34, 0x28, 0x1C, 0x10, 0x40, 0x00, 0x28, 0x01, 0xD0, 0x76, 0x08, 0x0E, 0x43
	.byte 0x6D, 0x08, 0x00, 0x2D, 0xF5, 0xDB, 0x0A, 0x94, 0x14, 0x48, 0x85, 0x42, 0x0F, 0xD8, 0x80, 0x24
	.byte 0x24, 0x06, 0x01, 0x23, 0x02, 0x1C, 0x0A, 0x99, 0x01, 0x39, 0x6D, 0x00, 0x30, 0x1C, 0x20, 0x40
	.byte 0x00, 0x28, 0x00, 0xD0, 0x1D, 0x43, 0x76, 0x00, 0x95, 0x42, 0xF5, 0xD9, 0x0A, 0x91, 0x7F, 0x20
	.byte 0x28, 0x40, 0x40, 0x28, 0x06, 0xD1, 0x80, 0x20, 0x28, 0x40, 0x00, 0x28, 0x01, 0xD1, 0x00, 0x2E
	.byte 0x00, 0xD0, 0x40, 0x35, 0x0B, 0x95, 0x03, 0x20, 0x41, 0x46, 0x08, 0x60, 0x48, 0x46, 0xFF, 0xF7
	.byte 0xCD, 0xFD, 0x0E, 0xB0, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBD, 0xFF, 0xFF, 0xFF, 0x3F
	.byte 0x70, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91, 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x1A, 0xFE
	.byte 0x09, 0xA8, 0x04, 0xAD, 0x29, 0x1C, 0xFF, 0xF7, 0x15, 0xFE, 0x6C, 0x46, 0x00, 0x20, 0x00, 0x9B
	.byte 0x01, 0x2B, 0x00, 0xD8, 0x01, 0x20, 0x00, 0x28, 0x01, 0xD0, 0x69, 0x46, 0x58, 0xE0, 0x00, 0x20
	.byte 0x04, 0x9A, 0x16, 0x1C, 0x01, 0x2A, 0x00, 0xD8, 0x01, 0x20, 0x00, 0x28, 0x01, 0xD0, 0x29, 0x1C
	.byte 0x4E, 0xE0, 0x01, 0x98, 0x05, 0x99, 0x48, 0x40, 0x01, 0x90, 0x00, 0x20, 0x04, 0x2B, 0x00, 0xD1
	.byte 0x01, 0x20, 0x00, 0x28, 0x05, 0xD1, 0x00, 0x20, 0x02, 0x2B, 0x00, 0xD1, 0x01, 0x20, 0x00, 0x28
	.byte 0x08, 0xD0, 0x20, 0x68, 0x21, 0x1C, 0xB0, 0x42, 0x3A, 0xD1, 0x01, 0x49, 0x38, 0xE0, 0x00, 0x00
	.byte 0x18, 0x0A, 0x02, 0x02, 0x00, 0x21, 0x04, 0x2A, 0x00, 0xD1, 0x01, 0x21, 0x00, 0x29, 0x03, 0xD0
	.byte 0x03, 0x90, 0x02, 0x90, 0x69, 0x46, 0x2B, 0xE0, 0x00, 0x20, 0x02, 0x2A, 0x00, 0xD1, 0x01, 0x20
	.byte 0x00, 0x28, 0x02, 0xD0, 0x04, 0x20, 0x20, 0x60, 0x21, 0xE0, 0xA1, 0x68, 0x06, 0x98, 0x08, 0x1A
	.byte 0xA0, 0x60, 0xE2, 0x68, 0x07, 0x9B, 0x9A, 0x42, 0x02, 0xD2, 0x52, 0x00, 0x01, 0x38, 0xA0, 0x60
	.byte 0x80, 0x20, 0xC0, 0x05, 0x00, 0x21, 0x9A, 0x42, 0x01, 0xD3, 0x01, 0x43, 0xD2, 0x1A, 0x40, 0x08
	.byte 0x52, 0x00, 0x00, 0x28, 0xF7, 0xD1, 0x7F, 0x20, 0x08, 0x40, 0x40, 0x28, 0x06, 0xD1, 0x80, 0x20
	.byte 0x08, 0x40, 0x00, 0x28, 0x01, 0xD1, 0x00, 0x2A, 0x00, 0xD0, 0x40, 0x31, 0xE1, 0x60, 0x21, 0x1C
	.byte 0x08, 0x1C, 0xFF, 0xF7, 0x53, 0xFD, 0x0A, 0xB0, 0x70, 0xBD, 0x00, 0x00

	THUMB_FUNC_START sub_805CCFC
sub_805CCFC: @ 0x0805CCFC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _0805CD0A
	movs r0, #1
_0805CD0A:
	cmp r0, #0
	bne _0805CD1C
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _0805CD18
	movs r0, #1
_0805CD18:
	cmp r0, #0
	beq _0805CD20
_0805CD1C:
	movs r0, #1
	b _0805CDDE
_0805CD20:
	movs r0, #0
	cmp r2, #4
	bne _0805CD28
	movs r0, #1
_0805CD28:
	cmp r0, #0
	beq _0805CD40
	movs r0, #0
	cmp r3, #4
	bne _0805CD34
	movs r0, #1
_0805CD34:
	cmp r0, #0
	beq _0805CD40
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _0805CDDE
_0805CD40:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _0805CD4A
	movs r2, #1
_0805CD4A:
	cmp r2, #0
	bne _0805CD98
	movs r2, #0
	cmp r3, #4
	bne _0805CD56
	movs r2, #1
_0805CD56:
	cmp r2, #0
	beq _0805CD68
_0805CD5A:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _0805CDA2
	movs r1, #1
	b _0805CDA2
_0805CD68:
	movs r2, #0
	cmp r0, #2
	bne _0805CD70
	movs r2, #1
_0805CD70:
	cmp r2, #0
	beq _0805CD80
	movs r2, #0
	cmp r3, #2
	bne _0805CD7C
	movs r2, #1
_0805CD7C:
	cmp r2, #0
	bne _0805CDDC
_0805CD80:
	movs r2, #0
	cmp r0, #2
	bne _0805CD88
	movs r2, #1
_0805CD88:
	cmp r2, #0
	bne _0805CD5A
	movs r0, #0
	cmp r3, #2
	bne _0805CD94
	movs r0, #1
_0805CD94:
	cmp r0, #0
	beq _0805CDA6
_0805CD98:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _0805CDA2
	subs r1, #2
_0805CDA2:
	adds r0, r1, #0
	b _0805CDDE
_0805CDA6:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _0805CDB8
_0805CDAE:
	movs r0, #1
	cmp r3, #0
	beq _0805CDDE
	subs r0, #2
	b _0805CDDE
_0805CDB8:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _0805CDAE
	cmp r2, r0
	bge _0805CDD0
_0805CDC4:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _0805CDDE
	movs r0, #1
	b _0805CDDE
_0805CDD0:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _0805CDAE
	cmp r0, r1
	blo _0805CDC4
_0805CDDC:
	movs r0, #0
_0805CDDE:
	pop {r4, pc}
	.byte 0x10, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91, 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x32, 0xFD
	.byte 0x09, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0x2D, 0xFD, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0x7D, 0xFF, 0x0A, 0xB0, 0x10, 0xBD, 0x00, 0x00, 0x10, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91
	.byte 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x1E, 0xFD, 0x09, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0x19, 0xFD, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1
	.byte 0x00, 0x21, 0x04, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20
	.byte 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7, 0x59, 0xFF, 0x0A, 0xB0, 0x10, 0xBD, 0x00, 0x00
	.byte 0x10, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91, 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xFA, 0xFC
	.byte 0x09, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0xF5, 0xFC, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28
	.byte 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x04, 0x98, 0x01, 0x28, 0x00, 0xD8
	.byte 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20, 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0x35, 0xFF, 0x0A, 0xB0, 0x10, 0xBD, 0x00, 0x00, 0x10, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91
	.byte 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xD6, 0xFC, 0x09, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0xD1, 0xFC, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1
	.byte 0x00, 0x21, 0x04, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x02, 0xD0, 0x01, 0x20
	.byte 0x40, 0x42, 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7, 0x10, 0xFF, 0x0A, 0xB0, 0x10, 0xBD
	.byte 0x10, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91, 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xB2, 0xFC
	.byte 0x09, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0xAD, 0xFC, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28
	.byte 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x04, 0x98, 0x01, 0x28, 0x00, 0xD8
	.byte 0x01, 0x21, 0x00, 0x29, 0x02, 0xD0, 0x01, 0x20, 0x40, 0x42, 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C
	.byte 0xFF, 0xF7, 0xEC, 0xFE, 0x0A, 0xB0, 0x10, 0xBD, 0x10, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91
	.byte 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x8E, 0xFC, 0x09, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0x89, 0xFC, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1
	.byte 0x00, 0x21, 0x04, 0x98, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20
	.byte 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7, 0xC9, 0xFE, 0x0A, 0xB0, 0x10, 0xBD, 0x00, 0x00
	.byte 0x10, 0xB5, 0x8A, 0xB0, 0x08, 0x90, 0x09, 0x91, 0x08, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0x6A, 0xFC
	.byte 0x09, 0xA8, 0x04, 0xAC, 0x21, 0x1C, 0xFF, 0xF7, 0x65, 0xFC, 0x00, 0x21, 0x00, 0x98, 0x01, 0x28
	.byte 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x06, 0xD1, 0x00, 0x21, 0x04, 0x98, 0x01, 0x28, 0x00, 0xD8
	.byte 0x01, 0x21, 0x00, 0x29, 0x01, 0xD0, 0x01, 0x20, 0x03, 0xE0, 0x68, 0x46, 0x21, 0x1C, 0xFF, 0xF7
	.byte 0xA5, 0xFE, 0x0A, 0xB0, 0x10, 0xBD, 0x00, 0x00, 0x00, 0xB5, 0x84, 0xB0, 0x01, 0x1C, 0x03, 0x20
	.byte 0x00, 0x90, 0xCA, 0x0F, 0x01, 0x92, 0x00, 0x29, 0x02, 0xD1, 0x02, 0x20, 0x00, 0x90, 0x1B, 0xE0
	.byte 0x1E, 0x20, 0x02, 0x90, 0x00, 0x2A, 0x0A, 0xD0, 0x80, 0x20, 0x00, 0x06, 0x81, 0x42, 0x03, 0xD1
	.byte 0x00, 0x48, 0x14, 0xE0, 0x00, 0x00, 0x00, 0xCF, 0x48, 0x42, 0x03, 0x90, 0x00, 0xE0, 0x03, 0x91
	.byte 0x03, 0x9A, 0x08, 0x4B, 0x9A, 0x42, 0x07, 0xD8, 0x02, 0x99, 0x50, 0x00, 0x01, 0x39, 0x02, 0x1C
	.byte 0x98, 0x42, 0xFA, 0xD9, 0x02, 0x91, 0x03, 0x90, 0x68, 0x46, 0xFF, 0xF7, 0xC7, 0xFB, 0x04, 0xB0
	.byte 0x00, 0xBD, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x3F, 0x00, 0xB5, 0x85, 0xB0, 0x04, 0x90, 0x04, 0xA8
	.byte 0x69, 0x46, 0xFF, 0xF7, 0x17, 0xFC, 0x00, 0x21, 0x00, 0x98, 0x02, 0x28, 0x00, 0xD1, 0x01, 0x21
	.byte 0x00, 0x29, 0x16, 0xD1, 0x00, 0x21, 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x10, 0xD1
	.byte 0x00, 0x21, 0x04, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x00, 0x29, 0x07, 0xD0, 0x01, 0x98, 0x02, 0x49
	.byte 0x00, 0x28, 0x12, 0xD0, 0x01, 0x31, 0x10, 0xE0, 0xFF, 0xFF, 0xFF, 0x7F, 0x02, 0x99, 0x00, 0x29
	.byte 0x01, 0xDA, 0x00, 0x20, 0x0A, 0xE0, 0x1E, 0x29, 0xF0, 0xDC, 0x1E, 0x20, 0x40, 0x1A, 0x03, 0x99
	.byte 0xC1, 0x40, 0x01, 0x98, 0x00, 0x28, 0x00, 0xD0, 0x49, 0x42, 0x08, 0x1C, 0x05, 0xB0, 0x00, 0xBD
	.byte 0x00, 0xB5, 0x85, 0xB0, 0x04, 0x90, 0x04, 0xA8, 0x69, 0x46, 0xFF, 0xF7, 0xE3, 0xFB, 0x00, 0x21
	.byte 0x01, 0x98, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x01, 0x91, 0x68, 0x46, 0xFF, 0xF7, 0x7E, 0xFB
	.byte 0x05, 0xB0, 0x00, 0xBD

	THUMB_FUNC_START sub_805D0A4
sub_805D0A4: @ 0x0805D0A4
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl sub_805C79C
	add sp, #0x10
	pop {pc}
	.byte 0x00, 0x00, 0x70, 0xB5, 0x86, 0xB0
	.byte 0x05, 0x90, 0x05, 0xA8, 0x01, 0xA9, 0xFF, 0xF7, 0xC5, 0xFB, 0x01, 0x98, 0x02, 0x99, 0x03, 0x9A
	.byte 0x04, 0x9B, 0x00, 0x24, 0x9E, 0x08, 0xA5, 0x07, 0x34, 0x1C, 0x2C, 0x43, 0x9B, 0x07, 0x00, 0x94
	.byte 0xFF, 0xF7, 0x26, 0xFB, 0x06, 0xB0, 0x70, 0xBD

	THUMB_FUNC_START sub_805D0E8
sub_805D0E8: @ 0x0805D0E8
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _0805D118
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _0805D104
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _0805D114
_0805D104:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_0805D114:
	adds r1, r4, #0
	adds r0, r3, #0
_0805D118:
	pop {r4, r5, r6, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805D11C
sub_805D11C: @ 0x0805D11C
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	rsbs r1, r1, #0
	cmp r2, #0
	beq _0805D12A
	subs r1, #1
_0805D12A:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805D134
sub_805D134: @ 0x0805D134
	adds r2, r0, #0
	adds r0, r1, #0
	subs r1, #1
	cmp r0, #0
	beq _0805D14C
	movs r3, #0
_0805D140:
	strb r3, [r2]
	adds r2, #1
	adds r0, r1, #0
	subs r1, #1
	cmp r0, #0
	bne _0805D140
_0805D14C:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805D150
sub_805D150: @ 0x0805D150
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _0805D190
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805D190
	adds r1, r5, #0
_0805D16A:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _0805D16A
	cmp r2, #3
	bls _0805D18E
_0805D184:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _0805D184
_0805D18E:
	adds r4, r1, #0
_0805D190:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0805D1AA
	adds r1, r0, #0
_0805D19C:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _0805D19C
_0805D1AA:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805D1B0
sub_805D1B0: @ 0x0805D1B0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r3, r6, #0
	adds r2, r1, #0
	adds r0, r2, #0
	orrs r0, r6
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805D1E8
	ldr r1, [r2]
	ldr r5, _0805D1D0
	adds r0, r1, r5
	bics r0, r1
	ldr r4, _0805D1D4
	b _0805D1E2
	.align 2, 0
_0805D1D0: .4byte 0xFEFEFEFF
_0805D1D4: .4byte 0x80808080
_0805D1D8:
	ldm r2!, {r0}
	stm r3!, {r0}
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
_0805D1E2:
	ands r0, r4
	cmp r0, #0
	beq _0805D1D8
_0805D1E8:
	ldrb r0, [r2]
	strb r0, [r3]
	lsls r0, r0, #0x18
	adds r2, #1
	adds r3, #1
	cmp r0, #0
	bne _0805D1E8
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805D1FC
sub_805D1FC: @ 0x0805D1FC
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0805D234
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _0805D218
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _0805D21C
	b _0805D228
	.align 2, 0
_0805D218: .4byte 0xFEFEFEFF
_0805D21C: .4byte 0x80808080
_0805D220:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_0805D228:
	ands r0, r3
	cmp r0, #0
	beq _0805D220
	adds r1, r2, #0
	b _0805D234
_0805D232:
	adds r1, #1
_0805D234:
	ldrb r0, [r1]
	cmp r0, #0
	bne _0805D232
	subs r0, r1, r5
	pop {r4, r5, pc}
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_805D240
sub_805D240: @ 0x0805D240
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r7, #0
	adds r3, r1, #0
	adds r0, r3, #0
	orrs r0, r7
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805D282
	cmp r2, #3
	bls _0805D282
	ldr r1, [r3]
	ldr r6, _0805D264
	adds r0, r1, r6
	bics r0, r1
	ldr r5, _0805D268
	b _0805D27C
	.align 2, 0
_0805D264: .4byte 0xFEFEFEFF
_0805D268: .4byte 0x80808080
_0805D26C:
	subs r2, #4
	ldm r3!, {r0}
	stm r4!, {r0}
	cmp r2, #3
	bls _0805D282
	ldr r1, [r3]
	adds r0, r1, r6
	bics r0, r1
_0805D27C:
	ands r0, r5
	cmp r0, #0
	beq _0805D26C
_0805D282:
	cmp r2, #0
	beq _0805D296
	subs r2, #1
	ldrb r0, [r3]
	strb r0, [r4]
	lsls r0, r0, #0x18
	adds r3, #1
	adds r4, #1
	cmp r0, #0
	bne _0805D282
_0805D296:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	beq _0805D2AC
	movs r1, #0
_0805D2A0:
	strb r1, [r4]
	adds r4, #1
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _0805D2A0
_0805D2AC:
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}

.align 2, 0
