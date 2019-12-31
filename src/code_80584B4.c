#include "global.h"
#include "duel.h"
#include "card.h"
#include "constants/card_ids.h"

extern s16 gUnk_8E1172C[];
extern s16 gUnk_8E11738[];
extern s16 gUnk_8E11744[];
extern s16 gUnk_8E11788[];

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

u8 sub_80586C4(void)
{
    return 0;
}

u8 sub_80586C8(void)
{
    return 0;
}

u8 sub_80586CC(void)
{
    return 0;
}

u8 sub_80586D0(void)
{
    return 0;
}

u8 sub_80586D4(void)
{
    return 0;
}

u8 sub_80586D8(void)
{
    return 0;
}
