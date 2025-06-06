#include "global.h"

void ActivateTrapEffect(); //TODO

static void SetRitualMonsterInZone (struct DuelCard*, u16 id);

static void EffectMooyanCurry (void) {
  gTrapEffectData.originRow = gSpellEffectData.row1;
  gTrapEffectData.originCol = gSpellEffectData.col1;
  gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id;

  if (IsTrapTriggered() != TRUE || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetPlayerLifePointsToAdd(200);
    else
      SetOpponentLifePointsToAdd(200);

    HandleAtkAndLifePointsAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = MOOYAN_CURRY;
      ActivateCardEffectText();
    }
  }
  else
    ActivateTrapEffect(200);
}

static void EffectRedMedicine (void) {
  gTrapEffectData.originRow = gSpellEffectData.row1;
  gTrapEffectData.originCol = gSpellEffectData.col1;
  gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id;

  if (IsTrapTriggered() != TRUE || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetPlayerLifePointsToAdd(500);
    else
      SetOpponentLifePointsToAdd(500);

    HandleAtkAndLifePointsAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = RED_MEDICINE;
      ActivateCardEffectText();
    }
  }
  else
    ActivateTrapEffect(500);
}

static void EffectGoblinsSecretRemedy (void) {
  gTrapEffectData.originRow = gSpellEffectData.row1;
  gTrapEffectData.originCol = gSpellEffectData.col1;
  gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id;

  if (IsTrapTriggered() != TRUE || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetPlayerLifePointsToAdd(1000);
    else
      SetOpponentLifePointsToAdd(1000);

    HandleAtkAndLifePointsAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = GOBLINS_SECRET_REMEDY;
      ActivateCardEffectText();
    }
  }
  else
    ActivateTrapEffect(1000);
}

static void EffectSoulOfThePure (void) {
  gTrapEffectData.originRow = gSpellEffectData.row1;
  gTrapEffectData.originCol = gSpellEffectData.col1;
  gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id;

  if (IsTrapTriggered() != TRUE || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetPlayerLifePointsToAdd(2000);
    else
      SetOpponentLifePointsToAdd(2000);

    HandleAtkAndLifePointsAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = SOUL_OF_THE_PURE;
      ActivateCardEffectText();
    }
  }
  else
    ActivateTrapEffect(2000);
}

static void EffectDianKetoTheCureMaster (void) {
  gTrapEffectData.originRow = gSpellEffectData.row1;
  gTrapEffectData.originCol = gSpellEffectData.col1;
  gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id;

  if (IsTrapTriggered() != TRUE || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetPlayerLifePointsToAdd(5000);
    else
      SetOpponentLifePointsToAdd(5000);

    HandleAtkAndLifePointsAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = DIAN_KETO_THE_CURE_MASTER;
      ActivateCardEffectText();
    }
  }
  else
    ActivateTrapEffect(5000);
}

static void EffectSparks (void) {
  gTrapEffectData.originRow = gSpellEffectData.row1;
  gTrapEffectData.originCol = gSpellEffectData.col1;
  gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id;

  if (IsTrapTriggered() != TRUE || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetOpponentLifePointsToSubtract(50);
    else
      SetPlayerLifePointsToSubtract(50);

    HandleAtkAndLifePointsAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = SPARKS;
      ActivateCardEffectText();
    }
  }
  else
    ActivateTrapEffect(50);
}

static void EffectHinotama (void) {
  gTrapEffectData.originRow = gSpellEffectData.row1;
  gTrapEffectData.originCol = gSpellEffectData.col1;
  gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id;

  if (IsTrapTriggered() != TRUE || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetOpponentLifePointsToSubtract(100);
    else
      SetPlayerLifePointsToSubtract(100);

    HandleAtkAndLifePointsAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = HINOTAMA;
      ActivateCardEffectText();
    }
  }
  else
    ActivateTrapEffect(100);
}

static void EffectFinalFlame (void) {
  gTrapEffectData.originRow = gSpellEffectData.row1;
  gTrapEffectData.originCol = gSpellEffectData.col1;
  gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id;

  if (IsTrapTriggered() != TRUE || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetOpponentLifePointsToSubtract(200);
    else
      SetPlayerLifePointsToSubtract(200);

    HandleAtkAndLifePointsAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = FINAL_FLAME;
      ActivateCardEffectText();
    }
  }
  else
    ActivateTrapEffect(200);
}

static void EffectOokazi (void) {
  gTrapEffectData.originRow = gSpellEffectData.row1;
  gTrapEffectData.originCol = gSpellEffectData.col1;
  gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id;

  if (IsTrapTriggered() != TRUE || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetOpponentLifePointsToSubtract(500);
    else
      SetPlayerLifePointsToSubtract(500);

    HandleAtkAndLifePointsAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = OOKAZI;
      ActivateCardEffectText();
    }
  }
  else
    ActivateTrapEffect(500);
}

