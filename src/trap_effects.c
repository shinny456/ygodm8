#include "global.h"

// TrapId -- not the same as CardId
// can move if needed, just defined here lazily
#define TRAP_NONE 0
#define TRAP_WIDESPREAD_RUIN 1
#define TRAP_HOUSE_OF_ADHESIVE_TAPE 2
#define TRAP_EATGABOON 3
#define TRAP_BEAR_TRAP 4
#define TRAP_INVISIBLE_WIRE 5
#define TRAP_ACID_TRAP_HOLE 6
#define TRAP_GOBLIN_FAN 7
#define TRAP_BAD_REACTION_TO_SIMOCHI 8
#define TRAP_REVERSE_TRAP 9
#define TRAP_FAKE_TRAP 10
#define TRAP_ANTI_RAIGEKI 11
#define TRAP_INFINITE_DISMISSAL 12
#define TRAP_TORRENTIAL_TRIBUTE 13
#define TRAP_AMAZON_ARCHERS 14
#define TRAP_DESTINY_BOARD 15
#define TRAP_SPIRIT_MESSAGE_I 16
#define TRAP_SPIRIT_MESSAGE_N 17
#define TRAP_SPIRIT_MESSAGE_A 18
#define TRAP_SPIRIT_MESSAGE_L 19
#define TRAP_DRAGON_CAPTURE_JAR 20

static bool8 ConditionHouseOfAdhesiveTape (void);
static bool8 ConditionEatgaboon (void);
static bool8 ConditionBearTrap (void);
static bool8 ConditionInvisibleWire (void);
static bool8 ConditionAcidTrapHole (void);
static void EffectTrapNone (void);
static void EffectGoblinFan (u16);
static void EffectBadReactionToSimochi (u16);
static void EffectReverseTrap (void);
static void EffectFakeTrap (void);
static void EffectTorrentialTribute (void);
static void EffectDestinyBoard (void);
static void EffectSpiritMessageI (void);
static void EffectSpiritMessageN (void);
static void EffectSpiritMessageA (void);
static void EffectSpiritMessageL (void);
static bool8 ConditionTrapNone (void);
static bool8 ConditionWidespreadRuin (void);
static bool8 ConditionGoblinFan (void);
static bool8 ConditionBadReactionToSimochi (void);
static bool8 ConditionReverseTrap (void);
static bool8 ConditionFakeTrap (void);
static bool8 ConditionAntiRaigeki (void);
static bool8 ConditionInfiniteDismissal (void);
static bool8 ConditionTorrentialTribute (void);
static bool8 ConditionAmazonArchers (void);
static bool8 ConditionDestinyBoard (void);
static bool8 ConditionSpiritMessageI (void);
static bool8 ConditionSpiritMessageN (void);
static bool8 ConditionSpiritMessageA (void);
static bool8 ConditionSpiritMessageL (void);
static bool8 ConditionDragonCaptureJar (void);


extern s16 gUnk_8E1172C[];
extern s16 gUnk_8E11738[];
extern s16 gUnk_8E11744[];
extern s16 gUnk_8E11788[];

