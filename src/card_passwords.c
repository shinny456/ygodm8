#include "global.h"
#include "card.h"
#include "duel.h"

// TODO: rename file to card_password.c?

struct PasswordData
{
    u16 cardId;
    u8 unk2;
    u8 digits[8]; //TODO: NUM_PASSWORD_DIGITS?
};

extern struct PasswordData sPasswordData;

static void sub_8055D04 (void);
static u8 sub_8055D78 (u16);
static void sub_8055DEC (void);
static u8 sub_8055E60 (u16);
static u8 sub_8055ED4 (u16);
static unsigned char sub_8055F1C (unsigned char*, unsigned char*);
static void sub_8055F48 (void);
static void sub_08055F64 (u16);
static void sub_8055F68 (u16);
static void sub_8055FEC (u16);
static void sub_8056048 (u16);


extern u8 g2024520[];
extern u8 g2024588[];
extern u8 g202458C[];
extern u8 g2024590;
extern u8 gCardPasswords[][8];
extern u8 g8E1165C[][8];
extern u8 g8E11664[][8];
extern u8 g8E1167C[];
extern u8 g8E11684[];
extern u8 gCardPasswordDigits[];
extern u16 gKeyState;
bool32 PasswordTerminalMain(void);
void sub_802D90C(u16, u8);
void sub_80258E8(void);
u16 sub_803F04C (u8);
u32 sub_8056014(u16);


static inline unsigned char sub_8055F1C_inline (unsigned char *a, unsigned char *b) {
  u8 i, r5 = 10;
  for (i = 0; i < 8; i++)
    if (*a++ != *b++)
      r5 = 11;
  return r5;
}

static void sub_8055C04 (void)
{
    sPasswordData.cardId = 0;
    while (1)
    {
        switch (sub_8055ED4(sPasswordData.cardId))
        {
        case 1:
            break;
        case 0:
            sPasswordData.unk2 = 11;
            return;
        default:
            if (sub_8055F1C(sPasswordData.digits, gCardPasswords[sPasswordData.cardId]) == 10)
            {
                sPasswordData.unk2 = 10;
                return;
            }
        }
        sPasswordData.cardId++;
    }
}

void sub_8055C64(void)
{
    int i;

    PasswordTerminalMain();
    for (i = 0; i < 8; i++)
      sPasswordData.digits[i] = gCardPasswordDigits[i];
    sub_8055C04();
    if (sPasswordData.unk2 == 10)
    {
        SetCardInfo(sPasswordData.cardId);
        PlayMusic(201);
        sub_801F6B0();
        sub_802D90C(sPasswordData.cardId, 1);
        goto end;
    }
    sub_8055D04();
    if (sPasswordData.unk2 == 10)
    {
        if (!sub_8056014(sPasswordData.cardId))
        {
            sub_8055FEC(sPasswordData.cardId);
            sub_08055F64(sPasswordData.cardId);
        }
        else
            PlayMusic(57);
        goto end;
    }
    sub_8055DEC();
    if (sPasswordData.unk2 == 10)
    {
        sub_8056048(sPasswordData.cardId);
        sub_8055F68(sPasswordData.cardId);
    }
    else
        PlayMusic(57);

    end:
    sub_80258E8();
}

static void sub_8055D04 (void)
{
    u8 i;

    sPasswordData.cardId = 0;
    while (1)
    {
        switch (sub_8055D78(sPasswordData.cardId))
        {
        case 1:
            break;
        case 0:
            sPasswordData.unk2 = 11;
            return;
        default:
            if (sub_8055F1C_inline(sPasswordData.digits, g8E1165C[sPasswordData.cardId]) == 10)
            {
                sPasswordData.unk2 = 10;
                return;
            }
        }
        sPasswordData.cardId++;
    }
}

static u8 sub_8055D78(u16 cardId)
{
    if (sub_8055F1C_inline(g8E1167C, g8E1165C[cardId]) == 10)
        return 0;
    if (sub_8055F1C_inline(g8E11684, g8E1165C[cardId]) == 10)
        return 1;
    return 2;
}

static void sub_8055DEC (void)
{
    u8 i;

    sPasswordData.cardId = 0;
    while (1)
    {
        switch (sub_8055E60(sPasswordData.cardId))
        {
        case 1:
            break;
        case 0:
            sPasswordData.unk2 = 11;
            return;
        default:
            if (sub_8055F1C_inline(sPasswordData.digits, g8E11664[sPasswordData.cardId]) == 10)
            {
                sPasswordData.unk2 = 10;
                return;
            }
        }
        sPasswordData.cardId++;
    }
}

static u8 sub_8055E60 (u16 cardId)
{
    if (sub_8055F1C_inline(g8E1167C, g8E11664[cardId]) == 10)
        return 0;
    if (sub_8055F1C_inline(g8E11684, g8E11664[cardId]) == 10)
        return 1;
    return 2;
}

