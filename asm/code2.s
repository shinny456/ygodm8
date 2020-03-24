    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED


	THUMB_FUNC_START sub_800B618
sub_800B618: @ 0x0800B618
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
_0800B61E:
	lsls r0, r4, #5
	subs r0, r0, r4
	lsls r0, r0, #1
	ldr r1, _0800B65C
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0800B660
	adds r1, r1, r5
	movs r2, #0x1f
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0800B61E
	ldr r0, _0800B664
	ldr r2, _0800B668
	adds r1, r5, r2
	bl LZ77UnCompWram
	ldr r0, _0800B66C
	ldrb r0, [r0]
	cmp r0, #2
	beq _0800B6BC
	cmp r0, #2
	bgt _0800B670
	cmp r0, #1
	beq _0800B67A
	b _0800B7A8
	.align 2, 0
_0800B65C: .4byte 0x08097D94
_0800B660: .4byte 0x0200FC00
_0800B664: .4byte 0x0809553C
_0800B668: .4byte 0xFFFF8800
_0800B66C: .4byte gLanguage
_0800B670:
	cmp r0, #3
	beq _0800B6C4
	cmp r0, #4
	beq _0800B73C
	b _0800B7A8
_0800B67A:
	ldr r4, _0800B6AC
	ldr r0, _0800B6B0
	adds r1, r5, r0
	adds r0, r4, #0
	movs r2, #0x30
	bl CpuFastSet
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r2, _0800B6B4
	adds r1, r5, r2
	movs r2, #0x30
	bl CpuFastSet
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r2, _0800B6B8
	adds r1, r5, r2
	movs r2, #0x18
	bl CpuFastSet
	movs r1, #0xf0
	lsls r1, r1, #1
	b _0800B712
	.align 2, 0
_0800B6AC: .4byte 0x08DFB8A8
_0800B6B0: .4byte 0xFFFF9D60
_0800B6B4: .4byte 0xFFFFA140
_0800B6B8: .4byte 0xFFFFA520
_0800B6BC:
	ldr r4, _0800B6C0
	b _0800B6C6
	.align 2, 0
_0800B6C0: .4byte 0x08DFBAE8
_0800B6C4:
	ldr r4, _0800B720
_0800B6C6:
	ldr r0, _0800B724
	adds r1, r5, r0
	adds r0, r4, #0
	movs r2, #0x18
	bl CpuFastSet
	adds r0, r4, #0
	adds r0, #0x60
	ldr r2, _0800B728
	adds r1, r5, r2
	movs r2, #0x18
	bl CpuFastSet
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r2, _0800B72C
	adds r1, r5, r2
	movs r2, #0x30
	bl CpuFastSet
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r2, _0800B730
	adds r1, r5, r2
	movs r2, #0x30
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, _0800B734
	adds r1, r5, r2
	movs r2, #0x18
	bl CpuFastSet
	movs r1, #0xa8
	lsls r1, r1, #2
_0800B712:
	adds r0, r4, r1
	ldr r2, _0800B738
	adds r1, r5, r2
	movs r2, #0x18
	bl CpuFastSet
	b _0800B7A8
	.align 2, 0
_0800B720: .4byte 0x08DFBDE8
_0800B724: .4byte 0xFFFF95A0
_0800B728: .4byte 0xFFFF9980
_0800B72C: .4byte 0xFFFF9D60
_0800B730: .4byte 0xFFFFA140
_0800B734: .4byte 0xFFFFA520
_0800B738: .4byte 0xFFFFA900
_0800B73C:
	ldr r4, _0800B834
	ldr r0, _0800B838
	adds r1, r5, r0
	adds r0, r4, #0
	movs r2, #0x18
	bl CpuFastSet
	adds r0, r4, #0
	adds r0, #0x60
	ldr r2, _0800B83C
	adds r1, r5, r2
	movs r2, #0x18
	bl CpuFastSet
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, _0800B840
	adds r1, r5, r2
	movs r2, #0x30
	bl CpuFastSet
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, _0800B844
	adds r1, r5, r2
	movs r2, #0x30
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, _0800B848
	adds r1, r5, r2
	movs r2, #0x18
	bl CpuFastSet
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, _0800B84C
	adds r1, r5, r2
	movs r2, #0x10
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r2, _0800B850
	adds r1, r5, r2
	movs r2, #8
	bl CpuFastSet
_0800B7A8:
	ldr r0, _0800B854
	ldr r1, _0800B858
	ldr r2, _0800B85C
	bl CpuSet
	movs r4, #0
_0800B7B4:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0800B860
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r2, _0800B864
	adds r1, r1, r2
	ldr r2, _0800B868
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0800B7B4
	bl sub_800BA04
	bl sub_800BC24
	bl sub_800BCEC
	bl sub_800BCC4
	adds r0, r6, #0
	bl sub_800BCB0
	bl sub_80267B8
	movs r4, #0
	ldr r6, _0800B86C
_0800B7F2:
	lsls r1, r4, #3
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r6]
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0800B870
	adds r1, r1, r5
	movs r2, #0xe
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x12
	bls _0800B7F2
	ldr r0, _0800B874
	ldr r0, [r0]
	ldr r1, _0800B878
	movs r2, #0x80
	bl CpuSet
	ldr r0, _0800B87C
	ldr r0, [r0]
	ldr r2, _0800B880
	adds r1, r5, r2
	movs r2, #0x80
	lsls r2, r2, #6
	bl CpuSet
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B834: .4byte 0x08DFBDE8
_0800B838: .4byte 0xFFFF95A0
_0800B83C: .4byte 0xFFFF9980
_0800B840: .4byte 0xFFFF9D60
_0800B844: .4byte 0xFFFFA140
_0800B848: .4byte 0xFFFFA520
_0800B84C: .4byte 0xFFFFA900
_0800B850: .4byte 0xFFFFA940
_0800B854: .4byte 0x08097C94
_0800B858: .4byte 0x02000100
_0800B85C: .4byte 0x04000040
_0800B860: .4byte 0x0809508C
_0800B864: .4byte 0x0200F400
_0800B868: .4byte 0x0400000F
_0800B86C: .4byte gUnk_8E0136C
_0800B870: .4byte 0x0200EC40
_0800B874: .4byte gUnk_8E01368
_0800B878: .4byte 0x02000000
_0800B87C: .4byte gUnk_8E01364
_0800B880: .4byte 0xFFFF17C0

	THUMB_FUNC_START sub_800B884
sub_800B884: @ 0x0800B884
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0800B954
	ldrh r6, [r0, #0x10]
	ldr r0, _0800B958
	cmp r6, r0
	bne _0800B896
	b _0800B9F4
_0800B896:
	movs r0, #0xc8
	lsls r0, r0, #2
	cmp r6, r0
	bls _0800B8A0
	adds r6, r0, #0
_0800B8A0:
	movs r4, #0xfa
	lsls r4, r4, #2
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_805B940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r6, r0
	adds r1, r4, #0
	bl sub_805AF28
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r4, #5
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r5, #0x64
	adds r0, r6, #0
	movs r1, #0x64
	bl sub_805B940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r6, r0
	movs r1, #0x64
	bl sub_805AF28
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r7, #0
	muls r0, r5, r0
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_805B940
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r6, r0
	movs r1, #0xa
	bl sub_805AF28
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	subs r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r6, #4
	cmp r4, #0
	bne _0800B92C
	movs r6, #3
	cmp r7, #0
	bne _0800B92C
	movs r6, #1
	cmp r5, #0
	beq _0800B92C
	movs r6, #2
_0800B92C:
	ldr r4, _0800B95C
	cmp r6, #2
	bls _0800B968
	ldr r0, _0800B960
	adds r1, r7, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	ldr r2, _0800B960
	adds r0, r7, r2
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	asrs r0, r0, #8
	orrs r1, r0
	ldr r2, _0800B964
	adds r0, r4, #0
	bl sub_8020968
	b _0800B974
	.align 2, 0
_0800B954: .4byte gCardInfo
_0800B958: .4byte 0x0000FFFF
_0800B95C: .4byte 0x02004420
_0800B960: .4byte 0x0000824F
_0800B964: .4byte 0x00000901
_0800B968:
	ldr r1, _0800B99C
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_8020968
_0800B974:
	adds r4, #0x20
	cmp r6, #1
	bls _0800B9A8
	ldr r0, _0800B9A0
	adds r1, r5, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	ldr r2, _0800B9A0
	adds r0, r5, r2
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	asrs r0, r0, #8
	orrs r1, r0
	ldr r2, _0800B9A4
	adds r0, r4, #0
	bl sub_8020968
	b _0800B9B4
	.align 2, 0
_0800B99C: .4byte 0x00004081
_0800B9A0: .4byte 0x0000824F
_0800B9A4: .4byte 0x00000901
_0800B9A8:
	ldr r1, _0800B9DC
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_8020968
_0800B9B4:
	adds r4, #0x60
	cmp r6, #0
	beq _0800B9E8
	ldr r1, _0800B9E0
	add r1, r8
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #8
	ldr r0, _0800B9E0
	add r0, r8
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	asrs r0, r0, #8
	orrs r1, r0
	ldr r2, _0800B9E4
	adds r0, r4, #0
	bl sub_8020968
	b _0800B9F4
	.align 2, 0
_0800B9DC: .4byte 0x00004081
_0800B9E0: .4byte 0x0000824F
_0800B9E4: .4byte 0x00000901
_0800B9E8:
	ldr r1, _0800BA00
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_8020968
_0800B9F4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BA00: .4byte 0x00004081

	THUMB_FUNC_START sub_800BA04
sub_800BA04: @ 0x0800BA04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	ldr r0, _0800BA60
	ldr r6, [r0]
	adds r0, r6, #0
	bl sub_8020824
	adds r6, r0, #0
	movs r0, #0
	mov ip, r0
	movs r5, #0
	movs r2, #0
	adds r3, r6, #0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800BA9A
	cmp r0, #0x24
	beq _0800BA9A
	movs r4, #0x40
	movs r1, #0x80
_0800BA34:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _0800BA40
	adds r3, r6, r5
	mov sl, ip
_0800BA40:
	adds r0, r6, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0800BA72
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _0800BA64
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0800BA64
	movs r0, #0xbf
	ands r2, r0
	b _0800BA6A
	.align 2, 0
_0800BA60: .4byte gCardInfo
_0800BA64:
	orrs r2, r4
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
_0800BA6A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _0800BA7E
_0800BA72:
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	orrs r2, r4
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
_0800BA7E:
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #0x1e
	bls _0800BA8E
	orrs r2, r1
_0800BA8E:
	adds r0, r6, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800BA9A
	cmp r0, #0x24
	bne _0800BA34
_0800BA9A:
	movs r7, #0
	mov r1, ip
	cmp r1, #0x1e
	bls _0800BAB4
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #0x80
	orrs r7, r0
	movs r4, #0x1e
	mov ip, r4
	b _0800BAB6
_0800BAB4:
	mov sl, ip
_0800BAB6:
	movs r2, #0
	movs r5, #0
	cmp r2, ip
	blo _0800BAC0
	b _0800BBDA
_0800BAC0:
	movs r0, #0x20
	mov r8, r0
_0800BAC4:
	movs r0, #3
	ands r0, r5
	adds r1, r5, #1
	mov sb, r1
	cmp r0, #2
	bne _0800BB30
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _0800BB30
	movs r4, #0
_0800BADA:
	movs r0, #0x7f
	ands r0, r7
	cmp r0, #0
	beq _0800BB18
	ldrb r0, [r3]
	add r1, sp, #0x7c
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _0800BB00
	mov r0, sp
	adds r0, r0, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, #1
_0800BB00:
	mov r0, sp
	adds r1, r0, r2
	ldrb r0, [r3]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, #1
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	b _0800BB26
_0800BB18:
	mov r1, sp
	adds r0, r1, r2
	mov r1, r8
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0800BB26:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0800BADA
_0800BB30:
	cmp r5, sl
	bhs _0800BB5E
	ldrb r1, [r6]
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _0800BB4C
	mov r4, sp
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r6, #1
_0800BB4C:
	mov r0, sp
	adds r1, r0, r2
	ldrb r0, [r6]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r6, #1
	b _0800BB6C
_0800BB5E:
	mov r1, sp
	adds r0, r1, r2
	mov r4, r8
	strb r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0800BB6C:
	movs r0, #3
	ands r5, r0
	cmp r5, #3
	bne _0800BBCE
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _0800BBCE
	movs r4, #0
_0800BB7E:
	movs r0, #0x7f
	ands r0, r7
	cmp r0, #0
	beq _0800BBB6
	ldrb r1, [r3]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _0800BB9E
	mov r5, sp
	adds r0, r5, r2
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, #1
_0800BB9E:
	mov r0, sp
	adds r1, r0, r2
	ldrb r0, [r3]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, #1
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	b _0800BBC4
_0800BBB6:
	mov r1, sp
	adds r0, r1, r2
	mov r5, r8
	strb r5, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0800BBC4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0800BB7E
_0800BBCE:
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	cmp r5, ip
	bhs _0800BBDA
	b _0800BAC4
_0800BBDA:
	mov r4, sp
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x80
	ands r7, r0
	cmp r7, #0
	beq _0800BC00
	ldr r2, _0800BBF8
	ldr r0, _0800BBFC
	mov r1, sp
	bl sub_8020A3C
	b _0800BC0A
	.align 2, 0
_0800BBF8: .4byte 0x00000801
_0800BBFC: .4byte 0x02004420
_0800BC00:
	ldr r2, _0800BC1C
	ldr r0, _0800BC20
	mov r1, sp
	bl sub_8020A3C
_0800BC0A:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BC1C: .4byte 0x00000901
_0800BC20: .4byte 0x02004420

	THUMB_FUNC_START sub_800BC24
sub_800BC24: @ 0x0800BC24
	push {r4, r5, lr}
	ldr r0, _0800BC50
	ldrh r0, [r0, #0xc]
	movs r1, #0
	bl sub_800DDA0
	ldr r5, _0800BC54
	movs r4, #0
_0800BC34:
	ldr r0, _0800BC58
	subs r1, r4, #5
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	beq _0800BC44
	cmp r4, #4
	bhi _0800BC64
_0800BC44:
	adds r0, r5, #0
	ldr r1, _0800BC5C
	ldr r2, _0800BC60
	bl sub_8020968
	b _0800BC86
	.align 2, 0
_0800BC50: .4byte gCardInfo
_0800BC54: .4byte 0x02005400
_0800BC58: .4byte 0x02021BD0
_0800BC5C: .4byte 0x00004081
_0800BC60: .4byte 0x00000101
_0800BC64:
	ldrb r0, [r1]
	ldr r2, _0800BC94
	adds r1, r0, r2
	movs r2, #0xff
	ands r1, r2
	lsls r1, r1, #8
	ldr r2, _0800BC94
	adds r0, r0, r2
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	asrs r0, r0, #8
	orrs r1, r0
	adds r0, r5, #0
	ldr r2, _0800BC98
	bl sub_8020968
_0800BC86:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800BC9C
	adds r5, #0x60
	b _0800BC9E
	.align 2, 0
_0800BC94: .4byte 0x0000824F
_0800BC98: .4byte 0x00000101
_0800BC9C:
	adds r5, #0x20
_0800BC9E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _0800BC34
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800BCB0
sub_800BCB0: @ 0x0800BCB0
	push {lr}
	ldr r1, _0800BCC0
	movs r2, #0x8c
	lsls r2, r2, #3
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_0800BCC0: .4byte 0x02005680

	THUMB_FUNC_START sub_800BCC4
sub_800BCC4: @ 0x0800BCC4
	push {r4, lr}
	ldr r4, _0800BCE0
	ldr r0, _0800BCE4
	ldrb r0, [r0, #0x17]
	bl sub_802BF50
	adds r1, r0, #0
	ldr r2, _0800BCE8
	adds r0, r4, #0
	bl sub_8020A3C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BCE0: .4byte 0x02005000
_0800BCE4: .4byte gCardInfo
_0800BCE8: .4byte 0x00000901

	THUMB_FUNC_START sub_800BCEC
sub_800BCEC: @ 0x0800BCEC
	push {r4, lr}
	ldr r4, _0800BD08
	ldr r0, _0800BD0C
	ldrb r0, [r0, #0x16]
	bl sub_803F02C
	adds r1, r0, #0
	ldr r2, _0800BD10
	adds r0, r4, #0
	bl sub_8020A3C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BD08: .4byte 0x02004C80
_0800BD0C: .4byte gCardInfo
_0800BD10: .4byte 0x00000901

	THUMB_FUNC_START sub_800BD14
sub_800BD14: @ 0x0800BD14
	lsls r0, r0, #0x10
	ldr r1, _0800BD20
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800BD20: .4byte 0x08DFC288

	THUMB_FUNC_START sub_800BD24
sub_800BD24: @ 0x0800BD24
	lsls r0, r0, #0x10
	ldr r1, _0800BD30
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800BD30: .4byte 0x08DFCF0C

	THUMB_FUNC_START sub_800BD34
sub_800BD34: @ 0x0800BD34
	push {lr}
	bl sub_800BD44
	bl sub_800BDA0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800BD44
sub_800BD44: @ 0x0800BD44
	push {r4, lr}
	ldr r4, _0800BD88
	ldrb r0, [r4, #0x12]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf9
	bhi _0800BD90
	ldr r1, _0800BD8C
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0x12]
	movs r2, #0xfb
	subs r2, r2, r1
	asrs r3, r2, #0x1f
	ldr r1, [r0, #4]
	ldr r0, [r0]
	bl sub_805B0D4
	movs r2, #0xfa
	movs r3, #0
	bl sub_805B144
	str r0, [r4]
	str r1, [r4, #4]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	orrs r0, r1
	cmp r0, #0
	bne _0800BD98
	movs r0, #1
	movs r1, #0
	b _0800BD94
	.align 2, 0
_0800BD88: .4byte 0x02021AF0
_0800BD8C: .4byte 0x08DFDB90
_0800BD90:
	movs r0, #0
	movs r1, #0
_0800BD94:
	str r0, [r4]
	str r1, [r4, #4]
_0800BD98:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800BDA0
sub_800BDA0: @ 0x0800BDA0
	push {r4, lr}
	ldr r0, _0800BDC8
	ldrb r1, [r0, #0x12]
	adds r4, r0, #0
	cmp r1, #0xf9
	bhi _0800BDD0
	ldr r1, _0800BDCC
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0x12]
	movs r2, #0xfa
	subs r2, r2, r1
	asrs r3, r2, #0x1f
	ldr r1, [r0, #4]
	ldr r0, [r0]
	bl sub_805B0D4
	b _0800BDDC
	.align 2, 0
_0800BDC8: .4byte 0x02021AF0
_0800BDCC: .4byte 0x08DFDB90
_0800BDD0:
	ldr r1, _0800BE00
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
_0800BDDC:
	ldr r2, _0800BE04
	ldr r3, _0800BE08
	bl sub_805B144
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	orrs r0, r1
	cmp r0, #0
	bne _0800BDFA
	movs r0, #1
	movs r1, #0
	str r0, [r4, #8]
	str r1, [r4, #0xc]
_0800BDFA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BE00: .4byte 0x08DFDB90
_0800BE04: .4byte 0x00001388
_0800BE08: .4byte 0x00000000

	THUMB_FUNC_START sub_800BE0C
sub_800BE0C: @ 0x0800BE0C
	push {r4, lr}
	movs r0, #2
	bl sub_8035038
	movs r0, #0xd5
	bl sub_8034F60
	bl sub_8021B80
	bl sub_8008F24
	bl sub_801DA20
	bl sub_80090B8
	movs r0, #0x8f
	bl sub_8034F60
	bl sub_800BF28
	movs r4, #1
_0800BE36:
	bl sub_8008644
	adds r1, r0, #0
	cmp r1, #0x40
	beq _0800BE7E
	cmp r1, #0x40
	bgt _0800BE5C
	cmp r1, #2
	beq _0800BEAC
	cmp r1, #2
	bgt _0800BE52
	cmp r1, #1
	beq _0800BEA6
	b _0800BF00
_0800BE52:
	cmp r1, #4
	beq _0800BEE8
	cmp r1, #8
	beq _0800BED6
	b _0800BF00
_0800BE5C:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0800BE88
	cmp r1, r0
	bgt _0800BE6E
	cmp r1, #0x80
	beq _0800BE92
	b _0800BF00
_0800BE6E:
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0800BE9C
	adds r0, #0x80
	cmp r1, r0
	beq _0800BEBE
	b _0800BF00
_0800BE7E:
	movs r0, #3
	bl sub_8008F88
	movs r0, #3
	b _0800BEC6
_0800BE88:
	movs r0, #5
	bl sub_8008F88
	movs r0, #3
	b _0800BEC6
_0800BE92:
	movs r0, #2
	bl sub_8008F88
	movs r0, #3
	b _0800BEC6
_0800BE9C:
	movs r0, #4
	bl sub_8008F88
	movs r0, #3
	b _0800BEC6
_0800BEA6:
	bl sub_800BF54
	b _0800BEB0
_0800BEAC:
	bl sub_800C558
_0800BEB0:
	cmp r0, #0
	bne _0800BEB6
	movs r4, #0
_0800BEB6:
	movs r0, #7
	bl sub_800AA58
	b _0800BF0A
_0800BEBE:
	movs r0, #6
	bl sub_8008F88
	movs r0, #4
_0800BEC6:
	bl sub_800D904
	bl sub_800ABB4
	movs r0, #4
	bl sub_800AA58
	b _0800BF0A
_0800BED6:
	bl sub_800DAA4
	movs r0, #8
	bl sub_800D904
	movs r0, #8
	bl sub_800AA58
	b _0800BF0A
_0800BEE8:
	movs r0, #0xa
	bl sub_8008F88
	movs r0, #7
	bl sub_800D904
	movs r0, #9
	bl sub_800AA58
	bl sub_800ABE4
	b _0800BF0A
_0800BF00:
	bl sub_0800ABE0
	movs r0, #5
	bl sub_800AA58
_0800BF0A:
	cmp r4, #0
	bne _0800BE36
	movs r0, #2
	bl sub_8035020
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800BF1C
sub_800BF1C: @ 0x0800BF1C
	ldr r1, _0800BF24
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0800BF24: .4byte gAnte

	THUMB_FUNC_START sub_800BF28
sub_800BF28: @ 0x0800BF28
	push {lr}
	ldr r1, _0800BF50
	movs r0, #0
	strh r0, [r1]
	bl sub_800D904
	movs r0, #2
	bl sub_800D904
	movs r0, #1
	bl sub_800AA58
	bl sub_800ABA8
	movs r0, #3
	bl sub_800AA58
	pop {r0}
	bx r0
	.align 2, 0
_0800BF50: .4byte gAnte

	THUMB_FUNC_START sub_800BF54
sub_800BF54: @ 0x0800BF54
	push {r4, r5, r6, lr}
	movs r5, #1
	ldr r4, _0800BF8C
	movs r0, #0
	strb r0, [r4, #4]
	bl sub_800C0D8
	bl sub_800C208
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, _0800BF90
	bl sub_80081DC
	bl sub_8008220
	movs r6, #1
_0800BF78:
	bl sub_80086D8
	cmp r0, #2
	beq _0800C002
	cmp r0, #2
	bgt _0800BF94
	cmp r0, #1
	beq _0800BFD0
	b _0800C00A
	.align 2, 0
_0800BF8C: .4byte gUnkStruct_2020E10
_0800BF90: .4byte 0x0800C4F9
_0800BF94:
	cmp r0, #0x40
	beq _0800BF9E
	cmp r0, #0x80
	beq _0800BFA8
	b _0800C00A
_0800BF9E:
	ldr r0, _0800BFA4
	b _0800BFAA
	.align 2, 0
_0800BFA4: .4byte 0x08DFF498
_0800BFA8:
	ldr r0, _0800BFC8
_0800BFAA:
	ldrb r1, [r4, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4, #4]
	bl sub_800C208
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800BFCC
	bl sub_80081DC
_0800BFC2:
	bl sub_8008220
	b _0800C00E
	.align 2, 0
_0800BFC8: .4byte 0x08DFF49B
_0800BFCC: .4byte 0x080454C9
_0800BFD0:
	ldrb r0, [r4, #4]
	cmp r0, #1
	beq _0800BFEC
	cmp r0, #1
	bgt _0800BFE0
	cmp r0, #0
	beq _0800BFE6
	b _0800BFC2
_0800BFE0:
	cmp r0, #2
	beq _0800BFFA
	b _0800BFC2
_0800BFE6:
	bl sub_800C1BC
	b _0800C00E
_0800BFEC:
	bl sub_800C2C0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800C012
	movs r5, #0
	b _0800C012
_0800BFFA:
	movs r0, #0x37
	bl sub_8034F60
	b _0800C012
_0800C002:
	movs r0, #0x38
	bl sub_8034F60
	b _0800C012
_0800C00A:
	bl sub_8008220
_0800C00E:
	cmp r6, #0
	bne _0800BF78
_0800C012:
	bl sub_8008A48
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800C020
sub_800C020: @ 0x0800C020
	push {r4, r5, r6, lr}
	movs r5, #1
	ldr r4, _0800C058
	movs r0, #0
	strb r0, [r4, #4]
	bl sub_800C3C4
	bl sub_800C264
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, _0800C05C
	bl sub_80081DC
	bl sub_8008220
	movs r6, #1
_0800C044:
	bl sub_80086D8
	cmp r0, #2
	beq _0800C0BE
	cmp r0, #2
	bgt _0800C060
	cmp r0, #1
	beq _0800C09C
	b _0800C0C6
	.align 2, 0
_0800C058: .4byte gUnkStruct_2020E10
_0800C05C: .4byte 0x0800C4F9
_0800C060:
	cmp r0, #0x40
	beq _0800C06A
	cmp r0, #0x80
	beq _0800C074
	b _0800C0C6
_0800C06A:
	ldr r0, _0800C070
	b _0800C076
	.align 2, 0
_0800C070: .4byte 0x08DFF4A4
_0800C074:
	ldr r0, _0800C094
_0800C076:
	ldrb r1, [r4, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4, #4]
	bl sub_800C264
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800C098
	bl sub_80081DC
	bl sub_8008220
	b _0800C0CA
	.align 2, 0
_0800C094: .4byte 0x08DFF4A6
_0800C098: .4byte 0x080454C9
_0800C09C:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0800C0AC
	cmp r0, #1
	beq _0800C0B4
	bl sub_8008220
	b _0800C0CA
_0800C0AC:
	movs r0, #0x37
	bl sub_8034F60
	b _0800C0CE
_0800C0B4:
	movs r0, #0xde
	bl sub_8034F60
	movs r5, #0
	b _0800C0CE
_0800C0BE:
	movs r0, #0x38
	bl sub_8034F60
	b _0800C0CE
_0800C0C6:
	bl sub_8008220
_0800C0CA:
	cmp r6, #0
	bne _0800C044
_0800C0CE:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800C0D8
sub_800C0D8: @ 0x0800C0D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r6, #0
_0800C0E2:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _0800C19C
	adds r0, r0, r1
	lsls r1, r6, #6
	ldr r4, _0800C1A0
	adds r1, r1, r4
	ldr r2, _0800C1A4
	bl CpuSet
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0800C0E2
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800C1A8
	adds r1, r4, r0
	ldr r2, _0800C1AC
	mov r0, sp
	bl CpuSet
	movs r4, #0xf0
	lsls r4, r4, #7
	movs r0, #9
	movs r1, #9
	adds r2, r4, #0
	bl sub_08007FEC
	movs r7, #0xff
	lsls r7, r7, #8
	ands r7, r0
	movs r6, #0
	mov r8, r4
_0800C12C:
	adds r4, r6, #0
	adds r4, #9
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800C1B0
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #0x15
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xb
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x17
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3d
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xd
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3f
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xe
	mov r2, r8
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0800C12C
	ldr r0, _0800C1B4
	ldr r1, _0800C1B8
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C19C: .4byte gUnk_808CBA0
_0800C1A0: .4byte 0x02007C00
_0800C1A4: .4byte 0x0400000F
_0800C1A8: .4byte 0xFFFFC800
_0800C1AC: .4byte 0x01000010
_0800C1B0: .4byte 0x08DF811C
_0800C1B4: .4byte 0x02004420
_0800C1B8: .4byte 0x080ADEFC

	THUMB_FUNC_START sub_800C1BC
sub_800C1BC: @ 0x0800C1BC
	push {lr}
	movs r0, #2
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #0x37
	bl sub_8034F60
	bl sub_801F6B0
	movs r0, #0
	bl sub_800D904
	movs r0, #2
	bl sub_800D904
	movs r0, #1
	bl sub_800AA58
	bl sub_800ABA8
	bl sub_800C0D8
	bl sub_800C208
	ldr r0, _0800C204
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0800C204: .4byte 0x0800C4F9

	THUMB_FUNC_START sub_800C208
sub_800C208: @ 0x0800C208
	push {r4, r5, lr}
	ldr r3, _0800C24C
	ldr r2, _0800C250
	ldr r5, _0800C254
	ldrb r0, [r5, #4]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _0800C258
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _0800C25C
	str r0, [r3, #4]
	ldrb r0, [r5, #4]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _0800C260
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C24C: .4byte 0x02018430
_0800C250: .4byte 0x08DFF49E
_0800C254: .4byte gUnkStruct_2020E10
_0800C258: .4byte 0x08DFF4A1
_0800C25C: .4byte 0x0000C120
_0800C260: .4byte 0x40000800

	THUMB_FUNC_START sub_800C264
sub_800C264: @ 0x0800C264
	push {r4, r5, lr}
	ldr r3, _0800C2A8
	ldr r2, _0800C2AC
	ldr r5, _0800C2B0
	ldrb r0, [r5, #4]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _0800C2B4
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _0800C2B8
	str r0, [r3, #4]
	ldrb r0, [r5, #4]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _0800C2BC
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C2A8: .4byte 0x02018430
_0800C2AC: .4byte 0x08DFF4A8
_0800C2B0: .4byte gUnkStruct_2020E10
_0800C2B4: .4byte 0x08DFF4AA
_0800C2B8: .4byte 0x0000C120
_0800C2BC: .4byte 0x40000800

	THUMB_FUNC_START sub_800C2C0
sub_800C2C0: @ 0x0800C2C0
	push {r4, r5, r6, lr}
	movs r6, #1
	movs r0, #2
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r4, #0
	adds r0, r4, #0
	bl GetTrunkCardQty
	cmp r0, #1
	bgt _0800C2E0
	bl sub_800C32C
	b _0800C31C
_0800C2E0:
	adds r0, r4, #0
	bl IsGodCard
	cmp r0, #1
	bne _0800C2F0
	bl sub_800C378
	b _0800C31C
_0800C2F0:
	adds r0, r4, #0
	bl sub_8025568
	cmp r0, #0
	bne _0800C310
	bl sub_800C020
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800C31C
	movs r6, #0
	ldr r0, _0800C30C
	strh r4, [r0]
	b _0800C31C
	.align 2, 0
_0800C30C: .4byte gAnte
_0800C310:
	movs r6, #0
	ldr r0, _0800C328
	strh r5, [r0]
	movs r0, #0xde
	bl sub_8034F60
_0800C31C:
	bl sub_8008220
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800C328: .4byte gAnte

	THUMB_FUNC_START sub_800C32C
sub_800C32C: @ 0x0800C32C
	push {lr}
	ldr r0, _0800C350
	movs r1, #0
	strb r1, [r0, #4]
	bl sub_800C430
	movs r0, #0x39
	bl sub_8034F60
	bl sub_800C530
	ldr r0, _0800C354
	bl sub_80081DC
	bl sub_8008220
	b _0800C35C
	.align 2, 0
_0800C350: .4byte gUnkStruct_2020E10
_0800C354: .4byte 0x0800C4F9
_0800C358:
	bl sub_8008220
_0800C35C:
	bl sub_80086D8
	lsls r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0xa
	ands r1, r0
	cmp r1, #0
	beq _0800C358
	movs r0, #0x38
	bl sub_8034F60
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800C378
sub_800C378: @ 0x0800C378
	push {lr}
	ldr r0, _0800C39C
	movs r1, #0
	strb r1, [r0, #4]
	bl sub_800C494
	movs r0, #0x39
	bl sub_8034F60
	bl sub_800C530
	ldr r0, _0800C3A0
	bl sub_80081DC
	bl sub_8008220
	b _0800C3A8
	.align 2, 0
_0800C39C: .4byte gUnkStruct_2020E10
_0800C3A0: .4byte 0x0800C4F9
_0800C3A4:
	bl sub_8008220
_0800C3A8:
	bl sub_80086D8
	lsls r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0xa
	ands r1, r0
	cmp r1, #0
	beq _0800C3A4
	movs r0, #0x38
	bl sub_8034F60
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800C3C4
sub_800C3C4: @ 0x0800C3C4
	push {r4, r5, lr}
	sub sp, #4
	movs r4, #0
_0800C3CA:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0800C414
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0800C418
	adds r1, r1, r5
	ldr r2, _0800C41C
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0800C3CA
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800C420
	adds r1, r5, r0
	ldr r2, _0800C424
	mov r0, sp
	bl CpuSet
	ldr r1, _0800C428
	adds r0, r5, r1
	ldr r1, _0800C42C
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C414: .4byte gUnk_808D050
_0800C418: .4byte 0x02007C00
_0800C41C: .4byte 0x0400000F
_0800C420: .4byte 0xFFFFC800
_0800C424: .4byte 0x01000010
_0800C428: .4byte 0xFFFFC820
_0800C42C: .4byte 0x080AE02C

	THUMB_FUNC_START sub_800C430
sub_800C430: @ 0x0800C430
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r4, #0
	movs r5, #0
_0800C438:
	ldr r0, _0800C478
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r6, _0800C47C
	adds r1, r1, r6
	ldr r2, _0800C480
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0800C438
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	ldr r0, _0800C484
	adds r1, r6, r0
	ldr r2, _0800C488
	mov r0, sp
	bl CpuSet
	ldr r1, _0800C48C
	adds r0, r6, r1
	ldr r1, _0800C490
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C478: .4byte gUnk_808D050
_0800C47C: .4byte 0x02007C00
_0800C480: .4byte 0x0400000F
_0800C484: .4byte 0xFFFFC800
_0800C488: .4byte 0x01000010
_0800C48C: .4byte 0xFFFFC820
_0800C490: .4byte 0x080AE1A8

	THUMB_FUNC_START sub_800C494
sub_800C494: @ 0x0800C494
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r4, #0
	movs r5, #0
_0800C49C:
	ldr r0, _0800C4DC
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r6, _0800C4E0
	adds r1, r1, r6
	ldr r2, _0800C4E4
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0800C49C
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	ldr r0, _0800C4E8
	adds r1, r6, r0
	ldr r2, _0800C4EC
	mov r0, sp
	bl CpuSet
	ldr r1, _0800C4F0
	adds r0, r6, r1
	ldr r1, _0800C4F4
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C4DC: .4byte gUnk_808D050
_0800C4E0: .4byte 0x02007C00
_0800C4E4: .4byte 0x0400000F
_0800C4E8: .4byte 0xFFFFC800
_0800C4EC: .4byte 0x01000010
_0800C4F0: .4byte 0xFFFFC820
_0800C4F4: .4byte 0x080AE370

	THUMB_FUNC_START sub_800C4F8
sub_800C4F8: @ 0x0800C4F8
	push {lr}
	bl sub_80454E0
	bl LoadOam
	bl sub_8045658
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
	ldr r2, _0800C52C
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0800C52C: .4byte 0x04000050

	THUMB_FUNC_START sub_800C530
sub_800C530: @ 0x0800C530
	ldr r1, _0800C548
	ldr r0, _0800C54C
	str r0, [r1]
	ldr r0, _0800C550
	str r0, [r1, #4]
	ldr r0, _0800C554
	str r0, [r1, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0800C548: .4byte 0x02018430
_0800C54C: .4byte 0x40F000A0
_0800C550: .4byte 0x0000C120
_0800C554: .4byte 0x40F008A0

	THUMB_FUNC_START sub_800C558
sub_800C558: @ 0x0800C558
	push {r4, r5, r6, lr}
	ldr r4, _0800C590
	movs r0, #0
	strb r0, [r4, #4]
	movs r5, #1
	bl sub_800C608
	bl sub_800C7A0
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, _0800C594
	bl sub_80081DC
	bl sub_8008220
	movs r6, #1
_0800C57C:
	bl sub_80086D8
	cmp r0, #2
	beq _0800C5EC
	cmp r0, #2
	bgt _0800C598
	cmp r0, #1
	beq _0800C5D4
	b _0800C5F4
	.align 2, 0
_0800C590: .4byte gUnkStruct_2020E10
_0800C594: .4byte 0x0800C7FD
_0800C598:
	cmp r0, #0x40
	beq _0800C5A2
	cmp r0, #0x80
	beq _0800C5AC
	b _0800C5F4
_0800C5A2:
	ldr r0, _0800C5A8
	b _0800C5AE
	.align 2, 0
_0800C5A8: .4byte 0x08DFF4AC
_0800C5AC:
	ldr r0, _0800C5CC
_0800C5AE:
	ldrb r1, [r4, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4, #4]
	movs r0, #0x36
	bl sub_8034F60
	bl sub_800C7A0
	ldr r0, _0800C5D0
	bl sub_80081DC
	bl sub_8008220
	b _0800C5F8
	.align 2, 0
_0800C5CC: .4byte 0x08DFF4AE
_0800C5D0: .4byte 0x080454C9
_0800C5D4:
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _0800C5E4
	movs r5, #0
	movs r0, #0xde
	bl sub_8034F60
	b _0800C5FC
_0800C5E4:
	movs r0, #0x37
	bl sub_8034F60
	b _0800C5FC
_0800C5EC:
	movs r0, #0x38
	bl sub_8034F60
	b _0800C5FC
_0800C5F4:
	bl sub_8008220
_0800C5F8:
	cmp r6, #0
	bne _0800C57C
_0800C5FC:
	bl sub_8008A48
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800C608
sub_800C608: @ 0x0800C608
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r6, #0
_0800C614:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _0800C780
	adds r0, r0, r1
	lsls r1, r6, #6
	ldr r4, _0800C784
	adds r1, r1, r4
	ldr r2, _0800C788
	bl CpuSet
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0800C614
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800C78C
	adds r1, r4, r0
	ldr r2, _0800C790
	mov r0, sp
	bl CpuSet
	movs r4, #0xf0
	lsls r4, r4, #7
	movs r0, #0
	movs r1, #3
	adds r2, r4, #0
	bl sub_08007FEC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #3
	movs r1, #7
	adds r2, r4, #0
	bl sub_08007FEC
	movs r7, #0xff
	lsls r7, r7, #8
	ands r7, r0
	movs r6, #0
	mov r8, r4
_0800C66E:
	adds r4, r6, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800C794
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #1
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #7
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #3
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #8
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x39
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #9
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3b
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xa
	mov r2, r8
	bl sub_800800C
	adds r6, r4, #0
	cmp r6, #0x1b
	bls _0800C66E
	movs r6, #0
	movs r0, #0xf0
	lsls r0, r0, #7
	mov r8, r0
_0800C6C6:
	adds r4, r6, #0
	adds r4, #0xc
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800C794
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #0x71
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x73
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xd
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x79
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xe
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x7b
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xf
	mov r2, r8
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0800C6C6
	movs r6, #0
	movs r5, #0xf0
	lsls r5, r5, #7
_0800C722:
	adds r4, r6, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #0xc
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xd
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xe
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0800C722
	ldr r0, _0800C798
	ldr r1, _0800C79C
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C780: .4byte gUnk_808D050
_0800C784: .4byte 0x02007C00
_0800C788: .4byte 0x0400000F
_0800C78C: .4byte 0xFFFFC800
_0800C790: .4byte 0x01000010
_0800C794: .4byte 0x08DF811C
_0800C798: .4byte 0x02004420
_0800C79C: .4byte 0x080AE544

	THUMB_FUNC_START sub_800C7A0
sub_800C7A0: @ 0x0800C7A0
	push {r4, r5, lr}
	ldr r3, _0800C7E4
	ldr r2, _0800C7E8
	ldr r5, _0800C7EC
	ldrb r0, [r5, #4]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _0800C7F0
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _0800C7F4
	str r0, [r3, #4]
	ldrb r0, [r5, #4]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _0800C7F8
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C7E4: .4byte 0x02018430
_0800C7E8: .4byte 0x08DFF4B0
_0800C7EC: .4byte gUnkStruct_2020E10
_0800C7F0: .4byte 0x08DFF4B2
_0800C7F4: .4byte 0x0000C120
_0800C7F8: .4byte 0x40000800

	THUMB_FUNC_START sub_800C7FC
sub_800C7FC: @ 0x0800C7FC
	push {lr}
	bl sub_80454E0
	bl LoadOam
	bl sub_8045658
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
	ldr r2, _0800C830
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0800C830: .4byte 0x04000050

	THUMB_FUNC_START sub_800C834
sub_800C834: @ 0x0800C834
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0800C854
	ldr r5, _0800C858
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r0, _0800C85C
	ldrb r0, [r0]
	cmp r0, #2
	beq _0800C874
	cmp r0, #2
	bgt _0800C860
	cmp r0, #1
	beq _0800C86A
	b _0800C908
	.align 2, 0
_0800C854: .4byte gUnk_808918C
_0800C858: .4byte 0x02000400
_0800C85C: .4byte gLanguage
_0800C860:
	cmp r0, #3
	beq _0800C87C
	cmp r0, #4
	beq _0800C8C4
	b _0800C908
_0800C86A:
	ldr r4, _0800C870
	b _0800C87E
	.align 2, 0
_0800C870: .4byte 0x08DFA6B4
_0800C874:
	ldr r4, _0800C878
	b _0800C87E
	.align 2, 0
_0800C878: .4byte 0x08DFAB54
_0800C87C:
	ldr r4, _0800C8C0
_0800C87E:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x48
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r2, #0x48
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r1, r5, r2
	movs r2, #0x48
	bl CpuFastSet
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r2, #0x50
	bl CpuFastSet
	b _0800C908
	.align 2, 0
_0800C8C0: .4byte 0x08DFAFF4
_0800C8C4:
	ldr r4, _0800C950
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x48
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r2, #0x48
	bl CpuFastSet
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r1, r5, r2
	movs r2, #0x48
	bl CpuFastSet
	movs r0, #0x94
	lsls r0, r0, #3
	adds r4, r4, r0
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r5, r2
	adds r0, r4, #0
	movs r2, #0x50
	bl CpuFastSet
_0800C908:
	movs r4, #0
_0800C90A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0800C954
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0800C958
	adds r1, r1, r5
	ldr r2, _0800C95C
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0800C90A
	ldr r0, _0800C960
	ldr r1, _0800C964
	ldr r2, _0800C968
	bl CpuSet
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #8
	adds r1, r5, r0
	ldr r2, _0800C96C
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C950: .4byte 0x08DFAFF4
_0800C954: .4byte gUnk_808B860
_0800C958: .4byte 0x02003C00
_0800C95C: .4byte 0x0400000F
_0800C960: .4byte gUnk_808C1C0
_0800C964: .4byte 0x02000000
_0800C968: .4byte 0x04000020
_0800C96C: .4byte 0x01000010

	THUMB_FUNC_START sub_800C970
sub_800C970: @ 0x0800C970
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r7, #0
_0800C97E:
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _0800CC8C
	adds r0, r0, r1
	lsls r1, r7, #6
	ldr r4, _0800CC90
	adds r1, r1, r4
	ldr r2, _0800CC94
	bl CpuSet
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x13
	bls _0800C97E
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800CC98
	adds r1, r4, r0
	ldr r2, _0800CC9C
	mov r0, sp
	bl CpuSet
	movs r4, #0xf0
	lsls r4, r4, #7
	movs r0, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_08007FEC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #2
	movs r1, #2
	adds r2, r4, #0
	bl sub_08007FEC
	movs r1, #0xff
	lsls r1, r1, #8
	mov r8, r1
	ands r1, r0
	mov r8, r1
	movs r7, #0
	adds r6, r4, #0
_0800C9DC:
	adds r4, r7, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800CCA0
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0x1d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #6
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x1f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #7
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #8
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #9
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x5d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x5f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r6, #0
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _0800C9DC
	movs r7, #0
	movs r0, #0xf0
	lsls r0, r0, #7
	mov sl, r0
_0800CA64:
	adds r6, r7, #4
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r5, _0800CCA0
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0x7d
	mov r1, r8
	orrs r3, r1
	adds r0, r6, #0
	movs r1, #0xc
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x7f
	mov r0, r8
	orrs r3, r0
	adds r0, r6, #0
	movs r1, #0xd
	mov r2, sl
	bl sub_800800C
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r3, [r5]
	adds r3, #0x8d
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x8f
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xd
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xb1
	mov r1, r8
	orrs r3, r1
	adds r0, r6, #0
	movs r1, #0x11
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xb3
	mov r0, r8
	orrs r3, r0
	adds r0, r6, #0
	movs r1, #0x12
	mov r2, sl
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _0800CA64
	movs r7, #0
	movs r5, #0xf0
	lsls r5, r5, #7
_0800CAF2:
	adds r4, r7, #0
	adds r4, #0xa
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #6
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #7
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #8
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #9
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0800CAF2
	movs r7, #0
	movs r5, #0xf0
	lsls r5, r5, #7
_0800CB52:
	adds r4, r7, #0
	adds r4, #0xc
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #0xc
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xd
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _0800CB52
	movs r7, #0
	movs r6, #0xf0
	lsls r6, r6, #7
_0800CB82:
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800CCA0
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0x29
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #6
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x2b
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #7
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x49
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #8
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x4b
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #9
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x69
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x6b
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r6, #0
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #9
	bls _0800CB82
	movs r7, #0
	movs r6, #0xf0
	lsls r6, r6, #7
_0800CC0A:
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800CCA0
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0xc1
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xe
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xc3
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r6, #0
	bl sub_800800C
	adds r4, r7, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r3, [r5]
	adds r3, #0x9d
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xe
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x9f
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r6, #0
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #9
	bls _0800CC0A
	ldr r0, _0800CCA4
	ldr r1, _0800CCA8
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CC8C: .4byte gUnk_808C6F0
_0800CC90: .4byte 0x02007C00
_0800CC94: .4byte 0x0400000F
_0800CC98: .4byte 0xFFFFC800
_0800CC9C: .4byte 0x01000010
_0800CCA0: .4byte 0x08DF811C
_0800CCA4: .4byte 0x02004420
_0800CCA8: .4byte 0x080AE800

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
	ldr r0, _0800CD6C
	adds r4, r4, r0
	ldr r7, _0800CD70
	ldr r6, _0800CD74
	ldr r0, _0800CD78
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
_0800CE60: .4byte gUnk_808E310
_0800CE64: .4byte 0x0200C420
_0800CE68: .4byte gUnk_808E330
_0800CE6C: .4byte gUnk_808E350
_0800CE70: .4byte 0x080AEB00
_0800CE74: .4byte 0x00000801
_0800CE78: .4byte 0x080AEB30
_0800CE7C: .4byte 0x00001801
_0800CE80: .4byte 0x08DFA5B8
_0800CE84: .4byte gLanguage
_0800CE88: .4byte 0x0200C400
_0800CE8C: .4byte 0x04000020
_0800CE90: .4byte 0x08DFA3A8
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
_0800CFB4: .4byte 0x0808E820
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
	bl sub_8008BC0
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
	bl sub_8008B44
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
_0800D918: .4byte 0x0800D91C
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
	bl sub_8045658
	movs r0, #0x37
	bl sub_8034F60
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
_0800DAE8: .4byte 0x0800DD1D
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
	bl sub_8034F60
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
	bl sub_8034F60
	ldr r0, _0800DB98
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800DB98: .4byte 0x080454C9

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
	bl sub_8034F60
	ldr r0, _0800DBE8
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800DBE8: .4byte 0x080454C9

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
	bl sub_8034F60
	ldr r0, _0800DC38
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800DC38: .4byte 0x080454C9

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
	bl sub_8034F60
	ldr r0, _0800DC88
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800DC88: .4byte 0x080454C9

	THUMB_FUNC_START sub_800DC8C
sub_800DC8C: @ 0x0800DC8C
	push {lr}
	movs r0, #0x37
	bl sub_8034F60
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
	bl sub_805B51C
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
	bl sub_805B51C
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
	bl sub_805B144
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
	bl sub_805B0D4
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
	bl sub_805B144
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
	bl sub_805D150
	add r7, sp, #8
	ldr r1, _0800E070
	adds r0, r7, #0
	movs r2, #0x10
	bl sub_805D150
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

	THUMB_FUNC_START sub_800E0D4
sub_800E0D4: @ 0x0800E0D4
	push {lr}
	bl sub_803FD14
	ldr r1, _0800E0F0
	ldr r0, _0800E0F4
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_0800E0F0: .4byte 0x08DFF600
_0800E0F4: .4byte 0x02021C00

	THUMB_FUNC_START sub_800E0F8
sub_800E0F8: @ 0x0800E0F8
	push {lr}
	bl sub_803FD14
	ldr r1, _0800E114
	ldr r0, _0800E118
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_0800E114: .4byte 0x08DFF55C
_0800E118: .4byte 0x02021C00

	THUMB_FUNC_START sub_800E11C
sub_800E11C: @ 0x0800E11C
	push {r4, r5, r6, lr}
	ldr r2, _0800E168
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800E16C
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl CopyCard
	ldr r0, [r4]
	bl ClearZone
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E168: .4byte 0x02021C00
_0800E16C: .4byte gZones

	THUMB_FUNC_START sub_800E170
sub_800E170: @ 0x0800E170
	push {r4, r5, r6, lr}
	ldr r2, _0800E1BC
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800E1C0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl CopyCard
	ldr r0, [r4]
	bl ClearZone
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E1BC: .4byte 0x02021C00
_0800E1C0: .4byte gZones

	THUMB_FUNC_START sub_800E1C4
sub_800E1C4: @ 0x0800E1C4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r2, _0800E224
	ldrb r1, [r2, #2]
	lsrs r0, r1, #4
	mov r8, r0
	movs r0, #0xf
	adds r5, r0, #0
	ands r5, r1
	ldrb r1, [r2, #3]
	lsrs r2, r1, #4
	ands r0, r1
	ldr r6, _0800E228
	lsls r4, r2, #2
	adds r4, r4, r2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	ldr r0, [r4]
	mov r1, r8
	lsls r4, r1, #2
	add r4, r8
	adds r4, r4, r5
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r1, [r4]
	bl CopyCard
	ldr r0, [r4]
	bl ClearZone
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E224: .4byte 0x02021C00
_0800E228: .4byte gZones

	THUMB_FUNC_START sub_800E22C
sub_800E22C: @ 0x0800E22C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r2, _0800E28C
	ldrb r1, [r2, #2]
	lsrs r0, r1, #4
	mov r8, r0
	movs r0, #0xf
	adds r5, r0, #0
	ands r5, r1
	ldrb r1, [r2, #3]
	lsrs r2, r1, #4
	ands r0, r1
	ldr r6, _0800E290
	lsls r4, r2, #2
	adds r4, r4, r2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	ldr r0, [r4]
	mov r1, r8
	lsls r4, r1, #2
	add r4, r8
	adds r4, r4, r5
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r1, [r4]
	bl CopyCard
	ldr r0, [r4]
	bl ClearZone
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E28C: .4byte 0x02021C00
_0800E290: .4byte gZones

	THUMB_FUNC_START sub_800E294
sub_800E294: @ 0x0800E294
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	ldr r2, _0800E31C
	ldrb r0, [r2, #2]
	lsrs r1, r0, #4
	mov sl, r1
	movs r1, #0xf
	mov r8, r1
	mov r3, r8
	ands r3, r0
	mov r8, r3
	ldrb r0, [r2, #3]
	lsrs r3, r0, #4
	mov sb, r3
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #4]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r6, _0800E320
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	mov r0, sb
	lsls r4, r0, #2
	add r4, sb
	adds r4, r4, r5
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	ldr r0, [r4]
	mov r1, sl
	lsls r4, r1, #2
	add r4, sl
	add r4, r8
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r1, [r4]
	bl CopyCard
	ldr r0, [r4]
	bl ClearZone
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E31C: .4byte 0x02021C00
_0800E320: .4byte gZones

	THUMB_FUNC_START sub_800E324
sub_800E324: @ 0x0800E324
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	ldr r2, _0800E3AC
	ldrb r0, [r2, #2]
	lsrs r1, r0, #4
	mov sl, r1
	movs r1, #0xf
	mov r8, r1
	mov r3, r8
	ands r3, r0
	mov r8, r3
	ldrb r0, [r2, #3]
	lsrs r3, r0, #4
	mov sb, r3
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #4]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r6, _0800E3B0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	mov r0, sb
	lsls r4, r0, #2
	add r4, sb
	adds r4, r4, r5
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	ldr r0, [r4]
	mov r1, sl
	lsls r4, r1, #2
	add r4, sl
	add r4, r8
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r1, [r4]
	bl CopyCard
	ldr r0, [r4]
	bl ClearZone
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E3AC: .4byte 0x02021C00
_0800E3B0: .4byte gZones

	THUMB_FUNC_START sub_800E3B4
sub_800E3B4: @ 0x0800E3B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0800E458
	ldrb r0, [r2, #2]
	lsrs r7, r0, #4
	movs r1, #0xf
	mov r8, r1
	mov r3, r8
	ands r3, r0
	mov r8, r3
	ldrb r0, [r2, #3]
	lsrs r3, r0, #4
	mov sl, r3
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #4]
	lsrs r3, r0, #4
	mov sb, r3
	adds r4, r1, #0
	ands r4, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800E45C
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	mov r3, sl
	lsls r4, r3, #2
	add r4, sl
	adds r4, r4, r6
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	ldr r0, [r4]
	lsls r4, r7, #2
	adds r4, r4, r7
	add r4, r8
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl CopyCard
	ldr r0, [r4]
	bl ClearZone
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E458: .4byte 0x02021C00
_0800E45C: .4byte gZones

	THUMB_FUNC_START sub_800E460
sub_800E460: @ 0x0800E460
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0800E504
	ldrb r0, [r2, #2]
	lsrs r7, r0, #4
	movs r1, #0xf
	mov r8, r1
	mov r3, r8
	ands r3, r0
	mov r8, r3
	ldrb r0, [r2, #3]
	lsrs r3, r0, #4
	mov sl, r3
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #4]
	lsrs r3, r0, #4
	mov sb, r3
	adds r4, r1, #0
	ands r4, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800E508
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	mov r3, sl
	lsls r4, r3, #2
	add r4, sl
	adds r4, r4, r6
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	ldr r0, [r4]
	lsls r4, r7, #2
	adds r4, r4, r7
	add r4, r8
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl CopyCard
	ldr r0, [r4]
	bl ClearZone
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E504: .4byte 0x02021C00
_0800E508: .4byte gZones

	THUMB_FUNC_START sub_800E50C
sub_800E50C: @ 0x0800E50C
	ldr r0, _0800E544
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r3, _0800E548
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r3, [r1]
	ldrb r2, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3, #5]
	ldr r3, [r1]
	ldrb r0, [r3, #5]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r3, #5]
	ldr r2, [r1]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	bx lr
	.align 2, 0
_0800E544: .4byte 0x02021C00
_0800E548: .4byte gZones

	THUMB_FUNC_START sub_800E54C
sub_800E54C: @ 0x0800E54C
	ldr r0, _0800E584
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r3, _0800E588
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r3, [r1]
	ldrb r2, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3, #5]
	ldr r3, [r1]
	ldrb r0, [r3, #5]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r3, #5]
	ldr r2, [r1]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	bx lr
	.align 2, 0
_0800E584: .4byte 0x02021C00
_0800E588: .4byte gZones

	THUMB_FUNC_START sub_800E58C
sub_800E58C: @ 0x0800E58C
	push {r4, lr}
	ldr r0, _0800E5DC
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldr r0, _0800E5E0
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r3, [r1]
	ldrb r2, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3, #5]
	ldr r3, [r1]
	ldrb r0, [r3, #5]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r3, #5]
	ldr r2, [r1]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	movs r0, #4
	subs r0, r0, r4
	bl sub_803F8E0
	bl sub_803F29C
	bl sub_803F224
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E5DC: .4byte 0x02021C00
_0800E5E0: .4byte gZones

	THUMB_FUNC_START sub_800E5E4
sub_800E5E4: @ 0x0800E5E4
	push {r4, lr}
	ldr r0, _0800E634
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldr r0, _0800E638
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r3, [r1]
	ldrb r2, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3, #5]
	ldr r3, [r1]
	ldrb r0, [r3, #5]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r3, #5]
	ldr r2, [r1]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	movs r0, #4
	subs r0, r0, r4
	bl sub_803F8E0
	bl sub_803F29C
	bl sub_803F224
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E634: .4byte 0x02021C00
_0800E638: .4byte gZones

	THUMB_FUNC_START sub_800E63C
sub_800E63C: @ 0x0800E63C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r2, _0800E6B0
	ldrb r1, [r2, #2]
	lsrs r3, r1, #4
	movs r0, #0xf
	adds r5, r0, #0
	ands r5, r1
	ldrb r1, [r2, #3]
	lsrs r6, r1, #4
	ands r0, r1
	ldr r1, _0800E6B4
	mov r8, r1
	lsls r2, r3, #2
	adds r2, r2, r3
	adds r2, r2, r5
	lsls r2, r2, #2
	add r2, r8
	ldr r4, [r2]
	ldrb r3, [r4, #5]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r3
	strb r1, [r4, #5]
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r4, #0x10
	orrs r1, r4
	strb r1, [r3, #5]
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3, #5]
	lsls r1, r6, #2
	adds r1, r1, r6
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, r8
	ldr r2, [r1]
	ldrb r1, [r2, #5]
	orrs r1, r4
	strb r1, [r2, #5]
	movs r1, #4
	subs r1, r1, r5
	bl sub_803F908
	bl sub_803F29C
	bl sub_803F224
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6B0: .4byte 0x02021C00
_0800E6B4: .4byte gZones

	THUMB_FUNC_START sub_800E6B8
sub_800E6B8: @ 0x0800E6B8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r2, _0800E72C
	ldrb r1, [r2, #2]
	lsrs r3, r1, #4
	movs r0, #0xf
	adds r5, r0, #0
	ands r5, r1
	ldrb r1, [r2, #3]
	lsrs r6, r1, #4
	ands r0, r1
	ldr r1, _0800E730
	mov r8, r1
	lsls r2, r3, #2
	adds r2, r2, r3
	adds r2, r2, r5
	lsls r2, r2, #2
	add r2, r8
	ldr r4, [r2]
	ldrb r3, [r4, #5]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r3
	strb r1, [r4, #5]
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r4, #0x10
	orrs r1, r4
	strb r1, [r3, #5]
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3, #5]
	lsls r1, r6, #2
	adds r1, r1, r6
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, r8
	ldr r2, [r1]
	ldrb r1, [r2, #5]
	orrs r1, r4
	strb r1, [r2, #5]
	movs r1, #4
	subs r1, r1, r5
	bl sub_803F908
	bl sub_803F29C
	bl sub_803F224
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E72C: .4byte 0x02021C00
_0800E730: .4byte gZones

	THUMB_FUNC_START sub_800E734
sub_800E734: @ 0x0800E734
	push {r4, r5, lr}
	ldr r0, _0800E788
	ldrb r0, [r0, #2]
	lsrs r5, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldr r0, _0800E78C
	lsls r2, r5, #2
	adds r2, r2, r5
	adds r2, r2, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, _0800E790
	strb r5, [r1, #2]
	strb r4, [r1, #3]
	ldr r0, [r2]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	bl sub_80581DC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E788: .4byte 0x02021C00
_0800E78C: .4byte gZones
_0800E790: .4byte gUnk020245A0

	THUMB_FUNC_START sub_800E794
sub_800E794: @ 0x0800E794
	push {r4, r5, lr}
	ldr r0, _0800E7E8
	ldrb r0, [r0, #2]
	lsrs r5, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldr r0, _0800E7EC
	lsls r2, r5, #2
	adds r2, r2, r5
	adds r2, r2, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, _0800E7F0
	strb r5, [r1, #2]
	strb r4, [r1, #3]
	ldr r0, [r2]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	bl sub_80581DC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E7E8: .4byte 0x02021C00
_0800E7EC: .4byte gZones
_0800E7F0: .4byte gUnk020245A0

	THUMB_FUNC_START sub_800E7F4
sub_800E7F4: @ 0x0800E7F4
	push {r4, r5, lr}
	ldr r0, _0800E848
	ldrb r0, [r0, #2]
	lsrs r5, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldr r0, _0800E84C
	lsls r2, r5, #2
	adds r2, r2, r5
	adds r2, r2, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, _0800E850
	strb r5, [r1, #2]
	strb r4, [r1, #3]
	ldr r0, [r2]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	bl sub_80581DC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E848: .4byte 0x02021C00
_0800E84C: .4byte gZones
_0800E850: .4byte gUnk020245A0

	THUMB_FUNC_START sub_800E854
sub_800E854: @ 0x0800E854
	push {r4, r5, lr}
	ldr r0, _0800E8A8
	ldrb r0, [r0, #2]
	lsrs r5, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldr r0, _0800E8AC
	lsls r2, r5, #2
	adds r2, r2, r5
	adds r2, r2, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, _0800E8B0
	strb r5, [r1, #2]
	strb r4, [r1, #3]
	ldr r0, [r2]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	bl sub_80581DC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E8A8: .4byte 0x02021C00
_0800E8AC: .4byte gZones
_0800E8B0: .4byte gUnk020245A0

	THUMB_FUNC_START sub_800E8B4
sub_800E8B4: @ 0x0800E8B4
	push {r4, r5, lr}
	ldr r0, _0800E918
	ldrb r0, [r0, #2]
	lsrs r5, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldr r0, _0800E91C
	lsls r2, r5, #2
	adds r2, r2, r5
	adds r2, r2, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r3, [r2]
	ldrb r1, [r3, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r2]
	ldrb r0, [r3, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, _0800E920
	ldr r0, [r2]
	ldrh r0, [r0]
	strh r0, [r1]
	strb r5, [r1, #2]
	strb r4, [r1, #3]
	bl ActivateMonEffect
	ldr r0, _0800E924
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800E910
	movs r0, #4
	bl sub_8040540
_0800E910:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E918: .4byte 0x02021C00
_0800E91C: .4byte gZones
_0800E920: .4byte gMonEffect
_0800E924: .4byte gDuel+0x100

	THUMB_FUNC_START sub_800E928
sub_800E928: @ 0x0800E928
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800E92C
sub_800E92C: @ 0x0800E92C
	push {lr}
	ldr r0, _0800E950
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0800E954
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	pop {r0}
	bx r0
	.align 2, 0
_0800E950: .4byte 0x02021C00
_0800E954: .4byte gZones

	THUMB_FUNC_START sub_800E958
sub_800E958: @ 0x0800E958
	ldr r0, _0800E984
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0800E988
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0]
	ldrb r1, [r3, #5]
	movs r2, #2
	orrs r1, r2
	strb r1, [r3, #5]
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	bx lr
	.align 2, 0
_0800E984: .4byte 0x02021C00
_0800E988: .4byte gZones

	THUMB_FUNC_START sub_800E98C
sub_800E98C: @ 0x0800E98C
	push {lr}
	bl sub_800E63C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800E998
sub_800E998: @ 0x0800E998
	push {lr}
	bl sub_800E7F4
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800E9A4
sub_800E9A4: @ 0x0800E9A4
	push {lr}
	ldr r0, _0800E9C8
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0800E9CC
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	pop {r0}
	bx r0
	.align 2, 0
_0800E9C8: .4byte 0x02021C00
_0800E9CC: .4byte gZones

	THUMB_FUNC_START sub_800E9D0
sub_800E9D0: @ 0x0800E9D0
	ldr r0, _0800E9FC
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0800EA00
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0]
	ldrb r1, [r3, #5]
	movs r2, #2
	orrs r1, r2
	strb r1, [r3, #5]
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	bx lr
	.align 2, 0
_0800E9FC: .4byte 0x02021C00
_0800EA00: .4byte gZones

	THUMB_FUNC_START sub_800EA04
sub_800EA04: @ 0x0800EA04
	push {lr}
	bl sub_800E6B8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800EA10
sub_800EA10: @ 0x0800EA10
	push {lr}
	bl sub_800E854
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800EA1C
sub_800EA1C: @ 0x0800EA1C
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800EA20
sub_800EA20: @ 0x0800EA20
	push {r4, r5, r6, lr}
	ldr r2, _0800EA60
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800EA64
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl CopyCard
	ldr r0, [r4]
	bl ClearZone
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EA60: .4byte 0x02021C00
_0800EA64: .4byte gZones

	THUMB_FUNC_START sub_800EA68
sub_800EA68: @ 0x0800EA68
	push {r4, r5, r6, lr}
	ldr r2, _0800EAA8
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800EAAC
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl CopyCard
	ldr r0, [r4]
	bl ClearZone
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAA8: .4byte 0x02021C00
_0800EAAC: .4byte gZones

	THUMB_FUNC_START sub_800EAB0
sub_800EAB0: @ 0x0800EAB0
	push {r4, r5, r6, lr}
	ldr r2, _0800EAF0
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800EAF4
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl CopyCard
	ldr r0, [r4]
	bl ClearZone
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAF0: .4byte 0x02021C00
_0800EAF4: .4byte gZones

	THUMB_FUNC_START sub_800EAF8
sub_800EAF8: @ 0x0800EAF8
	push {r4, r5, r6, lr}
	ldr r2, _0800EB38
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800EB3C
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl CopyCard
	ldr r0, [r4]
	bl ClearZone
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EB38: .4byte 0x02021C00
_0800EB3C: .4byte gZones

	THUMB_FUNC_START sub_800EB40
sub_800EB40: @ 0x0800EB40
	push {r4, r5, r6, lr}
	ldr r1, _0800EB80
	ldrb r0, [r1, #2]
	lsrs r5, r0, #4
	movs r2, #0xf
	adds r3, r2, #0
	ands r3, r0
	ldrb r0, [r1, #3]
	lsrs r6, r0, #4
	ands r2, r0
	ldr r1, _0800EB84
	ldr r0, _0800EB88
	lsls r4, r5, #2
	adds r4, r4, r5
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	strb r5, [r1, #4]
	strb r3, [r1, #5]
	strb r6, [r1, #2]
	strb r2, [r1, #3]
	bl ActivateSpellEffect
	ldr r0, [r4]
	bl ClearZone
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EB80: .4byte 0x02021C00
_0800EB84: .4byte gUnk2024260
_0800EB88: .4byte gZones

	THUMB_FUNC_START sub_800EB8C
sub_800EB8C: @ 0x0800EB8C
	push {r4, r5, r6, lr}
	ldr r1, _0800EBCC
	ldrb r0, [r1, #2]
	lsrs r5, r0, #4
	movs r2, #0xf
	adds r3, r2, #0
	ands r3, r0
	ldrb r0, [r1, #3]
	lsrs r6, r0, #4
	ands r2, r0
	ldr r1, _0800EBD0
	ldr r0, _0800EBD4
	lsls r4, r5, #2
	adds r4, r4, r5
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	strb r5, [r1, #4]
	strb r3, [r1, #5]
	strb r6, [r1, #2]
	strb r2, [r1, #3]
	bl ActivateSpellEffect
	ldr r0, [r4]
	bl ClearZone
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EBCC: .4byte 0x02021C00
_0800EBD0: .4byte gUnk2024260
_0800EBD4: .4byte gZones

	THUMB_FUNC_START sub_800EBD8
sub_800EBD8: @ 0x0800EBD8
	push {r4, r5, r6, lr}
	ldr r2, _0800EC18
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800EC1C
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl CopyCard
	ldr r0, [r4]
	bl ClearZone
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC18: .4byte 0x02021C00
_0800EC1C: .4byte gZones

	THUMB_FUNC_START sub_800EC20
sub_800EC20: @ 0x0800EC20
	push {r4, r5, r6, lr}
	ldr r2, _0800EC60
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800EC64
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl CopyCard
	ldr r0, [r4]
	bl ClearZone
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC60: .4byte 0x02021C00
_0800EC64: .4byte gZones

	THUMB_FUNC_START sub_800EC68
sub_800EC68: @ 0x0800EC68
	push {r4, lr}
	ldr r0, _0800ECB0
	ldrb r0, [r0, #2]
	lsrs r3, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r2, _0800ECB4
	ldr r4, _0800ECB8
	lsls r0, r3, #2
	adds r0, r0, r3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r4
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r2]
	strb r3, [r2, #2]
	strb r1, [r2, #3]
	bl ActivateSpellEffect
	ldr r0, _0800ECBC
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800ECA4
	movs r0, #4
	bl sub_8040540
_0800ECA4:
	ldr r0, [r4]
	bl ClearZone
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ECB0: .4byte 0x02021C00
_0800ECB4: .4byte gUnk2024260
_0800ECB8: .4byte gZones
_0800ECBC: .4byte gDuel+0x100

	THUMB_FUNC_START sub_800ECC0
sub_800ECC0: @ 0x0800ECC0
	push {r4, lr}
	ldr r0, _0800ECF4
	ldrb r0, [r0, #2]
	lsrs r3, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r2, _0800ECF8
	ldr r0, _0800ECFC
	lsls r4, r3, #2
	adds r4, r4, r3
	adds r4, r4, r1
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r2]
	strb r3, [r2, #2]
	strb r1, [r2, #3]
	bl ActivateSpellEffect
	ldr r0, [r4]
	bl ClearZone
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ECF4: .4byte 0x02021C00
_0800ECF8: .4byte gUnk2024260
_0800ECFC: .4byte gZones

	THUMB_FUNC_START sub_800ED00
sub_800ED00: @ 0x0800ED00
	push {r4, r5, r6, lr}
	ldr r2, _0800ED40
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r5, _0800ED44
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r1, [r4]
	bl CopyCard
	ldr r0, [r4]
	bl ClearZone
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800ED40: .4byte 0x02021C00
_0800ED44: .4byte gZones

	THUMB_FUNC_START sub_800ED48
sub_800ED48: @ 0x0800ED48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r2, _0800EDEC
	ldrb r3, [r2, #2]
	lsrs r0, r3, #4
	mov r8, r0
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r3
	str r0, [sp]
	ldrb r0, [r2, #4]
	lsrs r3, r0, #4
	mov sb, r3
	adds r4, r1, #0
	ands r4, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	mov sl, r2
	adds r5, r1, #0
	ands r5, r0
	ldr r7, _0800EDF0
	mov r3, r8
	lsls r0, r3, #2
	add r0, r8
	ldr r1, [sp]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r0, r7
	ldr r0, [r6]
	ldrh r0, [r0]
	bl sub_8021D00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0800EDC0
	mov r2, sb
	lsls r0, r2, #2
	add r0, sb
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	mov r3, sl
	lsls r0, r3, #2
	add r0, sl
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
_0800EDC0:
	ldr r1, _0800EDF4
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, r8
	strb r0, [r1, #2]
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r1, #3]
	bl ActivateSpellEffect
	ldr r0, [r6]
	bl ClearZone
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EDEC: .4byte 0x02021C00
_0800EDF0: .4byte gZones
_0800EDF4: .4byte gUnk2024260

	THUMB_FUNC_START sub_800EDF8
sub_800EDF8: @ 0x0800EDF8
	push {lr}
	ldr r0, _0800EE1C
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0800EE20
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	pop {r0}
	bx r0
	.align 2, 0
_0800EE1C: .4byte 0x02021C00
_0800EE20: .4byte gZones

	THUMB_FUNC_START sub_800EE24
sub_800EE24: @ 0x0800EE24
	push {r4, r5, lr}
	ldr r4, _0800EE80
	ldr r0, [r4]
	ldr r1, _0800EE84
	movs r2, #0xfc
	bl sub_805D150
	movs r5, #0
_0800EE34:
	ldr r2, [r4]
	movs r0, #0x54
	muls r0, r5, r0
	adds r2, r2, r0
	ldr r1, _0800EE88
	adds r0, r0, r1
	adds r0, #0x52
	ldrb r0, [r0]
	movs r3, #0xa7
	lsls r3, r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	ldr r3, [r4]
	lsls r1, r5, #1
	movs r0, #0xd2
	lsls r0, r0, #1
	adds r2, r3, r0
	adds r2, r2, r1
	ldr r0, _0800EE8C
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r3, r0
	adds r1, r1, r5
	ldr r0, _0800EE90
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0800EE34
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EE80: .4byte 0x08DFF6A4
_0800EE84: .4byte gDuel
_0800EE88: .4byte 0x020240F0
_0800EE8C: .4byte gLifePoints
_0800EE90: .4byte gDuelistStatus

	THUMB_FUNC_START sub_800EE94
sub_800EE94: @ 0x0800EE94
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800EEF8
	ldr r4, _0800EEFC
	ldr r1, [r4]
	movs r2, #0xfc
	bl sub_805D150
	movs r5, #0
	ldr r0, _0800EF00
	mov ip, r0
	ldr r6, _0800EF04
_0800EEAA:
	movs r0, #0x54
	adds r1, r5, #0
	muls r1, r0, r1
	mov r7, ip
	adds r2, r1, r7
	ldr r0, [r4]
	adds r0, r0, r1
	movs r1, #0xa7
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, #0x52
	strb r0, [r2]
	lsls r1, r5, #1
	adds r2, r1, r6
	ldr r3, [r4]
	movs r7, #0xd2
	lsls r7, r7, #1
	adds r0, r3, r7
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r1, _0800EF08
	adds r1, r5, r1
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r0, r3, r2
	adds r0, r0, r5
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0800EEAA
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EEF8: .4byte gDuel
_0800EEFC: .4byte 0x08DFF6A4
_0800EF00: .4byte 0x020240F0
_0800EF04: .4byte gLifePoints
_0800EF08: .4byte gDuelistStatus

	THUMB_FUNC_START sub_800EF0C
sub_800EF0C: @ 0x0800EF0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0800EF6C
	mov ip, r0
	ands r2, r0
	movs r3, #0
	movs r4, #0
	ldr r0, _0800EF70
	ldr r1, [r0]
	ldr r5, _0800EF74
	adds r0, r1, r5
	ldrh r0, [r0]
	cmp r4, r0
	bhs _0800EF5C
	adds r5, r1, #0
	movs r1, #0xa1
	lsls r1, r1, #3
	adds r7, r5, r1
	adds r6, r0, #0
	ldr r0, _0800EF78
	mov r8, r0
_0800EF38:
	lsls r1, r4, #3
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, r3
	bls _0800EF52
	adds r3, r0, #0
	adds r0, r5, r1
	add r0, r8
	ldrh r1, [r0]
	mov r0, ip
	ands r0, r2
	adds r2, r0, #0
	orrs r2, r1
_0800EF52:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0800EF38
_0800EF5C:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800EF6C: .4byte 0xFFFF0000
_0800EF70: .4byte 0x08DFF6A4
_0800EF74: .4byte 0x00002294
_0800EF78: .4byte 0x00000504

	THUMB_FUNC_START sub_800EF7C
sub_800EF7C: @ 0x0800EF7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _0800EFFC
	mov ip, r0
	ands r3, r0
	movs r4, #0
	movs r2, #0
	ldr r1, _0800F000
	ldr r5, [r1]
	ldr r6, _0800F004
	adds r0, r5, r6
	ldrh r0, [r0]
	mov sl, r1
	cmp r2, r0
	bhs _0800EFD6
	movs r1, #0xa1
	lsls r1, r1, #3
	adds r7, r5, r1
	adds r6, r0, #0
	ldr r0, _0800F008
	mov r8, r0
_0800EFB2:
	lsls r1, r2, #3
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, r4
	bls _0800EFCC
	adds r4, r0, #0
	adds r0, r5, r1
	add r0, r8
	ldrh r1, [r0]
	mov r0, ip
	ands r0, r3
	adds r3, r0, #0
	orrs r3, r1
_0800EFCC:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r6
	blo _0800EFB2
_0800EFD6:
	mov r1, sl
	ldr r0, [r1]
	mov r5, sb
	lsls r2, r5, #4
	adds r1, r0, r2
	ldr r6, _0800F00C
	adds r1, r1, r6
	strh r3, [r1]
	ldr r1, _0800F010
	adds r0, r0, r1
	adds r0, r0, r2
	str r4, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EFFC: .4byte 0xFFFF0000
_0800F000: .4byte 0x08DFF6A4
_0800F004: .4byte 0x00002294
_0800F008: .4byte 0x00000504
_0800F00C: .4byte 0x000022A8
_0800F010: .4byte 0x000022AC

	THUMB_FUNC_START sub_800F014
sub_800F014: @ 0x0800F014
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r2, #0
	ldr r1, _0800F0B8
	ldr r0, [r1]
	ldr r3, _0800F0BC
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r2, r0
	bhs _0800F0EE
	ldr r0, _0800F0C0
	mov sl, r0
_0800F034:
	movs r7, #0
	adds r1, r2, #1
	str r1, [sp]
	lsls r2, r2, #3
	mov r8, r2
	movs r2, #0
	mov ip, r2
_0800F042:
	ldr r3, _0800F0B8
	ldr r0, [r3]
	movs r2, #0xa1
	lsls r2, r2, #3
	adds r1, r0, r2
	add r1, r8
	add r0, sl
	add r0, ip
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bls _0800F0CC
	movs r4, #2
	cmp r4, r7
	bls _0800F08A
	mov sb, r3
	ldr r6, _0800F0C4
	movs r5, #0x10
_0800F066:
	mov r0, sb
	ldr r1, [r0]
	lsls r3, r4, #4
	adds r2, r1, r3
	adds r0, r1, r5
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r2, r2, r6
	strh r0, [r2]
	add r1, sl
	adds r3, r1, r3
	adds r1, r1, r5
	ldr r0, [r1]
	str r0, [r3]
	subs r5, #0x10
	subs r4, #1
	cmp r4, r7
	bhi _0800F066
_0800F08A:
	ldr r2, _0800F0B8
	ldr r1, [r2]
	mov r3, ip
	adds r2, r1, r3
	mov r3, r8
	adds r0, r1, r3
	ldr r3, _0800F0C8
	adds r0, r0, r3
	ldrh r0, [r0]
	ldr r3, _0800F0C4
	adds r2, r2, r3
	strh r0, [r2]
	mov r0, sl
	adds r2, r1, r0
	add r2, ip
	movs r3, #0xa1
	lsls r3, r3, #3
	adds r1, r1, r3
	add r1, r8
	ldr r0, [r1]
	str r0, [r2]
	b _0800F0DA
	.align 2, 0
_0800F0B8: .4byte 0x08DFF6A4
_0800F0BC: .4byte 0x00002294
_0800F0C0: .4byte 0x000022A4
_0800F0C4: .4byte 0x000022A0
_0800F0C8: .4byte 0x00000504
_0800F0CC:
	cmp r1, r0
	beq _0800F0DA
	movs r0, #0x10
	add ip, r0
	adds r7, #1
	cmp r7, #2
	bls _0800F042
_0800F0DA:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	ldr r3, _0800F100
	ldr r0, [r3]
	ldr r1, _0800F104
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r2, r0
	blo _0800F034
_0800F0EE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F100: .4byte 0x08DFF6A4
_0800F104: .4byte 0x00002294

	THUMB_FUNC_START sub_800F108
sub_800F108: @ 0x0800F108
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800F148
	ldr r1, [r0]
	ldr r2, _0800F14C
	adds r1, r1, r2
	movs r2, #0
	strh r2, [r1]
	movs r3, #0
	mov ip, r0
	ldr r7, _0800F150
	movs r4, #0
	ldr r6, _0800F154
	movs r5, #0xa1
	lsls r5, r5, #3
_0800F124:
	mov r0, ip
	ldr r1, [r0]
	lsls r2, r3, #3
	adds r0, r1, r2
	adds r0, r0, r7
	strh r4, [r0]
	adds r1, r1, r5
	adds r1, r1, r2
	str r4, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r6
	bls _0800F124
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F148: .4byte 0x08DFF6A4
_0800F14C: .4byte 0x00002294
_0800F150: .4byte 0x00000504
_0800F154: .4byte 0x000003B1

	THUMB_FUNC_START sub_800F158
sub_800F158: @ 0x0800F158
	push {r4, r5, r6, r7, lr}
	movs r0, #0
	ldr r1, _0800F190
	mov ip, r1
	ldr r7, _0800F194
	movs r5, #0
	ldr r6, _0800F198
_0800F166:
	movs r3, #0
	adds r4, r0, #1
	lsls r2, r0, #4
_0800F16C:
	mov r0, ip
	ldr r1, [r0]
	adds r0, r1, r2
	adds r0, r0, r7
	strh r5, [r0]
	adds r1, r1, r6
	adds r1, r1, r2
	str r5, [r1]
	adds r2, #8
	adds r3, #1
	cmp r3, #1
	bls _0800F16C
	adds r0, r4, #0
	cmp r0, #2
	bls _0800F166
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F190: .4byte 0x08DFF6A4
_0800F194: .4byte 0x000022A0
_0800F198: .4byte 0x000022A4

	THUMB_FUNC_START sub_800F19C
sub_800F19C: @ 0x0800F19C
	push {r4, r5, r6, r7, lr}
	ldr r1, _0800F1DC
	ands r2, r1
	movs r3, #0
	movs r6, #0
	ldr r0, _0800F1E0
	mov ip, r1
	ldr r4, [r0]
	ldr r0, _0800F1E4
	adds r5, r4, r0
	ldr r7, _0800F1E8
_0800F1B2:
	ldr r0, [r5]
	cmp r0, r3
	bls _0800F1C6
	adds r3, r0, #0
	adds r0, r4, r7
	ldrh r1, [r0]
	mov r0, ip
	ands r0, r2
	adds r2, r0, #0
	orrs r2, r1
_0800F1C6:
	adds r4, #0x10
	adds r5, #0x10
	adds r6, #1
	cmp r6, #2
	bls _0800F1B2
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800F1DC: .4byte 0xFFFF0000
_0800F1E0: .4byte 0x08DFF6A4
_0800F1E4: .4byte 0x000022AC
_0800F1E8: .4byte 0x000022A0

	THUMB_FUNC_START sub_800F1EC
sub_800F1EC: @ 0x0800F1EC
	push {lr}
	ldr r0, _0800F228
	ldr r1, [r0]
	ldr r2, _0800F22C
	adds r0, r1, r2
	movs r2, #0
	str r2, [r0]
	ldr r3, _0800F230
	adds r0, r1, r3
	str r2, [r0]
	ldr r2, _0800F234
	adds r0, r1, r2
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, _0800F238
	ldrh r0, [r0]
	ldr r3, _0800F23C
	adds r1, r1, r3
	strh r0, [r1]
	ldr r1, _0800F240
	ldr r0, _0800F244
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_0800F228: .4byte 0x08DFF6A4
_0800F22C: .4byte 0x00002298
_0800F230: .4byte 0x0000229C
_0800F234: .4byte 0x00002294
_0800F238: .4byte 0x02021BF8
_0800F23C: .4byte 0x00000504
_0800F240: .4byte 0x08DFF6A8
_0800F244: .4byte 0x02021C00

	THUMB_FUNC_START sub_800F248
sub_800F248: @ 0x0800F248
	push {r4, lr}
	ldr r1, _0800F284
	ldr r0, _0800F288
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _0800F28C
	ldr r2, [r0]
	ldr r0, _0800F290
	adds r3, r2, r0
	ldrh r0, [r3]
	lsls r0, r0, #3
	movs r4, #0xa1
	lsls r4, r4, #3
	adds r1, r2, r4
	adds r1, r1, r0
	ldr r0, _0800F294
	adds r2, r2, r0
	ldr r0, [r2]
	str r0, [r1]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F284: .4byte 0x08DFF74C
_0800F288: .4byte 0x02021C00
_0800F28C: .4byte 0x08DFF6A4
_0800F290: .4byte 0x00002294
_0800F294: .4byte 0x00002298

	THUMB_FUNC_START sub_800F298
sub_800F298: @ 0x0800F298
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0800F2E8
	ldrb r0, [r0, #2]
	lsrs r7, r0, #4
	movs r1, #0xf
	mov r8, r1
	ands r1, r0
	mov r8, r1
	ldr r0, _0800F2EC
	mov sb, r0
	lsls r6, r1, #2
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r5, r0, #2
	adds r0, r6, r5
	add r0, sb
	ldr r0, [r0]
	ldrh r4, [r0]
	adds r0, r4, #0
	bl SetCardInfo
	ldr r0, _0800F2F0
	ldrb r0, [r0, #0x1a]
	cmp r0, #2
	beq _0800F2D2
	b _0800F448
_0800F2D2:
	adds r0, r4, #0
	bl sub_8045390
	cmp r0, #1
	beq _0800F350
	cmp r0, #1
	bgt _0800F2F4
	cmp r0, #0
	beq _0800F2FE
	b _0800F3C8
	.align 2, 0
_0800F2E8: .4byte 0x02021C00
_0800F2EC: .4byte gZones
_0800F2F0: .4byte gCardInfo
_0800F2F4:
	cmp r0, #2
	beq _0800F36C
	cmp r0, #3
	beq _0800F388
	b _0800F3C8
_0800F2FE:
	adds r0, r4, #0
	bl sub_802061C
	cmp r0, #0
	beq _0800F334
	mov r1, sb
	adds r0, r6, r1
	adds r0, r5, r0
	adds r1, r4, #0
	bl NumCardInRow
	cmp r0, #1
	bgt _0800F334
	ldr r0, _0800F328
	ldr r0, [r0]
	ldr r1, _0800F32C
	adds r0, r0, r1
	ldr r1, _0800F330
	str r1, [r0]
	b _0800F3E0
	.align 2, 0
_0800F328: .4byte 0x08DFF6A4
_0800F32C: .4byte 0x00002298
_0800F330: .4byte 0x7EDE89FE
_0800F334:
	ldr r0, _0800F344
	ldr r0, [r0]
	ldr r1, _0800F348
	adds r0, r0, r1
	ldr r1, _0800F34C
	str r1, [r0]
	b _0800F3E0
	.align 2, 0
_0800F344: .4byte 0x08DFF6A4
_0800F348: .4byte 0x00002298
_0800F34C: .4byte 0x7EE0ACDF
_0800F350:
	ldr r0, _0800F360
	ldr r0, [r0]
	ldr r1, _0800F364
	adds r0, r0, r1
	ldr r1, _0800F368
	str r1, [r0]
	b _0800F3E0
	.align 2, 0
_0800F360: .4byte 0x08DFF6A4
_0800F364: .4byte 0x00002298
_0800F368: .4byte 0x7EE4F29F
_0800F36C:
	ldr r0, _0800F37C
	ldr r0, [r0]
	ldr r1, _0800F380
	adds r0, r0, r1
	ldr r1, _0800F384
	str r1, [r0]
	b _0800F3E0
	.align 2, 0
_0800F37C: .4byte 0x08DFF6A4
_0800F380: .4byte 0x00002298
_0800F384: .4byte 0x7EE7157F
_0800F388:
	adds r0, r4, #0
	bl IsGodCard
	cmp r0, #1
	bne _0800F3AC
	ldr r0, _0800F3A0
	ldr r0, [r0]
	ldr r1, _0800F3A4
	adds r0, r0, r1
	ldr r1, _0800F3A8
	str r1, [r0]
	b _0800F3E0
	.align 2, 0
_0800F3A0: .4byte 0x08DFF6A4
_0800F3A4: .4byte 0x00002298
_0800F3A8: .4byte 0x7EDE89FF
_0800F3AC:
	ldr r0, _0800F3BC
	ldr r0, [r0]
	ldr r1, _0800F3C0
	adds r0, r0, r1
	ldr r1, _0800F3C4
	str r1, [r0]
	b _0800F3E0
	.align 2, 0
_0800F3BC: .4byte 0x08DFF6A4
_0800F3C0: .4byte 0x00002298
_0800F3C4: .4byte 0x7EE9385F
_0800F3C8:
	ldr r0, _0800F3D4
	ldr r0, [r0]
	ldr r1, _0800F3D8
	adds r0, r0, r1
	ldr r1, _0800F3DC
	b _0800F452
	.align 2, 0
_0800F3D4: .4byte 0x08DFF6A4
_0800F3D8: .4byte 0x00002298
_0800F3DC: .4byte 0x7EDE89F9
_0800F3E0:
	ldr r4, _0800F42C
	ldr r0, _0800F430
	lsls r1, r7, #2
	adds r1, r1, r7
	add r1, r8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _0800F434
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _0800F438
	ldr r2, [r0]
	ldr r0, _0800F43C
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r4, _0800F440
	adds r0, r0, r4
	ldr r3, _0800F444
	ldrh r1, [r3, #0x12]
	subs r0, r0, r1
	str r0, [r2]
	adds r0, r0, r4
	ldrh r1, [r3, #0x14]
	subs r0, r0, r1
	str r0, [r2]
	b _0800F454
	.align 2, 0
_0800F42C: .4byte gStatMod
_0800F430: .4byte gZones
_0800F434: .4byte gDuel
_0800F438: .4byte 0x08DFF6A4
_0800F43C: .4byte 0x00002298
_0800F440: .4byte 0x0000FFFE
_0800F444: .4byte gCardInfo
_0800F448:
	ldr r0, _0800F460
	ldr r0, [r0]
	ldr r1, _0800F464
	adds r0, r0, r1
	ldr r1, _0800F468
_0800F452:
	str r1, [r0]
_0800F454:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F460: .4byte 0x08DFF6A4
_0800F464: .4byte 0x00002298
_0800F468: .4byte 0x7EE2CFBF

	THUMB_FUNC_START sub_800F46C
sub_800F46C: @ 0x0800F46C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0800F4BC
	ldrb r0, [r0, #2]
	lsrs r7, r0, #4
	movs r1, #0xf
	mov r8, r1
	ands r1, r0
	mov r8, r1
	ldr r0, _0800F4C0
	mov sb, r0
	lsls r6, r1, #2
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r5, r0, #2
	adds r0, r6, r5
	add r0, sb
	ldr r0, [r0]
	ldrh r4, [r0]
	adds r0, r4, #0
	bl SetCardInfo
	ldr r0, _0800F4C4
	ldrb r0, [r0, #0x1a]
	cmp r0, #2
	beq _0800F4A6
	b _0800F61C
_0800F4A6:
	adds r0, r4, #0
	bl sub_8045390
	cmp r0, #1
	beq _0800F524
	cmp r0, #1
	bgt _0800F4C8
	cmp r0, #0
	beq _0800F4D2
	b _0800F59C
	.align 2, 0
_0800F4BC: .4byte 0x02021C00
_0800F4C0: .4byte gZones
_0800F4C4: .4byte gCardInfo
_0800F4C8:
	cmp r0, #2
	beq _0800F540
	cmp r0, #3
	beq _0800F55C
	b _0800F59C
_0800F4D2:
	adds r0, r4, #0
	bl sub_802061C
	cmp r0, #0
	beq _0800F508
	mov r1, sb
	adds r0, r6, r1
	adds r0, r5, r0
	adds r1, r4, #0
	bl NumCardInRow
	cmp r0, #1
	bgt _0800F508
	ldr r0, _0800F4FC
	ldr r0, [r0]
	ldr r1, _0800F500
	adds r0, r0, r1
	ldr r1, _0800F504
	str r1, [r0]
	b _0800F5B4
	.align 2, 0
_0800F4FC: .4byte 0x08DFF6A4
_0800F500: .4byte 0x00002298
_0800F504: .4byte 0x7EDE89FE
_0800F508:
	ldr r0, _0800F518
	ldr r0, [r0]
	ldr r1, _0800F51C
	adds r0, r0, r1
	ldr r1, _0800F520
	str r1, [r0]
	b _0800F5B4
	.align 2, 0
_0800F518: .4byte 0x08DFF6A4
_0800F51C: .4byte 0x00002298
_0800F520: .4byte 0x7EE0ACDF
_0800F524:
	ldr r0, _0800F534
	ldr r0, [r0]
	ldr r1, _0800F538
	adds r0, r0, r1
	ldr r1, _0800F53C
	str r1, [r0]
	b _0800F5B4
	.align 2, 0
_0800F534: .4byte 0x08DFF6A4
_0800F538: .4byte 0x00002298
_0800F53C: .4byte 0x7EE4F29F
_0800F540:
	ldr r0, _0800F550
	ldr r0, [r0]
	ldr r1, _0800F554
	adds r0, r0, r1
	ldr r1, _0800F558
	str r1, [r0]
	b _0800F5B4
	.align 2, 0
_0800F550: .4byte 0x08DFF6A4
_0800F554: .4byte 0x00002298
_0800F558: .4byte 0x7EE7157F
_0800F55C:
	adds r0, r4, #0
	bl IsGodCard
	cmp r0, #1
	bne _0800F580
	ldr r0, _0800F574
	ldr r0, [r0]
	ldr r1, _0800F578
	adds r0, r0, r1
	ldr r1, _0800F57C
	str r1, [r0]
	b _0800F5B4
	.align 2, 0
_0800F574: .4byte 0x08DFF6A4
_0800F578: .4byte 0x00002298
_0800F57C: .4byte 0x7EDE89FF
_0800F580:
	ldr r0, _0800F590
	ldr r0, [r0]
	ldr r1, _0800F594
	adds r0, r0, r1
	ldr r1, _0800F598
	str r1, [r0]
	b _0800F5B4
	.align 2, 0
_0800F590: .4byte 0x08DFF6A4
_0800F594: .4byte 0x00002298
_0800F598: .4byte 0x7EE9385F
_0800F59C:
	ldr r0, _0800F5A8
	ldr r0, [r0]
	ldr r1, _0800F5AC
	adds r0, r0, r1
	ldr r1, _0800F5B0
	b _0800F626
	.align 2, 0
_0800F5A8: .4byte 0x08DFF6A4
_0800F5AC: .4byte 0x00002298
_0800F5B0: .4byte 0x7EDE89F9
_0800F5B4:
	ldr r4, _0800F600
	ldr r0, _0800F604
	lsls r1, r7, #2
	adds r1, r1, r7
	add r1, r8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _0800F608
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _0800F60C
	ldr r2, [r0]
	ldr r0, _0800F610
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r4, _0800F614
	adds r0, r0, r4
	ldr r3, _0800F618
	ldrh r1, [r3, #0x12]
	subs r0, r0, r1
	str r0, [r2]
	adds r0, r0, r4
	ldrh r1, [r3, #0x14]
	subs r0, r0, r1
	str r0, [r2]
	b _0800F628
	.align 2, 0
_0800F600: .4byte gStatMod
_0800F604: .4byte gZones
_0800F608: .4byte gDuel
_0800F60C: .4byte 0x08DFF6A4
_0800F610: .4byte 0x00002298
_0800F614: .4byte 0x0000FFFE
_0800F618: .4byte gCardInfo
_0800F61C:
	ldr r0, _0800F634
	ldr r0, [r0]
	ldr r1, _0800F638
	adds r0, r0, r1
	ldr r1, _0800F63C
_0800F626:
	str r1, [r0]
_0800F628:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F634: .4byte 0x08DFF6A4
_0800F638: .4byte 0x00002298
_0800F63C: .4byte 0x7EE2CFBF

	THUMB_FUNC_START sub_800F640
sub_800F640: @ 0x0800F640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0800F694
	ldrb r0, [r2, #2]
	lsrs r1, r0, #4
	mov r8, r1
	movs r1, #0xf
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	mov sb, r2
	adds r5, r1, #0
	ands r5, r0
	ldr r0, _0800F698
	mov sl, r0
	lsls r1, r6, #2
	mov r2, r8
	lsls r0, r2, #2
	add r0, r8
	lsls r7, r0, #2
	adds r1, r1, r7
	mov r0, sl
	adds r4, r1, r0
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0800F69C
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _0800F6AC
	ldr r0, _0800F6A0
	ldr r0, [r0]
	ldr r1, _0800F6A4
	adds r0, r0, r1
	ldr r1, _0800F6A8
	b _0800F812
	.align 2, 0
_0800F694: .4byte 0x02021C00
_0800F698: .4byte gZones
_0800F69C: .4byte gCardInfo
_0800F6A0: .4byte 0x08DFF6A4
_0800F6A4: .4byte 0x00002298
_0800F6A8: .4byte 0x7EDE89F9
_0800F6AC:
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	beq _0800F6D0
	ldr r0, _0800F6C4
	ldr r0, [r0]
	ldr r2, _0800F6C8
	adds r0, r0, r2
	ldr r1, _0800F6CC
	b _0800F812
	.align 2, 0
_0800F6C4: .4byte 0x08DFF6A4
_0800F6C8: .4byte 0x00002298
_0800F6CC: .4byte 0x7EDE89F9
_0800F6D0:
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #0
	beq _0800F6F4
	ldr r0, _0800F6E8
	ldr r0, [r0]
	ldr r1, _0800F6EC
	adds r0, r0, r1
	ldr r1, _0800F6F0
	b _0800F812
	.align 2, 0
_0800F6E8: .4byte 0x08DFF6A4
_0800F6EC: .4byte 0x00002298
_0800F6F0: .4byte 0x7EDE89F9
_0800F6F4:
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_802061C
	cmp r0, #0
	beq _0800F716
	mov r2, sl
	adds r0, r7, r2
	ldr r1, [r4]
	ldrh r1, [r1]
	bl NumCardInRow
	cmp r0, #1
	bgt _0800F716
	bl sub_800F830
	b _0800F814
_0800F716:
	ldr r0, _0800F73C
	mov sl, r0
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r2, sl
	adds r7, r0, r2
	ldr r2, [r7]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0800F74C
	ldr r0, _0800F740
	ldr r0, [r0]
	ldr r1, _0800F744
	adds r0, r0, r1
	ldr r1, _0800F748
	b _0800F812
	.align 2, 0
_0800F73C: .4byte gZones
_0800F740: .4byte 0x08DFF6A4
_0800F744: .4byte 0x00002298
_0800F748: .4byte 0x7F3D9A1C
_0800F74C:
	ldrb r1, [r2, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800F770
	ldr r0, _0800F764
	ldr r0, [r0]
	ldr r2, _0800F768
	adds r0, r0, r2
	ldr r1, _0800F76C
	b _0800F812
	.align 2, 0
_0800F764: .4byte 0x08DFF6A4
_0800F768: .4byte 0x00002298
_0800F76C: .4byte 0x7EDE89F9
_0800F770:
	ldrh r0, [r2]
	bl sub_803FCBC
	cmp r0, #1
	beq _0800F794
	ldr r0, _0800F788
	ldr r0, [r0]
	ldr r1, _0800F78C
	adds r0, r0, r1
	ldr r1, _0800F790
	b _0800F812
	.align 2, 0
_0800F788: .4byte 0x08DFF6A4
_0800F78C: .4byte 0x00002298
_0800F790: .4byte 0x7F3D9A1C
_0800F794:
	ldr r4, _0800F7F0
	mov r2, r8
	lsls r0, r2, #2
	add r0, r8
	adds r0, r0, r6
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldr r5, _0800F7F4
	adds r5, #0xf0
	ldrb r1, [r5]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r6, _0800F7F8
	ldrh r0, [r6, #0x12]
	mov r8, r0
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldrh r6, [r6, #0x12]
	cmp r8, r6
	bhi _0800F808
	ldr r0, _0800F7FC
	ldr r0, [r0]
	ldr r1, _0800F800
	adds r0, r0, r1
	ldr r1, _0800F804
	b _0800F812
	.align 2, 0
_0800F7F0: .4byte gStatMod
_0800F7F4: .4byte gDuel
_0800F7F8: .4byte gCardInfo
_0800F7FC: .4byte 0x08DFF6A4
_0800F800: .4byte 0x00002298
_0800F804: .4byte 0x7EDE89F9
_0800F808:
	ldr r0, _0800F824
	ldr r0, [r0]
	ldr r2, _0800F828
	adds r0, r0, r2
	ldr r1, _0800F82C
_0800F812:
	str r1, [r0]
_0800F814:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F824: .4byte 0x08DFF6A4
_0800F828: .4byte 0x00002298
_0800F82C: .4byte 0x7F32EBBC

	THUMB_FUNC_START sub_800F830
sub_800F830: @ 0x0800F830
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0800F86C
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	ands r1, r0
	ldr r0, _0800F870
	mov r8, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, r8
	adds r7, r0, r1
	ldr r2, [r7]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0800F880
	ldr r0, _0800F874
	ldr r0, [r0]
	ldr r1, _0800F878
	adds r0, r0, r1
	ldr r1, _0800F87C
	b _0800F942
	.align 2, 0
_0800F86C: .4byte 0x02021C00
_0800F870: .4byte gZones
_0800F874: .4byte 0x08DFF6A4
_0800F878: .4byte 0x00002298
_0800F87C: .4byte 0x7F1D8EFC
_0800F880:
	ldrb r1, [r2, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800F8A4
	ldr r0, _0800F898
	ldr r0, [r0]
	ldr r1, _0800F89C
	adds r0, r0, r1
	ldr r1, _0800F8A0
	b _0800F942
	.align 2, 0
_0800F898: .4byte 0x08DFF6A4
_0800F89C: .4byte 0x00002298
_0800F8A0: .4byte 0x7EDE89F9
_0800F8A4:
	ldrh r0, [r2]
	bl sub_803FCBC
	cmp r0, #1
	beq _0800F8C8
	ldr r0, _0800F8BC
	ldr r0, [r0]
	ldr r1, _0800F8C0
	adds r0, r0, r1
	ldr r1, _0800F8C4
	b _0800F942
	.align 2, 0
_0800F8BC: .4byte 0x08DFF6A4
_0800F8C0: .4byte 0x00002298
_0800F8C4: .4byte 0x7F1D8EFC
_0800F8C8:
	ldr r4, _0800F920
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldr r5, _0800F924
	adds r5, #0xf0
	ldrb r1, [r5]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r6, _0800F928
	ldrh r0, [r6, #0x12]
	mov r8, r0
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldrh r6, [r6, #0x12]
	cmp r8, r6
	bhi _0800F938
	ldr r0, _0800F92C
	ldr r0, [r0]
	ldr r1, _0800F930
	adds r0, r0, r1
	ldr r1, _0800F934
	b _0800F942
	.align 2, 0
_0800F920: .4byte gStatMod
_0800F924: .4byte gDuel
_0800F928: .4byte gCardInfo
_0800F92C: .4byte 0x08DFF6A4
_0800F930: .4byte 0x00002298
_0800F934: .4byte 0x7EDE89F9
_0800F938:
	ldr r0, _0800F950
	ldr r0, [r0]
	ldr r1, _0800F954
	adds r0, r0, r1
	ldr r1, _0800F958
_0800F942:
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F950: .4byte 0x08DFF6A4
_0800F954: .4byte 0x00002298
_0800F958: .4byte 0x7F12E09C

	THUMB_FUNC_START sub_800F95C
sub_800F95C: @ 0x0800F95C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r3, _0800F9A8
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r7, r0, #4
	adds r5, r2, #0
	ands r5, r0
	ldr r0, _0800F9AC
	mov sb, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sb
	adds r6, r0, r1
	ldr r0, [r6]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0800F9B0
	mov r8, r0
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0800F9C0
	ldr r0, _0800F9B4
	ldr r0, [r0]
	ldr r1, _0800F9B8
	adds r0, r0, r1
	ldr r1, _0800F9BC
	b _0800FAE6
	.align 2, 0
_0800F9A8: .4byte 0x02021C00
_0800F9AC: .4byte gZones
_0800F9B0: .4byte gCardInfo
_0800F9B4: .4byte 0x08DFF6A4
_0800F9B8: .4byte 0x00002298
_0800F9BC: .4byte 0x7EDE89F9
_0800F9C0:
	ldr r0, [r6]
	bl sub_80436EC
	adds r4, r0, #0
	cmp r4, #1
	beq _0800F9E4
	ldr r0, _0800F9D8
	ldr r0, [r0]
	ldr r1, _0800F9DC
	adds r0, r0, r1
	ldr r1, _0800F9E0
	b _0800FAE6
	.align 2, 0
_0800F9D8: .4byte 0x08DFF6A4
_0800F9DC: .4byte 0x00002298
_0800F9E0: .4byte 0x7EDE89F9
_0800F9E4:
	ldr r0, [r6]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #0
	beq _0800FA08
	ldr r0, _0800F9FC
	ldr r0, [r0]
	ldr r1, _0800FA00
	adds r0, r0, r1
	ldr r1, _0800FA04
	b _0800FAE6
	.align 2, 0
_0800F9FC: .4byte 0x08DFF6A4
_0800FA00: .4byte 0x00002298
_0800FA04: .4byte 0x7EDE89F9
_0800FA08:
	lsls r0, r7, #2
	adds r0, r0, r7
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r7, r0, r1
	ldr r1, [r7]
	ldrh r0, [r1]
	cmp r0, #0
	bne _0800FA34
	ldr r0, _0800FA28
	ldr r0, [r0]
	ldr r1, _0800FA2C
	adds r0, r0, r1
	ldr r1, _0800FA30
	b _0800FAE6
	.align 2, 0
_0800FA28: .4byte 0x08DFF6A4
_0800FA2C: .4byte 0x00002298
_0800FA30: .4byte 0x7F3D9A1C
_0800FA34:
	ldrb r0, [r1, #5]
	ands r4, r0
	cmp r4, #0
	beq _0800FA54
	ldr r0, _0800FA48
	ldr r0, [r0]
	ldr r1, _0800FA4C
	adds r0, r0, r1
	ldr r1, _0800FA50
	b _0800FAE6
	.align 2, 0
_0800FA48: .4byte 0x08DFF6A4
_0800FA4C: .4byte 0x00002298
_0800FA50: .4byte 0x7EDE89F9
_0800FA54:
	ldrh r0, [r1]
	bl sub_803FCBC
	cmp r0, #1
	beq _0800FA78
	ldr r0, _0800FA6C
	ldr r0, [r0]
	ldr r1, _0800FA70
	adds r0, r0, r1
	ldr r1, _0800FA74
	b _0800FAE6
	.align 2, 0
_0800FA6C: .4byte 0x08DFF6A4
_0800FA70: .4byte 0x00002298
_0800FA74: .4byte 0x7F3D9A1C
_0800FA78:
	ldr r4, _0800FAC8
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r5, _0800FACC
	adds r5, #0xf0
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r6]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, r8
	ldrh r6, [r0, #0x12]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r1, r8
	ldrh r1, [r1, #0x12]
	cmp r6, r1
	bhi _0800FADC
	ldr r0, _0800FAD0
	ldr r0, [r0]
	ldr r1, _0800FAD4
	adds r0, r0, r1
	ldr r1, _0800FAD8
	b _0800FAE6
	.align 2, 0
_0800FAC8: .4byte gStatMod
_0800FACC: .4byte gDuel
_0800FAD0: .4byte 0x08DFF6A4
_0800FAD4: .4byte 0x00002298
_0800FAD8: .4byte 0x7EDE89F9
_0800FADC:
	ldr r0, _0800FAF4
	ldr r0, [r0]
	ldr r1, _0800FAF8
	adds r0, r0, r1
	ldr r1, _0800FAFC
_0800FAE6:
	str r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FAF4: .4byte 0x08DFF6A4
_0800FAF8: .4byte 0x00002298
_0800FAFC: .4byte 0x7F32EBBC

	THUMB_FUNC_START sub_800FB00
sub_800FB00: @ 0x0800FB00
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r3, _0800FB4C
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r7, r0, #4
	adds r5, r2, #0
	ands r5, r0
	ldr r0, _0800FB50
	mov sb, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sb
	adds r6, r0, r1
	ldr r0, [r6]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0800FB54
	mov r8, r0
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _0800FB64
	ldr r0, _0800FB58
	ldr r0, [r0]
	ldr r1, _0800FB5C
	adds r0, r0, r1
	ldr r1, _0800FB60
	b _0800FC4A
	.align 2, 0
_0800FB4C: .4byte 0x02021C00
_0800FB50: .4byte gZones
_0800FB54: .4byte gCardInfo
_0800FB58: .4byte 0x08DFF6A4
_0800FB5C: .4byte 0x00002298
_0800FB60: .4byte 0x7EDE89F9
_0800FB64:
	ldr r0, [r6]
	bl sub_80436EC
	cmp r0, #1
	beq _0800FB88
	ldr r0, _0800FB7C
	ldr r0, [r0]
	ldr r1, _0800FB80
	adds r0, r0, r1
	ldr r1, _0800FB84
	b _0800FC4A
	.align 2, 0
_0800FB7C: .4byte 0x08DFF6A4
_0800FB80: .4byte 0x00002298
_0800FB84: .4byte 0x7EDE89F9
_0800FB88:
	ldr r0, [r6]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #1
	beq _0800FBAC
	ldr r0, _0800FBA0
	ldr r0, [r0]
	ldr r1, _0800FBA4
	adds r0, r0, r1
	ldr r1, _0800FBA8
	b _0800FC4A
	.align 2, 0
_0800FBA0: .4byte 0x08DFF6A4
_0800FBA4: .4byte 0x00002298
_0800FBA8: .4byte 0x7EDE89F9
_0800FBAC:
	lsls r0, r7, #2
	adds r0, r0, r7
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r7, r0, r1
	ldr r0, [r7]
	bl sub_80436EC
	cmp r0, #1
	beq _0800FBDC
	ldr r0, _0800FBD0
	ldr r0, [r0]
	ldr r1, _0800FBD4
	adds r0, r0, r1
	ldr r1, _0800FBD8
	b _0800FC4A
	.align 2, 0
_0800FBD0: .4byte 0x08DFF6A4
_0800FBD4: .4byte 0x00002298
_0800FBD8: .4byte 0x7EDE89F9
_0800FBDC:
	ldr r4, _0800FC2C
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r5, _0800FC30
	adds r5, #0xf0
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r6]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, r8
	ldrh r6, [r0, #0x12]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r1, r8
	ldrh r1, [r1, #0x12]
	cmp r6, r1
	bhi _0800FC40
	ldr r0, _0800FC34
	ldr r0, [r0]
	ldr r1, _0800FC38
	adds r0, r0, r1
	ldr r1, _0800FC3C
	b _0800FC4A
	.align 2, 0
_0800FC2C: .4byte gStatMod
_0800FC30: .4byte gDuel
_0800FC34: .4byte 0x08DFF6A4
_0800FC38: .4byte 0x00002298
_0800FC3C: .4byte 0x7EDE89F9
_0800FC40:
	ldr r0, _0800FC58
	ldr r0, [r0]
	ldr r1, _0800FC5C
	adds r0, r0, r1
	ldr r1, _0800FC60
_0800FC4A:
	str r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FC58: .4byte 0x08DFF6A4
_0800FC5C: .4byte 0x00002298
_0800FC60: .4byte 0x7F5DA53C

	THUMB_FUNC_START sub_800FC64
sub_800FC64: @ 0x0800FC64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r3, _0800FCB0
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r7, r0, #4
	adds r5, r2, #0
	ands r5, r0
	ldr r0, _0800FCB4
	mov sb, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sb
	adds r6, r0, r1
	ldr r0, [r6]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0800FCB8
	mov r8, r0
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0800FCC8
	ldr r0, _0800FCBC
	ldr r0, [r0]
	ldr r1, _0800FCC0
	adds r0, r0, r1
	ldr r1, _0800FCC4
	b _0800FDAE
	.align 2, 0
_0800FCB0: .4byte 0x02021C00
_0800FCB4: .4byte gZones
_0800FCB8: .4byte gCardInfo
_0800FCBC: .4byte 0x08DFF6A4
_0800FCC0: .4byte 0x00002298
_0800FCC4: .4byte 0x7EDE89F9
_0800FCC8:
	ldr r0, [r6]
	bl sub_80436EC
	cmp r0, #1
	beq _0800FCEC
	ldr r0, _0800FCE0
	ldr r0, [r0]
	ldr r1, _0800FCE4
	adds r0, r0, r1
	ldr r1, _0800FCE8
	b _0800FDAE
	.align 2, 0
_0800FCE0: .4byte 0x08DFF6A4
_0800FCE4: .4byte 0x00002298
_0800FCE8: .4byte 0x7EDE89F9
_0800FCEC:
	ldr r0, [r6]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #1
	beq _0800FD10
	ldr r0, _0800FD04
	ldr r0, [r0]
	ldr r1, _0800FD08
	adds r0, r0, r1
	ldr r1, _0800FD0C
	b _0800FDAE
	.align 2, 0
_0800FD04: .4byte 0x08DFF6A4
_0800FD08: .4byte 0x00002298
_0800FD0C: .4byte 0x7EDE89F9
_0800FD10:
	lsls r0, r7, #2
	adds r0, r0, r7
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r7, r0, r1
	ldr r0, [r7]
	bl sub_80436EC
	cmp r0, #1
	beq _0800FD40
	ldr r0, _0800FD34
	ldr r0, [r0]
	ldr r1, _0800FD38
	adds r0, r0, r1
	ldr r1, _0800FD3C
	b _0800FDAE
	.align 2, 0
_0800FD34: .4byte 0x08DFF6A4
_0800FD38: .4byte 0x00002298
_0800FD3C: .4byte 0x7EDE89F9
_0800FD40:
	ldr r4, _0800FD90
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r5, _0800FD94
	adds r5, #0xf0
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r6]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, r8
	ldrh r6, [r0, #0x12]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r1, r8
	ldrh r1, [r1, #0x12]
	cmp r6, r1
	bhi _0800FDA4
	ldr r0, _0800FD98
	ldr r0, [r0]
	ldr r1, _0800FD9C
	adds r0, r0, r1
	ldr r1, _0800FDA0
	b _0800FDAE
	.align 2, 0
_0800FD90: .4byte gStatMod
_0800FD94: .4byte gDuel
_0800FD98: .4byte 0x08DFF6A4
_0800FD9C: .4byte 0x00002298
_0800FDA0: .4byte 0x7EDE89F9
_0800FDA4:
	ldr r0, _0800FDBC
	ldr r0, [r0]
	ldr r1, _0800FDC0
	adds r0, r0, r1
	ldr r1, _0800FDC4
_0800FDAE:
	str r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FDBC: .4byte 0x08DFF6A4
_0800FDC0: .4byte 0x00002298
_0800FDC4: .4byte 0x7F5DA53C

	THUMB_FUNC_START sub_800FDC8
sub_800FDC8: @ 0x0800FDC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0800FE1C
	ldrb r0, [r2, #2]
	lsrs r4, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	mov sb, r5
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #4]
	lsrs r2, r0, #4
	mov sl, r2
	adds r7, r1, #0
	ands r7, r0
	ldr r5, _0800FE20
	mov r8, r5
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r5, r0, r5
	ldr r0, [r5]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r1, _0800FE24
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _0800FE34
	ldr r0, _0800FE28
	ldr r0, [r0]
	ldr r2, _0800FE2C
	adds r0, r0, r2
	ldr r1, _0800FE30
	b _0800FF92
	.align 2, 0
_0800FE1C: .4byte 0x02021C00
_0800FE20: .4byte gZones
_0800FE24: .4byte gCardInfo
_0800FE28: .4byte 0x08DFF6A4
_0800FE2C: .4byte 0x00002298
_0800FE30: .4byte 0x7EDE89F9
_0800FE34:
	ldr r0, [r5]
	bl sub_80436EC
	cmp r0, #1
	beq _0800FE58
	ldr r0, _0800FE4C
	ldr r0, [r0]
	ldr r5, _0800FE50
	adds r0, r0, r5
	ldr r1, _0800FE54
	b _0800FF92
	.align 2, 0
_0800FE4C: .4byte 0x08DFF6A4
_0800FE50: .4byte 0x00002298
_0800FE54: .4byte 0x7EDE89F9
_0800FE58:
	ldr r0, [r5]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #2
	beq _0800FE7C
	ldr r0, _0800FE70
	ldr r0, [r0]
	ldr r1, _0800FE74
	adds r0, r0, r1
	ldr r1, _0800FE78
	b _0800FF92
	.align 2, 0
_0800FE70: .4byte 0x08DFF6A4
_0800FE74: .4byte 0x00002298
_0800FE78: .4byte 0x7EDE89F9
_0800FE7C:
	mov r2, sb
	lsls r0, r2, #2
	add r0, sb
	adds r0, r0, r6
	lsls r0, r0, #2
	mov r1, r8
	adds r6, r0, r1
	ldr r0, [r6]
	bl sub_80436EC
	cmp r0, #1
	beq _0800FEAC
	ldr r0, _0800FEA0
	ldr r0, [r0]
	ldr r2, _0800FEA4
	adds r0, r0, r2
	ldr r1, _0800FEA8
	b _0800FF92
	.align 2, 0
_0800FEA0: .4byte 0x08DFF6A4
_0800FEA4: .4byte 0x00002298
_0800FEA8: .4byte 0x7EDE89F9
_0800FEAC:
	mov r1, sl
	lsls r0, r1, #2
	add r0, sl
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r2, r8
	adds r7, r0, r2
	ldr r0, [r7]
	bl sub_80436EC
	cmp r0, #1
	beq _0800FEDC
	ldr r0, _0800FED0
	ldr r0, [r0]
	ldr r5, _0800FED4
	adds r0, r0, r5
	ldr r1, _0800FED8
	b _0800FF92
	.align 2, 0
_0800FED0: .4byte 0x08DFF6A4
_0800FED4: .4byte 0x00002298
_0800FED8: .4byte 0x7EDE89F9
_0800FEDC:
	ldr r4, _0800FF30
	ldr r0, [r5]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _0800FF34
	adds r0, #0xf0
	mov r8, r0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r5]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _0800FF38
	ldrh r5, [r0, #0x12]
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r6]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r2, _0800FF38
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _0800FF48
	ldr r0, _0800FF3C
	ldr r0, [r0]
	ldr r5, _0800FF40
	adds r0, r0, r5
	ldr r1, _0800FF44
	b _0800FF92
	.align 2, 0
_0800FF30: .4byte gStatMod
_0800FF34: .4byte gDuel
_0800FF38: .4byte gCardInfo
_0800FF3C: .4byte 0x08DFF6A4
_0800FF40: .4byte 0x00002298
_0800FF44: .4byte 0x7EDE89F9
_0800FF48:
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]

	THUMB_FUNC_START sub_800FF5C
sub_800FF5C: @ 0x0800FF5C
	adds r0, r4, #0
	bl sub_800B318
	ldr r2, _0800FF78
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _0800FF88
	ldr r0, _0800FF7C
	ldr r0, [r0]
	ldr r5, _0800FF80
	adds r0, r0, r5
	ldr r1, _0800FF84
	b _0800FF92
	.align 2, 0
_0800FF78: .4byte gCardInfo
_0800FF7C: .4byte 0x08DFF6A4
_0800FF80: .4byte 0x00002298
_0800FF84: .4byte 0x7EDE89F9
_0800FF88:
	ldr r0, _0800FFA4
	ldr r0, [r0]
	ldr r1, _0800FFA8
	adds r0, r0, r1
	ldr r1, _0800FFAC
_0800FF92:
	str r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FFA4: .4byte 0x08DFF6A4
_0800FFA8: .4byte 0x00002298
_0800FFAC: .4byte 0x7F7DB05C

	THUMB_FUNC_START sub_800FFB0
sub_800FFB0: @ 0x0800FFB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08010004
	ldrb r0, [r2, #2]
	lsrs r4, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	mov sb, r5
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #4]
	lsrs r2, r0, #4
	mov sl, r2
	adds r7, r1, #0
	ands r7, r0
	ldr r5, _08010008
	mov r8, r5
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r5, r0, r5
	ldr r0, [r5]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r1, _0801000C
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _0801001C
	ldr r0, _08010010
	ldr r0, [r0]
	ldr r2, _08010014
	adds r0, r0, r2
	ldr r1, _08010018
	b _0801017A
	.align 2, 0
_08010004: .4byte 0x02021C00
_08010008: .4byte gZones
_0801000C: .4byte gCardInfo
_08010010: .4byte 0x08DFF6A4
_08010014: .4byte 0x00002298
_08010018: .4byte 0x7EDE89F9
_0801001C:
	ldr r0, [r5]
	bl sub_80436EC
	cmp r0, #1
	beq _08010040
	ldr r0, _08010034
	ldr r0, [r0]
	ldr r5, _08010038
	adds r0, r0, r5
	ldr r1, _0801003C
	b _0801017A
	.align 2, 0
_08010034: .4byte 0x08DFF6A4
_08010038: .4byte 0x00002298
_0801003C: .4byte 0x7EDE89F9
_08010040:
	ldr r0, [r5]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #2
	beq _08010064
	ldr r0, _08010058
	ldr r0, [r0]
	ldr r1, _0801005C
	adds r0, r0, r1
	ldr r1, _08010060
	b _0801017A
	.align 2, 0
_08010058: .4byte 0x08DFF6A4
_0801005C: .4byte 0x00002298
_08010060: .4byte 0x7EDE89F9
_08010064:
	mov r2, sb
	lsls r0, r2, #2
	add r0, sb
	adds r0, r0, r6
	lsls r0, r0, #2
	mov r1, r8
	adds r6, r0, r1
	ldr r0, [r6]
	bl sub_80436EC
	cmp r0, #1
	beq _08010094
	ldr r0, _08010088
	ldr r0, [r0]
	ldr r2, _0801008C
	adds r0, r0, r2
	ldr r1, _08010090
	b _0801017A
	.align 2, 0
_08010088: .4byte 0x08DFF6A4
_0801008C: .4byte 0x00002298
_08010090: .4byte 0x7EDE89F9
_08010094:
	mov r1, sl
	lsls r0, r1, #2
	add r0, sl
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r2, r8
	adds r7, r0, r2
	ldr r0, [r7]
	bl sub_80436EC
	cmp r0, #1
	beq _080100C4
	ldr r0, _080100B8
	ldr r0, [r0]
	ldr r5, _080100BC
	adds r0, r0, r5
	ldr r1, _080100C0
	b _0801017A
	.align 2, 0
_080100B8: .4byte 0x08DFF6A4
_080100BC: .4byte 0x00002298
_080100C0: .4byte 0x7EDE89F9
_080100C4:
	ldr r4, _08010118
	ldr r0, [r5]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _0801011C
	adds r0, #0xf0
	mov r8, r0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r5]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _08010120
	ldrh r5, [r0, #0x12]
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r6]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r2, _08010120
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _08010130
	ldr r0, _08010124
	ldr r0, [r0]
	ldr r5, _08010128
	adds r0, r0, r5
	ldr r1, _0801012C
	b _0801017A
	.align 2, 0
_08010118: .4byte gStatMod
_0801011C: .4byte gDuel
_08010120: .4byte gCardInfo
_08010124: .4byte 0x08DFF6A4
_08010128: .4byte 0x00002298
_0801012C: .4byte 0x7EDE89F9
_08010130:
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r2, _08010160
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _08010170
	ldr r0, _08010164
	ldr r0, [r0]
	ldr r5, _08010168
	adds r0, r0, r5
	ldr r1, _0801016C
	b _0801017A
	.align 2, 0
_08010160: .4byte gCardInfo
_08010164: .4byte 0x08DFF6A4
_08010168: .4byte 0x00002298
_0801016C: .4byte 0x7EDE89F9
_08010170:
	ldr r0, _0801018C
	ldr r0, [r0]
	ldr r1, _08010190
	adds r0, r0, r1
	ldr r1, _08010194
_0801017A:
	str r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801018C: .4byte 0x08DFF6A4
_08010190: .4byte 0x00002298
_08010194: .4byte 0x7F7DB05C

	THUMB_FUNC_START sub_8010198
sub_8010198: @ 0x08010198
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _080101FC
	ldrb r0, [r2, #2]
	lsrs r4, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	mov r8, r5
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #4]
	lsrs r5, r0, #4
	str r5, [sp]
	adds r7, r1, #0
	ands r7, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	str r2, [sp, #4]
	mov sb, r1
	mov r5, sb
	ands r5, r0
	mov sb, r5
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _08010200
	adds r5, r0, r1
	ldr r0, [r5]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r2, _08010204
	mov sl, r2
	ldrb r0, [r2, #0x1e]
	cmp r0, #0
	beq _08010214
	ldr r0, _08010208
	ldr r0, [r0]
	ldr r5, _0801020C
	adds r0, r0, r5
	ldr r1, _08010210
	b _080103BE
	.align 2, 0
_080101FC: .4byte 0x02021C00
_08010200: .4byte gZones
_08010204: .4byte gCardInfo
_08010208: .4byte 0x08DFF6A4
_0801020C: .4byte 0x00002298
_08010210: .4byte 0x7EDE89F9
_08010214:
	ldr r0, [r5]
	bl sub_80436EC
	cmp r0, #1
	beq _08010238
	ldr r0, _0801022C
	ldr r0, [r0]
	ldr r1, _08010230
	adds r0, r0, r1
	ldr r1, _08010234
	b _080103BE
	.align 2, 0
_0801022C: .4byte 0x08DFF6A4
_08010230: .4byte 0x00002298
_08010234: .4byte 0x7EDE89F9
_08010238:
	ldr r0, [r5]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #3
	beq _0801025C
	ldr r0, _08010250
	ldr r0, [r0]
	ldr r2, _08010254
	adds r0, r0, r2
	ldr r1, _08010258
	b _080103BE
	.align 2, 0
_08010250: .4byte 0x08DFF6A4
_08010254: .4byte 0x00002298
_08010258: .4byte 0x7EDE89F9
_0801025C:
	mov r1, r8
	lsls r0, r1, #2
	add r0, r8
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r2, _08010280
	adds r6, r0, r2
	ldr r0, [r6]
	bl sub_80436EC
	cmp r0, #1
	beq _08010290
	ldr r0, _08010284
	ldr r0, [r0]
	ldr r5, _08010288
	adds r0, r0, r5
	ldr r1, _0801028C
	b _080103BE
	.align 2, 0
_08010280: .4byte gZones
_08010284: .4byte 0x08DFF6A4
_08010288: .4byte 0x00002298
_0801028C: .4byte 0x7EDE89F9
_08010290:
	ldr r1, [sp]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r7
	lsls r0, r0, #2
	ldr r2, _080102B4
	adds r7, r0, r2
	ldr r0, [r7]
	bl sub_80436EC
	cmp r0, #1
	beq _080102C4
	ldr r0, _080102B8
	ldr r0, [r0]
	ldr r5, _080102BC
	adds r0, r0, r5
	ldr r1, _080102C0
	b _080103BE
	.align 2, 0
_080102B4: .4byte gZones
_080102B8: .4byte 0x08DFF6A4
_080102BC: .4byte 0x00002298
_080102C0: .4byte 0x7EDE89F9
_080102C4:
	ldr r4, _08010318
	ldr r0, [r5]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _0801031C
	adds r0, #0xf0
	mov r8, r0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r5]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, sl
	ldrh r5, [r0, #0x12]
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r6]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r2, sl
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _0801032C
	ldr r0, _08010320
	ldr r0, [r0]
	ldr r5, _08010324
	adds r0, r0, r5
	ldr r1, _08010328
	b _080103BE
	.align 2, 0
_08010318: .4byte gStatMod
_0801031C: .4byte gDuel
_08010320: .4byte 0x08DFF6A4
_08010324: .4byte 0x00002298
_08010328: .4byte 0x7EDE89F9
_0801032C:
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r2, sl
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _08010368
	ldr r0, _0801035C
	ldr r0, [r0]
	ldr r5, _08010360
	adds r0, r0, r5
	ldr r1, _08010364
	b _080103BE
	.align 2, 0
_0801035C: .4byte 0x08DFF6A4
_08010360: .4byte 0x00002298
_08010364: .4byte 0x7EDE89F9
_08010368:
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	add r0, sb
	lsls r0, r0, #2
	ldr r2, _080103A4
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	mov r2, r8
	ldrb r1, [r2]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, sl
	ldrh r0, [r0, #0x12]
	cmp r5, r0
	bhi _080103B4
	ldr r0, _080103A8
	ldr r0, [r0]
	ldr r1, _080103AC
	adds r0, r0, r1
	ldr r1, _080103B0
	b _080103BE
	.align 2, 0
_080103A4: .4byte gZones
_080103A8: .4byte 0x08DFF6A4
_080103AC: .4byte 0x00002298
_080103B0: .4byte 0x7EDE89F9
_080103B4:
	ldr r0, _080103D0
	ldr r0, [r0]
	ldr r2, _080103D4
	adds r0, r0, r2
	ldr r1, _080103D8
_080103BE:
	str r1, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080103D0: .4byte 0x08DFF6A4
_080103D4: .4byte 0x00002298
_080103D8: .4byte 0x7F7DB05C

	THUMB_FUNC_START sub_80103DC
sub_80103DC: @ 0x080103DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _08010440
	ldrb r0, [r2, #2]
	lsrs r4, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	mov r8, r5
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #4]
	lsrs r5, r0, #4
	str r5, [sp]
	adds r7, r1, #0
	ands r7, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	str r2, [sp, #4]
	mov sb, r1
	mov r5, sb
	ands r5, r0
	mov sb, r5
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _08010444
	adds r5, r0, r1
	ldr r0, [r5]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r2, _08010448
	mov sl, r2
	ldrb r0, [r2, #0x1e]
	cmp r0, #0
	bne _08010458
	ldr r0, _0801044C
	ldr r0, [r0]
	ldr r5, _08010450
	adds r0, r0, r5
	ldr r1, _08010454
	b _08010602
	.align 2, 0
_08010440: .4byte 0x02021C00
_08010444: .4byte gZones
_08010448: .4byte gCardInfo
_0801044C: .4byte 0x08DFF6A4
_08010450: .4byte 0x00002298
_08010454: .4byte 0x7EDE89F9
_08010458:
	ldr r0, [r5]
	bl sub_80436EC
	cmp r0, #1
	beq _0801047C
	ldr r0, _08010470
	ldr r0, [r0]
	ldr r1, _08010474
	adds r0, r0, r1
	ldr r1, _08010478
	b _08010602
	.align 2, 0
_08010470: .4byte 0x08DFF6A4
_08010474: .4byte 0x00002298
_08010478: .4byte 0x7EDE89F9
_0801047C:
	ldr r0, [r5]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #3
	beq _080104A0
	ldr r0, _08010494
	ldr r0, [r0]
	ldr r2, _08010498
	adds r0, r0, r2
	ldr r1, _0801049C
	b _08010602
	.align 2, 0
_08010494: .4byte 0x08DFF6A4
_08010498: .4byte 0x00002298
_0801049C: .4byte 0x7EDE89F9
_080104A0:
	mov r1, r8
	lsls r0, r1, #2
	add r0, r8
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r2, _080104C4
	adds r6, r0, r2
	ldr r0, [r6]
	bl sub_80436EC
	cmp r0, #1
	beq _080104D4
	ldr r0, _080104C8
	ldr r0, [r0]
	ldr r5, _080104CC
	adds r0, r0, r5
	ldr r1, _080104D0
	b _08010602
	.align 2, 0
_080104C4: .4byte gZones
_080104C8: .4byte 0x08DFF6A4
_080104CC: .4byte 0x00002298
_080104D0: .4byte 0x7EDE89F9
_080104D4:
	ldr r1, [sp]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r7
	lsls r0, r0, #2
	ldr r2, _080104F8
	adds r7, r0, r2
	ldr r0, [r7]
	bl sub_80436EC
	cmp r0, #1
	beq _08010508
	ldr r0, _080104FC
	ldr r0, [r0]
	ldr r5, _08010500
	adds r0, r0, r5
	ldr r1, _08010504
	b _08010602
	.align 2, 0
_080104F8: .4byte gZones
_080104FC: .4byte 0x08DFF6A4
_08010500: .4byte 0x00002298
_08010504: .4byte 0x7EDE89F9
_08010508:
	ldr r4, _0801055C
	ldr r0, [r5]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08010560
	adds r0, #0xf0
	mov r8, r0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r5]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, sl
	ldrh r5, [r0, #0x12]
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r6]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r2, sl
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _08010570
	ldr r0, _08010564
	ldr r0, [r0]
	ldr r5, _08010568
	adds r0, r0, r5
	ldr r1, _0801056C
	b _08010602
	.align 2, 0
_0801055C: .4byte gStatMod
_08010560: .4byte gDuel
_08010564: .4byte 0x08DFF6A4
_08010568: .4byte 0x00002298
_0801056C: .4byte 0x7EDE89F9
_08010570:
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r0, [r7]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r2, sl
	ldrh r2, [r2, #0x12]
	cmp r5, r2
	bhi _080105AC
	ldr r0, _080105A0
	ldr r0, [r0]
	ldr r5, _080105A4
	adds r0, r0, r5
	ldr r1, _080105A8
	b _08010602
	.align 2, 0
_080105A0: .4byte 0x08DFF6A4
_080105A4: .4byte 0x00002298
_080105A8: .4byte 0x7EDE89F9
_080105AC:
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	add r0, sb
	lsls r0, r0, #2
	ldr r2, _080105E8
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	mov r2, r8
	ldrb r1, [r2]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, sl
	ldrh r0, [r0, #0x12]
	cmp r5, r0
	bhi _080105F8
	ldr r0, _080105EC
	ldr r0, [r0]
	ldr r1, _080105F0
	adds r0, r0, r1
	ldr r1, _080105F4
	b _08010602
	.align 2, 0
_080105E8: .4byte gZones
_080105EC: .4byte 0x08DFF6A4
_080105F0: .4byte 0x00002298
_080105F4: .4byte 0x7EDE89F9
_080105F8:
	ldr r0, _08010614
	ldr r0, [r0]
	ldr r2, _08010618
	adds r0, r0, r2
	ldr r1, _0801061C
_08010602:
	str r1, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010614: .4byte 0x08DFF6A4
_08010618: .4byte 0x00002298
_0801061C: .4byte 0x7F7DB05C

	THUMB_FUNC_START sub_8010620
sub_8010620: @ 0x08010620
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08010674
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r4, _08010678
	ldr r0, _0801067C
	mov sb, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldr r1, _08010680
	adds r1, #0xf0
	mov r8, r1
	ldrb r1, [r1]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r1, _08010684
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _08010694
	ldr r0, _08010688
	ldr r0, [r0]
	ldr r1, _0801068C
	adds r0, r0, r1
	ldr r1, _08010690
	b _0801077C
	.align 2, 0
_08010674: .4byte 0x02021C00
_08010678: .4byte gStatMod
_0801067C: .4byte gZones
_08010680: .4byte gDuel
_08010684: .4byte gCardInfo
_08010688: .4byte 0x08DFF6A4
_0801068C: .4byte 0x00002298
_08010690: .4byte 0x7EDE89F9
_08010694:
	ldrh r6, [r1, #0x12]
	ldrh r7, [r1, #0x14]
	cmp r6, #0
	bne _080106B4
	ldr r0, _080106A8
	ldr r0, [r0]
	ldr r2, _080106AC
	adds r0, r0, r2
	ldr r1, _080106B0
	b _0801077C
	.align 2, 0
_080106A8: .4byte 0x08DFF6A4
_080106AC: .4byte 0x00002298
_080106B0: .4byte 0x7EDE89FB
_080106B4:
	movs r0, #1
	bl sub_80437D4
	cmp r0, #0
	bne _080106F4
	cmp r6, r7
	bhi _08010772
	ldr r0, _080106D0
	ldr r0, [r0]
	ldr r2, _080106D4
	adds r0, r0, r2
	ldr r1, _080106D8
	b _0801077C
	.align 2, 0
_080106D0: .4byte 0x08DFF6A4
_080106D4: .4byte 0x00002298
_080106D8: .4byte 0x7EDE89FB
_080106DC:
	ldr r0, _080106E8
	ldr r0, [r0]
	ldr r1, _080106EC
	adds r0, r0, r1
	ldr r1, _080106F0
	b _0801077C
	.align 2, 0
_080106E8: .4byte 0x08DFF6A4
_080106EC: .4byte 0x00002298
_080106F0: .4byte 0x7EDE89FB
_080106F4:
	movs r5, #0
	movs r2, #0x14
	add sb, r2
_080106FA:
	lsls r0, r5, #2
	mov r1, sb
	adds r3, r0, r1
	ldr r0, [r3]
	ldrh r2, [r0]
	cmp r2, #0
	beq _08010768
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08010750
	strh r2, [r4]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4, #2]
	ldr r0, [r3]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _08010740
	ldrh r0, [r0, #0x12]
	cmp r6, r0
	bls _080106DC
	cmp r7, r0
	blo _08010768
	ldr r0, _08010744
	ldr r0, [r0]
	ldr r1, _08010748
	adds r0, r0, r1
	ldr r1, _0801074C
	b _0801077C
	.align 2, 0
_08010740: .4byte gCardInfo
_08010744: .4byte 0x08DFF6A4
_08010748: .4byte 0x00002298
_0801074C: .4byte 0x7EDE89FB
_08010750:
	ldr r0, _0801075C
	ldr r0, [r0]
	ldr r2, _08010760
	adds r0, r0, r2
	ldr r1, _08010764
	b _0801077C
	.align 2, 0
_0801075C: .4byte 0x08DFF6A4
_08010760: .4byte 0x00002298
_08010764: .4byte 0x7EDE89FB
_08010768:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080106FA
_08010772:
	ldr r0, _0801078C
	ldr r0, [r0]
	ldr r1, _08010790
	adds r0, r0, r1
	ldr r1, _08010794
_0801077C:
	str r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801078C: .4byte 0x08DFF6A4
_08010790: .4byte 0x00002298
_08010794: .4byte 0x7EDE89FD

	THUMB_FUNC_START sub_8010798
sub_8010798: @ 0x08010798
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080107EC
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r4, _080107F0
	ldr r0, _080107F4
	mov sb, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldr r1, _080107F8
	adds r1, #0xf0
	mov r8, r1
	ldrb r1, [r1]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r1, _080107FC
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _0801080C
	ldr r0, _08010800
	ldr r0, [r0]
	ldr r1, _08010804
	adds r0, r0, r1
	ldr r1, _08010808
	b _080108F4
	.align 2, 0
_080107EC: .4byte 0x02021C00
_080107F0: .4byte gStatMod
_080107F4: .4byte gZones
_080107F8: .4byte gDuel
_080107FC: .4byte gCardInfo
_08010800: .4byte 0x08DFF6A4
_08010804: .4byte 0x00002298
_08010808: .4byte 0x7EDE89F9
_0801080C:
	ldrh r6, [r1, #0x12]
	ldrh r7, [r1, #0x14]
	cmp r6, #0
	bne _0801082C
	ldr r0, _08010820
	ldr r0, [r0]
	ldr r2, _08010824
	adds r0, r0, r2
	ldr r1, _08010828
	b _080108F4
	.align 2, 0
_08010820: .4byte 0x08DFF6A4
_08010824: .4byte 0x00002298
_08010828: .4byte 0x7EDE89FB
_0801082C:
	movs r0, #1
	bl sub_80437D4
	cmp r0, #0
	bne _0801086C
	cmp r6, r7
	bhi _080108EA
	ldr r0, _08010848
	ldr r0, [r0]
	ldr r2, _0801084C
	adds r0, r0, r2
	ldr r1, _08010850
	b _080108F4
	.align 2, 0
_08010848: .4byte 0x08DFF6A4
_0801084C: .4byte 0x00002298
_08010850: .4byte 0x7EDE89FB
_08010854:
	ldr r0, _08010860
	ldr r0, [r0]
	ldr r1, _08010864
	adds r0, r0, r1
	ldr r1, _08010868
	b _080108F4
	.align 2, 0
_08010860: .4byte 0x08DFF6A4
_08010864: .4byte 0x00002298
_08010868: .4byte 0x7EDE89FB
_0801086C:
	movs r5, #0
	movs r2, #0x14
	add sb, r2
_08010872:
	lsls r0, r5, #2
	mov r1, sb
	adds r3, r0, r1
	ldr r0, [r3]
	ldrh r2, [r0]
	cmp r2, #0
	beq _080108E0
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080108C8
	strh r2, [r4]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4, #2]
	ldr r0, [r3]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _080108B8
	ldrh r0, [r0, #0x12]
	cmp r6, r0
	bls _08010854
	cmp r7, r0
	blo _080108E0
	ldr r0, _080108BC
	ldr r0, [r0]
	ldr r1, _080108C0
	adds r0, r0, r1
	ldr r1, _080108C4
	b _080108F4
	.align 2, 0
_080108B8: .4byte gCardInfo
_080108BC: .4byte 0x08DFF6A4
_080108C0: .4byte 0x00002298
_080108C4: .4byte 0x7EDE89FB
_080108C8:
	ldr r0, _080108D4
	ldr r0, [r0]
	ldr r2, _080108D8
	adds r0, r0, r2
	ldr r1, _080108DC
	b _080108F4
	.align 2, 0
_080108D4: .4byte 0x08DFF6A4
_080108D8: .4byte 0x00002298
_080108DC: .4byte 0x7EDE89FB
_080108E0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08010872
_080108EA:
	ldr r0, _08010904
	ldr r0, [r0]
	ldr r1, _08010908
	adds r0, r0, r1
	ldr r1, _0801090C
_080108F4:
	str r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010904: .4byte 0x08DFF6A4
_08010908: .4byte 0x00002298
_0801090C: .4byte 0x7EDE89FD

	THUMB_FUNC_START sub_8010910
sub_8010910: @ 0x08010910
	push {r4, lr}
	ldr r0, _08010964
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _08010968
	ldr r3, _0801096C
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08010970
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r3, _08010974
	ldrb r0, [r3, #0x1e]
	cmp r0, #0
	bne _08010954
	ldrh r0, [r3, #0x12]
	cmp r0, #0
	bne _08010984
_08010954:
	ldr r0, _08010978
	ldr r0, [r0]
	ldr r1, _0801097C
	adds r0, r0, r1
	ldr r1, _08010980
	str r1, [r0]
	b _08010996
	.align 2, 0
_08010964: .4byte 0x02021C00
_08010968: .4byte gStatMod
_0801096C: .4byte gZones
_08010970: .4byte gDuel
_08010974: .4byte gCardInfo
_08010978: .4byte 0x08DFF6A4
_0801097C: .4byte 0x00002298
_08010980: .4byte 0x7EDE89F9
_08010984:
	ldr r0, _0801099C
	ldr r1, [r0]
	ldr r0, _080109A0
	adds r1, r1, r0
	ldr r2, _080109A4
	str r2, [r1]
	ldrh r0, [r3, #0x12]
	adds r0, r0, r2
	str r0, [r1]
_08010996:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801099C: .4byte 0x08DFF6A4
_080109A0: .4byte 0x00002298
_080109A4: .4byte 0x7EF1C3F6

	THUMB_FUNC_START sub_80109A8
sub_80109A8: @ 0x080109A8
	push {r4, lr}
	ldr r0, _080109FC
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _08010A00
	ldr r3, _08010A04
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08010A08
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r3, _08010A0C
	ldrb r0, [r3, #0x1e]
	cmp r0, #0
	beq _080109EC
	ldrh r0, [r3, #0x12]
	cmp r0, #0
	bne _08010A1C
_080109EC:
	ldr r0, _08010A10
	ldr r0, [r0]
	ldr r1, _08010A14
	adds r0, r0, r1
	ldr r1, _08010A18
	str r1, [r0]
	b _08010A2E
	.align 2, 0
_080109FC: .4byte 0x02021C00
_08010A00: .4byte gStatMod
_08010A04: .4byte gZones
_08010A08: .4byte gDuel
_08010A0C: .4byte gCardInfo
_08010A10: .4byte 0x08DFF6A4
_08010A14: .4byte 0x00002298
_08010A18: .4byte 0x7EDE89F9
_08010A1C:
	ldr r0, _08010A34
	ldr r1, [r0]
	ldr r0, _08010A38
	adds r1, r1, r0
	ldr r2, _08010A3C
	str r2, [r1]
	ldrh r0, [r3, #0x12]
	adds r0, r0, r2
	str r0, [r1]
_08010A2E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010A34: .4byte 0x08DFF6A4
_08010A38: .4byte 0x00002298
_08010A3C: .4byte 0x7EF1C3F6

	THUMB_FUNC_START sub_8010A40
sub_8010A40: @ 0x08010A40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r3, _08010A8C
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r3, r0, #4
	mov r8, r3
	adds r6, r2, #0
	ands r6, r0
	ldr r0, _08010A90
	mov sb, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r7, _08010A94
	ldrb r0, [r7, #0x1e]
	cmp r0, #0
	beq _08010AA4
	ldr r0, _08010A98
	ldr r0, [r0]
	ldr r1, _08010A9C
	adds r0, r0, r1
	ldr r1, _08010AA0
	str r1, [r0]
	b _08010AE8
	.align 2, 0
_08010A8C: .4byte 0x02021C00
_08010A90: .4byte gZones
_08010A94: .4byte gCardInfo
_08010A98: .4byte 0x08DFF6A4
_08010A9C: .4byte 0x00002298
_08010AA0: .4byte 0x7EDE89F9
_08010AA4:
	ldr r5, _08010AF4
	mov r3, r8
	lsls r4, r3, #2
	add r4, r8
	adds r4, r4, r6
	lsls r4, r4, #2
	add r4, sb
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r0, _08010AF8
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r5, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r0, _08010AFC
	ldr r2, [r0]
	ldr r0, _08010B00
	adds r3, r2, r0
	ldrh r0, [r7, #0x12]
	ldrh r1, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _08010B04
	adds r2, r2, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	str r0, [r2]
_08010AE8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010AF4: .4byte gStatMod
_08010AF8: .4byte gDuel
_08010AFC: .4byte 0x08DFF6A4
_08010B00: .4byte 0x00002298
_08010B04: .4byte 0x0000229C

	THUMB_FUNC_START sub_8010B08
sub_8010B08: @ 0x08010B08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r2, _08010B74
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	str r6, [sp, #4]
	movs r1, #0xf
	adds r7, r1, #0
	ands r7, r0
	str r7, [sp]
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	str r5, [sp, #8]
	adds r4, r1, #0
	ands r4, r0
	ldr r0, _08010B78
	mov r8, r0
	ldr r0, [r0]
	ldr r1, _08010B7C
	mov sb, r1
	add r0, sb
	ldr r0, [r0]
	ldr r2, _08010B80
	mov sl, r2
	cmp r0, sl
	bne _08010B46
	b _08010C66
_08010B46:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08010B94
	bl WhoseTurn
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08010B84
	mov r4, r8
	ldr r0, [r4]
	add r0, sb
	movs r1, #0
	str r1, [r0]
	b _08010C66
	.align 2, 0
_08010B74: .4byte 0x02021C00
_08010B78: .4byte 0x08DFF6A4
_08010B7C: .4byte 0x00002298
_08010B80: .4byte 0x7EDE89F9
_08010B84:
	mov r1, r8
	ldr r0, [r1]
	add r0, sb
	ldr r1, _08010B90
	str r1, [r0]
	b _08010C66
	.align 2, 0
_08010B90: .4byte 0x7FFFFFFF
_08010B94:
	ldr r3, _08010BC0
	lsls r0, r5, #2
	adds r0, r0, r5
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08010BE0
	mov r4, r8
	ldr r2, [r4]
	ldr r4, _08010BC4
	adds r0, r2, r4
	ldr r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08010BC8
	mov r1, sb
	adds r0, r2, r1
	b _08010C62
	.align 2, 0
_08010BC0: .4byte gZones
_08010BC4: .4byte 0x0000229C
_08010BC8:
	ldr r4, _08010BDC
	lsls r1, r6, #2
	adds r1, r1, r6
	adds r1, r1, r7
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	b _08010BF6
	.align 2, 0
_08010BDC: .4byte gStatMod
_08010BE0:
	lsls r0, r6, #2
	adds r0, r0, r6
	ldr r2, [sp]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r0, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08010C34
	ldr r4, _08010C24
_08010BF6:
	strh r0, [r4]
	ldr r0, _08010C28
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r4, r8
	ldr r2, [r4]
	add r2, sb
	ldr r0, [r2]
	ldr r1, _08010C2C
	ldrh r1, [r1, #0x12]
	subs r0, r0, r1
	ldr r1, _08010C30
	adds r0, r0, r1
	str r0, [r2]
	b _08010C66
	.align 2, 0
_08010C24: .4byte gStatMod
_08010C28: .4byte gDuel
_08010C2C: .4byte gCardInfo
_08010C30: .4byte 0x7EF0A113
_08010C34:
	ldr r0, [sp, #4]
	bl sub_80437D4
	adds r4, r0, #0
	ldr r0, [sp, #8]
	bl sub_80437D4
	cmp r4, r0
	ble _08010C5C
	mov r2, r8
	ldr r1, [r2]
	add r1, sb
	ldr r0, [r1]
	ldr r4, _08010C58
	adds r0, r0, r4
	str r0, [r1]
	b _08010C66
	.align 2, 0
_08010C58: .4byte 0x7EEE8FA5
_08010C5C:
	mov r1, r8
	ldr r0, [r1]
	add r0, sb
_08010C62:
	mov r2, sl
	str r2, [r0]
_08010C66:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8010C78
sub_8010C78: @ 0x08010C78
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r3, _08010CC4
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r3, r0, #4
	mov r8, r3
	adds r6, r2, #0
	ands r6, r0
	ldr r0, _08010CC8
	mov sb, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r7, _08010CCC
	ldrb r0, [r7, #0x1e]
	cmp r0, #0
	bne _08010CDC
	ldr r0, _08010CD0
	ldr r0, [r0]
	ldr r1, _08010CD4
	adds r0, r0, r1
	ldr r1, _08010CD8
	str r1, [r0]
	b _08010D20
	.align 2, 0
_08010CC4: .4byte 0x02021C00
_08010CC8: .4byte gZones
_08010CCC: .4byte gCardInfo
_08010CD0: .4byte 0x08DFF6A4
_08010CD4: .4byte 0x00002298
_08010CD8: .4byte 0x7EDE89F9
_08010CDC:
	ldr r5, _08010D2C
	mov r3, r8
	lsls r4, r3, #2
	add r4, r8
	adds r4, r4, r6
	lsls r4, r4, #2
	add r4, sb
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r0, _08010D30
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r5, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r0, _08010D34
	ldr r2, [r0]
	ldr r0, _08010D38
	adds r3, r2, r0
	ldrh r0, [r7, #0x12]
	ldrh r1, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _08010D3C
	adds r2, r2, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	str r0, [r2]
_08010D20:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010D2C: .4byte gStatMod
_08010D30: .4byte gDuel
_08010D34: .4byte 0x08DFF6A4
_08010D38: .4byte 0x00002298
_08010D3C: .4byte 0x0000229C

	THUMB_FUNC_START sub_8010D40
sub_8010D40: @ 0x08010D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r2, _08010DAC
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	str r6, [sp, #4]
	movs r1, #0xf
	adds r7, r1, #0
	ands r7, r0
	str r7, [sp]
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	str r5, [sp, #8]
	adds r4, r1, #0
	ands r4, r0
	ldr r0, _08010DB0
	mov r8, r0
	ldr r0, [r0]
	ldr r1, _08010DB4
	mov sb, r1
	add r0, sb
	ldr r0, [r0]
	ldr r2, _08010DB8
	mov sl, r2
	cmp r0, sl
	bne _08010D7E
	b _08010E9E
_08010D7E:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08010DCC
	bl WhoseTurn
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08010DBC
	mov r4, r8
	ldr r0, [r4]
	add r0, sb
	movs r1, #0
	str r1, [r0]
	b _08010E9E
	.align 2, 0
_08010DAC: .4byte 0x02021C00
_08010DB0: .4byte 0x08DFF6A4
_08010DB4: .4byte 0x00002298
_08010DB8: .4byte 0x7EDE89F9
_08010DBC:
	mov r1, r8
	ldr r0, [r1]
	add r0, sb
	ldr r1, _08010DC8
	str r1, [r0]
	b _08010E9E
	.align 2, 0
_08010DC8: .4byte 0x7FFFFFFF
_08010DCC:
	ldr r3, _08010DF8
	lsls r0, r5, #2
	adds r0, r0, r5
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08010E18
	mov r4, r8
	ldr r2, [r4]
	ldr r4, _08010DFC
	adds r0, r2, r4
	ldr r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08010E00
	mov r1, sb
	adds r0, r2, r1
	b _08010E9A
	.align 2, 0
_08010DF8: .4byte gZones
_08010DFC: .4byte 0x0000229C
_08010E00:
	ldr r4, _08010E14
	lsls r1, r6, #2
	adds r1, r1, r6
	adds r1, r1, r7
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	b _08010E2E
	.align 2, 0
_08010E14: .4byte gStatMod
_08010E18:
	lsls r0, r6, #2
	adds r0, r0, r6
	ldr r2, [sp]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r0, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08010E6C
	ldr r4, _08010E5C
_08010E2E:
	strh r0, [r4]
	ldr r0, _08010E60
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r4, r8
	ldr r2, [r4]
	add r2, sb
	ldr r0, [r2]
	ldr r1, _08010E64
	ldrh r1, [r1, #0x12]
	subs r0, r0, r1
	ldr r1, _08010E68
	adds r0, r0, r1
	str r0, [r2]
	b _08010E9E
	.align 2, 0
_08010E5C: .4byte gStatMod
_08010E60: .4byte gDuel
_08010E64: .4byte gCardInfo
_08010E68: .4byte 0x7EF0A113
_08010E6C:
	ldr r0, [sp, #4]
	bl sub_80437D4
	adds r4, r0, #0
	ldr r0, [sp, #8]
	bl sub_80437D4
	cmp r4, r0
	ble _08010E94
	mov r2, r8
	ldr r1, [r2]
	add r1, sb
	ldr r0, [r1]
	ldr r4, _08010E90
	adds r0, r0, r4
	str r0, [r1]
	b _08010E9E
	.align 2, 0
_08010E90: .4byte 0x7EEE8FA5
_08010E94:
	mov r1, r8
	ldr r0, [r1]
	add r0, sb
_08010E9A:
	mov r2, sl
	str r2, [r0]
_08010E9E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8010EB0
sub_8010EB0: @ 0x08010EB0
	push {r4, lr}
	ldr r0, _08010EF8
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _08010EFC
	ldr r3, _08010F00
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08010F04
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r2, _08010F08
	ldrb r0, [r2, #0x1e]
	cmp r0, #0
	beq _08010F14
	ldr r0, _08010F0C
	ldr r0, [r0]
	ldr r1, _08010F10
	adds r0, r0, r1
	b _08010F22
	.align 2, 0
_08010EF8: .4byte 0x02021C00
_08010EFC: .4byte gStatMod
_08010F00: .4byte gZones
_08010F04: .4byte gDuel
_08010F08: .4byte gCardInfo
_08010F0C: .4byte 0x08DFF6A4
_08010F10: .4byte 0x00002298
_08010F14:
	ldrh r0, [r2, #0x12]
	cmp r0, #0
	bne _08010F34
	ldr r0, _08010F28
	ldr r0, [r0]
	ldr r2, _08010F2C
	adds r0, r0, r2
_08010F22:
	ldr r1, _08010F30
	str r1, [r0]
	b _08010F44
	.align 2, 0
_08010F28: .4byte 0x08DFF6A4
_08010F2C: .4byte 0x00002298
_08010F30: .4byte 0x7EDE89F9
_08010F34:
	ldr r0, _08010F4C
	ldr r1, [r0]
	ldr r0, _08010F50
	adds r1, r1, r0
	ldrh r0, [r2, #0x12]
	ldr r2, _08010F54
	adds r0, r0, r2
	str r0, [r1]
_08010F44:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010F4C: .4byte 0x08DFF6A4
_08010F50: .4byte 0x00002298
_08010F54: .4byte 0x7EEB5B4A

	THUMB_FUNC_START sub_8010F58
sub_8010F58: @ 0x08010F58
	push {r4, lr}
	ldr r0, _08010FA0
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _08010FA4
	ldr r3, _08010FA8
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08010FAC
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r2, _08010FB0
	ldrb r0, [r2, #0x1e]
	cmp r0, #0
	bne _08010FBC
	ldr r0, _08010FB4
	ldr r0, [r0]
	ldr r1, _08010FB8
	adds r0, r0, r1
	b _08010FCA
	.align 2, 0
_08010FA0: .4byte 0x02021C00
_08010FA4: .4byte gStatMod
_08010FA8: .4byte gZones
_08010FAC: .4byte gDuel
_08010FB0: .4byte gCardInfo
_08010FB4: .4byte 0x08DFF6A4
_08010FB8: .4byte 0x00002298
_08010FBC:
	ldrh r0, [r2, #0x12]
	cmp r0, #0
	bne _08010FDC
	ldr r0, _08010FD0
	ldr r0, [r0]
	ldr r2, _08010FD4
	adds r0, r0, r2
_08010FCA:
	ldr r1, _08010FD8
	str r1, [r0]
	b _08010FEC
	.align 2, 0
_08010FD0: .4byte 0x08DFF6A4
_08010FD4: .4byte 0x00002298
_08010FD8: .4byte 0x7EDE89F9
_08010FDC:
	ldr r0, _08010FF4
	ldr r1, [r0]
	ldr r0, _08010FF8
	adds r1, r1, r0
	ldrh r0, [r2, #0x12]
	ldr r2, _08010FFC
	adds r0, r0, r2
	str r0, [r1]
_08010FEC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010FF4: .4byte 0x08DFF6A4
_08010FF8: .4byte 0x00002298
_08010FFC: .4byte 0x7EEB5B4A
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xFA, 0x89, 0xDE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8011040
sub_8011040: @ 0x08011040
	push {r4, lr}
	ldr r4, _0801106C
	ldr r0, [r4]
	ldr r1, _08011070
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08011074
	cmp r1, r0
	beq _08011064
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _08011070
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_08011064:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801106C: .4byte 0x08DFF6A4
_08011070: .4byte 0x00002298
_08011074: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_8011078
sub_8011078: @ 0x08011078
	push {r4, lr}
	ldr r4, _080110A4
	ldr r0, [r4]
	ldr r1, _080110A8
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080110AC
	cmp r1, r0
	beq _0801109C
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _080110A8
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_0801109C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080110A4: .4byte 0x08DFF6A4
_080110A8: .4byte 0x00002298
_080110AC: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_80110B0
sub_80110B0: @ 0x080110B0
	push {r4, lr}
	ldr r4, _080110DC
	ldr r0, [r4]
	ldr r1, _080110E0
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080110E4
	cmp r1, r0
	beq _080110D4
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _080110E0
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_080110D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080110DC: .4byte 0x08DFF6A4
_080110E0: .4byte 0x00002298
_080110E4: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_80110E8
sub_80110E8: @ 0x080110E8
	push {r4, lr}
	ldr r4, _08011114
	ldr r0, [r4]
	ldr r1, _08011118
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _0801111C
	cmp r1, r0
	beq _0801110C
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _08011118
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_0801110C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011114: .4byte 0x08DFF6A4
_08011118: .4byte 0x00002298
_0801111C: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_8011120
sub_8011120: @ 0x08011120
	push {lr}
	ldr r0, _08011154
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _08011158
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801115C
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _0801116C
	ldr r0, _08011160
	ldr r0, [r0]
	ldr r1, _08011164
	adds r0, r0, r1
	ldr r1, _08011168
	b _08011176
	.align 2, 0
_08011154: .4byte 0x02021C00
_08011158: .4byte gZones
_0801115C: .4byte gCardInfo
_08011160: .4byte 0x08DFF6A4
_08011164: .4byte 0x00002298
_08011168: .4byte 0x7EDE89F9
_0801116C:
	ldr r0, _0801117C
	ldr r0, [r0]
	ldr r1, _08011180
	adds r0, r0, r1
	ldr r1, _08011184
_08011176:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0801117C: .4byte 0x08DFF6A4
_08011180: .4byte 0x00002298
_08011184: .4byte 0x7EDE89FC
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8011190
sub_8011190: @ 0x08011190
	push {r4, r5, lr}
	ldr r4, _080111CC
	ldr r0, [r4]
	ldr r5, _080111D0
	adds r0, r0, r5
	ldr r1, [r0]
	ldr r0, _080111D4
	cmp r1, r0
	beq _080111E0
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080111E0
	bl WhoseTurn
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _080111D8
	ldr r0, [r4]
	adds r0, r0, r5
	movs r1, #0
	b _080111DE
	.align 2, 0
_080111CC: .4byte 0x08DFF6A4
_080111D0: .4byte 0x00002298
_080111D4: .4byte 0x7EDE89F9
_080111D8:
	ldr r0, [r4]
	adds r0, r0, r5
	ldr r1, _080111E8
_080111DE:
	str r1, [r0]
_080111E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080111E8: .4byte 0x7FFFFFFF
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80111F0
sub_80111F0: @ 0x080111F0
	push {lr}
	bl sub_8010910
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80111FC
sub_80111FC: @ 0x080111FC
	push {r4, lr}
	ldr r4, _08011238
	ldr r0, [r4]
	ldr r1, _0801123C
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08011240
	cmp r1, r0
	beq _0801124E
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801124E
	bl WhoseTurn
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08011244
	ldr r0, [r4]
	ldr r1, _0801123C
	adds r0, r0, r1
	movs r1, #0
	b _0801124C
	.align 2, 0
_08011238: .4byte 0x08DFF6A4
_0801123C: .4byte 0x00002298
_08011240: .4byte 0x7EDE89F9
_08011244:
	ldr r0, [r4]
	ldr r1, _08011254
	adds r0, r0, r1
	ldr r1, _08011258
_0801124C:
	str r1, [r0]
_0801124E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011254: .4byte 0x00002298
_08011258: .4byte 0x7FFFFFFF

	THUMB_FUNC_START sub_801125C
sub_801125C: @ 0x0801125C
	push {lr}
	bl sub_8010A40
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8011268
sub_8011268: @ 0x08011268
	push {lr}
	bl sub_8010B08
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8011274
sub_8011274: @ 0x08011274
	push {lr}
	bl sub_8010EB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8011288
sub_8011288: @ 0x08011288
	push {r4, lr}
	ldr r4, _080112B4
	ldr r0, [r4]
	ldr r1, _080112B8
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080112BC
	cmp r1, r0
	beq _080112AC
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _080112B8
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_080112AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080112B4: .4byte 0x08DFF6A4
_080112B8: .4byte 0x00002298
_080112BC: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_80112C0
sub_80112C0: @ 0x080112C0
	push {r4, lr}
	ldr r4, _080112EC
	ldr r0, [r4]
	ldr r1, _080112F0
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080112F4
	cmp r1, r0
	beq _080112E4
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _080112F0
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_080112E4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080112EC: .4byte 0x08DFF6A4
_080112F0: .4byte 0x00002298
_080112F4: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_80112F8
sub_80112F8: @ 0x080112F8
	push {r4, lr}
	ldr r4, _08011324
	ldr r0, [r4]
	ldr r1, _08011328
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _0801132C
	cmp r1, r0
	beq _0801131C
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _08011328
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_0801131C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011324: .4byte 0x08DFF6A4
_08011328: .4byte 0x00002298
_0801132C: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_8011330
sub_8011330: @ 0x08011330
	push {r4, lr}
	ldr r4, _0801135C
	ldr r0, [r4]
	ldr r1, _08011360
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08011364
	cmp r1, r0
	beq _08011354
	movs r0, #2
	bl sub_80432D0
	ldr r2, [r4]
	ldr r1, _08011360
	adds r2, r2, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_08011354:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801135C: .4byte 0x08DFF6A4
_08011360: .4byte 0x00002298
_08011364: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_8011368
sub_8011368: @ 0x08011368
	push {lr}
	ldr r0, _0801139C
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _080113A0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _080113A4
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _080113B4
	ldr r0, _080113A8
	ldr r0, [r0]
	ldr r1, _080113AC
	adds r0, r0, r1
	ldr r1, _080113B0
	b _080113BE
	.align 2, 0
_0801139C: .4byte 0x02021C00
_080113A0: .4byte gZones
_080113A4: .4byte gCardInfo
_080113A8: .4byte 0x08DFF6A4
_080113AC: .4byte 0x00002298
_080113B0: .4byte 0x7EDE89F9
_080113B4:
	ldr r0, _080113C4
	ldr r0, [r0]
	ldr r1, _080113C8
	adds r0, r0, r1
	ldr r1, _080113CC
_080113BE:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080113C4: .4byte 0x08DFF6A4
_080113C8: .4byte 0x00002298
_080113CC: .4byte 0x7EDE89FC
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80113D8
sub_80113D8: @ 0x080113D8
	push {r4, r5, lr}
	ldr r4, _08011414
	ldr r0, [r4]
	ldr r5, _08011418
	adds r0, r0, r5
	ldr r1, [r0]
	ldr r0, _0801141C
	cmp r1, r0
	beq _08011428
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08011428
	bl WhoseTurn
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08011420
	ldr r0, [r4]
	adds r0, r0, r5
	movs r1, #0
	b _08011426
	.align 2, 0
_08011414: .4byte 0x08DFF6A4
_08011418: .4byte 0x00002298
_0801141C: .4byte 0x7EDE89F9
_08011420:
	ldr r0, [r4]
	adds r0, r0, r5
	ldr r1, _08011430
_08011426:
	str r1, [r0]
_08011428:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011430: .4byte 0x7FFFFFFF

	THUMB_FUNC_START sub_8011434
sub_8011434: @ 0x08011434
	push {lr}
	bl sub_80109A8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8011440
sub_8011440: @ 0x08011440
	push {r4, lr}
	ldr r4, _0801147C
	ldr r0, [r4]
	ldr r1, _08011480
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08011484
	cmp r1, r0
	beq _08011492
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08011492
	bl WhoseTurn
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08011488
	ldr r0, [r4]
	ldr r1, _08011480
	adds r0, r0, r1
	movs r1, #0
	b _08011490
	.align 2, 0
_0801147C: .4byte 0x08DFF6A4
_08011480: .4byte 0x00002298
_08011484: .4byte 0x7EDE89F9
_08011488:
	ldr r0, [r4]
	ldr r1, _08011498
	adds r0, r0, r1
	ldr r1, _0801149C
_08011490:
	str r1, [r0]
_08011492:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011498: .4byte 0x00002298
_0801149C: .4byte 0x7FFFFFFF

	THUMB_FUNC_START sub_80114A0
sub_80114A0: @ 0x080114A0
	push {lr}
	bl sub_8010C78
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80114AC
sub_80114AC: @ 0x080114AC
	push {lr}
	bl sub_8010D40
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80114BC
sub_80114BC: @ 0x080114BC
	push {lr}
	bl sub_8010F58
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x0A, 0x48, 0x0F, 0x21
	.byte 0xC0, 0x78, 0x02, 0x09, 0x01, 0x40, 0x09, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00
	.byte 0xC0, 0x18, 0x00, 0x68, 0x00, 0x88, 0x00, 0x28, 0x10, 0xD1, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49
	.byte 0x40, 0x18, 0x05, 0x49, 0x0F, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x3F, 0x5B, 0xEB, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8011528
sub_8011528: @ 0x08011528
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08011574
	ldrb r0, [r2, #2]
	lsrs r5, r0, #4
	movs r1, #0xf
	adds r4, r1, #0
	ands r4, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	mov r8, r2
	adds r6, r1, #0
	ands r6, r0
	ldr r2, _08011578
	lsls r0, r5, #2
	adds r0, r0, r5
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	ldr r1, _0801157C
	cmp r0, r1
	beq _0801158C
	adds r0, r2, #0
	adds r0, #0x3c
	bl NumCardInRow
	cmp r0, #0
	bne _0801158C
	ldr r0, _08011580
	ldr r0, [r0]
	ldr r1, _08011584
	adds r0, r0, r1
	ldr r1, _08011588
	b _0801161E
	.align 2, 0
_08011574: .4byte 0x02021C00
_08011578: .4byte gZones
_0801157C: .4byte 0x00000247
_08011580: .4byte 0x08DFF6A4
_08011584: .4byte 0x00002298
_08011588: .4byte 0x7EDE89F9
_0801158C:
	ldr r0, _080115B4
	adds r7, r0, #0
	subs r7, #0x3c
	lsls r1, r5, #2
	adds r1, r1, r5
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r1, [r1]
	ldrh r1, [r1]
	bl NumCardInRow
	cmp r0, #0
	ble _080115C4
	ldr r0, _080115B8
	ldr r0, [r0]
	ldr r2, _080115BC
	adds r0, r0, r2
	ldr r1, _080115C0
	b _0801161E
	.align 2, 0
_080115B4: .4byte gZones+0x3C
_080115B8: .4byte 0x08DFF6A4
_080115BC: .4byte 0x00002298
_080115C0: .4byte 0x7EDE89F9
_080115C4:
	mov r1, r8
	lsls r0, r1, #2
	add r0, r8
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	bne _080115F0
	ldr r0, _080115E4
	ldr r0, [r0]
	ldr r2, _080115E8
	adds r0, r0, r2
	ldr r1, _080115EC
	b _0801161E
	.align 2, 0
_080115E4: .4byte 0x08DFF6A4
_080115E8: .4byte 0x00002298
_080115EC: .4byte 0x7EEB5B43
_080115F0:
	ldrh r0, [r1]
	bl sub_803EFAC
	cmp r0, #0
	ble _08011614
	ldr r0, _08011608
	ldr r0, [r0]
	ldr r1, _0801160C
	adds r0, r0, r1
	ldr r1, _08011610
	b _0801161E
	.align 2, 0
_08011608: .4byte 0x08DFF6A4
_0801160C: .4byte 0x00002298
_08011610: .4byte 0x7EDE89F9
_08011614:
	ldr r0, _0801162C
	ldr r0, [r0]
	ldr r2, _08011630
	adds r0, r0, r2
	ldr r1, _08011634
_0801161E:
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801162C: .4byte 0x08DFF6A4
_08011630: .4byte 0x00002298
_08011634: .4byte 0x7EEB5B42
	.byte 0x0A, 0x48, 0x0F, 0x21, 0xC0, 0x78, 0x02, 0x09
	.byte 0x01, 0x40, 0x09, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68
	.byte 0x00, 0x88, 0x00, 0x28, 0x10, 0xD1, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49
	.byte 0x0F, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x3F, 0x5B, 0xEB, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x0A, 0x48, 0x0F, 0x21, 0xC0, 0x78, 0x02, 0x09, 0x01, 0x40, 0x09, 0x4B
	.byte 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68, 0x00, 0x88, 0x00, 0x28
	.byte 0x10, 0xD1, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49, 0x0F, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF8, 0xFF, 0xFF, 0x7F, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_80116F0
sub_80116F0: @ 0x080116F0
	push {r4, r5, r6, r7, lr}
	ldr r3, _08011740
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r6, r0, #4
	adds r5, r2, #0
	ands r5, r0
	ldr r7, _08011744
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08011748
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _08011758
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	bne _08011758
	ldr r0, _0801174C
	ldr r0, [r0]
	ldr r1, _08011750
	adds r0, r0, r1
	ldr r1, _08011754
	b _08011762
	.align 2, 0
_08011740: .4byte 0x02021C00
_08011744: .4byte gZones
_08011748: .4byte gCardInfo
_0801174C: .4byte 0x08DFF6A4
_08011750: .4byte 0x00002298
_08011754: .4byte 0x7FFFFFF7
_08011758:
	ldr r0, _0801176C
	ldr r0, [r0]
	ldr r1, _08011770
	adds r0, r0, r1
	ldr r1, _08011774
_08011762:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801176C: .4byte 0x08DFF6A4
_08011770: .4byte 0x00002298
_08011774: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_8011778
sub_8011778: @ 0x08011778
	push {r4, r5, r6, r7, lr}
	ldr r3, _080117B8
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r6, r0, #4
	adds r5, r2, #0
	ands r5, r0
	ldr r7, _080117BC
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _080117C0
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _080117D0
	ldr r0, _080117C4
	ldr r0, [r0]
	ldr r1, _080117C8
	adds r0, r0, r1
	ldr r1, _080117CC
	b _08011806
	.align 2, 0
_080117B8: .4byte 0x02021C00
_080117BC: .4byte gZones
_080117C0: .4byte gCardInfo
_080117C4: .4byte 0x08DFF6A4
_080117C8: .4byte 0x00002298
_080117CC: .4byte 0x7EDE89F9
_080117D0:
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080117FC
	ldr r0, _080117F0
	ldr r0, [r0]
	ldr r1, _080117F4
	adds r0, r0, r1
	ldr r1, _080117F8
	b _08011806
	.align 2, 0
_080117F0: .4byte 0x08DFF6A4
_080117F4: .4byte 0x00002298
_080117F8: .4byte 0x7EDE89F9
_080117FC:
	ldr r0, _08011810
	ldr r0, [r0]
	ldr r1, _08011814
	adds r0, r0, r1
	ldr r1, _08011818
_08011806:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011810: .4byte 0x08DFF6A4
_08011814: .4byte 0x00002298
_08011818: .4byte 0x7FFFFFF7
	.byte 0x0A, 0x48, 0x0F, 0x21
	.byte 0xC0, 0x78, 0x02, 0x09, 0x01, 0x40, 0x09, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00
	.byte 0xC0, 0x18, 0x00, 0x68, 0x00, 0x88, 0x00, 0x28, 0x10, 0xD1, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49
	.byte 0x40, 0x18, 0x05, 0x49, 0x0F, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF6, 0xFF, 0xFF, 0x7F, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8011878
sub_8011878: @ 0x08011878
	push {r4, lr}
	ldr r0, _080118C8
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _080118CC
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r3
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _080118D0
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _080118AC
	ldr r0, _080118D4
	ldr r0, [r0]
	ldr r1, _080118D8
	adds r0, r0, r1
	ldr r1, _080118DC
	str r1, [r0]
_080118AC:
	ldr r0, [r4]
	ldrh r1, [r0]
	cmp r1, #0xe9
	beq _080118B6
	ldr r0, _080118E0
_080118B6:
	ldr r0, _080118D4
	ldr r0, [r0]
	ldr r1, _080118D8
	adds r0, r0, r1
	ldr r1, _080118DC
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080118C8: .4byte 0x02021C00
_080118CC: .4byte gZones
_080118D0: .4byte gCardInfo
_080118D4: .4byte 0x08DFF6A4
_080118D8: .4byte 0x00002298
_080118DC: .4byte 0x7EDE89F9
_080118E0: .4byte 0x000002BB
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80118E8
sub_80118E8: @ 0x080118E8
	push {lr}
	bl sub_803EF7C
	cmp r0, #0x1f
	bne _080118FE
	ldr r0, _08011904
	ldr r0, [r0]
	ldr r1, _08011908
	adds r0, r0, r1
	ldr r1, _0801190C
	str r1, [r0]
_080118FE:
	pop {r0}
	bx r0
	.align 2, 0
_08011904: .4byte 0x08DFF6A4
_08011908: .4byte 0x00002298
_0801190C: .4byte 0x7FFFFFFF
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8011940
sub_8011940: @ 0x08011940
	push {r4, lr}
	ldr r0, _08011990
	movs r2, #0xf
	ldrb r0, [r0, #3]
	lsrs r3, r0, #4
	ands r2, r0
	ldr r4, _08011994
	ldr r0, _08011998
	lsls r1, r3, #2
	adds r1, r1, r3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _0801199C
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _080119A0
	ldr r2, [r0]
	ldr r0, _080119A4
	adds r2, r2, r0
	ldr r1, _080119A8
	ldrh r0, [r1, #0x12]
	ldrh r1, [r1, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011990: .4byte 0x02021C00
_08011994: .4byte gStatMod
_08011998: .4byte gZones
_0801199C: .4byte gDuel
_080119A0: .4byte 0x08DFF6A4
_080119A4: .4byte 0x00002298
_080119A8: .4byte gCardInfo

	THUMB_FUNC_START sub_80119AC
sub_80119AC: @ 0x080119AC
	push {r4, lr}
	ldr r0, _08011A00
	movs r2, #0xf
	ldrb r0, [r0, #3]
	lsrs r3, r0, #4
	ands r2, r0
	ldr r4, _08011A04
	ldr r0, _08011A08
	lsls r1, r3, #2
	adds r1, r1, r3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08011A0C
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _08011A10
	ldr r0, [r0]
	ldr r1, _08011A14
	adds r2, r0, r1
	ldr r1, _08011A18
	ldrh r0, [r1, #0x12]
	ldrh r1, [r1, #0x14]
	adds r0, r0, r1
	ldr r1, [r2]
	cmp r1, r0
	bhs _08011A20
	ldr r3, _08011A1C
	adds r0, r1, r3
	b _08011A22
	.align 2, 0
_08011A00: .4byte 0x02021C00
_08011A04: .4byte gStatMod
_08011A08: .4byte gZones
_08011A0C: .4byte gDuel
_08011A10: .4byte 0x08DFF6A4
_08011A14: .4byte 0x00002298
_08011A18: .4byte gCardInfo
_08011A1C: .4byte 0x7F08323B
_08011A20:
	ldr r0, _08011A2C
_08011A22:
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011A2C: .4byte 0x7EDE89F9
	.byte 0x0A, 0x48, 0xC0, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40, 0x09, 0x4B, 0x90, 0x00, 0x80, 0x18
	.byte 0x40, 0x18, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68, 0x01, 0x88, 0x3E, 0x29, 0x10, 0xD1, 0x05, 0x48
	.byte 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49, 0x21, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02
	.byte 0xD0, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x69, 0x51, 0xF5, 0x7F
	.byte 0x04, 0x48, 0x81, 0x42, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49
	.byte 0x0D, 0xE0, 0x00, 0x00, 0xA1, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x69, 0x51, 0xF5, 0x7F, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8011AB0
sub_8011AB0: @ 0x08011AB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _08011B58
	ldrb r0, [r2, #2]
	lsrs r5, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #4]
	lsrs r6, r0, #4
	adds r4, r1, #0
	ands r4, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	str r2, [sp]
	adds r7, r1, #0
	ands r7, r0
	ldr r0, _08011B5C
	mov sl, r0
	lsls r0, r5, #2
	adds r0, r0, r5
	adds r0, r0, r3
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r1, _08011B60
	mov r8, r1
	ldrb r1, [r1, #0x1d]
	ldr r5, _08011B64
	ldr r0, _08011B68
	lsls r1, r1, #3
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	movs r1, #0
	strh r0, [r5]
	ldr r0, _08011B6C
	adds r0, #0xf0
	mov sb, r0
	ldrb r0, [r0]
	strb r0, [r5, #2]
	strb r1, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	mov r2, r8
	ldrh r2, [r2, #0x12]
	str r2, [sp, #4]
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r5]
	mov r3, sb
	ldrb r1, [r3]
	strb r1, [r5, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r1, [sp, #4]
	mov r0, r8
	ldrh r0, [r0, #0x12]
	cmp r1, r0
	bhi _08011B7C
	ldr r0, _08011B70
	ldr r0, [r0]
	ldr r1, _08011B74
	adds r0, r0, r1
	ldr r1, _08011B78
	b _08011BEA
	.align 2, 0
_08011B58: .4byte 0x02021C00
_08011B5C: .4byte gZones
_08011B60: .4byte gCardInfo
_08011B64: .4byte gStatMod
_08011B68: .4byte gUnk8E00FA8
_08011B6C: .4byte gDuel
_08011B70: .4byte 0x08DFF6A4
_08011B74: .4byte 0x00002298
_08011B78: .4byte 0x7EDE89F9
_08011B7C:
	ldr r4, _08011BC8
	ldr r1, [r4]
	ldr r2, _08011BCC
	adds r1, r1, r2
	mov r3, r8
	ldrh r2, [r3, #0x12]
	ldr r0, _08011BD0
	subs r0, r0, r2
	str r0, [r1]
	ldr r1, [sp]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r7
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r5]
	mov r2, sb
	ldrb r1, [r2]
	strb r1, [r5, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r0, [sp, #4]
	mov r3, r8
	ldrh r3, [r3, #0x12]
	cmp r0, r3
	bhi _08011BD8
	ldr r0, [r4]
	ldr r1, _08011BCC
	adds r0, r0, r1
	ldr r1, _08011BD4
	b _08011BEA
	.align 2, 0
_08011BC8: .4byte 0x08DFF6A4
_08011BCC: .4byte 0x00002298
_08011BD0: .4byte 0x0000FFFE
_08011BD4: .4byte 0x7EDE89F9
_08011BD8:
	ldr r0, [r4]
	ldr r2, _08011BFC
	adds r0, r0, r2
	ldr r1, [r0]
	mov r3, r8
	ldrh r2, [r3, #0x12]
	subs r1, r1, r2
	ldr r2, _08011C00
	adds r1, r1, r2
_08011BEA:
	str r1, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011BFC: .4byte 0x00002298
_08011C00: .4byte 0x7FF42E87

	THUMB_FUNC_START sub_8011C04
sub_8011C04: @ 0x08011C04
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r4, _08011C20
	mov r0, sp
	adds r1, r4, #0
	bl sub_804B144
	cmp r0, #1
	bne _08011C24
	movs r1, #0x1d
	b _08011C72
	.align 2, 0
_08011C20: .4byte 0x08E01090
_08011C24:
	adds r1, r4, #0
	subs r1, #8
	mov r0, sp
	bl sub_804B144
	cmp r0, #1
	bne _08011C36
	movs r1, #0x1c
	b _08011C72
_08011C36:
	adds r1, r4, #0
	subs r1, #0x10
	mov r0, sp
	bl sub_804B144
	cmp r0, #1
	bne _08011C48
	movs r1, #0x1b
	b _08011C72
_08011C48:
	adds r1, r4, #0
	subs r1, #0xc0
	mov r0, sp
	bl sub_804B144
	cmp r0, #1
	beq _08011C70
	ldr r0, _08011C64
	ldr r0, [r0]
	ldr r1, _08011C68
	adds r0, r0, r1
	ldr r1, _08011C6C
	b _08011D68
	.align 2, 0
_08011C64: .4byte 0x08DFF6A4
_08011C68: .4byte 0x00002298
_08011C6C: .4byte 0x7EDE89F9
_08011C70:
	movs r1, #5
_08011C72:
	ldr r4, _08011CDC
	ldr r0, _08011CE0
	lsls r1, r1, #3
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	movs r1, #0
	strh r0, [r4]
	ldr r0, _08011CE4
	adds r0, #0xf0
	mov r8, r0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	strb r1, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r7, _08011CE8
	ldrh r2, [r7, #0x12]
	mov sb, r2
	ldr r1, _08011CEC
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #2
	adds r6, r1, #0
	adds r6, #0x28
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldrh r2, [r7, #0x12]
	cmp sb, r2
	bhi _08011CFC
	ldr r0, _08011CF0
	ldr r0, [r0]
	ldr r1, _08011CF4
	adds r0, r0, r1
	ldr r1, _08011CF8
	b _08011D68
	.align 2, 0
_08011CDC: .4byte gStatMod
_08011CE0: .4byte gUnk8E00FA8
_08011CE4: .4byte gDuel
_08011CE8: .4byte gCardInfo
_08011CEC: .4byte gZones
_08011CF0: .4byte 0x08DFF6A4
_08011CF4: .4byte 0x00002298
_08011CF8: .4byte 0x7EDE89F9
_08011CFC:
	ldr r5, _08011D48
	ldr r1, [r5]
	ldr r2, _08011D4C
	adds r1, r1, r2
	ldrh r2, [r7, #0x12]
	ldr r0, _08011D50
	subs r0, r0, r2
	str r0, [r1]
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #2]
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldrh r2, [r7, #0x12]
	cmp sb, r2
	bhs _08011D58
	ldr r0, [r5]
	ldr r1, _08011D4C
	adds r0, r0, r1
	ldr r1, _08011D54
	b _08011D68
	.align 2, 0
_08011D48: .4byte 0x08DFF6A4
_08011D4C: .4byte 0x00002298
_08011D50: .4byte 0x0000FFFE
_08011D54: .4byte 0x7EDE89F9
_08011D58:
	ldr r0, [r5]
	ldr r2, _08011D78
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r2, [r7, #0x12]
	subs r1, r1, r2
	ldr r2, _08011D7C
	adds r1, r1, r2
_08011D68:
	str r1, [r0]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011D78: .4byte 0x00002298
_08011D7C: .4byte 0x7FF42E87

	THUMB_FUNC_START sub_8011D80
sub_8011D80: @ 0x08011D80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	movs r6, #0
	ldr r0, _08011DFC
	mov sl, r0
	ldr r5, _08011E00
	ldr r1, _08011E04
	mov sb, r1
	ldr r0, _08011E08
	mov r8, r0
_08011D9C:
	lsls r0, r6, #2
	add r0, sl
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _08011DE0
	bl IsGodCard
	cmp r0, #1
	beq _08011DE0
	adds r0, r4, #0
	bl CardPosition
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08011DE0
	ldrh r0, [r4]
	strh r0, [r5]
	mov r1, sb
	ldrb r0, [r1]
	strb r0, [r5, #2]
	adds r0, r4, #0
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r0, _08011E0C
	ldrh r0, [r0, #0x12]
	cmp r0, r8
	bls _08011DE0
	adds r7, #1
_08011DE0:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _08011D9C
	cmp r7, #0
	bne _08011E1C
	ldr r0, _08011E10
	ldr r0, [r0]
	ldr r1, _08011E14
	adds r0, r0, r1
	ldr r1, _08011E18
	b _08011E26
	.align 2, 0
_08011DFC: .4byte gZones+0x14
_08011E00: .4byte gStatMod
_08011E04: .4byte gDuel+0xF0
_08011E08: .4byte 0x000005DB
_08011E0C: .4byte gCardInfo
_08011E10: .4byte 0x08DFF6A4
_08011E14: .4byte 0x00002298
_08011E18: .4byte 0x7EDE89F9
_08011E1C:
	ldr r0, _08011E38
	ldr r0, [r0]
	ldr r1, _08011E3C
	adds r0, r0, r1
	ldr r1, _08011E40
_08011E26:
	str r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011E38: .4byte 0x08DFF6A4
_08011E3C: .4byte 0x00002298
_08011E40: .4byte 0x7FF9973C

	THUMB_FUNC_START sub_8011E44
sub_8011E44: @ 0x08011E44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r2, _08011EC4
	ldrb r0, [r2, #2]
	lsrs r4, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #4]
	lsrs r5, r0, #4
	mov sl, r5
	adds r7, r1, #0
	ands r7, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	mov sb, r2
	adds r5, r1, #0
	ands r5, r0
	ldr r0, _08011EC8
	mov r8, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r3
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08011ECC
	ldrb r0, [r0, #0x1d]
	mov ip, r0
	mov r1, sl
	lsls r0, r1, #2
	add r0, sl
	adds r0, r0, r7
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldr r6, _08011ED0
	mov r2, ip
	lsls r4, r2, #3
	adds r0, r6, #4
	adds r0, r4, r0
	ldrh r1, [r1]
	ldrh r3, [r0]
	cmp r1, r3
	beq _08011F14
	adds r0, r6, #6
	adds r0, r4, r0
	ldrh r0, [r0]
	cmp r1, r0
	beq _08011EE0
	ldr r0, _08011ED4
	ldr r0, [r0]
	ldr r4, _08011ED8
	adds r0, r0, r4
	ldr r1, _08011EDC
	b _08012044
	.align 2, 0
_08011EC4: .4byte 0x02021C00
_08011EC8: .4byte gZones
_08011ECC: .4byte gCardInfo
_08011ED0: .4byte gUnk8E00FA8
_08011ED4: .4byte 0x08DFF6A4
_08011ED8: .4byte 0x00002298
_08011EDC: .4byte 0x7EDE89F9
_08011EE0:
	lsls r1, r5, #2
	mov r5, sb
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #2
	adds r0, r1, r0
	add r0, r8
	ldr r0, [r0]
	ldrh r0, [r0]
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmp r0, r3
	beq _08011F4C
	ldr r0, _08011F08
	ldr r0, [r0]
	ldr r1, _08011F0C
	adds r0, r0, r1
	ldr r1, _08011F10
	b _08012044
	.align 2, 0
_08011F08: .4byte 0x08DFF6A4
_08011F0C: .4byte 0x00002298
_08011F10: .4byte 0x7EDE89F9
_08011F14:
	lsls r2, r5, #2
	mov r5, sb
	lsls r3, r5, #2
	adds r0, r3, r5
	lsls r0, r0, #2
	adds r0, r2, r0
	add r0, r8
	ldr r1, [r0]
	adds r0, r6, #6
	adds r0, r4, r0
	ldrh r1, [r1]
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08011F4C
	ldr r0, _08011F40
	ldr r0, [r0]
	ldr r1, _08011F44
	adds r0, r0, r1
	ldr r1, _08011F48
	b _08012044
	.align 2, 0
_08011F40: .4byte 0x08DFF6A4
_08011F44: .4byte 0x00002298
_08011F48: .4byte 0x7EDE89F9
_08011F4C:
	ldr r4, _08011FB4
	ldr r0, _08011FB8
	mov r2, ip
	lsls r1, r2, #3
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	movs r1, #0
	strh r0, [r4]
	ldr r0, _08011FBC
	adds r0, #0xf0
	mov r8, r0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	strb r1, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r6, _08011FC0
	ldrh r5, [r6, #0x12]
	str r5, [sp]
	mov r1, sl
	lsls r0, r1, #2
	add r0, sl
	adds r0, r0, r7
	lsls r0, r0, #2
	ldr r2, _08011FC4
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	mov r5, r8
	ldrb r1, [r5]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, [sp]
	ldrh r1, [r6, #0x12]
	cmp r0, r1
	bhs _08011FD4
	ldr r0, _08011FC8
	ldr r0, [r0]
	ldr r2, _08011FCC
	adds r0, r0, r2
	ldr r1, _08011FD0
	b _08012044
	.align 2, 0
_08011FB4: .4byte gStatMod
_08011FB8: .4byte gUnk8E00FA8
_08011FBC: .4byte gDuel
_08011FC0: .4byte gCardInfo
_08011FC4: .4byte gZones
_08011FC8: .4byte 0x08DFF6A4
_08011FCC: .4byte 0x00002298
_08011FD0: .4byte 0x7EDE89F9
_08011FD4:
	ldr r5, _08012020
	ldr r1, [r5]
	ldr r0, _08012024
	adds r1, r1, r0
	ldrh r2, [r6, #0x12]
	ldr r0, _08012028
	subs r0, r0, r2
	str r0, [r1]
	ldr r0, [sp, #8]
	add r0, sb
	lsls r0, r0, #2
	ldr r1, [sp, #4]
	adds r0, r1, r0
	ldr r2, _0801202C
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	mov r2, r8
	ldrb r1, [r2]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r4, [sp]
	ldrh r0, [r6, #0x12]
	cmp r4, r0
	bhs _08012034
	ldr r0, [r5]
	ldr r1, _08012024
	adds r0, r0, r1
	ldr r1, _08012030
	b _08012044
	.align 2, 0
_08012020: .4byte 0x08DFF6A4
_08012024: .4byte 0x00002298
_08012028: .4byte 0x0000FFFE
_0801202C: .4byte gZones
_08012030: .4byte 0x7EDE89F9
_08012034:
	ldr r0, [r5]
	ldr r2, _08012058
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r2, [r6, #0x12]
	subs r1, r1, r2
	ldr r4, _0801205C
	adds r1, r1, r4
_08012044:
	str r1, [r0]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012058: .4byte 0x00002298
_0801205C: .4byte 0x7FF42E87

	THUMB_FUNC_START sub_8012060
sub_8012060: @ 0x08012060
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	movs r5, #0
	ldr r7, _080120B4
_08012068:
	lsls r0, r5, #2
	adds r0, r0, r7
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801209A
	bl IsGodCard
	cmp r0, #1
	beq _0801209A
	adds r0, r4, #0
	bl CardPosition
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801209A
	ldrh r0, [r4]
	bl SetCardInfo
	ldr r0, _080120B8
	ldrb r0, [r0, #0x16]
	cmp r0, #4
	bne _0801209A
	adds r6, #1
_0801209A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08012068
	cmp r6, #0
	bne _080120C8
	ldr r0, _080120BC
	ldr r0, [r0]
	ldr r1, _080120C0
	adds r0, r0, r1
	ldr r1, _080120C4
	b _080120D2
	.align 2, 0
_080120B4: .4byte gZones+0x14
_080120B8: .4byte gCardInfo
_080120BC: .4byte 0x08DFF6A4
_080120C0: .4byte 0x00002298
_080120C4: .4byte 0x7EDE89F9
_080120C8:
	ldr r0, _080120DC
	ldr r0, [r0]
	ldr r1, _080120E0
	adds r0, r0, r1
	ldr r1, _080120E4
_080120D2:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080120DC: .4byte 0x08DFF6A4
_080120E0: .4byte 0x00002298
_080120E4: .4byte 0x7FF9973C
	.byte 0x0A, 0x48, 0xC0, 0x78, 0x02, 0x09, 0x0F, 0x21
	.byte 0x01, 0x40, 0x09, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68
	.byte 0x01, 0x88, 0x06, 0x48, 0x06, 0x48, 0x00, 0x68, 0x06, 0x49, 0x40, 0x18, 0x06, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0x87, 0x01, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x70, 0xB5, 0x17, 0x48
	.byte 0xC0, 0x78, 0x03, 0x09, 0x0F, 0x22, 0x02, 0x40, 0x15, 0x4D, 0x28, 0x68, 0x15, 0x49, 0x40, 0x18
	.byte 0x00, 0x68, 0x15, 0x4E, 0xB0, 0x42, 0x34, 0xD0, 0x14, 0x4C, 0x15, 0x48, 0x99, 0x00, 0xC9, 0x18
	.byte 0x89, 0x18, 0x89, 0x00, 0x09, 0x18, 0x08, 0x68, 0x00, 0x88, 0x20, 0x80, 0x11, 0x48, 0xF0, 0x30
	.byte 0x00, 0x78, 0xA0, 0x70, 0x08, 0x68, 0x2E, 0xF0, 0x99, 0xFA, 0xE0, 0x70, 0x20, 0x1C, 0xF9, 0xF7
	.byte 0xD3, 0xF8, 0x28, 0x68, 0x07, 0x49, 0x42, 0x18, 0x0B, 0x49, 0x48, 0x8A, 0x89, 0x8A, 0x40, 0x18
	.byte 0x11, 0x68, 0x81, 0x42, 0x14, 0xD2, 0x09, 0x48, 0x10, 0x60, 0x12, 0xE0, 0x00, 0x1C, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0xC0, 0x1A, 0x02, 0x02
	.byte 0xD0, 0x3F, 0x02, 0x02, 0xC0, 0x3E, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0x69, 0x51, 0xF5, 0x7F
	.byte 0x16, 0x60, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_80121B8
sub_80121B8: @ 0x080121B8
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	movs r5, #0
	ldr r7, _0801220C
_080121C0:
	lsls r0, r5, #2
	adds r0, r0, r7
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _080121F2
	bl IsGodCard
	cmp r0, #1
	beq _080121F2
	adds r0, r4, #0
	bl CardPosition
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080121F2
	ldrh r0, [r4]
	bl SetCardInfo
	ldr r0, _08012210
	ldrb r0, [r0, #0x16]
	cmp r0, #0xf
	bne _080121F2
	adds r6, #1
_080121F2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080121C0
	cmp r6, #0
	bne _08012220
	ldr r0, _08012214
	ldr r0, [r0]
	ldr r1, _08012218
	adds r0, r0, r1
	ldr r1, _0801221C
	b _0801222A
	.align 2, 0
_0801220C: .4byte gZones+0x14
_08012210: .4byte gCardInfo
_08012214: .4byte 0x08DFF6A4
_08012218: .4byte 0x00002298
_0801221C: .4byte 0x7EDE89F9
_08012220:
	ldr r0, _08012234
	ldr r0, [r0]
	ldr r1, _08012238
	adds r0, r0, r1
	ldr r1, _0801223C
_0801222A:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012234: .4byte 0x08DFF6A4
_08012238: .4byte 0x00002298
_0801223C: .4byte 0x7FF9973C

	THUMB_FUNC_START sub_8012240
sub_8012240: @ 0x08012240
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r2, _08012310
	ldrb r0, [r2, #2]
	lsrs r5, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r6, r0, #4
	adds r4, r1, #0
	ands r4, r0
	ldrb r0, [r2, #4]
	lsrs r7, r0, #4
	str r7, [sp]
	adds r7, r1, #0
	ands r7, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	str r2, [sp, #4]
	mov r8, r1
	ands r1, r0
	mov r8, r1
	ldr r2, _08012314
	mov sl, r2
	lsls r0, r5, #2
	adds r0, r0, r5
	adds r0, r0, r3
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r3, _08012318
	mov sb, r3
	ldrb r2, [r3, #0x1d]
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	ldr r3, _0801231C
	lsls r0, r2, #3
	adds r0, r0, r3
	ldrh r1, [r1]
	movs r2, #0x1a
	ldrh r0, [r0]
	cmp r1, r0
	bne _080122B0
	movs r2, #0x18
_080122B0:
	ldr r4, _08012320
	lsls r0, r2, #3
	adds r1, r3, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r4]
	ldr r0, _08012324
	adds r6, r0, #0
	adds r6, #0xf0
	ldrb r0, [r6]
	strb r0, [r4, #2]
	strb r1, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	mov r0, sb
	ldrh r0, [r0, #0x12]
	str r0, [sp, #8]
	ldr r1, [sp]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r7
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldrb r1, [r6]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r3, [sp, #8]
	mov r2, sb
	ldrh r2, [r2, #0x12]
	cmp r3, r2
	bhi _08012334
	ldr r0, _08012328
	ldr r0, [r0]
	ldr r3, _0801232C
	adds r0, r0, r3
	ldr r1, _08012330
	b _080123A2
	.align 2, 0
_08012310: .4byte 0x02021C00
_08012314: .4byte gZones
_08012318: .4byte gCardInfo
_0801231C: .4byte gUnk8E00FA8
_08012320: .4byte gStatMod
_08012324: .4byte gDuel
_08012328: .4byte 0x08DFF6A4
_0801232C: .4byte 0x00002298
_08012330: .4byte 0x7EDE89F9
_08012334:
	ldr r5, _08012380
	ldr r1, [r5]
	ldr r7, _08012384
	adds r1, r1, r7
	mov r0, sb
	ldrh r2, [r0, #0x12]
	ldr r0, _08012388
	subs r0, r0, r2
	str r0, [r1]
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	add r0, r8
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldrb r1, [r6]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r3, [sp, #8]
	mov r2, sb
	ldrh r2, [r2, #0x12]
	cmp r3, r2
	bhi _08012390
	ldr r0, [r5]
	adds r3, r7, #0
	adds r0, r0, r3
	ldr r1, _0801238C
	b _080123A2
	.align 2, 0
_08012380: .4byte 0x08DFF6A4
_08012384: .4byte 0x00002298
_08012388: .4byte 0x0000FFFE
_0801238C: .4byte 0x7EDE89F9
_08012390:
	ldr r0, [r5]
	ldr r7, _080123B4
	adds r0, r0, r7
	ldr r1, [r0]
	mov r3, sb
	ldrh r2, [r3, #0x12]
	subs r1, r1, r2
	ldr r7, _080123B8
	adds r1, r1, r7
_080123A2:
	str r1, [r0]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080123B4: .4byte 0x00002298
_080123B8: .4byte 0x7FF42E87

	THUMB_FUNC_START sub_80123BC
sub_80123BC: @ 0x080123BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r0, _08012410
	mov r8, r0
	ldr r4, _08012414
	ldr r7, _08012418
	ldr r6, _0801241C
_080123CE:
	lsls r0, r5, #2
	mov r1, r8
	adds r3, r0, r1
	ldr r0, [r3]
	ldrh r2, [r0]
	cmp r2, #0
	beq _08012430
	ldrb r1, [r0, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08012430
	strh r2, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #2]
	ldr r0, [r3]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _08012420
	ldrh r0, [r0, #0x12]
	cmp r0, r6
	bls _08012430
	ldr r0, _08012424
	ldr r0, [r0]
	ldr r1, _08012428
	adds r0, r0, r1
	ldr r1, _0801242C
	b _08012444
	.align 2, 0
_08012410: .4byte gZones+0x14
_08012414: .4byte gStatMod
_08012418: .4byte gDuel+0xF0
_0801241C: .4byte 0x000005DB
_08012420: .4byte gCardInfo
_08012424: .4byte 0x08DFF6A4
_08012428: .4byte 0x00002298
_0801242C: .4byte 0x7EEB5B47
_08012430:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080123CE
	ldr r0, _08012450
	ldr r0, [r0]
	ldr r1, _08012454
	adds r0, r0, r1
	ldr r1, _08012458
_08012444:
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012450: .4byte 0x08DFF6A4
_08012454: .4byte 0x00002298
_08012458: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_801245C
sub_801245C: @ 0x0801245C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0801249C
_08012462:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r0, #0
	beq _080124B0
	ldrb r1, [r2, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080124B0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080124B0
	ldrh r0, [r2]
	bl SetCardInfo
	ldr r0, _080124A0
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _080124B0
	ldr r0, _080124A4
	ldr r0, [r0]
	ldr r1, _080124A8
	adds r0, r0, r1
	ldr r1, _080124AC
	b _080124C4
	.align 2, 0
_0801249C: .4byte gZones+0x28
_080124A0: .4byte gCardInfo
_080124A4: .4byte 0x08DFF6A4
_080124A8: .4byte 0x00002298
_080124AC: .4byte 0x7FFFFFF5
_080124B0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08012462
	ldr r0, _080124CC
	ldr r0, [r0]
	ldr r1, _080124D0
	adds r0, r0, r1
	ldr r1, _080124D4
_080124C4:
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080124CC: .4byte 0x08DFF6A4
_080124D0: .4byte 0x00002298
_080124D4: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_80124D8
sub_80124D8: @ 0x080124D8
	push {lr}
	ldr r1, _080124F0
	ldr r0, _080124F4
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_080124F0: .4byte 0x08DFFA48
_080124F4: .4byte 0x0201CB3C

	THUMB_FUNC_START sub_80124F8
sub_80124F8: @ 0x080124F8
	push {lr}
	ldr r0, _08012534
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _08012538
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r2, _0801253C
	ldr r1, _08012540
	ldrb r0, [r1, #0x1a]
	strb r0, [r2]
	ldr r2, _08012544
	ldrb r0, [r1, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_08012534: .4byte 0x02021C00
_08012538: .4byte gZones
_0801253C: .4byte 0x0201CB3C
_08012540: .4byte gCardInfo
_08012544: .4byte 0x08DFF7F0
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_80125F0
sub_80125F0: @ 0x080125F0
	push {lr}
	movs r0, #2
	bl sub_80432D0
	ldr r1, _08012608
	ldr r1, [r1]
	ldr r2, _0801260C
	adds r1, r1, r2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08012608: .4byte 0x08DFF6A4
_0801260C: .4byte 0x00002298

	THUMB_FUNC_START sub_8012610
sub_8012610: @ 0x08012610
	push {lr}
	movs r0, #2
	bl sub_80432D0
	adds r2, r0, #0
	ldr r0, _0801262C
	ldr r0, [r0]
	ldr r3, _08012630
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r2, r0
	bhi _08012638
	ldr r0, _08012634
	b _0801263C
	.align 2, 0
_0801262C: .4byte 0x08DFF6A4
_08012630: .4byte 0x00002298
_08012634: .4byte 0x7EDE89F9
_08012638:
	ldr r3, _08012644
	adds r0, r2, r3
_0801263C:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08012644: .4byte 0x7FC874FF

	THUMB_FUNC_START sub_8012648
sub_8012648: @ 0x08012648
	push {lr}
	movs r0, #2
	bl sub_80432D0
	ldr r1, _08012660
	ldr r1, [r1]
	ldr r2, _08012664
	adds r1, r1, r2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08012660: .4byte 0x08DFF6A4
_08012664: .4byte 0x00002298

	THUMB_FUNC_START sub_8012668
sub_8012668: @ 0x08012668
	push {lr}
	movs r0, #2
	bl sub_80432D0
	adds r2, r0, #0
	ldr r0, _08012684
	ldr r0, [r0]
	ldr r3, _08012688
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r2, r0
	bhi _08012690
	ldr r0, _0801268C
	b _08012694
	.align 2, 0
_08012684: .4byte 0x08DFF6A4
_08012688: .4byte 0x00002298
_0801268C: .4byte 0x7EDE89F9
_08012690:
	ldr r3, _0801269C
	adds r0, r2, r3
_08012694:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801269C: .4byte 0x7FC874FF

	THUMB_FUNC_START sub_80126A0
sub_80126A0: @ 0x080126A0
	push {lr}
	movs r0, #2
	bl sub_80432D0
	ldr r1, _080126B8
	ldr r1, [r1]
	ldr r2, _080126BC
	adds r1, r1, r2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080126B8: .4byte 0x08DFF6A4
_080126BC: .4byte 0x00002298

	THUMB_FUNC_START sub_80126C0
sub_80126C0: @ 0x080126C0
	push {lr}
	movs r0, #2
	bl sub_80432D0
	adds r2, r0, #0
	ldr r0, _080126DC
	ldr r0, [r0]
	ldr r3, _080126E0
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r2, r0
	bhi _080126E8
	ldr r0, _080126E4
	b _080126EC
	.align 2, 0
_080126DC: .4byte 0x08DFF6A4
_080126E0: .4byte 0x00002298
_080126E4: .4byte 0x7EDE89F9
_080126E8:
	ldr r3, _080126F4
	adds r0, r2, r3
_080126EC:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080126F4: .4byte 0x7FC874FF

	THUMB_FUNC_START sub_80126F8
sub_80126F8: @ 0x080126F8
	push {lr}
	movs r0, #2
	bl sub_80432D0
	ldr r1, _08012710
	ldr r1, [r1]
	ldr r2, _08012714
	adds r1, r1, r2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08012710: .4byte 0x08DFF6A4
_08012714: .4byte 0x00002298

	THUMB_FUNC_START sub_8012718
sub_8012718: @ 0x08012718
	push {lr}
	movs r0, #2
	bl sub_80432D0
	adds r2, r0, #0
	ldr r0, _08012734
	ldr r0, [r0]
	ldr r3, _08012738
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r2, r0
	bhi _08012740
	ldr r0, _0801273C
	b _08012744
	.align 2, 0
_08012734: .4byte 0x08DFF6A4
_08012738: .4byte 0x00002298
_0801273C: .4byte 0x7EDE89F9
_08012740:
	ldr r3, _0801274C
	adds r0, r2, r3
_08012744:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801274C: .4byte 0x7FC874FF

	THUMB_FUNC_START sub_8012750
sub_8012750: @ 0x08012750
	push {lr}
	movs r0, #2
	bl sub_80432D0
	ldr r1, _08012768
	ldr r1, [r1]
	ldr r2, _0801276C
	adds r1, r1, r2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08012768: .4byte 0x08DFF6A4
_0801276C: .4byte 0x00002298

	THUMB_FUNC_START sub_8012770
sub_8012770: @ 0x08012770
	push {lr}
	movs r0, #2
	bl sub_80432D0
	adds r2, r0, #0
	ldr r0, _0801278C
	ldr r0, [r0]
	ldr r3, _08012790
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r2, r0
	bhi _08012798
	ldr r0, _08012794
	b _0801279C
	.align 2, 0
_0801278C: .4byte 0x08DFF6A4
_08012790: .4byte 0x00002298
_08012794: .4byte 0x7EDE89F9
_08012798:
	ldr r3, _080127A4
	adds r0, r2, r3
_0801279C:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080127A4: .4byte 0x7FC874FF

	THUMB_FUNC_START sub_80127A8
sub_80127A8: @ 0x080127A8
	push {lr}
	movs r0, #2
	bl sub_80432D0
	ldr r1, _080127C0
	ldr r1, [r1]
	ldr r2, _080127C4
	adds r1, r1, r2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080127C0: .4byte 0x08DFF6A4
_080127C4: .4byte 0x00002298

	THUMB_FUNC_START sub_80127C8
sub_80127C8: @ 0x080127C8
	push {lr}
	movs r0, #2
	bl sub_80432D0
	adds r2, r0, #0
	ldr r0, _080127E4
	ldr r0, [r0]
	ldr r3, _080127E8
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r2, r0
	bhi _080127F0
	ldr r0, _080127EC
	b _080127F4
	.align 2, 0
_080127E4: .4byte 0x08DFF6A4
_080127E8: .4byte 0x00002298
_080127EC: .4byte 0x7EDE89F9
_080127F0:
	ldr r3, _080127FC
	adds r0, r2, r3
_080127F4:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080127FC: .4byte 0x7FC874FF

	THUMB_FUNC_START sub_8012800
sub_8012800: @ 0x08012800
	push {lr}
	bl WhoseTurn
	ldr r1, _0801281C
	ldr r1, [r1]
	ldr r2, _08012820
	adds r1, r1, r2
	ldr r2, _08012824
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801281C: .4byte 0x08DFF6A4
_08012820: .4byte 0x00002298
_08012824: .4byte gLifePoints

	THUMB_FUNC_START sub_8012828
sub_8012828: @ 0x08012828
	push {r4, r5, r6, lr}
	ldr r6, _08012850
	ldr r4, [r6]
	ldr r0, _08012854
	adds r4, r4, r0
	ldr r5, _08012858
	bl WhoseTurn
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08012860
	ldr r0, [r6]
	ldr r1, _08012854
	adds r0, r0, r1
	ldr r1, _0801285C
	b _08012868
	.align 2, 0
_08012850: .4byte 0x08DFF6A4
_08012854: .4byte 0x00002298
_08012858: .4byte gLifePoints
_0801285C: .4byte 0x7EDE89F9
_08012860:
	ldr r0, [r6]
	ldr r1, _08012870
	adds r0, r0, r1
	ldr r1, _08012874
_08012868:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012870: .4byte 0x00002298
_08012874: .4byte 0x7FF99742

	THUMB_FUNC_START sub_8012878
sub_8012878: @ 0x08012878
	push {lr}
	bl WhoseTurn
	ldr r1, _08012894
	ldr r1, [r1]
	ldr r2, _08012898
	adds r1, r1, r2
	ldr r2, _0801289C
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08012894: .4byte 0x08DFF6A4
_08012898: .4byte 0x00002298
_0801289C: .4byte gLifePoints

	THUMB_FUNC_START sub_80128A0
sub_80128A0: @ 0x080128A0
	push {r4, r5, r6, lr}
	ldr r6, _080128C8
	ldr r4, [r6]
	ldr r0, _080128CC
	adds r4, r4, r0
	ldr r5, _080128D0
	bl WhoseTurn
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	blo _080128D8
	ldr r0, [r6]
	ldr r1, _080128CC
	adds r0, r0, r1
	ldr r1, _080128D4
	b _080128E0
	.align 2, 0
_080128C8: .4byte 0x08DFF6A4
_080128CC: .4byte 0x00002298
_080128D0: .4byte gLifePoints
_080128D4: .4byte 0x7EDE89F9
_080128D8:
	ldr r0, [r6]
	ldr r1, _080128E8
	adds r0, r0, r1
	ldr r1, _080128EC
_080128E0:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080128E8: .4byte 0x00002298
_080128EC: .4byte 0x7FF99742

	THUMB_FUNC_START sub_80128F0
sub_80128F0: @ 0x080128F0
	push {lr}
	bl WhoseTurn
	ldr r1, _0801290C
	ldr r1, [r1]
	ldr r2, _08012910
	adds r1, r1, r2
	ldr r2, _08012914
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801290C: .4byte 0x08DFF6A4
_08012910: .4byte 0x00002298
_08012914: .4byte gLifePoints

	THUMB_FUNC_START sub_8012918
sub_8012918: @ 0x08012918
	push {r4, r5, r6, lr}
	ldr r6, _08012940
	ldr r4, [r6]
	ldr r0, _08012944
	adds r4, r4, r0
	ldr r5, _08012948
	bl WhoseTurn
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08012950
	ldr r0, [r6]
	ldr r1, _08012944
	adds r0, r0, r1
	ldr r1, _0801294C
	b _08012958
	.align 2, 0
_08012940: .4byte 0x08DFF6A4
_08012944: .4byte 0x00002298
_08012948: .4byte gLifePoints
_0801294C: .4byte 0x7EDE89F9
_08012950:
	ldr r0, [r6]
	ldr r1, _08012960
	adds r0, r0, r1
	ldr r1, _08012964
_08012958:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012960: .4byte 0x00002298
_08012964: .4byte 0x7FF99742

	THUMB_FUNC_START sub_8012968
sub_8012968: @ 0x08012968
	push {lr}
	bl WhoseTurn
	ldr r1, _08012984
	ldr r1, [r1]
	ldr r2, _08012988
	adds r1, r1, r2
	ldr r2, _0801298C
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08012984: .4byte 0x08DFF6A4
_08012988: .4byte 0x00002298
_0801298C: .4byte gLifePoints

	THUMB_FUNC_START sub_8012990
sub_8012990: @ 0x08012990
	push {r4, r5, r6, lr}
	ldr r6, _080129B8
	ldr r4, [r6]
	ldr r0, _080129BC
	adds r4, r4, r0
	ldr r5, _080129C0
	bl WhoseTurn
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	blo _080129C8
	ldr r0, [r6]
	ldr r1, _080129BC
	adds r0, r0, r1
	ldr r1, _080129C4
	b _080129D0
	.align 2, 0
_080129B8: .4byte 0x08DFF6A4
_080129BC: .4byte 0x00002298
_080129C0: .4byte gLifePoints
_080129C4: .4byte 0x7EDE89F9
_080129C8:
	ldr r0, [r6]
	ldr r1, _080129D8
	adds r0, r0, r1
	ldr r1, _080129DC
_080129D0:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080129D8: .4byte 0x00002298
_080129DC: .4byte 0x7FF99742

	THUMB_FUNC_START sub_80129E0
sub_80129E0: @ 0x080129E0
	push {lr}
	bl WhoseTurn
	ldr r1, _080129FC
	ldr r1, [r1]
	ldr r2, _08012A00
	adds r1, r1, r2
	ldr r2, _08012A04
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080129FC: .4byte 0x08DFF6A4
_08012A00: .4byte 0x00002298
_08012A04: .4byte gLifePoints

	THUMB_FUNC_START sub_8012A08
sub_8012A08: @ 0x08012A08
	push {r4, r5, r6, lr}
	ldr r6, _08012A30
	ldr r4, [r6]
	ldr r0, _08012A34
	adds r4, r4, r0
	ldr r5, _08012A38
	bl WhoseTurn
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08012A40
	ldr r0, [r6]
	ldr r1, _08012A34
	adds r0, r0, r1
	ldr r1, _08012A3C
	b _08012A48
	.align 2, 0
_08012A30: .4byte 0x08DFF6A4
_08012A34: .4byte 0x00002298
_08012A38: .4byte gLifePoints
_08012A3C: .4byte 0x7EDE89F9
_08012A40:
	ldr r0, [r6]
	ldr r1, _08012A50
	adds r0, r0, r1
	ldr r1, _08012A54
_08012A48:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012A50: .4byte 0x00002298
_08012A54: .4byte 0x7FF99742

	THUMB_FUNC_START sub_8012A58
sub_8012A58: @ 0x08012A58
	push {r4, lr}
	ldr r4, _08012A7C
	bl WhoseTurn
	ldr r1, _08012A80
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #0x32
	bhi _08012A90
	ldr r0, _08012A84
	ldr r0, [r0]
	ldr r1, _08012A88
	adds r0, r0, r1
	ldr r1, _08012A8C
	b _08012A9A
	.align 2, 0
_08012A7C: .4byte gLifePoints
_08012A80: .4byte 0x080AED54
_08012A84: .4byte 0x08DFF6A4
_08012A88: .4byte 0x00002298
_08012A8C: .4byte 0x7FFFFFFF
_08012A90:
	ldr r0, _08012AA4
	ldr r0, [r0]
	ldr r1, _08012AA8
	adds r0, r0, r1
	ldr r1, _08012AAC
_08012A9A:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012AA4: .4byte 0x08DFF6A4
_08012AA8: .4byte 0x00002298
_08012AAC: .4byte 0x7FF99743
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012AB4
sub_8012AB4: @ 0x08012AB4
	push {r4, lr}
	ldr r4, _08012AD8
	bl WhoseTurn
	ldr r1, _08012ADC
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #0x64
	bhi _08012AEC
	ldr r0, _08012AE0
	ldr r0, [r0]
	ldr r1, _08012AE4
	adds r0, r0, r1
	ldr r1, _08012AE8
	b _08012AF6
	.align 2, 0
_08012AD8: .4byte gLifePoints
_08012ADC: .4byte 0x080AED54
_08012AE0: .4byte 0x08DFF6A4
_08012AE4: .4byte 0x00002298
_08012AE8: .4byte 0x7FFFFFFF
_08012AEC:
	ldr r0, _08012B00
	ldr r0, [r0]
	ldr r1, _08012B04
	adds r0, r0, r1
	ldr r1, _08012B08
_08012AF6:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012B00: .4byte 0x08DFF6A4
_08012B04: .4byte 0x00002298
_08012B08: .4byte 0x7FF99743
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012B10
sub_8012B10: @ 0x08012B10
	push {r4, lr}
	ldr r4, _08012B34
	bl WhoseTurn
	ldr r1, _08012B38
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #0xc8
	bhi _08012B48
	ldr r0, _08012B3C
	ldr r0, [r0]
	ldr r1, _08012B40
	adds r0, r0, r1
	ldr r1, _08012B44
	b _08012B52
	.align 2, 0
_08012B34: .4byte gLifePoints
_08012B38: .4byte 0x080AED54
_08012B3C: .4byte 0x08DFF6A4
_08012B40: .4byte 0x00002298
_08012B44: .4byte 0x7FFFFFFF
_08012B48:
	ldr r0, _08012B5C
	ldr r0, [r0]
	ldr r1, _08012B60
	adds r0, r0, r1
	ldr r1, _08012B64
_08012B52:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012B5C: .4byte 0x08DFF6A4
_08012B60: .4byte 0x00002298
_08012B64: .4byte 0x7FF99743
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012B6C
sub_8012B6C: @ 0x08012B6C
	push {r4, lr}
	ldr r4, _08012B94
	bl WhoseTurn
	ldr r1, _08012B98
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08012BA8
	ldr r0, _08012B9C
	ldr r0, [r0]
	ldr r1, _08012BA0
	adds r0, r0, r1
	ldr r1, _08012BA4
	b _08012BB2
	.align 2, 0
_08012B94: .4byte gLifePoints
_08012B98: .4byte 0x080AED54
_08012B9C: .4byte 0x08DFF6A4
_08012BA0: .4byte 0x00002298
_08012BA4: .4byte 0x7FFFFFFF
_08012BA8:
	ldr r0, _08012BBC
	ldr r0, [r0]
	ldr r1, _08012BC0
	adds r0, r0, r1
	ldr r1, _08012BC4
_08012BB2:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012BBC: .4byte 0x08DFF6A4
_08012BC0: .4byte 0x00002298
_08012BC4: .4byte 0x7FF99743
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012BCC
sub_8012BCC: @ 0x08012BCC
	push {r4, lr}
	ldr r4, _08012BF4
	bl WhoseTurn
	ldr r1, _08012BF8
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bhi _08012C08
	ldr r0, _08012BFC
	ldr r0, [r0]
	ldr r1, _08012C00
	adds r0, r0, r1
	ldr r1, _08012C04
	b _08012C12
	.align 2, 0
_08012BF4: .4byte gLifePoints
_08012BF8: .4byte 0x080AED54
_08012BFC: .4byte 0x08DFF6A4
_08012C00: .4byte 0x00002298
_08012C04: .4byte 0x7FFFFFFF
_08012C08:
	ldr r0, _08012C1C
	ldr r0, [r0]
	ldr r1, _08012C20
	adds r0, r0, r1
	ldr r1, _08012C24
_08012C12:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012C1C: .4byte 0x08DFF6A4
_08012C20: .4byte 0x00002298
_08012C24: .4byte 0x7FF99743
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012C2C
sub_8012C2C: @ 0x08012C2C
	push {r4, lr}
	ldr r4, _08012C48
	adds r0, r4, #0
	bl NumEmptyZonesAndGodCardsInRow
	cmp r0, #5
	beq _08012C58
	ldr r0, _08012C4C
	ldr r0, [r0]
	ldr r1, _08012C50
	adds r0, r0, r1
	ldr r1, _08012C54
	b _08012C86
	.align 2, 0
_08012C48: .4byte gZones+0x28
_08012C4C: .4byte 0x08DFF6A4
_08012C50: .4byte 0x00002298
_08012C54: .4byte 0x7EDE89F9
_08012C58:
	adds r0, r4, #0
	subs r0, #0x14
	bl NumEmptyZonesAndGodCardsInRow
	cmp r0, #5
	bne _08012C7C
	ldr r0, _08012C70
	ldr r0, [r0]
	ldr r1, _08012C74
	adds r0, r0, r1
	ldr r1, _08012C78
	b _08012C86
	.align 2, 0
_08012C70: .4byte 0x08DFF6A4
_08012C74: .4byte 0x00002298
_08012C78: .4byte 0x7EDE89F9
_08012C7C:
	ldr r0, _08012C90
	ldr r0, [r0]
	ldr r1, _08012C94
	adds r0, r0, r1
	ldr r1, _08012C98
_08012C86:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012C90: .4byte 0x08DFF6A4
_08012C94: .4byte 0x00002298
_08012C98: .4byte 0x7FF9973F
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012CA0
sub_8012CA0: @ 0x08012CA0
	push {lr}
	ldr r0, _08012CB8
	bl NumEmptyZonesAndGodCardsInRow
	cmp r0, #5
	bne _08012CC8
	ldr r0, _08012CBC
	ldr r0, [r0]
	ldr r1, _08012CC0
	adds r0, r0, r1
	ldr r1, _08012CC4
	b _08012CD2
	.align 2, 0
_08012CB8: .4byte gZones+0x14
_08012CBC: .4byte 0x08DFF6A4
_08012CC0: .4byte 0x00002298
_08012CC4: .4byte 0x7EDE89F9
_08012CC8:
	ldr r0, _08012CD8
	ldr r0, [r0]
	ldr r1, _08012CDC
	adds r0, r0, r1
	ldr r1, _08012CE0
_08012CD2:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08012CD8: .4byte 0x08DFF6A4
_08012CDC: .4byte 0x00002298
_08012CE0: .4byte 0x7FF9973E
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012CE8
sub_8012CE8: @ 0x08012CE8
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012CF4
sub_8012CF4: @ 0x08012CF4
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D00
sub_8012D00: @ 0x08012D00
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D0C
sub_8012D0C: @ 0x08012D0C
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D18
sub_8012D18: @ 0x08012D18
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D24
sub_8012D24: @ 0x08012D24
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D30
sub_8012D30: @ 0x08012D30
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D3C
sub_8012D3C: @ 0x08012D3C
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D48
sub_8012D48: @ 0x08012D48
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D54
sub_8012D54: @ 0x08012D54
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D60
sub_8012D60: @ 0x08012D60
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D6C
sub_8012D6C: @ 0x08012D6C
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D78
sub_8012D78: @ 0x08012D78
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D84
sub_8012D84: @ 0x08012D84
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D90
sub_8012D90: @ 0x08012D90
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012D9C
sub_8012D9C: @ 0x08012D9C
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DA8
sub_8012DA8: @ 0x08012DA8
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DB4
sub_8012DB4: @ 0x08012DB4
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DC0
sub_8012DC0: @ 0x08012DC0
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DCC
sub_8012DCC: @ 0x08012DCC
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DD8
sub_8012DD8: @ 0x08012DD8
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DE4
sub_8012DE4: @ 0x08012DE4
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DF0
sub_8012DF0: @ 0x08012DF0
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012DFC
sub_8012DFC: @ 0x08012DFC
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E08
sub_8012E08: @ 0x08012E08
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E14
sub_8012E14: @ 0x08012E14
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E20
sub_8012E20: @ 0x08012E20
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E2C
sub_8012E2C: @ 0x08012E2C
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E38
sub_8012E38: @ 0x08012E38
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E44
sub_8012E44: @ 0x08012E44
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E50
sub_8012E50: @ 0x08012E50
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E5C
sub_8012E5C: @ 0x08012E5C
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E68
sub_8012E68: @ 0x08012E68
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E74
sub_8012E74: @ 0x08012E74
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E80
sub_8012E80: @ 0x08012E80
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E8C
sub_8012E8C: @ 0x08012E8C
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012E98
sub_8012E98: @ 0x08012E98
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012EA4
sub_8012EA4: @ 0x08012EA4
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012EB0
sub_8012EB0: @ 0x08012EB0
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012EBC
sub_8012EBC: @ 0x08012EBC
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012EC8
sub_8012EC8: @ 0x08012EC8
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012ED4
sub_8012ED4: @ 0x08012ED4
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012EE0
sub_8012EE0: @ 0x08012EE0
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012EEC
sub_8012EEC: @ 0x08012EEC
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012EF8
sub_8012EF8: @ 0x08012EF8
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012F04
sub_8012F04: @ 0x08012F04
	push {lr}
	bl sub_80119AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8012F10
sub_8012F10: @ 0x08012F10
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFE, 0xF7
	.byte 0x45, 0xFD, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012F28
sub_8012F28: @ 0x08012F28
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFE, 0xF7, 0x39, 0xFD, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8012F78
sub_8012F78: @ 0x08012F78
	push {lr}
	movs r0, #1
	bl sub_80438E8
	cmp r0, #0
	bne _08012F9C
	ldr r0, _08012F90
	ldr r0, [r0]
	ldr r1, _08012F94
	adds r0, r0, r1
	ldr r1, _08012F98
	b _08012FA6
	.align 2, 0
_08012F90: .4byte 0x08DFF6A4
_08012F94: .4byte 0x00002298
_08012F98: .4byte 0x7EDE89F9
_08012F9C:
	ldr r0, _08012FAC
	ldr r0, [r0]
	ldr r1, _08012FB0
	adds r0, r0, r1
	ldr r1, _08012FB4
_08012FA6:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08012FAC: .4byte 0x08DFF6A4
_08012FB0: .4byte 0x00002298
_08012FB4: .4byte 0x7FB3183E
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8012FBC
sub_8012FBC: @ 0x08012FBC
	push {lr}
	movs r0, #1
	movs r1, #1
	bl sub_804398C
	cmp r0, #0
	bne _08012FE4
	ldr r0, _08012FD8
	ldr r0, [r0]
	ldr r1, _08012FDC
	adds r0, r0, r1
	ldr r1, _08012FE0
	b _08012FEE
	.align 2, 0
_08012FD8: .4byte 0x08DFF6A4
_08012FDC: .4byte 0x00002298
_08012FE0: .4byte 0x7EDE89F9
_08012FE4:
	ldr r0, _08012FF4
	ldr r0, [r0]
	ldr r1, _08012FF8
	adds r0, r0, r1
	ldr r1, _08012FFC
_08012FEE:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08012FF4: .4byte 0x08DFF6A4
_08012FF8: .4byte 0x00002298
_08012FFC: .4byte 0x7FF9973C
	.byte 0x70, 0x47, 0x00, 0x00, 0x06, 0x48, 0x40, 0x68, 0x81, 0x78, 0x03, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x0E, 0xD0, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x0D, 0xE0, 0x00, 0x00
	.byte 0xC0, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x46, 0x5B, 0xEB, 0x7E, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013050
sub_8013050: @ 0x08013050
	push {r4, lr}
	movs r2, #0
	ldr r3, _08013078
	ldr r4, _0801307C
_08013058:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08013088
	ldrb r1, [r1, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08013088
	ldr r0, [r3]
	ldr r1, _08013080
	adds r0, r0, r1
	ldr r1, _08013084
	b _0801309A
	.align 2, 0
_08013078: .4byte 0x08DFF6A4
_0801307C: .4byte gZones+0x14
_08013080: .4byte 0x00002298
_08013084: .4byte 0x7FFFFFF1
_08013088:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _08013058
	ldr r0, [r3]
	ldr r1, _080130A4
	adds r0, r0, r1
	ldr r1, _080130A8
_0801309A:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080130A4: .4byte 0x00002298
_080130A8: .4byte 0x7EDE89F9
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80130B0
sub_80130B0: @ 0x080130B0
	push {lr}
	ldr r0, _080130CC
	bl NumEmptyZonesInRow
	cmp r0, #5
	bne _080130DC
	ldr r0, _080130D0
	ldr r0, [r0]
	ldr r1, _080130D4
	adds r0, r0, r1
	ldr r1, _080130D8
	str r1, [r0]
	b _080130EC
	.align 2, 0
_080130CC: .4byte gZones+0x14
_080130D0: .4byte 0x08DFF6A4
_080130D4: .4byte 0x00002298
_080130D8: .4byte 0x7EDE89F9
_080130DC:
	movs r0, #1
	bl sub_8043358
	ldr r1, _080130F0
	ldr r1, [r1]
	ldr r2, _080130F4
	adds r1, r1, r2
	str r0, [r1]
_080130EC:
	pop {r0}
	bx r0
	.align 2, 0
_080130F0: .4byte 0x08DFF6A4
_080130F4: .4byte 0x00002298
	.byte 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E
	.byte 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x14, 0xD0, 0x01, 0x20, 0x30, 0xF0, 0x24, 0xF9
	.byte 0x21, 0x68, 0x81, 0x42, 0x0A, 0xD8, 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0x0A, 0xE0, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x28, 0x68, 0x80, 0x19
	.byte 0x02, 0x49, 0x01, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x6C, 0x51, 0xF5, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80133B0
sub_80133B0: @ 0x080133B0
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80133C0
sub_80133C0: @ 0x080133C0
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80133D0
sub_80133D0: @ 0x080133D0
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80133E4
sub_80133E4: @ 0x080133E4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80133F4
sub_80133F4: @ 0x080133F4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013404
sub_8013404: @ 0x08013404
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013414
sub_8013414: @ 0x08013414
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013424
sub_8013424: @ 0x08013424
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013434
sub_8013434: @ 0x08013434
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013444
sub_8013444: @ 0x08013444
	push {r4, lr}
	ldr r2, _08013464
	ldr r0, [r2]
	ldr r1, _08013468
	adds r4, r0, r1
	ldr r0, _0801346C
	str r0, [r4]
	movs r3, #0
	ldr r1, _08013470
	ldr r0, [r1]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013478
	ldr r0, _08013474
	str r0, [r4]
	b _08013498
	.align 2, 0
_08013464: .4byte 0x08DFF6A4
_08013468: .4byte 0x00002298
_0801346C: .4byte 0x7EDE89F9
_08013470: .4byte gZones
_08013474: .4byte 0x7FF99744
_08013478:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bhi _08013498
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013478
	ldr r0, [r2]
	ldr r1, _080134A0
	adds r0, r0, r1
	ldr r1, _080134A4
	str r1, [r0]
_08013498:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080134A0: .4byte 0x00002298
_080134A4: .4byte 0x7FF99744
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80134AC
sub_80134AC: @ 0x080134AC
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFE, 0xF7, 0x77, 0xFA, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80134C4
sub_80134C4: @ 0x080134C4
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x00, 0xB5, 0xFE, 0xF7, 0x6B, 0xFA, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80134DC
sub_80134DC: @ 0x080134DC
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFE, 0xF7, 0x5F, 0xFA, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80134F4
sub_80134F4: @ 0x080134F4
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x00, 0xB5, 0xFE, 0xF7, 0x53, 0xFA, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013510
sub_8013510: @ 0x08013510
	push {lr}
	ldr r0, _0801352C
	bl NumEmptyZonesInRow
	cmp r0, #5
	bne _0801353C
	ldr r0, _08013530
	ldr r0, [r0]
	ldr r1, _08013534
	adds r0, r0, r1
	ldr r1, _08013538
	str r1, [r0]
	b _0801354C
	.align 2, 0
_0801352C: .4byte gZones+0x14
_08013530: .4byte 0x08DFF6A4
_08013534: .4byte 0x00002298
_08013538: .4byte 0x7EDE89F9
_0801353C:
	movs r0, #1
	bl sub_8043358
	ldr r1, _08013550
	ldr r1, [r1]
	ldr r2, _08013554
	adds r1, r1, r2
	str r0, [r1]
_0801354C:
	pop {r0}
	bx r0
	.align 2, 0
_08013550: .4byte 0x08DFF6A4
_08013554: .4byte 0x00002298
	.byte 0x70, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x49
	.byte 0x44, 0x18, 0x20, 0x68, 0x08, 0x4E, 0xB0, 0x42, 0x15, 0xD0, 0x01, 0x20, 0x2F, 0xF0, 0xF4, 0xFE
	.byte 0x21, 0x68, 0x81, 0x42, 0x0A, 0xD8, 0x28, 0x68, 0x02, 0x49, 0x40, 0x18, 0x06, 0x60, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x28, 0x68, 0x03, 0x49
	.byte 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x98, 0x22, 0x00, 0x00
	.byte 0x6C, 0x51, 0xF5, 0x7F

	THUMB_FUNC_START sub_80135A4
sub_80135A4: @ 0x080135A4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80135B4
sub_80135B4: @ 0x080135B4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80135C4
sub_80135C4: @ 0x080135C4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80135D4
sub_80135D4: @ 0x080135D4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80135E4
sub_80135E4: @ 0x080135E4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80135F4
sub_80135F4: @ 0x080135F4
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013604
sub_8013604: @ 0x08013604
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013614
sub_8013614: @ 0x08013614
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013624
sub_8013624: @ 0x08013624
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013634
sub_8013634: @ 0x08013634
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013644
sub_8013644: @ 0x08013644
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801365C
sub_801365C: @ 0x0801365C
	push {r4, r5, lr}
	ldr r0, _08013694
	ldr r0, [r0]
	ldr r1, _08013698
	adds r0, r0, r1
	ldr r1, _0801369C
	str r1, [r0]
	movs r4, #0
	ldr r5, _080136A0
_0801366E:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080136A8
	adds r0, r1, #0
	bl sub_8040688
	cmp r0, #0
	bge _080136A8
	ldr r0, _08013694
	ldr r0, [r0]
	ldr r1, _08013698
	adds r0, r0, r1
	ldr r1, _080136A4
	str r1, [r0]
	b _080136B2
	.align 2, 0
_08013694: .4byte 0x08DFF6A4
_08013698: .4byte 0x00002298
_0801369C: .4byte 0x7EDE89F9
_080136A0: .4byte gZones+0x28
_080136A4: .4byte 0x7FF5516A
_080136A8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0801366E
_080136B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80136BC
sub_80136BC: @ 0x080136BC
	push {r4, r5, lr}
	ldr r4, _080136E0
	ldr r0, [r4]
	ldr r1, _080136E4
	adds r0, r0, r1
	ldr r5, _080136E8
	str r5, [r0]
	movs r0, #1
	movs r1, #3
	bl sub_804398C
	cmp r0, #0
	bne _080136EC
	ldr r0, [r4]
	ldr r1, _080136E4
	adds r0, r0, r1
	str r5, [r0]
	b _080136F6
	.align 2, 0
_080136E0: .4byte 0x08DFF6A4
_080136E4: .4byte 0x00002298
_080136E8: .4byte 0x7EDE89F9
_080136EC:
	ldr r0, [r4]
	ldr r1, _080136FC
	adds r0, r0, r1
	ldr r1, _08013700
	str r1, [r0]
_080136F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080136FC: .4byte 0x00002298
_08013700: .4byte 0x7FF9973C
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013708
sub_8013708: @ 0x08013708
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFE, 0xF7, 0x49, 0xF9, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013720
sub_8013720: @ 0x08013720
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFE, 0xF7
	.byte 0x3D, 0xF9, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801373C
sub_801373C: @ 0x0801373C
	push {r4, r5, lr}
	ldr r4, _08013760
	ldr r0, [r4]
	ldr r1, _08013764
	adds r0, r0, r1
	ldr r5, _08013768
	str r5, [r0]
	movs r0, #1
	movs r1, #0xa
	bl sub_804398C
	cmp r0, #0
	bne _0801376C
	ldr r0, [r4]
	ldr r1, _08013764
	adds r0, r0, r1
	str r5, [r0]
	b _08013776
	.align 2, 0
_08013760: .4byte 0x08DFF6A4
_08013764: .4byte 0x00002298
_08013768: .4byte 0x7EDE89F9
_0801376C:
	ldr r0, [r4]
	ldr r1, _0801377C
	adds r0, r0, r1
	ldr r1, _08013780
	str r1, [r0]
_08013776:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801377C: .4byte 0x00002298
_08013780: .4byte 0x7FF9973C
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013788
sub_8013788: @ 0x08013788
	push {r4, r5, lr}
	ldr r4, _080137AC
	ldr r0, [r4]
	ldr r1, _080137B0
	adds r0, r0, r1
	ldr r5, _080137B4
	str r5, [r0]
	movs r0, #1
	movs r1, #0x13
	bl sub_804398C
	cmp r0, #0
	bne _080137B8
	ldr r0, [r4]
	ldr r1, _080137B0
	adds r0, r0, r1
	str r5, [r0]
	b _080137C2
	.align 2, 0
_080137AC: .4byte 0x08DFF6A4
_080137B0: .4byte 0x00002298
_080137B4: .4byte 0x7EDE89F9
_080137B8:
	ldr r0, [r4]
	ldr r1, _080137C8
	adds r0, r0, r1
	ldr r1, _080137CC
	str r1, [r0]
_080137C2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080137C8: .4byte 0x00002298
_080137CC: .4byte 0x7FF9973C
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80137D4
sub_80137D4: @ 0x080137D4
	push {r4, r5, lr}
	ldr r4, _080137F8
	ldr r0, [r4]
	ldr r1, _080137FC
	adds r0, r0, r1
	ldr r5, _08013800
	str r5, [r0]
	movs r0, #1
	movs r1, #0xd
	bl sub_804398C
	cmp r0, #0
	bne _08013804
	ldr r0, [r4]
	ldr r1, _080137FC
	adds r0, r0, r1
	str r5, [r0]
	b _0801380E
	.align 2, 0
_080137F8: .4byte 0x08DFF6A4
_080137FC: .4byte 0x00002298
_08013800: .4byte 0x7EDE89F9
_08013804:
	ldr r0, [r4]
	ldr r1, _08013814
	adds r0, r0, r1
	ldr r1, _08013818
	str r1, [r0]
_0801380E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013814: .4byte 0x00002298
_08013818: .4byte 0x7FF9973C
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013820
sub_8013820: @ 0x08013820
	push {r4, lr}
	movs r2, #0
	ldr r3, _08013848
	ldr r4, _0801384C
_08013828:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08013858
	ldrb r1, [r1, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08013858
	ldr r0, [r3]
	ldr r1, _08013850
	adds r0, r0, r1
	ldr r1, _08013854
	b _0801386A
	.align 2, 0
_08013848: .4byte 0x08DFF6A4
_0801384C: .4byte gHands+0x14
_08013850: .4byte 0x00002298
_08013854: .4byte 0x7FFFFFF0
_08013858:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _08013828
	ldr r0, [r3]
	ldr r1, _08013874
	adds r0, r0, r1
	ldr r1, _08013878
_0801386A:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013874: .4byte 0x00002298
_08013878: .4byte 0x7EDE89F9
	.byte 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013884
sub_8013884: @ 0x08013884
	push {lr}
	ldr r0, _0801389C
	bl NumEmptyZonesInRow
	cmp r0, #1
	bgt _080138AC
	ldr r0, _080138A0
	ldr r0, [r0]
	ldr r1, _080138A4
	adds r0, r0, r1
	ldr r1, _080138A8
	b _080138B6
	.align 2, 0
_0801389C: .4byte gZones+0x50
_080138A0: .4byte 0x08DFF6A4
_080138A4: .4byte 0x00002298
_080138A8: .4byte 0x7EDE89F9
_080138AC:
	ldr r0, _080138BC
	ldr r0, [r0]
	ldr r1, _080138C0
	adds r0, r0, r1
	ldr r1, _080138C4
_080138B6:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080138BC: .4byte 0x08DFF6A4
_080138C0: .4byte 0x00002298
_080138C4: .4byte 0x7EEB5B44
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80138CC
sub_80138CC: @ 0x080138CC
	push {r4, r5, lr}
	ldr r0, _080138EC
	bl NumEmptyZonesInRow
	movs r1, #5
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	cmp r5, #0
	bne _080138FC
	ldr r0, _080138F0
	ldr r0, [r0]
	ldr r1, _080138F4
	adds r0, r0, r1
	ldr r1, _080138F8
	b _08013942
	.align 2, 0
_080138EC: .4byte gHands+0x14
_080138F0: .4byte 0x08DFF6A4
_080138F4: .4byte 0x00002298
_080138F8: .4byte 0x7EDE89F9
_080138FC:
	ldr r4, _08013924
	bl WhoseTurn
	ldr r1, _08013928
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #0xc8
	muls r0, r5, r0
	cmp r1, r0
	bgt _08013938
	ldr r0, _0801392C
	ldr r0, [r0]
	ldr r1, _08013930
	adds r0, r0, r1
	ldr r1, _08013934
	b _08013942
	.align 2, 0
_08013924: .4byte gLifePoints
_08013928: .4byte 0x080AED54
_0801392C: .4byte 0x08DFF6A4
_08013930: .4byte 0x00002298
_08013934: .4byte 0x7FFFFFEF
_08013938:
	ldr r0, _0801394C
	ldr r0, [r0]
	ldr r1, _08013950
	adds r0, r0, r1
	ldr r1, _08013954
_08013942:
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801394C: .4byte 0x08DFF6A4
_08013950: .4byte 0x00002298
_08013954: .4byte 0x7FFFFFFF
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801395C
sub_801395C: @ 0x0801395C
	push {r4, r5, lr}
	ldr r4, _08013980
	ldr r0, [r4]
	ldr r1, _08013984
	adds r0, r0, r1
	ldr r5, _08013988
	str r5, [r0]
	movs r0, #1
	movs r1, #2
	bl sub_804398C
	cmp r0, #0
	bne _0801398C
	ldr r0, [r4]
	ldr r1, _08013984
	adds r0, r0, r1
	str r5, [r0]
	b _08013996
	.align 2, 0
_08013980: .4byte 0x08DFF6A4
_08013984: .4byte 0x00002298
_08013988: .4byte 0x7EDE89F9
_0801398C:
	ldr r0, [r4]
	ldr r1, _0801399C
	adds r0, r0, r1
	ldr r1, _080139A0
	str r1, [r0]
_08013996:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801399C: .4byte 0x00002298
_080139A0: .4byte 0x7FF9973C
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80139A8
sub_80139A8: @ 0x080139A8
	push {r4, r5, lr}
	ldr r4, _080139CC
	ldr r0, [r4]
	ldr r1, _080139D0
	adds r0, r0, r1
	ldr r5, _080139D4
	str r5, [r0]
	movs r0, #1
	movs r1, #8
	bl sub_804398C
	cmp r0, #0
	bne _080139D8
	ldr r0, [r4]
	ldr r1, _080139D0
	adds r0, r0, r1
	str r5, [r0]
	b _080139E2
	.align 2, 0
_080139CC: .4byte 0x08DFF6A4
_080139D0: .4byte 0x00002298
_080139D4: .4byte 0x7EDE89F9
_080139D8:
	ldr r0, [r4]
	ldr r1, _080139E8
	adds r0, r0, r1
	ldr r1, _080139EC
	str r1, [r0]
_080139E2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080139E8: .4byte 0x00002298
_080139EC: .4byte 0x7FF9973C
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80139F4
sub_80139F4: @ 0x080139F4
	push {r4, lr}
	ldr r4, _08013A10
	adds r0, r4, #0
	movs r1, #0x3a
	bl NumCardInRow
	cmp r0, #0
	bne _08013A20
	ldr r0, _08013A14
	ldr r0, [r0]
	ldr r1, _08013A18
	adds r0, r0, r1
	ldr r1, _08013A1C
	b _08013A4E
	.align 2, 0
_08013A10: .4byte gZones+0x28
_08013A14: .4byte 0x08DFF6A4
_08013A18: .4byte 0x00002298
_08013A1C: .4byte 0x7EDE89F9
_08013A20:
	adds r0, r4, #0
	bl NumEmptyZonesInRow
	cmp r0, #0
	bne _08013A44
	ldr r0, _08013A38
	ldr r0, [r0]
	ldr r1, _08013A3C
	adds r0, r0, r1
	ldr r1, _08013A40
	b _08013A4E
	.align 2, 0
_08013A38: .4byte 0x08DFF6A4
_08013A3C: .4byte 0x00002298
_08013A40: .4byte 0x7EDE89F9
_08013A44:
	ldr r0, _08013A58
	ldr r0, [r0]
	ldr r1, _08013A5C
	adds r0, r0, r1
	ldr r1, _08013A60
_08013A4E:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013A58: .4byte 0x08DFF6A4
_08013A5C: .4byte 0x00002298
_08013A60: .4byte 0x7FF32E7F
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013A68
sub_8013A68: @ 0x08013A68
	push {r4, lr}
	ldr r4, _08013A84
	adds r0, r4, #0
	bl NumEmptyZonesInRow
	cmp r0, #0
	bne _08013A94
	ldr r0, _08013A88
	ldr r0, [r0]
	ldr r1, _08013A8C
	adds r0, r0, r1
	ldr r1, _08013A90
	b _08013AC2
	.align 2, 0
_08013A84: .4byte gZones+0x28
_08013A88: .4byte 0x08DFF6A4
_08013A8C: .4byte 0x00002298
_08013A90: .4byte 0x7EDE89F9
_08013A94:
	adds r0, r4, #0
	subs r0, #0x14
	bl NumEmptyZonesAndGodCardsInRow
	cmp r0, #5
	bne _08013AB8
	ldr r0, _08013AAC
	ldr r0, [r0]
	ldr r1, _08013AB0
	adds r0, r0, r1
	ldr r1, _08013AB4
	b _08013AC2
	.align 2, 0
_08013AAC: .4byte 0x08DFF6A4
_08013AB0: .4byte 0x00002298
_08013AB4: .4byte 0x7EDE89F9
_08013AB8:
	ldr r0, _08013ACC
	ldr r0, [r0]
	ldr r1, _08013AD0
	adds r0, r0, r1
	ldr r1, _08013AD4
_08013AC2:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013ACC: .4byte 0x08DFF6A4
_08013AD0: .4byte 0x00002298
_08013AD4: .4byte 0x7FF99746
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013ADC
sub_8013ADC: @ 0x08013ADC
	push {lr}
	bl sub_8011AB0
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8013B24
sub_8013B24: @ 0x08013B24
	push {r4, lr}
	ldr r4, _08013B40
	adds r0, r4, #0
	bl NumEmptyZonesInRow
	cmp r0, #0
	bne _08013B50
	ldr r0, _08013B44
	ldr r0, [r0]
	ldr r1, _08013B48
	adds r0, r0, r1
	ldr r1, _08013B4C
	b _08013B7E
	.align 2, 0
_08013B40: .4byte gZones+0x28
_08013B44: .4byte 0x08DFF6A4
_08013B48: .4byte 0x00002298
_08013B4C: .4byte 0x7EDE89F9
_08013B50:
	adds r0, r4, #0
	subs r0, #0x14
	bl NumEmptyZonesAndGodCardsInRow
	cmp r0, #5
	bne _08013B74
	ldr r0, _08013B68
	ldr r0, [r0]
	ldr r1, _08013B6C
	adds r0, r0, r1
	ldr r1, _08013B70
	b _08013B7E
	.align 2, 0
_08013B68: .4byte 0x08DFF6A4
_08013B6C: .4byte 0x00002298
_08013B70: .4byte 0x7EDE89F9
_08013B74:
	ldr r0, _08013B88
	ldr r0, [r0]
	ldr r1, _08013B8C
	adds r0, r0, r1
	ldr r1, _08013B90
_08013B7E:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013B88: .4byte 0x08DFF6A4
_08013B8C: .4byte 0x00002298
_08013B90: .4byte 0x7FF99746
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013B98
sub_8013B98: @ 0x08013B98
	push {lr}
	ldr r0, _08013BB0
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	cmp r0, #0
	bne _08013BC0
	ldr r0, _08013BB4
	ldr r0, [r0]
	ldr r1, _08013BB8
	adds r0, r0, r1
	ldr r1, _08013BBC
	b _08013BF2
	.align 2, 0
_08013BB0: .4byte gDuel+0x100
_08013BB4: .4byte 0x08DFF6A4
_08013BB8: .4byte 0x00002298
_08013BBC: .4byte 0x7EDE89F9
_08013BC0:
	ldr r0, _08013BD8
	bl NumEmptyZonesInRow
	cmp r0, #0
	bne _08013BE8
	ldr r0, _08013BDC
	ldr r0, [r0]
	ldr r1, _08013BE0
	adds r0, r0, r1
	ldr r1, _08013BE4
	b _08013BF2
	.align 2, 0
_08013BD8: .4byte gZones+0x28
_08013BDC: .4byte 0x08DFF6A4
_08013BE0: .4byte 0x00002298
_08013BE4: .4byte 0x7EDE89F9
_08013BE8:
	ldr r0, _08013BF8
	ldr r0, [r0]
	ldr r1, _08013BFC
	adds r0, r0, r1
	ldr r1, _08013C00
_08013BF2:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08013BF8: .4byte 0x08DFF6A4
_08013BFC: .4byte 0x00002298
_08013C00: .4byte 0x7FB3183D
	.byte 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8013C40
sub_8013C40: @ 0x08013C40
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFD, 0xF7
	.byte 0xAD, 0xFE, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013C58
sub_8013C58: @ 0x08013C58
	push {lr}
	ldr r0, _08013C70
	bl NumEmptyZonesAndGodCardsInRow
	cmp r0, #5
	bne _08013C80
	ldr r0, _08013C74
	ldr r0, [r0]
	ldr r1, _08013C78
	adds r0, r0, r1
	ldr r1, _08013C7C
	b _08013C8A
	.align 2, 0
_08013C70: .4byte gZones+0x14
_08013C74: .4byte 0x08DFF6A4
_08013C78: .4byte 0x00002298
_08013C7C: .4byte 0x7EDE89F9
_08013C80:
	ldr r0, _08013C90
	ldr r0, [r0]
	ldr r1, _08013C94
	adds r0, r0, r1
	ldr r1, _08013C98
_08013C8A:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08013C90: .4byte 0x08DFF6A4
_08013C94: .4byte 0x00002298
_08013C98: .4byte 0x7FF7745C
	.byte 0x70, 0x47, 0x00, 0x00
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x05, 0x48, 0x00, 0x68, 0x00, 0x88, 0x00, 0x28
	.byte 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x0D, 0xE0, 0x00, 0x00
	.byte 0xC0, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x45, 0x5B, 0xEB, 0x7E, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013D20
sub_8013D20: @ 0x08013D20
	push {r4, lr}
	ldr r4, _08013D3C
	adds r0, r4, #0
	bl NumEmptyZonesAndGodCardsInRow
	cmp r0, #5
	beq _08013D4C
	ldr r0, _08013D40
	ldr r0, [r0]
	ldr r1, _08013D44
	adds r0, r0, r1
	ldr r1, _08013D48
	b _08013D86
	.align 2, 0
_08013D3C: .4byte gZones+0x28
_08013D40: .4byte 0x08DFF6A4
_08013D44: .4byte 0x00002298
_08013D48: .4byte 0x7EDE89F9
_08013D4C:
	adds r0, r4, #0
	subs r0, #0x14
	bl NumEmptyZonesAndGodCardsInRow
	cmp r0, #5
	bne _08013D7C
	adds r0, r4, #0
	subs r0, #0x28
	bl NumEmptyZonesInRow
	cmp r0, #5
	bne _08013D7C
	ldr r0, _08013D70
	ldr r0, [r0]
	ldr r1, _08013D74
	adds r0, r0, r1
	ldr r1, _08013D78
	b _08013D86
	.align 2, 0
_08013D70: .4byte 0x08DFF6A4
_08013D74: .4byte 0x00002298
_08013D78: .4byte 0x7EDE89F9
_08013D7C:
	ldr r0, _08013D90
	ldr r0, [r0]
	ldr r1, _08013D94
	adds r0, r0, r1
	ldr r1, _08013D98
_08013D86:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013D90: .4byte 0x08DFF6A4
_08013D94: .4byte 0x00002298
_08013D98: .4byte 0x7FFFFFFD
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8013DA0
sub_8013DA0: @ 0x08013DA0
	push {r4, lr}
	ldr r4, _08013DBC
	adds r0, r4, #0
	bl NumEmptyZonesAndGodCardsInRow
	cmp r0, #5
	beq _08013DCC
	ldr r0, _08013DC0
	ldr r0, [r0]
	ldr r1, _08013DC4
	adds r0, r0, r1
	ldr r1, _08013DC8
	b _08013E06
	.align 2, 0
_08013DBC: .4byte gZones+0x28
_08013DC0: .4byte 0x08DFF6A4
_08013DC4: .4byte 0x00002298
_08013DC8: .4byte 0x7EDE89F9
_08013DCC:
	adds r0, r4, #0
	subs r0, #0x14
	bl NumEmptyZonesAndGodCardsInRow
	cmp r0, #5
	bne _08013DFC
	adds r0, r4, #0
	subs r0, #0x28
	bl NumEmptyZonesInRow
	cmp r0, #5
	bne _08013DFC
	ldr r0, _08013DF0
	ldr r0, [r0]
	ldr r1, _08013DF4
	adds r0, r0, r1
	ldr r1, _08013DF8
	b _08013E06
	.align 2, 0
_08013DF0: .4byte 0x08DFF6A4
_08013DF4: .4byte 0x00002298
_08013DF8: .4byte 0x7EDE89F9
_08013DFC:
	ldr r0, _08013E10
	ldr r0, [r0]
	ldr r1, _08013E14
	adds r0, r0, r1
	ldr r1, _08013E18
_08013E06:
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013E10: .4byte 0x08DFF6A4
_08013E14: .4byte 0x00002298
_08013E18: .4byte 0x7FFFFFFE
	.byte 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8013FB0
sub_8013FB0: @ 0x08013FB0
	push {lr}
	bl sub_8011940
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0xFD, 0xF7
	.byte 0xF5, 0xFC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8014348
sub_8014348: @ 0x08014348
	push {lr}
	bl sub_80124D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8014354
sub_8014354: @ 0x08014354
	push {lr}
	ldr r0, _08014384
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _08014388
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r1, _0801438C
	ldr r0, _08014390
	ldrb r0, [r0, #0x1a]
	strb r0, [r1]
	bl sub_80124F8
	pop {r0}
	bx r0
	.align 2, 0
_08014384: .4byte 0x02021C00
_08014388: .4byte gZones
_0801438C: .4byte 0x0201CB40
_08014390: .4byte gCardInfo
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_8016464
sub_8016464: @ 0x08016464
	push {r4, r5, r6, r7, lr}
	ldr r6, _08016484
	adds r0, r6, #0
	bl NumEmptyZonesInRow
	movs r1, #5
	subs r7, r1, r0
	cmp r7, #0
	bne _08016494
	ldr r0, _08016488
	ldr r0, [r0]
	ldr r1, _0801648C
	adds r0, r0, r1
	ldr r1, _08016490
	b _080164DE
	.align 2, 0
_08016484: .4byte gZones+0x14
_08016488: .4byte 0x08DFF6A4
_0801648C: .4byte 0x00002298
_08016490: .4byte 0x7EDE89F9
_08016494:
	movs r5, #0
	movs r4, #0
_08016498:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080164AE
	bl IsGodCard
	cmp r0, #1
	bne _080164AE
	adds r5, #1
_080164AE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016498
	cmp r7, r5
	bne _080164D4
	ldr r0, _080164C8
	ldr r0, [r0]
	ldr r1, _080164CC
	adds r0, r0, r1
	ldr r1, _080164D0
	b _080164DE
	.align 2, 0
_080164C8: .4byte 0x08DFF6A4
_080164CC: .4byte 0x00002298
_080164D0: .4byte 0x7EDE89F9
_080164D4:
	ldr r0, _080164E8
	ldr r0, [r0]
	ldr r1, _080164EC
	adds r0, r0, r1
	ldr r1, _080164F0
_080164DE:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080164E8: .4byte 0x08DFF6A4
_080164EC: .4byte 0x00002298
_080164F0: .4byte 0x7FFBBA26

	THUMB_FUNC_START sub_80164F4
sub_80164F4: @ 0x080164F4
	push {r4, r5, r6, r7, lr}
	ldr r6, _08016514
	adds r0, r6, #0
	bl NumEmptyZonesInRow
	movs r1, #5
	subs r7, r1, r0
	cmp r7, #0
	bne _08016524
	ldr r0, _08016518
	ldr r0, [r0]
	ldr r1, _0801651C
	adds r0, r0, r1
	ldr r1, _08016520
	b _0801656E
	.align 2, 0
_08016514: .4byte gZones+0x14
_08016518: .4byte 0x08DFF6A4
_0801651C: .4byte 0x00002298
_08016520: .4byte 0x7EDE89F9
_08016524:
	movs r5, #0
	movs r4, #0
_08016528:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801653E
	bl IsGodCard
	cmp r0, #1
	bne _0801653E
	adds r5, #1
_0801653E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016528
	cmp r7, r5
	bne _08016564
	ldr r0, _08016558
	ldr r0, [r0]
	ldr r1, _0801655C
	adds r0, r0, r1
	ldr r1, _08016560
	b _0801656E
	.align 2, 0
_08016558: .4byte 0x08DFF6A4
_0801655C: .4byte 0x00002298
_08016560: .4byte 0x7EDE89F9
_08016564:
	ldr r0, _08016578
	ldr r0, [r0]
	ldr r1, _0801657C
	adds r0, r0, r1
	ldr r1, _08016580
_0801656E:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016578: .4byte 0x08DFF6A4
_0801657C: .4byte 0x00002298
_08016580: .4byte 0x7FFDDD06

	THUMB_FUNC_START sub_8016584
sub_8016584: @ 0x08016584
	push {r4, r5, lr}
	movs r3, #0
	ldr r0, _080165D0
	adds r0, #0xf0
	ldrb r0, [r0]
	cmp r0, #6
	bne _080165E4
	movs r2, #0
	ldr r4, _080165D4
	movs r5, #0x10
_08016598:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	bne _080165B4
	ldrb r1, [r1, #5]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080165B4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080165B4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _08016598
	cmp r3, #0
	bne _080165E4
	ldr r0, _080165D8
	ldr r0, [r0]
	ldr r1, _080165DC
	adds r0, r0, r1
	ldr r1, _080165E0
	str r1, [r0]
	b _080165F4
	.align 2, 0
_080165D0: .4byte gDuel
_080165D4: .4byte gZones+0x28
_080165D8: .4byte 0x08DFF6A4
_080165DC: .4byte 0x00002298
_080165E0: .4byte 0x7EDE89F9
_080165E4:
	movs r0, #2
	bl sub_80432D0
	ldr r1, _080165FC
	ldr r1, [r1]
	ldr r2, _08016600
	adds r1, r1, r2
	str r0, [r1]
_080165F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080165FC: .4byte 0x08DFF6A4
_08016600: .4byte 0x00002298

	THUMB_FUNC_START sub_8016604
sub_8016604: @ 0x08016604
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r2, #0
	movs r4, #0
	ldr r0, _08016654
	ldrb r3, [r0, #3]
	ldr r5, _08016658
_08016614:
	cmp r3, r4
	beq _08016638
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0
	beq _08016638
	cmp r1, #0x59
	beq _08016638
	ldrb r1, [r0, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08016638
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08016638:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016614
	cmp r2, #0
	bne _08016668
	ldr r0, _0801665C
	ldr r0, [r0]
	ldr r1, _08016660
	adds r0, r0, r1
	ldr r1, _08016664
	b _0801671A
	.align 2, 0
_08016654: .4byte gMonEffect
_08016658: .4byte gZones+0x28
_0801665C: .4byte 0x08DFF6A4
_08016660: .4byte 0x00002298
_08016664: .4byte 0x7EDE89F9
_08016668:
	movs r6, #0
	movs r4, #0
	ldr r0, _080166BC
	mov r8, r0
	ldr r5, _080166C0
	ldr r7, _080166C4
_08016674:
	lsls r0, r4, #2
	mov r1, r8
	adds r2, r0, r1
	ldr r0, [r2]
	ldrh r0, [r0]
	adds r1, r0, #0
	cmp r1, #0
	beq _080166A2
	cmp r1, #0x59
	beq _080166A2
	strh r0, [r5]
	ldrb r0, [r7]
	strb r0, [r5, #2]
	ldr r0, [r2]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r0, _080166C8
	ldrh r0, [r0, #0x12]
	adds r6, r6, r0
_080166A2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016674
	cmp r6, #0
	bne _080166D8
	ldr r0, _080166CC
	ldr r0, [r0]
	ldr r1, _080166D0
	adds r0, r0, r1
	ldr r1, _080166D4
	b _0801671A
	.align 2, 0
_080166BC: .4byte gZones+0x28
_080166C0: .4byte gStatMod
_080166C4: .4byte gDuel+0xF0
_080166C8: .4byte gCardInfo
_080166CC: .4byte 0x08DFF6A4
_080166D0: .4byte 0x00002298
_080166D4: .4byte 0x7EDE89F9
_080166D8:
	ldr r4, _080166FC
	bl WhoseTurn
	ldr r1, _08016700
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, r6
	bhi _08016710
	ldr r0, _08016704
	ldr r0, [r0]
	ldr r1, _08016708
	adds r0, r0, r1
	ldr r1, _0801670C
	b _0801671A
	.align 2, 0
_080166FC: .4byte gLifePoints
_08016700: .4byte 0x080AED54
_08016704: .4byte 0x08DFF6A4
_08016708: .4byte 0x00002298
_0801670C: .4byte 0x7FFFFFFF
_08016710:
	ldr r0, _08016728
	ldr r0, [r0]
	ldr r1, _0801672C
	adds r0, r0, r1
	ldr r1, _08016730
_0801671A:
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016728: .4byte 0x08DFF6A4
_0801672C: .4byte 0x00002298
_08016730: .4byte 0x7FFFFFEE

	THUMB_FUNC_START sub_8016734
sub_8016734: @ 0x08016734
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r6, #0
	movs r5, #0
	ldr r0, _0801679C
	mov sb, r0
	ldr r4, _080167A0
	ldr r1, _080167A4
	mov r8, r1
	movs r7, #0xfa
	lsls r7, r7, #1
_0801674E:
	lsls r0, r5, #2
	mov r2, sb
	adds r1, r0, r2
	ldr r0, [r1]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08016780
	strh r0, [r4]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _080167A8
	ldrh r0, [r0, #0x12]
	cmp r0, r7
	bhi _08016780
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08016780:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0801674E
	cmp r6, #0
	bne _080167B8
	ldr r0, _080167AC
	ldr r0, [r0]
	ldr r1, _080167B0
	adds r0, r0, r1
	ldr r1, _080167B4
	b _080167C2
	.align 2, 0
_0801679C: .4byte gZones+0x28
_080167A0: .4byte gStatMod
_080167A4: .4byte gDuel+0xF0
_080167A8: .4byte gCardInfo
_080167AC: .4byte 0x08DFF6A4
_080167B0: .4byte 0x00002298
_080167B4: .4byte 0x7EDE89F9
_080167B8:
	ldr r0, _080167D0
	ldr r0, [r0]
	ldr r2, _080167D4
	adds r0, r0, r2
	ldr r1, _080167D8
_080167C2:
	str r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080167D0: .4byte 0x08DFF6A4
_080167D4: .4byte 0x00002298
_080167D8: .4byte 0x7EF2D56F

	THUMB_FUNC_START sub_80167DC
sub_80167DC: @ 0x080167DC
	push {r4, r5, lr}
	ldr r0, _08016828
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _0801682C
	ldr r3, _08016830
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08016834
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r5, _08016838
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	bne _08016848
	ldr r0, _0801683C
	ldr r0, [r0]
	ldr r1, _08016840
	adds r0, r0, r1
	ldr r1, _08016844
	b _0801688A
	.align 2, 0
_08016828: .4byte 0x02021C00
_0801682C: .4byte gStatMod
_08016830: .4byte gZones
_08016834: .4byte gDuel
_08016838: .4byte gCardInfo
_0801683C: .4byte 0x08DFF6A4
_08016840: .4byte 0x00002298
_08016844: .4byte 0x7EDE89F9
_08016848:
	ldr r4, _0801686C
	bl WhoseTurn
	ldr r1, _08016870
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	ldrh r5, [r5, #0x12]
	cmp r0, r5
	bhi _08016880
	ldr r0, _08016874
	ldr r0, [r0]
	ldr r1, _08016878
	adds r0, r0, r1
	ldr r1, _0801687C
	b _0801688A
	.align 2, 0
_0801686C: .4byte gLifePoints
_08016870: .4byte 0x080AED54
_08016874: .4byte 0x08DFF6A4
_08016878: .4byte 0x00002298
_0801687C: .4byte 0x7FFFFFFF
_08016880:
	ldr r0, _08016894
	ldr r0, [r0]
	ldr r1, _08016898
	adds r0, r0, r1
	ldr r1, _0801689C
_0801688A:
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016894: .4byte 0x08DFF6A4
_08016898: .4byte 0x00002298
_0801689C: .4byte 0x7FFFFFEB

	THUMB_FUNC_START sub_80168A0
sub_80168A0: @ 0x080168A0
	push {r4, r5, lr}
	ldr r0, _080168EC
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _080168F0
	ldr r3, _080168F4
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _080168F8
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r5, _080168FC
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	bne _0801690C
	ldr r0, _08016900
	ldr r0, [r0]
	ldr r1, _08016904
	adds r0, r0, r1
	ldr r1, _08016908
	b _0801694E
	.align 2, 0
_080168EC: .4byte 0x02021C00
_080168F0: .4byte gStatMod
_080168F4: .4byte gZones
_080168F8: .4byte gDuel
_080168FC: .4byte gCardInfo
_08016900: .4byte 0x08DFF6A4
_08016904: .4byte 0x00002298
_08016908: .4byte 0x7EDE89F9
_0801690C:
	ldr r4, _08016930
	bl WhoseTurn
	ldr r1, _08016934
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	ldrh r5, [r5, #0x12]
	cmp r0, r5
	bhi _08016944
	ldr r0, _08016938
	ldr r0, [r0]
	ldr r1, _0801693C
	adds r0, r0, r1
	ldr r1, _08016940
	b _0801694E
	.align 2, 0
_08016930: .4byte gLifePoints
_08016934: .4byte 0x080AED54
_08016938: .4byte 0x08DFF6A4
_0801693C: .4byte 0x00002298
_08016940: .4byte 0x7FFFFFFF
_08016944:
	ldr r0, _08016958
	ldr r0, [r0]
	ldr r1, _0801695C
	adds r0, r0, r1
	ldr r1, _08016960
_0801694E:
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016958: .4byte 0x08DFF6A4
_0801695C: .4byte 0x00002298
_08016960: .4byte 0x7FFFFFEA

	THUMB_FUNC_START sub_8016964
sub_8016964: @ 0x08016964
	push {r4, r5, r6, lr}
	ldr r5, _08016994
	bl WhoseTurn
	ldr r6, _08016998
	adds r0, r0, r6
	ldrb r4, [r0]
	lsls r4, r4, #1
	adds r4, r4, r5
	bl WhoseTurn
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _080169A8
	ldr r0, _0801699C
	ldr r0, [r0]
	ldr r1, _080169A0
	adds r0, r0, r1
	ldr r1, _080169A4
	b _080169E6
	.align 2, 0
_08016994: .4byte gLifePoints
_08016998: .4byte 0x080AED54
_0801699C: .4byte 0x08DFF6A4
_080169A0: .4byte 0x00002298
_080169A4: .4byte 0x7FFFFFFF
_080169A8:
	bl WhoseTurn
	adds r0, r0, r6
	ldrb r4, [r0]
	lsls r4, r4, #1
	adds r4, r4, r5
	bl WhoseTurn
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	bne _080169DC
	ldr r0, _080169D0
	ldr r0, [r0]
	ldr r1, _080169D4
	adds r0, r0, r1
	ldr r1, _080169D8
	b _080169E6
	.align 2, 0
_080169D0: .4byte 0x08DFF6A4
_080169D4: .4byte 0x00002298
_080169D8: .4byte 0x7FFFFFE7
_080169DC:
	ldr r0, _080169F0
	ldr r0, [r0]
	ldr r1, _080169F4
	adds r0, r0, r1
	ldr r1, _080169F8
_080169E6:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080169F0: .4byte 0x08DFF6A4
_080169F4: .4byte 0x00002298
_080169F8: .4byte 0x7EDE89F9

	THUMB_FUNC_START sub_80169FC
sub_80169FC: @ 0x080169FC
	push {r4, r5, lr}
	ldr r5, _08016A18
	adds r0, r5, #0
	bl NumEmptyZonesInRow
	cmp r0, #5
	bne _08016A28
	ldr r0, _08016A1C
	ldr r0, [r0]
	ldr r1, _08016A20
	adds r0, r0, r1
	ldr r1, _08016A24
	b _08016ACA
	.align 2, 0
_08016A18: .4byte gZones+0x14
_08016A1C: .4byte 0x08DFF6A4
_08016A20: .4byte 0x00002298
_08016A24: .4byte 0x7EDE89F9
_08016A28:
	movs r0, #1
	bl sub_8043810
	cmp r0, #0
	beq _08016AC0
	adds r0, r5, #0
	bl sub_80430D8
	lsls r0, r0, #0x18
	ldr r4, _08016A70
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldr r1, _08016A74
	adds r1, #0xf0
	ldrb r1, [r1]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r5, _08016A78
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	bne _08016A88
	ldr r0, _08016A7C
	ldr r0, [r0]
	ldr r1, _08016A80
	adds r0, r0, r1
	ldr r1, _08016A84
	b _08016ACA
	.align 2, 0
_08016A70: .4byte gStatMod
_08016A74: .4byte gDuel
_08016A78: .4byte gCardInfo
_08016A7C: .4byte 0x08DFF6A4
_08016A80: .4byte 0x00002298
_08016A84: .4byte 0x7EDE89F9
_08016A88:
	ldr r4, _08016AAC
	bl WhoseTurn
	ldr r1, _08016AB0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r5, #0x12]
	ldrh r0, [r0]
	cmp r1, r0
	blo _08016AC0
	ldr r0, _08016AB4
	ldr r0, [r0]
	ldr r1, _08016AB8
	adds r0, r0, r1
	ldr r1, _08016ABC
	b _08016ACA
	.align 2, 0
_08016AAC: .4byte gLifePoints
_08016AB0: .4byte 0x080AED54
_08016AB4: .4byte 0x08DFF6A4
_08016AB8: .4byte 0x00002298
_08016ABC: .4byte 0x7FFFFFFF
_08016AC0:
	ldr r0, _08016AD4
	ldr r0, [r0]
	ldr r1, _08016AD8
	adds r0, r0, r1
	ldr r1, _08016ADC
_08016ACA:
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016AD4: .4byte 0x08DFF6A4
_08016AD8: .4byte 0x00002298
_08016ADC: .4byte 0x7FFFFFE9

	THUMB_FUNC_START sub_8016AE0
sub_8016AE0: @ 0x08016AE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _08016B00
	adds r0, r4, #0
	bl NumEmptyZonesAndGodCardsInRow
	cmp r0, #5
	bne _08016B10
	ldr r0, _08016B04
	ldr r0, [r0]
	ldr r1, _08016B08
	adds r0, r0, r1
	ldr r1, _08016B0C
	b _08016BB2
	.align 2, 0
_08016B00: .4byte gZones+0x14
_08016B04: .4byte 0x08DFF6A4
_08016B08: .4byte 0x00002298
_08016B0C: .4byte 0x7EDE89F9
_08016B10:
	adds r0, r4, #0
	bl HighestAtkMonInRowExceptGodCards
	lsls r0, r0, #0x18
	adds r7, r4, #0
	subs r7, #0x14
	lsrs r0, r0, #0x16
	adds r3, r0, r4
	ldr r2, [r3]
	ldrb r1, [r2, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016BA8
	ldr r4, _08016B8C
	ldrh r0, [r2]
	strh r0, [r4]
	ldr r5, _08016B90
	adds r5, #0xf0
	ldrb r0, [r5]
	strb r0, [r4, #2]
	ldr r0, [r3]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r6, _08016B94
	ldrh r0, [r6, #0x12]
	mov r8, r0
	ldr r0, _08016B98
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldrb r1, [r5]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldrh r6, [r6, #0x12]
	cmp r8, r6
	bhi _08016BA8
	ldr r0, _08016B9C
	ldr r0, [r0]
	ldr r1, _08016BA0
	adds r0, r0, r1
	ldr r1, _08016BA4
	b _08016BB2
	.align 2, 0
_08016B8C: .4byte gStatMod
_08016B90: .4byte gDuel
_08016B94: .4byte gCardInfo
_08016B98: .4byte 0x02021C00
_08016B9C: .4byte 0x08DFF6A4
_08016BA0: .4byte 0x00002298
_08016BA4: .4byte 0x7EDE89F9
_08016BA8:
	ldr r0, _08016BC0
	ldr r0, [r0]
	ldr r1, _08016BC4
	adds r0, r0, r1
	ldr r1, _08016BC8
_08016BB2:
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016BC0: .4byte 0x08DFF6A4
_08016BC4: .4byte 0x00002298
_08016BC8: .4byte 0x7FF55170

	THUMB_FUNC_START sub_8016BCC
sub_8016BCC: @ 0x08016BCC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r5, _08016BF0
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_8043584
	cmp r0, #0
	bne _08016C00
	ldr r0, _08016BF4
	ldr r0, [r0]
	ldr r1, _08016BF8
	adds r0, r0, r1
	ldr r1, _08016BFC
	b _08016C9E
	.align 2, 0
_08016BF0: .4byte gZones+0x50
_08016BF4: .4byte 0x08DFF6A4
_08016BF8: .4byte 0x00002298
_08016BFC: .4byte 0x7EDE89F9
_08016C00:
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_8043164
	lsls r0, r0, #0x18
	ldr r4, _08016C78
	movs r1, #0x50
	rsbs r1, r1, #0
	adds r1, r1, r5
	mov sb, r1
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldr r5, _08016C7C
	adds r5, #0xf0
	ldrb r1, [r5]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r6, _08016C80
	ldrh r0, [r6, #0x12]
	mov r8, r0
	ldr r0, _08016C84
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldrb r1, [r5]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldrh r6, [r6, #0x12]
	cmp r8, r6
	bhi _08016C94
	ldr r0, _08016C88
	ldr r0, [r0]
	ldr r1, _08016C8C
	adds r0, r0, r1
	ldr r1, _08016C90
	b _08016C9E
	.align 2, 0
_08016C78: .4byte gStatMod
_08016C7C: .4byte gDuel
_08016C80: .4byte gCardInfo
_08016C84: .4byte 0x02021C00
_08016C88: .4byte 0x08DFF6A4
_08016C8C: .4byte 0x00002298
_08016C90: .4byte 0x7EDE89F9
_08016C94:
	ldr r0, _08016CAC
	ldr r0, [r0]
	ldr r1, _08016CB0
	adds r0, r0, r1
	ldr r1, _08016CB4
_08016C9E:
	str r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016CAC: .4byte 0x08DFF6A4
_08016CB0: .4byte 0x00002298
_08016CB4: .4byte 0x7FB3183C

	THUMB_FUNC_START sub_8016CB8
sub_8016CB8: @ 0x08016CB8
	push {r4, r5, lr}
	ldr r0, _08016D04
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _08016D08
	ldr r3, _08016D0C
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08016D10
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r5, _08016D14
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	bne _08016D24
	ldr r0, _08016D18
	ldr r0, [r0]
	ldr r1, _08016D1C
	adds r0, r0, r1
	ldr r1, _08016D20
	b _08016D66
	.align 2, 0
_08016D04: .4byte 0x02021C00
_08016D08: .4byte gStatMod
_08016D0C: .4byte gZones
_08016D10: .4byte gDuel
_08016D14: .4byte gCardInfo
_08016D18: .4byte 0x08DFF6A4
_08016D1C: .4byte 0x00002298
_08016D20: .4byte 0x7EDE89F9
_08016D24:
	ldr r4, _08016D48
	bl WhoseTurn
	ldr r1, _08016D4C
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	ldrh r5, [r5, #0x12]
	cmp r0, r5
	bhi _08016D5C
	ldr r0, _08016D50
	ldr r0, [r0]
	ldr r1, _08016D54
	adds r0, r0, r1
	ldr r1, _08016D58
	b _08016D66
	.align 2, 0
_08016D48: .4byte gLifePoints
_08016D4C: .4byte 0x080AED54
_08016D50: .4byte 0x08DFF6A4
_08016D54: .4byte 0x00002298
_08016D58: .4byte 0x7FFFFFFF
_08016D5C:
	ldr r0, _08016D70
	ldr r0, [r0]
	ldr r1, _08016D74
	adds r0, r0, r1
	ldr r1, _08016D78
_08016D66:
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016D70: .4byte 0x08DFF6A4
_08016D74: .4byte 0x00002298
_08016D78: .4byte 0x7FFFFFED

	THUMB_FUNC_START sub_8016D7C
sub_8016D7C: @ 0x08016D7C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08016D94
	bl NumEmptyZonesInRow
	cmp r0, #0
	bne _08016DA4
	ldr r0, _08016D98
	ldr r0, [r0]
	ldr r1, _08016D9C
	adds r0, r0, r1
	ldr r1, _08016DA0
	b _08016E82
	.align 2, 0
_08016D94: .4byte gHands+0x14
_08016D98: .4byte 0x08DFF6A4
_08016D9C: .4byte 0x00002298
_08016DA0: .4byte 0x7EDE89F9
_08016DA4:
	movs r5, #0
	movs r4, #0
	ldr r6, _08016E08
_08016DAA:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08016DC4
	adds r0, r1, #0
	bl CardPosition
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08016DC4
	adds r5, #1
_08016DC4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016DAA
	movs r4, #0
	ldr r6, _08016E0C
_08016DD2:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08016DEC
	adds r0, r1, #0
	bl CardPosition
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08016DEC
	adds r5, #1
_08016DEC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016DD2
	cmp r5, #0
	bne _08016E1C
	ldr r0, _08016E10
	ldr r0, [r0]
	ldr r1, _08016E14
	adds r0, r0, r1
	ldr r1, _08016E18
	b _08016E82
	.align 2, 0
_08016E08: .4byte gZones+0x14
_08016E0C: .4byte gZones
_08016E10: .4byte 0x08DFF6A4
_08016E14: .4byte 0x00002298
_08016E18: .4byte 0x7EDE89F9
_08016E1C:
	ldr r0, _08016E64
	ldrb r0, [r0, #2]
	movs r6, #0xf
	ands r6, r0
	movs r5, #0
	movs r4, #0
	ldr r7, _08016E68
_08016E2A:
	cmp r4, r6
	beq _08016E48
	lsls r0, r4, #2
	adds r0, r0, r7
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08016E48
	adds r0, r1, #0
	bl CardPosition
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08016E48
	adds r5, #1
_08016E48:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016E2A
	cmp r5, #0
	beq _08016E78
	ldr r0, _08016E6C
	ldr r0, [r0]
	ldr r1, _08016E70
	adds r0, r0, r1
	ldr r1, _08016E74
	b _08016E82
	.align 2, 0
_08016E64: .4byte 0x02021C00
_08016E68: .4byte gZones+0x28
_08016E6C: .4byte 0x08DFF6A4
_08016E70: .4byte 0x00002298
_08016E74: .4byte 0x7EDE89F9
_08016E78:
	ldr r0, _08016E8C
	ldr r0, [r0]
	ldr r1, _08016E90
	adds r0, r0, r1
	ldr r1, _08016E94
_08016E82:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016E8C: .4byte 0x08DFF6A4
_08016E90: .4byte 0x00002298
_08016E94: .4byte 0x7FF5516D

	THUMB_FUNC_START sub_8016E98
sub_8016E98: @ 0x08016E98
	push {r4, r5, r6, lr}
	ldr r0, _08016EB0
	bl NumEmptyZonesInRow
	cmp r0, #5
	bne _08016EC0
	ldr r0, _08016EB4
	ldr r0, [r0]
	ldr r1, _08016EB8
	adds r0, r0, r1
	ldr r1, _08016EBC
	b _08016F1A
	.align 2, 0
_08016EB0: .4byte gHands
_08016EB4: .4byte 0x08DFF6A4
_08016EB8: .4byte 0x00002298
_08016EBC: .4byte 0x7EDE89F9
_08016EC0:
	movs r5, #0
	movs r4, #0
	ldr r6, _08016F00
_08016EC6:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08016EE6
	adds r0, r1, #0
	bl CardPosition
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08016EE6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08016EE6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016EC6
	cmp r5, #0
	bne _08016F10
	ldr r0, _08016F04
	ldr r0, [r0]
	ldr r1, _08016F08
	adds r0, r0, r1
	ldr r1, _08016F0C
	b _08016F1A
	.align 2, 0
_08016F00: .4byte gZones
_08016F04: .4byte 0x08DFF6A4
_08016F08: .4byte 0x00002298
_08016F0C: .4byte 0x7EDE89F9
_08016F10:
	ldr r0, _08016F24
	ldr r0, [r0]
	ldr r1, _08016F28
	adds r0, r0, r1
	ldr r1, _08016F2C
_08016F1A:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016F24: .4byte 0x08DFF6A4
_08016F28: .4byte 0x00002298
_08016F2C: .4byte 0x7FFFFFF3

	THUMB_FUNC_START sub_8016F30
sub_8016F30: @ 0x08016F30
	push {r4, r5, r6, lr}
	ldr r0, _08016F48
	bl NumEmptyZonesInRow
	cmp r0, #5
	bne _08016F58
	ldr r0, _08016F4C
	ldr r0, [r0]
	ldr r1, _08016F50
	adds r0, r0, r1
	ldr r1, _08016F54
	b _08016FB2
	.align 2, 0
_08016F48: .4byte gHands
_08016F4C: .4byte 0x08DFF6A4
_08016F50: .4byte 0x00002298
_08016F54: .4byte 0x7EDE89F9
_08016F58:
	movs r5, #0
	movs r4, #0
	ldr r6, _08016F98
_08016F5E:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08016F7C
	adds r0, r1, #0
	bl CardPosition
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08016F7C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08016F7C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016F5E
	cmp r5, #0
	bne _08016FA8
	ldr r0, _08016F9C
	ldr r0, [r0]
	ldr r1, _08016FA0
	adds r0, r0, r1
	ldr r1, _08016FA4
	b _08016FB2
	.align 2, 0
_08016F98: .4byte gZones
_08016F9C: .4byte 0x08DFF6A4
_08016FA0: .4byte 0x00002298
_08016FA4: .4byte 0x7EDE89F9
_08016FA8:
	ldr r0, _08016FBC
	ldr r0, [r0]
	ldr r1, _08016FC0
	adds r0, r0, r1
	ldr r1, _08016FC4
_08016FB2:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016FBC: .4byte 0x08DFF6A4
_08016FC0: .4byte 0x00002298
_08016FC4: .4byte 0x7FFFFFF2

	THUMB_FUNC_START sub_8016FC8
sub_8016FC8: @ 0x08016FC8
	push {r4, r5, r6, lr}
	ldr r0, _08016FE0
	bl NumEmptyZonesInRow
	cmp r0, #5
	bne _08016FF0
	ldr r0, _08016FE4
	ldr r0, [r0]
	ldr r1, _08016FE8
	adds r0, r0, r1
	ldr r1, _08016FEC
	b _0801704A
	.align 2, 0
_08016FE0: .4byte gHands
_08016FE4: .4byte 0x08DFF6A4
_08016FE8: .4byte 0x00002298
_08016FEC: .4byte 0x7EDE89F9
_08016FF0:
	movs r5, #0
	movs r4, #0
	ldr r6, _08017030
_08016FF6:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08017014
	adds r0, r1, #0
	bl CardPosition
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08017014
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08017014:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08016FF6
	cmp r5, #0
	bne _08017040
	ldr r0, _08017034
	ldr r0, [r0]
	ldr r1, _08017038
	adds r0, r0, r1
	ldr r1, _0801703C
	b _0801704A
	.align 2, 0
_08017030: .4byte gZones+0x14
_08017034: .4byte 0x08DFF6A4
_08017038: .4byte 0x00002298
_0801703C: .4byte 0x7EDE89F9
_08017040:
	ldr r0, _08017054
	ldr r0, [r0]
	ldr r1, _08017058
	adds r0, r0, r1
	ldr r1, _0801705C
_0801704A:
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017054: .4byte 0x08DFF6A4
_08017058: .4byte 0x00002298
_0801705C: .4byte 0x7FF5516E

	THUMB_FUNC_START sub_8017060
sub_8017060: @ 0x08017060
	push {r4, r5, r6, r7, lr}
	ldr r0, _08017078
	bl NumEmptyZonesInRow
	cmp r0, #5
	bne _08017088
	ldr r0, _0801707C
	ldr r0, [r0]
	ldr r1, _08017080
	adds r0, r0, r1
	ldr r1, _08017084
	b _080170EE
	.align 2, 0
_08017078: .4byte gHands
_0801707C: .4byte 0x08DFF6A4
_08017080: .4byte 0x00002298
_08017084: .4byte 0x7EDE89F9
_08017088:
	movs r6, #0
	movs r5, #0
	ldr r7, _080170D4
_0801708E:
	lsls r0, r5, #2
	adds r0, r0, r7
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _080170B8
	adds r0, r4, #0
	bl CardPosition
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080170B2
	ldrh r0, [r4]
	bl IsGodCard
	cmp r0, #1
	beq _080170B8
_080170B2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080170B8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0801708E
	cmp r6, #0
	bne _080170E4
	ldr r0, _080170D8
	ldr r0, [r0]
	ldr r1, _080170DC
	adds r0, r0, r1
	ldr r1, _080170E0
	b _080170EE
	.align 2, 0
_080170D4: .4byte gZones+0x14
_080170D8: .4byte 0x08DFF6A4
_080170DC: .4byte 0x00002298
_080170E0: .4byte 0x7EDE89F9
_080170E4:
	ldr r0, _080170F8
	ldr r0, [r0]
	ldr r1, _080170FC
	adds r0, r0, r1
	ldr r1, _08017100
_080170EE:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080170F8: .4byte 0x08DFF6A4
_080170FC: .4byte 0x00002298
_08017100: .4byte 0x7FF5516F

	THUMB_FUNC_START sub_8017104
sub_8017104: @ 0x08017104
	push {lr}
	ldr r0, _08017120
	ldr r0, [r0]
	ldrh r1, [r0]
	ldr r0, _08017124
	cmp r1, r0
	beq _08017134
	ldr r0, _08017128
	ldr r0, [r0]
	ldr r1, _0801712C
	adds r0, r0, r1
	ldr r1, _08017130
	b _080171C6
	.align 2, 0
_08017120: .4byte gDuel+0x100
_08017124: .4byte 0x00000239
_08017128: .4byte 0x08DFF6A4
_0801712C: .4byte 0x00002298
_08017130: .4byte 0x7EDE89F9
_08017134:
	bl WhoseTurn
	cmp r0, #0
	bne _08017168
	ldr r0, _08017154
	ldrh r1, [r0]
	ldr r0, _08017158
	cmp r1, r0
	bhi _08017194
	ldr r0, _0801715C
	ldr r0, [r0]
	ldr r1, _08017160
	adds r0, r0, r1
	ldr r1, _08017164
	b _080171C6
	.align 2, 0
_08017154: .4byte gLifePoints
_08017158: .4byte 0x000003E7
_0801715C: .4byte 0x08DFF6A4
_08017160: .4byte 0x00002298
_08017164: .4byte 0x7EDE89F9
_08017168:
	ldr r0, _08017180
	ldrh r1, [r0, #2]
	ldr r0, _08017184
	cmp r1, r0
	bhi _08017194
	ldr r0, _08017188
	ldr r0, [r0]
	ldr r1, _0801718C
	adds r0, r0, r1
	ldr r1, _08017190
	b _080171C6
	.align 2, 0
_08017180: .4byte gLifePoints
_08017184: .4byte 0x000003E7
_08017188: .4byte 0x08DFF6A4
_0801718C: .4byte 0x00002298
_08017190: .4byte 0x7EDE89F9
_08017194:
	ldr r0, _080171AC
	bl NumEmptyZonesInRow
	cmp r0, #0
	bgt _080171BC
	ldr r0, _080171B0
	ldr r0, [r0]
	ldr r1, _080171B4
	adds r0, r0, r1
	ldr r1, _080171B8
	b _080171C6
	.align 2, 0
_080171AC: .4byte gZones+0x28
_080171B0: .4byte 0x08DFF6A4
_080171B4: .4byte 0x00002298
_080171B8: .4byte 0x7EDE89F9
_080171BC:
	ldr r0, _080171CC
	ldr r0, [r0]
	ldr r1, _080171D0
	adds r0, r0, r1
	ldr r1, _080171D4
_080171C6:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080171CC: .4byte 0x08DFF6A4
_080171D0: .4byte 0x00002298
_080171D4: .4byte 0x7FF32E86

	THUMB_FUNC_START sub_80171D8
sub_80171D8: @ 0x080171D8
	push {r4, r5, lr}
	ldr r0, _08017224
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _08017228
	ldr r3, _0801722C
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08017230
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r5, _08017234
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	bne _08017244
	ldr r0, _08017238
	ldr r0, [r0]
	ldr r1, _0801723C
	adds r0, r0, r1
	ldr r1, _08017240
	b _08017286
	.align 2, 0
_08017224: .4byte 0x02021C00
_08017228: .4byte gStatMod
_0801722C: .4byte gZones
_08017230: .4byte gDuel
_08017234: .4byte gCardInfo
_08017238: .4byte 0x08DFF6A4
_0801723C: .4byte 0x00002298
_08017240: .4byte 0x7EDE89F9
_08017244:
	ldr r4, _08017268
	bl WhoseTurn
	ldr r1, _0801726C
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	ldrh r5, [r5, #0x12]
	cmp r0, r5
	bhi _0801727C
	ldr r0, _08017270
	ldr r0, [r0]
	ldr r1, _08017274
	adds r0, r0, r1
	ldr r1, _08017278
	b _08017286
	.align 2, 0
_08017268: .4byte gLifePoints
_0801726C: .4byte 0x080AED54
_08017270: .4byte 0x08DFF6A4
_08017274: .4byte 0x00002298
_08017278: .4byte 0x7FFFFFFF
_0801727C:
	ldr r0, _08017290
	ldr r0, [r0]
	ldr r1, _08017294
	adds r0, r0, r1
	ldr r1, _08017298
_08017286:
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017290: .4byte 0x08DFF6A4
_08017294: .4byte 0x00002298
_08017298: .4byte 0x7FFFFFEC

	THUMB_FUNC_START sub_801729C
sub_801729C: @ 0x0801729C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _080172C0
	bl NumEmptyZonesInRow
	cmp r0, #5
	bne _080172D0
	ldr r0, _080172C4
	ldr r0, [r0]
	ldr r1, _080172C8
	adds r0, r0, r1
	ldr r1, _080172CC
	b _080174BA
	.align 2, 0
_080172C0: .4byte gZones+0x14
_080172C4: .4byte 0x08DFF6A4
_080172C8: .4byte 0x00002298
_080172CC: .4byte 0x7EDE89F9
_080172D0:
	bl WhoseTurn
	cmp r0, #0
	bne _080172E8
	ldr r0, _080172E4
	ldrh r2, [r0, #2]
	mov sl, r2
	ldrh r0, [r0]
	b _080172F0
	.align 2, 0
_080172E4: .4byte gLifePoints
_080172E8:
	ldr r0, _080173BC
	ldrh r1, [r0]
	mov sl, r1
	ldrh r0, [r0, #2]
_080172F0:
	str r0, [sp, #4]
	ldr r0, _080173C0
	ldrb r1, [r0, #2]
	lsrs r2, r1, #4
	movs r0, #0xf
	ands r0, r1
	ldr r4, _080173C4
	ldr r3, _080173C8
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _080173CC
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [r1]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r0, _080173D0
	ldrh r2, [r0, #0x12]
	mov sb, r2
	ldrb r0, [r0, #0x17]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x10]
	movs r2, #0
	str r2, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _08017430
	mov r1, sl
	cmp r1, #0
	ble _08017436
_08017348:
	ldr r0, _080173C8
	ldr r2, [sp, #8]
	lsls r1, r2, #2
	adds r0, #0x14
	adds r1, r1, r0
	ldr r4, [r1]
	ldrh r0, [r4]
	cmp r0, #0
	beq _08017410
	adds r0, r4, #0
	bl CardPosition
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08017410
	ldrh r0, [r4]
	ldr r1, _080173C4
	strh r0, [r1]
	ldr r0, _080173CC
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r0, r4, #0
	bl sub_804069C
	ldr r2, _080173C4
	strb r0, [r2, #3]
	adds r0, r2, #0
	bl sub_800B318
	ldr r0, _080173D0
	ldrh r5, [r0, #0x12]
	adds r7, r5, #0
	ldrh r6, [r0, #0x14]
	mov r8, r6
	ldrb r0, [r0, #0x17]
	ldr r1, [sp]
	bl sub_803FBCC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _080173EE
	cmp r0, #0
	bne _080173D4
	ldrb r1, [r4, #5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080173F8
	cmp sb, r5
	bls _080173F8
	mov r1, sb
	subs r0, r1, r5
	mov r2, sl
	subs r2, r2, r0
	mov sl, r2
	b _080173F8
	.align 2, 0
_080173BC: .4byte gLifePoints
_080173C0: .4byte 0x02021C00
_080173C4: .4byte gStatMod
_080173C8: .4byte gZones
_080173CC: .4byte gDuel
_080173D0: .4byte gCardInfo
_080173D4:
	ldrb r1, [r4, #5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080173F4
	cmp sb, r7
	bls _080173EE
	mov r1, sb
	subs r0, r1, r7
	mov r2, sl
	subs r2, r2, r0
	mov sl, r2
	b _080173F8
_080173EE:
	movs r0, #0
	str r0, [sp, #0x10]
	b _08017410
_080173F4:
	cmp sb, r6
	bls _08017404
_080173F8:
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	b _08017410
_08017404:
	mov r1, r8
	mov r2, sb
	subs r0, r1, r2
	ldr r1, [sp, #4]
	subs r1, r1, r0
	str r1, [sp, #4]
_08017410:
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #4
	bhi _08017430
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _08017430
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _08017430
	mov r1, sl
	cmp r1, #0
	bgt _08017348
_08017430:
	mov r2, sl
	cmp r2, #0
	bgt _08017450
_08017436:
	ldr r0, _08017444
	ldr r0, [r0]
	ldr r1, _08017448
	adds r0, r0, r1
	ldr r1, _0801744C
	b _080174BA
	.align 2, 0
_08017444: .4byte 0x08DFF6A4
_08017448: .4byte 0x00002298
_0801744C: .4byte 0x7FFFFFFF
_08017450:
	ldr r2, [sp, #4]
	cmp r2, #0
	bgt _08017470
	ldr r0, _08017464
	ldr r0, [r0]
	ldr r1, _08017468
	adds r0, r0, r1
	ldr r1, _0801746C
	b _080174BA
	.align 2, 0
_08017464: .4byte 0x08DFF6A4
_08017468: .4byte 0x00002298
_0801746C: .4byte 0x7EDE89F9
_08017470:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	bne _08017490
	ldr r0, _08017484
	ldr r0, [r0]
	ldr r1, _08017488
	adds r0, r0, r1
	ldr r1, _0801748C
	b _080174BA
	.align 2, 0
_08017484: .4byte 0x08DFF6A4
_08017488: .4byte 0x00002298
_0801748C: .4byte 0x7EDE89F9
_08017490:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080174B0
	ldr r0, _080174A4
	ldr r0, [r0]
	ldr r1, _080174A8
	adds r0, r0, r1
	ldr r1, _080174AC
	b _080174BA
	.align 2, 0
_080174A4: .4byte 0x08DFF6A4
_080174A8: .4byte 0x00002298
_080174AC: .4byte 0x7EDE89F9
_080174B0:
	ldr r0, _080174CC
	ldr r0, [r0]
	ldr r2, _080174D0
	adds r0, r0, r2
	ldr r1, _080174D4
_080174BA:
	str r1, [r0]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080174CC: .4byte 0x08DFF6A4
_080174D0: .4byte 0x00002298
_080174D4: .4byte 0x7EF1C3F5

	THUMB_FUNC_START sub_80174D8
sub_80174D8: @ 0x080174D8
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	movs r5, #0
	ldr r7, _08017534
_080174E0:
	lsls r0, r5, #2
	adds r0, r0, r7
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801750A
	adds r0, r4, #0
	bl CardPosition
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08017504
	ldrh r0, [r4]
	bl IsGodCard
	cmp r0, #1
	beq _0801750A
_08017504:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0801750A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080174E0
	ldr r0, _08017538
	bl NumEmptyZonesInRow
	subs r0, #5
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	subs r1, r1, r0
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08017548
	ldr r0, _0801753C
	ldr r0, [r0]
	ldr r1, _08017540
	adds r0, r0, r1
	ldr r1, _08017544
	b _08017552
	.align 2, 0
_08017534: .4byte gZones+0x14
_08017538: .4byte gZones
_0801753C: .4byte 0x08DFF6A4
_08017540: .4byte 0x00002298
_08017544: .4byte 0x7EDE89F9
_08017548:
	ldr r0, _0801755C
	ldr r0, [r0]
	ldr r1, _08017560
	adds r0, r0, r1
	ldr r1, _08017564
_08017552:
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801755C: .4byte 0x08DFF6A4
_08017560: .4byte 0x00002298
_08017564: .4byte 0x7FF99745

	THUMB_FUNC_START sub_8017568
sub_8017568: @ 0x08017568
	push {lr}
	ldr r1, _08017580
	ldr r0, _08017584
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_08017580: .4byte 0x08E00330
_08017584: .4byte 0x0201CB44

	THUMB_FUNC_START sub_8017588
sub_8017588: @ 0x08017588
	push {lr}
	ldr r0, _080175C4
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _080175C8
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r2, _080175CC
	ldr r1, _080175D0
	ldrb r0, [r1, #0x1b]
	strb r0, [r2]
	ldr r2, _080175D4
	ldrb r0, [r1, #0x1b]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_080175C4: .4byte 0x02021C00
_080175C8: .4byte gZones
_080175CC: .4byte 0x0201CB44
_080175D0: .4byte gCardInfo
_080175D4: .4byte 0x08E00150
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x10, 0xB5, 0x07, 0x4A, 0x10, 0x68, 0x07, 0x49, 0x44, 0x18, 0x07, 0x48, 0x20, 0x60, 0x00, 0x23
	.byte 0x06, 0x49, 0x08, 0x68, 0x00, 0x88, 0x00, 0x28, 0x0C, 0xD0, 0x05, 0x48, 0x20, 0x60, 0x19, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0xD0, 0x3F, 0x02, 0x02
	.byte 0xF4, 0xFF, 0xFF, 0x7F, 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x04, 0x2B, 0x0A, 0xD8, 0x98, 0x00
	.byte 0x40, 0x18, 0x00, 0x68, 0x00, 0x88, 0x00, 0x28, 0xF4, 0xD0, 0x10, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x98, 0x22, 0x00, 0x00
	.byte 0xF4, 0xFF, 0xFF, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x41, 0xF0, 0x63, 0xF8, 0x00, 0x06
	.byte 0x07, 0x49, 0xC0, 0x0D, 0x40, 0x18, 0x01, 0x88, 0x06, 0x48, 0x40, 0x1A, 0x06, 0x49, 0x88, 0x42
	.byte 0x12, 0xDC, 0x06, 0x48, 0x00, 0x68, 0x06, 0x49, 0x40, 0x18, 0x06, 0x49, 0x11, 0xE0, 0x00, 0x00
	.byte 0x58, 0x42, 0x02, 0x02, 0xE8, 0xFD, 0x00, 0x00, 0xE7, 0x03, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xA3, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x05, 0x48, 0x2B, 0xF0, 0x20, 0xFF, 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0x20, 0x40, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xA1, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x07, 0x48, 0xC1, 0x21, 0x49, 0x00
	.byte 0x2B, 0xF0, 0x58, 0xFE, 0x00, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18
	.byte 0x04, 0x49, 0x01, 0x60, 0x10, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0, 0xB9, 0xFD, 0x03, 0x49
	.byte 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E, 0x84, 0x19, 0x20, 0x68
	.byte 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0xA2, 0xFD, 0x21, 0x68, 0x81, 0x42
	.byte 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0xDA, 0x83, 0xFD, 0x7E, 0x28, 0x68, 0x80, 0x19
	.byte 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x07, 0x48, 0xC1, 0x21, 0x49, 0x00
	.byte 0x2B, 0xF0, 0x10, 0xFE, 0x00, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18
	.byte 0x04, 0x49, 0x01, 0x60, 0x10, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0, 0x71, 0xFD, 0x03, 0x49
	.byte 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E, 0x84, 0x19, 0x20, 0x68
	.byte 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0x5A, 0xFD, 0x21, 0x68, 0x81, 0x42
	.byte 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x78, 0xD5, 0xF2, 0x7E, 0x28, 0x68, 0x80, 0x19
	.byte 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x10, 0xB5, 0x06, 0x4C, 0x20, 0x1C, 0x04, 0x21
	.byte 0x2B, 0xF0, 0xC8, 0xFD, 0x00, 0x28, 0x0D, 0xDD, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x1E, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x67, 0xD5, 0xF2, 0x7E, 0x20, 0x1C, 0x23, 0x21, 0x2B, 0xF0, 0xB4, 0xFD, 0x00, 0x28, 0x0B, 0xDD
	.byte 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x67, 0xD5, 0xF2, 0x7E, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18
	.byte 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D
	.byte 0x28, 0x68, 0x09, 0x4E, 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20
	.byte 0x2B, 0xF0, 0xFE, 0xFC, 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49
	.byte 0x01, 0x60, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0xBF, 0xD1, 0xDD, 0x7F, 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0xB5, 0x07, 0x48, 0x01, 0x21, 0x2B, 0xF0, 0x6D, 0xFD, 0x00, 0x28, 0x0E, 0xDD, 0x02, 0x20
	.byte 0x2B, 0xF0, 0xDE, 0xFC, 0x03, 0x49, 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x0B, 0xE0
	.byte 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E
	.byte 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0xB8, 0xFC
	.byte 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x79, 0xD5, 0xF2, 0x7E
	.byte 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x06, 0x48
	.byte 0xF0, 0x30, 0x00, 0x78, 0x02, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18
	.byte 0x04, 0x49, 0x01, 0x60, 0x10, 0xE0, 0x00, 0x00, 0xC0, 0x3E, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0, 0x89, 0xFC, 0x03, 0x49
	.byte 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E, 0x84, 0x19, 0x20, 0x68
	.byte 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0x72, 0xFC, 0x21, 0x68, 0x81, 0x42
	.byte 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x3F, 0x18, 0xB3, 0x7F, 0x28, 0x68, 0x80, 0x19
	.byte 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x01, 0x20, 0x0B, 0x21, 0x2B, 0xF0
	.byte 0xB5, 0xFF, 0x00, 0x28, 0x0C, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49
	.byte 0x0B, 0xE0, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x55, 0x74, 0xF7, 0x7F, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x06, 0x48, 0xF0, 0x30, 0x00, 0x78, 0x00, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xE0, 0x00, 0x00, 0xC0, 0x3E, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0
	.byte 0x1F, 0xFC, 0x03, 0x49, 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E
	.byte 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0x08, 0xFC
	.byte 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x3F, 0x18, 0xB3, 0x7F
	.byte 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x01, 0x20
	.byte 0x05, 0x21, 0x2B, 0xF0, 0x7F, 0xFF, 0x00, 0x28, 0x0C, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49
	.byte 0x40, 0x18, 0x03, 0x49, 0x0B, 0xE0, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x54, 0x74, 0xF7, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0x06, 0x49, 0x2B, 0xF0, 0x53, 0xFC, 0x00, 0x28
	.byte 0x10, 0xD1, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49, 0x01, 0x60, 0x11, 0xE0
	.byte 0xF8, 0x3F, 0x02, 0x02, 0x77, 0x01, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0, 0xB3, 0xFB, 0x03, 0x49, 0x09, 0x68, 0x03, 0x4A
	.byte 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E, 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42
	.byte 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0x9C, 0xFB, 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68
	.byte 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x77, 0xD5, 0xF2, 0x7E, 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x70, 0xB5, 0x10, 0x4D, 0x28, 0x1C, 0x60, 0x21, 0x2B, 0xF0, 0x0A, 0xFC
	.byte 0x04, 0x1C, 0x24, 0x06, 0x24, 0x0E, 0x28, 0x1C, 0x61, 0x21, 0x2B, 0xF0, 0x03, 0xFC, 0x00, 0x06
	.byte 0x06, 0x0E, 0x28, 0x1C, 0x62, 0x21, 0x2B, 0xF0, 0xFD, 0xFB, 0x00, 0x06, 0x00, 0x0E, 0x00, 0x2C
	.byte 0x12, 0xD1, 0x00, 0x2E, 0x10, 0xD1, 0x00, 0x28, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49
	.byte 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x0F, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0, 0x59, 0xFB, 0x04, 0x49
	.byte 0x09, 0x68, 0x04, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E
	.byte 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0x40, 0xFB
	.byte 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x76, 0xD5, 0xF2, 0x7E
	.byte 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x05, 0x48
	.byte 0x2B, 0xF0, 0x52, 0xFC, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x6B, 0x51, 0xF5, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0xB5, 0x06, 0x4D, 0x28, 0x1C, 0x2B, 0xF0
	.byte 0x2B, 0xFC, 0x00, 0x28, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49
	.byte 0x35, 0xE0, 0x00, 0x00, 0x20, 0x40, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x28, 0x1C, 0x3C, 0x38, 0x2B, 0xF0, 0x16, 0xFC, 0x05, 0x24, 0x26, 0x1A
	.byte 0x28, 0x1C, 0x28, 0x38, 0x2B, 0xF0, 0x10, 0xFC, 0x24, 0x1A, 0x01, 0x2C, 0x0C, 0xD8, 0x03, 0x48
	.byte 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x19, 0xE0, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0xA6, 0x42, 0x0B, 0xD3, 0x02, 0x48, 0x00, 0x68
	.byte 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60
	.byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xA0, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0xF0, 0x30, 0x00, 0x78
	.byte 0x03, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60
	.byte 0x10, 0xE0, 0x00, 0x00, 0xC0, 0x3E, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0, 0x9B, 0xFA, 0x03, 0x49, 0x09, 0x68, 0x03, 0x4A
	.byte 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E, 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42
	.byte 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0x84, 0xFA, 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68
	.byte 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x3F, 0x18, 0xB3, 0x7F, 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0xF0, 0xB5, 0x00, 0x26, 0x00, 0x25, 0x10, 0x4F, 0xA8, 0x00, 0xC0, 0x19
	.byte 0x04, 0x68, 0x20, 0x88, 0x00, 0x28, 0x0B, 0xD0, 0x0E, 0xF0, 0x38, 0xF9, 0x01, 0x28, 0x07, 0xD0
	.byte 0x20, 0x88, 0xF3, 0xF7, 0xE7, 0xFA, 0x0A, 0x48, 0x80, 0x7D, 0x01, 0x28, 0x00, 0xD1, 0x01, 0x36
	.byte 0x68, 0x1C, 0x00, 0x06, 0x05, 0x0E, 0x04, 0x2D, 0xE8, 0xD9, 0x00, 0x2E, 0x10, 0xD1, 0x05, 0x48
	.byte 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49, 0x0F, 0xE0, 0x00, 0x00, 0xE4, 0x3F, 0x02, 0x02
	.byte 0xD0, 0x1A, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x53, 0x74, 0xF7, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2B, 0xF0, 0x56, 0xFB, 0x00, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xD0, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x66, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48
	.byte 0x2B, 0xF0, 0x3A, 0xFB, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x73, 0x51, 0xF5, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2B, 0xF0, 0x0E, 0xFB, 0x05, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x9B, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48
	.byte 0x2B, 0xF0, 0xEA, 0xFA, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xBB, 0x6C, 0xEC, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x21, 0x09, 0x4A, 0x10, 0x68, 0x00, 0x88, 0x23, 0x28, 0x00, 0xD1
	.byte 0x01, 0x21, 0x50, 0x68, 0x00, 0x88, 0x23, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x01, 0x29, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xC0, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x75, 0xD5, 0xF2, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x02, 0x20
	.byte 0x14, 0x21, 0x2B, 0xF0, 0x9D, 0xFC, 0x00, 0x28, 0x0C, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49
	.byte 0x40, 0x18, 0x03, 0x49, 0x0B, 0xE0, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x73, 0xD5, 0xF2, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0xA1, 0x21, 0x2B, 0xF0, 0xD3, 0xF9, 0x00, 0x28
	.byte 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x0D, 0xE0, 0x00, 0x00
	.byte 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x71, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x06, 0x48, 0xA0, 0x21, 0x2B, 0xF0, 0xAD, 0xF9, 0x00, 0x28, 0x0E, 0xD1, 0x04, 0x48
	.byte 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x0D, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x70, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48
	.byte 0x2B, 0xF0, 0x2A, 0xFA, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x9D, 0x8F, 0xEE, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x40, 0xF0, 0x15, 0xFB, 0x00, 0x06, 0x07, 0x49, 0xC0, 0x0D
	.byte 0x40, 0x18, 0x01, 0x88, 0x06, 0x48, 0x40, 0x1A, 0x06, 0x49, 0x88, 0x42, 0x12, 0xDC, 0x06, 0x48
	.byte 0x00, 0x68, 0x06, 0x49, 0x40, 0x18, 0x06, 0x49, 0x11, 0xE0, 0x00, 0x00, 0x58, 0x42, 0x02, 0x02
	.byte 0xE8, 0xFD, 0x00, 0x00, 0xF3, 0x01, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xA2, 0x8F, 0xEE, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x08, 0x4C, 0x40, 0xF0, 0xE4, 0xFA, 0x07, 0x49, 0x40, 0x18
	.byte 0x00, 0x78, 0x40, 0x00, 0x00, 0x19, 0x00, 0x88, 0x32, 0x28, 0x0F, 0xD8, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x0E, 0xE0, 0x58, 0x42, 0x02, 0x02, 0x54, 0xED, 0x0A, 0x08
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x7F, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xBA, 0x6C, 0xEC, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x06, 0x48, 0xF0, 0x30, 0x00, 0x78, 0x05, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xE0, 0x00, 0x00, 0xC0, 0x3E, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0
	.byte 0x67, 0xF8, 0x03, 0x49, 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E
	.byte 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2B, 0xF0, 0x50, 0xF8
	.byte 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x3F, 0x18, 0xB3, 0x7F
	.byte 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x70, 0x47, 0x00, 0x00
	.byte 0x10, 0xB5, 0x00, 0x22, 0x00, 0x21, 0x0B, 0x4C, 0x0B, 0x4B, 0x88, 0x00, 0xC0, 0x18, 0x00, 0x68
	.byte 0x00, 0x88, 0x00, 0x28, 0x02, 0xD0, 0x50, 0x1C, 0x00, 0x06, 0x02, 0x0E, 0x48, 0x1C, 0x00, 0x06
	.byte 0x01, 0x0E, 0x04, 0x29, 0xF1, 0xD9, 0x00, 0x2A, 0x0C, 0xD1, 0x20, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0B, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0xC4, 0x40, 0x02, 0x02, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x20, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x10, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x98, 0x22, 0x00, 0x00, 0x48, 0x5B, 0xEB, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x05, 0x48, 0x2B, 0xF0, 0x30, 0xF9, 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x81, 0x2E, 0xF3, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0x06, 0x49, 0x2B, 0xF0
	.byte 0x69, 0xF8, 0x00, 0x28, 0x10, 0xD1, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49
	.byte 0x0F, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0x2A, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x6E, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0x0C, 0x21, 0x2B, 0xF0
	.byte 0x41, 0xF8, 0x00, 0x28, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49
	.byte 0x0D, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x6D, 0xD5, 0xF2, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0xF0, 0x30, 0x00, 0x78, 0x01, 0x28, 0x0F, 0xD1
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xE0, 0x00, 0x00
	.byte 0xC0, 0x3E, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x02, 0x20, 0x2A, 0xF0, 0x7D, 0xFF, 0x03, 0x49, 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D
	.byte 0x28, 0x68, 0x09, 0x4E, 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20
	.byte 0x2A, 0xF0, 0x66, 0xFF, 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49
	.byte 0x01, 0x60, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x3F, 0x18, 0xB3, 0x7F, 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0xB5, 0x06, 0x48, 0xB7, 0x21, 0x49, 0x00, 0x2A, 0xF0, 0xD4, 0xFF, 0x00, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xF8, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x6D, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48
	.byte 0x2B, 0xF0, 0x52, 0xF8, 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x85, 0x2E, 0xF3, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x05, 0x48, 0x2B, 0xF0, 0x2E, 0xF8, 0x05, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x24, 0xE0, 0xF8, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x07, 0x4C, 0x40, 0xF0
	.byte 0x29, 0xF9, 0x40, 0x00, 0x00, 0x19, 0x01, 0x88, 0xFA, 0x20, 0x80, 0x00, 0x81, 0x42, 0x0D, 0xD8
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0x58, 0x42, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x6C, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x10, 0xB5, 0x06, 0x4C, 0x20, 0x1C, 0x2A, 0xF0, 0xF7, 0xFF, 0x03, 0x28, 0x0E, 0xDC, 0x04, 0x48
	.byte 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x1F, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x20, 0x1C, 0x14, 0x38
	.byte 0x2A, 0xF0, 0xE2, 0xFF, 0x05, 0x28, 0x0B, 0xD1, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18
	.byte 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x72, 0x51, 0xF5, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0xB6, 0xFF, 0x05, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x1E, 0xE0, 0xE4, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2B, 0xF0
	.byte 0x3D, 0xFA, 0x01, 0x28, 0x0C, 0xD0, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49
	.byte 0x0B, 0xE0, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x9C, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x80, 0xFF, 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x84, 0x2E, 0xF3, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x70, 0xB5, 0x00, 0x25, 0x00, 0x24, 0x0E, 0x4E
	.byte 0xA0, 0x00, 0x80, 0x19, 0x00, 0x68, 0x00, 0x88, 0xF2, 0xF7, 0xB4, 0xFE, 0x0B, 0x48, 0xC0, 0x7D
	.byte 0x02, 0x28, 0x1B, 0xD0, 0x01, 0x28, 0x02, 0xD1, 0x68, 0x1C, 0x00, 0x06, 0x05, 0x0E, 0x60, 0x1C
	.byte 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xEB, 0xD9, 0x00, 0x2D, 0x1B, 0xD1, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x1A, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x48, 0x00, 0x68
	.byte 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60
	.byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x6B, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x14, 0xFF
	.byte 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0
	.byte 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x9B, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0xB5, 0x00, 0x25, 0x00, 0x24, 0x0E, 0x4E, 0xA0, 0x00, 0x80, 0x19, 0x00, 0x68, 0x00, 0x88
	.byte 0xF2, 0xF7, 0x48, 0xFE, 0x0B, 0x48, 0xC0, 0x7D, 0x01, 0x28, 0x1B, 0xD0, 0x02, 0x28, 0x02, 0xD1
	.byte 0x68, 0x1C, 0x00, 0x06, 0x05, 0x0E, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xEB, 0xD9
	.byte 0x00, 0x2D, 0x1B, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x1A, 0xE0
	.byte 0xF8, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x6B, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x02, 0x20, 0x0A, 0x21, 0x2B, 0xF0
	.byte 0xA7, 0xF8, 0x04, 0x1C, 0x24, 0x06, 0x24, 0x0E, 0x01, 0x20, 0x0A, 0x21, 0x2B, 0xF0, 0xCE, 0xF8
	.byte 0x24, 0x18, 0x24, 0x06, 0x00, 0x2C, 0x0B, 0xD1, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18
	.byte 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x69, 0xD5, 0xF2, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x09, 0x4C, 0x3F, 0xF0, 0x84, 0xFF, 0x08, 0x49, 0x40, 0x18
	.byte 0x00, 0x78, 0x40, 0x00, 0x00, 0x19, 0x01, 0x88, 0xFA, 0x20, 0x00, 0x01, 0x81, 0x42, 0x0F, 0xD8
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x0E, 0xE0, 0x58, 0x42, 0x02, 0x02
	.byte 0x54, 0xED, 0x0A, 0x08, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x7F
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x41, 0x97, 0xF9, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x04, 0x20, 0x2B, 0xF0, 0x02, 0xF8, 0x00, 0x28, 0x0B, 0xD1
	.byte 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x3A, 0x32, 0x08, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x00, 0xB5, 0x07, 0x48
	.byte 0xC1, 0x21, 0x49, 0x00, 0x2A, 0xF0, 0x0E, 0xFD, 0x00, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x02, 0x20, 0x2A, 0xF0
	.byte 0x6F, 0xFC, 0x03, 0x49, 0x09, 0x68, 0x03, 0x4A, 0x89, 0x18, 0x08, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF0, 0xB5, 0x09, 0x4D, 0x28, 0x68, 0x09, 0x4E
	.byte 0x84, 0x19, 0x20, 0x68, 0x08, 0x4F, 0xB8, 0x42, 0x15, 0xD0, 0x02, 0x20, 0x2A, 0xF0, 0x58, 0xFC
	.byte 0x21, 0x68, 0x81, 0x42, 0x0C, 0xD2, 0x28, 0x68, 0x80, 0x19, 0x04, 0x49, 0x01, 0x60, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x7A, 0xD5, 0xF2, 0x7E
	.byte 0x28, 0x68, 0x80, 0x19, 0x07, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x21, 0x09, 0x4A
	.byte 0x10, 0x68, 0x00, 0x88, 0x23, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x50, 0x68, 0x00, 0x88, 0x23, 0x28
	.byte 0x00, 0xD1, 0x01, 0x21, 0x01, 0x29, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xC0, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x74, 0xD5, 0xF2, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x06, 0x4C, 0x06, 0x49, 0x20, 0x1C, 0x2A, 0xF0, 0x9A, 0xFC
	.byte 0x00, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x22, 0xE0
	.byte 0xF8, 0x3F, 0x02, 0x02, 0xF5, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x05, 0x49, 0x20, 0x1C, 0x2A, 0xF0, 0x84, 0xFC, 0x00, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0x8F, 0x01, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x9B, 0xE0, 0x12, 0x7F, 0x70, 0x47, 0x00, 0x00
	.byte 0x10, 0xB5, 0x06, 0x4C, 0x06, 0x49, 0x20, 0x1C, 0x2A, 0xF0, 0x5C, 0xFC, 0x00, 0x28, 0x0F, 0xD1
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x22, 0xE0, 0xF8, 0x3F, 0x02, 0x02
	.byte 0xE2, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x05, 0x49, 0x20, 0x1C, 0x2A, 0xF0, 0x46, 0xFC, 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0x8F, 0x01, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18
	.byte 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x9B, 0xE0, 0x12, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x06, 0x4C
	.byte 0x06, 0x49, 0x20, 0x1C, 0x2A, 0xF0, 0x1E, 0xFC, 0x00, 0x28, 0x0F, 0xD1, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x22, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xE2, 0x02, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x05, 0x49, 0x20, 0x1C
	.byte 0x2A, 0xF0, 0x08, 0xFC, 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xF5, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x9B, 0xE0, 0x12, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0x00, 0x21, 0x2A, 0xF0
	.byte 0x83, 0xFC, 0x01, 0x28, 0x0E, 0xDC, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49
	.byte 0x0D, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x49, 0x5B, 0xEB, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x5E, 0xFC, 0x05, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x9F, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x06, 0x4C
	.byte 0x20, 0x1C, 0x2A, 0xF0, 0x39, 0xFC, 0x00, 0x28, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49
	.byte 0x40, 0x18, 0x04, 0x49, 0x1F, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x20, 0x1C, 0x14, 0x38, 0x2A, 0xF0, 0x2C, 0xFC
	.byte 0x05, 0x28, 0x0B, 0xD1, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xE6, 0xFF, 0xFF, 0x7F, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x08, 0xFC, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x71, 0x51, 0xF5, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0xC8, 0xFB, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x40, 0x97, 0xF9, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0xA4, 0xFB
	.byte 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0
	.byte 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x3D, 0x97, 0xF9, 0x7F, 0x70, 0x47, 0x00, 0x00
	.byte 0x10, 0xB5, 0x07, 0x4A, 0x10, 0x68, 0x07, 0x49, 0x44, 0x18, 0x07, 0x48, 0x20, 0x60, 0x00, 0x23
	.byte 0x06, 0x49, 0x08, 0x68, 0x00, 0x88, 0x00, 0x28, 0x0C, 0xD0, 0x05, 0x48, 0x20, 0x60, 0x19, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0xD0, 0x3F, 0x02, 0x02
	.byte 0xF4, 0xFF, 0xFF, 0x7F, 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x04, 0x2B, 0x0A, 0xD8, 0x98, 0x00
	.byte 0x40, 0x18, 0x00, 0x68, 0x00, 0x88, 0x00, 0x28, 0xF4, 0xD0, 0x10, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x98, 0x22, 0x00, 0x00
	.byte 0xF4, 0xFF, 0xFF, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x01, 0x20, 0x01, 0x21, 0x2A, 0xF0
	.byte 0x75, 0xFD, 0x00, 0x28, 0x0C, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49
	.byte 0x0B, 0xE0, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x68, 0xD5, 0xF2, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x28, 0xFB, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x57, 0x74, 0xF7, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0xB5, 0x3F, 0xF0, 0x07, 0xFC, 0x07, 0x49, 0x40, 0x00, 0x40, 0x18, 0x01, 0x88, 0x06, 0x48
	.byte 0x40, 0x1A, 0x06, 0x49, 0x88, 0x42, 0x11, 0xDC, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49, 0x40, 0x18
	.byte 0x05, 0x49, 0x3A, 0xE0, 0x58, 0x42, 0x02, 0x02, 0xE8, 0xFD, 0x00, 0x00, 0xF3, 0x01, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x09, 0x4C, 0x20, 0x1C
	.byte 0x2A, 0xF0, 0xDA, 0xFA, 0x05, 0x25, 0x2E, 0x1A, 0x14, 0x34, 0x20, 0x1C, 0x2A, 0xF0, 0xD4, 0xFA
	.byte 0x2D, 0x1A, 0x01, 0x2D, 0x0E, 0xD8, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49
	.byte 0x1B, 0xE0, 0x00, 0x00, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0xAE, 0x42, 0x0B, 0xD3, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18
	.byte 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x70, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xE8, 0xFF, 0xFF, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x9C, 0xFA
	.byte 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0
	.byte 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x9E, 0x8F, 0xEE, 0x7E, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x78, 0xFA, 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x80, 0x2E, 0xF3, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x06, 0x48, 0x01, 0x21, 0x2A, 0xF0
	.byte 0x81, 0xFA, 0x00, 0x28, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49
	.byte 0x0D, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x72, 0xD5, 0xF2, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xA4, 0x8F, 0xEE, 0x7E
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x2A, 0xF0, 0x1E, 0xFA, 0x00, 0x28, 0x0D, 0xD1
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0, 0xF8, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x83, 0x2E, 0xF3, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x05, 0x48
	.byte 0x2A, 0xF0, 0x02, 0xFA, 0x05, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x2A, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x09, 0x4C, 0x3F, 0xF0, 0xF5, 0xFA, 0x09, 0x49, 0x40, 0x18, 0x00, 0x78
	.byte 0x40, 0x00, 0x00, 0x19, 0x01, 0x88, 0xFA, 0x20, 0x40, 0x00, 0x81, 0x42, 0x10, 0xD8, 0x05, 0x48
	.byte 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49, 0x0F, 0xE0, 0x00, 0x00, 0x58, 0x42, 0x02, 0x02
	.byte 0x54, 0xED, 0x0A, 0x08, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x7F
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x58, 0x74, 0xF7, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x06, 0x4C, 0x20, 0x1C, 0x2A, 0xF0
	.byte 0xB3, 0xF9, 0x05, 0x28, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49
	.byte 0x21, 0xE0, 0x00, 0x00, 0x20, 0x40, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x20, 0x1C, 0x50, 0x38, 0x15, 0x21, 0x2A, 0xF0, 0xCB, 0xF9, 0x00, 0x28
	.byte 0x0C, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0B, 0xE0, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x5A, 0x74, 0xF7, 0x7F, 0x70, 0x47, 0x00, 0x00
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x06, 0x4C
	.byte 0x20, 0x1C, 0x2A, 0xF0, 0x59, 0xF9, 0x00, 0x28, 0x0E, 0xD1, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49
	.byte 0x40, 0x18, 0x04, 0x49, 0x21, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x05, 0x49, 0x20, 0x1C, 0x2A, 0xF0, 0xA2, 0xF8
	.byte 0x00, 0x28, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x0C, 0xE0
	.byte 0x2B, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x10, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x82, 0x2E, 0xF3, 0x7F
	.byte 0x70, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x0C, 0x4D, 0x0C, 0x49, 0x28, 0x1C, 0x2A, 0xF0, 0x7A, 0xF8
	.byte 0x04, 0x1C, 0x24, 0x06, 0x24, 0x0E, 0x0A, 0x49, 0x28, 0x1C, 0x2A, 0xF0, 0x73, 0xF8, 0x00, 0x06
	.byte 0x00, 0x0E, 0x00, 0x2C, 0x14, 0xD1, 0x00, 0x28, 0x20, 0xD1, 0x06, 0x48, 0x00, 0x68, 0x06, 0x49
	.byte 0x40, 0x18, 0x06, 0x49, 0x1F, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0x3F, 0x02, 0x00, 0x00
	.byte 0x4E, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x00, 0x28, 0x0B, 0xD0, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x88, 0x2E, 0xF3, 0x7F, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x87, 0x2E, 0xF3, 0x7F, 0x70, 0x47, 0x00, 0x00
	.byte 0x30, 0xB5, 0x0C, 0x4D, 0x28, 0x1C, 0x95, 0x21, 0x2A, 0xF0, 0x34, 0xF8, 0x04, 0x1C, 0x24, 0x06
	.byte 0x24, 0x0E, 0x09, 0x49, 0x28, 0x1C, 0x2A, 0xF0, 0x2D, 0xF8, 0x00, 0x06, 0x00, 0x0E, 0x00, 0x2C
	.byte 0x12, 0xD1, 0x00, 0x28, 0x1E, 0xD1, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49
	.byte 0x1D, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0x4E, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x00, 0x28, 0x0B, 0xD0, 0x02, 0x48, 0x00, 0x68
	.byte 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x88, 0x2E, 0xF3, 0x7F, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60
	.byte 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x87, 0x2E, 0xF3, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x0C, 0x4D, 0x28, 0x1C, 0x95, 0x21
	.byte 0x29, 0xF0, 0xF0, 0xFF, 0x04, 0x1C, 0x24, 0x06, 0x24, 0x0E, 0x09, 0x49, 0x28, 0x1C, 0x29, 0xF0
	.byte 0xE9, 0xFF, 0x00, 0x06, 0x00, 0x0E, 0x00, 0x2C, 0x12, 0xD1, 0x00, 0x28, 0x1E, 0xD1, 0x05, 0x48
	.byte 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49, 0x1D, 0xE0, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02
	.byte 0x3F, 0x02, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x00, 0x28, 0x0B, 0xD0, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x02, 0x49, 0x0A, 0xE0
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x88, 0x2E, 0xF3, 0x7F, 0x04, 0x48, 0x00, 0x68
	.byte 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0x87, 0x2E, 0xF3, 0x7F, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x3F, 0xF0, 0x55, 0xF9, 0x00, 0x28, 0x14, 0xD1, 0x05, 0x48
	.byte 0x01, 0x88, 0x05, 0x48, 0x81, 0x42, 0x25, 0xD8, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18
	.byte 0x04, 0x49, 0x38, 0xE0, 0x58, 0x42, 0x02, 0x02, 0xE7, 0x03, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x05, 0x48, 0x41, 0x88, 0x05, 0x48, 0x81, 0x42
	.byte 0x10, 0xD8, 0x05, 0x48, 0x00, 0x68, 0x05, 0x49, 0x40, 0x18, 0x05, 0x49, 0x23, 0xE0, 0x00, 0x00
	.byte 0x58, 0x42, 0x02, 0x02, 0xE7, 0x03, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x05, 0x48, 0x2A, 0xF0, 0x17, 0xF8, 0x05, 0x28, 0x0E, 0xD1, 0x04, 0x48
	.byte 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x0D, 0xE0, 0x00, 0x00, 0xE4, 0x3F, 0x02, 0x02
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0x59, 0x74, 0xF7, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0xF0, 0xB5, 0x00, 0x26, 0x00, 0x25, 0x11, 0x4F
	.byte 0xA8, 0x00, 0xC0, 0x19, 0x04, 0x68, 0x20, 0x88, 0x00, 0x28, 0x0E, 0xD0, 0x20, 0x1C, 0x26, 0xF0
	.byte 0xFB, 0xFE, 0x00, 0x06, 0x00, 0x0E, 0x01, 0x28, 0x04, 0xD1, 0x20, 0x88, 0x0C, 0xF0, 0x86, 0xFD
	.byte 0x01, 0x28, 0x02, 0xD0, 0x70, 0x1C, 0x00, 0x06, 0x06, 0x0E, 0x68, 0x1C, 0x00, 0x06, 0x05, 0x0E
	.byte 0x04, 0x2D, 0xE5, 0xD9, 0x00, 0x2E, 0x0D, 0xD1, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x0C, 0xE0, 0xE4, 0x3F, 0x02, 0x02, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x04, 0x48, 0x00, 0x68, 0x04, 0x49, 0x40, 0x18, 0x04, 0x49, 0x01, 0x60
	.byte 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0x45, 0x97, 0xF9, 0x7F, 0x70, 0x47, 0x00, 0x00, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18
	.byte 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00
	.byte 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E
	.byte 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xA4, 0xF6, 0xDF, 0x08, 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E, 0x03, 0x48, 0x00, 0x68
	.byte 0x03, 0x49, 0x40, 0x18, 0x03, 0x49, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA4, 0xF6, 0xDF, 0x08
	.byte 0x98, 0x22, 0x00, 0x00, 0xF9, 0x89, 0xDE, 0x7E

	THUMB_FUNC_START sub_80199B8
sub_80199B8: @ 0x080199B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r5, #0
	movs r1, #0
_080199C8:
	lsls r0, r1, #2
	ldr r2, _08019A30
	adds r0, r0, r2
	ldr r0, [r0]
	mov sl, r0
	ldrh r0, [r0]
	adds r1, #1
	str r1, [sp, #8]
	cmp r0, #0
	beq _08019AB6
	ldr r1, _08019A34
	strh r0, [r1]
	ldr r2, _08019A38
	ldrb r0, [r2]
	strb r0, [r1, #2]
	mov r0, sl
	bl sub_804069C
	ldr r1, _08019A34
	strb r0, [r1, #3]
	adds r0, r1, #0
	bl sub_800B318
	ldr r2, _08019A3C
	ldrh r2, [r2, #0x12]
	mov r8, r2
	ldr r0, _08019A3C
	ldrh r7, [r0, #0x14]
	ldrb r1, [r0, #0x17]
	str r1, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r6, _08019A40
	ldr r0, _08019A34
	mov sb, r0
_08019A0E:
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	ldr r2, _08019A44
	adds r0, r0, r2
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _08019AA8
	adds r0, r4, #0
	bl CardPosition
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08019A48
	ldrb r0, [r6, #2]
	b _08019AA6
	.align 2, 0
_08019A30: .4byte gZones+0x28
_08019A34: .4byte gStatMod
_08019A38: .4byte gDuel+0xF0
_08019A3C: .4byte gCardInfo
_08019A40: .4byte 0x08E00534
_08019A44: .4byte gZones+0x14
_08019A48:
	ldrh r0, [r4]
	mov r1, sb
	strh r0, [r1]
	ldr r2, _08019A84
	ldrb r0, [r2]
	strb r0, [r1, #2]
	adds r0, r4, #0
	bl sub_804069C
	mov r1, sb
	strb r0, [r1, #3]
	mov r0, sb
	bl sub_800B318
	ldr r2, _08019A88
	ldrh r4, [r2, #0x12]
	ldrb r0, [r2, #0x17]
	ldr r1, [sp]
	bl sub_803FBCC
	mov r0, sl
	ldrb r1, [r0, #5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08019A94
	cmp r8, r4
	bne _08019A8C
	ldrb r0, [r6, #1]
	b _08019AA6
	.align 2, 0
_08019A84: .4byte gDuel+0xF0
_08019A88: .4byte gCardInfo
_08019A8C:
	cmp r8, r4
	bhs _08019AA4
	ldrb r0, [r6, #3]
	b _08019AA6
_08019A94:
	cmp r7, r4
	bne _08019A9C
	ldrb r0, [r6, #1]
	b _08019AA6
_08019A9C:
	cmp r7, r4
	bhs _08019AA4
	ldrb r0, [r6, #3]
	b _08019AA6
_08019AA4:
	ldrb r0, [r6]
_08019AA6:
	adds r5, r5, r0
_08019AA8:
	ldr r0, [sp, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #4
	bls _08019A0E
_08019AB6:
	ldr r1, [sp, #8]
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _080199C8
	adds r0, r5, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x06, 0x1C, 0x08, 0x88
	.byte 0x00, 0x28, 0x05, 0xD1, 0x01, 0x48, 0x80, 0x79, 0x37, 0xE0, 0x00, 0x00, 0x38, 0x05, 0xE0, 0x08
	.byte 0x1D, 0x4C, 0x20, 0x80, 0x1D, 0x4D, 0xF0, 0x35, 0x28, 0x78, 0xA0, 0x70, 0x08, 0x1C, 0x26, 0xF0
	.byte 0xCD, 0xFD, 0xE0, 0x70, 0x20, 0x1C, 0xF1, 0xF7, 0x07, 0xFC, 0x19, 0x48, 0x40, 0x8A, 0x81, 0x46
	.byte 0x00, 0x20, 0x80, 0x46, 0x00, 0x27, 0x30, 0x88, 0x00, 0x28, 0x15, 0xD0, 0x20, 0x80, 0x28, 0x78
	.byte 0xA0, 0x70, 0x30, 0x1C, 0x26, 0xF0, 0xBA, 0xFD, 0xE0, 0x70, 0x20, 0x1C, 0xF1, 0xF7, 0xF4, 0xFB
	.byte 0x0F, 0x49, 0x88, 0x7E, 0x02, 0x28, 0x07, 0xD1, 0x49, 0x8A, 0x89, 0x45, 0x04, 0xD2, 0x40, 0x46
	.byte 0x01, 0x30, 0x00, 0x06, 0x00, 0x0E, 0x80, 0x46, 0x08, 0x36, 0x78, 0x1C, 0x00, 0x06, 0x07, 0x0E
	.byte 0x04, 0x2F, 0xE0, 0xD9, 0x07, 0x48, 0x40, 0x44, 0x00, 0x78, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xC0, 0x1A, 0x02, 0x02, 0xC0, 0x3E, 0x02, 0x02
	.byte 0xD0, 0x1A, 0x02, 0x02, 0x38, 0x05, 0xE0, 0x08, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4
	.byte 0x06, 0x1C, 0x08, 0x88, 0x00, 0x28, 0x05, 0xD1, 0x01, 0x48, 0x80, 0x79, 0x37, 0xE0, 0x00, 0x00
	.byte 0x3F, 0x05, 0xE0, 0x08, 0x1D, 0x4C, 0x20, 0x80, 0x1D, 0x4D, 0xF0, 0x35, 0x28, 0x78, 0xA0, 0x70
	.byte 0x08, 0x1C, 0x26, 0xF0, 0x7B, 0xFD, 0xE0, 0x70, 0x20, 0x1C, 0xF1, 0xF7, 0xB5, 0xFB, 0x19, 0x48
	.byte 0x80, 0x8A, 0x81, 0x46, 0x00, 0x20, 0x80, 0x46, 0x00, 0x27, 0x30, 0x88, 0x00, 0x28, 0x15, 0xD0
	.byte 0x20, 0x80, 0x28, 0x78, 0xA0, 0x70, 0x30, 0x1C, 0x26, 0xF0, 0x68, 0xFD, 0xE0, 0x70, 0x20, 0x1C
	.byte 0xF1, 0xF7, 0xA2, 0xFB, 0x0F, 0x49, 0x88, 0x7E, 0x02, 0x28, 0x07, 0xD1, 0x89, 0x8A, 0x89, 0x45
	.byte 0x04, 0xD2, 0x40, 0x46, 0x01, 0x30, 0x00, 0x06, 0x00, 0x0E, 0x80, 0x46, 0x08, 0x36, 0x78, 0x1C
	.byte 0x00, 0x06, 0x07, 0x0E, 0x04, 0x2F, 0xE0, 0xD9, 0x07, 0x48, 0x40, 0x44, 0x00, 0x78, 0x18, 0xBC
	.byte 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xC0, 0x1A, 0x02, 0x02
	.byte 0xC0, 0x3E, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0x3F, 0x05, 0xE0, 0x08, 0xF0, 0xB5, 0x4F, 0x46
	.byte 0x46, 0x46, 0xC0, 0xB4, 0x06, 0x1C, 0x08, 0x88, 0x00, 0x28, 0x05, 0xD1, 0x01, 0x48, 0x80, 0x79
	.byte 0x3B, 0xE0, 0x00, 0x00, 0x46, 0x05, 0xE0, 0x08, 0x1F, 0x4C, 0x20, 0x80, 0x1F, 0x4D, 0xF0, 0x35
	.byte 0x28, 0x78, 0xA0, 0x70, 0x08, 0x1C, 0x26, 0xF0, 0x29, 0xFD, 0xE0, 0x70, 0x20, 0x1C, 0xF1, 0xF7
	.byte 0x63, 0xFB, 0x1B, 0x48, 0x41, 0x8A, 0x80, 0x8A, 0x09, 0x18, 0x89, 0x46, 0x00, 0x20, 0x80, 0x46
	.byte 0x00, 0x27, 0x30, 0x88, 0x00, 0x28, 0x17, 0xD0, 0x20, 0x80, 0x28, 0x78, 0xA0, 0x70, 0x30, 0x1C
	.byte 0x26, 0xF0, 0x14, 0xFD, 0xE0, 0x70, 0x20, 0x1C, 0xF1, 0xF7, 0x4E, 0xFB, 0x10, 0x49, 0x88, 0x7E
	.byte 0x02, 0x28, 0x09, 0xD1, 0x48, 0x8A, 0x89, 0x8A, 0x40, 0x18, 0x81, 0x45, 0x04, 0xD2, 0x40, 0x46
	.byte 0x01, 0x30, 0x00, 0x06, 0x00, 0x0E, 0x80, 0x46, 0x08, 0x36, 0x78, 0x1C, 0x00, 0x06, 0x07, 0x0E
	.byte 0x04, 0x2F, 0xDE, 0xD9, 0x07, 0x48, 0x40, 0x44, 0x00, 0x78, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xC0, 0x1A, 0x02, 0x02, 0xC0, 0x3E, 0x02, 0x02
	.byte 0xD0, 0x1A, 0x02, 0x02, 0x46, 0x05, 0xE0, 0x08, 0x10, 0xB5, 0x00, 0xF0, 0x0B, 0xF8, 0x04, 0x1C
	.byte 0x65, 0x20, 0x44, 0x43, 0xFF, 0xF7, 0x70, 0xFE, 0x24, 0x18, 0x20, 0x1C, 0x10, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8019CE4
sub_8019CE4: @ 0x08019CE4
	push {r4, r5, r6, lr}
	ldr r6, _08019D1C
	adds r0, r6, #0
	bl NumEmptyZonesInRow
	adds r5, r0, #0
	movs r4, #5
	subs r5, r4, r5
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	subs r6, #0x14
	adds r0, r6, #0
	bl NumEmptyZonesInRow
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08019D20
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r4, r4, r1
	ldrb r0, [r4]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08019D1C: .4byte gZones+0x28
_08019D20: .4byte 0x08E00510

	THUMB_FUNC_START sub_8019D24
sub_8019D24: @ 0x08019D24
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08019D54
	strh r0, [r1]
	ldr r2, _08019D58
	ldr r1, _08019D5C
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r2]
	ldrb r1, [r0, #2]
	strb r1, [r2, #2]
	ldrb r1, [r0, #3]
	strb r1, [r2, #3]
	ldrb r1, [r0, #4]
	strb r1, [r2, #4]
	ldrb r1, [r0, #5]
	strb r1, [r2, #5]
	ldrb r1, [r0, #6]
	strb r1, [r2, #6]
	ldrb r0, [r0, #7]
	strb r0, [r2, #7]
	bx lr
	.align 2, 0
_08019D54: .4byte 0x02021BF8
_08019D58: .4byte 0x02021C00
_08019D5C: .4byte 0x080AED58

	THUMB_FUNC_START sub_8019D60
sub_8019D60: @ 0x08019D60
	ldr r0, _08019D7C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08019D80
	movs r2, #0
	strh r2, [r0]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	bx lr
	.align 2, 0
_08019D7C: .4byte 0x02021BF8
_08019D80: .4byte 0x02021C00

	THUMB_FUNC_START sub_8019D84
sub_8019D84: @ 0x08019D84
	push {r4, r5, r6, lr}
	bl sub_802B6A8
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08019E5C
	bl sub_8029820
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08019E5C
	ldr r6, _08019DAC
	b _08019E40
	.align 2, 0
_08019DAC: .4byte gUnk_02021C08
_08019DB0:
	bl sub_8019D60
	bl sub_800F108
	movs r4, #0
	movs r0, #1
	strb r0, [r6]
	ldr r5, _08019E24
_08019DC0:
	adds r0, r4, #0
	bl sub_8019D24
	bl sub_801A08C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08019DEA
	bl sub_800EE24
	bl sub_800F1EC
	bl sub_800E0F8
	bl sub_8029820
	bl sub_800F248
	bl sub_800EE94
_08019DEA:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bls _08019DC0
	movs r0, #0
	strb r0, [r6]
	bl sub_800EF0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08019E4C
	bl sub_8019D24
	bl sub_8019E64
	bl sub_800E0D4
	ldr r0, _08019E28
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _08019E2C
	bl sub_801B66C
	bl sub_8040EF0
	b _08019E30
	.align 2, 0
_08019E24: .4byte 0x000003B1
_08019E28: .4byte 0x02023EA0
_08019E2C:
	bl sub_8041104
_08019E30:
	bl sub_8019F60
	bl sub_803EF64
	bl sub_80205D4
	bl sub_8029820
_08019E40:
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08019DB0
_08019E4C:
	movs r4, #0
_08019E4E:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1d
	bls _08019E4E
_08019E5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8019E64
sub_8019E64: @ 0x08019E64
	push {r4, lr}
	sub sp, #8
	ldr r1, _08019E84
	ldrb r0, [r1, #2]
	lsrs r3, r0, #4
	movs r4, #0xf
	ands r4, r0
	ldrh r0, [r1]
	cmp r0, #0x18
	bhi _08019F50
	lsls r0, r0, #2
	ldr r1, _08019E88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08019E84: .4byte 0x02021C00
_08019E88: .4byte 0x08019E8C
_08019E8C: @ jump table
	.4byte _08019F50 @ case 0
	.4byte _08019F50 @ case 1
	.4byte _08019F50 @ case 2
	.4byte _08019F50 @ case 3
	.4byte _08019F50 @ case 4
	.4byte _08019F50 @ case 5
	.4byte _08019F50 @ case 6
	.4byte _08019EF0 @ case 7
	.4byte _08019EF0 @ case 8
	.4byte _08019EF0 @ case 9
	.4byte _08019EF0 @ case 10
	.4byte _08019F50 @ case 11
	.4byte _08019EF0 @ case 12
	.4byte _08019EF0 @ case 13
	.4byte _08019F50 @ case 14
	.4byte _08019F50 @ case 15
	.4byte _08019F50 @ case 16
	.4byte _08019F50 @ case 17
	.4byte _08019F50 @ case 18
	.4byte _08019F50 @ case 19
	.4byte _08019F50 @ case 20
	.4byte _08019F50 @ case 21
	.4byte _08019F50 @ case 22
	.4byte _08019F30 @ case 23
	.4byte _08019F50 @ case 24
_08019EF0:
	ldr r0, _08019F20
	ldrh r1, [r0, #0x30]
	ldr r0, _08019F24
	ldr r2, [sp]
	ands r2, r0
	orrs r2, r1
	str r2, [sp]
	ldr r1, _08019F28
	lsls r0, r3, #2
	adds r0, r0, r3
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08019F2C
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	mov r0, sp
	bl sub_801A008
	b _08019F50
	.align 2, 0
_08019F20: .4byte 0x02021D10
_08019F24: .4byte 0xFFFF0000
_08019F28: .4byte gZones
_08019F2C: .4byte 0x0000FFFF
_08019F30:
	ldr r0, _08019F58
	ldrh r1, [r0, #0x30]
	mov r0, sp
	strh r1, [r0]
	ldr r1, _08019F5C
	lsls r0, r3, #2
	adds r0, r0, r3
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	mov r0, sp
	strh r1, [r0, #2]
	bl sub_801A028
_08019F50:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019F58: .4byte 0x02021D10
_08019F5C: .4byte gZones

	THUMB_FUNC_START sub_8019F60
sub_8019F60: @ 0x08019F60
	push {lr}
	ldr r0, _08019F74
	ldrh r0, [r0]
	cmp r0, #0x18
	bhi _08019FF6
	lsls r0, r0, #2
	ldr r1, _08019F78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08019F74: .4byte 0x02021C00
_08019F78: .4byte 0x08019F7C
_08019F7C: @ jump table
	.4byte _08019FF6 @ case 0
	.4byte _08019FE0 @ case 1
	.4byte _08019FE8 @ case 2
	.4byte _08019FE8 @ case 3
	.4byte _08019FE8 @ case 4
	.4byte _08019FF0 @ case 5
	.4byte _08019FF0 @ case 6
	.4byte _08019FF6 @ case 7
	.4byte _08019FF6 @ case 8
	.4byte _08019FF6 @ case 9
	.4byte _08019FF6 @ case 10
	.4byte _08019FE8 @ case 11
	.4byte _08019FF6 @ case 12
	.4byte _08019FF6 @ case 13
	.4byte _08019FE8 @ case 14
	.4byte _08019FE8 @ case 15
	.4byte _08019FF6 @ case 16
	.4byte _08019FF6 @ case 17
	.4byte _08019FE8 @ case 18
	.4byte _08019FF6 @ case 19
	.4byte _08019FF6 @ case 20
	.4byte _08019FE8 @ case 21
	.4byte _08019FF6 @ case 22
	.4byte _08019FF6 @ case 23
	.4byte _08019FF6 @ case 24
_08019FE0:
	movs r0, #0x3e
	bl sub_8034F60
	b _08019FF6
_08019FE8:
	movs r0, #0x3a
	bl sub_8034F60
	b _08019FF6
_08019FF0:
	movs r0, #0x3c
	bl sub_8034F60
_08019FF6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0x3D, 0x20
	.byte 0x1A, 0xF0, 0xAE, 0xFF, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_801A008
sub_801A008: @ 0x0801A008
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801A024
	bl sub_801A048
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801A01E
	ldrh r0, [r4, #4]
	bl sub_8034F60
_0801A01E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A024: .4byte 0x080B0AE8

	THUMB_FUNC_START sub_801A028
sub_801A028: @ 0x0801A028
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801A044
	bl sub_801A048
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801A03E
	ldrh r0, [r4, #4]
	bl sub_8034F60
_0801A03E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A044: .4byte 0x080B0B18

	THUMB_FUNC_START sub_801A048
sub_801A048: @ 0x0801A048
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r3, #0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801A080
	ldrh r5, [r4]
_0801A056:
	lsls r0, r3, #3
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r0, r5
	bne _0801A070
	ldrh r0, [r2, #2]
	ldrh r6, [r4, #2]
	cmp r0, r6
	bne _0801A070
	ldrh r0, [r2, #4]
	strh r0, [r4, #4]
	movs r0, #1
	b _0801A084
_0801A070:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801A056
_0801A080:
	movs r0, #0
	strh r0, [r4, #4]
_0801A084:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801A08C
sub_801A08C: @ 0x0801A08C
	push {lr}
	ldr r1, _0801A0A8
	ldr r0, _0801A0AC
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0
_0801A0A8: .4byte 0x08E00550
_0801A0AC: .4byte 0x02021C00

	THUMB_FUNC_START sub_801A0B0
sub_801A0B0: @ 0x0801A0B0
	push {r4, lr}
	ldr r0, _0801A0F0
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0801A0F4
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r3
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801A0FC
	adds r0, r3, #0
	adds r0, #0x50
	bl NumEmptyZonesInRow
	cmp r0, #0
	bne _0801A0FC
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801A0F8
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A0FC
	movs r0, #1
	b _0801A0FE
	.align 2, 0
_0801A0F0: .4byte 0x02021C00
_0801A0F4: .4byte gZones
_0801A0F8: .4byte gCardInfo
_0801A0FC:
	movs r0, #0
_0801A0FE:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x0F, 0x48, 0x80, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40
	.byte 0x0D, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00, 0xC4, 0x18, 0x20, 0x68, 0x00, 0x88
	.byte 0x00, 0x28, 0x15, 0xD0, 0x18, 0x1C, 0x50, 0x30, 0x29, 0xF0, 0xFE, 0xF9, 0x00, 0x28, 0x0F, 0xD1
	.byte 0x20, 0x68, 0x00, 0x88, 0xF1, 0xF7, 0x56, 0xF9, 0x04, 0x48, 0x80, 0x7F, 0x00, 0x28, 0x07, 0xD0
	.byte 0x01, 0x20, 0x06, 0xE0, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0x00, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801A158
sub_801A158: @ 0x0801A158
	push {r4, r5, r6, r7, lr}
	ldr r3, _0801A1C0
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r6, r0, #4
	adds r5, r2, #0
	ands r5, r0
	ldr r7, _0801A1C4
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r7
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801A1C8
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A1BC
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A1BC
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #0
	bne _0801A1BC
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r0, #0
	beq _0801A1CC
	adds r0, r2, #0
	bl sub_80406D8
	cmp r0, #0
	beq _0801A1CC
_0801A1BC:
	movs r0, #0
	b _0801A1CE
	.align 2, 0
_0801A1C0: .4byte 0x02021C00
_0801A1C4: .4byte gZones
_0801A1C8: .4byte gCardInfo
_0801A1CC:
	movs r0, #1
_0801A1CE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0xF0, 0xB5, 0x19, 0x4B, 0x98, 0x78, 0x04, 0x09, 0x0F, 0x22, 0x11, 0x1C
	.byte 0x01, 0x40, 0xD8, 0x78, 0x06, 0x09, 0x15, 0x1C, 0x05, 0x40, 0x15, 0x4F, 0xA0, 0x00, 0x00, 0x19
	.byte 0x40, 0x18, 0x80, 0x00, 0xC4, 0x19, 0x20, 0x68, 0x00, 0x88, 0xF1, 0xF7, 0xF3, 0xF8, 0x11, 0x48
	.byte 0x80, 0x7F, 0x00, 0x28, 0x18, 0xD0, 0x20, 0x68, 0x29, 0xF0, 0x70, 0xFA, 0x01, 0x28, 0x13, 0xD1
	.byte 0x20, 0x68, 0x00, 0x88, 0x2B, 0xF0, 0xBC, 0xF8, 0x00, 0x28, 0x0D, 0xD1, 0xB0, 0x00, 0x80, 0x19
	.byte 0x40, 0x19, 0x80, 0x00, 0xC0, 0x19, 0x02, 0x68, 0x10, 0x88, 0x00, 0x28, 0x0C, 0xD0, 0x10, 0x1C
	.byte 0x26, 0xF0, 0x52, 0xFA, 0x00, 0x28, 0x07, 0xD0, 0x00, 0x20, 0x06, 0xE0, 0x00, 0x1C, 0x02, 0x02
	.byte 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0x01, 0x20, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801A250
sub_801A250: @ 0x0801A250
	push {r4, r5, r6, r7, lr}
	ldr r3, _0801A2B0
	ldrb r0, [r3, #2]
	lsrs r4, r0, #4
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r6, r0, #4
	adds r5, r2, #0
	ands r5, r0
	ldr r7, _0801A2B4
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r7
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801A2B8
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A2BC
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A2BC
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #1
	bne _0801A2BC
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A2BC
	movs r0, #1
	b _0801A2BE
	.align 2, 0
_0801A2B0: .4byte 0x02021C00
_0801A2B4: .4byte gZones
_0801A2B8: .4byte gCardInfo
_0801A2BC:
	movs r0, #0
_0801A2BE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0xF0, 0xB5, 0x17, 0x4B, 0x98, 0x78, 0x04, 0x09, 0x0F, 0x22, 0x11, 0x1C
	.byte 0x01, 0x40, 0xD8, 0x78, 0x06, 0x09, 0x15, 0x1C, 0x05, 0x40, 0x13, 0x4F, 0xA0, 0x00, 0x00, 0x19
	.byte 0x40, 0x18, 0x80, 0x00, 0xC4, 0x19, 0x20, 0x68, 0x00, 0x88, 0xF1, 0xF7, 0x7B, 0xF8, 0x0F, 0x48
	.byte 0x80, 0x7F, 0x00, 0x28, 0x1C, 0xD0, 0x20, 0x68, 0x29, 0xF0, 0xF8, 0xF9, 0x01, 0x28, 0x17, 0xD1
	.byte 0x20, 0x68, 0x00, 0x88, 0x2B, 0xF0, 0x44, 0xF8, 0x01, 0x28, 0x11, 0xD1, 0xB0, 0x00, 0x80, 0x19
	.byte 0x40, 0x19, 0x80, 0x00, 0xC0, 0x19, 0x00, 0x68, 0x29, 0xF0, 0xE8, 0xF9, 0x01, 0x28, 0x07, 0xD1
	.byte 0x01, 0x20, 0x06, 0xE0, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0x00, 0x20, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801A338
sub_801A338: @ 0x0801A338
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0801A3C4
	ldrb r0, [r2, #2]
	lsrs r4, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	mov r8, r5
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #4]
	lsrs r2, r0, #4
	mov sb, r2
	adds r6, r1, #0
	ands r6, r0
	ldr r7, _0801A3C8
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r4, r0, r7
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801A3CC
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A3D0
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A3D0
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #2
	bne _0801A3D0
	mov r1, r8
	lsls r0, r1, #2
	add r0, r8
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A3D0
	mov r2, sb
	lsls r0, r2, #2
	add r0, sb
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A3D0
	movs r0, #1
	b _0801A3D2
	.align 2, 0
_0801A3C4: .4byte 0x02021C00
_0801A3C8: .4byte gZones
_0801A3CC: .4byte gCardInfo
_0801A3D0:
	movs r0, #0
_0801A3D2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	.byte 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x20, 0x4A, 0x90, 0x78, 0x04, 0x09, 0x0F, 0x21
	.byte 0x0B, 0x1C, 0x03, 0x40, 0xD0, 0x78, 0x05, 0x09, 0xA8, 0x46, 0x0D, 0x1C, 0x05, 0x40, 0x10, 0x79
	.byte 0x02, 0x09, 0x91, 0x46, 0x0E, 0x1C, 0x06, 0x40, 0x19, 0x4F, 0xA0, 0x00, 0x00, 0x19, 0xC0, 0x18
	.byte 0x80, 0x00, 0xC4, 0x19, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0xE4, 0xFF, 0x15, 0x48, 0x80, 0x7F
	.byte 0x00, 0x28, 0x29, 0xD0, 0x20, 0x68, 0x29, 0xF0, 0x61, 0xF9, 0x01, 0x28, 0x24, 0xD1, 0x20, 0x68
	.byte 0x00, 0x88, 0x2A, 0xF0, 0xAD, 0xFF, 0x02, 0x28, 0x1E, 0xD1, 0x41, 0x46, 0x88, 0x00, 0x40, 0x44
	.byte 0x40, 0x19, 0x80, 0x00, 0xC0, 0x19, 0x00, 0x68, 0x29, 0xF0, 0x50, 0xF9, 0x01, 0x28, 0x13, 0xD1
	.byte 0x4A, 0x46, 0x90, 0x00, 0x48, 0x44, 0x80, 0x19, 0x80, 0x00, 0xC0, 0x19, 0x00, 0x68, 0x29, 0xF0
	.byte 0x45, 0xF9, 0x01, 0x28, 0x08, 0xD1, 0x01, 0x20, 0x07, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02
	.byte 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0x00, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801A488
sub_801A488: @ 0x0801A488
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r2, _0801A53C
	ldrb r0, [r2, #2]
	lsrs r4, r0, #4
	movs r1, #0xf
	adds r3, r1, #0
	ands r3, r0
	ldrb r0, [r2, #3]
	lsrs r5, r0, #4
	mov sb, r5
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #4]
	lsrs r6, r0, #4
	mov sl, r6
	adds r6, r1, #0
	ands r6, r0
	ldrb r0, [r2, #5]
	lsrs r2, r0, #4
	str r2, [sp]
	adds r7, r1, #0
	ands r7, r0
	ldr r0, _0801A540
	mov r8, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r1, r8
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801A544
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A548
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A548
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_8045390
	cmp r0, #3
	bne _0801A548
	mov r2, sb
	lsls r0, r2, #2
	add r0, sb
	adds r0, r0, r5
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A548
	mov r5, sl
	lsls r0, r5, #2
	add r0, sl
	adds r0, r0, r6
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A548
	ldr r6, [sp]
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r7
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A548
	movs r0, #1
	b _0801A54A
	.align 2, 0
_0801A53C: .4byte 0x02021C00
_0801A540: .4byte gZones
_0801A544: .4byte gCardInfo
_0801A548:
	movs r0, #0
_0801A54A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x57, 0x46
	.byte 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x81, 0xB0, 0x29, 0x4A, 0x90, 0x78, 0x04, 0x09, 0x0F, 0x21
	.byte 0x0B, 0x1C, 0x03, 0x40, 0xD0, 0x78, 0x05, 0x09, 0xA9, 0x46, 0x0D, 0x1C, 0x05, 0x40, 0x10, 0x79
	.byte 0x06, 0x09, 0xB2, 0x46, 0x0E, 0x1C, 0x06, 0x40, 0x50, 0x79, 0x02, 0x09, 0x00, 0x92, 0x0F, 0x1C
	.byte 0x07, 0x40, 0x20, 0x48, 0x80, 0x46, 0xA0, 0x00, 0x00, 0x19, 0xC0, 0x18, 0x80, 0x00, 0x41, 0x46
	.byte 0x44, 0x18, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x1D, 0xFF, 0x1B, 0x48, 0x80, 0x7F, 0x00, 0x28
	.byte 0x34, 0xD0, 0x20, 0x68, 0x29, 0xF0, 0x9A, 0xF8, 0x01, 0x28, 0x2F, 0xD1, 0x20, 0x68, 0x00, 0x88
	.byte 0x2A, 0xF0, 0xE6, 0xFE, 0x03, 0x28, 0x29, 0xD1, 0x4A, 0x46, 0x90, 0x00, 0x48, 0x44, 0x40, 0x19
	.byte 0x80, 0x00, 0x40, 0x44, 0x00, 0x68, 0x29, 0xF0, 0x89, 0xF8, 0x01, 0x28, 0x1E, 0xD1, 0x55, 0x46
	.byte 0xA8, 0x00, 0x50, 0x44, 0x80, 0x19, 0x80, 0x00, 0x40, 0x44, 0x00, 0x68, 0x29, 0xF0, 0x7E, 0xF8
	.byte 0x01, 0x28, 0x13, 0xD1, 0x00, 0x9E, 0xB0, 0x00, 0x80, 0x19, 0xC0, 0x19, 0x80, 0x00, 0x40, 0x44
	.byte 0x00, 0x68, 0x29, 0xF0, 0x73, 0xF8, 0x01, 0x28, 0x08, 0xD1, 0x01, 0x20, 0x07, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0x00, 0x20, 0x01, 0xB0
	.byte 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801A630
sub_801A630: @ 0x0801A630
	push {r4, r5, lr}
	movs r5, #0
	ldr r0, _0801A66C
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801A668
	ldr r0, _0801A670
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0801A674
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r3
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801A678
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _0801A67C
_0801A668:
	movs r0, #0
	b _0801A68A
	.align 2, 0
_0801A66C: .4byte gDuel+0x100
_0801A670: .4byte 0x02021C00
_0801A674: .4byte gZones
_0801A678: .4byte gCardInfo
_0801A67C:
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A688
	movs r5, #1
_0801A688:
	adds r0, r5, #0
_0801A68A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x10, 0x48, 0x00, 0x68, 0x81, 0x78, 0x04, 0x20, 0x08, 0x40, 0x00, 0x28, 0x21, 0xD1
	.byte 0x0D, 0x48, 0x80, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40, 0x0C, 0x4B, 0x90, 0x00, 0x80, 0x18
	.byte 0x40, 0x18, 0x80, 0x00, 0xC4, 0x18, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x93, 0xFE, 0x08, 0x48
	.byte 0x80, 0x7F, 0x00, 0x28, 0x0E, 0xD0, 0x20, 0x68, 0x29, 0xF0, 0x10, 0xF8, 0x01, 0x28, 0x09, 0xD1
	.byte 0x01, 0x20, 0x08, 0xE0, 0xC0, 0x3F, 0x02, 0x02, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02
	.byte 0xD0, 0x1A, 0x02, 0x02, 0x00, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801A6EC
sub_801A6EC: @ 0x0801A6EC
	push {r4, lr}
	ldr r0, _0801A724
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0801A728
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r3
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801A72C
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A730
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A730
	movs r0, #1
	b _0801A732
	.align 2, 0
_0801A724: .4byte 0x02021C00
_0801A728: .4byte gZones
_0801A72C: .4byte gCardInfo
_0801A730:
	movs r0, #0
_0801A732:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x0D, 0x48, 0x80, 0x78, 0x02, 0x09
	.byte 0x0F, 0x21, 0x01, 0x40, 0x0B, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00, 0xC4, 0x18
	.byte 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x46, 0xFE, 0x07, 0x48, 0x80, 0x7F, 0x00, 0x28, 0x0D, 0xD0
	.byte 0x20, 0x68, 0x28, 0xF0, 0xC3, 0xFF, 0x01, 0x28, 0x08, 0xD1, 0x01, 0x20, 0x07, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0x00, 0x20, 0x10, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801A784
sub_801A784: @ 0x0801A784
	push {r4, r5, r6, lr}
	ldr r0, _0801A7F8
	ldrb r0, [r0, #2]
	lsrs r5, r0, #4
	movs r6, #0xf
	ands r6, r0
	bl WhoseTurn
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801A80C
	ldr r0, _0801A7FC
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801A80C
	ldr r1, _0801A800
	lsls r0, r5, #2
	adds r0, r0, r5
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801A804
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A80C
	ldr r1, _0801A808
	strb r5, [r1, #2]
	strb r6, [r1, #3]
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	beq _0801A80C
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A80C
	movs r0, #1
	bl sub_80437D4
	cmp r0, #0
	bne _0801A80C
	movs r0, #1
	b _0801A80E
	.align 2, 0
_0801A7F8: .4byte 0x02021C00
_0801A7FC: .4byte gDuel+0x100
_0801A800: .4byte gZones
_0801A804: .4byte gCardInfo
_0801A808: .4byte gUnk020245A0
_0801A80C:
	movs r0, #0
_0801A80E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x70, 0xB5, 0x1C, 0x48, 0x80, 0x78, 0x05, 0x09, 0x0F, 0x26, 0x06, 0x40
	.byte 0x3D, 0xF0, 0x90, 0xFF, 0x00, 0x06, 0x00, 0x0E, 0x0A, 0xF0, 0x84, 0xFE, 0x00, 0x06, 0x00, 0x28
	.byte 0x34, 0xD0, 0x16, 0x48, 0x00, 0x68, 0x81, 0x78, 0x03, 0x20, 0x08, 0x40, 0x00, 0x28, 0x2D, 0xD1
	.byte 0x13, 0x49, 0xA8, 0x00, 0x40, 0x19, 0x80, 0x19, 0x80, 0x00, 0x44, 0x18, 0x20, 0x68, 0x00, 0x88
	.byte 0xF0, 0xF7, 0xC8, 0xFD, 0x0F, 0x48, 0x80, 0x7F, 0x00, 0x28, 0x1F, 0xD0, 0x0E, 0x49, 0x8D, 0x70
	.byte 0xCE, 0x70, 0x20, 0x68, 0x00, 0x88, 0x08, 0x80, 0x3D, 0xF0, 0x38, 0xFF, 0x01, 0x28, 0x15, 0xD0
	.byte 0x20, 0x68, 0x28, 0xF0, 0x3B, 0xFF, 0x01, 0x28, 0x10, 0xD1, 0x01, 0x20, 0x28, 0xF0, 0xAA, 0xFF
	.byte 0x00, 0x28, 0x0B, 0xD1, 0x01, 0x20, 0x0A, 0xE0, 0x00, 0x1C, 0x02, 0x02, 0xC0, 0x3F, 0x02, 0x02
	.byte 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0xA0, 0x45, 0x02, 0x02, 0x00, 0x20, 0x70, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801A8A4
sub_801A8A4: @ 0x0801A8A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0801A950
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	mov r8, r2
	adds r7, r1, #0
	ands r7, r0
	bl WhoseTurn
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801A964
	ldr r0, _0801A954
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801A964
	ldr r0, _0801A958
	mov sb, r0
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801A95C
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801A964
	ldr r1, _0801A960
	strb r6, [r1, #2]
	strb r5, [r1, #3]
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	beq _0801A964
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801A964
	mov r2, r8
	lsls r0, r2, #2
	add r0, r8
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801A964
	bl sub_803FCBC
	cmp r0, #1
	bne _0801A964
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801A964
	movs r0, #1
	b _0801A966
	.align 2, 0
_0801A950: .4byte 0x02021C00
_0801A954: .4byte gDuel+0x100
_0801A958: .4byte gZones
_0801A95C: .4byte gCardInfo
_0801A960: .4byte gUnk020245A0
_0801A964:
	movs r0, #0
_0801A966:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x28, 0x4A, 0x90, 0x78
	.byte 0x06, 0x09, 0x0F, 0x21, 0x0D, 0x1C, 0x05, 0x40, 0xD0, 0x78, 0x02, 0x09, 0x90, 0x46, 0x0F, 0x1C
	.byte 0x07, 0x40, 0x3D, 0xF0, 0xD7, 0xFE, 0x00, 0x06, 0x00, 0x0E, 0x0A, 0xF0, 0xCB, 0xFD, 0x00, 0x06
	.byte 0x00, 0x28, 0x47, 0xD0, 0x1F, 0x48, 0x00, 0x68, 0x81, 0x78, 0x03, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x40, 0xD1, 0x1D, 0x48, 0x81, 0x46, 0xB0, 0x00, 0x80, 0x19, 0x40, 0x19, 0x80, 0x00, 0x49, 0x46
	.byte 0x44, 0x18, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x0D, 0xFD, 0x18, 0x48, 0x80, 0x7F, 0x00, 0x28
	.byte 0x30, 0xD0, 0x17, 0x49, 0x8E, 0x70, 0xCD, 0x70, 0x20, 0x68, 0x00, 0x88, 0x08, 0x80, 0x3D, 0xF0
	.byte 0x7D, 0xFE, 0x01, 0x28, 0x26, 0xD0, 0x20, 0x68, 0x28, 0xF0, 0x80, 0xFE, 0x01, 0x28, 0x21, 0xD1
	.byte 0x42, 0x46, 0x90, 0x00, 0x40, 0x44, 0xC0, 0x19, 0x80, 0x00, 0x49, 0x46, 0x44, 0x18, 0x21, 0x68
	.byte 0x08, 0x88, 0x00, 0x28, 0x16, 0xD0, 0x25, 0xF0, 0x59, 0xF9, 0x01, 0x28, 0x12, 0xD1, 0x20, 0x68
	.byte 0x41, 0x79, 0x10, 0x20, 0x08, 0x40, 0x00, 0x28, 0x0C, 0xD0, 0x01, 0x20, 0x0B, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xC0, 0x3F, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0xA0, 0x45, 0x02, 0x02, 0x00, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801AA44
sub_801AA44: @ 0x0801AA44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0801AAF0
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	mov r8, r2
	adds r7, r1, #0
	ands r7, r0
	ldr r0, _0801AAF4
	mov sb, r0
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801AAF8
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801AB04
	bl WhoseTurn
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801AB04
	ldr r0, _0801AAFC
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801AB04
	ldr r1, _0801AB00
	strb r6, [r1, #2]
	strb r5, [r1, #3]
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	beq _0801AB04
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801AB04
	mov r2, r8
	lsls r0, r2, #2
	add r0, r8
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801AB04
	bl sub_803FCBC
	cmp r0, #1
	bne _0801AB04
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0801AB04
	movs r0, #1
	b _0801AB06
	.align 2, 0
_0801AAF0: .4byte 0x02021C00
_0801AAF4: .4byte gZones
_0801AAF8: .4byte gCardInfo
_0801AAFC: .4byte gDuel+0x100
_0801AB00: .4byte gUnk020245A0
_0801AB04:
	movs r0, #0
_0801AB06:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x28, 0x4A, 0x90, 0x78
	.byte 0x06, 0x09, 0x0F, 0x21, 0x0D, 0x1C, 0x05, 0x40, 0xD0, 0x78, 0x02, 0x09, 0x90, 0x46, 0x0F, 0x1C
	.byte 0x07, 0x40, 0x24, 0x48, 0x81, 0x46, 0xB0, 0x00, 0x80, 0x19, 0x40, 0x19, 0x80, 0x00, 0x49, 0x46
	.byte 0x44, 0x18, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x4D, 0xFC, 0x1F, 0x48, 0x80, 0x7F, 0x00, 0x28
	.byte 0x40, 0xD0, 0x3D, 0xF0, 0xF7, 0xFD, 0x00, 0x06, 0x00, 0x0E, 0x0A, 0xF0, 0xEB, 0xFC, 0x00, 0x06
	.byte 0x00, 0x28, 0x37, 0xD0, 0x19, 0x48, 0x00, 0x68, 0x81, 0x78, 0x03, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x30, 0xD1, 0x17, 0x49, 0x8E, 0x70, 0xCD, 0x70, 0x20, 0x68, 0x00, 0x88, 0x08, 0x80, 0x3D, 0xF0
	.byte 0xAD, 0xFD, 0x01, 0x28, 0x26, 0xD0, 0x20, 0x68, 0x28, 0xF0, 0xB0, 0xFD, 0x01, 0x28, 0x21, 0xD1
	.byte 0x42, 0x46, 0x90, 0x00, 0x40, 0x44, 0xC0, 0x19, 0x80, 0x00, 0x49, 0x46, 0x44, 0x18, 0x21, 0x68
	.byte 0x08, 0x88, 0x00, 0x28, 0x16, 0xD0, 0x25, 0xF0, 0x89, 0xF8, 0x01, 0x28, 0x12, 0xD1, 0x20, 0x68
	.byte 0x41, 0x79, 0x10, 0x20, 0x08, 0x40, 0x00, 0x28, 0x0C, 0xD1, 0x01, 0x20, 0x0B, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0xC0, 0x3F, 0x02, 0x02
	.byte 0xA0, 0x45, 0x02, 0x02, 0x00, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801ABE4
sub_801ABE4: @ 0x0801ABE4
	push {r4, r5, r6, lr}
	ldr r0, _0801AC58
	ldrb r0, [r0, #2]
	lsrs r5, r0, #4
	movs r6, #0xf
	ands r6, r0
	bl WhoseTurn
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801AC6C
	ldr r0, _0801AC5C
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801AC6C
	ldr r1, _0801AC60
	lsls r0, r5, #2
	adds r0, r0, r5
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801AC64
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801AC6C
	ldr r1, _0801AC68
	strb r5, [r1, #2]
	strb r6, [r1, #3]
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	bne _0801AC6C
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801AC6C
	movs r0, #1
	bl sub_80437D4
	cmp r0, #0
	bne _0801AC6C
	movs r0, #1
	b _0801AC6E
	.align 2, 0
_0801AC58: .4byte 0x02021C00
_0801AC5C: .4byte gDuel+0x100
_0801AC60: .4byte gZones
_0801AC64: .4byte gCardInfo
_0801AC68: .4byte gUnk020245A0
_0801AC6C:
	movs r0, #0
_0801AC6E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x70, 0xB5, 0x1C, 0x48, 0x80, 0x78, 0x05, 0x09, 0x0F, 0x26, 0x06, 0x40
	.byte 0x3D, 0xF0, 0x60, 0xFD, 0x00, 0x06, 0x00, 0x0E, 0x0A, 0xF0, 0x54, 0xFC, 0x00, 0x06, 0x00, 0x28
	.byte 0x34, 0xD0, 0x16, 0x48, 0x00, 0x68, 0x81, 0x78, 0x03, 0x20, 0x08, 0x40, 0x00, 0x28, 0x2D, 0xD1
	.byte 0x13, 0x49, 0xA8, 0x00, 0x40, 0x19, 0x80, 0x19, 0x80, 0x00, 0x44, 0x18, 0x20, 0x68, 0x00, 0x88
	.byte 0xF0, 0xF7, 0x98, 0xFB, 0x0F, 0x48, 0x80, 0x7F, 0x00, 0x28, 0x1F, 0xD0, 0x0E, 0x49, 0x8D, 0x70
	.byte 0xCE, 0x70, 0x20, 0x68, 0x00, 0x88, 0x08, 0x80, 0x3D, 0xF0, 0x08, 0xFD, 0x01, 0x28, 0x15, 0xD1
	.byte 0x20, 0x68, 0x28, 0xF0, 0x0B, 0xFD, 0x01, 0x28, 0x10, 0xD1, 0x01, 0x20, 0x28, 0xF0, 0x7A, 0xFD
	.byte 0x00, 0x28, 0x0B, 0xD1, 0x01, 0x20, 0x0A, 0xE0, 0x00, 0x1C, 0x02, 0x02, 0xC0, 0x3F, 0x02, 0x02
	.byte 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0xA0, 0x45, 0x02, 0x02, 0x00, 0x20, 0x70, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801AD04
sub_801AD04: @ 0x0801AD04
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0801ADB0
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	mov r8, r2
	adds r7, r1, #0
	ands r7, r0
	bl WhoseTurn
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801ADC4
	ldr r0, _0801ADB4
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801ADC4
	ldr r0, _0801ADB8
	mov sb, r0
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801ADBC
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801ADC4
	ldr r1, _0801ADC0
	strb r6, [r1, #2]
	strb r5, [r1, #3]
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	bne _0801ADC4
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801ADC4
	mov r2, r8
	lsls r0, r2, #2
	add r0, r8
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801ADC4
	bl sub_803FCBC
	cmp r0, #1
	bne _0801ADC4
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801ADC4
	movs r0, #1
	b _0801ADC6
	.align 2, 0
_0801ADB0: .4byte 0x02021C00
_0801ADB4: .4byte gDuel+0x100
_0801ADB8: .4byte gZones
_0801ADBC: .4byte gCardInfo
_0801ADC0: .4byte gUnk020245A0
_0801ADC4:
	movs r0, #0
_0801ADC6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x28, 0x4A, 0x90, 0x78
	.byte 0x06, 0x09, 0x0F, 0x21, 0x0D, 0x1C, 0x05, 0x40, 0xD0, 0x78, 0x02, 0x09, 0x90, 0x46, 0x0F, 0x1C
	.byte 0x07, 0x40, 0x3D, 0xF0, 0xA7, 0xFC, 0x00, 0x06, 0x00, 0x0E, 0x0A, 0xF0, 0x9B, 0xFB, 0x00, 0x06
	.byte 0x00, 0x28, 0x47, 0xD0, 0x1F, 0x48, 0x00, 0x68, 0x81, 0x78, 0x03, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x40, 0xD1, 0x1D, 0x48, 0x81, 0x46, 0xB0, 0x00, 0x80, 0x19, 0x40, 0x19, 0x80, 0x00, 0x49, 0x46
	.byte 0x44, 0x18, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0xDD, 0xFA, 0x18, 0x48, 0x80, 0x7F, 0x00, 0x28
	.byte 0x30, 0xD0, 0x17, 0x49, 0x8E, 0x70, 0xCD, 0x70, 0x20, 0x68, 0x00, 0x88, 0x08, 0x80, 0x3D, 0xF0
	.byte 0x4D, 0xFC, 0x01, 0x28, 0x26, 0xD1, 0x20, 0x68, 0x28, 0xF0, 0x50, 0xFC, 0x01, 0x28, 0x21, 0xD1
	.byte 0x42, 0x46, 0x90, 0x00, 0x40, 0x44, 0xC0, 0x19, 0x80, 0x00, 0x49, 0x46, 0x44, 0x18, 0x21, 0x68
	.byte 0x08, 0x88, 0x00, 0x28, 0x16, 0xD0, 0x24, 0xF0, 0x29, 0xFF, 0x01, 0x28, 0x12, 0xD1, 0x20, 0x68
	.byte 0x41, 0x79, 0x10, 0x20, 0x08, 0x40, 0x00, 0x28, 0x0C, 0xD0, 0x01, 0x20, 0x0B, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xC0, 0x3F, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0xA0, 0x45, 0x02, 0x02, 0x00, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801AEA4
sub_801AEA4: @ 0x0801AEA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0801AF50
	ldrb r0, [r2, #2]
	lsrs r6, r0, #4
	movs r1, #0xf
	adds r5, r1, #0
	ands r5, r0
	ldrb r0, [r2, #3]
	lsrs r2, r0, #4
	mov r8, r2
	adds r7, r1, #0
	ands r7, r0
	ldr r0, _0801AF54
	mov sb, r0
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801AF58
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801AF64
	bl WhoseTurn
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801AF64
	ldr r0, _0801AF5C
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801AF64
	ldr r1, _0801AF60
	strb r6, [r1, #2]
	strb r5, [r1, #3]
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	bne _0801AF64
	ldr r0, [r4]
	bl sub_80436EC
	cmp r0, #1
	bne _0801AF64
	mov r2, r8
	lsls r0, r2, #2
	add r0, r8
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801AF64
	bl sub_803FCBC
	cmp r0, #1
	bne _0801AF64
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0801AF64
	movs r0, #1
	b _0801AF66
	.align 2, 0
_0801AF50: .4byte 0x02021C00
_0801AF54: .4byte gZones
_0801AF58: .4byte gCardInfo
_0801AF5C: .4byte gDuel+0x100
_0801AF60: .4byte gUnk020245A0
_0801AF64:
	movs r0, #0
_0801AF66:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x28, 0x4A, 0x90, 0x78
	.byte 0x06, 0x09, 0x0F, 0x21, 0x0D, 0x1C, 0x05, 0x40, 0xD0, 0x78, 0x02, 0x09, 0x90, 0x46, 0x0F, 0x1C
	.byte 0x07, 0x40, 0x24, 0x48, 0x81, 0x46, 0xB0, 0x00, 0x80, 0x19, 0x40, 0x19, 0x80, 0x00, 0x49, 0x46
	.byte 0x44, 0x18, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x1D, 0xFA, 0x1F, 0x48, 0x80, 0x7F, 0x00, 0x28
	.byte 0x40, 0xD0, 0x3D, 0xF0, 0xC7, 0xFB, 0x00, 0x06, 0x00, 0x0E, 0x0A, 0xF0, 0xBB, 0xFA, 0x00, 0x06
	.byte 0x00, 0x28, 0x37, 0xD0, 0x19, 0x48, 0x00, 0x68, 0x81, 0x78, 0x03, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x30, 0xD1, 0x17, 0x49, 0x8E, 0x70, 0xCD, 0x70, 0x20, 0x68, 0x00, 0x88, 0x08, 0x80, 0x3D, 0xF0
	.byte 0x7D, 0xFB, 0x01, 0x28, 0x26, 0xD1, 0x20, 0x68, 0x28, 0xF0, 0x80, 0xFB, 0x01, 0x28, 0x21, 0xD1
	.byte 0x42, 0x46, 0x90, 0x00, 0x40, 0x44, 0xC0, 0x19, 0x80, 0x00, 0x49, 0x46, 0x44, 0x18, 0x21, 0x68
	.byte 0x08, 0x88, 0x00, 0x28, 0x16, 0xD0, 0x24, 0xF0, 0x59, 0xFE, 0x01, 0x28, 0x12, 0xD1, 0x20, 0x68
	.byte 0x41, 0x79, 0x10, 0x20, 0x08, 0x40, 0x00, 0x28, 0x0C, 0xD1, 0x01, 0x20, 0x0B, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0xC0, 0x3F, 0x02, 0x02
	.byte 0xA0, 0x45, 0x02, 0x02, 0x00, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x01, 0x20, 0x70, 0x47, 0x00, 0xB5, 0x09, 0x48
	.byte 0x80, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40, 0x07, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18
	.byte 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68, 0x28, 0xF0, 0x55, 0xFB, 0x01, 0x28, 0x06, 0xD1, 0x01, 0x20
	.byte 0x05, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0x00, 0x20, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801B084
sub_801B084: @ 0x0801B084
	push {r4, lr}
	ldr r0, _0801B0C8
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0801B0CC
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r3
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801B0D0
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801B0D4
	ldr r0, [r4]
	bl sub_804374C
	cmp r0, #1
	bne _0801B0D4
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_803EFAC
	cmp r0, #0
	bgt _0801B0D4
	movs r0, #1
	b _0801B0D6
	.align 2, 0
_0801B0C8: .4byte 0x02021C00
_0801B0CC: .4byte gZones
_0801B0D0: .4byte gCardInfo
_0801B0D4:
	movs r0, #0
_0801B0D6:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x0C, 0x48
	.byte 0x80, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40, 0x0A, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18
	.byte 0x80, 0x00, 0xC4, 0x18, 0x20, 0x68, 0x28, 0xF0, 0x29, 0xFB, 0x01, 0x28, 0x05, 0xD1, 0x20, 0x68
	.byte 0x00, 0x88, 0x23, 0xF0, 0x53, 0xFF, 0x00, 0x28, 0x06, 0xDC, 0x00, 0x20, 0x05, 0xE0, 0x00, 0x00
	.byte 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x10, 0xB5, 0x10, 0x48, 0x80, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40, 0x0E, 0x4B, 0x90, 0x00
	.byte 0x80, 0x18, 0x40, 0x18, 0x80, 0x00, 0xC4, 0x18, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x52, 0xF9
	.byte 0x0A, 0x48, 0x80, 0x7F, 0x00, 0x28, 0x13, 0xD0, 0x20, 0x68, 0x28, 0xF0, 0xFF, 0xFA, 0x01, 0x28
	.byte 0x0E, 0xD1, 0x20, 0x68, 0x00, 0x88, 0x23, 0xF0, 0x29, 0xFF, 0x00, 0x28, 0x08, 0xDC, 0x01, 0x20
	.byte 0x07, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0x00, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801B178
sub_801B178: @ 0x0801B178
	push {lr}
	ldr r0, _0801B1A0
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0801B1A4
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_804376C
	cmp r0, #1
	bne _0801B1A8
	movs r0, #1
	b _0801B1AA
	.align 2, 0
_0801B1A0: .4byte 0x02021C00
_0801B1A4: .4byte gZones
_0801B1A8:
	movs r0, #0
_0801B1AA:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801B1B0
sub_801B1B0: @ 0x0801B1B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r3, _0801B218
	ldrb r1, [r3, #2]
	lsrs r0, r1, #4
	adds r5, r0, #0
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	mov r8, r0
	ldrb r0, [r3, #3]
	lsrs r6, r0, #4
	adds r4, r2, #0
	ands r4, r0
	ldr r0, _0801B21C
	mov sb, r0
	lsls r0, r5, #2
	adds r0, r0, r5
	add r0, r8
	lsls r0, r0, #2
	mov r1, sb
	adds r7, r0, r1
	ldr r0, [r7]
	bl sub_804376C
	cmp r0, #1
	bne _0801B224
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801B224
	ldr r1, _0801B220
	strb r5, [r1, #2]
	mov r0, r8
	strb r0, [r1, #3]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	beq _0801B224
	movs r0, #1
	b _0801B226
	.align 2, 0
_0801B218: .4byte 0x02021C00
_0801B21C: .4byte gZones
_0801B220: .4byte gUnk020245A0
_0801B224:
	movs r0, #0
_0801B226:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801B234
sub_801B234: @ 0x0801B234
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r3, _0801B29C
	ldrb r1, [r3, #2]
	lsrs r0, r1, #4
	adds r5, r0, #0
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	mov r8, r0
	ldrb r0, [r3, #3]
	lsrs r6, r0, #4
	adds r4, r2, #0
	ands r4, r0
	ldr r0, _0801B2A0
	mov sb, r0
	lsls r0, r5, #2
	adds r0, r0, r5
	add r0, r8
	lsls r0, r0, #2
	mov r1, sb
	adds r7, r0, r1
	ldr r0, [r7]
	bl sub_804376C
	cmp r0, #1
	bne _0801B2A8
	lsls r0, r6, #2
	adds r0, r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	bl sub_80436EC
	cmp r0, #1
	bne _0801B2A8
	ldr r1, _0801B2A4
	strb r5, [r1, #2]
	mov r0, r8
	strb r0, [r1, #3]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	bne _0801B2A8
	movs r0, #1
	b _0801B2AA
	.align 2, 0
_0801B29C: .4byte 0x02021C00
_0801B2A0: .4byte gZones
_0801B2A4: .4byte gUnk020245A0
_0801B2A8:
	movs r0, #0
_0801B2AA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801B2B8
sub_801B2B8: @ 0x0801B2B8
	push {r4, lr}
	ldr r0, _0801B2F0
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0801B2F4
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r3
	ldr r0, [r4]
	bl sub_8043790
	cmp r0, #1
	bne _0801B2FC
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0801B2F8
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0801B2FC
	movs r0, #1
	b _0801B2FE
	.align 2, 0
_0801B2F0: .4byte 0x02021C00
_0801B2F4: .4byte gZones
_0801B2F8: .4byte gCardInfo
_0801B2FC:
	movs r0, #0
_0801B2FE:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x10, 0x48, 0x80, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40
	.byte 0x0E, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18, 0x80, 0x00, 0xC4, 0x18, 0x20, 0x68, 0x00, 0x88
	.byte 0x24, 0xF0, 0xCC, 0xFC, 0x02, 0x28, 0x15, 0xD1, 0x20, 0x68, 0x00, 0x88, 0x24, 0xF0, 0xDE, 0xFC
	.byte 0x02, 0x28, 0x0F, 0xD1, 0x20, 0x68, 0x00, 0x88, 0xF0, 0xF7, 0x54, 0xF8, 0x04, 0x48, 0x80, 0x7F
	.byte 0x00, 0x28, 0x07, 0xD0, 0x01, 0x20, 0x06, 0xE0, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02
	.byte 0xD0, 0x1A, 0x02, 0x02, 0x00, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_801B35C
sub_801B35C: @ 0x0801B35C
	push {r4, r5, r6, lr}
	ldr r0, _0801B398
	ldrb r0, [r0, #2]
	lsrs r4, r0, #4
	movs r5, #0xf
	ands r5, r0
	ldr r1, _0801B39C
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r6, r0, r1
	ldr r0, [r6]
	bl sub_8043790
	cmp r0, #1
	bne _0801B3A4
	ldr r1, _0801B3A0
	strb r4, [r1, #2]
	strb r5, [r1, #3]
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	beq _0801B3A4
	movs r0, #1
	b _0801B3A6
	.align 2, 0
_0801B398: .4byte 0x02021C00
_0801B39C: .4byte gZones
_0801B3A0: .4byte gUnk020245A0
_0801B3A4:
	movs r0, #0
_0801B3A6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_801B3AC
sub_801B3AC: @ 0x0801B3AC
	push {r4, r5, r6, lr}
	ldr r0, _0801B3E8
	ldrb r0, [r0, #2]
	lsrs r4, r0, #4
	movs r5, #0xf
	ands r5, r0
	ldr r1, _0801B3EC
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r6, r0, r1
	ldr r0, [r6]
	bl sub_8043790
	cmp r0, #1
	bne _0801B3F4
	ldr r1, _0801B3F0
	strb r4, [r1, #2]
	strb r5, [r1, #3]
	ldr r0, [r6]
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_80586DC
	cmp r0, #1
	bne _0801B3F4
	movs r0, #1
	b _0801B3F6
	.align 2, 0
_0801B3E8: .4byte 0x02021C00
_0801B3EC: .4byte gZones
_0801B3F0: .4byte gUnk020245A0
_0801B3F4:
	movs r0, #0
_0801B3F6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_801B3FC
sub_801B3FC: @ 0x0801B3FC
	push {lr}
	ldr r0, _0801B424
	ldrb r0, [r0, #2]
	lsrs r2, r0, #4
	movs r1, #0xf
	ands r1, r0
	ldr r3, _0801B428
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_80437B4
	cmp r0, #1
	bne _0801B42C
	movs r0, #1
	b _0801B42E
	.align 2, 0
_0801B424: .4byte 0x02021C00
_0801B428: .4byte gZones
_0801B42C:
	movs r0, #0
_0801B42E:
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x82, 0xB0
	.byte 0x28, 0x4A, 0x90, 0x78, 0x04, 0x09, 0x0F, 0x21, 0x0B, 0x1C, 0x03, 0x40, 0xD0, 0x78, 0x05, 0x09
	.byte 0xA9, 0x46, 0x0F, 0x1C, 0x07, 0x40, 0x10, 0x79, 0x05, 0x09, 0xAA, 0x46, 0x0D, 0x1C, 0x05, 0x40
	.byte 0x50, 0x79, 0x02, 0x09, 0x01, 0x92, 0x0E, 0x1C, 0x06, 0x40, 0x1F, 0x48, 0x80, 0x46, 0xA0, 0x00
	.byte 0x00, 0x19, 0xC0, 0x18, 0x80, 0x00, 0x41, 0x46, 0x44, 0x18, 0x20, 0x68, 0x28, 0xF0, 0x9A, 0xF9
	.byte 0x01, 0x28, 0x53, 0xD1, 0x4A, 0x46, 0x90, 0x00, 0x48, 0x44, 0xC0, 0x19, 0x80, 0x00, 0x40, 0x44
	.byte 0x00, 0x68, 0x28, 0xF0, 0x2B, 0xF9, 0x01, 0x28, 0x48, 0xD1, 0x51, 0x46, 0x88, 0x00, 0x50, 0x44
	.byte 0x40, 0x19, 0x80, 0x00, 0x40, 0x44, 0x00, 0x68, 0x28, 0xF0, 0x20, 0xF9, 0x01, 0x28, 0x3D, 0xD1
	.byte 0x01, 0x9A, 0x90, 0x00, 0x80, 0x18, 0x80, 0x19, 0x80, 0x00, 0x40, 0x44, 0x00, 0x68, 0x28, 0xF0
	.byte 0x15, 0xF9, 0x01, 0x28, 0x32, 0xD1, 0x20, 0x68, 0x00, 0x88, 0xEF, 0xF7, 0x8B, 0xFF, 0x07, 0x48
	.byte 0x41, 0x7F, 0x05, 0x29, 0x0E, 0xD0, 0x18, 0x29, 0x2C, 0xD0, 0xC9, 0x00, 0x04, 0x48, 0x09, 0x18
	.byte 0x32, 0xE0, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0xA8, 0x0F, 0xE0, 0x08, 0x0E, 0x4C, 0x68, 0x46, 0x21, 0x1C, 0x2F, 0xF0, 0x23, 0xFE, 0x01, 0x28
	.byte 0x28, 0xD0, 0x21, 0x1C, 0x08, 0x39, 0x68, 0x46, 0x2F, 0xF0, 0x1C, 0xFE, 0x01, 0x28, 0x21, 0xD0
	.byte 0x21, 0x1C, 0x10, 0x39, 0x68, 0x46, 0x2F, 0xF0, 0x15, 0xFE, 0x01, 0x28, 0x1A, 0xD0, 0x21, 0x1C
	.byte 0xC0, 0x39, 0x68, 0x46, 0x2F, 0xF0, 0x0E, 0xFE, 0x01, 0x28, 0x13, 0xD0, 0x00, 0x20, 0x12, 0xE0
	.byte 0x90, 0x10, 0xE0, 0x08, 0x0C, 0x4C, 0x38, 0x1C, 0x21, 0x1C, 0x00, 0xF0, 0x3F, 0xF8, 0x00, 0x06
	.byte 0x00, 0x28, 0x07, 0xD1, 0x21, 0x1C, 0x10, 0x39, 0x38, 0x1C, 0x00, 0xF0, 0x37, 0xF8, 0x00, 0x06
	.byte 0x00, 0x28, 0xEB, 0xD0, 0x01, 0x20, 0x02, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x78, 0x10, 0xE0, 0x08, 0x10, 0xB5, 0x10, 0x48
	.byte 0x80, 0x78, 0x02, 0x09, 0x0F, 0x21, 0x01, 0x40, 0x0E, 0x4B, 0x90, 0x00, 0x80, 0x18, 0x40, 0x18
	.byte 0x80, 0x00, 0xC4, 0x18, 0x20, 0x68, 0x00, 0x88, 0xEF, 0xF7, 0x2C, 0xFF, 0x0A, 0x48, 0x80, 0x7F
	.byte 0x00, 0x28, 0x09, 0xD0, 0x20, 0x68, 0x00, 0x88, 0x24, 0xF0, 0x90, 0xFB, 0x02, 0x28, 0x03, 0xD1
	.byte 0x20, 0x68, 0x00, 0x88, 0x24, 0xF0, 0xA2, 0xFB, 0x00, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x00, 0x1C, 0x02, 0x02, 0xD0, 0x3F, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02

	THUMB_FUNC_START sub_801B5BC
sub_801B5BC: @ 0x0801B5BC
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r5, _0801B5E4
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0801B5E8
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	cmp r0, r6
	bne _0801B5E8
	movs r0, #1
	b _0801B5EA
	.align 2, 0
_0801B5E4: .4byte gZones+0x28
_0801B5E8:
	movs r0, #0
_0801B5EA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x30, 0xB5, 0x03, 0x1C, 0x0C, 0x1C, 0x0C, 0x48, 0x01, 0x3B, 0x00, 0x2B, 0x0D, 0xDB, 0x0B, 0x4D
	.byte 0x02, 0x02, 0x00, 0x0A, 0x21, 0x78, 0x48, 0x40, 0x40, 0x19, 0x00, 0x78, 0x50, 0x40, 0x00, 0x04
	.byte 0x00, 0x0C, 0x01, 0x34, 0x01, 0x3B, 0x00, 0x2B, 0xF2, 0xDA, 0xC0, 0x43, 0x00, 0x04, 0x00, 0x0C
	.byte 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x20, 0x0B, 0x0B, 0x08
	.byte 0x30, 0xB5, 0x03, 0x1C, 0x0C, 0x1C, 0x0B, 0x4A, 0x01, 0x3B, 0x00, 0x2B, 0x0C, 0xDB, 0x0A, 0x4D
	.byte 0x11, 0x0A, 0x20, 0x78, 0x42, 0x40, 0x10, 0x06, 0x00, 0x0E, 0x40, 0x19, 0x02, 0x78, 0x4A, 0x40
	.byte 0x01, 0x34, 0x01, 0x3B, 0x00, 0x2B, 0xF3, 0xDA, 0xD0, 0x43, 0x00, 0x04, 0x00, 0x0C, 0x30, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0xFF, 0xFF, 0x00, 0x00, 0x20, 0x0C, 0x0B, 0x08

	THUMB_FUNC_START sub_801B66C
sub_801B66C: @ 0x0801B66C
	push {r4, r5, lr}
	ldr r0, _0801B70C
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	bne _0801B678
	b _0801B7F8
_0801B678:
	bl sub_803EDB4
	bl sub_803EDD8
	bl sub_803EE20
	bl sub_801B808
	bl sub_801B83C
	movs r0, #1
	movs r1, #0
	bl sub_801BAEC
	ldr r4, _0801B710
	ldrb r1, [r4]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0801B6A8
	movs r0, #1
	bl sub_800B288
_0801B6A8:
	movs r0, #0
	movs r1, #1
	bl sub_801BAEC
	ldrb r1, [r4, #4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0801B6C0
	movs r0, #0
	bl sub_800B288
_0801B6C0:
	ldr r0, _0801B714
	bl sub_80081DC
	bl sub_8008220
	bl sub_801BB7C
	ldr r0, _0801B718
	bl sub_80081DC
	bl sub_8008220
	movs r4, #0
_0801B6DA:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0801B6DA
	ldr r0, _0801B710
	ldrb r1, [r0, #4]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _0801B77A
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B732
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801B71C
	movs r0, #1
	bl sub_801CDEC
	b _0801B722
	.align 2, 0
_0801B70C: .4byte 0x02023EA0
_0801B710: .4byte 0x0201CB48
_0801B714: .4byte 0x0801BC4D
_0801B718: .4byte 0x0801BC59
_0801B71C:
	movs r0, #1
	bl sub_801C6BC
_0801B722:
	movs r4, #0
_0801B724:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _0801B724
_0801B732:
	ldr r4, _0801B7A0
	ldrb r1, [r4, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801B744
	movs r0, #1
	bl sub_801C1DC
_0801B744:
	ldrb r1, [r4, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801B754
	movs r0, #1
	bl sub_801C7B8
_0801B754:
	ldrb r1, [r4, #4]
	movs r2, #6
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801B77A
	ldrb r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801B7DC
	movs r4, #0
_0801B76C:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1d
	bls _0801B76C
_0801B77A:
	ldr r0, _0801B7A0
	ldrb r1, [r0]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _0801B7DC
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B7BA
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801B7A4
	movs r0, #0
	bl sub_801CDEC
	b _0801B7AA
	.align 2, 0
_0801B7A0: .4byte 0x0201CB48
_0801B7A4:
	movs r0, #0
	bl sub_801C6BC
_0801B7AA:
	movs r4, #0
_0801B7AC:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _0801B7AC
_0801B7BA:
	ldr r4, _0801B800
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801B7CC
	movs r0, #0
	bl sub_801C1DC
_0801B7CC:
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801B7DC
	movs r0, #0
	bl sub_801C7B8
_0801B7DC:
	ldr r0, _0801B804
	ldrb r0, [r0, #0x18]
	cmp r0, #5
	beq _0801B7E8
	cmp r0, #8
	bne _0801B7F8
_0801B7E8:
	movs r4, #0
_0801B7EA:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1d
	bls _0801B7EA
_0801B7F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B800: .4byte 0x0201CB48
_0801B804: .4byte 0x02023EA0

	THUMB_FUNC_START sub_801B808
sub_801B808: @ 0x0801B808
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r2, #0
	ldr r3, _0801B838
	movs r7, #9
	rsbs r7, r7, #0
	movs r0, #0x11
	rsbs r0, r0, #0
	mov ip, r0
_0801B81C:
	lsls r0, r2, #2
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0801B81C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B838: .4byte 0x0201CB48

	THUMB_FUNC_START sub_801B83C
sub_801B83C: @ 0x0801B83C
	push {r4, r5, r6, lr}
	ldr r0, _0801B854
	ldrb r0, [r0, #0x18]
	cmp r0, #0x11
	bls _0801B848
	b _0801BAE2
_0801B848:
	lsls r0, r0, #2
	ldr r1, _0801B858
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801B854: .4byte 0x02023EA0
_0801B858: .4byte 0x0801B85C
_0801B85C: @ jump table
	.4byte _0801BAE2 @ case 0
	.4byte _0801B8A4 @ case 1
	.4byte _0801B8CC @ case 2
	.4byte _0801B8FC @ case 3
	.4byte _0801B914 @ case 4
	.4byte _0801B93C @ case 5
	.4byte _0801B958 @ case 6
	.4byte _0801B97C @ case 7
	.4byte _0801B9A0 @ case 8
	.4byte _0801B9BC @ case 9
	.4byte _0801B9E4 @ case 10
	.4byte _0801BA08 @ case 11
	.4byte _0801BA18 @ case 12
	.4byte _0801BA3C @ case 13
	.4byte _0801BA60 @ case 14
	.4byte _0801BA74 @ case 15
	.4byte _0801BA98 @ case 16
	.4byte _0801BAC0 @ case 17
_0801B8A4:
	ldr r2, _0801B8C8
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r3, #8
	orrs r0, r3
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	orrs r0, r3
	movs r1, #0x40
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801B8C8: .4byte 0x0201CB48
_0801B8CC:
	ldr r1, _0801B8F8
	ldrb r0, [r1]
	movs r6, #1
	orrs r0, r6
	movs r5, #2
	orrs r0, r5
	movs r4, #4
	orrs r0, r4
	movs r3, #8
	orrs r0, r3
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r1, #4]
	orrs r0, r6
	orrs r0, r5
	orrs r0, r4
	orrs r0, r3
	orrs r0, r2
	strb r0, [r1, #4]
	b _0801BAE2
	.align 2, 0
_0801B8F8: .4byte 0x0201CB48
_0801B8FC:
	ldr r2, _0801B910
	ldrb r0, [r2]
	movs r4, #1
	orrs r0, r4
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r3, #8
	b _0801BAD2
	.align 2, 0
_0801B910: .4byte 0x0201CB48
_0801B914:
	ldr r2, _0801B938
	ldrb r0, [r2]
	movs r3, #1
	orrs r0, r3
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r3
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801B938: .4byte 0x0201CB48
_0801B93C:
	ldr r2, _0801B954
	ldrb r0, [r2]
	movs r3, #1
	orrs r0, r3
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r3
	movs r1, #0x10
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801B954: .4byte 0x0201CB48
_0801B958:
	ldr r2, _0801B978
	ldrb r0, [r2]
	movs r3, #1
	orrs r0, r3
	movs r1, #2
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r3
	movs r1, #0x10
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801B978: .4byte 0x0201CB48
_0801B97C:
	ldr r2, _0801B99C
	ldrb r0, [r2]
	movs r3, #1
	orrs r0, r3
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r3
	movs r1, #2
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801B99C: .4byte 0x0201CB48
_0801B9A0:
	ldr r2, _0801B9B8
	ldrb r0, [r2]
	movs r3, #1
	orrs r0, r3
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r3
	movs r1, #8
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801B9B8: .4byte 0x0201CB48
_0801B9BC:
	ldr r2, _0801B9E0
	ldrb r0, [r2]
	movs r3, #1
	orrs r0, r3
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r3
	movs r1, #8
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801B9E0: .4byte 0x0201CB48
_0801B9E4:
	ldr r2, _0801BA04
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	movs r1, #2
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801BA04: .4byte 0x0201CB48
_0801BA08:
	ldr r2, _0801BA14
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #8
	b _0801BA32
	.align 2, 0
_0801BA14: .4byte 0x0201CB48
_0801BA18:
	ldr r2, _0801BA38
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
_0801BA32:
	orrs r0, r1
	strb r0, [r2]
	b _0801BAE2
	.align 2, 0
_0801BA38: .4byte 0x0201CB48
_0801BA3C:
	ldr r2, _0801BA5C
	ldrb r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801BA5C: .4byte 0x0201CB48
_0801BA60:
	ldr r2, _0801BA70
	ldrb r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801BA70: .4byte 0x0201CB48
_0801BA74:
	ldr r2, _0801BA94
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801BA94: .4byte 0x0201CB48
_0801BA98:
	ldr r2, _0801BABC
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	orrs r0, r3
	movs r1, #0x40
	orrs r0, r1
	b _0801BAE0
	.align 2, 0
_0801BABC: .4byte 0x0201CB48
_0801BAC0:
	ldr r2, _0801BAE8
	ldrb r0, [r2]
	movs r4, #1
	orrs r0, r4
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r3, #0x20
_0801BAD2:
	orrs r0, r3
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r4
	orrs r0, r3
_0801BAE0:
	strb r0, [r2, #4]
_0801BAE2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801BAE8: .4byte 0x0201CB48

	THUMB_FUNC_START sub_801BAEC
sub_801BAEC: @ 0x0801BAEC
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r1, _0801BB18
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r0, [r5]
	bl SetCardInfo
	ldr r1, _0801BB1C
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0801BB24
	ldr r1, _0801BB20
	ldrh r0, [r5, #6]
	b _0801BB28
	.align 2, 0
_0801BB18: .4byte 0x02023EA0
_0801BB1C: .4byte 0x0201CB48
_0801BB20: .4byte gCardInfo
_0801BB24:
	ldr r1, _0801BB4C
	ldr r0, _0801BB50
_0801BB28:
	strh r0, [r1, #0x12]
	adds r3, r1, #0
	ldr r1, _0801BB54
	lsls r2, r4, #2
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	adds r5, r1, #0
	cmp r0, #0
	bge _0801BB5C
	ldr r0, _0801BB58
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	b _0801BB5E
	.align 2, 0
_0801BB4C: .4byte gCardInfo
_0801BB50: .4byte 0x0000FFFF
_0801BB54: .4byte 0x0201CB48
_0801BB58: .4byte 0x02023EA0
_0801BB5C:
	ldr r0, _0801BB78
_0801BB5E:
	strh r0, [r3, #0x14]
	movs r0, #0
	strb r0, [r3, #0x16]
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	cmp r0, #0
	bne _0801BB72
	strb r0, [r3, #0x17]
_0801BB72:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BB78: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_801BB7C
sub_801BB7C: @ 0x0801BB7C
	push {r4, r5, lr}
	bl sub_8045640
	bl sub_8045658
	bl sub_8045690
	movs r1, #0
	movs r5, #0
	ldr r0, _0801BBE0
	movs r4, #0xa0
	movs r3, #0xf0
	movs r2, #0xc0
	lsls r2, r2, #4
_0801BB98:
	strh r4, [r0]
	strh r3, [r0, #2]
	strh r2, [r0, #4]
	strh r5, [r0, #6]
	adds r0, #8
	adds r1, #1
	cmp r1, #0x7f
	bls _0801BB98
	movs r4, #0
	bl LoadOam
	ldr r0, _0801BBE4
	movs r1, #4
	strh r1, [r0]
	ldr r2, _0801BBE8
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _0801BBEC
	strh r1, [r0]
	ldr r0, _0801BBF0
	strh r1, [r0]
	bl sub_8045434
	ldr r0, _0801BBF4
	strh r4, [r0]
	ldr r0, _0801BBF8
	strh r4, [r0]
	ldr r0, _0801BBFC
	strh r4, [r0]
	bl sub_804549C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BBE0: .4byte 0x02018400
_0801BBE4: .4byte 0x0202420C
_0801BBE8: .4byte 0x0202424C
_0801BBEC: .4byte 0x02024218
_0801BBF0: .4byte 0x02024204
_0801BBF4: .4byte 0x02024228
_0801BBF8: .4byte gUnk2024238
_0801BBFC: .4byte 0x02024230

	THUMB_FUNC_START sub_801BC00
sub_801BC00: @ 0x0801BC00
	push {r4, lr}
	sub sp, #0xc
	ldr r0, _0801BC40
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801BC34
	mov r0, sp
	bl sub_80240BC
	mov r1, sp
	movs r0, #0x18
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_802408C
	ldr r1, _0801BC44
	movs r0, #4
	strb r0, [r1]
	bl sub_8024548
	ldr r4, _0801BC48
_0801BC2A:
	bl sub_8024354
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801BC2A
_0801BC34:
	bl sub_801B66C
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801BC40: .4byte gUnk20241FC
_0801BC44: .4byte g2021D98
_0801BC48: .4byte 0x03000C6C

	THUMB_FUNC_START sub_801BC4C
sub_801BC4C: @ 0x0801BC4C
	push {lr}
	bl sub_8045718
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801BC58
sub_801BC58: @ 0x0801BC58
	push {lr}
	bl sub_80454E0
	ldr r1, _0801BC7C
	ldr r2, _0801BC80
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801BC84
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801BC7C: .4byte 0x0400000C
_0801BC80: .4byte 0x00001E81
_0801BC84: .4byte 0x00001F86

	THUMB_FUNC_START sub_801BC88
sub_801BC88: @ 0x0801BC88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	mov sl, r1
	cmp r0, #1
	bne _0801BCA2
	movs r0, #0x80
	mov sl, r0
_0801BCA2:
	movs r6, #2
	movs r5, #0
	movs r4, #2
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sb, r1
	ldr r0, _0801BCDC
	mov r8, r0
	subs r1, #0x5d
	mov ip, r1
	movs r7, #0x1f
_0801BCB8:
	mov r1, sl
	adds r0, r5, r1
	lsls r0, r0, #1
	ldr r1, _0801BCE0
	adds r3, r0, r1
	ldr r0, [r3]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	cmp r0, r4
	bls _0801BCE4
	subs r0, r0, r6
	ands r0, r7
	ldrb r2, [r3]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _0801BCEC
	.align 2, 0
_0801BCDC: .4byte 0xFFFFFC1F
_0801BCE0: .4byte 0x02000000
_0801BCE4:
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	strb r0, [r3]
_0801BCEC:
	ldr r0, [r3]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r0, r4
	bls _0801BD0A
	adds r1, r0, #0
	subs r1, r1, r6
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	b _0801BD10
_0801BD0A:
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
_0801BD10:
	strh r0, [r3]
	ldr r0, [r3]
	lsls r1, r0, #0x11
	lsrs r0, r1, #0x1b
	cmp r0, r4
	bls _0801BD2E
	subs r0, r0, r6
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	mov r1, ip
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _0801BD36
_0801BD2E:
	ldrb r1, [r3, #1]
	mov r0, ip
	ands r0, r1
	strb r0, [r3, #1]
_0801BD36:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r0, #0
	bge _0801BCB8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801BD50
sub_801BD50: @ 0x0801BD50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r4, _0801BD78
	movs r1, #3
	bl sub_805B940
	adds r2, r0, #0
_0801BD66:
	ldr r1, [r4]
	lsls r0, r7, #5
	adds r1, r0, r1
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	beq _0801BD7C
	subs r0, #1
	strb r0, [r1, #0x1a]
	b _0801BDB0
	.align 2, 0
_0801BD78: .4byte 0x08E0061C
_0801BD7C:
	ldrb r0, [r1, #0x1c]
	cmp r0, #0
	beq _0801BDB0
	ldrb r0, [r1, #0x1b]
	cmp r0, #0
	beq _0801BD8E
	subs r0, #1
	strb r0, [r1, #0x1b]
	b _0801BDB0
_0801BD8E:
	cmp r2, #0
	bne _0801BD9E
	ldrb r0, [r1, #0x1d]
	cmp r0, #1
	beq _0801BDA4
	movs r0, #1
	strb r0, [r1, #0x1d]
	b _0801BDB0
_0801BD9E:
	ldrb r0, [r1, #0x1d]
	cmp r0, #1
	bne _0801BDB0
_0801BDA4:
	ldr r0, [r4]
	lsls r1, r7, #5
	adds r1, r1, r0
	ldrb r0, [r1, #0x1c]
	subs r0, #1
	strb r0, [r1, #0x1c]
_0801BDB0:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xb
	bls _0801BD66
	movs r7, #0
	ldr r0, _0801BE2C
	mov ip, r0
	ldr r1, _0801BE30
	mov r8, r1
	ldr r0, _0801BE34
	mov sb, r0
	movs r1, #4
	rsbs r1, r1, #0
	add r1, r8
	mov sl, r1
_0801BDD0:
	mov r1, ip
	ldr r0, [r1]
	lsls r3, r7, #5
	adds r1, r3, r0
	ldrb r0, [r1, #0x1c]
	cmp r0, #0
	beq _0801BE3A
	ldrb r6, [r1, #0x1a]
	cmp r6, #0
	bne _0801BE3A
	ldrb r0, [r1, #0x19]
	adds r0, #1
	strb r0, [r1, #0x19]
	mov r1, ip
	ldr r0, [r1]
	adds r2, r3, r0
	ldrb r0, [r2, #0x18]
	lsls r0, r0, #3
	add r0, sl
	ldrb r1, [r2, #0x19]
	ldrb r0, [r0]
	cmp r1, r0
	blo _0801BE3A
	strb r6, [r2, #0x19]
	mov r1, ip
	ldr r0, [r1]
	adds r4, r3, r0
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #3
	add r0, r8
	ldr r0, [r0]
	ldrh r3, [r0, #4]
	adds r5, r1, #1
	lsls r0, r5, #3
	add r0, r8
	ldr r0, [r0]
	ldrh r2, [r0, #4]
	mov r1, sb
	ands r1, r3
	mov r0, sb
	ands r0, r2
	cmp r1, r0
	bne _0801BE38
	strb r6, [r4, #0x18]
	b _0801BE3A
	.align 2, 0
_0801BE2C: .4byte 0x08E0061C
_0801BE30: .4byte 0x080B0D24
_0801BE34: .4byte 0x000003FF
_0801BE38:
	strb r5, [r4, #0x18]
_0801BE3A:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xb
	bls _0801BDD0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801BE54
sub_801BE54: @ 0x0801BE54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0801BEDC
	ldr r2, _0801BEE0
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	movs r6, #0
	movs r0, #0
	ldr r1, _0801BEE4
	mov sb, r1
	mov r8, r4
_0801BE7C:
	movs r7, #0
	adds r1, r0, #1
	mov sl, r1
	lsls r0, r0, #5
	mov ip, r0
_0801BE86:
	mov r1, sb
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0801BF58
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	bne _0801BF58
	ldrb r0, [r5, #0x1d]
	cmp r0, #0
	beq _0801BEF8
	lsls r3, r6, #3
	ldr r0, _0801BEE8
	adds r4, r3, r0
	lsls r1, r7, #2
	adds r1, r5, r1
	movs r2, #5
	ldrsb r2, [r1, r2]
	ldrh r0, [r5, #2]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	movs r0, #4
	ldrsb r0, [r1, r0]
	ldrh r1, [r5]
	adds r0, r0, r1
	ldr r1, _0801BEEC
	ands r0, r1
	lsls r0, r0, #0x10
	ldr r1, _0801BEF0
	orrs r0, r1
	orrs r2, r0
	ldrb r1, [r5, #0x1e]
	movs r0, #1
	ands r0, r1
	lsls r0, r0, #0x1c
	orrs r2, r0
	str r2, [r4]
	ldr r0, _0801BEF4
	b _0801BF30
	.align 2, 0
_0801BEDC: .4byte 0x02018400
_0801BEE0: .4byte 0x01000200
_0801BEE4: .4byte 0x08E0061C
_0801BEE8: .4byte 0x020185E0
_0801BEEC: .4byte 0x000001FF
_0801BEF0: .4byte 0xC0008400
_0801BEF4: .4byte 0x020185E4
_0801BEF8:
	lsls r3, r6, #3
	mov r0, r8
	adds r4, r3, r0
	lsls r1, r7, #2
	adds r1, r5, r1
	movs r2, #5
	ldrsb r2, [r1, r2]
	ldrh r0, [r5, #2]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	movs r0, #4
	ldrsb r0, [r1, r0]
	ldrh r1, [r5]
	adds r0, r0, r1
	ldr r1, _0801BF48
	ands r0, r1
	lsls r0, r0, #0x10
	ldr r1, _0801BF4C
	orrs r0, r1
	orrs r2, r0
	ldrb r1, [r5, #0x1e]
	movs r0, #1
	ands r0, r1
	lsls r0, r0, #0x1c
	orrs r2, r0
	str r2, [r4]
	ldr r0, _0801BF50
_0801BF30:
	adds r3, r3, r0
	mov r1, sb
	ldr r0, [r1]
	add r0, ip
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #3
	ldr r1, _0801BF54
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	str r0, [r3]
	b _0801BF82
	.align 2, 0
_0801BF48: .4byte 0x000001FF
_0801BF4C: .4byte 0xC0008000
_0801BF50: .4byte 0x02018404
_0801BF54: .4byte 0x080B0D24
_0801BF58:
	lsls r0, r6, #3
	add r0, r8
	movs r1, #0xa0
	strh r1, [r0]
	lsls r2, r6, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	add r2, r8
	movs r0, #0
	strh r0, [r2]
_0801BF82:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bhi _0801BF94
	b _0801BE86
_0801BF94:
	mov r1, sl
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bhi _0801BFA0
	b _0801BE7C
_0801BFA0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801BFB0
sub_801BFB0: @ 0x0801BFB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0
	movs r1, #3
	bl sub_8056258
	lsls r0, r0, #0x18
	ldr r1, _0801BFEC
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80562CC
	ldr r1, _0801BFF0
	ldr r2, _0801BFF4
	adds r0, r2, #0
	strh r0, [r1]
	cmp r4, #0
	bne _0801BFF8
	movs r0, #4
	str r0, [sp]
	b _0801BFFC
	.align 2, 0
_0801BFEC: .4byte 0x08E00620
_0801BFF0: .4byte 0x02024228
_0801BFF4: .4byte 0x00002C10
_0801BFF8:
	movs r1, #0x7a
	str r1, [sp]
_0801BFFC:
	movs r7, #0
	ldr r6, _0801C098
	ldr r2, _0801C09C
	mov r8, r2
	ldr r3, _0801C0A0
	movs r5, #0
	movs r4, #0xa0
_0801C00A:
	lsls r0, r7, #3
	adds r0, r0, r3
	strh r4, [r0]
	lsls r2, r7, #2
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
	strh r5, [r2]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x7f
	bls _0801C00A
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0801C0A4
	movs r0, #0
	movs r2, #0x80
	bl sub_803EEFC
	movs r7, #0
	ldr r0, _0801C0A8
	mov sl, r0
_0801C054:
	movs r6, #0
	lsls r1, r7, #2
	mov r8, r1
	mov sb, r8
	adds r0, r1, r7
	lsls r0, r0, #3
	ldr r2, [sp]
	adds r0, r2, r0
	str r0, [sp, #4]
_0801C066:
	mov r1, sb
	adds r0, r1, r6
	mov r2, sl
	ldr r1, [r2]
	lsls r0, r0, #5
	adds r4, r0, r1
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r4]
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #4
	movs r1, #3
	bl sub_805AF28
	movs r2, #0x5e
	subs r1, r2, r0
	cmp r1, #0
	bge _0801C0B0
	ldr r1, _0801C0AC
	adds r0, r0, r1
	subs r0, r2, r0
	strh r0, [r4, #2]
	b _0801C0B2
	.align 2, 0
_0801C098: .4byte 0x080B1E74
_0801C09C: .4byte 0x02000200
_0801C0A0: .4byte 0x02018400
_0801C0A4: .4byte 0x080B0E74
_0801C0A8: .4byte 0x08E0061C
_0801C0AC: .4byte 0xFFFFFF00
_0801C0B0:
	strh r1, [r4, #2]
_0801C0B2:
	mov r2, sb
	adds r1, r2, r6
	ldr r5, _0801C0F8
	ldr r0, [r5]
	lsls r4, r1, #5
	adds r0, r4, r0
	movs r1, #0
	strb r1, [r0, #0x18]
	ldr r0, [r5]
	adds r0, r4, r0
	strb r1, [r0, #0x19]
	ldr r0, [r5]
	adds r0, r4, r0
	movs r1, #4
	strb r1, [r0, #0x1b]
	cmp r6, #0
	bne _0801C0FC
	bl sub_8056208
	adds r3, r0, #0
	ldr r1, [r5]
	lsls r0, r7, #7
	adds r1, r0, r1
	adds r0, r3, #0
	cmp r3, #0
	bge _0801C0E8
	adds r0, r3, #3
_0801C0E8:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r3, r0
	ldrb r2, [r1, #0x1a]
	adds r0, r0, r2
	strb r0, [r1, #0x1a]
	b _0801C11E
	.align 2, 0
_0801C0F8: .4byte 0x08E0061C
_0801C0FC:
	bl sub_8056208
	ldr r2, [r5]
	adds r2, r4, r2
	adds r3, r2, #0
	subs r3, #0x20
	lsrs r1, r0, #0x1f
	adds r1, r0, r1
	asrs r1, r1, #1
	lsls r1, r1, #1
	subs r0, r0, r1
	ldrb r3, [r3, #0x1a]
	adds r0, r0, r3
	adds r0, #1
	ldrb r1, [r2, #0x1a]
	adds r0, r0, r1
	strb r0, [r2, #0x1a]
_0801C11E:
	mov r2, r8
	adds r4, r2, r6
	mov r0, sl
	ldr r1, [r0]
	lsls r4, r4, #5
	adds r1, r4, r1
	movs r0, #3
	strb r0, [r1, #0x1c]
	mov r1, sl
	ldr r0, [r1]
	adds r0, r4, r0
	movs r2, #0
	strb r2, [r0, #0x1d]
	bl sub_8056208
	mov r2, sl
	ldr r1, [r2]
	adds r4, r4, r1
	lsrs r1, r0, #0x1f
	adds r1, r0, r1
	asrs r1, r1, #1
	lsls r1, r1, #1
	subs r0, r0, r1
	strb r0, [r4, #0x1e]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _0801C066
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #2
	bhi _0801C164
	b _0801C054
_0801C164:
	movs r7, #0
	ldr r0, _0801C1D8
	mov sb, r0
_0801C16A:
	movs r6, #0
	adds r1, r7, #1
	mov r8, r1
	lsls r7, r7, #5
_0801C172:
	bl sub_8056208
	adds r1, r0, #0
	mov r2, sb
	ldr r0, [r2]
	adds r0, r7, r0
	lsls r5, r6, #2
	adds r2, r0, r5
	adds r0, r1, #0
	cmp r1, #0
	bge _0801C18A
	adds r0, #0x1f
_0801C18A:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	movs r1, #0x10
	subs r1, r1, r0
	strb r1, [r2, #4]
	bl sub_8056208
	mov r1, sb
	ldr r4, [r1]
	adds r4, r7, r4
	adds r4, r4, r5
	movs r1, #0x28
	bl sub_805B004
	movs r1, #0x14
	subs r1, r1, r0
	strb r1, [r4, #5]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _0801C172
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xb
	bls _0801C16A
	bl sub_80562E0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C1D8: .4byte 0x08E0061C

	THUMB_FUNC_START sub_801C1DC
sub_801C1DC: @ 0x0801C1DC
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0801C200
	ldr r2, _0801C204
	mov r0, sp
	bl CpuSet
	cmp r4, #0
	bne _0801C208
	bl sub_801C2A0
	b _0801C210
	.align 2, 0
_0801C200: .4byte 0x02018800
_0801C204: .4byte 0x0100218A
_0801C208:
	cmp r4, #1
	bne _0801C210
	bl sub_801C218
_0801C210:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801C218
sub_801C218: @ 0x0801C218
	push {r4, r5, lr}
	movs r5, #0
	movs r0, #1
	bl sub_801BFB0
	ldr r0, _0801C294
	bl sub_80081DC
	bl sub_8008220
	bl sub_801C3C0
	movs r4, #1
	movs r0, #0x46
	bl sub_8034F60
_0801C238:
	cmp r5, #0
	bne _0801C254
	adds r0, r4, #0
	bl sub_801BD50
	movs r0, #1
	adds r1, r4, #0
	bl sub_801BC88
	bl sub_801BE54
	adds r0, r4, #0
	bl sub_801C334
_0801C254:
	ldr r0, _0801C298
	bl sub_80081DC
	bl sub_8008220
	bl sub_801C3CC
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #2
	bls _0801C274
	movs r5, #0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801C274:
	adds r0, r4, #0
	movs r1, #1
	bl sub_801C328
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C238
	ldr r0, _0801C29C
	bl sub_80081DC
	bl sub_8008220
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C294: .4byte 0x0801C369
_0801C298: .4byte 0x0801C38D
_0801C29C: .4byte 0x0801C3AD

	THUMB_FUNC_START sub_801C2A0
sub_801C2A0: @ 0x0801C2A0
	push {r4, r5, lr}
	movs r5, #0
	movs r0, #0
	bl sub_801BFB0
	ldr r0, _0801C31C
	bl sub_80081DC
	bl sub_8008220
	bl sub_801C3C0
	movs r4, #1
	movs r0, #0x46
	bl sub_8034F60
_0801C2C0:
	cmp r5, #0
	bne _0801C2DC
	adds r0, r4, #0
	bl sub_801BD50
	movs r0, #0
	adds r1, r4, #0
	bl sub_801BC88
	bl sub_801BE54
	adds r0, r4, #0
	bl sub_801C334
_0801C2DC:
	ldr r0, _0801C320
	bl sub_80081DC
	bl sub_8008220
	bl sub_801C3D8
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #2
	bls _0801C2FC
	movs r5, #0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801C2FC:
	adds r0, r4, #0
	movs r1, #0
	bl sub_801C328
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C2C0
	ldr r0, _0801C324
	bl sub_80081DC
	bl sub_8008220
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C31C: .4byte 0x0801C369
_0801C320: .4byte 0x0801C39D
_0801C324: .4byte 0x0801C3AD

	THUMB_FUNC_START sub_801C328
sub_801C328: @ 0x0801C328
	movs r1, #0
	cmp r0, #0x11
	bhi _0801C330
	movs r1, #1
_0801C330:
	adds r0, r1, #0
	bx lr

	THUMB_FUNC_START sub_801C334
sub_801C334: @ 0x0801C334
	push {r4, lr}
	ldr r4, _0801C360
	movs r1, #3
	bl sub_805B940
	adds r0, r0, r4
	ldrb r2, [r0]
	movs r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0801C364
	movs r1, #0x1f
	ands r0, r1
	ands r2, r1
	lsls r2, r2, #8
	orrs r0, r2
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C360: .4byte 0x080B0D50
_0801C364: .4byte gUnk2024238

	THUMB_FUNC_START sub_801C368
sub_801C368: @ 0x0801C368
	push {lr}
	bl LoadOam
	bl sub_80454E0
	bl sub_804549C
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C38C
sub_801C38C: @ 0x0801C38C
	push {lr}
	bl LoadOam
	bl sub_804549C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C39C
sub_801C39C: @ 0x0801C39C
	push {lr}
	bl LoadOam
	bl sub_804549C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C3AC
sub_801C3AC: @ 0x0801C3AC
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801C3BC
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0801C3BC: .4byte 0x0000EFFF

	THUMB_FUNC_START sub_801C3C0
sub_801C3C0: @ 0x0801C3C0
	push {lr}
	bl sub_80456AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C3CC
sub_801C3CC: @ 0x0801C3CC
	push {lr}
	bl sub_80454E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C3D8
sub_801C3D8: @ 0x0801C3D8
	push {lr}
	bl sub_80454E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C3E4
sub_801C3E4: @ 0x0801C3E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C3FC
	movs r0, #4
	mov sb, r0
	mov sl, r0
	b _0801C404
_0801C3FC:
	movs r2, #0x7c
	mov sb, r2
	movs r4, #4
	mov sl, r4
_0801C404:
	movs r6, #0
	ldr r7, _0801C48C
	ldr r0, _0801C490
	mov r8, r0
	movs r2, #4
	add r2, r8
	mov ip, r2
_0801C412:
	lsls r4, r6, #3
	adds r3, r4, r7
	ldr r0, _0801C494
	ldr r5, [r0]
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	mov r2, r8
	adds r0, r1, r2
	ldrb r0, [r0, #1]
	cmp r6, r0
	bhs _0801C4A0
	mov r2, ip
	adds r0, r1, r2
	ldr r0, [r0]
	adds r0, r4, r0
	ldrh r0, [r0]
	strh r0, [r3]
	lsls r2, r6, #2
	adds r1, r2, #1
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	add r0, ip
	ldr r0, [r0]
	adds r0, r4, r0
	ldrh r0, [r0, #2]
	strh r0, [r1]
	adds r2, #2
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	add r0, ip
	ldr r0, [r0]
	adds r0, r4, r0
	ldrh r0, [r0, #4]
	strh r0, [r2]
	ldrb r0, [r3]
	add r0, sl
	strb r0, [r3]
	ldrh r2, [r3, #2]
	lsls r1, r2, #0x17
	lsrs r1, r1, #0x17
	add r1, sb
	ldr r4, _0801C498
	adds r0, r4, #0
	ands r1, r0
	ldr r0, _0801C49C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3, #1]
	b _0801C4C6
	.align 2, 0
_0801C48C: .4byte 0x02018400
_0801C490: .4byte 0x080B0D54
_0801C494: .4byte 0x08E0081C
_0801C498: .4byte 0x000001FF
_0801C49C: .4byte 0xFFFFFE00
_0801C4A0:
	movs r0, #0xa0
	strh r0, [r3]
	lsls r2, r6, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r7
	movs r0, #0
	strh r0, [r2]
_0801C4C6:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x14
	bls _0801C412
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x00, 0x06, 0x19, 0x49, 0x88, 0x46
	.byte 0x04, 0x22, 0x0A, 0x80, 0x18, 0x4B, 0x9A, 0x46, 0xFE, 0x23, 0x5B, 0x00, 0x19, 0x1C, 0x53, 0x46
	.byte 0x19, 0x80, 0x16, 0x4F, 0x3A, 0x80, 0x16, 0x49, 0x89, 0x46, 0x0A, 0x80, 0x00, 0x28, 0x2D, 0xD1
	.byte 0x39, 0xF0, 0x7A, 0xFE, 0x13, 0x4E, 0x14, 0x4D, 0x29, 0x68, 0x49, 0x78, 0x89, 0x19, 0x0C, 0x78
	.byte 0x61, 0x00, 0x01, 0x31, 0x3E, 0xF0, 0x6E, 0xFD, 0x24, 0x1A, 0x43, 0x46, 0x1B, 0x88, 0xE4, 0x18
	.byte 0x40, 0x46, 0x04, 0x80, 0x39, 0xF0, 0x68, 0xFE, 0x29, 0x68, 0x49, 0x78, 0x89, 0x19, 0x0C, 0x78
	.byte 0x61, 0x00, 0x01, 0x31, 0x3E, 0xF0, 0x5E, 0xFD, 0x24, 0x1A, 0x51, 0x46, 0x09, 0x88, 0x64, 0x18
	.byte 0x53, 0x46, 0x2A, 0xE0, 0x0C, 0x42, 0x02, 0x02, 0x4C, 0x42, 0x02, 0x02, 0x18, 0x42, 0x02, 0x02
	.byte 0x04, 0x42, 0x02, 0x02, 0x18, 0x08, 0xE0, 0x08, 0x1C, 0x08, 0xE0, 0x08, 0x39, 0xF0, 0x4C, 0xFE
	.byte 0x12, 0x4E, 0x13, 0x4D, 0x29, 0x68, 0x49, 0x78, 0x89, 0x19, 0x0C, 0x78, 0x61, 0x00, 0x01, 0x31
	.byte 0x3E, 0xF0, 0x40, 0xFD, 0x24, 0x1A, 0x38, 0x88, 0x24, 0x18, 0x3C, 0x80, 0x39, 0xF0, 0x3C, 0xFE
	.byte 0x29, 0x68, 0x49, 0x78, 0x89, 0x19, 0x0C, 0x78, 0x61, 0x00, 0x01, 0x31, 0x3E, 0xF0, 0x32, 0xFD
	.byte 0x24, 0x1A, 0x49, 0x46, 0x09, 0x88, 0x64, 0x18, 0x4B, 0x46, 0x1C, 0x80, 0x38, 0xBC, 0x98, 0x46
	.byte 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x18, 0x08, 0xE0, 0x08
	.byte 0x1C, 0x08, 0xE0, 0x08

	THUMB_FUNC_START sub_801C5C4
sub_801C5C4: @ 0x0801C5C4
	push {r4, lr}
	ldr r3, _0801C608
	ldr r0, [r3]
	ldrb r1, [r0]
	adds r1, #1
	movs r4, #0
	strb r1, [r0]
	ldr r1, [r3]
	ldrb r0, [r1]
	cmp r0, #1
	bls _0801C600
	strb r4, [r1]
	ldr r1, [r3]
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	ldr r2, _0801C60C
	ldr r3, [r3]
	ldrb r1, [r3, #1]
	subs r0, r1, #1
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	bne _0801C600
	strb r4, [r3, #1]
_0801C600:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C608: .4byte 0x08E0081C
_0801C60C: .4byte 0x080B0D54

	THUMB_FUNC_START sub_801C610
sub_801C610: @ 0x0801C610
	push {r4, r5, r6, lr}
	ldr r0, _0801C690
	ldr r1, _0801C694
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0801C698
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0
	bl sub_803EEFC
	ldr r1, _0801C69C
	movs r0, #1
	movs r2, #0x50
	bl sub_803EEFC
	movs r3, #0
	ldr r4, _0801C6A0
	movs r6, #0
	movs r5, #0xa0
_0801C63A:
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
	bls _0801C63A
	ldr r1, _0801C6A4
	ldr r2, _0801C6A8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0801C6AC
	ldr r2, _0801C6B0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0801C6B4
	movs r1, #0
	strh r1, [r0]
	ldr r2, _0801C6B8
	ldr r0, [r2]
	strb r1, [r0]
	ldr r0, [r2]
	strb r1, [r0, #1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801C690: .4byte 0x080B4894
_0801C694: .4byte 0x02000200
_0801C698: .4byte 0x080B1E94
_0801C69C: .4byte 0x080B3E94
_0801C6A0: .4byte 0x02018400
_0801C6A4: .4byte 0x02024228
_0801C6A8: .4byte 0x00002C10
_0801C6AC: .4byte gUnk2024238
_0801C6B0: .4byte 0x0000080E
_0801C6B4: .4byte 0x02024230
_0801C6B8: .4byte 0x08E0081C

	THUMB_FUNC_START sub_801C6BC
sub_801C6BC: @ 0x0801C6BC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	bl sub_801C610
	ldr r0, _0801C710
	bl sub_80081DC
	bl sub_8008220
	bl sub_801C7AC
	movs r0, #0x44
	bl sub_8034F60
_0801C6DC:
	adds r0, r4, #0
	bl sub_801C3E4
	ldr r0, _0801C714
	bl sub_80081DC
	bl sub_8008220
	bl sub_801C5C4
	bl sub_801C71C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C6DC
	bl sub_0801C730
	ldr r0, _0801C718
	bl sub_80081DC
	bl sub_8008220
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C710: .4byte 0x0801C735
_0801C714: .4byte 0x0801C759
_0801C718: .4byte 0x0801C769

	THUMB_FUNC_START sub_801C71C
sub_801C71C: @ 0x0801C71C
	ldr r0, _0801C72C
	ldr r0, [r0]
	ldrh r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0801C72C: .4byte 0x08E0081C

	THUMB_FUNC_START sub_0801C730
sub_0801C730: @ 0x0801C730
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C734
sub_801C734: @ 0x0801C734
	push {lr}
	bl LoadOam
	bl sub_80454E0
	bl sub_804549C
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C758
sub_801C758: @ 0x0801C758
	push {lr}
	bl LoadOam
	bl sub_8045434
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C768
sub_801C768: @ 0x0801C768
	push {lr}
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801C798
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0801C79C
	movs r1, #4
	strh r1, [r0]
	ldr r2, _0801C7A0
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _0801C7A4
	strh r1, [r0]
	ldr r0, _0801C7A8
	strh r1, [r0]
	bl sub_8045434
	pop {r0}
	bx r0
	.align 2, 0
_0801C798: .4byte 0x0000EFFF
_0801C79C: .4byte 0x0202420C
_0801C7A0: .4byte 0x0202424C
_0801C7A4: .4byte 0x02024218
_0801C7A8: .4byte 0x02024204

	THUMB_FUNC_START sub_801C7AC
sub_801C7AC: @ 0x0801C7AC
	push {lr}
	bl sub_80456AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C7B8
sub_801C7B8: @ 0x0801C7B8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, #0
	bl sub_801C98C
	ldr r0, _0801C85C
	bl sub_80081DC
	bl sub_8008220
	bl sub_801CA90
	adds r0, r5, #0
	bl sub_801C870
	ldr r0, _0801C860
	bl sub_80081DC
	movs r4, #0
_0801C7E0:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xe
	bls _0801C7E0
	ldr r0, _0801C864
	ldr r1, [r0]
	ldrh r0, [r1, #2]
	ldrh r2, [r1, #4]
	cmp r0, r2
	bls _0801C84C
	movs r4, #0
	ldrh r0, [r1]
	cmp r0, r2
	bls _0801C83C
	ldr r6, _0801C868
_0801C804:
	bl sub_801CA50
	adds r0, r5, #0
	bl sub_801C870
	ldr r0, _0801C860
	bl sub_80081DC
	bl sub_8008220
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	bne _0801C826
	movs r0, #0x47
	bl sub_8034F60
_0801C826:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bhi _0801C83C
	ldr r0, _0801C864
	ldr r1, [r0]
	ldrh r0, [r1]
	ldrh r1, [r1, #4]
	cmp r0, r1
	bhi _0801C804
_0801C83C:
	movs r4, #0
_0801C83E:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1d
	bls _0801C83E
_0801C84C:
	ldr r0, _0801C86C
	bl sub_80081DC
	bl sub_8008220
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801C85C: .4byte 0x0801CA71
_0801C860: .4byte 0x0801CAA1
_0801C864: .4byte 0x08E008B4
_0801C868: .4byte 0x0000270F
_0801C86C: .4byte 0x0801CAAD

	THUMB_FUNC_START sub_801C870
sub_801C870: @ 0x0801C870
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C882
	movs r0, #4
	b _0801C884
_0801C882:
	movs r0, #0x7c
_0801C884:
	mov r8, r0
	movs r0, #0x3c
	mov sb, r0
	ldr r0, _0801C8E0
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0
	bl sub_800DDA0
	movs r5, #0
	ldr r6, _0801C8E4
	ldr r7, _0801C8E8
	mov ip, r5
_0801C89E:
	cmp r5, #1
	bhi _0801C8EC
	lsls r2, r5, #3
	adds r2, r2, r6
	adds r4, r5, #0
	adds r4, #0xa
	lsls r4, r4, #2
	adds r4, r4, r7
	ldr r0, [r4]
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	mov r0, sb
	orrs r0, r1
	strh r0, [r2]
	lsls r1, r5, #2
	adds r2, r1, #1
	lsls r2, r2, #1
	adds r2, r2, r6
	ldr r0, [r4]
	ldr r0, [r0, #4]
	ldrh r3, [r0, #2]
	mov r0, r8
	orrs r0, r3
	strh r0, [r2]
	adds r1, #2
	lsls r1, r1, #1
	adds r1, r1, r6
	ldr r0, [r4]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #4]
	strh r0, [r1]
	b _0801C96A
	.align 2, 0
_0801C8E0: .4byte 0x08E008B4
_0801C8E4: .4byte 0x02018400
_0801C8E8: .4byte 0x08E00880
_0801C8EC:
	ldr r0, _0801C93C
	subs r1, r5, #2
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0xa
	beq _0801C940
	lsls r2, r5, #3
	adds r2, r2, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	mov r0, sb
	orrs r0, r1
	strh r0, [r2]
	lsls r2, r5, #2
	adds r3, r2, #1
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrh r1, [r0, #2]
	mov r0, r8
	orrs r0, r1
	strh r0, [r3]
	adds r2, #2
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #4]
	b _0801C968
	.align 2, 0
_0801C93C: .4byte 0x02021BD0
_0801C940:
	lsls r0, r5, #3
	adds r0, r0, r6
	movs r1, #0xa0
	strh r1, [r0]
	lsls r2, r5, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r6
	mov r0, ip
_0801C968:
	strh r0, [r2]
_0801C96A:
	mov r0, r8
	adds r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #6
	bls _0801C89E
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801C98C
sub_801C98C: @ 0x0801C98C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _0801C9F8
	ldr r1, _0801C9FC
	ldr r2, _0801CA00
	bl CpuSet
	ldr r1, _0801CA04
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0
	bl sub_803EEFC
	movs r3, #0
	ldr r4, _0801CA08
	movs r6, #0
	movs r5, #0xa0
_0801C9B0:
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
	bls _0801C9B0
	cmp r7, #1
	bne _0801CA14
	ldr r0, _0801CA0C
	ldr r2, [r0]
	ldr r1, _0801CA10
	ldrh r0, [r1, #0xe]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	strh r0, [r2, #2]
	ldrh r0, [r1, #0x10]
	b _0801CA24
	.align 2, 0
_0801C9F8: .4byte 0x080B8954
_0801C9FC: .4byte 0x02000200
_0801CA00: .4byte 0x04000008
_0801CA04: .4byte 0x080B6954
_0801CA08: .4byte 0x02018400
_0801CA0C: .4byte 0x08E008B4
_0801CA10: .4byte 0x02023EA0
_0801CA14:
	ldr r0, _0801CA3C
	ldr r2, [r0]
	ldr r1, _0801CA40
	ldrh r0, [r1, #2]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	ldrh r0, [r1, #4]
_0801CA24:
	strh r0, [r2, #4]
	ldr r0, _0801CA44
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0801CA48
	strh r1, [r0]
	ldr r0, _0801CA4C
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CA3C: .4byte 0x08E008B4
_0801CA40: .4byte 0x02023EA0
_0801CA44: .4byte 0x02024228
_0801CA48: .4byte gUnk2024238
_0801CA4C: .4byte 0x02024230

	THUMB_FUNC_START sub_801CA50
sub_801CA50: @ 0x0801CA50
	ldr r0, _0801CA68
	ldr r1, [r0]
	ldrh r3, [r1]
	ldrh r2, [r1, #4]
	subs r0, r3, r2
	cmp r0, #0x48
	ble _0801CA6C
	adds r0, r3, #0
	subs r0, #0x48
	strh r0, [r1]
	b _0801CA6E
	.align 2, 0
_0801CA68: .4byte 0x08E008B4
_0801CA6C:
	strh r2, [r1]
_0801CA6E:
	bx lr

	THUMB_FUNC_START sub_801CA70
sub_801CA70: @ 0x0801CA70
	push {lr}
	bl LoadOam
	bl sub_80454E0
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CA90
sub_801CA90: @ 0x0801CA90
	push {lr}
	bl sub_80456AC
	bl sub_804549C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CAA0
sub_801CAA0: @ 0x0801CAA0
	push {lr}
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CAAC
sub_801CAAC: @ 0x0801CAAC
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801CABC
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0801CABC: .4byte 0x0000EFFF

	THUMB_FUNC_START sub_801CAC0
sub_801CAC0: @ 0x0801CAC0
	push {r4, r5, r6, lr}
	ldr r0, _0801CAD4
	ldr r2, [r0]
	ldrb r3, [r2, #6]
	adds r4, r0, #0
	cmp r3, #0
	bne _0801CAD8
	adds r0, r3, #1
	strb r0, [r2, #6]
	b _0801CAE4
	.align 2, 0
_0801CAD4: .4byte 0x08E00AA0
_0801CAD8:
	movs r0, #0
	strb r0, [r2, #6]
	ldr r1, [r4]
	ldrb r0, [r1, #7]
	adds r0, #1
	strb r0, [r1, #7]
_0801CAE4:
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	movs r3, #0
	ldr r6, _0801CB1C
	ldr r5, _0801CB20
_0801CAF2:
	lsls r2, r3, #2
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r6
	lsls r1, r3, #1
	ldr r0, [r4]
	ldrb r0, [r0, #8]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r5
	ldrh r0, [r1]
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0801CAF2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801CB1C: .4byte 0x02018400
_0801CB20: .4byte 0x080B68D4

	THUMB_FUNC_START sub_801CB24
sub_801CB24: @ 0x0801CB24
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0801CB44
	ldr r2, _0801CB40
	ldr r1, [r2]
	strh r0, [r1]
	movs r0, #4
	strb r0, [r1, #4]
	ldr r1, [r2]
	movs r0, #0xfe
	lsls r0, r0, #1
	b _0801CB54
	.align 2, 0
_0801CB40: .4byte 0x08E00AA0
_0801CB44:
	ldr r2, _0801CC18
	ldr r1, [r2]
	movs r0, #0x7c
	strh r0, [r1]
	movs r0, #4
	strb r0, [r1, #4]
	ldr r1, [r2]
	movs r0, #0x74
_0801CB54:
	strh r0, [r1, #2]
	movs r0, #0xc
	strb r0, [r1, #5]
	ldr r0, [r2]
	movs r1, #0
	strb r1, [r0, #6]
	ldr r0, [r2]
	strb r1, [r0, #7]
	ldr r0, [r2]
	strb r1, [r0, #8]
	ldr r0, _0801CC1C
	ldr r4, _0801CC20
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r0, _0801CC24
	adds r4, #0x20
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0801CC28
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _0801CC2C
	movs r0, #1
	movs r2, #0x50
	bl sub_803EEFC
	ldr r1, _0801CC30
	movs r0, #2
	adds r2, r4, #0
	bl sub_803EEFC
	movs r3, #0
	ldr r4, _0801CC34
	movs r6, #0
	movs r5, #0xa0
_0801CBAA:
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
	bls _0801CBAA
	movs r3, #0
	ldr r5, _0801CC38
	ldr r6, _0801CC3C
	ldr r7, _0801CC40
	ldr r4, _0801CC34
	ldr r2, _0801CC44
_0801CBE6:
	lsls r1, r3, #2
	adds r1, #3
	lsls r1, r1, #1
	adds r1, r1, r4
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0801CBE6
	ldr r1, _0801CC48
	adds r0, r1, #0
	strh r0, [r5]
	ldr r1, _0801CC4C
	adds r0, r1, #0
	strh r0, [r6]
	movs r0, #0
	strh r0, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CC18: .4byte 0x08E00AA0
_0801CC1C: .4byte 0x080B4894
_0801CC20: .4byte 0x02000200
_0801CC24: .4byte 0x080B68B4
_0801CC28: .4byte 0x080B1E94
_0801CC2C: .4byte 0x080B3E94
_0801CC30: .4byte 0x080B48B4
_0801CC34: .4byte 0x02018400
_0801CC38: .4byte 0x02024228
_0801CC3C: .4byte gUnk2024238
_0801CC40: .4byte 0x02024230
_0801CC44: .4byte 0x080B68D4
_0801CC48: .4byte 0x00002C10
_0801CC4C: .4byte 0x0000080E

	THUMB_FUNC_START sub_801CC50
sub_801CC50: @ 0x0801CC50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r5, _0801CD08
	movs r6, #0
	ldr r0, _0801CD0C
	mov r8, r0
	adds r7, r5, #0
	ldr r1, _0801CD10
	adds r1, #4
	mov ip, r1
	movs r2, #0x11
	rsbs r2, r2, #0
	mov sl, r2
	movs r3, #0x21
	rsbs r3, r3, #0
	mov sb, r3
_0801CC78:
	mov r0, r8
	ldr r4, [r0]
	ldrb r0, [r4, #7]
	lsls r2, r0, #3
	ldr r1, _0801CD10
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	cmp r6, r0
	bhs _0801CD1C
	lsls r3, r6, #3
	adds r0, r3, r7
	str r0, [sp]
	mov r1, ip
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, r3, r0
	ldrh r0, [r0]
	ldr r2, [sp]
	strh r0, [r2]
	lsls r2, r6, #2
	adds r1, r2, #1
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrb r0, [r4, #7]
	lsls r0, r0, #3
	add r0, ip
	ldr r0, [r0]
	adds r0, r3, r0
	ldrh r0, [r0, #2]
	strh r0, [r1]
	adds r2, #2
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrb r0, [r4, #7]
	lsls r0, r0, #3
	add r0, ip
	ldr r0, [r0]
	adds r3, r3, r0
	ldrh r0, [r3, #4]
	strh r0, [r2]
	ldrb r0, [r4, #4]
	ldrb r3, [r5]
	adds r0, r0, r3
	strb r0, [r5]
	ldrh r2, [r5, #2]
	lsls r1, r2, #0x17
	ldr r3, _0801CD0C
	ldr r0, [r3]
	lsrs r1, r1, #0x17
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r3, _0801CD14
	adds r0, r3, #0
	ands r1, r0
	ldr r0, _0801CD18
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #2]
	ldrb r1, [r5, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r2, #4
	orrs r0, r2
	strb r0, [r5, #1]
	ldrb r1, [r5, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #5]
	b _0801CDCC
	.align 2, 0
_0801CD08: .4byte 0x02018400
_0801CD0C: .4byte 0x08E00AA0
_0801CD10: .4byte 0x080B0E44
_0801CD14: .4byte 0x000001FF
_0801CD18: .4byte 0xFFFFFE00
_0801CD1C:
	cmp r6, r0
	bne _0801CDAC
	ldrb r0, [r4, #5]
	strb r0, [r5]
	ldrb r0, [r5, #1]
	movs r1, #3
	orrs r0, r1
	movs r3, #0xd
	rsbs r3, r3, #0
	ands r0, r3
	movs r4, #4
	orrs r0, r4
	mov r1, sl
	ands r0, r1
	mov r2, sb
	ands r0, r2
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r5, #1]
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	ldr r2, _0801CD8C
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r5, #2]
	ldr r0, _0801CD90
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #2]
	ldrb r1, [r5, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sl
	ands r0, r1
	mov r2, sb
	ands r0, r2
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r5, #3]
	ldrh r1, [r5, #4]
	ldr r0, _0801CD94
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r5, #4]
	ldrb r1, [r5, #5]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0801CD98
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r4
	b _0801CD9C
	.align 2, 0
_0801CD8C: .4byte 0x000001FF
_0801CD90: .4byte 0xFFFFFE00
_0801CD94: .4byte 0xFFFFFC00
_0801CD98:
	adds r0, r3, #0
	ands r0, r1
_0801CD9C:
	strb r0, [r5, #5]
	ldrb r0, [r5, #5]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r5, #5]
	b _0801CDCC
_0801CDAC:
	lsls r0, r6, #3
	adds r0, r0, r7
	movs r1, #0xa0
	strh r1, [r0]
	lsls r2, r6, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0xf0
	strh r1, [r0]
	adds r2, #2
	lsls r2, r2, #1
	adds r2, r2, r7
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r2]
_0801CDCC:
	adds r5, #8
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r0, #0
	blt _0801CDDA
	b _0801CC78
_0801CDDA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CDEC
sub_801CDEC: @ 0x0801CDEC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_801CB24
	ldr r0, _0801CE38
	bl sub_80081DC
	bl sub_8008220
	bl sub_801CE6C
	movs r0, #0x45
	bl sub_8034F60
_0801CE0A:
	bl sub_801CC50
	ldr r0, _0801CE3C
	bl sub_80081DC
	bl sub_8008220
	bl sub_801CAC0
	bl sub_801CE44
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801CE0A
	bl sub_0801CE68
	ldr r0, _0801CE40
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0801CE38: .4byte 0x0801CE79
_0801CE3C: .4byte 0x0801CE9D
_0801CE40: .4byte 0x0801CEA9

	THUMB_FUNC_START sub_801CE44
sub_801CE44: @ 0x0801CE44
	ldr r1, _0801CE5C
	ldr r0, _0801CE60
	ldr r0, [r0]
	ldrb r0, [r0, #7]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801CE64
	movs r0, #1
	b _0801CE66
	.align 2, 0
_0801CE5C: .4byte 0x080B0E44
_0801CE60: .4byte 0x08E00AA0
_0801CE64:
	movs r0, #0
_0801CE66:
	bx lr

	THUMB_FUNC_START sub_0801CE68
sub_0801CE68: @ 0x0801CE68
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CE6C
sub_801CE6C: @ 0x0801CE6C
	push {lr}
	bl sub_80456AC
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CE78
sub_801CE78: @ 0x0801CE78
	push {lr}
	bl LoadOam
	bl sub_80454E0
	bl sub_804549C
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CE9C
sub_801CE9C: @ 0x0801CE9C
	push {lr}
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801CEA8
sub_801CEA8: @ 0x0801CEA8
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801CEB8
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0801CEB8: .4byte 0x0000EFFF

	THUMB_FUNC_START sub_801CEBC
sub_801CEBC: @ 0x0801CEBC
	push {r4, lr}
	sub sp, #0xc
	ldr r0, _0801CEFC
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801CEF0
	mov r0, sp
	bl sub_80240BC
	mov r1, sp
	movs r0, #0x18
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_802408C
	ldr r1, _0801CF00
	movs r0, #5
	strb r0, [r1]
	bl sub_8024548
	ldr r4, _0801CF04
_0801CEE6:
	bl sub_8024354
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801CEE6
_0801CEF0:
	bl sub_801CF08
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801CEFC: .4byte gUnk20241FC
_0801CF00: .4byte g2021D98
_0801CF04: .4byte 0x03000C6C

	THUMB_FUNC_START sub_801CF08
sub_801CF08: @ 0x0801CF08
	push {lr}
	ldr r1, _0801CF28
	ldrb r0, [r1, #0xa]
	cmp r0, #0xa
	bhi _0801CF24
	ldr r0, _0801CF2C
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	bl sub_8022080
_0801CF24:
	pop {r0}
	bx r0
	.align 2, 0
_0801CF28: .4byte gUnk_02021C10
_0801CF2C: .4byte 0x08E00AA4
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_801CF38
sub_801CF38: @ 0x0801CF38
	push {r4, lr}
	movs r0, #0x41
	bl sub_8034F60
	ldr r4, _0801CF68
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_8041CCC
	ldrh r0, [r4]
	bl SetCardInfo
	ldr r1, _0801CF6C
	ldr r0, _0801CF70
	ldrb r0, [r0, #0x1a]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_8034F60
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801CF68: .4byte gUnk_02021C10
_0801CF6C: .4byte 0x089DC020
_0801CF70: .4byte gCardInfo

	THUMB_FUNC_START sub_801CF74
sub_801CF74: @ 0x0801CF74
	push {r4, lr}
	movs r0, #0x40
	bl sub_8034F60
	ldr r4, _0801CFA4
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_8041CCC
	ldrh r0, [r4]
	bl SetCardInfo
	ldr r1, _0801CFA8
	ldr r0, _0801CFAC
	ldrb r0, [r0, #0x1b]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_8034F60
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801CFA4: .4byte gUnk_02021C10
_0801CFA8: .4byte 0x089DC14C
_0801CFAC: .4byte gCardInfo

	THUMB_FUNC_START sub_801CFB0
sub_801CFB0: @ 0x0801CFB0
	push {r4, lr}
	movs r0, #0x42
	bl sub_8034F60
	ldr r4, _0801CFE0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_8041CCC
	ldrh r0, [r4]
	bl SetCardInfo
	ldr r1, _0801CFE4
	ldr r0, _0801CFE8
	ldrb r0, [r0, #0x1a]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_8034F60
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801CFE0: .4byte gUnk_02021C10
_0801CFE4: .4byte 0x089DC020
_0801CFE8: .4byte gCardInfo

	THUMB_FUNC_START sub_801CFEC
sub_801CFEC: @ 0x0801CFEC
	push {lr}
	movs r0, #0x42
	bl sub_8034F60
	ldr r1, _0801D004
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	bl sub_8041D14
	pop {r0}
	bx r0
	.align 2, 0
_0801D004: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_801D008
sub_801D008: @ 0x0801D008
	push {r4, lr}
	sub sp, #4
	movs r0, #4
	bl sub_8035020
	movs r0, #0x52
	bl sub_8034F60
	ldr r1, _0801D03C
	ldr r3, _0801D040
	ldrh r0, [r3, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r3, #2]
	ldrh r2, [r3, #4]
	ldrh r3, [r3, #6]
	movs r4, #0
	str r4, [sp]
	bl sub_8041C94
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D03C: .4byte 0x08FA2BAC
_0801D040: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_801D044
sub_801D044: @ 0x0801D044
	push {r4, lr}
	sub sp, #4
	movs r0, #4
	bl sub_8035020
	movs r0, #0x52
	bl sub_8034F60
	ldr r1, _0801D078
	ldr r3, _0801D07C
	ldrh r0, [r3, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r3, #2]
	ldrh r2, [r3, #4]
	ldrh r3, [r3, #6]
	movs r4, #0
	str r4, [sp]
	bl sub_8041C94
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D078: .4byte 0x08FA2BAC
_0801D07C: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_801D080
sub_801D080: @ 0x0801D080
	push {r4, lr}
	sub sp, #4
	ldr r1, _0801D0A8
	ldr r3, _0801D0AC
	ldrh r0, [r3, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r3, #2]
	ldrh r2, [r3, #4]
	ldrh r3, [r3, #6]
	movs r4, #0
	str r4, [sp]
	bl sub_8041C94
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D0A8: .4byte 0x08FA2BAC
_0801D0AC: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_801D0B0
sub_801D0B0: @ 0x0801D0B0
	push {r4, lr}
	sub sp, #4
	movs r0, #0x41
	bl sub_8034F60
	ldr r2, _0801D0F0
	ldr r4, _0801D0F4
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r2, [r4, #2]
	movs r3, #0
	str r3, [sp]
	bl sub_8041C94
	ldrh r0, [r4]
	bl SetCardInfo
	ldr r1, _0801D0F8
	ldr r0, _0801D0FC
	ldrb r0, [r0, #0x1e]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_8034F60
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D0F0: .4byte 0x08F9E35C
_0801D0F4: .4byte gUnk_02021C10
_0801D0F8: .4byte 0x089DC23C
_0801D0FC: .4byte gCardInfo

	THUMB_FUNC_START sub_801D100
sub_801D100: @ 0x0801D100
	push {r4, lr}
	sub sp, #4
	movs r0, #0x41
	bl sub_8034F60
	ldr r2, _0801D140
	ldr r4, _0801D144
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r2, [r4, #2]
	movs r3, #0
	str r3, [sp]
	bl sub_8041C94
	ldrh r0, [r4]
	bl SetCardInfo
	ldr r1, _0801D148
	ldr r0, _0801D14C
	ldrb r0, [r0, #0x1e]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_8034F60
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D140: .4byte 0x08FA0964
_0801D144: .4byte gUnk_02021C10
_0801D148: .4byte 0x089DC2DC
_0801D14C: .4byte gCardInfo

	THUMB_FUNC_START sub_801D150
sub_801D150: @ 0x0801D150
	push {lr}
	sub sp, #4
	movs r0, #0x41
	bl sub_8034F60
	ldr r1, _0801D180
	ldr r2, _0801D184
	ldrh r0, [r2, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	movs r3, #0
	str r3, [sp]
	bl sub_8041C94
	movs r0, #0x5a
	bl sub_8034F60
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0801D180: .4byte 0x08FA2BAC
_0801D184: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_801D188
sub_801D188: @ 0x0801D188
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xa
	bhi _0801D19C
	ldr r0, _0801D198
	strb r1, [r0, #0xa]
	b _0801D1A2
	.align 2, 0
_0801D198: .4byte gUnk_02021C10
_0801D19C:
	ldr r1, _0801D1A4
	movs r0, #0
	strb r0, [r1, #0xa]
_0801D1A2:
	bx lr
	.align 2, 0
_0801D1A4: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_801D1A8
sub_801D1A8: @ 0x0801D1A8
	ldr r0, _0801D1BC
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strb r2, [r0, #0xa]
	bx lr
	.align 2, 0
_0801D1BC: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_801D1C0
sub_801D1C0: @ 0x0801D1C0
	push {r4, lr}
	movs r4, #1
	bl sub_801D3FC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801D2CC
	bl sub_801D414
	bl sub_801D420
_0801D1D8:
	bl sub_801D2D4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #8
	beq _0801D25E
	cmp r1, #8
	bgt _0801D1FA
	cmp r1, #1
	beq _0801D248
	cmp r1, #1
	ble _0801D290
	cmp r1, #2
	beq _0801D254
	cmp r1, #4
	beq _0801D274
	b _0801D290
_0801D1FA:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0801D226
	cmp r1, r0
	bgt _0801D210
	cmp r1, #0x40
	beq _0801D220
	cmp r1, #0x80
	beq _0801D22C
	b _0801D290
_0801D210:
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0801D232
	adds r0, #0x80
	cmp r1, r0
	beq _0801D238
	b _0801D290
_0801D220:
	bl sub_801D444
	b _0801D23C
_0801D226:
	bl sub_801D490
	b _0801D23C
_0801D22C:
	bl sub_801D458
	b _0801D23C
_0801D232:
	bl sub_801D4A4
	b _0801D23C
_0801D238:
	bl sub_801D46C
_0801D23C:
	bl sub_801F5FC
	movs r0, #4
	bl sub_801F4A0
	b _0801D2A0
_0801D248:
	bl sub_801D4B8
	movs r0, #7
	bl sub_801F4A0
	b _0801D2A0
_0801D254:
	movs r4, #0
	movs r0, #0x38
	bl sub_8034F60
	b _0801D2A0
_0801D25E:
	bl sub_801F120
	movs r0, #7
	bl sub_801EF30
	movs r0, #9
	bl sub_801F4A0
	bl sub_801F644
	b _0801D2A0
_0801D274:
	bl sub_801D480
	movs r0, #6
	bl sub_801EF30
	movs r0, #0x37
	bl sub_8034F60
	movs r0, #8
	bl sub_801F4A0
	bl sub_801F630
	b _0801D2A0
_0801D290:
	movs r0, #5
	bl sub_801EF30
	bl sub_0801F62C
	movs r0, #5
	bl sub_801F4A0
_0801D2A0:
	bl sub_801D3FC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D2AC
	movs r4, #0
_0801D2AC:
	cmp r4, #0
	bne _0801D1D8
	movs r0, #8
	bl sub_801DA7C
	movs r0, #1
	bl sub_801EF30
	movs r0, #9
	bl sub_8008F88
	bl sub_0801F5EC
	movs r0, #2
	bl sub_801F4A0
_0801D2CC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D2D4
sub_801D2D4: @ 0x0801D2D4
	push {r4, r5, lr}
	movs r4, #0
	bl sub_802612C
	movs r2, #1
	movs r1, #0
	ldr r0, _0801D35C
	ldrh r3, [r0]
_0801D2E4:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0801D2EE
	adds r4, r0, #0
_0801D2EE:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _0801D2E4
	movs r2, #0x10
	movs r1, #0
	ldr r5, _0801D360
	ldrh r3, [r5]
_0801D304:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0801D30E
	adds r4, r0, #0
_0801D30E:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0801D304
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801D338
	ldr r0, _0801D364
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801D338
	movs r4, #0xa0
	lsls r4, r4, #1
_0801D338:
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801D354
	ldr r0, _0801D364
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801D354
	movs r4, #0xc0
	lsls r4, r4, #1
_0801D354:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801D35C: .4byte gUnk2020DFC
_0801D360: .4byte gUnk2021DCC
_0801D364: .4byte gKeyState

	THUMB_FUNC_START sub_801D368
sub_801D368: @ 0x0801D368
	push {r4, r5, lr}
	movs r4, #0
	bl sub_802612C
	movs r2, #1
	movs r1, #0
	ldr r0, _0801D3F0
	ldrh r3, [r0]
_0801D378:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0801D382
	adds r4, r0, #0
_0801D382:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _0801D378
	movs r2, #0x10
	movs r1, #0
	ldr r5, _0801D3F4
	ldrh r3, [r5]
_0801D398:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0801D3A2
	adds r4, r0, #0
_0801D3A2:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0801D398
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801D3CC
	ldr r0, _0801D3F8
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801D3CC
	movs r4, #0xa0
	lsls r4, r4, #1
_0801D3CC:
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801D3E8
	ldr r0, _0801D3F8
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801D3E8
	movs r4, #0xc0
	lsls r4, r4, #1
_0801D3E8:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801D3F0: .4byte gUnk2020DFC
_0801D3F4: .4byte 0x02020DF4
_0801D3F8: .4byte gKeyState

	THUMB_FUNC_START sub_801D3FC
sub_801D3FC: @ 0x0801D3FC
	push {lr}
	bl GetDeckSize
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D414
sub_801D414: @ 0x0801D414
	push {lr}
	bl sub_801DE10
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D420
sub_801D420: @ 0x0801D420
	push {lr}
	movs r0, #0
	bl sub_801EF30
	movs r0, #2
	bl sub_801EF30
	movs r0, #1
	bl sub_801F4A0
	bl sub_801F5F0
	movs r0, #3
	bl sub_801F4A0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D444
sub_801D444: @ 0x0801D444
	push {lr}
	movs r0, #3
	bl sub_801DA7C
	movs r0, #3
	bl sub_801EF30
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D458
sub_801D458: @ 0x0801D458
	push {lr}
	movs r0, #2
	bl sub_801DA7C
	movs r0, #3
	bl sub_801EF30
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D46C
sub_801D46C: @ 0x0801D46C
	push {lr}
	movs r0, #6
	bl sub_801DA7C
	movs r0, #4
	bl sub_801EF30
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D480
sub_801D480: @ 0x0801D480
	push {lr}
	bl sub_801D918
	movs r0, #6
	bl sub_801EF30
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801D490
sub_801D490: @ 0x0801D490
	push {lr}
	movs r0, #5
	bl sub_801DA7C
	movs r0, #3
	bl sub_801EF30
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D4A4
sub_801D4A4: @ 0x0801D4A4
	push {lr}
	movs r0, #4
	bl sub_801DA7C
	movs r0, #3
	bl sub_801EF30
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D4B8
sub_801D4B8: @ 0x0801D4B8
	push {r4, lr}
	ldr r0, _0801D4F0
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x37
	bl sub_8034F60
	bl sub_801DE5C
	bl sub_801D61C
	bl sub_8045658
	ldr r0, _0801D4F4
	bl sub_80081DC
	bl sub_8008220
	movs r4, #1
_0801D4DE:
	bl sub_801D368
	cmp r0, #2
	beq _0801D52C
	cmp r0, #2
	bgt _0801D4F8
	cmp r0, #1
	beq _0801D50E
	b _0801D536
	.align 2, 0
_0801D4F0: .4byte 0x0201CB50
_0801D4F4: .4byte 0x0801D68D
_0801D4F8:
	cmp r0, #0x40
	beq _0801D502
	cmp r0, #0x80
	beq _0801D508
	b _0801D536
_0801D502:
	bl sub_801D548
	b _0801D53A
_0801D508:
	bl sub_801D57C
	b _0801D53A
_0801D50E:
	ldr r0, _0801D51C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D520
	cmp r0, #1
	beq _0801D526
	b _0801D53A
	.align 2, 0
_0801D51C: .4byte 0x0201CB50
_0801D520:
	bl sub_801D5B0
	b _0801D53A
_0801D526:
	bl sub_801D600
	b _0801D53E
_0801D52C:
	movs r4, #0
	movs r0, #0x38
	bl sub_8034F60
	b _0801D53A
_0801D536:
	bl sub_8008220
_0801D53A:
	cmp r4, #0
	bne _0801D4DE
_0801D53E:
	bl sub_801D678
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801D548
sub_801D548: @ 0x0801D548
	push {lr}
	ldr r2, _0801D570
	ldr r1, _0801D574
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	bl sub_801D61C
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0801D578
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0801D570: .4byte 0x0201CB50
_0801D574: .4byte 0x08E00AD4
_0801D578: .4byte 0x080454C9

	THUMB_FUNC_START sub_801D57C
sub_801D57C: @ 0x0801D57C
	push {lr}
	ldr r2, _0801D5A4
	ldr r1, _0801D5A8
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	bl sub_801D61C
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0801D5AC
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0801D5A4: .4byte 0x0201CB50
_0801D5A8: .4byte 0x08E00AD6
_0801D5AC: .4byte 0x080454C9

	THUMB_FUNC_START sub_801D5B0
sub_801D5B0: @ 0x0801D5B0
	push {lr}
	movs r0, #2
	bl sub_801DAF8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #0x37
	bl sub_8034F60
	bl sub_801F6B0
	movs r0, #0
	bl sub_801EF30
	movs r0, #2
	bl sub_801EF30
	movs r0, #1
	bl sub_801F4A0
	bl sub_801F5F0
	bl sub_801DE5C
	bl sub_801D61C
	ldr r0, _0801D5FC
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045658
	pop {r0}
	bx r0
	.align 2, 0
_0801D5FC: .4byte 0x0801D68D

	THUMB_FUNC_START sub_801D600
sub_801D600: @ 0x0801D600
	push {lr}
	movs r0, #7
	bl sub_801DA7C
	movs r0, #3
	bl sub_801EF30
	bl sub_801F614
	movs r0, #6
	bl sub_801F4A0
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801D61C
sub_801D61C: @ 0x0801D61C
	push {r4, r5, lr}
	ldr r3, _0801D660
	ldr r2, _0801D664
	ldr r5, _0801D668
	ldrb r0, [r5]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _0801D66C
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _0801D670
	str r0, [r3, #4]
	ldrb r0, [r5]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _0801D674
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D660: .4byte 0x02018430
_0801D664: .4byte 0x08E00AD8
_0801D668: .4byte 0x0201CB50
_0801D66C: .4byte 0x08E00ADB
_0801D670: .4byte 0x0000C120
_0801D674: .4byte 0x40000800

	THUMB_FUNC_START sub_801D678
sub_801D678: @ 0x0801D678
	ldr r1, _0801D688
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0801D688: .4byte 0x02018430

	THUMB_FUNC_START sub_801D68C
sub_801D68C: @ 0x0801D68C
	push {lr}
	bl sub_80454E0
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
	ldr r2, _0801D6BC
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0801D6BC: .4byte 0x04000050

	THUMB_FUNC_START sub_801D6C0
sub_801D6C0: @ 0x0801D6C0
	ldr r1, _0801D6CC
	movs r0, #0xc8
	lsls r0, r0, #3
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D6CC: .4byte gDeckCapacity

	THUMB_FUNC_START sub_801D6D0
sub_801D6D0: @ 0x0801D6D0
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _0801D6E4
	ldr r1, [r2]
	ldr r4, _0801D6E8
	subs r0, r4, r1
	cmp r3, r0
	bls _0801D6EC
	str r4, [r2]
	b _0801D6F0
	.align 2, 0
_0801D6E4: .4byte gDeckCapacity
_0801D6E8: .4byte 0x0000FDE8
_0801D6EC:
	adds r0, r1, r3
	str r0, [r2]
_0801D6F0:
	bl sub_801D73C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x01, 0x1C, 0x03, 0x4A
	.byte 0x10, 0x68, 0x81, 0x42, 0x04, 0xD9, 0x00, 0x20, 0x03, 0xE0, 0x00, 0x00, 0x1C, 0x1C, 0x02, 0x02
	.byte 0x40, 0x1A, 0x10, 0x60, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START GetDeckCapacity
GetDeckCapacity: @ 0x0801D718
	ldr r0, _0801D720
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0801D720: .4byte gDeckCapacity

	THUMB_FUNC_START sub_801D724
sub_801D724: @ 0x0801D724
	ldr r1, _0801D72C
	movs r0, #0x48
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D72C: .4byte gDuelistLevel

	THUMB_FUNC_START GetDuelistLevel
GetDuelistLevel: @ 0x0801D730
	ldr r0, _0801D738
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0801D738: .4byte gDuelistLevel

	THUMB_FUNC_START sub_801D73C
sub_801D73C: @ 0x0801D73C
	push {r4, lr}
	ldr r4, _0801D744
	b _0801D74E
	.align 2, 0
_0801D744: .4byte gDuelistLevel
_0801D748:
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
_0801D74E:
	bl sub_801D760
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D748
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801D760
sub_801D760: @ 0x0801D760
	ldr r0, _0801D78C
	ldr r2, [r0]
	ldr r0, _0801D790
	cmp r2, r0
	bhi _0801D7A0
	ldr r1, _0801D794
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, _0801D798
	ldr r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	blo _0801D7A0
	ldr r0, _0801D79C
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	movs r0, #1
	b _0801D7A2
	.align 2, 0
_0801D78C: .4byte gDuelistLevel
_0801D790: .4byte 0x000003E6
_0801D794: .4byte 0x080B8974
_0801D798: .4byte gDeckCapacity
_0801D79C: .4byte 0x02021D10
_0801D7A0:
	movs r0, #0
_0801D7A2:
	bx lr
	.byte 0x10, 0xB5, 0x00, 0x22, 0x07, 0x4C, 0x08, 0x4B, 0x50, 0x00, 0x01, 0x19
	.byte 0xC0, 0x18, 0x00, 0x88, 0x08, 0x80, 0x50, 0x1C, 0x00, 0x06, 0x02, 0x0E, 0x27, 0x2A, 0xF5, 0xD9
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x44, 0x41, 0x02, 0x02, 0x44, 0x91, 0x0B, 0x08

	THUMB_FUNC_START sub_801D7D0
sub_801D7D0: @ 0x0801D7D0
	push {r4, r5, lr}
	movs r0, #2
	bl sub_801DAF8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0801D7E8
	movs r0, #0x39
	bl sub_8034F60
	b _0801D868
_0801D7E8:
	adds r0, r4, #0
	bl SetCardInfo
	adds r0, r4, #0
	bl sub_8009098
	ldr r4, _0801D81C
	ldrb r0, [r4, #4]
	bl sub_801DD88
	movs r2, #4
	ldrsb r2, [r4, r2]
	ldrb r0, [r4, #8]
	cmp r2, r0
	blt _0801D85A
	ldrb r1, [r4, #4]
	subs r0, r1, r0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, #0
	beq _0801D82C
	cmp r0, r2
	bgt _0801D820
	subs r0, r1, r0
	b _0801D822
	.align 2, 0
_0801D81C: .4byte gDeck
_0801D820:
	movs r0, #0
_0801D822:
	strb r0, [r4, #4]
	movs r0, #0x36
	bl sub_8034F60
	b _0801D85A
_0801D82C:
	bl GetDeckSize
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801D85A
	movs r0, #0x39
	bl sub_8034F60
	ldr r2, _0801D870
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801D85A
	adds r4, r2, #0
	movs r5, #0x40
_0801D84C:
	bl sub_8008220
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0801D84C
_0801D85A:
	ldr r0, _0801D874
	ldr r0, [r0, #0xc]
	bl sub_801DD34
	movs r0, #0x37
	bl sub_8034F60
_0801D868:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D870: .4byte gKeyState
_0801D874: .4byte gCardInfo

	THUMB_FUNC_START sub_801D878
sub_801D878: @ 0x0801D878
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r6, #0
	adds r0, r4, #0
	bl SetCardInfo
	adds r0, r4, #0
	bl sub_801DD50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _0801D8C8
	ldrb r1, [r4, #8]
	cmp r0, r1
	bhs _0801D8A8
	bl sub_801DD88
	ldr r0, _0801D8CC
	ldr r0, [r0, #0xc]
	bl sub_801DD34
	movs r6, #1
_0801D8A8:
	movs r2, #4
	ldrsb r2, [r4, r2]
	ldrb r0, [r4, #8]
	cmp r2, r0
	blt _0801D90A
	ldrb r1, [r4, #4]
	subs r0, r1, r0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, #0
	beq _0801D8DC
	cmp r0, r2
	bgt _0801D8D0
	subs r0, r1, r0
	b _0801D8D2
	.align 2, 0
_0801D8C8: .4byte gDeck
_0801D8CC: .4byte gCardInfo
_0801D8D0:
	movs r0, #0
_0801D8D2:
	strb r0, [r4, #4]
	movs r0, #0x36
	bl sub_8034F60
	b _0801D90A
_0801D8DC:
	bl GetDeckSize
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801D90A
	movs r0, #0x39
	bl sub_8034F60
	ldr r2, _0801D914
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801D90A
	adds r4, r2, #0
	movs r5, #0x40
_0801D8FC:
	bl sub_8008220
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0801D8FC
_0801D90A:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801D914: .4byte gKeyState

	THUMB_FUNC_START sub_801D918
sub_801D918: @ 0x0801D918
	push {r4, r5, lr}
	ldr r5, _0801D954
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0801D92E
	movs r0, #0
	strb r0, [r5, #5]
_0801D92E:
	ldrb r1, [r5, #5]
	ldr r2, _0801D958
	adds r0, r5, #0
	adds r0, #0xa
	str r0, [r2]
	ldrb r0, [r5, #8]
	movs r4, #0
	strh r0, [r2, #8]
	ldr r0, _0801D95C
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #0xa]
	bl sub_8034A38
	strb r4, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D954: .4byte gDeck
_0801D958: .4byte gUnk2022EB0
_0801D95C: .4byte 0x08E00AE0

	THUMB_FUNC_START sub_801D960
sub_801D960: @ 0x0801D960
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r3, #0
	ldr r0, _0801D994
	movs r4, #0
	adds r1, r0, #0
	adds r1, #0xa
_0801D970:
	ldrh r0, [r1]
	cmp r0, r2
	bne _0801D978
	strh r4, [r1]
_0801D978:
	adds r1, #2
	adds r3, #1
	cmp r3, #0x27
	bls _0801D970
	movs r3, #0
	movs r5, #0x27
	ldr r6, _0801D998
_0801D986:
	lsls r0, r3, #1
	adds r4, r0, r6
	ldrh r2, [r4]
	cmp r2, #0
	beq _0801D99C
	adds r3, #1
	b _0801D9AE
	.align 2, 0
_0801D994: .4byte gDeck
_0801D998: .4byte gDeck+0xA
_0801D99C:
	lsls r0, r5, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	cmp r1, #0
	beq _0801D9AC
	strh r1, [r4]
	strh r2, [r0]
	adds r3, #1
_0801D9AC:
	subs r5, #1
_0801D9AE:
	cmp r3, r5
	blo _0801D986
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801D9B8
sub_801D9B8: @ 0x0801D9B8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0
	ldr r1, _0801D9D0
	ldrh r0, [r1, #0xa]
	adds r2, r1, #0
	cmp r0, r4
	bne _0801D9D4
	strh r3, [r2, #0xa]
	b _0801D9EC
	.align 2, 0
_0801D9D0: .4byte gDeck
_0801D9D4:
	adds r3, #1
	cmp r3, #0x27
	bhi _0801D9EC
	lsls r0, r3, #1
	adds r1, r2, #0
	adds r1, #0xa
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, r4
	bne _0801D9D4
	movs r0, #0
	strh r0, [r1]
_0801D9EC:
	movs r3, #0
	movs r5, #0x27
	ldr r6, _0801DA00
_0801D9F2:
	lsls r0, r3, #1
	adds r4, r0, r6
	ldrh r2, [r4]
	cmp r2, #0
	beq _0801DA04
	adds r3, #1
	b _0801DA16
	.align 2, 0
_0801DA00: .4byte gDeck+0xA
_0801DA04:
	lsls r0, r5, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	cmp r1, #0
	beq _0801DA14
	strh r1, [r4]
	strh r2, [r0]
	adds r3, #1
_0801DA14:
	subs r5, #1
_0801DA16:
	cmp r3, r5
	blo _0801D9F2
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801DA20
sub_801DA20: @ 0x0801DA20
	push {lr}
	ldr r2, _0801DA54
	movs r1, #0
	strb r1, [r2, #5]
	strb r1, [r2, #4]
	movs r0, #1
	strb r0, [r2, #6]
	strb r1, [r2, #8]
	movs r3, #0
	adds r1, r2, #0
	adds r1, #0xa
_0801DA36:
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801DA42
	ldrb r0, [r2, #8]
	adds r0, #1
	strb r0, [r2, #8]
_0801DA42:
	adds r1, #2
	adds r3, #1
	cmp r3, #0x27
	bls _0801DA36
	bl sub_801DCF0
	pop {r0}
	bx r0
	.align 2, 0
_0801DA54: .4byte gDeck

	THUMB_FUNC_START sub_801DA58
sub_801DA58: @ 0x0801DA58
	movs r3, #0
	ldr r0, _0801DA74
	ldr r2, _0801DA78
	adds r1, r0, #0
	adds r1, #0xa
_0801DA62:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0x27
	bls _0801DA62
	bx lr
	.align 2, 0
_0801DA74: .4byte gDeck
_0801DA78: .4byte 0x080F3180

	THUMB_FUNC_START sub_801DA7C
sub_801DA7C: @ 0x0801DA7C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _0801DAF4
	lsls r0, r0, #2
	ldr r1, _0801DA90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801DA90: .4byte 0x0801DA94
_0801DA94: @ jump table
	.4byte _0801DAB8 @ case 0
	.4byte _0801DABE @ case 1
	.4byte _0801DAC4 @ case 2
	.4byte _0801DACC @ case 3
	.4byte _0801DAD4 @ case 4
	.4byte _0801DADC @ case 5
	.4byte _0801DAE4 @ case 6
	.4byte _0801DAEA @ case 7
	.4byte _0801DAF0 @ case 8
_0801DAB8:
	bl sub_801DA58
	b _0801DAF4
_0801DABE:
	bl sub_801DA20
	b _0801DAF4
_0801DAC4:
	movs r0, #1
	bl sub_801DC04
	b _0801DAF4
_0801DACC:
	movs r0, #1
	bl sub_801DC64
	b _0801DAF4
_0801DAD4:
	movs r0, #0xa
	bl sub_801DC04
	b _0801DAF4
_0801DADC:
	movs r0, #0xa
	bl sub_801DC64
	b _0801DAF4
_0801DAE4:
	bl sub_801DCC8
	b _0801DAF4
_0801DAEA:
	bl sub_801D7D0
	b _0801DAF4
_0801DAF0:
	bl sub_0801DCEC
_0801DAF4:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_801DAF8
sub_801DAF8: @ 0x0801DAF8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0801DB14
	movs r1, #4
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	subs r0, r1, #2
	cmp r0, #0
	blt _0801DB0E
	cmp r0, #0x27
	ble _0801DB18
_0801DB0E:
	movs r0, #0
	b _0801DB22
	.align 2, 0
_0801DB14: .4byte gDeck
_0801DB18:
	lsls r0, r0, #1
	adds r1, r2, #0
	adds r1, #0xa
	adds r0, r0, r1
	ldrh r0, [r0]
_0801DB22:
	bx lr

	THUMB_FUNC_START sub_801DB24
sub_801DB24: @ 0x0801DB24
	ldr r0, _0801DB2C
	ldrb r0, [r0, #6]
	bx lr
	.align 2, 0
_0801DB2C: .4byte gDeck

	THUMB_FUNC_START sub_801DB30
sub_801DB30: @ 0x0801DB30
	ldr r2, _0801DB44
	ldr r1, _0801DB48
	movs r0, #4
	ldrsb r0, [r1, r0]
	strh r0, [r2]
	ldrb r0, [r1, #8]
	subs r0, #1
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0801DB44: .4byte 0x02021AB4
_0801DB48: .4byte gDeck

	THUMB_FUNC_START GetDeckSize
GetDeckSize: @ 0x0801DB4C
	ldr r0, _0801DB54
	ldrb r0, [r0, #8]
	bx lr
	.align 2, 0
_0801DB54: .4byte gDeck

	THUMB_FUNC_START GetDeckCost
GetDeckCost: @ 0x0801DB58
	ldr r0, _0801DB60
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0801DB60: .4byte gDeck

	THUMB_FUNC_START sub_801DB64
sub_801DB64: @ 0x0801DB64
	push {lr}
	ldr r3, _0801DB84
	ldrb r1, [r3, #8]
	lsls r1, r1, #1
	adds r2, r3, #0
	adds r2, #0xa
	adds r1, r1, r2
	strh r0, [r1]
	ldrb r0, [r3, #8]
	adds r0, #1
	strb r0, [r3, #8]
	bl sub_801DCF0
	pop {r0}
	bx r0
	.align 2, 0
_0801DB84: .4byte gDeck

	THUMB_FUNC_START GetDeckCardQty
GetDeckCardQty: @ 0x0801DB88
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0
	movs r1, #0
	ldr r4, _0801DBB8
_0801DB94:
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, r3
	bne _0801DBA4
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0801DBA4:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x27
	bls _0801DB94
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801DBB8: .4byte gDeck+0xA

	THUMB_FUNC_START sub_801DBBC
sub_801DBBC: @ 0x0801DBBC
	movs r1, #0
	ldr r2, _0801DBD0
_0801DBC0:
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801DBD4
	movs r0, #0
	b _0801DBE0
	.align 2, 0
_0801DBD0: .4byte gDeck+0xA
_0801DBD4:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x27
	bls _0801DBC0
	movs r0, #1
_0801DBE0:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801DBE4
sub_801DBE4: @ 0x0801DBE4
	push {lr}
	bl GetDeckCapacity
	ldr r1, _0801DBF8
	ldr r1, [r1]
	cmp r0, r1
	blo _0801DBFC
	movs r0, #1
	b _0801DBFE
	.align 2, 0
_0801DBF8: .4byte gDeck
_0801DBFC:
	movs r0, #0
_0801DBFE:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801DC04
sub_801DC04: @ 0x0801DC04
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, _0801DC28
	movs r1, #4
	ldrsb r1, [r2, r1]
	ldrb r0, [r2, #8]
	subs r3, r0, #1
	cmp r1, r3
	beq _0801DC36
	subs r0, r0, r1
	cmp r4, r0
	bge _0801DC2C
	ldrb r0, [r2, #4]
	adds r0, r4, r0
	strb r0, [r2, #4]
	b _0801DC2E
	.align 2, 0
_0801DC28: .4byte gDeck
_0801DC2C:
	strb r3, [r2, #4]
_0801DC2E:
	movs r0, #0x36
	bl sub_8034F60
	b _0801DC5A
_0801DC36:
	movs r0, #0x39
	bl sub_8034F60
	ldr r2, _0801DC60
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801DC5A
	adds r4, r2, #0
	movs r5, #0x80
_0801DC4C:
	bl sub_8008220
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0801DC4C
_0801DC5A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DC60: .4byte gKeyState

	THUMB_FUNC_START sub_801DC64
sub_801DC64: @ 0x0801DC64
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _0801DC80
	ldrb r3, [r1, #4]
	movs r0, #4
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0801DC90
	cmp r2, r0
	bgt _0801DC84
	subs r0, r3, r2
	b _0801DC86
	.align 2, 0
_0801DC80: .4byte gDeck
_0801DC84:
	movs r0, #0
_0801DC86:
	strb r0, [r1, #4]
	movs r0, #0x36
	bl sub_8034F60
	b _0801DCBE
_0801DC90:
	bl GetDeckSize
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801DCBE
	movs r0, #0x39
	bl sub_8034F60
	ldr r2, _0801DCC4
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801DCBE
	adds r4, r2, #0
	movs r5, #0x40
_0801DCB0:
	bl sub_8008220
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0801DCB0
_0801DCBE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DCC4: .4byte gKeyState

	THUMB_FUNC_START sub_801DCC8
sub_801DCC8: @ 0x0801DCC8
	push {lr}
	ldr r1, _0801DCE8
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0801DCDE
	movs r0, #0
	strb r0, [r1, #6]
_0801DCDE:
	movs r0, #0x36
	bl sub_8034F60
	pop {r0}
	bx r0
	.align 2, 0
_0801DCE8: .4byte gDeck

	THUMB_FUNC_START sub_0801DCEC
sub_0801DCEC: @ 0x0801DCEC
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801DCF0
sub_801DCF0: @ 0x0801DCF0
	push {r4, r5, r6, lr}
	ldr r1, _0801DD2C
	movs r0, #0
	str r0, [r1]
	movs r5, #0
	ldrb r0, [r1, #8]
	cmp r5, r0
	bhs _0801DD26
	adds r4, r1, #0
	ldr r6, _0801DD30
_0801DD04:
	lsls r0, r5, #1
	adds r1, r4, #0
	adds r1, #0xa
	adds r0, r0, r1
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, [r4]
	ldr r1, [r6, #0xc]
	adds r0, r0, r1
	str r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r0, [r4, #8]
	cmp r5, r0
	blo _0801DD04
_0801DD26:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801DD2C: .4byte gDeck
_0801DD30: .4byte gCardInfo

	THUMB_FUNC_START sub_801DD34
sub_801DD34: @ 0x0801DD34
	adds r1, r0, #0
	ldr r2, _0801DD44
	ldr r0, [r2]
	cmp r1, r0
	bls _0801DD48
	movs r0, #0
	b _0801DD4A
	.align 2, 0
_0801DD44: .4byte gDeck
_0801DD48:
	subs r0, r0, r1
_0801DD4A:
	str r0, [r2]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801DD50
sub_801DD50: @ 0x0801DD50
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r1, #0
	ldr r3, _0801DD84
	ldrb r2, [r3, #8]
	cmp r1, r2
	bhs _0801DD7C
	ldrh r0, [r3, #0xa]
	cmp r0, r4
	beq _0801DD7C
	adds r3, #0xa
_0801DD68:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	bhs _0801DD7C
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r4
	bne _0801DD68
_0801DD7C:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801DD84: .4byte gDeck

	THUMB_FUNC_START sub_801DD88
sub_801DD88: @ 0x0801DD88
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _0801DDD8
	ldrb r0, [r1, #8]
	subs r0, #1
	adds r5, r1, #0
	cmp r3, r0
	bge _0801DDBA
	adds r6, r5, #0
	adds r4, r5, #0
	adds r4, #0xa
_0801DDA0:
	lsls r2, r3, #1
	adds r2, r2, r4
	adds r1, r3, #1
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r2]
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldrb r0, [r6, #8]
	subs r0, #1
	cmp r3, r0
	blt _0801DDA0
_0801DDBA:
	ldrb r0, [r5, #8]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0xa
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	movs r0, #1
	bl sub_801DE3C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801DDD8: .4byte gDeck

	THUMB_FUNC_START sub_801DDDC
sub_801DDDC: @ 0x0801DDDC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0801DE04
	ldr r4, _0801DE08
	str r4, [r2]
	subs r4, #0xa
	ldrb r1, [r4, #8]
	movs r5, #0
	strh r1, [r2, #8]
	ldr r1, _0801DE0C
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #0xa]
	bl sub_8034A38
	strb r5, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DE04: .4byte gUnk2022EB0
_0801DE08: .4byte gDeck+0xA
_0801DE0C: .4byte 0x08E00AE0

	THUMB_FUNC_START sub_801DE10
sub_801DE10: @ 0x0801DE10
	push {lr}
	ldr r2, _0801DE30
	ldr r0, _0801DE34
	str r0, [r2]
	subs r0, #0xa
	ldrb r1, [r0, #8]
	strh r1, [r2, #8]
	ldr r1, _0801DE38
	ldrb r0, [r0, #5]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #0xa]
	bl sub_8034A38
	pop {r0}
	bx r0
	.align 2, 0
_0801DE30: .4byte gUnk2022EB0
_0801DE34: .4byte gDeck+0xA
_0801DE38: .4byte 0x08E00AE0

	THUMB_FUNC_START sub_801DE3C
sub_801DE3C: @ 0x0801DE3C
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r2, _0801DE50
	ldrb r0, [r2, #8]
	cmp r0, r1
	bhs _0801DE54
	ldrb r1, [r2, #8]
	movs r0, #0
	b _0801DE56
	.align 2, 0
_0801DE50: .4byte gDeck
_0801DE54:
	subs r0, r0, r1
_0801DE56:
	strb r0, [r2, #8]
	adds r0, r1, #0
	bx lr

	THUMB_FUNC_START sub_801DE5C
sub_801DE5C: @ 0x0801DE5C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r6, #0
_0801DE66:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _0801DF20
	adds r0, r0, r1
	lsls r1, r6, #6
	ldr r4, _0801DF24
	adds r1, r1, r4
	ldr r2, _0801DF28
	bl CpuSet
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0801DE66
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0801DF2C
	adds r1, r4, r0
	ldr r2, _0801DF30
	mov r0, sp
	bl CpuSet
	movs r4, #0xf0
	lsls r4, r4, #7
	movs r0, #9
	movs r1, #9
	adds r2, r4, #0
	bl sub_08007FEC
	movs r7, #0xff
	lsls r7, r7, #8
	ands r7, r0
	movs r6, #0
	mov r8, r4
_0801DEB0:
	adds r4, r6, #0
	adds r4, #9
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801DF34
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #0x15
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xb
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x17
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3d
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xd
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3f
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xe
	mov r2, r8
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0801DEB0
	ldr r0, _0801DF38
	ldr r1, _0801DF3C
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DF20: .4byte gUnk_808D9B0
_0801DF24: .4byte 0x02007C00
_0801DF28: .4byte 0x0400000F
_0801DF2C: .4byte 0xFFFFC800
_0801DF30: .4byte 0x01000010
_0801DF34: .4byte 0x08DF811C
_0801DF38: .4byte 0x02004420
_0801DF3C: .4byte 0x080B9194

	THUMB_FUNC_START sub_801DF40
sub_801DF40: @ 0x0801DF40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r7, #0
_0801DF4E:
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _0801E25C
	adds r0, r0, r1
	lsls r1, r7, #6
	ldr r4, _0801E260
	adds r1, r1, r4
	ldr r2, _0801E264
	bl CpuSet
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x13
	bls _0801DF4E
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0801E268
	adds r1, r4, r0
	ldr r2, _0801E26C
	mov r0, sp
	bl CpuSet
	movs r4, #0xf0
	lsls r4, r4, #7
	movs r0, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_08007FEC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #2
	movs r1, #2
	adds r2, r4, #0
	bl sub_08007FEC
	movs r1, #0xff
	lsls r1, r1, #8
	mov r8, r1
	ands r1, r0
	mov r8, r1
	movs r7, #0
	adds r6, r4, #0
_0801DFAC:
	adds r4, r7, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801E270
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0x1d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #6
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x1f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #7
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #8
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #9
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x5d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x5f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r6, #0
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _0801DFAC
	movs r7, #0
	movs r0, #0xf0
	lsls r0, r0, #7
	mov sl, r0
_0801E034:
	adds r6, r7, #4
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r5, _0801E270
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0x7d
	mov r1, r8
	orrs r3, r1
	adds r0, r6, #0
	movs r1, #0xc
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x7f
	mov r0, r8
	orrs r3, r0
	adds r0, r6, #0
	movs r1, #0xd
	mov r2, sl
	bl sub_800800C
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r3, [r5]
	adds r3, #0x8d
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x8f
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xd
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xb1
	mov r1, r8
	orrs r3, r1
	adds r0, r6, #0
	movs r1, #0x11
	mov r2, sl
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xb3
	mov r0, r8
	orrs r3, r0
	adds r0, r6, #0
	movs r1, #0x12
	mov r2, sl
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _0801E034
	movs r7, #0
	movs r5, #0xf0
	lsls r5, r5, #7
_0801E0C2:
	adds r4, r7, #0
	adds r4, #0xa
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #6
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #7
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #8
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #9
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0801E0C2
	movs r7, #0
	movs r5, #0xf0
	lsls r5, r5, #7
_0801E122:
	adds r4, r7, #0
	adds r4, #0xc
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #0xc
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #0xd
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _0801E122
	movs r7, #0
	movs r6, #0xf0
	lsls r6, r6, #7
_0801E152:
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801E270
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0x29
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #6
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x2b
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #7
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x49
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #8
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x4b
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #9
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x69
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x6b
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r6, #0
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #9
	bls _0801E152
	movs r7, #0
	movs r6, #0xf0
	lsls r6, r6, #7
_0801E1DA:
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801E270
	adds r5, r7, r5
	ldrb r3, [r5]
	adds r3, #0xc1
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xe
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xc3
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r6, #0
	bl sub_800800C
	adds r4, r7, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r3, [r5]
	adds r3, #0x9d
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xe
	adds r2, r6, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x9f
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r6, #0
	bl sub_800800C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #9
	bls _0801E1DA
	ldr r0, _0801E274
	ldr r1, _0801E278
	movs r2, #0x90
	lsls r2, r2, #4
	bl sub_8020A3C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E25C: .4byte gUnk_808DE60
_0801E260: .4byte 0x02007C00
_0801E264: .4byte 0x0400000F
_0801E268: .4byte 0xFFFFC800
_0801E26C: .4byte 0x01000010
_0801E270: .4byte 0x08DF811C
_0801E274: .4byte 0x02004420
_0801E278: .4byte 0x080B92D8

	THUMB_FUNC_START sub_801E27C
sub_801E27C: @ 0x0801E27C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0801E2A4
	ldr r4, _0801E2A8
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0801E2AC
	ldrb r0, [r0]
	cmp r0, #2
	beq _0801E2C8
	cmp r0, #2
	bgt _0801E2B0
	cmp r0, #1
	beq _0801E2BA
	b _0801E2FA
	.align 2, 0
_0801E2A4: .4byte gUnk_808918C
_0801E2A8: .4byte 0x02000400
_0801E2AC: .4byte gLanguage
_0801E2B0:
	cmp r0, #3
	beq _0801E2D8
	cmp r0, #4
	beq _0801E2EC
	b _0801E2FA
_0801E2BA:
	ldr r0, _0801E2C4
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	b _0801E2E0
	.align 2, 0
_0801E2C4: .4byte 0x08DFAA14
_0801E2C8:
	ldr r0, _0801E2D4
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r1, r4, r3
	b _0801E2E0
	.align 2, 0
_0801E2D4: .4byte 0x08DFAEB4
_0801E2D8:
	ldr r0, _0801E2E8
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r4, r5
_0801E2E0:
	movs r2, #0x50
	bl CpuFastSet
	b _0801E2FA
	.align 2, 0
_0801E2E8: .4byte 0x08DFB354
_0801E2EC:
	ldr r0, _0801E474
	movs r6, #0xa0
	lsls r6, r6, #1
	adds r1, r4, r6
	movs r2, #0x50
	bl CpuFastSet
_0801E2FA:
	ldr r0, _0801E478
	ldr r1, _0801E47C
	ldr r2, _0801E480
	bl CpuSet
	movs r4, #0
	mov r6, sp
	adds r6, #2
	add r7, sp, #4
	mov r8, r7
_0801E30E:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0801E484
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0801E488
	adds r1, r1, r5
	ldr r2, _0801E48C
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0801E30E
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	movs r0, #0x90
	lsls r0, r0, #7
	adds r1, r5, r0
	ldr r2, _0801E490
	mov r0, sp
	bl CpuSet
	strh r4, [r6]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r5, r2
	ldr r2, _0801E494
	adds r0, r6, #0
	bl CpuSet
	ldr r3, _0801E498
	adds r0, r5, r3
	ldr r1, _0801E49C
	ldr r2, _0801E4A0
	bl sub_8020A3C
	ldr r6, _0801E4A4
	adds r0, r5, r6
	ldr r1, _0801E4A8
	ldr r2, _0801E4AC
	bl sub_8020A3C
	ldr r7, _0801E4B0
	adds r1, r5, r7
	ldr r0, _0801E4B4
	strh r0, [r1]
	bl GetDeckCapacity
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
	movs r4, #0
	ldr r0, _0801E4B8
	adds r2, r5, r0
	ldr r7, _0801E4BC
	ldr r6, _0801E4C0
	ldr r1, _0801E4C4
	adds r3, r1, #0
	adds r5, r2, #0
_0801E390:
	adds r1, r4, r7
	lsls r1, r1, #1
	adds r1, r1, r2
	adds r0, r4, r6
	ldrb r0, [r0]
	adds r0, r3, r0
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0801E390
	ldr r2, _0801E4C8
	adds r1, r5, r2
	movs r2, #0
	ldr r0, _0801E4B4
	strh r0, [r1]
	ldr r3, _0801E4CC
	adds r1, r5, r3
	ldr r0, _0801E4D0
	strh r0, [r1]
	ldr r6, _0801E4D4
	adds r1, r5, r6
	subs r0, #4
	strh r0, [r1]
	mov r7, r8
	strh r2, [r7]
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r1, r5, r0
	ldr r2, _0801E490
	mov r0, r8
	bl CpuSet
	ldr r0, _0801E4D8
	ldr r2, _0801E4DC
	adds r1, r5, r2
	ldr r4, _0801E4E0
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _0801E4E4
	ldr r3, _0801E4E8
	adds r1, r5, r3
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _0801E4EC
	ldr r6, _0801E4F0
	adds r1, r5, r6
	adds r2, r4, #0
	bl CpuSet
	ldr r7, _0801E4F4
	adds r0, r5, r7
	ldr r1, _0801E4F8
	ldr r2, _0801E4A0
	bl sub_8020A3C
	ldr r1, _0801E4FC
	adds r0, r5, r1
	ldr r1, _0801E500
	ldr r2, _0801E504
	bl sub_8020A3C
	movs r4, #0
	ldr r5, _0801E508
_0801E416:
	ldr r6, _0801E50C
	lsls r1, r4, #2
	adds r0, r1, r4
	ldrb r2, [r6]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, #0x13
	lsls r1, r1, #5
	ldr r2, _0801E510
	adds r1, r1, r2
	ldr r2, _0801E480
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xb
	bls _0801E416
	movs r5, #0
	movs r4, #0
	ldr r7, _0801E514
_0801E444:
	adds r0, r4, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0801E51C
	lsls r0, r4, #2
	adds r0, r0, r4
	ldrb r3, [r6]
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #0x43
	lsls r1, r1, #5
	ldr r2, _0801E510
	adds r1, r1, r2
	ldr r2, _0801E518
	bl CpuSet
	adds r0, r5, #0
	adds r0, #8
	b _0801E53C
	.align 2, 0
_0801E474: .4byte 0x08DFB494
_0801E478: .4byte gUnk_808C1C0
_0801E47C: .4byte 0x02000000
_0801E480: .4byte 0x04000020
_0801E484: .4byte gUnk_808BD10
_0801E488: .4byte 0x02003C00
_0801E48C: .4byte 0x0400000F
_0801E490: .4byte 0x01000010
_0801E494: .4byte 0x01000400
_0801E498: .4byte 0x00004820
_0801E49C: .4byte 0x080B954C
_0801E4A0: .4byte 0x00000801
_0801E4A4: .4byte 0x00004840
_0801E4A8: .4byte 0x080B9550
_0801E4AC: .4byte 0x00000901
_0801E4B0: .4byte 0x0000805E
_0801E4B4: .4byte 0x00005001
_0801E4B8: .4byte 0xFFFFC800
_0801E4BC: .4byte 0x00005C30
_0801E4C0: .4byte 0x02021BD0
_0801E4C4: .4byte 0x00005209
_0801E4C8: .4byte 0x0000B870
_0801E4CC: .4byte 0x0000B872
_0801E4D0: .4byte 0x0000520D
_0801E4D4: .4byte 0x0000B874
_0801E4D8: .4byte gUnk_808E310
_0801E4DC: .4byte 0x0000C020
_0801E4E0: .4byte 0x04000008
_0801E4E4: .4byte gUnk_808E330
_0801E4E8: .4byte 0x0000C040
_0801E4EC: .4byte gUnk_808E350
_0801E4F0: .4byte 0x0000C060
_0801E4F4: .4byte 0x0000C080
_0801E4F8: .4byte 0x080B95D8
_0801E4FC: .4byte 0x0000C120
_0801E500: .4byte 0x080B9608
_0801E504: .4byte 0x00001801
_0801E508: .4byte 0x08DFA5B8
_0801E50C: .4byte gLanguage
_0801E510: .4byte 0x0200C400
_0801E514: .4byte 0x08DFA3A8
_0801E518: .4byte 0x04000040
_0801E51C:
	lsls r0, r4, #2
	adds r0, r0, r4
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #0x43
	lsls r1, r1, #5
	ldr r2, _0801E634
	adds r1, r1, r2
	ldr r2, _0801E638
	bl CpuSet
	adds r0, r5, #4
_0801E53C:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x17
	bhi _0801E54C
	b _0801E444
_0801E54C:
	ldr r0, _0801E63C
	ldr r4, _0801E640
	ldr r5, _0801E644
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _0801E648
	subs r4, #0x20
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	movs r4, #0
_0801E568:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0801E64C
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r2, _0801E650
	adds r1, r1, r2
	ldr r2, _0801E654
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0801E568
	movs r3, #0
_0801E58A:
	movs r2, #0
	cmp r3, #1
	bls _0801E598
	movs r2, #2
	cmp r3, #2
	bne _0801E598
	movs r2, #1
_0801E598:
	movs r4, #0
	lsls r0, r3, #1
	adds r1, r2, #3
	adds r2, #4
	adds r5, r3, #1
	str r5, [sp, #0xc]
	ldr r5, _0801E658
	adds r0, r0, r3
	adds r1, r0, r1
	lsls r1, r1, #5
	mov ip, r1
	ldr r6, _0801E65C
	mov sb, r6
	ldr r1, _0801E660
	mov r7, ip
	adds r7, r7, r1
	str r7, [sp, #8]
	lsls r3, r0, #4
	str r3, [sp, #0x10]
	ldr r6, _0801E664
	adds r6, r6, r3
	mov sl, r6
	adds r0, r0, r2
	lsls r6, r0, #5
	adds r1, r1, r6
	mov r8, r1
_0801E5CC:
	lsls r2, r4, #1
	mov r1, ip
	add r1, sb
	adds r1, r2, r1
	lsls r1, r1, #1
	adds r1, r1, r5
	lsls r3, r4, #2
	ldr r7, _0801E664
	adds r0, r3, r7
	ldr r7, [sp, #0x10]
	adds r0, r0, r7
	strh r0, [r1]
	ldr r1, [sp, #8]
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
	cmp r4, #8
	bls _0801E5CC
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0801E58A
	ldr r0, _0801E668
	bl sub_8057418
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E634: .4byte 0x0200C400
_0801E638: .4byte 0x04000020
_0801E63C: .4byte gUnk_808ECD0
_0801E640: .4byte 0x020000A0
_0801E644: .4byte 0x04000008
_0801E648: .4byte gUnk_808ECF0
_0801E64C: .4byte 0x0808E820
_0801E650: .4byte 0x0200FC00
_0801E654: .4byte 0x0400000F
_0801E658: .4byte 0x02000400
_0801E65C: .4byte 0x00007C02
_0801E660: .4byte 0x00007C03
_0801E664: .4byte 0x000050D0
_0801E668: .4byte 0x02000200

	THUMB_FUNC_START sub_801E66C
sub_801E66C: @ 0x0801E66C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r5, #0
	str r5, [sp]
	ldr r4, _0801E7A4
	ldr r2, _0801E7A8
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	str r5, [sp, #4]
	add r0, sp, #4
	movs r2, #0xa8
	lsls r2, r2, #6
	adds r1, r4, r2
	ldr r2, _0801E7AC
	bl CpuSet
	movs r6, #0
	ldr r7, _0801E7B0
	ldr r0, _0801E7B4
	adds r0, r0, r4
	mov sb, r0
	movs r1, #0xf1
	lsls r1, r1, #5
	adds r1, r1, r4
	mov sl, r1
_0801E6AA:
	adds r0, r6, #0
	bl sub_801DAF8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r5, #0
	cmp r6, #1
	bls _0801E6C6
	movs r5, #2
	cmp r6, #2
	bne _0801E6C6
	movs r5, #1
_0801E6C6:
	ldrh r0, [r7, #0x10]
	lsls r4, r6, #1
	adds r4, r4, r6
	adds r5, #2
	adds r5, r4, r5
	lsls r5, r5, #6
	mov r2, sb
	adds r1, r5, r2
	bl sub_801EFC0
	ldrh r0, [r7, #0x10]
	lsls r4, r4, #9
	movs r1, #0xd0
	lsls r1, r1, #5
	adds r4, r4, r1
	ldr r2, _0801E7B8
	add r2, sb
	mov r8, r2
	add r4, r8
	adds r1, r4, #0
	bl sub_801E7D4
	ldrb r0, [r7, #0x18]
	add r5, sl
	adds r1, r5, #0
	bl sub_801F01C
	ldrh r0, [r7, #0x10]
	adds r1, r6, #0
	bl sub_801E86C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0801E6AA
	bl GetDeckCost
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
	bl sub_800A508
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r6, #0
	ldr r7, _0801E7BC
	add r7, r8
	ldr r5, _0801E7C0
	ldr r4, _0801E7C4
	ldr r0, _0801E7C8
	adds r3, r0, #0
_0801E732:
	adds r1, r6, r5
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r0, r6, r4
	ldrb r0, [r0]
	adds r0, r3, r0
	adds r0, r2, r0
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0801E732
	bl GetDeckSize
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl sub_800DDA0
	bl sub_800A528
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r6, #0
	ldr r7, _0801E7CC
	ldr r5, _0801E7D0
	ldr r4, _0801E7C4
	ldr r1, _0801E7C8
	adds r3, r1, #0
_0801E76E:
	adds r1, r6, r5
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r0, r6, #3
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r0, r3, r0
	adds r0, r2, r0
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0801E76E
	bl sub_801DB30
	bl sub_800A544
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E7A4: .4byte 0x0200DE00
_0801E7A8: .4byte 0x05000780
_0801E7AC: .4byte 0x05000800
_0801E7B0: .4byte gCardInfo
_0801E7B4: .4byte 0x00001E02
_0801E7B8: .4byte 0xFFFFC7FE
_0801E7BC: .4byte 0xFFFF4000
_0801E7C0: .4byte 0x00005C2A
_0801E7C4: .4byte 0x02021BD0
_0801E7C8: .4byte 0x00000209
_0801E7CC: .4byte 0x02000400
_0801E7D0: .4byte 0x00005C36

	THUMB_FUNC_START sub_801E7D4
sub_801E7D4: @ 0x0801E7D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	mov r8, r1
	ldr r0, _0801E7F4
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_8020824
	adds r4, r0, #0
	movs r6, #0
	movs r5, #0
	movs r3, #0
	ldrb r0, [r4]
	b _0801E840
	.align 2, 0
_0801E7F4: .4byte gCardInfo
_0801E7F8:
	adds r2, r4, r5
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _0801E818
	cmp r6, #0x17
	bhi _0801E814
	mov r2, sp
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0801E814:
	adds r0, r5, #1
	b _0801E832
_0801E818:
	cmp r6, #0x17
	bhi _0801E830
	mov r7, sp
	adds r0, r7, r3
	strb r1, [r0]
	adds r0, r3, #1
	adds r1, r7, r0
	ldrb r0, [r2, #1]
	strb r0, [r1]
	adds r0, r3, #2
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0801E830:
	adds r0, r5, #2
_0801E832:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, r5
	ldrb r0, [r0]
_0801E840:
	cmp r0, #0
	beq _0801E848
	cmp r0, #0x24
	bne _0801E7F8
_0801E848:
	mov r1, sp
	adds r0, r1, r3
	movs r1, #0
	strb r1, [r0]
	ldr r2, _0801E868
	mov r0, r8
	mov r1, sp
	bl sub_8020A3C
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E868: .4byte 0x00000901

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
_0801E8C0: .4byte 0x02018400
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
	bl sub_8008BC0
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
	bl sub_8008B44
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
	bl sub_8045658
	movs r0, #0x37
	bl sub_8034F60
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
	bl sub_8034F60
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
	bl sub_8034F60
	ldr r0, _0801F20C
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0801F20C: .4byte 0x080454C9

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
	bl sub_8034F60
	ldr r0, _0801F25C
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0801F25C: .4byte 0x080454C9

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
	bl sub_8034F60
	ldr r0, _0801F2AC
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0801F2AC: .4byte 0x080454C9

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
	bl sub_8034F60
	ldr r0, _0801F2FC
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0801F2FC: .4byte 0x080454C9

	THUMB_FUNC_START sub_801F300
sub_801F300: @ 0x0801F300
	push {lr}
	movs r0, #0x37
	bl sub_8034F60
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
_0801F364: .4byte 0x02018430
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
_0801F38C: .4byte 0x02018430

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
	bl sub_8045434
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
_0801F480: .4byte gUnk2024240
_0801F484: .4byte 0x02024214
_0801F488: .4byte 0x0202422C
_0801F48C: .4byte 0x02024248
_0801F490: .4byte 0x0202420C
_0801F494: .4byte 0x0202424C
_0801F498: .4byte 0x02024218
_0801F49C: .4byte 0x02024204

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
	bl sub_80454E0
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
	bl sub_80454E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F5BC
sub_801F5BC: @ 0x0801F5BC
	push {lr}
	bl LoadOam
	bl sub_80454E0
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
	bl sub_80454F8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F5FC
sub_801F5FC: @ 0x0801F5FC
	push {lr}
	bl sub_8045690
	bl sub_80456E0
	bl sub_80454E0
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F614
sub_801F614: @ 0x0801F614
	push {lr}
	bl sub_8045690
	bl sub_80456E0
	bl sub_80454E0
	bl sub_8045674
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
	bl sub_8045674
	bl sub_8045690
	bl sub_80456E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_801F644
sub_801F644: @ 0x0801F644
	push {lr}
	bl sub_8045674
	bl sub_8045690
	bl sub_80456E0
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
	bl sub_8034F60
	ldrb r1, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #7
	ldr r1, _0801FA58
	adds r0, r0, r1
	bl sub_800BCB0
	bl sub_8045658
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
	bl sub_8034F60
	ldrb r1, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #7
	ldr r1, _0801FA58
	adds r0, r0, r1
	bl sub_800BCB0
	bl sub_8045658
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
	bl sub_8034F60
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
_0801FAB8: .4byte 0x02024228
_0801FABC: .4byte gUnk2024238
_0801FAC0: .4byte 0x02024230
_0801FAC4: .4byte 0x0202422C
_0801FAC8: .4byte 0x02024248
_0801FACC: .4byte 0x0202420C
_0801FAD0: .4byte 0x0202424C
_0801FAD4: .4byte 0x02024218
_0801FAD8: .4byte 0x02024204

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
	bl sub_804549C
	bl sub_8045434
	pop {r0}
	bx r0
	.align 2, 0
_0801FB08: .4byte 0x0400000A
_0801FB0C: .4byte 0x00001D81
_0801FB10: .4byte 0x00001F0B

	THUMB_FUNC_START sub_801FB14
sub_801FB14: @ 0x0801FB14
	push {lr}
	bl sub_80454E0
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
	bl sub_80455E4
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

	THUMB_FUNC_START sub_801FB58
sub_801FB58: @ 0x0801FB58
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
	bl sub_801D6D0
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
_0801FBA0: .4byte 0x02021D10
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
	bl sub_8034F60
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
_0801FC70: .4byte 0x02021D10
_0801FC74: .4byte gUnk20241FC

	THUMB_FUNC_START sub_801FC78
sub_801FC78: @ 0x0801FC78
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
	bl sub_8034F60
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
_0801FD10: .4byte 0x02021D10

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
_0801FD40: .4byte 0x02021D10
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
	bl sub_805B0D4
	str r0, [r6]
	str r1, [r6, #4]
	bl sub_8026F60
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
_0801FEB4: .4byte 0x02021D10
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
_0801FF04: .4byte 0x02021D10
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
	bl sub_805B144
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

	THUMB_FUNC_START sub_801FF70
sub_801FF70: @ 0x0801FF70
	push {lr}
	ldr r0, _0801FF84
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801FF88
	bl sub_801FB58
	b _0801FF8C
	.align 2, 0
_0801FF84: .4byte 0x02021D10
_0801FF88:
	bl sub_801FC78
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
_0801FFDC: .4byte 0x02021D10

	THUMB_FUNC_START sub_801FFE0
sub_801FFE0: @ 0x0801FFE0
	push {r4, lr}
	ldr r0, _0801FFF4
	ldrh r0, [r0]
	bl sub_8025568
	cmp r0, #1
	bne _0801FFFC
	ldr r0, _0801FFF8
	ldr r4, [r0, #0x38]
	b _08020000
	.align 2, 0
_0801FFF4: .4byte gAnte
_0801FFF8: .4byte 0x02021D10
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
_08020010: .4byte 0x02021D10
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
_08020064: .4byte 0x02021D10
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