static void EffectTremendousFire (void) {
  gTrapEffectData.originRow = gSpellEffectData.row1;
  gTrapEffectData.originCol = gSpellEffectData.col1;
  gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id;

  if (IsTrapTriggered() != TRUE || gHideEffectText)
  {
    if (WhoseTurn() == DUEL_PLAYER)
      SetOpponentLifePointsToSubtract(1000);
    else
      SetPlayerLifePointsToSubtract(1000);

    HandleAtkAndLifePointsAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = TREMENDOUS_FIRE;
      ActivateCardEffectText();
    }
  }
  else
    ActivateTrapEffect(1000);
}

static void EffectDarkHole (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (!IsGodCard(gTurnZones[1][i]->id))
      ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], INACTIVE_DUELIST);

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (!IsGodCard(gTurnZones[2][i]->id))
      ClearZoneAndSendMonToGraveyard(gTurnZones[2][i], ACTIVE_DUELIST);

   ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = DARK_HOLE;
    ActivateCardEffectText();
  }
}

static void EffectRaigeki (void) {
  gTrapEffectData.originRow = gSpellEffectData.row1;
  gTrapEffectData.originCol = gSpellEffectData.col1;
  gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id;

  if (IsTrapTriggered() != TRUE || gHideEffectText)
  {
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
      if (!IsGodCard(gTurnZones[1][i]->id))
        ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], INACTIVE_DUELIST);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = RAIGEKI;
      ActivateCardEffectText();
    }
  }
  else
    ActivateTrapEffect();
}

