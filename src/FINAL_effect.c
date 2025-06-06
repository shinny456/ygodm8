#include "global.h"
#include "FINAL_effect.h"

#include "duel.h"
#include "constants/card_ids.h"

static void HandleFINALWin (void);

void CheckWinConditionFINAL (void) {
  if ((GetFINAL_Flags() & FLAG_FINAL_ALL) == FLAG_FINAL_ALL)
    HandleFINALWin();
}

int GetFINAL_Flags (void) {
  unsigned char i, flags = 0;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    flags |= GetFINAL_Flag(gTurnZones[3][i]->id);
  return flags;
}

int GetFINAL_Flag (unsigned short cardId) {
  unsigned char flag = 0;
  switch (cardId) {
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

static void HandleFINALWin (void) {
  unsigned char unused[12];
  unsigned char loser;
  if (WhoseTurn() == DUEL_PLAYER)
    loser = DUEL_OPPONENT;
  else
    loser = DUEL_PLAYER;
  DeclareLoser(loser);
  ResetCardEffectTextData();
  gCardEffectTextData.textId = DUEL_TEXT_DESTINY_BOARD_COMPLETE;
  SetCardEffectTextType(6);
  ActivateCardEffectText();
}
