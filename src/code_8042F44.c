#include "global.h"
#include "duel.h"
#include "card.h"
#include "constants/card_ids.h"


int HighestAtkMonInRow (struct DuelCard** zonePtr) {
  u8 zoneIndex = 0;
  s8 i;
  int highestAtk = -1;
  for (i = 0; i < 5; i++) {
    if ((*zonePtr)->id == CARD_NONE) {
      zonePtr++;
      continue;
    }
    gStatMod.card = (*zonePtr)->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(*zonePtr);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk > highestAtk) {
      highestAtk = gCardInfo.atk;
      zoneIndex = i;
    }
    zonePtr++;
  }
  return (s8)zoneIndex;
}

int HighestAtkMonInRowExceptGodCards (struct DuelCard** zonePtr) {
  u8 zoneIndex = 0;
  s8 i;
  int highestAtk = -1;
  for (i = 0; i < 5; i++) {
    if ((*zonePtr)->id == CARD_NONE) {
      zonePtr++;
      continue;
    }
    if (IsGodCard((*zonePtr)->id) == 1) {
      zonePtr++;
      continue;
    }
    gStatMod.card = (*zonePtr)->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(*zonePtr);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk > highestAtk) {
      highestAtk = gCardInfo.atk;
      zoneIndex = i;
    }
    zonePtr++;
  }
  return (s8)zoneIndex;
}

int sub_804304C (struct DuelCard** zonePtr) {
  u8 zoneIndex = 0;
  s8 i;
  int highestAtk = -1;
  for (i = 0; i < 5; i++) {
    if ((*zonePtr)->id == CARD_NONE) {
      zonePtr++;
      continue;
    }
    if (IsCardLocked(*zonePtr) == 1) {
      zonePtr++;
      continue;
    }
    gStatMod.card = (*zonePtr)->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(*zonePtr);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk > highestAtk) {
      highestAtk = gCardInfo.atk;
      zoneIndex = i;
    }
    zonePtr++;
  }
  return (s8)zoneIndex;
}

int sub_80430D8 (struct DuelCard** zonePtr) {
  u8 zoneIndex = 0;
  s8 i;
  int highestAtk = -1;
  for (i = 0; i < 5; i++) {
    if ((*zonePtr)->id == CARD_NONE) {
      zonePtr++;
      continue;
    }
    if (!IsCardFaceUp(*zonePtr)) {
      zonePtr++;
      continue;
    }
    gStatMod.card = (*zonePtr)->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(*zonePtr);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk > highestAtk) {
      highestAtk = gCardInfo.atk;
      zoneIndex = i;
    }
    zonePtr++;
  }
  return (s8)zoneIndex;
}

int sub_8043164 (struct DuelCard** zonePtr, u8 type) {
  u8 zoneIndex = 0;
  s8 i;
  int highestAtk = -1;
  for (i = 0; i < 5; i++) {
    if ((*zonePtr)->id == CARD_NONE) {
      zonePtr++;
      continue;
    }
    gStatMod.card = (*zonePtr)->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(*zonePtr);
    SetFinalStat(&gStatMod);
    if (gCardInfo.type != type) {
      zonePtr++;
      continue;
    }
    if (gCardInfo.atk > highestAtk) {
      highestAtk = gCardInfo.atk;
      zoneIndex = i;
    }
    zonePtr++;
  }
  return (s8)zoneIndex;
}

u8 sub_80431F4 (u8 row, u16 atk) {
  u8 i, count = 0;
  for (i = 0; i < 5; i++) {
    if (gZones[row][i]->id == CARD_NONE || !gZones[row][i]->isFaceUp)
      continue;
    gStatMod.card = gZones[row][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row][i]);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk >= atk)
      count++;
  }
  return count;
}

u8 sub_8043280 (u8 row) {
  u8 i, count = 0;
  for (i = 0; i < 5; i++)
    if (gZones[row][i]->id != CARD_NONE && gZones[row][i]->isFaceUp)
      if (gZones[row][i]->isLocked)
        count++;
  return count;
}

u32 sub_80432D0 (u8 row) {
  u32 total = 0;
  u8 i;
  for (i = 0; i < 5; i++) {
    if (sub_803FCBC(gZones[row][i]->id) != 1)
      continue;
    gStatMod.card = gZones[row][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row][i]);
    SetFinalStat(&gStatMod);
    total = total + gCardInfo.atk + gCardInfo.def;
  }
  return total;
}

