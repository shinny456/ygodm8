#include "global.h"

//static CONST_DATA signed char sFiller_8E0D953[] = {0};

static CONST_DATA signed char g8E0D954[] = {
  [BOARD_CURSOR_TOP_LEFT] = - 17,
  [BOARD_CURSOR_TOP_RIGHT] = 17,
  [BOARD_CURSOR_BOTTOM_LEFT] = - 17,
  [BOARD_CURSOR_BOTTOM_RIGHT] = 17
};

static CONST_DATA signed char g8E0D958[] = {
  [BOARD_CURSOR_TOP_LEFT] = -16,
  [BOARD_CURSOR_TOP_RIGHT] = -16,
  [BOARD_CURSOR_BOTTOM_LEFT] = 16,
  [BOARD_CURSOR_BOTTOM_RIGHT] = 16
};

static CONST_DATA unsigned char g8E0D95C[] = {1, 1, 0, 0};

// opponent hand field graphics (R button screen)
static const unsigned char* CONST_DATA g8E0D960[] = {
  [FIELD_ARENA] = g80F31D0,
  [FIELD_FOREST] = g80F543C,
  [FIELD_WASTELAND] = g80F7AE8,
  [FIELD_MOUNTAIN] = g80FA27C,
  [FIELD_SOGEN] = g80FC7FC,
  [FIELD_UMI] = g80FE9D8,
  [FIELD_YAMI] = g8100C88
};

static const unsigned short (* CONST_DATA g8E0D97C[])[31] = {
  [FIELD_ARENA] = g80F4B08,
  [FIELD_FOREST] = g80F71B4,
  [FIELD_WASTELAND] = g80F9948,
  [FIELD_MOUNTAIN] = g80FBEC8,
  [FIELD_SOGEN] = g80FE0A4,
  [FIELD_UMI] = g8100354,
  [FIELD_YAMI] = g81024F0
};

static const unsigned short * CONST_DATA g8E0D998[] = {
  [FIELD_ARENA] = g80F4AA8,
  [FIELD_FOREST] = g80F7154,
  [FIELD_WASTELAND] = g80F98E8,
  [FIELD_MOUNTAIN] = g80FBE68,
  [FIELD_SOGEN] = g80FE044,
  [FIELD_UMI] = g81002F4,
  [FIELD_YAMI] = g8102490
};


void sub_803EE44 (void);
void sub_8044D34 (void);
void sub_8044DAC (void);
void sub_8044DC8 (void);


void sub_8043EF4 (void) {
  gDuelCursor.currentX = 4 - gDuelCursor.currentX;
  switch (gDuelCursor.currentY) {
    case 0:
      gDuelCursor.currentY = 3;
      break;
    case 1:
      gDuelCursor.currentY = 2;
      break;
    case 2:
      gDuelCursor.currentY = 1;
      break;
    case 3:
      gDuelCursor.currentY = 0;
      break;
  }

  gDuelCursor.destX = 4 - gDuelCursor.destX;
  switch (gDuelCursor.destY) {
    case 0:
      gDuelCursor.destY = 3;
      break;
    case 1:
      gDuelCursor.destY = 2;
      break;
    case 2:
      gDuelCursor.destY = 1;
      break;
    case 3:
      gDuelCursor.destY = 0;
      break;
  }
}
//TODO: BoardMoveCursorUp? MoveBoardCursorUp?
void MoveCursorUp (void) {
  PlayMusic(SFX_MOVE_CURSOR);
  if (gDuelCursor.currentY == 0)
    gDuelCursor.currentY++;
  gDuelCursor.currentY--;
}

void MoveCursorDown (void) {
  PlayMusic(SFX_MOVE_CURSOR);
  if (++gDuelCursor.currentY > 4)
    gDuelCursor.currentY--;
}

void MoveCursorRight (void) {
  PlayMusic(SFX_MOVE_CURSOR);
  if (++gDuelCursor.currentX == 5)
    gDuelCursor.currentX = 0;
}

void MoveCursorLeft (void) {
  PlayMusic(SFX_MOVE_CURSOR);
  if (gDuelCursor.currentX == 0)
    gDuelCursor.currentX = 5;
  gDuelCursor.currentX--;
}

