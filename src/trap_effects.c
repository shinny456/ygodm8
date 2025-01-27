#include "global.h"

static bool8 sub_8057998 (void);
static bool8 sub_8057A1C (void);
static bool8 sub_8057AA0 (void);
static bool8 sub_8057B28 (void);
static bool8 sub_8057BAC (void);
static void sub_080582D8 (void);
static void EffectGoblinFan (u16);
static void EffectBadReactionToSimochi (u16);
static void EffectReverseTrap (void);
static void sub_08058430 (void);
static void EffectTorrentialTribute (void);
static void sub_0805849C (void);
static void sub_080584A0 (void);
static void sub_080584A4 (void);
static void sub_080584A8 (void);
static void sub_080584AC (void);
static bool8 sub_80584B4 (void);
static bool8 sub_80584B8 (void);
static bool8 sub_80584E4 (void);
static bool8 sub_8058540 (void);
static bool8 sub_805859C (void);
static bool8 sub_80585F0 (void);
static bool8 sub_80585F4 (void);
static bool8 sub_8058650 (void);
static bool8 sub_8058674 (void);
static bool8 sub_80586A0 (void);
static bool8 sub_80586C4 (void);
static bool8 sub_80586C8 (void);
static bool8 sub_80586CC (void);
static bool8 sub_80586D0 (void);
static bool8 sub_80586D4 (void);
static bool8 sub_80586D8 (void);


extern s16 gUnk_8E1172C[];
extern s16 gUnk_8E11738[];
extern s16 gUnk_8E11744[];
extern s16 gUnk_8E11788[];


static signed char sub_8057894 (u16 id) {
    unsigned char ret;

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

static bool8 sub_8057998(void)
{
    if (IsGodCard(gTrapEffectData.id) != TRUE && GetTypeGroup(gTrapEffectData.id) == TRUE)
    {
        gStatMod.card = gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]);
        SetFinalStat(&gStatMod);
        if (gCardInfo.atk <= 500)
        {
            gTrapEffectData.unk5 = 2;
            return TRUE;
        }
    }
    return 0;
}

static bool8 sub_8057A1C(void)
{
    if (IsGodCard(gTrapEffectData.id) != TRUE && GetTypeGroup(gTrapEffectData.id) == TRUE)
    {
        gStatMod.card = gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]);
        SetFinalStat(&gStatMod);
        if (gCardInfo.atk <= 1000)
        {
            gTrapEffectData.unk5 = 3;
            return TRUE;
        }
    }
    return 0;
}

static bool8 sub_8057AA0(void)
{
    if (IsGodCard(gTrapEffectData.id) != TRUE && GetTypeGroup(gTrapEffectData.id) == TRUE)
    {
        gStatMod.card = gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]);
        SetFinalStat(&gStatMod);
        if (gCardInfo.atk <= 1500)
        {
            gTrapEffectData.unk5 = 4;
            return TRUE;
        }
    }
    return 0;
}

static bool8 sub_8057B28(void)
{
    if (IsGodCard(gTrapEffectData.id) != TRUE && GetTypeGroup(gTrapEffectData.id) == TRUE)
    {
        gStatMod.card = gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]);
        SetFinalStat(&gStatMod);
        if (gCardInfo.atk <= 2000)
        {
            gTrapEffectData.unk5 = 5;
            return TRUE;
        }
    }
    return 0;
}

static bool8 sub_8057BAC(void)
{
    if (IsGodCard(gTrapEffectData.id) != TRUE && GetTypeGroup(gTrapEffectData.id) == TRUE)
    {
        gStatMod.card = gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]);
        SetFinalStat(&gStatMod);
        if (gCardInfo.atk <= 3000)
        {
            gTrapEffectData.unk5 = 6;
            return TRUE;
        }
    }
    return 0;
}

