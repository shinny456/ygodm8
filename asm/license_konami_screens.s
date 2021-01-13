    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED


	THUMB_FUNC_START sub_80268D8
sub_80268D8: @ 0x080268D8
	push {r4, r5, r6, lr}
	bl sub_8026A94
	ldr r0, _08026918
	bl sub_80081DC
	bl sub_8008220
	movs r4, #0
_080268EA:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x77
	bls _080268EA
	bl sub_8026D04
	ldr r0, _0802691C
	bl sub_80081DC
	ldr r1, _08026920
	ldr r2, _08026924
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _08026928
	movs r0, #0x10
	strb r0, [r4]
	ldr r5, _0802692C
	movs r0, #0
	strb r0, [r5]
	b _08026954
	.align 2, 0
_08026918: .4byte sub_8026D74
_0802691C: .4byte sub_8026E44
_08026920: .4byte 0x04000050
_08026924: .4byte 0x00003FFF
_08026928: .4byte 0x0201EE61
_0802692C: .4byte 0x0201EE60
_08026930:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0802694E
	ldr r1, _080269CC
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802694A
	subs r0, #1
	strb r0, [r1]
_0802694A:
	movs r0, #0
	strb r0, [r5]
_0802694E:
	ldr r0, _080269D0
	ldrb r1, [r4]
	strh r1, [r0]
_08026954:
	bl sub_8008220
	ldrb r0, [r4]
	cmp r0, #0
	bne _08026930
	movs r4, #0
_08026960:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x77
	bls _08026960
	ldr r2, _080269CC
	movs r1, #0
	strb r1, [r2]
	ldr r0, _080269D4
	strb r1, [r0]
	adds r4, r0, #0
	adds r5, r2, #0
_0802697C:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0802699A
	ldr r1, _080269CC
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _08026996
	adds r0, #1
	strb r0, [r1]
_08026996:
	movs r0, #0
	strb r0, [r4]
_0802699A:
	ldr r0, _080269D0
	ldrb r1, [r5]
	strh r1, [r0]
	bl sub_8008220
	ldrb r0, [r5]
	cmp r0, #0xf
	bls _0802697C
	bl sub_8026D20
	ldr r0, _080269D8
	bl sub_80081DC
	ldr r1, _080269DC
	ldr r2, _080269E0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _080269CC
	movs r0, #0x10
	strb r0, [r4]
	ldr r5, _080269D4
	movs r0, #0
	strb r0, [r5]
	b _08026A08
	.align 2, 0
_080269CC: .4byte 0x0201EE61
_080269D0: .4byte 0x04000054
_080269D4: .4byte 0x0201EE60
_080269D8: .4byte sub_8026E94
_080269DC: .4byte 0x04000050
_080269E0: .4byte 0x00003FFF
_080269E4:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08026A02
	ldr r1, _08026A80
	ldrb r0, [r1]
	cmp r0, #0
	beq _080269FE
	subs r0, #1
	strb r0, [r1]
_080269FE:
	movs r0, #0
	strb r0, [r5]
_08026A02:
	ldr r0, _08026A84
	ldrb r1, [r4]
	strh r1, [r0]
_08026A08:
	bl sub_8008220
	ldrb r0, [r4]
	cmp r0, #0
	bne _080269E4
	movs r4, #0
_08026A14:
	bl sub_8008220
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x77
	bls _08026A14
	ldr r2, _08026A80
	movs r1, #0
	strb r1, [r2]
	ldr r0, _08026A88
	strb r1, [r0]
	adds r4, r0, #0
	ldr r6, _08026A84
	adds r5, r2, #0
_08026A32:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08026A50
	ldr r1, _08026A80
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _08026A4C
	adds r0, #1
	strb r0, [r1]
_08026A4C:
	movs r0, #0
	strb r0, [r4]
_08026A50:
	ldrb r0, [r5]
	strh r0, [r6]
	bl sub_8008220
	ldrb r0, [r5]
	cmp r0, #0xf
	bls _08026A32
	ldr r1, _08026A8C
	ldr r2, _08026A90
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08026A80
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08026A88
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08026A84
	movs r0, #0x10
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026A80: .4byte 0x0201EE61
_08026A84: .4byte 0x04000054
_08026A88: .4byte 0x0201EE60
_08026A8C: .4byte 0x04000050
_08026A90: .4byte 0x00003FFF

	THUMB_FUNC_START sub_8026A94
