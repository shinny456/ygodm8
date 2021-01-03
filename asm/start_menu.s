    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	THUMB_FUNC_START sub_800576C
sub_800576C: @ 0x0800576C
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _08005798
_08005772:
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080057C8
	bl IsDeckFull      @pressed B
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800579C
	movs r0, #0x39
	bl PlayMusic
	bl sub_8005C9C
	bl sub_8005BE0
	b _080057C8
	.align 2, 0
_08005798: .4byte gUnk2020DFC
_0800579C:
	bl IsCostWithinCapacity
	cmp r0, #0
	beq _080057BA
	bl IsDeckFull
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080057C8
	bl IsCostWithinCapacity
	cmp r0, #1
	bne _080057C8
	b _08005882
_080057BA:
	movs r0, #0x39
	bl PlayMusic
	bl sub_8005C80
	bl sub_8005BE0
_080057C8:
	ldrh r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080057E2
	cmp r4, #0      @pressed UP
	beq _080057E2
	movs r0, #0x36
	bl PlayMusic
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080057E2:
	ldr r5, _0800580C
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080057FE
	cmp r4, #1    @pressed DOWN
	bhi _08005802
	movs r0, #0x36
	bl PlayMusic
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080057FE:
	cmp r4, #1     @ switch (cursor) case 0 1 2
	beq _08005830
_08005802:
	cmp r4, #1
	bgt _08005810
	cmp r4, #0
	beq _08005816
	b _08005872
	.align 2, 0
_0800580C: .4byte gUnk2020DFC
_08005810:
	cmp r4, #2
	beq _0800584A
	b _08005872
_08005816:
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08005872
	movs r0, #0x37   @pressed A, @player status
	bl PlayMusic
	bl StatusMenu
	bl sub_8005BE0
	b _08005872
_08005830:
	ldrh r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08005872
	movs r0, #0x37  @pressed A, @trunk
	bl PlayMusic
	bl TrunkMenu
	bl sub_8005B48
	b _08005872
_0800584A:
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08005872
	bl sub_801D3FC
	cmp r0, #1
	bne _0800586C
	movs r0, #0x37
	bl PlayMusic
	bl DeckMenu
	bl sub_8005B48
	b _08005872
_0800586C:
	movs r0, #0x39
	bl PlayMusic
_08005872:
	adds r0, r4, #0
	bl sub_8005C60
	bl LoadOam
	bl sub_8008220
	b _08005772
_08005882:       @exit out of the menu
	movs r0, #0x38
	bl PlayMusic
	bl sub_8045718
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8005894
sub_8005894: @ 0x08005894
	push {r4, r5, r6, r7, lr}
	ldr r0, _08005984
	ldr r4, _08005988
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _0800598C
	ldr r5, _08005990
	ldr r0, _08005994
	adds r4, r4, r0
	ldr r3, _08005998
_080058AC:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x13
	bls _080058AC
	movs r1, #0
	ldr r7, _0800599C
	ldr r6, _080059A0
	ldr r2, _0800598C
	ldr r5, _080059A4
	ldr r4, _080059A8
	ldr r3, _08005998
_080058D8:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x13
	bls _080058D8
	movs r1, #0
	ldr r2, _0800598C
	ldr r5, _080059AC
	ldr r4, _080059B0
	ldr r3, _08005998
_08005900:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x13
	bls _08005900
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0x10
	bl CpuSet
	ldr r0, _080059B4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r6, r2
	movs r2, #0x10
	bl CpuSet
	ldr r4, _080059B8
	ldr r1, _080059BC
	ldr r5, _080059C0
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020A3C
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r4, r1
	ldr r1, _080059C4
	adds r2, r5, #0
	bl sub_8020A3C
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r4, r2
	ldr r1, _080059C8
	adds r2, r5, #0
	bl sub_8020A3C
	movs r1, #0xa5
	lsls r1, r1, #7
	adds r0, r4, r1
	ldr r1, _080059CC
	adds r2, r5, #0
	bl sub_8020A3C
	movs r2, #0xaa
	lsls r2, r2, #7
	adds r4, r4, r2
	ldr r1, _080059D0
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020A3C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005984: .4byte gUnk_8078C08
_08005988: .4byte 0x02010400
_0800598C: .4byte 0x040000D4
_08005990: .4byte gUnk_80798F4
_08005994: .4byte 0xFFFFF800
_08005998: .4byte 0x8000001E
_0800599C: .4byte gUnk_80793E4
_080059A0: .4byte 0x02000000
_080059A4: .4byte gUnk_8079CB4
_080059A8: .4byte 0x0200EC00
_080059AC: .4byte gUnk_807A164
_080059B0: .4byte 0x0200E400
_080059B4: .4byte gUnk_8079404
_080059B8: .4byte 0x02008420
_080059BC: .4byte gUnk_807A614
_080059C0: .4byte 0x00000901
_080059C4: .4byte gUnk_807A790
_080059C8: .4byte gUnk_807A910
_080059CC: .4byte gUnk_807A95C
_080059D0: .4byte gUnk_807A9A4

	THUMB_FUNC_START sub_80059D4
