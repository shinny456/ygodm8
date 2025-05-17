#include "global.h"

// TODO: macroize if (!HideEffectText) statements? same in other effect files.

static void EffectRelinquished(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) != MAX_ZONES_IN_ROW)
    {
        u8 zone = HighestAtkMonInRowExceptGodCards(gTurnZones[1]);

        CopyCard(gTurnZones[gMonEffect.row][gMonEffect.zone], gTurnZones[1][zone]);

        gTurnZones[gMonEffect.row][gMonEffect.zone]->isFaceUp = TRUE;
        gTurnZones[gMonEffect.row][gMonEffect.zone]->isLocked = FALSE;
        gTurnZones[gMonEffect.row][gMonEffect.zone]->isDefending = FALSE;
        gTurnZones[gMonEffect.row][gMonEffect.zone]->unkTwo = 0;
        gTurnZones[gMonEffect.row][gMonEffect.zone]->unk4 = 0;
        gTurnZones[gMonEffect.row][gMonEffect.zone]->willChangeSides = FALSE;

        ClearZone(gTurnZones[1][zone]);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = RELINQUISHED;
        ActivateCardEffectText();
    }
}

static void EffectThousandEyesRestrict(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) != MAX_ZONES_IN_ROW)
    {
        u8 zone = HighestAtkMonInRowExceptGodCards(gTurnZones[1]);

        CopyCard(gTurnZones[gMonEffect.row][gMonEffect.zone], gTurnZones[1][zone]);

        gTurnZones[gMonEffect.row][gMonEffect.zone]->isFaceUp = TRUE;
        gTurnZones[gMonEffect.row][gMonEffect.zone]->isLocked = FALSE;
        gTurnZones[gMonEffect.row][gMonEffect.zone]->isDefending = FALSE;
        gTurnZones[gMonEffect.row][gMonEffect.zone]->unkTwo = 0;
        gTurnZones[gMonEffect.row][gMonEffect.zone]->unk4 = 0;
        gTurnZones[gMonEffect.row][gMonEffect.zone]->willChangeSides = FALSE;
        IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
        IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);

        ClearZone(gTurnZones[1][zone]);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = THOUSAND_EYES_RESTRICT;
        ActivateCardEffectText();
    }
}

static void EffectTimeWizard(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        if (gTurnZones[2][i]->id == BABY_DRAGON)
            gTurnZones[2][i]->id = THOUSAND_DRAGON;

        if (gTurnZones[2][i]->id == DARK_MAGICIAN)
            gTurnZones[2][i]->id = DARK_SAGE;
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = TIME_WIZARD;
        ActivateCardEffectText();
    }
}

static void EffectCastleOfDarkIllusions(void)
{
    u8 i;

    gDuel.field = FIELD_YAMI;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[2][i]->id != CARD_NONE)
            gTurnZones[2][i]->isFaceUp = FALSE;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[2][i]->id == CASTLE_OF_DARK_ILLUSIONS)
            gTurnZones[2][i]->isFaceUp = TRUE;

    if (!gHideEffectText)
    {
        SetDuelFieldGfx(gDuel.field);
        gCardEffectTextData.cardId = CASTLE_OF_DARK_ILLUSIONS;
        ActivateCardEffectText();
    }
}

static void EffectPumpkingTheKingOfGhosts(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        if (gTurnZones[2][i]->id == ARMORED_ZOMBIE)
            IncrementPermStage(gTurnZones[2][i]);
        if (gTurnZones[2][i]->id == DRAGON_ZOMBIE)
            IncrementPermStage(gTurnZones[2][i]);
        if (gTurnZones[2][i]->id == CLOWN_ZOMBIE)
            IncrementPermStage(gTurnZones[2][i]);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = PUMPKING_THE_KING_OF_GHOSTS;
        ActivateCardEffectText();
    }
}

static void EffectCatapultTurtle(void)
{
    u8 i;
    u16 totalAtk = 0;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        if (gMonEffect.zone != i && gTurnZones[2][i]->id != CARD_NONE && !gTurnZones[2][i]->isLocked)
        {
            gStatMod.card = gTurnZones[2][i]->id;
            gStatMod.field = gDuel.field;
            gStatMod.stage = GetFinalStage(gTurnZones[2][i]);
            SetFinalStat(&gStatMod);
            totalAtk += gCardInfo.atk;
            ClearZoneAndSendMonToGraveyard(gTurnZones[2][i], 0);
        }
    }
    if (WhoseTurn() == DUEL_PLAYER)
        SetOpponentLifePointsToSubtract(totalAtk);
    else
        SetPlayerLifePointsToSubtract(totalAtk);

    HandleDuelAction();
    CheckLoserFlags();

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = CATAPULT_TURTLE;
        ActivateCardEffectText();
    }
}

static void EffectTrapMaster(void)
{
    if (NumEmptyZonesInRow(gTurnZones[3])) //num of empty zones
    {
        u8 zone = FirstEmptyZoneInRow(gTurnZones[3]); //return empty zone
        gTurnZones[3][zone]->id = ACID_TRAP_HOLE;
        gTurnZones[3][zone]->isFaceUp = FALSE;
        gTurnZones[3][zone]->isLocked = FALSE;
        gTurnZones[3][zone]->isDefending = FALSE;
        gTurnZones[3][zone]->unkTwo = 0;
        gTurnZones[3][zone]->unk4 = 0;
        ResetPermStage(gTurnZones[3][zone]);
        ResetTempStage(gTurnZones[3][zone]);
        gTurnZones[3][zone]->willChangeSides = FALSE;
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = TRAP_MASTER;
        gCardEffectTextData.cardId2 = ACID_TRAP_HOLE;
        ActivateCardEffectText();
    }
}

static void EffectDarkMagicianGirl(void)
{
    if (gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == DARK_MAGICIAN)
        IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
    if (gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard == DARK_MAGICIAN)
        IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = DARK_MAGICIAN_GIRL;
        gCardEffectTextData.cardId2 = DARK_MAGICIAN;
        ActivateCardEffectText();
    }
}

static void EffectGyakutennoMegami(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        if (gTurnZones[2][i]->id != CARD_NONE)
        {
            gStatMod.card = gTurnZones[2][i]->id;
            gStatMod.field = gDuel.field;
            gStatMod.stage = GetFinalStage(gTurnZones[2][i]);
            SetFinalStat(&gStatMod);
            if (gCardInfo.atk <= 500)
                IncrementPermStage(gTurnZones[2][i]);
        }
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = GYAKUTENNO_MEGAMI;
        ActivateCardEffectText();
    }
}

static void EffectDoron(void)
{
    if (NumEmptyZonesInRow(gTurnZones[2]))
    {
        u8 zone = FirstEmptyZoneInRow(gTurnZones[2]);

        CopyCard(gTurnZones[2][zone], gTurnZones[gMonEffect.row][gMonEffect.zone]);
        gTurnZones[2][zone]->willChangeSides = FALSE;
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = DORON;
        ActivateCardEffectText();
    }
}

static void EffectLabyrinthTank(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[2][i]->id == LABYRINTH_WALL)
           IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = LABYRINTH_TANK;
        gCardEffectTextData.cardId2 = LABYRINTH_WALL;
        ActivateCardEffectText();
    }
}

static void EffectSpiritOfTheBooks(void)
{
    if (NumEmptyZonesInRow(gTurnZones[2]))
    {
        u8 zone = FirstEmptyZoneInRow(gTurnZones[2]);

        gTurnZones[gMonEffect.row][zone]->id = BOO_KOO;
        gTurnZones[gMonEffect.row][zone]->isFaceUp = TRUE;
        gTurnZones[gMonEffect.row][zone]->isLocked = FALSE;
        gTurnZones[gMonEffect.row][zone]->isDefending = FALSE;
        gTurnZones[gMonEffect.row][zone]->unkTwo = 0;
        gTurnZones[gMonEffect.row][zone]->unk4 = 0;
        ResetPermStage(gTurnZones[gMonEffect.row][zone]);
        ResetTempStage(gTurnZones[gMonEffect.row][zone]);
        gTurnZones[gMonEffect.row][zone]->willChangeSides = FALSE;
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = SPIRIT_OF_THE_BOOKS;
        gCardEffectTextData.cardId2 = BOO_KOO;
        ActivateCardEffectText();
    }
}

static void EffectBeastKingOfTheSwamps(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (IsGodCard(gTurnZones[1][i]->id) != TRUE)
            ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], 1);

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (IsGodCard(gTurnZones[2][i]->id) != TRUE)
            ClearZoneAndSendMonToGraveyard(gTurnZones[2][i], 0);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = BEASTKING_OF_THE_SWAMPS;
        ActivateCardEffectText();
    }
}

static void EffectNemuriko(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[1][i]->id != CARD_NONE)
            gTurnZones[1][i]->isLocked = TRUE;

    //unintended behavior?
    //description says it locks enemy monsters
    //while this locks all monsters on the field
    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[2][i]->id != CARD_NONE)
            gTurnZones[2][i]->isLocked = TRUE;

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = NEMURIKO;
        ActivateCardEffectText();
    }
}

static void EffectToadMaster(void)
{
    if (NumEmptyZonesInRow(gTurnZones[2]))
    {
        u8 zone = FirstEmptyZoneInRow(gTurnZones[2]);

        gTurnZones[gMonEffect.row][zone]->id = FROG_THE_JAM;
        gTurnZones[gMonEffect.row][zone]->isFaceUp = TRUE;
        gTurnZones[gMonEffect.row][zone]->isLocked = FALSE;
        gTurnZones[gMonEffect.row][zone]->isDefending = FALSE;
        gTurnZones[gMonEffect.row][zone]->unkTwo = 0;
        gTurnZones[gMonEffect.row][zone]->unk4 = 0;
        ResetPermStage(gTurnZones[gMonEffect.row][zone]);
        ResetTempStage(gTurnZones[gMonEffect.row][zone]);
        gTurnZones[gMonEffect.row][zone]->willChangeSides = FALSE;
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = TOAD_MASTER;
        gCardEffectTextData.cardId2 = FROG_THE_JAM;
        ActivateCardEffectText();
    }
}

static void EffectHoshiningen(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        SetCardInfo(gTurnZones[2][i]->id);
        if (gCardInfo.attribute == ATTRIBUTE_SHADOW)
            DecrementPermStage(gTurnZones[2][i]);
        if (gCardInfo.attribute == ATTRIBUTE_LIGHT)
            IncrementPermStage(gTurnZones[2][i]);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = HOSHININGEN;
        ActivateCardEffectText();
    }
}

