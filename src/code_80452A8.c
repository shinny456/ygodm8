#include "global.h"
#include "duel.h"
#include "constants/card_ids.h"

void sub_80452B4 (void);
void sub_8058720 (void);
void InitBoard (void);
void sub_8048C60 (void);

void sub_80452A8 (void) {
  sub_80452B4();
}

void sub_80452B4 (void) {
  sub_8058720();
  InitBoard();
  sub_8048C60();
}

void sub_80452C8 (void) {
  gUnk20241FC = 0;
}

void sub_80452D4 (u8 val) {
  gUnk20241FC = val;
}

u16 sub_80452E0 (u8 turn) {
  u16 card = gDuel.notSure[turn].graveyard;
  gDuel.notSure[turn].graveyard = CARD_NONE;
  return card;
}

void sub_80452F8 (u16 *zone, u16 card) {
  if (sub_803FCBC(card) == 1)
    *zone = card;
}

void sub_8045314 (struct DuelCard *zone, u8 turn) {
  sub_80452F8(&gDuel.notSure[turn].graveyard, zone->id);
  ClearZone(zone);
}

void ClearZoneAndSendMonToGraveyard (struct DuelCard *zone, u8 turn) {
  sub_80452F8(&gNotSure[turn]->graveyard, zone->id);
  ClearZone(zone);
}

u16 sub_804535C (u8 turn) {
  u16 card = gNotSure[turn]->graveyard;
  gNotSure[turn]->graveyard = CARD_NONE;
  return card;
}
