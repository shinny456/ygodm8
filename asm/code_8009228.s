    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED


	THUMB_FUNC_START sub_8009228
sub_8009228: @ 0x08009228
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08009248
	ldr r5, _0800924C
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r0, _08009250
	ldrb r0, [r0]
	cmp r0, #2
	beq _08009268
	cmp r0, #2
	bgt _08009254
	cmp r0, #1
	beq _0800925E
	b _080092FC
	.align 2, 0
_08009248: .4byte gUnk_808918C
_0800924C: .4byte 0x02000400
_08009250: .4byte gLanguage
_08009254:
	cmp r0, #3
	beq _08009270
	cmp r0, #4
	beq _080092B8
	b _080092FC
_0800925E:
	ldr r4, _08009264
	b _08009272
	.align 2, 0
_08009264: .4byte 0x08DFA6B4
_08009268:
	ldr r4, _0800926C
	b _08009272
	.align 2, 0
_0800926C: .4byte 0x08DFAB54
_08009270:
	ldr r4, _080092B4
_08009272:
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
	b _080092FC
	.align 2, 0
_080092B4: .4byte 0x08DFAFF4
_080092B8:
	ldr r4, _08009344
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
_080092FC:
	movs r4, #0
_080092FE:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08009348
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0800934C
	adds r1, r1, r5
	ldr r2, _08009350
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _080092FE
	ldr r0, _08009354
	ldr r1, _08009358
	ldr r2, _0800935C
	bl CpuSet
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #8
	adds r1, r5, r0
	ldr r2, _08009360
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009344: .4byte 0x08DFAFF4
_08009348: .4byte gUnk_808B860
_0800934C: .4byte 0x02003C00
_08009350: .4byte 0x0400000F
_08009354: .4byte gUnk_808C1C0
_08009358: .4byte 0x02000000
_0800935C: .4byte 0x04000020
_08009360: .4byte 0x01000010

	THUMB_FUNC_START sub_8009364
sub_8009364: @ 0x08009364
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r6, #0
_0800936E:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _08009428
	adds r0, r0, r1
	lsls r1, r6, #6
	ldr r4, _0800942C
	adds r1, r1, r4
	ldr r2, _08009430
	bl CpuSet
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0800936E
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08009434
	adds r1, r4, r0
	ldr r2, _08009438
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
_080093B8:
	adds r4, r6, #0
	adds r4, #9
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800943C
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
	bls _080093B8
	ldr r0, _08009440
	ldr r1, _08009444
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
_08009428: .4byte gUnk_808C240
_0800942C: .4byte 0x02007C00
_08009430: .4byte 0x0400000F
_08009434: .4byte 0xFFFFC800
_08009438: .4byte 0x01000010
_0800943C: .4byte 0x08DF811C
_08009440: .4byte 0x02004420
_08009444: .4byte 0x080907E4

	THUMB_FUNC_START sub_8009448
sub_8009448: @ 0x08009448
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r7, #0
_08009456:
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _08009764
	adds r0, r0, r1
	lsls r1, r7, #6
	ldr r4, _08009768
	adds r1, r1, r4
	ldr r2, _0800976C
	bl CpuSet
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x13
	bls _08009456
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08009770
	adds r1, r4, r0
	ldr r2, _08009774
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
_080094B4:
	adds r4, r7, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08009778
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
	bls _080094B4
	movs r7, #0
	movs r0, #0xf0
	lsls r0, r0, #7
	mov sl, r0
_0800953C:
	adds r6, r7, #4
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r5, _08009778
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
	bls _0800953C
	movs r7, #0
	movs r5, #0xf0
	lsls r5, r5, #7
_080095CA:
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
	bls _080095CA
	movs r7, #0
	movs r5, #0xf0
	lsls r5, r5, #7
_0800962A:
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
	bls _0800962A
	movs r7, #0
	movs r6, #0xf0
	lsls r6, r6, #7
_0800965A:
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08009778
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
	bls _0800965A
	movs r7, #0
	movs r6, #0xf0
	lsls r6, r6, #7
_080096E2:
	adds r4, r7, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08009778
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
	bls _080096E2
	ldr r0, _0800977C
	ldr r1, _08009780
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
_08009764: .4byte gUnk_808C6F0
_08009768: .4byte 0x02007C00
_0800976C: .4byte 0x0400000F
_08009770: .4byte 0xFFFFC800
_08009774: .4byte 0x01000010
_08009778: .4byte 0x08DF811C
_0800977C: .4byte 0x02004420
_08009780: .4byte 0x08090920

	THUMB_FUNC_START sub_8009784
sub_8009784: @ 0x08009784
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _08009820
	ldr r2, _08009824
	adds r1, r4, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	movs r2, #0xe0
	lsls r2, r2, #6
	adds r1, r4, r2
	ldr r2, _08009828
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0800982C
	ldr r2, _08009830
	bl sub_8020A3C
	adds r0, r4, #0
	adds r0, #0x40
	ldr r1, _08009834
	ldr r2, _08009838
	bl sub_8020A3C
	ldr r0, _0800983C
	adds r1, r4, r0
	ldr r0, _08009840
	strh r0, [r1]
	bl GetDeckCapacity
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
	movs r2, #0
	ldr r0, _08009844
	adds r4, r4, r0
	ldr r7, _08009848
	ldr r6, _0800984C
	ldr r0, _08009850
	adds r5, r0, #0
	adds r3, r4, #0
