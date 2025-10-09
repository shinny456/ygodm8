    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	THUMB_FUNC_START sub_801E928
sub_801E928: @ 0x0801E928
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r3, #0
_0801E936:
	movs r2, #0
	cmp r3, #1
	bls _0801E944
	movs r2, #2
	cmp r3, #2
	bne _0801E944
	movs r2, #1
_0801E944:
	movs r4, #0
	lsls r0, r3, #1 @i * 2
	adds r1, r2, #3
	adds r2, #4
	adds r5, r3, #1
	str r5, [sp, #4]
	ldr r5, _0801E9DC
	adds r0, r0, r3 @i * 3
	adds r1, r0, r1 @i * 3 + (r2 + 3)
	lsls r1, r1, #5 @(i * 3 + (r2 + 3)) * 32
	mov ip, r1
	ldr r6, _0801E9E0
	mov sb, r6 @7C14
	ldr r1, _0801E9E4
	mov r7, ip
	adds r7, r7, r1
	str r7, [sp]
	lsls r3, r0, #4
	str r3, [sp, #8]
	ldr r6, _0801E9E8
	adds r6, r6, r3
	mov sl, r6
	adds r0, r0, r2
	lsls r6, r0, #5
	adds r1, r1, r6
	mov r8, r1
_0801E978:
	lsls r2, r4, #1
	mov r1, ip
	add r1, sb
	adds r1, r2, r1
	lsls r1, r1, #1
	adds r1, r1, r5
	lsls r3, r4, #2
	ldr r7, _0801E9E8
	adds r0, r3, r7
	ldr r7, [sp, #8]
	adds r0, r0, r7
	strh r0, [r1]
	ldr r1, [sp]
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	add r3, sl
	adds r1, r3, #1
	strh r1, [r0]
	mov r7, sb
	adds r0, r6, r7
	adds r0, r2, r0
	lsls r0, r0, #1
	adds r0, r0, r5
	adds r1, r3, #2
	strh r1, [r0]
	add r2, r8
	lsls r2, r2, #1
	adds r2, r2, r5
	adds r3, #3
	strh r3, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0801E978
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0801E936
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E9DC: .4byte 0x02000400
_0801E9E0: .4byte 0x00007C14
_0801E9E4: .4byte 0x00007C15
_0801E9E8: .4byte 0x000050F4

	THUMB_FUNC_START sub_801E9EC
sub_801E9EC: @ 0x0801E9EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _0801EAB4
	mov sl, r0
_0801E9FC:
	adds r0, r6, #0
	bl GetSelectedCardWithOffset
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r7, #0
	cmp r6, #1
	bls _0801EA18
	movs r7, #2
	cmp r6, #2
	bne _0801EA18
	movs r7, #1
_0801EA18:
	ldr r2, _0801EAB8
	ldrh r0, [r2, #0x10]
	cmp r0, #0
	beq _0801EAD8
	lsls r5, r6, #1
	adds r4, r5, r6
	adds r0, r7, #3
	adds r4, r4, r0
	lsls r4, r4, #5
	ldr r1, _0801EABC
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sl
	ldr r1, _0801EAC0
	strh r1, [r0]
	ldrh r0, [r2, #0x12]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	movs r2, #0
	adds r3, r7, #4
	adds r7, r6, #1
	mov sb, r7
	ldr r0, _0801EAB4
	mov r8, r0
	ldr r1, _0801EAC4
	adds r4, r4, r1
	ldr r7, _0801EAC8
	mov ip, r7
_0801EA52:
	adds r0, r2, r4
	lsls r0, r0, #1
	add r0, r8
	mov r7, ip
	adds r1, r2, r7
	ldr r7, _0801EACC
	ldrb r1, [r1]
	adds r1, r7, r1
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0801EA52
	adds r4, r5, r6
	adds r4, r4, r3
	lsls r4, r4, #5
	ldr r1, _0801EABC
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sl
	ldr r1, _0801EAD0
	strh r1, [r0]
	ldr r0, _0801EAB8
	ldrh r0, [r0, #0x14]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	movs r2, #0
	ldr r6, _0801EAB4
	ldr r3, _0801EAC4
	adds r4, r4, r3
	ldr r5, _0801EAC8
	ldr r7, _0801EAD4
	adds r3, r7, #0
_0801EA98:
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
	bls _0801EA98
	b _0801EB2A
	.align 2, 0
_0801EAB4: .4byte 0x02000400
_0801EAB8: .4byte gCardInfo
_0801EABC: .4byte 0x00007C14
_0801EAC0: .4byte 0x00005002
_0801EAC4: .4byte 0x00007C15
_0801EAC8: .4byte 0x02021BD0
_0801EACC: .4byte 0x00002009
_0801EAD0: .4byte 0x00005003
_0801EAD4: .4byte 0x00001009
_0801EAD8:
	movs r2, #0
	lsls r5, r6, #1
	adds r1, r7, #3
	adds r3, r7, #4
	adds r0, r6, #1
	mov sb, r0
	ldr r7, _0801EB44
	adds r0, r5, r6
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r4, _0801EB48
	adds r1, r0, r4
	movs r4, #0xa0
	lsls r4, r4, #7
_0801EAF4:
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #5
	bls _0801EAF4
	movs r2, #0
	ldr r4, _0801EB44
	adds r0, r5, r6
	adds r0, r0, r3
	lsls r0, r0, #5
	ldr r7, _0801EB48
	adds r1, r0, r7
	movs r3, #0xa0
	lsls r3, r3, #7
_0801EB18:
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	strh r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #5
	bls _0801EB18
_0801EB2A:
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bhi _0801EB36
	b _0801E9FC
_0801EB36:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EB44: .4byte 0x02000400
_0801EB48: .4byte 0x00007C14

	THUMB_FUNC_START sub_801EB4C
sub_801EB4C: @ 0x0801EB4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov r8, r0
_0801EB5C:
	mov r0, r8
	bl GetSelectedCardWithOffset
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r4, #0
	mov r1, r8
	cmp r1, #1
	bls _0801EB7A
	movs r4, #2
	cmp r1, #2
	bne _0801EB7A
	movs r4, #1
_0801EB7A:
	ldr r7, _0801ECC4
	mov r2, r8
	lsls r3, r2, #1
	add r3, r8
	adds r0, r4, #3
	adds r0, r3, r0
	lsls r5, r0, #5
	ldr r2, _0801ECC8
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r6, #0xa0
	lsls r6, r6, #7
	strh r6, [r0]
	ldr r1, _0801ECCC
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
	ldr r6, _0801ECD0
	ldrb r0, [r6, #0x17]
	mov r4, r8
	adds r4, #0xb
	lsls r1, r4, #5
	ldr r2, _0801ECD4
	adds r1, r1, r2
	str r3, [sp, #8]
	bl CopyAttributeIconPal
	ldr r1, _0801ECD8
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
	ldr r2, _0801ECD8
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
	ldr r2, _0801ECD4
	adds r1, r1, r2
	str r3, [sp, #8]
	bl CopyTypeIconPal
	ldrb r0, [r6, #0x16]
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, [sp, #8]
	cmp r0, #2
	bhi _0801ECE4
	ldr r0, _0801ECDC
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r2, r4, #0xc
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0x11
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0801ECE0
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
	ldr r0, _0801ECDC
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #3
	subs r0, #0xd
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0801ECE0
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
	b _0801ED2E
	.align 2, 0
_0801ECC4: .4byte 0x02000400
_0801ECC8: .4byte 0x00007C14
_0801ECCC: .4byte 0x00007C19
_0801ECD0: .4byte gCardInfo
_0801ECD4: .4byte 0x02000000
_0801ECD8: .4byte 0x00007C17
_0801ECDC: .4byte 0x00007C15
_0801ECE0: .4byte 0x00007C16
_0801ECE4:
	ldr r0, _0801ED50
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r2, r4, #0xc
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x43
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0801ED54
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x44
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0801ED50
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x45
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0801ED54
	adds r1, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #2
	adds r0, #0x46
	orrs r2, r0
	strh r2, [r1]
_0801ED2E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bhi _0801ED3E
	b _0801EB5C
_0801ED3E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801ED50: .4byte 0x00007C15
_0801ED54: .4byte 0x00007C16

	THUMB_FUNC_START sub_801ED58
sub_801ED58: @ 0x0801ED58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
	ldr r0, _0801EE2C
	mov r8, r0
	ldr r1, _0801EE30
	mov sl, r1
	movs r2, #0xa0
	lsls r2, r2, #7
	mov sb, r2
_0801ED72:
	movs r6, #0
	cmp r5, #1
	bls _0801ED80
	movs r6, #2
	cmp r5, #2
	bne _0801ED80
	movs r6, #1
_0801ED80:
	adds r0, r5, #0
	bl GetSelectedCardWithOffset
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	ldr r3, _0801EE34
	ldrh r0, [r3, #0x10]
	cmp r0, #0
	beq _0801EE68
	lsls r4, r5, #1
	adds r4, r4, r5
	adds r2, r6, #3
	adds r2, r4, r2
	lsls r2, r2, #5
	mov r1, sl
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	mov r1, sb
	strh r1, [r0]
	ldr r1, _0801EE38
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0801EE3C
	strh r1, [r0]
	ldr r1, _0801EE40
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0801EE44
	strh r1, [r0]
	ldr r1, _0801EE48
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0801EE4C
	strh r1, [r0]
	ldr r1, _0801EE50
	adds r0, r2, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _0801EE54
	strh r1, [r0]
	ldr r0, _0801EE58
	adds r2, r2, r0
	lsls r2, r2, #1
	add r2, r8
	ldr r0, _0801EE5C
	strh r0, [r2]
	adds r0, r6, #4
	adds r4, r4, r0
	lsls r4, r4, #5
	mov r1, sl
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	mov r2, sb
	strh r2, [r0]
	ldrh r0, [r3, #0xc]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	movs r3, #0
	adds r7, r5, #1
	ldr r6, _0801EE2C
	ldr r0, _0801EE38
	adds r2, r4, r0
	ldr r5, _0801EE60
	ldr r1, _0801EE64
	adds r4, r1, #0
_0801EE12:
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r6
	adds r1, r3, r5
	ldrb r1, [r1]
	adds r1, r4, r1
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0801EE12
	b _0801EEB6
	.align 2, 0
_0801EE2C: .4byte 0x02000400
_0801EE30: .4byte 0x00007C14
_0801EE34: .4byte gCardInfo
_0801EE38: .4byte 0x00007C15
_0801EE3C: .4byte 0x00005004
_0801EE40: .4byte 0x00007C16
_0801EE44: .4byte 0x00005005
_0801EE48: .4byte 0x00007C17
_0801EE4C: .4byte 0x00005006
_0801EE50: .4byte 0x00007C18
_0801EE54: .4byte 0x00005007
_0801EE58: .4byte 0x00007C19
_0801EE5C: .4byte 0x00005008
_0801EE60: .4byte 0x02021BD0
_0801EE64: .4byte 0x00005009
_0801EE68:
	movs r3, #0
	lsls r2, r5, #1
	adds r1, r6, #3
	adds r4, r6, #4
	adds r7, r5, #1
	ldr r6, _0801EED0
	mov ip, r6
	adds r0, r2, r5
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r6, _0801EED4
	adds r1, r0, r6
_0801EE80:
	adds r0, r3, r1
	lsls r0, r0, #1
	add r0, ip
	mov r6, sb
	strh r6, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #5
	bls _0801EE80
	movs r3, #0
	ldr r6, _0801EED0
	adds r0, r2, r5
	adds r0, r0, r4
	lsls r0, r0, #5
	ldr r2, _0801EED4
	adds r1, r0, r2
_0801EEA2:
	adds r0, r3, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	mov r2, sb
	strh r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #5
	bls _0801EEA2
_0801EEB6:
	lsls r0, r7, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bhi _0801EEC0
	b _0801ED72
_0801EEC0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EED0: .4byte 0x02000400
_0801EED4: .4byte 0x00007C14

	THUMB_FUNC_START sub_801EED8
sub_801EED8: @ 0x0801EED8
	push {r4, lr}
	lsls r0, r0, #0x18
	ldr r3, _0801EF14
	lsrs r0, r0, #0x16
	ldr r2, _0801EF18
	adds r1, r2, #0
	adds r1, r0, r1
	ldr r4, _0801EF1C
	adds r2, r3, r4
	strh r1, [r2]
	ldr r2, _0801EF20
	adds r1, r2, #0
	adds r1, r0, r1
	adds r4, #2
	adds r2, r3, r4
	strh r1, [r2]
	ldr r1, _0801EF24
	adds r2, r0, r1
	adds r4, #0x3e
	adds r1, r3, r4
	strh r2, [r1]
	ldr r1, _0801EF28
	adds r0, r0, r1
	ldr r2, _0801EF2C
	adds r3, r3, r2
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EF14: .4byte 0x02000400
_0801EF18: .4byte 0x00005002
_0801EF1C: .4byte 0x0000B838
_0801EF20: .4byte 0x00005003
_0801EF24: .4byte 0x00005004
_0801EF28: .4byte 0x00005005
_0801EF2C: .4byte 0x0000B87A

.align 2, 0
