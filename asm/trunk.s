    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	THUMB_FUNC_START TrunkMenu
TrunkMenu: @ 0x08008548
	push {r4, lr}
	movs r4, #1
	bl sub_800882C
_08008550:
	bl sub_8008644
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x10
	beq _080085C4
	cmp r1, #0x10
	bgt _0800857C
	cmp r1, #2
	beq _080085F6
	cmp r1, #2
	bgt _08008572
	cmp r1, #0
	beq _0800862A
	cmp r1, #1
	beq _080085EA
	b _0800862A
_08008572:
	cmp r1, #4
	beq _0800861A
	cmp r1, #8
	beq _08008608
	b _0800862A
_0800857C:
	cmp r1, #0x80
	beq _080085B8
	cmp r1, #0x80
	bgt _0800858E
	cmp r1, #0x20
	beq _080085CA
	cmp r1, #0x40
	beq _080085AC
	b _0800862A
_0800858E:
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	beq _080085BE
	cmp r1, r0
	bgt _080085A2
	subs r0, #0x40
	cmp r1, r0
	beq _080085B2
	b _0800862A
_080085A2:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _080085DA
	b _0800862A
_080085AC:
	bl sub_800876C
	b _080085DE
_080085B2:
	bl sub_8008780
	b _080085DE
_080085B8:
	bl sub_8008794
	b _080085DE
_080085BE:
	bl sub_80087A8
	b _080085DE
_080085C4:
	bl sub_80087BC
	b _080085CE
_080085CA:
	bl sub_80087D0
_080085CE:
	bl sub_800ABD0
	movs r0, #6
	bl sub_800AA58
	b _0800863A
_080085DA:
	bl sub_8008804
_080085DE:
	bl sub_800ABB4
	movs r0, #4
	bl sub_800AA58
	b _0800863A
_080085EA:
	bl sub_8008854
	movs r0, #7
	bl sub_800AA58
	b _0800863A
_080085F6:
	bl sub_80087E4
	movs r4, #0
	bl sub_0800ABA4
	movs r0, #2
	bl sub_800AA58
	b _0800863A
_08008608:
	bl sub_800A6D0
	movs r0, #8
	bl sub_800A3D8
	movs r0, #8
	bl sub_800AA58
	b _0800863A
_0800861A:
	bl sub_8008818
	movs r0, #9
	bl sub_800AA58
	bl sub_800ABE4
	b _0800863A
_0800862A:
	movs r0, #5
	bl sub_800A3D8
	bl sub_0800ABE0
	movs r0, #5
	bl sub_800AA58
_0800863A:
	cmp r4, #0
	bne _08008550
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8008644
sub_8008644: @ 0x08008644
	push {r4, r5, lr}
	movs r4, #0
	bl sub_802612C
	movs r2, #1
	movs r1, #0
	ldr r0, _080086CC
	ldrh r3, [r0]
_08008654:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0800865E
	adds r4, r0, #0
_0800865E:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _08008654
	movs r2, #0x10
	movs r1, #0
	ldr r5, _080086D0
	ldrh r3, [r5]
_08008674:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0800867E
	adds r4, r0, #0
_0800867E:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08008674
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080086A8
	ldr r0, _080086D4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080086A8
	movs r4, #0xa0
	lsls r4, r4, #1
_080086A8:
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080086C4
	ldr r0, _080086D4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080086C4
	movs r4, #0xc0
	lsls r4, r4, #1
_080086C4:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080086CC: .4byte gUnk2020DFC
_080086D0: .4byte gUnk2021DCC
_080086D4: .4byte gKeyState

	THUMB_FUNC_START sub_80086D8
sub_80086D8: @ 0x080086D8
	push {r4, r5, lr}
	movs r4, #0
	movs r2, #1
	movs r1, #0
	ldr r5, _08008760
	ldr r0, _08008764
	ldrh r3, [r0]
_080086E6:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _080086F0
	adds r4, r0, #0
_080086F0:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _080086E6
	movs r2, #0x10
	movs r1, #0
	ldr r0, _08008760
	ldrh r3, [r0]