static signed char CheckTrapActivationConditions (u16 id) {
    unsigned char ret;

    SetCardInfo(id);
    switch (gCardInfo.trapEffect)
    {
    case TRAP_NONE:
        ret = ConditionTrapNone();
        break;
    case TRAP_WIDESPREAD_RUIN:
        ret = ConditionWidespreadRuin();
        break;
    case TRAP_HOUSE_OF_ADHESIVE_TAPE:
        ret = ConditionHouseOfAdhesiveTape();
        break;
    case TRAP_EATGABOON:
        ret = ConditionEatgaboon();
        break;
    case TRAP_BEAR_TRAP:
        ret = ConditionBearTrap();
        break;
    case TRAP_INVISIBLE_WIRE:
        ret = ConditionInvisibleWire();
        break;
    case TRAP_ACID_TRAP_HOLE:
        ret = ConditionAcidTrapHole();
        break;
    case TRAP_GOBLIN_FAN:
        ret = ConditionGoblinFan();
        break;
    case TRAP_BAD_REACTION_TO_SIMOCHI:
        ret = ConditionBadReactionToSimochi();
        break;
    case TRAP_REVERSE_TRAP:
        ret = ConditionReverseTrap();
        break;
    case TRAP_FAKE_TRAP:
        ret = ConditionFakeTrap();
        break;
    case TRAP_ANTI_RAIGEKI:
        ret = ConditionAntiRaigeki();
        break;
    case TRAP_INFINITE_DISMISSAL:
        ret = ConditionInfiniteDismissal();
        break;
    case TRAP_TORRENTIAL_TRIBUTE:
        ret = ConditionTorrentialTribute();
        break;
    case TRAP_AMAZON_ARCHERS:
        ret = ConditionAmazonArchers();
        break;
    case TRAP_DESTINY_BOARD:
        ret = ConditionDestinyBoard();
        break;
    case TRAP_SPIRIT_MESSAGE_I:
        ret = ConditionSpiritMessageI();
        break;
    case TRAP_SPIRIT_MESSAGE_N:
        ret = ConditionSpiritMessageN();
        break;
    case TRAP_SPIRIT_MESSAGE_A:
        ret = ConditionSpiritMessageA();
        break;
    case TRAP_SPIRIT_MESSAGE_L:
        ret = ConditionSpiritMessageL();
        break;
    case TRAP_DRAGON_CAPTURE_JAR:
        ret = ConditionDragonCaptureJar();
        break;
    default:
        ret = 0;
    }
    return ret;
}

static bool8 ConditionHouseOfAdhesiveTape(void)
{
    if (IsGodCard(gTrapEffectData.originCardId) != TRUE && GetTypeGroup(gTrapEffectData.originCardId) == TYPE_GROUP_MONSTER)
    {
        gStatMod.card = gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]);
        SetFinalStat(&gStatMod);
        if (gCardInfo.atk <= 500)
        {
            gTrapEffectData.trapCardId = TRAP_HOUSE_OF_ADHESIVE_TAPE;
            return TRUE;
        }
    }
    return 0;
}

static bool8 ConditionEatgaboon(void)
{
    if (IsGodCard(gTrapEffectData.originCardId) != TRUE && GetTypeGroup(gTrapEffectData.originCardId) == TYPE_GROUP_MONSTER)
    {
        gStatMod.card = gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]);
        SetFinalStat(&gStatMod);
        if (gCardInfo.atk <= 1000)
        {
            gTrapEffectData.trapCardId = TRAP_EATGABOON;
            return TRUE;
        }
    }
    return 0;
}

static bool8 ConditionBearTrap(void)
{
    if (IsGodCard(gTrapEffectData.originCardId) != TRUE && GetTypeGroup(gTrapEffectData.originCardId) == TYPE_GROUP_MONSTER)
    {
        gStatMod.card = gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]);
        SetFinalStat(&gStatMod);
        if (gCardInfo.atk <= 1500)
        {
            gTrapEffectData.trapCardId = TRAP_BEAR_TRAP;
            return TRUE;
        }
    }
    return 0;
}

static bool8 ConditionInvisibleWire(void)
{
    if (IsGodCard(gTrapEffectData.originCardId) != TRUE && GetTypeGroup(gTrapEffectData.originCardId) == TYPE_GROUP_MONSTER)
    {
        gStatMod.card = gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]);
        SetFinalStat(&gStatMod);
        if (gCardInfo.atk <= 2000)
        {
            gTrapEffectData.trapCardId = TRAP_INVISIBLE_WIRE;
            return TRUE;
        }
    }
    return 0;
}

static bool8 ConditionAcidTrapHole(void)
{
    if (IsGodCard(gTrapEffectData.originCardId) != TRUE && GetTypeGroup(gTrapEffectData.originCardId) == TYPE_GROUP_MONSTER)
    {
        gStatMod.card = gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]);
        SetFinalStat(&gStatMod);
        if (gCardInfo.atk <= 3000)
        {
            gTrapEffectData.trapCardId = TRAP_ACID_TRAP_HOLE;
            return TRUE;
        }
    }
    return 0;
}

