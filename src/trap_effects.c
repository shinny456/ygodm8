#include "global.h"
#include "duel.h"
#include "card.h"
#include "player.h"
#include "constants/card_ids.h"


extern s16 gUnk_8E1172C[];
extern s16 gUnk_8E11738[];
extern s16 gUnk_8E11744[];
extern s16 gUnk_8E11788[];


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

bool8 sub_80584B4(void);
bool8 sub_80584B8(void);
bool8 sub_8057998(void);
bool8 sub_8057A1C(void);
bool8 sub_8057AA0(void);
bool8 sub_8057B28(void);
bool8 sub_8057BAC(void);
bool8 sub_80584E4(void);
bool8 sub_8058540(void);
bool8 sub_805859C(void);
bool8 sub_80585F0(void);
bool8 sub_80585F4(void);
bool8 sub_8058650(void);
bool8 sub_8058674(void);
bool8 sub_80586A0(void);
bool8 sub_80586C4(void);
bool8 sub_80586C8(void);
bool8 sub_80586CC(void);
bool8 sub_80586D0(void);
bool8 sub_80586D4(void);
bool8 sub_80586D8(void);

s8 sub_8057894(u16 id)
{
    bool8 ret;
    
    SetCardInfo(id);
    switch (gCardInfo.trapEffect)
    {
    case 0:
        ret = sub_80584B4();
        break;
    case 1:
        ret = sub_80584B8();
        break;
    case 2:
        ret = sub_8057998();
        break;
    case 3:
        ret = sub_8057A1C();
        break;
    case 4:
        ret = sub_8057AA0();
        break;
    case 5:
        ret = sub_8057B28();
        break;
    case 6:
        ret = sub_8057BAC();
        break;
    case 7:
        ret = sub_80584E4();
        break;
    case 8:
        ret = sub_8058540();
        break;
    case 9:
        ret = sub_805859C();
        break;
    case 10:
        ret = sub_80585F0();
        break;
    case 11:
        ret = sub_80585F4();
        break;
    case 12:
        ret = sub_8058650();
        break;
    case 13:
        ret = sub_8058674();
        break;
    case 14:
        ret = sub_80586A0();
        break;
    case 15:
        ret = sub_80586C4();
        break;
    case 16:
        ret = sub_80586C8();
        break;
    case 17:
        ret = sub_80586CC();
        break;
    case 18:
        ret = sub_80586D0();
        break;
    case 19:
        ret = sub_80586D4();
        break;
    case 20:
        ret = sub_80586D8();
        break;
    default:
        ret = 0;
    }
    return ret;
}

bool8 sub_8057998(void)
{
    if (IsGodCard(gUnk020245A0.id) != TRUE && sub_803FCBC(gUnk020245A0.id) == TRUE)
    {
        gStatMod.card = gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]);
        sub_800B318(&gStatMod);
        if (gCardInfo.atk <= 500)
        {
            gUnk020245A0.unk5 = 2;
            return TRUE;
        }
    }
    return FALSE;
}

bool8 sub_8057A1C(void)
{
    if (IsGodCard(gUnk020245A0.id) != TRUE && sub_803FCBC(gUnk020245A0.id) == TRUE)
    {
        gStatMod.card = gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]);
        sub_800B318(&gStatMod);
        if (gCardInfo.atk <= 1000)
        {
            gUnk020245A0.unk5 = 3;
            return TRUE;
        }
    }
    return FALSE;
}

bool8 sub_8057AA0(void)
{
    if (IsGodCard(gUnk020245A0.id) != TRUE && sub_803FCBC(gUnk020245A0.id) == TRUE)
    {
        gStatMod.card = gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]);
        sub_800B318(&gStatMod);
        if (gCardInfo.atk <= 1500)
        {
            gUnk020245A0.unk5 = 4;
            return TRUE;
        }
    }
    return FALSE;
}

bool8 sub_8057B28(void)
{
    if (IsGodCard(gUnk020245A0.id) != TRUE && sub_803FCBC(gUnk020245A0.id) == TRUE)
    {
        gStatMod.card = gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]);
        sub_800B318(&gStatMod);
        if (gCardInfo.atk <= 2000)
        {
            gUnk020245A0.unk5 = 5;
            return TRUE;
        }
    }
    return FALSE;
}

bool8 sub_8057BAC(void)
{
    if (IsGodCard(gUnk020245A0.id) != TRUE && sub_803FCBC(gUnk020245A0.id) == TRUE)
    {
        gStatMod.card = gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]);
        sub_800B318(&gStatMod);
        if (gCardInfo.atk <= 3000)
        {
            gUnk020245A0.unk5 = 6;
            return TRUE;
        }
    }
    return FALSE;
}

