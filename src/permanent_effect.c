#include "global.h"

static unsigned char sub_80270B4 (u16);
extern u16 g8E0C6B8[];
extern u16 g8E0C6B0[];
extern void (*g8E0C6C0[]) (void);
extern unsigned char (*g8E0C800[]) (void);
extern unsigned char g2021DD8;
void sub_802ACC0 (void);
void sub_802ADF4 (void);
void sub_80408BC (void);
void sub_802ADA4 (void);
void ResetTempStagesForAllCards (void);
void sub_802AE44 (void);
void sub_8041104 (void);


void sub_802703C (void) {
  unsigned char unused[12];
  unsigned char i;
  for (i = 0; i < 5; i++) {
    unsigned char temp = sub_80270B4(gZones[2][i]->id);
    if (temp > 3)
      continue;
    gZones[2][i]->id = g8E0C6B8[temp];
    ResetCardEffectTextData();
    SetCardEffectTextType(10);
    gCardEffectTextData.textId = 14;
    gCardEffectTextData.cardId = g8E0C6B0[temp];
    gCardEffectTextData.cardId2 = g8E0C6B8[temp];
    sub_801CEBC();
  }
}

static unsigned char sub_80270B4 (u16 cardId) {
  unsigned char i;
  for (i = 0; i < 4 && cardId != g8E0C6B0[i]; i++)
    ;
  return i;
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

static void sub_8029864 (void);
static unsigned sub_802A478 (void);

static void sub_8027138 (void) {
  unsigned char i;
  g2021DE0.unk2 = 4;
  for (i = 0; i < 5; i++) {
    g2021DE0.unk3 = i;
    g2021DE0.unk0 = gHands[0][g2021DE0.unk3]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802A478() == 1) {
      sub_8034FEC(0x177);
      sub_8029864();
      if (!gHideEffectText)
        PlayMusic(0x177);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(0x177);
      return;
    }
  }

  g2021DE0.unk2 = 5;
  for (i = 0; i < 5; i++) {
    g2021DE0.unk3 = i;
    g2021DE0.unk0 = gHands[1][g2021DE0.unk3]->id;
    if (!gHideEffectText)
      sub_802ADF4();
    if (sub_802A478() == 1) {
      sub_8034FEC(0x177);
      sub_8029864();
      if (!gHideEffectText)
        PlayMusic(0x177);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(0x177);
      return;
    }
  }
  if (!gHideEffectText)
    PlayMusic(0x177);

  g2021DE0.unk2 = 6;
  g2021DE0.unk3 = 0;
  g2021DE0.unk0 = gNotSure[0]->graveyard;
  if (!gHideEffectText)
    sub_802ADF4();
  if (sub_802A478() == 1) {
    sub_8034FEC(0x177);
    sub_8029864();
    if (!gHideEffectText)
      PlayMusic(0x177);
  }
  if (IsDuelOver() == 1) {
    sub_8034FEC(0x177);
    return;
  }

  g2021DE0.unk2 = 7;
  g2021DE0.unk3 = 0;
  g2021DE0.unk0 = gNotSure[1]->graveyard;
  if (!gHideEffectText)
    sub_802ADF4();
  if (sub_802A478() == 1) {
    sub_8034FEC(0x177);
    sub_8029864();
    PlayMusic(0x177);
  }
  if (IsDuelOver() == 1) {
    sub_8034FEC(0x177);
    return;
  }

  g2021DE0.unk2 = 2;
  for (i = 0; i < 5; i++) {
    g2021DE0.unk3 = i;
    g2021DE0.unk0 = gZones[g2021DE0.unk2][i]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802A478() == 1) {
      sub_8034FEC(0x177);
      sub_8029864();
      if (!gHideEffectText)
        PlayMusic(0x177);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(0x177);
      return;
    }
  }

  g2021DE0.unk2 = 1;
  for (i = 0; i < 5; i++) {
    g2021DE0.unk3 = i;
    g2021DE0.unk0 = gZones[g2021DE0.unk2][i]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802A478() == 1) {
      sub_8034FEC(0x177);
      sub_8029864();
      if (!gHideEffectText)
        PlayMusic(0x177);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(0x177);
      return;
    }
  }

  g2021DE0.unk2 = 3;
  for (i = 0; i < 5; i++) {
    g2021DE0.unk3 = i;
    g2021DE0.unk0 = gZones[g2021DE0.unk2][i]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802A478() == 1) {
      sub_8034FEC(0x177);
      sub_8029864();
      if (!gHideEffectText)
        PlayMusic(0x177);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(0x177);
      return;
    }
  }

  g2021DE0.unk2 = 0;
  for (i = 0; i < 5; i++) {
    g2021DE0.unk3 = i;
    g2021DE0.unk0 = gZones[g2021DE0.unk2][i]->id;
    if (!gHideEffectText)
      sub_802ACC0();
    if (sub_802A478() == 1) {
      sub_8034FEC(0x177);
      sub_8029864();
      if (!gHideEffectText)
        PlayMusic(0x177);
    }
    if (IsDuelOver() == 1) {
      sub_8034FEC(0x177);
      return;
    }
  }
  sub_8034FEC(0x177);
}

static void sub_8027444 (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[1][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      SetCardInfo(gZones[3][i]->id);
      if (gCardInfo.trapEffect)
        ClearZoneAndSendMonToGraveyard(gZones[3][i], 0);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = JINZO;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      SetCardInfo(gZones[0][i]->id);
      if (gCardInfo.trapEffect)
        ClearZoneAndSendMonToGraveyard(gZones[0][i], 1);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = JINZO;
      sub_801CEBC();
    }
  }
}

// Slifer effect
static void sub_8027524 (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gHands[1][i]->id == CARD_NONE)
        continue;
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gHands[0][i]->id == CARD_NONE)
        continue;
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
}