sub_8026A94: @ 0x08026A94
	push {lr}
	bl sub_08026BA4
	ldr r0, _08026AC0
	bl sub_80081DC
	bl sub_8008220
	bl sub_8026C2C
	bl sub_8026BA8
	bl sub_8026BE8
	bl sub_08026C28
	bl LoadVRAM
	bl sub_8026CEC
	pop {r0}
	bx r0
	.align 2, 0
_08026AC0: .4byte sub_8026D58

	THUMB_FUNC_START sub_8026AC4
sub_8026AC4: @ 0x08026AC4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08026B10
	cmp r0, #2
	bgt _08026AE0
	cmp r0, #1
	beq _08026AEA
	b _08026B7C
_08026AE0:
	cmp r1, #3
	beq _08026B34
	cmp r1, #4
	beq _08026B58
	b _08026B7C
_08026AEA:
	movs r4, #0
	ldr r6, _08026B08
	ldr r5, _08026B0C
_08026AF0:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r6, #0x40
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x13
	bls _08026AF0
	b _08026B96
	.align 2, 0
_08026B08: .4byte gE0B2B0
_08026B0C: .4byte 0x0200FC00
_08026B10:
	movs r4, #0
	ldr r6, _08026B2C
	ldr r5, _08026B30
_08026B16:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r6, #0x40
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x13
	bls _08026B16
	b _08026B96
	.align 2, 0
_08026B2C: .4byte gE0B7B0
_08026B30: .4byte 0x0200FC00
_08026B34:
	movs r4, #0
	ldr r6, _08026B50
	ldr r5, _08026B54
_08026B3A:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r6, #0x40
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x13
	bls _08026B3A
	b _08026B96
	.align 2, 0
_08026B50: .4byte gE0BCB0
_08026B54: .4byte 0x0200FC00
_08026B58:
	movs r4, #0
	ldr r6, _08026B74
	ldr r5, _08026B78
_08026B5E:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r6, #0x40
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x13
	bls _08026B5E
	b _08026B96
	.align 2, 0
_08026B74: .4byte gE0C1B0
_08026B78: .4byte 0x0200FC00
_08026B7C:
	movs r4, #0
	ldr r6, _08026B9C
	ldr r5, _08026BA0
_08026B82:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r6, #0x40
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x13
	bls _08026B82
_08026B96:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026B9C: .4byte gE0ADB0
_08026BA0: .4byte 0x0200FC00

	THUMB_FUNC_START sub_08026BA4
sub_08026BA4: @ 0x08026BA4
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8026BA8
sub_8026BA8: @ 0x08026BA8
	push {r4, r5, r6, lr}
	ldr r0, _08026BDC
	ldr r4, _08026BE0
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r4, #0
	bl CpuSet
	movs r6, #0
	ldr r5, _08026BE4
	movs r0, #0xf8
	lsls r0, r0, #8
	adds r4, r4, r0
_08026BC2:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x40
	adds r4, #0x40
	adds r6, #1
	cmp r6, #0x13
	bls _08026BC2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026BDC: .4byte gE01E50
_08026BE0: .4byte 0x02000400
_08026BE4: .4byte gE02610

	THUMB_FUNC_START sub_8026BE8
sub_8026BE8: @ 0x08026BE8
	push {r4, r5, r6, lr}
	ldr r0, _08026C1C
	ldr r4, _08026C20
	movs r2, #0xfc
	lsls r2, r2, #3
	adds r1, r4, #0
	bl CpuSet
	movs r6, #0
	ldr r5, _08026C24
	movs r0, #0xb0
	lsls r0, r0, #8
	adds r4, r4, r0
_08026C02:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x40
	adds r4, #0x40
	adds r6, #1
	cmp r6, #0x13
	bls _08026C02
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026C1C: .4byte gE02E50
_08026C20: .4byte 0x02004400
_08026C24: .4byte gE03E10

	THUMB_FUNC_START sub_08026C28
