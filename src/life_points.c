#include "global.h"
#include "duel.h"

void sub_8048C60(void)
{
    if (!gUnk20241FC)
    {
        gLifePoints[0] = sub_8048CE0();
        gLifePoints[1] = gUnk02021D10.duelist.lifePoints;
    }
    else
    {
        gLifePoints[0] = gUnk02021D10.duelist.playerLp;
        gLifePoints[1] = gUnk02021D10.duelist.lifePoints;
    }
}

void sub_8048CA8(u8 i, u16 lp)
{
    gLifePoints[i] = lp;
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
    if ((gUnk02024254 = gLifePoints[0]) > 8000)
        gUnk02024254 = 8000;
}

void sub_8048D08(void)
{
    if (gUnk02024254 < 8000)
        gUnk02024254 = 8000;
}

void sub_8048D20(u8 i, u16 arg1)
{
    if (gLifePoints[i] + arg1 >= 65000)
        gLifePoints[i] = 65000;
    else
        gLifePoints[i] += arg1;
}

void sub_8048D48(u8 i, u16 arg1)
{
    if (gLifePoints[i] - arg1 <= 0)
        gLifePoints[i] = 0;
    else
        gLifePoints[i] -= arg1;
}