static void EffectWitchsApprentice(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        SetCardInfo(gTurnZones[2][i]->id);
        if (gCardInfo.attribute == ATTRIBUTE_LIGHT)
            DecrementPermStage(gTurnZones[2][i]);
        if (gCardInfo.attribute == ATTRIBUTE_SHADOW)
            IncrementPermStage(gTurnZones[2][i]);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = WITCHS_APPRENTICE;
        ActivateCardEffectText();
    }
}

static void EffectMysticLamp(void)
{
    gStatMod.card = gTurnZones[gMonEffect.row][gMonEffect.zone]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
    SetFinalStat(&gStatMod);

    if (WhoseTurn() == DUEL_PLAYER)
        SetOpponentLifePointsToSubtract(gCardInfo.atk);
    else
        SetPlayerLifePointsToSubtract(gCardInfo.atk);

    HandleDuelAction();
    CheckLoserFlags();

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = MYSTIC_LAMP;
        ActivateCardEffectText();
    }
}

static void EffectLeghul(void)
{
    gStatMod.card = gTurnZones[gMonEffect.row][gMonEffect.zone]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
    SetFinalStat(&gStatMod);

    if (WhoseTurn() == DUEL_PLAYER)
        SetOpponentLifePointsToSubtract(gCardInfo.atk);
    else
        SetPlayerLifePointsToSubtract(gCardInfo.atk);

    HandleDuelAction();
    CheckLoserFlags();

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = LEGHUL;
        ActivateCardEffectText();
    }
}

// Leftover from TSC; Moved to permanent effect
static void EffectInsectQueen(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        SetCardInfo(gTurnZones[2][i]->id);
        if (gCardInfo.type == TYPE_INSECT)
            IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
    }

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        SetCardInfo(gTurnZones[1][i]->id);
        if (gCardInfo.type == TYPE_INSECT)
            IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = INSECT_QUEEN;
        ActivateCardEffectText();
    }
}

static void EffectObeliskTheTormentor(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (IsWingedDragonOfRa(gTurnZones[1][i]->id) != TRUE)
            ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], 1);

    if (WhoseTurn() == DUEL_PLAYER)
        SetOpponentLifePointsToSubtract(4000);
    else
        SetPlayerLifePointsToSubtract(4000);

    HandleDuelAction();
    CheckLoserFlags();

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}

// Leftover from TSC; Moved to permanent effect
static void EffectSliferTheSkyDragon(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        if (gTurnZones[4][i]->id != CARD_NONE)
        {
            IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
            IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
            IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
        }
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}

static void EffectDarkMagicianGirl2(void)
{
    if (gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == DARK_MAGICIAN)
        IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
    if (gTurnDuelistBattleState[INACTIVE_DUELIST]->graveyard == DARK_MAGICIAN)
        IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        gCardEffectTextData.cardId2 = DARK_MAGICIAN;
        ActivateCardEffectText();
    }
}

static void EffectAlphaTheMagnetWarrior(void)
{
    if (NumCardMatchesInRow(gTurnZones[2], BETA_THE_MAGNET_WARRIOR) > 0)
    {
        if (NumCardMatchesInRow(gTurnZones[2], GAMMA_THE_MAGNET_WARRIOR) > 0)
        {
           gTurnZones[gMonEffect.row][gMonEffect.zone]->id = VALKYRION_THE_MAGNA_WARRIOR;
           gTurnZones[gMonEffect.row][gMonEffect.zone]->isFaceUp = TRUE;
           gTurnZones[gMonEffect.row][gMonEffect.zone]->isLocked = TRUE;
           gTurnZones[gMonEffect.row][gMonEffect.zone]->isDefending = FALSE;
           gTurnZones[gMonEffect.row][gMonEffect.zone]->unkTwo = 0;
           ResetPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
           ResetTempStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
           gTurnZones[gMonEffect.row][gMonEffect.zone]->willChangeSides = FALSE;
           ClearZone(gTurnZones[gMonEffect.row][GetFirstCardMatchZoneId(gTurnZones[gMonEffect.row], BETA_THE_MAGNET_WARRIOR)]);
           ClearZone(gTurnZones[gMonEffect.row][GetFirstCardMatchZoneId(gTurnZones[gMonEffect.row], GAMMA_THE_MAGNET_WARRIOR)]);
        }
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        gCardEffectTextData.cardId2 = VALKYRION_THE_MAGNA_WARRIOR;
        ActivateCardEffectText();
    }
}

static void EffectBetaTheMagnetWarrior(void)
{
    if (NumCardMatchesInRow(gTurnZones[2], ALPHA_THE_MAGNET_WARRIOR) > 0)
    {
        if (NumCardMatchesInRow(gTurnZones[2], GAMMA_THE_MAGNET_WARRIOR) > 0)
        {
           gTurnZones[gMonEffect.row][gMonEffect.zone]->id = VALKYRION_THE_MAGNA_WARRIOR;
           gTurnZones[gMonEffect.row][gMonEffect.zone]->isFaceUp = TRUE;
           gTurnZones[gMonEffect.row][gMonEffect.zone]->isLocked = TRUE;
           gTurnZones[gMonEffect.row][gMonEffect.zone]->isDefending = FALSE;
           gTurnZones[gMonEffect.row][gMonEffect.zone]->unkTwo = 0;
           ResetPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
           ResetTempStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
           gTurnZones[gMonEffect.row][gMonEffect.zone]->willChangeSides = FALSE;
           ClearZone(gTurnZones[gMonEffect.row][GetFirstCardMatchZoneId(gTurnZones[gMonEffect.row], ALPHA_THE_MAGNET_WARRIOR)]);
           ClearZone(gTurnZones[gMonEffect.row][GetFirstCardMatchZoneId(gTurnZones[gMonEffect.row], GAMMA_THE_MAGNET_WARRIOR)]);
        }
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        gCardEffectTextData.cardId2 = VALKYRION_THE_MAGNA_WARRIOR;
        ActivateCardEffectText();
    }
}

static void EffectGammaTheMagnetWarrior(void)
{
    if (NumCardMatchesInRow(gTurnZones[2], ALPHA_THE_MAGNET_WARRIOR) > 0)
    {
        if (NumCardMatchesInRow(gTurnZones[2], BETA_THE_MAGNET_WARRIOR) > 0)
        {
           gTurnZones[gMonEffect.row][gMonEffect.zone]->id = VALKYRION_THE_MAGNA_WARRIOR;
           gTurnZones[gMonEffect.row][gMonEffect.zone]->isFaceUp = TRUE;
           gTurnZones[gMonEffect.row][gMonEffect.zone]->isLocked = TRUE;
           gTurnZones[gMonEffect.row][gMonEffect.zone]->isDefending = FALSE;
           gTurnZones[gMonEffect.row][gMonEffect.zone]->unkTwo = 0;
           ResetPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
           ResetTempStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
           gTurnZones[gMonEffect.row][gMonEffect.zone]->willChangeSides = FALSE;
           ClearZone(gTurnZones[gMonEffect.row][GetFirstCardMatchZoneId(gTurnZones[gMonEffect.row], ALPHA_THE_MAGNET_WARRIOR)]);
           ClearZone(gTurnZones[gMonEffect.row][GetFirstCardMatchZoneId(gTurnZones[gMonEffect.row], BETA_THE_MAGNET_WARRIOR)]);
        }
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        gCardEffectTextData.cardId2 = VALKYRION_THE_MAGNA_WARRIOR;
        ActivateCardEffectText();
    }
}

static void EffectValkyrionTheMagnaWarrior(void)
{
    if (NumEmptyZonesInRow(gTurnZones[2]) > 1)
    {
        u8 zone;

        gTurnZones[gMonEffect.row][gMonEffect.zone]->id = ALPHA_THE_MAGNET_WARRIOR;
        gTurnZones[gMonEffect.row][gMonEffect.zone]->isFaceUp = TRUE;
        gTurnZones[gMonEffect.row][gMonEffect.zone]->isLocked = TRUE;
        gTurnZones[gMonEffect.row][gMonEffect.zone]->isDefending = FALSE;
        gTurnZones[gMonEffect.row][gMonEffect.zone]->unkTwo = 0;
        ResetPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
        ResetTempStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
        gTurnZones[gMonEffect.row][gMonEffect.zone]->willChangeSides = FALSE;

        zone = GetFirstCardMatchZoneId(gTurnZones[gMonEffect.row], CARD_NONE);
        gTurnZones[gMonEffect.row][zone]->id = BETA_THE_MAGNET_WARRIOR;
        gTurnZones[gMonEffect.row][zone]->isFaceUp = TRUE;
        gTurnZones[gMonEffect.row][zone]->isLocked = TRUE;
        gTurnZones[gMonEffect.row][zone]->isDefending = FALSE;
        gTurnZones[gMonEffect.row][zone]->unkTwo = 0;
        ResetPermStage(gTurnZones[gMonEffect.row][zone]);
        ResetTempStage(gTurnZones[gMonEffect.row][zone]);
        gTurnZones[gMonEffect.row][zone]->willChangeSides = FALSE;

        zone = GetFirstCardMatchZoneId(gTurnZones[gMonEffect.row], CARD_NONE);
        gTurnZones[gMonEffect.row][zone]->id = GAMMA_THE_MAGNET_WARRIOR;
        gTurnZones[gMonEffect.row][zone]->isFaceUp = TRUE;
        gTurnZones[gMonEffect.row][zone]->isLocked = TRUE;
        gTurnZones[gMonEffect.row][zone]->isDefending = FALSE;
        gTurnZones[gMonEffect.row][zone]->unkTwo = 0;
        ResetPermStage(gTurnZones[gMonEffect.row][zone]);
        ResetTempStage(gTurnZones[gMonEffect.row][zone]);
        gTurnZones[gMonEffect.row][zone]->willChangeSides = FALSE;
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}

static void EffectBeastOfGilfer(void)
{
    if (NumEmptyZonesInRow(gTurnZones[1]) < 5)
    {
        u8 i;

        for (i = 0; i < MAX_ZONES_IN_ROW; i++)
            if (gTurnZones[1][i]->id != CARD_NONE)
                DecrementPermStage(gTurnZones[1][i]);
    }
    ClearZoneAndSendMonToGraveyard(gTurnZones[gMonEffect.row][gMonEffect.zone], 0);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = BEAST_OF_GILFER;
        ActivateCardEffectText();
    }
}

static void EffectDarkNecrofear(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) != MAX_ZONES_IN_ROW && NumEmptyZonesInRow(gTurnZones[1]) != MAX_ZONES_IN_ROW)
    {
        u8 highestAtkZone = HighestAtkMonInRowExceptGodCards(gTurnZones[1]);
        u8 emptyZone = GetFirstCardMatchZoneId(gTurnZones[2], CARD_NONE);

        CopyCard(gTurnZones[gMonEffect.row][emptyZone], gTurnZones[1][highestAtkZone]);
        gTurnZones[gMonEffect.row][emptyZone]->isFaceUp = TRUE;
        gTurnZones[gMonEffect.row][emptyZone]->isLocked = FALSE;
        gTurnZones[gMonEffect.row][emptyZone]->isDefending = FALSE;
        gTurnZones[gMonEffect.row][emptyZone]->unkTwo = 0;
        gTurnZones[gMonEffect.row][emptyZone]->unk4 = 0;
        gTurnZones[gMonEffect.row][emptyZone]->willChangeSides = FALSE;

        ClearZone(gTurnZones[1][highestAtkZone]);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}

