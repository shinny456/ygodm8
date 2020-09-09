    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED



	.byte 0x00, 0x21, 0x05, 0x4B, 0x00, 0x22, 0xC8, 0x18
	.byte 0x02, 0x70, 0x48, 0x1C, 0x00, 0x06, 0x01, 0x0E, 0x07, 0x29, 0xF8, 0xD9, 0x70, 0x47, 0x00, 0x00
	.byte 0x13, 0x45, 0x02, 0x02

	THUMB_FUNC_START sub_08055F64
sub_08055F64: @ 0x08055F64
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8055F68
sub_8055F68: @ 0x08055F68
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08055F78
	cmp r0, #1
	beq _08055F80
	b _08055F86
_08055F78:
	movs r0, #0xc9
	bl sub_8034F60
	b _08055F86
_08055F80:
	movs r0, #0xc9
	bl sub_8034F60
_08055F86:
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0x21, 0x05, 0x4B
	.byte 0x00, 0x22, 0xC8, 0x18, 0x02, 0x70, 0x48, 0x1C, 0x00, 0x06, 0x01, 0x0E, 0x64, 0x29, 0xF8, 0xD9
	.byte 0x70, 0x47, 0x00, 0x00, 0x20, 0x45, 0x02, 0x02, 0x10, 0xB5, 0x04, 0x1C, 0x24, 0x04, 0x20, 0x0C
	.byte 0x07, 0x21, 0x08, 0x40, 0xE9, 0xF7, 0x4A, 0xF8, 0x04, 0x49, 0xE4, 0x0C, 0x64, 0x18, 0x21, 0x78
	.byte 0x08, 0x43, 0x20, 0x70, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x20, 0x45, 0x02, 0x02

	THUMB_FUNC_START sub_8055FD0
sub_8055FD0: @ 0x08055FD0
	movs r1, #0
	ldr r3, _08055FE8
	movs r2, #0
_08055FD6:
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bls _08055FD6
	bx lr
	.align 2, 0
_08055FE8: .4byte 0x0202458C

	THUMB_FUNC_START sub_8055FEC
sub_8055FEC: @ 0x08055FEC
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	movs r1, #7
	ands r0, r1
	bl sub_803F04C
	ldr r1, _08056010
	lsrs r4, r4, #0x13
	adds r4, r4, r1
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056010: .4byte 0x0202458C

	THUMB_FUNC_START sub_8056014
sub_8056014: @ 0x08056014
	push {r4, lr}
	lsls r4, r0, #0x10
	lsrs r1, r4, #0x10
	cmp r1, #9
	bls _08056022
	movs r0, #0
	b _0805603A
_08056022:
	movs r0, #7
	ands r0, r1
	bl sub_803F04C
	ldr r2, _08056040
	lsrs r1, r4, #0x13
	adds r1, r1, r2
	ldrb r1, [r1]
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_0805603A:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08056040: .4byte 0x0202458C
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8056048
sub_8056048: @ 0x08056048
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	movs r1, #7
	ands r0, r1
	bl sub_803F04C
	ldr r1, _0805606C
	lsrs r4, r4, #0x13
	adds r4, r4, r1
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805606C: .4byte 0x02024588

	THUMB_FUNC_START sub_8056070
sub_8056070: @ 0x08056070
	push {r4, lr}
	lsls r4, r0, #0x10
	lsrs r1, r4, #0x10
	cmp r1, #7
	bls _0805607E
	movs r0, #0
	b _08056096
_0805607E:
	movs r0, #7
	ands r0, r1
	bl sub_803F04C
	ldr r2, _0805609C
	lsrs r1, r4, #0x13
	adds r1, r1, r2
	ldrb r1, [r1]
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08056096:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805609C: .4byte 0x02024588
	.byte 0xF0, 0xB5, 0x00, 0x26, 0x06, 0x4D, 0x07, 0x4C, 0x07, 0x48, 0x00, 0x88, 0x10, 0x28, 0x31, 0xD0
	.byte 0x10, 0x28, 0x0B, 0xDC, 0x01, 0x28, 0x37, 0xD0, 0x02, 0x28, 0x38, 0xD0, 0x39, 0xE0, 0x00, 0x00
	.byte 0x90, 0x45, 0x02, 0x02, 0x13, 0x45, 0x02, 0x02, 0xF8, 0x0D, 0x02, 0x02, 0x40, 0x28, 0x07, 0xD0
	.byte 0x40, 0x28, 0x02, 0xDC, 0x20, 0x28, 0x13, 0xD0, 0x2B, 0xE0, 0x80, 0x28, 0x08, 0xD0, 0x28, 0xE0
	.byte 0x28, 0x78, 0x00, 0x19, 0xFF, 0x21, 0x01, 0x70, 0x29, 0x78, 0x09, 0x19, 0x08, 0x78, 0x15, 0xE0
	.byte 0x28, 0x78, 0x00, 0x19, 0x0A, 0x21, 0x01, 0x70, 0x29, 0x78, 0x09, 0x19, 0x08, 0x78, 0x03, 0xE0
	.byte 0x03, 0x49, 0x08, 0x78, 0x00, 0x28, 0x14, 0xD0, 0x01, 0x38, 0x08, 0x70, 0x11, 0xE0, 0x00, 0x00
	.byte 0x90, 0x45, 0x02, 0x02, 0x03, 0x49, 0x08, 0x78, 0x07, 0x28, 0x0A, 0xD0, 0x01, 0x30, 0x08, 0x70
	.byte 0x07, 0xE0, 0x00, 0x00, 0x90, 0x45, 0x02, 0x02, 0x01, 0x26, 0x01, 0x27, 0x01, 0xE0, 0x01, 0x26
	.byte 0x00, 0x27, 0xB2, 0xF7, 0x75, 0xF8, 0x00, 0x2E, 0xB6, 0xD0, 0x38, 0x1C, 0xF0, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0x06, 0x4A, 0x07, 0x4B, 0x18, 0x78, 0x03, 0x32, 0x80, 0x18, 0xFF, 0x21
	.byte 0x01, 0x70, 0x19, 0x78, 0x89, 0x18, 0x08, 0x78, 0x01, 0x30, 0x08, 0x70, 0x70, 0x47, 0x00, 0x00
	.byte 0x10, 0x45, 0x02, 0x02, 0x90, 0x45, 0x02, 0x02, 0x06, 0x4A, 0x07, 0x4B, 0x18, 0x78, 0x03, 0x32
	.byte 0x80, 0x18, 0x0A, 0x21, 0x01, 0x70, 0x19, 0x78, 0x89, 0x18, 0x08, 0x78, 0x01, 0x38, 0x08, 0x70
	.byte 0x70, 0x47, 0x00, 0x00, 0x10, 0x45, 0x02, 0x02, 0x90, 0x45, 0x02, 0x02, 0x03, 0x49, 0x08, 0x78
	.byte 0x00, 0x28, 0x01, 0xD0, 0x01, 0x38, 0x08, 0x70, 0x70, 0x47, 0x00, 0x00, 0x90, 0x45, 0x02, 0x02
	.byte 0x03, 0x49, 0x08, 0x78, 0x07, 0x28, 0x01, 0xD0, 0x01, 0x30, 0x08, 0x70, 0x70, 0x47, 0x00, 0x00
	.byte 0x90, 0x45, 0x02, 0x02

	THUMB_FUNC_START sub_80561B4
