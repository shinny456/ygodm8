#include "global.h"
#include "duel.h"

extern u8 gUnk_8E1178C[];

void SetWhoseTurnToPlayer(void)
{
    gWhoseTurn = PLAYER;
}

void SwitchTurn(void)
{
    gWhoseTurn = gUnk_8E1178C[gWhoseTurn];
}

s32 WhoseTurn(void)//u8
{
    return gWhoseTurn;
}
