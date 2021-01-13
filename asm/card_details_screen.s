    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	THUMB_FUNC_START sub_80262B0
sub_80262B0: @ 0x080262B0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r7, #0x48
	ldr r1, _08026324
	ldr r5, _08026328
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, _0802632C
	ldr r1, [r4]
	adds r1, #0x40
	bl sub_800E08C

@clear first tile in VRAM
    mov r0, sp
	movs r6, #0
	strh r6, [r0]
	ldr r1, [r4]
	ldr r2, _08026330
	bl CpuSet

	ldr r1, _08026334
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, _08026338
	ldr r1, [r4]
	ldr r2, _0802633C
	bl CpuSet
	ldr r0, [r4]
	strh r6, [r0]
	movs r4, #0
	ldr r5, _08026340
_080262F6:
	lsls r3, r4, #2
	adds r2, r3, r4
	lsls r0, r2, #2
	ldr r1, _08026344
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r2, r7
	adds r2, r2, r3
	lsls r2, r2, #1
	ldr r1, [r5]
	adds r1, r1, r2
	ldr r2, _08026348
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _080262F6
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026324: .4byte gUnk_8E11EB8
_08026328: .4byte gCardInfo
_0802632C: .4byte gUnk_8E01364
_08026330: .4byte 0x01000020
_08026334: .4byte gUnk_8E12B3C
_08026338: .4byte gUnk_8E01368
_0802633C: .4byte 0x04000020
_08026340: .4byte gUnk_8E0136C
_08026344: .4byte gUnk_8936130
_08026348: .4byte 0x04000005

	THUMB_FUNC_START sub_802634C
