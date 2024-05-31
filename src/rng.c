#include "global.h"

extern u32 g2024594;
extern u32 g2024598;
u8 sub_8056230 (void);

u16 sub_80561B4 (void) {
  u8 r4 = 0, i;
  u16 r6;
  for (i = 0; i < 8; i++) {
    r4 <<= 1;
    r4 |= sub_8056230();
  }
  r6 = r4;
  r4 = 0;
  for (i = 0; i < 8; i++) {
    r4 <<= 1;
    r4 |= sub_8056230();
  }
  r6 <<= 8;
  return r6 | r4;
}

void sub_80561FC (void) {
  g2024594 = 1;
}

u8 sub_8056208 (void) {
  u8 r4 = 0, i;
  for (i = 0; i < 8; i++) {
    r4 <<= 1;
    r4 |= sub_8056230();
  }
  return r4;
}

u8 sub_8056230 (void) {
  if (g2024594 & 0x80000000) {
    g2024594 = (g2024594 ^ 0x10000) << 1 | 1;
    return 1;
  }
  g2024594 <<= 1;
  return 0;
}
/*
int sub_8056258 (u8 arg0, u8 arg1) {
  u8 r4, i;
  int r7;
  if (arg0 == arg1)
    return arg0;
  r4 = 0;
  i = 0;
  r7 = arg1 - arg0;
  for (; i < 8; i++) {
    r4 <<= 1;
    r4 |= sub_8056230();
  }
  return (u8)(r4 % (r7 + 1) + arg0);
}*/

NAKED
int sub_8056258 (u8 arg0, u8 arg1) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	lsls r1, r1, #0x18\n\
	lsrs r1, r1, #0x18\n\
	cmp r6, r1\n\
	bne _0805626A\n\
	adds r0, r6, #0\n\
	b _08056296\n\
_0805626A:\n\
	movs r4, #0\n\
	movs r5, #0\n\
	subs r7, r1, r6\n\
_08056270:\n\
	lsls r0, r4, #0x19\n\
	lsrs r4, r0, #0x18\n\
	bl sub_8056230\n\
	orrs r4, r0\n\
	lsls r0, r4, #0x18\n\
	lsrs r4, r0, #0x18\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #7\n\
	bls _08056270\n\
	adds r0, r4, #0\n\
	adds r1, r7, #1\n\
	bl __modsi3\n\
	adds r0, r6, r0\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
_08056296:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1");
}

u16 sub_805629C (u16 arg0, u16 arg1) {
  arg0 += sub_80561B4() % (arg1 - arg0 + 1);
  return arg0;
}

void sub_80562CC (u32 arg0) {
  g2024598 = g2024594;
  g2024594 = arg0;
}

void sub_80562E0 (void) {
  g2024594 = g2024598;
}
