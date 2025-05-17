#include "global.h"

//TODO: NUM_DUELISTS as array size?
static const unsigned char gOtherTurn[] = {
  [DUEL_PLAYER] = DUEL_OPPONENT,
  [DUEL_OPPONENT] = DUEL_PLAYER
};

static const unsigned char pad[] = {0, 0}; // TODO: remove, align in linker


void SetWhoseTurnToPlayer(void)
{
    gWhoseTurn = DUEL_PLAYER;
}

void SwitchTurn(void)
{
    gWhoseTurn = gOtherTurn[gWhoseTurn];
}

s32 WhoseTurn(void)//u8
{
    return gWhoseTurn;
}