unsigned short GetBoardCursorCornerXCoord (enum CursorCorner corner) {
  return sub_80575E0(gDuelCursor.currentX, gDuelCursor.currentY) + g8E0D954[corner];
}
unsigned char GetBoardCursorCornerYCoord (enum CursorCorner corner) {
  return sub_8057600(gDuelCursor.currentX, gDuelCursor.currentY) + g8E0D958[corner];
}

// TODO/UB?: doesn't return a value; only way to match? (might be UB only if return value is used?)
int InitDuelCursor (void) {
  gDuelCursor.state = 0;
  gDuelCursor.currentX = 0;
  gDuelCursor.currentY = 4;
  gDuelCursor.destX = 0;
  gDuelCursor.destY = 4;
}

u32 CanPlayerSeeCard (unsigned char y, unsigned char x) {
  switch (y) {
    case 0:
    case 1:
      return !!gFixedZones[y][x]->isFaceUp;
    case 2:
    case 3:
    case 4:
      return 1;
  }
}

u32 CanOpponentSeeCard (unsigned char y, unsigned char x) {
  if (gFixedZones[y][x]->id == CARD_NONE)
    return 1;
  switch (y) {
    case 0:
    case 1:
    case 4:
      return 1;
    case 2:
    case 3:
      return !!gFixedZones[y][x]->isFaceUp;
  }
}

void ResetCursorDestToCurrentPos (void) {
  gDuelCursor.destX = gDuelCursor.currentX;
  gDuelCursor.destY = gDuelCursor.currentY;
}

void SetCursorToCardDest (void) {
  gDuelCursor.currentX = gDuelCursor.destX;
  gDuelCursor.currentY = gDuelCursor.destY;
}

void sub_804413C (void) {
  gDuelCursor.unk5 = 0;
}

void sub_8044148 (void) {
  gDuelCursor.unk5 = g8E0D95C[gDuelCursor.unk5];
}

void sub_8044160 (unsigned char arg0) {
  switch (arg0) {
    case 0:
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 16:
    case 17:
      gDuelCursor.currentY = gDuelCursor.destY;
      gDuelCursor.currentX = gDuelCursor.destX;
      break;
  }
}

void MonsterActionMenu (void);
void HandlePlayerBackrowAction (void);
void DisplayNumRequiredTributesTextbox (unsigned char);
void sub_80442AC (void);
void SelectZone (struct DuelCard *zone);
void CopySelectedCardToZone (struct DuelCard *zone);
void DisplayCardInfoBar (void);
void sub_8041E70 (unsigned char, unsigned char);
void CheckWinConditionExodia (void);
u32 HandlePlayerMonsterAction (void);
void sub_8044570 (void);
void UpdateDuelGfxExceptField (void);
void sub_801BC00 (void);
void UpdateAllDuelGfx (void);
void ActivateTrapEffect (void);
s8 GetLastNonEmptyMonZoneId (struct DuelCard** zonePtr);
s8 GetFirstNonEmptyMonZoneId (struct DuelCard** zonePtr);
void sub_80449D8 (void);
u16 sub_8044B68(void);
void BMenuMain (void);
void sub_8044D00 (void);

extern u16 gNewButtons;

void sub_80441D0 (void) {
  switch (gDuelCursor.currentY) {
    case 2:
      if (gFixedZones[2][gDuelCursor.currentX]->id != CARD_NONE && !gFixedZones[2][gDuelCursor.currentX]->isLocked) {
        PlayMusic(SFX_SELECT);
        MonsterActionMenu();
      }
      else {
        PlayMusic(SFX_FORBIDDEN);
        WaitForVBlank();
      }
      break;
    case 3:
      if (gFixedZones[3][gDuelCursor.currentX]->id == CARD_NONE) {
        PlayMusic(SFX_FORBIDDEN);
        WaitForVBlank();
      }
      else {
        unsigned char numTributes = GetRitualNumRequiredTributes(gFixedZones[3][gDuelCursor.currentX]->id);
        if (!numTributes)
          HandlePlayerBackrowAction();
        else {
          PlayMusic(SFX_FORBIDDEN);
          DisplayNumRequiredTributesTextbox(numTributes);
        }
      }
      break;
    case 4:
      if (gFixedZones[4][gDuelCursor.currentX]->id == CARD_NONE || gFixedZones[4][gDuelCursor.currentX]->isLocked) {
        PlayMusic(SFX_FORBIDDEN);
        WaitForVBlank();
      }
      else {
        unsigned char numTributes = GetMonsterNumRequiredTributes(gFixedZones[4][gDuelCursor.currentX]->id);
        if (numTributes) {
          PlayMusic(SFX_FORBIDDEN);
          DisplayNumRequiredTributesTextbox(numTributes);
        }
        else {
          PlayMusic(SFX_SELECT);
          sub_80442AC();
        }
      }
      break;
    default:
      PlayMusic(SFX_FORBIDDEN);
      WaitForVBlank();
  }
}

