    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	THUMB_FUNC_START sub_801E86C
sub_801E86C: @ 0x0801E86C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r2, r1, #0x18
	lsrs r5, r2, #0x18
	lsls r1, r5, #3
	ldr r0, _0801E8C0
	adds r4, r1, r0
	cmp r3, #0
	beq _0801E89C
	movs r0, #3
	ands r0, r5
	lsls r0, r0, #8
	lsrs r1, r2, #0x1a
	lsls r1, r1, #0xc
	movs r2, #0x82
	lsls r2, r2, #9
	adds r1, r1, r2
	orrs r0, r1
	ldr r1, _0801E8C4
	adds r0, r0, r1
	adds r1, r3, #0
	bl sub_80573D0
_0801E89C:
	ldrb r1, [r4, #1]
	movs r0, #0x3f
	adds r2, r0, #0
	ands r2, r1
	strb r2, [r4, #1]
	ldrb r1, [r4, #3]
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #3]
	cmp r5, #2
	bne _0801E8C8
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	movs r1, #4
	orrs r0, r1
	b _0801E8CE
	.align 2, 0
_0801E8C0: .4byte gOamBuffer
_0801E8C4: .4byte 0x02000400
_0801E8C8:
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
_0801E8CE:
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #5]
	lsls r0, r5, #5
	adds r0, #0xc
	strb r0, [r4]
	movs r1, #3
	ands r1, r5
	lsls r1, r1, #3
	adds r1, #0x20
	lsrs r0, r5, #2
	lsls r0, r0, #7
	adds r1, r1, r0
	ldr r2, _0801E91C
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r4, #4]
	ldr r0, _0801E920
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #4]
	ldrh r1, [r4, #2]
	ldr r0, _0801E924
	ands r0, r1
	movs r1, #0xd2
	orrs r0, r1
	strh r0, [r4, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E91C: .4byte 0x000003FF
_0801E920: .4byte 0xFFFFFC00
_0801E924: .4byte 0xFFFFFE00

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
	lsls r0, r3, #1
	adds r1, r2, #3
	adds r2, #4
	adds r5, r3, #1
	str r5, [sp, #4]
	ldr r5, _0801E9DC
	adds r0, r0, r3
	adds r1, r0, r1
	lsls r1, r1, #5
	mov ip, r1
	ldr r6, _0801E9E0
	mov sb, r6
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
	bl sub_801DAF8
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
	bl sub_800DDA0
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
	bl sub_800DDA0
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
	bl sub_801DAF8
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
	bl CopyAttributeIconPalToBuffer
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
	bl CopyTypeIconPalToBuffer
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
	bl sub_801DAF8
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
	bl sub_800DDA0
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

	THUMB_FUNC_START sub_801EF30
sub_801EF30: @ 0x0801EF30
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _0801EFB6
	lsls r0, r0, #2
	ldr r1, _0801EF44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801EF44: .4byte 0x0801EF48
_0801EF48: @ jump table
	.4byte _0801EF68 @ case 0
	.4byte _0801EFB6 @ case 1
	.4byte _0801EF70 @ case 2
	.4byte _0801EF90 @ case 3
	.4byte _0801EF94 @ case 4
	.4byte _0801EF98 @ case 5
	.4byte _0801EFA0 @ case 6
	.4byte _0801EFA0 @ case 7
_0801EF68:
	movs r0, #0
	bl sub_800A5F0
	b _0801EFB6
_0801EF70:
	bl sub_801E27C
	bl sub_801E66C
	bl sub_801F060
	ldr r0, _0801EF8C
	ldrb r0, [r0, #5]
	bl sub_801EED8
	movs r0, #1
	bl sub_800A5F0
	b _0801EFB6
	.align 2, 0
_0801EF8C: .4byte gDeck
_0801EF90:
	bl sub_801E66C
_0801EF94:
	bl sub_801F060
_0801EF98:
	movs r0, #3
	bl sub_800A5F0
	b _0801EFB6
_0801EFA0:
	bl sub_801E66C
	bl sub_801F060
	ldr r0, _0801EFBC
	ldrb r0, [r0, #5]
	bl sub_801EED8
	movs r0, #3
	bl sub_800A5F0
_0801EFB6:
	pop {r0}
	bx r0
	.align 2, 0
_0801EFBC: .4byte gDeck

	THUMB_FUNC_START sub_801EFC0
sub_801EFC0: @ 0x0801EFC0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0801EFFC
	movs r4, #0
_0801EFCE:
	adds r0, r6, #0
	movs r1, #1
	bl sub_800DDA0
	ldr r0, _0801EFF4
	adds r0, r4, r0
	ldr r2, _0801EFF8
	adds r1, r2, #0
	ldrb r0, [r0]
	adds r1, r1, r0
	strh r1, [r5]
	adds r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0801EFCE
	b _0801F010
	.align 2, 0
_0801EFF4: .4byte 0x02021BD0
_0801EFF8: .4byte 0x00005009
_0801EFFC:
	movs r4, #0
	ldr r0, _0801F018
	adds r1, r0, #0
_0801F002:
	strh r1, [r5]
	adds r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0801F002
_0801F010:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F018: .4byte 0x00005013

	THUMB_FUNC_START sub_801F01C
sub_801F01C: @ 0x0801F01C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r2, #0
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_0801F02A:
	lsls r0, r2, #1
	subs r0, r1, r0
	strh r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xb
	bls _0801F02A
	movs r2, #0
	cmp r2, r3
	bhs _0801F054
	ldr r0, _0801F05C
	adds r4, r0, #0
_0801F044:
	lsls r0, r2, #1
	subs r0, r1, r0
	strh r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r3
	blo _0801F044
_0801F054:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F05C: .4byte 0x00005001

	THUMB_FUNC_START sub_801F060
sub_801F060: @ 0x0801F060
	push {lr}
	bl sub_801DB24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0801F07C
	cmp r0, #1
	ble _0801F08E
	cmp r0, #2
	beq _0801F082
	cmp r0, #3
	beq _0801F088
	b _0801F08E
_0801F07C:
	bl sub_801E9EC
	b _0801F092
_0801F082:
	bl sub_801EB4C
	b _0801F092
_0801F088:
	bl sub_801ED58
	b _0801F092
_0801F08E:
	bl sub_801E928
_0801F092:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F098
sub_801F098: @ 0x0801F098
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	bl GetDeckCardQty
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r6, r5, #0
	ldr r1, _0801F0C0
	adds r0, r4, #0
	bl sub_801F0F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801F0C4
	cmp r5, #0
	bne _0801F0E8
	b _0801F0E4
	.align 2, 0
_0801F0C0: .4byte 0x080B9620
_0801F0C4:
	ldr r1, _0801F0DC
	adds r0, r4, #0
	bl sub_801F0F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801F0E0
	cmp r5, #1
	bhi _0801F0E8
	b _0801F0E4
	.align 2, 0
_0801F0DC: .4byte 0x080B96AA
_0801F0E0:
	cmp r6, #2
	bhi _0801F0E8
_0801F0E4:
	movs r0, #1
	b _0801F0EA
_0801F0E8:
	movs r0, #0
_0801F0EA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_801F0F0
sub_801F0F0: @ 0x0801F0F0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801F11A
_0801F0FC:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r3
	bne _0801F10A
	movs r0, #1
	b _0801F11C
_0801F10A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801F0FC
_0801F11A:
	movs r0, #0
_0801F11C:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F120
sub_801F120: @ 0x0801F120
	push {r4, lr}
	ldr r0, _0801F160
	ldrb r1, [r0, #5]
	strb r1, [r0, #7]
	bl sub_801DF40
	bl sub_801F320
	bl LoadCharblock1
	movs r0, #0x37
	bl PlayMusic
	ldr r0, _0801F164
	bl sub_80081DC
	bl sub_8008220
	movs r4, #1
_0801F146:
	bl sub_801D368
	cmp r0, #0x10
	beq _0801F194
	cmp r0, #0x10
	bgt _0801F16E
	cmp r0, #2
	beq _0801F1A2
	cmp r0, #2
	bgt _0801F168
	cmp r0, #1
	beq _0801F19A
	b _0801F1AC
	.align 2, 0
_0801F160: .4byte gDeck
_0801F164: .4byte 0x0801F391
_0801F168:
	cmp r0, #8
	beq _0801F1A2
	b _0801F1AC
_0801F16E:
	cmp r0, #0x40
	beq _0801F182
	cmp r0, #0x40
	bgt _0801F17C
	cmp r0, #0x20
	beq _0801F18E
	b _0801F1AC
_0801F17C:
	cmp r0, #0x80
	beq _0801F188
	b _0801F1AC
_0801F182:
	bl sub_801F1C0
	b _0801F1B0
_0801F188:
	bl sub_801F210
	b _0801F1B0
_0801F18E:
	bl sub_801F260
	b _0801F1B0
_0801F194:
	bl sub_801F2B0
	b _0801F1B0
_0801F19A:
	bl sub_801F300
	movs r4, #0
	b _0801F1B0
_0801F1A2:
	movs r0, #0x38
	bl PlayMusic
	movs r4, #0
	b _0801F1B0
_0801F1AC:
	bl sub_8008220
_0801F1B0:
	cmp r4, #1
	beq _0801F146
	bl sub_801F37C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F1C0
sub_801F1C0: @ 0x0801F1C0
	push {lr}
	ldr r2, _0801F1E0
	ldr r0, _0801F1E4
	ldrb r1, [r2, #7]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0801F1E8
	ldrb r0, [r2, #7]
	bl sub_801EED8
	b _0801F1EE
	.align 2, 0
_0801F1E0: .4byte gDeck
_0801F1E4: .4byte 0x08E00AEC
_0801F1E8:
	ldrb r0, [r2, #5]
	bl sub_801EED8
_0801F1EE:
	bl sub_801F320
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _0801F20C
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock2
	pop {r0}
	bx r0
	.align 2, 0
_0801F20C: .4byte LoadOam

	THUMB_FUNC_START sub_801F210
sub_801F210: @ 0x0801F210
	push {lr}
	ldr r2, _0801F230
	ldr r0, _0801F234
	ldrb r1, [r2, #7]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0801F238
	ldrb r0, [r2, #7]
	bl sub_801EED8
	b _0801F23E
	.align 2, 0
_0801F230: .4byte gDeck
_0801F234: .4byte 0x08E00AF7
_0801F238:
	ldrb r0, [r2, #5]
	bl sub_801EED8
_0801F23E:
	bl sub_801F320
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _0801F25C
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock2
	pop {r0}
	bx r0
	.align 2, 0
_0801F25C: .4byte LoadOam

	THUMB_FUNC_START sub_801F260
sub_801F260: @ 0x0801F260
	push {lr}
	ldr r2, _0801F280
	ldr r0, _0801F284
	ldrb r1, [r2, #7]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0801F288
	ldrb r0, [r2, #7]
	bl sub_801EED8
	b _0801F28E
	.align 2, 0
_0801F280: .4byte gDeck
_0801F284: .4byte 0x08E00B02
_0801F288:
	ldrb r0, [r2, #5]
	bl sub_801EED8
_0801F28E:
	bl sub_801F320
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _0801F2AC
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock2
	pop {r0}
	bx r0
	.align 2, 0
_0801F2AC: .4byte LoadOam

	THUMB_FUNC_START sub_801F2B0
sub_801F2B0: @ 0x0801F2B0
	push {lr}
	ldr r2, _0801F2D0
	ldr r0, _0801F2D4
	ldrb r1, [r2, #7]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0801F2D8
	ldrb r0, [r2, #7]
	bl sub_801EED8
	b _0801F2DE
	.align 2, 0
_0801F2D0: .4byte gDeck
_0801F2D4: .4byte 0x08E00B0D
_0801F2D8:
	ldrb r0, [r2, #5]
	bl sub_801EED8
_0801F2DE:
	bl sub_801F320
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _0801F2FC
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock2
	pop {r0}
	bx r0
	.align 2, 0
_0801F2FC: .4byte LoadOam

	THUMB_FUNC_START sub_801F300
sub_801F300: @ 0x0801F300
	push {lr}
	movs r0, #0x37
	bl PlayMusic
	ldr r0, _0801F31C
	ldrb r1, [r0, #7]
	cmp r1, #9
	bhi _0801F318
	strb r1, [r0, #5]
	ldrb r0, [r0, #5]
	bl sub_801DDDC
_0801F318:
	pop {r0}
	bx r0
	.align 2, 0
_0801F31C: .4byte gDeck

	THUMB_FUNC_START sub_801F320
sub_801F320: @ 0x0801F320
	push {r4, r5, lr}
	ldr r3, _0801F364
	ldr r2, _0801F368
	ldr r5, _0801F36C
	ldrb r0, [r5, #7]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _0801F370
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _0801F374
	str r0, [r3, #4]
	ldrb r0, [r5, #7]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _0801F378
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F364: .4byte gOamBuffer+0x30
_0801F368: .4byte 0x08E00B18
_0801F36C: .4byte gDeck
_0801F370: .4byte 0x08E00B23
_0801F374: .4byte 0x0000C120
_0801F378: .4byte 0x40000800

	THUMB_FUNC_START sub_801F37C
sub_801F37C: @ 0x0801F37C
	ldr r1, _0801F38C
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0801F38C: .4byte gOamBuffer+0x30

	THUMB_FUNC_START sub_801F390
sub_801F390: @ 0x0801F390
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
	ldr r2, _0801F3BC
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0801F3BC: .4byte 0x04000050

	THUMB_FUNC_START sub_801F3C0
sub_801F3C0: @ 0x0801F3C0
	push {lr}
	bl sub_8045718
	ldr r1, _0801F458
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x18
	strh r0, [r1]
	subs r1, #2
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0801F45C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801F460
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801F464
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #6
	ldr r2, _0801F468
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _0801F46C
	movs r3, #4
	strh r3, [r0]
	subs r1, #0x4a
	ldr r2, _0801F470
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801F474
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801F478
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801F47C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0801F480
	movs r2, #0
	strh r2, [r0]
	ldr r0, _0801F484
	strh r2, [r0]
	ldr r1, _0801F488
	movs r0, #0xf8
	strh r0, [r1]
	ldr r0, _0801F48C
	strh r2, [r0]
	ldr r1, _0801F490
	movs r0, #0xfd
	strh r0, [r1]
	ldr r0, _0801F494
	strh r3, [r0]
	ldr r0, _0801F498
	strh r2, [r0]
	ldr r0, _0801F49C
	strh r2, [r0]
	bl LoadBgOffsets
	pop {r0}
	bx r0
	.align 2, 0
_0801F458: .4byte 0x04000040
_0801F45C: .4byte 0x0000486F
_0801F460: .4byte 0x00001E0E
_0801F464: .4byte 0x0000103F
_0801F468: .4byte 0x000028D2
_0801F46C: .4byte 0x04000054
_0801F470: .4byte 0x00000F04
_0801F474: .4byte 0x00001F0D
_0801F478: .4byte 0x0000170A
_0801F47C: .4byte 0x00000703
_0801F480: .4byte gBG0VOFS
_0801F484: .4byte gBG0HOFS
_0801F488: .4byte gBG1VOFS
_0801F48C: .4byte gBG1HOFS
_0801F490: .4byte gBG2VOFS
_0801F494: .4byte gBG2HOFS
_0801F498: .4byte gBG3VOFS
_0801F49C: .4byte gBG3HOFS

	THUMB_FUNC_START sub_801F4A0
sub_801F4A0: @ 0x0801F4A0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0801F546
	lsls r0, r0, #2
	ldr r1, _0801F4B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F4B4: .4byte 0x0801F4B8
_0801F4B8: @ jump table
	.4byte _0801F546 @ case 0
	.4byte _0801F4E0 @ case 1
	.4byte _0801F4EC @ case 2
	.4byte _0801F4F8 @ case 3
	.4byte _0801F504 @ case 4
	.4byte _0801F51C @ case 5
	.4byte _0801F510 @ case 6
	.4byte _0801F528 @ case 7
	.4byte _0801F534 @ case 8
	.4byte _0801F540 @ case 9
_0801F4E0:
	ldr r0, _0801F4E8
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F4E8: .4byte 0x0801F3C1
_0801F4EC:
	ldr r0, _0801F4F4
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F4F4: .4byte 0x0801F555
_0801F4F8:
	ldr r0, _0801F500
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F500: .4byte 0x0801F559
_0801F504:
	ldr r0, _0801F50C
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F50C: .4byte 0x0801F575
_0801F510:
	ldr r0, _0801F518
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F518: .4byte 0x0801F579
_0801F51C:
	ldr r0, _0801F524
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F524: .4byte 0x0801F57D
_0801F528:
	ldr r0, _0801F530
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F530: .4byte 0x0801F581
_0801F534:
	ldr r0, _0801F53C
	bl sub_80081DC
	b _0801F546
	.align 2, 0
_0801F53C: .4byte 0x0801F5AD
_0801F540:
	ldr r0, _0801F550
	bl sub_80081DC
_0801F546:
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0801F550: .4byte 0x0801F5BD
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801F558
sub_801F558: @ 0x0801F558
	push {lr}
	bl LoadOam
	bl LoadPalettes
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xfc
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801F580
sub_801F580: @ 0x0801F580
	push {lr}
	bl sub_801F658
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0801F5A8
	ands r0, r1
	strh r0, [r2]
	bl LoadOam
	pop {r0}
	bx r0
	.align 2, 0
_0801F5A8: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_801F5AC
sub_801F5AC: @ 0x0801F5AC
	push {lr}
	bl LoadOam
	bl LoadPalettes
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F5BC
sub_801F5BC: @ 0x0801F5BC
	push {lr}
	bl LoadOam
	bl LoadPalettes
	bl sub_801F658
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0801F5E8
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0801F5E8: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_0801F5EC
sub_0801F5EC: @ 0x0801F5EC
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F5F0
sub_801F5F0: @ 0x0801F5F0
	push {lr}
	bl LoadVRAM
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F5FC
sub_801F5FC: @ 0x0801F5FC
	push {lr}
	bl LoadCharblock3
	bl LoadCharblock4
	bl LoadPalettes
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F614
sub_801F614: @ 0x0801F614
	push {lr}
	bl LoadCharblock3
	bl LoadCharblock4
	bl LoadPalettes
	bl LoadCharblock2
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_0801F62C
sub_0801F62C: @ 0x0801F62C
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F630
sub_801F630: @ 0x0801F630
	push {lr}
	bl LoadCharblock2
	bl LoadCharblock3
	bl LoadCharblock4
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F644
sub_801F644: @ 0x0801F644
	push {lr}
	bl LoadCharblock2
	bl LoadCharblock3
	bl LoadCharblock4
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F658
sub_801F658: @ 0x0801F658
	ldr r1, _0801F69C
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x18
	strh r0, [r1]
	subs r1, #2
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0801F6A0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801F6A4
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801F6A8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #6
	ldr r2, _0801F6AC
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x10
	strh r0, [r1]
	adds r1, #2
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801F69C: .4byte 0x04000040
_0801F6A0: .4byte 0x0000486F
_0801F6A4: .4byte 0x00001E0E
_0801F6A8: .4byte 0x0000103F
_0801F6AC: .4byte 0x000028D2

	THUMB_FUNC_START sub_801F6B0
sub_801F6B0: @ 0x0801F6B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	movs r4, #0
	add r5, sp, #0x90
_0801F6C0:
	movs r0, #0
	str r0, [r5]
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	subs r1, r1, r4
	lsls r1, r1, #7
	ldr r6, _0801F710
	adds r1, r1, r6
	adds r0, r5, #0
	ldr r2, _0801F714
	bl CpuFastSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0801F6C0
	ldr r0, _0801F718
	ldr r2, [r0, #8]
	adds r2, #2
	adds r0, r2, #0
	bl sub_8020824
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0x5e
	beq _0801F6FA
	b _0801F904
_0801F6FA:
	adds r2, #1
	ldrb r0, [r2]
	subs r0, #0x32
	cmp r0, #7
	bhi _0801F7A0
	lsls r0, r0, #2
	ldr r1, _0801F71C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F710: .4byte 0x0201CB60
_0801F714: .4byte 0x01000460
_0801F718: .4byte gCardInfo
_0801F71C: .4byte 0x0801F720
_0801F720: @ jump table
	.4byte _0801F740 @ case 0
	.4byte _0801F74C @ case 1
	.4byte _0801F758 @ case 2
	.4byte _0801F764 @ case 3
	.4byte _0801F770 @ case 4
	.4byte _0801F77C @ case 5
	.4byte _0801F788 @ case 6
	.4byte _0801F794 @ case 7
_0801F740:
	ldr r1, _0801F748
	movs r0, #2
	b _0801F7A4
	.align 2, 0
_0801F748: .4byte 0x0201CB59
_0801F74C:
	ldr r1, _0801F754
	movs r0, #3
	b _0801F7A4
	.align 2, 0
_0801F754: .4byte 0x0201CB59
_0801F758:
	ldr r1, _0801F760
	movs r0, #4
	b _0801F7A4
	.align 2, 0
_0801F760: .4byte 0x0201CB59
_0801F764:
	ldr r1, _0801F76C
	movs r0, #5
	b _0801F7A4
	.align 2, 0
_0801F76C: .4byte 0x0201CB59
_0801F770:
	ldr r1, _0801F778
	movs r0, #6
	b _0801F7A4
	.align 2, 0
_0801F778: .4byte 0x0201CB59
_0801F77C:
	ldr r1, _0801F784
	movs r0, #7
	b _0801F7A4
	.align 2, 0
_0801F784: .4byte 0x0201CB59
_0801F788:
	ldr r1, _0801F790
	movs r0, #8
	b _0801F7A4
	.align 2, 0
_0801F790: .4byte 0x0201CB59
_0801F794:
	ldr r1, _0801F79C
	movs r0, #9
	b _0801F7A4
	.align 2, 0
_0801F79C: .4byte 0x0201CB59
_0801F7A0:
	ldr r1, _0801F82C
	movs r0, #1
_0801F7A4:
	strb r0, [r1]
	mov sl, r1
	adds r2, #1
	ldr r1, _0801F830
	movs r0, #0
	strb r0, [r1]
	mov r3, sl
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801F7BA
	b _0801F97C
_0801F7BA:
	ldr r0, _0801F834
	mov sb, r0
	adds r7, r1, #0
	mov r8, r7
_0801F7C2:
	movs r4, #0
	movs r5, #0
	ldrb r1, [r2]
	cmp r1, #0x5e
	beq _0801F854
	ldr r6, _0801F838
_0801F7CE:
	mov r3, sp
	adds r0, r3, r4
	strb r1, [r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _0801F7EA
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, #1
	adds r1, r3, r4
	ldrb r0, [r2]
	strb r0, [r1]
_0801F7EA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, #1
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xc
	bne _0801F84E
	mov r1, sp
	adds r0, r1, r4
	movs r1, #0x20
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	beq _0801F83C
	adds r3, r6, #0
	mov r0, sp
	adds r1, r0, r4
	ldrb r0, [r3]
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r0, sp
	adds r1, r0, r4
	ldrb r0, [r3, #1]
	strb r0, [r1]
	b _0801F842
	.align 2, 0
_0801F82C: .4byte 0x0201CB59
_0801F830: .4byte 0x0201CB58
_0801F834: .4byte 0x0201CB60
_0801F838: .4byte 0x080B96B8
_0801F83C:
	mov r3, sp
	adds r0, r3, r4
	strb r1, [r0]
_0801F842:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0801F84E:
	ldrb r1, [r2]
	cmp r1, #0x5e
	bne _0801F7CE
_0801F854:
	mov r0, r8
	ldrb r1, [r0]
	mov r3, sl
	ldrb r0, [r3]
	subs r0, #1
	cmp r1, r0
	blt _0801F882
	adds r6, r2, #1
	cmp r5, #0x45
	bhi _0801F8C0
	movs r1, #0x20
_0801F86A:
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x45
	bls _0801F86A
	b _0801F8C0
_0801F882:
	adds r6, r2, #1
	ldr r2, _0801F8F8
	cmp r5, #0x44
	bhi _0801F8A2
	movs r1, #0x20
_0801F88C:
	mov r3, sp
	adds r0, r3, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x44
	bls _0801F88C
_0801F8A2:
	adds r3, r2, #0
	mov r0, sp
	adds r1, r0, r4
	ldrb r0, [r3]
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r2, sp
	adds r1, r2, r4
	ldrb r0, [r3, #1]
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0801F8C0:
	mov r3, sp
	adds r1, r3, r4
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #7
	add r0, sb
	mov r1, sp
	ldr r2, _0801F8FC
	bl sub_8020A3C
	adds r2, r6, #0
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	ldr r1, _0801F900
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0801F8F4
	b _0801F7C2
_0801F8F4:
	b _0801F97C
	.align 2, 0
_0801F8F8: .4byte 0x080B96BC
_0801F8FC: .4byte 0x00000901
_0801F900: .4byte 0x0201CB59
_0801F904:
	movs r4, #0
	movs r5, #0
	mov sb, r6
	cmp r0, #0
	beq _0801F966
	cmp r0, #0x24
	beq _0801F966
	movs r3, #0x20
_0801F914:
	mov r1, sp
	adds r0, r1, r4
	ldrb r1, [r2]
	strb r1, [r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _0801F934
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, #1
	mov r0, sp
	adds r1, r0, r4
	ldrb r0, [r2]
	strb r0, [r1]
_0801F934:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, #1
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xc
	bne _0801F95C
	mov r1, sp
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0801F95C:
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801F966
	cmp r0, #0x24
	bne _0801F914
_0801F966:
	mov r2, sp
	adds r0, r2, r4
	movs r4, #0
	strb r4, [r0]
	ldr r2, _0801FA4C
	mov r0, sb
	mov r1, sp
	bl sub_8020A3C
	ldr r0, _0801FA50
	strb r4, [r0]
_0801F97C:
	ldr r4, _0801FA54
	movs r0, #0
	strb r0, [r4]
	bl sub_801FB2C
	ldrb r1, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #7
	ldr r1, _0801FA58
	adds r0, r0, r1
	bl sub_800B618
	bl sub_801FA84
	ldr r0, _0801FA5C
	bl sub_80081DC
	bl sub_8008220
	bl sub_801FB38
	ldr r0, _0801FA60
	bl sub_80081DC
	bl sub_8008220
	ldr r5, _0801FA64
_0801F9B8:
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801F9F4
	ldr r0, _0801FA50
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801F9F4
	ldr r4, _0801FA54
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801F9F4
	subs r0, #1
	strb r0, [r4]
	movs r0, #0x36
	bl PlayMusic
	ldrb r1, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #7
	ldr r1, _0801FA58
	adds r0, r0, r1
	bl sub_800BCB0
	bl LoadCharblock1
_0801F9F4:
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FA32
	ldr r2, _0801FA50
	ldrb r0, [r2]
	cmp r0, #1
	bls _0801FA32
	ldr r4, _0801FA54
	ldrb r1, [r4]
	subs r0, #1
	cmp r1, r0
	bge _0801FA32
	adds r0, r1, #1
	strb r0, [r4]
	movs r0, #0x36
	bl PlayMusic
	ldrb r1, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #7
	ldr r1, _0801FA58
	adds r0, r0, r1
	bl sub_800BCB0
	bl LoadCharblock1
_0801FA32:
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801FA68
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801FA68
	bl sub_8008220
	b _0801F9B8
	.align 2, 0
_0801FA4C: .4byte 0x00000901
_0801FA50: .4byte 0x0201CB59
_0801FA54: .4byte 0x0201CB58
_0801FA58: .4byte 0x0201CB60
_0801FA5C: .4byte 0x0801FADD
_0801FA60: .4byte 0x0801FB15
_0801FA64: .4byte gUnk2020DFC
_0801FA68:
	movs r0, #0x38
	bl PlayMusic
	bl sub_801FB2C
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801FA84
sub_801FA84: @ 0x0801FA84
	ldr r0, _0801FAB8
	movs r2, #0
	strh r2, [r0]
	ldr r0, _0801FABC
	strh r2, [r0]
	ldr r0, _0801FAC0
	strh r2, [r0]
	ldr r1, _0801FAC4
	movs r3, #0xfd
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0801FAC8
	strh r2, [r0]
	ldr r1, _0801FACC
	adds r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0801FAD0
	strh r2, [r0]
	ldr r0, _0801FAD4
	strh r2, [r0]
	ldr r1, _0801FAD8
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801FAB8: .4byte gBLDCNT
_0801FABC: .4byte gBLDALPHA
_0801FAC0: .4byte gBLDY
_0801FAC4: .4byte gBG1VOFS
_0801FAC8: .4byte gBG1HOFS
_0801FACC: .4byte gBG2VOFS
_0801FAD0: .4byte gBG2HOFS
_0801FAD4: .4byte gBG3VOFS
_0801FAD8: .4byte gBG3HOFS

	THUMB_FUNC_START sub_801FADC
sub_801FADC: @ 0x0801FADC
	push {lr}
	bl sub_8045718
	ldr r1, _0801FB08
	ldr r2, _0801FB0C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0x85
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801FB10
	adds r0, r2, #0
	strh r0, [r1]
	bl LoadBlendingRegs
	bl LoadBgOffsets
	pop {r0}
	bx r0
	.align 2, 0
_0801FB08: .4byte 0x0400000A
_0801FB0C: .4byte 0x00001D81
_0801FB10: .4byte 0x00001F0B

	THUMB_FUNC_START sub_801FB14
sub_801FB14: @ 0x0801FB14
	push {lr}
	bl LoadPalettes
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xe0
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801FB2C
sub_801FB2C: @ 0x0801FB2C
	push {lr}
	bl sub_803ED9C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801FB38
sub_801FB38: @ 0x0801FB38
	push {lr}
	bl LoadBgVRAM
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801FB44
sub_801FB44: @ 0x0801FB44
	push {lr}
	movs r1, #0
	bl sub_801FB50
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801FB50
sub_801FB50: @ 0x0801FB50
	strb r1, [r0]
	bx lr
	.byte 0x00, 0x78, 0x70, 0x47

	THUMB_FUNC_START HandleWin
HandleWin: @ 0x0801FB58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r2, _0801FBA0
	ldr r1, _0801FBA4
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	str r0, [r2, #8]
	bl IncreaseDeckCapacity
	bl sub_801FF90
	bl sub_8020030
	bl sub_801FD14
	ldr r0, _0801FBA8
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _0801FBAC
	movs r0, #4
	bl sub_8035020
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #0x13
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_80219E4
	b _0801FBD6
	.align 2, 0
_0801FBA0: .4byte gDuelData
_0801FBA4: .4byte 0x08E00B30
_0801FBA8: .4byte gLifePoints
_0801FBAC:
	movs r0, #1
	bl sub_8043E70
	adds r4, r0, #0
	movs r0, #1
	bl sub_8043E9C
	cmp r4, r0
	bge _0801FBD6
	movs r0, #4
	bl sub_8035020
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #0x15
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_80219E4
_0801FBD6:
	ldr r4, _0801FC70
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r5, #2
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0801FC5A
	ldrh r0, [r4, #0xe]
	bl PlayMusic
	mov r0, sp
	bl sub_8021A14
	mov r0, sp
	strb r5, [r0, #8]
	bl sub_80219E4
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #6
	strb r0, [r1, #8]
	ldr r0, [r4, #8]
	strh r0, [r1, #4]
	mov r0, sp
	bl sub_80219E4
	bl sub_801FE98
	movs r5, #0
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _0801FC5A
	mov r6, sp
	adds r7, r4, #0
	adds r7, #0x14
_0801FC24:
	mov r0, sp
	bl sub_8021A14
	movs r0, #5
	strb r0, [r6, #8]
	lsls r4, r5, #1
	adds r4, r4, r7
	ldrh r0, [r4]
	strh r0, [r6]
	mov r0, sp
	bl sub_80219E4
	ldrh r0, [r4]
	bl SetCardInfo
	bl sub_801F6B0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bhi _0801FC5A
	lsls r0, r5, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801FC24
_0801FC5A:
	ldr r0, _0801FC74
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801FC66
	bl sub_8048CEC
_0801FC66:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801FC70: .4byte gDuelData
_0801FC74: .4byte gUnk20241FC

	THUMB_FUNC_START HandleLoss
HandleLoss: @ 0x0801FC78
	push {r4, lr}
	sub sp, #0xc
	ldr r1, _0801FCAC
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801FC8A
	movs r1, #1
	bl RemoveCardFromTrunk
_0801FC8A:
	ldr r0, _0801FCB0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801FCB4
	movs r0, #4
	bl sub_8035020
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #0x14
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_80219E4
	b _0801FCDE
	.align 2, 0
_0801FCAC: .4byte gAnte
_0801FCB0: .4byte gLifePoints
_0801FCB4:
	movs r0, #0
	bl sub_8043E70
	adds r4, r0, #0
	movs r0, #0
	bl sub_8043E9C
	cmp r4, r0
	bge _0801FCDE
	movs r0, #4
	bl sub_8035020
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #0x16
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_80219E4
_0801FCDE:
	ldr r2, _0801FD10
	adds r0, r2, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801FD06
	ldrh r0, [r2, #0x10]
	bl PlayMusic
	mov r0, sp
	bl sub_8021A14
	mov r1, sp
	movs r0, #3
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_80219E4
_0801FD06:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FD10: .4byte gDuelData

	THUMB_FUNC_START sub_801FD14
sub_801FD14: @ 0x0801FD14
	push {r4, r5, r6, lr}
	ldr r1, _0801FD3C
	ldr r2, _0801FD40
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x20
	ldrb r0, [r0]
	adds r3, r1, #0
	adds r6, r2, #0
	cmp r0, #0xf
	bls _0801FD30
	b _0801FE64
_0801FD30:
	lsls r0, r0, #2
	ldr r1, _0801FD44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801FD3C: .4byte 0x08E00B30
_0801FD40: .4byte gDuelData
_0801FD44: .4byte 0x0801FD48
_0801FD48: @ jump table
	.4byte _0801FE64 @ case 0
	.4byte _0801FD88 @ case 1
	.4byte _0801FD8E @ case 2
	.4byte _0801FD94 @ case 3
	.4byte _0801FDA4 @ case 4
	.4byte _0801FDB4 @ case 5
	.4byte _0801FDC4 @ case 6
	.4byte _0801FDD4 @ case 7
	.4byte _0801FDE4 @ case 8
	.4byte _0801FDF4 @ case 9
	.4byte _0801FE04 @ case 10
	.4byte _0801FE14 @ case 11
	.4byte _0801FE24 @ case 12
	.4byte _0801FE34 @ case 13
	.4byte _0801FE44 @ case 14
	.4byte _0801FE54 @ case 15
_0801FD88:
	movs r4, #0xa
	movs r5, #0
	b _0801FE68
_0801FD8E:
	movs r4, #0x64
	movs r5, #0
	b _0801FE68
_0801FD94:
	ldr r5, _0801FDA0
	ldr r4, _0801FD9C
	b _0801FE68
	.align 2, 0
_0801FD9C: .4byte 0x000003E8
_0801FDA0: .4byte 0x00000000
_0801FDA4:
	ldr r5, _0801FDB0
	ldr r4, _0801FDAC
	b _0801FE68
	.align 2, 0
_0801FDAC: .4byte 0x00002710
_0801FDB0: .4byte 0x00000000
_0801FDB4:
	ldr r5, _0801FDC0
	ldr r4, _0801FDBC
	b _0801FE68
	.align 2, 0
_0801FDBC: .4byte 0x000186A0
_0801FDC0: .4byte 0x00000000
_0801FDC4:
	ldr r5, _0801FDD0
	ldr r4, _0801FDCC
	b _0801FE68
	.align 2, 0
_0801FDCC: .4byte 0x000F4240
_0801FDD0: .4byte 0x00000000
_0801FDD4:
	ldr r5, _0801FDE0
	ldr r4, _0801FDDC
	b _0801FE68
	.align 2, 0
_0801FDDC: .4byte 0x00989680
_0801FDE0: .4byte 0x00000000
_0801FDE4:
	ldr r5, _0801FDF0
	ldr r4, _0801FDEC
	b _0801FE68
	.align 2, 0
_0801FDEC: .4byte 0x05F5E100
_0801FDF0: .4byte 0x00000000
_0801FDF4:
	ldr r5, _0801FE00
	ldr r4, _0801FDFC
	b _0801FE68
	.align 2, 0
_0801FDFC: .4byte 0x3B9ACA00
_0801FE00: .4byte 0x00000000
_0801FE04:
	ldr r5, _0801FE10
	ldr r4, _0801FE0C
	b _0801FE68
	.align 2, 0
_0801FE0C: .4byte 0x540BE400
_0801FE10: .4byte 0x00000002
_0801FE14:
	ldr r5, _0801FE20
	ldr r4, _0801FE1C
	b _0801FE68
	.align 2, 0
_0801FE1C: .4byte 0x4876E800
_0801FE20: .4byte 0x00000017
_0801FE24:
	ldr r5, _0801FE30
	ldr r4, _0801FE2C
	b _0801FE68
	.align 2, 0
_0801FE2C: .4byte 0xD4A51000
_0801FE30: .4byte 0x000000E8
_0801FE34:
	ldr r5, _0801FE40
	ldr r4, _0801FE3C
	b _0801FE68
	.align 2, 0
_0801FE3C: .4byte 0x4E72A000
_0801FE40: .4byte 0x00000918
_0801FE44:
	ldr r5, _0801FE50
	ldr r4, _0801FE4C
	b _0801FE68
	.align 2, 0
_0801FE4C: .4byte 0x107A4000
_0801FE50: .4byte 0x00005AF3
_0801FE54:
	ldr r5, _0801FE60
	ldr r4, _0801FE5C
	b _0801FE68
	.align 2, 0
_0801FE5C: .4byte 0xA4C68000
_0801FE60: .4byte 0x00038D7E
_0801FE64:
	movs r4, #1
	movs r5, #0
_0801FE68:
	ldrh r0, [r6, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldrh r0, [r1, #0x1c]
	ldrh r1, [r1, #0x1e]
	bl sub_805629C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	movs r1, #0
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldi3
	str r0, [r6]
	str r1, [r6, #4]
	bl AddMoney
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801FE98
sub_801FE98: @ 0x0801FE98
	push {r4, lr}
	sub sp, #0xc
	mov r0, sp
	bl sub_8021A14
	ldr r3, _0801FEB4
	ldr r0, [r3]
	ldr r1, [r3, #4]
	orrs r0, r1
	cmp r0, #0
	bne _0801FEB8
	mov r1, sp
	movs r0, #0xc
	b _0801FECC
	.align 2, 0
_0801FEB4: .4byte gDuelData
_0801FEB8:
	cmp r1, #0
	bhi _0801FEDC
	cmp r1, #0
	bne _0801FEC8
	ldr r1, [r3]
	ldr r0, _0801FED8
	cmp r1, r0
	bhi _0801FEDC
_0801FEC8:
	mov r1, sp
	movs r0, #8
_0801FECC:
	strb r0, [r1, #8]
	mov r2, sp
	ldr r0, [r3]
	ldr r1, [r3, #4]
	strh r0, [r2, #4]
	b _0801FF5A
	.align 2, 0
_0801FED8: .4byte 0x0000270F
_0801FEDC:
	ldr r0, _0801FF04
	ldr r2, [r0, #4]
	adds r3, r0, #0
	cmp r2, #0
	bhi _0801FF14
	cmp r2, #0
	bne _0801FEF2
	ldr r1, [r3]
	ldr r0, _0801FF08
	cmp r1, r0
	bhi _0801FF14
_0801FEF2:
	mov r1, sp
	movs r0, #9
	strb r0, [r1, #8]
	mov r4, sp
	ldr r0, [r3]
	ldr r1, [r3, #4]
	ldr r2, _0801FF0C
	ldr r3, _0801FF10
	b _0801FF54
	.align 2, 0
_0801FF04: .4byte gDuelData
_0801FF08: .4byte 0x05F5E0FF
_0801FF0C: .4byte 0x00002710
_0801FF10: .4byte 0x00000000
_0801FF14:
	ldr r0, [r3, #4]
	cmp r0, #0xe8
	bhi _0801FF44
	cmp r0, #0xe8
	bne _0801FF26
	ldr r1, [r3]
	ldr r0, _0801FF38
	cmp r1, r0
	bhi _0801FF44
_0801FF26:
	mov r1, sp
	movs r0, #0xa
	strb r0, [r1, #8]
	mov r4, sp
	ldr r0, [r3]
	ldr r1, [r3, #4]
	ldr r2, _0801FF3C
	ldr r3, _0801FF40
	b _0801FF54
	.align 2, 0
_0801FF38: .4byte 0xD4A50FFF
_0801FF3C: .4byte 0x05F5E100
_0801FF40: .4byte 0x00000000
_0801FF44:
	mov r1, sp
	movs r0, #0xb
	strb r0, [r1, #8]
	mov r4, sp
	ldr r0, [r3]
	ldr r1, [r3, #4]
	ldr r3, _0801FF6C
	ldr r2, _0801FF68
_0801FF54:
	bl __udivdi3
	strh r0, [r4, #4]
_0801FF5A:
	mov r0, sp
	bl sub_80219E4
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FF68: .4byte 0xD4A51000
_0801FF6C: .4byte 0x000000E8

	THUMB_FUNC_START HandleOutcome
HandleOutcome: @ 0x0801FF70
	push {lr}
	ldr r0, _0801FF84
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801FF88
	bl HandleWin
	b _0801FF8C
	.align 2, 0
_0801FF84: .4byte gDuelData
_0801FF88:
	bl HandleLoss
_0801FF8C:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801FF90
sub_801FF90: @ 0x0801FF90
	push {r4, r5, r6, lr}
	ldr r0, _0801FFD8
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801FFD2
	movs r4, #0
	ldr r0, _0801FFDC
	adds r1, r0, #0
	adds r1, #0x2a
	ldrb r2, [r1]
	cmp r4, r2
	bhs _0801FFD2
	adds r5, r0, #0
	adds r6, r1, #0
_0801FFAC:
	bl sub_801FFE0
	lsls r2, r4, #1
	adds r1, r5, #0
	adds r1, #0x14
	adds r2, r2, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #1
	bl AddCardToTrunk
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bhi _0801FFD2
	ldrb r0, [r6]
	cmp r4, r0
	blo _0801FFAC
_0801FFD2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801FFD8: .4byte gAnte
_0801FFDC: .4byte gDuelData

	THUMB_FUNC_START sub_801FFE0
sub_801FFE0: @ 0x0801FFE0
	push {r4, lr}
	ldr r0, _0801FFF4
	ldrh r0, [r0]
	bl IsGoodAnte
	cmp r0, #1
	bne _0801FFFC
	ldr r0, _0801FFF8
	ldr r4, [r0, #0x38]
	b _08020000
	.align 2, 0
_0801FFF4: .4byte gAnte
_0801FFF8: .4byte gDuelData
_0801FFFC:
	ldr r0, _08020010
	ldr r4, [r0, #0x40]
_08020000:
	ldr r1, _08020014
	movs r0, #0
	bl sub_805629C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _0802001A
	.align 2, 0
_08020010: .4byte gDuelData
_08020014: .4byte 0x000007FF
_08020018:
	adds r4, #4
_0802001A:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08020026
	ldrh r0, [r4, #2]
	cmp r1, r0
	bhi _08020018
_08020026:
	ldrh r0, [r4]
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8020030
sub_8020030: @ 0x08020030
	push {r4, lr}
	movs r4, #0
_08020034:
	bl sub_8020050
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl sub_802D90C
	adds r4, #1
	cmp r4, #2
	bls _08020034
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8020050
sub_8020050: @ 0x08020050
	push {r4, lr}
	ldr r0, _08020064
	ldr r4, [r0, #0x3c]
	ldr r1, _08020068
	movs r0, #0
	bl sub_805629C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _0802006E
	.align 2, 0
_08020064: .4byte gDuelData
_08020068: .4byte 0x0000752F
_0802006C:
	adds r4, #4
_0802006E:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802007A
	ldrh r0, [r4, #2]
	cmp r1, r0
	bhs _0802006C
_0802007A:
	ldrh r0, [r4]
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x30, 0xB5, 0x00, 0x23, 0x00, 0x22, 0x24, 0x48, 0x01, 0x78, 0x04, 0x1C
	.byte 0xFF, 0x29, 0x0D, 0xD0, 0x22, 0x4D, 0x21, 0x1C, 0x50, 0x18, 0x00, 0x78, 0x80, 0x00, 0x40, 0x19
	.byte 0x80, 0x88, 0x04, 0x28, 0x35, 0xD9, 0x01, 0x32, 0x10, 0x19, 0x00, 0x78, 0xFF, 0x28, 0xF3, 0xD1
	.byte 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x00, 0x22, 0x1A, 0x48, 0x01, 0x78, 0x04, 0x1C, 0xFF, 0x29
	.byte 0x0D, 0xD0, 0x17, 0x4D, 0x21, 0x1C, 0x50, 0x18, 0x00, 0x78, 0x80, 0x00, 0x40, 0x19, 0x80, 0x88
	.byte 0x04, 0x28, 0x1E, 0xD9, 0x01, 0x32, 0x10, 0x19, 0x00, 0x78, 0xFF, 0x28, 0xF3, 0xD1, 0x58, 0x1C
	.byte 0x00, 0x06, 0x03, 0x0E, 0x00, 0x22, 0x10, 0x48, 0x01, 0x78, 0x04, 0x1C, 0xFF, 0x29, 0x0D, 0xD0
	.byte 0x0B, 0x4D, 0x21, 0x1C, 0x50, 0x18, 0x00, 0x78, 0x80, 0x00, 0x40, 0x19, 0x80, 0x88, 0x04, 0x28
	.byte 0x07, 0xD9, 0x01, 0x32, 0x10, 0x19, 0x00, 0x78, 0xFF, 0x28, 0xF3, 0xD1, 0x58, 0x1C, 0x00, 0x06
	.byte 0x03, 0x0E, 0x18, 0x1C, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x30, 0xE6, 0x0B, 0x08
	.byte 0x90, 0x1C, 0x02, 0x02, 0x31, 0xE6, 0x0B, 0x08, 0x32, 0xE6, 0x0B, 0x08, 0x00, 0xB5, 0x00, 0x06
	.byte 0x00, 0x0E, 0x01, 0x1C, 0x12, 0x06, 0x12, 0x0E, 0x18, 0x28, 0x07, 0xD8, 0x01, 0x2A, 0x02, 0xD1
	.byte 0x00, 0xF0, 0x24, 0xF8, 0x02, 0xE0, 0x08, 0x1C, 0x00, 0xF0, 0x30, 0xF8, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0xB5, 0x00, 0x06, 0x00, 0x0E, 0x01, 0x28, 0x02, 0xD1, 0x00, 0xF0, 0x37, 0xF8, 0x01, 0xE0
	.byte 0x00, 0xF0, 0x40, 0xF8, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_8020168
sub_8020168: @ 0x08020168
	ldr r1, _08020184
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	movs r2, #0
	adds r1, #4
_08020174:
	strh r2, [r1]
	strh r2, [r1, #2]
	adds r1, #4
	adds r0, #1
	cmp r0, #0x18
	bls _08020174
	bx lr
	.align 2, 0
_08020184: .4byte 0x02021C90
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_802018C
sub_802018C: @ 0x0802018C
	lsls r0, r0, #0x18
	ldr r1, _080201A4
	lsrs r0, r0, #0x16
	adds r2, r0, r1
	ldrh r1, [r2, #4]
	ldr r0, _080201A8
	cmp r1, r0
	bhi _080201A0
	adds r0, r1, #1
	strh r0, [r2, #4]
_080201A0:
	bx lr
	.align 2, 0
_080201A4: .4byte 0x02021C90
_080201A8: .4byte 0x000003E7

	THUMB_FUNC_START sub_80201AC
sub_80201AC: @ 0x080201AC
	lsls r0, r0, #0x18
	ldr r1, _080201C4
	lsrs r0, r0, #0x16
	adds r2, r0, r1
	ldrh r1, [r2, #6]
	ldr r0, _080201C8
	cmp r1, r0
	bhi _080201C0
	adds r0, r1, #1
	strh r0, [r2, #6]
_080201C0:
	bx lr
	.align 2, 0
_080201C4: .4byte 0x02021C90
_080201C8: .4byte 0x000003E7

	THUMB_FUNC_START sub_80201CC
sub_80201CC: @ 0x080201CC
	ldr r2, _080201DC
	ldrh r1, [r2]
	ldr r0, _080201E0
	cmp r1, r0
	bhi _080201DA
	adds r0, r1, #1
	strh r0, [r2]
_080201DA:
	bx lr
	.align 2, 0
_080201DC: .4byte 0x02021C90
_080201E0: .4byte 0x000003E7

	THUMB_FUNC_START sub_80201E4
sub_80201E4: @ 0x080201E4
	ldr r2, _080201F4
	ldrh r1, [r2, #2]
	ldr r0, _080201F8
	cmp r1, r0
	bhi _080201F2
	adds r0, r1, #1
	strh r0, [r2, #2]
_080201F2:
	bx lr
	.align 2, 0
_080201F4: .4byte 0x02021C90
_080201F8: .4byte 0x000003E7

	THUMB_FUNC_START sub_80201FC
sub_80201FC: @ 0x080201FC
	push {r4, lr}
	ldr r1, _08020308
	ldr r2, _0802030C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _08020310
	ldr r0, _08020314
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #1
	bl sub_8020A3C
	ldr r1, _08020318
	adds r0, r4, r1
	ldr r1, _0802031C
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r2, _08020320
	adds r0, r4, r2
	ldr r1, _08020324
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r1, _08020328
	adds r0, r4, r1
	ldr r1, _0802032C
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r2, _08020330
	adds r0, r4, r2
	ldr r1, _08020334
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r1, _08020338
	adds r0, r4, r1
	ldr r1, _0802033C
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r2, _08020340
	adds r0, r4, r2
	ldr r1, _08020344
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r1, _08020348
	adds r0, r4, r1
	ldr r1, _0802034C
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r2, _08020350
	adds r0, r4, r2
	ldr r1, _08020354
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r1, _08020358
	adds r0, r4, r1
	ldr r1, _0802035C
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r2, _08020360
	adds r0, r4, r2
	ldr r1, _08020364
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r1, _08020368
	adds r0, r4, r1
	ldr r1, _0802036C
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r2, _08020370
	adds r0, r4, r2
	ldr r1, _08020374
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	ldr r1, _08020378
	adds r0, r4, r1
	ldr r1, _0802037C
	ldr r1, [r1]
	movs r2, #1
	bl sub_8020A3C
	movs r2, #0xe2
	lsls r2, r2, #8
	adds r4, r4, r2
	ldr r0, _08020380
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #1
	bl sub_8020A3C
	ldr r3, _08020384
	movs r1, #0
	strh r1, [r3]
	adds r0, r3, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, #2
	ldr r2, _08020388
	strh r2, [r0]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r3, r4
	strh r1, [r0]
	ldr r1, _0802038C
	adds r0, r3, r1
	strh r2, [r0]
	bl sub_8020390
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020308: .4byte 0x0400000C
_0802030C: .4byte 0x00005E02
_08020310: .4byte 0x02002200
_08020314: .4byte 0x08E00E28
_08020318: .4byte 0xFFFFE220
_0802031C: .4byte 0x08E00DF4
_08020320: .4byte 0xFFFFE2C0
_08020324: .4byte 0x08E00DF8
_08020328: .4byte 0xFFFFE3A0
_0802032C: .4byte 0x08E00DFC
_08020330: .4byte 0xFFFFE400
_08020334: .4byte 0x08E00E00
_08020338: .4byte 0xFFFFE460
_0802033C: .4byte 0x08E00E04
_08020340: .4byte 0xFFFFE500
_08020344: .4byte 0x08E00E08
_08020348: .4byte 0xFFFFE580
_0802034C: .4byte 0x08E00E0C
_08020350: .4byte 0xFFFFE6A0
_08020354: .4byte 0x08E00E10
_08020358: .4byte 0xFFFFE7E0
_0802035C: .4byte 0x08E00E14
_08020360: .4byte 0xFFFFE8A0
_08020364: .4byte 0x08E00E18
_08020368: .4byte 0xFFFFE980
_0802036C: .4byte 0x08E00E1C
_08020370: .4byte 0xFFFFEA20
_08020374: .4byte 0x08E00E20
_08020378: .4byte 0xFFFFEAE0
_0802037C: .4byte 0x08E00E24
_08020380: .4byte 0x08E00E2C
_08020384: .4byte 0x02000000
_08020388: .4byte 0x00007FFF
_0802038C: .4byte 0x00000202

	THUMB_FUNC_START sub_8020390
sub_8020390: @ 0x08020390
	push {r4, r5, r6, lr}
	movs r4, #0
	movs r5, #0
_08020396:
	ldr r0, _080203F0
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r6, _080203F4
	adds r1, r1, r6
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	ble _08020396
	ldr r0, _080203F8
	ldrh r0, [r0]
	movs r1, #0
	bl sub_800DDA0
	ldr r2, _080203FC
	ldrb r0, [r2]
	ldr r1, _08020400
	adds r3, r1, #0
	adds r1, r6, #0
	adds r1, #0x80
	orrs r0, r3
	strh r0, [r1]
	ldrb r0, [r2, #1]
	adds r1, #2
	orrs r0, r3
	strh r0, [r1]
	ldrb r0, [r2, #2]
	adds r1, #2
	orrs r0, r3
	strh r0, [r1]
	ldrb r0, [r2, #3]
	adds r1, #2
	orrs r0, r3
	strh r0, [r1]
	ldrb r0, [r2, #4]
	adds r1, #2
	orrs r0, r3
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080203F0: .4byte 0x080BE634
_080203F4: .4byte 0x0200F400
_080203F8: .4byte gUnk2021D00
_080203FC: .4byte 0x02021BD0
_08020400: .4byte 0x000030F0

	THUMB_FUNC_START sub_8020404
sub_8020404: @ 0x08020404
	push {r4, r5, lr}
	ldr r4, _08020450
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r4, #0
	bl CpuSet
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	ldr r1, _08020454
	movs r5, #0x80
	lsls r5, r5, #2
	adds r2, r5, #0
	bl CpuSet
	movs r0, #0xf0
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r1, _08020458
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, #0
	bl CpuSet
	ldr r0, _0802045C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r2, r5, #0
	bl CpuSet
	bl LoadOam
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08020450: .4byte 0x02000400
_08020454: .4byte 0x06010000
_08020458: .4byte 0x0600F000
_0802045C: .4byte 0x02000000
	.byte 0x10, 0xB5, 0x0A, 0x4C, 0xC0, 0x21, 0xC9, 0x04, 0x80, 0x22, 0x92, 0x01, 0x20, 0x1C, 0x38, 0xF0
	.byte 0x71, 0xF9, 0xF0, 0x20, 0x00, 0x02, 0x24, 0x18, 0x05, 0x49, 0x80, 0x22, 0xD2, 0x00, 0x20, 0x1C
	.byte 0x38, 0xF0, 0x68, 0xF9, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x04, 0x00, 0x02
	.byte 0x00, 0xF0, 0x00, 0x06, 0x06, 0x4A, 0x07, 0x49, 0x07, 0x48, 0x00, 0x78, 0x40, 0x00, 0x40, 0x18
	.byte 0x00, 0x78, 0x10, 0x60, 0x80, 0x21, 0x09, 0x01, 0x08, 0x1C, 0x90, 0x80, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0x84, 0x01, 0x02, 0xDA, 0x0D, 0xE0, 0x08, 0x04, 0x1D, 0x02, 0x02, 0x30, 0xB5, 0x82, 0xB0
	.byte 0x68, 0x46, 0x00, 0x25, 0x05, 0x80, 0x18, 0x4C, 0x18, 0x4A, 0x21, 0x1C, 0x38, 0xF0, 0x42, 0xF9
	.byte 0x68, 0x46, 0x02, 0x30, 0x05, 0x80, 0xF0, 0x21, 0x09, 0x02, 0x64, 0x18, 0x14, 0x4A, 0x21, 0x1C
	.byte 0x38, 0xF0, 0x38, 0xF9, 0x01, 0xA8, 0x05, 0x80, 0x12, 0x49, 0x13, 0x4A, 0x38, 0xF0, 0x32, 0xF9
	.byte 0x12, 0x48, 0x05, 0x80, 0x12, 0x48, 0x05, 0x80, 0x12, 0x48, 0x05, 0x80, 0x24, 0xF0, 0xCE, 0xFF
	.byte 0x80, 0x21, 0xC9, 0x04, 0xA0, 0x22, 0x52, 0x01, 0x10, 0x1C, 0x08, 0x80, 0x0E, 0x48, 0x05, 0x80
	.byte 0x02, 0x38, 0x05, 0x80, 0xFF, 0xF7, 0x72, 0xFE, 0xFF, 0xF7, 0x74, 0xFF, 0xE7, 0xF7, 0x80, 0xFE
	.byte 0x02, 0xB0, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x04, 0x00, 0x02, 0x00, 0x10, 0x00, 0x01
	.byte 0x00, 0x04, 0x00, 0x01, 0x00, 0x84, 0x01, 0x02, 0x00, 0x02, 0x00, 0x01, 0x28, 0x42, 0x02, 0x02
	.byte 0x38, 0x42, 0x02, 0x02, 0x30, 0x42, 0x02, 0x02, 0x1A, 0x00, 0x00, 0x04

.align 2, 0
