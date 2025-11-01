#include "global.h"

void sub_802ADA4 (void);
void sub_802ADF4 (void);
void ResetTempStagesForAllCards (void);
void sub_80408BC (void);



extern void (*g8E0C940[]) (void);
extern unsigned char (*g8E0CA80[]) (void);

extern unsigned char* gCardAttributeStrings[];
extern u32* g8E0CBF0[];
extern unsigned char g80C7DDC[];/*sweeping cursor tiles*/
extern struct OamData gOamBuffer[];

void sub_8040880 (unsigned char* dest, unsigned char* src);
void sub_8040868 (void);

void sub_802AE98 (void) {
  sub_8040880(gBgVram.cbb4 + 0x3080, g80C7DDC);
  sub_8040868(); //copy palette
}

void sub_802AEB4 (void) {
  u16* oam = (u16*)(gOamBuffer + 98);
  *oam++ = 0x200;
  *oam++ = 0;
  *oam++ = 0;
  oam++;

  *oam++ = 0x200;
  *oam++ = 0;
  *oam++ = 0;
  oam++;

  *oam++ = 0x200;
  *oam++ = 0;
  *oam++ = 0;
  oam++;

  *oam++ = 0x200;
  *oam++ = 0;
  *oam++ = 0;
}

static void TryActivatingTurnEffect (void);
static unsigned sub_802BBF0 (void);

static void CheckBoardForTurnEffects (void) {
  unsigned char i;
  gActiveEffect.turnRow = 4;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    gActiveEffect.col = i;
    gActiveEffect.cardId = gTurnHands[ACTIVE_DUELIST][gActiveEffect.col]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802BBF0() == 1) {
      sub_8034FEC(375);
      TryActivatingTurnEffect();
      if (!gHideEffectText)
        PlayMusic(MUSIC_375);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(375);
      return;
    }
  }
  gActiveEffect.turnRow = 5;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    gActiveEffect.col = i;
    gActiveEffect.cardId = gTurnHands[INACTIVE_DUELIST][gActiveEffect.col]->id;
    if (!gHideEffectText)
      sub_802ADF4();
    if (sub_802BBF0() == 1) {
      sub_8034FEC(375);
      TryActivatingTurnEffect();
      if (!gHideEffectText)
        PlayMusic(MUSIC_375);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(375);
      return;
    }
  }
  if (!gHideEffectText)
    PlayMusic(MUSIC_375);
  gActiveEffect.turnRow = 6;
  gActiveEffect.col = 0;
  gActiveEffect.cardId = gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard;
  if (!gHideEffectText)
    sub_802ADF4();
  if (sub_802BBF0() == 1) {
    sub_8034FEC(375);
    TryActivatingTurnEffect();
    if (!gHideEffectText)
      PlayMusic(MUSIC_375);
  }
  if (IsDuelOver() == 1) {
    sub_8034FEC(375);
    return;
  }
  gActiveEffect.turnRow = 7;
  gActiveEffect.col = 0;
  gActiveEffect.cardId = gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard;
  if (!gHideEffectText)
    sub_802ADF4();
  if (sub_802BBF0() == 1) {
    sub_8034FEC(375);
    TryActivatingTurnEffect();
    if (!gHideEffectText)
      PlayMusic(MUSIC_375);
  }
  if (IsDuelOver() == 1) {
    sub_8034FEC(375);
    return;
  }

  gActiveEffect.turnRow = 2;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    gActiveEffect.col = i;
    gActiveEffect.cardId = gTurnZones[gActiveEffect.turnRow][i]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802BBF0() == 1) {
      sub_8034FEC(375);
      TryActivatingTurnEffect();
      if (!gHideEffectText)
        PlayMusic(MUSIC_375);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(375);
      return;
    }
  }

  gActiveEffect.turnRow = 1;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    gActiveEffect.col = i;
    gActiveEffect.cardId = gTurnZones[gActiveEffect.turnRow][i]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802BBF0() == 1) {
      sub_8034FEC(375);
      TryActivatingTurnEffect();
      if (!gHideEffectText)
        PlayMusic(MUSIC_375);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(375);
      return;
    }
  }

  gActiveEffect.turnRow = 3;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    gActiveEffect.col = i;
    gActiveEffect.cardId = gTurnZones[gActiveEffect.turnRow][i]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802BBF0() == 1) {
      sub_8034FEC(375);
      TryActivatingTurnEffect();
      CheckWinConditionFINAL();
      if (!gHideEffectText)
        PlayMusic(MUSIC_375);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(375);
      return;
    }
  }

  gActiveEffect.turnRow = 0;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    gActiveEffect.col = i;
    gActiveEffect.cardId = gTurnZones[gActiveEffect.turnRow][i]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802BBF0() == 1) {
      sub_8034FEC(375);
      TryActivatingTurnEffect();
      if (!gHideEffectText)
        PlayMusic(MUSIC_375);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(375);
      return;
    }
  }
  sub_8034FEC(375);
}

