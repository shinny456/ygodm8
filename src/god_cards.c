#include "global.h"
#include "constants/card_ids.h"

extern u16 gGodCards[];
extern void RemoveCardFromDeckAndTrunk (u16 id);
static void RemoveObeliskFromDeckAndTrunk (void);
static void RemoveSliferFromDeckAndTrunk (void);
static void RemoveRaFromDeckAndTrunk (void);


bool32 IsGodCard (u16 id) {
  u8 i;
  for (i = 0; gGodCards[i] != CARD_NONE; i++)
    if (gGodCards[i] == id)
      return TRUE;
  return FALSE;
}

bool32 IsWingedDragonOfRa (u16 id) {
  if (id == THE_WINGED_DRAGON_OF_RA_SPHERE_MODE)
    return TRUE;
  if (id == THE_WINGED_DRAGON_OF_RA_BATTLE_MODE)
    return TRUE;
  if (id == THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE)
    return TRUE;
  return FALSE;
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
