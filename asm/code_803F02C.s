  .INCLUDE "asm/macro.inc"
  .SYNTAX UNIFIED

	THUMB_FUNC_START InitBMenu
InitBMenu: @ 0x08042398
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	movs r6, #0
_080423AC:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _0804273C
	adds r0, r0, r1
	lsls r1, r6, #6
	ldr r4, _08042740
	adds r1, r1, r4
	ldr r2, _08042744
	bl CpuSet
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x11
	bls _080423AC
	ldr r0, _08042748
	ldr r2, _0804274C
	adds r1, r4, r2
	movs r2, #0x40
	bl CpuSet
	ldr r3, _08042750
	adds r0, r4, r3
	ldr r1, _08042754
	ldr r2, _08042758
	bl sub_8020A3C
	ldr r1, _0804275C
	adds r0, r4, r1
	ldr r1, _08042760
	ldr r2, _08042764
	bl sub_8020A3C
	movs r4, #0xe8
	lsls r4, r4, #8
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08007FEC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0x14
	movs r1, #1
	adds r2, r4, #0
	bl sub_08007FEC
	movs r2, #0xff
	lsls r2, r2, #8
	mov r8, r2
	mov r3, r8
	ands r3, r0
	mov r8, r3
	movs r6, #0
	adds r7, r4, #0
_0804241E:
	adds r5, r6, #4
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r4, r6, #0
	adds r4, #0x4e
	mov r0, r8
	orrs r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	movs r1, #6
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_800800C
	adds r0, r5, #0
	movs r1, #0xc
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0804241E
	movs r4, #0xe8
	lsls r4, r4, #8
	movs r0, #8
	movs r1, #6
	adds r2, r4, #0
	mov r3, sb
	bl sub_800800C
	movs r0, #8
	movs r1, #0xc
	adds r2, r4, #0
	mov r3, sb
	bl sub_800800C
	movs r6, #0
	adds r7, r4, #0
_08042472:
	adds r5, r6, #0
	adds r5, #0xb
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r4, r6, #0
	adds r4, #0x52
	mov r1, r8
	orrs r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	movs r1, #6
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_800800C
	adds r0, r5, #0
	movs r1, #0xc
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #5
	bls _08042472
	movs r6, #0
	movs r7, #0xe8
	lsls r7, r7, #8
_080424AE:
	adds r4, r6, #5
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08042768
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #0x58
	mov r2, r8
	orrs r3, r2
	adds r0, r4, #0
	movs r1, #1
	adds r2, r7, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x5a
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #2
	adds r2, r7, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x6c
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #3
	adds r2, r7, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x6e
	mov r2, r8
	orrs r3, r2
	adds r0, r4, #0
	movs r1, #4
	adds r2, r7, #0
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #9
	bls _080424AE
	movs r6, #0
	movs r5, #0xe8
	lsls r5, r5, #8
_08042510:
	adds r4, r6, #0
	adds r4, #0xf
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #3
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r4, #0
	movs r1, #4
	adds r2, r5, #0
	mov r3, sb
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08042510
	movs r6, #0
	movs r7, #0xe8
	lsls r7, r7, #8
_08042540:
	adds r5, r6, #0
	adds r5, #0x11
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r4, _08042768
	adds r4, r6, r4
	ldrb r3, [r4]
	adds r3, #0x80
	mov r0, r8
	orrs r3, r0
	adds r0, r5, #0
	movs r1, #1
	adds r2, r7, #0
	bl sub_800800C
	ldrb r3, [r4]
	adds r3, #0x82
	mov r1, r8
	orrs r3, r1
	adds r0, r5, #0
	movs r1, #2
	adds r2, r7, #0
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #9
	bls _08042540
	movs r6, #0
	movs r7, #0xe8
	lsls r7, r7, #8
_08042580:
	adds r4, r6, #5
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08042768
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #0x94
	mov r2, r8
	orrs r3, r2
	adds r0, r4, #0
	movs r1, #9
	adds r2, r7, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x96
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r7, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xbc
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r7, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0xbe
	mov r2, r8
	orrs r3, r2
	adds r0, r4, #0
	movs r1, #0x10
	adds r2, r7, #0
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _08042580
  ldr r0, _0804276C
	adds r0, #0xf4
	ldrh r0, [r0]
	bl SetCardInfo
	movs r6, #0
	movs r4, #0
	ldr r0, _08042770
	ldr r0, [r0]
	bl sub_8020824
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0804263C
	ldr r5, _08042774
	cmp r0, #0x24
	beq _0804263C
_08042600:
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _08042618
	mov r3, sp
	adds r0, r3, r6
	strb r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r2, #1
_08042618:
	mov r0, sp
	adds r1, r0, r6
	ldrb r0, [r2]
	strb r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r2, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bhi _08042662
	ldrb r0, [r2]
	cmp r0, #0
	beq _0804263C
	cmp r0, #0x24
	bne _08042600
_0804263C:
	ldr r5, _08042774
	cmp r4, #0x13
	bhi _08042662
	movs r2, #0x81
	movs r1, #0x40
