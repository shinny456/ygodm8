  .INCLUDE "asm/macro.inc"
  .SYNTAX UNIFIED


	THUMB_FUNC_START sub_8040C6C
sub_8040C6C: @ 0x08040C6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r5, _08040ED4
_08040C7A:
	lsls r0, r4, #3
	adds r0, r0, r5
	bl sub_80411EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _08040C7A
	ldr r0, _08040ED8
	mov sl, r0
	ldr r1, _08040EDC
	movs r2, #0
	ldrsh r1, [r1, r2]
	mov r8, r1
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	ldr r7, _08040ED4
	strh r0, [r7, #6]
	mov r0, sl
	movs r1, #0
	ldrsh r6, [r0, r1]
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_8008144
	strh r0, [r7, #0xe]
	mov r2, sl
	ldrh r4, [r2]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	strh r0, [r7, #0x16]
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	strh r0, [r7, #0x1e]
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	strh r0, [r7, #0x26]
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_8008144
	strh r0, [r7, #0x2e]
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	strh r0, [r7, #0x36]
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	strh r0, [r7, #0x3e]
	ldr r0, _08040EE0
	movs r1, #0
	ldrsh r6, [r0, r1]
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_8008144
	movs r2, #0x46
	adds r2, r2, r7
	mov sb, r2
	strh r0, [r2]
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	movs r1, #0x4e
	adds r1, r1, r7
	mov r8, r1
	strh r0, [r1]
	ldr r2, _08040EDC
	ldrh r4, [r2]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	adds r4, r7, #0
	adds r4, #0x56
	strh r0, [r4]
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_8008144
	adds r0, r7, #0
	adds r0, #0x5e
	movs r2, #0
	mov r1, sb
	strh r2, [r1]
	mov r1, r8
	strh r5, [r1]
	ldr r2, _08040EE4
	strh r2, [r4]
	movs r1, #0
	strh r1, [r0]
	ldr r2, _08040EE8
	movs r0, #0
	ldrsh r2, [r2, r0]
	mov r8, r2
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	ldr r1, _08040EEC
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_8008144
	adds r6, r7, #0
	adds r6, #0x6e
	strh r0, [r6]
	ldr r2, _08040EE0
	ldrh r4, [r2]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	adds r4, r7, #0
	adds r4, #0x76
	strh r0, [r4]
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	adds r1, r7, #0
	adds r1, #0x7e
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r2, _08040EEC
	strh r0, [r2]
	movs r0, #0
	strh r0, [r6]
	strh r0, [r4]
	ldr r2, _08040EE4
	strh r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	add r0, sl
	movs r1, #0
	ldrsh r6, [r0, r1]
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_8008144
	adds r1, r7, #0
	adds r1, #0x86
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	adds r1, r7, #0
	adds r1, #0x8e
	strh r0, [r1]
	ldr r2, _08040EE8
	ldrh r4, [r2]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	adds r1, r7, #0
	adds r1, #0x96
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_8008144
	adds r1, r7, #0
	adds r1, #0x9e
	strh r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040ED4: .4byte gOamBuffer
_08040ED8: .4byte 0x08088ED4
_08040EDC: .4byte 0x08088F54
_08040EE0: .4byte 0x08088FD4
_08040EE4: .4byte 0xFFFFFEFF
_08040EE8: .4byte 0x08089054
_08040EEC: .4byte gOamBuffer+0x66

	THUMB_FUNC_START sub_8040EF0
sub_8040EF0: @ 0x08040EF0
	push {r4, r5, lr}
	bl sub_8008220
	bl sub_8045718
	ldr r0, _08040FAC
	adds r0, #0xf0
	ldrb r4, [r0]
	ldr r1, _08040FB0
	ldr r2, _08040FB4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08040FB8
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r1, _08040FBC
	bl HuffUnComp
	ldr r0, _08040FC0
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r1, _08040FC4
	movs r2, #0x30
	bl CpuSet
	movs r5, #0
	ldr r0, _08040FC8
	adds r4, r4, r0
_08040F2A:
	lsls r1, r5, #5
	subs r1, r1, r5
	lsls r1, r1, #1
	ldr r0, [r4]
	adds r0, r0, r1
	lsls r1, r5, #6
	ldr r2, _08040FCC
	adds r1, r1, r2
	movs r2, #0x20
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x27
	bls _08040F2A
	ldr r1, _08040FD0
	movs r0, #4
	strh r0, [r1]
	ldr r4, _08040FD4
	ldr r0, _08040FD8
	ldrb r0, [r0, #1]
	bl sub_8041D60
	strh r0, [r4]
	movs r0, #1
	bl sub_8041D60
	strh r0, [r4]
	bl sub_8040B4C
	bl sub_8041EC8
	bl sub_8040C6C
	bl sub_80577A4
	bl sub_80408FC
	bl sub_8008220
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadOam
	bl LoadPalettes
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xd8
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x50
	movs r0, #0xd4
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xa
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08040FAC: .4byte gDuel
_08040FB0: .4byte 0x0400000C
_08040FB4: .4byte 0x00009B02
_08040FB8: .4byte 0x08E0D0F8
_08040FBC: .4byte 0x02000400
_08040FC0: .4byte 0x08E0D130
_08040FC4: .4byte 0x02000000
_08040FC8: .4byte 0x08E0D114
_08040FCC: .4byte 0x0200DC00
_08040FD0: .4byte gBG2HOFS
_08040FD4: .4byte gBG2VOFS
_08040FD8: .4byte gCursorPosition

	THUMB_FUNC_START sub_8040FDC
sub_8040FDC: @ 0x08040FDC
	push {lr}
	bl LoadOam
	bl LoadBgOffsets
	ldr r0, _08041000
	ldr r1, _08041004
	ldr r2, _08041008
	bl CpuSet
	ldr r0, _0804100C
	ldr r1, _08041010
	movs r2, #0x20
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08041000: .4byte 0x02008440
_08041004: .4byte 0x06008040
_08041008: .4byte 0x040001D0
_0804100C: .4byte 0x020000A0
_08041010: .4byte 0x050000A0

	THUMB_FUNC_START sub_8041014
sub_8041014: @ 0x08041014
	push {r4, lr}
	ldr r4, _08041038
	ldr r1, _0804103C
	ldr r2, _08041040
	adds r0, r4, #0
	bl CpuSet
	ldr r0, _08041044
	adds r4, r4, r0
	ldr r1, _08041048
	ldr r2, _0804104C
	adds r0, r4, #0
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041038: .4byte 0x02008BA0
_0804103C: .4byte 0x060087A0
_08041040: .4byte 0x04000740
_08041044: .4byte 0x00006060
_08041048: .4byte 0x0600E800
_0804104C: .4byte 0x04000120

	THUMB_FUNC_START sub_8041050
sub_8041050: @ 0x08041050
	push {r4, lr}
	bl LoadBgOffsets
	ldr r4, _08041078
	ldr r1, _0804107C
	ldr r2, _08041080
	adds r0, r4, #0
	bl CpuSet
	ldr r0, _08041084
	adds r4, r4, r0
	ldr r1, _08041088
	ldr r2, _0804108C
	adds r0, r4, #0
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041078: .4byte 0x02008BA0
_0804107C: .4byte 0x060087A0
_08041080: .4byte 0x04000058
_08041084: .4byte 0x00006860
_08041088: .4byte 0x0600F000
_0804108C: .4byte 0x04000400

	THUMB_FUNC_START sub_8041090
sub_8041090: @ 0x08041090
	push {lr}
	bl sub_8041E64
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0
	strh r1, [r0]
	bl sub_804405C
	bl sub_80410B4
	ldr r0, _080410B0
	bl sub_80081DC
	pop {r0}
	bx r0
	.align 2, 0
_080410B0: .4byte 0x08045435

	THUMB_FUNC_START sub_80410B4
sub_80410B4: @ 0x080410B4
	push {lr}
	bl sub_8008220
	bl sub_8045718
	ldr r0, _08041100
	adds r0, #0xf0
	ldrb r0, [r0]
	bl sub_8041140
	bl sub_8040B4C
	bl sub_8041EC8
	bl sub_8040C6C
	bl sub_80577A4
	bl sub_80408FC
	bl sub_8008220
	bl sub_80411D4
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xd8
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x50
	movs r0, #0xd4
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xa
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08041100: .4byte gDuel

	THUMB_FUNC_START sub_8041104
sub_8041104: @ 0x08041104
	push {lr}
	bl sub_8040B4C
	bl sub_8041EC8
	bl sub_8040C6C
	bl sub_80577A4
	bl sub_80408FC
	bl sub_8008220
	bl sub_80411D4
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xd8
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x50
	movs r0, #0xd4
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xa
	strh r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8041140
sub_8041140: @ 0x08041140
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	ldr r1, _080411A8
	ldr r2, _080411AC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080411B0
	lsrs r4, r4, #0x16
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r1, _080411B4
	bl HuffUnComp
	ldr r0, _080411B8
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r1, _080411BC
	movs r2, #0x30
	bl CpuSet
	movs r5, #0
	ldr r0, _080411C0
	adds r4, r4, r0
_08041170:
	lsls r1, r5, #5
	subs r1, r1, r5
	lsls r1, r1, #1
	ldr r0, [r4]
	adds r0, r0, r1
	lsls r1, r5, #6
	ldr r2, _080411C4
	adds r1, r1, r2
	movs r2, #0x20
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x27
	bls _08041170
	ldr r1, _080411C8
	movs r0, #4
	strh r0, [r1]
	ldr r4, _080411CC
	ldr r0, _080411D0
	ldrb r0, [r0, #1]
	bl sub_8041D60
	strh r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080411A8: .4byte 0x0400000C
_080411AC: .4byte 0x00009B02
_080411B0: .4byte 0x08E0D0F8
_080411B4: .4byte 0x02000400
_080411B8: .4byte 0x08E0D130
_080411BC: .4byte 0x02000000
_080411C0: .4byte 0x08E0D114
_080411C4: .4byte 0x0200DC00
_080411C8: .4byte gBG2HOFS
_080411CC: .4byte gBG2VOFS
_080411D0: .4byte gCursorPosition

	THUMB_FUNC_START sub_80411D4
sub_80411D4: @ 0x080411D4
	push {lr}
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadOam
	bl LoadPalettes
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80411EC
sub_80411EC: @ 0x080411EC
	push {r4, lr}
	movs r1, #0xc0
	strb r1, [r0]
	ldrh r2, [r0, #2]
	ldr r1, _08041238
	ands r1, r2
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0, #2]
	ldrb r1, [r0, #1]
	movs r3, #0x3f
	adds r4, r3, #0
	ands r4, r1
	ldrb r1, [r0, #3]
	ands r3, r1
	ldrh r2, [r0, #4]
	ldr r1, _0804123C
	ands r1, r2
	strh r1, [r0, #4]
	ldrb r1, [r0, #5]
	movs r2, #0xc
	orrs r1, r2
	strb r1, [r0, #5]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r3, r1
	subs r1, #0x10
	ands r3, r1
	strb r3, [r0, #3]
	adds r1, #0x1d
	ands r4, r1
	strb r4, [r0, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041238: .4byte 0xFFFFFE00
_0804123C: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_8041240
sub_8041240: @ 0x08041240
	push {lr}
	sub sp, #0x20
	lsls r0, r0, #0x18
	ldr r1, _08041280
	lsrs r0, r0, #0x16
	subs r0, #4
	adds r0, r0, r1
	ldr r2, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, sp
	strb r1, [r0, #8]
	str r2, [sp, #0xc]
	movs r2, #0
	strh r1, [r0, #0x10]
	strb r2, [r0, #0x1c]
	strh r1, [r0, #0x14]
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	bl sub_8041B38
	mov r0, sp
	bl sub_8041BE8
	bl sub_8041104
	add sp, #0x20
	pop {r0}
	bx r0
	.align 2, 0
_08041280: .4byte 0x08E0D41C

	THUMB_FUNC_START sub_8041284
sub_8041284: @ 0x08041284
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r3, [r5, #0xc]
	ldr r4, [r5]
	adds r2, r3, r4
	ldrb r1, [r2]
	cmp r1, #0x23
	beq _080412AE
	cmp r1, #0x24
	bne _0804129A
	b _0804139E
_0804129A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080412A4
	b _080413B0
_080412A4:
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	orrs r3, r1
	adds r0, r4, #2
	b _08041568
_080412AE:
	adds r0, r4, #1
	str r0, [r5]
	adds r0, r3, r0
	ldrb r0, [r0]
	subs r0, #0x30
	cmp r0, #8
	bls _080412BE
	b _080415AA
_080412BE:
	lsls r0, r0, #2
	ldr r1, _080412C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080412C8: .4byte _080412CC
_080412CC: @ jump table
	.4byte _080412F0 @ case 0
	.4byte _08041322 @ case 1
	.4byte _08041328 @ case 2
	.4byte _0804133C @ case 3
	.4byte _08041350 @ case 4
	.4byte _08041356 @ case 5
	.4byte _08041360 @ case 6
	.4byte _0804136C @ case 7
	.4byte _08041380 @ case 8
_080412F0:
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	ldr r4, [r5, #4]
	adds r0, r4, #0
	movs r1, #0x1c
	bl __umodsi3
	cmp r0, #0
	beq _08041316
	adds r0, r4, #0
	movs r1, #0x1c
	bl __udivsi3
	adds r0, #1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	str r1, [r5, #4]
_08041316:
	ldr r0, [r5, #4]
	cmp r0, #0x54
	bhi _0804131E
	b _080415AA
_0804131E:
	movs r0, #0x54
	b _080415A8
_08041322:
	movs r0, #1
	strb r0, [r5, #8]
	b _080415AA
_08041328:
	movs r1, #0
	movs r0, #2
	strb r0, [r5, #8]
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	strb r1, [r5, #0x1c]
	ldrh r0, [r5, #0x14]
	strh r0, [r5, #0x12]
	b _080415AA
_0804133C:
	movs r1, #0
	movs r0, #2
	strb r0, [r5, #8]
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	strb r1, [r5, #0x1c]
	ldrh r0, [r5, #0x16]
	strh r0, [r5, #0x12]
	b _080415AA
_08041350:
	movs r0, #6
	strb r0, [r5, #8]
	b _080415AA
_08041356:
	movs r0, #0
	strb r0, [r5, #0x1c]
	movs r0, #4
	strb r0, [r5, #8]
	b _08041378
_08041360:
	movs r0, #0
	strb r0, [r5, #0x1c]
	movs r0, #5
	strb r0, [r5, #8]
	ldrh r0, [r5, #0x18]
	b _08041376
_0804136C:
	movs r0, #0
	strb r0, [r5, #0x1c]
	movs r0, #5
	strb r0, [r5, #8]
	ldrh r0, [r5, #0x1a]
_08041376:
	strh r0, [r5, #0x12]
_08041378:
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	b _080415AA
_08041380:
	ldr r0, [r5]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	ldrb r4, [r0, #1]
	cmp r4, #0
	beq _08041396
_0804138C:
	bl sub_8008220
	subs r4, #1
	cmp r4, #0
	bne _0804138C
_08041396:
	ldr r0, [r5]
	adds r0, #2
	str r0, [r5]
	b _080415AA
_0804139E:
	adds r0, r2, #0
	bl sub_8020698
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	b _080415AA
_080413B0:
	adds r0, r1, #0
	subs r0, #0x20
	cmp r0, #0x5a
	bls _080413BA
	b _08041558
_080413BA:
	lsls r0, r0, #2
	ldr r1, _080413C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080413C4: .4byte _080413C8
_080413C8: @ jump table
	.4byte _08041534 @ case 0
	.4byte _08041534 @ case 1
	.4byte _08041534 @ case 2
	.4byte _08041558 @ case 3
	.4byte _08041558 @ case 4
	.4byte _08041534 @ case 5
	.4byte _08041558 @ case 6
	.4byte _08041534 @ case 7
	.4byte _08041558 @ case 8
	.4byte _08041558 @ case 9
	.4byte _08041558 @ case 10
	.4byte _08041558 @ case 11
	.4byte _08041534 @ case 12
	.4byte _08041534 @ case 13
	.4byte _08041534 @ case 14
	.4byte _08041558 @ case 15
	.4byte _08041558 @ case 16
	.4byte _08041558 @ case 17
	.4byte _08041558 @ case 18
	.4byte _08041558 @ case 19
	.4byte _08041558 @ case 20
	.4byte _08041558 @ case 21
	.4byte _08041558 @ case 22
	.4byte _08041558 @ case 23
	.4byte _08041558 @ case 24
	.4byte _08041558 @ case 25
	.4byte _08041534 @ case 26
	.4byte _08041534 @ case 27
	.4byte _08041558 @ case 28
	.4byte _08041558 @ case 29
	.4byte _08041558 @ case 30
	.4byte _08041534 @ case 31
	.4byte _08041558 @ case 32
	.4byte _08041534 @ case 33
	.4byte _08041534 @ case 34
	.4byte _08041534 @ case 35
	.4byte _08041534 @ case 36
	.4byte _08041534 @ case 37
	.4byte _08041534 @ case 38
	.4byte _08041534 @ case 39
	.4byte _08041534 @ case 40
	.4byte _08041534 @ case 41
	.4byte _08041534 @ case 42
	.4byte _08041534 @ case 43
	.4byte _08041534 @ case 44
	.4byte _08041534 @ case 45
	.4byte _08041534 @ case 46
	.4byte _08041534 @ case 47
	.4byte _08041534 @ case 48
	.4byte _08041534 @ case 49
	.4byte _08041534 @ case 50
	.4byte _08041534 @ case 51
	.4byte _08041534 @ case 52
	.4byte _08041534 @ case 53
	.4byte _08041534 @ case 54
	.4byte _08041534 @ case 55
	.4byte _08041534 @ case 56
	.4byte _08041534 @ case 57
	.4byte _08041534 @ case 58
	.4byte _08041558 @ case 59
	.4byte _08041558 @ case 60
	.4byte _08041558 @ case 61
	.4byte _08041558 @ case 62
	.4byte _08041558 @ case 63
	.4byte _08041558 @ case 64
	.4byte _08041534 @ case 65
	.4byte _08041534 @ case 66
	.4byte _08041534 @ case 67
	.4byte _08041534 @ case 68
	.4byte _08041534 @ case 69
	.4byte _08041534 @ case 70
	.4byte _08041534 @ case 71
	.4byte _08041534 @ case 72
	.4byte _08041534 @ case 73
	.4byte _08041534 @ case 74
	.4byte _08041534 @ case 75
	.4byte _08041534 @ case 76
	.4byte _08041534 @ case 77
	.4byte _08041534 @ case 78
	.4byte _08041534 @ case 79
	.4byte _08041534 @ case 80
	.4byte _08041534 @ case 81
	.4byte _08041534 @ case 82
	.4byte _08041534 @ case 83
	.4byte _08041534 @ case 84
	.4byte _08041534 @ case 85
	.4byte _08041534 @ case 86
	.4byte _08041534 @ case 87
	.4byte _08041534 @ case 88
	.4byte _08041534 @ case 89
	.4byte _08041534 @ case 90
_08041534:
	ldr r2, _08041554
	ldr r0, [r5, #0xc]
	ldr r1, [r5]
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
	str r1, [r5]
	b _0804156A
	.align 2, 0
_08041554: .4byte gUnk_8E00E30
_08041558:
	ldr r0, _08041588
	ldr r0, [r0]
	ldrb r3, [r0, #1]
	lsls r3, r3, #8
	ldrb r0, [r0]
	orrs r3, r0
	ldr r0, [r5]
	adds r0, #1
_08041568:
	str r0, [r5]
_0804156A:
	ldr r1, [r5, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041594
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _0804158C
	adds r0, r0, r1
	ldr r2, _08041590
	adds r1, r3, #0
	bl sub_8020968
	b _080415A4
	.align 2, 0
_08041588: .4byte gUnk_8E00E30
_0804158C: .4byte 0x02008CC0
_08041590: .4byte 0x00000101
_08041594:
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _080415B0
	adds r0, r0, r1
	ldr r2, _080415B4
	adds r1, r3, #0
	bl sub_8020968
_080415A4:
	ldr r0, [r5, #4]
	adds r0, #1
_080415A8:
	str r0, [r5, #4]
_080415AA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080415B0: .4byte 0x02008CA0
_080415B4: .4byte 0x00000101

	THUMB_FUNC_START sub_80415B8
sub_80415B8: @ 0x080415B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080415EC
	ldrh r0, [r0]
	ldr r2, _080415F0
	ands r2, r0
	cmp r2, #0
	beq _08041600
	movs r0, #0xca
	bl PlayMusic
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #4]
	movs r1, #0
	strh r0, [r4, #0x10]
	strb r1, [r4, #8]
	ldr r0, _080415F4
	ldr r1, _080415F8
	ldr r2, _080415FC
	bl sub_8020A3C
	b _0804168A
	.align 2, 0
_080415EC: .4byte gUnk2020DFC
_080415F0: .4byte 0x00000103
_080415F4: .4byte 0x02008CA0
_080415F8: .4byte 0x08E0D15D
_080415FC: .4byte 0x00000101
_08041600:
	ldrh r0, [r4, #0x10]
	adds r1, r0, #1
	strh r1, [r4, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	beq _08041650
	cmp r0, #0xf
	bgt _08041618
	cmp r0, #0
	beq _0804161E
	b _0804168A
_08041618:
	cmp r0, #0x1d
	beq _08041688
	b _0804168A
_0804161E:
	ldr r1, [r4, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804163C
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _08041634
	adds r0, r0, r1
	ldr r1, _08041638
	b _08041672
	.align 2, 0
_08041634: .4byte 0x02008CC0
_08041638: .4byte 0x0000A081
_0804163C:
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _08041648
	adds r0, r0, r1
	ldr r1, _0804164C
	b _08041672
	.align 2, 0
_08041648: .4byte 0x02008CA0
_0804164C: .4byte 0x0000A081
_08041650:
	ldr r1, [r4, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041668
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _08041664
	b _0804166E
	.align 2, 0
_08041664: .4byte 0x02008CC0
_08041668:
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _0804167C
_0804166E:
	adds r0, r0, r1
	ldr r1, _08041680
_08041672:
	ldr r2, _08041684
	bl sub_8020968
	b _0804168A
	.align 2, 0
_0804167C: .4byte 0x02008CA0
_08041680: .4byte 0x00004081
_08041684: .4byte 0x00000101
_08041688:
	strh r2, [r4, #0x10]
_0804168A:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8041690
sub_8041690: @ 0x08041690
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldrb r0, [r7, #0x1c]
	cmp r0, #0
	beq _080416A4
	b _080417DC
_080416A4:
	ldrh r0, [r7, #0x12]
	bl SetCardInfo
	movs r0, #0x19
	mov r8, r0
	ldr r0, _08041730
	ldrb r0, [r0]
	cmp r0, #2
	bne _080416CC
	ldrh r1, [r7, #0x12]
	ldr r0, _08041734
	cmp r1, r0
	bne _080416C2
	movs r6, #0x1a
	mov r8, r6
_080416C2:
	ldr r0, _08041738
	cmp r1, r0
	bne _080416CC
	movs r0, #0x1b
	mov r8, r0
_080416CC:
	movs r3, #0
	ldr r6, _0804173C
	ldr r5, _08041740
	ldr r4, _08041744
	movs r2, #0
_080416D6:
	adds r1, r3, r5
	adds r0, r3, r4
	strb r2, [r0]
	strb r2, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x6f
	bls _080416D6
	ldr r0, [r6]
	bl sub_8020698
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r5, #0
	movs r4, #0
	movs r2, #0
	ldr r0, [r6]
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041784
	cmp r0, #0x24
	beq _08041784
	mov sl, r6
	ldr r1, _08041740
	mov ip, r1
_0804170C:
	mov r6, sl
	ldr r0, [r6]
	adds r0, r0, r3
	ldrb r1, [r0]
	lsls r0, r1, #0x18
	cmp r0, #0
	bge _08041748
	mov r6, ip
	adds r0, r4, r6
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _08041756
	.align 2, 0
_08041730: .4byte gLanguage
_08041734: .4byte 0x00000145
_08041738: .4byte 0x00000303
_0804173C: .4byte gCardInfo
_08041740: .4byte 0x0201EE70
_08041744: .4byte 0x0201EEE0
_08041748:
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _08041756
	cmp r2, #0x1b
	bhi _08041756
	adds r5, r4, #0
	mov sb, r2
_08041756:
	mov r0, ip
	adds r1, r4, r0
	mov r6, sl
	ldr r0, [r6]
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r6]
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041784
	cmp r0, #0x24
	bne _0804170C
_08041784:
	cmp r2, r8
	bls _080417D4
	ldr r1, _080417CC
	adds r2, r5, r1
	movs r0, #0
	strb r0, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r6, _080417D0
	adds r0, r6, #0
	bl strcpy
	mov r2, sb
	cmp r2, #0x1b
	bhi _080417BC
	adds r3, r6, #0
	movs r1, #0x20
_080417A8:
	adds r0, r5, r3
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1b
	bls _080417A8
_080417BC:
	ldr r0, _080417D0
	adds r0, r5, r0
	ldr r1, _080417CC
	adds r1, r4, r1
	bl strcpy
	b _080417DC
	.align 2, 0
_080417CC: .4byte 0x0201EE70
_080417D0: .4byte 0x0201EEE0
_080417D4:
	ldr r0, _08041804
	ldr r1, _08041808
	bl strcpy
_080417DC:
	ldr r1, _08041804
	ldrb r4, [r7, #0x1c]
	adds r2, r4, r1
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _08041810
	ldr r1, _0804180C
	ldrb r0, [r2]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r3, [r0, #1]
	lsls r3, r3, #8
	ldrb r0, [r0]
	orrs r3, r0
	adds r0, r4, #1
	b _0804181E
	.align 2, 0
_08041804: .4byte 0x0201EEE0
_08041808: .4byte 0x0201EE70
_0804180C: .4byte gUnk_8E00E30
_08041810:
	adds r0, r4, #1
	adds r0, r0, r1
	ldrb r3, [r0]
	lsls r3, r3, #8
	ldrb r0, [r2]
	orrs r3, r0
	adds r0, r4, #2
_0804181E:
	strb r0, [r7, #0x1c]
	ldr r1, [r7, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041844
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _0804183C
	adds r0, r0, r1
	ldr r2, _08041840
	adds r1, r3, #0
	bl sub_8020968
	b _08041854
	.align 2, 0
_0804183C: .4byte 0x02008CC0
_08041840: .4byte 0x00000101
_08041844:
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _08041878
	adds r0, r0, r1
	ldr r2, _0804187C
	adds r1, r3, #0
	bl sub_8020968
_08041854:
	ldr r0, [r7, #4]
	adds r0, #1
	str r0, [r7, #4]
	ldr r1, _08041880
	ldrb r0, [r7, #0x1c]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041868
	strb r0, [r7, #8]
_08041868:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041878: .4byte 0x02008CA0
_0804187C: .4byte 0x00000101
_08041880: .4byte 0x0201EEE0

	THUMB_FUNC_START sub_8041884
sub_8041884: @ 0x08041884
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _080418B0
	ldrb r5, [r4, #0x1c]
	adds r2, r5, r1
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _080418B8
	ldr r1, _080418B4
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
	b _080418C6
	.align 2, 0
_080418B0: .4byte gPlayerName
_080418B4: .4byte gUnk_8E00E30
_080418B8:
	adds r0, r5, #1
	adds r0, r0, r1
	ldrb r3, [r0]
	lsls r3, r3, #8
	ldrb r0, [r2]
	orrs r3, r0
	adds r0, r5, #2
_080418C6:
	strb r0, [r4, #0x1c]
	ldr r1, [r4, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080418EC
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _080418E4
	adds r0, r0, r1
	ldr r2, _080418E8
	adds r1, r3, #0
	bl sub_8020968
	b _080418FC
	.align 2, 0
_080418E4: .4byte 0x02008CC0
_080418E8: .4byte 0x00000101
_080418EC:
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _08041918
	adds r0, r0, r1
	ldr r2, _0804191C
	adds r1, r3, #0
	bl sub_8020968
_080418FC:
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	ldr r1, _08041920
	ldrb r0, [r4, #0x1c]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041910
	strb r0, [r4, #8]
_08041910:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041918: .4byte 0x02008CA0
_0804191C: .4byte 0x00000101
_08041920: .4byte gPlayerName

	THUMB_FUNC_START sub_8041924
sub_8041924: @ 0x08041924
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	bne _08041950
	ldrh r0, [r5, #0x12]
	movs r1, #0
	bl sub_800DDA0
	ldr r1, _0804193C
	b _08041946
	.align 2, 0
_0804193C: .4byte 0x02021BD0
_08041940:
	ldrb r0, [r5, #0x1c]
	adds r0, #1
	strb r0, [r5, #0x1c]
_08041946:
	ldrb r0, [r5, #0x1c]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08041940
_08041950:
	ldr r1, [r5, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041994
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _08041984
	adds r0, r0, r1
	ldr r4, _08041988
	ldr r2, _0804198C
	ldrb r1, [r5, #0x1c]
	adds r1, r1, r2
	ldrb r2, [r1]
	lsls r2, r2, #1
	adds r1, r2, #1
	adds r1, r1, r4
	ldrb r3, [r1]
	lsls r3, r3, #8
	adds r2, r2, r4
	ldrb r1, [r2]
	orrs r1, r3
	ldr r2, _08041990
	bl sub_8020968
	b _080419BC
	.align 2, 0
_08041984: .4byte 0x02008CC0
_08041988: .4byte 0x08E0D1D0
_0804198C: .4byte 0x02021BD0
_08041990: .4byte 0x00000101
_08041994:
	lsrs r0, r1, #1
	lsls r0, r0, #7
	ldr r1, _080419DC
	adds r0, r0, r1
	ldr r4, _080419E0
	ldr r2, _080419E4
	ldrb r1, [r5, #0x1c]
	adds r1, r1, r2
	ldrb r2, [r1]
	lsls r2, r2, #1
	adds r1, r2, #1
	adds r1, r1, r4
	ldrb r3, [r1]
	lsls r3, r3, #8
	adds r2, r2, r4
	ldrb r1, [r2]
	orrs r1, r3
	ldr r2, _080419E8
	bl sub_8020968
_080419BC:
	ldr r0, [r5, #4]
	adds r0, #1
	str r0, [r5, #4]
	ldrb r0, [r5, #0x1c]
	adds r0, #1
	strb r0, [r5, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bne _080419D4
	movs r0, #0
	strb r0, [r5, #8]
_080419D4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080419DC: .4byte 0x02008CA0
_080419E0: .4byte 0x08E0D1D0
_080419E4: .4byte 0x02021BD0
_080419E8: .4byte 0x00000101

	THUMB_FUNC_START sub_80419EC
sub_80419EC: @ 0x080419EC
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r6, [sp, #0x30]
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	mov r4, sp
	strb r5, [r4, #8]
	str r0, [sp, #0xc]
	mov r0, sp
	movs r4, #0
	strh r5, [r0, #0x10]
	strb r4, [r0, #0x1c]
	strh r1, [r0, #0x14]
	strh r2, [r0, #0x16]
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	movs r4, #0
_08041A10:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08041A88
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _08041A8C
	adds r1, r1, r5
	ldr r2, _08041A90
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x11
	bls _08041A10
	ldr r1, _08041A94
	adds r0, r5, r1
	ldr r1, _08041A98
	ldr r2, _08041A9C
	bl sub_8020A3C
	ldr r2, _08041AA0
	adds r0, r5, r2
	ldr r1, _08041AA4
	ldr r2, _08041AA8
	bl sub_8020A3C
	bl sub_8008220
	bl sub_8041014
	ldr r1, _08041AAC
	movs r0, #0x1e
	strh r0, [r1]
	subs r1, #8
	ldr r2, _08041AB0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08041AB4
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_8008220
	ldr r1, _08041AB8
	movs r0, #0x36
	strb r0, [r1]
	adds r1, #0xb
	movs r0, #7
	strh r0, [r1]
	subs r1, #0x54
	movs r2, #0xec
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	mov r4, sp
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	b _08041B26
	.align 2, 0
_08041A88: .4byte 0x080F2C30
_08041A8C: .4byte 0x0200EC00
_08041A90: .4byte 0x04000010
_08041A94: .4byte 0xFFFF9FA0
_08041A98: .4byte 0x08E0D14C
_08041A9C: .4byte 0x00000801
_08041AA0: .4byte 0xFFFFA0A0
_08041AA4: .4byte 0x08E0D15D
_08041AA8: .4byte 0x00000101
_08041AAC: .4byte 0x0400004A
_08041AB0: .4byte 0x000003ED
_08041AB4: .4byte 0x0000438D
_08041AB8: .4byte 0x04000049
_08041ABC:
	ldrb r0, [r4, #8]
	cmp r0, #6
	bhi _08041B1A
	lsls r0, r0, #2
	ldr r1, _08041ACC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041ACC: .4byte _08041AD0
_08041AD0: @ jump table
	.4byte _08041AEC @ case 0
	.4byte _08041AF4 @ case 1
	.4byte _08041B04 @ case 2
	.4byte _08041B1A @ case 3
	.4byte _08041B0C @ case 4
	.4byte _08041B14 @ case 5
	.4byte _08041AFC @ case 6
_08041AEC:
	adds r0, r4, #0
	bl sub_8041284
	b _08041B1A
_08041AF4:
	adds r0, r4, #0
	bl sub_80415B8
	b _08041B1A
_08041AFC:
	adds r0, r4, #0
	bl sub_8041C68
	b _08041B1A
_08041B04:
	adds r0, r4, #0
	bl sub_8041690
	b _08041B1A
_08041B0C:
	adds r0, r4, #0
	bl sub_8041884
	b _08041B1A
_08041B14:
	adds r0, r4, #0
	bl sub_8041924
_08041B1A:
	bl sub_8008220
	bl sub_8041014
	ldr r0, [r4, #0xc]
	ldr r1, [r4]
_08041B26:
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041ABC
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8041B38
sub_8041B38: @ 0x08041B38
	push {r4, r5, lr}
	movs r4, #0
_08041B3C:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08041BB4
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r5, _08041BB8
	adds r1, r1, r5
	ldr r2, _08041BBC
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x11
	bls _08041B3C
	ldr r1, _08041BC0
	adds r0, r5, r1
	ldr r1, _08041BC4
	ldr r2, _08041BC8
	bl sub_8020A3C
	ldr r2, _08041BCC
	adds r0, r5, r2
	ldr r1, _08041BD0
	ldr r2, _08041BD4
	bl sub_8020A3C
	bl sub_8008220
	bl sub_8041014
	ldr r1, _08041BD8
	movs r0, #0x1e
	strh r0, [r1]
	subs r1, #8
	ldr r2, _08041BDC
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08041BE0
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_8008220
	ldr r1, _08041BE4
	movs r0, #0x36
	strb r0, [r1]
	adds r1, #0xb
	movs r0, #7
	strh r0, [r1]
	subs r1, #0x54
	movs r2, #0xec
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041BB4: .4byte 0x080F2C30
_08041BB8: .4byte 0x0200EC00
_08041BBC: .4byte 0x04000010
_08041BC0: .4byte 0xFFFF9FA0
_08041BC4: .4byte 0x08E0D14C
_08041BC8: .4byte 0x00000801
_08041BCC: .4byte 0xFFFFA0A0
_08041BD0: .4byte 0x08E0D15D
_08041BD4: .4byte 0x00000101
_08041BD8: .4byte 0x0400004A
_08041BDC: .4byte 0x000003ED
_08041BE0: .4byte 0x0000438D
_08041BE4: .4byte 0x04000049

	THUMB_FUNC_START sub_8041BE8
sub_8041BE8: @ 0x08041BE8
	push {r4, lr}
	adds r4, r0, #0
	b _08041C56
_08041BEE:
	ldrb r0, [r4, #8]
	cmp r0, #6
	bhi _08041C4E
	lsls r0, r0, #2
	ldr r1, _08041C00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041C00: .4byte _08041C04
_08041C04: @ jump table
	.4byte _08041C20 @ case 0
	.4byte _08041C28 @ case 1
	.4byte _08041C38 @ case 2
	.4byte _08041C4E @ case 3
	.4byte _08041C40 @ case 4
	.4byte _08041C48 @ case 5
	.4byte _08041C30 @ case 6
_08041C20:
	adds r0, r4, #0
	bl sub_8041284
	b _08041C4E
_08041C28:
	adds r0, r4, #0
	bl sub_80415B8
	b _08041C4E
_08041C30:
	adds r0, r4, #0
	bl sub_8041C68
	b _08041C4E
_08041C38:
	adds r0, r4, #0
	bl sub_8041690
	b _08041C4E
_08041C40:
	adds r0, r4, #0
	bl sub_8041884
	b _08041C4E
_08041C48:
	adds r0, r4, #0
	bl sub_8041924
_08041C4E:
	bl sub_8008220
	bl sub_8041014
_08041C56:
	ldr r0, [r4, #0xc]
	ldr r1, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041BEE
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8041C68
sub_8041C68: @ 0x08041C68
	push {lr}
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	movs r1, #0
	str r1, [r0, #4]
	movs r2, #0
	strh r1, [r0, #0x10]
	strb r2, [r0, #8]
	ldr r0, _08041C88
	ldr r1, _08041C8C
	ldr r2, _08041C90
	bl sub_8020A3C
	pop {r0}
	bx r0
	.align 2, 0
_08041C88: .4byte 0x02008CA0
_08041C8C: .4byte 0x08E0D15D
_08041C90: .4byte 0x00000101

	THUMB_FUNC_START sub_8041C94
sub_8041C94: @ 0x08041C94
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r6, [sp, #0x30]
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	mov r4, sp
	strb r5, [r4, #8]
	str r0, [sp, #0xc]
	mov r0, sp
	movs r4, #0
	strh r5, [r0, #0x10]
	strb r4, [r0, #0x1c]
	strh r1, [r0, #0x14]
	strh r2, [r0, #0x16]
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	bl sub_8041B38
	mov r0, sp
	bl sub_8041BE8
	bl sub_8041104
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8041CCC
sub_8041CCC: @ 0x08041CCC
	push {r4, lr}
	sub sp, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08041D10
	lsls r2, r0, #2
	adds r2, r2, r3
	ldr r4, [r2]
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r2, sp
	strb r3, [r2, #8]
	str r4, [sp, #0xc]
	movs r4, #0
	strh r3, [r2, #0x10]
	strb r4, [r2, #0x1c]
	strh r0, [r2, #0x14]
	mov r0, sp
	strh r1, [r0, #0x16]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	bl sub_8041B38
	mov r0, sp
	bl sub_8041BE8
	bl sub_8041104
	add sp, #0x20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041D10: .4byte 0x08F1B80C

	THUMB_FUNC_START sub_8041D14
sub_8041D14: @ 0x08041D14
	push {r4, lr}
	sub sp, #0x20
	ldr r2, _08041D50
	ldr r4, [r2]
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r2, sp
	strb r3, [r2, #8]
	str r4, [sp, #0xc]
	movs r4, #0
	strh r3, [r2, #0x10]
	strb r4, [r2, #0x1c]
	strh r0, [r2, #0x14]
	mov r0, sp
	strh r1, [r0, #0x16]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	bl sub_8041B38
	mov r0, sp
	bl sub_8041BE8
	bl sub_8041104
	add sp, #0x20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041D50: .4byte 0x08E0D584

	THUMB_FUNC_START sub_8041D54
sub_8041D54: @ 0x08041D54
	push {lr}
	bl sub_8041104
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8041D60
sub_8041D60: @ 0x08041D60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08041D70
	ldr r1, _08041D74
	adds r0, r0, r1
	ldrb r0, [r0]
	strh r0, [r2]
	bx lr
	.align 2, 0
_08041D70: .4byte gBG2VOFS
_08041D74: .4byte 0x08E0D5A1

	THUMB_FUNC_START sub_8041D78
sub_8041D78: @ 0x08041D78
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, _08041DE4
	ldrh r2, [r3]
	ldr r1, _08041DE8
	lsls r0, r7, #1
	adds r1, r0, r1
	movs r4, #0
	ldrsh r0, [r1, r4]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	cmp r2, r0
	ble _08041DC0
	adds r4, r3, #0
	adds r5, r1, #0
	ldr r0, _08041DEC
	adds r6, r0, #0
_08041D9E:
	ldrh r1, [r4]
	adds r0, r6, r1
	strh r0, [r4]
	bl sub_8057808
	bl sub_8008220
	bl sub_8040FDC
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	cmp r1, r0
	bgt _08041D9E
_08041DC0:
	ldr r2, _08041DE4
	ldr r1, _08041DE8
	lsls r0, r7, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_8057808
	bl sub_804078C
	bl sub_8008220
	bl sub_8040FDC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041DE4: .4byte gBG2VOFS
_08041DE8: .4byte 0x08E0D5A6
_08041DEC: .4byte 0xFFFFFF00

	THUMB_FUNC_START sub_8041DF0
sub_8041DF0: @ 0x08041DF0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, _08041E58
	ldrh r2, [r3]
	ldr r1, _08041E5C
	lsls r0, r7, #1
	adds r1, r0, r1
	movs r4, #0
	ldrsh r0, [r1, r4]
	ldr r4, _08041E60
	adds r0, r0, r4
	cmp r2, r0
	bge _08041E36
	adds r4, r3, #0
	adds r5, r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r6, r0, #0
_08041E16:
	ldrh r1, [r4]
	adds r0, r6, r1
	strh r0, [r4]
	bl sub_8057808
	bl sub_8008220
	bl sub_8040FDC
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldr r2, _08041E60
	adds r0, r0, r2
	cmp r1, r0
	blt _08041E16
_08041E36:
	ldr r2, _08041E58
	ldr r1, _08041E5C
	lsls r0, r7, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_8057808
	bl sub_804078C
	bl sub_8008220
	bl sub_8040FDC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041E58: .4byte gBG2VOFS
_08041E5C: .4byte 0x08E0D5A6
_08041E60: .4byte 0xFFFFFF00

	THUMB_FUNC_START sub_8041E64
sub_8041E64: @ 0x08041E64
	ldr r1, _08041E6C
	movs r0, #4
	strb r0, [r1]
	bx lr
	.align 2, 0
_08041E6C: .4byte 0x020240E4

	THUMB_FUNC_START sub_8041E70
sub_8041E70: @ 0x08041E70
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldr r1, _08041E98
	strb r3, [r1]
	ldr r2, _08041E9C
	lsls r1, r0, #2
	adds r1, r1, r0
	adds r1, r3, r1
	adds r1, r1, r2
	ldrb r0, [r1]
	cmp r0, #1
	beq _08041EB4
	cmp r0, #1
	bgt _08041EA0
	cmp r0, #0
	beq _08041EA6
	b _08041EC2
	.align 2, 0
_08041E98: .4byte 0x020240E4
_08041E9C: .4byte 0x08E0D588
_08041EA0:
	cmp r0, #2
	beq _08041EBC
	b _08041EC2
_08041EA6:
	bl sub_804078C
	bl sub_8008220
	bl sub_8040FDC
	b _08041EC2
_08041EB4:
	adds r0, r3, #0
	bl sub_8041D78
	b _08041EC2
_08041EBC:
	adds r0, r3, #0
	bl sub_8041DF0
_08041EC2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8041EC8
sub_8041EC8: @ 0x08041EC8
	push {r4, r5, lr}
	ldr r5, _08041F18
	ldrb r0, [r5, #1]
	ldrb r1, [r5]
	bl sub_8044074
	cmp r0, #1
	bne _08041F28
	ldr r4, _08041F1C
	ldr r2, _08041F20
	ldrb r1, [r5, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _08041F24
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldrb r1, [r5, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl SetFinalStat
	b _08041F2E
	.align 2, 0
_08041F18: .4byte gCursorPosition
_08041F1C: .4byte gStatMod
_08041F20: .4byte gUnk2024040
_08041F24: .4byte gDuel
_08041F28:
	movs r0, #0
	bl SetCardInfo
_08041F2E:
	bl sub_8041F48
	bl sub_80420C0
	bl sub_8041FE4
	bl sub_8042144
	bl sub_8042184
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8041F48
sub_8041F48: @ 0x08041F48
	push {r4, r5, r6, lr}
	sub sp, #0x20
	movs r4, #0
	ldr r5, _08041F7C
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r6, r5, r0
_08041F56:
	lsls r1, r4, #5
	adds r1, r1, r6
	adds r0, r5, #0
	movs r2, #0x10
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _08041F56
	ldr r0, _08041F80
	ldr r0, [r0]
	bl sub_8020824
	adds r2, r0, #0
	movs r4, #0
	movs r3, #0
	b _08041FB6
	.align 2, 0
_08041F7C: .4byte 0x02008400
_08041F80: .4byte gCardInfo
_08041F84:
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _08041F9C
	mov r5, sp
	adds r0, r5, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, #1
_08041F9C:
	mov r0, sp
	adds r1, r0, r4
	ldrb r0, [r2]
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, #1
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xe
	bhi _08041FC0
_08041FB6:
	ldrb r0, [r2]
	cmp r0, #0
	beq _08041FC0
	cmp r0, #0x24
	bne _08041F84
_08041FC0:
	mov r5, sp
	adds r1, r5, r4
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08041FDC
	ldr r2, _08041FE0
	mov r1, sp
	bl sub_8020A3C
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08041FDC: .4byte 0x020085E0
_08041FE0: .4byte 0x00000801

	THUMB_FUNC_START sub_8041FE4
sub_8041FE4: @ 0x08041FE4
	push {r4, r5, lr}
	movs r5, #0
	ldr r4, _0804200C
	ldrh r0, [r4, #0x12]
	movs r1, #0
	bl sub_800DDA0
	ldrh r1, [r4, #0x12]
	ldr r0, _08042010
	cmp r1, r0
	beq _0804203C
	ldr r0, _08042014
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0804203C
	movs r5, #1
	ldr r0, _08042018
	bl CopySwordTileToBuffer
	b _0804203C
	.align 2, 0
_0804200C: .4byte gCardInfo
_08042010: .4byte 0x0000FFFF
_08042014: .4byte 0x02021BD0
_08042018: .4byte 0x020087C0
_0804201C:
	lsls r0, r5, #5
	ldr r1, _08042068
	adds r0, r0, r1
	ldr r1, _0804206C
	adds r1, r5, r1
	ldrb r1, [r1]
	lsls r1, r1, #1
	ldr r2, _08042070
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _08042074
	bl sub_8020968
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0804203C:
	cmp r5, #4
	bls _0804201C
	movs r5, #0
	ldr r4, _08042078
	ldrh r0, [r4, #0x14]
	movs r1, #0
	bl sub_800DDA0
	ldrh r1, [r4, #0x14]
	ldr r0, _0804207C
	cmp r1, r0
	beq _080420A4
	ldr r0, _0804206C
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _080420A4
	movs r5, #1
	ldr r0, _08042080
	bl CopyShieldTileToBuffer
	b _080420A4
	.align 2, 0
_08042068: .4byte 0x020087C0
_0804206C: .4byte 0x02021BD0
_08042070: .4byte 0x08E0D5B0
_08042074: .4byte 0x00000801
_08042078: .4byte gCardInfo
_0804207C: .4byte 0x0000FFFF
_08042080: .4byte 0x02008860
_08042084:
	lsls r0, r5, #5
	ldr r1, _080420B0
	adds r0, r0, r1
	ldr r1, _080420B4
	adds r1, r5, r1
	ldrb r1, [r1]
	lsls r1, r1, #1
	ldr r2, _080420B8
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _080420BC
	bl sub_8020968
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080420A4:
	cmp r5, #4
	bls _08042084
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080420B0: .4byte 0x02008860
_080420B4: .4byte 0x02021BD0
_080420B8: .4byte 0x08E0D5B0
_080420BC: .4byte 0x00000801

	THUMB_FUNC_START sub_80420C0
sub_80420C0: @ 0x080420C0
	push {r4, lr}
	ldr r4, _08042100
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _08042114
	ldr r0, _08042104
	bl CopyStarTileToBuffer
	ldrb r0, [r4, #0x18]
	movs r1, #1
	bl sub_800DDA0
	movs r2, #0
_080420DA:
	adds r4, r2, #1
	lsls r0, r4, #5
	ldr r1, _08042104
	adds r0, r0, r1
	ldr r1, _08042108
	adds r1, r2, r1
	ldrb r1, [r1]
	lsls r1, r1, #1
	ldr r2, _0804210C
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _08042110
	bl sub_8020968
	lsls r4, r4, #0x18
	lsrs r2, r4, #0x18
	cmp r2, #1
	bls _080420DA
	b _0804213A
	.align 2, 0
_08042100: .4byte gCardInfo
_08042104: .4byte 0x02008440
_08042108: .4byte 0x02021BD0
_0804210C: .4byte 0x08E0D5B0
_08042110: .4byte 0x00000801
_08042114:
	ldr r4, _08042140
	adds r1, r4, #0
	adds r1, #0x40
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuSet
	adds r1, r4, #0
	adds r1, #0x60
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuSet
	adds r1, r4, #0
	adds r1, #0x80
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuSet
_0804213A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08042140: .4byte 0x02008400

	THUMB_FUNC_START sub_8042144
sub_8042144: @ 0x08042144
	push {r4, r5, r6, lr}
	ldr r6, _08042178
	ldrb r0, [r6, #0x17]
	ldr r4, _0804217C
	adds r1, r4, #0
	bl CopyAttributeIconTilesToBuffer
	ldrb r0, [r6, #0x17]
	ldr r5, _08042180
	adds r1, r5, #0
	bl CopyAttributeIconPalToBuffer
	ldrb r0, [r6, #0x16]
	subs r4, #0x80
	adds r1, r4, #0
	bl CopyTypeIconTilesToBuffer
	ldrb r0, [r6, #0x16]
	subs r5, #0x20
	adds r1, r5, #0
	bl CopyTypeIconPalToBuffer
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08042178: .4byte gCardInfo
_0804217C: .4byte 0x02008980
_08042180: .4byte 0x020000C0

	THUMB_FUNC_START sub_8042184
sub_8042184: @ 0x08042184
	push {lr}
	ldr r1, _080421A0
	ldrb r0, [r1, #1]
	ldrb r1, [r1]
	bl sub_80440B4
	cmp r0, #0
	bne _080421B0
	ldr r0, _080421A4
	ldr r1, _080421A8
	ldr r2, _080421AC
	bl sub_8020A3C
	b _080421BA
	.align 2, 0
_080421A0: .4byte gCursorPosition
_080421A4: .4byte 0x02008A00
_080421A8: .4byte 0x08E0D5C7
_080421AC: .4byte 0x00000801
_080421B0:
	ldr r0, _080421C0
	ldr r1, _080421C4
	ldr r2, _080421C8
	bl sub_8020A3C
_080421BA:
	pop {r0}
	bx r0
	.align 2, 0
_080421C0: .4byte 0x02008A00
_080421C4: .4byte 0x08E0D617
_080421C8: .4byte 0x00000801

	THUMB_FUNC_START sub_80421CC
sub_80421CC: @ 0x080421CC
	push {r4, r5, r6, lr}
	movs r4, #0
	movs r0, #0
	bl InitBMenu
	ldr r6, _080421F0
_080421D8:
	ldr r0, _080421F4
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080421FC
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _080421F8
	b _0804223E
	.align 2, 0
_080421F0: .4byte gStatMod
_080421F4: .4byte g2020DF4
_080421F8: .4byte 0x08E0D81A
_080421FC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042214
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _08042210
	b _0804223E
	.align 2, 0
_08042210: .4byte 0x08E0D81D
_08042214:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804222C
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _08042228
	b _0804223E
	.align 2, 0
_08042228: .4byte 0x08E0D820
_0804222C:
	movs r2, #0x20
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08042258
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _08042254
_0804223E:
	adds r0, r4, r0
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_80428EC
	bl sub_8008220
	bl sub_8041014
	b _080421D8
	.align 2, 0
_08042254: .4byte 0x08E0D823
_08042258:
	ldr r0, _08042278
	ldrh r1, [r0]
	movs r5, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08042268
	b _08042378
_08042268:
	cmp r4, #1
	beq _08042300
	cmp r4, #1
	bgt _0804227C
	cmp r4, #0
	beq _08042282
	b _0804238C
	.align 2, 0
_08042278: .4byte gUnk2020DFC
_0804227C:
	cmp r4, #2
	beq _08042314
	b _0804238C
_08042282:
	ldr r4, _080422F4
	ldrb r0, [r4, #1]
	ldrb r1, [r4]
	bl sub_8044074
	cmp r0, #1
	bne _0804236C
	ldr r5, _080422F8
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_803FCBC
	cmp r0, #0
	beq _0804236C
	movs r0, #0x37
	bl PlayMusic
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r6]
	ldr r0, _080422FC
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r6, #2]
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r6, #3]
	adds r0, r6, #0
	bl SetFinalStat
	bl sub_801F6B0
	bl sub_80410B4
	b _08042390
	.align 2, 0
_080422F4: .4byte gCursorPosition
_080422F8: .4byte gUnk2024040
_080422FC: .4byte gDuel
_08042300:
	movs r0, #0x37
	bl PlayMusic
	ldr r0, _08042310
	strb r5, [r0]
	bl sub_8041104
	b _08042390
	.align 2, 0
_08042310: .4byte 0x020240E0
_08042314:   @discard selection
	ldr r4, _08042364
	ldrb r0, [r4, #1]
	cmp r0, #1
	bls _0804236C
	ldr r5, _08042368
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r4]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r1, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804236C
	ldrb r1, [r1, #5]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0804236C
	movs r0, #0x3e
	bl PlayMusic
	ldrb r0, [r4, #1]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	movs r1, #0
	bl sub_8045314
	bl sub_8041104
	bl sub_8029820
	b _08042390
	.align 2, 0
_08042364: .4byte gCursorPosition
_08042368: .4byte gUnk2024040
_0804236C:
	movs r0, #0x39
	bl PlayMusic
	bl sub_8041104
	b _08042390
_08042378:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08042386
	bl sub_8008220
	b _080421D8
_08042386:
	movs r0, #0x38
	bl PlayMusic
_0804238C:
	bl sub_8041104
_08042390:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

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

	THUMB_FUNC_START HighestAtkMonInRow
HighestAtkMonInRow: @ 0x08042F44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	movs r7, #1
	rsbs r7, r7, #0
	movs r6, #0
	ldr r5, _08042F6C
	ldr r1, _08042F70
	mov sb, r1
_08042F5E:
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08042F74
	adds r4, #4
	lsls r0, r6, #0x18
	b _08042F9C
	.align 2, 0
_08042F6C: .4byte gStatMod
_08042F70: .4byte gDuel+0xF0
_08042F74:
	strh r0, [r5]
	mov r2, sb
	ldrb r0, [r2]
	strb r0, [r5, #2]
	adds r0, r1, #0
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl SetFinalStat
	ldr r0, _08042FBC
	ldrh r1, [r0, #0x12]
	lsls r0, r6, #0x18
	cmp r1, r7
	ble _08042F9A
	adds r7, r1, #0
	lsrs r1, r0, #0x18
	mov r8, r1
_08042F9A:
	adds r4, #4
_08042F9C:
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _08042F5E
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08042FBC: .4byte gCardInfo

	THUMB_FUNC_START HighestAtkMonInRowExceptGodCards
HighestAtkMonInRowExceptGodCards: @ 0x08042FC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	movs r7, #1
	rsbs r7, r7, #0
	movs r5, #0
	ldr r6, _08042FF4
	ldr r1, _08042FF8
	mov sb, r1
_08042FDA:
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08042FEC
	ldrh r0, [r1]
	bl IsGodCard
	cmp r0, #1
	bne _08042FFC
_08042FEC:
	adds r4, #4
	lsls r0, r5, #0x18
	b _08043026
	.align 2, 0
_08042FF4: .4byte gStatMod
_08042FF8: .4byte gDuel+0xF0
_08042FFC:
	ldr r0, [r4]
	ldrh r1, [r0]
	strh r1, [r6]
	mov r2, sb
	ldrb r1, [r2]
	strb r1, [r6, #2]
	bl sub_804069C
	strb r0, [r6, #3]
	adds r0, r6, #0
	bl SetFinalStat
	ldr r0, _08043048
	ldrh r1, [r0, #0x12]
	lsls r0, r5, #0x18
	cmp r1, r7
	ble _08043024
	adds r7, r1, #0
	lsrs r1, r0, #0x18
	mov r8, r1
_08043024:
	adds r4, #4
_08043026:
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _08042FDA
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08043048: .4byte gCardInfo

	THUMB_FUNC_START sub_804304C
sub_804304C: @ 0x0804304C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	movs r7, #1
	rsbs r7, r7, #0
	movs r5, #0
	ldr r6, _08043080
	ldr r1, _08043084
	mov sb, r1
_08043066:
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08043078
	adds r0, r1, #0
	bl IsCardLocked
	cmp r0, #1
	bne _08043088
_08043078:
	adds r4, #4
	lsls r0, r5, #0x18
	b _080430B2
	.align 2, 0
_08043080: .4byte gStatMod
_08043084: .4byte gDuel+0xF0
_08043088:
	ldr r0, [r4]
	ldrh r1, [r0]
	strh r1, [r6]
	mov r2, sb
	ldrb r1, [r2]
	strb r1, [r6, #2]
	bl sub_804069C
	strb r0, [r6, #3]
	adds r0, r6, #0
	bl SetFinalStat
	ldr r0, _080430D4
	ldrh r1, [r0, #0x12]
	lsls r0, r5, #0x18
	cmp r1, r7
	ble _080430B0
	adds r7, r1, #0
	lsrs r1, r0, #0x18
	mov r8, r1
_080430B0:
	adds r4, #4
_080430B2:
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _08043066
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080430D4: .4byte gCardInfo

	THUMB_FUNC_START sub_80430D8
sub_80430D8: @ 0x080430D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	movs r7, #1
	rsbs r7, r7, #0
	movs r5, #0
	ldr r6, _0804310C
	ldr r1, _08043110
	mov sb, r1
_080430F2:
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08043106
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043114
_08043106:
	adds r4, #4
	lsls r0, r5, #0x18
	b _0804313E
	.align 2, 0
_0804310C: .4byte gStatMod
_08043110: .4byte gDuel+0xF0
_08043114:
	ldr r0, [r4]
	ldrh r1, [r0]
	strh r1, [r6]
	mov r2, sb
	ldrb r1, [r2]
	strb r1, [r6, #2]
	bl sub_804069C
	strb r0, [r6, #3]
	adds r0, r6, #0
	bl SetFinalStat
	ldr r0, _08043160
	ldrh r1, [r0, #0x12]
	lsls r0, r5, #0x18
	cmp r1, r7
	ble _0804313C
	adds r7, r1, #0
	lsrs r1, r0, #0x18
	mov r8, r1
_0804313C:
	adds r4, #4
_0804313E:
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _080430F2
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08043160: .4byte gCardInfo

	THUMB_FUNC_START sub_8043164
sub_8043164: @ 0x08043164
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	movs r0, #0
	mov r8, r0
	movs r7, #1
	rsbs r7, r7, #0
	movs r5, #0
	ldr r6, _080431B4
	ldr r1, _080431B8
	mov sl, r1
_08043186:
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080431AC
	strh r0, [r6]
	mov r2, sl
	ldrb r0, [r2]
	strb r0, [r6, #2]
	adds r0, r1, #0
	bl sub_804069C
	strb r0, [r6, #3]
	adds r0, r6, #0
	bl SetFinalStat
	ldr r1, _080431BC
	ldrb r0, [r1, #0x16]
	cmp r0, sb
	beq _080431C0
_080431AC:
	adds r4, #4
	lsls r0, r5, #0x18
	b _080431D0
	.align 2, 0
_080431B4: .4byte gStatMod
_080431B8: .4byte gDuel+0xF0
_080431BC: .4byte gCardInfo
_080431C0:
	ldrh r1, [r1, #0x12]
	lsls r0, r5, #0x18
	cmp r1, r7
	ble _080431CE
	adds r7, r1, #0
	lsrs r1, r0, #0x18
	mov r8, r1
_080431CE:
	adds r4, #4
_080431D0:
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _08043186
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x00, 0x06, 0x00, 0x0E
	.byte 0x09, 0x04, 0x09, 0x0C, 0x88, 0x46, 0x00, 0x26, 0x00, 0x25, 0x19, 0x49, 0x89, 0x46, 0x19, 0x4C
	.byte 0x81, 0x00, 0x09, 0x18, 0x8F, 0x00, 0xA8, 0x00, 0xC0, 0x19, 0x49, 0x46, 0x43, 0x18, 0x18, 0x68
	.byte 0x02, 0x88, 0x00, 0x2A, 0x17, 0xD0, 0x41, 0x79, 0x10, 0x20, 0x08, 0x40, 0x00, 0x28, 0x12, 0xD0
	.byte 0x22, 0x80, 0x11, 0x48, 0xF0, 0x30, 0x00, 0x78, 0xA0, 0x70, 0x18, 0x68, 0xFD, 0xF7, 0x2E, 0xFA
	.byte 0xE0, 0x70, 0x20, 0x1C, 0xC8, 0xF7, 0x68, 0xF8, 0x0C, 0x48, 0x40, 0x8A, 0x40, 0x45, 0x02, 0xD3
	.byte 0x70, 0x1C, 0x00, 0x06, 0x06, 0x0E, 0x68, 0x1C, 0x00, 0x06, 0x05, 0x0E, 0x04, 0x2D, 0xDA, 0xD9
	.byte 0x30, 0x1C, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0xD0, 0x3F, 0x02, 0x02, 0xC0, 0x1A, 0x02, 0x02, 0xC0, 0x3E, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0x30, 0xB5, 0x00, 0x06, 0x00, 0x0E, 0x00, 0x24, 0x00, 0x23, 0x10, 0x4D, 0x81, 0x00, 0x09, 0x18
	.byte 0x89, 0x00, 0x98, 0x00, 0x40, 0x18, 0x40, 0x19, 0x02, 0x68, 0x10, 0x88, 0x00, 0x28, 0x0B, 0xD0
	.byte 0x52, 0x79, 0x10, 0x20, 0x10, 0x40, 0x00, 0x28, 0x06, 0xD0, 0x01, 0x20, 0x10, 0x40, 0x00, 0x28
	.byte 0x02, 0xD0, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x04, 0x2B
	.byte 0xE7, 0xD9, 0x20, 0x1C, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xD0, 0x3F, 0x02, 0x02

	THUMB_FUNC_START sub_80432D0
sub_80432D0: @ 0x080432D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r7, #0
	movs r6, #0
	ldr r1, _08043348
	mov sl, r1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	mov r8, r1
	ldr r5, _0804334C
	ldr r0, _08043350
	mov sb, r0
_080432F4:
	lsls r0, r6, #2
	add r0, r8
	mov r1, sl
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_803FCBC
	cmp r0, #1
	bne _0804332C
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r5]
	mov r1, sb
	ldrb r0, [r1]
	strb r0, [r5, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl SetFinalStat
	ldr r1, _08043354
	ldrh r0, [r1, #0x12]
	adds r0, r7, r0
	ldrh r1, [r1, #0x14]
	adds r7, r0, r1
_0804332C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _080432F4
	adds r0, r7, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08043348: .4byte gZones
_0804334C: .4byte gStatMod
_08043350: .4byte gDuel+0xF0
_08043354: .4byte gCardInfo

	THUMB_FUNC_START sub_8043358
sub_8043358: @ 0x08043358
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r7, #0
	movs r6, #0
	ldr r1, _080433D4
	mov sb, r1
	ldr r5, _080433D8
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	mov r8, r1
_08043376:
	lsls r0, r6, #2
	add r0, r8
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_803FCBC
	cmp r0, #1
	bne _080433BA
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080433BA
	ldrh r0, [r2]
	strh r0, [r5]
	ldr r0, _080433DC
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r5, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl SetFinalStat
	ldr r1, _080433E0
	ldrh r0, [r1, #0x12]
	adds r0, r7, r0
	ldrh r1, [r1, #0x14]
	adds r7, r0, r1
_080433BA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _08043376
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080433D4: .4byte gZones
_080433D8: .4byte gStatMod
_080433DC: .4byte gDuel
_080433E0: .4byte gCardInfo

	THUMB_FUNC_START NumCardInRow
NumCardInRow: @ 0x080433E4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	movs r2, #0
_080433F0:
	ldm r4!, {r0}
	ldrh r0, [r0]
	cmp r0, r1
	bne _08043402
	lsls r0, r3, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r3, r0, #0x18
_08043402:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _080433F0
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8043418
sub_8043418: @ 0x08043418
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r6, #0
	movs r5, #0
_08043428:
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	ldm r1!, {r0}
	ldrh r4, [r0]
	adds r0, r4, #0
	bl IsGodCard
	cmp r0, #1
	bne _08043440
	movs r4, #0
_08043440:
	cmp r4, r7
	bne _0804344E
	lsls r0, r6, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r6, r0, #0x18
_0804344E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08043428
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8043468
sub_8043468: @ 0x08043468
	adds r2, r0, #0
	movs r1, #0
_0804346C:
	ldm r2!, {r0}
	ldrh r0, [r0]
	cmp r0, #0
	beq _0804347A
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	b _0804348C
_0804347A:
	lsls r0, r1, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _0804346C
	movs r0, #0
_0804348C:
	bx lr
	.byte 0x00, 0x00
	.byte 0x01, 0x1C, 0x04, 0x22, 0x08, 0x68, 0x00, 0x88, 0x04, 0x39, 0x00, 0x28, 0x02, 0xD0, 0x10, 0x06
	.byte 0x00, 0x16, 0x07, 0xE0, 0x10, 0x06, 0xFF, 0x22, 0x12, 0x06, 0x80, 0x18, 0x02, 0x0E, 0x00, 0x28
	.byte 0xF0, 0xDA, 0x04, 0x20, 0x70, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x04, 0x1C, 0x00, 0x25, 0x01, 0xCC
	.byte 0x00, 0x88, 0x00, 0x28, 0x08, 0xD0, 0x01, 0xCC, 0x00, 0x88, 0xE2, 0xF7, 0xD7, 0xFD, 0x01, 0x28
	.byte 0x02, 0xD0, 0x28, 0x06, 0x00, 0x16, 0x08, 0xE0, 0x28, 0x06, 0x80, 0x21, 0x49, 0x04, 0x40, 0x18
	.byte 0x05, 0x0E, 0x00, 0x16, 0x04, 0x28, 0xEA, 0xDD, 0x00, 0x20, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x30, 0xB5, 0x04, 0x1C, 0x04, 0x25, 0x20, 0x68, 0x00, 0x88, 0x04, 0x3C, 0x00, 0x28, 0x08, 0xD0
	.byte 0x01, 0xCC, 0x00, 0x88, 0xE2, 0xF7, 0xBA, 0xFD, 0x01, 0x28, 0x02, 0xD0, 0x28, 0x06, 0x00, 0x16
	.byte 0x07, 0xE0, 0x28, 0x06, 0xFF, 0x21, 0x09, 0x06, 0x40, 0x18, 0x05, 0x0E, 0x00, 0x28, 0xEA, 0xDA
	.byte 0x04, 0x20, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START NumEmptyZonesInRow
NumEmptyZonesInRow: @ 0x08043528
	push {lr}
	movs r1, #0
	bl NumCardInRow
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	pop {r1}
	bx r1

	THUMB_FUNC_START NumEmptyZonesAndGodCardsInRow
NumEmptyZonesAndGodCardsInRow: @ 0x08043538
	push {lr}
	movs r1, #0
	bl sub_8043418
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8043548
sub_8043548: @ 0x08043548
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0
	movs r3, #0
	movs r5, #1
_08043552:
	ldr r1, [r2]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804356E
	ldrb r1, [r1, #5]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0804356E
	lsls r0, r4, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r4, r0, #0x18
_0804356E:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08043552
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8043584
sub_8043584: @ 0x08043584
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r6, #0
	movs r5, #0
_08043590:
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080435AE
	bl SetCardInfo
	ldr r0, _080435C4
	ldrb r0, [r0, #0x16]
	cmp r0, r7
	bne _080435AE
	lsls r0, r6, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r6, r0, #0x18
_080435AE:
	adds r4, #4
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08043590
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080435C4: .4byte gCardInfo

	THUMB_FUNC_START EmptyZoneInRow
EmptyZoneInRow: @ 0x080435C8
	adds r2, r0, #0
	movs r1, #0
_080435CC:
	ldm r2!, {r0}
	ldrh r0, [r0]
	cmp r0, #0
	bne _080435DA
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	b _080435E6
_080435DA:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _080435CC
	movs r0, #0
_080435E6:
	bx lr
	.byte 0x02, 0x1C, 0x05, 0x21, 0x10, 0x68, 0x00, 0x88
	.byte 0x04, 0x3A, 0x00, 0x28, 0x03, 0xD1, 0x48, 0x1E, 0x00, 0x06, 0x00, 0x16, 0x05, 0xE0, 0x48, 0x1E
	.byte 0x00, 0x06, 0x01, 0x0E, 0x00, 0x29, 0xF1, 0xD1, 0x00, 0x20, 0x70, 0x47

	THUMB_FUNC_START sub_804360C
sub_804360C: @ 0x0804360C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_08043612:
	ldm r5!, {r0}
	ldrh r0, [r0]
	bl sub_803FCBC
	cmp r0, #1
	bne _08043624
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	b _08043636
_08043624:
	lsls r0, r4, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r4, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _08043612
	movs r0, #0
_08043636:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_804363C
sub_804363C: @ 0x0804363C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #4
_08043642:
	ldr r0, [r4]
	ldrh r0, [r0]
	subs r4, #4
	bl sub_803FCBC
	cmp r0, #1
	bne _08043656
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	b _08043666
_08043656:
	lsls r0, r5, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	cmp r0, #0
	bge _08043642
	movs r0, #4
_08043666:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_804366C
sub_804366C: @ 0x0804366C
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
_08043674:
	ldm r3!, {r0}
	ldrh r0, [r0]
	cmp r0, r1
	bne _08043680
	movs r0, #1
	b _08043692
_08043680:
	lsls r0, r2, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _08043674
	movs r0, #0
_08043692:
	bx lr

	THUMB_FUNC_START sub_8043694
sub_8043694: @ 0x08043694
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
_0804369C:
	ldm r3!, {r0}
	ldrh r0, [r0]
	cmp r0, r1
	bne _080436AA
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	b _080436BC
_080436AA:
	lsls r0, r2, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _0804369C
	movs r0, #0
_080436BC:
	bx lr
	.byte 0x00, 0x00
	.byte 0x02, 0x1C, 0x09, 0x04, 0x09, 0x0C, 0x00, 0x23, 0x10, 0x68, 0x00, 0x88, 0x04, 0x3A, 0x88, 0x42
	.byte 0x02, 0xD1, 0x18, 0x06, 0x00, 0x16, 0x08, 0xE0, 0x18, 0x06, 0x80, 0x23, 0x5B, 0x04, 0xC0, 0x18
	.byte 0x03, 0x0E, 0x00, 0x16, 0x04, 0x28, 0xEF, 0xDD, 0x00, 0x20, 0x70, 0x47

	THUMB_FUNC_START sub_80436EC
sub_80436EC: @ 0x080436EC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0804370C
	bl sub_803FCBC
	adds r1, r0, #0
	cmp r1, #1
	bne _0804370C
	ldrb r0, [r4, #5]
	ands r1, r0
	cmp r1, #0
	bne _0804370C
	movs r5, #1
_0804370C:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8043714
sub_8043714: @ 0x08043714
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _08043740
	bl SetCardInfo
	ldr r0, _08043748
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _08043740
	ldrb r1, [r4, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08043740
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08043740
	movs r5, #1
_08043740:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08043748: .4byte gCardInfo

	THUMB_FUNC_START sub_804374C
sub_804374C: @ 0x0804374C
	push {r4, lr}
	adds r1, r0, #0
	movs r4, #0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08043762
	bl sub_803FCBC
	cmp r0, #3
	bne _08043762
	movs r4, #1
_08043762:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804376C
sub_804376C: @ 0x0804376C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrh r0, [r4]
	bl sub_803FCBC
	cmp r0, #2
	bne _08043788
	ldrh r0, [r4]
	bl sub_803FCEC
	cmp r0, #1
	bne _08043788
	movs r5, #1
_08043788:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8043790
sub_8043790: @ 0x08043790
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrh r0, [r4]
	bl sub_803FCBC
	cmp r0, #2
	bne _080437AC
	ldrh r0, [r4]
	bl sub_803FCEC
	cmp r0, #0
	bne _080437AC
	movs r5, #1
_080437AC:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80437B4
sub_80437B4: @ 0x080437B4
	push {r4, lr}
	adds r1, r0, #0
	movs r4, #0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080437CA
	bl sub_803FCBC
	cmp r0, #4
	bne _080437CA
	movs r4, #1
_080437CA:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80437D4
sub_80437D4: @ 0x080437D4
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0
	movs r2, #0
	ldr r4, _0804380C
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
_080437E6:
	lsls r0, r2, #2
	adds r0, r0, r1
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080437FA
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080437FA:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _080437E6
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804380C: .4byte gZones

	THUMB_FUNC_START sub_8043810
sub_8043810: @ 0x08043810
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0
	movs r2, #0
	ldr r6, _08043854
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r4, r1, #2
	movs r5, #0x10
_08043824:
	lsls r0, r2, #2
	adds r0, r0, r4
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08043842
	ldrb r1, [r1, #5]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08043842
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08043842:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _08043824
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08043854: .4byte gZones
	.byte 0x70, 0xB5, 0x00, 0x06, 0x00, 0x0E, 0x00, 0x23
	.byte 0x00, 0x22, 0x0E, 0x4E, 0x81, 0x00, 0x09, 0x18, 0x8C, 0x00, 0x10, 0x25, 0x90, 0x00, 0x00, 0x19
	.byte 0x80, 0x19, 0x01, 0x68, 0x08, 0x88, 0x00, 0x28, 0x07, 0xD0, 0x49, 0x79, 0x28, 0x1C, 0x08, 0x40
	.byte 0x00, 0x28, 0x02, 0xD1, 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x50, 0x1C, 0x00, 0x06, 0x02, 0x0E
	.byte 0x04, 0x2A, 0xEB, 0xD9, 0x18, 0x1C, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xD0, 0x3F, 0x02, 0x02

	THUMB_FUNC_START sub_80438A0
sub_80438A0: @ 0x080438A0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r5, #0
	movs r4, #0
	ldr r7, _080438E0
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r6, r1, #2
_080438B2:
	lsls r0, r4, #2
	adds r0, r0, r6
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _080438E4
	ldrb r0, [r0, #0x1a]
	cmp r0, #2
	bne _080438CE
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080438CE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080438B2
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080438E0: .4byte gZones
_080438E4: .4byte gCardInfo

	THUMB_FUNC_START sub_80438E8
sub_80438E8: @ 0x080438E8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0
	movs r2, #0
	ldr r6, _0804392C
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r4, r1, #2
	movs r5, #2
_080438FC:
	lsls r0, r2, #2
	adds r0, r0, r4
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804391A
	ldrb r1, [r1, #5]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0804391A
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804391A:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _080438FC
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804392C: .4byte gZones

	THUMB_FUNC_START sub_8043930
sub_8043930: @ 0x08043930
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r5, #0
	movs r4, #0
	ldr r1, _08043984
	mov r8, r1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r6, r1, #2
_0804394C:
	lsls r0, r4, #2
	adds r0, r0, r6
	add r0, r8
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804396C
	bl SetCardInfo
	ldr r0, _08043988
	ldrb r0, [r0, #0x16]
	cmp r0, r7
	bne _0804396C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0804396C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0804394C
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08043984: .4byte gZones
_08043988: .4byte gCardInfo

	THUMB_FUNC_START sub_804398C
sub_804398C: @ 0x0804398C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r5, #0
	movs r4, #0
	ldr r1, _080439EC
	mov r8, r1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r6, r1, #2
_080439A8:
	lsls r0, r4, #2
	adds r0, r0, r6
	add r0, r8
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r0, #0
	beq _080439D4
	ldrb r1, [r2, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080439D4
	ldrh r0, [r2]
	bl SetCardInfo
	ldr r0, _080439F0
	ldrb r0, [r0, #0x16]
	cmp r0, r7
	bne _080439D4
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080439D4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080439A8
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080439EC: .4byte gZones
_080439F0: .4byte gCardInfo

	THUMB_FUNC_START sub_80439F4
sub_80439F4: @ 0x080439F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r5, #0
	movs r4, #0
	ldr r1, _08043A54
	mov r8, r1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r6, r1, #2
_08043A10:
	lsls r0, r4, #2
	adds r0, r0, r6
	add r0, r8
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r0, #0
	beq _08043A3C
	ldrb r1, [r2, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08043A3C
	ldrh r0, [r2]
	bl SetCardInfo
	ldr r0, _08043A58
	ldrb r0, [r0, #0x17]
	cmp r0, r7
	bne _08043A3C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08043A3C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08043A10
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08043A54: .4byte gZones
_08043A58: .4byte gCardInfo

	THUMB_FUNC_START sub_8043A5C
sub_8043A5C: @ 0x08043A5C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0
	movs r2, #0
	ldr r6, _08043AA0
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r4, r1, #2
	movs r5, #1
_08043A70:
	lsls r0, r2, #2
	adds r0, r0, r4
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08043A8E
	ldrb r1, [r1, #5]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08043A8E
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08043A8E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _08043A70
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08043AA0: .4byte gZones

	THUMB_FUNC_START sub_8043AA4
sub_8043AA4: @ 0x08043AA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
_08043AAC:
	movs r4, #0
_08043AAE:
	ldrh r0, [r6, #2]
	adds r0, r0, r4
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #1
	adds r0, #1
	strh r0, [r6]
	movs r5, #0
	ldr r1, _08043BA4
	ldr r0, [r1]
	ldrb r0, [r0]
	adds r4, #1
	mov r8, r4
	cmp r0, #0
	beq _08043B08
	adds r7, r1, #0
	movs r4, #0
_08043ADA:
	ldrh r0, [r6]
	adds r0, r0, r5
	lsls r0, r0, #7
	ldr r1, _08043BA8
	adds r0, r0, r1
	ldr r1, [r7]
	adds r1, r4, r1
	ldrb r2, [r1, #1]
	lsls r2, r2, #8
	ldrb r1, [r1]
	orrs r1, r2
	ldr r2, _08043BAC
	bl sub_8020968
	adds r4, #2
	adds r5, #1
	cmp r5, #0xc
	bgt _08043B2C
	ldr r0, [r7]
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08043ADA
_08043B08:
	cmp r5, #0xc
	bgt _08043B2C
	ldr r4, _08043BB0
_08043B0E:
	ldrh r0, [r6]
	adds r0, r0, r5
	lsls r0, r0, #7
	ldr r1, _08043BA8
	adds r0, r0, r1
	ldrb r2, [r4, #1]
	lsls r2, r2, #8
	ldrb r1, [r4]
	orrs r1, r2
	ldr r2, _08043BAC
	bl sub_8020968
	adds r5, #1
	cmp r5, #0xc
	ble _08043B0E
_08043B2C:
	mov r4, r8
	cmp r4, #3
	ble _08043AAE
	ldr r1, _08043BB4
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	ldrb r1, [r1]
	orrs r1, r0
	ldr r0, _08043BB8
	ldr r2, _08043BAC
	bl sub_8020968
	bl sub_8008220
	bl sub_8041014
	ldr r0, _08043BBC
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08043B68
	ldrh r0, [r6, #2]
	cmp r0, #1
	bne _08043B62
	ldr r0, _08043BC0
	strh r0, [r6, #2]
_08043B62:
	ldrh r0, [r6, #2]
	subs r0, #1
	strh r0, [r6, #2]
_08043B68:
	ldr r0, _08043BBC
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043B88
	ldrh r1, [r6, #2]
	movs r0, #0xe1
	lsls r0, r0, #2
	cmp r1, r0
	bne _08043B82
	movs r0, #0
	strh r0, [r6, #2]
_08043B82:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
_08043B88:
	ldr r0, _08043BC4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08043AAC
	bl sub_8008220
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043BA4: .4byte gCardInfo
_08043BA8: .4byte 0x02008CA0
_08043BAC: .4byte 0x00000101
_08043BB0: .4byte 0x08E0D950
_08043BB4: .4byte 0x08E0D94C
_08043BB8: .4byte 0x020093A0
_08043BBC: .4byte g2020DF4
_08043BC0: .4byte 0x00000385
_08043BC4: .4byte gUnk2020DFC

	THUMB_FUNC_START sub_8043BC8
sub_8043BC8: @ 0x08043BC8
	push {r4, r5, lr}
	ldr r5, _08043CA4
	ldr r4, _08043CA8
	ldrb r2, [r4, #1]
	lsls r1, r2, #2
	adds r1, r1, r2
	ldrb r2, [r4]
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r1, [r1]
	ldrh r0, [r0, #2]
	movs r3, #0
	strh r0, [r1]
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r4]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r4]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	strb r3, [r0, #4]
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r4]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl ResetPermStage
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl ResetTempStage
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08043CA4: .4byte gZones
_08043CA8: .4byte gCursorPosition
	.byte 0x00, 0xB5, 0xFD, 0xF7
	.byte 0x43, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x81, 0xB0
	.byte 0x07, 0x48, 0x00, 0x90, 0xFD, 0xF7, 0x38, 0xFF, 0x68, 0x46, 0xFF, 0xF7, 0xEB, 0xFE, 0x68, 0x46
	.byte 0xFF, 0xF7, 0x7A, 0xFF, 0xFE, 0xF7, 0x3E, 0xF8, 0x01, 0xB0, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x00

	THUMB_FUNC_START DrawCard
DrawCard: @ 0x08043CE4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r2, #0
	ldr r3, _08043D28
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r7, r0, #3
_08043CF4:
	lsls r0, r2, #3
	adds r1, r0, r7
	adds r1, r1, r3
	adds r1, #0xa0
	ldrh r1, [r1]
	adds r6, r0, #0
	cmp r1, #0
	bne _08043D5C
	adds r0, r4, #0
	bl sub_8043E70
	ldr r5, _08043D2C
	movs r1, #0x54
	adds r3, r4, #0
	muls r3, r1, r3
	adds r1, r3, r5
	adds r2, r1, #0
	adds r2, #0x52
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2]
	cmp r0, r1
	bhs _08043D30
	movs r1, #0
	b _08043D3E
	.align 2, 0
_08043D28: .4byte gDuel
_08043D2C: .4byte 0x020240F0
_08043D30:
	ldrb r0, [r2]
	lsls r1, r0, #1
	adds r1, r1, r3
	adds r1, r1, r5
	ldrh r1, [r1]
	adds r0, #1
	strb r0, [r2]
_08043D3E:
	adds r2, r1, #0
	cmp r2, #0
	beq _08043D54
	ldr r1, _08043D50
	adds r0, r6, r7
	adds r0, r0, r1
	adds r0, #0xa0
	strh r2, [r0]
	b _08043D66
	.align 2, 0
_08043D50: .4byte gDuel
_08043D54:
	adds r0, r4, #0
	bl DeclareLoser
	b _08043D66
_08043D5C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _08043CF4
_08043D66:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8043D6C
sub_8043D6C: @ 0x08043D6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	bl sub_8043E70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08043DC8
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _08043DD4
	mov r8, r0
	movs r7, #0xc7
	movs r0, #0x54
	adds r5, r4, #0
	muls r5, r0, r5
_08043D96:
	movs r0, #0
	adds r1, r6, #0
	bl sub_8056258
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0
	adds r1, r6, #0
	bl sub_8056258
	lsls r0, r0, #0x18
	lsls r4, r4, #1
	adds r4, r4, r5
	add r4, r8
	ldrh r2, [r4]
	lsrs r0, r0, #0x17
	adds r0, r0, r5
	add r0, r8
	ldrh r1, [r0]
	strh r1, [r4]
	strh r2, [r0]
	subs r7, #1
	cmp r7, #0
	bge _08043D96
_08043DC8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043DD4: .4byte 0x020240F0

	THUMB_FUNC_START sub_8043DD8
sub_8043DD8: @ 0x08043DD8
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r5, _08043E10
	movs r7, #0x54
	movs r4, #0
	movs r6, #0x54
_08043DE4:
	adds r0, r2, #0
	muls r0, r7, r0
	adds r0, r0, r5
	adds r0, #0x52
	strb r4, [r0]
	adds r3, r2, #1
	movs r1, #0x28
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	adds r0, #0x50
_08043DFA:
	strh r4, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge _08043DFA
	adds r2, r3, #0
	cmp r2, #1
	ble _08043DE4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043E10: .4byte 0x020240F0

	THUMB_FUNC_START sub_8043E14
sub_8043E14: @ 0x08043E14
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08043E30
	ldr r1, _08043E2C
	adds r0, r2, #0
	bl sub_8043E44
	b _08043E3A
	.align 2, 0
_08043E2C: .4byte gDeck+0xA
_08043E30:
	ldr r0, _08043E40
	ldr r1, [r0, #0x34]
	adds r0, r2, #0
	bl sub_8043E44
_08043E3A:
	pop {r0}
	bx r0
	.align 2, 0
_08043E40: .4byte gDuelData

	THUMB_FUNC_START sub_8043E44
sub_8043E44: @ 0x08043E44
	push {r4, lr}
	adds r3, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0
	ldr r2, _08043E6C
	movs r1, #0x54
	muls r0, r1, r0
	adds r1, r0, r2
_08043E56:
	ldrh r0, [r3]
	strh r0, [r1]
	adds r3, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x27
	bls _08043E56
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08043E6C: .4byte 0x020240F0

	THUMB_FUNC_START sub_8043E70
sub_8043E70: @ 0x08043E70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0
	ldr r3, _08043E80
	movs r1, #0x54
	muls r1, r0, r1
	adds r0, r1, r3
	b _08043E90
	.align 2, 0
_08043E80: .4byte 0x020240F0
_08043E84:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r2, #1
	adds r0, r0, r1
	adds r0, r0, r3
_08043E90:
	ldrh r0, [r0]
	cmp r0, #0
	bne _08043E84
	adds r0, r2, #0
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8043E9C
sub_8043E9C: @ 0x08043E9C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08043EB0
	movs r1, #0x54
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x52
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08043EB0: .4byte 0x020240F0
	.byte 0x10, 0xB5, 0x04, 0x1C, 0x24, 0x06, 0x24, 0x0E, 0x20, 0x1C, 0xFF, 0xF7
	.byte 0xD7, 0xFF, 0x09, 0x4B, 0x54, 0x21, 0x4C, 0x43, 0xE1, 0x18, 0x0A, 0x1C, 0x52, 0x32, 0x00, 0x06
	.byte 0x00, 0x0E, 0x11, 0x78, 0x88, 0x42, 0x09, 0xD3, 0x11, 0x78, 0x48, 0x00, 0x00, 0x19, 0xC0, 0x18
	.byte 0x00, 0x88, 0x01, 0x31, 0x11, 0x70, 0x02, 0xE0, 0xF0, 0x40, 0x02, 0x02, 0x00, 0x20, 0x10, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_8043EF4
sub_8043EF4: @ 0x08043EF4
	ldr r0, _08043F10
	ldrb r2, [r0]
	movs r1, #4
	subs r1, r1, r2
	strb r1, [r0]
	ldrb r1, [r0, #1]
	adds r3, r0, #0
	cmp r1, #1
	beq _08043F22
	cmp r1, #1
	bgt _08043F14
	cmp r1, #0
	beq _08043F1E
	b _08043F2E
	.align 2, 0
_08043F10: .4byte gCursorPosition
_08043F14:
	cmp r1, #2
	beq _08043F26
	cmp r1, #3
	beq _08043F2A
	b _08043F2E
_08043F1E:
	movs r0, #3
	b _08043F2C
_08043F22:
	movs r0, #2
	b _08043F2C
_08043F26:
	movs r0, #1
	b _08043F2C
_08043F2A:
	movs r0, #0
_08043F2C:
	strb r0, [r3, #1]
_08043F2E:
	adds r2, r3, #0
	ldrb r1, [r2, #2]
	movs r0, #4
	subs r0, r0, r1
	strb r0, [r2, #2]
	ldrb r0, [r2, #3]
	cmp r0, #1
	beq _08043F58
	cmp r0, #1
	bgt _08043F48
	cmp r0, #0
	beq _08043F52
	b _08043F68
_08043F48:
	cmp r0, #2
	beq _08043F5E
	cmp r0, #3
	beq _08043F64
	b _08043F68
_08043F52:
	movs r0, #3
	strb r0, [r2, #3]
	b _08043F68
_08043F58:
	movs r0, #2
	strb r0, [r2, #3]
	b _08043F68
_08043F5E:
	movs r0, #1
	strb r0, [r2, #3]
	b _08043F68
_08043F64:
	movs r0, #0
	strb r0, [r3, #3]
_08043F68:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START MoveCursorUp
MoveCursorUp: @ 0x08043F6C
	push {lr}
	movs r0, #0x36
	bl PlayMusic
	ldr r1, _08043F8C
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _08043F80
	adds r0, #1
	strb r0, [r1, #1]
_08043F80:
	ldrb r0, [r1, #1]
	subs r0, #1
	strb r0, [r1, #1]
	pop {r0}
	bx r0
	.align 2, 0
_08043F8C: .4byte gCursorPosition

	THUMB_FUNC_START MoveCursorDown
MoveCursorDown: @ 0x08043F90
	push {lr}
	movs r0, #0x36
	bl PlayMusic
	ldr r1, _08043FB0
	ldrb r2, [r1, #1]
	adds r0, r2, #1
	strb r0, [r1, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08043FAA
	strb r2, [r1, #1]
_08043FAA:
	pop {r0}
	bx r0
	.align 2, 0
_08043FB0: .4byte gCursorPosition

	THUMB_FUNC_START MoveCursorRight
MoveCursorRight: @ 0x08043FB4
	push {lr}
	movs r0, #0x36
	bl PlayMusic
	ldr r1, _08043FD4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bne _08043FD0
	movs r0, #0
	strb r0, [r1]
_08043FD0:
	pop {r0}
	bx r0
	.align 2, 0
_08043FD4: .4byte gCursorPosition

	THUMB_FUNC_START MoveCursorLeft
MoveCursorLeft: @ 0x08043FD8
	push {lr}
	movs r0, #0x36
	bl PlayMusic
	ldr r1, _08043FF8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08043FEC
	movs r0, #5
	strb r0, [r1]
_08043FEC:
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08043FF8: .4byte gCursorPosition

	THUMB_FUNC_START sub_8043FFC
sub_8043FFC: @ 0x08043FFC
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08044024
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	bl sub_80575E0
	adds r1, r0, #0
	ldr r0, _08044028
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08044024: .4byte gCursorPosition
_08044028: .4byte 0x08E0D954

	THUMB_FUNC_START sub_804402C
sub_804402C: @ 0x0804402C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08044054
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	bl sub_8057600
	adds r1, r0, #0
	ldr r0, _08044058
	adds r4, r4, r0
	ldrb r0, [r4]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08044054: .4byte gCursorPosition
_08044058: .4byte 0x08E0D958

	THUMB_FUNC_START sub_804405C
sub_804405C: @ 0x0804405C
	ldr r1, _08044070
	movs r2, #0
	strb r2, [r1, #4]
	strb r2, [r1]
	movs r3, #4
	strb r3, [r1, #1]
	strb r2, [r1, #2]
	strb r3, [r1, #3]
	bx lr
	.align 2, 0
_08044070: .4byte gCursorPosition

	THUMB_FUNC_START sub_8044074
sub_8044074: @ 0x08044074
	push {r4, lr}
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r4, r2, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r2, #0
	blt _080440AE
	cmp r2, #1
	bgt _080440A8
	ldr r1, _080440A4
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	b _080440AE
	.align 2, 0
_080440A4: .4byte gUnk2024040
_080440A8:
	cmp r4, #4
	bgt _080440AE
	movs r0, #1
_080440AE:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80440B4
sub_80440B4: @ 0x080440B4
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r3, r2, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r2, _080440D8
	lsls r4, r3, #2
	adds r1, r4, r3
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldrh r1, [r1]
	cmp r1, #0
	bne _080440DC
	movs r0, #1
	b _08044114
	.align 2, 0
_080440D8: .4byte gUnk2024040
_080440DC:
	cmp r3, #4
	bhi _08044114
	ldr r0, _080440E8
	adds r0, r4, r0
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080440E8: .4byte 0x080440EC
	.byte 0xD4, 0x40, 0x04, 0x08
	.byte 0xD4, 0x40, 0x04, 0x08, 0x00, 0x41, 0x04, 0x08, 0x00, 0x41, 0x04, 0x08, 0xD4, 0x40, 0x04, 0x08
	.byte 0x98, 0x00, 0xC0, 0x18, 0x40, 0x19, 0x80, 0x00, 0x80, 0x18, 0x00, 0x68, 0x40, 0x79, 0x00, 0x09
	.byte 0x01, 0x21, 0x08, 0x40
_08044114:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_804411C
sub_804411C: @ 0x0804411C
	ldr r0, _08044128
	ldrb r1, [r0]
	strb r1, [r0, #2]
	ldrb r1, [r0, #1]
	strb r1, [r0, #3]
	bx lr
	.align 2, 0
_08044128: .4byte gCursorPosition

	THUMB_FUNC_START sub_804412C
sub_804412C: @ 0x0804412C
	ldr r0, _08044138
	ldrb r1, [r0, #2]
	strb r1, [r0]
	ldrb r1, [r0, #3]
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_08044138: .4byte gCursorPosition
	.byte 0x01, 0x49, 0x00, 0x20
	.byte 0x48, 0x71, 0x70, 0x47, 0xF0, 0x41, 0x02, 0x02, 0x03, 0x4A, 0x04, 0x49, 0x50, 0x79, 0x40, 0x18
	.byte 0x00, 0x78, 0x50, 0x71, 0x70, 0x47, 0x00, 0x00, 0xF0, 0x41, 0x02, 0x02, 0x5C, 0xD9, 0xE0, 0x08

	THUMB_FUNC_START sub_8044160
sub_8044160: @ 0x08044160
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x11
	bhi _080441CA
	lsls r0, r0, #2
	ldr r1, _08044174
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08044174: .4byte _08044178
_08044178: @ jump table
	.4byte _080441CA @ case 0
	.4byte _080441C0 @ case 1
	.4byte _080441C0 @ case 2
	.4byte _080441C0 @ case 3
	.4byte _080441C0 @ case 4
	.4byte _080441C0 @ case 5
	.4byte _080441C0 @ case 6
	.4byte _080441C0 @ case 7
	.4byte _080441C0 @ case 8
	.4byte _080441C0 @ case 9
	.4byte _080441CA @ case 10
	.4byte _080441CA @ case 11
	.4byte _080441CA @ case 12
	.4byte _080441CA @ case 13
	.4byte _080441CA @ case 14
	.4byte _080441CA @ case 15
	.4byte _080441C0 @ case 16
	.4byte _080441C0 @ case 17
_080441C0:
	ldr r0, _080441CC
	ldrb r1, [r0, #3]
	strb r1, [r0, #1]
	ldrb r1, [r0, #2]
	strb r1, [r0]
_080441CA:
	bx lr
	.align 2, 0
_080441CC: .4byte gCursorPosition

	THUMB_FUNC_START sub_80441D0
sub_80441D0: @ 0x080441D0
	push {r4, lr}
	ldr r1, _080441E4
	ldrb r0, [r1, #1]
	cmp r0, #3
	beq _0804421C
	cmp r0, #3
	bgt _080441E8
	cmp r0, #2
	beq _080441EE
	b _0804429C
	.align 2, 0
_080441E4: .4byte gCursorPosition
_080441E8:
	cmp r0, #4
	beq _08044248
	b _0804429C
_080441EE:
	ldr r0, _08044218
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r0, #0x28
	adds r1, r1, r0
	ldr r1, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08044264
	ldrb r1, [r1, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08044264
	movs r0, #0x37
	bl PlayMusic
	bl sub_8044320
	b _080442A6
	.align 2, 0
_08044218: .4byte gUnk2024040
_0804421C:
	ldr r0, _08044244
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r0, #0x3c
	adds r1, r1, r0
	ldr r1, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08044264
	ldrh r0, [r1]
	bl sub_80453D8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08044282
	bl sub_80446E0
	b _080442A6
	.align 2, 0
_08044244: .4byte gUnk2024040
_08044248:
	ldr r0, _08044270
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r0, #0x50
	adds r1, r1, r0
	ldr r2, [r1]
	ldrh r0, [r2]
	cmp r0, #0
	beq _08044264
	ldrb r1, [r2, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08044274
_08044264:
	movs r0, #0x39
	bl PlayMusic
	bl sub_8008220
	b _080442A6
	.align 2, 0
_08044270: .4byte gUnk2024040
_08044274:
	ldrh r0, [r2]
	bl sub_8045390
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08044290
_08044282:
	movs r0, #0x39
	bl PlayMusic
	adds r0, r4, #0
	bl sub_8041240
	b _080442A6
_08044290:
	movs r0, #0x37
	bl PlayMusic
	bl sub_80442AC
	b _080442A6
_0804429C:
	movs r0, #0x39
	bl PlayMusic
	bl sub_8008220
_080442A6:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80442AC
sub_80442AC: @ 0x080442AC
	push {r4, r5, r6, lr}
	ldr r6, _080442E8
	ldr r5, _080442EC
	ldrb r1, [r5, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r4, [r0]
	bl sub_8040998
	movs r0, #1
	strb r0, [r5, #4]
	bl sub_804411C
	adds r0, r4, #0
	bl sub_803FCBC
	cmp r0, #1
	bne _080442F0
	adds r0, r6, #0
	adds r0, #0x28
	bl EmptyZoneInRow
	strb r0, [r5]
	movs r0, #2
	b _08044304
	.align 2, 0
_080442E8: .4byte gUnk2024040
_080442EC: .4byte gCursorPosition
_080442F0:
	cmp r0, #1
	blt _08044306
	cmp r0, #4
	bgt _08044306
	adds r0, r6, #0
	adds r0, #0x3c
	bl EmptyZoneInRow
	strb r0, [r5]
	movs r0, #3
_08044304:
	strb r0, [r5, #1]
_08044306:
	bl sub_8041EC8
	ldr r1, _0804431C
	ldrb r0, [r1, #3]
	ldrb r1, [r1, #1]
	bl sub_8041E70
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804431C: .4byte gCursorPosition

	THUMB_FUNC_START sub_8044320
sub_8044320: @ 0x08044320
	push {r4, r5, r6, lr}
	bl sub_80429A4
	subs r0, #1
	cmp r0, #4
	bls _0804432E
	b _0804455C
_0804432E:
	lsls r0, r0, #2
	ldr r1, _08044338
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08044338: .4byte _0804433C
_0804433C: @ jump table
	.4byte _08044350 @ case 0
	.4byte _08044356 @ case 1
	.4byte _080443DC @ case 2
	.4byte _08044414 @ case 3
	.4byte _08044524 @ case 4
_08044350:
	bl sub_8044570
	b _0804455C
_08044356:
	ldr r0, _080443A0
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080443AC
	movs r0, #0x37
	bl PlayMusic
	ldr r4, _080443A4
	ldr r3, _080443A8
	ldrb r1, [r3, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r3, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	b _080443CE
	.align 2, 0
_080443A0: .4byte gNotSure
_080443A4: .4byte gUnk2024040
_080443A8: .4byte gCursorPosition
_080443AC:
	movs r0, #0x39
	bl PlayMusic
	ldr r3, _080443D4
	ldr r2, _080443D8
	ldrb r1, [r2, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
_080443CE:
	strb r0, [r2, #5]
	b _08044400
	.align 2, 0
_080443D4: .4byte gUnk2024040
_080443D8: .4byte gCursorPosition
_080443DC:
	movs r0, #0x3d
	bl PlayMusic
	bl IncNumTributes
	ldr r3, _0804440C
	ldr r2, _08044410
	ldrb r1, [r2, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045314
_08044400:
	bl sub_8041104
	bl sub_8029820
	b _0804455C
	.align 2, 0
_0804440C: .4byte gUnk2024040
_08044410: .4byte gCursorPosition
_08044414:
	ldr r6, _08044478
	ldr r0, [r6]
	ldrb r1, [r0, #2]
	movs r0, #4
	ands r0, r1
	ldr r5, _0804447C
	ldr r4, _08044480
	cmp r0, #0
	beq _08044440
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
_08044440:
	adds r2, r4, #0
	ldrb r1, [r2, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0804446A
	ldrh r0, [r2]
	bl SetCardInfo
	ldr r0, _08044484
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	bne _08044488
_0804446A:
	movs r0, #0x39
	bl PlayMusic
	bl sub_8041104
	b _0804455C
	.align 2, 0
_08044478: .4byte gNotSure
_0804447C: .4byte gUnk2024040
_08044480: .4byte gCursorPosition
_08044484: .4byte gCardInfo
_08044488:
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r2, _08044520
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	ldrb r0, [r4, #1]
	strb r0, [r2, #2]
	ldrb r0, [r4]
	strb r0, [r2, #3]
	bl ActivateMonEffect
	ldr r0, [r6]
	ldrb r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08044506
	movs r0, #4
	bl sub_8040540
_08044506:
	bl sub_8041104
	bl ExodiaWinCondition
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0804455C
	bl sub_8029820
	b _0804455C
	.align 2, 0
_08044520: .4byte gMonEffect
_08044524:
	ldr r3, _08044564
	ldr r2, _08044568
	ldrb r1, [r2, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0]
	ldrb r2, [r3, #5]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08044558
	ldr r0, _0804456C
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08044558
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3, #5]
_08044558:
	bl sub_8041104
_0804455C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044564: .4byte gUnk2024040
_08044568: .4byte gCursorPosition
_0804456C: .4byte gNotSure

	THUMB_FUNC_START sub_8044570
sub_8044570: @ 0x08044570
	push {r4, r5, r6, lr}
	bl WhoseTurn
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8025534
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08044592
	ldr r0, _080445BC
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080445C8
_08044592:
	movs r0, #0x39
	bl PlayMusic
	ldr r3, _080445C0
	ldr r2, _080445C4
	ldrb r1, [r2, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	bl sub_8041104
	b _080446D2
	.align 2, 0
_080445BC: .4byte gNotSure
_080445C0: .4byte gUnk2024040
_080445C4: .4byte gCursorPosition
_080445C8:
	ldr r0, _0804466C
	bl NumEmptyZonesInRow
	cmp r0, #5
	bne _0804468E
	ldr r2, _08044670
	ldr r4, _08044674
	ldrb r0, [r4, #1]
	strb r0, [r2, #2]
	ldrb r0, [r4]
	strb r0, [r2, #3]
	ldr r5, _08044678
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r6, #0
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	beq _0804467C
	movs r0, #0x37
	bl PlayMusic
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	ldrb r0, [r4]
	bl sub_803F8E0
	bl sub_803F29C
	bl sub_803F224
	strb r6, [r4, #4]
	bl sub_801BC00
	bl sub_80410B4
	bl sub_8022080
	b _08044688
	.align 2, 0
_0804466C: .4byte gZones+0x14
_08044670: .4byte gUnk020245A0
_08044674: .4byte gCursorPosition
_08044678: .4byte gUnk2024040
_0804467C:
	movs r0, #0x42
	bl PlayMusic
	bl sub_80581DC
	strb r6, [r4, #4]
_08044688:
	bl sub_8029820
	b _080446D2
_0804468E:
	movs r0, #0x37
	bl PlayMusic
	ldr r5, _080446D8
	ldr r4, _080446DC
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040998
	movs r0, #4
	strb r0, [r4, #4]
	bl sub_804411C
	adds r5, #0x24
	adds r0, r5, #0
	bl sub_804363C
	strb r0, [r4]
	movs r0, #1
	strb r0, [r4, #1]
	bl sub_8041EC8
	ldrb r0, [r4, #3]
	ldrb r1, [r4, #1]
	bl sub_8041E70
	bl sub_8041104
_080446D2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080446D8: .4byte gUnk2024040
_080446DC: .4byte gCursorPosition

	THUMB_FUNC_START sub_80446E0
sub_80446E0: @ 0x080446E0
	push {r4, r5, r6, lr}
	ldr r6, _08044714
	ldr r5, _08044718
	ldrb r0, [r5, #1]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r5]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r0, [r1]
	ldrh r4, [r0]
	bl sub_8040998
	bl sub_804411C
	adds r0, r4, #0
	bl sub_803FCEC
	cmp r0, #1
	beq _0804476C
	cmp r0, #1
	bgt _0804471C
	cmp r0, #0
	beq _08044722
	b _0804478E
	.align 2, 0
_08044714: .4byte gUnk2024040
_08044718: .4byte gCursorPosition
_0804471C:
	cmp r0, #2
	beq _08044784
	b _0804478E
_08044722:
	strb r0, [r5, #4]
	ldr r1, _08044764
	strh r4, [r1]
	ldrb r0, [r5, #1]
	strb r0, [r1, #2]
	ldrb r0, [r5]
	strb r0, [r1, #3]
	bl ActivateSpellEffect
	ldr r0, _08044768
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08044748
	movs r0, #4
	bl sub_8040540
_08044748:
	bl sub_8041104
	bl ExodiaWinCondition
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0804478E
	bl sub_8029820
	b _0804478E
	.align 2, 0
_08044764: .4byte gUnk2024260
_08044768: .4byte gNotSure
_0804476C:
	movs r0, #0x37
	bl PlayMusic
	movs r4, #2
	strb r4, [r5, #4]
	adds r0, r6, #0
	adds r0, #0x28
	bl sub_804360C
	strb r0, [r5]
	strb r4, [r5, #1]
	b _0804478E
_08044784:
	movs r0, #0x39
	bl PlayMusic
	movs r0, #0
	strb r0, [r5, #4]
_0804478E:
	bl sub_8041EC8
	ldr r1, _080447A4
	ldrb r0, [r1, #3]
	ldrb r1, [r1, #1]
	bl sub_8041E70
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080447A4: .4byte gCursorPosition

	THUMB_FUNC_START sub_80447A8
sub_80447A8: @ 0x080447A8
	push {r4, r5, r6, lr}
	ldr r4, _080447E0
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _080447D4
	ldr r6, _080447E4
	ldrb r0, [r4, #1]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r4]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r1, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080447D4
	ldrb r0, [r1, #5]
	movs r5, #1
	ands r5, r0
	cmp r5, #0
	beq _080447E8
_080447D4:
	movs r0, #0x39
	bl PlayMusic
	bl sub_8008220
	b _08044832
	.align 2, 0
_080447E0: .4byte gCursorPosition
_080447E4: .4byte gUnk2024040
_080447E8:
	ldrh r0, [r1]
	bl SetCardInfo
	ldr r0, _08044838
	ldrh r0, [r0, #0x10]
	bl sub_803FCBC
	cmp r0, #1
	bne _08044824
	ldr r2, _0804483C
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	ldrb r0, [r4, #3]
	strb r0, [r2, #4]
	ldrb r0, [r4, #2]
	strb r0, [r2, #5]
	ldrb r0, [r4, #1]
	strb r0, [r2, #2]
	ldrb r0, [r4]
	strb r0, [r2, #3]
	bl ActivateSpellEffect
_08044824:
	strb r5, [r4, #4]
	bl sub_804411C
	bl sub_8041104
	bl sub_8029820
_08044832:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044838: .4byte gCardInfo
_0804483C: .4byte gUnk2024260

	THUMB_FUNC_START sub_8044840
sub_8044840: @ 0x08044840
	push {r4, r5, r6, lr}
	ldr r4, _08044870
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _08044862
	ldr r5, _08044874
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	bne _08044878
_08044862:
	movs r0, #0x39
	bl PlayMusic
	bl sub_8008220
	b _08044942
	.align 2, 0
_08044870: .4byte gCursorPosition
_08044874: .4byte gUnk2024040
_08044878:
	ldr r2, _0804492C
	ldrb r0, [r4, #3]
	strb r0, [r2, #2]
	ldrb r0, [r4, #2]
	strb r0, [r2, #3]
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r6, #0
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	beq _08044930
	movs r0, #0x37
	bl PlayMusic
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	movs r3, #0x10
	orrs r0, r3
	strb r0, [r1, #5]
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	orrs r0, r3
	strb r0, [r1, #5]
	ldrb r0, [r4, #2]
	ldrb r1, [r4]
	bl sub_803F908
	bl sub_803F29C
	bl sub_803F224
	strb r6, [r4, #4]
	bl sub_804412C
	bl sub_801BC00
	bl sub_80410B4
	bl sub_8022080
	b _0804493E
	.align 2, 0
_0804492C: .4byte gUnk020245A0
_08044930:
	bl sub_80581DC
	strb r6, [r4, #4]
	bl sub_804412C
	bl sub_8041104
_0804493E:
	bl sub_8029820
_08044942:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8044948
sub_8044948: @ 0x08044948
	push {r4, lr}
	ldr r2, _08044990
	ldr r4, _08044994
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08044998
	ldrh r0, [r0, #0x10]
	bl sub_803FCBC
	cmp r0, #4
	bgt _0804499C
	cmp r0, #2
	blt _0804499C
	ldrb r0, [r4, #1]
	cmp r0, #3
	bne _080449A4
	movs r0, #0x3a
	bl PlayMusic
	bl sub_80449D8
	bl WinConditionFINAL
	bl sub_8029820
	b _080449D2
	.align 2, 0
_08044990: .4byte gUnk2024040
_08044994: .4byte gCursorPosition
_08044998: .4byte gCardInfo
_0804499C:
	ldr r0, _080449B0
	ldrb r0, [r0, #1]
	cmp r0, #2
	beq _080449B4
_080449A4:
	movs r0, #0x39
	bl PlayMusic
	bl sub_8008220
	b _080449D2
	.align 2, 0
_080449B0: .4byte gCursorPosition
_080449B4:
	movs r0, #0x3a
	bl PlayMusic
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	bl ResetNumTributes
	bl sub_80449D8
	bl sub_8029820
_080449D2:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80449D8
sub_80449D8: @ 0x080449D8
	push {r4, r5, lr}
	ldr r5, _08044A18
	ldr r4, _08044A1C
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl ClearZone
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_80409AC
	movs r0, #0
	strb r0, [r4, #4]
	bl sub_804411C
	bl sub_8041104
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08044A18: .4byte gUnk2024040
_08044A1C: .4byte gCursorPosition

	THUMB_FUNC_START sub_8044A20
sub_8044A20: @ 0x08044A20
	push {lr}
	movs r0, #0x37
	bl PlayMusic
	bl sub_80421CC
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8044A30
sub_8044A30: @ 0x08044A30
	push {r4, r5, lr}
	movs r0, #0x38
	bl PlayMusic
	ldr r4, _08044A58
	ldrb r5, [r4, #1]
	movs r0, #0
	strb r0, [r4, #4]
	bl sub_804412C
	bl sub_8041EC8
	ldrb r1, [r4, #1]
	adds r0, r5, #0
	bl sub_8041E70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08044A58: .4byte gCursorPosition

	THUMB_FUNC_START sub_8044A5C
sub_8044A5C: @ 0x08044A5C
	push {r4, r5, lr}
	movs r0, #0x38
	bl PlayMusic
	ldr r4, _08044A84
	ldrb r5, [r4, #1]
	movs r0, #0
	strb r0, [r4, #4]
	bl sub_804412C
	bl sub_8041EC8
	ldrb r1, [r4, #1]
	adds r0, r5, #0
	bl sub_8041E70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08044A84: .4byte gCursorPosition

	THUMB_FUNC_START sub_8044A88
sub_8044A88: @ 0x08044A88
	push {r4, r5, lr}
	movs r0, #0x38
	bl PlayMusic
	ldr r4, _08044AB0
	ldrb r5, [r4, #1]
	movs r0, #0
	strb r0, [r4, #4]
	bl sub_804412C
	bl sub_8041EC8
	ldrb r1, [r4, #1]
	adds r0, r5, #0
	bl sub_8041E70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08044AB0: .4byte gCursorPosition

	THUMB_FUNC_START sub_8044AB4
sub_8044AB4: @ 0x08044AB4
	push {lr}
	ldr r0, _08044AC8
	ldrb r0, [r0, #4]
	cmp r0, #1
	beq _08044ADC
	cmp r0, #1
	bgt _08044ACC
	cmp r0, #0
	beq _08044AD6
	b _08044AEC
	.align 2, 0
_08044AC8: .4byte gCursorPosition
_08044ACC:
	cmp r0, #2
	beq _08044AE2
	cmp r0, #4
	beq _08044AE8
	b _08044AEC
_08044AD6:
	bl sub_80441D0
	b _08044AEC
_08044ADC:
	bl sub_8044948
	b _08044AEC
_08044AE2:
	bl sub_80447A8
	b _08044AEC
_08044AE8:
	bl sub_8044840
_08044AEC:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8044AF0
sub_8044AF0: @ 0x08044AF0
	push {lr}
	ldr r0, _08044B04
	ldrb r0, [r0, #4]
	cmp r0, #1
	beq _08044B18
	cmp r0, #1
	bgt _08044B08
	cmp r0, #0
	beq _08044B12
	b _08044B28
	.align 2, 0
_08044B04: .4byte gCursorPosition
_08044B08:
	cmp r0, #2
	beq _08044B1E
	cmp r0, #4
	beq _08044B24
	b _08044B28
_08044B12:
	bl sub_8044A20
	b _08044B28
_08044B18:
	bl sub_8044A30
	b _08044B28
_08044B1E:
	bl sub_8044A5C
	b _08044B28
_08044B24:
	bl sub_8044A88
_08044B28:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8044B2C
sub_8044B2C: @ 0x08044B2C
	push {r4, lr}
	movs r0, #0x37
	bl PlayMusic
	bl sub_8044D00
	movs r4, #1
_08044B3A:
	bl sub_8044B68
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	beq _08044B52
	cmp r1, #2
	ble _08044B54
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08044B54
_08044B52:
	movs r4, #0
_08044B54:
	bl sub_8008220
	cmp r4, #0
	bne _08044B3A
	movs r0, #0x38
	bl PlayMusic
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8044B68
sub_8044B68: @ 0x08044B68
	ldr r0, _08044B7C
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08044B80
	adds r0, r2, #0
	b _08044B8E
	.align 2, 0
_08044B7C: .4byte gUnk2020DFC
_08044B80:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08044B8C
	movs r0, #0
	b _08044B8E
_08044B8C:
	movs r0, #2
_08044B8E:
	bx lr

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
	bl sub_800815C
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_8008144
	mov sb, r0
	ldr r0, [sp, #4]
	movs r1, #0x10
	bl sub_800815C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8008144
	mov r8, r0
	ldr r0, [sp, #4]
	movs r1, #0x10
	bl sub_800815C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_8008144
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
	bl sub_800815C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_8008144
	adds r5, r0, #0
	movs r2, #0x1f
	ldr r0, [sp, #4]
	subs r4, r2, r0
	mov r0, sl
	movs r1, #0x10
	bl sub_800815C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_8008144
	adds r4, r0, #0
	movs r1, #0x1f
	ldr r2, [sp, #8]
	subs r6, r1, r2
	mov r0, sl
	movs r1, #0x10
	bl sub_800815C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8008144
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
	.byte 0x00, 0x06, 0x00, 0x0E
	.byte 0x09, 0x06, 0x09, 0x0E, 0x12, 0x06, 0x12, 0x0E, 0x4D, 0x23, 0x58, 0x43, 0x97, 0x23, 0x59, 0x43
	.byte 0x40, 0x18, 0xD1, 0x00, 0x89, 0x1A, 0x89, 0x00, 0x40, 0x18, 0x00, 0x02, 0x00, 0x0C, 0x70, 0x47
	.byte 0x00, 0x06, 0x00, 0x0E, 0x09, 0x06, 0x09, 0x0E, 0x12, 0x06, 0x12, 0x0E, 0x4D, 0x23, 0x43, 0x43
	.byte 0x97, 0x20, 0x48, 0x43, 0x1B, 0x18, 0xD0, 0x00, 0x80, 0x1A, 0x80, 0x00, 0x1B, 0x18, 0x1B, 0x02
	.byte 0x1B, 0x0C, 0x58, 0x01, 0x18, 0x43, 0x9B, 0x02, 0x18, 0x43, 0x00, 0x04, 0x00, 0x0C, 0x70, 0x47
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
	.byte 0x00, 0xB5, 0x00, 0xF0, 0x03, 0xF8, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80452B4
sub_80452B4: @ 0x080452B4
	push {lr}
	bl sub_8058720
	bl InitBoard
	bl sub_8048C60
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x01, 0x49, 0x00, 0x20, 0x08, 0x70, 0x70, 0x47
	.byte 0xFC, 0x41, 0x02, 0x02

	THUMB_FUNC_START sub_80452D4
sub_80452D4: @ 0x080452D4
	ldr r1, _080452DC
	strb r0, [r1]
	bx lr
	.align 2, 0
_080452DC: .4byte gUnk20241FC

	THUMB_FUNC_START sub_80452E0
sub_80452E0: @ 0x080452E0
	lsls r0, r0, #0x18
	ldr r1, _080452F4
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	adds r0, #0xf4
	ldrh r2, [r0]
	movs r1, #0
	strh r1, [r0]
	adds r0, r2, #0
	bx lr
	.align 2, 0
_080452F4: .4byte gDuel

	THUMB_FUNC_START sub_80452F8
sub_80452F8: @ 0x080452F8
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r0, r4, #0
	bl sub_803FCBC
	cmp r0, #1
	bne _0804530C
	strh r4, [r5]
_0804530C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8045314
sub_8045314: @ 0x08045314
	push {r4, lr}
	adds r4, r0, #0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x16
	ldr r1, _08045334
	adds r0, r0, r1
	ldrh r1, [r4]
	bl sub_80452F8
	adds r0, r4, #0
	bl ClearZone
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08045334: .4byte gDuel+0xF4

	THUMB_FUNC_START ClearZoneAndSendMonToGraveyard
ClearZoneAndSendMonToGraveyard: @ 0x08045338
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	ldr r0, _08045358
	lsrs r1, r1, #0x16
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r4]
	bl sub_80452F8
	adds r0, r4, #0
	bl ClearZone
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08045358: .4byte gNotSure

	THUMB_FUNC_START sub_804535C
sub_804535C: @ 0x0804535C
	lsls r0, r0, #0x18
	ldr r1, _08045370
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r0, [r2]
	movs r1, #0
	strh r1, [r2]
	bx lr
	.align 2, 0
_08045370: .4byte gNotSure

.align 2, 0
