#include "global.h"

u8 sub_800B194 (void);
u8 sub_800B088 (void);
int sub_800B10C (void);
int sub_800B0E4 (void);
void sub_800AE1C (void);
void sub_800AE70 (void);
void sub_800AED0 (void);
u16 sub_8035170 (void);
void sub_80351F8 (void);
int sub_800B050 (void);
int sub_800AD84 (void);
int sub_800B0AC (u16);
int sub_800B06C (void);
int sub_800ADA4 (void);
void sub_800B0C8 (u16);
int sub_800B034 (void);

u8 sub_800AC64 (void);
/*
u8 sub_800AC64 (void) {
  u8 temp;
  int r4 = 0xFF;
  if (!sub_800B194())
    return 0;
  temp = sub_800B088();
  if (temp < 3) {
    r4 = (temp << 2) & 0xC;
    r4 |= (sub_800B0E4() << 1) & 2;
    r4 |= sub_800B10C() & 1;

  }
  switch (r4) {
    case 0:
      return 0;
    case 1:
      return 3;
    case 2:
      return 2;
    case 3:
      return 1;
    case 4:
      return 0;
    case 5:
      return 3;
    case 6:
      return 0;
    case 7:
      return 3;
    case 8:
    case 9:
      return 0;
    case 255:
      break;
    case 10:
      return 2;
    case 11:
      return 2;

  }
  return 0;
}*/

void sub_800ACE8 (u8 arg0) {
  switch (arg0) {
    case 2:
      sub_800AE1C();
      break;
    case 3:
      sub_800AE70();
      break;
    case 0:
      sub_800AED0();
      break;
    case 1:
      break;
    default:
      sub_800AED0();
      break;
  }
}

void sub_800AD24 (void) {
  switch (sub_800AC64()) {
    case 2:
      sub_800AE1C();
      break;
    case 3:
      sub_800AE70();
      break;
    case 0:
      break;
  }
}

//save.c?
extern  u8 * g8E0CD10;
int sub_80588C4 (u8*, int, int); //TODO
extern void (*g20245AC)(int, u8*, int);


void SaveGame (void) {
  u16 temp;
  sub_80351F8();
  temp = sub_8035170();
  sub_800B050();
  sub_800AD84();
  sub_800B0AC(temp);
  sub_800B06C();
  sub_800ADA4();
  sub_800B0C8(temp);
  sub_800B034();
}

static inline void Test (int a, u8 *b, int c) {
  g20245AC(a, b, c);
}

int sub_800AD84 (void) {
  int temp = 0xE000040; //TODO inline?
  return sub_80588C4(g8E0CD10, temp, 0x747);
}

int sub_800ADA4 (void) {
  int temp = 0xE004020; //TODO inline?
  return sub_80588C4(g8E0CD10, temp, 0x747);
}

void sub_803519C (void);

void sub_800ADC4 (void) {
  u8 *temp2 = g8E0CD10;
  int temp = 0xE000040;
  g20245AC(temp, temp2, 0x747);
  sub_803519C();
}

void sub_800ADF0 (void) {
  u8 *temp2 = g8E0CD10;
  int temp = 0xE004020;
  g20245AC(temp, temp2, 0x747);
  sub_803519C();
}

u16 sub_800B134 (void);
u16 sub_800B158 (void);

void sub_800AE1C (void) {
  u16 temp;
  Test(0xE000040, g8E0CD10, 0x747);
  sub_803519C();
  temp = sub_800B134();
  sub_800B06C();
  sub_80588C4(g8E0CD10, 0xE004020, 0x747);
  sub_800B0C8(temp);
  sub_800B034();
}

void sub_800AE70 (void) {
  u16 temp;
  Test(0xE004020, g8E0CD10, 0x747);
  sub_803519C();
  temp = sub_800B158();
  sub_800B050();
  sub_80588C4(g8E0CD10, 0xE000040, 0x747);
  sub_800B0AC(temp);
  sub_800B034();
}

void sub_805882C (void);
void sub_800AEC4 (void) {
  sub_805882C();
}

void InitNewGame (void);
void sub_800B1E4 (void);
void sub_800B17C (void);

void sub_800AED0 (void) {
  u8 *ptr = g8E0CD10;
  int temp2 = 0xE000000;
  u16 temp;
  CpuFill16(0, ptr, 0x2000);
  sub_80588C4(ptr, temp2, 0x2000);
  sub_80588C4(ptr, temp2 += 0x2000, 0x2000);
  sub_80588C4(ptr, temp2 += 0x2000, 0x2000);
  sub_80588C4(ptr, temp2 += 0x2000, 0x2000);
  InitNewGame();
  sub_80351F8();
  temp = sub_8035170();
  sub_800B050();
  sub_800AD84();
  sub_800B0AC(temp);
  sub_800B06C();
  sub_800ADA4();
  sub_800B0C8(temp);
  sub_800B1E4();
  sub_800B17C();
  sub_800B034();
}

void sub_800AF68 (void) {
  u8 *ptr = g8E0CD10;
  int temp2 = 0xE000000;
  CpuFill16(0, ptr, 0x2000);
  sub_80588C4(ptr, temp2, 0x2000);
  sub_80588C4(ptr, temp2 += 0x2000, 0x2000);
  sub_80588C4(ptr, temp2 += 0x2000, 0x2000);
  sub_80588C4(ptr, temp2 += 0x2000, 0x2000);
  InitNewGame();
  sub_800B050();
  sub_800B0AC(0xFFFF);
  sub_800B06C();
  sub_800B0C8(0xFFFF);
  sub_800B1E4();
  sub_800B17C();
  sub_800B034();
}

extern u8 g2021C8C;

void InitNewGame (void) {
  ClearPlayerName();
  InitTrunkCards();
  InitNewGameDeck();
  InitDeckCapacity();
  InitDuelistLevel();
  sub_8020168();
  sub_802712C();
  InitNewGameShopCards();
  InitMoney();
  ResetLfsrStateBit();
  InitFlags();
  sub_8055FD0();
  sub_801FB44(&g2021C8C);
  InitLifePoints();
}

int sub_800B034 (void) {
  u8 fill = 0;
  int temp = 0xE000000;
  return sub_80588C4(&fill, temp, 1);
}

int sub_800B050 (void) {
  u8 fill = 1;
  int temp = 0xE000000;
  return sub_80588C4(&fill, temp, 1);
}

int sub_800B06C (void) {
  u8 fill = 2;
  int temp = 0xE000000;
  return sub_80588C4(&fill, temp, 1);
}

u8 sub_800B088 (void) {
  u8 temp;
  u32 a = 0xE000000;
  g20245AC(a, &temp, 1);
  return temp;
}
/*
int sub_800B0AC (u16 arg0) {
  u16 fill = arg0;
  u32 temp = 0x0E00401E;
  return sub_80588C4(&fill, temp, 2);
}*/
