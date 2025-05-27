	  .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED


  THUMB_FUNC_START StatusMenu
StatusMenu: @ 0x080075DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
_080075E8:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08007914
	adds r0, r0, r1
	lsls r1, r5, #6
	ldr r4, _08007918
	adds r1, r1, r4
	movs r2, #0x1e
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _080075E8
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r6, [r0]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r6, r0
	movs r5, #0
	ldr r0, _0800791C
	adds r7, r4, r0
	ldr r1, _08007920
	mov sb, r1
	ldr r2, _08007924
	mov sl, r2
	adds r3, r7, #0
	ldr r2, _08007928 @0x00007C20
_0800762E:
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r1, #0x19
	orrs r1, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _0800762E
	movs r5, #0
	ldr r2, _0800792C
	ldr r1, _08007930 @0x00007C40
_08007652:
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	mov r3, r8
	strh r3, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08007652
	movs r5, #0
	ldr r4, _0800792C
	movs r0, #0xf8
	lsls r0, r0, #7
	mov ip, r0
	movs r1, #0xf9
	lsls r1, r1, #7
	mov r8, r1
_0800767C:
	adds r1, r5, #3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r2, sb
	adds r3, r5, r2
	ldrb r2, [r3]
	adds r2, #0x5c
	orrs r2, r6
	mov r0, ip
	adds r0, #0x60
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	strh r2, [r0]
	ldrb r0, [r3]
	adds r0, #0x5e
	orrs r0, r6
	add r1, r8
	lsls r1, r1, #1
	adds r1, r1, r4
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0800767C
	movs r5, #0
_080076B2:
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	adds r4, r0, #0
	adds r4, #2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r0, #6
	lsls r0, r0, #0x18
	adds r1, r5, #0
	adds r1, #0x20
	orrs r1, r6
	lsrs r0, r0, #0x13
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r0, r3
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _080076B2
	movs r5, #0
_080076F0:
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	adds r4, r0, #0
	adds r4, #0xd
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r0, #1
	lsls r0, r0, #0x18
	adds r1, r5, #0
	adds r1, #0x34
	orrs r1, r6
	lsrs r0, r0, #0x13
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r0, r0, r2
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _080076F0
	movs r5, #0
_0800772E:
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	adds r4, r0, #0
	adds r4, #0xd
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r0, #6
	lsls r0, r0, #0x18
	adds r1, r5, #0
	adds r1, #0x48
	orrs r1, r6
	lsrs r0, r0, #0x13
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r0, r3
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r7
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _0800772E
	movs r5, #0
	ldr r4, _0800792C
	movs r3, #0xfc
	lsls r3, r3, #7
_08007772:
	adds r2, r5, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r5, #0
	adds r1, #0x6c
	orrs r1, r6
	adds r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	strh r1, [r0]
	adds r5, r2, #0
	cmp r5, #9
	bls _08007772
	movs r5, #0
	ldr r3, _0800792C
	ldr r2, _08007934
