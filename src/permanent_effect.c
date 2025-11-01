#include "global.h"

static unsigned char CheckForMothEvolution (u16);

enum MothEvolution {
  MOTH_EVO_PETIT_MOTH,
  MOTH_EVO_LARVAE_MOTH,
  MOTH_EVO_COCOON_OF_EVOLUTION,
  MOTH_EVO_GREAT_MOTH,
  NUM_MOTH_EVO
};

CONST_DATA unsigned short sMothsAbleToEvolve[NUM_MOTH_EVO] = {
  [MOTH_EVO_PETIT_MOTH] = PETIT_MOTH,
  [MOTH_EVO_LARVAE_MOTH] = LARVAE_MOTH,
  [MOTH_EVO_COCOON_OF_EVOLUTION] = COCOON_OF_EVOLUTION,
  [MOTH_EVO_GREAT_MOTH] = GREAT_MOTH
};

CONST_DATA unsigned short sNextMothEvolution[NUM_MOTH_EVO] = {
  [MOTH_EVO_PETIT_MOTH] = LARVAE_MOTH,
  [MOTH_EVO_LARVAE_MOTH] = COCOON_OF_EVOLUTION,
  [MOTH_EVO_COCOON_OF_EVOLUTION] = GREAT_MOTH,
  [MOTH_EVO_GREAT_MOTH] = PERFECTLY_ULTIMATE_GREAT_MOTH
};

extern void (*sPermanentEffects[]) (void);
extern unsigned char (*g8E0C800[]) (void);
extern unsigned char g2021DD8;
void sub_802ACC0 (void);
void sub_802ADF4 (void);
void sub_80408BC (void);
void sub_802ADA4 (void);
void ResetTempStagesForAllCards (void);
void sub_802AE44 (void);
void UpdateDuelGfxExceptField (void);


void TryEvolveMothCards (void) {
  unsigned char unused[12];
  unsigned char i;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    enum MothEvolution mothEvo = CheckForMothEvolution(gTurnZones[2][i]->id);
    if (mothEvo < NUM_MOTH_EVO) {
      gTurnZones[2][i]->id = sNextMothEvolution[mothEvo];
      ResetCardEffectTextData();
      SetCardEffectTextType(10);
      gCardEffectTextData.textId = DUEL_TEXT_TRANSFORMED_INTO;
      gCardEffectTextData.cardId = sMothsAbleToEvolve[mothEvo];
      gCardEffectTextData.cardId2 = sNextMothEvolution[mothEvo];
      ActivateCardEffectText();
    }
  }
}

static enum MothEvolution CheckForMothEvolution (u16 cardId) {
  enum MothEvolution mothEvo;
  for (mothEvo = 0; mothEvo < NUM_MOTH_EVO; mothEvo++)
    if (cardId == sMothsAbleToEvolve[mothEvo])
      break;
  return mothEvo;
}

static void sub_80270E0 (unsigned char arg0) {
  g2021DD8 |= arg0 & 63;
}

static unsigned char sub_80270F8 (void) {
  unsigned char temp = g2021DD8;
  unsigned char r3 = 0, r2 = 0;
  for (; r2 < 6; temp >>= 1, r2++)
    if (temp & 1)
      r3++;
  return r3;
}

void sub_802712C (void) {
  g2021DD8 = 1;
}





//split

static void TryActivatingPermanentEffect (void);
static unsigned sub_802A478 (void);

static void CheckBoardForPermanentEffects (void) {
  unsigned char i;
  gActiveEffect.turnRow = 4;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    gActiveEffect.col = i;
    gActiveEffect.cardId = gTurnHands[ACTIVE_DUELIST][gActiveEffect.col]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802A478() == 1) {
      sub_8034FEC(0x177);
      TryActivatingPermanentEffect();
      if (!gHideEffectText)
        PlayMusic(MUSIC_375);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(0x177);
      return;
    }
  }

  gActiveEffect.turnRow = 5;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    gActiveEffect.col = i;
    gActiveEffect.cardId = gTurnHands[INACTIVE_DUELIST][gActiveEffect.col]->id;
    if (!gHideEffectText)
      sub_802ADF4();
    if (sub_802A478() == 1) {
      sub_8034FEC(0x177);
      TryActivatingPermanentEffect();
      if (!gHideEffectText)
        PlayMusic(MUSIC_375);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(0x177);
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
  if (sub_802A478() == 1) {
    sub_8034FEC(0x177);
    TryActivatingPermanentEffect();
    if (!gHideEffectText)
      PlayMusic(MUSIC_375);
  }
  if (IsDuelOver() == 1) {
    sub_8034FEC(0x177);
    return;
  }

  gActiveEffect.turnRow = 7;
  gActiveEffect.col = 0;
  gActiveEffect.cardId = gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard;
  if (!gHideEffectText)
    sub_802ADF4();
  if (sub_802A478() == 1) {
    sub_8034FEC(0x177);
    TryActivatingPermanentEffect();
    PlayMusic(MUSIC_375);
  }
  if (IsDuelOver() == 1) {
    sub_8034FEC(0x177);
    return;
  }

  gActiveEffect.turnRow = 2;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    gActiveEffect.col = i;
    gActiveEffect.cardId = gTurnZones[gActiveEffect.turnRow][i]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802A478() == 1) {
      sub_8034FEC(0x177);
      TryActivatingPermanentEffect();
      if (!gHideEffectText)
        PlayMusic(MUSIC_375);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(0x177);
      return;
    }
  }

  gActiveEffect.turnRow = 1;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    gActiveEffect.col = i;
    gActiveEffect.cardId = gTurnZones[gActiveEffect.turnRow][i]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802A478() == 1) {
      sub_8034FEC(0x177);
      TryActivatingPermanentEffect();
      if (!gHideEffectText)
        PlayMusic(MUSIC_375);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(0x177);
      return;
    }
  }

  gActiveEffect.turnRow = 3;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    gActiveEffect.col = i;
    gActiveEffect.cardId = gTurnZones[gActiveEffect.turnRow][i]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802A478() == 1) {
      sub_8034FEC(0x177);
      TryActivatingPermanentEffect();
      if (!gHideEffectText)
        PlayMusic(MUSIC_375);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(0x177);
      return;
    }
  }

  gActiveEffect.turnRow = 0;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    gActiveEffect.col = i;
    gActiveEffect.cardId = gTurnZones[gActiveEffect.turnRow][i]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802A478() == 1) {
      sub_8034FEC(0x177);
      TryActivatingPermanentEffect();
      if (!gHideEffectText)
        PlayMusic(MUSIC_375);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(0x177);
      return;
    }
  }
  sub_8034FEC(0x177);
}

static void Jinzo (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[1][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      SetCardInfo(gTurnZones[3][i]->id);
      if (gCardInfo.trapEffect)
        ClearZoneAndSendMonToGraveyard(gTurnZones[3][i], ACTIVE_DUELIST);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = JINZO;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      SetCardInfo(gTurnZones[0][i]->id);
      if (gCardInfo.trapEffect)
        ClearZoneAndSendMonToGraveyard(gTurnZones[0][i], INACTIVE_DUELIST);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = JINZO;
      ActivateCardEffectText();
    }
  }
}