sub_802634C: @ 0x0802634C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _080263C0
	ldrb r0, [r7, #0x17]
	cmp r0, #0
	beq _080263B6
	ldr r1, _080263C4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080263C8
	ldr r1, [r1]
	adds r1, #0xac
	movs r2, #7
	bl CpuSet
	ldr r0, _080263CC
	mov r8, r0
	ldr r6, _080263D0
	ldrb r1, [r7, #0x17]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r4, _080263D4
	ldr r1, [r4]
	movs r2, #0xc8
	lsls r2, r2, #6
	adds r1, r1, r2
	ldr r5, _080263D8
	adds r2, r5, #0
	bl CpuSet
	ldrb r1, [r7, #0x17]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r6, [r6]
	adds r0, r0, r6
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	adds r0, #0x80
	ldr r1, [r4]
	movs r2, #0xd0
	lsls r2, r2, #6
	adds r1, r1, r2
	adds r2, r5, #0
	bl CpuSet
_080263B6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080263C0: .4byte gCardInfo
_080263C4: .4byte gUnk_8E17F18
_080263C8: .4byte gUnk_8E01368
_080263CC: .4byte gUnk_8E17E28
_080263D0: .4byte gLanguage
_080263D4: .4byte gUnk_8E01364
_080263D8: .4byte 0x04000020

	THUMB_FUNC_START sub_80263DC
sub_80263DC: @ 0x080263DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _08026474
	ldrb r0, [r7, #0x16]
	cmp r0, #0
	beq _08026468
	ldr r1, _08026478
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802647C
	ldr r1, [r1]
	adds r1, #0xba
	movs r2, #0xb
	bl CpuSet
	ldrb r0, [r7, #0x16]
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #2
	mov sb, r1
	cmp r0, #2
	bhi _08026414
	movs r2, #4
	mov sb, r2
_08026414:
	ldr r0, _08026480
	mov r8, r0
	ldr r6, _08026484
	ldrb r1, [r7, #0x16]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r5, _08026488
	ldr r1, [r5]
	movs r2, #0xc6
	lsls r2, r2, #6
	adds r1, r1, r2
	mov r2, sb
	lsls r4, r2, #4
	movs r2, #0x80
	lsls r2, r2, #0x13
	orrs r4, r2
	adds r2, r4, #0
	bl CpuSet
	ldrb r1, [r7, #0x16]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r6, [r6]
	adds r0, r0, r6
	lsls r0, r0, #2
	add r0, r8
	mov r2, sb
	lsls r1, r2, #6
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r1, [r5]
	movs r2, #0xce
	lsls r2, r2, #6
	adds r1, r1, r2
	adds r2, r4, #0
	bl CpuSet
_08026468:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026474: .4byte gCardInfo
_08026478: .4byte gUnk_8E151C8
_0802647C: .4byte gUnk_8E01368
_08026480: .4byte gUnk_8E14FE8
_08026484: .4byte gLanguage
_08026488: .4byte gUnk_8E01364

	THUMB_FUNC_START sub_802648C
sub_802648C: @ 0x0802648C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080264EC
	ldrh r0, [r0, #0x12]
	movs r1, #0
	bl sub_800DDA0
	movs r6, #0
	ldr r0, _080264F0
	mov sb, r0
	ldr r5, _080264F4
	ldr r7, _080264F8
	movs r1, #0xe4
	lsls r1, r1, #5
	mov r8, r1
_080264AE:
	mov r0, sb
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	beq _0802650C
	adds r0, #2
	lsls r0, r0, #6
	ldr r1, _080264FC
	adds r0, r0, r1
	ldr r1, _08026500
	adds r2, r5, #0
	bl CpuSet
	adds r4, r6, #0
	adds r4, #0x72
	lsls r4, r4, #6
	ldr r0, [r7]
	adds r0, r0, r4
	ldr r1, _08026504
	adds r2, r5, #0
	bl CpuSet
	bl sub_800DD4C
	ldr r1, [r7]
	adds r1, r1, r4
	ldr r0, _08026508
	adds r2, r5, #0
	bl CpuSet
	b _0802653E
	.align 2, 0
_080264EC: .4byte gCardInfo
_080264F0: .4byte 0x02021BD0
_080264F4: .4byte 0x04000010
_080264F8: .4byte gUnk_8E01364
_080264FC: .4byte gUnk_89385D8
_08026500: .4byte 0x02021B50
_08026504: .4byte 0x02021B10
_08026508: .4byte 0x02021B90
_0802650C:
	cmp r6, #0
	bne _0802653E
	mov r1, sb
	ldrb r0, [r1, #4]
	cmp r0, #0xa
	beq _0802653E
	ldr r0, _08026554
	ldr r1, _08026558
	adds r2, r5, #0
	bl CpuSet
	ldr r0, [r7]
	add r0, r8
	ldr r1, _0802655C
	adds r2, r5, #0
	bl CpuSet
	bl sub_800DD4C
	ldr r1, [r7]
	add r1, r8
	ldr r0, _08026560
	adds r2, r5, #0
	bl CpuSet
_0802653E:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _080264AE
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026554: .4byte gUnk_8938618
_08026558: .4byte 0x02021B50
_0802655C: .4byte 0x02021B10
_08026560: .4byte 0x02021B90

	THUMB_FUNC_START sub_8026564
sub_8026564: @ 0x08026564
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080265C4
	ldrh r0, [r0, #0x14]
	movs r1, #0
	bl sub_800DDA0
	movs r6, #0
	ldr r0, _080265C8
	mov sb, r0
	ldr r5, _080265CC
	ldr r7, _080265D0
	movs r1, #0xee
	lsls r1, r1, #5
	mov r8, r1
_08026586:
	mov r0, sb
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	beq _080265E4
	adds r0, #2
	lsls r0, r0, #6
	ldr r1, _080265D4
	adds r0, r0, r1
	ldr r1, _080265D8
	adds r2, r5, #0
	bl CpuSet
	adds r4, r6, #0
	adds r4, #0x77
	lsls r4, r4, #6
	ldr r0, [r7]
	adds r0, r0, r4
	ldr r1, _080265DC
	adds r2, r5, #0
	bl CpuSet
	bl sub_800DD4C
	ldr r1, [r7]
	adds r1, r1, r4
	ldr r0, _080265E0
	adds r2, r5, #0
	bl CpuSet
	b _08026616
	.align 2, 0
_080265C4: .4byte gCardInfo
_080265C8: .4byte 0x02021BD0
_080265CC: .4byte 0x04000010
_080265D0: .4byte gUnk_8E01364
_080265D4: .4byte gUnk_89385D8
_080265D8: .4byte 0x02021B50
_080265DC: .4byte 0x02021B10
_080265E0: .4byte 0x02021B90
_080265E4:
	cmp r6, #0
	bne _08026616
	mov r1, sb
	ldrb r0, [r1, #4]
	cmp r0, #0xa
	beq _08026616
	ldr r0, _0802662C
	ldr r1, _08026630
	adds r2, r5, #0
	bl CpuSet
	ldr r0, [r7]
	add r0, r8
	ldr r1, _08026634
	adds r2, r5, #0
	bl CpuSet
	bl sub_800DD4C
	ldr r1, [r7]
	add r1, r8
	ldr r0, _08026638
	adds r2, r5, #0
	bl CpuSet
_08026616:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _08026586
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802662C: .4byte gUnk_89385D8
_08026630: .4byte 0x02021B50
_08026634: .4byte 0x02021B10
_08026638: .4byte 0x02021B90

	THUMB_FUNC_START sub_802663C
sub_802663C: @ 0x0802663C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	ldr r0, _08026668
	ldrb r0, [r0]
	ldr r2, _0802666C
	cmp r0, #0
	bne _08026674
	ldrh r1, [r2, #0x10]
	movs r0, #0xb6
	lsls r0, r0, #1
	cmp r1, r0
	beq _08026662
	ldr r0, _08026670
	cmp r1, r0
	bne _08026674
_08026662:
	movs r0, #1
	str r0, [sp, #0x48]
	b _08026678
	.align 2, 0
_08026668: .4byte gLanguage
_0802666C: .4byte gCardInfo
_08026670: .4byte 0x0000029E
_08026674:
	movs r1, #0
	str r1, [sp, #0x48]
_08026678:
	ldr r6, [r2]
	adds r0, r6, #0
	bl sub_8020824
	adds r6, r0, #0
	movs r7, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802668C
	b _08026790
_0802668C:
	cmp r0, #0x24
	bne _08026692
	b _08026790
_08026692:
	ldr r0, _080266B8
	mov sl, r0
	ldr r1, _080266BC
	mov sb, r1
	ldr r0, _080266C0
	mov r8, r0
_0802669E:
	ldr r1, [sp, #0x48]
	cmp r1, #0
	beq _080266C8
	cmp r7, #1
	bne _080266C8
	ldr r1, _080266C4
	ldr r0, [r1, #0x38]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	ldrb r0, [r0]
	orrs r1, r0
	adds r6, #4
	b _080266F6
	.align 2, 0
_080266B8: .4byte 0x02021B50
_080266BC: .4byte gUnk_8E01364
_080266C0: .4byte 0x04000010
_080266C4: .4byte gUnk_8E00E30
_080266C8:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _080266EC
	ldrb r0, [r6]
	subs r0, #0x20
	lsls r0, r0, #2
	ldr r1, _080266E8
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	ldrb r0, [r0]
	orrs r1, r0
	adds r6, #1
	b _080266F6
	.align 2, 0
_080266E8: .4byte gUnk_8E00E30
_080266EC:
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	ldrb r1, [r6]
	orrs r1, r0
	adds r6, #2
_080266F6:
	mov r0, sp
	ldr r2, _080267A0
	bl sub_8020968
	movs r0, #0
	str r0, [sp, #0x40]
	add r0, sp, #0x40
	mov r1, sl
	ldr r2, _080267A4
	bl CpuSet
	mov r0, sp
	mov r1, sl
	adds r1, #0x28
	ldr r2, _080267A8
	bl CpuSet
	lsls r5, r7, #1
	adds r4, r5, #0
	adds r4, #0x85
	lsls r4, r4, #6
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	ldr r1, _080267AC
	mov r2, r8
	bl CpuSet
	bl sub_800DD4C
	mov r0, sb
	ldr r1, [r0]
	adds r1, r1, r4
	ldr r0, _080267B0
	mov r2, r8
	bl CpuSet
	movs r1, #0
	str r1, [sp, #0x44]
	add r0, sp, #0x44
	mov r1, sl
	ldr r2, _080267A4
	bl CpuSet
	add r0, sp, #0x18
	mov r1, sl
	ldr r2, _080267B4
	bl CpuSet
	adds r5, #0x86
	lsls r5, r5, #6
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r5
	ldr r1, _080267AC
	mov r2, r8
	bl CpuSet
	bl sub_800DD4C
	mov r0, sb
	ldr r1, [r0]
	adds r1, r1, r5
	ldr r0, _080267B0
	mov r2, r8
	bl CpuSet
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #9
	bhi _08026790
	ldrb r0, [r6]
	cmp r0, #0
	beq _08026790
	cmp r0, #0x24
	bne _0802669E
_08026790:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080267A0: .4byte 0x0000044A
_080267A4: .4byte 0x05000010
_080267A8: .4byte 0x04000006
_080267AC: .4byte 0x02021B10
_080267B0: .4byte 0x02021B90
_080267B4: .4byte 0x0400000A

	THUMB_FUNC_START sub_80267B8
sub_80267B8: @ 0x080267B8
	push {lr}
	bl sub_80267E0
	bl sub_80262B0
	bl sub_802634C
	bl sub_80263DC
	bl sub_8026864
	bl sub_802648C
	bl sub_8026564
	bl sub_802663C
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80267E0
sub_80267E0: @ 0x080267E0
	push {r4, lr}
	ldr r0, _0802683C
	ldr r4, _08026840
	ldr r1, [r4]
	movs r2, #0x85
	lsls r2, r2, #1
	bl CpuSet
	movs r2, #0
	ldr r3, _08026844
_080267F4:
	ldr r0, [r4]
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0x65
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	bls _080267F4
	ldr r0, _08026848
	ldr r0, [r0]
	ldr r1, _0802684C
	ldr r1, [r1]
	movs r2, #0xca
	lsls r2, r2, #5
	adds r1, r1, r2
	ldr r2, _08026850
	bl CpuSet
	ldr r1, _08026854
	ldr r0, _08026858
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802685C
	ldr r1, [r1]
	adds r1, #0x80
	ldr r2, _08026860
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802683C: .4byte gUnk_8938384
_08026840: .4byte gUnk_8E0136C
_08026844: .4byte 0x00000109
_08026848: .4byte gUnk_8E137C0
_0802684C: .4byte gUnk_8E01364
_08026850: .4byte 0x04000800
_08026854: .4byte gUnk_8E137C4
_08026858: .4byte gCardInfo
_0802685C: .4byte gUnk_8E01368
_08026860: .4byte 0x0400000A

	THUMB_FUNC_START sub_8026864
sub_8026864: @ 0x08026864
	push {r4, r5, r6, r7, lr}
	ldr r0, _080268BC
	ldrb r5, [r0, #0x18]
	cmp r5, #0
	beq _080268B4
	cmp r5, #0xc
	bls _08026874
	movs r5, #0xc
_08026874:
	ldr r0, _080268C0
	ldr r1, _080268C4
	ldr r4, _080268C8
	adds r2, r4, #0
	bl CpuSet
	cmp r5, #0
	beq _080268B4
	ldr r7, _080268CC
	adds r6, r4, #0
_08026888:
	movs r4, #0x72
	subs r4, r4, r5
	lsls r4, r4, #6
	ldr r0, [r7]
	adds r0, r0, r4
	ldr r1, _080268D0
	adds r2, r6, #0
	bl CpuSet
	bl sub_800DD4C
	ldr r1, [r7]
	adds r1, r1, r4
	ldr r0, _080268D4
	adds r2, r6, #0
	bl CpuSet
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08026888
_080268B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080268BC: .4byte gCardInfo
_080268C0: .4byte gUnk_8938598
_080268C4: .4byte 0x02021B50
_080268C8: .4byte 0x04000010
_080268CC: .4byte gUnk_8E01364
_080268D0: .4byte 0x02021B10
_080268D4: .4byte 0x02021B90

	.align 2, 0