u32 sub_8043358 (u8 row) {
  u32 total = 0;
  u8 i;
  for (i = 0; i < 5; i++) {
    if (sub_803FCBC(gZones[row][i]->id) != 1 || !gZones[row][i]->isFaceUp)
      continue;
    gStatMod.card = gZones[row][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row][i]);
    SetFinalStat(&gStatMod);
    total = total + gCardInfo.atk + gCardInfo.def;
  }
  return total;
}

int NumCardInRow (struct DuelCard** zonePtr, u16 cardId) {
  s8 count = 0;
  u8 i;
  for (i = 0; i < 5; i++)
    if ((*zonePtr++)->id == cardId)
      count++;
  return count;
}

int sub_8043418 (struct DuelCard** zonePtr, u16 cardId) {
  s8 count = 0;
  u8 i;
  for (i = 0; i < 5; i++) {
    u16 currentCardId = (*zonePtr++)->id;
    if (IsGodCard(currentCardId) == 1)
      currentCardId = CARD_NONE;
    if (currentCardId == cardId)
      count++;
  }
  return count;
}

// first card in row
int sub_8043468 (struct DuelCard** zonePtr) {
  s8 i;
  for (i = 0; i < 5; i++)
    if ((*zonePtr++)->id != CARD_NONE)
      return i;
  return 0;
}

// last card in row
int sub_8043490 (struct DuelCard** zonePtr) {
  s8 i;
  for (i = 4; i >= 0; i--)
    if ((*zonePtr--)->id != CARD_NONE)
      return i;
  return 4;
}

// first card in row except god cards
// unused
// bug?: it increments the zone pointer before calling IsGodCard
int sub_80434B8 (struct DuelCard** zonePtr) {
  s8 i;
  for (i = 0; i < 5; i++)
    if ((*zonePtr++)->id != CARD_NONE && IsGodCard((*zonePtr++)->id) != 1)
      return i;
  return 0;
}

// last card in row except god cards
// unused
// bug?: it decrements the zone pointer before calling IsGodCard
int sub_80434F0 (struct DuelCard** zonePtr) {
  s8 i;
  for (i = 4; i >= 0; i--)
    if ((*zonePtr--)->id != CARD_NONE && IsGodCard((*zonePtr++)->id) != 1)
      return i;
  return 4;
}

int NumEmptyZonesInRow (struct DuelCard** zonePtr) {
  return (s8)NumCardInRow(zonePtr, CARD_NONE);
}

int NumEmptyZonesAndGodCardsInRow (struct DuelCard** zonePtr) {
  return (s8)sub_8043418(zonePtr, CARD_NONE);
}

int sub_8043548 (struct DuelCard** zonePtr) {
  u8 i;
  s8 count = 0;
  for (i = 0; i < 5; zonePtr++, i++)
    if ((*zonePtr)->id != CARD_NONE && !(*zonePtr)->isLocked)
      count++;
  return count;
}

int sub_8043584 (struct DuelCard** zonePtr, u8 type) {
  u8 i;
  s8 count = 0;
  for (i = 0; i < 5; zonePtr++, i++)
    if ((*zonePtr)->id != CARD_NONE) {
      SetCardInfo((*zonePtr)->id);
      if (gCardInfo.type == type)
        count++;
    }
  return count;
}

s8 EmptyZoneInRow (struct DuelCard** zonePtr) {
  u8 i;
  for (i = 0; i < 5; i++)
    if ((*zonePtr++)->id == CARD_NONE)
      return i;
  return 0;
}

s8 sub_80435E8 (struct DuelCard** zonePtr) {
  u8 i;
  for (i = 5; i != 0; i--)
    if ((*zonePtr--)->id == CARD_NONE)
      return i - 1;
  return 0;
}

s8 sub_804360C (struct DuelCard** zonePtr) {
  s8 i;
  for (i = 0; i < 5; i++)
    if (sub_803FCBC((*zonePtr++)->id) == 1)
      return i;
  return 0;
}

s8 sub_804363C (struct DuelCard** zonePtr) {
  s8 i;
  for (i = 4; i >= 0; i--)
    if (sub_803FCBC((*zonePtr--)->id) == 1)
      return i;
  return 4;
}

