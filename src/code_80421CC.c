#include "global.h"
#include "duel.h"
#include "constants/card_ids.h"

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