static void SliferTheSkyDragon (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnHands[INACTIVE_DUELIST][i]->id == CARD_NONE)
        continue;
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnHands[ACTIVE_DUELIST][i]->id == CARD_NONE)
        continue;
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
}

static void DragonCaptureJar (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 0) {
    FlipCardFaceUp(gTurnZones[0][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      // Inferred bug: IsGodCard checks the spell/trap row, therefore slifer is locked too
      if (IsCardLocked(gTurnZones[0][i]) == 1 || IsGodCard(gTurnZones[0][i]->id) == 1)
        continue;
      SetCardInfo(gTurnZones[2][i]->id);
      if (gCardInfo.type == TYPE_DRAGON)
        LockCard(gTurnZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = DRAGON_CAPTURE_JAR;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 3) {
    FlipCardFaceUp(gTurnZones[3][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      // Inferred bug: IsGodCard checks the spell/trap row, therefore slifer is locked too
      if (IsCardLocked(gTurnZones[2][i]) == 1 || IsGodCard(gTurnZones[3][i]->id) == 1)
        continue;
      SetCardInfo(gTurnZones[1][i]->id);
      if (gCardInfo.type == TYPE_DRAGON)
        LockCard(gTurnZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = DRAGON_CAPTURE_JAR;
      ActivateCardEffectText();
    }
  }
}

static void PumpkingTheKingOfGhosts (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[1][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == ARMORED_ZOMBIE)
        IncrementTempStage(gTurnZones[1][i]);
      else if (gTurnZones[1][i]->id == DRAGON_ZOMBIE)
        IncrementTempStage(gTurnZones[1][i]);
      else if (gTurnZones[1][i]->id == CLOWN_ZOMBIE)
        IncrementTempStage(gTurnZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == ARMORED_ZOMBIE)
        IncrementTempStage(gTurnZones[2][i]);
      else if (gTurnZones[2][i]->id == DRAGON_ZOMBIE)
        IncrementTempStage(gTurnZones[2][i]);
      else if (gTurnZones[2][i]->id == CLOWN_ZOMBIE)
        IncrementTempStage(gTurnZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
}

// effect HarpieLady or CyberHarpie
static void sub_80278A4 (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[1][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == HARPIES_PET_DRAGON)
        IncrementTempStage(gTurnZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == HARPIES_PET_DRAGON)
        IncrementTempStage(gTurnZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
}

static void HarpieLadySisters (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[1][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == HARPIES_PET_DRAGON) {
        IncrementTempStage(gTurnZones[1][i]);
        IncrementTempStage(gTurnZones[1][i]);
      }
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == HARPIES_PET_DRAGON) {
        IncrementTempStage(gTurnZones[2][i]);
        IncrementTempStage(gTurnZones[2][i]);
      }
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
}

static void MysticalElf (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[1][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == BLUE_EYES_WHITE_DRAGON)
        IncrementTempStage(gTurnZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == BLUE_EYES_WHITE_DRAGON)
        IncrementTempStage(gTurnZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
}

static void DungeonTamer (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[1][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == DUNGEON_WORM)
        IncrementTempStage(gTurnZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == DUNGEON_WORM)
        IncrementTempStage(gTurnZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
}

static void MammothGraveyard (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[1][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id != CARD_NONE)
        DecrementTempStage(gTurnZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id != CARD_NONE)
        DecrementTempStage(gTurnZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
}

// effect: DarkMagicianGirl or ToonDarkMagicianGirl
static void sub_8027D2C (void) {
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[1][gActiveEffect.col]);
    if (gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard == DARK_MAGICIAN)
      IncrementTempStage(gTurnZones[1][gActiveEffect.col]);
    else if (gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
      IncrementTempStage(gTurnZones[1][gActiveEffect.col]);
    if (gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == DARK_MAGICIAN)
      IncrementTempStage(gTurnZones[1][gActiveEffect.col]);
    else if (gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
      IncrementTempStage(gTurnZones[1][gActiveEffect.col]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
    if (gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard == DARK_MAGICIAN)
      IncrementTempStage(gTurnZones[2][gActiveEffect.col]);
    else if (gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
      IncrementTempStage(gTurnZones[2][gActiveEffect.col]);
    if (gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == DARK_MAGICIAN)
      IncrementTempStage(gTurnZones[2][gActiveEffect.col]);
    else if (gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
      IncrementTempStage(gTurnZones[2][gActiveEffect.col]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
}

static void WodanTheResidentOfTheForest (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE || !IsCardFaceUp(gTurnZones[1][i]))
        continue;
      SetCardInfo(gTurnZones[1][i]->id);
      if (gCardInfo.type == TYPE_PLANT)
        IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == CARD_NONE || !IsCardFaceUp(gTurnZones[2][i]))
        continue;
      SetCardInfo(gTurnZones[2][i]->id);
      if (gCardInfo.type == TYPE_PLANT)
        IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
}

static void SwampBattleguard (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id != CARD_NONE)
        if (gTurnZones[1][i]->id == LAVA_BATTLEGUARD)
          IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id != CARD_NONE)
        if (gTurnZones[2][i]->id == LAVA_BATTLEGUARD)
          IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
}

static void LavaBattleguard (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id != CARD_NONE)
        if (gTurnZones[1][i]->id == SWAMP_BATTLEGUARD)
          IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id != CARD_NONE)
        if (gTurnZones[2][i]->id == SWAMP_BATTLEGUARD)
          IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
}

static void MWarrior1 (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id != CARD_NONE)
        if (gTurnZones[1][i]->id == M_WARRIOR_2)
          IncrementTempStage(gTurnZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id != CARD_NONE)
        if (gTurnZones[2][i]->id == M_WARRIOR_2)
          IncrementTempStage(gTurnZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
}

static void MWarrior2 (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id != CARD_NONE)
        if (gTurnZones[1][i]->id == M_WARRIOR_1)
          IncrementTempStage(gTurnZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id != CARD_NONE)
        if (gTurnZones[2][i]->id == M_WARRIOR_1)
          IncrementTempStage(gTurnZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
}

static void LabyrinthTank (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id != CARD_NONE && IsCardFaceUp(gTurnZones[1][i]))
        if (gTurnZones[1][i]->id == LABYRINTH_WALL)
          IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id != CARD_NONE && IsCardFaceUp(gTurnZones[2][i]))
        if (gTurnZones[2][i]->id == LABYRINTH_WALL)
          IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
}

static void Hoshiningen (void) {
  unsigned char i;
  if (gActiveEffect.turnRow != 1 && gActiveEffect.turnRow != 2)
    return;
  FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gTurnZones[1][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gTurnZones[1][i]->id);
    if (gCardInfo.attribute == ATTRIBUTE_SHADOW)
      DecrementTempStage(gTurnZones[1][i]);
    else if (gCardInfo.attribute == ATTRIBUTE_LIGHT)
      IncrementTempStage(gTurnZones[1][i]);
  }
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gTurnZones[2][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gTurnZones[2][i]->id);
    if (gCardInfo.attribute == ATTRIBUTE_SHADOW)
      DecrementTempStage(gTurnZones[2][i]);
    else if (gCardInfo.attribute == ATTRIBUTE_LIGHT)
      IncrementTempStage(gTurnZones[2][i]);
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
    ActivateCardEffectText();
  }
}

static void WitchsApprentice (void) {
  unsigned char i;
  if (gActiveEffect.turnRow != 1 && gActiveEffect.turnRow != 2)
    return;
  FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gTurnZones[1][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gTurnZones[1][i]->id);
    if (gCardInfo.attribute == ATTRIBUTE_SHADOW)
      IncrementTempStage(gTurnZones[1][i]);
    else if (gCardInfo.attribute == ATTRIBUTE_LIGHT)
      DecrementTempStage(gTurnZones[1][i]);
  }
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gTurnZones[2][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gTurnZones[2][i]->id);
    if (gCardInfo.attribute == ATTRIBUTE_SHADOW)
      IncrementTempStage(gTurnZones[2][i]);
    else if (gCardInfo.attribute == ATTRIBUTE_LIGHT)
      DecrementTempStage(gTurnZones[2][i]);
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
    ActivateCardEffectText();
  }
}

static void InsectQueen (void) {
  unsigned char i;
  if (gActiveEffect.turnRow != 1 && gActiveEffect.turnRow != 2)
    return;
  FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gTurnZones[1][i]->id == CARD_NONE || !IsCardFaceUp(gTurnZones[1][i]))
      continue;
    SetCardInfo(gTurnZones[1][i]->id);
    if (gCardInfo.type == TYPE_INSECT)
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  }
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gTurnZones[2][i]->id == CARD_NONE || !IsCardFaceUp(gTurnZones[2][i]))
      continue;
    SetCardInfo(gTurnZones[2][i]->id);
    if (gCardInfo.type == TYPE_INSECT)
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
    ActivateCardEffectText();
  }
}

