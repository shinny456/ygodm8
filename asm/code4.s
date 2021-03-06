    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED



	THUMB_FUNC_START sub_804DE74
sub_804DE74: @ 0x0804DE74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r0, _0804DF40
	movs r1, #0x87
	lsls r1, r1, #2
	adds r5, r0, r1
_0804DE88:
	ldrb r0, [r5]
	bl sub_804DF5C
	adds r5, #2
	adds r4, #1
	cmp r4, #0xe
	bls _0804DE88
	ldr r0, _0804DF44
	ldrh r0, [r0, #0x1e]
	lsls r0, r0, #5
	ldr r1, _0804DF48
	adds r2, r0, r1
	ldr r3, _0804DF4C
	movs r4, #0
	mov sl, r1
	ldr r0, _0804DF50
	mov sb, r0
	movs r6, #0xf0
	lsls r6, r6, #2
	movs r5, #0xe0
	lsls r5, r5, #1
_0804DEB2:
	movs r1, #0
_0804DEB4:
	ldrb r0, [r3]
	strb r0, [r2]
	adds r3, #1
	adds r2, #1
	adds r1, #1
	cmp r1, #0x3f
	bls _0804DEB4
	adds r2, r2, r6
	adds r3, r3, r5
	adds r4, #1
	cmp r4, #1
	bls _0804DEB2
	movs r4, #0
	ldr r6, _0804DF40
	movs r1, #0x87
	lsls r1, r1, #2
	adds r1, r1, r6
	mov r8, r1
	ldr r3, _0804DF54
	mov ip, r3
	ldr r7, _0804DF58
_0804DEDE:
	lsls r0, r4, #1
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #5
	mov r3, sl
	adds r2, r0, r3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r1, #0x2c
	ldrb r0, [r1]
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #5
	mov r3, sb
	adds r1, r0, r3
	movs r0, #0
	adds r5, r4, #1
_0804DF08:
	movs r3, #0
	adds r4, r0, #1
_0804DF0C:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	adds r3, #1
	cmp r3, #0x3f
	bls _0804DF0C
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r4, #0
	cmp r0, #1
	bls _0804DF08
	adds r4, r5, #0
	cmp r4, #0xe
	bls _0804DEDE
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DF40: .4byte gOverworld
_0804DF44: .4byte 0x08103264
_0804DF48: .4byte 0x02010400
_0804DF4C: .4byte 0x082A8E4C
_0804DF50: .4byte 0x082A906C
_0804DF54: .4byte 0x081032A2
_0804DF58: .4byte 0x08103284

	THUMB_FUNC_START sub_804DF5C
sub_804DF5C: @ 0x0804DF5C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _0804DFCC
	lsls r0, r6, #5
	adds r5, r0, r1
	ldrb r0, [r5, #0x12]
	cmp r0, #3
	bhi _0804DFE4


	ldrh r4, [r5, #0x10]
	adds r3, r0, #0
	lsls r2, r3, #1
	ldr r1, _0804DFD0
	ldrb r0, [r5, #0x1e]
	adds r0, r0, r1
	adds r2, r2, r3
	ldrb r0, [r0]
	adds r2, r2, r0
	lsls r2, r2, #0x18
	ldr r1, _0804DFD4
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0804DFD8
	adds r3, r0, r1
	ldr r0, _0804DFDC
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, _0804DFE0
	lsrs r2, r2, #0x17
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #5
	ldr r1, [r4]
	adds r1, r1, r0
	movs r0, #0
_0804DFA6:
	movs r2, #0
	adds r4, r0, #1
_0804DFAA:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	adds r2, #1
	cmp r2, #0x7f
	bls _0804DFAA
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	cmp r0, #3
	bls _0804DFA6
	b _0804E036
	.align 2, 0
_0804DFCC: .4byte gOverworld
_0804DFD0: .4byte 0x08E0DA12
_0804DFD4: .4byte 0x08103264
_0804DFD8: .4byte 0x02010400
_0804DFDC: .4byte 0x08E11790
_0804DFE0: .4byte 0x081032D2
_0804DFE4:
	ldrh r3, [r5, #0x10]
	ldr r1, _0804E03C
	ldrb r0, [r5, #0x12]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r1, _0804E040
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0804E044
	adds r4, r0, r1
	ldr r0, _0804E048
	lsls r3, r3, #2
	adds r3, r3, r0
	ldr r0, _0804E04C
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #5
	ldr r1, [r3]
	adds r1, r1, r0
	movs r0, #0
_0804E012:
	movs r2, #0
	adds r3, r0, #1
_0804E016:
	ldrb r0, [r1]
	strb r0, [r4]
	adds r1, #1
	adds r4, #1
	adds r2, #1
	cmp r2, #0x7f
	bls _0804E016
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r3, #0
	cmp r0, #3
	bls _0804E012
_0804E036:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804E03C: .4byte 0x08E0DA4F
_0804E040: .4byte 0x08103264
_0804E044: .4byte 0x02010400
_0804E048: .4byte 0x08E11790
_0804E04C: .4byte 0x081032D2

	THUMB_FUNC_START sub_804E050
sub_804E050: @ 0x0804E050
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _0804E0C4
	lsls r0, r4, #5
	adds r0, r0, r1
	movs r2, #0x10
	ldrsh r1, [r0, r2]
	cmp r1, #0x19
	bne _0804E0DC
	ldrb r3, [r0, #0x12]
	lsls r2, r3, #1
	ldr r1, _0804E0C8
	ldrb r0, [r0, #0x1e]
	adds r0, r0, r1
	adds r2, r2, r3
	ldrb r0, [r0]
	adds r2, r2, r0
	lsls r2, r2, #0x18
	ldr r1, _0804E0CC
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0804E0D0
	adds r3, r0, r1
	ldr r1, _0804E0D4
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _0804E0D8
	lsrs r2, r2, #0x17
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	movs r0, #0
_0804E09C:
	movs r2, #0
	adds r4, r0, #1
_0804E0A0:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	adds r2, #1
	cmp r2, #0x7f
	bls _0804E0A0
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r3, r3, r2
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	cmp r0, #3
	bls _0804E09C
	b _0804E1AE
	.align 2, 0
_0804E0C4: .4byte gOverworld
_0804E0C8: .4byte 0x08E0DA26
_0804E0CC: .4byte 0x08103264
_0804E0D0: .4byte 0x02010400
_0804E0D4: .4byte 0x08E11790
_0804E0D8: .4byte 0x081032D2
_0804E0DC:
	cmp r1, #1
	bne _0804E154
	ldrb r3, [r0, #0x12]
	lsls r2, r3, #1
	ldr r1, _0804E140
	ldrb r0, [r0, #0x1e]
	adds r0, r0, r1
	adds r2, r2, r3
	ldrb r0, [r0]
	adds r2, r2, r0
	lsls r2, r2, #0x18
	ldr r1, _0804E144
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0804E148
	adds r3, r0, r1
	ldr r1, _0804E14C
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _0804E150
	lsrs r2, r2, #0x17
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	movs r0, #0
_0804E118:
	movs r2, #0
	adds r4, r0, #1
_0804E11C:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	adds r2, #1
	cmp r2, #0x7f
	bls _0804E11C
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r3, r3, r2
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	cmp r0, #3
	bls _0804E118
	b _0804E1AE
	.align 2, 0
_0804E140: .4byte 0x08E0DA26
_0804E144: .4byte 0x08103264
_0804E148: .4byte 0x02010400
_0804E14C: .4byte 0x08E11790
_0804E150: .4byte 0x081032D2
_0804E154:
	cmp r1, #4
	bne _0804E1AE
	ldrb r3, [r0, #0x12]
	lsls r1, r3, #1
	ldr r2, _0804E1B4
	ldrb r0, [r0, #0x1e]
	adds r0, r0, r2
	adds r1, r1, r3
	ldrb r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x18
	ldr r2, _0804E1B8
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r2, _0804E1BC
	adds r3, r0, r2
	ldr r2, _0804E1C0
	ldr r0, _0804E1C4
	lsrs r1, r1, #0x17
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #5
	ldr r1, [r2, #0x24]
	adds r1, r1, r0
	movs r0, #0
_0804E18A:
	movs r2, #0
	adds r4, r0, #1
_0804E18E:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	adds r2, #1
	cmp r2, #0x7f
	bls _0804E18E
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r3, r3, r2
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	cmp r0, #3
	bls _0804E18A
_0804E1AE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E1B4: .4byte 0x08E0DA26
_0804E1B8: .4byte 0x08103264
_0804E1BC: .4byte 0x02010400
_0804E1C0: .4byte 0x08E11790
_0804E1C4: .4byte 0x081032D2

	THUMB_FUNC_START sub_804E1C8
sub_804E1C8: @ 0x0804E1C8
	ldr r0, _0804E1D8
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804E1DC
	movs r0, #6
	b _0804E286
	.align 2, 0
_0804E1D8: .4byte gUnk2020DFC
_0804E1DC:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804E1EA
	movs r0, #5
	b _0804E286
_0804E1EA:
	ldr r1, _0804E204
	ldrh r2, [r1]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0804E22C
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0804E208
	movs r0, #0xb
	b _0804E286
	.align 2, 0
_0804E204: .4byte gKeyState
_0804E208:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0804E214
	movs r0, #0xc
	b _0804E286
_0804E214:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0804E220
	movs r0, #0xd
	b _0804E286
_0804E220:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0804E22C
	movs r0, #0xe
	b _0804E286
_0804E22C:
	ldrh r1, [r1]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804E23A
	movs r0, #1
	b _0804E286
_0804E23A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804E246
	movs r0, #2
	b _0804E286
_0804E246:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804E252
	movs r0, #3
	b _0804E286
_0804E252:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804E25E
	movs r0, #4
	b _0804E286
_0804E25E:
	ldr r0, _0804E280
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804E284
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0804E284
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804E284
	movs r0, #0
	b _0804E286
	.align 2, 0
_0804E280: .4byte 0x02020DF4
_0804E284:
	movs r0, #7
_0804E286:
	bx lr

	THUMB_FUNC_START sub_804E288
sub_804E288: @ 0x0804E288
	push {r4, r5, lr}
	movs r5, #0x66
	ldr r2, _0804E298
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r2, r1
	b _0804E500
	.align 2, 0
_0804E298: .4byte gOverworld
_0804E29C:
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
	bl sub_804E1C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #1
	cmp r0, #0xd
	bls _0804E2B4
	b _0804E4F0
_0804E2B4:
	lsls r0, r0, #2
	ldr r1, _0804E2C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804E2C0: .4byte 0x0804E2C4
_0804E2C4: @ jump table
	.4byte _0804E2FC @ case 0
	.4byte _0804E304 @ case 1
	.4byte _0804E30C @ case 2
	.4byte _0804E314 @ case 3
	.4byte _0804E31C @ case 4
	.4byte _0804E326 @ case 5
	.4byte _0804E330 @ case 6
	.4byte _0804E3D0 @ case 7
	.4byte _0804E4F0 @ case 8
	.4byte _0804E478 @ case 9
	.4byte _0804E4D4 @ case 10
	.4byte _0804E4D8 @ case 11
	.4byte _0804E4DC @ case 12
	.4byte _0804E4E0 @ case 13
_0804E2FC:
	movs r0, #2
	bl sub_80521D0
	b _0804E4E6
_0804E304:
	movs r0, #0
	bl sub_80521D0
	b _0804E4E6
_0804E30C:
	movs r0, #1
	bl sub_80521D0
	b _0804E4E6
_0804E314:
	movs r0, #3
	bl sub_80521D0
	b _0804E4E6
_0804E31C:
	bl sub_8051FFC
	bl sub_804EEE0
	b _0804E4F8
_0804E326:
	bl sub_8051F70
	bl sub_804EEE0
	b _0804E4F8
_0804E330:
	movs r0, #0x37
	bl PlayMusic
	bl StartMenu
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0
	strh r1, [r0]
	adds r0, #0x50
	strh r1, [r0]
	bl sub_804DCE8
	bl sub_804EDA0
	bl sub_804EDC8
	bl sub_804EDF0
	bl sub_804EE18
	bl sub_804EE6C
	movs r0, #0xf3
	bl sub_8055554
	cmp r0, #0
	beq _0804E372
	ldr r0, _0804E3BC
	movs r1, #0x10
	ldr r2, _0804E3C0
	bl sub_8044E50
_0804E372:
	movs r0, #0xf0
	bl sub_8055554
	cmp r0, #0
	beq _0804E388
	ldr r0, _0804E3BC
	movs r1, #0x10
	ldr r2, _0804E3C0
	movs r3, #6
	bl sub_8044EC8
_0804E388:
	movs r0, #0xef
	bl sub_8055554
	cmp r0, #0
	beq _0804E39C
	ldr r0, _0804E3BC
	movs r1, #0x10
	movs r2, #0xff
	bl sub_8045284
_0804E39C:
	ldr r1, _0804E3C4
	movs r0, #7
	strh r0, [r1]
	bl sub_8008220
	bl sub_804EC4C
	ldr r1, _0804E3C8
	ldr r2, _0804E3CC
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F508
	bl sub_804F770
	b _0804E4F8
	.align 2, 0
_0804E3BC: .4byte 0x02000000
_0804E3C0: .4byte 0x000001FF
_0804E3C4: .4byte 0x04000054
_0804E3C8: .4byte 0x0400004A
_0804E3CC: .4byte 0x00003D3F
_0804E3D0:
	ldr r2, _0804E45C
	ldr r1, _0804E460
	movs r3, #0x10
	ldrsh r0, [r2, r3]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r1, [r0]
	adds r0, #0x50
	strh r1, [r0]
	bl sub_804DCE8
	bl sub_804EDA0
	bl sub_804EDC8
	bl sub_804EDF0
	bl sub_804EE18
	bl sub_804EE6C
	movs r0, #0xf3
	bl sub_8055554
	cmp r0, #0
	beq _0804E416
	ldr r0, _0804E464
	movs r1, #0x10
	ldr r2, _0804E468
	bl sub_8044E50
_0804E416:
	movs r0, #0xf0
	bl sub_8055554
	cmp r0, #0
	beq _0804E42C
	ldr r0, _0804E464
	movs r1, #0x10
	ldr r2, _0804E468
	movs r3, #6
	bl sub_8044EC8
_0804E42C:
	movs r0, #0xef
	bl sub_8055554
	cmp r0, #0
	beq _0804E440
	ldr r0, _0804E464
	movs r1, #0x10
	movs r2, #0xff
	bl sub_8045284
_0804E440:
	ldr r1, _0804E46C
	movs r0, #7
	strh r0, [r1]
	bl sub_8008220
	bl sub_804EC4C
	ldr r1, _0804E470
	ldr r2, _0804E474
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F508
	b _0804E4F8
	.align 2, 0
_0804E45C: .4byte gOverworld
_0804E460: .4byte 0x08E0DA9C
_0804E464: .4byte 0x02000000
_0804E468: .4byte 0x000001FF
_0804E46C: .4byte 0x04000054
_0804E470: .4byte 0x0400004A
_0804E474: .4byte 0x00003D3F
_0804E478:
	ldr r0, _0804E4C8
	adds r0, r5, r0
	ldrb r5, [r0]
	ldr r0, _0804E4CC
	movs r4, #0
	strh r5, [r0, #8]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0xc]
	bl sub_804D640
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r4, [r0]
	adds r0, #0x50
	strh r4, [r0]
	bl sub_804DCE8
	bl sub_804EDA0
	bl sub_804EDC8
	bl sub_804EDF0
	bl sub_804EE18
	bl sub_804EE6C
	ldr r1, _0804E4D0
	movs r0, #7
	strh r0, [r1]
	bl sub_8008220
	bl sub_804EC4C
	bl sub_804F508
	bl sub_804EEE0
	b _0804E4F8
	.align 2, 0
_0804E4C8: .4byte 0x08E0DA56
_0804E4CC: .4byte gOverworld
_0804E4D0: .4byte 0x04000054
_0804E4D4:
	movs r0, #2
	b _0804E4E2
_0804E4D8:
	movs r0, #0
	b _0804E4E2
_0804E4DC:
	movs r0, #1
	b _0804E4E2
_0804E4E0:
	movs r0, #3
_0804E4E2:
	bl sub_80521E8
_0804E4E6:
	bl sub_804F2F0
	bl sub_804EF10
	b _0804E4F8
_0804E4F0:
	bl sub_804F2F0
	bl sub_804EF10
_0804E4F8:
	ldr r2, _0804E514
	movs r3, #0x90
	lsls r3, r3, #2
	adds r0, r2, r3
_0804E500:
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0804E50C
	b _0804E29C
_0804E50C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804E514: .4byte gOverworld

	THUMB_FUNC_START sub_804E518
sub_804E518: @ 0x0804E518
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _0804E5B8
	lsls r7, r6, #5
	adds r5, r7, r1
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r0, [r0]
	mov ip, r1
	cmp r0, #1
	bne _0804E5E8
	ldrh r0, [r5, #0x10]
	subs r0, #0x7a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0804E5CC
	ldrh r4, [r5, #0x10]
	ldrb r3, [r5, #0x12]
	lsls r1, r3, #1
	ldr r2, _0804E5BC
	ldrb r0, [r5, #0x1e]
	adds r0, r0, r2
	adds r1, r1, r3
	ldrb r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x18
	adds r2, r6, r2
	ldrb r0, [r2]
	lsls r0, r0, #5
	ldr r2, _0804E5C0
	adds r2, r0, r2
	ldr r0, _0804E5C4
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, _0804E5C8
	lsrs r1, r1, #0x17
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #5
	ldr r1, [r4]
	adds r1, r1, r0
	movs r0, #0
	adds r5, r7, #0
_0804E572:
	movs r3, #0
	adds r4, r0, #1
_0804E576:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	adds r3, #1
	cmp r3, #0x7f
	bls _0804E576
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	cmp r0, #3
	bls _0804E572
	mov r0, ip
	adds r1, r5, r0
	ldrb r0, [r1, #0x1e]
	cmp r0, #0xf
	bls _0804E5A4
	movs r0, #0xf
	strb r0, [r1, #0x1e]
_0804E5A4:
	ldrb r0, [r1, #0x1e]
	subs r0, #1
	cmp r0, #0
	bge _0804E5B0
	movs r0, #0xf
	strb r0, [r1, #0x1e]
_0804E5B0:
	ldrb r0, [r1, #0x1e]
	subs r0, #1
	strb r0, [r1, #0x1e]
	b _0804E610
	.align 2, 0
_0804E5B8: .4byte gOverworld
_0804E5BC: .4byte 0x08E0DA40
_0804E5C0: .4byte 0x02010400
_0804E5C4: .4byte 0x08E11790
_0804E5C8: .4byte 0x081032D2
_0804E5CC:
	adds r0, r6, #0
	bl sub_804DF5C
	ldrb r0, [r5, #0x1e]
	cmp r0, #0x14
	bls _0804E5DC
	movs r0, #0x14
	strb r0, [r5, #0x1e]
_0804E5DC:
	ldrb r0, [r5, #0x1e]
	subs r0, #1
	cmp r0, #0
	bge _0804E5FE
	movs r0, #0x14
	b _0804E5FC
_0804E5E8:
	cmp r0, #2
	bne _0804E606
	adds r0, r6, #0
	bl sub_804E050
	ldrb r0, [r5, #0x1e]
	subs r0, #1
	cmp r0, #0
	bge _0804E5FE
	movs r0, #0x1a
_0804E5FC:
	strb r0, [r5, #0x1e]
_0804E5FE:
	ldrb r0, [r5, #0x1e]
	subs r0, #1
	strb r0, [r5, #0x1e]
	b _0804E610
_0804E606:
	movs r0, #0x13
	strb r0, [r5, #0x1e]
	adds r0, r6, #0
	bl sub_804DF5C
_0804E610:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804E618
sub_804E618: @ 0x0804E618
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	movs r6, #0
	ldr r0, _0804E6D8
	mov sb, r0
	ldr r1, _0804E6DC
_0804E62A:
	lsls r0, r6, #1
	add r0, sp
	strh r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xe
	bls _0804E62A
	movs r6, #0
	mov r8, sp
	ldr r1, _0804E6D8
	mov ip, r1
_0804E642:
	movs r5, #0
	lsls r0, r6, #5
	mov r2, ip
	adds r1, r0, r2
	mov r3, r8
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r3, #0x16
	ldrsh r1, [r1, r3]
	adds r3, r0, #0
	cmp r2, r1
	blt _0804E66C
_0804E65A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r5, #1
	add r0, sp
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, r1
	bge _0804E65A
_0804E66C:
	mov r1, ip
	adds r0, r3, r1
	ldrh r4, [r0, #0x16]
	adds r3, r6, #0
	cmp r5, #0xe
	bhi _0804E698
	ldr r7, _0804E6E0
_0804E67A:
	lsls r1, r5, #1
	mov r2, sp
	adds r0, r2, r1
	ldrh r2, [r0]
	strh r4, [r0]
	adds r4, r2, #0
	adds r1, r1, r7
	ldrh r0, [r1]
	strh r3, [r1]
	adds r3, r0, #0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xe
	bls _0804E67A
_0804E698:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xe
	bls _0804E642
	ldr r1, _0804E6E4
	add r1, sb
	movs r0, #0
	strb r0, [r1]
	movs r6, #0
	movs r2, #0x87
	lsls r2, r2, #2
	add r2, sb
_0804E6B2:
	lsls r0, r6, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _0804E6C0
	strb r6, [r1]
_0804E6C0:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xe
	bls _0804E6B2
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E6D8: .4byte gOverworld
_0804E6DC: .4byte 0x00008001
_0804E6E0: .4byte 0x0202448C
_0804E6E4: .4byte 0x0000023A

	THUMB_FUNC_START sub_804E6E8
sub_804E6E8: @ 0x0804E6E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r4, r3, #0
	ldr r0, _0804E7DC
	str r0, [r6]
	ldr r0, _0804E7E0
	str r0, [r2]
	ldr r7, _0804E7E4
	lsls r0, r3, #5
	adds r5, r0, r7
	movs r0, #0x10
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0804E7D0
	movs r2, #0x14
	ldrsh r1, [r5, r2]
	movs r0, #0x16
	ldrsh r2, [r5, r0]
	adds r0, r3, #0
	bl sub_805222C
	cmp r0, #0
	beq _0804E7D0
	ldr r1, [r6]
	movs r2, #0x80
	lsls r2, r2, #0x18
	mov sb, r2
	orrs r1, r2
	str r1, [r6]
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0804E746
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r6]
_0804E746:
	ldr r1, _0804E7E8
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _0804E7EC
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r1, r0
	str r1, [r6, #4]
	mov r0, r8
	str r1, [r0, #4]
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0x16]
	bl sub_80520E0
	strh r0, [r5, #0x1c]
	movs r2, #0x16
	ldrsh r1, [r5, r2]
	lsls r1, r1, #1
	movs r3, #0x18
	ldrsh r0, [r5, r3]
	subs r1, r1, r0
	movs r2, #0x93
	lsls r2, r2, #2
	adds r0, r7, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r0, #0x18
	adds r1, r1, r0
	ldrb r0, [r5, #0x1a]
	subs r4, r1, r0
	movs r0, #0xff
	ands r4, r0
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	lsls r1, r1, #1
	adds r2, #2
	adds r0, r7, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _0804E7F0
	ands r1, r0
	orrs r4, r1
	ldr r0, [r6]
	ldr r7, _0804E7F4
	ands r0, r7
	orrs r0, r4
	str r0, [r6]
	ldrh r0, [r5, #0x1c]
	bl sub_8052194
	cmp r0, #0
	bne _0804E7D0
	mov r1, r8
	ldr r0, [r1]
	mov r2, sb
	orrs r0, r2
	ands r0, r7
	orrs r0, r4
	str r0, [r1]
_0804E7D0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E7DC: .4byte 0x01C000C0
_0804E7E0: .4byte 0x01C008C0
_0804E7E4: .4byte gOverworld
_0804E7E8: .4byte 0x08103264
_0804E7EC: .4byte 0x082AD20C
_0804E7F0: .4byte 0x01FF0000
_0804E7F4: .4byte 0xFE00FF00

	THUMB_FUNC_START sub_804E7F8
sub_804E7F8: @ 0x0804E7F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	movs r0, #0xd
	rsbs r0, r0, #0
	mov sb, r0
	ldrb r1, [r4, #3]
	movs r7, #0x3f
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4, #3]
	movs r0, #0
	strb r0, [r4, #1]
	ldrb r1, [r4, #5]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r4, #5]
	movs r0, #0xc0
	strb r0, [r4]
	ldrh r1, [r4, #2]
	ldr r2, _0804E8FC
	mov sl, r2
	mov r0, sl
	ands r0, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r0, _0804E900
	mov r8, r0
	lsls r0, r3, #5
	mov r1, r8
	adds r5, r0, r1
	movs r2, #0x10
	ldrsh r1, [r5, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0804E8EE
	adds r6, r5, #0
	adds r6, #0x2d
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804E8EE
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	movs r0, #0x16
	ldrsh r2, [r5, r0]
	adds r0, r3, #0
	bl sub_805222C
	cmp r0, #0
	beq _0804E8EE
	ldrb r1, [r4, #3]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4, #3]
	ldrb r0, [r4, #1]
	adds r1, r7, #0
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #1]
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0804E896
	mov r2, sb
	ands r1, r2
	movs r0, #4
	orrs r1, r0
	strb r1, [r4, #1]
_0804E896:
	ldr r0, _0804E904
	ldrh r0, [r0, #0x1e]
	ldr r1, _0804E908
	ands r1, r0
	ldrh r2, [r4, #4]
	ldr r0, _0804E90C
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #4]
	ldrb r1, [r4, #5]
	mov r0, sb
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #5]
	movs r1, #0x16
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	movs r2, #0x93
	lsls r2, r2, #2
	add r2, r8
	subs r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	strb r0, [r4]
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	lsls r1, r1, #1
	ldr r0, _0804E910
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #8
	adds r1, r1, r0
	ldr r2, _0804E914
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r4, #2]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
_0804E8EE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E8FC: .4byte 0xFFFFFE00
_0804E900: .4byte gOverworld
_0804E904: .4byte 0x08103264
_0804E908: .4byte 0x000003FF
_0804E90C: .4byte 0xFFFFFC00
_0804E910: .4byte 0x0000024E
_0804E914: .4byte 0x000001FF

	THUMB_FUNC_START sub_804E918
sub_804E918: @ 0x0804E918
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	mov sb, r3
	movs r0, #0xd
	rsbs r0, r0, #0
	mov sl, r0
	ldrb r1, [r4, #3]
	movs r6, #0x3f
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r4, #3]
	movs r0, #0
	strb r0, [r4, #1]
	ldr r1, _0804EA2C
	ldr r7, _0804EA30
	lsls r0, r3, #5
	adds r5, r0, r7
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r4, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #5]
	movs r0, #0xc0
	strb r0, [r4]
	ldrh r1, [r4, #2]
	ldr r2, _0804EA34
	mov r8, r2
	mov r0, r8
	ands r0, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #2]
	movs r0, #0x10
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0804EA1E
	movs r2, #0x14
	ldrsh r1, [r5, r2]
	movs r0, #0x16
	ldrsh r2, [r5, r0]
	adds r0, r3, #0
	bl sub_805222C
	cmp r0, #0
	beq _0804EA1E
	ldrb r1, [r4, #3]
	adds r0, r6, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #3]
	ldrb r0, [r4, #1]
	adds r1, r6, #0
	ands r1, r0
	strb r1, [r4, #1]
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0804E9BE
	adds r0, r1, #0
	mov r1, sl
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #1]
_0804E9BE:
	movs r2, #0x16
	ldrsh r0, [r5, r2]
	lsls r0, r0, #1
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	movs r2, #0x93
	lsls r2, r2, #2
	adds r1, r7, r2
	subs r0, #0x1c
	ldrb r1, [r1]
	adds r0, r0, r1
	strb r0, [r4]
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	lsls r1, r1, #1
	adds r2, #2
	adds r0, r7, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #2
	adds r1, r1, r0
	ldr r2, _0804EA38
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r4, #2]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r1, _0804EA3C
	mov r2, sb
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0804EA40
	ands r1, r0
	ldrh r2, [r4, #4]
	ldr r0, _0804EA44
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #4]
	ldrb r1, [r4, #5]
	mov r0, sl
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #5]
_0804EA1E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EA2C: .4byte 0x082AD2B6
_0804EA30: .4byte gOverworld
_0804EA34: .4byte 0xFFFFFE00
_0804EA38: .4byte 0x000001FF
_0804EA3C: .4byte 0x08103284
_0804EA40: .4byte 0x000003FF
_0804EA44: .4byte 0xFFFFFC00
	.byte 0xF0, 0xB5, 0x05, 0x1C, 0x09, 0x06, 0x0E, 0x0E
	.byte 0x27, 0x48, 0x28, 0x60, 0x27, 0x4F, 0x70, 0x01, 0xC4, 0x19, 0x10, 0x20, 0x21, 0x5E, 0x01, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x40, 0xD0, 0x14, 0x22, 0xA1, 0x5E, 0x16, 0x20, 0x22, 0x5E, 0x30, 0x1C
	.byte 0x03, 0xF0, 0xDC, 0xFB, 0x00, 0x28, 0x37, 0xD0, 0xA0, 0x8B, 0x03, 0xF0, 0x8B, 0xFB, 0x00, 0x28
	.byte 0x32, 0xD1, 0x28, 0x68, 0x80, 0x21, 0x09, 0x06, 0x08, 0x43, 0x28, 0x60, 0x1A, 0x49, 0x70, 0x00
	.byte 0x40, 0x18, 0x01, 0x88, 0x80, 0x22, 0xD2, 0x00, 0x10, 0x1C, 0x08, 0x43, 0x68, 0x60, 0x20, 0x7D
	.byte 0xA1, 0x7D, 0x03, 0xF0, 0x1D, 0xFB, 0xA0, 0x83, 0x2B, 0x68, 0x14, 0x48, 0x03, 0x40, 0x2B, 0x60
	.byte 0x16, 0x20, 0x22, 0x5E, 0x52, 0x00, 0x18, 0x21, 0x60, 0x5E, 0x12, 0x1A, 0x93, 0x21, 0x89, 0x00
	.byte 0x78, 0x18, 0x00, 0x21, 0x40, 0x5E, 0x18, 0x38, 0x12, 0x18, 0xA0, 0x7E, 0x12, 0x1A, 0x14, 0x20
	.byte 0x21, 0x5E, 0x49, 0x00, 0x0A, 0x4C, 0x38, 0x19, 0x00, 0x24, 0x00, 0x5F, 0x10, 0x38, 0x09, 0x18
	.byte 0x09, 0x04, 0x0A, 0x43, 0x13, 0x43, 0x2B, 0x60, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xC0, 0x08, 0xC0, 0x01, 0x70, 0x42, 0x02, 0x02, 0x64, 0x32, 0x10, 0x08, 0x00, 0xFF, 0x00, 0xFE
	.byte 0x4E, 0x02, 0x00, 0x00

	THUMB_FUNC_START sub_804EB04
sub_804EB04: @ 0x0804EB04
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #8
	bne _0804EB1E
	movs r1, #0
	ldr r0, _0804EB2C
	movs r2, #0x14
	ldrsh r0, [r0, r2]
	cmp r0, #0x3b
	bgt _0804EB1E
	movs r1, #1
_0804EB1E:
	cmp r1, #1
	beq _0804EB84
	cmp r1, #1
	bgt _0804EB30
	cmp r1, #0
	beq _0804EB36
	b _0804EBDE
	.align 2, 0
_0804EB2C: .4byte gOverworld
_0804EB30:
	cmp r1, #2
	beq _0804EBD8
	b _0804EBDE
_0804EB36:
	ldrb r0, [r4, #1]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r1, r0
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	ldrb r0, [r4, #3]
	movs r2, #0xc0
	orrs r0, r2
	strb r0, [r4, #3]
	movs r0, #0x3f
	ands r1, r0
	strb r1, [r4, #1]
	ldrb r0, [r4, #5]
	ands r3, r0
	strb r3, [r4, #5]
	ldrh r1, [r4, #4]
	ldr r0, _0804EB7C
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #4]
	movs r0, #0x30
	strb r0, [r4]
	ldrh r1, [r4, #2]
	ldr r0, _0804EB80
	ands r0, r1
	movs r1, #8
	b _0804EBC8
	.align 2, 0
_0804EB7C: .4byte 0xFFFFFC00
_0804EB80: .4byte 0xFFFFFE00
_0804EB84:
	ldrb r0, [r4, #1]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r1, r0
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	ldrb r0, [r4, #3]
	movs r2, #0xc0
	orrs r0, r2
	strb r0, [r4, #3]
	movs r0, #0x3f
	ands r1, r0
	strb r1, [r4, #1]
	ldrb r0, [r4, #5]
	ands r3, r0
	strb r3, [r4, #5]
	ldrh r1, [r4, #4]
	ldr r0, _0804EBD0
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #4]
	movs r0, #0x30
	strb r0, [r4]
	ldrh r1, [r4, #2]
	ldr r0, _0804EBD4
	ands r0, r1
	movs r1, #0xa8
_0804EBC8:
	orrs r0, r1
	strh r0, [r4, #2]
	b _0804EBDE
	.align 2, 0
_0804EBD0: .4byte 0xFFFFFC00
_0804EBD4: .4byte 0xFFFFFE00
_0804EBD8:
	adds r0, r4, #0
	bl sub_80411EC
_0804EBDE:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_804EBE4
sub_804EBE4: @ 0x0804EBE4
	push {r4, r5, r6, r7, lr}
	ldr r6, _0804EC44
	movs r4, #0
	adds r5, r6, #0
	ldr r7, _0804EC48
_0804EBEE:
	adds r0, r4, #0
	adds r0, #0x61
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r1, r4, #0
	adds r1, #0x43
	lsls r1, r1, #3
	adds r1, r1, r5
	adds r2, r4, #0
	adds r2, #0x52
	lsls r2, r2, #3
	adds r2, r2, r5
	lsls r3, r4, #1
	adds r3, r3, r7
	ldrb r3, [r3]
	bl sub_804E6E8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0804EBEE
	movs r4, #0
	ldr r5, _0804EC48
_0804EC1E:
	lsls r0, r4, #3
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	lsls r1, r4, #1
	adds r1, r1, r5
	ldrb r1, [r1]
	bl sub_804E7F8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0804EC1E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EC44: .4byte 0x02018400
_0804EC48: .4byte 0x0202448C

	THUMB_FUNC_START sub_804EC4C
sub_804EC4C: @ 0x0804EC4C
	push {lr}
	bl LoadBgOffsets
	bl LoadOam
	bl LoadVRAM
	bl LoadPalettes
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804EC64
sub_804EC64: @ 0x0804EC64
	push {r4, lr}
	ldr r4, _0804EC94
	ldr r1, _0804EC98
	ldr r2, _0804EC9C
	adds r0, r4, #0
	bl CpuSet
	movs r0, #0x80
	lsls r0, r0, #5
	adds r4, r4, r0
	ldr r1, _0804ECA0
	ldr r2, _0804ECA4
	adds r0, r4, #0
	bl CpuSet
	bl LoadObjVRAM
	bl LoadPalettes
	bl LoadOam
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804EC94: .4byte 0x0200DC00
_0804EC98: .4byte 0x0600D800
_0804EC9C: .4byte 0x04000388
_0804ECA0: .4byte 0x0600E800
_0804ECA4: .4byte 0x04000040

	THUMB_FUNC_START sub_804ECA8
sub_804ECA8: @ 0x0804ECA8
	push {r4, lr}
	ldr r4, _0804ECD0
	ldr r1, _0804ECD4
	ldr r2, _0804ECD8
	adds r0, r4, #0
	bl CpuSet
	movs r0, #0x80
	lsls r0, r0, #5
	adds r4, r4, r0
	ldr r1, _0804ECDC
	ldr r2, _0804ECE0
	adds r0, r4, #0
	bl CpuSet
	bl LoadOam
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804ECD0: .4byte 0x0200DC00
_0804ECD4: .4byte 0x0600D800
_0804ECD8: .4byte 0x04000388
_0804ECDC: .4byte 0x0600E800
_0804ECE0: .4byte 0x04000040

	THUMB_FUNC_START sub_804ECE4
sub_804ECE4: @ 0x0804ECE4
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0804ED04
_0804ECEA:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _0804ECEA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804ED04: .4byte 0x02018400

	THUMB_FUNC_START sub_804ED08
sub_804ED08: @ 0x0804ED08
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0
	strh r1, [r0]
	adds r0, #0x50
	strh r1, [r0]
	bl sub_804DCE8
	bl sub_804EDA0
	bl sub_804EDC8
	bl sub_804EDF0
	bl sub_804EE18
	bl sub_804EE6C
	movs r0, #0xf3
	bl sub_8055554
	cmp r0, #0
	beq _0804ED42
	ldr r0, _0804ED8C
	ldr r2, _0804ED90
	movs r1, #0x10
	bl sub_8044E50
_0804ED42:
	movs r0, #0xf0
	bl sub_8055554
	cmp r0, #0
	beq _0804ED58
	ldr r0, _0804ED8C
	ldr r2, _0804ED90
	movs r1, #0x10
	movs r3, #6
	bl sub_8044EC8
_0804ED58:
	movs r0, #0xef
	bl sub_8055554
	cmp r0, #0
	beq _0804ED6C
	ldr r0, _0804ED8C
	movs r1, #0x10
	movs r2, #0xff
	bl sub_8045284
_0804ED6C:
	ldr r1, _0804ED94
	movs r0, #7
	strh r0, [r1]
	bl sub_8008220
	bl sub_804EC4C
	ldr r1, _0804ED98
	ldr r2, _0804ED9C
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F508
	pop {r0}
	bx r0
	.align 2, 0
_0804ED8C: .4byte 0x02000000
_0804ED90: .4byte 0x000001FF
_0804ED94: .4byte 0x04000054
_0804ED98: .4byte 0x0400004A
_0804ED9C: .4byte 0x00003D3F

	THUMB_FUNC_START sub_804EDA0
sub_804EDA0: @ 0x0804EDA0
	ldr r1, _0804EDB8
	ldr r2, _0804EDBC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0804EDC0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0804EDC4
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0804EDB8: .4byte 0x0400000E
_0804EDBC: .4byte 0x00001783
_0804EDC0: .4byte gBG3VOFS
_0804EDC4: .4byte gBG3HOFS

	THUMB_FUNC_START sub_804EDC8
sub_804EDC8: @ 0x0804EDC8
	ldr r1, _0804EDE0
	ldr r2, _0804EDE4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0804EDE8
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0804EDEC
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0804EDE0: .4byte 0x0400000C
_0804EDE4: .4byte 0x00001F82
_0804EDE8: .4byte gBG2VOFS
_0804EDEC: .4byte gBG2HOFS

	THUMB_FUNC_START sub_804EDF0
sub_804EDF0: @ 0x0804EDF0
	ldr r1, _0804EE08
	ldr r2, _0804EE0C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0804EE10
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0804EE14
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0804EE08: .4byte 0x0400000A
_0804EE0C: .4byte 0x00001E81
_0804EE10: .4byte gBG1VOFS
_0804EE14: .4byte gBG1HOFS

	THUMB_FUNC_START sub_804EE18
sub_804EE18: @ 0x0804EE18
	push {r4, lr}
	ldr r1, _0804EE50
	ldr r2, _0804EE54
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0804EE58
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0804EE5C
	movs r0, #8
	strh r0, [r1]
	ldr r0, _0804EE60
	ldr r4, _0804EE64
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0804EE68
	movs r1, #0x80
	lsls r1, r1, #5
	adds r4, r4, r1
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r4, #0
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804EE50: .4byte 0x04000008
_0804EE54: .4byte 0x00001D0C
_0804EE58: .4byte gBG0VOFS
_0804EE5C: .4byte gBG0HOFS
_0804EE60: .4byte 0x082AD2D0
_0804EE64: .4byte 0x0200DC00
_0804EE68: .4byte 0x082AD48C

	THUMB_FUNC_START sub_804EE6C
sub_804EE6C: @ 0x0804EE6C
	push {lr}
	bl sub_804ECE4
	bl sub_804E618
	bl sub_804DE74
	bl sub_804EBE4
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804EE84
sub_804EE84: @ 0x0804EE84
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r2, #0xe8
	strb r2, [r0]
	subs r1, #0x10
	ldr r3, _0804EEA4
	adds r2, r3, #0
	ands r1, r2
	ldrh r3, [r0, #2]
	ldr r2, _0804EEA8
	ands r2, r3
	orrs r2, r1
	strh r2, [r0, #2]
	bx lr
	.align 2, 0
_0804EEA4: .4byte 0x000001FF
_0804EEA8: .4byte 0xFFFFFE00

	THUMB_FUNC_START sub_804EEAC
sub_804EEAC: @ 0x0804EEAC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldrb r2, [r4, #5]
	movs r5, #0xd
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r1, r2
	movs r2, #8
	orrs r1, r2
	strb r1, [r4, #5]
	bl sub_8052194
	cmp r0, #0
	bne _0804EED8
	ldrb r0, [r4, #5]
	adds r1, r5, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r4, #5]
_0804EED8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804EEE0
sub_804EEE0: @ 0x0804EEE0
	push {lr}
	bl sub_804E618
	bl sub_804EBE4
	ldr r0, _0804EF04
	bl sub_80081DC
	bl sub_8008220
	ldr r0, _0804EF08
	ldr r1, _0804EF0C
	movs r2, #0x80
	lsls r2, r2, #5
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_0804EF04: .4byte 0x0804F1E5
_0804EF08: .4byte 0x02010400
_0804EF0C: .4byte 0x06010000

	THUMB_FUNC_START sub_804EF10
sub_804EF10: @ 0x0804EF10
	push {r4, r5, lr}
	movs r0, #0
	bl sub_804E518
	ldr r4, _0804EF6C
	ldr r1, _0804EF70
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r5, #8
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0804EF30
	movs r0, #0xd
	bl sub_804E518
_0804EF30:
	ldr r1, _0804EF74
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0804EF44
	movs r0, #0xe
	bl sub_804E518
_0804EF44:
	bl sub_80551B8
	bl sub_804E618
	bl sub_804EBE4
	ldr r0, _0804EF78
	bl sub_80081DC
	bl sub_8008220
	ldr r0, _0804EF7C
	ldr r1, _0804EF80
	movs r2, #0x80
	lsls r2, r2, #5
	bl CpuFastSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804EF6C: .4byte gOverworld
_0804EF70: .4byte 0x000001CD
_0804EF74: .4byte 0x000001ED
_0804EF78: .4byte 0x0804F1E5
_0804EF7C: .4byte 0x02010400
_0804EF80: .4byte 0x06010000

	THUMB_FUNC_START sub_804EF84
sub_804EF84: @ 0x0804EF84
	ldr r3, _0804EF90
	strh r0, [r3, #8]
	strh r1, [r3, #0xa]
	strh r2, [r3, #0xc]
	bx lr
	.align 2, 0
_0804EF90: .4byte gOverworld
	.byte 0x00, 0xB5, 0x09, 0x20, 0x01, 0x21, 0x00, 0x22, 0x03, 0xF0, 0x26, 0xFA
	.byte 0xFE, 0xF7, 0x4E, 0xFB, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x80, 0x20, 0xC0, 0x04, 0x00, 0x21
	.byte 0x01, 0x80, 0x50, 0x30, 0x01, 0x80, 0xFE, 0xF7, 0x97, 0xFE, 0xFF, 0xF7, 0xF1, 0xFE, 0xFF, 0xF7
	.byte 0x03, 0xFF, 0xFF, 0xF7, 0x15, 0xFF, 0xFF, 0xF7, 0x27, 0xFF, 0xFF, 0xF7, 0x4F, 0xFF, 0x05, 0x49
	.byte 0x07, 0x20, 0x08, 0x80, 0xB9, 0xF7, 0x24, 0xF9, 0xFF, 0xF7, 0x38, 0xFE, 0x00, 0xF0, 0x94, 0xFA
	.byte 0x01, 0xBC, 0x00, 0x47, 0x54, 0x00, 0x00, 0x04

	THUMB_FUNC_START sub_804EFE8
sub_804EFE8: @ 0x0804EFE8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0804F040
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #5
	ldr r2, _0804F044
	adds r3, r1, r2
	ldr r2, _0804F048
	ldr r1, _0804F04C
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0804F050
	adds r1, r0, r1
	movs r0, #0
	movs r6, #0xf0
	lsls r6, r6, #2
	movs r5, #0xe0
	lsls r5, r5, #1
_0804F01E:
	movs r2, #0
	adds r4, r0, #1
_0804F022:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	adds r2, #1
	cmp r2, #0x3f
	bls _0804F022
	adds r3, r3, r6
	adds r1, r1, r5
	adds r0, r4, #0
	cmp r0, #1
	bls _0804F01E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F040: .4byte 0x08103284
_0804F044: .4byte 0x02010400
_0804F048: .4byte 0x081032A2
_0804F04C: .4byte gOverworld
_0804F050: .4byte 0x082A906C

	THUMB_FUNC_START sub_804F054
sub_804F054: @ 0x0804F054
	push {r4, r5, r6, lr}
	adds r3, r2, #0
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	ldr r2, _0804F09C
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	ldr r2, _0804F0A0
	lsrs r1, r1, #0x17
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #5
	ldr r0, [r0]
	adds r1, r0, r1
	movs r0, #0
	movs r6, #0xe0
	lsls r6, r6, #2
	movs r5, #0xc0
	lsls r5, r5, #1
_0804F07A:
	movs r2, #0
	adds r4, r0, #1
_0804F07E:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	adds r2, #1
	cmp r2, #0x7f
	bls _0804F07E
	adds r3, r3, r6
	adds r1, r1, r5
	adds r0, r4, #0
	cmp r0, #3
	bls _0804F07A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F09C: .4byte 0x08E11790
_0804F0A0: .4byte 0x081032D2
	.byte 0x30, 0xB5, 0x00, 0x06, 0x00, 0x0E, 0x19, 0x4A, 0x41, 0x01, 0x89, 0x18
	.byte 0x0C, 0x8A, 0x8B, 0x7C, 0x5A, 0x00, 0x17, 0x4D, 0x89, 0x7F, 0x49, 0x19, 0xD2, 0x18, 0x09, 0x78
	.byte 0x52, 0x18, 0x12, 0x06, 0x40, 0x19, 0x00, 0x78, 0x40, 0x01, 0x13, 0x49, 0x43, 0x18, 0x13, 0x48
	.byte 0xA4, 0x00, 0x24, 0x18, 0x12, 0x48, 0xD2, 0x0D, 0x12, 0x18, 0x10, 0x88, 0x40, 0x01, 0x21, 0x68
	.byte 0x09, 0x18, 0x00, 0x20, 0x00, 0x22, 0x44, 0x1C, 0x08, 0x78, 0x18, 0x70, 0x01, 0x31, 0x01, 0x33
	.byte 0x01, 0x32, 0x7F, 0x2A, 0xF8, 0xD9, 0xE0, 0x20, 0x80, 0x00, 0x1B, 0x18, 0xC0, 0x20, 0x40, 0x00
	.byte 0x09, 0x18, 0x20, 0x1C, 0x03, 0x28, 0xED, 0xD9, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x70, 0x42, 0x02, 0x02, 0x40, 0xDA, 0xE0, 0x08, 0x00, 0x04, 0x01, 0x02, 0x90, 0x17, 0xE1, 0x08
	.byte 0xD2, 0x32, 0x10, 0x08

	THUMB_FUNC_START sub_804F124
sub_804F124: @ 0x0804F124
	lsls r0, r0, #0x18
	ldr r1, _0804F14C
	lsrs r0, r0, #0x13
	adds r1, r0, r1
	ldrb r0, [r1, #0x1e]
	cmp r0, #0x14
	bls _0804F136
	movs r0, #0x14
	strb r0, [r1, #0x1e]
_0804F136:
	ldrb r0, [r1, #0x1e]
	subs r0, #1
	cmp r0, #0
	bge _0804F142
	movs r0, #0x14
	strb r0, [r1, #0x1e]
_0804F142:
	ldrb r0, [r1, #0x1e]
	subs r0, #1
	strb r0, [r1, #0x1e]
	bx lr
	.align 2, 0
_0804F14C: .4byte gOverworld
	.byte 0x00, 0x06, 0x06, 0x49, 0xC0, 0x0C, 0x41, 0x18, 0x88, 0x7F, 0x01, 0x38, 0x00, 0x28, 0x01, 0xDA
	.byte 0x1A, 0x20, 0x88, 0x77, 0x88, 0x7F, 0x01, 0x38, 0x88, 0x77, 0x70, 0x47, 0x70, 0x42, 0x02, 0x02
	.byte 0x00, 0x06, 0x09, 0x49, 0xC0, 0x0C, 0x41, 0x18, 0x88, 0x7F, 0x0F, 0x28, 0x01, 0xD9, 0x0F, 0x20
	.byte 0x88, 0x77, 0x88, 0x7F, 0x01, 0x38, 0x00, 0x28, 0x01, 0xDA, 0x0F, 0x20, 0x88, 0x77, 0x88, 0x7F
	.byte 0x01, 0x38, 0x88, 0x77, 0x70, 0x47, 0x00, 0x00, 0x70, 0x42, 0x02, 0x02

	THUMB_FUNC_START sub_804F19C
sub_804F19C: @ 0x0804F19C
	lsls r0, r0, #0x18
	ldr r1, _0804F1AC
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	movs r1, #0x13
	strb r1, [r0, #0x1e]
	bx lr
	.align 2, 0
_0804F1AC: .4byte gOverworld
	.byte 0x70, 0xB5, 0x0A, 0x4E, 0x00, 0x24, 0x0A, 0x4D, 0xE0, 0x00, 0x86, 0x21, 0x89, 0x00, 0x40, 0x18
	.byte 0x30, 0x18, 0x61, 0x00, 0x49, 0x19, 0x09, 0x78, 0xFF, 0xF7, 0xA6, 0xFB, 0x60, 0x1C, 0x00, 0x06
	.byte 0x04, 0x0E, 0x0E, 0x2C, 0xF0, 0xD9, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x84, 0x01, 0x02
	.byte 0x8C, 0x44, 0x02, 0x02

	THUMB_FUNC_START sub_804F1E4
sub_804F1E4: @ 0x0804F1E4
	push {lr}
	bl LoadBgOffsets
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804F1F4
sub_804F1F4: @ 0x0804F1F4
	push {lr}
	bl sub_8008220
	ldr r0, _0804F210
	ldr r1, _0804F214
	movs r2, #0x80
	lsls r2, r2, #4
	bl CpuFastSet
	bl LoadPalettes
	pop {r0}
	bx r0
	.align 2, 0
_0804F210: .4byte 0x02010400
_0804F214: .4byte 0x06010000

	THUMB_FUNC_START sub_804F218
sub_804F218: @ 0x0804F218
	push {lr}
	bl sub_804E618
	bl sub_804EBE4
	bl sub_80551B8
	ldr r0, _0804F244
	bl sub_80081DC
	bl sub_8008220
	bl LoadOam
	ldr r0, _0804F248
	ldr r1, _0804F24C
	ldr r2, _0804F250
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_0804F244: .4byte 0x08045435
_0804F248: .4byte 0x0200DC00
_0804F24C: .4byte 0x0600D800
_0804F250: .4byte 0x04000388

	THUMB_FUNC_START sub_804F254
sub_804F254: @ 0x0804F254
	push {lr}
	bl sub_804E618
	bl sub_804EBE4
	bl sub_80551B8
	ldr r0, _0804F280
	bl sub_80081DC
	bl sub_8008220
	bl LoadOam
	ldr r0, _0804F284
	ldr r1, _0804F288
	movs r2, #0x80
	lsls r2, r2, #4
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_0804F280: .4byte 0x08045435
_0804F284: .4byte 0x02010400
_0804F288: .4byte 0x06010000

	THUMB_FUNC_START sub_804F28C
sub_804F28C: @ 0x0804F28C
	push {r4, r5, r6, lr}
	ldr r6, _0804F2D0
	movs r4, #0
	ldr r5, _0804F2D4
_0804F294:
	lsls r0, r4, #3
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	lsls r1, r4, #1
	adds r1, r1, r5
	ldrb r1, [r1]
	bl sub_804E918
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0804F294
	bl sub_80551B8
	ldr r0, _0804F2D8
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock5
	bl LoadOam
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F2D0: .4byte 0x02018400
_0804F2D4: .4byte 0x0202448C
_0804F2D8: .4byte 0x08045435

	THUMB_FUNC_START sub_804F2DC
sub_804F2DC: @ 0x0804F2DC
	push {lr}
	bl LoadCharblock5
	bl LoadPalettes
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804F2F0
sub_804F2F0: @ 0x0804F2F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	bl sub_804F3E4
	movs r0, #1
	mov r8, r0
	ldr r1, _0804F360
	mov sb, r1
	mov r7, sp
	mov r6, sb
	adds r6, #0x32
_0804F30C:
	ldrb r0, [r6, #0x1b]
	lsls r0, r0, #0x1d
	lsrs r1, r0, #0x1f
	cmp r1, #1
	bne _0804F3C8
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	cmp r0, #1
	ble _0804F364
	ldrh r0, [r6, #0x18]
	ands r0, r1
	cmp r0, #0
	bne _0804F358
	mov r0, r8
	lsls r5, r0, #0x18
	lsrs r5, r5, #0x18
	ldrb r1, [r6]
	lsls r4, r5, #5
	add r4, sb
	strb r1, [r4, #0x12]
	adds r0, r5, #0
	mov r2, sp
	bl sub_8051A44
	ldrh r0, [r7]
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	ldrh r0, [r7, #2]
	ldrh r2, [r4, #0x16]
	adds r0, r0, r2
	strh r0, [r4, #0x16]
	adds r0, r5, #0
	bl sub_8052088
	adds r0, r5, #0
	bl sub_804E518
_0804F358:
	ldrh r0, [r6, #0x18]
	subs r0, #1
	b _0804F3C6
	.align 2, 0
_0804F360: .4byte gOverworld
_0804F364:
	cmp r0, #1
	bne _0804F3A6
	mov r0, r8
	bl sub_804F19C
	mov r0, r8
	lsls r5, r0, #0x18
	lsrs r5, r5, #0x18
	ldrb r1, [r6]
	lsls r4, r5, #5
	add r4, sb
	strb r1, [r4, #0x12]
	adds r0, r5, #0
	mov r2, sp
	bl sub_8051A44
	ldrh r0, [r7]
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	ldrh r0, [r7, #2]
	ldrh r2, [r4, #0x16]
	adds r0, r0, r2
	strh r0, [r4, #0x16]
	adds r0, r5, #0
	bl sub_8052088
	adds r0, r5, #0
	bl sub_804E518
	ldrh r0, [r6, #0x18]
	subs r0, #1
	b _0804F3C6
_0804F3A6:
	movs r0, #0
	movs r1, #0x14
	bl sub_8056258
	cmp r0, #0
	bne _0804F3C8
	movs r0, #0
	movs r1, #3
	bl sub_8056258
	strb r0, [r6]
	movs r0, #5
	movs r1, #0x14
	bl sub_8056258
	lsls r0, r0, #2
_0804F3C6:
	strh r0, [r6, #0x18]
_0804F3C8:
	adds r6, #0x20
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0xe
	ble _0804F30C
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804F3E4
sub_804F3E4: @ 0x0804F3E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	movs r6, #0
	mov r8, sp
	ldr r5, _0804F48C
_0804F3F4:
	ldr r1, _0804F490
	ldrb r0, [r5, #0x12]
	lsls r3, r6, #2
	adds r0, r0, r3
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r5, #0x14]
	adds r1, r1, r0
	mov r2, r8
	strh r1, [r2]
	ldr r2, _0804F494
	ldrb r0, [r5, #0x12]
	adds r0, r0, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r5, #0x16]
	adds r2, r0, r3
	mov r4, r8
	strh r2, [r4, #2]
	movs r3, #0
	movs r7, #0xd
	adds r7, r7, r6
	mov sb, r7
	lsls r0, r7, #5
	adds r0, r0, r5
	mov ip, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r4, #0x14
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bne _0804F43C
	movs r3, #1
_0804F43C:
	cmp r1, r0
	ble _0804F442
	movs r3, #2
_0804F442:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r7, ip
	movs r0, #0x16
	ldrsh r1, [r7, r0]
	cmp r2, r1
	bne _0804F45A
	lsls r0, r3, #0x18
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	lsrs r3, r0, #0x18
_0804F45A:
	cmp r2, r1
	ble _0804F468
	lsls r0, r3, #0x18
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r0, r0, r4
	lsrs r3, r0, #0x18
_0804F468:
	mov r0, ip
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0804F4CA
	mov r1, ip
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
	lsls r1, r3, #0x18
	cmp r3, #4
	bne _0804F498
	ldrb r0, [r5, #0x12]
	mov r7, ip
	strb r0, [r7, #0x12]
	b _0804F4CA
	.align 2, 0
_0804F48C: .4byte gOverworld
_0804F490: .4byte 0x08E0DB04
_0804F494: .4byte 0x08E0DB0C
_0804F498:
	mov r0, sb
	lsls r4, r0, #0x18
	lsrs r4, r4, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	add r2, sp, #4
	bl sub_8051C14
	lsls r1, r4, #5
	adds r1, r1, r5
	add r2, sp, #4
	ldrh r0, [r2]
	ldrh r3, [r1, #0x14]
	adds r0, r0, r3
	strh r0, [r1, #0x14]
	ldrh r0, [r2, #2]
	ldrh r7, [r1, #0x16]
	adds r0, r0, r7
	strh r0, [r1, #0x16]
	adds r0, r4, #0
	bl sub_8052088
	adds r0, r4, #0
	bl sub_804E518
_0804F4CA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0804F3F4
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0x05, 0x48, 0x00, 0x88, 0x3C, 0x28, 0x08, 0xD1, 0xE2, 0x20
	.byte 0x06, 0xF0, 0x30, 0xF8, 0x00, 0x28, 0x03, 0xD1, 0x00, 0x20, 0x02, 0xE0, 0x70, 0x42, 0x02, 0x02
	.byte 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_804F508
sub_804F508: @ 0x0804F508
	push {lr}
	ldr r0, _0804F520
	ldrh r0, [r0]
	cmp r0, #0x3c
	bne _0804F524
	movs r0, #0xe2
	bl sub_8055554
	cmp r0, #0
	bne _0804F524
	movs r0, #0
	b _0804F526
	.align 2, 0
_0804F520: .4byte gOverworld
_0804F524:
	movs r0, #1
_0804F526:
	cmp r0, #0
	bne _0804F534
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x9d
	lsls r2, r2, #8
	b _0804F53C
_0804F534:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x9f
	lsls r2, r2, #8
_0804F53C:
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_804F544
sub_804F544: @ 0x0804F544
	push {lr}
	ldr r0, _0804F55C
	ldrh r0, [r0]
	cmp r0, #0x3c
	bne _0804F560
	movs r0, #0xe2
	bl sub_8055554
	cmp r0, #0
	bne _0804F560
	movs r0, #0
	b _0804F562
	.align 2, 0
_0804F55C: .4byte gOverworld
_0804F560:
	movs r0, #1
_0804F562:
	cmp r0, #0
	bne _0804F570
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xdd
	lsls r2, r2, #8
	b _0804F578
_0804F570:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xdf
	lsls r2, r2, #8
_0804F578:
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_804F580
sub_804F580: @ 0x0804F580
	push {lr}
	ldr r0, _0804F590
	ldr r1, _0804F594
	movs r2, #0xc0
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_0804F590: .4byte 0x082AD06C
_0804F594: .4byte 0x02000200

	THUMB_FUNC_START sub_804F598
sub_804F598: @ 0x0804F598
	push {lr}
	ldr r0, _0804F5A8
	ldr r1, _0804F5AC
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_0804F5A8: .4byte 0x082ADC8C
_0804F5AC: .4byte 0x02000000
	.byte 0x00, 0xB5, 0x06, 0x49, 0x06, 0x48, 0x00, 0x88, 0x80, 0x00, 0x40, 0x18, 0x00, 0x68, 0x05, 0x49
	.byte 0xF0, 0x22, 0x09, 0xF0, 0xC7, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xD0, 0x1C, 0xE1, 0x08
	.byte 0x70, 0x42, 0x02, 0x02, 0x20, 0x00, 0x00, 0x02

	THUMB_FUNC_START sub_804F5D8
sub_804F5D8: @ 0x0804F5D8
	push {r4, lr}
	ldr r0, _0804F610
	ldr r4, _0804F614
	adds r1, r4, #0
	movs r2, #0xc0
	bl CpuSet
	ldr r0, _0804F618
	ldr r2, _0804F61C
	adds r1, r4, r2
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0804F620
	ldr r0, _0804F624
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0804F628
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #0xf0
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F610: .4byte 0x082AD06C
_0804F614: .4byte 0x02000200
_0804F618: .4byte 0x082ADC8C
_0804F61C: .4byte 0xFFFFFE00
_0804F620: .4byte 0x08E11CD0
_0804F624: .4byte gOverworld
_0804F628: .4byte 0xFFFFFE20
	.byte 0x30, 0xB5, 0x82, 0xB0
	.byte 0x05, 0x1C, 0x2D, 0x06, 0x2D, 0x0E, 0x09, 0x06, 0x09, 0x0E, 0x0E, 0x48, 0x6C, 0x01, 0x24, 0x18
	.byte 0xA1, 0x74, 0x28, 0x1C, 0x6A, 0x46, 0x02, 0xF0, 0xFD, 0xF9, 0x68, 0x46, 0x00, 0x88, 0xA1, 0x8A
	.byte 0x40, 0x18, 0xA0, 0x82, 0x68, 0x46, 0x40, 0x88, 0xE1, 0x8A, 0x40, 0x18, 0xE0, 0x82, 0x28, 0x1C
	.byte 0x02, 0xF0, 0x12, 0xFD, 0x28, 0x1C, 0xFE, 0xF7, 0x57, 0xFF, 0x02, 0xB0, 0x30, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x70, 0x42, 0x02, 0x02, 0x10, 0xB5, 0x82, 0xB0, 0x04, 0x1C, 0x24, 0x06
	.byte 0x24, 0x0E, 0x09, 0x06, 0x09, 0x0E, 0x20, 0x1C, 0x6A, 0x46, 0x02, 0xF0, 0xC3, 0xFA, 0x0B, 0x48
	.byte 0x61, 0x01, 0x09, 0x18, 0x68, 0x46, 0x00, 0x88, 0x8A, 0x8A, 0x80, 0x18, 0x88, 0x82, 0x68, 0x46
	.byte 0x40, 0x88, 0xCA, 0x8A, 0x80, 0x18, 0xC8, 0x82, 0x20, 0x1C, 0x02, 0xF0, 0xED, 0xFC, 0x20, 0x1C
	.byte 0xFE, 0xF7, 0x32, 0xFF, 0x02, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x70, 0x42, 0x02, 0x02

	THUMB_FUNC_START sub_804F6C0
sub_804F6C0: @ 0x0804F6C0
	ldr r0, _0804F6D0
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0804F6D0: .4byte gOverworld
	.byte 0x10, 0xB5, 0x09, 0x06, 0x0B, 0x4B, 0x0C, 0x4C, 0x9A, 0x7C, 0x89, 0x0D
	.byte 0x52, 0x18, 0x12, 0x19, 0x12, 0x78, 0x12, 0x06, 0x12, 0x16, 0x9C, 0x8A, 0x12, 0x19, 0x02, 0x80
	.byte 0x07, 0x4C, 0x9A, 0x7C, 0x52, 0x18, 0x12, 0x19, 0x00, 0x21, 0x51, 0x56, 0xDB, 0x8A, 0xC9, 0x18
	.byte 0x41, 0x80, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x70, 0x42, 0x02, 0x02, 0x04, 0xDB, 0xE0, 0x08
	.byte 0x0C, 0xDB, 0xE0, 0x08

	THUMB_FUNC_START sub_804F714
sub_804F714: @ 0x0804F714
	push {r4, lr}
	movs r4, #9
_0804F718:
	bl sub_804F3E4
	subs r4, #1
	cmp r4, #0
	bge _0804F718
	ldr r2, _0804F74C
	movs r3, #0x13
	movs r0, #0xd9
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r4, #1
_0804F72E:
	ldrb r0, [r1, #0x1b]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0804F73C
	ldrb r0, [r2, #0x12]
	strb r0, [r1]
	strb r3, [r1, #0xc]
_0804F73C:
	adds r1, #0x20
	subs r4, #1
	cmp r4, #0
	bge _0804F72E
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F74C: .4byte gOverworld

	THUMB_FUNC_START sub_804F750
sub_804F750: @ 0x0804F750
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_8035038
	adds r0, r4, #0
	bl sub_8053E34
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_0804F76C
sub_0804F76C: @ 0x0804F76C
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804F770
sub_804F770: @ 0x0804F770
	push {lr}
	ldr r0, _0804F784
	ldr r1, _0804F788
	adds r0, r0, r1
	ldrh r0, [r0]
	bl PlayMusic
	pop {r0}
	bx r0
	.align 2, 0
_0804F784: .4byte gOverworld
_0804F788: .4byte 0x00000242

	THUMB_FUNC_START sub_804F78C
sub_804F78C: @ 0x0804F78C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r5, #0x17
	ldr r0, _0804F840
	mov sb, r0
	mov r0, r8
	movs r1, #0x1d
	bl __umodsi3
	mov sl, r0
_0804F7AC:
	adds r1, r5, #0
	subs r1, #0x17
	mov r2, sb
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r0, #0x1d
	mov r2, sl
	subs r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r7, r1, #0
	cmp r4, #0x1c
	bls _0804F7CE
	adds r0, r4, #0
	subs r0, #0x1d
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0804F7CE:
	movs r2, #0
	lsls r1, r5, #4
	adds r5, #1
	mov ip, r5
	ldr r6, _0804F844
	adds r3, r1, #0
	movs r5, #0
_0804F7DC:
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r6
	strh r5, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bls _0804F7DC
	mov r2, sb
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r8, r0
	bls _0804F826
	movs r2, #1
	adds r3, r1, #0
	adds r5, r3, r4
	ldr r7, _0804F848
	ldr r6, _0804F84C
_0804F802:
	adds r0, r4, r2
	cmp r0, #0xe
	ble _0804F81C
	cmp r0, #0x1e
	bgt _0804F81C
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r1, r3, r2
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	strh r1, [r0]
_0804F81C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bls _0804F802
_0804F826:
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x19
	bls _0804F7AC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F840: .4byte 0x08E0E08C
_0804F844: .4byte 0x02000000
_0804F848: .4byte 0x01FFFFE4
_0804F84C: .4byte 0x02018800

	THUMB_FUNC_START sub_804F850
sub_804F850: @ 0x0804F850
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, _0804F8A4
	adds r4, r0, #0
	adds r4, #8
	movs r0, #0x41
	mov r8, r0
_0804F86C:
	adds r0, r4, #0
	bl sub_80411EC
	adds r4, #8
	movs r1, #1
	rsbs r1, r1, #0
	add r8, r1
	mov r2, r8
	cmp r2, #0
	bge _0804F86C
	movs r3, #0
	mov r8, r3
	ldr r1, _0804F8A8
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r6, r6, #2
	mov ip, r6
	add r0, ip
	ldr r0, [r0]
	lsls r7, r7, #3
	adds r0, r7, r0
	mov r4, ip
	str r4, [sp]
	str r7, [sp, #4]
	b _0804FA00
	.align 2, 0
_0804F8A4: .4byte 0x02018400
_0804F8A8: .4byte 0x08FC4618
_0804F8AC:
	lsls r0, r2, #2
	ldr r6, _0804FA18
	adds r0, r0, r6
	ldr r0, [r0]
	add r0, ip
	ldr r0, [r0]
	adds r6, r7, r0
	ldr r0, [r6, #4]
	mov r2, r8
	lsls r1, r2, #3
	adds r0, r1, r0
	ldrh r3, [r0]
	mov sb, r3
	movs r3, #0xc0
	ldrb r2, [r0]
	movs r4, #4
	ldrsh r0, [r5, r4]
	adds r4, r2, r0
	mov sl, r1
	cmp r4, #0xbf
	ble _0804F8DE
	ldrh r0, [r5, #4]
	adds r3, r2, r0
	movs r0, #0xff
	ands r3, r0
_0804F8DE:
	cmp r4, #0xa0
	bgt _0804F8EA
	ldrh r0, [r5, #4]
	adds r3, r2, r0
	movs r1, #0xff
	ands r3, r1
_0804F8EA:
	ldr r2, _0804FA1C
	ldrb r1, [r6, #1]
	mov r4, r8
	subs r1, r1, r4
	lsls r1, r1, #3
	adds r1, r1, r2
	movs r0, #0xff
	lsls r0, r0, #8
	mov r6, sb
	ands r0, r6
	orrs r3, r0
	movs r4, #0
	strh r3, [r1]
	ldrb r1, [r5, #6]
	movs r3, #3
	adds r0, r3, #0
	ands r0, r1
	movs r1, #1
	add r1, r8
	mov sb, r1
	cmp r0, #1
	bne _0804F93C
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r6, _0804FA18
	adds r0, r0, r6
	ldr r0, [r0]
	add r0, ip
	ldr r0, [r0]
	adds r0, r7, r0
	ldrb r0, [r0, #1]
	subs r0, r0, r1
	adds r0, #1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r6, #0x80
	lsls r6, r6, #3
	adds r2, r6, #0
	orrs r1, r2
	strh r1, [r0]
_0804F93C:
	ldrb r1, [r5, #6]
	adds r0, r3, #0
	ands r0, r1
	ldrb r2, [r5]
	cmp r0, #2
	bne _0804F96C
	lsls r0, r2, #2
	ldr r1, _0804FA18
	adds r0, r0, r1
	ldr r0, [r0]
	add r0, ip
	ldr r0, [r0]
	adds r0, r7, r0
	ldrb r0, [r0, #1]
	subs r0, #1
	cmp r8, r0
	bne _0804F96C
	ldr r3, _0804FA1C
	ldrh r0, [r3, #8]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3, #8]
_0804F96C:
	lsls r0, r2, #2
	ldr r6, _0804FA18
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r7, [sp]
	adds r0, r7, r0
	ldr r0, [r0]
	ldr r1, [sp, #4]
	adds r4, r1, r0
	ldr r0, [r4, #4]
	add r0, sl
	ldrh r6, [r0, #2]
	ldr r3, _0804FA20
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r3, #0
	ands r0, r6
	ldrh r7, [r5, #2]
	adds r1, r0, r7
	ldr r0, _0804FA24
	cmp r1, r0
	ble _0804F99C
	adds r2, r1, #0
	ands r2, r3
_0804F99C:
	cmp r1, #0xf0
	bgt _0804F9A4
	adds r2, r3, #0
	ands r2, r1
_0804F9A4:
	ldrb r1, [r4, #1]
	mov r0, sb
	subs r1, r1, r0
	adds r1, #1
	lsls r1, r1, #2
	adds r1, #1
	lsls r1, r1, #1
	ldr r3, _0804FA1C
	adds r1, r1, r3
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r6
	orrs r2, r0
	strh r2, [r1]
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r4, _0804FA18
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r6, [sp]
	adds r0, r6, r0
	ldr r0, [r0]
	ldr r7, [sp, #4]
	adds r0, r7, r0
	ldrb r1, [r0, #1]
	mov r2, sb
	subs r1, r1, r2
	adds r1, #1
	lsls r1, r1, #2
	adds r1, #2
	lsls r1, r1, #1
	adds r1, r1, r3
	ldr r0, [r0, #4]
	add r0, sl
	ldrh r0, [r0, #4]
	strh r0, [r1]
	mov r8, sb
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r0, [r0]
	mov ip, r6
	add r0, ip
	ldr r0, [r0]
	ldr r7, [sp, #4]
	adds r0, r7, r0
_0804FA00:
	ldrb r0, [r0, #1]
	cmp r8, r0
	bge _0804FA08
	b _0804F8AC
_0804FA08:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FA18: .4byte 0x08FC4618
_0804FA1C: .4byte 0x02018400
_0804FA20: .4byte 0x000001FF
_0804FA24: .4byte 0x000001BF

	THUMB_FUNC_START sub_804FA28
sub_804FA28: @ 0x0804FA28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r1, _0804FAE4
	ldrb r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0804FAE8
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r2, _0804FAEC
	ldr r6, _0804FAF0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r0, r0, r4
	mov ip, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r0, r0, r2
	mov r8, r0
	ldr r0, _0804FAF4
	mov sl, r0
	ldr r0, _0804FAF8
	mov sb, r0
	movs r3, #0xf
	movs r5, #0x80
	lsls r5, r5, #2
_0804FA68:
	adds r1, r6, #1
_0804FA6A:
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _0804FA6A
	adds r2, r2, r5
	subs r3, #1
	cmp r3, #0
	bge _0804FA68
	mov r4, ip
	mov r2, r8
	movs r3, #0
	ldr r6, _0804FAF0
	movs r5, #0x80
	lsls r5, r5, #2
_0804FA8C:
	adds r3, #1
	adds r1, r6, #1
_0804FA90:
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _0804FA90
	adds r2, r2, r5
	cmp r3, #0xb
	ble _0804FA8C
	ldrb r0, [r7]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	mov r1, sb
	movs r2, #0x50
	bl CpuSet
	movs r0, #0xf3
	bl sub_8055554
	cmp r0, #0
	beq _0804FACC
	ldr r0, _0804FAFC
	add r0, sb
	movs r1, #0xb8
	lsls r1, r1, #1
	ldr r2, _0804FB00
	bl sub_8044E50
_0804FACC:
	bl sub_8008220
	bl sub_804F2DC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FAE4: .4byte 0x08FC4440
_0804FAE8: .4byte 0x02018C00
_0804FAEC: .4byte 0x02014400
_0804FAF0: .4byte 0x000001FF
_0804FAF4: .4byte 0x08FC452C
_0804FAF8: .4byte 0x020002E0
_0804FAFC: .4byte 0xFFFFFD20
_0804FB00: .4byte 0x000001BF

	THUMB_FUNC_START sub_804FB04
sub_804FB04: @ 0x0804FB04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r2, #0
	strh r2, [r6, #2]
	strh r2, [r6, #4]
	ldrb r1, [r6, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #6]
	ldr r0, _0804FB4C
	strh r2, [r0]
	adds r0, r6, #0
	bl sub_804FA28
	ldr r0, _0804FB50
	ldr r1, _0804FB54
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r0, #0
	str r0, [sp]
	ldr r3, _0804FB58
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	b _0804FC30
	.align 2, 0
_0804FB4C: .4byte gBLDCNT
_0804FB50: .4byte 0x02000000
_0804FB54: .4byte 0x02018800
_0804FB58: .4byte 0x08FC4618
_0804FB5C:
	movs r7, #0
	ldrb r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [sp]
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	mov sb, r1
	adds r3, #1
	str r3, [sp, #4]
	cmp r0, #0
	beq _0804FC1E
	ldr r0, _0804FC64
	mov sl, r0
_0804FB7E:
	adds r0, r6, #0
	ldr r1, [sp]
	adds r2, r7, #0
	bl sub_804F850
	ldr r0, _0804FC68
	mov r1, sl
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldr r4, _0804FC6C
	adds r4, r7, r4
	ldrb r3, [r4]
	mov r0, sl
	movs r1, #0
	ldr r2, _0804FC70
	bl sub_8044EC8
	ldrb r3, [r4]
	mov r0, sl
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _0804FC74
	bl sub_8044EC8
	ldr r0, _0804FC78
	adds r0, r7, r0
	ldrb r3, [r0]
	mov r0, sl
	movs r1, #0
	ldr r2, _0804FC74
	bl sub_8044F80
	movs r4, #0
	ldrb r0, [r6]
	lsls r0, r0, #2
	ldr r1, _0804FC7C
	adds r0, r0, r1
	ldr r0, [r0]
	add r0, sb
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r1, r0, r1
	adds r5, r0, #0
	adds r7, #1
	ldrb r1, [r1]
	cmp r4, r1
	bge _0804FC06
	ldr r2, _0804FC7C
	mov r8, r2
_0804FBE4:
	bl sub_8008220
	bl LoadOam
	bl LoadPalettes
	adds r4, #1
	ldrb r0, [r6]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	add r0, sb
	ldr r0, [r0]
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r4, r0
	blt _0804FBE4
_0804FC06:
	ldrb r2, [r6]
	lsls r0, r2, #2
	ldr r3, _0804FC7C
	adds r0, r0, r3
	ldr r0, [r0]
	add r0, sb
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804FB7E
_0804FC1E:
	ldr r0, [sp, #4]
	str r0, [sp]
	ldr r3, _0804FC7C
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, [sp]
	lsls r0, r2, #2
	adds r0, r0, r1
_0804FC30:
	ldr r0, [r0]
	cmp r0, #0
	bne _0804FB5C
	movs r4, #1
	ldr r5, _0804FC80
_0804FC3A:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _0804FC3A
	bl sub_8008220
	bl LoadOam
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FC64: .4byte 0x02000000
_0804FC68: .4byte 0x02018800
_0804FC6C: .4byte 0x08E0E0D2
_0804FC70: .4byte 0x0000016F
_0804FC74: .4byte 0x000001FF
_0804FC78: .4byte 0x08E0E0AC
_0804FC7C: .4byte 0x08FC4618
_0804FC80: .4byte 0x02018400

	THUMB_FUNC_START sub_804FC84
sub_804FC84: @ 0x0804FC84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	ldrb r1, [r0, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #6]
	ldr r1, _0804FE4C
	movs r2, #0xbc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r5, _0804FE50
	ldr r0, _0804FE54
	ldrb r0, [r0]
	lsls r0, r0, #8
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r5]
	mov r0, r8
	bl sub_804FA28
	movs r3, #0
	str r3, [sp]
	ldr r1, _0804FE58
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r1, r0, r1
	movs r3, #0
	ldrsh r0, [r1, r3]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _0804FCDE
	bl PlayMusic
_0804FCDE:
	ldr r3, _0804FE5C
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, r4
	beq _0804FDE4
_0804FCE8:
	ldr r2, [sp]
	lsls r0, r2, #1
	ldr r3, _0804FE5C
	adds r0, r0, r3
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1, #2]
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1, #4]
	ldrb r2, [r1, #1]
	str r2, [sp, #4]
	movs r7, #0
	ldr r2, _0804FE60
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r3, [sp, #4]
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	ldr r3, [sp]
	adds r3, #2
	str r3, [sp, #8]
	ldr r3, [sp]
	adds r3, #3
	str r3, [sp, #0xc]
	cmp r0, #0
	beq _0804FD94
	mov sl, r2
	adds r6, r1, #0
_0804FD30:
	mov r0, r8
	ldr r1, [sp, #4]
	adds r2, r7, #0
	bl sub_804F850
	movs r4, #0
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	adds r0, r6, r0
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r1, r0, r1
	adds r5, r0, #0
	adds r7, #1
	ldrb r1, [r1]
	cmp r4, r1
	bge _0804FD7C
	ldr r2, _0804FE60
	mov sb, r2
_0804FD5C:
	bl sub_8008220
	bl LoadOam
	adds r4, #1
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	adds r0, r6, r0
	ldr r0, [r0]
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r4, r0
	blt _0804FD5C
_0804FD7C:
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	adds r0, r6, r0
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804FD30
_0804FD94:
	ldr r4, _0804FE54
	ldr r0, [sp]
	movs r1, #3
	bl _divsi3
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #8
	movs r1, #0x10
	orrs r0, r1
	ldr r2, _0804FE50
	strh r0, [r2]
	ldr r3, [sp, #8]
	lsls r0, r3, #1
	ldr r1, _0804FE5C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r4, [r0, r2]
	cmp r4, #0
	ble _0804FDCA
_0804FDBC:
	bl sub_8008220
	bl LoadBlendingRegs
	subs r4, #1
	cmp r4, #0
	bgt _0804FDBC
_0804FDCA:
	ldr r3, [sp, #0xc]
	str r3, [sp]
	adds r0, r3, #0
	adds r0, #2
	lsls r0, r0, #1
	ldr r1, _0804FE5C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0804FCE8
_0804FDE4:
	movs r4, #1
	ldr r5, _0804FE64
_0804FDE8:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _0804FDE8
	bl sub_8008220
	bl LoadOam
	ldr r1, _0804FE68
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _0804FE3C
	ldr r5, _0804FE6C
	adds r4, r1, #0
_0804FE10:
	ldr r0, _0804FE70
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _0804FE74
	bl sub_8044F80
	bl sub_8008220
	bl LoadPalettes
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0804FE10
_0804FE3C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FE4C: .4byte gBLDCNT
_0804FE50: .4byte gBLDALPHA
_0804FE54: .4byte 0x08E0E0F8
_0804FE58: .4byte 0x08E0E146
_0804FE5C: .4byte 0x08E0DB14
_0804FE60: .4byte 0x08FC4618
_0804FE64: .4byte 0x02018400
_0804FE68: .4byte 0x08E0E11C
_0804FE6C: .4byte 0x02000000
_0804FE70: .4byte 0x02018800
_0804FE74: .4byte 0x000001FF

	THUMB_FUNC_START sub_804FE78
sub_804FE78: @ 0x0804FE78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	ldrb r1, [r0, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, r8
	strb r0, [r1, #6]
	ldr r1, _0804FEB0
	movs r0, #0
	strh r0, [r1]
	mov r0, r8
	bl sub_804FA28
	movs r2, #0
	str r2, [sp]
	mov r3, r8
	ldrb r2, [r3]
	lsls r0, r2, #2
	ldr r1, _0804FEB4
	adds r0, r0, r1
	ldr r0, [r0]
	b _0804FFFC
	.align 2, 0
_0804FEB0: .4byte gBLDCNT
_0804FEB4: .4byte 0x08E0DFC0
_0804FEB8:
	lsls r0, r2, #2
	ldr r1, _0805001C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r3, [sp]
	lsls r2, r3, #1
	adds r1, r2, r3
	lsls r1, r1, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	mov r3, r8
	strh r0, [r3, #2]
	ldrb r0, [r3]
	lsls r0, r0, #2
	ldr r3, _0805001C
	adds r0, r0, r3
	ldr r0, [r0]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	mov r1, r8
	strh r0, [r1, #4]
	movs r3, #0
	mov sb, r3
	ldr r4, _08050020
	ldrb r1, [r1]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0]
	adds r3, r1, #0
	str r2, [sp, #0xc]
	ldr r1, [sp]
	adds r1, #1
	str r1, [sp, #8]
	cmp r0, #0
	beq _0804FFA0
_0804FF00:
	movs r6, #0
	lsls r0, r3, #2
	adds r0, r0, r4
	ldr r0, [r0]
	mov r2, sb
	lsls r1, r2, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	adds r7, r1, #0
	adds r2, #1
	str r2, [sp, #4]
	cmp r0, #0
	beq _0804FF88
	ldr r3, _08050020
	mov sl, r3
_0804FF20:
	mov r0, r8
	mov r1, sb
	adds r2, r6, #0
	bl sub_804F850
	movs r4, #0
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r1, [r0]
	lsls r0, r6, #3
	adds r1, r0, r1
	adds r5, r0, #0
	adds r6, #1
	ldrb r1, [r1]
	cmp r4, r1
	bge _0804FF6E
	ldr r1, _08050020
_0804FF4A:
	str r1, [sp, #0x10]
	bl sub_8008220
	bl LoadOam
	adds r4, #1
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #2
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r0, [r0]
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r4, r0
	blt _0804FF4A
_0804FF6E:
	mov r3, r8
	ldrb r2, [r3]
	lsls r0, r2, #2
	add r0, sl
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r1, [r0]
	lsls r0, r6, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r3, r2, #0
	cmp r0, #0
	bne _0804FF20
_0804FF88:
	ldr r0, [sp, #4]
	mov sb, r0
	ldr r4, _08050020
	lsls r0, r3, #2
	adds r0, r0, r4
	ldr r1, [r0]
	mov r2, sb
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0804FF00
_0804FFA0:
	ldr r0, _08050024
	mov r3, r8
	ldrb r1, [r3]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r1, [sp]
	cmp r0, r1
	bne _0804FFBA
	movs r0, #0xa7
	lsls r0, r0, #1
	bl PlayMusic
_0804FFBA:
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #2
	ldr r3, _0805001C
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, [sp, #0xc]
	ldr r3, [sp]
	adds r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #4
	ldrsh r4, [r0, r1]
	cmp r4, #0
	ble _0804FFE2
_0804FFD8:
	bl sub_8008220
	subs r4, #1
	cmp r4, #0
	bgt _0804FFD8
_0804FFE2:
	ldr r2, [sp, #8]
	str r2, [sp]
	mov r3, r8
	ldrb r2, [r3]
	lsls r0, r2, #2
	ldr r1, _0805001C
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r3, [sp]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r1
_0804FFFC:
	movs r3, #4
	ldrsh r1, [r0, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0805000A
	b _0804FEB8
_0805000A:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805001C: .4byte 0x08E0DFC0
_08050020: .4byte 0x08FC4618
_08050024: .4byte 0x08E0E1D2

	THUMB_FUNC_START sub_8050028
sub_8050028: @ 0x08050028
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r1, #0
	strh r1, [r5, #2]
	strh r1, [r5, #4]
	ldrb r2, [r5, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r5, #6]
	ldr r0, _08050060
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_804FA28
	movs r0, #0
	str r0, [sp]
	ldr r3, _08050064
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	b _080500FA
	.align 2, 0
_08050060: .4byte gBLDCNT
_08050064: .4byte 0x08FC4618
_08050068:
	movs r7, #0
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [sp]
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	mov r8, r1
	adds r3, #1
	str r3, [sp, #4]
	cmp r0, #0
	beq _080500E8
	ldr r0, _08050110
	mov sl, r0
_0805008A:
	adds r0, r5, #0
	ldr r1, [sp]
	adds r2, r7, #0
	bl sub_804F850
	movs r4, #0
	ldrb r0, [r5]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	add r0, r8
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r1, r0, r1
	adds r6, r0, #0
	adds r7, #1
	ldrb r1, [r1]
	cmp r4, r1
	bge _080500D2
	ldr r1, _08050110
	mov sb, r1
_080500B4:
	bl sub_8008220
	bl LoadOam
	adds r4, #1
	ldrb r0, [r5]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	add r0, r8
	ldr r0, [r0]
	adds r0, r6, r0
	ldrb r0, [r0]
	cmp r4, r0
	blt _080500B4
_080500D2:
	ldrb r2, [r5]
	lsls r0, r2, #2
	add r0, sl
	ldr r0, [r0]
	add r0, r8
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805008A
_080500E8:
	ldr r3, [sp, #4]
	str r3, [sp]
	ldr r3, _08050110
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, [sp]
	lsls r0, r2, #2
	adds r0, r0, r1
_080500FA:
	ldr r0, [r0]
	cmp r0, #0
	bne _08050068
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050110: .4byte 0x08FC4618

	THUMB_FUNC_START sub_8050114
sub_8050114: @ 0x08050114
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r1, #0
	strh r1, [r5, #2]
	strh r1, [r5, #4]
	ldrb r2, [r5, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r5, #6]
	ldr r0, _0805021C
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_804FA28
	movs r6, #0
	ldr r2, _08050220
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r5, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #0
	beq _080501F0
	ldr r0, _08050224
	mov sl, r0
	mov sb, r2
_0805015A:
	movs r4, #1
	lsls r7, r6, #3
	adds r0, r6, #1
	mov r8, r0
_08050162:
	lsls r0, r4, #3
	add r0, sl
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08050162
	ldrb r1, [r5, #1]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_804F850
	ldr r1, _08050228
	ldrb r0, [r5]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r6
	bne _08050196
	movs r0, #0xa7
	lsls r0, r0, #1
	bl PlayMusic
_08050196:
	movs r4, #0
	ldrb r0, [r5]
	lsls r0, r0, #2
	add r0, sb
	ldrb r1, [r5, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r0, [r0]
	cmp r4, r0
	bge _080501D4
	ldr r6, _08050220
_080501B2:
	bl sub_8008220
	bl LoadOam
	adds r4, #1
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r5, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r0, [r0]
	cmp r4, r0
	blt _080501B2
_080501D4:
	mov r6, r8
	ldrb r0, [r5]
	lsls r0, r0, #2
	add r0, sb
	ldrb r1, [r5, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	lsls r0, r6, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805015A
_080501F0:
	movs r4, #1
	ldr r5, _08050224
_080501F4:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _080501F4
	bl sub_8008220
	bl LoadOam
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805021C: .4byte gBLDCNT
_08050220: .4byte 0x08FC4618
_08050224: .4byte 0x02018400
_08050228: .4byte 0x08E0E1D2

	THUMB_FUNC_START sub_805022C
sub_805022C: @ 0x0805022C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r1, #0
	strh r1, [r5, #2]
	strh r1, [r5, #4]
	ldrb r2, [r5, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r5, #6]
	ldr r0, _080503B0
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_804FA28
	ldr r4, _080503B4
	ldr r1, _080503B8
	adds r0, r4, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r7, #0
	ldr r3, _080503BC
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r2, [r5, #1]
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805033A
	mov r8, r4
	mov sb, r3
_0805027E:
	adds r0, r5, #0
	adds r1, r2, #0
	adds r2, r7, #0
	bl sub_804F850
	ldr r0, _080503C0
	ldrb r1, [r5]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r7
	bne _0805029E
	movs r0, #0xa7
	lsls r0, r0, #1
	bl PlayMusic
_0805029E:
	ldr r0, _080503C4
	adds r4, r7, r0
	ldrb r0, [r4]
	cmp r0, #5
	bhi _080502CE
	ldr r0, _080503B8
	mov r1, r8
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldrb r3, [r4]
	mov r0, r8
	movs r1, #0
	ldr r2, _080503C8
	bl sub_8044EC8
	ldrb r3, [r4]
	mov r0, r8
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _080503CC
	bl sub_8044EC8
_080502CE:
	bl sub_8008220
	bl LoadOam
	bl LoadPalettes
	ldrb r0, [r5]
	lsls r0, r0, #2
	add r0, sb
	ldrb r1, [r5, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	lsls r1, r7, #3
	adds r0, r1, r0
	ldrb r0, [r0]
	movs r4, #2
	adds r6, r1, #0
	adds r7, #1
	cmp r0, #1
	ble _08050320
	ldr r2, _080503BC
_080502FC:
	str r2, [sp]
	bl sub_8008220
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r2, [sp]
	adds r0, r0, r2
	ldrb r1, [r5, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r6, r0
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r4, #1
	cmp r1, r0
	bgt _080502FC
_08050320:
	ldrb r0, [r5]
	lsls r0, r0, #2
	add r0, sb
	ldrb r2, [r5, #1]
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805027E
_0805033A:
	ldr r1, _080503D0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08050384
	ldr r5, _080503B4
	adds r4, r1, #0
_08050348:
	ldr r0, _080503B8
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _080503C8
	bl sub_8044EC8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _080503CC
	bl sub_8044EC8
	bl sub_8008220
	bl LoadPalettes
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08050348
_08050384:
	movs r4, #1
	ldr r5, _080503D4
_08050388:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08050388
	bl sub_8008220
	bl LoadOam
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080503B0: .4byte gBLDCNT
_080503B4: .4byte 0x02000000
_080503B8: .4byte 0x02018800
_080503BC: .4byte 0x08FC4618
_080503C0: .4byte 0x08E0E1D2
_080503C4: .4byte 0x08E0E20E
_080503C8: .4byte 0x0000016F
_080503CC: .4byte 0x000001FF
_080503D0: .4byte 0x08E0E284
_080503D4: .4byte 0x02018400

	THUMB_FUNC_START sub_80503D8
sub_80503D8: @ 0x080503D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	movs r1, #0
	strh r1, [r5, #2]
	strh r1, [r5, #4]
	ldrb r2, [r5, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r5, #6]
	ldr r0, _08050420
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_804FA28
	ldr r0, _08050424
	ldr r1, _08050428
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r0, #0
	mov sb, r0
	movs r1, #0
	str r1, [sp]
	ldr r3, _0805042C
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	b _080504FE
	.align 2, 0
_08050420: .4byte gBLDCNT
_08050424: .4byte 0x02000000
_08050428: .4byte 0x02018800
_0805042C: .4byte 0x08FC4618
_08050430:
	movs r2, #0
	mov r8, r2
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [sp]
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	adds r7, r1, #0
	adds r3, #1
	str r3, [sp, #4]
	cmp r0, #0
	beq _080504EC
_08050450:
	adds r0, r5, #0
	ldr r1, [sp]
	mov r2, r8
	bl sub_804F850
	movs r4, #0
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r1, _0805056C
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r1, [r0]
	mov r2, r8
	lsls r0, r2, #3
	adds r1, r0, r1
	mov sl, r0
	adds r2, #1
	str r2, [sp, #8]
	ldrb r1, [r1]
	cmp r4, r1
	bge _080504CE
	ldr r6, _08050570
_0805047E:
	ldr r0, _08050574
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	mov r3, r8
	cmp r3, #9
	ble _080504AA
	movs r0, #2
	add sb, r0
	mov r1, sb
	cmp r1, #0x10
	ble _0805049E
	movs r2, #0x10
	mov sb, r2
_0805049E:
	adds r0, r6, #0
	movs r1, #0
	ldr r2, _08050578
	mov r3, sb
	bl sub_8044F80
_080504AA:
	bl sub_8008220
	bl LoadOam
	bl LoadPalettes
	adds r4, #1
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r3, _0805056C
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r0, [r0]
	add r0, sl
	ldrb r0, [r0]
	cmp r4, r0
	blt _0805047E
_080504CE:
	ldr r0, [sp, #8]
	mov r8, r0
	ldrb r2, [r5]
	lsls r0, r2, #2
	ldr r1, _0805056C
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r1, [r0]
	mov r3, r8
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08050450
_080504EC:
	ldr r0, [sp, #4]
	str r0, [sp]
	ldr r3, _0805056C
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, [sp]
	lsls r0, r2, #2
	adds r0, r0, r1
_080504FE:
	ldr r0, [r0]
	cmp r0, #0
	bne _08050430
	movs r4, #1
	ldr r5, _0805057C
_08050508:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08050508
	bl sub_8008220
	bl LoadOam
	ldr r1, _08050580
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _0805055C
	ldr r5, _08050570
	adds r4, r1, #0
_08050530:
	ldr r0, _08050574
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _08050578
	bl sub_8044F80
	bl sub_8008220
	bl LoadPalettes
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08050530
_0805055C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805056C: .4byte 0x08FC4618
_08050570: .4byte 0x02000000
_08050574: .4byte 0x02018800
_08050578: .4byte 0x000001FF
_0805057C: .4byte 0x02018400
_08050580: .4byte 0x08E0E091

	THUMB_FUNC_START sub_8050584
sub_8050584: @ 0x08050584
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r1, #0
	strh r1, [r6, #2]
	strh r1, [r6, #4]
	ldrb r2, [r6, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r6, #6]
	ldr r0, _080505CC
	strh r1, [r0]
	adds r0, r6, #0
	bl sub_804FA28
	ldr r0, _080505D0
	ldr r1, _080505D4
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r0, #0
	str r0, [sp]
	mov sl, r0
	ldr r3, _080505D8
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	b _080506BA
	.align 2, 0
_080505CC: .4byte gBLDCNT
_080505D0: .4byte 0x02000000
_080505D4: .4byte 0x02018800
_080505D8: .4byte 0x08FC4618
_080505DC:
	movs r7, #0
	ldrb r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [sp]
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	mov sb, r1
	adds r3, #1
	str r3, [sp, #4]
	cmp r0, #0
	beq _080506A8
_080505FA:
	adds r0, r6, #0
	ldr r1, [sp]
	adds r2, r7, #0
	bl sub_804F850
	ldr r0, _08050728
	ldr r1, _0805072C
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldr r4, _08050730
	adds r4, r7, r4
	ldrb r3, [r4]
	ldr r0, _0805072C
	movs r1, #0
	ldr r2, _08050734
	bl sub_8044EC8
	ldrb r3, [r4]
	ldr r0, _0805072C
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _08050738
	bl sub_8044EC8
	cmp r7, #0xa
	ble _0805064C
	movs r0, #3
	add sl, r0
	mov r1, sl
	cmp r1, #0x10
	ble _08050640
	movs r2, #0x10
	mov sl, r2
_08050640:
	ldr r0, _0805072C
	movs r1, #0
	ldr r2, _08050738
	mov r3, sl
	bl sub_8044F80
_0805064C:
	movs r4, #0
	ldrb r0, [r6]
	lsls r0, r0, #2
	ldr r3, _0805073C
	adds r0, r0, r3
	ldr r0, [r0]
	add r0, sb
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r1, r0, r1
	adds r5, r0, #0
	adds r7, #1
	ldrb r1, [r1]
	cmp r4, r1
	bge _08050690
	adds r0, r3, #0
	mov r8, r0
_0805066E:
	bl sub_8008220
	bl LoadOam
	bl LoadPalettes
	adds r4, #1
	ldrb r0, [r6]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	add r0, sb
	ldr r0, [r0]
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r4, r0
	blt _0805066E
_08050690:
	ldrb r2, [r6]
	lsls r0, r2, #2
	ldr r1, _0805073C
	adds r0, r0, r1
	ldr r0, [r0]
	add r0, sb
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080505FA
_080506A8:
	ldr r3, [sp, #4]
	str r3, [sp]
	ldr r3, _0805073C
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, [sp]
	lsls r0, r2, #2
	adds r0, r0, r1
_080506BA:
	ldr r0, [r0]
	cmp r0, #0
	bne _080505DC
	movs r4, #1
	ldr r5, _08050740
_080506C4:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _080506C4
	bl sub_8008220
	bl LoadOam
	ldr r1, _08050744
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08050718
	ldr r5, _0805072C
	adds r4, r1, #0
_080506EC:
	ldr r0, _08050728
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _08050738
	bl sub_8044F80
	bl sub_8008220
	bl LoadPalettes
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080506EC
_08050718:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050728: .4byte 0x02018800
_0805072C: .4byte 0x02000000
_08050730: .4byte 0x08E0E20E
_08050734: .4byte 0x0000016F
_08050738: .4byte 0x000001FF
_0805073C: .4byte 0x08FC4618
_08050740: .4byte 0x02018400
_08050744: .4byte 0x08E0E091

	THUMB_FUNC_START sub_8050748
sub_8050748: @ 0x08050748
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	movs r2, #0
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	ldrb r1, [r0, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	mov r1, sb
	strb r0, [r1, #6]
	ldr r0, _08050838
	strh r2, [r0]
	mov r0, sb
	bl sub_804FA28
	ldr r0, _0805083C
	ldr r4, _08050840
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldr r5, _08050844
	movs r2, #0x80
	lsls r2, r2, #3
	adds r4, r4, r2
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r4, #0x52
_08050798:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x60
	bls _08050798
	bl sub_8008220
	bl LoadOam
	ldr r1, _08050848
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080507F4
	ldr r5, _0805083C
	adds r4, r1, #0
_080507C0:
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #1
	ldr r2, _0805084C
	bl sub_8044EC8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _08050850
	bl sub_8044EC8
	ldr r0, _08050854
	strh r0, [r5]
	bl sub_8008220
	bl LoadPalettes
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080507C0
_080507F4:
	ldr r1, _08050858
	movs r0, #0x3f
	strh r0, [r1]
	subs r1, #0x4a
	movs r3, #0x9f
	lsls r3, r3, #8
	adds r0, r3, #0
	strh r0, [r1]
	mov r0, sb
	movs r1, #0
	movs r2, #0
	bl sub_804F850
	bl sub_8008220
	bl LoadOam
	movs r2, #0
	ldr r1, _0805085C
	mov r3, sb
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _080508C4
	ldr r0, _08050860
	mov sl, r0
_0805082E:
	movs r5, #0
	adds r2, #1
	mov r8, r2
	ldr r7, _08050860
	b _08050898
	.align 2, 0
_08050838: .4byte gBLDCNT
_0805083C: .4byte 0x02000000
_08050840: .4byte 0x02018800
_08050844: .4byte 0x02018400
_08050848: .4byte 0x08E0E2A0
_0805084C: .4byte 0x0000019F
_08050850: .4byte 0x000001FF
_08050854: .4byte 0x0000FFFF
_08050858: .4byte 0x0400004A
_0805085C: .4byte 0x08FC4618
_08050860: .4byte 0x08E0E295
_08050864:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	bl sub_804F78C
	movs r4, #0
	adds r6, r5, #1
	b _08050880
_08050872:
	bl sub_8008220
	bl LoadPalettes
	bl LoadOam
	adds r4, #1
_08050880:
	adds r0, r5, #0
	movs r1, #0x1d
	bl _divsi3
	add r0, sl
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r7, _08050954
	cmp r4, r0
	ble _08050872
	adds r5, r6, #0
_08050898:
	adds r0, r5, #0
	movs r1, #0x1d
	bl _divsi3
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08050864
	mov r2, r8
	ldr r1, _08050958
	mov r3, sb
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0805082E
_080508C4:
	ldr r0, _0805095C
	ldr r4, _08050960
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r5, #1
_080508D4:
	lsls r0, r5, #3
	adds r0, r0, r4
	bl sub_80411EC
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x51
	bls _080508D4
	bl sub_8008220
	bl LoadOam
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	ldr r1, _08050964
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08050944
	ldr r5, _08050968
	adds r4, r1, #0
_08050908:
	ldr r0, _0805096C
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _08050970
	bl sub_8044EC8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _08050974
	bl sub_8044EC8
	bl sub_8008220
	bl LoadPalettes
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08050908
_08050944:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050954: .4byte 0x08E0E295
_08050958: .4byte 0x08FC4618
_0805095C: .4byte 0x02018C00
_08050960: .4byte 0x02018400
_08050964: .4byte 0x08E0E2B2
_08050968: .4byte 0x02000000
_0805096C: .4byte 0x02018800
_08050970: .4byte 0x0000016F
_08050974: .4byte 0x000001FF

	THUMB_FUNC_START sub_8050978
sub_8050978: @ 0x08050978
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r1, #0
	strh r1, [r6, #2]
	strh r1, [r6, #4]
	ldrb r2, [r6, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r6, #6]
	ldr r0, _080509BC
	strh r1, [r0]
	adds r0, r6, #0
	bl sub_804FA28
	ldr r0, _080509C0
	ldr r1, _080509C4
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r0, #0
	str r0, [sp]
	ldr r3, _080509C8
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	b _08050A9E
	.align 2, 0
_080509BC: .4byte gBLDCNT
_080509C0: .4byte 0x02000000
_080509C4: .4byte 0x02018800
_080509C8: .4byte 0x08FC4618
_080509CC:
	movs r7, #0
	ldrb r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [sp]
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	mov sb, r1
	adds r3, #1
	str r3, [sp, #4]
	cmp r0, #0
	beq _08050A8C
	ldr r0, _08050B2C
	mov sl, r0
_080509EE:
	adds r0, r6, #0
	ldr r1, [sp]
	adds r2, r7, #0
	bl sub_804F850
	ldr r0, _08050B30
	mov r1, sl
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldr r4, _08050B34
	adds r4, r7, r4
	ldrb r3, [r4]
	mov r0, sl
	movs r1, #0
	ldr r2, _08050B38
	bl sub_8044EC8
	ldrb r3, [r4]
	mov r0, sl
	movs r1, #0xa8
	lsls r1, r1, #1
	ldr r2, _08050B3C
	bl sub_8044EC8
	ldrb r3, [r4]
	mov r0, sl
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _08050B40
	bl sub_8044EC8
	movs r4, #0
	ldrb r0, [r6]
	lsls r0, r0, #2
	ldr r1, _08050B44
	adds r0, r0, r1
	ldr r0, [r0]
	add r0, sb
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r1, r0, r1
	adds r5, r0, #0
	adds r7, #1
	ldrb r1, [r1]
	cmp r4, r1
	bge _08050A74
	ldr r2, _08050B44
	mov r8, r2
_08050A52:
	bl sub_8008220
	bl LoadOam
	bl LoadPalettes
	adds r4, #1
	ldrb r0, [r6]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	add r0, sb
	ldr r0, [r0]
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r4, r0
	blt _08050A52
_08050A74:
	ldrb r2, [r6]
	lsls r0, r2, #2
	ldr r3, _08050B44
	adds r0, r0, r3
	ldr r0, [r0]
	add r0, sb
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080509EE
_08050A8C:
	ldr r0, [sp, #4]
	str r0, [sp]
	ldr r3, _08050B44
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, [sp]
	lsls r0, r2, #2
	adds r0, r0, r1
_08050A9E:
	ldr r0, [r0]
	cmp r0, #0
	bne _080509CC
	ldr r1, _08050B48
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08050AFE
	ldr r5, _08050B2C
	adds r4, r1, #0
_08050AB2:
	ldr r0, _08050B30
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _08050B38
	bl sub_8044EC8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	ldr r2, _08050B3C
	bl sub_8044EC8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _08050B40
	bl sub_8044EC8
	bl sub_8008220
	bl LoadPalettes
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08050AB2
_08050AFE:
	movs r4, #1
	ldr r5, _08050B4C
_08050B02:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08050B02
	bl sub_8008220
	bl LoadOam
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050B2C: .4byte 0x02000000
_08050B30: .4byte 0x02018800
_08050B34: .4byte 0x08E0E20E
_08050B38: .4byte 0x0000013F
_08050B3C: .4byte 0x0000016F
_08050B40: .4byte 0x000001FF
_08050B44: .4byte 0x08FC4618
_08050B48: .4byte 0x08E0E284
_08050B4C: .4byte 0x02018400

	THUMB_FUNC_START sub_8050B50
sub_8050B50: @ 0x08050B50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	movs r1, #0
	strh r1, [r5, #2]
	strh r1, [r5, #4]
	ldrb r2, [r5, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r5, #6]
	ldr r0, _08050B98
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_804FA28
	ldr r0, _08050B9C
	ldr r1, _08050BA0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r0, #0
	mov sb, r0
	movs r1, #0
	str r1, [sp]
	ldr r3, _08050BA4
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	b _08050C76
	.align 2, 0
_08050B98: .4byte gBLDCNT
_08050B9C: .4byte 0x02000000
_08050BA0: .4byte 0x02018800
_08050BA4: .4byte 0x08FC4618
_08050BA8:
	movs r2, #0
	mov r8, r2
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [sp]
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	adds r7, r1, #0
	adds r3, #1
	str r3, [sp, #4]
	cmp r0, #0
	beq _08050C64
_08050BC8:
	adds r0, r5, #0
	ldr r1, [sp]
	mov r2, r8
	bl sub_804F850
	movs r4, #0
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r1, _08050CAC
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r1, [r0]
	mov r2, r8
	lsls r0, r2, #3
	adds r1, r0, r1
	mov sl, r0
	adds r2, #1
	str r2, [sp, #8]
	ldrb r1, [r1]
	cmp r4, r1
	bge _08050C46
	ldr r6, _08050CB0
_08050BF6:
	ldr r0, _08050CB4
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	mov r3, r8
	cmp r3, #3
	ble _08050C22
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #0x10
	ble _08050C16
	movs r2, #0x10
	mov sb, r2
_08050C16:
	adds r0, r6, #0
	movs r1, #0
	ldr r2, _08050CB8
	mov r3, sb
	bl sub_8044F80
_08050C22:
	bl sub_8008220
	bl LoadOam
	bl LoadPalettes
	adds r4, #1
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r3, _08050CAC
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r0, [r0]
	add r0, sl
	ldrb r0, [r0]
	cmp r4, r0
	blt _08050BF6
_08050C46:
	ldr r0, [sp, #8]
	mov r8, r0
	ldrb r2, [r5]
	lsls r0, r2, #2
	ldr r1, _08050CAC
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r1, [r0]
	mov r3, r8
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08050BC8
_08050C64:
	ldr r0, [sp, #4]
	str r0, [sp]
	ldr r3, _08050CAC
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, [sp]
	lsls r0, r2, #2
	adds r0, r0, r1
_08050C76:
	ldr r0, [r0]
	cmp r0, #0
	bne _08050BA8
	movs r4, #1
	ldr r5, _08050CBC
_08050C80:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08050C80
	bl sub_8008220
	bl LoadOam
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050CAC: .4byte 0x08FC4618
_08050CB0: .4byte 0x02000000
_08050CB4: .4byte 0x02018800
_08050CB8: .4byte 0x000001FF
_08050CBC: .4byte 0x02018400

	THUMB_FUNC_START sub_8050CC0
sub_8050CC0: @ 0x08050CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	movs r2, #0
	strh r2, [r4, #2]
	strh r2, [r4, #4]
	ldrb r1, [r4, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #6]
	ldr r1, _08050D14
	movs r0, #0xbf
	strh r0, [r1]
	ldr r0, _08050D18
	strh r2, [r0]
	adds r0, r4, #0
	bl sub_804FA28
	ldr r0, _08050D1C
	ldr r1, _08050D20
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r0, #0
	mov r8, r0
	movs r7, #0
	ldr r3, _08050D24
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r2, [r4, #1]
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	b _08050E56
	.align 2, 0
_08050D14: .4byte gBLDCNT
_08050D18: .4byte gBLDY
_08050D1C: .4byte 0x02000000
_08050D20: .4byte 0x02018800
_08050D24: .4byte 0x08FC4618
_08050D28:
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r7, #0
	bl sub_804F850
	movs r5, #0
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldr r1, _08050DB8
	adds r0, r0, r1
	ldrb r1, [r4, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	lsls r0, r7, #3
	adds r1, r0, r1
	str r0, [sp, #4]
	adds r0, r7, #1
	str r0, [sp]
	ldrb r1, [r1]
	cmp r5, r1
	bge _08050E3E
	ldr r1, _08050DBC
	mov sl, r1
	ldr r0, _08050DC0
	mov sb, r0
	ldr r0, _08050DC4
	adds r6, r7, r0
_08050D62:
	movs r0, #0
	mov r1, sl
	strh r0, [r1]
	ldr r1, _08050DC8
	cmp r5, #0
	bne _08050DD8
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08050DD8
	movs r0, #8
	mov r1, sl
	strh r0, [r1]
	bl sub_8008220
	bl LoadBlendingRegs
	bl LoadOam
	bl LoadPalettes
	ldr r0, _08050DCC
	mov r1, sb
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldrb r3, [r6]
	mov r0, sb
	movs r1, #0
	ldr r2, _08050DD0
	bl sub_8044EC8
	ldrb r3, [r6]
	mov r0, sb
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _08050DD4
	bl sub_8044EC8
	b _08050E20
	.align 2, 0
_08050DB8: .4byte 0x08FC4618
_08050DBC: .4byte gBLDY
_08050DC0: .4byte 0x02000000
_08050DC4: .4byte 0x08E0E20E
_08050DC8: .4byte 0x08E0E2C4
_08050DCC: .4byte 0x02018800
_08050DD0: .4byte 0x0000016F
_08050DD4: .4byte 0x000001FF
_08050DD8:
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _08050E10
	movs r0, #2
	add r8, r0
	mov r1, r8
	cmp r1, #0x10
	ble _08050DF2
	movs r0, #0x10
	mov r8, r0
_08050DF2:
	mov r0, r8
	ldr r1, _08050E0C
	strh r0, [r1]
	bl sub_8008220
	bl LoadBlendingRegs
	bl LoadOam
	bl LoadPalettes
	b _08050E20
	.align 2, 0
_08050E0C: .4byte gBLDY
_08050E10:
	bl sub_8008220
	bl LoadBlendingRegs
	bl LoadOam
	bl LoadPalettes
_08050E20:
	adds r5, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldr r1, _08050EC8
	adds r0, r0, r1
	ldrb r1, [r4, #1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [sp, #4]
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r5, r0
	blt _08050D62
_08050E3E:
	ldr r7, [sp]
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldr r1, _08050EC8
	adds r0, r0, r1
	ldrb r2, [r4, #1]
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r0, r0, r1
_08050E56:
	ldrb r0, [r0]
	cmp r0, #0
	beq _08050E5E
	b _08050D28
_08050E5E:
	movs r4, #1
	ldr r5, _08050ECC
_08050E62:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08050E62
	bl sub_8008220
	bl LoadOam
	ldr r1, _08050ED0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08050EB6
	ldr r5, _08050ED4
	adds r4, r1, #0
_08050E8A:
	ldr r0, _08050ED8
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _08050EDC
	bl sub_8044F80
	bl sub_8008220
	bl LoadPalettes
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08050E8A
_08050EB6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050EC8: .4byte 0x08FC4618
_08050ECC: .4byte 0x02018400
_08050ED0: .4byte 0x08E0E091
_08050ED4: .4byte 0x02000000
_08050ED8: .4byte 0x02018800
_08050EDC: .4byte 0x000001FF

	THUMB_FUNC_START sub_8050EE0
sub_8050EE0: @ 0x08050EE0
	push {r4, r5, r6, lr}
	movs r2, #0
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	ldrb r3, [r0, #6]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r3
	strb r1, [r0, #6]
	ldr r0, _08050FDC
	strh r2, [r0]
	ldr r4, _08050FE0
	ldr r1, _08050FE4
	adds r0, r4, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldr r1, _08050FE8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08050F3E
	adds r5, r4, #0
	adds r4, r1, #0
_08050F12:
	ldr r0, _08050FE4
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _08050FEC
	bl sub_8044EC8
	bl sub_8008220
	bl LoadPalettes
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08050F12
_08050F3E:
	movs r5, #0
	ldr r6, _08050FF0
_08050F42:
	ldr r0, _08050FF4
	lsls r4, r5, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r1, _08050FF8
	adds r1, r5, r1
	ldrb r1, [r1]
	adds r1, r1, r6
	bl LZ77UnCompWram
	ldr r0, _08050FFC
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r2, _08051000
	lsls r1, r5, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r6
	movs r2, #0x80
	lsls r2, r2, #3
	bl CpuSet
	ldr r0, _08051004
	adds r4, r4, r0
	ldr r0, [r4]
	ldr r1, _08051008
	adds r1, r5, r1
	ldrb r1, [r1]
	lsls r1, r1, #1
	ldr r4, _08050FE0
	adds r1, r1, r4
	movs r2, #0xf0
	bl CpuSet
	bl sub_8008220
	bl sub_804EC4C
	movs r0, #0x80
	bl sub_805787C
	adds r5, #1
	cmp r5, #5
	ble _08050F42
	ldr r1, _0805100C
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08050FD6
	adds r5, r4, #0
	adds r4, r1, #0
_08050FAA:
	ldr r0, _08050FE4
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _08050FEC
	bl sub_8044EC8
	bl sub_8008220
	bl LoadPalettes
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08050FAA
_08050FD6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08050FDC: .4byte gBLDCNT
_08050FE0: .4byte 0x02000000
_08050FE4: .4byte 0x02018800
_08050FE8: .4byte 0x08E0E2FF
_08050FEC: .4byte 0x000001FF
_08050FF0: .4byte 0x02000400
_08050FF4: .4byte 0x08E0E324
_08050FF8: .4byte 0x08E0E36C
_08050FFC: .4byte 0x08E0E33C
_08051000: .4byte 0x08E0E372
_08051004: .4byte 0x08E0E354
_08051008: .4byte 0x08E0E37E
_0805100C: .4byte 0x08E0E311

	THUMB_FUNC_START sub_8051010
sub_8051010: @ 0x08051010
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #1
	ldr r6, _08051120
_08051018:
	lsls r0, r4, #3
	adds r0, r0, r6
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08051018
	bl sub_8008220
	bl LoadOam
	movs r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	ldrb r1, [r5, #6]
	subs r0, #4
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #6]
	ldr r1, _08051124
	movs r2, #0xbc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08051128
	movs r0, #0x10
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_804FA28
	ldr r4, _0805112C
	ldr r1, _08051130
	adds r0, r4, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	ldr r1, _08051134
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080510B2
	adds r6, r4, #0
	adds r4, r1, #0
_08051076:
	ldr r0, _08051130
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r6, #0
	movs r1, #0
	ldr r2, _08051138
	bl sub_8044F80
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r6, #0
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _0805113C
	bl sub_8044F80
	bl sub_8008220
	bl LoadPalettes
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08051076
_080510B2:
	ldrb r1, [r5, #1]
	adds r0, r5, #0
	movs r2, #0
	bl sub_804F850
	bl sub_8008220
	bl LoadOam
	movs r0, #8
	bl sub_805787C
	ldr r1, _08051140
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080510FC
	ldr r5, _08051128
	adds r4, r1, #0
_080510D8:
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r5]
	bl sub_8008220
	bl LoadBlendingRegs
	movs r0, #0
	bl sub_805787C
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080510D8
_080510FC:
	movs r4, #1
	ldr r5, _08051120
_08051100:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08051100
	bl sub_8008220
	bl LoadOam
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08051120: .4byte 0x02018400
_08051124: .4byte gBLDCNT
_08051128: .4byte gBLDALPHA
_0805112C: .4byte 0x02000000
_08051130: .4byte 0x02018800
_08051134: .4byte 0x08E0E099
_08051138: .4byte 0x0000016F
_0805113C: .4byte 0x000001FF
_08051140: .4byte 0x08E0E0A2

	THUMB_FUNC_START sub_8051144
sub_8051144: @ 0x08051144
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	ldrb r1, [r4, #6]
	subs r0, #4
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #6]
	ldr r1, _080511DC
	movs r2, #0xbc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r5, _080511E0
	movs r0, #0x10
	strh r0, [r5]
	adds r0, r4, #0
	bl sub_804FA28
	ldrb r1, [r4, #1]
	adds r0, r4, #0
	movs r2, #0
	bl sub_804F850
	bl sub_8008220
	bl LoadOam
	movs r0, #8
	bl sub_805787C
	ldr r1, _080511E4
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080511B8
	adds r4, r1, #0
_08051194:
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r5]
	bl sub_8008220
	bl LoadBlendingRegs
	movs r0, #0
	bl sub_805787C
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08051194
_080511B8:
	movs r4, #1
	ldr r5, _080511E8
_080511BC:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _080511BC
	bl sub_8008220
	bl LoadOam
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080511DC: .4byte gBLDCNT
_080511E0: .4byte gBLDALPHA
_080511E4: .4byte 0x08E0E0A2
_080511E8: .4byte 0x02018400

	THUMB_FUNC_START sub_80511EC
sub_80511EC: @ 0x080511EC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	ldrb r1, [r4, #6]
	subs r0, #4
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #6]
	ldr r1, _080512C0
	movs r2, #0xbc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r5, _080512C4
	movs r0, #0x10
	strh r0, [r5]
	adds r0, r4, #0
	bl sub_804FA28
	ldrb r1, [r4, #1]
	adds r0, r4, #0
	movs r2, #0
	bl sub_804F850
	bl sub_8008220
	bl LoadOam
	movs r0, #0x20
	bl sub_805787C
	ldr r1, _080512C8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08051260
	adds r4, r1, #0
_0805123C:
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r5]
	bl sub_8008220
	bl LoadBlendingRegs
	movs r0, #1
	bl sub_805787C
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805123C
_08051260:
	movs r4, #1
	ldr r5, _080512CC
_08051264:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	bls _08051264
	bl sub_8008220
	bl LoadOam
	ldr r1, _080512D0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080512B8
	ldr r5, _080512D4
	adds r4, r1, #0
_0805128C:
	ldr r0, _080512D8
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _080512DC
	bl sub_8044F80
	bl sub_8008220
	bl LoadPalettes
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805128C
_080512B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080512C0: .4byte gBLDCNT
_080512C4: .4byte gBLDALPHA
_080512C8: .4byte 0x08E0E0A2
_080512CC: .4byte 0x02018400
_080512D0: .4byte 0x08E0E091
_080512D4: .4byte 0x02000000
_080512D8: .4byte 0x02018800
_080512DC: .4byte 0x000001FF

	THUMB_FUNC_START sub_80512E0
sub_80512E0: @ 0x080512E0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r1, _08051310
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r6
	str r0, [sp]
	ldr r1, _08051314
	mov r0, sp
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #0x10
	bls _08051306
	b _08051518
_08051306:
	lsls r0, r0, #2
	ldr r1, _08051318
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08051310: .4byte 0xFFFFFF00
_08051314: .4byte 0x08E0E384
_08051318: .4byte 0x0805131C
_0805131C: @ jump table
	.4byte _08051360 @ case 0
	.4byte _0805137A @ case 1
	.4byte _08051390 @ case 2
	.4byte _080513A6 @ case 3
	.4byte _080513BE @ case 4
	.4byte _080513CC @ case 5
	.4byte _080513E2 @ case 6
	.4byte _080513F8 @ case 7
	.4byte _0805140E @ case 8
	.4byte _08051428 @ case 9
	.4byte _08051452 @ case 10
	.4byte _08051468 @ case 11
	.4byte _0805147E @ case 12
	.4byte _08051494 @ case 13
	.4byte _080514A2 @ case 14
	.4byte _080514D6 @ case 15
	.4byte _080514F2 @ case 16
_08051360:
	adds r0, r2, #0
	adds r0, #0x86
	movs r5, #0
	strb r5, [r0]
	adds r0, r2, #0
	bl sub_8053404
	mov r4, sp
	mov r0, sp
	bl sub_804FB04
	adds r1, r6, #1
	b _08051446
_0805137A:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_8050028
	b _08051518
_08051390:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_804FE78
	b _08051518
_080513A6:
	adds r0, r2, #0
	adds r0, #0x86
	movs r4, #0
	strb r4, [r0]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	strb r4, [r0, #1]
	bl sub_8050114
	b _08051518
_080513BE:
	adds r0, r2, #0
	adds r0, #0x86
	movs r1, #0
	strb r1, [r0]
	mov r0, sp
	strb r1, [r0, #1]
	b _080514E4
_080513CC:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_8050978
	b _08051518
_080513E2:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_8050748
	b _08051518
_080513F8:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_8050584
	b _08051518
_0805140E:
	adds r0, r2, #0
	adds r0, #0x86
	movs r1, #0
	strb r1, [r0]
	mov r0, sp
	strb r1, [r0, #1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_8050CC0
	b _08051518
_08051428:
	adds r0, r2, #0
	adds r0, #0x86
	movs r5, #0
	strb r5, [r0]
	movs r1, #4
	mov r0, sp
	strb r1, [r0]
	adds r0, r2, #0
	bl sub_8053404
	mov r4, sp
	mov r0, sp
	bl sub_804FB04
	movs r1, #0x29
_08051446:
	mov r0, sp
	strb r1, [r0]
	strb r5, [r4, #1]
	bl sub_804FC84
	b _08051518
_08051452:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_80503D8
	b _08051518
_08051468:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_8050B50
	b _08051518
_0805147E:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_8050EE0
	b _08051518
_08051494:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	mov r1, sp
	movs r0, #1
	b _080514E2
_080514A2:
	adds r0, r2, #0
	adds r0, #0x86
	movs r5, #0
	strb r5, [r0]
	adds r0, r2, #0
	bl sub_8053404
	mov r4, sp
	movs r6, #1
	strb r6, [r4, #1]
	mov r0, sp
	bl sub_8051010
	movs r1, #0x2d
	mov r0, sp
	strb r1, [r0]
	strb r5, [r4, #1]
	bl sub_8051144
	movs r1, #0x2e
	mov r0, sp
	strb r1, [r0]
	strb r6, [r4, #1]
	bl sub_80511EC
	b _08051518
_080514D6:
	adds r1, r2, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	mov r1, sp
	movs r0, #2
_080514E2:
	strb r0, [r1, #1]
_080514E4:
	adds r0, r2, #0
	bl sub_8053404
	mov r0, sp
	bl sub_805022C
	b _08051518
_080514F2:
	adds r0, r2, #0
	adds r0, #0x86
	movs r5, #0
	strb r5, [r0]
	adds r0, r2, #0
	bl sub_8053404
	mov r4, sp
	movs r0, #1
	strb r0, [r4, #1]
	mov r0, sp
	bl sub_8051010
	movs r1, #0x16
	mov r0, sp
	strb r1, [r0]
	strb r5, [r4, #1]
	bl sub_80511EC
_08051518:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x09, 0x04, 0xE0, 0x22, 0x52, 0x00, 0x09, 0x0C, 0x40, 0x88, 0x09, 0x18, 0x07, 0x48, 0x81, 0x42
	.byte 0x03, 0xDD, 0x3F, 0x32, 0x10, 0x1C, 0x0A, 0x1C, 0x02, 0x40, 0xF0, 0x29, 0x03, 0xDC, 0x04, 0x4A
	.byte 0x10, 0x1C, 0x02, 0x1C, 0x0A, 0x40, 0x10, 0x1C, 0x70, 0x47, 0x00, 0x00, 0xBF, 0x01, 0x00, 0x00
	.byte 0xFF, 0x01, 0x00, 0x00, 0x10, 0xB5, 0x03, 0x1C, 0xC0, 0x22, 0x09, 0x04, 0x09, 0x14, 0x04, 0x24
	.byte 0x18, 0x5F, 0x0C, 0x18, 0xBF, 0x2C, 0x03, 0xDD, 0x98, 0x88, 0x0A, 0x18, 0xFF, 0x20, 0x02, 0x40
	.byte 0xA0, 0x2C, 0x03, 0xDC, 0x98, 0x88, 0x0A, 0x18, 0xFF, 0x20, 0x02, 0x40, 0x10, 0x1C, 0x10, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_8051584
sub_8051584: @ 0x08051584
	push {lr}
	ldr r0, _08051598
	ldr r1, _0805159C
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08051598: .4byte 0x02000000
_0805159C: .4byte 0x02018800

	THUMB_FUNC_START sub_80515A0
sub_80515A0: @ 0x080515A0
	push {lr}
	ldr r0, _080515B4
	ldr r1, _080515B8
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_080515B4: .4byte 0x02018800
_080515B8: .4byte 0x02000000
	.byte 0x00, 0xB5, 0x04, 0x48
	.byte 0x04, 0x49, 0x80, 0x22, 0x92, 0x00, 0x07, 0xF0, 0xC5, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x00, 0x84, 0x01, 0x02, 0x00, 0x8C, 0x01, 0x02, 0x00, 0xB5, 0x04, 0x48, 0x04, 0x49, 0x80, 0x22
	.byte 0x92, 0x00, 0x07, 0xF0, 0xB7, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x8C, 0x01, 0x02
	.byte 0x00, 0x84, 0x01, 0x02, 0x30, 0xB5, 0x10, 0x49, 0x00, 0x20, 0x08, 0x56, 0x00, 0x28, 0x17, 0xDB
	.byte 0x0E, 0x4D, 0x0C, 0x1C, 0x0E, 0x48, 0x29, 0x1C, 0x80, 0x22, 0x92, 0x00, 0x07, 0xF0, 0xA2, 0xF8
	.byte 0x00, 0x23, 0xE3, 0x56, 0x28, 0x1C, 0x00, 0x21, 0x0A, 0x4A, 0xF3, 0xF7, 0xB1, 0xFC, 0xB6, 0xF7
	.byte 0xFF, 0xFD, 0xF3, 0xF7, 0x5D, 0xFF, 0x01, 0x34, 0x00, 0x20, 0x20, 0x56, 0x00, 0x28, 0xE9, 0xDA
	.byte 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x91, 0xE0, 0xE0, 0x08, 0x00, 0x00, 0x00, 0x02
	.byte 0x00, 0x88, 0x01, 0x02, 0xFF, 0x01, 0x00, 0x00, 0x30, 0xB5, 0x14, 0x49, 0x00, 0x20, 0x08, 0x56
	.byte 0x00, 0x28, 0x1F, 0xDB, 0x12, 0x4D, 0x0C, 0x1C, 0x12, 0x48, 0x29, 0x1C, 0x80, 0x22, 0x92, 0x00
	.byte 0x07, 0xF0, 0x78, 0xF8, 0x00, 0x23, 0xE3, 0x56, 0x28, 0x1C, 0x00, 0x21, 0x0E, 0x4A, 0xF3, 0xF7
	.byte 0x87, 0xFC, 0x00, 0x23, 0xE3, 0x56, 0x28, 0x1C, 0xE0, 0x21, 0x49, 0x00, 0x0B, 0x4A, 0xF3, 0xF7
	.byte 0x7F, 0xFC, 0xB6, 0xF7, 0xCD, 0xFD, 0xF3, 0xF7, 0x2B, 0xFF, 0x01, 0x34, 0x00, 0x20, 0x20, 0x56
	.byte 0x00, 0x28, 0xE1, 0xDA, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x99, 0xE0, 0xE0, 0x08
	.byte 0x00, 0x00, 0x00, 0x02, 0x00, 0x88, 0x01, 0x02, 0x6F, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00
	.byte 0x70, 0xB5, 0x09, 0x06, 0x0D, 0x0E, 0x0E, 0x49, 0x00, 0x20, 0x08, 0x56, 0x00, 0x28, 0x13, 0xDB
	.byte 0x0C, 0x4E, 0x0C, 0x1C, 0x00, 0x20, 0x20, 0x56, 0x00, 0x02, 0x10, 0x21, 0x08, 0x43, 0x30, 0x80
	.byte 0xB6, 0xF7, 0xA6, 0xFD, 0xF3, 0xF7, 0xE2, 0xFE, 0x28, 0x1C, 0x06, 0xF0, 0xCF, 0xF8, 0x01, 0x34
	.byte 0x00, 0x20, 0x20, 0x56, 0x00, 0x28, 0xED, 0xDA, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xA2, 0xE0, 0xE0, 0x08, 0x38, 0x42, 0x02, 0x02, 0x30, 0xB5, 0x01, 0x24, 0x06, 0x4D, 0xE0, 0x00
	.byte 0x40, 0x19, 0xEF, 0xF7, 0x73, 0xFD, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x51, 0x2C, 0xF6, 0xD9
	.byte 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x84, 0x01, 0x02, 0x30, 0xB5, 0x52, 0x24
	.byte 0x06, 0x4D, 0xE0, 0x00, 0x40, 0x19, 0xEF, 0xF7, 0x61, 0xFD, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E
	.byte 0x60, 0x2C, 0xF6, 0xD9, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x84, 0x01, 0x02
	.byte 0x30, 0xB5, 0x01, 0x24, 0x08, 0x4D, 0xE0, 0x00, 0x40, 0x19, 0xEF, 0xF7, 0x4F, 0xFD, 0x60, 0x1C
	.byte 0x00, 0x06, 0x04, 0x0E, 0x51, 0x2C, 0xF6, 0xD9, 0xB6, 0xF7, 0x62, 0xFD, 0xF3, 0xF7, 0xB4, 0xFE
	.byte 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x84, 0x01, 0x02, 0xF0, 0xB5, 0x57, 0x46
	.byte 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x81, 0xB0, 0x06, 0x1C, 0x8A, 0x46, 0x00, 0x23, 0x24, 0x4A
	.byte 0x30, 0x78, 0x80, 0x00, 0x80, 0x18, 0x00, 0x68, 0x89, 0x00, 0x08, 0x18, 0x00, 0x68, 0x00, 0x78
	.byte 0x00, 0x28, 0x35, 0xD0, 0x0F, 0x1C, 0x30, 0x1C, 0x51, 0x46, 0x1A, 0x1C, 0x00, 0x93, 0xFE, 0xF7
	.byte 0x57, 0xF8, 0x00, 0x24, 0x30, 0x78, 0x80, 0x00, 0x19, 0x49, 0x40, 0x18, 0x00, 0x68, 0x38, 0x18
	.byte 0x01, 0x68, 0x00, 0x9B, 0xD8, 0x00, 0x41, 0x18, 0x05, 0x1C, 0x01, 0x33, 0x98, 0x46, 0x09, 0x78
	.byte 0x8C, 0x42, 0x10, 0xDA, 0x12, 0x48, 0x81, 0x46, 0xB6, 0xF7, 0x2A, 0xFD, 0xF3, 0xF7, 0x7C, 0xFE
	.byte 0x01, 0x34, 0x30, 0x78, 0x80, 0x00, 0x48, 0x44, 0x00, 0x68, 0x38, 0x18, 0x00, 0x68, 0x28, 0x18
	.byte 0x00, 0x78, 0x84, 0x42, 0xF0, 0xDB, 0x43, 0x46, 0x30, 0x78, 0x80, 0x00, 0x08, 0x49, 0x40, 0x18
	.byte 0x00, 0x68, 0x38, 0x18, 0x01, 0x68, 0xD8, 0x00, 0x40, 0x18, 0x00, 0x78, 0x00, 0x28, 0xCA, 0xD1
	.byte 0x01, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x18, 0x46, 0xFC, 0x08, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x82, 0xB0
	.byte 0x05, 0x1C, 0x00, 0x20, 0x00, 0x90, 0x03, 0x4B, 0x28, 0x78, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68
	.byte 0x4B, 0xE0, 0x00, 0x00, 0x18, 0x46, 0xFC, 0x08, 0x00, 0x27, 0x2A, 0x78, 0x90, 0x00, 0xC0, 0x18
	.byte 0x00, 0x68, 0x00, 0x9B, 0x99, 0x00, 0x08, 0x18, 0x00, 0x68, 0x00, 0x78, 0x88, 0x46, 0x01, 0x33
	.byte 0x01, 0x93, 0x00, 0x28, 0x30, 0xD0, 0x22, 0x48, 0x82, 0x46, 0x28, 0x1C, 0x00, 0x99, 0x3A, 0x1C
	.byte 0xFD, 0xF7, 0xF6, 0xFF, 0x00, 0x24, 0x28, 0x78, 0x80, 0x00, 0x50, 0x44, 0x00, 0x68, 0x40, 0x44
	.byte 0x01, 0x68, 0xF8, 0x00, 0x41, 0x18, 0x06, 0x1C, 0x01, 0x37, 0x09, 0x78, 0x8C, 0x42, 0x10, 0xDA
	.byte 0x17, 0x49, 0x89, 0x46, 0xB6, 0xF7, 0xCC, 0xFC, 0xF3, 0xF7, 0x1E, 0xFE, 0x01, 0x34, 0x28, 0x78
	.byte 0x80, 0x00, 0x48, 0x44, 0x00, 0x68, 0x40, 0x44, 0x00, 0x68, 0x30, 0x18, 0x00, 0x78, 0x84, 0x42
	.byte 0xF0, 0xDB, 0x2A, 0x78, 0x90, 0x00, 0x50, 0x44, 0x00, 0x68, 0x40, 0x44, 0x01, 0x68, 0xF8, 0x00
	.byte 0x40, 0x18, 0x00, 0x78, 0x00, 0x28, 0xD0, 0xD1, 0x01, 0x9B, 0x00, 0x93, 0x08, 0x4B, 0x90, 0x00
	.byte 0xC0, 0x18, 0x01, 0x68, 0x00, 0x9A, 0x90, 0x00, 0x40, 0x18, 0x00, 0x68, 0x00, 0x28, 0xB3, 0xD1
	.byte 0x02, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x18, 0x46, 0xFC, 0x08, 0x30, 0xB5, 0x0D, 0x4A, 0x51, 0x78, 0x0D, 0x23, 0x5B, 0x42, 0x18, 0x1C
	.byte 0x08, 0x40, 0x04, 0x21, 0x08, 0x43, 0x50, 0x70, 0x70, 0x24, 0x1D, 0x1C, 0x04, 0x23, 0x08, 0x48
	.byte 0x12, 0x18, 0x11, 0x78, 0x28, 0x1C, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0x20, 0x32, 0x01, 0x34
	.byte 0x7F, 0x2C, 0xF6, 0xDD, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x84, 0x01, 0x02
	.byte 0x01, 0x0E, 0x00, 0x00, 0x10, 0xB5, 0x0A, 0x49, 0x4A, 0x78, 0x0D, 0x23, 0x5B, 0x42, 0x18, 0x1C
	.byte 0x10, 0x40, 0x48, 0x70, 0x70, 0x24, 0x07, 0x48, 0x0A, 0x18, 0x11, 0x78, 0x18, 0x1C, 0x08, 0x40
	.byte 0x10, 0x70, 0x20, 0x32, 0x01, 0x34, 0x7F, 0x2C, 0xF7, 0xDD, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0x84, 0x01, 0x02, 0x01, 0x0E, 0x00, 0x00

	THUMB_FUNC_START sub_8051958
sub_8051958: @ 0x08051958
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	movs r0, #0
	mov r8, r0
	ldr r1, _080519B0
	ldr r0, _080519B4
	lsrs r2, r2, #0x17
	adds r6, r2, r0
	adds r5, r2, r1
	adds r4, r2, #0
_08051984:
	ldr r0, _080519B0
	adds r0, r4, r0
	ldrb r0, [r0]
	add r0, sb
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _080519B4
	adds r0, r4, r0
	ldrb r0, [r0]
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, #0xdf
	bhi _080519AC
	cmp r1, #0x77
	bhi _080519AC
	cmp r0, #0xdf
	bhi _080519AC
	cmp r0, #0x4f
	bls _080519B8
_080519AC:
	movs r0, #0
	b _080519BA
	.align 2, 0
_080519B0: .4byte 0x08E0E3D4
_080519B4: .4byte 0x08E0E3EC
_080519B8:
	movs r0, #1
_080519BA:
	cmp r0, #0
	beq _08051A24
	ldrb r0, [r5]
	add r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r6]
	adds r1, r7, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r2, sl
	bl sub_8051DAC
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08051A24
	ldrb r2, [r5]
	add r2, sb
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r0, [r6]
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _08051A20
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	movs r0, #0x8f
	lsls r0, r0, #2
	adds r3, r3, r0
	ldr r0, [r3]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_8052174
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08051A24
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08051A36
	.align 2, 0
_08051A20: .4byte gOverworld
_08051A24:
	adds r6, #8
	adds r5, #8
	adds r4, #8
	movs r1, #1
	add r8, r1
	mov r0, r8
	cmp r0, #2
	ble _08051984
	movs r0, #0
_08051A36:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8051A44
sub_8051A44: @ 0x08051A44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r4, _08051AA0
	lsls r0, r5, #1
	mov r8, r0
	add r4, r8
	ldrh r0, [r4]
	strh r0, [r6]
	ldr r2, _08051AA4
	add r2, r8
	ldrh r0, [r2]
	strh r0, [r6, #2]
	ldr r1, _08051AA8
	lsls r0, r3, #5
	adds r7, r0, r1
	ldrb r0, [r4]
	ldrb r1, [r7, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2]
	ldrb r2, [r7, #0x16]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r5, #0
	bl sub_8051958
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	cmp r2, #1
	beq _08051AC2
	cmp r2, #1
	bgt _08051AAC
	cmp r2, #0
	beq _08051AB6
	b _08051B14
	.align 2, 0
_08051AA0: .4byte 0x08E0E3C4
_08051AA4: .4byte 0x08E0E3CC
_08051AA8: .4byte gOverworld
_08051AAC:
	cmp r2, #2
	beq _08051ACA
	cmp r2, #3
	beq _08051AF0
	b _08051B14
_08051AB6:
	adds r0, r7, #0
	adds r0, #0x28
	strb r2, [r0]
	strh r2, [r6]
	strh r2, [r6, #2]
	b _08051B14
_08051AC2:
	adds r0, r7, #0
	adds r0, #0x28
	strb r2, [r0]
	b _08051B14
_08051ACA:
	adds r1, r7, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08051AE8
	adds r0, #8
	add r0, r8
	ldrh r0, [r0]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	ldr r0, _08051AEC
	adds r0, #8
	b _08051B0A
	.align 2, 0
_08051AE8: .4byte 0x08E0E3D4
_08051AEC: .4byte 0x08E0E3EC
_08051AF0:
	adds r1, r7, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08051B20
	adds r0, #0x10
	add r0, r8
	ldrh r0, [r0]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	ldr r0, _08051B24
	adds r0, #0x10
_08051B0A:
	add r0, r8
	ldrh r0, [r0]
	ldrh r2, [r6, #2]
	adds r0, r0, r2
	strh r0, [r6, #2]
_08051B14:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051B20: .4byte 0x08E0E3D4
_08051B24: .4byte 0x08E0E3EC

	THUMB_FUNC_START sub_8051B28
sub_8051B28: @ 0x08051B28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	movs r3, #0
	ldr r1, _08051B84
	ldr r0, _08051B88
	lsrs r2, r2, #0x17
	adds r6, r2, r0
	adds r5, r2, r1
	adds r4, r2, #0
	ldr r0, _08051B8C
	mov sl, r0
_08051B58:
	ldr r0, _08051B84
	adds r0, r4, r0
	ldrb r0, [r0]
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08051B88
	adds r0, r4, r0
	ldrb r0, [r0]
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, #0xdf
	bhi _08051B80
	cmp r1, #0x77
	bhi _08051B80
	cmp r0, #0xdf
	bhi _08051B80
	cmp r0, #0x4f
	bls _08051B90
_08051B80:
	movs r0, #0
	b _08051B92
	.align 2, 0
_08051B84: .4byte 0x08E0E428
_08051B88: .4byte 0x08E0E45E
_08051B8C: .4byte 0x020244AC
_08051B90:
	movs r0, #1
_08051B92:
	cmp r0, #0
	beq _08051BF4
	ldrb r0, [r5]
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r6]
	adds r1, r7, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r2, sb
	str r3, [sp]
	bl sub_8051DAC
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	ldr r3, [sp]
	cmp r0, r1
	bne _08051BF4
	ldrb r2, [r5]
	add r2, r8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r0, [r6]
	adds r0, r7, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	mov r2, sl
	ldr r0, [r2]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_8052174
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, [sp]
	cmp r0, #1
	beq _08051BF4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08051C02
_08051BF4:
	adds r6, #0x12
	adds r5, #0x12
	adds r4, #0x12
	adds r3, #1
	cmp r3, #2
	ble _08051B58
	movs r0, #0
_08051C02:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8051C14
sub_8051C14: @ 0x08051C14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r4, _08051C70
	lsls r0, r5, #1
	mov r8, r0
	add r4, r8
	ldrh r0, [r4]
	strh r0, [r7]
	ldr r2, _08051C74
	add r2, r8
	ldrh r0, [r2]
	strh r0, [r7, #2]
	ldr r1, _08051C78
	lsls r0, r3, #5
	adds r6, r0, r1
	ldrb r0, [r4]
	ldrb r1, [r6, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2]
	ldrb r2, [r6, #0x16]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r5, #0
	bl sub_8051B28
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	cmp r2, #1
	beq _08051C92
	cmp r2, #1
	bgt _08051C7C
	cmp r2, #0
	beq _08051C86
	b _08051D0A
	.align 2, 0
_08051C70: .4byte 0x08E0E404
_08051C74: .4byte 0x08E0E416
_08051C78: .4byte gOverworld
_08051C7C:
	cmp r2, #2
	beq _08051CA8
	cmp r2, #3
	beq _08051CDC
	b _08051D0A
_08051C86:
	adds r0, r6, #0
	adds r0, #0x28
	strb r2, [r0]
	strh r2, [r7]
	strh r2, [r7, #2]
	b _08051D0A
_08051C92:
	adds r0, r6, #0
	adds r0, #0x28
	strb r2, [r0]
	ldr r0, _08051CA4
	add r0, r8
	ldrh r0, [r0]
	strb r0, [r6, #0x12]
	b _08051D0A
	.align 2, 0
_08051CA4: .4byte 0x08E0E494
_08051CA8:
	adds r1, r6, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08051CD0
	adds r0, #0x12
	add r0, r8
	ldrh r0, [r0]
	strb r0, [r6, #0x12]
	ldr r0, _08051CD4
	adds r0, #0x12
	add r0, r8
	ldrh r0, [r0]
	ldrh r1, [r7]
	adds r0, r0, r1
	strh r0, [r7]
	ldr r0, _08051CD8
	adds r0, #0x12
	b _08051D00
	.align 2, 0
_08051CD0: .4byte 0x08E0E494
_08051CD4: .4byte 0x08E0E428
_08051CD8: .4byte 0x08E0E45E
_08051CDC:
	adds r1, r6, #0
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08051D14
	adds r0, #0x24
	add r0, r8
	ldrh r0, [r0]
	strb r0, [r6, #0x12]
	ldr r0, _08051D18
	adds r0, #0x24
	add r0, r8
	ldrh r0, [r0]
	ldrh r1, [r7]
	adds r0, r0, r1
	strh r0, [r7]
	ldr r0, _08051D1C
	adds r0, #0x24
_08051D00:
	add r0, r8
	ldrh r0, [r0]
	ldrh r2, [r7, #2]
	adds r0, r0, r2
	strh r0, [r7, #2]
_08051D0A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051D14: .4byte 0x08E0E494
_08051D18: .4byte 0x08E0E428
_08051D1C: .4byte 0x08E0E45E

	THUMB_FUNC_START sub_8051D20
sub_8051D20: @ 0x08051D20
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0xc
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r2, sp
	ldr r0, _08051DA8
	mov r8, r0
	lsls r0, r6, #5
	mov sb, r0
	mov r5, sb
	add r5, r8
	ldrh r0, [r5, #0x14]
	strb r0, [r2]
	ldrh r0, [r5, #0x16]
	strb r0, [r2, #1]
	strb r1, [r5, #0x12]
	add r4, sp, #4
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_8051A44
	ldrh r2, [r4]
	ldrh r0, [r5, #0x14]
	adds r2, r2, r0
	strh r2, [r5, #0x14]
	ldrh r1, [r4, #2]
	ldrh r0, [r5, #0x16]
	adds r1, r1, r0
	strh r1, [r5, #0x16]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	movs r1, #0x8f
	lsls r1, r1, #2
	add r1, r8
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x1c]
	adds r0, r6, #0
	bl sub_8052088
	movs r0, #0x14
	add r8, r0
	add sb, r8
	mov r0, sp
	mov r1, sb
	bl sub_8052108
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08051DA8: .4byte gOverworld

	THUMB_FUNC_START sub_8051DAC
sub_8051DAC: @ 0x08051DAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r1, _08051DD4
	lsls r0, r6, #5
	adds r0, r0, r1
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08051DDE
	b _08051E38
	.align 2, 0
_08051DD4: .4byte gOverworld
_08051DD8:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	b _08051E3C
_08051DDE:
	movs r5, #0
	adds r7, r1, #0
_08051DE2:
	cmp r5, r6
	beq _08051E2E
	lsls r1, r5, #5
	adds r3, r1, r7
	adds r0, r3, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	adds r4, r1, #0
	cmp r0, #0
	blt _08051E2E
	movs r2, #0
	movs r1, #0x16
	ldrsh r0, [r3, r1]
	mov r3, ip
	subs r1, r3, r0
	cmp r1, #4
	bgt _08051E10
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08051E10
	movs r2, #1
_08051E10:
	adds r0, r4, r7
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	mov r3, r8
	subs r1, r3, r0
	cmp r1, #6
	bgt _08051E2A
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08051E2A
	movs r0, #2
	orrs r2, r0
_08051E2A:
	cmp r2, #3
	beq _08051DD8
_08051E2E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xe
	bls _08051DE2
_08051E38:
	movs r0, #1
	rsbs r0, r0, #0
_08051E3C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8051E48
sub_8051E48: @ 0x08051E48
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	movs r4, #1
	ldr r0, _08051E7C
	mov sb, r0
	movs r1, #4
	rsbs r1, r1, #0
	mov r8, r1
	movs r2, #2
	mov ip, r2
_08051E6C:
	cmp r5, #1
	beq _08051EBC
	cmp r5, #1
	bgt _08051E80
	cmp r5, #0
	beq _08051E8A
	b _08051F4C
	.align 2, 0
_08051E7C: .4byte gOverworld
_08051E80:
	cmp r5, #2
	beq _08051EE8
	cmp r5, #3
	beq _08051F14
	b _08051F4C
_08051E8A:
	lsls r0, r4, #5
	add r0, sb
	movs r2, #0x16
	ldrsh r1, [r0, r2]
	subs r1, r6, r1
	movs r2, #0x14
	ldrsh r0, [r0, r2]
	subs r3, r7, r0
	movs r2, #0
	cmp r1, #0
	bgt _08051EAA
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08051EAA
	movs r2, #1
_08051EAA:
	cmp r3, #4
	bgt _08051EB6
	cmp r3, r8
	blt _08051EB6
	mov r0, ip
	orrs r2, r0
_08051EB6:
	cmp r2, #3
	beq _08051F44
	b _08051F48
_08051EBC:
	lsls r0, r4, #5
	add r0, sb
	movs r2, #0x16
	ldrsh r1, [r0, r2]
	subs r3, r6, r1
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	subs r0, r7, r0
	movs r1, #0
	cmp r0, #8
	bgt _08051ED6
	mvns r0, r0
	lsrs r1, r0, #0x1f
_08051ED6:
	cmp r3, #4
	bgt _08051EE2
	cmp r3, r8
	blt _08051EE2
	mov r2, ip
	orrs r1, r2
_08051EE2:
	cmp r1, #3
	beq _08051F44
	b _08051F48
_08051EE8:
	lsls r0, r4, #5
	add r0, sb
	movs r2, #0x16
	ldrsh r1, [r0, r2]
	subs r1, r6, r1
	movs r2, #0x14
	ldrsh r0, [r0, r2]
	subs r3, r7, r0
	movs r0, #0
	cmp r1, #8
	bgt _08051F02
	mvns r0, r1
	lsrs r0, r0, #0x1f
_08051F02:
	cmp r3, #4
	bgt _08051F0E
	cmp r3, r8
	blt _08051F0E
	mov r1, ip
	orrs r0, r1
_08051F0E:
	cmp r0, #3
	beq _08051F44
	b _08051F48
_08051F14:
	lsls r0, r4, #5
	add r0, sb
	movs r2, #0x16
	ldrsh r1, [r0, r2]
	movs r2, #0x14
	ldrsh r0, [r0, r2]
	subs r3, r7, r0
	subs r1, r6, r1
	movs r2, #0
	cmp r3, #0
	bgt _08051F34
	movs r0, #8
	rsbs r0, r0, #0
	cmp r3, r0
	blt _08051F34
	movs r2, #1
_08051F34:
	cmp r1, #4
	bgt _08051F40
	cmp r1, r8
	blt _08051F40
	mov r0, ip
	orrs r2, r0
_08051F40:
	cmp r2, #3
	bne _08051F48
_08051F44:
	movs r0, #1
	b _08051F4A
_08051F48:
	movs r0, #0
_08051F4A:
	adds r3, r0, #0
_08051F4C:
	cmp r3, #0
	beq _08051F56
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	b _08051F64
_08051F56:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _08051E6C
	movs r0, #1
	rsbs r0, r0, #0
_08051F64:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8051F70
sub_8051F70: @ 0x08051F70
	push {r4, r5, r6, lr}
	ldr r6, _08051FEC
	ldr r0, _08051FF0
	ldrb r2, [r6, #0x12]
	lsls r3, r2, #1
	adds r0, r3, r0
	ldrb r0, [r0]
	ldrb r1, [r6, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08051FF4
	adds r3, r3, r1
	ldrb r1, [r3]
	ldrb r3, [r6, #0x16]
	adds r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_8051E48
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _08051FE4
	movs r0, #0xca
	bl PlayMusic
	lsls r5, r4, #5
	adds r2, r5, r6
	adds r0, r2, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08051FC4
	ldr r0, _08051FF8
	ldrb r1, [r6, #0x12]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #0x12]
_08051FC4:
	adds r0, r4, #0
	bl sub_804F19C
	adds r0, r4, #0
	bl sub_804DF5C
	bl sub_804EF10
	bl LoadObjVRAM
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r5, r0
	ldr r0, [r0]
	bl sub_805254C
_08051FE4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08051FEC: .4byte gOverworld
_08051FF0: .4byte 0x08E0E3C4
_08051FF4: .4byte 0x08E0E3CC
_08051FF8: .4byte 0x08E0E3C0

	THUMB_FUNC_START sub_8051FFC
sub_8051FFC: @ 0x08051FFC
	push {r4, r5, r6, lr}
	ldr r6, _08052078
	ldr r0, _0805207C
	ldrb r2, [r6, #0x12]
	lsls r3, r2, #1
	adds r0, r3, r0
	ldrb r0, [r0]
	ldrb r1, [r6, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08052080
	adds r3, r3, r1
	ldrb r1, [r3]
	ldrb r3, [r6, #0x16]
	adds r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_8051E48
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _08052070
	movs r0, #0xca
	bl PlayMusic
	lsls r5, r4, #5
	adds r2, r5, r6
	adds r0, r2, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08052050
	ldr r0, _08052084
	ldrb r1, [r6, #0x12]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #0x12]
_08052050:
	adds r0, r4, #0
	bl sub_804F19C
	adds r0, r4, #0
	bl sub_804DF5C
	bl sub_804EF10
	bl LoadObjVRAM
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r5, r0
	ldr r0, [r0]
	bl sub_805254C
_08052070:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08052078: .4byte gOverworld
_0805207C: .4byte 0x08E0E3C4
_08052080: .4byte 0x08E0E3CC
_08052084: .4byte 0x08E0E3C0

	THUMB_FUNC_START sub_8052088
sub_8052088: @ 0x08052088
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r2, _080520A8
	lsls r0, r3, #5
	adds r0, r0, r2
	ldrb r1, [r0, #0x14]
	ldrb r0, [r0, #0x16]
	adds r4, r2, #0
	cmp r1, #0x77
	bhi _080520A2
	cmp r0, #0x4f
	bls _080520AC
_080520A2:
	movs r0, #0
	b _080520AE
	.align 2, 0
_080520A8: .4byte gOverworld
_080520AC:
	movs r0, #1
_080520AE:
	cmp r0, #0
	beq _080520D8
	lsls r2, r3, #5
	adds r2, r2, r4
	ldrb r1, [r2, #0x16]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	ldrb r1, [r2, #0x14]
	adds r0, r0, r1
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0xfe
	ands r0, r1
	lsrs r0, r0, #1
	strh r0, [r2, #0x18]
_080520D8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80520E0
sub_80520E0: @ 0x080520E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _08052104
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, r2, r0
	movs r0, #0x8f
	lsls r0, r0, #2
	adds r3, r3, r0
	ldr r0, [r3]
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrh r0, [r2]
	bx lr
	.align 2, 0
_08052104: .4byte gOverworld

	THUMB_FUNC_START sub_8052108
sub_8052108: @ 0x08052108
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805216C
	mov r8, r0
	ldr r6, _08052170
	ldrh r1, [r6, #0x1c]
	bl sub_804EEAC
	mov r2, sp
	ldrb r0, [r5]
	ldrb r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #1
	strb r0, [r2]
	ldrb r0, [r5, #1]
	ldrb r1, [r4, #1]
	subs r0, r0, r1
	lsls r0, r0, #1
	strb r0, [r2, #1]
	movs r3, #0x18
	ldrsh r1, [r6, r3]
	subs r0, r0, r1
	strb r0, [r2, #1]
	ldrb r1, [r4]
	lsls r1, r1, #1
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldrb r2, [r4, #1]
	lsls r2, r2, #1
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	mov r0, r8
	bl sub_804EE84
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805216C: .4byte 0x02018400
_08052170: .4byte gOverworld

	THUMB_FUNC_START sub_8052174
sub_8052174: @ 0x08052174
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805218A
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805218E
_0805218A:
	movs r0, #0
	b _08052190
_0805218E:
	movs r0, #1
_08052190:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8052194
sub_8052194: @ 0x08052194
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080521A6
	movs r0, #1
	b _080521A8
_080521A6:
	movs r0, #0
_080521A8:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80521AC
sub_80521AC: @ 0x080521AC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _080521BE
	movs r0, #1
	b _080521CE
_080521BE:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080521CC
	movs r0, #0
	b _080521CE
_080521CC:
	movs r0, #2
_080521CE:
	bx lr

	THUMB_FUNC_START sub_80521D0
sub_80521D0: @ 0x080521D0
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	bl sub_8051D20
	bl sub_805236C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80521E8 @related to player running
sub_80521E8: @ 0x080521E8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	adds r1, r4, #0
	bl sub_8051D20
	bl sub_805236C
	ldr r5, _08052228
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08052214
	movs r0, #0
	adds r1, r4, #0
	bl sub_8051D20
	bl sub_805236C
_08052214:
	adds r1, r5, #0
	adds r1, #0x28
	ldrb r0, [r1]
	cmp r0, #1
	bne _08052222
	movs r0, #2
	strb r0, [r1]
_08052222:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052228: .4byte gOverworld

	THUMB_FUNC_START sub_805222C
sub_805222C: @ 0x0805222C
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r1, #0x77
	bhi _08052240
	cmp r2, #0x4f
	bhi _08052240
	movs r0, #1
	b _08052242
_08052240:
	movs r0, #0
_08052242:
	bx lr
	.byte 0x09, 0x06, 0x09, 0x0E, 0x12, 0x06, 0x12, 0x0E, 0x10, 0x1C, 0xDF, 0x29
	.byte 0x07, 0xD8, 0x77, 0x29, 0x05, 0xD8, 0xDF, 0x2A, 0x03, 0xD8, 0x4F, 0x28, 0x01, 0xD8, 0x01, 0x20
	.byte 0x00, 0xE0, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00, 0x02, 0x1C, 0x00, 0x23, 0x00, 0x2A, 0x04, 0xDC
	.byte 0x08, 0x20, 0x40, 0x42, 0x82, 0x42, 0x00, 0xDB, 0x01, 0x23, 0x04, 0x29, 0x05, 0xDC, 0x04, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x01, 0xDB, 0x02, 0x20, 0x03, 0x43, 0x03, 0x2B, 0x01, 0xD0, 0x00, 0x20
	.byte 0x00, 0xE0, 0x01, 0x20, 0x70, 0x47, 0x00, 0x00, 0x03, 0x1C, 0x00, 0x22, 0x08, 0x29, 0x01, 0xDC
	.byte 0xC8, 0x43, 0xC2, 0x0F, 0x04, 0x2B, 0x05, 0xDC, 0x04, 0x20, 0x40, 0x42, 0x83, 0x42, 0x01, 0xDB
	.byte 0x02, 0x20, 0x02, 0x43, 0x03, 0x2A, 0x01, 0xD0, 0x00, 0x20, 0x00, 0xE0, 0x01, 0x20, 0x70, 0x47
	.byte 0x00, 0x22, 0x08, 0x28, 0x01, 0xDC, 0xC0, 0x43, 0xC2, 0x0F, 0x04, 0x29, 0x05, 0xDC, 0x04, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x01, 0xDB, 0x02, 0x20, 0x02, 0x43, 0x03, 0x2A, 0x01, 0xD0, 0x00, 0x20
	.byte 0x00, 0xE0, 0x01, 0x20, 0x70, 0x47, 0x00, 0x00, 0x03, 0x1C, 0x00, 0x22, 0x00, 0x29, 0x04, 0xDC
	.byte 0x08, 0x20, 0x40, 0x42, 0x81, 0x42, 0x00, 0xDB, 0x01, 0x22, 0x04, 0x2B, 0x05, 0xDC, 0x04, 0x20
	.byte 0x40, 0x42, 0x83, 0x42, 0x01, 0xDB, 0x02, 0x20, 0x02, 0x43, 0x03, 0x2A, 0x01, 0xD0, 0x00, 0x20
	.byte 0x00, 0xE0, 0x01, 0x20, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8052318
sub_8052318: @ 0x08052318
	push {r4, lr}
	lsls r0, r0, #0x10
	ldr r4, _08052360
	movs r2, #0xe0
	lsls r2, r2, #0x13
	ands r2, r0
	lsrs r2, r2, #0x18
	strb r2, [r4, #6]
	ldr r1, _08052364
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r4, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r3, [r1]
	lsls r2, r2, #3
	adds r2, r3, r2
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r2, r2, r0
	ldrb r0, [r2]
	ldrb r1, [r4, #6]
	lsls r1, r1, #3
	adds r3, r3, r1
	ldr r2, _08052368
	adds r1, r3, r2
	ldrb r2, [r1]
	movs r1, #0
	bl sub_80523EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052360: .4byte gOverworld
_08052364: .4byte 0x08E19274
_08052368: .4byte 0x0000016D

	THUMB_FUNC_START sub_805236C
sub_805236C: @ 0x0805236C
	push {r4, r5, lr}
	ldr r4, _0805238C
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0x16]
	bl sub_80520E0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r5, #0
	bl sub_80521AC
	cmp r0, #1
	beq _08052390
	cmp r0, #2
	beq _080523A6
	b _080523E2
	.align 2, 0
_0805238C: .4byte gOverworld
_08052390:
	movs r0, #0x90
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_8052318
	b _080523E2
_080523A6:
	movs r1, #0x90
	lsls r1, r1, #2
	adds r2, r4, r1
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r2, #0xe0
	lsls r2, r2, #3
	ands r2, r5
	ldr r1, _080523E8
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r4, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	lsrs r2, r2, #5
	adds r0, r0, r2
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strh r0, [r4, #8]
	movs r0, #4
	strb r0, [r4, #6]
_080523E2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080523E8: .4byte 0x08E19274

	THUMB_FUNC_START sub_80523EC
sub_80523EC: @ 0x080523EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	ldr r2, _08052498
	movs r6, #0
	ldrh r0, [r2]
	ldr r1, _0805249C
	adds r4, r2, #0
	cmp r0, r1
	beq _0805247E
_08052418:
	lsls r0, r6, #1
	adds r1, r0, r6
	lsls r3, r1, #3
	adds r2, r3, r2
	ldrh r1, [r2]
	mov r8, r0
	adds r0, r6, #1
	mov sb, r0
	ldr r0, [sp]
	cmp r1, r0
	bne _0805246A
	ldrh r0, [r2, #2]
	cmp r0, sl
	bne _0805246A
	movs r7, #0
	ldr r1, _080524A0
	adds r4, r3, r1
	movs r5, #7
_0805243C:
	ldrh r0, [r4]
	ldr r1, _0805249C
	cmp r0, r1
	beq _0805244E
	bl sub_8055554
	cmp r0, #0
	bne _0805244E
	movs r7, #1
_0805244E:
	adds r4, #2
	subs r5, #1
	cmp r5, #0
	bge _0805243C
	ldr r4, _08052498
	cmp r7, #0
	bne _0805246A
	mov r1, r8
	adds r0, r1, r6
	lsls r0, r0, #3
	adds r1, r4, #0
	adds r0, r0, r1
	ldrh r0, [r0, #0x14]
	mov sl, r0
_0805246A:
	adds r2, r4, #0
	mov r6, sb
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r1, _0805249C
	cmp r0, r1
	bne _08052418
_0805247E:
	ldr r0, [sp]
	mov r1, sl
	ldr r2, [sp, #4]
	bl sub_804EF84
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052498: .4byte 0x08103314
_0805249C: .4byte 0x0000FFFF
_080524A0: .4byte 0x08103318

	THUMB_FUNC_START sub_80524A4
sub_80524A4: @ 0x080524A4
	lsls r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #0x13
	ands r2, r0
	ldr r3, _080524D0
	ldr r1, _080524D4
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r1, #2]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	lsrs r2, r2, #0x15
	adds r0, r0, r2
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080524D0: .4byte 0x08E19274
_080524D4: .4byte gOverworld
	.byte 0x00, 0x04, 0xE0, 0x22, 0xD2, 0x04, 0x02, 0x40
	.byte 0x09, 0x49, 0x0A, 0x4B, 0x18, 0x88, 0x80, 0x00, 0x40, 0x18, 0x59, 0x88, 0x00, 0x68, 0x89, 0x00
	.byte 0x09, 0x18, 0x08, 0x68, 0x52, 0x0D, 0x80, 0x18, 0xB6, 0x21, 0x49, 0x00, 0x40, 0x18, 0x00, 0x78
	.byte 0x18, 0x81, 0x04, 0x20, 0x98, 0x71, 0x70, 0x47, 0x74, 0x92, 0xE1, 0x08, 0x70, 0x42, 0x02, 0x02
	.byte 0x10, 0xB5, 0x0C, 0x49, 0x08, 0x1C, 0x28, 0x30, 0x04, 0x78, 0x01, 0x2C, 0x0E, 0xD1, 0x08, 0x7D
	.byte 0x89, 0x7D, 0xFF, 0xF7, 0xDD, 0xFD, 0x00, 0x04, 0x00, 0x0C, 0xFF, 0xF7, 0x23, 0xFE, 0x01, 0x1C
	.byte 0x00, 0x29, 0x03, 0xD1, 0x04, 0x48, 0x01, 0x70, 0x41, 0x70, 0x84, 0x70, 0x10, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x70, 0x42, 0x02, 0x02, 0x6C, 0x1D, 0x02, 0x02

	THUMB_FUNC_START sub_805254C
sub_805254C: @ 0x0805254C
	push {r4, r5, lr}
	sub sp, #0x88
	adds r1, r0, #0
	mov r0, sp
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	str r4, [sp, #4]
	strb r5, [r0, #0x1e]
	str r4, [sp, #8]
	strb r5, [r0, #0xc]
	movs r3, #1
	strb r3, [r0, #0xd]
	strh r4, [r0, #0x1c]
	add r0, sp, #0x78
	strb r5, [r0]
	add r0, sp, #0x74
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	mov r2, sp
	adds r2, #0x7a
	movs r0, #0x1d
	strh r0, [r2]
	add r0, sp, #0x7c
	strh r3, [r0]
	adds r2, #4
	movs r0, #3
	strh r0, [r2]
	add r0, sp, #0x80
	strh r3, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #4
	strb r5, [r0]
	mov r0, sp
	bl sub_8053274
	mov r0, sp
	bl sub_80532A8
	mov r0, sp
	bl sub_80526D0
	mov r0, sp
	strh r4, [r0]
	str r4, [sp, #4]
	str r4, [sp, #8]
	add sp, #0x88
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START DisplayPortrait
DisplayPortrait: @ 0x080525B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r4, _08052698
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #1
	bne _080525F4
	ldr r1, _0805269C
	ldr r2, _080526A0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _080526A4
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #3
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #1
	ldr r2, _080526A8
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F544
	ldr r1, _080526AC
	movs r0, #0xde
	strh r0, [r1]
	adds r1, #4
	movs r0, #7
	strh r0, [r1]
_080525F4:
	adds r0, r4, #0
	movs r1, #2
	bl sub_804EB04
	ldr r0, _080526B0
	bl sub_80081DC
	bl sub_8008220
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_804EB04
	ldr r0, _080526B4
	ldrh r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x84
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, _080526B8
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r2, _080526BC
	movs r0, #0
	ldr r6, _080526C0
	ldr r7, _080526C4
	ldr r1, _080526C8
	mov r8, r1
_0805263C:
	adds r3, r0, #1
	adds r1, r6, #1
_08052640:
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08052640
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r0, r3, #0
	cmp r0, #7
	ble _0805263C
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r0, [r0]
	mov r1, r8
	movs r2, #0x40
	bl CpuSet
	movs r0, #0xf3
	bl sub_8055554
	cmp r0, #0
	beq _08052684
	ldr r0, _080526CC
	add r0, r8
	movs r1, #0xe0
	lsls r1, r1, #1
	ldr r2, _080526C0
	bl sub_8044E50
_08052684:
	bl sub_8008220
	bl sub_804EC64
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052698: .4byte 0x02018400
_0805269C: .4byte 0x04000042
_080526A0: .4byte 0x000003ED
_080526A4: .4byte 0x0000739D
_080526A8: .4byte 0x00001D1E
_080526AC: .4byte 0x04000050
_080526B0: .4byte LoadOam
_080526B4: .4byte 0x08FA31C0
_080526B8: .4byte 0x02018800
_080526BC: .4byte 0x02012400
_080526C0: .4byte 0x000001FF
_080526C4: .4byte 0x08FA3360
_080526C8: .4byte 0x02000380
_080526CC: .4byte 0xFFFFFC80

	THUMB_FUNC_START sub_80526D0
sub_80526D0: @ 0x080526D0
	push {r4, r5, lr}
	adds r4, r0, #0
_080526D4:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08052704
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	bne _080526EA
	ldr r1, [r4, #0x14]
	b _080526EC
_080526EA:
	ldr r1, [r4, #0x18]
_080526EC:
	ldr r0, [r1]
	str r0, [r4, #0x10]
	ldr r0, [r1, #4]
	str r0, [r4, #0x14]
	ldr r0, [r1, #8]
	str r0, [r4, #0x18]
	movs r0, #0
	str r0, [r4, #4]
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	bl sub_8053388
_08052704:
	ldr r0, [r4, #0x10]
	ldrb r0, [r0]
	cmp r0, #0x5d
	beq _08052798
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805272E
	cmp r0, #1
	bgt _0805271C
	cmp r0, #0
	beq _08052726
	b _08052744
_0805271C:
	cmp r0, #2
	beq _08052736
	cmp r0, #3
	beq _0805273E
	b _08052744
_08052726:
	adds r0, r4, #0
	bl sub_80527E8
	b _08052744
_0805272E:
	adds r0, r4, #0
	bl sub_8052F60
	b _08052744
_08052736:
	adds r0, r4, #0
	bl sub_8053138
	b _08052744
_0805273E:
	adds r0, r4, #0
	bl sub_8053040
_08052744:
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805277C
	ldr r1, _08052784
	ldr r2, _08052788
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0805278C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #3
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #1
	ldr r2, _08052790
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F544
	ldr r1, _08052794
	movs r0, #0xde
	strh r0, [r1]
	adds r1, #4
	movs r0, #7
	strh r0, [r1]
_0805277C:
	bl sub_804F218
	b _080526D4
	.align 2, 0
_08052784: .4byte 0x04000042
_08052788: .4byte 0x000003ED
_0805278C: .4byte 0x0000739D
_08052790: .4byte 0x00001D1E
_08052794: .4byte 0x04000050
_08052798:
	ldr r0, _080527D8
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080527D2
	bl sub_804F770
	movs r1, #0
	strh r5, [r4]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	adds r0, r4, #0
	bl DisplayPortrait
	ldr r1, _080527DC
	ldr r2, _080527E0
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F508
	ldr r0, _080527E4
	strh r5, [r0]
_080527D2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080527D8: .4byte gOverworld
_080527DC: .4byte 0x0400004A
_080527E0: .4byte 0x00003D3E
_080527E4: .4byte 0x04000050

    .section ight
	THUMB_FUNC_START sub_80527E8
sub_80527E8: @ 0x080527E8
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r2, [r6, #0x10]
	ldr r0, [r6, #4]
	adds r3, r2, r0
	ldrb r1, [r3]
	cmp r1, #0x40
	bne _080527FC
	b _0805293A
_080527FC:
	cmp r1, #0x40
	bgt _0805280C
	cmp r1, #0x23
	beq _0805281A
	cmp r1, #0x24
	bne _0805280A
	b _08052928
_0805280A:
	b _08052D10
_0805280C:
	cmp r1, #0x5e
	bne _08052812
	b _08052A9E
_08052812:
	cmp r1, #0x7c
	bne _08052818
	b _08052BBC
_08052818:
	b _08052D10
_0805281A:
	adds r0, #1
	str r0, [r6, #4]
	adds r0, r2, r0
	ldrb r0, [r0]
	subs r0, #0x30
	cmp r0, #9
	bls _0805282A
	b _08052F4E
_0805282A:
	lsls r0, r0, #2
	ldr r1, _08052834
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052834: .4byte 0x08052838
_08052838: @ jump table
	.4byte _08052860 @ case 0
	.4byte _08052894 @ case 1
	.4byte _080528A2 @ case 2
	.4byte _080528B4 @ case 3
	.4byte _080528C6 @ case 4
	.4byte _080528EE @ case 5
	.4byte _080528F6 @ case 6
	.4byte _08052904 @ case 7
	.4byte _08052914 @ case 8
	.4byte _08052922 @ case 9
_08052860:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	ldrb r0, [r6, #0xd]
	cmp r0, #1
	bne _08052880
	ldr r0, [r6, #8]
	cmp r0, #0x1b
	bls _08052876
	movs r0, #0x1b
	str r0, [r6, #8]
_08052876:
	ldr r0, _0805287C
	b _08052882
	.align 2, 0
_0805287C: .4byte 0x08E0E4CC
_08052880:
	ldr r0, _08052890
_08052882:
	ldr r1, [r6, #8]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r6, #8]
	b _08052F4E
	.align 2, 0
_08052890: .4byte 0x08E0E53C
_08052894:
	adds r1, r6, #0
	adds r1, #0x82
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strb r0, [r6, #0xc]
	b _08052F4E
_080528A2:
	movs r0, #0
	strb r0, [r6, #0xd]
	strb r0, [r6, #0x1e]
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	movs r0, #1
	str r0, [r6, #8]
	b _08052F4E
_080528B4:
	adds r1, r6, #0
	adds r1, #0x82
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strb r0, [r6, #0xd]
	movs r0, #3
	strb r0, [r6, #0xc]
	b _08052C74
_080528C6:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r1, [r0, #1] @load portrait id
	strh r1, [r6]
	ldrb r1, [r0, #2] @load portrait expression?
	adds r0, r6, #0
	adds r0, #0x84
	strb r1, [r0]
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	adds r1, r6, #0
	adds r1, #0x85
	strb r0, [r1]
	adds r0, r6, #0
	bl DisplayPortrait
	b _08052CE2
_080528EE:
	adds r0, r6, #0
	bl sub_80532E8
	b _08052C74
_080528F6:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	bl sub_8055508
	b _08052D08
_08052904:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	bl sub_8055554
	strb r0, [r6, #0x1e]
	b _08052D08
_08052914:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	bl sub_8055534
	b _08052D08
_08052922:
	bl sub_8048D08
	b _08052C74
_08052928:
	adds r0, r3, #0
	bl sub_8020698
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r0
	str r1, [r6, #4]
	b _08052F4E
_0805293A:
	adds r0, #1
	str r0, [r6, #4]
	adds r0, r2, r0
	ldrb r0, [r0]
	subs r0, #0x30
	cmp r0, #9
	bls _0805294A
	b _08052F4E
_0805294A:
	lsls r0, r0, #2
	ldr r1, _08052954
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052954: .4byte 0x08052958
_08052958: @ jump table
	.4byte _08052980 @ case 0
	.4byte _080529FC @ case 1
	.4byte _08052A06 @ case 2
	.4byte _08052A0C @ case 3
	.4byte _08052A20 @ case 4
	.4byte _08052A44 @ case 5
	.4byte _08052A58 @ case 6
	.4byte _08052A6C @ case 7
	.4byte _08052A82 @ case 8
	.4byte _08052A88 @ case 9
_08052980:
	bl sub_800BE0C
	ldr r4, _080529D4
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	strh r0, [r4, #0x12]
	bl DuelMain
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #1
	bne _080529EC
	movs r0, #0
	strb r0, [r6, #0x1e]
	bl sub_804ED08
	ldr r1, _080529D8
	ldr r2, _080529DC
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _080529E0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #3
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #1
	ldr r2, _080529E4
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F544
	ldr r1, _080529E8
	movs r0, #0xde
	strh r0, [r1]
	adds r1, #4
	movs r0, #7
	strh r0, [r1]
	b _080529F0
	.align 2, 0
_080529D4: .4byte gDuelData
_080529D8: .4byte 0x04000042
_080529DC: .4byte 0x000003ED
_080529E0: .4byte 0x0000739D
_080529E4: .4byte 0x00001D1E
_080529E8: .4byte 0x04000050
_080529EC:
	movs r0, #1
	strb r0, [r6, #0x1e]
_080529F0:
	ldr r0, [r6, #4]
	adds r0, #2
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6]
	b _08052F4E
_080529FC:
	bl sub_8005B38
	bl sub_804ED08
	b _08052D08
_08052A06:
	bl sub_800AD4C
	b _08052C74
_08052A0C:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	bl PlayMusic
	b _08052C98
_08052A20:
	ldr r3, _08052A3C
	ldr r2, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r0, r2, r0
	ldrb r1, [r0, #1]
	ldrb r0, [r0, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _08052A40
	adds r3, r3, r0
	strh r1, [r3]
	adds r2, #3
	str r2, [r6, #4]
	b _08052F4E
	.align 2, 0
_08052A3C: .4byte gOverworld
_08052A40: .4byte 0x00000242
_08052A44:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	bl sub_8034FEC
	b _08052C98
_08052A58:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	bl sub_8035020
	b _08052C98
_08052A6C:
	ldr r3, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r3, r3, r0
	ldrb r0, [r3, #1]
	ldrb r1, [r3, #2]
	ldrb r2, [r3, #3]
	ldrb r3, [r3, #4]
	str r6, [sp]
	bl sub_805345C
	b _08052CC0
_08052A82:
	bl sub_8034FE0
	b _08052C74
_08052A88:
	ldr r3, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r3, r3, r0
	ldrb r0, [r3, #1]
	ldrb r1, [r3, #2]
	ldrb r2, [r3, #3]
	ldrb r3, [r3, #4]
	str r6, [sp]
	bl sub_8053CF0
	b _08052CC0
_08052A9E:
	adds r0, #1
	str r0, [r6, #4]
	adds r0, r2, r0
	ldrb r0, [r0]
	subs r0, #0x30
	cmp r0, #9
	bls _08052AAE
	b _08052F4E
_08052AAE:
	lsls r0, r0, #2
	ldr r1, _08052AB8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052AB8: .4byte 0x08052ABC
_08052ABC: @ jump table
	.4byte _08052AE4 @ case 0
	.4byte _08052B08 @ case 1
	.4byte _08052B1A @ case 2
	.4byte _08052B2C @ case 3
	.4byte _08052B40 @ case 4
	.4byte _08052B58 @ case 5
	.4byte _08052B68 @ case 6
	.4byte _08052B82 @ case 7
	.4byte _08052B98 @ case 8
	.4byte _08052BAC @ case 9
_08052AE4:
	ldr r4, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r4, r4, r0
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #3]
	ldrb r3, [r4, #4]
	ldrb r5, [r4, #5]
	str r5, [sp]
	ldrb r4, [r4, #6]
	str r4, [sp, #4]
	str r6, [sp, #8]
	bl sub_8053520
	ldr r0, [r6, #4]
	adds r0, #7
	str r0, [r6, #4]
	b _08052F4E
_08052B08:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	adds r2, r6, #0
	bl sub_8053984
	b _08052C98
_08052B1A:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	adds r2, r6, #0
	bl sub_8053A74
	b _08052C98
_08052B2C:
	ldr r2, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r2, r2, r0
	ldrb r0, [r2, #1]
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	adds r3, r6, #0
	bl sub_8053D88
	b _08052CE2
_08052B40:
	ldr r2, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r2, r2, r0
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	ldrb r1, [r2, #2]
	orrs r0, r1
	ldrb r1, [r2, #3]
	adds r2, r6, #0
	bl sub_8053884
	b _08052CE2
_08052B58:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	adds r1, r6, #0
	bl sub_8054AB0
	b _08052D08
_08052B68:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r4, [r0, #1]
	cmp r4, #0
	bne _08052B76
	b _08052D08
_08052B76:
	bl sub_804F218
	subs r4, #1
	cmp r4, #0
	bne _08052B76
	b _08052D08
_08052B82:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	movs r1, #1
	bl AddCardToTrunk
	b _08052C98
_08052B98:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	bl sub_8008D88
	b _08052C98
_08052BAC:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	adds r0, r6, #0
	bl sub_8053C18
	b _08052D08
_08052BBC:
	adds r0, #1
	str r0, [r6, #4]
	adds r0, r2, r0
	ldrb r0, [r0]
	subs r0, #0x30
	cmp r0, #8
	bls _08052BCC
	b _08052F4E
_08052BCC:
	lsls r0, r0, #2
	ldr r1, _08052BD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052BD8: .4byte 0x08052BDC
_08052BDC: @ jump table
	.4byte _08052C00 @ case 0
	.4byte _08052C34 @ case 1
	.4byte _08052C4A @ case 2
	.4byte _08052C58 @ case 3
	.4byte _08052C88 @ case 4
	.4byte _08052CA0 @ case 5
	.4byte _08052CCC @ case 6
	.4byte _08052CEA @ case 7
	.4byte _08052CFA @ case 8
_08052C00:
	ldr r1, _08052C30
	ldrb r0, [r1, #0x14]
	ldrb r1, [r1, #0x16]
	bl sub_80520E0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r3, #0
	bl sub_80524A4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #1
	strb r0, [r6, #0x1e]
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	lsrs r0, r0, #2
	cmp r3, r0
	bne _08052D08
	movs r0, #0
	strb r0, [r6, #0x1e]
	b _08052D08
	.align 2, 0
_08052C30: .4byte gOverworld
_08052C34:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	bl sub_8053E34
	adds r1, r6, #0
	adds r1, #0x86
	movs r0, #0
	strb r0, [r1]
	b _08052D08
_08052C4A:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	bl sub_8035038
	b _08052D08
_08052C58:
	adds r0, r6, #0
	adds r0, #0x86
	movs r4, #0
	strb r4, [r0]
	bl sub_805339C
	ldr r1, _08052C7C
	ldr r2, _08052C80
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_804F508
	ldr r0, _08052C84
	strh r4, [r0]
_08052C74:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	b _08052F4E
	.align 2, 0
_08052C7C: .4byte 0x0400004A
_08052C80: .4byte 0x00003D3E
_08052C84: .4byte 0x04000050
_08052C88:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	ldrb r1, [r1, #2]
	adds r2, r6, #0
	bl sub_8053D50
_08052C98:
	ldr r0, [r6, #4]
	adds r0, #3
	str r0, [r6, #4]
	b _08052F4E
_08052CA0:
	ldr r1, _08052CC8
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r2, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r2, r2, r0
	ldrb r0, [r2, #1]
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	bl sub_80523EC
_08052CC0:
	ldr r0, [r6, #4]
	adds r0, #5
	str r0, [r6, #4]
	b _08052F4E
	.align 2, 0
_08052CC8: .4byte gOverworld
_08052CCC:
	ldr r2, [r6, #4]
	ldr r0, [r6, #0x10]
	adds r2, r2, r0
	ldrb r0, [r2, #1]
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	ldrb r2, [r2, #3]
	orrs r1, r2
	adds r2, r6, #0
	bl sub_8053B40
_08052CE2:
	ldr r0, [r6, #4]
	adds r0, #4
	str r0, [r6, #4]
	b _08052F4E
_08052CEA:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	adds r0, r6, #0
	bl sub_80553F8
	b _08052D08
_08052CFA:
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	adds r0, r6, #0
	bl sub_80512E0
_08052D08:
	ldr r0, [r6, #4]
	adds r0, #2
	str r0, [r6, #4]
	b _08052F4E
_08052D10:
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #4]
	adds r2, r1, r0
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08052D3C
	adds r1, r6, #0
	adds r1, #0x86
	movs r0, #1
	strb r0, [r1]
	ldr r2, [r6, #4]
	ldr r1, [r6, #0x10]
	adds r1, r2, r1
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	ldrb r3, [r1]
	orrs r3, r0
	adds r2, #2
	str r2, [r6, #4]
	b _08052F06
_08052D3C:
	ldrb r0, [r2]
	subs r0, #0x20
	cmp r0, #0x5a
	bls _08052D46
	b _08052EEC
_08052D46:
	lsls r0, r0, #2
	ldr r1, _08052D50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052D50: .4byte 0x08052D54
_08052D54: @ jump table
	.4byte _08052EC0 @ case 0
	.4byte _08052EC0 @ case 1
	.4byte _08052EC0 @ case 2
	.4byte _08052EEC @ case 3
	.4byte _08052EEC @ case 4
	.4byte _08052EC0 @ case 5
	.4byte _08052EEC @ case 6
	.4byte _08052EC0 @ case 7
	.4byte _08052EEC @ case 8
	.4byte _08052EEC @ case 9
	.4byte _08052EEC @ case 10
	.4byte _08052EEC @ case 11
	.4byte _08052EC0 @ case 12
	.4byte _08052EC0 @ case 13
	.4byte _08052EC0 @ case 14
	.4byte _08052EEC @ case 15
	.4byte _08052EEC @ case 16
	.4byte _08052EEC @ case 17
	.4byte _08052EEC @ case 18
	.4byte _08052EEC @ case 19
	.4byte _08052EEC @ case 20
	.4byte _08052EEC @ case 21
	.4byte _08052EEC @ case 22
	.4byte _08052EEC @ case 23
	.4byte _08052EEC @ case 24
	.4byte _08052EEC @ case 25
	.4byte _08052EC0 @ case 26
	.4byte _08052EC0 @ case 27
	.4byte _08052EEC @ case 28
	.4byte _08052EEC @ case 29
	.4byte _08052EEC @ case 30
	.4byte _08052EC0 @ case 31
	.4byte _08052EEC @ case 32
	.4byte _08052EC0 @ case 33
	.4byte _08052EC0 @ case 34
	.4byte _08052EC0 @ case 35
	.4byte _08052EC0 @ case 36
	.4byte _08052EC0 @ case 37
	.4byte _08052EC0 @ case 38
	.4byte _08052EC0 @ case 39
	.4byte _08052EC0 @ case 40
	.4byte _08052EC0 @ case 41
	.4byte _08052EC0 @ case 42
	.4byte _08052EC0 @ case 43
	.4byte _08052EC0 @ case 44
	.4byte _08052EC0 @ case 45
	.4byte _08052EC0 @ case 46
	.4byte _08052EC0 @ case 47
	.4byte _08052EC0 @ case 48
	.4byte _08052EC0 @ case 49
	.4byte _08052EC0 @ case 50
	.4byte _08052EC0 @ case 51
	.4byte _08052EC0 @ case 52
	.4byte _08052EC0 @ case 53
	.4byte _08052EC0 @ case 54
	.4byte _08052EC0 @ case 55
	.4byte _08052EC0 @ case 56
	.4byte _08052EC0 @ case 57
	.4byte _08052EC0 @ case 58
	.4byte _08052EEC @ case 59
	.4byte _08052EEC @ case 60
	.4byte _08052EEC @ case 61
	.4byte _08052EEC @ case 62
	.4byte _08052EEC @ case 63
	.4byte _08052EEC @ case 64
	.4byte _08052EC0 @ case 65
	.4byte _08052EC0 @ case 66
	.4byte _08052EC0 @ case 67
	.4byte _08052EC0 @ case 68
	.4byte _08052EC0 @ case 69
	.4byte _08052EC0 @ case 70
	.4byte _08052EC0 @ case 71
	.4byte _08052EC0 @ case 72
	.4byte _08052EC0 @ case 73
	.4byte _08052EC0 @ case 74
	.4byte _08052EC0 @ case 75
	.4byte _08052EC0 @ case 76
	.4byte _08052EC0 @ case 77
	.4byte _08052EC0 @ case 78
	.4byte _08052EC0 @ case 79
	.4byte _08052EC0 @ case 80
	.4byte _08052EC0 @ case 81
	.4byte _08052EC0 @ case 82
	.4byte _08052EC0 @ case 83
	.4byte _08052EC0 @ case 84
	.4byte _08052EC0 @ case 85
	.4byte _08052EC0 @ case 86
	.4byte _08052EC0 @ case 87
	.4byte _08052EC0 @ case 88
	.4byte _08052EC0 @ case 89
	.4byte _08052EC0 @ case 90
_08052EC0:
	movs r4, #1
	adds r0, r6, #0
	adds r0, #0x86
	strb r4, [r0]
	ldr r2, _08052EE8
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrb r3, [r0, #1]
	lsls r3, r3, #8
	ldrb r0, [r0]
	orrs r3, r0
	adds r1, #1
	str r1, [r6, #4]
	b _08052F06
	.align 2, 0
_08052EE8: .4byte gUnk_8E00E30
_08052EEC:
	adds r1, r6, #0
	adds r1, #0x86
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08052F2C
	ldr r0, [r0]
	ldrb r3, [r0, #1]
	lsls r3, r3, #8
	ldrb r0, [r0]
	orrs r3, r0
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
_08052F06:
	adds r0, r6, #0
	adds r0, #0x82
	movs r1, #1
	strh r1, [r0]
	ldr r2, [r6, #8]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08052F38
	lsrs r0, r2, #1
	lsls r0, r0, #7
	ldr r1, _08052F30
	adds r0, r0, r1
	ldr r2, _08052F34
	adds r1, r3, #0
	bl sub_8020968
	b _08052F48
	.align 2, 0
_08052F2C: .4byte gUnk_8E00E30
_08052F30: .4byte 0x0200DC40
_08052F34: .4byte 0x00000101
_08052F38:
	lsrs r0, r2, #1
	lsls r0, r0, #7
	ldr r1, _08052F58
	adds r0, r0, r1
	ldr r2, _08052F5C
	adds r1, r3, #0
	bl sub_8020968
_08052F48:
	adds r0, r6, #0
	bl sub_8053284
_08052F4E:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08052F58: .4byte 0x0200DC20
_08052F5C: .4byte 0x00000101
.section .text2
	THUMB_FUNC_START sub_8052F60
sub_8052F60: @ 0x08052F60
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08052F88
	ldrh r0, [r0]
	ldr r2, _08052F8C
	ands r2, r0
	cmp r2, #0
	beq _08052FB0
	movs r0, #0xca
	bl PlayMusic
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _08052F90
	movs r0, #0
	b _08052F92
	.align 2, 0
_08052F88: .4byte gUnk2020DFC
_08052F8C: .4byte 0x00000103
_08052F90:
	movs r0, #1
_08052F92:
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strb r1, [r4, #0xc]
	ldr r0, _08052FA8
	ldr r1, _08052FAC
	bl LZ77UnCompWram
	b _0805303A
	.align 2, 0
_08052FA8: .4byte 0x082AD2D0
_08052FAC: .4byte 0x0200DC00
_08052FB0:
	ldrh r0, [r4, #0x1c]
	adds r1, r0, #1
	strh r1, [r4, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	beq _08053000
	cmp r0, #0xf
	bgt _08052FC8
	cmp r0, #0
	beq _08052FCE
	b _0805303A
_08052FC8:
	cmp r0, #0x1d
	beq _08053038
	b _0805303A
_08052FCE:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08052FEC
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _08052FE4
	adds r0, r0, r1
	ldr r1, _08052FE8
	b _08053022
	.align 2, 0
_08052FE4: .4byte 0x0200DC40
_08052FE8: .4byte 0x0000A081
_08052FEC:
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _08052FF8
	adds r0, r0, r1
	ldr r1, _08052FFC
	b _08053022
	.align 2, 0
_08052FF8: .4byte 0x0200DC20
_08052FFC: .4byte 0x0000A081
_08053000:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08053018
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _08053014
	b _0805301E
	.align 2, 0
_08053014: .4byte 0x0200DC40
_08053018:
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _0805302C
_0805301E:
	adds r0, r0, r1
	ldr r1, _08053030
_08053022:
	ldr r2, _08053034
	bl sub_8020968
	b _0805303A
	.align 2, 0
_0805302C: .4byte 0x0200DC20
_08053030: .4byte 0x00004081
_08053034: .4byte 0x00000101
_08053038:
	strh r2, [r4, #0x1c]
_0805303A:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8053040
sub_8053040: @ 0x08053040
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08053068
	ldrh r1, [r0]
	ldr r5, _0805306C
	ands r5, r1
	cmp r5, #0
	beq _08053090
	movs r0, #0x37
	bl PlayMusic
	ldr r0, [r4, #4]
	adds r0, #2
	str r0, [r4, #4]
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _08053070
	movs r0, #0
	b _08053072
	.align 2, 0
_08053068: .4byte gUnk2020DFC
_0805306C: .4byte 0x00000103
_08053070:
	movs r0, #1
_08053072:
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strb r1, [r4, #0xc]
	ldr r0, _08053088
	ldr r1, _0805308C
	bl LZ77UnCompWram
	b _08053122
	.align 2, 0
_08053088: .4byte 0x082AD2D0
_0805308C: .4byte 0x0200DC00
_08053090:
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _080530A6
	ldrb r0, [r4, #0x1e]
	cmp r0, #1
	bne _080530A6
	movs r0, #0x36
	bl PlayMusic
	strb r5, [r4, #0x1e]
_080530A6:
	ldr r0, _080530D0
	ldrh r1, [r0]
	movs r0, #0x90
	ands r0, r1
	cmp r0, #0
	beq _080530C2
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	bne _080530C2
	movs r0, #0x36
	bl PlayMusic
	movs r0, #1
	strb r0, [r4, #0x1e]
_080530C2:
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080530D4
	cmp r0, #1
	beq _08053104
	b _08053122
	.align 2, 0
_080530D0: .4byte gUnk2020DFC
_080530D4:
	ldr r4, _080530F4
	ldr r1, _080530F8
	ldr r5, _080530FC
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020968
	movs r0, #0xe0
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r1, _08053100
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020968
	b _08053122
	.align 2, 0
_080530F4: .4byte 0x0200DC20
_080530F8: .4byte 0x00007281
_080530FC: .4byte 0x00000101
_08053100: .4byte 0x00004081
_08053104:
	ldr r4, _08053128
	ldr r1, _0805312C
	ldr r5, _08053130
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020968
	movs r0, #0xe0
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r1, _08053134
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020968
_08053122:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053128: .4byte 0x0200DC20
_0805312C: .4byte 0x00004081
_08053130: .4byte 0x00000101
_08053134: .4byte 0x00007281

	THUMB_FUNC_START sub_8053138
sub_8053138: @ 0x08053138
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x86
	movs r0, #1
	strb r0, [r1]
	adds r6, r4, #0
	adds r6, #0x78
	ldrb r5, [r6]
	subs r1, #0x64
	adds r2, r1, r5
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _08053174
	ldr r1, _08053170
	ldrb r0, [r2]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r3, [r0, #1]
	lsls r3, r3, #8
	ldrb r0, [r0]
	orrs r3, r0
	adds r0, r5, #1
	b _08053182
	.align 2, 0
_08053170: .4byte gUnk_8E00E30
_08053174:
	adds r0, r5, #1
	adds r0, r1, r0
	ldrb r3, [r0]
	lsls r3, r3, #8
	ldrb r0, [r2]
	orrs r3, r0
	adds r0, r5, #2
_08053182:
	strb r0, [r6]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080531A8
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _080531A0
	adds r0, r0, r1
	ldr r2, _080531A4
	adds r1, r3, #0
	bl sub_8020968
	b _080531B8
	.align 2, 0
_080531A0: .4byte 0x0200DC40
_080531A4: .4byte 0x00000101
_080531A8:
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _080531C4
	adds r0, r0, r1
	ldr r2, _080531C8
	adds r1, r3, #0
	bl sub_8020968
_080531B8:
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _080531D0
	ldr r0, _080531CC
	b _080531D2
	.align 2, 0
_080531C4: .4byte 0x0200DC20
_080531C8: .4byte 0x00000101
_080531CC: .4byte 0x08E0E674
_080531D0:
	ldr r0, _080531F8
_080531D2:
	ldr r1, [r4, #8]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x78
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080531F0
	strb r0, [r4, #0xc]
_080531F0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080531F8: .4byte 0x08E0E754
	.byte 0xF0, 0xB5, 0x06, 0x1C
	.byte 0x30, 0x8C, 0xB8, 0xF7, 0xEF, 0xF8, 0x35, 0x1C, 0x78, 0x35, 0x00, 0x20, 0x28, 0x70, 0x18, 0x4C
	.byte 0x20, 0x68, 0xCD, 0xF7, 0x41, 0xFA, 0x29, 0x78, 0x40, 0x18, 0x28, 0x70, 0x00, 0x23, 0x20, 0x68
	.byte 0x02, 0x78, 0x00, 0x2A, 0x17, 0xD0, 0x31, 0x1C, 0x22, 0x31, 0x24, 0x2A, 0x13, 0xD0, 0x0F, 0x1C
	.byte 0x2A, 0x1C, 0x04, 0x1C, 0xF9, 0x18, 0x10, 0x78, 0x20, 0x18, 0x00, 0x78, 0x08, 0x70, 0x10, 0x78
	.byte 0x01, 0x30, 0x10, 0x70, 0x01, 0x33, 0x4F, 0x2B, 0x05, 0xDC, 0xE0, 0x18, 0x00, 0x78, 0x00, 0x28
	.byte 0x01, 0xD0, 0x24, 0x28, 0xEE, 0xD1, 0x30, 0x1C, 0x22, 0x30, 0xC0, 0x18, 0x00, 0x21, 0x01, 0x70
	.byte 0x30, 0x1C, 0x78, 0x30, 0x01, 0x70, 0x02, 0x20, 0x30, 0x73, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0xD0, 0x1A, 0x02, 0x02

	THUMB_FUNC_START sub_8053274
sub_8053274: @ 0x08053274
	ldr r2, [r1]
	str r2, [r0, #0x10]
	ldr r2, [r1, #4]
	str r2, [r0, #0x14]
	ldr r1, [r1, #8]
	str r1, [r0, #0x18]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8053284
sub_8053284: @ 0x08053284
	adds r2, r0, #0
	ldrb r0, [r2, #0xd]
	cmp r0, #1
	bne _08053294
	ldr r0, _08053290
	b _08053296
	.align 2, 0
_08053290: .4byte 0x08E0E674
_08053294:
	ldr r0, _080532A4
_08053296:
	ldr r1, [r2, #8]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2, #8]
	bx lr
	.align 2, 0
_080532A4: .4byte 0x08E0E754

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
_080533B4: .4byte 0x02018400
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
	bl sub_8055554
	cmp r0, #0
	beq _08053C98
	movs r0, #0x53
	bl sub_8055554
	cmp r0, #0
	beq _08053C98
	movs r0, #0x54
	bl sub_8055554
	cmp r0, #0
	beq _08053C98
	movs r0, #0x55
	bl sub_8055554
	cmp r0, #0
	beq _08053C98
	movs r0, #0x56
	bl sub_8055554
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
	bl sub_8055554
	cmp r0, #0
	beq _080552B4
	movs r5, #0
	movs r0, #0xb4
	bl sub_8055554
	cmp r0, #0
	bne _080552B4
	movs r5, #2
	b _080552B4
_0805529A:
	movs r0, #0xf7
	bl sub_8055554
	cmp r0, #0
	beq _080552B4
	movs r5, #1
	b _080552B4
_080552A8:
	movs r0, #0xf7
	bl sub_8055554
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

	THUMB_FUNC_START sub_8055508
sub_8055508: @ 0x08055508
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

	THUMB_FUNC_START sub_8055534
sub_8055534: @ 0x08055534
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

	THUMB_FUNC_START sub_8055554
sub_8055554: @ 0x08055554
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