_08008706:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08008710
	adds r4, r0, #0
_08008710:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08008706
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800873A
	ldr r0, _08008768
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800873A
	movs r4, #0xa0
	lsls r4, r4, #1
_0800873A:
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008756
	ldr r0, _08008768
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08008756
	movs r4, #0xc0
	lsls r4, r4, #1
_08008756:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08008760: .4byte 0x02020DF4
_08008764: .4byte gUnk2020DFC
_08008768: .4byte gKeyState

	THUMB_FUNC_START sub_800876C
sub_800876C: @ 0x0800876C
	push {lr}
	movs r0, #3
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8008780
sub_8008780: @ 0x08008780
	push {lr}
	movs r0, #5
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8008794
sub_8008794: @ 0x08008794
	push {lr}
	movs r0, #2
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80087A8
sub_80087A8: @ 0x080087A8
	push {lr}
	movs r0, #4
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80087BC
sub_80087BC: @ 0x080087BC
	push {lr}
	movs r0, #7
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80087D0
sub_80087D0: @ 0x080087D0
	push {lr}
	movs r0, #8
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80087E4
sub_80087E4: @ 0x080087E4
	push {lr}
	movs r0, #9
	bl sub_8008F88
	movs r0, #1
	bl sub_800A3D8
	movs r0, #8
	bl sub_801DA7C
	movs r0, #0x38
	bl PlayMusic
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8008804
sub_8008804: @ 0x08008804
	push {lr}
	movs r0, #6
	bl sub_8008F88
	movs r0, #4
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8008818
sub_8008818: @ 0x08008818
	push {lr}
	movs r0, #0xa
	bl sub_8008F88
	movs r0, #7
	bl sub_800A3D8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_800882C