static void EffectCastleOfDarkIllusions (void) {
  unsigned char i;

  gDuel.field = FIELD_YAMI;
  if (gActiveEffect.turnRow == 1) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
      if (gTurnZones[1][i]->id != CARD_NONE)
        FlipCardFaceDown(gTurnZones[1][i]);

    FlipCardFaceUp(gTurnZones[1][gActiveEffect.col]);
    if (!gHideEffectText) {
      SetDuelFieldGfx(gDuel.field);
      gCardEffectTextData.cardId = CASTLE_OF_DARK_ILLUSIONS;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
      if (gTurnZones[2][i]->id != CARD_NONE)
        FlipCardFaceDown(gTurnZones[2][i]);

    FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
    if (!gHideEffectText) {
      SetDuelFieldGfx(gDuel.field);
      gCardEffectTextData.cardId = CASTLE_OF_DARK_ILLUSIONS;
      ActivateCardEffectText();
    }
  }
}

static void EffectDestinyBoard (void) {
  unsigned char zone;
  unsigned short flags;

  if (gActiveEffect.turnRow != 3 || NumEmptyZonesInRow(gTurnZones[3]) >= 5)
    return;
  zone = FirstEmptyZoneInRow(gTurnZones[3]);
  flags = GetFINAL_Flags();
  if (!(flags & FLAG_F))
    return;

  if (!(flags & FLAG_I))
    gTurnZones[3][zone]->id = SPIRIT_MESSAGE_I;
  else if (!(flags & FLAG_N))
    gTurnZones[3][zone]->id = SPIRIT_MESSAGE_N;
  else if (!(flags & FLAG_A))
    gTurnZones[3][zone]->id = SPIRIT_MESSAGE_A;
  else if (!(flags & FLAG_L))
    gTurnZones[3][zone]->id = SPIRIT_MESSAGE_L;
  else
    return;

  for (zone = 0; zone < 5; zone++) {
    struct DuelCard* ptr = gTurnZones[3][zone];
    if (GetFINAL_Flag(ptr->id))
      FlipCardFaceUp(ptr);
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void EffectJamBreedingMachine (void) {
  if (gActiveEffect.turnRow != 3)
    return;
  FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  if (NumEmptyZonesInRow(gTurnZones[2]) > 0) {
    unsigned char zone = FirstEmptyZoneInRow(gTurnZones[2]);
    gTurnZones[2][zone]->id = CHANGE_SLIME;
    gTurnZones[2][zone]->isDefending = FALSE;
    FlipCardFaceUp(gTurnZones[2][zone]);
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
    ActivateCardEffectText();
  }
}

static void EffectMirageKnight (void) {
  struct DuelCard* ptr;

  if (gActiveEffect.turnRow != 1)
    return;

  ptr = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col];
  ptr->id = DARK_MAGICIAN;
  ResetPermStage(ptr);
  ResetTempStage(ptr);
  ptr->unk4 = 0;
  UnlockCard(ptr);
  ptr->isDefending = FALSE;
  ptr->unkTwo = 0;
  ptr->unkThree = 0;
  FlipCardFaceUp(ptr);
  ptr->willChangeSides = 0;

  if (NumEmptyZonesInRow(gTurnZones[1]) > 0) {
    ptr = gTurnZones[1][(unsigned char)FirstEmptyZoneInRow(gTurnZones[1])];
    ptr->id = FLAME_SWORDSMAN;
    ResetPermStage(ptr);
    ResetTempStage(ptr);
    ptr->unk4 = 0;
    UnlockCard(ptr);
    ptr->isDefending = FALSE;
    ptr->unkTwo = 0;
    ptr->unkThree = 0;
    FlipCardFaceUp(ptr);
    ptr->willChangeSides = 0;
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = MIRAGE_KNIGHT;
    ActivateCardEffectText();
  }
}

static void EffectVampireLord (void) {
  u16 temp;
  struct DuelCard* ptr;

  if (gActiveEffect.turnRow != 6 || gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard != gActiveEffect.cardId)
    return;
  if (!NumEmptyZonesInRow(gTurnZones[2]))
    return;
  temp = GetGraveCardAndClearGrave(ACTIVE_DUELIST);
  ptr = gTurnZones[2][(unsigned char)FirstEmptyZoneInRow(gTurnZones[2])];
  ptr->id = temp;
  ResetPermStage(ptr);
  ResetTempStage(ptr);
  ptr->unk4 = 0;
  UnlockCard(ptr);
  ptr->isDefending = FALSE;
  ptr->unkTwo = 0;
  ptr->unkThree = 0;
  FlipCardFaceUp(ptr);
  ptr->willChangeSides = 0;
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void EffectDifferentDimensionDragon (void) {
  u16 temp;
  struct DuelCard* ptr;

  if (gActiveEffect.turnRow != 6 || gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard != gActiveEffect.cardId)
    return;
  if (!NumEmptyZonesInRow(gTurnZones[2]))
    return;
  temp = GetGraveCardAndClearGrave(ACTIVE_DUELIST);
  ptr = gTurnZones[2][(unsigned char)FirstEmptyZoneInRow(gTurnZones[2])];
  ptr->id = temp;
  ResetPermStage(ptr);
  ResetTempStage(ptr);
  ptr->unk4 = 0;
  UnlockCard(ptr);
  ptr->isDefending = FALSE;
  ptr->unkTwo = 0;
  ptr->unkThree = 0;
  FlipCardFaceUp(ptr);
  ptr->willChangeSides = 0;
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

void TryActivatingTurnEffects (void) {
  gActiveEffect.turn = WhoseTurn();
  if (!gHideEffectText) {
    sub_80408BC(); //clear oam stuff?
    sub_802ADA4(); //Init sweeping cursor gfx
  }
  ResetTempStagesForAllCards();
  CheckBoardForTurnEffects();
}

static void TryActivatingTurnEffect (void) {
  ResetCardEffectTextData();
  SetCardEffectTextType(9);
  SetCardInfo(gActiveEffect.cardId);
  g8E0C940[gCardInfo.unk1E]();
}

static void EffectNone (void) {
}

static void EffectJinzo (void) {
}

static void EffectSliferTheSkyDragon (void) {
}

static void EffectDragonCaptureJar (void) {
}

static void EffectPumpkingTheKingOfGhosts (void) {
}

static void Effect_HARPIE_LADY (void) {
}

static void EffectHARPIE_LADY_SISTERS (void) {
}

static void EffectCYBER_HARPIE (void) {
}

static void EffectMYSTICAL_ELF (void) {
}

static void EffectMONSTER_TAMER (void) {
}

static void EffectMAMMOTH_GRAVEYARD (void) {
}

static void EffectDARK_MAGICIAN_GIRL (void) {
}

static void EffectTOON_DARK_MAGICIAN_GIRL (void) {
}

static void EffectWODAN_THE_RESIDENT_OF_THE_FOREST (void) {
}

static void EffectSWAMP_BATTLEGUARD (void) {
}

static void EffectLAVA_BATTLEGUARD (void) {
}

static void EffectM_WARRIOR_1 (void) {
}

static void EffectM_WARRIOR_2 (void) {
}

static void EffectLABYRINTH_TANK (void) {
}

static void EffectHOSHININGEN (void) {
}

static void EffectWITCHS_APPRENTICE (void) {
}

static void EffectINSECT_QUEEN (void) {
}

static void EffectBUSTER_BLADER (void) {
}

static void EffectMASTER_OF_DRAGON_SOLDIER (void) {
}

static void EffectTHUNDER_NYAN_NYAN (void) {
}

//TODO: remove the subtractlifepoints part since it can be deduced from the fact that it's
//in turn_effect.c (same with lava golem)
static void EffectMessengerOfPeace_SubtractLifePoints (void) {
  if (gActiveEffect.turnRow != 3)
    return;
  FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  if (gActiveEffect.turn == ACTIVE_DUELIST) {
    SetPlayerLifePointsToSubtract(1000);
    HandleAtkAndLifePointsAction();
    CheckLoserFlags();
  }
  else {
    SetOpponentLifePointsToSubtract(1000);
    HandleAtkAndLifePointsAction();
    CheckLoserFlags();
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void EffectHelpoemer (void) {
  if (gActiveEffect.turnRow != 7 || NumEmptyZonesInRow(gTurnHands[ACTIVE_DUELIST]) == MAX_ZONES_IN_ROW)
    return;
  ClearZoneAndSendMonToGraveyard(gTurnHands[ACTIVE_DUELIST][(unsigned char)FirstNonEmptyZoneInRow(gTurnHands[ACTIVE_DUELIST])], ACTIVE_DUELIST);
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void EffectLavaGolem_SubtractLifePoints (void) {
  if (gActiveEffect.turnRow != 2)
    return;
  FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
  if (gActiveEffect.turn == ACTIVE_DUELIST) {
    SetPlayerLifePointsToSubtract(700);
    HandleAtkAndLifePointsAction();
    CheckLoserFlags();
  }
  else {
    SetOpponentLifePointsToSubtract(700);
    HandleAtkAndLifePointsAction();
    CheckLoserFlags();
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void EffectDARK_JEROID (void) {
}

static void EffectBLADE_KNIGHT (void) {
}

static void EffectDARK_PALADIN (void) {
}

static void EffectViserDes (void) {
  if (gActiveEffect.turnRow != 2 || NumEmptyZonesInRow(gTurnZones[1]) == MAX_ZONES_IN_ROW)
    return;
  FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
  DecrementPermStage(gTurnZones[1][(unsigned char)HighestAtkMonInRow(gTurnZones[1])]);
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void EffectTHE_WINGED_DRAGON_OF_RA_PHOENIX_MODE (void) {
}

static void EffectNewdoria (void) {
  if (gActiveEffect.turnRow != 6 || NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) == MAX_ZONES_IN_ROW)
    return;
  ClearZoneAndSendMonToGraveyard(gTurnZones[1][(unsigned char)HighestAtkMonInRowExceptGodCards(gTurnZones[1])], INACTIVE_DUELIST);
  GetGraveCardAndClearGrave(ACTIVE_DUELIST);
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void EffectMACHINE_KING (void) {
}

static void EffectPERFECT_MACHINE_KING (void) {
}

static void EffectCOMMAND_ANGEL (void) {
}

static void EffectNIGHTMARE_PENGUIN (void) {
}

static void EffectBerserkDragon (void) {
  if (gActiveEffect.turnRow != 1)
    return;
  FlipCardFaceUp(gTurnZones[1][gActiveEffect.col]);
  DecrementPermStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
    ActivateCardEffectText();
  }
}

static void EffectDARK_FLARE_KNIGHT (void) {
}

static void EffectExodiaNecross_PowerUp (void) {
  struct DuelCard* ptr;
  if (gActiveEffect.turnRow != 2)
    return;
  ptr = gTurnZones[2][gActiveEffect.col];
  FlipCardFaceUp(ptr);
  IncrementPermStage(ptr);
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void EffectSPIRIT_MESSAGE_I (void) {
}

static void EffectSPIRIT_MESSAGE_N (void) {
}

static void EffectSPIRIT_MESSAGE_A (void) {
}

static void EffectSPIRIT_MESSAGE_L (void) {
}

static void EffectSatelliteCannon (void) {
  struct DuelCard* ptr;
  int i;

  if (gActiveEffect.turnRow != 2)
    return;
  ptr = gTurnZones[2][gActiveEffect.col];
  FlipCardFaceUp(ptr);

  for (i = 2; i && GetFinalStage(ptr) <= 5; i--)
    IncrementPermStage(ptr);

  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void EmptyFunc_802BAB4 (void) {
}

static void EmptyFunc_802BAB8 (void) {
}

static void EmptyFunc_802BABC (void) {
}

static void EmptyFunc_802BAC0 (void) {
}

static void EmptyFunc_802BAC4 (void) {
}

static void EmptyFunc_802BAC8 (void) {
}

static void EmptyFunc_802BACC (void) {
}

static void EmptyFunc_802BAD0 (void) {
}

static void EmptyFunc_802BAD4 (void) {
}

static void EmptyFunc_802BAD8 (void) {
}

static void EmptyFunc_802BADC (void) {
}

static void EmptyFunc_802BAE0 (void) {
}

static void EmptyFunc_802BAE4 (void) {
}

static void EmptyFunc_802BAE8 (void) {
}

static void EmptyFunc_802BAEC (void) {
}

static void EmptyFunc_802BAF0 (void) {
}

static void EmptyFunc_802BAF4 (void) {
}

static void EmptyFunc_802BAF8 (void) {
}

static void EmptyFunc_802BAFC (void) {
}

static void EmptyFunc_802BB00 (void) {
}

static void EmptyFunc_802BB04 (void) {
}

static void EmptyFunc_802BB08 (void) {
}

static void EmptyFunc_802BB0C (void) {
}

static void EmptyFunc_802BB10 (void) {
}

static void EmptyFunc_802BB14 (void) {
}

static void EmptyFunc_802BB18 (void) {
}

static void EmptyFunc_802BB1C (void) {
}

static void EmptyFunc_802BB20 (void) {
}

static unsigned char ConditionCastleOfDarkIllusions (void) {
  u32 ret = 0;
  unsigned char i;

  if (gActiveEffect.turnRow == 1) {
    if (gDuel.field != FIELD_YAMI)
      ret = 1;
    else if (gActiveEffect.col == GetFirstCardMatchZoneId(gTurnZones[1], CASTLE_OF_DARK_ILLUSIONS))
      for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
        if (gTurnZones[1][i]->id == CARD_NONE)
          continue;
        if (i == gActiveEffect.col)
          continue;
        if (IsCardFaceUp(gTurnZones[1][i]) != 1)
          continue;
        ret = 1;
        break;
      }
  }
  else if (gActiveEffect.turnRow == 2) {
    if (gDuel.field != FIELD_YAMI)
      ret = 1;
    else if (gActiveEffect.col == GetFirstCardMatchZoneId(gTurnZones[2], CASTLE_OF_DARK_ILLUSIONS))
      for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
        if (gTurnZones[2][i]->id == CARD_NONE)
          continue;
        if (i == gActiveEffect.col)
          continue;
        if (IsCardFaceUp(gTurnZones[2][i]) != 1)
          continue;
        ret = 1;
        break;
      }
  }
  return ret;
}

static unsigned sub_802BBF0 (void) {
  SetCardInfo(gActiveEffect.cardId);
  return g8E0CA80[gCardInfo.unk1E]();
}

static unsigned char ConditionEffectNone (void) {
  return 0;
}

static unsigned char ConditionJinzo (void) {
  return 0;
}

static unsigned char ConditionSliferTheSkyDragon (void) {
  return 0;
}

static unsigned char ConditionDRAGON_CAPTURE_JAR (void) {
  return 0;
}

static unsigned char ConditionPUMPKING_THE_KING_OF_GHOSTS (void) {
  return 0;
}

static unsigned char ConditionHARPIE_LADY (void) {
  return 0;
}

static unsigned char ConditionHARPIE_LADY_SISTERS (void) {
  return 0;
}

static unsigned char ConditionCYBER_HARPIE (void) {
  return 0;
}

static unsigned char ConditionMYSTICAL_ELF (void) {
  return 0;
}

static unsigned char ConditionMONSTER_TAMER (void) {
  return 0;
}

static unsigned char ConditionMAMMOTH_GRAVEYARD (void) {
  return 0;
}

static unsigned char ConditionDARK_MAGICIAN_GIRL (void) {
  return 0;
}

static unsigned char ConditionTOON_DARK_MAGICIAN_GIRL (void) {
  return 0;
}

static unsigned char ConditionWODAN_THE_RESIDENT_OF_THE_FOREST (void) {
  return 0;
}

static unsigned char ConditionSWAMP_BATTLEGUARD (void) {
  return 0;
}

static unsigned char ConditionLAVA_BATTLEGUARD (void) {
  return 0;
}

static unsigned char ConditionM_WARRIOR_1 (void) {
  return 0;
}

static unsigned char ConditionM_WARRIOR_2 (void) {
  return 0;
}

static unsigned char ConditionLABYRINTH_TANK (void) {
  return 0;
}

static unsigned char ConditionHOSHININGEN (void) {
  return 0;
}

static unsigned char ConditionWITCHS_APPRENTICE (void) {
  return 0;
}

static unsigned char ConditionINSECT_QUEEN (void) {
  return 0;
}

static unsigned char ConditionBUSTER_BLADER (void) {
  return 0;
}

static unsigned char ConditionMASTER_OF_DRAGON_SOLDIER (void) {
  return 0;
}

static unsigned char ConditionTHUNDER_NYAN_NYAN (void) {
  return 0;
}

static unsigned char ConditionMESSENGER_OF_PEACE (void) {
  unsigned char ret = 0;
  if (gActiveEffect.turnRow == 3 &&
      gActiveEffect.col == GetFirstCardMatchZoneId(gTurnZones[3], gActiveEffect.cardId))
    ret = 1;
  return ret;
}

static unsigned char ConditionDestinyBoard_NewLetter (void) {
  unsigned char ret = 0;
  if (gActiveEffect.turnRow == 3 &&
      gActiveEffect.col == GetFirstCardMatchZoneId(gTurnZones[3], DESTINY_BOARD) &&
      NumEmptyZonesInRow(gTurnZones[3]) > 0)
    ret = 1;
  return ret;
}

static unsigned char ConditionHelpoemer (void) {
  return gActiveEffect.turnRow == 7 && NumEmptyZonesInRow(gTurnHands[ACTIVE_DUELIST]) <= 2;
}

static unsigned char ConditionLAVA_GOLEM (void) {
  return gActiveEffect.turnRow == 2;
}

static unsigned char ConditionDARK_JEROID (void) {
  return 0;
}

static unsigned char ConditionBLADE_KNIGHT (void) {
  return 0;
}

static unsigned char ConditionDARK_PALADIN (void) {
  return 0;
}

static unsigned char ConditionJamBreedingMachine_Summon (void) {
  if (gActiveEffect.turnRow == 3 &&
      NumEmptyZonesInRow(gTurnZones[2]) != 0 &&
      gActiveEffect.col == GetFirstCardMatchZoneId(gTurnZones[3], JAM_BREEDING_MACHINE))
    return 1;
  return 0;
}

static unsigned char ConditionViserDes (void) {
  if (gActiveEffect.turnRow == 2 && NumEmptyZonesInRow(gTurnZones[1]) < MAX_ZONES_IN_ROW)
    return 1;
  return 0;
}

static unsigned char ConditionTHE_WINGED_DRAGON_OF_RA_PHOENIX_MODE (void) {
  return 0;
}

static unsigned char ConditionNewdoria (void) {
  if (gActiveEffect.turnRow == 6 && NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) != MAX_ZONES_IN_ROW)
    return 1;
  return 0;
}

static unsigned char ConditionMACHINE_KING (void) {
  return 0;
}

static unsigned char ConditionPERFECT_MACHINE_KING (void) {
  return 0;
}

static unsigned char ConditionCOMMAND_ANGEL (void) {
  return 0;
}

static unsigned char ConditionNIGHTMARE_PENGUIN (void) {
  return 0;
}

static unsigned char ConditionBERSERK_DRAGON (void) {
  if (gActiveEffect.turnRow == 1)
    return 1;
  return 0;
}

static unsigned char ConditionMIRAGE_KNIGHT (void) {
  if (gActiveEffect.turnRow == 1)
    return 1;
  return 0;
}

static unsigned char ConditionDARK_FLARE_KNIGHT (void) {
  return 0;
}

static unsigned char ConditionVAMPIRE_LORD (void) {
  if (gActiveEffect.turnRow == 6 &&
      gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == gActiveEffect.cardId &&
      NumEmptyZonesInRow(gTurnZones[2]) > 0)
    return 1;
  return 0;
}

static unsigned char ConditionDIFFERENT_DIMENSION_DRAGON (void) {
  if (gActiveEffect.turnRow == 6 &&
      gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == gActiveEffect.cardId &&
      NumEmptyZonesInRow(gTurnZones[2]) > 0)
    return 1;
  return 0;
}

static unsigned char ConditionExodiaNecross_PowerUp (void) {
  if (gActiveEffect.turnRow == 2 && GetExodiaFlag(gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard))
    return 1;
  return 0;
}

static unsigned char ConditionSPIRIT_MESSAGE_I (void) {
  return 0;
}

static unsigned char ConditionSPIRIT_MESSAGE_N (void) {
  return 0;
}

static unsigned char ConditionSPIRIT_MESSAGE_A (void) {
  return 0;
}

static unsigned char ConditionSPIRIT_MESSAGE_L (void) {
  return 0;
}

static unsigned char ConditionSatelliteCannon (void) {
  if (gActiveEffect.turnRow == 2 && GetFinalStage(gTurnZones[2][gActiveEffect.col]) <= 5)
    return 1;
  return 0;
}

static unsigned char sub_802BEE0 (void) {
  return 0;
}

static unsigned char sub_802BEE4 (void) {
  return 0;
}

static unsigned char sub_802BEE8 (void) {
  return 0;
}

static unsigned char sub_802BEEC (void) {
  return 0;
}

static unsigned char sub_802BEF0 (void) {
  return 0;
}

static unsigned char sub_802BEF4 (void) {
  return 0;
}

static unsigned char sub_802BEF8 (void) {
  return 0;
}

static unsigned char sub_802BEFC (void) {
  return 0;
}

static unsigned char sub_802BF00 (void) {
  return 0;
}

static unsigned char sub_802BF04 (void) {
  return 0;
}

static unsigned char sub_802BF08 (void) {
  return 0;
}

static unsigned char sub_802BF0C (void) {
  return 0;
}

static unsigned char sub_802BF10 (void) {
  return 0;
}

static unsigned char sub_802BF14 (void) {
  return 0;
}

static unsigned char sub_802BF18 (void) {
  return 0;
}

static unsigned char sub_802BF1C (void) {
  return 0;
}

static unsigned char sub_802BF20 (void) {
  return 0;
}

static unsigned char sub_802BF24 (void) {
  return 0;
}

static unsigned char sub_802BF28 (void) {
  return 0;
}

static unsigned char sub_802BF2C (void) {
  return 0;
}

static unsigned char sub_802BF30 (void) {
  return 0;
}

static unsigned char sub_802BF34 (void) {
  return 0;
}

static unsigned char sub_802BF38 (void) {
  return 0;
}

static unsigned char sub_802BF3C (void) {
  return 0;
}

static unsigned char sub_802BF40 (void) {
  return 0;
}

static unsigned char sub_802BF44 (void) {
  return 0;
}

static unsigned char sub_802BF48 (void) {
  return 0;
}

static unsigned char sub_802BF4C (void) {
  return 0;
}
/*
static void (*g8E0C940[]) (void) = {
  [PERMANENT_EFFECT_NONE] = EffectNone,
  [PERMANENT_EFFECT_JINZO] = EffectJinzo,
  [PERMANENT_EFFECT_SLIFER_THE_SKY_DRAGON] = EffectSliferTheSkyDragon,
  [PERMANENT_EFFECT_DRAGON_CAPTURE_JAR] = EffectDragonCaptureJar,
  [PERMANENT_EFFECT_CASTLE_OF_DARK_ILLUSIONS] = EffectCastleOfDarkIllusions,
  [PERMANENT_EFFECT_PUMPKING_THE_KING_OF_GHOSTS] = EffectPumpkingTheKingOfGhosts,
  [PERMANENT_EFFECT_HARPIE_LADY] = Effect_HARPIE_LADY,
  [PERMANENT_EFFECT_HARPIE_LADY_SISTERS] = EffectHARPIE_LADY_SISTERS,
  [PERMANENT_EFFECT_CYBER_HARPIE] = EffectCYBER_HARPIE,
  [PERMANENT_EFFECT_MYSTICAL_ELF] = EffectMYSTICAL_ELF,
  [PERMANENT_EFFECT_MONSTER_TAMER] = EffectMONSTER_TAMER,
  [PERMANENT_EFFECT_MAMMOTH_GRAVEYARD] = EffectMAMMOTH_GRAVEYARD,
  [PERMANENT_EFFECT_DARK_MAGICIAN_GIRL] = EffectDARK_MAGICIAN_GIRL,
  [PERMANENT_EFFECT_TOON_DARK_MAGICIAN_GIRL] = EffectTOON_DARK_MAGICIAN_GIRL,
  [PERMANENT_EFFECT_WODAN_THE_RESIDENT_OF_THE_FOREST] = EffectWODAN_THE_RESIDENT_OF_THE_FOREST,
  [PERMANENT_EFFECT_SWAMP_BATTLEGUARD] = EffectSWAMP_BATTLEGUARD,
  [PERMANENT_EFFECT_LAVA_BATTLEGUARD] = EffectLAVA_BATTLEGUARD,
  [PERMANENT_EFFECT_M_WARRIOR_1] = EffectM_WARRIOR_1,
  [PERMANENT_EFFECT_M_WARRIOR_2] = EffectM_WARRIOR_2,
  [PERMANENT_EFFECT_LABYRINTH_TANK] = EffectLABYRINTH_TANK,
  [PERMANENT_EFFECT_HOSHININGEN] = EffectHOSHININGEN,
  [PERMANENT_EFFECT_WITCHS_APPRENTICE] = EffectWITCHS_APPRENTICE,
  [PERMANENT_EFFECT_INSECT_QUEEN] = EffectINSECT_QUEEN,
  [PERMANENT_EFFECT_BUSTER_BLADER] = EffectBUSTER_BLADER,
  [PERMANENT_EFFECT_MASTER_OF_DRAGON_SOLDIER] = EffectMASTER_OF_DRAGON_SOLDIER,
  [PERMANENT_EFFECT_THUNDER_NYAN_NYAN] = EffectTHUNDER_NYAN_NYAN,
  [PERMANENT_EFFECT_MESSENGER_OF_PEACE] = EffectMessengerOfPeace_SubtractLifePoints,
  [PERMANENT_EFFECT_DESTINY_BOARD] = EffectDestinyBoard,
  [PERMANENT_EFFECT_HELPOEMER] = EffectHelpoemer,
  [PERMANENT_EFFECT_LAVA_GOLEM] = EffectLavaGolem_SubtractLifePoints,
  [PERMANENT_EFFECT_DARK_JEROID] = EffectDARK_JEROID,
  [PERMANENT_EFFECT_BLADE_KNIGHT] = EffectBLADE_KNIGHT,
  [PERMANENT_EFFECT_DARK_PALADIN] = EffectDARK_PALADIN,
  [PERMANENT_EFFECT_JAM_BREEDING_MACHINE] = EffectJamBreedingMachine,
  [PERMANENT_EFFECT_VISER_DES] = EffectViserDes,
  [PERMANENT_EFFECT_THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE] = EffectTHE_WINGED_DRAGON_OF_RA_PHOENIX_MODE,
  [PERMANENT_EFFECT_NEWDORIA] = EffectNewdoria,
  [PERMANENT_EFFECT_MACHINE_KING] = EffectMACHINE_KING,
  [PERMANENT_EFFECT_PERFECT_MACHINE_KING] = EffectPERFECT_MACHINE_KING,
  [PERMANENT_EFFECT_COMMAND_ANGEL] = EffectCOMMAND_ANGEL,
  [PERMANENT_EFFECT_NIGHTMARE_PENGUIN] = EffectNIGHTMARE_PENGUIN,
  [PERMANENT_EFFECT_BERSERK_DRAGON] = EffectBerserkDragon,
  [PERMANENT_EFFECT_MIRAGE_KNIGHT] = EffectMirageKnight,
  [PERMANENT_EFFECT_DARK_FLARE_KNIGHT] = EffectDARK_FLARE_KNIGHT,
  [PERMANENT_EFFECT_VAMPIRE_LORD] = EffectVampireLord,
  [PERMANENT_EFFECT_DIFFERENT_DIMENSION_DRAGON] = EffectDifferentDimensionDragon,
  [PERMANENT_EFFECT_EXODIA_NECROSS] = EffectExodiaNecross_PowerUp,
  [PERMANENT_EFFECT_SPIRIT_MESSAGE_I] = EffectSPIRIT_MESSAGE_I,
  [PERMANENT_EFFECT_SPIRIT_MESSAGE_N] = EffectSPIRIT_MESSAGE_N,
  [PERMANENT_EFFECT_SPIRIT_MESSAGE_A] = EffectSPIRIT_MESSAGE_A,
  [PERMANENT_EFFECT_SPIRIT_MESSAGE_L] = EffectSPIRIT_MESSAGE_L,
  [PERMANENT_EFFECT_SATELLITE_CANNON] = EffectSatelliteCannon
};

static unsigned char (*g8E0CA80[]) (void) = {
  [PERMANENT_EFFECT_NONE] = ConditionEffectNone,
  [PERMANENT_EFFECT_JINZO] = ConditionJINZO,
  [PERMANENT_EFFECT_SLIFER_THE_SKY_DRAGON] = ConditionSLIFER_THE_SKY_DRAGON,
  [PERMANENT_EFFECT_DRAGON_CAPTURE_JAR] = ConditionDRAGON_CAPTURE_JAR,
  [PERMANENT_EFFECT_CASTLE_OF_DARK_ILLUSIONS] = ConditionCASTLE_OF_DARK_ILLUSIONS,
  [PERMANENT_EFFECT_PUMPKING_THE_KING_OF_GHOSTS] = ConditionPUMPKING_THE_KING_OF_GHOSTS,
  [PERMANENT_EFFECT_HARPIE_LADY] = ConditionHARPIE_LADY,
  [PERMANENT_EFFECT_HARPIE_LADY_SISTERS] = ConditionHARPIE_LADY_SISTERS,
  [PERMANENT_EFFECT_CYBER_HARPIE] = ConditionCYBER_HARPIE,
  [PERMANENT_EFFECT_MYSTICAL_ELF] = ConditionMYSTICAL_ELF,
  [PERMANENT_EFFECT_MONSTER_TAMER] = ConditionMONSTER_TAMER,
  [PERMANENT_EFFECT_MAMMOTH_GRAVEYARD] = ConditionMAMMOTH_GRAVEYARD,
  [PERMANENT_EFFECT_DARK_MAGICIAN_GIRL] = ConditionDARK_MAGICIAN_GIRL,
  [PERMANENT_EFFECT_TOON_DARK_MAGICIAN_GIRL] = ConditionTOON_DARK_MAGICIAN_GIRL,
  [PERMANENT_EFFECT_WODAN_THE_RESIDENT_OF_THE_FOREST] = ConditionWODAN_THE_RESIDENT_OF_THE_FOREST,
  [PERMANENT_EFFECT_SWAMP_BATTLEGUARD] = ConditionSWAMP_BATTLEGUARD,
  [PERMANENT_EFFECT_LAVA_BATTLEGUARD] = ConditionLAVA_BATTLEGUARD,
  [PERMANENT_EFFECT_M_WARRIOR_1] = ConditionM_WARRIOR_1,
  [PERMANENT_EFFECT_M_WARRIOR_2] = ConditionM_WARRIOR_2,
  [PERMANENT_EFFECT_LABYRINTH_TANK] = ConditionLABYRINTH_TANK,
  [PERMANENT_EFFECT_HOSHININGEN] = ConditionHOSHININGEN,
  [PERMANENT_EFFECT_WITCHS_APPRENTICE] = ConditionWITCHS_APPRENTICE,
  [PERMANENT_EFFECT_INSECT_QUEEN] = ConditionINSECT_QUEEN,
  [PERMANENT_EFFECT_BUSTER_BLADER] = ConditionBUSTER_BLADER,
  [PERMANENT_EFFECT_MASTER_OF_DRAGON_SOLDIER] = ConditionMASTER_OF_DRAGON_SOLDIER,
  [PERMANENT_EFFECT_THUNDER_NYAN_NYAN] = ConditionTHUNDER_NYAN_NYAN,
  [PERMANENT_EFFECT_MESSENGER_OF_PEACE] = ConditionMESSENGER_OF_PEACE,
  [PERMANENT_EFFECT_DESTINY_BOARD] = ConditionDESTINY_BOARD,
  [PERMANENT_EFFECT_HELPOEMER] = ConditionHELPOEMER,
  [PERMANENT_EFFECT_LAVA_GOLEM] = ConditionLAVA_GOLEM,
  [PERMANENT_EFFECT_DARK_JEROID] = ConditionDARK_JEROID,
  [PERMANENT_EFFECT_BLADE_KNIGHT] = ConditionBLADE_KNIGHT,
  [PERMANENT_EFFECT_DARK_PALADIN] = ConditionDARK_PALADIN,
  [PERMANENT_EFFECT_JAM_BREEDING_MACHINE] = ConditionJAM_BREEDING_MACHINE,
  [PERMANENT_EFFECT_VISER_DES] = ConditionVISER_DES,
  [PERMANENT_EFFECT_THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE] = ConditionTHE_WINGED_DRAGON_OF_RA_PHOENIX_MODE,
  [PERMANENT_EFFECT_NEWDORIA] = ConditionNEWDORIA,
  [PERMANENT_EFFECT_MACHINE_KING] = ConditionMACHINE_KING,
  [PERMANENT_EFFECT_PERFECT_MACHINE_KING] = ConditionPERFECT_MACHINE_KING,
  [PERMANENT_EFFECT_COMMAND_ANGEL] = ConditionCOMMAND_ANGEL,
  [PERMANENT_EFFECT_NIGHTMARE_PENGUIN] = ConditionNIGHTMARE_PENGUIN,
  [PERMANENT_EFFECT_BERSERK_DRAGON] = ConditionBERSERK_DRAGON,
  [PERMANENT_EFFECT_MIRAGE_KNIGHT] = ConditionMIRAGE_KNIGHT,
  [PERMANENT_EFFECT_DARK_FLARE_KNIGHT] = ConditionDARK_FLARE_KNIGHT,
  [PERMANENT_EFFECT_VAMPIRE_LORD] = ConditionVAMPIRE_LORD,
  [PERMANENT_EFFECT_DIFFERENT_DIMENSION_DRAGON] = ConditionDIFFERENT_DIMENSION_DRAGON,
  [PERMANENT_EFFECT_EXODIA_NECROSS] = ConditionEXODIA_NECROSS,
  [PERMANENT_EFFECT_SPIRIT_MESSAGE_I] = ConditionSPIRIT_MESSAGE_I,
  [PERMANENT_EFFECT_SPIRIT_MESSAGE_N] = ConditionSPIRIT_MESSAGE_N,
  [PERMANENT_EFFECT_SPIRIT_MESSAGE_A] = ConditionSPIRIT_MESSAGE_A,
  [PERMANENT_EFFECT_SPIRIT_MESSAGE_L] = ConditionSPIRIT_MESSAGE_L,
  [PERMANENT_EFFECT_SATELLITE_CANNON] = ConditionSATELLITE_CANNON
};
*/


// split? 
unsigned char* GetCardAttributeString (unsigned char attribute) {
  return gCardAttributeStrings[attribute];
}

//unused?
static u32* sub_802BF60 (unsigned char arg0) {
  return g8E0CBF0[arg0];
}
