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

//TODO: rename to turn_effect.c
static void TryActivatingTurnEffect (void);
static unsigned sub_802BBF0 (void);

static void CheckAllCardsForTurnEffects (void) {
  unsigned char i;
  gActiveEffect.turnRow = 4;
  for (i = 0; i < 5; i++) {
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
  for (i = 0; i < 5; i++) {
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
  for (i = 0; i < 5; i++) {
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
  for (i = 0; i < 5; i++) {
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
  for (i = 0; i < 5; i++) {
    gActiveEffect.col = i;
    gActiveEffect.cardId = gTurnZones[gActiveEffect.turnRow][i]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802BBF0() == 1) {
      sub_8034FEC(375);
      TryActivatingTurnEffect();
      WinConditionFINAL();
      if (!gHideEffectText)
        PlayMusic(MUSIC_375);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(375);
      return;
    }
  }

  gActiveEffect.turnRow = 0;
  for (i = 0; i < 5; i++) {
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
    for (i = 0; i < 5; i++)
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
    for (i = 0; i < 5; i++)
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

static void EffectJamBreedingMachineSummon (void) {
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

// resurrect from own gy to own field -- Vampire Lord or Different Dimension Dragon?
static void sub_802B560 (void) {
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

// resurrect from own gy to own field -- Vampire Lord or Different Dimension Dragon?
static void sub_802B604 (void) {
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
  CheckAllCardsForTurnEffects();
}

static void TryActivatingTurnEffect (void) {
  ResetCardEffectTextData();
  SetCardEffectTextType(9);
  SetCardInfo(gActiveEffect.cardId);
  g8E0C940[gCardInfo.unk1E]();
}

static void sub_802B70C (void) {
}

static void sub_802B710 (void) {
}

static void sub_802B714 (void) {
}

static void sub_802B718 (void) {
}

static void sub_802B71C (void) {
}

static void sub_802B720 (void) {
}

static void sub_802B724 (void) {
}

static void sub_802B728 (void) {
}

static void sub_802B72C (void) {
}

static void sub_802B730 (void) {
}

static void sub_802B734 (void) {
}

static void sub_802B738 (void) {
}

static void sub_802B73C (void) {
}

static void sub_802B740 (void) {
}

static void sub_802B744 (void) {
}

static void sub_802B748 (void) {
}

static void sub_802B74C (void) {
}

static void sub_802B750 (void) {
}

static void sub_802B754 (void) {
}

static void sub_802B758 (void) {
}

static void sub_802B75C (void) {
}

static void sub_802B760 (void) {
}

static void sub_802B764 (void) {
}

static void sub_802B768 (void) {
}

static void sub_802B76C (void) {
}

static void EffectMessengerOfPeaceLifePoints (void) {
  if (gActiveEffect.turnRow != 3)
    return;
  FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  if (gActiveEffect.turn == ACTIVE_DUELIST) {
    SetPlayerLifePointsToSubtract(1000);
    HandleDuelAction();
    CheckLoserFlags();
  }
  else {
    SetOpponentLifePointsToSubtract(1000);
    HandleDuelAction();
    CheckLoserFlags();
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void EffectHelpoemer (void) {
  if (gActiveEffect.turnRow != 7 || NumEmptyZonesInRow(gTurnHands[ACTIVE_DUELIST]) == 5)
    return;
  ClearZoneAndSendMonToGraveyard(gTurnHands[ACTIVE_DUELIST][(unsigned char)FirstNonEmptyZoneInRow(gTurnHands[ACTIVE_DUELIST])], 0);
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void EffectLavaGolemLifePoints (void) {
  if (gActiveEffect.turnRow != 2)
    return;
  FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
  if (gActiveEffect.turn == ACTIVE_DUELIST) {
    SetPlayerLifePointsToSubtract(700);
    HandleDuelAction();
    CheckLoserFlags();
  }
  else {
    SetOpponentLifePointsToSubtract(700);
    HandleDuelAction();
    CheckLoserFlags();
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void sub_802B8B0 (void) {
}

static void sub_802B8B4 (void) {
}

static void sub_802B8B8 (void) {
}

static void EffectViserDes (void) {
  if (gActiveEffect.turnRow != 2 || NumEmptyZonesInRow(gTurnZones[1]) == 5)
    return;
  FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
  DecrementPermStage(gTurnZones[1][(unsigned char)HighestAtkMonInRow(gTurnZones[1])]);
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void sub_802B91C (void) {
}

static void EffectNewdoria (void) {
  if (gActiveEffect.turnRow != 6 || NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) == 5)
    return;
  ClearZoneAndSendMonToGraveyard(gTurnZones[1][(unsigned char)HighestAtkMonInRowExceptGodCards(gTurnZones[1])], 1);
  GetGraveCardAndClearGrave(ACTIVE_DUELIST);
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void sub_802B978 (void) {
}

static void sub_802B97C (void) {
}

static void sub_802B980 (void) {
}

static void sub_802B984 (void) {
}

static void EffectBerserkDragonPowerDown (void) {
  if (gActiveEffect.turnRow != 1)
    return;
  FlipCardFaceUp(gTurnZones[1][gActiveEffect.col]);
  DecrementPermStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
    ActivateCardEffectText();
  }
}

static void sub_802B9F0 (void) {
}

static void EffectExodiaNecross (void) {
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

static void sub_802BA40 (void) {
}

static void sub_802BA44 (void) {
}

static void sub_802BA48 (void) {
}

static void sub_802BA4C (void) {
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

static void sub_802BAB4 (void) {
}

static void sub_802BAB8 (void) {
}

static void sub_802BABC (void) {
}

static void sub_802BAC0 (void) {
}

static void sub_802BAC4 (void) {
}

static void sub_802BAC8 (void) {
}

static void sub_802BACC (void) {
}

static void sub_802BAD0 (void) {
}

static void sub_802BAD4 (void) {
}

static void sub_802BAD8 (void) {
}

static void sub_802BADC (void) {
}

static void sub_802BAE0 (void) {
}

static void sub_802BAE4 (void) {
}

static void sub_802BAE8 (void) {
}

static void sub_802BAEC (void) {
}

static void sub_802BAF0 (void) {
}

static void sub_802BAF4 (void) {
}

static void sub_802BAF8 (void) {
}

static void sub_802BAFC (void) {
}

static void sub_802BB00 (void) {
}

static void sub_802BB04 (void) {
}

static void sub_802BB08 (void) {
}

static void sub_802BB0C (void) {
}

static void sub_802BB10 (void) {
}

static void sub_802BB14 (void) {
}

static void sub_802BB18 (void) {
}

static void sub_802BB1C (void) {
}

static void sub_802BB20 (void) {
}

static unsigned char ConditionCastleOfDarkIllusions (void) {
  u32 ret = 0;
  unsigned char i;

  if (gActiveEffect.turnRow == 1) {
    if (gDuel.field != FIELD_YAMI)
      ret = 1;
    else if (gActiveEffect.col == GetFirstCardMatchZoneId(gTurnZones[1], CASTLE_OF_DARK_ILLUSIONS))
      for (i = 0; i < 5; i++) {
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
      for (i = 0; i < 5; i++) {
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

static unsigned char sub_802BC20 (void) {
  return 0;
}

static unsigned char sub_802BC24 (void) {
  return 0;
}

static unsigned char sub_802BC28 (void) {
  return 0;
}

static unsigned char sub_802BC2C (void) {
  return 0;
}

static unsigned char sub_802BC30 (void) {
  return 0;
}

static unsigned char sub_802BC34 (void) {
  return 0;
}

static unsigned char sub_802BC38 (void) {
  return 0;
}

static unsigned char sub_802BC3C (void) {
  return 0;
}

static unsigned char sub_802BC40 (void) {
  return 0;
}

static unsigned char sub_802BC44 (void) {
  return 0;
}

static unsigned char sub_802BC48 (void) {
  return 0;
}

static unsigned char sub_802BC4C (void) {
  return 0;
}

static unsigned char sub_802BC50 (void) {
  return 0;
}

static unsigned char sub_802BC54 (void) {
  return 0;
}

static unsigned char sub_802BC58 (void) {
  return 0;
}

static unsigned char sub_802BC5C (void) {
  return 0;
}

static unsigned char sub_802BC60 (void) {
  return 0;
}

static unsigned char sub_802BC64 (void) {
  return 0;
}

static unsigned char sub_802BC68 (void) {
  return 0;
}

static unsigned char sub_802BC6C (void) {
  return 0;
}

static unsigned char sub_802BC70 (void) {
  return 0;
}

static unsigned char sub_802BC74 (void) {
  return 0;
}

static unsigned char sub_802BC78 (void) {
  return 0;
}

static unsigned char sub_802BC7C (void) {
  return 0;
}

static unsigned char sub_802BC80 (void) {
  return 0;
}

// condition: messenger of peace?
static unsigned char sub_802BC84 (void) {
  unsigned char ret = 0;
  if (gActiveEffect.turnRow == 3 &&
      gActiveEffect.col == GetFirstCardMatchZoneId(gTurnZones[3], gActiveEffect.cardId))
    ret = 1;
  return ret;
}

static unsigned char ConditionDestinyBoardNewLetter (void) {
  unsigned char ret = 0;
  if (gActiveEffect.turnRow == 3 &&
      gActiveEffect.col == GetFirstCardMatchZoneId(gTurnZones[3], DESTINY_BOARD) &&
      NumEmptyZonesInRow(gTurnZones[3]) > 0)
    ret = 1;
  return ret;
}

static unsigned char ConditionHelpoemer (void) {
  unsigned char ret = 0;
  if (gActiveEffect.turnRow == 7 && NumEmptyZonesInRow(gTurnHands[ACTIVE_DUELIST]) <= 2)
    ret = 1;
  return ret;
}

// condition: lava golem lp burn?
static unsigned char sub_802BD14 (void) {
  unsigned char ret = 0;
  if (gActiveEffect.turnRow == 2)
    ret = 1;
  return ret;
}

static unsigned char sub_802BD28 (void) {
  return 0;
}

static unsigned char sub_802BD2C (void) {
  return 0;
}

static unsigned char sub_802BD30 (void) {
  return 0;
}

static unsigned char ConditionJamBreedingMachineSummon (void) {
  if (gActiveEffect.turnRow == 3 &&
      NumEmptyZonesInRow(gTurnZones[2]) != 0 &&
      gActiveEffect.col == GetFirstCardMatchZoneId(gTurnZones[3], JAM_BREEDING_MACHINE))
    return 1;
  return 0;
}

static unsigned char ConditionViserDes (void) {
  if (gActiveEffect.turnRow == 2 && NumEmptyZonesInRow(gTurnZones[1]) < 5)
    return 1;
  return 0;
}

static unsigned char sub_802BD98 (void) {
  return 0;
}

static unsigned char ConditionNewdoria (void) {
  if (gActiveEffect.turnRow == 6 && NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) != 5)
    return 1;
  return 0;
}

static unsigned char sub_802BDC4 (void) {
  return 0;
}

static unsigned char sub_802BDC8 (void) {
  return 0;
}

static unsigned char sub_802BDCC (void) {
  return 0;
}

static unsigned char sub_802BDD0 (void) {
  return 0;
}

// condition is opponent turn only: probably one of Helpoemer or Berserk Dragon
static unsigned char sub_802BDD4 (void) {
  if (gActiveEffect.turnRow == 1)
    return 1;
  return 0;
}

// condition is opponent turn only: probably one of Helpoemer or Berserk Dragon
static unsigned char sub_802BDE8 (void) {
  if (gActiveEffect.turnRow == 1)
    return 1;
  return 0;
}

static unsigned char sub_802BDFC (void) {
  return 0;
}

// condition for Vampire Lord or Different Dimension Dragon?
static unsigned char sub_802BE00 (void) {
  if (gActiveEffect.turnRow == 6 &&
      gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == gActiveEffect.cardId &&
      NumEmptyZonesInRow(gTurnZones[2]) > 0)
    return 1;
  return 0;
}

// condition for Vampire Lord or Different Dimension Dragon?
static unsigned char sub_802BE38 (void) {
  if (gActiveEffect.turnRow == 6 &&
      gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == gActiveEffect.cardId &&
      NumEmptyZonesInRow(gTurnZones[2]) > 0)
    return 1;
  return 0;
}

static unsigned char ConditionExodiaNecrossPowerUp (void) {
  if (gActiveEffect.turnRow == 2 && GetExodiaFlag(gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard))
    return 1;
  return 0;
}

static unsigned char sub_802BE9C (void) {
  return 0;
}

static unsigned char sub_802BEA0 (void) {
  return 0;
}

static unsigned char sub_802BEA4 (void) {
  return 0;
}

static unsigned char sub_802BEA8 (void) {
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





// split? 
unsigned char* GetCardAttributeString (unsigned char attribute) {
  return gCardAttributeStrings[attribute];
}

u32* sub_802BF60 (unsigned char arg0) {
  return g8E0CBF0[arg0];
}
