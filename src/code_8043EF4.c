#include "global.h"
#include "duel.h"
#include "card.h"
#include "constants/card_ids.h"

void sub_8043EF4 (void) {
  gCursorPosition.currentX = 4 - gCursorPosition.currentX;
  switch (gCursorPosition.currentY) {
    case 0:
      gCursorPosition.currentY = 3;
      break;
    case 1:
      gCursorPosition.currentY = 2;
      break;
    case 2:
      gCursorPosition.currentY = 1;
      break;
    case 3:
      gCursorPosition.currentY = 0;
      break;
  }

  gCursorPosition.destX = 4 - gCursorPosition.destX;
  switch (gCursorPosition.destY) {
    case 0:
      gCursorPosition.destY = 3;
      break;
    case 1:
      gCursorPosition.destY = 2;
      break;
    case 2:
      gCursorPosition.destY = 1;
      break;
    case 3:
      gCursorPosition.destY = 0;
      break;
  }
}

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
extern u8 g8E0D95C[];


u16 sub_8043FFC (u8 arg0) {
  return sub_80575E0(gCursorPosition.currentX, gCursorPosition.currentY) + g8E0D954[arg0];
}

u8 sub_804402C (u8 arg0) {
  return sub_8057600(gCursorPosition.currentX, gCursorPosition.currentY) + g8E0D958[arg0];
}

// TODO/UB?: doesn't return a value; only way to match?
int sub_804405C (void) {
  gCursorPosition.unk4 = 0;
  gCursorPosition.currentX = 0;
  gCursorPosition.currentY = 4;
  gCursorPosition.destX = 0;
  gCursorPosition.destY = 4;
}

// doesn't return a value if y > 4; only way to match?
u32 sub_8044074 (u8 y, u8 x) {
  switch (y) {
    case 0:
    case 1:
      return !!gUnk2024040[y][x]->isFaceUp;
    case 2:
    case 3:
    case 4:
      return 1;
  }
}

// doesn't return a value if y > 4; only way to match?
u32 sub_80440B4 (u8 y, u8 x) {
  if (gUnk2024040[y][x]->id == CARD_NONE)
    return 1;
  switch (y) {
    case 0:
    case 1:
    case 4:
      return 1;
    case 2:
    case 3:
      return !!gUnk2024040[y][x]->isFaceUp;
  }
}

void sub_804411C (void) {
  gCursorPosition.destX = gCursorPosition.currentX;
  gCursorPosition.destY = gCursorPosition.currentY;
}

void sub_804412C (void) {
  gCursorPosition.currentX = gCursorPosition.destX;
  gCursorPosition.currentY = gCursorPosition.destY;
}

void sub_804413C (void) {
  gCursorPosition.unk5 = 0;
}

void sub_8044148 (void) {
  gCursorPosition.unk5 = g8E0D95C[gCursorPosition.unk5];
}

void sub_8044160 (u8 arg0) {
  switch (arg0) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 16:
    case 17:
      gCursorPosition.currentY = gCursorPosition.destY;
      gCursorPosition.currentX = gCursorPosition.destX;
      break;
    case 0:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
      break;
  }
}


u8 sub_80453D8(u16);
void sub_8044320 (void);
void sub_80446E0 (void);
void sub_8041240 (u8);
void sub_80442AC (void);
void sub_8040998 (struct DuelCard *zone);
void sub_80409AC (struct DuelCard *zone);
void sub_8041EC8 (void);
void sub_8041E70 (u8, u8);
void ExodiaWinCondition (void);
void IncNumTributes (void);
u32 sub_80429A4 (void);
void sub_8044570 (void);
void sub_8041104 (void);
void sub_8029820 (void);
void sub_801BC00 (void);
void sub_80410B4 (void);
void sub_80581DC (void);
s8 sub_804363C (struct DuelCard** zonePtr);
s8 sub_804360C (struct DuelCard** zonePtr);
void sub_80449D8 (void);
void WinConditionFINAL (void);
u16 sub_8044B68(void);
void sub_80421CC (void);
void sub_8044D00 (void);

extern u16 gUnk2020DFC;

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
  if (!sub_8025534(turn) || gNotSure[0]->sorlTurns) {
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
    }
    else {
      PlayMusic(0x42);
      sub_80581DC();
      gCursorPosition.unk4 = 0;
    }
    sub_8029820();
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
  sub_8040998(gUnk2024040[gCursorPosition.currentY][gCursorPosition.currentX]);
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
    case 2:
    case 3:
    case 4:
      if (gCursorPosition.currentY == 3) {
        PlayMusic(0x3A);
        sub_80449D8();
        WinConditionFINAL();
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