static void sub_8046D38(void)
{
    if (NumEmptyZonesInRow(gTurnZones[1]) != MAX_ZONES_IN_ROW)
    {
        u8 i;

        for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        {
            SetCardInfo(gTurnZones[1][i]->id);
            if (gCardInfo.type == TYPE_DRAGON)
                IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
        }
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}

static void EffectReflectBounder(void)
{
    if (NumEmptyZonesInRow(gTurnZones[1]) != MAX_ZONES_IN_ROW)
    {
        u8 zone = HighestAtkMonInRow(gTurnZones[1]);

        gStatMod.card = gTurnZones[1][zone]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gTurnZones[1][zone]);
        SetFinalStat(&gStatMod);

        if (WhoseTurn() == DUEL_PLAYER)
            SetOpponentLifePointsToSubtract(gCardInfo.atk);
        else
            SetPlayerLifePointsToSubtract(gCardInfo.atk);

        HandleDuelAction();
        CheckLoserFlags();
    }

    ClearZoneAndSendMonToGraveyard(gTurnZones[gMonEffect.row][gMonEffect.zone], 0);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = REFLECT_BOUNDER;
        ActivateCardEffectText();
    }
}

static void EffectParasiteParacide(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) != MAX_ZONES_IN_ROW)
    {
        u8 zone = HighestAtkMonInRowExceptGodCards(gTurnZones[1]);

        CopyCard(gTurnZones[1][zone], gTurnZones[gMonEffect.row][gMonEffect.zone]);
        gTurnZones[1][zone]->isFaceUp = TRUE;
        gTurnZones[1][zone]->isLocked = FALSE;
        gTurnZones[1][zone]->isDefending = FALSE;
        gTurnZones[1][zone]->unkTwo = 0;
        gTurnZones[1][zone]->unk4 = 0;
        gTurnZones[1][zone]->willChangeSides = FALSE;

        ClearZone(gTurnZones[gMonEffect.row][gMonEffect.zone]);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = PARASITE_PARACIDE;
        ActivateCardEffectText();
    }
}

static void EffectPinchHopper(void)
{
    ClearZoneAndSendMonToGraveyard(gTurnZones[gMonEffect.row][gMonEffect.zone], 0);

    if (sub_8043584(gTurnZones[4], 10) > 0)
    {
        u8 zone = HighestAtkMonOfTypeInRow(gTurnZones[4], TYPE_INSECT);

        if (zone != 5)
        {
            CopyCard(gTurnZones[gMonEffect.row][gMonEffect.zone], gTurnZones[4][zone]);
            gTurnZones[gMonEffect.row][gMonEffect.zone]->isFaceUp = TRUE;
            gTurnZones[gMonEffect.row][gMonEffect.zone]->isLocked = FALSE;
            gTurnZones[gMonEffect.row][gMonEffect.zone]->isDefending = FALSE;
            gTurnZones[gMonEffect.row][gMonEffect.zone]->unkTwo = 0;
            gTurnZones[gMonEffect.row][gMonEffect.zone]->unk4 = 0;
            gTurnZones[gMonEffect.row][gMonEffect.zone]->willChangeSides = FALSE;
            ClearZone(gTurnZones[4][zone]);
        }
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = PINCH_HOPPER;
        ActivateCardEffectText();
    }
}

static void EffectRevivalJam(void)
{
     if (NumEmptyZonesInRow(gTurnZones[2]) > 0)
     {
        u8 zone = FirstEmptyZoneInRow(gTurnZones[2]);

        CopyCard(gTurnZones[2][zone], gTurnZones[gMonEffect.row][gMonEffect.zone]);
        gTurnZones[2][zone]->willChangeSides = FALSE;
     }

     if (!gHideEffectText)
     {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
     }
}

static void EffectAncientLamp(void)
{
    if (NumEmptyZonesInRow(gTurnZones[2]) != 0)
    {
        u8 zone = FirstEmptyZoneInRow(gTurnZones[2]);

        gTurnZones[gMonEffect.row][zone]->id = LA_JINN_THE_MYSTICAL_GENIE_OF_THE_LAMP;
        gTurnZones[gMonEffect.row][zone]->isFaceUp = TRUE;
        gTurnZones[gMonEffect.row][zone]->isLocked = FALSE;
        gTurnZones[gMonEffect.row][zone]->isDefending = FALSE;
        gTurnZones[gMonEffect.row][zone]->unkTwo = 0;
        gTurnZones[gMonEffect.row][zone]->unk4 = 0;
        ResetPermStage(gTurnZones[gMonEffect.row][zone]);
        ResetTempStage(gTurnZones[gMonEffect.row][zone]);
        gTurnZones[gMonEffect.row][zone]->willChangeSides = FALSE;
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        gCardEffectTextData.cardId2 = LA_JINN_THE_MYSTICAL_GENIE_OF_THE_LAMP;
        ActivateCardEffectText();
    }
}

static void EffectExarionUniverse (void)
{
    gStatMod.card = gTurnZones[gMonEffect.row][gMonEffect.zone]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
    SetFinalStat(&gStatMod);

    if (WhoseTurn() == DUEL_PLAYER)
        SetOpponentLifePointsToSubtract(gCardInfo.atk);
    else
        SetPlayerLifePointsToSubtract(gCardInfo.atk);

    HandleDuelAction();
    CheckLoserFlags();

    DecrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}
/*
static inline u32 RemoveSpellCard(struct DuelCard* zone)
{
    if (zone->id != CARD_NONE)
    {
        SetCardInfo(zone->id);
        if (gCardInfo.type == TYPE_SPELL)
        {
            ClearZoneAndSendMonToGraveyard(zone, 1);
            return 1;
        }

    }
    return 0;
}

static void EffectDarkPaladin(void)
{
    if (NumEmptyZonesInRow(gTurnHands[ACTIVE_DUELIST]) < 5 && sub_8043930(0, TYPE_SPELL) > 0)
    {
        u8 i;
        ClearZoneAndSendMonToGraveyard(gTurnHands[ACTIVE_DUELIST][(u8)FirstNonEmptyZoneInRow(gTurnHands[ACTIVE_DUELIST])], 0);
        for (i = 0; i < MAX_ZONES_IN_ROW &&?; i++)
        {
            if (gTurnZones[0][i]->id != CARD_NONE)
            {
                SetCardInfo(gTurnZones[0][i]->id);
                if (gCardInfo.type == TYPE_SPELL)
                {
                    ClearZoneAndSendMonToGraveyard(gTurnZones[0][i], 1);
                    break;
                }
            }
        }
    }
    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = DARK_PALADIN;
        ActivateCardEffectText();
    }
}
*/

