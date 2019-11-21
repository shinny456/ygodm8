#include "global.h"
#include "duel.h"
#include "constants/card_ids.h"

/*
extern u16 gGodCards[];

bool32 IsGodCard(u16 id)
{
    u8 i;

    for (i = 0; gGodCards[i]; i++)
        if (gGodCards[i] == id)
            return TRUE;

    return FALSE;
}

int sub_8043418(struct Zone** monZones, u16 id) num cards excluding god cards
{
    u8 i;
    s8 c = 0;

    for (i = 0; i < 5; i++)
    {
        u16 monId = (*monZones++)->id;
        if (IsGodCard(monId) == TRUE)
            monId = CARD_NONE;

        if (monId == id)
            c++;
    }
    return c;
}

int NumEmptyZonesAndGodCardsInRow(struct Zone** monZones) //NumGodCardsAndEmptyZones
{
    return sub_8043418(monZones, 0);
}*/




void EffectRelinquished(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gBoard[1]) != MAX_ZONES)
    {
        u8 zone = HighestAtkMonInRowExceptGodCards(gBoard[1]);

        CopyCard(gBoard[gMonEffect.row][gMonEffect.zone], gBoard[1][zone]);

        gBoard[gMonEffect.row][gMonEffect.zone]->position = FACE_UP;
        gBoard[gMonEffect.row][gMonEffect.zone]->isLocked = FALSE;
        gBoard[gMonEffect.row][gMonEffect.zone]->battlePosition = POS_ATK;
        gBoard[gMonEffect.row][gMonEffect.zone]->unkTwo = 0;
        gBoard[gMonEffect.row][gMonEffect.zone]->unk4 = 0;
        gBoard[gMonEffect.row][gMonEffect.zone]->unkFive = 0;

        ClearZone(gBoard[1][zone]);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = RELINQUISHED;
        sub_801CEBC();
    }
}

void EffectThousandEyesRestrict(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gBoard[1]) != MAX_ZONES)
    {
        u8 zone = HighestAtkMonInRowExceptGodCards(gBoard[1]);

        CopyCard(gBoard[gMonEffect.row][gMonEffect.zone], gBoard[1][zone]);

        gBoard[gMonEffect.row][gMonEffect.zone]->position = FACE_UP;
        gBoard[gMonEffect.row][gMonEffect.zone]->isLocked = FALSE;
        gBoard[gMonEffect.row][gMonEffect.zone]->battlePosition = POS_ATK;
        gBoard[gMonEffect.row][gMonEffect.zone]->unkTwo = 0;
        gBoard[gMonEffect.row][gMonEffect.zone]->unk4 = 0;
        gBoard[gMonEffect.row][gMonEffect.zone]->unkFive = 0;
        sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
        sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);

        ClearZone(gBoard[1][zone]);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = THOUSAND_EYES_RESTRICT;
        sub_801CEBC();
    }
}

void EffectTimeWizard(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
    {
        if (gBoard[2][i]->id == BABY_DRAGON)
            gBoard[2][i]->id = THOUSAND_DRAGON;

        if (gBoard[2][i]->id == DARK_MAGICIAN)
            gBoard[2][i]->id = DARK_SAGE;
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = TIME_WIZARD;
        sub_801CEBC();
    }
}

void EffectCastleOfDarkIllusions(void)
{
    u8 i;

    gDuel.field = FIELD_YAMI;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id != CARD_NONE)
            gBoard[2][i]->position = FACE_DOWN;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id == CASTLE_OF_DARK_ILLUSIONS)
            gBoard[2][i]->position = FACE_UP;

    if (!gUnk_02021C08)
    {
        sub_8041140(gDuel.field);
        gUnk_02021C10.unk0 = CASTLE_OF_DARK_ILLUSIONS;
        sub_801CEBC();
    }
}

void EffectPumpkingTheKingOfGhosts(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
    {
        if (gBoard[2][i]->id == ARMORED_ZOMBIE)
            sub_8040368(gBoard[2][i]);
        if (gBoard[2][i]->id == DRAGON_ZOMBIE)
            sub_8040368(gBoard[2][i]);
        if (gBoard[2][i]->id == CLOWN_ZOMBIE)
            sub_8040368(gBoard[2][i]);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = PUMPKING_THE_KING_OF_GHOSTS;
        sub_801CEBC();
    }
}

void EffectCatapultTurtle(void)
{
    u8 i;
    u16 totalAtk = 0;

    for (i = 0; i < MAX_ZONES; i++)
    {
        if (gMonEffect.zone != i && gBoard[2][i]->id != CARD_NONE && !gBoard[2][i]->isLocked)
        {
            gUnk2021AC0.id = gBoard[2][i]->id;
            gUnk2021AC0.field = gDuel.field;
            gUnk2021AC0.numPowerup = sub_804069C(gBoard[2][i]);
            sub_800B318(&gUnk2021AC0);
            totalAtk += gCardInfo.atk;
            sub_8045338(gBoard[2][i], 0);
        }
    }
    if (GetCurrTurn() == PLAYER)
        sub_803F9E4(totalAtk);
    else
        sub_803F99C(totalAtk);

    sub_803F29C();
    sub_803F4C0();

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = CATAPULT_TURTLE;
        sub_801CEBC();
    }
}

void EffectTrapMaster(void)
{
    if (NumEmptyZonesInRow(gBoard[3])) //num of empty zones
    {
        u8 zone = EmptyZoneInRow(gBoard[3]); //return empty zone
        gBoard[3][zone]->id = ACID_TRAP_HOLE;
        gBoard[3][zone]->position = FACE_DOWN;
        gBoard[3][zone]->isLocked = FALSE;
        gBoard[3][zone]->battlePosition = POS_ATK;
        gBoard[3][zone]->unkTwo = 0;
        gBoard[3][zone]->unk4 = 0;
        sub_8040360(gBoard[3][zone]);
        sub_80403E8(gBoard[3][zone]);
        gBoard[3][zone]->unkFive = 0;
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = TRAP_MASTER;
        gUnk_02021C10.unk2 = ACID_TRAP_HOLE;
        sub_801CEBC();
    }
}

void EffectDarkMagicianGirl(void)
{
    if (gNotSure[CUR_PLAYER]->graveyard == DARK_MAGICIAN)
        sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
    if (gNotSure[CUR_OPPONENT]->graveyard == DARK_MAGICIAN)
        sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = DARK_MAGICIAN_GIRL;
        gUnk_02021C10.unk2 = DARK_MAGICIAN;
        sub_801CEBC();
    }
}

void EffectGyakutennoMegami(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
    {
        if (gBoard[2][i]->id != CARD_NONE)
        {
            gUnk2021AC0.id = gBoard[2][i]->id;
            gUnk2021AC0.field = gDuel.field;
            gUnk2021AC0.numPowerup = sub_804069C(gBoard[2][i]);
            sub_800B318(&gUnk2021AC0);
            if (gCardInfo.atk <= 500)
                sub_8040368(gBoard[2][i]);
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = GYAKUTENNO_MEGAMI;
        sub_801CEBC();
    }
}

void EffectDoron(void)
{
    if (NumEmptyZonesInRow(gBoard[2]))
    {
        u8 zone = EmptyZoneInRow(gBoard[2]);

        CopyCard(gBoard[2][zone], gBoard[gMonEffect.row][gMonEffect.zone]);
        gBoard[2][zone]->unkFive = 0;
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = DORON;
        sub_801CEBC();
    }
}

void EffectLabyrinthTank(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id == LABYRINTH_WALL)
           sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = LABYRINTH_TANK;
        gUnk_02021C10.unk2 = LABYRINTH_WALL;
        sub_801CEBC();
    }
}

void EffectSpiritOfTheBooks(void)
{
    if (NumEmptyZonesInRow(gBoard[2]))
    {
        u8 zone = EmptyZoneInRow(gBoard[2]);

        gBoard[gMonEffect.row][zone]->id = BOO_KOO;
        gBoard[gMonEffect.row][zone]->position = FACE_UP;
        gBoard[gMonEffect.row][zone]->isLocked = FALSE;
        gBoard[gMonEffect.row][zone]->battlePosition = POS_ATK;
        gBoard[gMonEffect.row][zone]->unkTwo = 0;
        gBoard[gMonEffect.row][zone]->unk4 = 0;
        sub_8040360(gBoard[gMonEffect.row][zone]);
        sub_80403E8(gBoard[gMonEffect.row][zone]);
        gBoard[gMonEffect.row][zone]->unkFive = 0;
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = SPIRIT_OF_THE_BOOKS;
        gUnk_02021C10.unk2 = BOO_KOO;
        sub_801CEBC();
    }
}