// power up for each face-up dragon on opponent field/gy
static void BusterBlader (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == CARD_NONE || !IsCardFaceUp(gTurnZones[2][i]))
        continue;
      SetCardInfo(gTurnZones[2][i]->id);
      if (gCardInfo.type == TYPE_DRAGON)
        IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
    SetCardInfo(gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard);
    if (gCardInfo.type == TYPE_DRAGON)
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE || !IsCardFaceUp(gTurnZones[1][i]))
        continue;
      SetCardInfo(gTurnZones[1][i]->id);
      if (gCardInfo.type == TYPE_DRAGON)
        IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
    SetCardInfo(gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard);
    if (gCardInfo.type == TYPE_DRAGON)
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
}

// power up for each face-up dragon on own field
static void MasterOfDragonSoldier (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE || !IsCardFaceUp(gTurnZones[1][i]))
        continue;
      SetCardInfo(gTurnZones[1][i]->id);
      if (gCardInfo.type == TYPE_DRAGON)
        IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
      if (gTurnZones[2][i]->id == CARD_NONE || !IsCardFaceUp(gTurnZones[2][i]))
        continue;
      SetCardInfo(gTurnZones[2][i]->id);
      if (gCardInfo.type == TYPE_DRAGON)
        IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
}

// effect: necross? nyan nyan?
static void sub_8028B10 (void) {
  if (gActiveEffect.turnRow == 1) {
    ClearZoneAndSendMonToGraveyard(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col], INACTIVE_DUELIST);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    ClearZoneAndSendMonToGraveyard(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col], ACTIVE_DUELIST);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
}

static void MessengerOfPeace_LockMonsters (void) {
  unsigned char i;
  if (gActiveEffect.turnRow && gActiveEffect.turnRow != 3)
    return;
  FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gTurnZones[1][i]->id == CARD_NONE)
      continue;
    gStatMod.card = gTurnZones[1][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gTurnZones[1][i]);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk >= 1500)
      LockCard(gTurnZones[1][i]);
  }
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gTurnZones[2][i]->id == CARD_NONE)
      continue;
    gStatMod.card = gTurnZones[2][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gTurnZones[2][i]);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk >= 1500)
      LockCard(gTurnZones[2][i]);
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
    ActivateCardEffectText();
  }
}

