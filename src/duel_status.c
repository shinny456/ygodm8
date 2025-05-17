#include "global.h"

extern u8 gSorlTurnsRemainingTextIds[];

void TryDisplaySorlTurnsRemainingText (void) {
  struct DuelText duelText;
  if (gNotSure[0]->sorlTurns == 0)
    return;
  ResetDuelTextData(&duelText);
  duelText.textId = gSorlTurnsRemainingTextIds[gNotSure[0]->sorlTurns];
  DisplayDuelText(&duelText);
}

void InitDuelistStatus (void) {
  u8 i;
  for (i = 0; i < 2; i++)
    gDuelistStatus[i] = DUELIST_STATUS_CANNOT_ATTACK;
}

void EndFirstTurnAttackBan (void) {
  u8 i;
  for (i = 0; i < 2; i++)
    if (gDuelistStatus[i] == DUELIST_STATUS_CANNOT_ATTACK)
      gDuelistStatus[i] = DUELIST_STATUS_CAN_ATTACK;
}

void DeclareLoser (unsigned char duelist) {
  gDuelistStatus[duelist] = DUELIST_STATUS_DEFEAT;
}

unsigned char GetDuelistStatus (unsigned char duelist) {
  return gDuelistStatus[duelist];
}

unsigned char IsDuelOver (void) {
  u8 i;
  bool8 isDuelOver = FALSE;
  for (i = 0; i < 2; i++)
    if (gDuelistStatus[i] == DUELIST_STATUS_DEFEAT)
      isDuelOver = TRUE;
  return isDuelOver;
}