sub_80561B4: @ 0x080561B4
	push {r4, r5, r6, lr}
	movs r4, #0
	movs r5, #0
_080561BA:
	lsls r0, r4, #0x19
	lsrs r4, r0, #0x18
	bl sub_8056230
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _080561BA
	adds r6, r4, #0
	movs r4, #0
	movs r5, #0
_080561D8:
	lsls r0, r4, #0x19
	lsrs r4, r0, #0x18
	bl sub_8056230
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _080561D8
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x10
	orrs r0, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80561FC
sub_80561FC: @ 0x080561FC
	ldr r1, _08056204
	movs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08056204: .4byte 0x02024594

	THUMB_FUNC_START sub_8056208
sub_8056208: @ 0x08056208
	push {r4, r5, lr}
	movs r4, #0
	movs r5, #0
_0805620E:
	lsls r0, r4, #0x19
	lsrs r4, r0, #0x18
	bl sub_8056230
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0805620E
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8056230
sub_8056230: @ 0x08056230
	ldr r2, _08056240
	ldr r1, [r2]
	cmp r1, #0
	blt _08056244
	lsls r0, r1, #1
	str r0, [r2]
	movs r0, #0
	b _08056254
	.align 2, 0
_08056240: .4byte 0x02024594
_08056244:
	movs r0, #0x80
	lsls r0, r0, #9
	eors r1, r0
	lsls r0, r1, #1
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	movs r0, #1
_08056254:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8056258
sub_8056258: @ 0x08056258
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r6, r1
	bne _0805626A
	adds r0, r6, #0
	b _08056296
_0805626A:
	movs r4, #0
	movs r5, #0
	subs r7, r1, r6
_08056270:
	lsls r0, r4, #0x19
	lsrs r4, r0, #0x18
	bl sub_8056230
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08056270
	adds r0, r4, #0
	adds r1, r7, #1
	bl sub_805B004
	adds r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08056296:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_805629C
sub_805629C: @ 0x0805629C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_80561B4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r4, r4, r5
	adds r4, #1
	adds r1, r4, #0
	bl sub_805B004
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80562CC
sub_80562CC: @ 0x080562CC
	ldr r3, _080562D8
	ldr r2, _080562DC
	ldr r1, [r2]
	str r1, [r3]
	str r0, [r2]
	bx lr
	.align 2, 0
_080562D8: .4byte 0x02024598
_080562DC: .4byte 0x02024594

	THUMB_FUNC_START sub_80562E0
sub_80562E0: @ 0x080562E0
	ldr r0, _080562EC
	ldr r1, _080562F0
	ldr r1, [r1]
	str r1, [r0]
	bx lr
	.align 2, 0
_080562EC: .4byte 0x02024594
_080562F0: .4byte 0x02024598

	THUMB_FUNC_START sub_80562F4
sub_80562F4: @ 0x080562F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov r8, r0
	ldr r5, _08056330
	ldr r4, _08056334
_08056306:
	ldr r1, _08056338
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805633C
	mov r3, r8
	lsls r0, r3, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r4
	ldrh r1, [r2]
	bl sub_80573D0
	b _0805634C
	.align 2, 0
_08056330: .4byte 0x08E116BC
_08056334: .4byte 0x02010400
_08056338: .4byte 0x02024040
_0805633C:
	mov r1, r8
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r4
	bl sub_8057474
_0805634C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bls _08056306
	movs r2, #0
	mov r8, r2
	ldr r3, _080563E0
	mov sl, r3
	ldr r0, _080563E4
	mov sb, r0
