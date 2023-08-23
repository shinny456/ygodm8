#include "global.h"
#include "duel.h"
#include "gba/io_reg.h"

u32 sub_80327B8 (void);
void sub_803281C (void);
void sub_8032830 (void);

/*
void sub_8030B14 (void) {
  if (sub_80327B8() == 1)
    g3000C38.unk34 = 0xFF;
  if (g3000C38.unk34 == 0) {
    sub_8032830();
    if (g3000C38.unk4 >= g3000C38.unk0) {
      g3000C38.unk24 = 0x14FD;
      sub_803281C();
      return;
    }
    if (g3000C38.unk1C != 0x24FD) {
      a:
      g3000C38.unk34 = 6;
      g3000C38.unk24 = 0x14FE;
      sub_803281C();
      return;
    }
    g3000C38.unk4++;
    g3000C38.unk14++;
    g3000C38.unk24 = *g3000C38.unk14 | 0x1300;
    sub_803281C();
  }
  else
    goto a;
}
*/

NAKED
void sub_8030B14 (void) {
  asm_unified("push {r4, r5, lr}\n\
	bl sub_80327B8\n\
	cmp r0, #1\n\
	bne _08030B26\n\
	ldr r0, _08030B44 @ =0x03000C38\n\
	adds r0, #0x34\n\
	movs r1, #0xff\n\
	strb r1, [r0]\n\
_08030B26:\n\
	ldr r4, _08030B44 @ =0x03000C38\n\
	adds r5, r4, #0\n\
	adds r5, #0x34\n\
	ldrb r0, [r5]\n\
	cmp r0, #0\n\
	bne _08030B54\n\
	bl sub_8032830\n\
	ldr r2, [r4, #4]\n\
	ldr r0, [r4]\n\
	cmp r2, r0\n\
	blo _08030B4C\n\
	ldr r0, _08030B48 @ =0x000014FD\n\
	b _08030B5A\n\
	.align 2, 0\n\
_08030B44: .4byte 0x03000C38\n\
_08030B48: .4byte 0x000014FD\n\
_08030B4C:\n\
	ldrh r1, [r4, #0x1c]\n\
	ldr r0, _08030B64 @ =0x000024FD\n\
	cmp r1, r0\n\
	beq _08030B6C\n\
_08030B54:\n\
	movs r0, #6\n\
	strb r0, [r5]\n\
	ldr r0, _08030B68 @ =0x000014FE\n\
_08030B5A:\n\
	strh r0, [r4, #0x24]\n\
	bl sub_803281C\n\
	b _08030B86\n\
	.align 2, 0\n\
_08030B64: .4byte 0x000024FD\n\
_08030B68: .4byte 0x000014FE\n\
_08030B6C:\n\
	adds r0, r2, #1\n\
	str r0, [r4, #4]\n\
	ldr r1, [r4, #0x14]\n\
	adds r0, r1, #1\n\
	str r0, [r4, #0x14]\n\
	ldrb r0, [r1, #1]\n\
	movs r2, #0x98\n\
	lsls r2, r2, #5\n\
	adds r1, r2, #0\n\
	orrs r0, r1\n\
	strh r0, [r4, #0x24]\n\
	bl sub_803281C\n\
_08030B86:\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0");
}