void EffectWideSpreadRuin(void)
{
    ClearZoneAndSendMonToGraveyard(gZones[0][gUnk020245A0.unk4], 1);
    if (!IsGodCard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id))
    {
        ClearZoneAndSendMonToGraveyard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

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
    ClearZoneAndSendMonToGraveyard(gZones[0][gUnk020245A0.unk4], 1);
    if (!IsGodCard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id))
    {
        ClearZoneAndSendMonToGraveyard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

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
    ClearZoneAndSendMonToGraveyard(gZones[0][gUnk020245A0.unk4], 1);
    if (!IsGodCard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id))
    {
        ClearZoneAndSendMonToGraveyard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

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
    ClearZoneAndSendMonToGraveyard(gZones[0][gUnk020245A0.unk4], 1);
    if (!IsGodCard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id))
    {
        ClearZoneAndSendMonToGraveyard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

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
    ClearZoneAndSendMonToGraveyard(gZones[0][gUnk020245A0.unk4], 1);
    if (!IsGodCard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id))
    {
        ClearZoneAndSendMonToGraveyard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

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
    ClearZoneAndSendMonToGraveyard(gZones[0][gUnk020245A0.unk4], 1);
    if (!IsGodCard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3]->id))
    {
        ClearZoneAndSendMonToGraveyard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

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
            ClearZoneAndSendMonToGraveyard(gZones[2][i], 0);

    ClearZoneAndSendMonToGraveyard(gZones[0][gUnk020245A0.unk4], 1);
    ClearZoneAndSendMonToGraveyard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

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

    ClearZoneAndSendMonToGraveyard(gZones[0][gUnk020245A0.unk4], 1);

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

    ClearZoneAndSendMonToGraveyard(gZones[0][gUnk020245A0.unk4], 1);

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

    ClearZoneAndSendMonToGraveyard(gZones[0][gUnk020245A0.unk4], 1);
    ClearZoneAndSendMonToGraveyard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

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

    ClearZoneAndSendMonToGraveyard(gZones[0][gUnk020245A0.unk4], 1);
    ClearZoneAndSendMonToGraveyard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

    if (!gUnk_02021C08)
    {
        gUnk_02021C10.unk0 = BAD_REACTION_TO_SIMOCHI;
        gUnk_02021C10.unk2 = gUnk020245A0.id;
        sub_801CEBC();
    }
}

void EffectReverseTrap(void)
{
    ClearZoneAndSendMonToGraveyard(gZones[0][gUnk020245A0.unk4], 1);
    ClearZoneAndSendMonToGraveyard(gZones[gUnk020245A0.unk2][gUnk020245A0.unk3], 0);

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
            ClearZoneAndSendMonToGraveyard(gZones[2][i], 0);

    ClearZoneAndSendMonToGraveyard(gZones[0][gUnk020245A0.unk4], 1);

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

u8 sub_80584B4(void)
{
    return 0;
}

bool8 sub_80584B8(void)
{
    if (IsGodCard(gUnk020245A0.id) == TRUE || sub_803FCBC(gUnk020245A0.id) != 1)
        return FALSE;

    gUnk020245A0.unk5 = 1;
    return TRUE;
}

bool8 sub_80584E4(void)
{
    if (sub_803FCBC(gUnk020245A0.id) == 2)
    {
        u32 i;

        SetCardInfo(gUnk020245A0.id);
        for (i = 0; gUnk_8E1172C[i] != -1; i++)
        {
            if (gUnk_8E1172C[i] == gCardInfo.spellEffect)
            {
                gUnk020245A0.unk5 = 7;
                return TRUE;
            }
        }
    }
    return FALSE;
}

bool8 sub_8058540(void)
{
    if (sub_803FCBC(gUnk020245A0.id) == 2)
    {
        u32 i;

        SetCardInfo(gUnk020245A0.id);
        for (i = 0; gUnk_8E11738[i] != -1; i++)
        {
            if (gUnk_8E11738[i] == gCardInfo.spellEffect)
            {
                gUnk020245A0.unk5 = 8;
                return TRUE;
            }
        }
    }
    return FALSE;
}

bool8 sub_805859C(void)
{
    u32 i;

    SetCardInfo(gUnk020245A0.id);
    for (i = 0; gUnk_8E11744[i] != -1; i++)
    {
        if (gUnk_8E11744[i] == gCardInfo.spellEffect)
        {
            gUnk020245A0.unk5 = 9;
            return TRUE;
        }
    }
    return FALSE;
}

u8 sub_80585F0(void)
{
    return 0;
}

bool8 sub_80585F4(void)
{
    if (sub_803FCBC(gUnk020245A0.id) == 2)
    {
        u32 i;

        SetCardInfo(gUnk020245A0.id);
        for (i = 0; gUnk_8E11788[i] != -1; i++)
        {
            if (gUnk_8E11788[i] == gCardInfo.spellEffect)
            {
                gUnk020245A0.unk5 = 11;
                return TRUE;
            }
        }
    }
    return FALSE;
}

bool8 sub_8058650(void)
{
    if (sub_803FCBC(gUnk020245A0.id) == 1)
    {
        gUnk020245A0.unk5 = 12;
        return TRUE;
    }
    return FALSE;
}

bool8 sub_8058674(void)
{
    if (IsGodCard(gUnk020245A0.id) == TRUE || sub_803FCBC(gUnk020245A0.id) != 1)
        return FALSE;

    gUnk020245A0.unk5 = 13;
    return TRUE;
}

bool8 sub_80586A0(void)
{
    if (sub_803FCBC(gUnk020245A0.id) == 1)
    {
        gUnk020245A0.unk5 = 14;
        return TRUE;
    }
    return FALSE;
}

bool8 sub_80586C4(void)
{
    return FALSE;
}

bool8 sub_80586C8(void)
{
    return FALSE;
}

bool8 sub_80586CC(void)
{
    return FALSE;
}

bool8 sub_80586D0(void)
{
    return FALSE;
}

bool8 sub_80586D4(void)
{
    return FALSE;
}

bool8 sub_80586D8(void)
{
    return FALSE;
}

bool32 sub_80586DC(void)
{
    u8 i;
    
    gUnk020245A0.unk5 = 0;
    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
    {
        gUnk020245A0.unk4 = i;
        if (sub_8057894(gZones[0][i]->id) == 1)
            return TRUE;
    }
    return FALSE;
}
