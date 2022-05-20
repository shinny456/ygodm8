#include "global.h"
#include "duel.h"
#include "card.h"
#include "gba/syscall.h"
#include "gba/io_reg.h"
#include "gba/macro.h"


extern u8* g8E0CEE0[];
extern u8* g8E0CF40[];
extern u16 g8E0CFA0[];
extern u8 g8E0CFC0[];
extern u8 g8E0CFC4[];
extern u8 g8E0CFD0[];

void sub_803FD3C (void);
u8 sub_803FA94 (void);
u8 sub_803FAFC (void);
u8 sub_803FB64 (void);
void sub_803F44C (void);
void sub_803F45C (void);
void sub_0803F330 (void);
void sub_803F334 (void);
void sub_803F374 (void);
void AddPlayerLifePoints (void);
void sub_803F3D4 (void);
void sub_803F420 (void);
void sub_803F400 (void);
void sub_803F46C (void);
u8 sub_803FC10 (void);
u8 sub_803FC24 (void);
u8 sub_803FCA8 (void);
u8 sub_803FC64 (void);


u8* sub_803F02C (u8 cardType) {
  return g8E0CEE0[cardType];
}

u8* sub_803F03C (u8 arg0) {
  return g8E0CF40[arg0];
}

u16 sub_803F04C (u8 arg0) {
  return g8E0CFA0[arg0];
}

void sub_803F05C (void) {
  sub_803FD3C();
  if (sub_803FA94() != 1)
    return;
  if (g2023E80.unk2 >= g2023E80.unkE) {
    if (g2023E80.unk2 > g2023E80.unkE) {
      sub_803F45C();
      if (g2023E80.unk12 <= g2023E80.unk2 - g2023E80.unkE) {
        u8 temp;
        g2023E80.unk12 = 0;
        temp = g2023E80.unk1B;
        g2023E80.unk19 |= g8E0CFC0[temp];
      }
      else
        g2023E80.unk12 -= g2023E80.unk2 - g2023E80.unkE;
      gUnk2023EA0.unk18 = 1;
    }
    else {
      sub_803F44C();
      sub_803F45C();
      gUnk2023EA0.unk18 = 2;
    }
  }
  else if (g2023E80.unk2 < g2023E80.unkE) {
    sub_803F44C();
    if (g2023E80.unk6 <= g2023E80.unkE - g2023E80.unk2) {
      u8 temp;
      g2023E80.unk6 = 0;
      temp = g2023E80.unk1A;
      g2023E80.unk19 |= g8E0CFC0[temp];
    }
    else
      g2023E80.unk6 -= g2023E80.unkE - g2023E80.unk2;
    gUnk2023EA0.unk18 = 3;
  }
}

void sub_803F108 (void) {
  sub_803FD3C();
  if (sub_803FAFC() != TRUE)
    return;
  if (g2023E80.unk2 >= g2023E80.unk10) {
    if (g2023E80.unk2 > g2023E80.unk10) {
      sub_803F45C();
      gUnk2023EA0.unk18 = 4;
    }
    else
      gUnk2023EA0.unk18 = 5;
  }
  else if (g2023E80.unk6 <= g2023E80.unk10 - g2023E80.unk2) {
    u8 temp;
    g2023E80.unk6 = 0;
    temp = g2023E80.unk1A;
    g2023E80.unk19 |= g8E0CFC0[temp];
    gUnk2023EA0.unk18 = 6;
  }
  else {
    g2023E80.unk6 -= g2023E80.unk10 - g2023E80.unk2;
    gUnk2023EA0.unk18 = 6;
  }
}

void sub_803F180 (void) {
  sub_803FD3C();
  if (sub_803FB64() != TRUE)
    return;
  if (g2023E80.unk4 >= g2023E80.unkE) {
    if (g2023E80.unk4 > g2023E80.unkE) {
      if (g2023E80.unk12 <= g2023E80.unk4 - g2023E80.unkE) {
        u8 temp;
        g2023E80.unk12 = 0;
        temp = g2023E80.unk1B;
        g2023E80.unk19 |= g8E0CFC0[temp];
      }
      else
        g2023E80.unk12 -= g2023E80.unk4 - g2023E80.unkE;
      gUnk2023EA0.unk18 = 7;
    }
    else
      gUnk2023EA0.unk18 = 8;
  }
  else {
    sub_803F44C();
    gUnk2023EA0.unk18 = 9;
  }
}

void sub_803F1F4 (void) {
  gUnk2023EA0.unk0[0].unk0 = g2023E80.unk0;
  gUnk2023EA0.unk0[0].unkA = g2023E80.unk8;
  gUnk2023EA0.unk0[0].unk6 = g2023E80.unk2;
  gUnk2023EA0.unk0[0].unk8 = g2023E80.unk4;
  gUnk2023EA0.unk0[1].unk0 = g2023E80.unkC;
  gUnk2023EA0.unk0[1].unkA = g2023E80.unk14;
  gUnk2023EA0.unk0[1].unk6 = g2023E80.unkE;
  gUnk2023EA0.unk0[1].unk8 = g2023E80.unk10;
}

void sub_803F224 (void) {
  if (g2023E80.unk19 & 1)
    sub_8045314(gUnk2024040[g2023E80.unk9][g2023E80.unkA], 0);
  if (g2023E80.unk19 & 2)
    sub_8045314(gUnk2024040[g2023E80.unk15][g2023E80.unk16], 1);
  if (g2023E80.unk19 & 4)
    DeclareLoser(0);
  if (g2023E80.unk19 & 16)
    DeclareLoser(1);
}

