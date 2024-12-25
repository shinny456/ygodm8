#include "global.h"

//TODO: rename file to ante.c

extern unsigned short gLowLevelAnte[];

unsigned IsGoodAnte (unsigned short cardId) {
  unsigned short i;
  for (i = 0; gLowLevelAnte[i] != CARD_NONE; i++)
    if (gLowLevelAnte[i] == cardId)
      return 0;
  return 1;
}
