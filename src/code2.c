#include "global.h"

//TODO: rename file to duel_ai

static unsigned char g201CB3C;
static unsigned char sFiller201CB3D[2];
static unsigned char g201CB40;
static unsigned char sFiller201CB41[2];
static unsigned char g201CB44;

struct AI_Command
{
    u16 action; //actionID?
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
};

extern struct AI_Command sAI_Command;
extern const struct AI_Command gAED58[];


static u8 sub_801B5BC (u8, u16*);

void sub_803FD14(void);
void ActivateTrapEffect();
static void sub_800F830(void);


u32 sub_8019CE4 (void);

extern u8 gE00510[][6];
extern u8 gE00534[];
extern u8 gE00538[];
extern u8 gE0053F[];
extern u8 gE00546[];

extern u8 g80B0B20[];
extern u8 g80B0C20[];





static inline u16 foo2 (void) {
  return sAI_Command.unk2 & 0xF;
}

struct Bruhh
{
    u16 a;
    u16 b;
    u32 c;
};

/*struct Breh
{
    u16 a;
    u16 b;
    u32 c;
    u32 d;
    u32 e;
};*/

struct UnkStr //AI data?
{
    struct Duel duel;
    struct DuelDeck duelDecks[2];
    u16 lifePoints[2];
    u8 duelistStatus[2];
    u8 filler1A8[0x35A];
    struct Bruhh unk504[0x3B2];
    u16 unk2294;
    u16 unk2296; //unused?
    u32 unk2298;
    u32 unk229C;
    struct Bruhh unk22A0[2][2];
};

extern struct UnkStr *gUnk_8DFF6A4;
extern void (*g8DFF600[])(void);
extern void (*gUnk_8DFF6A8[])(void);
extern void (*gUnk_8DFF74C[])(void);
extern u8 (*gE00550[])(void);
u32 GetExodiaFlag(u16);

static void sub_800E0D4(void)
{
    sub_803FD14();
    g8DFF600[sAI_Command.action]();
}

static void sub_800E0F8(void)
{
    sub_803FD14();
    g8DFF55C[sAI_Command.action]();
}

static void sub_800E11C(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    LockMonsterCardsInRow(4);
}

static void sub_800E170(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    LockMonsterCardsInRow(4);
}

static void sub_800E1C4(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    LockMonsterCardsInRow(4);
}

static void sub_800E22C(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    LockMonsterCardsInRow(4);
}

static void sub_800E294(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;
    u8 row4 = sAI_Command.unk4 >> 4;
    u8 col4 = sAI_Command.unk4 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row4][col4], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    LockMonsterCardsInRow(4);
}

static void sub_800E324(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;
    u8 row4 = sAI_Command.unk4 >> 4;
    u8 col4 = sAI_Command.unk4 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row4][col4], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    LockMonsterCardsInRow(4);
}

static void sub_800E3B4(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;
    u8 row4 = sAI_Command.unk4 >> 4;
    u8 col4 = sAI_Command.unk4 & 0xF;
    u8 row5 = sAI_Command.unk5 >> 4;
    u8 col5 = sAI_Command.unk5 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row5][col5], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row4][col4], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    LockMonsterCardsInRow(4);
}

static void sub_800E460(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;
    u8 row4 = sAI_Command.unk4 >> 4;
    u8 col4 = sAI_Command.unk4 & 0xF;
    u8 row5 = sAI_Command.unk5 >> 4;
    u8 col5 = sAI_Command.unk5 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row5][col5], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row4][col4], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    LockMonsterCardsInRow(4);
}

static void sub_800E50C(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
}

static void sub_800E54C(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
}
//7
static void sub_800E58C(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    sub_803F8E0(4 - col2);
    HandleDuelAction();
    CheckGraveyardAndLoserFlags();
}

static void sub_800E5E4(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    sub_803F8E0(4 - col2);
    HandleDuelAction();
    CheckGraveyardAndLoserFlags();
}

static void sub_800E63C(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gZones[row3][col3]->isFaceUp = TRUE;
    SetDuelActionAttack(col3, 4 - col2);
    HandleDuelAction();
    CheckGraveyardAndLoserFlags();
}

static void sub_800E6B8(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gZones[row3][col3]->isFaceUp = TRUE;
    SetDuelActionAttack(col3, 4 - col2);
    HandleDuelAction();
    CheckGraveyardAndLoserFlags();
}

static void sub_800E734(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gTrapEffectData.unk2 = row2;
    gTrapEffectData.unk3 = col2;
    gTrapEffectData.id = gZones[row2][col2]->id;
    IsTrapTriggered();
    ActivateTrapEffect();
}

static void sub_800E794(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gTrapEffectData.unk2 = row2;
    gTrapEffectData.unk3 = col2;
    gTrapEffectData.id = gZones[row2][col2]->id;
    IsTrapTriggered();
    ActivateTrapEffect();
}

static void sub_800E7F4(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gTrapEffectData.unk2 = row2;
    gTrapEffectData.unk3 = col2;
    gTrapEffectData.id = gZones[row2][col2]->id;
    IsTrapTriggered();
    ActivateTrapEffect();
}

static void sub_800E854(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gTrapEffectData.unk2 = row2;
    gTrapEffectData.unk3 = col2;
    gTrapEffectData.id = gZones[row2][col2]->id;
    IsTrapTriggered();
    ActivateTrapEffect();
}

static void sub_800E8B4(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gMonEffect.id = gZones[row2][col2]->id;
    gMonEffect.row = row2;
    gMonEffect.zone = col2;
    ActivateMonsterEffect();
    if (gNotSure[TURN_PLAYER]->unkThree)
        LockMonsterCardsInRow(4);
}

static void sub_800E928(void) {
}

//discard card
static void sub_800E92C(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row2][col2], 0);
}

static void sub_800E958(void)
{

    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    gZones[row2][col2]->isDefending = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
}

static void sub_800E98C(void)
{
    sub_800E63C();
}

static void sub_800E998(void)
{
    sub_800E7F4();
}

static void sub_800E9A4(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row2][col2], 0);
}

static void sub_800E9D0(void)
{

    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    gZones[row2][col2]->isDefending = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
}

static void sub_800EA04(void)
{
    sub_800E6B8();
}

static void sub_800EA10(void)
{
    sub_800E854();
}

static void sub_800EA1C(void){}

static void sub_800EA20(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

static void sub_800EA68(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

static void sub_800EAB0(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

static void sub_800EAF8(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

static void sub_800EB40(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    gSpellEffectData.id = gZones[row2][col2]->id;
    gSpellEffectData.unk4 = row2;
    gSpellEffectData.unk5 = col2;
    gSpellEffectData.unk2 = row3;
    gSpellEffectData.unk3 = col3;
    ActivateSpellEffect();
    ClearZone(gZones[row2][col2]);
}

static void sub_800EB8C(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    gSpellEffectData.id = gZones[row2][col2]->id;
    gSpellEffectData.unk4 = row2;
    gSpellEffectData.unk5 = col2;
    gSpellEffectData.unk2 = row3;
    gSpellEffectData.unk3 = col3;
    ActivateSpellEffect();
    ClearZone(gZones[row2][col2]);
}

static void sub_800EBD8(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

static void sub_800EC20(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

static void sub_800EC68(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    gSpellEffectData.id = gZones[row2][col2]->id;
    gSpellEffectData.unk2 = row2;
    gSpellEffectData.unk3 = col2;
    ActivateSpellEffect();
    if (gNotSure[TURN_PLAYER]->unkThree)
        LockMonsterCardsInRow(4);
    ClearZone(gZones[row2][col2]);
}

static void sub_800ECC0(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    gSpellEffectData.id = gZones[row2][col2]->id;
    gSpellEffectData.unk2 = row2;
    gSpellEffectData.unk3 = col2;
    ActivateSpellEffect();
    ClearZone(gZones[row2][col2]);
}

static void sub_800ED00(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

static void sub_800ED48(void)
{
    u8 row2;
    u8 col2;
    u8 row4;
    u8 col4;
    u8 row5;
    u8 col5;

    row2 = sAI_Command.unk2 >> 4;
    col2 = foo2();
    row4 = sAI_Command.unk4 >> 4;
    col4 = sAI_Command.unk4 & 0xF;
    row5 = sAI_Command.unk5 >> 4;
    col5 = sAI_Command.unk5 & 0xF;

    if (GetRitualNumTributes(gZones[row2][col2]->id) == 2)
    {
        ClearZoneAndSendMonToGraveyard(gZones[row4][col4], 0);
        ClearZoneAndSendMonToGraveyard(gZones[row5][col5], 0);
    }
    gSpellEffectData.id = gZones[row2][col2]->id;
    gSpellEffectData.unk2 = row2;
    gSpellEffectData.unk3 = col2;
    ActivateSpellEffect();
    ClearZone(gZones[row2][col2]);
}

static void sub_800EDF8(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row2][col2], 0);
}

static void sub_800EE24(void)
{
    u8 i;

    gUnk_8DFF6A4->duel = gDuel;
    for (i = 0; i < 2; i++)
    {
        gUnk_8DFF6A4->duelDecks[i].cardsDrawn = gDuelDecks[i].cardsDrawn;
        gUnk_8DFF6A4->lifePoints[i] = gDuelLifePoints[i];
        gUnk_8DFF6A4->duelistStatus[i] = gDuelistStatus[i];
    }
}

static void sub_800EE94(void)
{
    u8 i;

    gDuel = gUnk_8DFF6A4->duel;
    for (i = 0; i < 2; i++)
    {
        gDuelDecks[i].cardsDrawn = gUnk_8DFF6A4->duelDecks[i].cardsDrawn;
        gDuelLifePoints[i] = gUnk_8DFF6A4->lifePoints[i];
        gDuelistStatus[i] = gUnk_8DFF6A4->duelistStatus[i];
    }
}

static u16 sub_800EF0C(void)
{
    u16 i;
    struct Bruhh r2;

    r2.a = 0;
    r2.c = 0;

    for (i = 0; i < gUnk_8DFF6A4->unk2294; i++)
    {
        if (gUnk_8DFF6A4->unk504[i].c > r2.c)
        {
            r2.c = gUnk_8DFF6A4->unk504[i].c;
            r2.a = gUnk_8DFF6A4->unk504[i].a;
        }
    }
    return r2.a;
}

static void sub_800EF7C(u8 sb)
{
    u16 i;
    struct Bruhh r2;

    r2.a = 0;
    r2.c = 0;

    for (i = 0; i < gUnk_8DFF6A4->unk2294; i++)
    {
        if (gUnk_8DFF6A4->unk504[i].c > r2.c)
        {
            r2.c = gUnk_8DFF6A4->unk504[i].c;
            r2.a = gUnk_8DFF6A4->unk504[i].a;
        }
    }
    gUnk_8DFF6A4->unk22A0[sb][1].a = r2.a;
    gUnk_8DFF6A4->unk22A0[sb][1].c = r2.c;
}
/*
static void sub_800F014(void)
{
    u16 i, r7, r4;

    for (i = 0; i < gUnk_8DFF6A4->unk2294; i++)
    {
        for (r7 = 0; r7 < 2; r7++)
        {
            for (r4 = 2; r4 > r7; r4--)
            {
                gUnk_8DFF6A4->unk22A0[r4][0].a = gUnk_8DFF6A4->unk22A0[]
                if (gUnk_8DFF6A4->unk504[i].c > r2.c)
            }
        }
    }
}*/

NAKED
static void sub_800F014(void)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #4\n\
	movs r2, #0\n\
	ldr r1, _0800F0B8\n\
	ldr r0, [r1]\n\
	ldr r3, _0800F0BC\n\
	adds r0, r0, r3\n\
	ldrh r0, [r0]\n\
	cmp r2, r0\n\
	bhs _0800F0EE\n\
	ldr r0, _0800F0C0\n\
	mov sl, r0\n\
_0800F034:\n\
	movs r7, #0\n\
	adds r1, r2, #1\n\
	str r1, [sp]\n\
	lsls r2, r2, #3\n\
	mov r8, r2\n\
	movs r2, #0\n\
	mov ip, r2\n\
_0800F042:\n\
	ldr r3, _0800F0B8\n\
	ldr r0, [r3]\n\
	movs r2, #0xa1\n\
	lsls r2, r2, #3\n\
	adds r1, r0, r2\n\
	add r1, r8\n\
	add r0, sl\n\
	add r0, ip\n\
	ldr r1, [r1]\n\
	ldr r0, [r0]\n\
	cmp r1, r0\n\
	bls _0800F0CC\n\
	movs r4, #2\n\
	cmp r4, r7\n\
	bls _0800F08A\n\
	mov sb, r3\n\
	ldr r6, _0800F0C4\n\
	movs r5, #0x10\n\
_0800F066:\n\
	mov r0, sb\n\
	ldr r1, [r0]\n\
	lsls r3, r4, #4\n\
	adds r2, r1, r3\n\
	adds r0, r1, r5\n\
	adds r0, r0, r6\n\
	ldrh r0, [r0]\n\
	adds r2, r2, r6\n\
	strh r0, [r2]\n\
	add r1, sl\n\
	adds r3, r1, r3\n\
	adds r1, r1, r5\n\
	ldr r0, [r1]\n\
	str r0, [r3]\n\
	subs r5, #0x10\n\
	subs r4, #1\n\
	cmp r4, r7\n\
	bhi _0800F066\n\
_0800F08A:\n\
	ldr r2, _0800F0B8\n\
	ldr r1, [r2]\n\
	mov r3, ip\n\
	adds r2, r1, r3\n\
	mov r3, r8\n\
	adds r0, r1, r3\n\
	ldr r3, _0800F0C8\n\
	adds r0, r0, r3\n\
	ldrh r0, [r0]\n\
	ldr r3, _0800F0C4\n\
	adds r2, r2, r3\n\
	strh r0, [r2]\n\
	mov r0, sl\n\
	adds r2, r1, r0\n\
	add r2, ip\n\
	movs r3, #0xa1\n\
	lsls r3, r3, #3\n\
	adds r1, r1, r3\n\
	add r1, r8\n\
	ldr r0, [r1]\n\
	str r0, [r2]\n\
	b _0800F0DA\n\
	.align 2, 0\n\
_0800F0B8: .4byte gUnk_8DFF6A4\n\
_0800F0BC: .4byte 0x00002294\n\
_0800F0C0: .4byte 0x000022A4\n\
_0800F0C4: .4byte 0x000022A0\n\
_0800F0C8: .4byte 0x00000504\n\
_0800F0CC:\n\
	cmp r1, r0\n\
	beq _0800F0DA\n\
	movs r0, #0x10\n\
	add ip, r0\n\
	adds r7, #1\n\
	cmp r7, #2\n\
	bls _0800F042\n\
_0800F0DA:\n\
	ldr r1, [sp]\n\
	lsls r0, r1, #0x10\n\
	lsrs r2, r0, #0x10\n\
	ldr r3, _0800F100\n\
	ldr r0, [r3]\n\
	ldr r1, _0800F104\n\
	adds r0, r0, r1\n\
	ldrh r0, [r0]\n\
	cmp r2, r0\n\
	blo _0800F034\n\
_0800F0EE:\n\
	add sp, #4\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0800F100: .4byte gUnk_8DFF6A4\n\
_0800F104: .4byte 0x00002294");
}

static void sub_800F108(void)
{
    u16 i;

    gUnk_8DFF6A4->unk2294 = 0;
    for (i = 0; i < 0x3B2; i++) //todo: use ARRAY_COUNT
    {
        gUnk_8DFF6A4->unk504[i].a = 0;
        gUnk_8DFF6A4->unk504[i].c = 0;
    }
}
/*
static void sub_800F158(void)
{
    u32 i, j;

    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {

        }
    }
}*/


NAKED
static void sub_800F158(void)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	movs r0, #0\n\
	ldr r1, _0800F190\n\
	mov ip, r1\n\
	ldr r7, _0800F194\n\
	movs r5, #0\n\
	ldr r6, _0800F198\n\
_0800F166:\n\
	movs r3, #0\n\
	adds r4, r0, #1\n\
	lsls r2, r0, #4\n\
_0800F16C:\n\
	mov r0, ip\n\
	ldr r1, [r0]\n\
	adds r0, r1, r2\n\
	adds r0, r0, r7\n\
	strh r5, [r0]\n\
	adds r1, r1, r6\n\
	adds r1, r1, r2\n\
	str r5, [r1]\n\
	adds r2, #8\n\
	adds r3, #1\n\
	cmp r3, #1\n\
	bls _0800F16C\n\
	adds r0, r4, #0\n\
	cmp r0, #2\n\
	bls _0800F166\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0800F190: .4byte gUnk_8DFF6A4\n\
_0800F194: .4byte 0x000022A0\n\
_0800F198: .4byte 0x000022A4");
}

NAKED
static void sub_800F19C(void)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	ldr r1, _0800F1DC\n\
	ands r2, r1\n\
	movs r3, #0\n\
	movs r6, #0\n\
	ldr r0, _0800F1E0\n\
	mov ip, r1\n\
	ldr r4, [r0]\n\
	ldr r0, _0800F1E4\n\
	adds r5, r4, r0\n\
	ldr r7, _0800F1E8\n\
_0800F1B2:\n\
	ldr r0, [r5]\n\
	cmp r0, r3\n\
	bls _0800F1C6\n\
	adds r3, r0, #0\n\
	adds r0, r4, r7\n\
	ldrh r1, [r0]\n\
	mov r0, ip\n\
	ands r0, r2\n\
	adds r2, r0, #0\n\
	orrs r2, r1\n\
_0800F1C6:\n\
	adds r4, #0x10\n\
	adds r5, #0x10\n\
	adds r6, #1\n\
	cmp r6, #2\n\
	bls _0800F1B2\n\
	lsls r0, r2, #0x10\n\
	lsrs r0, r0, #0x10\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0800F1DC: .4byte 0xFFFF0000\n\
_0800F1E0: .4byte gUnk_8DFF6A4\n\
_0800F1E4: .4byte 0x000022AC\n\
_0800F1E8: .4byte 0x000022A0");
}

static void sub_800F1EC(void)
{
    gUnk_8DFF6A4->unk2298 = 0;
    gUnk_8DFF6A4->unk229C = 0;
    gUnk_8DFF6A4->unk504[gUnk_8DFF6A4->unk2294].a = g2021BF8;
    gUnk_8DFF6A8[sAI_Command.action]();
}

static void sub_800F248(void)
{
    gUnk_8DFF74C[sAI_Command.action]();
    gUnk_8DFF6A4->unk504[gUnk_8DFF6A4->unk2294].c = gUnk_8DFF6A4->unk2298;
    gUnk_8DFF6A4->unk2294++;
}

// priority of discard action 
static void sub_800F298(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = foo2();
    u16 cardId = gZones[row2][col2]->id;

    SetCardInfo(cardId);
    if (gCardInfo.spellEffect == 2)
    {
        switch (sub_8045390(cardId))
        {
        case 0:
            if (GetExodiaFlag(cardId) && NumCardMatchesInRow(&gZones[row2][col2], cardId) < 2)
                gUnk_8DFF6A4->unk2298 = 0x7EDE89FE;
            else
                gUnk_8DFF6A4->unk2298 = 0x7EE0ACDF;
            break;
        case 1:
            gUnk_8DFF6A4->unk2298 = 0x7EE4F29F;
            break;
        case 2:
            gUnk_8DFF6A4->unk2298 = 0x7EE7157F;
            break;
        case 3:
            if (IsGodCard(cardId) == TRUE)
                gUnk_8DFF6A4->unk2298 = 0x7EDE89FF;
            else
                gUnk_8DFF6A4->unk2298 = 0x7EE9385F;
            break;
        default:
            gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
            return;
        }
        gStatMod.card = gZones[row2][col2]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gZones[row2][col2]);
        SetFinalStat(&gStatMod);
        gUnk_8DFF6A4->unk2298 += 0xFFFE - gCardInfo.atk;
        gUnk_8DFF6A4->unk2298 += 0xFFFE - gCardInfo.def;
    }
    else
        gUnk_8DFF6A4->unk2298 = 0x7EE2CFBF;

}

static void sub_800F46C(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = foo2();
    u16 cardId = gZones[row2][col2]->id;

    SetCardInfo(cardId);
    if (gCardInfo.spellEffect == 2)
    {
        switch (sub_8045390(cardId))
        {
        case 0:
            if (GetExodiaFlag(cardId) && NumCardMatchesInRow(&gZones[row2][col2], cardId) < 2)
                gUnk_8DFF6A4->unk2298 = 0x7EDE89FE;
            else
                gUnk_8DFF6A4->unk2298 = 0x7EE0ACDF;
            break;
        case 1:
            gUnk_8DFF6A4->unk2298 = 0x7EE4F29F;
            break;
        case 2:
            gUnk_8DFF6A4->unk2298 = 0x7EE7157F;
            break;
        case 3:
            if (IsGodCard(cardId) == TRUE)
                gUnk_8DFF6A4->unk2298 = 0x7EDE89FF;
            else
                gUnk_8DFF6A4->unk2298 = 0x7EE9385F;
            break;
        default:
            gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
            return;
        }
        gStatMod.card = gZones[row2][col2]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gZones[row2][col2]);
        SetFinalStat(&gStatMod);
        gUnk_8DFF6A4->unk2298 += 0xFFFE - gCardInfo.atk;
        gUnk_8DFF6A4->unk2298 += 0xFFFE - gCardInfo.def;
    }
    else
        gUnk_8DFF6A4->unk2298 = 0x7EE2CFBF;
}

