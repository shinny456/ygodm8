    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED


	THUMB_FUNC_START sub_800CCAC
sub_800CCAC: @ 0x0800CCAC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _0800CD48
	ldr r2, _0800CD4C
	adds r1, r4, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	movs r2, #0xe0
	lsls r2, r2, #6
	adds r1, r4, r2
	ldr r2, _0800CD50
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0800CD54
	ldr r2, _0800CD58
	bl sub_8020A3C
	adds r0, r4, #0
	adds r0, #0x40
	ldr r1, _0800CD5C
	ldr r2, _0800CD60
	bl sub_8020A3C
	ldr r0, _0800CD64
	adds r1, r4, r0
	ldr r0, _0800CD68
	strh r0, [r1]
	bl GetDeckCapacity
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
	movs r2, #0
	ldr r0, _0800CD6C @FFFF8000
	adds r4, r4, r0
	ldr r7, _0800CD70 @00005C30
	ldr r6, _0800CD74 @02021BD0
	ldr r0, _0800CD78 @00005209
	adds r5, r0, #0
	adds r3, r4, #0
_0800CD10:
	adds r1, r2, r7
	lsls r1, r1, #1
	adds r1, r1, r4
	adds r0, r2, r6
	ldrb r0, [r0]
	adds r0, r5, r0
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0800CD10
	ldr r2, _0800CD7C
	adds r1, r3, r2
	ldr r0, _0800CD68
	strh r0, [r1]
	ldr r0, _0800CD80
	adds r1, r3, r0
	ldr r0, _0800CD84
	strh r0, [r1]
	adds r2, #4
	adds r1, r3, r2
	subs r0, #4
	strh r0, [r1]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CD48: .4byte 0x02008400
_0800CD4C: .4byte 0x01000010
_0800CD50: .4byte 0x01000400
_0800CD54: .4byte 0x080AEA74
_0800CD58: .4byte 0x00000801
_0800CD5C: .4byte 0x080AEA78
_0800CD60: .4byte 0x00000901
_0800CD64: .4byte 0x0000385E
_0800CD68: .4byte 0x00005001
_0800CD6C: .4byte 0xFFFF8000
_0800CD70: .4byte 0x00005C30
_0800CD74: .4byte 0x02021BD0
_0800CD78: .4byte 0x00005209
_0800CD7C: .4byte 0x0000B870
_0800CD80: .4byte 0x0000B872
_0800CD84: .4byte 0x0000520D

	THUMB_FUNC_START sub_800CD88
sub_800CD88: @ 0x0800CD88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0800CE50
	ldr r4, _0800CE54
	ldr r5, _0800CE58
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _0800CE5C
	subs r4, #0x20
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _0800CE60
	ldr r4, _0800CE64
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _0800CE68
	adds r1, r4, #0
	adds r1, #0x20
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _0800CE6C
	adds r1, r4, #0
	adds r1, #0x40
	adds r2, r5, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x60
	ldr r1, _0800CE70
	ldr r2, _0800CE74
	bl sub_8020A3C
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _0800CE78
	ldr r2, _0800CE7C
	bl sub_8020A3C
	movs r5, #0
	ldr r4, _0800CE80
_0800CDF0:
	ldr r6, _0800CE84
	lsls r1, r5, #2
	adds r0, r1, r5
	ldrb r2, [r6]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	adds r1, #0x13
	lsls r1, r1, #5
	ldr r2, _0800CE88
	adds r1, r1, r2
	ldr r2, _0800CE8C
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bls _0800CDF0
	movs r4, #0
	movs r5, #0
	ldr r7, _0800CE90
_0800CE1E:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0800CE98
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x43
	lsls r1, r1, #5
	ldr r2, _0800CE88
	adds r1, r1, r2
	ldr r2, _0800CE94
	bl CpuSet
	adds r0, r4, #0
	adds r0, #8
	b _0800CEB8
	.align 2, 0