void EffectBeastKingOfTheSwamps(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (IsGodCard(gBoard[1][i]->id) != TRUE)
            sub_8045338(gBoard[1][i], 1);

    for (i = 0; i < MAX_ZONES; i++)
        if (IsGodCard(gBoard[2][i]->id) != TRUE)
            sub_8045338(gBoard[2][i], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = BEASTKING_OF_THE_SWAMPS;
        sub_801CEBC();
    }
}

void EffectNemuriko(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[1][i]->id != CARD_NONE)
            gBoard[1][i]->isLocked = TRUE;

    //unintended behavior?
    //description says it locks enemy monsters
    //while this locks all monsters on the field
    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id != CARD_NONE)
            gBoard[2][i]->isLocked = TRUE;

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = NEMURIKO;
        sub_801CEBC();
    }
}

void EffectToadMaster(void)
{
    if (NumEmptyZonesInRow(gBoard[2]))
    {
        u8 zone = EmptyZoneInRow(gBoard[2]);

        gBoard[gMonEffect.row][zone]->id = FROG_THE_JAM;
        gBoard[gMonEffect.row][zone]->position = FACE_UP;
        gBoard[gMonEffect.row][zone]->isLocked = FALSE;
        gBoard[gMonEffect.row][zone]->battlePosition = POS_ATK;
        gBoard[gMonEffect.row][zone]->unkTwo = 0;
        gBoard[gMonEffect.row][zone]->unk4 = 0;
        sub_8040360(gBoard[gMonEffect.row][zone]);
        sub_80403E8(gBoard[gMonEffect.row][zone]);
        gBoard[gMonEffect.row][zone]->unkFive = 0;
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = TOAD_MASTER;
        gUnk_02021C10.unk2 = FROG_THE_JAM;
        sub_801CEBC();
    }
}

void EffectHoshiningen(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
    {
        SetCardInfo(gBoard[2][i]->id);
        if (gCardInfo.attribute == ATTRIBUTE_SHADOW)
            sub_804037C(gBoard[2][i]);
        if (gCardInfo.attribute == ATTRIBUTE_LIGHT)
            sub_8040368(gBoard[2][i]);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = HOSHININGEN;
        sub_801CEBC();
    }
}

void EffectWitchsApprentice(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
    {
        SetCardInfo(gBoard[2][i]->id);
        if (gCardInfo.attribute == ATTRIBUTE_LIGHT)
            sub_804037C(gBoard[2][i]);
        if (gCardInfo.attribute == ATTRIBUTE_SHADOW)
            sub_8040368(gBoard[2][i]);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = WITCHS_APPRENTICE;
        sub_801CEBC();
    }
}

void EffectMysticLamp(void)
{
    gUnk2021AC0.id = gBoard[gMonEffect.row][gMonEffect.zone]->id;
    gUnk2021AC0.field = gDuel.field;
    gUnk2021AC0.numPowerup = sub_804069C(gBoard[gMonEffect.row][gMonEffect.zone]);
    sub_800B318(&gUnk2021AC0);

    if (GetCurrTurn() == PLAYER)
        sub_803F9E4(gCardInfo.atk);
    else
        sub_803F99C(gCardInfo.atk);

    sub_803F29C();
    sub_803F4C0();

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = MYSTIC_LAMP;
        sub_801CEBC();
    }
}

void EffectLeghul(void)
{
    gUnk2021AC0.id = gBoard[gMonEffect.row][gMonEffect.zone]->id;
    gUnk2021AC0.field = gDuel.field;
    gUnk2021AC0.numPowerup = sub_804069C(gBoard[gMonEffect.row][gMonEffect.zone]);
    sub_800B318(&gUnk2021AC0);

    if (GetCurrTurn() == PLAYER)
        sub_803F9E4(gCardInfo.atk);
    else
        sub_803F99C(gCardInfo.atk);

    sub_803F29C();
    sub_803F4C0();

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = LEGHUL;
        sub_801CEBC();
    }
}

void EffectInsectQueen(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
    {
        SetCardInfo(gBoard[2][i]->id);
        if (gCardInfo.type == TYPE_INSECT)
            sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
    }

    for (i = 0; i < MAX_ZONES; i++)
    {
        SetCardInfo(gBoard[1][i]->id);
        if (gCardInfo.type == TYPE_INSECT)
            sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = INSECT_QUEEN;
        sub_801CEBC();
    }
}