_08042646:
	mov r3, sp
	adds r0, r3, r6
	strb r2, [r0]
	adds r0, r6, #1
	add r0, sp
	strb r1, [r0]
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _08042646
_08042662:
	mov r0, sp
	adds r1, r0, r6
	movs r0, #0
	strb r0, [r1]
	ldr r2, _08042764
	adds r0, r5, #0
	mov r1, sp
	bl sub_8020A3C
	ldr r0, _0804276C
	adds r0, #0xf8
	ldrh r0, [r0]
	bl SetCardInfo
	movs r6, #0
	movs r4, #0
	ldr r0, _08042770
	ldr r0, [r0]
	bl sub_8020824
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080426D6
	ldr r1, _08042778
	adds r5, r5, r1
	cmp r0, #0x24
	beq _080426D6
_0804269A:
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080426B2
	mov r3, sp
	adds r0, r3, r6
	strb r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r2, #1
_080426B2:
	mov r0, sp
	adds r1, r0, r6
	ldrb r0, [r2]
	strb r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r2, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bhi _080426FC
	ldrb r0, [r2]
	cmp r0, #0
	beq _080426D6
	cmp r0, #0x24
	bne _0804269A
_080426D6:
	ldr r5, _0804277C
	cmp r4, #0x13
	bhi _080426FC
	movs r2, #0x81
	movs r1, #0x40
_080426E0:
	mov r3, sp
	adds r0, r3, r6
	strb r2, [r0]
	adds r0, r6, #1
	add r0, sp
	strb r1, [r0]
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _080426E0
_080426FC:
	mov r0, sp
	adds r1, r0, r6
	movs r0, #0
	strb r0, [r1]
	ldr r2, _08042764
	adds r0, r5, #0
	mov r1, sp
	bl sub_8020A3C
  
  
	ldr r0, _08042780
	ldrh r0, [r0]
	movs r1, #0
	bl sub_800DDA0
	movs r6, #0
	ldr r1, _08042784
	adds r7, r5, r1
	ldr r5, _08042788
	ldr r4, _0804278C
	movs r3, #4
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r2, r0, #0
_0804272A:
	subs r1, r5, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	subs r0, r3, r6
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r0, #0x41
	orrs r0, r2
	b _08042790
	.align 2, 0