sub_08026C28: @ 0x08026C28
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8026C2C
sub_8026C2C: @ 0x08026C2C
	push {r4, r5, r6, lr}
	ldr r0, _08026C60
	ldr r4, _08026C64
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r4, #0
	bl CpuSet
	movs r6, #0
	ldr r5, _08026C68
	movs r0, #0x80
	lsls r0, r0, #6
	adds r4, r4, r0
_08026C46:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x40
	adds r4, #0x40
	adds r6, #1
	cmp r6, #0x13
	bls _08026C46
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026C60: .4byte gE01390
_08026C64: .4byte 0x0200C400
_08026C68: .4byte gE01750
	.byte 0x70, 0xB5, 0x19, 0x48
	.byte 0x19, 0x4D, 0x80, 0x24, 0x64, 0x01, 0x29, 0x1C, 0x22, 0x1C, 0x31, 0xF0, 0x6B, 0xFD, 0x17, 0x48
	.byte 0x80, 0x22, 0x92, 0x01, 0xA9, 0x18, 0x22, 0x1C, 0x31, 0xF0, 0x64, 0xFD, 0x14, 0x48, 0x80, 0x22
	.byte 0xD2, 0x01, 0xA9, 0x18, 0x22, 0x1C, 0x31, 0xF0, 0x5D, 0xFD, 0x12, 0x48, 0xC0, 0x22, 0xD2, 0x01
	.byte 0xA9, 0x18, 0x50, 0x22, 0x31, 0xF0, 0x56, 0xFD, 0x00, 0x26, 0x0F, 0x4C, 0xF0, 0x20, 0x00, 0x02
	.byte 0x2D, 0x18, 0x20, 0x1C, 0x29, 0x1C, 0x20, 0x22, 0x31, 0xF0, 0x4C, 0xFD, 0x40, 0x34, 0x40, 0x35
	.byte 0x01, 0x36, 0x13, 0x2E, 0xF5, 0xD9, 0x01, 0x20, 0xFF, 0xF7, 0xFC, 0xFE, 0x70, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x10, 0x48, 0xE0, 0x08, 0x00, 0x04, 0x00, 0x02, 0x10, 0x68, 0xE0, 0x08
	.byte 0x10, 0x88, 0xE0, 0x08, 0x10, 0xA8, 0xE0, 0x08, 0xB0, 0xA8, 0xE0, 0x08

	THUMB_FUNC_START sub_8026CEC
sub_8026CEC: @ 0x08026CEC
	push {lr}
	ldr r0, _08026CFC
	ldr r1, _08026D00
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08026CFC: .4byte 0x08E01370
_08026D00: .4byte 0x02000000

	THUMB_FUNC_START sub_8026D04
sub_8026D04: @ 0x08026D04
	push {lr}
	ldr r0, _08026D18
	ldr r1, _08026D1C
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08026D18: .4byte 0x08E01C50
_08026D1C: .4byte 0x02000000

	THUMB_FUNC_START sub_8026D20
sub_8026D20: @ 0x08026D20
	push {lr}
	ldr r0, _08026D30
	ldr r1, _08026D34
	movs r2, #0x20
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08026D30: .4byte 0x08E02E10
_08026D34: .4byte 0x02000000

	thumb_func_start sub_8026D38
sub_8026D38: @ 0x08026D38
	bx lr
	.align 2, 0

	thumb_func_start sub_8026D3C
sub_8026D3C: @ 0x08026D3C
	push {lr}
	ldr r0, _08026D50 @ =0x08E04610
	ldr r1, _08026D54 @ =0x02000000
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08026D50: .4byte 0x08E04610
_08026D54: .4byte 0x02000000

	thumb_func_start sub_8026D58
sub_8026D58: @ 0x08026D58
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x80
	strh r0, [r1]
	ldr r0, _08026D70 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bx lr
	.align 2, 0
_08026D70: .4byte 0x04000050

	THUMB_FUNC_START sub_8026D74