void EffectObeliskTheTormentor(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (IsWingedDragonOfRa(gBoard[1][i]->id) != TRUE)
            sub_8045338(gBoard[1][i], 1);

    if (GetCurrTurn() == PLAYER)
        sub_803F9E4(4000);
    else
        sub_803F99C(4000);

    sub_803F29C();
    sub_803F4C0();

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void EffectSliferTheSkyDragon(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
    {
        if (gBoard[4][i]->id != CARD_NONE)
        {
            sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
            sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
            sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void EffectDarkMagicianGirl2(void)
{
    if (gNotSure[CUR_PLAYER]->graveyard == DARK_MAGICIAN)
        sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
    if (gNotSure[CUR_OPPONENT]->graveyard == DARK_MAGICIAN)
        sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        gUnk_02021C10.unk2 = DARK_MAGICIAN;
        sub_801CEBC();
    }
}

void EffectAlphaTheMagnetWarrior(void)
{
    if (NumCardInRow(gBoard[2], BETA_THE_MAGNET_WARRIOR) > 0)
    {
        if (NumCardInRow(gBoard[2], GAMMA_THE_MAGNET_WARRIOR) > 0)
        {
           gBoard[gMonEffect.row][gMonEffect.zone]->id = VALKYRION_THE_MAGNA_WARRIOR;
           gBoard[gMonEffect.row][gMonEffect.zone]->position = FACE_UP;
           gBoard[gMonEffect.row][gMonEffect.zone]->isLocked = TRUE;
           gBoard[gMonEffect.row][gMonEffect.zone]->battlePosition = POS_ATK;
           gBoard[gMonEffect.row][gMonEffect.zone]->unkTwo = 0;
           sub_8040360(gBoard[gMonEffect.row][gMonEffect.zone]);
           sub_80403E8(gBoard[gMonEffect.row][gMonEffect.zone]);
           gBoard[gMonEffect.row][gMonEffect.zone]->unkFive = 0;
           ClearZone(gBoard[gMonEffect.row][sub_8043694(gBoard[gMonEffect.row], BETA_THE_MAGNET_WARRIOR)]);
           ClearZone(gBoard[gMonEffect.row][sub_8043694(gBoard[gMonEffect.row], GAMMA_THE_MAGNET_WARRIOR)]);
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        gUnk_02021C10.unk2 = VALKYRION_THE_MAGNA_WARRIOR;
        sub_801CEBC();
    }
}

void EffectBetaTheMagnetWarrior(void)
{
    if (NumCardInRow(gBoard[2], ALPHA_THE_MAGNET_WARRIOR) > 0)
    {
        if (NumCardInRow(gBoard[2], GAMMA_THE_MAGNET_WARRIOR) > 0)
        {
           gBoard[gMonEffect.row][gMonEffect.zone]->id = VALKYRION_THE_MAGNA_WARRIOR;
           gBoard[gMonEffect.row][gMonEffect.zone]->position = FACE_UP;
           gBoard[gMonEffect.row][gMonEffect.zone]->isLocked = TRUE;
           gBoard[gMonEffect.row][gMonEffect.zone]->battlePosition = POS_ATK;
           gBoard[gMonEffect.row][gMonEffect.zone]->unkTwo = 0;
           sub_8040360(gBoard[gMonEffect.row][gMonEffect.zone]);
           sub_80403E8(gBoard[gMonEffect.row][gMonEffect.zone]);
           gBoard[gMonEffect.row][gMonEffect.zone]->unkFive = 0;
           ClearZone(gBoard[gMonEffect.row][sub_8043694(gBoard[gMonEffect.row], ALPHA_THE_MAGNET_WARRIOR)]);
           ClearZone(gBoard[gMonEffect.row][sub_8043694(gBoard[gMonEffect.row], GAMMA_THE_MAGNET_WARRIOR)]);
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        gUnk_02021C10.unk2 = VALKYRION_THE_MAGNA_WARRIOR;
        sub_801CEBC();
    }
}

void EffectGammaTheMagnetWarrior(void)
{
    if (NumCardInRow(gBoard[2], ALPHA_THE_MAGNET_WARRIOR) > 0)
    {
        if (NumCardInRow(gBoard[2], BETA_THE_MAGNET_WARRIOR) > 0)
        {
           gBoard[gMonEffect.row][gMonEffect.zone]->id = VALKYRION_THE_MAGNA_WARRIOR;
           gBoard[gMonEffect.row][gMonEffect.zone]->position = FACE_UP;
           gBoard[gMonEffect.row][gMonEffect.zone]->isLocked = TRUE;
           gBoard[gMonEffect.row][gMonEffect.zone]->battlePosition = POS_ATK;
           gBoard[gMonEffect.row][gMonEffect.zone]->unkTwo = 0;
           sub_8040360(gBoard[gMonEffect.row][gMonEffect.zone]);
           sub_80403E8(gBoard[gMonEffect.row][gMonEffect.zone]);
           gBoard[gMonEffect.row][gMonEffect.zone]->unkFive = 0;
           ClearZone(gBoard[gMonEffect.row][sub_8043694(gBoard[gMonEffect.row], ALPHA_THE_MAGNET_WARRIOR)]);
           ClearZone(gBoard[gMonEffect.row][sub_8043694(gBoard[gMonEffect.row], BETA_THE_MAGNET_WARRIOR)]);
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        gUnk_02021C10.unk2 = VALKYRION_THE_MAGNA_WARRIOR;
        sub_801CEBC();
    }
}

void EffectValkyrionTheMagnaWarrior(void)
{
    if (NumEmptyZonesInRow(gBoard[2]) > 1)
    {
        u8 zone;

        gBoard[gMonEffect.row][gMonEffect.zone]->id = ALPHA_THE_MAGNET_WARRIOR;
        gBoard[gMonEffect.row][gMonEffect.zone]->position = FACE_UP;
        gBoard[gMonEffect.row][gMonEffect.zone]->isLocked = TRUE;
        gBoard[gMonEffect.row][gMonEffect.zone]->battlePosition = POS_ATK;
        gBoard[gMonEffect.row][gMonEffect.zone]->unkTwo = 0;
        sub_8040360(gBoard[gMonEffect.row][gMonEffect.zone]);
        sub_80403E8(gBoard[gMonEffect.row][gMonEffect.zone]);
        gBoard[gMonEffect.row][gMonEffect.zone]->unkFive = 0;

        zone = sub_8043694(gBoard[gMonEffect.row], CARD_NONE);
        gBoard[gMonEffect.row][zone]->id = BETA_THE_MAGNET_WARRIOR;
        gBoard[gMonEffect.row][zone]->position = FACE_UP;
        gBoard[gMonEffect.row][zone]->isLocked = TRUE;
        gBoard[gMonEffect.row][zone]->battlePosition = POS_ATK;
        gBoard[gMonEffect.row][zone]->unkTwo = 0;
        sub_8040360(gBoard[gMonEffect.row][zone]);
        sub_80403E8(gBoard[gMonEffect.row][zone]);
        gBoard[gMonEffect.row][zone]->unkFive = 0;

        zone = sub_8043694(gBoard[gMonEffect.row], CARD_NONE);
        gBoard[gMonEffect.row][zone]->id = GAMMA_THE_MAGNET_WARRIOR;
        gBoard[gMonEffect.row][zone]->position = FACE_UP;
        gBoard[gMonEffect.row][zone]->isLocked = TRUE;
        gBoard[gMonEffect.row][zone]->battlePosition = POS_ATK;
        gBoard[gMonEffect.row][zone]->unkTwo = 0;
        sub_8040360(gBoard[gMonEffect.row][zone]);
        sub_80403E8(gBoard[gMonEffect.row][zone]);
        gBoard[gMonEffect.row][zone]->unkFive = 0;
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void EffectBeastOfGilfer(void)
{
    if (NumEmptyZonesInRow(gBoard[1]) < 5)
    {
        u8 i;

        for (i = 0; i < MAX_ZONES; i++)
            if (gBoard[1][i]->id != CARD_NONE)
                sub_804037C(gBoard[1][i]);
    }
    sub_8045338(gBoard[gMonEffect.row][gMonEffect.zone], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = BEAST_OF_GILFER;
        sub_801CEBC();
    }
}

void EffectDarkNecrofear(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gBoard[1]) != MAX_ZONES && NumEmptyZonesInRow(gBoard[1]) != MAX_ZONES)
    {
        u8 highestAtkZone = HighestAtkMonInRowExceptGodCards(gBoard[1]);
        u8 emptyZone = sub_8043694(gBoard[2], CARD_NONE);

        CopyCard(gBoard[gMonEffect.row][emptyZone], gBoard[1][highestAtkZone]);
        gBoard[gMonEffect.row][emptyZone]->position = FACE_UP;
        gBoard[gMonEffect.row][emptyZone]->isLocked = FALSE;
        gBoard[gMonEffect.row][emptyZone]->battlePosition = POS_ATK;
        gBoard[gMonEffect.row][emptyZone]->unkTwo = 0;
        gBoard[gMonEffect.row][emptyZone]->unk4 = 0;
        gBoard[gMonEffect.row][emptyZone]->unkFive = 0;

        ClearZone(gBoard[1][highestAtkZone]);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void sub_8046D38(void)
{
    if (NumEmptyZonesInRow(gBoard[1]) != MAX_ZONES)
    {
        u8 i;

        for (i = 0; i < MAX_ZONES; i++)
        {
            SetCardInfo(gBoard[1][i]->id);
            if (gCardInfo.type == TYPE_DRAGON)
                sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void EffectReflectBounder(void)
{
    if (NumEmptyZonesInRow(gBoard[1]) != MAX_ZONES)
    {
        u8 zone = HighestAtkMonInRow(gBoard[1]);

        gUnk2021AC0.id = gBoard[1][zone]->id;
        gUnk2021AC0.field = gDuel.field;
        gUnk2021AC0.numPowerup = sub_804069C(gBoard[1][zone]);
        sub_800B318(&gUnk2021AC0);

        if (GetCurrTurn() == PLAYER)
            sub_803F9E4(gCardInfo.atk);
        else
            sub_803F99C(gCardInfo.atk);

        sub_803F29C();
        sub_803F4C0();
    }

    sub_8045338(gBoard[gMonEffect.row][gMonEffect.zone], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = REFLECT_BOUNDER;
        sub_801CEBC();
    }
}

void EffectParasiteParacide(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gBoard[1]) != MAX_ZONES)
    {
        u8 zone = HighestAtkMonInRowExceptGodCards(gBoard[1]);

        CopyCard(gBoard[1][zone], gBoard[gMonEffect.row][gMonEffect.zone]);
        gBoard[1][zone]->position = FACE_UP;
        gBoard[1][zone]->isLocked = FALSE;
        gBoard[1][zone]->battlePosition = POS_ATK;
        gBoard[1][zone]->unkTwo = 0;
        gBoard[1][zone]->unk4 = 0;
        gBoard[1][zone]->unkFive = 0;

        ClearZone(gBoard[gMonEffect.row][gMonEffect.zone]);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = PARASITE_PARACIDE;
        sub_801CEBC();
    }
}

void EffectPinchHopper(void)
{
    sub_8045338(gBoard[gMonEffect.row][gMonEffect.zone], 0);

    if (sub_8043584(gBoard[4], 10) > 0)
    {
        u8 zone = sub_8043164(gBoard[4], 10);

        if (zone != 5)
        {
            CopyCard(gBoard[gMonEffect.row][gMonEffect.zone], gBoard[4][zone]);
            gBoard[gMonEffect.row][gMonEffect.zone]->position = FACE_UP;
            gBoard[gMonEffect.row][gMonEffect.zone]->isLocked = FALSE;
            gBoard[gMonEffect.row][gMonEffect.zone]->battlePosition = POS_ATK;
            gBoard[gMonEffect.row][gMonEffect.zone]->unkTwo = 0;
            gBoard[gMonEffect.row][gMonEffect.zone]->unk4 = 0;
            gBoard[gMonEffect.row][gMonEffect.zone]->unkFive = 0;
            ClearZone(gBoard[4][zone]);
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = PINCH_HOPPER;
        sub_801CEBC();
    }
}

void sub_804703C(void)
{
     if (NumEmptyZonesInRow(gBoard[2]) > 0)
     {
        u8 zone = EmptyZoneInRow(gBoard[2]);

        CopyCard(gBoard[2][zone], gBoard[gMonEffect.row][gMonEffect.zone]);
        gBoard[2][zone]->unkFive = 0;
     }

     if (!gUnk_02021C08)
     {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
     }
}

void EffectAncientLamp(void)
{
    if (NumEmptyZonesInRow(gBoard[2]) != 0)
    {
        u8 zone = EmptyZoneInRow(gBoard[2]);

        gBoard[gMonEffect.row][zone]->id = LA_JINN_THE_MYSTICAL_GENIE_OF_THE_LAMP;
        gBoard[gMonEffect.row][zone]->position = FACE_UP;
        gBoard[gMonEffect.row][zone]->isLocked = FALSE;
        gBoard[gMonEffect.row][zone]->battlePosition = POS_ATK;
        gBoard[gMonEffect.row][zone]->unkTwo = 0;
        gBoard[gMonEffect.row][zone]->unk4 = 0;
        sub_8040360(gBoard[gMonEffect.row][zone]);
        sub_80403E8(gBoard[gMonEffect.row][zone]);
        gBoard[gMonEffect.row][zone]->unkFive = 0;
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        gUnk_02021C10.unk2 = LA_JINN_THE_MYSTICAL_GENIE_OF_THE_LAMP;
        sub_801CEBC();
    }
}

void sub_80471BC(void)
{
    gUnk2021AC0.id = gBoard[gMonEffect.row][gMonEffect.zone]->id;
    gUnk2021AC0.field = gDuel.field;
    gUnk2021AC0.numPowerup = sub_804069C(gBoard[gMonEffect.row][gMonEffect.zone]);
    sub_800B318(&gUnk2021AC0);

    if (GetCurrTurn() == PLAYER)
        sub_803F9E4(gCardInfo.atk);
    else
        sub_803F99C(gCardInfo.atk);

    sub_803F29C();
    sub_803F4C0();

    sub_804037C(gBoard[gMonEffect.row][gMonEffect.zone]);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}
/*
void EffectDarkPaladin(void)
{
    if (NumEmptyZonesInRow(gHands[0]) < 5 && sub_8043930(0, TYPE_SPELL) > 0)
    {
        u8 i;
        sub_8045338(gHands[0][sub_8043468(gHands[0])], 0);

        for (i = 0; i < MAX_ZONES; i++)
        {
            if (gBoard[0][i]->id != CARD_NONE)
            {
                SetCardInfo(gBoard[0][i]->id);
                if (gCardInfo.type == TYPE_SPELL)
                {
                    sub_8045338(gBoard[0][i], 1);
                    break;
                }
            }
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = DARK_PALADIN;
        sub_801CEBC();
    }
}
*/

NAKED
void EffectDarkPaladin(void)
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
	bl sub_8043468\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	movs r1, #0\n\
	bl sub_8045338\n\
	movs r5, #0\n\
	ldr r6, _080472B0\n\
	b _080472BA\n\
	.align 2, 0\n\
_080472AC: .4byte gHands\n\
_080472B0: .4byte gBoard\n\
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
	bl sub_8045338\n\
_080472DE:\n\
	ldr r0, _080472FC\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _080472F2\n\
	ldr r1, _08047300\n\
	movs r0, #0x9f\n\
	lsls r0, r0, #2\n\
	strh r0, [r1]\n\
	bl sub_801CEBC\n\
_080472F2:\n\
	pop {r4, r5, r6}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080472F8: .4byte gCardInfo\n\
_080472FC: .4byte gUnk_02021C08\n\
_08047300: .4byte gUnk_02021C10");
}

NAKED
void sub_8047304(struct Zone* zone, struct Zone* zone2)
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
	bl CardPosition\n\
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
	bl sub_8040360\n\
	adds r0, r6, #0\n\
	bl sub_80403E8\n\
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

void EffectKingsKnight(void)
{
    if (NumCardInRow(gBoard[2], QUEENS_KNIGHT) != 0 && NumEmptyZonesInRow(gBoard[2]) != 0)
    {
        u8 zone = EmptyZoneInRow(gBoard[2]);

        gBoard[2][zone]->id = JACKS_KNIGHT;
        sub_8040340(gBoard[2][zone]);
        sub_80406CC(gBoard[2][zone]);
        gBoard[2][zone]->battlePosition = POS_ATK;
        gBoard[2][zone]->unkTwo = 0;
        gBoard[2][zone]->unkThree = 0;
        sub_8040360(gBoard[2][zone]);
        sub_80403E8(gBoard[2][zone]);
        gBoard[2][zone]->unk4 = 0;
        gBoard[2][zone]->unkFive = 0;
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = KINGS_KNIGHT;
        sub_801CEBC();
    }
}

/*
void sub_804745C(void)
{
    u8 yQty = NumCardInRow(gBoard[2], Y_DRAGON_HEAD);
    u8 zQty = NumCardInRow(gBoard[2], Z_METAL_TANK);
    u16 clearZone;
    u16 newMon;

    if (yQty != 0) //_08047538
    {
        if (zQty != 0)
        {
            newMon = XZ_TANK_CANNON;
            clearZone = Z_METAL_TANK;
            a:
            ClearZone(gBoard[2][sub_8043694(gBoard[2], clearZone)]);
            gBoard[2][gMonEffect.zone]->id = newMon;
            sub_8040340(gBoard[2][gMonEffect.zone]);
            sub_80406C0(gBoard[2][gMonEffect.zone]);
            gBoard[2][gMonEffect.zone]->battlePosition = POS_ATK;
            gBoard[2][gMonEffect.zone]->unkTwo = 0;
            gBoard[2][gMonEffect.zone]->unkThree = 0;
            sub_8040360(gBoard[2][gMonEffect.zone]);
            sub_80403E8(gBoard[2][gMonEffect.zone]);
            gBoard[2][gMonEffect.zone]->unk4 = 0;
            gBoard[2][gMonEffect.zone]->unkFive = 0;
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
        ClearZone(gBoard[2][sub_8043694(gBoard[2], Y_DRAGON_HEAD)]);
        clearZone = Z_METAL_TANK;
        goto a;
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = X_HEAD_CANNON;
        sub_801CEBC();
    }
} */

NAKED
void sub_804745C(void)
{
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	ldr r5, _0804748C\n\
	ldr r7, _08047490\n\
	adds r0, r5, #0\n\
	adds r1, r7, #0\n\
	bl NumCardInRow\n\
	adds r4, r0, #0\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	ldr r6, _08047494\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
	bl NumCardInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r4, #0\n\
	beq _08047538\n\
	cmp r0, #0\n\
	beq _08047528\n\
	b _080474F0\n\
	.align 2, 0\n\
_0804748C: .4byte gBoard+0x28\n\
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
	bl sub_8040340\n\
	adds r0, r4, #0\n\
	bl sub_80406C0\n\
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
	bl sub_8040360\n\
	adds r0, r4, #0\n\
	bl sub_80403E8\n\
	strb r5, [r4, #4]\n\
	ldrb r1, [r4, #5]\n\
	movs r0, #0x21\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	b _08047558\n\
	.align 2, 0\n\
_080474E8: .4byte gBoard\n\
_080474EC: .4byte 0x02024250\n\
_080474F0:\n\
	movs r0, #0x76\n\
	mov r8, r0\n\
	ldr r4, _0804751C\n\
	ldr r1, _08047520\n\
	adds r0, r4, #0\n\
	bl sub_8043694\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	bl ClearZone\n\
	ldr r1, _08047524\n\
	adds r0, r4, #0\n\
	bl sub_8043694\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	b _08047550\n\
	.align 2, 0\n\
_0804751C: .4byte gBoard+0x28\n\
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
	bl sub_8043694\n\
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
	bl sub_801CEBC\n\
_0804756A:\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08047574: .4byte gUnk_02021C08\n\
_08047578: .4byte gUnk_02021C10");
}

NAKED
void sub_804757C(void)
{
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	ldr r5, _080475A8\n\
	adds r0, r5, #0\n\
	movs r1, #0x95\n\
	bl NumCardInRow\n\
	adds r4, r0, #0\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	ldr r6, _080475AC\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
	bl NumCardInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r4, #0\n\
	beq _08047640\n\
	cmp r0, #0\n\
	beq _08047634\n\
	b _08047604\n\
	.align 2, 0\n\
_080475A8: .4byte gBoard+0x28\n\
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
	bl sub_8040340\n\
	adds r0, r4, #0\n\
	bl sub_80406C0\n\
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
	bl sub_8040360\n\
	adds r0, r4, #0\n\
	bl sub_80403E8\n\
	strb r5, [r4, #4]\n\
	ldrb r1, [r4, #5]\n\
	movs r0, #0x21\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	b _08047660\n\
	.align 2, 0\n\
_080475FC: .4byte gBoard\n\
_08047600: .4byte 0x02024250\n\
_08047604:\n\
	movs r7, #0x76\n\
	ldr r4, _0804762C\n\
	adds r0, r4, #0\n\
	movs r1, #0x95\n\
	bl sub_8043694\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	bl ClearZone\n\
	ldr r1, _08047630\n\
	adds r0, r4, #0\n\
	bl sub_8043694\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	b _08047654\n\
	.align 2, 0\n\
_0804762C: .4byte gBoard+0x28\n\
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
	bl sub_8043694\n\
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
	bl sub_801CEBC\n\
_08047672:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08047678: .4byte gUnk_02021C08\n\
_0804767C: .4byte gUnk_02021C10\n\
_08047680: .4byte 0x0000023F");
}

NAKED
void sub_8047684(void)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	ldr r5, _080476B0\n\
	adds r0, r5, #0\n\
	movs r1, #0x95\n\
	bl NumCardInRow\n\
	adds r4, r0, #0\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	ldr r6, _080476B4\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
	bl NumCardInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r4, #0\n\
	beq _08047746\n\
	cmp r0, #0\n\
	beq _0804773C\n\
	b _0804770C\n\
	.align 2, 0\n\
_080476B0: .4byte gBoard+0x28\n\
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
	bl sub_8040340\n\
	adds r0, r4, #0\n\
	bl sub_80406C0\n\
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
	bl sub_8040360\n\
	adds r0, r4, #0\n\
	bl sub_80403E8\n\
	strb r5, [r4, #4]\n\
	ldrb r1, [r4, #5]\n\
	movs r0, #0x21\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	b _08047768\n\
	.align 2, 0\n\
_08047704: .4byte gBoard\n\
_08047708: .4byte 0x02024250\n\
_0804770C:\n\
	movs r7, #0x76\n\
	ldr r4, _08047734\n\
	adds r0, r4, #0\n\
	movs r1, #0x95\n\
	bl sub_8043694\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	bl ClearZone\n\
	ldr r1, _08047738\n\
	adds r0, r4, #0\n\
	bl sub_8043694\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	b _0804775A\n\
	.align 2, 0\n\
_08047734: .4byte gBoard+0x28\n\
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
	bl sub_8043694\n\
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
	bl sub_801CEBC\n\
_0804777A:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08047780: .4byte gUnk_02021C08\n\
_08047784: .4byte gUnk_02021C10\n\
_08047788: .4byte 0x0000024E");
}
/*
void EffectXYDragonCannon(void)
{
    if (NumEmptyZonesInRow(gHands[0]) < MAX_ZONES)
    {
        u8 i;
        bool32 found = FALSE;

        for (i = 0; i < MAX_ZONES; i++)
        {
            if (gBoard[0][i]->id != CARD_NONE && CardPosition(gBoard[0][i]) == FACE_UP)
            {
                found = TRUE;
                break;
            }
        }

        if (found)
        {
            sub_8045338(gBoard[0][i], 1);
            sub_8045338(gHands[0][sub_8043468(gHands[0])], 0);
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = XY_DRAGON_CANNON;
        sub_801CEBC();
    }
}*/

NAKED
void EffectXYDragonCannon(void)
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
_080477A0: .4byte gHands\n\
_080477A4: .4byte gBoard\n\
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
	bl CardPosition\n\
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
	bl sub_8045338\n\
	ldr r4, _08047808\n\
	adds r0, r4, #0\n\
	bl sub_8043468\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	movs r1, #0\n\
	bl sub_8045338\n\
_080477F0:\n\
	ldr r0, _0804780C\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _08047802\n\
	ldr r1, _08047810\n\
	ldr r0, _08047814\n\
	strh r0, [r1]\n\
	bl sub_801CEBC\n\
_08047802:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08047808: .4byte gHands\n\
_0804780C: .4byte gUnk_02021C08\n\
_08047810: .4byte gUnk_02021C10\n\
_08047814: .4byte 0x00000251");
}
NAKED
void sub_8047818(void)
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
_0804782C: .4byte gHands\n\
_08047830: .4byte gBoard\n\
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
	bl CardPosition\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	bne _08047834\n\
	movs r6, #1\n\
_08047858:\n\
	cmp r6, #0\n\
	beq _0804787A\n\
	adds r0, r4, #0\n\
	movs r1, #1\n\
	bl sub_8045338\n\
	ldr r4, _08047894\n\
	adds r0, r4, #0\n\
	bl sub_8043468\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	movs r1, #0\n\
	bl sub_8045338\n\
_0804787A:\n\
	ldr r0, _08047898\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _0804788E\n\
	ldr r1, _0804789C\n\
	movs r0, #0x95\n\
	lsls r0, r0, #2\n\
	strh r0, [r1]\n\
	bl sub_801CEBC\n\
_0804788E:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08047894: .4byte gHands\n\
_08047898: .4byte gUnk_02021C08\n\
_0804789C: .4byte gUnk_02021C10");
}
/*
void sub_80478A0(void)
{
    if (NumEmptyZonesInRow(gHands[0]) < 5)
    {
        u8 i, i2, r8;
        u16 r7 = 0;
        for (i = 0; i < MAX_ZONES; i++)
        {
            if (gBoard[1][i]->id != CARD_NONE && IsGodCard(gBoard[1][i]->id) != TRUE && CardPosition(gBoard[1][i]) == FACE_DOWN)
            {
                gUnk2021AC0.id = gBoard[1][i]->id;
                gUnk2021AC0.field = gDuel.field;
                gUnk2021AC0.numPowerup = sub_804069C(gBoard[1][i]);
                sub_800B318(&gUnk2021AC0);
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
            sub_8045338(gBoard[1][i2], 1);
            sub_8045338(gHands[0][sub_8043468(gHands[0])], 0);
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = YZ_TANK_DRAGON;
        sub_801CEBC();
    }
}
*/

NAKED
void EffectYZTankDragon(void)
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
	bl CardPosition\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	bne _0804790E\n\
	ldrh r0, [r4]\n\
	strh r0, [r6]\n\
	mov r1, sl\n\
	ldrb r0, [r1]\n\
	strb r0, [r6, #2]\n\
	adds r0, r4, #0\n\
	bl sub_804069C\n\
	strb r0, [r6, #3]\n\
	adds r0, r6, #0\n\
	bl sub_800B318\n\
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
	bl sub_8045338\n\
	ldr r4, _08047968\n\
	adds r0, r4, #0\n\
	bl sub_8043468\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	movs r1, #0\n\
	bl sub_8045338\n\
_08047946:\n\
	ldr r0, _08047980\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _08047958\n\
	ldr r1, _08047984\n\
	ldr r0, _08047988\n\
	strh r0, [r1]\n\
	bl sub_801CEBC\n\
_08047958:\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08047968: .4byte gHands\n\
_0804796C: .4byte gUnk2021AC0\n\
_08047970: .4byte gDuel+0xF0\n\
_08047974: .4byte gBoard+0x14\n\
_08047978: .4byte gCardInfo\n\
_0804797C: .4byte gBoard\n\
_08047980: .4byte gUnk_02021C08\n\
_08047984: .4byte gUnk_02021C10\n\
_08047988: .4byte 0x00000255");
}


void EffectXYZDragonCannon(void)
{
    if (NumEmptyZonesInRow(gHands[0]) < MAX_ZONES)
    {
        if (NumEmptyZonesAndGodCardsInRow(gBoard[1]) < MAX_ZONES)
        {
            sub_8045338(gBoard[1][HighestAtkMonInRowExceptGodCards(gBoard[1])], 1);
            sub_8045338(gHands[0][sub_8043468(gHands[0])], 0);
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = XYZ_DRAGON_CANNON;
        sub_801CEBC();
    }
}

/*
void EffectPuppetMaster(void)
{
    if (NumEmptyZonesInRow(gBoard[2]) > 0 && gNotSure[0]->graveyard == GERNIA)
    {
        u8 zone;

        if (GetCurrTurn() == PLAYER)
        {
            sub_803F99C(1000);
            sub_803F29C();
        }
        else
        {
            sub_803F9E4(1000);
            sub_803F29C();
        }
        sub_803F4C0();
        sub_804535C(0);

        zone = EmptyZoneInRow(gBoard[2]);

        gBoard[2][zone]->id = DARK_NECROFEAR;
        sub_8040340(gBoard[2][zone]);
        sub_80406CC(gBoard[2][zone]);
        gBoard[2][zone]->battlePosition = POS_ATK;
        gBoard[2][zone]->unkTwo = 0;
        gBoard[2][zone]->unk4 = 2;
        sub_8040360(gBoard[2][zone]);
        sub_80403E8(gBoard[2][zone]);
        gBoard[2][zone]->unkFive = 0;

        if (NumEmptyZonesInRow(gBoard[2]) != 0)
        {
            zone = EmptyZoneInRow(gBoard[2]);

            gBoard[2][zone]->id = HEADLESS_KNIGHT;
            sub_8040340(gBoard[2][zone]);
            sub_80406CC(gBoard[2][zone]);
            gBoard[2][zone]->battlePosition = POS_ATK;
            gBoard[2][zone]->unkTwo = 0;
            gBoard[2][zone]->unk4 = 2;
            sub_8040360(gBoard[2][zone]);
            sub_80403E8(gBoard[2][zone]);
            gBoard[2][zone]->unkFive = 0;

            if (NumEmptyZonesInRow(gBoard[2]) != 0)
            {
                zone = EmptyZoneInRow(gBoard[2]);

                gBoard[2][zone]->id = GERNIA;
                sub_8040340(gBoard[2][zone]);
                sub_80406CC(gBoard[2][zone]);
                gBoard[2][zone]->battlePosition = POS_ATK;
                gBoard[2][zone]->unkTwo = 0;
                gBoard[2][zone]->unk4 = 2;
                sub_8040360(gBoard[2][zone]);
                sub_80403E8(gBoard[2][zone]);
                gBoard[2][zone]->unkFive = 0;
            }
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}
*/
NAKED
void EffectPuppetMaster(void)
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
	bl GetCurrTurn\n\
	cmp r0, #0\n\
	bne _08047A40\n\
	movs r0, #0xfa\n\
	lsls r0, r0, #2\n\
	bl sub_803F99C\n\
	bl sub_803F29C\n\
	b _08047A4C\n\
	.align 2, 0\n\
_08047A34: .4byte gBoard+0x28\n\
_08047A38: .4byte gDuel+0x100\n\
_08047A3C: .4byte 0x00000239\n\
_08047A40:\n\
	movs r0, #0xfa\n\
	lsls r0, r0, #2\n\
	bl sub_803F9E4\n\
	bl sub_803F29C\n\
_08047A4C:\n\
	bl sub_803F4C0\n\
	movs r0, #0\n\
	bl sub_804535C\n\
	ldr r5, _08047B60\n\
	adds r0, r5, #0\n\
	bl EmptyZoneInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r5\n\
	ldr r4, [r0]\n\
	movs r0, #0\n\
	mov sl, r0\n\
	movs r0, #0x8a\n\
	strh r0, [r4]\n\
	adds r0, r4, #0\n\
	bl sub_8040340\n\
	adds r0, r4, #0\n\
	bl sub_80406CC\n\
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
	bl sub_8040360\n\
	adds r0, r4, #0\n\
	bl sub_80403E8\n\
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
	bl EmptyZoneInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r5\n\
	ldr r4, [r0]\n\
	movs r0, #0x6c\n\
	strh r0, [r4]\n\
	adds r0, r4, #0\n\
	bl sub_8040340\n\
	adds r0, r4, #0\n\
	bl sub_80406CC\n\
	ldrb r1, [r4, #5]\n\
	mov r0, sb\n\
	ands r0, r1\n\
	mov r1, r8\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	strb r6, [r4, #4]\n\
	adds r0, r4, #0\n\
	bl sub_8040360\n\
	adds r0, r4, #0\n\
	bl sub_80403E8\n\
	ldrb r1, [r4, #5]\n\
	adds r0, r7, #0\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	adds r0, r5, #0\n\
	bl NumEmptyZonesInRow\n\
	cmp r0, #0\n\
	beq _08047B3E\n\
	adds r0, r5, #0\n\
	bl EmptyZoneInRow\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x16\n\
	adds r0, r0, r5\n\
	ldr r4, [r0]\n\
	ldr r0, _08047B64\n\
	strh r0, [r4]\n\
	adds r0, r4, #0\n\
	bl sub_8040340\n\
	adds r0, r4, #0\n\
	bl sub_80406CC\n\
	ldrb r1, [r4, #5]\n\
	mov r0, sb\n\
	ands r0, r1\n\
	mov r1, r8\n\
	ands r0, r1\n\
	strb r0, [r4, #5]\n\
	strb r6, [r4, #4]\n\
	adds r0, r4, #0\n\
	bl sub_8040360\n\
	adds r0, r4, #0\n\
	bl sub_80403E8\n\
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
	bl sub_801CEBC\n\
_08047B52:\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08047B60: .4byte gBoard+0x28\n\
_08047B64: .4byte 0x00000239\n\
_08047B68: .4byte gUnk_02021C08\n\
_08047B6C: .4byte gUnk_02021C10\n\
_08047B70: .4byte 0x02024250");
}

void EffectPenguinTorpedo(void)
{
    struct Zone* zone = gBoard[2][gMonEffect.zone];

    gUnk2021AC0.id = zone->id;
    gUnk2021AC0.field = gDuel.field;
    gUnk2021AC0.numPowerup = sub_804069C(zone);
    sub_800B318(&gUnk2021AC0);

    if (GetCurrTurn() == PLAYER)
        sub_803F9E4(gCardInfo.atk);
    else
        sub_803F99C(gCardInfo.atk);

    sub_803F29C();
    sub_803F4C0();

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = PENGUIN_TORPEDO;
        sub_801CEBC();
    }
}

void EffectBerserkDragon(void)
{
    u8 i, turn = GetCurrTurn();

    for (i = 0; i < MAX_ZONES; i++)
    {
        if (sub_8025544() == 1 || gBoard[2][gMonEffect.zone]->id == CARD_NONE)
            break;

        if (gBoard[1][i]->id != CARD_NONE)
        {
            sub_8040340(gBoard[1][i]);
            if (turn == PLAYER)
                sub_803F908(gMonEffect.zone, 4 - i);
            else
                sub_803F908(i, 4 - gMonEffect.zone);

            sub_803F29C();
            sub_803F224();
            if (turn != PLAYER)
                gUnk2023EA0.unk18 = 0;
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = BERSERK_DRAGON;
        sub_801CEBC();
    }
}

void sub_8047CAC(void)
{
    u8 i;
    struct Zone* zone;

    for (i = 0; i < MAX_ZONES; i++)
    {
        zone = gBoard[0][i];
        if (zone->id != CARD_NONE)
            sub_8045338(zone, 1);
    }

    for (i = 0; i < MAX_ZONES; i++)
    {
        zone = gBoard[1][i];
        if (zone->id != CARD_NONE && IsGodCard(zone->id) != TRUE)
            sub_8045338(zone, 1);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void sub_8047D28(void)
{
    sub_801D1A8();
    sub_801D188(2);
    SetCardInfo(gMonEffect.id);
    gMonEffects[gCardInfo.monsterEffect]();
}

void sub_8047D5C(void){}
void sub_8047D60(void){}

void EffectReaperOfTheCards(void)
{
    if (NumEmptyZonesInRow(gBoard[0]) < MAX_ZONES)
    {
        u8 i;

        for (i = 0; i < MAX_ZONES; i++)
        {
            SetCardInfo(gBoard[0][i]->id);
            if (gCardInfo.trapEffect)
            {
                sub_8045338(gBoard[0][i], 1);
                break;
            }
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = REAPER_OF_THE_CARDS;
        sub_801CEBC();
    }
}

void EffectFairysGift(void)
{
    if (GetCurrTurn() == PLAYER)
        sub_803F978(1000);
    else
        sub_803F9C0(1000);

    sub_803F29C();

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = FAIRYS_GIFT;
        sub_801CEBC();
    }
}

void EffectSkelengel(void)
{
    sub_8043CE4(GetCurrTurn());

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = SKELENGEL;
        sub_801CEBC();
    }
}

void EffectHarpieLady(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id == HARPIES_PET_DRAGON)
            sub_8040368(gBoard[2][i]);


    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = HARPIE_LADY;
        gUnk_02021C10.unk2 = HARPIES_PET_DRAGON;
        sub_801CEBC();
    }
}

void EffectHarpieLadySisters(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id == HARPIES_PET_DRAGON)
            sub_8040394(gBoard[2][i], 2);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = HARPIE_LADY_SISTERS;
        gUnk_02021C10.unk2 = HARPIES_PET_DRAGON;
        sub_801CEBC();
    }
}

void EffectMysticalElf(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id == BLUE_EYES_WHITE_DRAGON)
            sub_8040368(gBoard[2][i]);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = MYSTICAL_ELF;
        gUnk_02021C10.unk2 = BLUE_EYES_WHITE_DRAGON;
        sub_801CEBC();
    }
}

void EffectCurseOfDragon(void)
{
    gDuel.field = FIELD_WASTELAND;

    if (!gUnk_02021C08)
    {
        sub_8041140(FIELD_WASTELAND);
        gUnk_02021C10.unk0 = CURSE_OF_DRAGON;
        sub_801CEBC();
    }
}

void EffectFlameSwordsman(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
    {
        SetCardInfo(gBoard[1][i]->id);
        if (gCardInfo.type == TYPE_DINOSAUR)
            sub_8045338(gBoard[1][i], 1);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = FLAME_SWORDSMAN;
        sub_801CEBC();
    }
}

void EffectGiantSoldierOfStone(void)
{
    gDuel.field = FIELD_ARENA;

    if (!gUnk_02021C08)
    {
        sub_8041140(FIELD_ARENA);
        gUnk_02021C10.unk0 = GIANT_SOLDIER_OF_STONE;
        sub_801CEBC();
    }
}

void EffectBattleOx(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
    {
        SetCardInfo(gBoard[1][i]->id);
        if (gCardInfo.attribute == ATTRIBUTE_PYRO)
            sub_8045338(gBoard[1][i], 1);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = BATTLE_OX;
        sub_801CEBC();
    }
}

void EffectMonsterTamer(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
    {
        if (gBoard[2][i]->id == DUNGEON_WORM)
            sub_8040368(gBoard[2][i]);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = MONSTER_TAMER;
        gUnk_02021C10.unk2 = DUNGEON_WORM;
        sub_801CEBC();
    }
}

void EffectMammothGraveyard(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[1][i]->id != CARD_NONE)
            sub_804037C(gBoard[1][i]);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = MAMMOTH_GRAVEYARD;
        sub_801CEBC();
    }
}

void EffectGoddessOfWhim(void)
{
    sub_8043CE4(GetCurrTurn());
    sub_8045338(gBoard[2][gMonEffect.zone], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = GODDESS_OF_WHIM;
        sub_801CEBC();
    }
}

void EffectSpiritOfTheMountain(void)
{
    gDuel.field = FIELD_MOUNTAIN;

    if (!gUnk_02021C08)
    {
        sub_8041140(FIELD_MOUNTAIN);
        gUnk_02021C10.unk0 = SPIRIT_OF_THE_MOUNTAIN;
        sub_801CEBC();
    }
}

void EffectDragonSeeker(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
    {
        SetCardInfo(gBoard[1][i]->id);
        if (!IsGodCard(gCardInfo.id) && gCardInfo.type == TYPE_DRAGON)
            sub_8045338(gBoard[1][i], 1);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = DRAGON_SEEKER;
        sub_801CEBC();
    }
}

void EffectFiendsHand(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gBoard[1]) != MAX_ZONES)
        sub_8045338(gBoard[1][HighestAtkMonInRowExceptGodCards(gBoard[1])], 1);

    sub_8045338(gBoard[gMonEffect.row][gMonEffect.zone], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = FIENDS_HAND;
        sub_801CEBC();
    }
}

void EffectIllusionistFacelessMage(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[1][i]->id != CARD_NONE)
            gBoard[1][i]->isLocked = TRUE;

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = ILLUSIONIST_FACELESS_MAGE;
        sub_801CEBC();
    }
}

void EffectElectricLizard(void)
{

    if (sub_8043548(gBoard[1]))
        gBoard[1][sub_804304C(gBoard[1])]->isLocked = TRUE;


    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = ELECTRIC_LIZARD;
        sub_801CEBC();
    }
}

void EffectWodanTheResidentOfTheForest(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
    {
        SetCardInfo(gBoard[2][i]->id);
        if (gCardInfo.type == TYPE_PLANT)
            sub_8040368(gBoard[2][gMonEffect.zone]);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = WODAN_THE_RESIDENT_OF_THE_FOREST;
        sub_801CEBC();
    }
}

void EffectMWarrior1(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id == M_WARRIOR_2)
            sub_8040368(gBoard[2][i]);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = M_WARRIOR_1;
        gUnk_02021C10.unk2 = M_WARRIOR_2;
        sub_801CEBC();
    }
}

void EffectMWarrior2(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id == M_WARRIOR_1)
            sub_8040368(gBoard[2][i]);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = M_WARRIOR_2;
        gUnk_02021C10.unk2 = M_WARRIOR_1;
        sub_801CEBC();
    }
}

void EffectRedArcheryGirl(void)
{
    if (sub_8043548(gBoard[1]))
    {
        u8 zone = sub_804304C(gBoard[1]);
        gBoard[1][zone]->isLocked = TRUE;
        sub_804037C(gBoard[1][zone]);
    }


    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = RED_ARCHERY_GIRL;
        sub_801CEBC();
    }
}

void EffectLadyOfFaith(void)
{
    if (GetCurrTurn() == PLAYER)
        sub_803F978(500);
    else
        sub_803F9C0(500);

    sub_803F29C();

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = LADY_OF_FAITH;
        sub_801CEBC();
    }
}

void EffectFireReaper(void)
{
    if (GetCurrTurn() == PLAYER)
        sub_803F9E4(50);
    else
        sub_803F99C(50);

    sub_803F29C();
    sub_803F4C0();

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = FIRE_REAPER;
        sub_801CEBC();
    }
}

