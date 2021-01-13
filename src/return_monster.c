#include "global.h"
#include "duel.h"
#include "constants/card_ids.h"

void ReturnMonsterToOpponent (struct DuelCard *zone) {
  if (NumEmptyZonesInRow(gZones[1]) != 0) {
    u8 emptyZoneId = EmptyZoneInRow(gZones[1]);
    gZones[1][emptyZoneId]->id = zone->id;
    gZones[1][emptyZoneId]->isFaceUp = TRUE;
    gZones[1][emptyZoneId]->isLocked = FALSE;
    gZones[1][emptyZoneId]->isDefending = FALSE;
    gZones[1][emptyZoneId]->unkTwo = zone->unkTwo;
    gZones[1][emptyZoneId]->unk4 = 2;
    SetPermStage(gZones[1][emptyZoneId], PermStage(zone));
    ResetTempStage(gZones[1][emptyZoneId]);
    gZones[1][emptyZoneId]->willChangeSides = FALSE;
  }
  ClearZone(zone);
}

void ReturnMonstersToOwner (void) {
  u8 i;
  for (i = 0; i < 5; i++)
    if (gZones[2][i]->id != CARD_NONE && gZones[2][i]->willChangeSides)
      ReturnMonsterToOpponent(gZones[2][i]);
}
