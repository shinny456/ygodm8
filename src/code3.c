#include "global.h"
#include "duel.h"
#include "gba/io_reg.h"
#include "card.h"
#include "constants/card_ids.h"

struct CursorPosition {
  u8 currentX;
  u8 currentY;
  u8 destX;
  u8 destY;
  u8 unk4;
  u8 filler[2];
};

struct Unk {
  u16 unk0;
  u16 unk2;
  u16 unk4;
  u16 unk6;
  u8 unk8;
};

struct Bruh {
  u16 a;
  u16 b;
};

extern struct CursorPosition gCursorPosition;
extern struct Duelist* gUnk8E00B30[];
extern u8* g8FA2BAC[]; //duel text pointers
extern u8* g8FA2C14[]; //duel text pointers
extern struct Bruh g80C180C[];
extern struct OamData gOamBuffer[];
extern u8 g80C1824[];

void sub_8021B80(void);
void InitDuel(void);
void sub_8041104(void);
void sub_8041D60(u8);
void sub_8057808(void);
void sub_804078C(void);
void sub_8008220(void);
void sub_8040FDC(void);
void sub_8021A14(struct Unk*);
void sub_80219E4(struct Unk*);
void sub_8021A24(void);
void sub_8040524(u8);
void sub_804004C(u8);
void ExodiaWinCondition();    //implicit declaration shenanigans
void sub_802549C(void);
void sub_802703C(void);
void sub_8040A40(void);
void sub_8019D84(void);
void ReturnMonstersToOwner(void);
void sub_804060C(u8);
void sub_80254F8(void);
void sub_805872C(void);
void DecrementSorlTurns(u8);
void sub_8040584(u8);
void DuelEnd(void);
void sub_80452D4(u8);
void sub_8021B10(void);
void sub_8043DD8(void);
void sub_8043E14(u8, u16);
void sub_8043D6C(u8);
void InitBoard();
void sub_8048C60();
void sub_80254DC(void);
void sub_8041090();
void sub_80081DC(void (*)(void));
void LoadPalettes(void);
void sub_8041C94(u8*, u16, u16, u16, u32);
void sub_8021A54(void);
bool8 sub_8021A8C(struct Bruh*);
void HandleOutcome(void);
void sub_8035020(u16);
void sub_8021C98(void);
void sub_08021CDC(void);
void sub_8021CD0(void);
void LoadOam(void);
u8 sub_8021CFC(void);
void sub_804ED08(void);
void sub_80240BC(struct Unk*);
void sub_8035038(u16);
void sub_8022040(void);
void sub_802405C(struct Unk*);
void sub_8022080(void);
void sub_8021E0C(void);
void sub_8021ED8(void);
void sub_8022068(void);

void DuelMain (void) {
  struct Unk unk;
  sub_8021B80();
  InitDuel();
  while (1) {
    u8 turn = WhoseTurn();
    sub_8041104();
    if (turn == PLAYER)
      sub_8041D60(gCursorPosition.currentY);
    else
      sub_8041D60(1);
    sub_8057808();
    sub_804078C();
    sub_8008220();
    sub_8040FDC();
    sub_8021A14(&unk);
    if (turn == PLAYER) {
      unk.unk8 = 0;
      sub_80219E4(&unk);
    }
    else
      sub_8021A24();
    sub_8040524(TURN_PLAYER);
    ResetNumTributes();
    sub_804004C(turn);
    if (NumEmptyZonesInRow(gZones[4]) > 0) {
      DrawCard(turn);
      if (IsDuelOver() == TRUE)
        break;
      PlayMusic(59);
    }
    sub_8041104();
    ExodiaWinCondition(turn);
    if (IsDuelOver() == TRUE)
      break;
    sub_802549C();
    sub_802703C();
    if (turn == PLAYER)
      sub_8040A40();
    else
      sub_8019D84();
    if (IsDuelOver() == TRUE)
      break;
    ReturnMonstersToOwner();
    sub_804060C(2);
    sub_80254F8();
    sub_805872C();
    if (gNotSure[TURN_PLAYER]->unkTwo)
      gNotSure[TURN_PLAYER]->unkTwo = 0;
    if (gNotSure[TURN_PLAYER]->sorlTurns)
      DecrementSorlTurns(TURN_PLAYER);
    sub_8040584(2);
    sub_8040584(4);
  }
  DuelEnd();
}

void InitDuel (void) {
  u8 i;
  sub_80452D4(0);
  sub_8021B10();
  gDuelData.duelist = *gUnk8E00B30[gDuelData.opponent];
  gDuelData.unk2B = 2;
  gDuelData.unk2A = 1;
  gDuelData.unkC = gUnk8E00B30[gDuelData.opponent]->unk24;
  gDuelData.unkE = gUnk8E00B30[gDuelData.opponent]->unk26;
  gDuelData.music = gUnk8E00B30[gDuelData.opponent]->unk28;
  sub_8043DD8();
  sub_8043E14(0, 0);
  sub_8043E14(1, gDuelData.opponent);
  for (i = 0; i < 2; i++)
    sub_8043D6C(i);
  if (!sub_8056258(0, 1))
    gWhoseTurn = 0;
  else
    gWhoseTurn = 1;
  InitBoard();
  sub_8048C60();
  sub_80254DC();
  gUnk_02021C08 = 0;
  sub_8041090();
  PlayMusic(gDuelData.unkC);
}

void sub_8021918 (void) {
  u16 i, j;
  struct PlttData* pltt;
  for (i = 0; i < 32; i++) {
  for (j = 0; j < 512; j++) {
    pltt = (struct PlttData*)&g02000000.bg[j];
    if (pltt->r) pltt->r--;
    if (pltt->g) pltt->g--;
    if (pltt->b) pltt->b--;
  }
  sub_80081DC(LoadPalettes);
  sub_8008220();
  }
}

//duel text (It's x's turn etc..)
void sub_80219E4 (struct Unk* arg0) {
  if (arg0->unk8 != 0xFF)
    sub_8041C94(g8FA2BAC[arg0->unk8], arg0->unk0, arg0->unk2, arg0->unk4, 0);
}

void sub_8021A14 (struct Unk* arg0) {
  arg0->unk0 = 0;
  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk6 = 0;
  arg0->unk8 = 0xFF;
}

void sub_8021A24 (void) {
  sub_8021A54();
  sub_8041C94(g8FA2C14[gDuelData.opponent], 0, 0, 0, 0);
}

void sub_8021A54 (void) {
  struct Bruh bruh;
  bruh.a = gDuelData.duelist.id;
  if (sub_8021A8C(&bruh))
  PlayMusic(bruh.b);
}

bool8 sub_8021A8C (struct Bruh* arg0) {
  u8 i;
  for (i = 0; g80C180C[i].a; i++)
    if (g80C180C[i].a == arg0->a) {
      arg0->b = g80C180C[i].b;
      return TRUE;
    }
  arg0->b = 0;
  return FALSE;
}

void DuelEnd (void) {
  if (gDuelistStatus[OPPONENT] == 2)
    gDuelData.unk2B = 1;
  else
    gDuelData.unk2B = 2;
  HandleOutcome();
  sub_8035020(2);
  sub_8021918();
}