sub_80059D4: @ 0x080059D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r7, _08005ABC
	ldr r0, _08005AC0
	mov ip, r0
	ldr r1, _08005AC4
	mov r8, r1
	ldr r2, _08005AC8
	mov sb, r2
	ldr r0, _08005ACC
	mov sl, r0
	ldr r3, _08005AD0
	movs r6, #0
	movs r5, #0xa0
_080059F8:
	lsls r0, r4, #3
	adds r0, r0, r3
	strh r5, [r0]
	lsls r2, r4, #2
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
	strh r6, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x7f
	bls _080059F8
	ldr r1, _08005AD4
	ldr r2, _08005AD8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08005ADC
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08005AE0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08005AE4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08005AE8
	movs r1, #1
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	ldr r0, _08005AEC
	movs r4, #8
	strh r4, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xf0
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08005AF0
	adds r0, r1, #0
	strh r0, [r7]
	ldr r2, _08005AF4
	adds r0, r2, #0
	mov r1, ip
	strh r0, [r1]
	movs r0, #0
	ldr r2, _08005AF8
	strh r0, [r2]
	mov r1, r8
	strh r0, [r1]
	mov r2, sb
	strh r0, [r2]
	mov r1, sl
	strh r0, [r1]
	ldr r2, _08005AFC
	strh r0, [r2]
	ldr r1, _08005B00
	strh r0, [r1]
	bl LoadBgOffsets
	ldr r1, _08005B04
	ldr r2, _08005B08
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08005B0C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08005B10
	movs r0, #0xe8
	strh r0, [r1]
	ldr r0, _08005B14
	strh r4, [r0]
	bl LoadBlendingRegs
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005ABC: .4byte gBG2HOFS
_08005AC0: .4byte gBG2VOFS
_08005AC4: .4byte gBG3VOFS
_08005AC8: .4byte gBG0HOFS
_08005ACC: .4byte gBG0VOFS
_08005AD0: .4byte 0x02018400
_08005AD4: .4byte 0x04000008
_08005AD8: .4byte 0x00001C09
_08005ADC: .4byte 0x00001D09
_08005AE0: .4byte 0x00001F0E
_08005AE4: .4byte 0x00001E03
_08005AE8: .4byte 0x04000208
_08005AEC: .4byte 0x04000004
_08005AF0: .4byte 0x0000FFB0
_08005AF4: .4byte 0x0000FFC8
_08005AF8: .4byte gBG3HOFS
_08005AFC: .4byte gBG1HOFS
_08005B00: .4byte gBG1VOFS
_08005B04: .4byte 0x04000040
_08005B08: .4byte 0x000038B8
_08005B0C: .4byte 0x00002878
_08005B10: .4byte gBLDCNT
_08005B14: .4byte gBLDY

	THUMB_FUNC_START StartMenu
StartMenu: @ 0x08005B18
	push {lr}
	movs r0, #1
	bl sub_8035020
	bl sub_8005D08
	movs r0, #0x2f
	bl PlayMusic
	bl sub_800576C
	movs r0, #1
	bl sub_8035020
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8005B38
sub_8005B38: @ 0x08005B38
	push {lr}
	bl sub_8005D08
	bl sub_800576C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8005B48
