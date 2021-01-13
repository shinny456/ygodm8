    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	THUMB_FUNC_START sub_80255A8
sub_80255A8: @ 0x080255A8
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #1
	bl sub_80257D8
	bl sub_80258AC
_080255B6:
	bl sub_8025768
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x10
	beq _0802563E
	cmp r1, #0x10
	bgt _080255E4
	cmp r1, #2
	bne _080255CC
	b _080256D0
_080255CC:
	cmp r1, #2
	bgt _080255D6
	cmp r1, #1
	beq _08025674
	b _0802570C
_080255D6:
	cmp r1, #4
	bne _080255DC
	b _080256E2
_080255DC:
	cmp r1, #8
	bne _080255E2
	b _080256E2
_080255E2:
	b _0802570C
_080255E4:
	cmp r1, #0x80
	beq _0802561A
	cmp r1, #0x80
	bgt _080255F6
	cmp r1, #0x20
	beq _0802562C
	cmp r1, #0x40
	beq _08025608
	b _0802570C
_080255F6:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08025662
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _08025650
	b _0802570C
_08025608:
	bl sub_8025CBC
	bl sub_8025924
	bl sub_8025CCC
	bl sub_8025E80
	b _080256F2
_0802561A:
	bl sub_8025CBC
	bl sub_80259B4
	bl sub_8025CCC
	bl sub_8025E80
	b _080256F2
_0802562C:
	bl sub_8025CBC
	bl sub_8025A44
	bl sub_8025CCC
	bl sub_8025E80
	b _080256F2
_0802563E:
	bl sub_8025CBC
	bl sub_8025AD4
	bl sub_8025CCC
	bl sub_8025E80
	b _080256F2
_08025650:
	bl sub_8025C24
	bl sub_8025E80
	bl sub_8025BA4
	bl sub_8025C34
	b _080256EA
_08025662:
	bl sub_8025C24
	bl sub_8025E80
	bl sub_8025BC0
	bl sub_8025C34
	b _080256EA
_08025674:
	bl sub_8025C50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _0802568E
	movs r4, #0
	movs r5, #1
	bl sub_8025CAC
	bl sub_8025C24
	b _080256B6
_0802568E:
	bl sub_8025BEC
	bl sub_8025CAC
	bl sub_8025C24
	bl sub_8025E80
	bl sub_8025CCC
	bl sub_8025C44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bne _080256C0
	bl sub_8025CBC
	bl sub_8025BDC
_080256B6:
	bl sub_8025E80
	bl sub_8025CCC
	b _080256CC
_080256C0:
	bl sub_8025BC0
	bl sub_8025C34
	bl sub_8025E80
_080256CC:
	movs r0, #0x37
	b _080256F4
_080256D0:
	bl sub_8025C24
	bl sub_8025E80
	bl sub_8025BA4
	bl sub_8025C34
	b _080256EA
_080256E2:
	bl sub_8025CBC
	bl sub_8025BDC
_080256EA:
	bl sub_8025E80
	bl sub_8025CCC
_080256F2:
	movs r0, #0x36
_080256F4:
	bl PlayMusic
	ldr r0, _08025708
	bl sub_80081DC
	bl sub_8008220
	bl sub_8026070
	b _08025722
	.align 2, 0
_08025708: .4byte 0x08026015
_0802570C:
	bl sub_8025E80
	bl sub_8025CCC
	ldr r0, _08025734
	bl sub_80081DC
	bl sub_8008220
	bl sub_8026070
_08025722:
	bl sub_8025C08
	bl sub_8025C74
	cmp r4, #0
	beq _08025730
	b _080255B6
_08025730:
	b _08025740
	.align 2, 0
_08025734: .4byte 0x08026015
_08025738:
	bl sub_8025C08
	bl sub_8025C74
_08025740:
	bl sub_8025E80
	bl sub_8025CCC
	ldr r0, _08025764
	bl sub_80081DC
	bl sub_8008220
	bl sub_8025C88
	cmp r0, #0
	bne _08025738
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08025764: .4byte 0x08026015

	THUMB_FUNC_START sub_8025768
