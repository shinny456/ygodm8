#include "global.h"
#include "duel.h"
#include "card.h"
#include "constants/card_ids.h"

void sub_80581DC();

void EffectMooyanCurry(void)
{
    gUnk020245A0.unk2 = gUnk2024260.unk2;
    gUnk020245A0.unk3 = gUnk2024260.unk3;
    gUnk020245A0.id = gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id;

    if (sub_80586DC() != 1 || gUnk_02021C08)
    {
        if (WhoseTurn() == PLAYER)
            sub_803F978(200);
        else
            sub_803F9C0(200);

        sub_803F29C();
        sub_803F4C0();

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = MOOYAN_CURRY;
            sub_801CEBC();
        }
    }
    else
        sub_80581DC(200);
}

void EffectRedMedicine(void)
{
    gUnk020245A0.unk2 = gUnk2024260.unk2;
    gUnk020245A0.unk3 = gUnk2024260.unk3;
    gUnk020245A0.id = gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id;

    if (sub_80586DC() != 1 || gUnk_02021C08)
    {
        if (WhoseTurn() == PLAYER)
            sub_803F978(500);
        else
            sub_803F9C0(500);

        sub_803F29C();
        sub_803F4C0();

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = RED_MEDICINE;
            sub_801CEBC();
        }
    }
    else
        sub_80581DC(500);
}

void EffectGoblinsSecretRemedy(void)
{
    gUnk020245A0.unk2 = gUnk2024260.unk2;
    gUnk020245A0.unk3 = gUnk2024260.unk3;
    gUnk020245A0.id = gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id;

    if (sub_80586DC() != 1 || gUnk_02021C08)
    {
        if (WhoseTurn() == PLAYER)
            sub_803F978(1000);
        else
            sub_803F9C0(1000);

        sub_803F29C();
        sub_803F4C0();

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = GOBLINS_SECRET_REMEDY;
            sub_801CEBC();
        }
    }
    else
        sub_80581DC(1000);
}

void EffectSoulOfThePure(void)
{
    gUnk020245A0.unk2 = gUnk2024260.unk2;
    gUnk020245A0.unk3 = gUnk2024260.unk3;
    gUnk020245A0.id = gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id;

    if (sub_80586DC() != 1 || gUnk_02021C08)
    {
        if (WhoseTurn() == PLAYER)
            sub_803F978(2000);
        else
            sub_803F9C0(2000);

        sub_803F29C();
        sub_803F4C0();

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = SOUL_OF_THE_PURE;
            sub_801CEBC();
        }
    }
    else
        sub_80581DC(2000);
}

void EffectDianKetoTheCureMaster(void)
{
    gUnk020245A0.unk2 = gUnk2024260.unk2;
    gUnk020245A0.unk3 = gUnk2024260.unk3;
    gUnk020245A0.id = gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id;

    if (sub_80586DC() != 1 || gUnk_02021C08)
    {
        if (WhoseTurn() == PLAYER)
            sub_803F978(5000);
        else
            sub_803F9C0(5000);

        sub_803F29C();
        sub_803F4C0();

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = DIAN_KETO_THE_CURE_MASTER;
            sub_801CEBC();
        }
    }
    else
        sub_80581DC(5000);
}

void EffectSparks(void)
{
    gUnk020245A0.unk2 = gUnk2024260.unk2;
    gUnk020245A0.unk3 = gUnk2024260.unk3;
    gUnk020245A0.id = gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id;

    if (sub_80586DC() != 1 || gUnk_02021C08)
    {
        if (WhoseTurn() == PLAYER)
            SubtractOpponentLifePoints(50);
        else
            SubtractPlayerLifePoints(50);

        sub_803F29C();
        sub_803F4C0();

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = SPARKS;
            sub_801CEBC();
        }
    }
    else
        sub_80581DC(50);
}

void EffectHinotama(void)
{
    gUnk020245A0.unk2 = gUnk2024260.unk2;
    gUnk020245A0.unk3 = gUnk2024260.unk3;
    gUnk020245A0.id = gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id;

    if (sub_80586DC() != 1 || gUnk_02021C08)
    {
        if (WhoseTurn() == PLAYER)
            SubtractOpponentLifePoints(100);
        else
            SubtractPlayerLifePoints(100);

        sub_803F29C();
        sub_803F4C0();

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = HINOTAMA;
            sub_801CEBC();
        }
    }
    else
        sub_80581DC(100);
}