static void sub_8027678 (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 0) {
    FlipCardFaceUp(gZones[0][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      // Inferred bug: IsGodCard checks the spell/trap row, therefore slifer is locked too
      if (IsCardLocked(gZones[0][i]) == 1 || IsGodCard(gZones[0][i]->id) == 1)
        continue;
      SetCardInfo(gZones[2][i]->id);
      if (gCardInfo.type == TYPE_DRAGON)
        LockCard(gZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = DRAGON_CAPTURE_JAR;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 3) {
    FlipCardFaceUp(gZones[3][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      // Inferred bug: IsGodCard checks the spell/trap row, therefore slifer is locked too
      if (IsCardLocked(gZones[2][i]) == 1 || IsGodCard(gZones[3][i]->id) == 1)
        continue;
      SetCardInfo(gZones[1][i]->id);
      if (gCardInfo.type == TYPE_DRAGON)
        LockCard(gZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = DRAGON_CAPTURE_JAR;
      sub_801CEBC();
    }
  }
}

static void sub_802779C (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[1][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == ARMORED_ZOMBIE)
        IncrementTempStage(gZones[1][i]);
      else if (gZones[1][i]->id == DRAGON_ZOMBIE)
        IncrementTempStage(gZones[1][i]);
      else if (gZones[1][i]->id == CLOWN_ZOMBIE)
        IncrementTempStage(gZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == ARMORED_ZOMBIE)
        IncrementTempStage(gZones[2][i]);
      else if (gZones[2][i]->id == DRAGON_ZOMBIE)
        IncrementTempStage(gZones[2][i]);
      else if (gZones[2][i]->id == CLOWN_ZOMBIE)
        IncrementTempStage(gZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
}

static void sub_80278A4 (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[1][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == HARPIES_PET_DRAGON)
        IncrementTempStage(gZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == HARPIES_PET_DRAGON)
        IncrementTempStage(gZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
}

static void sub_8027990 (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[1][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == HARPIES_PET_DRAGON) {
        IncrementTempStage(gZones[1][i]);
        IncrementTempStage(gZones[1][i]);
      }
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == HARPIES_PET_DRAGON) {
        IncrementTempStage(gZones[2][i]);
        IncrementTempStage(gZones[2][i]);
      }
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
}

static void sub_8027A88 (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[1][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == BLUE_EYES_WHITE_DRAGON)
        IncrementTempStage(gZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == BLUE_EYES_WHITE_DRAGON)
        IncrementTempStage(gZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
}

static void sub_8027B54 (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[1][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == DUNGEON_WORM)
        IncrementTempStage(gZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == DUNGEON_WORM)
        IncrementTempStage(gZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
}

static void sub_8027C44 (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[1][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id != CARD_NONE)
        DecrementTempStage(gZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id != CARD_NONE)
        DecrementTempStage(gZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
}

static void sub_8027D2C (void) {
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[1][g2021DE0.unk3]);
    if (gNotSure[1]->graveyard == DARK_MAGICIAN)
      IncrementTempStage(gZones[1][g2021DE0.unk3]);
    else if (gNotSure[1]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
      IncrementTempStage(gZones[1][g2021DE0.unk3]);
    if (gNotSure[0]->graveyard == DARK_MAGICIAN)
      IncrementTempStage(gZones[1][g2021DE0.unk3]);
    else if (gNotSure[0]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
      IncrementTempStage(gZones[1][g2021DE0.unk3]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[2][g2021DE0.unk3]);
    if (gNotSure[1]->graveyard == DARK_MAGICIAN)
      IncrementTempStage(gZones[2][g2021DE0.unk3]);
    else if (gNotSure[1]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
      IncrementTempStage(gZones[2][g2021DE0.unk3]);
    if (gNotSure[0]->graveyard == DARK_MAGICIAN)
      IncrementTempStage(gZones[2][g2021DE0.unk3]);
    else if (gNotSure[0]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
      IncrementTempStage(gZones[2][g2021DE0.unk3]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
}

static void sub_8027EB0 (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE || !IsCardFaceUp(gZones[1][i]))
        continue;
      SetCardInfo(gZones[1][i]->id);
      if (gCardInfo.type == TYPE_PLANT)
        IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == CARD_NONE || !IsCardFaceUp(gZones[2][i]))
        continue;
      SetCardInfo(gZones[2][i]->id);
      if (gCardInfo.type == TYPE_PLANT)
        IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
}

static void sub_8028008 (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id != CARD_NONE)
        if (gZones[1][i]->id == LAVA_BATTLEGUARD)
          IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id != CARD_NONE)
        if (gZones[2][i]->id == LAVA_BATTLEGUARD)
          IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
}

static void sub_802812C (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id != CARD_NONE)
        if (gZones[1][i]->id == SWAMP_BATTLEGUARD)
          IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id != CARD_NONE)
        if (gZones[2][i]->id == SWAMP_BATTLEGUARD)
          IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
}

static void sub_8028244 (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id != CARD_NONE)
        if (gZones[1][i]->id == M_WARRIOR_2)
          IncrementTempStage(gZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id != CARD_NONE)
        if (gZones[2][i]->id == M_WARRIOR_2)
          IncrementTempStage(gZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
}

static void sub_8028338 (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id != CARD_NONE)
        if (gZones[1][i]->id == M_WARRIOR_1)
          IncrementTempStage(gZones[1][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id != CARD_NONE)
        if (gZones[2][i]->id == M_WARRIOR_1)
          IncrementTempStage(gZones[2][i]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
}

static void sub_802842C (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id != CARD_NONE && IsCardFaceUp(gZones[1][i]))
        if (gZones[1][i]->id == LABYRINTH_WALL)
          IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id != CARD_NONE && IsCardFaceUp(gZones[2][i]))
        if (gZones[2][i]->id == LABYRINTH_WALL)
          IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
}

static void sub_8028574 (void) {
  unsigned char i;
  if (g2021DE0.unk2 != 1 && g2021DE0.unk2 != 2)
    return;
  FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  for (i = 0; i < 5; i++) {
    if (gZones[1][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gZones[1][i]->id);
    if (gCardInfo.attribute == ATTRIBUTE_SHADOW)
      DecrementTempStage(gZones[1][i]);
    else if (gCardInfo.attribute == ATTRIBUTE_LIGHT)
      IncrementTempStage(gZones[1][i]);
  }
  for (i = 0; i < 5; i++) {
    if (gZones[2][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gZones[2][i]->id);
    if (gCardInfo.attribute == ATTRIBUTE_SHADOW)
      DecrementTempStage(gZones[2][i]);
    else if (gCardInfo.attribute == ATTRIBUTE_LIGHT)
      IncrementTempStage(gZones[2][i]);
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
    sub_801CEBC();
  }
}

static void sub_802865C (void) {
  unsigned char i;
  if (g2021DE0.unk2 != 1 && g2021DE0.unk2 != 2)
    return;
  FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  for (i = 0; i < 5; i++) {
    if (gZones[1][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gZones[1][i]->id);
    if (gCardInfo.attribute == ATTRIBUTE_SHADOW)
      IncrementTempStage(gZones[1][i]);
    else if (gCardInfo.attribute == ATTRIBUTE_LIGHT)
      DecrementTempStage(gZones[1][i]);
  }
  for (i = 0; i < 5; i++) {
    if (gZones[2][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gZones[2][i]->id);
    if (gCardInfo.attribute == ATTRIBUTE_SHADOW)
      IncrementTempStage(gZones[2][i]);
    else if (gCardInfo.attribute == ATTRIBUTE_LIGHT)
      DecrementTempStage(gZones[2][i]);
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
    sub_801CEBC();
  }
}

static void sub_8028744 (void) {
  unsigned char i;
  if (g2021DE0.unk2 != 1 && g2021DE0.unk2 != 2)
    return;
  FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  for (i = 0; i < 5; i++) {
    if (gZones[1][i]->id == CARD_NONE || !IsCardFaceUp(gZones[1][i]))
      continue;
    SetCardInfo(gZones[1][i]->id);
    if (gCardInfo.type == TYPE_INSECT)
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  }
  for (i = 0; i < 5; i++) {
    if (gZones[2][i]->id == CARD_NONE || !IsCardFaceUp(gZones[2][i]))
      continue;
    SetCardInfo(gZones[2][i]->id);
    if (gCardInfo.type == TYPE_INSECT)
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
    sub_801CEBC();
  }
}

static void sub_802884C (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == CARD_NONE || !IsCardFaceUp(gZones[2][i]))
        continue;
      SetCardInfo(gZones[2][i]->id);
      if (gCardInfo.type == TYPE_DRAGON)
        IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
    SetCardInfo(gNotSure[0]->graveyard);
    if (gCardInfo.type == TYPE_DRAGON)
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE || !IsCardFaceUp(gZones[1][i]))
        continue;
      SetCardInfo(gZones[1][i]->id);
      if (gCardInfo.type == TYPE_DRAGON)
        IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
    SetCardInfo(gNotSure[1]->graveyard);
    if (gCardInfo.type == TYPE_DRAGON)
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
}

static void sub_80289DC (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE || !IsCardFaceUp(gZones[1][i]))
        continue;
      SetCardInfo(gZones[1][i]->id);
      if (gCardInfo.type == TYPE_DRAGON)
        IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    for (i = 0; i < 5; i++) {
      FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
      if (gZones[2][i]->id == CARD_NONE || !IsCardFaceUp(gZones[2][i]))
        continue;
      SetCardInfo(gZones[2][i]->id);
      if (gCardInfo.type == TYPE_DRAGON)
        IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
}

static void sub_8028B10 (void) {
  if (g2021DE0.unk2 == 1) {
    ClearZoneAndSendMonToGraveyard(gZones[g2021DE0.unk2][g2021DE0.unk3], 1);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    ClearZoneAndSendMonToGraveyard(gZones[g2021DE0.unk2][g2021DE0.unk3], 0);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
}

static void sub_8028B98 (void) {
  unsigned char i;
  if (g2021DE0.unk2 && g2021DE0.unk2 != 3)
    return;
  FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  for (i = 0; i < 5; i++) {
    if (gZones[1][i]->id == CARD_NONE)
      continue;
    gStatMod.card = gZones[1][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[1][i]);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk >= 1500)
      LockCard(gZones[1][i]);
  }
  for (i = 0; i < 5; i++) {
    if (gZones[2][i]->id == CARD_NONE)
      continue;
    gStatMod.card = gZones[2][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[2][i]);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk >= 1500)
      LockCard(gZones[2][i]);
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
    sub_801CEBC();
  }
}

static void sub_8028CAC (void) {
  u32 i;
  unsigned char j, zone;
  if (g2021DE0.unk2 != 4)
    return;
  for (i = 0, j = 0; j < 5 && i < 2; j++) {
    u16 cardId = gZones[1][j]->id;
    if (cardId != CARD_NONE && IsGodCard(cardId) != 1 && cardId != LAVA_GOLEM) {
      ClearZoneAndSendMonToGraveyard(gZones[1][j], 1);
      i++;
    }
  }
  zone = FirstEmptyZoneInRow(gZones[1]);
  CopyCard(gZones[1][zone], gZones[g2021DE0.unk2][g2021DE0.unk3]);
  ClearZone(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  FlipCardFaceUp(gZones[1][zone]);
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = g2021DE0.unk0;
    sub_801CEBC();
  }
}

static void sub_8028D74 (void) {
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[1][g2021DE0.unk3]);
    DecrementTempStage(gZones[2][(unsigned char)HighestAtkMonInRow(gZones[2])]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[2][g2021DE0.unk3]);
    DecrementTempStage(gZones[1][(unsigned char)HighestAtkMonInRow(gZones[1])]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
}

static void sub_8028E18 (void) {
  if (g2021DE0.unk2 == 1) {
    if (NumEmptyZonesInRow(gHands[1]) < 4)
      return;
    FlipCardFaceUp(gZones[1][g2021DE0.unk3]);
    IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    if (NumEmptyZonesInRow(gHands[0]) < 4)
      return;
    FlipCardFaceUp(gZones[2][g2021DE0.unk3]);
    IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
}

static void sub_8028ED8 (void) {
  unsigned char i;
  if (g2021DE0.unk2 != 1 && g2021DE0.unk2 != 2)
    return;
  FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  for (i = 0; i < 5; i++) {
    SetCardInfo(gZones[1][i]->id);
    if (gCardInfo.type == TYPE_DRAGON)
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  }
  for (i = 0; i < 5; i++) {
    SetCardInfo(gZones[2][i]->id);
    if (gCardInfo.type == TYPE_DRAGON)
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  }
  SetCardInfo(gNotSure[0]->graveyard);
  if (gCardInfo.type == TYPE_DRAGON)
    IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  SetCardInfo(gNotSure[1]->graveyard);
  if (gCardInfo.type == TYPE_DRAGON)
    IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = g2021DE0.unk0;
    sub_801CEBC();
  }
}

static void sub_8029004 (void) {
  unsigned char emptyZone;
  if (g2021DE0.unk2 == 7) {
    if (gNotSure[1]->graveyard != THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE)
      return;
    if (!NumEmptyZonesInRow(gZones[1]))
      return;
    GetGraveCardAndClearGrave(1);
    emptyZone = FirstEmptyZoneInRow(gZones[1]);
    gZones[1][emptyZone]->id = THE_WINGED_DRAGON_OF_RA_BATTLE_MODE;
    gZones[1][emptyZone]->isLocked = FALSE;
    gZones[1][emptyZone]->isDefending = FALSE;
    gZones[1][emptyZone]->unkTwo = FALSE;
    gZones[1][emptyZone]->unk4 = 2;
    gZones[1][emptyZone]->willChangeSides = FALSE;
    FlipCardFaceDown(gZones[1][emptyZone]);
    ResetPermStage(gZones[1][emptyZone]);
    ResetTempStage(gZones[1][emptyZone]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 6) {
    if (gNotSure[0]->graveyard != THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE)
      return;
    if (!NumEmptyZonesInRow(gZones[2]))
      return;
    GetGraveCardAndClearGrave(0);
    emptyZone = FirstEmptyZoneInRow(gZones[2]);
    gZones[2][emptyZone]->id = THE_WINGED_DRAGON_OF_RA_BATTLE_MODE;
    gZones[2][emptyZone]->isLocked = FALSE;
    gZones[2][emptyZone]->isDefending = FALSE;
    gZones[2][emptyZone]->unkTwo = FALSE;
    gZones[2][emptyZone]->unk4 = 2;
    gZones[2][emptyZone]->willChangeSides = FALSE;
    FlipCardFaceDown(gZones[2][emptyZone]);
    ResetPermStage(gZones[2][emptyZone]);
    ResetTempStage(gZones[2][emptyZone]);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
}

static void sub_8029158 (void) {
  unsigned char i;
  if (g2021DE0.unk2 != 1 && g2021DE0.unk2 != 2)
    return;
  FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  for (i = 0; i < 5; i++) {
    if (gZones[1][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gZones[1][i]->id);
    if (gCardInfo.type == TYPE_MACHINE)
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  }
  for (i = 0; i < 5; i++) {
    if (gZones[2][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gZones[2][i]->id);
    if (gCardInfo.type == TYPE_MACHINE)
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
    sub_801CEBC();
  }
}

static void sub_802923C (void) {
  unsigned char i;
  if (g2021DE0.unk2 != 1 && g2021DE0.unk2 != 2)
    return;
  FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  for (i = 0; i < 5; i++) {
    if (gZones[1][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gZones[1][i]->id);
    if (gCardInfo.type == TYPE_MACHINE) {
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
  }
  for (i = 0; i < 5; i++) {
    if (gZones[2][i]->id == CARD_NONE)
      continue;
    SetCardInfo(gZones[2][i]->id);
    if (gCardInfo.type == TYPE_MACHINE) {
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
      IncrementTempStage(gZones[g2021DE0.unk2][g2021DE0.unk3]);
    }
  }
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
    sub_801CEBC();
  }
}

static void sub_802934C (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[1][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gZones[1][i]->id);
      if (gCardInfo.type == TYPE_FAIRY) {
        IncrementTempStage(gZones[1][i]);
      }
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gZones[2][i]->id);
      if (gCardInfo.type == TYPE_FAIRY) {
        IncrementTempStage(gZones[2][i]);
      }
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
}

static void sub_8029450 (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    FlipCardFaceUp(gZones[1][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gZones[1][i]->id);
      if (gCardInfo.type == TYPE_SEA_DRAGON || gCardInfo.type == TYPE_REPTILE ||
        gCardInfo.type == TYPE_AQUA || gCardInfo.type == TYPE_FISH)
        {
          IncrementTempStage(gZones[1][i]);
        }

    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    FlipCardFaceUp(gZones[2][g2021DE0.unk3]);
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gZones[2][i]->id);
      if (gCardInfo.type == TYPE_SEA_DRAGON || gCardInfo.type == TYPE_REPTILE ||
        gCardInfo.type == TYPE_AQUA || gCardInfo.type == TYPE_FISH)
        {
          IncrementTempStage(gZones[2][i]);
        }

    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = gZones[g2021DE0.unk2][g2021DE0.unk3]->id;
      sub_801CEBC();
    }
  }
}

static void sub_8029578 (void) {
  struct DuelCard* zone;
  u16 graveyard;
  if (g2021DE0.unk2 == 7) {
    graveyard = gNotSure[1]->graveyard;
    if (graveyard != DARK_FLARE_KNIGHT)
      return;
    if (NumEmptyZonesInRow(gZones[1]) > 0) {
      GetGraveCardAndClearGrave(1);
      zone = gZones[1][(unsigned char)FirstEmptyZoneInRow(gZones[1])];
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
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 6) {
    graveyard = gNotSure[0]->graveyard;
    if (graveyard != DARK_FLARE_KNIGHT)
      return;
    if (NumEmptyZonesInRow(gZones[2]) > 0) {
      GetGraveCardAndClearGrave(0);
      zone = gZones[2][(unsigned char)FirstEmptyZoneInRow(gZones[2])];
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
      sub_801CEBC();
    }
  }
}

// Exodia Necross
static void sub_80296B8 (void) {
  if (g2021DE0.unk2 == 1) {
    if (!GetExodiaFlag(gNotSure[1]->graveyard))
      ClearZoneAndSendMonToGraveyard(gZones[g2021DE0.unk2][g2021DE0.unk3], 1);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 2) {
    if (!GetExodiaFlag(gNotSure[0]->graveyard))
      ClearZoneAndSendMonToGraveyard(gZones[g2021DE0.unk2][g2021DE0.unk3], 0);
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
}

static void sub_8029764 (void) {
  unsigned char i;
  struct DuelCard* zone;
  if (g2021DE0.unk2 == 0) {
    for (i = 0; i < 5; i++) {
      u16 id;
      zone = gZones[0][i];
      id = zone->id;
      if (id != CARD_NONE && GetFINAL_Flag(id) & 0x1E)
        ClearZoneAndSendMonToGraveyard(zone, 1);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
  else if (g2021DE0.unk2 == 3) {
    for (i = 0; i < 5; i++) {
      zone = gZones[3][i];
      if (zone->id != CARD_NONE && GetFINAL_Flag(zone->id) & 0x1E)
        ClearZoneAndSendMonToGraveyard(zone, 0);
    }
    if (!gHideEffectText) {
      gCardEffectTextData.cardId = g2021DE0.unk0;
      sub_801CEBC();
    }
  }
}

void sub_8029820 (void) {
  g2021DE0.unk4 = WhoseTurn();
  if (!gHideEffectText) {
    sub_80408BC();
    sub_802ADA4();
  }
  ResetTempStagesForAllCards();
  if (!gHideEffectText)
    sub_8041104();
  sub_8027138();
  if (!gHideEffectText)
    sub_802AE44();
}

static void sub_8029864 (void) {
  ResetCardEffectTextData();
  SetCardEffectTextType(8);
  SetCardInfo(g2021DE0.unk0);
  g8E0C6C0[gCardInfo.unk1E]();
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

static void sub_80298C0 (void) {
  if (g2021DE0.unk2 != 3)
    return;
  FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  sub_80404F0(0);
  LockMonsterCardsInRow(4);
  FlipCardFaceUp(gZones[g2021DE0.unk2][g2021DE0.unk3]);
  if (!gHideEffectText) {
    gCardEffectTextData.cardId = g2021DE0.unk0;
    sub_801CEBC();
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
  sub_8029764();
}

static void sub_802994C (void) {
  sub_8029764();
}

static void sub_8029958 (void) {
  sub_8029764();
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

static unsigned char sub_80299D8 (void) {
  u32 ret = 0;
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    if (g2021DE0.unk3 == GetFirstCardMatchZoneId(gZones[1], JINZO))
      for (i = 0; i < 5; i++) {
        if (gZones[3][i]->id == CARD_NONE)
          continue;
        SetCardInfo(gZones[3][i]->id);
        if (gCardInfo.trapEffect) {
          ret = 1;
          break;
        }
      }
  }
  else if (g2021DE0.unk2 == 2) {
    if (g2021DE0.unk3 == GetFirstCardMatchZoneId(gZones[2], JINZO))
      for (i = 0; i < 5; i++) {
        if (gZones[0][i]->id == CARD_NONE)
          continue;
        SetCardInfo(gZones[0][i]->id);
        if (gCardInfo.trapEffect) {
          ret = 1;
          break;
        }
      }
  }
  return ret;
}

static unsigned char sub_8029A7C (void) {
  u32 ret = 0;
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == ARMORED_ZOMBIE) {
        ret = 1;
        break;
      }
      else if (gZones[1][i]->id == DRAGON_ZOMBIE) {
        ret = 1;
        break;
      }
      else if (gZones[1][i]->id == CLOWN_ZOMBIE) {
        ret = 1;
        break;
      }
    }
  }
  else if (g2021DE0.unk2 == 2) {
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == ARMORED_ZOMBIE) {
        ret = 1;
        break;
      }
      else if (gZones[2][i]->id == DRAGON_ZOMBIE) {
        ret = 1;
        break;
      }
      else if (gZones[2][i]->id == CLOWN_ZOMBIE) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

static unsigned char sub_8029AF4 (void) {
  u32 ret = 0;
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE || !IsCardFaceUp(gZones[1][i]))
        continue;
      SetCardInfo(gZones[1][i]->id);
      if (gCardInfo.type == TYPE_PLANT) {
        ret = 1;
        break;
      }
    }
  }
  else if (g2021DE0.unk2 == 2) {
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == CARD_NONE || !IsCardFaceUp(gZones[2][i]))
        continue;
      SetCardInfo(gZones[2][i]->id);
      if (gCardInfo.type == TYPE_PLANT) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

static unsigned char sub_8029B94 (void) {
  u32 ret = 0;
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE)
        continue;
      if (gZones[1][i]->id == LAVA_BATTLEGUARD) {
        ret = 1;
        break;
      }
    }
  }
  else if (g2021DE0.unk2 == 2) {
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == CARD_NONE)
        continue;
      if (gZones[2][i]->id == LAVA_BATTLEGUARD) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

static unsigned char sub_8029C08 (void) {
  u32 ret = 0;
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE)
        continue;
      if (gZones[1][i]->id == SWAMP_BATTLEGUARD) {
        ret = 1;
        break;
      }
    }
  }
  else if (g2021DE0.unk2 == 2) {
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == CARD_NONE)
        continue;
      if (gZones[2][i]->id == SWAMP_BATTLEGUARD) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

static unsigned char sub_8029C8C (void) {
  u32 ret = 0;
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE)
        continue;
      if (gZones[1][i]->id == M_WARRIOR_2) {
        ret = 1;
        break;
      }
    }
  }
  else if (g2021DE0.unk2 == 2) {
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == CARD_NONE)
        continue;
      if (gZones[2][i]->id == M_WARRIOR_2) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

static unsigned char sub_8029D10 (void) {
  u32 ret = 0;
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE)
        continue;
      if (gZones[1][i]->id == M_WARRIOR_1) {
        ret = 1;
        break;
      }
    }
  }
  else if (g2021DE0.unk2 == 2) {
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == CARD_NONE)
        continue;
      if (gZones[2][i]->id == M_WARRIOR_1) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

static unsigned char sub_8029D94 (void) {
  u32 ret = 0;
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE || !IsCardFaceUp(gZones[1][i]))
        continue;
      if (gZones[1][i]->id == LABYRINTH_WALL) {
        ret = 1;
        break;
      }
    }
  }
  else if (g2021DE0.unk2 == 2) {
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == CARD_NONE || !IsCardFaceUp(gZones[2][i]))
        continue;
      if (gZones[2][i]->id == LABYRINTH_WALL) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