void sub_80442AC (void) {
  u16 id = gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->id;
  SelectZone(gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]);
  gDuelCursor.state = 1;
  ResetCursorDestToCurrentPos();
  switch (GetTypeGroup(id)) {
    case TYPE_GROUP_MONSTER:
      gDuelCursor.currentX = FirstEmptyZoneInRow(gFixedZones[2]);
      gDuelCursor.currentY = 2;
      break;
    case TYPE_GROUP_SPELL:
    case TYPE_GROUP_TRAP:
    case TYPE_GROUP_RITUAL:
      gDuelCursor.currentX = FirstEmptyZoneInRow(gFixedZones[3]);
      gDuelCursor.currentY = 3;
      break;
    default:
      break;
  }
  DisplayCardInfoBar();
  sub_8041E70(gDuelCursor.destY, gDuelCursor.currentY);
}

void MonsterActionMenu (void) {
  switch (HandlePlayerMonsterAction()) {
    case 1:
      sub_8044570();
      break;
    case 2:
      if (!gTurnDuelistBattleState[ACTIVE_DUELIST]->defenseBlocked) {
        PlayMusic(SFX_SELECT);
        gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending = 1;
        gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isLocked = 1;
      }
      else {
        PlayMusic(SFX_FORBIDDEN);
        gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending = 0;
      }
      UpdateDuelGfxExceptField();
      TryActivatingPermanentEffects();
      break;
    case 3:
      PlayMusic(SFX_TRIBUTE);
      IncrementNumTributes();
      ClearZoneAndSendMonToGraveyard2(gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX], 0);
      UpdateDuelGfxExceptField();
      TryActivatingPermanentEffects();
      break;
    case 4:
      if (gTurnDuelistBattleState[ACTIVE_DUELIST]->defenseBlocked)
        gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending = 0;
      if (!gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isFaceUp) {
        SetCardInfo(gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->id);
        if (gCardInfo.monsterEffect == /*MONSTER_EFFECT_NONE*/ 0) {
          FAILED:
          PlayMusic(SFX_FORBIDDEN);
          UpdateDuelGfxExceptField();
        }
        else {
          gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending = 0;
          gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isFaceUp = 1;
          gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isLocked = 1;
          gMonEffect.id = gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->id;
          gMonEffect.row = gDuelCursor.currentY;
          gMonEffect.zone = gDuelCursor.currentX;
          ActivateMonsterEffect();
          if (gTurnDuelistBattleState[ACTIVE_DUELIST]->summoningBlocked)
            LockMonsterCardsInRow(4);
          UpdateDuelGfxExceptField();
          CheckWinConditionExodia();
          if (IsDuelOver() != 1)
            TryActivatingPermanentEffects();
        }
      }
      else
        goto FAILED;
      break;
    case 5:
      if (gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending)
        if (gTurnDuelistBattleState[ACTIVE_DUELIST]->defenseBlocked)
          gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending = 0;
      UpdateDuelGfxExceptField();
      break;
  }
}


