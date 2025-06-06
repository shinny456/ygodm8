#include "global.h"

static void ReturnMonsterToOpponent (struct DuelCard *zone) {
  if (NumEmptyZonesInRow(gTurnZones[1]) != 0) {
    u8 emptyZoneId = FirstEmptyZoneInRow(gTurnZones[1]);
    gTurnZones[1][emptyZoneId]->id = zone->id;
    gTurnZones[1][emptyZoneId]->isFaceUp = TRUE;
    gTurnZones[1][emptyZoneId]->isLocked = FALSE;
    gTurnZones[1][emptyZoneId]->isDefending = FALSE;
    gTurnZones[1][emptyZoneId]->unkTwo = zone->unkTwo;
    gTurnZones[1][emptyZoneId]->unk4 = 2;
    SetPermStage(gTurnZones[1][emptyZoneId], PermStage(zone));
    ResetTempStage(gTurnZones[1][emptyZoneId]);
    gTurnZones[1][emptyZoneId]->willChangeSides = FALSE;
  }
  ClearZone(zone);
}

void ReturnMonstersToOwner (void) {
  u8 i;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gTurnZones[2][i]->id != CARD_NONE && gTurnZones[2][i]->willChangeSides)
      ReturnMonsterToOpponent(gTurnZones[2][i]);
}
