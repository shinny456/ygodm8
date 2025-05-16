#include "global.h"

extern u8 g80C1D80[];

// SORL text
// TryDisplayingSORLText, TrySet?
void sub_802549C (void) {
  struct DuelText duelText;
  if (gNotSure[0]->sorlTurns == 0)
    return;
  ResetDuelTextData(&duelText);
  duelText.textId = g80C1D80[gNotSure[0]->sorlTurns];
  DisplayDuelText(&duelText);
}

void InitDuelistStatus (void) {
  u8 i;
  for (i = 0; i < 2; i++)
    gDuelistStatus[i] = CANNOT_ATTACK;
}

void EndFirstTurnAttackBan (void) {
  u8 i;
  for (i = 0; i < 2; i++)
    if (gDuelistStatus[i] == CANNOT_ATTACK)
      gDuelistStatus[i] = CAN_ATTACK;
}

void DeclareLoser (unsigned char duelist) {
  gDuelistStatus[duelist] = DEFEAT;
}

unsigned char GetDuelistStatus (unsigned char duelist) {
  return gDuelistStatus[duelist];
}

unsigned char IsDuelOver (void) {
  u8 i;
  bool8 isDuelOver = FALSE;
  for (i = 0; i < 2; i++)
    if (gDuelistStatus[i] == DEFEAT)
      isDuelOver = TRUE;
  return isDuelOver;
}