_08056366:
	mov r1, r8
	lsls r0, r1, #2
	ldr r2, _080563E8
	adds r7, r0, r2
	ldr r2, [r7]
	ldrb r1, [r2, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080563EC
	mov r6, r8
	adds r6, #5
	lsls r5, r6, #1
	add r5, sl
	ldrh r0, [r5]
	lsls r0, r0, #5
	add r0, sb
	ldrh r1, [r2]
	bl sub_80573D0
	ldrh r0, [r5]
	lsls r0, r0, #5
	add r0, sb
	ldr r1, [r7]
	ldrh r1, [r1]
	bl sub_80576EC
	ldrh r0, [r5]
	lsls r0, r0, #5
	add r0, sb
	ldr r1, [r7]
	ldrh r1, [r1]
	bl sub_80576B4
	ldrh r4, [r5]
	lsls r4, r4, #5
	add r4, sb
	ldr r0, [r7]
	bl sub_804069C
	adds r1, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_805763C
	ldrh r0, [r5]
	lsls r0, r0, #5
	add r0, sb
	ldr r1, [r7]
	bl sub_80572A8
	ldrh r0, [r5]
	lsls r0, r0, #5
	add r0, sb
	ldr r1, [r7]
	bl sub_805733C
	adds r4, r6, #0
	b _080563FE
	.align 2, 0
_080563E0: .4byte 0x08E116BC
_080563E4: .4byte 0x02010400
_080563E8: .4byte 0x02024054
_080563EC:
	mov r4, r8
	adds r4, #5
	lsls r0, r4, #1
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #5
	add r0, sb
	bl sub_8057474
_080563FE:
	mov r3, r8
	lsls r0, r3, #2
	ldr r1, _080565E0
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r0, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08056420
	lsls r0, r4, #1
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #5
	add r0, sb
	bl sub_8057620
_08056420:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bls _08056366
	movs r2, #0
	mov r8, r2
	ldr r7, _080565E4
_08056434:
	ldr r1, _080565E8
	mov r0, r8
	adds r0, #0xa
	lsls r0, r0, #1
	adds r6, r0, r1
	ldrh r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r3, _080565EC
	mov sb, r3
	mov r1, r8
	lsls r2, r1, #2
	mov r1, sb
	adds r1, #0x28
	adds r5, r2, r1
	ldr r1, [r5]
	ldrh r1, [r1]
	bl sub_80573D0
	ldr r0, [r5]
	ldrb r1, [r0, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08056470
	ldrh r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r7
	bl sub_8057620
_08056470:
	ldrh r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r1, [r5]
	ldrh r1, [r1]
	bl sub_80576B4
	ldrh r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r1, [r5]
	ldrh r1, [r1]
	bl sub_80576EC
	ldrh r4, [r6]
	lsls r4, r4, #5
	adds r4, r4, r7
	ldr r0, [r5]
	bl sub_804069C
	adds r1, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_805763C
	ldrh r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r1, [r5]
	bl sub_80572A8
	ldrh r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r1, [r5]
	bl sub_805733C
	ldr r0, [r5]
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080564D2
	ldrh r0, [r6]
	lsls r0, r0, #5
	adds r0, r0, r7
	bl sub_8057698
_080564D2:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bls _08056434
	movs r2, #0
	mov r8, r2
	ldr r6, _080565E4
	mov r7, sb
	adds r7, #0x3c
_080564EA:
	ldr r1, _080565E8
	mov r0, r8
	adds r0, #0xf
	lsls r0, r0, #1
	adds r5, r0, r1
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	mov r3, r8
	lsls r4, r3, #2
	adds r4, r4, r7
	ldr r1, [r4]
	ldrh r1, [r1]
	bl sub_80573D0
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [r4]
	ldrh r1, [r1]
	bl sub_8057718
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0805652C
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	bl sub_8057698
_0805652C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bls _080564EA
	movs r0, #0
	mov r8, r0
	ldr r6, _080565E4
_08056540:
	ldr r1, _080565E8
	mov r0, r8
	adds r0, #0x14
	lsls r0, r0, #1
	adds r5, r0, r1
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, _080565EC
	mov r3, r8
	lsls r2, r3, #2
	adds r1, #0x50
	adds r4, r2, r1
	ldr r1, [r4]
	ldrh r1, [r1]
	bl sub_80573D0
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [r4]
	ldrh r1, [r1]
	bl sub_80576B4
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [r4]
	ldrh r1, [r1]
	bl sub_80576EC
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [r4]
	bl sub_80572A8
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [r4]
	bl sub_805733C
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080565AC
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	bl sub_8057620
_080565AC:
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080565C2
	ldrh r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r6
	bl sub_8057698
_080565C2:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bls _08056540
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080565E0: .4byte 0x02024054
_080565E4: .4byte 0x02010400
_080565E8: .4byte 0x08E116BC
_080565EC: .4byte 0x02024040

	THUMB_FUNC_START sub_80565F0
sub_80565F0: @ 0x080565F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov r8, r0
	movs r1, #0
_08056600:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _08056600
	movs r6, #0
_08056610:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
_08056616:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056616
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_0805662C:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _0805662C
	cmp r6, #5
	bls _08056610
	movs r0, #0
	mov ip, r0
	movs r4, #0x40
	mov r8, r4
	movs r1, #0
_0805664A:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _0805664A
	movs r6, #0
_0805665A:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08056668:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056668
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_08056680:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056680
	cmp r6, #5
	bls _0805665A
	movs r0, #0x40
	mov ip, r0
	movs r4, #0x80
	mov r8, r4
	movs r1, #0
_0805669E:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _0805669E
	movs r6, #0
_080566AE:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_080566BC:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080566BC
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_080566D4:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _080566D4
	cmp r6, #5
	bls _080566AE
	movs r0, #0x80
	mov ip, r0
	movs r1, #0
_080566EE:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _080566EE
	movs r6, #0
	mov r4, ip
	adds r5, r4, r7
_08056702:
	movs r1, #4
	adds r4, r5, #4
_08056706:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056706
	movs r1, #0
_08056718:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08056718
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _08056702
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r6, #6
	movs r5, #0x30
_08056738:
	movs r1, #4
_0805673A:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _0805673A
	movs r1, #0
	adds r4, r5, r7
_0805674C:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _0805674C
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _08056738
	movs r6, #0
	movs r5, #0xc0
_08056768:
	movs r1, #4
_0805676A:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _0805676A
	movs r1, #0
	adds r4, r5, r7
_0805677C:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _0805677C
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _08056768
	movs r4, #0x40
	mov r8, r4
	movs r6, #6
	movs r0, #0x30
	mov ip, r0
	adds r5, r7, #0
	adds r5, #0x30
_080567A2:
	movs r1, #4
	adds r4, r5, #4
_080567A6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080567A6
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_080567BE:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _080567BE
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #7
	bls _080567A2
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	movs r6, #0
	mov ip, r6
	adds r5, r7, #0
	adds r5, #0xc0
_080567E8:
	movs r1, #4
	adds r4, r5, #4
_080567EC:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080567EC
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056804:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056804
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #5
	bls _080567E8
	movs r0, #0x80
	mov r8, r0
	movs r6, #6
	movs r4, #0x30
	mov ip, r4
	adds r5, r7, #0
	adds r5, #0x70
_0805682E:
	movs r1, #4
	adds r4, r5, #4
_08056832:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056832
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_0805684A:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _0805684A
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #7
	bls _0805682E
	movs r4, #0xa0
	lsls r4, r4, #1
	mov r8, r4
	movs r6, #0
	mov ip, r6
	adds r0, #0xf8
	adds r5, r7, r0
_08056874:
	movs r1, #4
	adds r4, r5, #4
_08056878:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056878
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056890:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056890
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #5
	bls _08056874
	movs r6, #6
	adds r5, r7, #0
	adds r5, #0xb0
_080568B2:
	movs r1, #4
	adds r4, r5, #4
_080568B6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080568B6
	movs r1, #0
_080568C8:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _080568C8
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _080568B2
	movs r6, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r5, r7, r0
_080568E6:
	movs r1, #4
	adds r4, r5, #4
_080568EA:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080568EA
	movs r1, #0
_080568FC:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _080568FC
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _080568E6
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r3, r3, r4
	movs r6, #6
	movs r5, #0xf0
_0805691C:
	movs r1, #4
_0805691E:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _0805691E
	movs r1, #0
	adds r4, r5, r7
_08056930:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056930
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _0805691C
	movs r6, #0
	movs r5, #0xc0
	lsls r5, r5, #1
_0805694E:
	movs r1, #4
_08056950:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056950
	movs r1, #0
	adds r4, r5, r7
_08056962:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056962
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _0805694E
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	movs r6, #6
	movs r4, #0x30
	mov ip, r4
	adds r5, r7, #0
	adds r5, #0xf0
_0805698A:
	movs r1, #4
	adds r4, r5, #4
_0805698E:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _0805698E
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_080569A6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _080569A6
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #7
	bls _0805698A
	movs r4, #0xe0
	lsls r4, r4, #1
	mov r8, r4
	movs r6, #0
	mov ip, r6
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r5, r7, r0
_080569D2:
	movs r1, #4
	adds r4, r5, #4
_080569D6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080569D6
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_080569EE:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _080569EE
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #5
	bls _080569D2
	movs r0, #0xa0
	lsls r0, r0, #1
	mov r8, r0
	movs r6, #6
	movs r4, #0x30
	mov ip, r4
	subs r0, #0x10
	adds r5, r7, r0
_08056A1A:
	movs r1, #4
	adds r4, r5, #4
_08056A1E:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056A1E
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056A36:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056A36
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #7
	bls _08056A1A
	movs r0, #0x80
	lsls r0, r0, #2
	mov r8, r0
	movs r6, #0
	mov ip, r6
	movs r4, #0xe0
	lsls r4, r4, #1
	adds r5, r7, r4
_08056A62:
	movs r1, #4
	adds r4, r5, #4
_08056A66:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056A66
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056A7E:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056A7E
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #5
	bls _08056A62
	movs r6, #6
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r5, r7, r4
_08056AA2:
	movs r1, #4
	adds r4, r5, #4
_08056AA6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056AA6
	movs r1, #0
_08056AB8:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08056AB8
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _08056AA2
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r5, r7, r0
_08056AD6:
	movs r1, #4
	adds r4, r5, #4
_08056ADA:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056ADA
	movs r1, #0
_08056AEC:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08056AEC
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _08056AD6
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r3, r3, r4
	movs r0, #0xc0
	lsls r0, r0, #1
	mov r8, r0
	movs r6, #6
_08056B10:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
_08056B16:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056B16
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_08056B2C:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056B2C
	cmp r6, #7
	bls _08056B10
	movs r1, #0
_08056B42:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _08056B42
	movs r0, #0xc0
	lsls r0, r0, #1
	mov ip, r0
	movs r4, #0xe0
	lsls r4, r4, #1
	mov r8, r4
	movs r6, #6
_08056B5E:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08056B6C:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056B6C
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_08056B84:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056B84
	cmp r6, #7
	bls _08056B5E
	movs r1, #0
_08056B9A:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _08056B9A
	movs r0, #0xe0
	lsls r0, r0, #1
	mov ip, r0
	movs r4, #0x80
	lsls r4, r4, #2
	mov r8, r4
	movs r6, #6
_08056BB6:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08056BC4:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056BC4
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_08056BDC:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056BDC
	cmp r6, #7
	bls _08056BB6
	movs r1, #0
_08056BF2:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _08056BF2
	movs r0, #0x80
	lsls r0, r0, #2
	mov ip, r0
	movs r6, #6
_08056C08:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08056C16:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056C16
	movs r1, #0
_08056C28:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08056C28
	cmp r6, #7
	bls _08056C08
	movs r1, #0
_08056C3C:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _08056C3C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8056C54
sub_8056C54: @ 0x08056C54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov r8, r0
	movs r1, #0
_08056C64:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _08056C64
	movs r6, #0
_08056C74:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
_08056C7A:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056C7A
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_08056C90:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056C90
	cmp r6, #5
	bls _08056C74
	movs r0, #0
	mov ip, r0
	movs r4, #0x40
	mov r8, r4
	movs r1, #0
_08056CAE:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _08056CAE
	movs r6, #0
_08056CBE:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08056CCC:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056CCC
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_08056CE4:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056CE4
	cmp r6, #5
	bls _08056CBE
	movs r0, #0x40
	mov ip, r0
	movs r4, #0x80
	mov r8, r4
	movs r1, #0
_08056D02:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _08056D02
	movs r6, #0
_08056D12:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08056D20:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056D20
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_08056D38:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056D38
	cmp r6, #5
	bls _08056D12
	movs r0, #0x80
	mov ip, r0
	movs r1, #0
_08056D52:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0xf
	bls _08056D52
	movs r6, #0
	mov r4, ip
	adds r5, r4, r7
_08056D66:
	movs r1, #4
	adds r4, r5, #4
_08056D6A:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056D6A
	movs r1, #0
_08056D7C:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08056D7C
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _08056D66
	movs r6, #6
	movs r5, #0x30
_08056D96:
	movs r1, #4
_08056D98:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056D98
	movs r1, #0
	adds r4, r5, r7
_08056DAA:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056DAA
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _08056D96
	movs r6, #0
	movs r5, #0xc0
_08056DC6:
	movs r1, #4
_08056DC8:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056DC8
	movs r1, #0
	adds r4, r5, r7
_08056DDA:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056DDA
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _08056DC6
	movs r0, #0x40
	mov r8, r0
	movs r6, #6
	movs r4, #0x30
	mov ip, r4
	adds r5, r7, #0
	adds r5, #0x30
_08056E00:
	movs r1, #4
	adds r4, r5, #4
_08056E04:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056E04
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056E1C:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056E1C
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #7
	bls _08056E00
	movs r4, #0x80
	lsls r4, r4, #1
	mov r8, r4
	movs r6, #0
	mov ip, r6
	adds r5, r7, #0
	adds r5, #0xc0
_08056E46:
	movs r1, #4
	adds r4, r5, #4
_08056E4A:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056E4A
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056E62:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056E62
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #5
	bls _08056E46
	movs r4, #0x80
	mov r8, r4
	movs r6, #6
	movs r0, #0x30
	mov ip, r0
	adds r5, r7, #0
	adds r5, #0x70
_08056E8C:
	movs r1, #4
	adds r4, r5, #4
_08056E90:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056E90
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056EA8:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056EA8
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #7
	bls _08056E8C
	movs r0, #0xa0
	lsls r0, r0, #1
	mov r8, r0
	movs r6, #0
	mov ip, r6
	adds r4, #0xf8
	adds r5, r7, r4
_08056ED2:
	movs r1, #4
	adds r4, r5, #4
_08056ED6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056ED6
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056EEE:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056EEE
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #5
	bls _08056ED2
	movs r6, #6
	adds r5, r7, #0
	adds r5, #0xb0
_08056F10:
	movs r1, #4
	adds r4, r5, #4
_08056F14:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056F14
	movs r1, #0
_08056F26:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08056F26
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _08056F10
	movs r6, #0
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r5, r7, r4
_08056F44:
	movs r1, #4
	adds r4, r5, #4
_08056F48:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056F48
	movs r1, #0
_08056F5A:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08056F5A
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _08056F44
	movs r6, #6
	movs r5, #0xf0
_08056F74:
	movs r1, #4
_08056F76:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056F76
	movs r1, #0
	adds r4, r5, r7
_08056F88:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056F88
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _08056F74
	movs r6, #0
	movs r5, #0xc0
	lsls r5, r5, #1
_08056FA6:
	movs r1, #4
_08056FA8:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08056FA8
	movs r1, #0
	adds r4, r5, r7
_08056FBA:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056FBA
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _08056FA6
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	movs r6, #6
	movs r4, #0x30
	mov ip, r4
	adds r5, r7, #0
	adds r5, #0xf0
_08056FE2:
	movs r1, #4
	adds r4, r5, #4
_08056FE6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08056FE6
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08056FFE:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08056FFE
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #7
	bls _08056FE2
	movs r4, #0xe0
	lsls r4, r4, #1
	mov r8, r4
	movs r6, #0
	mov ip, r6
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r5, r7, r0
_0805702A:
	movs r1, #4
	adds r4, r5, #4
_0805702E:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _0805702E
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_08057046:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _08057046
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #5
	bls _0805702A
	movs r0, #0xa0
	lsls r0, r0, #1
	mov r8, r0
	movs r6, #6
	movs r4, #0x30
	mov ip, r4
	subs r0, #0x10
	adds r5, r7, r0
_08057072:
	movs r1, #4
	adds r4, r5, #4
_08057076:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08057076
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_0805708E:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _0805708E
	adds r5, #8
	movs r4, #8
	add ip, r4
	adds r6, #1
	cmp r6, #7
	bls _08057072
	movs r0, #0x80
	lsls r0, r0, #2
	mov r8, r0
	movs r6, #0
	mov ip, r6
	movs r4, #0xe0
	lsls r4, r4, #1
	adds r5, r7, r4
_080570BA:
	movs r1, #4
	adds r4, r5, #4
_080570BE:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080570BE
	movs r1, #0
	mov r0, ip
	add r0, r8
	adds r4, r0, r7
_080570D6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _080570D6
	adds r5, #8
	movs r0, #8
	add ip, r0
	adds r6, #1
	cmp r6, #5
	bls _080570BA
	movs r6, #6
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r5, r7, r4
_080570FA:
	movs r1, #4
	adds r4, r5, #4
_080570FE:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080570FE
	movs r1, #0
_08057110:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08057110
	adds r5, #8
	adds r6, #1
	cmp r6, #7
	bls _080570FA
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r5, r7, r0
_0805712E:
	movs r1, #4
	adds r4, r5, #4
_08057132:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08057132
	movs r1, #0
_08057144:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _08057144
	adds r5, #8
	adds r6, #1
	cmp r6, #5
	bls _0805712E
	movs r4, #0xc0
	lsls r4, r4, #1
	mov r8, r4
	movs r6, #6
_08057162:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
_08057168:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #7
	bls _08057168
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_0805717E:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _0805717E
	cmp r6, #7
	bls _08057162
	movs r1, #0
_08057194:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _08057194
	movs r0, #0xc0
	lsls r0, r0, #1
	mov ip, r0
	movs r4, #0xe0
	lsls r4, r4, #1
	mov r8, r4
	movs r6, #6
_080571B0:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_080571BE:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _080571BE
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_080571D6:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _080571D6
	cmp r6, #7
	bls _080571B0
	movs r1, #0
_080571EC:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _080571EC
	movs r0, #0xe0
	lsls r0, r0, #1
	mov ip, r0
	movs r4, #0x80
	lsls r4, r4, #2
	mov r8, r4
	movs r6, #6
_08057208:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08057216:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08057216
	movs r1, #0
	mov r4, r8
	adds r0, r5, r4
	adds r4, r0, r7
_0805722E:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #3
	bls _0805722E
	cmp r6, #7
	bls _08057208
	movs r1, #0
_08057244:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _08057244
	movs r0, #0x80
	lsls r0, r0, #2
	mov ip, r0
	movs r6, #6
_0805725A:
	movs r1, #4
	lsls r5, r6, #3
	adds r6, #1
	mov r4, ip
	adds r0, r5, r4
	adds r0, r0, r7
	adds r4, r0, #4
_08057268:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	adds r4, #1
	adds r1, #1
	cmp r1, #7
	bls _08057268
	movs r1, #0
_0805727A:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #3
	bls _0805727A
	cmp r6, #7
	bls _0805725A
	movs r1, #0
_0805728E:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
	adds r1, #1
	cmp r1, #0x2f
	bls _0805728E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80572A8
sub_80572A8: @ 0x080572A8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _080572EC
	ldrh r1, [r0]
	strh r1, [r4]
	ldr r1, _080572F0
	adds r1, #0xf0
	ldrb r1, [r1]
	strb r1, [r4, #2]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r1, _080572F4
	ldrb r0, [r1, #0x1a]
	cmp r0, #2
	bne _08057328
	ldrh r0, [r1, #0x12]
	movs r1, #0x64
	bl sub_805B51C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x63
	bls _080572F8
	movs r0, #0x63
	movs r1, #0
	bl sub_800DDA0
	b _080572FE
	.align 2, 0
_080572EC: .4byte gStatMod
_080572F0: .4byte gDuel
_080572F4: .4byte gCardInfo
_080572F8:
	movs r1, #0
	bl sub_800DDA0
_080572FE:
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	ldr r4, _08057330
	ldrb r0, [r4, #3]
	lsls r0, r0, #6
	ldr r1, _08057334
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x40
	ldrb r0, [r4, #4]
	lsls r0, r0, #6
	ldr r1, _08057338
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
_08057328:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057330: .4byte 0x02021BD0
_08057334: .4byte 0x089A81DE
_08057338: .4byte 0x089A7F1E

	THUMB_FUNC_START sub_805733C
sub_805733C: @ 0x0805733C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _08057380
	ldrh r1, [r0]
	strh r1, [r4]
	ldr r1, _08057384
	adds r1, #0xf0
	ldrb r1, [r1]
	strb r1, [r4, #2]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	ldr r1, _08057388
	ldrb r0, [r1, #0x1a]
	cmp r0, #2
	bne _080573BC
	ldrh r0, [r1, #0x14]
	movs r1, #0x64
	bl sub_805B51C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x63
	bls _0805738C
	movs r0, #0x63
	movs r1, #0
	bl sub_800DDA0
	b _08057392
	.align 2, 0
_08057380: .4byte gStatMod
_08057384: .4byte gDuel
_08057388: .4byte gCardInfo
_0805738C:
	movs r1, #0
	bl sub_800DDA0
_08057392:
	movs r0, #0x88
	lsls r0, r0, #4
	adds r5, r5, r0
	ldr r4, _080573C4
	ldrb r0, [r4, #3]
	lsls r0, r0, #6
	ldr r1, _080573C8
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x40
	ldrb r0, [r4, #4]
	lsls r0, r0, #6
	ldr r1, _080573CC
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
_080573BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080573C4: .4byte 0x02021BD0
_080573C8: .4byte 0x089A875E
_080573CC: .4byte 0x089A849E

	THUMB_FUNC_START sub_80573D0
sub_80573D0: @ 0x080573D0
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	bl SetCardInfo
	ldr r0, _08057408
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	ldr r4, _0805740C
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _08057410
	ldr r0, _08057414
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80565F0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057408: .4byte 0x08E17F70
_0805740C: .4byte 0x02018800
_08057410: .4byte 0x08E17F48
_08057414: .4byte gCardInfo

	THUMB_FUNC_START sub_8057418
sub_8057418: @ 0x08057418
	push {lr}
	adds r1, r0, #0
	ldr r0, _08057428
	movs r2, #0xa0
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08057428: .4byte 0x089A781C

	THUMB_FUNC_START sub_805742C
sub_805742C: @ 0x0805742C
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	bl SetCardInfo
	ldr r0, _08057464
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	ldr r4, _08057468
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _0805746C
	ldr r0, _08057470
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8056C54
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057464: .4byte 0x08E17F70
_08057468: .4byte 0x02018800
_0805746C: .4byte 0x08E17F48
_08057470: .4byte gCardInfo

	THUMB_FUNC_START sub_8057474
sub_8057474: @ 0x08057474
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	movs r1, #0
	ldr r6, _080574A4
	movs r5, #0xc0
	lsls r5, r5, #2
_08057480:
	movs r3, #0
	lsls r0, r1, #8
	adds r4, r1, #1
	adds r1, r0, r6
_08057488:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r2, #1
	adds r1, #1
	adds r3, #1
	cmp r3, #0xff
	bls _08057488
	adds r2, r2, r5
	adds r1, r4, #0
	cmp r1, #3
	bls _08057480
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080574A4: .4byte 0x0893B290

	THUMB_FUNC_START sub_80574A8
sub_80574A8: @ 0x080574A8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8057600
	mov sl, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80575E0
	adds r3, r0, #0
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r0, r5
	lsls r1, r0, #3
	mov r8, r1
	ldr r6, _08057534
	adds r1, r1, r6
	mov sb, r1
	movs r1, #0xff
	mov r2, sl
	ands r1, r2
	lsls r3, r3, #0x10
	ldr r2, _08057538
	ands r3, r2
	orrs r1, r3
	ldr r2, _0805753C
	orrs r1, r2
	mov r3, sb
	str r1, [r3]
	adds r1, r6, #4
	add r8, r1
	ldr r2, _08057540
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	ldr r1, _08057544
	ands r1, r2
	movs r3, #0x80
	lsls r3, r3, #4
	adds r2, r3, #0
	orrs r1, r2
	mov r2, r8
	strh r1, [r2]
	adds r0, #0x66
	lsls r0, r0, #3
	ldr r3, _08057548
	adds r6, r6, r3
	adds r0, r0, r6
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_805754C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057534: .4byte 0x02018730
_08057538: .4byte 0x01FF0000
_0805753C: .4byte 0x80002100
_08057540: .4byte 0x08E116BC
_08057544: .4byte 0x000003FF
_08057548: .4byte 0xFFFFFCD0

	THUMB_FUNC_START sub_805754C
sub_805754C: @ 0x0805754C
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #1
	beq _08057572
	cmp r2, #1
	bgt _08057564
	cmp r2, #0
	beq _0805756A
	b _080575BC
_08057564:
	cmp r2, #2
	beq _0805759C
	b _080575BC
_0805756A:
	ldr r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	b _080575C2
_08057572:
	ldr r0, _08057590
	lsls r1, r1, #2
	adds r0, #0x14
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r1, [r0, #5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08057594
	ldr r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	b _080575C2
	.align 2, 0
_08057590: .4byte 0x02024040
_08057594:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x14
	b _080575C2
_0805759C:
	ldr r0, _080575B8
	lsls r1, r1, #2
	adds r0, #0x28
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r1, [r0, #5]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080575BC
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x13
	b _080575C2
	.align 2, 0
_080575B8: .4byte 0x02024040
_080575BC:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x12
_080575C2:
	orrs r0, r1
	str r0, [r3]
	bx lr
	.byte 0x00, 0xB5, 0x03, 0x48, 0x03, 0x49, 0xA0, 0x22
	.byte 0x01, 0xF0, 0xC0, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x1C, 0x78, 0x9A, 0x08, 0x00, 0x02, 0x00, 0x02

	THUMB_FUNC_START sub_80575E0
sub_80575E0: @ 0x080575E0
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _080575FC
	lsrs r0, r0, #0x17
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_080575FC: .4byte 0x08E116EE

	THUMB_FUNC_START sub_8057600
sub_8057600: @ 0x08057600
	lsls r1, r1, #0x18
	ldr r0, _08057618
	lsrs r1, r1, #0x17
	adds r1, r1, r0
	ldr r2, _0805761C
	ldrh r0, [r1]
	ldrh r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08057618: .4byte 0x08E11720
_0805761C: .4byte 0x0202420C

	THUMB_FUNC_START sub_8057620
sub_8057620: @ 0x08057620
	push {lr}
	adds r1, r0, #0
	movs r0, #0xcc
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, _08057638
	movs r2, #0x20
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08057638: .4byte 0x089A77DC

	THUMB_FUNC_START sub_805763C
sub_805763C: @ 0x0805763C
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0xc0
	lsls r0, r0, #4
	adds r5, r5, r0
	cmp r1, #0
	bge _0805765E
	ldr r0, _08057690
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x40
_0805765E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08057668
	rsbs r0, r0, #0
_08057668:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _08057688
	cmp r0, #9
	ble _08057678
	movs r4, #0xa
_08057678:
	lsls r0, r4, #0x10
	asrs r0, r0, #0xa
	ldr r1, _08057694
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
_08057688:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057690: .4byte 0x089A8CDE
_08057694: .4byte 0x089A8A1E

	THUMB_FUNC_START sub_8057698
sub_8057698: @ 0x08057698
	push {lr}
	adds r1, r0, #0
	movs r0, #0xc8
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, _080576B0
	movs r2, #0x20
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_080576B0: .4byte 0x089A7BDE

	THUMB_FUNC_START sub_80576B4
sub_80576B4: @ 0x080576B4
	push {r4, lr}
	adds r4, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	ldr r1, _080576E4
	ldrb r0, [r1, #0x17]
	cmp r0, #0
	beq _080576DC
	adds r4, #0xc0
	ldr r0, _080576E8
	ldrb r1, [r1, #0x17]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuSet
_080576DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080576E4: .4byte gCardInfo
_080576E8: .4byte 0x08E1168C

	THUMB_FUNC_START sub_80576EC
sub_80576EC: @ 0x080576EC
	push {r4, lr}
	adds r4, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_8045410
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0805770E
	lsls r0, r0, #6
	ldr r1, _08057714
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuSet
_0805770E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057714: .4byte 0x089A7ADE

	THUMB_FUNC_START sub_8057718
sub_8057718: @ 0x08057718
	push {r4, lr}
	adds r4, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_8021D00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0805773A
	lsls r0, r0, #6
	ldr r1, _08057740
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuSet
_0805773A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057740: .4byte 0x089A7ADE
	.byte 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x00, 0x25, 0x0F, 0x48, 0x80, 0x46
	.byte 0x00, 0x24, 0xA8, 0x00, 0x6F, 0x1C, 0x40, 0x19, 0x86, 0x00, 0xA0, 0x00, 0x80, 0x19, 0x40, 0x44
	.byte 0x00, 0x68, 0x00, 0x88, 0x00, 0x28, 0x03, 0xD0, 0x20, 0x1C, 0x29, 0x1C, 0xFF, 0xF7, 0x9C, 0xFE
	.byte 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xEF, 0xD9, 0x38, 0x06, 0x05, 0x0E, 0x04, 0x2D
	.byte 0xE6, 0xD9, 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x40, 0x40, 0x02, 0x02

	THUMB_FUNC_START sub_8057790
sub_8057790: @ 0x08057790
	lsls r1, r1, #0x18
	ldr r0, _080577A0
	lsrs r1, r1, #0x17
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bx lr
	.align 2, 0
_080577A0: .4byte 0x08E11720

	THUMB_FUNC_START sub_80577A4
sub_80577A4: @ 0x080577A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_80562F4
	ldr r0, _080577FC
	ldr r1, _08057800
	movs r2, #0xa0
	bl CpuSet
	movs r5, #0
	ldr r0, _08057804
	mov r8, r0
_080577BE:
	movs r4, #0
	lsls r0, r5, #2
	adds r7, r5, #1
	adds r0, r0, r5
	lsls r6, r0, #2
_080577C8:
	lsls r0, r4, #2
	adds r0, r0, r6
	add r0, r8
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080577DE
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80574A8
_080577DE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080577C8
	lsls r0, r7, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080577BE
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080577FC: .4byte 0x089A781C
_08057800: .4byte 0x02000200
_08057804: .4byte 0x02024040

	THUMB_FUNC_START sub_8057808
sub_8057808: @ 0x08057808
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r0, _08057850
	mov r8, r0
_08057814:
	movs r4, #0
	lsls r0, r5, #2
	adds r7, r5, #1
	adds r0, r0, r5
	lsls r6, r0, #2
_0805781E:
	lsls r0, r4, #2
	adds r0, r0, r6
	add r0, r8
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08057834
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80574A8
_08057834:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0805781E
	lsls r0, r7, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08057814
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057850: .4byte 0x02024040

	THUMB_FUNC_START sub_8057854
sub_8057854: @ 0x08057854
	push {lr}
	ldr r1, _08057874
	ldr r2, _08057878
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_8008030
	bl sub_800807C
	bl sub_8034E30
	bl sub_800818C
	pop {r0}
	bx r0
	.align 2, 0
_08057874: .4byte 0x04000204
_08057878: .4byte 0x000045B6

	THUMB_FUNC_START sub_805787C
sub_805787C: @ 0x0805787C
	push {r4, lr}
	cmp r0, #0
	ble _0805788E
	adds r4, r0, #0
_08057884:
	bl sub_8008220
	subs r4, #1
	cmp r4, #0
	bne _08057884
_0805788E:
	pop {r4}
	pop {r0}
	bx r0

.align 2, 0