void sub_8044570 (void) {
  unsigned char turn = WhoseTurn();
  if (GetDuelistStatus(turn) == DUELIST_STATUS_CANNOT_ATTACK || gTurnDuelistBattleState[ACTIVE_DUELIST]->sorlTurns) { // attacking forbidden
    PlayMusic(SFX_FORBIDDEN);
    gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isLocked = 1;
    UpdateDuelGfxExceptField();
  }
  else if (NumEmptyZonesInRow(gTurnZones[1]) == MAX_ZONES_IN_ROW) { // Direct Attack
    gTrapEffectData.originRow = gDuelCursor.currentY;
    gTrapEffectData.originCol = gDuelCursor.currentX;
    gTrapEffectData.originCardId = gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->id;
    if (IsTrapTriggered() != 1) {
      PlayMusic(SFX_SELECT);
      gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending = 0;
      gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isFaceUp = 1;
      gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isLocked = 1;
      SetAttackActionDirectAttack(gDuelCursor.currentX);
      HandleAtkAndLifePointsAction();
      CheckGraveyardAndLoserFlags();
      gDuelCursor.state = 0;
      sub_801BC00();
      UpdateAllDuelGfx();
      sub_8022080();
    }
    else {
      PlayMusic(SFX_ATTACK_REBUFFED);
      ActivateTrapEffect();
      gDuelCursor.state = 0;
    }
    TryActivatingPermanentEffects();
  }
  else {
    PlayMusic(SFX_SELECT);
    SelectZone(gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]);
    gDuelCursor.state = 4;
    ResetCursorDestToCurrentPos();
    gDuelCursor.currentX = GetLastNonEmptyMonZoneId(&gFixedZones[1][4]);
    gDuelCursor.currentY = 1;
    DisplayCardInfoBar();
    sub_8041E70(gDuelCursor.destY, gDuelCursor.currentY);
    UpdateDuelGfxExceptField();
  }
}

void HandlePlayerBackrowAction (void) {
  u16 id = gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->id;
  SelectZone(gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]);
  ResetCursorDestToCurrentPos();
  switch (GetSpellType(id)) {
    case SPELL_TYPE_NORMAL: // immediate effect
      gDuelCursor.state = 0;
      gSpellEffectData.id = id;
      gSpellEffectData.row1 = gDuelCursor.currentY;
      gSpellEffectData.col1 = gDuelCursor.currentX;
      ActivateSpellEffect();
      if (gTurnDuelistBattleState[ACTIVE_DUELIST]->summoningBlocked)
        LockMonsterCardsInRow(4);
      UpdateDuelGfxExceptField();
      CheckWinConditionExodia();
      if (IsDuelOver() != TRUE)
        TryActivatingPermanentEffects();
      break;
    case SPELL_TYPE_EQUIP: // need to select a valid monster target after "activating"
      PlayMusic(SFX_SELECT);
      gDuelCursor.state = 2;
      gDuelCursor.currentX = GetFirstNonEmptyMonZoneId(gFixedZones[2]);
      gDuelCursor.currentY = 2;
      break;
    case SPELL_TYPE_INVALID: // any backrow that can't be activated manually
      PlayMusic(SFX_FORBIDDEN);
      gDuelCursor.state = 0;
      break;
  }
  DisplayCardInfoBar();
  sub_8041E70(gDuelCursor.destY, gDuelCursor.currentY);
}

// equip spells (and Elegant Egotist, Metalmorph, etc.) must target a monster to activate
void TrySelectSpellTarget (void) {
  if (gDuelCursor.currentY != 2) {
    PlayMusic(SFX_FORBIDDEN);
    WaitForVBlank();
  }
  else if (gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->id == CARD_NONE) {
    PlayMusic(SFX_FORBIDDEN);
    WaitForVBlank();
  }
  else if (gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isLocked) {
    PlayMusic(SFX_FORBIDDEN);
    WaitForVBlank();
  }
  else {
    SetCardInfo(gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->id);
    if (GetTypeGroup(gCardInfo.id) == TYPE_GROUP_MONSTER) {
      gSpellEffectData.id = gFixedZones[gDuelCursor.destY][gDuelCursor.destX]->id;
      gSpellEffectData.row2 = gDuelCursor.destY;
      gSpellEffectData.col2 = gDuelCursor.destX;
      gSpellEffectData.row1 = gDuelCursor.currentY;
      gSpellEffectData.col1 = gDuelCursor.currentX;
      ActivateSpellEffect();
    }
    gDuelCursor.state = 0;
    ResetCursorDestToCurrentPos();
    UpdateDuelGfxExceptField();
    TryActivatingPermanentEffects();
  }
}

