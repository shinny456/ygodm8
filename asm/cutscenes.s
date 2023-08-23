    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED


	THUMB_FUNC_START sub_8004260
sub_8004260: @ 0x08004260
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _08004304
	ldr r0, [r0]
	ldr r0, [r0, #4]
	mov sb, r0
	movs r0, #0xff
	lsls r0, r0, #8
	mov r8, r0
	ldr r2, _08004308
	adds r2, #4
	mov sl, r2
_08004280:
	lsls r4, r6, #3
	ldr r7, _08004308
	adds r3, r4, r7
	mov r0, sb
	adds r5, r4, r0
	ldrh r2, [r5]
	mov r1, r8
	ands r1, r2
	ldr r7, _0800430C
	ldr r7, [r7]
	mov ip, r7
	movs r0, #0xc5
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	orrs r1, r2
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r3]
	ldr r3, _08004308
	adds r3, #2
	adds r3, r4, r3
	ldrh r1, [r5, #2]
	mov r2, r8
	ands r2, r1
	movs r0, #0xad
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r7, _08004310
	adds r0, r7, #0
	ands r1, r0
	orrs r2, r1
	strh r2, [r3]
	add r4, sl
	ldrh r1, [r5, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r3, _08004314
	adds r0, r3, #0
	ands r1, r0
	orrs r2, r1
	strh r2, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #9
	bls _08004280
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004304: .4byte gUnk_8FA3A44
_08004308: .4byte gOamBuffer
_0800430C: .4byte g8DF7594
_08004310: .4byte 0x000001FF
_08004314: .4byte 0x000003FF

	THUMB_FUNC_START sub_8004318
sub_8004318: @ 0x08004318
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _080043BC
	ldr r0, [r0]
	ldr r0, [r0, #4]
	mov sb, r0
	movs r0, #0xff
	lsls r0, r0, #8
	mov r8, r0
	ldr r2, _080043C0
	adds r2, #4
	mov sl, r2
_08004338:
	lsls r4, r6, #3
	ldr r7, _080043C0
	adds r3, r4, r7
	mov r0, sb
	adds r5, r4, r0
	ldrh r2, [r5]
	mov r1, r8
	ands r1, r2
	ldr r7, _080043C4
	ldr r7, [r7]
	mov ip, r7
	movs r0, #0xc5
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	orrs r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r3]
	ldr r3, _080043C0
	adds r3, #2
	adds r3, r4, r3
	ldrh r1, [r5, #2]
	mov r2, r8
	ands r2, r1
	movs r0, #0xad
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r7, _080043C8
	adds r0, r7, #0
	ands r1, r0
	orrs r2, r1
	strh r2, [r3]
	add r4, sl
	ldrh r1, [r5, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r3, _080043CC
	adds r0, r3, #0
	ands r1, r0
	orrs r2, r1
	strh r2, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #9
	bls _08004338
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080043BC: .4byte gUnk_8FA3A44
_080043C0: .4byte gOamBuffer
_080043C4: .4byte g8DF7594
_080043C8: .4byte 0x000001FF
_080043CC: .4byte 0x000003FF

	THUMB_FUNC_START sub_80043D0
sub_80043D0: @ 0x080043D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _080045C8
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	ldr r1, _080045CC
	ldr r0, [r1]
	movs r5, #0xf5
	lsls r5, r5, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl fix_mul
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	str r0, [sp]
	ldr r2, _080045CC
	ldr r0, [r2]
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp]
	bl fix_mul
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldrh r4, [r4]
	mov sb, r4
	mov r2, sb
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov sb, r2
	ldr r1, _080045CC
	ldr r0, [r1]
	movs r2, #0xf9
	lsls r2, r2, #1
	mov sl, r2
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl fix_mul
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _080045CC
	ldr r0, [r2]
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl fix_mul
	ldr r7, _080045D0
	strh r6, [r7]
	strh r5, [r7, #8]
	strh r4, [r7, #0x10]
	strh r0, [r7, #0x18]
	ldr r2, _080045CC
	ldr r0, [r2]
	movs r4, #0xf6
	lsls r4, r4, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl fix_mul
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r2, _080045CC
	ldr r0, [r2]
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp]
	bl fix_mul
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r2, _080045CC
	ldr r0, [r2]
	movs r1, #0xfa
	lsls r1, r1, #1
	mov sl, r1
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl fix_mul
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _080045CC
	ldr r0, [r1]
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl fix_mul
	adds r1, r7, #0
	adds r1, #0x60
	strh r6, [r1]
	adds r1, #8
	strh r5, [r1]
	adds r1, #8
	strh r4, [r1]
	adds r1, #8
	strh r0, [r1]
	ldr r1, _080045CC
	ldr r0, [r1]
	movs r4, #0xf7
	lsls r4, r4, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl fix_mul
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r1, _080045CC
	ldr r0, [r1]
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp]
	bl fix_mul
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r1, _080045CC
	ldr r0, [r1]
	movs r2, #0xfb
	lsls r2, r2, #1
	mov sl, r2
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl fix_mul
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _080045CC
	ldr r0, [r2]
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl fix_inverse
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl fix_mul
	adds r1, r7, #0
	adds r1, #0xc0
	strh r6, [r1]
	adds r1, #8
	strh r5, [r1]
	adds r1, #8
	strh r4, [r1]
	adds r1, #8
	strh r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080045C8: .4byte sin_cos_table
_080045CC: .4byte g8DF7594
_080045D0: .4byte gOamBuffer+6

	THUMB_FUNC_START sub_80045D4
sub_80045D4: @ 0x080045D4
	push {r4, r5, r6, r7, lr}
	ldr r1, _080045EC
	ldr r0, [r1]
	movs r3, #0xab
	lsls r3, r3, #1
	adds r2, r0, r3
	ldrb r0, [r2]
	mov ip, r1
	cmp r0, #0xbf
	bls _080045F0
	movs r0, #0
	b _080045F6
	.align 2, 0
_080045EC: .4byte g8DF7594
_080045F0:
	cmp r0, #0x80
	bls _080045F8
	movs r0, #0x80
_080045F6:
	strb r0, [r2]
_080045F8:
	movs r5, #0
	ldr r7, _08004674
_080045FC:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #1
	adds r6, r0, r7
	mov r0, ip
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x36
	adds r0, r0, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _08004626
	adds r0, #0x7f
_08004626:
	asrs r0, r0, #7
	subs r4, r2, r0
	adds r0, r3, #0
	adds r0, #0x96
	adds r0, r0, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _0800463E
	adds r0, #0x7f
_0800463E:
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r4
	adds r0, r3, #0
	adds r0, #0xf6
	adds r0, r0, r5
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r3, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _0800465A
	adds r0, #0x7f
_0800465A:
	asrs r0, r0, #7
	subs r0, r3, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _080045FC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004674: .4byte 0x02000000

	THUMB_FUNC_START sub_8004678
sub_8004678: @ 0x08004678
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08004694
	ldr r0, [r1]
	ldr r3, _08004698
	adds r2, r0, r3
	ldrb r0, [r2]
	mov r8, r1
	cmp r0, #0xbf
	bls _0800469C
	movs r0, #0
	b _080046A2
	.align 2, 0
_08004694: .4byte g8DF7594
_08004698: .4byte 0x00000157
_0800469C:
	cmp r0, #0x80
	bls _080046A4
	movs r0, #0x80
_080046A2:
	strb r0, [r2]
_080046A4:
	movs r6, #0
	ldr r0, _08004728
	mov ip, r0
_080046AA:
	adds r0, r6, #0
	adds r0, #0x90
	lsls r0, r0, #1
	mov r1, ip
	adds r7, r0, r1
	mov r0, r8
	ldr r3, [r0]
	adds r4, r6, #0
	adds r4, #0x20
	adds r0, r3, #0
	adds r0, #0x36
	adds r0, r0, r4
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r1, _0800472C
	adds r0, r3, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _080046D6
	adds r0, #0x7f
_080046D6:
	asrs r0, r0, #7
	subs r5, r2, r0
	adds r0, r3, #0
	adds r0, #0x96
	adds r0, r0, r4
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _080046EE
	adds r0, #0x7f
_080046EE:
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r5
	adds r0, r3, #0
	adds r0, #0xf6
	adds r0, r0, r4
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r3, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _0800470A
	adds r0, #0x7f
_0800470A:
	asrs r0, r0, #7
	subs r0, r3, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r7]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _080046AA
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004728: .4byte 0x02000000
_0800472C: .4byte 0x00000157

	THUMB_FUNC_START sub_8004730
sub_8004730: @ 0x08004730
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _08004750
	ldr r0, [r1]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r2, r0, r3
	ldrb r0, [r2]
	mov ip, r1
	cmp r0, #0xbf
	bls _08004754
	movs r0, #0
	b _0800475A
	.align 2, 0
_08004750: .4byte g8DF7594
_08004754:
	cmp r0, #0x80
	bls _0800475C
	movs r0, #0x80
_0800475A:
	strb r0, [r2]
_0800475C:
	movs r5, #0
	ldr r7, _08004890
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	mov r8, r1
_0800476C:
	lsls r0, r5, #1
	adds r6, r0, r7
	ldrh r1, [r6]
	movs r4, #0x1f
	ands r4, r1
	mov r0, sb
	ands r0, r1
	lsrs r2, r0, #5
	mov r0, r8
	ands r0, r1
	lsrs r1, r0, #0xa
	mov r3, ip
	ldr r0, [r3]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r4, r4, r0
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r4
	adds r0, r1, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r1, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _0800476C
	movs r5, #0
	mov r8, r7
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r7, #0xf8
	lsls r7, r7, #7
_080047C8:
	adds r0, r5, #0
	adds r0, #0x90
	lsls r0, r0, #1
	mov r1, r8
	adds r6, r0, r1
	ldrh r1, [r6]
	movs r4, #0x1f
	ands r4, r1
	mov r0, sb
	ands r0, r1
	lsrs r2, r0, #5
	adds r0, r7, #0
	ands r0, r1
	lsrs r1, r0, #0xa
	mov r3, ip
	ldr r0, [r3]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r4, r4, r0
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r4
	adds r0, r1, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r1, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _080047C8
	movs r5, #0
	ldr r0, _08004890
	mov r8, r0
	movs r1, #0xf8
	lsls r1, r1, #2
	mov sb, r1
	movs r7, #0xf8
	lsls r7, r7, #7
_0800482C:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #1
	mov r3, r8
	adds r6, r0, r3
	ldrh r1, [r6]
	movs r4, #0x1f
	ands r4, r1
	mov r0, sb
	ands r0, r1
	lsrs r2, r0, #5
	adds r0, r7, #0
	ands r0, r1
	lsrs r1, r0, #0xa
	mov r3, ip
	ldr r0, [r3]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r4, r4, r0
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r4
	adds r0, r1, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r1, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _0800482C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004890: .4byte 0x02000000

	THUMB_FUNC_START sub_8004894
sub_8004894: @ 0x08004894
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r6, _080048DC
	ldr r7, _080048E0
	adds r3, r6, #0
	ldr r5, _080048E4
	movs r4, #0xb7
	lsls r4, r4, #1
_080048A4:
	subs r1, r5, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	subs r0, r4, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xe
	bls _080048A4
	ldr r2, [r7]
	ldrh r3, [r2, #0xa]
	movs r0, #0x1f
	ands r0, r3
	cmp r0, #0xf
	bhi _080048E8
	movs r1, #0xf
	bics r1, r3
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x16
	adds r0, r0, r1
	ldrh r1, [r0]
	b _080048EA
	.align 2, 0
_080048DC: .4byte 0x02000000
_080048E0: .4byte g8DF7594
_080048E4: .4byte 0x0000016F
_080048E8:
	ldrh r1, [r2, #0x16]
_080048EA:
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80048F8
sub_80048F8: @ 0x080048F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r7, _080049D0
	ldr r0, _080049D4
	mov ip, r0
	ldr r2, _080049D8
	mov r8, r2
	ldr r3, _080049DC
	mov sb, r3
	ldr r0, _080049E0
	mov sl, r0
	ldr r3, _080049E4
	movs r6, #0
	movs r5, #0xa0
_0800491C:
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
	bls _0800491C
	ldr r0, _080049E8
	movs r2, #1
	strh r2, [r0]
	subs r0, #8
	strh r2, [r0]
	ldr r1, _080049EC
	movs r0, #8
	strh r0, [r1]
	adds r1, #8
	ldr r3, _080049F0
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _080049F4
	adds r0, r3, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r3, #0xa0
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r3, _080049F8
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	ldr r0, _080049FC
	strb r2, [r0]
	movs r4, #0
	strh r4, [r7]
	mov r0, ip
	strh r4, [r0]
	mov r2, r8
	strh r4, [r2]
	mov r3, sb
	strh r4, [r3]
	mov r0, sl
	strh r4, [r0]
	ldr r2, _08004A00
	strh r4, [r2]
	ldr r3, _08004A04
	strh r4, [r3]
	ldr r0, _08004A08
	strh r4, [r0]
	bl LoadBgOffsets
	ldr r1, _08004A0C
	ldr r2, _08004A10
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08004A14
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
_080049D0: .4byte gBG0HOFS
_080049D4: .4byte gBG0VOFS
_080049D8: .4byte gBG1HOFS
_080049DC: .4byte gBG1VOFS
_080049E0: .4byte gBG2HOFS
_080049E4: .4byte gOamBuffer
_080049E8: .4byte 0x04000208
_080049EC: .4byte 0x04000004
_080049F0: .4byte 0x00000702
_080049F4: .4byte 0x0000170B
_080049F8: .4byte 0x00001078
_080049FC: .4byte 0x0400004A
_08004A00: .4byte gBG2VOFS
_08004A04: .4byte gBG3HOFS
_08004A08: .4byte gBG3VOFS
_08004A0C: .4byte gBLDCNT
_08004A10: .4byte 0x00003F48
_08004A14: .4byte gBLDALPHA

	THUMB_FUNC_START sub_8004A18
sub_8004A18: @ 0x08004A18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r0, _08004AFC
	mov r8, r0
	ldr r7, _08004B00
	ldr r1, _08004B04
	mov ip, r1
	ldr r2, _08004B08
	mov sb, r2
	ldr r3, _08004B0C
	mov sl, r3
	ldr r3, _08004B10
	movs r6, #0
	movs r5, #0xa0
_08004A3C:
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
	bls _08004A3C
	ldr r0, _08004B14
	movs r2, #1
	strh r2, [r0]
	subs r0, #8
	strh r2, [r0]
	ldr r1, _08004B18
	movs r0, #8
	strh r0, [r1]
	adds r1, #6
	ldr r3, _08004B1C
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _08004B20
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _08004B24
	adds r0, r3, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r3, #0xb8
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r3, _08004B28
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	ldr r0, _08004B2C
	strb r2, [r0]
	movs r0, #0
	mov r1, r8
	strh r0, [r1]
	strh r0, [r7]
	mov r2, ip
	strh r0, [r2]
	movs r1, #0xa0
	mov r3, sb
	strh r1, [r3]
	mov r2, sl
	strh r0, [r2]
	ldr r3, _08004B30
	strh r1, [r3]
	ldr r1, _08004B34
	strh r0, [r1]
	ldr r2, _08004B38
	strh r0, [r2]
	bl LoadBgOffsets
	ldr r1, _08004B3C
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _08004B40
	movs r0, #0x10
	strh r0, [r1]
	bl LoadBlendingRegs
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004AFC: .4byte gBG0HOFS
_08004B00: .4byte gBG0VOFS
_08004B04: .4byte gBG1HOFS
_08004B08: .4byte gBG1VOFS
_08004B0C: .4byte gBG2HOFS
_08004B10: .4byte gOamBuffer
_08004B14: .4byte 0x04000208
_08004B18: .4byte 0x04000004
_08004B1C: .4byte 0x0000140A
_08004B20: .4byte 0x0000150A
_08004B24: .4byte 0x00000C03
_08004B28: .4byte 0x00001078
_08004B2C: .4byte 0x0400004A
_08004B30: .4byte gBG2VOFS
_08004B34: .4byte gBG3HOFS
_08004B38: .4byte gBG3VOFS
_08004B3C: .4byte gBLDCNT
_08004B40: .4byte gBLDY

	THUMB_FUNC_START sub_8004B44
sub_8004B44: @ 0x08004B44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r3, #0
	ldr r7, _08004BFC
	ldr r0, _08004C00
	mov ip, r0
	ldr r2, _08004C04
	mov r8, r2
	ldr r0, _08004C08
	mov sb, r0
	ldr r4, _08004C0C
	movs r6, #0
	movs r5, #0xa0
_08004B62:
	lsls r0, r3, #3
	adds r0, r0, r4
	strh r5, [r0]
	lsls r2, r3, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r4
	strh r6, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x7f
	bls _08004B62
	ldr r0, _08004C10
	movs r2, #1
	strh r2, [r0]
	subs r0, #8
	strh r2, [r0]
	ldr r1, _08004C14
	movs r0, #8
	strh r0, [r1]
	adds r1, #0xa
	ldr r3, _08004C18
	adds r0, r3, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r3, #0x90
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r3, _08004C1C
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	ldr r0, _08004C20
	strb r2, [r0]
	movs r4, #0
	strh r4, [r7]
	mov r0, ip
	strh r4, [r0]
	mov r2, r8
	strh r4, [r2]
	mov r3, sb
	strh r4, [r3]
	bl LoadBgOffsets
	ldr r1, _08004C24
	ldr r2, _08004C28
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08004C2C
	strh r4, [r0]
	bl LoadBlendingRegs
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004BFC: .4byte gBG2HOFS
_08004C00: .4byte gBG2VOFS
_08004C04: .4byte gBG3HOFS
_08004C08: .4byte gBG3VOFS
_08004C0C: .4byte gOamBuffer
_08004C10: .4byte 0x04000208
_08004C14: .4byte 0x04000004
_08004C18: .4byte 0x00001F0B
_08004C1C: .4byte 0x00001078
_08004C20: .4byte 0x0400004A
_08004C24: .4byte gBLDCNT
_08004C28: .4byte 0x00003F4C
_08004C2C: .4byte gBLDALPHA

	THUMB_FUNC_START sub_8004C30
sub_8004C30: @ 0x08004C30
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r7, _08004CD0
	ldr r0, _08004CD4
	mov ip, r0
	ldr r4, _08004CD8
	movs r6, #0
	movs r5, #0xa0
_08004C40:
	lsls r0, r3, #3
	adds r0, r0, r4
	strh r5, [r0]
	lsls r2, r3, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r4
	strh r6, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x7f
	bls _08004C40
	ldr r0, _08004CDC
	movs r2, #1
	strh r2, [r0]
	subs r0, #8
	strh r2, [r0]
	ldr r1, _08004CE0
	movs r0, #8
	strh r0, [r1]
	adds r1, #0xa
	ldr r3, _08004CE4
	adds r0, r3, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r3, #0xe0
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r3, _08004CE8
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	ldr r0, _08004CEC
	strb r2, [r0]
	movs r0, #0
	strh r0, [r7]
	movs r0, #0xa0
	mov r1, ip
	strh r0, [r1]
	bl LoadBgOffsets
	ldr r1, _08004CF0
	ldr r2, _08004CF4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08004CF8
	movs r0, #0x10
	strh r0, [r1]
	bl LoadBlendingRegs
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004CD0: .4byte gBG3HOFS
_08004CD4: .4byte gBG3VOFS
_08004CD8: .4byte gOamBuffer
_08004CDC: .4byte 0x04000208
_08004CE0: .4byte 0x04000004
_08004CE4: .4byte 0x00000F83
_08004CE8: .4byte 0x00001078
_08004CEC: .4byte 0x0400004A
_08004CF0: .4byte gBLDCNT
_08004CF4: .4byte 0x00003FD8
_08004CF8: .4byte gBLDY

	THUMB_FUNC_START sub_8004CFC
sub_8004CFC: @ 0x08004CFC
	push {r4, r5, r6, lr}
	ldr r1, _08004D28
	ldr r0, [r1]
	ldr r5, [r0]
	movs r2, #0
	adds r6, r1, #0
	ldr r4, _08004D2C
	movs r1, #0
	ldr r3, _08004D30
_08004D0E:
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	bls _08004D0E
	ldr r0, [r6]
	str r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004D28: .4byte g8DF7594
_08004D2C: .4byte 0x02018800
_08004D30: .4byte 0x00004313

	THUMB_FUNC_START sub_8004D34
sub_8004D34: @ 0x08004D34
	push {r4, lr}
	ldr r1, _08004D68
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _08004D6C
	movs r0, #1
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _08004D70
	movs r0, #2
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r0, _08004D74
	ldr r1, _08004D78
	adds r2, r4, #0
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004D68: .4byte gUnk_8A9A358
_08004D6C: .4byte gUnk_8A9C358
_08004D70: .4byte gUnk_8A9E358
_08004D74: .4byte gUnk_8AA6758
_08004D78: .4byte 0x02000200

	THUMB_FUNC_START sub_8004D7C
sub_8004D7C: @ 0x08004D7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r4, #0
	ldr r5, _08004DD8
	ldr r0, _08004DDC
	ldr r0, [r0]
	ldr r6, [r0, #4]
	adds r0, r5, #4
	mov r8, r0
	movs r3, #0x80
	lsls r3, r3, #3
	mov ip, r3
	adds r7, r5, #2
	mov sb, r7
_08004D9C:
	lsls r2, r4, #3
	adds r1, r2, r5
	adds r3, r2, r6
	ldrh r0, [r3]
	mov r7, ip
	orrs r0, r7
	strh r0, [r1]
	mov r0, sb
	adds r1, r2, r0
	ldrh r0, [r3, #2]
	strh r0, [r1]
	add r2, r8
	ldrh r0, [r3, #4]
	movs r3, #0xc0
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _08004D9C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004DD8: .4byte gOamBuffer
_08004DDC: .4byte gUnk_8FA389C

	THUMB_FUNC_START sub_8004DE0
sub_8004DE0: @ 0x08004DE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r5, _08004E48
	ldr r0, _08004E4C
	ldr r0, [r0]
	ldr r6, [r0, #4]
	adds r0, r5, #4
	mov r8, r0
	ldr r2, _08004E50
	mov sb, r2
	movs r7, #0x80
	lsls r7, r7, #3
	mov ip, r7
	adds r0, r5, #2
	mov sl, r0
_08004E06:
	lsls r3, r4, #3
	adds r1, r3, r5
	adds r2, r3, r6
	ldrh r0, [r2]
	mov r7, ip
	orrs r0, r7
	strh r0, [r1]
	mov r0, sl
	adds r1, r3, r0
	ldrh r0, [r2, #2]
	strh r0, [r1]
	add r3, r8
	ldrh r1, [r2, #4]
	mov r0, sb
	ands r0, r1
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x26
	bls _08004E06
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004E48: .4byte gOamBuffer
_08004E4C: .4byte gUnk_8FA3770
_08004E50: .4byte 0x000003FF

	THUMB_FUNC_START sub_8004E54
sub_8004E54: @ 0x08004E54
	push {lr}
	bl sub_8004260
	pop {r0}
	bx r0
	.byte 0x00, 0x00


.align 2, 0