static void EffectWideSpreadRuin(void)
{
    ClearZoneAndSendMonToGraveyard(gTurnZones[0][gTrapEffectData.trapZoneCol], INACTIVE_DUELIST);
    if (!IsGodCard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->id))
    {
        ClearZoneAndSendMonToGraveyard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol], ACTIVE_DUELIST);

        if (!gHideEffectText)
        {
            gCardEffectTextData.cardId = WIDESPREAD_RUIN;
            gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
            ActivateCardEffectText();
        }
    }
    else
    {
        gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->isFaceUp = TRUE;
        if (!gHideEffectText)
        {
            SetCardEffectTextType(4);
            gCardEffectTextData.cardId = WIDESPREAD_RUIN;
            gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
            ActivateCardEffectText();
        }
    }
}

static void EffectHouseOfAdhesiveTape(void)
{
    ClearZoneAndSendMonToGraveyard(gTurnZones[0][gTrapEffectData.trapZoneCol], INACTIVE_DUELIST);
    if (!IsGodCard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->id))
    {
        ClearZoneAndSendMonToGraveyard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol], ACTIVE_DUELIST);

        if (!gHideEffectText)
        {
            gCardEffectTextData.cardId = HOUSE_OF_ADHESIVE_TAPE;
            gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
            ActivateCardEffectText();
        }
    }
    else
    {
        gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->isFaceUp = TRUE;
        if (!gHideEffectText)
        {
            SetCardEffectTextType(4);
            gCardEffectTextData.cardId = HOUSE_OF_ADHESIVE_TAPE;
            gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
            ActivateCardEffectText();
        }
    }
}

static void EffectEatgaboon(void)
{
    ClearZoneAndSendMonToGraveyard(gTurnZones[0][gTrapEffectData.trapZoneCol], INACTIVE_DUELIST);
    if (!IsGodCard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->id))
    {
        ClearZoneAndSendMonToGraveyard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol], ACTIVE_DUELIST);

        if (!gHideEffectText)
        {
            gCardEffectTextData.cardId = EATGABOON;
            gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
            ActivateCardEffectText();
        }
    }
    else
    {
        gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->isFaceUp = TRUE;
        if (!gHideEffectText)
        {
            SetCardEffectTextType(4);
            gCardEffectTextData.cardId = EATGABOON;
            gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
            ActivateCardEffectText();
        }
    }
}

static void EffectBearTrap(void)
{
    ClearZoneAndSendMonToGraveyard(gTurnZones[0][gTrapEffectData.trapZoneCol], INACTIVE_DUELIST);
    if (!IsGodCard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->id))
    {
        ClearZoneAndSendMonToGraveyard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol], ACTIVE_DUELIST);

        if (!gHideEffectText)
        {
            gCardEffectTextData.cardId = BEAR_TRAP;
            gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
            ActivateCardEffectText();
        }
    }
    else
    {
        gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->isFaceUp = TRUE;
        if (!gHideEffectText)
        {
            SetCardEffectTextType(4);
            gCardEffectTextData.cardId = BEAR_TRAP;
            gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
            ActivateCardEffectText();
        }
    }
}

static void EffectInvisibleWire(void)
{
    ClearZoneAndSendMonToGraveyard(gTurnZones[0][gTrapEffectData.trapZoneCol], INACTIVE_DUELIST);
    if (!IsGodCard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->id))
    {
        ClearZoneAndSendMonToGraveyard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol], ACTIVE_DUELIST);

        if (!gHideEffectText)
        {
            gCardEffectTextData.cardId = INVISIBLE_WIRE;
            gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
            ActivateCardEffectText();
        }
    }
    else
    {
        gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->isFaceUp = TRUE;
        if (!gHideEffectText)
        {
            SetCardEffectTextType(4);
            gCardEffectTextData.cardId = INVISIBLE_WIRE;
            gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
            ActivateCardEffectText();
        }
    }
}