void sub_8021B10 (void) {
  u8 i;
  gDuelData.unk0 = 0;
  gDuelData.unkC = 0;
  for (i = 0; i < 10; i++)
    gDuelData.unk14[i] = 0;
  gDuelData.capacityYield = 0;
  gDuelData.unk2A = 0;
  gDuelData.unk2B = 2;
  gDuelData.unk2c = 0;
  gDuelData.unk2d = 1;
  gDuelData.duelist = *gUnk8E00B30[0]; //dummy duelist?
}
/*
void sub_8021B80(void) {

  u16 i, j;
  struct PlttData* pltt;

  for (i = 0; i < 128; i++)
    gOamBuffer[i].mosaic = TRUE; //oam buffer nested structs?

  sub_80081DC(sub_8021C98);
  sub_8008220();

  for (i = 0; i < 32; i++) {

    for (j = 0; j < 512; j++) {

      pltt = (struct PlttData*)&g02000000.bg[j];
      if (pltt->r)
        pltt->r--;
      if (pltt->g)
        pltt->g--;
      if (pltt->b)
        pltt->b--;
    }
    sub_80081DC(sub_8021CD0);
    sub_8008220();
    sub_08021CDC();
    //REG_MOSAIC
  }
}*/

NAKED
void sub_8021B80(void) {

  asm_unified("\n\
  push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #4\n\
	movs r2, #0\n\
	ldr r5, _08021C7C\n\
	ldr r4, _08021C80\n\
	movs r3, #0x80\n\
	lsls r3, r3, #5\n\
_08021B96:\n\
	lsls r0, r2, #3\n\
	adds r0, r0, r4\n\
	ldr r1, [r0]\n\
	orrs r1, r3\n\
	str r1, [r0]\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r2, r0, #0x10\n\
	cmp r2, #0x7f\n\
	bls _08021B96\n\
	adds r0, r5, #0\n\
	bl sub_80081DC\n\
	bl sub_8008220\n\
	movs r2, #0\n\
	movs r7, #0x1f\n\
	movs r0, #0x1f\n\
	mov r8, r0\n\
	movs r1, #0x20\n\
	rsbs r1, r1, #0\n\
	mov sl, r1\n\
	ldr r6, _08021C84\n\
	mov sb, r6\n\
_08021BC6:\n\
	movs r4, #0\n\
	adds r0, r2, #1\n\
	str r0, [sp]\n\
	lsrs r5, r2, #1\n\
_08021BCE:\n\
	lsls r0, r4, #1\n\
	ldr r1, _08021C88\n\
	adds r2, r0, r1\n\
	ldrb r3, [r2]\n\
	mov r0, r8\n\
	ands r0, r3\n\
	cmp r0, #0\n\
	beq _08021BF0\n\
	ldr r1, [r2]\n\
	lsls r1, r1, #0x1b\n\
	lsrs r1, r1, #0x1b\n\
	subs r1, #1\n\
	ands r1, r7\n\
	mov r0, sl\n\
	ands r0, r3\n\
	orrs r0, r1\n\
	strb r0, [r2]\n\
_08021BF0:\n\
	ldrh r3, [r2]\n\
	movs r6, #0xf8\n\
	lsls r6, r6, #2\n\
	adds r0, r6, #0\n\
	ands r0, r3\n\
	cmp r0, #0\n\
	beq _08021C16\n\
	ldr r0, [r2]\n\
	lsls r0, r0, #0x16\n\
	lsrs r0, r0, #0x1b\n\
	subs r0, #1\n\
	mov r1, r8\n\
	ands r0, r1\n\
	lsls r0, r0, #5\n\
	ldr r6, _08021C8C\n\
	adds r1, r6, #0\n\
	ands r1, r3\n\
	orrs r1, r0\n\
	strh r1, [r2]\n\
_08021C16:\n\
	ldrb r3, [r2, #1]\n\
	movs r0, #0x7c\n\
	ands r0, r3\n\
	cmp r0, #0\n\
	beq _08021C38\n\
	ldr r0, [r2]\n\
	lsls r0, r0, #0x11\n\
	lsrs r0, r0, #0x1b\n\
	subs r0, #1\n\
	ands r0, r7\n\
	lsls r0, r0, #2\n\
	movs r6, #0x7d\n\
	rsbs r6, r6, #0\n\
	adds r1, r6, #0\n\
	ands r1, r3\n\
	orrs r1, r0\n\
	strb r1, [r2, #1]\n\
_08021C38:\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r4, r0, #0x10\n\
	cmp r4, sb\n\
	bls _08021BCE\n\
	ldr r0, _08021C90\n\
	bl sub_80081DC\n\
	bl sub_8008220\n\
	bl sub_08021CDC\n\
	lsls r1, r5, #0x10\n\
	lsrs r1, r1, #0x10\n\
	ldr r2, _08021C94\n\
	movs r0, #0xf\n\
	ands r1, r0\n\
	lsls r0, r1, #8\n\
	orrs r0, r1\n\
	strh r0, [r2]\n\
	ldr r1, [sp]\n\
	lsls r0, r1, #0x10\n\
	lsrs r2, r0, #0x10\n\
	cmp r2, #0x1f\n\
	bls _08021BC6\n\
	add sp, #4\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08021C7C: .4byte sub_8021C98\n\
_08021C80: .4byte gOamBuffer\n\
_08021C84: .4byte 0x000001FF\n\
_08021C88: .4byte 0x02000000\n\
_08021C8C: .4byte 0xFFFFFC1F\n\
_08021C90: .4byte sub_8021CD0\n\
_08021C94: .4byte 0x0400004C");
}

void sub_8021C98 (void) {
  LoadOam();
  REG_MOSAIC = 0; //TODO
  REG_BG0CNT |= BGCNT_MOSAIC;
  REG_BG1CNT |= BGCNT_MOSAIC;
  REG_BG2CNT |= BGCNT_MOSAIC;
  REG_BG3CNT |= BGCNT_MOSAIC;
}

void sub_8021CD0 (void) {
  LoadPalettes();
}

void sub_08021CDC (void) {
}

void sub_8021CE0 (void) { //unused
  if (sub_8021CFC() == 1) {
  DuelMain();
  sub_804ED08();
  }
}

u8 sub_8021CFC (void) {
  return 0;
}

u8 sub_8021D00(u16 id) {
  SetCardInfo(id);
  return g80C1824[gCardInfo.ritualEffect];
}

//file split?
struct Unk3000C38 {

  u8 filler0[0x32];
  u8 unk32;
  u8 unk33;
  u8 unk34;
};

struct Unk2021DA0 {

  int deckCapacity;
  u32 unk4;
  u8 unk8;
  u8 unk9;
  u8 unkA;
  u8 unkB;
  u8 unkC;
  u8 unkD;
  u8 unkE;
};

extern struct Unk3000C38 g3000C38;
extern u8 g2021D98;
extern u8 g3000C6C;
extern u8 g2021D9C;
extern struct Unk2021DA0 g2021DA0;
extern u32 g2021D70;
extern u8 g2021D80[];
extern u16 gUnk2020DFC;

