    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED



	THUMB_FUNC_START sub_8023544
sub_8023544: @ 0x08023544
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080235B0
	mov sb, r0
	movs r1, #0
	ldr r2, _080235B4
	mov sl, r2
_08023558:
	ldr r0, _080235B8
	ldrb r0, [r0, #0xa]
	cmp r1, r0
	bne _080235C4
	ldr r2, _080235BC
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _0802360C
	ldr r6, _080235C0
	ldr r2, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	mov ip, r1
_08023584:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _08023584
	b _0802360C
	.align 2, 0
_080235B0: .4byte gOamBuffer+0x50
_080235B4: .4byte gFC4A8C
_080235B8: .4byte gLinkDuelMenuData
_080235BC: .4byte 0x080C184B
_080235C0: .4byte 0xFFFFF3FF
_080235C4:
	ldr r2, _0802362C
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _0802360C
	ldr r6, _08023630
	ldr r2, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #4
	mov ip, r1
_080235E8:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _080235E8
_0802360C:
	lsls r0, r7, #2
	add r0, sl
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	add sb, r0
	mov r1, r8
	cmp r1, #6
	bls _08023558
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802362C: .4byte 0x080C1844
_08023630: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8023634
sub_8023634: @ 0x08023634
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802369C
	mov sb, r0
	movs r1, #0
	ldr r2, _080236A0
	mov sl, r2
_08023648:
	ldr r0, _080236A4
	ldrb r0, [r0, #0xa]
	cmp r1, r0
	bne _080236B0
	ldr r2, _080236A8
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _080236F8
	ldr r6, _080236AC
	ldr r2, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #4
	mov ip, r1
_08023674:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _08023674
	b _080236F8
	.align 2, 0
_0802369C: .4byte gOamBuffer+0x50
_080236A0: .4byte gFC4A8C
_080236A4: .4byte gLinkDuelMenuData
_080236A8: .4byte 0x080C184B
_080236AC: .4byte 0xFFFFF3FF
_080236B0:
	ldr r2, _08023718
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _080236F8
	ldr r6, _0802371C
	ldr r2, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #4
	mov ip, r1
_080236D4:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _080236D4
_080236F8:
	lsls r0, r7, #2
	add r0, sl
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	add sb, r0
	mov r1, r8
	cmp r1, #6
	bls _08023648
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023718: .4byte 0x080C1844
_0802371C: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8023720
sub_8023720: @ 0x08023720
	push {r4, r5, r6, r7, lr}
	ldr r1, _08023774
	ldr r2, _08023778
	ldrb r0, [r2, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, _0802377C
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	lsls r0, r0, #3
	ldr r1, [r1]
	adds r5, r0, r1
	ldr r3, _08023780
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _0802376E
	ldr r6, _08023784
	ldr r2, [r5, #4]
	movs r7, #0xc0
	lsls r7, r7, #4
_0802374C:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _0802374C
_0802376E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023774: .4byte 0x080C1852
_08023778: .4byte gLinkDuelMenuData
_0802377C: .4byte gFC4A8C
_08023780: .4byte gOamBuffer+8
_08023784: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8023788
sub_8023788: @ 0x08023788
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08023820
	ldr r0, _08023824
	ldr r5, [r0, #0x40]
	adds r3, r1, #0
	movs r4, #0
	mov r8, r0
	movs r0, #8
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _080237D6
	ldr r6, _08023828
	ldr r2, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #3
_080237AE:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _080237AE
_080237D6:
	mov r0, r8
	ldr r5, [r0, #0x44]
	mov r3, ip
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _08023814
	ldr r6, _08023828
	ldr r2, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #3
_080237EC:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _080237EC
_08023814:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023820: .4byte gOamBuffer+0x18
_08023824: .4byte gFC4A8C
_08023828: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_802382C
sub_802382C: @ 0x0802382C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080238B8
	ldr r0, _080238BC
	ldr r5, [r0, #0x40]
	adds r3, r1, #0
	movs r4, #0
	mov r8, r0
	movs r0, #8
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _08023874
	ldr r6, _080238C0
	ldr r2, [r5, #4]
	movs r7, #0xc0
	lsls r7, r7, #4
_08023852:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08023852
_08023874:
	mov r0, r8
	ldr r5, [r0, #0x44]
	mov r3, ip
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _080238AC
	ldr r6, _080238C0
	ldr r2, [r5, #4]
	movs r7, #0xc0
	lsls r7, r7, #4
_0802388A:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _0802388A
_080238AC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080238B8: .4byte gOamBuffer+0x18
_080238BC: .4byte gFC4A8C
_080238C0: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_80238C4
sub_80238C4: @ 0x080238C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	ldr r1, _0802390C
	mov sl, r1
	movs r7, #0x1f
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sb, r1
	ldr r1, _08023910
	mov r8, r1
	movs r6, #0x7d
	rsbs r6, r6, #0
_080238E4:
	movs r4, #0
	adds r5, r0, #1
	ldr r0, _08023914
	mov ip, r0
_080238EC:
	lsls r0, r4, #1
	mov r1, sl
	adds r3, r0, r1
	ldr r0, [r3]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08023918
	subs r0, #2
	ands r0, r7
	ldrb r2, [r3]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _08023920
	.align 2, 0
_0802390C: .4byte 0x02000000
_08023910: .4byte 0xFFFFFC1F
_08023914: .4byte 0x000001FF
_08023918:
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	strb r0, [r3]
_08023920:
	ldr r0, [r3]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _0802393E
	adds r1, r0, #0
	subs r1, #2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	b _08023944
_0802393E:
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
_08023944:
	strh r0, [r3]
	ldr r0, [r3]
	lsls r1, r0, #0x11
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08023962
	subs r0, #2
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _0802396A
_08023962:
	ldrb r1, [r3, #1]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r3, #1]
_0802396A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, ip
	bls _080238EC
	ldr r0, _08023994
	bl SetVBlankCallback
	bl WaitForVBlank
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _080238E4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023994: .4byte LoadPalettes

	THUMB_FUNC_START sub_8023998
sub_8023998: @ 0x08023998
	push {lr}
	bl sub_8022C54
	bl sub_80234C8
	bl sub_8023DD8
	bl sub_8023E28
	bl sub_8023EDC
	bl sub_8023F4C
	bl sub_8023F90
	bl sub_8023C58
	bl sub_8023720
	bl sub_8023544
	bl sub_8023788
	bl DisableDisplay
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r0, _08023A04
	bl SetVBlankCallback
	bl WaitForVBlank
	ldr r1, _08023A08
	ldr r2, _08023A0C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08023A10
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r2, #0xe0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08023A04: .4byte LoadOam
_08023A08: .4byte 0x0400000C
_08023A0C: .4byte 0x00001902
_08023A10: .4byte 0x00001F03

	THUMB_FUNC_START sub_8023A14
sub_8023A14: @ 0x08023A14
	push {lr}
	bl sub_8023C58
	bl sub_8023720
	bl sub_8023544
	bl sub_8023788
	bl sub_8023FD4
	ldr r0, _08023A40
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadCharblock3
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.align 2, 0
_08023A40: .4byte LoadOam

	THUMB_FUNC_START sub_8023A44
sub_8023A44: @ 0x08023A44
	push {r4, r5, lr}
	bl sub_8023544
	bl sub_8023788
	ldr r4, _08023A88
	ldr r5, _08023A8C
	ldr r0, [r5, #0x48]
	adds r1, r4, #0
	bl sub_8023EB8
	subs r4, #0x10
	ldr r0, [r5, #0x48]
	adds r1, r4, #0
	bl sub_8023EB8
	bl sub_8023FD4
	ldr r0, _08023A90
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08023A94
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023A88: .4byte gOamBuffer+0x10
_08023A8C: .4byte gFC4A8C
_08023A90: .4byte LoadOam
_08023A94: .4byte 0x0000FDFF

	THUMB_FUNC_START sub_8023A98
sub_8023A98: @ 0x08023A98
	push {lr}
	bl sub_8023634
	bl sub_802382C
	movs r0, #0x16
	bl sub_8023EF8
	bl sub_8024018
	ldr r1, _08023AD8
	ldr r2, _08023ADC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023AE0
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023AD8: .4byte 0x0400000A
_08023ADC: .4byte 0x00001A09
_08023AE0: .4byte LoadOam

	THUMB_FUNC_START sub_8023AE4
sub_8023AE4: @ 0x08023AE4
	push {lr}
	bl sub_8023634
	bl sub_802382C
	movs r0, #0x14
	bl sub_8023EF8
	bl sub_8024018
	ldr r1, _08023B24
	ldr r2, _08023B28
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023B2C
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023B24: .4byte 0x0400000A
_08023B28: .4byte 0x00001C09
_08023B2C: .4byte LoadOam

	THUMB_FUNC_START sub_8023B30
sub_8023B30: @ 0x08023B30
	push {lr}
	bl sub_8023634
	bl sub_802382C
	movs r0, #0x13
	bl sub_8023EF8
	bl sub_8024018
	ldr r1, _08023B70
	ldr r2, _08023B74
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023B78
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023B70: .4byte 0x0400000A
_08023B74: .4byte 0x00001D09
_08023B78: .4byte LoadOam

	THUMB_FUNC_START sub_8023B7C
sub_8023B7C: @ 0x08023B7C
	push {lr}
	bl sub_8023634
	bl sub_802382C
	movs r0, #0x15
	bl sub_8023EF8
	bl sub_8024018
	ldr r1, _08023BBC
	ldr r2, _08023BC0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023BC4
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023BBC: .4byte 0x0400000A
_08023BC0: .4byte 0x00001B09
_08023BC4: .4byte LoadOam

	THUMB_FUNC_START sub_8023BC8
sub_8023BC8: @ 0x08023BC8
	push {lr}
	bl sub_8023634
	bl sub_802382C
	movs r0, #0x12
	bl sub_8023EF8
	bl sub_8024018
	ldr r1, _08023C08
	ldr r2, _08023C0C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023C10
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023C08: .4byte 0x0400000A
_08023C0C: .4byte 0x00001E09
_08023C10: .4byte LoadOam

	THUMB_FUNC_START sub_8023C14
sub_8023C14: @ 0x08023C14
	push {lr}
	bl sub_8023634
	bl sub_802382C
	bl sub_8024018
	ldr r1, _08023C4C
	ldr r2, _08023C50
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023C54
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023C4C: .4byte 0x0400000A
_08023C50: .4byte 0x00001809
_08023C54: .4byte LoadOam

	THUMB_FUNC_START sub_8023C58
sub_8023C58: @ 0x08023C58
	push {lr}
	ldr r1, _08023C6C
	ldrb r0, [r1, #8]
	cmp r0, #0x28
	bne _08023C70
	movs r1, #0xe
	bl sub_8023CC0
	b _08023C78
	.align 2, 0
_08023C6C: .4byte gLinkDuelMenuData
_08023C70:
	ldrb r0, [r1, #8]
	movs r1, #0xf
	bl sub_8023CC0
_08023C78:
	ldr r0, _08023C8C
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, r0
	blo _08023C90
	adds r0, r1, #0
	movs r1, #0xe
	bl sub_8023D7C
	b _08023C98
	.align 2, 0
_08023C8C: .4byte gLinkDuelMenuData
_08023C90:
	adds r0, r1, #0
	movs r1, #0xf
	bl sub_8023D7C
_08023C98:
	bl GetDeckCapacity
	ldr r1, _08023CB0
	ldr r1, [r1, #4]
	cmp r0, r1
	blo _08023CB4
	adds r0, r1, #0
	movs r1, #0xe
	bl sub_8023D20
	b _08023CBC
	.align 2, 0
_08023CB0: .4byte gLinkDuelMenuData
_08023CB4:
	adds r0, r1, #0
	movs r1, #0xf
	bl sub_8023D20
_08023CBC:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8023CC0
sub_8023CC0: @ 0x08023CC0
	push {r4, r5, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	ldr r1, _08023D0C
	lsls r4, r4, #0xc
	ldr r3, _08023D10
	ldr r0, _08023D14
	adds r2, r0, #0
	ldrb r5, [r3, #3]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r3, [r3, #4]
	adds r2, r2, r3
	orrs r4, r2
	strh r4, [r1]
	adds r1, #2
	ldr r2, _08023D18
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r5, _08023D1C
	adds r0, r5, #0
	strh r0, [r1]
	subs r2, #0xb
	adds r0, r2, #0
	strh r0, [r1, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023D0C: .4byte 0x0200CE30
_08023D10: .4byte 0x02021BD0
_08023D14: .4byte 0x00000301
_08023D18: .4byte 0x0000E30C
_08023D1C: .4byte 0x0000E305

	THUMB_FUNC_START sub_8023D20
sub_8023D20: @ 0x08023D20
	push {r4, r5, lr}
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	ldr r1, _08023D70
	lsls r4, r4, #0xc
	ldr r3, _08023D74
	ldr r0, _08023D78
	adds r2, r0, #0
	ldrb r5, [r3]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #1]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #2]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #3]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	ldrb r3, [r3, #4]
	adds r2, r2, r3
	orrs r4, r2
	strh r4, [r1, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023D70: .4byte 0x0200CF70
_08023D74: .4byte 0x02021BD0
_08023D78: .4byte 0x00000301

	THUMB_FUNC_START sub_8023D7C
sub_8023D7C: @ 0x08023D7C
	push {r4, r5, lr}
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	ldr r1, _08023DCC
	lsls r4, r4, #0xc
	ldr r3, _08023DD0
	ldr r0, _08023DD4
	adds r2, r0, #0
	ldrb r5, [r3]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #1]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #2]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #3]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	ldrb r3, [r3, #4]
	adds r2, r2, r3
	orrs r4, r2
	strh r4, [r1, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023DCC: .4byte 0x0200CEF0
_08023DD0: .4byte 0x02021BD0
_08023DD4: .4byte 0x00000301

	THUMB_FUNC_START sub_8023DD8
sub_8023DD8: @ 0x08023DD8
	push {r4, r5, lr}
	ldr r0, _08023E10
	ldr r1, _08023E14
	bl LZ77UnCompWram
	movs r4, #0
	movs r5, #0
_08023DE6:
	ldr r0, _08023E18
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _08023E1C
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _08023DE6
	ldr r0, _08023E20
	ldr r1, _08023E24
	movs r2, #0x40
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023E10: .4byte 0x08DE2F08
_08023E14: .4byte 0x02000400
_08023E18: .4byte 0x08DE7358
_08023E1C: .4byte 0x0200FC00
_08023E20: .4byte 0x08DE7808
_08023E24: .4byte 0x02000000

	THUMB_FUNC_START sub_8023E28
sub_8023E28: @ 0x08023E28
	push {r4, lr}
	ldr r0, _08023E50
	ldr r4, _08023E54
	ldr r1, [r4]
	bl LZ77UnCompWram
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0
	bl sub_803EEFC
	ldr r0, _08023E58
	ldr r1, _08023E5C
	movs r2, #0x50
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023E50: .4byte 0x08DF0928
_08023E54: .4byte gUnk_8E010A0
_08023E58: .4byte 0x08DF1430
_08023E5C: .4byte 0x02000200
	.byte 0xF0, 0xB5, 0x07, 0x1C, 0x0C, 0x1C, 0x12, 0x06, 0x12, 0x0E, 0x1B, 0x06, 0x1B, 0x0E, 0x00, 0x26
	.byte 0x79, 0x78, 0x8E, 0x42, 0x1B, 0xD2, 0x0F, 0x48, 0x84, 0x46, 0x9D, 0x02, 0xC0, 0x20, 0x00, 0x01
	.byte 0x05, 0x40, 0x93, 0x02, 0x03, 0x40, 0x7A, 0x68, 0x0F, 0x1C, 0x50, 0x88, 0x00, 0x04, 0x11, 0x88
	.byte 0x08, 0x43, 0x61, 0x46, 0x08, 0x40, 0x20, 0x60, 0x28, 0x43, 0x01, 0xC4, 0x90, 0x88, 0x08, 0x40
	.byte 0x20, 0x60, 0x18, 0x43, 0x01, 0xC4, 0x08, 0x32, 0x01, 0x36, 0xBE, 0x42, 0xED, 0xD3, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0xFF, 0xF3, 0xFF, 0xFF

	THUMB_FUNC_START sub_8023EB8
sub_8023EB8: @ 0x08023EB8
	push {r4, lr}
	movs r2, #0
	ldrb r0, [r0, #1]
	cmp r2, r0
	bhs _08023ED4
	movs r4, #0x80
	lsls r4, r4, #2
	movs r3, #0x80
	lsls r3, r3, #0x11
_08023ECA:
	stm r1!, {r4}
	stm r1!, {r3}
	adds r2, #1
	cmp r2, r0
	blo _08023ECA
_08023ED4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8023EDC
sub_8023EDC: @ 0x08023EDC
	ldr r1, _08023EF4
	movs r0, #0
	movs r3, #0x80
	lsls r3, r3, #2
	movs r2, #0x80
	lsls r2, r2, #0x11
_08023EE8:
	stm r1!, {r3}
	stm r1!, {r2}
	adds r0, #1
	cmp r0, #0x7f
	bls _08023EE8
	bx lr
	.align 2, 0
_08023EF4: .4byte gOamBuffer

	THUMB_FUNC_START sub_8023EF8
sub_8023EF8: @ 0x08023EF8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	ldr r1, _08023F40
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r3, _08023F44
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _08023F3A
	ldr r7, _08023F48
	movs r6, #0x80
	lsls r6, r6, #3
	ldr r2, [r5, #4]
_08023F16:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r7
	str r0, [r3]
	orrs r0, r6
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r7
	str r0, [r3]
	orrs r0, r6
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08023F16
_08023F3A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023F40: .4byte gFC4A8C
_08023F44: .4byte gOamBuffer+0x10
_08023F48: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8023F4C
sub_8023F4C: @ 0x08023F4C
	ldr r0, _08023F70
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08023F74
	strh r1, [r0]
	ldr r0, _08023F78
	strh r1, [r0]
	ldr r0, _08023F7C
	strh r1, [r0]
	ldr r0, _08023F80
	strh r1, [r0]
	ldr r0, _08023F84
	strh r1, [r0]
	ldr r0, _08023F88
	strh r1, [r0]
	ldr r0, _08023F8C
	strh r1, [r0]
	bx lr
	.align 2, 0
_08023F70: .4byte gBG0VOFS
_08023F74: .4byte gBG0HOFS
_08023F78: .4byte gBG1VOFS
_08023F7C: .4byte gBG1HOFS
_08023F80: .4byte gBG2VOFS
_08023F84: .4byte gBG2HOFS
_08023F88: .4byte gBG3VOFS
_08023F8C: .4byte gBG3HOFS

	THUMB_FUNC_START sub_8023F90
sub_8023F90: @ 0x08023F90
	ldr r1, _08023FB8
	ldr r2, _08023FBC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _08023FC0
	ldr r2, _08023FC4
	ldr r1, _08023FC8
	ldr r0, _08023FCC
	ldrb r0, [r0, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _08023FD0
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08023FB8: .4byte gBLDCNT
_08023FBC: .4byte 0x00000CD8
_08023FC0: .4byte gBLDALPHA
_08023FC4: .4byte 0x080C1868
_08023FC8: .4byte 0x080C185F
_08023FCC: .4byte gLinkDuelMenuData
_08023FD0: .4byte gBLDY

	THUMB_FUNC_START sub_8023FD4
sub_8023FD4: @ 0x08023FD4
	ldr r1, _08023FFC
	ldr r2, _08024000
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _08024004
	ldr r2, _08024008
	ldr r1, _0802400C
	ldr r0, _08024010
	ldrb r0, [r0, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _08024014
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08023FFC: .4byte gBLDCNT
_08024000: .4byte 0x00000CD8
_08024004: .4byte gBLDALPHA
_08024008: .4byte 0x080C1868
_0802400C: .4byte 0x080C185F
_08024010: .4byte gLinkDuelMenuData
_08024014: .4byte gBLDY

	THUMB_FUNC_START sub_8024018
sub_8024018: @ 0x08024018
	ldr r1, _08024040
	ldr r2, _08024044
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _08024048
	ldr r2, _0802404C
	ldr r1, _08024050
	ldr r0, _08024054
	ldrb r0, [r0, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _08024058
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_08024040: .4byte gBLDCNT
_08024044: .4byte 0x00000EDC
_08024048: .4byte gBLDALPHA
_0802404C: .4byte 0x080C1882
_08024050: .4byte 0x080C187A
_08024054: .4byte gLinkDuelMenuData
_08024058: .4byte gBLDY

	THUMB_FUNC_START sub_802405C
sub_802405C: @ 0x0802405C
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	ldrb r0, [r3, #8]
	cmp r0, #0xff
	beq _0802407E
	ldr r1, _08024088
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #4]
	movs r4, #0
	str r4, [sp]
	bl sub_8041C94
_0802407E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024088: .4byte gDuelTextStrings

	THUMB_FUNC_START sub_802408C
sub_802408C: @ 0x0802408C
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	ldrb r0, [r3, #8]
	cmp r0, #0xff
	beq _080240AE
	ldr r1, _080240B8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #4]
	movs r4, #0
	str r4, [sp]
	bl sub_80419EC
_080240AE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080240B8: .4byte gDuelTextStrings

	THUMB_FUNC_START sub_80240BC
sub_80240BC: @ 0x080240BC
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	movs r1, #0xff
	strb r1, [r0, #8]
	bx lr

	THUMB_FUNC_START sub_80240CC
sub_80240CC: @ 0x080240CC
	push {r4, r5, r6, r7, lr}
	bl sub_80325D4
	ldr r4, _08024168
	movs r3, #0
	ldr r5, _0802416C
	ldr r0, [r5]
	cmp r0, #0
	beq _0802410A
	adds r7, r5, #0
	adds r6, r5, #4
_080240E2:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _08024100
_080240F2:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _080240F2
_08024100:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _080240E2
_0802410A:
	ldr r4, _08024170
	ldr r0, _08024168
	str r0, [r4, #0xc]
	ldr r5, _08024174
	str r5, [r4, #0x10]
	movs r1, #0x67
	str r1, [r4]
	bl sub_8032644
	strh r0, [r4, #0x28]
	bl sub_8030EF0
	adds r4, #0x34
	ldrb r0, [r4]
	cmp r0, #0
	bne _08024162
	adds r2, r5, #0
	movs r3, #0
	ldr r5, _08024178
	ldr r0, [r5]
	cmp r0, #0
	beq _08024162
	adds r7, r5, #0
	adds r6, r5, #4
_0802413A:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r4, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _08024158
_0802414A:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _0802414A
_08024158:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _0802413A
_08024162:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024168: .4byte 0x03000C78
_0802416C: .4byte 0x080C18D8
_08024170: .4byte 0x03000C38
_08024174: .4byte 0x03001078
_08024178: .4byte 0x080C1910

	THUMB_FUNC_START sub_802417C
sub_802417C: @ 0x0802417C
	push {r4, r5, r6, r7, lr}
	bl sub_80325D4
	movs r0, #0
	movs r1, #1
	bl RandRangeU8
	ldr r4, _080241E4
	strb r0, [r4]
	ldr r1, _080241E8
	ldrb r0, [r1]
	strb r0, [r4, #1]
	ldrb r0, [r1, #1]
	strb r0, [r4, #2]
	ldrb r0, [r1, #2]
	strb r0, [r4, #3]
	ldrb r0, [r1, #3]
	strb r0, [r4, #4]
	ldrb r0, [r1, #4]
	strb r0, [r4, #5]
	ldrb r0, [r1, #5]
	strb r0, [r4, #6]
	ldr r5, _080241EC
	str r4, [r5, #0xc]
	ldr r6, _080241F0
	str r6, [r5, #0x10]
	movs r0, #7
	str r0, [r5]
	adds r0, r4, #0
	movs r1, #7
	bl sub_8032644
	movs r7, #0
	strh r0, [r5, #0x28]
	bl sub_8030EF0
	adds r0, r5, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024210
	ldrb r0, [r4]
	ldrb r6, [r6]
	cmp r0, r6
	bne _080241F4
	adds r0, r5, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802420C
	b _080241FE
	.align 2, 0
_080241E4: .4byte 0x03000C78
_080241E8: .4byte gUnk_8E01098
_080241EC: .4byte 0x03000C38
_080241F0: .4byte 0x03001078
_080241F4:
	adds r0, r5, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802420C
_080241FE:
	ldr r1, _08024208
	movs r0, #1
	strb r0, [r1]
	b _08024210
	.align 2, 0
_08024208: .4byte gWhoseTurn
_0802420C:
	ldr r0, _08024218
	strb r7, [r0]
_08024210:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024218: .4byte gWhoseTurn


		thumb_func_start sub_802421C
sub_802421C: @ 0x0802421C
	push {r4, lr}
	bl sub_80325D4
	movs r0, #0
	movs r1, #1
	bl RandRangeU8
	adds r1, r0, #0
	ldr r0, _0802427C @ =0x03000C78
	strb r1, [r0]
	ldr r2, _08024280 @ =0x08E01098
	ldrb r1, [r2]
	strb r1, [r0, #1]
	ldrb r1, [r2, #1]
	strb r1, [r0, #2]
	ldrb r1, [r2, #2]
	strb r1, [r0, #3]
	ldrb r1, [r2, #3]
	strb r1, [r0, #4]
	ldrb r1, [r2, #4]
	strb r1, [r0, #5]
	ldrb r1, [r2, #5]
	strb r1, [r0, #6]
	ldr r4, _08024284 @ =0x03000C38
	str r0, [r4, #0xc]
	ldr r1, _08024288 @ =0x03001078
	str r1, [r4, #0x10]
	movs r1, #7
	str r1, [r4]
	bl sub_8032644
	strh r0, [r4, #0x28]
	bl sub_8030EF0
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024296
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024290
	ldr r1, _0802428C @ =0x020245A8
	movs r0, #0
	b _08024294
	.align 2, 0
_0802427C: .4byte 0x03000C78
_08024280: .4byte 0x08E01098
_08024284: .4byte 0x03000C38
_08024288: .4byte 0x03001078
_0802428C: .4byte 0x020245A8
_08024290:
	ldr r1, _0802429C @ =0x020245A8
	movs r0, #1
_08024294:
	strb r0, [r1]
_08024296:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802429C: .4byte 0x020245A8

	thumb_func_start sub_80242A0
sub_80242A0: @ 0x080242A0
	push {r4, lr}
	bl sub_80325D4
	movs r0, #0
	movs r1, #1
	bl RandRangeU8
	adds r1, r0, #0
	ldr r0, _08024300 @ =0x03000C78
	strb r1, [r0]
	ldr r2, _08024304 @ =0x08E01098
	ldrb r1, [r2]
	strb r1, [r0, #1]
	ldrb r1, [r2, #1]
	strb r1, [r0, #2]
	ldrb r1, [r2, #2]
	strb r1, [r0, #3]
	ldrb r1, [r2, #3]
	strb r1, [r0, #4]
	ldrb r1, [r2, #4]
	strb r1, [r0, #5]
	ldrb r1, [r2, #5]
	strb r1, [r0, #6]
	ldr r4, _08024308 @ =0x03000C38
	str r0, [r4, #0xc]
	ldr r1, _0802430C @ =0x03001078
	str r1, [r4, #0x10]
	movs r1, #7
	str r1, [r4]
	bl sub_8032644
	strh r0, [r4, #0x28]
	bl sub_8030EF0
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802431A
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024314
	ldr r1, _08024310 @ =0x020245A8
	movs r0, #1
	b _08024318
	.align 2, 0
_08024300: .4byte 0x03000C78
_08024304: .4byte 0x08E01098
_08024308: .4byte 0x03000C38
_0802430C: .4byte 0x03001078
_08024310: .4byte 0x020245A8
_08024314:
	ldr r1, _08024320 @ =0x020245A8
	movs r0, #0
_08024318:
	strb r0, [r1]
_0802431A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024320: .4byte 0x020245A8

	thumb_func_start sub_8024324
sub_8024324: @ 0x08024324
	bx lr

	thumb_func_start sub_8024328
sub_8024328: @ 0x08024324
	bx lr

	THUMB_FUNC_START sub_802432C
sub_802432C: @ 0x0802432C
	push {lr}
	bl sub_80325D4
	ldr r1, _08024348
	ldr r0, _0802434C
	str r0, [r1, #0xc]
	ldr r0, _08024350
	str r0, [r1, #0x10]
	movs r0, #0
	str r0, [r1]
	bl sub_80324C4
	pop {r0}
	bx r0
	.align 2, 0
_08024348: .4byte 0x03000C38
_0802434C: .4byte 0x03000C78
_08024350: .4byte 0x03001078

	THUMB_FUNC_START sub_8024354
sub_8024354: @ 0x08024354
	push {r4, lr}
	ldr r4, _08024378
	ldr r0, _0802437C
	str r0, [r4, #0xc]
	ldr r1, _08024380
	str r1, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #2
	str r1, [r4]
	bl sub_8032644
	strh r0, [r4, #0x28]
	bl sub_8030F90
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024378: .4byte 0x03000C38
_0802437C: .4byte 0x03000C78
_08024380: .4byte 0x03001078

	THUMB_FUNC_START sub_8024384
sub_8024384: @ 0x08024384
	push {r4, r5, r6, r7, lr}
	ldr r4, _080243C4
	movs r3, #0
	ldr r5, _080243C8
	ldr r0, [r5]
	cmp r0, #0
	beq _080243BE
	adds r7, r5, #0
	adds r6, r5, #4
_08024396:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _080243B4
_080243A6:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _080243A6
_080243B4:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _08024396
_080243BE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080243C4: .4byte 0x03000C78
_080243C8: .4byte 0x080C1948

	THUMB_FUNC_START sub_80243CC
sub_80243CC: @ 0x080243CC
	push {r4, r5, r6, r7, lr}
	ldr r4, _0802440C
	movs r3, #0
	ldr r5, _08024410
	ldr r0, [r5]
	cmp r0, #0
	beq _08024406
	adds r7, r5, #0
	adds r6, r5, #4
_080243DE:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _080243FC
_080243EE:
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _080243EE
_080243FC:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _080243DE
_08024406:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802440C: .4byte 0x03001078
_08024410: .4byte 0x080C19D8

	THUMB_FUNC_START sub_8024414
sub_8024414: @ 0x08024414
	push {r4, r5, r6, r7, lr}
	ldr r4, _08024454
	movs r3, #0
	ldr r5, _08024458
	ldr r0, [r5]
	cmp r0, #0
	beq _0802444E
	adds r7, r5, #0
	adds r6, r5, #4
_08024426:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _08024444
_08024436:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _08024436
_08024444:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _08024426
_0802444E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024454: .4byte 0x03000C78
_08024458: .4byte 0x080C1A68

	THUMB_FUNC_START sub_802445C
sub_802445C: @ 0x0802445C
	push {r4, r5, r6, r7, lr}
	ldr r4, _080244AC
	movs r3, #0
	ldr r5, _080244B0
	ldr r0, [r5]
	cmp r0, #0
	beq _08024496
	adds r7, r5, #0
	adds r6, r5, #4
_0802446E:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _0802448C
_0802447E:
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _0802447E
_0802448C:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _0802446E
_08024496:
	bl sub_803FD48
	bl sub_8043EF4
	ldr r0, _080244B4
	ldrb r0, [r0, #0x18]
	bl sub_8044160
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080244AC: .4byte 0x03001078
_080244B0: .4byte 0x080C1B18
_080244B4: .4byte 0x02023EA0

	THUMB_FUNC_START sub_80244B8
sub_80244B8: @ 0x080244B8
	push {r4, r5, r6, r7, lr}
	ldr r4, _080244F8
	movs r3, #0
	ldr r5, _080244FC
	ldr r0, [r5]
	cmp r0, #0
	beq _080244F2
	adds r7, r5, #0
	adds r6, r5, #4
_080244CA:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _080244E8
_080244DA:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _080244DA
_080244E8:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _080244CA
_080244F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080244F8: .4byte 0x03000C78
_080244FC: .4byte 0x080C1BC8

	THUMB_FUNC_START sub_8024500
sub_8024500: @ 0x08024500
	push {r4, r5, r6, r7, lr}
	ldr r4, _08024540
	movs r3, #0
	ldr r5, _08024544
	ldr r0, [r5]
	cmp r0, #0
	beq _0802453A
	adds r7, r5, #0
	adds r6, r5, #4
_08024512:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _08024530
_08024522:
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08024522
_08024530:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _08024512
_0802453A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024540: .4byte 0x03001078
_08024544: .4byte 0x080C1C60

	THUMB_FUNC_START sub_8024548
sub_8024548: @ 0x08024548
	push {lr}
	ldr r1, _08024560
	ldr r0, _08024564
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_08024560: .4byte gUnk_8E010A4
_08024564: .4byte g2021D98

	THUMB_FUNC_START sub_8024568
sub_8024568: @ 0x08024568
	push {lr}
	ldr r1, _08024580
	ldr r0, _08024584
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_08024580: .4byte 0x08E010CC
_08024584: .4byte 0x03001078
//^^^
//link_duel_util ??




// between permanent_effect and turn_effect (maybe these 2 files are combined?)
.section .text3

	THUMB_FUNC_START sub_802AAF0
sub_802AAF0: @ 0x0802AAF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0802ACA4
	ldrb r2, [r0, #1]
	lsls r1, r2, #2
	adds r1, r1, r2
	ldrb r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	mov sb, r1
	ldr r0, _0802ACA8
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrb r2, [r2]
	mov r8, r2
	ldr r0, _0802ACAC
	ldrb r0, [r0]
	mov r1, r8
	subs r0, r1, r0
	mov r8, r0
	mov r2, r8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, _0802ACB0
	mov r7, r8
	adds r7, #0xf3
	strb r7, [r1]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r0, #0
	strb r0, [r1, #1]
	subs r0, #0x10
	add r0, sb
	ldr r2, _0802ACB4
	mov ip, r2
	mov r2, ip
	ands r0, r2
	mov sl, r0
	ldrh r2, [r1, #2]
	ldr r6, _0802ACB8
	adds r0, r6, #0
	ands r0, r2
	mov r2, sl
	orrs r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r3, #0xf
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r2
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r0, r2
	subs r2, #0x10
	ands r0, r2
	movs r2, #0x3f
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	ldr r5, _0802ACBC
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0xc2
	lsls r2, r2, #1
	orrs r0, r2
	strh r0, [r1, #4]
	ldrb r2, [r1, #5]
	adds r0, r4, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	movs r2, #0xf
	ands r0, r2
	movs r2, #0xa0
	orrs r0, r2
	strb r0, [r1, #5]
	adds r1, #8
	strb r7, [r1]
	movs r0, #0
	strb r0, [r1, #1]
	movs r0, #0x11
	add sb, r0
	mov r2, sb
	mov r0, ip
	ands r2, r0
	mov sb, r2
	ldrh r2, [r1, #2]
	adds r0, r6, #0
	ands r0, r2
	mov r2, sb
	orrs r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	adds r0, r3, #0
	ands r0, r2
	movs r7, #0x10
	orrs r0, r7
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r0, r2
	movs r2, #0x3f
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0xc2
	lsls r2, r2, #1
	orrs r0, r2
	strh r0, [r1, #4]
	ldrb r2, [r1, #5]
	adds r0, r4, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	movs r2, #0xf
	ands r0, r2
	movs r2, #0xa0
	orrs r0, r2
	strb r0, [r1, #5]
	adds r1, #8
	movs r0, #0xe
	add r8, r0
	mov r2, r8
	strb r2, [r1]
	movs r0, #0
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r6, #0
	ands r0, r2
	mov r2, sl
	orrs r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	adds r0, r3, #0
	ands r0, r2
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r0, r2
	movs r2, #0x20
	mov sl, r2
	mov r2, sl
	orrs r0, r2
	movs r2, #0x3f
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0xc2
	lsls r2, r2, #1
	orrs r0, r2
	strh r0, [r1, #4]
	ldrb r2, [r1, #5]
	adds r0, r4, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	movs r2, #0xf
	ands r0, r2
	movs r2, #0xa0
	orrs r0, r2
	strb r0, [r1, #5]
	adds r1, #8
	mov r0, r8
	strb r0, [r1]
	movs r0, #0
	strb r0, [r1, #1]
	ldrh r0, [r1, #2]
	ands r6, r0
	mov r2, sb
	orrs r6, r2
	strh r6, [r1, #2]
	ldrb r0, [r1, #3]
	ands r3, r0
	orrs r3, r7
	mov r0, sl
	orrs r3, r0
	movs r2, #0x3f
	ands r3, r2
	movs r0, #0x80
	orrs r3, r0
	strb r3, [r1, #3]
	ldrh r0, [r1, #4]
	ands r5, r0
	movs r2, #0xc2
	lsls r2, r2, #1
	orrs r5, r2
	strh r5, [r1, #4]
	ldrb r0, [r1, #5]
	ands r4, r0
	movs r0, #8
	orrs r4, r0
	movs r2, #0xf
	ands r4, r2
	movs r0, #0xa0
	orrs r4, r0
	strb r4, [r1, #5]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802ACA4: .4byte 0x080C7FDC
_0802ACA8: .4byte 0x080C800E
_0802ACAC: .4byte gBG2VOFS
_0802ACB0: .4byte 0x02018710
_0802ACB4: .4byte 0x000001FF
_0802ACB8: .4byte 0xFFFFFE00
_0802ACBC: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_802ACC0
sub_802ACC0: @ 0x0802ACC0
	push {lr}
	sub sp, #4
	ldr r0, _0802ACF8
	ldrb r1, [r0, #4]
	adds r3, r0, #0
	cmp r1, #0
	bne _0802AD18
	ldrb r0, [r3, #2]
	cmp r0, #0
	blt _0802AD9E
	cmp r0, #1
	bgt _0802AD04
	ldrb r0, [r3, #3]
	movs r1, #4
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0802ACFC
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	ldrb r1, [r3, #2]
	lsls r1, r1, #8
	ldr r2, _0802AD00
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	b _0802AD6E
	.align 2, 0
_0802ACF8: .4byte 0x02021DE0
_0802ACFC: .4byte 0xFFFFFF00
_0802AD00: .4byte 0xFFFF00FF
_0802AD04:
	cmp r0, #4
	bgt _0802AD9E
	ldrb r1, [r3, #3]
	mov r0, sp
	strb r1, [r0]
	ldrb r1, [r3, #2]
	strb r1, [r0, #1]
	bl sub_802ADCC
	b _0802AD9E
_0802AD18:
	cmp r1, #1
	bne _0802AD9E
	ldrb r0, [r3, #2]
	cmp r0, #5
	bhi _0802AD9E
	lsls r0, r0, #2
	ldr r1, _0802AD2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802AD2C: .4byte _0802AD30
_0802AD30: @ jump table
	.4byte _0802AD48 @ case 0
	.4byte _0802AD54 @ case 1
	.4byte _0802AD60 @ case 2
	.4byte _0802AD76 @ case 3
	.4byte _0802AD9E @ case 4
	.4byte _0802AD8C @ case 5
_0802AD48:
	ldrb r1, [r3, #3]
	mov r0, sp
	strb r1, [r0]
	mov r1, sp
	movs r0, #3
	b _0802AD6C
_0802AD54:
	ldrb r1, [r3, #3]
	mov r0, sp
	strb r1, [r0]
	mov r1, sp
	movs r0, #2
	b _0802AD6C
_0802AD60:
	ldrb r1, [r3, #3]
	movs r0, #4
	subs r0, r0, r1
	mov r1, sp
	strb r0, [r1]
	movs r0, #1
_0802AD6C:
	strb r0, [r1, #1]
_0802AD6E:
	mov r0, sp
	bl sub_802ADCC
	b _0802AD9E
_0802AD76:
	ldrb r1, [r3, #3]
	movs r0, #4
	subs r0, r0, r1
	movs r2, #0
	mov r1, sp
	strb r0, [r1]
	mov r0, sp
	strb r2, [r0, #1]
	bl sub_802ADCC
	b _0802AD9E
_0802AD8C:
	ldrb r1, [r3, #3]
	mov r0, sp
	strb r1, [r0]
	mov r1, sp
	movs r0, #4
	strb r0, [r1, #1]
	mov r0, sp
	bl sub_802ADCC
_0802AD9E:
	add sp, #4
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_802ADA4 @decomped
sub_802ADA4: @ 0x0802ADA4
	push {lr}
	sub sp, #4
	ldr r0, _0802ADC4
	ldr r1, [sp]
	ands r1, r0
	ldr r0, _0802ADC8
	ands r1, r0
	str r1, [sp]
	bl sub_802AE98
	mov r0, sp
	bl sub_802AEB4
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0802ADC4: .4byte 0xFFFFFF00
_0802ADC8: .4byte 0xFFFF00FF

	THUMB_FUNC_START sub_802ADCC
sub_802ADCC: @ 0x0802ADCC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80408BC
	adds r0, r4, #0
	bl sub_802AAF0
	ldr r0, _0802ADF0
	bl SetVBlankCallback
	bl LoadCharblock4
	bl WaitForVBlank
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802ADF0: .4byte LoadOam

	THUMB_FUNC_START sub_802ADF4
sub_802ADF4: @ 0x0802ADF4
	push {lr}
	ldr r0, _0802AE3C
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _0802AE40
	bl SetVBlankCallback
	bl WaitForVBlank
	pop {r0}
	bx r0
	.align 2, 0
_0802AE3C: .4byte 0x02018710
_0802AE40: .4byte LoadOam

	THUMB_FUNC_START sub_802AE44
sub_802AE44: @ 0x0802AE44
	push {lr}
	ldr r0, _0802AE90
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bl sub_804078C
	ldr r0, _0802AE94
	bl SetVBlankCallback
	bl WaitForVBlank
	pop {r0}
	bx r0
	.align 2, 0
_0802AE90: .4byte 0x02018710
_0802AE94: .4byte LoadOam



.section .text4

// LinkDuel

	THUMB_FUNC_START sub_8030CA8
sub_8030CA8: @ 0x08030CA8
	push {r4, r5, lr}
	ldr r0, _08030CD8
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r4, _08030CDC
	cmp r0, #1
	bne _08030CC0
	adds r1, r4, #0
	adds r1, #0x34
	movs r0, #0xff
	strb r0, [r1]
_08030CC0:
	adds r3, r4, #0
	adds r5, r3, #0
	adds r5, #0x34
	ldrb r0, [r5]
	cmp r0, #0
	beq _08030CE4
	movs r0, #5
	strb r0, [r5]
	ldr r1, _08030CE0
	strh r1, [r3, #0x24]
	b _08030D42
	.align 2, 0
_08030CD8: .4byte 0x04000128
_08030CDC: .4byte 0x03000C38
_08030CE0: .4byte 0x000014FE
_08030CE4:
	ldr r0, _08030CFC
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r3, #0x1c]
	str r1, [r3, #0x20]
	ldr r1, [r3, #4]
	ldr r0, [r3]
	cmp r1, r0
	blo _08030D04
	ldr r1, _08030D00
	strh r1, [r3, #0x24]
	b _08030D42
	.align 2, 0
_08030CFC: .4byte 0x04000120
_08030D00: .4byte 0x000014FD
_08030D04:
	ldrh r2, [r3, #0x1c]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r2
	movs r1, #0x8c
	lsls r1, r1, #6
	cmp r0, r1
	beq _08030D24
	movs r0, #5
	strb r0, [r5]
	ldr r1, _08030D20
	strh r1, [r3, #0x24]
	b _08030D42
	.align 2, 0
_08030D20: .4byte 0x000014FE
_08030D24:
	ldr r0, [r4, #0x18]
	strb r2, [r0]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r4, #0x26]
	adds r0, r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	ldr r1, _08030D4C
	strh r1, [r4, #0x24]
_08030D42:
	ldr r0, _08030D50
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030D4C: .4byte 0x000014FD
_08030D50: .4byte 0x0400012A

	THUMB_FUNC_START sub_8030D54
sub_8030D54: @ 0x08030D54
	push {lr}
	bl sub_80327B8
	cmp r0, #1
	bne _08030D66
	ldr r0, _08030D6C
	adds r0, #0x34
	movs r1, #0xff
	strb r1, [r0]
_08030D66:
	pop {r0}
	bx r0
	.align 2, 0
_08030D6C: .4byte 0x03000C38
	.byte 0x02, 0x4A, 0x11, 0x88, 0x02, 0x48, 0x08, 0x40, 0x10, 0x80, 0x70, 0x47, 0x0E, 0x01, 0x00, 0x04
	.byte 0x3F, 0xFF, 0x00, 0x00

	THUMB_FUNC_START sub_8030D84
sub_8030D84: @ 0x08030D84
	push {lr}
	ldr r0, _08030DA4
	bl sub_8008478
	ldr r3, _08030DA8
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08030DAC
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_08030DA4: .4byte 0x08030D55
_08030DA8: .4byte 0x04000208
_08030DAC: .4byte 0x04000200

	THUMB_FUNC_START sub_8030DB0
sub_8030DB0: @ 0x08030DB0
	push {lr}
	ldr r3, _08030DD0
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08030DD4
	ldrh r1, [r2]
	ldr r0, _08030DD8
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	movs r0, #0
	bl sub_8008478
	pop {r0}
	bx r0
	.align 2, 0
_08030DD0: .4byte 0x04000208
_08030DD4: .4byte 0x04000200
_08030DD8: .4byte 0x0000FF7F

	THUMB_FUNC_START sub_8030DDC
sub_8030DDC: @ 0x08030DDC
	push {r4, r5, lr}
	movs r5, #1
	movs r4, #0
	bl sub_8008490
	b _08030DF0
_08030DE8:
	adds r4, #1
	ldr r0, _08030E08
	cmp r4, r0
	bhi _08030DFE
_08030DF0:
	ldr r0, _08030E0C
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030DE8
	movs r5, #0
_08030DFE:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08030E08: .4byte 0x0000752F
_08030E0C: .4byte 0x02020E00

	THUMB_FUNC_START sub_8030E10
sub_8030E10: @ 0x08030E10
	push {lr}
	bl sub_8030E5C
	ldr r1, _08030E28
	movs r0, #0
	strh r0, [r1]
	subs r1, #2
	ldr r2, _08030E2C
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08030E28: .4byte 0x0400010E
_08030E2C: .4byte 0x0000D880

	THUMB_FUNC_START sub_8030E30
sub_8030E30: @ 0x08030E30
	push {lr}
	ldr r0, _08030E50
	bl sub_8008504
	ldr r3, _08030E54
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08030E58
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_08030E50: .4byte 0x08030D71
_08030E54: .4byte 0x04000208
_08030E58: .4byte 0x04000200

	THUMB_FUNC_START sub_8030E5C
sub_8030E5C: @ 0x08030E5C
	push {lr}
	ldr r3, _08030E7C
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08030E80
	ldrh r1, [r2]
	ldr r0, _08030E84
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	movs r0, #0
	bl sub_8008504
	pop {r0}
	bx r0
	.align 2, 0
_08030E7C: .4byte 0x04000208
_08030E80: .4byte 0x04000200
_08030E84: .4byte 0x0000FFBF

	THUMB_FUNC_START sub_8030E88
sub_8030E88: @ 0x08030E88
	push {r4, r5, lr}
	movs r5, #1
	movs r4, #0
	bl sub_800851C
	b _08030E9C
_08030E94:
	adds r4, #1
	ldr r0, _08030EB4
	cmp r4, r0
	bhi _08030EAA
_08030E9C:
	ldr r0, _08030EB8
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08030E94
	movs r5, #0
_08030EAA:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08030EB4: .4byte 0x0002897F
_08030EB8: .4byte 0x02020E00

	THUMB_FUNC_START sub_8030EBC
sub_8030EBC: @ 0x08030EBC
	ldr r0, _08030EC8
	ldrh r1, [r0]
	movs r2, #0xc0
	orrs r1, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_08030EC8: .4byte 0x0400010E

	THUMB_FUNC_START sub_8030ECC
sub_8030ECC: @ 0x08030ECC
	ldr r2, _08030ED8
	ldrh r1, [r2]
	ldr r0, _08030EDC
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_08030ED8: .4byte 0x0400010E
_08030EDC: .4byte 0x0000FF3F

	THUMB_FUNC_START sub_8030EE0
sub_8030EE0: @ 0x08030EE0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08030EEC
	strh r0, [r1]
	bx lr
	.align 2, 0
_08030EEC: .4byte 0x0400010C

	THUMB_FUNC_START sub_8030EF0
sub_8030EF0: @ 0x08030EF0
	push {r4, r5, r6, r7, lr}
	bl sub_8030D84
	movs r6, #6
	ldr r7, _08030F00
_08030EFA:
	movs r4, #0xa
	b _08030F0A
	.align 2, 0
_08030F00: .4byte 0x03000C6C
_08030F04:
	subs r4, #1
	cmp r4, #0
	beq _08030F26
_08030F0A:
	bl sub_80326EC
	bl sub_80326D4
	bl sub_80311CC
	ldrb r0, [r7]
	cmp r0, #0
	bne _08030F04
	bl sub_8031208
	ldrb r0, [r7]
	cmp r0, #0
	bne _08030F04
_08030F26:
	ldrb r0, [r7]
	cmp r0, #0
	bne _08030F7E
	movs r4, #2
	ldr r5, _08030F34
	b _08030F3E
	.align 2, 0
_08030F34: .4byte 0x03000C6C
_08030F38:
	subs r4, #1
	cmp r4, #0
	beq _08030F50
_08030F3E:
	bl sub_80326D4
	bl sub_803268C
	bl sub_8031090
	ldrb r0, [r5]
	cmp r0, #0
	bne _08030F38
_08030F50:
	ldrb r0, [r7]
	cmp r0, #0
	bne _08030F7E
	movs r4, #2
	ldr r5, _08030F5C
	b _08030F66
	.align 2, 0
_08030F5C: .4byte 0x03000C6C
_08030F60:
	subs r4, #1
	cmp r4, #0
	beq _08030F78
_08030F66:
	bl sub_80326D4
	bl sub_803268C
	bl sub_8031130
	ldrb r0, [r5]
	cmp r0, #0
	bne _08030F60
_08030F78:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08030F84
_08030F7E:
	subs r6, #1
	cmp r6, #0
	bne _08030EFA
_08030F84:
	bl sub_8030DB0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8030F90
sub_8030F90: @ 0x08030F90
	push {r4, r5, r6, r7, lr}
	bl sub_8030D84
	movs r7, #6
	ldr r6, _08030FA0
_08030F9A:
	movs r4, #0xa
	b _08030FAA
	.align 2, 0
_08030FA0: .4byte 0x03000C6C
_08030FA4:
	subs r4, #1
	cmp r4, #0
	beq _08030FC6
_08030FAA:
	bl sub_80326EC
	bl sub_80326D4
	bl sub_80311CC
	ldrb r0, [r6]
	cmp r0, #0
	bne _08030FA4
	bl sub_8031208
	ldrb r0, [r6]
	cmp r0, #0
	bne _08030FA4
_08030FC6:
	ldr r1, _08030FEC
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803107E
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803102C
	adds r0, r1, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803100A
	movs r4, #2
	adds r5, r1, #0
	adds r5, #0x34
	b _08030FF6
	.align 2, 0
_08030FEC: .4byte 0x03000C38
_08030FF0:
	subs r4, #1
	cmp r4, #0
	beq _08031078
_08030FF6:
	bl sub_80326D4
	bl sub_803268C
	bl sub_8031090
	ldrb r0, [r5]
	cmp r0, #0
	bne _08030FF0
	b _08031078
_0803100A:
	movs r4, #2
	adds r5, r1, #0
	adds r5, #0x34
	b _08031018
_08031012:
	subs r4, #1
	cmp r4, #0
	beq _08031078
_08031018:
	bl sub_80326D4
	bl sub_803268C
	bl sub_8031130
	ldrb r0, [r5]
	cmp r0, #0
	bne _08031012
	b _08031078
_0803102C:
	adds r0, r1, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	bne _08031058
	movs r4, #2
	adds r5, r1, #0
	adds r5, #0x34
	b _08031044
_0803103E:
	subs r4, #1
	cmp r4, #0
	beq _08031078
_08031044:
	bl sub_80326D4
	bl sub_803268C
	bl sub_8031130
	ldrb r0, [r5]
	cmp r0, #0
	bne _0803103E
	b _08031078
_08031058:
	movs r4, #2
	adds r5, r1, #0
	adds r5, #0x34
	b _08031066
_08031060:
	subs r4, #1
	cmp r4, #0
	beq _08031078
_08031066:
	bl sub_80326D4
	bl sub_803268C
	bl sub_8031090
	ldrb r0, [r5]
	cmp r0, #0
	bne _08031060
_08031078:
	ldrb r0, [r6]
	cmp r0, #0
	beq _08031084
_0803107E:
	subs r7, #1
	cmp r7, #0
	bne _08030F9A
_08031084:
	bl sub_8030DB0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8031090
sub_8031090: @ 0x08031090
	push {r4, lr}
	ldr r4, _080310E8
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _080310EC
	bl sub_8031424
	adds r4, #0x34
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_8031880
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_8030E10
	bl sub_8030E30
	bl sub_80321CC
	bl sub_8030E5C
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl WaitForVBlank
	bl sub_803171C
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_8031FC4
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_80315A0
	b _08031128
	.align 2, 0
_080310E8: .4byte 0x03000C38
_080310EC:
	cmp r0, #1
	bne _08031128
	bl sub_80314E8
	adds r4, #0x34
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_8031A44
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_803242C
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_80317D4
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_803204C
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_8031664
_08031128:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8031130
sub_8031130: @ 0x08031130
	push {r4, lr}
	ldr r4, _08031184
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _08031188
	bl sub_8031424
	adds r4, #0x34
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_8031C24
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_8030E10
	bl sub_8030E30
	bl sub_803229C
	bl sub_8030E5C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_803171C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_80320C8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_80315A0
	b _080311C4
	.align 2, 0
_08031184: .4byte 0x03000C38
_08031188:
	cmp r0, #1
	bne _080311C4
	bl sub_80314E8
	adds r4, #0x34
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_8031E20
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_8032384
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_80317D4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_8032148
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_8031664
_080311C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80311CC
sub_80311CC: @ 0x080311CC
	push {r4, lr}
	ldr r4, _080311F0
	adds r1, r4, #0
	adds r1, #0x33
	movs r0, #7
	strb r0, [r1]
	bl sub_8032714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080311F4
	adds r1, r4, #0
	adds r1, #0x31
	strb r0, [r1]
	adds r1, #3
	movs r0, #0
	b _08031200
	.align 2, 0
_080311F0: .4byte 0x03000C38
_080311F4:
	adds r1, r4, #0
	adds r1, #0x31
	movs r0, #4
	strb r0, [r1]
	adds r1, #3
	movs r0, #1
_08031200:
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8031208
sub_8031208: @ 0x08031208
	push {r4, r5, r6, r7, lr}
	ldr r1, _08031228
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #0xe
	strb r0, [r2]
	subs r2, #2
	ldrb r0, [r2]
	cmp r0, #1
	bhi _08031268
	movs r5, #1
	movs r4, #1
	adds r7, r2, #0
	adds r6, r1, #0
	adds r6, #0x34
	b _08031232
	.align 2, 0
_08031228: .4byte 0x03000C38
_0803122C:
	subs r4, #1
	cmp r4, #0
	beq _0803124C
_08031232:
	ldrb r0, [r7]
	cmp r0, #0
	bne _0803123E
	bl sub_8031278
	b _08031242
_0803123E:
	bl sub_8031354
_08031242:
	ldrb r0, [r6]
	ldr r1, _08031274
	cmp r0, #0
	bne _0803122C
	movs r5, #0
_0803124C:
	cmp r5, #0
	bne _08031268
	bl sub_80327A8
	ldr r2, _08031274
	adds r1, r2, #0
	adds r1, #0x30
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	blt _08031266
	cmp r0, #1
	ble _0803126E
_08031266:
	adds r1, r2, #0
_08031268:
	adds r1, #0x34
	movs r0, #0xb
	strb r0, [r1]
_0803126E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031274: .4byte 0x03000C38

	THUMB_FUNC_START sub_8031278
sub_8031278: @ 0x08031278
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r4, #0x1e
	ldr r5, _08031338
_08031284:
	ldr r0, _0803133C
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031316
	bl sub_8032830
	movs r1, #0x34
	adds r1, r1, r5
	mov r8, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031316
	ldr r1, [r5, #0x1c]
	movs r2, #1
	rsbs r2, r2, #0
	ldr r0, _08031340
	cmp r1, r0
	bne _08031316
	ldr r6, [r5, #0x20]
	cmp r6, r2
	bne _08031316
	ldr r0, _08031344
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031316
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031316
	ldr r1, [r5, #0x1c]
	ldr r0, _08031348
	cmp r1, r0
	bne _08031316
	ldr r7, [r5, #0x20]
	cmp r7, r6
	bne _08031316
	ldr r0, _0803134C
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031316
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031316
	ldr r1, [r5, #0x1c]
	ldr r0, _08031350
	cmp r1, r0
	bne _08031316
	ldr r0, [r5, #0x20]
	cmp r0, r7
	beq _0803132A
_08031316:
	subs r4, #1
	cmp r4, #0
	bne _08031284
	movs r0, #1
	cmp r0, #0
	beq _0803132A
	ldr r0, _08031338
	adds r0, #0x34
	movs r1, #0xb
	strb r1, [r0]
_0803132A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031338: .4byte 0x03000C38
_0803133C: .4byte 0x00002D01
_08031340: .4byte 0x1D012D01
_08031344: .4byte 0x00002D02
_08031348: .4byte 0x1D022D02
_0803134C: .4byte 0x00002D03
_08031350: .4byte 0x1D032D03

	THUMB_FUNC_START sub_8031354
sub_8031354: @ 0x08031354
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r4, #5
	ldr r5, _08031408
_08031360:
	ldr r0, _0803140C
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _080313E6
	bl sub_8032830
	movs r1, #0x34
	adds r1, r1, r5
	mov r8, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _080313E6
	ldr r1, [r5, #0x1c]
	movs r2, #1
	rsbs r2, r2, #0
	ldr r0, _08031410
	cmp r1, r0
	bne _080313E6
	ldr r6, [r5, #0x20]
	cmp r6, r2
	bne _080313E6
	ldr r0, _08031414
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _080313E6
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080313E6
	ldr r1, [r5, #0x1c]
	ldr r0, _08031418
	cmp r1, r0
	bne _080313E6
	ldr r7, [r5, #0x20]
	cmp r7, r6
	bne _080313E6
	ldr r0, _0803141C
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _080313E6
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080313E6
	ldr r1, [r5, #0x1c]
	ldr r0, _08031420
	cmp r1, r0
	bne _080313E6
	ldr r0, [r5, #0x20]
	cmp r0, r7
	beq _080313FA
_080313E6:
	subs r4, #1
	cmp r4, #0
	bne _08031360
	movs r0, #1
	cmp r0, #0
	beq _080313FA
	ldr r0, _08031408
	adds r0, #0x34
	movs r1, #0xb
	strb r1, [r0]
_080313FA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031408: .4byte 0x03000C38
_0803140C: .4byte 0x00001D01
_08031410: .4byte 0x1D012D01
_08031414: .4byte 0x00001D02
_08031418: .4byte 0x1D022D02
_0803141C: .4byte 0x00001D03
_08031420: .4byte 0x1D032D03

	THUMB_FUNC_START sub_8031424
sub_8031424: @ 0x08031424
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080314CC
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #2
	strb r0, [r2]
	movs r4, #1
	adds r5, r1, #0
	ldr r7, _080314D0
_0803143A:
	ldr r0, _080314D4
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080314AE
	bl sub_8032830
	adds r6, r5, #0
	adds r6, #0x34
	ldrb r0, [r6]
	cmp r0, #0
	bne _080314AE
	ldrh r0, [r5, #0x1e]
	cmp r0, r7
	bne _080314AE
	ldr r0, _080314D8
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080314AE
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _080314AE
	ldrh r1, [r5, #0x1e]
	ldr r0, _080314DC
	cmp r1, r0
	bne _080314AE
	ldr r0, _080314E0
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080314AE
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _080314AE
	ldrh r1, [r5, #0x1e]
	ldr r0, _080314E4
	cmp r1, r0
	beq _080314C2
_080314AE:
	subs r4, #1
	cmp r4, #0
	bne _0803143A
	movs r0, #1
	cmp r0, #0
	beq _080314C2
	ldr r0, _080314CC
	adds r0, #0x34
	movs r1, #2
	strb r1, [r0]
_080314C2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080314CC: .4byte 0x03000C38
_080314D0: .4byte 0x00001204
_080314D4: .4byte 0x00002104
_080314D8: .4byte 0x00002105
_080314DC: .4byte 0x00001205
_080314E0: .4byte 0x00002106
_080314E4: .4byte 0x00001206

	THUMB_FUNC_START sub_80314E8
sub_80314E8: @ 0x080314E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08031584
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #2
	strb r0, [r2]
	movs r4, #1
	adds r5, r1, #0
	ldr r7, _08031588
_080314FE:
	ldr r0, _0803158C
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031566
	bl sub_8032830
	adds r6, r5, #0
	adds r6, #0x34
	ldrb r0, [r6]
	cmp r0, #0
	bne _08031566
	ldrh r0, [r5, #0x1c]
	cmp r0, r7
	bne _08031566
	ldr r0, _08031590
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031566
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _08031566
	ldrh r1, [r5, #0x1c]
	ldr r0, _08031594
	cmp r1, r0
	bne _08031566
	ldr r0, _08031598
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031566
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _08031566
	ldrh r1, [r5, #0x1c]
	ldr r0, _0803159C
	cmp r1, r0
	beq _0803157A
_08031566:
	subs r4, #1
	cmp r4, #0
	bne _080314FE
	movs r0, #1
	cmp r0, #0
	beq _0803157A
	ldr r0, _08031584
	adds r0, #0x34
	movs r1, #2
	strb r1, [r0]
_0803157A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031584: .4byte 0x03000C38
_08031588: .4byte 0x00002104
_0803158C: .4byte 0x00001204
_08031590: .4byte 0x00001205
_08031594: .4byte 0x00002105
_08031598: .4byte 0x00001206
_0803159C: .4byte 0x00002106

	THUMB_FUNC_START sub_80315A0
sub_80315A0: @ 0x080315A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08031648
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #9
	strb r0, [r2]
	movs r4, #1
	adds r5, r1, #0
	ldr r7, _0803164C
_080315B6:
	ldr r0, _08031650
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _0803162A
	bl sub_8032830
	adds r6, r5, #0
	adds r6, #0x34
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803162A
	ldrh r0, [r5, #0x1e]
	cmp r0, r7
	bne _0803162A
	ldr r0, _08031654
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _0803162A
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803162A
	ldrh r1, [r5, #0x1e]
	ldr r0, _08031658
	cmp r1, r0
	bne _0803162A
	ldr r0, _0803165C
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _0803162A
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803162A
	ldrh r1, [r5, #0x1e]
	ldr r0, _08031660
	cmp r1, r0
	beq _0803163E
_0803162A:
	subs r4, #1
	cmp r4, #0
	bne _080315B6
	movs r0, #1
	cmp r0, #0
	beq _0803163E
	ldr r0, _08031648
	adds r0, #0x34
	movs r1, #3
	strb r1, [r0]
_0803163E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031648: .4byte 0x03000C38
_0803164C: .4byte 0x0000160A
_08031650: .4byte 0x0000250A
_08031654: .4byte 0x0000250B
_08031658: .4byte 0x0000160B
_0803165C: .4byte 0x0000250C
_08031660: .4byte 0x0000160C

	THUMB_FUNC_START sub_8031664
sub_8031664: @ 0x08031664
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08031700
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #9
	strb r0, [r2]
	movs r4, #1
	adds r5, r1, #0
	ldr r7, _08031704
_0803167A:
	ldr r0, _08031708
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _080316E2
	bl sub_8032830
	adds r6, r5, #0
	adds r6, #0x34
	ldrb r0, [r6]
	cmp r0, #0
	bne _080316E2
	ldrh r0, [r5, #0x1c]
	cmp r0, r7
	bne _080316E2
	ldr r0, _0803170C
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _080316E2
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _080316E2
	ldrh r1, [r5, #0x1c]
	ldr r0, _08031710
	cmp r1, r0
	bne _080316E2
	ldr r0, _08031714
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _080316E2
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _080316E2
	ldrh r1, [r5, #0x1c]
	ldr r0, _08031718
	cmp r1, r0
	beq _080316F6
_080316E2:
	subs r4, #1
	cmp r4, #0
	bne _0803167A
	movs r0, #1
	cmp r0, #0
	beq _080316F6
	ldr r0, _08031700
	adds r0, #0x34
	movs r1, #3
	strb r1, [r0]
_080316F6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031700: .4byte 0x03000C38
_08031704: .4byte 0x0000250A
_08031708: .4byte 0x0000160A
_0803170C: .4byte 0x0000160B
_08031710: .4byte 0x0000250B
_08031714: .4byte 0x0000160C
_08031718: .4byte 0x0000250C

	THUMB_FUNC_START sub_803171C
sub_803171C: @ 0x0803171C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080317B8
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #0xd
	strb r0, [r2]
	movs r4, #1
	adds r5, r1, #0
	ldr r7, _080317BC
_08031732:
	ldr r0, _080317C0
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080317A6
	bl sub_8032830
	adds r6, r5, #0
	adds r6, #0x34
	ldrb r0, [r6]
	cmp r0, #0
	bne _080317A6
	ldrh r0, [r5, #0x1e]
	cmp r0, r7
	bne _080317A6
	ldr r0, _080317C4
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080317A6
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _080317A6
	ldrh r1, [r5, #0x1e]
	ldr r0, _080317C8
	cmp r1, r0
	bne _080317A6
	ldr r0, _080317CC
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080317A6
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _080317A6
	ldrh r1, [r5, #0x1e]
	ldr r0, _080317D0
	cmp r1, r0
	beq _080317AC
_080317A6:
	subs r4, #1
	cmp r4, #0
	bne _08031732
_080317AC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080317B8: .4byte 0x03000C38
_080317BC: .4byte 0x00001F07
_080317C0: .4byte 0x00002E07
_080317C4: .4byte 0x00002E08
_080317C8: .4byte 0x00001F08
_080317CC: .4byte 0x00002E09
_080317D0: .4byte 0x00001F09

	THUMB_FUNC_START sub_80317D4
sub_80317D4: @ 0x080317D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08031864
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #0xd
	strb r0, [r2]
	movs r4, #1
	adds r5, r1, #0
	ldr r7, _08031868
_080317EA:
	ldr r0, _0803186C
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031852
	bl sub_8032830
	adds r6, r5, #0
	adds r6, #0x34
	ldrb r0, [r6]
	cmp r0, #0
	bne _08031852
	ldrh r0, [r5, #0x1c]
	cmp r0, r7
	bne _08031852
	ldr r0, _08031870
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031852
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _08031852
	ldrh r1, [r5, #0x1c]
	ldr r0, _08031874
	cmp r1, r0
	bne _08031852
	ldr r0, _08031878
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031852
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _08031852
	ldrh r1, [r5, #0x1c]
	ldr r0, _0803187C
	cmp r1, r0
	beq _08031858
_08031852:
	subs r4, #1
	cmp r4, #0
	bne _080317EA
_08031858:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031864: .4byte 0x03000C38
_08031868: .4byte 0x00002E07
_0803186C: .4byte 0x00001F07
_08031870: .4byte 0x00001F08
_08031874: .4byte 0x00002E08
_08031878: .4byte 0x00001F09
_0803187C: .4byte 0x00002E09

	THUMB_FUNC_START sub_8031880
sub_8031880: @ 0x08031880
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08031A20
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #0xa
	strb r0, [r2]
	ldrh r0, [r1, #0x28]
	str r0, [sp]
	movs r6, #3
	adds r7, r1, #0
	movs r1, #0xff
	ands r0, r1
	str r0, [sp, #4]
	movs r1, #0x9c
	lsls r1, r1, #6
	adds r0, r1, #0
	ldr r1, [sp, #4]
	orrs r1, r0
	str r1, [sp, #4]
	mov sb, r1
	mov r0, sb
	movs r1, #0
	orrs r0, r1
	mov sb, r0
_080318BA:
	mov r0, sb
	strh r0, [r7, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	beq _080318D0
	b _080319F8
_080318D0:
	bl sub_8032830
	movs r1, #0x34
	adds r1, r1, r7
	mov r8, r1
	ldrb r0, [r1]
	cmp r0, #0
	beq _080318E2
	b _080319F8
_080318E2:
	ldrh r1, [r7, #0x1e]
	ldr r0, _08031A24
	cmp r1, r0
	beq _080318EC
	b _080319F8
_080318EC:
	ldr r0, [sp]
	lsrs r4, r0, #8
	adds r5, r4, #0
	movs r1, #0xff
	ands r5, r1
	movs r0, #0xa0
	lsls r0, r0, #6
	mov sl, r0
	mov r1, sl
	orrs r5, r1
	movs r0, #0
	orrs r5, r0
	strh r5, [r7, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080319F8
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080319F8
	ldrh r1, [r7, #0x1e]
	ldr r0, _08031A28
	cmp r1, r0
	bne _080319F8
	mov r0, sb
	strh r0, [r7, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080319F8
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080319F8
	ldrh r1, [r7, #0x1e]
	ldr r0, _08031A2C
	cmp r1, r0
	bne _080319F8
	strh r5, [r7, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080319F8
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080319F8
	ldrh r1, [r7, #0x1e]
	ldr r0, _08031A30
	cmp r1, r0
	bne _080319F8
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r7, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080319F8
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080319F8
	ldrh r1, [r7, #0x1e]
	ldr r0, _08031A34
	cmp r1, r0
	bne _080319F8
	movs r0, #0xff
	ands r4, r0
	mov r1, sl
	orrs r4, r1
	strh r4, [r7, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080319F8
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080319F8
	ldrh r1, [r7, #0x1e]
	ldr r0, _08031A38
	cmp r1, r0
	bne _080319F8
	ldr r0, _08031A3C
	strh r0, [r7, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080319F8
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080319F8
	ldrh r1, [r7, #0x1e]
	ldr r0, _08031A40
	cmp r1, r0
	beq _08031A0E
_080319F8:
	subs r6, #1
	cmp r6, #0
	beq _08031A00
	b _080318BA
_08031A00:
	movs r0, #1
	cmp r0, #0
	beq _08031A0E
	ldr r0, _08031A20
	adds r0, #0x34
	movs r1, #8
	strb r1, [r0]
_08031A0E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031A20: .4byte 0x03000C38
_08031A24: .4byte 0x0000190D
_08031A28: .4byte 0x00001910
_08031A2C: .4byte 0x0000190E
_08031A30: .4byte 0x00001911
_08031A34: .4byte 0x0000190F
_08031A38: .4byte 0x00001912
_08031A3C: .4byte 0x00002913
_08031A40: .4byte 0x00001913

	THUMB_FUNC_START sub_8031A44
sub_8031A44: @ 0x08031A44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08031C00
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #0xb
	strb r0, [r2]
	movs r4, #3
	adds r5, r1, #0
_08031A5C:
	ldr r0, _08031C04
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	beq _08031A6E
	b _08031BDC
_08031A6E:
	bl sub_8032830
	movs r0, #0x34
	adds r0, r0, r5
	mov sl, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031A80
	b _08031BDC
_08031A80:
	ldrh r1, [r5, #0x1c]
	adds r6, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r6, r2
	movs r0, #0x9c
	lsls r0, r0, #6
	cmp r6, r0
	beq _08031A94
	b _08031BDC
_08031A94:
	movs r0, #0xff
	ands r1, r0
	strh r1, [r5, #0x2a]
	ldr r0, _08031C08
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	beq _08031AAC
	b _08031BDC
_08031AAC:
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	beq _08031ABA
	b _08031BDC
_08031ABA:
	ldrh r1, [r5, #0x1c]
	mov r8, r1
	mov r2, r8
	movs r0, #0xff
	lsls r0, r0, #8
	ands r2, r0
	mov r8, r2
	movs r0, #0xa0
	lsls r0, r0, #6
	cmp r8, r0
	beq _08031AD2
	b _08031BDC
_08031AD2:
	movs r0, #0xff
	ands r1, r0
	lsls r0, r1, #8
	ldrh r1, [r5, #0x2a]
	orrs r0, r1
	strh r0, [r5, #0x2a]
	ldr r0, _08031C0C
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031BDC
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031BDC
	ldrh r1, [r5, #0x1c]
	adds r7, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r7, r2
	cmp r7, r6
	bne _08031BDC
	movs r0, #0xff
	mov sb, r0
	ands r1, r0
	strh r1, [r5, #0x2c]
	ldr r0, _08031C10
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031BDC
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031BDC
	ldrh r1, [r5, #0x1c]
	adds r6, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r6, r2
	cmp r6, r8
	bne _08031BDC
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #8
	ldrh r0, [r5, #0x2c]
	orrs r1, r0
	movs r2, #0
	mov r8, r2
	strh r1, [r5, #0x2c]
	ldr r0, _08031C14
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031BDC
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031BDC
	ldrh r1, [r5, #0x1c]
	adds r0, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	cmp r0, r7
	bne _08031BDC
	mov r0, sb
	ands r1, r0
	strh r1, [r5, #0x2e]
	ldr r0, _08031C18
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031BDC
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031BDC
	ldrh r1, [r5, #0x1c]
	adds r0, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	cmp r0, r6
	bne _08031BDC
	mov r0, sb
	ands r1, r0
	lsls r0, r1, #8
	ldrh r1, [r5, #0x2e]
	orrs r0, r1
	strh r0, [r5, #0x2e]
	bl sub_8032660
	cmp r0, #0
	bne _08031BDC
	ldr r0, _08031C1C
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031BDC
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031BDC
	ldrh r1, [r5, #0x1c]
	ldr r0, _08031C20
	cmp r1, r0
	beq _08031BF2
_08031BDC:
	subs r4, #1
	cmp r4, #0
	beq _08031BE4
	b _08031A5C
_08031BE4:
	movs r0, #1
	cmp r0, #0
	beq _08031BF2
	ldr r0, _08031C00
	adds r0, #0x34
	movs r1, #9
	strb r1, [r0]
_08031BF2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031C00: .4byte 0x03000C38
_08031C04: .4byte 0x0000190D
_08031C08: .4byte 0x00001910
_08031C0C: .4byte 0x0000190E
_08031C10: .4byte 0x00001911
_08031C14: .4byte 0x0000190F
_08031C18: .4byte 0x00001912
_08031C1C: .4byte 0x00001913
_08031C20: .4byte 0x00002913

	THUMB_FUNC_START sub_8031C24
sub_8031C24: @ 0x08031C24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08031DFC
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #0xb
	strb r0, [r2]
	movs r4, #3
	adds r5, r1, #0
_08031C3C:
	ldr r0, _08031E00
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	beq _08031C52
	b _08031DD8
_08031C52:
	bl sub_8032830
	movs r0, #0x34
	adds r0, r0, r5
	mov sl, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031C64
	b _08031DD8
_08031C64:
	ldrh r1, [r5, #0x1e]
	adds r6, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r6, r2
	movs r0, #0xb8
	lsls r0, r0, #5
	cmp r6, r0
	beq _08031C78
	b _08031DD8
_08031C78:
	movs r0, #0xff
	ands r1, r0
	strh r1, [r5, #0x2a]
	ldr r0, _08031E04
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	beq _08031C94
	b _08031DD8
_08031C94:
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	beq _08031CA2
	b _08031DD8
_08031CA2:
	ldrh r1, [r5, #0x1e]
	mov r8, r1
	mov r2, r8
	movs r0, #0xff
	lsls r0, r0, #8
	ands r2, r0
	mov r8, r2
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r8, r0
	beq _08031CBA
	b _08031DD8
_08031CBA:
	movs r0, #0xff
	ands r1, r0
	lsls r0, r1, #8
	ldrh r1, [r5, #0x2a]
	orrs r0, r1
	strh r0, [r5, #0x2a]
	ldr r0, _08031E08
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031DD8
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031DD8
	ldrh r1, [r5, #0x1e]
	adds r7, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r7, r2
	cmp r7, r6
	bne _08031DD8
	movs r0, #0xff
	mov sb, r0
	ands r1, r0
	strh r1, [r5, #0x2c]
	ldr r0, _08031E0C
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031DD8
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031DD8
	ldrh r1, [r5, #0x1e]
	adds r6, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r6, r2
	cmp r6, r8
	bne _08031DD8
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #8
	ldrh r0, [r5, #0x2c]
	orrs r1, r0
	movs r2, #0
	mov r8, r2
	strh r1, [r5, #0x2c]
	ldr r0, _08031E10
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031DD8
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031DD8
	ldrh r1, [r5, #0x1e]
	adds r0, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	cmp r0, r7
	bne _08031DD8
	mov r0, sb
	ands r1, r0
	strh r1, [r5, #0x2e]
	ldr r0, _08031E14
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031DD8
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031DD8
	ldrh r1, [r5, #0x1e]
	adds r0, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	cmp r0, r6
	bne _08031DD8
	mov r0, sb
	ands r1, r0
	lsls r0, r1, #8
	ldrh r1, [r5, #0x2e]
	orrs r0, r1
	strh r0, [r5, #0x2e]
	bl sub_8032660
	cmp r0, #0
	bne _08031DD8
	ldr r0, _08031E18
	strh r0, [r5, #0x24]
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031DD8
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031DD8
	ldrh r1, [r5, #0x1e]
	ldr r0, _08031E1C
	cmp r1, r0
	beq _08031DEE
_08031DD8:
	subs r4, #1
	cmp r4, #0
	beq _08031DE0
	b _08031C3C
_08031DE0:
	movs r0, #1
	cmp r0, #0
	beq _08031DEE
	ldr r0, _08031DFC
	adds r0, #0x34
	movs r1, #9
	strb r1, [r0]
_08031DEE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031DFC: .4byte 0x03000C38
_08031E00: .4byte 0x0000290D
_08031E04: .4byte 0x00002910
_08031E08: .4byte 0x0000290E
_08031E0C: .4byte 0x00002911
_08031E10: .4byte 0x0000290F
_08031E14: .4byte 0x00002912
_08031E18: .4byte 0x00002913
_08031E1C: .4byte 0x00001913

	THUMB_FUNC_START sub_8031E20
sub_8031E20: @ 0x08031E20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08031FA0
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #0xa
	strb r0, [r2]
	ldrh r0, [r1, #0x28]
	str r0, [sp]
	movs r6, #3
	adds r7, r1, #0
	movs r1, #0xff
	ands r0, r1
	str r0, [sp, #4]
	movs r1, #0xb8
	lsls r1, r1, #5
	adds r0, r1, #0
	ldr r1, [sp, #4]
	orrs r1, r0
	str r1, [sp, #4]
	mov sb, r1
	mov r0, sb
	movs r1, #0
	orrs r0, r1
	mov sb, r0
_08031E5A:
	mov r0, sb
	strh r0, [r7, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	beq _08031E6C
	b _08031F78
_08031E6C:
	bl sub_8032830
	movs r1, #0x34
	adds r1, r1, r7
	mov r8, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031F78
	ldrh r1, [r7, #0x1c]
	ldr r0, _08031FA4
	cmp r1, r0
	bne _08031F78
	ldr r0, [sp]
	lsrs r4, r0, #8
	adds r5, r4, #0
	movs r1, #0xff
	ands r5, r1
	movs r0, #0xc0
	lsls r0, r0, #5
	mov sl, r0
	mov r1, sl
	orrs r5, r1
	movs r0, #0
	orrs r5, r0
	strh r5, [r7, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031F78
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031F78
	ldrh r1, [r7, #0x1c]
	ldr r0, _08031FA8
	cmp r1, r0
	bne _08031F78
	mov r0, sb
	strh r0, [r7, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031F78
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031F78
	ldrh r1, [r7, #0x1c]
	ldr r0, _08031FAC
	cmp r1, r0
	bne _08031F78
	strh r5, [r7, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031F78
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031F78
	ldrh r1, [r7, #0x1c]
	ldr r0, _08031FB0
	cmp r1, r0
	bne _08031F78
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r7, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031F78
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031F78
	ldrh r1, [r7, #0x1c]
	ldr r0, _08031FB4
	cmp r1, r0
	bne _08031F78
	movs r0, #0xff
	ands r4, r0
	mov r1, sl
	orrs r4, r1
	strh r4, [r7, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031F78
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031F78
	ldrh r1, [r7, #0x1c]
	ldr r0, _08031FB8
	cmp r1, r0
	bne _08031F78
	ldr r0, _08031FBC
	strh r0, [r7, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031F78
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031F78
	ldrh r1, [r7, #0x1c]
	ldr r0, _08031FC0
	cmp r1, r0
	beq _08031F8E
_08031F78:
	subs r6, #1
	cmp r6, #0
	beq _08031F80
	b _08031E5A
_08031F80:
	movs r0, #1
	cmp r0, #0
	beq _08031F8E
	ldr r0, _08031FA0
	adds r0, #0x34
	movs r1, #8
	strb r1, [r0]
_08031F8E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031FA0: .4byte 0x03000C38
_08031FA4: .4byte 0x0000290D
_08031FA8: .4byte 0x00002910
_08031FAC: .4byte 0x0000290E
_08031FB0: .4byte 0x00002911
_08031FB4: .4byte 0x0000290F
_08031FB8: .4byte 0x00002912
_08031FBC: .4byte 0x00001913
_08031FC0: .4byte 0x00002913

	THUMB_FUNC_START sub_8031FC4
sub_8031FC4: @ 0x08031FC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08031FE8
	adds r2, r0, #0
	adds r2, #0x33
	movs r1, #0xc
	strb r1, [r2]
	movs r1, #0xa8
	lsls r1, r1, #6
	strh r1, [r0, #0x24]
	movs r6, #1
	movs r5, #1
	movs r4, #1
	ldr r0, _08031FEC
	mov r8, r0
	ldr r7, _08031FF0
	b _08032002
	.align 2, 0
_08031FE8: .4byte 0x03000C38
_08031FEC: .4byte 0x00001B15
_08031FF0: .4byte 0x00001B18
_08031FF4:
	cmp r0, r7
	bne _08031FFC
	movs r6, #1
	b _0803202A
_08031FFC:
	subs r4, #1
	cmp r4, #0
	beq _0803202C
_08032002:
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031FFC
	bl sub_8032830
	ldr r1, _08032048
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08031FFC
	ldrh r0, [r1, #0x1e]
	cmp r0, r8
	bne _08031FF4
	movs r6, #0
_0803202A:
	movs r5, #0
_0803202C:
	cmp r6, #0
	bne _08032034
	cmp r5, #0
	beq _0803203C
_08032034:
	ldr r0, _08032048
	adds r0, #0x34
	movs r1, #0xa
	strb r1, [r0]
_0803203C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032048: .4byte 0x03000C38

	THUMB_FUNC_START sub_803204C
sub_803204C: @ 0x0803204C
	push {r4, r5, r6, r7, lr}
	ldr r2, _08032068
	adds r1, r2, #0
	adds r1, #0x33
	movs r0, #0xc
	strb r0, [r1]
	ldrh r0, [r2, #0x26]
	ldrh r1, [r2, #0x2a]
	cmp r0, r1
	bne _08032074
	ldr r0, _0803206C
	strh r0, [r2, #0x24]
	movs r7, #0
	b _0803207A
	.align 2, 0
_08032068: .4byte 0x03000C38
_0803206C: .4byte 0x00001B15
_08032070:
	movs r6, #0
	b _080320AA
_08032074:
	ldr r0, _080320C0
	strh r0, [r2, #0x24]
	movs r7, #1
_0803207A:
	movs r6, #1
	movs r4, #1
	movs r5, #0xa8
	lsls r5, r5, #6
_08032082:
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _080320A4
	bl sub_8032830
	ldr r1, _080320C4
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _080320A4
	ldrh r0, [r1, #0x1c]
	cmp r0, r5
	beq _08032070
_080320A4:
	subs r4, #1
	cmp r4, #0
	bne _08032082
_080320AA:
	cmp r7, #0
	bne _080320B2
	cmp r6, #0
	beq _080320BA
_080320B2:
	ldr r0, _080320C4
	adds r0, #0x34
	movs r1, #0xa
	strb r1, [r0]
_080320BA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080320C0: .4byte 0x00001B18
_080320C4: .4byte 0x03000C38

	THUMB_FUNC_START sub_80320C8
sub_80320C8: @ 0x080320C8
	push {r4, r5, r6, r7, lr}
	ldr r2, _080320E4
	adds r1, r2, #0
	adds r1, #0x33
	movs r0, #0xc
	strb r0, [r1]
	ldrh r0, [r2, #0x26]
	ldrh r1, [r2, #0x2a]
	cmp r0, r1
	bne _080320F0
	ldr r0, _080320E8
	strh r0, [r2, #0x24]
	movs r7, #0
	b _080320F6
	.align 2, 0
_080320E4: .4byte 0x03000C38
_080320E8: .4byte 0x00002B15
_080320EC:
	movs r6, #0
	b _0803212A
_080320F0:
	ldr r0, _08032140
	strh r0, [r2, #0x24]
	movs r7, #1
_080320F6:
	movs r6, #1
	movs r4, #1
	movs r5, #0xd0
	lsls r5, r5, #5
_080320FE:
	bl WaitForVBlank
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08032124
	bl sub_8032830
	ldr r1, _08032144
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08032124
	ldrh r0, [r1, #0x1e]
	cmp r0, r5
	beq _080320EC
_08032124:
	subs r4, #1
	cmp r4, #0
	bne _080320FE
_0803212A:
	cmp r7, #0
	bne _08032132
	cmp r6, #0
	beq _0803213A
_08032132:
	ldr r0, _08032144
	adds r0, #0x34
	movs r1, #0xa
	strb r1, [r0]
_0803213A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032140: .4byte 0x00002B18
_08032144: .4byte 0x03000C38

	THUMB_FUNC_START sub_8032148
sub_8032148: @ 0x08032148
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0803216C
	adds r2, r0, #0
	adds r2, #0x33
	movs r1, #0xc
	strb r1, [r2]
	movs r1, #0xd0
	lsls r1, r1, #5
	strh r1, [r0, #0x24]
	movs r6, #0
	movs r5, #1
	movs r4, #1
	ldr r0, _08032170
	mov r8, r0
	ldr r7, _08032174
	b _08032186
	.align 2, 0
_0803216C: .4byte 0x03000C38
_08032170: .4byte 0x00002B15
_08032174: .4byte 0x00002B18
_08032178:
	cmp r0, r7
	bne _08032180
	movs r6, #1
	b _080321AA
_08032180:
	subs r4, #1
	cmp r4, #0
	beq _080321AC
_08032186:
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08032180
	bl sub_8032830
	ldr r1, _080321C8
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08032180
	ldrh r0, [r1, #0x1c]
	cmp r0, r8
	bne _08032178
	movs r6, #0
_080321AA:
	movs r5, #0
_080321AC:
	cmp r6, #0
	bne _080321B4
	cmp r5, #0
	beq _080321BC
_080321B4:
	ldr r0, _080321C8
	adds r0, #0x34
	movs r1, #0xa
	strb r1, [r0]
_080321BC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080321C8: .4byte 0x03000C38

	THUMB_FUNC_START sub_80321CC
sub_80321CC: @ 0x080321CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08032228
	adds r1, r2, #0
	adds r1, #0x33
	movs r0, #3
	strb r0, [r1]
	movs r5, #0
	ldr r1, [r2, #4]
	ldr r0, [r2]
	cmp r1, r0
	bhs _08032282
	adds r7, r2, #0
_080321E8:
	movs r6, #0xc
	bl WaitForVBlank
	cmp r5, #0
	bne _08032272
	ldr r1, [r7, #4]
	ldr r0, [r7]
	cmp r1, r0
	bhs _08032272
	ldr r4, _08032228
	ldr r0, _0803222C
	mov r8, r0
_08032200:
	ldr r0, [r4, #0x14]
	ldrb r0, [r0]
	movs r2, #0x8c
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #0x24]
	ldr r0, _08032230
	bl sub_8030EE0
	bl sub_8030EBC
	bl sub_8030E88
	cmp r0, #0
	beq _08032234
	bl sub_8030ECC
_08032224:
	movs r5, #1
	b _08032262
	.align 2, 0
_08032228: .4byte 0x03000C38
_0803222C: .4byte 0x000014FD
_08032230: .4byte 0x0000D880
_08032234:
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08032224
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08032224
	bl sub_8032830
	ldrh r0, [r4, #0x1e]
	cmp r0, r8
	bne _08032224
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	adds r0, #1
	str r0, [r4, #0x14]
	subs r6, #1
_08032262:
	cmp r6, #0
	beq _08032272
	cmp r5, #0
	bne _08032272
	ldr r1, [r4, #4]
	ldr r0, [r4]
	cmp r1, r0
	blo _08032200
_08032272:
	bl sub_8030ECC
	cmp r5, #0
	bne _08032286
	ldr r1, [r7, #4]
	ldr r0, [r7]
	cmp r1, r0
	blo _080321E8
_08032282:
	cmp r5, #0
	beq _0803228E
_08032286:
	ldr r0, _08032298
	adds r0, #0x34
	movs r1, #4
	strb r1, [r0]
_0803228E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032298: .4byte 0x03000C38

	THUMB_FUNC_START sub_803229C
sub_803229C: @ 0x0803229C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080322F4
	adds r1, r2, #0
	adds r1, #0x33
	movs r0, #5
	strb r0, [r1]
	movs r5, #0
	ldr r1, [r2, #4]
	ldr r0, [r2]
	cmp r1, r0
	bhs _08032366
	adds r7, r2, #0
_080322BA:
	movs r6, #0xc
	bl WaitForVBlank
	cmp r5, #0
	bne _08032356
	ldr r1, [r7, #4]
	ldr r0, [r7]
	cmp r1, r0
	bhs _08032356
	ldr r4, _080322F4
	movs r0, #0x98
	lsls r0, r0, #5
	mov r8, r0
_080322D4:
	ldr r0, _080322F8
	strh r0, [r4, #0x24]
	ldr r0, _080322FC
	bl sub_8030EE0
	bl sub_8030EBC
	bl sub_8030E88
	cmp r0, #0
	beq _08032300
	bl sub_8030ECC
_080322EE:
	movs r5, #1
	b _08032346
	.align 2, 0
_080322F4: .4byte 0x03000C38
_080322F8: .4byte 0x000024FD
_080322FC: .4byte 0x0000D880
_08032300:
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080322EE
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _080322EE
	bl sub_8032830
	ldrh r2, [r4, #0x1e]
	movs r0, #0xff
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r8
	bne _080322EE
	ldr r0, [r4, #0x18]
	strb r2, [r0]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r4, #0x26]
	adds r0, r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	subs r6, #1
_08032346:
	cmp r6, #0
	beq _08032356
	cmp r5, #0
	bne _08032356
	ldr r1, [r4, #4]
	ldr r0, [r4]
	cmp r1, r0
	blo _080322D4
_08032356:
	bl sub_8030ECC
	cmp r5, #0
	bne _0803236A
	ldr r1, [r7, #4]
	ldr r0, [r7]
	cmp r1, r0
	blo _080322BA
_08032366:
	cmp r5, #0
	beq _08032372
_0803236A:
	ldr r0, _08032380
	adds r0, #0x34
	movs r1, #7
	strb r1, [r0]
_08032372:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032380: .4byte 0x03000C38

	THUMB_FUNC_START sub_8032384
sub_8032384: @ 0x08032384
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r6, _0803241C
	ldr r5, _08032420
	adds r2, r5, #0
	adds r2, #0x33
	movs r1, #0
	movs r0, #3
	strb r0, [r2]
	ldr r4, _08032424
	strh r1, [r4]
	ldr r0, [r5, #0x14]
	ldrb r0, [r0]
	movs r2, #0x98
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #0x24]
	bl sub_803281C
	adds r0, r6, #0
	bl sub_8008478
	movs r0, #1
	strh r0, [r4]
	movs r0, #1
	mov r8, r0
	movs r6, #1
	adds r5, #0x34
	mov sb, r5
_080323C4:
	bl sub_8030DDC
	cmp r0, #0
	beq _080323CE
	movs r6, #0
_080323CE:
	movs r2, #0
	strh r2, [r4]
	ldr r5, _08032420
	movs r7, #1
	strh r7, [r4]
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _080323E2
	movs r6, #0
_080323E2:
	ldr r1, [r5, #4]
	ldr r0, [r5]
	cmp r1, r0
	blo _080323F0
	movs r0, #0
	mov r8, r0
	movs r6, #0
_080323F0:
	cmp r6, #1
	beq _080323C4
	ldr r4, _08032424
	strh r2, [r4]
	ldr r0, _08032428
	bl sub_8008478
	strh r7, [r4]
	mov r1, r8
	cmp r1, #0
	beq _0803240E
	adds r1, r5, #0
	adds r1, #0x34
	movs r0, #6
	strb r0, [r1]
_0803240E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803241C: .4byte 0x03001479
_08032420: .4byte 0x03000C38
_08032424: .4byte 0x04000208
_08032428: .4byte 0x08030D55

	THUMB_FUNC_START sub_803242C
sub_803242C: @ 0x0803242C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _080324B0
	ldr r2, _080324B4
	adds r3, r2, #0
	adds r3, #0x33
	movs r1, #0
	movs r0, #5
	strb r0, [r3]
	ldr r4, _080324B8
	strh r1, [r4]
	ldr r0, _080324BC
	strh r0, [r2, #0x24]
	bl sub_803281C
	adds r0, r5, #0
	bl sub_8008478
	movs r0, #1
	strh r0, [r4]
	movs r0, #1
	mov r8, r0
	movs r5, #1
_0803245C:
	bl sub_8030DDC
	cmp r0, #0
	beq _08032466
	movs r5, #0
_08032466:
	movs r3, #0
	strh r3, [r4]
	ldr r1, _080324B4
	adds r7, r1, #0
	adds r7, #0x34
	ldrb r0, [r7]
	ldr r2, [r1, #4]
	movs r6, #1
	strh r6, [r4]
	cmp r0, #0
	beq _0803247E
	movs r5, #0
_0803247E:
	ldr r0, [r1]
	cmp r2, r0
	blo _0803248A
	movs r0, #0
	mov r8, r0
	movs r5, #0
_0803248A:
	cmp r5, #1
	beq _0803245C
	ldr r4, _080324B8
	strh r3, [r4]
	ldr r0, _080324C0
	bl sub_8008478
	strh r6, [r4]
	mov r0, r8
	cmp r0, #0
	beq _080324A4
	movs r0, #5
	strb r0, [r7]
_080324A4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080324B0: .4byte 0x03001579
_080324B4: .4byte 0x03000C38
_080324B8: .4byte 0x04000208
_080324BC: .4byte 0x000014FD
_080324C0: .4byte 0x08030D55

	THUMB_FUNC_START sub_80324C4
sub_80324C4: @ 0x080324C4
	push {r4, r5, lr}
	bl sub_8030D84
	movs r5, #0xa
_080324CC:
	cmp r5, #0
	beq _080324FC
	bl sub_80326EC
	bl sub_80326D4
	bl sub_80311CC
	ldr r0, _080324F8
	adds r4, r0, #0
	adds r4, #0x34
	ldrb r0, [r4]
	cmp r0, #0
	bne _080324F2
	bl sub_8031208
	ldrb r0, [r4]
	cmp r0, #0
	beq _08032506
_080324F2:
	subs r5, #1
	b _080324CC
	.align 2, 0
_080324F8: .4byte 0x03000C38
_080324FC:
	ldr r0, _08032514
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803250A
_08032506:
	bl sub_8032518
_0803250A:
	bl sub_8030DB0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032514: .4byte 0x03000C38

	THUMB_FUNC_START sub_8032518
sub_8032518: @ 0x08032518
	push {r4, r5, r6, lr}
	movs r5, #1
	ldr r4, _08032538
	adds r6, r4, #0
	adds r6, #0x34
_08032522:
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803253C
	cmp r0, #1
	beq _08032542
	movs r0, #2
	strb r0, [r6]
	b _08032546
	.align 2, 0
_08032538: .4byte 0x03000C38
_0803253C:
	bl sub_8031424
	b _08032546
_08032542:
	bl sub_80314E8
_08032546:
	ldrb r0, [r6]
	cmp r0, #0
	beq _08032552
	subs r5, #1
	cmp r5, #0
	bne _08032522
_08032552:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x70, 0xB5, 0x01, 0x25, 0x06, 0x4C, 0x26, 0x1C
	.byte 0x34, 0x36, 0x20, 0x1C, 0x31, 0x30, 0x00, 0x78, 0x00, 0x28, 0x07, 0xD0, 0x01, 0x28, 0x08, 0xD0
	.byte 0x0F, 0x20, 0x30, 0x70, 0x07, 0xE0, 0x00, 0x00, 0x38, 0x0C, 0x00, 0x03, 0xFF, 0xF7, 0xCE, 0xF8
	.byte 0x01, 0xE0, 0xFF, 0xF7, 0x27, 0xF9, 0x30, 0x78, 0x00, 0x28, 0x02, 0xD0, 0x01, 0x3D, 0x00, 0x2D
	.byte 0xE7, 0xD1, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x70, 0xB5, 0x01, 0x25, 0x06, 0x4C, 0x26, 0x1C
	.byte 0x34, 0x36, 0x20, 0x1C, 0x31, 0x30, 0x00, 0x78, 0x00, 0x28, 0x07, 0xD0, 0x01, 0x28, 0x08, 0xD0
	.byte 0x03, 0x20, 0x30, 0x70, 0x07, 0xE0, 0x00, 0x00, 0x38, 0x0C, 0x00, 0x03, 0xFE, 0xF7, 0xF0, 0xFF
	.byte 0x01, 0xE0, 0xFF, 0xF7, 0x4F, 0xF8, 0x01, 0x3D, 0x00, 0x2D, 0xEA, 0xD1, 0x70, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80325D4
sub_80325D4: @ 0x080325D4
	push {r4, lr}
	bl sub_803269C
	bl sub_80326B8
	bl sub_80326EC
	bl sub_80326D4
	ldr r0, _08032630
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	ldr r1, _08032634
	strh r1, [r0, #0x28]
	movs r1, #0
	adds r0, #0x2a
_080325FC:
	strh r1, [r0]
	adds r0, #2
	adds r1, #1
	cmp r1, #2
	bls _080325FC
	movs r1, #0
	ldr r4, _08032638
	ldr r3, _0803263C
	movs r2, #0
_0803260E:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, r4
	bls _0803260E
	movs r1, #0
	ldr r4, _08032638
	ldr r3, _08032640
	movs r2, #0
_08032620:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, r4
	bls _08032620
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032630: .4byte 0x03000C38
_08032634: .4byte 0x00001111
_08032638: .4byte 0x000003FF
_0803263C: .4byte 0x03000C78
_08032640: .4byte 0x03001078

	THUMB_FUNC_START sub_8032644
sub_8032644: @ 0x08032644
	adds r2, r0, #0
	movs r3, #0
	cmp r1, #0
	beq _08032658
_0803264C:
	ldrb r0, [r2]
	adds r3, r3, r0
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _0803264C
_08032658:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8032660
sub_8032660: @ 0x08032660
	push {r4, r5, lr}
	movs r4, #0
	movs r2, #0
	ldr r3, _08032688
	adds r1, r3, #0
	adds r1, #0x2a
_0803266C:
	adds r1, #2
	adds r2, #1
	cmp r2, #2
	bhi _0803267E
	ldrh r0, [r3, #0x2a]
	ldrh r5, [r1]
	cmp r0, r5
	beq _0803266C
	movs r4, #1
_0803267E:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08032688: .4byte 0x03000C38

	THUMB_FUNC_START sub_803268C
sub_803268C: @ 0x0803268C
	push {lr}
	bl sub_803269C
	bl sub_80326B8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803269C
sub_803269C: @ 0x0803269C
	movs r1, #0
	ldr r0, _080326B0
	ldr r2, _080326B4
	adds r0, #0x24
_080326A4:
	strh r2, [r0]
	adds r0, #2
	adds r1, #1
	cmp r1, #0
	beq _080326A4
	bx lr
	.align 2, 0
_080326B0: .4byte 0x03000C38
_080326B4: .4byte 0x0000EEEE

	THUMB_FUNC_START sub_80326B8
sub_80326B8: @ 0x080326B8
	movs r1, #0
	ldr r0, _080326CC
	ldr r2, _080326D0
	adds r0, #0x1c
_080326C0:
	strh r2, [r0]
	adds r0, #2
	adds r1, #1
	cmp r1, #3
	bls _080326C0
	bx lr
	.align 2, 0
_080326CC: .4byte 0x03000C38
_080326D0: .4byte 0x0000EEEE

	THUMB_FUNC_START sub_80326D4
sub_80326D4: @ 0x080326D4
	ldr r0, _080326E8
	movs r1, #0
	strh r1, [r0, #0x26]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r1, [r0, #0xc]
	str r1, [r0, #0x14]
	ldr r1, [r0, #0x10]
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0
_080326E8: .4byte 0x03000C38

	THUMB_FUNC_START sub_80326EC
sub_80326EC: @ 0x080326EC
	ldr r3, _08032710
	adds r1, r3, #0
	adds r1, #0x30
	movs r2, #0
	movs r0, #4
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x33
	strb r2, [r0]
	adds r1, #3
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x35
	strb r2, [r0]
	bx lr
	.align 2, 0
_08032710: .4byte 0x03000C38

	THUMB_FUNC_START sub_8032714
sub_8032714: @ 0x08032714
	ldr r2, _08032744
	ldr r0, _08032748
	ldrh r1, [r0]
	strh r1, [r2]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0803272C
	ldr r0, _0803274C
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08032768
_0803272C:
	ldrh r2, [r2]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0803273E
	movs r0, #0x80
	ands r0, r2
	cmp r0, #1
	bne _08032750
_0803273E:
	movs r0, #2
	b _0803276A
	.align 2, 0
_08032744: .4byte 0x02022EA8
_08032748: .4byte 0x04000128
_0803274C: .4byte 0x03000C38
_08032750:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _08032768
	ldr r0, _08032764
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08032768
	movs r0, #0
	b _0803276A
	.align 2, 0
_08032764: .4byte 0x03000C38
_08032768:
	movs r0, #1
_0803276A:
	bx lr

	THUMB_FUNC_START sub_803276C
sub_803276C: @ 0x0803276C
	push {r4, lr}
	bl sub_8030DB0
	ldr r3, _0803279C
	movs r1, #0
	strh r1, [r3]
	ldr r2, _080327A0
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	strh r0, [r2]
	strh r1, [r3]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r3, _080327A4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803279C: .4byte 0x04000134
_080327A0: .4byte 0x04000128
_080327A4: .4byte 0x00004003

	THUMB_FUNC_START sub_80327A8
sub_80327A8: @ 0x080327A8
	ldr r0, _080327B4
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	lsrs r0, r0, #4
	bx lr
	.align 2, 0
_080327B4: .4byte 0x04000128

	THUMB_FUNC_START sub_80327B8
sub_80327B8: @ 0x080327B8
	ldr r0, _080327C4
	ldrh r0, [r0]
	lsrs r0, r0, #6
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080327C4: .4byte 0x04000128

	THUMB_FUNC_START sub_80327C8
sub_80327C8: @ 0x080327C8
	push {r4, lr}
	ldr r0, _080327E8
	ldr r1, _080327EC
	ldr r4, _080327F0
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _080327F4
	ldr r1, _080327F8
	adds r2, r4, #0
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080327E8: .4byte sub_8030C14
_080327EC: .4byte 0x03001478
_080327F0: .4byte 0x04000040
_080327F4: .4byte sub_8030CA8
_080327F8: .4byte 0x03001578

	THUMB_FUNC_START sub_80327FC
sub_80327FC: @ 0x080327FC
	ldr r1, _08032810
	ldr r0, _08032814
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r2, _08032818
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_08032810: .4byte 0x0400012A
_08032814: .4byte 0x03000C5C
_08032818: .4byte 0x04000128

	THUMB_FUNC_START sub_803281C
sub_803281C: @ 0x0803281C
	ldr r0, _08032828
	ldr r1, _0803282C
	ldrh r1, [r1]
	strh r1, [r0]
	bx lr
	.align 2, 0
_08032828: .4byte 0x0400012A
_0803282C: .4byte 0x03000C5C

	THUMB_FUNC_START sub_8032830
sub_8032830: @ 0x08032830
	ldr r2, _08032840
	ldr r0, _08032844
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	bx lr
	.align 2, 0
_08032840: .4byte 0x03000C54
_08032844: .4byte 0x04000120

.section .text5
//trunk_sort funcs start?


	THUMB_FUNC_START sub_8032E98
sub_8032E98: @ 0x08032E98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08032F3C
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08032F2C
	mov sb, r0
	ldr r0, _08032F40
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08032EB8:
	ldr r1, _08032F44
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _08032F48
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _08032F4C
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032F1C
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08032F1C:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08032EB8
_08032F2C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032F3C: .4byte gCardSortContext
_08032F40: .4byte gTrunkCardQty
_08032F44: .4byte 0x08E0CC20
_08032F48: .4byte gCardAtks
_08032F4C: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_8032F50
sub_8032F50: @ 0x08032F50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08032FF4
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08032FE4
	mov sb, r0
	ldr r0, _08032FF8
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08032F70:
	ldr r1, _08032FFC
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _08033000
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _08033004
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032FD4
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08032FD4:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08032F70
_08032FE4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032FF4: .4byte gCardSortContext
_08032FF8: .4byte 0x02022120
_08032FFC: .4byte 0x08E0CC20
_08033000: .4byte gCardAtks
_08033004: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_8033008
sub_8033008: @ 0x08033008
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _080330AC
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _0803309C
	mov sb, r0
	ldr r0, _080330B0
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033028:
	ldr r1, _080330B4
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _080330B8
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _080330BC
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803308C
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_0803308C:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033028
_0803309C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080330AC: .4byte gCardSortContext
_080330B0: .4byte 0x02022B80
_080330B4: .4byte 0x08E0CC20
_080330B8: .4byte gCardAtks
_080330BC: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_80330C0
sub_80330C0: @ 0x080330C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08033148
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08033138
	mov sb, r0
	ldr r2, _0803314C
	mov sl, r2
	movs r0, #0
	mov ip, r0
_080330DE:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r2, _08033150
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _08033154
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _080330DE
_08033138:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033148: .4byte gCardSortContext
_0803314C: .4byte 0x08E0CC20
_08033150: .4byte gCardAtks
_08033154: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_8033158
sub_8033158: @ 0x08033158
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _080331FC
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _080331EC
	mov sb, r0
	ldr r0, _08033200
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033178:
	ldr r1, _08033204
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _08033208
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _0803320C
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _080331DC
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_080331DC:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033178
_080331EC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080331FC: .4byte gCardSortContext
_08033200: .4byte gTotalCardQty
_08033204: .4byte 0x08E0CC20
_08033208: .4byte gCardAtks
_0803320C: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_8033210
sub_8033210: @ 0x08033210
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _080332B4
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _080332A4
	mov sb, r0
	ldr r0, _080332B8
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033230:
	ldr r1, _080332BC
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _080332C0
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _080332C4
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033294
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033294:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033230
_080332A4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080332B4: .4byte gCardSortContext
_080332B8: .4byte gTrunkCardQty
_080332BC: .4byte 0x08E0CC20
_080332C0: .4byte gCardDefs
_080332C4: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_80332C8
sub_80332C8: @ 0x080332C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _0803336C
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _0803335C
	mov sb, r0
	ldr r0, _08033370
	mov sl, r0
	movs r1, #0
	mov r8, r1
_080332E8:
	ldr r1, _08033374
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _08033378
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _0803337C
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803334C
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_0803334C:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _080332E8
_0803335C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803336C: .4byte gCardSortContext
_08033370: .4byte 0x02022120
_08033374: .4byte 0x08E0CC20
_08033378: .4byte gCardDefs
_0803337C: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_8033380
sub_8033380: @ 0x08033380
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033424
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033414
	mov sb, r0
	ldr r0, _08033428
	mov sl, r0
	movs r1, #0
	mov r8, r1
_080333A0:
	ldr r1, _0803342C
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _08033430
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _08033434
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033404
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033404:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _080333A0
_08033414:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033424: .4byte gCardSortContext
_08033428: .4byte 0x02022B80
_0803342C: .4byte 0x08E0CC20
_08033430: .4byte gCardDefs
_08033434: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_8033438
sub_8033438: @ 0x08033438
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _080334C0
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _080334B0
	mov sb, r0
	ldr r2, _080334C4
	mov sl, r2
	movs r0, #0
	mov ip, r0
_08033456:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r2, _080334C8
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _080334CC
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08033456
_080334B0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080334C0: .4byte gCardSortContext
_080334C4: .4byte 0x08E0CC20
_080334C8: .4byte gCardDefs
_080334CC: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_80334D0
sub_80334D0: @ 0x080334D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033574
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033564
	mov sb, r0
	ldr r0, _08033578
	mov sl, r0
	movs r1, #0
	mov r8, r1
_080334F0:
	ldr r1, _0803357C
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _08033580
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _08033584
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033554
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033554:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _080334F0
_08033564:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033574: .4byte gCardSortContext
_08033578: .4byte gTotalCardQty
_0803357C: .4byte 0x08E0CC20
_08033580: .4byte gCardDefs
_08033584: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_8033588
sub_8033588: @ 0x08033588
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033624
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033616
	mov sb, r0
	ldr r0, _08033628
	mov sl, r0
	movs r1, #0
	mov r8, r1
_080335A8:
	ldr r1, _0803362C
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _08033630
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0xff
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033606
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033606:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _080335A8
_08033616:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033624: .4byte gCardSortContext
_08033628: .4byte gTrunkCardQty
_0803362C: .4byte 0x08E0CC20
_08033630: .4byte gCardTypes

	THUMB_FUNC_START sub_8033634
sub_8033634: @ 0x08033634
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _080336D0
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _080336C2
	mov sb, r0
	ldr r0, _080336D4
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033654:
	ldr r1, _080336D8
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _080336DC
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0xff
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _080336B2
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_080336B2:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033654
_080336C2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080336D0: .4byte gCardSortContext
_080336D4: .4byte 0x02022120
_080336D8: .4byte 0x08E0CC20
_080336DC: .4byte gCardTypes

	THUMB_FUNC_START sub_80336E0
sub_80336E0: @ 0x080336E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _0803377C
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _0803376E
	mov sb, r0
	ldr r0, _08033780
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033700:
	ldr r1, _08033784
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _08033788
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0xff
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803375E
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_0803375E:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033700
_0803376E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803377C: .4byte gCardSortContext
_08033780: .4byte 0x02022B80
_08033784: .4byte 0x08E0CC20
_08033788: .4byte gCardTypes

	THUMB_FUNC_START sub_803378C
sub_803378C: @ 0x0803378C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _0803380C
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _080337FE
	mov sb, r0
	ldr r2, _08033810
	mov sl, r2
	movs r0, #0
	mov ip, r0
_080337AA:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r2, _08033814
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0xff
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _080337AA
_080337FE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803380C: .4byte gCardSortContext
_08033810: .4byte 0x08E0CC20
_08033814: .4byte gCardTypes

	THUMB_FUNC_START sub_8033818
sub_8033818: @ 0x08033818
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _080338B4
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _080338A6
	mov sb, r0
	ldr r0, _080338B8
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033838:
	ldr r1, _080338BC
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _080338C0
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0xff
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033896
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033896:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033838
_080338A6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080338B4: .4byte gCardSortContext
_080338B8: .4byte gTotalCardQty
_080338BC: .4byte 0x08E0CC20
_080338C0: .4byte gCardTypes

	THUMB_FUNC_START sub_80338C4
sub_80338C4: @ 0x080338C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033968
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _0803395A
	mov sb, r0
	ldr r0, _0803396C
	mov sl, r0
	movs r1, #0
	mov r8, r1
_080338E4:
	ldr r1, _08033970
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _08033974
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803394A
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_0803394A:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _080338E4
_0803395A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033968: .4byte gCardSortContext
_0803396C: .4byte gTrunkCardQty
_08033970: .4byte 0x08E0CC20
_08033974: .4byte gCardAttributes

	THUMB_FUNC_START sub_8033978
sub_8033978: @ 0x08033978
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033A1C
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033A0E
	mov sb, r0
	ldr r0, _08033A20
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033998:
	ldr r1, _08033A24
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _08033A28
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _080339FE
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_080339FE:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033998
_08033A0E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033A1C: .4byte gCardSortContext
_08033A20: .4byte 0x02022120
_08033A24: .4byte 0x08E0CC20
_08033A28: .4byte gCardAttributes

	THUMB_FUNC_START sub_8033A2C
sub_8033A2C: @ 0x08033A2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033AD0
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033AC2
	mov sb, r0
	ldr r0, _08033AD4
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033A4C:
	ldr r1, _08033AD8
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _08033ADC
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033AB2
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033AB2:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033A4C
_08033AC2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033AD0: .4byte gCardSortContext
_08033AD4: .4byte 0x02022B80
_08033AD8: .4byte 0x08E0CC20
_08033ADC: .4byte gCardAttributes

	THUMB_FUNC_START sub_8033AE0
sub_8033AE0: @ 0x08033AE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08033B68
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08033B5A
	mov sb, r0
	ldr r2, _08033B6C
	mov sl, r2
	movs r0, #0
	mov ip, r0
_08033AFE:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r2, _08033B70
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08033AFE
_08033B5A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033B68: .4byte gCardSortContext
_08033B6C: .4byte 0x08E0CC20
_08033B70: .4byte gCardAttributes

	THUMB_FUNC_START sub_8033B74
sub_8033B74: @ 0x08033B74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033C18
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033C0A
	mov sb, r0
	ldr r0, _08033C1C
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033B94:
	ldr r1, _08033C20
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _08033C24
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033BFA
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033BFA:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033B94
_08033C0A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033C18: .4byte gCardSortContext
_08033C1C: .4byte gTotalCardQty
_08033C20: .4byte 0x08E0CC20
_08033C24: .4byte gCardAttributes

	THUMB_FUNC_START sub_8033C28
sub_8033C28: @ 0x08033C28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08033CA8
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08033C98
	mov sb, r0
	ldr r2, _08033CAC
	mov sl, r2
	movs r0, #0
	mov ip, r0
_08033C46:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r2, [r6]
	lsls r2, r2, #2
	ldr r0, _08033CB0
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08033C46
_08033C98:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033CA8: .4byte gCardSortContext
_08033CAC: .4byte 0x08E0CC20
_08033CB0: .4byte gCardCosts

	THUMB_FUNC_START sub_8033CB4
sub_8033CB4: @ 0x08033CB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033D50
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033D40
	mov sb, r0
	ldr r0, _08033D54
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033CD4:
	ldr r1, _08033D58
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	lsls r2, r2, #2
	ldr r0, _08033D5C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033D30
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033D30:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _08033CD4
_08033D40:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033D50: .4byte gCardSortContext
_08033D54: .4byte gTrunkCardQty
_08033D58: .4byte 0x08E0CC20
_08033D5C: .4byte gCardCosts

	THUMB_FUNC_START sub_8033D60
sub_8033D60: @ 0x08033D60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033DFC
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033DEC
	mov sb, r0
	ldr r0, _08033E00
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033D80:
	ldr r1, _08033E04
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	lsls r2, r2, #2
	ldr r0, _08033E08
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033DDC
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033DDC:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _08033D80
_08033DEC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033DFC: .4byte gCardSortContext
_08033E00: .4byte 0x02022120
_08033E04: .4byte 0x08E0CC20
_08033E08: .4byte gCardCosts

	THUMB_FUNC_START sub_8033E0C
sub_8033E0C: @ 0x08033E0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033EA8
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033E98
	mov sb, r0
	ldr r0, _08033EAC
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033E2C:
	ldr r1, _08033EB0
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	lsls r2, r2, #2
	ldr r0, _08033EB4
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033E88
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033E88:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _08033E2C
_08033E98:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033EA8: .4byte gCardSortContext
_08033EAC: .4byte 0x02022B80
_08033EB0: .4byte 0x08E0CC20
_08033EB4: .4byte gCardCosts

	THUMB_FUNC_START sub_8033EB8
sub_8033EB8: @ 0x08033EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08033F38
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08033F28
	mov sb, r0
	ldr r2, _08033F3C
	mov sl, r2
	movs r0, #0
	mov ip, r0
_08033ED6:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r2, [r6]
	lsls r2, r2, #2
	ldr r0, _08033F40
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08033ED6
_08033F28:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033F38: .4byte gCardSortContext
_08033F3C: .4byte 0x08E0CC20
_08033F40: .4byte gCardCosts

	THUMB_FUNC_START sub_8033F44
sub_8033F44: @ 0x08033F44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033FE0
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033FD0
	mov sb, r0
	ldr r0, _08033FE4
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033F64:
	ldr r1, _08033FE8
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	lsls r2, r2, #2
	ldr r0, _08033FEC
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033FC0
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033FC0:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _08033F64
_08033FD0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033FE0: .4byte gCardSortContext
_08033FE4: .4byte gTotalCardQty
_08033FE8: .4byte 0x08E0CC20
_08033FEC: .4byte gCardCosts

	THUMB_FUNC_START sub_8033FF0
sub_8033FF0: @ 0x08033FF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _0803406C
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _0803405E
	mov sb, r0
	ldr r2, _08034070
	mov sl, r2
	movs r0, #0
	mov ip, r0
_0803400E:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _08034074
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _0803400E
_0803405E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803406C: .4byte gCardSortContext
_08034070: .4byte 0x08E0CC20
_08034074: .4byte gTrunkCardQty

	THUMB_FUNC_START sub_8034078
sub_8034078: @ 0x08034078
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov sl, r0
	ldr r0, _08034110
	ldrh r1, [r0, #8]
	cmp sl, r1
	bhs _08034100
	mov sb, r0
	movs r7, #0
_08034092:
	ldr r2, _08034114
	ldr r1, [r2]
	mov r0, sl
	lsls r6, r0, #1
	adds r1, r7, r1
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, [r2]
	adds r1, r6, r1
	ldrh r0, [r1]
	ldr r2, _08034118
	strh r0, [r2, #0x10]
	ldr r2, _0803411C
	ldrh r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	ldr r1, _08034118
	strb r0, [r1, #0x12]
	bl sub_800BD44
	ldr r2, _08034114
	ldr r2, [r2]
	mov r8, r2
	add r8, r7
	ldr r2, _08034118
	ldr r0, [r2]
	ldr r1, [r2, #4]
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	mov r1, sb
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	adds r7, #0xc
	movs r0, #1
	add sl, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp sl, r1
	blo _08034092
_08034100:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034110: .4byte gCardSortContext
_08034114: .4byte 0x08E0CC20
_08034118: .4byte 0x02021AF0
_0803411C: .4byte 0x02022120

	THUMB_FUNC_START sub_8034120
sub_8034120: @ 0x08034120
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov sb, r0
	ldr r0, _080341D8
	ldrh r1, [r0, #8]
	cmp sb, r1
	bhs _080341C8
	mov sl, r0
	movs r2, #0
	mov r8, r2
_0803413C:
	ldr r0, _080341DC
	ldr r1, [r0]
	mov r2, sb
	lsls r6, r2, #1
	add r1, r8
	mov r2, sl
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, [r2]
	adds r1, r6, r1
	ldrh r0, [r1]
	ldr r2, _080341E0
	strh r0, [r2, #0x10]
	ldr r2, _080341E4
	ldrh r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	ldr r1, _080341E0
	strb r0, [r1, #0x12]
	bl sub_800BDA0
	ldr r2, _080341DC
	ldr r0, [r2]
	mov r1, r8
	adds r7, r1, r0
	ldr r2, _080341E0
	ldr r0, [r2, #8]
	ldr r1, [r2, #0xc]
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	mov r1, sl
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldr r1, _080341E8
	ldrh r0, [r6]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080341B8
	ldr r2, _080341EC
	ldr r3, _080341F0
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	str r0, [r7, #4]
	str r1, [r7, #8]
_080341B8:
	movs r2, #0xc
	add r8, r2
	movs r0, #1
	add sb, r0
	mov r1, sl
	ldrh r1, [r1, #8]
	cmp sb, r1
	blo _0803413C
_080341C8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080341D8: .4byte gCardSortContext
_080341DC: .4byte 0x08E0CC20
_080341E0: .4byte 0x02021AF0
_080341E4: .4byte 0x02022120
_080341E8: .4byte 0x02022B80
_080341EC: .4byte 0x00000000
_080341F0: .4byte 0x10000000

	THUMB_FUNC_START sub_80341F4
sub_80341F4: @ 0x080341F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08034270
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08034262
	mov sb, r0
	ldr r2, _08034274
	mov sl, r2
	movs r0, #0
	mov ip, r0
_08034212:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _08034278
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08034212
_08034262:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034270: .4byte gCardSortContext
_08034274: .4byte 0x08E0CC20
_08034278: .4byte gCardLevels

	THUMB_FUNC_START sub_803427C
sub_803427C: @ 0x0803427C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08034314
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08034306
	mov sb, r0
	ldr r0, _08034318
	mov sl, r0
	movs r1, #0
	mov r8, r1
_0803429C:
	ldr r1, _0803431C
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _08034320
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _080342F6
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_080342F6:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _0803429C
_08034306:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034314: .4byte gCardSortContext
_08034318: .4byte gTrunkCardQty
_0803431C: .4byte 0x08E0CC20
_08034320: .4byte gCardLevels

	THUMB_FUNC_START sub_8034324
sub_8034324: @ 0x08034324
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _080343BC
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _080343AE
	mov sb, r0
	ldr r0, _080343C0
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08034344:
	ldr r1, _080343C4
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _080343C8
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803439E
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_0803439E:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _08034344
_080343AE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080343BC: .4byte gCardSortContext
_080343C0: .4byte 0x02022120
_080343C4: .4byte 0x08E0CC20
_080343C8: .4byte gCardLevels

	THUMB_FUNC_START sub_80343CC
sub_80343CC: @ 0x080343CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08034464
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08034456
	mov sb, r0
	ldr r0, _08034468
	mov sl, r0
	movs r1, #0
	mov r8, r1
_080343EC:
	ldr r1, _0803446C
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _08034470
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034446
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08034446:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _080343EC
_08034456:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034464: .4byte gCardSortContext
_08034468: .4byte 0x02022B80
_0803446C: .4byte 0x08E0CC20
_08034470: .4byte gCardLevels

	THUMB_FUNC_START sub_8034474
sub_8034474: @ 0x08034474
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _080344F0
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _080344E2
	mov sb, r0
	ldr r2, _080344F4
	mov sl, r2
	movs r0, #0
	mov ip, r0
_08034492:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _080344F8
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08034492
_080344E2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080344F0: .4byte gCardSortContext
_080344F4: .4byte 0x08E0CC20
_080344F8: .4byte gCardLevels

	THUMB_FUNC_START sub_80344FC
sub_80344FC: @ 0x080344FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08034594
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08034586
	mov sb, r0
	ldr r0, _08034598
	mov sl, r0
	movs r1, #0
	mov r8, r1
_0803451C:
	ldr r1, _0803459C
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _080345A0
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034576
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08034576:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _0803451C
_08034586:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034594: .4byte gCardSortContext
_08034598: .4byte gTotalCardQty
_0803459C: .4byte 0x08E0CC20
_080345A0: .4byte gCardLevels

	THUMB_FUNC_START sub_80345A4
sub_80345A4: @ 0x080345A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov sl, r0
	ldr r0, _08034624
	ldrh r1, [r0, #8]
	cmp sl, r1
	bhs _08034616
	adds r7, r0, #0
	movs r2, #0
	mov sb, r2
_080345C0:
	ldr r0, _08034628
	ldr r1, [r0]
	mov r2, sl
	lsls r6, r2, #1
	add r1, sb
	ldr r0, [r7]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, r6, r0
	ldrh r0, [r0]
	bl GetDeckCardQty
	ldr r1, _08034628
	ldr r1, [r1]
	mov r8, r1
	add r8, sb
	asrs r1, r0, #0x1f
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldr r0, [r7]
	adds r6, r6, r0
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add sb, r0
	movs r1, #1
	add sl, r1
	ldrh r2, [r7, #8]
	cmp sl, r2
	blo _080345C0
_08034616:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034624: .4byte gCardSortContext
_08034628: .4byte 0x08E0CC20

	THUMB_FUNC_START sub_803462C
sub_803462C: @ 0x0803462C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _080346A8
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _0803469A
	mov sb, r0
	ldr r2, _080346AC
	mov sl, r2
	movs r0, #0
	mov ip, r0
_0803464A:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _080346B0
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _0803464A
_0803469A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080346A8: .4byte gCardSortContext
_080346AC: .4byte 0x08E0CC20
_080346B0: .4byte gTotalCardQty

	THUMB_FUNC_START sub_80346B4
sub_80346B4: @ 0x080346B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r1, _08034754
	ldrh r0, [r1, #8]
	cmp r7, r0
	bhs _08034746
	ldr r0, _08034758
	mov ip, r0
	ldr r0, _0803475C
	mov sl, r0
	ldr r0, _08034760
	mov sb, r0
	ldr r0, _08034764
	mov r8, r0
	movs r6, #0
_080346DA:
	ldr r1, [r1]
	lsls r0, r7, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	mov r1, ip
	ldr r0, [r1]
	adds r5, r6, r0
	strh r4, [r5]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r5, #4]
	str r3, [r5, #8]
	mov r1, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034710
	ldr r0, _08034768
	ldr r1, _0803476C
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_08034710:
	mov r1, sb
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034724
	mov r1, r8
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803473A
_08034724:
	mov r1, ip
	ldr r0, [r1]
	adds r0, r6, r0
	ldr r1, [r0, #4]
	ldr r2, [r0, #8]
	ldr r3, _08034770
	ldr r4, _08034774
	adds r1, r1, r3
	adcs r2, r4
	str r1, [r0, #4]
	str r2, [r0, #8]
_0803473A:
	adds r6, #0xc
	adds r7, #1
	ldr r1, _08034754
	ldrh r0, [r1, #8]
	cmp r7, r0
	blo _080346DA
_08034746:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034754: .4byte gCardSortContext
_08034758: .4byte 0x08E0CC20
_0803475C: .4byte gTotalCardQty
_08034760: .4byte gCardMonsterEffects
_08034764: .4byte gUnk8094CC3
_08034768: .4byte 0x00000640
_0803476C: .4byte 0x00000000
_08034770: .4byte 0x00000320
_08034774: .4byte 0x00000000

	THUMB_FUNC_START sub_8034778
sub_8034778: @ 0x08034778
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
	ldr r1, _080347F4
	mov sb, r1
	ldrh r0, [r1, #8]
	cmp r5, r0
	bhs _080347E6
	ldr r2, _080347F8
	mov r8, r2
	ldr r7, _080347FC
	mov ip, r7
	ldr r0, _08034800
	mov sl, r0
	movs r6, #0
_0803479C:
	ldr r1, [r1]
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	mov r2, r8
	ldr r0, [r2]
	adds r4, r6, r0
	strh r1, [r4]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r4, #4]
	str r3, [r4, #8]
	mov r7, ip
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _080347CE
	mov r7, sl
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _080347DA
_080347CE:
	ldr r0, _08034804
	ldr r1, _08034808
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r4, #4]
	str r3, [r4, #8]
_080347DA:
	adds r6, #0xc
	adds r5, #1
	mov r1, sb
	ldrh r0, [r1, #8]
	cmp r5, r0
	blo _0803479C
_080347E6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080347F4: .4byte gCardSortContext
_080347F8: .4byte 0x08E0CC20
_080347FC: .4byte gCardMonsterEffects
_08034800: .4byte gUnk8094CC3
_08034804: .4byte 0x00000320
_08034808: .4byte 0x00000000

	THUMB_FUNC_START sub_803480C
sub_803480C: @ 0x0803480C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _080348AC
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _0803489C
	ldr r1, _080348B0
	mov r8, r1
	ldr r1, _080348B4
	mov sl, r1
	ldr r1, _080348B8
	mov sb, r1
	movs r6, #0
	mov ip, r6
_08034830:
	ldr r0, [r0]
	add r0, ip
	ldrh r4, [r0]
	mov r1, r8
	ldr r0, [r1]
	adds r5, r6, r0
	strh r4, [r5]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r5, #4]
	str r3, [r5, #8]
	ldr r1, _080348BC
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034860
	mov r1, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803486C
_08034860:
	ldr r0, _080348C0
	ldr r1, _080348C4
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_0803486C:
	mov r1, sb
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803488C
	mov r1, r8
	ldr r0, [r1]
	adds r0, r6, r0
	ldr r1, [r0, #4]
	ldr r2, [r0, #8]
	ldr r3, _080348C8
	ldr r4, _080348CC
	adds r1, r1, r3
	adcs r2, r4
	str r1, [r0, #4]
	str r2, [r0, #8]
_0803488C:
	adds r6, #0xc
	movs r0, #2
	add ip, r0
	adds r7, #1
	ldr r0, _080348AC
	ldrh r1, [r0, #8]
	cmp r7, r1
	blo _08034830
_0803489C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080348AC: .4byte gCardSortContext
_080348B0: .4byte 0x08E0CC20
_080348B4: .4byte gUnk8094CC3
_080348B8: .4byte 0x02022B80
_080348BC: .4byte gCardMonsterEffects
_080348C0: .4byte 0x00000320
_080348C4: .4byte 0x00000000
_080348C8: .4byte 0x00000640
_080348CC: .4byte 0x00000000

	THUMB_FUNC_START sub_80348D0
sub_80348D0: @ 0x080348D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08034970
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08034960
	ldr r1, _08034974
	mov r8, r1
	ldr r1, _08034978
	mov sl, r1
	ldr r1, _0803497C
	mov sb, r1
	movs r6, #0
	mov ip, r6
_080348F4:
	ldr r0, [r0]
	add r0, ip
	ldrh r4, [r0]
	mov r1, r8
	ldr r0, [r1]
	adds r5, r6, r0
	strh r4, [r5]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r5, #4]
	str r3, [r5, #8]
	ldr r1, _08034980
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034924
	mov r1, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034930
_08034924:
	ldr r0, _08034984
	ldr r1, _08034988
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_08034930:
	mov r1, sb
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034950
	mov r1, r8
	ldr r0, [r1]
	adds r0, r6, r0
	ldr r1, [r0, #4]
	ldr r2, [r0, #8]
	ldr r3, _0803498C
	ldr r4, _08034990
	adds r1, r1, r3
	adcs r2, r4
	str r1, [r0, #4]
	str r2, [r0, #8]
_08034950:
	adds r6, #0xc
	movs r0, #2
	add ip, r0
	adds r7, #1
	ldr r0, _08034970
	ldrh r1, [r0, #8]
	cmp r7, r1
	blo _080348F4
_08034960:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034970: .4byte gCardSortContext
_08034974: .4byte 0x08E0CC20
_08034978: .4byte gUnk8094CC3
_0803497C: .4byte 0x02022120
_08034980: .4byte gCardMonsterEffects
_08034984: .4byte 0x00000320
_08034988: .4byte 0x00000000
_0803498C: .4byte 0x00000640
_08034990: .4byte 0x00000000
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x83, 0xB0
	.byte 0x00, 0x21, 0x23, 0x48, 0x80, 0x46, 0x00, 0x26, 0x00, 0x25, 0x42, 0x46, 0x10, 0x89, 0x01, 0x31
	.byte 0x40, 0x1A, 0x8A, 0x46, 0x86, 0x42, 0x2D, 0xDA, 0x1E, 0x4B, 0x9C, 0x46, 0x64, 0x46, 0x21, 0x68
	.byte 0x68, 0x00, 0x40, 0x19, 0x80, 0x00, 0x81, 0x46, 0x42, 0x18, 0x13, 0x1C, 0x0C, 0x33, 0x99, 0x68
	.byte 0x90, 0x68, 0x81, 0x42, 0x05, 0xD8, 0x81, 0x42, 0x13, 0xD1, 0x59, 0x68, 0x50, 0x68, 0x81, 0x42
	.byte 0x0F, 0xD9, 0x69, 0x46, 0x10, 0x1C, 0xD0, 0xC8, 0xD0, 0xC1, 0x11, 0x1C, 0x18, 0x1C, 0xC4, 0xC8
	.byte 0xC4, 0xC1, 0x63, 0x46, 0x19, 0x68, 0x49, 0x44, 0x0C, 0x31, 0x68, 0x46, 0xD0, 0xC8, 0xD0, 0xC1
	.byte 0x01, 0x26, 0x68, 0x1C, 0x00, 0x04, 0x05, 0x0C, 0x41, 0x46, 0x08, 0x89, 0x52, 0x46, 0x80, 0x1A
	.byte 0x85, 0x42, 0xD3, 0xDB, 0x53, 0x46, 0x18, 0x04, 0x01, 0x0C, 0x01, 0x2E, 0xC3, 0xD0, 0x03, 0xB0
	.byte 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xB0, 0x2E, 0x02, 0x02, 0x20, 0xCC, 0xE0, 0x08

	THUMB_FUNC_START SortCardsAccordingToContext
SortCardsAccordingToContext: @ 0x08034A38
	push {r4, r5, lr}
	ldr r4, _08034A80
	ldrb r0, [r4, #0xa]
	cmp r0, #0x39
	bhi _08034A7A
	bl sub_8034DF8
	ldr r0, _08034A84
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	bl SortCardsDescending
	movs r2, #0
	ldrh r0, [r4, #8]
	cmp r2, r0
	bhs _08034A7A
	ldr r5, _08034A88
	movs r3, #0
	ldr r1, [r4]
_08034A66:
	ldr r0, [r5]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r3, #0xc
	adds r1, #2
	adds r2, #1
	ldrh r0, [r4, #8]
	cmp r2, r0
	blo _08034A66
_08034A7A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034A80: .4byte gCardSortContext
_08034A84: .4byte 0x08E0CC28
_08034A88: .4byte 0x08E0CC20

	THUMB_FUNC_START sub_8034A8C
sub_8034A8C: @ 0x08034A8C
	push {lr}
	ldr r0, _08034AB0
	ldrh r1, [r0, #8]
	cmp r1, #0
	beq _08034AAC
	movs r0, #0xc8
	lsls r0, r0, #2
	cmp r1, r0
	bhi _08034AAC
	ldr r0, _08034AB4
	ldr r0, [r0]
	adds r0, #0x80
	movs r1, #0
	str r1, [r0]
	bl SortCardsDescending
_08034AAC:
	pop {r0}
	bx r0
	.align 2, 0
_08034AB0: .4byte gCardSortContext
_08034AB4: .4byte 0x08E0CC24

	THUMB_FUNC_START sub_8034AB8
sub_8034AB8: @ 0x08034AB8
	push {r4, r5, r6, lr}
	movs r3, #0
	ldr r0, _08034AE8
	ldrh r1, [r0, #8]
	cmp r3, r1
	bhs _08034AE2
	ldr r6, _08034AEC
	adds r5, r0, #0
	movs r4, #0
_08034ACA:
	ldr r2, [r6]
	lsls r1, r3, #1
	adds r2, r4, r2
	ldr r0, [r5]
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	adds r4, #0xc
	adds r3, #1
	ldrh r0, [r5, #8]
	cmp r3, r0
	blo _08034ACA
_08034AE2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034AE8: .4byte gCardSortContext
_08034AEC: .4byte 0x08E0CC20

	THUMB_FUNC_START sub_8034AF0
sub_8034AF0: @ 0x08034AF0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08034B38
	movs r4, #0
	ldrh r1, [r0, #8]
	cmp r4, r1
	bhs _08034B30
	adds r6, r0, #0
	ldr r2, _08034B3C
	mov ip, r2
	movs r5, #0
	ldr r7, _08034B40
_08034B06:
	ldr r3, [r7]
	lsls r1, r4, #1
	adds r3, r5, r3
	mov r2, ip
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r0, [r6]
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	str r0, [r3, #4]
	str r1, [r3, #8]
	adds r5, #0xc
	adds r4, #1
	ldrh r0, [r6, #8]
	cmp r4, r0
	blo _08034B06
_08034B30:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034B38: .4byte gCardSortContext
_08034B3C: .4byte 0x080CDEC4
_08034B40: .4byte 0x08E0CC20

	THUMB_FUNC_START sub_8034B44
sub_8034B44: @ 0x08034B44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r4, #0
	ldr r0, _08034BA8
	ldrh r1, [r0, #8]
	cmp r4, r1
	bhs _08034B9C
	adds r6, r0, #0
	ldr r0, _08034BAC
	mov r8, r0
	ldr r1, _08034BB0
	mov ip, r1
	ldr r7, _08034BB4
	movs r5, #0
_08034B62:
	mov r0, ip
	ldr r3, [r0]
	lsls r1, r4, #1
	adds r3, r5, r3
	ldr r0, [r6]
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r0, [r6]
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #1
	ldrb r2, [r7]
	ldr r1, _08034BB8
	muls r1, r2, r1
	adds r0, r0, r1
	add r0, r8
	ldrh r2, [r0]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	str r0, [r3, #4]
	str r1, [r3, #8]
	adds r5, #0xc
	adds r4, #1
	ldrh r1, [r6, #8]
	cmp r4, r1
	blo _08034B62
_08034B9C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034BA8: .4byte gCardSortContext
_08034BAC: .4byte 0x080D0444
_08034BB0: .4byte 0x08E0CC20
_08034BB4: .4byte gLanguage
_08034BB8: .4byte 0x00000642

	THUMB_FUNC_START sub_8034BBC
sub_8034BBC: @ 0x08034BBC
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r7, _08034BF4
	ldrh r0, [r7, #8]
	cmp r2, r0
	bhs _08034BEE
	ldr r0, _08034BF8
	mov ip, r0
	movs r5, #0
	movs r6, #0
	ldr r4, _08034BFC
	movs r3, #0
_08034BD4:
	mov r0, ip
	ldr r1, [r0]
	adds r1, r3, r1
	ldrh r0, [r4]
	strh r0, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	adds r4, #2
	adds r3, #0xc
	adds r2, #1
	ldrh r0, [r7, #8]
	cmp r2, r0
	blo _08034BD4
_08034BEE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034BF4: .4byte gCardSortContext
_08034BF8: .4byte 0x08E0CC20
_08034BFC: .4byte 0x080CEB44

	THUMB_FUNC_START sub_8034C00
sub_8034C00: @ 0x08034C00
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r7, _08034C38
	ldrh r0, [r7, #8]
	cmp r2, r0
	bhs _08034C32
	ldr r0, _08034C3C
	mov ip, r0
	movs r5, #0
	movs r6, #0
	ldr r4, _08034C40
	movs r3, #0
_08034C18:
	mov r0, ip
	ldr r1, [r0]
	adds r1, r3, r1
	ldrh r0, [r4]
	strh r0, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	adds r4, #2
	adds r3, #0xc
	adds r2, #1
	ldrh r0, [r7, #8]
	cmp r2, r0
	blo _08034C18
_08034C32:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034C38: .4byte gCardSortContext
_08034C3C: .4byte 0x08E0CC20
_08034C40: .4byte 0x080CF184

	THUMB_FUNC_START sub_8034C44
sub_8034C44: @ 0x08034C44
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r7, _08034C7C
	ldrh r0, [r7, #8]
	cmp r2, r0
	bhs _08034C76
	ldr r0, _08034C80
	mov ip, r0
	movs r5, #0
	movs r6, #0
	ldr r4, _08034C84
	movs r3, #0
_08034C5C:
	mov r0, ip
	ldr r1, [r0]
	adds r1, r3, r1
	ldrh r0, [r4]
	strh r0, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	adds r4, #2
	adds r3, #0xc
	adds r2, #1
	ldrh r0, [r7, #8]
	cmp r2, r0
	blo _08034C5C
_08034C76:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034C7C: .4byte gCardSortContext
_08034C80: .4byte 0x08E0CC20
_08034C84: .4byte 0x080CF7C4

	THUMB_FUNC_START sub_8034C88
sub_8034C88: @ 0x08034C88
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r7, _08034CC0
	ldrh r0, [r7, #8]
	cmp r2, r0
	bhs _08034CBA
	ldr r0, _08034CC4
	mov ip, r0
	movs r5, #0
	movs r6, #0
	ldr r4, _08034CC8
	movs r3, #0
_08034CA0:
	mov r0, ip
	ldr r1, [r0]
	adds r1, r3, r1
	ldrh r0, [r4]
	strh r0, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	adds r4, #2
	adds r3, #0xc
	adds r2, #1
	ldrh r0, [r7, #8]
	cmp r2, r0
	blo _08034CA0
_08034CBA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034CC0: .4byte gCardSortContext
_08034CC4: .4byte 0x08E0CC20
_08034CC8: .4byte 0x080CFE04

	THUMB_FUNC_START sub_8034CCC
sub_8034CCC: @ 0x08034CCC
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r0, _08034D10
	ldrh r1, [r0, #8]
	cmp r4, r1
	bhs _08034D08
	adds r5, r0, #0
	movs r6, #0
	ldr r7, _08034D14
_08034CDE:
	ldr r3, [r7]
	lsls r1, r4, #1
	adds r3, r6, r3
	ldr r0, [r5]
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r0, [r5]
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	str r0, [r3, #4]
	str r1, [r3, #8]
	adds r6, #0xc
	adds r4, #1
	ldrh r0, [r5, #8]
	cmp r4, r0
	blo _08034CDE
_08034D08:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034D10: .4byte gCardSortContext
_08034D14: .4byte 0x08E0CC20

	THUMB_FUNC_START sub_8034D18
sub_8034D18: @ 0x08034D18
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r4, #0
	ldr r0, _08034D7C
	ldrh r1, [r0, #8]
	cmp r4, r1
	bhs _08034D70
	adds r6, r0, #0
	ldr r0, _08034D80
	mov r8, r0
	ldr r1, _08034D84
	mov ip, r1
	ldr r7, _08034D88
	movs r5, #0
_08034D36:
	mov r0, ip
	ldr r3, [r0]
	lsls r1, r4, #1
	adds r3, r5, r3
	ldr r0, [r6]
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r0, [r6]
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #1
	ldrb r2, [r7]
	ldr r1, _08034D8C
	muls r1, r2, r1
	adds r0, r0, r1
	add r0, r8
	ldrh r2, [r0]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	str r0, [r3, #4]
	str r1, [r3, #8]
	adds r5, #0xc
	adds r4, #1
	ldrh r1, [r6, #8]
	cmp r4, r1
	blo _08034D36
_08034D70:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034D7C: .4byte gCardSortContext
_08034D80: .4byte 0x080D0444
_08034D84: .4byte 0x08E0CC20
_08034D88: .4byte gLanguage
_08034D8C: .4byte 0x00000642

	THUMB_FUNC_START PushSortRange
PushSortRange: @ 0x08034D90
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08034DA4
	ldr r1, [r0]
	adds r1, #0x80
	ldr r1, [r1]
	cmp r1, #0x1f
	bls _08034DA8
_08034DA0:
	b _08034DA0
	.align 2, 0
_08034DA4: .4byte 0x08E0CC24
_08034DA8:
	ldr r1, [r0]
	adds r3, r1, #0
	adds r3, #0x80
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r1, r1, r0
	ldr r0, [r4]
	str r0, [r1]
	adds r2, #1
	str r2, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START PopSortRange
PopSortRange: @ 0x08034DC4
	adds r3, r0, #0
	ldr r0, _08034DE4
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0x80
	ldr r0, [r1]
	cmp r0, #0
	beq _08034DE0
	subs r0, #1
	str r0, [r1]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [r3]
_08034DE0:
	bx lr
	.align 2, 0
_08034DE4: .4byte 0x08E0CC24

	THUMB_FUNC_START ClearSortRangeStack
ClearSortRangeStack: @ 0x08034DE8
	ldr r0, _08034DF4
	ldr r0, [r0]
	adds r0, #0x80
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_08034DF4: .4byte 0x08E0CC24

	THUMB_FUNC_START sub_8034DF8
sub_8034DF8: @ 0x08034DF8
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08034E14
	ldr r2, _08034E18
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08034E14: .4byte 0x02018800
_08034E18: .4byte 0x0100218A

	THUMB_FUNC_START sub_8034E1C
sub_8034E1C: @ 0x08034E1C
	ldr r0, _08034E2C
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	movs r2, #0
	strh r1, [r0, #8]
	strb r2, [r0, #0xa]
	bx lr
	.align 2, 0
_08034E2C: .4byte gCardSortContext

//trunk_sort funcs end??

.section .text6

// TradeMenu

	THUMB_FUNC_START sub_8038F1C
sub_8038F1C: @ 0x08038F1C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08039070
	ldr r2, _08039074
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	bl CopyStarTile
	adds r0, r4, #0
	adds r0, #0x40
	bl CopySwordTile
	adds r0, r4, #0
	adds r0, #0x60
	bl CopyShieldTile
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r1, _08039078
	ldr r2, _0803907C
	bl CopyStringTilesToVRAMBuffer
	movs r5, #0
	mov r7, sp
	adds r7, #2
	ldr r4, _08039080
_08038F5E:
	ldr r1, _08039084
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #7
	ldr r2, _08039088
	adds r1, r1, r2
	movs r2, #0x40
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bls _08038F5E
	movs r5, #0
	ldr r4, _0803908C
_08038F88:
	ldr r1, _08039084
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #7
	ldr r2, _08039090
	adds r1, r1, r2
	movs r2, #0x40
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x14
	bls _08038F88
	movs r5, #0
	ldr r4, _0803908C
_08038FB2:
	ldr r2, _08039084
	adds r1, r5, #0
	adds r1, #0x15
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #8
	ldr r6, _08039094
	adds r1, r1, r6
	movs r2, #0x80
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08038FB2
	ldr r0, _08039098
	bl sub_8008BF8
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
	strh r4, [r7]
	ldr r2, _0803909C
	adds r1, r6, r2
	ldr r2, _080390A0
	adds r0, r7, #0
	bl CpuSet
	movs r5, #0
	ldr r7, _080390A4
	adds r6, r4, #0
	ldr r0, _080390A8
	mov ip, r0
_08039000:
	lsls r0, r5, #1
	add r0, ip
	ldrh r3, [r0]
	ldr r1, _080390AC
	adds r1, r5, r1
	ldr r0, _080390B0
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r0, r0, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080390B4
	adds r2, r0, r1
	movs r4, #0
	adds r5, #1
_08039026:
	adds r0, r3, #0
	ands r0, r7
	orrs r0, r6
	strh r0, [r2]
	adds r0, r3, #1
	ands r0, r7
	orrs r0, r6
	strh r0, [r2, #2]
	adds r0, r3, #2
	ands r0, r7
	orrs r0, r6
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r0, r3, #3
	ands r0, r7
	orrs r0, r6
	strh r0, [r1, #2]
	adds r0, r3, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _08039026
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08039000
	bl sub_803A0AC
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039070: .4byte 0x0200C400
_08039074: .4byte 0x01000010
_08039078: .4byte 0x080DDF34
_0803907C: .4byte 0x00001801
_08039080: .4byte gAttributeIconTiles
_08039084: .4byte gLanguage
_08039088: .4byte 0x0200C620
_0803908C: .4byte gTypeIconTiles
_08039090: .4byte 0x0200CC20
_08039094: .4byte 0x0200D6A0
_08039098: .4byte 0x020000A0
_0803909C: .4byte 0x00002560
_080390A0: .4byte 0x01000400
_080390A4: .4byte 0x000003FF
_080390A8: .4byte 0x080DD6C8
_080390AC: .4byte 0x080DD6BE
_080390B0: .4byte 0x080DD6C3
_080390B4: .4byte 0x02000400

	THUMB_FUNC_START sub_80390B8
sub_80390B8: @ 0x080390B8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08039118
	adds r2, r0, r2
	ldr r1, _0803911C
	adds r0, r0, r1
	ldrb r4, [r0]
	lsls r4, r4, #5
	movs r0, #0xf8
	lsls r0, r0, #7
	adds r4, r4, r0
	ldrb r2, [r2]
	adds r4, r4, r2
	lsls r4, r4, #1
	ldr r0, _08039120
	adds r4, r4, r0
	ldr r0, _08039124
	ldrh r0, [r0, #0x10]
	movs r1, #1
	bl ConvertU16ToDigitBuffer
	ldr r2, _08039128
	ldrb r0, [r2]
	adds r0, #7
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r2, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039118: .4byte 0x080DD6B4
_0803911C: .4byte 0x080DD6B9
_08039120: .4byte 0x02000400
_08039124: .4byte gCardInfo
_08039128: .4byte 0x02021BD0

	THUMB_FUNC_START sub_803912C
sub_803912C: @ 0x0803912C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r4, #0
	movs r5, #0
	ldr r0, _080391E8
	ldr r0, [r0]
	bl GetCurrentLanguageString
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803919A
	ldr r1, _080391EC
	mov ip, r1
	lsls r3, r6, #1
	ldr r7, _080391F0
	mov r8, r7
	cmp r0, #0x24
	beq _0803919A
_0803915A:
	adds r0, r2, r4
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08039174
	mov r7, sp
	adds r0, r7, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08039174:
	mov r0, sp
	adds r1, r0, r4
	adds r0, r2, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bhi _080391C0
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803919A
	cmp r0, #0x24
	bne _0803915A
_0803919A:
	ldr r1, _080391EC
	mov ip, r1
	lsls r3, r6, #1
	ldr r2, _080391F0
	mov r8, r2
	cmp r5, #0x13
	bhi _080391C0
	movs r1, #0x20
_080391AA:
	mov r7, sp
	adds r0, r7, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _080391AA
_080391C0:
	mov r0, sp
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
	mov r1, ip
	adds r0, r3, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	add r0, r8
	ldr r2, _080391F4
	mov r1, sp
	bl CopyStringTilesToVRAMBuffer
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080391E8: .4byte gCardInfo
_080391EC: .4byte 0x080DD6C8
_080391F0: .4byte 0x0200C400
_080391F4: .4byte 0x00000901

	THUMB_FUNC_START sub_80391F8
sub_80391F8: @ 0x080391F8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080392E8
	mov r8, r0
	bl CopySwordTile
	mov r0, r8
	adds r0, #0x20
	bl CopyShieldTile
	ldr r1, _080392EC
	mov sl, r1
	ldrh r0, [r1, #0x12]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	ldr r0, _080392F0
	adds r0, r4, r0
	ldrb r6, [r0]
	ldr r0, _080392F4
	adds r4, r4, r0
	ldrb r4, [r4]
	lsls r0, r4, #5
	movs r3, #0xf8
	lsls r3, r3, #7
	mov sb, r3
	add r0, sb
	adds r0, r6, r0
	lsls r0, r0, #1
	ldr r1, _080392F8
	add r8, r1
	mov r3, r8
	adds r2, r0, r3
	ldr r1, _080392FC
	adds r0, r1, #0
	strh r0, [r2]
	adds r2, #2
	ldr r5, _08039300
	ldrb r0, [r5]
	adds r0, #7
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r0, [r5, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r0, [r5, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r0, [r5, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r5, #4]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2, #2]
	mov r1, sl
	ldrh r0, [r1, #0x14]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	adds r4, #1
	lsls r4, r4, #5
	add r4, sb
	adds r6, r6, r4
	lsls r6, r6, #1
	mov r3, r8
	adds r2, r6, r3
	ldr r1, _08039304
	adds r0, r1, #0
	strh r0, [r2]
	adds r2, #2
	ldrb r0, [r5]
	adds r0, #7
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r0, [r5, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r0, [r5, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r0, [r5, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r5, #4]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2, #2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080392E8: .4byte 0x0200C440
_080392EC: .4byte gCardInfo
_080392F0: .4byte 0x080DD6F0
_080392F4: .4byte 0x080DD6F5
_080392F8: .4byte 0xFFFF3FC0
_080392FC: .4byte 0x00005002
_08039300: .4byte 0x02021BD0
_08039304: .4byte 0x00005003

	THUMB_FUNC_START sub_8039308
sub_8039308: @ 0x08039308
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _08039410
	adds r1, r4, r1
	ldr r0, _08039414
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r0, r0, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08039418
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _0803941C
	mov sl, r0
	ldrb r0, [r0, #0x16]
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08039430
	mov r1, sl
	ldrb r0, [r1, #0x16]
	lsls r0, r0, #0x13
	ldr r2, _08039420
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	adds r0, r4, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r4, #0xa0
	lsls r4, r4, #7
	adds r5, r4, #0
	mov r0, ip
	strh r5, [r0]
	strh r5, [r0, #2]
	mov r2, sb
	lsls r3, r2, #0xc
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ldr r4, _08039424
	ands r1, r4
	orrs r1, r3
	mov r0, ip
	strh r1, [r0, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	mov r0, ip
	strh r2, [r0, #6]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ands r1, r4
	orrs r1, r3
	mov r0, ip
	strh r1, [r0, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	mov r0, ip
	strh r2, [r0, #0xa]
	adds r0, #0x40
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	mov r5, ip
	adds r5, #0x44
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ands r1, r4
	orrs r1, r3
	strh r1, [r5]
	adds r5, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	strh r2, [r5]
	mov r2, ip
	adds r2, #0x48
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ands r1, r4
	orrs r1, r3
	strh r1, [r2]
	mov r0, ip
	adds r0, #0x4a
	ands r7, r4
	orrs r3, r7
	strh r3, [r0]
	ldr r1, _08039428
	mov r2, sl
	ldrb r0, [r2, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r4, sb
	lsls r1, r4, #5
	ldr r2, _0803942C
	adds r1, r1, r2
	movs r2, #0x10
	bl CpuSet
	b _08039514
	.align 2, 0
_08039410: .4byte 0x080DD6F0
_08039414: .4byte 0x080DD6F5
_08039418: .4byte 0x02000400
_0803941C: .4byte gCardInfo
_08039420: .4byte 0xFFED0000
_08039424: .4byte 0x000003FF
_08039428: .4byte gTypeIconPalettes
_0803942C: .4byte 0x02000000
_08039430:
	mov r1, sl
	ldrb r0, [r1, #0x16]
	lsls r0, r0, #0x12
	movs r2, #0x82
	lsls r2, r2, #0xf
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	adds r3, r7, #0
	adds r0, r4, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldrb r1, [r1, #0x17]
	lsls r1, r1, #0x12
	movs r0, #0x88
	lsls r0, r0, #0xd
	adds r1, r1, r0
	adds r4, #0xb
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	movs r2, #0xa0
	lsls r2, r2, #7
	mov r8, r2
	mov r4, ip
	strh r2, [r4]
	strh r2, [r4, #2]
	mov r0, sb
	lsls r6, r0, #0xc
	adds r7, #1
	adds r0, r7, #0
	ldr r2, _08039524
	ands r3, r2
	orrs r3, r6
	strh r3, [r4, #4]
	adds r7, #1
	adds r3, r7, #0
	ands r0, r2
	orrs r0, r6
	strh r0, [r4, #6]
	ldr r4, [sp]
	lsls r5, r4, #0xc
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	ands r0, r2
	orrs r0, r5
	mov r4, ip
	strh r0, [r4, #8]
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	ands r0, r2
	orrs r0, r5
	mov r4, ip
	strh r0, [r4, #0xa]
	adds r4, #0x40
	mov r0, r8
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
	mov r0, ip
	adds r0, #0x44
	adds r7, #1
	ands r3, r2
	orrs r3, r6
	strh r3, [r0]
	adds r0, #2
	ands r7, r2
	orrs r6, r7
	strh r6, [r0]
	mov r3, ip
	adds r3, #0x48
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	lsrs r1, r1, #0x10
	ands r0, r2
	orrs r0, r5
	strh r0, [r3]
	mov r0, ip
	adds r0, #0x4a
	ands r1, r2
	orrs r5, r1
	strh r5, [r0]
	ldr r1, _08039528
	mov r2, sl
	ldrb r0, [r2, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r4, sb
	lsls r1, r4, #5
	ldr r5, _0803952C
	adds r1, r1, r5
	movs r2, #0x10
	bl CpuSet
	ldr r1, _08039530
	mov r2, sl
	ldrb r0, [r2, #0x17]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [sp]
	lsls r4, r1, #5
	adds r4, r4, r5
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
_08039514:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039524: .4byte 0x000003FF
_08039528: .4byte gTypeIconPalettes
_0803952C: .4byte 0x02000000
_08039530: .4byte gAttributeIconPalettes

	THUMB_FUNC_START sub_8039534
sub_8039534: @ 0x08039534
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08039604
	mov r8, r0
	ldr r1, _08039608
	ldr r2, _0803960C
	bl CopyStringTilesToVRAMBuffer
	ldr r0, _08039610
	adds r0, r4, r0
	ldrb r6, [r0]
	ldr r0, _08039614
	adds r4, r4, r0
	ldrb r5, [r4]
	lsls r0, r5, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	mov sb, r1
	add r0, sb
	adds r0, r6, r0
	lsls r0, r0, #1
	ldr r1, _08039618
	add r8, r1
	mov r1, r8
	adds r3, r0, r1
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
	strh r4, [r3]
	adds r3, #2
	movs r2, #3
	movs r0, #2
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	movs r1, #4
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	movs r2, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	adds r3, #2
	movs r1, #6
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	strh r4, [r3, #2]
	ldr r0, _0803961C
	ldrh r0, [r0, #0xc]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	adds r5, #1
	lsls r5, r5, #5
	add r5, sb
	adds r6, r6, r5
	lsls r6, r6, #1
	mov r1, r8
	adds r3, r6, r1
	strh r4, [r3]
	adds r3, #2
	ldr r1, _08039620
	ldrb r0, [r1]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #1]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #2]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #3]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	ldrb r0, [r1, #4]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3, #2]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039604: .4byte 0x0200C440
_08039608: .4byte 0x080DDF4C
_0803960C: .4byte 0x00000801
_08039610: .4byte 0x080DD6F0
_08039614: .4byte 0x080DD6F5
_08039618: .4byte 0xFFFF3FC0
_0803961C: .4byte gCardInfo
_08039620: .4byte 0x02021BD0

	THUMB_FUNC_START sub_8039624
sub_8039624: @ 0x08039624
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803969C
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, #0x1c
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r2, _080396A0
	adds r2, r0, r2
	ldr r1, _080396A4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _080396A8
	adds r2, r0, r1
	movs r6, #0
	ldr r5, _080396AC
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_0803965E:
	adds r0, r3, #0
	ands r0, r5
	orrs r0, r4
	strh r0, [r2]
	adds r0, r3, #1
	ands r0, r5
	orrs r0, r4
	strh r0, [r2, #2]
	adds r0, r3, #2
	ands r0, r5
	orrs r0, r4
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r0, r3, #3
	ands r0, r5
	orrs r0, r4
	strh r0, [r1, #2]
	adds r0, r3, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0803965E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803969C: .4byte 0x080DD6C8
_080396A0: .4byte 0x080DD6F0
_080396A4: .4byte 0x080DD6F5
_080396A8: .4byte 0x02000400
_080396AC: .4byte 0x000003FF

	THUMB_FUNC_START sub_80396B0
sub_80396B0: @ 0x080396B0
	push {r4, r5, r6, lr}
	ldr r1, _08039710
	ldr r5, _08039714
	ldr r3, _08039718
	ldr r0, _0803971C
	adds r3, r3, r0
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r2, [r0]
	ldr r4, _08039720
	adds r0, r4, #0
	ands r0, r2
	movs r6, #0xa0
	lsls r6, r6, #7
	adds r2, r6, #0
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #1
	ands r0, r4
	orrs r0, r2
	strh r0, [r1]
	adds r1, #0x3e
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #2
	ands r0, r4
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #3
	ands r0, r4
	orrs r0, r2
	strh r0, [r1, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039710: .4byte 0x02007438
_08039714: .4byte 0x080DD712
_08039718: .4byte 0x02022EC0
_0803971C: .4byte 0x00000FAA
_08039720: .4byte 0x000003FF

	THUMB_FUNC_START sub_8039724
sub_8039724: @ 0x08039724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08039834
	ldr r5, _08039838
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl CpuSet
	adds r4, #0x20
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r5, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r0, _0803983C
	ldr r6, _08039840
	adds r1, r6, #0
	movs r2, #0x10
	bl CpuSet
	ldr r4, _08039844
	adds r1, r5, #0
	adds r1, #0x20
	adds r0, r4, #0
	movs r2, #0x20
	bl CpuSet
	adds r4, #0x40
	movs r1, #0x84
	lsls r1, r1, #3
	adds r5, r5, r1
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	ldr r0, _08039848
	adds r1, r6, #0
	adds r1, #0x20
	movs r2, #0x10
	bl CpuSet
	ldr r2, _0803984C
	adds r6, r6, r2
	adds r0, r6, #0
	bl CopyMiniCardPalette
	movs r5, #0
	mov sb, r5
	movs r0, #4
	rsbs r0, r0, #0
	mov sl, r0
	movs r7, #0x11
	rsbs r7, r7, #0
	movs r6, #0x3f
	movs r1, #0xd
	rsbs r1, r1, #0
	mov ip, r1
	ldr r2, _08039850
	mov r8, r2
_080397A8:
	lsls r3, r5, #3
	ldr r0, _08039854
	adds r3, r3, r0
	ldr r0, _08039858
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	strb r0, [r3]
	ldrb r1, [r3, #1]
	mov r0, sl
	ands r0, r1
	mov r1, ip
	ands r0, r1
	ands r0, r7
	movs r1, #0x20
	orrs r0, r1
	ands r0, r6
	strb r0, [r3, #1]
	ldr r0, _0803985C
	adds r0, r4, r0
	ldrh r1, [r0]
	ldr r2, _08039860
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r7
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r6
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, _08039864
	adds r4, r4, r0
	ldrh r0, [r4]
	ldr r1, _08039868
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0803986C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	movs r0, #0xc
	orrs r1, r0
	movs r0, #0xf
	ands r1, r0
	strb r1, [r3, #5]
	mov r0, sb
	strh r0, [r3, #6]
	adds r5, #1
	cmp r5, #4
	bls _080397A8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039834: .4byte 0x08A3571C
_08039838: .4byte 0x02011500
_0803983C: .4byte 0x08A3575C
_08039840: .4byte 0x02000340
_08039844: .4byte 0x08A3577C
_08039848: .4byte 0x08A357FC
_0803984C: .4byte 0xFFFFFEC0
_08039850: .4byte 0xFFFFFE00
_08039854: .4byte gOamBuffer
_08039858: .4byte 0x080DD726
_0803985C: .4byte 0x080DD730
_08039860: .4byte 0x000001FF
_08039864: .4byte 0x080DD73A
_08039868: .4byte 0x000003FF
_0803986C: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_8039870
sub_8039870: @ 0x08039870
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0803989C
	ldr r0, _080398A0
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080398A8
	adds r1, r0, #0
	movs r0, #0x76
	muls r0, r1, r0
	ldr r3, _080398A4
	adds r1, r2, r3
	ldrh r1, [r1]
	subs r1, #1
	bl __divsi3
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080398AA
	.align 2, 0
_0803989C: .4byte 0x02022EC0
_080398A0: .4byte 0x00000FA6
_080398A4: .4byte 0x00000FA4
_080398A8:
	movs r0, #0x18
_080398AA:
	ldr r2, _0803990C
	movs r7, #0
	mov r8, r7
	strb r0, [r2]
	movs r3, #0xd
	rsbs r3, r3, #0
	movs r4, #0x11
	rsbs r4, r4, #0
	movs r5, #0x21
	rsbs r5, r5, #0
	movs r6, #0x3f
	movs r0, #0x80
	strb r0, [r2, #1]
	ldrh r1, [r2, #2]
	ldr r0, _08039910
	ands r0, r1
	movs r7, #0xff
	lsls r7, r7, #1
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2, #2]
	ldrb r1, [r2, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	ands r0, r5
	ands r0, r6
	strb r0, [r2, #3]
	ldrh r1, [r2, #4]
	ldr r0, _08039914
	ands r0, r1
	movs r1, #0x88
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	ands r3, r0
	movs r0, #0xf
	ands r3, r0
	movs r0, #0xa0
	orrs r3, r0
	strb r3, [r2, #5]
	mov r0, r8
	strh r0, [r2, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803990C: .4byte gOamBuffer+0x50
_08039910: .4byte 0xFFFFFE00
_08039914: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_8039918
sub_8039918: @ 0x08039918
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r3, _080399A4
	ldr r0, _080399A8
	ldrh r0, [r0, #4]
	movs r1, #0
	mov r8, r1
	strb r0, [r3]
	ldrb r1, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r4, #0xd
	rsbs r4, r4, #0
	ands r0, r4
	movs r1, #8
	orrs r0, r1
	movs r6, #0x11
	rsbs r6, r6, #0
	ands r0, r6
	movs r1, #0x20
	orrs r0, r1
	movs r5, #0x3f
	ands r0, r5
	strb r0, [r3, #1]
	ldr r0, _080399AC
	ldrh r1, [r0, #4]
	ldr r2, _080399B0
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080399B4
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r6
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r5
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, _080399B8
	ldrh r0, [r0, #4]
	ldr r1, _080399BC
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _080399C0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	strb r4, [r3, #5]
	mov r0, r8
	strh r0, [r3, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080399A4: .4byte gOamBuffer+0x28
_080399A8: .4byte 0x080DD726
_080399AC: .4byte 0x080DD730
_080399B0: .4byte 0x000001FF
_080399B4: .4byte 0xFFFFFE00
_080399B8: .4byte 0x080DD73A
_080399BC: .4byte 0x000003FF
_080399C0: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_80399C4
sub_80399C4: @ 0x080399C4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r3, _08039A54
	ldr r2, _08039A58
	ldr r1, _08039A5C
	ldr r0, _08039A60
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0
	mov sb, r2
	strb r0, [r3]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r6, #0x21
	rsbs r6, r6, #0
	movs r0, #0x3f
	mov r8, r0
	movs r0, #0
	strb r0, [r3, #1]
	ldr r2, _08039A64
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r2, _08039A68
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08039A6C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #3]
	ldrh r1, [r3, #4]
	ldr r0, _08039A70
	ands r0, r1
	movs r1, #0x89
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	movs r0, #0xb0
	orrs r4, r0
	strb r4, [r3, #5]
	mov r2, sb
	strh r2, [r3, #6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039A54: .4byte gOamBuffer+0x60
_08039A58: .4byte 0x080DD75C
_08039A5C: .4byte 0x02022EC0
_08039A60: .4byte 0x00000FA8
_08039A64: .4byte 0x080DD768
_08039A68: .4byte 0x000001FF
_08039A6C: .4byte 0xFFFFFE00
_08039A70: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_8039A74
sub_8039A74: @ 0x08039A74
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r3, _08039B04
	ldr r2, _08039B08
	ldr r1, _08039B0C
	ldr r0, _08039B10
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0
	mov sb, r2
	strb r0, [r3]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r6, #0x21
	rsbs r6, r6, #0
	movs r0, #0x3f
	mov r8, r0
	movs r0, #0
	strb r0, [r3, #1]
	ldr r2, _08039B14
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r2, _08039B18
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08039B1C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #3]
	ldrh r1, [r3, #4]
	ldr r0, _08039B20
	ands r0, r1
	movs r1, #0x89
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	movs r0, #0xb0
	orrs r4, r0
	strb r4, [r3, #5]
	mov r2, sb
	strh r2, [r3, #6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039B04: .4byte gOamBuffer+0x60
_08039B08: .4byte 0x080DD7A0
_08039B0C: .4byte 0x02022EC0
_08039B10: .4byte 0x00000FA8
_08039B14: .4byte 0x080DD7B6
_08039B18: .4byte 0x000001FF
_08039B1C: .4byte 0xFFFFFE00
_08039B20: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_8039B24
sub_8039B24: @ 0x08039B24
	push {lr}
	bl sub_8038BF4
	bl sub_803A424
	bl DisableDisplay
	ldr r0, _08039B78
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r1, _08039B7C
	ldr r2, _08039B80
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08039B84
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xfd
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_803A5C8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xfe
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08039B78: .4byte LoadOam
_08039B7C: .4byte 0x0400000A
_08039B80: .4byte 0x00001F0D
_08039B84: .4byte 0x00000E06

	THUMB_FUNC_START sub_8039B88
sub_8039B88: @ 0x08039B88
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _08039BD0
	ldr r5, _08039BD4
_08039B90:
	adds r0, r4, #0
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08039B90
	ldr r0, _08039BD8
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039BD0: .4byte 0x08E0CE90
_08039BD4: .4byte 0x02023E69
_08039BD8: .4byte LoadOam

	THUMB_FUNC_START sub_8039BDC
sub_8039BDC: @ 0x08039BDC
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _08039C5C
	ldr r5, _08039C60
_08039BE4:
	adds r0, r4, #0
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	adds r0, r4, #0
	bl sub_80390B8
	adds r0, r4, #0
	bl sub_803912C
	adds r0, r4, #0
	bl sub_803A1EC
	adds r0, r4, #0
	bl sub_803A264
	adds r0, r4, #0
	bl sub_803A2D4
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803A34C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08039BE4
	bl sub_8039870
	bl sub_803A424
	bl sub_80396B0
	ldr r0, _08039C64
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock1
	bl LoadCharblock3
	bl LoadCharblock4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039C5C: .4byte 0x08E0CE90
_08039C60: .4byte 0x02023E69
_08039C64: .4byte LoadOam

	THUMB_FUNC_START sub_8039C68
sub_8039C68: @ 0x08039C68
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _08039CDC
	ldr r5, _08039CE0
_08039C70:
	adds r0, r4, #0
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	adds r0, r4, #0
	bl sub_80390B8
	adds r0, r4, #0
	bl sub_803A1EC
	adds r0, r4, #0
	bl sub_803A264
	adds r0, r4, #0
	bl sub_803A2D4
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803A34C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08039C70
	bl sub_803A10C
	bl sub_8039870
	bl sub_803A424
	ldr r0, _08039CE4
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock3
	bl LoadCharblock4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039CDC: .4byte 0x08E0CE90
_08039CE0: .4byte 0x02023E69
_08039CE4: .4byte LoadOam

	THUMB_FUNC_START sub_8039CE8
sub_8039CE8: @ 0x08039CE8
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _08039D5C
	ldr r5, _08039D60
_08039CF0:
	adds r0, r4, #0
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	adds r0, r4, #0
	bl sub_80390B8
	adds r0, r4, #0
	bl sub_803A1EC
	adds r0, r4, #0
	bl sub_803A264
	adds r0, r4, #0
	bl sub_803A2D4
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803A34C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08039CF0
	bl sub_803A17C
	bl sub_8039870
	bl sub_803A424
	ldr r0, _08039D64
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock3
	bl LoadCharblock4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039D5C: .4byte 0x08E0CE90
_08039D60: .4byte 0x02023E69
_08039D64: .4byte LoadOam

	THUMB_FUNC_START sub_8039D68
sub_8039D68: @ 0x08039D68
	push {lr}
	movs r0, #2
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #2
	bl sub_803A264
	movs r0, #2
	bl sub_803A2D4
	ldr r0, _08039D98
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadCharblock3
	pop {r0}
	bx r0
	.align 2, 0
_08039D98: .4byte LoadOam

	THUMB_FUNC_START sub_8039D9C
sub_8039D9C: @ 0x08039D9C
	push {lr}
	bl sub_803A4B4
	bl sub_803A4D8
	bl sub_803A424
	ldr r1, _08039DD0
	movs r0, #4
	strh r0, [r1]
	ldr r0, _08039DD4
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08039DD8
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08039DD0: .4byte gBLDY
_08039DD4: .4byte LoadOam
_08039DD8: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_8039DDC
sub_8039DDC: @ 0x08039DDC
	push {r4, lr}
	bl sub_8038DA0
	bl sub_8039918
	bl sub_803A46C
	bl sub_80399C4
	bl sub_803A490
	bl sub_803A588
	movs r4, #0x80
	lsls r4, r4, #0x13
	ldrh r1, [r4]
	ldr r0, _08039E34
	ands r0, r1
	strh r0, [r4]
	ldr r0, _08039E38
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock2
	bl LoadBlendingRegs
	ldr r1, _08039E3C
	ldr r2, _08039E40
	adds r0, r2, #0
	strh r0, [r1]
	ldrh r0, [r4]
	movs r2, #0x82
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039E34: .4byte 0x0000FEFF
_08039E38: .4byte LoadOam
_08039E3C: .4byte 0x04000008
_08039E40: .4byte 0x00001708

	THUMB_FUNC_START sub_8039E44
sub_8039E44: @ 0x08039E44
	push {lr}
	bl sub_80399C4
	bl sub_803A490
	ldr r0, _08039E5C
	bl SetVBlankCallback
	bl WaitForVBlank
	pop {r0}
	bx r0
	.align 2, 0
_08039E5C: .4byte LoadOam

	THUMB_FUNC_START sub_8039E60
sub_8039E60: @ 0x08039E60
	push {lr}
	bl sub_8038BF4
	bl sub_8038DA0
	bl sub_80399C4
	bl sub_803A490
	bl sub_803A588
	bl DisableDisplay
	ldr r0, _08039EC8
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r1, _08039ECC
	ldr r2, _08039ED0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08039ED4
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08039ED8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xfd
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_803A5C8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08039EC8: .4byte LoadOam
_08039ECC: .4byte 0x04000008
_08039ED0: .4byte 0x00001708
_08039ED4: .4byte 0x00001F0D
_08039ED8: .4byte 0x00000E06

	THUMB_FUNC_START sub_8039EDC
sub_8039EDC: @ 0x08039EDC
	push {lr}
	bl sub_8039FD8
	bl sub_803A46C
	bl sub_803A448
	bl sub_8039A74
	bl sub_803A4FC
	bl sub_803A5A8
	ldr r0, _08039F30
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock2
	bl LoadBlendingRegs
	ldr r1, _08039F34
	ldr r2, _08039F38
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08039F3C
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08039F30: .4byte LoadOam
_08039F34: .4byte 0x04000008
_08039F38: .4byte 0x00001708
_08039F3C: .4byte 0x0000BFFF

	THUMB_FUNC_START sub_8039F40
sub_8039F40: @ 0x08039F40
	push {lr}
	bl sub_80396B0
	bl sub_8039A74
	bl sub_803A4FC
	ldr r0, _08039F60
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadCharblock1
	pop {r0}
	bx r0
	.align 2, 0
_08039F60: .4byte LoadOam

	THUMB_FUNC_START sub_8039F64
sub_8039F64: @ 0x08039F64
	push {r4, lr}
	bl sub_803A04C
	bl sub_803A46C
	bl sub_803A448
	bl sub_803A4B4
	bl sub_803A4D8
	bl sub_803A5A8
	movs r4, #0x80
	lsls r4, r4, #0x13
	ldrh r1, [r4]
	ldr r0, _08039FC4
	ands r0, r1
	strh r0, [r4]
	ldr r0, _08039FC8
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock2
	bl LoadBlendingRegs
	ldr r1, _08039FCC
	ldr r2, _08039FD0
	adds r0, r2, #0
	strh r0, [r1]
	ldrh r1, [r4]
	ldr r0, _08039FD4
	ands r0, r1
	strh r0, [r4]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039FC4: .4byte 0x0000FEFF
_08039FC8: .4byte LoadOam
_08039FCC: .4byte 0x04000008
_08039FD0: .4byte 0x00001708
_08039FD4: .4byte 0x0000BFFF

	THUMB_FUNC_START sub_8039FD8
sub_8039FD8: @ 0x08039FD8
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803A030
	ldr r2, _0803A034
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0803A038
	ldr r5, _0803A03C
	adds r2, r5, #0
	bl CopyStringTilesToVRAMBuffer
	movs r0, #0xc9
	lsls r0, r0, #5
	adds r4, r4, r0
	ldr r1, _0803A040
	adds r0, r4, #0
	adds r2, r5, #0
	bl CopyStringTilesToVRAMBuffer
	movs r4, #0
	movs r5, #0
_0803A010:
	ldr r0, _0803A044
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0803A048
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803A010
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A030: .4byte 0x02008400
_0803A034: .4byte 0x01000010
_0803A038: .4byte 0x080DDB6C
_0803A03C: .4byte 0x00000901
_0803A040: .4byte 0x080DDDD8
_0803A044: .4byte 0x08A323D4
_0803A048: .4byte 0x0200BC00

	THUMB_FUNC_START sub_803A04C
sub_803A04C: @ 0x0803A04C
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803A094
	ldr r2, _0803A098
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r4, #0x20
	ldr r1, _0803A09C
	ldr r2, _0803A0A0
	adds r0, r4, #0
	bl CopyStringTilesToVRAMBuffer
	movs r4, #0
	movs r5, #0
_0803A072:
	ldr r0, _0803A0A4
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0803A0A8
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803A072
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A094: .4byte 0x02008400
_0803A098: .4byte 0x01000010
_0803A09C: .4byte 0x080DDE9C
_0803A0A0: .4byte 0x00000901
_0803A0A4: .4byte 0x08A32884
_0803A0A8: .4byte 0x0200BC00

	THUMB_FUNC_START sub_803A0AC
sub_803A0AC: @ 0x0803A0AC
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _0803A104
	ldr r5, _0803A108
_0803A0B4:
	adds r0, r4, #0
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	adds r0, r4, #0
	bl sub_80390B8
	adds r0, r4, #0
	bl sub_803912C
	adds r0, r4, #0
	bl sub_803A1EC
	adds r0, r4, #0
	bl sub_803A264
	adds r0, r4, #0
	bl sub_803A2D4
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803A34C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0803A0B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803A104: .4byte 0x08E0CE90
_0803A108: .4byte 0x02023E69

	THUMB_FUNC_START sub_803A10C
sub_803A10C: @ 0x0803A10C
	push {r4, r5, r6, lr}
	ldr r0, _0803A170
	ldrh r4, [r0, #6]
	lsls r4, r4, #5
	ldr r0, _0803A174
	adds r4, r4, r0
	movs r5, #0xa0
	lsls r5, r5, #3
	adds r1, r4, r5
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803A178
	adds r4, r4, r0
	adds r1, r4, r5
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803A178
	adds r4, r4, r0
	adds r1, r4, r5
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803A178
	adds r4, r4, r0
	adds r5, r4, r5
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl CpuSet
	movs r0, #0
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #0
	bl sub_803912C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803A170: .4byte 0x080DD6C8
_0803A174: .4byte 0x0200C400
_0803A178: .4byte 0xFFFFFB00

	THUMB_FUNC_START sub_803A17C
sub_803A17C: @ 0x0803A17C
	push {r4, r5, r6, lr}
	ldr r0, _0803A1E0
	ldrh r4, [r0, #2]
	lsls r4, r4, #5
	ldr r0, _0803A1E4
	adds r4, r4, r0
	ldr r0, _0803A1E8
	adds r1, r4, r0
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	movs r5, #0xa0
	lsls r5, r5, #3
	adds r4, r4, r5
	ldr r0, _0803A1E8
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	adds r4, r4, r5
	ldr r0, _0803A1E8
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	adds r4, r4, r5
	ldr r0, _0803A1E8
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	movs r0, #4
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #4
	bl sub_803912C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803A1E0: .4byte 0x080DD6C8
_0803A1E4: .4byte 0x0200C400
_0803A1E8: .4byte 0xFFFFFB00

	THUMB_FUNC_START sub_803A1EC
sub_803A1EC: @ 0x0803A1EC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803A250
	adds r2, r0, r2
	ldr r1, _0803A254
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0803A258
	adds r1, r0, r1
	movs r0, #0
	ldr r2, _0803A25C
	ldrb r3, [r2, #0x18]
	cmp r0, r3
	bhs _0803A230
	ldr r4, _0803A260
	adds r3, r4, #0
_0803A21C:
	strh r3, [r1]
	subs r1, #2
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bhi _0803A248
	ldrb r4, [r2, #0x18]
	cmp r0, r4
	blo _0803A21C
_0803A230:
	cmp r0, #0xb
	bhi _0803A248
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r2, r3, #0
_0803A23A:
	strh r2, [r1]
	subs r1, #2
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bls _0803A23A
_0803A248:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A250: .4byte 0x080DD6D2
_0803A254: .4byte 0x080DD6D7
_0803A258: .4byte 0x02000400
_0803A25C: .4byte gCardInfo
_0803A260: .4byte 0x00005001

	THUMB_FUNC_START sub_803A264
sub_803A264: @ 0x0803A264
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803A2C0
	adds r2, r0, r2
	ldr r1, _0803A2C4
	adds r1, r0, r1
	ldrb r4, [r1]
	lsls r4, r4, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r4, r4, r1
	ldrb r2, [r2]
	adds r4, r4, r2
	lsls r4, r4, #1
	ldr r1, _0803A2C8
	adds r4, r4, r1
	ldr r5, _0803A2CC
	bl sub_8036C3C
	adds r0, r0, r5
	ldrb r0, [r0]
	movs r1, #1
	bl ConvertU16ToDigitBuffer
	ldr r2, _0803A2D0
	ldrb r0, [r2]
	adds r0, #7
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r2, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A2C0: .4byte 0x080DD6DC
_0803A2C4: .4byte 0x080DD6E1
_0803A2C8: .4byte 0x02000400
_0803A2CC: .4byte 0x02022EC0
_0803A2D0: .4byte 0x02021BD0

	THUMB_FUNC_START sub_803A2D4
sub_803A2D4: @ 0x0803A2D4
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803A334
	adds r2, r0, r2
	ldr r1, _0803A338
	adds r1, r0, r1
	ldrb r4, [r1]
	lsls r4, r4, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r4, r4, r1
	ldrb r2, [r2]
	adds r4, r4, r2
	lsls r4, r4, #1
	ldr r1, _0803A33C
	adds r4, r4, r1
	ldr r5, _0803A340
	bl sub_8036C3C
	ldr r3, _0803A344
	adds r5, r5, r3
	adds r0, r0, r5
	ldrb r0, [r0]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	ldr r2, _0803A348
	ldrb r0, [r2, #2]
	adds r0, #7
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r2, #4]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A334: .4byte 0x080DD6E6
_0803A338: .4byte 0x080DD6EB
_0803A33C: .4byte 0x02000400
_0803A340: .4byte 0x02022EC0
_0803A344: .4byte 0x00000321
_0803A348: .4byte 0x02021BD0

	THUMB_FUNC_START sub_803A34C
sub_803A34C: @ 0x0803A34C
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _0803A36C
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0803A370
	adds r0, r0, r1
	ldr r1, _0803A374
	ldrh r1, [r1, #0x10]
	bl sub_80573D0
	pop {r0}
	bx r0
	.align 2, 0
_0803A36C: .4byte 0x080DD73A
_0803A370: .4byte 0x02010400
_0803A374: .4byte gCardInfo

	THUMB_FUNC_START sub_803A378
sub_803A378: @ 0x0803A378
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803A3C0
	ldr r2, _0803A3C4
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0803A3C8
	ldr r2, _0803A3CC
	bl CopyStringTilesToVRAMBuffer
	mov r0, sp
	adds r0, #2
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r2, #0
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r4, r4, r1
	ldr r2, _0803A3D0
	adds r1, r4, #0
	bl CpuSet
	bl sub_80396B0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A3C0: .4byte 0x02004400
_0803A3C4: .4byte 0x01000010
_0803A3C8: .4byte 0x080DDF7C
_0803A3CC: .4byte 0x00000901
_0803A3D0: .4byte 0x01000400

	THUMB_FUNC_START sub_803A3D4
sub_803A3D4: @ 0x0803A3D4
	push {r4, r5, lr}
	ldr r0, _0803A40C
	ldr r1, _0803A410
	bl LZ77UnCompWram
	movs r4, #0
	movs r5, #0
_0803A3E2:
	ldr r0, _0803A414
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0803A418
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803A3E2
	ldr r0, _0803A41C
	ldr r1, _0803A420
	movs r2, #0x40
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A40C: .4byte 0x08A32D34
_0803A410: .4byte 0x02000400
_0803A414: .4byte 0x08A351EC
_0803A418: .4byte 0x02007C00
_0803A41C: .4byte 0x08A3569C
_0803A420: .4byte 0x02000000

	THUMB_FUNC_START sub_803A424
sub_803A424: @ 0x0803A424
	ldr r2, _0803A444
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803A444: .4byte gOamBuffer+0x50

	THUMB_FUNC_START sub_803A448
sub_803A448: @ 0x0803A448
	ldr r0, _0803A468
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803A468: .4byte gOamBuffer+0x28

	THUMB_FUNC_START sub_803A46C
sub_803A46C: @ 0x0803A46C
	ldr r0, _0803A48C
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803A48C: .4byte gOamBuffer+0x58

	THUMB_FUNC_START sub_803A490
sub_803A490: @ 0x0803A490
	ldr r2, _0803A4B0
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803A4B0: .4byte gOamBuffer+0x60

	THUMB_FUNC_START sub_803A4B4
sub_803A4B4: @ 0x0803A4B4
	ldr r0, _0803A4D4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803A4D4: .4byte gOamBuffer+0x60

	THUMB_FUNC_START sub_803A4D8
sub_803A4D8: @ 0x0803A4D8
	ldr r0, _0803A4F8
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803A4F8: .4byte gOamBuffer+0x68

	THUMB_FUNC_START sub_803A4FC
sub_803A4FC: @ 0x0803A4FC
	ldr r2, _0803A51C
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803A51C: .4byte gOamBuffer+0x60
	.byte 0x07, 0x48, 0x80, 0x22, 0x92, 0x00, 0x11, 0x1C, 0x01, 0x80, 0x02, 0x30, 0x00, 0x21, 0x01, 0x80
	.byte 0x02, 0x30, 0x01, 0x80, 0x80, 0x22, 0x52, 0x00, 0x11, 0x1C, 0x41, 0x80, 0x70, 0x47, 0x00, 0x00
	.byte 0x60, 0x84, 0x01, 0x02, 0x07, 0x48, 0x80, 0x22, 0x92, 0x00, 0x11, 0x1C, 0x01, 0x80, 0x02, 0x30
	.byte 0x00, 0x21, 0x01, 0x80, 0x02, 0x30, 0x01, 0x80, 0x80, 0x22, 0x52, 0x00, 0x11, 0x1C, 0x41, 0x80
	.byte 0x70, 0x47, 0x00, 0x00, 0x68, 0x84, 0x01, 0x02

	THUMB_FUNC_START sub_803A568
sub_803A568: @ 0x0803A568
	ldr r1, _0803A57C
	movs r0, #0xf2
	strh r0, [r1]
	ldr r1, _0803A580
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803A584
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803A57C: .4byte gBLDCNT
_0803A580: .4byte gBLDALPHA
_0803A584: .4byte gBLDY

	THUMB_FUNC_START sub_803A588
sub_803A588: @ 0x0803A588
	ldr r1, _0803A59C
	movs r0, #0xfa
	strh r0, [r1]
	ldr r1, _0803A5A0
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803A5A4
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803A59C: .4byte gBLDCNT
_0803A5A0: .4byte gBLDALPHA
_0803A5A4: .4byte gBLDY

	THUMB_FUNC_START sub_803A5A8
sub_803A5A8: @ 0x0803A5A8
	ldr r1, _0803A5BC
	movs r0, #0xfa
	strh r0, [r1]
	ldr r1, _0803A5C0
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803A5C4
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803A5BC: .4byte gBLDCNT
_0803A5C0: .4byte gBLDALPHA
_0803A5C4: .4byte gBLDY

	THUMB_FUNC_START sub_803A5C8
sub_803A5C8: @ 0x0803A5C8
	ldr r1, _0803A5F8
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x18
	strh r0, [r1]
	subs r1, #2
	ldr r2, _0803A5FC
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0803A600
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803A604
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803A608
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803A5F8: .4byte 0x04000040
_0803A5FC: .4byte 0x000004D4
_0803A600: .4byte 0x0000486F
_0803A604: .4byte 0x00001E0E
_0803A608: .4byte 0x0000183F

	THUMB_FUNC_START sub_803A60C
sub_803A60C: @ 0x0803A60C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803A6D0
	movs r3, #0
	ldr r5, _0803A6D4
	ldr r6, _0803A6D8
	ldr r1, _0803A6DC
	mov ip, r1
	ldr r2, _0803A6E0
	mov r8, r2
	ldr r7, _0803A6E4
	mov sb, r7
	ldr r1, _0803A6E8
	mov sl, r1
	movs r7, #0x80
	lsls r7, r7, #2
	adds r2, r7, #0
	movs r1, #0
	movs r7, #0x80
	lsls r7, r7, #1
	adds r4, r7, #0
_0803A63C:
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0803A63C
	movs r0, #0
	strh r0, [r5]
	strh r0, [r6]
	ldr r1, _0803A6EC
	strh r0, [r1]
	mov r2, ip
	strh r0, [r2]
	ldr r7, _0803A6F0
	adds r1, r7, #0
	mov r2, r8
	strh r1, [r2]
	movs r1, #4
	mov r7, sb
	strh r1, [r7]
	mov r1, sl
	strh r0, [r1]
	ldr r2, _0803A6F4
	strh r0, [r2]
	bl sub_803A878
	bl sub_803BDA8
	bl sub_803BE04
	bl sub_803B31C
	bl sub_803B510
	bl sub_803B468
	bl sub_803BF98
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A6D0: .4byte gOamBuffer
_0803A6D4: .4byte gBG0VOFS
_0803A6D8: .4byte gBG0HOFS
_0803A6DC: .4byte gBG1HOFS
_0803A6E0: .4byte gBG2VOFS
_0803A6E4: .4byte gBG2HOFS
_0803A6E8: .4byte gBG3VOFS
_0803A6EC: .4byte gBG1VOFS
_0803A6F0: .4byte 0x000001FD
_0803A6F4: .4byte gBG3HOFS

	THUMB_FUNC_START sub_803A6F8
sub_803A6F8: @ 0x0803A6F8
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r7, _0803A7A0
	ldr r6, _0803A7A4
_0803A700:
	adds r0, r5, #0
	bl sub_8037798
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_803AA14
	adds r0, r4, #0
	bl sub_803AAB0
	adds r0, r4, #0
	bl sub_803BC88
	adds r0, r4, #0
	bl sub_803AC2C
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803BD18
	adds r5, #1
	cmp r5, #4
	bls _0803A700
	bl sub_803BEE4
	bl sub_803BF08
	bl sub_803B468
	bl sub_803BE54
	bl sub_803B510
	bl sub_803B2A8
	ldr r1, _0803A7A8
	movs r0, #4
	strh r0, [r1]
	ldr r0, _0803A7AC
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock3
	bl LoadCharblock4
	bl LoadCharblock1
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0803A7B0
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A7A0: .4byte 0x08E0CEA0
_0803A7A4: .4byte 0x02023E79
_0803A7A8: .4byte gBLDY
_0803A7AC: .4byte LoadOam
_0803A7B0: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_803A7B4
sub_803A7B4: @ 0x0803A7B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803A85C
	ldr r2, _0803A860
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r4, #0x20
	ldr r1, _0803A864
	ldr r2, _0803A868
	adds r0, r4, #0
	bl CopyStringTilesToVRAMBuffer
	movs r6, #0
	movs r4, #0
_0803A7E0:
	ldr r0, _0803A86C
	adds r0, r4, r0
	lsls r1, r6, #6
	ldr r2, _0803A870
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r4, #0x3c
	adds r6, #1
	cmp r6, #0x13
	bls _0803A7E0
	movs r4, #0xb8
	lsls r4, r4, #8
	movs r0, #4
	movs r1, #3
	adds r2, r4, #0
	bl sub_08007FEC
	movs r1, #0xff
	lsls r1, r1, #8
	mov r8, r1
	ands r1, r0
	mov r8, r1
	movs r6, #0
	mov sb, r4
	movs r7, #0x80
	lsls r7, r7, #0x13
_0803A818:
	lsrs r5, r7, #0x18
	ldr r4, _0803A874
	adds r4, r6, r4
	ldrb r3, [r4]
	adds r3, #0x3d
	mov r0, r8
	orrs r3, r0
	adds r0, r5, #0
	movs r1, #0xf
	mov r2, sb
	bl sub_800800C
	ldrb r3, [r4]
	adds r3, #0x3f
	mov r1, r8
	orrs r3, r1
	adds r0, r5, #0
	movs r1, #0x10
	mov r2, sb
	bl sub_800800C
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r7, r7, r0
	adds r6, #1
	cmp r6, #9
	bls _0803A818
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A85C: .4byte 0x02008400
_0803A860: .4byte 0x01000010
_0803A864: .4byte 0x080DE004
_0803A868: .4byte 0x00000901
_0803A86C: .4byte 0x08A38D8C
_0803A870: .4byte 0x0200BC00
_0803A874: .4byte g8DF811C

	THUMB_FUNC_START sub_803A878
sub_803A878: @ 0x0803A878
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803A9CC
	ldr r2, _0803A9D0
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	bl CopyStarTile
	adds r0, r4, #0
	adds r0, #0x40
	bl CopySwordTile
	adds r0, r4, #0
	adds r0, #0x60
	bl CopyShieldTile
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r1, _0803A9D4
	ldr r2, _0803A9D8
	bl CopyStringTilesToVRAMBuffer
	movs r5, #0
	mov r7, sp
	adds r7, #2
	ldr r4, _0803A9DC
_0803A8BA:
	ldr r1, _0803A9E0
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #7
	ldr r2, _0803A9E4
	adds r1, r1, r2
	movs r2, #0x40
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bls _0803A8BA
	movs r5, #0
	ldr r4, _0803A9E8
_0803A8E4:
	ldr r1, _0803A9E0
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #7
	ldr r2, _0803A9EC
	adds r1, r1, r2
	movs r2, #0x40
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x14
	bls _0803A8E4
	movs r5, #0
	ldr r4, _0803A9E8
_0803A90E:
	ldr r2, _0803A9E0
	adds r1, r5, #0
	adds r1, #0x15
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #8
	ldr r6, _0803A9F0
	adds r1, r1, r6
	movs r2, #0x80
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0803A90E
	ldr r0, _0803A9F4
	bl sub_8008BF8
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
	strh r4, [r7]
	ldr r2, _0803A9F8
	adds r1, r6, r2
	ldr r2, _0803A9FC
	adds r0, r7, #0
	bl CpuSet
	movs r5, #0
	ldr r7, _0803AA00
	adds r6, r4, #0
	ldr r0, _0803AA04
	mov ip, r0
_0803A95C:
	lsls r0, r5, #1
	add r0, ip
	ldrh r3, [r0]
	ldr r1, _0803AA08
	adds r1, r5, r1
	ldr r0, _0803AA0C
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r0, r0, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0803AA10
	adds r2, r0, r1
	movs r4, #0
	adds r5, #1
_0803A982:
	adds r0, r3, #0
	ands r0, r7
	orrs r0, r6
	strh r0, [r2]
	adds r0, r3, #1
	ands r0, r7
	orrs r0, r6
	strh r0, [r2, #2]
	adds r0, r3, #2
	ands r0, r7
	orrs r0, r6
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r0, r3, #3
	ands r0, r7
	orrs r0, r6
	strh r0, [r1, #2]
	adds r0, r3, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _0803A982
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0803A95C
	bl sub_803BB4C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A9CC: .4byte 0x0200C400
_0803A9D0: .4byte 0x01000010
_0803A9D4: .4byte 0x080DE4C4
_0803A9D8: .4byte 0x00001801
_0803A9DC: .4byte gAttributeIconTiles
_0803A9E0: .4byte gLanguage
_0803A9E4: .4byte 0x0200C620
_0803A9E8: .4byte gTypeIconTiles
_0803A9EC: .4byte 0x0200CC20
_0803A9F0: .4byte 0x0200D6A0
_0803A9F4: .4byte 0x020000A0
_0803A9F8: .4byte 0x00002560
_0803A9FC: .4byte 0x01000400
_0803AA00: .4byte 0x000003FF
_0803AA04: .4byte 0x080DD8F8
_0803AA08: .4byte 0x080DD8EE
_0803AA0C: .4byte 0x080DD8F3
_0803AA10: .4byte 0x02000400

	THUMB_FUNC_START sub_803AA14
sub_803AA14: @ 0x0803AA14
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803AA7C
	adds r2, r0, r2
	ldr r1, _0803AA80
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0803AA84
	adds r4, r0, r1
	ldr r0, _0803AA88
	ldr r1, _0803AA8C
	ldrh r1, [r1, #0x10]
	ldr r2, _0803AA90
	adds r0, r0, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803AA98
	adds r0, r1, #0
	movs r1, #1
	bl ConvertU16ToDigitBuffer
	ldr r2, _0803AA94
	ldrb r0, [r2]
	adds r0, #7
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r2, #3]
	adds r0, #7
	orrs r0, r1
	b _0803AAA8
	.align 2, 0
_0803AA7C: .4byte 0x080DD8E4
_0803AA80: .4byte 0x080DD8E9
_0803AA84: .4byte 0x02000400
_0803AA88: .4byte 0x02022EC0
_0803AA8C: .4byte gCardInfo
_0803AA90: .4byte 0x00000642
_0803AA94: .4byte 0x02021BD0
_0803AA98:
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
_0803AAA8:
	strh r0, [r4, #2]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803AAB0
sub_803AAB0: @ 0x0803AAB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r5, #0
	movs r6, #0
	ldr r4, _0803AB7C
	ldr r0, [r4]
	bl GetCurrentLanguageString
	adds r2, r0, #0
	ldr r0, _0803AB80
	ldr r1, _0803AB84
	adds r0, r0, r1
	ldrh r4, [r4, #0x10]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803AB30
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803AB30
	ldr r7, _0803AB88
	mov ip, r7
	mov r1, r8
	lsls r3, r1, #1
	ldr r4, _0803AB8C
	cmp r0, #0x24
	beq _0803AB30
_0803AAF0:
	adds r0, r2, r5
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0803AB0A
	mov r7, sp
	adds r0, r7, r5
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0803AB0A:
	mov r0, sp
	adds r1, r0, r5
	adds r0, r2, r5
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bhi _0803AB56
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803AB30
	cmp r0, #0x24
	bne _0803AAF0
_0803AB30:
	ldr r1, _0803AB88
	mov ip, r1
	mov r2, r8
	lsls r3, r2, #1
	ldr r4, _0803AB8C
	cmp r6, #0x13
	bhi _0803AB56
	movs r1, #0x20
_0803AB40:
	mov r7, sp
	adds r0, r7, r5
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0803AB40
_0803AB56:
	mov r0, sp
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
	mov r1, ip
	adds r0, r3, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r2, _0803AB90
	mov r1, sp
	bl CopyStringTilesToVRAMBuffer
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AB7C: .4byte gCardInfo
_0803AB80: .4byte 0x02022EC0
_0803AB84: .4byte 0x00000642
_0803AB88: .4byte 0x080DD8F8
_0803AB8C: .4byte 0x0200C400
_0803AB90: .4byte 0x00000901
	.byte 0x30, 0xB5, 0x00, 0x06, 0x02, 0x0E, 0x18, 0x49, 0x51, 0x18, 0x18, 0x48
	.byte 0x10, 0x18, 0x00, 0x78, 0x40, 0x01, 0xF8, 0x23, 0xDB, 0x01, 0xC0, 0x18, 0x09, 0x78, 0x40, 0x18
	.byte 0x40, 0x00, 0x14, 0x49, 0x44, 0x18, 0x14, 0x4D, 0x14, 0x49, 0x15, 0x4B, 0xE8, 0x18, 0x09, 0x8A
	.byte 0x40, 0x18, 0x00, 0x78, 0x00, 0x28, 0x27, 0xD0, 0x10, 0x1C, 0xFC, 0xF7, 0xE5, 0xFD, 0x40, 0x19
	.byte 0x00, 0x78, 0x01, 0x21, 0xD3, 0xF7, 0xE4, 0xF8, 0x0E, 0x4A, 0x10, 0x78, 0x07, 0x30, 0xA0, 0x23
	.byte 0xDB, 0x01, 0x19, 0x1C, 0x08, 0x43, 0x20, 0x80, 0x02, 0x34, 0x50, 0x78, 0x07, 0x30, 0x08, 0x43
	.byte 0x20, 0x80, 0x90, 0x78, 0x07, 0x30, 0x08, 0x43, 0x14, 0xE0, 0x00, 0x00, 0x0C, 0xD9, 0x0D, 0x08
	.byte 0x11, 0xD9, 0x0D, 0x08, 0x00, 0x04, 0x00, 0x02, 0xC0, 0x2E, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0x42, 0x06, 0x00, 0x00, 0xD0, 0x1B, 0x02, 0x02, 0xA0, 0x21, 0xC9, 0x01, 0x08, 0x1C, 0x20, 0x80
	.byte 0x02, 0x34, 0x20, 0x80, 0x60, 0x80, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_803AC2C
sub_803AC2C: @ 0x0803AC2C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _0803AC94
	adds r1, r2, r1
	ldr r0, _0803AC98
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r0, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0803AC9C
	adds r4, r0, r1
	ldr r1, _0803ACA0
	ldr r0, _0803ACA4
	ldrh r0, [r0, #0x10]
	ldr r3, _0803ACA8
	adds r5, r1, r3
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803ACB0
	adds r0, r2, #0
	bl sub_8037798
	adds r0, r0, r5
	ldrb r0, [r0]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	ldr r2, _0803ACAC
	ldrb r0, [r2, #2]
	adds r0, #7
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r2, #4]
	adds r0, #7
	orrs r0, r1
	b _0803ACBC
	.align 2, 0
_0803AC94: .4byte 0x080DD916
_0803AC98: .4byte 0x080DD91B
_0803AC9C: .4byte 0x02000400
_0803ACA0: .4byte 0x02022EC0
_0803ACA4: .4byte gCardInfo
_0803ACA8: .4byte 0x00000642
_0803ACAC: .4byte 0x02021BD0
_0803ACB0:
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
_0803ACBC:
	strh r0, [r4, #2]
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803ACC4
sub_803ACC4: @ 0x0803ACC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r5, _0803ADB4
	adds r0, r5, #0
	bl CopySwordTile
	adds r0, r5, #0
	adds r0, #0x20
	bl CopyShieldTile
	ldr r0, _0803ADB8
	ldr r1, _0803ADBC
	mov sl, r1
	ldr r2, _0803ADC0
	adds r0, r0, r2
	ldrh r6, [r1, #0x10]
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803ADDC
	ldrh r0, [r1, #0x12]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	ldr r0, _0803ADC4
	adds r0, r4, r0
	ldrb r6, [r0]
	ldr r0, _0803ADC8
	adds r0, r4, r0
	ldrb r4, [r0]
	lsls r0, r4, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	mov sb, r1
	add r0, sb
	adds r0, r6, r0
	lsls r0, r0, #1
	ldr r2, _0803ADCC
	adds r2, r2, r5
	mov r8, r2
	adds r7, r0, r2
	ldr r5, _0803ADD0
	adds r0, r5, #0
	strh r0, [r7]
	adds r7, #2
	ldr r5, _0803ADD4
	ldrb r0, [r5]
	adds r0, #7
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	ldrb r0, [r5, #4]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7, #2]
	mov r1, sl
	ldrh r0, [r1, #0x14]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	adds r4, #1
	lsls r4, r4, #5
	add r4, sb
	adds r6, r6, r4
	lsls r6, r6, #1
	mov r2, r8
	adds r7, r6, r2
	ldr r6, _0803ADD8
	adds r0, r6, #0
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5]
	adds r0, #7
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	ldrb r0, [r5, #4]
	adds r0, #7
	orrs r0, r1
	b _0803AE32
	.align 2, 0
_0803ADB4: .4byte 0x0200C440
_0803ADB8: .4byte 0x02022EC0
_0803ADBC: .4byte gCardInfo
_0803ADC0: .4byte 0x00000642
_0803ADC4: .4byte 0x080DD920
_0803ADC8: .4byte 0x080DD925
_0803ADCC: .4byte 0xFFFF3FC0
_0803ADD0: .4byte 0x00005002
_0803ADD4: .4byte 0x02021BD0
_0803ADD8: .4byte 0x00005003
_0803ADDC:
	ldr r0, _0803AE44
	adds r0, r4, r0
	ldrb r2, [r0]
	ldr r0, _0803AE48
	adds r0, r4, r0
	ldrb r1, [r0]
	lsls r0, r1, #5
	movs r4, #0xf8
	lsls r4, r4, #7
	adds r0, r0, r4
	adds r0, r2, r0
	lsls r0, r0, #1
	ldr r6, _0803AE4C
	adds r3, r5, r6
	adds r7, r0, r3
	movs r5, #0xa0
	lsls r5, r5, #7
	adds r0, r5, #0
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	strh r0, [r7, #2]
	adds r1, #1
	lsls r1, r1, #5
	adds r1, r1, r4
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r7, r2, r3
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
_0803AE32:
	strh r0, [r7, #2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AE44: .4byte 0x080DD920
_0803AE48: .4byte 0x080DD925
_0803AE4C: .4byte 0xFFFF3FC0

	THUMB_FUNC_START sub_803AE50
sub_803AE50: @ 0x0803AE50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r4, r2, #0
	ldr r1, _0803AF64
	adds r1, r2, r1
	ldr r0, _0803AF68
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r0, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0803AF6C
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _0803AF70
	ldr r1, _0803AF74
	mov sl, r1
	ldr r3, _0803AF78
	adds r0, r0, r3
	ldrh r1, [r1, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AE96
	b _0803B084
_0803AE96:
	mov r3, sl
	ldrb r0, [r3, #0x16]
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0803AF8C
	ldrb r0, [r3, #0x16]
	lsls r0, r0, #0x13
	ldr r4, _0803AF7C
	adds r0, r0, r4
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	adds r0, r2, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r5, r0, #0
	mov r2, ip
	strh r5, [r2]
	strh r5, [r2, #2]
	mov r4, sb
	lsls r3, r4, #0xc
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ldr r4, _0803AF80
	ands r1, r4
	orrs r1, r3
	mov r0, ip
	strh r1, [r0, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	mov r0, ip
	strh r2, [r0, #6]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ands r1, r4
	orrs r1, r3
	mov r0, ip
	strh r1, [r0, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	mov r0, ip
	strh r2, [r0, #0xa]
	adds r0, #0x40
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	mov r5, ip
	adds r5, #0x44
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ands r1, r4
	orrs r1, r3
	strh r1, [r5]
	adds r5, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	strh r2, [r5]
	mov r2, ip
	adds r2, #0x48
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ands r1, r4
	orrs r1, r3
	strh r1, [r2]
	mov r0, ip
	adds r0, #0x4a
	ands r7, r4
	orrs r3, r7
	strh r3, [r0]
	ldr r1, _0803AF84
	mov r2, sl
	ldrb r0, [r2, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r3, sb
	lsls r1, r3, #5
	ldr r2, _0803AF88
	adds r1, r1, r2
	b _0803B06A
	.align 2, 0
_0803AF64: .4byte 0x080DD920
_0803AF68: .4byte 0x080DD925
_0803AF6C: .4byte 0x02000400
_0803AF70: .4byte 0x02022EC0
_0803AF74: .4byte gCardInfo
_0803AF78: .4byte 0x00000642
_0803AF7C: .4byte 0xFFED0000
_0803AF80: .4byte 0x000003FF
_0803AF84: .4byte gTypeIconPalettes
_0803AF88: .4byte 0x02000000
_0803AF8C:
	mov r1, sl
	ldrb r0, [r1, #0x16]
	lsls r0, r0, #0x12
	movs r2, #0x82
	lsls r2, r2, #0xf
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	adds r3, r7, #0
	adds r0, r4, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldrb r1, [r1, #0x17]
	lsls r1, r1, #0x12
	movs r0, #0x88
	lsls r0, r0, #0xd
	adds r1, r1, r0
	adds r4, #0xb
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	movs r2, #0xa0
	lsls r2, r2, #7
	mov r8, r2
	mov r4, ip
	strh r2, [r4]
	strh r2, [r4, #2]
	mov r0, sb
	lsls r6, r0, #0xc
	adds r7, #1
	adds r0, r7, #0
	ldr r2, _0803B074
	ands r3, r2
	orrs r3, r6
	strh r3, [r4, #4]
	adds r7, #1
	adds r3, r7, #0
	ands r0, r2
	orrs r0, r6
	strh r0, [r4, #6]
	ldr r4, [sp]
	lsls r5, r4, #0xc
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	ands r0, r2
	orrs r0, r5
	mov r4, ip
	strh r0, [r4, #8]
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	ands r0, r2
	orrs r0, r5
	mov r4, ip
	strh r0, [r4, #0xa]
	adds r4, #0x40
	mov r0, r8
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
	mov r0, ip
	adds r0, #0x44
	adds r7, #1
	ands r3, r2
	orrs r3, r6
	strh r3, [r0]
	adds r0, #2
	ands r7, r2
	orrs r6, r7
	strh r6, [r0]
	mov r3, ip
	adds r3, #0x48
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	lsrs r1, r1, #0x10
	ands r0, r2
	orrs r0, r5
	strh r0, [r3]
	mov r0, ip
	adds r0, #0x4a
	ands r1, r2
	orrs r5, r1
	strh r5, [r0]
	ldr r1, _0803B078
	mov r2, sl
	ldrb r0, [r2, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r3, sb
	lsls r1, r3, #5
	ldr r5, _0803B07C
	adds r1, r1, r5
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0803B080
	mov r4, sl
	ldrb r0, [r4, #0x17]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [sp]
	lsls r4, r1, #5
	adds r4, r4, r5
	adds r1, r4, #0
_0803B06A:
	movs r2, #0x10
	bl CpuSet
	b _0803B0D4
	.align 2, 0
_0803B074: .4byte 0x000003FF
_0803B078: .4byte gTypeIconPalettes
_0803B07C: .4byte 0x02000000
_0803B080: .4byte gAttributeIconPalettes
_0803B084:
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r2, #0
	mov r3, ip
	strh r0, [r3]
	movs r4, #2
	add ip, r4
	mov r1, ip
	strh r0, [r1]
	add ip, r4
	mov r2, ip
	strh r0, [r2]
	add ip, r4
	mov r3, ip
	strh r0, [r3]
	add ip, r4
	mov r4, ip
	strh r0, [r4]
	movs r1, #2
	add ip, r1
	mov r2, ip
	strh r0, [r2]
	movs r3, #0x36
	add ip, r3
	mov r4, ip
	strh r0, [r4]
	add ip, r1
	mov r1, ip
	strh r0, [r1]
	movs r2, #2
	add ip, r2
	mov r3, ip
	strh r0, [r3]
	add ip, r2
	mov r4, ip
	strh r0, [r4]
	add ip, r2
	mov r1, ip
	strh r0, [r1]
	strh r0, [r1, #2]
_0803B0D4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803B0E4
sub_803B0E4: @ 0x0803B0E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803B1B4
	ldr r1, _0803B1B8
	ldr r2, _0803B1BC
	adds r0, r5, #0
	bl CopyStringTilesToVRAMBuffer
	ldr r0, _0803B1C0
	adds r0, r4, r0
	ldrb r7, [r0]
	ldr r0, _0803B1C4
	adds r4, r4, r0
	ldrb r6, [r4]
	lsls r0, r6, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	adds r0, r7, r0
	lsls r0, r0, #1
	ldr r1, _0803B1C8
	adds r1, r1, r5
	mov r8, r1
	adds r3, r0, r1
	ldr r0, _0803B1CC
	ldr r5, _0803B1D0
	ldr r1, _0803B1D4
	adds r0, r0, r1
	ldrh r1, [r5, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803B1E0
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
	strh r4, [r3]
	adds r3, #2
	movs r2, #3
	movs r0, #2
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	movs r1, #4
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	movs r2, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	adds r3, #2
	movs r1, #6
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	strh r4, [r3, #2]
	ldrh r0, [r5, #0xc]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	lsls r0, r6, #5
	ldr r1, _0803B1D8
	adds r0, r0, r1
	adds r0, r7, r0
	lsls r0, r0, #1
	mov r1, r8
	adds r3, r0, r1
	strh r4, [r3]
	adds r3, #2
	ldr r1, _0803B1DC
	ldrb r0, [r1]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #1]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #2]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #3]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	ldrb r0, [r1, #4]
	adds r0, #7
	orrs r0, r4
	b _0803B210
	.align 2, 0
_0803B1B4: .4byte 0x0200C440
_0803B1B8: .4byte 0x080DE4DC
_0803B1BC: .4byte 0x00000801
_0803B1C0: .4byte 0x080DD920
_0803B1C4: .4byte 0x080DD925
_0803B1C8: .4byte 0xFFFF3FC0
_0803B1CC: .4byte 0x02022EC0
_0803B1D0: .4byte gCardInfo
_0803B1D4: .4byte 0x00000642
_0803B1D8: .4byte 0x00007C20
_0803B1DC: .4byte 0x02021BD0
_0803B1E0:
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #0x36
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
_0803B210:
	strh r0, [r3, #2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803B21C
sub_803B21C: @ 0x0803B21C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803B294
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, #0x1c
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r2, _0803B298
	adds r2, r0, r2
	ldr r1, _0803B29C
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0803B2A0
	adds r2, r0, r1
	movs r6, #0
	ldr r5, _0803B2A4
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_0803B256:
	adds r0, r3, #0
	ands r0, r5
	orrs r0, r4
	strh r0, [r2]
	adds r0, r3, #1
	ands r0, r5
	orrs r0, r4
	strh r0, [r2, #2]
	adds r0, r3, #2
	ands r0, r5
	orrs r0, r4
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r0, r3, #3
	ands r0, r5
	orrs r0, r4
	strh r0, [r1, #2]
	adds r0, r3, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0803B256
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B294: .4byte 0x080DD8F8
_0803B298: .4byte 0x080DD920
_0803B29C: .4byte 0x080DD925
_0803B2A0: .4byte 0x02000400
_0803B2A4: .4byte 0x000003FF

	THUMB_FUNC_START sub_803B2A8
sub_803B2A8: @ 0x0803B2A8
	push {r4, r5, r6, lr}
	ldr r1, _0803B308
	ldr r5, _0803B30C
	ldr r3, _0803B310
	ldr r0, _0803B314
	adds r3, r3, r0
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r2, [r0]
	ldr r4, _0803B318
	adds r0, r4, #0
	ands r0, r2
	movs r6, #0xa0
	lsls r6, r6, #7
	adds r2, r6, #0
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #1
	ands r0, r4
	orrs r0, r2
	strh r0, [r1]
	adds r1, #0x3e
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #2
	ands r0, r4
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #3
	ands r0, r4
	orrs r0, r2
	strh r0, [r1, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B308: .4byte 0x02007438
_0803B30C: .4byte 0x080DD942
_0803B310: .4byte 0x02022EC0
_0803B314: .4byte 0x00000FBA
_0803B318: .4byte 0x000003FF

	THUMB_FUNC_START sub_803B31C
sub_803B31C: @ 0x0803B31C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0803B42C
	ldr r5, _0803B430
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl CpuSet
	adds r4, #0x20
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r5, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r0, _0803B434
	ldr r6, _0803B438
	adds r1, r6, #0
	movs r2, #0x10
	bl CpuSet
	ldr r4, _0803B43C
	adds r1, r5, #0
	adds r1, #0x20
	adds r0, r4, #0
	movs r2, #0x20
	bl CpuSet
	adds r4, #0x40
	movs r1, #0x84
	lsls r1, r1, #3
	adds r5, r5, r1
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	ldr r0, _0803B440
	adds r1, r6, #0
	adds r1, #0x20
	movs r2, #0x10
	bl CpuSet
	ldr r2, _0803B444
	adds r6, r6, r2
	adds r0, r6, #0
	bl CopyMiniCardPalette
	movs r5, #0
	mov sb, r5
	movs r0, #4
	rsbs r0, r0, #0
	mov sl, r0
	movs r7, #0x11
	rsbs r7, r7, #0
	movs r6, #0x3f
	movs r1, #0xd
	rsbs r1, r1, #0
	mov ip, r1
	ldr r2, _0803B448
	mov r8, r2
_0803B3A0:
	lsls r3, r5, #3
	ldr r0, _0803B44C
	adds r3, r3, r0
	ldr r0, _0803B450
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	strb r0, [r3]
	ldrb r1, [r3, #1]
	mov r0, sl
	ands r0, r1
	mov r1, ip
	ands r0, r1
	ands r0, r7
	movs r1, #0x20
	orrs r0, r1
	ands r0, r6
	strb r0, [r3, #1]
	ldr r0, _0803B454
	adds r0, r4, r0
	ldrh r1, [r0]
	ldr r2, _0803B458
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r7
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r6
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, _0803B45C
	adds r4, r4, r0
	ldrh r0, [r4]
	ldr r1, _0803B460
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0803B464
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	movs r0, #0xc
	orrs r1, r0
	movs r0, #0xf
	ands r1, r0
	strb r1, [r3, #5]
	mov r0, sb
	strh r0, [r3, #6]
	adds r5, #1
	cmp r5, #4
	bls _0803B3A0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B42C: .4byte 0x08A3C204
_0803B430: .4byte 0x02011500
_0803B434: .4byte 0x08A3C244
_0803B438: .4byte 0x02000340
_0803B43C: .4byte 0x08A3C264
_0803B440: .4byte 0x08A3C2E4
_0803B444: .4byte 0xFFFFFEC0
_0803B448: .4byte 0xFFFFFE00
_0803B44C: .4byte gOamBuffer
_0803B450: .4byte 0x080DD956
_0803B454: .4byte 0x080DD960
_0803B458: .4byte 0x000001FF
_0803B45C: .4byte 0x080DD96A
_0803B460: .4byte 0x000003FF
_0803B464: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803B468
sub_803B468: @ 0x0803B468
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0803B494
	ldr r0, _0803B498
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803B4A0
	adds r1, r0, #0
	movs r0, #0x76
	muls r0, r1, r0
	ldr r3, _0803B49C
	adds r1, r2, r3
	ldrh r1, [r1]
	subs r1, #1
	bl __divsi3
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0803B4A2
	.align 2, 0
_0803B494: .4byte 0x02022EC0
_0803B498: .4byte 0x00000FB6
_0803B49C: .4byte 0x00000FB4
_0803B4A0:
	movs r0, #0x18
_0803B4A2:
	ldr r2, _0803B504
	movs r7, #0
	mov r8, r7
	strb r0, [r2]
	movs r3, #0xd
	rsbs r3, r3, #0
	movs r4, #0x11
	rsbs r4, r4, #0
	movs r5, #0x21
	rsbs r5, r5, #0
	movs r6, #0x3f
	movs r0, #0x80
	strb r0, [r2, #1]
	ldrh r1, [r2, #2]
	ldr r0, _0803B508
	ands r0, r1
	movs r7, #0xff
	lsls r7, r7, #1
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2, #2]
	ldrb r1, [r2, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	ands r0, r5
	ands r0, r6
	strb r0, [r2, #3]
	ldrh r1, [r2, #4]
	ldr r0, _0803B50C
	ands r0, r1
	movs r1, #0x88
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	ands r3, r0
	movs r0, #0xf
	ands r3, r0
	movs r0, #0xa0
	orrs r3, r0
	strb r3, [r2, #5]
	mov r0, r8
	strh r0, [r2, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B504: .4byte gOamBuffer+0x50
_0803B508: .4byte 0xFFFFFE00
_0803B50C: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803B510
sub_803B510: @ 0x0803B510
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r3, _0803B59C
	ldr r0, _0803B5A0
	ldrh r0, [r0, #4]
	movs r1, #0
	mov r8, r1
	strb r0, [r3]
	ldrb r1, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r4, #0xd
	rsbs r4, r4, #0
	ands r0, r4
	movs r1, #8
	orrs r0, r1
	movs r6, #0x11
	rsbs r6, r6, #0
	ands r0, r6
	movs r1, #0x20
	orrs r0, r1
	movs r5, #0x3f
	ands r0, r5
	strb r0, [r3, #1]
	ldr r0, _0803B5A4
	ldrh r1, [r0, #4]
	ldr r2, _0803B5A8
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0803B5AC
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r6
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r5
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, _0803B5B0
	ldrh r0, [r0, #4]
	ldr r1, _0803B5B4
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0803B5B8
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	strb r4, [r3, #5]
	mov r0, r8
	strh r0, [r3, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B59C: .4byte gOamBuffer+0x28
_0803B5A0: .4byte 0x080DD956
_0803B5A4: .4byte 0x080DD960
_0803B5A8: .4byte 0x000001FF
_0803B5AC: .4byte 0xFFFFFE00
_0803B5B0: .4byte 0x080DD96A
_0803B5B4: .4byte 0x000003FF
_0803B5B8: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803B5BC
sub_803B5BC: @ 0x0803B5BC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r3, _0803B64C
	ldr r2, _0803B650
	ldr r1, _0803B654
	ldr r0, _0803B658
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0
	mov sb, r2
	strb r0, [r3]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r6, #0x21
	rsbs r6, r6, #0
	movs r0, #0x3f
	mov r8, r0
	movs r0, #0
	strb r0, [r3, #1]
	ldr r2, _0803B65C
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r2, _0803B660
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0803B664
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #3]
	ldrh r1, [r3, #4]
	ldr r0, _0803B668
	ands r0, r1
	movs r1, #0x89
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	movs r0, #0xb0
	orrs r4, r0
	strb r4, [r3, #5]
	mov r2, sb
	strh r2, [r3, #6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B64C: .4byte gOamBuffer+0x60
_0803B650: .4byte 0x080DD97C
_0803B654: .4byte 0x02022EC0
_0803B658: .4byte 0x00000FB8
_0803B65C: .4byte 0x080DD980
_0803B660: .4byte 0x000001FF
_0803B664: .4byte 0xFFFFFE00
_0803B668: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803B66C
sub_803B66C: @ 0x0803B66C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r3, _0803B6FC
	ldr r2, _0803B700
	ldr r1, _0803B704
	ldr r0, _0803B708
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0
	mov sb, r2
	strb r0, [r3]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r6, #0x21
	rsbs r6, r6, #0
	movs r0, #0x3f
	mov r8, r0
	movs r0, #0
	strb r0, [r3, #1]
	ldr r2, _0803B70C
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r2, _0803B710
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0803B714
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #3]
	ldrh r1, [r3, #4]
	ldr r0, _0803B718
	ands r0, r1
	movs r1, #0x89
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	movs r0, #0xb0
	orrs r4, r0
	strb r4, [r3, #5]
	mov r2, sb
	strh r2, [r3, #6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B6FC: .4byte gOamBuffer+0x60
_0803B700: .4byte 0x080DD9B0
_0803B704: .4byte 0x02022EC0
_0803B708: .4byte 0x00000FB8
_0803B70C: .4byte 0x080DD9C6
_0803B710: .4byte 0x000001FF
_0803B714: .4byte 0xFFFFFE00
_0803B718: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803B71C
sub_803B71C: @ 0x0803B71C
	push {lr}
	bl sub_803A60C
	bl sub_803BE54
	bl DisableDisplay
	ldr r0, _0803B770
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r1, _0803B774
	ldr r2, _0803B778
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803B77C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xfd
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_803BFF8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xfe
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803B770: .4byte LoadOam
_0803B774: .4byte 0x0400000A
_0803B778: .4byte 0x00001F0D
_0803B77C: .4byte 0x00000E06

	THUMB_FUNC_START sub_803B780
sub_803B780: @ 0x0803B780
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r5, _0803B7D8
	ldr r7, _0803B7DC
	ldr r0, _0803B7E0
	adds r6, r5, r0
_0803B78C:
	adds r0, r4, #0
	bl sub_8037798
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r2, _0803B7E4
	adds r0, r5, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803B7B6
	adds r0, r1, #0
	bl SetCardInfo
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_0803B7B6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0803B78C
	ldr r0, _0803B7E8
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B7D8: .4byte 0x02022EC0
_0803B7DC: .4byte 0x08E0CEA0
_0803B7E0: .4byte 0x00000FB9
_0803B7E4: .4byte 0x00000642
_0803B7E8: .4byte LoadOam

	THUMB_FUNC_START sub_803B7EC
sub_803B7EC: @ 0x0803B7EC
	push {lr}
	bl sub_803BB4C
	bl sub_803B468
	bl sub_803BE54
	bl sub_803B2A8
	ldr r0, _0803B81C
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock1
	bl LoadCharblock3
	bl LoadCharblock4
	pop {r0}
	bx r0
	.align 2, 0
_0803B81C: .4byte LoadOam
	.byte 0x70, 0xB5, 0x00, 0x24, 0x1D, 0x4E, 0x1E, 0x4D, 0x20, 0x1C, 0xFB, 0xF7, 0xB5, 0xFF, 0x00, 0x04
	.byte 0x00, 0x0C, 0xCF, 0xF7, 0xD7, 0xFD, 0x28, 0x78, 0x80, 0x00, 0x80, 0x19, 0x01, 0x68, 0x20, 0x1C
	.byte 0x1F, 0xF0, 0x3C, 0xF9, 0x20, 0x1C, 0xFF, 0xF7, 0xE5, 0xF8, 0x20, 0x1C, 0x00, 0xF0, 0x1C, 0xFA
	.byte 0x20, 0x1C, 0xFF, 0xF7, 0xEB, 0xF9, 0x28, 0x78, 0x80, 0x00, 0x80, 0x19, 0x01, 0x68, 0x20, 0x1C
	.byte 0x1F, 0xF0, 0x2C, 0xF9, 0x20, 0x1C, 0x00, 0xF0, 0x57, 0xFA, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E
	.byte 0x04, 0x2C, 0xD9, 0xD9, 0x00, 0xF0, 0x98, 0xF9, 0xFF, 0xF7, 0xF6, 0xFD, 0x00, 0xF0, 0xEA, 0xFA
	.byte 0x08, 0x48, 0xCC, 0xF7, 0xAB, 0xFC, 0xCC, 0xF7, 0xCB, 0xFC, 0x09, 0xF0, 0x29, 0xFE, 0x09, 0xF0
	.byte 0xFF, 0xFE, 0x09, 0xF0, 0x25, 0xFF, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xA0, 0xCE, 0xE0, 0x08
	.byte 0x79, 0x3E, 0x02, 0x02, 0xC9, 0x54, 0x04, 0x08, 0x70, 0xB5, 0x00, 0x24, 0x1A, 0x4E, 0x1B, 0x4D
	.byte 0x20, 0x1C, 0xFB, 0xF7, 0x71, 0xFF, 0x00, 0x04, 0x00, 0x0C, 0xCF, 0xF7, 0x93, 0xFD, 0x20, 0x1C
	.byte 0xFF, 0xF7, 0xA8, 0xF8, 0x20, 0x1C, 0x00, 0xF0, 0xDF, 0xF9, 0x20, 0x1C, 0xFF, 0xF7, 0xAE, 0xF9
	.byte 0x28, 0x78, 0x80, 0x00, 0x80, 0x19, 0x01, 0x68, 0x20, 0x1C, 0x1F, 0xF0, 0xEF, 0xF8, 0x20, 0x1C
	.byte 0x00, 0xF0, 0x1A, 0xFA, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xE0, 0xD9, 0x00, 0xF0
	.byte 0x93, 0xF9, 0xFF, 0xF7, 0xB9, 0xFD, 0x00, 0xF0, 0xAD, 0xFA, 0x09, 0x48, 0xCC, 0xF7, 0x6E, 0xFC
	.byte 0xCC, 0xF7, 0x8E, 0xFC, 0x09, 0xF0, 0xEC, 0xFD, 0x09, 0xF0, 0xC2, 0xFE, 0x09, 0xF0, 0xE8, 0xFE
	.byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA0, 0xCE, 0xE0, 0x08, 0x79, 0x3E, 0x02, 0x02
	.byte 0xC9, 0x54, 0x04, 0x08

	THUMB_FUNC_START sub_803B924
sub_803B924: @ 0x0803B924
	push {lr}
	bl sub_803BEE4
	bl sub_803BF08
	bl sub_803BE54
	ldr r1, _0803B958
	movs r0, #4
	strh r0, [r1]
	ldr r0, _0803B95C
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0803B960
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803B958: .4byte gBLDY
_0803B95C: .4byte LoadOam
_0803B960: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_803B964
sub_803B964: @ 0x0803B964
	push {lr}
	bl sub_803A7B4
	bl sub_803BE9C
	bl sub_803B5BC
	bl sub_803BEC0
	bl sub_803BFB8
	ldr r0, _0803B9AC
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock2
	bl LoadBlendingRegs
	ldr r1, _0803B9B0
	ldr r2, _0803B9B4
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803B9AC: .4byte LoadOam
_0803B9B0: .4byte 0x04000008
_0803B9B4: .4byte 0x00001708

	THUMB_FUNC_START sub_803B9B8
sub_803B9B8: @ 0x0803B9B8
	push {lr}
	bl sub_803B5BC
	bl sub_803BEC0
	ldr r0, _0803B9D0
	bl SetVBlankCallback
	bl WaitForVBlank
	pop {r0}
	bx r0
	.align 2, 0
_0803B9D0: .4byte LoadOam

	THUMB_FUNC_START sub_803B9D4
sub_803B9D4: @ 0x0803B9D4
	push {lr}
	bl sub_803A60C
	bl sub_803A7B4
	bl sub_803B5BC
	bl sub_803BEC0
	bl sub_803BFB8
	bl DisableDisplay
	ldr r0, _0803BA3C
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r1, _0803BA40
	ldr r2, _0803BA44
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803BA48
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803BA4C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xfd
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_803BFF8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803BA3C: .4byte LoadOam
_0803BA40: .4byte 0x04000008
_0803BA44: .4byte 0x00001708
_0803BA48: .4byte 0x00001F0D
_0803BA4C: .4byte 0x00000E06

	THUMB_FUNC_START sub_803BA50
sub_803BA50: @ 0x0803BA50
	push {lr}
	bl sub_803BAD8
	bl sub_803BE9C
	bl sub_803BE78
	bl sub_803B66C
	bl sub_803BF2C
	bl sub_803BFD8
	ldr r0, _0803BAA4
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock2
	bl LoadBlendingRegs
	ldr r1, _0803BAA8
	ldr r2, _0803BAAC
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0803BAB0
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803BAA4: .4byte LoadOam
_0803BAA8: .4byte 0x04000008
_0803BAAC: .4byte 0x00001708
_0803BAB0: .4byte 0x0000BFFF

	THUMB_FUNC_START sub_803BAB4
sub_803BAB4: @ 0x0803BAB4
	push {lr}
	bl sub_803B2A8
	bl sub_803B66C
	bl sub_803BF2C
	ldr r0, _0803BAD4
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadCharblock1
	pop {r0}
	bx r0
	.align 2, 0
_0803BAD4: .4byte LoadOam

	THUMB_FUNC_START sub_803BAD8
sub_803BAD8: @ 0x0803BAD8
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803BB30
	ldr r2, _0803BB34
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0803BB38
	ldr r5, _0803BB3C
	adds r2, r5, #0
	bl CopyStringTilesToVRAMBuffer
	movs r0, #0xc9
	lsls r0, r0, #5
	adds r4, r4, r0
	ldr r1, _0803BB40
	adds r0, r4, #0
	adds r2, r5, #0
	bl CopyStringTilesToVRAMBuffer
	movs r4, #0
	movs r5, #0
_0803BB10:
	ldr r0, _0803BB44
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0803BB48
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803BB10
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BB30: .4byte 0x02008400
_0803BB34: .4byte 0x01000010
_0803BB38: .4byte 0x080DE194
_0803BB3C: .4byte 0x00000901
_0803BB40: .4byte 0x080DE400
_0803BB44: .4byte 0x08A323D4
_0803BB48: .4byte 0x0200BC00

	THUMB_FUNC_START sub_803BB4C
sub_803BB4C: @ 0x0803BB4C
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _0803BBA0
	ldr r5, _0803BBA4
_0803BB54:
	adds r0, r4, #0
	bl sub_8037798
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	adds r0, r4, #0
	bl sub_803AA14
	adds r0, r4, #0
	bl sub_803AAB0
	adds r0, r4, #0
	bl sub_803BC88
	adds r0, r4, #0
	bl sub_803AC2C
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803BD18
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0803BB54
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BBA0: .4byte 0x08E0CEA0
_0803BBA4: .4byte 0x02023E79

	THUMB_FUNC_START sub_803BBA8
sub_803BBA8: @ 0x0803BBA8
	push {r4, r5, r6, lr}
	ldr r0, _0803BC0C
	ldrh r4, [r0, #6]
	lsls r4, r4, #5
	ldr r0, _0803BC10
	adds r4, r4, r0
	movs r5, #0xa0
	lsls r5, r5, #3
	adds r1, r4, r5
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803BC14
	adds r4, r4, r0
	adds r1, r4, r5
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803BC14
	adds r4, r4, r0
	adds r1, r4, r5
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803BC14
	adds r4, r4, r0
	adds r5, r4, r5
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl CpuSet
	movs r0, #0
	bl sub_8037798
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #0
	bl sub_803AAB0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BC0C: .4byte 0x080DD8F8
_0803BC10: .4byte 0x0200C400
_0803BC14: .4byte 0xFFFFFB00

	THUMB_FUNC_START sub_803BC18
sub_803BC18: @ 0x0803BC18
	push {r4, r5, r6, lr}
	ldr r0, _0803BC7C
	ldrh r4, [r0, #2]
	lsls r4, r4, #5
	ldr r0, _0803BC80
	adds r4, r4, r0
	ldr r0, _0803BC84
	adds r1, r4, r0
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	movs r5, #0xa0
	lsls r5, r5, #3
	adds r4, r4, r5
	ldr r0, _0803BC84
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	adds r4, r4, r5
	ldr r0, _0803BC84
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	adds r4, r4, r5
	ldr r0, _0803BC84
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	movs r0, #4
	bl sub_8037798
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #4
	bl sub_803AAB0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BC7C: .4byte 0x080DD8F8
_0803BC80: .4byte 0x0200C400
_0803BC84: .4byte 0xFFFFFB00

	THUMB_FUNC_START sub_803BC88
sub_803BC88: @ 0x0803BC88
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803BCFC
	adds r2, r0, r2
	ldr r1, _0803BD00
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0803BD04
	adds r1, r0, r1
	movs r2, #0
	ldr r0, _0803BD08
	ldr r3, _0803BD0C
	ldr r4, _0803BD10
	adds r0, r0, r4
	ldrh r4, [r3, #0x10]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BCDC
	ldrb r0, [r3, #0x18]
	cmp r2, r0
	bhs _0803BCDC
	ldr r0, _0803BD14
	adds r4, r0, #0
_0803BCC8:
	strh r4, [r1]
	subs r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xb
	bhi _0803BCF4
	ldrb r0, [r3, #0x18]
	cmp r2, r0
	blo _0803BCC8
_0803BCDC:
	cmp r2, #0xb
	bhi _0803BCF4
	movs r4, #0xa0
	lsls r4, r4, #7
	adds r3, r4, #0
_0803BCE6:
	strh r3, [r1]
	subs r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xb
	bls _0803BCE6
_0803BCF4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BCFC: .4byte 0x080DD902
_0803BD00: .4byte 0x080DD907
_0803BD04: .4byte 0x02000400
_0803BD08: .4byte 0x02022EC0
_0803BD0C: .4byte gCardInfo
_0803BD10: .4byte 0x00000642
_0803BD14: .4byte 0x00005001

	THUMB_FUNC_START sub_803BD18
sub_803BD18: @ 0x0803BD18
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	ldr r1, _0803BD48
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0803BD4C
	adds r6, r0, r1
	ldr r0, _0803BD50
	ldr r1, _0803BD54
	ldrh r1, [r1, #0x10]
	ldr r2, _0803BD58
	adds r0, r0, r2
	adds r0, r1, r0
	ldrb r7, [r0]
	cmp r7, #0
	beq _0803BD5C
	adds r0, r6, #0
	bl sub_80573D0
	b _0803BD9C
	.align 2, 0
_0803BD48: .4byte 0x080DD96A
_0803BD4C: .4byte 0x02010400
_0803BD50: .4byte 0x02022EC0
_0803BD54: .4byte gCardInfo
_0803BD58: .4byte 0x00000642
_0803BD5C:
	mov r0, sp
	strh r7, [r0]
	ldr r5, _0803BDA4
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	movs r4, #0x80
	lsls r4, r4, #3
	adds r6, r6, r4
	mov r0, sp
	adds r0, #2
	strh r7, [r0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	adds r6, r6, r4
	add r0, sp, #4
	strh r7, [r0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	adds r6, r6, r4
	mov r0, sp
	adds r0, #6
	strh r7, [r0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
_0803BD9C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BDA4: .4byte 0x01000080

	THUMB_FUNC_START sub_803BDA8
sub_803BDA8: @ 0x0803BDA8
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803BDF0
	ldr r2, _0803BDF4
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0803BDF8
	ldr r2, _0803BDFC
	bl CopyStringTilesToVRAMBuffer
	mov r0, sp
	adds r0, #2
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r2, #0
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r4, r4, r1
	ldr r2, _0803BE00
	adds r1, r4, #0
	bl CpuSet
	bl sub_803B2A8
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BDF0: .4byte 0x02004400
_0803BDF4: .4byte 0x01000010
_0803BDF8: .4byte 0x080DE50C
_0803BDFC: .4byte 0x00000901
_0803BE00: .4byte 0x01000400

	THUMB_FUNC_START sub_803BE04
sub_803BE04: @ 0x0803BE04
	push {r4, r5, lr}
	ldr r0, _0803BE3C
	ldr r1, _0803BE40
	bl LZ77UnCompWram
	movs r4, #0
	movs r5, #0
_0803BE12:
	ldr r0, _0803BE44
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0803BE48
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803BE12
	ldr r0, _0803BE4C
	ldr r1, _0803BE50
	movs r2, #0x40
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BE3C: .4byte 0x08A396EC
_0803BE40: .4byte 0x02000400
_0803BE44: .4byte 0x08A3BCD4
_0803BE48: .4byte 0x02007C00
_0803BE4C: .4byte 0x08A3C184
_0803BE50: .4byte 0x02000000

	THUMB_FUNC_START sub_803BE54
sub_803BE54: @ 0x0803BE54
	ldr r2, _0803BE74
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803BE74: .4byte gOamBuffer+0x50

	THUMB_FUNC_START sub_803BE78
sub_803BE78: @ 0x0803BE78
	ldr r0, _0803BE98
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803BE98: .4byte gOamBuffer+0x28

	THUMB_FUNC_START sub_803BE9C
sub_803BE9C: @ 0x0803BE9C
	ldr r0, _0803BEBC
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803BEBC: .4byte gOamBuffer+0x58

	THUMB_FUNC_START sub_803BEC0
sub_803BEC0: @ 0x0803BEC0
	ldr r2, _0803BEE0
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803BEE0: .4byte gOamBuffer+0x60

	THUMB_FUNC_START sub_803BEE4
sub_803BEE4: @ 0x0803BEE4
	ldr r0, _0803BF04
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803BF04: .4byte gOamBuffer+0x60

	THUMB_FUNC_START sub_803BF08
sub_803BF08: @ 0x0803BF08
	ldr r0, _0803BF28
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803BF28: .4byte gOamBuffer+0x68

	THUMB_FUNC_START sub_803BF2C
sub_803BF2C: @ 0x0803BF2C
	ldr r2, _0803BF4C
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803BF4C: .4byte gOamBuffer+0x60
	.byte 0x07, 0x48, 0x80, 0x22, 0x92, 0x00, 0x11, 0x1C, 0x01, 0x80, 0x02, 0x30, 0x00, 0x21, 0x01, 0x80
	.byte 0x02, 0x30, 0x01, 0x80, 0x80, 0x22, 0x52, 0x00, 0x11, 0x1C, 0x41, 0x80, 0x70, 0x47, 0x00, 0x00
	.byte 0x60, 0x84, 0x01, 0x02, 0x07, 0x48, 0x80, 0x22, 0x92, 0x00, 0x11, 0x1C, 0x01, 0x80, 0x02, 0x30
	.byte 0x00, 0x21, 0x01, 0x80, 0x02, 0x30, 0x01, 0x80, 0x80, 0x22, 0x52, 0x00, 0x11, 0x1C, 0x41, 0x80
	.byte 0x70, 0x47, 0x00, 0x00, 0x68, 0x84, 0x01, 0x02

	THUMB_FUNC_START sub_803BF98
sub_803BF98: @ 0x0803BF98
	ldr r1, _0803BFAC
	movs r0, #0xf2
	strh r0, [r1]
	ldr r1, _0803BFB0
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803BFB4
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803BFAC: .4byte gBLDCNT
_0803BFB0: .4byte gBLDALPHA
_0803BFB4: .4byte gBLDY

	THUMB_FUNC_START sub_803BFB8
sub_803BFB8: @ 0x0803BFB8
	ldr r1, _0803BFCC
	movs r0, #0xfa
	strh r0, [r1]
	ldr r1, _0803BFD0
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803BFD4
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803BFCC: .4byte gBLDCNT
_0803BFD0: .4byte gBLDALPHA
_0803BFD4: .4byte gBLDY

	THUMB_FUNC_START sub_803BFD8
sub_803BFD8: @ 0x0803BFD8
	ldr r1, _0803BFEC
	movs r0, #0xfa
	strh r0, [r1]
	ldr r1, _0803BFF0
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803BFF4
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803BFEC: .4byte gBLDCNT
_0803BFF0: .4byte gBLDALPHA
_0803BFF4: .4byte gBLDY

	THUMB_FUNC_START sub_803BFF8
sub_803BFF8: @ 0x0803BFF8
	ldr r1, _0803C028
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x18
	strh r0, [r1]
	subs r1, #2
	ldr r2, _0803C02C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0803C030
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803C034
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803C038
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803C028: .4byte 0x04000040
_0803C02C: .4byte 0x000004D4
_0803C030: .4byte 0x0000486F
_0803C034: .4byte 0x00001E0E
_0803C038: .4byte 0x0000183F

	THUMB_FUNC_START sub_803C03C
sub_803C03C: @ 0x0803C03C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803C100
	movs r3, #0
	ldr r5, _0803C104
	ldr r6, _0803C108
	ldr r1, _0803C10C
	mov ip, r1
	ldr r2, _0803C110
	mov r8, r2
	ldr r7, _0803C114
	mov sb, r7
	ldr r1, _0803C118
	mov sl, r1
	movs r7, #0x80
	lsls r7, r7, #2
	adds r2, r7, #0
	movs r1, #0
	movs r7, #0x80
	lsls r7, r7, #1
	adds r4, r7, #0
_0803C06C:
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0803C06C
	movs r0, #0
	strh r0, [r5]
	strh r0, [r6]
	ldr r1, _0803C11C
	strh r0, [r1]
	mov r2, ip
	strh r0, [r2]
	ldr r7, _0803C120
	adds r1, r7, #0
	mov r2, r8
	strh r1, [r2]
	movs r1, #4
	mov r7, sb
	strh r1, [r7]
	mov r1, sl
	strh r0, [r1]
	ldr r2, _0803C124
	strh r0, [r2]
	bl sub_803C308
	bl sub_803D888
	bl sub_803D8E4
	bl sub_803CDAC
	bl sub_803CFA0
	bl sub_803CEF8
	bl sub_803DA78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C100: .4byte gOamBuffer
_0803C104: .4byte gBG0VOFS
_0803C108: .4byte gBG0HOFS
_0803C10C: .4byte gBG1HOFS
_0803C110: .4byte gBG2VOFS
_0803C114: .4byte gBG2HOFS
_0803C118: .4byte gBG3VOFS
_0803C11C: .4byte gBG1VOFS
_0803C120: .4byte 0x000001FD
_0803C124: .4byte gBG3HOFS

	THUMB_FUNC_START sub_803C128
sub_803C128: @ 0x0803C128
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r7, _0803C1D0
	ldr r6, _0803C1D4
_0803C130:
	adds r0, r5, #0
	bl sub_80383E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_803C4A4
	adds r0, r4, #0
	bl sub_803C540
	adds r0, r4, #0
	bl sub_803D768
	adds r0, r4, #0
	bl sub_803C6BC
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803D7F8
	adds r5, #1
	cmp r5, #4
	bls _0803C130
	bl sub_803D9C4
	bl sub_803D9E8
	bl sub_803CEF8
	bl sub_803D934
	bl sub_803CFA0
	bl sub_803CD38
	ldr r1, _0803C1D8
	movs r0, #4
	strh r0, [r1]
	ldr r0, _0803C1DC
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock3
	bl LoadCharblock4
	bl LoadCharblock1
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0803C1E0
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C1D0: .4byte 0x08E0CEB0
_0803C1D4: .4byte 0x02023E71
_0803C1D8: .4byte gBLDY
_0803C1DC: .4byte LoadOam
_0803C1E0: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_803C1E4
sub_803C1E4: @ 0x0803C1E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803C2EC
	ldr r2, _0803C2F0
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r4, #0x20
	ldr r1, _0803C2F4
	ldr r2, _0803C2F8
	adds r0, r4, #0
	bl CopyStringTilesToVRAMBuffer
	movs r6, #0
	movs r4, #0
_0803C210:
	ldr r0, _0803C2FC
	adds r0, r4, r0
	lsls r1, r6, #6
	ldr r2, _0803C300
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r4, #0x3c
	adds r6, #1
	cmp r6, #0x13
	bls _0803C210
	movs r4, #0xb8
	lsls r4, r4, #8
	movs r0, #4
	movs r1, #3
	adds r2, r4, #0
	bl sub_08007FEC
	movs r1, #0xff
	lsls r1, r1, #8
	mov r8, r1
	ands r1, r0
	mov r8, r1
	movs r6, #0
	adds r7, r4, #0
_0803C244:
	adds r4, r6, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803C304
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #0x15
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #5
	adds r2, r7, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x17
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #6
	adds r2, r7, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r7, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0x10
	adds r2, r7, #0
	bl sub_800800C
	adds r6, #1
	cmp r6, #9
	bls _0803C244
	movs r6, #0
	movs r0, #0xb8
	lsls r0, r0, #8
	mov sb, r0
	movs r7, #0x80
	lsls r7, r7, #0x15
_0803C2A8:
	lsrs r5, r7, #0x18
	ldr r4, _0803C304
	adds r4, r6, r4
	ldrb r3, [r4]
	adds r3, #0x51
	mov r1, r8
	orrs r3, r1
	adds r0, r5, #0
	movs r1, #5
	mov r2, sb
	bl sub_800800C
	ldrb r3, [r4]
	adds r3, #0x53
	mov r0, r8
	orrs r3, r0
	adds r0, r5, #0
	movs r1, #6
	mov r2, sb
	bl sub_800800C
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r7, r7, r1
	adds r6, #1
	cmp r6, #0xd
	bls _0803C2A8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C2EC: .4byte 0x02008400
_0803C2F0: .4byte 0x01000010
_0803C2F4: .4byte 0x080DE594
_0803C2F8: .4byte 0x00000901
_0803C2FC: .4byte 0x08A3581C
_0803C300: .4byte 0x0200BC00
_0803C304: .4byte g8DF811C

	THUMB_FUNC_START sub_803C308
sub_803C308: @ 0x0803C308
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803C45C
	ldr r2, _0803C460
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	bl CopyStarTile
	adds r0, r4, #0
	adds r0, #0x40
	bl CopySwordTile
	adds r0, r4, #0
	adds r0, #0x60
	bl CopyShieldTile
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r1, _0803C464
	ldr r2, _0803C468
	bl CopyStringTilesToVRAMBuffer
	movs r5, #0
	mov r7, sp
	adds r7, #2
	ldr r4, _0803C46C
_0803C34A:
	ldr r1, _0803C470
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #7
	ldr r2, _0803C474
	adds r1, r1, r2
	movs r2, #0x40
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bls _0803C34A
	movs r5, #0
	ldr r4, _0803C478
_0803C374:
	ldr r1, _0803C470
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #7
	ldr r2, _0803C47C
	adds r1, r1, r2
	movs r2, #0x40
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x14
	bls _0803C374
	movs r5, #0
	ldr r4, _0803C478
_0803C39E:
	ldr r2, _0803C470
	adds r1, r5, #0
	adds r1, #0x15
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #8
	ldr r6, _0803C480
	adds r1, r1, r6
	movs r2, #0x80
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0803C39E
	ldr r0, _0803C484
	bl sub_8008BF8
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
	strh r4, [r7]
	ldr r2, _0803C488
	adds r1, r6, r2
	ldr r2, _0803C48C
	adds r0, r7, #0
	bl CpuSet
	movs r5, #0
	ldr r7, _0803C490
	adds r6, r4, #0
	ldr r0, _0803C494
	mov ip, r0
_0803C3EC:
	lsls r0, r5, #1
	add r0, ip
	ldrh r3, [r0]
	ldr r1, _0803C498
	adds r1, r5, r1
	ldr r0, _0803C49C
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r0, r0, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0803C4A0
	adds r2, r0, r1
	movs r4, #0
	adds r5, #1
_0803C412:
	adds r0, r3, #0
	ands r0, r7
	orrs r0, r6
	strh r0, [r2]
	adds r0, r3, #1
	ands r0, r7
	orrs r0, r6
	strh r0, [r2, #2]
	adds r0, r3, #2
	ands r0, r7
	orrs r0, r6
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r0, r3, #3
	ands r0, r7
	orrs r0, r6
	strh r0, [r1, #2]
	adds r0, r3, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _0803C412
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0803C3EC
	bl sub_803D62C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C45C: .4byte 0x0200C400
_0803C460: .4byte 0x01000010
_0803C464: .4byte 0x080DEA54
_0803C468: .4byte 0x00001801
_0803C46C: .4byte gAttributeIconTiles
_0803C470: .4byte gLanguage
_0803C474: .4byte 0x0200C620
_0803C478: .4byte gTypeIconTiles
_0803C47C: .4byte 0x0200CC20
_0803C480: .4byte 0x0200D6A0
_0803C484: .4byte 0x020000A0
_0803C488: .4byte 0x00002560
_0803C48C: .4byte 0x01000400
_0803C490: .4byte 0x000003FF
_0803C494: .4byte 0x080DD7E0
_0803C498: .4byte 0x080DD7D6
_0803C49C: .4byte 0x080DD7DB
_0803C4A0: .4byte 0x02000400

	THUMB_FUNC_START sub_803C4A4
sub_803C4A4: @ 0x0803C4A4
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803C50C
	adds r2, r0, r2
	ldr r1, _0803C510
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0803C514
	adds r4, r0, r1
	ldr r0, _0803C518
	ldr r1, _0803C51C
	ldrh r1, [r1, #0x10]
	ldr r2, _0803C520
	adds r0, r0, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C528
	adds r0, r1, #0
	movs r1, #1
	bl ConvertU16ToDigitBuffer
	ldr r2, _0803C524
	ldrb r0, [r2]
	adds r0, #7
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r2, #3]
	adds r0, #7
	orrs r0, r1
	b _0803C538
	.align 2, 0
_0803C50C: .4byte 0x080DD7CC
_0803C510: .4byte 0x080DD7D1
_0803C514: .4byte 0x02000400
_0803C518: .4byte 0x02022EC0
_0803C51C: .4byte gCardInfo
_0803C520: .4byte 0x00000321
_0803C524: .4byte 0x02021BD0
_0803C528:
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
_0803C538:
	strh r0, [r4, #2]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803C540
sub_803C540: @ 0x0803C540
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r5, #0
	movs r6, #0
	ldr r4, _0803C60C
	ldr r0, [r4]
	bl GetCurrentLanguageString
	adds r2, r0, #0
	ldr r0, _0803C610
	ldr r1, _0803C614
	adds r0, r0, r1
	ldrh r4, [r4, #0x10]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C5C0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803C5C0
	ldr r7, _0803C618
	mov ip, r7
	mov r1, r8
	lsls r3, r1, #1
	ldr r4, _0803C61C
	cmp r0, #0x24
	beq _0803C5C0
_0803C580:
	adds r0, r2, r5
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0803C59A
	mov r7, sp
	adds r0, r7, r5
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0803C59A:
	mov r0, sp
	adds r1, r0, r5
	adds r0, r2, r5
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bhi _0803C5E6
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C5C0
	cmp r0, #0x24
	bne _0803C580
_0803C5C0:
	ldr r1, _0803C618
	mov ip, r1
	mov r2, r8
	lsls r3, r2, #1
	ldr r4, _0803C61C
	cmp r6, #0x13
	bhi _0803C5E6
	movs r1, #0x20
_0803C5D0:
	mov r7, sp
	adds r0, r7, r5
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0803C5D0
_0803C5E6:
	mov r0, sp
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
	mov r1, ip
	adds r0, r3, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r2, _0803C620
	mov r1, sp
	bl CopyStringTilesToVRAMBuffer
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C60C: .4byte gCardInfo
_0803C610: .4byte 0x02022EC0
_0803C614: .4byte 0x00000321
_0803C618: .4byte 0x080DD7E0
_0803C61C: .4byte 0x0200C400
_0803C620: .4byte 0x00000901
	.byte 0x30, 0xB5, 0x00, 0x06, 0x02, 0x0E, 0x18, 0x49, 0x51, 0x18, 0x18, 0x48
	.byte 0x10, 0x18, 0x00, 0x78, 0x40, 0x01, 0xF8, 0x23, 0xDB, 0x01, 0xC0, 0x18, 0x09, 0x78, 0x40, 0x18
	.byte 0x40, 0x00, 0x14, 0x49, 0x44, 0x18, 0x14, 0x4D, 0x14, 0x49, 0x15, 0x4B, 0xE8, 0x18, 0x09, 0x8A
	.byte 0x40, 0x18, 0x00, 0x78, 0x00, 0x28, 0x27, 0xD0, 0x10, 0x1C, 0xFB, 0xF7, 0xC3, 0xFE, 0x40, 0x19
	.byte 0x00, 0x78, 0x01, 0x21, 0xD1, 0xF7, 0x9C, 0xFB, 0x0E, 0x4A, 0x10, 0x78, 0x07, 0x30, 0xA0, 0x23
	.byte 0xDB, 0x01, 0x19, 0x1C, 0x08, 0x43, 0x20, 0x80, 0x02, 0x34, 0x50, 0x78, 0x07, 0x30, 0x08, 0x43
	.byte 0x20, 0x80, 0x90, 0x78, 0x07, 0x30, 0x08, 0x43, 0x14, 0xE0, 0x00, 0x00, 0xF4, 0xD7, 0x0D, 0x08
	.byte 0xF9, 0xD7, 0x0D, 0x08, 0x00, 0x04, 0x00, 0x02, 0xC0, 0x2E, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0x21, 0x03, 0x00, 0x00, 0xD0, 0x1B, 0x02, 0x02, 0xA0, 0x21, 0xC9, 0x01, 0x08, 0x1C, 0x20, 0x80
	.byte 0x02, 0x34, 0x20, 0x80, 0x60, 0x80, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_803C6BC
sub_803C6BC: @ 0x0803C6BC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _0803C724
	adds r1, r2, r1
	ldr r0, _0803C728
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r0, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0803C72C
	adds r4, r0, r1
	ldr r1, _0803C730
	ldr r0, _0803C734
	ldrh r0, [r0, #0x10]
	ldr r3, _0803C738
	adds r5, r1, r3
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C740
	adds r0, r2, #0
	bl sub_80383E4
	adds r0, r0, r5
	ldrb r0, [r0]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	ldr r2, _0803C73C
	ldrb r0, [r2, #2]
	adds r0, #7
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r2, #4]
	adds r0, #7
	orrs r0, r1
	b _0803C74C
	.align 2, 0
_0803C724: .4byte 0x080DD7FE
_0803C728: .4byte 0x080DD803
_0803C72C: .4byte 0x02000400
_0803C730: .4byte 0x02022EC0
_0803C734: .4byte gCardInfo
_0803C738: .4byte 0x00000321
_0803C73C: .4byte 0x02021BD0
_0803C740:
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
_0803C74C:
	strh r0, [r4, #2]
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803C754
sub_803C754: @ 0x0803C754
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r5, _0803C844
	adds r0, r5, #0
	bl CopySwordTile
	adds r0, r5, #0
	adds r0, #0x20
	bl CopyShieldTile
	ldr r0, _0803C848
	ldr r1, _0803C84C
	mov sl, r1
	ldr r2, _0803C850
	adds r0, r0, r2
	ldrh r6, [r1, #0x10]
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C86C
	ldrh r0, [r1, #0x12]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	ldr r0, _0803C854
	adds r0, r4, r0
	ldrb r6, [r0]
	ldr r0, _0803C858
	adds r0, r4, r0
	ldrb r4, [r0]
	lsls r0, r4, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	mov sb, r1
	add r0, sb
	adds r0, r6, r0
	lsls r0, r0, #1
	ldr r2, _0803C85C
	adds r2, r2, r5
	mov r8, r2
	adds r7, r0, r2
	ldr r5, _0803C860
	adds r0, r5, #0
	strh r0, [r7]
	adds r7, #2
	ldr r5, _0803C864
	ldrb r0, [r5]
	adds r0, #7
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	ldrb r0, [r5, #4]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7, #2]
	mov r1, sl
	ldrh r0, [r1, #0x14]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	adds r4, #1
	lsls r4, r4, #5
	add r4, sb
	adds r6, r6, r4
	lsls r6, r6, #1
	mov r2, r8
	adds r7, r6, r2
	ldr r6, _0803C868
	adds r0, r6, #0
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5]
	adds r0, #7
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	ldrb r0, [r5, #4]
	adds r0, #7
	orrs r0, r1
	b _0803C8C2
	.align 2, 0
_0803C844: .4byte 0x0200C440
_0803C848: .4byte 0x02022EC0
_0803C84C: .4byte gCardInfo
_0803C850: .4byte 0x00000321
_0803C854: .4byte 0x080DD808
_0803C858: .4byte 0x080DD80D
_0803C85C: .4byte 0xFFFF3FC0
_0803C860: .4byte 0x00005002
_0803C864: .4byte 0x02021BD0
_0803C868: .4byte 0x00005003
_0803C86C:
	ldr r0, _0803C8D4
	adds r0, r4, r0
	ldrb r2, [r0]
	ldr r0, _0803C8D8
	adds r0, r4, r0
	ldrb r1, [r0]
	lsls r0, r1, #5
	movs r4, #0xf8
	lsls r4, r4, #7
	adds r0, r0, r4
	adds r0, r2, r0
	lsls r0, r0, #1
	ldr r6, _0803C8DC
	adds r3, r5, r6
	adds r7, r0, r3
	movs r5, #0xa0
	lsls r5, r5, #7
	adds r0, r5, #0
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	strh r0, [r7, #2]
	adds r1, #1
	lsls r1, r1, #5
	adds r1, r1, r4
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r7, r2, r3
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
_0803C8C2:
	strh r0, [r7, #2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C8D4: .4byte 0x080DD808
_0803C8D8: .4byte 0x080DD80D
_0803C8DC: .4byte 0xFFFF3FC0

	THUMB_FUNC_START sub_803C8E0
sub_803C8E0: @ 0x0803C8E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r4, r2, #0
	ldr r1, _0803C9F4
	adds r1, r2, r1
	ldr r0, _0803C9F8
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r0, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0803C9FC
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _0803CA00
	ldr r1, _0803CA04
	mov sl, r1
	ldr r3, _0803CA08
	adds r0, r0, r3
	ldrh r1, [r1, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C926
	b _0803CB14
_0803C926:
	mov r3, sl
	ldrb r0, [r3, #0x16]
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0803CA1C
	ldrb r0, [r3, #0x16]
	lsls r0, r0, #0x13
	ldr r4, _0803CA0C
	adds r0, r0, r4
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	adds r0, r2, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r5, r0, #0
	mov r2, ip
	strh r5, [r2]
	strh r5, [r2, #2]
	mov r4, sb
	lsls r3, r4, #0xc
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ldr r4, _0803CA10
	ands r1, r4
	orrs r1, r3
	mov r0, ip
	strh r1, [r0, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	mov r0, ip
	strh r2, [r0, #6]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ands r1, r4
	orrs r1, r3
	mov r0, ip
	strh r1, [r0, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	mov r0, ip
	strh r2, [r0, #0xa]
	adds r0, #0x40
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	mov r5, ip
	adds r5, #0x44
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ands r1, r4
	orrs r1, r3
	strh r1, [r5]
	adds r5, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	strh r2, [r5]
	mov r2, ip
	adds r2, #0x48
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ands r1, r4
	orrs r1, r3
	strh r1, [r2]
	mov r0, ip
	adds r0, #0x4a
	ands r7, r4
	orrs r3, r7
	strh r3, [r0]
	ldr r1, _0803CA14
	mov r2, sl
	ldrb r0, [r2, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r3, sb
	lsls r1, r3, #5
	ldr r2, _0803CA18
	adds r1, r1, r2
	b _0803CAFA
	.align 2, 0
_0803C9F4: .4byte 0x080DD808
_0803C9F8: .4byte 0x080DD80D
_0803C9FC: .4byte 0x02000400
_0803CA00: .4byte 0x02022EC0
_0803CA04: .4byte gCardInfo
_0803CA08: .4byte 0x00000321
_0803CA0C: .4byte 0xFFED0000
_0803CA10: .4byte 0x000003FF
_0803CA14: .4byte gTypeIconPalettes
_0803CA18: .4byte 0x02000000
_0803CA1C:
	mov r1, sl
	ldrb r0, [r1, #0x16]
	lsls r0, r0, #0x12
	movs r2, #0x82
	lsls r2, r2, #0xf
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	adds r3, r7, #0
	adds r0, r4, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldrb r1, [r1, #0x17]
	lsls r1, r1, #0x12
	movs r0, #0x88
	lsls r0, r0, #0xd
	adds r1, r1, r0
	adds r4, #0xb
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	movs r2, #0xa0
	lsls r2, r2, #7
	mov r8, r2
	mov r4, ip
	strh r2, [r4]
	strh r2, [r4, #2]
	mov r0, sb
	lsls r6, r0, #0xc
	adds r7, #1
	adds r0, r7, #0
	ldr r2, _0803CB04
	ands r3, r2
	orrs r3, r6
	strh r3, [r4, #4]
	adds r7, #1
	adds r3, r7, #0
	ands r0, r2
	orrs r0, r6
	strh r0, [r4, #6]
	ldr r4, [sp]
	lsls r5, r4, #0xc
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	ands r0, r2
	orrs r0, r5
	mov r4, ip
	strh r0, [r4, #8]
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	ands r0, r2
	orrs r0, r5
	mov r4, ip
	strh r0, [r4, #0xa]
	adds r4, #0x40
	mov r0, r8
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
	mov r0, ip
	adds r0, #0x44
	adds r7, #1
	ands r3, r2
	orrs r3, r6
	strh r3, [r0]
	adds r0, #2
	ands r7, r2
	orrs r6, r7
	strh r6, [r0]
	mov r3, ip
	adds r3, #0x48
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	lsrs r1, r1, #0x10
	ands r0, r2
	orrs r0, r5
	strh r0, [r3]
	mov r0, ip
	adds r0, #0x4a
	ands r1, r2
	orrs r5, r1
	strh r5, [r0]
	ldr r1, _0803CB08
	mov r2, sl
	ldrb r0, [r2, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r3, sb
	lsls r1, r3, #5
	ldr r5, _0803CB0C
	adds r1, r1, r5
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0803CB10
	mov r4, sl
	ldrb r0, [r4, #0x17]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [sp]
	lsls r4, r1, #5
	adds r4, r4, r5
	adds r1, r4, #0
_0803CAFA:
	movs r2, #0x10
	bl CpuSet
	b _0803CB64
	.align 2, 0
_0803CB04: .4byte 0x000003FF
_0803CB08: .4byte gTypeIconPalettes
_0803CB0C: .4byte 0x02000000
_0803CB10: .4byte gAttributeIconPalettes
_0803CB14:
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r2, #0
	mov r3, ip
	strh r0, [r3]
	movs r4, #2
	add ip, r4
	mov r1, ip
	strh r0, [r1]
	add ip, r4
	mov r2, ip
	strh r0, [r2]
	add ip, r4
	mov r3, ip
	strh r0, [r3]
	add ip, r4
	mov r4, ip
	strh r0, [r4]
	movs r1, #2
	add ip, r1
	mov r2, ip
	strh r0, [r2]
	movs r3, #0x36
	add ip, r3
	mov r4, ip
	strh r0, [r4]
	add ip, r1
	mov r1, ip
	strh r0, [r1]
	movs r2, #2
	add ip, r2
	mov r3, ip
	strh r0, [r3]
	add ip, r2
	mov r4, ip
	strh r0, [r4]
	add ip, r2
	mov r1, ip
	strh r0, [r1]
	strh r0, [r1, #2]
_0803CB64:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803CB74
sub_803CB74: @ 0x0803CB74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803CC44
	ldr r1, _0803CC48
	ldr r2, _0803CC4C
	adds r0, r5, #0
	bl CopyStringTilesToVRAMBuffer
	ldr r0, _0803CC50
	adds r0, r4, r0
	ldrb r7, [r0]
	ldr r0, _0803CC54
	adds r4, r4, r0
	ldrb r6, [r4]
	lsls r0, r6, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	adds r0, r7, r0
	lsls r0, r0, #1
	ldr r1, _0803CC58
	adds r1, r1, r5
	mov r8, r1
	adds r3, r0, r1
	ldr r0, _0803CC5C
	ldr r5, _0803CC60
	ldr r1, _0803CC64
	adds r0, r0, r1
	ldrh r1, [r5, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803CC70
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
	strh r4, [r3]
	adds r3, #2
	movs r2, #3
	movs r0, #2
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	movs r1, #4
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	movs r2, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	adds r3, #2
	movs r1, #6
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	strh r4, [r3, #2]
	ldrh r0, [r5, #0xc]
	movs r1, #0
	bl ConvertU16ToDigitBuffer
	lsls r0, r6, #5
	ldr r1, _0803CC68
	adds r0, r0, r1
	adds r0, r7, r0
	lsls r0, r0, #1
	mov r1, r8
	adds r3, r0, r1
	strh r4, [r3]
	adds r3, #2
	ldr r1, _0803CC6C
	ldrb r0, [r1]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #1]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #2]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #3]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	ldrb r0, [r1, #4]
	adds r0, #7
	orrs r0, r4
	b _0803CCA0
	.align 2, 0
_0803CC44: .4byte 0x0200C440
_0803CC48: .4byte 0x080DEA6C
_0803CC4C: .4byte 0x00000801
_0803CC50: .4byte 0x080DD808
_0803CC54: .4byte 0x080DD80D
_0803CC58: .4byte 0xFFFF3FC0
_0803CC5C: .4byte 0x02022EC0
_0803CC60: .4byte gCardInfo
_0803CC64: .4byte 0x00000321
_0803CC68: .4byte 0x00007C20
_0803CC6C: .4byte 0x02021BD0
_0803CC70:
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #0x36
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
_0803CCA0:
	strh r0, [r3, #2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803CCAC
sub_803CCAC: @ 0x0803CCAC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803CD24
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, #0x1c
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r2, _0803CD28
	adds r2, r0, r2
	ldr r1, _0803CD2C
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0803CD30
	adds r2, r0, r1
	movs r6, #0
	ldr r5, _0803CD34
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_0803CCE6:
	adds r0, r3, #0
	ands r0, r5
	orrs r0, r4
	strh r0, [r2]
	adds r0, r3, #1
	ands r0, r5
	orrs r0, r4
	strh r0, [r2, #2]
	adds r0, r3, #2
	ands r0, r5
	orrs r0, r4
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r0, r3, #3
	ands r0, r5
	orrs r0, r4
	strh r0, [r1, #2]
	adds r0, r3, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0803CCE6
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803CD24: .4byte 0x080DD7E0
_0803CD28: .4byte 0x080DD808
_0803CD2C: .4byte 0x080DD80D
_0803CD30: .4byte 0x02000400
_0803CD34: .4byte 0x000003FF

	THUMB_FUNC_START sub_803CD38
sub_803CD38: @ 0x0803CD38
	push {r4, r5, r6, lr}
	ldr r1, _0803CD98
	ldr r5, _0803CD9C
	ldr r3, _0803CDA0
	ldr r0, _0803CDA4
	adds r3, r3, r0
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r2, [r0]
	ldr r4, _0803CDA8
	adds r0, r4, #0
	ands r0, r2
	movs r6, #0xa0
	lsls r6, r6, #7
	adds r2, r6, #0
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #1
	ands r0, r4
	orrs r0, r2
	strh r0, [r1]
	adds r1, #0x3e
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #2
	ands r0, r4
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #3
	ands r0, r4
	orrs r0, r2
	strh r0, [r1, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803CD98: .4byte 0x02007438
_0803CD9C: .4byte 0x080DD82A
_0803CDA0: .4byte 0x02022EC0
_0803CDA4: .4byte 0x00000FB2
_0803CDA8: .4byte 0x000003FF

	THUMB_FUNC_START sub_803CDAC
sub_803CDAC: @ 0x0803CDAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0803CEBC
	ldr r5, _0803CEC0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl CpuSet
	adds r4, #0x20
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r5, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r0, _0803CEC4
	ldr r6, _0803CEC8
	adds r1, r6, #0
	movs r2, #0x10
	bl CpuSet
	ldr r4, _0803CECC
	adds r1, r5, #0
	adds r1, #0x20
	adds r0, r4, #0
	movs r2, #0x20
	bl CpuSet
	adds r4, #0x40
	movs r1, #0x84
	lsls r1, r1, #3
	adds r5, r5, r1
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	ldr r0, _0803CED0
	adds r1, r6, #0
	adds r1, #0x20
	movs r2, #0x10
	bl CpuSet
	ldr r2, _0803CED4
	adds r6, r6, r2
	adds r0, r6, #0
	bl CopyMiniCardPalette
	movs r5, #0
	mov sb, r5
	movs r0, #4
	rsbs r0, r0, #0
	mov sl, r0
	movs r7, #0x11
	rsbs r7, r7, #0
	movs r6, #0x3f
	movs r1, #0xd
	rsbs r1, r1, #0
	mov ip, r1
	ldr r2, _0803CED8
	mov r8, r2
_0803CE30:
	lsls r3, r5, #3
	ldr r0, _0803CEDC
	adds r3, r3, r0
	ldr r0, _0803CEE0
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	strb r0, [r3]
	ldrb r1, [r3, #1]
	mov r0, sl
	ands r0, r1
	mov r1, ip
	ands r0, r1
	ands r0, r7
	movs r1, #0x20
	orrs r0, r1
	ands r0, r6
	strb r0, [r3, #1]
	ldr r0, _0803CEE4
	adds r0, r4, r0
	ldrh r1, [r0]
	ldr r2, _0803CEE8
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r7
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r6
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, _0803CEEC
	adds r4, r4, r0
	ldrh r0, [r4]
	ldr r1, _0803CEF0
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0803CEF4
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	movs r0, #0xc
	orrs r1, r0
	movs r0, #0xf
	ands r1, r0
	strb r1, [r3, #5]
	mov r0, sb
	strh r0, [r3, #6]
	adds r5, #1
	cmp r5, #4
	bls _0803CE30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CEBC: .4byte 0x08A38C8C
_0803CEC0: .4byte 0x02011500
_0803CEC4: .4byte 0x08A38CCC
_0803CEC8: .4byte 0x02000340
_0803CECC: .4byte 0x08A38CEC
_0803CED0: .4byte 0x08A38D6C
_0803CED4: .4byte 0xFFFFFEC0
_0803CED8: .4byte 0xFFFFFE00
_0803CEDC: .4byte gOamBuffer
_0803CEE0: .4byte 0x080DD83E
_0803CEE4: .4byte 0x080DD848
_0803CEE8: .4byte 0x000001FF
_0803CEEC: .4byte 0x080DD852
_0803CEF0: .4byte 0x000003FF
_0803CEF4: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803CEF8
sub_803CEF8: @ 0x0803CEF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0803CF24
	ldr r0, _0803CF28
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803CF30
	adds r1, r0, #0
	movs r0, #0x76
	muls r0, r1, r0
	ldr r3, _0803CF2C
	adds r1, r2, r3
	ldrh r1, [r1]
	subs r1, #1
	bl __divsi3
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0803CF32
	.align 2, 0
_0803CF24: .4byte 0x02022EC0
_0803CF28: .4byte 0x00000FAE
_0803CF2C: .4byte 0x00000FAC
_0803CF30:
	movs r0, #0x18
_0803CF32:
	ldr r2, _0803CF94
	movs r7, #0
	mov r8, r7
	strb r0, [r2]
	movs r3, #0xd
	rsbs r3, r3, #0
	movs r4, #0x11
	rsbs r4, r4, #0
	movs r5, #0x21
	rsbs r5, r5, #0
	movs r6, #0x3f
	movs r0, #0x80
	strb r0, [r2, #1]
	ldrh r1, [r2, #2]
	ldr r0, _0803CF98
	ands r0, r1
	movs r7, #0xff
	lsls r7, r7, #1
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2, #2]
	ldrb r1, [r2, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	ands r0, r5
	ands r0, r6
	strb r0, [r2, #3]
	ldrh r1, [r2, #4]
	ldr r0, _0803CF9C
	ands r0, r1
	movs r1, #0x88
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	ands r3, r0
	movs r0, #0xf
	ands r3, r0
	movs r0, #0xa0
	orrs r3, r0
	strb r3, [r2, #5]
	mov r0, r8
	strh r0, [r2, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CF94: .4byte gOamBuffer+0x50
_0803CF98: .4byte 0xFFFFFE00
_0803CF9C: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803CFA0
sub_803CFA0: @ 0x0803CFA0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r3, _0803D02C
	ldr r0, _0803D030
	ldrh r0, [r0, #4]
	movs r1, #0
	mov r8, r1
	strb r0, [r3]
	ldrb r1, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r4, #0xd
	rsbs r4, r4, #0
	ands r0, r4
	movs r1, #8
	orrs r0, r1
	movs r6, #0x11
	rsbs r6, r6, #0
	ands r0, r6
	movs r1, #0x20
	orrs r0, r1
	movs r5, #0x3f
	ands r0, r5
	strb r0, [r3, #1]
	ldr r0, _0803D034
	ldrh r1, [r0, #4]
	ldr r2, _0803D038
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0803D03C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r6
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r5
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, _0803D040
	ldrh r0, [r0, #4]
	ldr r1, _0803D044
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0803D048
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	strb r4, [r3, #5]
	mov r0, r8
	strh r0, [r3, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D02C: .4byte gOamBuffer+0x28
_0803D030: .4byte 0x080DD83E
_0803D034: .4byte 0x080DD848
_0803D038: .4byte 0x000001FF
_0803D03C: .4byte 0xFFFFFE00
_0803D040: .4byte 0x080DD852
_0803D044: .4byte 0x000003FF
_0803D048: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803D04C
sub_803D04C: @ 0x0803D04C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r3, _0803D0DC
	ldr r2, _0803D0E0
	ldr r1, _0803D0E4
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0
	mov sb, r2
	strb r0, [r3]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r6, #0x21
	rsbs r6, r6, #0
	movs r0, #0x3f
	mov r8, r0
	movs r0, #0
	strb r0, [r3, #1]
	ldr r2, _0803D0E8
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r2, _0803D0EC
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0803D0F0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #3]
	ldrh r1, [r3, #4]
	ldr r0, _0803D0F4
	ands r0, r1
	movs r1, #0x89
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	movs r0, #0xb0
	orrs r4, r0
	strb r4, [r3, #5]
	mov r2, sb
	strh r2, [r3, #6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D0DC: .4byte gOamBuffer+0x60
_0803D0E0: .4byte 0x080DD874
_0803D0E4: .4byte 0x02022EC0
_0803D0E8: .4byte 0x080DD880
_0803D0EC: .4byte 0x000001FF
_0803D0F0: .4byte 0xFFFFFE00
_0803D0F4: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803D0F8
sub_803D0F8: @ 0x0803D0F8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r3, _0803D188
	ldr r2, _0803D18C
	ldr r1, _0803D190
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0
	mov sb, r2
	strb r0, [r3]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r6, #0x21
	rsbs r6, r6, #0
	movs r0, #0x3f
	mov r8, r0
	movs r0, #0
	strb r0, [r3, #1]
	ldr r2, _0803D194
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r2, _0803D198
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0803D19C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #3]
	ldrh r1, [r3, #4]
	ldr r0, _0803D1A0
	ands r0, r1
	movs r1, #0x89
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	movs r0, #0xb0
	orrs r4, r0
	strb r4, [r3, #5]
	mov r2, sb
	strh r2, [r3, #6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D188: .4byte gOamBuffer+0x60
_0803D18C: .4byte 0x080DD8B8
_0803D190: .4byte 0x02022EC0
_0803D194: .4byte 0x080DD8CE
_0803D198: .4byte 0x000001FF
_0803D19C: .4byte 0xFFFFFE00
_0803D1A0: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803D1A4
sub_803D1A4: @ 0x0803D1A4
	push {lr}
	bl sub_803C03C
	bl sub_803D934
	bl DisableDisplay
	ldr r0, _0803D1F8
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r1, _0803D1FC
	ldr r2, _0803D200
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803D204
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xfd
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_803DAD8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xfe
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803D1F8: .4byte LoadOam
_0803D1FC: .4byte 0x0400000A
_0803D200: .4byte 0x00001F0D
_0803D204: .4byte 0x00000E06

	THUMB_FUNC_START sub_803D208
sub_803D208: @ 0x0803D208
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r5, _0803D260
	ldr r7, _0803D264
	ldr r0, _0803D268
	adds r6, r5, r0
_0803D214:
	adds r0, r4, #0
	bl sub_80383E4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r2, _0803D26C
	adds r0, r5, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D23E
	adds r0, r1, #0
	bl SetCardInfo
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_0803D23E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0803D214
	ldr r0, _0803D270
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D260: .4byte 0x02022EC0
_0803D264: .4byte 0x08E0CEB0
_0803D268: .4byte 0x00000FB1
_0803D26C: .4byte 0x00000321
_0803D270: .4byte LoadOam

	THUMB_FUNC_START sub_803D274
sub_803D274: @ 0x0803D274
	push {lr}
	bl sub_803D62C
	bl sub_803CEF8
	bl sub_803D934
	bl sub_803CD38
	ldr r0, _0803D2A4
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock1
	bl LoadCharblock3
	bl LoadCharblock4
	pop {r0}
	bx r0
	.align 2, 0
_0803D2A4: .4byte LoadOam
	.byte 0x70, 0xB5, 0x00, 0x24, 0x1A, 0x4E, 0x1B, 0x4D
	.byte 0x20, 0x1C, 0xFB, 0xF7, 0x97, 0xF8, 0x00, 0x04, 0x00, 0x0C, 0xCE, 0xF7, 0x93, 0xF8, 0x20, 0x1C
	.byte 0xFF, 0xF7, 0xF0, 0xF8, 0x20, 0x1C, 0x00, 0xF0, 0x4F, 0xFA, 0x20, 0x1C, 0xFF, 0xF7, 0xF6, 0xF9
	.byte 0x28, 0x78, 0x80, 0x00, 0x80, 0x19, 0x01, 0x68, 0x20, 0x1C, 0x1D, 0xF0, 0xEF, 0xFB, 0x20, 0x1C
	.byte 0x00, 0xF0, 0x8A, 0xFA, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xE0, 0xD9, 0x00, 0xF0
	.byte 0xCB, 0xF9, 0xFF, 0xF7, 0x01, 0xFE, 0x00, 0xF0, 0x1D, 0xFB, 0x09, 0x48, 0xCA, 0xF7, 0x6E, 0xFF
	.byte 0xCA, 0xF7, 0x8E, 0xFF, 0x08, 0xF0, 0xEC, 0xF8, 0x08, 0xF0, 0xC2, 0xF9, 0x08, 0xF0, 0xE8, 0xF9
	.byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xB0, 0xCE, 0xE0, 0x08, 0x71, 0x3E, 0x02, 0x02
	.byte 0xC9, 0x54, 0x04, 0x08, 0x70, 0xB5, 0x00, 0x24, 0x1A, 0x4E, 0x1B, 0x4D, 0x20, 0x1C, 0xFB, 0xF7
	.byte 0x59, 0xF8, 0x00, 0x04, 0x00, 0x0C, 0xCE, 0xF7, 0x55, 0xF8, 0x20, 0x1C, 0xFF, 0xF7, 0xB2, 0xF8
	.byte 0x20, 0x1C, 0x00, 0xF0, 0x11, 0xFA, 0x20, 0x1C, 0xFF, 0xF7, 0xB8, 0xF9, 0x28, 0x78, 0x80, 0x00
	.byte 0x80, 0x19, 0x01, 0x68, 0x20, 0x1C, 0x1D, 0xF0, 0xB1, 0xFB, 0x20, 0x1C, 0x00, 0xF0, 0x4C, 0xFA
	.byte 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xE0, 0xD9, 0x00, 0xF0, 0xC5, 0xF9, 0xFF, 0xF7
	.byte 0xC3, 0xFD, 0x00, 0xF0, 0xDF, 0xFA, 0x09, 0x48, 0xCA, 0xF7, 0x30, 0xFF, 0xCA, 0xF7, 0x50, 0xFF
	.byte 0x08, 0xF0, 0xAE, 0xF8, 0x08, 0xF0, 0x84, 0xF9, 0x08, 0xF0, 0xAA, 0xF9, 0x70, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xB0, 0xCE, 0xE0, 0x08, 0x71, 0x3E, 0x02, 0x02, 0xC9, 0x54, 0x04, 0x08
	.byte 0x00, 0xB5, 0x02, 0x20, 0xFB, 0xF7, 0x1E, 0xF8, 0x00, 0x04, 0x00, 0x0C, 0xCE, 0xF7, 0x1A, 0xF8
	.byte 0x02, 0x20, 0xFF, 0xF7, 0x83, 0xF9, 0x04, 0x48, 0xCA, 0xF7, 0x10, 0xFF, 0xCA, 0xF7, 0x30, 0xFF
	.byte 0x08, 0xF0, 0x66, 0xF9, 0x01, 0xBC, 0x00, 0x47, 0xC9, 0x54, 0x04, 0x08

	THUMB_FUNC_START sub_803D3CC
sub_803D3CC: @ 0x0803D3CC
	push {lr}
	bl sub_803D9C4
	bl sub_803D9E8
	bl sub_803D934
	ldr r1, _0803D400
	movs r0, #4
	strh r0, [r1]
	ldr r0, _0803D404
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0803D408
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803D400: .4byte gBLDY
_0803D404: .4byte LoadOam
_0803D408: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_803D40C
sub_803D40C: @ 0x0803D40C
	push {lr}
	bl sub_803D62C
	bl sub_803CEF8
	bl sub_803CD38
	ldr r0, _0803D438
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock1
	bl LoadCharblock3
	bl LoadCharblock4
	pop {r0}
	bx r0
	.align 2, 0
_0803D438: .4byte LoadOam

	THUMB_FUNC_START sub_803D43C
sub_803D43C: @ 0x0803D43C
	push {lr}
	bl sub_803C1E4
	bl sub_803D97C
	bl sub_803D04C
	bl sub_803D9A0
	bl sub_803DA98
	ldr r0, _0803D484
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock2
	bl LoadBlendingRegs
	ldr r1, _0803D488
	ldr r2, _0803D48C
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803D484: .4byte LoadOam
_0803D488: .4byte 0x04000008
_0803D48C: .4byte 0x00001708

	THUMB_FUNC_START sub_803D490
sub_803D490: @ 0x0803D490
	push {lr}
	bl sub_803D04C
	bl sub_803D9A0
	ldr r0, _0803D4A8
	bl SetVBlankCallback
	bl WaitForVBlank
	pop {r0}
	bx r0
	.align 2, 0
_0803D4A8: .4byte LoadOam

	THUMB_FUNC_START sub_803D4AC
sub_803D4AC: @ 0x0803D4AC
	push {lr}
	bl sub_803C03C
	bl sub_803C1E4
	bl sub_803D04C
	bl sub_803D9A0
	bl sub_803DA98
	bl DisableDisplay
	ldr r0, _0803D514
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r1, _0803D518
	ldr r2, _0803D51C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803D520
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803D524
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xfd
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_803DAD8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803D514: .4byte LoadOam
_0803D518: .4byte 0x04000008
_0803D51C: .4byte 0x00001708
_0803D520: .4byte 0x00001F0D
_0803D524: .4byte 0x00000E06

	THUMB_FUNC_START sub_803D528
sub_803D528: @ 0x0803D528
	push {lr}
	bl sub_803D5B8
	bl sub_803D97C
	bl sub_803D958
	bl sub_803D0F8
	bl sub_803DA0C
	ldr r1, _0803D580
	movs r0, #8
	strh r0, [r1]
	ldr r0, _0803D584
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadPalettes
	bl LoadCharblock2
	bl LoadBlendingRegs
	ldr r1, _0803D588
	ldr r2, _0803D58C
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0803D590
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803D580: .4byte gBLDY
_0803D584: .4byte LoadOam
_0803D588: .4byte 0x04000008
_0803D58C: .4byte 0x00001708
_0803D590: .4byte 0x0000BFFF

	THUMB_FUNC_START sub_803D594
sub_803D594: @ 0x0803D594
	push {lr}
	bl sub_803CD38
	bl sub_803D0F8
	bl sub_803DA0C
	ldr r0, _0803D5B4
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadCharblock1
	pop {r0}
	bx r0
	.align 2, 0
_0803D5B4: .4byte LoadOam

	THUMB_FUNC_START sub_803D5B8
sub_803D5B8: @ 0x0803D5B8
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803D610
	ldr r2, _0803D614
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0803D618
	ldr r5, _0803D61C
	adds r2, r5, #0
	bl CopyStringTilesToVRAMBuffer
	movs r0, #0xc9
	lsls r0, r0, #5
	adds r4, r4, r0
	ldr r1, _0803D620
	adds r0, r4, #0
	adds r2, r5, #0
	bl CopyStringTilesToVRAMBuffer
	movs r4, #0
	movs r5, #0
_0803D5F0:
	ldr r0, _0803D624
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0803D628
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803D5F0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D610: .4byte 0x02008400
_0803D614: .4byte 0x01000010
_0803D618: .4byte 0x080DE724
_0803D61C: .4byte 0x00000901
_0803D620: .4byte 0x080DE990
_0803D624: .4byte 0x08A323D4
_0803D628: .4byte 0x0200BC00

	THUMB_FUNC_START sub_803D62C
sub_803D62C: @ 0x0803D62C
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _0803D680
	ldr r5, _0803D684
_0803D634:
	adds r0, r4, #0
	bl sub_80383E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	adds r0, r4, #0
	bl sub_803C4A4
	adds r0, r4, #0
	bl sub_803C540
	adds r0, r4, #0
	bl sub_803D768
	adds r0, r4, #0
	bl sub_803C6BC
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803D7F8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0803D634
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D680: .4byte 0x08E0CEB0
_0803D684: .4byte 0x02023E71

	THUMB_FUNC_START sub_803D688
sub_803D688: @ 0x0803D688
	push {r4, r5, r6, lr}
	ldr r0, _0803D6EC
	ldrh r4, [r0, #6]
	lsls r4, r4, #5
	ldr r0, _0803D6F0
	adds r4, r4, r0
	movs r5, #0xa0
	lsls r5, r5, #3
	adds r1, r4, r5
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803D6F4
	adds r4, r4, r0
	adds r1, r4, r5
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803D6F4
	adds r4, r4, r0
	adds r1, r4, r5
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803D6F4
	adds r4, r4, r0
	adds r5, r4, r5
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl CpuSet
	movs r0, #0
	bl sub_80383E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #0
	bl sub_803C540
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D6EC: .4byte 0x080DD7E0
_0803D6F0: .4byte 0x0200C400
_0803D6F4: .4byte 0xFFFFFB00

	THUMB_FUNC_START sub_803D6F8
sub_803D6F8: @ 0x0803D6F8
	push {r4, r5, r6, lr}
	ldr r0, _0803D75C
	ldrh r4, [r0, #2]
	lsls r4, r4, #5
	ldr r0, _0803D760
	adds r4, r4, r0
	ldr r0, _0803D764
	adds r1, r4, r0
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	movs r5, #0xa0
	lsls r5, r5, #3
	adds r4, r4, r5
	ldr r0, _0803D764
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	adds r4, r4, r5
	ldr r0, _0803D764
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	adds r4, r4, r5
	ldr r0, _0803D764
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	movs r0, #4
	bl sub_80383E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #4
	bl sub_803C540
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D75C: .4byte 0x080DD7E0
_0803D760: .4byte 0x0200C400
_0803D764: .4byte 0xFFFFFB00

	THUMB_FUNC_START sub_803D768
sub_803D768: @ 0x0803D768
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803D7DC
	adds r2, r0, r2
	ldr r1, _0803D7E0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0803D7E4
	adds r1, r0, r1
	movs r2, #0
	ldr r0, _0803D7E8
	ldr r3, _0803D7EC
	ldr r4, _0803D7F0
	adds r0, r0, r4
	ldrh r4, [r3, #0x10]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D7BC
	ldrb r0, [r3, #0x18]
	cmp r2, r0
	bhs _0803D7BC
	ldr r0, _0803D7F4
	adds r4, r0, #0
_0803D7A8:
	strh r4, [r1]
	subs r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xb
	bhi _0803D7D4
	ldrb r0, [r3, #0x18]
	cmp r2, r0
	blo _0803D7A8
_0803D7BC:
	cmp r2, #0xb
	bhi _0803D7D4
	movs r4, #0xa0
	lsls r4, r4, #7
	adds r3, r4, #0
_0803D7C6:
	strh r3, [r1]
	subs r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xb
	bls _0803D7C6
_0803D7D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D7DC: .4byte 0x080DD7EA
_0803D7E0: .4byte 0x080DD7EF
_0803D7E4: .4byte 0x02000400
_0803D7E8: .4byte 0x02022EC0
_0803D7EC: .4byte gCardInfo
_0803D7F0: .4byte 0x00000321
_0803D7F4: .4byte 0x00005001

	THUMB_FUNC_START sub_803D7F8
sub_803D7F8: @ 0x0803D7F8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	ldr r1, _0803D828
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0803D82C
	adds r6, r0, r1
	ldr r0, _0803D830
	ldr r1, _0803D834
	ldrh r1, [r1, #0x10]
	ldr r2, _0803D838
	adds r0, r0, r2
	adds r0, r1, r0
	ldrb r7, [r0]
	cmp r7, #0
	beq _0803D83C
	adds r0, r6, #0
	bl sub_80573D0
	b _0803D87C
	.align 2, 0
_0803D828: .4byte 0x080DD852
_0803D82C: .4byte 0x02010400
_0803D830: .4byte 0x02022EC0
_0803D834: .4byte gCardInfo
_0803D838: .4byte 0x00000321
_0803D83C:
	mov r0, sp
	strh r7, [r0]
	ldr r5, _0803D884
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	movs r4, #0x80
	lsls r4, r4, #3
	adds r6, r6, r4
	mov r0, sp
	adds r0, #2
	strh r7, [r0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	adds r6, r6, r4
	add r0, sp, #4
	strh r7, [r0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	adds r6, r6, r4
	mov r0, sp
	adds r0, #6
	strh r7, [r0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
_0803D87C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D884: .4byte 0x01000080

	THUMB_FUNC_START sub_803D888
sub_803D888: @ 0x0803D888
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803D8D0
	ldr r2, _0803D8D4
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0803D8D8
	ldr r2, _0803D8DC
	bl CopyStringTilesToVRAMBuffer
	mov r0, sp
	adds r0, #2
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r2, #0
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r4, r4, r1
	ldr r2, _0803D8E0
	adds r1, r4, #0
	bl CpuSet
	bl sub_803CD38
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D8D0: .4byte 0x02004400
_0803D8D4: .4byte 0x01000010
_0803D8D8: .4byte 0x080DEA9C
_0803D8DC: .4byte 0x00000901
_0803D8E0: .4byte 0x01000400

	THUMB_FUNC_START sub_803D8E4
sub_803D8E4: @ 0x0803D8E4
	push {r4, r5, lr}
	ldr r0, _0803D91C
	ldr r1, _0803D920
	bl LZ77UnCompWram
	movs r4, #0
	movs r5, #0
_0803D8F2:
	ldr r0, _0803D924
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0803D928
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803D8F2
	ldr r0, _0803D92C
	ldr r1, _0803D930
	movs r2, #0x40
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D91C: .4byte 0x08A3617C
_0803D920: .4byte 0x02000400
_0803D924: .4byte 0x08A3875C
_0803D928: .4byte 0x02007C00
_0803D92C: .4byte 0x08A38C0C
_0803D930: .4byte 0x02000000

	THUMB_FUNC_START sub_803D934
sub_803D934: @ 0x0803D934
	ldr r2, _0803D954
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803D954: .4byte gOamBuffer+0x50

	THUMB_FUNC_START sub_803D958
sub_803D958: @ 0x0803D958
	ldr r0, _0803D978
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803D978: .4byte gOamBuffer+0x28

	THUMB_FUNC_START sub_803D97C
sub_803D97C: @ 0x0803D97C
	ldr r0, _0803D99C
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803D99C: .4byte gOamBuffer+0x58

	THUMB_FUNC_START sub_803D9A0
sub_803D9A0: @ 0x0803D9A0
	ldr r2, _0803D9C0
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803D9C0: .4byte gOamBuffer+0x60

	THUMB_FUNC_START sub_803D9C4
sub_803D9C4: @ 0x0803D9C4
	ldr r0, _0803D9E4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803D9E4: .4byte gOamBuffer+0x60

	THUMB_FUNC_START sub_803D9E8
sub_803D9E8: @ 0x0803D9E8
	ldr r0, _0803DA08
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803DA08: .4byte gOamBuffer+0x68

	THUMB_FUNC_START sub_803DA0C
sub_803DA0C: @ 0x0803DA0C
	ldr r2, _0803DA2C
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803DA2C: .4byte gOamBuffer+0x60
	.byte 0x07, 0x48, 0x80, 0x22, 0x92, 0x00, 0x11, 0x1C, 0x01, 0x80, 0x02, 0x30, 0x00, 0x21, 0x01, 0x80
	.byte 0x02, 0x30, 0x01, 0x80, 0x80, 0x22, 0x52, 0x00, 0x11, 0x1C, 0x41, 0x80, 0x70, 0x47, 0x00, 0x00
	.byte 0x60, 0x84, 0x01, 0x02, 0x07, 0x48, 0x80, 0x22, 0x92, 0x00, 0x11, 0x1C, 0x01, 0x80, 0x02, 0x30
	.byte 0x00, 0x21, 0x01, 0x80, 0x02, 0x30, 0x01, 0x80, 0x80, 0x22, 0x52, 0x00, 0x11, 0x1C, 0x41, 0x80
	.byte 0x70, 0x47, 0x00, 0x00, 0x68, 0x84, 0x01, 0x02

	THUMB_FUNC_START sub_803DA78
sub_803DA78: @ 0x0803DA78
	ldr r1, _0803DA8C
	movs r0, #0xf2
	strh r0, [r1]
	ldr r1, _0803DA90
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803DA94
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803DA8C: .4byte gBLDCNT
_0803DA90: .4byte gBLDALPHA
_0803DA94: .4byte gBLDY

	THUMB_FUNC_START sub_803DA98
sub_803DA98: @ 0x0803DA98
	ldr r1, _0803DAAC
	movs r0, #0xfa
	strh r0, [r1]
	ldr r1, _0803DAB0
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803DAB4
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803DAAC: .4byte gBLDCNT
_0803DAB0: .4byte gBLDALPHA
_0803DAB4: .4byte gBLDY
	.byte 0x04, 0x49, 0xFA, 0x20, 0x08, 0x80, 0x04, 0x49
	.byte 0x10, 0x20, 0x08, 0x80, 0x03, 0x49, 0x08, 0x20, 0x08, 0x80, 0x70, 0x47, 0x28, 0x42, 0x02, 0x02
	.byte 0x38, 0x42, 0x02, 0x02, 0x30, 0x42, 0x02, 0x02

	THUMB_FUNC_START sub_803DAD8
sub_803DAD8: @ 0x0803DAD8
	ldr r1, _0803DB08
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x18
	strh r0, [r1]
	subs r1, #2
	ldr r2, _0803DB0C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0803DB10
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803DB14
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803DB18
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803DB08: .4byte 0x04000040
_0803DB0C: .4byte 0x000004D4
_0803DB10: .4byte 0x0000486F
_0803DB14: .4byte 0x00001E0E
_0803DB18: .4byte 0x0000183F

	THUMB_FUNC_START sub_803DB1C
sub_803DB1C: @ 0x0803DB1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803DCD0
	movs r6, #0
	ldr r4, _0803DCD4
	ldr r5, _0803DCD8
	ldr r1, _0803DCDC
	mov r8, r1
	ldr r2, _0803DCE0
	mov sb, r2
	ldr r7, _0803DCE4
	mov ip, r7
	ldr r1, _0803DCE8
	mov sl, r1
	movs r7, #0x80
	lsls r7, r7, #2
	adds r2, r7, #0
	movs r1, #0
	movs r7, #0x80
	lsls r7, r7, #1
	adds r3, r7, #0
_0803DB4C:
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #2
	adds r6, #1
	cmp r6, #0x1f
	bls _0803DB4C
	movs r0, #0
	strh r0, [r4]
	strh r0, [r5]
	ldr r1, _0803DCEC
	strh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	mov r7, sb
	strh r0, [r7]
	mov r1, ip
	strh r0, [r1]
	mov r2, sl
	strh r0, [r2]
	ldr r7, _0803DCF0
	strh r0, [r7]
	ldr r2, _0803DCF4
	adds r1, r2, #0
	ldr r7, _0803DCF8
	strh r1, [r7]
	ldr r2, _0803DCFC
	ldrh r1, [r2]
	ldr r7, _0803DD00
	strh r1, [r7]
	ldr r1, _0803DD04
	strh r0, [r1]
	ldr r0, _0803DD08
	ldr r1, _0803DD0C
	bl LZ77UnCompWram
	movs r6, #0
	movs r4, #0
_0803DBD0:
	ldr r0, _0803DD10
	adds r0, r4, r0
	lsls r1, r6, #6
	ldr r5, _0803DD14
	adds r1, r1, r5
	movs r2, #0x1e
	bl CpuSet
	adds r4, #0x3c
	adds r6, #1
	cmp r6, #0x13
	bls _0803DBD0
	ldr r0, _0803DD18
	ldr r1, _0803DD1C
	movs r2, #0x40
	bl CpuSet
	ldr r0, _0803DD20
	ldr r2, _0803DD24
	adds r1, r5, r2
	bl LZ77UnCompWram
	movs r6, #0
	ldr r7, _0803DD28
	adds r7, r7, r5
	mov r8, r7
	ldr r0, _0803DD2C
	adds r7, r5, r0
	mov sb, r8
	movs r5, #0
_0803DC0C:
	ldr r0, _0803DD30
	adds r0, r5, r0
	lsls r4, r6, #6
	mov r1, sb
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _0803DD34
	adds r0, r5, r0
	ldr r1, _0803DD28
	add r1, r8
	adds r1, r4, r1
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _0803DD38
	adds r0, r5, r0
	ldr r1, _0803DD3C
	add r1, r8
	adds r1, r4, r1
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _0803DD40
	adds r0, r5, r0
	ldr r1, _0803DD44
	add r1, r8
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _0803DD48
	adds r0, r5, r0
	adds r1, r7, #0
	movs r2, #0x1e
	bl CpuSet
	adds r7, #0x40
	movs r1, #0x40
	add sb, r1
	adds r5, #0x3c
	adds r6, #1
	cmp r6, #0x13
	bls _0803DC0C
	ldr r0, _0803DD4C
	ldr r4, _0803DD50
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0803DD54
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0
	bl sub_803EEFC
	ldr r0, _0803DD58
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r4, r4, r2
	adds r1, r4, #0
	movs r2, #0x50
	bl CpuSet
	bl sub_803DD68
	bl DisableDisplay
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r0, _0803DD5C
	bl SetVBlankCallback
	bl WaitForVBlank
	ldr r1, _0803DD60
	ldr r7, _0803DD64
	adds r0, r7, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DCD0: .4byte gOamBuffer
_0803DCD4: .4byte gBG0VOFS
_0803DCD8: .4byte gBG0HOFS
_0803DCDC: .4byte gBG1HOFS
_0803DCE0: .4byte gBG2VOFS
_0803DCE4: .4byte gBG2HOFS
_0803DCE8: .4byte gBG3VOFS
_0803DCEC: .4byte gBG1VOFS
_0803DCF0: .4byte gBG3HOFS
_0803DCF4: .4byte 0x000008D8
_0803DCF8: .4byte gBLDCNT
_0803DCFC: .4byte 0x080DD688
_0803DD00: .4byte gBLDALPHA
_0803DD04: .4byte gBLDY
_0803DD08: .4byte 0x08A3C304
_0803DD0C: .4byte 0x02000400
_0803DD10: .4byte 0x08A40430
_0803DD14: .4byte 0x0200FC00
_0803DD18: .4byte 0x08A408E0
_0803DD1C: .4byte 0x02000000
_0803DD20: .4byte 0x08A40960
_0803DD24: .4byte 0xFFFF8800
_0803DD28: .4byte 0xFFFFF800
_0803DD2C: .4byte 0xFFFFD800
_0803DD30: .4byte 0x08A4145C
_0803DD34: .4byte 0x08A4190C
_0803DD38: .4byte 0x08A41DBC
_0803DD3C: .4byte 0xFFFFF000
_0803DD40: .4byte 0x08A4226C
_0803DD44: .4byte 0xFFFFE800
_0803DD48: .4byte 0x08A4271C
_0803DD4C: .4byte 0x08A42BCC
_0803DD50: .4byte 0x020000A0
_0803DD54: .4byte 0x08A42BEC
_0803DD58: .4byte 0x08A44BEC
_0803DD5C: .4byte LoadOam
_0803DD60: .4byte 0x0400000E
_0803DD64: .4byte 0x00001F03

	THUMB_FUNC_START sub_803DD68
sub_803DD68: @ 0x0803DD68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0803DDD4
	movs r7, #0
	ldr r0, _0803DDD8
	mov sb, r0
	ldr r1, _0803DDDC
	mov r8, r1
	ldr r3, _0803DDE0
	movs r0, #0x80
	lsls r0, r0, #3
	mov ip, r0
	movs r5, #0xc0
	lsls r5, r5, #4
	ldr r6, _0803DDE4
	ldr r1, _0803DDE8
	add r1, sb
	mov sl, r1
_0803DD92:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, r7
	bne _0803DDEC
	ldrb r0, [r6, #4]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r2, [r0, #4]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r3
	str r0, [r4]
	mov r1, ip
	orrs r0, r1
	stm r4!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r3
	str r0, [r4]
	orrs r0, r5
	stm r4!, {r0}
	ldrh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	ldrh r1, [r2, #8]
	orrs r0, r1
	ands r0, r3
	str r0, [r4]
	mov r1, ip
	orrs r0, r1
	b _0803DE1A
	.align 2, 0
_0803DDD4: .4byte gOamBuffer+8
_0803DDD8: .4byte 0x02022EC0
_0803DDDC: .4byte 0x08FA3558
_0803DDE0: .4byte 0xFFFFF3FF
_0803DDE4: .4byte 0x080DD6A8
_0803DDE8: .4byte 0x00000FBB
_0803DDEC:
	ldrb r0, [r6]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r2, [r0, #4]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	str r0, [r4]
	ands r0, r3
	stm r4!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r3
	str r0, [r4]
	orrs r0, r5
	stm r4!, {r0}
	ldrh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	ldrh r1, [r2, #8]
	orrs r0, r1
	str r0, [r4]
	ands r0, r3
_0803DE1A:
	stm r4!, {r0}
	ldrh r0, [r2, #0xc]
	ands r0, r3
	str r0, [r4]
	orrs r0, r5
	stm r4!, {r0}
	adds r6, #1
	adds r7, #1
	cmp r7, #3
	bls _0803DD92
	ldr r0, _0803DE7C
	add r0, sb
	ldrb r0, [r0]
	ldr r1, _0803DE80
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r1, r0, #2
	ldr r0, _0803DE84
	adds r1, r1, r0
	ldr r2, _0803DE88
	add r2, sb
	ldrb r0, [r2]
	ldr r3, [r1]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r1, [r0, #4]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r1]
	orrs r0, r1
	stm r4!, {r0}
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r0, [r0, #4]
	ldrh r0, [r0, #4]
	ldr r1, _0803DE8C
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DE7C: .4byte 0x00000FBB
_0803DE80: .4byte 0x080DD6B0
_0803DE84: .4byte 0x08FA3558
_0803DE88: .4byte 0x00000FBE
_0803DE8C: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_803DE90
sub_803DE90: @ 0x0803DE90
	push {r4, r5, lr}
	ldr r3, _0803DF14
	ldr r0, _0803DF18
	ldr r0, [r0, #0x30]
	ldr r2, [r0, #4]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ldr r5, _0803DF1C
	ands r0, r5
	str r0, [r3]
	movs r4, #0x80
	lsls r4, r4, #3
	orrs r0, r4
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r5
	str r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	ldr r0, _0803DF20
	ldr r1, _0803DF24
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldr r0, [r1]
	ands r0, r5
	str r0, [r1]
	adds r1, #8
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r2, _0803DF28
	ldrh r1, [r2]
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803DF2C
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0803DF30
	ldr r2, _0803DF34
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0803DF38
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r1]
	orrs r4, r0
	strh r4, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DF14: .4byte gOamBuffer
_0803DF18: .4byte 0x08FA3558
_0803DF1C: .4byte 0xFFFFF3FF
_0803DF20: .4byte 0x02022EC0
_0803DF24: .4byte 0x00000FBB
_0803DF28: .4byte gBLDCNT
_0803DF2C: .4byte gBLDY
_0803DF30: .4byte 0x0400000C
_0803DF34: .4byte 0x00001D0A
_0803DF38: .4byte LoadOam

	THUMB_FUNC_START sub_803DF3C
sub_803DF3C: @ 0x0803DF3C
	push {r4, r5, lr}
	ldr r3, _0803DFC0
	ldr r0, _0803DFC4
	ldr r0, [r0, #0x34]
	ldr r2, [r0, #4]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ldr r5, _0803DFC8
	ands r0, r5
	str r0, [r3]
	movs r4, #0x80
	lsls r4, r4, #3
	orrs r0, r4
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r5
	str r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	ldr r0, _0803DFCC
	ldr r1, _0803DFD0
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldr r0, [r1]
	ands r0, r5
	str r0, [r1]
	adds r1, #8
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r2, _0803DFD4
	ldrh r1, [r2]
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803DFD8
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0803DFDC
	ldr r2, _0803DFE0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0803DFE4
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r1]
	orrs r4, r0
	strh r4, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DFC0: .4byte gOamBuffer
_0803DFC4: .4byte 0x08FA3558
_0803DFC8: .4byte 0xFFFFF3FF
_0803DFCC: .4byte 0x02022EC0
_0803DFD0: .4byte 0x00000FBB
_0803DFD4: .4byte gBLDCNT
_0803DFD8: .4byte gBLDY
_0803DFDC: .4byte 0x0400000C
_0803DFE0: .4byte 0x00001C0A
_0803DFE4: .4byte LoadOam

	THUMB_FUNC_START sub_803DFE8
sub_803DFE8: @ 0x0803DFE8
	push {r4, r5, lr}
	ldr r3, _0803E06C
	ldr r0, _0803E070
	ldr r0, [r0, #0x3c]
	ldr r2, [r0, #4]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ldr r5, _0803E074
	ands r0, r5
	str r0, [r3]
	movs r4, #0x80
	lsls r4, r4, #3
	orrs r0, r4
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r5
	str r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	ldr r0, _0803E078
	ldr r1, _0803E07C
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldr r0, [r1]
	ands r0, r5
	str r0, [r1]
	adds r1, #8
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r2, _0803E080
	ldrh r1, [r2]
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803E084
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0803E088
	ldr r2, _0803E08C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0803E090
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r1]
	orrs r4, r0
	strh r4, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E06C: .4byte gOamBuffer
_0803E070: .4byte 0x08FA3558
_0803E074: .4byte 0xFFFFF3FF
_0803E078: .4byte 0x02022EC0
_0803E07C: .4byte 0x00000FBB
_0803E080: .4byte gBLDCNT
_0803E084: .4byte gBLDY
_0803E088: .4byte 0x0400000C
_0803E08C: .4byte 0x00001A0A
_0803E090: .4byte LoadOam

	THUMB_FUNC_START sub_803E094
sub_803E094: @ 0x0803E094
	push {r4, r5, lr}
	ldr r3, _0803E118
	ldr r0, _0803E11C
	ldr r0, [r0, #0x38]
	ldr r2, [r0, #4]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ldr r5, _0803E120
	ands r0, r5
	str r0, [r3]
	movs r4, #0x80
	lsls r4, r4, #3
	orrs r0, r4
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r5
	str r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	ldr r0, _0803E124
	ldr r1, _0803E128
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldr r0, [r1]
	ands r0, r5
	str r0, [r1]
	adds r1, #8
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r2, _0803E12C
	ldrh r1, [r2]
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803E130
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0803E134
	ldr r2, _0803E138
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0803E13C
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r1]
	orrs r4, r0
	strh r4, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E118: .4byte gOamBuffer
_0803E11C: .4byte 0x08FA3558
_0803E120: .4byte 0xFFFFF3FF
_0803E124: .4byte 0x02022EC0
_0803E128: .4byte 0x00000FBB
_0803E12C: .4byte gBLDCNT
_0803E130: .4byte gBLDY
_0803E134: .4byte 0x0400000C
_0803E138: .4byte 0x00001B0A
_0803E13C: .4byte LoadOam

	THUMB_FUNC_START sub_803E140
sub_803E140: @ 0x0803E140
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	ldr r1, _0803E188
	mov sl, r1
	movs r7, #0x1f
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sb, r1
	ldr r1, _0803E18C
	mov r8, r1
	movs r6, #0x7d
	rsbs r6, r6, #0
_0803E160:
	movs r4, #0
	adds r5, r0, #1
	ldr r0, _0803E190
	mov ip, r0
_0803E168:
	lsls r0, r4, #1
	mov r1, sl
	adds r3, r0, r1
	ldr r0, [r3]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _0803E194
	subs r0, #2
	ands r0, r7
	ldrb r2, [r3]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _0803E19C
	.align 2, 0
_0803E188: .4byte 0x02000000
_0803E18C: .4byte 0xFFFFFC1F
_0803E190: .4byte 0x000001FF
_0803E194:
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	strb r0, [r3]
_0803E19C:
	ldr r0, [r3]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _0803E1BA
	adds r1, r0, #0
	subs r1, #2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	b _0803E1C0
_0803E1BA:
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
_0803E1C0:
	strh r0, [r3]
	ldr r0, [r3]
	lsls r1, r0, #0x11
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _0803E1DE
	subs r0, #2
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _0803E1E6
_0803E1DE:
	ldrb r1, [r3, #1]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r3, #1]
_0803E1E6:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, ip
	bls _0803E168
	ldr r0, _0803E210
	bl SetVBlankCallback
	bl WaitForVBlank
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0803E160
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E210: .4byte LoadPalettes

	THUMB_FUNC_START sub_803E214
sub_803E214: @ 0x0803E214
	push {lr}
	ldr r2, _0803E240
	ldr r1, _0803E244
	ldr r0, _0803E248
	ldr r3, _0803E24C
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_803DD68
	ldr r0, _0803E250
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.align 2, 0
_0803E240: .4byte gBLDALPHA
_0803E244: .4byte 0x080DD688
_0803E248: .4byte 0x02022EC0
_0803E24C: .4byte 0x00000FBC
_0803E250: .4byte LoadOam

	THUMB_FUNC_START sub_803E254
sub_803E254: @ 0x0803E254
	push {lr}
	ldr r2, _0803E27C
	ldr r1, _0803E280
	ldr r0, _0803E284
	ldr r3, _0803E288
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r0, _0803E28C
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.align 2, 0
_0803E27C: .4byte gBLDALPHA
_0803E280: .4byte 0x080DD698
_0803E284: .4byte 0x02022EC0
_0803E288: .4byte 0x00000FBC
_0803E28C: .4byte LoadOam
	.byte 0x08, 0x49, 0x09, 0x48, 0x09, 0x4A, 0x80, 0x18, 0x00, 0x78, 0x00, 0x01, 0x41, 0x18, 0x08, 0x68
	.byte 0xC0, 0x22, 0x12, 0x01, 0x10, 0x43, 0x08, 0x60, 0x08, 0x31, 0x08, 0x68, 0x10, 0x43, 0x08, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0x08, 0x84, 0x01, 0x02, 0xC0, 0x2E, 0x02, 0x02, 0xBB, 0x0F, 0x00, 0x00
	.byte 0x08, 0x4A, 0x09, 0x48, 0x09, 0x49, 0x40, 0x18, 0x00, 0x78, 0x00, 0x01, 0x82, 0x18, 0x10, 0x68
	.byte 0x07, 0x49, 0x08, 0x40, 0x10, 0x60, 0x08, 0x32, 0x10, 0x68, 0xC0, 0x21, 0x09, 0x01, 0x08, 0x43
	.byte 0x10, 0x60, 0x70, 0x47, 0x08, 0x84, 0x01, 0x02, 0xC0, 0x2E, 0x02, 0x02, 0xBB, 0x0F, 0x00, 0x00
	.byte 0xFF, 0xF3, 0xFF, 0xFF, 0x10, 0xB5, 0x00, 0x06, 0x0C, 0x4C, 0x0D, 0x49, 0x80, 0x0D, 0x40, 0x18
	.byte 0x00, 0x68, 0x42, 0x68, 0x50, 0x88, 0x00, 0x04, 0x11, 0x88, 0x08, 0x43, 0x09, 0x4B, 0x18, 0x40
	.byte 0x20, 0x60, 0x80, 0x21, 0xC9, 0x00, 0x08, 0x43, 0x01, 0xC4, 0x90, 0x88, 0x18, 0x40, 0x80, 0x21
	.byte 0x09, 0x01, 0x08, 0x43, 0x20, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x84, 0x01, 0x02
	.byte 0x58, 0x35, 0xFA, 0x08, 0xFF, 0xF3, 0xFF, 0xFF, 0x07, 0x48, 0x80, 0x22, 0x92, 0x00, 0x11, 0x1C
	.byte 0x01, 0x80, 0x02, 0x30, 0x00, 0x21, 0x01, 0x80, 0x02, 0x30, 0x01, 0x80, 0x80, 0x22, 0x52, 0x00
	.byte 0x11, 0x1C, 0x41, 0x80, 0x70, 0x47, 0x00, 0x00, 0x00, 0x84, 0x01, 0x02

	THUMB_FUNC_START sub_803E35C
sub_803E35C: @ 0x0803E35C
	push {r4, lr}
	ldr r1, _0803E3D8
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0803E3DC
	ldr r2, _0803E3E0
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, _0803E3E4
	ands r1, r2
	str r1, [r0]
	adds r0, #8
	ldr r1, [r0]
	movs r2, #0xc0
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0]
	ldr r1, _0803E3E8
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r4, r2, #0
	orrs r0, r4
	strh r0, [r1]
	ldr r1, _0803E3EC
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0803E3F0
	ldr r2, _0803E3F4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0803E3F8
	bl SetVBlankCallback
	bl WaitForVBlank
	bl LoadBlendingRegs
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E3D8: .4byte gOamBuffer
_0803E3DC: .4byte 0x02022EC0
_0803E3E0: .4byte 0x00000FBB
_0803E3E4: .4byte 0xFFFFF3FF
_0803E3E8: .4byte gBLDCNT
_0803E3EC: .4byte gBLDY
_0803E3F0: .4byte 0x0400000C
_0803E3F4: .4byte 0x00001E0A
_0803E3F8: .4byte LoadOam

	THUMB_FUNC_START sub_803E3FC
sub_803E3FC: @ 0x0803E3FC
	push {r4, lr}
	ldr r2, _0803E46C
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	strh r0, [r2]
	adds r2, #2
	movs r3, #0
	strh r3, [r2]
	adds r2, #2
	strh r3, [r2]
	adds r2, #2
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	strh r0, [r2]
	adds r2, #2
	ldr r0, _0803E470
	ldr r1, _0803E474
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #4
	orrs r0, r2
	str r0, [r1]
	adds r1, #8
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
	ldr r2, _0803E478
	ldrh r1, [r2]
	ldr r4, _0803E47C
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0803E480
	strh r3, [r0]
	ldr r0, _0803E484
	bl SetVBlankCallback
	bl WaitForVBlank
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r1]
	ands r4, r0
	strh r4, [r1]
	bl LoadBlendingRegs
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E46C: .4byte gOamBuffer
_0803E470: .4byte 0x02022EC0
_0803E474: .4byte 0x00000FBB
_0803E478: .4byte gBLDCNT
_0803E47C: .4byte 0x0000FBFF
_0803E480: .4byte gBLDY
_0803E484: .4byte LoadOam

	THUMB_FUNC_START sub_803E488
sub_803E488: @ 0x0803E488
	push {r4, r5, lr}
	bl sub_803B71C
	movs r4, #0
	ldr r5, _0803E4B0
_0803E492:
	bl sub_803E6F8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x40
	beq _0803E4E0
	cmp r1, #0x40
	bgt _0803E4BE
	cmp r1, #2
	beq _0803E51C
	cmp r1, #2
	bgt _0803E4B4
	cmp r1, #1
	beq _0803E500
	b _0803E55C
	.align 2, 0
_0803E4B0: .4byte 0x02023502
_0803E4B4:
	cmp r1, #4
	beq _0803E544
	cmp r1, #8
	beq _0803E53A
	b _0803E55C
_0803E4BE:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0803E4F0
	cmp r1, r0
	bgt _0803E4D0
	cmp r1, #0x80
	beq _0803E4E8
	b _0803E55C
_0803E4D0:
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0803E4F8
	adds r0, #0x80
	cmp r1, r0
	beq _0803E52A
	b _0803E55C
_0803E4E0:
	movs r0, #1
	bl sub_80377D4
	b _0803E550
_0803E4E8:
	movs r0, #1
	bl sub_8036FEC
	b _0803E550
_0803E4F0:
	movs r0, #0x32
	bl sub_80377D4
	b _0803E550
_0803E4F8:
	movs r0, #0x32
	bl sub_8036FEC
	b _0803E550
_0803E500:
	movs r0, #2
	bl sub_8037798
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E518
	bl sub_803E56C
	bl sub_803B924
	b _0803E560
_0803E518:
	movs r0, #0x39
	b _0803E520
_0803E51C:
	movs r4, #1
	movs r0, #0x38
_0803E520:
	bl PlayMusic
	bl WaitForVBlank
	b _0803E560
_0803E52A:
	bl sub_8037BBC
	movs r0, #0x36
	bl PlayMusic
	bl sub_803B780
	b _0803E560
_0803E53A:
	bl sub_803E62C
	bl sub_803A6F8
	b _0803E560
_0803E544:
	bl sub_8037998
	bl sub_80379D8
	bl sub_8037814
_0803E550:
	movs r0, #0x36
	bl PlayMusic
	bl sub_803B7EC
	b _0803E560
_0803E55C:
	bl WaitForVBlank
_0803E560:
	cmp r4, #1
	bne _0803E492
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803E56C
sub_803E56C: @ 0x0803E56C
	push {r4, r5, lr}
	bl sub_8037740
	movs r0, #0x37
	bl PlayMusic
	bl sub_803B964
	movs r4, #0
	ldr r5, _0803E5A0
_0803E580:
	bl sub_803E7CC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x20
	beq _0803E5CE
	cmp r1, #0x20
	bgt _0803E5AA
	cmp r1, #2
	beq _0803E600
	cmp r1, #2
	bgt _0803E5A4
	cmp r1, #1
	beq _0803E5E4
	b _0803E61E
	.align 2, 0
_0803E5A0: .4byte 0x02023E78
_0803E5A4:
	cmp r1, #0x10
	beq _0803E5D4
	b _0803E61E
_0803E5AA:
	cmp r1, #0x80
	beq _0803E5C8
	cmp r1, #0x80
	bgt _0803E5B8
	cmp r1, #0x40
	beq _0803E5C2
	b _0803E61E
_0803E5B8:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0803E60E
	b _0803E61E
_0803E5C2:
	bl sub_8037ABC
	b _0803E5D8
_0803E5C8:
	bl sub_8037ADC
	b _0803E5D8
_0803E5CE:
	bl sub_8037AFC
	b _0803E5D8
_0803E5D4:
	bl sub_8037B1C
_0803E5D8:
	movs r0, #0x36
	bl PlayMusic
	bl sub_803B9B8
	b _0803E622
_0803E5E4:
	ldr r1, _0803E5FC
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r5]
	cmp r0, #1
	bne _0803E622
	movs r4, #1
	b _0803E622
	.align 2, 0
_0803E5FC: .4byte 0x08E0CEC0
_0803E600:
	movs r4, #1
	movs r0, #0x38
	bl PlayMusic
	bl WaitForVBlank
	b _0803E622
_0803E60E:
	bl sub_8037BBC
	movs r0, #0x36
	bl PlayMusic
	bl sub_803B780
	b _0803E622
_0803E61E:
	bl WaitForVBlank
_0803E622:
	cmp r4, #1
	bne _0803E580
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803E62C
sub_803E62C: @ 0x0803E62C
	push {r4, r5, r6, r7, lr}
	ldr r4, _0803E668
	ldr r0, _0803E66C
	adds r5, r4, r0
	ldrb r0, [r5]
	ldr r1, _0803E670
	adds r4, r4, r1
	strb r0, [r4]
	ldrb r6, [r5]
	movs r0, #0x37
	bl PlayMusic
	bl sub_803BA50
	movs r7, #0
_0803E64A:
	bl sub_803E7CC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	beq _0803E6A6
	cmp r0, #0x10
	bgt _0803E67A
	cmp r0, #2
	beq _0803E6DA
	cmp r0, #2
	bgt _0803E674
	cmp r0, #1
	beq _0803E6C2
	b _0803E6EA
	.align 2, 0
_0803E668: .4byte 0x02022EC0
_0803E66C: .4byte 0x00000FBA
_0803E670: .4byte 0x00000FB8
_0803E674:
	cmp r0, #8
	beq _0803E6DA
	b _0803E6EA
_0803E67A:
	cmp r0, #0x40
	beq _0803E68E
	cmp r0, #0x40
	bgt _0803E688
	cmp r0, #0x20
	beq _0803E6A0
	b _0803E6EA
_0803E688:
	cmp r0, #0x80
	beq _0803E69A
	b _0803E6EA
_0803E68E:
	bl sub_8037B3C
_0803E692:
	ldrb r0, [r4]
	cmp r0, #0xa
	beq _0803E6B0
	b _0803E6B4
_0803E69A:
	bl sub_8037B5C
	b _0803E692
_0803E6A0:
	bl sub_8037B7C
	b _0803E692
_0803E6A6:
	bl sub_8037B9C
	ldrb r0, [r4]
	cmp r0, #0xa
	bne _0803E6B4
_0803E6B0:
	strb r6, [r5]
	b _0803E6B6
_0803E6B4:
	strb r0, [r5]
_0803E6B6:
	movs r0, #0x36
	bl PlayMusic
	bl sub_803BAB4
	b _0803E6EE
_0803E6C2:
	ldrb r0, [r4]
	cmp r0, #0xa
	bne _0803E6CC
	strb r6, [r5]
	b _0803E6CE
_0803E6CC:
	strb r0, [r5]
_0803E6CE:
	bl sub_80379D8
	bl sub_8037814
	movs r0, #0x37
	b _0803E6DE
_0803E6DA:
	strb r6, [r5]
	movs r0, #0x38
_0803E6DE:
	bl PlayMusic
	bl WaitForVBlank
	movs r7, #1
	b _0803E6EE
_0803E6EA:
	bl WaitForVBlank
_0803E6EE:
	cmp r7, #1
	bne _0803E64A
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803E6F8
sub_803E6F8: @ 0x0803E6F8
	push {lr}
	bl UpdateFilteredInput_NoRepeat
	ldr r0, _0803E710
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803E714
	movs r0, #1
	b _0803E7C8
	.align 2, 0
_0803E710: .4byte gNewButtons
_0803E714:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803E720
	movs r0, #2
	b _0803E7C8
_0803E720:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0803E730
	adds r0, r2, #0
	b _0803E7C8
_0803E730:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803E73C
	movs r0, #8
	b _0803E7C8
_0803E73C:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803E748
	movs r0, #4
	b _0803E7C8
_0803E748:
	ldr r2, _0803E768
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803E770
	ldr r0, _0803E76C
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803E770
	movs r0, #0xa0
	lsls r0, r0, #1
	b _0803E7C8
	.align 2, 0
_0803E768: .4byte gFilteredInput
_0803E76C: .4byte gPressedButtons
_0803E770:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803E794
	ldr r0, _0803E790
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803E794
	movs r0, #0xc0
	lsls r0, r0, #1
	b _0803E7C8
	.align 2, 0
_0803E790: .4byte gPressedButtons
_0803E794:
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803E7A2
	movs r0, #0x40
	b _0803E7C8
_0803E7A2:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803E7AE
	movs r0, #0x80
	b _0803E7C8
_0803E7AE:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803E7BA
	movs r0, #0x20
	b _0803E7C8
_0803E7BA:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0803E7C6
	movs r0, #0
	b _0803E7C8
_0803E7C6:
	movs r0, #0x10
_0803E7C8:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_803E7CC
sub_803E7CC: @ 0x0803E7CC
	push {lr}
	bl UpdateFilteredInput_WithRepeat
	ldr r0, _0803E7E4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803E7E8
	movs r0, #1
	b _0803E84A
	.align 2, 0
_0803E7E4: .4byte gNewButtons
_0803E7E8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803E7F4
	movs r0, #2
	b _0803E84A
_0803E7F4:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0803E804
	adds r0, r2, #0
	b _0803E84A
_0803E804:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803E810
	movs r0, #8
	b _0803E84A
_0803E810:
	ldr r0, _0803E820
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803E824
	movs r0, #0x40
	b _0803E84A
	.align 2, 0
_0803E820: .4byte gFilteredInput
_0803E824:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803E830
	movs r0, #0x80
	b _0803E84A
_0803E830:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803E83C
	movs r0, #0x20
	b _0803E84A
_0803E83C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0803E848
	movs r0, #0
	b _0803E84A
_0803E848:
	movs r0, #0x10
_0803E84A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803E850
sub_803E850: @ 0x0803E850
	push {lr}
	movs r0, #0x37
	bl PlayMusic
	movs r0, #2
	bl sub_8037798
	bl SetCardInfo
	bl ShowCardDetailView
	bl sub_803B9D4
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803E870
sub_803E870: @ 0x0803E870
	push {lr}
	movs r0, #0x37
	bl PlayMusic
	bl WaitForVBlank
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803E880
sub_803E880: @ 0x0803E880
	push {r4, r5, lr}
	bl sub_803D1A4
	movs r4, #0
	ldr r5, _0803E8A8
_0803E88A:
	bl sub_803EB00
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x40
	beq _0803E8D8
	cmp r1, #0x40
	bgt _0803E8B6
	cmp r1, #2
	beq _0803E91E
	cmp r1, #2
	bgt _0803E8AC
	cmp r1, #1
	beq _0803E8F8
	b _0803E95E
	.align 2, 0
_0803E8A8: .4byte 0x020231E1
_0803E8AC:
	cmp r1, #4
	beq _0803E946
	cmp r1, #8
	beq _0803E93C
	b _0803E95E
_0803E8B6:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0803E8E8
	cmp r1, r0
	bgt _0803E8C8
	cmp r1, #0x80
	beq _0803E8E0
	b _0803E95E
_0803E8C8:
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0803E8F0
	adds r0, #0x80
	cmp r1, r0
	beq _0803E92C
	b _0803E95E
_0803E8D8:
	movs r0, #1
	bl sub_8038424
	b _0803E952
_0803E8E0:
	movs r0, #1
	bl sub_8037BDC
	b _0803E952
_0803E8E8:
	movs r0, #0x32
	bl sub_8038424
	b _0803E952
_0803E8F0:
	movs r0, #0x32
	bl sub_8037BDC
	b _0803E952
_0803E8F8:
	movs r0, #2
	bl sub_80383E4
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E91A
	bl sub_803E96C
	bl sub_803D3CC
	bl sub_80383A0
	cmp r0, #0
	beq _0803E962
	movs r4, #1
	b _0803E962
_0803E91A:
	movs r0, #0x39
	b _0803E922
_0803E91E:
	movs r4, #1
	movs r0, #0x38
_0803E922:
	bl PlayMusic
	bl WaitForVBlank
	b _0803E962
_0803E92C:
	bl sub_8038840
	movs r0, #0x36
	bl PlayMusic
	bl sub_803D208
	b _0803E962
_0803E93C:
	bl sub_803EA34
	bl sub_803C128
	b _0803E962
_0803E946:
	bl sub_803863C
	bl sub_803867C
	bl sub_8038464
_0803E952:
	movs r0, #0x36
	bl PlayMusic
	bl sub_803D274
	b _0803E962
_0803E95E:
	bl WaitForVBlank
_0803E962:
	cmp r4, #1
	bne _0803E88A
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803E96C
sub_803E96C: @ 0x0803E96C
	push {r4, r5, lr}
	bl sub_8038330
	movs r0, #0x37
	bl PlayMusic
	bl sub_803D43C
	movs r4, #0
	ldr r5, _0803E9A0
_0803E980:
	bl sub_803EBD4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x20
	beq _0803E9CE
	cmp r1, #0x20
	bgt _0803E9AA
	cmp r1, #2
	beq _0803EA08
	cmp r1, #2
	bgt _0803E9A4
	cmp r1, #1
	beq _0803E9E4
	b _0803EA26
	.align 2, 0
_0803E9A0: .4byte 0x08E0CEC8
_0803E9A4:
	cmp r1, #0x10
	beq _0803E9D4
	b _0803EA26
_0803E9AA:
	cmp r1, #0x80
	beq _0803E9C8
	cmp r1, #0x80
	bgt _0803E9B8
	cmp r1, #0x40
	beq _0803E9C2
	b _0803EA26
_0803E9B8:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0803EA16
	b _0803EA26
_0803E9C2:
	bl sub_8038760
	b _0803E9D8
_0803E9C8:
	bl sub_803877C
	b _0803E9D8
_0803E9CE:
	bl sub_8038798
	b _0803E9D8
_0803E9D4:
	bl sub_80387B4
_0803E9D8:
	movs r0, #0x36
	bl PlayMusic
	bl sub_803D490
	b _0803EA2A
_0803E9E4:
	ldr r0, _0803EA04
	movs r1, #0xfb
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl _call_via_r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0803EA2A
	movs r4, #1
	b _0803EA2A
	.align 2, 0
_0803EA04: .4byte 0x02022EC0
_0803EA08:
	movs r4, #1
	movs r0, #0x38
	bl PlayMusic
	bl WaitForVBlank
	b _0803EA2A
_0803EA16:
	bl sub_8038840
	movs r0, #0x36
	bl PlayMusic
	bl sub_803D208
	b _0803EA2A
_0803EA26:
	bl WaitForVBlank
_0803EA2A:
	cmp r4, #1
	bne _0803E980
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803EA34
sub_803EA34: @ 0x0803EA34
	push {r4, r5, r6, r7, lr}
	ldr r4, _0803EA74
	ldr r0, _0803EA78
	adds r5, r4, r0
	ldrb r0, [r5]
	movs r1, #0xfb
	lsls r1, r1, #4
	adds r4, r4, r1
	strb r0, [r4]
	ldrb r6, [r5]
	movs r0, #0x37
	bl PlayMusic
	bl sub_803D528
	movs r7, #0
_0803EA54:
	bl sub_803EBD4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	beq _0803EAAE
	cmp r0, #0x10
	bgt _0803EA82
	cmp r0, #2
	beq _0803EAE2
	cmp r0, #2
	bgt _0803EA7C
	cmp r0, #1
	beq _0803EACA
	b _0803EAF2
	.align 2, 0
_0803EA74: .4byte 0x02022EC0
_0803EA78: .4byte 0x00000FB2
_0803EA7C:
	cmp r0, #8
	beq _0803EAE2
	b _0803EAF2
_0803EA82:
	cmp r0, #0x40
	beq _0803EA96
	cmp r0, #0x40
	bgt _0803EA90
	cmp r0, #0x20
	beq _0803EAA8
	b _0803EAF2
_0803EA90:
	cmp r0, #0x80
	beq _0803EAA2
	b _0803EAF2
_0803EA96:
	bl sub_80387D0
_0803EA9A:
	ldrb r0, [r4]
	cmp r0, #0xa
	beq _0803EAB8
	b _0803EABC
_0803EAA2:
	bl sub_80387EC
	b _0803EA9A
_0803EAA8:
	bl sub_8038808
	b _0803EA9A
_0803EAAE:
	bl sub_8038824
	ldrb r0, [r4]
	cmp r0, #0xa
	bne _0803EABC
_0803EAB8:
	strb r6, [r5]
	b _0803EABE
_0803EABC:
	strb r0, [r5]
_0803EABE:
	movs r0, #0x36
	bl PlayMusic
	bl sub_803D594
	b _0803EAF6
_0803EACA:
	ldrb r0, [r4]
	cmp r0, #0xa
	bne _0803EAD4
	strb r6, [r5]
	b _0803EAD6
_0803EAD4:
	strb r0, [r5]
_0803EAD6:
	bl sub_803867C
	bl sub_8038464
	movs r0, #0x37
	b _0803EAE6
_0803EAE2:
	strb r6, [r5]
	movs r0, #0x38
_0803EAE6:
	bl PlayMusic
	bl WaitForVBlank
	movs r7, #1
	b _0803EAF6
_0803EAF2:
	bl WaitForVBlank
_0803EAF6:
	cmp r7, #1
	bne _0803EA54
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803EB00
sub_803EB00: @ 0x0803EB00
	push {lr}
	bl UpdateFilteredInput_NoRepeat
	ldr r0, _0803EB18
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803EB1C
	movs r0, #1
	b _0803EBD0
	.align 2, 0
_0803EB18: .4byte gNewButtons
_0803EB1C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803EB28
	movs r0, #2
	b _0803EBD0
_0803EB28:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0803EB38
	adds r0, r2, #0
	b _0803EBD0
_0803EB38:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803EB44
	movs r0, #8
	b _0803EBD0
_0803EB44:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803EB50
	movs r0, #4
	b _0803EBD0
_0803EB50:
	ldr r2, _0803EB70
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803EB78
	ldr r0, _0803EB74
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803EB78
	movs r0, #0xa0
	lsls r0, r0, #1
	b _0803EBD0
	.align 2, 0
_0803EB70: .4byte gFilteredInput
_0803EB74: .4byte gPressedButtons
_0803EB78:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803EB9C
	ldr r0, _0803EB98
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803EB9C
	movs r0, #0xc0
	lsls r0, r0, #1
	b _0803EBD0
	.align 2, 0
_0803EB98: .4byte gPressedButtons
_0803EB9C:
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803EBAA
	movs r0, #0x40
	b _0803EBD0
_0803EBAA:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803EBB6
	movs r0, #0x80
	b _0803EBD0
_0803EBB6:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803EBC2
	movs r0, #0x20
	b _0803EBD0
_0803EBC2:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0803EBCE
	movs r0, #0
	b _0803EBD0
_0803EBCE:
	movs r0, #0x10
_0803EBD0:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_803EBD4
sub_803EBD4: @ 0x0803EBD4
	push {lr}
	bl UpdateFilteredInput_WithRepeat
	ldr r0, _0803EBEC
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803EBF0
	movs r0, #1
	b _0803EC52
	.align 2, 0
_0803EBEC: .4byte gNewButtons
_0803EBF0:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803EBFC
	movs r0, #2
	b _0803EC52
_0803EBFC:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0803EC0C
	adds r0, r2, #0
	b _0803EC52
_0803EC0C:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803EC18
	movs r0, #8
	b _0803EC52
_0803EC18:
	ldr r0, _0803EC28
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803EC2C
	movs r0, #0x40
	b _0803EC52
	.align 2, 0
_0803EC28: .4byte gFilteredInput
_0803EC2C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803EC38
	movs r0, #0x80
	b _0803EC52
_0803EC38:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803EC44
	movs r0, #0x20
	b _0803EC52
_0803EC44:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0803EC50
	movs r0, #0
	b _0803EC52
_0803EC50:
	movs r0, #0x10
_0803EC52:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803EC58
sub_803EC58: @ 0x0803EC58
	push {lr}
	movs r0, #0x37
	bl PlayMusic
	movs r0, #2
	bl sub_80383E4
	bl SetCardInfo
	bl ShowCardDetailView
	bl sub_803D4AC
	movs r0, #0
	pop {r1}
	bx r1
	.byte 0x00, 0xB5, 0x39, 0x20, 0xF6, 0xF7, 0x70, 0xF9
	.byte 0xC9, 0xF7, 0xCE, 0xFA, 0x00, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x39, 0x20
	.byte 0xF6, 0xF7, 0x66, 0xF9, 0xC9, 0xF7, 0xC4, 0xFA, 0x00, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_803ECA0
sub_803ECA0: @ 0x0803ECA0
	push {r4, r5, lr}
	movs r5, #0
	movs r0, #2
	bl sub_80383E4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl sub_80384BC
	cmp r0, #0
	bne _0803ECE8
	adds r0, r4, #0
	movs r1, #1
	bl sub_8038574
	adds r0, r4, #0
	movs r1, #1
	bl sub_8036D5C
	ldr r0, _0803ECFC
	ldr r1, _0803ED00
	adds r0, r0, r1
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803ECE8
	bl sub_8038344
	movs r0, #1
	bl sub_8038618
	bl sub_8037C1C
	movs r5, #1
_0803ECE8:
	movs r0, #0x37
	bl PlayMusic
	bl sub_803D40C
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803ECFC: .4byte 0x02022EC0
_0803ED00: .4byte 0x00000321

	THUMB_FUNC_START sub_803ED04
sub_803ED04: @ 0x0803ED04
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r0, #2
	bl sub_80383E4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0803ED60
	ldr r1, _0803ED64
	adds r0, r0, r1
	adds r6, r5, r0
	ldrb r4, [r6]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80384BC
	cmp r0, #0
	bne _0803ED4E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8038574
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8036D5C
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803ED4E
	bl sub_8038344
	movs r0, #1
	bl sub_8038618
	bl sub_8037C1C
	movs r7, #1
_0803ED4E:
	movs r0, #0x37
	bl PlayMusic
	bl sub_803D274
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803ED60: .4byte 0x02022EC0
_0803ED64: .4byte 0x00000321

	THUMB_FUNC_START sub_803ED68
sub_803ED68: @ 0x0803ED68
	push {lr}
	movs r0, #0x38
	bl PlayMusic
	movs r0, #1
	pop {r1}
	bx r1
	.byte 0x00, 0x00

//TradeMenu end


.align 2, 0