static void EffectAcidTrapHole(void)
{
    ClearZoneAndSendMonToGraveyard(gTurnZones[0][gTrapEffectData.trapZoneCol], INACTIVE_DUELIST);
    if (!IsGodCard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->id))
    {
        ClearZoneAndSendMonToGraveyard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol], ACTIVE_DUELIST);

        if (!gHideEffectText)
        {
            gCardEffectTextData.cardId = ACID_TRAP_HOLE;
            gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
            ActivateCardEffectText();
        }
    }
    else
    {
        gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol]->isFaceUp = TRUE;
        if (!gHideEffectText)
        {
            SetCardEffectTextType(4);
            gCardEffectTextData.cardId = ACID_TRAP_HOLE;
            gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
            ActivateCardEffectText();
        }
    }
}

static void EffectAntiRaigeki(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (!IsGodCard(gTurnZones[2][i]->id))
            ClearZoneAndSendMonToGraveyard(gTurnZones[2][i], ACTIVE_DUELIST);

    ClearZoneAndSendMonToGraveyard(gTurnZones[0][gTrapEffectData.trapZoneCol], INACTIVE_DUELIST);
    ClearZoneAndSendMonToGraveyard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = ANTI_RAIGEKI;
        ActivateCardEffectText();
    }
}

static void EffectInfiniteDismissal(void)
{
    gTurnZones[2][gTrapEffectData.originCol]->isFaceUp = TRUE;
    gTurnZones[2][gTrapEffectData.originCol]->isLocked = TRUE;

    ClearZoneAndSendMonToGraveyard(gTurnZones[0][gTrapEffectData.trapZoneCol], INACTIVE_DUELIST);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = INFINITE_DISMISSAL;
        gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
        ActivateCardEffectText();
    }
}

static void EffectAmazonArchers(void)
{
    DecrementPermStage(gTurnZones[2][gTrapEffectData.originCol]);
    gTurnZones[2][gTrapEffectData.originCol]->isFaceUp = TRUE;
    gTurnZones[2][gTrapEffectData.originCol]->isLocked = TRUE;

    ClearZoneAndSendMonToGraveyard(gTurnZones[0][gTrapEffectData.trapZoneCol], INACTIVE_DUELIST);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = AMAZON_ARCHERS;
        gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
        ActivateCardEffectText();
    }
}

// argument only exists when an lp amount needs to be trapped/inverted
void ActivateTrapEffect (u16 lp)
{
    ResetCardEffectTextData();
    SetCardEffectTextType(3);

    switch (gTrapEffectData.trapCardId)
    {
    case TRAP_NONE:
        EffectTrapNone();
        break;
    case TRAP_WIDESPREAD_RUIN:
        EffectWideSpreadRuin();
        break;
    case TRAP_HOUSE_OF_ADHESIVE_TAPE:
        EffectHouseOfAdhesiveTape();
        break;
    case TRAP_EATGABOON:
        EffectEatgaboon();
        break;
    case TRAP_BEAR_TRAP:
        EffectBearTrap();
        break;
    case TRAP_INVISIBLE_WIRE:
        EffectInvisibleWire();
        break;
    case TRAP_ACID_TRAP_HOLE:
        EffectAcidTrapHole();
        break;
    case TRAP_GOBLIN_FAN:
        EffectGoblinFan(lp);
        break;
    case TRAP_BAD_REACTION_TO_SIMOCHI:
        EffectBadReactionToSimochi(lp);
        break;
    case TRAP_REVERSE_TRAP:
        EffectReverseTrap();
        break;
    case TRAP_FAKE_TRAP:
        EffectFakeTrap();
        break;
    case TRAP_ANTI_RAIGEKI:
        EffectAntiRaigeki();
        break;
    case TRAP_INFINITE_DISMISSAL:
        EffectInfiniteDismissal();
        break;
    case TRAP_TORRENTIAL_TRIBUTE:
        EffectTorrentialTribute();
        break;
    case TRAP_AMAZON_ARCHERS:
        EffectAmazonArchers();
        break;
    case TRAP_DESTINY_BOARD:
        EffectDestinyBoard();
        break;
    case TRAP_SPIRIT_MESSAGE_I:
        EffectSpiritMessageI();
        break;
    case TRAP_SPIRIT_MESSAGE_N:
        EffectSpiritMessageN();
        break;
    case TRAP_SPIRIT_MESSAGE_A:
        EffectSpiritMessageA();
        break;
    case TRAP_SPIRIT_MESSAGE_L:
        EffectSpiritMessageL();
        break;
    }
}

