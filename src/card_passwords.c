#include "global.h"
#include "card.h"
#include "duel.h"

static void sub_8055D04(void);



struct Unk2024510
{
    u16 cardId;
    u8 unk2;
    u8 unk3[8];
};

extern struct Unk2024510 g2024510;
extern u8 gCardPasswords[][8];
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

u32 sub_8056014(u16);
void sub_8055FEC(u16);
inline void sub_8055F48(void);
inline void sub_08055F64(u16);
void sub_8055DEC(void);
void sub_8056048(u16);
inline void sub_8055F68(u16);
u8 sub_8055D78(u16);
u8 sub_8055E60(u16);

static void sub_8055C04(void)
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
            if (sub_8055F1C(g2024510.unk3, gCardPasswords[g2024510.cardId]) == 10)
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
    if (sub_8055F1C(g8E1167C, gCardPasswords[cardId]) == 10)
        return 0;
    if (sub_8055F1C(g8E11684, gCardPasswords[cardId]) == 10)
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

static void sub_8055D04 (void)
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

inline void sub_08055F64(u16 cardId) {
  
}

inline void sub_8055F68(u16 cardId) {
  switch (cardId) {
    case 0:
      PlayMusic(0xC9);
      break;
    case 1:
      PlayMusic(0xC9);
      break;
  }
}
