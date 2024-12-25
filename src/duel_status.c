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
  sub_80219E4(&duelText);
}

void sub_80254DC (void) {
  u8 i;
  for (i = 0; i < 2; i++)
    gDuelistStatus[i] = 0;
}

void sub_80254F8 (void) {
  u8 i;
  for (i = 0; i < 2; i++)
    if (gDuelistStatus[i] == 0)
      gDuelistStatus[i] = 1;
}

void DeclareLoser (unsigned char duelist) {
  gDuelistStatus[duelist] = 2;
}

unsigned char GetDuelistStatus (unsigned char duelist) {
  return gDuelistStatus[duelist];
}

unsigned char IsDuelOver (void) {
  u8 i;
  bool8 isDuelOver = FALSE;
  for (i = 0; i < 2; i++)
    if (gDuelistStatus[i] == 2)
      isDuelOver = TRUE;
  return isDuelOver;
}