NAKED
static void EffectDarkPaladin(void)
{
    asm_unified("\n\
	push {r4, r5, r6, lr}\n\
	ldr r4, _080472AC\n\
	adds r0, r4, #0\n\
	bl NumEmptyZonesInRow\n\
	cmp r0, #4\n\
	bgt _080472DE\n\
	movs r0, #0\n\
	movs r1, #0x15\n\
	bl sub_8043930\n\
	cmp r0, #0\n\
	ble _080472DE\n\
	adds r0, r4, #0\n\
	bl FirstNonEmptyZoneInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	movs r1, #0\n\
	bl ClearZoneAndSendMonToGraveyard\n\
	movs r5, #0\n\
	ldr r6, _080472B0\n\
	b _080472BA\n\
	.align 2, 0\n\
_080472AC: .4byte gTurnHands\n\
_080472B0: .4byte gTurnZones\n\
_080472B4:\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
_080472BA:\n\
	cmp r5, #4\n\
	bhi _080472DE\n\
	lsls r0, r5, #2\n\
	adds r4, r0, r6\n\
	ldr r0, [r4]\n\
	ldrh r0, [r0]\n\
	cmp r0, #0\n\
	beq _080472B4\n\
	bl SetCardInfo\n\
	ldr r0, _080472F8\n\
	ldrb r0, [r0, #0x16]\n\
	cmp r0, #0x15\n\
	bne _080472B4\n\
	ldr r0, [r4]\n\
	movs r1, #1\n\
	bl ClearZoneAndSendMonToGraveyard\n\
_080472DE:\n\
	ldr r0, _080472FC\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _080472F2\n\
	ldr r1, _08047300\n\
	movs r0, #0x9f\n\
	lsls r0, r0, #2\n\
	strh r0, [r1]\n\
	bl ActivateCardEffectText\n\
_080472F2:\n\
	pop {r4, r5, r6}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080472F8: .4byte gCardInfo\n\
_080472FC: .4byte gHideEffectText\n\
_08047300: .4byte gCardEffectTextData");
}
/*
static void ReturnFaceDownCardsToHand(struct DuelCard* fieldZone, struct DuelCard* handZone) {
  u8 r7 = 0, r8 = 0;
  while (r7 < MAX_ZONES_IN_ROW && r8 < MAX_ZONES_IN_ROW) {
    if (fieldZone->id == CARD_NONE || IsCardFaceUp(fieldZone) || fieldZone->willChangeSides) {
      r7++;
      fieldZone++;
      continue;
    }
    for (; r8 < MAX_ZONES_IN_ROW; r8++, handZone++) {
      if (handZone->id == CARD_NONE) {
        CopyCard(handZone, fieldZone);
        ClearZone(fieldZone);
        ResetPermStage(handZone);
        ResetTempStage(handZone);
        handZone->isDefending = FALSE;
        handZone->unk4 = 0;
        handZone->unkTwo = 0;
        r7++;
        fieldZone++;
        r8++;
        handZone++;
        break;
      }
    }
  }
}*/


NAKED
static void ReturnFaceDownCardsToHand(struct DuelCard* zone, struct DuelCard* zone2)
{
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	adds r5, r0, #0\n\
	adds r6, r1, #0\n\
	movs r7, #0\n\
	movs r0, #0\n\
	mov r8, r0\n\
_08047314:\n\
	ldrh r0, [r5]\n\
	cmp r0, #0\n\
	beq _08047330\n\
	adds r0, r5, #0\n\
	bl IsCardFaceUp\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	bne _08047330\n\
	ldrb r1, [r5, #5]\n\
	movs r0, #0x20\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0804737E\n\
_08047330:\n\
	adds r0, r7, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r7, r0, #0x18\n\
	adds r5, #8\n\
	b _0804739A\n\
_0804733A:\n\
	adds r0, r6, #0\n\
	adds r1, r5, #0\n\
	bl CopyCard\n\
	adds r0, r5, #0\n\
	bl ClearZone\n\
	adds r0, r6, #0\n\
	bl ResetPermStage\n\
	adds r0, r6, #0\n\
	bl ResetTempStage\n\
	ldrb r1, [r6, #5]\n\
	movs r2, #3\n\
	rsbs r2, r2, #0\n\
	adds r0, r2, #0\n\
	ands r1, r0\n\
	strb r4, [r6, #4]\n\
	subs r2, #2\n\
	adds r0, r2, #0\n\
	ands r1, r0\n\
	strb r1, [r6, #5]\n\
	adds r0, r7, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r7, r0, #0x18\n\
	adds r5, #8\n\
	mov r0, r8\n\
	adds r0, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	mov r8, r0\n\
	adds r6, #8\n\
	b _0804739A\n\
_0804737E:\n\
	mov r0, r8\n\
	cmp r0, #4\n\
	bhi _0804739A\n\
_08047384:\n\
	ldrh r4, [r6]\n\
	cmp r4, #0\n\
	beq _0804733A\n\
	mov r0, r8\n\
	adds r0, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	mov r8, r0\n\
	adds r6, #8\n\
	cmp r0, #4\n\
	bls _08047384\n\
_0804739A:\n\
	cmp r7, #4\n\
	bhi _080473A4\n\
	mov r2, r8\n\
	cmp r2, #4\n\
	bls _08047314\n\
_080473A4:\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.byte 0x00, 0x00");
}

static void EffectKingsKnight(void)
{
    if (NumCardMatchesInRow(gTurnZones[2], QUEENS_KNIGHT) != 0 && NumEmptyZonesInRow(gTurnZones[2]) != 0)
    {
        u8 zone = FirstEmptyZoneInRow(gTurnZones[2]);

        gTurnZones[2][zone]->id = JACKS_KNIGHT;
        FlipCardFaceUp(gTurnZones[2][zone]);
        UnlockCard(gTurnZones[2][zone]);
        gTurnZones[2][zone]->isDefending = FALSE;
        gTurnZones[2][zone]->unkTwo = 0;
        gTurnZones[2][zone]->unkThree = 0;
        ResetPermStage(gTurnZones[2][zone]);
        ResetTempStage(gTurnZones[2][zone]);
        gTurnZones[2][zone]->unk4 = 0;
        gTurnZones[2][zone]->willChangeSides = FALSE;
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = KINGS_KNIGHT;
        ActivateCardEffectText();
    }
}

/*
static void EffectXHeadCannon(void)
{
    u8 yQty = NumCardMatchesInRow(gTurnZones[2], Y_DRAGON_HEAD);
    u8 zQty = NumCardMatchesInRow(gTurnZones[2], Z_METAL_TANK);
    u16 clearZone;
    u16 newMon;

    if (yQty != 0) //_08047538
    {
        if (zQty != 0)
        {
            newMon = XZ_TANK_CANNON;
            clearZone = Z_METAL_TANK;
            a:
            ClearZone(gTurnZones[2][GetFirstCardMatchZoneId(gTurnZones[2], clearZone)]);
            gTurnZones[2][gMonEffect.zone]->id = newMon;
            FlipCardFaceUp(gTurnZones[2][gMonEffect.zone]);
            LockCard(gTurnZones[2][gMonEffect.zone]);
            gTurnZones[2][gMonEffect.zone]->isDefending = FALSE;
            gTurnZones[2][gMonEffect.zone]->unkTwo = 0;
            gTurnZones[2][gMonEffect.zone]->unkThree = 0;
            ResetPermStage(gTurnZones[2][gMonEffect.zone]);
            ResetTempStage(gTurnZones[2][gMonEffect.zone]);
            gTurnZones[2][gMonEffect.zone]->unk4 = 0;
            gTurnZones[2][gMonEffect.zone]->willChangeSides = FALSE;
        }
    }
    else if (zQty == 0) //_08047528
    {
        newMon = XY_DRAGON_CANNON;
        clearZone = Y_DRAGON_HEAD;
        goto a;
    }
    else //_080474F0
    {
        newMon = XYZ_DRAGON_CANNON;
        ClearZone(gTurnZones[2][GetFirstCardMatchZoneId(gTurnZones[2], Y_DRAGON_HEAD)]);
        clearZone = Z_METAL_TANK;
        goto a;
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = X_HEAD_CANNON;
        ActivateCardEffectText();
    }
} */

NAKED
static void EffectXHeadCannon(void)
{
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	ldr r5, _0804748C\n\
	ldr r7, _08047490\n\
	adds r0, r5, #0\n\
	adds r1, r7, #0\n\
	bl NumCardMatchesInRow\n\
	adds r4, r0, #0\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	ldr r6, _08047494\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
	bl NumCardMatchesInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r4, #0\n\
	beq _08047538\n\
	cmp r0, #0\n\
	beq _08047528\n\
	b _080474F0\n\
	.align 2, 0\n\
_0804748C: .4byte gTurnZones+0x28\n\
_08047490: .4byte 0x0000023F\n\
_08047494: .4byte 0x0000024E\n\
_08047498:\n\
	ldr r1, _080474E8\n\
	ldr r0, _080474EC\n\
	ldrb r0, [r0, #3]\n\
	lsls r0, r0, #2\n\
	adds r1, #0x28\n\
	adds r0, r0, r1\n\
	ldr r4, [r0]\n\
	movs r5, #0\n\
	mov r0, r8\n\
	strh r0, [r4]\n\
	adds r0, r4, #0\n\
	bl FlipCardFaceUp\n\
	adds r0, r4, #0\n\
	bl LockCard\n\
	ldrb r1, [r4, #5]\n\
	movs r0, #3\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	movs r1, #5\n\
	rsbs r1, r1, #0\n\
	ands r0, r1\n\
	subs r1, #4\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	adds r0, r4, #0\n\
	bl ResetPermStage\n\
	adds r0, r4, #0\n\
	bl ResetTempStage\n\
	strb r5, [r4, #4]\n\
	ldrb r1, [r4, #5]\n\
	movs r0, #0x21\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	b _08047558\n\
	.align 2, 0\n\
_080474E8: .4byte gTurnZones\n\
_080474EC: .4byte 0x02024250\n\
_080474F0:\n\
	movs r0, #0x76\n\
	mov r8, r0\n\
	ldr r4, _0804751C\n\
	ldr r1, _08047520\n\
	adds r0, r4, #0\n\
	bl GetFirstCardMatchZoneId\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	bl ClearZone\n\
	ldr r1, _08047524\n\
	adds r0, r4, #0\n\
	bl GetFirstCardMatchZoneId\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	b _08047550\n\
	.align 2, 0\n\
_0804751C: .4byte gTurnZones+0x28\n\
_08047520: .4byte 0x0000023F\n\
_08047524: .4byte 0x0000024E\n\
_08047528:\n\
	ldr r0, _08047534\n\
	mov r8, r0\n\
	adds r0, r5, #0\n\
	adds r1, r7, #0\n\
	b _08047546\n\
	.align 2, 0\n\
_08047534: .4byte 0x00000251\n\
_08047538:\n\
	cmp r0, #0\n\
	beq _08047558\n\
	movs r0, #0x95\n\
	lsls r0, r0, #2\n\
	mov r8, r0\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
_08047546:\n\
	bl GetFirstCardMatchZoneId\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r5\n\
_08047550:\n\
	ldr r0, [r0]\n\
	bl ClearZone\n\
	b _08047498\n\
_08047558:\n\
	ldr r0, _08047574\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _0804756A\n\
	ldr r1, _08047578\n\
	movs r0, #0x95\n\
	strh r0, [r1]\n\
	bl ActivateCardEffectText\n\
_0804756A:\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08047574: .4byte gHideEffectText\n\
_08047578: .4byte gCardEffectTextData");
}

NAKED
static void EffectYDragonHead(void)
{
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	ldr r5, _080475A8\n\
	adds r0, r5, #0\n\
	movs r1, #0x95\n\
	bl NumCardMatchesInRow\n\
	adds r4, r0, #0\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	ldr r6, _080475AC\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
	bl NumCardMatchesInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r4, #0\n\
	beq _08047640\n\
	cmp r0, #0\n\
	beq _08047634\n\
	b _08047604\n\
	.align 2, 0\n\
_080475A8: .4byte gTurnZones+0x28\n\
_080475AC: .4byte 0x0000024E\n\
_080475B0:\n\
	ldr r1, _080475FC\n\
	ldr r0, _08047600\n\
	ldrb r0, [r0, #3]\n\
	lsls r0, r0, #2\n\
	adds r1, #0x28\n\
	adds r0, r0, r1\n\
	ldr r4, [r0]\n\
	movs r5, #0\n\
	strh r7, [r4]\n\
	adds r0, r4, #0\n\
	bl FlipCardFaceUp\n\
	adds r0, r4, #0\n\
	bl LockCard\n\
	ldrb r1, [r4, #5]\n\
	movs r0, #3\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	movs r1, #5\n\
	rsbs r1, r1, #0\n\
	ands r0, r1\n\
	subs r1, #4\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	adds r0, r4, #0\n\
	bl ResetPermStage\n\
	adds r0, r4, #0\n\
	bl ResetTempStage\n\
	strb r5, [r4, #4]\n\
	ldrb r1, [r4, #5]\n\
	movs r0, #0x21\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	b _08047660\n\
	.align 2, 0\n\
_080475FC: .4byte gTurnZones\n\
_08047600: .4byte 0x02024250\n\
_08047604:\n\
	movs r7, #0x76\n\
	ldr r4, _0804762C\n\
	adds r0, r4, #0\n\
	movs r1, #0x95\n\
	bl GetFirstCardMatchZoneId\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	bl ClearZone\n\
	ldr r1, _08047630\n\
	adds r0, r4, #0\n\
	bl GetFirstCardMatchZoneId\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	b _08047654\n\
	.align 2, 0\n\
_0804762C: .4byte gTurnZones+0x28\n\
_08047630: .4byte 0x0000024E\n\
_08047634:\n\
	ldr r7, _0804763C\n\
	adds r0, r5, #0\n\
	movs r1, #0x95\n\
	b _0804764A\n\
	.align 2, 0\n\
_0804763C: .4byte 0x00000251\n\
_08047640:\n\
	cmp r0, #0\n\
	beq _08047660\n\
	ldr r7, _0804765C\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
_0804764A:\n\
	bl GetFirstCardMatchZoneId\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r5\n\
_08047654:\n\
	ldr r0, [r0]\n\
	bl ClearZone\n\
	b _080475B0\n\
	.align 2, 0\n\
_0804765C: .4byte 0x00000255\n\
_08047660:\n\
	ldr r0, _08047678\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _08047672\n\
	ldr r1, _0804767C\n\
	ldr r0, _08047680\n\
	strh r0, [r1]\n\
	bl ActivateCardEffectText\n\
_08047672:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08047678: .4byte gHideEffectText\n\
_0804767C: .4byte gCardEffectTextData\n\
_08047680: .4byte 0x0000023F");
}

NAKED
static void EffectZMetalTank(void)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	ldr r5, _080476B0\n\
	adds r0, r5, #0\n\
	movs r1, #0x95\n\
	bl NumCardMatchesInRow\n\
	adds r4, r0, #0\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	ldr r6, _080476B4\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
	bl NumCardMatchesInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r4, #0\n\
	beq _08047746\n\
	cmp r0, #0\n\
	beq _0804773C\n\
	b _0804770C\n\
	.align 2, 0\n\
_080476B0: .4byte gTurnZones+0x28\n\
_080476B4: .4byte 0x0000023F\n\
_080476B8:\n\
	ldr r1, _08047704\n\
	ldr r0, _08047708\n\
	ldrb r0, [r0, #3]\n\
	lsls r0, r0, #2\n\
	adds r1, #0x28\n\
	adds r0, r0, r1\n\
	ldr r4, [r0]\n\
	movs r5, #0\n\
	strh r7, [r4]\n\
	adds r0, r4, #0\n\
	bl FlipCardFaceUp\n\
	adds r0, r4, #0\n\
	bl LockCard\n\
	ldrb r1, [r4, #5]\n\
	movs r0, #3\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	movs r1, #5\n\
	rsbs r1, r1, #0\n\
	ands r0, r1\n\
	subs r1, #4\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	adds r0, r4, #0\n\
	bl ResetPermStage\n\
	adds r0, r4, #0\n\
	bl ResetTempStage\n\
	strb r5, [r4, #4]\n\
	ldrb r1, [r4, #5]\n\
	movs r0, #0x21\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	b _08047768\n\
	.align 2, 0\n\
_08047704: .4byte gTurnZones\n\
_08047708: .4byte 0x02024250\n\
_0804770C:\n\
	movs r7, #0x76\n\
	ldr r4, _08047734\n\
	adds r0, r4, #0\n\
	movs r1, #0x95\n\
	bl GetFirstCardMatchZoneId\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	bl ClearZone\n\
	ldr r1, _08047738\n\
	adds r0, r4, #0\n\
	bl GetFirstCardMatchZoneId\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	b _0804775A\n\
	.align 2, 0\n\
_08047734: .4byte gTurnZones+0x28\n\
_08047738: .4byte 0x0000023F\n\
_0804773C:\n\
	movs r7, #0x95\n\
	lsls r7, r7, #2\n\
	adds r0, r5, #0\n\
	movs r1, #0x95\n\
	b _08047750\n\
_08047746:\n\
	cmp r0, #0\n\
	beq _08047768\n\
	ldr r7, _08047764\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
_08047750:\n\
	bl GetFirstCardMatchZoneId\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r5\n\
_0804775A:\n\
	ldr r0, [r0]\n\
	bl ClearZone\n\
	b _080476B8\n\
	.align 2, 0\n\
_08047764: .4byte 0x00000255\n\
_08047768:\n\
	ldr r0, _08047780\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _0804777A\n\
	ldr r1, _08047784\n\
	ldr r0, _08047788\n\
	strh r0, [r1]\n\
	bl ActivateCardEffectText\n\
_0804777A:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08047780: .4byte gHideEffectText\n\
_08047784: .4byte gCardEffectTextData\n\
_08047788: .4byte 0x0000024E");
}
/*
static void EffectXYDragonCannon(void)
{
    if (NumEmptyZonesInRow(gTurnHands[ACTIVE_DUELIST]) < MAX_ZONES_IN_ROW)
    {
        u8 i;
        bool32 found = FALSE;

        for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        {
            if (gTurnZones[0][i]->id != CARD_NONE && IsCardFaceUp(gTurnZones[0][i]) == TRUE)
            {
                found = TRUE;
                break;
            }
        }

        if (found)
        {
            ClearZoneAndSendMonToGraveyard(gTurnZones[0][i], 1);
            ClearZoneAndSendMonToGraveyard(gTurnHands[ACTIVE_DUELIST][(u8)FirstNonEmptyZoneInRow(gTurnHands[ACTIVE_DUELIST])], 0);
        }
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = XY_DRAGON_CANNON;
        ActivateCardEffectText();
    }
}*/

NAKED
static void EffectXYDragonCannon(void)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	ldr r0, _080477A0\n\
	bl NumEmptyZonesInRow\n\
	cmp r0, #4\n\
	bgt _080477F0\n\
	movs r6, #0\n\
	movs r5, #0\n\
	ldr r7, _080477A4\n\
	b _080477AE\n\
	.align 2, 0\n\
_080477A0: .4byte gTurnHands\n\
_080477A4: .4byte gTurnZones\n\
_080477A8:\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
_080477AE:\n\
	cmp r5, #4\n\
	bhi _080477CE\n\
	lsls r0, r5, #2\n\
	adds r0, r0, r7\n\
	ldr r4, [r0]\n\
	ldrh r0, [r4]\n\
	cmp r0, #0\n\
	beq _080477A8\n\
	adds r0, r4, #0\n\
	bl IsCardFaceUp\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, #1\n\
	bne _080477A8\n\
	movs r6, #1\n\
_080477CE:\n\
	cmp r6, #0\n\
	beq _080477F0\n\
	adds r0, r4, #0\n\
	movs r1, #1\n\
	bl ClearZoneAndSendMonToGraveyard\n\
	ldr r4, _08047808\n\
	adds r0, r4, #0\n\
	bl FirstNonEmptyZoneInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	movs r1, #0\n\
	bl ClearZoneAndSendMonToGraveyard\n\
_080477F0:\n\
	ldr r0, _0804780C\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _08047802\n\
	ldr r1, _08047810\n\
	ldr r0, _08047814\n\
	strh r0, [r1]\n\
	bl ActivateCardEffectText\n\
_08047802:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08047808: .4byte gTurnHands\n\
_0804780C: .4byte gHideEffectText\n\
_08047810: .4byte gCardEffectTextData\n\
_08047814: .4byte 0x00000251");
}
NAKED
static void EffectXZTankCannon(void)
{
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	ldr r0, _0804782C\n\
	bl NumEmptyZonesInRow\n\
	cmp r0, #4\n\
	bgt _0804787A\n\
	movs r6, #0\n\
	movs r5, #0\n\
	ldr r7, _08047830\n\
	b _0804783A\n\
	.align 2, 0\n\
_0804782C: .4byte gTurnHands\n\
_08047830: .4byte gTurnZones\n\
_08047834:\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
_0804783A:\n\
	cmp r5, #4\n\
	bhi _08047858\n\
	lsls r0, r5, #2\n\
	adds r0, r0, r7\n\
	ldr r4, [r0]\n\
	ldrh r0, [r4]\n\
	cmp r0, #0\n\
	beq _08047834\n\
	adds r0, r4, #0\n\
	bl IsCardFaceUp\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	bne _08047834\n\
	movs r6, #1\n\
_08047858:\n\
	cmp r6, #0\n\
	beq _0804787A\n\
	adds r0, r4, #0\n\
	movs r1, #1\n\
	bl ClearZoneAndSendMonToGraveyard\n\
	ldr r4, _08047894\n\
	adds r0, r4, #0\n\
	bl FirstNonEmptyZoneInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	movs r1, #0\n\
	bl ClearZoneAndSendMonToGraveyard\n\
_0804787A:\n\
	ldr r0, _08047898\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _0804788E\n\
	ldr r1, _0804789C\n\
	movs r0, #0x95\n\
	lsls r0, r0, #2\n\
	strh r0, [r1]\n\
	bl ActivateCardEffectText\n\
_0804788E:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08047894: .4byte gTurnHands\n\
_08047898: .4byte gHideEffectText\n\
_0804789C: .4byte gCardEffectTextData");
}
/*
static void EffectYZTankDragon(void)
{
    if (NumEmptyZonesInRow(gTurnHands[ACTIVE_DUELIST]) < 5)
    {
        u8 i, i2, r8;
        u16 r7 = 0;
        for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        {
            if (gTurnZones[1][i]->id != CARD_NONE && IsGodCard(gTurnZones[1][i]->id) != TRUE && IsCardFaceUp(gTurnZones[1][i]) == FACE_DOWN)
            {
                gStatMod.card = gTurnZones[1][i]->id;
                gStatMod.field = gDuel.field;
                gStatMod.stage = GetFinalStage(gTurnZones[1][i]);
                SetFinalStat(&gStatMod);
                if (gCardInfo.atk >= r7)
                {
                    r7 = gCardInfo.atk;
                    i2 = i;
                }
                r8 = 1;
            }
        }

        if (r8)
        {
            ClearZoneAndSendMonToGraveyard(gTurnZones[1][i2], 1);
            ClearZoneAndSendMonToGraveyard(gTurnHands[ACTIVE_DUELIST][(u8)FirstNonEmptyZoneInRow(gTurnHands[ACTIVE_DUELIST])], 0);
        }
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = YZ_TANK_DRAGON;
        ActivateCardEffectText();
    }
}
*/

NAKED
static void EffectYZTankDragon(void)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	ldr r0, _08047968\n\
	bl NumEmptyZonesInRow\n\
	cmp r0, #4\n\
	bgt _08047946\n\
	movs r7, #0\n\
	movs r0, #0\n\
	mov sb, r0\n\
	mov r8, r0\n\
	movs r5, #0\n\
	ldr r6, _0804796C\n\
	ldr r1, _08047970\n\
	mov sl, r1\n\
_080478C4:\n\
	lsls r0, r5, #2\n\
	ldr r2, _08047974\n\
	adds r0, r0, r2\n\
	ldr r4, [r0]\n\
	ldrh r0, [r4]\n\
	cmp r0, #0\n\
	beq _0804790E\n\
	bl IsGodCard\n\
	cmp r0, #1\n\
	beq _0804790E\n\
	adds r0, r4, #0\n\
	bl IsCardFaceUp\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	bne _0804790E\n\
	ldrh r0, [r4]\n\
	strh r0, [r6]\n\
	mov r1, sl\n\
	ldrb r0, [r1]\n\
	strb r0, [r6, #2]\n\
	adds r0, r4, #0\n\
	bl GetFinalStage\n\
	strb r0, [r6, #3]\n\
	adds r0, r6, #0\n\
	bl SetFinalStat\n\
	ldr r0, _08047978\n\
	ldrh r2, [r0, #0x12]\n\
	cmp r7, r2\n\
	bhi _0804790A\n\
	ldrh r7, [r0, #0x12]\n\
	mov sb, r5\n\
_0804790A:\n\
	movs r0, #1\n\
	mov r8, r0\n\
_0804790E:\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #4\n\
	bls _080478C4\n\
	mov r1, r8\n\
	cmp r1, #0\n\
	beq _08047946\n\
	ldr r0, _0804797C\n\
	mov r2, sb\n\
	lsls r1, r2, #2\n\
	adds r0, #0x14\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	movs r1, #1\n\
	bl ClearZoneAndSendMonToGraveyard\n\
	ldr r4, _08047968\n\
	adds r0, r4, #0\n\
	bl FirstNonEmptyZoneInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	movs r1, #0\n\
	bl ClearZoneAndSendMonToGraveyard\n\
_08047946:\n\
	ldr r0, _08047980\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _08047958\n\
	ldr r1, _08047984\n\
	ldr r0, _08047988\n\
	strh r0, [r1]\n\
	bl ActivateCardEffectText\n\
_08047958:\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08047968: .4byte gTurnHands\n\
_0804796C: .4byte gStatMod\n\
_08047970: .4byte gDuel+0xF0\n\
_08047974: .4byte gTurnZones+0x14\n\
_08047978: .4byte gCardInfo\n\
_0804797C: .4byte gTurnZones\n\
_08047980: .4byte gHideEffectText\n\
_08047984: .4byte gCardEffectTextData\n\
_08047988: .4byte 0x00000255");
}


static void EffectXYZDragonCannon(void)
{
    if (NumEmptyZonesInRow(gTurnHands[ACTIVE_DUELIST]) < MAX_ZONES_IN_ROW)
    {
        if (NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) < MAX_ZONES_IN_ROW)
        {
            ClearZoneAndSendMonToGraveyard(gTurnZones[1][(u8)HighestAtkMonInRowExceptGodCards(gTurnZones[1])], 1);
            ClearZoneAndSendMonToGraveyard(gTurnHands[ACTIVE_DUELIST][(u8)FirstNonEmptyZoneInRow(gTurnHands[ACTIVE_DUELIST])], 0);
        }
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = XYZ_DRAGON_CANNON;
        ActivateCardEffectText();
    }
}

/*
static void EffectPuppetMaster(void)
{
    if (NumEmptyZonesInRow(gTurnZones[2]) > 0 && gTurnDuelistBattleState[ACTIVE_DUELIST]->graveyard == GERNIA)
    {
        u8 zone;

        if (WhoseTurn() == DUEL_PLAYER)
        {
            SetPlayerLifePointsToSubtract(1000);
            HandleDuelAction();
        }
        else
        {
            SetOpponentLifePointsToSubtract(1000);
            HandleDuelAction();
        }
        CheckLoserFlags();
        GetGraveCardAndClearGrave(0);  //this returns something

        zone = FirstEmptyZoneInRow(gTurnZones[2]);

        gTurnZones[2][zone]->id = DARK_NECROFEAR;
        FlipCardFaceUp(gTurnZones[2][zone]);
        UnlockCard(gTurnZones[2][zone]);
        gTurnZones[2][zone]->isDefending = FALSE;
        gTurnZones[2][zone]->unkTwo = 0;
        gTurnZones[2][zone]->unk4 = 2;
        ResetPermStage(gTurnZones[2][zone]);
        ResetTempStage(gTurnZones[2][zone]);
        gTurnZones[2][zone]->willChangeSides = FALSE;

        if (NumEmptyZonesInRow(gTurnZones[2]) != 0)
        {
            zone = FirstEmptyZoneInRow(gTurnZones[2]);

            gTurnZones[2][zone]->id = HEADLESS_KNIGHT;
            FlipCardFaceUp(gTurnZones[2][zone]);
            UnlockCard(gTurnZones[2][zone]);
            gTurnZones[2][zone]->isDefending = FALSE;
            gTurnZones[2][zone]->unkTwo = 0;
            gTurnZones[2][zone]->unk4 = 2;
            ResetPermStage(gTurnZones[2][zone]);
            ResetTempStage(gTurnZones[2][zone]);
            gTurnZones[2][zone]->willChangeSides = FALSE;

            if (NumEmptyZonesInRow(gTurnZones[2]) != 0)
            {
                zone = FirstEmptyZoneInRow(gTurnZones[2]);

                gTurnZones[2][zone]->id = GERNIA;
                FlipCardFaceUp(gTurnZones[2][zone]);
                UnlockCard(gTurnZones[2][zone]);
                gTurnZones[2][zone]->isDefending = FALSE;
                gTurnZones[2][zone]->unkTwo = 0;
                gTurnZones[2][zone]->unk4 = 2;
                ResetPermStage(gTurnZones[2][zone]);
                ResetTempStage(gTurnZones[2][zone]);
                gTurnZones[2][zone]->willChangeSides = FALSE;
            }
        }
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}
*/
NAKED
static void EffectPuppetMaster(void)
{
    asm_unified("\n\
    	push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	ldr r0, _08047A34\n\
	bl NumEmptyZonesInRow\n\
	cmp r0, #0\n\
	bgt _08047A0E\n\
	b _08047B3E\n\
_08047A0E:\n\
	ldr r0, _08047A38\n\
	ldr r0, [r0]\n\
	ldrh r1, [r0]\n\
	ldr r0, _08047A3C\n\
	cmp r1, r0\n\
	beq _08047A1C\n\
	b _08047B3E\n\
_08047A1C:\n\
	bl WhoseTurn\n\
	cmp r0, #0\n\
	bne _08047A40\n\
	movs r0, #0xfa\n\
	lsls r0, r0, #2\n\
	bl SetPlayerLifePointsToSubtract\n\
	bl HandleDuelAction\n\
	b _08047A4C\n\
	.align 2, 0\n\
_08047A34: .4byte gTurnZones+0x28\n\
_08047A38: .4byte gDuel+0x100\n\
_08047A3C: .4byte 0x00000239\n\
_08047A40:\n\
	movs r0, #0xfa\n\
	lsls r0, r0, #2\n\
	bl SetOpponentLifePointsToSubtract\n\
	bl HandleDuelAction\n\
_08047A4C:\n\
	bl CheckLoserFlags\n\
	movs r0, #0\n\
	bl GetGraveCardAndClearGrave\n\
	ldr r5, _08047B60\n\
	adds r0, r5, #0\n\
	bl FirstEmptyZoneInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r5\n\
	ldr r4, [r0]\n\
	movs r0, #0\n\
	mov sl, r0\n\
	movs r0, #0x8a\n\
	strh r0, [r4]\n\
	adds r0, r4, #0\n\
	bl FlipCardFaceUp\n\
	adds r0, r4, #0\n\
	bl UnlockCard\n\
	ldrb r1, [r4, #5]\n\
	movs r0, #3\n\
	rsbs r0, r0, #0\n\
	mov sb, r0\n\
	ands r0, r1\n\
	movs r1, #5\n\
	rsbs r1, r1, #0\n\
	mov r8, r1\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	movs r6, #2\n\
	strb r6, [r4, #4]\n\
	adds r0, r4, #0\n\
	bl ResetPermStage\n\
	adds r0, r4, #0\n\
	bl ResetTempStage\n\
	ldrb r1, [r4, #5]\n\
	movs r7, #0x21\n\
	rsbs r7, r7, #0\n\
	adds r0, r7, #0\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	adds r0, r5, #0\n\
	bl NumEmptyZonesInRow\n\
	cmp r0, #0\n\
	beq _08047B3E\n\
	adds r0, r5, #0\n\
	bl FirstEmptyZoneInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r5\n\
	ldr r4, [r0]\n\
	movs r0, #0x6c\n\
	strh r0, [r4]\n\
	adds r0, r4, #0\n\
	bl FlipCardFaceUp\n\
	adds r0, r4, #0\n\
	bl UnlockCard\n\
	ldrb r1, [r4, #5]\n\
	mov r0, sb\n\
	ands r0, r1\n\
	mov r1, r8\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	strb r6, [r4, #4]\n\
	adds r0, r4, #0\n\
	bl ResetPermStage\n\
	adds r0, r4, #0\n\
	bl ResetTempStage\n\
	ldrb r1, [r4, #5]\n\
	adds r0, r7, #0\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	adds r0, r5, #0\n\
	bl NumEmptyZonesInRow\n\
	cmp r0, #0\n\
	beq _08047B3E\n\
	adds r0, r5, #0\n\
	bl FirstEmptyZoneInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r5\n\
	ldr r4, [r0]\n\
	ldr r0, _08047B64\n\
	strh r0, [r4]\n\
	adds r0, r4, #0\n\
	bl FlipCardFaceUp\n\
	adds r0, r4, #0\n\
	bl UnlockCard\n\
	ldrb r1, [r4, #5]\n\
	mov r0, sb\n\
	ands r0, r1\n\
	mov r1, r8\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	strb r6, [r4, #4]\n\
	adds r0, r4, #0\n\
	bl ResetPermStage\n\
	adds r0, r4, #0\n\
	bl ResetTempStage\n\
	ldrb r1, [r4, #5]\n\
	adds r0, r7, #0\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
_08047B3E:\n\
	ldr r0, _08047B68\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _08047B52\n\
	ldr r0, _08047B6C\n\
	ldr r1, _08047B70\n\
	ldrh r1, [r1]\n\
	strh r1, [r0]\n\
	bl ActivateCardEffectText\n\
_08047B52:\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08047B60: .4byte gTurnZones+0x28\n\
_08047B64: .4byte 0x00000239\n\
_08047B68: .4byte gHideEffectText\n\
_08047B6C: .4byte gCardEffectTextData\n\
_08047B70: .4byte 0x02024250");
}

static void EffectPenguinTorpedo(void)
{
    struct DuelCard* zone = gTurnZones[2][gMonEffect.zone];

    gStatMod.card = zone->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(zone);
    SetFinalStat(&gStatMod);

    if (WhoseTurn() == DUEL_PLAYER)
        SetOpponentLifePointsToSubtract(gCardInfo.atk);
    else
        SetPlayerLifePointsToSubtract(gCardInfo.atk);

    HandleDuelAction();
    CheckLoserFlags();

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = PENGUIN_TORPEDO;
        ActivateCardEffectText();
    }
}

static void EffectBerserkDragon(void)
{
    u8 i, turn = WhoseTurn();

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        if (IsDuelOver() == 1 || gTurnZones[2][gMonEffect.zone]->id == CARD_NONE)
            break;

        if (gTurnZones[1][i]->id != CARD_NONE)
        {
            FlipCardFaceUp(gTurnZones[1][i]);
            if (turn == DUEL_PLAYER)
                SetDuelActionAttack(gMonEffect.zone, 4 - i);
            else
                SetDuelActionAttack(i, 4 - gMonEffect.zone);

            HandleDuelAction();
            CheckGraveyardAndLoserFlags();
            if (turn != DUEL_PLAYER)
                gUnk2023EA0.unk18 = 0;
        }
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = BERSERK_DRAGON;
        ActivateCardEffectText();
    }
}

static void EffectFGD(void)
{
    u8 i;
    struct DuelCard* zone;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        zone = gTurnZones[0][i];
        if (zone->id != CARD_NONE)
            ClearZoneAndSendMonToGraveyard(zone, 1);
    }

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        zone = gTurnZones[1][i];
        if (zone->id != CARD_NONE && IsGodCard(zone->id) != TRUE)
            ClearZoneAndSendMonToGraveyard(zone, 1);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}

void ActivateMonsterEffect (void)
{
    ResetCardEffectTextData();
    SetCardEffectTextType(2);
    SetCardInfo(gMonEffect.id);
    gMonEffects[gCardInfo.monsterEffect]();
}

//unused?
static void sub_8047D5C (void) {
}

static void sub_8047D60 (void) {
}

static void EffectReaperOfTheCards(void)
{
    if (NumEmptyZonesInRow(gTurnZones[0]) < MAX_ZONES_IN_ROW)
    {
        u8 i;

        for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        {
            SetCardInfo(gTurnZones[0][i]->id);
            if (gCardInfo.trapEffect)
            {
                ClearZoneAndSendMonToGraveyard(gTurnZones[0][i], 1);
                break;
            }
        }
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = REAPER_OF_THE_CARDS;
        ActivateCardEffectText();
    }
}

static void EffectFairysGift(void)
{
    if (WhoseTurn() == DUEL_PLAYER)
        SetPlayerLifePointsToAdd(1000);
    else
        SetOpponentLifePointsToAdd(1000);

    HandleDuelAction();

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = FAIRYS_GIFT;
        ActivateCardEffectText();
    }
}

static void EffectSkelengel(void)
{
    TryDrawingCard(WhoseTurn());

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = SKELENGEL;
        ActivateCardEffectText();
    }
}

static void EffectHarpieLady(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[2][i]->id == HARPIES_PET_DRAGON)
            IncrementPermStage(gTurnZones[2][i]);


    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = HARPIE_LADY;
        gCardEffectTextData.cardId2 = HARPIES_PET_DRAGON;
        ActivateCardEffectText();
    }
}

static void EffectHarpieLadySisters(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[2][i]->id == HARPIES_PET_DRAGON)
            IncreasePermStageByAmount(gTurnZones[2][i], 2);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = HARPIE_LADY_SISTERS;
        gCardEffectTextData.cardId2 = HARPIES_PET_DRAGON;
        ActivateCardEffectText();
    }
}

static void EffectMysticalElf(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[2][i]->id == BLUE_EYES_WHITE_DRAGON)
            IncrementPermStage(gTurnZones[2][i]);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = MYSTICAL_ELF;
        gCardEffectTextData.cardId2 = BLUE_EYES_WHITE_DRAGON;
        ActivateCardEffectText();
    }
}

static void EffectCurseOfDragon(void)
{
    gDuel.field = FIELD_WASTELAND;

    if (!gHideEffectText)
    {
        SetDuelFieldGfx(FIELD_WASTELAND);
        gCardEffectTextData.cardId = CURSE_OF_DRAGON;
        ActivateCardEffectText();
    }
}

static void EffectFlameSwordsman(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        SetCardInfo(gTurnZones[1][i]->id);
        if (gCardInfo.type == TYPE_DINOSAUR)
            ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], 1);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = FLAME_SWORDSMAN;
        ActivateCardEffectText();
    }
}

static void EffectGiantSoldierOfStone(void)
{
    gDuel.field = FIELD_ARENA;

    if (!gHideEffectText)
    {
        SetDuelFieldGfx(FIELD_ARENA);
        gCardEffectTextData.cardId = GIANT_SOLDIER_OF_STONE;
        ActivateCardEffectText();
    }
}

static void EffectBattleOx(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        SetCardInfo(gTurnZones[1][i]->id);
        if (gCardInfo.attribute == ATTRIBUTE_PYRO)
            ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], 1);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = BATTLE_OX;
        ActivateCardEffectText();
    }
}

static void EffectMonsterTamer(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        if (gTurnZones[2][i]->id == DUNGEON_WORM)
            IncrementPermStage(gTurnZones[2][i]);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = MONSTER_TAMER;
        gCardEffectTextData.cardId2 = DUNGEON_WORM;
        ActivateCardEffectText();
    }
}

static void EffectMammothGraveyard(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[1][i]->id != CARD_NONE)
            DecrementPermStage(gTurnZones[1][i]);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = MAMMOTH_GRAVEYARD;
        ActivateCardEffectText();
    }
}