_08007792:
	adds r0, r5, #0
	adds r0, #0x16
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r1, #0x76
	orrs r1, r6
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08007792
	mov r0, sl
	ldr r1, _08007938
	movs r2, #0x10
	bl CpuSet
	ldr r5, _08007920
	ldrb r0, [r5]
	adds r0, #1
	lsls r0, r0, #5
	ldr r4, _0800793C
	adds r0, r0, r4
	ldr r1, _08007940
	ldr r6, _08007944
	adds r2, r6, #0
	bl CopyStringTilesToVRAMBuffer
	ldrb r0, [r5, #1]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08007948
	adds r2, r6, #0
	bl CopyStringTilesToVRAMBuffer
	ldrb r0, [r5, #2]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _0800794C
	adds r2, r6, #0
	bl CopyStringTilesToVRAMBuffer
	ldrb r0, [r5, #3]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08007950
	adds r2, r6, #0
	bl CopyStringTilesToVRAMBuffer
	ldrb r0, [r5, #4]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08007954
	adds r2, r6, #0
	bl CopyStringTilesToVRAMBuffer
	ldrb r0, [r5, #5]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08007958
	adds r2, r6, #0
	bl CopyStringTilesToVRAMBuffer
	ldrb r0, [r5, #6]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _0800795C
	adds r2, r6, #0
	bl CopyStringTilesToVRAMBuffer
	ldrb r0, [r5, #7]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08007960
	adds r2, r6, #0
	bl CopyStringTilesToVRAMBuffer
	ldrb r0, [r5, #8]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08007964
	adds r2, r6, #0
	bl CopyStringTilesToVRAMBuffer
	ldrb r0, [r5, #9]
	adds r0, #1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08007968
	adds r2, r6, #0
	bl CopyStringTilesToVRAMBuffer
	movs r0, #0xec
	lsls r0, r0, #4
	adds r0, r0, r4
	mov r8, r0
	ldr r1, _0800796C
	adds r2, r6, #0
	bl CopyStringTilesToVRAMBuffer
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _08007970
	adds r2, r6, #0
	bl CopyStringTilesToVRAMBuffer
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r1, _08007974
	ldr r5, _08007978
	adds r2, r5, #0
	bl CopyStringTilesToVRAMBuffer
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r4, r3
	ldr r1, _0800797C
	adds r2, r5, #0
	bl CopyStringTilesToVRAMBuffer
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, _08007980
	adds r2, r5, #0
	bl CopyStringTilesToVRAMBuffer
	movs r2, #0x90
	lsls r2, r2, #4
	adds r0, r4, r2
	ldr r1, _08007984
	adds r2, r5, #0
	bl CopyStringTilesToVRAMBuffer
	movs r3, #0xb8
	lsls r3, r3, #4
	adds r0, r4, r3
	ldr r1, _08007988
	ldr r1, [r1]
	adds r2, r6, #0
	bl CopyStringTilesToVRAMBuffer
	movs r0, #0xd8
	lsls r0, r0, #4
	adds r4, r4, r0
	ldr r1, _0800798C
	adds r0, r4, #0
	adds r2, r5, #0
	bl CopyStringTilesToVRAMBuffer
	ldr r1, _08007990
	mov r0, r8
	adds r2, r5, #0
	bl CopyStringTilesToVRAMBuffer
	ldr r0, _08007994
	bl SetVBlankCallback
	bl sub_80079C4
	bl sub_8007AB8
	bl sub_8007BB0
	bl sub_8007CA0
	bl LoadCharblock3
	bl LoadPalettes
	ldr r0, _08007998
	bl SetVBlankCallback
	bl WaitForVBlank
	ldr r4, _0800799C
	movs r5, #2
	b _080079A4
	.align 2, 0
_08007914: .4byte gUnk_8088778
_08007918: .4byte 0x0200FC00
_0800791C: .4byte 0xFFFF0800
_08007920: .4byte g8DF811C
_08007924: .4byte gUnk_8088288
_08007928: .4byte 0x00007C20
_0800792C: .4byte 0x02000400
_08007930: .4byte 0x00007C40
_08007934: .4byte 0x00007E40
_08007938: .4byte 0x02000000
_0800793C: .4byte 0x0200C400
_08007940: .4byte gUnk_8088C28
_08007944: .4byte 0x00000901
_08007948: .4byte gUnk_8088C2C
_0800794C: .4byte gUnk_8088C30
_08007950: .4byte gUnk_8088C34
_08007954: .4byte gUnk_8088C38
_08007958: .4byte gUnk_8088C3C
_0800795C: .4byte gUnk_8088C40
_08007960: .4byte gUnk_8088C44
_08007964: .4byte gUnk_8088C48
_08007968: .4byte gUnk_8088C4C
_0800796C: .4byte gUnk_8088C50
_08007970: .4byte gUnk_8088C54
_08007974: .4byte gUnk_8088C58
_08007978: .4byte 0x00000801
_0800797C: .4byte gUnk_8088C90
_08007980: .4byte gUnk_8088D14
_08007984: .4byte gUnk_8088D9C
_08007988: .4byte gUnk_8E0CD14
_0800798C: .4byte gUnk_8088DCC
_08007990: .4byte gUnk_8088E14
_08007994: .4byte sub_8007EA8
_08007998: .4byte sub_8007DE4
_0800799C: .4byte gNewButtons
_080079A0:
	bl WaitForVBlank
_080079A4:
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080079A0
	movs r0, #0x38
	bl PlayMusic
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80079C4
sub_80079C4: @ 0x080079C4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r4, #0
	ldr r1, _08007A30
	mov r0, sp
	movs r2, #8
	bl memcpy
	movs r5, #0
	ldr r6, _08007A34
	ldr r7, _08007A38
_080079DA:
	ldr r0, _08007A3C
	ldr r2, [r0, #4]
	lsls r0, r5, #1
	mov r3, sp
	adds r1, r3, r0
	ldrh r0, [r2]
	ldrh r1, [r1]
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08007A44
	adds r2, r5, #3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0xfa
	lsls r1, r1, #7
	adds r3, r2, r1
	lsls r3, r3, #1
	adds r3, r3, r6
	adds r4, r0, r7
	ldrb r0, [r4]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r3, _08007A40
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r4]
	adds r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r4, #1
	b _08007AA0
	.align 2, 0
_08007A30: .4byte gUnk_8088E5A
_08007A34: .4byte 0x02000400
_08007A38: .4byte g8DF811C
_08007A3C: .4byte gUnk_8E0CD14
_08007A40: .4byte 0x00007D20
_08007A44:
	cmp r4, #1
	bne _08007A74
	adds r2, r5, #3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xfa
	lsls r0, r0, #7
	adds r3, r2, r0
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08007A70
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7]
	b _08007A98
	.align 2, 0
_08007A70: .4byte 0x00007D20
_08007A74:
	adds r2, r5, #3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xfa
	lsls r0, r0, #7
	adds r3, r2, r0
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7, #0xa]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08007AB4
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7, #0xa]
_08007A98:
	adds r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
_08007AA0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080079DA
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007AB4: .4byte 0x00007D20

	THUMB_FUNC_START sub_8007AB8
sub_8007AB8: @ 0x08007AB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	movs r4, #0
	ldr r1, _08007B28
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	movs r5, #0
	ldr r6, _08007B2C
	ldr r7, _08007B30
_08007ACE:
	ldr r0, _08007B34
	ldr r2, [r0, #8]
	lsls r0, r5, #1
	mov r3, sp
	adds r1, r3, r0
	ldrh r0, [r2]
	ldrh r1, [r1]
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08007B3C
	adds r2, r5, #0
	adds r2, #0xe
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r1, _08007B38
	adds r3, r2, r1
	lsls r3, r3, #1
	adds r3, r3, r6
	adds r4, r0, r7
	ldrb r0, [r4]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	movs r3, #0xf9
	lsls r3, r3, #7
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r4]
	adds r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r4, #1
	b _08007B9A
	.align 2, 0
_08007B28: .4byte gUnk_8088E62
_08007B2C: .4byte 0x02000400
_08007B30: .4byte g8DF811C
_08007B34: .4byte gUnk_8E0CD14
_08007B38: .4byte 0x00007C60
_08007B3C:
	cmp r4, #1
	bne _08007B6C
	adds r2, r5, #0
	adds r2, #0xe
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08007B68
	adds r3, r2, r0
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	movs r1, #0xf9
	lsls r1, r1, #7
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7]
	b _08007B92
	.align 2, 0
_08007B68: .4byte 0x00007C60
_08007B6C:
	adds r2, r5, #0
	adds r2, #0xe
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08007BAC
	adds r3, r2, r0
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7, #0xa]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	movs r1, #0xf9
	lsls r1, r1, #7
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7, #0xa]
_08007B92:
	adds r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
_08007B9A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08007ACE
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007BAC: .4byte 0x00007C60

	THUMB_FUNC_START sub_8007BB0
sub_8007BB0: @ 0x08007BB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	movs r4, #0
	ldr r1, _08007C18
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	movs r5, #0
	ldr r6, _08007C1C
	ldr r7, _08007C20
_08007BC6:
	ldr r2, _08007C24
	lsls r0, r5, #1
	add r0, sp
	ldrh r1, [r0]
	ldr r0, [r2]
	bl __udivsi3
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08007C2C
	adds r2, r5, #0
	adds r2, #0xe
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0xfa
	lsls r1, r1, #7
	adds r3, r2, r1
	lsls r3, r3, #1
	adds r3, r3, r6
	adds r4, r0, r7
	ldrb r0, [r4]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _08007C28
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r4]
	adds r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r4, #1
	b _08007C8A
	.align 2, 0
_08007C18: .4byte gUnk_8088E62
_08007C1C: .4byte 0x02000400
_08007C20: .4byte g8DF811C
_08007C24: .4byte gLifePointsOutsideDuel
_08007C28: .4byte 0x00007D20
_08007C2C:
	cmp r4, #1
	bne _08007C5C
	adds r2, r5, #0
	adds r2, #0xe
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0xfa
	lsls r1, r1, #7
	adds r3, r2, r1
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _08007C58
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7]
	b _08007C82
	.align 2, 0
_08007C58: .4byte 0x00007D20
_08007C5C:
	adds r2, r5, #0
	adds r2, #0xe
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0xfa
	lsls r1, r1, #7
	adds r3, r2, r1
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7, #0xa]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _08007C9C
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7, #0xa]
_08007C82:
	adds r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
_08007C8A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08007BC6
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007C9C: .4byte 0x00007D20

	THUMB_FUNC_START sub_8007CA0
sub_8007CA0: @ 0x08007CA0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x68
	movs r4, #0
	ldr r1, _08007D20
	mov r0, sp
	movs r2, #0x68
	bl memcpy
	movs r5, #0
	ldr r6, _08007D24
	ldr r7, _08007D28
	movs r0, #0x14
	mov sb, r0
	ldr r1, _08007D2C
	adds r1, r1, r6
	mov r8, r1
_08007CC6:
	ldr r0, _08007D30
	ldr r1, [r0, #0x18]
	lsls r0, r5, #3
	mov r3, sp
	adds r2, r3, r0
	ldr r0, [r1]
	ldr r1, [r1, #4]
	ldr r3, [r2, #4]
	ldr r2, [r2]
	bl __udivdi3
	movs r2, #0xa
	movs r3, #0
	bl __umoddi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08007D3C
	adds r2, r5, #0
	adds r2, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r1, _08007D34
	adds r3, r2, r1
	lsls r3, r3, #1
	adds r3, r3, r6
	adds r4, r0, r7
	ldrb r0, [r4]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r3, _08007D38
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r4]
	adds r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r4, #1
	b _08007DC0
	.align 2, 0
_08007D20: .4byte gUnk_8088E6C
_08007D24: .4byte 0x02000400
_08007D28: .4byte g8DF811C
_08007D2C: .4byte 0x0000FCA8
_08007D30: .4byte gUnk_8E0CD14
_08007D34: .4byte 0x00007E20
_08007D38: .4byte 0x00007E40
_08007D3C:
	cmp r4, #1
	bne _08007D70
	adds r2, r5, #0
	adds r2, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08007D68
	adds r3, r2, r0
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08007D6C
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7]
	b _08007DB8
	.align 2, 0
_08007D68: .4byte 0x00007E20
_08007D6C: .4byte 0x00007E40
_08007D70:
	cmp r5, #0xc
	bne _08007D94
	ldr r2, _08007D90
	add r2, sb
	lsls r2, r2, #1
	adds r2, r6, r2
	ldrb r0, [r7]
	adds r0, #1
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r7]
	adds r0, #3
	mov r2, r8
	b _08007DBA
	.align 2, 0
_08007D90: .4byte 0x00007E20
_08007D94:
	adds r2, r5, #0
	adds r2, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08007DDC
	adds r3, r2, r0
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r0, [r7, #0xa]
	adds r0, #1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08007DE0
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrb r0, [r7, #0xa]
_08007DB8:
	adds r0, #3
_08007DBA:
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
_08007DC0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xc
	bhi _08007DCC
	b _08007CC6
_08007DCC:
	add sp, #0x68
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007DDC: .4byte 0x00007E20
_08007DE0: .4byte 0x00007E40

	THUMB_FUNC_START sub_8007DE4
sub_8007DE4: @ 0x08007DE4
	push {r4, lr}
	ldr r1, _08007E6C
	ldr r2, _08007E70
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08007E74
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08007E78
	movs r1, #1
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	ldr r0, _08007E7C
	movs r4, #8
	strh r4, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xd8
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08007E80
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08007E84
	strh r1, [r0]
	ldr r0, _08007E88
	strh r1, [r0]
	ldr r0, _08007E8C
	strh r1, [r0]
	bl LoadBgOffsets
	ldr r1, _08007E90
	ldr r2, _08007E94
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	subs r2, #0x78
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #2
	adds r2, #0xa0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08007E98
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08007E9C
	movs r1, #0x2c
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r4, [r0]
	ldr r1, _08007EA0
	movs r0, #0xe8
	strh r0, [r1]
	ldr r1, _08007EA4
	movs r0, #6
	strh r0, [r1]
	bl LoadBlendingRegs
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007E6C: .4byte 0x0400000C
_08007E70: .4byte 0x00001F0E
_08007E74: .4byte 0x00001E03
_08007E78: .4byte 0x04000208
_08007E7C: .4byte 0x04000004
_08007E80: .4byte gBG2HOFS
_08007E84: .4byte gBG2VOFS
_08007E88: .4byte gBG3HOFS
_08007E8C: .4byte gBG3VOFS
_08007E90: .4byte 0x04000040
_08007E94: .4byte 0x000008C7
_08007E98: .4byte 0x00007F97
_08007E9C: .4byte 0x04000048
_08007EA0: .4byte gBLDCNT
_08007EA4: .4byte gBLDY

	THUMB_FUNC_START sub_8007EA8
sub_8007EA8: @ 0x08007EA8
	push {r4, lr}
	ldr r1, _08007F30
	ldr r2, _08007F34
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08007F38
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08007F3C
	movs r1, #1
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	ldr r0, _08007F40
	movs r4, #8
	strh r4, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xd8
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08007F44
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08007F48
	strh r1, [r0]
	ldr r0, _08007F4C
	strh r1, [r0]
	ldr r0, _08007F50
	strh r1, [r0]
	bl LoadBgOffsets
	ldr r1, _08007F54
	ldr r2, _08007F58
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	subs r2, #0x78
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #2
	adds r2, #0xa0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08007F5C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08007F60
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	ldr r1, _08007F64
	movs r0, #0xe8
	strh r0, [r1]
	ldr r1, _08007F68
	movs r0, #6
	strh r0, [r1]
	bl LoadBlendingRegs
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007F30: .4byte 0x0400000C
_08007F34: .4byte 0x00001F0E
_08007F38: .4byte 0x00001E03
_08007F3C: .4byte 0x04000208
_08007F40: .4byte 0x04000004
_08007F44: .4byte gBG2HOFS
_08007F48: .4byte gBG2VOFS
_08007F4C: .4byte gBG3HOFS
_08007F50: .4byte gBG3VOFS
_08007F54: .4byte 0x04000040
_08007F58: .4byte 0x000008C7
_08007F5C: .4byte 0x00007F97
_08007F60: .4byte 0x04000048
_08007F64: .4byte gBLDCNT
_08007F68: .4byte gBLDY

  .align 2, 0