static void EffectWideSpreadRuin(void)
{
    ClearZoneAndSendMonToGraveyard(gZones[0][gTrapEffectData.trapZoneId], 1);
    if (!IsGodCard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->id))
    {
        ClearZoneAndSendMonToGraveyard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3], 0);

        if (!gHideEffectText)
        {
            gCardEffectTextData.cardId = WIDESPREAD_RUIN;
            gCardEffectTextData.cardId2 = gTrapEffectData.id;
            sub_801CEBC();
        }
    }
    else
    {
        gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->isFaceUp = TRUE;
        if (!gHideEffectText)
        {
            sub_801D188(4);
            gCardEffectTextData.cardId = WIDESPREAD_RUIN;
            gCardEffectTextData.cardId2 = gTrapEffectData.id;
            sub_801CEBC();
        }
    }
}

static void EffectHouseOfAdhesiveTape(void)
{
    ClearZoneAndSendMonToGraveyard(gZones[0][gTrapEffectData.trapZoneId], 1);
    if (!IsGodCard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->id))
    {
        ClearZoneAndSendMonToGraveyard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3], 0);

        if (!gHideEffectText)
        {
            gCardEffectTextData.cardId = HOUSE_OF_ADHESIVE_TAPE;
            gCardEffectTextData.cardId2 = gTrapEffectData.id;
            sub_801CEBC();
        }
    }
    else
    {
        gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->isFaceUp = TRUE;
        if (!gHideEffectText)
        {
            sub_801D188(4);
            gCardEffectTextData.cardId = HOUSE_OF_ADHESIVE_TAPE;
            gCardEffectTextData.cardId2 = gTrapEffectData.id;
            sub_801CEBC();
        }
    }
}

static void EffectEatgaboon(void)
{
    ClearZoneAndSendMonToGraveyard(gZones[0][gTrapEffectData.trapZoneId], 1);
    if (!IsGodCard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->id))
    {
        ClearZoneAndSendMonToGraveyard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3], 0);

        if (!gHideEffectText)
        {
            gCardEffectTextData.cardId = EATGABOON;
            gCardEffectTextData.cardId2 = gTrapEffectData.id;
            sub_801CEBC();
        }
    }
    else
    {
        gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->isFaceUp = TRUE;
        if (!gHideEffectText)
        {
            sub_801D188(4);
            gCardEffectTextData.cardId = EATGABOON;
            gCardEffectTextData.cardId2 = gTrapEffectData.id;
            sub_801CEBC();
        }
    }
}

static void EffectBearTrap(void)
{
    ClearZoneAndSendMonToGraveyard(gZones[0][gTrapEffectData.trapZoneId], 1);
    if (!IsGodCard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->id))
    {
        ClearZoneAndSendMonToGraveyard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3], 0);

        if (!gHideEffectText)
        {
            gCardEffectTextData.cardId = BEAR_TRAP;
            gCardEffectTextData.cardId2 = gTrapEffectData.id;
            sub_801CEBC();
        }
    }
    else
    {
        gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->isFaceUp = TRUE;
        if (!gHideEffectText)
        {
            sub_801D188(4);
            gCardEffectTextData.cardId = BEAR_TRAP;
            gCardEffectTextData.cardId2 = gTrapEffectData.id;
            sub_801CEBC();
        }
    }
}

static void EffectInvisibleWire(void)
{
    ClearZoneAndSendMonToGraveyard(gZones[0][gTrapEffectData.trapZoneId], 1);
    if (!IsGodCard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->id))
    {
        ClearZoneAndSendMonToGraveyard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3], 0);

        if (!gHideEffectText)
        {
            gCardEffectTextData.cardId = INVISIBLE_WIRE;
            gCardEffectTextData.cardId2 = gTrapEffectData.id;
            sub_801CEBC();
        }
    }
    else
    {
        gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->isFaceUp = TRUE;
        if (!gHideEffectText)
        {
            sub_801D188(4);
            gCardEffectTextData.cardId = INVISIBLE_WIRE;
            gCardEffectTextData.cardId2 = gTrapEffectData.id;
            sub_801CEBC();
        }
    }
}