void sub_803F29C (void) {
  g2023E80.unk19 = 0;
  switch (g2023E80.action) {
    case 1:
      sub_803F05C();
      break;
    case 2:
      sub_803F108();
      break;
    case 3:
      sub_0803F330();
      break;
    case 4:
      sub_803F334();
      break;
    case 5:
      sub_803F180();
      break;
    case 6:
      sub_803F374();
      break;
    case 7:
      AddPlayerLifePoints();
      break;
    case 8:
      sub_803F3D4();
      break;
    case 9:
      sub_803F420();
      break;
    case 10:
      sub_803F400();
      break;
  }
  sub_803F46C();
  sub_803F1F4();
}

void sub_0803F330 (void) {}

void sub_803F334 (void) {
  sub_803FD3C();
  if (g2023E80.unk12 <= g2023E80.unk2) {
    u8 temp;
    g2023E80.unk12 = 0;
    temp = g2023E80.unk1B;
    g2023E80.unk19 |= g8E0CFC0[temp];
  }
  else
    g2023E80.unk12 -= g2023E80.unk2;
  gUnk2023EA0.unk18 = 10;
}

void sub_803F374 (void) {
  sub_803FD3C();
  if (g2023E80.unk6 <= g2023E80.unkE) {
    u8 temp;
    g2023E80.unk6 = 0;
    temp = g2023E80.unk1A;
    g2023E80.unk19 |= g8E0CFC0[temp];
  }
  else
    g2023E80.unk6-= g2023E80.unkE;
  gUnk2023EA0.unk18 = 15;
}

void AddPlayerLifePoints (void) {
  if (g2023E80.unk6 + g2023E80.unk2 > 65000)
    g2023E80.unk6 = 65000;
  else
    g2023E80.unk6 += g2023E80.unk2;
}

void sub_803F3D4 (void) {
  if (g2023E80.unk6 - g2023E80.unk2 <= 0) {
    u8 temp;
    g2023E80.unk6 = 0;
    temp = g2023E80.unk1A;
    g2023E80.unk19 |= g8E0CFC0[temp];
  }
  else
    g2023E80.unk6 -= g2023E80.unk2;
}

void sub_803F400 (void) {
  if (g2023E80.unk12 + g2023E80.unkE > 65000)
    g2023E80.unk12 = 65000;
  else
    g2023E80.unk12 += g2023E80.unkE;
}

void sub_803F420 (void) {
  if (g2023E80.unk12 - g2023E80.unkE <= 0) {
    u8 temp;
    g2023E80.unk12 = 0;
    temp = g2023E80.unk1B;
    g2023E80.unk19 |= g8E0CFC0[temp];
  }
  else
    g2023E80.unk12 -= g2023E80.unkE;
}

void sub_803F44C (void) {
  g2023E80.unk19 |= 1;
}

void sub_803F45C (void) {
  g2023E80.unk19 |= 2;
}

void sub_803F46C (void) {
  gLifePoints[g2023E80.unk1A] = g2023E80.unk6;
  gUnk2023EA0.unk0[0].unk4 = g2023E80.unk6;
  gLifePoints[g2023E80.unk1B] = g2023E80.unk12;
  gUnk2023EA0.unk0[1].unk4 = g2023E80.unk12;
}

void sub_803F4A4 (u8 arg0) {
  g2023E80.unk19 |= g8E0CFC0[arg0];
}

void sub_803F4C0 (void) {
  if (g2023E80.unk19 & 4)
    DeclareLoser(0);
  if (g2023E80.unk19 & 16)
    DeclareLoser(1);
}

void sub_803F4F0 (u8 arg0) {
  g2023E80.action = 4;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.unk0 = gUnk2024040[2][arg0]->id;
  gStatMod.card = gUnk2024040[2][arg0]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gUnk2024040[2][arg0]);
  SetFinalStat(&gStatMod);
  g2023E80.unk2 = gCardInfo.atk;
  g2023E80.unk4 = gCardInfo.def;
  g2023E80.unk6 = gLifePoints[0];
  gUnk2023EA0.unk0[0].unk2 = gLifePoints[0];
  g2023E80.unk12 = gLifePoints[1];
  gUnk2023EA0.unk0[1].unk2 = gLifePoints[1];
  g2023E80.unkA = arg0;
  g2023E80.unk9 = 2;
}

void sub_803F574 (u8 arg0) {
  g2023E80.action = 6;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.unkC = gUnk2024040[1][arg0]->id;
  gStatMod.card = gUnk2024040[1][arg0]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gUnk2024040[1][arg0]);
  SetFinalStat(&gStatMod);
  g2023E80.unkE = gCardInfo.atk;
  g2023E80.unk10 = gCardInfo.def;
  g2023E80.unk6 = gLifePoints[0];
  gUnk2023EA0.unk0[0].unk2 = gLifePoints[0];
  g2023E80.unk12 = gLifePoints[1];
  gUnk2023EA0.unk0[1].unk2 = gLifePoints[1];
  g2023E80.unk16 = arg0;
  g2023E80.unk15 = 1;
}

