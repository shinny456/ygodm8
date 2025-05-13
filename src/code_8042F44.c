#include "global.h"

// name this file duel_util.c?

void InitDuelDeck (unsigned char, unsigned short*);

int HighestAtkMonInRow (struct DuelCard** zonePtr) {
  unsigned char zoneIndex = 0;
  signed char i;
  int highestAtk = -1;
  for (i = 0; i < 5; i++) {
    if ((*zonePtr)->id == CARD_NONE) {
      zonePtr++;
      continue;
    }
    gStatMod.card = (*zonePtr)->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(*zonePtr);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk > highestAtk) {
      highestAtk = gCardInfo.atk;
      zoneIndex = i;
    }
    zonePtr++;
  }
  return (signed char)zoneIndex;
}

int HighestAtkMonInRowExceptGodCards (struct DuelCard** zonePtr) {
  unsigned char zoneIndex = 0;
  signed char i;
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
    gStatMod.stage = GetFinalStage(*zonePtr);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk > highestAtk) {
      highestAtk = gCardInfo.atk;
      zoneIndex = i;
    }
    zonePtr++;
  }
  return (signed char)zoneIndex;
}

// 804304C
int HighestAtkUnlockedMonInRow (struct DuelCard** zonePtr) {
  unsigned char zoneIndex = 0;
  signed char i;
  int highestAtk = -1;
  for (i = 0; i < 5; i++) {
    if ((*zonePtr)->id == CARD_NONE) {
      zonePtr++;
      continue;
    }
    if (IsCardLocked(*zonePtr) == TRUE) {
      zonePtr++;
      continue;
    }
    gStatMod.card = (*zonePtr)->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(*zonePtr);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk > highestAtk) {
      highestAtk = gCardInfo.atk;
      zoneIndex = i;
    }
    zonePtr++;
  }
  return (signed char)zoneIndex;
}

// 80430D8
int HighestAtkFaceUpMonInRow (struct DuelCard** zonePtr) {
  unsigned char zoneIndex = 0;
  signed char i;
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
    gStatMod.stage = GetFinalStage(*zonePtr);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk > highestAtk) {
      highestAtk = gCardInfo.atk;
      zoneIndex = i;
    }
    zonePtr++;
  }
  return (signed char)zoneIndex;
}

// 8043164
int HighestAtkMonOfTypeInRow (struct DuelCard** zonePtr, unsigned char type) {
  unsigned char zoneIndex = 0;
  signed char i;
  int highestAtk = -1;
  for (i = 0; i < 5; i++) {
    if ((*zonePtr)->id == CARD_NONE) {
      zonePtr++;
      continue;
    }
    gStatMod.card = (*zonePtr)->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(*zonePtr);
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
  return (signed char)zoneIndex;
}

// 80431F4
unsigned char NumLowerAtkMonInRow (unsigned char row, unsigned short atk) {
  unsigned char i, count = 0;
  for (i = 0; i < 5; i++) {
    if (gZones[row][i]->id == CARD_NONE || !gZones[row][i]->isFaceUp)
      continue;
    gStatMod.card = gZones[row][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row][i]);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk >= atk)
      count++;
  }
  return count;
}

unsigned char GetNumFaceUpLockedCardsInRow (unsigned char row) {
  unsigned char i, count = 0;
  for (i = 0; i < 5; i++)
    if (gZones[row][i]->id != CARD_NONE && gZones[row][i]->isFaceUp)
      if (gZones[row][i]->isLocked)
        count++;
  return count;
}

unsigned GetTotalAtkAndDefInRow (unsigned char row) {
  unsigned total = 0;
  unsigned char i;
  for (i = 0; i < 5; i++) {
    if (GetTypeGroup(gZones[row][i]->id) != 1)
      continue;
    gStatMod.card = gZones[row][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row][i]);
    SetFinalStat(&gStatMod);
    total = total + gCardInfo.atk + gCardInfo.def;
  }
  return total;
}

unsigned GetTotalFaceUpAtkAndDefInRow (unsigned char row) {
  unsigned total = 0;
  unsigned char i;
  for (i = 0; i < 5; i++) {
    if (GetTypeGroup(gZones[row][i]->id) != 1 || !gZones[row][i]->isFaceUp)
      continue;
    gStatMod.card = gZones[row][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row][i]);
    SetFinalStat(&gStatMod);
    total = total + gCardInfo.atk + gCardInfo.def;
  }
  return total;
}