void TryAttackWithMonster (void) {
  if (gDuelCursor.currentY != 1) {
    PlayMusic(SFX_FORBIDDEN);
    WaitForVBlank();
  }
  else if (gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->id == CARD_NONE) {
    PlayMusic(SFX_FORBIDDEN);
    WaitForVBlank();
  }
  else {
    gTrapEffectData.originRow = gDuelCursor.destY;
    gTrapEffectData.originCol = gDuelCursor.destX;
    gTrapEffectData.originCardId = gFixedZones[gDuelCursor.destY][gDuelCursor.destX]->id;
    if (IsTrapTriggered() != 1) {
      PlayMusic(SFX_SELECT);
      gFixedZones[gDuelCursor.destY][gDuelCursor.destX]->isDefending = 0;
      gFixedZones[gDuelCursor.destY][gDuelCursor.destX]->isFaceUp = 1;
      gFixedZones[gDuelCursor.destY][gDuelCursor.destX]->isLocked = 1;
      gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]->isFaceUp = 1;
      SetAttackAction(gDuelCursor.destX, gDuelCursor.currentX);
      HandleAtkAndLifePointsAction();
      CheckGraveyardAndLoserFlags();
      gDuelCursor.state = 0;
      SetCursorToCardDest();
      sub_801BC00();
      UpdateAllDuelGfx();
      sub_8022080();
    }
    else {
      ActivateTrapEffect();
      gDuelCursor.state = 0;
      SetCursorToCardDest();
      UpdateDuelGfxExceptField();
    }
    TryActivatingPermanentEffects();
  }
}

static void TryPlaceSelectedCardOnField (void) {
  SetCardInfo(gFixedZones[gDuelCursor.destY][gDuelCursor.destX]->id);
  switch (GetTypeGroup(gCardInfo.id)) {
    case TYPE_GROUP_SPELL:
    case TYPE_GROUP_TRAP:
    case TYPE_GROUP_RITUAL:
      if (gDuelCursor.currentY == 3) {
        PlayMusic(SFX_PLACE_CARD);
        sub_80449D8();
        CheckWinConditionFINAL();
        TryActivatingPermanentEffects();
      }
      else {
        PlayMusic(SFX_FORBIDDEN);
        WaitForVBlank();
      }
      break;
    default: // monster card
      if (gDuelCursor.currentY != 2) {
        PlayMusic(SFX_FORBIDDEN);
        WaitForVBlank();
      }
      else {
        PlayMusic(SFX_PLACE_CARD);
        BlockTurnSummoning(ACTIVE_DUELIST);
        LockMonsterCardsInRow(4);
        ResetNumTributes();
        sub_80449D8();
        TryActivatingPermanentEffects();
      }
  }
}

void sub_80449D8 (void) {
  ClearZone(gFixedZones[gDuelCursor.destY][gDuelCursor.destX]);
  CopySelectedCardToZone(gFixedZones[gDuelCursor.currentY][gDuelCursor.currentX]);
  gDuelCursor.state = 0;
  ResetCursorDestToCurrentPos();
  UpdateDuelGfxExceptField();
}

void OpenBMenu (void) {
  PlayMusic(SFX_SELECT);
  BMenuMain();
}

void sub_8044A30 (void) {
  unsigned char currY;
  PlayMusic(SFX_CANCEL);
  currY = gDuelCursor.currentY;
  gDuelCursor.state = 0;
  SetCursorToCardDest();
  DisplayCardInfoBar();
  sub_8041E70(currY, gDuelCursor.currentY);
}

void sub_8044A5C (void) {
  unsigned char currY;
  PlayMusic(SFX_CANCEL);
  currY = gDuelCursor.currentY;
  gDuelCursor.state = 0;
  SetCursorToCardDest();
  DisplayCardInfoBar();
  sub_8041E70(currY, gDuelCursor.currentY);
}

void sub_8044A88 (void) {
  unsigned char currY;
  PlayMusic(SFX_CANCEL);
  currY = gDuelCursor.currentY;
  gDuelCursor.state = 0;
  SetCursorToCardDest();
  DisplayCardInfoBar();
  sub_8041E70(currY, gDuelCursor.currentY);
}

void HandleAButtonAction (void) {
  switch (gDuelCursor.state) {
    case 0:
      sub_80441D0();
      break;
    case 1: //HAND_CARD_SELECTED
      TryPlaceSelectedCardOnField();
      break;
    case 2: //EQUIP_SPELL_SELECTED
      TrySelectSpellTarget();
      break;
    case 4:
      TryAttackWithMonster();
      break;
  }
}

void HandleBButtonAction (void) {
  switch (gDuelCursor.state) {
    case 0:
      OpenBMenu();
      break;
    case 1:
      sub_8044A30();
      break;
    case 2:
      sub_8044A5C();
      break;
    case 4:
      sub_8044A88();
      break;
  }
}

