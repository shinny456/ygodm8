#include "global.h"
#include "duel.h"

extern u8 g2021DB0[]; //struct of bytes?
void sub_8024A28 (u8 *);
void sub_8024A74 (u8 *);
void sub_8024ADC (u8 *);
void sub_8024ECC (u8 *);
int sub_8056208 (void);
void LinkDuelMenu (void);
void TradeMenu (void);
u16 sub_8024668 (void);
void sub_8024750 (u8 *);
void sub_80247DC (u8 *);
void sub_8024868 (u8 *);
void sub_8024978 (u8 *);
void sub_80246D0 (u8 *);
void sub_8024DF8 (void);
void sub_8035020 (u16);
void sub_802618C (void);
void sub_8024A44 (u8 *);
void sub_8024A94 (u8 *);
void sub_80249C8 (u8 *);
void sub_8024F40 (u8 *);
void sub_8024AB8 (u8 *);
void sub_8024F6C (u8 *);
void sub_8024FB8 (u8 *);
void sub_8025000 (u8 *);
void sub_8024A34 (u8 *);
void sub_8024A54 (u8 *);
void sub_8024A64 (u8 *);
void sub_8024B54 (u8 *);
void sub_8024B64 (u8 *);
void sub_8024B74 (u8 *);
void sub_8024B84 (u8 *);
void sub_802489C (u8 *);
void sub_80248D0 (u8 *);
void sub_802491C (u8 *);
void sub_8008220 (void);
void sub_801FB50 (u8 *, u8);
void sub_80260E0 (void);
void sub_8025048 (); //takes a u8 *?
void sub_8025108 (); //takes a u8 *?

extern u8 g2021C8C[]; //change type?
extern u16 gUnk2020DFC;
extern u16 gUnk2021DCC;


void MainMenu (void) {
  PlayMusic(0x2F);
  sub_8024A28(g2021DB0);
  sub_8024A74(g2021DB0);
  sub_8024ADC(g2021DB0);
  sub_8024ECC(g2021DB0);
  while (1) {
    sub_8056208();
    if (g2021DB0[0] == 1) break;
    if (g2021DB0[0] == 3) {
      sub_8024DF8();
      LinkDuelMenu();
      PlayMusic(0x2F);
      g2021DB0[0] = 0;
      sub_8024A74(g2021DB0);
      sub_8024ADC(g2021DB0);
      sub_8024ECC(g2021DB0);
    }
    if (g2021DB0[0] == 4) {
      sub_8024DF8();
      TradeMenu();
      PlayMusic(0x2F);
      g2021DB0[0] = 0;
      sub_8024A74(g2021DB0);
      sub_8024ADC(g2021DB0);
      sub_8024ECC(g2021DB0);
    }
    switch (sub_8024668()) {
      case 0x40: sub_8024750(g2021DB0); break;
      case 0x80: sub_80247DC(g2021DB0); break;
      case 0x1: sub_8024868(g2021DB0); break;
      case 0x2: sub_8024978(g2021DB0); break;
      default: sub_80246D0(g2021DB0); break;
    }
  }
  sub_8035020(1);
  sub_8024DF8();
}

u16 sub_8024668 (void) {
  sub_802618C();
  if (gUnk2020DFC & 1) return 1;
  if (gUnk2020DFC & 2) return 2;
  if (gUnk2021DCC & 0x40) return 0x40;
  if (gUnk2021DCC & 0x80) return 0x80;
  if (gUnk2021DCC & 0x20) return 0x20;
  if (gUnk2021DCC & 0x10) return 0x10;
  return 0;
}

void sub_80246D0 (u8 *arg0) {
  switch (*arg0) {
    case 0:
      sub_8024A94(g2021DB0);
      sub_80249C8(g2021DB0);
      sub_8024F40(g2021DB0);
      break;
    case 2:
      sub_8024AB8(g2021DB0);
      sub_8024F6C(arg0);
      break;
    case 6:
      sub_8024AB8(g2021DB0);
      sub_8024FB8(arg0);
      break;
    case 7:
      sub_8024AB8(g2021DB0);
      sub_8025000(arg0);
      break;
    default:
    sub_8008220();
    break;
  }
}