sub_8005B48: @ 0x08005B48
	push {r4, r5, lr}
	bl sub_803ED78
	bl LoadOam
	bl LoadPalettes
	bl LoadVRAM
	bl sub_8045718
	ldr r0, _08005BC0
	ldr r4, _08005BC4
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl sub_8005894
	movs r1, #0
	ldr r2, _08005BC8
	ldr r5, _08005BCC
	movs r0, #0xf0
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r3, _08005BD0
_08005B7A:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x13
	bls _08005B7A
	ldr r0, _08005BD4
	ldr r1, _08005BD8
	movs r2, #0x10
	bl CpuSet
	ldr r0, _08005BDC
	bl sub_80081DC
	bl LoadBgVRAM
	bl LoadCharblock4
	bl LoadPalettes
	bl sub_8008220
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005BC0: .4byte gUnk_8075514
_08005BC4: .4byte 0x02000400
_08005BC8: .4byte 0x040000D4
_08005BCC: .4byte gUnk_8079444
_08005BD0: .4byte 0x8000001E
_08005BD4: .4byte gUnk_8079424
_08005BD8: .4byte 0x020001E0
_08005BDC: .4byte sub_8005C38

	THUMB_FUNC_START sub_8005BE0
sub_8005BE0: @ 0x08005BE0
	push {r4, lr}
	ldr r0, _08005C24
	ldr r4, _08005C28
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r0, _08005C2C
	movs r1, #0x80
	lsls r1, r1, #2
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	bl sub_8005894
	ldr r0, _08005C30
	bl sub_80081DC
	bl LoadCharblock4
	bl LoadCharblock3
	bl LoadPalettes
	ldr r0, _08005C34
	bl sub_80081DC
	bl sub_8008220
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005C24: .4byte gUnk_80793E4
_08005C28: .4byte 0x02000000
_08005C2C: .4byte gUnk_8079404
_08005C30: .4byte sub_8005C54
_08005C34: .4byte sub_8005C38

	THUMB_FUNC_START sub_8005C38
sub_8005C38: @ 0x08005C38
	push {lr}
	ldr r1, _08005C50
	movs r0, #0x3c
	strb r0, [r1]
	adds r1, #2
	movs r0, #8
	strb r0, [r1]
	bl sub_80059D4
	pop {r0}
	bx r0
	.align 2, 0
_08005C50: .4byte 0x04000048

	THUMB_FUNC_START sub_8005C54
sub_8005C54: @ 0x08005C54
	push {lr}
	bl sub_80059D4
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8005C60
sub_8005C60: @ 0x08005C60
	lsls r0, r0, #0x18
	ldr r2, _08005C78
	lsrs r0, r0, #0x14
	adds r0, #0x38
	ldr r1, _08005C7C
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r2, #4]
	bx lr
	.align 2, 0
_08005C78: .4byte 0x02018400
_08005C7C: .4byte 0x40400000

	THUMB_FUNC_START sub_8005C80
sub_8005C80: @ 0x08005C80
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xe8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bl LoadBgOffsets
	bl sub_8005CB8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8005C9C
sub_8005C9C: @ 0x08005C9C
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xf0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bl LoadBgOffsets
	bl sub_8005CB8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8005CB8
sub_8005CB8: @ 0x08005CB8
	push {r4, r5, lr}
	ldr r1, _08005CF8
	movs r0, #0xfc
	strh r0, [r1]
	ldr r1, _08005CFC
	movs r0, #8
	strh r0, [r1]
	bl LoadBlendingRegs
	bl sub_8008220
	ldr r3, _08005D00
	ldrh r1, [r3]
	ldr r2, _08005D04
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08005CEC
	adds r5, r3, #0
	adds r4, r2, #0
_08005CE0:
	bl sub_8008220
	ldrh r0, [r5]
	ands r0, r4
	cmp r0, #0
	beq _08005CE0
_08005CEC:
	bl sub_8008220
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005CF8: .4byte gBLDCNT
_08005CFC: .4byte gBLDY
_08005D00: .4byte gUnk2020DFC
_08005D04: .4byte 0x000003FF

	THUMB_FUNC_START sub_8005D08
sub_8005D08: @ 0x08005D08
	push {lr}
	bl sub_8005B48
	bl sub_8008F24
	bl sub_801DA20
	pop {r0}
	bx r0
	.byte 0x00, 0x00



  .align 2, 0
