// This file is part of card_passwords.c, but will fix inlines later
#include "global.h"

struct Unk2024510
{
    u16 cardId;
    u8 unk2;
    u8 unk3[8];
};

extern struct Unk2024510 g2024510;
extern u8 g2024520[];
extern u8 g2024588[];
extern u8 g202458C[];
extern u8 g2024590;

u16 sub_803F04C (u8);
void sub_8008220 (void);

extern u16 gKeyState;

void sub_8055F8C (void) {
  u8 i = 0;
  for (i = 0; i < 101; i++)
    g2024520[i] = 0;
}

void sub_8055FA8 (u16 arg0) {
  g2024520[arg0 >> 3] |= sub_803F04C(arg0 & 7);
}

void sub_8055FD0 (void) {
  u8 i = 0;
  for (i = 0; i < 2; i++)
    g202458C[i] = 0;
}

void sub_8055FEC (u16 arg0) {
  g202458C[arg0 >> 3] |= sub_803F04C(arg0 & 7);
}

NAKED
u32 sub_8056014 (u16 arg0) {
  asm_unified("push {r4, lr}\n\
	lsls r4, r0, #0x10\n\
	lsrs r1, r4, #0x10\n\
	cmp r1, #9\n\
	bls _08056022\n\
	movs r0, #0\n\
	b _0805603A\n\
_08056022:\n\
	movs r0, #7\n\
	ands r0, r1\n\
	bl sub_803F04C\n\
	ldr r2, _08056040\n\
	lsrs r1, r4, #0x13\n\
	adds r1, r1, r2\n\
	ldrb r1, [r1]\n\
	ands r1, r0\n\
	rsbs r0, r1, #0\n\
	orrs r0, r1\n\
	lsrs r0, r0, #0x1f\n\
_0805603A:\n\
	pop {r4}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_08056040: .4byte 0x0202458C");
}
/*
u32 sub_8056014 (u16 arg0) {
  if (arg0 > 9)
    return 0;
}
*/

void sub_8056044 (void) {

}

void sub_8056048 (u16 arg0) {
  g2024588[arg0 >> 3] |= sub_803F04C(arg0 & 7);
}

/*
u32 sub_8056070 (u16 arg0) {
  if (arg0 > 7)
    return 0;
}
*/

NAKED
u32 sub_8056070 (u16 arg0) {
  asm_unified("push {r4, lr}\n\
	lsls r4, r0, #0x10\n\
	lsrs r1, r4, #0x10\n\
	cmp r1, #7\n\
	bls _0805607E\n\
	movs r0, #0\n\
	b _08056096\n\
_0805607E:\n\
	movs r0, #7\n\
	ands r0, r1\n\
	bl sub_803F04C\n\
	ldr r2, _0805609C\n\
	lsrs r1, r4, #0x13\n\
	adds r1, r1, r2\n\
	ldrb r1, [r1]\n\
	ands r1, r0\n\
	rsbs r0, r1, #0\n\
	orrs r0, r1\n\
	lsrs r0, r0, #0x1f\n\
_08056096:\n\
	pop {r4}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0805609C: .4byte 0x02024588");
}

u32 sub_80560A0 (void) {
  u32 ret, r6 = 0;
  while (!r6) {
    switch (gKeyState) {
      case 0x40:
        g2024510.unk3[g2024590] = 255;
        g2024510.unk3[g2024590]++;
        break;
      case 0x80:
        g2024510.unk3[g2024590] = 10;
        g2024510.unk3[g2024590]--;
        break;
      case 0x20:
        if (g2024590)
          g2024590--;
        break;
      case 0x10:
        if (g2024590 != 7)
          g2024590++;
        break;
      case 1:
        r6 = 1;
        ret = 1;
        break;
      case 2:
        r6 = 1;
        ret = 0;
        break;
    }
    sub_8008220();
  }
  return ret;
}

void sub_8056144 (void) {
  g2024510.unk3[g2024590] = 255;
  g2024510.unk3[g2024590]++;
}

void sub_8056168 (void) {
  g2024510.unk3[g2024590] = 10;
  g2024510.unk3[g2024590]--;
}

void sub_805618C (void) {
  if (g2024590)
    g2024590--;
}

void sub_80561A0 (void) {
  if (g2024590 != 7)
    g2024590++;
}