void EffectKairyuShin(void)
{
    gDuel.field = FIELD_UMI;

    if (!gUnk_02021C08)
    {
        sub_8041140(FIELD_UMI);
        gUnk_02021C10.unk0 = KAIRYU_SHIN;
        sub_801CEBC();
    }
}

void EffectMonsterEye(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (gHands[1][i]->id != CARD_NONE)
            gHands[1][i]->position = FACE_UP;

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = MONSTER_EYE;
        sub_801CEBC();
    }
}

void EffectSwampBattleGuard(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id == LAVA_BATTLEGUARD)
            sub_8040368(gBoard[2][i]);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = SWAMP_BATTLEGUARD;
        gUnk_02021C10.unk2 = LAVA_BATTLEGUARD;
        sub_801CEBC();
    }
}

void EffectLavaBattleGuard(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id == SWAMP_BATTLEGUARD)
            sub_8040368(gBoard[2][i]);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = LAVA_BATTLEGUARD;
        gUnk_02021C10.unk2 = SWAMP_BATTLEGUARD;
        sub_801CEBC();
    }
}

void EffectTrent(void)
{
    gDuel.field = FIELD_FOREST;

    if (!gUnk_02021C08)
    {
        sub_8041140(FIELD_FOREST);
        gUnk_02021C10.unk0 = TRENT;
        sub_801CEBC();
    }
}

