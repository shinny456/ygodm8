    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED



	THUMB_FUNC_START sub_8046920
sub_8046920: @ 0x08046920
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _08046B90
	adds r0, r6, #0
	bl sub_8043528
	cmp r0, #1
	bgt _08046938
	b _08046B6C
_08046938:
	subs r6, #0x28
	ldr r5, _08046B94
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldr r0, _08046B98
	strh r0, [r1]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r5, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	movs r7, #1
	orrs r0, r7
	strb r0, [r1, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r5, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	mov sl, r0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #5
	rsbs r0, r0, #0
	mov sb, r0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_8040360
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r5, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403E8
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	mov r8, r0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r1, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r1, [r0]
	ldr r0, _08046B9C
	strh r0, [r1]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	orrs r0, r7
	strb r0, [r1, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	mov r0, sl
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	mov r0, sb
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_8040360
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403E8
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r4, r4, r6
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r1, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r1, [r0]
	ldr r0, _08046BA0
	strh r0, [r1]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	orrs r0, r7
	strb r0, [r1, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	mov r2, sl
	ands r2, r0
	strb r2, [r1, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	mov r2, sb
	ands r2, r0
	strb r2, [r1, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_8040360
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403E8
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r4, r4, r6
	ldr r1, [r4]
	ldrb r0, [r1, #5]
	mov r2, r8
	ands r2, r0
	strb r2, [r1, #5]
_08046B6C:
	ldr r0, _08046BA4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046B80
	ldr r0, _08046BA8
	ldr r1, _08046B94
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08046B80:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046B90: .4byte gBoard+0x28
_08046B94: .4byte 0x02024250
_08046B98: .4byte 0x000002E2
_08046B9C: .4byte 0x000002F5
_08046BA0: .4byte 0x0000018F
_08046BA4: .4byte gUnk_02021C08
_08046BA8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8046BAC
sub_8046BAC: @ 0x08046BAC
	push {r4, r5, lr}
	ldr r5, _08046C0C
	adds r0, r5, #0
	bl sub_8043528
	cmp r0, #4
	bgt _08046BD8
	movs r4, #0
_08046BBC:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08046BCE
	adds r0, r1, #0
	bl sub_804037C
_08046BCE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08046BBC
_08046BD8:
	ldr r3, _08046C10
	ldr r2, _08046C14
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08046C18
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046C04
	ldr r1, _08046C1C
	ldr r0, _08046C20
	strh r0, [r1]
	bl sub_801CEBC
_08046C04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08046C0C: .4byte gBoard+0x14
_08046C10: .4byte gBoard
_08046C14: .4byte 0x02024250
_08046C18: .4byte gUnk_02021C08
_08046C1C: .4byte gUnk_02021C10
_08046C20: .4byte 0x0000030A

	THUMB_FUNC_START sub_8046C24
sub_8046C24: @ 0x08046C24
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r7, _08046D28
	adds r0, r7, #0
	bl sub_8043538
	cmp r0, #5
	beq _08046D0A
	adds r0, r7, #0
	bl sub_8043528
	cmp r0, #5
	beq _08046D0A
	adds r0, r7, #0
	bl sub_8042FC0
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r7, #0
	adds r0, #0x14
	movs r1, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	adds r3, r7, #0
	subs r3, #0x14
	lsrs r4, r4, #0x16
	ldr r6, _08046D2C
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r1, [r5]
	str r3, [sp]
	bl sub_8040928
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r3, [sp]
	adds r0, r0, r3
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r3
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r3
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r3
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r3
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #4]
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r4, r4, r3
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r0, [r5]
	bl sub_80402BC
_08046D0A:
	ldr r0, _08046D30
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046D1E
	ldr r0, _08046D34
	ldr r1, _08046D2C
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08046D1E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046D28: .4byte gBoard+0x14
_08046D2C: .4byte 0x02024250
_08046D30: .4byte gUnk_02021C08
_08046D34: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8046D38
sub_8046D38: @ 0x08046D38
	push {r4, r5, r6, lr}
	ldr r5, _08046DA0
	adds r0, r5, #0
	bl sub_8043528
	cmp r0, #5
	beq _08046D84
	movs r4, #0
	adds r6, r5, #0
	subs r6, #0x14
	ldr r5, _08046DA4
_08046D4E:
	lsls r0, r4, #2
	adds r1, r6, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08046DA8
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _08046D7A
	ldrb r0, [r5, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r5, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r0, [r1]
	bl sub_8040368
_08046D7A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08046D4E
_08046D84:
	ldr r0, _08046DAC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046D98
	ldr r0, _08046DB0
	ldr r1, _08046DA4
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08046D98:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08046DA0: .4byte gBoard+0x14
_08046DA4: .4byte 0x02024250
_08046DA8: .4byte gCardInfo
_08046DAC: .4byte gUnk_02021C08
_08046DB0: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8046DB4
sub_8046DB4: @ 0x08046DB4
	push {r4, r5, lr}
	ldr r5, _08046E00
	adds r0, r5, #0
	bl sub_8043528
	cmp r0, #5
	beq _08046E20
	adds r0, r5, #0
	bl sub_8042F44
	lsls r0, r0, #0x18
	ldr r4, _08046E04
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r1, [r1]
	strh r1, [r4]
	ldr r1, _08046E08
	adds r1, #0xf0
	ldrb r1, [r1]
	strb r1, [r4, #2]
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	bl GetCurrTurn
	cmp r0, #0
	bne _08046E10
	ldr r0, _08046E0C
	ldrh r0, [r0, #0x12]
	bl sub_803F9E4
	b _08046E18
	.align 2, 0
_08046E00: .4byte gBoard+0x14
_08046E04: .4byte gUnk2021AC0
_08046E08: .4byte gDuel
_08046E0C: .4byte gCardInfo
_08046E10:
	ldr r0, _08046E54
	ldrh r0, [r0, #0x12]
	bl sub_803F99C
_08046E18:
	bl sub_803F29C
	bl sub_803F4C0
_08046E20:
	ldr r3, _08046E58
	ldr r2, _08046E5C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08046E60
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046E4E
	ldr r1, _08046E64
	movs r0, #0xbd
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_08046E4E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08046E54: .4byte gCardInfo
_08046E58: .4byte gBoard
_08046E5C: .4byte 0x02024250
_08046E60: .4byte gUnk_02021C08
_08046E64: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8046E68
sub_8046E68: @ 0x08046E68
	push {r4, r5, r6, lr}
	ldr r5, _08046F0C
	adds r0, r5, #0
	bl sub_8043538
	cmp r0, #5
	beq _08046EF2
	adds r0, r5, #0
	bl sub_8042FC0
	adds r4, r0, #0
	lsls r4, r4, #0x18
	adds r6, r5, #0
	subs r6, #0x14
	lsrs r4, r4, #0x16
	adds r4, r4, r5
	ldr r0, [r4]
	ldr r5, _08046F10
	ldrb r2, [r5, #2]
	lsls r1, r2, #2
	adds r1, r1, r2
	ldrb r2, [r5, #3]
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r1, [r1]
	bl sub_8040928
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r1, [r4]
	movs r0, #0
	strb r0, [r1, #4]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r5, [r5, #3]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80402BC
_08046EF2:
	ldr r0, _08046F14
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046F04
	ldr r1, _08046F18
	ldr r0, _08046F1C
	strh r0, [r1]
	bl sub_801CEBC
_08046F04:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08046F0C: .4byte gBoard+0x14
_08046F10: .4byte 0x02024250
_08046F14: .4byte gUnk_02021C08
_08046F18: .4byte gUnk_02021C10
_08046F1C: .4byte 0x000002FB

	THUMB_FUNC_START sub_8046F20
sub_8046F20: @ 0x08046F20
	push {r4, r5, r6, r7, lr}
	ldr r7, _08047028
	ldr r5, _0804702C
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	adds r6, r7, #0
	adds r6, #0x50
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_8043584
	cmp r0, #0
	ble _08047010
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_8043164
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	beq _08047010
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r1, [r4]
	bl sub_8040928
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #4]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r5, [r5, #3]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r0, [r4]
	bl sub_80402BC
_08047010:
	ldr r0, _08047030
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047022
	ldr r1, _08047034
	ldr r0, _08047038
	strh r0, [r1]
	bl sub_801CEBC
_08047022:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047028: .4byte gBoard
_0804702C: .4byte 0x02024250
_08047030: .4byte gUnk_02021C08
_08047034: .4byte gUnk_02021C10
_08047038: .4byte 0x000002FE

	THUMB_FUNC_START sub_804703C
sub_804703C: @ 0x0804703C
	push {r4, r5, r6, lr}
	ldr r6, _0804709C
	adds r0, r6, #0
	bl sub_8043528
	cmp r0, #0
	ble _08047080
	adds r0, r6, #0
	bl sub_80435C8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	adds r5, r6, #0
	subs r5, #0x28
	lsrs r4, r4, #0x16
	adds r4, r4, r6
	ldr r0, [r4]
	ldr r3, _080470A0
	ldrb r2, [r3, #2]
	lsls r1, r2, #2
	adds r1, r1, r2
	ldrb r3, [r3, #3]
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r1, [r1]
	bl sub_8040928
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
_08047080:
	ldr r0, _080470A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047094
	ldr r0, _080470A8
	ldr r1, _080470A0
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08047094:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804709C: .4byte gBoard+0x28
_080470A0: .4byte 0x02024250
_080470A4: .4byte gUnk_02021C08
_080470A8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_80470AC
sub_80470AC: @ 0x080470AC
	push {r4, r5, r6, lr}
	ldr r6, _080471A8
	adds r0, r6, #0
	bl sub_8043528
	cmp r0, #0
	beq _08047188
	adds r0, r6, #0
	bl sub_80435C8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	subs r6, #0x28
	lsrs r4, r4, #0x16
	ldr r5, _080471AC
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r1, [r0]
	movs r3, #0
	ldr r0, _080471B0
	strh r0, [r1]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r0, [r0]
	strb r3, [r0, #4]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_8040360
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403E8
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r4, r4, r6
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
_08047188:
	ldr r0, _080471B4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080471A0
	ldr r1, _080471B8
	ldr r0, _080471AC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _080471B0
	strh r0, [r1, #2]
	bl sub_801CEBC
_080471A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080471A8: .4byte gBoard+0x28
_080471AC: .4byte 0x02024250
_080471B0: .4byte 0x0000017B
_080471B4: .4byte gUnk_02021C08
_080471B8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_80471BC
sub_80471BC: @ 0x080471BC
	push {r4, lr}
	ldr r4, _08047210
	ldr r3, _08047214
	ldr r2, _08047218
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r2, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _0804721C
	adds r0, #0xf0
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	bl GetCurrTurn
	cmp r0, #0
	bne _08047224
	ldr r0, _08047220
	ldrh r0, [r0, #0x12]
	bl sub_803F9E4
	b _0804722C
	.align 2, 0
_08047210: .4byte gUnk2021AC0
_08047214: .4byte gBoard
_08047218: .4byte 0x02024250
_0804721C: .4byte gDuel
_08047220: .4byte gCardInfo
_08047224:
	ldr r0, _08047264
	ldrh r0, [r0, #0x12]
	bl sub_803F99C
_0804722C:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r2, _08047268
	ldr r4, _0804726C
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_804037C
	ldr r0, _08047270
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804725E
	ldr r1, _08047274
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
_0804725E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047264: .4byte gCardInfo
_08047268: .4byte gBoard
_0804726C: .4byte 0x02024250
_08047270: .4byte gUnk_02021C08
_08047274: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8047278
sub_8047278: @ 0x08047278
	push {r4, r5, r6, lr}
	ldr r4, _080472AC
	adds r0, r4, #0
	bl sub_8043528
	cmp r0, #4
	bgt _080472DE
	movs r0, #0
	movs r1, #0x15
	bl sub_8043930
	cmp r0, #0
	ble _080472DE
	adds r0, r4, #0
	bl sub_8043468
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	movs r5, #0
	ldr r6, _080472B0
	b _080472BA
	.align 2, 0
_080472AC: .4byte gDuel+0x1F0
_080472B0: .4byte gBoard
_080472B4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080472BA:
	cmp r5, #4
	bhi _080472DE
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080472B4
	bl SetCardInfo
	ldr r0, _080472F8
	ldrb r0, [r0, #0x16]
	cmp r0, #0x15
	bne _080472B4
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_080472DE:
	ldr r0, _080472FC
	ldrb r0, [r0]
	cmp r0, #0
	bne _080472F2
	ldr r1, _08047300
	movs r0, #0x9f
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_080472F2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080472F8: .4byte gCardInfo
_080472FC: .4byte gUnk_02021C08
_08047300: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8047304
sub_8047304: @ 0x08047304
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r7, #0
	movs r0, #0
	mov r8, r0
_08047314:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08047330
	adds r0, r5, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08047330
	ldrb r1, [r5, #5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804737E
_08047330:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r5, #8
	b _0804739A
_0804733A:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_8040928
	adds r0, r5, #0
	bl sub_80402BC
	adds r0, r6, #0
	bl sub_8040360
	adds r0, r6, #0
	bl sub_80403E8
	ldrb r1, [r6, #5]
	movs r2, #3
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	strb r4, [r6, #4]
	subs r2, #2
	adds r0, r2, #0
	ands r1, r0
	strb r1, [r6, #5]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r5, #8
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r6, #8
	b _0804739A
_0804737E:
	mov r0, r8
	cmp r0, #4
	bhi _0804739A
_08047384:
	ldrh r4, [r6]
	cmp r4, #0
	beq _0804733A
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r6, #8
	cmp r0, #4
	bls _08047384
_0804739A:
	cmp r7, #4
	bhi _080473A4
	mov r2, r8
	cmp r2, #4
	bls _08047314
_080473A4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80473B0
sub_80473B0: @ 0x080473B0
	push {r4, r5, lr}
	ldr r5, _08047444
	ldr r1, _08047448
	adds r0, r5, #0
	bl sub_80433E4
	cmp r0, #0
	beq _0804742C
	adds r0, r5, #0
	bl sub_8043528
	cmp r0, #0
	beq _0804742C
	adds r0, r5, #0
	bl sub_80435C8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	adds r4, r4, r5
	ldr r1, [r4]
	movs r5, #0
	ldr r0, _0804744C
	strh r0, [r1]
	ldr r0, [r4]
	bl sub_8040340
	ldr r0, [r4]
	bl sub_80406CC
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r0, [r4]
	bl sub_8040360
	ldr r0, [r4]
	bl sub_80403E8
	ldr r0, [r4]
	strb r5, [r0, #4]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
_0804742C:
	ldr r0, _08047450
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804743E
	ldr r1, _08047454
	ldr r0, _08047458
	strh r0, [r1]
	bl sub_801CEBC
_0804743E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08047444: .4byte gBoard+0x28
_08047448: .4byte 0x0000022B
_0804744C: .4byte 0x0000022D
_08047450: .4byte gUnk_02021C08
_08047454: .4byte gUnk_02021C10
_08047458: .4byte 0x00000233

	THUMB_FUNC_START sub_804745C
sub_804745C: @ 0x0804745C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _0804748C
	ldr r7, _08047490
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_80433E4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _08047494
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_80433E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r4, #0
	beq _08047538
	cmp r0, #0
	beq _08047528
	b _080474F0
	.align 2, 0
_0804748C: .4byte gBoard+0x28
_08047490: .4byte 0x0000023F
_08047494: .4byte 0x0000024E
_08047498:
	ldr r1, _080474E8
	ldr r0, _080474EC
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r1, #0x28
	adds r0, r0, r1
	ldr r4, [r0]
	movs r5, #0
	mov r0, r8
	strh r0, [r4]
	adds r0, r4, #0
	bl sub_8040340
	adds r0, r4, #0
	bl sub_80406C0
	ldrb r1, [r4, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #4
	ands r0, r1
	strb r0, [r4, #5]
	adds r0, r4, #0
	bl sub_8040360
	adds r0, r4, #0
	bl sub_80403E8
	strb r5, [r4, #4]
	ldrb r1, [r4, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #5]
	b _08047558
	.align 2, 0
_080474E8: .4byte gBoard
_080474EC: .4byte 0x02024250
_080474F0:
	movs r0, #0x76
	mov r8, r0
	ldr r4, _0804751C
	ldr r1, _08047520
	adds r0, r4, #0
	bl sub_8043694
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_80402BC
	ldr r1, _08047524
	adds r0, r4, #0
	bl sub_8043694
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	b _08047550
	.align 2, 0
_0804751C: .4byte gBoard+0x28
_08047520: .4byte 0x0000023F
_08047524: .4byte 0x0000024E
_08047528:
	ldr r0, _08047534
	mov r8, r0
	adds r0, r5, #0
	adds r1, r7, #0
	b _08047546
	.align 2, 0
_08047534: .4byte 0x00000251
_08047538:
	cmp r0, #0
	beq _08047558
	movs r0, #0x95
	lsls r0, r0, #2
	mov r8, r0
	adds r0, r5, #0
	adds r1, r6, #0
_08047546:
	bl sub_8043694
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
_08047550:
	ldr r0, [r0]
	bl sub_80402BC
	b _08047498
_08047558:
	ldr r0, _08047574
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804756A
	ldr r1, _08047578
	movs r0, #0x95
	strh r0, [r1]
	bl sub_801CEBC
_0804756A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047574: .4byte gUnk_02021C08
_08047578: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804757C
sub_804757C: @ 0x0804757C
	push {r4, r5, r6, r7, lr}
	ldr r5, _080475A8
	adds r0, r5, #0
	movs r1, #0x95
	bl sub_80433E4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _080475AC
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_80433E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r4, #0
	beq _08047640
	cmp r0, #0
	beq _08047634
	b _08047604
	.align 2, 0
_080475A8: .4byte gBoard+0x28
_080475AC: .4byte 0x0000024E
_080475B0:
	ldr r1, _080475FC
	ldr r0, _08047600
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r1, #0x28
	adds r0, r0, r1
	ldr r4, [r0]
	movs r5, #0
	strh r7, [r4]
	adds r0, r4, #0
	bl sub_8040340
	adds r0, r4, #0
	bl sub_80406C0
	ldrb r1, [r4, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #4
	ands r0, r1
	strb r0, [r4, #5]
	adds r0, r4, #0
	bl sub_8040360
	adds r0, r4, #0
	bl sub_80403E8
	strb r5, [r4, #4]
	ldrb r1, [r4, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #5]
	b _08047660
	.align 2, 0
_080475FC: .4byte gBoard
_08047600: .4byte 0x02024250
_08047604:
	movs r7, #0x76
	ldr r4, _0804762C
	adds r0, r4, #0
	movs r1, #0x95
	bl sub_8043694
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_80402BC
	ldr r1, _08047630
	adds r0, r4, #0
	bl sub_8043694
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	b _08047654
	.align 2, 0
_0804762C: .4byte gBoard+0x28
_08047630: .4byte 0x0000024E
_08047634:
	ldr r7, _0804763C
	adds r0, r5, #0
	movs r1, #0x95
	b _0804764A
	.align 2, 0
_0804763C: .4byte 0x00000251
_08047640:
	cmp r0, #0
	beq _08047660
	ldr r7, _0804765C
	adds r0, r5, #0
	adds r1, r6, #0
_0804764A:
	bl sub_8043694
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
_08047654:
	ldr r0, [r0]
	bl sub_80402BC
	b _080475B0
	.align 2, 0
_0804765C: .4byte 0x00000255
_08047660:
	ldr r0, _08047678
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047672
	ldr r1, _0804767C
	ldr r0, _08047680
	strh r0, [r1]
	bl sub_801CEBC
_08047672:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047678: .4byte gUnk_02021C08
_0804767C: .4byte gUnk_02021C10
_08047680: .4byte 0x0000023F

	THUMB_FUNC_START sub_8047684
sub_8047684: @ 0x08047684
	push {r4, r5, r6, r7, lr}
	ldr r5, _080476B0
	adds r0, r5, #0
	movs r1, #0x95
	bl sub_80433E4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _080476B4
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_80433E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r4, #0
	beq _08047746
	cmp r0, #0
	beq _0804773C
	b _0804770C
	.align 2, 0
_080476B0: .4byte gBoard+0x28
_080476B4: .4byte 0x0000023F
_080476B8:
	ldr r1, _08047704
	ldr r0, _08047708
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r1, #0x28
	adds r0, r0, r1
	ldr r4, [r0]
	movs r5, #0
	strh r7, [r4]
	adds r0, r4, #0
	bl sub_8040340
	adds r0, r4, #0
	bl sub_80406C0
	ldrb r1, [r4, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #4
	ands r0, r1
	strb r0, [r4, #5]
	adds r0, r4, #0
	bl sub_8040360
	adds r0, r4, #0
	bl sub_80403E8
	strb r5, [r4, #4]
	ldrb r1, [r4, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #5]
	b _08047768
	.align 2, 0
_08047704: .4byte gBoard
_08047708: .4byte 0x02024250
_0804770C:
	movs r7, #0x76
	ldr r4, _08047734
	adds r0, r4, #0
	movs r1, #0x95
	bl sub_8043694
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_80402BC
	ldr r1, _08047738
	adds r0, r4, #0
	bl sub_8043694
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	b _0804775A
	.align 2, 0
_08047734: .4byte gBoard+0x28
_08047738: .4byte 0x0000023F
_0804773C:
	movs r7, #0x95
	lsls r7, r7, #2
	adds r0, r5, #0
	movs r1, #0x95
	b _08047750
_08047746:
	cmp r0, #0
	beq _08047768
	ldr r7, _08047764
	adds r0, r5, #0
	adds r1, r6, #0
_08047750:
	bl sub_8043694
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
_0804775A:
	ldr r0, [r0]
	bl sub_80402BC
	b _080476B8
	.align 2, 0
_08047764: .4byte 0x00000255
_08047768:
	ldr r0, _08047780
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804777A
	ldr r1, _08047784
	ldr r0, _08047788
	strh r0, [r1]
	bl sub_801CEBC
_0804777A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047780: .4byte gUnk_02021C08
_08047784: .4byte gUnk_02021C10
_08047788: .4byte 0x0000024E

	THUMB_FUNC_START sub_804778C
sub_804778C: @ 0x0804778C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080477A0
	bl sub_8043528
	cmp r0, #4
	bgt _080477F0
	movs r6, #0
	movs r5, #0
	ldr r7, _080477A4
	b _080477AE
	.align 2, 0
_080477A0: .4byte gDuel+0x1F0
_080477A4: .4byte gBoard
_080477A8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080477AE:
	cmp r5, #4
	bhi _080477CE
	lsls r0, r5, #2
	adds r0, r0, r7
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _080477A8
	adds r0, r4, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080477A8
	movs r6, #1
_080477CE:
	cmp r6, #0
	beq _080477F0
	adds r0, r4, #0
	movs r1, #1
	bl sub_8045338
	ldr r4, _08047808
	adds r0, r4, #0
	bl sub_8043468
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
_080477F0:
	ldr r0, _0804780C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047802
	ldr r1, _08047810
	ldr r0, _08047814
	strh r0, [r1]
	bl sub_801CEBC
_08047802:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047808: .4byte gDuel+0x1F0
_0804780C: .4byte gUnk_02021C08
_08047810: .4byte gUnk_02021C10
_08047814: .4byte 0x00000251

	THUMB_FUNC_START sub_8047818
sub_8047818: @ 0x08047818
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804782C
	bl sub_8043528
	cmp r0, #4
	bgt _0804787A
	movs r6, #0
	movs r5, #0
	ldr r7, _08047830
	b _0804783A
	.align 2, 0
_0804782C: .4byte gDuel+0x1F0
_08047830: .4byte gBoard
_08047834:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0804783A:
	cmp r5, #4
	bhi _08047858
	lsls r0, r5, #2
	adds r0, r0, r7
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _08047834
	adds r0, r4, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08047834
	movs r6, #1
_08047858:
	cmp r6, #0
	beq _0804787A
	adds r0, r4, #0
	movs r1, #1
	bl sub_8045338
	ldr r4, _08047894
	adds r0, r4, #0
	bl sub_8043468
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
_0804787A:
	ldr r0, _08047898
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804788E
	ldr r1, _0804789C
	movs r0, #0x95
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_0804788E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047894: .4byte gDuel+0x1F0
_08047898: .4byte gUnk_02021C08
_0804789C: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_80478A0
sub_80478A0: @ 0x080478A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08047968
	bl sub_8043528
	cmp r0, #4
	bgt _08047946
	movs r7, #0
	movs r0, #0
	mov sb, r0
	mov r8, r0
	movs r5, #0
	ldr r6, _0804796C
	ldr r1, _08047970
	mov sl, r1
_080478C4:
	lsls r0, r5, #2
	ldr r2, _08047974
	adds r0, r0, r2
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _0804790E
	bl IsGodCard
	cmp r0, #1
	beq _0804790E
	adds r0, r4, #0
	bl sub_8040358
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804790E
	ldrh r0, [r4]
	strh r0, [r6]
	mov r1, sl
	ldrb r0, [r1]
	strb r0, [r6, #2]
	adds r0, r4, #0
	bl sub_804069C
	strb r0, [r6, #3]
	adds r0, r6, #0
	bl sub_800B318
	ldr r0, _08047978
	ldrh r2, [r0, #0x12]
	cmp r7, r2
	bhi _0804790A
	ldrh r7, [r0, #0x12]
	mov sb, r5
_0804790A:
	movs r0, #1
	mov r8, r0
_0804790E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080478C4
	mov r1, r8
	cmp r1, #0
	beq _08047946
	ldr r0, _0804797C
	mov r2, sb
	lsls r1, r2, #2
	adds r0, #0x14
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #1
	bl sub_8045338
	ldr r4, _08047968
	adds r0, r4, #0
	bl sub_8043468
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
_08047946:
	ldr r0, _08047980
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047958
	ldr r1, _08047984
	ldr r0, _08047988
	strh r0, [r1]
	bl sub_801CEBC
_08047958:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047968: .4byte gDuel+0x1F0
_0804796C: .4byte gUnk2021AC0
_08047970: .4byte gDuel+0xF0
_08047974: .4byte gBoard+0x14
_08047978: .4byte gCardInfo
_0804797C: .4byte gBoard
_08047980: .4byte gUnk_02021C08
_08047984: .4byte gUnk_02021C10
_08047988: .4byte 0x00000255

	THUMB_FUNC_START sub_804798C
sub_804798C: @ 0x0804798C
	push {r4, r5, lr}
	ldr r5, _080479E8
	adds r0, r5, #0
	bl sub_8043528
	cmp r0, #4
	bgt _080479CE
	ldr r4, _080479EC
	adds r0, r4, #0
	bl sub_8043538
	cmp r0, #4
	bgt _080479CE
	adds r0, r4, #0
	bl sub_8042FC0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	adds r0, r5, #0
	bl sub_8043468
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
_080479CE:
	ldr r0, _080479F0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080479E0
	ldr r1, _080479F4
	movs r0, #0x76
	strh r0, [r1]
	bl sub_801CEBC
_080479E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080479E8: .4byte gDuel+0x1F0
_080479EC: .4byte gBoard+0x14
_080479F0: .4byte gUnk_02021C08
_080479F4: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_80479F8
sub_80479F8: @ 0x080479F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08047A34
	bl sub_8043528
	cmp r0, #0
	bgt _08047A0E
	b _08047B3E
_08047A0E:
	ldr r0, _08047A38
	ldr r0, [r0]
	ldrh r1, [r0]
	ldr r0, _08047A3C
	cmp r1, r0
	beq _08047A1C
	b _08047B3E
_08047A1C:
	bl GetCurrTurn
	cmp r0, #0
	bne _08047A40
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F99C
	bl sub_803F29C
	b _08047A4C
	.align 2, 0
_08047A34: .4byte gBoard+0x28
_08047A38: .4byte gDuel+0x100
_08047A3C: .4byte 0x00000239
_08047A40:
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F9E4
	bl sub_803F29C
_08047A4C:
	bl sub_803F4C0
	movs r0, #0
	bl sub_804535C
	ldr r5, _08047B60
	adds r0, r5, #0
	bl sub_80435C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r4, [r0]
	movs r0, #0
	mov sl, r0
	movs r0, #0x8a
	strh r0, [r4]
	adds r0, r4, #0
	bl sub_8040340
	adds r0, r4, #0
	bl sub_80406CC
	ldrb r1, [r4, #5]
	movs r0, #3
	rsbs r0, r0, #0
	mov sb, r0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	mov r8, r1
	ands r0, r1
	strb r0, [r4, #5]
	movs r6, #2
	strb r6, [r4, #4]
	adds r0, r4, #0
	bl sub_8040360
	adds r0, r4, #0
	bl sub_80403E8
	ldrb r1, [r4, #5]
	movs r7, #0x21
	rsbs r7, r7, #0
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4, #5]
	adds r0, r5, #0
	bl sub_8043528
	cmp r0, #0
	beq _08047B3E
	adds r0, r5, #0
	bl sub_80435C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r4, [r0]
	movs r0, #0x6c
	strh r0, [r4]
	adds r0, r4, #0
	bl sub_8040340
	adds r0, r4, #0
	bl sub_80406CC
	ldrb r1, [r4, #5]
	mov r0, sb
	ands r0, r1
	mov r1, r8
	ands r0, r1
	strb r0, [r4, #5]
	strb r6, [r4, #4]
	adds r0, r4, #0
	bl sub_8040360
	adds r0, r4, #0
	bl sub_80403E8
	ldrb r1, [r4, #5]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4, #5]
	adds r0, r5, #0
	bl sub_8043528
	cmp r0, #0
	beq _08047B3E
	adds r0, r5, #0
	bl sub_80435C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r4, [r0]
	ldr r0, _08047B64
	strh r0, [r4]
	adds r0, r4, #0
	bl sub_8040340
	adds r0, r4, #0
	bl sub_80406CC
	ldrb r1, [r4, #5]
	mov r0, sb
	ands r0, r1
	mov r1, r8
	ands r0, r1
	strb r0, [r4, #5]
	strb r6, [r4, #4]
	adds r0, r4, #0
	bl sub_8040360
	adds r0, r4, #0
	bl sub_80403E8
	ldrb r1, [r4, #5]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4, #5]
_08047B3E:
	ldr r0, _08047B68
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047B52
	ldr r0, _08047B6C
	ldr r1, _08047B70
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08047B52:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047B60: .4byte gBoard+0x28
_08047B64: .4byte 0x00000239
_08047B68: .4byte gUnk_02021C08
_08047B6C: .4byte gUnk_02021C10
_08047B70: .4byte 0x02024250

	THUMB_FUNC_START sub_8047B74
sub_8047B74: @ 0x08047B74
	push {r4, lr}
	ldr r1, _08047BB0
	ldr r0, _08047BB4
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, _08047BB8
	ldrh r1, [r0]
	strh r1, [r4]
	ldr r1, _08047BBC
	adds r1, #0xf0
	ldrb r1, [r1]
	strb r1, [r4, #2]
	bl sub_804069C
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_800B318
	bl GetCurrTurn
	cmp r0, #0
	bne _08047BC4
	ldr r0, _08047BC0
	ldrh r0, [r0, #0x12]
	bl sub_803F9E4
	b _08047BCC
	.align 2, 0
_08047BB0: .4byte gBoard
_08047BB4: .4byte 0x02024250
_08047BB8: .4byte gUnk2021AC0
_08047BBC: .4byte gDuel
_08047BC0: .4byte gCardInfo
_08047BC4:
	ldr r0, _08047BF0
	ldrh r0, [r0, #0x12]
	bl sub_803F99C
_08047BCC:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r0, _08047BF4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047BE8
	ldr r1, _08047BF8
	movs r0, #0xfb
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_08047BE8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047BF0: .4byte gCardInfo
_08047BF4: .4byte gUnk_02021C08
_08047BF8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8047BFC
sub_8047BFC: @ 0x08047BFC
	push {r4, r5, r6, lr}
	bl GetCurrTurn
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r5, #0
	b _08047C54
_08047C0A:
	lsls r0, r5, #2
	adds r1, r2, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08047C4E
	adds r0, r1, #0
	bl sub_8040340
	cmp r6, #0
	bne _08047C30
	ldrb r0, [r4, #3]
	movs r1, #4
	subs r1, r1, r5
	bl sub_803F908
	b _08047C3C
_08047C30:
	ldrb r0, [r4, #3]
	movs r1, #4
	subs r1, r1, r0
	adds r0, r5, #0
	bl sub_803F908
_08047C3C:
	bl sub_803F29C
	bl sub_803F224
	cmp r6, #0
	beq _08047C4E
	ldr r1, _08047C94
	movs r0, #0
	strb r0, [r1, #0x18]
_08047C4E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08047C54:
	cmp r5, #4
	bhi _08047C7A
	bl sub_8025544
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08047C7A
	ldr r2, _08047C98
	ldr r4, _08047C9C
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	bne _08047C0A
_08047C7A:
	ldr r0, _08047CA0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047C8C
	ldr r1, _08047CA4
	ldr r0, _08047CA8
	strh r0, [r1]
	bl sub_801CEBC
_08047C8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08047C94: .4byte 0x02023EA0
_08047C98: .4byte gBoard
_08047C9C: .4byte 0x02024250
_08047CA0: .4byte gUnk_02021C08
_08047CA4: .4byte gUnk_02021C10
_08047CA8: .4byte 0x00000287

	THUMB_FUNC_START sub_8047CAC
sub_8047CAC: @ 0x08047CAC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08047D14
_08047CB2:
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _08047CC6
	adds r0, r4, #0
	movs r1, #1
	bl sub_8045338
_08047CC6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08047CB2
	movs r5, #0
	ldr r6, _08047D18
_08047CD4:
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _08047CF0
	bl IsGodCard
	cmp r0, #1
	beq _08047CF0
	adds r0, r4, #0
	movs r1, #1
	bl sub_8045338
_08047CF0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08047CD4
	ldr r0, _08047D1C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047D0E
	ldr r0, _08047D20
	ldr r1, _08047D24
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08047D0E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08047D14: .4byte gBoard
_08047D18: .4byte gBoard+0x14
_08047D1C: .4byte gUnk_02021C08
_08047D20: .4byte gUnk_02021C10
_08047D24: .4byte 0x02024250

	THUMB_FUNC_START sub_8047D28
sub_8047D28: @ 0x08047D28
	push {lr}
	bl sub_801D1A8
	movs r0, #2
	bl sub_801D188
	ldr r0, _08047D50
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r1, _08047D54
	ldr r0, _08047D58
	ldrb r0, [r0, #0x1b]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805AAB8
	pop {r0}
	bx r0
	.align 2, 0
_08047D50: .4byte 0x02024250
_08047D54: .4byte 0x08102E2C
_08047D58: .4byte gCardInfo
	.byte 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START EffectReaperOfTheCards
EffectReaperOfTheCards: @ 0x08047D64
	push {r4, r5, r6, lr}
	ldr r4, _08047D78
	adds r0, r4, #0
	bl sub_8043528
	cmp r0, #4
	bgt _08047DA2
	movs r5, #0
	adds r6, r4, #0
	b _08047D82
	.align 2, 0
_08047D78: .4byte gBoard
_08047D7C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08047D82:
	cmp r5, #4
	bhi _08047DA2
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08047DBC
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _08047D7C
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_08047DA2:
	ldr r0, _08047DC0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047DB4
	ldr r1, _08047DC4
	movs r0, #0x54
	strh r0, [r1]
	bl sub_801CEBC
_08047DB4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08047DBC: .4byte gCardInfo
_08047DC0: .4byte gUnk_02021C08
_08047DC4: .4byte gUnk_02021C10

	THUMB_FUNC_START EffectFairysGift
EffectFairysGift: @ 0x08047DC8
	push {lr}
	bl GetCurrTurn
	cmp r0, #0
	bne _08047DDC
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F978
	b _08047DE4
_08047DDC:
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F9C0
_08047DE4:
	bl sub_803F29C
	ldr r0, _08047E00
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047DFA
	ldr r1, _08047E04
	ldr r0, _08047E08
	strh r0, [r1]
	bl sub_801CEBC
_08047DFA:
	pop {r0}
	bx r0
	.align 2, 0
_08047E00: .4byte gUnk_02021C08
_08047E04: .4byte gUnk_02021C10
_08047E08: .4byte 0x0000016B

	THUMB_FUNC_START EffectSkelengel
EffectSkelengel: @ 0x08047E0C
	push {lr}
	bl GetCurrTurn
	bl sub_8043CE4
	ldr r0, _08047E30
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047E2A
	ldr r1, _08047E34
	movs r0, #0x87
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_08047E2A:
	pop {r0}
	bx r0
	.align 2, 0
_08047E30: .4byte gUnk_02021C08
_08047E34: .4byte gUnk_02021C10

	THUMB_FUNC_START EffectHarpieLady
EffectHarpieLady: @ 0x08047E38
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _08047E7C
	movs r5, #0xc1
	lsls r5, r5, #1
_08047E42:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, r5
	bne _08047E54
	adds r0, r1, #0
	bl sub_8040368
_08047E54:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08047E42
	ldr r0, _08047E80
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047E76
	ldr r0, _08047E84
	movs r1, #0x3e
	strh r1, [r0]
	movs r1, #0xc1
	lsls r1, r1, #1
	strh r1, [r0, #2]
	bl sub_801CEBC
_08047E76:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08047E7C: .4byte gBoard+0x28
_08047E80: .4byte gUnk_02021C08
_08047E84: .4byte gUnk_02021C10

	THUMB_FUNC_START EffectHarpieLadySisters
EffectHarpieLadySisters: @ 0x08047E88
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _08047ED0
	movs r5, #0xc1
	lsls r5, r5, #1
_08047E92:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, r5
	bne _08047EA6
	adds r0, r1, #0
	movs r1, #2
	bl sub_8040394
_08047EA6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08047E92
	ldr r0, _08047ED4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047EC8
	ldr r0, _08047ED8
	movs r1, #0x3f
	strh r1, [r0]
	movs r1, #0xc1
	lsls r1, r1, #1
	strh r1, [r0, #2]
	bl sub_801CEBC
_08047EC8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08047ED0: .4byte gBoard+0x28
_08047ED4: .4byte gUnk_02021C08
_08047ED8: .4byte gUnk_02021C10

	THUMB_FUNC_START EffectMysticalElf
EffectMysticalElf: @ 0x08047EDC
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08047F1C
_08047EE2:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #1
	bne _08047EF4
	adds r0, r1, #0
	bl sub_8040368
_08047EF4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08047EE2
	ldr r0, _08047F20
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047F14
	ldr r0, _08047F24
	movs r1, #2
	strh r1, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	bl sub_801CEBC
_08047F14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08047F1C: .4byte gBoard+0x28
_08047F20: .4byte gUnk_02021C08
_08047F24: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8047F28 @CurseOfDragon
sub_8047F28: @ 0x08047F28
	push {lr}
	ldr r0, _08047F50
	adds r0, #0xf0
	movs r1, #2
	strb r1, [r0]
	ldr r0, _08047F54
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047F4A
	movs r0, #2
	bl sub_8041140
	ldr r1, _08047F58
	movs r0, #0x27
	strh r0, [r1]
	bl sub_801CEBC
_08047F4A:
	pop {r0}
	bx r0
	.align 2, 0
_08047F50: .4byte gDuel
_08047F54: .4byte gUnk_02021C08
_08047F58: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8047F5C
sub_8047F5C: @ 0x08047F5C
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08047FA0
_08047F62:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08047FA4
	ldrb r0, [r0, #0x16]
	cmp r0, #0xb
	bne _08047F7E
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_08047F7E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08047F62
	ldr r0, _08047FA8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047F9A
	ldr r1, _08047FAC
	movs r0, #0xf
	strh r0, [r1]
	bl sub_801CEBC
_08047F9A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08047FA0: .4byte gBoard+0x14
_08047FA4: .4byte gCardInfo
_08047FA8: .4byte gUnk_02021C08
_08047FAC: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8047FB0
sub_8047FB0: @ 0x08047FB0
	push {lr}
	ldr r0, _08047FD8
	adds r0, #0xf0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08047FDC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047FD2
	movs r0, #0
	bl sub_8041140
	ldr r1, _08047FE0
	movs r0, #0x4a
	strh r0, [r1]
	bl sub_801CEBC
_08047FD2:
	pop {r0}
	bx r0
	.align 2, 0
_08047FD8: .4byte gDuel
_08047FDC: .4byte gUnk_02021C08
_08047FE0: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8047FE4
sub_8047FE4: @ 0x08047FE4
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08048028
_08047FEA:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804802C
	ldrb r0, [r0, #0x17]
	cmp r0, #5
	bne _08048006
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_08048006:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08047FEA
	ldr r0, _08048030
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048022
	ldr r1, _08048034
	movs r0, #0x1a
	strh r0, [r1]
	bl sub_801CEBC
_08048022:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048028: .4byte gBoard+0x14
_0804802C: .4byte gCardInfo
_08048030: .4byte gUnk_02021C08
_08048034: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8048038
sub_8048038: @ 0x08048038
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _0804807C
	ldr r5, _08048080
_08048040:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, r5
	bne _08048052
	adds r0, r1, #0
	bl sub_8040368
_08048052:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08048040
	ldr r0, _08048084
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048074
	ldr r0, _08048088
	movs r1, #0xbc
	lsls r1, r1, #1
	strh r1, [r0]
	subs r1, #1
	strh r1, [r0, #2]
	bl sub_801CEBC
_08048074:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804807C: .4byte gBoard+0x28
_08048080: .4byte 0x00000177
_08048084: .4byte gUnk_02021C08
_08048088: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804808C
sub_804808C: @ 0x0804808C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _080480C8
_08048092:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080480A4
	adds r0, r1, #0
	bl sub_804037C
_080480A4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08048092
	ldr r0, _080480CC
	ldrb r0, [r0]
	cmp r0, #0
	bne _080480C0
	ldr r1, _080480D0
	movs r0, #0x3b
	strh r0, [r1]
	bl sub_801CEBC
_080480C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080480C8: .4byte gBoard+0x14
_080480CC: .4byte gUnk_02021C08
_080480D0: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_80480D4
sub_80480D4: @ 0x080480D4
	push {lr}
	bl GetCurrTurn
	bl sub_8043CE4
	ldr r1, _08048108
	ldr r0, _0804810C
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08048110
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048104
	ldr r1, _08048114
	ldr r0, _08048118
	strh r0, [r1]
	bl sub_801CEBC
_08048104:
	pop {r0}
	bx r0
	.align 2, 0
_08048108: .4byte gBoard
_0804810C: .4byte 0x02024250
_08048110: .4byte gUnk_02021C08
_08048114: .4byte gUnk_02021C10
_08048118: .4byte 0x000001AD

	THUMB_FUNC_START sub_804811C
sub_804811C: @ 0x0804811C
	push {lr}
	ldr r0, _08048144
	adds r0, #0xf0
	movs r1, #3
	strb r1, [r0]
	ldr r0, _08048148
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804813E
	movs r0, #3
	bl sub_8041140
	ldr r1, _0804814C
	ldr r0, _08048150
	strh r0, [r1]
	bl sub_801CEBC
_0804813E:
	pop {r0}
	bx r0
	.align 2, 0
_08048144: .4byte gDuel
_08048148: .4byte gUnk_02021C08
_0804814C: .4byte gUnk_02021C10
_08048150: .4byte 0x0000020D

	THUMB_FUNC_START sub_8048154
sub_8048154: @ 0x08048154
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r7, _080481A4
	ldr r6, _080481A8
_0804815C:
	lsls r0, r5, #2
	adds r4, r0, r7
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldrh r0, [r6, #0x10]
	bl IsGodCard
	cmp r0, #0
	bne _08048180
	ldrb r0, [r6, #0x16]
	cmp r0, #1
	bne _08048180
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_08048180:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804815C
	ldr r0, _080481AC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804819E
	ldr r1, _080481B0
	movs r0, #0xfa
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_0804819E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080481A4: .4byte gBoard+0x14
_080481A8: .4byte gCardInfo
_080481AC: .4byte gUnk_02021C08
_080481B0: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_80481B4
sub_80481B4: @ 0x080481B4
	push {r4, lr}
	ldr r4, _0804820C
	adds r0, r4, #0
	bl sub_8043538
	cmp r0, #5
	beq _080481D6
	adds r0, r4, #0
	bl sub_8042FC0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
_080481D6:
	adds r3, r4, #0
	subs r3, #0x14
	ldr r2, _08048210
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08048214
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048204
	ldr r1, _08048218
	movs r0, #0x87
	strh r0, [r1]
	bl sub_801CEBC
_08048204:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804820C: .4byte gBoard+0x14
_08048210: .4byte 0x02024250
_08048214: .4byte gUnk_02021C08
_08048218: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804821C
sub_804821C: @ 0x0804821C
	push {r4, r5, lr}
	movs r2, #0
	ldr r5, _08048258
	ldr r4, _0804825C
	movs r3, #1
_08048226:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08048238
	ldrb r0, [r1, #5]
	orrs r0, r3
	strb r0, [r1, #5]
_08048238:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _08048226
	ldrb r0, [r5]
	cmp r0, #0
	bne _08048252
	ldr r1, _08048260
	movs r0, #0x2a
	strh r0, [r1]
	bl sub_801CEBC
_08048252:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048258: .4byte gUnk_02021C08
_0804825C: .4byte gBoard+0x14
_08048260: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8048264
sub_8048264: @ 0x08048264
	push {r4, lr}
	ldr r4, _080482A0
	adds r0, r4, #0
	bl sub_8043548
	cmp r0, #0
	beq _08048288
	adds r0, r4, #0
	bl sub_804304C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
_08048288:
	ldr r0, _080482A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804829A
	ldr r1, _080482A8
	ldr r0, _080482AC
	strh r0, [r1]
	bl sub_801CEBC
_0804829A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080482A0: .4byte gBoard+0x14
_080482A4: .4byte gUnk_02021C08
_080482A8: .4byte gUnk_02021C10
_080482AC: .4byte 0x00000262

	THUMB_FUNC_START sub_80482B0
sub_80482B0: @ 0x080482B0
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _080482FC
_080482B6:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08048300
	ldrb r0, [r0, #0x16]
	cmp r0, #0x14
	bne _080482D8
	ldr r0, _08048304
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
_080482D8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080482B6
	ldr r0, _08048308
	ldrb r0, [r0]
	cmp r0, #0
	bne _080482F4
	ldr r1, _0804830C
	movs r0, #0xeb
	strh r0, [r1]
	bl sub_801CEBC
_080482F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080482FC: .4byte gBoard+0x28
_08048300: .4byte gCardInfo
_08048304: .4byte 0x02024250
_08048308: .4byte gUnk_02021C08
_0804830C: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8048310
sub_8048310: @ 0x08048310
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08048350
_08048316:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0xa1
	bne _08048328
	adds r0, r1, #0
	bl sub_8040368
_08048328:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08048316
	ldr r0, _08048354
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048348
	ldr r0, _08048358
	movs r1, #0xa0
	strh r1, [r0]
	movs r1, #0xa1
	strh r1, [r0, #2]
	bl sub_801CEBC
_08048348:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048350: .4byte gBoard+0x28
_08048354: .4byte gUnk_02021C08
_08048358: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804835C
sub_804835C: @ 0x0804835C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0804839C
_08048362:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0xa0
	bne _08048374
	adds r0, r1, #0
	bl sub_8040368
_08048374:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08048362
	ldr r0, _080483A0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048394
	ldr r0, _080483A4
	movs r1, #0xa1
	strh r1, [r0]
	movs r1, #0xa0
	strh r1, [r0, #2]
	bl sub_801CEBC
_08048394:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804839C: .4byte gBoard+0x28
_080483A0: .4byte gUnk_02021C08
_080483A4: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_80483A8
sub_80483A8: @ 0x080483A8
	push {r4, lr}
	ldr r4, _080483EC
	adds r0, r4, #0
	bl sub_8043548
	cmp r0, #0
	beq _080483D2
	adds r0, r4, #0
	bl sub_804304C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r3, [r0]
	ldrb r1, [r3, #5]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3, #5]
	ldr r0, [r0]
	bl sub_804037C
_080483D2:
	ldr r0, _080483F0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080483E4
	ldr r1, _080483F4
	ldr r0, _080483F8
	strh r0, [r1]
	bl sub_801CEBC
_080483E4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080483EC: .4byte gBoard+0x14
_080483F0: .4byte gUnk_02021C08
_080483F4: .4byte gUnk_02021C10
_080483F8: .4byte 0x000002D5

	THUMB_FUNC_START sub_80483FC
sub_80483FC: @ 0x080483FC
	push {lr}
	bl GetCurrTurn
	cmp r0, #0
	bne _08048410
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_803F978
	b _08048418
_08048410:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_803F9C0
_08048418:
	bl sub_803F29C
	ldr r0, _08048434
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048430
	ldr r1, _08048438
	movs r0, #0x99
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_08048430:
	pop {r0}
	bx r0
	.align 2, 0
_08048434: .4byte gUnk_02021C08
_08048438: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804843C
sub_804843C: @ 0x0804843C
	push {lr}
	bl GetCurrTurn
	cmp r0, #0
	bne _0804844E
	movs r0, #0x32
	bl sub_803F9E4
	b _08048454
_0804844E:
	movs r0, #0x32
	bl sub_803F99C
_08048454:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r0, _08048474
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804846E
	ldr r1, _08048478
	movs r0, #0x9a
	strh r0, [r1]
	bl sub_801CEBC
_0804846E:
	pop {r0}
	bx r0
	.align 2, 0
_08048474: .4byte gUnk_02021C08
_08048478: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804847C
sub_804847C: @ 0x0804847C
	push {lr}
	ldr r0, _080484A4
	adds r0, #0xf0
	movs r1, #5
	strb r1, [r0]
	ldr r0, _080484A8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804849E
	movs r0, #5
	bl sub_8041140
	ldr r1, _080484AC
	movs r0, #0x49
	strh r0, [r1]
	bl sub_801CEBC
_0804849E:
	pop {r0}
	bx r0
	.align 2, 0
_080484A4: .4byte gDuel
_080484A8: .4byte gUnk_02021C08
_080484AC: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_80484B0
sub_80484B0: @ 0x080484B0
	push {r4, r5, lr}
	movs r2, #0
	ldr r5, _080484F0
	ldr r4, _080484F4
	movs r3, #0x10
_080484BA:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080484CC
	ldrb r0, [r1, #5]
	orrs r0, r3
	strb r0, [r1, #5]
_080484CC:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _080484BA
	ldrb r0, [r5]
	cmp r0, #0
	bne _080484E8
	ldr r1, _080484F8
	movs r0, #0xc9
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_080484E8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080484F0: .4byte gUnk_02021C08
_080484F4: .4byte gDuel+0x204
_080484F8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_80484FC
sub_80484FC: @ 0x080484FC
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _0804853C
	ldr r5, _08048540
_08048504:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, r5
	bne _08048516
	adds r0, r1, #0
	bl sub_8040368
_08048516:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08048504
	ldr r0, _08048544
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048536
	ldr r0, _08048548
	movs r1, #0xc
	strh r1, [r0]
	ldr r1, _08048540
	strh r1, [r0, #2]
	bl sub_801CEBC
_08048536:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804853C: .4byte gBoard+0x28
_08048540: .4byte 0x0000022A
_08048544: .4byte gUnk_02021C08
_08048548: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804854C
sub_804854C: @ 0x0804854C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0804858C
_08048552:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0xc
	bne _08048564
	adds r0, r1, #0
	bl sub_8040368
_08048564:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08048552
	ldr r0, _08048590
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048584
	ldr r0, _08048594
	ldr r1, _08048598
	strh r1, [r0]
	movs r1, #0xc
	strh r1, [r0, #2]
	bl sub_801CEBC
_08048584:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804858C: .4byte gBoard+0x28
_08048590: .4byte gUnk_02021C08
_08048594: .4byte gUnk_02021C10
_08048598: .4byte 0x0000022A

	THUMB_FUNC_START sub_804859C
sub_804859C: @ 0x0804859C
	push {lr}
	ldr r0, _080485C4
	adds r0, #0xf0
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080485C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _080485BE
	movs r0, #1
	bl sub_8041140
	ldr r1, _080485CC
	ldr r0, _080485D0
	strh r0, [r1]
	bl sub_801CEBC
_080485BE:
	pop {r0}
	bx r0
	.align 2, 0
_080485C4: .4byte gDuel
_080485C8: .4byte gUnk_02021C08
_080485CC: .4byte gUnk_02021C10
_080485D0: .4byte 0x0000027D

	THUMB_FUNC_START sub_80485D4
sub_80485D4: @ 0x080485D4
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08048608
_080485DA:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080485EC
	adds r0, r1, #0
	bl sub_8040368
_080485EC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080485DA
	bl GetCurrTurn
	cmp r0, #0
	bne _0804860C
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F99C
	b _08048614
	.align 2, 0
_08048608: .4byte gBoard+0x28
_0804860C:
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F9E4
_08048614:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r0, _08048634
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804862E
	ldr r1, _08048638
	movs r0, #0xe5
	strh r0, [r1]
	bl sub_801CEBC
_0804862E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048634: .4byte gUnk_02021C08
_08048638: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804863C
sub_804863C: @ 0x0804863C
	push {r4, r5, lr}
	movs r2, #0
	ldr r5, _0804867C
	ldr r4, _08048680
	movs r3, #1
_08048646:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08048658
	ldrb r0, [r1, #5]
	orrs r0, r3
	strb r0, [r1, #5]
_08048658:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _08048646
	ldrb r0, [r5]
	cmp r0, #0
	bne _08048674
	ldr r1, _08048684
	movs r0, #0xb9
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_08048674:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804867C: .4byte gUnk_02021C08
_08048680: .4byte gBoard+0x14
_08048684: .4byte gUnk_02021C10

THUMB_FUNC_START sub_8048688
sub_8048688: @ 0x08048688
	push {r4, lr}
	bl GetCurrTurn
	cmp r0, #0
	bne _080486AC
	ldr r4, _080486A8
	ldrh r0, [r4]
	subs r0, #1
	bl sub_803F9E4
	bl sub_803F29C
	movs r0, #1
	strh r0, [r4]
	b _080486BE
	.align 2, 0
_080486A8: .4byte gLifePoints
_080486AC:
	ldr r4, _080486DC
	ldrh r0, [r4, #2]
	subs r0, #1
	bl sub_803F99C
	bl sub_803F29C
	movs r0, #1
	strh r0, [r4, #2]
_080486BE:
	bl sub_803F4C0
	ldr r0, _080486E0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080486D6
	ldr r0, _080486E4
	ldr r1, _080486E8
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_080486D6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080486DC: .4byte gLifePoints
_080486E0: .4byte gUnk_02021C08
_080486E4: .4byte gUnk_02021C10
_080486E8: .4byte 0x02024250
	.byte 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80486FC
sub_80486FC: @ 0x080486FC
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _08048744
	movs r5, #0xc1
	lsls r5, r5, #1
_08048706:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, r5
	bne _08048718
	adds r0, r1, #0
	bl sub_8040368
_08048718:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08048706
	ldr r0, _08048748
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804873C
	ldr r1, _0804874C
	ldr r0, _08048750
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0xc1
	lsls r0, r0, #1
	strh r0, [r1, #2]
	bl sub_801CEBC
_0804873C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048744: .4byte gBoard+0x28
_08048748: .4byte gUnk_02021C08
_0804874C: .4byte gUnk_02021C10
_08048750: .4byte 0x02024250

	THUMB_FUNC_START sub_8048754
sub_8048754: @ 0x08048754
	push {r4, r5, lr}
	ldr r5, _080487AC
	adds r0, r5, #0
	bl sub_8043538
	cmp r0, #5
	beq _08048790
	adds r0, r5, #0
	bl sub_8042FC0
	lsls r0, r0, #0x18
	adds r4, r5, #0
	subs r4, #0x14
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	ldr r2, _080487B0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_804037C
_08048790:
	ldr r0, _080487B4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080487A4
	ldr r0, _080487B8
	ldr r1, _080487B0
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_080487A4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080487AC: .4byte gBoard+0x14
_080487B0: .4byte 0x02024250
_080487B4: .4byte gUnk_02021C08
_080487B8: .4byte gUnk_02021C10
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80487C0
sub_80487C0: @ 0x080487C0
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08048804
_080487C6:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _080487DE
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_080487DE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080487C6
	ldr r0, _08048808
	ldrb r0, [r0]
	cmp r0, #0
	bne _080487FC
	ldr r0, _0804880C
	ldr r1, _08048810
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_080487FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048804: .4byte gBoard+0x14
_08048808: .4byte gUnk_02021C08
_0804880C: .4byte gUnk_02021C10
_08048810: .4byte 0x02024250

	THUMB_FUNC_START sub_8048814
sub_8048814: @ 0x08048814
	push {r4, r5, lr}
	ldr r5, _08048868
	adds r0, r5, #0
	bl sub_8043538
	cmp r0, #5
	beq _0804884E
	adds r0, r5, #0
	bl sub_8042FC0
	lsls r0, r0, #0x18
	adds r4, r5, #0
	subs r4, #0x14
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_80402BC
	ldr r2, _0804886C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040368
_0804884E:
	ldr r0, _08048870
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048862
	ldr r0, _08048874
	ldr r1, _0804886C
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08048862:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048868: .4byte gBoard+0x14
_0804886C: .4byte 0x02024250
_08048870: .4byte gUnk_02021C08
_08048874: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8048878
sub_8048878: @ 0x08048878
	push {r4, r5, r6, lr}
	ldr r4, _080488CC
	adds r0, r4, #0
	bl sub_8043528
	cmp r0, #5
	beq _080488B0
	movs r5, #0
	adds r6, r4, #0
_0804888A:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _080488D0
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _080488A6
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_080488A6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804888A
_080488B0:
	ldr r0, _080488D4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080488C4
	ldr r1, _080488D8
	movs r0, #0xbc
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_080488C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080488CC: .4byte gBoard
_080488D0: .4byte gCardInfo
_080488D4: .4byte gUnk_02021C08
_080488D8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_80488DC
sub_80488DC: @ 0x080488DC
	push {r4, r5, lr}
	movs r5, #0
	b _08048908
_080488E2:
	movs r0, #0
	movs r1, #1
	bl sub_8056258
	cmp r0, #1
	bne _08048902
	adds r0, r4, #0
	bl sub_8042FC0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
_08048902:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08048908:
	cmp r5, #2
	bhi _08048918
	ldr r4, _08048930
	adds r0, r4, #0
	bl sub_8043538
	cmp r0, #5
	bne _080488E2
_08048918:
	ldr r0, _08048934
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804892A
	ldr r1, _08048938
	ldr r0, _0804893C
	strh r0, [r1]
	bl sub_801CEBC
_0804892A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048930: .4byte gBoard+0x14
_08048934: .4byte gUnk_02021C08
_08048938: .4byte gUnk_02021C10
_0804893C: .4byte 0x000002E7

	THUMB_FUNC_START sub_8048940
sub_8048940: @ 0x08048940
	push {lr}
	bl GetCurrTurn
	cmp r0, #0
	bne _08048954
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_803F978
	b _0804895C
_08048954:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_803F9C0
_0804895C:
	bl sub_803F29C
	ldr r3, _08048994
	ldr r2, _08048998
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804899C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804898E
	ldr r1, _080489A0
	movs r0, #0xbf
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_0804898E:
	pop {r0}
	bx r0
	.align 2, 0
_08048994: .4byte gBoard
_08048998: .4byte 0x02024250
_0804899C: .4byte gUnk_02021C08
_080489A0: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_80489A4
sub_80489A4: @ 0x080489A4
	push {r4, lr}
	ldr r4, _080489E0
	adds r0, r4, #0
	bl sub_8043528
	cmp r0, #4
	bgt _080489C4
	adds r0, r4, #0
	bl sub_8042F44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_804037C
_080489C4:
	ldr r0, _080489E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080489D8
	ldr r0, _080489E8
	ldr r1, _080489EC
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_080489D8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080489E0: .4byte gBoard+0x14
_080489E4: .4byte gUnk_02021C08
_080489E8: .4byte gUnk_02021C10
_080489EC: .4byte 0x02024250

	THUMB_FUNC_START sub_80489F0
sub_80489F0: @ 0x080489F0
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _08048A48
	ldr r5, _08048A4C
_080489F8:
	lsls r0, r4, #2
	adds r1, r6, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08048A50
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _08048A24
	ldrb r0, [r5, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r5, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r0, [r1]
	bl sub_8040368
_08048A24:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080489F8
	ldr r0, _08048A54
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048A42
	ldr r0, _08048A58
	ldr r1, _08048A4C
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08048A42:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048A48: .4byte gBoard
_08048A4C: .4byte 0x02024250
_08048A50: .4byte gCardInfo
_08048A54: .4byte gUnk_02021C08
_08048A58: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8048A5C
sub_8048A5C: @ 0x08048A5C
	push {r4, lr}
	ldr r2, _08048A90
	ldr r4, _08048A94
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_8040368
	ldr r0, _08048A98
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048A88
	ldr r1, _08048A9C
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
_08048A88:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08048A90: .4byte gBoard
_08048A94: .4byte 0x02024250
_08048A98: .4byte gUnk_02021C08
_08048A9C: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8048AA0
sub_8048AA0: @ 0x08048AA0
	push {r4, lr}
	ldr r4, _08048AD4
	adds r0, r4, #0
	bl sub_8043538
	cmp r0, #4
	bgt _08048AC2
	adds r0, r4, #0
	bl sub_8042FC0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
_08048AC2:
	bl GetCurrTurn
	cmp r0, #0
	bne _08048AD8
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_803F9E4
	b _08048AE0
	.align 2, 0
_08048AD4: .4byte gBoard+0x14
_08048AD8:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_803F99C
_08048AE0:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r0, _08048B04
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048AFC
	ldr r0, _08048B08
	ldr r1, _08048B0C
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08048AFC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08048B04: .4byte gUnk_02021C08
_08048B08: .4byte gUnk_02021C10
_08048B0C: .4byte 0x02024250
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8048B14
sub_8048B14: @ 0x08048B14
	push {r4, r5, lr}
	ldr r5, _08048B54
	ldr r0, [r5, #0x14]
	ldr r4, _08048B58
	ldr r1, [r4, #0x14]
	bl sub_8047304
	ldr r0, [r5]
	ldr r1, [r4, #0x14]
	bl sub_8047304
	ldr r0, [r5, #0x28]
	ldr r1, [r4]
	bl sub_8047304
	ldr r0, [r5, #0x3c]
	ldr r1, [r4]
	bl sub_8047304
	ldr r0, _08048B5C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048B4C
	ldr r1, _08048B60
	ldr r0, _08048B64
	strh r0, [r1]
	bl sub_801CEBC
_08048B4C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048B54: .4byte gBoard
_08048B58: .4byte gDuel+0x1F0
_08048B5C: .4byte gUnk_02021C08
_08048B60: .4byte gUnk_02021C10
_08048B64: .4byte 0x0000026B

	THUMB_FUNC_START sub_8048B68
sub_8048B68: @ 0x08048B68
	push {r4, r5, lr}
	bl GetCurrTurn
	cmp r0, #0
	bne _08048B7C
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F99C
	b _08048B84
_08048B7C:
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F9E4
_08048B84:
	bl sub_803F29C
	bl sub_803F4C0
	movs r4, #0
	ldr r5, _08048BC0
_08048B90:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08048B90
	ldr r0, _08048BC4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048BBA
	ldr r1, _08048BC8
	movs r0, #0xce
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_08048BBA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048BC0: .4byte gBoard+0x14
_08048BC4: .4byte gUnk_02021C08
_08048BC8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8048BCC
sub_8048BCC: @ 0x08048BCC
	push {r4, lr}
	ldr r4, _08048C08
	adds r0, r4, #0
	bl sub_8043538
	cmp r0, #4
	bgt _08048BEE
	adds r0, r4, #0
	bl sub_8042FC0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_8045338
_08048BEE:
	ldr r0, _08048C0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048C02
	ldr r0, _08048C10
	ldr r1, _08048C14
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08048C02:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08048C08: .4byte gBoard+0x14
_08048C0C: .4byte gUnk_02021C08
_08048C10: .4byte gUnk_02021C10
_08048C14: .4byte 0x02024250
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8048C60
sub_8048C60: @ 0x08048C60
	push {lr}
	ldr r0, _08048C7C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048C88
	bl sub_8048CE0
	ldr r1, _08048C80
	strh r0, [r1]
	ldr r0, _08048C84
	adds r0, #0x46
	ldrh r0, [r0]
	strh r0, [r1, #2]
	b _08048C9A
	.align 2, 0
_08048C7C: .4byte 0x020241FC
_08048C80: .4byte gLifePoints
_08048C84: .4byte 0x02021D10
_08048C88:
	ldr r2, _08048CA0
	ldr r0, _08048CA4
	adds r1, r0, #0
	adds r1, #0x44
	ldrh r1, [r1]
	strh r1, [r2]
	adds r0, #0x46
	ldrh r0, [r0]
	strh r0, [r2, #2]
_08048C9A:
	pop {r0}
	bx r0
	.align 2, 0
_08048CA0: .4byte gLifePoints
_08048CA4: .4byte 0x02021D10

	THUMB_FUNC_START sub_8048CA8
sub_8048CA8: @ 0x08048CA8
	lsls r0, r0, #0x18
	ldr r2, _08048CB4
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_08048CB4: .4byte gLifePoints

	THUMB_FUNC_START sub_8048CB8
sub_8048CB8: @ 0x08048CB8
	ldr r1, _08048CC4
	movs r0, #0xfa
	lsls r0, r0, #5
	str r0, [r1]
	bx lr
	.align 2, 0
_08048CC4: .4byte 0x02024254
	.byte 0x01, 0x1C, 0x03, 0x48, 0x81, 0x42, 0x00, 0xD9
	.byte 0x01, 0x1C, 0x02, 0x48, 0x01, 0x60, 0x70, 0x47, 0xE8, 0xFD, 0x00, 0x00, 0x54, 0x42, 0x02, 0x02

	THUMB_FUNC_START sub_8048CE0
sub_8048CE0: @ 0x08048CE0
	ldr r0, _08048CE8
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08048CE8: .4byte 0x02024254

	THUMB_FUNC_START sub_8048CEC
sub_8048CEC: @ 0x08048CEC
	ldr r2, _08048D00
	ldr r0, _08048D04
	ldrh r0, [r0]
	str r0, [r2]
	movs r1, #0xfa
	lsls r1, r1, #5
	cmp r0, r1
	bls _08048CFE
	str r1, [r2]
_08048CFE:
	bx lr
	.align 2, 0
_08048D00: .4byte 0x02024254
_08048D04: .4byte gLifePoints

	THUMB_FUNC_START sub_8048D08
sub_8048D08: @ 0x08048D08
	ldr r2, _08048D18
	ldr r1, [r2]
	ldr r0, _08048D1C
	cmp r1, r0
	bhi _08048D16
	adds r0, #1
	str r0, [r2]
_08048D16:
	bx lr
	.align 2, 0
_08048D18: .4byte 0x02024254
_08048D1C: .4byte 0x00001F3F
	.byte 0x00, 0x06, 0x09, 0x04, 0x05, 0x4A, 0xC0, 0x0D, 0x82, 0x18, 0x09, 0x0C, 0x10, 0x88, 0x09, 0x18
	.byte 0x03, 0x48, 0x81, 0x42, 0x06, 0xDD, 0x01, 0x30, 0x10, 0x80, 0x04, 0xE0, 0x58, 0x42, 0x02, 0x02
	.byte 0xE7, 0xFD, 0x00, 0x00, 0x11, 0x80, 0x70, 0x47, 0x00, 0x06, 0x09, 0x04, 0x09, 0x0C, 0x05, 0x4A
	.byte 0xC0, 0x0D, 0x82, 0x18, 0x10, 0x88, 0x40, 0x1A, 0x00, 0x28, 0x00, 0xDC, 0x00, 0x20, 0x10, 0x80
	.byte 0x70, 0x47, 0x00, 0x00, 0x58, 0x42, 0x02, 0x02

	THUMB_FUNC_START sub_8048D68
sub_8048D68: @ 0x08048D68
	push {r4, lr}
	ldr r3, _08048DAC
	ldr r2, _08048DB0
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08048DB4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08048D9C
	ldr r0, _08048DB8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048E0C
_08048D9C:
	bl GetCurrTurn
	cmp r0, #0
	bne _08048DBC
	movs r0, #0xc8
	bl sub_803F978
	b _08048DC2
	.align 2, 0
_08048DAC: .4byte 0x020245A0
_08048DB0: .4byte 0x02024260
_08048DB4: .4byte gBoard
_08048DB8: .4byte gUnk_02021C08
_08048DBC:
	movs r0, #0xc8
	bl sub_803F9C0
_08048DC2:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _08048DFC
	ldr r2, _08048E00
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08048E04
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048E12
	ldr r1, _08048E08
	movs r0, #0xa9
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08048E12
	.align 2, 0
_08048DFC: .4byte gBoard
_08048E00: .4byte 0x02024260
_08048E04: .4byte gUnk_02021C08
_08048E08: .4byte gUnk_02021C10
_08048E0C:
	movs r0, #0xc8
	bl sub_80581DC
_08048E12:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8048E18
sub_8048E18: @ 0x08048E18
	push {r4, lr}
	ldr r3, _08048E60
	ldr r2, _08048E64
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08048E68
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08048E4C
	ldr r0, _08048E6C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048EC4
_08048E4C:
	bl GetCurrTurn
	cmp r0, #0
	bne _08048E70
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_803F978
	b _08048E78
	.align 2, 0
_08048E60: .4byte 0x020245A0
_08048E64: .4byte 0x02024260
_08048E68: .4byte gBoard
_08048E6C: .4byte gUnk_02021C08
_08048E70:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_803F9C0
_08048E78:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _08048EB0
	ldr r2, _08048EB4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08048EB8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048ECC
	ldr r1, _08048EBC
	ldr r0, _08048EC0
	strh r0, [r1]
	bl sub_801CEBC
	b _08048ECC
	.align 2, 0
_08048EB0: .4byte gBoard
_08048EB4: .4byte 0x02024260
_08048EB8: .4byte gUnk_02021C08
_08048EBC: .4byte gUnk_02021C10
_08048EC0: .4byte 0x00000153
_08048EC4:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_80581DC
_08048ECC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8048ED4
sub_8048ED4: @ 0x08048ED4
	push {r4, lr}
	ldr r3, _08048F1C
	ldr r2, _08048F20
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08048F24
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08048F08
	ldr r0, _08048F28
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048F7C
_08048F08:
	bl GetCurrTurn
	cmp r0, #0
	bne _08048F2C
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F978
	b _08048F34
	.align 2, 0
_08048F1C: .4byte 0x020245A0
_08048F20: .4byte 0x02024260
_08048F24: .4byte gBoard
_08048F28: .4byte gUnk_02021C08
_08048F2C:
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F9C0
_08048F34:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _08048F6C
	ldr r2, _08048F70
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08048F74
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048F84
	ldr r1, _08048F78
	movs r0, #0xaa
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08048F84
	.align 2, 0
_08048F6C: .4byte gBoard
_08048F70: .4byte 0x02024260
_08048F74: .4byte gUnk_02021C08
_08048F78: .4byte gUnk_02021C10
_08048F7C:
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_80581DC
_08048F84:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8048F8C
sub_8048F8C: @ 0x08048F8C
	push {r4, lr}
	ldr r3, _08048FD4
	ldr r2, _08048FD8
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08048FDC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08048FC0
	ldr r0, _08048FE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049038
_08048FC0:
	bl GetCurrTurn
	cmp r0, #0
	bne _08048FE4
	movs r0, #0xfa
	lsls r0, r0, #3
	bl sub_803F978
	b _08048FEC
	.align 2, 0
_08048FD4: .4byte 0x020245A0
_08048FD8: .4byte 0x02024260
_08048FDC: .4byte gBoard
_08048FE0: .4byte gUnk_02021C08
_08048FE4:
	movs r0, #0xfa
	lsls r0, r0, #3
	bl sub_803F9C0
_08048FEC:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _08049024
	ldr r2, _08049028
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804902C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049040
	ldr r1, _08049030
	ldr r0, _08049034
	strh r0, [r1]
	bl sub_801CEBC
	b _08049040
	.align 2, 0
_08049024: .4byte gBoard
_08049028: .4byte 0x02024260
_0804902C: .4byte gUnk_02021C08
_08049030: .4byte gUnk_02021C10
_08049034: .4byte 0x00000155
_08049038:
	movs r0, #0xfa
	lsls r0, r0, #3
	bl sub_80581DC
_08049040:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8049048
sub_8049048: @ 0x08049048
	push {r4, lr}
	ldr r3, _0804908C
	ldr r2, _08049090
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08049094
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _0804907C
	ldr r0, _08049098
	ldrb r0, [r0]
	cmp r0, #0
	beq _080490F4
_0804907C:
	bl GetCurrTurn
	cmp r0, #0
	bne _080490A0
	ldr r0, _0804909C
	bl sub_803F978
	b _080490A6
	.align 2, 0
_0804908C: .4byte 0x020245A0
_08049090: .4byte 0x02024260
_08049094: .4byte gBoard
_08049098: .4byte gUnk_02021C08
_0804909C: .4byte 0x00001388
_080490A0:
	ldr r0, _080490E0
	bl sub_803F9C0
_080490A6:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _080490E4
	ldr r2, _080490E8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _080490EC
	ldrb r0, [r0]
	cmp r0, #0
	bne _080490FA
	ldr r1, _080490F0
	movs r0, #0xab
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _080490FA
	.align 2, 0
_080490E0: .4byte 0x00001388
_080490E4: .4byte gBoard
_080490E8: .4byte 0x02024260
_080490EC: .4byte gUnk_02021C08
_080490F0: .4byte gUnk_02021C10
_080490F4:
	ldr r0, _08049100
	bl sub_80581DC
_080490FA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049100: .4byte 0x00001388

	THUMB_FUNC_START sub_8049104
sub_8049104: @ 0x08049104
	push {r4, lr}
	ldr r3, _08049148
	ldr r2, _0804914C
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08049150
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08049138
	ldr r0, _08049154
	ldrb r0, [r0]
	cmp r0, #0
	beq _080491A8
_08049138:
	bl GetCurrTurn
	cmp r0, #0
	bne _08049158
	movs r0, #0x32
	bl sub_803F9E4
	b _0804915E
	.align 2, 0
_08049148: .4byte 0x020245A0
_0804914C: .4byte 0x02024260
_08049150: .4byte gBoard
_08049154: .4byte gUnk_02021C08
_08049158:
	movs r0, #0x32
	bl sub_803F99C
_0804915E:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _08049194
	ldr r2, _08049198
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804919C
	ldrb r0, [r0]
	cmp r0, #0
	bne _080491AE
	ldr r1, _080491A0
	ldr r0, _080491A4
	strh r0, [r1]
	bl sub_801CEBC
	b _080491AE
	.align 2, 0
_08049194: .4byte gBoard
_08049198: .4byte 0x02024260
_0804919C: .4byte gUnk_02021C08
_080491A0: .4byte gUnk_02021C10
_080491A4: .4byte 0x00000157
_080491A8:
	movs r0, #0x32
	bl sub_80581DC
_080491AE:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80491B4
sub_80491B4: @ 0x080491B4
	push {r4, lr}
	ldr r3, _080491F8
	ldr r2, _080491FC
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08049200
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _080491E8
	ldr r0, _08049204
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049258
_080491E8:
	bl GetCurrTurn
	cmp r0, #0
	bne _08049208
	movs r0, #0x64
	bl sub_803F9E4
	b _0804920E
	.align 2, 0
_080491F8: .4byte 0x020245A0
_080491FC: .4byte 0x02024260
_08049200: .4byte gBoard
_08049204: .4byte gUnk_02021C08
_08049208:
	movs r0, #0x64
	bl sub_803F99C
_0804920E:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _08049248
	ldr r2, _0804924C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049250
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804925E
	ldr r1, _08049254
	movs r0, #0xac
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _0804925E
	.align 2, 0
_08049248: .4byte gBoard
_0804924C: .4byte 0x02024260
_08049250: .4byte gUnk_02021C08
_08049254: .4byte gUnk_02021C10
_08049258:
	movs r0, #0x64
	bl sub_80581DC
_0804925E:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8049264
sub_8049264: @ 0x08049264
	push {r4, lr}
	ldr r3, _080492A8
	ldr r2, _080492AC
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _080492B0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08049298
	ldr r0, _080492B4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049308
_08049298:
	bl GetCurrTurn
	cmp r0, #0
	bne _080492B8
	movs r0, #0xc8
	bl sub_803F9E4
	b _080492BE
	.align 2, 0
_080492A8: .4byte 0x020245A0
_080492AC: .4byte 0x02024260
_080492B0: .4byte gBoard
_080492B4: .4byte gUnk_02021C08
_080492B8:
	movs r0, #0xc8
	bl sub_803F99C
_080492BE:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _080492F4
	ldr r2, _080492F8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _080492FC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804930E
	ldr r1, _08049300
	ldr r0, _08049304
	strh r0, [r1]
	bl sub_801CEBC
	b _0804930E
	.align 2, 0
_080492F4: .4byte gBoard
_080492F8: .4byte 0x02024260
_080492FC: .4byte gUnk_02021C08
_08049300: .4byte gUnk_02021C10
_08049304: .4byte 0x00000159
_08049308:
	movs r0, #0xc8
	bl sub_80581DC
_0804930E:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8049314
sub_8049314: @ 0x08049314
	push {r4, lr}
	ldr r3, _0804935C
	ldr r2, _08049360
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _08049364
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08049348
	ldr r0, _08049368
	ldrb r0, [r0]
	cmp r0, #0
	beq _080493BC
_08049348:
	bl GetCurrTurn
	cmp r0, #0
	bne _0804936C
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_803F9E4
	b _08049374
	.align 2, 0
_0804935C: .4byte 0x020245A0
_08049360: .4byte 0x02024260
_08049364: .4byte gBoard
_08049368: .4byte gUnk_02021C08
_0804936C:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_803F99C
_08049374:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _080493AC
	ldr r2, _080493B0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _080493B4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080493C4
	ldr r1, _080493B8
	movs r0, #0xad
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _080493C4
	.align 2, 0
_080493AC: .4byte gBoard
_080493B0: .4byte 0x02024260
_080493B4: .4byte gUnk_02021C08
_080493B8: .4byte gUnk_02021C10
_080493BC:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_80581DC
_080493C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80493CC
sub_80493CC: @ 0x080493CC
	push {r4, lr}
	ldr r3, _08049414
	ldr r2, _08049418
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _0804941C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08049400
	ldr r0, _08049420
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049478
_08049400:
	bl GetCurrTurn
	cmp r0, #0
	bne _08049424
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F9E4
	b _0804942C
	.align 2, 0
_08049414: .4byte 0x020245A0
_08049418: .4byte 0x02024260
_0804941C: .4byte gBoard
_08049420: .4byte gUnk_02021C08
_08049424:
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_803F99C
_0804942C:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _08049464
	ldr r2, _08049468
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804946C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049480
	ldr r1, _08049470
	ldr r0, _08049474
	strh r0, [r1]
	bl sub_801CEBC
	b _08049480
	.align 2, 0
_08049464: .4byte gBoard
_08049468: .4byte 0x02024260
_0804946C: .4byte gUnk_02021C08
_08049470: .4byte gUnk_02021C10
_08049474: .4byte 0x0000015B
_08049478:
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_80581DC
_08049480:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8049488
sub_8049488: @ 0x08049488
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804950C
_0804948E:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _080494A6
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_080494A6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804948E
	movs r5, #0
	ldr r6, _08049510
_080494B4:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _080494CC
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
_080494CC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080494B4
	ldr r3, _08049514
	ldr r2, _08049518
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804951C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049504
	ldr r1, _08049520
	movs r0, #0xa8
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_08049504:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804950C: .4byte gBoard+0x14
_08049510: .4byte gBoard+0x28
_08049514: .4byte gBoard
_08049518: .4byte 0x02024260
_0804951C: .4byte gUnk_02021C08
_08049520: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8049524
sub_8049524: @ 0x08049524
	push {r4, r5, r6, lr}
	ldr r3, _080495B0
	ldr r2, _080495B4
	ldrb r0, [r2, #2]
	strb r0, [r3, #2]
	ldrb r0, [r2, #3]
	strb r0, [r3, #3]
	ldr r4, _080495B8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3]
	bl sub_80586DC
	cmp r0, #1
	bne _08049558
	ldr r0, _080495BC
	ldrb r0, [r0]
	cmp r0, #0
	beq _080495C8
_08049558:
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x14
_0804955E:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _08049576
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_08049576:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804955E
	ldr r3, _080495B8
	ldr r2, _080495B4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _080495BC
	ldrb r0, [r0]
	cmp r0, #0
	bne _080495CC
	ldr r1, _080495C0
	ldr r0, _080495C4
	strh r0, [r1]
	bl sub_801CEBC
	b _080495CC
	.align 2, 0
_080495B0: .4byte 0x020245A0
_080495B4: .4byte 0x02024260
_080495B8: .4byte gBoard
_080495BC: .4byte gUnk_02021C08
_080495C0: .4byte gUnk_02021C10
_080495C4: .4byte 0x00000151
_080495C8:
	bl sub_80581DC
_080495CC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80495D4
sub_80495D4: @ 0x080495D4
	push {r4, r5, lr}
	ldr r5, _08049660
	ldr r4, _08049664
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80555A4
	cmp r0, #1
	bne _08049692
	ldr r2, _08049668
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049622
	ldr r0, _0804966C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049678
_08049622:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804966C
	ldrb r0, [r0]
	cmp r0, #0
	bne _080496A0
	ldr r1, _08049670
	ldr r0, _08049674
	strh r0, [r1]
	bl sub_801CEBC
	b _080496A0
	.align 2, 0
_08049660: .4byte gBoard
_08049664: .4byte 0x02024260
_08049668: .4byte 0x020245A0
_0804966C: .4byte gUnk_02021C08
_08049670: .4byte gUnk_02021C10
_08049674: .4byte 0x0000012D
_08049678:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _080496A0
_08049692:
	ldr r0, _080496A8
	ldrb r0, [r0]
	cmp r0, #0
	bne _080496A0
	movs r0, #0x39
	bl sub_8034F60
_080496A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080496A8: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_80496AC
sub_80496AC: @ 0x080496AC
	push {r4, r5, lr}
	ldr r5, _0804973C
	ldr r4, _08049740
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80555D4
	cmp r0, #1
	bne _0804976A
	ldr r2, _08049744
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _080496FA
	ldr r0, _08049748
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049750
_080496FA:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049748
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049778
	ldr r1, _0804974C
	movs r0, #0x97
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08049778
	.align 2, 0
_0804973C: .4byte gBoard
_08049740: .4byte 0x02024260
_08049744: .4byte 0x020245A0
_08049748: .4byte gUnk_02021C08
_0804974C: .4byte gUnk_02021C10
_08049750:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049778
_0804976A:
	ldr r0, _08049780
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049778
	movs r0, #0x39
	bl sub_8034F60
_08049778:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049780: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049784
sub_8049784: @ 0x08049784
	push {r4, r5, lr}
	ldr r5, _08049810
	ldr r4, _08049814
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055604
	cmp r0, #1
	bne _08049842
	ldr r2, _08049818
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _080497D2
	ldr r0, _0804981C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049828
_080497D2:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804981C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049850
	ldr r1, _08049820
	ldr r0, _08049824
	strh r0, [r1]
	bl sub_801CEBC
	b _08049850
	.align 2, 0
_08049810: .4byte gBoard
_08049814: .4byte 0x02024260
_08049818: .4byte 0x020245A0
_0804981C: .4byte gUnk_02021C08
_08049820: .4byte gUnk_02021C10
_08049824: .4byte 0x0000012F
_08049828:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049850
_08049842:
	ldr r0, _08049858
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049850
	movs r0, #0x39
	bl sub_8034F60
_08049850:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049858: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804985C
sub_804985C: @ 0x0804985C
	push {r4, r5, lr}
	ldr r5, _080498EC
	ldr r4, _080498F0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055634
	cmp r0, #1
	bne _0804991A
	ldr r2, _080498F4
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _080498AA
	ldr r0, _080498F8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049900
_080498AA:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _080498F8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049928
	ldr r1, _080498FC
	movs r0, #0x98
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08049928
	.align 2, 0
_080498EC: .4byte gBoard
_080498F0: .4byte 0x02024260
_080498F4: .4byte 0x020245A0
_080498F8: .4byte gUnk_02021C08
_080498FC: .4byte gUnk_02021C10
_08049900:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049928
_0804991A:
	ldr r0, _08049930
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049928
	movs r0, #0x39
	bl sub_8034F60
_08049928:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049930: .4byte gUnk_02021C08

THUMB_FUNC_START sub_8049934
sub_8049934: @ 0x08049934
	push {r4, r5, lr}
	ldr r5, _080499C0
	ldr r4, _080499C4
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055664
	cmp r0, #1
	bne _080499F2
	ldr r2, _080499C8
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049982
	ldr r0, _080499CC
	ldrb r0, [r0]
	cmp r0, #0
	beq _080499D8
_08049982:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _080499CC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049A00
	ldr r1, _080499D0
	ldr r0, _080499D4
	strh r0, [r1]
	bl sub_801CEBC
	b _08049A00
	.align 2, 0
_080499C0: .4byte gBoard
_080499C4: .4byte 0x02024260
_080499C8: .4byte 0x020245A0
_080499CC: .4byte gUnk_02021C08
_080499D0: .4byte gUnk_02021C10
_080499D4: .4byte 0x00000131
_080499D8:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049A00
_080499F2:
	ldr r0, _08049A08
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049A00
	movs r0, #0x39
	bl sub_8034F60
_08049A00:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049A08: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049A0C
sub_8049A0C: @ 0x08049A0C
	push {r4, r5, lr}
	ldr r5, _08049A9C
	ldr r4, _08049AA0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055694
	cmp r0, #1
	bne _08049ACA
	ldr r2, _08049AA4
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049A5A
	ldr r0, _08049AA8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049AB0
_08049A5A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049AA8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049AD8
	ldr r1, _08049AAC
	movs r0, #0x99
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08049AD8
	.align 2, 0
_08049A9C: .4byte gBoard
_08049AA0: .4byte 0x02024260
_08049AA4: .4byte 0x020245A0
_08049AA8: .4byte gUnk_02021C08
_08049AAC: .4byte gUnk_02021C10
_08049AB0:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049AD8
_08049ACA:
	ldr r0, _08049AE0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049AD8
	movs r0, #0x39
	bl sub_8034F60
_08049AD8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049AE0: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049AE4
sub_8049AE4: @ 0x08049AE4
	push {r4, r5, lr}
	ldr r5, _08049B70
	ldr r4, _08049B74
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80556C4
	cmp r0, #1
	bne _08049BA2
	ldr r2, _08049B78
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049B32
	ldr r0, _08049B7C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049B88
_08049B32:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049B7C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049BB0
	ldr r1, _08049B80
	ldr r0, _08049B84
	strh r0, [r1]
	bl sub_801CEBC
	b _08049BB0
	.align 2, 0
_08049B70: .4byte gBoard
_08049B74: .4byte 0x02024260
_08049B78: .4byte 0x020245A0
_08049B7C: .4byte gUnk_02021C08
_08049B80: .4byte gUnk_02021C10
_08049B84: .4byte 0x00000133
_08049B88:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049BB0
_08049BA2:
	ldr r0, _08049BB8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049BB0
	movs r0, #0x39
	bl sub_8034F60
_08049BB0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049BB8: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049BBC
sub_8049BBC: @ 0x08049BBC
	push {r4, r5, lr}
	ldr r5, _08049C4C
	ldr r4, _08049C50
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80556F4
	cmp r0, #1
	bne _08049C7A
	ldr r2, _08049C54
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049C0A
	ldr r0, _08049C58
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049C60
_08049C0A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049C58
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049C88
	ldr r1, _08049C5C
	movs r0, #0x9a
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08049C88
	.align 2, 0
_08049C4C: .4byte gBoard
_08049C50: .4byte 0x02024260
_08049C54: .4byte 0x020245A0
_08049C58: .4byte gUnk_02021C08
_08049C5C: .4byte gUnk_02021C10
_08049C60:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049C88
_08049C7A:
	ldr r0, _08049C90
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049C88
	movs r0, #0x39
	bl sub_8034F60
_08049C88:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049C90: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049C94
sub_8049C94: @ 0x08049C94
	push {r4, r5, lr}
	ldr r5, _08049D20
	ldr r4, _08049D24
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055724
	cmp r0, #1
	bne _08049D52
	ldr r2, _08049D28
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049CE2
	ldr r0, _08049D2C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049D38
_08049CE2:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049D2C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049D60
	ldr r1, _08049D30
	ldr r0, _08049D34
	strh r0, [r1]
	bl sub_801CEBC
	b _08049D60
	.align 2, 0
_08049D20: .4byte gBoard
_08049D24: .4byte 0x02024260
_08049D28: .4byte 0x020245A0
_08049D2C: .4byte gUnk_02021C08
_08049D30: .4byte gUnk_02021C10
_08049D34: .4byte 0x00000135
_08049D38:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049D60
_08049D52:
	ldr r0, _08049D68
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049D60
	movs r0, #0x39
	bl sub_8034F60
_08049D60:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049D68: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049D6C
sub_8049D6C: @ 0x08049D6C
	push {r4, r5, lr}
	ldr r5, _08049DFC
	ldr r4, _08049E00
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055754
	cmp r0, #1
	bne _08049E2A
	ldr r2, _08049E04
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049DBA
	ldr r0, _08049E08
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049E10
_08049DBA:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049E08
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049E38
	ldr r1, _08049E0C
	movs r0, #0x9b
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08049E38
	.align 2, 0
_08049DFC: .4byte gBoard
_08049E00: .4byte 0x02024260
_08049E04: .4byte 0x020245A0
_08049E08: .4byte gUnk_02021C08
_08049E0C: .4byte gUnk_02021C10
_08049E10:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049E38
_08049E2A:
	ldr r0, _08049E40
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049E38
	movs r0, #0x39
	bl sub_8034F60
_08049E38:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049E40: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049E44
sub_8049E44: @ 0x08049E44
	push {r4, r5, lr}
	ldr r5, _08049ED0
	ldr r4, _08049ED4
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055784
	cmp r0, #1
	bne _08049F02
	ldr r2, _08049ED8
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049E92
	ldr r0, _08049EDC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049EE8
_08049E92:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049EDC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049F10
	ldr r1, _08049EE0
	ldr r0, _08049EE4
	strh r0, [r1]
	bl sub_801CEBC
	b _08049F10
	.align 2, 0
_08049ED0: .4byte gBoard
_08049ED4: .4byte 0x02024260
_08049ED8: .4byte 0x020245A0
_08049EDC: .4byte gUnk_02021C08
_08049EE0: .4byte gUnk_02021C10
_08049EE4: .4byte 0x00000137
_08049EE8:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049F10
_08049F02:
	ldr r0, _08049F18
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049F10
	movs r0, #0x39
	bl sub_8034F60
_08049F10:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049F18: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049F1C
sub_8049F1C: @ 0x08049F1C
	push {r4, r5, lr}
	ldr r5, _08049FAC
	ldr r4, _08049FB0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80557B4
	cmp r0, #1
	bne _08049FDA
	ldr r2, _08049FB4
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _08049F6A
	ldr r0, _08049FB8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049FC0
_08049F6A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _08049FB8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049FE8
	ldr r1, _08049FBC
	movs r0, #0x9c
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _08049FE8
	.align 2, 0
_08049FAC: .4byte gBoard
_08049FB0: .4byte 0x02024260
_08049FB4: .4byte 0x020245A0
_08049FB8: .4byte gUnk_02021C08
_08049FBC: .4byte gUnk_02021C10
_08049FC0:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _08049FE8
_08049FDA:
	ldr r0, _08049FF0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049FE8
	movs r0, #0x39
	bl sub_8034F60
_08049FE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049FF0: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8049FF4
sub_8049FF4: @ 0x08049FF4
	push {r4, r5, lr}
	ldr r5, _0804A080
	ldr r4, _0804A084
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80557E4
	cmp r0, #1
	bne _0804A0B2
	ldr r2, _0804A088
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A042
	ldr r0, _0804A08C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A098
_0804A042:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A08C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A0C0
	ldr r1, _0804A090
	ldr r0, _0804A094
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A0C0
	.align 2, 0
_0804A080: .4byte gBoard
_0804A084: .4byte 0x02024260
_0804A088: .4byte 0x020245A0
_0804A08C: .4byte gUnk_02021C08
_0804A090: .4byte gUnk_02021C10
_0804A094: .4byte 0x00000139
_0804A098:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A0C0
_0804A0B2:
	ldr r0, _0804A0C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A0C0
	movs r0, #0x39
	bl sub_8034F60
_0804A0C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A0C8: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A0CC
sub_804A0CC: @ 0x0804A0CC
	push {r4, r5, lr}
	ldr r5, _0804A15C
	ldr r4, _0804A160
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055814
	cmp r0, #1
	bne _0804A18A
	ldr r2, _0804A164
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A11A
	ldr r0, _0804A168
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A170
_0804A11A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A168
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A198
	ldr r1, _0804A16C
	movs r0, #0x9d
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A198
	.align 2, 0
_0804A15C: .4byte gBoard
_0804A160: .4byte 0x02024260
_0804A164: .4byte 0x020245A0
_0804A168: .4byte gUnk_02021C08
_0804A16C: .4byte gUnk_02021C10
_0804A170:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A198
_0804A18A:
	ldr r0, _0804A1A0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A198
	movs r0, #0x39
	bl sub_8034F60
_0804A198:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A1A0: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A1A4
sub_804A1A4: @ 0x0804A1A4
	push {r4, r5, lr}
	ldr r5, _0804A230
	ldr r4, _0804A234
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055844
	cmp r0, #1
	bne _0804A262
	ldr r2, _0804A238
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A1F2
	ldr r0, _0804A23C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A248
_0804A1F2:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A23C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A270
	ldr r1, _0804A240
	ldr r0, _0804A244
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A270
	.align 2, 0
_0804A230: .4byte gBoard
_0804A234: .4byte 0x02024260
_0804A238: .4byte 0x020245A0
_0804A23C: .4byte gUnk_02021C08
_0804A240: .4byte gUnk_02021C10
_0804A244: .4byte 0x0000013B
_0804A248:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A270
_0804A262:
	ldr r0, _0804A278
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A270
	movs r0, #0x39
	bl sub_8034F60
_0804A270:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A278: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A27C
sub_804A27C: @ 0x0804A27C
	push {r4, r5, lr}
	ldr r5, _0804A30C
	ldr r4, _0804A310
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055874
	cmp r0, #1
	bne _0804A33A
	ldr r2, _0804A314
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A2CA
	ldr r0, _0804A318
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A320
_0804A2CA:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A318
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A348
	ldr r1, _0804A31C
	movs r0, #0x9e
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A348
	.align 2, 0
_0804A30C: .4byte gBoard
_0804A310: .4byte 0x02024260
_0804A314: .4byte 0x020245A0
_0804A318: .4byte gUnk_02021C08
_0804A31C: .4byte gUnk_02021C10
_0804A320:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A348
_0804A33A:
	ldr r0, _0804A350
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A348
	movs r0, #0x39
	bl sub_8034F60
_0804A348:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A350: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A354
sub_804A354: @ 0x0804A354
	push {r4, r5, lr}
	ldr r5, _0804A3E0
	ldr r4, _0804A3E4
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80558A4
	cmp r0, #1
	bne _0804A412
	ldr r2, _0804A3E8
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A3A2
	ldr r0, _0804A3EC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A3F8
_0804A3A2:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A3EC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A420
	ldr r1, _0804A3F0
	ldr r0, _0804A3F4
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A420
	.align 2, 0
_0804A3E0: .4byte gBoard
_0804A3E4: .4byte 0x02024260
_0804A3E8: .4byte 0x020245A0
_0804A3EC: .4byte gUnk_02021C08
_0804A3F0: .4byte gUnk_02021C10
_0804A3F4: .4byte 0x0000013D
_0804A3F8:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A420
_0804A412:
	ldr r0, _0804A428
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A420
	movs r0, #0x39
	bl sub_8034F60
_0804A420:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A428: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A42C
sub_804A42C: @ 0x0804A42C
	push {r4, r5, lr}
	ldr r5, _0804A4B8
	ldr r4, _0804A4BC
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80558D4
	cmp r0, #1
	bne _0804A4EA
	ldr r2, _0804A4C0
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A47A
	ldr r0, _0804A4C4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A4D0
_0804A47A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A4C4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A4F8
	ldr r1, _0804A4C8
	ldr r0, _0804A4CC
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A4F8
	.align 2, 0
_0804A4B8: .4byte gBoard
_0804A4BC: .4byte 0x02024260
_0804A4C0: .4byte 0x020245A0
_0804A4C4: .4byte gUnk_02021C08
_0804A4C8: .4byte gUnk_02021C10
_0804A4CC: .4byte 0x0000013F
_0804A4D0:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A4F8
_0804A4EA:
	ldr r0, _0804A500
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A4F8
	movs r0, #0x39
	bl sub_8034F60
_0804A4F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A500: .4byte gUnk_02021C08

THUMB_FUNC_START sub_804A504
sub_804A504: @ 0x0804A504
	push {r4, r5, lr}
	ldr r5, _0804A590
	ldr r4, _0804A594
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055904
	cmp r0, #1
	bne _0804A5C2
	ldr r2, _0804A598
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A552
	ldr r0, _0804A59C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A5A8
_0804A552:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A59C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A5D0
	ldr r1, _0804A5A0
	ldr r0, _0804A5A4
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A5D0
	.align 2, 0
_0804A590: .4byte gBoard
_0804A594: .4byte 0x02024260
_0804A598: .4byte 0x020245A0
_0804A59C: .4byte gUnk_02021C08
_0804A5A0: .4byte gUnk_02021C10
_0804A5A4: .4byte 0x00000141
_0804A5A8:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A5D0
_0804A5C2:
	ldr r0, _0804A5D8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A5D0
	movs r0, #0x39
	bl sub_8034F60
_0804A5D0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A5D8: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A5DC
sub_804A5DC: @ 0x0804A5DC
	push {r4, r5, lr}
	ldr r5, _0804A66C
	ldr r4, _0804A670
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055934
	cmp r0, #1
	bne _0804A69A
	ldr r2, _0804A674
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A62A
	ldr r0, _0804A678
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A680
_0804A62A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A678
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A6A8
	ldr r1, _0804A67C
	movs r0, #0xa1
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A6A8
	.align 2, 0
_0804A66C: .4byte gBoard
_0804A670: .4byte 0x02024260
_0804A674: .4byte 0x020245A0
_0804A678: .4byte gUnk_02021C08
_0804A67C: .4byte gUnk_02021C10
_0804A680:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A6A8
_0804A69A:
	ldr r0, _0804A6B0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A6A8
	movs r0, #0x39
	bl sub_8034F60
_0804A6A8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A6B0: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A6B4
sub_804A6B4: @ 0x0804A6B4
	push {r4, r5, lr}
	ldr r5, _0804A740
	ldr r4, _0804A744
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055964
	cmp r0, #1
	bne _0804A772
	ldr r2, _0804A748
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A702
	ldr r0, _0804A74C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A758
_0804A702:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A74C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A780
	ldr r1, _0804A750
	ldr r0, _0804A754
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A780
	.align 2, 0
_0804A740: .4byte gBoard
_0804A744: .4byte 0x02024260
_0804A748: .4byte 0x020245A0
_0804A74C: .4byte gUnk_02021C08
_0804A750: .4byte gUnk_02021C10
_0804A754: .4byte 0x00000143
_0804A758:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A780
_0804A772:
	ldr r0, _0804A788
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A780
	movs r0, #0x39
	bl sub_8034F60
_0804A780:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A788: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A78C
sub_804A78C: @ 0x0804A78C
	push {r4, r5, lr}
	ldr r5, _0804A81C
	ldr r4, _0804A820
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055994
	cmp r0, #1
	bne _0804A84A
	ldr r2, _0804A824
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A7DA
	ldr r0, _0804A828
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A830
_0804A7DA:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A828
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A858
	ldr r1, _0804A82C
	movs r0, #0xa2
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A858
	.align 2, 0
_0804A81C: .4byte gBoard
_0804A820: .4byte 0x02024260
_0804A824: .4byte 0x020245A0
_0804A828: .4byte gUnk_02021C08
_0804A82C: .4byte gUnk_02021C10
_0804A830:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A858
_0804A84A:
	ldr r0, _0804A860
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A858
	movs r0, #0x39
	bl sub_8034F60
_0804A858:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A860: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A864
sub_804A864: @ 0x0804A864
	push {r4, r5, lr}
	ldr r5, _0804A8F0
	ldr r4, _0804A8F4
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80559C4
	cmp r0, #1
	bne _0804A922
	ldr r2, _0804A8F8
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A8B2
	ldr r0, _0804A8FC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A908
_0804A8B2:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A8FC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A930
	ldr r1, _0804A900
	ldr r0, _0804A904
	strh r0, [r1]
	bl sub_801CEBC
	b _0804A930
	.align 2, 0
_0804A8F0: .4byte gBoard
_0804A8F4: .4byte 0x02024260
_0804A8F8: .4byte 0x020245A0
_0804A8FC: .4byte gUnk_02021C08
_0804A900: .4byte gUnk_02021C10
_0804A904: .4byte 0x00000145
_0804A908:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804A930
_0804A922:
	ldr r0, _0804A938
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A930
	movs r0, #0x39
	bl sub_8034F60
_0804A930:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A938: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804A93C
sub_804A93C: @ 0x0804A93C
	push {r4, r5, lr}
	ldr r5, _0804A9CC
	ldr r4, _0804A9D0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_80559F4
	cmp r0, #1
	bne _0804A9FA
	ldr r2, _0804A9D4
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804A98A
	ldr r0, _0804A9D8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A9E0
_0804A98A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804A9D8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AA08
	ldr r1, _0804A9DC
	movs r0, #0xa3
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _0804AA08
	.align 2, 0
_0804A9CC: .4byte gBoard
_0804A9D0: .4byte 0x02024260
_0804A9D4: .4byte 0x020245A0
_0804A9D8: .4byte gUnk_02021C08
_0804A9DC: .4byte gUnk_02021C10
_0804A9E0:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804AA08
_0804A9FA:
	ldr r0, _0804AA10
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AA08
	movs r0, #0x39
	bl sub_8034F60
_0804AA08:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804AA10: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804AA14
sub_804AA14: @ 0x0804AA14
	push {r4, r5, lr}
	ldr r5, _0804AAA0
	ldr r4, _0804AAA4
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055A24
	cmp r0, #1
	bne _0804AAD2
	ldr r2, _0804AAA8
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804AA62
	ldr r0, _0804AAAC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804AAB8
_0804AA62:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804AAAC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AAE0
	ldr r1, _0804AAB0
	ldr r0, _0804AAB4
	strh r0, [r1]
	bl sub_801CEBC
	b _0804AAE0
	.align 2, 0
_0804AAA0: .4byte gBoard
_0804AAA4: .4byte 0x02024260
_0804AAA8: .4byte 0x020245A0
_0804AAAC: .4byte gUnk_02021C08
_0804AAB0: .4byte gUnk_02021C10
_0804AAB4: .4byte 0x00000147
_0804AAB8:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804AAE0
_0804AAD2:
	ldr r0, _0804AAE8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AAE0
	movs r0, #0x39
	bl sub_8034F60
_0804AAE0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804AAE8: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804AAEC
sub_804AAEC: @ 0x0804AAEC
	push {r4, r5, lr}
	ldr r5, _0804AB7C
	ldr r4, _0804AB80
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055A54
	cmp r0, #1
	bne _0804ABAA
	ldr r2, _0804AB84
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804AB3A
	ldr r0, _0804AB88
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804AB90
_0804AB3A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804AB88
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804ABB8
	ldr r1, _0804AB8C
	movs r0, #0xa4
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
	b _0804ABB8
	.align 2, 0
_0804AB7C: .4byte gBoard
_0804AB80: .4byte 0x02024260
_0804AB84: .4byte 0x020245A0
_0804AB88: .4byte gUnk_02021C08
_0804AB8C: .4byte gUnk_02021C10
_0804AB90:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804ABB8
_0804ABAA:
	ldr r0, _0804ABC0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804ABB8
	movs r0, #0x39
	bl sub_8034F60
_0804ABB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804ABC0: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804ABC4
sub_804ABC4: @ 0x0804ABC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0804AC48
	ldr r2, [r0, #4]
	ldrb r0, [r2, #2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #2]
	movs r4, #0
	ldr r0, _0804AC4C
	mov r8, r0
	ldr r1, _0804AC50
	mov ip, r1
	mov r6, r8
	adds r6, #0x14
	movs r7, #3
	rsbs r7, r7, #0
	movs r5, #0x10
_0804ABEA:
	lsls r0, r4, #2
	adds r3, r0, r6
	ldr r2, [r3]
	ldrh r0, [r2]
	cmp r0, #0
	beq _0804AC06
	ldrb r1, [r2, #5]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r1, [r3]
	ldrb r0, [r1, #5]
	orrs r0, r5
	strb r0, [r1, #5]
_0804AC06:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0804ABEA
	mov r2, ip
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r2, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804AC54
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AC3C
	ldr r1, _0804AC58
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_0804AC3C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AC48: .4byte gDuel+0x100
_0804AC4C: .4byte gBoard
_0804AC50: .4byte 0x02024260
_0804AC54: .4byte gUnk_02021C08
_0804AC58: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804AC5C
sub_804AC5C: @ 0x0804AC5C
	push {r4, r5, lr}
	movs r0, #1
	bl sub_8040744
	movs r2, #0
	ldr r3, _0804ACBC
	adds r5, r3, #0
	subs r5, #0x14
	movs r4, #0x10
_0804AC6E:
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804AC80
	ldrb r0, [r1, #5]
	orrs r0, r4
	strb r0, [r1, #5]
_0804AC80:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0804AC6E
	ldr r2, _0804ACC0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804ACC4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804ACB6
	ldr r1, _0804ACC8
	movs r0, #0xae
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_0804ACB6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804ACBC: .4byte gBoard+0x14
_0804ACC0: .4byte 0x02024260
_0804ACC4: .4byte gUnk_02021C08
_0804ACC8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804ACCC
sub_804ACCC: @ 0x0804ACCC
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r6, _0804AD28
	ldr r5, _0804AD2C
	adds r4, r6, #0
	adds r4, #0x14
	movs r3, #0x10
_0804ACDA:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804ACEC
	ldrb r0, [r1, #5]
	orrs r0, r3
	strb r0, [r1, #5]
_0804ACEC:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0804ACDA
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r5, [r5, #3]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804AD30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AD20
	ldr r1, _0804AD34
	movs r0, #0xaf
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_0804AD20:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AD28: .4byte gBoard
_0804AD2C: .4byte 0x02024260
_0804AD30: .4byte gUnk_02021C08
_0804AD34: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804AD38
sub_804AD38: @ 0x0804AD38
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0804AD8C
_0804AD3E:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804AD50
	adds r0, r1, #0
	bl sub_804037C
_0804AD50:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0804AD3E
	ldr r3, _0804AD90
	ldr r2, _0804AD94
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804AD98
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AD86
	ldr r1, _0804AD9C
	ldr r0, _0804ADA0
	strh r0, [r1]
	bl sub_801CEBC
_0804AD86:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804AD8C: .4byte gBoard+0x14
_0804AD90: .4byte gBoard
_0804AD94: .4byte 0x02024260
_0804AD98: .4byte gUnk_02021C08
_0804AD9C: .4byte gUnk_02021C10
_0804ADA0: .4byte 0x0000015D

	THUMB_FUNC_START sub_804ADA4
sub_804ADA4: @ 0x0804ADA4
	push {r4, lr}
	ldr r3, _0804AE44
	ldr r2, _0804AE48
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r2, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldrh r4, [r1]
	cmp r4, #0x3e
	bne _0804ADF0
	movs r0, #0x3f
	strh r0, [r1]
	ldrb r1, [r2, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #5]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804AE4C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804ADF0
	ldr r1, _0804AE50
	movs r0, #0x9f
	lsls r0, r0, #1
	strh r0, [r1]
	strh r4, [r1, #2]
	bl sub_801CEBC
_0804ADF0:
	ldr r3, _0804AE44
	ldr r2, _0804AE48
	ldrb r0, [r2, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r2, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r1, [r1]
	ldrh r4, [r1]
	ldr r0, _0804AE54
	cmp r4, r0
	bne _0804AE3C
	movs r0, #0x3f
	strh r0, [r1]
	ldrb r1, [r2, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #5]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804AE4C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AE3C
	ldr r1, _0804AE50
	movs r0, #0x9f
	lsls r0, r0, #1
	strh r0, [r1]
	strh r4, [r1, #2]
	bl sub_801CEBC
_0804AE3C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804AE44: .4byte gBoard
_0804AE48: .4byte 0x02024260
_0804AE4C: .4byte gUnk_02021C08
_0804AE50: .4byte gUnk_02021C10
_0804AE54: .4byte 0x000002A1

	THUMB_FUNC_START sub_804AE58
sub_804AE58: @ 0x0804AE58
	push {r4, r5, r6, lr}
	ldr r5, _0804AEC0
	ldr r6, _0804AEC4
	ldrh r1, [r6, #8]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804AEBA
	ldrh r1, [r6, #8]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804AEC8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	ldrh r1, [r6, #0xa]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804AECC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AEBA
	ldr r0, _0804AED0
	ldr r1, _0804AED4
	strh r1, [r0]
	ldrh r1, [r6, #0xa]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804AEBA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AEC0: .4byte gBoard+0x28
_0804AEC4: .4byte 0x08E00FA8
_0804AEC8: .4byte 0x02024260
_0804AECC: .4byte gUnk_02021C08
_0804AED0: .4byte gUnk_02021C10
_0804AED4: .4byte 0x0000029E

	THUMB_FUNC_START sub_804AED8
sub_804AED8: @ 0x0804AED8
	push {r4, r5, r6, lr}
	ldr r5, _0804AF40
	ldr r6, _0804AF44
	ldrh r1, [r6, #0x10]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804AF3A
	ldrh r1, [r6, #0x10]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804AF48
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	ldrh r1, [r6, #0x12]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804AF4C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AF3A
	ldr r0, _0804AF50
	ldr r1, _0804AF54
	strh r1, [r0]
	ldrh r1, [r6, #0x12]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804AF3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AF40: .4byte gBoard+0x28
_0804AF44: .4byte 0x08E00FA8
_0804AF48: .4byte 0x02024260
_0804AF4C: .4byte gUnk_02021C08
_0804AF50: .4byte gUnk_02021C10
_0804AF54: .4byte 0x0000029F

	THUMB_FUNC_START sub_804AF58
sub_804AF58: @ 0x0804AF58
	push {r4, r5, r6, lr}
	ldr r5, _0804AFC0
	ldr r6, _0804AFC4
	ldrh r1, [r6, #0x18]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804AFBA
	ldrh r1, [r6, #0x18]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804AFC8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	ldrh r1, [r6, #0x1a]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804AFCC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AFBA
	ldr r0, _0804AFD0
	ldr r1, _0804AFD4
	strh r1, [r0]
	ldrh r1, [r6, #0x1a]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804AFBA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AFC0: .4byte gBoard+0x28
_0804AFC4: .4byte 0x08E00FA8
_0804AFC8: .4byte 0x02024260
_0804AFCC: .4byte gUnk_02021C08
_0804AFD0: .4byte gUnk_02021C10
_0804AFD4: .4byte 0x000002A1

	THUMB_FUNC_START sub_804AFD8
sub_804AFD8: @ 0x0804AFD8
	push {r4, r5, r6, lr}
	ldr r5, _0804B040
	ldr r6, _0804B044
	ldrh r1, [r6, #0x20]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804B03A
	ldrh r1, [r6, #0x20]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804B048
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	ldrh r1, [r6, #0x22]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804B04C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B03A
	ldr r0, _0804B050
	ldr r1, _0804B054
	strh r1, [r0]
	ldrh r1, [r6, #0x22]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804B03A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B040: .4byte gBoard+0x28
_0804B044: .4byte 0x08E00FA8
_0804B048: .4byte 0x02024260
_0804B04C: .4byte gUnk_02021C08
_0804B050: .4byte gUnk_02021C10
_0804B054: .4byte 0x000002A2

	THUMB_FUNC_START sub_804B058
sub_804B058: @ 0x0804B058
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _0804B074
	mov r0, sp
	adds r1, r4, #0
	bl sub_804B144
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B078
	movs r5, #0x1d
	b _0804B0B8
	.align 2, 0
_0804B074: .4byte 0x08E01090
_0804B078:
	adds r1, r4, #0
	subs r1, #8
	mov r0, sp
	bl sub_804B144
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B08E
	movs r5, #0x1c
	b _0804B0B8
_0804B08E:
	adds r1, r4, #0
	subs r1, #0x10
	mov r0, sp
	bl sub_804B144
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B0A4
	movs r5, #0x1b
	b _0804B0B8
_0804B0A4:
	adds r1, r4, #0
	subs r1, #0xc0
	mov r0, sp
	bl sub_804B144
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804B122
	movs r5, #5
_0804B0B8:
	ldr r4, _0804B12C
	ldr r2, _0804B130
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r4, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _0804B134
	lsls r2, r5, #3
	adds r1, #2
	adds r5, r2, r1
	ldrh r1, [r5]
	bl sub_804D600
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_80402BC
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_80402BC
	bl ResetNumTributes
	ldr r0, _0804B138
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B122
	ldr r0, _0804B13C
	ldr r1, _0804B140
	strh r1, [r0]
	ldrh r1, [r5]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804B122:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B12C: .4byte gBoard
_0804B130: .4byte 0x02024260
_0804B134: .4byte 0x08E00FA8
_0804B138: .4byte gUnk_02021C08
_0804B13C: .4byte gUnk_02021C10
_0804B140: .4byte 0x000002A3

	THUMB_FUNC_START sub_804B144
sub_804B144: @ 0x0804B144
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r2, #0
	ldr r1, _0804B1D0
	ldr r0, [r1, #0x28]
	ldrh r0, [r0]
	mov ip, r1
	ldrh r1, [r3]
	cmp r0, r1
	beq _0804B176
	mov r1, ip
	adds r1, #0x28
_0804B15E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bhi _0804B176
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r5, [r3]
	cmp r0, r5
	bne _0804B15E
_0804B176:
	cmp r2, #5
	beq _0804B204
	adds r0, r2, #0
	strb r2, [r4]
	movs r2, #0
	cmp r2, r0
	beq _0804B190
	mov r1, ip
	ldr r0, [r1, #0x28]
	ldrh r0, [r0]
	ldrh r5, [r3, #4]
	cmp r0, r5
	beq _0804B1B2
_0804B190:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bhi _0804B1B2
	ldrb r0, [r4]
	cmp r2, r0
	beq _0804B190
	lsls r0, r2, #2
	mov r1, ip
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r1, [r3, #4]
	cmp r0, r1
	bne _0804B190
_0804B1B2:
	cmp r2, #5
	beq _0804B204
	adds r1, r2, #0
	strb r2, [r4, #1]
	movs r2, #0
	ldrb r0, [r4]
	adds r5, r0, #0
	cmp r2, r5
	beq _0804B1D4
	cmp r2, r1
	beq _0804B1D4
	mov r1, ip
	ldr r0, [r1, #0x28]
	b _0804B1F2
	.align 2, 0
_0804B1D0: .4byte gBoard
_0804B1D4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bhi _0804B1FA
	cmp r2, r5
	beq _0804B1D4
	ldrb r0, [r4, #1]
	cmp r2, r0
	beq _0804B1D4
	lsls r0, r2, #2
	mov r1, ip
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
_0804B1F2:
	ldrh r0, [r0]
	ldrh r1, [r3, #6]
	cmp r0, r1
	bne _0804B1D4
_0804B1FA:
	cmp r2, #5
	beq _0804B204
	strb r2, [r4, #2]
	movs r0, #1
	b _0804B206
_0804B204:
	movs r0, #0
_0804B206:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_804B20C
sub_804B20C: @ 0x0804B20C
	push {r4, r5, r6, lr}
	ldr r5, _0804B280
	ldr r6, _0804B284
	adds r4, r6, #0
	adds r4, #0x48
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804B278
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804B288
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x4a
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804B28C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B278
	ldr r0, _0804B290
	movs r1, #0xa9
	lsls r1, r1, #2
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804B278:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B280: .4byte gBoard+0x28
_0804B284: .4byte 0x08E00FA8
_0804B288: .4byte 0x02024260
_0804B28C: .4byte gUnk_02021C08
_0804B290: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804B294
sub_804B294: @ 0x0804B294
	push {r4, r5, r6, lr}
	ldr r5, _0804B304
	ldr r6, _0804B308
	adds r4, r6, #0
	adds r4, #0x50
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804B2FE
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804B30C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x52
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804B310
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B2FE
	ldr r0, _0804B314
	ldr r1, _0804B318
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804B2FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B304: .4byte gBoard+0x28
_0804B308: .4byte 0x08E00FA8
_0804B30C: .4byte 0x02024260
_0804B310: .4byte gUnk_02021C08
_0804B314: .4byte gUnk_02021C10
_0804B318: .4byte 0x000002A5

	THUMB_FUNC_START sub_804B31C
sub_804B31C: @ 0x0804B31C
	push {r4, r5, r6, lr}
	ldr r5, _0804B38C
	ldr r6, _0804B390
	adds r4, r6, #0
	adds r4, #0x58
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804B386
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804B394
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x5a
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804B398
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B386
	ldr r0, _0804B39C
	ldr r1, _0804B3A0
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804B386:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B38C: .4byte gBoard+0x28
_0804B390: .4byte 0x08E00FA8
_0804B394: .4byte 0x02024260
_0804B398: .4byte gUnk_02021C08
_0804B39C: .4byte gUnk_02021C10
_0804B3A0: .4byte 0x000002A6

	THUMB_FUNC_START sub_804B3A4
sub_804B3A4: @ 0x0804B3A4
	push {r4, r5, r6, lr}
	ldr r5, _0804B414
	ldr r6, _0804B418
	adds r4, r6, #0
	adds r4, #0x60
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804B40E
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804B41C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x62
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804B420
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B40E
	ldr r0, _0804B424
	ldr r1, _0804B428
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804B40E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B414: .4byte gBoard+0x28
_0804B418: .4byte 0x08E00FA8
_0804B41C: .4byte 0x02024260
_0804B420: .4byte gUnk_02021C08
_0804B424: .4byte gUnk_02021C10
_0804B428: .4byte 0x000002A7
	.byte 0x70, 0xB5, 0x1C, 0x4D
	.byte 0x1C, 0x4E, 0x34, 0x1C, 0x68, 0x34, 0x21, 0x88, 0x28, 0x1C, 0xF8, 0xF7, 0x17, 0xF9, 0x01, 0x28
	.byte 0x2A, 0xD1, 0x21, 0x88, 0x28, 0x1C, 0xF8, 0xF7, 0x25, 0xF9, 0x04, 0x1C, 0x24, 0x06, 0x24, 0x0E
	.byte 0x2B, 0x1C, 0x28, 0x3B, 0x14, 0x4A, 0x91, 0x78, 0x88, 0x00, 0x40, 0x18, 0xD2, 0x78, 0x80, 0x18
	.byte 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68, 0x00, 0x21, 0xF9, 0xF7, 0x66, 0xFF, 0xA4, 0x00, 0x64, 0x19
	.byte 0x20, 0x68, 0x34, 0x1C, 0x6A, 0x34, 0x21, 0x88, 0x02, 0xF0, 0xC2, 0xF8, 0xF9, 0xF7, 0x7A, 0xFF
	.byte 0x0A, 0x48, 0x00, 0x78, 0x00, 0x28, 0x07, 0xD1, 0x09, 0x48, 0xAA, 0x21, 0x89, 0x00, 0x01, 0x80
	.byte 0x21, 0x88, 0x41, 0x80, 0xD1, 0xF7, 0x12, 0xFD, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xF8, 0x3F, 0x02, 0x02, 0xA8, 0x0F, 0xE0, 0x08, 0x60, 0x42, 0x02, 0x02, 0x08, 0x1C, 0x02, 0x02
	.byte 0x10, 0x1C, 0x02, 0x02, 0x70, 0xB5, 0x1B, 0x4D, 0x1B, 0x4E, 0x34, 0x1C, 0x70, 0x34, 0x21, 0x88
	.byte 0x28, 0x1C, 0xF8, 0xF7, 0xD3, 0xF8, 0x01, 0x28, 0x29, 0xD1, 0x21, 0x88, 0x28, 0x1C, 0xF8, 0xF7
	.byte 0xE1, 0xF8, 0x04, 0x1C, 0x24, 0x06, 0x24, 0x0E, 0x2B, 0x1C, 0x28, 0x3B, 0x13, 0x4A, 0x91, 0x78
	.byte 0x88, 0x00, 0x40, 0x18, 0xD2, 0x78, 0x80, 0x18, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68, 0x00, 0x21
	.byte 0xF9, 0xF7, 0x22, 0xFF, 0xA4, 0x00, 0x64, 0x19, 0x20, 0x68, 0x34, 0x1C, 0x72, 0x34, 0x21, 0x88
	.byte 0x02, 0xF0, 0x7E, 0xF8, 0xF9, 0xF7, 0x36, 0xFF, 0x09, 0x48, 0x00, 0x78, 0x00, 0x28, 0x06, 0xD1
	.byte 0x08, 0x48, 0x09, 0x49, 0x01, 0x80, 0x21, 0x88, 0x41, 0x80, 0xD1, 0xF7, 0xCF, 0xFC, 0x70, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0xF8, 0x3F, 0x02, 0x02, 0xA8, 0x0F, 0xE0, 0x08, 0x60, 0x42, 0x02, 0x02
	.byte 0x08, 0x1C, 0x02, 0x02, 0x10, 0x1C, 0x02, 0x02, 0xB3, 0x02, 0x00, 0x00, 0x30, 0xB5, 0x23, 0x4D
	.byte 0x23, 0x4C, 0xA1, 0x78, 0x88, 0x00, 0x40, 0x18, 0xE1, 0x78, 0x40, 0x18, 0x80, 0x00, 0x40, 0x19
	.byte 0x00, 0x68, 0x00, 0x88, 0x0A, 0xF0, 0x96, 0xFA, 0x01, 0x28, 0x4E, 0xD1, 0x1D, 0x4A, 0x20, 0x79
	.byte 0x90, 0x70, 0x60, 0x79, 0xD0, 0x70, 0x21, 0x79, 0x88, 0x00, 0x40, 0x18, 0x61, 0x79, 0x40, 0x18
	.byte 0x80, 0x00, 0x40, 0x19, 0x00, 0x68, 0x00, 0x88, 0x10, 0x80, 0x0D, 0xF0, 0xAF, 0xF8, 0x01, 0x28
	.byte 0x03, 0xD1, 0x15, 0x48, 0x00, 0x78, 0x00, 0x28, 0x2A, 0xD0, 0xA1, 0x78, 0x88, 0x00, 0x40, 0x18
	.byte 0xE1, 0x78, 0x40, 0x18, 0x80, 0x00, 0x40, 0x19, 0x00, 0x68, 0xF4, 0xF7, 0xE5, 0xFE, 0x21, 0x79
	.byte 0x88, 0x00, 0x40, 0x18, 0x64, 0x79, 0x00, 0x19, 0x80, 0x00, 0x40, 0x19, 0x00, 0x68, 0x00, 0x21
	.byte 0xF9, 0xF7, 0xC2, 0xFE, 0x08, 0x48, 0x00, 0x78, 0x00, 0x28, 0x25, 0xD1, 0x07, 0x49, 0xA3, 0x20
	.byte 0x80, 0x00, 0x08, 0x80, 0xD1, 0xF7, 0x7A, 0xFC, 0x1E, 0xE0, 0x00, 0x00, 0xD0, 0x3F, 0x02, 0x02
	.byte 0x60, 0x42, 0x02, 0x02, 0xA0, 0x45, 0x02, 0x02, 0x08, 0x1C, 0x02, 0x02, 0x10, 0x1C, 0x02, 0x02
	.byte 0xA0, 0x78, 0x81, 0x00, 0x09, 0x18, 0xE4, 0x78, 0x09, 0x19, 0x89, 0x00, 0x49, 0x19, 0x08, 0x68
	.byte 0xF4, 0xF7, 0xC4, 0xFE, 0x0C, 0xF0, 0xF2, 0xFD, 0x06, 0xE0, 0x05, 0x48, 0x00, 0x78, 0x00, 0x28
	.byte 0x02, 0xD1, 0x39, 0x20, 0xE9, 0xF7, 0xAC, 0xFC, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x08, 0x1C, 0x02, 0x02

	THUMB_FUNC_START sub_804B614
sub_804B614: @ 0x0804B614
	push {r4, r5, lr}
	ldr r5, _0804B6A0
	ldr r4, _0804B6A4
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055AB4
	cmp r0, #1
	bne _0804B6D2
	ldr r2, _0804B6A8
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804B662
	ldr r0, _0804B6AC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B6B8
_0804B662:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804B6AC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B6E0
	ldr r1, _0804B6B0
	ldr r0, _0804B6B4
	strh r0, [r1]
	bl sub_801CEBC
	b _0804B6E0
	.align 2, 0
_0804B6A0: .4byte gBoard
_0804B6A4: .4byte 0x02024260
_0804B6A8: .4byte 0x020245A0
_0804B6AC: .4byte gUnk_02021C08
_0804B6B0: .4byte gUnk_02021C10
_0804B6B4: .4byte 0x0000028E
_0804B6B8:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804B6E0
_0804B6D2:
	ldr r0, _0804B6E8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B6E0
	movs r0, #0x39
	bl sub_8034F60
_0804B6E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B6E8: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804B6EC
sub_804B6EC: @ 0x0804B6EC
	push {r4, r5, lr}
	ldr r5, _0804B778
	ldr r4, _0804B77C
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055AE4
	cmp r0, #1
	bne _0804B7AA
	ldr r2, _0804B780
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804B73A
	ldr r0, _0804B784
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B790
_0804B73A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804B784
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B7B8
	ldr r1, _0804B788
	ldr r0, _0804B78C
	strh r0, [r1]
	bl sub_801CEBC
	b _0804B7B8
	.align 2, 0
_0804B778: .4byte gBoard
_0804B77C: .4byte 0x02024260
_0804B780: .4byte 0x020245A0
_0804B784: .4byte gUnk_02021C08
_0804B788: .4byte gUnk_02021C10
_0804B78C: .4byte 0x0000028B
_0804B790:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804B7B8
_0804B7AA:
	ldr r0, _0804B7C0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B7B8
	movs r0, #0x39
	bl sub_8034F60
_0804B7B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B7C0: .4byte gUnk_02021C08

THUMB_FUNC_START sub_804B7C4
sub_804B7C4: @ 0x0804B7C4
	push {r4, r5, lr}
	ldr r5, _0804B854
	ldr r4, _0804B858
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055B14
	cmp r0, #1
	bne _0804B882
	ldr r2, _0804B85C
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804B812
	ldr r0, _0804B860
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B868
_0804B812:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804B860
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B890
	ldr r1, _0804B864
	movs r0, #0xa7
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
	b _0804B890
	.align 2, 0
_0804B854: .4byte gBoard
_0804B858: .4byte 0x02024260
_0804B85C: .4byte 0x020245A0
_0804B860: .4byte gUnk_02021C08
_0804B864: .4byte gUnk_02021C10
_0804B868:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804B890
_0804B882:
	ldr r0, _0804B898
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B890
	movs r0, #0x39
	bl sub_8034F60
_0804B890:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B898: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804B89C
sub_804B89C: @ 0x0804B89C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r6, #0
	ldr r0, _0804B934
	mov sb, r0
	ldr r5, _0804B938
	ldr r1, _0804B93C
	mov r8, r1
	ldr r7, _0804B940
_0804B8B2:
	lsls r0, r6, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804B8F2
	bl IsGodCard
	cmp r0, #1
	beq _0804B8F2
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r5]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r0, _0804B944
	ldrh r0, [r0, #0x12]
	cmp r0, r7
	bls _0804B8F2
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804B8F2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0804B8B2
	ldr r3, _0804B948
	ldr r2, _0804B94C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804B950
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B928
	ldr r1, _0804B954
	ldr r0, _0804B958
	strh r0, [r1]
	bl sub_801CEBC
_0804B928:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B934: .4byte gBoard+0x14
_0804B938: .4byte gUnk2021AC0
_0804B93C: .4byte gDuel+0xF0
_0804B940: .4byte 0x000005DB
_0804B944: .4byte gCardInfo
_0804B948: .4byte gBoard
_0804B94C: .4byte 0x02024260
_0804B950: .4byte gUnk_02021C08
_0804B954: .4byte gUnk_02021C10
_0804B958: .4byte 0x00000295

	THUMB_FUNC_START sub_804B95C
sub_804B95C: @ 0x0804B95C
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804B9B8
_0804B962:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804B97A
	adds r0, r1, #0
	bl sub_804037C
	ldr r0, [r4]
	bl sub_804037C
_0804B97A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804B962
	ldr r3, _0804B9BC
	ldr r2, _0804B9C0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804B9C4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B9B0
	ldr r1, _0804B9C8
	ldr r0, _0804B9CC
	strh r0, [r1]
	bl sub_801CEBC
_0804B9B0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B9B8: .4byte gBoard+0x14
_0804B9BC: .4byte gBoard
_0804B9C0: .4byte 0x02024260
_0804B9C4: .4byte gUnk_02021C08
_0804B9C8: .4byte gUnk_02021C10
_0804B9CC: .4byte 0x0000029D

	THUMB_FUNC_START sub_804B9D0
sub_804B9D0: @ 0x0804B9D0
	push {r4, r5, r6, lr}
	ldr r5, _0804BA44
	ldr r6, _0804BA48
	adds r4, r6, #0
	adds r4, #0x78
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BA3C
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BA4C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x7a
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BA50
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BA3C
	ldr r0, _0804BA54
	movs r1, #0xad
	lsls r1, r1, #2
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BA3C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BA44: .4byte gBoard+0x28
_0804BA48: .4byte 0x08E00FA8
_0804BA4C: .4byte 0x02024260
_0804BA50: .4byte gUnk_02021C08
_0804BA54: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804BA58
sub_804BA58: @ 0x0804BA58
	push {r4, r5, r6, lr}
	ldr r5, _0804BAC8
	ldr r6, _0804BACC
	adds r4, r6, #0
	adds r4, #0x80
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BAC2
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BAD0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x82
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BAD4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BAC2
	ldr r0, _0804BAD8
	ldr r1, _0804BADC
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BAC2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BAC8: .4byte gBoard+0x28
_0804BACC: .4byte 0x08E00FA8
_0804BAD0: .4byte 0x02024260
_0804BAD4: .4byte gUnk_02021C08
_0804BAD8: .4byte gUnk_02021C10
_0804BADC: .4byte 0x000002B5

	THUMB_FUNC_START sub_804BAE0
sub_804BAE0: @ 0x0804BAE0
	push {r4, r5, r6, lr}
	ldr r5, _0804BB50
	ldr r6, _0804BB54
	adds r4, r6, #0
	adds r4, #0x88
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BB4A
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BB58
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x8a
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BB5C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BB4A
	ldr r0, _0804BB60
	ldr r1, _0804BB64
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BB4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BB50: .4byte gBoard+0x28
_0804BB54: .4byte 0x08E00FA8
_0804BB58: .4byte 0x02024260
_0804BB5C: .4byte gUnk_02021C08
_0804BB60: .4byte gUnk_02021C10
_0804BB64: .4byte 0x000002B6

	THUMB_FUNC_START sub_804BB68
sub_804BB68: @ 0x0804BB68
	push {r4, r5, r6, lr}
	ldr r5, _0804BBD8
	ldr r6, _0804BBDC
	adds r4, r6, #0
	adds r4, #0x90
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BBD2
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BBE0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x92
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BBE4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BBD2
	ldr r0, _0804BBE8
	ldr r1, _0804BBEC
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BBD2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BBD8: .4byte gBoard+0x28
_0804BBDC: .4byte 0x08E00FA8
_0804BBE0: .4byte 0x02024260
_0804BBE4: .4byte gUnk_02021C08
_0804BBE8: .4byte gUnk_02021C10
_0804BBEC: .4byte 0x000002B7

	THUMB_FUNC_START sub_804BBF0
sub_804BBF0: @ 0x0804BBF0
	push {r4, r5, r6, lr}
	ldr r5, _0804BC64
	ldr r6, _0804BC68
	adds r4, r6, #0
	adds r4, #0x98
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BC5C
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BC6C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x9a
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BC70
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BC5C
	ldr r0, _0804BC74
	movs r1, #0xae
	lsls r1, r1, #2
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BC5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BC64: .4byte gBoard+0x28
_0804BC68: .4byte 0x08E00FA8
_0804BC6C: .4byte 0x02024260
_0804BC70: .4byte gUnk_02021C08
_0804BC74: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804BC78
sub_804BC78: @ 0x0804BC78
	push {r4, r5, r6, lr}
	ldr r5, _0804BCE8
	ldr r6, _0804BCEC
	adds r4, r6, #0
	adds r4, #0xa0
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BCE2
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BCF0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0xa2
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BCF4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BCE2
	ldr r0, _0804BCF8
	ldr r1, _0804BCFC
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BCE2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BCE8: .4byte gBoard+0x28
_0804BCEC: .4byte 0x08E00FA8
_0804BCF0: .4byte 0x02024260
_0804BCF4: .4byte gUnk_02021C08
_0804BCF8: .4byte gUnk_02021C10
_0804BCFC: .4byte 0x000002B9

	THUMB_FUNC_START sub_804BD00
sub_804BD00: @ 0x0804BD00
	push {r4, r5, r6, lr}
	ldr r5, _0804BD70
	ldr r6, _0804BD74
	adds r4, r6, #0
	adds r4, #0xa8
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BD6A
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BD78
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0xaa
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BD7C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BD6A
	ldr r0, _0804BD80
	ldr r1, _0804BD84
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BD6A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BD70: .4byte gBoard+0x28
_0804BD74: .4byte 0x08E00FA8
_0804BD78: .4byte 0x02024260
_0804BD7C: .4byte gUnk_02021C08
_0804BD80: .4byte gUnk_02021C10
_0804BD84: .4byte 0x000002BA

	THUMB_FUNC_START sub_804BD88
sub_804BD88: @ 0x0804BD88
	push {r4, r5, r6, lr}
	ldr r5, _0804BDF8
	ldr r6, _0804BDFC
	adds r4, r6, #0
	adds r4, #0xb0
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BDF2
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BE00
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0xb2
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BE04
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BDF2
	ldr r0, _0804BE08
	ldr r1, _0804BE0C
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BDF2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BDF8: .4byte gBoard+0x28
_0804BDFC: .4byte 0x08E00FA8
_0804BE00: .4byte 0x02024260
_0804BE04: .4byte gUnk_02021C08
_0804BE08: .4byte gUnk_02021C10
_0804BE0C: .4byte 0x000002BB

	THUMB_FUNC_START sub_804BE10
sub_804BE10: @ 0x0804BE10
	push {r4, r5, r6, lr}
	ldr r5, _0804BE84
	ldr r6, _0804BE88
	adds r4, r6, #0
	adds r4, #0xb8
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BE7C
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BE8C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0xba
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BE90
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BE7C
	ldr r0, _0804BE94
	movs r1, #0xaf
	lsls r1, r1, #2
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BE7C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BE84: .4byte gBoard+0x28
_0804BE88: .4byte 0x08E00FA8
_0804BE8C: .4byte 0x02024260
_0804BE90: .4byte gUnk_02021C08
_0804BE94: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804BE98
sub_804BE98: @ 0x0804BE98
	push {r4, r5, r6, lr}
	ldr r5, _0804BF00
	ldr r6, _0804BF04
	ldrh r1, [r6, #0x30]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BEFA
	ldrh r1, [r6, #0x30]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BF08
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	ldrh r1, [r6, #0x32]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BF0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BEFA
	ldr r0, _0804BF10
	ldr r1, _0804BF14
	strh r1, [r0]
	ldrh r1, [r6, #0x32]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BEFA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BF00: .4byte gBoard+0x28
_0804BF04: .4byte 0x08E00FA8
_0804BF08: .4byte 0x02024260
_0804BF0C: .4byte gUnk_02021C08
_0804BF10: .4byte gUnk_02021C10
_0804BF14: .4byte 0x00000299

	THUMB_FUNC_START sub_804BF18
sub_804BF18: @ 0x0804BF18
	push {r4, r5, r6, lr}
	ldr r5, _0804BF80
	ldr r6, _0804BF84
	ldrh r1, [r6, #0x38]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804BF7A
	ldrh r1, [r6, #0x38]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804BF88
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	ldrh r1, [r6, #0x3a]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804BF8C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BF7A
	ldr r0, _0804BF90
	ldr r1, _0804BF94
	strh r1, [r0]
	ldrh r1, [r6, #0x3a]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804BF7A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BF80: .4byte gBoard+0x28
_0804BF84: .4byte 0x08E00FA8
_0804BF88: .4byte 0x02024260
_0804BF8C: .4byte gUnk_02021C08
_0804BF90: .4byte gUnk_02021C10
_0804BF94: .4byte 0x0000029A

	THUMB_FUNC_START sub_804BF98
sub_804BF98: @ 0x0804BF98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _0804C05C
	ldr r6, _0804C060
	adds r4, r6, #0
	adds r4, #0x40
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804C052
	adds r7, r6, #0
	adds r7, #0x44
	ldrh r1, [r7]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804C052
	movs r0, #0x46
	adds r0, r0, r6
	mov r8, r0
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804C052
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804C064
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0x42
	ldrh r1, [r4]
	bl sub_804D600
	ldrh r1, [r7]
	adds r0, r5, #0
	bl sub_8043694
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_80402BC
	mov r0, r8
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_8043694
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_80402BC
	bl ResetNumTributes
	ldr r0, _0804C068
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C052
	ldr r0, _0804C06C
	ldr r1, _0804C070
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804C052:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C05C: .4byte gBoard+0x28
_0804C060: .4byte 0x08E00FA8
_0804C064: .4byte 0x02024260
_0804C068: .4byte gUnk_02021C08
_0804C06C: .4byte gUnk_02021C10
_0804C070: .4byte 0x0000029B

	THUMB_FUNC_START sub_804C074
sub_804C074: @ 0x0804C074
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C0E0
_0804C07A:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #1
	beq _0804C0A2
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C0E4
	ldrb r0, [r0, #0x16]
	cmp r0, #4
	bne _0804C0A2
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C0A2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C07A
	ldr r3, _0804C0E8
	ldr r2, _0804C0EC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C0F0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C0D8
	ldr r1, _0804C0F4
	ldr r0, _0804C0F8
	strh r0, [r1]
	bl sub_801CEBC
_0804C0D8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C0E0: .4byte gBoard+0x14
_0804C0E4: .4byte gCardInfo
_0804C0E8: .4byte gBoard
_0804C0EC: .4byte 0x02024260
_0804C0F0: .4byte gUnk_02021C08
_0804C0F4: .4byte gUnk_02021C10
_0804C0F8: .4byte 0x0000028D

	THUMB_FUNC_START sub_804C0FC
sub_804C0FC: @ 0x0804C0FC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C15C
_0804C102:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804C11E
	adds r0, r1, #0
	bl sub_8040688
	cmp r0, #0
	bge _0804C11E
	ldr r0, [r4]
	bl sub_8040360
_0804C11E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C102
	ldr r3, _0804C160
	ldr r2, _0804C164
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C168
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C154
	ldr r1, _0804C16C
	ldr r0, _0804C170
	strh r0, [r1]
	bl sub_801CEBC
_0804C154:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C15C: .4byte gBoard+0x28
_0804C160: .4byte gBoard
_0804C164: .4byte 0x02024260
_0804C168: .4byte gUnk_02021C08
_0804C16C: .4byte gUnk_02021C10
_0804C170: .4byte 0x0000028F

	THUMB_FUNC_START sub_804C174
sub_804C174: @ 0x0804C174
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C1D4
_0804C17A:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C1D8
	ldrb r0, [r0, #0x16]
	cmp r0, #3
	bne _0804C196
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C196:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C17A
	ldr r3, _0804C1DC
	ldr r2, _0804C1E0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C1E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C1CE
	ldr r1, _0804C1E8
	movs r0, #0xa4
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_0804C1CE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C1D4: .4byte gBoard+0x14
_0804C1D8: .4byte gCardInfo
_0804C1DC: .4byte gBoard
_0804C1E0: .4byte 0x02024260
_0804C1E4: .4byte gUnk_02021C08
_0804C1E8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804C1EC
sub_804C1EC: @ 0x0804C1EC
	push {r4, r5, lr}
	ldr r5, _0804C278
	ldr r4, _0804C27C
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055B44
	cmp r0, #1
	bne _0804C2AA
	ldr r2, _0804C280
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804C23A
	ldr r0, _0804C284
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804C290
_0804C23A:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C284
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C2B8
	ldr r1, _0804C288
	ldr r0, _0804C28C
	strh r0, [r1]
	bl sub_801CEBC
	b _0804C2B8
	.align 2, 0
_0804C278: .4byte gBoard
_0804C27C: .4byte 0x02024260
_0804C280: .4byte 0x020245A0
_0804C284: .4byte gUnk_02021C08
_0804C288: .4byte gUnk_02021C10
_0804C28C: .4byte 0x00000291
_0804C290:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804C2B8
_0804C2AA:
	ldr r0, _0804C2C0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C2B8
	movs r0, #0x39
	bl sub_8034F60
_0804C2B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804C2C0: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804C2C4
sub_804C2C4: @ 0x0804C2C4
	push {r4, lr}
	ldr r4, _0804C35C
	ldr r3, _0804C360
	ldrb r1, [r3, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r3, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldrh r1, [r2]
	ldr r0, _0804C364
	cmp r1, r0
	bne _0804C30E
	adds r0, #1
	strh r0, [r2]
	ldrb r1, [r3, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r3, [r3, #5]
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C368
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C30E
	ldr r1, _0804C36C
	ldr r0, _0804C370
	strh r0, [r1]
	bl sub_801CEBC
_0804C30E:
	ldr r3, _0804C35C
	ldr r2, _0804C360
	ldrb r0, [r2, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r2, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r1, [r1]
	ldrh r0, [r1]
	cmp r0, #0x52
	bne _0804C354
	ldr r0, _0804C374
	strh r0, [r1]
	ldrb r1, [r2, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #5]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C368
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C354
	ldr r1, _0804C36C
	ldr r0, _0804C370
	strh r0, [r1]
	bl sub_801CEBC
_0804C354:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C35C: .4byte gBoard
_0804C360: .4byte 0x02024260
_0804C364: .4byte 0x00000187
_0804C368: .4byte gUnk_02021C08
_0804C36C: .4byte gUnk_02021C10
_0804C370: .4byte 0x00000292
_0804C374: .4byte 0x000002E6

	THUMB_FUNC_START sub_804C378
sub_804C378: @ 0x0804C378
	push {r4, r5, lr}
	ldr r5, _0804C404
	ldr r4, _0804C408
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055B74
	cmp r0, #1
	bne _0804C436
	ldr r2, _0804C40C
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804C3C6
	ldr r0, _0804C410
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804C41C
_0804C3C6:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C410
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C444
	ldr r1, _0804C414
	ldr r0, _0804C418
	strh r0, [r1]
	bl sub_801CEBC
	b _0804C444
	.align 2, 0
_0804C404: .4byte gBoard
_0804C408: .4byte 0x02024260
_0804C40C: .4byte 0x020245A0
_0804C410: .4byte gUnk_02021C08
_0804C414: .4byte gUnk_02021C10
_0804C418: .4byte 0x00000293
_0804C41C:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804C444
_0804C436:
	ldr r0, _0804C44C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C444
	movs r0, #0x39
	bl sub_8034F60
_0804C444:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804C44C: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804C450
sub_804C450: @ 0x0804C450
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C4BC
_0804C456:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #1
	beq _0804C47E
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C4C0
	ldrb r0, [r0, #0x16]
	cmp r0, #0xf
	bne _0804C47E
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C47E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C456
	ldr r3, _0804C4C4
	ldr r2, _0804C4C8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C4CC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C4B6
	ldr r1, _0804C4D0
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_0804C4B6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C4BC: .4byte gBoard+0x14
_0804C4C0: .4byte gCardInfo
_0804C4C4: .4byte gBoard
_0804C4C8: .4byte 0x02024260
_0804C4CC: .4byte gUnk_02021C08
_0804C4D0: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804C4D4
sub_804C4D4: @ 0x0804C4D4
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C534
_0804C4DA:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C538
	ldrb r0, [r0, #0x16]
	cmp r0, #0xa
	bne _0804C4F6
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C4F6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C4DA
	ldr r3, _0804C53C
	ldr r2, _0804C540
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C544
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C52C
	ldr r1, _0804C548
	ldr r0, _0804C54C
	strh r0, [r1]
	bl sub_801CEBC
_0804C52C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C534: .4byte gBoard+0x14
_0804C538: .4byte gCardInfo
_0804C53C: .4byte gBoard
_0804C540: .4byte 0x02024260
_0804C544: .4byte gUnk_02021C08
_0804C548: .4byte gUnk_02021C10
_0804C54C: .4byte 0x00000296

	THUMB_FUNC_START sub_804C550
sub_804C550: @ 0x0804C550
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C5B0
_0804C556:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C5B4
	ldrb r0, [r0, #0x16]
	cmp r0, #0x13
	bne _0804C572
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C572:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C556
	ldr r3, _0804C5B8
	ldr r2, _0804C5BC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C5C0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C5A8
	ldr r1, _0804C5C4
	ldr r0, _0804C5C8
	strh r0, [r1]
	bl sub_801CEBC
_0804C5A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C5B0: .4byte gBoard+0x14
_0804C5B4: .4byte gCardInfo
_0804C5B8: .4byte gBoard
_0804C5BC: .4byte 0x02024260
_0804C5C0: .4byte gUnk_02021C08
_0804C5C4: .4byte gUnk_02021C10
_0804C5C8: .4byte 0x00000297

	THUMB_FUNC_START sub_804C5CC
sub_804C5CC: @ 0x0804C5CC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C62C
_0804C5D2:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C630
	ldrb r0, [r0, #0x16]
	cmp r0, #0xd
	bne _0804C5EE
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C5EE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C5D2
	ldr r3, _0804C634
	ldr r2, _0804C638
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C63C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C626
	ldr r1, _0804C640
	movs r0, #0xa6
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_0804C626:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C62C: .4byte gBoard+0x14
_0804C630: .4byte gCardInfo
_0804C634: .4byte gBoard
_0804C638: .4byte 0x02024260
_0804C63C: .4byte gUnk_02021C08
_0804C640: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804C644
sub_804C644: @ 0x0804C644
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r6, _0804C69C
	ldr r5, _0804C6A0
	ldr r4, _0804C6A4
	movs r3, #0x10
_0804C650:
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804C662
	ldrb r0, [r1, #5]
	orrs r0, r3
	strb r0, [r1, #5]
_0804C662:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0804C650
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r5, [r5, #3]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C6A8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C694
	ldr r1, _0804C6AC
	ldr r0, _0804C6B0
	strh r0, [r1]
	bl sub_801CEBC
_0804C694:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C69C: .4byte gBoard
_0804C6A0: .4byte 0x02024260
_0804C6A4: .4byte gDuel+0x204
_0804C6A8: .4byte gUnk_02021C08
_0804C6AC: .4byte gUnk_02021C10
_0804C6B0: .4byte 0x00000316

	THUMB_FUNC_START sub_804C6B4
sub_804C6B4: @ 0x0804C6B4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r5, _0804C6D4
	ldr r4, _0804C6D8
	adds r0, r4, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804C6DC
	movs r0, #0x1a
	b _0804C6EE
	.align 2, 0
_0804C6D4: .4byte gBoard+0x28
_0804C6D8: .4byte 0x08E00FA8
_0804C6DC:
	adds r0, r4, #0
	adds r0, #0xc0
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804C74E
	movs r0, #0x18
_0804C6EE:
	ldr r6, _0804C758
	ldr r5, _0804C75C
	lsls r0, r0, #3
	mov r8, r0
	adds r0, r0, r5
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r6, #0
	subs r3, #0x28
	ldr r2, _0804C760
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r0, [r4]
	adds r5, #2
	mov r1, r8
	adds r4, r1, r5
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804C764
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C74E
	ldr r0, _0804C768
	ldr r1, _0804C76C
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804C74E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C758: .4byte gBoard+0x28
_0804C75C: .4byte 0x08E00FA8
_0804C760: .4byte 0x02024260
_0804C764: .4byte gUnk_02021C08
_0804C768: .4byte gUnk_02021C10
_0804C76C: .4byte 0x000002D2

	THUMB_FUNC_START sub_804C770
sub_804C770: @ 0x0804C770
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C7D0
_0804C776:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C7D4
	ldrb r0, [r0, #0x16]
	cmp r0, #2
	bne _0804C792
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C792:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C776
	ldr r3, _0804C7D8
	ldr r2, _0804C7DC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C7E0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C7C8
	ldr r1, _0804C7E4
	ldr r0, _0804C7E8
	strh r0, [r1]
	bl sub_801CEBC
_0804C7C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C7D0: .4byte gBoard+0x14
_0804C7D4: .4byte gCardInfo
_0804C7D8: .4byte gBoard
_0804C7DC: .4byte 0x02024260
_0804C7E0: .4byte gUnk_02021C08
_0804C7E4: .4byte gUnk_02021C10
_0804C7E8: .4byte 0x00000313

	THUMB_FUNC_START sub_804C7EC
sub_804C7EC: @ 0x0804C7EC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0804C84C
_0804C7F2:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0804C850
	ldrb r0, [r0, #0x16]
	cmp r0, #8
	bne _0804C80E
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804C80E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C7F2
	ldr r3, _0804C854
	ldr r2, _0804C858
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C85C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C844
	ldr r1, _0804C860
	ldr r0, _0804C864
	strh r0, [r1]
	bl sub_801CEBC
_0804C844:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C84C: .4byte gBoard+0x14
_0804C850: .4byte gCardInfo
_0804C854: .4byte gBoard
_0804C858: .4byte 0x02024260
_0804C85C: .4byte gUnk_02021C08
_0804C860: .4byte gUnk_02021C10
_0804C864: .4byte 0x00000312

	THUMB_FUNC_START sub_804C868
sub_804C868: @ 0x0804C868
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _0804C8E4
	adds r0, r4, #0
	movs r1, #0x3a
	bl sub_80433E4
	cmp r0, #0
	beq _0804C910
	movs r5, #0
	mov r8, r4
	movs r7, #0
	movs r0, #3
	rsbs r0, r0, #0
	adds r6, r0, #0
_0804C888:
	lsls r0, r5, #2
	mov r1, r8
	adds r4, r0, r1
	ldr r2, [r4]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0804C8E8
	movs r0, #0x3a
	strh r0, [r2]
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #5]
	ands r0, r6
	strb r0, [r1, #5]
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r0, [r4]
	strb r7, [r0, #4]
	ldr r0, [r4]
	bl sub_8040360
	ldr r0, [r4]
	bl sub_80403E8
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r3, #0x21
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #5]
	b _0804C906
	.align 2, 0
_0804C8E4: .4byte gBoard+0x28
_0804C8E8:
	cmp r0, #0x3a
	bne _0804C906
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #5]
	ands r0, r6
	strb r0, [r1, #5]
_0804C906:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804C888
_0804C910:
	ldr r3, _0804C948
	ldr r2, _0804C94C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804C950
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C93C
	ldr r1, _0804C954
	ldr r0, _0804C958
	strh r0, [r1]
	bl sub_801CEBC
_0804C93C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C948: .4byte gBoard
_0804C94C: .4byte 0x02024260
_0804C950: .4byte gUnk_02021C08
_0804C954: .4byte gUnk_02021C10
_0804C958: .4byte 0x00000311

	THUMB_FUNC_START sub_804C95C
sub_804C95C: @ 0x0804C95C
	push {r4, r5, r6, r7, lr}
	ldr r6, _0804CA34
	adds r0, r6, #0
	bl sub_8043528
	cmp r0, #0
	beq _0804C9FE
	adds r7, r6, #0
	subs r7, #0x14
	adds r0, r7, #0
	bl sub_8043538
	cmp r0, #5
	beq _0804C9FE
	adds r0, r6, #0
	bl sub_80435C8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r7, #0
	bl sub_8042FC0
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r1, [r4]
	lsrs r5, r5, #0x16
	adds r5, r5, r7
	ldr r0, [r5]
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r3, [r4]
	ldr r0, [r5]
	ldrb r0, [r0, #5]
	movs r1, #4
	ands r1, r0
	ldrb r2, [r3, #5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #4]
	ldr r6, [r4]
	ldr r0, [r5]
	bl sub_8040688
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8040684
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r0, [r5]
	bl sub_80402BC
_0804C9FE:
	ldr r3, _0804CA38
	ldr r2, _0804CA3C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804CA40
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CA2C
	ldr r1, _0804CA44
	movs r0, #0xc4
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_0804CA2C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CA34: .4byte gBoard+0x28
_0804CA38: .4byte gBoard
_0804CA3C: .4byte 0x02024260
_0804CA40: .4byte gUnk_02021C08
_0804CA44: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804CA48
sub_804CA48: @ 0x0804CA48
	push {r4, r5, r6, lr}
	ldr r5, _0804CAB8
	ldr r6, _0804CABC
	adds r4, r6, #0
	adds r4, #0xc8
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_804366C
	cmp r0, #1
	bne _0804CAB2
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_8043694
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r3, r5, #0
	subs r3, #0x28
	ldr r2, _0804CAC0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	adds r4, r6, #0
	adds r4, #0xca
	ldrh r1, [r4]
	bl sub_804D600
	bl ResetNumTributes
	ldr r0, _0804CAC4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CAB2
	ldr r0, _0804CAC8
	ldr r1, _0804CACC
	strh r1, [r0]
	ldrh r1, [r4]
	strh r1, [r0, #2]
	bl sub_801CEBC
_0804CAB2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804CAB8: .4byte gBoard+0x28
_0804CABC: .4byte 0x08E00FA8
_0804CAC0: .4byte 0x02024260
_0804CAC4: .4byte gUnk_02021C08
_0804CAC8: .4byte gUnk_02021C10
_0804CACC: .4byte 0x0000030F

	THUMB_FUNC_START sub_804CAD0
sub_804CAD0: @ 0x0804CAD0
	push {r4, r5, r6, r7, lr}
	ldr r6, _0804CBA4
	adds r0, r6, #0
	bl sub_8043528
	cmp r0, #0
	beq _0804CB70
	adds r7, r6, #0
	subs r7, #0x14
	adds r0, r7, #0
	bl sub_8043538
	cmp r0, #5
	beq _0804CB70
	adds r0, r6, #0
	bl sub_80435C8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r7, #0
	bl sub_8042FC0
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsls r4, r4, #2
	adds r4, r4, r6
	ldr r1, [r4]
	lsrs r5, r5, #0x16
	adds r5, r5, r7
	ldr r0, [r5]
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r3, [r4]
	ldr r0, [r5]
	ldrb r0, [r0, #5]
	movs r1, #4
	ands r1, r0
	ldrb r2, [r3, #5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #4]
	ldr r6, [r4]
	ldr r0, [r5]
	bl sub_8040688
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8040684
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r0, [r5]
	bl sub_80402BC
_0804CB70:
	ldr r3, _0804CBA8
	ldr r2, _0804CBAC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804CBB0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CB9C
	ldr r1, _0804CBB4
	ldr r0, _0804CBB8
	strh r0, [r1]
	bl sub_801CEBC
_0804CB9C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CBA4: .4byte gBoard+0x28
_0804CBA8: .4byte gBoard
_0804CBAC: .4byte 0x02024260
_0804CBB0: .4byte gUnk_02021C08
_0804CBB4: .4byte gUnk_02021C10
_0804CBB8: .4byte 0x0000030D

	THUMB_FUNC_START sub_804CBBC
sub_804CBBC: @ 0x0804CBBC
	push {r4, r5, lr}
	ldr r5, _0804CC68
	adds r0, r5, #0
	bl sub_8043528
	cmp r0, #0
	beq _0804CC36
	adds r0, r5, #0
	bl sub_80435C8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #1
	bl sub_804535C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0804CC36
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	strh r1, [r0]
	ldr r2, [r4]
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #4]
	ldr r0, [r4]
	bl sub_8040360
	ldr r0, [r4]
	bl sub_80403E8
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
_0804CC36:
	ldr r2, _0804CC6C
	ldr r4, _0804CC70
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804CC74
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CC62
	ldr r1, _0804CC78
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
_0804CC62:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804CC68: .4byte gBoard+0x28
_0804CC6C: .4byte gBoard
_0804CC70: .4byte 0x02024260
_0804CC74: .4byte gUnk_02021C08
_0804CC78: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804CC7C
sub_804CC7C: @ 0x0804CC7C
	push {r4, r5, lr}
	ldr r5, _0804CD08
	ldr r4, _0804CD0C
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055BA4
	cmp r0, #1
	bne _0804CD36
	ldr r2, _0804CD10
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804CCCA
	ldr r0, _0804CD14
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804CD1C
_0804CCCA:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804CD14
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CD44
	ldr r1, _0804CD18
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
	b _0804CD44
	.align 2, 0
_0804CD08: .4byte gBoard
_0804CD0C: .4byte 0x02024260
_0804CD10: .4byte 0x020245A0
_0804CD14: .4byte gUnk_02021C08
_0804CD18: .4byte gUnk_02021C10
_0804CD1C:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804CD44
_0804CD36:
	ldr r0, _0804CD4C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CD44
	movs r0, #0x39
	bl sub_8034F60
_0804CD44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804CD4C: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804CD50
sub_804CD50: @ 0x0804CD50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r0, _0804CDF0
	mov r8, r0
_0804CD5C:
	movs r5, #0
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r7, r0, #2
_0804CD64:
	lsls r0, r5, #2
	adds r0, r0, r7
	mov r1, r8
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _0804CD80
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804CD80:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804CD64
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0804CD5C
	movs r6, #2
	ldr r0, _0804CDF0
	mov r8, r0
_0804CD9A:
	movs r5, #0
	lsls r0, r6, #2
	adds r7, r6, #1
	adds r0, r0, r6
	lsls r6, r0, #2
_0804CDA4:
	lsls r0, r5, #2
	adds r0, r0, r6
	mov r1, r8
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _0804CDC0
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
_0804CDC0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804CDA4
	lsls r0, r7, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0804CD9A
	ldr r0, _0804CDF4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CDE6
	ldr r0, _0804CDF8
	ldr r1, _0804CDFC
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_0804CDE6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CDF0: .4byte gBoard
_0804CDF4: .4byte gUnk_02021C08
_0804CDF8: .4byte gUnk_02021C10
_0804CDFC: .4byte 0x02024260

	THUMB_FUNC_START sub_804CE00
sub_804CE00: @ 0x0804CE00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r0, _0804CEE4
	mov r8, r0
_0804CE0C:
	movs r5, #0
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r7, r0, #2
_0804CE14:
	lsls r0, r5, #2
	adds r0, r0, r7
	mov r1, r8
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _0804CE30
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804CE30:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804CE14
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0804CE0C
	movs r6, #2
	ldr r0, _0804CEE4
	mov r8, r0
_0804CE4A:
	movs r5, #0
	lsls r0, r6, #2
	adds r7, r6, #1
	adds r0, r0, r6
	lsls r6, r0, #2
_0804CE54:
	lsls r0, r5, #2
	adds r0, r0, r6
	mov r1, r8
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _0804CE70
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
_0804CE70:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804CE54
	lsls r0, r7, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0804CE4A
	movs r5, #0
	ldr r7, _0804CEE8
	movs r0, #0x14
	adds r0, r0, r7
	mov r8, r0
_0804CE8C:
	lsls r6, r5, #2
	adds r4, r6, r7
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _0804CEA4
	ldr r0, [r4]
	movs r1, #0
	bl sub_8045338
_0804CEA4:
	mov r1, r8
	adds r4, r6, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #0
	bne _0804CEBC
	ldr r0, [r4]
	movs r1, #1
	bl sub_8045338
_0804CEBC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0804CE8C
	ldr r0, _0804CEEC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CEDA
	ldr r0, _0804CEF0
	ldr r1, _0804CEF4
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_0804CEDA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CEE4: .4byte gBoard
_0804CEE8: .4byte gDuel+0x1F0
_0804CEEC: .4byte gUnk_02021C08
_0804CEF0: .4byte gUnk_02021C10
_0804CEF4: .4byte 0x02024260

	THUMB_FUNC_START sub_804CEF8
sub_804CEF8: @ 0x0804CEF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r6, #0
	ldr r0, _0804CF88
	mov sb, r0
	ldr r5, _0804CF8C
	ldr r1, _0804CF90
	mov r8, r1
	ldr r7, _0804CF94
_0804CF0E:
	lsls r0, r6, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0804CF44
	strh r0, [r5]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_800B318
	ldr r0, _0804CF98
	ldrh r0, [r0, #0x12]
	cmp r0, r7
	bls _0804CF44
	ldr r0, [r4]
	ldrb r1, [r0, #5]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #5]
_0804CF44:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0804CF0E
	ldr r2, _0804CF9C
	ldr r4, _0804CFA0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804CFA4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CF7A
	ldr r1, _0804CFA8
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
_0804CF7A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CF88: .4byte gBoard+0x14
_0804CF8C: .4byte gUnk2021AC0
_0804CF90: .4byte gDuel+0xF0
_0804CF94: .4byte 0x000005DB
_0804CF98: .4byte gCardInfo
_0804CF9C: .4byte gBoard
_0804CFA0: .4byte 0x02024260
_0804CFA4: .4byte gUnk_02021C08
_0804CFA8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804CFAC
sub_804CFAC: @ 0x0804CFAC
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0804D020
_0804CFB2:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804CFC4
	adds r0, r1, #0
	bl sub_804034C
_0804CFC4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0804CFB2
	movs r4, #0
	ldr r5, _0804D024
_0804CFD2:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804CFE4
	adds r0, r1, #0
	bl sub_804034C
_0804CFE4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0804CFD2
	ldr r2, _0804D028
	ldr r4, _0804D02C
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D030
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D01A
	ldr r1, _0804D034
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
_0804D01A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804D020: .4byte gBoard+0x28
_0804D024: .4byte gBoard+0x3C
_0804D028: .4byte gBoard
_0804D02C: .4byte 0x02024260
_0804D030: .4byte gUnk_02021C08
_0804D034: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804D038
sub_804D038: @ 0x0804D038
	push {r4, r5, lr}
	ldr r5, _0804D0C4
	ldr r4, _0804D0C8
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_8055BD4
	cmp r0, #1
	bne _0804D0F2
	ldr r2, _0804D0CC
	ldrb r0, [r4, #4]
	strb r0, [r2, #2]
	ldrb r0, [r4, #5]
	strb r0, [r2, #3]
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_80586DC
	cmp r0, #1
	bne _0804D086
	ldr r0, _0804D0D0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804D0D8
_0804D086:
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_8040368
	ldrb r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #5]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D0D0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D100
	ldr r1, _0804D0D4
	movs r0, #0xc4
	strh r0, [r1]
	bl sub_801CEBC
	b _0804D100
	.align 2, 0
_0804D0C4: .4byte gBoard
_0804D0C8: .4byte 0x02024260
_0804D0CC: .4byte 0x020245A0
_0804D0D0: .4byte gUnk_02021C08
_0804D0D4: .4byte gUnk_02021C10
_0804D0D8:
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r4, [r4, #3]
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	bl sub_804037C
	bl sub_80581DC
	b _0804D100
_0804D0F2:
	ldr r0, _0804D108
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D100
	movs r0, #0x39
	bl sub_8034F60
_0804D100:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804D108: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_804D10C
sub_804D10C: @ 0x0804D10C
	push {lr}
	bl sub_801D1A8
	movs r0, #1
	bl sub_801D188
	ldr r0, _0804D134
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r1, _0804D138
	ldr r0, _0804D13C
	ldrb r0, [r0, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_805AAB8
	pop {r0}
	bx r0
	.align 2, 0
_0804D134: .4byte 0x02024260
_0804D138: .4byte 0x0810300C
_0804D13C: .4byte gCardInfo
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_804D150
sub_804D150: @ 0x0804D150
	push {r4, lr}
	ldr r0, _0804D198
	adds r4, r0, #0
	adds r4, #0xf0
	movs r0, #1
	strb r0, [r4]
	ldr r3, _0804D19C
	ldr r2, _0804D1A0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D1A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D190
	ldrb r0, [r4]
	bl sub_8041140
	ldr r1, _0804D1A8
	movs r0, #0xa5
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_0804D190:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D198: .4byte gDuel
_0804D19C: .4byte gBoard
_0804D1A0: .4byte 0x02024260
_0804D1A4: .4byte gUnk_02021C08
_0804D1A8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804D1AC
sub_804D1AC: @ 0x0804D1AC
	push {r4, lr}
	ldr r0, _0804D1F0
	adds r4, r0, #0
	adds r4, #0xf0
	movs r0, #2
	strb r0, [r4]
	ldr r3, _0804D1F4
	ldr r2, _0804D1F8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D1FC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D1EA
	ldrb r0, [r4]
	bl sub_8041140
	ldr r1, _0804D200
	ldr r0, _0804D204
	strh r0, [r1]
	bl sub_801CEBC
_0804D1EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D1F0: .4byte gDuel
_0804D1F4: .4byte gBoard
_0804D1F8: .4byte 0x02024260
_0804D1FC: .4byte gUnk_02021C08
_0804D200: .4byte gUnk_02021C10
_0804D204: .4byte 0x0000014B

	THUMB_FUNC_START sub_804D208
sub_804D208: @ 0x0804D208
	push {r4, lr}
	ldr r0, _0804D250
	adds r4, r0, #0
	adds r4, #0xf0
	movs r0, #3
	strb r0, [r4]
	ldr r3, _0804D254
	ldr r2, _0804D258
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D25C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D248
	ldrb r0, [r4]
	bl sub_8041140
	ldr r1, _0804D260
	movs r0, #0xa6
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_0804D248:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D250: .4byte gDuel
_0804D254: .4byte gBoard
_0804D258: .4byte 0x02024260
_0804D25C: .4byte gUnk_02021C08
_0804D260: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804D264
sub_804D264: @ 0x0804D264
	push {r4, lr}
	ldr r0, _0804D2A8
	adds r4, r0, #0
	adds r4, #0xf0
	movs r0, #4
	strb r0, [r4]
	ldr r3, _0804D2AC
	ldr r2, _0804D2B0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D2B4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D2A2
	ldrb r0, [r4]
	bl sub_8041140
	ldr r1, _0804D2B8
	ldr r0, _0804D2BC
	strh r0, [r1]
	bl sub_801CEBC
_0804D2A2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D2A8: .4byte gDuel
_0804D2AC: .4byte gBoard
_0804D2B0: .4byte 0x02024260
_0804D2B4: .4byte gUnk_02021C08
_0804D2B8: .4byte gUnk_02021C10
_0804D2BC: .4byte 0x0000014D

	THUMB_FUNC_START sub_804D2C0
sub_804D2C0: @ 0x0804D2C0
	push {r4, lr}
	ldr r0, _0804D308
	adds r4, r0, #0
	adds r4, #0xf0
	movs r0, #5
	strb r0, [r4]
	ldr r3, _0804D30C
	ldr r2, _0804D310
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D314
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D300
	ldrb r0, [r4]
	bl sub_8041140
	ldr r1, _0804D318
	movs r0, #0xa7
	lsls r0, r0, #1
	strh r0, [r1]
	bl sub_801CEBC
_0804D300:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D308: .4byte gDuel
_0804D30C: .4byte gBoard
_0804D310: .4byte 0x02024260
_0804D314: .4byte gUnk_02021C08
_0804D318: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_804D31C
sub_804D31C: @ 0x0804D31C
	push {r4, lr}
	ldr r0, _0804D360
	adds r4, r0, #0
	adds r4, #0xf0
	movs r0, #6
	strb r0, [r4]
	ldr r3, _0804D364
	ldr r2, _0804D368
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D36C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D35A
	ldrb r0, [r4]
	bl sub_8041140
	ldr r1, _0804D370
	ldr r0, _0804D374
	strh r0, [r1]
	bl sub_801CEBC
_0804D35A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D360: .4byte gDuel
_0804D364: .4byte gBoard
_0804D368: .4byte 0x02024260
_0804D36C: .4byte gUnk_02021C08
_0804D370: .4byte gUnk_02021C10
_0804D374: .4byte 0x0000014F
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x00, 0x24
	.byte 0x12, 0x4D, 0xA0, 0x00, 0x40, 0x19, 0x00, 0x68, 0x01, 0x21, 0xF7, 0xF7, 0xBD, 0xFF, 0x60, 0x1C
	.byte 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xF4, 0xD9, 0x0C, 0x4B, 0x0D, 0x4A, 0x91, 0x78, 0x88, 0x00
	.byte 0x40, 0x18, 0xD2, 0x78, 0x80, 0x18, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68, 0x00, 0x21, 0xF7, 0xF7
	.byte 0xAB, 0xFF, 0x08, 0x48, 0x00, 0x78, 0x00, 0x28, 0x05, 0xD1, 0x07, 0x49, 0xA8, 0x20, 0x80, 0x00
	.byte 0x08, 0x80, 0xCF, 0xF7, 0x63, 0xFD, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xD0, 0x3F, 0x02, 0x02
	.byte 0x60, 0x42, 0x02, 0x02, 0x08, 0x1C, 0x02, 0x02, 0x10, 0x1C, 0x02, 0x02

	THUMB_FUNC_START sub_804D40C
sub_804D40C: @ 0x0804D40C
	push {lr}
	bl GetCurrTurn
	bl sub_8043CE4
	bl GetCurrTurn
	bl sub_8043CE4
	ldr r3, _0804D450
	ldr r2, _0804D454
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D458
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D44A
	ldr r1, _0804D45C
	ldr r0, _0804D460
	strh r0, [r1]
	bl sub_801CEBC
_0804D44A:
	pop {r0}
	bx r0
	.align 2, 0
_0804D450: .4byte gBoard
_0804D454: .4byte 0x02024260
_0804D458: .4byte gUnk_02021C08
_0804D45C: .4byte gUnk_02021C10
_0804D460: .4byte 0x00000315

	THUMB_FUNC_START sub_804D464
sub_804D464: @ 0x0804D464
	push {r4, lr}
	ldr r0, _0804D488
	bl sub_8043528
	movs r1, #5
	subs r1, r1, r0
	movs r0, #0xc8
	muls r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl GetCurrTurn
	cmp r0, #0
	bne _0804D48C
	adds r0, r4, #0
	bl sub_803F9E4
	b _0804D492
	.align 2, 0
_0804D488: .4byte gDuel+0x204
_0804D48C:
	adds r0, r4, #0
	bl sub_803F99C
_0804D492:
	bl sub_803F29C
	bl sub_803F4C0
	ldr r3, _0804D4D0
	ldr r2, _0804D4D4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0
	bl sub_8045338
	ldr r0, _0804D4D8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D4C8
	ldr r1, _0804D4DC
	movs r0, #0xc5
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_0804D4C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D4D0: .4byte gBoard
_0804D4D4: .4byte 0x02024260
_0804D4D8: .4byte gUnk_02021C08
_0804D4DC: .4byte gUnk_02021C10

.align 2, 0
