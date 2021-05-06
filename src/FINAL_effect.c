#include "global.h"
#include "duel.h"
#include "constants/card_ids.h"

#define FLAG_F (1 << 0)
#define FLAG_I (1 << 1)
#define FLAG_N (1 << 2)
#define FLAG_A (1 << 3)
#define FLAG_L (1 << 4)
#define FLAG_FINAL_ALL (FLAG_F | FLAG_I | FLAG_N | FLAG_A | FLAG_L)


u8 sub_803EF7C(void);
u8 sub_803EFAC(u16 id);
void sub_803EFF8(void);
void DeclareLoser(u8);

void WinConditionFINAL (void) {
  if ((sub_803EF7C() & FLAG_FINAL_ALL) == FLAG_FINAL_ALL)
    sub_803EFF8();
}

//FINALFlags
u8 sub_803EF7C (void) {
  u8 i, r5 = 0;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    r5 |= sub_803EFAC(gZones[3][i]->id);
  return r5;
}

//FINALFlag
u8 sub_803EFAC (u16 id) {
  u8 flag = 0;
  switch (id) {
  case DESTINY_BOARD:
      flag = FLAG_F;
      break;
  case SPIRIT_MESSAGE_I:
      flag = FLAG_I;
      break;
  case SPIRIT_MESSAGE_N:
      flag = FLAG_N;
      break;
  case SPIRIT_MESSAGE_A:
      flag = FLAG_A;
      break;
  case SPIRIT_MESSAGE_L:
      flag = FLAG_L;
      break;
  }
  return flag;
}

void sub_803EFF8 (void) {
  u8 unk[0xC]; //TODO
  u8 loser;
  if (WhoseTurn() == PLAYER)
    loser = OPPONENT;
  else
    loser = PLAYER;
  DeclareLoser(loser);
  sub_801D1A8();
  gUnk_02021C10.unk8 = 0x12;
  sub_801D188(6);
  sub_801CEBC();
}