_080097E8:
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
	bls _080097E8
	ldr r2, _08009854
	adds r1, r3, r2
	ldr r0, _08009840
	strh r0, [r1]
	ldr r0, _08009858
	adds r1, r3, r0
	ldr r0, _0800985C
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
_08009820: .4byte 0x02008400
_08009824: .4byte 0x01000010
_08009828: .4byte 0x01000400
_0800982C: .4byte 0x08090B94
_08009830: .4byte 0x00000801
_08009834: .4byte 0x08090B98
_08009838: .4byte 0x00000901
_0800983C: .4byte 0x0000385E
_08009840: .4byte 0x00005001
_08009844: .4byte 0xFFFF8000
_08009848: .4byte 0x00005C30
_0800984C: .4byte 0x02021BD0
_08009850: .4byte 0x00005209
_08009854: .4byte 0x0000B870
_08009858: .4byte 0x0000B872
_0800985C: .4byte 0x0000520D

	THUMB_FUNC_START sub_8009860
sub_8009860: @ 0x08009860
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08009928
	ldr r4, _0800992C
	ldr r5, _08009930
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _08009934
	subs r4, #0x20
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _08009938
	ldr r4, _0800993C
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _08009940
	adds r1, r4, #0
	adds r1, #0x20
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _08009944
	adds r1, r4, #0
	adds r1, #0x40
	adds r2, r5, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x60
	ldr r1, _08009948
	ldr r2, _0800994C
	bl sub_8020A3C
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _08009950
	ldr r2, _08009954
	bl sub_8020A3C
	movs r5, #0
	ldr r4, _08009958
_080098C8:
	ldr r6, _0800995C
	lsls r1, r5, #2
	adds r0, r1, r5
	ldrb r2, [r6]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	adds r1, #0x13
	lsls r1, r1, #5
	ldr r2, _08009960
	adds r1, r1, r2
	ldr r2, _08009964
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bls _080098C8
	movs r4, #0
	movs r5, #0
	ldr r7, _08009968
_080098F6:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08009970
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
	ldr r2, _08009960
	adds r1, r1, r2
	ldr r2, _0800996C
	bl CpuSet
	adds r0, r4, #0
	adds r0, #8
	b _08009990
	.align 2, 0
_08009928: .4byte gUnk_808ECD0
_0800992C: .4byte 0x020000A0
_08009930: .4byte 0x04000008
_08009934: .4byte gUnk_808ECF0
_08009938: .4byte gUnk_808E310
_0800993C: .4byte 0x0200C420
_08009940: .4byte gUnk_808E330
_08009944: .4byte gUnk_808E350
_08009948: .4byte 0x08090C20
_0800994C: .4byte 0x00000801
_08009950: .4byte 0x08090C50
_08009954: .4byte 0x00001801
_08009958: .4byte 0x08DFA5B8
_0800995C: .4byte gLanguage
_08009960: .4byte 0x0200C400
_08009964: .4byte 0x04000020
_08009968: .4byte 0x08DFA3A8
_0800996C: .4byte 0x04000040
_08009970:
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
	ldr r2, _08009A6C
	adds r1, r1, r2
	ldr r2, _08009A70
	bl CpuSet
	adds r0, r4, #4
_08009990:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x17
	bls _080098F6
	movs r5, #0
_080099A0:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08009A74
	adds r0, r0, r1
	lsls r1, r5, #6
	ldr r4, _08009A78
	adds r1, r1, r4
	ldr r2, _08009A7C
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _080099A0
	movs r7, #0
	ldr r0, _08009A80
	adds r0, r0, r4
	mov r8, r0
_080099C8:
	movs r5, #0
	lsls r1, r7, #1
	lsls r0, r7, #2
	adds r2, r7, #1
	str r2, [sp]
	adds r1, r1, r7
	mov ip, r1
	adds r0, r0, r7
	lsls r0, r0, #3
	mov sb, r0
	ldr r0, _08009A84
	add r0, sb
	mov sl, r0
_080099E2:
	movs r6, #0
	cmp r7, #1
	bls _080099F0
	movs r6, #2
	cmp r7, #2
	bne _080099F0
	movs r6, #1
