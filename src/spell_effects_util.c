#include "global.h"
#include "duel.h"
#include "card.h"

extern u8 g81060A8[];
extern u8 g810610D[];
extern u8 g8106172[];
extern u8 g81061D7[];
extern u8 g810623C[];
extern u8 g81062A1[];
extern u8 g8106306[];
extern u8 g810636B[];
extern u8 g81063D0[];
extern u8 g8106435[];
extern u8 g810649A[];
extern u8 g81064FF[];
extern u8 g8106564[];
extern u8 g81065C9[];
extern u8 g810662E[];
extern u8 g8106693[];
extern u8 g81066F8[];
extern u8 g810675D[];
extern u8 g81067C2[];
extern u8 g8106827[];
extern u8 g810688C[];
extern u8 g81068F1[];
extern u8 g8106956[];
extern u8 g81069BB[];
extern u8 g8106A20[];
extern u8 g8106A85[];
extern u8 g8106AEA[];
extern u8 g8106B4F[];
extern u8 g8106BB4[];
extern u8 g8106C19[];
extern u8 g8106C7E[];
extern u8 g8106CE3[];
extern u8 g8106D48[];
extern u8 g8106DAD[];
int sub_803F04C();

static inline bool8 util(u8 *arr, u16 cardId)
{
    return arr[cardId / 8] & sub_803F04C(cardId % 8) ? TRUE : FALSE;
}

bool32 sub_80555A4(u16 cardId)
{
    return util(g81060A8, cardId);
}

bool32 sub_80555D4(u16 cardId)
{
    return util(g810610D, cardId);
}

bool32 sub_8055604(u16 cardId)
{
    return util(g8106172, cardId);
}

bool32 sub_8055634(u16 cardId)
{
    return util(g81061D7, cardId);
}

bool32 sub_8055664(u16 cardId)
{
    return util(g810623C, cardId);
}

bool32 sub_8055694(u16 cardId)
{
    return util(g81062A1, cardId);
}

bool32 sub_80556C4(u16 cardId)
{
    return util(g8106306, cardId);
}

bool32 sub_80556F4(u16 cardId)
{
    return util(g810636B, cardId);
}

bool32 sub_8055724(u16 cardId)
{
    return util(g81063D0, cardId);
}

bool32 sub_8055754(u16 cardId)
{
    return util(g8106435, cardId);
}

bool32 sub_8055784(u16 cardId)
{
    return util(g810649A, cardId);
}

bool32 sub_80557B4(u16 cardId)
{
    return util(g81064FF, cardId);
}

bool32 sub_80557E4(u16 cardId)
{
    return util(g8106564, cardId);
}

bool32 sub_8055814(u16 cardId)
{
    return util(g81065C9, cardId);
}

bool32 sub_8055844(u16 cardId)
{
    return util(g810662E, cardId);
}

bool32 sub_8055874(u16 cardId)
{
    return util(g8106693, cardId);
}

bool32 sub_80558A4(u16 cardId)
{
    return util(g81066F8, cardId);
}

bool32 sub_80558D4(u16 cardId)
{
    return util(g810675D, cardId);
}

bool32 sub_8055904(u16 cardId)
{
    return util(g81067C2, cardId);
}

bool32 sub_8055934(u16 cardId)
{
    return util(g8106827, cardId);
}

bool32 sub_8055964(u16 cardId)
{
    return util(g810688C, cardId);
}

bool32 sub_8055994(u16 cardId)
{
    return util(g81068F1, cardId);
}

bool32 sub_80559C4(u16 cardId)
{
    return util(g8106956, cardId);
}

bool32 sub_80559F4(u16 cardId)
{
    return util(g81069BB, cardId);
}

bool32 sub_8055A24(u16 cardId)
{
    return util(g8106A20, cardId);
}

bool32 sub_8055A54(u16 cardId)
{
    return util(g8106A85, cardId);
}

bool32 sub_8055A84(u16 cardId)
{
    return util(g8106AEA, cardId);
}

bool32 sub_8055AB4(u16 cardId)
{
    return util(g8106B4F, cardId);
}

bool32 sub_8055AE4(u16 cardId)
{
    return util(g8106BB4, cardId);
}

bool32 sub_8055B14(u16 cardId)
{
    return util(g8106C19, cardId);
}

bool32 sub_8055B44(u16 cardId)
{
    return util(g8106C7E, cardId);
}

bool32 sub_8055B74(u16 cardId)
{
    return util(g8106CE3, cardId);
}

bool32 sub_8055BA4(u16 cardId)
{
    return util(g8106D48, cardId);
}

bool32 sub_8055BD4(u16 cardId)
{
    return util(g8106DAD, cardId);
}