_0800CE50: .4byte gUnk_808ECD0
_0800CE54: .4byte 0x020000A0
_0800CE58: .4byte 0x04000008
_0800CE5C: .4byte gUnk_808ECF0
_0800CE60: .4byte gStarTile
_0800CE64: .4byte 0x0200C420
_0800CE68: .4byte gSwordTile
_0800CE6C: .4byte gShieldTile
_0800CE70: .4byte gUnk_80AEB00
_0800CE74: .4byte 0x00000801
_0800CE78: .4byte gUnk_80AEB30
_0800CE7C: .4byte 0x00001801
_0800CE80: .4byte gAttributeIconTiles
_0800CE84: .4byte gLanguage
_0800CE88: .4byte 0x0200C400
_0800CE8C: .4byte 0x04000020
_0800CE90: .4byte gTypeIconTiles
_0800CE94: .4byte 0x04000040
_0800CE98:
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r2, [r6]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x43
	lsls r1, r1, #5
	ldr r2, _0800CFA4
	adds r1, r1, r2
	ldr r2, _0800CFA8
	bl CpuSet
	adds r0, r4, #4
_0800CEB8:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x17
	bls _0800CE1E
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0800CFAC
	ldr r2, _0800CFB0
	mov r0, sp
	bl CpuSet
	movs r5, #0
_0800CED8:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _0800CFB4
	adds r0, r0, r1
	lsls r1, r5, #6
	ldr r4, _0800CFAC
	adds r1, r1, r4
	ldr r2, _0800CFB8
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _0800CED8
	movs r7, #0
	ldr r0, _0800CFBC
	adds r0, r0, r4
	mov r8, r0