static u8 sub_8055ED4 (u16 cardId)
{
    if (sub_8055F1C(g8E1167C, gCardPasswords[cardId]) == 10)
        return 0;
    if (sub_8055F1C(g8E11684, gCardPasswords[cardId]) == 10)
        return 1;
    return 2;
}

static unsigned char sub_8055F1C (unsigned char *a, unsigned char *b) {
  u8 i, r5 = 10;
  for (i = 0; i < 8; i++)
    if (*a++ != *b++)
      r5 = 11;
  return r5;
}

static void sub_8055F48 (void)
{
    u8 i;

    for (i = 0; i < 8; i++)
        sPasswordData.digits[i] = 0;
}

static void sub_08055F64(u16 cardId) {
}

static void sub_8055F68(u16 cardId) {
  switch (cardId) {
    case 0:
      PlayMusic(0xC9);
      break;
    case 1:
      PlayMusic(0xC9);
      break;
  }
}

static void sub_8055F8C (void) {
  u8 i = 0;
  for (i = 0; i < 101; i++)
    g2024520[i] = 0;
}

static void sub_8055FA8 (u16 arg0) {
  g2024520[arg0 >> 3] |= sub_803F04C(arg0 & 7);
}

void sub_8055FD0 (void) {
  u8 i = 0;
  for (i = 0; i < 2; i++)
    g202458C[i] = 0;
}

static void sub_8055FEC (u16 arg0) {
  g202458C[arg0 >> 3] |= sub_803F04C(arg0 & 7);
}

NAKED
u32 sub_8056014 (u16 arg0) {
  asm_unified("push {r4, lr}\n\
	lsls r4, r0, #0x10\n\
	lsrs r1, r4, #0x10\n\
	cmp r1, #9\n\
	bls _08056022\n\
	movs r0, #0\n\
	b _0805603A\n\
_08056022:\n\
	movs r0, #7\n\
	ands r0, r1\n\
	bl sub_803F04C\n\
	ldr r2, _08056040\n\
	lsrs r1, r4, #0x13\n\
	adds r1, r1, r2\n\
	ldrb r1, [r1]\n\
	ands r1, r0\n\
	rsbs r0, r1, #0\n\
	orrs r0, r1\n\
	lsrs r0, r0, #0x1f\n\
_0805603A:\n\
	pop {r4}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_08056040: .4byte 0x0202458C");
}
/*
u32 sub_8056014 (u16 arg0) {
  if (arg0 > 9)
    return 0;
}
*/

static void sub_8056044 (void) {
}

static void sub_8056048 (u16 arg0) {
  g2024588[arg0 >> 3] |= sub_803F04C(arg0 & 7);
}

/*
u32 sub_8056070 (u16 arg0) {
  if (arg0 > 7)
    return 0;
}
*/

NAKED
u32 sub_8056070 (u16 arg0) {
  asm_unified("push {r4, lr}\n\
	lsls r4, r0, #0x10\n\
	lsrs r1, r4, #0x10\n\
	cmp r1, #7\n\
	bls _0805607E\n\
	movs r0, #0\n\
	b _08056096\n\
_0805607E:\n\
	movs r0, #7\n\
	ands r0, r1\n\
	bl sub_803F04C\n\
	ldr r2, _0805609C\n\
	lsrs r1, r4, #0x13\n\
	adds r1, r1, r2\n\
	ldrb r1, [r1]\n\
	ands r1, r0\n\
	rsbs r0, r1, #0\n\
	orrs r0, r1\n\
	lsrs r0, r0, #0x1f\n\
_08056096:\n\
	pop {r4}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0805609C: .4byte 0x02024588");
}

static u32 sub_80560A0 (void) {
  u32 ret, r6 = 0;
  while (!r6) {
    switch (gKeyState) {
      case 0x40:
        sPasswordData.digits[g2024590] = 255;
        sPasswordData.digits[g2024590]++;
        break;
      case 0x80:
        sPasswordData.digits[g2024590] = 10;
        sPasswordData.digits[g2024590]--;
        break;
      case 0x20:
        if (g2024590)
          g2024590--;
        break;
      case 0x10:
        if (g2024590 != 7)
          g2024590++;
        break;
      case 1:
        r6 = 1;
        ret = 1;
        break;
      case 2:
        r6 = 1;
        ret = 0;
        break;
    }
    sub_8008220();
  }
  return ret;
}

static void sub_8056144 (void) {
  sPasswordData.digits[g2024590] = 255;
  sPasswordData.digits[g2024590]++;
}

static void sub_8056168 (void) {
  sPasswordData.digits[g2024590] = 10;
  sPasswordData.digits[g2024590]--;
}

static void sub_805618C (void) {
  if (g2024590)
    g2024590--;
}

static void sub_80561A0 (void) {
  if (g2024590 != 7)
    g2024590++;
}