void EffectHourglassOfLife(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id != CARD_NONE)
            sub_8040368(gBoard[2][i]);

    if (GetCurrTurn() == PLAYER)
        sub_803F99C(1000);
    else
        sub_803F9E4(1000);

    sub_803F29C();
    sub_803F4C0();

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = HOURGLASS_OF_LIFE;
        sub_801CEBC();
    }
}

void EffectInvitationToADarkSleep(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[1][i]->id != CARD_NONE)
            gBoard[1][i]->isLocked = TRUE;

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = INVITATION_TO_A_DARK_SLEEP;
        sub_801CEBC();
    }
}

void EffectTheWingedDragonOfRaBattleMode(void)
{
    if (GetCurrTurn() == PLAYER)
    {
        sub_803F9E4(gLifePoints[0] - 1);
        sub_803F29C();
        gLifePoints[0] = 1;
    }
    else
    {
        sub_803F99C(gLifePoints[1] - 1);
        sub_803F29C();
        gLifePoints[1] = 1;
    }
    sub_803F4C0();

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void sub_80486EC(void){}
void sub_80486F0(void){}
void sub_80486F4(void){}
void sub_80486F8(void){}

void sub_80486FC(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (gBoard[2][i]->id == HARPIES_PET_DRAGON)
            sub_8040368(gBoard[2][i]);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        gUnk_02021C10.unk2 = HARPIES_PET_DRAGON;
        sub_801CEBC();
    }
}