static void EffectAcidTrapHole(void)
{
    ClearZoneAndSendMonToGraveyard(gZones[0][gTrapEffectData.trapZoneId], 1);
    if (!IsGodCard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->id))
    {
        ClearZoneAndSendMonToGraveyard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3], 0);

        if (!gHideEffectText)
        {
            gCardEffectTextData.cardId = ACID_TRAP_HOLE;
            gCardEffectTextData.cardId2 = gTrapEffectData.id;
            sub_801CEBC();
        }
    }
    else
    {
        gZones[gTrapEffectData.unk2][gTrapEffectData.unk3]->isFaceUp = TRUE;
        if (!gHideEffectText)
        {
            sub_801D188(4);
            gCardEffectTextData.cardId = ACID_TRAP_HOLE;
            gCardEffectTextData.cardId2 = gTrapEffectData.id;
            sub_801CEBC();
        }
    }
}

static void EffectAntiRaigeki(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (!IsGodCard(gZones[2][i]->id))
            ClearZoneAndSendMonToGraveyard(gZones[2][i], 0);

    ClearZoneAndSendMonToGraveyard(gZones[0][gTrapEffectData.trapZoneId], 1);
    ClearZoneAndSendMonToGraveyard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3], 0);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = ANTI_RAIGEKI;
        sub_801CEBC();
    }
}

static void EffectInfiniteDismissal(void)
{
    gZones[2][gTrapEffectData.unk3]->isFaceUp = TRUE;
    gZones[2][gTrapEffectData.unk3]->isLocked = TRUE;

    ClearZoneAndSendMonToGraveyard(gZones[0][gTrapEffectData.trapZoneId], 1);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = INFINITE_DISMISSAL;
        gCardEffectTextData.cardId2 = gTrapEffectData.id;
        sub_801CEBC();
    }
}

static void EffectAmazonArchers(void)
{
    sub_804037C(gZones[2][gTrapEffectData.unk3]);
    gZones[2][gTrapEffectData.unk3]->isFaceUp = TRUE;
    gZones[2][gTrapEffectData.unk3]->isLocked = TRUE;

    ClearZoneAndSendMonToGraveyard(gZones[0][gTrapEffectData.trapZoneId], 1);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = AMAZON_ARCHERS;
        gCardEffectTextData.cardId2 = gTrapEffectData.id;
        sub_801CEBC();
    }
}

//TODO: this function is called with no arguments in some places
void ActivateTrapEffect (u16 arg0)
{
    ResetCardEffectTextData();
    sub_801D188(3);

    switch (gTrapEffectData.unk5)
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

static void sub_080582D8(void){
}

static void EffectGoblinFan(u16 lp)
{
    if (WhoseTurn() == DUEL_PLAYER)
        SetPlayerLifePointsToSubtract(lp);
    else
        SetOpponentLifePointsToSubtract(lp);

    HandleDuelAction();
    sub_803F4C0();

    ClearZoneAndSendMonToGraveyard(gZones[0][gTrapEffectData.trapZoneId], 1);
    ClearZoneAndSendMonToGraveyard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3], 0);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = GOBLIN_FAN;
        gCardEffectTextData.cardId2 = gTrapEffectData.id;
        sub_801CEBC();
    }
}

static void EffectBadReactionToSimochi(u16 lp)
{
    if (WhoseTurn() == DUEL_PLAYER)
        SetPlayerLifePointsToSubtract(lp);
    else
        SetOpponentLifePointsToSubtract(lp);

    HandleDuelAction();
    sub_803F4C0();

    ClearZoneAndSendMonToGraveyard(gZones[0][gTrapEffectData.trapZoneId], 1);
    ClearZoneAndSendMonToGraveyard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3], 0);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = BAD_REACTION_TO_SIMOCHI;
        gCardEffectTextData.cardId2 = gTrapEffectData.id;
        sub_801CEBC();
    }
}

static void EffectReverseTrap(void)
{
    ClearZoneAndSendMonToGraveyard(gZones[0][gTrapEffectData.trapZoneId], 1);
    ClearZoneAndSendMonToGraveyard(gZones[gTrapEffectData.unk2][gTrapEffectData.unk3], 0);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = REVERSE_TRAP;
        gCardEffectTextData.cardId2 = gTrapEffectData.id;
        sub_801CEBC();
    }
}

static void sub_08058430 (void) {
}

