#include "global.h"

void ActivateTrapEffect(); //TODO

static void SetRitualMonsterInZone (struct DuelCard*, u16 id);

static void EffectMooyanCurry (void) {
  gTrapEffectData.unk2 = gSpellEffectData.unk2;
  gTrapEffectData.unk3 = gSpellEffectData.unk3;
  gTrapEffectData.id = gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id;

  if (IsTrapTriggered() != 1 || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetPlayerLifePointsToAdd(200);
    else
      SetOpponentLifePointsToAdd(200);

    HandleDuelAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = MOOYAN_CURRY;
      sub_801CEBC();
    }
  }
  else
    ActivateTrapEffect(200);
}

static void EffectRedMedicine (void) {
  gTrapEffectData.unk2 = gSpellEffectData.unk2;
  gTrapEffectData.unk3 = gSpellEffectData.unk3;
  gTrapEffectData.id = gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id;

  if (IsTrapTriggered() != 1 || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetPlayerLifePointsToAdd(500);
    else
      SetOpponentLifePointsToAdd(500);

    HandleDuelAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = RED_MEDICINE;
      sub_801CEBC();
    }
  }
  else
    ActivateTrapEffect(500);
}

static void EffectGoblinsSecretRemedy (void) {
  gTrapEffectData.unk2 = gSpellEffectData.unk2;
  gTrapEffectData.unk3 = gSpellEffectData.unk3;
  gTrapEffectData.id = gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id;

  if (IsTrapTriggered() != 1 || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetPlayerLifePointsToAdd(1000);
    else
      SetOpponentLifePointsToAdd(1000);

    HandleDuelAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = GOBLINS_SECRET_REMEDY;
      sub_801CEBC();
    }
  }
  else
    ActivateTrapEffect(1000);
}

static void EffectSoulOfThePure (void) {
  gTrapEffectData.unk2 = gSpellEffectData.unk2;
  gTrapEffectData.unk3 = gSpellEffectData.unk3;
  gTrapEffectData.id = gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id;

  if (IsTrapTriggered() != 1 || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetPlayerLifePointsToAdd(2000);
    else
      SetOpponentLifePointsToAdd(2000);

    HandleDuelAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = SOUL_OF_THE_PURE;
      sub_801CEBC();
    }
  }
  else
    ActivateTrapEffect(2000);
}

static void EffectDianKetoTheCureMaster (void) {
  gTrapEffectData.unk2 = gSpellEffectData.unk2;
  gTrapEffectData.unk3 = gSpellEffectData.unk3;
  gTrapEffectData.id = gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id;

  if (IsTrapTriggered() != 1 || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetPlayerLifePointsToAdd(5000);
    else
      SetOpponentLifePointsToAdd(5000);

    HandleDuelAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = DIAN_KETO_THE_CURE_MASTER;
      sub_801CEBC();
    }
  }
  else
    ActivateTrapEffect(5000);
}

static void EffectSparks (void) {
  gTrapEffectData.unk2 = gSpellEffectData.unk2;
  gTrapEffectData.unk3 = gSpellEffectData.unk3;
  gTrapEffectData.id = gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id;

  if (IsTrapTriggered() != 1 || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetOpponentLifePointsToSubtract(50);
    else
      SetPlayerLifePointsToSubtract(50);

    HandleDuelAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = SPARKS;
      sub_801CEBC();
    }
  }
  else
    ActivateTrapEffect(50);
}

static void EffectHinotama (void) {
  gTrapEffectData.unk2 = gSpellEffectData.unk2;
  gTrapEffectData.unk3 = gSpellEffectData.unk3;
  gTrapEffectData.id = gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id;

  if (IsTrapTriggered() != 1 || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetOpponentLifePointsToSubtract(100);
    else
      SetPlayerLifePointsToSubtract(100);

    HandleDuelAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = HINOTAMA;
      sub_801CEBC();
    }
  }
  else
    ActivateTrapEffect(100);
}

static void EffectFinalFlame (void) {
  gTrapEffectData.unk2 = gSpellEffectData.unk2;
  gTrapEffectData.unk3 = gSpellEffectData.unk3;
  gTrapEffectData.id = gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id;

  if (IsTrapTriggered() != 1 || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetOpponentLifePointsToSubtract(200);
    else
      SetPlayerLifePointsToSubtract(200);

    HandleDuelAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = FINAL_FLAME;
      sub_801CEBC();
    }
  }
  else
    ActivateTrapEffect(200);
}

static void EffectOokazi (void) {
  gTrapEffectData.unk2 = gSpellEffectData.unk2;
  gTrapEffectData.unk3 = gSpellEffectData.unk3;
  gTrapEffectData.id = gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id;

  if (IsTrapTriggered() != 1 || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetOpponentLifePointsToSubtract(500);
    else
      SetPlayerLifePointsToSubtract(500);

    HandleDuelAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = OOKAZI;
      sub_801CEBC();
    }
  }
  else
    ActivateTrapEffect(500);
}

