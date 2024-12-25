#include "global.h"

//TODO: rename file to god_card.c?

static void RemoveObeliskFromDeckAndTrunk (void);
static void RemoveSliferFromDeckAndTrunk (void);
static void RemoveRaFromDeckAndTrunk (void);

extern unsigned short gGodCards[];
void RemoveCardFromDeckAndTrunk (unsigned short);

unsigned IsGodCard (unsigned short id) {
  unsigned char i;
  for (i = 0; gGodCards[i] != CARD_NONE; i++)
    if (gGodCards[i] == id)
      return 1;
  return 0;
}

unsigned IsWingedDragonOfRa (unsigned short id) {
  if (id == THE_WINGED_DRAGON_OF_RA_SPHERE_MODE)
    return 1;
  if (id == THE_WINGED_DRAGON_OF_RA_BATTLE_MODE)
    return 1;
  if (id == THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE)
    return 1;
  return 0;
}

void RemoveGodCardsFromDeckAndTrunk (void) {
  RemoveObeliskFromDeckAndTrunk();
  RemoveSliferFromDeckAndTrunk();
  RemoveRaFromDeckAndTrunk();
}

static void RemoveObeliskFromDeckAndTrunk (void) {
  RemoveCardFromDeckAndTrunk(OBELISK_THE_TORMENTOR);
}

static void RemoveSliferFromDeckAndTrunk (void) {
  RemoveCardFromDeckAndTrunk(SLIFER_THE_SKY_DRAGON);
}

static void RemoveRaFromDeckAndTrunk (void) {
  RemoveCardFromDeckAndTrunk(THE_WINGED_DRAGON_OF_RA_SPHERE_MODE);
  RemoveCardFromDeckAndTrunk(THE_WINGED_DRAGON_OF_RA_BATTLE_MODE);
  RemoveCardFromDeckAndTrunk(THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE);
}