int NumCardMatchesInRow (struct DuelCard** zonePtr, unsigned short cardId) {
  signed char count = 0;
  unsigned char i;
  for (i = 0; i < 5; i++)
    if ((*zonePtr++)->id == cardId)
      count++;
  return count;
}

// kinda hacky logic?
// The fn seems at first to count the non-god cards in a row, but it does this by pretending god cards are empty zones.
// So if you pass cardId=0 (empty zone), as the code does at 0x8043538, now the god cards DO get counted.
// Basically, it only counts non-god card matches if you pass a card id, but it INCLUDES god cards as matches if you ask for an empty zone.
int sub_8043418 (struct DuelCard** zonePtr, unsigned short cardId) {
  signed char count = 0;
  unsigned char i;
  for (i = 0; i < 5; i++) {
    unsigned short currentCardId = (*zonePtr++)->id;
    if (IsGodCard(currentCardId) == TRUE)
      currentCardId = CARD_NONE;
    if (currentCardId == cardId)
      count++;
  }
  return count;
}

// 8043468
int FirstNonEmptyZoneInRow (struct DuelCard** zonePtr) {
  signed char i;
  for (i = 0; i < 5; i++)
    if ((*zonePtr++)->id != CARD_NONE)
      return i;
  return 0;
}

// 8043490
int LastNonEmptyZoneInRow (struct DuelCard** zonePtr) {
  signed char i;
  for (i = 4; i >= 0; i--)
    if ((*zonePtr--)->id != CARD_NONE)
      return i;
  return 4;
}

// first card in row except god cards
// unused
// bug?: it increments the zone pointer before calling IsGodCard
int sub_80434B8 (struct DuelCard** zonePtr) {
  signed char i;
  for (i = 0; i < 5; i++)
    if ((*zonePtr++)->id != CARD_NONE && IsGodCard((*zonePtr++)->id) != 1)
      return i;
  return 0;
}

// last card in row except god cards
// unused
// bug?: it decrements the zone pointer before calling IsGodCard
int sub_80434F0 (struct DuelCard** zonePtr) {
  signed char i;
  for (i = 4; i >= 0; i--)
    if ((*zonePtr--)->id != CARD_NONE && IsGodCard((*zonePtr++)->id) != 1)
      return i;
  return 4;
}

int NumEmptyZonesInRow (struct DuelCard** zonePtr) {
  return (signed char)NumCardMatchesInRow(zonePtr, CARD_NONE);
}

// 8043538
int NumEmptyZonesAndGodCardsInRow (struct DuelCard** zonePtr) {
  return (signed char)sub_8043418(zonePtr, CARD_NONE);
}

int sub_8043548 (struct DuelCard** zonePtr) {
  unsigned char i;
  signed char count = 0;
  for (i = 0; i < 5; zonePtr++, i++)
    if ((*zonePtr)->id != CARD_NONE && !(*zonePtr)->isLocked)
      count++;
  return count;
}

int sub_8043584 (struct DuelCard** zonePtr, unsigned char type) {
  unsigned char i;
  signed char count = 0;
  for (i = 0; i < 5; zonePtr++, i++)
    if ((*zonePtr)->id != CARD_NONE) {
      SetCardInfo((*zonePtr)->id);
      if (gCardInfo.type == type)
        count++;
    }
  return count;
}

// 80435C8
signed char FirstEmptyZoneInRow (struct DuelCard** zonePtr) {
  unsigned char i;
  for (i = 0; i < 5; i++)
    if ((*zonePtr++)->id == CARD_NONE)
      return i;
  return 0;
}

// 80435E8
signed char LastEmptyZoneInRow (struct DuelCard** zonePtr) {
  unsigned char i;
  for (i = 5; i != 0; i--)
    if ((*zonePtr--)->id == CARD_NONE)
      return i - 1;
  return 0;
}

// 804360C
signed char GetFirstNonEmptyMonZoneId (struct DuelCard** zonePtr) {
  signed char i;
  for (i = 0; i < 5; i++)
    if (GetTypeGroup((*zonePtr++)->id) == TYPE_GROUP_MONSTER)
      return i;
  return 0;
}

// 804363C
signed char GetLastNonEmptyMonZoneId (struct DuelCard** zonePtr) {
  signed char i;
  for (i = 4; i >= 0; i--)
    if (GetTypeGroup((*zonePtr--)->id) == TYPE_GROUP_MONSTER)
      return i;
  return 4;
}