static void EffectTremendousFire (void) {
  gTrapEffectData.unk2 = gSpellEffectData.unk2;
  gTrapEffectData.unk3 = gSpellEffectData.unk3;
  gTrapEffectData.id = gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id;

  if (IsTrapTriggered() != 1 || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetOpponentLifePointsToSubtract(1000);
    else
      SetPlayerLifePointsToSubtract(1000);

    HandleDuelAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = TREMENDOUS_FIRE;
      sub_801CEBC();
    }
  }
  else
    ActivateTrapEffect(1000);
}

static void EffectDarkHole (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (!IsGodCard(gZones[1][i]->id))
      ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (!IsGodCard(gZones[2][i]->id))
      ClearZoneAndSendMonToGraveyard(gZones[2][i], 0);

   ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = DARK_HOLE;
    sub_801CEBC();
  }
}

static void EffectRaigeki (void) {
  gTrapEffectData.unk2 = gSpellEffectData.unk2;
  gTrapEffectData.unk3 = gSpellEffectData.unk3;
  gTrapEffectData.id = gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id;

  if (IsTrapTriggered() != 1 || gHideEffectText)
  {
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
      if (!IsGodCard(gZones[1][i]->id))
        ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = RAIGEKI;
      sub_801CEBC();
    }
  }
  else
    ActivateTrapEffect();
}

