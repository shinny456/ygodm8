    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED
   
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
_08053330: .4byte gPlayerName
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
_080533B4: .4byte gOamBuffer
_080533B8: .4byte LoadOam

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
_08053514: .4byte gOverworld
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
_08053578: .4byte gOverworld
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
_080535FC: .4byte gOverworld
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
_08053674: .4byte gOverworld
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
_080536CC: .4byte gOverworld
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
_08053724: .4byte gOverworld
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
_0805387C: .4byte gOverworld
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
_08053904: .4byte gOverworld
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
_08053968: .4byte gOverworld
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
	bl __modsi3
	cmp r0, #0
	bne _080539F6
	ldr r0, _08053A68
	bl PlayMusic
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
_08053A64: .4byte gOverworld
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
_08053B34: .4byte gOverworld
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
_08053C10: .4byte gOverworld
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
	bl CheckFlag
	cmp r0, #0
	beq _08053C98
	movs r0, #0x53
	bl CheckFlag
	cmp r0, #0
	beq _08053C98
	movs r0, #0x54
	bl CheckFlag
	cmp r0, #0
	beq _08053C98
	movs r0, #0x55
	bl CheckFlag
	cmp r0, #0
	beq _08053C98
	movs r0, #0x56
	bl CheckFlag
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
_08053D44: .4byte gOverworld
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
_08053D84: .4byte gOverworld

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
_08053E28: .4byte gOverworld
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
_08053FC4: .4byte gUnk_8E0CD14
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
	bl strcpy
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
	bl strcpy
	b _08054044
	.align 2, 0
_08054034: .4byte 0x0201EF50
_08054038: .4byte 0x0201EFC0
_0805403C:
	ldr r0, _080540A8
	ldr r1, _080540AC
	bl strcpy
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
_08054148: .4byte gUnk_8E0CD14
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
_080541EC: .4byte gUnk_8E0CD14
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
_08054294: .4byte gUnk_8E0CD14
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
_08054318: .4byte gUnk_8E0CD14
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
_0805439C: .4byte gUnk_8E0CD14
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
_08054444: .4byte gUnk_8E0CD14
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
_080544EC: .4byte gUnk_8E0CD14
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
_08054594: .4byte gUnk_8E0CD14
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
_0805463C: .4byte gUnk_8E0CD14
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
_080546E4: .4byte gUnk_8E0CD14
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
	bl strcpy
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
	bl strcpy
	b _08054764
	.align 2, 0
_08054754: .4byte 0x0201EF50
_08054758: .4byte 0x0201EFC0
_0805475C:
	ldr r0, _080547C8
	ldr r1, _080547CC
	bl strcpy
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
_08054870: .4byte gUnk_8E0CD14
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
_08054918: .4byte gUnk_8E0CD14
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
_080549C4: .4byte gOverworld
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
_08054A8C: .4byte gOverworld
_08054A90: .4byte 0x04000050
_08054A94: .4byte 0x04000054
_08054A98: .4byte 0x084D0EC0
_08054A9C: .4byte 0x02000400
_08054AA0: .4byte 0x084D69D0
_08054AA4: .4byte 0x02000020
_08054AA8: .4byte 0x084D59D0
_08054AAC: .4byte 0x084D61D0

	THUMB_FUNC_START sub_8054AB0 @various overworld effects and various cutscenes
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
	bl StartCutscene
	b _08054EB0
_08054C9C:
	movs r0, #1
	bl StartCutscene
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
	bl LoadPalettes
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
	bl LoadPalettes
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
	bl StartCutscene
	b _08054EB0
_08054EA0:
	movs r0, #7
	bl StartCutscene
	b _08054EB0
_08054EA8:
	ldr r1, _08054EC4
	ldr r0, _08054EC0
	bl RemoveMoney
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
_080551D8: .4byte gOverworld
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
	bl CheckFlag
	cmp r0, #0
	beq _080552B4
	movs r5, #0
	movs r0, #0xb4
	bl CheckFlag
	cmp r0, #0
	bne _080552B4
	movs r5, #2
	b _080552B4
_0805529A:
	movs r0, #0xf7
	bl CheckFlag
	cmp r0, #0
	beq _080552B4
	movs r5, #1
	b _080552B4
_080552A8:
	movs r0, #0xf7
	bl CheckFlag
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
	bl __modsi3
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
	bl __modsi3
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
_080553C0: .4byte gOverworld
_080553C4: .4byte 0x0000FFFE
_080553C8: .4byte gBG3HOFS
_080553CC: .4byte 0x0000FFFF
_080553D0: .4byte gBG3VOFS
_080553D4: .4byte 0x08E0FD04
_080553D8: .4byte 0x08E0FD24
_080553DC: .4byte 0x0000024E
_080553E0: .4byte 0x08E0FD14
_080553E4: .4byte 0x08E0FD34
_080553E8: .4byte gBG2VOFS
_080553EC: .4byte gBG2HOFS
_080553F0: .4byte gBG1VOFS
_080553F4: .4byte gBG1HOFS

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
_080554A8: .4byte gBG2VOFS
_080554AC: .4byte gBG2HOFS
_080554B0: .4byte 0x08E0FCEE
_080554B4: .4byte 0x08E0FCDA
_080554B8: .4byte gBG1VOFS
_080554BC: .4byte gBG1HOFS
_080554C0: .4byte gOverworld

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
_080554E8: .4byte gOverworld

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

	THUMB_FUNC_START SetFlag
SetFlag: @ 0x08055508
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

	THUMB_FUNC_START ClearFlag
ClearFlag: @ 0x08055534
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

	THUMB_FUNC_START CheckFlag
CheckFlag: @ 0x08055554
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

.align 2, 0
