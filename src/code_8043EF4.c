#include "global.h"

//are field graphics repeated?
extern u8* g8E0D960[];
extern u16* g8E0D998[];
extern u16 (*g8E0D97C[])[31];

void sub_803EE44 (void);
void sub_8044D34 (void);
void sub_8044DAC (void);
void sub_8044DC8 (void);
void HuffUnComp (void*, void*);

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


extern s8 g8E0D954[];
extern u8 g8E0D958[];
extern u8 g8E0D95C[];


u16 sub_8043FFC (u8 arg0) {
  return sub_80575E0(gDuelCursor.currentX, gDuelCursor.currentY) + g8E0D954[arg0];
}

u8 sub_804402C (u8 arg0) {
  return sub_8057600(gDuelCursor.currentX, gDuelCursor.currentY) + g8E0D958[arg0];
}

// TODO/UB?: doesn't return a value; only way to match?
int InitDuelCursor (void) {
  gDuelCursor.state = 0;
  gDuelCursor.currentX = 0;
  gDuelCursor.currentY = 4;
  gDuelCursor.destX = 0;
  gDuelCursor.destY = 4;
}

u32 CanPlayerSeeCard (u8 y, u8 x) {
  switch (y) {
    case 0:
    case 1:
      return !!gDuelBoard[y][x]->isFaceUp;
    case 2:
    case 3:
    case 4:
      return 1;
  }
}