sub_8025768: @ 0x08025768
	push {r4, lr}
	movs r4, #0
	bl sub_802618C
	movs r2, #1
	ldr r0, _080257CC
	ldrh r3, [r0]
	ldr r0, _080257D0
	ands r0, r3
	cmp r0, #0
	beq _08025798
	movs r1, #0
_08025780:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0802578A
	adds r4, r2, #0
_0802578A:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _08025780
_08025798:
	movs r2, #0x10
	ldr r0, _080257D4
	ldrh r3, [r0]
	movs r0, #0xfc
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080257C2
	movs r1, #0
_080257AA:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _080257B4
	adds r4, r2, #0
_080257B4:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #5
	bls _080257AA
_080257C2:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080257CC: .4byte gUnk2020DFC
_080257D0: .4byte 0x000003FF
_080257D4: .4byte gUnk2021DCC

	THUMB_FUNC_START sub_80257D8
sub_80257D8: @ 0x080257D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	ldr r1, _08025820
	mov sl, r1
	movs r7, #0x1f
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sb, r1
	ldr r1, _08025824
	mov r8, r1
	movs r6, #0x7d
	rsbs r6, r6, #0
_080257F8:
	movs r4, #0
	adds r5, r0, #1
	ldr r0, _08025828
	mov ip, r0
_08025800:
	lsls r0, r4, #1
	mov r1, sl
	adds r3, r0, r1
	ldr r0, [r3]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _0802582C
	subs r0, #2
	ands r0, r7
	ldrb r2, [r3]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _08025834
	.align 2, 0
_08025820: .4byte 0x02000000
_08025824: .4byte 0xFFFFFC1F
_08025828: .4byte 0x000001FF
_0802582C:
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	strb r0, [r3]
_08025834:
	ldr r0, [r3]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08025852
	adds r1, r0, #0
	subs r1, #2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	b _08025858