static void EffectGoddessOfWhim(void)
{
    TryDrawingCard(WhoseTurn());
    ClearZoneAndSendMonToGraveyard(gTurnZones[2][gMonEffect.zone], 0);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = GODDESS_OF_WHIM;
        ActivateCardEffectText();
    }
}

static void EffectSpiritOfTheMountain(void)
{
    gDuel.field = FIELD_MOUNTAIN;

    if (!gHideEffectText)
    {
        SetDuelFieldGfx(FIELD_MOUNTAIN);
        gCardEffectTextData.cardId = SPIRIT_OF_THE_MOUNTAIN;
        ActivateCardEffectText();
    }
}

static void EffectDragonSeeker(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        SetCardInfo(gTurnZones[1][i]->id);
        if (!IsGodCard(gCardInfo.id) && gCardInfo.type == TYPE_DRAGON)
            ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], 1);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = DRAGON_SEEKER;
        ActivateCardEffectText();
    }
}

static void EffectFiendsHand(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) != MAX_ZONES_IN_ROW)
        ClearZoneAndSendMonToGraveyard(gTurnZones[1][(u8)HighestAtkMonInRowExceptGodCards(gTurnZones[1])], 1);

    ClearZoneAndSendMonToGraveyard(gTurnZones[gMonEffect.row][gMonEffect.zone], 0);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = FIENDS_HAND;
        ActivateCardEffectText();
    }
}

