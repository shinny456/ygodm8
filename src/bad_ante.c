#include "global.h"
#include "constants/card_ids.h"

//TODO: rename file to ante.c

extern u16 gLowLevelAnte[];

int IsGoodAnte (u16 cardId) {
  u16 i;
  for (i = 0; gLowLevelAnte[i] != CARD_NONE; i++)
    if (gLowLevelAnte[i] == cardId)
      return FALSE;
  return TRUE;
}