void EffectFinalFlame(void)
{
    gUnk020245A0.unk2 = gUnk2024260.unk2;
    gUnk020245A0.unk3 = gUnk2024260.unk3;
    gUnk020245A0.id = gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id;

    if (sub_80586DC() != 1 || gUnk_02021C08)
    {
        if (WhoseTurn() == PLAYER)
            SubtractOpponentLifePoints(200);
        else
            SubtractPlayerLifePoints(200);

        sub_803F29C();
        sub_803F4C0();

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = FINAL_FLAME;
            sub_801CEBC();
        }
    }
    else
        sub_80581DC(200);
}

void EffectOokazi(void)
{
    gUnk020245A0.unk2 = gUnk2024260.unk2;
    gUnk020245A0.unk3 = gUnk2024260.unk3;
    gUnk020245A0.id = gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id;

    if (sub_80586DC() != 1 || gUnk_02021C08)
    {
        if (WhoseTurn() == PLAYER)
            SubtractOpponentLifePoints(500);
        else
            SubtractPlayerLifePoints(500);

        sub_803F29C();
        sub_803F4C0();

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = OOKAZI;
            sub_801CEBC();
        }
    }
    else
        sub_80581DC(500);
}

void EffectTremendousFire(void)
{
    gUnk020245A0.unk2 = gUnk2024260.unk2;
    gUnk020245A0.unk3 = gUnk2024260.unk3;
    gUnk020245A0.id = gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id;

    if (sub_80586DC() != 1 || gUnk_02021C08)
    {
        if (WhoseTurn() == PLAYER)
            SubtractOpponentLifePoints(1000);
        else
            SubtractPlayerLifePoints(1000);

        sub_803F29C();
        sub_803F4C0();

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = TREMENDOUS_FIRE;
            sub_801CEBC();
        }
    }
    else
        sub_80581DC(1000);
}

void EffectDarkHole(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (!IsGodCard(gZones[1][i]->id))
            ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (!IsGodCard(gZones[2][i]->id))
            ClearZoneAndSendMonToGraveyard(gZones[2][i], 0);

     ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = DARK_HOLE;
        sub_801CEBC();
    }
}

void EffectRaigeki(void)
{
    gUnk020245A0.unk2 = gUnk2024260.unk2;
    gUnk020245A0.unk3 = gUnk2024260.unk3;
    gUnk020245A0.id = gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id;

    if (sub_80586DC() != 1 || gUnk_02021C08)
    {
        u8 i;

        for (i = 0; i < MAX_ZONES_IN_ROW; i++)
            if (!IsGodCard(gZones[1][i]->id))
                ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = RAIGEKI;
            sub_801CEBC();
        }
    }
    else
        sub_80581DC();
}