static void LavaGolem_Summon (void) {
  u32 i;
  unsigned char j, zone;
  if (gActiveEffect.turnRow != 4)
    return;
  for (i = 0, j = 0; j < 5 && i < 2; j++) {
    u16 cardId = gTurnZones[1][j]->id;
    if (cardId != CARD_NONE && IsGodCard(cardId) != 1 && cardId != LAVA_GOLEM) {
      ClearZoneAndSendMonToGraveyard(gTurnZones[1][j], INACTIVE_DUELIST);
      i++;
    }
  }
  zone = FirstEmptyZoneInRow(gTurnZones[1]);
  CopyCard(gTurnZones[1][zone], gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  ClearZone(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  FlipCardFaceUp(gTurnZones[1][zone]);
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void DarkJeroid (void) {
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[1][gActiveEffect.col]);
    DecrementTempStage(gTurnZones[2][(unsigned char)HighestAtkMonInRow(gTurnZones[2])]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
    DecrementTempStage(gTurnZones[1][(unsigned char)HighestAtkMonInRow(gTurnZones[1])]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
}

static void BladeKnight (void) {
  if (gActiveEffect.turnRow == 1) {
    if (NumEmptyZonesInRow(gTurnHands[INACTIVE_DUELIST]) < 4)
      return;
    FlipCardFaceUp(gTurnZones[1][gActiveEffect.col]);
    IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    if (NumEmptyZonesInRow(gTurnHands[ACTIVE_DUELIST]) < 4)
      return;
    FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
    IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
}

static void DarkPaladin (void) {
  unsigned char i;
  if (gActiveEffect.turnRow != 1 && gActiveEffect.turnRow != 2)
    return;
  FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    SetCardInfo(gTurnZones[1][i]->id);
    if (gCardInfo.type == TYPE_DRAGON)
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  }
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    SetCardInfo(gTurnZones[2][i]->id);
    if (gCardInfo.type == TYPE_DRAGON)
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  }
  SetCardInfo(gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard);
  if (gCardInfo.type == TYPE_DRAGON)
    IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  SetCardInfo(gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard);
  if (gCardInfo.type == TYPE_DRAGON)
    IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void TheWingedDragonOfRaPhoenixMode_Resurrect (void) {
  unsigned char emptyZone;
  if (gActiveEffect.turnRow == 7) {
    if (gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard != THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE)
      return;
    if (!NumEmptyZonesInRow(gTurnZones[1]))
      return;
    GetGraveCardAndClearGrave(INACTIVE_DUELIST);
    emptyZone = FirstEmptyZoneInRow(gTurnZones[1]);
    gTurnZones[1][emptyZone]->id = THE_WINGED_DRAGON_OF_RA_BATTLE_MODE;
    gTurnZones[1][emptyZone]->isLocked = FALSE;
    gTurnZones[1][emptyZone]->isDefending = FALSE;
    gTurnZones[1][emptyZone]->unkTwo = FALSE;
    gTurnZones[1][emptyZone]->unk4 = 2;
    gTurnZones[1][emptyZone]->willChangeSides = FALSE;
    FlipCardFaceDown(gTurnZones[1][emptyZone]);
    ResetPermStage(gTurnZones[1][emptyZone]);
    ResetTempStage(gTurnZones[1][emptyZone]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 6) {
    if (gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard != THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE)
      return;
    if (!NumEmptyZonesInRow(gTurnZones[2]))
      return;
    GetGraveCardAndClearGrave(ACTIVE_DUELIST);
    emptyZone = FirstEmptyZoneInRow(gTurnZones[2]);
    gTurnZones[2][emptyZone]->id = THE_WINGED_DRAGON_OF_RA_BATTLE_MODE;
    gTurnZones[2][emptyZone]->isLocked = FALSE;
    gTurnZones[2][emptyZone]->isDefending = FALSE;
    gTurnZones[2][emptyZone]->unkTwo = FALSE;
    gTurnZones[2][emptyZone]->unk4 = 2;
    gTurnZones[2][emptyZone]->willChangeSides = FALSE;
    FlipCardFaceDown(gTurnZones[2][emptyZone]);
    ResetPermStage(gTurnZones[2][emptyZone]);
    ResetTempStage(gTurnZones[2][emptyZone]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
}

static void MachineKing (void) {
  unsigned char i;
  if (gActiveEffect.turnRow != 1 && gActiveEffect.turnRow != 2)
    return;
  FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gTurnZones[1][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gTurnZones[1][i]->id);
    if (gCardInfo.type == TYPE_MACHINE)
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  }
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gTurnZones[2][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gTurnZones[2][i]->id);
    if (gCardInfo.type == TYPE_MACHINE)
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
    ActivateCardEffectText();
  }
}

static void PerfectMachineKing (void) {
  unsigned char i;
  if (gActiveEffect.turnRow != 1 && gActiveEffect.turnRow != 2)
    return;
  FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gTurnZones[1][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gTurnZones[1][i]->id);
    if (gCardInfo.type == TYPE_MACHINE) {
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
  }
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    if (gTurnZones[2][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gTurnZones[2][i]->id);
    if (gCardInfo.type == TYPE_MACHINE) {
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
      IncrementTempStage(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
    }
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
    ActivateCardEffectText();
  }
}

static void CommandAngel (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[1][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gTurnZones[1][i]->id);
      if (gCardInfo.type == TYPE_FAIRY) {
        IncrementTempStage(gTurnZones[1][i]);
      }
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gTurnZones[2][i]->id);
      if (gCardInfo.type == TYPE_FAIRY) {
        IncrementTempStage(gTurnZones[2][i]);
      }
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
}

static void NightmarePenguin (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    FlipCardFaceUp(gTurnZones[1][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gTurnZones[1][i]->id);
      if (gCardInfo.type == TYPE_SEA_DRAGON || gCardInfo.type == TYPE_REPTILE ||
        gCardInfo.type == TYPE_AQUA || gCardInfo.type == TYPE_FISH)
        {
          IncrementTempStage(gTurnZones[1][i]);
        }

    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    FlipCardFaceUp(gTurnZones[2][gActiveEffect.col]);
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gTurnZones[2][i]->id);
      if (gCardInfo.type == TYPE_SEA_DRAGON || gCardInfo.type == TYPE_REPTILE ||
        gCardInfo.type == TYPE_AQUA || gCardInfo.type == TYPE_FISH)
        {
          IncrementTempStage(gTurnZones[2][i]);
        }

    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]->id;
      ActivateCardEffectText();
    }
  }
}

static void DarkFlareKnight (void) {
  struct DuelCard* zone;
  u16 graveyard;
  if (gActiveEffect.turnRow == 7) {
    graveyard = gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard;
    if (graveyard != DARK_FLARE_KNIGHT)
      return;
    if (NumEmptyZonesInRow(gTurnZones[1]) > 0) {
      GetGraveCardAndClearGrave(INACTIVE_DUELIST);
      zone = gTurnZones[1][(unsigned char)FirstEmptyZoneInRow(gTurnZones[1])];
      zone->id = MIRAGE_KNIGHT;
      ResetPermStage(zone);
      ResetTempStage(zone);
      zone->unk4 = 0;
      UnlockCard(zone);
      zone->isDefending = FALSE;
      zone->unkTwo = FALSE;
      zone->unkThree = FALSE;
      FlipCardFaceUp(zone);
      zone->willChangeSides = FALSE;
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = graveyard;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 6) {
    graveyard = gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard;
    if (graveyard != DARK_FLARE_KNIGHT)
      return;
    if (NumEmptyZonesInRow(gTurnZones[2]) > 0) {
      GetGraveCardAndClearGrave(ACTIVE_DUELIST);
      zone = gTurnZones[2][(unsigned char)FirstEmptyZoneInRow(gTurnZones[2])];
      zone->id = MIRAGE_KNIGHT;
      ResetPermStage(zone);
      ResetTempStage(zone);
      zone->unk4 = 0;
      UnlockCard(zone);
      zone->isDefending = FALSE;
      zone->unkTwo = FALSE;
      zone->unkThree = FALSE;
      FlipCardFaceUp(zone);
      zone->willChangeSides = FALSE;
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = graveyard;
      ActivateCardEffectText();
    }
  }
}

static void ExodiaNecross_DestroySelf (void) {
  if (gActiveEffect.turnRow == 1) {
    if (!GetExodiaFlag(gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard))
      ClearZoneAndSendMonToGraveyard(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col], INACTIVE_DUELIST);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    if (!GetExodiaFlag(gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard))
      ClearZoneAndSendMonToGraveyard(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col], ACTIVE_DUELIST);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
}

static void EffectSpiritMessage_DestroySelf (void) {
  unsigned char i;
  struct DuelCard* zone;
  if (gActiveEffect.turnRow == 0) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      u16 id;
      zone = gTurnZones[0][i];
      id = zone->id;
      if (id != CARD_NONE && GetFINAL_Flag(id) & (FLAG_I | FLAG_N | FLAG_A | FLAG_L))
        ClearZoneAndSendMonToGraveyard(zone, INACTIVE_DUELIST);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
  else if (gActiveEffect.turnRow == 3) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      zone = gTurnZones[3][i];
      if (zone->id != CARD_NONE && GetFINAL_Flag(zone->id) & (FLAG_I | FLAG_N | FLAG_A | FLAG_L))
        ClearZoneAndSendMonToGraveyard(zone, ACTIVE_DUELIST);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gActiveEffect.cardId;
      ActivateCardEffectText();
    }
  }
}

void TryActivatingPermanentEffects (void) {
  gActiveEffect.turn = WhoseTurn();
  if (!gHideEffectText) {
    sub_80408BC();
    sub_802ADA4();
  }
  ResetTempStagesForAllCards();
  if (!gHideEffectText)
    UpdateDuelGfxExceptField();
  CheckBoardForPermanentEffects();
  if (!gHideEffectText)
    sub_802AE44();
}