void sub_8021FF8(void);
void sub_8024548(void);
void sub_8024354(void);
void sub_802408C(struct Unk*);
void sub_8024568(void);
void sub_801B66C(void);
void sub_80410B4(void);
void sub_801CF08(void);
void sub_802432C(void);
void sub_8041D54(void);
void sub_803276C(void);
void sub_8022234(void);
void sub_80240CC(void);
void sub_802417C(void);
void sub_80222EC(void);
void sub_8022318(void);
void sub_8022214(void);
void sub_8022340(void);
s32 sub_8043E70(u8);
s32 sub_8043E9C(u8);
void IncreaseDeckCapacity(u32);
void sub_800AD4C(void);
void sub_8043E44(u8, u16*);
void sub_8058720(void);
void sub_8048CA8(u8, u16);


void sub_8021D20 (void) {
  u8 turn;
  struct Unk unk;
  sub_8021FF8();
  if (g3000C38.unk34) return;
  sub_8035038(2);
  PlayMusic(213);
  sub_8021B80();
  sub_8022040();
  while (1) {
    turn = WhoseTurn();
    sub_8041104();
    sub_80240BC(&unk);
    if (turn == PLAYER) {
      unk.unk8 = 0;
      sub_802405C(&unk);
    }
    else {
      unk.unk8 = 23;
      sub_802405C(&unk);
    }
    sub_8022080();
    sub_8040524(TURN_PLAYER);
    ResetNumTributes();
    sub_804004C(turn);
    if (turn == PLAYER)
      sub_8021E0C();
    else
      sub_8021ED8();
    if (IsDuelOver() == TRUE) break;
    ReturnMonstersToOwner();
    sub_804060C(2);
    sub_80254F8();
    sub_805872C();
    if (gNotSure[0]->unkTwo)
      gNotSure[0]->unkTwo = 0;
    if (gNotSure[0]->sorlTurns)
      DecrementSorlTurns(TURN_PLAYER);
    sub_8040584(2);
    sub_8040584(4);
    if (g3000C38.unk34) break;
  }
  sub_8022068();
}

void sub_8021E0C (void) {
  struct Unk unk;
  g3000C38.unk32 = 0;
  if (NumEmptyZonesInRow(gZones[4]) > 0) {
    DrawCard(PLAYER);
    if (IsDuelOver() == TRUE) {
      g2021D98 = 3;
      sub_8024548();
      sub_80240BC(&unk);
      unk.unk8 = 24;
      sub_802408C(&unk);
      do {
        sub_8024354();
      } while (g3000C38.unk34);
      return;
    }
    else
      PlayMusic(59);
  }
  sub_8041104();
  ExodiaWinCondition();
  if (IsDuelOver() == TRUE)
    return;
  sub_802549C();
  sub_802703C();
  sub_8040A40();
  if (IsDuelOver() == TRUE)
    return;
  g2021D98 = 3;
  sub_8024548();
  sub_80240BC(&unk);
  unk.unk8 = 24;
  sub_802408C(&unk);
  do {
    sub_8024354();
  } while (g3000C6C);
}

void sub_8021ED8(void) {
  struct Unk unk;
  struct CursorPosition curPos = gCursorPosition; //fix struct def
  bool32 r4 = 0;

  g3000C38.unk32 = 1;
  while (1) {
    do {
      sub_8024354();
    } while (g3000C38.unk34);
    sub_8024568();
    switch (g2021D9C) {

    case 3:
      r4 = 1;
      break;
    case 4:
      sub_801B66C();
      sub_80410B4();
      sub_8022080();
      break;
    case 5:
      sub_8041140(gDuel.field);
      sub_801CF08();
      break;
    }
    if (IsDuelOver() == 1)
      r4 = 1;
    if (r4 == 1)
      break;
  }
  gCursorPosition = curPos;
  sub_8041D60(gCursorPosition.currentY);
}

NAKED
void sub_8021F80(void) { //unused

  asm_unified("\n\
  push {r4, r5, r6, lr}\n\
	sub sp, #0xc\n\
	ldr r0, _08021FA8 @ =0x020241FC\n\
	ldrb r0, [r0]\n\
	cmp r0, #6\n\
	bne _08021FEE\n\
	mov r0, sp\n\
	bl sub_80240BC\n\
	mov r1, sp\n\
	movs r0, #0x18\n\
	strb r0, [r1, #8]\n\
	mov r0, sp\n\
	bl sub_802408C\n\
	movs r4, #0x1e\n\
	ldr r6, _08021FAC @ =0x03000C6C\n\
	mov r5, sp\n\
	b _08021FD8\n\
	.align 2, 0\n\
_08021FA8: .4byte 0x020241FC\n\
_08021FAC: .4byte 0x03000C6C\n\
_08021FB0:\n\
	subs r4, #1\n\
	cmp r4, #0\n\
	bne _08021FD8\n\
	mov r0, sp\n\
	bl sub_80240BC\n\
	movs r0, #0x19\n\
	strb r0, [r5, #8]\n\
	mov r0, sp\n\
	bl sub_802405C\n\
	mov r0, sp\n\
	bl sub_80240BC\n\
	movs r0, #0x18\n\
	strb r0, [r5, #8]\n\
	mov r0, sp\n\
	bl sub_802408C\n\
	movs r4, #0x1e\n\
_08021FD8:\n\
	bl sub_802432C\n\
	ldrb r0, [r6]\n\
	cmp r0, #0\n\
	bne _08021FB0\n\
	bl WhoseTurn\n\
	cmp r0, #0\n\
	bne _08021FEE\n\
	bl sub_8041D54\n\
_08021FEE:\n\
	add sp, #0xc\n\
	pop {r4, r5, r6}\n\
	pop {r0}\n\
	bx r0");
}

void sub_8021FF8 (void) {
  sub_80452D4(6);
  sub_803276C();
  sub_8022234();
  sub_80240CC();
  if (!g3000C38.unk34)
  if (g2021DA0.deckCapacity != g2021D70)
    g3000C38.unk34 = 0xFE;
  else
    sub_802417C();
}

void sub_8022040 (void) {
  sub_80222EC();
  sub_8041090();
  PlayMusic(gDuelData.unkC);
  sub_8041104();
  gUnk_02021C08 = 0;
}

void sub_8022068 (void) {
  sub_8022318();
  sub_8022214();
  sub_8035020(1);
  sub_8022340();
}

void sub_8022080 (void) {
  struct Unk unk;
  if (gUnk20241FC != 6)
    return;
  sub_80240BC(&unk);
  unk.unk8 = 24;
  sub_802408C(&unk);
  do {
    sub_802432C();
  } while (g3000C6C);
  if (WhoseTurn() == PLAYER)
    sub_8041D54();
}

void sub_80220C8(void) {
  struct Unk unk;
  IncreaseDeckCapacity(gDuelData.capacityYield);
  sub_800AD4C();
  sub_8035020(4);
  if (gLifePoints[OPPONENT] == 0) {
    sub_8021A14(&unk);
    unk.unk8 = 19;
    sub_80219E4(&unk);
  }
  else if (sub_8043E70(1) < sub_8043E9C(1)) {
    sub_8021A14(&unk);
    unk.unk8 = 21;
    sub_80219E4(&unk);
  }
  if (gDuelData.unk2d) {

    PlayMusic(gDuelData.unkE);
    sub_8021A14(&unk);
    unk.unk8 = 2;
    sub_80219E4(&unk);
    sub_8021A14(&unk);
    unk.unk8 = 6;
    unk.unk4 = gDuelData.capacityYield;
    sub_80219E4(&unk);
  }
}

