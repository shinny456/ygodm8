#include "global.h"
#include "duel.h"
#include "card.h"
#include "player.h"
#include "constants/card_ids.h"

void sub_080582D8(void);
void EffectGoblinFan(u16);
void EffectBadReactionToSimochi(u16);
void EffectReverseTrap(void);
void sub_08058430(void);
void EffectTorrentialTribute(void);
void sub_0805849C(void);
void sub_080584A0(void);
void sub_080584A4(void);
void sub_080584A8(void);
void sub_080584AC(void);

void EffectWideSpreadRuin(void)
{
    sub_8045338(gZones[0][gUnk020245A0.unk4], 1);
    if (!IsGodCard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id))
    {
        sub_8045338(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = WIDESPREAD_RUIN;
            gUnk_02021C10.unk2 = gUnk020245A0.id;
            sub_801CEBC();
        }
    }
    else
    {
        gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->isFaceUp = TRUE;
        if (!gUnk_02021C08)
        {
            sub_801D188(4);
            gUnk_02021C10.unk0 = WIDESPREAD_RUIN;
            gUnk_02021C10.unk2 = gUnk020245A0.id;
            sub_801CEBC();
        }
    }
}

void EffectHouseOfAdhesiveTape(void)
{
    sub_8045338(gZones[0][gUnk020245A0.unk4], 1);
    if (!IsGodCard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id))
    {
        sub_8045338(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = HOUSE_OF_ADHESIVE_TAPE;
            gUnk_02021C10.unk2 = gUnk020245A0.id;
            sub_801CEBC();
        }
    }
    else
    {
        gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->isFaceUp = TRUE;
        if (!gUnk_02021C08)
        {
            sub_801D188(4);
            gUnk_02021C10.unk0 = HOUSE_OF_ADHESIVE_TAPE;
            gUnk_02021C10.unk2 = gUnk020245A0.id;
            sub_801CEBC();
        }
    }
}

void EffectEatgaboon(void)
{
    sub_8045338(gZones[0][gUnk020245A0.unk4], 1);
    if (!IsGodCard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id))
    {
        sub_8045338(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = EATGABOON;
            gUnk_02021C10.unk2 = gUnk020245A0.id;
            sub_801CEBC();
        }
    }
    else
    {
        gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->isFaceUp = TRUE;
        if (!gUnk_02021C08)
        {
            sub_801D188(4);
            gUnk_02021C10.unk0 = EATGABOON;
            gUnk_02021C10.unk2 = gUnk020245A0.id;
            sub_801CEBC();
        }
    }
}

void EffectBearTrap(void)
{
    sub_8045338(gZones[0][gUnk020245A0.unk4], 1);
    if (!IsGodCard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id))
    {
        sub_8045338(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = BEAR_TRAP;
            gUnk_02021C10.unk2 = gUnk020245A0.id;
            sub_801CEBC();
        }
    }
    else
    {
        gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->isFaceUp = TRUE;
        if (!gUnk_02021C08)
        {
            sub_801D188(4);
            gUnk_02021C10.unk0 = BEAR_TRAP;
            gUnk_02021C10.unk2 = gUnk020245A0.id;
            sub_801CEBC();
        }
    }
}

void EffectInvisibleWire(void)
{
    sub_8045338(gZones[0][gUnk020245A0.unk4], 1);
    if (!IsGodCard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id))
    {
        sub_8045338(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = INVISIBLE_WIRE;
            gUnk_02021C10.unk2 = gUnk020245A0.id;
            sub_801CEBC();
        }
    }
    else
    {
        gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->isFaceUp = TRUE;
        if (!gUnk_02021C08)
        {
            sub_801D188(4);
            gUnk_02021C10.unk0 = INVISIBLE_WIRE;
            gUnk_02021C10.unk2 = gUnk020245A0.id;
            sub_801CEBC();
        }
    }
}

void EffectAcidTrapHole(void)
{
    sub_8045338(gZones[0][gUnk020245A0.unk4], 1);
    if (!IsGodCard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id))
    {
        sub_8045338(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = ACID_TRAP_HOLE;
            gUnk_02021C10.unk2 = gUnk020245A0.id;
            sub_801CEBC();
        }
    }
    else
    {
        gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->isFaceUp = TRUE;
        if (!gUnk_02021C08)
        {
            sub_801D188(4);
            gUnk_02021C10.unk0 = ACID_TRAP_HOLE;
            gUnk_02021C10.unk2 = gUnk020245A0.id;
            sub_801CEBC();
        }
    }
}

