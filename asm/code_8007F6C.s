    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	THUMB_FUNC_START sub_80082E8
sub_80082E8: @ 0x080082E8
	push {r4, lr}
	ldr r0, _08008328
	ldrh r0, [r0]
	mvns r0, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, _0800832C
	ldr r1, _08008330
	ldrh r2, [r1]
	adds r0, r4, #0
	bics r0, r2
	strh r0, [r3]
	ldrh r0, [r1]
	adds r3, r1, #0
	cmp r0, r4
	bne _0800833C
	ldr r2, _08008334
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08008338
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08008346
	movs r0, #3
	strb r0, [r1]
	ldrh r0, [r3]
	strh r0, [r2]
	b _08008346
	.align 2, 0
_08008328: .4byte 0x04000130
_0800832C: .4byte gUnk2020DFC
_08008330: .4byte gKeyState
_08008334: .4byte 0x02020DF4
_08008338: .4byte 0x02020E04
_0800833C:
	ldr r0, _08008350
	strh r4, [r0]
	ldr r1, _08008354
	movs r0, #0xa
	strb r0, [r1]
_08008346:
	strh r4, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008350: .4byte 0x02020DF4
_08008354: .4byte 0x02020E04

	THUMB_FUNC_START sub_8008358
sub_8008358: @ 0x08008358
	push {r4, r5, r6, r7, lr}
	adds r2, r1, #0
	adds r4, r0, #0
	asrs r5, r0, #0x1f
	asrs r3, r2, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	bl __muldi3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r7, r5, #0
	adds r6, r4, #0
	cmp r5, #0
	bge _0800837E
	movs r6, #0xff
	movs r7, #0
	adds r6, r6, r4
	adcs r7, r5
_0800837E:
	lsls r3, r7, #0x18
	lsrs r2, r6, #8
	adds r0, r3, #0
	orrs r0, r2
	asrs r1, r7, #8
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8008394 @refer to MathUtil_Div32 in pokeemerald
sub_8008394: @ 0x08008394
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r2, r1, #0
	asrs r5, r4, #0x1f
	lsrs r0, r4, #0x18
	mov r8, r0
	lsls r6, r5, #8
	mov r1, r8
	orrs r1, r6
	lsls r0, r4, #8
	asrs r3, r2, #0x1f
	bl __divdi3
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80083BC
sub_80083BC: @ 0x080083BC
	push {r4, r5, r6, r7, lr}
	ldr r6, _08008400
	movs r7, #0
	strh r7, [r6]
	ldr r5, _08008404
	ldrh r0, [r5]
	ldr r1, _08008408
	ands r1, r0
	strh r1, [r5]
	movs r4, #1
	strh r4, [r6]
	bl m4aSoundVSync
	bl sub_8034E48
	ldr r0, _0800840C
	ldr r0, [r0]
	cmp r0, #0
	beq _080083E6
	bl _call_via_r0
_080083E6:
	bl sub_8008208
	bl m4aSoundMain
	strh r7, [r6]
	ldrh r0, [r5]
	orrs r0, r4
	strh r0, [r5]
	strh r4, [r6]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008400: .4byte 0x04000208
_08008404: .4byte 0x04000200
_08008408: .4byte 0x0000FFFE
_0800840C: .4byte 0x0201CB20

	THUMB_FUNC_START sub_8008410
sub_8008410: @ 0x08008410
	push {lr}
	ldr r0, _08008428
	ldr r0, [r0]
	cmp r0, #0
	beq _0800841E
	bl _call_via_r0
_0800841E:
	bl sub_8008270
	pop {r0}
	bx r0
	.align 2, 0
_08008428: .4byte 0x0201CB24

    THUMB_FUNC_START sub_800842C
sub_800842C: @ 0x0800842C
    bx lr

	THUMB_FUNC_START sub_8008430
sub_8008430: @ 0x08008430
	push {r4, r5, r6, r7, lr}
	ldr r5, _08008468
	movs r7, #0
	strh r7, [r5]
	ldr r4, _0800846C
	ldrh r0, [r4]
	ldr r1, _08008470
	ands r1, r0
	strh r1, [r4]
	movs r6, #1
	strh r6, [r5]
	ldr r0, _08008474
	ldr r0, [r0]
	cmp r0, #0
	beq _08008452
	bl _call_via_r0
_08008452:
	bl sub_80084A4
	strh r7, [r5]
	ldrh r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r4]
	strh r6, [r5]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008468: .4byte 0x04000208
_0800846C: .4byte 0x04000200
_08008470: .4byte 0x0000FF7F
_08008474: .4byte 0x0201CB28

	THUMB_FUNC_START sub_8008478
sub_8008478: @ 0x08008478
	ldr r1, _08008488
	str r0, [r1]
	cmp r0, #0
	bne _08008484
	ldr r0, _0800848C
	str r0, [r1]
_08008484:
	bx lr
	.align 2, 0
_08008488: .4byte 0x0201CB28
_0800848C: .4byte sub_800842C

	THUMB_FUNC_START sub_8008490
sub_8008490: @ 0x08008490
	ldr r2, _0800849C
	ldrh r1, [r2]
	ldr r0, _080084A0
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0800849C: .4byte 0x02020E00
_080084A0: .4byte 0x0000FF7F

	THUMB_FUNC_START sub_80084A4
sub_80084A4: @ 0x080084A4
	ldr r0, _080084B4
	movs r2, #0x80
	strh r2, [r0]
	ldr r1, _080084B8
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_080084B4: .4byte 0x04000202
_080084B8: .4byte 0x02020E00

	THUMB_FUNC_START sub_80084BC
sub_80084BC: @ 0x080084BC
	push {r4, r5, r6, r7, lr}
	ldr r5, _080084F4
	movs r7, #0
	strh r7, [r5]
	ldr r4, _080084F8
	ldrh r0, [r4]
	ldr r1, _080084FC
	ands r1, r0
	strh r1, [r4]
	movs r6, #1
	strh r6, [r5]
	ldr r0, _08008500
	ldr r0, [r0]
	cmp r0, #0
	beq _080084DE
	bl _call_via_r0
_080084DE:
	bl sub_8008530
	strh r7, [r5]
	ldrh r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r4]
	strh r6, [r5]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080084F4: .4byte 0x04000208
_080084F8: .4byte 0x04000200
_080084FC: .4byte 0x0000FFBF
_08008500: .4byte 0x0201CB2C

	THUMB_FUNC_START sub_8008504
sub_8008504: @ 0x08008504
	ldr r1, _08008514
	str r0, [r1]
	cmp r0, #0
	bne _08008510
	ldr r0, _08008518
	str r0, [r1]
_08008510:
	bx lr
	.align 2, 0
_08008514: .4byte 0x0201CB2C
_08008518: .4byte sub_800842C

	THUMB_FUNC_START sub_800851C
sub_800851C: @ 0x0800851C
	ldr r2, _08008528
	ldrh r1, [r2]
	ldr r0, _0800852C
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_08008528: .4byte 0x02020E00
_0800852C: .4byte 0x0000FFBF

	THUMB_FUNC_START sub_8008530
sub_8008530: @ 0x08008530
	ldr r0, _08008540
	movs r2, #0x40
	strh r2, [r0]
	ldr r1, _08008544
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_08008540: .4byte 0x04000202
_08008544: .4byte 0x02020E00

  .align 2, 0