NAKED
void sub_8030B8C (void) {
  asm_unified("push {r4, r5, lr}\n\
	bl sub_80327B8\n\
	cmp r0, #1\n\
	bne _08030B9E\n\
	ldr r0, _08030BBC @ =0x03000C38\n\
	adds r0, #0x34\n\
	movs r1, #0xff\n\
	strb r1, [r0]\n\
_08030B9E:\n\
	ldr r4, _08030BBC @ =0x03000C38\n\
	adds r5, r4, #0\n\
	adds r5, #0x34\n\
	ldrb r0, [r5]\n\
	cmp r0, #0\n\
	bne _08030BD4\n\
	bl sub_8032830\n\
	ldr r1, [r4, #4]\n\
	ldr r0, [r4]\n\
	cmp r1, r0\n\
	blo _08030BC4\n\
	ldr r0, _08030BC0 @ =0x000014FD\n\
	b _08030BDA\n\
	.align 2, 0\n\
_08030BBC: .4byte 0x03000C38\n\
_08030BC0: .4byte 0x000014FD\n\
_08030BC4:\n\
	ldrh r2, [r4, #0x1c]\n\
	movs r0, #0xff\n\
	lsls r0, r0, #8\n\
	ands r0, r2\n\
	movs r1, #0x8c\n\
	lsls r1, r1, #6\n\
	cmp r0, r1\n\
	beq _08030BE8\n\
_08030BD4:\n\
	movs r0, #5\n\
	strb r0, [r5]\n\
	ldr r0, _08030BE4 @ =0x000014FE\n\
_08030BDA:\n\
	strh r0, [r4, #0x24]\n\
	bl sub_803281C\n\
	b _08030C0A\n\
	.align 2, 0\n\
_08030BE4: .4byte 0x000014FE\n\
_08030BE8:\n\
	ldr r0, [r4, #0x18]\n\
	strb r2, [r0]\n\
	lsls r0, r2, #0x18\n\
	lsrs r0, r0, #0x18\n\
	ldrh r1, [r4, #0x26]\n\
	adds r0, r0, r1\n\
	strh r0, [r4, #0x26]\n\
	ldr r0, [r4, #4]\n\
	adds r0, #1\n\
	str r0, [r4, #4]\n\
	ldr r0, [r4, #0x18]\n\
	adds r0, #1\n\
	str r0, [r4, #0x18]\n\
	ldr r0, _08030C10 @ =0x000014FD\n\
	strh r0, [r4, #0x24]\n\
	bl sub_803281C\n\
_08030C0A:\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08030C10: .4byte 0x000014FD");
}

NAKED
void sub_8030C14 (void) {
  asm_unified("push {r4, r5, lr}\n\
	ldr r0, _08030C50\n\
	ldrh r1, [r0]\n\
	movs r0, #0x40\n\
	ands r0, r1\n\
	ldr r5, _08030C54\n\
	cmp r0, #1\n\
	bne _08030C2C\n\
	adds r1, r5, #0\n\
	adds r1, #0x34\n\
	movs r0, #0xff\n\
	strb r0, [r1]\n\
_08030C2C:\n\
	adds r2, r5, #0\n\
	adds r4, r2, #0\n\
	adds r4, #0x34\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	bne _08030C68\n\
	ldr r0, _08030C58\n\
	ldr r1, [r0, #4]\n\
	ldr r0, [r0]\n\
	str r0, [r2, #0x1c]\n\
	str r1, [r2, #0x20]\n\
	ldr r3, [r2, #4]\n\
	ldr r0, [r2]\n\
	cmp r3, r0\n\
	blo _08030C60\n\
	ldr r1, _08030C5C\n\
	b _08030C6E\n\
	.align 2, 0\n\
_08030C50: .4byte 0x04000128\n\
_08030C54: .4byte 0x03000C38\n\
_08030C58: .4byte 0x04000120\n\
_08030C5C: .4byte 0x000014FD\n\
_08030C60:\n\
	ldrh r1, [r2, #0x1c]\n\
	ldr r0, _08030C78\n\
	cmp r1, r0\n\
	beq _08030C84\n\
_08030C68:\n\
	movs r0, #6\n\
	strb r0, [r4]\n\
	ldr r1, _08030C7C\n\
_08030C6E:\n\
	strh r1, [r2, #0x24]\n\
	ldr r0, _08030C80\n\
	strh r1, [r0]\n\
	b _08030C9E\n\
	.align 2, 0\n\
_08030C78: .4byte 0x000024FD\n\
_08030C7C: .4byte 0x000014FE\n\
_08030C80: .4byte 0x0400012A\n\
_08030C84:\n\
	adds r0, r3, #1\n\
	str r0, [r5, #4]\n\
	ldr r1, [r5, #0x14]\n\
	adds r0, r1, #1\n\
	str r0, [r5, #0x14]\n\
	ldrb r0, [r1, #1]\n\
	movs r2, #0x98\n\
	lsls r2, r2, #5\n\
	adds r1, r2, #0\n\
	orrs r0, r1\n\
	strh r0, [r5, #0x24]\n\
	ldr r1, _08030CA4\n\
	strh r0, [r1]\n\
_08030C9E:\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08030CA4: .4byte 0x0400012A");
}
/*
void sub_8030CA8 (void) {
  if (REG_SIOCNT & 0x40 == 1)
    g3000C38.unk34 = 0xFF;
  if (g3000C38.unk34) {
    g3000C38.unk34 = 5;
    g3000C38.unk24 = 0x14FE;
    REG_SIOMLT_SEND = 0x14FE;
  }
  else {
    
  }
  
}*/