void sub_8044B2C (void) {
  unsigned char r4;
  PlayMusic(SFX_SELECT);
  sub_8044D00();
  r4 = 1;
  while (r4) {
    switch (sub_8044B68()) {
      case 2:
        r4 = 0;
        break;
      case 0:
      case 1:
        break;
      case 0x100:
        r4 = 0;
        break;
    }
    WaitForVBlank();
  }
  PlayMusic(SFX_CANCEL);
}

u16 sub_8044B68 (void) {
  if (gNewButtons & R_BUTTON)
    return 0x100;
  if (gNewButtons & B_BUTTON)
    return 2;
  return 0;
}

NAKED
void sub_8044B90 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	sub sp, #8\n\
	ldr r1, _08044C04\n\
	mov r0, sp\n\
	movs r2, #5\n\
	bl memcpy\n\
	movs r6, #0\n\
	ldr r0, _08044C08\n\
	mov r8, r0\n\
_08044BA8:\n\
	movs r0, #4\n\
	subs r0, r0, r6\n\
	lsls r0, r0, #2\n\
	mov r1, r8\n\
	adds r7, r0, r1\n\
	ldr r2, [r7]\n\
	ldrh r5, [r2]\n\
	cmp r5, #0\n\
	beq _08044C16\n\
	movs r1, #3\n\
	ands r1, r6\n\
	lsls r1, r1, #8\n\
	lsrs r0, r6, #2\n\
	lsls r0, r0, #0xc\n\
	movs r3, #0x80\n\
	lsls r3, r3, #9\n\
	adds r0, r0, r3\n\
	orrs r1, r0\n\
	ldr r0, _08044C0C\n\
	adds r4, r1, r0\n\
	ldrb r1, [r2, #5]\n\
	movs r0, #0x10\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08044C10\n\
	adds r0, r4, #0\n\
	adds r1, r5, #0\n\
	bl sub_80573D0\n\
	adds r0, r4, #0\n\
	adds r1, r5, #0\n\
	bl sub_80576B4\n\
	adds r0, r4, #0\n\
	adds r1, r5, #0\n\
	bl sub_80576EC\n\
	ldr r1, [r7]\n\
	adds r0, r4, #0\n\
	bl sub_80572A8\n\
	ldr r1, [r7]\n\
	adds r0, r4, #0\n\
	bl sub_805733C\n\
	b _08044C16\n\
	.align 2, 0\n\
_08044C04: .4byte 0x08102E24\n\
_08044C08: .4byte gTurnHands+0x14\n\
_08044C0C: .4byte 0x02000400\n\
_08044C10:\n\
	adds r0, r4, #0\n\
	bl CopyFaceDownCardTiles\n\
_08044C16:\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #4\n\
	bls _08044BA8\n\
  \n\
  \n\
	ldr r0, _08044CE8\n\
	bl CopyMiniCardPalette\n\
	movs r6, #0\n\
	ldr r3, _08044CEC\n\
	movs r7, #0\n\
	adds r4, r3, #0\n\
	movs r5, #0xa0\n\
_08044C30:\n\
	lsls r0, r6, #3\n\
	adds r0, r0, r3\n\
	strh r5, [r0]\n\
	lsls r2, r6, #2\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #1\n\
	adds r0, r0, r3\n\
	movs r1, #0xf0\n\
	strh r1, [r0]\n\
	adds r0, r2, #2\n\
	lsls r0, r0, #1\n\
	adds r0, r0, r3\n\
	movs r1, #0xc0\n\
	lsls r1, r1, #4\n\
	strh r1, [r0]\n\
	adds r2, #3\n\
	lsls r2, r2, #1\n\
	adds r2, r2, r3\n\
	strh r7, [r2]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r0, #0\n\
	bge _08044C30\n\
	movs r6, #0\n\
	mov ip, r6\n\
	movs r0, #4\n\
	rsbs r0, r0, #0\n\
	mov r8, r0\n\
	ldr r7, _08044CF0\n\
	ldr r5, _08044CF4\n\
_08044C6E:\n\
	lsls r3, r6, #3\n\
	adds r3, r3, r4\n\
	movs r0, #0x18\n\
	strb r0, [r3]\n\
	ldrb r1, [r3, #1]\n\
	mov r0, r8\n\
	ands r0, r1\n\
	movs r1, #1\n\
	orrs r0, r1\n\
	movs r1, #0x20\n\
	orrs r0, r1\n\
	strb r0, [r3, #1]\n\
	mov r1, sp\n\
	adds r0, r1, r6\n\
	ldrb r2, [r0]\n\
	ldrh r1, [r3, #2]\n\
	adds r0, r7, #0\n\
	ands r0, r1\n\
	orrs r0, r2\n\
	strh r0, [r3, #2]\n\
	ldrb r1, [r3, #3]\n\
	movs r0, #0x3f\n\
	ands r0, r1\n\
	movs r1, #0x80\n\
	orrs r0, r1\n\
	strb r0, [r3, #3]\n\
	movs r1, #3\n\
	ands r1, r6\n\
	lsls r1, r1, #3\n\
	lsrs r0, r6, #2\n\
	lsls r0, r0, #7\n\
	adds r1, r1, r0\n\
	ldr r2, _08044CF8\n\
	adds r0, r2, #0\n\
	ands r1, r0\n\
	ldrh r2, [r3, #4]\n\
	adds r0, r5, #0\n\
	ands r0, r2\n\
	orrs r0, r1\n\
	strh r0, [r3, #4]\n\
	mov r0, ip\n\
	strh r0, [r3, #6]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	cmp r6, #4\n\
	bls _08044C6E\n\
	movs r0, #0\n\
	movs r1, #0xff\n\
	lsls r1, r1, #8\n\
	strh r1, [r4, #6]\n\
	strh r0, [r4, #0xe]\n\
	strh r0, [r4, #0x16]\n\
	ldr r0, _08044CFC\n\
	strh r0, [r4, #0x1e]\n\
	add sp, #8\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08044CE8: .4byte 0x02000200\n\
_08044CEC: .4byte gOamBuffer\n\
_08044CF0: .4byte 0xFFFFFE00\n\
_08044CF4: .4byte 0xFFFFFC00\n\
_08044CF8: .4byte 0x000003FF\n\
_08044CFC: .4byte 0x0000FEFF");
}
/*
void sub_8044B90 (void) {
  unsigned char i;
  const unsigned char arr[] = {0x10, 0x3C, 0x68, 0x94, 0xC0}; //opponent hand coords
  unsigned char* ptr;
  for (i = 0; i < 5; i++) {
    u16 cardId = gTurnHands[INACTIVE_DUELIST][4 - i]->id;
    if (cardId == CARD_NONE)
      continue;
    ptr = &gBgVram.cbb0[(i % 4 * 256) | ((i / 4 << 12) + (0x10 << 12))];
    if (cardId) {
      sub_80573D0(ptr, cardId);
      sub_80576B4(ptr, cardId);
      sub_80576EC(ptr, cardId);
      sub_80572A8(ptr, cardId);
      sub_805733C(ptr, cardId);
    }
    else
      CopyFaceDownCardTiles(ptr);
  }
  CopyMiniCardPalette(gPaletteBuffer + 256);
}*/

void sub_8044D00 (void) {
  sub_803EE44();
  sub_8044D34();
  sub_8044B90();
  SetVBlankCallback(DisableDisplay);
  WaitForVBlank();
  sub_8044DAC();
  SetVBlankCallback(sub_8044DC8);
  WaitForVBlank();
}

void sub_8044D34 (void) {
  unsigned char i;
  HuffUnComp(g8E0D960[gDuel.field], gBgVram.cbb0);
  for (i = 0; i < 20; i++)
    CpuCopy16(g8E0D97C[gDuel.field][i], gBgVram.cbb0 + 0xF800 + i * 64, 62);
  CpuCopy16(g8E0D998[gDuel.field], gPaletteBuffer, 96);
}

void sub_8044DAC (void) {
  LoadCharblock0();
  LoadCharblock3();
  LoadCharblock4();
  LoadCharblock5();
  LoadPalettes();
}

void sub_8044DC8 (void) {
  LoadOam();
  gBG0HOFS = 0;
  gBG0VOFS = 0;
  gBG1HOFS = 0;
  gBG1VOFS = 0;
  gBG2HOFS = 0;
  gBG2VOFS = 0;
  gBG3HOFS = 4;
  gBG3VOFS = 0;
  gBLDCNT = 0;
  gBLDALPHA = 0;
  gBLDY = 0;
  LoadBgOffsets();
  LoadBlendingRegs();
  REG_BG3CNT = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(31);
  REG_DISPCNT = DISPCNT_BG3_ON | DISPCNT_OBJ_ON;
}