static void EffectLegendarySword (void) {
  if (ConditionLegendarySword(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = LEGENDARY_SWORD;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectSwordOfDarkDestruction (void) {
  if (ConditionSwordOfDarkDestruction(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = SWORD_OF_DARK_DESTRUCTION;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectDarkEnergy (void) {
  if (ConditionDarkEnergy(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = DARK_ENERGY;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectAxeOfDespair (void) {
  if (ConditionAxeOfDespair(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = AXE_OF_DESPAIR;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectLaserCannonArmor (void) {
  if (ConditionLaserCannonArmor(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = LASER_CANNON_ARMOR;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectInsectArmorWithLaserCannon (void) {
  if (ConditionInsectArmorWithLaserCannon(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = INSECT_ARMOR_WITH_LASER_CANNON;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectElfsLight (void) {
  if (ConditionElfsLight(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = ELFS_LIGHT;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectBeastFangs (void) {
  if (ConditionBeastFangs(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = BEAST_FANGS;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectSteelShell (void) {
  if (ConditionSteelShell(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = STEEL_SHELL;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectVileGerms (void) {
  if (ConditionVileGerms(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = VILE_GERMS;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectBlackPendant (void) {
  if (ConditionBlackPendant(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = BLACK_PENDANT;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectSilverBowAndArrow (void) {
  if (ConditionSilverBowAndArrow(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = SILVER_BOW_AND_ARROW;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectHornOfLight (void) {
  if (ConditionHornOfLight(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = HORN_OF_LIGHT;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectHornOfTheUnicorn (void) {
  if (ConditionHornOfTheUnicorn(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = HORN_OF_THE_UNICORN;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectDragonTreasure (void) {
  if (ConditionDragonTreasure(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = DRAGON_TREASURE;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectElectroWhip (void) {
  if (ConditionElectroWhip(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = ELECTRO_WHIP;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectCyberShield (void) {
  if (ConditionCyberShield(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = CYBER_SHIELD;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectMysticalMoon (void) {
  if (ConditionMysticalMoon(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = MYSTICAL_MOON;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectMalevolentNuzzler (void) {
  if (ConditionMalevolentNuzzler(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = MALEVOLENT_NUZZLER;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectVioletCrystal (void) {
  if (ConditionVioletCrystal(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = VIOLET_CRYSTAL;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectBookOfSecretArts (void) {
  if (ConditionBookOfSecretArts(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = BOOK_OF_SECRET_ARTS;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectInvigoration (void) {
  if (ConditionInvigoration(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = INVIGORATION;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectMachineConversionFactory (void) {
  if (ConditionMachineConversionFactory(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = MACHINE_CONVERSION_FACTORY;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectRaiseBodyHeat (void) {
  if (ConditionRaiseBodyHeat(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = RAISE_BODY_HEAT;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectFollowWind (void) {
  if (ConditionFollowWind(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = FOLLOW_WIND;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectPowerOfKaishin (void) {
  if (ConditionPowerOfKaishin(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = POWER_OF_KAISHIN;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectStopDefense (void) {
  u8 i;

  gTurnDuelistBattleState[INACTIVE_DUELIST]->defenseBlocked = 1;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    if (gTurnZones[1][i]->id != CARD_NONE)
    {
      gTurnZones[1][i]->isDefending = 0;
      gTurnZones[1][i]->isFaceUp = 1;
    }
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = STOP_DEFENSE;
    ActivateCardEffectText();
  }
}

static void EffectSwordsOfRevealingLight (void) {
  u8 i;

  InitSorlTurns(1);

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gTurnZones[1][i]->id != CARD_NONE)
      gTurnZones[1][i]->isFaceUp = 1;

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = SWORDS_OF_REVEALING_LIGHT;
    ActivateCardEffectText();
  }
}

static void EffectDarkPiercingLight (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gTurnZones[1][i]->id != CARD_NONE)
      gTurnZones[1][i]->isFaceUp = 1;

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = DARK_PIERCING_LIGHT;
    ActivateCardEffectText();
  }
}

static void EffectSpellBindingCircle (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gTurnZones[1][i]->id != CARD_NONE)
      DecrementPermStage(gTurnZones[1][i]);

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = SPELLBINDING_CIRCLE;
    ActivateCardEffectText();
  }
}

static void EffectElegantEgotist (void) {
  if (gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id == HARPIE_LADY)
  {

    gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id = HARPIE_LADY_SISTERS;
    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = ELEGANT_EGOTIST;
      gCardEffectTextData.cardId2 = HARPIE_LADY;
      ActivateCardEffectText();
    }
  }

  if (gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id == CYBER_HARPIE)
  {
    gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id = HARPIE_LADY_SISTERS;
    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = ELEGANT_EGOTIST;
      gCardEffectTextData.cardId2 = CYBER_HARPIE;
      ActivateCardEffectText();
    }
  }
}

static void EffectBlackLusterRitual (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[1][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[1][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[1][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = BLACK_LUSTER_RITUAL;
      gCardEffectTextData.cardId2 = gRitualComponents[1][1];
      ActivateCardEffectText();
    }
  }
}

//these ritual effects seem to be leftover from The Sacred Cards
//(the card IDs do not match ROD's)

static void LeftoverRitualFromSacredCards_804AED8 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[2][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[2][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[2][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x029F; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[2][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804AF58 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[3][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[3][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[3][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02A1; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[3][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804AFD8 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[4][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[4][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[4][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02A2; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[4][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804B058 (void) {
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

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
  SetRitualMonsterInZone(gTurnZones[2][zones[0]], gRitualComponents[ritualId][1]);

  ClearZone(gTurnZones[2][zones[1]]);
  ClearZone(gTurnZones[2][zones[2]]);
  ResetNumTributes();

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = 0x02A3; // leftover id from Sacred Cards
    gCardEffectTextData.cardId2 = gRitualComponents[ritualId][1];
    ActivateCardEffectText();
  }
}

unsigned sub_804B144 (u8* zones, u16* ritualArr)
{
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gTurnZones[2][i]->id == ritualArr[0])
      break;

  if (i == MAX_ZONES_IN_ROW)
    return 0;

  zones[0] = i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (i != zones[0] && gTurnZones[2][i]->id == ritualArr[2])
      break;

  if (i == MAX_ZONES_IN_ROW)
    return 0;

  zones[1] = i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (i != zones[0] && i != zones[1] && gTurnZones[2][i]->id == ritualArr[3])
      break;

  if (i == MAX_ZONES_IN_ROW)
    return 0;

  zones[2] = i;
  return 1;
}

static void LeftoverRitualFromSacredCards_804B20C (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[9][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[9][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[9][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02A4; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[9][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804B294 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[10][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[10][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[10][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02A5; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[10][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804B31C (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[11][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[11][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[11][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02A6; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[11][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804B3A4 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[12][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[12][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[12][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02A7; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[12][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804B42C (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[13][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[13][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[13][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02A8; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[13][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804B4B4 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[14][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[14][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[14][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02B3; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[14][1];
      ActivateCardEffectText();
    }
  }
}

static void EffectMagicalLabyrinth (void) {
  if (ConditionMagicalLabyrinth(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = MAGICAL_LABYRINTH;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectSalamandra (void) {
  if (ConditionSalamandra(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = SALAMANDRA;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectKunaiWithChain (void) {
  if (ConditionKunaiWithChain(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = KUNAI_WITH_CHAIN;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectBrightCastle (void) {
  if (ConditionBrightCastle(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = BRIGHT_CASTLE;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectCrushCard (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    if (gTurnZones[1][i]->id != CARD_NONE && IsGodCard(gTurnZones[1][i]->id) != 1)
    {
      gStatMod.card = gTurnZones[1][i]->id;
      gStatMod.field = gDuel.field;
      gStatMod.stage = GetFinalStage(gTurnZones[1][i]);
      SetFinalStat(&gStatMod);
      if (gCardInfo.atk >= 1500)
        ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], INACTIVE_DUELIST);
    }
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = CRUSH_CARD;
    ActivateCardEffectText();
  }
}

static void EffectShadowSpell (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    if (gTurnZones[1][i]->id != CARD_NONE)
    {
      DecrementPermStage(gTurnZones[1][i]);
      DecrementPermStage(gTurnZones[1][i]);
    }
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = SHADOW_SPELL;
    ActivateCardEffectText();
  }
}

static void LeftoverRitualFromSacredCards_804B9D0 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[15][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[15][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[15][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02B4; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[15][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804BA58 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[16][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[16][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[16][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02B5; // leftover id from Sacred Cards (fake match for Beckon To Darkness)
      gCardEffectTextData.cardId2 = gRitualComponents[16][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804BAE0 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[17][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[17][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[17][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02B6; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[17][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804BB68 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[18][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[18][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[18][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02B7; // leftover id from Sacred Cards (fake match for 7 Completed)
      gCardEffectTextData.cardId2 = gRitualComponents[18][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804BBF0 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[19][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[19][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[19][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02B8; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[19][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804BC78 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[20][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[20][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[20][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02B9; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[20][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804BD00 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[21][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[21][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[21][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02BA; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[21][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804BD88 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[22][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[22][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[22][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02BB; // leftover id from Sacred Cards (fake match for Messenger of Peace)
      gCardEffectTextData.cardId2 = gRitualComponents[22][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804BE10 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[23][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[23][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[23][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x02BC; // leftover id from Sacred Cards (fake match for Darkness approaches)
      gCardEffectTextData.cardId2 = gRitualComponents[23][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804BE98 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[6][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[6][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[6][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x0299; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[6][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804BF18 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[7][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[7][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[7][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x029A; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[7][1];
      ActivateCardEffectText();
    }
  }
}

static void LeftoverRitualFromSacredCards_804BF98 (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[8][0]) == 1
   && RowHasCardMatch(gTurnZones[2], gRitualComponents[8][2]) == 1
   && RowHasCardMatch(gTurnZones[2], gRitualComponents[8][3]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[8][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[8][1]);

    zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[8][2]);
    ClearZone(gTurnZones[2][zone]);

    zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[8][3]);
    ClearZone(gTurnZones[2][zone]);

    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = 0x029B; // leftover id from Sacred Cards
      gCardEffectTextData.cardId2 = gRitualComponents[8][1];
      ActivateCardEffectText();
    }
  }
}

static void EffectWarriorElimination (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    if (IsGodCard(gTurnZones[1][i]->id) != 1)
    {
      SetCardInfo(gTurnZones[1][i]->id);
      if (gCardInfo.type == TYPE_WARRIOR)
        ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], INACTIVE_DUELIST);
    }
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = WARRIOR_ELIMINATION;
    ActivateCardEffectText();
  }
}

static void EffectCurseBreaker (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gTurnZones[2][i]->id != CARD_NONE && PermStage(gTurnZones[2][i]) < 0)
      ResetPermStage(gTurnZones[2][i]);

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = CURSEBREAKER;
    ActivateCardEffectText();
  }
}

static void EffectEternalRest (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    SetCardInfo(gTurnZones[1][i]->id);
    if (gCardInfo.type == TYPE_ZOMBIE)
      ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], INACTIVE_DUELIST);
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = ETERNAL_REST;
    ActivateCardEffectText();
  }
}

static void EffectMegamorph (void) {
  if (ConditionMegamorph(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = MEGAMORPH;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectMetalmorph (void) {
  if (gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id == ZOA)
  {
    gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id = METALZOA;
    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = METALMORPH;
      ActivateCardEffectText();
    }
  }

  if (gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id == RED_EYES_B_DRAGON)
  {
    gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id = RED_EYES_BLACK_METAL_DRAGON;
    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = METALMORPH;
      ActivateCardEffectText();
    }
  }
}

static void EffectWingedTrumpeter (void) {
  if (ConditionWingedTrumpeter(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = WINGED_TRUMPETER;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectStainStorm (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    if (IsGodCard(gTurnZones[1][i]->id) != 1)
    {
      SetCardInfo(gTurnZones[1][i]->id);
      if (gCardInfo.type == TYPE_MACHINE)
        ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], INACTIVE_DUELIST);
    }
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = STAIN_STORM;
    ActivateCardEffectText();
  }
}

static void EffectEradicatingAerosol (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    SetCardInfo(gTurnZones[1][i]->id);
    if (gCardInfo.type == TYPE_INSECT)
      ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], INACTIVE_DUELIST);
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = ERADICATING_AEROSOL;
    ActivateCardEffectText();
  }
}

static void EffectBreathOfLight (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    SetCardInfo(gTurnZones[1][i]->id);
    if (gCardInfo.type == TYPE_ROCK)
      ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], INACTIVE_DUELIST);
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = BREATH_OF_LIGHT;
    ActivateCardEffectText();
  }
}

static void EffectEternalDrought (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    SetCardInfo(gTurnZones[1][i]->id);
    if (gCardInfo.type == TYPE_FISH)
      ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], INACTIVE_DUELIST);
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = ETERNAL_DROUGHT;
    ActivateCardEffectText();
  }
}

static void EffectTheInexperiencedSpy (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gTurnHands[INACTIVE_DUELIST][i]->id != CARD_NONE)
      gTurnHands[INACTIVE_DUELIST][i]->isFaceUp = 1;

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = THE_INEXPERIENCED_SPY;
    ActivateCardEffectText();
  }
}

static void EffectDarkMagicRitual (void) {
  u8 ritualId;
  u8 zone;

  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[26][0]) == 1)
    ritualId = 26;
  else if (RowHasCardMatch(gTurnZones[2], gRitualComponents[24][0]) == 1)
    ritualId = 24;
  else
    return;

  zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[ritualId][0]);

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
  SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[ritualId][1]);
  ResetNumTributes();

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = DARK_MAGIC_RITUAL;
    gCardEffectTextData.cardId2 = gRitualComponents[ritualId][1];
    ActivateCardEffectText();
  }
}

static void EffectLastDayOfWitch (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    SetCardInfo(gTurnZones[1][i]->id);
    if (gCardInfo.type == TYPE_MAGICIAN)
      ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], INACTIVE_DUELIST);
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = LAST_DAY_OF_WITCH;
    ActivateCardEffectText();
  }
}

static void EffectExileOfTheWicked (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    SetCardInfo(gTurnZones[1][i]->id);
    if (gCardInfo.type == TYPE_FIEND)
      ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], INACTIVE_DUELIST);
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = EXILE_OF_THE_WICKED;
    ActivateCardEffectText();
  }
}

static void EffectMultiply (void) {
  if (NumCardMatchesInRow(gTurnZones[2], KURIBOH))
  {
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
      if (gTurnZones[2][i]->id == CARD_NONE)
      {
        gTurnZones[2][i]->id = KURIBOH;
        gTurnZones[2][i]->isFaceUp = 1;
        gTurnZones[2][i]->isLocked = 1;
        gTurnZones[2][i]->isDefending = 0;
        gTurnZones[2][i]->unkTwo = 0;
        gTurnZones[2][i]->unk4 = 0;
        ResetPermStage(gTurnZones[2][i]);
        ResetTempStage(gTurnZones[2][i]);
        gTurnZones[2][i]->willChangeSides = 0;
      }
      else if (gTurnZones[2][i]->id == KURIBOH)
      {
        gTurnZones[2][i]->isFaceUp = 1;
        gTurnZones[2][i]->isLocked = 1;
        gTurnZones[2][i]->isDefending = 0;
      }
    }
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = MULTIPLY;
    ActivateCardEffectText();
  }
}

static void EffectChangeOfHeart (void) {
  if (NumEmptyZonesInRow(gTurnZones[2]) && NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) != MAX_ZONES_IN_ROW)
  {
    u8 emptyZone = FirstEmptyZoneInRow(gTurnZones[2]);
    u8 highestAtkZone = HighestAtkMonInRowExceptGodCards(gTurnZones[1]);

    gTurnZones[2][emptyZone]->id = gTurnZones[1][highestAtkZone]->id;
    gTurnZones[2][emptyZone]->isFaceUp = 1;
    gTurnZones[2][emptyZone]->isLocked = 0;
    gTurnZones[2][emptyZone]->isDefending = 0;
    gTurnZones[2][emptyZone]->unkTwo = gTurnZones[1][highestAtkZone]->unkTwo;
    gTurnZones[2][emptyZone]->unk4 = 2;

    SetPermStage(gTurnZones[2][emptyZone], PermStage(gTurnZones[1][highestAtkZone]));
    gTurnZones[2][emptyZone]->willChangeSides = 0;
    ClearZone(gTurnZones[1][highestAtkZone]);
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = CHANGE_OF_HEART;
    ActivateCardEffectText();
  }
}

static void EffectBlackIllusionRitual (void) {
  if (RowHasCardMatch(gTurnZones[2], gRitualComponents[25][0]) == 1)
  {
    u8 zone = GetFirstCardMatchZoneId(gTurnZones[2], gRitualComponents[25][0]);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);
    SetRitualMonsterInZone(gTurnZones[2][zone], gRitualComponents[25][1]);
    ResetNumTributes();

    if (!gHideEffectText)
    {
      gCardEffectTextData.cardId = BLACK_ILLUSION_RITUAL;
      gCardEffectTextData.cardId2 = gRitualComponents[25][1];
      ActivateCardEffectText();
    }
  }
}

static void EffectBrainControl (void) {
  if (NumEmptyZonesInRow(gTurnZones[2]) && NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) != MAX_ZONES_IN_ROW)
  {
    u8 emptyZone = FirstEmptyZoneInRow(gTurnZones[2]);
    u8 highestAtkZone = HighestAtkMonInRowExceptGodCards(gTurnZones[1]);

    gTurnZones[2][emptyZone]->id = gTurnZones[1][highestAtkZone]->id;
    gTurnZones[2][emptyZone]->isFaceUp = 1;
    gTurnZones[2][emptyZone]->isLocked = 0;
    gTurnZones[2][emptyZone]->isDefending = 0;
    gTurnZones[2][emptyZone]->unkTwo = gTurnZones[1][highestAtkZone]->unkTwo;
    gTurnZones[2][emptyZone]->unk4 = 2;

    SetPermStage(gTurnZones[2][emptyZone], PermStage(gTurnZones[1][highestAtkZone]));
    gTurnZones[2][emptyZone]->willChangeSides = 1;
    ClearZone(gTurnZones[1][highestAtkZone]);
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = BRAIN_CONTROL;
    ActivateCardEffectText();
  }
}

static void EffectMonsterReborn (void) {
  if (NumEmptyZonesInRow(gTurnZones[2]))
  {
    u8 emptyZone = FirstEmptyZoneInRow(gTurnZones[2]);
    u16 id = GetGraveCardAndClearGrave(DUEL_OPPONENT);

    if (id != CARD_NONE)
    {
      gTurnZones[2][emptyZone]->id = id;
      gTurnZones[2][emptyZone]->isFaceUp = 1;
      gTurnZones[2][emptyZone]->isLocked = 0;
      gTurnZones[2][emptyZone]->isDefending = 0;
      gTurnZones[2][emptyZone]->unkTwo = 0;
      gTurnZones[2][emptyZone]->unk4 = 2;
      ResetPermStage(gTurnZones[2][emptyZone]);
      ResetTempStage(gTurnZones[2][emptyZone]);
      gTurnZones[2][emptyZone]->willChangeSides = 0;
    }
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = gSpellEffectData.id;
    ActivateCardEffectText();
  }
}

static void Effect7Completed (void) {
  if (Condition7Completed(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = gSpellEffectData.id;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

static void EffectHeavyStorm (void) {
  u8 i, j;

  for (i = 0; i < 2; i++)
  {
    for (j = 0; j < MAX_ZONES_IN_ROW; j++)
    {
      if (!IsGodCard(gTurnZones[i][j]->id))
        ClearZoneAndSendMonToGraveyard(gTurnZones[i][j], INACTIVE_DUELIST);
    }
  }

  for (i = 2; i < 4; i++)
  {
    for (j = 0; j < MAX_ZONES_IN_ROW; j++)
    {
      if (!IsGodCard(gTurnZones[i][j]->id))
        ClearZoneAndSendMonToGraveyard(gTurnZones[i][j], ACTIVE_DUELIST);
    }
  }

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = gSpellEffectData.id;
    ActivateCardEffectText();
  }
}

static void EffectFinalDestiny (void) {
  u8 i, j;

  for (i = 0; i < 2; i++)
  {
    for (j = 0; j < MAX_ZONES_IN_ROW; j++)
    {
      if (!IsGodCard(gTurnZones[i][j]->id))
        ClearZoneAndSendMonToGraveyard(gTurnZones[i][j], INACTIVE_DUELIST);
    }
  }

  for (i = 2; i < 4; i++)
  {
    for (j = 0; j < MAX_ZONES_IN_ROW; j++)
    {
      if (!IsGodCard(gTurnZones[i][j]->id))
        ClearZoneAndSendMonToGraveyard(gTurnZones[i][j], ACTIVE_DUELIST);
    }
  }

  for (j = 0; j < MAX_ZONES_IN_ROW; j++)
  {
    if (!IsGodCard(gTurnHands[ACTIVE_DUELIST][j]->id))
      ClearZoneAndSendMonToGraveyard(gTurnHands[ACTIVE_DUELIST][j], ACTIVE_DUELIST);
    if (!IsGodCard(gTurnHands[INACTIVE_DUELIST][j]->id))
      ClearZoneAndSendMonToGraveyard(gTurnHands[INACTIVE_DUELIST][j], INACTIVE_DUELIST);
  }

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = gSpellEffectData.id;
    ActivateCardEffectText();
  }
}

// Leftover from TSC; real version in permanent_effect
static void TSC_EffectMessengerOfPeace (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
    if (gTurnZones[1][i]->id != CARD_NONE)
    {
      gStatMod.card = gTurnZones[1][i]->id;
      gStatMod.field = gDuel.field;
      gStatMod.stage = GetFinalStage(gTurnZones[1][i]);
      SetFinalStat(&gStatMod);
      if (gCardInfo.atk >= 1500)
        gTurnZones[1][i]->isLocked = 1;
    }
  }

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = gSpellEffectData.id;
    ActivateCardEffectText();
  }
}

static void EffectDarknessApproaches (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gTurnZones[2][i]->id != CARD_NONE)
      FlipCardFaceDown(gTurnZones[2][i]);

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    if (gTurnZones[3][i]->id != CARD_NONE)
      FlipCardFaceDown(gTurnZones[3][i]);

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = gSpellEffectData.id;
    ActivateCardEffectText();
  }
}

static void EffectCyclonLaser (void) {
  if (ConditionCyclonLaser(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]->id) == TRUE)
  {
    gTrapEffectData.originRow = gSpellEffectData.row2;
    gTrapEffectData.originCol = gSpellEffectData.col2;
    gTrapEffectData.originCardId = gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2]->id;

    if (IsTrapTriggered() != TRUE || gHideEffectText)
    {
      IncrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row2][gSpellEffectData.col2], ACTIVE_DUELIST);

      if (!gHideEffectText)
      {
        gCardEffectTextData.cardId = CYCLON_LASER;
        ActivateCardEffectText();
      }
    }
    else
    {
      DecrementPermStage(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1]);
      ActivateTrapEffect();
    }
  }
  else if (!gHideEffectText)
    PlayMusic(SFX_FORBIDDEN);
}

void ActivateSpellEffect (void) {
  ResetCardEffectTextData();
  SetCardEffectTextType(1);
  SetCardInfo(gSpellEffectData.id);
  gSpellEffects[gCardInfo.spellEffect]();
}

static void EmptyFunc_804D140(void) {
}

static void EmptyFunc_804D144(void) {
}

static void EmptyFunc_804D148(void) {
}

static void EmptyFunc_804D14C(void) {
}

static void EffectForest (void) {
  gDuel.field = FIELD_FOREST;

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    SetDuelFieldGfx(gDuel.field);
    gCardEffectTextData.cardId = FOREST;
    ActivateCardEffectText();
  }
}

static void EffectWasteland (void) {
  gDuel.field = FIELD_WASTELAND;

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    SetDuelFieldGfx(gDuel.field);
    gCardEffectTextData.cardId = WASTELAND;
    ActivateCardEffectText();
  }
}

static void EffectMountain (void) {
  gDuel.field = FIELD_MOUNTAIN;

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    SetDuelFieldGfx(gDuel.field);
    gCardEffectTextData.cardId = MOUNTAIN;
    ActivateCardEffectText();
  }
}

static void EffectSogen (void) {
  gDuel.field = FIELD_SOGEN;

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    SetDuelFieldGfx(gDuel.field);
    gCardEffectTextData.cardId = SOGEN;
    ActivateCardEffectText();
  }
}

static void EffectUmi (void) {
  gDuel.field = FIELD_UMI;

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    SetDuelFieldGfx(gDuel.field);
    gCardEffectTextData.cardId = UMI;
    ActivateCardEffectText();
  }
}

static void EffectYami (void) {
  gDuel.field = FIELD_YAMI;

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    SetDuelFieldGfx(gDuel.field);
    gCardEffectTextData.cardId = YAMI;
    ActivateCardEffectText();
  }
}

static void EmptyFunc_804D378(void) {
}

static void EmptyFunc_804D37C(void) {
}

static void EmptyFunc_804D380(void) {
}

static void EmptyFunc_804D384(void) {
}

static void EmptyFunc_804D388(void) {
}

static void EmptyFunc_804D38C(void) {
}

static void EmptyFunc_804D390(void) {
}

static void EmptyFunc_804D394(void) {
}

static void EmptyFunc_804D398(void) {
}

static void EmptyFunc_804D39C(void) {
}

static void EmptyFunc_804D3A0(void) {
}

static void EmptyFunc_804D3A4(void) {
}

static void EmptyFunc_804D3A8(void) {
}

static void EffectHarpiesFeatherDuster (void) {
  u8 i;

  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    ClearZoneAndSendMonToGraveyard(gTurnZones[0][i], INACTIVE_DUELIST);

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = HARPIES_FEATHER_DUSTER;
    ActivateCardEffectText();
  }
}

//not sure what this does
static void EffectPotOfGreed (void) {
  TryDrawingCard(WhoseTurn());
  TryDrawingCard(WhoseTurn());

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = POT_OF_GREED;
    ActivateCardEffectText();
  }
}

static void EffectRestructerRevolution (void) {
  u16 lifePoints = (MAX_ZONES_IN_ROW - NumEmptyZonesInRow(gTurnHands[INACTIVE_DUELIST])) * 200;

  if (WhoseTurn() == DUEL_PLAYER)
    SetOpponentLifePointsToSubtract(lifePoints);
  else
    SetPlayerLifePointsToSubtract(lifePoints);

  HandleAtkAndLifePointsAction();
  CheckLoserFlags();

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = RESTRUCTER_REVOLUTION;
    ActivateCardEffectText();
  }
}

static void EmptyFunc_804D4E0(void) {
}

static void EmptyFunc_804D4E4(void) {
}

static void EffectBeckonToDarkness (void) {
  if (NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) != MAX_ZONES_IN_ROW)
    ClearZoneAndSendMonToGraveyard(gTurnZones[1][(u8)HighestAtkMonInRowExceptGodCards(gTurnZones[1])], INACTIVE_DUELIST);

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = gSpellEffectData.id;
    ActivateCardEffectText();
  }
}

static void EmptyFunc_804D550(void) {
}

static void EffectGravediggerGhoul (void) {
  GetGraveCardAndClearGrave2(0);
  GetGraveCardAndClearGrave2(1);

  ClearZoneAndSendMonToGraveyard(gTurnZones[gSpellEffectData.row1][gSpellEffectData.col1], ACTIVE_DUELIST);

  if (!gHideEffectText)
  {
    gCardEffectTextData.cardId = gSpellEffectData.id;
    ActivateCardEffectText();
  }
}

static void EmptyFunc_804D5A4 (void) {
}

static void EmptyFunc_804D5A8 (void) {
}

static void EmptyFunc_804D5AC (void) {
}

static void EmptyFunc_804D5B0 (void) {
}

static void EmptyFunc_804D5B4 (void) {
}

static void EmptyFunc_804D5B8 (void) {
}

static void EmptyFunc_804D5BC (void) {
}

static void EmptyFunc_804D5C0 (void) {
}

static void EmptyFunc_804D5C4 (void) {
}

static void EmptyFunc_804D5C8 (void) {
}

static void EmptyFunc_804D5CC (void) {
}

static void EmptyFunc_804D5D0 (void) {
}

static void EmptyFunc_804D5D4 (void) {
}

static void EmptyFunc_804D5D8 (void) {
}

static void EmptyFunc_804D5DC (void) {
}

static void EmptyFunc_804D5E0 (void) {
}

static void EmptyFunc_804D5E4 (void) {
}

static void EmptyFunc_804D5E8 (void) {
}

static void EmptyFunc_804D5EC (void) {
}

static void EmptyFunc_804D5F0 (void) {
}

static void EmptyFunc_804D5F4 (void) {
}

static void EmptyFunc_804D5F8 (void) {
}

static void EmptyFunc_804D5FC (void) {
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
  EmptyFunc_804D144,
  EmptyFunc_804D148,
  EmptyFunc_804D14C,
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
  EmptyFunc_804D378,
  EffectStopDefense,
  EmptyFunc_804D37C,
  EffectSwordsOfRevealingLight,
  EffectDarkPiercingLight,
  EffectSpellBindingCircle,
  EffectElegantEgotist,
  EmptyFunc_804D380,
  EmptyFunc_804D384,
  EmptyFunc_804D388,
  EmptyFunc_804D38C,
  EmptyFunc_804D390,
  EmptyFunc_804D394,
  EmptyFunc_804D398,
  EmptyFunc_804D39C,
  EmptyFunc_804D3A0,
  EmptyFunc_804D3A4,
  EmptyFunc_804D3A8,
  EffectBlackLusterRitual,
  LeftoverRitualFromSacredCards_804AED8,
  LeftoverRitualFromSacredCards_804AF58,
  LeftoverRitualFromSacredCards_804AFD8,
  LeftoverRitualFromSacredCards_804B058,
  LeftoverRitualFromSacredCards_804B20C,
  LeftoverRitualFromSacredCards_804B294,
  LeftoverRitualFromSacredCards_804B31C,
  LeftoverRitualFromSacredCards_804B3A4,
  LeftoverRitualFromSacredCards_804B42C,
  LeftoverRitualFromSacredCards_804B4B4,
  EffectHarpiesFeatherDuster,
  EffectMagicalLabyrinth,
  EffectSalamandra,
  EffectKunaiWithChain,
  EffectBrightCastle,
  EffectCrushCard,
  EffectShadowSpell,
  LeftoverRitualFromSacredCards_804B9D0,
  LeftoverRitualFromSacredCards_804BA58,
  LeftoverRitualFromSacredCards_804BAE0,
  LeftoverRitualFromSacredCards_804BB68,
  LeftoverRitualFromSacredCards_804BBF0,
  LeftoverRitualFromSacredCards_804BC78,
  LeftoverRitualFromSacredCards_804BD00,
  LeftoverRitualFromSacredCards_804BD88,
  LeftoverRitualFromSacredCards_804BE10,
  LeftoverRitualFromSacredCards_804BE98,
  LeftoverRitualFromSacredCards_804BF18,
  LeftoverRitualFromSacredCards_804BF98,
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
  EffectDarkMagicRitual,
  EffectPotOfGreed,
  EffectRestructerRevolution,
  EffectLastDayOfWitch,
  EffectExileOfTheWicked,
  EffectMultiply,
  EffectChangeOfHeart,
  EffectBlackIllusionRitual,
  EmptyFunc_804D4E0,
  EffectBrainControl,
  EffectMonsterReborn,
  EmptyFunc_804D4E4,
  Effect7Completed,
  EffectBeckonToDarkness,
  EmptyFunc_804D550,
  EffectGravediggerGhoul,
  EffectHeavyStorm,
  EffectFinalDestiny,
  TSC_EffectMessengerOfPeace,
  EffectDarknessApproaches,
  EmptyFunc_804D5A4,
  EmptyFunc_804D5A8,
  EmptyFunc_804D5AC,
  EmptyFunc_804D5B0,
  EmptyFunc_804D5B4,
  EmptyFunc_804D5B8,
  EmptyFunc_804D5BC,
  EffectCyclonLaser,
  EmptyFunc_804D5C0,
  EmptyFunc_804D5C4,
  EmptyFunc_804D5C8,
  EmptyFunc_804D5CC,
  EmptyFunc_804D5D0,
  EmptyFunc_804D5D4,
  EmptyFunc_804D5D8,
  EmptyFunc_804D5DC,
  EmptyFunc_804D5E0,
  EmptyFunc_804D5E4,
  EmptyFunc_804D5E8,
  EmptyFunc_804D5EC,
  EmptyFunc_804D5F0,
  EmptyFunc_804D5F4,
  EmptyFunc_804D5F8,
  EmptyFunc_804D5FC
};