void sub_8024750 (u8 *arg0) {
  switch (*arg0) {
    case 0:
      sub_8024A34(arg0);
      sub_8024A94(arg0);
      sub_80249C8(g2021DB0);
      PlayMusic(0x36);
      sub_8024F40(arg0);
      break;
    case 2:
      sub_8024A54(arg0);
      PlayMusic(0x36);
      sub_8024F6C(arg0);
      break;
    case 6:
      sub_8024B54(arg0);
      PlayMusic(0x36);
      sub_8024FB8(arg0);
      break;
    case 7:
      sub_8024B74(arg0);
      PlayMusic(0x36);
      sub_8025000(arg0);
      break;
    default:
    sub_8008220();
    break;
  }
}

void sub_80247DC (u8 *arg0) {
  switch (*arg0) {
    case 0:
      sub_8024A44(arg0);
      sub_8024A94(arg0);
      sub_80249C8(g2021DB0);
      PlayMusic(0x36);
      sub_8024F40(arg0);
      break;
    case 2:
      sub_8024A64(arg0);
      PlayMusic(0x36);
      sub_8024F6C(arg0);
      break;
    case 6:
      sub_8024B64(arg0);
      PlayMusic(0x36);
      sub_8024FB8(arg0);
      break;
    case 7:
      sub_8024B84(arg0);
      PlayMusic(0x36);
      sub_8025000(arg0);
      break;
    default:
    sub_8008220();
    break;
  }
}

void sub_8024868 (u8 *arg0) {
  switch (*arg0) {
    case 0:
      sub_802489C(arg0);
      break;
    case 2:
      sub_80248D0(arg0);
      break;
    case 6:
    case 7:
      sub_802491C(arg0);
      break;
    default:
    sub_8008220();
    break;
  }
}

void sub_802489C (u8 *arg0) {
  switch (arg0[1]) {
    case 1:
      *arg0 = 1;
      PlayMusic(0x37);
      sub_8008220();
      break;
    case 2:
      *arg0 = 3;
      PlayMusic(0x37);
      sub_8008220();
      break;
    case 3:
      *arg0 = 4;
      PlayMusic(0x37);
      sub_8008220();
      break;
    case 0:
    default:
      sub_8008220();
      break;
  }
}

void sub_80248D0 (u8 *arg0) {
  switch (arg0[1]) {
    default:
      sub_8008220();
      break;
    case 0:
      sub_801FB50(g2021C8C, 1);
      sub_80260E0();
      *arg0 = 1;
      PlayMusic(0x37);
      sub_8008220();
      break;
    case 1:
      arg0[1] = *arg0 = 0;
      PlayMusic(0x38);
      sub_8025048();
      break;
  }
}

void sub_802491C (u8 *arg0) {
  switch (arg0[1]) {
    case 0:
      sub_801FB50(g2021C8C, 1);
      *arg0 = 1;
      PlayMusic(0x37);
      sub_8008220();
      break;
    case 1:
      sub_801FB50(g2021C8C, 2);
      *arg0 = 1;
      PlayMusic(0x37);
      sub_8008220();
      break;
    case 2:
      sub_801FB50(g2021C8C, 3);
      *arg0 = 1;
      PlayMusic(0x37);
      sub_8008220();
      break;
    default:
      sub_8008220();
      break;
  }
}

void sub_8024978 (u8 *arg0) {
  switch (*arg0) {
    case 6:
    case 7:
      arg0[1] = *arg0 = 0;
      sub_8024A74(arg0);
      PlayMusic(0x38);
      sub_8025108();
      break;
    case 2:
      arg0[1] = *arg0 = 0;
      sub_8024A74(arg0);
      PlayMusic(0x38);
      sub_8025048();
      break;
    default:
      sub_8008220();
      break;
  }
}
