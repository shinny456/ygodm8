#include "global.h"

//TODO: rename file to card_sort.c; are some of these funcs used elsewhere (not just trunk)?
//macroize these functions? they pretty much have the same structure


struct Fooo {
  unsigned short unk0;
  unsigned short unk2;
};

struct Unk8E0CC24 {
  unsigned char unk0[0x80];
  unsigned unk80;
} extern * g8E0CC24;


struct Unk8E0CC20 {
  unsigned short unk0;
  unsigned long long unk4;
} extern * g8E0CC20;

void sub_8034DE8 (void);
void sub_8034D90 (struct Fooo*);
void sub_8034DC4 (struct Fooo*);

//sb = spC =&fooo
//sp18 = fooo.unk0
//r8 = g8E0CC20
//ip =
void sub_8032848 (void) {
  struct Unk8E0CC20 sp;
  struct Fooo fooo;
  struct Fooo fooo2;
  if (gUnk2022EB0.cardCount < 2)
    return;
  sub_8034DE8();
  fooo.unk0 = 0;
  fooo.unk2 = gUnk2022EB0.cardCount - 1;
  sub_8034D90(&fooo);
  while (g8E0CC24->unk80) {
    unsigned long long r45;
    unsigned short r6, sp18;
    sub_8034DC4(&fooo);
    sp18 = fooo.unk0;
    r6 = fooo.unk2;
    r45 = g8E0CC20[(sp18 + r6) / 2].unk4;
    while (1) {
      while (g8E0CC20[sp18].unk4 > r45)
        sp18++;
      while (r45 > g8E0CC20[r6].unk4)
        r6--;
      if (sp18 >= r6)
        break;
      sp = g8E0CC20[sp18];
      g8E0CC20[sp18] = g8E0CC20[r6];
      g8E0CC20[r6] = sp;
      sp18++;
      r6--;
    }
    if (r6 + 1 < fooo.unk2) {
      fooo2.unk0 = r6 + 1;
      fooo2.unk2 = fooo.unk2;
      sub_8034D90(&fooo2);
    }
    if (fooo.unk0 < sp18 - 1) {
      fooo2.unk0 = fooo.unk0;
      fooo2.unk2 = sp18 - 1;
      sub_8034D90(&fooo2);
    }
  }
}

void sub_80329C8 (void) {
  unsigned i;
  for (i = 0; i < gUnk2022EB0.cardCount; i++) {
    g8E0CC20[i].unk0 = gUnk2022EB0.cards[i];
    g8E0CC20[i].unk4 = 800 - gUnk2022EB0.cards[i];
    if (gTrunkCardQty[gUnk2022EB0.cards[i]])
      g8E0CC20[i].unk4 += 800;
  }
}

//card shop buy sort by number
void sub_8032A50 (void) {
  unsigned i;
  for (i = 0; i < gUnk2022EB0.cardCount; i++) {
    g8E0CC20[i].unk0 = gUnk2022EB0.cards[i];
    g8E0CC20[i].unk4 = 800 - gUnk2022EB0.cards[i];
    if (gShopTempCardQty[gUnk2022EB0.cards[i]])
      g8E0CC20[i].unk4 |= 0x1000000000000000;
  }
}

//card shop sell sort by number
void sub_8032AD0 (void) {
  unsigned i;
  for (i = 0; i < gUnk2022EB0.cardCount; i++) {
    g8E0CC20[i].unk0 = gUnk2022EB0.cards[i];
    g8E0CC20[i].unk4 = 800 - gUnk2022EB0.cards[i];
    if (gPlayerTempCardQty[gUnk2022EB0.cards[i]])
      g8E0CC20[i].unk4 |= 0x1000000000000000;
  }
}

void sub_8032B50 (void) {
  unsigned i;
  for (i = 0; i < gUnk2022EB0.cardCount; i++) {
    g8E0CC20[i].unk0 = gUnk2022EB0.cards[i];
    g8E0CC20[i].unk4 = 800 - gUnk2022EB0.cards[i];
    if (gTotalCardQty[gUnk2022EB0.cards[i]])
      g8E0CC20[i].unk4 += 800;
  }
}

void sub_8032BD8 (void) {
  unsigned i;
  for (i = 0; i < gUnk2022EB0.cardCount; i++) {
    g8E0CC20[i].unk0 = gUnk2022EB0.cards[i];
    g8E0CC20[i].unk4 = 800 - g80D0444[gLanguage][gUnk2022EB0.cards[i]];
    if (gTrunkCardQty[gUnk2022EB0.cards[i]])
      g8E0CC20[i].unk4 += 800;
  }
}

void sub_8032C88 (void) {
  unsigned i;
  for (i = 0; i < gUnk2022EB0.cardCount; i++) {
    g8E0CC20[i].unk0 = gUnk2022EB0.cards[i];
    g8E0CC20[i].unk4 = 800 - g80D0444[gLanguage][gUnk2022EB0.cards[i]];
    if (gShopTempCardQty[gUnk2022EB0.cards[i]])
      g8E0CC20[i].unk4 += 800;
  }
}

void sub_8032D38 (void) {
  unsigned i;
  for (i = 0; i < gUnk2022EB0.cardCount; i++) {
    g8E0CC20[i].unk0 = gUnk2022EB0.cards[i];
    g8E0CC20[i].unk4 = 800 - g80D0444[gLanguage][gUnk2022EB0.cards[i]];
    if (gPlayerTempCardQty[gUnk2022EB0.cards[i]])
      g8E0CC20[i].unk4 += 800;
  }
}

void sub_8032DE8 (void) {
  unsigned i;
  for (i = 0; i < gUnk2022EB0.cardCount; i++) {
    g8E0CC20[i].unk0 = gUnk2022EB0.cards[i];
    g8E0CC20[i].unk4 = 800 - g80D0444[gLanguage][gUnk2022EB0.cards[i]];
    if (gTotalCardQty[gUnk2022EB0.cards[i]])
      g8E0CC20[i].unk4 += 800;
  }
}
/*
void sub_8032E98 (void) {
  unsigned i;
  for (i = 0; i < gUnk2022EB0.unk8; i++) {
    int temp;
    g8E0CC20[i].unk0 = gUnk2022EB0.unk0[i];
    temp = (gCardAtks[g8E0CC20[i].unk0] + 1 & 0xFFFF) * 800 + 800;
    g8E0CC20[i].unk4 = temp - g8E0CC20[i].unk0;
    if (gTrunkCardQty[g8E0CC20[i].unk0])
      g8E0CC20[i].unk4 |= 0x1000000000000000;
  }
}
*/