void sub_803F604 (u8 arg0, u8 arg1) {
  g2023E80.action = 1;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.unk0 = gUnk2024040[2][arg0]->id;
  gStatMod.card = gUnk2024040[2][arg0]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gUnk2024040[2][arg0]);
  SetFinalStat(&gStatMod);
  g2023E80.unk2 = gCardInfo.atk;
  g2023E80.unk4 = gCardInfo.def;
  g2023E80.unk8 = gCardInfo.attribute;
  g2023E80.unk6 = gLifePoints[0];
  gUnk2023EA0.unk0[0].unk2 = gLifePoints[0];
  g2023E80.unkA = arg0;
  g2023E80.unk9 = 2;
  g2023E80.unkC = gUnk2024040[1][arg1]->id;
  gStatMod.card = gUnk2024040[1][arg1]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gUnk2024040[1][arg1]);
  SetFinalStat(&gStatMod);
  g2023E80.unkE = gCardInfo.atk;
  g2023E80.unk10 = gCardInfo.def;
  g2023E80.unk14 = gCardInfo.attribute;
  g2023E80.unk12 = gLifePoints[1];
  gUnk2023EA0.unk0[1].unk2 = gLifePoints[1];
  g2023E80.unk16 = arg1;
  g2023E80.unk15 = 1;
}

void sub_803F6F8 (u8 arg0, u8 arg1) {
  g2023E80.action = 2;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.unk0 = gUnk2024040[2][arg0]->id;
  gStatMod.card = gUnk2024040[2][arg0]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gUnk2024040[2][arg0]);
  SetFinalStat(&gStatMod);
  g2023E80.unk2 = gCardInfo.atk;
  g2023E80.unk4 = gCardInfo.def;
  g2023E80.unk8 = gCardInfo.attribute;
  g2023E80.unk6 = gLifePoints[0];
  gUnk2023EA0.unk0[0].unk2 = gLifePoints[0];
  g2023E80.unkA = arg0;
  g2023E80.unk9 = 2;
  g2023E80.unkC = gUnk2024040[1][arg1]->id;
  gStatMod.card = gUnk2024040[1][arg1]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gUnk2024040[1][arg1]);
  SetFinalStat(&gStatMod);
  g2023E80.unkE = gCardInfo.atk;
  g2023E80.unk10 = gCardInfo.def;
  g2023E80.unk14 = gCardInfo.attribute;
  g2023E80.unk12 = gLifePoints[1];
  gUnk2023EA0.unk0[1].unk2 = gLifePoints[1];
  g2023E80.unk16 = arg1;
  g2023E80.unk15 = 1;
}

void sub_803F7EC (u8 arg0, u8 arg1) {
  g2023E80.action = 5;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.unk0 = gUnk2024040[2][arg0]->id;
  gStatMod.card = gUnk2024040[2][arg0]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gUnk2024040[2][arg0]);
  SetFinalStat(&gStatMod);
  g2023E80.unk2 = gCardInfo.atk;
  g2023E80.unk4 = gCardInfo.def;
  g2023E80.unk8 = gCardInfo.attribute;
  g2023E80.unk6 = gLifePoints[0];
  gUnk2023EA0.unk0[0].unk2 = gLifePoints[0];
  g2023E80.unkA = arg0;
  g2023E80.unk9 = 2;
  g2023E80.unkC = gUnk2024040[1][arg1]->id;
  gStatMod.card = gUnk2024040[1][arg1]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gUnk2024040[1][arg1]);
  SetFinalStat(&gStatMod);
  g2023E80.unkE = gCardInfo.atk;
  g2023E80.unk10 = gCardInfo.def;
  g2023E80.unk14 = gCardInfo.attribute;
  g2023E80.unk12 = gLifePoints[1];
  gUnk2023EA0.unk0[1].unk2 = gLifePoints[1];
  g2023E80.unk16 = arg1;
  g2023E80.unk15 = 1;
}

void sub_803F8E0 (int arg0) {
  u8 arg0_u8 = arg0; //TODO: implicit decl somewhere else?
  switch (WhoseTurn()) {
    case 0:
      sub_803F4F0(arg0);
      break;
    case 1:
      sub_803F574(arg0);
      break;
  }
}

void sub_803F908 (int arg0, int arg1) {
  u8 arg0_u8 = arg0; //TODO: implicit decl somewhere else?
  u8 arg1_u8 = arg1;
  switch (WhoseTurn()) {
    case 0:
      if (gUnk2024040[1][arg1_u8]->isDefending)
        sub_803F6F8(arg0_u8, arg1_u8);
      else
        sub_803F604(arg0_u8, arg1_u8);
      break;
    case 1:
      if (!gUnk2024040[2][arg0_u8]->isDefending)
        sub_803F604(arg0_u8, arg1_u8);
      else
        sub_803F7EC(arg0_u8, arg1_u8);
      break;
  }
}

void SetPlayerLifePointsToAdd (u32 lifePoints) {
  g2023E80.action = 7;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.unk2 = lifePoints;
  g2023E80.unk6 = gLifePoints[0];
  g2023E80.unk12 = gLifePoints[1];
}

void SetPlayerLifePointsToSubtract (u32 lifePoints) {
  g2023E80.action = 8;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.unk2 = lifePoints;
  g2023E80.unk6 = gLifePoints[0];
  g2023E80.unk12 = gLifePoints[1];
}

void SetOpponentLifePointsToAdd (u32 lifePoints) {
  g2023E80.action = 10;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.unkE = lifePoints;
  g2023E80.unk6 = gLifePoints[0];
  g2023E80.unk12 = gLifePoints[1];
}

void SetOpponentLifePointsToSubtract (u32 lifePoints) {
  g2023E80.action = 9;
  g2023E80.unk1A = 0;
  g2023E80.unk1B = 1;
  g2023E80.unkE = lifePoints;
  g2023E80.unk6 = gLifePoints[0];
  g2023E80.unk12 = gLifePoints[1];
}