static unsigned char sub_8029E34 (void) {
  u32 ret = 0;
  unsigned char i;
  if (g2021DE0.unk2 == 1 || g2021DE0.unk2 == 2) {
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gZones[1][i]->id);
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
      for (i = 0; i < 5; i++) {
        if (gZones[2][i]->id == CARD_NONE)
          continue;
        SetCardInfo(gZones[2][i]->id);
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

static unsigned char sub_8029EBC (void) {
  u32 ret = 0;
  unsigned char i;
  if (g2021DE0.unk2 == 1 || g2021DE0.unk2 == 2) {
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gZones[1][i]->id);
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
      for (i = 0; i < 5; i++) {
        if (gZones[2][i]->id == CARD_NONE)
          continue;
        SetCardInfo(gZones[2][i]->id);
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

static unsigned char sub_8029F44 (void) {
  u32 ret = 0;
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == CARD_NONE || !IsCardFaceUp(gZones[2][i]))
        continue;
      SetCardInfo(gZones[2][i]->id);
      if (gCardInfo.type == TYPE_DRAGON) {
        ret = 1;
        break;
      }
    }
    if (!ret) {
      SetCardInfo(gNotSure[0]->graveyard);
      if (gCardInfo.type == TYPE_DRAGON)
        ret = 1;
    }
  }
  else if (g2021DE0.unk2 == 2) {
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE || !IsCardFaceUp(gZones[1][i]))
        continue;
      SetCardInfo(gZones[1][i]->id);
      if (gCardInfo.type == TYPE_DRAGON) {
        ret = 1;
        break;
      }
    }
    if (!ret) {
      SetCardInfo(gNotSure[1]->graveyard);
      if (gCardInfo.type == TYPE_DRAGON)
        ret = 1;
    }
  }
  return ret;
}