static void EffectTorrentialTribute(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (!IsGodCard(gZones[2][i]->id))
            ClearZoneAndSendMonToGraveyard(gZones[2][i], 0);

    ClearZoneAndSendMonToGraveyard(gZones[0][gTrapEffectData.trapZoneId], 1);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = TORRENTIAL_TRIBUTE;
        sub_801CEBC();
    }
}

static void sub_0805849C (void) {
}

static void sub_080584A0 (void) {
}

static void sub_080584A4 (void) {
}

static void sub_080584A8 (void) {
}

static void sub_080584AC (void) {
}

static void sub_080584B0 (void) {
}

static u8 sub_80584B4 (void)
{
    return 0;
}

static bool8 sub_80584B8(void)
{
    if (IsGodCard(gTrapEffectData.id) == TRUE || GetTypeGroup(gTrapEffectData.id) != 1)
        return 0;

    gTrapEffectData.unk5 = 1;
    return TRUE;
}

static bool8 sub_80584E4(void)
{
    if (GetTypeGroup(gTrapEffectData.id) == 2)
    {
        u32 i;

        SetCardInfo(gTrapEffectData.id);
        for (i = 0; gUnk_8E1172C[i] != -1; i++)
        {
            if (gUnk_8E1172C[i] == gCardInfo.spellEffect)
            {
                gTrapEffectData.unk5 = 7;
                return TRUE;
            }
        }
    }
    return 0;
}

static bool8 sub_8058540(void)
{
    if (GetTypeGroup(gTrapEffectData.id) == 2)
    {
        u32 i;

        SetCardInfo(gTrapEffectData.id);
        for (i = 0; gUnk_8E11738[i] != -1; i++)
        {
            if (gUnk_8E11738[i] == gCardInfo.spellEffect)
            {
                gTrapEffectData.unk5 = 8;
                return TRUE;
            }
        }
    }
    return 0;
}

static bool8 sub_805859C(void)
{
    u32 i;

    SetCardInfo(gTrapEffectData.id);
    for (i = 0; gUnk_8E11744[i] != -1; i++)
    {
        if (gUnk_8E11744[i] == gCardInfo.spellEffect)
        {
            gTrapEffectData.unk5 = 9;
            return TRUE;
        }
    }
    return 0;
}

static u8 sub_80585F0(void)
{
    return 0;
}

static bool8 sub_80585F4(void)
{
    if (GetTypeGroup(gTrapEffectData.id) == 2)
    {
        u32 i;

        SetCardInfo(gTrapEffectData.id);
        for (i = 0; gUnk_8E11788[i] != -1; i++)
        {
            if (gUnk_8E11788[i] == gCardInfo.spellEffect)
            {
                gTrapEffectData.unk5 = 11;
                return TRUE;
            }
        }
    }
    return 0;
}

static bool8 sub_8058650(void)
{
    if (GetTypeGroup(gTrapEffectData.id) == 1)
    {
        gTrapEffectData.unk5 = 12;
        return TRUE;
    }
    return 0;
}

static bool8 sub_8058674(void)
{
    if (IsGodCard(gTrapEffectData.id) == TRUE || GetTypeGroup(gTrapEffectData.id) != 1)
        return 0;

    gTrapEffectData.unk5 = 13;
    return TRUE;
}

static bool8 sub_80586A0(void)
{
    if (GetTypeGroup(gTrapEffectData.id) == 1)
    {
        gTrapEffectData.unk5 = 14;
        return TRUE;
    }
    return 0;
}

static bool8 sub_80586C4(void)
{
    return 0;
}

static bool8 sub_80586C8(void)
{
    return 0;
}

static bool8 sub_80586CC(void)
{
    return 0;
}

static bool8 sub_80586D0(void)
{
    return 0;
}

static bool8 sub_80586D4(void)
{
    return 0;
}

static bool8 sub_80586D8(void)
{
    return 0;
}

unsigned sub_80586DC (void) {
  unsigned char i;

  gTrapEffectData.unk5 = 0;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
      gTrapEffectData.trapZoneId = i;
      if (sub_8057894(gZones[0][i]->id) == 1)
          return 1;
  }
  return 0;
}