// TODO: function doesn't return anything
u8 sub_803FA08 (void) {
  gUnk2023EA0.unk18 = 16;
  sub_803F45C();
  if (g2023E80.unk2 < g2023E80.unkE)
    return;
  if (g2023E80.unk2 <= g2023E80.unkE)
    return;
  if (g2023E80.unk12 <= g2023E80.unk2 - g2023E80.unkE) {
    g2023E80.unk12 = 0;
    sub_803F4A4(g2023E80.unk1B);
  }
  else
    g2023E80.unk12 -= g2023E80.unk2 - g2023E80.unkE;
}

// TODO: function doesn't return anything
u8 sub_803FA4C (void) {
  gUnk2023EA0.unk18 = 17;
  sub_803F44C();
  if (g2023E80.unk2 > g2023E80.unkE)
    return;
  if (g2023E80.unk2 >= g2023E80.unkE)
    return;
  if (g2023E80.unk6 <= g2023E80.unkE - g2023E80.unk2) {
    g2023E80.unk6 = 0;
    sub_803F4A4(g2023E80.unk1A);
  }
  else
    g2023E80.unk6 -= g2023E80.unkE - g2023E80.unk2;
}

static inline u8 sub_803FBCC_i (u8 a, u8 b) {
  if (a == ATTRIBUTE_DIVINE)
    return 1;
  if (b == ATTRIBUTE_DIVINE)
    return 1;
  if (g8E0CFC4[a] == b)
    return 0;
  else if (g8E0CFD0[a] == b)
    return 2;
  else
    return 1;
}

u8 sub_803FA94 (void) {
  u8 r4 = sub_803FBCC_i(g2023E80.unk8, g2023E80.unk14);
  switch (r4) {
    case 0:
      sub_803FA08();
      break;
    case 1:
      break;
    case 2:
      sub_803FA4C();
      break;
  }
  return r4;
}

u8 sub_803FAFC (void) {
  u8 r4 = sub_803FBCC_i(g2023E80.unk8, g2023E80.unk14);
  switch (r4) {
    case 0:
      sub_803FC10();
      break;
    case 1:
      break;
    case 2:
      sub_803FC24();
      break;
  }
  return r4;
}

u8 sub_803FB64 (void) {
  u8 r4 = sub_803FBCC_i(g2023E80.unk8, g2023E80.unk14);
  switch (r4) {
    case 0:
      sub_803FC64();
      break;
    case 1:
      break;
    case 2:
      sub_803FCA8();
      break;
  }
  return r4;
}

u8 sub_803FBCC (u8 a, u8 b) {
  if (a == ATTRIBUTE_DIVINE)
    return 1;
  if (b == ATTRIBUTE_DIVINE)
    return 1;
  if (g8E0CFC4[a] == b)
    return 0;
  else if (g8E0CFD0[a] == b)
    return 2;
  else
    return 1;
}

// TODO: function returns nothing (only sane way to match?)
u8 sub_803FC10 (void) {
  gUnk2023EA0.unk18 = 16;
  sub_803F45C();
}
/*
u8 sub_803FC24 (void) {
  gUnk2023EA0.unk18 = 17;
  sub_803F44C();
  if (g2023E80.unk2 >= g2023E80.unk10)
    return;
  if (g2023E80.unk6 <= g2023E80.unk10 - g2023E80.unk2) {
    g2023E80.unk6 = 0;
    sub_803F4A4(g2023E80.unk1A);
  }
  else
    g2023E80.unk6 -= g2023E80.unk10 - g2023E80.unk2;
}

u8 sub_803FC64 (void) {
  gUnk2023EA0.unk18 = 16;
  sub_803F45C();
  if (g2023E80.unk4 <= g2023E80.unkE)
    return;
  if (g2023E80.unk12 <= g2023E80.unk4 - g2023E80.unkE) {
    g2023E80.unk12 = 0;
    sub_803F4A4(g2023E80.unk1B);
  }
  else
    g2023E80.unk12 -= g2023E80.unk10 - g2023E80.unk2;
}*/

NAKED
u8 sub_803FC24 (void) {
  asm_unified("push {r4, lr}\n\
	ldr r0, _0803FC50\n\
	movs r1, #0x11\n\
	strb r1, [r0, #0x18]\n\
	bl sub_803F44C\n\
	ldr r3, _0803FC54\n\
	ldrh r1, [r3, #2]\n\
	ldrh r2, [r3, #0x10]\n\
	cmp r1, r2\n\
	bhs _0803FC5C\n\
	ldrh r4, [r3, #6]\n\
	ldrh r2, [r3, #0x10]\n\
	subs r1, r2, r1\n\
	cmp r4, r1\n\
	bgt _0803FC58\n\
	movs r0, #0\n\
	strh r0, [r3, #6]\n\
	ldrb r0, [r3, #0x1a]\n\
	bl sub_803F4A4\n\
	b _0803FC5C\n\
	.align 2, 0\n\
_0803FC50: .4byte 0x02023EA0\n\
_0803FC54: .4byte g2023E80\n\
_0803FC58:\n\
	subs r1, r4, r1\n\
	strh r1, [r3, #6]\n\
_0803FC5C:\n\
	pop {r4}\n\
	pop {r1}\n\
	bx r1");
}

