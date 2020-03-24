#include "global.h"
#include "duel.h"

extern u8 gUnk_8E1178C[];

void sub_8058720(void)
{
    gWhoseTurn = PLAYER;
}

void sub_805872C(void)
{
    gWhoseTurn = gUnk_8E1178C[gWhoseTurn];
}

s32 WhoseTurn(void)//u8
{
    return gWhoseTurn;
}