void sub_8022170(void) {
  struct Unk unk;
  IncreaseDeckCapacity(5);
  sub_800AD4C();
  sub_8035020(4);
  if (gLifePoints[PLAYER] == 0) {
    sub_8021A14(&unk);
    unk.unk8 = 20;
    sub_80219E4(&unk);
  }
  else if (sub_8043E70(0) < sub_8043E9C(0)) {
    sub_8021A14(&unk);
    unk.unk8 = 22;
    sub_80219E4(&unk);
  }
  if (gDuelData.unk2d) {
    PlayMusic(gDuelData.music);
    sub_8021A14(&unk);
    unk.unk8 = 3;
    sub_80219E4(&unk);
    sub_8021A14(&unk);
    unk.unk8 = 6;
    unk.unk4 = 5;
    sub_80219E4(&unk);
  }
}

void sub_8022214(void) {

  if (gDuelData.unk2B == 1)
    sub_80220C8();
  else
    sub_8022170();
}

void sub_8022234(void) {

  u32 i;

  for (i = 0; i < 9; i++)
    g2021D80[i] = 0;

  for (i = 0; i < 10; i++)
    gDuelData.unk14[i] = 0;

  gDuelData.unk0 = 0;
  gDuelData.opponent = 0;
  gDuelData.ante = gAnte;
  gDuelData.capacityYield = 10;
  gDuelData.unk2A = 0;
  gDuelData.unk2B = 2;
  gDuelData.unk2c = 0;
  gDuelData.unk2d = 1;
  gDuelData.duelist = *gUnk8E00B30[0];
  gDuelData.unkC = 500;
  gDuelData.unkE = 43;
  gDuelData.music = 44;
  sub_8043DD8();
  sub_8043E44(0, gDeck.cards);
  sub_8043D6C(0);
  sub_8058720();
}

void sub_80222EC(void) {

  sub_80254DC();
  sub_8048CA8(PLAYER, gDuelData.duelist.playerLp);
  sub_8048CA8(OPPONENT, gDuelData.duelist.lifePoints);
  InitBoard();
}

void sub_8022318(void) {

  if (gDuelistStatus[OPPONENT] == 2)
    gDuelData.unk2B = 1;
  else
    gDuelData.unk2B = 2;
}

void sub_8022340(void) {  //fade to black

  u16 i, j;
  struct PlttData* pltt;

  for (i = 0; i < 32; i++) {

    for (j = 0; j < 512; j++) {

      pltt = (struct PlttData*)&g02000000.bg[j];
      if (pltt->r)
        pltt->r--;
      if (pltt->g)
        pltt->g--;
      if (pltt->b)
        pltt->b--;
    }
    sub_80081DC(LoadPalettes);
    sub_8008220();
  }
}

void sub_8008F24(void);
void sub_801DA20(void);
void sub_8022A24(void);
void sub_8022C10(int);
void sub_8023998(void);
int sub_8056208(void);
bool8 IsDeckFull(void);
s32 IsCostWithinCapacity(void);
void sub_8022B7C(u8);
void sub_8022AA0(void);
void sub_8023AE4(void);
void sub_8023A98(void);
void TrunkMenu(void);
void sub_8022A94(u8);
s32 sub_801D3FC(void);
void sub_80226D8(void);
void DeckMenu(void);
u32 GetDeckCost(void);
void sub_8023B30(void);
void sub_8023C14(void);
void sub_8023B7C(void);
void sub_8023BC8(void);
u16 sub_8022610(void);
void sub_8022764(void);
void sub_8022794(void);
void sub_80227C4(void);
void sub_80227F4(void);
void sub_8022824(void);
void sub_8022858(void);
void sub_802288C(void);
void sub_802293C(void);
void sub_8022990(void);
void sub_80238C4(void);
void sub_8022B04(void);

//Link Duel Menu?

void LinkDuelMenu (void) {
  PlayMusic(47);
  sub_8008F24();
  sub_801DA20();
  sub_8022A24();
  sub_8022C10(g2021DA0.unk4);
  sub_8023998();
  while (1) {
  sub_8056208();
  if (g2021DA0.unk9 == 1)
    if (IsDeckFull() != 1) {
    sub_8022B7C(5);
    sub_8022AA0();
    PlayMusic(57);
    sub_8023A98();
    }
    else if (IsCostWithinCapacity() != 1) {
      sub_8022B7C(7);
      sub_8022AA0();
      PlayMusic(57);
      sub_8023AE4();
    }
    else
      break;
  else if (g2021DA0.unk9 == 2) { //TRUNK
    PlayMusic(55);
    TrunkMenu();
    sub_8022B7C(0);
    sub_8022A24();
    sub_8022A94(0);
    sub_8023998();
  }
  else if (g2021DA0.unk9 == 3)
    if (sub_801D3FC() != 1) {
      sub_8022B7C(0);
      PlayMusic(57);
      sub_80226D8();
    }
    else {
      PlayMusic(55);
      DeckMenu();
      sub_8022B7C(0);
      sub_8022A24();
      sub_8022A94(1);
      sub_8023998();
    }
  else if (g2021DA0.unk9 == 4)
    if (IsDeckFull() != 1) {
      sub_8022B7C(5);
      sub_8022AA0();
      PlayMusic(57);
      sub_8023A98();
    }
    else if (IsCostWithinCapacity() != 1) {
      sub_8022B7C(7);
      sub_8022AA0();
      PlayMusic(57);
      sub_8023AE4();
    }
    else if (GetDeckCost() > g2021DA0.deckCapacity) {
      sub_8022B7C(6);
      sub_8022AA0();
      PlayMusic(57);
      sub_8023B30();
    }
    else {
      sub_8023C14();
      sub_8021D20();
      PlayMusic(47);
      if (g3000C38.unk34 == 0xFE) {
        sub_8022B7C(8);
        sub_8022AA0();
        PlayMusic(57);
        sub_8023B7C();
      }
      else if (g3000C38.unk34) {
        sub_8022B7C(9);
        sub_8022AA0();
        PlayMusic(57);
        sub_8023BC8();
      }
      else {
        sub_8022B7C(0);
        sub_8008F24();
        sub_801DA20();
        sub_8022A24();
        sub_8022A94(3);
        sub_8023998();
      }
    }
  else
    switch (sub_8022610()) {
      case 0x40:
        sub_8022764();
        break;
      case 0x80:
        sub_8022794();
        break;
      case 0x20:
        sub_80227C4();
        break;
      case 0x10:
        sub_80227F4();
        break;
      case 0x120:
        sub_8022824();
        break;
      case 0x110:
        sub_8022858();
        break;
      case 1:
        sub_802288C();
        break;
      case 2:
        sub_802293C();
        break;
      case 4:
      case 8:
        sub_8022990();
        break;
      default:
        sub_80226D8();
        break;
    }
  }
  sub_800AD4C();
  PlayMusic(55);
  sub_80238C4();
}

extern u16 gKeyState;
extern u16 g2020DF4;