u32 CanOpponentSeeCard (u8 y, u8 x) {
  if (gDuelBoard[y][x]->id == CARD_NONE)
    return 1;
  switch (y) {
    case 0:
    case 1:
    case 4:
      return 1;
    case 2:
    case 3:
      return !!gDuelBoard[y][x]->isFaceUp;
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

void sub_8044160 (u8 arg0) {
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


u8 sub_80453D8(u16);
void HandlePlayerMonsterRowAction (void);
void HandlePlayerSpellRowAction (void);
void DisplayNumRequiredTributesText (u8);
void sub_80442AC (void);
void SelectZone (struct DuelCard *zone);
void CopySelectedCardToZone (struct DuelCard *zone);
void DisplayCardInfoBar (void);
void sub_8041E70 (u8, u8);
void CheckWinConditionExodia (void);
void IncNumTributes (void);
u32 sub_80429A4 (void);
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
      if (gDuelBoard[2][gDuelCursor.currentX]->id != CARD_NONE && !gDuelBoard[2][gDuelCursor.currentX]->isLocked) {
        PlayMusic(SFX_SELECT);
        HandlePlayerMonsterRowAction();
      }
      else {
        PlayMusic(SFX_FORBIDDEN);
        WaitForVBlank();
      }
      break;
    case 3:
      if (gDuelBoard[3][gDuelCursor.currentX]->id == CARD_NONE) {
        PlayMusic(SFX_FORBIDDEN);
        WaitForVBlank();
      }
      else {
        u8 numTributes = sub_80453D8(gDuelBoard[3][gDuelCursor.currentX]->id);
        if (!numTributes) {
          HandlePlayerSpellRowAction();
        }
        else {
          PlayMusic(SFX_FORBIDDEN);
          DisplayNumRequiredTributesText(numTributes);
        }
      }
      break;
    case 4:
      if (gDuelBoard[4][gDuelCursor.currentX]->id == CARD_NONE || gDuelBoard[4][gDuelCursor.currentX]->isLocked) {
        PlayMusic(SFX_FORBIDDEN);
        WaitForVBlank();
      }
      else {
        u8 numTributes = sub_8045390(gDuelBoard[4][gDuelCursor.currentX]->id);
        if (numTributes) {
          PlayMusic(SFX_FORBIDDEN);
          DisplayNumRequiredTributesText(numTributes);
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
  u16 id = gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->id;
  SelectZone(gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]);
  gDuelCursor.state = 1;
  ResetCursorDestToCurrentPos();
  switch (GetTypeGroup(id)) {
    case TYPE_GROUP_MONSTER:
      gDuelCursor.currentX = FirstEmptyZoneInRow(gDuelBoard[2]);
      gDuelCursor.currentY = 2;
      break;
    case TYPE_GROUP_SPELL:
    case TYPE_GROUP_TRAP:
    case TYPE_GROUP_RITUAL:
      gDuelCursor.currentX = FirstEmptyZoneInRow(gDuelBoard[3]);
      gDuelCursor.currentY = 3;
      break;
    default:
      break;
  }
  DisplayCardInfoBar();
  sub_8041E70(gDuelCursor.destY, gDuelCursor.currentY);
}

void HandlePlayerMonsterRowAction (void) {
  switch (sub_80429A4()) {
    case 1:
      sub_8044570();
      break;
    case 2:
      if (!gNotSure[0]->defenseBlocked) {
        PlayMusic(SFX_SELECT);
        gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending = 1;
        gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isLocked = 1;
      }
      else {
        PlayMusic(SFX_FORBIDDEN);
        gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending = 0;
      }
      UpdateDuelGfxExceptField();
      sub_8029820();
      break;
    case 3:
      PlayMusic(SFX_TRIBUTE);
      IncNumTributes();
      ClearZoneAndSendMonToGraveyard2(gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX], 0);
      UpdateDuelGfxExceptField();
      sub_8029820();
      break;
    case 4:
      if (gNotSure[0]->defenseBlocked)
        gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending = 0;
      if (!gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isFaceUp) {
        SetCardInfo(gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->id);
        if (gCardInfo.monsterEffect == /*MONSTER_EFFECT_NONE*/ 0) {
          FAILED:
          PlayMusic(SFX_FORBIDDEN);
          UpdateDuelGfxExceptField();
        }
        else {
          gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending = 0;
          gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isFaceUp = 1;
          gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isLocked = 1;
          gMonEffect.id = gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->id;
          gMonEffect.row = gDuelCursor.currentY;
          gMonEffect.zone = gDuelCursor.currentX;
          ActivateMonsterEffect();
          if (gNotSure[0]->unkThree)
            LockMonsterCardsInRow(4);
          UpdateDuelGfxExceptField();
          CheckWinConditionExodia();
          if (IsDuelOver() != 1)
            sub_8029820();
        }
      }
      else
        goto FAILED;
      break;
    case 5:
      if (gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending)
        if (gNotSure[0]->defenseBlocked)
          gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending = 0;
      UpdateDuelGfxExceptField();
      break;
  }
}


void sub_8044570 (void) {
  u8 turn = WhoseTurn();
  if (GetDuelistStatus(turn) == CANNOT_ATTACK || gNotSure[0]->sorlTurns) { // attacking forbidden
    PlayMusic(SFX_FORBIDDEN);
    gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isLocked = 1;
    UpdateDuelGfxExceptField();
  }
  else if (NumEmptyZonesInRow(gZones[1]) == 5) { // Direct Attack
    gTrapEffectData.unk2 = gDuelCursor.currentY;
    gTrapEffectData.unk3 = gDuelCursor.currentX;
    gTrapEffectData.id = gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->id;
    if (IsTrapTriggered() != 1) {
      PlayMusic(SFX_SELECT);
      gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isDefending = 0;
      gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isFaceUp = 1;
      gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isLocked = 1;
      sub_803F8E0(gDuelCursor.currentX);
      HandleDuelAction();
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
    sub_8029820();
  }
  else {
    PlayMusic(SFX_SELECT);
    SelectZone(gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]);
    gDuelCursor.state = 4;
    ResetCursorDestToCurrentPos();
    gDuelCursor.currentX = GetLastNonEmptyMonZoneId(&gDuelBoard[1][4]);
    gDuelCursor.currentY = 1;
    DisplayCardInfoBar();
    sub_8041E70(gDuelCursor.destY, gDuelCursor.currentY);
    UpdateDuelGfxExceptField();
  }
}

// HandlePlayerSpellRowAction
void HandlePlayerSpellRowAction (void) {
  u16 id = gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->id;
  SelectZone(gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]);
  ResetCursorDestToCurrentPos();
  switch (GetSpellType(id)) {
    case 0: //SPELL_TYPE_NORMAL
      gDuelCursor.state = 0;
      gSpellEffectData.id = id;
      gSpellEffectData.unk2 = gDuelCursor.currentY;
      gSpellEffectData.unk3 = gDuelCursor.currentX;
      ActivateSpellEffect();
      if (gNotSure[0]->unkThree)
        LockMonsterCardsInRow(4);
      UpdateDuelGfxExceptField();
      CheckWinConditionExodia();
      if (IsDuelOver() != 1)
        sub_8029820();
      break;
    case 1: //SPELL_TYPE_EQUIP
      PlayMusic(SFX_SELECT);
      gDuelCursor.state = 2;
      gDuelCursor.currentX = GetFirstNonEmptyMonZoneId(gDuelBoard[2]);
      gDuelCursor.currentY = 2;
      break;
    case 2: //SPELL_TYPE_INVALID?
      PlayMusic(SFX_FORBIDDEN);
      gDuelCursor.state = 0;
      break;
  }
  DisplayCardInfoBar();
  sub_8041E70(gDuelCursor.destY, gDuelCursor.currentY);
}

void sub_80447A8 (void) {
  if (gDuelCursor.currentY != 2) {
    PlayMusic(SFX_FORBIDDEN);
    WaitForVBlank();
  }
  else if (gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->id == CARD_NONE) {
    PlayMusic(SFX_FORBIDDEN);
    WaitForVBlank();
  }
  else if (gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isLocked) {
    PlayMusic(SFX_FORBIDDEN);
    WaitForVBlank();
  }
  else {
    SetCardInfo(gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->id);
    if (GetTypeGroup(gCardInfo.id) == 1) {
      gSpellEffectData.id = gDuelBoard[gDuelCursor.destY][gDuelCursor.destX]->id;
      gSpellEffectData.unk4 = gDuelCursor.destY;
      gSpellEffectData.unk5 = gDuelCursor.destX;
      gSpellEffectData.unk2 = gDuelCursor.currentY;
      gSpellEffectData.unk3 = gDuelCursor.currentX;
      ActivateSpellEffect();
    }
    gDuelCursor.state = 0;
    ResetCursorDestToCurrentPos();
    UpdateDuelGfxExceptField();
    sub_8029820();
  }
}

void sub_8044840 (void) {
  if (gDuelCursor.currentY != 1) {
    PlayMusic(SFX_FORBIDDEN);
    WaitForVBlank();
  }
  else if (gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->id == CARD_NONE) {
    PlayMusic(SFX_FORBIDDEN);
    WaitForVBlank();
  }
  else {
    gTrapEffectData.unk2 = gDuelCursor.destY;
    gTrapEffectData.unk3 = gDuelCursor.destX;
    gTrapEffectData.id = gDuelBoard[gDuelCursor.destY][gDuelCursor.destX]->id;
    if (IsTrapTriggered() != 1) {
      PlayMusic(SFX_SELECT);
      gDuelBoard[gDuelCursor.destY][gDuelCursor.destX]->isDefending = 0;
      gDuelBoard[gDuelCursor.destY][gDuelCursor.destX]->isFaceUp = 1;
      gDuelBoard[gDuelCursor.destY][gDuelCursor.destX]->isLocked = 1;
      gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]->isFaceUp = 1;
      SetDuelActionAttack(gDuelCursor.destX, gDuelCursor.currentX);
      HandleDuelAction();
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
    sub_8029820();
  }
}

static void TryPlaceSelectedCardOnField (void) {
  SetCardInfo(gDuelBoard[gDuelCursor.destY][gDuelCursor.destX]->id);
  switch (GetTypeGroup(gCardInfo.id)) {
    case TYPE_GROUP_SPELL:
    case TYPE_GROUP_TRAP:
    case TYPE_GROUP_RITUAL:
      if (gDuelCursor.currentY == 3) {
        PlayMusic(SFX_PLACE_CARD);
        sub_80449D8();
        WinConditionFINAL();
        sub_8029820();
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
        sub_80404F0(0);
        LockMonsterCardsInRow(4);
        ResetNumTributes();
        sub_80449D8();
        sub_8029820();
      }
  }
}

void sub_80449D8 (void) {
  ClearZone(gDuelBoard[gDuelCursor.destY][gDuelCursor.destX]);
  CopySelectedCardToZone(gDuelBoard[gDuelCursor.currentY][gDuelCursor.currentX]);
  gDuelCursor.state = 0;
  ResetCursorDestToCurrentPos();
  UpdateDuelGfxExceptField();
}

void OpenBMenu (void) {
  PlayMusic(SFX_SELECT);
  BMenuMain();
}

void sub_8044A30 (void) {
  u8 currY;
  PlayMusic(SFX_CANCEL);
  currY = gDuelCursor.currentY;
  gDuelCursor.state = 0;
  SetCursorToCardDest();
  DisplayCardInfoBar();
  sub_8041E70(currY, gDuelCursor.currentY);
}

void sub_8044A5C (void) {
  u8 currY;
  PlayMusic(SFX_CANCEL);
  currY = gDuelCursor.currentY;
  gDuelCursor.state = 0;
  SetCursorToCardDest();
  DisplayCardInfoBar();
  sub_8041E70(currY, gDuelCursor.currentY);
}

void sub_8044A88 (void) {
  u8 currY;
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
      sub_80447A8();
      break;
    case 4:
      sub_8044840();
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
  u8 r4;
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
_08044C08: .4byte gHands+0x14\n\
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
  u8 i;
  const unsigned char arr[] = {0x10, 0x3C, 0x68, 0x94, 0xC0}; //opponent hand coords
  u8* ptr;
  for (i = 0; i < 5; i++) {
    u16 cardId = gHands[1][4 - i]->id;
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
  u8 i;
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