static unsigned char sub_802A008 (void) {
  u32 ret = 0;
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gZones[1][i]->id);
      if (gCardInfo.attribute != ATTRIBUTE_LIGHT) {
        ret = 1;
        break;
      }
    }
  }
  else if (g2021DE0.unk2 == 2) {
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gZones[2][i]->id);
      if (gCardInfo.attribute != ATTRIBUTE_LIGHT) {
        ret = 1;
        break;
      }
    }
  }
  return ret;
}

static unsigned char sub_802A088 (void) {
  u32 ret = 0;
  unsigned char i;
  if (g2021DE0.unk2 == 0) {
    if (g2021DE0.unk3 == GetFirstCardMatchZoneId(gZones[0], g2021DE0.unk0)) {
      for (i = 0; i < 5; i++) {
        if (gZones[1][i]->id == CARD_NONE || IsCardLocked(gZones[1][i]) == 1)
          continue;
        gStatMod.card = gZones[1][i]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gZones[1][i]);
        SetFinalStat(&gStatMod);
        if (gCardInfo.atk >= 1500) {
          ret = 1;
          break;
        }
      }
      if (!ret) {
        for (i = 0; i < 5; i++) {
          if (gZones[2][i]->id == CARD_NONE || IsCardLocked(gZones[2][i]) == 1)
            continue;
          gStatMod.card = gZones[2][i]->id;
          gStatMod.field = gDuel.field;
          gStatMod.stage = GetFinalStage(gZones[2][i]);
          SetFinalStat(&gStatMod);
          if (gCardInfo.atk >= 1500) {
            ret = 1;
            break;
          }
        }
      }
    }
  }
  else if (g2021DE0.unk2 == 3) {
    if (g2021DE0.unk3 == GetFirstCardMatchZoneId(gZones[3], g2021DE0.unk0)) {
      for (i = 0; i < 5; i++) {
        if (gZones[1][i]->id == CARD_NONE || IsCardLocked(gZones[1][i]) == 1)
          continue;
        gStatMod.card = gZones[1][i]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gZones[1][i]);
        SetFinalStat(&gStatMod);
        if (gCardInfo.atk >= 1500) {
          ret = 1;
          break;
        }
      }
      if (!ret) {
        for (i = 0; i < 5; i++) {
          if (gZones[2][i]->id == CARD_NONE || IsCardLocked(gZones[2][i]) == 1)
            continue;
          gStatMod.card = gZones[2][i]->id;
          gStatMod.field = gDuel.field;
          gStatMod.stage = GetFinalStage(gZones[2][i]);
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

static unsigned char sub_802A268 (void) {
  u32 counter;
  unsigned char i;
  if (g2021DE0.unk2 != 1 && g2021DE0.unk2 != 2)
    return 0;
  counter = 0;
  for (i = 0; i < 5; i++) {
    SetCardInfo(gZones[1][i]->id);
    if (gCardInfo.type == TYPE_DRAGON)
      counter++;
  }
  for (i = 0; i < 5; i++) {
    SetCardInfo(gZones[2][i]->id);
    if (gCardInfo.type == TYPE_DRAGON)
      counter++;
  }
  SetCardInfo(gNotSure[0]->graveyard);
  if (gCardInfo.type == TYPE_DRAGON)
    counter++;
  SetCardInfo(gNotSure[1]->graveyard);
  if (gCardInfo.type == TYPE_DRAGON)
    counter++;
  if (!counter)
    return 0;
  return 1;
}

static unsigned char sub_802A308 (void) {
  if (g2021DE0.unk2 == 7) {
    if (gNotSure[1]->graveyard != THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE)
      return 0;
    if (NumEmptyZonesInRow(gZones[1]))
      return 1;
  }
  else if (g2021DE0.unk2 == 6) {
    if (gNotSure[0]->graveyard != THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE)
      return 0;
    if (NumEmptyZonesInRow(gZones[2]))
      return 1;
  }
  return 0;
}

static unsigned char sub_802A360 (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gZones[1][i]->id);
      if (gCardInfo.type == TYPE_FAIRY) {
        return 1;
      }
    }
  }
  else if (g2021DE0.unk2 == 2) {
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gZones[2][i]->id);
      if (gCardInfo.type == TYPE_FAIRY) {
        return 1;
      }
    }
  }
  return 0;
}