u32 sub_804366C (struct DuelCard** zonePtr, u16 cardId) {
  s8 i;
  for (i = 0; i < 5; i++)
    if ((*zonePtr++)->id == cardId)
      return 1;
  return 0;
}

s32 sub_8043694 (struct DuelCard** zonePtr, u16 cardId) {
  s8 i;
  for (i = 0; i < 5; i++)
    if ((*zonePtr++)->id == cardId)
      return i;
  return 0;
}

s32 sub_80436C0 (struct DuelCard** zonePtr, u16 cardId) {
  s8 i;
  for (i = 0; i < 5; i++)
    if ((*zonePtr--)->id == cardId)
      return i;
  return 0;
}

u32 sub_80436EC (struct DuelCard* zone) {
  u32 ret = 0;
  if (zone->id != CARD_NONE && sub_803FCBC(zone->id) == 1 && !zone->isLocked)
    ret = 1;
  return ret;
}

u32 sub_8043714 (struct DuelCard* zone) {
  u32 ret = 0;
  if (zone->id != CARD_NONE) {
    SetCardInfo(zone->id);
    if (gCardInfo.monsterEffect && !zone->isLocked)
      if (!zone->isFaceUp)
        ret = 1;
  }
  return ret;
}

u32 sub_804374C (struct DuelCard* zone) {
  u32 ret = 0;
  if (zone->id != CARD_NONE && sub_803FCBC(zone->id) == 3)
    ret = 1;
  return ret;
}

u32 sub_804376C (struct DuelCard* zone) {
  u32 ret = 0;
  if (sub_803FCBC(zone->id) == 2 && sub_803FCEC(zone->id) == 1)
    ret = 1;
  return ret;
}

u32 sub_8043790 (struct DuelCard* zone) {
  u32 ret = 0;
  if (sub_803FCBC(zone->id) == 2 && !sub_803FCEC(zone->id))
    ret = 1;
  return ret;
}

u32 sub_80437B4 (struct DuelCard* zone) {
  u32 ret = 0;
  if (zone->id != CARD_NONE && sub_803FCBC(zone->id) == 4)
    ret = 1;
  return ret;
}

int sub_80437D4 (u8 row) {
  u8 i, count = 0;
  for (i = 0; i < 5; i++)
    if (gZones[row][i]->id != CARD_NONE)
      count++;
  return count;
}

u32 sub_8043810 (u8 row) {
  u8 i, count = 0;
  for (i = 0; i < 5; i++)
    if (gZones[row][i]->id != CARD_NONE && gZones[row][i]->isFaceUp)
      count++;
  return count;
}

u32 sub_8043858 (u8 row) {
  u8 i, count = 0;
  for (i = 0; i < 5; i++)
    if (gZones[row][i]->id != CARD_NONE && !gZones[row][i]->isFaceUp)
      count++;
  return count;
}

u32 sub_80438A0 (u8 row) {
  u8 i, count = 0;
  for (i = 0; i < 5; i++) {
    SetCardInfo(gZones[row][i]->id);
    if (gCardInfo.spellEffect == 2)
      count++;
  }
  return count;
}

u32 sub_80438E8 (u8 row) {
  u8 i, count = 0;
  for (i = 0; i < 5; i++)
    if (gZones[row][i]->id != CARD_NONE && gZones[row][i]->isDefending)
      count++;
  return count;
}