static void EffectIllusionistFacelessMage(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[1][i]->id != CARD_NONE)
            gTurnZones[1][i]->isLocked = TRUE;

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = ILLUSIONIST_FACELESS_MAGE;
        ActivateCardEffectText();
    }
}

static void EffectElectricLizard(void)
{
    if (sub_8043548(gTurnZones[1]))
        gTurnZones[1][(u8)HighestAtkUnlockedMonInRow(gTurnZones[1])]->isLocked = TRUE;


    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = ELECTRIC_LIZARD;
        ActivateCardEffectText();
    }
}

static void EffectWodanTheResidentOfTheForest(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        SetCardInfo(gTurnZones[2][i]->id);
        if (gCardInfo.type == TYPE_PLANT)
            IncrementPermStage(gTurnZones[2][gMonEffect.zone]);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = WODAN_THE_RESIDENT_OF_THE_FOREST;
        ActivateCardEffectText();
    }
}

static void EffectMWarrior1(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[2][i]->id == M_WARRIOR_2)
            IncrementPermStage(gTurnZones[2][i]);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = M_WARRIOR_1;
        gCardEffectTextData.cardId2 = M_WARRIOR_2;
        ActivateCardEffectText();
    }
}

static void EffectMWarrior2(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[2][i]->id == M_WARRIOR_1)
            IncrementPermStage(gTurnZones[2][i]);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = M_WARRIOR_2;
        gCardEffectTextData.cardId2 = M_WARRIOR_1;
        ActivateCardEffectText();
    }
}