void sub_802618C(void);
void sub_8022ABC(void);
void sub_80229C0(void);
void sub_8023A14(void);
void sub_8022AE0(void);
void sub_8022A64(void);
void sub_8022A7C(void);
void sub_8022BC8(u32);
void sub_8022BA0(u32);
void sub_80228CC(void);
void sub_8023A44(void);
void sub_8022BF0(int);

u16 sub_8022610(void) { //GetKeyMask?

  sub_802618C();
  if (gUnk2020DFC & 1)
    return 1;
  if (gUnk2020DFC & 2)
    return 2;
  if (gUnk2020DFC & 4)
    return 4;
  if (gUnk2020DFC & 8)
    return 8;
  if (g2020DF4 & 0x40)
    return 0x40;
  if (g2020DF4 & 0x80)
    return 0x80;
  if ((g2020DF4 & 0x20) && (gKeyState & 0x100))
    return 0x120;
  if ((g2020DF4 & 0x10) && (gKeyState & 0x100))
    return 0x110;
  if (g2020DF4 & 0x20)
    return 0x20;
  if (g2020DF4 & 0x10)
    return 0x10;
  return 0;
}

void sub_80226D8(void) {
  switch (g2021DA0.unk9) {
  case 0:
    sub_8022ABC();
    sub_80229C0();
    sub_8023A14();
    break;
  case 5:
    sub_8022AE0();
    sub_8023A98();
    break;
  case 6:
    sub_8022AE0();
    sub_8023B30();
    break;
  case 7:
    sub_8022AE0();
    sub_8023AE4();
    break;
  case 8:
    sub_8022AE0();
    sub_8023B7C();
    break;
  case 9:
    sub_8022AE0();
    sub_8023BC8();
    break;
  default:
    sub_8008220();
    break;
  }
}

void sub_8022764(void) {
  if (g2021DA0.unk9 == 0) {

    sub_8022A64();
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(0x36);
    sub_8023A14();
  }
  else
    sub_8008220();
}

void sub_8022794(void) {
  if (g2021DA0.unk9 == 0) {

    sub_8022A7C();
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(0x36);
    sub_8023A14();
  }
  else
    sub_8008220();
}

void sub_80227C4(void) {
  if (g2021DA0.unk9 == 0) {

    sub_8022BC8(100);
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(0x36);
    sub_8023A14();
  }
  else
    sub_8008220();
}

void sub_80227F4(void) {
  if (g2021DA0.unk9 == 0) {

    sub_8022BA0(100);
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(0x36);
    sub_8023A14();
  }
  else
    sub_8008220();
}

void sub_8022824(void) {
  if (g2021DA0.unk9 == 0) {

    sub_8022BC8(1000);
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(0x36);
    sub_8023A14();
  }
  else
    sub_8008220();
}

void sub_8022858(void) {
  if (g2021DA0.unk9 == 0) {

    sub_8022BA0(1000);
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(0x36);
    sub_8023A14();
  }
  else
    sub_8008220();
}

void sub_802288C(void) {
  switch (g2021DA0.unk9) {
  case 0:
    sub_80228CC();
    break;
  case 5:
  case 6:
  case 7:
  case 8:
  case 9:
    sub_8022B7C(0);
    sub_8022AA0();
    PlayMusic(0x38);
    sub_8023A44();
    break;
  default:
    sub_8008220();
  }
}

void sub_80228CC(void) {
  switch (g2021DA0.unkA) {
  case 0:
    sub_8022B7C(2);
    sub_8022ABC();
    sub_8023A14();
    break;
  case 1:
    sub_8022B7C(3);
    sub_8022ABC();
    sub_8023A14();
    break;
  case 2:
    sub_8022C10(g2021DA0.unk4);
    sub_8022ABC();
    PlayMusic(0x37);
    sub_8023A14();
    break;
  case 3:
    sub_8022B7C(4);
    sub_8022ABC();
    sub_8023A14();
    break;
  case 4:
    sub_8022B7C(1);
    sub_8022ABC();
    sub_8023A14();
    break;
  default:
    sub_8008220();
  }
}

void sub_802293C(void) {
  switch (g2021DA0.unk9) {

  case 0:
    sub_8022A94(4);
    sub_8022ABC();
    sub_80229C0();
    PlayMusic(0x38);
    sub_8023A14();
    break;
  case 5:
  case 6:
  case 7:
  case 8:
  case 9:
    sub_8022B7C(0);
    sub_8022AA0();
    PlayMusic(0x38);
    sub_8023A44();
    break;
  default:
    sub_8008220();
  }
}

void sub_8022990(void) {
  if (g2021DA0.unk9 == 0) {

    sub_8022BF0(65000);
    sub_8022ABC();
    PlayMusic(0x37);
    sub_8023A14();
  }
  else
    sub_8008220();
}

struct Unk8f {
  u8 unk0;
  u8 unk1;
  u8 filler2[2];
  u32 unk4;
};

extern u8 g80C1852[];
extern struct Unk8f (*g8FC4A8C[])[1];

void sub_80229C0(void) {
  if (g2021DA0.unkE == 0) {

    u8 temp = g80C1852[g2021DA0.unkA];
    g2021DA0.unkD++;
    if (g8FC4A8C[temp][g2021DA0.unkD]->unk0 == 0)
      g2021DA0.unkD = 0;
  }
  if (g2021DA0.unkE == 0) {

    u8 temp = g80C1852[g2021DA0.unkA];
    g2021DA0.unkE = g8FC4A8C[temp][g2021DA0.unkD]->unk0;
  }
  else
    g2021DA0.unkE--;
}

u8 GetDeckSize(void);

void sub_8022A24(void) {
  u8 temp;

  g2021DA0.unk4 = GetDeckCost();
  g2021DA0.unk8 = GetDeckSize();
  g2021DA0.unkA = 0;
  g2021DA0.unk9 = 0;
  g2021DA0.unkB = 0;
  g2021DA0.unkC = 0;
  temp = g80C1852[0];
  g2021DA0.unkD = 0;
  g2021DA0.unkE = g8FC4A8C[temp][0]->unk0;
}

extern u8 g80C188C[];
extern u8 g80C1891[];
extern u8 g80C1857[];
extern u8 g80C1852[];
extern u8 g80C1872[];

void sub_8022A64(void) {
  g2021DA0.unkA = g80C188C[g2021DA0.unkA];
}

void sub_8022A7C(void) {
  g2021DA0.unkA = g80C1891[g2021DA0.unkA];
}

void sub_8022A94(u8 arg0) {
  g2021DA0.unkA = arg0;
}

void sub_8022AA0(void) {
  g2021DA0.unkB = 0;
  g2021DA0.unkC = 0;
}

u8 sub_8022AB0(void) {
  return g2021DA0.unkB;
}

void sub_8022ABC(void) {
  if (g2021DA0.unkC == 0)
    g2021DA0.unkB = g80C1857[g2021DA0.unkB];

  sub_8022B04();
}

void sub_8022AE0(void) {
  if (g2021DA0.unkC == 0)
    g2021DA0.unkB = g80C1872[g2021DA0.unkB];
  sub_8022B04();
}

void sub_8022B04(void) {
  if (g2021DA0.unkC == 0)
    g2021DA0.unkC = 3;
  else
    g2021DA0.unkC--;
}

void sub_8022B1C(void) {
  u8 temp = g80C1852[g2021DA0.unkA];
  g2021DA0.unkD = 0;
  g2021DA0.unkE = g8FC4A8C[temp][0]->unk0;
}