NAKED
u8 sub_803FC64 (void) {
  asm_unified("push {r4, lr}\n\
	ldr r0, _0803FC94\n\
	movs r1, #0x10\n\
	strb r1, [r0, #0x18]\n\
	bl sub_803F45C\n\
	ldr r3, _0803FC98\n\
	ldrh r1, [r3, #4]\n\
	ldrh r2, [r3, #0xe]\n\
	cmp r1, r2\n\
	bls _0803FCA0\n\
	ldrh r4, [r3, #0x12]\n\
	adds r2, r1, #0\n\
	ldrh r1, [r3, #0xe]\n\
	subs r1, r2, r1\n\
	cmp r4, r1\n\
	bgt _0803FC9C\n\
	movs r0, #0\n\
	strh r0, [r3, #0x12]\n\
	ldrb r0, [r3, #0x1b]\n\
	bl sub_803F4A4\n\
	b _0803FCA0\n\
	.align 2, 0\n\
_0803FC94: .4byte 0x02023EA0\n\
_0803FC98: .4byte g2023E80\n\
_0803FC9C:\n\
	subs r1, r4, r1\n\
	strh r1, [r3, #0x12]\n\
_0803FCA0:\n\
	pop {r4}\n\
	pop {r1}\n\
	bx r1");
}

u8 sub_803FCA8 (void) {
  gUnk2023EA0.unk18 = 17;
  sub_803F44C();
}



// new file?
#include "constants/card_ids.h"
extern s8 gE0CFDC[];
extern s8 gE0CFF4[];
extern s8 g80DF790[];

int sub_803FCBC (u16 cardId) {
  if (cardId == CARD_NONE)
    return 0;
  SetCardInfo(cardId);
  return gE0CFDC[gCardInfo.type];
}

int sub_803FCEC (u16 cardId) {
  SetCardInfo(cardId);
  return gE0CFF4[gCardInfo.spellEffect];
}

void sub_803FD10 (void) {}

void sub_803FD14 (void) {
  gUnk2023EA0.unk0[0].unk0 = 0;
  gUnk2023EA0.unk0[0].unk2 = 0;
  gUnk2023EA0.unk0[0].unk4 = 0;
  gUnk2023EA0.unk0[0].unk6 = 0;
  gUnk2023EA0.unk0[0].unk8 = 0;
  gUnk2023EA0.unk0[0].unkA = 0;
  gUnk2023EA0.unk0[1].unk0 = 0;
  gUnk2023EA0.unk0[1].unk2 = 0;
  gUnk2023EA0.unk0[1].unk4 = 0;
  gUnk2023EA0.unk0[1].unk6 = 0;
  gUnk2023EA0.unk0[1].unk8 = 0;
  gUnk2023EA0.unk0[1].unkA = 0;
  gUnk2023EA0.unk18 = 0;
}

void sub_803FD3C (void) {
  gUnk2023EA0.unk18 = 0;
}

void sub_803FD48 (void) {
  gUnk2023EA0.unk18 = g80DF790[gUnk2023EA0.unk18];
}

extern u16 g8E0D08C[][5];
extern u8 g8E0D0BE[][5];
extern u8 g8E0D0D7[][5];

void InitBoard (void) {
  u8 i, j;
  sub_803FEA4(2);
  for (i = 0; i < 4; i++)
    for (j = 0; j < 5; j++)
      ClearZone(&gDuel.zones[i][j]);
  for (i = 0; i < 4; i++)
    for (j = 0; j < 5; j++) {
      gDuel.zones[i][j].id = g8E0D08C[i][j];
      gDuel.zones[i][j].isFaceUp = g8E0D0BE[i][j] & 1;
      gDuel.zones[i][j].isDefending = g8E0D0D7[i][j] & 1;
    }
  for (i = 0; i < 2; i++)
    for (j = 0; j < 5; j++) {
      ClearZone(&gDuel.hands[i][j]);
      DrawCard(i);
    }
  gDuel.field = gDuelData.duelist.field;
  for (i = 0; i < 2; i++) {
    gDuel.notSure[i].sorlTurns = 0;
    gDuel.notSure[i].unkTwo = 0;
    gDuel.notSure[i].graveyard = CARD_NONE;
    sub_8040508(i);
  }
}

void sub_803FEA4 (int unused) {
  u8 i;
  for (i = 0; i < 5; i++)
    gUnk2024040[0][i] = &gDuel.zones[0][4-i];
  for (i = 0; i < 5; i++)
    gUnk2024040[1][i] = &gDuel.zones[1][4-i];
  for (i = 0; i < 5; i++)
    gUnk2024040[2][i] = &gDuel.zones[2][i];
  for (i = 0; i < 5; i++)
    gUnk2024040[3][i] = &gDuel.zones[3][i];
  for (i = 0; i < 5; i++)
    gUnk2024040[4][i] = &gDuel.hands[0][i];
  for (i = 0; i < 5; i++)
    gZones[0][i] = &gDuel.zones[0][i];
  for (i = 0; i < 5; i++)
    gZones[1][i] = &gDuel.zones[1][i];
  for (i = 0; i < 5; i++)
    gZones[2][i] = &gDuel.zones[2][i];
  for (i = 0; i < 5; i++)
    gZones[3][i] = &gDuel.zones[3][i];
  for (i = 0; i < 5; i++)
    gZones[4][i] = &gDuel.hands[0][i];
  gNotSure[0] = &gDuel.notSure[0];
  gNotSure[1] = &gDuel.notSure[1];
  for (i = 0; i < 5; i++)
    gHands[0][i] = &gDuel.hands[0][i];
  for (i = 0; i < 5; i++)
    gHands[1][i] = &gDuel.hands[1][i];
}

