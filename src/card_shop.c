#include "global.h"

struct {
  u16* unk0[5][7];
  u16 unk8C[5][7];
  u16 unkD2[806];
  s16 unk71E;
  s16 unk720;
  s8 unk722;
  s8 unk723;
  u8 unk724;
  u8 unk725;
  u8 unk726;
} extern sCardShop;

static int ProcessInput (void);
static void sub_802C14C (void);
static void sub_802C1D4 (void);
static void sub_802C2A0 (void);
static void sub_802C318 (void);
static void sub_802C390 (void);
static void sub_802C408 (void);
static void sub_802C480 (void);
static void sub_802C4F8 (void);
static unsigned char IsSelectedCardUnbuyable (void);

static void sub_802C6FC (void);
static void sub_802C788 (void);
static void sub_802C804 (void);
static void sub_802C880 (void);
static void sub_802C8FC (void);
static void sub_802C978 (void);
static void sub_802C9F8 (void);
static unsigned char IsSelectedCardUnsellable (void);
static void sub_802CABC (void);
static void sub_802CD7C (void);
static void sub_802CDA4 (void);
static void sub_802CDCC (void);
static void sub_802CE04 (void);
static void sub_802CE74 (void);
static void sub_802CEE0 (int);
static void sub_802CF58 (void);
static void sub_802CFB4 (void);
static void sub_802D0EC (void);
static void sub_802D130 (void);
static void sub_802D174 (void);
static void sub_802D210 (u16, u8);
static unsigned sub_802D250 (u16, u8);
static unsigned sub_802D274 (u16, u8);
static void sub_802D294 (void);
static void sub_802D2D4 (void);
static void sub_802D3B8 (void);
static void sub_802D45C (void);
static void sub_802D4AC (void);
static void sub_802D4FC (void);
static void sub_802D54C (void);
static void sub_802D59C (void);
static void sub_802D5D4 (void);
static void sub_802D884 (void);
static void sub_802D8AC (void);
static void sub_802D8D4 (void);
static unsigned char sub_802D9AC (u16, u8);
static unsigned char sub_802D9D0 (u16, u8);
static void sub_802DA1C (void);
static void sub_802DA8C (void);
static void sub_802DAF8 (int);
static void sub_802DBA8 (void);
static void sub_802DC0C (void);
static void sub_802DD98 (void);
static void sub_802DDD8 (void);
static void sub_802DE1C (void);
static void sub_802DE60 (void);
static void sub_802DE74 (void);
static int sub_802DE84 (int);
static void sub_802DEAC (s16);
static s16 sub_802DED4 (int);
static void sub_802DF1C (void);
static void sub_802DF88 (void);
static void sub_802DFA4 (void);
static void sub_802DFC4 (void);
static void sub_802DFE4 (void);
static void sub_802E040 (void);
static void sub_802E060 (void);
static void sub_802E080 (void);
static void sub_802E094 (void);
static void sub_802E0B4 (void);
static void sub_802E0D4 (void);
static void sub_802E0F4 (void);
static void sub_802E114 (u16, u8);
static void sub_802E154 (u16, u8);
static unsigned char sub_802E194 (u16, u8);
static unsigned sub_802E1B8 (u16, u8);
static void sub_802E1D8 (void);
static void sub_802E270 (void);
static void sub_802E868 (void);
static void sub_802EA74 (void);
static void sub_802F9E8 (void);
static void sub_802FB08 (void);
static void sub_802FBF4 (void);
static void sub_802FC14 (void);
static void sub_802FC34 (void);
static void sub_802FC50 (void);
static void sub_802FC6C (void);
static void sub_802FC88 (void);
static void sub_802FCF0 (u8);
static void sub_802FD48 (u16);
static void sub_802FD84 (u16);
static void sub_802FDC0 (void);
static void sub_802FE00 (void);
static void sub_802FE68 (void);
static void sub_802FE84 (int);
static void sub_802FF14 (u8*, u16);
static void sub_802FF4C (u8*, u16);
static void sub_802FF78 (u8*, u16);
static void sub_802FFF0 (u8*, u16);
static void sub_8030068 (void);
static void sub_8030090 (void);
static void sub_80300F8 (void);
static void sub_803015C (void);
static void sub_80301A8 (void);
static void sub_80301F4 (void);
static void sub_8030240 (void);
static void sub_803028C (void);
static void sub_80302F0 (void);
static void sub_803030C (void);
static void sub_80303F0 (void);
static void sub_8030494 (void);
static void sub_80304E4 (void);
static void sub_8030534 (void);
static void sub_8030584 (void);
static void sub_80305D4 (void);
static void sub_803060C (void);
static void sub_8030654 (void);
static void sub_8030660 (void);
static void sub_8030678 (void);
static void sub_8030684 (void);
static void sub_8030690 (void);
static void sub_80306C0 (void);
static void sub_80306E0 (void);
static void sub_8030710 (void);
static void sub_803071C (void);
static void sub_803073C (void);
static void sub_803075C (void);
static void sub_8030760 (void);
static void sub_8030784 (void);
static void sub_80307E4 (int);
static void sub_803083C (int);
static void sub_8030898 (void);
static void sub_8030934 (void);
static void sub_803096C (int);
static void sub_80309D8 (void);
static void sub_8030A10 (void);
static void sub_8030A48 (void);
static void sub_8030AF8 (void);


extern u8 g80C9D84[];
extern u8 g80C9D90[];
extern u8 g80CA0B4[][5];
extern u8 g80CA0CD[];
extern u8 g80CA0D2[];
extern u8 g80CA0D7[];
extern u8 g80CA0E1[];
extern u8 g80CA0E4[];
extern u8 g80CA0E7[];
extern u8 g80CA0F2[];
extern u8 g80CA0FD[];
extern u8 g80CA108[];
extern u16 g80CA114[][30];
extern u16 g80CA5C4[][30];
extern u16 g80CAA74[][30];
extern u16 g80CAF24[][30];
extern u16 g80CB3D4[][30];
extern u16 g80CB884[][30];
extern u8 g80CC0F4[];
extern u32 g80CC4F4[];
extern u16 g80CCC90[];
extern u16 g80CCCF0[][30];
extern u16 g80CD1A0[][16];
extern u16 g80CD1E0[];
extern u16 g80CD200[][32];
extern u16 g80CD280[];
extern u16 g80CD2A0[][64];
extern u16 g80CD4A0[];
extern u16 g80CD4C0[][64];
extern u8 g80CD6C0[];
extern u8 g80CD778[];
extern u8 g80CD830[];
extern u8 g80CDA60[];
extern u8 g80CDC28[];
extern u8 g80CDC50[];
extern u8 g80CDCF0[];
extern u8 g80CDD78[];
extern u8 g80CDE10[];
extern u8 g80CDE28[];
extern u16 g80CDE5A[]; //cursor to sprite Y coordinate
extern u16 g80CDE64[]; //cursor to sprite X coordinate
extern u8 g80CDE72[][2]; //u16?
extern u16 g80CDE7C[];
extern u8 g80CDE8A[][2]; //u16?
extern u16 g80CDE90[];
extern u16 g80CDE96[];
extern u8 g80CDEAC[][2]; //u16?



extern u8 g89A7ADE[][64]; //tribute tiles?
extern u8 g89A81DE[][64];
extern u8 g89A7F1E[][64];
extern u8 g89A875E[][64];
extern u8 g89A849E[][64];



extern u16 gOamBuffer[];
extern u16 gRepeatedOrNewButtons;
extern u16 gNewButtons;
extern u8 g2022120[];
extern u8 g2021DF0[];
extern u8 g2022B80[];


extern u8 gTrunkCardQty[];
void CopyStarTileToBuffer (void*);
void CopySwordTileToBuffer (void*);
void CopyShieldTileToBuffer (void*);

int sub_8045410 (u16);
void sub_800800C(u8, u8, u16, u16);
u16 sub_08007FEC(u8, u8, u16);
extern u8 g8DF811C[];
void sub_8008BF8 (void * dest);
int GetDeckCardQty (u16);
void sub_800BD34 (void);
void sub_8057418 (u16*);
extern void* g8E1168C[];
void sub_805742C (void*, u16);
void sub_8034A38 (void);
void CopyAttributeIconTilesToBuffer (u8 attribute, void * dest);
void CopyAttributeIconPalToBuffer (u8 attribute, void * dest);
void CopyTypeIconTilesToBuffer (u8 type, void * dest);
void CopyTypeIconPalToBuffer (u8 type, void * dest);
extern u8 g2021BE0[];
extern u64 gMoney;

void CardShopBuyMain (void) {
  u16 cardId;
  u32 temp;

  sub_802C1D4();
  sub_802DC0C();

  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802E1D8();
  sub_802E868();
  sub_802FD48(cardId);
  sub_802FE00();
  sub_8030090();
  sub_802F9E8();
  sub_8030068();
  sub_80081DC(sub_803060C);
  sub_8008220();
  sub_802FBF4();
  sub_80081DC(sub_8030654);
  sub_8008220();
  sub_8030760();
  temp = 1;

  while (temp) {
    switch ((u16)ProcessInput()) {
      case 0x40:
        sub_802C2A0();
        PlayMusic(0x36);
        break;
      case 0x80:
        sub_802C318();
        PlayMusic(0x36);
        break;
      case 0x20:
        sub_802C390();
        PlayMusic(0x36);
        break;
      case 0x10:
        sub_802C408();
        PlayMusic(0x36);
        break;
      case 0x140:
        sub_802C480();
        PlayMusic(0x36);
        break;
      case 0x180:
        sub_802C4F8();
        PlayMusic(0x36);
        break;
      case 1:
        if (!IsSelectedCardUnbuyable())
          sub_802D5D4();
        else {
          PlayMusic(0x39);
          sub_8008220();
        }
        break;
      case 2:
        temp = 0;
        PlayMusic(0x38);
        sub_8008220();
        break;
      case 8:
        sub_803030C();
        break;
      case 4:
        sub_802C14C();
        PlayMusic(0x37);
        break;
      default:
        sub_8008220();
        break;
    }
  }
  sub_802DD98();
  sub_802C1D4();
}

static int ProcessInput (void) {
  u16 ret = 0;

  if (gRepeatedOrNewButtons & 0x20)
    ret = 0x20;
  if (gRepeatedOrNewButtons & 0x10)
    ret = 0x10;
  if (gRepeatedOrNewButtons & 0x40) {
    u32 test = gRepeatedOrNewButtons & 0x100;
    ret = 0x40;
    if (test)
      ret = 0x140;
  }
  if (gRepeatedOrNewButtons & 0x80) {
    u32 test = gRepeatedOrNewButtons & 0x100;
    ret = 0x80;
    if (test)
      ret = 0x180;
  }
  if (gNewButtons & 1)
    ret = 1;
  if (gNewButtons & 2)
    ret = 2;
  if (gNewButtons & 4)
    ret = 4;
  if (gNewButtons & 8)
    ret = 8;

  return ret;
}