static void TryActivatingPermanentEffect (void) {
  ResetCardEffectTextData();
  SetCardEffectTextType(8);
  SetCardInfo(gActiveEffect.cardId);
  sPermanentEffects[gCardInfo.unk1E]();
}

static void sub_8029898 (void) {
}

static void sub_802989C (void) {
}

static void sub_80298A0 (void) {
  sub_80278A4();
}

static void sub_80298AC (void) {
  sub_8027D2C();
}

static void sub_80298B8 (void) {
}

static void sub_80298BC (void) {
}

static void JamBreedingMachine_BlockSummoning (void) {
  if (gActiveEffect.turnRow != 3)
    return;
  FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  BlockTurnSummoning(ACTIVE_DUELIST);
  LockMonsterCardsInRow(4);
  FlipCardFaceUp(gTurnZones[gActiveEffect.turnRow][gActiveEffect.col]);
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gActiveEffect.cardId;
    ActivateCardEffectText();
  }
}

static void sub_8029928 (void) {
}

static void sub_802992C (void) {
}

static void sub_8029930 (void) {
}

static void sub_8029934 (void) {
}

static void sub_8029938 (void) {
}

static void sub_802993C (void) {
}

static void sub_8029940 (void) {
  EffectSpiritMessage_DestroySelf();
}

static void sub_802994C (void) {
  EffectSpiritMessage_DestroySelf();
}

static void sub_8029958 (void) {
  EffectSpiritMessage_DestroySelf();
}

static void sub_8029964 (void) {
}

static void sub_8029968 (void) {
}

static void sub_802996C (void) {
}

static void sub_8029970 (void) {
}

static void sub_8029974 (void) {
}

static void sub_8029978 (void) {
}

static void sub_802997C (void) {
}

static void sub_8029980 (void) {
}

static void sub_8029984 (void) {
}

static void sub_8029988 (void) {
}

static void sub_802998C (void) {
}

static void sub_8029990 (void) {
}

static void sub_8029994 (void) {
}

static void sub_8029998 (void) {
}

static void sub_802999C (void) {
}

static void sub_80299A0 (void) {
}

static void sub_80299A4 (void) {
}

static void sub_80299A8 (void) {
}

static void sub_80299AC (void) {
}

static void sub_80299B0 (void) {
}

static void sub_80299B4 (void) {
}

static void sub_80299B8 (void) {
}

static void sub_80299BC (void) {
}

static void sub_80299C0 (void) {
}

static void sub_80299C4 (void) {
}

static void sub_80299C8 (void) {
}

static void sub_80299CC (void) {
}

static void sub_80299D0 (void) {
}

static void sub_80299D4 (void) {
}

static unsigned char ConditionJinzo (void) {
  u32 ret = 0;
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    if (gActiveEffect.col == GetFirstCardMatchZoneId(gTurnZones[1], JINZO))
      for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
        if (gTurnZones[3][i]->id == CARD_NONE)
          continue;
        SetCardInfo(gTurnZones[3][i]->id);
        if (gCardInfo.trapEffect) {
          ret = 1;
          break;
        }
      }
  }
  else if (gActiveEffect.turnRow == 2) {
    if (gActiveEffect.col == GetFirstCardMatchZoneId(gTurnZones[2], JINZO))
      for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
        if (gTurnZones[0][i]->id == CARD_NONE)
          continue;
        SetCardInfo(gTurnZones[0][i]->id);
        if (gCardInfo.trapEffect) {
          ret = 1;
          break;
        }
      }
  }
  return ret;
}

static unsigned char ConditionPumpkingTheKingOfGhosts (void) {
  u32 ret = 0;
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == ARMORED_ZOMBIE) {
        ret = 1;
        break;
      }
      else if (gTurnZones[1][i]->id == DRAGON_ZOMBIE) {
        ret = 1;
        break;
      }
      else if (gTurnZones[1][i]->id == CLOWN_ZOMBIE) {
        ret = 1;
        break;
      }
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == ARMORED_ZOMBIE) {
        ret = 1;
        break;
      }
      else if (gTurnZones[2][i]->id == DRAGON_ZOMBIE) {
        ret = 1;
        break;
      }
      else if (gTurnZones[2][i]->id == CLOWN_ZOMBIE) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

static unsigned char ConditionWodanTheResidentOfTheForest (void) {
  u32 ret = 0;
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE || !IsCardFaceUp(gTurnZones[1][i]))
        continue;
      SetCardInfo(gTurnZones[1][i]->id);
      if (gCardInfo.type == TYPE_PLANT) {
        ret = 1;
        break;
      }
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == CARD_NONE || !IsCardFaceUp(gTurnZones[2][i]))
        continue;
      SetCardInfo(gTurnZones[2][i]->id);
      if (gCardInfo.type == TYPE_PLANT) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

static unsigned char ConditionSwampBattleguard (void) {
  u32 ret = 0;
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE)
        continue;
      if (gTurnZones[1][i]->id == LAVA_BATTLEGUARD) {
        ret = 1;
        break;
      }
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == CARD_NONE)
        continue;
      if (gTurnZones[2][i]->id == LAVA_BATTLEGUARD) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

static unsigned char ConditionLavaBattleguard (void) {
  u32 ret = 0;
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE)
        continue;
      if (gTurnZones[1][i]->id == SWAMP_BATTLEGUARD) {
        ret = 1;
        break;
      }
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == CARD_NONE)
        continue;
      if (gTurnZones[2][i]->id == SWAMP_BATTLEGUARD) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

static unsigned char ConditionMWarrior1 (void) {
  u32 ret = 0;
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE)
        continue;
      if (gTurnZones[1][i]->id == M_WARRIOR_2) {
        ret = 1;
        break;
      }
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == CARD_NONE)
        continue;
      if (gTurnZones[2][i]->id == M_WARRIOR_2) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

static unsigned char ConditionMWarrior2 (void) {
  u32 ret = 0;
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE)
        continue;
      if (gTurnZones[1][i]->id == M_WARRIOR_1) {
        ret = 1;
        break;
      }
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == CARD_NONE)
        continue;
      if (gTurnZones[2][i]->id == M_WARRIOR_1) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

static unsigned char ConditionLabyrinthTank (void) {
  u32 ret = 0;
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE || !IsCardFaceUp(gTurnZones[1][i]))
        continue;
      if (gTurnZones[1][i]->id == LABYRINTH_WALL) {
        ret = 1;
        break;
      }
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == CARD_NONE || !IsCardFaceUp(gTurnZones[2][i]))
        continue;
      if (gTurnZones[2][i]->id == LABYRINTH_WALL) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

// condition: WitchsApprentice or Hoshiningen
static unsigned char sub_8029E34 (void) {
  u32 ret = 0;
  unsigned char i;
  if (gActiveEffect.turnRow == 1 || gActiveEffect.turnRow == 2) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gTurnZones[1][i]->id);
      if (gCardInfo.attribute == ATTRIBUTE_SHADOW) {
        ret = 1;
        break;
      }
      if (gCardInfo.attribute == ATTRIBUTE_LIGHT) {
        ret = 1;
        break;
      }
    }
    if (!ret) {
      for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
        if (gTurnZones[2][i]->id == CARD_NONE)
          continue;
        SetCardInfo(gTurnZones[2][i]->id);
        if (gCardInfo.attribute == ATTRIBUTE_SHADOW) {
          ret = 1;
          break;
        }
        if (gCardInfo.attribute == ATTRIBUTE_LIGHT) {
          ret = 1;
          break;
        }
      }
    }
  }
  return ret;
}

