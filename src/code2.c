#include "global.h"
#include "duel.h"
#include "card.h"
#include "constants/card_ids.h"

void sub_803FD14(void);
void sub_80581DC();
void sub_800F830(void);


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
    struct DuelDeck duelDeck[2];
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
extern void (*gUnk_8DFF6A8[])(void);
extern void (*gUnk_8DFF74C[])(void);
int sub_802061C(u16);

void sub_800E0D4(void)
{
    sub_803FD14();
    g8DFF600[gUnk2021C00.unk0]();
}

void sub_800E0F8(void)
{
    sub_803FD14();
    g8DFF55C[gUnk2021C00.unk0]();
}

void sub_800E11C(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E170(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E1C4(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E22C(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E294(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;
    u8 row4 = gUnk2021C00.unk4 >> 4;
    u8 col4 = gUnk2021C00.unk4 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row4][col4], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E324(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;
    u8 row4 = gUnk2021C00.unk4 >> 4;
    u8 col4 = gUnk2021C00.unk4 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row4][col4], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E3B4(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;
    u8 row4 = gUnk2021C00.unk4 >> 4;
    u8 col4 = gUnk2021C00.unk4 & 0xF;
    u8 row5 = gUnk2021C00.unk5 >> 4;
    u8 col5 = gUnk2021C00.unk5 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row5][col5], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row4][col4], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E460(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;
    u8 row4 = gUnk2021C00.unk4 >> 4;
    u8 col4 = gUnk2021C00.unk4 & 0xF;
    u8 row5 = gUnk2021C00.unk5 >> 4;
    u8 col5 = gUnk2021C00.unk5 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row5][col5], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row4][col4], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E50C(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
}

void sub_800E54C(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
}

void sub_800E58C(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    sub_803F8E0(4 - col2);
    sub_803F29C();
    sub_803F224();
}

void sub_800E5E4(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    sub_803F8E0(4 - col2);
    sub_803F29C();
    sub_803F224();
}

void sub_800E63C(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gZones[row3][col3]->isFaceUp = TRUE;
    sub_803F908(col3 ,4 - col2);
    sub_803F29C();
    sub_803F224();
}

void sub_800E6B8(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gZones[row3][col3]->isFaceUp = TRUE;
    sub_803F908(col3 ,4 - col2);
    sub_803F29C();
    sub_803F224();
}

void sub_800E734(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gUnk020245A0.unk2 = row2;
    gUnk020245A0.unk3 = col2;
    gUnk020245A0.id = gZones[row2][col2]->id;
    sub_80586DC();
    sub_80581DC();
}

void sub_800E794(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gUnk020245A0.unk2 = row2;
    gUnk020245A0.unk3 = col2;
    gUnk020245A0.id = gZones[row2][col2]->id;
    sub_80586DC();
    sub_80581DC();
}

void sub_800E7F4(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gUnk020245A0.unk2 = row2;
    gUnk020245A0.unk3 = col2;
    gUnk020245A0.id = gZones[row2][col2]->id;
    sub_80586DC();
    sub_80581DC();
}

void sub_800E854(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gUnk020245A0.unk2 = row2;
    gUnk020245A0.unk3 = col2;
    gUnk020245A0.id = gZones[row2][col2]->id;
    sub_80586DC();
    sub_80581DC();
}

void sub_800E8B4(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gMonEffect.id = gZones[row2][col2]->id;
    gMonEffect.row = row2;
    gMonEffect.zone = col2;
    ActivateMonEffect();
    if (gNotSure[TURN_PLAYER]->unkThree)
        sub_8040540(4);
}

void sub_800E928(void){}

void sub_800E92C(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row2][col2], 0);
}

void sub_800E958(void)
{

    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    gZones[row2][col2]->isDefending = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
}

void sub_800E98C(void)
{
    sub_800E63C();
}

void sub_800E998(void)
{
    sub_800E7F4();
}

void sub_800E9A4(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row2][col2], 0);
}

void sub_800E9D0(void)
{

    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    gZones[row2][col2]->isDefending = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
}

void sub_800EA04(void)
{
    sub_800E6B8();
}

void sub_800EA10(void)
{
    sub_800E854();
}

void sub_800EA1C(void){}