void sub_804004C (u8 turn) {
  u8 i;
  if (turn == 0) {
    for (i = 0; i < 5; i++)
      gZones[0][i] = &gDuel.zones[0][i];
    for (i = 0; i < 5; i++)
      gZones[1][i] = &gDuel.zones[1][i];
    for (i = 0; i < 5; i++)
      gZones[2][i] = &gDuel.zones[2][i];
    for (i = 0; i < 5; i++)
      gZones[3][i] = &gDuel.zones[3][i];
    for (i = 0; i < 5; i++)
      gZones[4][i] = &gDuel.hands[0][i];
    gNotSure[0] = &gDuel.notSure[0];
    gNotSure[1] = &gDuel.notSure[1];
    for (i = 0; i < 5; i++)
      gHands[0][i] = &gDuel.hands[0][i];
    for (i = 0; i < 5; i++)
      gHands[1][i] = &gDuel.hands[1][i];
  }
  else {
    for (i = 0; i < 5; i++)
      gZones[0][i] = &gDuel.zones[3][i];
    for (i = 0; i < 5; i++)
      gZones[1][i] = &gDuel.zones[2][i];
    for (i = 0; i < 5; i++)
      gZones[2][i] = &gDuel.zones[1][i];
    for (i = 0; i < 5; i++)
      gZones[3][i] = &gDuel.zones[0][i];
    for (i = 0; i < 5; i++)
      gZones[4][i] = &gDuel.hands[1][i];
    gNotSure[0] = &gDuel.notSure[1];
    gNotSure[1] = &gDuel.notSure[0];
    for (i = 0; i < 5; i++)
      gHands[0][i] = &gDuel.hands[1][i];
    for (i = 0; i < 5; i++)
      gHands[1][i] = &gDuel.hands[0][i];
  }
}

//this could be a non-static inline (ResetTempStage a few functions below)
static inline void ResetTemp (struct DuelCard *zone) {
    zone->tempStage = 0;
}

void sub_8040258 (void) {
  u8 i, j;
  for (i = 0; i < 4; i++)
    for (j = 0; j < 5; j++)
      ResetTemp(&gDuel.zones[i][j]);
  for (i = 0; i < 2; i++)
    for (j = 0; j < 5; j++)
      ResetTemp(&gDuel.hands[i][j]);
}

void ClearZone (struct DuelCard *zone) {
  zone->id = CARD_NONE;
  zone->isFaceUp = FALSE;
  zone->isLocked = FALSE;
  zone->isDefending = FALSE;
  zone->unkTwo = 0;
  zone->unkThree = 0;
  ResetPermStage(zone);
  ResetTempStage(zone);
  zone->unk4 = 0;
  zone->willChangeSides = FALSE;
}

void sub_8040300 (u8 col, u8 row, u16 cardId) {
  gDuel.zones[row][col].id = cardId;
}

u16 sub_8040324 (u8 col, u8 row) {
  return gDuel.zones[row][col].id;
}

void FlipCardFaceUp (struct DuelCard *zone) {
  zone->isFaceUp = TRUE;
}

void FlipCardFaceDown (struct DuelCard *zone) {
  zone->isFaceUp = FALSE;
}

bool8 IsCardFaceUp (struct DuelCard *zone) {
  return zone->isFaceUp;
}

void ResetPermStage (struct DuelCard *zone) {
  zone->permStage = 0;
}

void sub_8040368 (struct DuelCard *zone) {
  if (zone->permStage < 127)
    zone->permStage++;
}

void sub_804037C (struct DuelCard *zone) {
  if (zone->permStage > -128)
    zone->permStage--;
}

void sub_8040394 (struct DuelCard *zone, u8 arg) {
  for (; arg; arg--)
    if (zone->permStage < 127)
      zone->permStage++;
}

//unused?
void sub_80403B8 (struct DuelCard *zone, u8 arg) {
  for (; arg; arg--)
    if (zone->permStage > -128)
      zone->permStage--;
}

void ResetTempStage (struct DuelCard *zone) {
  zone->tempStage = 0;
}

void sub_80403F0 (struct DuelCard *zone) {
  if (zone->tempStage < 127)
    zone->tempStage++;
}

void sub_8040404 (struct DuelCard *zone) {
  if (zone->tempStage > -128)
    zone->tempStage--;
}

// unused?
void sub_804041C (struct DuelCard *zone, u8 arg) {
  for (; arg; arg--)
    if (zone->tempStage < 127)
      zone->tempStage++;
}

// unused?
void sub_8040440 (struct DuelCard *zone, u8 arg) {
  for (; arg; arg--)
    if (zone->tempStage > -128)
      zone->tempStage--;
}

// unused?
void sub_8040470 (u8 col, u8 row, u8 arg2) {
  gDuel.zones[row][col].unk4 |= sub_803F04C(arg2);
}

// unused?
void sub_80404A4 (u8 col, u8 row, u8 arg2) {
  gDuel.zones[row][col].unk4 &= ~sub_803F04C(arg2);
}

// unused?
void sub_80404D8 (u8 arg0) {
  gDuel.notSure[arg0].unkThree = 1;
}

void sub_80404F0 (u8 currPlayer) {
  gNotSure[currPlayer]->unkThree = 1;
}

void sub_8040508 (u8 player) {
  gDuel.notSure[player].unkThree = 0;
}

void sub_8040524 (u8 currPlayer) {
  gNotSure[currPlayer]->unkThree = 0;
}

