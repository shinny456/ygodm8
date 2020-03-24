    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED


	THUMB_FUNC_START sub_80211D4
sub_80211D4: @ 0x080211D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r1, #0
	movs r0, #0
_080211E2:
	movs r4, #0
	adds r0, #1
	mov ip, r0
_080211E8:
	movs r1, #0
	movs r3, #0
	adds r7, r6, #0
	adds r7, #8
	adds r4, #1
_080211F2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080211F2
	str r1, [r6]
	movs r1, #0
	movs r3, #0
_08021202:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08021202
	str r1, [r6, #4]
	adds r6, r7, #0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _080211E8
	adds r6, #0x40
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080211E2
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8021234
sub_8021234: @ 0x08021234
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x16
	ands r0, r2
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	bne _08021258
	b _08021384
_08021258:
	cmp r0, r1
	ble _0802125E
	b _080214AC
_0802125E:
	cmp r0, #0
	beq _08021264
	b _080214AC
_08021264:
	movs r0, #0
	mov ip, r0
	ldrh r0, [r3]
	ldrh r1, [r3, #2]
	ldrh r2, [r3, #4]
	mov sl, r2
	ldrh r3, [r3, #6]
	str r3, [sp, #0x10]
	movs r2, #0x80
	lsls r2, r2, #8
	mov r8, r2
	lsls r0, r0, #5
	str r0, [sp]
	lsls r1, r1, #5
	mov sb, r1
_08021282:
	ldrb r1, [r5]
	lsls r1, r1, #8
	ldrb r0, [r5, #1]
	orrs r0, r1
	lsls r0, r0, #0x11
	lsrs r2, r0, #0x10
	movs r4, #0
	movs r3, #0
_08021292:
	adds r0, r2, #0
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08021292
	ldr r1, [sp]
	adds r0, r1, r6
	str r4, [r0]
	movs r4, #0
	movs r3, #0
	movs r7, #0x80
	lsls r7, r7, #8
_080212BE:
	adds r0, r2, #0
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080212BE
	mov r2, sb
	adds r0, r2, r6
	str r4, [r0]
	adds r5, #2
	adds r6, #4
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #7
	bls _08021282
	subs r6, #0x20
	movs r0, #0
	mov ip, r0
	movs r1, #0x80
	lsls r1, r1, #8
	mov sb, r1
	mov r2, sl
	lsls r2, r2, #5
	str r2, [sp, #4]
	ldr r0, [sp, #0x10]
	lsls r0, r0, #5
	mov sl, r0
_0802130A:
	ldrb r1, [r5]
	lsls r1, r1, #8
	ldrb r0, [r5, #1]
	orrs r0, r1
	lsls r0, r0, #0x11
	lsrs r2, r0, #0x10
	movs r4, #0
	movs r3, #0
	adds r7, r5, #2
	adds r1, r6, #4
	mov r8, r1
	movs r0, #1
	add ip, r0
_08021324:
	adds r0, r2, #0
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08021324
	ldr r1, [sp, #4]
	adds r0, r1, r6
	str r4, [r0]
	movs r4, #0
	movs r3, #0
	movs r5, #0x80
	lsls r5, r5, #8
_08021350:
	adds r0, r2, #0
	ands r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08021350
	mov r2, sl
	adds r0, r2, r6
	str r4, [r0]
	adds r5, r7, #0
	mov r6, r8
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #3
	bls _0802130A
	b _080214AC
_08021384:
	movs r2, #0
	mov ip, r2
	ldrh r0, [r3]
	ldrh r1, [r3, #2]
	ldrh r2, [r3, #4]
	mov sl, r2
	ldrh r3, [r3, #6]
	str r3, [sp, #0x10]
	movs r2, #0x80
	lsls r2, r2, #8
	mov sb, r2
	lsls r0, r0, #5
	adds r7, r6, r0
	lsls r1, r1, #5
	str r1, [sp, #8]
_080213A2:
	ldrb r1, [r5]
	lsls r1, r1, #8
	ldrb r0, [r5, #1]
	orrs r0, r1
	lsls r0, r0, #0x11
	lsrs r2, r0, #0x10
	ldr r4, [r7]
	movs r3, #4
_080213B2:
	adds r0, r2, #0
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _080213B2
	str r4, [r7]
	movs r4, #0
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #8
	mov r8, r0
_080213DC:
	adds r0, r2, #0
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _080213DC
	ldr r2, [sp, #8]
	adds r0, r2, r6
	str r4, [r0]
	adds r5, #2
	adds r7, #4
	adds r6, #4
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #7
	bls _080213A2
	subs r6, #0x20
	movs r0, #0
	mov ip, r0
	mov r1, sl
	lsls r1, r1, #5
	mov sb, r1
	movs r2, #0x80
	lsls r2, r2, #8
	mov sl, r2
	ldr r0, [sp, #0x10]
	lsls r0, r0, #5
	str r0, [sp, #0xc]
_0802142C:
	ldrb r0, [r5]
	lsls r0, r0, #8
	ldrb r1, [r5, #1]
	orrs r1, r0
	lsls r1, r1, #0x11
	lsrs r2, r1, #0x10
	mov r1, sb
	adds r0, r1, r6
	ldr r4, [r0]
	movs r3, #4
	adds r7, r5, #2
	adds r0, r6, #4
	mov r8, r0
	movs r1, #1
	add ip, r1
_0802144A:
	adds r0, r2, #0
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0802144A
	mov r0, sb
	adds r1, r0, r6
	ldr r0, [r1]
	orrs r0, r4
	str r0, [r1]
	movs r4, #0
	movs r3, #0
	movs r5, #0x80
	lsls r5, r5, #8
_0802147A:
	adds r0, r2, #0
	ands r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0802147A
	ldr r1, [sp, #0xc]
	adds r0, r1, r6
	str r4, [r0]
	adds r5, r7, #0
	mov r6, r8
	mov r2, ip
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #3
	bls _0802142C
_080214AC:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80214BC
sub_80214BC: @ 0x080214BC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_80210B8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080214F0
	adds r0, r0, r1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_802152C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080214F0: .4byte 0x08DF1C2A

	THUMB_FUNC_START sub_80214F4
sub_80214F4: @ 0x080214F4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_80210B8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08021528
	adds r0, r0, r1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_8021138
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08021528: .4byte 0x08DF1C2A

	THUMB_FUNC_START sub_802152C
sub_802152C: @ 0x0802152C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r1, #0
	movs r0, #0x80
	mov r8, r0
_0802153C:
	ldrb r2, [r6]
	adds r6, #1
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	movs r4, #0
	movs r3, #0
	adds r7, r5, #4
	adds r1, #1
	mov ip, r1
_0802154E:
	adds r0, r2, #0
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r4, r0
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0802154E
	str r4, [r5]
	adds r5, r7, #0
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _0802153C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8021584
sub_8021584: @ 0x08021584
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_80210B8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080215B8
	adds r0, r0, r1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80215F4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080215B8: .4byte 0x08DF3C00

	THUMB_FUNC_START sub_80215BC
sub_80215BC: @ 0x080215BC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_80210B8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080215F0
	adds r0, r0, r1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80211D4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080215F0: .4byte 0x08DF3C00

	THUMB_FUNC_START sub_80215F4
sub_80215F4: @ 0x080215F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r0, #0
	movs r1, #0x80
	mov sb, r1
_08021606:
	movs r1, #0
	adds r0, #1
	mov r8, r0
_0802160C:
	ldrb r2, [r4]
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	movs r6, #0
	movs r3, #0
	adds r4, #1
	adds r5, r7, #4
	adds r1, #1
	mov ip, r1
_0802161E:
	adds r0, r2, #0
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1f
	lsls r1, r3, #2
	lsls r0, r1
	orrs r6, r0
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0802161E
	str r6, [r7]
	adds r7, r5, #0
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _0802160C
	adds r7, #0x20
	mov r1, r8
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08021606
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8021664
sub_8021664: @ 0x08021664
	adds r2, r0, #0
	ldr r1, [r2]
	movs r3, #0
_0802166A:
	ldr r0, [r2, #4]
	lsls r1, r1, #4
	bics r1, r0
	lsls r1, r1, #1
	orrs r1, r0
	str r1, [r2, #4]
	adds r1, r0, #0
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #6
	bls _0802166A
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8021688
sub_8021688: @ 0x08021688
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r3]
	movs r4, #0
_08021690:
	lsls r2, r2, #4
	ldr r1, [r3, #4]
	bics r2, r1
	lsls r0, r2, #1
	orrs r0, r1
	str r0, [r3, #4]
	adds r2, r1, #0
	adds r3, #4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _08021690
	adds r3, #0x20
	movs r4, #0
_080216AE:
	lsls r2, r2, #4
	ldr r1, [r3, #4]
	bics r2, r1
	lsls r0, r2, #1
	orrs r0, r1
	str r0, [r3, #4]
	adds r2, r1, #0
	adds r3, #4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _080216AE
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80216D0
sub_80216D0: @ 0x080216D0
	adds r2, r0, #0
	movs r3, #0
_080216D4:
	ldr r0, [r2]
	lsls r1, r0, #4
	orrs r0, r1
	stm r2!, {r0}
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #6
	bls _080216D4
	bx lr
	.byte 0xF0, 0xB5, 0x06, 0x1C, 0x14, 0x1C, 0x1D, 0x1C
	.byte 0x09, 0x04, 0x09, 0x0C, 0x24, 0x04, 0x24, 0x0C, 0xFF, 0x20, 0x08, 0x40, 0x00, 0x02, 0x09, 0x0A
	.byte 0x08, 0x43, 0xFF, 0xF7, 0xD9, 0xFC, 0x38, 0x1C, 0x31, 0x1C, 0x22, 0x1C, 0x2B, 0x1C, 0xFF, 0xF7
	.byte 0x91, 0xFD, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47

.align 2, 0