void EffectLegendarySword(void)
{
    if (sub_80555A4(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = LEGENDARY_SWORD;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectSwordOfDarkDestruction(void)
{
    if (sub_80555D4(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = SWORD_OF_DARK_DESTRUCTION;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectDarkEnergy(void)
{
    if (sub_8055604(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = DARK_ENERGY;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectAxeOfDespair(void)
{
    if (sub_8055634(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = AXE_OF_DESPAIR;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectLaserCannonArmor(void)
{
    if (sub_8055664(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = LASER_CANNON_ARMOR;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectInsectArmorWithLaserCannon(void)
{
    if (sub_8055694(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = INSECT_ARMOR_WITH_LASER_CANNON;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectElfsLight(void)
{
    if (sub_80556C4(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = ELFS_LIGHT;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectBeastFangs(void)
{
    if (sub_80556F4(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = BEAST_FANGS;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectSteelShell(void)
{
    if (sub_8055724(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = STEEL_SHELL;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectVileGerms(void)
{
    if (sub_8055754(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = VILE_GERMS;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectBlackPendant(void)
{
    if (sub_8055784(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = BLACK_PENDANT;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectSilverBowAndArrow(void)
{
    if (sub_80557B4(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = SILVER_BOW_AND_ARROW;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectHornOfLight(void)
{
    if (sub_80557E4(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = HORN_OF_LIGHT;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectHornOfTheUnicorn(void)
{
    if (sub_8055814(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = HORN_OF_THE_UNICORN;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectDragonTreasure(void)
{
    if (sub_8055844(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = DRAGON_TREASURE;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectElectroWhip(void)
{
    if (sub_8055874(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = ELECTRO_WHIP;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectCyberShield(void)
{
    if (sub_80558A4(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = CYBER_SHIELD;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectMysticalMoon(void)
{
    if (sub_80558D4(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = MYSTICAL_MOON;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectMalevolentNuzzler(void)
{
    if (sub_8055904(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = MALEVOLENT_NUZZLER;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectVioletCrystal(void)
{
    if (sub_8055934(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = VIOLET_CRYSTAL;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectBookOfSecretArts(void)
{
    if (sub_8055964(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = BOOK_OF_SECRET_ARTS;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectInvigoration(void)
{
    if (sub_8055994(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = INVIGORATION;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectMachineConversionFactory(void)
{
    if (sub_80559C4(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = MACHINE_CONVERSION_FACTORY;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectRaiseBodyHeat(void)
{
    if (sub_80559F4(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = RAISE_BODY_HEAT;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectFollowWind(void)
{
    if (sub_8055A24(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = FOLLOW_WIND;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectPowerOfKaishin(void)
{
    if (sub_8055A54(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = POWER_OF_KAISHIN;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectStopDefense(void)
{
    u8 i;

    gNotSure[1]->unkTwo = 1; //canDefend = FALSE;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        if (gZones[1][i]->id != CARD_NONE)
        {
            gZones[1][i]->isDefending = FALSE;
            gZones[1][i]->isFaceUp = TRUE;
        }
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = STOP_DEFENSE;
        sub_801CEBC();
    }
}

void EffectSwordsOfRevealingLight(void)
{
    u8 i;

    sub_8040744(1);

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gZones[1][i]->id != CARD_NONE)
            gZones[1][i]->isFaceUp = TRUE;

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = SWORDS_OF_REVEALING_LIGHT;
        sub_801CEBC();
    }
}

void EffectDarkPiercingLight(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gZones[1][i]->id != CARD_NONE)
            gZones[1][i]->isFaceUp = TRUE;

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = DARK_PIERCING_LIGHT;
        sub_801CEBC();
    }
}

void EffectSpellBindingCircle(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gZones[1][i]->id != CARD_NONE)
            sub_804037C(gZones[1][i]);

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = SPELLBINDING_CIRCLE;
        sub_801CEBC();
    }
}

void EffectElegantEgotist(void)
{
    if (gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id == HARPIE_LADY)
    {

        gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id = HARPIE_LADY_SISTERS;
        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = ELEGANT_EGOTIST;
            gUnk_02021C10.unk2 = HARPIE_LADY;
            sub_801CEBC();
        }
    }

    if (gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id == CYBER_HARPIE)
    {
        gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id = HARPIE_LADY_SISTERS;
        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = ELEGANT_EGOTIST;
            gUnk_02021C10.unk2 = CYBER_HARPIE;
            sub_801CEBC();
        }
    }
}

void EffectBlackLusterRitual(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[1][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[1][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[1][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = BLACK_LUSTER_RITUAL;
            gUnk_02021C10.unk2 = gUnk8E00FA8[1][1];
            sub_801CEBC();
        }
    }
}

//these ritual effects seem to be leftover from The Sacred Cards
//(the card IDs do not match ROD's)

void sub_804AED8(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[2][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[2][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[2][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x029F; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[2][1];
            sub_801CEBC();
        }
    }
}

void sub_804AF58(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[3][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[3][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[3][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02A1; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[3][1];
            sub_801CEBC();
        }
    }
}

void sub_804AFD8(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[4][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[4][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[4][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02A2; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[4][1];
            sub_801CEBC();
        }
    }
}

void sub_804B058(void)
{
    u8 zones[3];
    u8 ritualId;

    if (sub_804B144(zones, gUnk8E00FA8[29]) == TRUE)
        ritualId = 29;
    else if (sub_804B144(zones, gUnk8E00FA8[28]) == TRUE)
        ritualId = 28;
    else if (sub_804B144(zones, gUnk8E00FA8[27]) == TRUE)
        ritualId = 27;
    else if (sub_804B144(zones, gUnk8E00FA8[5]) == TRUE)
        ritualId = 5;
    else
        return;

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
    sub_804D600(gZones[2][zones[0]], gUnk8E00FA8[ritualId][1]);

    ClearZone(gZones[2][zones[1]]);
    ClearZone(gZones[2][zones[2]]);
    ResetNumTributes();

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = 0x02A3; //hardcoded id
        gUnk_02021C10.unk2 = gUnk8E00FA8[ritualId][1];
        sub_801CEBC();
    }
}

bool8 sub_804B144(u8* zones, u16* ritualArr)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gZones[2][i]->id == ritualArr[0])
            break;

    if (i == MAX_ZONES_IN_ROW)
        return FALSE;

    zones[0] = i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (i != zones[0] && gZones[2][i]->id == ritualArr[2])
            break;

    if (i == MAX_ZONES_IN_ROW)
        return FALSE;

    zones[1] = i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (i != zones[0] && i != zones[1] && gZones[2][i]->id == ritualArr[3])
            break;

    if (i == MAX_ZONES_IN_ROW)
        return FALSE;

    zones[2] = i;
    return TRUE;
}

void sub_804B20C(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[9][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[9][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[9][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02A4; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[9][1];
            sub_801CEBC();
        }
    }
}

void sub_804B294(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[10][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[10][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[10][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02A5; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[10][1];
            sub_801CEBC();
        }
    }
}

void sub_804B31C(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[11][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[11][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[11][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02A6; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[11][1];
            sub_801CEBC();
        }
    }
}

void sub_804B3A4(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[12][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[12][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[12][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02A7; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[12][1];
            sub_801CEBC();
        }
    }
}

void sub_804B42C(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[13][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[13][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[13][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02A8; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[13][1];
            sub_801CEBC();
        }
    }
}

void sub_804B4B4(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[14][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[14][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[14][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02B3; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[14][1];
            sub_801CEBC();
        }
    }
}

void EffectMagicalLabyrinth(void)
{
    if (sub_8055A84(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = MAGICAL_LABYRINTH;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectSalamandra(void)
{
    if (sub_8055AB4(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = SALAMANDRA;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectKunaiWithChain(void)
{
    if (sub_8055AE4(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = KUNAI_WITH_CHAIN;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectBrightCastle(void)
{
    if (sub_8055B14(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = BRIGHT_CASTLE;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectCrushCard(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        if (gZones[1][i]->id != CARD_NONE && IsGodCard(gZones[1][i]->id) != TRUE)
        {
            gStatMod.card = gZones[1][i]->id;
            gStatMod.field = gDuel.field;
            gStatMod.stage = sub_804069C(gZones[1][i]);
            SetFinalStat(&gStatMod);
            if (gCardInfo.atk >= 1500)
                ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
        }
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = CRUSH_CARD;
        sub_801CEBC();
    }
}

void EffectShadowSpell(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        if (gZones[1][i]->id != CARD_NONE)
        {
            sub_804037C(gZones[1][i]);
            sub_804037C(gZones[1][i]);
        }
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = SHADOW_SPELL;
        sub_801CEBC();
    }
}

void sub_804B9D0(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[15][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[15][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[15][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02B4; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[15][1];
            sub_801CEBC();
        }
    }
}

void sub_804BA58(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[16][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[16][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[16][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02B5; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[16][1];
            sub_801CEBC();
        }
    }
}

void sub_804BAE0(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[17][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[17][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[17][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02B6; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[17][1];
            sub_801CEBC();
        }
    }
}

void sub_804BB68(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[18][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[18][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[18][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02B7; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[18][1];
            sub_801CEBC();
        }
    }
}

void sub_804BBF0(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[19][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[19][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[19][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02B8; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[19][1];
            sub_801CEBC();
        }
    }
}

void sub_804BC78(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[20][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[20][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[20][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02B9; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[20][1];
            sub_801CEBC();
        }
    }
}

void sub_804BD00(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[21][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[21][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[21][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02BA; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[21][1];
            sub_801CEBC();
        }
    }
}

void sub_804BD88(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[22][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[22][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[22][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02BB; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[22][1];
            sub_801CEBC();
        }
    }
}

void sub_804BE10(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[23][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[23][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[23][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x02BC; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[23][1];
            sub_801CEBC();
        }
    }
}

void sub_804BE98(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[6][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[6][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[6][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x0299; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[6][1];
            sub_801CEBC();
        }
    }
}

void sub_804BF18(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[7][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[7][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[7][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x029A; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[7][1];
            sub_801CEBC();
        }
    }
}

void sub_804BF98(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[8][0]) == 1
     && sub_804366C(gZones[2], gUnk8E00FA8[8][2]) == 1
     && sub_804366C(gZones[2], gUnk8E00FA8[8][3]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[8][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[8][1]);

        zone = sub_8043694(gZones[2], gUnk8E00FA8[8][2]);
        ClearZone(gZones[2][zone]);

        zone = sub_8043694(gZones[2], gUnk8E00FA8[8][3]);
        ClearZone(gZones[2][zone]);

        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = 0x029B; //hardcoded id
            gUnk_02021C10.unk2 = gUnk8E00FA8[8][1];
            sub_801CEBC();
        }
    }
}

void EffectWarriorElimination(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        if (IsGodCard(gZones[1][i]->id) != TRUE)
        {
            SetCardInfo(gZones[1][i]->id);
            if (gCardInfo.type == TYPE_WARRIOR)
                ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
        }
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = WARRIOR_ELIMINATION;
        sub_801CEBC();
    }
}

void EffectCurseBreaker(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gZones[2][i]->id != CARD_NONE && PermStage(gZones[2][i]) < 0)
            ResetPermStage(gZones[2][i]);

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = CURSEBREAKER;
        sub_801CEBC();
    }
}

void EffectEternalRest(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        SetCardInfo(gZones[1][i]->id);
        if (gCardInfo.type == TYPE_ZOMBIE)
            ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = ETERNAL_REST;
        sub_801CEBC();
    }
}

void EffectMegamorph(void)
{
    if (sub_8055B44(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = MEGAMORPH;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectMetalmorph(void)
{
    if (gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id == ZOA)
    {
        gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id = METALZOA;
        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = METALMORPH;
            sub_801CEBC();
        }
    }

    if (gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id == RED_EYES_B_DRAGON)
    {
        gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id = RED_EYES_BLACK_METAL_DRAGON;
        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = METALMORPH;
            sub_801CEBC();
        }
    }
}

void EffectWingedTrumpeter(void)
{
    if (sub_8055B74(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = WINGED_TRUMPETER;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectStainStorm(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        if (IsGodCard(gZones[1][i]->id) != TRUE)
        {
            SetCardInfo(gZones[1][i]->id);
            if (gCardInfo.type == TYPE_MACHINE)
                ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
        }
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = STAIN_STORM;
        sub_801CEBC();
    }
}

void EffectEradicatingAerosol(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        SetCardInfo(gZones[1][i]->id);
        if (gCardInfo.type == TYPE_INSECT)
            ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = ERADICATING_AEROSOL;
        sub_801CEBC();
    }
}

void EffectBreathOfLight(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        SetCardInfo(gZones[1][i]->id);
        if (gCardInfo.type == TYPE_ROCK)
            ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = BREATH_OF_LIGHT;
        sub_801CEBC();
    }
}

void EffectEternalDrought(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        SetCardInfo(gZones[1][i]->id);
        if (gCardInfo.type == TYPE_FISH)
            ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = ETERNAL_DROUGHT;
        sub_801CEBC();
    }
}

void EffectTheInexperiencedSpy(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gHands[1][i]->id != CARD_NONE)
            gHands[1][i]->isFaceUp = TRUE;

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = THE_INEXPERIENCED_SPY;
        sub_801CEBC();
    }
}

void sub_804C6B4(void)
{
    u8 ritualId;
    u8 zone;

    if (sub_804366C(gZones[2], gUnk8E00FA8[26][0]) == 1)
        ritualId = 26;
    else if (sub_804366C(gZones[2], gUnk8E00FA8[24][0]) == 1)
        ritualId = 24;
    else
        return;

    zone = sub_8043694(gZones[2], gUnk8E00FA8[ritualId][0]);

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
    sub_804D600(gZones[2][zone], gUnk8E00FA8[ritualId][1]);
    ResetNumTributes();

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = 0x02D2; //hardcoded id
        gUnk_02021C10.unk2 = gUnk8E00FA8[ritualId][1];
        sub_801CEBC();
    }
}

void EffectLastDayOfWitch(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        SetCardInfo(gZones[1][i]->id);
        if (gCardInfo.type == TYPE_MAGICIAN)
            ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = LAST_DAY_OF_WITCH;
        sub_801CEBC();
    }
}

void EffectExileOfTheWicked(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        SetCardInfo(gZones[1][i]->id);
        if (gCardInfo.type == TYPE_FIEND)
            ClearZoneAndSendMonToGraveyard(gZones[1][i], 1);
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = EXILE_OF_THE_WICKED;
        sub_801CEBC();
    }
}

void EffectMultiply(void)
{
    if (NumCardInRow(gZones[2], KURIBOH))
    {
        u8 i;

        for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        {
            if (gZones[2][i]->id == CARD_NONE)
            {
                gZones[2][i]->id = KURIBOH;
                gZones[2][i]->isFaceUp = TRUE;
                gZones[2][i]->isLocked = TRUE;
                gZones[2][i]->isDefending = FALSE;
                gZones[2][i]->unkTwo = 0;
                gZones[2][i]->unk4 = 0;
                ResetPermStage(gZones[2][i]);
                ResetTempStage(gZones[2][i]);
                gZones[2][i]->willChangeSides = FALSE;
            }
            else if (gZones[2][i]->id == KURIBOH)
            {
                gZones[2][i]->isFaceUp = TRUE;
                gZones[2][i]->isLocked = TRUE;
                gZones[2][i]->isDefending = FALSE;
            }
        }
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = MULTIPLY;
        sub_801CEBC();
    }
}

void EffectChangeOfHeart(void)
{
    if (NumEmptyZonesInRow(gZones[2]) && NumEmptyZonesAndGodCardsInRow(gZones[1]) != MAX_ZONES_IN_ROW)
    {
        u8 emptyZone = EmptyZoneInRow(gZones[2]);
        u8 highestAtkZone = HighestAtkMonInRowExceptGodCards(gZones[1]);

        gZones[2][emptyZone]->id = gZones[1][highestAtkZone]->id;
        gZones[2][emptyZone]->isFaceUp = TRUE;
        gZones[2][emptyZone]->isLocked = FALSE;
        gZones[2][emptyZone]->isDefending = FALSE;
        gZones[2][emptyZone]->unkTwo = gZones[1][highestAtkZone]->unkTwo;
        gZones[2][emptyZone]->unk4 = 2;

        SetPermStage(gZones[2][emptyZone], PermStage(gZones[1][highestAtkZone]));
        gZones[2][emptyZone]->willChangeSides = FALSE;
        ClearZone(gZones[1][highestAtkZone]);
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = CHANGE_OF_HEART;
        sub_801CEBC();
    }
}

void EffectBlackIllusionRitual(void)
{
    if (sub_804366C(gZones[2], gUnk8E00FA8[25][0]) == 1)
    {
        u8 zone = sub_8043694(gZones[2], gUnk8E00FA8[25][0]);

        ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);
        sub_804D600(gZones[2][zone], gUnk8E00FA8[25][1]);
        ResetNumTributes();

        if (!gUnk_02021C08)
        {
            gUnk_02021C10.unk0 = BLACK_ILLUSION_RITUAL;
            gUnk_02021C10.unk2 = gUnk8E00FA8[25][1];
            sub_801CEBC();
        }
    }
}

void EffectBrainControl(void)
{
    if (NumEmptyZonesInRow(gZones[2]) && NumEmptyZonesAndGodCardsInRow(gZones[1]) != MAX_ZONES_IN_ROW)
    {
        u8 emptyZone = EmptyZoneInRow(gZones[2]);
        u8 highestAtkZone = HighestAtkMonInRowExceptGodCards(gZones[1]);

        gZones[2][emptyZone]->id = gZones[1][highestAtkZone]->id;
        gZones[2][emptyZone]->isFaceUp = TRUE;
        gZones[2][emptyZone]->isLocked = FALSE;
        gZones[2][emptyZone]->isDefending = FALSE;
        gZones[2][emptyZone]->unkTwo = gZones[1][highestAtkZone]->unkTwo;
        gZones[2][emptyZone]->unk4 = 2;

        SetPermStage(gZones[2][emptyZone], PermStage(gZones[1][highestAtkZone]));
        gZones[2][emptyZone]->willChangeSides = TRUE;
        ClearZone(gZones[1][highestAtkZone]);
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = BRAIN_CONTROL;
        sub_801CEBC();
    }
}

void sub_804CBBC(void)
{
    if (NumEmptyZonesInRow(gZones[2]))
    {
        u8 emptyZone = EmptyZoneInRow(gZones[2]);
        u16 id = sub_804535C(1);

        if (id != CARD_NONE)
        {
            gZones[2][emptyZone]->id = id;
            gZones[2][emptyZone]->isFaceUp = TRUE;
            gZones[2][emptyZone]->isLocked = FALSE;
            gZones[2][emptyZone]->isDefending = FALSE;
            gZones[2][emptyZone]->unkTwo = 0;
            gZones[2][emptyZone]->unk4 = 2;
            ResetPermStage(gZones[2][emptyZone]);
            ResetTempStage(gZones[2][emptyZone]);
            gZones[2][emptyZone]->willChangeSides = FALSE;

        }
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gUnk2024260.id;
        sub_801CEBC();
    }
}

void sub_804CC7C(void)
{
    if (sub_8055BA4(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = gUnk2024260.id;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void EffectHeavyStorm(void)
{
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

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gUnk2024260.id;
        sub_801CEBC();
    }
}

void EffectFinalDestiny(void)
{
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

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gUnk2024260.id;
        sub_801CEBC();
    }
}

void EffectMessengerOfPeaceTSC(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        if (gZones[1][i]->id != CARD_NONE)
        {
            gStatMod.card = gZones[1][i]->id;
            gStatMod.field = gDuel.field;
            gStatMod.stage = sub_804069C(gZones[1][i]);
            SetFinalStat(&gStatMod);
            if (gCardInfo.atk >= 1500)
                gZones[1][i]->isLocked = TRUE;
        }
    }

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gUnk2024260.id;
        sub_801CEBC();
    }
}

void EffectDarknessApproaches(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gZones[2][i]->id != CARD_NONE)
            sub_804034C(gZones[2][i]);

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (gZones[3][i]->id != CARD_NONE)
            sub_804034C(gZones[3][i]);

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gUnk2024260.id;
        sub_801CEBC();
    }
}

void EffectCyclonLaser(void)
{
    if (sub_8055BD4(gZones[gUnk2024260.unk2][gUnk2024260.unk3]->id) == 1)
    {
        gUnk020245A0.unk2 = gUnk2024260.unk4;
        gUnk020245A0.unk3 = gUnk2024260.unk5;
        gUnk020245A0.id = gZones[gUnk2024260.unk4][gUnk2024260.unk5]->id;

        if (sub_80586DC() != 1 || gUnk_02021C08)
        {
            sub_8040368(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk4][gUnk2024260.unk5], 0);

            if (!gUnk_02021C08)
            {
                gUnk_02021C10.unk0 = CYCLON_LASER;
                sub_801CEBC();
            }
        }
        else
        {
            sub_804037C(gZones[gUnk2024260.unk2][gUnk2024260.unk3]);
            sub_80581DC();
        }
    }
    else if (!gUnk_02021C08)
        PlayMusic(57);
}

void ActivateSpellEffect(void)
{
    sub_801D1A8();
    sub_801D188(1);
    SetCardInfo(gUnk2024260.id);
    gSpellEffects[gCardInfo.spellEffect]();
}

void sub_804D140(void){}
void sub_804D144(void){}
void sub_804D148(void){}
void sub_804D14C(void){}

void EffectForest(void)
{
    gDuel.field = FIELD_FOREST;

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        sub_8041140(gDuel.field);
        gUnk_02021C10.unk0 = FOREST;
        sub_801CEBC();
    }
}

void EffectWasteland(void)
{
    gDuel.field = FIELD_WASTELAND;

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        sub_8041140(gDuel.field);
        gUnk_02021C10.unk0 = WASTELAND;
        sub_801CEBC();
    }
}

void EffectMountain(void)
{
    gDuel.field = FIELD_MOUNTAIN;

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        sub_8041140(gDuel.field);
        gUnk_02021C10.unk0 = MOUNTAIN;
        sub_801CEBC();
    }
}

void EffectSogen(void)
{
    gDuel.field = FIELD_SOGEN;

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        sub_8041140(gDuel.field);
        gUnk_02021C10.unk0 = SOGEN;
        sub_801CEBC();
    }
}

void EffectUmi(void)
{
    gDuel.field = FIELD_UMI;

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        sub_8041140(gDuel.field);
        gUnk_02021C10.unk0 = UMI;
        sub_801CEBC();
    }
}

void EffectYami(void)
{
    gDuel.field = FIELD_YAMI;

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        sub_8041140(gDuel.field);
        gUnk_02021C10.unk0 = YAMI;
        sub_801CEBC();
    }
}

void sub_804D378(void){}
void sub_804D37C(void){}
void sub_804D380(void){}
void sub_804D384(void){}
void sub_804D388(void){}
void sub_804D38C(void){}
void sub_804D390(void){}
void sub_804D394(void){}
void sub_804D398(void){}
void sub_804D39C(void){}
void sub_804D3A0(void){}
void sub_804D3A4(void){}
void sub_804D3A8(void){}

void EffectHarpiesFeatherDuster(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        ClearZoneAndSendMonToGraveyard(gZones[0][i], 1);

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = HARPIES_FEATHER_DUSTER;
        sub_801CEBC();
    }
}

//not sure what this does
void EffectPotOfGreed(void)
{
    DrawCard(WhoseTurn());
    DrawCard(WhoseTurn());

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = POT_OF_GREED;
        sub_801CEBC();
    }
}

void EffectRestructerRevolution(void)
{
    u16 lifePoints = (MAX_ZONES_IN_ROW - NumEmptyZonesInRow(gHands[1])) * 200;

    if (WhoseTurn() == PLAYER)
        SubtractOpponentLifePoints(lifePoints);
    else
        SubtractPlayerLifePoints(lifePoints);

    sub_803F29C();
    sub_803F4C0();

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = RESTRUCTER_REVOLUTION;
        sub_801CEBC();
    }
}

void sub_804D4E0(void){}
void sub_804D4E4(void){}

void EffectBeckonToDarkness(void)
{
    if (NumEmptyZonesAndGodCardsInRow(gZones[1]) != MAX_ZONES_IN_ROW)
        ClearZoneAndSendMonToGraveyard(gZones[1][HighestAtkMonInRowExceptGodCards(gZones[1])], 1);

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gUnk2024260.id;
        sub_801CEBC();
    }
}

void sub_804D550(void){}

void EffectGravediggerGhoul(void)
{
    sub_80452E0(0);
    sub_80452E0(1);

    ClearZoneAndSendMonToGraveyard(gZones[gUnk2024260.unk2][gUnk2024260.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = gUnk2024260.id;
        sub_801CEBC();
    }
}

void sub_804D5A4(void){}
void sub_804D5A8(void){}
void sub_804D5AC(void){}
void sub_804D5B0(void){}
void sub_804D5B4(void){}
void sub_804D5B8(void){}
void sub_804D5BC(void){}
void sub_804D5C0(void){}
void sub_804D5C4(void){}
void sub_804D5C8(void){}
void sub_804D5CC(void){}
void sub_804D5D0(void){}
void sub_804D5D4(void){}
void sub_804D5D8(void){}
void sub_804D5DC(void){}
void sub_804D5E0(void){}
void sub_804D5E4(void){}
void sub_804D5E8(void){}
void sub_804D5EC(void){}
void sub_804D5F0(void){}
void sub_804D5F4(void){}
void sub_804D5F8(void){}
void sub_804D5FC(void){}

void sub_804D600(struct DuelCard* zone, u16 id)
{
    zone->id = id;
    zone->isFaceUp = FALSE;
    zone->isLocked = FALSE;
    zone->isDefending = FALSE;
    zone->unkTwo = 0;
    zone->unk4 = 0;
    ResetPermStage(zone);
    ResetTempStage(zone);
    zone->willChangeSides = FALSE;
}