static unsigned char sub_802A3E0 (void) {
  unsigned char i;
  if (g2021DE0.unk2 == 1) {
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gZones[1][i]->id);
      if (gCardInfo.type == TYPE_SEA_DRAGON || gCardInfo.type == TYPE_REPTILE ||
          gCardInfo.type == TYPE_AQUA || gCardInfo.type == TYPE_FISH) {
        return 1;
      }
    }
  }
  else if (g2021DE0.unk2 == 2) {
    for (i = 0; i < 5; i++) {
      if (gZones[2][i]->id == CARD_NONE)
        continue;
      SetCardInfo(gZones[2][i]->id);
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
  SetCardInfo(g2021DE0.unk0);
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
static unsigned char sub_802A4AC (void) {
  u32 ret = 0;
  u16 cardId; // UB, uninitialzed variable is used
  // NOTE: it could also be the case that NumCardMatchesInRow
  // was implicitly declared and called with only 1 argument
  // but best to keep the UB local to this function
  if (g2021DE0.unk2 == 1) {
    if (NumCardMatchesInRow(gHands[1], cardId) < 5)
      ret = 1;
  }
  else if (g2021DE0.unk2 == 2)
    if (NumCardMatchesInRow(gHands[0], cardId) < 5)
      ret = 1;
  return ret;
}

static unsigned char sub_802A4E0 (void) {
  u32 ret = 0;
  if (g2021DE0.unk2 == 0) {
    if (g2021DE0.unk3 == GetFirstCardMatchZoneId(gZones[0], DRAGON_CAPTURE_JAR)) {
      unsigned char i;
      for (i = 0; i < 5; i++) {
        if (IsCardLocked(gZones[2][i]) == 1)
          continue;
        SetCardInfo(gZones[2][i]->id);
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

static unsigned char sub_802A54C (void) {
  u32 ret = 0;
  if (g2021DE0.unk2 == 1 && NumCardMatchesInRow(gZones[1], HARPIES_PET_DRAGON) > 0)
    ret = 1;
  if (g2021DE0.unk2 == 2 && NumCardMatchesInRow(gZones[2], HARPIES_PET_DRAGON) > 0)
    ret = 1;
  return ret;
}

static unsigned char sub_802A594 (void) {
  u32 ret = 0;
  if (g2021DE0.unk2 == 1 && NumCardMatchesInRow(gZones[1], HARPIES_PET_DRAGON) > 0)
    ret = 1;
  if (g2021DE0.unk2 == 2 && NumCardMatchesInRow(gZones[2], HARPIES_PET_DRAGON) > 0)
    ret = 1;
  return ret;
}

static unsigned char sub_802A5DC (void) {
  u32 ret = 0;
  if (g2021DE0.unk2 == 1 && NumCardMatchesInRow(gZones[1], HARPIES_PET_DRAGON) > 0)
    ret = 1;
  if (g2021DE0.unk2 == 2 && NumCardMatchesInRow(gZones[2], HARPIES_PET_DRAGON) > 0)
    ret = 1;
  return ret;
}

static unsigned char sub_802A624 (void) {
  u32 ret = 0;
  if (g2021DE0.unk2 == 1) {
    if (NumCardMatchesInRow(gZones[1], BLUE_EYES_WHITE_DRAGON) > 0)
      ret = 1;
  }
  else if (g2021DE0.unk2 == 2)
    if (NumCardMatchesInRow(gZones[2], BLUE_EYES_WHITE_DRAGON) > 0)
      ret = 1;
  return ret;
}

static unsigned char sub_802A65C (void) {
  u32 ret = 0;
  if (g2021DE0.unk2 == 1) {
    if (NumCardMatchesInRow(gZones[1], DUNGEON_WORM) > 0)
      ret = 1;
  }
  if (g2021DE0.unk2 == 2)
    if (NumCardMatchesInRow(gZones[2], DUNGEON_WORM) > 0)
      ret = 1;
  return ret;
}

static unsigned char sub_802A6A4 (void) {
  u32 ret = 0;
  if (g2021DE0.unk2 == 1) {
    if (NumEmptyZonesInRow(gZones[2]) < 5)
      ret = 1;
  }
  else if (g2021DE0.unk2 == 2)
    if (NumEmptyZonesInRow(gZones[1]) < 5)
      ret = 1;
  return ret;
}

static unsigned char sub_802A6D8 (void) {
  u32 ret = 0;
  if (gNotSure[1]->graveyard == DARK_MAGICIAN || gNotSure[1]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
    ret = 1;
  else if (gNotSure[0]->graveyard == DARK_MAGICIAN || gNotSure[0]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
    ret = 1;
  return ret;
}

static unsigned char sub_802A704 (void) {
  u32 ret = 0;
  if (gNotSure[1]->graveyard == DARK_MAGICIAN || gNotSure[1]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
    ret = 1;
  else if (gNotSure[0]->graveyard == DARK_MAGICIAN || gNotSure[0]->graveyard == MAGICIAN_OF_BLACK_CHAOS)
    ret = 1;
  return ret;
}

static unsigned char sub_802A730 (void) {
  u32 ret = 0;
  if (g2021DE0.unk2 == 1 || g2021DE0.unk2 == 2)
    ret = 1;
  return ret;
}

static unsigned char sub_802A74C (void) {
  u32 ret = 0;
  if (g2021DE0.unk2 == 1)
    ret = 1;
  else if (g2021DE0.unk2 == 2)
    ret = 1;
  return ret;
}

static unsigned char sub_802A764 (void) {
  return 0;
}

static unsigned char sub_802A768 (void) {
  return 0;
}

static unsigned char sub_802A76C (void) {
  u32 ret = 0;
  if (g2021DE0.unk2 == 4) {
    unsigned char i;
    u32 counter = 0;
    for (i = 0; i < 5; i++) {
      u16 cardId = gZones[1][i]->id;
      if (cardId != CARD_NONE && IsGodCard(cardId) != 1 && cardId != LAVA_GOLEM)
        counter++;
    }
    if (counter > 1)
      ret = 1;
  }
  return ret;
}

static unsigned char sub_802A7D4 (void) {
  u32 ret = 0;
  if (g2021DE0.unk2 == 1) {
    if (NumEmptyZonesInRow(gZones[2]) < 5)
      ret = 1;
  }
  else if (g2021DE0.unk2 == 2)
    if (NumEmptyZonesInRow(gZones[1]) < 5)
      ret = 1;
  return ret;
}

static unsigned char sub_802A808 (void) {
  if (g2021DE0.unk2 == 2) {
    if (NumEmptyZonesInRow(gHands[0]) > 3)
      return 1;
  }
  else if (g2021DE0.unk2 == 1)
    if (NumEmptyZonesInRow(gHands[1]) > 3)
      return 1;
  return 0;
}

static unsigned char sub_802A840 (void) {
  u32 ret = 0;
  if (g2021DE0.unk2 == 3) {
    if (g2021DE0.unk3 == GetFirstCardMatchZoneId(gZones[3], JAM_BREEDING_MACHINE)) {
      unsigned char i;
      for (i = 0; i < 5; i++) {
        struct DuelCard* zone = gZones[4][i];
        if (zone->id != CARD_NONE && GetTypeGroup(zone->id) == 1 /*TYPE_GROUP_MONSTER*/ && IsCardLocked(zone) != 1) {
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
  if (g2021DE0.unk2 == 1 || g2021DE0.unk2 == 2)
    ret = 1;
  return ret;
}

static unsigned char sub_802A8C4 (void) {
  u32 ret = 0;
  if (g2021DE0.unk2 == 1 || g2021DE0.unk2 == 2)
    ret = 1;
  return ret;
}

static unsigned char sub_802A8E0 (void) {
  return 0;
}

static unsigned char sub_802A8E4 (void) {
  return 0;
}

static unsigned char sub_802A8E8 (void) {
  u32 ret = 0;
  if (g2021DE0.unk2 == 7) {
    if (gNotSure[1]->graveyard == DARK_FLARE_KNIGHT && NumEmptyZonesInRow(gZones[1]) > 0)
      return 1;
  }
  else if (g2021DE0.unk2 == 6)
    if (gNotSure[0]->graveyard == DARK_FLARE_KNIGHT && NumEmptyZonesInRow(gZones[2]) > 0)
      return 1;
  return 0;
}

static unsigned char sub_802A948 (void) {
  return 0;
}

static unsigned char sub_802A94C (void) {
  return 0;
}

static unsigned char sub_802A950 (void) {
  if (g2021DE0.unk2 == 1) {
    if (!GetExodiaFlag(gNotSure[1]->graveyard))
      return 1;
  }
  else if (g2021DE0.unk2 == 2 && !GetExodiaFlag(gNotSure[0]->graveyard))
    return 1;
  return 0;
}

static unsigned char sub_802A98C (void) {
  if (g2021DE0.unk2 == 0) {
    if (!NumCardMatchesInRow(gZones[0], DESTINY_BOARD))
      return 1;
  }
  else if (g2021DE0.unk2 == 3 && !NumCardMatchesInRow(gZones[3], DESTINY_BOARD))
    return 1;
  return 0;
}

static unsigned char sub_802A9C8 (void) {
  if (g2021DE0.unk2 == 0) {
    if (!NumCardMatchesInRow(gZones[0], DESTINY_BOARD))
      return 1;
  }
  else if (g2021DE0.unk2 == 3 && !NumCardMatchesInRow(gZones[3], DESTINY_BOARD))
    return 1;
  return 0;
}

static unsigned char sub_802AA04 (void) {
  if (g2021DE0.unk2 == 0) {
    if (!NumCardMatchesInRow(gZones[0], DESTINY_BOARD))
      return 1;
  }
  else if (g2021DE0.unk2 == 3 && !NumCardMatchesInRow(gZones[3], DESTINY_BOARD))
    return 1;
  return 0;
}

static unsigned char sub_802AA40 (void) {
  if (g2021DE0.unk2 == 0) {
    if (!NumCardMatchesInRow(gZones[0], DESTINY_BOARD))
      return 1;
  }
  else if (g2021DE0.unk2 == 3 && !NumCardMatchesInRow(gZones[3], DESTINY_BOARD))
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