void sub_800EA20(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

void sub_800EA68(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

void sub_800EAB0(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

void sub_800EAF8(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

void sub_800EB40(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    gUnk2024260.id = gZones[row2][col2]->id;
    gUnk2024260.unk4 = row2;
    gUnk2024260.unk5 = col2;
    gUnk2024260.unk2 = row3;
    gUnk2024260.unk3 = col3;
    ActivateSpellEffect();
    ClearZone(gZones[row2][col2]);
}

void sub_800EB8C(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    gUnk2024260.id = gZones[row2][col2]->id;
    gUnk2024260.unk4 = row2;
    gUnk2024260.unk5 = col2;
    gUnk2024260.unk2 = row3;
    gUnk2024260.unk3 = col3;
    ActivateSpellEffect();
    ClearZone(gZones[row2][col2]);
}

void sub_800EBD8(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

void sub_800EC20(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

void sub_800EC68(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    gUnk2024260.id = gZones[row2][col2]->id;
    gUnk2024260.unk2 = row2;
    gUnk2024260.unk3 = col2;
    ActivateSpellEffect();
    if (gNotSure[TURN_PLAYER]->unkThree)
        sub_8040540(4);
    ClearZone(gZones[row2][col2]);
}

void sub_800ECC0(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    gUnk2024260.id = gZones[row2][col2]->id;
    gUnk2024260.unk2 = row2;
    gUnk2024260.unk3 = col2;
    ActivateSpellEffect();
    ClearZone(gZones[row2][col2]);
}

void sub_800ED00(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

void sub_800ED48(void)
{
    u8 row2;
    u8 col2;
    u8 row4;
    u8 col4;
    u8 row5;
    u8 col5;

    row2 = ({gUnk2021C00.unk2 >> 4;});
    col2 = ({gUnk2021C00.unk2 & 0xF;});
    row4 = gUnk2021C00.unk4 >> 4;
    col4 = gUnk2021C00.unk4 & 0xF;
    row5 = gUnk2021C00.unk5 >> 4;
    col5 = gUnk2021C00.unk5 & 0xF;

    if (sub_8021D00(gZones[row2][col2]->id) == 2)
    {
        ClearZoneAndSendMonToGraveyard(gZones[row4][col4], 0);
        ClearZoneAndSendMonToGraveyard(gZones[row5][col5], 0);
    }
    gUnk2024260.id = gZones[row2][col2]->id;
    gUnk2024260.unk2 = row2;
    gUnk2024260.unk3 = col2;
    ActivateSpellEffect();
    ClearZone(gZones[row2][col2]);
}

void sub_800EDF8(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row2][col2], 0);
}

void sub_800EE24(void)
{
    u8 i;

    gUnk_8DFF6A4->duel = gDuel;
    for (i = 0; i < 2; i++)
    {
        gUnk_8DFF6A4->duelDeck[i].cardsDrawn = gUnk20240F0[i].cardsDrawn;
        gUnk_8DFF6A4->lifePoints[i] = gLifePoints[i];
        gUnk_8DFF6A4->duelistStatus[i] = gDuelistStatus[i];
    }
}

void sub_800EE94(void)
{
    u8 i;

    gDuel = gUnk_8DFF6A4->duel;
    for (i = 0; i < 2; i++)
    {
        gUnk20240F0[i].cardsDrawn = gUnk_8DFF6A4->duelDeck[i].cardsDrawn;
        gLifePoints[i] = gUnk_8DFF6A4->lifePoints[i];
        gDuelistStatus[i] = gUnk_8DFF6A4->duelistStatus[i];
    }
}

u16 sub_800EF0C(void)
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

void sub_800EF7C(u8 sb)
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
void sub_800F014(void)
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
void sub_800F014(void)
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

void sub_800F108(void)
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
void sub_800F158(void)
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
void sub_800F158(void)
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
void sub_800F19C(void)
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

void sub_800F1EC(void)
{
    gUnk_8DFF6A4->unk2298 = 0;
    gUnk_8DFF6A4->unk229C = 0;
    gUnk_8DFF6A4->unk504[gUnk_8DFF6A4->unk2294].a = g2021BF8;
    gUnk_8DFF6A8[gUnk2021C00.unk0]();
}

void sub_800F248(void)
{
    gUnk_8DFF74C[gUnk2021C00.unk0]();
    gUnk_8DFF6A4->unk504[gUnk_8DFF6A4->unk2294].c = gUnk_8DFF6A4->unk2298;
    gUnk_8DFF6A4->unk2294++;
}
/*
void sub_800F298(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u16 cardId = gZones[row2][col2]->id;

    SetCardInfo(cardId);
    if (gCardInfo.spellEffect == 2)
    {
        switch (sub_8045390(cardId))
        {
        case 0:
            if (sub_802061C(cardId) && NumCardInRow(&gZones[row2][col2], cardId) < 2)
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
        gStatMod.stage = sub_804069C(gZones[row2][col2]);
        SetFinalStat(&gStatMod);
        gUnk_8DFF6A4->unk2298 += 0xFFFE - gCardInfo.atk;
        gUnk_8DFF6A4->unk2298 += 0xFFFE - gCardInfo.def;
    }
    else
        gUnk_8DFF6A4->unk2298 = 0x7EE2CFBF;

}*/

NAKED
void sub_800F298(void)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	mov r7, sb\n\
	mov r6, r8\n\
	push {r6, r7}\n\
	ldr r0, _0800F2E8\n\
	ldrb r0, [r0, #2]\n\
	lsrs r7, r0, #4\n\
	movs r1, #0xf\n\
	mov r8, r1\n\
	ands r1, r0\n\
	mov r8, r1\n\
	ldr r0, _0800F2EC\n\
	mov sb, r0\n\
	lsls r6, r1, #2\n\
	lsls r0, r7, #2\n\
	adds r0, r0, r7\n\
	lsls r5, r0, #2\n\
	adds r0, r6, r5\n\
	add r0, sb\n\
	ldr r0, [r0]\n\
	ldrh r4, [r0]\n\
	adds r0, r4, #0\n\
	bl SetCardInfo\n\
	ldr r0, _0800F2F0\n\
	ldrb r0, [r0, #0x1a]\n\
	cmp r0, #2\n\
	beq _0800F2D2\n\
	b _0800F448\n\
_0800F2D2:\n\
	adds r0, r4, #0\n\
	bl sub_8045390\n\
	cmp r0, #1\n\
	beq _0800F350\n\
	cmp r0, #1\n\
	bgt _0800F2F4\n\
	cmp r0, #0\n\
	beq _0800F2FE\n\
	b _0800F3C8\n\
	.align 2, 0\n\
_0800F2E8: .4byte 0x02021C00\n\
_0800F2EC: .4byte gZones\n\
_0800F2F0: .4byte gCardInfo\n\
_0800F2F4:\n\
	cmp r0, #2\n\
	beq _0800F36C\n\
	cmp r0, #3\n\
	beq _0800F388\n\
	b _0800F3C8\n\
_0800F2FE:\n\
	adds r0, r4, #0\n\
	bl sub_802061C\n\
	cmp r0, #0\n\
	beq _0800F334\n\
	mov r1, sb\n\
	adds r0, r6, r1\n\
	adds r0, r5, r0\n\
	adds r1, r4, #0\n\
	bl NumCardInRow\n\
	cmp r0, #1\n\
	bgt _0800F334\n\
	ldr r0, _0800F328\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F32C\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F330\n\
	str r1, [r0]\n\
	b _0800F3E0\n\
	.align 2, 0\n\
_0800F328: .4byte gUnk_8DFF6A4\n\
_0800F32C: .4byte 0x00002298\n\
_0800F330: .4byte 0x7EDE89FE\n\
_0800F334:\n\
	ldr r0, _0800F344\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F348\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F34C\n\
	str r1, [r0]\n\
	b _0800F3E0\n\
	.align 2, 0\n\
_0800F344: .4byte gUnk_8DFF6A4\n\
_0800F348: .4byte 0x00002298\n\
_0800F34C: .4byte 0x7EE0ACDF\n\
_0800F350:\n\
	ldr r0, _0800F360\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F364\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F368\n\
	str r1, [r0]\n\
	b _0800F3E0\n\
	.align 2, 0\n\
_0800F360: .4byte gUnk_8DFF6A4\n\
_0800F364: .4byte 0x00002298\n\
_0800F368: .4byte 0x7EE4F29F\n\
_0800F36C:\n\
	ldr r0, _0800F37C\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F380\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F384\n\
	str r1, [r0]\n\
	b _0800F3E0\n\
	.align 2, 0\n\
_0800F37C: .4byte gUnk_8DFF6A4\n\
_0800F380: .4byte 0x00002298\n\
_0800F384: .4byte 0x7EE7157F\n\
_0800F388:\n\
	adds r0, r4, #0\n\
	bl IsGodCard\n\
	cmp r0, #1\n\
	bne _0800F3AC\n\
	ldr r0, _0800F3A0\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F3A4\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F3A8\n\
	str r1, [r0]\n\
	b _0800F3E0\n\
	.align 2, 0\n\
_0800F3A0: .4byte gUnk_8DFF6A4\n\
_0800F3A4: .4byte 0x00002298\n\
_0800F3A8: .4byte 0x7EDE89FF\n\
_0800F3AC:\n\
	ldr r0, _0800F3BC\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F3C0\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F3C4\n\
	str r1, [r0]\n\
	b _0800F3E0\n\
	.align 2, 0\n\
_0800F3BC: .4byte gUnk_8DFF6A4\n\
_0800F3C0: .4byte 0x00002298\n\
_0800F3C4: .4byte 0x7EE9385F\n\
_0800F3C8:\n\
	ldr r0, _0800F3D4\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F3D8\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F3DC\n\
	b _0800F452\n\
	.align 2, 0\n\
_0800F3D4: .4byte gUnk_8DFF6A4\n\
_0800F3D8: .4byte 0x00002298\n\
_0800F3DC: .4byte 0x7EDE89F9\n\
_0800F3E0:\n\
	ldr r4, _0800F42C\n\
	ldr r0, _0800F430\n\
	lsls r1, r7, #2\n\
	adds r1, r1, r7\n\
	add r1, r8\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	ldrh r0, [r0]\n\
	strh r0, [r4]\n\
	ldr r0, _0800F434\n\
	adds r0, #0xf0\n\
	ldrb r0, [r0]\n\
	strb r0, [r4, #2]\n\
	ldr r0, [r1]\n\
	bl sub_804069C\n\
	strb r0, [r4, #3]\n\
	adds r0, r4, #0\n\
	bl SetFinalStat\n\
	ldr r0, _0800F438\n\
	ldr r2, [r0]\n\
	ldr r0, _0800F43C\n\
	adds r2, r2, r0\n\
	ldr r0, [r2]\n\
	ldr r4, _0800F440\n\
	adds r0, r0, r4\n\
	ldr r3, _0800F444\n\
	ldrh r1, [r3, #0x12]\n\
	subs r0, r0, r1\n\
	str r0, [r2]\n\
	adds r0, r0, r4\n\
	ldrh r1, [r3, #0x14]\n\
	subs r0, r0, r1\n\
	str r0, [r2]\n\
	b _0800F454\n\
	.align 2, 0\n\
_0800F42C: .4byte gStatMod\n\
_0800F430: .4byte gZones\n\
_0800F434: .4byte gDuel\n\
_0800F438: .4byte gUnk_8DFF6A4\n\
_0800F43C: .4byte 0x00002298\n\
_0800F440: .4byte 0x0000FFFE\n\
_0800F444: .4byte gCardInfo\n\
_0800F448:\n\
	ldr r0, _0800F460\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F464\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F468\n\
_0800F452:\n\
	str r1, [r0]\n\
_0800F454:\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0800F460: .4byte gUnk_8DFF6A4\n\
_0800F464: .4byte 0x00002298\n\
_0800F468: .4byte 0x7EE2CFBF");
}
/*
void sub_800F46C(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u16 cardId = gZones[row2][col2]->id;

    SetCardInfo(cardId);
    if (gCardInfo.spellEffect == 2)
    {
        switch (sub_8045390(cardId))
        {
        case 0:
            if (sub_802061C(cardId) && NumCardInRow(&gZones[row2][col2], cardId) < 2)
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
        gStatMod.stage = sub_804069C(gZones[row2][col2]);
        SetFinalStat(&gStatMod);
        gUnk_8DFF6A4->unk2298 += 0xFFFE - gCardInfo.atk;
        gUnk_8DFF6A4->unk2298 += 0xFFFE - gCardInfo.def;
    }
    else
        gUnk_8DFF6A4->unk2298 = 0x7EE2CFBF;
}*/

NAKED
void sub_800F46C(void)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	mov r7, sb\n\
	mov r6, r8\n\
	push {r6, r7}\n\
	ldr r0, _0800F4BC\n\
	ldrb r0, [r0, #2]\n\
	lsrs r7, r0, #4\n\
	movs r1, #0xf\n\
	mov r8, r1\n\
	ands r1, r0\n\
	mov r8, r1\n\
	ldr r0, _0800F4C0\n\
	mov sb, r0\n\
	lsls r6, r1, #2\n\
	lsls r0, r7, #2\n\
	adds r0, r0, r7\n\
	lsls r5, r0, #2\n\
	adds r0, r6, r5\n\
	add r0, sb\n\
	ldr r0, [r0]\n\
	ldrh r4, [r0]\n\
	adds r0, r4, #0\n\
	bl SetCardInfo\n\
	ldr r0, _0800F4C4\n\
	ldrb r0, [r0, #0x1a]\n\
	cmp r0, #2\n\
	beq _0800F4A6\n\
	b _0800F61C\n\
_0800F4A6:\n\
	adds r0, r4, #0\n\
	bl sub_8045390\n\
	cmp r0, #1\n\
	beq _0800F524\n\
	cmp r0, #1\n\
	bgt _0800F4C8\n\
	cmp r0, #0\n\
	beq _0800F4D2\n\
	b _0800F59C\n\
	.align 2, 0\n\
_0800F4BC: .4byte 0x02021C00\n\
_0800F4C0: .4byte gZones\n\
_0800F4C4: .4byte gCardInfo\n\
_0800F4C8:\n\
	cmp r0, #2\n\
	beq _0800F540\n\
	cmp r0, #3\n\
	beq _0800F55C\n\
	b _0800F59C\n\
_0800F4D2:\n\
	adds r0, r4, #0\n\
	bl sub_802061C\n\
	cmp r0, #0\n\
	beq _0800F508\n\
	mov r1, sb\n\
	adds r0, r6, r1\n\
	adds r0, r5, r0\n\
	adds r1, r4, #0\n\
	bl NumCardInRow\n\
	cmp r0, #1\n\
	bgt _0800F508\n\
	ldr r0, _0800F4FC\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F500\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F504\n\
	str r1, [r0]\n\
	b _0800F5B4\n\
	.align 2, 0\n\
_0800F4FC: .4byte gUnk_8DFF6A4\n\
_0800F500: .4byte 0x00002298\n\
_0800F504: .4byte 0x7EDE89FE\n\
_0800F508:\n\
	ldr r0, _0800F518\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F51C\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F520\n\
	str r1, [r0]\n\
	b _0800F5B4\n\
	.align 2, 0\n\
_0800F518: .4byte gUnk_8DFF6A4\n\
_0800F51C: .4byte 0x00002298\n\
_0800F520: .4byte 0x7EE0ACDF\n\
_0800F524:\n\
	ldr r0, _0800F534\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F538\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F53C\n\
	str r1, [r0]\n\
	b _0800F5B4\n\
	.align 2, 0\n\
_0800F534: .4byte gUnk_8DFF6A4\n\
_0800F538: .4byte 0x00002298\n\
_0800F53C: .4byte 0x7EE4F29F\n\
_0800F540:\n\
	ldr r0, _0800F550\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F554\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F558\n\
	str r1, [r0]\n\
	b _0800F5B4\n\
	.align 2, 0\n\
_0800F550: .4byte gUnk_8DFF6A4\n\
_0800F554: .4byte 0x00002298\n\
_0800F558: .4byte 0x7EE7157F\n\
_0800F55C:\n\
	adds r0, r4, #0\n\
	bl IsGodCard\n\
	cmp r0, #1\n\
	bne _0800F580\n\
	ldr r0, _0800F574\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F578\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F57C\n\
	str r1, [r0]\n\
	b _0800F5B4\n\
	.align 2, 0\n\
_0800F574: .4byte gUnk_8DFF6A4\n\
_0800F578: .4byte 0x00002298\n\
_0800F57C: .4byte 0x7EDE89FF\n\
_0800F580:\n\
	ldr r0, _0800F590\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F594\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F598\n\
	str r1, [r0]\n\
	b _0800F5B4\n\
	.align 2, 0\n\
_0800F590: .4byte gUnk_8DFF6A4\n\
_0800F594: .4byte 0x00002298\n\
_0800F598: .4byte 0x7EE9385F\n\
_0800F59C:\n\
	ldr r0, _0800F5A8\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F5AC\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F5B0\n\
	b _0800F626\n\
	.align 2, 0\n\
_0800F5A8: .4byte gUnk_8DFF6A4\n\
_0800F5AC: .4byte 0x00002298\n\
_0800F5B0: .4byte 0x7EDE89F9\n\
_0800F5B4:\n\
	ldr r4, _0800F600\n\
	ldr r0, _0800F604\n\
	lsls r1, r7, #2\n\
	adds r1, r1, r7\n\
	add r1, r8\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	ldrh r0, [r0]\n\
	strh r0, [r4]\n\
	ldr r0, _0800F608\n\
	adds r0, #0xf0\n\
	ldrb r0, [r0]\n\
	strb r0, [r4, #2]\n\
	ldr r0, [r1]\n\
	bl sub_804069C\n\
	strb r0, [r4, #3]\n\
	adds r0, r4, #0\n\
	bl SetFinalStat\n\
	ldr r0, _0800F60C\n\
	ldr r2, [r0]\n\
	ldr r0, _0800F610\n\
	adds r2, r2, r0\n\
	ldr r0, [r2]\n\
	ldr r4, _0800F614\n\
	adds r0, r0, r4\n\
	ldr r3, _0800F618\n\
	ldrh r1, [r3, #0x12]\n\
	subs r0, r0, r1\n\
	str r0, [r2]\n\
	adds r0, r0, r4\n\
	ldrh r1, [r3, #0x14]\n\
	subs r0, r0, r1\n\
	str r0, [r2]\n\
	b _0800F628\n\
	.align 2, 0\n\
_0800F600: .4byte gStatMod\n\
_0800F604: .4byte gZones\n\
_0800F608: .4byte gDuel\n\
_0800F60C: .4byte gUnk_8DFF6A4\n\
_0800F610: .4byte 0x00002298\n\
_0800F614: .4byte 0x0000FFFE\n\
_0800F618: .4byte gCardInfo\n\
_0800F61C:\n\
	ldr r0, _0800F634\n\
	ldr r0, [r0]\n\
	ldr r1, _0800F638\n\
	adds r0, r0, r1\n\
	ldr r1, _0800F63C\n\
_0800F626:\n\
	str r1, [r0]\n\
_0800F628:\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0800F634: .4byte gUnk_8DFF6A4\n\
_0800F638: .4byte 0x00002298\n\
_0800F63C: .4byte 0x7EE2CFBF");
}
/*
void sub_800F640(void)
{
    u8 row2;
    u8 col2;
    u8 row3;
    u8 col3;

    row2 = gUnk2021C00.unk2 >> 4;
    col2 = gUnk2021C00.unk2 & 0xF;
    row3 = gUnk2021C00.unk3 >> 4;
    col3 = gUnk2021C00.unk3 & 0xF;

    SetCardInfo(gZones[row2][col2]->id);
    if (gCardInfo.unk1E)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else
    {
        if (sub_80436EC(gZones[row2][col2]) != 1)
            gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
        else if (sub_8045390(gZones[row2][col2]->id) != 0)
            gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
        else if (sub_802061C(gZones[row2][col2]->id) && NumCardInRow(gZones[row2], gZones[row2][col2]->id) < 2)
            sub_800F830();
        else if (gZones[row3][col3]->id == CARD_NONE)
            gUnk_8DFF6A4->unk2298 = 0x7F3D9A1C;
        else if (gZones[row3][col3]->isLocked)
            gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
        else if (sub_803FCBC(gZones[row3][col3]->id) != 1)
            gUnk_8DFF6A4->unk2298 = 0x7F3D9A1C;
        else
        {
            u16 atk;
            gStatMod.card = gZones[row2][col2]->id;
            gStatMod.field = gDuel.field;
            gStatMod.stage = sub_804069C(gZones[row2][col2]);
            SetFinalStat(&gStatMod);
            atk = gCardInfo.atk;
            gStatMod.card = gZones[row3][col3]->id;
            gStatMod.field = gDuel.field;
            gStatMod.stage = sub_804069C(gZones[row2][col2]);
            SetFinalStat(&gStatMod);
            if (atk <= gCardInfo.atk)
                gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
            else
                gUnk_8DFF6A4->unk2298 = 0x7F32EBBC;
        }
    }
}*/