void sub_8048754(void) //Zombyra the dark?
{
    if (NumEmptyZonesAndGodCardsInRow(gBoard[1]) != MAX_ZONES)
    {
        u8 zone = HighestAtkMonInRowExceptGodCards(gBoard[1]);
        sub_8045338(gBoard[1][zone], 1);
        sub_804037C(gBoard[gMonEffect.row][gMonEffect.zone]);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void sub_80487BC(void){}

void sub_80487C0(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
        if (!IsGodCard(gBoard[1][i]->id))
            sub_8045338(gBoard[1][i], 1);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void sub_8048814(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gBoard[1]) != MAX_ZONES)
    {
        u8 zone = HighestAtkMonInRowExceptGodCards(gBoard[1]);
        ClearZone(gBoard[1][zone]);
        sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void EffectJinzo(void)
{
    if (NumEmptyZonesInRow(gBoard[0]) != MAX_ZONES)
    {
        u8 i;

        for (i = 0; i < MAX_ZONES; i++)
        {
            SetCardInfo(gBoard[0][i]->id);
            if (gCardInfo.trapEffect)
                sub_8045338(gBoard[0][i], 1);
        }
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = JINZO;
        sub_801CEBC();
    }
}

void EffectBarrelDragon(void)
{
    u8 i;

    for (i = 0; i < 3; i++)
    {
        if (NumEmptyZonesAndGodCardsInRow(gBoard[1]) == MAX_ZONES)
            break;
        if (sub_8056258(0, 1) == 1)
            sub_8045338(gBoard[1][HighestAtkMonInRowExceptGodCards(gBoard[1])], 1);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = BARREL_DRAGON;
        sub_801CEBC();
    }
}

void EffectSkullMarkLadyBug(void)
{
    if (GetCurrTurn() == PLAYER)
        sub_803F978(500);
    else
        sub_803F9C0(500);

    sub_803F29C();

    sub_8045338(gBoard[gMonEffect.row][gMonEffect.zone], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = SKULL_MARK_LADY_BUG;
        sub_801CEBC();
    }
}

void sub_80489A4(void)
{
    if (NumEmptyZonesInRow(gBoard[1]) < MAX_ZONES)
        sub_804037C(gBoard[1][HighestAtkMonInRow(gBoard[1])]);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void sub_80489F0(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES; i++)
    {
        SetCardInfo(gBoard[2][i]->id);
        if (gCardInfo.type == TYPE_DRAGON)
            sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);
    }

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void sub_8048A5C(void)
{
    sub_8040368(gBoard[gMonEffect.row][gMonEffect.zone]);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void sub_8048AA0(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gBoard[1]) < MAX_ZONES)
        sub_8045338(gBoard[1][HighestAtkMonInRowExceptGodCards(gBoard[1])], 1);

    if (GetCurrTurn() == PLAYER)
        sub_803F9E4(500);
    else
        sub_803F99C(500);

    sub_803F29C();
    sub_803F4C0();

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void sub_8048B10(void){}

void EffectByserShock(void)
{
    sub_8047304(gBoard[1][0], gHands[1][0]);
    sub_8047304(gBoard[0][0], gHands[1][0]);
    sub_8047304(gBoard[2][0], gHands[0][0]);
    sub_8047304(gBoard[3][0], gHands[0][0]);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = BYSER_SHOCK;
        sub_801CEBC();
    }
}

void EffectTheWingedDragonOfRaPhoenixMode(void)
{
    u8 i;

    if (GetCurrTurn() == PLAYER)
        sub_803F99C(1000);
    else
        sub_803F9E4(1000);

    sub_803F29C();
    sub_803F4C0();

    for (i = 0; i < MAX_ZONES; i++)
        sub_8045338(gBoard[1][i], 1);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = THE_WINGED_DRAGON_OF_RA_PHOENIX_MODE;
        sub_801CEBC();
    }
}

void sub_8048BCC(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gBoard[1]) < MAX_ZONES)
        sub_8045338(gBoard[1][HighestAtkMonInRowExceptGodCards(gBoard[1])], 1);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gMonEffect.id;
        sub_801CEBC();
    }
}

