#include "global.h"
#include "duel.h"
#include "constants/card_ids.h"

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
  gDuelType = 0;
}

void SetDuelType (u8 duelType) {
  gDuelType = duelType;
}

u16 GetGraveCardAndClearGrave2 (u8 turn) {
  u16 card = gDuel.notSure[turn].graveyard;
  gDuel.notSure[turn].graveyard = CARD_NONE;
  return card;
}

void PlaceMonsterCardInZone (u16 *zone, u16 card) {
  if (GetTypeGroup(card) == 1)
    *zone = card;
}

void ClearZoneAndSendMonToGraveyard2 (struct DuelCard *zone, u8 turn) {
  PlaceMonsterCardInZone(&gDuel.notSure[turn].graveyard, zone->id);
  ClearZone(zone);
}

void ClearZoneAndSendMonToGraveyard (struct DuelCard *zone, u8 turn) {
  PlaceMonsterCardInZone(&gNotSure[turn]->graveyard, zone->id);
  ClearZone(zone);
}

u16 GetGraveCardAndClearGrave (u8 turn) {
  u16 card = gNotSure[turn]->graveyard;
  gNotSure[turn]->graveyard = CARD_NONE;
  return card;
}
