    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	THUMB_FUNC_START DeckMenu
DeckMenu: @ 0x0801D1C0
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
	bl PlayMusic
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
	bl PlayMusic
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

	THUMB_FUNC_START sub_801D3FC @ternary?
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
	bl PlayMusic
	bl sub_801DE5C
	bl sub_801D61C
	bl LoadCharblock1
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
	bl PlayMusic
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
	bl PlayMusic
	ldr r0, _0801D578
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0801D570: .4byte 0x0201CB50
_0801D574: .4byte 0x08E00AD4
_0801D578: .4byte LoadOam

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
	bl PlayMusic
	ldr r0, _0801D5AC
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0801D5A4: .4byte 0x0201CB50
_0801D5A8: .4byte 0x08E00AD6
_0801D5AC: .4byte LoadOam

	THUMB_FUNC_START sub_801D5B0
sub_801D5B0: @ 0x0801D5B0
	push {lr}
	movs r0, #2
	bl sub_801DAF8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #0x37
	bl PlayMusic
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
	bl LoadCharblock1
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
_0801D660: .4byte gOamBuffer+0x30
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
_0801D688: .4byte gOamBuffer+0x30

	THUMB_FUNC_START sub_801D68C
sub_801D68C: @ 0x0801D68C
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
	ldr r2, _0801D6BC
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0801D6BC: .4byte 0x04000050





	THUMB_FUNC_START InitDeckCapacity
InitDeckCapacity: @ 0x0801D6C0
	ldr r1, _0801D6CC
	movs r0, #0xc8
	lsls r0, r0, #3
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D6CC: .4byte gDeckCapacity

	THUMB_FUNC_START IncreaseDeckCapacity
IncreaseDeckCapacity: @ 0x0801D6D0
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

	THUMB_FUNC_START InitDuelistLevel
InitDuelistLevel: @ 0x0801D724
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
_0801D79C: .4byte gDuelData
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
	bl PlayMusic
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
	bl PlayMusic
	b _0801D85A
_0801D82C:
	bl GetDeckSize
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801D85A
	movs r0, #0x39
	bl PlayMusic
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
	bl PlayMusic
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
	bl PlayMusic
	b _0801D90A
_0801D8DC:
	bl GetDeckSize
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801D90A
	movs r0, #0x39
	bl PlayMusic
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

	THUMB_FUNC_START InitDeck
InitDeck: @ 0x0801DA58
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
	bl InitDeck
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

	THUMB_FUNC_START IsDeckFull
IsDeckFull: @ 0x0801DBBC
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

	THUMB_FUNC_START IsCostWithinCapacity
IsCostWithinCapacity: @ 0x0801DBE4
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
	bl PlayMusic
	b _0801DC5A
_0801DC36:
	movs r0, #0x39
	bl PlayMusic
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
	bl PlayMusic
	b _0801DCBE
_0801DC90:
	bl GetDeckSize
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801DCBE
	movs r0, #0x39
	bl PlayMusic
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
	bl PlayMusic
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
_0801DF34: .4byte gUnk_8DF811C
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
_0801E270: .4byte gUnk_8DF811C
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
_0801E4D8: .4byte gStarTile
_0801E4DC: .4byte 0x0000C020
_0801E4E0: .4byte 0x04000008
_0801E4E4: .4byte gSwordTile
_0801E4E8: .4byte 0x0000C040
_0801E4EC: .4byte gShieldTile
_0801E4F0: .4byte 0x0000C060
_0801E4F4: .4byte 0x0000C080
_0801E4F8: .4byte 0x080B95D8
_0801E4FC: .4byte 0x0000C120
_0801E500: .4byte 0x080B9608
_0801E504: .4byte 0x00001801
_0801E508: .4byte gAttributeIconTiles
_0801E50C: .4byte gLanguage
_0801E510: .4byte 0x0200C400
_0801E514: .4byte gTypeIconTiles
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
_0801E64C: .4byte gUnk_808E820
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