void sub_8048C18(void){}
void sub_8048C1C(void){}
void sub_8048C20(void){}
void sub_8048C24(void){}
void sub_8048C28(void){}
void sub_8048C2C(void){}
void sub_8048C30(void){}
void sub_8048C34(void){}
void sub_8048C38(void){}
void sub_8048C3C(void){}
void sub_8048C40(void){}
void sub_8048C44(void){}
void sub_8048C48(void){}
void sub_8048C4C(void){}
void sub_8048C50(void){}
void sub_8048C54(void){}
void sub_8048C58(void){}
void sub_8048C5C(void){}



/*
#define FLAG_EXODIA_RIGHT_LEG (1 << 0)
#define FLAG_EXODIA_LEFT_LEG  (1 << 1)
#define FLAG_EXODIA_RIGHT_ARM (1 << 2)
#define FLAG_EXODIA_LEFT_ARM  (1 << 3)
#define FLAG_EXODIA_HEAD      (1 << 4)
#define FLAG_EXODIA_ALL \
(FLAG_EXODIA_RIGHT_LEG | FLAG_EXODIA_LEFT_LEG | FLAG_EXODIA_RIGHT_ARM | FLAG_EXODIA_LEFT_ARM | FLAG_EXODIA_HEAD)



void sub_801D1A8(void);
u8 sub_80205EC(void);
u8 sub_802061C(u16 id);
void sub_8020664(void);
void sub_8025520(u8);
void sub_801D188(u8);


void sub_80205D4(void)
{
    if ((sub_80205EC() & FLAG_EXODIA_ALL) == FLAG_EXODIA_ALL)
        sub_8020664();
}

u8 sub_80205EC(void)  //ExodiaFlags
{
    u8 i;
    u8 r5 = 0;

    for (i = 0; i < MAX_ZONES; i++)
        r5 |= sub_802061C(gBoard[4][i]->id);

    return r5;
}

u8 sub_802061C(u16 id) //ExodiaFlag
{
    u8 flag = 0;

    switch (id)
    {
    case RIGHT_LEG_OF_THE_FORBIDDEN_ONE:
        flag = FLAG_EXODIA_RIGHT_LEG;
        break;
    case LEFT_LEG_OF_THE_FORBIDDEN_ONE:
        flag = FLAG_EXODIA_LEFT_LEG;
        break;
    case RIGHT_ARM_OF_THE_FORBIDDEN_ONE:
        flag = FLAG_EXODIA_RIGHT_ARM;
        break;
    case LEFT_ARM_OF_THE_FORBIDDEN_ONE:
        flag = FLAG_EXODIA_LEFT_ARM;
        break;
    case EXODIA_THE_FORBIDDEN_ONE:
        flag = FLAG_EXODIA_HEAD;
    }

    return flag;
}


void sub_8020664(void)
{
    u8 unk[0xC];
    u8 loser;

    if (GetCurrTurn() == PLAYER)
        loser = OPPONENT;
    else
        loser = PLAYER;

    sub_8025520(loser);
    sub_801D1A8();
    gUnk_02021C10.unk8 = 0x11;
    sub_801D188(5);
    sub_801CEBC();
}

u16 sub_8020698(u8* name) //card name
{
    u16 i = 0;

    if (name[0] != '$')
    {
        u8 r4 = 1;
        while (r4 != 0)
        {
            switch (name[i])
            {
            case '0':
                if (gLanguage == ENGLISH)
                    return ++i;
                else if (name[i] != '$')
                {
                    if (name[i])
                }
            }
        }
    }
}

/*
void sub_803FEA4(void)
{
    u8 i;

    for (i = 0; i < 5; i++)
        gUnk2024040[0][i] = &gDuel.opBackRow[4-i];

    for (i = 0; i < 5; i++)
        gUnk2024040[1][i] = &gDuel.opMonRow[4-i];

    for (i = 0; i < 5; i++)
        gUnk2024040[2][i] = &gDuel.plMonRow[i];

    for (i = 0; i < 5; i++)
        gUnk2024040[3][i] = &gDuel.plBackRow[i];

    for (i = 0; i < 5; i++)
        gUnk2024040[4][i] = &gDuel.hands[0][i];

    for (i = 0; i < 5; i++)
        boardPtrs[0][i] = &gDuel.opBackRow[i];

    for (i = 0; i < 5; i++)
        boardPtrs[1][i] = &gDuel.opMonRow[i];

    for (i = 0; i < 5; i++)
        boardPtrs[2][i] = &gDuel.plMonRow[i];

    for (i = 0; i < 5; i++)
        boardPtrs[3][i] = &gDuel.plBackRow[i];

    for (i = 0; i < 5; i++)
        boardPtrs[4][i] = &gDuel.hands[0][i];

    gNotSure[0] = &gDuel.player;
    gNotSure[1] = &gDuel.opponent;

    for (i = 0; i < 5; i++)
        handCurrPlayer[i] = &gDuel.hands[0][i];

    for (i = 0; i < 5; i++)
        handCurrEnemy[i] = &gDuel.hands[1][i];
}

void sub_800E11C(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(boardPtrs[row3][col3], boardPtrs[row2][col2]);
    ClearZone(boardPtrs[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}*/