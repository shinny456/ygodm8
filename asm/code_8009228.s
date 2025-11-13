    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED


	THUMB_FUNC_START sub_8009A94
sub_8009A94: @ 0x08009A94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	movs r0, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x2c
	ldr r1, _08009B44
	ldr r2, _08009B48
	bl CpuSet
	movs r7, #0
_08009AB0:
	adds r0, r7, #0
	bl GetNthCardOnScreen
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r4, #0
	cmp r7, #1
	bls _08009ACC
	movs r4, #2
	cmp r7, #2
	bne _08009ACC
	movs r4, #1
_08009ACC:
	ldr r1, _08009B4C
	ldrh r0, [r1, #0x10]
	movs r1, #1
	bl ConvertU16ToDigitBuffer
	movs r3, #0
	lsls r2, r7, #1
	mov r8, r2
	adds r0, r4, #2
	mov sb, r0
	lsls r1, r7, #2
	mov sl, r1
	adds r2, r4, #3
	str r2, [sp, #0x40]
	adds r4, #4
	str r4, [sp, #0x44]
	lsrs r4, r7, #2
	str r4, [sp, #0x34]
	lsls r0, r7, #3
	str r0, [sp, #0x30]
	lsls r1, r7, #5
	str r1, [sp, #0x38]
	adds r2, r7, #1
	str r2, [sp, #0x3c]
	ldr r6, _08009B50
	mov r4, r8
	adds r0, r4, r7
	add r0, sb
	lsls r0, r0, #5
	ldr r1, _08009B54
	adds r2, r0, r1
	ldr r5, _08009B58
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_08009B12:
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
	bls _08009B12
	ldr r2, _08009B4C
	ldr r5, [r2]
	adds r0, r5, #0
	bl GetCurrentLanguageString
	adds r5, r0, #0
	movs r6, #0
	movs r3, #0
	movs r4, #0
	ldrb r0, [r5]
	b _08009BA8
	.align 2, 0
_08009B44: .4byte 0x0200E300
_08009B48: .4byte 0x05000640
_08009B4C: .4byte gCardInfo
_08009B50: .4byte 0x02000400
_08009B54: .4byte 0x00007C01
_08009B58: .4byte 0x02021BD0
_08009B5C:
	adds r2, r5, r3
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _08009B7C
	cmp r6, #0x13
	bhi _08009B78
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08009B78:
	adds r0, r3, #1
	b _08009B9A
_08009B7C:
	cmp r6, #0x13
	bhi _08009B98
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
_08009B98:
	adds r0, r3, #2
_08009B9A:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r5, r3
	ldrb r0, [r0]
_08009BA8:
	cmp r0, #0
	beq _08009BB0
	cmp r0, #0x24
	bne _08009B5C
_08009BB0:
	mov r2, sp
	adds r1, r2, r4
	movs r0, #0
	strb r0, [r1]
	mov r4, sl
	adds r0, r4, r7
	lsls r0, r0, #8
	movs r1, #0xf8
	lsls r1, r1, #5
	adds r0, r0, r1
	ldr r4, _08009BF8
	adds r0, r0, r4
	mov r1, sp
	ldr r2, _08009BFC
	bl CopyStringTilesToVRAMBuffer
	movs r3, #0
	ldr r2, _08009C00
	adds r4, r4, r2
	mov r1, r8
	adds r0, r1, r7
	add r0, sb
	lsls r0, r0, #5
	ldr r1, _08009C04
	adds r2, r0, r1
	ldr r5, _08009C08
_08009BE4:
	ldr r0, _08009C0C
	ldrb r0, [r0, #0x18]
	cmp r3, r0
	bhs _08009C10
	subs r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	strh r5, [r0]
	b _08009C1C
	.align 2, 0
_08009BF8: .4byte 0x0200C400
_08009BFC: .4byte 0x00000901
_08009C00: .4byte 0xFFFF4000
_08009C04: .4byte 0x00007C10
_08009C08: .4byte 0x00005001
_08009C0C: .4byte gCardInfo
_08009C10:
	subs r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xa0
	lsls r1, r1, #7
	strh r1, [r0]
_08009C1C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xb
	bls _08009BE4
	adds r0, r7, #0
	bl GetNthCardOnScreen
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_800A4B0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _08009D10
	ldrh r0, [r1, #0x10]
	bl GetTrunkCardQuantity
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl ConvertU16ToDigitBuffer
	movs r3, #0
	ldr r6, _08009D14
	mov r2, r8
	adds r0, r2, r7
	ldr r1, [sp, #0x40]
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r1, _08009D18
	adds r2, r0, r1
	ldr r5, _08009D1C
_08009C5E:
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
	cmp r3, #2
	bls _08009C5E
	ldr r2, _08009D10
	ldrh r0, [r2, #0x10]
	bl GetDeckCardQty
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	movs r3, #0
	ldr r6, _08009D14
	mov r4, r8
	adds r0, r4, r7
	ldr r1, [sp, #0x44]
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r4, _08009D18
	adds r2, r0, r4
	ldr r5, _08009D1C
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_08009CA4:
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
	bls _08009CA4
	movs r0, #3
	ands r0, r7
	lsls r0, r0, #8
	ldr r2, [sp, #0x34]
	lsls r1, r2, #0xc
	movs r4, #0x82
	lsls r4, r4, #9
	adds r1, r1, r4
	orrs r0, r1
	ldr r1, _08009D14
	adds r0, r0, r1
	ldr r2, _08009D10
	ldrh r1, [r2, #0x10]
	bl sub_80573D0
	ldr r0, _08009D20
	ldr r4, [sp, #0x30]
	adds r3, r4, r0
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
	bne _08009D24
	movs r1, #0xd
	rsbs r1, r1, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r3, #1]
	b _08009D30
	.align 2, 0
_08009D10: .4byte gCardInfo
_08009D14: .4byte 0x02000400
_08009D18: .4byte 0x00007C17
_08009D1C: .4byte 0x02021BD0
_08009D20: .4byte gOamBuffer
_08009D24:
	movs r4, #0xd
	rsbs r4, r4, #0
	adds r1, r4, #0
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3, #1]
_08009D30:
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
	ldr r0, [sp, #0x38]
	adds r0, #0xc
	strb r0, [r3]
	ldrh r1, [r3, #2]
	ldr r4, _08009E1C
	adds r0, r4, #0
	ands r1, r0
	movs r0, #0xd2
	orrs r1, r0
	strh r1, [r3, #2]
	movs r0, #3
	ands r7, r0
	lsls r2, r7, #3
	adds r2, #0x20
	ldr r1, [sp, #0x34]
	lsls r0, r1, #7
	adds r2, r2, r0
	ldr r4, _08009E20
	adds r0, r4, #0
	ands r2, r0
	ldrh r0, [r3, #4]
	ldr r4, _08009E24
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
	ldr r1, [sp, #0x3c]
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bhi _08009D88
	b _08009AB0
_08009D88:
	bl sub_800A508
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl GetPlayerDeckCost
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	movs r3, #0
	ldr r7, _08009E28
	ldr r6, _08009E2C
	ldr r5, _08009E30
	ldr r0, _08009E34
	adds r2, r0, #0
_08009DAA:
	adds r1, r3, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r0, r3, r5
	ldrb r0, [r0]
	adds r0, r2, r0
	adds r0, r4, r0
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08009DAA
	bl sub_800A528
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl GetPlayerDeckSize
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	movs r3, #0
	ldr r7, _08009E28
	ldr r6, _08009E38
	ldr r5, _08009E30
	ldr r1, _08009E34
	adds r2, r1, #0
_08009DE6:
	adds r1, r3, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r0, r3, #3
	adds r0, r0, r5
	ldrb r0, [r0]
	adds r0, r2, r0
	adds r0, r4, r0
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _08009DE6
	bl sub_800907C
	bl sub_800A544
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009E1C: .4byte 0xFFFFFE00
_08009E20: .4byte 0x000003FF
_08009E24: .4byte 0xFFFFFC00
_08009E28: .4byte 0x02000400
_08009E2C: .4byte 0x00005C2A
_08009E30: .4byte 0x02021BD0
_08009E34: .4byte 0x00000209
_08009E38: .4byte 0x00005C36

	THUMB_FUNC_START sub_8009E3C
sub_8009E3C: @ 0x08009E3C
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
_08009E50:
	movs r1, #0
	cmp r4, #1
	bls _08009E5E
	movs r1, #2
	cmp r4, #2
	bne _08009E5E
	movs r1, #1
_08009E5E:
	movs r5, #0
	lsls r0, r4, #1
	adds r3, r1, #3
	adds r6, r1, #4
	ldr r7, _08009F48
	adds r0, r0, r4
	adds r1, r0, r3
	lsls r1, r1, #5
	ldr r2, _08009F4C
	adds r3, r1, r2
	adds r0, r0, r6
	lsls r0, r0, #5
	adds r1, r0, r2
_08009E78:
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
	bls _08009E78
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08009E50
	movs r4, #0
_08009EA0:
	movs r1, #0
	cmp r4, #1
	bls _08009EAE
	movs r1, #2
	cmp r4, #2
	bne _08009EAE
	movs r1, #1
_08009EAE:
	movs r5, #0
	lsls r0, r4, #1
	adds r3, r1, #3
	adds r6, r1, #4
	adds r1, r4, #1
	str r1, [sp, #4]
	lsls r2, r4, #2
	ldr r7, _08009F48
	adds r1, r0, r4
	adds r0, r1, r3
	lsls r0, r0, #5
	mov r8, r0
	ldr r3, _08009F4C
	mov sb, r3
	ldr r0, _08009F50
	mov r3, r8
	adds r3, r3, r0
	str r3, [sp]
	adds r2, r2, r4
	lsls r2, r2, #3
	mov ip, r2
	ldr r2, _08009F54
	add r2, ip
	mov sl, r2
	adds r1, r1, r6
	lsls r4, r1, #5
	adds r0, r4, r0
	str r0, [sp, #8]
_08009EE6:
	lsls r2, r5, #1
	mov r1, r8
	add r1, sb
	adds r1, r2, r1
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r3, r5, #2
	ldr r6, _08009F54
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
	bls _08009EE6
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08009EA0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009F48: .4byte 0x02000400
_08009F4C: .4byte 0x00007C10
_08009F50: .4byte 0x00007C11
_08009F54: .4byte 0x00005114

	THUMB_FUNC_START sub_8009F58
sub_8009F58: @ 0x08009F58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _0800A030
	mov sl, r0
_08009F68:
	adds r0, r6, #0
	bl GetNthCardOnScreen
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r7, #0
	cmp r6, #1
	bls _08009F84
	movs r7, #2
	cmp r6, #2
	bne _08009F84
	movs r7, #1
_08009F84:
	lsls r5, r6, #1
	adds r4, r5, r6
	adds r0, r7, #3
	adds r4, r4, r0
	lsls r4, r4, #5
	ldr r1, _0800A034
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sl
	ldr r1, _0800A038
	strh r1, [r0]
	ldr r0, _0800A03C
	ldrh r0, [r0, #0x12]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	movs r2, #0
	adds r3, r5, #0
	adds r5, r7, #4
	adds r7, r6, #1
	mov sb, r7
	ldr r0, _0800A030
	mov r8, r0
	ldr r1, _0800A040
	adds r4, r4, r1
	ldr r7, _0800A044
	mov ip, r7
_08009FBA:
	adds r0, r2, r4
	lsls r0, r0, #1
	add r0, r8
	mov r7, ip
	adds r1, r2, r7
	ldr r7, _0800A048
	ldrb r1, [r1]
	adds r1, r7, r1
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _08009FBA
	adds r4, r3, r6
	adds r4, r4, r5
	lsls r4, r4, #5
	ldr r1, _0800A034
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sl
	ldr r1, _0800A04C
	strh r1, [r0]
	ldr r0, _0800A03C
	ldrh r0, [r0, #0x14]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	movs r2, #0
	ldr r6, _0800A030
	ldr r7, _0800A040
	adds r4, r4, r7
	ldr r5, _0800A044
	ldr r0, _0800A050
	adds r3, r0, #0
_0800A000:
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
	bls _0800A000
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _08009F68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A030: .4byte 0x02000400
_0800A034: .4byte 0x00007C10
_0800A038: .4byte 0x00005002
_0800A03C: .4byte gCardInfo
_0800A040: .4byte 0x00007C11
_0800A044: .4byte 0x02021BD0
_0800A048: .4byte 0x00002009
_0800A04C: .4byte 0x00005003
_0800A050: .4byte 0x00001009

	THUMB_FUNC_START sub_800A054
sub_800A054: @ 0x0800A054
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov r8, r0
_0800A064:
	mov r0, r8
	bl GetNthCardOnScreen
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r4, #0
	mov r1, r8
	cmp r1, #1
	bls _0800A082
	movs r4, #2
	cmp r1, #2
	bne _0800A082
	movs r4, #1
_0800A082:
	ldr r7, _0800A1CC
	mov r2, r8
	lsls r3, r2, #1
	add r3, r8
	adds r0, r4, #3
	adds r0, r3, r0
	lsls r5, r0, #5
	ldr r2, _0800A1D0
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r6, #0xa0
	lsls r6, r6, #7
	strh r6, [r0]
	ldr r1, _0800A1D4
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
	ldr r6, _0800A1D8
	ldrb r0, [r6, #0x17]
	mov r4, r8
	adds r4, #0xb
	lsls r1, r4, #5
	ldr r2, _0800A1DC
	adds r1, r1, r2
	str r3, [sp, #8]
	bl CopyAttributeIconPal
	ldr r1, _0800A1E0
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
	ldr r2, _0800A1E0
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
	ldr r2, _0800A1DC
	adds r1, r1, r2
	str r3, [sp, #8]
	bl CopyTypeIconPal
	ldrb r0, [r6, #0x16]
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, [sp, #8]
	cmp r0, #2
	bhi _0800A1EC
	ldr r0, _0800A1E4
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r2, r4, #0xc
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0x11
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800A1E8
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
	ldr r0, _0800A1E4
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xd
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800A1E8
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
	b _0800A236
	.align 2, 0
_0800A1CC: .4byte 0x02000400
_0800A1D0: .4byte 0x00007C10
_0800A1D4: .4byte 0x00007C15
_0800A1D8: .4byte gCardInfo
_0800A1DC: .4byte 0x02000000
_0800A1E0: .4byte 0x00007C13
_0800A1E4: .4byte 0x00007C11
_0800A1E8: .4byte 0x00007C12
_0800A1EC:
	ldr r0, _0800A258
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r2, r4, #0xc
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x43
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800A25C
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x44
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800A258
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x45
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800A25C
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x46
	orrs r2, r0
	strh r2, [r1]
_0800A236:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bhi _0800A246
	b _0800A064
_0800A246:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A258: .4byte 0x00007C11
_0800A25C: .4byte 0x00007C12

	THUMB_FUNC_START sub_800A260
sub_800A260: @ 0x0800A260
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
	ldr r0, _0800A344
	mov r8, r0
	ldr r1, _0800A348
	mov sl, r1
	movs r0, #0xa0
	lsls r0, r0, #7
	mov sb, r0
_0800A27A:
	movs r3, #0
	cmp r5, #1
	bls _0800A288
	movs r3, #2
	cmp r5, #2
	bne _0800A288
	movs r3, #1
_0800A288:
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
	ldr r1, _0800A34C
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800A350
	strh r1, [r0]
	ldr r1, _0800A354
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800A358
	strh r1, [r0]
	ldr r1, _0800A35C
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800A360
	strh r1, [r0]
	ldr r1, _0800A364
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0800A368
	strh r1, [r0]
	ldr r0, _0800A36C
	adds r2, r2, r0
	lsls r2, r2, #1
	add r2, r8
	ldr r0, _0800A370
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
	ldr r0, _0800A374
	ldrh r0, [r0, #0xc]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	movs r3, #0
	adds r5, #1
	ldr r7, _0800A344
	ldr r0, _0800A34C
	adds r2, r4, r0
	ldr r6, _0800A378
	ldr r1, _0800A37C
	adds r4, r1, #0
_0800A314:
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
	bls _0800A314
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0800A27A
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A344: .4byte 0x02000400
_0800A348: .4byte 0x00007C10
_0800A34C: .4byte 0x00007C11
_0800A350: .4byte 0x00005004
_0800A354: .4byte 0x00007C12
_0800A358: .4byte 0x00005005
_0800A35C: .4byte 0x00007C13
_0800A360: .4byte 0x00005006
_0800A364: .4byte 0x00007C14
_0800A368: .4byte 0x00005007
_0800A36C: .4byte 0x00007C15
_0800A370: .4byte 0x00005008
_0800A374: .4byte gCardInfo
_0800A378: .4byte 0x02021BD0
_0800A37C: .4byte 0x00005009

.section .text2
//split?
	THUMB_FUNC_START sub_800AC64
sub_800AC64: @ 0x0800AC64
	push {r4, lr}
	movs r4, #0xff
	bl sub_800B194
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800AC76
_0800AC72:
	movs r0, #0
	b _0800ACE2
_0800AC76:
	bl sub_800B088
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0800AC9E
	lsls r4, r0, #2
	movs r0, #0xc
	ands r4, r0
	bl sub_800B0E4
	lsls r0, r0, #1
	movs r1, #2
	ands r0, r1
	orrs r4, r0
	bl sub_800B10C
	movs r1, #1
	ands r1, r0
	orrs r4, r1
_0800AC9E:
	cmp r4, #6
	beq _0800AC72
	cmp r4, #6
	bgt _0800ACC4
	cmp r4, #2
	beq _0800ACD8
	cmp r4, #2
	bgt _0800ACB8
	cmp r4, #0
	beq _0800AC72
	cmp r4, #1
	beq _0800ACDC
	b _0800ACE0
_0800ACB8:
	cmp r4, #4
	beq _0800AC72
	cmp r4, #4
	bgt _0800ACDC
	movs r0, #1
	b _0800ACE2
_0800ACC4: @7, 8, 9...
	cmp r4, #9
	bgt _0800ACCE
	cmp r4, #8
	bge _0800AC72
	b _0800ACDC
_0800ACCE: @10, 11,
	cmp r4, #0xb
	ble _0800ACD8
	cmp r4, #0xff
	beq _0800AC72
	b _0800ACE0
_0800ACD8:
	movs r0, #2
	b _0800ACE2
_0800ACDC:
	movs r0, #3
	b _0800ACE2
_0800ACE0:
	movs r0, #0
_0800ACE2:
	pop {r4}
	pop {r1}
	bx r1

.section .text3


@SaveGame split?

	THUMB_FUNC_START sub_800B0AC
sub_800B0AC: @ 0x0800B0AC
	push {lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r1, _0800B0C4
	mov r0, sp
	movs r2, #2
	bl sub_80588C4
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_0800B0C4: .4byte 0x0E00401E

	THUMB_FUNC_START sub_800B0C8
sub_800B0C8: @ 0x0800B0C8
	push {lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r1, _0800B0E0
	mov r0, sp
	movs r2, #2
	bl sub_80588C4
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_0800B0E0: .4byte 0x0E007FFE

	THUMB_FUNC_START sub_800B0E4
sub_800B0E4: @ 0x0800B0E4
	push {r4, r5, lr}
	movs r5, #0
	bl sub_800ADC4
	bl sub_8035170
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_800B134
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _0800B104
	movs r5, #1
_0800B104:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800B10C
sub_800B10C: @ 0x0800B10C
	push {r4, r5, lr}
	movs r5, #0
	bl sub_800ADF0
	bl sub_8035170
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_800B158
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _0800B12C
	movs r5, #1
_0800B12C:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800B134
sub_800B134: @ 0x0800B134
	push {lr}
	sub sp, #4
	ldr r0, _0800B150
	ldr r1, _0800B154
	ldr r3, [r1]
	mov r1, sp
	movs r2, #2
	bl _call_via_r3
	mov r0, sp
	ldrh r0, [r0]
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_0800B150: .4byte 0x0E00401E
_0800B154: .4byte 0x020245AC

	THUMB_FUNC_START sub_800B158
sub_800B158: @ 0x0800B158
	push {lr}
	sub sp, #4
	ldr r0, _0800B174
	ldr r1, _0800B178
	ldr r3, [r1]
	mov r1, sp
	movs r2, #2
	bl _call_via_r3
	mov r0, sp
	ldrh r0, [r0]
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_0800B174: .4byte 0x0E007FFE
_0800B178: .4byte 0x020245AC

	THUMB_FUNC_START sub_800B17C
sub_800B17C: @ 0x0800B17C
	push {lr}
	ldr r0, _0800B18C
	ldr r1, _0800B190
	movs r2, #0xf
	bl sub_80588C4
	pop {r1}
	bx r1
	.align 2, 0
_0800B18C: .4byte 0x080D2CF0
_0800B190: .4byte 0x0E000001

	THUMB_FUNC_START sub_800B194
sub_800B194: @ 0x0800B194
	push {r4, lr}
	sub sp, #0x10
	movs r4, #1
	ldr r0, _0800B1B0
	ldr r1, _0800B1B4
	ldr r3, [r1]
	mov r1, sp
	movs r2, #0xf
	bl _call_via_r3
	movs r2, #0
	mov r0, sp
	ldr r1, _0800B1B8
	b _0800B1CA
	.align 2, 0
_0800B1B0: .4byte 0x0E000001
_0800B1B4: .4byte 0x020245AC
_0800B1B8: .4byte 0x080D2CF0
_0800B1BC:
	adds r2, #1
	cmp r2, #0xe
	bhi _0800B1D4
	mov r1, sp
	adds r0, r1, r2
	ldr r1, _0800B1E0
	adds r1, r2, r1
_0800B1CA:
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0800B1BC
	movs r4, #0
_0800B1D4:
	adds r0, r4, #0
	add sp, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800B1E0: .4byte 0x080D2CF0

	THUMB_FUNC_START sub_800B1E4
sub_800B1E4: @ 0x0800B1E4
	push {lr}
	sub sp, #4
	movs r1, #3
	mov r0, sp
	strb r1, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	movs r2, #1
	bl sub_80588C4
	add sp, #4
	pop {r1}
	bx r1
	.byte 0x00, 0x00





.align 2, 0
