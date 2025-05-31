#include "global.h"

union {
  u8 tileSet[0x8000];
  u16 tileMap[0x4000];
} extern gVr;

extern u8 g8DF811C[];

//unused?
void sub_8007F6C (u8 arg0, u8 arg1, u16 arg2) {
  gVr.tileMap[0x7C00 + arg1 * 32 + arg0] |= g8DF811C[arg2] + 1;
  gVr.tileMap[0x7C00 + (arg1 + 1) * 32 + arg0] |= g8DF811C[arg2] + 3;
}

void sub_8007FBC (u8 arg0, u8 arg1, u16 arg2) {
  gVr.tileMap[0x7C00 + arg1 * 32 + arg0] |= arg2 + 0x76;
}

u16 sub_08007FEC (u8 arg0, u8 arg1, u16 arg2) {
  return gVr.tileMap[arg2 / 2 + arg1 * 32 + arg0];
}

void sub_800800C (u8 arg0, u8 arg1, u16 arg2, u16 arg3) {
  gVr.tileMap[arg2 / 2 + arg1 * 32 + arg0] = arg3;
}


//split?


//share.c SDK 3.0

//filename: init_RAM?

static void InitWRAM (void);
void InitGfxRAM (void);
static void InitVRAM (void);
static void InitOAM (void);
static void InitPalRAM (void);

// ZeroRAM(s)?
void InitAllRAM (void) {
  InitWRAM();
  InitGfxRAM();
}

//ZeroWRAM?
static void InitWRAM (void) {
  DmaFill32(3, 0, EWRAM_START, 0x40000);
  DmaFill32(3, 0, IWRAM_START, 0x7E00);
}

void InitGfxRAM (void) {
  InitVRAM();
  InitOAM();
  InitPalRAM();
}

static void InitVRAM (void) {
  DmaFill16(3, 0, VRAM, 0x18000);
}

static void InitOAM (void) {
  u16* oam = (u16*)OAM;
  int i;
  for (i = 0; i < 32; i++) {
    *oam++ = 0x200;
    *oam++ = 0;
    *oam++ = 0;
    *oam++ = 0x100;

    *oam++ = 0x200;
    *oam++ = 0;
    *oam++ = 0;
    *oam++ = 0;

    *oam++ = 0x200;
    *oam++ = 0;
    *oam++ = 0;
    *oam++ = 0;

    *oam++ = 0x200;
    *oam++ = 0;
    *oam++ = 0;
    *oam++ = 0x100;
  }
}

static void InitPalRAM (void) {
  DmaFill16(3, 0, PLTT, 0x400);
}

s16 fix_mul (s16 arg0, s16 arg1) {
  s32 tmp = arg0;
  tmp *= arg1;
  tmp /= 0x100;
  return tmp;
}

s16 fix_div (s16 arg0, s16 arg1) {
  s32 tmp = arg0;
  tmp *= 0x100;
  tmp /= arg1;
  return tmp;
}

s16 fix_inverse (s16 arg0) {
  s32 tmp = 0x10000;
  tmp /= arg0;
  return tmp;
}

void sub_80081F4 (void);
void sub_800842C (void);
void IntrMain (void);
void sub_80082E8 (void);

extern void (*gUnk_8089154[])(void);
extern void (*g3000C00[])(void);
extern void (*g201CB20)(void);
extern void (*g201CB24)(void);
extern void (*g201CB28)(void);
extern void (*g201CB2C)(void);
extern u32 g3000400[0x200];
extern vu16 g2020E00;
extern vu8 gRepeatedButtonsCounter; //vu8?
extern vu16 gPressedButtons;
extern u16 gNewButtons;
extern u16 gRepeatedOrNewButtons;
void m4aSoundVSync (void);
void m4aSoundMain (void);
void sub_8034E48 (void);
void sub_80084A4 (void);
void sub_8008530 (void);


