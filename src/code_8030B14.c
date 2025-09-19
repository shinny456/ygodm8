#include "global.h"

//link_duel.c
u32 sub_80327B8 (void);
void sub_803281C (void);
void sub_8032830 (void);


void sub_8030B14 (void) {
  if (sub_80327B8() == 1)
    g3000C38.unk34 = 0xFF;
  switch (g3000C38.unk34) {
    default:
      g3000C38.unk34 = 6;
      g3000C38.unk24 = 0x14FE;
      sub_803281C();
      break;
    case 0:
      sub_8032830();
      if (g3000C38.unk4 >= g3000C38.unk0) {
        g3000C38.unk24 = 0x14FD;
        sub_803281C();
      }
      else if (g3000C38.unk1C != 0x24FD) {
        g3000C38.unk34 = 6;
        g3000C38.unk24 = 0x14FE;
        sub_803281C();
      }
      else {
        g3000C38.unk4++;
        g3000C38.unk14++;
        g3000C38.unk24 = *g3000C38.unk14 | 0x1300;
        sub_803281C();
      }
      break;
  }
}

void sub_8030B8C (void) {
  if (sub_80327B8() == 1)
    g3000C38.unk34 = 0xFF;
  switch (g3000C38.unk34) {
    default:
      g3000C38.unk34 = 5;
      g3000C38.unk24 = 0x14FE;
      sub_803281C();
      break;
    case 0:
      sub_8032830();
      if (g3000C38.unk4 >= g3000C38.unk0) {
        g3000C38.unk24 = 0x14FD;
        sub_803281C();
      }
      else if ((g3000C38.unk1C & 0xFF00) != 0x2300) {
        g3000C38.unk34 = 5;
        g3000C38.unk24 = 0x14FE;
        sub_803281C();
      }
      else {
        g3000C38.unk26 += *g3000C38.unk18 = g3000C38.unk1C;
        g3000C38.unk4++;
        g3000C38.unk18++;
        g3000C38.unk24 = 0x14FD;
        sub_803281C();
      }
      break;
  }
}
/*
void sub_8030C14 (void) {
  if (REG_SIOCNT & 0x40 == 1)
    g3000C38.unk34 = 0xFF;
  switch (g3000C38.unk34) {
    default:
      g3000C38.unk34 = 6;
      g3000C38.unk24 = 0x14FE;
      REG_SIOMLT_SEND = 0x14FE; //sub_803281C inline?();
      break;
    case 0:
      // sub_8032830() inline;
      REG_SIOMLT_RECV;
      if (g3000C38.unk4 >= g3000C38.unk0) {
        g3000C38.unk24 = 0x14FD;
        // sub_803281C() inline;
      }
      else if (g3000C38.unk1C != 0x24FD) {
        g3000C38.unk34 = 6;
        g3000C38.unk24 = 0x14FE;
        // sub_803281C() inline;
      }
      else {
        g3000C38.unk4++;
        g3000C38.unk14++;
        g3000C38.unk24 = *g3000C38.unk14 | 0x1300;
        // sub_803281C() inline;
      }
      break;
  }
}*/

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