void sub_8022B44(void) {
  if (g2021DA0.unkE == 0) {

    u8 temp = g80C1852[g2021DA0.unkA];
    g2021DA0.unkE = g8FC4A8C[temp][g2021DA0.unkD]->unk0;
  }
  else
     g2021DA0.unkE--;
}

void sub_8022B7C(u8 arg0) {
  g2021DA0.unk9 = arg0;
}

u8 sub_8022B88(void) {
  return g2021DA0.unk9;
}

void sub_8022B94(void) {

  g2021DA0.deckCapacity = 100;
}

void sub_8022BA0(u32 arg0) {

  if (g2021DA0.deckCapacity == 65000)
    g2021DA0.deckCapacity = 100;
  else {

    s32 cost = g2021DA0.deckCapacity + arg0;
    g2021DA0.deckCapacity = cost;
    if (cost > 65000)
      g2021DA0.deckCapacity = 65000;
  }
}

void sub_8022BC8(u32 subtrahend) {

  if (g2021DA0.deckCapacity == 100)
    g2021DA0.deckCapacity = 65000;
  else {
    int cost = g2021DA0.deckCapacity - subtrahend;
    g2021DA0.deckCapacity = cost;
    if (cost < 100)
      g2021DA0.deckCapacity = 100;
  }
}

void sub_8022BF0 (int arg0) {
  if (arg0 > 65000)
    arg0 = 65000;
  else if (arg0 < 100)
    arg0 = 100;
  g2021DA0.deckCapacity = arg0;
}

void sub_8022C10 (int arg0) {
  if (arg0 > 65000)
    return;
  g2021DA0.deckCapacity = 100;
  if (arg0 <= 100)
    return;
  do {
    if (g2021DA0.deckCapacity == 65000)
      g2021DA0.deckCapacity = 100;
    else {
      g2021DA0.deckCapacity += 100;
      if (g2021DA0.deckCapacity > 65000)
      g2021DA0.deckCapacity = 65000;
    }
  } while (arg0 > g2021DA0.deckCapacity);
}


/*
extern u8 g8E0CFC0[];

void sub_803F05C (void) {
  sub_803FD3C();
  if (sub_803FA94() != TRUE)
    return;
  if (g2023E80.unk2 < g2023E80.unkE) {
    sub_803F44C();
    if (g2023E80.unk6 <= g2023E80.unkE - g2023E80.unk2) {
      g2023E80.unk6 = 0;
      g2023E80.unk19 |= g8E0CFC0[g2023E80.unk1A];
    }
    else
      g2023E80.unk6 -= g2023E80.unkE - g2023E80.unk2;
    gUnk2023EA0.unk18 = 3;
  }
  else if (g2023E80.unk2 == g2023E80.unkE) {
    sub_803F44C();
    sub_803F45C();
    gUnk2023EA0.unk18 = 2;
  }
  else {
    sub_803F45C();
    if (g2023E80.unk6 <= g2023E80.unk2 - g2023E80.unkE) {
      g2023E80.unk6 = 0;
      g2023E80.unk19 |= g8E0CFC0[g2023E80.unk1A];
    }
    else
      g2023E80.unk6 -= g2023E80.unk2 - g2023E80.unkE;
    gUnk2023EA0.unk18 = 1;
  }
}*/

extern u16 g8E0D08C[][5];
extern u8 g8E0D0BE[][5];
extern u8 g8E0D0D7[][5];