sub_800882C: @ 0x0800882C
	push {lr}
	bl sub_80090B8
	movs r0, #0
	bl sub_800A3D8
	movs r0, #2
	bl sub_800A3D8
	movs r0, #1
	bl sub_800AA58
	bl sub_800ABA8
	movs r0, #3
	bl sub_800AA58
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8008854
sub_8008854: @ 0x08008854
	push {r4, lr}
	ldr r0, _0800888C
	movs r1, #0
	strb r1, [r0, #4]
	bl sub_8009364
	bl sub_80089EC
	bl LoadCharblock1
	ldr r0, _08008890
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0x37
	bl PlayMusic
	movs r4, #1
_0800887A:
	bl sub_80086D8
	cmp r0, #2
	beq _080088E0
	cmp r0, #2
	bgt _08008894
	cmp r0, #1
	beq _080088AA
	b _080088D8
	.align 2, 0
_0800888C: .4byte 0x02020E10
_08008890: .4byte sub_8008A5C
_08008894:
	cmp r0, #0x40
	beq _0800889E
	cmp r0, #0x80
	beq _080088A4
	b _080088D8
_0800889E:
	bl sub_80088F0
	b _080088DC
_080088A4:
	bl sub_8008924
	b _080088DC
_080088AA:
	ldr r0, _080088BC
	ldrb r0, [r0, #4]
	cmp r0, #1
	beq _080088CC
	cmp r0, #1
	bgt _080088C0
	cmp r0, #0
	beq _080088C6
	b _080088DC
	.align 2, 0
_080088BC: .4byte 0x02020E10
_080088C0:
	cmp r0, #2
	beq _080088D2
	b _080088DC
_080088C6:
	bl sub_8008958
	b _080088DC
_080088CC:
	bl sub_80089B4
	b _080088DC
_080088D2:
	bl sub_80089D0
	b _080088DC
_080088D8:
	bl sub_8008220
_080088DC:
	cmp r4, #0
	bne _0800887A
_080088E0:
	movs r0, #0x38
	bl PlayMusic
	bl sub_8008A48
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80088F0
sub_80088F0: @ 0x080088F0
	push {lr}
	ldr r2, _08008918
	ldr r1, _0800891C
	ldrb r0, [r2, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #4]
	bl sub_80089EC
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _08008920
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_08008918: .4byte 0x02020E10
_0800891C: .4byte gUnk_8DF813C
_08008920: .4byte LoadOam

	THUMB_FUNC_START sub_8008924
sub_8008924: @ 0x08008924
	push {lr}
	ldr r2, _0800894C
	ldr r1, _08008950
	ldrb r0, [r2, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #4]
	bl sub_80089EC
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _08008954
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0800894C: .4byte 0x02020E10
_08008950: .4byte gUnk_8DF813F
_08008954: .4byte LoadOam

	THUMB_FUNC_START sub_8008958 @trunk menu card details
sub_8008958: @ 0x08008958
	push {lr}
	movs r0, #2
	bl sub_800901C
	adds r2, r0, #0
	ldr r0, _080089AC
	movs r1, #0
	strh r2, [r0]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	bl sub_800B538
	movs r0, #0x37
	bl PlayMusic
	bl sub_801F6B0
	movs r0, #0
	bl sub_800A3D8
	movs r0, #2
	bl sub_800A3D8
	movs r0, #1
	bl sub_800AA58
	bl sub_800ABA8
	bl sub_8009364
	bl sub_80089EC
	ldr r0, _080089B0
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock1
	pop {r0}
	bx r0
	.align 2, 0
_080089AC: .4byte gStatMod
_080089B0: .4byte sub_8008A5C

	THUMB_FUNC_START sub_80089B4
sub_80089B4: @ 0x080089B4
	push {lr}
	movs r0, #7
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	bl sub_800ABD0
	movs r0, #6
	bl sub_800AA58
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80089D0
sub_80089D0: @ 0x080089D0
	push {lr}
	movs r0, #8
	bl sub_8008F88
	movs r0, #3
	bl sub_800A3D8
	bl sub_800ABD0
	movs r0, #6
	bl sub_800AA58
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80089EC
sub_80089EC: @ 0x080089EC
	push {r4, r5, lr}
	ldr r3, _08008A30
	ldr r2, _08008A34
	ldr r5, _08008A38
	ldrb r0, [r5, #4]
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r4, _08008A3C
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r3]
	ldr r0, _08008A40
	str r0, [r3, #4]
	ldrb r0, [r5, #4]
	adds r2, r0, r2
	ldrb r1, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r0, _08008A44
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r3, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008A30: .4byte 0x02018430
_08008A34: .4byte gUnk_8DF8142
_08008A38: .4byte 0x02020E10
_08008A3C: .4byte gUnk_8DF8145
_08008A40: .4byte 0x0000C120
_08008A44: .4byte 0x40000800

	THUMB_FUNC_START sub_8008A48
sub_8008A48: @ 0x08008A48
	ldr r1, _08008A58
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08008A58: .4byte 0x02018430

	THUMB_FUNC_START sub_8008A5C
sub_8008A5C: @ 0x08008A5C
	push {lr}
	bl LoadPalettes
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
	ldr r2, _08008A8C
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08008A8C: .4byte 0x04000050

	THUMB_FUNC_START sub_8008A90
sub_8008A90: @ 0x08008A90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r1, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r1, #0xeb
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08008B18
	ldr r6, _08008B0C
	ldr r5, _08008B10
	ldrb r0, [r5]
	lsls r0, r0, #2
	lsls r4, r3, #2
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r0, r6
	ldr r0, [r0]
	adds r1, r7, #0
	movs r2, #0x20
	bl CpuSet
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, #0x80
	adds r1, r7, #0
	adds r1, #0x40
	movs r2, #0x20
	bl CpuSet
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, #0x40
	ldr r2, _08008B14
	mov r8, r2
	ldr r1, [r2]
	movs r2, #0x20
	bl CpuSet
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, #0xc0
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0x40
	movs r2, #0x20
	bl CpuSet
	b _08008B32
	.align 2, 0
_08008B0C: .4byte gUnk_8DFA3A8
_08008B10: .4byte gLanguage
_08008B14: .4byte 0x0201CB30
_08008B18:
	ldr r2, _08008B3C
	ldr r1, _08008B40
	lsls r0, r3, #2
	adds r0, r0, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r7, #0
	movs r2, #0x40
	bl CpuSet
_08008B32:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008B3C: .4byte gUnk_8DFA3A8
_08008B40: .4byte gLanguage

	THUMB_FUNC_START sub_8008B44
sub_8008B44: @ 0x08008B44
	push {r4, r5, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r4, r2, #0
	adds r0, r2, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08008B6C
	ldr r1, _08008B84
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08008B88
	ldr r1, [r1]
	movs r2, #0x10
	bl CpuSet
_08008B6C:
	ldr r0, _08008B84
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r1, r5, #0
	movs r2, #0x10
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008B84: .4byte gUnk_8DFA348
_08008B88: .4byte 0x0201CB34

	THUMB_FUNC_START sub_8008B8C
sub_8008B8C: @ 0x08008B8C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08008BB4
	str r1, [r2]
	ldr r4, _08008BB8
	ldr r3, _08008BBC
	lsls r2, r0, #2
	adds r2, r2, r0
	ldrb r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #2
	adds r2, r2, r4
	ldr r0, [r2]
	movs r2, #0x40
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008BB4: .4byte 0x0201CB30
_08008BB8: .4byte gUnk_8DFA5B8
_08008BBC: .4byte gLanguage

	THUMB_FUNC_START sub_8008BC0
sub_8008BC0: @ 0x08008BC0
	push {lr}
	lsls r0, r0, #0x18
	ldr r2, _08008BDC
	str r1, [r2]
	ldr r2, _08008BE0
	lsrs r0, r0, #0x16
	adds r0, r0, r2
	ldr r0, [r0]
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08008BDC: .4byte 0x0201CB34
_08008BE0: .4byte gUnk_8DFA588

	THUMB_FUNC_START sub_8008BE4
sub_8008BE4: @ 0x08008BE4
	push {lr}
	adds r1, r0, #0
	ldr r0, _08008BF4
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08008BF4: .4byte gUnk_808E310

	THUMB_FUNC_START sub_8008BF8
sub_8008BF8: @ 0x08008BF8
	push {lr}
	adds r1, r0, #0
	ldr r0, _08008C08
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08008C08: .4byte gUnk_808ECD0

	THUMB_FUNC_START sub_8008C0C
sub_8008C0C: @ 0x08008C0C
	push {lr}
	adds r1, r0, #0
	ldr r0, _08008C1C
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08008C1C: .4byte gUnk_808E330

	THUMB_FUNC_START sub_8008C20
sub_8008C20: @ 0x08008C20
	push {lr}
	adds r1, r0, #0
	ldr r0, _08008C30
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08008C30: .4byte gUnk_808E350

	THUMB_FUNC_START sub_8008C34
sub_8008C34: @ 0x08008C34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08008C84
	ldr r1, [r0, #4]
	ldr r0, [r0]
	lsls r3, r1, #0x1f
	lsrs r2, r0, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r1, #1
	bl SetMoney
	movs r4, #0
	ldr r5, _08008C88
	ldrh r0, [r5]
	cmp r0, #0
	beq _08008CA0
	mov r8, r5
	movs r0, #0xc8
	lsls r0, r0, #2
	mov ip, r0
	movs r7, #1
	ldr r6, _08008C8C
_08008C64:
	lsls r0, r4, #1
	mov r2, r8
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, ip
	bhi _08008C94
	ldrh r0, [r1]
	adds r1, r0, r6
	ldrb r2, [r1]
	movs r3, #0xfa
	subs r0, r3, r2
	cmp r7, r0
	ble _08008C90
	strb r3, [r1]
	b _08008C94
	.align 2, 0
_08008C84: .4byte gMoney
_08008C88: .4byte gUnk_8090470
_08008C8C: .4byte gTrunkCardQty
_08008C90:
	adds r0, r2, #1
	strb r0, [r1]
_08008C94:
	adds r4, #1
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _08008C64
_08008CA0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

.align 2, 0