// 804366C
unsigned RowHasCardMatch (struct DuelCard** zonePtr, unsigned short cardId) {
  signed char i;
  for (i = 0; i < 5; i++)
    if ((*zonePtr++)->id == cardId)
      return 1;
  return 0;
}

// 8043694
s32 GetFirstCardMatchZoneId (struct DuelCard** zonePtr, unsigned short cardId) {
  signed char i;
  for (i = 0; i < 5; i++)
    if ((*zonePtr++)->id == cardId)
      return i;
  return 0;
}

// 80436C0
s32 GetLastCardMatchZoneId (struct DuelCard** zonePtr, unsigned short cardId) {
  signed char i;
  for (i = 0; i < 5; i++)
    if ((*zonePtr--)->id == cardId)
      return i;
  return 0;
}

// 80436EC
unsigned IsUnlockedMonsterCard (struct DuelCard* zone) {
  unsigned ret = 0;
  if (zone->id != CARD_NONE && GetTypeGroup(zone->id) == TYPE_GROUP_MONSTER && !zone->isLocked)
    ret = 1;
  return ret;
}

unsigned sub_8043714 (struct DuelCard* zone) {
  unsigned ret = 0;
  if (zone->id != CARD_NONE) {
    SetCardInfo(zone->id);
    if (gCardInfo.monsterEffect /*!= MONSTER_EFFECT_NONE*/ && !zone->isLocked)
      if (!zone->isFaceUp)
        ret = 1;
  }
  return ret;
}

// 804374C
unsigned IsTrapCard (struct DuelCard* zone) {
  unsigned ret = 0;
  if (zone->id != CARD_NONE && GetTypeGroup(zone->id) == TYPE_GROUP_TRAP)
    ret = 1;
  return ret;
}

unsigned sub_804376C (struct DuelCard* zone) {
  unsigned ret = 0;
  if (GetTypeGroup(zone->id) == TYPE_GROUP_SPELL && GetSpellType(zone->id) == 1)
    ret = 1;
  return ret;
}

unsigned sub_8043790 (struct DuelCard* zone) {
  unsigned ret = 0;
  if (GetTypeGroup(zone->id) == TYPE_GROUP_SPELL && !GetSpellType(zone->id))
    ret = 1;
  return ret;
}

// 80437B4
unsigned IsRitualCard (struct DuelCard* zone) {
  unsigned ret = 0;
  if (zone->id != CARD_NONE && GetTypeGroup(zone->id) == TYPE_GROUP_RITUAL)
    ret = 1;
  return ret;
}

int GetNumCardsInRow (unsigned char row) {
  unsigned char i, count = 0;
  for (i = 0; i < 5; i++)
    if (gZones[row][i]->id != CARD_NONE)
      count++;
  return count;
}

unsigned GetNumFaceUpCardsInRow (unsigned char row) {
  unsigned char i, count = 0;
  for (i = 0; i < 5; i++)
    if (gZones[row][i]->id != CARD_NONE && gZones[row][i]->isFaceUp)
      count++;
  return count;
}

unsigned GetNumFaceDownCardsInRow (unsigned char row) {
  unsigned char i, count = 0;
  for (i = 0; i < 5; i++)
    if (gZones[row][i]->id != CARD_NONE && !gZones[row][i]->isFaceUp)
      count++;
  return count;
}

unsigned sub_80438A0 (unsigned char row) {
  unsigned char i, count = 0;
  for (i = 0; i < 5; i++) {
    SetCardInfo(gZones[row][i]->id);
    if (gCardInfo.spellEffect == 2)
      count++;
  }
  return count;
}

unsigned GetNumCardsDefendingInRow (unsigned char row) {
  unsigned char i, count = 0;
  for (i = 0; i < 5; i++)
    if (gZones[row][i]->id != CARD_NONE && gZones[row][i]->isDefending)
      count++;
  return count;
}