// condition: WitchsApprentice or Hoshiningen
static unsigned char sub_8029EBC (void) {
  u32 ret = 0;
  unsigned char i;
  if (gActiveEffect.turnRow == 1 || gActiveEffect.turnRow == 2) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gTurnZones[1][i]->id);
      if (gCardInfo.attribute == ATTRIBUTE_SHADOW) {
        ret = 1;
        break;
      }
      if (gCardInfo.attribute == ATTRIBUTE_LIGHT) {
        ret = 1;
        break;
      }
    }
    if (!ret) {
      for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
        if (gTurnZones[2][i]->id == CARD_NONE)
          continue;
        SetCardInfo(gTurnZones[2][i]->id);
        if (gCardInfo.attribute == ATTRIBUTE_SHADOW) {
          ret = 1;
          break;
        }
        if (gCardInfo.attribute == ATTRIBUTE_LIGHT) {
          ret = 1;
          break;
        }
      }
    }
  }
  return ret;
}

static unsigned char ConditionBusterBlader (void) {
  u32 ret = 0;
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == CARD_NONE || !IsCardFaceUp(gTurnZones[2][i]))
        continue;
      SetCardInfo(gTurnZones[2][i]->id);
      if (gCardInfo.type == TYPE_DRAGON) {
        ret = 1;
        break;
      }
    }
    if (!ret) {
      SetCardInfo(gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard);
      if (gCardInfo.type == TYPE_DRAGON)
        ret = 1;
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE || !IsCardFaceUp(gTurnZones[1][i]))
        continue;
      SetCardInfo(gTurnZones[1][i]->id);
      if (gCardInfo.type == TYPE_DRAGON) {
        ret = 1;
        break;
      }
    }
    if (!ret) {
      SetCardInfo(gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard);
      if (gCardInfo.type == TYPE_DRAGON)
        ret = 1;
    }
  }
  return ret;
}

static unsigned char ConditionThunderNyanNyan (void) {
  u32 ret = 0;
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gTurnZones[1][i]->id);
      if (gCardInfo.attribute != ATTRIBUTE_LIGHT) {
        ret = 1;
        break;
      }
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gTurnZones[2][i]->id);
      if (gCardInfo.attribute != ATTRIBUTE_LIGHT) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

static unsigned char ConditionMessengerOfPeace_LockMonsters (void) {
  u32 ret = 0;
  unsigned char i;
  if (gActiveEffect.turnRow == 0) {
    if (gActiveEffect.col == GetFirstCardMatchZoneId(gTurnZones[0], gActiveEffect.cardId)) {
      for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
        if (gTurnZones[1][i]->id == CARD_NONE || IsCardLocked(gTurnZones[1][i]) == 1)
          continue;
        gStatMod.card = gTurnZones[1][i]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gTurnZones[1][i]);
        SetFinalStat(&gStatMod);
        if (gCardInfo.atk >= 1500) {
          ret = 1;
          break;
        }
      }
      if (!ret) {
        for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
          if (gTurnZones[2][i]->id == CARD_NONE || IsCardLocked(gTurnZones[2][i]) == 1)
            continue;
          gStatMod.card = gTurnZones[2][i]->id;
          gStatMod.field = gDuel.field;
          gStatMod.stage = GetFinalStage(gTurnZones[2][i]);
          SetFinalStat(&gStatMod);
          if (gCardInfo.atk >= 1500) {
            ret = 1;
            break;
          }
        }
      }
    }
  }
  else if (gActiveEffect.turnRow == 3) {
    if (gActiveEffect.col == GetFirstCardMatchZoneId(gTurnZones[3], gActiveEffect.cardId)) {
      for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
        if (gTurnZones[1][i]->id == CARD_NONE || IsCardLocked(gTurnZones[1][i]) == 1)
          continue;
        gStatMod.card = gTurnZones[1][i]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gTurnZones[1][i]);
        SetFinalStat(&gStatMod);
        if (gCardInfo.atk >= 1500) {
          ret = 1;
          break;
        }
      }
      if (!ret) {
        for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
          if (gTurnZones[2][i]->id == CARD_NONE || IsCardLocked(gTurnZones[2][i]) == 1)
            continue;
          gStatMod.card = gTurnZones[2][i]->id;
          gStatMod.field = gDuel.field;
          gStatMod.stage = GetFinalStage(gTurnZones[2][i]);
          SetFinalStat(&gStatMod);
          if (gCardInfo.atk >= 1500) {
            ret = 1;
            break;
          }
        }
      }
    }
  }
  return ret;
}

// MasterOfDragonSoldier should only power up for each dragon on the own field, not graveyards or opponent field.
// But then again, MasterOfDragonSoldier effect always triggers since it itself is a dragon, so the rest of the condition is irrelevant.
// With that said, not sure if this is actually the Condition fn, or if its unused.
static unsigned char ConditionMasterOfDragonSoldier (void) {
  u32 count;
  unsigned char i;
  if (gActiveEffect.turnRow != 1 && gActiveEffect.turnRow != 2)
    return 0;
  count = 0;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    SetCardInfo(gTurnZones[1][i]->id);
    if (gCardInfo.type == TYPE_DRAGON)
      count++;
  }
  for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
    SetCardInfo(gTurnZones[2][i]->id);
    if (gCardInfo.type == TYPE_DRAGON)
      count++;
  }
  SetCardInfo(gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard);
  if (gCardInfo.type == TYPE_DRAGON)
    count++;
  SetCardInfo(gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard);
  if (gCardInfo.type == TYPE_DRAGON)
    count++;
  if (!count)
    return 0;
  return 1;
}

static unsigned char ConditionTheWingedDragonOfRaPhoenixMode_Resurrect (void) {
  if (gActiveEffect.turnRow == 7) {
    if (gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard != THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE)
      return 0;
    if (NumEmptyZonesInRow(gTurnZones[1]))
      return 1;
  }
  else if (gActiveEffect.turnRow == 6) {
    if (gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard != THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE)
      return 0;
    if (NumEmptyZonesInRow(gTurnZones[2]))
      return 1;
  }
  return 0;
}

static unsigned char ConditionCommandAngel (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gTurnZones[1][i]->id);
      if (gCardInfo.type == TYPE_FAIRY) {
        return 1;
      }
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gTurnZones[2][i]->id);
      if (gCardInfo.type == TYPE_FAIRY) {
        return 1;
      }
    }
  }
  return 0;
}