void sub_8040540 (u8 row) {
  u8 i;
  for (i = 0; i < 5; i++)
    if (gZones[row][i]->id != CARD_NONE && sub_803FCBC(gZones[row][i]->id) == 1)
      gZones[row][i]->isLocked = TRUE;
}

void sub_8040584 (u8 row) {
  u8 i;
  for (i = 0; i < 5; i++)
    if (gZones[row][i]->id != CARD_NONE)
      gZones[row][i]->isLocked = FALSE;
}

// unused?
void sub_80405C4 (void) {
  u8 i, j;
  for (i = 0; i < 5; i++)
    for (j = 0; j < 5; j++)
      if (gZones[i][j]->id != CARD_NONE)
        gZones[i][j]->isLocked = FALSE;
}

void sub_804060C (u8 row) {
  u8 i;
  for (i = 0; i < 5; i++)
    if (gZones[row][i]->id != CARD_NONE && !gZones[row][i]->isDefending)
      gZones[row][i]->isFaceUp = TRUE;
}

// unused?
void sub_8040650 (u8 col, u8 row) {
  if (!gDuel.zones[row][col].isDefending)
    gDuel.zones[row][col].isDefending = TRUE;
  else
    gDuel.zones[row][col].isDefending = FALSE;
}

void SetPermStage (struct DuelCard *zone, int permStage) {
  zone->permStage = permStage;
}

int PermStage (struct DuelCard *zone) {
  return zone->permStage;
}

// unused?
void sub_8040690 (struct DuelCard *zone, u8 tempStage) {
  zone->tempStage = tempStage;
}

// unused?
s8 sub_8040694 (struct DuelCard *zone) {
  return zone->tempStage;
}

s8 sub_804069C (struct DuelCard *zone) {
  int stage = zone->permStage + zone->tempStage;
  if (stage > 127)
    stage = 127;
  if (stage < -128)
    stage = -128;
  return stage;
}

void LockCard (struct DuelCard *zone) {
  zone->isLocked = TRUE;
}

void UnlockCard (struct DuelCard *zone) {
  zone->isLocked = FALSE;
}

bool32 IsCardLocked (struct DuelCard *zone) {
  return zone->isLocked;
}

// unused?
void sub_80406E0 (u8 col, u8 row) {
  gDuel.zones[row][col].unk4 = 0;
}

// unused?
void sub_8040700 (u8 arg0) {
  gDuel.notSure[arg0].sorlTurns = 3;
}

// unused?
void sub_8040718 (u8 arg0) {
  if (gDuel.notSure[arg0].sorlTurns)
    gDuel.notSure[arg0].sorlTurns--;
}

void InitSorlTurns (u8 currOpponent) {
  gNotSure[currOpponent]->sorlTurns = 3;
}

void DecrementSorlTurns (u8 currPlayer) {
  if (gNotSure[currPlayer]->sorlTurns)
    gNotSure[currPlayer]->sorlTurns--;
}

struct {
  u32 a;
  u16 b;
} extern gOamBuffer[];

extern u16 gE0D0F0[];
extern u16 g80DFDA4[];


u32 sub_804402C (u8);
u16 sub_8043FFC (u8);


// cursor oam data (same tile is used for all 4 corners, with HV flips)
void sub_804078C (void) {
  u16 ight;
  //top left
  gOamBuffer[0].a = ((sub_804402C(0) & 0xFF) | ((sub_8043FFC(0) << 16 & 0x01FF0000))) | 0x80000000;
  gOamBuffer[0].b = gE0D0F0[3] | 0xA800;

  // top right
  gOamBuffer[1].a = ((sub_804402C(1) & 0xFF) | ((sub_8043FFC(1) << 16 & 0x01FF0000))) | 0x90000000;
  gOamBuffer[1].b = gE0D0F0[3] | 0xA800;

  // bottom left
  gOamBuffer[2].a = ((sub_804402C(2) & 0xFF) | ((sub_8043FFC(2) << 16 & 0x01FF0000))) | 0xA0000000;
  gOamBuffer[2].b = gE0D0F0[3] | 0xA800;

  // bottom right
  gOamBuffer[3].a = ((sub_804402C(3) & 0xFF) | ((sub_8043FFC(3) << 16 & 0x01FF0000))) | 0xB0000000;
  ight = gE0D0F0[3];
  gOamBuffer[3].b = ight | 0xA800;
}

void sub_8040868 (void) {
  CpuCopy16(g80DFDA4, &g02000000.obj[160], 32);
}

//copy tiles to obj vram in 2D mode, 4bpp
void sub_8040880 (u8* dest, u8* src) {
  u8 i, j, k;
  for (i = 0; i < 4; i++) {
    for (j = 0; j < 4; j++)
      for (k = 0; k < 32; k++)
        *dest++ = *src++;
    dest += 0x380;
  }
}

void sub_80408BC (void) {
  u16* oam = (u16*)&gOamBuffer;
  *oam++ = 0x200;
  *oam++ = 0;
  *oam++ = 0;
  oam++;

  *oam++ = 0x200;
  *oam++ = 0;
  *oam++ = 0;
  oam++;

  *oam++ = 0x200;
  *oam++ = 0;
  *oam++ = 0;
  oam++;

  *oam++ = 0x200;
  *oam++ = 0;
  *oam++ = 0;
}

extern u8 gDFBA4[];

void sub_80408FC (void) {
  sub_8040880(&gBgVram.cbb4[gE0D0F0[3] * 32], gDFBA4);
  sub_8040868();
  sub_804078C();
}