static void EffectLegendarySword (void) {
  if (sub_80555A4(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = LEGENDARY_SWORD;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectSwordOfDarkDestruction (void) {
  if (sub_80555D4(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = SWORD_OF_DARK_DESTRUCTION;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectDarkEnergy (void) {
  if (sub_8055604(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = DARK_ENERGY;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectAxeOfDespair (void) {
  if (sub_8055634(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = AXE_OF_DESPAIR;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectLaserCannonArmor (void) {
  if (sub_8055664(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = LASER_CANNON_ARMOR;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectInsectArmorWithLaserCannon (void) {
  if (sub_8055694(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = INSECT_ARMOR_WITH_LASER_CANNON;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectElfsLight (void) {
  if (sub_80556C4(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = ELFS_LIGHT;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectBeastFangs (void) {
  if (sub_80556F4(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = BEAST_FANGS;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectSteelShell (void) {
  if (sub_8055724(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = STEEL_SHELL;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectVileGerms (void) {
  if (sub_8055754(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = VILE_GERMS;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectBlackPendant (void) {
  if (sub_8055784(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = BLACK_PENDANT;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectSilverBowAndArrow (void) {
  if (sub_80557B4(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = SILVER_BOW_AND_ARROW;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectHornOfLight (void) {
  if (sub_80557E4(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = HORN_OF_LIGHT;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectHornOfTheUnicorn (void) {
  if (sub_8055814(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = HORN_OF_THE_UNICORN;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectDragonTreasure (void) {
  if (sub_8055844(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = DRAGON_TREASURE;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectElectroWhip (void) {
  if (sub_8055874(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = ELECTRO_WHIP;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectCyberShield (void) {
  if (sub_80558A4(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = CYBER_SHIELD;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectMysticalMoon (void) {
  if (sub_80558D4(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = MYSTICAL_MOON;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectMalevolentNuzzler (void) {
  if (sub_8055904(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = MALEVOLENT_NUZZLER;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectVioletCrystal (void) {
  if (sub_8055934(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = VIOLET_CRYSTAL;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectBookOfSecretArts (void) {
  if (sub_8055964(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = BOOK_OF_SECRET_ARTS;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectInvigoration (void) {
  if (sub_8055994(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = INVIGORATION;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectMachineConversionFactory (void) {
  if (sub_80559C4(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = MACHINE_CONVERSION_FACTORY;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectRaiseBodyHeat (void) {
  if (sub_80559F4(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = RAISE_BODY_HEAT;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectFollowWind (void) {
  if (sub_8055A24(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = FOLLOW_WIND;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectPowerOfKaishin (void) {
  if (sub_8055A54(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = POWER_OF_KAISHIN;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectStopDefense (void) {
  u8 i;

  gNotSure[1]->defenseBlocked = 1; //canDefend = 0;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    if (gZones[1][i]->id != CARD_NONE)
    {
      gZones[1][i]->isDefending = 0;
      gZones[1][i]->isFaceUp = 1;
    }
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = STOP_DEFENSE;
    sub_801CEBC();
  }
}

static void EffectSwordsOfRevealingLight (void) {
  u8 i;

  InitSorlTurns(1);

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gZones[1][i]->id != CARD_NONE)
      gZones[1][i]->isFaceUp = 1;

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = SWORDS_OF_REVEALING_LIGHT;
    sub_801CEBC();
  }
}

static void EffectDarkPiercingLight (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gZones[1][i]->id != CARD_NONE)
      gZones[1][i]->isFaceUp = 1;

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = DARK_PIERCING_LIGHT;
    sub_801CEBC();
  }
}

static void EffectSpellBindingCircle (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gZones[1][i]->id != CARD_NONE)
      DecrementPermStage(gZones[1][i]);

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = SPELLBINDING_CIRCLE;
    sub_801CEBC();
  }
}

static void EffectElegantEgotist (void) {
  if (gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id == HARPIE_LADY)
  {

    gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id = HARPIE_LADY_SISTERS;
    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = ELEGANT_EGOTIST;
      gCardEffectTextData.cardId2 = HARPIE_LADY;
      sub_801CEBC();
    }
  }

  if (gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id == CYBER_HARPIE)
  {
    gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id = HARPIE_LADY_SISTERS;
    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = ELEGANT_EGOTIST;
      gCardEffectTextData.cardId2 = CYBER_HARPIE;
      sub_801CEBC();
    }
  }
}

static void EffectBlackLusterRitual (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[1][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[1][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[1][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = BLACK_LUSTER_RITUAL;
      gCardEffectTextData.cardId2 = gRitualComponents[1][1];
      sub_801CEBC();
    }
  }
}

//these ritual effects seem to be leftover from The Sacred Cards
//(the card IDs do not match ROD's)

static void sub_804AED8 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[2][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[2][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[2][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x029F; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[2][1];
      sub_801CEBC();
    }
  }
}

static void sub_804AF58 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[3][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[3][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[3][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02A1; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[3][1];
      sub_801CEBC();
    }
  }
}

static void sub_804AFD8 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[4][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[4][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[4][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02A2; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[4][1];
      sub_801CEBC();
    }
  }
}

static void sub_804B058 (void) {
  u8 zones[3];
  u8 ritualId;

  if ((unsigned char)sub_804B144(zones, gRitualComponents[29]) == 1)
    ritualId = 29;
  else if ((unsigned char)sub_804B144(zones, gRitualComponents[28]) == 1)
    ritualId = 28;
  else if ((unsigned char)sub_804B144(zones, gRitualComponents[27]) == 1)
    ritualId = 27;
  else if ((unsigned char)sub_804B144(zones, gRitualComponents[5]) == 1)
    ritualId = 5;
  else
    return;

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
  SetRitualMonsterInZone(gZones[2][zones[0]], gRitualComponents[ritualId][1]);

  ClearZone(gZones[2][zones[1]]);
  ClearZone(gZones[2][zones[2]]);
  ResetNumTributes();

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = 0x02A3; //hardcoded id
    gCardEffectTextData.cardId2 = gRitualComponents[ritualId][1];
    sub_801CEBC();
  }
}

unsigned sub_804B144 (u8* zones, u16* ritualArr)
{
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gZones[2][i]->id == ritualArr[0])
      break;

  if (i == MAX_ZONES_IN_ROW)
    return 0;

  zones[0] = i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (i != zones[0] && gZones[2][i]->id == ritualArr[2])
      break;

  if (i == MAX_ZONES_IN_ROW)
    return 0;

  zones[1] = i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (i != zones[0] && i != zones[1] && gZones[2][i]->id == ritualArr[3])
      break;

  if (i == MAX_ZONES_IN_ROW)
    return 0;

  zones[2] = i;
  return 1;
}

static void sub_804B20C (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[9][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[9][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[9][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02A4; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[9][1];
      sub_801CEBC();
    }
  }
}

static void sub_804B294 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[10][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[10][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[10][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02A5; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[10][1];
      sub_801CEBC();
    }
  }
}

static void sub_804B31C (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[11][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[11][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[11][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02A6; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[11][1];
      sub_801CEBC();
    }
  }
}

static void sub_804B3A4 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[12][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[12][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[12][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02A7; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[12][1];
      sub_801CEBC();
    }
  }
}

static void sub_804B42C (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[13][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[13][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[13][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02A8; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[13][1];
      sub_801CEBC();
    }
  }
}

static void sub_804B4B4 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[14][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[14][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[14][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02B3; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[14][1];
      sub_801CEBC();
    }
  }
}

static void EffectMagicalLabyrinth (void) {
  if (sub_8055A84(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = MAGICAL_LABYRINTH;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectSalamandra (void) {
  if (sub_8055AB4(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = SALAMANDRA;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectKunaiWithChain (void) {
  if (sub_8055AE4(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = KUNAI_WITH_CHAIN;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectBrightCastle (void) {
  if (sub_8055B14(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = BRIGHT_CASTLE;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectCrushCard (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    if (gZones[1][i]->id != CARD_NONE && IsGodCard(gZones[1][i]->id) != 1)
    {
      gStatMod.card = gZones[1][i]->id;
      gStatMod.field = gDuel.field;
      gStatMod.stage = GetFinalStage(gZones[1][i]);
      SetFinalStat(&gStatMod);
      if (gCardInfo.atk >= 1500)
        ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
    }
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = CRUSH_CARD;
    sub_801CEBC();
  }
}

static void EffectShadowSpell (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    if (gZones[1][i]->id != CARD_NONE)
    {
      DecrementPermStage(gZones[1][i]);
      DecrementPermStage(gZones[1][i]);
    }
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = SHADOW_SPELL;
    sub_801CEBC();
  }
}

static void sub_804B9D0 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[15][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[15][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[15][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02B4; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[15][1];
      sub_801CEBC();
    }
  }
}

static void sub_804BA58 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[16][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[16][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[16][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02B5; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[16][1];
      sub_801CEBC();
    }
  }
}

static void sub_804BAE0 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[17][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[17][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[17][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02B6; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[17][1];
      sub_801CEBC();
    }
  }
}

static void sub_804BB68 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[18][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[18][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[18][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02B7; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[18][1];
      sub_801CEBC();
    }
  }
}

static void sub_804BBF0 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[19][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[19][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[19][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02B8; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[19][1];
      sub_801CEBC();
    }
  }
}

static void sub_804BC78 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[20][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[20][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[20][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02B9; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[20][1];
      sub_801CEBC();
    }
  }
}

static void sub_804BD00 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[21][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[21][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[21][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02BA; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[21][1];
      sub_801CEBC();
    }
  }
}

static void sub_804BD88 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[22][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[22][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[22][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = MESSENGER_OF_PEACE;
      gCardEffectTextData.cardId2 = gRitualComponents[22][1];
      sub_801CEBC();
    }
  }
}

static void sub_804BE10 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[23][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[23][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[23][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = DARKNESS_APPROACHES;
      gCardEffectTextData.cardId2 = gRitualComponents[23][1];
      sub_801CEBC();
    }
  }
}

static void sub_804BE98 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[6][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[6][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[6][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x0299; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[6][1];
      sub_801CEBC();
    }
  }
}

static void sub_804BF18 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[7][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[7][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[7][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x029A; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[7][1];
      sub_801CEBC();
    }
  }
}

static void sub_804BF98 (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[8][0]) == 1
   && RowHasCardMatch(gZones[2], gRitualComponents[8][2]) == 1
   && RowHasCardMatch(gZones[2], gRitualComponents[8][3]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[8][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[8][1]);

    zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[8][2]);
    ClearZone(gZones[2][zone]);

    zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[8][3]);
    ClearZone(gZones[2][zone]);

    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x029B; //hardcoded id
      gCardEffectTextData.cardId2 = gRitualComponents[8][1];
      sub_801CEBC();
    }
  }
}

static void EffectWarriorElimination (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    if (IsGodCard(gZones[1][i]->id) != 1)
    {
      SetCardInfo(gZones[1][i]->id);
      if (gCardInfo.type == TYPE_WARRIOR)
        ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
    }
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = WARRIOR_ELIMINATION;
    sub_801CEBC();
  }
}

static void EffectCurseBreaker (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gZones[2][i]->id != CARD_NONE && PermStage(gZones[2][i]) < 0)
      ResetPermStage(gZones[2][i]);

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = CURSEBREAKER;
    sub_801CEBC();
  }
}

static void EffectEternalRest (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    SetCardInfo(gZones[1][i]->id);
    if (gCardInfo.type == TYPE_ZOMBIE)
      ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = ETERNAL_REST;
    sub_801CEBC();
  }
}

static void EffectMegamorph (void) {
  if (sub_8055B44(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = MEGAMORPH;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectMetalmorph (void) {
  if (gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id == ZOA)
  {
    gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id = METALZOA;
    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = METALMORPH;
      sub_801CEBC();
    }
  }

  if (gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id == RED_EYES_B_DRAGON)
  {
    gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id = RED_EYES_BLACK_METAL_DRAGON;
    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = METALMORPH;
      sub_801CEBC();
    }
  }
}

static void EffectWingedTrumpeter (void) {
  if (sub_8055B74(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = WINGED_TRUMPETER;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectStainStorm (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    if (IsGodCard(gZones[1][i]->id) != 1)
    {
      SetCardInfo(gZones[1][i]->id);
      if (gCardInfo.type == TYPE_MACHINE)
        ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
    }
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = STAIN_STORM;
    sub_801CEBC();
  }
}

static void EffectEradicatingAerosol (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    SetCardInfo(gZones[1][i]->id);
    if (gCardInfo.type == TYPE_INSECT)
      ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = ERADICATING_AEROSOL;
    sub_801CEBC();
  }
}

static void EffectBreathOfLight (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    SetCardInfo(gZones[1][i]->id);
    if (gCardInfo.type == TYPE_ROCK)
      ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = BREATH_OF_LIGHT;
    sub_801CEBC();
  }
}

static void EffectEternalDrought (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    SetCardInfo(gZones[1][i]->id);
    if (gCardInfo.type == TYPE_FISH)
      ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = ETERNAL_DROUGHT;
    sub_801CEBC();
  }
}

static void EffectTheInexperiencedSpy (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gHands[1][i]->id != CARD_NONE)
      gHands[1][i]->isFaceUp = 1;

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = THE_INEXPERIENCED_SPY;
    sub_801CEBC();
  }
}

static void sub_804C6B4 (void) {
  u8 ritualId;
  u8 zone;

  if (RowHasCardMatch(gZones[2], gRitualComponents[26][0]) == 1)
    ritualId = 26;
  else if (RowHasCardMatch(gZones[2], gRitualComponents[24][0]) == 1)
    ritualId = 24;
  else
    return;

  zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[ritualId][0]);

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
  SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[ritualId][1]);
  ResetNumTributes();

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = 0x02D2; //hardcoded id
    gCardEffectTextData.cardId2 = gRitualComponents[ritualId][1];
    sub_801CEBC();
  }
}

static void EffectLastDayOfWitch (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    SetCardInfo(gZones[1][i]->id);
    if (gCardInfo.type == TYPE_MAGICIAN)
      ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = LAST_DAY_OF_WITCH;
    sub_801CEBC();
  }
}

static void EffectExileOfTheWicked (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    SetCardInfo(gZones[1][i]->id);
    if (gCardInfo.type == TYPE_FIEND)
      ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = EXILE_OF_THE_WICKED;
    sub_801CEBC();
  }
}

static void EffectMultiply (void) {
  if (NumCardMatchesInRow(gZones[2], KURIBOH))
  {
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
      if (gZones[2][i]->id == CARD_NONE)
      {
        gZones[2][i]->id = KURIBOH;
        gZones[2][i]->isFaceUp = 1;
        gZones[2][i]->isLocked = 1;
        gZones[2][i]->isDefending = 0;
        gZones[2][i]->unkTwo = 0;
        gZones[2][i]->unk4 = 0;
        ResetPermStage(gZones[2][i]);
        ResetTempStage(gZones[2][i]);
        gZones[2][i]->willChangeSides = 0;
      }
      else if (gZones[2][i]->id == KURIBOH)
      {
        gZones[2][i]->isFaceUp = 1;
        gZones[2][i]->isLocked = 1;
        gZones[2][i]->isDefending = 0;
      }
    }
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = MULTIPLY;
    sub_801CEBC();
  }
}

static void EffectChangeOfHeart (void) {
  if (NumEmptyZonesInRow(gZones[2]) && NumEmptyZonesAndGodCardsInRow(gZones[1]) != MAX_ZONES_IN_ROW)
  {
    u8 emptyZone = FirstEmptyZoneInRow(gZones[2]);
    u8 highestAtkZone = HighestAtkMonInRowExceptGodCards(gZones[1]);

    gZones[2][emptyZone]->id = gZones[1][highestAtkZone]->id;
    gZones[2][emptyZone]->isFaceUp = 1;
    gZones[2][emptyZone]->isLocked = 0;
    gZones[2][emptyZone]->isDefending = 0;
    gZones[2][emptyZone]->unkTwo = gZones[1][highestAtkZone]->unkTwo;
    gZones[2][emptyZone]->unk4 = 2;

    SetPermStage(gZones[2][emptyZone], PermStage(gZones[1][highestAtkZone]));
    gZones[2][emptyZone]->willChangeSides = 0;
    ClearZone(gZones[1][highestAtkZone]);
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = CHANGE_OF_HEART;
    sub_801CEBC();
  }
}

static void EffectBlackIllusionRitual (void) {
  if (RowHasCardMatch(gZones[2], gRitualComponents[25][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gZones[2], gRitualComponents[25][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);
    SetRitualMonsterInZone(gZones[2][zone], gRitualComponents[25][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = BLACK_ILLUSION_RITUAL;
      gCardEffectTextData.cardId2 = gRitualComponents[25][1];
      sub_801CEBC();
    }
  }
}

static void EffectBrainControl (void) {
  if (NumEmptyZonesInRow(gZones[2]) && NumEmptyZonesAndGodCardsInRow(gZones[1]) != MAX_ZONES_IN_ROW)
  {
    u8 emptyZone = FirstEmptyZoneInRow(gZones[2]);
    u8 highestAtkZone = HighestAtkMonInRowExceptGodCards(gZones[1]);

    gZones[2][emptyZone]->id = gZones[1][highestAtkZone]->id;
    gZones[2][emptyZone]->isFaceUp = 1;
    gZones[2][emptyZone]->isLocked = 0;
    gZones[2][emptyZone]->isDefending = 0;
    gZones[2][emptyZone]->unkTwo = gZones[1][highestAtkZone]->unkTwo;
    gZones[2][emptyZone]->unk4 = 2;

    SetPermStage(gZones[2][emptyZone], PermStage(gZones[1][highestAtkZone]));
    gZones[2][emptyZone]->willChangeSides = 1;
    ClearZone(gZones[1][highestAtkZone]);
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = BRAIN_CONTROL;
    sub_801CEBC();
  }
}

static void sub_804CBBC (void) {
  if (NumEmptyZonesInRow(gZones[2]))
  {
    u8 emptyZone = FirstEmptyZoneInRow(gZones[2]);
    u16 id = GetGraveCardAndClearGrave(1);

    if (id != CARD_NONE)
    {
      gZones[2][emptyZone]->id = id;
      gZones[2][emptyZone]->isFaceUp = 1;
      gZones[2][emptyZone]->isLocked = 0;
      gZones[2][emptyZone]->isDefending = 0;
      gZones[2][emptyZone]->unkTwo = 0;
      gZones[2][emptyZone]->unk4 = 2;
      ResetPermStage(gZones[2][emptyZone]);
      ResetTempStage(gZones[2][emptyZone]);
      gZones[2][emptyZone]->willChangeSides = 0;

    }
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = gSpellEffectData.id;
    sub_801CEBC();
  }
}

static void sub_804CC7C (void) {
  if (sub_8055BA4(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = gSpellEffectData.id;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

static void EffectHeavyStorm (void) {
  u8 i, j;

  for (i = 0; i < 2; i++)
  {
    for (j = 0; j < MAX_ZONES_IN_ROW; j++)
    {
      if (!IsGodCard(gZones[i][j]->id))
        ClearZoneAndSendMonToGraveyard(gZones[i][j], 1);
    }
  }

  for (i = 2; i < 4; i++)
  {
    for (j = 0; j < MAX_ZONES_IN_ROW; j++)
    {
      if (!IsGodCard(gZones[i][j]->id))
        ClearZoneAndSendMonToGraveyard(gZones[i][j], 0);
    }
  }

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = gSpellEffectData.id;
    sub_801CEBC();
  }
}

static void EffectFinalDestiny (void) {
  u8 i, j;

  for (i = 0; i < 2; i++)
  {
    for (j = 0; j < MAX_ZONES_IN_ROW; j++)
    {
      if (!IsGodCard(gZones[i][j]->id))
        ClearZoneAndSendMonToGraveyard(gZones[i][j], 1);
    }
  }

  for (i = 2; i < 4; i++)
  {
    for (j = 0; j < MAX_ZONES_IN_ROW; j++)
    {
      if (!IsGodCard(gZones[i][j]->id))
        ClearZoneAndSendMonToGraveyard(gZones[i][j], 0);
    }
  }

  for (j = 0; j < MAX_ZONES_IN_ROW; j++)
  {
    if (!IsGodCard(gHands[0][j]->id))
      ClearZoneAndSendMonToGraveyard(gHands[0][j], 0);
    if (!IsGodCard(gHands[1][j]->id))
      ClearZoneAndSendMonToGraveyard(gHands[1][j], 1);
  }

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = gSpellEffectData.id;
    sub_801CEBC();
  }
}

static void EffectMessengerOfPeaceTSC (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    if (gZones[1][i]->id != CARD_NONE)
    {
      gStatMod.card = gZones[1][i]->id;
      gStatMod.field = gDuel.field;
      gStatMod.stage = GetFinalStage(gZones[1][i]);
      SetFinalStat(&gStatMod);
      if (gCardInfo.atk >= 1500)
        gZones[1][i]->isLocked = 1;
    }
  }

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = gSpellEffectData.id;
    sub_801CEBC();
  }
}

static void EffectDarknessApproaches (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gZones[2][i]->id != CARD_NONE)
      FlipCardFaceDown(gZones[2][i]);

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gZones[3][i]->id != CARD_NONE)
      FlipCardFaceDown(gZones[3][i]);

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = gSpellEffectData.id;
    sub_801CEBC();
  }
}

static void EffectCyclonLaser (void) {
  if (sub_8055BD4(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]->id) == 1)
  {
    gTrapEffectData.unk2 = gSpellEffectData.unk4;
    gTrapEffectData.unk3 = gSpellEffectData.unk5;
    gTrapEffectData.id = gZones[gSpellEffectData.unk4][gSpellEffectData.unk5]->id;

    if (IsTrapTriggered() != 1 || gHideEffectText)
    {
      IncrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk4][gSpellEffectData.unk5], 0);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = CYCLON_LASER;
        sub_801CEBC();
      }
    }
    else
    {
      DecrementPermStage(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(57);
}

void ActivateSpellEffect (void) {
  ResetCardEffectTextData();
  SetCardEffectTextType(1);
  SetCardInfo(gSpellEffectData.id);
  gSpellEffects[gCardInfo.spellEffect]();
}

static void sub_804D140(void) {
}

static void sub_804D144(void) {
}

static void sub_804D148(void) {
}

static void sub_804D14C(void) {
}

static void EffectForest (void) {
  gDuel.field = FIELD_FOREST;

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    sub_8041140(gDuel.field);
    gCardEffectTextData.cardId = FOREST;
    sub_801CEBC();
  }
}

static void EffectWasteland (void) {
  gDuel.field = FIELD_WASTELAND;

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    sub_8041140(gDuel.field);
    gCardEffectTextData.cardId = WASTELAND;
    sub_801CEBC();
  }
}

static void EffectMountain (void) {
  gDuel.field = FIELD_MOUNTAIN;

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    sub_8041140(gDuel.field);
    gCardEffectTextData.cardId = MOUNTAIN;
    sub_801CEBC();
  }
}

static void EffectSogen (void) {
  gDuel.field = FIELD_SOGEN;

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    sub_8041140(gDuel.field);
    gCardEffectTextData.cardId = SOGEN;
    sub_801CEBC();
  }
}

static void EffectUmi (void) {
  gDuel.field = FIELD_UMI;

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    sub_8041140(gDuel.field);
    gCardEffectTextData.cardId = UMI;
    sub_801CEBC();
  }
}

static void EffectYami (void) {
  gDuel.field = FIELD_YAMI;

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    sub_8041140(gDuel.field);
    gCardEffectTextData.cardId = YAMI;
    sub_801CEBC();
  }
}

static void sub_804D378(void) {
}

static void sub_804D37C(void) {
}

static void sub_804D380(void) {
}

static void sub_804D384(void) {
}

static void sub_804D388(void) {
}

static void sub_804D38C(void) {
}

static void sub_804D390(void) {
}

static void sub_804D394(void) {
}

static void sub_804D398(void) {
}

static void sub_804D39C(void) {
}

static void sub_804D3A0(void) {
}

static void sub_804D3A4(void) {
}

static void sub_804D3A8(void) {
}

static void EffectHarpiesFeatherDuster (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    ClearZoneAndSendMonToGraveyard(gZones[0][i], 1);

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = HARPIES_FEATHER_DUSTER;
    sub_801CEBC();
  }
}

//not sure what this does
static void EffectPotOfGreed (void) {
  TryDrawingCard(WhoseTurn());
  TryDrawingCard(WhoseTurn());

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = POT_OF_GREED;
    sub_801CEBC();
  }
}

static void EffectRestructerRevolution (void) {
  u16 lifePoints = (MAX_ZONES_IN_ROW - NumEmptyZonesInRow(gHands[1])) * 200;

  if (WhoseTurn() == DUEL_PLAYER)
    SetOpponentLifePointsToSubtract(lifePoints);
  else
    SetPlayerLifePointsToSubtract(lifePoints);

  HandleDuelAction();
  CheckLoserFlags();

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = RESTRUCTER_REVOLUTION;
    sub_801CEBC();
  }
}

static void sub_804D4E0(void) {
}

static void sub_804D4E4(void) {
}

static void EffectBeckonToDarkness (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[1]) != MAX_ZONES_IN_ROW)
    ClearZoneAndSendMonToGraveyard(gZones[1][(u8)HighestAtkMonInRowExceptGodCards(gZones[1])], 1);

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = gSpellEffectData.id;
    sub_801CEBC();
  }
}

static void sub_804D550(void) {
}

static void EffectGravediggerGhoul (void) {
  GetGraveCardAndClearGrave2(0);
  GetGraveCardAndClearGrave2(1);

  ClearZoneAndSendMonToGraveyard(gZones[gSpellEffectData.unk2][gSpellEffectData.unk3], 0);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = gSpellEffectData.id;
    sub_801CEBC();
  }
}

static void sub_804D5A4 (void) {
}

static void sub_804D5A8 (void) {
}

static void sub_804D5AC (void) {
}

static void sub_804D5B0 (void) {
}

static void sub_804D5B4 (void) {
}

static void sub_804D5B8 (void) {
}

static void sub_804D5BC (void) {
}

static void sub_804D5C0 (void) {
}

static void sub_804D5C4 (void) {
}

static void sub_804D5C8 (void) {
}

static void sub_804D5CC (void) {
}

static void sub_804D5D0 (void) {
}

static void sub_804D5D4 (void) {
}

static void sub_804D5D8 (void) {
}

static void sub_804D5DC (void) {
}

static void sub_804D5E0 (void) {
}

static void sub_804D5E4 (void) {
}

static void sub_804D5E8 (void) {
}

static void sub_804D5EC (void) {
}

static void sub_804D5F0 (void) {
}

static void sub_804D5F4 (void) {
}

static void sub_804D5F8 (void) {
}

static void sub_804D5FC (void) {
}

static void SetRitualMonsterInZone(struct DuelCard* zone, u16 id) {
  zone->id = id;
  zone->isFaceUp = 0;
  zone->isLocked = 0;
  zone->isDefending = 0;
  zone->unkTwo = 0;
  zone->unk4 = 0;
  ResetPermStage(zone);
  ResetTempStage(zone);
  zone->willChangeSides = 0;
}

//TODO: add spell effect constants
void (*const gSpellEffects[])(void) = {
  sub_804D144,
  sub_804D148,
  sub_804D14C,
  EffectForest,
  EffectWasteland,
  EffectMountain,
  EffectSogen,
  EffectUmi,
  EffectYami,
  EffectMooyanCurry,
  EffectRedMedicine,
  EffectGoblinsSecretRemedy,
  EffectSoulOfThePure,
  EffectDianKetoTheCureMaster,
  EffectSparks,
  EffectHinotama,
  EffectFinalFlame,
  EffectOokazi,
  EffectTremendousFire,
  EffectDarkHole,
  EffectRaigeki,
  EffectLegendarySword,
  EffectSwordOfDarkDestruction,
  EffectDarkEnergy,
  EffectAxeOfDespair,
  EffectLaserCannonArmor,
  EffectInsectArmorWithLaserCannon,
  EffectElfsLight,
  EffectBeastFangs,
  EffectSteelShell,
  EffectVileGerms,
  EffectBlackPendant,
  EffectSilverBowAndArrow,
  EffectHornOfLight,
  EffectHornOfTheUnicorn,
  EffectDragonTreasure,
  EffectElectroWhip,
  EffectCyberShield,
  EffectMysticalMoon,
  EffectMalevolentNuzzler,
  EffectVioletCrystal,
  EffectBookOfSecretArts,
  EffectInvigoration,
  EffectMachineConversionFactory,
  EffectRaiseBodyHeat,
  EffectFollowWind,
  EffectPowerOfKaishin,
  sub_804D378,
  EffectStopDefense,
  sub_804D37C,
  EffectSwordsOfRevealingLight,
  EffectDarkPiercingLight,
  EffectSpellBindingCircle,
  EffectElegantEgotist,
  sub_804D380,
  sub_804D384,
  sub_804D388,
  sub_804D38C,
  sub_804D390,
  sub_804D394,
  sub_804D398,
  sub_804D39C,
  sub_804D3A0,
  sub_804D3A4,
  sub_804D3A8,
  EffectBlackLusterRitual,
  sub_804AED8,
  sub_804AF58,
  sub_804AFD8,
  sub_804B058,
  sub_804B20C,
  sub_804B294,
  sub_804B31C,
  sub_804B3A4,
  sub_804B42C,
  sub_804B4B4,
  EffectHarpiesFeatherDuster,
  EffectMagicalLabyrinth,
  EffectSalamandra,
  EffectKunaiWithChain,
  EffectBrightCastle,
  EffectCrushCard,
  EffectShadowSpell,
  sub_804B9D0,
  sub_804BA58,
  sub_804BAE0,
  sub_804BB68,
  sub_804BBF0,
  sub_804BC78,
  sub_804BD00,
  sub_804BD88,
  sub_804BE10,
  sub_804BE98,
  sub_804BF18,
  sub_804BF98,
  EffectWarriorElimination,
  EffectCurseBreaker,
  EffectEternalRest,
  EffectMegamorph,
  EffectMetalmorph,
  EffectWingedTrumpeter,
  EffectStainStorm,
  EffectEradicatingAerosol,
  EffectBreathOfLight,
  EffectEternalDrought,
  EffectTheInexperiencedSpy,
  sub_804C6B4,
  EffectPotOfGreed,
  EffectRestructerRevolution,
  EffectLastDayOfWitch,
  EffectExileOfTheWicked,
  EffectMultiply,
  EffectChangeOfHeart,
  EffectBlackIllusionRitual,
  sub_804D4E0,
  EffectBrainControl,
  sub_804CBBC,
  sub_804D4E4,
  sub_804CC7C,
  EffectBeckonToDarkness,
  sub_804D550,
  EffectGravediggerGhoul,
  EffectHeavyStorm,
  EffectFinalDestiny,
  EffectMessengerOfPeaceTSC,
  EffectDarknessApproaches,
  sub_804D5A4,
  sub_804D5A8,
  sub_804D5AC,
  sub_804D5B0,
  sub_804D5B4,
  sub_804D5B8,
  sub_804D5BC,
  EffectCyclonLaser,
  sub_804D5C0,
  sub_804D5C4,
  sub_804D5C8,
  sub_804D5CC,
  sub_804D5D0,
  sub_804D5D4,
  sub_804D5D8,
  sub_804D5DC,
  sub_804D5E0,
  sub_804D5E4,
  sub_804D5E8,
  sub_804D5EC,
  sub_804D5F0,
  sub_804D5F4,
  sub_804D5F8,
  sub_804D5FC
};
