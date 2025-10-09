    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED



	THUMB_FUNC_START sub_800CFD0
sub_800CFD0: @ 0x0800CFD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	movs r0, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x2c
	ldr r1, _0800D094
	ldr r2, _0800D098
	bl CpuSet
	movs r7, #0
_0800CFEC:
	adds r0, r7, #0
	bl GetNthCardOnScreen
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_800DA48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	adds r0, r7, #0
	bl GetNthCardOnScreen
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r4, #0
	cmp r7, #1
	bls _0800D01C
	movs r4, #2
	cmp r7, #2
	bne _0800D01C
	movs r4, #1
_0800D01C:
	ldr r1, _0800D09C
	ldrh r0, [r1, #0x10]
	movs r1, #1
	bl ConvertU16ToDigitBuffer
	movs r3, #0
	lsls r2, r7, #1
	mov r8, r2
	adds r6, r4, #2
	mov sb, r6
	lsls r0, r7, #2
	mov sl, r0
	adds r1, r4, #3
	str r1, [sp, #0x38]
	adds r4, #4
	str r4, [sp, #0x3c]
	lsrs r2, r7, #2
	str r2, [sp, #0x44]
	lsls r4, r7, #3
	str r4, [sp, #0x40]
	lsls r6, r7, #5
	str r6, [sp, #0x48]
	adds r0, r7, #1
	str r0, [sp, #0x34]
	ldr r6, _0800D0A0
	mov r1, r8
	adds r0, r1, r7
	add r0, sb
	lsls r0, r0, #5
	ldr r4, _0800D0A4
	adds r2, r0, r4
	ldr r5, _0800D0A8
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_0800D062:
	adds r1, r3, r2
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, r5
	ldrb r0, [r0]
	adds r0, #9
	orrs r0, r4
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0800D062
	ldr r2, _0800D09C
	ldr r5, [r2]
	adds r0, r5, #0
	bl GetCurrentLanguageString
	adds r5, r0, #0
	movs r6, #0
	movs r3, #0
	movs r4, #0
	ldrb r0, [r5]
	b _0800D0F8
	.align 2, 0
_0800D094: .4byte 0x0200E300
_0800D098: .4byte 0x05000640
_0800D09C: .4byte gCardInfo
_0800D0A0: .4byte 0x02000400
_0800D0A4: .4byte 0x00007C01
_0800D0A8: .4byte gDigitBufferU16
_0800D0AC:
	adds r2, r5, r3
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _0800D0CC
	cmp r6, #0x13
	bhi _0800D0C8
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0800D0C8:
	adds r0, r3, #1
	b _0800D0EA
_0800D0CC:
	cmp r6, #0x13
	bhi _0800D0E8
	mov r0, sp
	adds r0, r0, r4
	strb r1, [r0]
	adds r0, r4, #1
	add r0, sp
	mov ip, r0
	ldrb r0, [r2, #1]
	mov r1, ip
	strb r0, [r1]
	adds r0, r4, #2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0800D0E8:
	adds r0, r3, #2
_0800D0EA:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r5, r3
	ldrb r0, [r0]
_0800D0F8:
	cmp r0, #0
	beq _0800D100
	cmp r0, #0x24
	bne _0800D0AC
_0800D100:
	mov r2, sp
	adds r1, r2, r4
	movs r0, #0
	strb r0, [r1]
	mov r4, sl
	adds r0, r4, r7
	lsls r0, r0, #8
	movs r6, #0xf8
	lsls r6, r6, #5
	adds r0, r0, r6
	ldr r4, _0800D148
	adds r0, r0, r4
	mov r1, sp
	ldr r2, _0800D14C
	bl CopyStringTilesToVRAMBuffer
	movs r3, #0
	ldr r0, _0800D150
	adds r4, r4, r0
	mov r1, r8
	adds r0, r1, r7
	add r0, sb
	lsls r0, r0, #5
	ldr r6, _0800D154
	adds r2, r0, r6
	ldr r5, _0800D158
_0800D134:
	ldr r0, _0800D15C
	ldrb r0, [r0, #0x18]
	cmp r3, r0
	bhs _0800D160
	subs r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	strh r5, [r0]
	b _0800D16C
	.align 2, 0
_0800D148: .4byte 0x0200C400
_0800D14C: .4byte 0x00000901
_0800D150: .4byte 0xFFFF4000
_0800D154: .4byte 0x00007C10
_0800D158: .4byte 0x00005001
_0800D15C: .4byte gCardInfo
_0800D160:
	subs r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xa0
	lsls r1, r1, #7
	strh r1, [r0]
_0800D16C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xb
	bls _0800D134
	ldr r1, _0800D250
	ldrh r0, [r1, #0x10]
	bl GetTrunkCardQuantity
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl ConvertU16ToDigitBuffer
	movs r3, #0
	ldr r5, _0800D254
	mov r2, r8
	adds r0, r2, r7
	ldr r4, [sp, #0x38]
	adds r0, r0, r4
	lsls r0, r0, #5
	ldr r6, _0800D258
	adds r2, r0, r6
	ldr r4, _0800D25C
_0800D19C:
	adds r1, r3, r2
	lsls r1, r1, #1
	adds r1, r1, r5
	adds r0, r3, r4
	ldrb r0, [r0]
	adds r0, #9
	ldr r6, [sp, #0x30]
	orrs r0, r6
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0800D19C
	ldr r1, _0800D250
	ldrh r0, [r1, #0x10]
	bl GetDeckCardQty
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	movs r3, #0
	ldr r6, _0800D254
	mov r2, r8
	adds r0, r2, r7
	ldr r4, [sp, #0x3c]
	adds r0, r0, r4
	lsls r0, r0, #5
	ldr r1, _0800D258
	adds r2, r0, r1
	ldr r5, _0800D25C
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_0800D1E4:
	adds r1, r3, r2
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, #2
	adds r0, r0, r5
	ldrb r0, [r0]
	adds r0, #9
	orrs r0, r4
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0800D1E4
	movs r0, #3
	ands r0, r7
	lsls r0, r0, #8
	ldr r2, [sp, #0x44]
	lsls r1, r2, #0xc
	movs r4, #0x82
	lsls r4, r4, #9
	adds r1, r1, r4
	orrs r0, r1
	ldr r1, _0800D254
	adds r0, r0, r1
	ldr r6, _0800D250
	ldrh r1, [r6, #0x10]
	bl sub_80573D0
	ldr r0, _0800D260
	ldr r1, [sp, #0x40]
	adds r3, r1, r0
	ldrb r1, [r3, #1]
	movs r0, #0x3f
	adds r2, r0, #0
	ands r2, r1
	strb r2, [r3, #1]
	ldrb r1, [r3, #3]
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	cmp r7, #2
	bne _0800D264
	movs r4, #0xd
	rsbs r4, r4, #0
	adds r0, r4, #0
	adds r1, r2, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r3, #1]
	b _0800D270
	.align 2, 0
_0800D250: .4byte gCardInfo
_0800D254: .4byte 0x02000400
_0800D258: .4byte 0x00007C17
_0800D25C: .4byte gDigitBufferU16
_0800D260: .4byte gOamBuffer
_0800D264:
	movs r6, #0xd
	rsbs r6, r6, #0
	adds r1, r6, #0
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3, #1]
_0800D270:
	ldrb r0, [r3, #1]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #1]
	ldrb r1, [r3, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strb r1, [r3, #5]
	ldr r0, [sp, #0x48]
	adds r0, #0xc
	strb r0, [r3]
	ldrh r1, [r3, #2]
	ldr r4, _0800D348
	adds r0, r4, #0
	ands r1, r0
	movs r0, #0xd2
	orrs r1, r0
	strh r1, [r3, #2]
	movs r0, #3
	ands r7, r0
	lsls r2, r7, #3
	adds r2, #0x20
	ldr r6, [sp, #0x44]
	lsls r0, r6, #7
	adds r2, r2, r0
	ldr r1, _0800D34C
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3, #4]
	ldr r4, _0800D350
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
	ldr r6, [sp, #0x34]
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bhi _0800D2C8
	b _0800CFEC
_0800D2C8:
	bl GetPlayerDeckCost
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	movs r3, #0
	ldr r6, _0800D354
	ldr r5, _0800D358
	ldr r4, _0800D35C
	ldr r0, _0800D360
	adds r2, r0, #0
_0800D2E2:
	adds r1, r3, r5
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, r4
	ldrb r0, [r0]
	adds r0, r2, r0
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0800D2E2
	bl GetPlayerDeckSize
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	movs r3, #0
	ldr r6, _0800D354
	ldr r5, _0800D364
	ldr r4, _0800D35C
	ldr r1, _0800D360
	adds r2, r1, #0
_0800D314:
	adds r1, r3, r5
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, #3
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r0, r2, r0
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0800D314
	bl sub_800907C
	bl sub_800A544
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D348: .4byte 0xFFFFFE00
_0800D34C: .4byte 0x000003FF
_0800D350: .4byte 0xFFFFFC00
_0800D354: .4byte 0x02000400
_0800D358: .4byte 0x00005C2A
_0800D35C: .4byte gDigitBufferU16
_0800D360: .4byte 0x00005209
_0800D364: .4byte 0x00005C36

	THUMB_FUNC_START sub_800D368
sub_800D368: @ 0x0800D368
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r4, #0
	movs r0, #0xa0
	lsls r0, r0, #7
	mov r8, r0
_0800D37C:
	movs r1, #0
	cmp r4, #1
	bls _0800D38A
	movs r1, #2
	cmp r4, #2
	bne _0800D38A
	movs r1, #1
_0800D38A:
	movs r5, #0
	lsls r0, r4, #1
	adds r3, r1, #3
	adds r6, r1, #4
	ldr r7, _0800D474
	adds r0, r0, r4
	adds r1, r0, r3
	lsls r1, r1, #5
	ldr r2, _0800D478
	adds r3, r1, r2
	adds r0, r0, r6
	lsls r0, r0, #5
	adds r1, r0, r2
_0800D3A4:
	adds r0, r5, r3
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r2, r8
	strh r2, [r0]
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r2, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _0800D3A4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0800D37C
	movs r4, #0
_0800D3CC:
	movs r1, #0
	cmp r4, #1
	bls _0800D3DA
	movs r1, #2
	cmp r4, #2
	bne _0800D3DA
	movs r1, #1
_0800D3DA:
	movs r5, #0
	lsls r0, r4, #1
	adds r3, r1, #3
	adds r6, r1, #4
	adds r1, r4, #1
	str r1, [sp, #4]
	lsls r2, r4, #2
	ldr r7, _0800D474
	adds r1, r0, r4
	adds r0, r1, r3
	lsls r0, r0, #5
	mov r8, r0
	ldr r3, _0800D478
	mov sb, r3
	ldr r0, _0800D47C
	mov r3, r8
	adds r3, r3, r0
	str r3, [sp]
	adds r2, r2, r4
	lsls r2, r2, #3
	mov ip, r2
	ldr r2, _0800D480
	add r2, ip
	mov sl, r2
	adds r1, r1, r6
	lsls r4, r1, #5
	adds r0, r4, r0
	str r0, [sp, #8]
_0800D412:
	lsls r2, r5, #1
	mov r1, r8
	add r1, sb
	adds r1, r2, r1
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r3, r5, #2
	ldr r6, _0800D480
	adds r0, r3, r6
	add r0, ip
	strh r0, [r1]
	ldr r1, [sp]
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	add r3, sl
	adds r1, r3, #1
	strh r1, [r0]
	mov r6, sb
	adds r0, r4, r6
	adds r0, r2, r0
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r1, r3, #2
	strh r1, [r0]
	ldr r0, [sp, #8]
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r7
	adds r3, #3
	strh r3, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0800D412
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0800D3CC
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D474: .4byte 0x02000400
_0800D478: .4byte 0x00007C10
_0800D47C: .4byte 0x00007C11
_0800D480: .4byte 0x00005114

	THUMB_FUNC_START sub_800D484
sub_800D484: @ 0x0800D484
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _0800D55C
	mov sl, r0
_0800D494:
	adds r0, r6, #0
	bl GetNthCardOnScreen
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r7, #0
	cmp r6, #1
	bls _0800D4B0
	movs r7, #2
	cmp r6, #2
	bne _0800D4B0
	movs r7, #1
_0800D4B0:
	lsls r5, r6, #1
	adds r4, r5, r6
	adds r0, r7, #3
	adds r4, r4, r0
	lsls r4, r4, #5
	ldr r1, _0800D560
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sl
	ldr r1, _0800D564
	strh r1, [r0]
	ldr r0, _0800D568
	ldrh r0, [r0, #0x12]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	movs r2, #0
	adds r3, r5, #0
	adds r5, r7, #4
	adds r7, r6, #1
	mov sb, r7
	ldr r0, _0800D55C
	mov r8, r0
	ldr r1, _0800D56C
	adds r4, r4, r1
	ldr r7, _0800D570
	mov ip, r7
_0800D4E6:
	adds r0, r2, r4
	lsls r0, r0, #1
	add r0, r8
	mov r7, ip
	adds r1, r2, r7
	ldr r7, _0800D574
	ldrb r1, [r1]
	adds r1, r7, r1
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0800D4E6
	adds r4, r3, r6
	adds r4, r4, r5
	lsls r4, r4, #5
	ldr r1, _0800D560
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sl
	ldr r1, _0800D578
	strh r1, [r0]
	ldr r0, _0800D568
	ldrh r0, [r0, #0x14]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	movs r2, #0
	ldr r6, _0800D55C
	ldr r7, _0800D56C
	adds r4, r4, r7
	ldr r5, _0800D570
	ldr r0, _0800D57C
	adds r3, r0, #0
_0800D52C:
	adds r0, r2, r4
	lsls r0, r0, #1
	adds r0, r0, r6
	adds r1, r2, r5
	ldrb r1, [r1]
	adds r1, r3, r1
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0800D52C
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0800D494
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D55C: .4byte 0x02000400
_0800D560: .4byte 0x00007C10
_0800D564: .4byte 0x00005002
_0800D568: .4byte gCardInfo
_0800D56C: .4byte 0x00007C11
_0800D570: .4byte gDigitBufferU16
_0800D574: .4byte 0x00002009
_0800D578: .4byte 0x00005003
_0800D57C: .4byte 0x00001009

	THUMB_FUNC_START sub_800D580
sub_800D580: @ 0x0800D580
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov r8, r0
_0800D590:
	mov r0, r8
	bl GetNthCardOnScreen
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r4, #0
	mov r1, r8
	cmp r1, #1
	bls _0800D5AE
	movs r4, #2
	cmp r1, #2
	bne _0800D5AE
	movs r4, #1
_0800D5AE:
	ldr r7, _0800D6F8
	mov r2, r8
	lsls r3, r2, #1
	add r3, r8
	adds r0, r4, #3
	adds r0, r3, r0
	lsls r5, r0, #5
	ldr r2, _0800D6FC
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r6, #0xa0
	lsls r6, r6, #7
	strh r6, [r0]
	ldr r1, _0800D700
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r6, [r0]
	adds r0, r4, #4
	adds r3, r3, r0
	lsls r3, r3, #5
	adds r2, r3, r2
	lsls r2, r2, #1
	adds r2, r2, r7
	adds r0, r6, #0
	strh r0, [r2]
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r2, r6, #0
	strh r2, [r1]
	ldr r6, _0800D704
	ldrb r0, [r6, #0x17]
	mov r4, r8
	adds r4, #0xb
	lsls r1, r4, #5
	ldr r2, _0800D708
	adds r1, r1, r2
	str r3, [sp, #8]
	bl CopyAttributeIconPal
	ldr r1, _0800D70C
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sl, r0
	lsls r4, r4, #0xc
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x13
	orrs r0, r4
	mov r2, sl
	strh r0, [r2]
	adds r1, #1
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sb, r0
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x14
	orrs r0, r4
	mov r2, sb
	strh r0, [r2]
	ldr r3, [sp, #8]
	ldr r2, _0800D70C
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	str r0, [sp]
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x15
	orrs r0, r4
	ldr r2, [sp]
	strh r0, [r2]
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r7
	str r1, [sp, #4]
	ldrb r0, [r6, #0x17]
	lsls r0, r0, #2
	adds r0, #0x16
	orrs r4, r0
	strh r4, [r1]
	ldrb r0, [r6, #0x16]
	mov r4, r8
	adds r4, #6
	lsls r1, r4, #5
	ldr r2, _0800D708
	adds r1, r1, r2
	str r3, [sp, #8]
	bl CopyTypeIconPal
	ldrb r0, [r6, #0x16]
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, [sp, #8]
	cmp r0, #2
	bhi _0800D718
	ldr r0, _0800D710
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r2, r4, #0xc
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0x11
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800D714
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0x10
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xf
	orrs r0, r2
	mov r1, sl
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xe
	orrs r0, r2
	mov r1, sb
	strh r0, [r1]
	ldr r0, _0800D710
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xd
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800D714
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xb
	orrs r0, r2
	ldr r1, [sp]
	strh r0, [r1]
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xa
	orrs r2, r0
	ldr r6, [sp, #4]
	strh r2, [r6]
	b _0800D762
	.align 2, 0
_0800D6F8: .4byte 0x02000400
_0800D6FC: .4byte 0x00007C10
_0800D700: .4byte 0x00007C15
_0800D704: .4byte gCardInfo
_0800D708: .4byte 0x02000000
_0800D70C: .4byte 0x00007C13
_0800D710: .4byte 0x00007C11
_0800D714: .4byte 0x00007C12
_0800D718:
	ldr r0, _0800D784
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r2, r4, #0xc
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x43
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800D788
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x44
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800D784
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x45
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800D788
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x46
	orrs r2, r0
	strh r2, [r1]
_0800D762:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bhi _0800D772
	b _0800D590
_0800D772:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D784: .4byte 0x00007C11
_0800D788: .4byte 0x00007C12

	THUMB_FUNC_START sub_800D78C
sub_800D78C: @ 0x0800D78C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
	ldr r0, _0800D870
	mov r8, r0
	ldr r1, _0800D874
	mov sl, r1
	movs r0, #0xa0
	lsls r0, r0, #7
	mov sb, r0
_0800D7A6:
	movs r3, #0
	cmp r5, #1
	bls _0800D7B4
	movs r3, #2
	cmp r5, #2
	bne _0800D7B4
	movs r3, #1
_0800D7B4:
	lsls r4, r5, #1
	adds r4, r4, r5
	adds r2, r3, #3
	adds r2, r4, r2
	lsls r2, r2, #5
	mov r1, sl
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	mov r1, sb
	strh r1, [r0]
	ldr r1, _0800D878
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800D87C
	strh r1, [r0]
	ldr r1, _0800D880
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800D884
	strh r1, [r0]
	ldr r1, _0800D888
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800D88C
	strh r1, [r0]
	ldr r1, _0800D890
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800D894
	strh r1, [r0]
	ldr r0, _0800D898
	adds r2, r2, r0
	lsls r2, r2, #1
	add r2, r8
	ldr r0, _0800D89C
	strh r0, [r2]
	adds r0, r3, #4
	adds r4, r4, r0
	lsls r4, r4, #5
	mov r1, sl
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	mov r1, sb
	strh r1, [r0]
	adds r0, r5, #0
	bl GetNthCardOnScreen
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	ldr r0, _0800D8A0
	ldrh r0, [r0, #0xc]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	movs r3, #0
	adds r5, #1
	ldr r7, _0800D870
	ldr r0, _0800D878
	adds r2, r4, r0
	ldr r6, _0800D8A4
	ldr r1, _0800D8A8
	adds r4, r1, #0
_0800D840:
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r1, r3, r6
	ldrb r1, [r1]
	adds r1, r4, r1
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0800D840
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0800D7A6
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D870: .4byte 0x02000400
_0800D874: .4byte 0x00007C10
_0800D878: .4byte 0x00007C11
_0800D87C: .4byte 0x00005004
_0800D880: .4byte 0x00007C12
_0800D884: .4byte 0x00005005
_0800D888: .4byte 0x00007C13
_0800D88C: .4byte 0x00005006
_0800D890: .4byte 0x00007C14
_0800D894: .4byte 0x00005007
_0800D898: .4byte 0x00007C15
_0800D89C: .4byte 0x00005008
_0800D8A0: .4byte gCardInfo
_0800D8A4: .4byte gDigitBufferU16
_0800D8A8: .4byte 0x00005009

.section .text2


	THUMB_FUNC_START sub_800DCAC
sub_800DCAC: @ 0x0800DCAC
	push {r4, r5, lr}
	ldr r3, _0800DCF0
	ldr r2, _0800DCF4
	ldr r5, _0800DCF8
	ldrb r0, [r5, #4]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _0800DCFC
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _0800DD00
	str r0, [r3, #4]
	ldrb r0, [r5, #4]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _0800DD04
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800DCF0: .4byte gOamBuffer+0x30
_0800DCF4: .4byte 0x08DFF4E0
_0800DCF8: .4byte gTrunkMenu
_0800DCFC: .4byte 0x08DFF4EB
_0800DD00: .4byte 0x0000C120
_0800DD04: .4byte 0x40000800

	THUMB_FUNC_START sub_800DD08
sub_800DD08: @ 0x0800DD08
	ldr r1, _0800DD18
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0800DD18: .4byte gOamBuffer+0x30

	THUMB_FUNC_START sub_800DD1C
sub_800DD1C: @ 0x0800DD1C
	push {lr}
	bl LoadOam
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
	ldr r2, _0800DD48
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0800DD48: .4byte 0x04000050
// end of duel_trunk_menu?
