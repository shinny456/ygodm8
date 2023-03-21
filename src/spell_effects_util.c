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
/*
#define SPELL_EFFECT_FLAG (CARD)
//const g81060A8[] = {
  [0] =
}*/


// it's likely all the functions in the file are marked inline,
// but it's better to just duplicate this.
u32 sub_805557C (u8 *arr, u16 cardId) {
  return arr[cardId >> 3] & sub_803F04C(cardId & 7) ? TRUE : FALSE;
}

static inline u32 util(u8 *arr, u16 cardId)
{
    return arr[cardId >> 3] & sub_803F04C(cardId & 7) ? TRUE : FALSE;
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