static unsigned char ConditionNightmarePenguin (void) {
  unsigned char i;
  if (gActiveEffect.turnRow == 1) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[1][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gTurnZones[1][i]->id);
      if (gCardInfo.type == TYPE_SEA_DRAGON || gCardInfo.type == TYPE_REPTILE ||
          gCardInfo.type == TYPE_AQUA || gCardInfo.type == TYPE_FISH) {
        return 1;
      }
    }
  }
  else if (gActiveEffect.turnRow == 2) {
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      if (gTurnZones[2][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gTurnZones[2][i]->id);
      if (gCardInfo.type == TYPE_SEA_DRAGON || gCardInfo.type == TYPE_REPTILE ||
          gCardInfo.type == TYPE_AQUA || gCardInfo.type == TYPE_FISH) {
        return 1;
      }
    }
  }
  return 0;
}

// Check whether to activate a permanent effect
unsigned sub_802A478 (void) {
  SetCardInfo(gActiveEffect.cardId);
  return g8E0C800[gCardInfo.unk1E]();
}

static unsigned char sub_802A48 (void) {
  return 0;
}

/* --Bug--
   Intended behavior:
   Slifer's effect is not supposed to activate if the player doesn't have any cards in hand.
   However, because cardId is uninitialzed, instead of checking for
   CARD_NONE, NumCardMatchesInRow checks for whatever value is in register r1 at the time.
   There is no power boost if no cards are in hand, it's just that
   the permanent effect wouldn't trigger and therefore Slifer would remain
   face down if it was already face down.
   The fix would be to pass in CARD_NONE (i.e 0) to NumCardMatchesInRow.
*/
static unsigned char ConditionSliferTheSkyDragon (void) {
  u32 ret = 0;
  u16 cardId; // UB, uninitialzed variable is used
  // NOTE: it could also be the case that NumCardMatchesInRow
  // was implicitly declared and called with only 1 argument
  // but best to keep the UB local to this function
  if (gActiveEffect.turnRow == 1) {
    if (NumCardMatchesInRow(gTurnHands[INACTIVE_DUELIST], cardId) < MAX_ZONES_IN_ROW)
      ret = 1;
  }
  else if (gActiveEffect.turnRow == 2)
    if (NumCardMatchesInRow(gTurnHands[ACTIVE_DUELIST], cardId) < MAX_ZONES_IN_ROW)
      ret = 1;
  return ret;
}

static unsigned char ConditionDragonCaptureJar (void) {
  u32 ret = 0;
  if (gActiveEffect.turnRow == 0) {
    if (gActiveEffect.col == GetFirstCardMatchZoneId(gTurnZones[0], DRAGON_CAPTURE_JAR)) {
      unsigned char i;
      for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
        if (IsCardLocked(gTurnZones[2][i]) == 1)
          continue;
        SetCardInfo(gTurnZones[2][i]->id);
        if (gCardInfo.type == TYPE_DRAGON) {
          ret = 1;
          break;
        }
      }
    }
  }
  return ret;
}

static unsigned char sub_802A548 (void) {
  return 0;
}

// condition: HarpieLady, CyberHarpie, or HarpieLadySisters
static unsigned char sub_802A54C (void) {
  u32 ret = 0;
  if (gActiveEffect.turnRow == 1 && NumCardMatchesInRow(gTurnZones[1], HARPIES_PET_DRAGON) > 0)
    ret = 1;
  if (gActiveEffect.turnRow == 2 && NumCardMatchesInRow(gTurnZones[2], HARPIES_PET_DRAGON) > 0)
    ret = 1;
  return ret;
}

// condition: HarpieLady, CyberHarpie, or HarpieLadySisters
static unsigned char sub_802A594 (void) {
  u32 ret = 0;
  if (gActiveEffect.turnRow == 1 && NumCardMatchesInRow(gTurnZones[1], HARPIES_PET_DRAGON) > 0)
    ret = 1;
  if (gActiveEffect.turnRow == 2 && NumCardMatchesInRow(gTurnZones[2], HARPIES_PET_DRAGON) > 0)
    ret = 1;
  return ret;
}

// condition: HarpieLady, CyberHarpie, or HarpieLadySisters
static unsigned char sub_802A5DC (void) {
  u32 ret = 0;
  if (gActiveEffect.turnRow == 1 && NumCardMatchesInRow(gTurnZones[1], HARPIES_PET_DRAGON) > 0)
    ret = 1;
  if (gActiveEffect.turnRow == 2 && NumCardMatchesInRow(gTurnZones[2], HARPIES_PET_DRAGON) > 0)
    ret = 1;
  return ret;
}

static unsigned char ConditionMysticalElf (void) {
  u32 ret = 0;
  if (gActiveEffect.turnRow == 1) {
    if (NumCardMatchesInRow(gTurnZones[1], BLUE_EYES_WHITE_DRAGON) > 0)
      ret = 1;
  }
  else if (gActiveEffect.turnRow == 2)
    if (NumCardMatchesInRow(gTurnZones[2], BLUE_EYES_WHITE_DRAGON) > 0)
      ret = 1;
  return ret;
}

static unsigned char ConditionMonsterTamer (void) {
  u32 ret = 0;
  if (gActiveEffect.turnRow == 1) {
    if (NumCardMatchesInRow(gTurnZones[1], DUNGEON_WORM) > 0)
      ret = 1;
  }
  if (gActiveEffect.turnRow == 2)
    if (NumCardMatchesInRow(gTurnZones[2], DUNGEON_WORM) > 0)
      ret = 1;
  return ret;
}

static unsigned char sub_802A6A4 (void) {
  u32 ret = 0;
  if (gActiveEffect.turnRow == 1) {
    if (NumEmptyZonesInRow(gTurnZones[2]) < MAX_ZONES_IN_ROW)
      ret = 1;
  }
  else if (gActiveEffect.turnRow == 2)
    if (NumEmptyZonesInRow(gTurnZones[1]) < MAX_ZONES_IN_ROW)
      ret = 1;
  return ret;
}