int sub_8043930 (unsigned char row, unsigned char type) {
  unsigned char i, count = 0;
  for (i = 0; i < 5; i++) {
    if (gZones[row][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gZones[row][i]->id);
    if (gCardInfo.type == type)
      count++;
  }
  return count;
}

unsigned sub_804398C (unsigned char row, unsigned char type) {
  unsigned char i, count = 0;
  for (i = 0; i < 5; i++) {
    if (gZones[row][i]->id == CARD_NONE || !gZones[row][i]->isFaceUp)
      continue;
    SetCardInfo(gZones[row][i]->id);
    if (gCardInfo.type == type)
      count++;
  }
  return count;
}

unsigned sub_80439F4 (unsigned char row, unsigned char attribute) {
  unsigned char i, count = 0;
  for (i = 0; i < 5; i++) {
    if (gZones[row][i]->id == CARD_NONE || !gZones[row][i]->isFaceUp)
      continue;
    SetCardInfo(gZones[row][i]->id);
    if (gCardInfo.attribute == attribute)
      count++;
  }
  return count;
}

// 8043A5C
unsigned GetNumCardsUnlockedInRow (unsigned char row) {
  unsigned char i, count = 0;
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
  unsigned short unk0;
  unsigned short unk2;
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
	bl WaitForVBlank\n\
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
	bl WaitForVBlank\n\
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
_08043BBC: .4byte gRepeatedOrNewButtons\n\
_08043BC0: .4byte 0x00000385\n\
_08043BC4: .4byte gNewButtons");
}

// unused?
void sub_8043BC8 (struct Temp* arg0) {
  gZones[gDuelCursor.currentY][gDuelCursor.currentX]->id = arg0->unk2;
  gZones[gDuelCursor.currentY][gDuelCursor.currentX]->isFaceUp = 1;
  gZones[gDuelCursor.currentY][gDuelCursor.currentX]->isLocked = 0;
  gZones[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending = 0;
  gZones[gDuelCursor.currentY][gDuelCursor.currentX]->unkTwo = 0;
  gZones[gDuelCursor.currentY][gDuelCursor.currentX]->unk4 = 0;
  ResetPermStage(gZones[gDuelCursor.currentY][gDuelCursor.currentX]);
  ResetTempStage(gZones[gDuelCursor.currentY][gDuelCursor.currentX]);
  gZones[gDuelCursor.currentY][gDuelCursor.currentX]->willChangeSides = 0;
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

inline unsigned short DrawTopDeckCard (unsigned char turn) {
  unsigned short cardDrawn;
  if ((unsigned char)sub_8043E70(turn) < gDuelDecks[turn].cardsDrawn)
    return CARD_NONE;
  cardDrawn = gDuelDecks[turn].cards[gDuelDecks[turn].cardsDrawn];
  gDuelDecks[turn].cardsDrawn++;
  return cardDrawn;
}

void TryDrawingCard (unsigned turn) {
  unsigned char i;
  unsigned short cardDrawn;
  unsigned char turn_u8 = turn;
  for (i = 0; i < 5; i++) {
    if (gDuel.hands[turn_u8][i].id != CARD_NONE)
      continue;
    cardDrawn = DrawTopDeckCard(turn_u8);
    if (cardDrawn != CARD_NONE)
      gDuel.hands[turn_u8][i].id = cardDrawn;
    else
      DeclareLoser(turn_u8); // deck out
    break;
  }
}

void ShuffleDuelDeck (unsigned char arg0) {
  unsigned char temp = sub_8043E70(arg0);
  int i;
  if (!temp)
    return;
  for (i = 0; i < 200; i++) {
    unsigned char temp3 = sub_8056258(0, temp - 1);
    unsigned char temp4 = sub_8056258(0, temp - 1);
    unsigned short temp2 = gDuelDecks[arg0].cards[temp3];
    gDuelDecks[arg0].cards[temp3] = gDuelDecks[arg0].cards[temp4];
    gDuelDecks[arg0].cards[temp4] = temp2;
  }
}

void ClearDuelDecks (void) {
  int i;
  for (i = 0; i < 2; i++) {
    int j;
    gDuelDecks[i].cardsDrawn = 0;
    for (j = 0; j < 41; j++)
      gDuelDecks[i].cards[j] = CARD_NONE;
  }
}

void sub_8043E14 (unsigned char arg0, unsigned char arg1) {
  if (!arg1)
    InitDuelDeck(arg0, gPlayerDeck.cards);
  else
    InitDuelDeck(arg0, gDuelData.duelist.deck);
}

void InitDuelDeck (unsigned char duelist, unsigned short* deck) {
  unsigned i;
  for (i = 0; i < 40; i++)
    gDuelDecks[duelist].cards[i] = *deck++;
}

int sub_8043E70 (unsigned char arg0) {
  unsigned char i = 0;
  while (gDuelDecks[arg0].cards[i] != CARD_NONE)
    i++;
  return i;
}

int sub_8043E9C (unsigned char arg0) {
  return gDuelDecks[arg0].cardsDrawn;
}
