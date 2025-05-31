#include "global.h"

void sub_80452B4 (void);
void SetWhoseTurnToPlayer (void);
void InitBoard (void);


void sub_80452A8 (void) {
  sub_80452B4();
}

void sub_80452B4 (void) {
  SetWhoseTurnToPlayer();
  InitBoard();
  InitDuelLifePoints();
}

void SetDuelTypeToIngameNormal (void) {
  gDuelType = DUEL_TYPE_INGAME;
}

void SetDuelType (u8 duelType) {
  gDuelType = duelType;
}

u16 GetGraveCardAndClearGrave2 (u8 turn) {
  u16 card = gDuel.duelistbattleState[turn].graveyard;
  gDuel.duelistbattleState[turn].graveyard = CARD_NONE;
  return card;
}

void PlaceMonsterCardInZone (u16 *zone, u16 card) {
  if (GetTypeGroup(card) == TYPE_GROUP_MONSTER)
    *zone = card;
}

void ClearZoneAndSendMonToGraveyard2 (struct DuelCard *zone, u8 turn) {
  PlaceMonsterCardInZone(&gDuel.duelistbattleState[turn].graveyard, zone->id);
  ClearZone(zone);
}

void ClearZoneAndSendMonToGraveyard (struct DuelCard *zone, u8 turn) {
  PlaceMonsterCardInZone(&gTurnDuelistBattleState[turn]->graveyard, zone->id);
  ClearZone(zone);
}

u16 GetGraveCardAndClearGrave (u8 turn) {
  u16 card = gTurnDuelistBattleState[turn]->graveyard;
  gTurnDuelistBattleState[turn]->graveyard = CARD_NONE;
  return card;
}