sub_8026D74: @ 0x08026D74
	push {lr}
	bl LoadPalettes
	ldr r0, _08026DB8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08026DBC
	strh r1, [r0]
	bl LoadBgOffsets
	ldr r2, _08026DC0
	ldrh r1, [r2]
	ldr r0, _08026DC4
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0xe0
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0xc
	orrs r0, r1
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08026DB8: .4byte gBG3VOFS
_08026DBC: .4byte gBG3HOFS
_08026DC0: .4byte 0x0400000E
_08026DC4: .4byte 0x0000E0F3
	.byte 0x10, 0xB5, 0x1E, 0xF0, 0x89, 0xFB, 0x17, 0x48
	.byte 0x00, 0x21, 0x01, 0x80, 0x16, 0x48, 0x01, 0x80, 0x16, 0x48, 0x01, 0x80, 0x16, 0x48, 0x01, 0x80
	.byte 0x1E, 0xF0, 0x28, 0xFB, 0x15, 0x4A, 0x11, 0x88, 0x15, 0x4B, 0x18, 0x1C, 0x08, 0x40, 0x10, 0x80
	.byte 0x10, 0x88, 0xF8, 0x24, 0x64, 0x01, 0x21, 0x1C, 0x08, 0x43, 0x10, 0x80, 0x10, 0x88, 0x10, 0x80
	.byte 0x02, 0x32, 0x10, 0x88, 0x03, 0x40, 0x13, 0x80, 0x10, 0x88, 0xF0, 0x23, 0x5B, 0x01, 0x19, 0x1C
	.byte 0x08, 0x43, 0x10, 0x80, 0x10, 0x88, 0x10, 0x80, 0x80, 0x21, 0xC9, 0x04, 0xC0, 0x24, 0x24, 0x01
	.byte 0x20, 0x1C, 0x08, 0x80, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x0C, 0x42, 0x02, 0x02
	.byte 0x4C, 0x42, 0x02, 0x02, 0x18, 0x42, 0x02, 0x02, 0x04, 0x42, 0x02, 0x02, 0x0C, 0x00, 0x00, 0x04
	.byte 0xF3, 0xE0, 0x00, 0x00

	THUMB_FUNC_START sub_8026E44
sub_8026E44: @ 0x08026E44
	push {lr}
	bl LoadPalettes
	ldr r0, _08026E84
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08026E88
	strh r1, [r0]
	bl LoadBgOffsets
	ldr r2, _08026E8C
	ldrh r1, [r2]
	ldr r0, _08026E90
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0xf8
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08026E84: .4byte gBG3VOFS
_08026E88: .4byte gBG3HOFS
_08026E8C: .4byte 0x0400000E
_08026E90: .4byte 0x0000E0F3

	THUMB_FUNC_START sub_8026E94
sub_8026E94: @ 0x08026E94
	push {lr}
	bl LoadPalettes
	ldr r0, _08026ED8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08026EDC
	strh r1, [r0]
	bl LoadBgOffsets
	ldr r2, _08026EE0
	ldrh r1, [r2]
	ldr r0, _08026EE4
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0xf0
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08026ED8: .4byte gBG3VOFS
_08026EDC: .4byte gBG3HOFS
_08026EE0: .4byte 0x0400000E
_08026EE4: .4byte 0x0000E0F3
	.byte 0x00, 0xB5, 0x1E, 0xF0, 0xF9, 0xFA, 0x0F, 0x48
	.byte 0x00, 0x21, 0x01, 0x80, 0x0E, 0x48, 0x01, 0x80, 0x1E, 0xF0, 0x9C, 0xFA, 0x0D, 0x4A, 0x11, 0x88
	.byte 0x0D, 0x48, 0x08, 0x40, 0x10, 0x80, 0x10, 0x88, 0xE8, 0x23, 0x5B, 0x01, 0x19, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x10, 0x88, 0x08, 0x21, 0x08, 0x43, 0x10, 0x80, 0x80, 0x21, 0xC9, 0x04, 0x80, 0x22
	.byte 0x12, 0x01, 0x10, 0x1C, 0x08, 0x80, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x18, 0x42, 0x02, 0x02
	.byte 0x04, 0x42, 0x02, 0x02, 0x0E, 0x00, 0x00, 0x04, 0xF3, 0xE0, 0x00, 0x00

	.align 2, 0
