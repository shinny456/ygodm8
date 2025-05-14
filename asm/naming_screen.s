    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

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
_080069E0: .4byte gUnk_8DF8114
_080069E4: .4byte gUnk_8DF7FD4
_080069E8: .4byte gOamBuffer
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
_08006A60: .4byte gUnk_8DF7FD4
_08006A64: .4byte gOamBuffer
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
_08006B38: .4byte gUnk_8DF7FD4
_08006B3C: .4byte gOamBuffer

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
	bl LoadOam
	ldr r3, _08006BB0
	ldr r0, [r3]
	movs r1, #0
	strh r1, [r0, #0x1e]
	movs r4, #7
	ldrh r2, [r0, #0x1c]
	b _08006BD6
	.align 2, 0
_08006BB0: .4byte gUnk_8DF8114
_08006BB4: .4byte gUnk_8DF7FD4
_08006BB8: .4byte gOamBuffer
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
	bl strncpy
	bl sub_80072A8
	b _08006C4C
	.align 2, 0
_08006BF4: .4byte gUnk_8DF8114
_08006BF8: .4byte 0x00004081
_08006BFC: .4byte gPlayerName
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
_08006C58: .4byte gUnk_8DF7FD4
_08006C5C: .4byte gOamBuffer

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
_08006C98: .4byte gUnk_8DF8114
_08006C9C: .4byte gUnk_8DF7FD4
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
_08006D3C: .4byte gUnk_8DF8114
_08006D40: .4byte gUnk_8DF7FD4
_08006D44: .4byte gOamBuffer
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
	bl strlen
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
_08006E18: .4byte gUnk_8DF8114
_08006E1C: .4byte gUnk_8DF7FD4
_08006E20: .4byte gOamBuffer
_08006E24: .4byte g8DF8030
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
_08006E7C: .4byte gUnk_8DF8114
_08006E80: .4byte gUnk_8DF7FD4

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
_08006F14: .4byte gUnk_8DF8114
_08006F18: .4byte gUnk_8DF7FD4
_08006F1C: .4byte gOamBuffer
_08006F20: .4byte 0x01FF0000
_08006F24: .4byte gOamBuffer+4
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
_08006FF8: .4byte gUnk_8DF7FD4
_08006FFC: .4byte gOamBuffer
_08007000: .4byte gUnk_8DF8114
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
_08007060: .4byte gUnk_8DF7FD4
_08007064: .4byte gOamBuffer

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
_080070F8: .4byte gUnk_8DF8114
_080070FC: .4byte gOamBuffer
_08007100: .4byte gUnk_8DF7FD4
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
_080071D4: .4byte gOamBuffer
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
_08007200: .4byte gUnk_8DF7FD4
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
_080072A4: .4byte gOamBuffer

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
	bl LoadOam
	movs r4, #0
_080072DA:
	bl WaitForVBlank
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1d
	bls _080072DA
	movs r0, #8
	bl FadeOutMusic
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
_08007314: .4byte gBLDCNT
_08007318: .4byte 0x000006D6
_0800731C: .4byte gBLDALPHA
_08007320: .4byte 0x00000C0A
_08007324: .4byte gBLDY
_08007328: .4byte gUnk_8DF8114
_0800732C:
	adds r0, #1
	strh r0, [r6]
	bl LoadBlendingRegs
	mov r5, r8
_08007336:
	bl WaitForVBlank
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
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
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
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
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
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
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
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl fix_mul
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
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl fix_mul
	mov r8, r0
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r2, sl
	movs r0, #0
	ldrsh r4, [r2, r0]
	mov r0, sb
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r1, sl
	ldrh r4, [r1]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, sb
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl fix_mul
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sb
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl fix_mul
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
_080074C0: .4byte sin_cos_table
_080074C4: .4byte gUnk_8DF8114
_080074C8: .4byte gOamBuffer+6

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
	bl LoadBlendingRegs
	ldr r0, _0800758C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08007590
	strh r1, [r0]
	ldr r0, _08007594
	strh r1, [r0]
	ldr r0, _08007598
	strh r1, [r0]
	bl LoadBgOffsets
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007568: .4byte gBLDCNT
_0800756C: .4byte gBLDALPHA
_08007570: .4byte gOamBuffer
_08007574: .4byte 0x0400000A
_08007578: .4byte 0x00001F09
_0800757C: .4byte 0x00001E02
_08007580: .4byte 0x04000208
_08007584: .4byte 0x04000004
_08007588: .4byte 0x00000C0A
_0800758C: .4byte gBG1HOFS
_08007590: .4byte gBG1VOFS
_08007594: .4byte gBG2HOFS
_08007598: .4byte gBG2VOFS

	THUMB_FUNC_START ClearPlayerName
ClearPlayerName: @ 0x0800759C
	push {lr}
	ldr r0, _080075AC
	movs r1, #0x13
	bl bzero
	pop {r0}
	bx r0
	.align 2, 0
_080075AC: .4byte gPlayerName

	THUMB_FUNC_START sub_80075B0
sub_80075B0: @ 0x080075B0
	push {lr}
	bl sub_8006958
	bl sub_8006B40
	bl sub_8006C60
	bl sub_8006E84
	bl sub_8007068
	bl sub_8007350
	bl LoadOam
	bl LoadVRAM
	bl LoadPalettes
	pop {r0}
	bx r0
	.byte 0x00, 0x00

.align 2, 0
