#include "global.h"
#include "duel.h"

extern u8 g80C1D80[];

// SORL text
void sub_802549C (void) {
  struct Unk unk;
  if (gNotSure[0]->sorlTurns == 0)
    return;
  sub_8021A14(&unk);
  unk.unk8 = g80C1D80[gNotSure[0]->sorlTurns];
  sub_80219E4(&unk);
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

void DeclareLoser (u8 turnPlayer) {
  gDuelistStatus[turnPlayer] = 2;
}

u8 sub_8025534 (u8 turnPlayer) {
  return gDuelistStatus[turnPlayer];
}

bool8 IsDuelOver (void) {
  u8 i;
  bool8 isDuelOver = FALSE;
  for (i = 0; i < 2; i++)
    if (gDuelistStatus[i] == 2)
      isDuelOver = TRUE;
  return isDuelOver;
}