_08025852:
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
_08025858:
	strh r0, [r3]
	ldr r0, [r3]
	lsls r1, r0, #0x11
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08025876
	subs r0, #2
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _0802587E
_08025876:
	ldrb r1, [r3, #1]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r3, #1]
_0802587E:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, ip
	bls _08025800
	ldr r0, _080258A8
	bl sub_80081DC
	bl sub_8008220
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _080257F8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080258A8: .4byte 0x080454E1

	THUMB_FUNC_START sub_80258AC
sub_80258AC: @ 0x080258AC
	push {lr}
	bl sub_8025B64
	bl sub_8025F38
	bl sub_8025F64
	bl sub_8025DB4
	bl sub_8025CCC
	ldr r0, _080258E0
	bl sub_80081DC
	bl sub_8008220
	bl sub_8026060
	ldr r0, _080258E4
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_080258E0: .4byte 0x0802601D
_080258E4: .4byte 0x08025FFD

	THUMB_FUNC_START sub_80258E8
sub_80258E8: @ 0x080258E8
	push {r4, r5, r6, lr}
	ldr r1, _08025918
	movs r0, #0xff
	strh r0, [r1]
	movs r4, #0
	ldr r6, _0802591C
	movs r5, #0x1f
_080258F6:
	adds r0, r4, #0
	ands r0, r5
	strh r0, [r6]
	ldr r0, _08025920
	bl sub_80081DC
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _080258F6
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025918: .4byte gBLDCNT
_0802591C: .4byte gBLDY
_08025920: .4byte 0x0804549D

	THUMB_FUNC_START sub_8025924
sub_8025924: @ 0x08025924
	ldr r1, _0802593C
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r2, r1, #0
	cmp r0, #0xa
	bhi _080259B2
	lsls r0, r0, #2
	ldr r1, _08025940
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802593C: .4byte gUnk_8E010F8
_08025940: .4byte _08025944
_08025944: @ jump table
	.4byte _08025970 @ case 0
	.4byte _08025976 @ case 1
	.4byte _0802597C @ case 2
	.4byte _08025982 @ case 3
	.4byte _08025988 @ case 4
	.4byte _0802598E @ case 5
	.4byte _08025994 @ case 6
	.4byte _0802599A @ case 7
	.4byte _080259A0 @ case 8
	.4byte _080259A6 @ case 9
	.4byte _080259AC @ case 10
_08025970:
	ldr r1, [r2]
	movs r0, #1
	b _080259B0
_08025976:
	ldr r1, [r2]
	movs r0, #4
	b _080259B0
_0802597C:
	ldr r1, [r2]
	movs r0, #5
	b _080259B0
_08025982:
	ldr r1, [r2]
	movs r0, #6
	b _080259B0
_08025988:
	ldr r1, [r2]
	movs r0, #7
	b _080259B0
_0802598E:
	ldr r1, [r2]
	movs r0, #8
	b _080259B0
_08025994:
	ldr r1, [r2]
	movs r0, #9
	b _080259B0
_0802599A:
	ldr r1, [r2]
	movs r0, #0
	b _080259B0
_080259A0:
	ldr r1, [r2]
	movs r0, #0xa
	b _080259B0
_080259A6:
	ldr r1, [r2]
	movs r0, #0xa
	b _080259B0
_080259AC:
	ldr r1, [r2]
	movs r0, #2
_080259B0:
	strb r0, [r1, #1]
_080259B2:
	bx lr

	THUMB_FUNC_START sub_80259B4
sub_80259B4: @ 0x080259B4
	ldr r1, _080259CC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r2, r1, #0
	cmp r0, #0xa
	bhi _08025A42
	lsls r0, r0, #2
	ldr r1, _080259D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080259CC: .4byte gUnk_8E010F8
_080259D0: .4byte _080259D4
_080259D4: @ jump table
	.4byte _08025A00 @ case 0
	.4byte _08025A06 @ case 1
	.4byte _08025A0C @ case 2
	.4byte _08025A12 @ case 3
	.4byte _08025A18 @ case 4
	.4byte _08025A1E @ case 5
	.4byte _08025A24 @ case 6
	.4byte _08025A2A @ case 7
	.4byte _08025A30 @ case 8
	.4byte _08025A36 @ case 9
	.4byte _08025A3C @ case 10
_08025A00:
	ldr r1, [r2]
	movs r0, #7
	b _08025A40
_08025A06:
	ldr r1, [r2]
	movs r0, #0
	b _08025A40
_08025A0C:
	ldr r1, [r2]
	movs r0, #0xa
	b _08025A40
_08025A12:
	ldr r1, [r2]
	movs r0, #0xa
	b _08025A40
_08025A18:
	ldr r1, [r2]
	movs r0, #1
	b _08025A40
_08025A1E:
	ldr r1, [r2]
	movs r0, #2
	b _08025A40
_08025A24:
	ldr r1, [r2]
	movs r0, #3
	b _08025A40
_08025A2A:
	ldr r1, [r2]
	movs r0, #4
	b _08025A40
_08025A30:
	ldr r1, [r2]
	movs r0, #5
	b _08025A40
_08025A36:
	ldr r1, [r2]
	movs r0, #6
	b _08025A40
_08025A3C:
	ldr r1, [r2]
	movs r0, #8
_08025A40:
	strb r0, [r1, #1]
_08025A42:
	bx lr

	THUMB_FUNC_START sub_8025A44
sub_8025A44: @ 0x08025A44
	ldr r1, _08025A5C
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r2, r1, #0
	cmp r0, #0xa
	bhi _08025AD2
	lsls r0, r0, #2
	ldr r1, _08025A60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025A5C: .4byte gUnk_8E010F8
_08025A60: .4byte _08025A64
_08025A64: @ jump table
	.4byte _08025A90 @ case 0
	.4byte _08025A96 @ case 1
	.4byte _08025A9C @ case 2
	.4byte _08025AA2 @ case 3
	.4byte _08025AA8 @ case 4
	.4byte _08025AAE @ case 5
	.4byte _08025AB4 @ case 6
	.4byte _08025ABA @ case 7
	.4byte _08025AC0 @ case 8
	.4byte _08025AC6 @ case 9
	.4byte _08025ACC @ case 10
_08025A90:
	ldr r1, [r2]
	movs r0, #0xa
	b _08025AD0
_08025A96:
	ldr r1, [r2]
	movs r0, #3
	b _08025AD0
_08025A9C:
	ldr r1, [r2]
	movs r0, #1
	b _08025AD0
_08025AA2:
	ldr r1, [r2]
	movs r0, #2
	b _08025AD0
_08025AA8:
	ldr r1, [r2]
	movs r0, #6
	b _08025AD0
_08025AAE:
	ldr r1, [r2]
	movs r0, #4
	b _08025AD0
_08025AB4:
	ldr r1, [r2]
	movs r0, #5
	b _08025AD0
_08025ABA:
	ldr r1, [r2]
	movs r0, #9
	b _08025AD0
_08025AC0:
	ldr r1, [r2]
	movs r0, #7
	b _08025AD0
_08025AC6:
	ldr r1, [r2]
	movs r0, #8
	b _08025AD0
_08025ACC:
	ldr r1, [r2]
	movs r0, #0
_08025AD0:
	strb r0, [r1, #1]
_08025AD2:
	bx lr

	THUMB_FUNC_START sub_8025AD4
sub_8025AD4: @ 0x08025AD4
	ldr r1, _08025AEC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r2, r1, #0
	cmp r0, #0xa
	bhi _08025B62
	lsls r0, r0, #2
	ldr r1, _08025AF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025AEC: .4byte gUnk_8E010F8
_08025AF0: .4byte _08025AF4
_08025AF4: @ jump table
	.4byte _08025B20 @ case 0
	.4byte _08025B26 @ case 1
	.4byte _08025B2C @ case 2
	.4byte _08025B32 @ case 3
	.4byte _08025B38 @ case 4
	.4byte _08025B3E @ case 5
	.4byte _08025B44 @ case 6
	.4byte _08025B4A @ case 7
	.4byte _08025B50 @ case 8
	.4byte _08025B56 @ case 9
	.4byte _08025B5C @ case 10
_08025B20:
	ldr r1, [r2]
	movs r0, #0xa
	b _08025B60
_08025B26:
	ldr r1, [r2]
	movs r0, #2
	b _08025B60
_08025B2C:
	ldr r1, [r2]
	movs r0, #3
	b _08025B60
_08025B32:
	ldr r1, [r2]
	movs r0, #1
	b _08025B60
_08025B38:
	ldr r1, [r2]
	movs r0, #5
	b _08025B60
_08025B3E:
	ldr r1, [r2]
	movs r0, #6
	b _08025B60
_08025B44:
	ldr r1, [r2]
	movs r0, #4
	b _08025B60
_08025B4A:
	ldr r1, [r2]
	movs r0, #8
	b _08025B60
_08025B50:
	ldr r1, [r2]
	movs r0, #9
	b _08025B60
_08025B56:
	ldr r1, [r2]
	movs r0, #7
	b _08025B60
_08025B5C:
	ldr r1, [r2]
	movs r0, #0
_08025B60:
	strb r0, [r1, #1]
_08025B62:
	bx lr

	THUMB_FUNC_START sub_8025B64
sub_8025B64: @ 0x08025B64
	push {r4, lr}
	movs r1, #0
	ldr r3, _08025B98
	ldr r4, _08025B9C
	movs r2, #0
_08025B6E:
	adds r0, r1, r4
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _08025B6E
	ldr r0, [r3]
	movs r1, #0
	strb r1, [r0]
	ldr r2, [r3]
	movs r0, #1
	strb r0, [r2, #1]
	ldr r0, [r3]
	strb r1, [r0, #4]
	ldr r0, [r3]
	strb r1, [r0, #5]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025B98: .4byte gUnk_8E010F8
_08025B9C: .4byte g2021DC0
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8025BA4
sub_8025BA4: @ 0x08025BA4
	ldr r0, _08025BB4
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08025BB8
	movs r0, #7
	b _08025BBA
	.align 2, 0
_08025BB4: .4byte gUnk_8E010F8
_08025BB8:
	subs r0, #1
_08025BBA:
	strb r0, [r1]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8025BC0
sub_8025BC0: @ 0x08025BC0
	ldr r0, _08025BD0
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #6
	bls _08025BD4
	movs r0, #0
	b _08025BD6
	.align 2, 0
_08025BD0: .4byte gUnk_8E010F8
_08025BD4:
	adds r0, #1
_08025BD6:
	strb r0, [r1]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8025BDC
sub_8025BDC: @ 0x08025BDC
	ldr r0, _08025BE8
	ldr r1, [r0]
	movs r0, #0xa
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_08025BE8: .4byte gUnk_8E010F8

	THUMB_FUNC_START sub_8025BEC
sub_8025BEC: @ 0x08025BEC
	ldr r0, _08025C00
	ldr r0, [r0]
	ldrb r2, [r0, #1]
	cmp r2, #9
	bhi _08025BFE
	ldr r1, _08025C04
	ldrb r0, [r0]
	adds r0, r0, r1
	strb r2, [r0]
_08025BFE:
	bx lr
	.align 2, 0
_08025C00: .4byte gUnk_8E010F8
_08025C04: .4byte g2021DC0

	THUMB_FUNC_START sub_8025C08
sub_8025C08: @ 0x08025C08
	ldr r0, _08025C18
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	cmp r0, #0x1d
	bls _08025C1C
	movs r0, #0
	b _08025C1E
	.align 2, 0
_08025C18: .4byte gUnk_8E010F8
_08025C1C:
	adds r0, #1
_08025C1E:
	strb r0, [r1, #4]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8025C24
sub_8025C24: @ 0x08025C24
	ldr r0, _08025C30
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08025C30: .4byte gUnk_8E010F8

	THUMB_FUNC_START sub_8025C34
sub_8025C34: @ 0x08025C34
	ldr r0, _08025C40
	ldr r1, [r0]
	movs r0, #0xf
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08025C40: .4byte gUnk_8E010F8

	THUMB_FUNC_START sub_8025C44
sub_8025C44: @ 0x08025C44
	ldr r0, _08025C4C
	ldr r0, [r0]
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08025C4C: .4byte gUnk_8E010F8

	THUMB_FUNC_START sub_8025C50
sub_8025C50: @ 0x08025C50
	ldr r0, _08025C58
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	bx lr
	.align 2, 0
_08025C58: .4byte gUnk_8E010F8

	THUMB_FUNC_START sub_8025C5C
sub_8025C5C: @ 0x08025C5C
	movs r1, #0
	ldr r0, _08025C70
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #0xf
	bls _08025C6A
	movs r1, #1
_08025C6A:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08025C70: .4byte gUnk_8E010F8

	THUMB_FUNC_START sub_8025C74
sub_8025C74: @ 0x08025C74
	ldr r0, _08025C84
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08025C82
	subs r0, #1
	strb r0, [r1, #5]
_08025C82:
	bx lr
	.align 2, 0
_08025C84: .4byte gUnk_8E010F8

	THUMB_FUNC_START sub_8025C88
sub_8025C88: @ 0x08025C88
	movs r1, #0
	ldr r0, _08025CA8
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _08025CA2
	movs r1, #1
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08025CA2
	movs r1, #2
_08025CA2:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08025CA8: .4byte gUnk_8E010F8

	THUMB_FUNC_START sub_8025CAC
sub_8025CAC: @ 0x08025CAC
	ldr r0, _08025CB8
	ldr r1, [r0]
	movs r0, #8
	strb r0, [r1, #5]
	bx lr
	.align 2, 0
_08025CB8: .4byte gUnk_8E010F8

	THUMB_FUNC_START sub_8025CBC
sub_8025CBC: @ 0x08025CBC
	ldr r0, _08025CC8
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #5]
	bx lr
	.align 2, 0
_08025CC8: .4byte gUnk_8E010F8

	THUMB_FUNC_START sub_8025CCC
sub_8025CCC: @ 0x08025CCC
	push {r4, r5, r6, lr}
	bl sub_8025C50
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_8025C88
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _08025D44
	ldr r0, _08025D38
	lsls r3, r4, #2
	adds r3, r3, r0
	ldr r0, [r3]
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	movs r2, #0xff
	adds r5, r2, #0
	ands r5, r1
	adds r5, #0x30
	ldr r4, _08025D3C
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ands r5, r2
	orrs r0, r5
	adds r1, r4, #0
	adds r1, #0x40
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #4]
	ldrh r1, [r0, #2]
	ldr r2, _08025D40
	adds r5, r2, #0
	ands r5, r1
	adds r5, #0x48
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ands r5, r2
	orrs r0, r5
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #4]
	ldrh r1, [r0, #4]
	adds r0, r4, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r0, #2
	strh r6, [r0]
	b _08025DA0
	.align 2, 0
_08025D38: .4byte 0x08E01248
_08025D3C: .4byte gOamBuffer
_08025D40: .4byte 0x000001FF
_08025D44:
	subs r2, r6, #1
	lsls r2, r2, #0x18
	ldr r1, _08025DA8
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r2, r2, #0x15
	adds r2, r2, r0
	ldr r0, [r2, #4]
	ldrh r1, [r0]
	movs r3, #0xff
	adds r5, r3, #0
	ands r5, r1
	adds r5, #0x30
	ldr r0, _08025DAC
	mov ip, r0
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ands r5, r3
	orrs r0, r5
	mov r1, ip
	adds r1, #0x40
	movs r4, #0
	strh r0, [r1]
	ldr r0, [r2, #4]
	ldrh r1, [r0, #2]
	ldr r3, _08025DB0
	adds r5, r3, #0
	ands r5, r1
	adds r5, #0x48
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ands r5, r3
	orrs r0, r5
	mov r1, ip
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r2, #4]
	ldrh r1, [r0, #4]
	mov r0, ip
	adds r0, #0x44
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
_08025DA0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025DA8: .4byte 0x08E01328
_08025DAC: .4byte gOamBuffer
_08025DB0: .4byte 0x000001FF

	THUMB_FUNC_START sub_8025DB4
sub_8025DB4: @ 0x08025DB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	movs r0, #0xff
	mov r8, r0
	ldr r1, _08025E6C
	mov ip, r1
	movs r3, #0xf0
	lsls r3, r3, #8
	mov sb, r3
	movs r0, #0xfe
	lsls r0, r0, #8
	mov sl, r0
_08025DD4:
	ldr r1, _08025E70
	adds r0, r7, r1
	ldrb r5, [r0]
	lsls r5, r5, #2
	ldr r3, _08025E74
	adds r5, r5, r3
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r3, [r0]
	mov r1, r8
	ands r1, r3
	adds r1, #0x12
	lsls r2, r7, #3
	add r2, ip
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r3
	mov r3, r8
	ands r1, r3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r6, [r0, #2]
	lsls r0, r7, #4
	adds r0, #0x38
	mov r2, r8
	ands r2, r6
	adds r2, r2, r0
	lsls r4, r7, #2
	adds r3, r4, #1
	lsls r3, r3, #1
	add r3, ip
	mov r1, sl
	ands r1, r6
	ldr r0, _08025E78
	ands r2, r0
	orrs r1, r2
	strh r1, [r3]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r3, [r0, #4]
	mov r1, sb
	ands r1, r3
	lsls r1, r1, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x16
	adds r1, r1, r0
	lsrs r1, r1, #0x10
	adds r2, r4, #2
	lsls r2, r2, #1
	add r2, ip
	ldr r0, _08025E7C
	ands r0, r3
	mov r3, sb
	ands r1, r3
	orrs r0, r1
	strh r0, [r2]
	adds r4, #3
	lsls r4, r4, #1
	add r4, ip
	movs r0, #0
	strh r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _08025DD4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025E6C: .4byte gOamBuffer
_08025E70: .4byte g2021DC0
_08025E74: .4byte 0x08E0119C
_08025E78: .4byte 0x000001FF
_08025E7C: .4byte 0x00000FFF

	THUMB_FUNC_START sub_8025E80
sub_8025E80: @ 0x08025E80
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	bl sub_8025C44
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08025F24
	adds r0, r4, r0
	ldrb r5, [r0]
	bl sub_8025C5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r5, r5, r1
	lsls r5, r5, #0x18
	ldr r0, _08025F28
	lsrs r5, r5, #0x16
	adds r5, r5, r0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r6, [r0]
	movs r3, #0xff
	adds r0, r3, #0
	ands r0, r6
	adds r0, #0x12
	ldr r1, _08025F2C
	mov r8, r1
	lsls r2, r4, #3
	add r2, r8
	movs r1, #0xff
	lsls r1, r1, #8
	ands r1, r6
	ands r0, r3
	orrs r1, r0
	movs r6, #0
	strh r1, [r2]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r1, [r0, #2]
	lsls r0, r4, #4
	adds r0, #0x38
	ands r3, r1
	adds r3, r3, r0
	lsls r4, r4, #2
	adds r2, r4, #1
	lsls r2, r2, #1
	add r2, r8
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ldr r1, _08025F30
	ands r3, r1
	orrs r0, r3
	strh r0, [r2]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r3, [r0, #4]
	lsrs r1, r3, #0xc
	adds r1, #3
	lsls r1, r1, #0x1c
	adds r2, r4, #2
	lsls r2, r2, #1
	add r2, r8
	ldr r0, _08025F34
	ands r0, r3
	lsrs r1, r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	adds r4, #3
	lsls r4, r4, #1
	add r4, r8
	strh r6, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025F24: .4byte g2021DC0
_08025F28: .4byte 0x08E0119C
_08025F2C: .4byte gOamBuffer
_08025F30: .4byte 0x000001FF
_08025F34: .4byte 0x00000FFF

	THUMB_FUNC_START sub_8025F38
sub_8025F38: @ 0x08025F38
	push {r4, r5, lr}
	movs r1, #0
	movs r5, #0
	ldr r0, _08025F60
	movs r4, #0xa0
	movs r3, #0xf0
	movs r2, #0xc0
	lsls r2, r2, #4
_08025F48:
	strh r4, [r0]
	strh r3, [r0, #2]
	strh r2, [r0, #4]
	strh r5, [r0, #6]
	adds r0, #8
	adds r1, #1
	cmp r1, #0x7f
	bls _08025F48
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025F60: .4byte gOamBuffer

	THUMB_FUNC_START sub_8025F64
sub_8025F64: @ 0x08025F64
	push {r4, r5, r6, lr}
	ldr r0, _08025FC4
	ldr r1, _08025FC8
	movs r2, #0x80
	lsls r2, r2, #7
	bl sub_800E074
	ldr r0, _08025FCC
	ldr r1, _08025FD0
	ldr r2, _08025FD4
	bl CpuSet
	movs r4, #0
	movs r5, #0
_08025F80:
	ldr r0, _08025FD8
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r6, _08025FDC
	adds r1, r1, r6
	ldr r2, _08025FE0
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _08025F80
	ldr r0, _08025FE4
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r6, r2
	bl LZ77UnCompWram
	ldr r0, _08025FE8
	ldr r4, _08025FEC
	ldr r2, _08025FF0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08025FF4
	adds r4, #0x60
	ldr r2, _08025FF8
	adds r1, r4, #0
	bl CpuSet
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025FC4: .4byte 0x080C1DD4
_08025FC8: .4byte 0x02000400
_08025FCC: .4byte 0x080C5840
_08025FD0: .4byte 0x02000000
_08025FD4: .4byte 0x04000020
_08025FD8: .4byte 0x080C58C0
_08025FDC: .4byte 0x0200FC00
_08025FE0: .4byte 0x0400000F
_08025FE4: .4byte 0x080C61B8
_08025FE8: .4byte 0x080C5EF0
_08025FEC: .4byte 0x02000200
_08025FF0: .4byte 0x04000018
_08025FF4: .4byte 0x080C5D70
_08025FF8: .4byte 0x04000010

	THUMB_FUNC_START sub_8025FFC
sub_8025FFC: @ 0x08025FFC
	push {lr}
	bl LoadPalettes
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_802601C
sub_802601C: @ 0x0802601C
	push {lr}
	bl sub_8045718
	ldr r0, _08026048
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _0802604C
	ldr r3, _08026050
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _08026054
	strh r1, [r0]
	ldr r0, _08026058
	strh r1, [r0]
	bl LoadBgOffsets
	pop {r0}
	bx r0
	.align 2, 0
_08026048: .4byte 0x04000050
_0802604C: .4byte 0x0400000E
_08026050: .4byte 0x00001F03
_08026054: .4byte gBG3VOFS
_08026058: .4byte gBG3HOFS
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8026060
sub_8026060: @ 0x08026060
	push {lr}
	bl LoadVRAM
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8026070
sub_8026070: @ 0x08026070
	push {lr}
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00

  	.align 2, 0