/*
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

void sub_8040258 (void) {
  u8 i, j;
  for (i = 0; i < 4; i++)
    for (j = 0; j < 5; j++)
      gDuel.zones[i][j].tempStage = 0;
  for (i = 0; i < 2; i++)
    for (j = 0; j < 5; j++)
      gDuel.zones[4+i][j].tempStage = 0;
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
    if (gZones[row][i]->id != CARD_NONE && sub_803FCBC(gZones[row][i]->id))
      gZones[row][i]->isLocked = TRUE;
}

void sub_8040584 (u8 row) {
  u8 i;
  for (i = 0; i < 5; i++)
    if (gZones[row][i]->id != CARD_NONE)
      gZones[row][i]->isLocked = FALSE;
}

void sub_804060C (u8 row) {
  u8 i;
  for (i = 0; i < 5; i++)
    if (gZones[row][i]->id != CARD_NONE && !gZones[row][i]->isDefending)
      gZones[row][i]->isFaceUp = TRUE;
}

void SetPermStage (struct DuelCard *zone, int permStage) {
  zone->permStage = permStage;
}

int PermStage (struct DuelCard *zone) {
  return zone->permStage;
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

void InitSorlTurns (u8 currOpponent) {
  gNotSure[currOpponent]->sorlTurns = 3;
}

void DecrementSorlTurns (u8 currPlayer) {
  if (gNotSure[currPlayer]->sorlTurns)
    gNotSure[currPlayer]->sorlTurns--;
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


different file?
void MoveCursorUp (void) {
  PlayMusic(0x36);
  if (gCursorPosition.currentY == 0)
    gCursorPosition.currentY++;
  gCursorPosition.currentY--;
}

void MoveCursorDown (void) {
  PlayMusic(0x36);
  if (++gCursorPosition.currentY > 4)
    gCursorPosition.currentY--;
}

void MoveCursorRight (void) {
  PlayMusic(0x36);
  if (++gCursorPosition.currentX == 5)
    gCursorPosition.currentX = 0;
}

void MoveCursorLeft (void) {
  PlayMusic(0x36);
  if (gCursorPosition.currentX == 0)
    gCursorPosition.currentX = 5;
  gCursorPosition.currentX--;
}

int sub_80575E0(u8, u8);
int sub_8057600(u8, u8);
extern s8 g8E0D954[];
extern u8 g8E0D958[];
u16 sub_8043FFC (u8 arg0) {
  return sub_80575E0(gCursorPosition.currentX, gCursorPosition.currentY) + g8E0D954[arg0];
}

u8 sub_804402C (u8 arg0) {
  return sub_8057600(gCursorPosition.currentX, gCursorPosition.currentY) + g8E0D958[arg0];
}

void sub_804405C (void) { //doesn't match
  gCursorPosition.unk4 = 0;
  gCursorPosition.currentX = 0;
  gCursorPosition.currentY = 4;
  gCursorPosition.destX = 0;
  gCursorPosition.destY = 4;
}

void sub_804411C (void) {
  gCursorPosition.destX = gCursorPosition.currentX;
  gCursorPosition.destY = gCursorPosition.currentY;
}

void sub_804412C (void) {
  gCursorPosition.currentX = gCursorPosition.destX;
  gCursorPosition.currentY = gCursorPosition.destY;
}

void sub_8044160 (u8 arg0) {
  switch (arg0) {
    case 1 ... 9:
    case 16 ... 17:
      gCursorPosition.currentY = gCursorPosition.destY;
      gCursorPosition.currentX = gCursorPosition.destX;
      break;
    case 0:
    case 10 ... 15:
      break;
  }
}
u8 sub_80453D8(u16);
u8 sub_8045390(u16);
void sub_80441D0 (void) {
  switch (gCursorPosition.currentY) {
    case 2:
      if (gUnk2024040[2][gCursorPosition.currentX]->id && !gUnk2024040[2][gCursorPosition.currentX]->isLocked) {
        PlayMusic(0x37);
        sub_8044320();
      }
      else {
        PlayMusic(0x39);
        sub_8008220();
      }
      break;
    case 3:
      if (gUnk2024040[3][gCursorPosition.currentX]->id == CARD_NONE) {
        PlayMusic(0x39);
        sub_8008220();
      }
      else {
        u8 r4 = sub_80453D8(gUnk2024040[3][gCursorPosition.currentX]->id);
        if (!r4) {
          sub_80446E0();
        }
        else {
          PlayMusic(0x39);
          sub_8041240(r4);
        }
      }
      break;
    case 4:
      if (!gUnk2024040[4][gCursorPosition.currentX]->id || gUnk2024040[4][gCursorPosition.currentX]->isLocked) {
        PlayMusic(0x39);
        sub_8008220();
      }
      else {
        u8 r4 = sub_8045390(gUnk2024040[4][gCursorPosition.currentX]->id);
        if (r4) {
          PlayMusic(0x39);
          sub_8041240(r4);
        }
        else {
          PlayMusic(0x37);
          sub_80442AC();
        }
      }
      break;
    default:
      PlayMusic(0x39);
      sub_8008220();
  }
}

void sub_80442AC (void) {
  u16 id = gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->id;
  sub_8040998(gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]);
  gCursorPosition.unk4 = 1;
  sub_804411C();
  switch (sub_803FCBC(id)) {
    case 1:
      gCursorPosition.currentX = EmptyZoneInRow(gUnk2024040[2]);
      gCursorPosition.currentY = 2;
      break;
    case 2 ... 4:
      gCursorPosition.currentX = EmptyZoneInRow(gUnk2024040[3]);
      gCursorPosition.currentY = 3;
      break;
    default:
      break;
  }
  sub_8041EC8();
  sub_8041E70(gCursorPosition.destY, gCursorPosition.currentY);
}

void sub_8044320 (void) {
  switch (sub_80429A4()) {
    case 1:
      sub_8044570();
      break;
    case 2:
      if (!gNotSure[0]->unkTwo) {
        PlayMusic(0x37);
        gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isDefending = TRUE;
        gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isLocked = TRUE;
      }
      else {
        PlayMusic(0x39);
        gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isDefending = FALSE;
      }
      sub_8041104();
      sub_8029820();
      break;
    case 3:
      PlayMusic(0x3D);
      IncNumTributes();
      sub_8045314(gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX], 0);
      sub_8041104();
      sub_8029820();
      break;
    case 4:
      if (gNotSure[0]->unkTwo)
        gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isDefending = FALSE;
      if (!gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isFaceUp) {
        SetCardInfo(gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->id);
        if (!gCardInfo.monsterEffect) {
          FAILED:
          PlayMusic(0x39);
          sub_8041104();
        }
        else {
          gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isDefending = FALSE;
          gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isFaceUp = TRUE;
          gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isLocked = TRUE;
          gMonEffect.id = gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->id;
          gMonEffect.row = gCursorPosition.currentY;
          gMonEffect.zone = gCursorPosition.currentX;
          ActivateMonEffect();
          if (gNotSure[0]->unkThree)
            sub_8040540(4);
          sub_8041104();
          ExodiaWinCondition();
          if (IsDuelOver() != TRUE)
            sub_8029820();
        }
      }
      else
        goto FAILED;
      break;
    case 5:
      if (gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isDefending)
        if (gNotSure[0]->unkTwo)
          gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isDefending = FALSE;
      sub_8041104();
      break;
  }
}

void sub_8044570 (void) {
  u8 turn = WhoseTurn();
  if (sub_8025534(turn) || gNotSure[0]->sorlTurns) {
    PlayMusic(0x39);
    gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isLocked = TRUE;
    sub_8041104();
  }
  else if (NumEmptyZonesInRow(gZones[1]) == 5) {
    gUnk020245A0.unk2 = gCursorPosition.currentY;
    gUnk020245A0.unk3 = gCursorPosition.currentX;
    gUnk020245A0.id = gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->id;
    if (sub_80586DC() != 1) {
      PlayMusic(0x37);
      gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isDefending = FALSE;
      gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isFaceUp = TRUE;
      gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isLocked = TRUE;
      sub_803F8E0(gCursorPosition.currentX);
      sub_803F29C();
      sub_803F224();
      gCursorPosition.unk4 = 0;
      sub_801BC00();
      sub_80410B4();
      sub_8022080();
      sub_8029820();
    }
    else {
      PlayMusic(0x42);
      sub_80581DC();
      gCursorPosition.unk4 = 0;
      sub_8029820();
    }
  }
  else {
    PlayMusic(0x37);
    sub_8040998(gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]);
    gCursorPosition.unk4 = 4;
    sub_804411C();
    gCursorPosition.currentX = sub_804363C(&gUnk2024040[1][4]);
    gCursorPosition.currentY = 1;
    sub_8041EC8();
    sub_8041E70(gCursorPosition.destY, gCursorPosition.currentY);
    sub_8041104();
  }
}

void sub_80446E0 (void) {
  u16 id = gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->id;
  sub_8040998();
  sub_804411C();
  switch (sub_803FCEC(id)) {
    case 0:
      gCursorPosition.unk4 = 0;
      gUnk2024260.id = id;
      gUnk2024260.unk2 = gCursorPosition.currentY;
      gUnk2024260.unk3 = gCursorPosition.currentX;
      ActivateSpellEffect();
      if (gNotSure[0]->unkThree)
        sub_8040540(4);
      sub_8041104();
      ExodiaWinCondition();
      if (IsDuelOver() != TRUE)
        sub_8029820();
      break;
    case 1:
      PlayMusic(0x37);
      gCursorPosition.unk4 = 2;
      gCursorPosition.currentX = sub_804360C(gUnk2024040[2]);
      gCursorPosition.currentY = 2;
      break;
    case 2:
      PlayMusic(0x39);
      gCursorPosition.unk4 = 0;
      break;
  }
  sub_8041EC8();
  sub_8041E70(gCursorPosition.destY, gCursorPosition.currentY);
}

void sub_80447A8 (void) {
  if (gCursorPosition.currentY != 2) {
    PlayMusic(0x39);
    sub_8008220();
  }
  else if (gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->id == CARD_NONE) {
    PlayMusic(0x39);
    sub_8008220();
  }
  else if (gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isLocked) {
    PlayMusic(0x39);
    sub_8008220();
  }
  else {
    SetCardInfo(gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->id);
    if (sub_803FCBC(gCardInfo.id) == 1) {
      gUnk2024260.id = gUnk2024040[gCursorPosition.destY][gCursorPosition.destX]->id;
      gUnk2024260.unk4 = gCursorPosition.destY;
      gUnk2024260.unk5 = gCursorPosition.destX;
      gUnk2024260.unk2 = gCursorPosition.currentY;
      gUnk2024260.unk3 = gCursorPosition.currentX;
      ActivateSpellEffect();
    }
    gCursorPosition.unk4 = 0;
    sub_804411C();
    sub_8041104();
    sub_8029820();
  }
}

void sub_8044840 (void) {
  if (gCursorPosition.currentY != 1) {
    PlayMusic(0x39);
    sub_8008220();
  }
  else if (gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->id == CARD_NONE) {
    PlayMusic(0x39);
    sub_8008220();
  }
  else {
    gUnk020245A0.unk2 = gCursorPosition.destY;
    gUnk020245A0.unk3 = gCursorPosition.destX;
    gUnk020245A0.id = gUnk2024040[gCursorPosition.destY][gCursorPosition.destX]->id;
    if (sub_80586DC() != 1) {
      PlayMusic(0x37);
      gUnk2024040[gCursorPosition.destY][gCursorPosition.destX]->isDefending = FALSE;
      gUnk2024040[gCursorPosition.destY][gCursorPosition.destX]->isFaceUp = TRUE;
      gUnk2024040[gCursorPosition.destY][gCursorPosition.destX]->isLocked = TRUE;
      gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->isFaceUp = TRUE;
      sub_803F908(gCursorPosition.destX, gCursorPosition.currentX);
      sub_803F29C();
      sub_803F224();
      gCursorPosition.unk4 = 0;
      sub_804412C();
      sub_801BC00();
      sub_80410B4();
      sub_8022080();
    }
    else {
      sub_80581DC();
      gCursorPosition.unk4 = 0;
      sub_804412C();
      sub_8041104();
    }
    sub_8029820();
  }
}

void sub_8044948 (void) {
  SetCardInfo(gUnk2024040[gCursorPosition.destY][gCursorPosition.destX]->id);
  switch (sub_803FCBC(gCardInfo.id)) {
    case 2 ... 4:
      if (gCursorPosition.currentY == 3) {
        PlayMusic(0x3A);
        sub_80449D8();
        sub_803EF64();
        sub_8029820();
      }
      else {
        PlayMusic(0x39);
        sub_8008220();
      }
      break;
    default:
      if (gCursorPosition.currentY != 2) {
        PlayMusic(0x39);
        sub_8008220();
      }
      else {
        PlayMusic(0x3A);
        sub_80404F0(0);
        sub_8040540(4);
        ResetNumTributes();
        sub_80449D8();
        sub_8029820();
      }
  }
}

void sub_80449D8 (void) {
  ClearZone(gUnk2024040[gCursorPosition.destY][gCursorPosition.destX]);
  sub_80409AC(gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]);
  gCursorPosition.unk4 = 0;
  sub_804411C();
  sub_8041104();
}

void sub_8044A20 (void) {
  PlayMusic(0x37);
  sub_80421CC();
}

void sub_8044A30 (void) {
  u8 currY;
  PlayMusic(0x38);
  currY = gCursorPosition.currentY;
  gCursorPosition.unk4 = 0;
  sub_804412C();
  sub_8041EC8();
  sub_8041E70(currY, gCursorPosition.currentY);
}

void sub_8044A5C (void) {
  u8 currY;
  PlayMusic(0x38);
  currY = gCursorPosition.currentY;
  gCursorPosition.unk4 = 0;
  sub_804412C();
  sub_8041EC8();
  sub_8041E70(currY, gCursorPosition.currentY);
}

void sub_8044A88 (void) {
  u8 currY;
  PlayMusic(0x38);
  currY = gCursorPosition.currentY;
  gCursorPosition.unk4 = 0;
  sub_804412C();
  sub_8041EC8();
  sub_8041E70(currY, gCursorPosition.currentY);
}

void sub_8044AB4 (void) {
  switch (gCursorPosition.unk4) {
    case 0:
      sub_80441D0();
      break;
    case 1:
      sub_8044948();
      break;
    case 2:
      sub_80447A8();
      break;
    case 4:
      sub_8044840();
      break;
  }
}

void sub_8044AF0 (void) {
  switch (gCursorPosition.unk4) {
    case 0:
      sub_8044A20();
      break;
    case 1:
      sub_8044A30();
      break;
    case 2:
      sub_8044A5C();
      break;
    case 4:
      sub_8044A88();
      break;
  }
}
u16 sub_8044B68(void);
void sub_8044B2C (void) {
  u8 r4;
  PlayMusic(0x37);
  sub_8044D00();
  r4 = 1;
  while (r4) {
    switch (sub_8044B68()) {
      case 2:
        r4 = 0;
        break;
      case 0 ... 1:
        break;
      case 0x100:
        r4 = 0;
        break;
    }
    sub_8008220();
  }
  PlayMusic(0x38);
}

u16 sub_8044B68 (void) {
  if (gUnk2020DFC & 0x100)
    return 0x100;
  if (gUnk2020DFC & 2)
    return 2;
  return 0;
}

void sub_8044B90 (void) {
  const u8 arr[] = {0x10, 0x3C, 0x68, 0x94, 0xC0};
}*/