void CopyCard (struct DuelCard *dst, struct DuelCard *src) {
  dst->id = src->id;
  SetPermStage(dst, PermStage(src));
  ResetTempStage(dst);
  dst->unk4 = src->unk4;
  dst->isFaceUp = src->isFaceUp;
  dst->isLocked = src->isLocked;
  dst->isDefending = src->isDefending;
  dst->unkTwo = src->unkTwo;
  dst->unkThree = src->unkThree;
  dst->willChangeSides = src->willChangeSides;
}

extern struct DuelCard gSelectedCard;
void sub_8040998 (struct DuelCard *zone) {
  CopyCard(&gSelectedCard, zone);
}

void sub_80409AC (struct DuelCard *zone) {
  CopyCard(zone, &gSelectedCard);
}

extern u16 g2020DF4;
extern u16 gUnk2020DFC;

u8 sub_80409BC (void) {
  if (g2020DF4 & 0x40)
    return 1;
  if (g2020DF4 & 0x80)
    return 2;
  if (g2020DF4 & 0x20)
    return 3;
  if (g2020DF4 & 0x10)
    return 4;
  if (gUnk2020DFC & 0x1)
    return 5;
  if (gUnk2020DFC & 0x200)
    return 6;
  if (gUnk2020DFC & 0x100)
    return 7;
  if (gUnk2020DFC & 2)
    return 8;
  if (g2020DF4 & 8)
    return 0;
  if (g2020DF4 & 4)
    return 0;
  return 0;
}


void sub_8041104 (void);
void sub_802B6A8 (void);
void sub_8029820 (void);
void sub_80082C0 (void);
void sub_8041EC8 (void);
void sub_8041E70 (u8, u8);
void MoveCursorUp (void);
void MoveCursorDown (void);
void MoveCursorLeft (void);
void MoveCursorRight (void);
void sub_8044AB4 (void);
void sub_8042F04 (void);
void sub_8041014 (void);
void sub_8044B2C (void);
void sub_80410B4 (void);
void sub_8044AF0 (void);

struct CursorPosition {
  u8 currentX;
  u8 currentY;
  u8 destX;
  u8 destY;
  u8 unk4;
  u8 filler[2];
};

extern struct CursorPosition gCursorPosition;

extern u8 g20240E0;
void sub_8040A40 (void) {
  g20240E0 = 0;
  sub_8041104();
  sub_802B6A8();
  if (IsDuelOver() == TRUE)
    return;
  sub_8029820();
  if (IsDuelOver() == TRUE)
    return;
  sub_80082C0();
  while (IsDuelOver() != TRUE && g20240E0 != 1) {
    u8 y = gCursorPosition.currentY;
    switch (sub_80409BC()) {
      case 1:
        MoveCursorUp();
        sub_8041EC8();
        sub_8041E70(y, gCursorPosition.currentY);
        break;
      case 2:
        MoveCursorDown();
        sub_8041EC8();
        sub_8041E70(y, gCursorPosition.currentY);
        break;
      case 3:
        MoveCursorLeft();
        sub_8041EC8();
        sub_8041E70(y, gCursorPosition.currentY);
        break;
      case 4:
        MoveCursorRight();
        sub_8041EC8();
        sub_8041E70(y, gCursorPosition.currentY);
        break;
      case 5:
        sub_8044AB4();
        break;
      case 6:
        sub_8042F04();
        sub_8008220();
        sub_8041014();
        break;
      case 7:
        sub_8044B2C();
        sub_80410B4();
        break;
      case 8:
        sub_8044AF0();
        sub_8008220();
        break;
      case 9:
        DeclareLoser(0);
        break;
      case 10:
        DeclareLoser(1);
        break;
      default:
        sub_8008220();
        break;
    }
  }
}

extern u16 g80F09D0[]; // black tile
extern u16 g80F0F00[];
extern u16 g80F3160[];
extern u16 g80F0A50[][30];

void sub_800800C(u8, u8, u16, u16);
u16 sub_08007FEC(u8, u8, u16);
void sub_8008BF8 (void * dest);
extern u16 gBG1HOFS;
extern u16 gBG1VOFS;


// init bg1 (bg1 is used for B button menu, alpha blended)
void sub_8040B4C (void) {
  u16 i;
  u16 r6, r5;
  REG_BG1CNT = 0x5D09;
  gBG1HOFS = 0;
  gBG1VOFS = 0;
  CpuCopy16(g80F09D0, gBgVram.cbb2, 64);
  CpuCopy16(g80F0F00, &g02000000.bg[0x30], 32);
  sub_8008BF8(&g02000000.bg[0x40]);
  CpuCopy16(g80F3160, &g02000000.bg[0x70], 32);
  for (i = 0; i < 20; i++)
    CpuCopy16(g80F0A50[i], gBgVram.sbb1D[i], 64);
  r6 = sub_08007FEC(17, 19, 0xE800);
  r5 = sub_08007FEC(18, 19, 0xE800) & 0xFF00;
  for (i = 0; i < 2; i++)
    sub_800800C(i + 18, 19, 0xE800, r6);
  for (i = 0; i < 12; i++)
    sub_800800C(i + 8, 18, 0xE800, r5 | (i + 48));
  REG_WIN0H = 0xF0;
  REG_WIN0V = 0x8EA0;
  *((vu8*)REG_ADDR_WININ) = 0x36;
  REG_WINOUT = 0x1F;
}