static void EffectRedArcheryGirl(void)
{
    if (sub_8043548(gTurnZones[1]))
    {
        u8 zone = HighestAtkUnlockedMonInRow(gTurnZones[1]);
        gTurnZones[1][zone]->isLocked = TRUE;
        DecrementPermStage(gTurnZones[1][zone]);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = RED_ARCHERY_GIRL;
        ActivateCardEffectText();
    }
}

static void EffectLadyOfFaith(void)
{
    if (WhoseTurn() == DUEL_PLAYER)
        SetPlayerLifePointsToAdd(500);
    else
        SetOpponentLifePointsToAdd(500);

    HandleDuelAction();

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = LADY_OF_FAITH;
        ActivateCardEffectText();
    }
}

static void EffectFireReaper(void)
{
    if (WhoseTurn() == DUEL_PLAYER)
        SetOpponentLifePointsToSubtract(50);
    else
        SetPlayerLifePointsToSubtract(50);

    HandleDuelAction();
    CheckLoserFlags();

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = FIRE_REAPER;
        ActivateCardEffectText();
    }
}

static void EffectKairyuShin(void)
{
    gDuel.field = FIELD_UMI;

    if (!gHideEffectText)
    {
        SetDuelFieldGfx(FIELD_UMI);
        gCardEffectTextData.cardId = KAIRYU_SHIN;
        ActivateCardEffectText();
    }
}

static void EffectMonsterEye(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnHands[INACTIVE_DUELIST][i]->id != CARD_NONE)
            gTurnHands[INACTIVE_DUELIST][i]->isFaceUp = TRUE;

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = MONSTER_EYE;
        ActivateCardEffectText();
    }
}

static void EffectSwampBattleGuard(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[2][i]->id == LAVA_BATTLEGUARD)
            IncrementPermStage(gTurnZones[2][i]);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = SWAMP_BATTLEGUARD;
        gCardEffectTextData.cardId2 = LAVA_BATTLEGUARD;
        ActivateCardEffectText();
    }
}

static void EffectLavaBattleGuard(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[2][i]->id == SWAMP_BATTLEGUARD)
            IncrementPermStage(gTurnZones[2][i]);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = LAVA_BATTLEGUARD;
        gCardEffectTextData.cardId2 = SWAMP_BATTLEGUARD;
        ActivateCardEffectText();
    }
}

static void EffectTrent(void)
{
    gDuel.field = FIELD_FOREST;

    if (!gHideEffectText)
    {
        SetDuelFieldGfx(FIELD_FOREST);
        gCardEffectTextData.cardId = TRENT;
        ActivateCardEffectText();
    }
}

static void EffectHourglassOfLife(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[2][i]->id != CARD_NONE)
            IncrementPermStage(gTurnZones[2][i]);

    if (WhoseTurn() == DUEL_PLAYER)
        SetPlayerLifePointsToSubtract(1000);
    else
        SetOpponentLifePointsToSubtract(1000);

    HandleDuelAction();
    CheckLoserFlags();

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = HOURGLASS_OF_LIFE;
        ActivateCardEffectText();
    }
}