void sub_800818C (void) {
  CpuCopy32(gUnk_8089154, g3000C00, 56);
  sub_80081F4();
  g201CB20 = sub_800842C;
  CpuCopy32(IntrMain, g3000400, sizeof(g3000400));
  *(vu32*)0x3007FFC = (vu32)g3000400; // (u32)?
}

void SetVBlankCallback(void (*func)(void)) {
  g201CB20 = func ? func : sub_800842C;
}

void sub_80081F4 (void) {
  g2020E00 &= 0xFFFE;
}

void sub_8008208 (void) {
  REG_IF = 1;
  g2020E00 |= 1;
}

void WaitForVBlank (void) {
  g2020E00 &= 0xFFFE;
  while (1) {
    // Halt()?
    if (g2020E00 & 1)
      break;
  }
  g201CB20 = sub_800842C;
  sub_80082E8();
}

void sub_800825C (void) {
  g2020E00 &= 0xFFFD;
}

void sub_8008270 (void) {
  REG_IF = 2;
  g2020E00 |= 2;
}

void sub_8008288 (void) {
  g2020E00 &= 0xFFFD;
  while (1) {
    if (g2020E00 & 2)
      break;
  }
  g201CB24 = sub_800842C;
}

void InitButtonMaps (void) {
  gPressedButtons = 0;
  gNewButtons = 0;
  gRepeatedOrNewButtons = 0;
  gRepeatedButtonsCounter = 10;
}

void sub_80082E8 (void) {
  unsigned short currentInputs = ~REG_KEYINPUT;
  gNewButtons = currentInputs & ~gPressedButtons;
  if (gPressedButtons == currentInputs) {
    gRepeatedOrNewButtons = 0;
    gRepeatedButtonsCounter--;
    if (!gRepeatedButtonsCounter) {
      gRepeatedButtonsCounter = 3;
      gRepeatedOrNewButtons = gPressedButtons;
    }
  }
  else {
    gRepeatedOrNewButtons = currentInputs;
    gRepeatedButtonsCounter = 10;
  }
  gPressedButtons = currentInputs;
}

// unused?
s32 MathUtil_Mul32(s32 x, s32 y)
{
    s64 result;

    result = x;
    result *= y;
    result /= 256;
    return result;
}

// unused?
s32 MathUtil_Div32(s32 x, s32 y)
{
    s64 _x;
    //pokeemerald has a check for a 0 divisor
    
    _x = x;
    _x *= 256;
    return _x / y;
}

void sub_80083BC (void) {
  REG_IME = 0;
  REG_IE &= ~1;
  REG_IME = 1;
  m4aSoundVSync();
  sub_8034E48();
  if (g201CB20)
    g201CB20();
  sub_8008208();
  m4aSoundMain();
  REG_IME = 0;
  REG_IE |= 1;
  REG_IME = 1;
}

void sub_8008410 (void) {
  if (g201CB24)
    g201CB24();
  sub_8008270();
}

void sub_800842C (void) {
}

void sub_8008430 (void) {
  REG_IME = 0;
  REG_IE &= ~128;
  REG_IME = 1;
  if (g201CB28)
    g201CB28();
  sub_80084A4();
  REG_IME = 0;
  REG_IE |= 128;
  REG_IME = 1;
}

void sub_8008478 (void (*func)(void)) {
  g201CB28 = func;
  if (!func)
    g201CB28 = sub_800842C;
}

void sub_8008490 (void) {
  g2020E00 &= ~128;
}

void sub_80084A4 (void) {
  REG_IF = 128;
  g2020E00 |= 128;
}

void sub_80084BC (void) {
  REG_IME = 0;
  REG_IE &= ~64;
  REG_IME = 1;
  if (g201CB2C)
    g201CB2C();
  sub_8008530();
  REG_IME = 0;
  REG_IE |= 64;
  REG_IME = 1;
}

void sub_8008504 (void (*func)(void)) {
  g201CB2C = func;
  if (!func)
    g201CB2C = sub_800842C;
}

void sub_800851C (void) {
  g2020E00 &= ~64;
}

void sub_8008530 (void) {
  REG_IF = 64;
  g2020E00 |= 64;
}