_0800CF00:
	movs r5, #0
	lsls r1, r7, #1
	lsls r0, r7, #2
	adds r2, r7, #1
	str r2, [sp, #4]
	adds r1, r1, r7
	mov ip, r1
	adds r0, r0, r7
	lsls r0, r0, #3
	mov sb, r0
	ldr r0, _0800CFC0
	add r0, sb
	mov sl, r0
_0800CF1A:
	movs r6, #0
	cmp r7, #1
	bls _0800CF28
	movs r6, #2
	cmp r7, #2
	bne _0800CF28
	movs r6, #1
_0800CF28:
	lsls r3, r5, #1
	adds r2, r6, #3
	add r2, ip
	lsls r2, r2, #5
	ldr r0, _0800CFC4
	adds r1, r2, r0
	adds r1, r3, r1
	lsls r1, r1, #1
	add r1, r8
	str r1, [sp, #8]
	lsls r4, r5, #2
	ldr r1, _0800CFC0
	adds r0, r4, r1
	add r0, sb
	ldr r1, [sp, #8]
	strh r0, [r1]
	ldr r0, _0800CFC8
	adds r2, r2, r0
	adds r2, r3, r2
	lsls r2, r2, #1
	add r2, r8
	add r4, sl
	adds r0, r4, #1
	strh r0, [r2]
	adds r2, r6, #4
	add r2, ip
	lsls r2, r2, #5
	ldr r1, _0800CFC4
	adds r0, r2, r1
	adds r0, r3, r0
	lsls r0, r0, #1
	add r0, r8
	adds r1, r4, #2
	strh r1, [r0]
	ldr r0, _0800CFC8
	adds r2, r2, r0
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	adds r4, #3
	strh r4, [r3]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _0800CF1A
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bls _0800CF00
	ldr r0, _0800CFCC
	bl sub_8057418
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CFA4: .4byte 0x0200C400
_0800CFA8: .4byte 0x04000020
_0800CFAC: .4byte 0x0200FC00
_0800CFB0: .4byte 0x01000400
_0800CFB4: .4byte gUnk_808E820
_0800CFB8: .4byte 0x0400000F
_0800CFBC: .4byte 0xFFFF0800
_0800CFC0: .4byte 0x000050F8
_0800CFC4: .4byte 0x00007C02
_0800CFC8: .4byte 0x00007C03
_0800CFCC: .4byte 0x02000200

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
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_800DA48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	adds r0, r7, #0
	bl sub_800901C
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
	bl sub_800DDA0
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
	bl sub_8020824
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
_0800D0A8: .4byte 0x02021BD0
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
	bl sub_8020A3C
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
	bl sub_8009060
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl sub_800DDA0
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
	bl sub_800DDA0
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
_0800D25C: .4byte 0x02021BD0
_0800D260: .4byte 0x02018400
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
	bl GetDeckCost
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
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
	bl GetDeckSize
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl sub_800DDA0
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
_0800D35C: .4byte 0x02021BD0
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
	bl sub_800901C
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
	bl sub_800DDA0
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
	bl sub_800DDA0
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
_0800D570: .4byte 0x02021BD0
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
	bl sub_800901C
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
	bl CopyAttributeIconPalToBuffer
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
	bl CopyTypeIconPalToBuffer
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
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	ldr r0, _0800D8A0
	ldrh r0, [r0, #0xc]
	movs r1, #0
	bl sub_800DDA0
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
_0800D8A4: .4byte 0x02021BD0
_0800D8A8: .4byte 0x00005009

	THUMB_FUNC_START sub_800D8AC
sub_800D8AC: @ 0x0800D8AC
	push {r4, lr}
	lsls r0, r0, #0x18
	ldr r3, _0800D8E8
	lsrs r0, r0, #0x16
	ldr r2, _0800D8EC
	adds r1, r2, #0
	adds r1, r0, r1
	ldr r4, _0800D8F0
	adds r2, r3, r4
	strh r1, [r2]
	ldr r2, _0800D8F4
	adds r1, r2, #0
	adds r1, r0, r1
	adds r4, #2
	adds r2, r3, r4
	strh r1, [r2]
	ldr r1, _0800D8F8
	adds r2, r0, r1
	adds r4, #0x3e
	adds r1, r3, r4
	strh r2, [r1]
	ldr r1, _0800D8FC
	adds r0, r0, r1
	ldr r2, _0800D900
	adds r3, r3, r2
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D8E8: .4byte 0x02000400
_0800D8EC: .4byte 0x00005002
_0800D8F0: .4byte 0x0000B838
_0800D8F4: .4byte 0x00005003
_0800D8F8: .4byte 0x00005004
_0800D8FC: .4byte 0x00005005
_0800D900: .4byte 0x0000B87A

	THUMB_FUNC_START sub_800D904
sub_800D904: @ 0x0800D904
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _0800D99E
	lsls r0, r0, #2
	ldr r1, _0800D918
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D918: .4byte _0800D91C
_0800D91C: @ jump table
	.4byte _0800D93C @ case 0
	.4byte _0800D99E @ case 1
	.4byte _0800D944 @ case 2
	.4byte _0800D96C @ case 3
	.4byte _0800D988 @ case 4
	.4byte _0800D998 @ case 5
	.4byte _0800D99E @ case 6
	.4byte _0800D972 @ case 7
_0800D93C:
	movs r0, #0
	bl sub_800A5F0
	b _0800D99E
_0800D944:
	bl sub_800C834
	bl sub_800CCAC
	bl sub_800CD88
	bl sub_800CFD0
	bl sub_800DA10
	ldr r0, _0800D968
	ldrb r0, [r0, #2]
	bl sub_800D8AC
	movs r0, #1
	bl sub_800A5F0
	b _0800D99E
	.align 2, 0
_0800D968: .4byte gUnkStruct_2020E10
_0800D96C:
	bl sub_800CFD0
	b _0800D988
_0800D972:
	bl sub_800CFD0
	bl sub_800DA10
	ldr r0, _0800D994
	ldrb r0, [r0, #2]
	bl sub_800D8AC
	movs r0, #3
	bl sub_800A5F0
_0800D988:
	bl sub_800DA10
	movs r0, #3
	bl sub_800A5F0
	b _0800D99E
	.align 2, 0
_0800D994: .4byte gUnkStruct_2020E10
_0800D998:
	movs r0, #3
	bl sub_800A5F0
_0800D99E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800D9A4
sub_800D9A4: @ 0x0800D9A4
	push {r4, r5, lr}
	sub sp, #4
	movs r4, #0
_0800D9AA:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0800D9F4
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0800D9F8
	adds r1, r1, r5
	ldr r2, _0800D9FC
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0800D9AA
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800DA00
	adds r1, r5, r0
	ldr r2, _0800DA04
	mov r0, sp
	bl CpuSet
	ldr r1, _0800DA08
	adds r0, r5, r1
	ldr r1, _0800DA0C
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D9F4: .4byte gUnk_808C240
_0800D9F8: .4byte 0x02007C00
_0800D9FC: .4byte 0x0400000F
_0800DA00: .4byte 0xFFFFC800
_0800DA04: .4byte 0x01000010
_0800DA08: .4byte 0xFFFFC820
_0800DA0C: .4byte 0x080AE6D0

	THUMB_FUNC_START sub_800DA10
sub_800DA10: @ 0x0800DA10
	push {lr}
	bl sub_8009010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0800DA2C
	cmp r0, #1
	ble _0800DA3E
	cmp r0, #2
	beq _0800DA32
	cmp r0, #3
	beq _0800DA38
	b _0800DA3E
_0800DA2C:
	bl sub_800D484
	b _0800DA42
_0800DA32:
	bl sub_800D580
	b _0800DA42
_0800DA38:
	bl sub_800D78C
	b _0800DA42
_0800DA3E:
	bl sub_800D368
_0800DA42:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800DA48
sub_800DA48: @ 0x0800DA48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0800DA5C
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DA60
	movs r0, #0xa0
	lsls r0, r0, #7
	b _0800DA64
	.align 2, 0
_0800DA5C: .4byte gTrunkCardQty
_0800DA60:
	movs r0, #0x80
	lsls r0, r0, #7
_0800DA64:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800DA68
sub_800DA68: @ 0x0800DA68
	push {r4, lr}
	bl GetDeckCost
	adds r4, r0, #0
	bl GetDeckCapacity
	cmp r4, r0
	bhi _0800DA7E
	movs r0, #0xa0
	lsls r0, r0, #7
	b _0800DA82
_0800DA7E:
	movs r0, #0x80
	lsls r0, r0, #7
_0800DA82:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800DA88
sub_800DA88: @ 0x0800DA88
	push {lr}
	bl GetDeckSize
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bls _0800DA9C
	movs r0, #0xa0
	lsls r0, r0, #7
	b _0800DAA0
_0800DA9C:
	movs r0, #0x80
	lsls r0, r0, #7
_0800DAA0:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800DAA4
sub_800DAA4: @ 0x0800DAA4
	push {r4, lr}
	ldr r0, _0800DAE4
	ldrb r1, [r0, #2]
	strb r1, [r0, #4]
	bl sub_8009448
	bl sub_800DCAC
	bl LoadCharblock1
	movs r0, #0x37
	bl PlayMusic
	ldr r0, _0800DAE8
	bl sub_80081DC
	bl sub_8008220
	movs r4, #1
_0800DACA:
	bl sub_80086D8
	cmp r0, #0x10
	beq _0800DB18
	cmp r0, #0x10
	bgt _0800DAF2
	cmp r0, #2
	beq _0800DB26
	cmp r0, #2
	bgt _0800DAEC
	cmp r0, #1
	beq _0800DB1E
	b _0800DB30
	.align 2, 0
_0800DAE4: .4byte gUnkStruct_2020E10
_0800DAE8: .4byte sub_800DD1C
_0800DAEC:
	cmp r0, #8
	beq _0800DB26
	b _0800DB30
_0800DAF2:
	cmp r0, #0x40
	beq _0800DB06
	cmp r0, #0x40
	bgt _0800DB00
	cmp r0, #0x20
	beq _0800DB12
	b _0800DB30
_0800DB00:
	cmp r0, #0x80
	beq _0800DB0C
	b _0800DB30
_0800DB06:
	bl sub_800DB4C
	b _0800DB34
_0800DB0C:
	bl sub_800DB9C
	b _0800DB34
_0800DB12:
	bl sub_800DBEC
	b _0800DB34
_0800DB18:
	bl sub_800DC3C
	b _0800DB34
_0800DB1E:
	bl sub_800DC8C
	movs r4, #0
	b _0800DB34
_0800DB26:
	movs r0, #0x38
	bl PlayMusic
	movs r4, #0
	b _0800DB34
_0800DB30:
	bl sub_8008220
_0800DB34:
	cmp r4, #1
	beq _0800DACA
	movs r0, #7
	bl sub_800D904
	bl sub_800ABA8
	bl sub_800DD08
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800DB4C
sub_800DB4C: @ 0x0800DB4C
	push {lr}
	ldr r2, _0800DB6C
	ldr r0, _0800DB70
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800DB74
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800DB7A
	.align 2, 0
_0800DB6C: .4byte gUnkStruct_2020E10
_0800DB70: .4byte 0x08DFF4B4
_0800DB74:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800DB7A:
	bl sub_800DCAC
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _0800DB98
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock2
	pop {r0}
	bx r0
	.align 2, 0
_0800DB98: .4byte LoadOam

	THUMB_FUNC_START sub_800DB9C
sub_800DB9C: @ 0x0800DB9C
	push {lr}
	ldr r2, _0800DBBC
	ldr r0, _0800DBC0
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800DBC4
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800DBCA
	.align 2, 0
_0800DBBC: .4byte gUnkStruct_2020E10
_0800DBC0: .4byte 0x08DFF4BF
_0800DBC4:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800DBCA:
	bl sub_800DCAC
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _0800DBE8
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock2
	pop {r0}
	bx r0
	.align 2, 0
_0800DBE8: .4byte LoadOam

	THUMB_FUNC_START sub_800DBEC
sub_800DBEC: @ 0x0800DBEC
	push {lr}
	ldr r2, _0800DC0C
	ldr r0, _0800DC10
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800DC14
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800DC1A
	.align 2, 0
_0800DC0C: .4byte gUnkStruct_2020E10
_0800DC10: .4byte 0x08DFF4CA
_0800DC14:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800DC1A:
	bl sub_800DCAC
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _0800DC38
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock2
	pop {r0}
	bx r0
	.align 2, 0
_0800DC38: .4byte LoadOam

	THUMB_FUNC_START sub_800DC3C
sub_800DC3C: @ 0x0800DC3C
	push {lr}
	ldr r2, _0800DC5C
	ldr r0, _0800DC60
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800DC64
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800DC6A
	.align 2, 0
_0800DC5C: .4byte gUnkStruct_2020E10
_0800DC60: .4byte 0x08DFF4D5
_0800DC64:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800DC6A:
	bl sub_800DCAC
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _0800DC88
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock2
	pop {r0}
	bx r0
	.align 2, 0
_0800DC88: .4byte LoadOam

	THUMB_FUNC_START sub_800DC8C
sub_800DC8C: @ 0x0800DC8C
	push {lr}
	movs r0, #0x37
	bl PlayMusic
	ldr r0, _0800DCA8
	ldrb r1, [r0, #4]
	cmp r1, #9
	bhi _0800DCA4
	strb r1, [r0, #2]
	ldrb r0, [r0, #2]
	bl sub_80091EC
_0800DCA4:
	pop {r0}
	bx r0
	.align 2, 0
_0800DCA8: .4byte gUnkStruct_2020E10

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
_0800DCF0: .4byte 0x02018430
_0800DCF4: .4byte 0x08DFF4E0
_0800DCF8: .4byte gUnkStruct_2020E10
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
_0800DD18: .4byte 0x02018430

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

	THUMB_FUNC_START sub_800DD4C
sub_800DD4C: @ 0x0800DD4C
	push {r4, r5, lr}
	movs r2, #0
	ldr r5, _0800DD68
	ldr r3, _0800DD6C
	ldr r4, _0800DD70
_0800DD56:
	adds r0, r2, r5
	ldrb r1, [r0]
	cmp r1, #0
	bne _0800DD74
	adds r0, r2, r3
	adds r1, r2, r4
	ldrb r1, [r1]
	b _0800DD76
	.align 2, 0
_0800DD68: .4byte 0x02021B50
_0800DD6C: .4byte 0x02021B90
_0800DD70: .4byte 0x02021B10
_0800DD74:
	adds r0, r2, r3
_0800DD76:
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x3f
	bls _0800DD56
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800DD88
sub_800DD88: @ 0x0800DD88
	movs r3, #0
_0800DD8A:
	ldrb r2, [r0]
	cmp r2, #0
	beq _0800DD92
	strb r2, [r1]
_0800DD92:
	adds r0, #1
	adds r1, #1
	adds r3, #1
	cmp r3, #0x3f
	bls _0800DD8A
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800DDA0
sub_800DDA0: @ 0x0800DDA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	movs r0, #0
	mov sb, r0
	movs r4, #0
	ldr r7, _0800DE14
	movs r2, #0
	ldr r6, _0800DE18
	adds r3, r6, #0
	movs r1, #0xa
_0800DDC4:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0800DDC4
	ldr r0, _0800DE1C
	cmp r5, r0
	beq _0800DE74
	movs r1, #1
	mov r0, sl
	ands r1, r0
	cmp r1, #0
	beq _0800DDE6
	movs r0, #0
	strb r0, [r6]
_0800DDE6:
	mov r0, sb
	cmp r0, #4
	bhi _0800DE74
	mov r8, r1
_0800DDEE:
	adds r0, r5, #0
	adds r1, r7, #0
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0800DE0C
	cmp r4, #0
	beq _0800DE26
	subs r0, r4, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _0800DE20
_0800DE0C:
	adds r0, r4, r6
	strb r1, [r0]
	b _0800DE26
	.align 2, 0
_0800DE14: .4byte 0x00002710
_0800DE18: .4byte 0x02021BD0
_0800DE1C: .4byte 0x0000FFFF
_0800DE20:
	cmp r4, #4
	bne _0800DE26
	strb r1, [r6, #4]
_0800DE26:
	cmp r1, #0
	bne _0800DE48
	cmp r4, #0
	bne _0800DE38
	mov r0, r8
	cmp r0, #0
	bne _0800DE4E
	movs r4, #1
	b _0800DE4E
_0800DE38:
	subs r0, r4, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0800DE48
	mov r0, r8
	cmp r0, #0
	bne _0800DE4E
_0800DE48:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0800DE4E:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r0, r1, #0
	muls r0, r7, r0
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r7, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r1, sb
	cmp r1, #4
	bls _0800DDEE
_0800DE74:
	movs r0, #2
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0800DE98
	movs r2, #0
	ldr r4, _0800DEA8
	movs r3, #0
_0800DE84:
	adds r1, r2, r4
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _0800DE8E
	strb r3, [r1]
_0800DE8E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0800DE84
_0800DE98:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DEA8: .4byte 0x02021BD0

	THUMB_FUNC_START sub_800DEAC
sub_800DEAC: @ 0x0800DEAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	movs r0, #0
	mov sb, r0
	movs r4, #0
	movs r2, #0
	ldr r7, _0800DF24
	adds r3, r7, #0
	movs r1, #0xa
_0800DED0:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x12
	bls _0800DED0
	movs r1, #1
	mov r2, sl
	ands r1, r2
	cmp r1, #0
	beq _0800DEEC
	movs r0, #0
	strb r0, [r7]
_0800DEEC:
	ldr r5, _0800DF28
	ldr r6, _0800DF2C
	mov r3, sb
	cmp r3, #0x12
	bhi _0800DF9A
	mov r8, r1
_0800DEF8:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r3, r6, #0
	adds r2, r5, #0
	bl __udivdi3
	adds r2, r1, #0
	adds r1, r0, #0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0800DF1E
	cmp r4, #0
	beq _0800DF36
	subs r0, r4, #1
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _0800DF30
_0800DF1E:
	adds r0, r4, r7
	strb r1, [r0]
	b _0800DF36
	.align 2, 0
_0800DF24: .4byte 0x02021BE0
_0800DF28: .4byte 0xA7640000
_0800DF2C: .4byte 0x0DE0B6B3
_0800DF30:
	cmp r4, #0x12
	bne _0800DF36
	strb r1, [r7, #0x12]
_0800DF36:
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0800DF5C
	cmp r4, #0
	bne _0800DF4C
	mov r0, r8
	cmp r0, #0
	bne _0800DF62
	movs r4, #1
	b _0800DF62
_0800DF4C:
	subs r0, r4, #1
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0800DF5C
	mov r3, r8
	cmp r3, #0
	bne _0800DF62
_0800DF5C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0800DF62:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r3, r6, #0
	adds r2, r5, #0
	bl __muldi3
	ldr r2, [sp]
	ldr r3, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
	str r2, [sp]
	str r3, [sp, #4]
	adds r1, r6, #0
	adds r0, r5, #0
	movs r2, #0xa
	movs r3, #0
	bl __udivdi3
	adds r6, r1, #0
	adds r5, r0, #0
	mov r3, sb
	cmp r3, #0x12
	bls _0800DEF8
_0800DF9A:
	movs r0, #2
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0800DFBE
	movs r2, #0
	ldr r4, _0800DFD0
	movs r3, #0
_0800DFAA:
	adds r1, r2, r4
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _0800DFB4
	strb r3, [r1]
_0800DFB4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x12
	bls _0800DFAA
_0800DFBE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DFD0: .4byte 0x02021BE0

	THUMB_FUNC_START sub_800DFD4
sub_800DFD4: @ 0x0800DFD4
	movs r3, #0
	adds r2, r0, #0
	cmp r1, #0
	beq _0800DFEC
_0800DFDC:
	ldrb r0, [r2]
	adds r0, r3, r0
	strb r0, [r2]
	ldrb r3, [r2]
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _0800DFDC
_0800DFEC:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800DFF0
sub_800DFF0: @ 0x0800DFF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r1, _0800E06C
	mov r0, sp
	movs r2, #8
	bl memcpy
	add r7, sp, #8
	ldr r1, _0800E070
	adds r0, r7, #0
	movs r2, #0x10
	bl memcpy
	movs r2, #0
	lsls r4, r4, #3
	cmp r2, r4
	bhs _0800E05E
	lsls r6, r6, #3
	mov ip, r4
	mov r8, r7
_0800E028:
	movs r3, #0
	movs r1, #0
	adds r7, r2, #1
	cmp r1, r6
	bhs _0800E04C
	movs r4, #7
_0800E034:
	ldrb r0, [r5]
	adds r0, r3, r0
	strb r0, [r5]
	ldrb r3, [r5]
	adds r0, r1, #0
	ands r0, r4
	add r0, sp
	ldrb r0, [r0]
	adds r5, r5, r0
	adds r1, #1
	cmp r1, r6
	blo _0800E034
_0800E04C:
	movs r0, #7
	ands r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	subs r5, r5, r0
	adds r2, r7, #0
	cmp r2, ip
	blo _0800E028
_0800E05E:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E06C: .4byte 0x080AED3C
_0800E070: .4byte 0x080AED44

	THUMB_FUNC_START sub_800E074
sub_800E074: @ 0x0800E074
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	bl HuffUnComp
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800DFD4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800E08C
sub_800E08C: @ 0x0800E08C
	push {r4, lr}
	adds r4, r1, #0
	bl HuffUnComp
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0xa
	bl sub_800DFF0
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800E0A4
sub_800E0A4: @ 0x0800E0A4
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	bl LZ77UnCompWram
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800DFD4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800E0BC
sub_800E0BC: @ 0x0800E0BC
	push {r4, lr}
	adds r4, r1, #0
	bl LZ77UnCompWram
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0xa
	bl sub_800DFF0
	pop {r4}
	pop {r0}
	bx r0

    .align 2, 0
