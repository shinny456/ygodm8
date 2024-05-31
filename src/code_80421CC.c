#include "global.h"
#include "duel.h"
#include "card.h"
#include "constants/card_ids.h"
#include "gba/syscall.h"
#include "gba/io_reg.h"
#include "gba/macro.h"

extern u8 g8E0D81D[];
extern u8 g8E0D820[];
extern u8 g8E0D823[];
extern u8 g8E0D81A[];

extern u16 g2020DF4;
extern u8 g20240E0;

void InitBMenu (u8);
void sub_80428EC (u8);
void sub_8041014 (void);
u32 sub_8044074 (u8 y, u8 x);

extern u16 gUnk2020DFC;
void sub_80410B4 (void);
void sub_8041104 (void);
void sub_8029820 (void);
u8* sub_8020824(u8*);


extern u16 g80F13D0[][30];
extern u8 g80F30E0[];
extern u8 g8DF811C[];
extern u8 g8E0D668[];
extern u8 g8E0D753[];

void sub_8020A3C(void *, void *, u16);
u16 sub_08007FEC(u8, u8, u16);
void sub_800800C(u8, u8, u16, u16);
s32 sub_8043E9C(u8);


void sub_80421CC (void) {
  u8 r4 = 0;
  InitBMenu(0);
  while (1) {
    if (g2020DF4 & 0x40) {
      PlayMusic(0x36);
      r4 = g8E0D81A[r4];
      sub_80428EC(r4);
      sub_8008220();
      sub_8041014();
    }
    else if (g2020DF4 & 0x80) {
      PlayMusic(0x36);
      r4 = g8E0D81D[r4];
      sub_80428EC(r4);
      sub_8008220();
      sub_8041014();
    }
    else if (g2020DF4 & 0x10) {
      PlayMusic(0x36);
      r4 = g8E0D820[r4];
      sub_80428EC(r4);
      sub_8008220();
      sub_8041014();
    }
    else if (g2020DF4 & 0x20) {
      PlayMusic(0x36);
      r4 = g8E0D823[r4];
      sub_80428EC(r4);
      sub_8008220();
      sub_8041014();
    }
    else if (gUnk2020DFC & 1) {
      switch (r4) {
        case 0:
          if (sub_8044074(gCursorPosition.currentY, gCursorPosition.currentX) == 1
          && sub_803FCBC(gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->id)) {
            PlayMusic(0x37);
            gStatMod.card = gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->id;
            gStatMod.field = gDuel.field;
            gStatMod.stage = sub_804069C(gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]);
            SetFinalStat(&gStatMod);
            sub_801F6B0();
            sub_80410B4();
          }
          else {
            PlayMusic(0x39);
            sub_8041104();
          }
          return;
        case 1:
          PlayMusic(0x37);
          g20240E0 = 1;
          sub_8041104();
          return;
        case 2:
          if (gCursorPosition.currentY > 1 &&
              gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->id != CARD_NONE &&
              !gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->willChangeSides)
            {
              PlayMusic(0x3E);
              sub_8045314(gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX], 0);
              sub_8041104();
              sub_8029820();
            }
          else {
            PlayMusic(0x39);
            sub_8041104();
          }
          return;
      }
      break;
    }
    else if (gUnk2020DFC & 2) {
      PlayMusic(0x38);
      break;
    }
    else {
      sub_8008220();
    }
  }
  sub_8041104();
}
/*
void InitBMenu (u8 arg0) {
  u16 r0;
  u8 i, r4, r4two;
  u16 sb, r8;
  u8* name;
  u8 buffer[44];
  for (i = 0; i < 18; i++)
    CpuCopy32(g80F13D0[i], gBgVram.cbb0 + 0xE800 + i * 64, 64);
  CpuCopy16(g80F30E0, gBgVram.cbb0 + 0x87A0, 128);
  sub_8020A3C(gBgVram.cbb0 + 0x8820, g8E0D668, 0x801);
  sub_8020A3C(gBgVram.cbb0 + 0x8B00, g8E0D753, 0x901);

  sb = sub_08007FEC(0, 0, 0xE800);
  r8 = sub_08007FEC(20, 1, 0xE800) & 0xFF00;

  for (i = 0; i < 4; i++) {
    sub_800800C(i + 4, 6, 0xE800, i + 78 | r8);
    sub_800800C(i + 4, 12, 0xE800, i + 78 | r8);
  }
  sub_800800C(8, 6, 0xE800, sb);
  sub_800800C(8, 12, 0xE800, sb);
  for (i = 0; i < 6; i++) {
    sub_800800C(i + 11, 6, 0xE800, i + 82 | r8);
    sub_800800C(i + 11, 12, 0xE800, i + 82 | r8);
  }
  for (i = 0; i < 10; i++) {
    sub_800800C(i + 5, 1, 0xE800, g8DF811C[i] + 88 | r8);
    sub_800800C(i + 5, 2, 0xE800, g8DF811C[i] + 90 | r8);
    sub_800800C(i + 5, 3, 0xE800, g8DF811C[i] + 108 | r8);
    sub_800800C(i + 5, 4, 0xE800, g8DF811C[i] + 110 | r8);
  }
  for (i = 0; i < 2; i++) {
    sub_800800C(i + 15, 3, 0xE800, sb);
    sub_800800C(i + 15, 4, 0xE800, sb);
  }
  for (i = 0; i < 10; i++) {
    sub_800800C(i + 17, 1, 0xE800, g8DF811C[i] + 128 | r8);
    sub_800800C(i + 17, 2, 0xE800, g8DF811C[i] + 130 | r8);
  }
  for (i = 0; i < 20; i++) {
    sub_800800C(i + 5, 9, 0xE800, g8DF811C[i] + 148 | r8);
    sub_800800C(i + 5, 10, 0xE800, g8DF811C[i] + 150 | r8);
    sub_800800C(i + 5, 15, 0xE800, g8DF811C[i] + 188 | r8);
    sub_800800C(i + 5, 16, 0xE800, g8DF811C[i] + 190 | r8);
  }

  SetCardInfo(gDuel.notSure[0].graveyard);
  i = 0;
  r4 = 0;
  name = sub_8020824(gCardInfo.name);
  while (r4 < 20 && *name && *name != '$') {
    if (*name > 127) {
      buffer[i] = *name;
      i++;
      name++;
    }
    buffer[i] = *name;
    i++;
    name++;
    r4++;
  }
  for (; r4 < 20; r4++) {
    buffer[i] = 129;
    buffer[i + 1] = 64;
    i += 2;
  }
  buffer[i] = 0;
  sub_8020A3C(gBgVram.cbb0 + 0x9780, buffer, 0x901);

  SetCardInfo(gDuel.notSure[1].graveyard);
  i = 0, r4 = 0, name = sub_8020824(gCardInfo.name);
  while (r4 < 20 && *name && *name != '$') {
    if (*name > 127) {
      buffer[i] = *name;
      i++;
      name++;
    }
    buffer[i] = *name;
    i++;
    name++;
    r4++;
  }
  for (; r4 < 20; r4++) {
    buffer[i] = 129;
    buffer[i + 1] = 64;
    i += 2;
  }
  buffer[i] = 0;
  sub_8020A3C(gBgVram.cbb0 + 0x9280, buffer, 0x901);

  sub_800DDA0(gLifePoints[0], 0);
  for (i = 0; i < 5; i++) {
    *(u16*)(gBgVram.cbb0 + (0x75AC - i) * 2) = g2021BD0[4 - i] + 65 | 0x3000;
  }
  sub_800DDA0(gLifePoints[1], 0);
  for (i = 0; i < 5; i++) {
    *(u16*)(gBgVram.cbb0 + (0x74EC - i) * 2) = g2021BD0[4 - i] + 65 | 0x3000;
  }
  r4two = sub_8043E9C(0);
  r0 = (u8)sub_8043E70(0);
  if (r0 >= r4two)
    r0 -= r4two;
  else
    r0 = 0;
  sub_800DDA0(r0, 0);

  for (i = 0; i < 2; i++)
    *(u16*)(gBgVram.cbb0 + (0x758A - i) * 2) = g2021BD0[4 - i] + 65 | 0x3000;

  r4two = sub_8043E9C(1);
  r0 = (u8)sub_8043E70(1);
  if (r0 >= r4two)
    r0 -= r4two;
  else
    r0 = 0;
  sub_800DDA0(r0, 0);
  for (i = 0; i < 2; i++)
    *(u16*)(gBgVram.cbb0 + (0x74CA - i) * 2) = g2021BD0[4 - i] + 65 | 0x3000;
  sub_80428EC(arg0);
  sub_8008220();
  sub_8041014();
  REG_DISPCNT = 0x7600;
  REG_WIN1H = 0xF0;
  REG_WIN1V = 0x98;
  (*(vu8 *)(REG_BASE + 0x49)) = 0x36;
  REG_BLDY = 7;
  REG_WINOUT = 31;
}*/