static void sub_800F640(void)
{
    u8 row2 = sAI_Command.unk2 >> 4;
    u8 col2 = sAI_Command.unk2 & 0xF;
    u8 row3 = sAI_Command.unk3 >> 4;
    u8 col3 = sAI_Command.unk3 & 0xF;

    SetCardInfo(gZones[row2][col2]->id);
    if (gCardInfo.unk1E)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else if (IsUnlockedMonsterCard(gZones[row2][col2]) != 1)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else if (sub_8045390(gZones[row2][col2]->id) != 0)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else if (GetExodiaFlag(gZones[row2][col2]->id) && NumCardMatchesInRow(gZones[row2], gZones[row2][col2]->id) < 2)
        sub_800F830();
    else if (gZones[row3][col3]->id == CARD_NONE)
        gUnk_8DFF6A4->unk2298 = 0x7F3D9A1C;
    else if (gZones[row3][col3]->isLocked)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else if (GetTypeGroup(gZones[row3][col3]->id) != 1)
        gUnk_8DFF6A4->unk2298 = 0x7F3D9A1C;
    else
    {
        u16 atk;
        gStatMod.card = gZones[row2][col2]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gZones[row2][col2]);
        SetFinalStat(&gStatMod);
        atk = gCardInfo.atk;
        gStatMod.card = gZones[row3][col3]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gZones[row3][col3]);
        SetFinalStat(&gStatMod);
        if (atk <= gCardInfo.atk)
            gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
        else
            gUnk_8DFF6A4->unk2298 = 0x7F32EBBC;
    }
}

static void sub_800F830 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  if (gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7F1D8EFC;
  else if (gZones[row3][col3]->isLocked)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (GetTypeGroup(gZones[row3][col3]->id) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7F1D8EFC;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else
      gUnk_8DFF6A4->unk2298 = 0x7F12E09C;
  }
}

static void sub_800F95C (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row2][col2]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_8045390(gZones[row2][col2]->id))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7F3D9A1C;
  else if (gZones[row3][col3]->isLocked)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (GetTypeGroup(gZones[row3][col3]->id) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7F3D9A1C;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else
        gUnk_8DFF6A4->unk2298 = 0x7F32EBBC;
  }
}

static void sub_800FB00(void)
{
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;

  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row2][col2]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_8045390(gZones[row2][col2]->id) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row3][col3]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else
      gUnk_8DFF6A4->unk2298 = 0x7F5DA53C;
  }
}

static void sub_800FC64 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row2][col2]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_8045390(gZones[row2][col2]->id) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row3][col3]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else
      gUnk_8DFF6A4->unk2298 = 0x7F5DA53C;
  }
}

static void sub_800FDC8 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  u8 row4 = sAI_Command.unk4 >> 4;
  u8 col4 = sAI_Command.unk4 & 0xF;

  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row2][col2]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_8045390(gZones[row2][col2]->id) != 2)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row3][col3]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row4][col4]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      gStatMod.card = gZones[row4][col4]->id;
      gStatMod.field = gDuel.field;
      gStatMod.stage = GetFinalStage(gZones[row4][col4]);
      SetFinalStat(&gStatMod);
      if (atk <= gCardInfo.atk)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      else
        gUnk_8DFF6A4->unk2298 = 0x7F7DB05C;
    }
  }
}

static void sub_800FFB0 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  u8 row4 = sAI_Command.unk4 >> 4;
  u8 col4 = sAI_Command.unk4 & 0xF;

  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row2][col2]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_8045390(gZones[row2][col2]->id) != 2)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row3][col3]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row4][col4]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      gStatMod.card = gZones[row4][col4]->id;
      gStatMod.field = gDuel.field;
      gStatMod.stage = GetFinalStage(gZones[row4][col4]);
      SetFinalStat(&gStatMod);
      if (atk <= gCardInfo.atk)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      else
        gUnk_8DFF6A4->unk2298 = 0x7F7DB05C;
    }
  }
}

static void sub_8010198 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  u8 row4 = sAI_Command.unk4 >> 4;
  u8 col4 = sAI_Command.unk4 & 0xF;
  u8 row5 = sAI_Command.unk5 >> 4;
  u8 col5 = sAI_Command.unk5 & 0xF;

  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row2][col2]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_8045390(gZones[row2][col2]->id) != 3)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row3][col3]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row4][col4]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      gStatMod.card = gZones[row4][col4]->id;
      gStatMod.field = gDuel.field;
      gStatMod.stage = GetFinalStage(gZones[row4][col4]);
      SetFinalStat(&gStatMod);
      if (atk <= gCardInfo.atk)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      else {
        gStatMod.card = gZones[row5][col5]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gZones[row5][col5]);
        SetFinalStat(&gStatMod);
        if (atk <= gCardInfo.atk)
          gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
        else
          gUnk_8DFF6A4->unk2298 = 0x7F7DB05C;
      }
    }
  }
}

static void sub_80103DC (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  u8 row4 = sAI_Command.unk4 >> 4;
  u8 col4 = sAI_Command.unk4 & 0xF;
  u8 row5 = sAI_Command.unk5 >> 4;
  u8 col5 = sAI_Command.unk5 & 0xF;

  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row2][col2]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_8045390(gZones[row2][col2]->id) != 3)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row3][col3]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (IsUnlockedMonsterCard(gZones[row4][col4]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      gStatMod.card = gZones[row4][col4]->id;
      gStatMod.field = gDuel.field;
      gStatMod.stage = GetFinalStage(gZones[row4][col4]);
      SetFinalStat(&gStatMod);
      if (atk <= gCardInfo.atk)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      else {
        gStatMod.card = gZones[row5][col5]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(gZones[row5][col5]);
        SetFinalStat(&gStatMod);
        if (atk <= gCardInfo.atk)
          gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
        else
          gUnk_8DFF6A4->unk2298 = 0x7F7DB05C;
      }
    }
  }
}

static void sub_8010620 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u16 atk;
  u16 def;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row2][col2]);
  SetFinalStat(&gStatMod);

  if (gCardInfo.unk1E) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  else {
    atk = gCardInfo.atk;
    def = gCardInfo.def;
    if (!atk) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
      return;
    }
  }
  if (!GetNumCardsInRow(1)) {
    if (atk > def)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89FD;
    else
      gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
  }
  else {
    u8 i;
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id != CARD_NONE) {
        if (gZones[1][i]->isFaceUp) {
          gStatMod.card = gZones[1][i]->id;
          gStatMod.field = gDuel.field;
          gStatMod.stage = GetFinalStage(gZones[1][i]);
          SetFinalStat(&gStatMod);
          if (atk <= gCardInfo.atk) {
            gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
            return;
          }
          else if (def >= gCardInfo.atk) {
            gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
            return;
          }
        }
        else {
          gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
          return;
        }
      }
    }
    gUnk_8DFF6A4->unk2298 = 0x7EDE89FD;
  }
}

static void sub_8010798 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u16 atk;
  u16 def;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row2][col2]);
  SetFinalStat(&gStatMod);

  if (!gCardInfo.unk1E) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  else {
    atk = gCardInfo.atk;
    def = gCardInfo.def;
    if (!atk) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
      return;
    }
  }
  if (!GetNumCardsInRow(1)) {
    if (atk > def)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89FD;
    else
      gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
  }
  else {
    u8 i;
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id != CARD_NONE) {
        if (gZones[1][i]->isFaceUp) {
          gStatMod.card = gZones[1][i]->id;
          gStatMod.field = gDuel.field;
          gStatMod.stage = GetFinalStage(gZones[1][i]);
          SetFinalStat(&gStatMod);
          if (atk <= gCardInfo.atk) {
            gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
            return;
          }
          else if (def >= gCardInfo.atk) {
            gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
            return;
          }
        }
        else {
          gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
          return;
        }
      }
    }
    gUnk_8DFF6A4->unk2298 = 0x7EDE89FD;
  }
}

static void sub_8010910 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  if (gCardInfo.unk1E || !gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    gUnk_8DFF6A4->unk2298 = 0x7EF1C3F6;
    gUnk_8DFF6A4->unk2298 += gCardInfo.atk;
  }
}

static void sub_80109A8 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  if (!gCardInfo.unk1E || !gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    gUnk_8DFF6A4->unk2298 = 0x7EF1C3F6;
    gUnk_8DFF6A4->unk2298 += gCardInfo.atk;
  }
}

static void sub_8010A40 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    gUnk_8DFF6A4->unk2298 = gCardInfo.atk + gCardInfo.def;
    gUnk_8DFF6A4->unk229C = gZones[row3][col3]->id;
  }
}

static void sub_8010B08 (void) {
  u8 col2;
  u8 row2;
  u8 row3;
  u8 col3;
  row2 = sAI_Command.unk2 >> 4;
  col2 = sAI_Command.unk2 & 0xF;
  row3 = sAI_Command.unk3 >> 4;
  col3 = sAI_Command.unk3 & 0xF;
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (IsDuelOver() == 1) {
    if (GetDuelistStatus(WhoseTurn()) == 2)
      gUnk_8DFF6A4->unk2298 = 0;
    else
      gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  }
  else if (gZones[row3][col3]->id != CARD_NONE) { //_08010B94
    if (gUnk_8DFF6A4->unk229C == gZones[row3][col3]->id)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      u32 temp;
      gStatMod.card = gZones[row2][col2]->id;
      gStatMod.field = gDuel.field;
      gStatMod.stage = GetFinalStage(gZones[row2][col2]);
      SetFinalStat(&gStatMod);
      temp = gUnk_8DFF6A4->unk2298;
      temp -= gCardInfo.atk;
      temp += 0x7EF0A113;
      gUnk_8DFF6A4->unk2298 = temp;
    }
  }
  else if (gZones[row2][col2]->id != CARD_NONE) { //_08010BE0
    u32 temp;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    temp = gUnk_8DFF6A4->unk2298;
    temp -= gCardInfo.atk;
    temp += 0x7EF0A113;
    gUnk_8DFF6A4->unk2298 = temp;
  }
  else {
    int a = GetNumCardsInRow(row2);
    if (a > GetNumCardsInRow(row3))
      gUnk_8DFF6A4->unk2298 += 0x7EEE8FA5;
    else
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  }
}

static void sub_8010C78 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    gUnk_8DFF6A4->unk2298 = gCardInfo.atk + gCardInfo.def;
    gUnk_8DFF6A4->unk229C = gZones[row3][col3]->id;
  }
}

static void sub_8010D40 (void) {
  u8 col2;
  u8 row2;
  u8 row3;
  u8 col3;
  row2 = sAI_Command.unk2 >> 4;
  col2 = sAI_Command.unk2 & 0xF;
  row3 = sAI_Command.unk3 >> 4;
  col3 = sAI_Command.unk3 & 0xF;
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (IsDuelOver() == 1) {
    if (GetDuelistStatus(WhoseTurn()) == 2)
      gUnk_8DFF6A4->unk2298 = 0;
    else
      gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  }
  else if (gZones[row3][col3]->id != CARD_NONE) { //_08010B94
    if (gUnk_8DFF6A4->unk229C == gZones[row3][col3]->id)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      u32 temp;
      gStatMod.card = gZones[row2][col2]->id;
      gStatMod.field = gDuel.field;
      gStatMod.stage = GetFinalStage(gZones[row2][col2]);
      SetFinalStat(&gStatMod);
      temp = gUnk_8DFF6A4->unk2298;
      temp -= gCardInfo.atk;
      temp += 0x7EF0A113;
      gUnk_8DFF6A4->unk2298 = temp;
    }
  }
  else if (gZones[row2][col2]->id != CARD_NONE) { //_08010BE0
    u32 temp;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    temp = gUnk_8DFF6A4->unk2298;
    temp -= gCardInfo.atk;
    temp += 0x7EF0A113;
    gUnk_8DFF6A4->unk2298 = temp;
  }
  else {
    int a = GetNumCardsInRow(row2);
    if (a > GetNumCardsInRow(row3))
      gUnk_8DFF6A4->unk2298 += 0x7EEE8FA5;
    else
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  }
}

static void sub_8010EB0 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  if (gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (!gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = gCardInfo.atk + 0x7EEB5B4A;
}

static void sub_8010F58 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (!gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = gCardInfo.atk + 0x7EEB5B4A;
}

static void sub_8011000 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801101C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89FA;
}

static void sub_8011038 (void) {}
static void sub_801103C (void) {}

static void sub_8011040 (void) {
  if (gUnk_8DFF6A4->unk2298 != 0x7EDE89F9)
    gUnk_8DFF6A4->unk2298 += GetTotalAtkAndDefInRow(2);
}

static void sub_8011078 (void) {
  if (gUnk_8DFF6A4->unk2298 != 0x7EDE89F9)
    gUnk_8DFF6A4->unk2298 += GetTotalAtkAndDefInRow(2);
}

static void sub_80110B0 (void) {
  if (gUnk_8DFF6A4->unk2298 != 0x7EDE89F9)
    gUnk_8DFF6A4->unk2298 += GetTotalAtkAndDefInRow(2);
}

static void sub_80110E8 (void) {
  if (gUnk_8DFF6A4->unk2298 != 0x7EDE89F9)
    gUnk_8DFF6A4->unk2298 += GetTotalAtkAndDefInRow(2);
}

static void sub_8011120 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89FC;
}

static void sub_8011188 (void) {}
static void sub_801118C (void) {}

//7, +1C
static void sub_8011190 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9 || IsDuelOver() != 1)
    return;
  if (GetDuelistStatus(WhoseTurn()) == 2)
    gUnk_8DFF6A4->unk2298 = 0;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
}

static void sub_80111EC (void) {}

static void sub_80111F0 (void) {
  sub_8010910();
}

static inline void sub_80111FC_inline (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9 || IsDuelOver() != 1)
    return;
  if (GetDuelistStatus(WhoseTurn()) == 2)
    gUnk_8DFF6A4->unk2298 = 0;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
}

static void sub_80111FC (void) {
  sub_80111FC_inline();
}

static void sub_801125C (void) {
  sub_8010A40();
}

static void sub_8011268 (void) {
  sub_8010B08();
}

static void sub_8011274 (void) {
  sub_8010EB0();
}

static void sub_8011280 (void) {}
static void sub_8011284 (void) {}

static void sub_8011288 (void) {
  if (gUnk_8DFF6A4->unk2298 != 0x7EDE89F9)
    gUnk_8DFF6A4->unk2298 += GetTotalAtkAndDefInRow(2);
}

static void sub_80112C0 (void) {
  if (gUnk_8DFF6A4->unk2298 != 0x7EDE89F9)
    gUnk_8DFF6A4->unk2298 += GetTotalAtkAndDefInRow(2);
}

static void sub_80112F8 (void) {
  if (gUnk_8DFF6A4->unk2298 != 0x7EDE89F9)
    gUnk_8DFF6A4->unk2298 += GetTotalAtkAndDefInRow(2);
}

static void sub_8011330 (void) {
  if (gUnk_8DFF6A4->unk2298 != 0x7EDE89F9)
    gUnk_8DFF6A4->unk2298 += GetTotalAtkAndDefInRow(2);
}

static void sub_8011368 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89FC;
}

static void sub_80113D0 (void) {}
static void sub_80113D4 (void) {}

static void sub_80113D8 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9 || IsDuelOver() != 1)
    return;
  if (GetDuelistStatus(WhoseTurn()) == 2)
    gUnk_8DFF6A4->unk2298 = 0;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
}

static void sub_8011434 (void) {
  sub_80109A8();
}

static void sub_8011440 (void) {
  sub_80111FC_inline();
}

static void sub_80114A0 (void) {
  sub_8010C78();
}

static void sub_80114AC (void) {
  sub_8010D40();
}

static void sub_80114B8 (void) {}

static void sub_80114BC (void) {
  sub_8010F58();
}

static void sub_80114C8 (void) {}

static void sub_80114CC (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  // ^these 2 aren't used, but they cause an instruction swap
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  if (gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B3F;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8011528 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  if (gZones[row2][col2]->id != DESTINY_BOARD && !NumCardMatchesInRow(gZones[3], DESTINY_BOARD))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (NumCardMatchesInRow(gZones[3], gZones[row2][col2]->id) > 0)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B43;
  else if (GetFINAL_Flag(gZones[row3][col3]->id) > 0)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B42;
}

static void sub_8011638 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  // ^these 2 aren't used, but they cause an instruction swap
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  if (gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B3F;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8011694 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  // ^these 2 aren't used, but they cause an instruction swap
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  if (gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFF8;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80116F0 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E && gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFF7;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8011778 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gZones[row3][col3]->id != CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFF7;
}

static void sub_801181C (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  // ^these 2 aren't used, but they cause an instruction swap
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  if (gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFF6;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8011878 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  if (gZones[row2][col2]->id == JAM_BREEDING_MACHINE) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  if (gZones[row2][col2]->id == MESSENGER_OF_PEACE) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80118E4 (void) {}

static void sub_80118E8 (void) {
  if (GetFINAL_Flags() == FLAG_FINAL_ALL)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
}

static void sub_8011910 (void) {}
static void sub_8011914 (void) {}
static void sub_8011918 (void) {}
static void sub_801191C (void) {}
static void sub_8011920 (void) {}

static void sub_8011924 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8011940 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  gStatMod.card = gZones[row3][col3]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row3][col3]);
  SetFinalStat(&gStatMod);
  gUnk_8DFF6A4->unk2298 = gCardInfo.atk + gCardInfo.def;
}

static void sub_80119AC (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  gStatMod.card = gZones[row3][col3]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row3][col3]);
  SetFinalStat(&gStatMod);
  if (gUnk_8DFF6A4->unk2298 < gCardInfo.atk + gCardInfo.def)
    gUnk_8DFF6A4->unk2298 += 0x7F08323B;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8011A30 (void) {
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  if (gZones[row3][col3]->id == HARPIE_LADY)
    gUnk_8DFF6A4->unk2298 = 0x7FF55169;
  else if (gZones[row3][col3]->id == CYBER_HARPIE)
    gUnk_8DFF6A4->unk2298 = 0x7FF55169;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

// check whether to ritual summon a monster (only if attack is higher than components?)
static void sub_8011AB0 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row4 = sAI_Command.unk4 >> 4;
  u8 col4 = sAI_Command.unk4 & 0xF;
  u8 row5 = sAI_Command.unk5 >> 4;
  u8 col5 = sAI_Command.unk5 & 0xF;
  u16 ritualAtk;
  u8 ritualEffect;
  SetCardInfo(gZones[row2][col2]->id);
  ritualEffect = gCardInfo.ritualEffect;
  gStatMod.card = gRitualComponents[ritualEffect][1];
  gStatMod.field = gDuel.field;
  gStatMod.stage = 0;
  SetFinalStat(&gStatMod);
  ritualAtk = gCardInfo.atk;

  gStatMod.card = gZones[row4][col4]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row4][col4]);
  SetFinalStat(&gStatMod);
  if (ritualAtk <= gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u32 temp;
    gUnk_8DFF6A4->unk2298 = 0xFFFE - gCardInfo.atk;
    gStatMod.card = gZones[row5][col5]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row5][col5]);
    SetFinalStat(&gStatMod);
    if (ritualAtk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      u32 temp = gUnk_8DFF6A4->unk2298;
      temp -= gCardInfo.atk;
      temp += 0x7FF42E87;
      gUnk_8DFF6A4->unk2298 = temp;
    }
  }
}

