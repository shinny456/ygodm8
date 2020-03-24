#include "global.h"
#include "duel.h"
#include "constants/card_ids.h"

#define FLAG_EXODIA_RIGHT_LEG (1 << 0)
#define FLAG_EXODIA_LEFT_LEG  (1 << 1)
#define FLAG_EXODIA_RIGHT_ARM (1 << 2)
#define FLAG_EXODIA_LEFT_ARM  (1 << 3)
#define FLAG_EXODIA_HEAD      (1 << 4)
#define FLAG_EXODIA_ALL \
(FLAG_EXODIA_RIGHT_LEG | FLAG_EXODIA_LEFT_LEG | FLAG_EXODIA_RIGHT_ARM | FLAG_EXODIA_LEFT_ARM | FLAG_EXODIA_HEAD)


u8 sub_80205EC(void);
u8 sub_802061C(u16 id);
void sub_8020664(void);
void sub_8025520(u8);

void sub_80205D4(void)
{
    if ((sub_80205EC() & FLAG_EXODIA_ALL) == FLAG_EXODIA_ALL)
        sub_8020664();
}

u8 sub_80205EC(void)  //ExodiaFlags
{
    u8 i;
    u8 r5 = 0;

    for (i = 0; i < MAX_ZONES_IN_ROW; i++)
        r5 |= sub_802061C(gZones[4][i]->id);

    return r5;
}

u8 sub_802061C(u16 id) //ExodiaFlag
{
    u8 flag = 0;

    switch (id)
    {
    case RIGHT_LEG_OF_THE_FORBIDDEN_ONE:
        flag = FLAG_EXODIA_RIGHT_LEG;
        break;
    case LEFT_LEG_OF_THE_FORBIDDEN_ONE:
        flag = FLAG_EXODIA_LEFT_LEG;
        break;
    case RIGHT_ARM_OF_THE_FORBIDDEN_ONE:
        flag = FLAG_EXODIA_RIGHT_ARM;
        break;
    case LEFT_ARM_OF_THE_FORBIDDEN_ONE:
        flag = FLAG_EXODIA_LEFT_ARM;
        break;
    case EXODIA_THE_FORBIDDEN_ONE:
        flag = FLAG_EXODIA_HEAD;
    }

    return flag;
}

void sub_8020664(void)
{
    u8 unk[0xC]; //TODO
    u8 loser;

    if (WhoseTurn() == PLAYER)
        loser = OPPONENT;
    else
        loser = PLAYER;

    sub_8025520(loser);
    sub_801D1A8();
    gUnk_02021C10.unk8 = 0x11;
    sub_801D188(5);
    sub_801CEBC();
}
