  .INCLUDE "asm/macro.inc"
  .SYNTAX UNIFIED


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
  
  thumb_func_start sub_80450B0
sub_80450B0: @ 0x080450B0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r4, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r5, #0
	movs r1, #0x10
	bl fix_div
	adds r1, r0, #0
	adds r0, r4, #0
	bl fix_mul
	mov sl, r0
	adds r0, r5, #0
	movs r1, #0x10
	bl fix_div
	adds r1, r0, #0
	adds r0, r6, #0
	bl fix_mul
	mov sb, r0
	adds r0, r5, #0
	movs r1, #0x10
	bl fix_div
	adds r1, r0, #0
	mov r0, r8
	bl fix_mul
	mov r1, sl
	subs r4, r4, r1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r1, sb
	subs r6, r6, r1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x13
	orrs r4, r6
	mov r1, r8
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0xe
	orrs r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_804513C
sub_804513C: @ 0x0804513C
	movs r0, #0
	bx lr

	thumb_func_start sub_8045140
sub_8045140: @ 0x08045140
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	cmp r7, #0x10
	beq _080451C2
	movs r6, #0x1f
	subs r4, r6, r0
	adds r0, r7, #0
	movs r1, #0x10
	bl fix_div
	adds r1, r0, #0
	adds r0, r4, #0
	bl fix_mul
	adds r4, r0, #0
	mov r0, sb
	subs r5, r6, r0
	adds r0, r7, #0
	movs r1, #0x10
	bl fix_div
	adds r1, r0, #0
	adds r0, r5, #0
	bl fix_mul
	adds r5, r0, #0
	mov r0, sl
	subs r6, r6, r0
	adds r0, r7, #0
	movs r1, #0x10
	bl fix_div
	adds r1, r0, #0
	adds r0, r6, #0
	bl fix_mul
	add r4, r8
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	add r5, sb
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x13
	orrs r4, r5
	add r0, sl
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xe
	orrs r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	b _080451C4
_080451C2:
	ldr r0, _080451D4 @ =0x00007FFF
_080451C4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080451D4: .4byte 0x00007FFF

	thumb_func_start sub_80451D8
sub_80451D8: @ 0x080451D8
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
	lsls r0, r3, #4
	subs r0, r0, r3
	asrs r0, r0, #4
	movs r1, #0xc8
	muls r1, r3, r1
	asrs r1, r1, #8
	lsls r1, r1, #5
	orrs r0, r1
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #4
	adds r1, r1, r3
	asrs r1, r1, #8
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0

	thumb_func_start sub_8045220
sub_8045220: @ 0x08045220
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r5, #1
	adds r4, r4, r0
	cmp r5, r6
	bhi _0804527C
	movs r0, #0xf8
	lsls r0, r0, #2
	mov ip, r0
	movs r7, #0xf8
	lsls r7, r7, #7
_0804523E:
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
	lsls r0, r1, #5
	orrs r0, r1
	lsls r1, r1, #0xa
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	bls _0804523E
_0804527C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

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