int sub_8043930 (u8 row, u8 type) {
  u8 i, count = 0;
  for (i = 0; i < 5; i++) {
    if (gZones[row][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gZones[row][i]->id);
    if (gCardInfo.type == type)
      count++;
  }
  return count;
}

u32 sub_804398C (u8 row, u8 type) {
  u8 i, count = 0;
  for (i = 0; i < 5; i++) {
    if (gZones[row][i]->id == CARD_NONE || !gZones[row][i]->isFaceUp)
      continue;
    SetCardInfo(gZones[row][i]->id);
    if (gCardInfo.type == type)
      count++;
  }
  return count;
}

u32 sub_80439F4 (u8 row, u8 attribute) {
  u8 i, count = 0;
  for (i = 0; i < 5; i++) {
    if (gZones[row][i]->id == CARD_NONE || !gZones[row][i]->isFaceUp)
      continue;
    SetCardInfo(gZones[row][i]->id);
    if (gCardInfo.attribute == attribute)
      count++;
  }
  return count;
}

u32 sub_8043A5C (u8 row) {
  u8 i, count = 0;
  for (i = 0; i < 5; i++) {
    if (gZones[row][i]->id != CARD_NONE && !gZones[row][i]->isLocked)
      count++;
  }
  return count;
}



// split?--------------------------

void sub_8041B38 (void);
void sub_8041D54 (void);

struct Temp {
  u16 unk0;
  u16 unk2;
};


// called by unused function?
NAKED
void sub_8043AA4 (struct Temp* arg0) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	adds r6, r0, #0\n\
_08043AAC:\n\
	movs r4, #0\n\
_08043AAE:\n\
	ldrh r0, [r6, #2]\n\
	adds r0, r0, r4\n\
	subs r0, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	bl SetCardInfo\n\
	lsls r0, r4, #3\n\
	subs r0, r0, r4\n\
	lsls r0, r0, #1\n\
	adds r0, #1\n\
	strh r0, [r6]\n\
	movs r5, #0\n\
	ldr r1, _08043BA4\n\
	ldr r0, [r1]\n\
	ldrb r0, [r0]\n\
	adds r4, #1\n\
	mov r8, r4\n\
	cmp r0, #0\n\
	beq _08043B08\n\
	adds r7, r1, #0\n\
	movs r4, #0\n\
_08043ADA:\n\
	ldrh r0, [r6]\n\
	adds r0, r0, r5\n\
	lsls r0, r0, #7\n\
	ldr r1, _08043BA8\n\
	adds r0, r0, r1\n\
	ldr r1, [r7]\n\
	adds r1, r4, r1\n\
	ldrb r2, [r1, #1]\n\
	lsls r2, r2, #8\n\
	ldrb r1, [r1]\n\
	orrs r1, r2\n\
	ldr r2, _08043BAC\n\
	bl sub_8020968\n\
	adds r4, #2\n\
	adds r5, #1\n\
	cmp r5, #0xc\n\
	bgt _08043B2C\n\
	ldr r0, [r7]\n\
	adds r0, r4, r0\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _08043ADA\n\
_08043B08:\n\
	cmp r5, #0xc\n\
	bgt _08043B2C\n\
	ldr r4, _08043BB0\n\
_08043B0E:\n\
	ldrh r0, [r6]\n\
	adds r0, r0, r5\n\
	lsls r0, r0, #7\n\
	ldr r1, _08043BA8\n\
	adds r0, r0, r1\n\
	ldrb r2, [r4, #1]\n\
	lsls r2, r2, #8\n\
	ldrb r1, [r4]\n\
	orrs r1, r2\n\
	ldr r2, _08043BAC\n\
	bl sub_8020968\n\
	adds r5, #1\n\
	cmp r5, #0xc\n\
	ble _08043B0E\n\
_08043B2C:\n\
	mov r4, r8\n\
	cmp r4, #3\n\
	ble _08043AAE\n\
	ldr r1, _08043BB4\n\
	ldrb r0, [r1, #1]\n\
	lsls r0, r0, #8\n\
	ldrb r1, [r1]\n\
	orrs r1, r0\n\
	ldr r0, _08043BB8\n\
	ldr r2, _08043BAC\n\
	bl sub_8020968\n\
	bl sub_8008220\n\
	bl sub_8041014\n\
	ldr r0, _08043BBC\n\
	ldrh r1, [r0]\n\
	movs r0, #0x40\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08043B68\n\
	ldrh r0, [r6, #2]\n\
	cmp r0, #1\n\
	bne _08043B62\n\
	ldr r0, _08043BC0\n\
	strh r0, [r6, #2]\n\
_08043B62:\n\
	ldrh r0, [r6, #2]\n\
	subs r0, #1\n\
	strh r0, [r6, #2]\n\
_08043B68:\n\
	ldr r0, _08043BBC\n\
	ldrh r1, [r0]\n\
	movs r0, #0x80\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08043B88\n\
	ldrh r1, [r6, #2]\n\
	movs r0, #0xe1\n\
	lsls r0, r0, #2\n\
	cmp r1, r0\n\
	bne _08043B82\n\
	movs r0, #0\n\
	strh r0, [r6, #2]\n\
_08043B82:\n\
	ldrh r0, [r6, #2]\n\
	adds r0, #1\n\
	strh r0, [r6, #2]\n\
_08043B88:\n\
	ldr r0, _08043BC4\n\
	ldrh r1, [r0]\n\
	movs r0, #1\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08043AAC\n\
	bl sub_8008220\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08043BA4: .4byte gCardInfo\n\
_08043BA8: .4byte 0x02008CA0\n\
_08043BAC: .4byte 0x00000101\n\
_08043BB0: .4byte 0x08E0D950\n\
_08043BB4: .4byte 0x08E0D94C\n\
_08043BB8: .4byte 0x020093A0\n\
_08043BBC: .4byte g2020DF4\n\
_08043BC0: .4byte 0x00000385\n\
_08043BC4: .4byte gUnk2020DFC");
}

// unused?
void sub_8043BC8 (struct Temp* arg0) {
  gZones[gCursorPosition.currentY][gCursorPosition.currentX]->id = arg0->unk2;
  gZones[gCursorPosition.currentY][gCursorPosition.currentX]->isFaceUp = 1;
  gZones[gCursorPosition.currentY][gCursorPosition.currentX]->isLocked = 0;
  gZones[gCursorPosition.currentY][gCursorPosition.currentX]->isDefending = 0;
  gZones[gCursorPosition.currentY][gCursorPosition.currentX]->unkTwo = 0;
  gZones[gCursorPosition.currentY][gCursorPosition.currentX]->unk4 = 0;
  ResetPermStage(gZones[gCursorPosition.currentY][gCursorPosition.currentX]);
  ResetTempStage(gZones[gCursorPosition.currentY][gCursorPosition.currentX]);
  gZones[gCursorPosition.currentY][gCursorPosition.currentX]->willChangeSides = 0;
}

void sub_8043CAC (void) {
  sub_8041B38();
}

void sub_8043CB8 (void) {}

void sub_8043CBC (void) {
  struct Temp temp = {1, 1};
  sub_8041B38();
  sub_8043AA4(&temp);
  sub_8043BC8(&temp);
  sub_8041D54();
}

inline u16 sub_8043EB4 (u8 turn) {
  u16 cardDrawn;
  if ((u8)sub_8043E70(turn) < gUnk20240F0[turn].cardsDrawn)
    return CARD_NONE;
  cardDrawn = gUnk20240F0[turn].cards[gUnk20240F0[turn].cardsDrawn];
  gUnk20240F0[turn].cardsDrawn++;
  return cardDrawn;
}

void DrawCard (u32 turn) {
  u8 i;
  u16 cardDrawn;
  u8 turn_u8 = turn;
  for (i = 0; i < 5; i++) {
    if (gDuel.hands[turn_u8][i].id != CARD_NONE)
      continue;
    cardDrawn = sub_8043EB4(turn_u8);
    if (cardDrawn != CARD_NONE)
      gDuel.hands[turn_u8][i].id = cardDrawn;
    else
      DeclareLoser(turn_u8);
    break;
  }
}

void sub_8043D6C (u8 arg0) {
  u8 temp = sub_8043E70(arg0);
  int i;
  if (!temp)
    return;
  for (i = 0; i < 200; i++) {
    u8 temp3 = sub_8056258(0, temp - 1);
    u8 temp4 = sub_8056258(0, temp - 1);
    u16 temp2 = gUnk20240F0[arg0].cards[temp3];
    gUnk20240F0[arg0].cards[temp3] = gUnk20240F0[arg0].cards[temp4];
    gUnk20240F0[arg0].cards[temp4] = temp2;
  }
}

void sub_8043DD8 (void) {
  int i;
  for (i = 0; i < 2; i++) {
    int j;
    gUnk20240F0[i].cardsDrawn = 0;
    for (j = 0; j < 41; j++)
      gUnk20240F0[i].cards[j] = 0;
  }
}

void sub_8043E44 (u8, u16*);

void sub_8043E14 (u8 arg0, u8 arg1) {
  if (!arg1)
    sub_8043E44(arg0, gDeck.cards);
  else
    sub_8043E44(arg0, gDuelData.duelist.deck);
}

void sub_8043E44 (u8 arg0, u16* deck) {
  u32 i;
  for (i = 0; i < 40; i++)
    gUnk20240F0[arg0].cards[i] = *deck++;
}

int sub_8043E70 (u8 arg0) {
  u8 i = 0;
  while (gUnk20240F0[arg0].cards[i] != CARD_NONE)
    i++;
  return i;
}

int sub_8043E9C (u8 arg0) {
  return gUnk20240F0[arg0].cardsDrawn;
}