// 080582D8
static void EffectTrapNone(void){
}

static void EffectGoblinFan(u16 lp)
{
    if (WhoseTurn() == DUEL_PLAYER)
        SetPlayerLifePointsToSubtract(lp);
    else
        SetOpponentLifePointsToSubtract(lp);

    HandleAtkAndLifePointsAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gTurnZones[0][gTrapEffectData.trapZoneCol], INACTIVE_DUELIST);
    ClearZoneAndSendMonToGraveyard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = GOBLIN_FAN;
        gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
        ActivateCardEffectText();
    }
}

static void EffectBadReactionToSimochi(u16 lp)
{
    if (WhoseTurn() == DUEL_PLAYER)
        SetPlayerLifePointsToSubtract(lp);
    else
        SetOpponentLifePointsToSubtract(lp);

    HandleAtkAndLifePointsAction();
    CheckLoserFlags();

    ClearZoneAndSendMonToGraveyard(gTurnZones[0][gTrapEffectData.trapZoneCol], INACTIVE_DUELIST);
    ClearZoneAndSendMonToGraveyard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = BAD_REACTION_TO_SIMOCHI;
        gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
        ActivateCardEffectText();
    }
}

static void EffectReverseTrap(void)
{
    ClearZoneAndSendMonToGraveyard(gTurnZones[0][gTrapEffectData.trapZoneCol], INACTIVE_DUELIST);
    ClearZoneAndSendMonToGraveyard(gTurnZones[gTrapEffectData.originRow][gTrapEffectData.originCol], ACTIVE_DUELIST);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = REVERSE_TRAP;
        gCardEffectTextData.cardId2 = gTrapEffectData.originCardId;
        ActivateCardEffectText();
    }
}

// 08058430
static void EffectFakeTrap (void) {
}

static void EffectTorrentialTribute(void)
{
    u8 i;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        if (!IsGodCard(gTurnZones[2][i]->id))
            ClearZoneAndSendMonToGraveyard(gTurnZones[2][i], ACTIVE_DUELIST);

    ClearZoneAndSendMonToGraveyard(gTurnZones[0][gTrapEffectData.trapZoneCol], INACTIVE_DUELIST);

    if (!gHideEffectText)
    {
        gCardEffectTextData.cardId = TORRENTIAL_TRIBUTE;
        ActivateCardEffectText();
    }
}

// 0805849C
static void EffectDestinyBoard (void) {
}

// 080584A0
static void EffectSpiritMessageI (void) {
}

// 080584A4
static void EffectSpiritMessageN (void) {
}

// 080584A8
static void EffectSpiritMessageA (void) {
}

// 080584AC
static void EffectSpiritMessageL (void) {
}

// 080584B0
static void EffectDragonCaptureJar (void) {
}

static u8 ConditionTrapNone (void)
{
    return 0;
}

//80584B8
static bool8 ConditionWidespreadRuin(void)
{
    if (IsGodCard(gTrapEffectData.originCardId) == TRUE || GetTypeGroup(gTrapEffectData.originCardId) != TYPE_GROUP_MONSTER)
        return 0;

    gTrapEffectData.trapCardId = TRAP_WIDESPREAD_RUIN;
    return TRUE;
}