static void EffectInvitationToADarkSleep(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[1][i]->id != CARD_NONE)
            gTurnZones[1][i]->isLocked = TRUE;

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = INVITATION_TO_A_DARK_SLEEP;
        ActivateCardEffectText();
    }
}

static void EffectTheWingedDragonOfRaBattleMode(void)
{
    if (WhoseTurn() == DUEL_PLAYER)
    {
        SetOpponentLifePointsToSubtract(gDuelLifePoints[DUEL_PLAYER] - 1);
        HandleDuelAction();
        gDuelLifePoints[DUEL_PLAYER] = 1;
    }
    else
    {
        SetPlayerLifePointsToSubtract(gDuelLifePoints[DUEL_OPPONENT] - 1);
        HandleDuelAction();
        gDuelLifePoints[DUEL_OPPONENT] = 1;
    }
    CheckLoserFlags();

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}

static void sub_80486EC (void) {
}

static void sub_80486F0 (void) {
}

static void sub_80486F4 (void) {
}

static void sub_80486F8 (void) {
}

static void sub_80486FC(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gTurnZones[2][i]->id == HARPIES_PET_DRAGON)
            IncrementPermStage(gTurnZones[2][i]);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        gCardEffectTextData.cardId2 = HARPIES_PET_DRAGON;
        ActivateCardEffectText();
    }
}

static void EffectZombyraTheDark (void)
{
    if (NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) != MAX_ZONES_IN_ROW)
    {
        u8 zone = HighestAtkMonInRowExceptGodCards(gTurnZones[1]);
        ClearZoneAndSendMonToGraveyard(gTurnZones[1][zone], 1);
        DecrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}

static void sub_80487BC (void) {
}

static void EffectGilfordTheLightning(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (!IsGodCard(gTurnZones[1][i]->id))
            ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], 1);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}

static void EffectMysticalBeastSerket(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) != MAX_ZONES_IN_ROW)
    {
        u8 zone = HighestAtkMonInRowExceptGodCards(gTurnZones[1]);
        ClearZone(gTurnZones[1][zone]);
        IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}

static void EffectJinzo(void)
{
    if (NumEmptyZonesInRow(gTurnZones[0]) != MAX_ZONES_IN_ROW)
    {
        u8 i;

        for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        {
            SetCardInfo(gTurnZones[0][i]->id);
            if (gCardInfo.trapEffect)
                ClearZoneAndSendMonToGraveyard(gTurnZones[0][i], 1);
        }
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = JINZO;
        ActivateCardEffectText();
    }
}

static void EffectBarrelDragon(void)
{
    u8 i;

    for (i = 0; i < 3; i++)
    {
        if (NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) == MAX_ZONES_IN_ROW)
            break;
        if (sub_8056258(0, 1) == 1)
            ClearZoneAndSendMonToGraveyard(gTurnZones[1][(u8)HighestAtkMonInRowExceptGodCards(gTurnZones[1])], 1);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = BARREL_DRAGON;
        ActivateCardEffectText();
    }
}

static void EffectSkullMarkLadyBug(void)
{
    if (WhoseTurn() == DUEL_PLAYER)
        SetPlayerLifePointsToAdd(500);
    else
        SetOpponentLifePointsToAdd(500);

    HandleDuelAction();

    ClearZoneAndSendMonToGraveyard(gTurnZones[gMonEffect.row][gMonEffect.zone], 0);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = SKULL_MARK_LADY_BUG;
        ActivateCardEffectText();
    }
}

static void EffectRocketWarrior(void)
{
    if (NumEmptyZonesInRow(gTurnZones[1]) < MAX_ZONES_IN_ROW)
        DecrementPermStage(gTurnZones[1][(u8)HighestAtkMonInRow(gTurnZones[1])]);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}

static void sub_80489F0(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        SetCardInfo(gTurnZones[2][i]->id);
        if (gCardInfo.type == TYPE_DRAGON)
            IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);
    }

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}

static void EffectLegendaryFiend(void)
{
    IncrementPermStage(gTurnZones[gMonEffect.row][gMonEffect.zone]);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}

static void EffectDesVolstgalph(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) < MAX_ZONES_IN_ROW)
        ClearZoneAndSendMonToGraveyard(gTurnZones[1][(u8)HighestAtkMonInRowExceptGodCards(gTurnZones[1])], 1);

    if (WhoseTurn() == DUEL_PLAYER)
        SetOpponentLifePointsToSubtract(500);
    else
        SetPlayerLifePointsToSubtract(500);

    HandleDuelAction();
    CheckLoserFlags();

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}

static void sub_8048B10 (void) {
}

static void EffectByserShock(void)
{
    ReturnFaceDownCardsToHand(gTurnZones[1][0], gTurnHands[INACTIVE_DUELIST][0]);
    ReturnFaceDownCardsToHand(gTurnZones[0][0], gTurnHands[INACTIVE_DUELIST][0]);
    ReturnFaceDownCardsToHand(gTurnZones[2][0], gTurnHands[ACTIVE_DUELIST][0]);
    ReturnFaceDownCardsToHand(gTurnZones[3][0], gTurnHands[ACTIVE_DUELIST][0]);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = BYSER_SHOCK;
        ActivateCardEffectText();
    }
}

static void EffectTheWingedDragonOfRaPhoenixMode(void)
{
    u8 i;

    if (WhoseTurn() == DUEL_PLAYER)
        SetPlayerLifePointsToSubtract(1000);
    else
        SetOpponentLifePointsToSubtract(1000);

    HandleDuelAction();
    CheckLoserFlags();

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        ClearZoneAndSendMonToGraveyard(gTurnZones[1][i], 1);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE;
        ActivateCardEffectText();
    }
}

static void EffectChironTheMage(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gTurnZones[1]) < MAX_ZONES_IN_ROW)
        ClearZoneAndSendMonToGraveyard(gTurnZones[1][(u8)HighestAtkMonInRowExceptGodCards(gTurnZones[1])], 1);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = gMonEffect.id;
        ActivateCardEffectText();
    }
}

static void sub_8048C18 (void) {
}

static void sub_8048C1C (void) {
}

static void sub_8048C20 (void) {
}

static void sub_8048C24 (void) {
}

static void sub_8048C28 (void) {
}

static void sub_8048C2C (void) {
}

static void sub_8048C30 (void) {
}

static void sub_8048C34 (void) {
}

static void sub_8048C38 (void) {
}

static void sub_8048C3C (void) {
}

static void sub_8048C40 (void) {
}

static void sub_8048C44 (void) {
}

static void sub_8048C48 (void) {
}

static void sub_8048C4C (void) {
}

static void sub_8048C50 (void) {
}

static void sub_8048C54 (void) {
}

static void sub_8048C58 (void) {
}

static void sub_8048C5C (void) {
}

//TODO: use monster_effect constants, rename to gMonsterEffects?
void (*const gMonEffects[])(void) = {
  sub_8047D60,
  EffectReaperOfTheCards,
  EffectFairysGift,
  EffectRelinquished,
  EffectThousandEyesRestrict,
  EffectSkelengel,
  EffectHarpieLady,
  EffectHarpieLadySisters,
  EffectTimeWizard,
  EffectCastleOfDarkIllusions,
  EffectMysticalElf,
  EffectCurseOfDragon,
  EffectFlameSwordsman,
  EffectGiantSoldierOfStone,
  EffectBattleOx,
  EffectMonsterTamer,
  EffectPumpkingTheKingOfGhosts,
  EffectMammothGraveyard,
  EffectCatapultTurtle,
  EffectGoddessOfWhim,
  EffectSpiritOfTheMountain,
  EffectDragonSeeker,
  EffectTrapMaster,
  EffectFiendsHand,
  EffectIllusionistFacelessMage,
  EffectElectricLizard,
  EffectDarkMagicianGirl,
  EffectWodanTheResidentOfTheForest,
  EffectMWarrior1,
  EffectMWarrior2,
  EffectRedArcheryGirl,
  EffectLadyOfFaith,
  EffectFireReaper,
  EffectKairyuShin,
  EffectGyakutennoMegami,
  EffectMonsterEye,
  EffectDoron,
  EffectSwampBattleGuard,
  EffectLavaBattleGuard,
  EffectTrent,
  EffectLabyrinthTank,
  EffectSpiritOfTheBooks,
  EffectHourglassOfLife,
  EffectBeastKingOfTheSwamps,
  EffectNemuriko,
  EffectToadMaster,
  EffectHoshiningen,
  EffectInvitationToADarkSleep,
  EffectWitchsApprentice,
  EffectMysticLamp,
  EffectLeghul,
  EffectInsectQueen,
  EffectObeliskTheTormentor,
  EffectSliferTheSkyDragon,
  EffectTheWingedDragonOfRaBattleMode,
  sub_80486EC,
  sub_80486F0,
  sub_80486F4,
  sub_80486F8,
  sub_80486FC,
  EffectDarkMagicianGirl2,
  EffectAlphaTheMagnetWarrior,
  EffectBetaTheMagnetWarrior,
  EffectGammaTheMagnetWarrior,
  EffectValkyrionTheMagnaWarrior,
  EffectBeastOfGilfer,
  EffectDarkNecrofear,
  EffectZombyraTheDark,
  sub_80487BC,
  EffectGilfordTheLightning,
  EffectMysticalBeastSerket,
  EffectJinzo,
  sub_8046D38,
  EffectBarrelDragon,
  EffectReflectBounder,
  EffectParasiteParacide,
  EffectSkullMarkLadyBug,
  EffectPinchHopper,
  EffectRocketWarrior,
  EffectRevivalJam,
  sub_80489F0,
  EffectLegendaryFiend,
  EffectAncientLamp,
  EffectDesVolstgalph,
  EffectExarionUniverse,
  EffectDarkPaladin,
  sub_8048B10,
  EffectByserShock,
  EffectKingsKnight,
  EffectXHeadCannon,
  EffectYDragonHead,
  EffectZMetalTank,
  EffectXYDragonCannon,
  EffectXZTankCannon,
  EffectYZTankDragon,
  EffectXYZDragonCannon,
  EffectPuppetMaster,
  EffectTheWingedDragonOfRaPhoenixMode,
  EffectPenguinTorpedo,
  EffectBerserkDragon,
  EffectFGD,
  EffectChironTheMage,
  sub_8048C18,
  sub_8048C1C,
  sub_8048C20,
  sub_8048C24,
  sub_8048C28,
  sub_8048C2C,
  sub_8048C30,
  sub_8048C34,
  sub_8048C38,
  sub_8048C3C,
  sub_8048C40,
  sub_8048C44,
  sub_8048C48,
  sub_8048C4C,
  sub_8048C50,
  sub_8048C54,
  sub_8048C58,
  sub_8048C5C
};