static void sub_8011C04 (void) {
  u8 zones[3];
  u8 ritualId;
  u16 ritualAtk;
  if (sub_804B144(zones, gRitualComponents[29]) == TRUE)
    ritualId = 29;
  else if (sub_804B144(zones, gRitualComponents[28]) == TRUE)
    ritualId = 28;
  else if (sub_804B144(zones, gRitualComponents[27]) == TRUE)
    ritualId = 27;
  else if (sub_804B144(zones, gRitualComponents[5]) == TRUE)
    ritualId = 5;
  else {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  gStatMod.card = gRitualComponents[ritualId][1];
  gStatMod.field = gDuel.field;
  gStatMod.stage = 0;
  SetFinalStat(&gStatMod);
  ritualAtk = gCardInfo.atk;

  gStatMod.card = gZones[2][zones[1]]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[2][zones[1]]);
  SetFinalStat(&gStatMod);
  if (ritualAtk <= gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u32 temp;
    gUnk_8DFF6A4->unk2298 = 0xFFFE - gCardInfo.atk;
    gStatMod.card = gZones[2][zones[2]]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[2][zones[2]]);
    SetFinalStat(&gStatMod);
    if (ritualAtk < gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      u32 temp = gUnk_8DFF6A4->unk2298;
      temp -= gCardInfo.atk;
      temp += 0x7FF42E87;
      gUnk_8DFF6A4->unk2298 = temp;
    }
  }
}

// check whether to activate crush card
static void sub_8011D80 (void) {
  u32 numCards = 0;
  u8 i;
  for (i = 0; i < 5; i++) {
    struct DuelCard* zone = gZones[1][i];
    if (zone->id == CARD_NONE)
      continue;
    if (IsGodCard(zone->id) == TRUE)
      continue;
    if (IsCardFaceUp(zone) != TRUE)
      continue;
    gStatMod.card = zone->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(zone);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk >= 1500)
      numCards++;
  }
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}
/*
// regswap solved by making this static inline and calling it (there's still a stack swap)
static void sub_8011E44 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row4 = sAI_Command.unk4 >> 4;
  u8 col4 = sAI_Command.unk4 & 0xF;
  u8 row5 = sAI_Command.unk5 >> 4;
  u8 col5 = sAI_Command.unk5 & 0xF;
  u16 ritualAtk;
  u8 ritualEffect;
  SetCardInfo(gZones[row2][col2]->id);
  ritualEffect = gCardInfo.ritualEffect;
  if (gZones[row4][col4]->id != gRitualComponents[ritualEffect][2]) {
    if (gZones[row4][col4]->id != gRitualComponents[ritualEffect][3]) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      return;
    }
    else if (gZones[row5][col5]->id != gRitualComponents[ritualEffect][2]) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      return;
    }
  }
  else if (gZones[row5][col5]->id != gRitualComponents[ritualEffect][3]) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  //_08011F4C
  gStatMod.card = gRitualComponents[ritualEffect][1];
  gStatMod.field = gDuel.field;
  gStatMod.stage = 0;
  SetFinalStat(&gStatMod);
  ritualAtk = gCardInfo.atk;

  gStatMod.card = gZones[row4][col4]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row4][col4]);
  SetFinalStat(&gStatMod);
  if (ritualAtk < gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u32 temp;
    gUnk_8DFF6A4->unk2298 = 0xFFFE - gCardInfo.atk;
    gStatMod.card = gZones[row5][col5]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row5][col5]);
    SetFinalStat(&gStatMod);
    if (ritualAtk < gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      u32 temp = gUnk_8DFF6A4->unk2298;
      temp -= gCardInfo.atk;
      temp += 0x7FF42E87;
      gUnk_8DFF6A4->unk2298 = temp;
    }
  }
}*/