_080099F0:
	lsls r3, r5, #1
	adds r2, r6, #3
	add r2, ip
	lsls r2, r2, #5
	ldr r0, _08009A88
	adds r1, r2, r0
	adds r1, r3, r1
	lsls r1, r1, #1
	add r1, r8
	str r1, [sp, #4]
	lsls r4, r5, #2
	ldr r1, _08009A84
	adds r0, r4, r1
	add r0, sb
	ldr r1, [sp, #4]
	strh r0, [r1]
	ldr r0, _08009A8C
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
	ldr r1, _08009A88
	adds r0, r2, r1
	adds r0, r3, r0
	lsls r0, r0, #1
	add r0, r8
	adds r1, r4, #2
	strh r1, [r0]
	ldr r0, _08009A8C
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
	bls _080099E2
	ldr r1, [sp]
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bls _080099C8
	ldr r0, _08009A90
	bl sub_8057418
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009A6C: .4byte 0x0200C400
_08009A70: .4byte 0x04000020
_08009A74: .4byte 0x0808E820
_08009A78: .4byte 0x0200FC00
_08009A7C: .4byte 0x0400000F
_08009A80: .4byte 0xFFFF0800
_08009A84: .4byte 0x000050F8
_08009A88: .4byte 0x00007C02
_08009A8C: .4byte 0x00007C03
_08009A90: .4byte 0x02000200

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
	bl sub_800901C
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
	bl sub_800DDA0
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
	bl sub_8020824
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
	bl sub_8020A3C
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
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_800A4B0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _08009D10
	ldrh r0, [r1, #0x10]
	bl sub_8009060
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl sub_800DDA0
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
	bl sub_800DDA0
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
_08009D20: .4byte 0x02018400
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
	bl GetDeckCost
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
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
	bl GetDeckSize
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl sub_800DDA0
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
	bl sub_800901C
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
	bl sub_800DDA0
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
	bl sub_800DDA0
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
	bl sub_800901C
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
	bl sub_8008BC0
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
	bl sub_8008B44
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
	bl sub_800901C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	ldr r0, _0800A374
	ldrh r0, [r0, #0xc]
	movs r1, #0
	bl sub_800DDA0
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

	THUMB_FUNC_START sub_800A380
sub_800A380: @ 0x0800A380
	push {r4, lr}
	lsls r0, r0, #0x18
	ldr r3, _0800A3BC
	lsrs r0, r0, #0x16
	ldr r2, _0800A3C0
	adds r1, r2, #0
	adds r1, r0, r1
	ldr r4, _0800A3C4
	adds r2, r3, r4
	strh r1, [r2]
	ldr r2, _0800A3C8
	adds r1, r2, #0
	adds r1, r0, r1
	adds r4, #2
	adds r2, r3, r4
	strh r1, [r2]
	ldr r1, _0800A3CC
	adds r2, r0, r1
	adds r4, #0x3e
	adds r1, r3, r4
	strh r2, [r1]
	ldr r1, _0800A3D0
	adds r0, r0, r1
	ldr r2, _0800A3D4
	adds r3, r3, r2
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A3BC: .4byte 0x02000400
_0800A3C0: .4byte 0x00005002
_0800A3C4: .4byte 0x0000B838
_0800A3C8: .4byte 0x00005003
_0800A3CC: .4byte 0x00005004
_0800A3D0: .4byte 0x00005005
_0800A3D4: .4byte 0x0000B87A

	THUMB_FUNC_START sub_800A3D8
sub_800A3D8: @ 0x0800A3D8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _0800A472
	lsls r0, r0, #2
	ldr r1, _0800A3EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A3EC: .4byte 0x0800A3F0
_0800A3F0: @ jump table
	.4byte _0800A410 @ case 0
	.4byte _0800A472 @ case 1
	.4byte _0800A418 @ case 2
	.4byte _0800A440 @ case 3
	.4byte _0800A45C @ case 4
	.4byte _0800A46C @ case 5
	.4byte _0800A472 @ case 6
	.4byte _0800A446 @ case 7
_0800A410:
	movs r0, #0
	bl sub_800A5F0
	b _0800A472
_0800A418:
	bl sub_8009228
	bl sub_8009784
	bl sub_8009860
	bl sub_8009A94
	bl sub_800A478
	ldr r0, _0800A43C
	ldrb r0, [r0, #2]
	bl sub_800A380
	movs r0, #1
	bl sub_800A5F0
	b _0800A472
	.align 2, 0
_0800A43C: .4byte gUnkStruct_2020E10
_0800A440:
	bl sub_8009A94
	b _0800A45C
_0800A446:
	bl sub_8009A94
	bl sub_800A478
	ldr r0, _0800A468
	ldrb r0, [r0, #2]
	bl sub_800A380
	movs r0, #3
	bl sub_800A5F0
_0800A45C:
	bl sub_800A478
	movs r0, #3
	bl sub_800A5F0
	b _0800A472
	.align 2, 0
_0800A468: .4byte gUnkStruct_2020E10
_0800A46C:
	movs r0, #3
	bl sub_800A5F0
_0800A472:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A478
sub_800A478: @ 0x0800A478
	push {lr}
	bl sub_8009010
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0800A494
	cmp r0, #1
	ble _0800A4A6
	cmp r0, #2
	beq _0800A49A
	cmp r0, #3
	beq _0800A4A0
	b _0800A4A6
_0800A494:
	bl sub_8009F58
	b _0800A4AA
_0800A49A:
	bl sub_800A054
	b _0800A4AA
_0800A4A0:
	bl sub_800A260
	b _0800A4AA
_0800A4A6:
	bl sub_8009E3C
_0800A4AA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A4B0
sub_800A4B0: @ 0x0800A4B0
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, r1, #0
	ldr r0, _0800A4F4
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A4FC
	adds r0, r1, #0
	bl sub_801F098
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0800A4FC
	bl GetDeckSize
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	beq _0800A4FC
	adds r0, r4, #0
	bl SetCardInfo
	bl GetDuelistLevel
	ldr r1, _0800A4F8
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _0800A4FC
	movs r0, #0xa0
	lsls r0, r0, #7
	b _0800A500
	.align 2, 0
_0800A4F4: .4byte gTrunkCardQty
_0800A4F8: .4byte gCardInfo
_0800A4FC:
	movs r0, #0x80
	lsls r0, r0, #7
_0800A500:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A508
sub_800A508: @ 0x0800A508
	push {r4, lr}
	bl GetDeckCost
	adds r4, r0, #0
	bl GetDeckCapacity
	cmp r4, r0
	bhi _0800A51E
	movs r0, #0xa0
	lsls r0, r0, #7
	b _0800A522
_0800A51E:
	movs r0, #0x80
	lsls r0, r0, #7
_0800A522:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A528
sub_800A528: @ 0x0800A528
	push {lr}
	bl GetDeckSize
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bls _0800A53C
	movs r0, #0xa0
	lsls r0, r0, #7
	b _0800A540
_0800A53C:
	movs r0, #0x80
	lsls r0, r0, #7
_0800A540:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_800A544
sub_800A544: @ 0x0800A544
	push {r4, r5, r6, lr}
	ldr r2, _0800A568
	ldrh r0, [r2]
	ldrh r1, [r2, #2]
	cmp r0, r1
	bhi _0800A56C
	cmp r1, #0
	beq _0800A56C
	adds r1, r0, #0
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	ldrh r1, [r2, #2]
	bl sub_805AF28
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0800A56E
	.align 2, 0
_0800A568: .4byte 0x02021AB4
_0800A56C:
	movs r3, #0
_0800A56E:
	ldr r2, _0800A5D8
	ldr r1, _0800A5DC
	ldrh r0, [r1]
	strh r0, [r2, #0x28]
	ldrh r0, [r1, #2]
	strh r0, [r2, #0x2a]
	ldrh r0, [r1, #4]
	strh r0, [r2, #0x2c]
	adds r2, #0x28
	ldrb r0, [r2]
	adds r0, #0x19
	adds r0, r0, r3
	strb r0, [r2]
	ldrb r0, [r2, #1]
	movs r1, #0x20
	orrs r0, r1
	movs r3, #0xd
	rsbs r3, r3, #0
	ands r0, r3
	movs r5, #4
	orrs r0, r5
	strb r0, [r2, #1]
	ldrh r4, [r2, #2]
	lsls r1, r4, #0x17
	lsrs r1, r1, #0x17
	ldr r0, _0800A5E0
	adds r1, r1, r0
	ands r1, r0
	ldr r0, _0800A5E4
	ands r0, r4
	orrs r0, r1
	strh r0, [r2, #2]
	ldrh r4, [r2, #4]
	lsls r1, r4, #0x16
	lsrs r1, r1, #0x16
	movs r0, #0x88
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r6, _0800A5E8
	adds r0, r6, #0
	ands r1, r0
	ldr r0, _0800A5EC
	ands r0, r4
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	ands r3, r0
	orrs r3, r5
	strb r3, [r2, #5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A5D8: .4byte 0x02018400
_0800A5DC: .4byte 0x08DFB5FC
_0800A5E0: .4byte 0x000001FF
_0800A5E4: .4byte 0xFFFFFE00
_0800A5E8: .4byte 0x000003FF
_0800A5EC: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_800A5F0
sub_800A5F0: @ 0x0800A5F0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #1
	beq _0800A616
	cmp r0, #1
	bgt _0800A606
	cmp r0, #0
	beq _0800A610
	b _0800A62E
_0800A606:
	cmp r1, #2
	beq _0800A624
	cmp r1, #3
	beq _0800A62A
	b _0800A62E
_0800A610:
	bl sub_800A634
	b _0800A62E
_0800A616:
	bl sub_800A658
	bl sub_0800A6C8
	bl sub_0800A6CC
	b _0800A62E
_0800A624:
	bl sub_0800A6C8
	b _0800A62E
_0800A62A:
	bl sub_0800A6C8
_0800A62E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A634
sub_800A634: @ 0x0800A634
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0800A650
	ldr r2, _0800A654
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0800A650: .4byte 0x02018400
_0800A654: .4byte 0x01000200

	THUMB_FUNC_START sub_800A658
sub_800A658: @ 0x0800A658
	push {r4, r5, lr}
	ldr r0, _0800A6A4
	ldr r4, _0800A6A8
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r0, _0800A6AC
	ldr r5, _0800A6B0
	ldr r2, _0800A6B4
	adds r1, r5, #0
	bl CpuSet
	ldr r0, _0800A6B8
	adds r4, #0x1e
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r4, _0800A6BC
	ldr r0, _0800A6C0
	adds r1, r5, r0
	adds r0, r4, #0
	movs r2, #0x20
	bl CpuSet
	adds r4, #0x40
	ldr r0, _0800A6C4
	adds r5, r5, r0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A6A4: .4byte 0x08091C68
_0800A6A8: .4byte 0x02000362
_0800A6AC: .4byte 0x08090C68
_0800A6B0: .4byte 0x02014800
_0800A6B4: .4byte 0x04000400
_0800A6B8: .4byte 0x08091D28
_0800A6BC: .4byte 0x08091CA8
_0800A6C0: .4byte 0xFFFFE000
_0800A6C4: .4byte 0xFFFFE400

	THUMB_FUNC_START sub_0800A6C8
sub_0800A6C8: @ 0x0800A6C8
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_0800A6CC
sub_0800A6CC: @ 0x0800A6CC
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800A6D0
sub_800A6D0: @ 0x0800A6D0
	push {r4, lr}
	ldr r0, _0800A710
	ldrb r1, [r0, #2]
	strb r1, [r0, #4]
	bl sub_8009448
	bl sub_800A8D8
	bl sub_8045658
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, _0800A714
	bl sub_80081DC
	bl sub_8008220
	movs r4, #1
_0800A6F6:
	bl sub_80086D8
	cmp r0, #0x10
	beq _0800A744
	cmp r0, #0x10
	bgt _0800A71E
	cmp r0, #2
	beq _0800A752
	cmp r0, #2
	bgt _0800A718
	cmp r0, #1
	beq _0800A74A
	b _0800A75C
	.align 2, 0
_0800A710: .4byte gUnkStruct_2020E10
_0800A714: .4byte 0x0800A949
_0800A718:
	cmp r0, #8
	beq _0800A752
	b _0800A75C
_0800A71E:
	cmp r0, #0x40
	beq _0800A732
	cmp r0, #0x40
	bgt _0800A72C
	cmp r0, #0x20
	beq _0800A73E
	b _0800A75C
_0800A72C:
	cmp r0, #0x80
	beq _0800A738
	b _0800A75C
_0800A732:
	bl sub_800A778
	b _0800A760
_0800A738:
	bl sub_800A7C8
	b _0800A760
_0800A73E:
	bl sub_800A818
	b _0800A760
_0800A744:
	bl sub_800A868
	b _0800A760
_0800A74A:
	bl sub_800A8B8
	movs r4, #0
	b _0800A760
_0800A752:
	movs r0, #0x38
	bl sub_8034F60
	movs r4, #0
	b _0800A760
_0800A75C:
	bl sub_8008220
_0800A760:
	cmp r4, #1
	beq _0800A6F6
	movs r0, #7
	bl sub_800A3D8
	bl sub_800ABA8
	bl sub_800A934
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_800A778
sub_800A778: @ 0x0800A778
	push {lr}
	ldr r2, _0800A798
	ldr r0, _0800A79C
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800A7A0
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800A7A6
	.align 2, 0
_0800A798: .4byte gUnkStruct_2020E10
_0800A79C: .4byte 0x08DFB610
_0800A7A0:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800A7A6:
	bl sub_800A8D8
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800A7C4
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800A7C4: .4byte 0x080454C9

	THUMB_FUNC_START sub_800A7C8
sub_800A7C8: @ 0x0800A7C8
	push {lr}
	ldr r2, _0800A7E8
	ldr r0, _0800A7EC
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800A7F0
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800A7F6
	.align 2, 0
_0800A7E8: .4byte gUnkStruct_2020E10
_0800A7EC: .4byte 0x08DFB61B
_0800A7F0:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800A7F6:
	bl sub_800A8D8
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800A814
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800A814: .4byte 0x080454C9

	THUMB_FUNC_START sub_800A818
sub_800A818: @ 0x0800A818
	push {lr}
	ldr r2, _0800A838
	ldr r0, _0800A83C
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800A840
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800A846
	.align 2, 0
_0800A838: .4byte gUnkStruct_2020E10
_0800A83C: .4byte 0x08DFB626
_0800A840:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800A846:
	bl sub_800A8D8
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800A864
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800A864: .4byte 0x080454C9

	THUMB_FUNC_START sub_800A868
sub_800A868: @ 0x0800A868
	push {lr}
	ldr r2, _0800A888
	ldr r0, _0800A88C
	ldrb r1, [r2, #4]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0800A890
	ldrb r0, [r2, #4]
	bl sub_800A380
	b _0800A896
	.align 2, 0
_0800A888: .4byte gUnkStruct_2020E10
_0800A88C: .4byte 0x08DFB631
_0800A890:
	ldrb r0, [r2, #2]
	bl sub_800A380
_0800A896:
	bl sub_800A8D8
	movs r0, #0x36
	bl sub_8034F60
	ldr r0, _0800A8B4
	bl sub_80081DC
	bl sub_8008220
	bl sub_8045674
	pop {r0}
	bx r0
	.align 2, 0
_0800A8B4: .4byte 0x080454C9

	THUMB_FUNC_START sub_800A8B8
sub_800A8B8: @ 0x0800A8B8
	push {lr}
	movs r0, #0x37
	bl sub_8034F60
	ldr r0, _0800A8D4
	ldrb r1, [r0, #4]
	cmp r1, #9
	bhi _0800A8D0
	strb r1, [r0, #2]
	ldrb r0, [r0, #2]
	bl sub_80091EC
_0800A8D0:
	pop {r0}
	bx r0
	.align 2, 0
_0800A8D4: .4byte gUnkStruct_2020E10

	THUMB_FUNC_START sub_800A8D8
sub_800A8D8: @ 0x0800A8D8
	push {r4, r5, lr}
	ldr r3, _0800A91C
	ldr r2, _0800A920
	ldr r5, _0800A924
	ldrb r0, [r5, #4]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _0800A928
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _0800A92C
	str r0, [r3, #4]
	ldrb r0, [r5, #4]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _0800A930
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A91C: .4byte 0x02018430
_0800A920: .4byte 0x08DFB63C
_0800A924: .4byte gUnkStruct_2020E10
_0800A928: .4byte 0x08DFB647
_0800A92C: .4byte 0x0000C120
_0800A930: .4byte 0x40000800

	THUMB_FUNC_START sub_800A934
sub_800A934: @ 0x0800A934
	ldr r1, _0800A944
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0800A944: .4byte 0x02018430

	THUMB_FUNC_START sub_800A948
sub_800A948: @ 0x0800A948
	push {lr}
	bl sub_80454C8
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
	ldr r2, _0800A974
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0800A974: .4byte 0x04000050

	THUMB_FUNC_START sub_800A978
sub_800A978: @ 0x0800A978
	push {lr}
	bl sub_8045718
	ldr r1, _0800AA10
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
	ldr r2, _0800AA14
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800AA18
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800AA1C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #6
	ldr r2, _0800AA20
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _0800AA24
	movs r3, #4
	strh r3, [r0]
	subs r1, #0x4a
	ldr r2, _0800AA28
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800AA2C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800AA30
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800AA34
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0800AA38
	movs r2, #0
	strh r2, [r0]
	ldr r0, _0800AA3C
	strh r2, [r0]
	ldr r1, _0800AA40
	movs r0, #0xf8
	strh r0, [r1]
	ldr r0, _0800AA44
	strh r2, [r0]
	ldr r1, _0800AA48
	movs r0, #0xfd
	strh r0, [r1]
	ldr r0, _0800AA4C
	strh r3, [r0]
	ldr r0, _0800AA50
	strh r2, [r0]
	ldr r0, _0800AA54
	strh r2, [r0]
	bl sub_8045434
	pop {r0}
	bx r0
	.align 2, 0
_0800AA10: .4byte 0x04000040
_0800AA14: .4byte 0x0000486F
_0800AA18: .4byte 0x00001E0E
_0800AA1C: .4byte 0x0000103F
_0800AA20: .4byte 0x000028D2
_0800AA24: .4byte 0x04000054
_0800AA28: .4byte 0x00000F04
_0800AA2C: .4byte 0x00001F0D
_0800AA30: .4byte 0x0000170A
_0800AA34: .4byte 0x00000703
_0800AA38: .4byte 0x02024240
_0800AA3C: .4byte 0x02024214
_0800AA40: .4byte 0x0202422C
_0800AA44: .4byte 0x02024248
_0800AA48: .4byte 0x0202420C
_0800AA4C: .4byte 0x0202424C
_0800AA50: .4byte 0x02024218
_0800AA54: .4byte 0x02024204

	THUMB_FUNC_START sub_800AA58
sub_800AA58: @ 0x0800AA58
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #1
	cmp r0, #8
	bhi _0800AAFE
	lsls r0, r0, #2
	ldr r1, _0800AA70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800AA70: .4byte 0x0800AA74
_0800AA74: @ jump table
	.4byte _0800AA98 @ case 0
	.4byte _0800AAA4 @ case 1
	.4byte _0800AAB0 @ case 2
	.4byte _0800AABC @ case 3
	.4byte _0800AAD4 @ case 4
	.4byte _0800AAC8 @ case 5
	.4byte _0800AAE0 @ case 6
	.4byte _0800AAEC @ case 7
	.4byte _0800AAF8 @ case 8
_0800AA98:
	ldr r0, _0800AAA0
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AAA0: .4byte 0x0800A979
_0800AAA4:
	ldr r0, _0800AAAC
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AAAC: .4byte 0x0800AB0D
_0800AAB0:
	ldr r0, _0800AAB8
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AAB8: .4byte 0x0800AB11
_0800AABC:
	ldr r0, _0800AAC4
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AAC4: .4byte 0x0800AB2D
_0800AAC8:
	ldr r0, _0800AAD0
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AAD0: .4byte 0x0800AB31
_0800AAD4:
	ldr r0, _0800AADC
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AADC: .4byte 0x0800AB35
_0800AAE0:
	ldr r0, _0800AAE8
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AAE8: .4byte 0x0800AB39
_0800AAEC:
	ldr r0, _0800AAF4
	bl sub_80081DC
	b _0800AAFE
	.align 2, 0
_0800AAF4: .4byte 0x0800AB75
_0800AAF8:
	ldr r0, _0800AB08
	bl sub_80081DC
_0800AAFE:
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0800AB08: .4byte 0x0800AB65
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_800AB10
sub_800AB10: @ 0x0800AB10
	push {lr}
	bl sub_80454C8
	bl sub_80454E0
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xfc
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_800AB38
sub_800AB38: @ 0x0800AB38
	push {lr}
	bl sub_80454C8
	bl sub_800ABF8
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0800AB60
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0800AB60: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_800AB64
sub_800AB64: @ 0x0800AB64
	push {lr}
	bl sub_80454C8
	bl sub_80454E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800AB74
sub_800AB74: @ 0x0800AB74
	push {lr}
	bl sub_80454C8
	bl sub_80454E0
	bl sub_800ABF8
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0800ABA0
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0800ABA0: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_0800ABA4
sub_0800ABA4: @ 0x0800ABA4
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800ABA8
sub_800ABA8: @ 0x0800ABA8
	push {lr}
	bl sub_80454F8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800ABB4
sub_800ABB4: @ 0x0800ABB4
	push {lr}
	bl sub_80454E0
	bl sub_8045674
	bl sub_8045690
	bl sub_80456E0
	bl sub_80454C8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800ABD0
sub_800ABD0: @ 0x0800ABD0
	push {lr}
	bl sub_8045674
	bl sub_8045690
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_0800ABE0
sub_0800ABE0: @ 0x0800ABE0
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800ABE4
sub_800ABE4: @ 0x0800ABE4
	push {lr}
	bl sub_8045674
	bl sub_8045690
	bl sub_80456E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800ABF8
sub_800ABF8: @ 0x0800ABF8
	ldr r1, _0800AC3C
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
	ldr r2, _0800AC40
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800AC44
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800AC48
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #6
	ldr r2, _0800AC4C
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
_0800AC3C: .4byte 0x04000040
_0800AC40: .4byte 0x0000486F
_0800AC44: .4byte 0x00001E0E
_0800AC48: .4byte 0x0000103F
_0800AC4C: .4byte 0x000028D2

	THUMB_FUNC_START sub_800AC50
sub_800AC50: @ 0x0800AC50
	push {lr}
	bl sub_8045674
	bl sub_8045690
	bl sub_80456E0
	pop {r0}
	bx r0
	.byte 0x00, 0x00

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
_0800ACC4:
	cmp r4, #9
	bgt _0800ACCE
	cmp r4, #8
	bge _0800AC72
	b _0800ACDC
_0800ACCE:
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

	THUMB_FUNC_START sub_800ACE8
sub_800ACE8: @ 0x0800ACE8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #1
	beq _0800AD1E
	cmp r0, #1
	bgt _0800ACFE
	cmp r0, #0
	beq _0800AD14
	b _0800AD1A
_0800ACFE:
	cmp r1, #2
	beq _0800AD08
	cmp r1, #3
	beq _0800AD0E
	b _0800AD1A
_0800AD08:
	bl sub_800AE1C
	b _0800AD1E
_0800AD0E:
	bl sub_800AE70
	b _0800AD1E
_0800AD14:
	bl sub_800AED0
	b _0800AD1E
_0800AD1A:
	bl sub_800AED0
_0800AD1E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800AD24
sub_800AD24: @ 0x0800AD24
	push {lr}
	bl sub_800AC64
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _0800AD3C
	cmp r0, #2
	ble _0800AD46
	cmp r0, #3
	beq _0800AD42
	b _0800AD46
_0800AD3C:
	bl sub_800AE1C
	b _0800AD46
_0800AD42:
	bl sub_800AE70
_0800AD46:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800AD4C
sub_800AD4C: @ 0x0800AD4C
	push {r4, lr}
	bl sub_80351F8
	bl sub_8035170
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_800B050
	bl sub_800AD84
	adds r0, r4, #0
	bl sub_800B0AC
	bl sub_800B06C
	bl sub_800ADA4
	adds r0, r4, #0
	bl sub_800B0C8
	bl sub_800B034
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800AD84
sub_800AD84: @ 0x0800AD84
	push {lr}
	ldr r1, _0800AD98
	ldr r0, _0800AD9C
	ldr r0, [r0]
	ldr r2, _0800ADA0
	bl sub_80588C4
	pop {r1}
	bx r1
	.align 2, 0
_0800AD98: .4byte 0x0E000040
_0800AD9C: .4byte 0x08E0CD10
_0800ADA0: .4byte 0x00000747

	THUMB_FUNC_START sub_800ADA4
sub_800ADA4: @ 0x0800ADA4
	push {lr}
	ldr r1, _0800ADB8
	ldr r0, _0800ADBC
	ldr r0, [r0]
	ldr r2, _0800ADC0
	bl sub_80588C4
	pop {r1}
	bx r1
	.align 2, 0
_0800ADB8: .4byte 0x0E004020
_0800ADBC: .4byte 0x08E0CD10
_0800ADC0: .4byte 0x00000747

	THUMB_FUNC_START sub_800ADC4
sub_800ADC4: @ 0x0800ADC4
	push {lr}
	ldr r0, _0800ADE0
	ldr r1, [r0]
	ldr r0, _0800ADE4
	ldr r3, _0800ADE8
	ldr r2, _0800ADEC
	ldr r3, [r3]
	bl sub_805AAC4
	bl sub_803519C
	pop {r0}
	bx r0
	.align 2, 0
_0800ADE0: .4byte 0x08E0CD10
_0800ADE4: .4byte 0x0E000040
_0800ADE8: .4byte 0x020245AC
_0800ADEC: .4byte 0x00000747

	THUMB_FUNC_START sub_800ADF0
sub_800ADF0: @ 0x0800ADF0
	push {lr}
	ldr r0, _0800AE0C
	ldr r1, [r0]
	ldr r0, _0800AE10
	ldr r3, _0800AE14
	ldr r2, _0800AE18
	ldr r3, [r3]
	bl sub_805AAC4
	bl sub_803519C
	pop {r0}
	bx r0
	.align 2, 0
_0800AE0C: .4byte 0x08E0CD10
_0800AE10: .4byte 0x0E004020
_0800AE14: .4byte 0x020245AC
_0800AE18: .4byte 0x00000747

	THUMB_FUNC_START sub_800AE1C
sub_800AE1C: @ 0x0800AE1C
	push {r4, r5, lr}
	ldr r5, _0800AE5C
	ldr r1, [r5]
	ldr r0, _0800AE60
	ldr r3, [r0]
	ldr r0, _0800AE64
	ldr r2, _0800AE68
	bl sub_805AAC4
	bl sub_803519C
	bl sub_800B134
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_800B06C
	ldr r0, [r5]
	ldr r1, _0800AE6C
	ldr r2, _0800AE68
	bl sub_80588C4
	adds r0, r4, #0
	bl sub_800B0C8
	bl sub_800B034
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AE5C: .4byte 0x08E0CD10
_0800AE60: .4byte 0x020245AC
_0800AE64: .4byte 0x0E000040
_0800AE68: .4byte 0x00000747
_0800AE6C: .4byte 0x0E004020

	THUMB_FUNC_START sub_800AE70
sub_800AE70: @ 0x0800AE70
	push {r4, r5, lr}
	ldr r5, _0800AEB0
	ldr r1, [r5]
	ldr r0, _0800AEB4
	ldr r3, [r0]
	ldr r0, _0800AEB8
	ldr r2, _0800AEBC
	bl sub_805AAC4
	bl sub_803519C
	bl sub_800B158
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_800B050
	ldr r0, [r5]
	ldr r1, _0800AEC0
	ldr r2, _0800AEBC
	bl sub_80588C4
	adds r0, r4, #0
	bl sub_800B0AC
	bl sub_800B034
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AEB0: .4byte 0x08E0CD10
_0800AEB4: .4byte 0x020245AC
_0800AEB8: .4byte 0x0E004020
_0800AEBC: .4byte 0x00000747
_0800AEC0: .4byte 0x0E000040

	THUMB_FUNC_START sub_800AEC4
sub_800AEC4: @ 0x0800AEC4
	push {lr}
	bl sub_805882C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800AED0
sub_800AED0: @ 0x0800AED0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0800AF60
	ldr r6, [r0]
	movs r5, #0xe0
	lsls r5, r5, #0x14
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0800AF64
	mov r0, sp
	adds r1, r6, #0
	bl CpuSet
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	adds r5, r5, r4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	adds r5, r5, r4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	adds r5, r5, r4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	bl sub_800AFF0
	bl sub_80351F8
	bl sub_8035170
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_800B050
	bl sub_800AD84
	adds r0, r4, #0
	bl sub_800B0AC
	bl sub_800B06C
	bl sub_800ADA4
	adds r0, r4, #0
	bl sub_800B0C8
	bl sub_800B1E4
	bl sub_800B17C
	bl sub_800B034
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AF60: .4byte 0x08E0CD10
_0800AF64: .4byte 0x01001000

	THUMB_FUNC_START sub_800AF68
sub_800AF68: @ 0x0800AF68
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0800AFE4
	ldr r6, [r0]
	movs r5, #0xe0
	lsls r5, r5, #0x14
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0800AFE8
	mov r0, sp
	adds r1, r6, #0
	bl CpuSet
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	adds r5, r5, r4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	adds r5, r5, r4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	adds r5, r5, r4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80588C4
	bl sub_800AFF0
	bl sub_800B050
	ldr r4, _0800AFEC
	adds r0, r4, #0
	bl sub_800B0AC
	bl sub_800B06C
	adds r0, r4, #0
	bl sub_800B0C8
	bl sub_800B1E4
	bl sub_800B17C
	bl sub_800B034
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AFE4: .4byte 0x08E0CD10
_0800AFE8: .4byte 0x01001000
_0800AFEC: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_800AFF0
sub_800AFF0: @ 0x0800AFF0
	push {lr}
	bl sub_800759C
	bl InitTrunkCards
	bl sub_801DA58
	bl sub_801D6C0
	bl sub_801D724
	bl sub_8020168
	bl sub_802712C
	bl sub_802D9F0
	bl sub_8026F3C
	bl sub_80561FC
	bl sub_80554EC
	bl sub_8055FD0
	ldr r0, _0800B030
	bl sub_801FB44
	bl sub_8048CB8
	pop {r0}
	bx r0
	.align 2, 0
_0800B030: .4byte 0x02021C8C

	THUMB_FUNC_START sub_800B034
sub_800B034: @ 0x0800B034
	push {lr}
	sub sp, #4
	movs r1, #0
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

	THUMB_FUNC_START sub_800B050
sub_800B050: @ 0x0800B050
	push {lr}
	sub sp, #4
	movs r1, #1
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

	THUMB_FUNC_START sub_800B06C
sub_800B06C: @ 0x0800B06C
	push {lr}
	sub sp, #4
	movs r1, #2
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

	THUMB_FUNC_START sub_800B088
sub_800B088: @ 0x0800B088
	push {lr}
	sub sp, #4
	movs r0, #0xe0
	lsls r0, r0, #0x14
	ldr r1, _0800B0A8
	ldr r3, [r1]
	mov r1, sp
	movs r2, #1
	bl sub_805AAC4
	mov r0, sp
	ldrb r0, [r0]
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_0800B0A8: .4byte 0x020245AC

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
	bl sub_805AAC4
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
	bl sub_805AAC4
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
	bl sub_805AAC4
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

	THUMB_FUNC_START sub_800B200
sub_800B200: @ 0x0800B200
	push {r4, r5, r6, r7, lr}
	bl sub_80267B8
	movs r4, #0
	ldr r5, _0800B268
_0800B20A:
	lsls r1, r4, #3
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r5]
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r2, _0800B26C
	adds r1, r1, r2
	ldr r2, _0800B270
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x12
	bls _0800B20A
	movs r4, #0x40
	ldr r6, _0800B274
	ldr r7, _0800B278
	ldr r5, _0800B27C
	movs r3, #0x80
	ldr r2, _0800B280
_0800B236:
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r2
	bls _0800B236
	ldr r0, [r6]
	adds r1, r7, #0
	movs r2, #0x80
	bl CpuSet
	ldr r0, _0800B27C
	ldr r0, [r0]
	ldr r1, _0800B284
	movs r2, #0x80
	lsls r2, r2, #6
	bl CpuSet
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B268: .4byte gUnk_8E0136C
_0800B26C: .4byte 0x0200FC62
_0800B270: .4byte 0x04000007
_0800B274: .4byte gUnk_8E01368
_0800B278: .4byte 0x02000100
_0800B27C: .4byte gUnk_8E01364
_0800B280: .4byte 0x00003FFF
_0800B284: .4byte 0x02004400

	THUMB_FUNC_START sub_800B288
sub_800B288: @ 0x0800B288
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0800B296
	cmp r4, #2
	bne _0800B29A
_0800B296:
	bl sub_800B200
_0800B29A:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0800B2A8
	bl sub_800B2B0
_0800B2A8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800B2B0
sub_800B2B0: @ 0x0800B2B0
	push {r4, r5, r6, lr}
	bl sub_80267B8
	movs r4, #0
	ldr r6, _0800B2FC
_0800B2BA:
	lsls r1, r4, #3
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r6]
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _0800B300
	adds r1, r1, r5
	ldr r2, _0800B304
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x12
	bls _0800B2BA
	ldr r0, _0800B308
	ldr r0, [r0]
	ldr r1, _0800B30C
	movs r2, #0x80
	bl CpuSet
	ldr r0, _0800B310
	ldr r0, [r0]
	ldr r2, _0800B314
	adds r1, r5, r2
	movs r2, #0x80
	lsls r2, r2, #6
	bl CpuSet
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B2FC: .4byte gUnk_8E0136C
_0800B300: .4byte 0x0200F440
_0800B304: .4byte 0x04000007
_0800B308: .4byte gUnk_8E01368
_0800B30C: .4byte 0x02000000
_0800B310: .4byte gUnk_8E01364
_0800B314: .4byte 0xFFFF0FC0