void EffectAntiRaigeki(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (!IsGodCard(gZones[2][i]->id))
            sub_8045338(gZones[2][i], 0);

    sub_8045338(gZones[0][gUnk020245A0.unk4], 1);
    sub_8045338(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = ANTI_RAIGEKI;
        sub_801CEBC();
    }
}

void EffectInfiniteDismissal(void)
{
    gZones[2][gUnk020245A0.unk3]->isFaceUp = TRUE;
    gZones[2][gUnk020245A0.unk3]->isLocked = TRUE;

    sub_8045338(gZones[0][gUnk020245A0.unk4], 1);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = INFINITE_DISMISSAL;
        gUnk_02021C10.unk2 = gUnk020245A0.id;
        sub_801CEBC();
    }
}

void EffectAmazonArchers(void)
{
    sub_804037C(gZones[2][gUnk020245A0.unk3]);
    gZones[2][gUnk020245A0.unk3]->isFaceUp = TRUE;
    gZones[2][gUnk020245A0.unk3]->isLocked = TRUE;

    sub_8045338(gZones[0][gUnk020245A0.unk4], 1);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = AMAZON_ARCHERS;
        gUnk_02021C10.unk2 = gUnk020245A0.id;
        sub_801CEBC();
    }
}

void sub_80581DC(u16 arg0)
{
    sub_801D1A8();
    sub_801D188(3);

    switch (gUnk020245A0.unk5)
    {
    case 0:
        sub_080582D8();
        break;
    case 1:
        EffectWideSpreadRuin();
        break;
    case 2:
        EffectHouseOfAdhesiveTape();
        break;
    case 3:
        EffectEatgaboon();
        break;
    case 4:
        EffectBearTrap();
        break;
    case 5:
        EffectInvisibleWire();
        break;
    case 6:
        EffectAcidTrapHole();
        break;
    case 7:
        EffectGoblinFan(arg0);
        break;
    case 8:
        EffectBadReactionToSimochi(arg0);
        break;
    case 9:
        EffectReverseTrap();
        break;
    case 10:
        sub_08058430();
        break;
    case 11:
        EffectAntiRaigeki();
        break;
    case 12:
        EffectInfiniteDismissal();
        break;
    case 13:
        EffectTorrentialTribute();
        break;
    case 14:
        EffectAmazonArchers();
        break;
    case 15:
        sub_0805849C();
        break;
    case 16:
        sub_080584A0();
        break;
    case 17:
        sub_080584A4();
        break;
    case 18:
        sub_080584A8();
        break;
    case 19:
        sub_080584AC();
        break;
    }
}

void sub_080582D8(void){}

void EffectGoblinFan(u16 lp)
{
    if (WhoseTurn() == PLAYER)
        sub_803F99C(lp);
    else
        sub_803F9E4(lp);

    sub_803F29C();
    sub_803F4C0();

    sub_8045338(gZones[0][gUnk020245A0.unk4], 1);
    sub_8045338(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = GOBLIN_FAN;
        gUnk_02021C10.unk2 = gUnk020245A0.id;
        sub_801CEBC();
    }
}

void EffectBadReactionToSimochi(u16 lp)
{
    if (WhoseTurn() == PLAYER)
        sub_803F99C(lp);
    else
        sub_803F9E4(lp);

    sub_803F29C();
    sub_803F4C0();

    sub_8045338(gZones[0][gUnk020245A0.unk4], 1);
    sub_8045338(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = BAD_REACTION_TO_SIMOCHI;
        gUnk_02021C10.unk2 = gUnk020245A0.id;
        sub_801CEBC();
    }
}

void EffectReverseTrap(void)
{
    sub_8045338(gZones[0][gUnk020245A0.unk4], 1);
    sub_8045338(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = REVERSE_TRAP;
        gUnk_02021C10.unk2 = gUnk020245A0.id;
        sub_801CEBC();
    }
}

void sub_08058430(void){}

void EffectTorrentialTribute(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (!IsGodCard(gZones[2][i]->id))
            sub_8045338(gZones[2][i], 0);

    sub_8045338(gZones[0][gUnk020245A0.unk4], 1);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = TORRENTIAL_TRIBUTE;
        sub_801CEBC();
    }
}

void sub_0805849C(void){}
void sub_080584A0(void){}
void sub_080584A4(void){}
void sub_080584A8(void){}
void sub_080584AC(void){}
void sub_080584B0(void){}
