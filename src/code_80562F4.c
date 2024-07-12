#include "global.h"
#include "duel.h"

extern u16 g8E116BC[];
void sub_80573D0 (u8*, u16);
void sub_80576EC (u8*, u16);
void sub_80576B4 (u8*, u16);
void sub_8057718 (u8*, u16);
void sub_8057474 (u8*);
void sub_8057620 (u8*);
void sub_8057698 (u8*);
void sub_805763C (u8*, s8);
void sub_80572A8 (u8*, struct DuelCard*);
void sub_805733C (u8*, struct DuelCard*);

void sub_80562F4 (void) {
  unsigned char i;
  for (i = 0; i < 5; i++) {
    if (gDuelBoard[0][i]->isFaceUp)
      sub_80573D0(gBgVram.cbb0 + 0x10000 + g8E116BC[i] * 32, gDuelBoard[0][i]->id);
    else
      sub_8057474(gBgVram.cbb0 + 0x10000 + g8E116BC[i] * 32);
  }
  for (i = 0; i < 5; i++) {
    if (gDuelBoard[1][i]->isFaceUp) {
      sub_80573D0(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32, gDuelBoard[1][i]->id);
      sub_80576EC(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32, gDuelBoard[1][i]->id);
      sub_80576B4(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32, gDuelBoard[1][i]->id);
      sub_805763C(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32, sub_804069C(gDuelBoard[1][i]));
      sub_80572A8(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32, gDuelBoard[1][i]);
      sub_805733C(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32, gDuelBoard[1][i]);
    }
    else
      sub_8057474(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32);
    if (gDuelBoard[1][i]->isLocked)
      sub_8057620(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 5] * 32);
  }
  for (i = 0; i < 5; i++) {
    sub_80573D0(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32, gDuelBoard[2][i]->id);
    if (gDuelBoard[2][i]->isLocked)
      sub_8057620(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32);
    sub_80576B4(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32, gDuelBoard[2][i]->id);
    sub_80576EC(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32, gDuelBoard[2][i]->id);
    sub_805763C(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32, sub_804069C(gDuelBoard[2][i]));
    sub_80572A8(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32, gDuelBoard[2][i]);
    sub_805733C(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32, gDuelBoard[2][i]);
    if (!gDuelBoard[2][i]->isFaceUp)
      sub_8057698(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 10] * 32);
  }
  for (i = 0; i < 5; i++) {
    sub_80573D0(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 15] * 32, gDuelBoard[3][i]->id);
    sub_8057718(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 15] * 32, gDuelBoard[3][i]->id);
    if (!gDuelBoard[3][i]->isFaceUp)
      sub_8057698(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 15] * 32);
  }
  for (i = 0; i < 5; i++) {
    sub_80573D0(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 20] * 32, gDuelBoard[4][i]->id);
    sub_80576B4(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 20] * 32, gDuelBoard[4][i]->id);
    sub_80576EC(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 20] * 32, gDuelBoard[4][i]->id);
    sub_80572A8(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 20] * 32, gDuelBoard[4][i]);
    sub_805733C(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 20] * 32, gDuelBoard[4][i]);
    if (gDuelBoard[4][i]->isLocked)
      sub_8057620(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 20] * 32);
    if (!gDuelBoard[4][i]->isFaceUp)
      sub_8057698(gBgVram.cbb0 + 0x10000 + g8E116BC[i + 20] * 32);
  }
}
/*
void sub_80565F0 (unsigned char* dest, unsigned char* r7, unsigned char* src) {
  unsigned i, j, r8 = 0;
  unsigned char* r4;
  for (j = 0; j < 16; j++)
    *dest++ = *src++;
  for (i = 0; i < 6; i++) {
    for (j = 4; j < 8; j++)
      *dest++ = *src++;
    r4 = r7 + i * 8 + r8;
    for (j = 0; j < 4; j++)
      *dest++ = *r4++;
  }
}*/
