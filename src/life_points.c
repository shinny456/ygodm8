#include "global.h"
#include "duel.h"

void InitLifePointsBeforeDuel(void)
{
    if (!gDuelType /*== DUEL_TYPE_INGAME_NORMAL*/)
    {
        gDuelLifePoints[0] = sub_8048CE0();
        gDuelLifePoints[1] = gDuelData.duelist.lifePoints;
    }
    else
    {
        gDuelLifePoints[0] = gDuelData.duelist.playerLp;
        gDuelLifePoints[1] = gDuelData.duelist.lifePoints;
    }
}

void SetDuelLifePoints(u8 i, u16 lp)
{
    gDuelLifePoints[i] = lp;
}

void sub_8048CB8(void)
{
    gUnk02024254 = 8000;
}

void sub_8048CC8(u32 lp)
{
    if (lp > 65000)
        lp = 65000;

    gUnk02024254 = lp;
}

u32 sub_8048CE0(void)
{
    return gUnk02024254;
}

void sub_8048CEC(void)
{
    if ((gUnk02024254 = gDuelLifePoints[0]) > 8000)
        gUnk02024254 = 8000;
}

void sub_8048D08(void)
{
    if (gUnk02024254 < 8000)
        gUnk02024254 = 8000;
}

void sub_8048D20(u8 i, u16 arg1)
{
    if (gDuelLifePoints[i] + arg1 >= 65000)
        gDuelLifePoints[i] = 65000;
    else
        gDuelLifePoints[i] += arg1;
}

void sub_8048D48(u8 i, u16 arg1)
{
    if (gDuelLifePoints[i] - arg1 <= 0)
        gDuelLifePoints[i] = 0;
    else
        gDuelLifePoints[i] -= arg1;
}