/*
extern u8 g8E0D81D[];
extern u8 g8E0D820[];
extern u8 g8E0D823[];

__attribute__((section("sub_80421CC")))
void sub_80421CC (void) {
  u8 r4 = 0;
  InitBMenu(0);
  while (1) {
    if (g2020DF4 & 0x40) {
      PlayMusic(0x36);
      sub_80428EC(g8E0D81A[r4]);
      sub_8008220();
      sub_8041014();
    }
    else if (g2020DF4 & 0x80) {
      PlayMusic(0x36);
      sub_80428EC(g8E0D81D[r4]);
      sub_8008220();
      sub_8041014();
    }
    else if (g2020DF4 & 0x10) {
      PlayMusic(0x36);
      sub_80428EC(g8E0D820[r4]);
      sub_8008220();
      sub_8041014();
    }
    else if (g2020DF4 & 0x20) {
      PlayMusic(0x36);
      sub_80428EC(g8E0D823[r4]);
      sub_8008220();
      sub_8041014();
    }
    else if (gUnk2020DFC & 1) {
      switch (r4) {
        case 0:
          if (sub_8044074(gCursorPosition.currentY, gCursorPosition.currentX) == 1
           && sub_803FCBC(gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->id) {
            PlayMusic(0x37);
            gStatMod.id = gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]->id;
            gStatMod.field = gDuel.field;
            gStatMod.stage = sub_804069C(gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]);
            SetFinalStat(&gStatMod);
            sub_801F6B0();
            sub_80410B4();
          }
          else {

          }
          break;
        case 1:
          PlayMusic(0x37);
          g20240E0[]
      }
    }
  }

}

void sub_80452D4 (u8 val) {
  gUnk20241FC = val;
}

u16 sub_80452E0 (u8 player) {
  u16 card = gDuel.notSure[player].graveyard;
  gDuel.notSure[player].graveyard = CARD_NONE;
  return card;
}

void sub_80452F8 (u16 *zone, u16 card) {
  if (sub_803FCBC(card) == 1)
    *zone = card;
}

void sub_8045314 (struct DuelCard *zone, u8 player) {
  sub_80452F8(&gDuel.notSure[player].graveyard, zone->id);
  ClearZone(zone);
}

void ClearZoneAndSendMonToGraveyard (struct DuelCard *zone, u8 player) {
  sub_80452F8(gNotSure[player], zone->id);
  ClearZone(zone);
}

u16 sub_804535C (u8 player) {
  u16 card = gNotSure[player]->graveyard;
  gNotSure[player]->graveyard = CARD_NONE;
  return card;
}

*/