static void sub_802C14C (void) {
  u16 cardId;

  sub_802DBA8();
  sub_802DF1C();
  sub_802DF88();

  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FCF0(sCardShop.unk725);
  sub_802FD48(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  sub_80081DC(sub_8030684);
  sub_8008220();
  sub_8030898();
}

static void sub_802C1D4 (void) {
  u16 i, j;
  for (i = 0; i < 32; i++) {
    for (j = 0; j < 512; j++) {
      struct PlttData *pltt = (struct PlttData*)&g02000000.bg[j];
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

static void sub_802C2A0 (void) {
  u16 cardId;
  sub_802DDD8();

  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FD48(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  sub_80081DC(sub_8030678);
  sub_8008220();
  sub_80307E4(sub_802DE84(0));
}

static void sub_802C318 (void) {
  u16 cardId;

  sub_802DE1C();
  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FD48(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  sub_80081DC(sub_8030678);
  sub_8008220();
  sub_803083C(sub_802DE84(4));
}

static void sub_802C390 (void) {
  u16 cardId;

  sub_802DA1C();
  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FD48(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  sub_80081DC(sub_8030678);
  sub_8008220();
  sub_80307E4(sub_802DE84(0));
}

static void sub_802C408 (void) {
  u16 cardId;

  sub_802DA8C();
  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FD48(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  sub_80081DC(sub_8030678);
  sub_8008220();
  sub_80307E4(sub_802DE84(4));
}

static void sub_802C480 (void) {
  u16 cardId;

  sub_802DE60();
  sub_802DF1C();
  sub_802DF88();
  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FD48(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  sub_80081DC(sub_8030684);
  sub_8008220();
  sub_8030898();
}

static void sub_802C4F8 (void) {
  u16 cardId;

  sub_802DE74();
  sub_802DF1C();
  sub_802DF88();
  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FD48(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  sub_80081DC(sub_8030684);
  sub_8008220();
  sub_8030898();
}

static unsigned char IsSelectedCardUnbuyable (void) {
  u16 cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  if (cardId != CARD_NONE && IsGodCard(cardId) != 1)
    return 0;
  return 1;
}

/*split?
  ProcessInput returns an int here, while in the Buy function
  it returned a u16. this suggests that it might be declared implicitly,
  and therefore this would belong in a different file
*/
void CardShopSellMain (void) {
  u16 cardId;
  u32 temp;

  sub_802C1D4();
  sub_802CFB4();

  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802E1D8();
  sub_802E868();
  sub_802FD84(cardId);
  sub_802FE00();
  sub_8030090();
  sub_802F9E8();
  sub_8030068();
  sub_80081DC(sub_803060C);
  sub_8008220();
  sub_802FBF4();
  sub_80081DC(sub_8030654);
  sub_8008220();
  sub_8030760();
  temp = 1;

  while (temp) {
    switch (ProcessInput()) {
      case 0x40:
        sub_802C788();
        break;
      case 0x80:
        sub_802C804();
        break;
      case 0x20:
        sub_802C880();
        break;
      case 0x10:
        sub_802C8FC();
        break;
      case 0x140:
        sub_802C978();
        break;
      case 0x180:
        sub_802C9F8();
        break;
      case 0x200:
        sub_8008220();
        break;
      case 1:
        if (!IsSelectedCardUnsellable())
          sub_802CABC();
        else {
          PlayMusic(0x39);
          sub_8008220();
        }
        break;
      case 2:
        temp = 0;
        PlayMusic(0x38);
        sub_8008220();
        break;
      case 8:
        sub_802D2D4();
        break;
      case 4:
        sub_802C6FC();
        break;
      default:
        sub_8008220();
        break;
    }
  }
  sub_802D294();
  sub_802C1D4();
}

static void sub_802C6FC (void) {
  u16 cardId;

  sub_802CF58();
  sub_802DF1C();
  sub_802D174();

  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FCF0(sCardShop.unk725);
  sub_802FD84(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  PlayMusic(0x37);
  sub_80081DC(sub_8030684);
  sub_8008220();
  sub_8030898();
}

static void sub_802C788 (void) {
  u16 cardId;

  sub_802D0EC();
  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FD84(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  sub_80081DC(sub_8030678);
  sub_8008220();
  sub_80307E4(sub_802DE84(0));
  PlayMusic(0x36);
}

static void sub_802C804 (void) {
  u16 cardId;
  sub_802D130();

  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FD84(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  sub_80081DC(sub_8030678);
  sub_8008220();
  sub_803083C(sub_802DE84(4));
  PlayMusic(0x36);
}

static void sub_802C880 (void) {
  u16 cardId;

  sub_802CE04();
  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FD84(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  sub_80081DC(sub_8030678);
  sub_8008220();
  sub_80307E4(sub_802DE84(0));
  PlayMusic(0x36);
}

static void sub_802C8FC (void) {
  u16 cardId;

  sub_802CE74();
  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FD84(cardId);
  sub_802FB08();
  sub_80300F8();
  sub_803028C();
  sub_80081DC(sub_8030678);
  sub_8008220();
  sub_80307E4(sub_802DE84(4));
  PlayMusic(0x36);
}

static void sub_802C978 (void) {
  u16 cardId;

  sub_802DE60();
  sub_802DF1C();
  sub_802D174();

  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FD84(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  PlayMusic(0x36);
  sub_80081DC(sub_8030684);
  sub_8008220();
  sub_8030898();
}

static void sub_802C9F8 (void) {
  u16 cardId;

  sub_802DE74();
  sub_802DF1C();
  sub_802D174();

  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FD84(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  PlayMusic(0x36);
  sub_80081DC(sub_8030684);
  sub_8008220();
  sub_8030898();
}

static unsigned char IsSelectedCardUnsellable (void) {
  u16 cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  if (cardId != CARD_NONE && IsGodCard(cardId) != 1)
    return 0;
  return 1;
}

static void sub_802CABC (void) {
  u32 r4;
  u16 cardId;

  sub_802E080();
  sub_802FC14();
  sub_802FC50();
  sub_803015C();
  sub_80301A8();
  sub_8030934();
  sub_80081DC(sub_8030690);
  sub_8008220();
  PlayMusic(0x37);

  r4 = 1;
  while (r4) {
    switch (ProcessInput()) {
      case 0x40:
        sub_802CD7C();
        break;
      case 0x80:
        sub_802CDA4();
        break;
      case 1:
        sub_802CDCC();
        if (sCardShop.unk726 == 2)
          r4 = 0;
        if (*sCardShop.unk0[sCardShop.unk723][sCardShop.unk722] != CARD_NONE)
          break;
        goto out;
      case 2:
        PlayMusic(0x38);
        goto out;
      default:
        sub_8008220();
        break;
    }
  }
  out:
  sub_802FBF4();
  sub_802EA74();
  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  sub_802FD84(cardId);
  sub_802FC6C();
  sub_80300F8();
  sub_80081DC(sub_80306C0);
  sub_8008220();
}

static void sub_802CBB8 (void) {
  u16 cardId;
  u64 money;

  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  if (sub_802D274(cardId, 2) == 1) {
    money = g2021AF0.unk8;
    sub_802D210(cardId, 1);
    AddMoney(money);
    sub_802E114(cardId, 1);
    PlayMusic(0x37);
  }
  else {
    PlayMusic(0x39);
    sub_802E270();
    while (!(gNewButtons & 3))
      sub_8008220();
    PlayMusic(0x38);
    sub_802FC88();
  }
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802D174();
  sub_802CEE0(sCardShop.unk723);
  sub_802FE84(sCardShop.unk723);
  sub_802EA74();
  sub_802FD84(*sCardShop.unk0[sCardShop.unk723][sCardShop.unk722]);
  sub_80081DC(sub_8030690);
  sub_8008220();
  sub_803096C(sub_802DE84(sCardShop.unk723));
}

static void sub_802CCD0 (void) {
  u16 cardId;

  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  SetCardInfo(cardId);
  PlayMusic(0x37);
  sub_801F6B0();
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FC14();
  sub_802E1D8();
  sub_802E868();
  sub_802FD84(cardId);
  sub_802FE00();
  sub_8030090();
  sub_802F9E8();
  sub_8030068();
  sub_802FB08();
  sub_802FC50();
  sub_803015C();
  sub_80301A8();
  sub_80081DC(sub_803060C);
  sub_8008220();
  sub_80081DC(sub_8030660);
  sub_8008220();
  sub_8030784();
}

static void sub_802CD7C (void) {
  sub_802E040();
  sub_803015C();
  sub_80301A8();
  sub_80081DC(sub_8030690);
  sub_8008220();
  PlayMusic(0x36);
}

static void sub_802CDA4 (void) {
  sub_802E060();
  sub_803015C();
  sub_80301A8();
  sub_80081DC(sub_8030690);
  sub_8008220();
  PlayMusic(0x36);
}

static void sub_802CDCC (void) {
  switch (sCardShop.unk726) {
    case 0:
      sub_802CBB8();
      break;
    case 1:
      sub_802CCD0();
      break;
    default:
      PlayMusic(0x37);
      sub_8008220();
      break;
  }
}

static void sub_802CE04 (void) {
  if (sCardShop.unk722 >= 1) {
    sCardShop.unk722--;
    return;
  }
  if (sCardShop.unk723 >= 2)
    sCardShop.unk723--;
  else {
    sub_802DEAC(-1);
    sub_802DFA4();
    sub_802DF1C();
    sub_802CEE0(0);
    sub_802FE84(0);
    sub_8030068();
  }
  sCardShop.unk722 = 6;
}

static void sub_802CE74 (void) {
  if (sCardShop.unk722 <= 5) {
    sCardShop.unk722++;
    return;
  }
  if (sCardShop.unk723 <= 2)
    sCardShop.unk723++;
  else {
    sub_802DEAC(1);
    sub_802DFC4();
    sub_802DF1C();
    sub_802CEE0(4);
    sub_802FE84(4);
    sub_8030068();
  }
  sCardShop.unk722 = 0;
}

static void sub_802CEE0 (int arg0) {
  u8 i;
  u8 arg0_u8 = arg0;
  s16 temp = sub_802DED4(sCardShop.unk71E + arg0_u8);
  for (i = 0; i < 7; i++) {
    u16 temp2 = sCardShop.unkD2[temp * 7 + i + 1];
    if (temp2)
      if (!g2022B80[temp2])
        *sCardShop.unk0[arg0_u8][i] = CARD_NONE;
      else
        *sCardShop.unk0[arg0_u8][i] = temp2;
    else
      *sCardShop.unk0[arg0_u8][i] = temp2;
  }
}

static void sub_802CF58 (void) {
  u8 temp;
  if (++sCardShop.unk725 > 9)
    sCardShop.unk725 = 0;
  // this part could be a macro or (static) inline func
  // sub_802D190
  temp = sCardShop.unk725;
  gUnk2022EB0.unk0 = sCardShop.unkD2 + 1;
  gUnk2022EB0.unk8 = 800;
  gUnk2022EB0.unkA = g80C9D84[temp];
  sub_8034A38();
  sub_802DFE4();
  sCardShop.unk71E = 114;
}

static void sub_802CFB4 (void) {
  u16 i;
  u8 ii;
  for (i = 0; i <= 805; i++)
    sCardShop.unkD2[i] = 0;
  for (i = 0; i <= 800; i++) {
    g2022120[i] = g2021DF0[i];
    g2022B80[i] = gTrunkCardQty[i];
  }
  sCardShop.unk726 = 0;
  sCardShop.unk71E = 114;
  sCardShop.unk720 = 115;
  sCardShop.unk724 = 4;
  sCardShop.unk725 = 0;
  sCardShop.unk722 = 0;
  sCardShop.unk723 = 1;
  sCardShop.unkD2[0] = 0;
  for (i = 1; i <= 800; i++)
    sCardShop.unkD2[i] = i;

  // sub_802D190
  gUnk2022EB0.unk0 = sCardShop.unkD2 + 1;
  gUnk2022EB0.unk8 = 800;
  gUnk2022EB0.unkA = g80C9D84[0];
  sub_8034A38();
  sub_802DFE4();
  sCardShop.unk71E = 114;
  // sub_802D190 end

  sub_802DF1C();
  //sub_802D174
  for (ii = 0; ii < 5; ii++)
    sub_802CEE0(ii);
}

// functions below inline?

static void sub_802D0EC (void) {
  if (sCardShop.unk723 >= 2) {
    sCardShop.unk723--;
    return;
  }
  sub_802DEAC(-1);
  sub_802DFA4();
  sub_802DF1C();
  sub_802CEE0(0);
  sub_802FE84(0);
  sub_8030068();
}

static void sub_802D130 (void) {
  if (sCardShop.unk723 <= 2) {
    sCardShop.unk723++;
    return;
  }
  sub_802DEAC(1);
  sub_802DFC4();
  sub_802DF1C();
  sub_802CEE0(4);
  sub_802FE84(4);
  sub_8030068();
}

static void sub_802D174 (void) {
  u8 i;
  for (i = 0; i < 5; i++)
    sub_802CEE0(i);
}

static void sub_802D190 (u8 arg0) {
  gUnk2022EB0.unk0 = sCardShop.unkD2 + 1;
  gUnk2022EB0.unk8 = 800;
  gUnk2022EB0.unkA = g80C9D84[arg0];
  sub_8034A38();
  sub_802DFE4();
  sCardShop.unk71E = 114;
}

static void sub_802D1D0 (u16 arg0, u8 arg1) {
  if (!arg0)
    return;
  if (!(u8)sub_802D250(arg0, arg1))
    g2022B80[arg0] = 250;
  else
    g2022B80[arg0] += arg1;
}

static void sub_802D210 (u16 arg0, u8 arg1) {
  if (!arg0)
    return;
  if (!(u8)sub_802D274(arg0, arg1))
    g2022B80[arg0] = 0;
  else
    g2022B80[arg0] -= arg1;
}

static unsigned sub_802D250 (u16 arg0, u8 arg1) {
  if (arg1 > 250 - g2022B80[arg0])
    return 0;
  return 1;
}

static unsigned sub_802D274 (u16 arg0, u8 arg1) {
  if (arg1 > g2022B80[arg0])
    return 0;
  return 1;
}

static void sub_802D294 (void) {
  u16 i;
  for (i = 0; i <= 800; i++) {
    g2021DF0[i] = g2022120[i];
    gTrunkCardQty[i] = g2022B80[i];
  }
}

static void sub_802D2D4 (void) {
  u32 r4;
  sCardShop.unk726 = sCardShop.unk725;
  sub_802FC14();
  sub_80302F0();
  sub_80301F4();
  sub_8030240();
  sub_80309D8();
  sub_80081DC(sub_80306E0);
  sub_8008220();
  PlayMusic(0x37);
  r4 = 1;
  while (r4) {
    switch (ProcessInput()) {
      case 0x40:
        sub_802D45C();
        PlayMusic(0x36);
        break;
      case 0x80:
        sub_802D4AC();
        PlayMusic(0x36);
        break;
      case 0x20:
        sub_802D4FC();
        PlayMusic(0x36);
        break;
      case 0x10:
        sub_802D54C();
        PlayMusic(0x36);
        break;
      case 1:
        if (sCardShop.unk726 == 10) {
          sub_802D59C();
          PlayMusic(0x37);
        }
        else {
          sCardShop.unk725 = sCardShop.unk726;
          sub_802D3B8();
        }
        return;
      case 2:
      case 8:
        sub_802D59C();
        PlayMusic(0x38);
        return;
      default:
        sub_8008220();
        break;
    }
  }
}

static void sub_802D3B8 (void) {
  u16 cardId;

  sCardShop.unk725 = sCardShop.unk726;
  sub_802D190(sCardShop.unk725);
  sub_802DF1C();
  sub_802D174();

  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  PlayMusic(0x37);
  sub_802FBF4();
  sub_802FCF0(sCardShop.unk725);
  sub_802FD84(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  sub_80300F8();
  sub_802FC6C();
  sub_80081DC(sub_803071C);
  sub_8008220();
  sub_8030A48();
}

static void sub_802D45C (void) {
  sub_802E094();
  if (sCardShop.unk726 == 10)
    sub_802FCF0(sCardShop.unk725);
  else
    sub_802FCF0(sCardShop.unk726);
  sub_80301F4();
  sub_8030240();
  sub_80081DC(sub_8030710);
  sub_8008220();
  sub_8030A10();
}

static void sub_802D4AC (void) {
  sub_802E0B4();
  if (sCardShop.unk726 == 10)
    sub_802FCF0(sCardShop.unk725);
  else
    sub_802FCF0(sCardShop.unk726);
  sub_80301F4();
  sub_8030240();
  sub_80081DC(sub_8030710);
  sub_8008220();
  sub_8030A10();
}

static void sub_802D4FC (void) {
  sub_802E0D4();
  if (sCardShop.unk726 == 10)
    sub_802FCF0(sCardShop.unk725);
  else
    sub_802FCF0(sCardShop.unk726);
  sub_80301F4();
  sub_8030240();
  sub_80081DC(sub_8030710);
  sub_8008220();
  sub_8030A10();
}

static void sub_802D54C (void) {
  sub_802E0F4();
  if (sCardShop.unk726 == 10)
    sub_802FCF0(sCardShop.unk725);
  else
    sub_802FCF0(sCardShop.unk726);
  sub_80301F4();
  sub_8030240();
  sub_80081DC(sub_8030710);
  sub_8008220();
  sub_8030A10();
}

static void sub_802D59C (void) {
  sub_802FCF0(sCardShop.unk725);
  sub_80300F8();
  sub_802FBF4();
  sub_802FC6C();
  sub_80081DC(sub_803073C);
  sub_8008220();
  sub_8030AF8();
}

static void sub_802D5D4 (void) {
  u32 r4;

  sub_802E080();
  sub_802FC14();
  sub_802FC34();
  sub_803015C();
  sub_80301A8();
  sub_8030934();
  sub_80081DC(sub_8030690);
  sub_8008220();
  PlayMusic(0x37);
  r4 = 1;
  while (r4) {
    switch (ProcessInput()) {
      case 0x40:
        sub_802D884();
        break;
      case 0x80:
        sub_802D8AC();
        break;
      case 1:
        sub_802D8D4();
        if (sCardShop.unk726 == 2)
          r4 = 0;
        if (*sCardShop.unk0[sCardShop.unk723][sCardShop.unk722] != CARD_NONE)
          break;
        goto out;
      case 2:
        PlayMusic(0x38);
        goto out;
      default:
        sub_8008220();
        break;
    }
  }
  out:
  sub_802FBF4();
  sub_802EA74();
  sub_802FD48(*sCardShop.unk0[sCardShop.unk723][sCardShop.unk722]);
  sub_802FC6C();
  sub_80300F8();
  sub_80081DC(sub_80306C0);
  sub_8008220();
}

static void sub_802D6D0 (void) {
  u16 cardId;

  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];

  if (sub_802E1B8(cardId, 1) == 1) {
    if (sub_802D250(cardId, 1) == 1) {
      u64 temp = g2021AF0.unk0;
      if (sub_8027018(temp) == 1) {
        sub_802E154(cardId, 1);
        RemoveMoney(temp);
        sub_802D1D0(cardId, 1);
        PlayMusic(0x37);
      }
      else
        PlayMusic(0x39);
    }
    else
      PlayMusic(0x39);
  }
  else
    PlayMusic(0x39);

  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802DF88();
  sub_802DAF8(sCardShop.unk723);
  sub_802FE84(sCardShop.unk723);
  sub_802EA74();
  sub_802FD48(*sCardShop.unk0[sCardShop.unk723][sCardShop.unk722]);
  sub_80081DC(sub_8030690);
  sub_8008220();
  sub_803096C(sub_802DE84(sCardShop.unk723));
}

static void sub_802D7D8 (void) {
  u16 cardId;

  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  SetCardInfo(cardId);
  PlayMusic(0x37);
  sub_801F6B0();
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  sub_802FC14();
  sub_802E1D8();
  sub_802E868();
  sub_802FD48(cardId);
  sub_802FE00();
  sub_8030090();
  sub_802F9E8();
  sub_8030068();
  sub_802FB08();
  sub_802FC34();
  sub_803015C();
  sub_80301A8();
  sub_80081DC(sub_803060C);
  sub_8008220();
  sub_80081DC(sub_8030660);
  sub_8008220();
  sub_8030784();
}

static void sub_802D884 (void) {
  sub_802E040();
  sub_803015C();
  sub_80301A8();
  sub_80081DC(sub_8030690);
  sub_8008220();
  PlayMusic(0x36);
}

static void sub_802D8AC (void) {
  sub_802E060();
  sub_803015C();
  sub_80301A8();
  sub_80081DC(sub_8030690);
  sub_8008220();
  PlayMusic(0x36);
}

static void sub_802D8D4 (void) {
  switch (sCardShop.unk726) {
    case 0:
      sub_802D6D0();
      break;
    case 1:
      sub_802D7D8();
      break;
    default:
      PlayMusic(0x37);
      sub_8008220();
      break;
  }
}

void sub_802D90C (unsigned short arg0, unsigned char arg1) {
  // this could be calling an inline func
  if ((u16)(arg0 - 1) >= 800)
    return;
  if (sub_802D9AC(arg0, arg1) == 1)
    g2021DF0[arg0] += arg1;
  else
    g2021DF0[arg0] = 250;
}

static void sub_802D95C (u16 arg0, u8 arg1) {
  // this could be calling an inline func
  if ((u16)(arg0 - 1) >= 800)
    return;
  if (sub_802D9D0(arg0, arg1) == 1)
    g2021DF0[arg0] -= arg1;
  else
    g2021DF0[arg0] = 0;
}

static unsigned char sub_802D9AC (u16 arg0, u8 arg1) {
  if (arg1 > 250 - g2021DF0[arg0])
    return 0;
  return 1;
}

static unsigned char sub_802D9D0 (u16 arg0, u8 arg1) {
  if (arg1 > g2021DF0[arg0])
    return 0;
  return 1;
}

// Init shop cards (when starting a new game)
//TODO: NewGame_ShopCards, Init?
void sub_802D9F0 (void) {
  u16 i;
  for (i = 0; i <= 800; i++)
    g2021DF0[i] = g80C9D90[i];
}

static void sub_802DA1C (void) {
  if (sCardShop.unk722 >= 1) {
    sCardShop.unk722--;
    return;
  }
  if (sCardShop.unk723 >= 2)
    sCardShop.unk723--;
  else {
    sub_802DEAC(-1);
    sub_802DFA4();
    sub_802DF1C();
    sub_802DAF8(0);
    sub_802FE84(0);
    sub_8030068();
  }
  sCardShop.unk722 = 6;
}

static void sub_802DA8C (void) {
  if (sCardShop.unk722 <= 5) {
    sCardShop.unk722++;
    return;
  }
  if (sCardShop.unk723 <= 2)
    sCardShop.unk723++;
  else {
    sub_802DEAC(1);
    sub_802DFC4();
    sub_802DF1C();
    sub_802DAF8(4);
    sub_802FE84(4);
    sub_8030068();
  }
  sCardShop.unk722 = 0;
}

/*
static void sub_802DAF8 (int arg0) {
  u8 arg0_u8 = arg0;
  s16 temp = sCardShop.unk71E + arg0_u8;
  u8 i;

  if (temp < 0)
    temp += sCardShop.unk720;
  else if (temp >= sCardShop.unk720)
    temp -= sCardShop.unk720;

  for (i = 0; i < 7; i++) {
    u16 temp2 = sCardShop.unkD2[temp * 7 + i + 1];
    if (temp2)
      if (!g2022120[temp2])
        *sCardShop.unk0[arg0_u8][i] = CARD_NONE;
      else
        *sCardShop.unk0[arg0_u8][i] = temp2;
    else
      *sCardShop.unk0[arg0_u8][i] = temp2;
  }
}*/

NAKED
static void sub_802DAF8 (int arg0) {
  asm_unified("  push {r4, r5, r6, r7, lr}\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	ldr r1, _0802DB20\n\
	ldr r2, _0802DB24\n\
	adds r0, r1, r2\n\
	ldrh r0, [r0]\n\
	adds r0, r0, r5\n\
	lsls r0, r0, #0x10\n\
	asrs r3, r0, #0x10\n\
	adds r2, r3, #0\n\
	adds r7, r1, #0\n\
	cmp r2, #0\n\
	bge _0802DB28\n\
	movs r4, #0xe4\n\
	lsls r4, r4, #3\n\
	adds r0, r7, r4\n\
	ldrh r0, [r0]\n\
	adds r0, r2, r0\n\
	b _0802DB3A\n\
	.align 2, 0\n\
_0802DB20: .4byte 0x02022450\n\
_0802DB24: .4byte 0x0000071E\n\
_0802DB28:\n\
	movs r1, #0xe4\n\
	lsls r1, r1, #3\n\
	adds r0, r7, r1\n\
	ldrh r1, [r0]\n\
	movs r4, #0\n\
	ldrsh r0, [r0, r4]\n\
	cmp r2, r0\n\
	blt _0802DB3E\n\
	subs r0, r2, r1\n\
_0802DB3A:\n\
	lsls r0, r0, #0x10\n\
	lsrs r3, r0, #0x10\n\
_0802DB3E:\n\
	movs r4, #0\n\
	lsls r0, r5, #3\n\
	ldr r6, _0802DB7C\n\
	lsls r1, r3, #0x10\n\
	asrs r1, r1, #0x10\n\
	lsls r2, r1, #3\n\
	subs r2, r2, r1\n\
	mov ip, r2\n\
	subs r0, r0, r5\n\
	lsls r2, r0, #2\n\
_0802DB52:\n\
	mov r1, ip\n\
	adds r0, r1, r4\n\
	adds r0, #1\n\
	lsls r0, r0, #1\n\
	adds r1, r6, #0\n\
	adds r1, #0xd2\n\
	adds r0, r0, r1\n\
	ldrh r1, [r0]\n\
	cmp r1, #0\n\
	beq _0802DB8C\n\
	ldr r0, _0802DB80\n\
	adds r0, r1, r0\n\
	ldrb r3, [r0]\n\
	cmp r3, #0\n\
	bne _0802DB84\n\
	lsls r0, r4, #2\n\
	adds r0, r0, r2\n\
	adds r0, r0, r6\n\
	ldr r0, [r0]\n\
	strh r3, [r0]\n\
	b _0802DB96\n\
	.align 2, 0\n\
_0802DB7C: .4byte 0x02022450\n\
_0802DB80: .4byte 0x02022120\n\
_0802DB84:\n\
	lsls r0, r4, #2\n\
	adds r0, r0, r2\n\
	adds r0, r0, r6\n\
	b _0802DB92\n\
_0802DB8C:\n\
	lsls r0, r4, #2\n\
	adds r0, r0, r2\n\
	adds r0, r0, r7\n\
_0802DB92:\n\
	ldr r0, [r0]\n\
	strh r1, [r0]\n\
_0802DB96:\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #6\n\
	bls _0802DB52\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0");
}

static void sub_802DBA8 (void) {
  u8 temp;
  if (++sCardShop.unk725 > 9)
    sCardShop.unk725 = 0;
  // this part could be a macro or (static) inline func
  // sub_802DFF8
  temp = sCardShop.unk725;
  gUnk2022EB0.unk0 = sCardShop.unkD2 + 1;
  gUnk2022EB0.unk8 = 800;
  gUnk2022EB0.unkA = g80CA0D7[temp];
  sub_8034A38();
  //sub_802DFE4();
  sCardShop.unk724 = 4;
  sCardShop.unk71E = 114;
}

static inline void sub_802DF1C_inline (void) {
  u8 i, j;
  for (i = 0; i < 5; i++) {
    // sub_802DE84 inline?
    u8 temp = g80CA0B4[sCardShop.unk724][i];
    for (j = 0; j < 7; j++)
      sCardShop.unk0[i][j] = &sCardShop.unk8C[temp][j];
  }
}

static void sub_802DC0C (void) {
  u16 i;
  u8 ii;
  for (i = 0; i <= 805; i++)
    sCardShop.unkD2[i] = 0;
  for (i = 0; i <= 800; i++) {
    g2022120[i] = g2021DF0[i];
    g2022B80[i] = gTrunkCardQty[i];
  }
  sCardShop.unk726 = 0;
  sCardShop.unk71E = 114;
  sCardShop.unk720 = 115;
  sCardShop.unk724 = 4;
  sCardShop.unk725 = 0;
  sCardShop.unk722 = 0;
  sCardShop.unk723 = 1;
  sCardShop.unkD2[0] = 0;
  for (i = 1; i <= 800; i++)
    sCardShop.unkD2[i] = i;

  // sub_802DFF8
  gUnk2022EB0.unk0 = sCardShop.unkD2 + 1;
  gUnk2022EB0.unk8 = 800;
  gUnk2022EB0.unkA = g80CA0D7[0];
  sub_8034A38();
  //sub_802DFE4();
  sCardShop.unk724 = 4;
  sCardShop.unk71E = 114;
  // sub_802DFF8 end

  sub_802DF1C_inline();

  //sub_802DF88
  for (ii = 0; ii < 5; ii++)
    sub_802DAF8(ii);
}

static void sub_802DD98 (void) {
  u16 i;
  for (i = 0; i <= 800; i++) {
    g2021DF0[i] = g2022120[i];
    gTrunkCardQty[i] = g2022B80[i];
  }
}

static void sub_802DDD8 (void) {
  if (sCardShop.unk723 > 1) {
    sCardShop.unk723--;
    return;
  }
  else {
    sub_802DEAC(-1);
    sub_802DFA4();
    sub_802DF1C();
    sub_802DAF8(0);
    sub_802FE84(0);
    sub_8030068();
  }
}

static void sub_802DE1C (void) {
  if (sCardShop.unk723 <= 2) {
    sCardShop.unk723++;
    return;
  }
  else {
    sub_802DEAC(1);
    sub_802DFC4();
    sub_802DF1C();
    sub_802DAF8(4);
    sub_802FE84(4);
    sub_8030068();
  }
}

static void sub_802DE60 (void) {
  sub_802DEAC(-10);
  sub_802DFE4();
}

static void sub_802DE74 (void) {
  sub_802DEAC(10);
  sub_802DFE4();
}

static int sub_802DE84 (int arg0) {
  u8 arg0_u8 = arg0;
  return g80CA0B4[sCardShop.unk724][arg0_u8];
}

static void sub_802DEAC (s16 arg0) {
  sCardShop.unk71E = sub_802DED4((s16)(sCardShop.unk71E + arg0));
}

static s16 sub_802DED4 (int arg0) {
  s16 arg0_s16 = arg0;
  if (arg0_s16 < 0)
    arg0_s16 += sCardShop.unk720;
  else if (arg0_s16 >= sCardShop.unk720)
    arg0_s16 -= sCardShop.unk720;
  return arg0_s16;
}

static void sub_802DF1C (void) {
  u8 i, j;
  for (i = 0; i < 5; i++) {
    // sub_802DE84 inline?
    u8 temp = g80CA0B4[sCardShop.unk724][i];
    for (j = 0; j < 7; j++)
      sCardShop.unk0[i][j] = &sCardShop.unk8C[temp][j];
  }
}

static void sub_802DF88 (void) {
  u8 i;
  for (i = 0; i < 5; i++)
    sub_802DAF8(i);
}

static void sub_802DFA4 (void) {
  sCardShop.unk724 = g80CA0CD[sCardShop.unk724];
}

static void sub_802DFC4 (void) {
  sCardShop.unk724 = g80CA0D2[sCardShop.unk724];
}

static void sub_802DFE4 (void) {
  sCardShop.unk724 = 4;
}

static void sub_802DFF8 (u8 arg0) {
  gUnk2022EB0.unk0 = sCardShop.unkD2 + 1;
  gUnk2022EB0.unk8 = 800;
  gUnk2022EB0.unkA = g80CA0D7[arg0];
  sub_8034A38();
  //sub_802DFE4();
  sCardShop.unk724 = 4;
  sCardShop.unk71E = 114;
}

static void sub_802E040 (void) {
  sCardShop.unk726 = g80CA0E1[sCardShop.unk726];
}

static void sub_802E060 (void) {
  sCardShop.unk726 = g80CA0E4[sCardShop.unk726];
}

static void sub_802E080 (void) {
  sCardShop.unk726 = 0;
}

static void sub_802E094 (void) {
  sCardShop.unk726 = g80CA0E7[sCardShop.unk726];
}

static void sub_802E0B4 (void) {
  sCardShop.unk726 = g80CA0F2[sCardShop.unk726];
}

static void sub_802E0D4 (void) {
  sCardShop.unk726 = g80CA0FD[sCardShop.unk726];
}

static void sub_802E0F4 (void) {
  sCardShop.unk726 = g80CA108[sCardShop.unk726];
}

static void sub_802E114 (u16 arg0, u8 arg1) {
  if (!arg0)
    return;
  if (!sub_802E194(arg0, arg1))
    g2022120[arg0] = 250;
  else
    g2022120[arg0] += arg1;
}

static void sub_802E154 (u16 arg0, u8 arg1) {
  if (!arg0)
    return;
  if (!(u8)sub_802E1B8(arg0, arg1))
    g2022120[arg0] = 0;
  else
    g2022120[arg0] -= arg1;
}

static unsigned char sub_802E194 (u16 arg0, u8 arg1) {
  if (arg1 > 250 - g2022120[arg0])
    return 0;
  return 1;
}

static unsigned sub_802E1B8 (u16 arg0, u8 arg1) {
  if (arg1 > g2022120[arg0])
    return 0;
  return 1;
}

static void sub_802E1D8 (void) {
  u8 i;

  gBG0VOFS = 0;
  gBG0HOFS = 0;
  for (i = 0; i < 20; i++)
    CpuCopy16(g80CA114[i], ((struct Sbb*)&gBgVram)->sbb14[i], 60);
  for (i = 0; i < 20; i++)
    CpuCopy16(g80CA5C4[i], ((struct Sbb*)&gBgVram)->sbb15[i], 60);
  for (i = 0; i < 20; i++)
    CpuCopy16(g80CAA74[i], ((struct Sbb*)&gBgVram)->sbb16[i], 60);
}
/*
extern struct OamData gOamBuffer[];

static void sub_802E270 (void) {
  u16* oam = (u16*)gOamBuffer;
  u32 i = 0;

  oam[4 * 4] = 0xA0;
  oam[4 * 4 + 1] = 0xF0;
  oam[4 * 4 + 2] = 0xC00;
  oam[4 * 4 + 3] = 0;

  oam[5 * 4] = 0xA0;
  oam[5 * 4 + 1] = 0xF0;
  oam[5 * 4 + 2] = 0xC00;
  oam[5 * 4 + 3] = 0;

  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x1000, g80CDA60, 0x901);

  for (i = 0; i < 20; i++)
    CpuCopy16(g80CAF24[i], ((struct Sbb*)&gBgVram)->sbb16[i], 60);

  REG_DISPCNT &= 0xFEFF;
  sub_80081DC(LoadOam);
  sub_8008220();
  LoadCharblock2();
  LoadCharblock3();
  REG_BG0CNT = 0x160C;
  REG_DISPCNT |= 0x100;
}*/

NAKED
static void sub_802E270 (void) {
  asm_unified("push {r4, r5, lr}\n\
	ldr r0, _0802E2EC\n\
	movs r4, #0\n\
	movs r3, #0xa0\n\
	strh r3, [r0, #0x20]\n\
	movs r2, #0xf0\n\
	strh r2, [r0, #0x22]\n\
	movs r1, #0xc0\n\
	lsls r1, r1, #4\n\
	strh r1, [r0, #0x24]\n\
	strh r4, [r0, #0x26]\n\
	strh r3, [r0, #0x28]\n\
	strh r2, [r0, #0x2a]\n\
	strh r1, [r0, #0x2c]\n\
	strh r4, [r0, #0x2e]\n\
	ldr r0, _0802E2F0\n\
	ldr r1, _0802E2F4\n\
	ldr r2, _0802E2F8\n\
	bl CopyStringTilesToVRAMBuffer\n\
	movs r5, #0\n\
_0802E29A:\n\
	ldr r0, _0802E2FC\n\
	adds r0, r5, r0\n\
	lsls r1, r4, #6\n\
	ldr r2, _0802E300\n\
	adds r1, r1, r2\n\
	movs r2, #0x1e\n\
	bl CpuSet\n\
	adds r5, #0x3c\n\
	adds r4, #1\n\
	cmp r4, #0x13\n\
	bls _0802E29A\n\
	movs r4, #0x80\n\
	lsls r4, r4, #0x13\n\
	ldrh r1, [r4]\n\
	ldr r0, _0802E304\n\
	ands r0, r1\n\
	strh r0, [r4]\n\
	ldr r0, _0802E308\n\
	bl sub_80081DC\n\
	bl sub_8008220\n\
	bl LoadCharblock2\n\
	bl LoadCharblock3\n\
	ldr r1, _0802E30C\n\
	ldr r2, _0802E310\n\
	adds r0, r2, #0\n\
	strh r0, [r1]\n\
	ldrh r0, [r4]\n\
	movs r2, #0x80\n\
	lsls r2, r2, #1\n\
	adds r1, r2, #0\n\
	orrs r0, r1\n\
	strh r0, [r4]\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0802E2EC: .4byte gOamBuffer\n\
_0802E2F0: .4byte 0x0200D400\n\
_0802E2F4: .4byte 0x080CDA60\n\
_0802E2F8: .4byte 0x00000901\n\
_0802E2FC: .4byte 0x080CAF24\n\
_0802E300: .4byte 0x0200B400\n\
_0802E304: .4byte 0x0000FEFF\n\
_0802E308: .4byte LoadOam\n\
_0802E30C: .4byte 0x04000008\n\
_0802E310: .4byte 0x0000160C");
}

static void sub_802E314 (void) {
  u16* ptr;
  u8 i;
  sub_800DEAC(gMoney, 0);

  ptr = ((struct Sbb*)&gBgVram)->sbb14[12] + 27;
  for (i = 0; i < 16 && g2021BE0[18 - i] != 10; i++) {
    *ptr &= 0xF000;
    *ptr |= g2021BE0[18 - i] + 0x195;
    ptr--;
  }

  // cast to BgScData?
  *ptr-- &= 0xF000;
  *ptr &= 0xF000;
  *ptr-- |= 0x194;
  *ptr &= 0xF000;
  *ptr-- |= 0x193;
  *ptr &= 0xF000;
  *ptr-- |= 0x192;
  *ptr &= 0xF000;
  *ptr-- |= 0x191;
  *ptr &= 0xF000;
  *ptr-- |= 0x190;
  *ptr &= 0xF000;
  *ptr-- |= 0x18F;

  for (i += 7; i < 20; i++)
    *ptr-- &= 0xF000;
}

static void sub_802E404 (void) {
  u16* ptr;
  u8 i;
  sub_800DEAC(g2021AF0.unk0, 0);

  ptr = ((struct Sbb*)&gBgVram)->sbb14[2] + 27;
  for (i = 0; i < 16 && g2021BE0[18 - i] != 10; i++) {
    *ptr &= 0xF000;
    *ptr |= g2021BE0[18 - i] + 0x195;
    ptr--;
  }

  *ptr-- &= 0xF000;
  *ptr &= 0xF000;
  *ptr-- |= 0x18E;
  *ptr &= 0xF000;
  *ptr-- |= 0x18D;
  *ptr &= 0xF000;
  *ptr-- |= 0x18C;
  *ptr &= 0xF000;
  *ptr-- |= 0x18B;
  *ptr &= 0xF000;
  *ptr-- |= 0x18A;
  *ptr &= 0xF000;
  *ptr-- |= 0x189;

  for (i += 7; i < 20; i++)
    *ptr-- &= 0xF000;
}

// same as above, except for g2021AF0.unk8
static void sub_802E4F4 (void) {
  u16* ptr;
  u8 i;
  sub_800DEAC(g2021AF0.unk8, 0);

  ptr = ((struct Sbb*)&gBgVram)->sbb14[2] + 27;
  for (i = 0; i < 16 && g2021BE0[18 - i] != 10; i++) {
    *ptr &= 0xF000;
    *ptr |= g2021BE0[18 - i] + 0x195;
    ptr--;
  }

  *ptr-- &= 0xF000;
  *ptr &= 0xF000;
  *ptr-- |= 0x18E;
  *ptr &= 0xF000;
  *ptr-- |= 0x18D;
  *ptr &= 0xF000;
  *ptr-- |= 0x18C;
  *ptr &= 0xF000;
  *ptr-- |= 0x18B;
  *ptr &= 0xF000;
  *ptr-- |= 0x18A;
  *ptr &= 0xF000;
  *ptr-- |= 0x189;

  for (i += 7; i < 20; i++)
    *ptr-- &= 0xF000;
}

static void sub_802E5E4 (void) {
  u32 r8;
  u64 diff;
  u16* ptr;
  u8 i;
  u64 cost, money;
  money = gMoney;
  cost = g2021AF0.unk0;

  if (cost > money) {
    r8 = 1;
    diff = cost - money;
  }
  else {
    r8 = 0;
    diff = money - cost;
  }
  sub_800DEAC(diff, 0);

  ptr = ((struct Sbb*)&gBgVram)->sbb14[4] + 27;
  for (i = 0; i < 16 && g2021BE0[18 - i] != 10; i++) {
    *ptr &= 0xF000;
    *ptr |= g2021BE0[18 - i] + 0x195;
    ptr--;
  }
  if (r8 == 1) {
    *ptr &= 0xF000;
    *ptr-- |= 0x181;
    i++;
  }

  *ptr-- &= 0xF000;
  *ptr &= 0xF000;
  *ptr-- |= 0x188;
  *ptr &= 0xF000;
  *ptr-- |= 0x187;
  *ptr &= 0xF000;
  *ptr-- |= 0x186;
  *ptr &= 0xF000;
  *ptr-- |= 0x185;
  *ptr &= 0xF000;
  *ptr-- |= 0x184;
  *ptr &= 0xF000;
  *ptr-- |= 0x183;

  for (i += 7; i < 21; i++)
    *ptr-- &= 0xF000;
}

static void sub_802E72C (void) {
  u64 temp = g2021AF0.unk8;
  u64 temp2;
  u32 r0 = 0;
  u8 i;
  u16* ptr;

  if (ExceedsMoneyLimit(temp) == 1)
    temp2 = gMoney + temp;
  else
    temp2 = 9999999999999;
  sub_800DEAC(temp2, 0);


  ptr = ((struct Sbb*)&gBgVram)->sbb14[4] + 27;
  for (i = 0; i < 16 && g2021BE0[18 - i] != 10; i++) {
    *ptr &= 0xF000;
    *ptr |= g2021BE0[18 - i] + 0x195;
    ptr--;
  }
  if (r0 == 1) {
    *ptr &= 0xF000;
    *ptr-- |= 0x181;
    i++;
  }

  *ptr-- &= 0xF000;
  *ptr &= 0xF000;
  *ptr-- |= 0x188;
  *ptr &= 0xF000;
  *ptr-- |= 0x187;
  *ptr &= 0xF000;
  *ptr-- |= 0x186;
  *ptr &= 0xF000;
  *ptr-- |= 0x185;
  *ptr &= 0xF000;
  *ptr-- |= 0x184;
  *ptr &= 0xF000;
  *ptr-- |= 0x183;

  for (i += 7; i < 21; i++)
    *ptr-- &= 0xF000;
}

static void sub_802E868 (void) {
  u8 i;
  u16 r7;

  gBG1VOFS = 3;
  gBG1HOFS = 0;
  CopyStarTileToBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x3400);
  CopySwordTileToBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x3420);
  CopyShieldTileToBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x3440);
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x2780, g80CDC28, 0x801); // Cost
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x2800, g80CDC50, 0x801);
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x2B00, g80CDCF0, 0x901);
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x3000, g80CDD78, 0x801);
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x32A0, g80CDE10, 0x1801);
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x3460, g80CDE28, 0x801);

  for (i = 0; i < 20; i++)
    CpuCopy16(g80CB3D4[i], gBgVram.sbb1F[i], 60);

  r7 = sub_08007FEC(0, 0, 0xF800);
  for (i = 0; i < 6; i++)
    sub_800800C(i + 24, 1, 0xF800, (i + 419) | r7);

  r7 = sub_08007FEC(20, 18, 0xF800) & 0xFC00;
  for (i = 0; i < 2; i++) {
    sub_800800C(i + 20, 18, 0xF800, (g8DF811C[i] + 425) | r7);
    sub_800800C(i + 20, 19, 0xF800, (g8DF811C[i] + 427) | r7);
  }

  r7 = sub_08007FEC(22, 18, 0xF800) & 0xFC00;
  for (i = 0; i < 2; i++) {
    sub_800800C(i + 22, 18, 0xF800, (g8DF811C[i] + 429) | r7);
    sub_800800C(i + 22, 19, 0xF800, (g8DF811C[i] + 431) | r7);
  }

  sub_8008BF8(&g02000000.bg[0xA0]);
  sub_802EA74();
  sub_802FCF0(sCardShop.unk725);
}

static void sub_802EA74 (void) {
  u16* ptr;
  u8 i;
  sub_800DEAC(gMoney, 0);

  ptr = gBgVram.sbb1F[1] + 23;
  for (i = 0; i < 16 && g2021BE0[18 - i] != 10; i++) {
    *ptr &= 0xF000;
    *ptr |= g2021BE0[18 - i] + 0x195;
    ptr--;
  }

  // cast to BgScData?
  *ptr-- &= 0xF000;
  *ptr &= 0xF000;
  *ptr-- |= 0x194;
  *ptr &= 0xF000;
  *ptr-- |= 0x193;
  *ptr &= 0xF000;
  *ptr-- |= 0x192;
  *ptr &= 0xF000;
  *ptr-- |= 0x191;
  *ptr &= 0xF000;
  *ptr-- |= 0x190;
  *ptr &= 0xF000;
  *ptr-- |= 0x18F;

  for (i += 7; i < 20; i++)
    *ptr-- &= 0xF000;
}

static void sub_802EB64 (void) {
  u16* ptr = gBgVram.sbb1F[2] + 29;
  u8 i = 0;
  u8 j;

  if (gCardInfo.id != CARD_NONE) {
    *ptr &= 0xF000;
    *ptr-- |= 0x1A8;
    *ptr-- |= 0x1A7;
    *ptr-- |= 0x1A6;
    *ptr-- |= 0x1A5;
    *ptr-- |= 0x1A4;
    *ptr-- |= 0x1A3;

    i = 6;
    sub_800DEAC(g2021AF0.unk0, 0);
    for (j = 0; j < 16 && g2021BE0[18 - j] != 10; j++, i++) {
      *ptr &= 0xF000;
      *ptr |= g2021BE0[18 - j] + 0x195;
      ptr--;
    }

    *ptr-- &= 0xF000;
    *ptr &= 0xF000;
    *ptr-- |= 0x18E;
    *ptr &= 0xF000;
    *ptr-- |= 0x18D;
    *ptr &= 0xF000;
    *ptr-- |= 0x18C;
    *ptr &= 0xF000;
    *ptr-- |= 0x18B;
    *ptr &= 0xF000;
    *ptr-- |= 0x18A;
    *ptr &= 0xF000;
    *ptr-- |= 0x189;
    i += 7;
  }

  for (; i < 23; i++)
    *ptr-- &= 0xF000;
}

static void sub_802ECCC (void) {
  u16* ptr = gBgVram.sbb1F[2] + 29;
  u8 i = 0;
  u8 j;

  if (gCardInfo.id != CARD_NONE) {
    *ptr &= 0xF000;
    *ptr-- |= 0x1A8;
    *ptr-- |= 0x1A7;
    *ptr-- |= 0x1A6;
    *ptr-- |= 0x1A5;
    *ptr-- |= 0x1A4;
    *ptr-- |= 0x1A3;

    i = 6;
    sub_800DEAC(g2021AF0.unk8, 0);
    for (j = 0; j < 16 && g2021BE0[18 - j] != 10; j++, i++) {
      *ptr &= 0xF000;
      *ptr |= g2021BE0[18 - j] + 0x195;
      ptr--;
    }

    *ptr-- &= 0xF000;
    *ptr &= 0xF000;
    *ptr-- |= 0x14B;
    *ptr &= 0xF000;
    *ptr-- |= 0x14A;
    *ptr &= 0xF000;
    *ptr-- |= 0x149;
    *ptr &= 0xF000;
    *ptr-- |= 0x148;
    *ptr &= 0xF000;
    *ptr-- |= 0x147;
    *ptr &= 0xF000;
    *ptr-- |= 0x146;
    i += 7;
  }

  for (; i < 23; i++)
    *ptr-- &= 0xF000;
}

// print money left if player were to buy the currently selected card
static void sub_802EE34 (void) {
  u32 r8;
  u64 diff;
  u8 paletteBank;
  u16* ptr = gBgVram.sbb1F[3] + 29;
  u8 i = 0;
  u8 j;

  if (gCardInfo.id != CARD_NONE) {
    if (g2021AF0.unk0 > gMoney) {
      r8 = 1;
      paletteBank = 14; // red
      diff = g2021AF0.unk0 - gMoney;
    }
    else {
      r8 = 0;
      paletteBank = 13;
      diff = gMoney - g2021AF0.unk0;
    }
    *ptr-- = paletteBank << 12 | 0x1A8;
    *ptr-- = paletteBank << 12 | 0x1A7;
    *ptr-- = paletteBank << 12 | 0x1A6;
    *ptr-- = paletteBank << 12 | 0x1A5;
    *ptr-- = paletteBank << 12 | 0x1A4;
    *ptr-- = paletteBank << 12 | 0x1A3;

    i += 6;
    sub_800DEAC(diff, 0);
    for (j = 0; j < 16 && g2021BE0[18 - j] != 10; j++, i++) {
      *ptr = paletteBank << 12 | g2021BE0[18 - j] + 0x195;
      ptr--;
    }

    if (r8 == 1) { // minus sign
      *ptr-- = paletteBank << 12 | 0x181;
      i++;
    }

    *ptr-- &= 0xF000;
    *ptr-- = paletteBank << 12 | 0x188;
    *ptr-- = paletteBank << 12 | 0x187;
    *ptr-- = paletteBank << 12 | 0x186;
    *ptr-- = paletteBank << 12 | 0x185;
    *ptr-- = paletteBank << 12 | 0x184;
    *ptr-- = paletteBank << 12 | 0x183;
    i += 7;
  }

  for (; i < 24; i++)
    *ptr-- &= 0xF000;
}

static void sub_802EFFC (void) {
  u32 r8 = 0;
  u64 temp;
  u8 paletteBank;
  u16* ptr = gBgVram.sbb1F[3] + 29;
  u8 i = 0;
  u8 j;

  if (gCardInfo.id != CARD_NONE) {
    if (ExceedsMoneyLimit(g2021AF0.unk8) == 1)
      temp = gMoney + g2021AF0.unk8;
    else
      temp = 9999999999999;

    *ptr = *ptr & 0xF000 | 0x1A8;
    *ptr-- |= 0x1A8;
    *ptr-- |= 0x1A7;
    *ptr-- |= 0x1A6;
    *ptr-- |= 0x1A5;
    *ptr-- |= 0x1A4;
    *ptr-- |= 0x1A3;

    i += 6;
    sub_800DEAC(temp, 0);

    for (j = 0; j < 16 && g2021BE0[18 - j] != 10; j++, i++) {
      *ptr = *ptr & 0xF000;
      *ptr |= g2021BE0[18 - j] + 0x195;
      ptr--;
    }

    // never set to 1, only initialized to 0
    if (r8 == 1) {
      *ptr = *ptr & 0xF000 | 0x181;
      ptr--;
      i++;
    }

    *ptr-- &= 0xF000;
    *ptr &= 0xF000;
    *ptr-- |= 0x188;
    *ptr &= 0xF000;
    *ptr-- |= 0x187;
    *ptr &= 0xF000;
    *ptr-- |= 0x186;
    *ptr &= 0xF000;
    *ptr-- |= 0x185;
    *ptr &= 0xF000;
    *ptr-- |= 0x184;
    *ptr &= 0xF000;
    *ptr-- |= 0x183;
    i += 7;
  }

  for (; i < 24; i++)
    *ptr-- &= 0xF000;
}

/*
static void sub_802F1B4 (void) {
  u16* ptr = gBgVram.sbb1F[19] + 1;
  u8 i = 0;

  if (gCardInfo.id != CARD_NONE) {
    sub_800DEAC(g2021AF0.unk0, 1);
    for (i = 0; i < 16 && g2021BE0[i] != 10; i++) {
      *ptr = 0xFFFFD000 | g2021BE0[i] + 0x195; // problematic part
      ptr++
    }
    *ptr++ = 0xD183;
    *ptr++ = 0xD184;
    i += 2;
  }
  for (; i < 18; i++)
    *ptr++ &= 0xF000;
}
*/

NAKED
static void sub_802F1B4 (void) {
  asm_unified("push {r4, r5, lr}\n\
	ldr r5, _0802F234 @ =0x020100C2\n\
	movs r4, #0\n\
	ldr r0, _0802F238 @ =0x02021AD0\n\
	ldrh r0, [r0, #0x10]\n\
	cmp r0, #0\n\
	beq _0802F212\n\
	ldr r0, _0802F23C @ =0x02021AF0\n\
	ldr r1, [r0, #4]\n\
	ldr r0, [r0]\n\
	movs r2, #1\n\
	bl sub_800DEAC\n\
	ldr r1, _0802F240 @ =0x02021BE0\n\
	ldrb r0, [r1]\n\
	cmp r0, #0xa\n\
	beq _0802F1FC\n\
	ldr r0, _0802F244 @ =0x00000195\n\
	adds r3, r0, #0\n\
	ldr r0, _0802F248 @ =0xFFFFD000\n\
	adds r2, r0, #0\n\
_0802F1DE:\n\
	adds r0, r4, r1\n\
	ldrb r0, [r0]\n\
	adds r0, r3, r0\n\
	orrs r0, r2\n\
	strh r0, [r5]\n\
	adds r5, #2\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0xf\n\
	bhi _0802F1FC\n\
	adds r0, r4, r1\n\
	ldrb r0, [r0]\n\
	cmp r0, #0xa\n\
	bne _0802F1DE\n\
_0802F1FC:\n\
	ldr r1, _0802F24C @ =0x0000D183\n\
	adds r0, r1, #0\n\
	strh r0, [r5]\n\
	adds r5, #2\n\
	adds r1, #1\n\
	adds r0, r1, #0\n\
	strh r0, [r5]\n\
	adds r5, #2\n\
	adds r0, r4, #2\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
_0802F212:\n\
	cmp r4, #0x11\n\
	bhi _0802F22E\n\
	movs r2, #0xf0\n\
	lsls r2, r2, #8\n\
_0802F21A:\n\
	ldrh r0, [r5]\n\
	adds r1, r2, #0\n\
	ands r1, r0\n\
	strh r1, [r5]\n\
	adds r5, #2\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0x11\n\
	bls _0802F21A\n\
_0802F22E:\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0802F234: .4byte 0x020100C2\n\
_0802F238: .4byte 0x02021AD0\n\
_0802F23C: .4byte 0x02021AF0\n\
_0802F240: .4byte 0x02021BE0\n\
_0802F244: .4byte 0x00000195\n\
_0802F248: .4byte 0xFFFFD000\n\
_0802F24C: .4byte 0x0000D183");
}

NAKED
static void sub_802F250 (void) {
  asm_unified("push {r4, r5, lr}\n\
	ldr r5, _0802F2D0 @ =0x020100C2\n\
	movs r4, #0\n\
	ldr r0, _0802F2D4 @ =0x02021AD0\n\
	ldrh r0, [r0, #0x10]\n\
	cmp r0, #0\n\
	beq _0802F2AE\n\
	ldr r0, _0802F2D8 @ =0x02021AF0\n\
	ldr r1, [r0, #0xc]\n\
	ldr r0, [r0, #8]\n\
	movs r2, #1\n\
	bl sub_800DEAC\n\
	ldr r1, _0802F2DC @ =0x02021BE0\n\
	ldrb r0, [r1]\n\
	cmp r0, #0xa\n\
	beq _0802F298\n\
	ldr r0, _0802F2E0 @ =0x00000195\n\
	adds r3, r0, #0\n\
	ldr r0, _0802F2E4 @ =0xFFFFD000\n\
	adds r2, r0, #0\n\
_0802F27A:\n\
	adds r0, r4, r1\n\
	ldrb r0, [r0]\n\
	adds r0, r3, r0\n\
	orrs r0, r2\n\
	strh r0, [r5]\n\
	adds r5, #2\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0xf\n\
	bhi _0802F298\n\
	adds r0, r4, r1\n\
	ldrb r0, [r0]\n\
	cmp r0, #0xa\n\
	bne _0802F27A\n\
_0802F298:\n\
	ldr r1, _0802F2E8 @ =0x0000D183\n\
	adds r0, r1, #0\n\
	strh r0, [r5]\n\
	adds r5, #2\n\
	adds r1, #1\n\
	adds r0, r1, #0\n\
	strh r0, [r5]\n\
	adds r5, #2\n\
	adds r0, r4, #2\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
_0802F2AE:\n\
	cmp r4, #0x11\n\
	bhi _0802F2CA\n\
	movs r2, #0xf0\n\
	lsls r2, r2, #8\n\
_0802F2B6:\n\
	ldrh r0, [r5]\n\
	adds r1, r2, #0\n\
	ands r1, r0\n\
	strh r1, [r5]\n\
	adds r5, #2\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0x11\n\
	bls _0802F2B6\n\
_0802F2CA:\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0802F2D0: .4byte 0x020100C2\n\
_0802F2D4: .4byte 0x02021AD0\n\
_0802F2D8: .4byte 0x02021AF0\n\
_0802F2DC: .4byte 0x02021BE0\n\
_0802F2E0: .4byte 0x00000195\n\
_0802F2E4: .4byte 0xFFFFD000\n\
_0802F2E8: .4byte 0x0000D183");
}

NAKED
static void sub_802F2EC (void) {
  asm_unified("push {r4, r5, r6, lr}\n\
	ldr r4, _0802F39C\n\
	movs r5, #0\n\
	ldr r2, _0802F3A0\n\
	ldrh r0, [r2, #0x10]\n\
	cmp r0, #0\n\
	beq _0802F378\n\
	ldr r1, _0802F3A4\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	adds r1, #1\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	adds r1, #1\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	adds r1, #1\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	adds r1, #1\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	adds r1, #1\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	adds r1, #0x2b\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	movs r5, #7\n\
	ldr r1, _0802F3A8\n\
	ldrh r0, [r2, #0x10]\n\
	adds r0, r0, r1\n\
	ldrb r0, [r0]\n\
	movs r1, #1\n\
	bl sub_800DDA0\n\
	movs r1, #0\n\
	ldr r2, _0802F3AC\n\
	ldrb r0, [r2]\n\
	cmp r0, #0xa\n\
	beq _0802F378\n\
	ldr r0, _0802F3B0\n\
	adds r6, r0, #0\n\
	ldr r0, _0802F3B4\n\
	adds r3, r0, #0\n\
_0802F354:\n\
	adds r0, r1, r2\n\
	ldrb r0, [r0]\n\
	adds r0, r6, r0\n\
	orrs r0, r3\n\
	strh r0, [r4]\n\
	adds r4, #2\n\
	adds r0, r1, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r1, r0, #0x18\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r1, #2\n\
	bhi _0802F378\n\
	adds r0, r1, r2\n\
	ldrb r0, [r0]\n\
	cmp r0, #0xa\n\
	bne _0802F354\n\
_0802F378:\n\
	cmp r5, #9\n\
	bhi _0802F394\n\
	movs r2, #0xf0\n\
	lsls r2, r2, #8\n\
_0802F380:\n\
	ldrh r0, [r4]\n\
	adds r1, r2, #0\n\
	ands r1, r0\n\
	strh r1, [r4]\n\
	adds r4, #2\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #9\n\
	bls _0802F380\n\
_0802F394:\n\
	pop {r4, r5, r6}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0802F39C: .4byte 0x02010040\n\
_0802F3A0: .4byte gCardInfo\n\
_0802F3A4: .4byte 0x0000D152\n\
_0802F3A8: .4byte 0x02022120\n\
_0802F3AC: .4byte 0x02021BD0\n\
_0802F3B0: .4byte 0x00000195\n\
_0802F3B4: .4byte 0xFFFFD000");
}

NAKED
static void sub_802F3B8 (void) {
  asm_unified("push {r4, r5, r6, lr}\n\
	ldr r4, _0802F41C\n\
	movs r5, #0\n\
	ldr r0, _0802F420\n\
	ldrh r2, [r0, #0x12]\n\
	ldr r1, _0802F424\n\
	adds r3, r0, #0\n\
	cmp r2, r1\n\
	beq _0802F452\n\
	ldrh r0, [r3, #0x12]\n\
	movs r1, #0\n\
	bl sub_800DDA0\n\
	ldr r1, _0802F428\n\
	ldr r0, _0802F42C\n\
	adds r3, r0, #0\n\
	ldrb r2, [r1, #4]\n\
	adds r0, r3, r2\n\
	ldr r6, _0802F430\n\
	adds r2, r6, #0\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r6, [r1, #3]\n\
	adds r0, r3, r6\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r6, [r1, #2]\n\
	adds r0, r3, r6\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r6, [r1, #1]\n\
	adds r0, r3, r6\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r0, [r1]\n\
	cmp r0, #0xa\n\
	bne _0802F438\n\
	ldr r1, _0802F434\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrh r1, [r4]\n\
	movs r0, #0xf0\n\
	lsls r0, r0, #8\n\
	ands r0, r1\n\
	b _0802F446\n\
	.align 2, 0\n\
_0802F41C: .4byte 0x020100BA\n\
_0802F420: .4byte gCardInfo\n\
_0802F424: .4byte 0x0000FFFF\n\
_0802F428: .4byte 0x02021BD0\n\
_0802F42C: .4byte 0x00000195\n\
_0802F430: .4byte 0xFFFFD000\n\
_0802F434: .4byte 0x0000A1A1\n\
_0802F438:\n\
	ldrb r1, [r1]\n\
	adds r0, r3, r1\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldr r2, _0802F4D0\n\
	adds r0, r2, #0\n\
_0802F446:\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	adds r0, r5, #6\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	ldr r3, _0802F4D4\n\
_0802F452:\n\
	ldr r6, _0802F4D8\n\
	cmp r5, #5\n\
	bhi _0802F470\n\
	movs r2, #0xf0\n\
	lsls r2, r2, #8\n\
_0802F45C:\n\
	ldrh r0, [r4]\n\
	adds r1, r2, #0\n\
	ands r1, r0\n\
	strh r1, [r4]\n\
	subs r4, #2\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #5\n\
	bls _0802F45C\n\
_0802F470:\n\
	adds r4, r6, #0\n\
	movs r5, #0\n\
	ldrh r1, [r3, #0x14]\n\
	ldr r0, _0802F4DC\n\
	cmp r1, r0\n\
	beq _0802F508\n\
	adds r0, r1, #0\n\
	movs r1, #0\n\
	bl sub_800DDA0\n\
	ldr r1, _0802F4E0\n\
	ldr r6, _0802F4E4\n\
	adds r3, r6, #0\n\
	ldrb r2, [r1, #4]\n\
	adds r0, r3, r2\n\
	ldr r6, _0802F4E8\n\
	adds r2, r6, #0\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r6, [r1, #3]\n\
	adds r0, r3, r6\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r6, [r1, #2]\n\
	adds r0, r3, r6\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r6, [r1, #1]\n\
	adds r0, r3, r6\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrb r0, [r1]\n\
	cmp r0, #0xa\n\
	bne _0802F4F0\n\
	ldr r1, _0802F4EC\n\
	adds r0, r1, #0\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldrh r1, [r4]\n\
	movs r0, #0xf0\n\
	lsls r0, r0, #8\n\
	ands r0, r1\n\
	b _0802F4FE\n\
	.align 2, 0\n\
_0802F4D0: .4byte 0x0000A1A1\n\
_0802F4D4: .4byte gCardInfo\n\
_0802F4D8: .4byte 0x020100FA\n\
_0802F4DC: .4byte 0x0000FFFF\n\
_0802F4E0: .4byte 0x02021BD0\n\
_0802F4E4: .4byte 0x00000195\n\
_0802F4E8: .4byte 0xFFFFD000\n\
_0802F4EC: .4byte 0x0000A1A2\n\
_0802F4F0:\n\
	ldrb r1, [r1]\n\
	adds r0, r3, r1\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	ldr r2, _0802F52C\n\
	adds r0, r2, #0\n\
_0802F4FE:\n\
	strh r0, [r4]\n\
	subs r4, #2\n\
	adds r0, r5, #6\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
_0802F508:\n\
	cmp r5, #5\n\
	bhi _0802F524\n\
	movs r2, #0xf0\n\
	lsls r2, r2, #8\n\
_0802F510:\n\
	ldrh r0, [r4]\n\
	adds r1, r2, #0\n\
	ands r1, r0\n\
	strh r1, [r4]\n\
	subs r4, #2\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, #5\n\
	bls _0802F510\n\
_0802F524:\n\
	pop {r4, r5, r6}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0802F52C: .4byte 0x0000A1A2");
}

static void sub_802F530 (void) {
  u16* ptr = gBgVram.sbb1F[17] + 20;
  if (!gCardInfo.level) {
    *ptr++ &= 0xF000;
    *ptr++ &= 0xF000;
    *ptr &= 0xF000;
  }
  else {
    sub_800DDA0(gCardInfo.level, 1);
    *ptr++ = 0xA1A0;
    *ptr &= 0xF000;
    *ptr++ |= g2021BD0[0] + 0x195;
    *ptr &= 0xF000;
    *ptr |= g2021BD0[1] + 0x195;
  }
}

static void sub_802F5B0 (void) {
  u8 r4;
  u16 r5;
  u16 i;
  u8 buffer[32];

  CpuFill16(0, gBgVram.sbb1E[24] + 16, 0x1E0);

  r4 = 0;
  i = sub_8020698(gCardInfo.name);
  r5 = 0;
  while (r5 < 15 && gCardInfo.name[i] && gCardInfo.name[i] != '$') {
    if (gCardInfo.name[i] > 127) {
      buffer[r4] = gCardInfo.name[i];
      r4++;
      i++;
    }
    buffer[r4] = gCardInfo.name[i];
    r4++;
    i++;
    r5++;
  }
  for (; r5 < 16; r4++, r5++)
    buffer[r4] = 0;
  CopyStringTilesToVRAMBuffer(gBgVram.sbb1E[24] + 16, buffer, 0x801);
}

static void sub_802F66C (void) {
  u16* ptr = gBgVram.sbb1F[19] + 1;
  u8 i;

  if (!gCardInfo.id) {
    for (i = 0; i < 4; i++) {
      *ptr = *ptr & 0xF000 | 0x19F;
      ptr++;
    }
  }
  else {
    sub_800DDA0(gCardInfo.id, 1);
    for (i = 0; i < 4; i++) {
      *ptr &= 0xF000;
      *ptr++ |= g2021BD0[i] + 0x195;
    }
  }
}

static void sub_802F6E8 (void) {
  u16* ptr = gBgVram.sbb1F[17] + 10;
  u8 i = 0, j;

  if (gCardInfo.id != CARD_NONE) {
    *ptr &= 0xF000;
    *ptr++ |= 0x14C;
    *ptr &= 0xF000;
    *ptr++ |= 0x14D;
    *ptr &= 0xF000;
    *ptr++ |= 0x14E;
    *ptr &= 0xF000;
    *ptr++ |= 0x14F;
    *ptr &= 0xF000;
    *ptr++ |= 0x150;
    *ptr &= 0xF000;
    *ptr++ |= 0x151;
    *ptr &= 0xF000;
    *ptr++ |= 0x182;
    i = 7;
    sub_800DDA0(g2022B80[gCardInfo.id], 1);
    for (j = 0; j < 3 && g2021BD0[j] != 10; j++, i++) {
      *ptr &= 0xF000;
      *ptr++ |= g2021BD0[j] + 0x195;
    }
  }
  for (; i < 10; i++)
    *ptr++ &= 0xF000;
}

static void sub_802F7F0 (void) {
  u16* ptr = gBgVram.sbb1F[18] + 10;
  u8 i = 0, j;

  if (gCardInfo.id != CARD_NONE) {
    *ptr &= 0xF000;
    *ptr++ |= 0x140;
    *ptr &= 0xF000;
    *ptr++ |= 0x141;
    *ptr &= 0xF000;
    *ptr++ |= 0x142;
    *ptr &= 0xF000;
    *ptr++ |= 0x143;
    *ptr &= 0xF000;
    *ptr++ |= 0x144;
    *ptr &= 0xF000;
    *ptr++ |= 0x145;
    *ptr &= 0xF000;
    *ptr++ |= 0x182;
    i = 7;
    sub_800DDA0(GetDeckCardQty(gCardInfo.id), 1);
    for (j = 0; j < 3 && g2021BD0[j] != 10; j++, i++) {
      *ptr &= 0xF000;
      *ptr++ |= g2021BD0[j] + 0x195;
    }
  }
  for (; i < 10; i++)
    *ptr++ &= 0xF000;
}

static void sub_802F8F8 (void) {
  u16* ptr = gBgVram.sbb1F[17] + 29;
  u8 i = 0;

  if (gCardInfo.id != CARD_NONE) {
    for (i = 0; i < 5 && g2021BD0[5 - i] != 10; i++) {
      sub_800DDA0(gCardInfo.cost, 0);
      *ptr &= 0xF000;
      *ptr |= g2021BD0[4 - i] + 0x195;
      ptr--;
    }
    for (; i < 4; i++)
      *ptr-- &= 0xF000;

    ptr++;
    *ptr &= 0xF000;
    *ptr-- |= 0x13F;
    *ptr &= 0xF000;
    *ptr-- |= 0x13E;
    *ptr &= 0xF000;
    *ptr-- |= 0x13D;
    *ptr &= 0xF000;
    *ptr |= 0x13C;

  }
  else
    for (; i < 7; i++)
      *ptr-- &= 0xF000;
}

static void sub_802F9E8 (void) {
  u8 i;
  for (i = 0; i < 128; i++) {
    gOamBuffer[i * 4] = 0xA0;
    gOamBuffer[i * 4 + 1] = 0xF0;
    gOamBuffer[i * 4 + 2] = 0xC00;
    gOamBuffer[i * 4 + 3] = 0;
  }
  for (i = 0; i < 4; i++)
    CpuCopy16(g80CD2A0[i], gBgVram.cbb4 + i * 0x400, 0x80);

  CpuCopy16(g80CD4A0, g02000000.obj + 128, 0x20);
  sub_802FB08();

  for (i = 0; i < 4; i++)
    CpuCopy16(g80CD4C0[i], gBgVram.cbb4 + 0x80 + i * 0x400, 0x80);
  sub_80300F8();

  for (i = 0; i < 2; i++)
    CpuCopy16(g80CD200[i], gBgVram.cbb4 + 0x100 + i * 0x400, 0x40);
  CpuCopy16(g80CD280, g02000000.obj + 144, 0x20);

  for (i = 0; i < 2; i++)
    CpuCopy16(g80CD1A0[i], gBgVram.cbb4 + 0x900 + i * 0x400, 0x20);
  CpuCopy16(g80CD1E0, g02000000.obj + 160, 0x20);
  sub_803028C();
}

/*
static void sub_802FB08 (void) {
  u32* oam = (u32*)gOamBuffer;
  u32 r1 = g80CDE64[sCardShop.unk722] << 16;
  r1 &= 0x1FF0000;
  r1 |= g80CDE5A[sCardShop.unk723] & 0xFF;
  r1 |= 0x80000000;
  oam[0] = r1;
  oam[1] = 0x8800;
}
*/

NAKED
static void sub_802FB08 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	ldr r3, _0802FBDC\n\
	ldr r0, _0802FBE0\n\
	mov sb, r0\n\
	ldr r2, _0802FBE4\n\
	ldr r7, _0802FBE8\n\
	adds r5, r2, r7\n\
	movs r0, #0\n\
	ldrsb r0, [r5, r0]\n\
	lsls r0, r0, #1\n\
	add r0, sb\n\
	ldrh r1, [r0]\n\
	lsls r1, r1, #0x10\n\
	ldr r6, _0802FBEC\n\
	ands r1, r6\n\
	ldr r0, _0802FBF0\n\
	mov r8, r0\n\
	adds r7, #1\n\
	adds r2, r2, r7\n\
	movs r0, #0\n\
	ldrsb r0, [r2, r0]\n\
	lsls r0, r0, #1\n\
	add r0, r8\n\
	ldrb r0, [r0]\n\
	orrs r1, r0\n\
	movs r0, #0x80\n\
	lsls r0, r0, #0x18\n\
	orrs r1, r0\n\
	str r1, [r3]\n\
	movs r4, #0x88\n\
	lsls r4, r4, #8\n\
	str r4, [r3, #4]\n\
	movs r0, #0\n\
	ldrsb r0, [r5, r0]\n\
	lsls r0, r0, #1\n\
	add r0, sb\n\
	ldrh r0, [r0]\n\
	adds r0, #0x1e\n\
	lsls r0, r0, #0x10\n\
	ands r0, r6\n\
	movs r1, #0\n\
	ldrsb r1, [r2, r1]\n\
	lsls r1, r1, #1\n\
	add r1, r8\n\
	movs r7, #0xff\n\
	mov sl, r7\n\
	ldrb r1, [r1]\n\
	orrs r0, r1\n\
	movs r1, #0x90\n\
	lsls r1, r1, #0x18\n\
	orrs r0, r1\n\
	str r0, [r3, #8]\n\
	str r4, [r3, #0xc]\n\
	movs r0, #0\n\
	ldrsb r0, [r5, r0]\n\
	lsls r0, r0, #1\n\
	add r0, sb\n\
	ldrh r1, [r0]\n\
	lsls r1, r1, #0x10\n\
	ands r1, r6\n\
	movs r0, #0\n\
	ldrsb r0, [r2, r0]\n\
	lsls r0, r0, #1\n\
	add r0, r8\n\
	ldrh r0, [r0]\n\
	adds r0, #0x1e\n\
	ands r0, r7\n\
	orrs r1, r0\n\
	movs r0, #0xa0\n\
	lsls r0, r0, #0x18\n\
	orrs r1, r0\n\
	str r1, [r3, #0x10]\n\
	str r4, [r3, #0x14]\n\
	movs r0, #0\n\
	ldrsb r0, [r5, r0]\n\
	lsls r0, r0, #1\n\
	add r0, sb\n\
	ldrh r1, [r0]\n\
	adds r1, #0x1e\n\
	lsls r1, r1, #0x10\n\
	ands r1, r6\n\
	movs r0, #0\n\
	ldrsb r0, [r2, r0]\n\
	lsls r0, r0, #1\n\
	add r0, r8\n\
	ldrh r0, [r0]\n\
	adds r0, #0x1e\n\
	ands r0, r7\n\
	orrs r1, r0\n\
	movs r0, #0xb0\n\
	lsls r0, r0, #0x18\n\
	orrs r1, r0\n\
	str r1, [r3, #0x18]\n\
	str r4, [r3, #0x1c]\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0802FBDC: .4byte gOamBuffer\n\
_0802FBE0: .4byte 0x080CDE64\n\
_0802FBE4: .4byte 0x02022450\n\
_0802FBE8: .4byte 0x00000722\n\
_0802FBEC: .4byte 0x01FF0000\n\
_0802FBF0: .4byte 0x080CDE5A");
}

static void sub_802FBF4 (void) {
  gBLDCNT = 0xCC;
  gBLDALPHA = 0;
  gBLDY = 4;
}

static void sub_802FC14 (void) {
  gBLDCNT = 0xDC;
  gBLDALPHA = 0;
  gBLDY = 8;
}

static void sub_802FC34 (void) {
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x1000, g80CD6C0, 0x901);
}

static void sub_802FC50 (void) {
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x1000, g80CD778, 0x901);
}

static void sub_802FC6C (void) {
  gOamBuffer[20] = 0xA0;
  gOamBuffer[21] = 0xF0;
  gOamBuffer[22] = 0xC00;
  gOamBuffer[23] = 0;
}

static void sub_802FC88 (void) {
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x1000, g80CD778, 0x901);
  sub_803015C();
  sub_80301A8();
  REG_DISPCNT &= 0xFEFF;
  sub_80081DC(LoadOam);
  sub_8008220();
  LoadCharblock2();
  LoadCharblock3();
  REG_BG0CNT = 0x140C;
  REG_DISPCNT |= 0x100;
}

/*
static void sub_802FCF0 (u8 arg0) {
  u16* ptr = gBgVram.sbb1F[1] + 2;
  *ptr = *ptr & 0xF000 | arg0 + 344;
  ptr++;

  *ptr = *ptr & 0xF000 | arg0 + 345;
  ptr = gBgVram.sbb1F[2] + 2;

  *ptr = *ptr & 0xF000 | arg0 + 346;
  ptr++;

  *ptr = *ptr & 0xF000 | arg0 + 347;
  ptr++;
}*/

NAKED
static void sub_802FCF0 (u8 arg0) {
  asm_unified("push {r4, r5, lr}\n\
	lsls r0, r0, #0x18\n\
	ldr r2, _0802FD40\n\
	ldrh r4, [r2]\n\
	movs r3, #0xf0\n\
	lsls r3, r3, #8\n\
	adds r1, r3, #0\n\
	ands r1, r4\n\
	lsrs r4, r0, #0x16\n\
	movs r5, #0xac\n\
	lsls r5, r5, #1\n\
	adds r0, r4, r5\n\
	orrs r1, r0\n\
	strh r1, [r2]\n\
	adds r2, #2\n\
	ldrh r1, [r2]\n\
	adds r0, r3, #0\n\
	ands r0, r1\n\
	adds r5, #1\n\
	adds r1, r4, r5\n\
	orrs r0, r1\n\
	strh r0, [r2]\n\
	adds r2, #0x3e\n\
	ldrh r1, [r2]\n\
	adds r0, r3, #0\n\
	ands r0, r1\n\
	adds r5, #1\n\
	adds r1, r4, r5\n\
	orrs r0, r1\n\
	strh r0, [r2]\n\
	adds r2, #2\n\
	ldrh r0, [r2]\n\
	ands r3, r0\n\
	ldr r1, _0802FD44\n\
	adds r0, r4, r1\n\
	orrs r3, r0\n\
	strh r3, [r2]\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0802FD40: .4byte 0x0200FC44\n\
_0802FD44: .4byte 0x0000015B");
}

static void sub_802FD48 (u16 cardId) {
  SetCardInfo(cardId);
  sub_802F66C();
  sub_802F5B0();
  sub_802FDC0();
  sub_802F530();
  sub_802F3B8();
  sub_802F2EC();
  sub_802F6E8();
  sub_802EB64();
  sub_802EE34();
  sub_802F7F0();
  sub_802F8F8();
}

static void sub_802FD84 (u16 cardId) {
  SetCardInfo(cardId);
  sub_802F66C();
  sub_802F5B0();
  sub_802FDC0();
  sub_802F530();
  sub_802F3B8();
  sub_802F2EC();
  sub_802F6E8();
  sub_802ECCC();
  sub_802EFFC();
  sub_802F7F0();
  sub_802F8F8();
}

static void sub_802FDC0 (void) {
  CopyAttributeIconTilesToBuffer(gCardInfo.attribute, ((struct Cbb*)&gBgVram)->cbb3 + 0x35A0);
  CopyAttributeIconPalToBuffer(gCardInfo.attribute, g02000000.bg + 0xC0);
  CopyTypeIconTilesToBuffer(gCardInfo.type, ((struct Cbb*)&gBgVram)->cbb3 + 0x3520);
  CopyTypeIconPalToBuffer(gCardInfo.type, g02000000.bg + 0xB0);
}

static void sub_802FE00 (void) {
  u8 i;
  sub_8030068();
  CpuFill16(0, gBgVram.cbb0, 64);
  sub_802FE68();
  sub_8057418(g02000000.bg);
  g02000000.bg[0] = 0;
  for (i = 0; i < 36; i++)
    CpuCopy16(g80CB884[i], ((struct Sbb*)&gBgVram)->sbb12[i], 60);
}

static void sub_802FE68 (void) {
  u8 i;
  for (i = 0; i < 5; i++)
    sub_802FE84(i);
}

static void sub_802FE84 (int arg0) {
  u8 i;
  u8 r7 = sub_802DE84((u8)arg0);
  u8* r5 = &gBgVram.cbb0[0x40 + r7 * 0x1C00];

  for (i = 0; i < 7; r5 += 0x400, i++) {
    u16 cardId = sCardShop.unk8C[r7][i];
    if (cardId == CARD_NONE)
      CpuCopy16(g80CC0F4, r5, 0x400);
    else {
      sub_805742C(r5, cardId);
      sub_802FF4C(r5, cardId);
      sub_802FF14(r5, cardId);
      sub_802FF78(r5, cardId);
      sub_802FFF0(r5, cardId);
    }
  }
}
// almost same as sub_80576B4
static void sub_802FF14 (u8* arg0, u16 cardId) {
  arg0 += 0xC0;
  SetCardInfo(cardId);
  if (gCardInfo.attribute != TYPE_NONE)
    CpuCopy16(g8E1168C[gCardInfo.attribute], arg0, 64);
}

//almost same as sub_80576EC
static void sub_802FF4C (u8* arg0, u16 cardId) {
  u8 numTributes = sub_8045410(cardId);
  if (numTributes)
    CpuCopy16(g89A7ADE[numTributes], arg0, 64);
}

//same as sub_80572A8 except for arg0 + 0x200, and stat mod
static void sub_802FF78 (u8* arg0, u16 cardId) {
  SetCardInfo(cardId);
  if (gCardInfo.spellEffect != 2)
    return;
  if (gCardInfo.atk / 100 > 99)
    sub_800DDA0(99, 0);
  else
    sub_800DDA0(gCardInfo.atk / 100, 0);
  arg0 += 0x200;
  CpuCopy16(g89A81DE[g2021BD0[3]], arg0, 0x40);
  arg0 += 0x40;
  CpuCopy16(g89A7F1E[g2021BD0[4]], arg0, 0x40);
}

static void sub_802FFF0 (u8* arg0, u16 cardId) {
  SetCardInfo(cardId);
  if (gCardInfo.spellEffect != 2)
    return;
  if (gCardInfo.def / 100 > 99)
    sub_800DDA0(99, 0);
  else
    sub_800DDA0(gCardInfo.def / 100, 0);
  arg0 += 0x280;
  CpuCopy16(g89A875E[g2021BD0[3]], arg0, 0x40);
  arg0 += 0x40;
  CpuCopy16(g89A849E[g2021BD0[4]], arg0, 0x40);
}

static void sub_8030068 (void) {
  gBG2VOFS = sCardShop.unk724 * 32;
  gBG2HOFS = 0;
}

static void sub_8030090 (void) {
  u8 i;
  gBG3VOFS = 0;
  gBG3HOFS = 0;
  LZ77UnCompWram(g80CC4F4, ((struct Cbb*)&gBgVram)->cbb3);
  CpuCopy16(g80CCC90, g02000000.bg + 0xD0, 0x60);
  for (i = 0; i < 20; i++)
    CpuCopy16(g80CCCF0[i], ((struct Sbb*)&gBgVram)->sbb17[i], 60);
}

static void sub_80300F8 (void) {
  u32* oam = (u32*)gOamBuffer + 8;
  u32 r1 = g80CDE7C[sCardShop.unk722] << 16;
  r1 &= 0x01FF0000;
  r1 |= g80CDE72[sCardShop.unk723][0];
  r1 |= 0x80000800;
  oam[0] = r1;
  oam[1] = 0x804;
}

static void sub_803015C (void) {
  u32* oam = (u32*)gOamBuffer + 10;
  u32 r1 = g80CDE90[sCardShop.unk726] << 16;
  r1 &= 0x01FF0000;
  r1 |= g80CDE8A[sCardShop.unk726][0];
  r1 |= 0x40000000;
  oam[0] = r1;
  oam[1] = 0x9408;
}

static void sub_80301A8 (void) {
  u32* oam = (u32*)gOamBuffer + 8;
  u32 r1 = g80CDE90[sCardShop.unk726] << 16;
  r1 &= 0x01FF0000;
  r1 |= g80CDE8A[sCardShop.unk726][0];
  r1 |= 0x40000800;
  oam[0] = r1;
  oam[1] = 0x408;
}

static void sub_80301F4 (void) {
  u32* oam = (u32*)gOamBuffer + 10;
  u32 r1 = g80CDE96[sCardShop.unk726] << 16;
  r1 &= 0x01FF0000;
  r1 |= g80CDEAC[sCardShop.unk726][0];
  r1 |= 0x40000000;
  oam[0] = r1;
  oam[1] = 0x9408;
}

static void sub_8030240 (void) {
  u32* oam = (u32*)gOamBuffer + 8;
  u32 r1 = g80CDE96[sCardShop.unk726] << 16;
  r1 &= 0x01FF0000;
  r1 |= g80CDEAC[sCardShop.unk726][0];
  r1 |= 0x40000800;
  oam[0] = r1;
  oam[1] = 0x408;
}

// see this for oam access clues
static void sub_803028C (void) {
  u32* oam;
  u8 r0 = sub_802DED4(sCardShop.unk71E + sCardShop.unk723) * 127 / sCardShop.unk720 + 1;
  oam = (u32*)gOamBuffer + 12;
  oam[0] = r0 | 0x8000;
  oam[1] = 0xAC48;
}

static void sub_80302F0 (void) {
  CopyStringTilesToVRAMBuffer(((struct Cbb*)&gBgVram)->cbb3 + 0x1000, g80CD830, 0x901);
}

static void sub_803030C (void) {
  u32 r4;
  sCardShop.unk726 = sCardShop.unk725;
  sub_802FC14();
  sub_80302F0();
  sub_80301F4();
  sub_8030240();
  sub_80309D8();
  sub_80081DC(sub_80306E0);
  sub_8008220();
  PlayMusic(0x37);
  r4 = 1;
  while (r4) {
    switch (ProcessInput()) {
      case 0x40:
        sub_8030494();
        PlayMusic(0x36);
        break;
      case 0x80:
        sub_80304E4();
        PlayMusic(0x36);
        break;
      case 0x20:
        sub_8030534();
        PlayMusic(0x36);
        break;
      case 0x10:
        sub_8030584();
        PlayMusic(0x36);
        break;
      case 1:
        if (sCardShop.unk726 == 10) {
          sub_80305D4();
          PlayMusic(0x37);
        }
        else {
          sCardShop.unk725 = sCardShop.unk726;
          sub_80303F0();
        }
        return;
      case 2:
      case 8:
        sub_80305D4();
        PlayMusic(0x38);
        return;
      default:
        sub_8008220();
        break;
    }
  }
}

static void sub_80303F0 (void) {
  u16 cardId;

  sCardShop.unk725 = sCardShop.unk726;
  sub_802DFF8(sCardShop.unk725);
  sub_802DF1C();
  sub_802DF88();

  cardId = *sCardShop.unk0[sCardShop.unk723][sCardShop.unk722];
  g2021AF0.unk10 = cardId;
  g2021AF0.unk12 = g2022120[cardId];
  sub_800BD34();
  PlayMusic(0x37);
  sub_802FBF4();
  sub_802FCF0(sCardShop.unk725);
  sub_802FD48(cardId);
  sub_802FE68();
  sub_8030068();
  sub_803028C();
  sub_80300F8();
  sub_802FC6C();
  sub_80081DC(sub_803071C);
  sub_8008220();
  sub_8030A48();
}

static void sub_8030494 (void) {
  sub_802E094();
  if (sCardShop.unk726 == 10)
    sub_802FCF0(sCardShop.unk725);
  else
    sub_802FCF0(sCardShop.unk726);
  sub_80301F4();
  sub_8030240();
  sub_80081DC(sub_8030710);
  sub_8008220();
  sub_8030A10();
}

static void sub_80304E4 (void) {
  sub_802E0B4();
  if (sCardShop.unk726 == 10)
    sub_802FCF0(sCardShop.unk725);
  else
    sub_802FCF0(sCardShop.unk726);
  sub_80301F4();
  sub_8030240();
  sub_80081DC(sub_8030710);
  sub_8008220();
  sub_8030A10();
}

static void sub_8030534 (void) {
  sub_802E0D4();
  if (sCardShop.unk726 == 10)
    sub_802FCF0(sCardShop.unk725);
  else
    sub_802FCF0(sCardShop.unk726);
  sub_80301F4();
  sub_8030240();
  sub_80081DC(sub_8030710);
  sub_8008220();
  sub_8030A10();
}

static void sub_8030584 (void) {
  sub_802E0F4();
  if (sCardShop.unk726 == 10)
    sub_802FCF0(sCardShop.unk725);
  else
    sub_802FCF0(sCardShop.unk726);
  sub_80301F4();
  sub_8030240();
  sub_80081DC(sub_8030710);
  sub_8008220();
  sub_8030A10();
}

static void sub_80305D4 (void) {
  sub_802FCF0(sCardShop.unk725);
  sub_80300F8();
  sub_802FBF4();
  sub_802FC6C();
  sub_80081DC(sub_803073C);
  sub_8008220();
  sub_8030AF8();
}

static void sub_803060C (void) {
  sub_8045718();
  REG_BG1CNT = 0x1F0D;
  REG_BG2CNT = 0x9282;
  REG_BG3CNT = 0x170F;
  REG_WINOUT = 0x1C3F;
  LoadBgOffsets();
  LoadBlendingRegs();
}

static void sub_8030654 (void) {
  LoadOam();
}

static void sub_8030660 (void) {
  LoadOam();
}

static void sub_803066C (void) {
  LoadOam();
}

static void sub_8030678 (void) {
  LoadOam();
}

static void sub_8030684 (void) {
  LoadOam();
}

static void sub_8030690 (void) {
  REG_BG0CNT = 0x140C;
  REG_DISPCNT |= 0x100;
  LoadOam();
  LoadBlendingRegs();
}

static void sub_80306C0 (void) {
  REG_DISPCNT &= 0xFEFF;
  LoadOam();
  LoadBlendingRegs();
}

static void sub_80306E0 (void) {
  REG_BG0CNT = 0x150C;
  REG_DISPCNT |= 0x100;
  LoadOam();
  LoadBlendingRegs();
}

static void sub_8030710 (void) {
  LoadOam();
}

static void sub_803071C (void) {
  REG_DISPCNT &= 0xFEFF;
  LoadOam();
  LoadBlendingRegs();
}

static void sub_803073C (void) {
  REG_DISPCNT &= 0xFEFF;
  LoadOam();
  LoadBlendingRegs();
}

static void sub_803075C (void) {
}

static void sub_8030760 (void) {
  LoadVRAM();
  LoadPalettes();
  LoadBlendingRegs();
  LoadBgOffsets();
  REG_DISPCNT = 0x9E00;
}

static void sub_8030784 (void) {
  REG_BG0CNT = 0x140C;
  LoadVRAM();
  LoadPalettes();
  LoadBlendingRegs();
  LoadBgOffsets();
  REG_DISPCNT = 0x9F00;
}

static void sub_80307B8 (void) {
  CpuCopy16(g02000000.bg + 0xB0, (u16*)PLTT + 0xB0, 0x40);
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)BG_VRAM + 0xF520, 0x1C00);
}

static void sub_80307E4 (int arg0) {
  u8 arg0_u8 = arg0;
  u32 r1 = arg0_u8 * 0x1C00;
  CpuCopy16(gBgVram.cbb0 + 0x40 + r1, (u8*)BG_VRAM + 0x40 + r1, 0x1C00);
  CpuCopy16(g02000000.bg + 0xB0, (u16*)PLTT + 0xB0, 0x40);
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)BG_VRAM + 0xF520, 0x1C00);
  LoadBgOffsets();
}

static void sub_803083C (int arg0) {
  u8 arg0_u8 = arg0;
  u32 r1;
  LoadBgOffsets();
  r1 = arg0_u8 * 0x1C00;
  CpuCopy16(gBgVram.cbb0 + 0x40 + r1, (u8*)BG_VRAM + 0x40 + r1, 0x1C00);
  CpuCopy16(g02000000.bg + 0xB0, (u16*)PLTT + 0xB0, 0x40);
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)BG_VRAM + 0xF520, 0x1C00);
}

static void sub_8030898 (void) {
  LoadBgOffsets();
  CpuCopy16(gBgVram.cbb0 + 0x7040, (u8*)BG_VRAM + 0x7040, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x40, (u8*)BG_VRAM + 0x40, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x1C40, (u8*)BG_VRAM + 0x1C40, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x3840, (u8*)BG_VRAM + 0x3840, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x5440, (u8*)BG_VRAM + 0x5440, 0x1C00);
  CpuCopy16(g02000000.bg + 0xB0, (u16*)PLTT + 0xB0, 0x40);
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)BG_VRAM + 0xF520, 0x1C00);
}

static void sub_8030934 (void) {
  CpuCopy16(gBgVram.cbb0 + 0xD000, (u8*)BG_VRAM + 0xD000, 0x1000);
  CpuCopy16(gBgVram.cbb0 + 0xA000, (u8*)BG_VRAM + 0xA000, 0x800);
}

static void sub_803096C (int arg0) {
  u8 arg0_u8 = arg0;
  u32 r1 = arg0_u8 * 0x1C00;
  CpuCopy16(gBgVram.cbb0 + 0x40 + r1, (u8*)BG_VRAM + 0x40 + r1, 0x1C00);
  CpuCopy16(g02000000.bg + 0xB0, (u16*)PLTT + 0xB0, 0x40);
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)BG_VRAM + 0xF520, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0xA000, (u8*)BG_VRAM + 0xA000, 0x800);
}

static void sub_80309D8 (void) {
  CpuCopy16(gBgVram.cbb0 + 0xD000, (u8*)BG_VRAM + 0xD000, 0x1800);
  CpuCopy16(gBgVram.cbb0 + 0xA800, (u8*)BG_VRAM + 0xA800, 0x800);
}

static void sub_8030A10 (void) {
  CpuCopy16(gBgVram.cbb0 + 0xA800, (u8*)BG_VRAM + 0xA800, 0x800);
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)BG_VRAM + 0xF520, 0x1C00);
}

static void sub_8030A48 (void) {
  LoadBgOffsets();
  CpuCopy16(gBgVram.cbb0 + 0x7040, (u8*)BG_VRAM + 0x7040, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x40, (u8*)BG_VRAM + 0x40, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x1C40, (u8*)BG_VRAM + 0x1C40, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x3840, (u8*)BG_VRAM + 0x3840, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0x5440, (u8*)BG_VRAM + 0x5440, 0x1C00);
  CpuCopy16(g02000000.bg + 0xB0, (u16*)PLTT + 0xB0, 0x40);
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)BG_VRAM + 0xF520, 0x1C00);
  CpuCopy16(gBgVram.cbb0 + 0xA800, (u8*)BG_VRAM + 0xA800, 0x800);
}

static void sub_8030AF8 (void) {
  CpuCopy16(gBgVram.cbb0 + 0xF520, (u8*)BG_VRAM + 0xF520, 0x1C00);
}