// condition: DarkMagicianGirl or ToonDarkMagicianGirl
static unsigned char sub_802A6D8 (void) {
  u32 ret = 0;
  if (gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard == DARK_MAGICIAN ||
    gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
    ret = 1;
  else if (gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == DARK_MAGICIAN ||
    gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
    ret = 1;
  return ret;
}

// condition: DarkMagicianGirl or ToonDarkMagicianGirl
static unsigned char sub_802A704 (void) {
  u32 ret = 0;
  if (gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard == DARK_MAGICIAN ||
    gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
    ret = 1;
  else if (gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == DARK_MAGICIAN ||
    gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
    ret = 1;
  return ret;
}

static unsigned char sub_802A730 (void) {
  u32 ret = 0;
  if (gActiveEffect.turnRow == 1 || gActiveEffect.turnRow == 2)
    ret = 1;
  return ret;
}

static unsigned char sub_802A74C (void) {
  u32 ret = 0;
  if (gActiveEffect.turnRow == 1)
    ret = 1;
  else if (gActiveEffect.turnRow == 2)
    ret = 1;
  return ret;
}

static unsigned char sub_802A764 (void) {
  return 0;
}

static unsigned char sub_802A768 (void) {
  return 0;
}

static unsigned char ConditionLavaGolem_Summon (void) {
  u32 ret = 0;
  if (gActiveEffect.turnRow == 4) {
    unsigned char i;
    u32 count = 0;
    for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
      u16 cardId = gTurnZones[1][i]->id;
      if (cardId != CARD_NONE && IsGodCard(cardId) != 1 && cardId != LAVA_GOLEM)
        count++;
    }
    if (count > 1)
      ret = 1;
  }
  return ret;
}

static unsigned char sub_802A7D4 (void) {
  u32 ret = 0;
  if (gActiveEffect.turnRow == 1) {
    if (NumEmptyZonesInRow(gTurnZones[2]) < MAX_ZONES_IN_ROW)
      ret = 1;
  }
  else if (gActiveEffect.turnRow == 2)
    if (NumEmptyZonesInRow(gTurnZones[1]) < MAX_ZONES_IN_ROW)
      ret = 1;
  return ret;
}

static unsigned char sub_802A808 (void) {
  if (gActiveEffect.turnRow == 2) {
    if (NumEmptyZonesInRow(gTurnHands[ACTIVE_DUELIST]) > 3)
      return 1;
  }
  else if (gActiveEffect.turnRow == 1)
    if (NumEmptyZonesInRow(gTurnHands[INACTIVE_DUELIST]) > 3)
      return 1;
  return 0;
}

static unsigned char ConditionJamBreedingMachine_BlockSummoning (void) {
  u32 ret = 0;
  if (gActiveEffect.turnRow == 3) {
    if (gActiveEffect.col == GetFirstCardMatchZoneId(gTurnZones[3], JAM_BREEDING_MACHINE)) {
      unsigned char i;
      for (i = 0; i < MAX_ZONES_IN_ROW; i++) {
        struct DuelCard* zone = gTurnZones[4][i];
        if (zone->id != CARD_NONE && GetTypeGroup(zone->id) == TYPE_GROUP_MONSTER && IsCardLocked(zone) != 1) {
          ret = 1;
          break;
        }
      }
    }
  }
  return ret;
}

static unsigned char sub_802A8A0 (void) {
  return 0;
}

static unsigned char sub_802A8A4 (void) {
  return 0;
}

static unsigned char sub_802A8A8 (void) {
  u32 ret = 0;
  if (gActiveEffect.turnRow == 1 || gActiveEffect.turnRow == 2)
    ret = 1;
  return ret;
}

static unsigned char sub_802A8C4 (void) {
  u32 ret = 0;
  if (gActiveEffect.turnRow == 1 || gActiveEffect.turnRow == 2)
    ret = 1;
  return ret;
}

static unsigned char sub_802A8E0 (void) {
  return 0;
}

static unsigned char sub_802A8E4 (void) {
  return 0;
}

static unsigned char ConditionDarkFlareKnight (void) {
  u32 ret = 0;
  if (gActiveEffect.turnRow == 7) {
    if (gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard == DARK_FLARE_KNIGHT && NumEmptyZonesInRow(gTurnZones[1]) > 0)
      return 1;
  }
  else if (gActiveEffect.turnRow == 6)
    if (gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == DARK_FLARE_KNIGHT && NumEmptyZonesInRow(gTurnZones[2]) > 0)
      return 1;
  return 0;
}

static unsigned char sub_802A948 (void) {
  return 0;
}

static unsigned char sub_802A94C (void) {
  return 0;
}

static unsigned char ConditionExodiaNecross_DestroySelf (void) {
  if (gActiveEffect.turnRow == 1) {
    if (!GetExodiaFlag(gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard))
      return 1;
  }
  else if (gActiveEffect.turnRow == 2 && !GetExodiaFlag(gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard))
    return 1;
  return 0;
}

static unsigned char ConditionSpiritMessage1_DestroySelf (void) {
  if (gActiveEffect.turnRow == 0) {
    if (!NumCardMatchesInRow(gTurnZones[0], DESTINY_BOARD))
      return 1;
  }
  else if (gActiveEffect.turnRow == 3 && !NumCardMatchesInRow(gTurnZones[3], DESTINY_BOARD))
    return 1;
  return 0;
}

static unsigned char ConditionSpiritMessage2_DestroySelf (void) {
  if (gActiveEffect.turnRow == 0) {
    if (!NumCardMatchesInRow(gTurnZones[0], DESTINY_BOARD))
      return 1;
  }
  else if (gActiveEffect.turnRow == 3 && !NumCardMatchesInRow(gTurnZones[3], DESTINY_BOARD))
    return 1;
  return 0;
}

static unsigned char ConditionSpiritMessage3_DestroySelf (void) {
  if (gActiveEffect.turnRow == 0) {
    if (!NumCardMatchesInRow(gTurnZones[0], DESTINY_BOARD))
      return 1;
  }
  else if (gActiveEffect.turnRow == 3 && !NumCardMatchesInRow(gTurnZones[3], DESTINY_BOARD))
    return 1;
  return 0;
}

static unsigned char ConditionSpiritMessage4_DestroySelf (void) {
  if (gActiveEffect.turnRow == 0) {
    if (!NumCardMatchesInRow(gTurnZones[0], DESTINY_BOARD))
      return 1;
  }
  else if (gActiveEffect.turnRow == 3 && !NumCardMatchesInRow(gTurnZones[3], DESTINY_BOARD))
    return 1;
  return 0;
}

static unsigned char sub_802AA7C (void) {
  return 0;
}

static unsigned char sub_802AA80 (void) {
  return 0;
}

static unsigned char sub_802AA84 (void) {
  return 0;
}

static unsigned char sub_802AA88 (void) {
  return 0;
}

static unsigned char sub_802AA8C (void) {
  return 0;
}

static unsigned char sub_802AA90 (void) {
  return 0;
}

static unsigned char sub_802AA94 (void) {
  return 0;
}

static unsigned char sub_802AA98 (void) {
  return 0;
}

static unsigned char sub_802AA9C (void) {
  return 0;
}

static unsigned char sub_802AAA0 (void) {
  return 0;
}

static unsigned char sub_802AAA4 (void) {
  return 0;
}

static unsigned char sub_802AAA8 (void) {
  return 0;
}

static unsigned char sub_802AAAC (void) {
  return 0;
}

static unsigned char sub_802AAB0 (void) {
  return 0;
}

static unsigned char sub_802AAB4 (void) {
  return 0;
}

static unsigned char sub_802AAB8 (void) {
  return 0;
}

static unsigned char sub_802AABC (void) {
  return 0;
}

static unsigned char sub_802AAC0 (void) {
  return 0;
}

static unsigned char sub_802AAC4 (void) {
  return 0;
}

static unsigned char sub_802AAC8 (void) {
  return 0;
}

static unsigned char sub_802AACC (void) {
  return 0;
}

static unsigned char sub_802AAD0 (void) {
  return 0;
}

static unsigned char sub_802AAD4 (void) {
  return 0;
}

static unsigned char sub_802AAD8 (void) {
  return 0;
}

static unsigned char sub_802AADC (void) {
  return 0;
}

static unsigned char sub_802AAE0 (void) {
  return 0;
}

static unsigned char sub_802AAE4 (void) {
  return 0;
}

static unsigned char sub_802AAE8 (void) {
  return 0;
}

static unsigned char sub_802AAEC (void) {
  return 0;
}