//different file?
struct Unk2024510
{
    u16 cardId;
    u8 unk2;
    u8 unk3[8];
};

extern struct Unk2024510 g2024510;
extern u8 g8E0FD4C[][8];
extern u8 g8E1165C[][8];
extern u8 g8E11664[][8];
extern u8 g8E1167C[];
extern u8 g8E11684[];
extern u8 g2021DC0[];

inline u8 sub_8055ED4(u16);
inline u8 sub_8055F1C(u8*, u8*);
bool32 sub_80255A8(void);
void sub_802D90C(u16, u8);
void sub_80258E8(void);
void sub_8055D04(void);
int sub_8056014(u16);
void sub_8055FEC(u16);
void sub_08055F64(u16);
void sub_8055DEC(void);
void sub_8056048(u16);
void sub_8055F68(u16);
u8 sub_8055D78(u16);
u8 sub_8055E60(u16);

void sub_8055C04(void)
{
    g2024510.cardId = 0;
    while (1)
    {
        switch (sub_8055ED4(g2024510.cardId))
        {
        case 1:
            break;
        case 0:
            g2024510.unk2 = 11;
            return;
        default:
            if (sub_8055F1C(g2024510.unk3, g8E0FD4C[g2024510.cardId]) == 10)
            {
                g2024510.unk2 = 10;
                return;
            }
        }
        g2024510.cardId++;
    }
}

inline u8 sub_8055ED4(u16 cardId)
{
    if (sub_8055F1C(g8E1167C, g8E0FD4C[cardId]) == 10)
        return 0;
    if (sub_8055F1C(g8E11684, g8E0FD4C[cardId]) == 10)
        return 1;
    return 2;
}

inline u8 sub_8055F1C(u8 *a, u8 *b)
{
    u8 i, r5;

    r5 = 10;
    for (i = 0; i < 8; i++)
        if (*a++ != *b++)
            r5 = 11;

    return r5;
}

void sub_8055C64(void)
{
    int i;

    sub_80255A8();
    for (i = 0; i < 8; i++)
        g2024510.unk3[i] = g2021DC0[i];
    sub_8055C04();
    if (g2024510.unk2 == 10)
    {
        SetCardInfo(g2024510.cardId);
        PlayMusic(201);
        sub_801F6B0();
        sub_802D90C(g2024510.cardId, 1);
        goto end;
    }
    sub_8055D04();
    if (g2024510.unk2 == 10)
    {
        if (!sub_8056014(g2024510.cardId))
        {
            sub_8055FEC(g2024510.cardId);
            sub_08055F64(g2024510.cardId);
        }
        else
            PlayMusic(57);
        goto end;
    }
    sub_8055DEC();
    if (g2024510.unk2 == 10)
    {
        sub_8056048(g2024510.cardId);
        sub_8055F68(g2024510.cardId);
    }
    else
        PlayMusic(57);

    end:
    sub_80258E8();
}

void sub_8055D04(void)
{
    u8 i;

    g2024510.cardId = 0;
    while (1)
    {
        switch (sub_8055D78(g2024510.cardId))
        {
        case 1:
            break;
        case 0:
            g2024510.unk2 = 11;
            return;
        default:
            if (sub_8055F1C(g2024510.unk3, g8E1165C[g2024510.cardId]) == 10)
            {
                g2024510.unk2 = 10;
                return;
            }
        }
        g2024510.cardId++;
    }
}

u8 sub_8055D78(u16 cardId)
{
    if (sub_8055F1C(g8E1167C, g8E1165C[cardId]) == 10)
        return 0;
    if (sub_8055F1C(g8E11684, g8E1165C[cardId]) == 10)
        return 1;
    return 2;
}

void sub_8055DEC(void)
{
    u8 i;

    g2024510.cardId = 0;
    while (1)
    {
        switch (sub_8055E60(g2024510.cardId))
        {
        case 1:
            break;
        case 0:
            g2024510.unk2 = 11;
            return;
        default:
            if (sub_8055F1C(g2024510.unk3, g8E11664[g2024510.cardId]) == 10)
            {
                g2024510.unk2 = 10;
                return;
            }
        }
        g2024510.cardId++;
    }
}

u8 sub_8055E60(u16 cardId)
{
    if (sub_8055F1C(g8E1167C, g8E11664[cardId]) == 10)
        return 0;
    if (sub_8055F1C(g8E11684, g8E11664[cardId]) == 10)
        return 1;
    return 2;
}

inline void sub_8055F48(void)
{
    u8 i;

    for (i = 0; i < 8; i++)
        g2024510.unk3[i] = 0;
}
/*
void sub_08055F64(u16 cardId){}*/