NAKED
static void sub_8011E44 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0xc\n\
	ldr r2, _08011EC4\n\
	ldrb r0, [r2, #2]\n\
	lsrs r4, r0, #4\n\
	movs r1, #0xf\n\
	adds r3, r1, #0\n\
	ands r3, r0\n\
	ldrb r0, [r2, #4]\n\
	lsrs r5, r0, #4\n\
	mov sl, r5\n\
	adds r7, r1, #0\n\
	ands r7, r0\n\
	ldrb r0, [r2, #5]\n\
	lsrs r2, r0, #4\n\
	mov sb, r2\n\
	adds r5, r1, #0\n\
	ands r5, r0\n\
	ldr r0, _08011EC8\n\
	mov r8, r0\n\
	lsls r0, r4, #2\n\
	adds r0, r0, r4\n\
	adds r0, r0, r3\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldr r0, [r0]\n\
	ldrh r0, [r0]\n\
	bl SetCardInfo\n\
	ldr r0, _08011ECC\n\
	ldrb r0, [r0, #0x1d]\n\
	mov ip, r0\n\
	mov r1, sl\n\
	lsls r0, r1, #2\n\
	add r0, sl\n\
	adds r0, r0, r7\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldr r1, [r0]\n\
	ldr r6, _08011ED0\n\
	mov r2, ip\n\
	lsls r4, r2, #3\n\
	adds r0, r6, #4\n\
	adds r0, r4, r0\n\
	ldrh r1, [r1]\n\
	ldrh r3, [r0]\n\
	cmp r1, r3\n\
	beq _08011F14\n\
	adds r0, r6, #6\n\
	adds r0, r4, r0\n\
	ldrh r0, [r0]\n\
	cmp r1, r0\n\
	beq _08011EE0\n\
	ldr r0, _08011ED4\n\
	ldr r0, [r0]\n\
	ldr r4, _08011ED8\n\
	adds r0, r0, r4\n\
	ldr r1, _08011EDC\n\
	b _08012044\n\
	.align 2, 0\n\
_08011EC4: .4byte 0x02021C00\n\
_08011EC8: .4byte gZones\n\
_08011ECC: .4byte gCardInfo\n\
_08011ED0: .4byte gRitualComponents\n\
_08011ED4: .4byte gUnk_8DFF6A4\n\
_08011ED8: .4byte 0x00002298\n\
_08011EDC: .4byte 0x7EDE89F9\n\
_08011EE0:\n\
	lsls r1, r5, #2\n\
	mov r5, sb\n\
	lsls r2, r5, #2\n\
	adds r0, r2, r5\n\
	lsls r0, r0, #2\n\
	adds r0, r1, r0\n\
	add r0, r8\n\
	ldr r0, [r0]\n\
	ldrh r0, [r0]\n\
	str r1, [sp, #4]\n\
	str r2, [sp, #8]\n\
	cmp r0, r3\n\
	beq _08011F4C\n\
	ldr r0, _08011F08\n\
	ldr r0, [r0]\n\
	ldr r1, _08011F0C\n\
	adds r0, r0, r1\n\
	ldr r1, _08011F10\n\
	b _08012044\n\
	.align 2, 0\n\
_08011F08: .4byte gUnk_8DFF6A4\n\
_08011F0C: .4byte 0x00002298\n\
_08011F10: .4byte 0x7EDE89F9\n\
_08011F14:\n\
	lsls r2, r5, #2\n\
	mov r5, sb\n\
	lsls r3, r5, #2\n\
	adds r0, r3, r5\n\
	lsls r0, r0, #2\n\
	adds r0, r2, r0\n\
	add r0, r8\n\
	ldr r1, [r0]\n\
	adds r0, r6, #6\n\
	adds r0, r4, r0\n\
	ldrh r1, [r1]\n\
	str r2, [sp, #4]\n\
	str r3, [sp, #8]\n\
	ldrh r0, [r0]\n\
	cmp r1, r0\n\
	beq _08011F4C\n\
	ldr r0, _08011F40\n\
	ldr r0, [r0]\n\
	ldr r1, _08011F44\n\
	adds r0, r0, r1\n\
	ldr r1, _08011F48\n\
	b _08012044\n\
	.align 2, 0\n\
_08011F40: .4byte gUnk_8DFF6A4\n\
_08011F44: .4byte 0x00002298\n\
_08011F48: .4byte 0x7EDE89F9\n\
_08011F4C:\n\
	ldr r4, _08011FB4\n\
	ldr r0, _08011FB8\n\
	mov r2, ip\n\
	lsls r1, r2, #3\n\
	adds r0, #2\n\
	adds r1, r1, r0\n\
	ldrh r0, [r1]\n\
	movs r1, #0\n\
	strh r0, [r4]\n\
	ldr r0, _08011FBC\n\
	adds r0, #0xf0\n\
	mov r8, r0\n\
	ldrb r0, [r0]\n\
	strb r0, [r4, #2]\n\
	strb r1, [r4, #3]\n\
	adds r0, r4, #0\n\
	bl SetFinalStat\n\
	ldr r6, _08011FC0\n\
	ldrh r5, [r6, #0x12]\n\
	str r5, [sp]\n\
	mov r1, sl\n\
	lsls r0, r1, #2\n\
	add r0, sl\n\
	adds r0, r0, r7\n\
	lsls r0, r0, #2\n\
	ldr r2, _08011FC4\n\
	adds r0, r0, r2\n\
	ldr r1, [r0]\n\
	ldrh r1, [r1]\n\
	strh r1, [r4]\n\
	mov r5, r8\n\
	ldrb r1, [r5]\n\
	strb r1, [r4, #2]\n\
	ldr r0, [r0]\n\
	bl GetFinalStage\n\
	strb r0, [r4, #3]\n\
	adds r0, r4, #0\n\
	bl SetFinalStat\n\
	ldr r0, [sp]\n\
	ldrh r1, [r6, #0x12]\n\
	cmp r0, r1\n\
	bhs _08011FD4\n\
	ldr r0, _08011FC8\n\
	ldr r0, [r0]\n\
	ldr r2, _08011FCC\n\
	adds r0, r0, r2\n\
	ldr r1, _08011FD0\n\
	b _08012044\n\
	.align 2, 0\n\
_08011FB4: .4byte gStatMod\n\
_08011FB8: .4byte gRitualComponents\n\
_08011FBC: .4byte gDuel\n\
_08011FC0: .4byte gCardInfo\n\
_08011FC4: .4byte gZones\n\
_08011FC8: .4byte gUnk_8DFF6A4\n\
_08011FCC: .4byte 0x00002298\n\
_08011FD0: .4byte 0x7EDE89F9\n\
_08011FD4:\n\
	ldr r5, _08012020\n\
	ldr r1, [r5]\n\
	ldr r0, _08012024\n\
	adds r1, r1, r0\n\
	ldrh r2, [r6, #0x12]\n\
	ldr r0, _08012028\n\
	subs r0, r0, r2\n\
	str r0, [r1]\n\
	ldr r0, [sp, #8]\n\
	add r0, sb\n\
	lsls r0, r0, #2\n\
	ldr r1, [sp, #4]\n\
	adds r0, r1, r0\n\
	ldr r2, _0801202C\n\
	adds r0, r0, r2\n\
	ldr r1, [r0]\n\
	ldrh r1, [r1]\n\
	strh r1, [r4]\n\
	mov r2, r8\n\
	ldrb r1, [r2]\n\
	strb r1, [r4, #2]\n\
	ldr r0, [r0]\n\
	bl GetFinalStage\n\
	strb r0, [r4, #3]\n\
	adds r0, r4, #0\n\
	bl SetFinalStat\n\
	ldr r4, [sp]\n\
	ldrh r0, [r6, #0x12]\n\
	cmp r4, r0\n\
	bhs _08012034\n\
	ldr r0, [r5]\n\
	ldr r1, _08012024\n\
	adds r0, r0, r1\n\
	ldr r1, _08012030\n\
	b _08012044\n\
	.align 2, 0\n\
_08012020: .4byte gUnk_8DFF6A4\n\
_08012024: .4byte 0x00002298\n\
_08012028: .4byte 0x0000FFFE\n\
_0801202C: .4byte gZones\n\
_08012030: .4byte 0x7EDE89F9\n\
_08012034:\n\
	ldr r0, [r5]\n\
	ldr r2, _08012058\n\
	adds r0, r0, r2\n\
	ldr r1, [r0]\n\
	ldrh r2, [r6, #0x12]\n\
	subs r1, r1, r2\n\
	ldr r4, _0801205C\n\
	adds r1, r1, r4\n\
_08012044:\n\
	str r1, [r0]\n\
	add sp, #0xc\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08012058: .4byte 0x00002298\n\
_0801205C: .4byte 0x7FF42E87");
}

static void sub_8012060 (void) {
  u32 numCards = 0;
  u8 i;
  for (i = 0; i < 5; i++) {
    struct DuelCard* zone = gZones[1][i];
    if (zone->id == CARD_NONE)
      continue;
    if (IsGodCard(zone->id) == TRUE)
      continue;
    if (IsCardFaceUp(zone) != TRUE)
      continue;
    SetCardInfo(zone->id);
    if (gCardInfo.type == TYPE_WARRIOR)
      numCards++;
  }
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

static void sub_80120E8 (void) {
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  if (gZones[row3][col3]->id == ZOA)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801212C (void) {
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  gStatMod.card = gZones[row3][col3]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row3][col3]);
  SetFinalStat(&gStatMod);
  if (gUnk_8DFF6A4->unk2298 < gCardInfo.atk + gCardInfo.def)
    gUnk_8DFF6A4->unk2298 = 0x7FF55169;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80121B8 (void) {
  u32 numCards = 0;
  u8 i;
  for (i = 0; i < 5; i++) {
    struct DuelCard* zone = gZones[1][i];
    if (zone->id == CARD_NONE)
      continue;
    if (IsGodCard(zone->id) == TRUE)
      continue;
    if (IsCardFaceUp(zone) != TRUE)
      continue;
    SetCardInfo(zone->id);
    if (gCardInfo.type == TYPE_MACHINE)
      numCards++;
  }
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

static void sub_8012240 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  u8 row4 = sAI_Command.unk4 >> 4;
  u8 col4 = sAI_Command.unk4 & 0xF;
  u8 row5 = sAI_Command.unk5 >> 4;
  u8 col5 = sAI_Command.unk5 & 0xF;
  u16 ritualAtk;
  u8 ritualEffect;
  SetCardInfo(gZones[row2][col2]->id);
  ritualEffect = gCardInfo.ritualEffect;
  if (gZones[row3][col3]->id == gRitualComponents[ritualEffect][0])
    ritualEffect = 24;
  else
    ritualEffect = 26;

  gStatMod.card = gRitualComponents[ritualEffect][1];
  gStatMod.field = gDuel.field;
  gStatMod.stage = 0;
  SetFinalStat(&gStatMod);
  ritualAtk = gCardInfo.atk;

  gStatMod.card = gZones[row4][col4]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row4][col4]);
  SetFinalStat(&gStatMod);
  if (ritualAtk <= gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u32 temp;
    gUnk_8DFF6A4->unk2298 = 0xFFFE - gCardInfo.atk;
    gStatMod.card = gZones[row5][col5]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row5][col5]);
    SetFinalStat(&gStatMod);
    if (ritualAtk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      u32 temp = gUnk_8DFF6A4->unk2298;
      temp -= gCardInfo.atk;
      temp += 0x7FF42E87;
      gUnk_8DFF6A4->unk2298 = temp;
    }
  }
}

static void sub_80123BC (void) {
  u8 i;
  for (i = 0; i < 5; i++) {
    if (gZones[1][i]->id == CARD_NONE)
      continue;
    if (gZones[1][i]->isLocked)
      continue;
    gStatMod.card = gZones[1][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[1][i]);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk >= 1500) {
      gUnk_8DFF6A4->unk2298 = 0x7EEB5B47;
      return;
    }
  }
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801245C (void) {
  u8 i;
  for (i = 0; i < 5; i++) {
    if (gZones[2][i]->id == CARD_NONE)
      continue;
    if (!gZones[2][i]->isFaceUp)
      continue;
    if (gZones[2][i]->isLocked)
      continue;
    SetCardInfo(gZones[2][i]->id);
    if (gCardInfo.monsterEffect) {
      gUnk_8DFF6A4->unk2298 = 0x7FFFFFF5;
      return;
    }
  }
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80124D8 (void) {
  g8DFFA48[g201CB3C]();
}

static void sub_80124F8 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  g201CB3C = gCardInfo.spellEffect;
  g8DFF7F0[gCardInfo.spellEffect]();
}

static void sub_8012548 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8012564 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8012580 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801259C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80125B8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80125D4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80125F0 (void) {
  gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_8012610 (void) {
  u32 temp = GetTotalAtkAndDefInRow(2);
  if (temp <= gUnk_8DFF6A4->unk2298)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = temp + 0x7FC874FF;
}

static void sub_8012648 (void) {
  gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_8012668 (void) {
  u32 temp = GetTotalAtkAndDefInRow(2);
  if (temp <= gUnk_8DFF6A4->unk2298)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = temp + 0x7FC874FF;
}

static void sub_80126A0 (void) {
  gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_80126C0 (void) {
  u32 temp = GetTotalAtkAndDefInRow(2);
  if (temp <= gUnk_8DFF6A4->unk2298)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = temp + 0x7FC874FF;
}

static void sub_80126F8 (void) {
  gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_8012718 (void) {
  u32 temp = GetTotalAtkAndDefInRow(2);
  if (temp <= gUnk_8DFF6A4->unk2298)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = temp + 0x7FC874FF;
}

static void sub_8012750 (void) {
  gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_8012770 (void) {
  u32 temp = GetTotalAtkAndDefInRow(2);
  if (temp <= gUnk_8DFF6A4->unk2298)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = temp + 0x7FC874FF;
}

static void sub_80127A8 (void) {
  gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_80127C8 (void) {
  u32 temp = GetTotalAtkAndDefInRow(2);
  if (temp <= gUnk_8DFF6A4->unk2298)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = temp + 0x7FC874FF;
}

static void sub_8012800 (void) {
  gUnk_8DFF6A4->unk2298 = gDuelLifePoints[WhoseTurn()];
}

static void sub_8012828 (void) {
  if (gUnk_8DFF6A4->unk2298 >= gDuelLifePoints[WhoseTurn()])
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99742;
}

static void sub_8012878 (void) {
  gUnk_8DFF6A4->unk2298 = gDuelLifePoints[WhoseTurn()];
}

static void sub_80128A0 (void) {
  if (gUnk_8DFF6A4->unk2298 >= gDuelLifePoints[WhoseTurn()])
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99742;
}

static void sub_80128F0 (void) {
  gUnk_8DFF6A4->unk2298 = gDuelLifePoints[WhoseTurn()];
}

static void sub_8012918 (void) {
  if (gUnk_8DFF6A4->unk2298 >= gDuelLifePoints[WhoseTurn()])
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99742;
}

static void sub_8012968 (void) {
  gUnk_8DFF6A4->unk2298 = gDuelLifePoints[WhoseTurn()];
}

static void sub_8012990 (void) {
  if (gUnk_8DFF6A4->unk2298 >= gDuelLifePoints[WhoseTurn()])
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99742;
}

static void sub_80129E0 (void) {
  gUnk_8DFF6A4->unk2298 = gDuelLifePoints[WhoseTurn()];
}

static void sub_8012A08 (void) {
  if (gUnk_8DFF6A4->unk2298 >= gDuelLifePoints[WhoseTurn()])
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99742;
}

static void sub_8012A58 (void) {
  if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= 50)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99743;
}

static void sub_8012AB0 (void) {}

static void sub_8012AB4 (void) {
  if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= 100)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99743;
}

static void sub_8012B0C (void) {}

static void sub_8012B10 (void) {
  if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= 200)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99743;
}

static void sub_8012B68 (void) {}

static void sub_8012B6C (void) {
  if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= 500)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99743;
}

static void sub_8012BC8 (void) {}

static void sub_8012BCC (void) {
  if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= 1000)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99743;
}

static void sub_8012C28 (void) {}

//Check whether to use Dark Hole
static void sub_8012C2C (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[2]) != 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973F;
}

static void sub_8012C9C (void) {}

//Check whether to use Raigeki
static void sub_8012CA0 (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973E;
}

static void sub_8012CE4 (void) {}

static void sub_8012CE8 (void) {
  sub_8011940();
}

static void sub_8012CF4 (void) {
  sub_80119AC();
}

static void sub_8012D00 (void) {
  sub_8011940();
}

static void sub_8012D0C (void) {
  sub_80119AC();
}

static void sub_8012D18 (void) {
  sub_8011940();
}

static void sub_8012D24 (void) {
  sub_80119AC();
}

static void sub_8012D30 (void) {
  sub_8011940();
}

static void sub_8012D3C (void) {
  sub_80119AC();
}

static void sub_8012D48 (void) {
  sub_8011940();
}

static void sub_8012D54 (void) {
  sub_80119AC();
}

static void sub_8012D60 (void) {
  sub_8011940();
}

static void sub_8012D6C (void) {
  sub_80119AC();
}

static void sub_8012D78 (void) {
  sub_8011940();
}

static void sub_8012D84 (void) {
  sub_80119AC();
}

static void sub_8012D90 (void) {
  sub_8011940();
}

static void sub_8012D9C (void) {
  sub_80119AC();
}

static void sub_8012DA8 (void) {
  sub_8011940();
}

static void sub_8012DB4 (void) {
  sub_80119AC();
}

static void sub_8012DC0 (void) {
  sub_8011940();
}

static void sub_8012DCC (void) {
  sub_80119AC();
}

static void sub_8012DD8 (void) {
  sub_8011940();
}

static void sub_8012DE4 (void) {
  sub_80119AC();
}

static void sub_8012DF0 (void) {
  sub_8011940();
}

static void sub_8012DFC (void) {
  sub_80119AC();
}

static void sub_8012E08 (void) {
  sub_8011940();
}

static void sub_8012E14 (void) {
  sub_80119AC();
}

static void sub_8012E20 (void) {
  sub_8011940();
}

static void sub_8012E2C (void) {
  sub_80119AC();
}

static void sub_8012E38 (void) {
  sub_8011940();
}

static void sub_8012E44 (void) {
  sub_80119AC();
}

static void sub_8012E50 (void) {
  sub_8011940();
}

static void sub_8012E5C (void) {
  sub_80119AC();
}

static void sub_8012E68 (void) {
  sub_8011940();
}

static void sub_8012E74 (void) {
  sub_80119AC();
}

static void sub_8012E80 (void) {
  sub_8011940();
}

static void sub_8012E8C (void) {
  sub_80119AC();
}

static void sub_8012E98 (void) {
  sub_8011940();
}

static void sub_8012EA4 (void) {
  sub_80119AC();
}

static void sub_8012EB0 (void) {
  sub_8011940();
}

static void sub_8012EBC (void) {
  sub_80119AC();
}

static void sub_8012EC8 (void) {
  sub_8011940();
}

static void sub_8012ED4 (void) {
  sub_80119AC();
}

static void sub_8012EE0 (void) {
  sub_8011940();
}

static void sub_8012EEC (void) {
  sub_80119AC();
}

static void sub_8012EF8 (void) {
  sub_8011940();
}

static void sub_8012F04 (void) {
  sub_80119AC();
}

static void sub_8012F10 (void) {
  sub_8011940();
}

static void sub_8012F1C (void) {
  sub_80119AC();
}

static void sub_8012F28 (void) {
  sub_8011940();
}

static void sub_8012F34 (void) {
  sub_80119AC();
}

static void sub_8012F40 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8012F5C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8012F78 (void) {
  if (!GetNumCardsDefendingInRow(1))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FB3183E;
}

static void sub_8012FB8 (void) {}

static void sub_8012FBC (void) {
  if (!sub_804398C(1, 1))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

static void sub_8013000 (void) {}

static void sub_8013004 (void) {
  if (gNotSure[1]->sorlTurns)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B46;
}

static void sub_801304C (void) {}

// Dark-Piercing Light?
static void sub_8013050 (void) {
  u8 i;
  for (i = 0; i < 5; i++)
    if (gZones[1][i]->id != CARD_NONE && !gZones[1][i]->isFaceUp) {
      gUnk_8DFF6A4->unk2298 = 0x7FFFFFF1;
      return;
    }
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80130AC (void) {}

static void sub_80130B0 (void) {
  if (NumEmptyZonesInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = GetTotalFaceUpAtkAndDefInRow(1);
}

static void sub_80130F8 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 <= GetTotalFaceUpAtkAndDefInRow(1))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF5516C;
}

static void sub_8013140 (void) {}

static void sub_8013144 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013160 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801317C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013198 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80131B4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80131D0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80131EC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013208 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013224 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013240 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801325C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013278 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013294 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80132B0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80132CC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80132E8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013304 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013320 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801333C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013358 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013374 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013390 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80133AC (void) {}

static void sub_80133B0 (void) {
  sub_8011AB0();
}

static void sub_80133BC (void) {}

static void sub_80133C0 (void) {
  sub_8011AB0();
}

static void sub_80133CC (void) {}

static void sub_80133D0 (void) {
  sub_8011AB0();
}

static void sub_80133DC (void) {}
static void sub_80133E0 (void) {}

static void sub_80133E4 (void) {
  sub_8011AB0();
}

static void sub_80133F0 (void) {}

static void sub_80133F4 (void) {
  sub_8011AB0();
}

static void sub_8013400 (void) {}

static void sub_8013404 (void) {
  sub_8011AB0();
}

static void sub_8013410 (void) {}

static void sub_8013414 (void) {
  sub_8011AB0();
}

static void sub_8013420 (void) {}

static void sub_8013424 (void) {
  sub_8011AB0();
}

static void sub_8013430 (void) {}

static void sub_8013434 (void) {
  sub_8011AB0();
}

static void sub_8013440 (void) {}

// Feather duster?
static void sub_8013444 (void) {
  u8 i;
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  for (i = 0; i < 5; i++) {
    if (gZones[0][i]->id != CARD_NONE) {
      gUnk_8DFF6A4->unk2298 = 0x7FF99744;
      break;
    }
  }
}

static void sub_80134A8 (void) {}

static void sub_80134AC (void) {
  sub_8011940();
}

static void sub_80134B8 (void) {
  sub_80119AC();
}

static void sub_80134C4 (void) {
  sub_8011940();
}

static void sub_80134D0 (void) {
  sub_80119AC();
}

static void sub_80134DC (void) {
  sub_8011940();
}

static void sub_80134E8 (void) {
  sub_80119AC();
}

static void sub_80134F4 (void) {
  sub_8011940();
}

static void sub_8013500 (void) {
  sub_80119AC();
}

static void sub_801350C (void) {}

static void sub_8013510 (void) {
  if (NumEmptyZonesInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = GetTotalFaceUpAtkAndDefInRow(1);
}

static inline void sub_8013558_inline (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 <= GetTotalFaceUpAtkAndDefInRow(1))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF5516C;
}

static void sub_8013558 (void) {
  sub_8013558_inline();
}

static void sub_80135A4 (void) {
  sub_8011AB0();
}

static void sub_80135B0 (void) {}

static void sub_80135B4 (void) {
  sub_8011AB0();
}

static void sub_80135C0 (void) {}

static void sub_80135C4 (void) {
  sub_8011AB0();
}

static void sub_80135D0 (void) {}

static void sub_80135D4 (void) {
  sub_8011AB0();
}

static void sub_80135E0 (void) {}

static void sub_80135E4 (void) {
  sub_8011AB0();
}

static void sub_80135F0 (void) {}

static void sub_80135F4 (void) {
  sub_8011AB0();
}

static void sub_8013600 (void) {}

static void sub_8013604 (void) {
  sub_8011AB0();
}

static void sub_8013610 (void) {}

static void sub_8013614 (void) {
  sub_8011AB0();
}

static void sub_8013620 (void) {}

static void sub_8013624 (void) {
  sub_8011AB0();
}

static void sub_8013630 (void) {}

static void sub_8013634 (void) {
  sub_8011AB0();
}

static void sub_8013640 (void) {}

static void sub_8013644 (void) {
  sub_8011AB0();
}

static void sub_8013650 (void) {}
static void sub_8013654 (void) {}
static void sub_8013658 (void) {}

static void sub_801365C (void) {
  u8 i;
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  for (i = 0; i < 5; i++) {
    if (gZones[2][i]->id != CARD_NONE && PermStage(gZones[2][i]) < 0) {
      gUnk_8DFF6A4->unk2298 = 0x7FF5516A;
      break;
    }
  }
}

static void sub_80136B8 (void) {}

static void sub_80136BC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  if (!sub_804398C(1, 3))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

static void sub_8013704 (void) {}

static void sub_8013708 (void) {
  sub_8011940();
}

static void sub_8013714 (void) {
  sub_80119AC();
}

static void sub_8013720 (void) {
  sub_8011940();
}

static void sub_801372C (void) {
  sub_80119AC();
}

static void sub_8013738 (void) {}

static void sub_801373C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  if (!sub_804398C(1, 10))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

static void sub_8013784 (void) {}

static void sub_8013788 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  if (!sub_804398C(1, 19))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

static void sub_80137D0 (void) {}

static void sub_80137D4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  if (!sub_804398C(1, 13))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

static void sub_801381C (void) {}

// Inexperienced spy
static void sub_8013820 (void) {
  u8 i;
  for (i = 0; i < 5; i++)
    if (gHands[1][i]->id != CARD_NONE && !gHands[1][i]->isFaceUp) {
      gUnk_8DFF6A4->unk2298 = 0x7FFFFFF0;
      return;
    }
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801387C (void) {}
static void sub_8013880 (void) {}

// pot of greed?
static void sub_8013884 (void) {
  if (NumEmptyZonesInRow(gZones[4]) < 2)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B44;
}

static void sub_80138C8 (void) {}

static void sub_80138CC (void) {
  u8 numNonEmptyZones = 5 - NumEmptyZonesInRow(gHands[1]);
  if (!numNonEmptyZones)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= numNonEmptyZones * 200)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFEF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
}

static void sub_8013958 (void) {}

static void sub_801395C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  if (!sub_804398C(1, 2))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

static void sub_80139A4 (void) {}

static void sub_80139A8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  if (!sub_804398C(1, 8))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

static void sub_80139F0 (void) {}

// Multiply
static void sub_80139F4 (void) {
  if (!NumCardMatchesInRow(gZones[2], KURIBOH))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (!NumEmptyZonesInRow(gZones[2]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF32E7F;
}

static void sub_8013A64 (void) {}

static void sub_8013A68 (void) {
  if (!NumEmptyZonesInRow(gZones[2]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99746;
}

static void sub_8013AD8 (void) {}

static void sub_8013ADC (void) {
  sub_8011AB0();
}

static void sub_8013AE8 (void) {}

static void sub_8013AEC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013B08 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013B24 (void) {
  if (!NumEmptyZonesInRow(gZones[2]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99746;
}

static void sub_8013B94 (void) {}

// monster reborn?
static void sub_8013B98 (void) {
  if (gNotSure[1]->graveyard == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (!NumEmptyZonesInRow(gZones[2]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FB3183D;
}

static void sub_8013C04 (void) {}

static void sub_8013C08 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013C24 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013C40 (void) {
  sub_8011940();
}

static void sub_8013C4C (void) {
  sub_80119AC();
}

static void sub_8013C58 (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF7745C;
}

static void sub_8013C9C (void) {}

static void sub_8013CA0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013CBC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013CD8 (void) {
  if (gNotSure[0]->graveyard == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B45;
}

static void sub_8013D1C (void) {}

static void sub_8013D20 (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[2]) != 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5 && NumEmptyZonesInRow(gZones[0]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFD;
}

static void sub_8013D9C (void) {}

static void sub_8013DA0 (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[2]) != 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5 && NumEmptyZonesInRow(gZones[0]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFE;
}

static void sub_8013E1C (void) {}
static void sub_8013E20 (void) {}
static void sub_8013E24 (void) {}

static void sub_8013E28 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013E44 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013E60 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013E7C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013E98 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013EB4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013ED0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013EEC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013F08 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013F24 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013F40 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013F5C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013F78 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013F94 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013FB0 (void) {
  sub_8011940();
}

static void sub_8013FBC (void) {
  sub_80119AC();
}

static void sub_8013FC8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8013FE4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014000 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801401C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014038 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014054 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014070 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801408C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80140A8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80140C4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80140E0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80140FC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014118 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014134 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014150 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801416C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014188 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80141A4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80141C0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80141DC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80141F8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014214 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014230 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801424C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014268 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014284 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80142A0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80142BC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80142D8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80142F4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014310 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801432C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014348 (void) {
  sub_80124D8();
}

static void sub_8014354 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  g201CB40 = gCardInfo.spellEffect;
  sub_80124F8();
}

static void sub_8014394 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80143B0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80143CC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80143E8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014404 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014420 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801443C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014458 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014474 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014490 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80144AC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80144C8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80144E4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014500 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801451C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014538 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014554 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014570 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801458C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80145A8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80145C4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80145E0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80145FC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014618 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014634 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014650 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801466C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014688 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80146A4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80146C0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80146DC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80146F8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014714 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014730 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801474C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014768 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014784 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80147A0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80147BC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80147D8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80147F4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014810 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801482C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014848 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014864 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014880 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801489C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80148B8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80148D4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80148F0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801490C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014928 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014944 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014960 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801497C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014998 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80149B4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80149D0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80149EC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014A08 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014A24 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014A40 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014A5C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014A78 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014A94 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014AB0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014ACC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014AE8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014B04 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014B20 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014B3C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014B58 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014B74 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014B90 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014BAC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014BC8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014BE4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014C00 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014C1C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014C38 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014C54 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014C70 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014C8C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014CA8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014CC4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014CE0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014CFC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014D18 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014D34 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014D50 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014D6C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014D88 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014DA4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014DC0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014DDC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014DF8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014E14 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014E30 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014E4C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014E68 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014E84 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014EA0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014EBC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014ED8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014EF4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014F10 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014F2C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014F48 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014F64 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014F80 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014F9C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014FB8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014FD4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8014FF0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801500C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015028 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015044 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015060 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801507C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015098 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80150B4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80150D0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80150EC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015108 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015124 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015140 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801515C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015178 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015194 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80151B0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80151CC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80151E8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015204 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015220 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801523C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015258 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015274 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015290 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80152AC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80152C8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80152E4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015300 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801531C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015338 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015354 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015370 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801538C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80153A8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80153C4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80153E0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80153FC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015418 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015434 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015450 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801546C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015488 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80154A4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80154C0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80154DC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80154F8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015514 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015530 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801554C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015568 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015584 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80155A0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80155BC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80155D8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80155F4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015610 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801562C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015648 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015664 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015680 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801569C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80156B8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80156D4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80156F0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801570C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015728 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015744 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015760 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801577C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015798 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80157B4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80157D0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80157EC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015808 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015824 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015840 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801585C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015878 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015894 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80158B0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80158CC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80158E8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015904 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015920 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801593C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015958 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015974 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015990 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80159AC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80159C8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80159E4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015A00 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015A1C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015A38 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015A54 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015A70 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015A8C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015AA8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015AC4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015AE0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015AFC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015B18 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015B34 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015B50 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015B6C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015B88 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015BA4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015BC0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015BDC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015BF8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015C14 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015C30 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015C4C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015C68 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015C84 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015CA0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015CBC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015CD8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015CF4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015D10 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015D2C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015D48 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015D64 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015D80 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015D9C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015DB8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015DD4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015DF0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015E0C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015E28 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015E44 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015E60 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015E7C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015E98 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015EB4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015ED0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015EEC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015F08 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015F24 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015F40 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015F5C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015F78 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015F94 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015FB0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015FCC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8015FE8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016004 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016020 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801603C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016058 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016074 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016090 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80160AC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80160C8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80160E4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016100 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801611C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016138 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016154 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016170 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801618C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80161A8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80161C4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80161E0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80161FC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016218 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016234 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016250 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801626C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016288 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80162A4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80162C0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80162DC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80162F8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016314 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016330 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801634C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016368 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016384 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80163A0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80163BC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80163D8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80163F4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016410 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801642C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016448 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8016464 (void) {
  u32 numNonEmptyZones = 5 - NumEmptyZonesInRow(gZones[1]);
  u32 numCards;
  u8 i;
  if (!numNonEmptyZones) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  numCards = 0;
  for (i = 0; i < 5; i++)
    if (gZones[1][i]->id != CARD_NONE && IsGodCard(gZones[1][i]->id) == 1)
      numCards++;
  if (numNonEmptyZones == numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFBBA26;
}

static void sub_80164F4 (void) {
  u32 numNonEmptyZones = 5 - NumEmptyZonesInRow(gZones[1]);
  u32 numCards;
  u8 i;
  if (!numNonEmptyZones) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  numCards = 0;
  for (i = 0; i < 5; i++)
    if (gZones[1][i]->id != CARD_NONE && IsGodCard(gZones[1][i]->id) == 1)
      numCards++;
  if (numNonEmptyZones == numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFDDD06;
}

static void sub_8016584 (void) {
  u8 i;
  u8 numCards = 0;
  if (gDuel.field == FIELD_YAMI) {
    for (i = 0; i < 5; i++)
      if (gZones[2][i]->id == CARD_NONE && gZones[2][i]->isFaceUp)
        numCards++;
    if (!numCards) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      return;
    }
  }
  gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

// catapult turtle
static void sub_8016604 (void) {
  u8 i;
  u8 numCards = 0;
  u32 totalAtk;
  for (i = 0; i < 5; i++)
    if (gMonEffect.zone != i && gZones[2][i]->id != CARD_NONE &&
      gZones[2][i]->id != CATAPULT_TURTLE && !gZones[2][i]->isLocked)
        numCards++;
  if (!numCards) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  totalAtk = 0;
  for (i = 0; i < 5; i++) {
    if (gZones[2][i]->id == CARD_NONE || gZones[2][i]->id == CATAPULT_TURTLE)
      continue;
    gStatMod.card = gZones[2][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[2][i]);
    SetFinalStat(&gStatMod);
    totalAtk += gCardInfo.atk;
  }
  if (!totalAtk) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= totalAtk)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFEE;
}

static void sub_8016734 (void) {
  u8 numCards = 0;
  u8 i;
  for (i = 0; i < 5; i++) {
    if (gZones[2][i]->id == CARD_NONE)
      continue;
    gStatMod.card = gZones[2][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[2][i]);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk <= 500)
      numCards++;
  }
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF2D56F;
}

static void sub_80167DC (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  if (!gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFEB;
}

static void sub_80168A0 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  if (!gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFEA;
}

// Ra battle mode?
static void sub_8016964 (void) {
  if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] < gDuelLifePoints[WhoseTurn()])
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] == gDuelLifePoints[WhoseTurn()])
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFE7;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80169FC (void) {
  if (NumEmptyZonesInRow(gZones[1]) == 5) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  if (GetNumFaceUpCardsInRow(1)) {
    u8 zone = HighestAtkFaceUpMonInRow(gZones[1]);
    gStatMod.card = gZones[1][zone]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[1][zone]);
    SetFinalStat(&gStatMod);
    if (!gCardInfo.atk) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      return;
    }
    if (gCardInfo.atk >= gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]]) {
      gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
      return;
    }
  }
  gUnk_8DFF6A4->unk2298 = 0x7FFFFFE9;
}

static void sub_8016AE0 (void) {
  u16 atk;
  u8 highestAtkZone;
  if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  highestAtkZone = HighestAtkMonInRowExceptGodCards(gZones[1]);
  if (gZones[1][highestAtkZone]->isFaceUp) {
    u8 row2, col2;
    gStatMod.card = gZones[1][highestAtkZone]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[1][highestAtkZone]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    row2 = sAI_Command.unk2 >> 4;
    col2 = sAI_Command.unk2 & 0xF;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      return;
    }
  }
  gUnk_8DFF6A4->unk2298 = 0x7FF55170;
}

// Pinch Hopper?
static void sub_8016BCC (void) {
  u8 insectMonZone;
  u8 row2, col2;
  u16 atk;
  if (!sub_8043584(gZones[4], TYPE_INSECT)) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  insectMonZone = HighestAtkMonOfTypeInRow(gZones[4], TYPE_INSECT);
  gStatMod.card = gZones[4][insectMonZone]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[4][insectMonZone]);
  SetFinalStat(&gStatMod);
  atk = gCardInfo.atk;
  row2 = sAI_Command.unk2 >> 4;
  col2 = sAI_Command.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  if (atk <= gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FB3183C;
}

static void sub_8016CB8 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  if (!gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFED;
}

//Byser Shock?
static void sub_8016D7C (void) {
  u8 i, col2;
  u32 numCards;
  if (!NumEmptyZonesInRow(gHands[1])) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  numCards = 0;
  for (i = 0; i < 5; i++)
    if (gZones[1][i]->id != CARD_NONE && !IsCardFaceUp(gZones[1][i]))
      numCards++;
  for (i = 0; i < 5; i++)
    if (gZones[0][i]->id != CARD_NONE && !IsCardFaceUp(gZones[0][i]))
      numCards++;
  if (!numCards) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  col2 = sAI_Command.unk2 & 0xF;
  numCards = 0;
  for (i = 0; i < 5; i++)
    if (i != col2 && gZones[2][i]->id != CARD_NONE && !IsCardFaceUp(gZones[2][i]))
      numCards++;
  if (numCards) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  gUnk_8DFF6A4->unk2298 = 0x7FF5516D;
}

static void sub_8016E98 (void) {
  u8 i, numCards;
  if (NumEmptyZonesInRow(gHands[0]) == 5) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  numCards = 0;
  for (i = 0; i < 5; i++)
    if (gZones[0][i]->id != CARD_NONE && IsCardFaceUp(gZones[0][i]) == TRUE)
      numCards++;
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFF3;
}

static void sub_8016F30 (void) {
  u8 i, numCards;
  if (NumEmptyZonesInRow(gHands[0]) == 5) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  numCards = 0;
  for (i = 0; i < 5; i++)
    if (gZones[0][i]->id != CARD_NONE && !IsCardFaceUp(gZones[0][i]))
      numCards++;
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFF2;
}

static void sub_8016FC8 (void) {
  u8 i, numCards;
  if (NumEmptyZonesInRow(gHands[0]) == 5) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  numCards = 0;
  for (i = 0; i < 5; i++)
    if (gZones[1][i]->id != CARD_NONE && !IsCardFaceUp(gZones[1][i]))
      numCards++;
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF5516E;
}

static void sub_8017060 (void) {
  u8 i, numCards;
  if (NumEmptyZonesInRow(gHands[0]) == 5) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  numCards = 0;
  for (i = 0; i < 5; i++) {
    struct DuelCard* zone = gZones[1][i];
    if (zone->id == CARD_NONE)
      continue;
    if (IsCardFaceUp(zone) != TRUE || IsGodCard(zone->id) != TRUE)
      numCards++;
  }
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF5516F;
}

// Puppet master
static void sub_8017104 (void) {
  if (gNotSure[0]->graveyard != GERNIA) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  if (WhoseTurn() == 0) {
    if (gDuelLifePoints[0] < 1000) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      return;
    }
  }
  else if (gDuelLifePoints[1] < 1000) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  if (NumEmptyZonesInRow(gZones[2]) < 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF32E86;
}

static void sub_80171D8 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  if (!gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFEC;
}

// berserk dragon
/*
static void sub_801729C (void) {
  u8 row2, col2;
   u8 bDragonAttr;
  u8 i;
  int curPlayerLP, curEnemyLP;
  u16 bDragonAtk;


  u8 numCards, sp10;
  if (NumEmptyZonesInRow(gZones[1]) == 5) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  if (WhoseTurn() == 0) {
    curEnemyLP = gDuelLifePoints[1];
    curPlayerLP = gDuelLifePoints[0];
  }
  else {
    curEnemyLP = gDuelLifePoints[0]; //sl
    curPlayerLP = gDuelLifePoints[1]; //sp4
  }
  row2 = sAI_Command.unk2 >> 4;
  col2 = sAI_Command.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  bDragonAtk = gCardInfo.atk; // sb
  bDragonAttr = gCardInfo.attribute; //sp
  numCards = 0;
  sp10 = 1;
  for (i = 0; i < 5 && sp10 && curPlayerLP > 0 && curEnemyLP > 0; i++) {
    u8 temp;
    u16 enemyAtk, enemyDef;
    struct DuelCard* zone = gZones[1][i];
    if (zone->id == CARD_NONE || !IsCardFaceUp(zone))
      continue;
    gStatMod.card = zone->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(zone);
    SetFinalStat(&gStatMod);
    enemyAtk = gCardInfo.atk;
    enemyDef = gCardInfo.def;
    temp = sub_803FBCC(gCardInfo.attribute, bDragonAttr);
    if (temp == 2) {
      sp10 = 0;
      continue;
    }
    if (!temp) {
      if (!zone->isDefending && bDragonAtk > enemyAtk)
        curEnemyLP -= bDragonAtk - enemyAtk;
      numCards++;
    }
    else if (!zone->isDefending) //_080173D4
      if (bDragonAtk > enemyAtk) {
        curEnemyLP -= bDragonAtk - enemyAtk;
        numCards++;
      }
      else
        sp10 = 0;
    else if (bDragonAtk > enemyDef)
      numCards++;
    else
      curPlayerLP -= enemyDef - bDragonAtk;
  }
  if (curEnemyLP <= 0)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else if (curPlayerLP <= 0)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF1C3F5;
}*/

NAKED
static void sub_801729C (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0x14\n\
	ldr r0, _080172C0\n\
	bl NumEmptyZonesInRow\n\
	cmp r0, #5\n\
	bne _080172D0\n\
	ldr r0, _080172C4\n\
	ldr r0, [r0]\n\
	ldr r1, _080172C8\n\
	adds r0, r0, r1\n\
	ldr r1, _080172CC\n\
	b _080174BA\n\
	.align 2, 0\n\
_080172C0: .4byte gZones+0x14\n\
_080172C4: .4byte gUnk_8DFF6A4\n\
_080172C8: .4byte 0x00002298\n\
_080172CC: .4byte 0x7EDE89F9\n\
_080172D0:\n\
	bl WhoseTurn\n\
	cmp r0, #0\n\
	bne _080172E8\n\
	ldr r0, _080172E4\n\
	ldrh r2, [r0, #2]\n\
	mov sl, r2\n\
	ldrh r0, [r0]\n\
	b _080172F0\n\
	.align 2, 0\n\
_080172E4: .4byte gDuelLifePoints\n\
_080172E8:\n\
	ldr r0, _080173BC\n\
	ldrh r1, [r0]\n\
	mov sl, r1\n\
	ldrh r0, [r0, #2]\n\
_080172F0:\n\
	str r0, [sp, #4]\n\
	ldr r0, _080173C0\n\
	ldrb r1, [r0, #2]\n\
	lsrs r2, r1, #4\n\
	movs r0, #0xf\n\
	ands r0, r1\n\
	ldr r4, _080173C4\n\
	ldr r3, _080173C8\n\
	lsls r1, r2, #2\n\
	adds r1, r1, r2\n\
	adds r1, r1, r0\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r3\n\
	ldr r0, [r1]\n\
	ldrh r0, [r0]\n\
	strh r0, [r4]\n\
	ldr r0, _080173CC\n\
	adds r0, #0xf0\n\
	ldrb r0, [r0]\n\
	strb r0, [r4, #2]\n\
	ldr r0, [r1]\n\
	bl GetFinalStage\n\
	strb r0, [r4, #3]\n\
	adds r0, r4, #0\n\
	bl SetFinalStat\n\
	ldr r0, _080173D0\n\
	ldrh r2, [r0, #0x12]\n\
	mov sb, r2\n\
	ldrb r0, [r0, #0x17]\n\
	str r0, [sp]\n\
	movs r0, #0\n\
	str r0, [sp, #0xc]\n\
	movs r1, #1\n\
	str r1, [sp, #0x10]\n\
	movs r2, #0\n\
	str r2, [sp, #8]\n\
	ldr r0, [sp, #4]\n\
	cmp r0, #0\n\
	ble _08017430\n\
	mov r1, sl\n\
	cmp r1, #0\n\
	ble _08017436\n\
_08017348:\n\
	ldr r0, _080173C8\n\
	ldr r2, [sp, #8]\n\
	lsls r1, r2, #2\n\
	adds r0, #0x14\n\
	adds r1, r1, r0\n\
	ldr r4, [r1]\n\
	ldrh r0, [r4]\n\
	cmp r0, #0\n\
	beq _08017410\n\
	adds r0, r4, #0\n\
	bl IsCardFaceUp\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	beq _08017410\n\
	ldrh r0, [r4]\n\
	ldr r1, _080173C4\n\
	strh r0, [r1]\n\
	ldr r0, _080173CC\n\
	adds r0, #0xf0\n\
	ldrb r0, [r0]\n\
	strb r0, [r1, #2]\n\
	adds r0, r4, #0\n\
	bl GetFinalStage\n\
	ldr r2, _080173C4\n\
	strb r0, [r2, #3]\n\
	adds r0, r2, #0\n\
	bl SetFinalStat\n\
	ldr r0, _080173D0\n\
	ldrh r5, [r0, #0x12]\n\
	adds r7, r5, #0\n\
	ldrh r6, [r0, #0x14]\n\
	mov r8, r6\n\
	ldrb r0, [r0, #0x17]\n\
	ldr r1, [sp]\n\
	bl sub_803FBCC\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, #2\n\
	beq _080173EE\n\
	cmp r0, #0\n\
	bne _080173D4\n\
	ldrb r1, [r4, #5]\n\
	movs r0, #2\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _080173F8\n\
	cmp sb, r5\n\
	bls _080173F8\n\
	mov r1, sb\n\
	subs r0, r1, r5\n\
	mov r2, sl\n\
	subs r2, r2, r0\n\
	mov sl, r2\n\
	b _080173F8\n\
	.align 2, 0\n\
_080173BC: .4byte gDuelLifePoints\n\
_080173C0: .4byte 0x02021C00\n\
_080173C4: .4byte gStatMod\n\
_080173C8: .4byte gZones\n\
_080173CC: .4byte gDuel\n\
_080173D0: .4byte gCardInfo\n\
_080173D4:\n\
	ldrb r1, [r4, #5]\n\
	movs r0, #2\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _080173F4\n\
	cmp sb, r7\n\
	bls _080173EE\n\
	mov r1, sb\n\
	subs r0, r1, r7\n\
	mov r2, sl\n\
	subs r2, r2, r0\n\
	mov sl, r2\n\
	b _080173F8\n\
_080173EE:\n\
	movs r0, #0\n\
	str r0, [sp, #0x10]\n\
	b _08017410\n\
_080173F4:\n\
	cmp sb, r6\n\
	bls _08017404\n\
_080173F8:\n\
	ldr r0, [sp, #0xc]\n\
	adds r0, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	str r0, [sp, #0xc]\n\
	b _08017410\n\
_08017404:\n\
	mov r1, r8\n\
	mov r2, sb\n\
	subs r0, r1, r2\n\
	ldr r1, [sp, #4]\n\
	subs r1, r1, r0\n\
	str r1, [sp, #4]\n\
_08017410:\n\
	ldr r0, [sp, #8]\n\
	adds r0, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	str r0, [sp, #8]\n\
	cmp r0, #4\n\
	bhi _08017430\n\
	ldr r2, [sp, #0x10]\n\
	cmp r2, #0\n\
	beq _08017430\n\
	ldr r0, [sp, #4]\n\
	cmp r0, #0\n\
	ble _08017430\n\
	mov r1, sl\n\
	cmp r1, #0\n\
	bgt _08017348\n\
_08017430:\n\
	mov r2, sl\n\
	cmp r2, #0\n\
	bgt _08017450\n\
_08017436:\n\
	ldr r0, _08017444\n\
	ldr r0, [r0]\n\
	ldr r1, _08017448\n\
	adds r0, r0, r1\n\
	ldr r1, _0801744C\n\
	b _080174BA\n\
	.align 2, 0\n\
_08017444: .4byte gUnk_8DFF6A4\n\
_08017448: .4byte 0x00002298\n\
_0801744C: .4byte 0x7FFFFFFF\n\
_08017450:\n\
	ldr r2, [sp, #4]\n\
	cmp r2, #0\n\
	bgt _08017470\n\
	ldr r0, _08017464\n\
	ldr r0, [r0]\n\
	ldr r1, _08017468\n\
	adds r0, r0, r1\n\
	ldr r1, _0801746C\n\
	b _080174BA\n\
	.align 2, 0\n\
_08017464: .4byte gUnk_8DFF6A4\n\
_08017468: .4byte 0x00002298\n\
_0801746C: .4byte 0x7EDE89F9\n\
_08017470:\n\
	ldr r2, [sp, #0x10]\n\
	cmp r2, #0\n\
	bne _08017490\n\
	ldr r0, _08017484\n\
	ldr r0, [r0]\n\
	ldr r1, _08017488\n\
	adds r0, r0, r1\n\
	ldr r1, _0801748C\n\
	b _080174BA\n\
	.align 2, 0\n\
_08017484: .4byte gUnk_8DFF6A4\n\
_08017488: .4byte 0x00002298\n\
_0801748C: .4byte 0x7EDE89F9\n\
_08017490:\n\
	ldr r2, [sp, #0xc]\n\
	cmp r2, #0\n\
	bne _080174B0\n\
	ldr r0, _080174A4\n\
	ldr r0, [r0]\n\
	ldr r1, _080174A8\n\
	adds r0, r0, r1\n\
	ldr r1, _080174AC\n\
	b _080174BA\n\
	.align 2, 0\n\
_080174A4: .4byte gUnk_8DFF6A4\n\
_080174A8: .4byte 0x00002298\n\
_080174AC: .4byte 0x7EDE89F9\n\
_080174B0:\n\
	ldr r0, _080174CC\n\
	ldr r0, [r0]\n\
	ldr r2, _080174D0\n\
	adds r0, r0, r2\n\
	ldr r1, _080174D4\n\
_080174BA:\n\
	str r1, [r0]\n\
	add sp, #0x14\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080174CC: .4byte gUnk_8DFF6A4\n\
_080174D0: .4byte 0x00002298\n\
_080174D4: .4byte 0x7EF1C3F5");
}

static void sub_80174D8 (void) {
  u8 temp = 0;
  u8 i;
  for (i = 0; i < 5; i++) {
    struct DuelCard* zone = gZones[1][i];
    if (zone->id == CARD_NONE)
      continue;
    if (IsCardFaceUp(zone) != TRUE || IsGodCard(zone->id) != TRUE)
      temp++;
  }
  temp -= NumEmptyZonesInRow(gZones[0]) - 5;
  if (!temp)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99745;
}

static void sub_8017568 (void) {
  g8E00330[g201CB44]();
}

static void sub_8017588 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  g201CB44 = gCardInfo.monsterEffect;
  g8E00150[gCardInfo.monsterEffect]();
}

static void sub_80175D8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80175F4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8017610 (void) {
  u8 i;
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  for (i = 0; i < 5; i++) {
    if (gZones[0][i]->id != CARD_NONE) {
      gUnk_8DFF6A4->unk2298 = 0x7FFFFFF4;
      break;
    }
  }
}

static void sub_8017674 (void) {}

static void sub_8017678 (void) {
  u8 turn = WhoseTurn();
  if (65000 - gDuelLifePoints[turn] < 1000)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEE8FA3;
}

static void sub_80176D4 (void) {}

static void sub_80176D8 (void) {}

static void sub_80176DC (void) {}

static void sub_80176E0 (void) {
  if (!NumEmptyZonesInRow(gZones[4]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEE8FA1;
}

static void sub_8017724 (void) {}

static void sub_8017728 (void) {
  if (!NumCardMatchesInRow(gZones[2], HARPIES_PET_DRAGON))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_8017774 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 < GetTotalAtkAndDefInRow(2))
    gUnk_8DFF6A4->unk2298 = 0x7EFD83DA;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80177B8 (void) {
  if (!NumCardMatchesInRow(gZones[2], HARPIES_PET_DRAGON))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_8017804 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 < GetTotalAtkAndDefInRow(2))
    gUnk_8DFF6A4->unk2298 = 0x7EF2D578;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

// Time Wizard
static void sub_8017848 (void) {
  if (NumCardMatchesInRow(gZones[2], BABY_DRAGON) > 0)
    gUnk_8DFF6A4->unk2298 = 0x7EF2D567;
  else if (NumCardMatchesInRow(gZones[2], DARK_MAGICIAN) > 0)
    gUnk_8DFF6A4->unk2298 = 0x7EF2D567;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80178B8 (void) {}

static void sub_80178BC (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 < GetTotalAtkAndDefInRow(2))
    gUnk_8DFF6A4->unk2298 = 0x7FDDD1BF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8017900 (void) {
  if (NumCardMatchesInRow(gZones[2], BLUE_EYES_WHITE_DRAGON) > 0)
    gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8017948 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 < GetTotalAtkAndDefInRow(2))
    gUnk_8DFF6A4->unk2298 = 0x7EF2D579;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801798C (void) {
  if (gDuel.field == FIELD_WASTELAND)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_80179D4 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 < GetTotalAtkAndDefInRow(2))
    gUnk_8DFF6A4->unk2298 = 0x7FB3183F;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8017A18 (void) {
  if (!sub_804398C(1, 11))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF77455;
}

static void sub_8017A5C (void) {}

static void sub_8017A60 (void) {
  if (gDuel.field == FIELD_ARENA)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_8017AA8 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 < GetTotalAtkAndDefInRow(2))
    gUnk_8DFF6A4->unk2298 = 0x7FB3183F;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8017AEC (void) {
  if (!sub_80439F4(1, 5))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF77454;
}

static void sub_8017B30 (void) {}

static void sub_8017B34 (void) {
  if (!NumCardMatchesInRow(gZones[2], DUNGEON_WORM))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_8017B80 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 < GetTotalAtkAndDefInRow(2))
    gUnk_8DFF6A4->unk2298 = 0x7EF2D577;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8017BC4 (void) {
  u8 numArmoredZombie = NumCardMatchesInRow(gZones[2], ARMORED_ZOMBIE);
  u8 numDragonZombie = NumCardMatchesInRow(gZones[2], DRAGON_ZOMBIE);
  u8 numClownZombie = NumCardMatchesInRow(gZones[2], CLOWN_ZOMBIE);
  if (!numArmoredZombie && !numDragonZombie && !numClownZombie)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_8017C38 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 < GetTotalAtkAndDefInRow(2))
    gUnk_8DFF6A4->unk2298 = 0x7EF2D576;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8017C7C (void) {
  if (NumEmptyZonesInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF5516B;
}

static void sub_8017CC0 (void) {}
static void sub_8017CC4 (void) {}

static void sub_8017CC8 (void) {
  u32 numNonEmptyZones; //TODO: rename
  u32 numNonEmptyZones2; // ^
  if (!NumEmptyZonesInRow(gZones[4])) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  numNonEmptyZones = 5 - NumEmptyZonesInRow(gZones[1]);
  numNonEmptyZones2 = 5 - NumEmptyZonesInRow(gZones[2]);
  if (numNonEmptyZones2 < 2)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (numNonEmptyZones >= numNonEmptyZones2)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEE8FA0;
}

static void sub_8017D64 (void) {}

static void sub_8017D68 (void) {
  if (gDuel.field == FIELD_MOUNTAIN)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_8017DB0 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 < GetTotalAtkAndDefInRow(2))
    gUnk_8DFF6A4->unk2298 = 0x7FB3183F;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8017DF4 (void) {
  u8 i;
  u32 numCards = 0;
  for (i = 0; i < 5; i++) {
    struct DuelCard* zone = gZones[1][i];
    if (zone->id == CARD_NONE || IsGodCard(zone->id) == TRUE)
      continue;
    SetCardInfo(zone->id);
    if (gCardInfo.type == TYPE_DRAGON)
      numCards++;
  }
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF77453;
}

static void sub_8017E70 (void) {}

static void sub_8017E74 (void) {
  if (!NumEmptyZonesInRow(gZones[0]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF2D566;
}

static void sub_8017EB8 (void) {}

static void sub_8017EBC (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF55173;
}

static void sub_8017F00 (void) {}

static void sub_8017F04 (void) {
  if (NumEmptyZonesInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEE8F9B;
}

static void sub_8017F48 (void) {}

static void sub_8017F4C (void) {
  if (NumEmptyZonesInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEC6CBB;
}

static void sub_8017F90 (void) {}

static void sub_8017F94 (void) {
  bool8 darkMagicianInGrave = 0;
  if (gNotSure[0]->graveyard == DARK_MAGICIAN)
    darkMagicianInGrave = 1;
  if (gNotSure[1]->graveyard == DARK_MAGICIAN)
    darkMagicianInGrave = 1;
  if (darkMagicianInGrave == 1)
    gUnk_8DFF6A4->unk2298 = 0x7EF2D575;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8017FE8 (void) {}

static void sub_8017FEC (void) {
  if (!sub_8043930(2, 20))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF2D573;
}

static void sub_8018030 (void) {}

static void sub_8018034 (void) {
  if (!NumCardMatchesInRow(gZones[2], M_WARRIOR_2))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF2D571;
}

static void sub_801807C (void) {}

static void sub_8018080 (void) {
  if (!NumCardMatchesInRow(gZones[2], M_WARRIOR_1))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF2D570;
}

static void sub_80180C8 (void) {}

static void sub_80180CC (void) {
  if (NumEmptyZonesInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEE8F9D;
}

static void sub_8018110 (void) {}

static void sub_8018114 (void) {
  u8 turn = WhoseTurn();
  if (65000 - gDuelLifePoints[turn] < 500)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEE8FA2;
}

static void sub_8018170 (void) {}

static void sub_8018174 (void) {
  if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= 50)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEC6CBA;
}

static void sub_80181CC (void) {}

static void sub_80181D0 (void) {
  if (gDuel.field == FIELD_UMI)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_8018218 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 < GetTotalAtkAndDefInRow(2))
    gUnk_8DFF6A4->unk2298 = 0x7FB3183F;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801825C (void) {}

static void sub_8018260 (void) {
  u8 i, numCards = 0;
  for (i = 0; i < 5; i++)
    if (gHands[1][i]->id != CARD_NONE)
      numCards++;
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B48;
}

static void sub_80182BC (void) {}

static void sub_80182C0 (void) {
  if (!NumEmptyZonesInRow(gZones[2]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF32E81;
}

static void sub_8018304 (void) {}

static void sub_8018308 (void) {
  if (!NumCardMatchesInRow(gZones[2], LAVA_BATTLEGUARD))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF2D56E;
}

static void sub_8018354 (void) {}

static void sub_8018358 (void) {
  if (!NumCardMatchesInRow(gZones[2], SWAMP_BATTLEGUARD))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF2D56D;
}

static void sub_80183A0 (void) {}

static void sub_80183A4 (void) {
  if (gDuel.field == FIELD_FOREST)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_80183EC (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 < GetTotalAtkAndDefInRow(2))
    gUnk_8DFF6A4->unk2298 = 0x7FB3183F;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8018430 (void) {
  if (!NumCardMatchesInRow(gZones[2], LABYRINTH_WALL))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF2D56D;
}

static void sub_8018478 (void) {}

static void sub_801847C (void) {
  if (!NumEmptyZonesInRow(gZones[2]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF32E85;
}

static void sub_80184C0 (void) {}

// hourglass?
static void sub_80184C4 (void) {
  if (NumEmptyZonesInRow(gZones[2]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gDuelLifePoints[WhoseTurn()] <= 1000)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF2D56C;
}

static void sub_801853C (void) {}

static void sub_8018540 (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[2]) < 4)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF55172;
}

static void sub_80185B0 (void) {}

static void sub_80185B4 (void) {
  if (NumEmptyZonesInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (GetNumCardsUnlockedInRow(2) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEE8F9C;
}

static void sub_801861C (void) {}

static void sub_8018620 (void) {
  if (!NumEmptyZonesInRow(gZones[2]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF32E84;
}

static void sub_8018664 (void) {}

// Witch's apprentice?
static void sub_8018668 (void) {
  u8 i, numCards = 0;
  for (i = 0; i < 5; i++) {
    SetCardInfo(gZones[2][i]->id);
    if (gCardInfo.attribute == ATTRIBUTE_LIGHT) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      return;
    }
    if (gCardInfo.attribute == ATTRIBUTE_SHADOW)
      numCards++;
  }
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF2D56B;
}

static void sub_80186F4 (void) {}

static void sub_80186F8 (void) {
  if (NumEmptyZonesInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEE8F9B;
}

static void sub_801873C (void) {}

static void sub_8018740 (void) {
  u8 i, numCards = 0;
  for (i = 0; i < 5; i++) {
    SetCardInfo(gZones[2][i]->id);
    if (gCardInfo.attribute == ATTRIBUTE_SHADOW) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      return;
    }
    if (gCardInfo.attribute == ATTRIBUTE_LIGHT)
      numCards++;
  }
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF2D56B;
}

static void sub_80187CC (void) {}

static void sub_80187D0 (void) {}

static void sub_80187D4 (void) {}

static void sub_80187D8 (void) {
  u8 temp = sub_8043930(2, 10);
  temp += sub_804398C(1, 10);
  if (!temp)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF2D569;
}

static void sub_8018830 (void) {}

// Obelisk?
static void sub_8018834 (void) {
  if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= 4000)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99741;
}

static void sub_8018890 (void) {}

static void sub_8018894 (void) {
  if (!sub_80438A0(4))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7F08323A;
}

static void sub_80188D4 (void) {}

static void sub_80188D8 (void) {}

static void sub_80188DC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80188F8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8018914 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8018930 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801894C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8018968 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8018984 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80189A0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80189BC (void) {
  if (!NumCardMatchesInRow(gZones[2], HARPIES_PET_DRAGON))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = GetTotalAtkAndDefInRow(2);
}

static void sub_8018A08 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 < GetTotalAtkAndDefInRow(2))
    gUnk_8DFF6A4->unk2298 = 0x7EF2D57A;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8018A4C (void) {
  bool8 darkMagicianInGrave = 0;
  if (gNotSure[0]->graveyard == DARK_MAGICIAN)
    darkMagicianInGrave = 1;
  if (gNotSure[1]->graveyard == DARK_MAGICIAN)
    darkMagicianInGrave = 1;
  if (darkMagicianInGrave == 1)
    gUnk_8DFF6A4->unk2298 = 0x7EF2D574;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8018AA0 (void) {}

static void sub_8018AA4 (void) {
  if (!NumCardMatchesInRow(gZones[2], BETA_THE_MAGNET_WARRIOR))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (!NumCardMatchesInRow(gZones[2], GAMMA_THE_MAGNET_WARRIOR))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7F12E09B;
}

static void sub_8018B1C (void) {}

static void sub_8018B20 (void) {
  if (!NumCardMatchesInRow(gZones[2], ALPHA_THE_MAGNET_WARRIOR))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (!NumCardMatchesInRow(gZones[2], GAMMA_THE_MAGNET_WARRIOR))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7F12E09B;
}

static void sub_8018B98 (void) {}

static void sub_8018B9C (void) {
  if (!NumCardMatchesInRow(gZones[2], ALPHA_THE_MAGNET_WARRIOR))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (!NumCardMatchesInRow(gZones[2], BETA_THE_MAGNET_WARRIOR))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7F12E09B;
}

static void sub_8018C14 (void) {}

/*
static void sub_8018C18 (void) {
  // NumEmptyZonesInRow should only take one arg
  if (NumEmptyZonesInRow(gZones[2], 1) < 2)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B49;
}*/

NAKED
static void sub_8018C18 (void) {
  asm_unified("push {lr}\n\
	ldr r0, _08018C34 @ =gZones+0x28\n\
	movs r1, #0\n\
	bl NumEmptyZonesInRow\n\
	cmp r0, #1\n\
	bgt _08018C44\n\
	ldr r0, _08018C38 @ =0x08DFF6A4\n\
	ldr r0, [r0]\n\
	ldr r1, _08018C3C @ =0x00002298\n\
	adds r0, r0, r1\n\
	ldr r1, _08018C40 @ =0x7EDE89F9\n\
	b _08018C4E\n\
	.align 2, 0\n\
_08018C34: .4byte gZones+0x28\n\
_08018C38: .4byte 0x08DFF6A4\n\
_08018C3C: .4byte 0x00002298\n\
_08018C40: .4byte 0x7EDE89F9\n\
_08018C44:\n\
	ldr r0, _08018C54 @ =0x08DFF6A4\n\
	ldr r0, [r0]\n\
	ldr r1, _08018C58 @ =0x00002298\n\
	adds r0, r0, r1\n\
	ldr r1, _08018C5C @ =0x7EEB5B49\n\
_08018C4E:\n\
	str r1, [r0]\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08018C54: .4byte 0x08DFF6A4\n\
_08018C58: .4byte 0x00002298\n\
_08018C5C: .4byte 0x7EEB5B49");
}

static void sub_8018C60 (void) {}

static void sub_8018C64 (void) {
  if (NumEmptyZonesInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEE8F9F;
}

static void sub_8018CA8 (void) {}

static void sub_8018CAC (void) {
  if (!NumEmptyZonesInRow(gZones[2]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFE6;
}

static void sub_8018D1C (void) {}

static void sub_8018D20 (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF55171;
}

static void sub_8018D64 (void) {}

static void sub_8018D68 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8018D84 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8018DA0 (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99740;
}

static void sub_8018DE4 (void) {}

static void sub_8018DE8 (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973D;
}

static void sub_8018E2C (void) {}

static void sub_8018E30 (void) {
  u8 i;
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  for (i = 0; i < 5; i++) {
    if (gZones[0][i]->id != CARD_NONE) {
      gUnk_8DFF6A4->unk2298 = 0x7FFFFFF4;
      break;
    }
  }
}

static void sub_8018E94 (void) {}

static void sub_8018E98 (void) {
  if (!sub_804398C(1, 1))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF2D568;
}

static void sub_8018EDC (void) {}

static void sub_8018EE0 (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF77457;
}

static void sub_8018F24 (void) {}

static void sub_8018F28 (void) {}

static void sub_8018F2C (void) {}

static void sub_8018F30 (void) {
  u32 numNonEmptyZones; //TODO: rename
  u32 numNonEmptyZones2; // ^
  if (65000 - gDuelLifePoints[WhoseTurn()] < 500) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  numNonEmptyZones = 5 - NumEmptyZonesInRow(gZones[1]);
  numNonEmptyZones2 = 5 - NumEmptyZonesInRow(gZones[2]);
  if (numNonEmptyZones2 < 2)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (numNonEmptyZones >= numNonEmptyZones2)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFE8;
}

static void sub_8018FE0 (void) {}

static void sub_8018FE4 (void) {}

static void sub_8018FE8 (void) {
  if (NumEmptyZonesInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEE8F9E;
}

static void sub_801902C (void) {}

static void sub_8019030 (void) {
  if (!NumEmptyZonesInRow(gZones[2]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF32E80;
}

static void sub_8019074 (void) {}

static void sub_8019078 (void) {
  if (!sub_8043584(gZones[2], TYPE_DRAGON))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF2D572;
}

static void sub_80190C0 (void) {}

static void sub_80190C4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EEE8FA4;
}

static void sub_80190E0 (void) {}

static void sub_80190E4 (void) {
  if (!NumEmptyZonesInRow(gZones[2]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF32E83;
}

static void sub_8019128 (void) {}

static void sub_801912C (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gDuelLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= 500)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF77458;
}

static void sub_80191B0 (void) {}

static void sub_80191B4 (void) {}

static void sub_80191B8 (void) {
  if (NumEmptyZonesInRow(gZones[4]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (!sub_8043584(gZones[0], 0x15))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF7745A;
}

static void sub_801922C (void) {}

static void sub_8019230 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801924C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019268 (void) {}

static void sub_801926C (void) {
  if (!NumEmptyZonesInRow(gZones[2]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (!NumCardMatchesInRow(gZones[2], QUEENS_KNIGHT))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF32E82;
}

static void sub_80192E0 (void) {}

static void sub_80192E4 (void) {
  u8 numYDragonHeads = NumCardMatchesInRow(gZones[2], Y_DRAGON_HEAD);
  u8 numZMetalTanks = NumCardMatchesInRow(gZones[2], Z_METAL_TANK);
  if (!numYDragonHeads) {
    if (!numZMetalTanks)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else
      gUnk_8DFF6A4->unk2298 = 0x7FF32E87;
  }
  else if (numZMetalTanks)
    gUnk_8DFF6A4->unk2298 = 0x7FF32E88;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF32E87;
}

static void sub_801936C (void) {}

static void sub_8019370 (void) {
  u8 numXHeadCannons = NumCardMatchesInRow(gZones[2], X_HEAD_CANNON);
  u8 numZMetalTanks = NumCardMatchesInRow(gZones[2], Z_METAL_TANK);
  if (!numXHeadCannons) {
    if (!numZMetalTanks)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else
      gUnk_8DFF6A4->unk2298 = 0x7FF32E87;
  }
  else if (numZMetalTanks)
    gUnk_8DFF6A4->unk2298 = 0x7FF32E88;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF32E87;
}

static void sub_80193F4 (void) {}

static void sub_80193F8 (void) {
  u8 numXHeadCannons = NumCardMatchesInRow(gZones[2], X_HEAD_CANNON);
  u8 numYDragonHeads = NumCardMatchesInRow(gZones[2], Y_DRAGON_HEAD);
  if (!numXHeadCannons) {
    if (!numYDragonHeads)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else
      gUnk_8DFF6A4->unk2298 = 0x7FF32E87;
  }
  else if (numYDragonHeads)
    gUnk_8DFF6A4->unk2298 = 0x7FF32E88;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF32E87;
}

static void sub_801947C (void) {}

static void sub_8019480 (void) {}

static void sub_8019484 (void) {}

static void sub_8019488 (void) {}

static void sub_801948C (void) {}

static void sub_8019490 (void) {}

static void sub_8019494 (void) {
  if (WhoseTurn() == 0) {
    if (gDuelLifePoints[0] < 1000) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      return;
    }
  }
  else if (gDuelLifePoints[1] < 1000) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  if (NumEmptyZonesInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF77459;
}

static void sub_8019538 (void) {}

static void sub_801953C (void) {}

static void sub_8019540 (void) {}

static void sub_8019544 (void) {}

static void sub_8019548 (void) {
  u8 numCards = 0, i;
  for (i = 0; i < 5; i++) {
    struct DuelCard* zone = gZones[1][i];
    if (zone->id == CARD_NONE)
      continue;
    if (IsCardFaceUp(zone) != TRUE || IsGodCard(zone->id) != TRUE)
      numCards++;
  }
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99745;
}

static void sub_80195C4 (void) {}

static void sub_80195C8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80195E4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019600 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801961C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019638 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019654 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019670 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801968C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80196A8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80196C4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80196E0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80196FC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019718 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019734 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019750 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801976C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019788 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80197A4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80197C0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80197DC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80197F8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019814 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019830 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801984C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019868 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019884 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80198A0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80198BC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80198D8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_80198F4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019910 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801992C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019948 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019964 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_8019980 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

static void sub_801999C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

// unused?
u32 sub_80199B8 (void) {
  u8 i;
  u32 ret = 0;
  for (i = 0; i < 5; i++) {
    u16 playerMonAtk;
    u16 playerMonDef;
    u8 playerMonAttribute;
    u16 opponentMonAtk;
    u8 j;
    struct DuelCard* playerMonZone = gZones[2][i];
    if (playerMonZone->id == CARD_NONE)
      continue;
    gStatMod.card = playerMonZone->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(playerMonZone);
    SetFinalStat(&gStatMod);
    playerMonAtk = gCardInfo.atk;
    playerMonDef = gCardInfo.def;
    playerMonAttribute = gCardInfo.attribute;
    for (j = 0; j < 5; j++) {
      struct DuelCard* opponentMonZone = gZones[1][j];
      if (opponentMonZone->id == CARD_NONE)
        continue;
      if (!IsCardFaceUp(opponentMonZone))
        ret += gE00534[2];
      else {
        // GNU C
        opponentMonAtk = ({gStatMod.card = opponentMonZone->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = GetFinalStage(opponentMonZone);
        SetFinalStat(&gStatMod);
        gCardInfo.atk;
        });
        sub_803FBCC(gCardInfo.attribute, playerMonAttribute);
        if (!playerMonZone->isDefending) {
          if (playerMonAtk == opponentMonAtk)
            ret += gE00534[1];
          else if (playerMonAtk < opponentMonAtk)
            ret += gE00534[3];
          else
            ret += gE00534[0];
        }
        else if (playerMonDef == opponentMonAtk)
          ret += gE00534[1];
        else if (playerMonDef < opponentMonAtk)
          ret += gE00534[3];
        else
          ret += gE00534[0];
      }
    }
  }
  return ret;
}

// unused?
static u8 sub_8019AD4 (struct DuelCard* duelCardPtr, struct DuelCard* duelCardPtr2) {
  u16 atk;
  u8 i, index;
  if (duelCardPtr2->id == CARD_NONE)
    return gE00538[6];
  gStatMod.card = duelCardPtr2->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(duelCardPtr2);
  SetFinalStat(&gStatMod);
  atk = gCardInfo.atk;
  index = 0;
  for (i = 0; i < 5; duelCardPtr++, i++) {
    if (duelCardPtr->id == CARD_NONE)
      continue;
    gStatMod.card = duelCardPtr->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(duelCardPtr);
    SetFinalStat(&gStatMod);
    if (gCardInfo.spellEffect == 2 && atk < gCardInfo.atk)
      index++;
  }
  return gE00538[index];
}

// unused?
static u8 sub_8019B78 (struct DuelCard* duelCardPtr, struct DuelCard* duelCardPtr2) {
  u16 def;
  u8 i, index;
  if (duelCardPtr2->id == CARD_NONE)
    return gE0053F[6];
  gStatMod.card = duelCardPtr2->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(duelCardPtr2);
  SetFinalStat(&gStatMod);
  def = gCardInfo.def;
  index = 0;
  for (i = 0; i < 5; duelCardPtr++, i++) {
    if (duelCardPtr->id == CARD_NONE)
      continue;
    gStatMod.card = duelCardPtr->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(duelCardPtr);
    SetFinalStat(&gStatMod);
    if (gCardInfo.spellEffect == 2 && def < gCardInfo.def)
      index++;
  }
  return gE0053F[index];
}

// unused?
static u8 sub_8019C1C (struct DuelCard* duelCardPtr, struct DuelCard* duelCardPtr2) {
  u32 combined;
  u8 i, index;
  if (duelCardPtr2->id == CARD_NONE)
    return gE00546[6];
  gStatMod.card = duelCardPtr2->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = GetFinalStage(duelCardPtr2);
  SetFinalStat(&gStatMod);
  combined = gCardInfo.atk + gCardInfo.def;
  index = 0;
  for (i = 0; i < 5; duelCardPtr++, i++) {
    if (duelCardPtr->id == CARD_NONE)
      continue;
    gStatMod.card = duelCardPtr->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = GetFinalStage(duelCardPtr);
    SetFinalStat(&gStatMod);
    if (gCardInfo.spellEffect == 2 && combined < gCardInfo.atk + gCardInfo.def)
      index++;
  }
  return gE00546[index];
}

u32 sub_8019CC8 (void) {
  u32 temp = sub_8019CE4();
  temp *= 101;
  return temp + sub_80199B8();
}

u32 sub_8019CE4 (void) {
  u8 r5 = 5 - NumEmptyZonesInRow(gZones[2]);
  u8 r4 = 5 - NumEmptyZonesInRow(gZones[1]);
  return gE00510[r5][r4];
}

void InitAICommandData (u16 arg0) {
  g2021BF8 = arg0;
  sAI_Command.action = gAED58[arg0].action;
  sAI_Command.unk2 = gAED58[arg0].unk2;
  sAI_Command.unk3 = gAED58[arg0].unk3;
  sAI_Command.unk4 = gAED58[arg0].unk4;
  sAI_Command.unk5 = gAED58[arg0].unk5;
  sAI_Command.unk6 = gAED58[arg0].unk6;
  sAI_Command.unk7 = gAED58[arg0].unk7;
}

void ClearAICommandData (void) {
  g2021BF8 = 0;
  sAI_Command.action = 0;
  sAI_Command.unk2 = 0;
  sAI_Command.unk3 = 0;
  sAI_Command.unk4 = 0;
  sAI_Command.unk5 = 0;
  sAI_Command.unk6 = 0;
  sAI_Command.unk7 = 0;
}

static u8 sub_801A08C (void);
void TryAttackVoicing (void);
void sub_801B66C (void);
void sub_8040EF0 (void);
void UpdateDuelGfxExceptField (void);
void PlayActionSoundEffect (void);
void CheckWinConditionExodia (void);


void AI_Main (void) {
  u8 i;
  TryActivatingTurnEffects();
  if (IsDuelOver() == TRUE)
    return;
  sub_8029820();
  if (IsDuelOver() == TRUE)
    return;
  while (IsDuelOver() != TRUE) {
    u16 i;
    u16 temp;
    ClearAICommandData();
    sub_800F108();
    for (i = 0, gHideEffectText = 1; i < 0x3B2; i++) {
      InitAICommandData(i);
      if (sub_801A08C() == 1) {
        sub_800EE24(); // save duel data
        sub_800F1EC(); // prioritize action params
        sub_800E0F8(); // perform action
        sub_8029820(); // activate permanent effects
        sub_800F248();
        sub_800EE94(); // restore duel data
      }
    }
    gHideEffectText = 0;
    temp = sub_800EF0C();
    if (temp == 0)
      break;
    InitAICommandData(temp);
    TryAttackVoicing();
    sub_800E0D4();
    if (gUnk2023EA0.unk18) {
      sub_801B66C();
      sub_8040EF0();
    }
    else
      UpdateDuelGfxExceptField();
    PlayActionSoundEffect();
    WinConditionFINAL();
    CheckWinConditionExodia();
    sub_8029820();
  }
  for (i = 0; i < 30; i++)
    WaitForVBlank();
}

struct AttackVoicing {
    u16 duelistId;
    u16 cardId;
    u16 soundId;
};

extern const struct AttackVoicing gB0AE8[];
extern const struct AttackVoicing gB0B18[];

static void sub_801A008 (struct AttackVoicing*);
static void sub_801A028 (struct AttackVoicing*);
static u8 sub_801A048 (struct AttackVoicing*, const struct AttackVoicing*);

// Voicing an attack (Kaiba: Go BEWD! etc.)
void TryAttackVoicing (void) {
  struct AttackVoicing attackVoicing;
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  switch (sAI_Command.action) {
    case 0:
    case 24:
      break;
    case 7:
    case 8:
    case 9:
    case 10:
    case 12:
    case 13:
      attackVoicing.duelistId = gDuelData.duelist.id;
      attackVoicing.cardId = gZones[row2][col2]->id;
      sub_801A008(&attackVoicing);
      break;
    case 23:
      attackVoicing.duelistId = gDuelData.duelist.id;
      attackVoicing.cardId = gZones[row2][col2]->id;
      sub_801A028(&attackVoicing);
      break;
  }
}


//TODO:rename to PlayDuelActionSoundEffect?
void PlayActionSoundEffect (void) {
  switch (sAI_Command.action) {
    case 0:
    case 24:
      break;
    case 1:
      PlayMusic(0x3E); // Discard
      break;
    case 2:
    case 3:
    case 4:
    case 11:
    case 14:
    case 15:
    case 18:
    case 21:
      PlayMusic(0x3A); // place card?
      break;
    case 5:
    case 6:
      PlayMusic(0x3C); // reveal card (flip face up)?
      break;
  }
}

static void sub_8019FFC (void) {
  PlayMusic(0x3D);
}

static void sub_801A008 (struct AttackVoicing* attackVoicing) {
  if (sub_801A048(attackVoicing, gB0AE8))
    PlayMusic(attackVoicing->soundId);
}

static void sub_801A028 (struct AttackVoicing* attackVoicing) {
  if (sub_801A048(attackVoicing, gB0B18))
    PlayMusic(attackVoicing->soundId);
}

static u8 sub_801A048 (struct AttackVoicing* attackVoicing, const struct AttackVoicing* arr) {
  u8 i;
  for (i = 0; arr[i].duelistId; i++)
    if (arr[i].duelistId == attackVoicing->duelistId)
      if (arr[i].cardId == attackVoicing->cardId) {
      attackVoicing->soundId = arr[i].soundId;
      return 1;
    }
  attackVoicing->soundId = 0;
  return 0;
}

static u8 sub_801A08C (void) {
  return gE00550[sAI_Command.action]();
}

//discard check
static u8 sub_801A0B0 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  if (gZones[row2][col2]->id != CARD_NONE && !NumEmptyZonesInRow(gZones[4])) {
    SetCardInfo(gZones[row2][col2]->id);
    if (!gCardInfo.unk1E)
      return 1;
  }
  return 0;
}

static u8 sub_801A104 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  if (gZones[row2][col2]->id != CARD_NONE && !NumEmptyZonesInRow(gZones[4])) {
    SetCardInfo(gZones[row2][col2]->id);
    if (gCardInfo.unk1E)
      return 1;
  }
  return 0;
}

static u8 sub_801A158 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E || IsUnlockedMonsterCard(gZones[row2][col2]) != 1
   || sub_8045390(gZones[row2][col2]->id)
   || (gZones[row3][col3]->id != CARD_NONE && IsCardLocked(gZones[row3][col3])))
      return 0;
  return 1;
}

static u8 sub_801A1D4 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E || IsUnlockedMonsterCard(gZones[row2][col2]) != 1
   || sub_8045390(gZones[row2][col2]->id)
   || (gZones[row3][col3]->id != CARD_NONE && IsCardLocked(gZones[row3][col3])))
      return 0;
  return 1;
}

static u8 sub_801A250 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E && IsUnlockedMonsterCard(gZones[row2][col2]) == 1
   && sub_8045390(gZones[row2][col2]->id) == 1 && IsUnlockedMonsterCard(gZones[row3][col3]) == 1)
      return 1;
  return 0;
}

static u8 sub_801A2C4 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E && IsUnlockedMonsterCard(gZones[row2][col2]) == 1
   && sub_8045390(gZones[row2][col2]->id) == 1 && IsUnlockedMonsterCard(gZones[row3][col3]) == 1)
      return 1;
  return 0;
}

static u8 sub_801A338 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  u8 row4 = sAI_Command.unk4 >> 4;
  u8 col4 = sAI_Command.unk4 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E && IsUnlockedMonsterCard(gZones[row2][col2]) == 1
   && sub_8045390(gZones[row2][col2]->id) == 2 && IsUnlockedMonsterCard(gZones[row3][col3]) == 1
   && IsUnlockedMonsterCard(gZones[row4][col4]) == 1)
      return 1;
  return 0;
}

static u8 sub_801A3E0 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  u8 row4 = sAI_Command.unk4 >> 4;
  u8 col4 = sAI_Command.unk4 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E && IsUnlockedMonsterCard(gZones[row2][col2]) == 1
   && sub_8045390(gZones[row2][col2]->id) == 2 && IsUnlockedMonsterCard(gZones[row3][col3]) == 1
   && IsUnlockedMonsterCard(gZones[row4][col4]) == 1)
      return 1;
  return 0;
}

static u8 sub_801A488 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  u8 row4 = sAI_Command.unk4 >> 4;
  u8 col4 = sAI_Command.unk4 & 0xF;
  u8 row5 = sAI_Command.unk5 >> 4;
  u8 col5 = sAI_Command.unk5 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E && IsUnlockedMonsterCard(gZones[row2][col2]) == 1
   && sub_8045390(gZones[row2][col2]->id) == 3 && IsUnlockedMonsterCard(gZones[row3][col3]) == 1
   && IsUnlockedMonsterCard(gZones[row4][col4]) == 1 && IsUnlockedMonsterCard(gZones[row5][col5]) == 1)
      return 1;
  return 0;
}

static u8 sub_801A55C (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  u8 row4 = sAI_Command.unk4 >> 4;
  u8 col4 = sAI_Command.unk4 & 0xF;
  u8 row5 = sAI_Command.unk5 >> 4;
  u8 col5 = sAI_Command.unk5 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E && IsUnlockedMonsterCard(gZones[row2][col2]) == 1
   && sub_8045390(gZones[row2][col2]->id) == 3 && IsUnlockedMonsterCard(gZones[row3][col3]) == 1
   && IsUnlockedMonsterCard(gZones[row4][col4]) == 1 && IsUnlockedMonsterCard(gZones[row5][col5]) == 1)
      return 1;
  return 0;
}

static u8 sub_801A630 (void) {
  u8 r5 = 0;
  u8 row2;
  u8 col2;
  if (gNotSure[0]->defenseBlocked)
    return 0;
  row2 = sAI_Command.unk2 >> 4;
  col2 = sAI_Command.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E)
    return 0;
  if (IsUnlockedMonsterCard(gZones[row2][col2]) == 1)
    r5 = 1;
  return r5;
}

static u8 sub_801A690 (void) {
  u8 row2;
  u8 col2;
  if (gNotSure[0]->defenseBlocked)
    return 0;
  row2 = sAI_Command.unk2 >> 4;
  col2 = sAI_Command.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E && IsUnlockedMonsterCard(gZones[row2][col2]) == 1)
    return 1;
  return 0;
}

static u8 sub_801A6EC (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E && IsUnlockedMonsterCard(gZones[row2][col2]) == 1)
    return 1;
  return 0;
}

static u8 sub_801A738 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E && IsUnlockedMonsterCard(gZones[row2][col2]) == 1)
    return 1;
  return 0;
}

static u8 sub_801A784 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  if (GetDuelistStatus(WhoseTurn()) && !gNotSure[0]->sorlTurns) {
    SetCardInfo(gZones[row2][col2]->id);
    if (!gCardInfo.unk1E) {
      gTrapEffectData.unk2 = row2;
      gTrapEffectData.unk3 = col2;
      gTrapEffectData.id = gZones[row2][col2]->id;
      if (IsTrapTriggered() != 1 && IsUnlockedMonsterCard(gZones[row2][col2]) == 1 &&
          !GetNumCardsInRow(1))
        return 1;
    }
  }
  return 0;
}

static u8 sub_801A814 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  if (GetDuelistStatus(WhoseTurn()) && !gNotSure[0]->sorlTurns) {
    SetCardInfo(gZones[row2][col2]->id);
    if (gCardInfo.unk1E) {
      gTrapEffectData.unk2 = row2;
      gTrapEffectData.unk3 = col2;
      gTrapEffectData.id = gZones[row2][col2]->id;
      if (IsTrapTriggered() != 1 && IsUnlockedMonsterCard(gZones[row2][col2]) == 1 &&
          !GetNumCardsInRow(1))
        return 1;
    }
  }
  return 0;
}

static u8 sub_801A8A4 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  if (GetDuelistStatus(WhoseTurn()) && !gNotSure[0]->sorlTurns) {
    SetCardInfo(gZones[row2][col2]->id);
    if (!gCardInfo.unk1E) {
      gTrapEffectData.unk2 = row2;
      gTrapEffectData.unk3 = col2;
      gTrapEffectData.id = gZones[row2][col2]->id;
      if (IsTrapTriggered() != 1 && IsUnlockedMonsterCard(gZones[row2][col2]) == 1 &&
          gZones[row3][col3]->id != CARD_NONE && GetTypeGroup(gZones[row3][col3]->id) == 1 &&
          gZones[row3][col3]->isFaceUp)
        return 1;
    }
  }
  return 0;
}

static u8 sub_801A974 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  if (GetDuelistStatus(WhoseTurn()) && !gNotSure[0]->sorlTurns) {
    SetCardInfo(gZones[row2][col2]->id);
    if (gCardInfo.unk1E) {
      gTrapEffectData.unk2 = row2;
      gTrapEffectData.unk3 = col2;
      gTrapEffectData.id = gZones[row2][col2]->id;
      if (IsTrapTriggered() != 1 && IsUnlockedMonsterCard(gZones[row2][col2]) == 1 &&
          gZones[row3][col3]->id != CARD_NONE && GetTypeGroup(gZones[row3][col3]->id) == 1 &&
          gZones[row3][col3]->isFaceUp)
        return 1;
    }
  }
  return 0;
}

/*
static u8 sub_801AA44 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E && GetDuelistStatus(WhoseTurn()) && !gNotSure[0]->sorlTurns) {
    gTrapEffectData.unk2 = row2;
    gTrapEffectData.unk3 = col2;
    gTrapEffectData.id = gZones[row2][col2]->id;
    if (IsTrapTriggered() != 1 && IsUnlockedMonsterCard(gZones[row2][col2]) == 1 &&
        gZones[row3][col3]->id != CARD_NONE && GetTypeGroup(gZones[row3][col3]->id) == 1 &&
        !gZones[row3][col3]->isFaceUp)
      return 1;
  }
  return 0;
}*/

NAKED
static u8 sub_801AA44 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sb\n\
	mov r6, r8\n\
	push {r6, r7}\n\
	ldr r2, _0801AAF0\n\
	ldrb r0, [r2, #2]\n\
	lsrs r6, r0, #4\n\
	movs r1, #0xf\n\
	adds r5, r1, #0\n\
	ands r5, r0\n\
	ldrb r0, [r2, #3]\n\
	lsrs r2, r0, #4\n\
	mov r8, r2\n\
	adds r7, r1, #0\n\
	ands r7, r0\n\
	ldr r0, _0801AAF4\n\
	mov sb, r0\n\
	lsls r0, r6, #2\n\
	adds r0, r0, r6\n\
	adds r0, r0, r5\n\
	lsls r0, r0, #2\n\
	mov r1, sb\n\
	adds r4, r0, r1\n\
	ldr r0, [r4]\n\
	ldrh r0, [r0]\n\
	bl SetCardInfo\n\
	ldr r0, _0801AAF8\n\
	ldrb r0, [r0, #0x1e]\n\
	cmp r0, #0\n\
	bne _0801AB04\n\
	bl WhoseTurn\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	bl GetDuelistStatus\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	beq _0801AB04\n\
	ldr r0, _0801AAFC\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0, #2]\n\
	movs r0, #3\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _0801AB04\n\
	ldr r1, _0801AB00\n\
	strb r6, [r1, #2]\n\
	strb r5, [r1, #3]\n\
	ldr r0, [r4]\n\
	ldrh r0, [r0]\n\
	strh r0, [r1]\n\
	bl IsTrapTriggered\n\
	cmp r0, #1\n\
	beq _0801AB04\n\
	ldr r0, [r4]\n\
	bl IsUnlockedMonsterCard\n\
	cmp r0, #1\n\
	bne _0801AB04\n\
	mov r2, r8\n\
	lsls r0, r2, #2\n\
	add r0, r8\n\
	adds r0, r0, r7\n\
	lsls r0, r0, #2\n\
	mov r1, sb\n\
	adds r4, r0, r1\n\
	ldr r1, [r4]\n\
	ldrh r0, [r1]\n\
	cmp r0, #0\n\
	beq _0801AB04\n\
	bl GetTypeGroup\n\
	cmp r0, #1\n\
	bne _0801AB04\n\
	ldr r0, [r4]\n\
	ldrb r1, [r0, #5]\n\
	movs r0, #0x10\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _0801AB04\n\
	movs r0, #1\n\
	b _0801AB06\n\
	.align 2, 0\n\
_0801AAF0: .4byte 0x02021C00\n\
_0801AAF4: .4byte gZones\n\
_0801AAF8: .4byte gCardInfo\n\
_0801AAFC: .4byte gNotSure\n\
_0801AB00: .4byte gTrapEffectData\n\
_0801AB04:\n\
	movs r0, #0\n\
_0801AB06:\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1");
}

NAKED
static u8 sub_801AB14 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sb\n\
	mov r6, r8\n\
	push {r6, r7}\n\
	ldr r2, _0801ABC0 @ =0x02021C00\n\
	ldrb r0, [r2, #2]\n\
	lsrs r6, r0, #4\n\
	movs r1, #0xf\n\
	adds r5, r1, #0\n\
	ands r5, r0\n\
	ldrb r0, [r2, #3]\n\
	lsrs r2, r0, #4\n\
	mov r8, r2\n\
	adds r7, r1, #0\n\
	ands r7, r0\n\
	ldr r0, _0801ABC4 @ =0x02023FD0\n\
	mov sb, r0\n\
	lsls r0, r6, #2\n\
	adds r0, r0, r6\n\
	adds r0, r0, r5\n\
	lsls r0, r0, #2\n\
	mov r1, sb\n\
	adds r4, r0, r1\n\
	ldr r0, [r4]\n\
	ldrh r0, [r0]\n\
	bl SetCardInfo\n\
	ldr r0, _0801ABC8 @ =0x02021AD0\n\
	ldrb r0, [r0, #0x1e]\n\
	cmp r0, #0\n\
	beq _0801ABD4\n\
	bl WhoseTurn\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	bl GetDuelistStatus\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	beq _0801ABD4\n\
	ldr r0, _0801ABCC @ =0x02023FC0\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0, #2]\n\
	movs r0, #3\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _0801ABD4\n\
	ldr r1, _0801ABD0 @ =0x020245A0\n\
	strb r6, [r1, #2]\n\
	strb r5, [r1, #3]\n\
	ldr r0, [r4]\n\
	ldrh r0, [r0]\n\
	strh r0, [r1]\n\
	bl IsTrapTriggered\n\
	cmp r0, #1\n\
	beq _0801ABD4\n\
	ldr r0, [r4]\n\
	bl IsUnlockedMonsterCard\n\
	cmp r0, #1\n\
	bne _0801ABD4\n\
	mov r2, r8\n\
	lsls r0, r2, #2\n\
	add r0, r8\n\
	adds r0, r0, r7\n\
	lsls r0, r0, #2\n\
	mov r1, sb\n\
	adds r4, r0, r1\n\
	ldr r1, [r4]\n\
	ldrh r0, [r1]\n\
	cmp r0, #0\n\
	beq _0801ABD4\n\
	bl GetTypeGroup\n\
	cmp r0, #1\n\
	bne _0801ABD4\n\
	ldr r0, [r4]\n\
	ldrb r1, [r0, #5]\n\
	movs r0, #0x10\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _0801ABD4\n\
	movs r0, #1\n\
	b _0801ABD6\n\
	.align 2, 0\n\
_0801ABC0: .4byte 0x02021C00\n\
_0801ABC4: .4byte 0x02023FD0\n\
_0801ABC8: .4byte 0x02021AD0\n\
_0801ABCC: .4byte 0x02023FC0\n\
_0801ABD0: .4byte 0x020245A0\n\
_0801ABD4:\n\
	movs r0, #0\n\
_0801ABD6:\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1");
}

static u8 sub_801ABE4 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  if (GetDuelistStatus(WhoseTurn()) && !gNotSure[0]->sorlTurns) {
    SetCardInfo(gZones[row2][col2]->id);
    if (!gCardInfo.unk1E) {
      gTrapEffectData.unk2 = row2;
      gTrapEffectData.unk3 = col2;
      gTrapEffectData.id = gZones[row2][col2]->id;
      if (IsTrapTriggered() == 1 && IsUnlockedMonsterCard(gZones[row2][col2]) == 1 &&
          !GetNumCardsInRow(1))
        return 1;
    }
  }
  return 0;
}

static u8 sub_801AC74 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  if (GetDuelistStatus(WhoseTurn()) && !gNotSure[0]->sorlTurns) {
    SetCardInfo(gZones[row2][col2]->id);
    if (gCardInfo.unk1E) {
      gTrapEffectData.unk2 = row2;
      gTrapEffectData.unk3 = col2;
      gTrapEffectData.id = gZones[row2][col2]->id;
      if (IsTrapTriggered() == 1 && IsUnlockedMonsterCard(gZones[row2][col2]) == 1 &&
          !GetNumCardsInRow(1))
        return 1;
    }
  }
  return 0;
}

static u8 sub_801AD04 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  if (GetDuelistStatus(WhoseTurn()) && !gNotSure[0]->sorlTurns) {
    SetCardInfo(gZones[row2][col2]->id);
    if (!gCardInfo.unk1E) {
      gTrapEffectData.unk2 = row2;
      gTrapEffectData.unk3 = col2;
      gTrapEffectData.id = gZones[row2][col2]->id;
      if (IsTrapTriggered() == 1 && IsUnlockedMonsterCard(gZones[row2][col2]) == 1 &&
          gZones[row3][col3]->id != CARD_NONE && GetTypeGroup(gZones[row3][col3]->id) == 1 &&
          gZones[row3][col3]->isFaceUp)
        return 1;
    }
  }
  return 0;
}

static u8 sub_801ADD4 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  if (GetDuelistStatus(WhoseTurn()) && !gNotSure[0]->sorlTurns) {
    SetCardInfo(gZones[row2][col2]->id);
    if (gCardInfo.unk1E) {
      gTrapEffectData.unk2 = row2;
      gTrapEffectData.unk3 = col2;
      gTrapEffectData.id = gZones[row2][col2]->id;
      if (IsTrapTriggered() == 1 && IsUnlockedMonsterCard(gZones[row2][col2]) == 1 &&
          gZones[row3][col3]->id != CARD_NONE && GetTypeGroup(gZones[row3][col3]->id) == 1 &&
          gZones[row3][col3]->isFaceUp)
        return 1;
    }
  }
  return 0;
}

/*
static u8 sub_801AEA4 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E && GetDuelistStatus(WhoseTurn()) && !gNotSure[0]->sorlTurns) {
    gTrapEffectData.unk2 = row2;
    gTrapEffectData.unk3 = col2;
    gTrapEffectData.id = gZones[row2][col2]->id;
    if (IsTrapTriggered() != 1 && IsUnlockedMonsterCard(gZones[row2][col2]) == 1 &&
        gZones[row3][col3]->id != CARD_NONE && GetTypeGroup(gZones[row3][col3]->id) == 1 &&
        !gZones[row3][col3]->isFaceUp)
      return 1;
  }
  return 0;
}*/

NAKED
static u8 sub_801AEA4 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sb\n\
	mov r6, r8\n\
	push {r6, r7}\n\
	ldr r2, _0801AF50\n\
	ldrb r0, [r2, #2]\n\
	lsrs r6, r0, #4\n\
	movs r1, #0xf\n\
	adds r5, r1, #0\n\
	ands r5, r0\n\
	ldrb r0, [r2, #3]\n\
	lsrs r2, r0, #4\n\
	mov r8, r2\n\
	adds r7, r1, #0\n\
	ands r7, r0\n\
	ldr r0, _0801AF54\n\
	mov sb, r0\n\
	lsls r0, r6, #2\n\
	adds r0, r0, r6\n\
	adds r0, r0, r5\n\
	lsls r0, r0, #2\n\
	mov r1, sb\n\
	adds r4, r0, r1\n\
	ldr r0, [r4]\n\
	ldrh r0, [r0]\n\
	bl SetCardInfo\n\
	ldr r0, _0801AF58\n\
	ldrb r0, [r0, #0x1e]\n\
	cmp r0, #0\n\
	bne _0801AF64\n\
	bl WhoseTurn\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	bl GetDuelistStatus\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	beq _0801AF64\n\
	ldr r0, _0801AF5C\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0, #2]\n\
	movs r0, #3\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _0801AF64\n\
	ldr r1, _0801AF60\n\
	strb r6, [r1, #2]\n\
	strb r5, [r1, #3]\n\
	ldr r0, [r4]\n\
	ldrh r0, [r0]\n\
	strh r0, [r1]\n\
	bl IsTrapTriggered\n\
	cmp r0, #1\n\
	bne _0801AF64\n\
	ldr r0, [r4]\n\
	bl IsUnlockedMonsterCard\n\
	cmp r0, #1\n\
	bne _0801AF64\n\
	mov r2, r8\n\
	lsls r0, r2, #2\n\
	add r0, r8\n\
	adds r0, r0, r7\n\
	lsls r0, r0, #2\n\
	mov r1, sb\n\
	adds r4, r0, r1\n\
	ldr r1, [r4]\n\
	ldrh r0, [r1]\n\
	cmp r0, #0\n\
	beq _0801AF64\n\
	bl GetTypeGroup\n\
	cmp r0, #1\n\
	bne _0801AF64\n\
	ldr r0, [r4]\n\
	ldrb r1, [r0, #5]\n\
	movs r0, #0x10\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _0801AF64\n\
	movs r0, #1\n\
	b _0801AF66\n\
	.align 2, 0\n\
_0801AF50: .4byte 0x02021C00\n\
_0801AF54: .4byte gZones\n\
_0801AF58: .4byte gCardInfo\n\
_0801AF5C: .4byte gNotSure\n\
_0801AF60: .4byte gTrapEffectData\n\
_0801AF64:\n\
	movs r0, #0\n\
_0801AF66:\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1");
}

NAKED
static u8 sub_801AF74 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sb\n\
	mov r6, r8\n\
	push {r6, r7}\n\
	ldr r2, _0801B020 @ =0x02021C00\n\
	ldrb r0, [r2, #2]\n\
	lsrs r6, r0, #4\n\
	movs r1, #0xf\n\
	adds r5, r1, #0\n\
	ands r5, r0\n\
	ldrb r0, [r2, #3]\n\
	lsrs r2, r0, #4\n\
	mov r8, r2\n\
	adds r7, r1, #0\n\
	ands r7, r0\n\
	ldr r0, _0801B024 @ =0x02023FD0\n\
	mov sb, r0\n\
	lsls r0, r6, #2\n\
	adds r0, r0, r6\n\
	adds r0, r0, r5\n\
	lsls r0, r0, #2\n\
	mov r1, sb\n\
	adds r4, r0, r1\n\
	ldr r0, [r4]\n\
	ldrh r0, [r0]\n\
	bl SetCardInfo\n\
	ldr r0, _0801B028 @ =0x02021AD0\n\
	ldrb r0, [r0, #0x1e]\n\
	cmp r0, #0\n\
	beq _0801B034\n\
	bl WhoseTurn\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	bl GetDuelistStatus\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	beq _0801B034\n\
	ldr r0, _0801B02C @ =0x02023FC0\n\
	ldr r0, [r0]\n\
	ldrb r1, [r0, #2]\n\
	movs r0, #3\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _0801B034\n\
	ldr r1, _0801B030 @ =0x020245A0\n\
	strb r6, [r1, #2]\n\
	strb r5, [r1, #3]\n\
	ldr r0, [r4]\n\
	ldrh r0, [r0]\n\
	strh r0, [r1]\n\
	bl IsTrapTriggered\n\
	cmp r0, #1\n\
	bne _0801B034\n\
	ldr r0, [r4]\n\
	bl IsUnlockedMonsterCard\n\
	cmp r0, #1\n\
	bne _0801B034\n\
	mov r2, r8\n\
	lsls r0, r2, #2\n\
	add r0, r8\n\
	adds r0, r0, r7\n\
	lsls r0, r0, #2\n\
	mov r1, sb\n\
	adds r4, r0, r1\n\
	ldr r1, [r4]\n\
	ldrh r0, [r1]\n\
	cmp r0, #0\n\
	beq _0801B034\n\
	bl GetTypeGroup\n\
	cmp r0, #1\n\
	bne _0801B034\n\
	ldr r0, [r4]\n\
	ldrb r1, [r0, #5]\n\
	movs r0, #0x10\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _0801B034\n\
	movs r0, #1\n\
	b _0801B036\n\
	.align 2, 0\n\
_0801B020: .4byte 0x02021C00\n\
_0801B024: .4byte 0x02023FD0\n\
_0801B028: .4byte 0x02021AD0\n\
_0801B02C: .4byte 0x02023FC0\n\
_0801B030: .4byte 0x020245A0\n\
_0801B034:\n\
	movs r0, #0\n\
_0801B036:\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1");
}

static u8 sub_801B044 (void) {
  return 0;
}

static u8 sub_801B048 (void) {
  return 1;
}

static u8 sub_801B04C (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  if (sub_8043714(gZones[row2][col2]) != 1)
    return 0;
  return 1;
}

static u8 sub_801B084 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E && IsTrapCard(gZones[row2][col2]) == 1 &&
      GetFINAL_Flag(gZones[row2][col2]->id) < 1)
    return 1;
  return 0;
}

static u8 sub_801B0DC (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  if (IsTrapCard(gZones[row2][col2]) != 1 || GetFINAL_Flag(gZones[row2][col2]->id) < 1)
    return 0;
  return 1;
}

static u8 sub_801B120 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E && IsTrapCard(gZones[row2][col2]) == 1 &&
      GetFINAL_Flag(gZones[row2][col2]->id) < 1)
    return 1;
  return 0;
}

static u8 sub_801B178 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  if (sub_804376C(gZones[row2][col2]) != 1)
    return 0;
  return 1;
}

NAKED
static u8 sub_801B1B0 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sb\n\
	mov r6, r8\n\
	push {r6, r7}\n\
	ldr r3, _0801B218\n\
	ldrb r1, [r3, #2]\n\
	lsrs r0, r1, #4\n\
	adds r5, r0, #0\n\
	movs r2, #0xf\n\
	adds r0, r2, #0\n\
	ands r0, r1\n\
	mov r8, r0\n\
	ldrb r0, [r3, #3]\n\
	lsrs r6, r0, #4\n\
	adds r4, r2, #0\n\
	ands r4, r0\n\
	ldr r0, _0801B21C\n\
	mov sb, r0\n\
	lsls r0, r5, #2\n\
	adds r0, r0, r5\n\
	add r0, r8\n\
	lsls r0, r0, #2\n\
	mov r1, sb\n\
	adds r7, r0, r1\n\
	ldr r0, [r7]\n\
	bl sub_804376C\n\
	cmp r0, #1\n\
	bne _0801B224\n\
	lsls r0, r6, #2\n\
	adds r0, r0, r6\n\
	adds r0, r0, r4\n\
	lsls r0, r0, #2\n\
	add r0, sb\n\
	ldr r0, [r0]\n\
	bl IsUnlockedMonsterCard\n\
	cmp r0, #1\n\
	bne _0801B224\n\
	ldr r1, _0801B220\n\
	strb r5, [r1, #2]\n\
	mov r0, r8\n\
	strb r0, [r1, #3]\n\
	ldr r0, [r7]\n\
	ldrh r0, [r0]\n\
	strh r0, [r1]\n\
	bl IsTrapTriggered\n\
	cmp r0, #1\n\
	beq _0801B224\n\
	movs r0, #1\n\
	b _0801B226\n\
	.align 2, 0\n\
_0801B218: .4byte 0x02021C00\n\
_0801B21C: .4byte gZones\n\
_0801B220: .4byte gTrapEffectData\n\
_0801B224:\n\
	movs r0, #0\n\
_0801B226:\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1");
}

NAKED
static u8 sub_801B234 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sb\n\
	mov r6, r8\n\
	push {r6, r7}\n\
	ldr r3, _0801B29C\n\
	ldrb r1, [r3, #2]\n\
	lsrs r0, r1, #4\n\
	adds r5, r0, #0\n\
	movs r2, #0xf\n\
	adds r0, r2, #0\n\
	ands r0, r1\n\
	mov r8, r0\n\
	ldrb r0, [r3, #3]\n\
	lsrs r6, r0, #4\n\
	adds r4, r2, #0\n\
	ands r4, r0\n\
	ldr r0, _0801B2A0\n\
	mov sb, r0\n\
	lsls r0, r5, #2\n\
	adds r0, r0, r5\n\
	add r0, r8\n\
	lsls r0, r0, #2\n\
	mov r1, sb\n\
	adds r7, r0, r1\n\
	ldr r0, [r7]\n\
	bl sub_804376C\n\
	cmp r0, #1\n\
	bne _0801B2A8\n\
	lsls r0, r6, #2\n\
	adds r0, r0, r6\n\
	adds r0, r0, r4\n\
	lsls r0, r0, #2\n\
	add r0, sb\n\
	ldr r0, [r0]\n\
	bl IsUnlockedMonsterCard\n\
	cmp r0, #1\n\
	bne _0801B2A8\n\
	ldr r1, _0801B2A4\n\
	strb r5, [r1, #2]\n\
	mov r0, r8\n\
	strb r0, [r1, #3]\n\
	ldr r0, [r7]\n\
	ldrh r0, [r0]\n\
	strh r0, [r1]\n\
	bl IsTrapTriggered\n\
	cmp r0, #1\n\
	bne _0801B2A8\n\
	movs r0, #1\n\
	b _0801B2AA\n\
	.align 2, 0\n\
_0801B29C: .4byte 0x02021C00\n\
_0801B2A0: .4byte gZones\n\
_0801B2A4: .4byte gTrapEffectData\n\
_0801B2A8:\n\
	movs r0, #0\n\
_0801B2AA:\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1");
}

static u8 sub_801B2B8 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  if (sub_8043790(gZones[row2][col2]) == 1) {
    SetCardInfo(gZones[row2][col2]->id);
    if (!gCardInfo.unk1E)
      return 1;
  }
  return 0;
}

static u8 sub_801B304 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  if (GetTypeGroup(gZones[row2][col2]->id) == 2 && GetSpellType(gZones[row2][col2]->id) == 2) {
    SetCardInfo(gZones[row2][col2]->id);
    if (gCardInfo.unk1E)
      return 1;
  }
  return 0;
}

static u8 sub_801B35C (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  if (sub_8043790(gZones[row2][col2]) == 1) {
    gTrapEffectData.unk2 = row2;
    gTrapEffectData.unk3 = col2;
    gTrapEffectData.id = gZones[row2][col2]->id;
    if (IsTrapTriggered() != 1)
      return 1;
  }
  return 0;
}

static u8 sub_801B3AC (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  if (sub_8043790(gZones[row2][col2]) == 1) {
    gTrapEffectData.unk2 = row2;
    gTrapEffectData.unk3 = col2;
    gTrapEffectData.id = gZones[row2][col2]->id;
    if (IsTrapTriggered() == 1)
      return 1;
  }
  return 0;
}

static u8 sub_801B3FC (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  if (IsRitualCard(gZones[row2][col2]) != 1)
    return 0;
  return 1;
}

static u8 sub_801B434 (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  u8 row3 = sAI_Command.unk3 >> 4;
  u8 col3 = sAI_Command.unk3 & 0xF;
  u8 row4 = sAI_Command.unk4 >> 4;
  u8 col4 = sAI_Command.unk4 & 0xF;
  u8 row5 = sAI_Command.unk5 >> 4;
  u8 col5 = sAI_Command.unk5 & 0xF;
  u8 zones[3];
  if (IsRitualCard(gZones[row2][col2]) != 1 || IsUnlockedMonsterCard(gZones[row3][col3]) != 1 ||
      IsUnlockedMonsterCard(gZones[row4][col4]) != 1 || IsUnlockedMonsterCard(gZones[row5][col5]) != 1)
    return 0;
  SetCardInfo(gZones[row2][col2]->id);
  switch (gCardInfo.ritualEffect) {
    case 5:
      if (sub_804B144(zones, gRitualComponents[29]) != TRUE && sub_804B144(zones, gRitualComponents[28]) != TRUE &&
          sub_804B144(zones, gRitualComponents[27]) != TRUE && sub_804B144(zones, gRitualComponents[5]) != TRUE)
        return 0;
      break;
    case 0x18:
      if (!sub_801B5BC(col3, gRitualComponents[26]) && !sub_801B5BC(col3, gRitualComponents[24]))
        return 0;
      break;
    default:
      if (!sub_801B5BC(col3, gRitualComponents[gCardInfo.ritualEffect]))
        return 0;
      break;
  }
  return 1;
}

static u8 sub_801B56C (void) {
  u8 row2 = sAI_Command.unk2 >> 4;
  u8 col2 = sAI_Command.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E && GetTypeGroup(gZones[row2][col2]->id) == 2) // TYPE_GROUP_SPELL
    GetSpellType(gZones[row2][col2]->id);
  return 0;
}

static u8 sub_801B5BC (u8 arg0, u16* arg1) {
  if (RowHasCardMatch(gZones[2], *arg1) == 1 && GetFirstCardMatchZoneId(gZones[2], *arg1) == arg0)
    return 1;
  return 0;
}





// ***********split?**************

// unused?
static unsigned short sub_801B5F0 (int arg0, u8* arg1) {
  unsigned short ret = 0xFFFF;
  while (--arg0 >= 0) {
    u32 temp = ret << 8;
    ret = g80B0B20[ret >> 8 ^ *arg1] ^ temp;
    arg1++;
  }
  return ~ret;
}

// unused?
static unsigned short sub_801B630 (int arg0, u8* arg1) {
  unsigned short ret = 0xFFFF;
  while (--arg0 >= 0) {
    unsigned short temp = ret >> 8;
    u8 temp2 = ret ^ *arg1;
    ret = g80B0C20[temp2] ^ temp;
    arg1++;
  }
  return ~ret;
}

/*
void (*g8DFF55C[])(void) = {
  sub_800E928,
  sub_800E92C,
  sub_800E11C,
  sub_800E1C4,
  sub_800E294,
  sub_800E958,
  sub_800E50C,
  sub_800E58C,
  sub_800E63C,
  sub_800E58C,
  sub_800E63C,
  sub_800E3B4,
  sub_800E98C,
  sub_800E98C,
  sub_800EA20,
  sub_800EAF8,
  sub_800EB40,
  sub_800EB40,
  sub_800EBD8,
  sub_800EC68,
  sub_800EC68,
  sub_800ED00,
  sub_800ED48,
  sub_800E8B4,
  sub_800EA68,
  sub_800E9A4,
  sub_800E170,
  sub_800E22C,
  sub_800E324,
  sub_800E460,
  sub_800E9D0,
  sub_800E54C,
  sub_800E5E4,
  sub_800E6B8,
  sub_800E5E4,
  sub_800E6B8,
  sub_800EA04,
  sub_800EA04,
  sub_800EC20,
  sub_800EAB0,
  sub_800EDF8
};*/