//80584E4
static bool8 ConditionGoblinFan(void)
{
    if (GetTypeGroup(gTrapEffectData.originCardId) == TYPE_GROUP_SPELL)
    {
        u32 i;

        SetCardInfo(gTrapEffectData.originCardId);
        for (i = 0; gUnk_8E1172C[i] != -1; i++)
        {
            if (gUnk_8E1172C[i] == gCardInfo.spellEffect)
            {
                gTrapEffectData.trapCardId = TRAP_GOBLIN_FAN;
                return TRUE;
            }
        }
    }
    return 0;
}

//8058540
static bool8 ConditionBadReactionToSimochi(void)
{
    if (GetTypeGroup(gTrapEffectData.originCardId) == TYPE_GROUP_SPELL)
    {
        u32 i;

        SetCardInfo(gTrapEffectData.originCardId);
        for (i = 0; gUnk_8E11738[i] != -1; i++)
        {
            if (gUnk_8E11738[i] == gCardInfo.spellEffect)
            {
                gTrapEffectData.trapCardId = TRAP_BAD_REACTION_TO_SIMOCHI;
                return TRUE;
            }
        }
    }
    return 0;
}

//805859C
static bool8 ConditionReverseTrap(void)
{
    u32 i;

    SetCardInfo(gTrapEffectData.originCardId);
    for (i = 0; gUnk_8E11744[i] != -1; i++)
    {
        if (gUnk_8E11744[i] == gCardInfo.spellEffect)
        {
            gTrapEffectData.trapCardId = TRAP_REVERSE_TRAP;
            return TRUE;
        }
    }
    return 0;
}

//80585F0
static u8 ConditionFakeTrap(void)
{
    return 0;
}

//80585F4
static bool8 ConditionAntiRaigeki(void)
{
    if (GetTypeGroup(gTrapEffectData.originCardId) == TYPE_GROUP_SPELL)
    {
        u32 i;

        SetCardInfo(gTrapEffectData.originCardId);
        for (i = 0; gUnk_8E11788[i] != -1; i++)
        {
            if (gUnk_8E11788[i] == gCardInfo.spellEffect)
            {
                gTrapEffectData.trapCardId = TRAP_ANTI_RAIGEKI;
                return TRUE;
            }
        }
    }
    return 0;
}

//8058650
static bool8 ConditionInfiniteDismissal(void)
{
    if (GetTypeGroup(gTrapEffectData.originCardId) == TYPE_GROUP_MONSTER)
    {
        gTrapEffectData.trapCardId = TRAP_INFINITE_DISMISSAL;
        return TRUE;
    }
    return 0;
}

//8058674
static bool8 ConditionTorrentialTribute(void)
{
    if (IsGodCard(gTrapEffectData.originCardId) == TRUE || GetTypeGroup(gTrapEffectData.originCardId) != TYPE_GROUP_MONSTER)
        return 0;

    gTrapEffectData.trapCardId = TRAP_TORRENTIAL_TRIBUTE;
    return TRUE;
}

//80586A0
static bool8 ConditionAmazonArchers(void)
{
    if (GetTypeGroup(gTrapEffectData.originCardId) == TYPE_GROUP_MONSTER)
    {
        gTrapEffectData.trapCardId = TRAP_AMAZON_ARCHERS;
        return TRUE;
    }
    return 0;
}

//80586C4
static bool8 ConditionDestinyBoard(void)
{
    return 0;
}

//80586C8
static bool8 ConditionSpiritMessageI(void)
{
    return 0;
}

//80586CC
static bool8 ConditionSpiritMessageN(void)
{
    return 0;
}

//80586D0
static bool8 ConditionSpiritMessageA(void)
{
    return 0;
}

//80586D4
static bool8 ConditionSpiritMessageL(void)
{
    return 0;
}

static bool8 ConditionDragonCaptureJar(void)
{
    return 0;
}

unsigned IsTrapTriggered (void) {
  unsigned char i;

  gTrapEffectData.trapCardId = 0;
  for (i = 0; i < MAX_ZONES_IN_ROW; i++)
  {
      gTrapEffectData.trapZoneCol = i;
      if (CheckTrapActivationConditions(gTurnZones[0][i]->id) == 1)
          return TRUE;
  }
  return FALSE;
}
