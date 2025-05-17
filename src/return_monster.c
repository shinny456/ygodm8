#include "global.h"

static void ReturnMonsterToOpponent (struct DuelCard *zone) {
  if (NumEmptyZonesInRow(gTurnZonePtrs[1]) != 0) {
    u8 emptyZoneId = FirstEmptyZoneInRow(gTurnZonePtrs[1]);
    gTurnZonePtrs[1][emptyZoneId]->id = zone->id;
    gTurnZonePtrs[1][emptyZoneId]->isFaceUp = TRUE;
    gTurnZonePtrs[1][emptyZoneId]->isLocked = FALSE;
    gTurnZonePtrs[1][emptyZoneId]->isDefending = FALSE;
    gTurnZonePtrs[1][emptyZoneId]->unkTwo = zone->unkTwo;
    gTurnZonePtrs[1][emptyZoneId]->unk4 = 2;
    SetPermStage(gTurnZonePtrs[1][emptyZoneId], PermStage(zone));
    ResetTempStage(gTurnZonePtrs[1][emptyZoneId]);
    gTurnZonePtrs[1][emptyZoneId]->willChangeSides = FALSE;
  }
  ClearZone(zone);
}

void ReturnMonstersToOwner (void) {
  u8 i;
  for (i = 0; i < 5; i++)
    if (gTurnZonePtrs[2][i]->id != CARD_NONE && gTurnZonePtrs[2][i]->willChangeSides)
      ReturnMonsterToOpponent(gTurnZonePtrs[2][i]);
}