_0804273C: .4byte 0x080F13D0
_08042740: .4byte 0x0200EC00
_08042744: .4byte 0x04000010
_08042748: .4byte 0x080F30E0
_0804274C: .4byte 0xFFFF9FA0
_08042750: .4byte 0xFFFFA020
_08042754: .4byte 0x08E0D668
_08042758: .4byte 0x00000801
_0804275C: .4byte 0xFFFFA300
_08042760: .4byte 0x08E0D753
_08042764: .4byte 0x00000901
_08042768: .4byte gUnk_8DF811C
_0804276C: .4byte gDuel
_08042770: .4byte gCardInfo
_08042774: .4byte 0x02009B80
_08042778: .4byte 0xFFFFFB00
_0804277C: .4byte 0x02009680
_08042780: .4byte gLifePoints
_08042784: .4byte 0xFFFF6D80
_08042788: .4byte 0x000075AC
_0804278C: .4byte 0x02021BD0
_08042790:
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0804272A
	ldr r0, _080427F4
	ldrh r0, [r0, #2]
	movs r1, #0
	bl sub_800DDA0
	movs r6, #0
	ldr r7, _080427F8
	ldr r5, _080427FC
	ldr r4, _08042800
	movs r3, #4
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r2, r0, #0
_080427B6:
	subs r1, r5, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	subs r0, r3, r6
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r0, #0x41
	orrs r0, r2
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _080427B6
  
  
  
  
	movs r0, #0
	bl sub_8043E9C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	bl sub_8043E70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r4
	blo _08042804
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08042806
	.align 2, 0
_080427F4: .4byte gLifePoints
_080427F8: .4byte 0x02000400
_080427FC: .4byte 0x000074EC
_08042800: .4byte 0x02021BD0
_08042804:
	movs r0, #0
_08042806:
	movs r1, #0
	bl sub_800DDA0
  
  
	movs r6, #0
	ldr r7, _08042858
	ldr r5, _0804285C
	ldr r4, _08042860
	movs r3, #4
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r2, r0, #0
_0804281C:
	subs r1, r5, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	subs r0, r3, r6
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r0, #0x41
	orrs r0, r2
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0804281C
	movs r0, #1
	bl sub_8043E9C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #1
	bl sub_8043E70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r4
	blo _08042864
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08042866
	.align 2, 0
_08042858: .4byte 0x02000400
_0804285C: .4byte 0x0000758A
_08042860: .4byte 0x02021BD0
_08042864:
	movs r0, #0
_08042866:
	movs r1, #0
	bl sub_800DDA0
	movs r6, #0
	ldr r7, _080428E0
	ldr r5, _080428E4
	ldr r4, _080428E8
	movs r3, #4
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r2, r0, #0
_0804287C:
	subs r1, r5, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	subs r0, r3, r6
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r0, #0x41
	orrs r0, r2
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0804287C
	mov r0, sl
	bl sub_80428EC
	bl sub_8008220
	bl sub_8041014
  
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xec
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x42
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x98
	strh r0, [r1]
	adds r1, #3
	movs r0, #0x36
	strb r0, [r1]
	adds r1, #0xb
	movs r0, #7
	strh r0, [r1]
	subs r1, #0xa
	movs r0, #0x1f
	strh r0, [r1]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080428E0: .4byte 0x02000400
_080428E4: .4byte 0x000074CA
_080428E8: .4byte 0x02021BD0

	THUMB_FUNC_START sub_80428EC
sub_80428EC: @ 0x080428EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r4, #0
	ldr r3, _08042940
	ldr r6, _08042944
	movs r5, #0xe0
	lsls r5, r5, #7
	ldr r1, _08042948
	mov ip, r1
_08042904:
	cmp r7, r4
	beq _0804294C
	lsls r1, r4, #1
	adds r1, r1, r6
	ldrh r0, [r1]
	lsrs r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r5, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #1
	adds r0, #2
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r5, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #1
	adds r0, #0x21
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r5, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #1
	adds r0, #0x22
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r5, [r0]
	b _08042988
	.align 2, 0
_08042940: .4byte 0x02000400
_08042944: .4byte 0x08E0D814
_08042948: .4byte 0x0000703D
_0804294C:
	lsls r2, r4, #1
	adds r2, r2, r6
	ldrh r0, [r2]
	lsrs r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	mov r1, ip
	strh r1, [r0]
	ldrh r0, [r2]
	lsrs r0, r0, #1
	adds r0, #2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldr r1, _0804299C
	strh r1, [r0]
	ldrh r0, [r2]
	lsrs r0, r0, #1
	adds r0, #0x21
	lsls r0, r0, #1
	adds r0, r0, r3
	adds r1, #1
	strh r1, [r0]
	ldrh r0, [r2]
	lsrs r0, r0, #1
	adds r0, #0x22
	lsls r0, r0, #1
	adds r0, r0, r3
	adds r1, #1
	strh r1, [r0]
_08042988:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08042904
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804299C: .4byte 0x0000703E
	.byte 0x01, 0x20, 0x70, 0x47

	THUMB_FUNC_START sub_80429A4
sub_80429A4: @ 0x080429A4
	push {r4, r5, r6, lr}
	movs r4, #0
	movs r0, #0
	bl sub_8042ADC
	ldr r6, _080429C8
	ldr r5, _080429CC
_080429B2:
	ldr r0, _080429D0
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080429D8
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _080429D4
	b _08042A18
	.align 2, 0
_080429C8: .4byte gZones
_080429CC: .4byte gCursorPosition
_080429D0: .4byte g2020DF4
_080429D4: .4byte 0x08E0D922
_080429D8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080429F0
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _080429EC
	b _08042A18
	.align 2, 0
_080429EC: .4byte 0x08E0D926
_080429F0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08042A08
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _08042A04
	b _08042A18
	.align 2, 0
_08042A04: .4byte 0x08E0D92E
_08042A08:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08042A30
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _08042A2C
_08042A18:
	adds r0, r4, r0
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_8042C64
	bl sub_8008220
	bl sub_8041014
	b _080429B2
	.align 2, 0
_08042A2C: .4byte 0x08E0D92A
_08042A30:
	ldr r2, _08042A4C
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08042A6A
	cmp r4, #1
	beq _08042A5E
	cmp r4, #1
	bgt _08042A50
	cmp r4, #0
	beq _08042A5A
	b _08042A6A
	.align 2, 0
_08042A4C: .4byte gUnk2020DFC
_08042A50:
	cmp r4, #2
	beq _08042A62
	cmp r4, #3
	beq _08042A66
	b _08042A6A
_08042A5A:
	movs r0, #1
	b _08042AD4
_08042A5E:
	movs r0, #2
	b _08042AD4
_08042A62:
	movs r0, #3
	b _08042AD4
_08042A66:
	movs r0, #4
	b _08042AD4
_08042A6A:
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08042A7E
	movs r0, #0x38
	bl PlayMusic
	movs r0, #5
	b _08042AD4
_08042A7E:
	cmp r4, #1
	bhi _08042AC8
	cmp r4, #0
	bne _08042AA2
	ldrb r1, [r5, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	b _08042AB8
_08042AA2:
	ldrb r1, [r5, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #2
	orrs r0, r1
_08042AB8:
	strb r0, [r2, #5]
	ldrb r0, [r5]
	ldrb r1, [r5, #1]
	bl sub_80574A8
	ldr r0, _08042AD0
	bl sub_80081DC
_08042AC8:
	bl sub_8008220
	b _080429B2
	.align 2, 0
_08042AD0: .4byte LoadOam
_08042AD4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8042ADC
sub_8042ADC: @ 0x08042ADC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r6, #0
_08042AEC:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _08042C34
	adds r0, r0, r1
	lsls r1, r6, #6
	ldr r4, _08042C38
	adds r1, r1, r4
	movs r2, #0x20
	bl CpuSet
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x11
	bls _08042AEC
	ldr r0, _08042C3C
	ldr r2, _08042C40
	adds r1, r4, r2
	movs r2, #0x40
	bl CpuSet
	movs r4, #0xe8
	lsls r4, r4, #8
	movs r0, #4
	movs r1, #3
	adds r2, r4, #0
	bl sub_08007FEC
	movs r7, #0xff
	lsls r7, r7, #8
	ands r7, r0
	movs r6, #0
	mov r8, r4
_08042B30:
	adds r4, r6, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08042C44
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #0x41
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #3
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x43
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #4
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x51
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #5
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x53
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #6
	mov r2, r8
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _08042B30
	movs r6, #0
	movs r0, #0xe8
	lsls r0, r0, #8
	mov r8, r0
_08042B8C:
	adds r4, r6, #0
	adds r4, #0xe
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08042C44
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #0x61
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #3
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x63
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #4
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x79
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #5
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x7b
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #6
	mov r2, r8
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xb
	bls _08042B8C
	ldr r0, _08042C48
	ldr r1, _08042C4C
	ldr r2, _08042C50
	bl sub_8020A3C
	mov r0, sb
	bl sub_8042C64
	bl sub_8008220
	ldr r1, _08042C54
	ldr r2, _08042C58
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08042C5C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #3
	movs r0, #0x36
	strb r0, [r1]
	bl sub_8041014
	ldr r1, _08042C60
	movs r0, #0xa
	strh r0, [r1]
	subs r1, #0xa
	movs r0, #0x1f
	strh r0, [r1]
	subs r1, #0x4a
	movs r2, #0xec
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042C34: .4byte 0x080F1880
_08042C38: .4byte 0x0200EC00
_08042C3C: .4byte 0x080F30E0
_08042C40: .4byte 0xFFFF9FA0
_08042C44: .4byte gUnk_8DF811C
_08042C48: .4byte 0x02008C20
_08042C4C: .4byte 0x08E0D828
_08042C50: .4byte 0x00000901
_08042C54: .4byte 0x04000042
_08042C58: .4byte 0x00000CD4
_08042C5C: .4byte 0x0000143C
_08042C60: .4byte 0x04000054

	THUMB_FUNC_START sub_8042C64
sub_8042C64: @ 0x08042C64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r4, #0
	ldr r3, _08042CB4
	ldr r6, _08042CB8
	movs r5, #0xe0
	lsls r5, r5, #7
	ldr r1, _08042CBC
	mov ip, r1
_08042C7C:
	cmp r7, r4
	beq _08042CC0
	lsls r1, r4, #1
	adds r1, r1, r6
	ldrh r0, [r1]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r5, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r5, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #1
	adds r0, #0x20
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r5, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #1
	adds r0, #0x21
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r5, [r0]
	b _08042CFA
	.align 2, 0
_08042CB4: .4byte 0x02000400
_08042CB8: .4byte 0x08E0D91A
_08042CBC: .4byte 0x0000703D
_08042CC0:
	lsls r2, r4, #1
	adds r2, r2, r6
	ldrh r0, [r2]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	mov r1, ip
	strh r1, [r0]
	ldrh r0, [r2]
	lsrs r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldr r1, _08042D10
	strh r1, [r0]
	ldrh r0, [r2]
	lsrs r0, r0, #1
	adds r0, #0x20
	lsls r0, r0, #1
	adds r0, r0, r3
	adds r1, #1
	strh r1, [r0]
	ldrh r0, [r2]
	lsrs r0, r0, #1
	adds r0, #0x21
	lsls r0, r0, #1
	adds r0, r0, r3
	adds r1, #1
	strh r1, [r0]
_08042CFA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08042C7C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042D10: .4byte 0x0000703E

	THUMB_FUNC_START sub_8042D14
sub_8042D14: @ 0x08042D14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
_08042D20:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08042DC8
	adds r0, r0, r1
	lsls r1, r5, #6
	ldr r2, _08042DCC
	adds r1, r1, r2
	ldr r2, _08042DD0
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3f
	bls _08042D20
	movs r5, #0
	ldr r0, _08042DD4
	mov sb, r0
	ldr r7, _08042DD8
	ldr r1, _08042DDC
	adds r6, r1, #0
_08042D4C:
	movs r2, #0
	mov r8, r2
	adds r0, r5, #1
	mov sl, r0
_08042D54:
	mov r0, r8
	adds r1, r5, #0
	bl sub_8057790
	adds r4, r0, #0
	mov r0, r8
	adds r1, r5, #0
	bl sub_80575E0
	adds r4, #0x18
	lsls r4, r4, #3
	movs r1, #0xfc
	lsls r1, r1, #4
	ands r4, r1
	cmp r0, #0
	bge _08042D76
	adds r0, #3
_08042D76:
	asrs r0, r0, #2
	adds r0, r4, r0
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #1
	ldr r1, _08042DE0
	adds r4, r0, r1
	adds r0, r5, #0
	mov r1, r8
	bl sub_8044074
	cmp r0, #1
	bne _08042DEC
	ldr r0, _08042DE4
	lsls r1, r5, #2
	adds r1, r1, r5
	add r1, r8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r0, [r0]
	mov r2, sb
	strh r0, [r2]
	ldr r0, _08042DE8
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r2, #2]
	ldr r0, [r1]
	bl sub_804069C
	mov r1, sb
	strb r0, [r1, #3]
	mov r0, sb
	bl SetFinalStat
	b _08042DF2
	.align 2, 0
_08042DC8: .4byte 0x080F1D30
_08042DCC: .4byte 0x0200F400
_08042DD0: .4byte 0x04000010
_08042DD4: .4byte gStatMod
_08042DD8: .4byte 0x02021BD0
_08042DDC: .4byte 0x0000303D
_08042DE0: .4byte 0x02000400
_08042DE4: .4byte gUnk2024040
_08042DE8: .4byte gDuel
_08042DEC:
	movs r0, #0
	bl SetCardInfo
_08042DF2:
	ldr r2, _08042E7C
	ldrh r0, [r2, #0x12]
	movs r1, #0
	bl sub_800DDA0
	ldrb r1, [r7]
	adds r0, r6, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r2, [r7, #1]
	adds r0, r6, r2
	strh r0, [r4]
	adds r4, #2
	ldrb r1, [r7, #2]
	adds r0, r6, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r2, [r7, #3]
	adds r0, r6, r2
	strh r0, [r4]
	adds r4, #2
	ldrb r1, [r7, #4]
	adds r0, r6, r1
	strh r0, [r4]
	adds r4, #0x38
	ldr r2, _08042E7C
	ldrh r0, [r2, #0x14]
	movs r1, #0
	bl sub_800DDA0
	ldrb r1, [r7]
	adds r0, r6, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r2, [r7, #1]
	adds r0, r6, r2
	strh r0, [r4]
	adds r4, #2
	ldrb r1, [r7, #2]
	adds r0, r6, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r2, [r7, #3]
	adds r0, r6, r2
	strh r0, [r4]
	ldrb r1, [r7, #4]
	adds r0, r6, r1
	strh r0, [r4, #2]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bhi _08042E62
	b _08042D54
_08042E62:
	mov r2, sl
	lsls r0, r2, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bhi _08042E6E
	b _08042D4C
_08042E6E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042E7C: .4byte gCardInfo

	THUMB_FUNC_START sub_8042E80
sub_8042E80: @ 0x08042E80
	push {lr}
	bl sub_8042D14
	ldr r0, _08042EE0
	ldr r1, _08042EE4
	ldr r2, _08042EE8
	bl sub_8020A3C
	ldr r1, _08042EEC
	ldr r2, _08042EF0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08042EF4
	ldr r0, _08042EF8
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08042EFC
	ldr r0, _08042F00
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_8008220
	bl sub_8041050
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xee
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x42
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x98
	strh r0, [r1]
	adds r1, #3
	movs r0, #0x35
	strb r0, [r1]
	adds r1, #0xb
	movs r0, #7
	strh r0, [r1]
	subs r1, #0xa
	movs r0, #0x1e
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08042EE0: .4byte 0x02008BA0
_08042EE4: .4byte 0x08E0D934
_08042EE8: .4byte 0x00000801
_08042EEC: .4byte 0x04000008
_08042EF0: .4byte 0x00009E08
_08042EF4: .4byte gBG0HOFS
_08042EF8: .4byte gBG2HOFS
_08042EFC: .4byte gBG0VOFS
_08042F00: .4byte gBG2VOFS

	THUMB_FUNC_START sub_8042F04
sub_8042F04: @ 0x08042F04
	push {r4, r5, lr}
	bl sub_8042E80
	ldr r3, _08042F40
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08042F2A
	adds r5, r3, #0
	adds r4, r2, #0
_08042F1E:
	bl sub_8008220
	ldrh r0, [r5]
	ands r0, r4
	cmp r0, #0
	bne _08042F1E
_08042F2A:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xd8
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_8008220
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08042F40: .4byte gKeyState

.section .text2


	THUMB_FUNC_START sub_8044B90
sub_8044B90: @ 0x08044B90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r1, _08044C04
	mov r0, sp
	movs r2, #5
	bl memcpy
	movs r6, #0
	ldr r0, _08044C08
	mov r8, r0
_08044BA8:
	movs r0, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	mov r1, r8
	adds r7, r0, r1
	ldr r2, [r7]
	ldrh r5, [r2]
	cmp r5, #0
	beq _08044C16
	movs r1, #3
	ands r1, r6
	lsls r1, r1, #8
	lsrs r0, r6, #2
	lsls r0, r0, #0xc
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	orrs r1, r0
	ldr r0, _08044C0C
	adds r4, r1, r0
	ldrb r1, [r2, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08044C10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80573D0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80576B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80576EC
	ldr r1, [r7]
	adds r0, r4, #0
	bl sub_80572A8
	ldr r1, [r7]
	adds r0, r4, #0
	bl sub_805733C
	b _08044C16
	.align 2, 0
_08044C04: .4byte 0x08102E24
_08044C08: .4byte gHands+0x14
_08044C0C: .4byte 0x02000400
_08044C10:
	adds r0, r4, #0
	bl sub_8057474
_08044C16:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _08044BA8
	ldr r0, _08044CE8
	bl sub_8057418
	movs r6, #0
	ldr r3, _08044CEC
	movs r7, #0
	adds r4, r3, #0
	movs r5, #0xa0
_08044C30:
	lsls r0, r6, #3
	adds r0, r0, r3
	strh r5, [r0]
	lsls r2, r6, #2
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
	strh r7, [r2]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r0, #0
	bge _08044C30
	movs r6, #0
	mov ip, r6
	movs r0, #4
	rsbs r0, r0, #0
	mov r8, r0
	ldr r7, _08044CF0
	ldr r5, _08044CF4
_08044C6E:
	lsls r3, r6, #3
	adds r3, r3, r4
	movs r0, #0x18
	strb r0, [r3]
	ldrb r1, [r3, #1]
	mov r0, r8
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #1]
	mov r1, sp
	adds r0, r1, r6
	ldrb r2, [r0]
	ldrh r1, [r3, #2]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	movs r1, #3
	ands r1, r6
	lsls r1, r1, #3
	lsrs r0, r6, #2
	lsls r0, r0, #7
	adds r1, r1, r0
	ldr r2, _08044CF8
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #4]
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r0, ip
	strh r0, [r3, #6]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _08044C6E
	movs r0, #0
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r4, #6]
	strh r0, [r4, #0xe]
	strh r0, [r4, #0x16]
	ldr r0, _08044CFC
	strh r0, [r4, #0x1e]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08044CE8: .4byte 0x02000200
_08044CEC: .4byte gOamBuffer
_08044CF0: .4byte 0xFFFFFE00
_08044CF4: .4byte 0xFFFFFC00
_08044CF8: .4byte 0x000003FF
_08044CFC: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_8044D00
sub_8044D00: @ 0x08044D00
	push {lr}
	bl sub_803EE44
	bl sub_8044D34
	bl sub_8044B90
	ldr r0, _08044D2C
	bl sub_80081DC
	bl sub_8008220
	bl sub_8044DAC
	ldr r0, _08044D30
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_08044D2C: .4byte 0x08045719
_08044D30: .4byte 0x08044DC9

	THUMB_FUNC_START sub_8044D34
sub_8044D34: @ 0x08044D34
	push {r4, r5, r6, lr}
	ldr r1, _08044D90
	ldr r4, _08044D94
	adds r4, #0xf0
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08044D98
	bl HuffUnComp
	movs r5, #0
	ldr r6, _08044D9C
_08044D4E:
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r1, r5, #5
	subs r1, r1, r5
	lsls r1, r1, #1
	ldr r0, [r0]
	adds r0, r0, r1
	lsls r1, r5, #6
	ldr r2, _08044DA0
	adds r1, r1, r2
	movs r2, #0x1f
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _08044D4E
	ldr r1, _08044DA4
	ldr r0, _08044D94
	adds r0, #0xf0
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08044DA8
	movs r2, #0x30
	bl CpuSet
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044D90: .4byte 0x08E0D960
_08044D94: .4byte gDuel
_08044D98: .4byte 0x02000400
_08044D9C: .4byte 0x08E0D97C
_08044DA0: .4byte 0x0200FC00
_08044DA4: .4byte 0x08E0D998
_08044DA8: .4byte 0x02000000

	THUMB_FUNC_START sub_8044DAC
sub_8044DAC: @ 0x08044DAC
	push {lr}
	bl LoadCharblock0
	bl LoadCharblock3
	bl LoadCharblock4
	bl LoadCharblock5
	bl LoadPalettes
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8044DC8
sub_8044DC8: @ 0x08044DC8
	push {lr}
	bl LoadOam
	ldr r0, _08044E1C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08044E20
	strh r1, [r0]
	ldr r0, _08044E24
	strh r1, [r0]
	ldr r0, _08044E28
	strh r1, [r0]
	ldr r0, _08044E2C
	strh r1, [r0]
	ldr r0, _08044E30
	strh r1, [r0]
	ldr r2, _08044E34
	movs r0, #4
	strh r0, [r2]
	ldr r0, _08044E38
	strh r1, [r0]
	ldr r0, _08044E3C
	strh r1, [r0]
	ldr r0, _08044E40
	strh r1, [r0]
	ldr r0, _08044E44
	strh r1, [r0]
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r1, _08044E48
	ldr r2, _08044E4C
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08044E1C: .4byte gBG0HOFS
_08044E20: .4byte gBG0VOFS
_08044E24: .4byte gBG1HOFS
_08044E28: .4byte gBG1VOFS
_08044E2C: .4byte gBG2HOFS
_08044E30: .4byte gBG2VOFS
_08044E34: .4byte gBG3HOFS
_08044E38: .4byte gBG3VOFS
_08044E3C: .4byte gBLDCNT
_08044E40: .4byte gBLDALPHA
_08044E44: .4byte gBLDY
_08044E48: .4byte 0x0400000E
_08044E4C: .4byte 0x00001F03

	THUMB_FUNC_START sub_8044E50
sub_8044E50: @ 0x08044E50
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r5, #1
	adds r4, r4, r0
	cmp r5, r6
	bhi _08044EC2
	movs r0, #0xf8
	lsls r0, r0, #2
	mov ip, r0
	movs r7, #0xf8
	lsls r7, r7, #7
_08044E6E:
	ldrh r0, [r4]
	movs r1, #0x1f
	ands r1, r0
	mov r3, ip
	ands r3, r0
	lsrs r3, r3, #5
	adds r2, r7, #0
	ands r2, r0
	lsrs r2, r2, #0xa
	movs r0, #0x4d
	muls r1, r0, r1
	movs r0, #0x97
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	lsls r2, r1, #4
	subs r2, r2, r1
	asrs r2, r2, #4
	movs r0, #0xc8
	muls r0, r1, r0
	asrs r0, r0, #8
	lsls r0, r0, #5
	orrs r2, r0
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r1
	asrs r0, r0, #8
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r4]
	adds r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	bls _08044E6E
_08044EC2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8044EC8
sub_8044EC8: @ 0x08044EC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r0, r1, #1
	adds r7, r7, r0
	cmp sl, r2
	bhi _08044F6E
_08044EF0:
	ldrh r4, [r7]
	movs r5, #0x1f
	ands r5, r4
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r0, r1, #0
	adds r6, r4, #0
	ands r6, r0
	lsrs r6, r6, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r1, #0
	ands r4, r0
	lsrs r4, r4, #0xa
	ldr r0, [sp, #4]
	movs r1, #0x10
	bl fix_div
	adds r1, r0, #0
	adds r0, r5, #0
	bl fix_mul
	mov sb, r0
	ldr r0, [sp, #4]
	movs r1, #0x10
	bl fix_div
	adds r1, r0, #0
	adds r0, r6, #0
	bl fix_mul
	mov r8, r0
	ldr r0, [sp, #4]
	movs r1, #0x10
	bl fix_div
	adds r1, r0, #0
	adds r0, r4, #0
	bl fix_mul
	mov r1, sb
	subs r5, r5, r1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r1, r8
	subs r6, r6, r1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x13
	orrs r5, r6
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0xe
	orrs r5, r4
	strh r5, [r7]
	adds r7, #2
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [sp]
	cmp sl, r0
	bls _08044EF0
_08044F6E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8044F80
sub_8044F80: @ 0x08044F80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r0, r1, #1
	add r8, r0
	cmp sb, r2
	bhi _0804504C
_08044FA8:
	mov r0, r8
	ldrh r1, [r0]
	movs r7, #0x1f
	ands r7, r1
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	lsrs r0, r0, #5
	str r0, [sp, #4]
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r0, r2, #0
	ands r1, r0
	lsrs r1, r1, #0xa
	str r1, [sp, #8]
	mov r0, sl
	cmp r0, #0x10
	bne _08044FD8
	ldr r0, _08044FD4
	b _08045034
	.align 2, 0
_08044FD4: .4byte 0x00007FFF
_08044FD8:
	movs r1, #0x1f
	subs r4, r1, r7
	mov r0, sl
	movs r1, #0x10
	bl fix_div
	adds r1, r0, #0
	adds r0, r4, #0
	bl fix_mul
	adds r5, r0, #0
	movs r2, #0x1f
	ldr r0, [sp, #4]
	subs r4, r2, r0
	mov r0, sl
	movs r1, #0x10
	bl fix_div
	adds r1, r0, #0
	adds r0, r4, #0
	bl fix_mul
	adds r4, r0, #0
	movs r1, #0x1f
	ldr r2, [sp, #8]
	subs r6, r1, r2
	mov r0, sl
	movs r1, #0x10
	bl fix_div
	adds r1, r0, #0
	adds r0, r6, #0
	bl fix_mul
	adds r5, r7, r5
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, [sp, #4]
	adds r4, r1, r4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x13
	orrs r5, r4
	ldr r2, [sp, #8]
	adds r0, r2, r0
	lsls r0, r0, #0xa
	orrs r0, r5
_08045034:
	mov r1, r8
	strh r0, [r1]
	movs r2, #2
	add r8, r2
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, [sp]
	cmp sb, r0
	bls _08044FA8
_0804504C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

  thumb_func_start sub_804505C
sub_804505C: @ 0x0804505C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r3, #0x4d
	muls r0, r3, r0
	movs r3, #0x97
	muls r1, r3, r1
	adds r0, r0, r1
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_8045080
sub_8045080: @ 0x08045080
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r3, #0x4d
	muls r3, r0, r3
	movs r0, #0x97
	muls r0, r1, r0
	adds r3, r3, r0
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r3, r3, r0
	lsls r3, r3, #8
	lsrs r3, r3, #0x10
	lsls r0, r3, #5
	orrs r0, r3
	lsls r3, r3, #0xa
	orrs r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
_080450B0:
	.byte 0x70, 0xB5, 0x56, 0x46, 0x4D, 0x46, 0x44, 0x46, 0x70, 0xB4, 0x04, 0x1C, 0x0E, 0x1C, 0x90, 0x46
	.byte 0x1D, 0x1C, 0x24, 0x06, 0x24, 0x0E, 0x36, 0x06, 0x36, 0x0E, 0x40, 0x46, 0x00, 0x06, 0x00, 0x0E
	.byte 0x80, 0x46, 0x2D, 0x06, 0x2D, 0x0E, 0x28, 0x1C, 0x10, 0x21, 0xC3, 0xF7, 0x3F, 0xF8, 0x01, 0x1C
	.byte 0x20, 0x1C, 0xC3, 0xF7, 0x2F, 0xF8, 0x82, 0x46, 0x28, 0x1C, 0x10, 0x21, 0xC3, 0xF7, 0x36, 0xF8
	.byte 0x01, 0x1C, 0x30, 0x1C, 0xC3, 0xF7, 0x26, 0xF8, 0x81, 0x46, 0x28, 0x1C, 0x10, 0x21, 0xC3, 0xF7
	.byte 0x2D, 0xF8, 0x01, 0x1C, 0x40, 0x46, 0xC3, 0xF7, 0x1D, 0xF8, 0x51, 0x46, 0x64, 0x1A, 0x24, 0x06
	.byte 0x24, 0x0E, 0x49, 0x46, 0x76, 0x1A, 0x36, 0x06, 0xF6, 0x0C, 0x34, 0x43, 0x41, 0x46, 0x09, 0x1A
	.byte 0x09, 0x06, 0x89, 0x0B, 0x0C, 0x43, 0x24, 0x04, 0x24, 0x0C, 0x20, 0x1C, 0x38, 0xBC, 0x98, 0x46
	.byte 0xA1, 0x46, 0xAA, 0x46, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x00, 0x06, 0x00, 0x0E, 0x80, 0x46
	.byte 0x09, 0x06, 0x09, 0x0E, 0x89, 0x46, 0x12, 0x06, 0x12, 0x0E, 0x92, 0x46, 0x1B, 0x06, 0x1F, 0x0E
	.byte 0x10, 0x2F, 0x2E, 0xD0, 0x1F, 0x26, 0x34, 0x1A, 0x38, 0x1C, 0x10, 0x21, 0xC2, 0xF7, 0xF6, 0xFF
	.byte 0x01, 0x1C, 0x20, 0x1C, 0xC2, 0xF7, 0xE6, 0xFF, 0x04, 0x1C, 0x48, 0x46, 0x35, 0x1A, 0x38, 0x1C
	.byte 0x10, 0x21, 0xC2, 0xF7, 0xEB, 0xFF, 0x01, 0x1C, 0x28, 0x1C, 0xC2, 0xF7, 0xDB, 0xFF, 0x05, 0x1C
	.byte 0x50, 0x46, 0x36, 0x1A, 0x38, 0x1C, 0x10, 0x21, 0xC2, 0xF7, 0xE0, 0xFF, 0x01, 0x1C, 0x30, 0x1C
	.byte 0xC2, 0xF7, 0xD0, 0xFF, 0x44, 0x44, 0x24, 0x06, 0x24, 0x0E, 0x4D, 0x44, 0x2D, 0x06, 0xED, 0x0C
	.byte 0x2C, 0x43, 0x50, 0x44, 0x00, 0x06, 0x80, 0x0B, 0x04, 0x43, 0x24, 0x04, 0x24, 0x0C, 0x20, 0x1C
	.byte 0x00, 0xE0, 0x04, 0x48, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0xFF, 0x7F, 0x00, 0x00, 0x00, 0x06, 0x00, 0x0E, 0x09, 0x06, 0x09, 0x0E
	.byte 0x12, 0x06, 0x12, 0x0E, 0x4D, 0x23, 0x43, 0x43, 0x97, 0x20, 0x48, 0x43, 0x1B, 0x18, 0xD0, 0x00
	.byte 0x80, 0x1A, 0x80, 0x00, 0x1B, 0x18, 0x1B, 0x02, 0x1B, 0x0C, 0x18, 0x01, 0xC0, 0x1A, 0x00, 0x11
	.byte 0xC8, 0x21, 0x59, 0x43, 0x09, 0x12, 0x49, 0x01, 0x08, 0x43, 0xD9, 0x00, 0xC9, 0x18, 0x09, 0x01
	.byte 0xC9, 0x18, 0x09, 0x12, 0x89, 0x02, 0x08, 0x43, 0x00, 0x04, 0x00, 0x0C, 0x70, 0x47, 0x00, 0x00
	.byte 0xF0, 0xB5, 0x04, 0x1C, 0x09, 0x04, 0x12, 0x04, 0x16, 0x0C, 0x0D, 0x0C, 0x68, 0x00, 0x24, 0x18
	.byte 0xB5, 0x42, 0x23, 0xD8, 0xF8, 0x20, 0x80, 0x00, 0x84, 0x46, 0xF8, 0x27, 0xFF, 0x01, 0x20, 0x88
	.byte 0x1F, 0x21, 0x01, 0x40, 0x63, 0x46, 0x03, 0x40, 0x5B, 0x09, 0x3A, 0x1C, 0x02, 0x40, 0x92, 0x0A
	.byte 0x4D, 0x20, 0x41, 0x43, 0x97, 0x20, 0x58, 0x43, 0x09, 0x18, 0xD0, 0x00, 0x80, 0x1A, 0x80, 0x00
	.byte 0x09, 0x18, 0x09, 0x02, 0x09, 0x0C, 0x48, 0x01, 0x08, 0x43, 0x89, 0x02, 0x08, 0x43, 0x20, 0x80
	.byte 0x02, 0x34, 0x68, 0x1C, 0x00, 0x04, 0x05, 0x0C, 0xB5, 0x42, 0xE0, 0xD9, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8045284
sub_8045284: @ 0x08045284
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r3, r3, r0
	cmp r1, r2
	bhi _080452A6
_08045296:
	movs r0, #0
	strh r0, [r3]
	adds r3, #2
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bls _08045296
_080452A6:
	bx lr

.align 2, 0
