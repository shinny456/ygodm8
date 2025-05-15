#include "global.h"

unsigned char gPlayerName[19]; //TODO: use define for array size

static void sub_800604C (void);
static void sub_80064F4 (void);
static void sub_8006764 (void);
static void sub_800683C (void);
static void sub_80068C4 (void);



void bzero (void*, unsigned);
char *strncpy(char * s1, const char * s2, unsigned n);
u32 strlen(const char*);
extern const char* g8DF8030[];
extern u8 gSharedMem[];

extern u32 gUnk_807A9EC[];
void ClearGraphicsBuffers (void);
void sub_80074CC (void);
void sub_80075B0 (void);
void sub_8006B40 (void);
void sub_8006958 (void);
void sub_8006C60 (void);
void sub_8006E84 (void);
void sub_8007068 (void);
void sub_8007350 (void);
extern u16 gRepeatedOrNewButtons;
extern u16 gNewButtons;
extern u16 gUnk_8081640[][30];
extern u16 gUnk_8081F10[];
extern u16 gUnk_8081440[];
extern u16 gUnk_8081AF0[];
extern u32 gUnk_807F2F0[];

extern struct Unk8DF8114 {
  s8 unk0;
  s8 unk1;
  u8 unk2;
  u8 unk3;
  u8 unk4;
  u8 filler5[4];
  u8 unk9;
  u16 unkA;
  u16 unkC;
  u16 unkE[9];
  u16 unk20[9];
  u16 unk32;
  struct {
    u16 unk0;
    u16 unk2;
  } unk34[7][11];
  u8 filler168[2];
  u16 unk16A;
  u16 unk16C;
  u16 unk16E;
} * gUnk_8DF8114;


void NamingScreenMain (void) {
  u16 i;
  ClearGraphicsBuffers();
  sub_800604C();
  PlayMusic(MUSIC_NAMING_SCREEN);
  LZ77UnCompWram(gUnk_807A9EC, gBgVram.cbb0);
  CpuCopy16(gUnk_8081440, gPaletteBuffer, 512);
  for (i = 0; i < 20; i++)
    CpuCopy16(gUnk_8081640[i], gBgVram.cbb0 + 0xF000 + i * 64, 60);
  CpuCopy16(gUnk_8081F10, gBgVram.cbb0 + 0xF800, 1216);
  CpuCopy16(gUnk_8081AF0, gPaletteBuffer + 256, 512);
  LZ77UnCompWram(gUnk_807F2F0, gBgVram.cbb0 + 0x10000);
  sub_8020DB8((u32*)(gBgVram.cbb0 + 0x8020), (u8*)gUnk_8DF8114->unkE, 0x901);
  sub_800683C();
  SetVBlankCallback(sub_80074CC);
  WaitForVBlank();
  sub_80075B0();

  while (1) {
    if (gNewButtons & START_BUTTON) {
      if (gUnk_8DF8114->unk32 != 5) {
        PlayMusic(SFX_MOVE_CURSOR);
        gUnk_8DF8114->unk32 = 5;
      }
      else if (gUnk_8DF8114->unkE[0] != 0x4081) {
        PlayMusic(SFX_SELECT);
        gUnk_8DF8114->unk9 = 1;
        sub_8006B40();
        return;
      }
      else
        PlayMusic(SFX_FORBIDDEN);
      gUnk_8DF8114->unk16A = 0;
    }
    if (gNewButtons & A_BUTTON && gUnk_8DF8114->unk32 == 5) {
      if (gUnk_8DF8114->unkE[0] != 0x4081) {
        PlayMusic(SFX_SELECT);
        gUnk_8DF8114->unk9 = 1;
        sub_8006B40();
        return;
      }
      else
        PlayMusic(SFX_FORBIDDEN);
    }
    if (gRepeatedOrNewButtons & R_BUTTON) {
      if (gUnk_8DF8114->unk2 < 8) {
        PlayMusic(SFX_MOVE_CURSOR);
        gUnk_8DF8114->unk2++;
      }
    }
    else if (gRepeatedOrNewButtons & L_BUTTON && gUnk_8DF8114->unk2) {
      PlayMusic(SFX_MOVE_CURSOR);
      gUnk_8DF8114->unk2--;
    }
    switch (gUnk_8DF8114->unk3) {
      case 0:
        sub_8006764();
        sub_80064F4();
        break;
      case 1:
        if (gNewButtons & A_BUTTON) {
          if (gUnk_8DF8114->unk32 != 5)
            PlayMusic(SFX_SELECT);
          gUnk_8DF8114->unk0 = 0;
          gUnk_8DF8114->unk1 = 0;
          gUnk_8DF8114->unk3 = 0;
        }
        if (gNewButtons & B_BUTTON) {
          if (gUnk_8DF8114->unk32 == 5) {
            PlayMusic(SFX_CANCEL);
            gUnk_8DF8114->unk32 = 3;
            gUnk_8DF8114->unk0 = 0;
            gUnk_8DF8114->unk1 = 0;
            gUnk_8DF8114->unk3 = 0;
            gUnk_8DF8114->unk16A = 0;
            sub_800683C();
          }
          else {
            PlayMusic(SFX_SELECT);
            gUnk_8DF8114->unk0 = 0;
            gUnk_8DF8114->unk1 = 0;
            gUnk_8DF8114->unk3 = 0;
          }
        }
        if (gRepeatedOrNewButtons & DPAD_LEFT) {
          gUnk_8DF8114->unk3 = 0;
          gUnk_8DF8114->unk0 = 10;
          gUnk_8DF8114->unk32 = 3;
        }
        else if (gRepeatedOrNewButtons & DPAD_RIGHT) {
          gUnk_8DF8114->unk3 = 0;
          gUnk_8DF8114->unk0 = 0;
          gUnk_8DF8114->unk32 = 3;
        }
        break;
    }
    if (gUnk_8DF8114->unk32 == 5)
      gUnk_8DF8114->unk3 = 1;
    sub_8006958();
    sub_8006B40();
    sub_8006C60();
    sub_8006E84();
    sub_8007068();
    sub_8007350();
    switch (gUnk_8DF8114->unk4) {
      case 0:
        gUnk_8DF8114->unk16C += 16;
        gUnk_8DF8114->unk16E += 16;
        if (gUnk_8DF8114->unk16C == 512)
          gUnk_8DF8114->unk4 = 1;
        break;
      case 1:
        gUnk_8DF8114->unk16C -= 16;
        gUnk_8DF8114->unk16E -= 16;
        if (gUnk_8DF8114->unk16C == 320)
          gUnk_8DF8114->unk4 = 0;
        break;
      default:
        gUnk_8DF8114->unk4 = 0;
        break;
    }
    LoadOam();
    WaitForVBlank();
  }
}

static void sub_800604C (void) {
  u8 i;
  bzero(gSharedMem, 0x4314);
  strncpy((u8*)gUnk_8DF8114->unkE, gPlayerName, 19);
  for (i = 0; i < 8; i++)
    if (!gUnk_8DF8114->unkE[i]) {
      gUnk_8DF8114->unkE[i] = 0x4081;
    }
  gUnk_8DF8114->unkE[8] = 0;
  gUnk_8DF8114->unk16C = 256;
  gUnk_8DF8114->unk16E = 256;
  gUnk_8DF8114->unk32 = 3;
}
/*
static void sub_80060BC (void) {
  u16 i;
  if (gUnk_8DF8114->unk32 == 5)
    return;
  gUnk_8DF8114->unk20[gUnk_8DF8114->unk2] = gUnk_8DF8114->unkE[gUnk_8DF8114->unk2];
  // problematic part
  gUnk_8DF8114->unkE[gUnk_8DF8114->unk2] = gUnk_8DF8114->unk34[gUnk_8DF8114->unk1][gUnk_8DF8114->unk0].unk0;
  if (gUnk_8DF8114->unk2) {
    if (gUnk_8DF8114->unkE[gUnk_8DF8114->unk2] == 0x4A81) {
      gUnk_8DF8114->unkE[gUnk_8DF8114->unk2] = gUnk_8DF8114->unk20[gUnk_8DF8114->unk2];
      gUnk_8DF8114->unk2--;
      switch (gUnk_8DF8114->unkE[gUnk_8DF8114->unk2]) {
        case 0x7783:
        case 0x5883:
        case 0x5083:
        case 0x4A83:
        case 0x4C83:
        case 0x4E83:
        case 0x5481:
        case 0x5281:
        case 0x5283:
        case 0x5483:
        case 0x5683:
        case 0x6383:
        case 0x5C83:
        case 0x5A83:
        case 0x5E83:
        case 0x6083:
        case 0x6E83:
        case 0x6583:
        case 0x6783:
        case 0x7183:
        case 0x7483:
        case 0xBB82:
        case 0xAF82:
        case 0xA982:
        case 0x7A83:
        case 0xAB82:
        case 0xAD82:
        case 0xB582:
        case 0xB182:
        case 0xB382:
        case 0xB782:
        case 0xB982:
        case 0xC682:
        case 0xBF82:
        case 0xBD82:
        case 0xC282:
        case 0xC482:
        case 0xD382:
        case 0xD082:
        case 0xCD82:
        case 0xD682:
        case 0xD982:
          gUnk_8DF8114->unkE[gUnk_8DF8114->unk2] += 256;
          break;
        case 0x4583:
          gUnk_8DF8114->unkE[gUnk_8DF8114->unk2] = 0x9483;
          break;
        default:
          gUnk_8DF8114->unk2++;
          gUnk_8DF8114->unkE[gUnk_8DF8114->unk2] = 0x4A81;
          break;
      }
    }
    else if (gUnk_8DF8114->unkE[gUnk_8DF8114->unk2] == 0x4B81) {
      //_08006378
      gUnk_8DF8114->unkE[gUnk_8DF8114->unk2] = gUnk_8DF8114->unk20[gUnk_8DF8114->unk2];
      gUnk_8DF8114->unk2--;
      switch (gUnk_8DF8114->unkE[gUnk_8DF8114->unk2]) {
        case 0x7A83:
        case 0x7183:
        case 0x6E83:
        case 0x7483:
        case 0x7783:
        case 0xD382:
        case 0xCD82:
        case 0xD082:
        case 0xD682:
        case 0xD982:
          gUnk_8DF8114->unkE[gUnk_8DF8114->unk2] += 512;
          break;
        default:
          gUnk_8DF8114->unk2++;
          gUnk_8DF8114->unkE[gUnk_8DF8114->unk2] = 0x4B81;
          break;
      }
    }
    else if (gUnk_8DF8114->unk2 > 7) {
      //_08006450
      gUnk_8DF8114->unk2 = 7;
      gUnk_8DF8114->unkE[gUnk_8DF8114->unk2] = gUnk_8DF8114->unkE[gUnk_8DF8114->unk2 + 1];
    }
  }
  //_0800646E
  for (i = 0; i < 8; i++) {
    if (i % 2)
      sub_8020968(gBgVram.cbb0 + 0x8000 + (i / 2 * 4 + 2) * 32, gUnk_8DF8114->unkE[i], 0x901);
    else
      sub_8020968(gBgVram.cbb0 + 0x8000 + (i / 2 * 4 + 1) * 32, gUnk_8DF8114->unkE[i], 0x901);
  }
  LoadCharblock2();
  if (gUnk_8DF8114->unk2 <= 7)
    gUnk_8DF8114->unk2++;
  if (gUnk_8DF8114->unk2 == 8)
    gUnk_8DF8114->unk32 = 5;
}
*/

NAKED
static void sub_80060BC (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	ldr r0, _0800616C\n\
	mov ip, r0\n\
	ldr r4, [r0]\n\
	ldrh r0, [r4, #0x32]\n\
	cmp r0, #5\n\
	bne _080060CC\n\
	b _080064E6\n\
_080060CC:\n\
	ldrb r0, [r4, #2]\n\
	lsls r0, r0, #1\n\
	adds r6, r4, #0\n\
	adds r6, #0x20\n\
	adds r1, r6, r0\n\
	adds r5, r4, #0\n\
	adds r5, #0xe\n\
	adds r0, r5, r0\n\
	ldrh r0, [r0]\n\
	strh r0, [r1]\n\
	ldrb r2, [r4, #2]\n\
	lsls r2, r2, #1\n\
	adds r2, r5, r2\n\
	movs r0, #0\n\
	ldrsb r0, [r4, r0]\n\
	movs r3, #1\n\
	ldrsb r3, [r4, r3]\n\
	movs r1, #0x2c\n\
	muls r1, r3, r1\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r4\n\
	adds r1, r1, r0\n\
	ldrh r0, [r1, #0x34]\n\
	strh r0, [r2]\n\
	ldrb r0, [r4, #2]\n\
	cmp r0, #0\n\
	bne _08006104\n\
	b _0800646E\n\
_08006104:\n\
	adds r7, r0, #0\n\
	lsls r1, r7, #1\n\
	adds r2, r5, r1\n\
	ldrh r3, [r2]\n\
	ldr r0, _08006170\n\
	cmp r3, r0\n\
	beq _08006114\n\
	b _08006378\n\
_08006114:\n\
	adds r0, r6, r1\n\
	ldrh r0, [r0]\n\
	strh r0, [r2]\n\
	ldrb r0, [r4, #2]\n\
	subs r0, #1\n\
	strb r0, [r4, #2]\n\
	mov r2, ip\n\
	ldr r1, [r2]\n\
	ldrb r0, [r1, #2]\n\
	lsls r0, r0, #1\n\
	adds r1, #0xe\n\
	adds r1, r1, r0\n\
	ldrh r2, [r1]\n\
	ldr r0, _08006174\n\
	cmp r2, r0\n\
	bne _08006136\n\
	b _08006328\n\
_08006136:\n\
	cmp r2, r0\n\
	ble _0800613C\n\
	b _08006244\n\
_0800613C:\n\
	ldr r0, _08006178\n\
	cmp r2, r0\n\
	bne _08006144\n\
	b _08006328\n\
_08006144:\n\
	cmp r2, r0\n\
	bgt _080061D0\n\
	ldr r0, _0800617C\n\
	cmp r2, r0\n\
	bne _08006150\n\
	b _08006328\n\
_08006150:\n\
	cmp r2, r0\n\
	bgt _0800619C\n\
	ldr r0, _08006180\n\
	cmp r2, r0\n\
	bne _0800615C\n\
	b _08006328\n\
_0800615C:\n\
	cmp r2, r0\n\
	bgt _08006188\n\
	ldr r0, _08006184\n\
	cmp r2, r0\n\
	bne _08006168\n\
	b _08006348\n\
_08006168:\n\
	b _08006354\n\
	.align 2, 0\n\
_0800616C: .4byte gUnk_8DF8114\n\
_08006170: .4byte 0x00004A81\n\
_08006174: .4byte 0x00007783\n\
_08006178: .4byte 0x00005883\n\
_0800617C: .4byte 0x00005083\n\
_08006180: .4byte 0x00004A83\n\
_08006184: .4byte 0x00004583\n\
_08006188:\n\
	ldr r0, _08006194\n\
	cmp r2, r0\n\
	bne _08006190\n\
	b _08006328\n\
_08006190:\n\
	ldr r0, _08006198\n\
	b _0800630A\n\
	.align 2, 0\n\
_08006194: .4byte 0x00004C83\n\
_08006198: .4byte 0x00004E83\n\
_0800619C:\n\
	ldr r0, _080061B4\n\
	cmp r2, r0\n\
	bne _080061A4\n\
	b _08006328\n\
_080061A4:\n\
	cmp r2, r0\n\
	bgt _080061BC\n\
	ldr r0, _080061B8\n\
	cmp r2, r0\n\
	bne _080061B0\n\
	b _08006328\n\
_080061B0:\n\
	adds r0, #2\n\
	b _0800630A\n\
	.align 2, 0\n\
_080061B4: .4byte 0x00005481\n\
_080061B8: .4byte 0x00005281\n\
_080061BC:\n\
	ldr r0, _080061C8\n\
	cmp r2, r0\n\
	bne _080061C4\n\
	b _08006328\n\
_080061C4:\n\
	ldr r0, _080061CC\n\
	b _0800630A\n\
	.align 2, 0\n\
_080061C8: .4byte 0x00005483\n\
_080061CC: .4byte 0x00005683\n\
_080061D0:\n\
	ldr r0, _080061EC\n\
	cmp r2, r0\n\
	bne _080061D8\n\
	b _08006328\n\
_080061D8:\n\
	cmp r2, r0\n\
	bgt _0800620C\n\
	ldr r0, _080061F0\n\
	cmp r2, r0\n\
	bne _080061E4\n\
	b _08006328\n\
_080061E4:\n\
	cmp r2, r0\n\
	bgt _080061F8\n\
	ldr r0, _080061F4\n\
	b _0800630A\n\
	.align 2, 0\n\
_080061EC: .4byte 0x00006383\n\
_080061F0: .4byte 0x00005C83\n\
_080061F4: .4byte 0x00005A83\n\
_080061F8:\n\
	ldr r0, _08006204\n\
	cmp r2, r0\n\
	bne _08006200\n\
	b _08006328\n\
_08006200:\n\
	ldr r0, _08006208\n\
	b _0800630A\n\
	.align 2, 0\n\
_08006204: .4byte 0x00005E83\n\
_08006208: .4byte 0x00006083\n\
_0800620C:\n\
	ldr r0, _08006224\n\
	cmp r2, r0\n\
	bne _08006214\n\
	b _08006328\n\
_08006214:\n\
	cmp r2, r0\n\
	bgt _08006230\n\
	ldr r0, _08006228\n\
	cmp r2, r0\n\
	bne _08006220\n\
	b _08006328\n\
_08006220:\n\
	ldr r0, _0800622C\n\
	b _0800630A\n\
	.align 2, 0\n\
_08006224: .4byte 0x00006E83\n\
_08006228: .4byte 0x00006583\n\
_0800622C: .4byte 0x00006783\n\
_08006230:\n\
	ldr r0, _0800623C\n\
	cmp r2, r0\n\
	bne _08006238\n\
	b _08006328\n\
_08006238:\n\
	ldr r0, _08006240\n\
	b _0800630A\n\
	.align 2, 0\n\
_0800623C: .4byte 0x00007183\n\
_08006240: .4byte 0x00007483\n\
_08006244:\n\
	ldr r0, _08006268\n\
	cmp r2, r0\n\
	beq _08006328\n\
	cmp r2, r0\n\
	bgt _080062C0\n\
	ldr r0, _0800626C\n\
	cmp r2, r0\n\
	beq _08006328\n\
	cmp r2, r0\n\
	bgt _0800628C\n\
	ldr r0, _08006270\n\
	cmp r2, r0\n\
	beq _08006328\n\
	cmp r2, r0\n\
	bgt _08006278\n\
	ldr r0, _08006274\n\
	b _0800630A\n\
	.align 2, 0\n\
_08006268: .4byte 0x0000BB82\n\
_0800626C: .4byte 0x0000AF82\n\
_08006270: .4byte 0x0000A982\n\
_08006274: .4byte 0x00007A83\n\
_08006278:\n\
	ldr r0, _08006284\n\
	cmp r2, r0\n\
	beq _08006328\n\
	ldr r0, _08006288\n\
	b _0800630A\n\
	.align 2, 0\n\
_08006284: .4byte 0x0000AB82\n\
_08006288: .4byte 0x0000AD82\n\
_0800628C:\n\
	ldr r0, _080062A0\n\
	cmp r2, r0\n\
	beq _08006328\n\
	cmp r2, r0\n\
	bgt _080062AC\n\
	ldr r0, _080062A4\n\
	cmp r2, r0\n\
	beq _08006328\n\
	ldr r0, _080062A8\n\
	b _0800630A\n\
	.align 2, 0\n\
_080062A0: .4byte 0x0000B582\n\
_080062A4: .4byte 0x0000B182\n\
_080062A8: .4byte 0x0000B382\n\
_080062AC:\n\
	ldr r0, _080062B8\n\
	cmp r2, r0\n\
	beq _08006328\n\
	ldr r0, _080062BC\n\
	b _0800630A\n\
	.align 2, 0\n\
_080062B8: .4byte 0x0000B782\n\
_080062BC: .4byte 0x0000B982\n\
_080062C0:\n\
	ldr r0, _080062D8\n\
	cmp r2, r0\n\
	beq _08006328\n\
	cmp r2, r0\n\
	bgt _080062F8\n\
	ldr r0, _080062DC\n\
	cmp r2, r0\n\
	beq _08006328\n\
	cmp r2, r0\n\
	bgt _080062E4\n\
	ldr r0, _080062E0\n\
	b _0800630A\n\
	.align 2, 0\n\
_080062D8: .4byte 0x0000C682\n\
_080062DC: .4byte 0x0000BF82\n\
_080062E0: .4byte 0x0000BD82\n\
_080062E4:\n\
	ldr r0, _080062F0\n\
	cmp r2, r0\n\
	beq _08006328\n\
	ldr r0, _080062F4\n\
	b _0800630A\n\
	.align 2, 0\n\
_080062F0: .4byte 0x0000C282\n\
_080062F4: .4byte 0x0000C482\n\
_080062F8:\n\
	ldr r0, _08006310\n\
	cmp r2, r0\n\
	beq _08006328\n\
	cmp r2, r0\n\
	bgt _0800631C\n\
	ldr r0, _08006314\n\
	cmp r2, r0\n\
	beq _08006328\n\
	ldr r0, _08006318\n\
_0800630A:\n\
	cmp r2, r0\n\
	beq _08006328\n\
	b _08006354\n\
	.align 2, 0\n\
_08006310: .4byte 0x0000D382\n\
_08006314: .4byte 0x0000CD82\n\
_08006318: .4byte 0x0000D082\n\
_0800631C:\n\
	ldr r0, _0800633C\n\
	cmp r2, r0\n\
	beq _08006328\n\
	ldr r0, _08006340\n\
	cmp r2, r0\n\
	bne _08006354\n\
_08006328:\n\
	ldr r0, _08006344\n\
	ldr r1, [r0]\n\
	ldrb r0, [r1, #2]\n\
	lsls r0, r0, #1\n\
	adds r1, #0xe\n\
	adds r1, r1, r0\n\
	movs r2, #0x80\n\
	lsls r2, r2, #1\n\
	b _08006414\n\
	.align 2, 0\n\
_0800633C: .4byte 0x0000D682\n\
_08006340: .4byte 0x0000D982\n\
_08006344: .4byte gUnk_8DF8114\n\
_08006348:\n\
	ldr r0, _08006350\n\
	strh r0, [r1]\n\
	b _0800646E\n\
	.align 2, 0\n\
_08006350: .4byte 0x00009483\n\
_08006354:\n\
	ldr r2, _08006370\n\
	ldr r1, [r2]\n\
	ldrb r0, [r1, #2]\n\
	adds r0, #1\n\
	strb r0, [r1, #2]\n\
	ldr r1, [r2]\n\
	ldrb r0, [r1, #2]\n\
	lsls r0, r0, #1\n\
	adds r1, #0xe\n\
	adds r1, r1, r0\n\
	ldr r0, _08006374\n\
	strh r0, [r1]\n\
	b _0800646E\n\
	.align 2, 0\n\
_08006370: .4byte gUnk_8DF8114\n\
_08006374: .4byte 0x00004A81\n\
_08006378:\n\
	ldr r0, _080063B0\n\
	cmp r3, r0\n\
	bne _08006450\n\
	adds r0, r6, r1\n\
	ldrh r0, [r0]\n\
	strh r0, [r2]\n\
	ldrb r0, [r4, #2]\n\
	subs r0, #1\n\
	strb r0, [r4, #2]\n\
	mov r1, ip\n\
	ldr r0, [r1]\n\
	ldrb r1, [r0, #2]\n\
	lsls r1, r1, #1\n\
	adds r0, #0xe\n\
	adds r0, r0, r1\n\
	ldrh r1, [r0]\n\
	ldr r0, _080063B4\n\
	cmp r1, r0\n\
	beq _08006404\n\
	cmp r1, r0\n\
	bgt _080063D4\n\
	ldr r0, _080063B8\n\
	cmp r1, r0\n\
	beq _08006404\n\
	cmp r1, r0\n\
	bgt _080063C0\n\
	ldr r0, _080063BC\n\
	b _080063E6\n\
	.align 2, 0\n\
_080063B0: .4byte 0x00004B81\n\
_080063B4: .4byte 0x00007A83\n\
_080063B8: .4byte 0x00007183\n\
_080063BC: .4byte 0x00006E83\n\
_080063C0:\n\
	ldr r0, _080063CC\n\
	cmp r1, r0\n\
	beq _08006404\n\
	ldr r0, _080063D0\n\
	b _080063E6\n\
	.align 2, 0\n\
_080063CC: .4byte 0x00007483\n\
_080063D0: .4byte 0x00007783\n\
_080063D4:\n\
	ldr r0, _080063EC\n\
	cmp r1, r0\n\
	beq _08006404\n\
	cmp r1, r0\n\
	bgt _080063F8\n\
	ldr r0, _080063F0\n\
	cmp r1, r0\n\
	beq _08006404\n\
	ldr r0, _080063F4\n\
_080063E6:\n\
	cmp r1, r0\n\
	beq _08006404\n\
	b _0800642C\n\
	.align 2, 0\n\
_080063EC: .4byte 0x0000D382\n\
_080063F0: .4byte 0x0000CD82\n\
_080063F4: .4byte 0x0000D082\n\
_080063F8:\n\
	ldr r0, _08006420\n\
	cmp r1, r0\n\
	beq _08006404\n\
	ldr r0, _08006424\n\
	cmp r1, r0\n\
	bne _0800642C\n\
_08006404:\n\
	ldr r0, _08006428\n\
	ldr r1, [r0]\n\
	ldrb r0, [r1, #2]\n\
	lsls r0, r0, #1\n\
	adds r1, #0xe\n\
	adds r1, r1, r0\n\
	movs r2, #0x80\n\
	lsls r2, r2, #2\n\
_08006414:\n\
	adds r0, r2, #0\n\
	ldrh r2, [r1]\n\
	adds r0, r0, r2\n\
	strh r0, [r1]\n\
	b _0800646E\n\
	.align 2, 0\n\
_08006420: .4byte 0x0000D682\n\
_08006424: .4byte 0x0000D982\n\
_08006428: .4byte gUnk_8DF8114\n\
_0800642C:\n\
	ldr r2, _08006448\n\
	ldr r1, [r2]\n\
	ldrb r0, [r1, #2]\n\
	adds r0, #1\n\
	strb r0, [r1, #2]\n\
	ldr r1, [r2]\n\
	ldrb r0, [r1, #2]\n\
	lsls r0, r0, #1\n\
	adds r1, #0xe\n\
	adds r1, r1, r0\n\
	ldr r0, _0800644C\n\
	strh r0, [r1]\n\
	b _0800646E\n\
	.align 2, 0\n\
_08006448: .4byte gUnk_8DF8114\n\
_0800644C: .4byte 0x00004B81\n\
_08006450:\n\
	cmp r7, #7\n\
	bls _0800646E\n\
	movs r0, #7\n\
	strb r0, [r4, #2]\n\
	mov r1, ip\n\
	ldr r0, [r1]\n\
	ldrb r1, [r0, #2]\n\
	lsls r2, r1, #1\n\
	adds r0, #0xe\n\
	adds r2, r0, r2\n\
	adds r1, #1\n\
	lsls r1, r1, #1\n\
	adds r0, r0, r1\n\
	ldrh r0, [r0]\n\
	strh r0, [r2]\n\
  \n\
  \n\
  \n\
  \n\
_0800646E:\n\
	movs r4, #0\n\
	ldr r6, _08006498\n\
	ldr r5, _0800649C\n\
_08006474:\n\
	movs r0, #1\n\
	ands r0, r4\n\
	cmp r0, #0\n\
	beq _080064A4\n\
	lsrs r0, r4, #1\n\
	lsls r0, r0, #2\n\
	adds r0, #2\n\
	lsls r0, r0, #5\n\
	adds r0, r0, r6\n\
	ldr r1, [r5]\n\
	lsls r2, r4, #1\n\
	adds r1, #0xe\n\
	adds r1, r1, r2\n\
	ldrh r1, [r1]\n\
	ldr r2, _080064A0\n\
	bl sub_8020968\n\
	b _080064BE\n\
	.align 2, 0\n\
_08006498: .4byte 0x02008400\n\
_0800649C: .4byte gUnk_8DF8114\n\
_080064A0: .4byte 0x00000901\n\
_080064A4:\n\
	lsrs r0, r4, #1\n\
	lsls r0, r0, #2\n\
	adds r0, #1\n\
	lsls r0, r0, #5\n\
	adds r0, r0, r6\n\
	ldr r1, [r5]\n\
	lsls r2, r4, #1\n\
	adds r1, #0xe\n\
	adds r1, r1, r2\n\
	ldrh r1, [r1]\n\
	ldr r2, _080064EC\n\
	bl sub_8020968\n\
_080064BE:\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r4, r0, #0x10\n\
	cmp r4, #7\n\
	bls _08006474\n\
	bl LoadCharblock2\n\
	ldr r2, _080064F0\n\
	ldr r1, [r2]\n\
	ldrb r0, [r1, #2]\n\
	cmp r0, #7\n\
	bhi _080064DA\n\
	adds r0, #1\n\
	strb r0, [r1, #2]\n\
_080064DA:\n\
	ldr r1, [r2]\n\
	ldrb r0, [r1, #2]\n\
	cmp r0, #8\n\
	bne _080064E6\n\
	movs r0, #5\n\
	strh r0, [r1, #0x32]\n\
_080064E6:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080064EC: .4byte 0x00000901\n\
_080064F0: .4byte gUnk_8DF8114");
}

/*
static void sub_80064F4 (void) {
  if (gRepeatedOrNewButtons & DPAD_UP) {
    PlayMusic(SFX_MOVE_CURSOR);
    if (gUnk_8DF8114->unk1 == 7)
      gUnk_8DF8114->unk1 = 6;
    else if (gUnk_8DF8114->unk1 > 0)
      gUnk_8DF8114->unk1--;
    else if (!gUnk_8DF8114->unk16A && gUnk_8DF8114->unk16A + 154 >= strlen(g8DF8030[gUnk_8DF8114->unk32]) / 2)
      gUnk_8DF8114->unk1 = 6;
  }
  if (gRepeatedOrNewButtons & DPAD_DOWN) {
    PlayMusic(SFX_MOVE_CURSOR);
    if (gUnk_8DF8114->unk1 == -1)
      gUnk_8DF8114->unk1 = 0;
    else if (gUnk_8DF8114->unk1 < 6)
      gUnk_8DF8114->unk1++;
    else if (!gUnk_8DF8114->unk16A && gUnk_8DF8114->unk16A + 154 >= strlen(g8DF8030[gUnk_8DF8114->unk32]) / 2)
      gUnk_8DF8114->unk1 = 0;
  }
  if (gRepeatedOrNewButtons & DPAD_LEFT) {
    PlayMusic(SFX_MOVE_CURSOR);
    if (gUnk_8DF8114->unk0 > 0) {
      if (gUnk_8DF8114->unk32 < 3 && gUnk_8DF8114->unk0 == 6)
        gUnk_8DF8114->unk0 -= 2;
      else
        gUnk_8DF8114->unk0--;
    }
    else {
      gUnk_8DF8114->unk0 = 10;
      gUnk_8DF8114->unk3 = 1;
      gUnk_8DF8114->unk32 = 5;
    }
  }
  if (gRepeatedOrNewButtons & DPAD_RIGHT) {
    PlayMusic(SFX_MOVE_CURSOR);
    if (gUnk_8DF8114->unk0 < 10) {
      if (gUnk_8DF8114->unk32 < 3 && gUnk_8DF8114->unk0 == 4)
        gUnk_8DF8114->unk0 += 2;
      else
        gUnk_8DF8114->unk0++;
    }
    else {
      gUnk_8DF8114->unk0 = 0;
      gUnk_8DF8114->unk3 = 1;
      gUnk_8DF8114->unk32 = 5;
    }
  }
  if (gRepeatedOrNewButtons & 1) {
    PlayMusic(SFX_SELECT);
    if (gUnk_8DF8114->unk32 == 2) {
      //problematic part
      if (gUnk_8DF8114->unk34[gUnk_8DF8114->unk1][gUnk_8DF8114->unk0].unk0 != 0x4081) {
        gUnk_8DF8114->unk32 = gUnk_8DF8114->unk0 + 6 + gUnk_8DF8114->unk1 * 11;
        gUnk_8DF8114->unkA = gUnk_8DF8114->unk0;
        gUnk_8DF8114->unkC = gUnk_8DF8114->unk1;
        gUnk_8DF8114->unk0 = 0;
        gUnk_8DF8114->unk1 = 0;
        gUnk_8DF8114->unk16A = 0;
      }
      else {
        sub_80060BC();
      }
      sub_800683C();
    }
    else {
      sub_80060BC();
      if (gUnk_8DF8114->unk32 > 5) {
        gUnk_8DF8114->unk32 = 2;
        gUnk_8DF8114->unk0 = gUnk_8DF8114->unkA;
        gUnk_8DF8114->unk1 = gUnk_8DF8114->unkC;
        gUnk_8DF8114->unk16A = 0;
        sub_800683C();
      }
    }
  }
  if (gRepeatedOrNewButtons & 2) {
    if (gUnk_8DF8114->unk32 > 5) {
      gUnk_8DF8114->unk32 = 2;
      gUnk_8DF8114->unk0 = gUnk_8DF8114->unkA;
      gUnk_8DF8114->unk1 = gUnk_8DF8114->unkC;
      gUnk_8DF8114->unk16A = 0;
      sub_800683C();
    }
    else
      sub_80068C4();
  }
}*/

NAKED
static void sub_80064F4 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	ldr r0, _0800651C\n\
	ldrh r1, [r0]\n\
	movs r0, #0x40\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08006558\n\
	movs r0, #0x36\n\
	bl PlayMusic\n\
	ldr r5, _08006520\n\
	ldr r2, [r5]\n\
	ldrb r0, [r2, #1]\n\
	movs r1, #1\n\
	ldrsb r1, [r2, r1]\n\
	cmp r1, #7\n\
	bne _08006524\n\
	movs r0, #6\n\
	strb r0, [r2, #1]\n\
	b _08006558\n\
	.align 2, 0\n\
_0800651C: .4byte 0x02020DF4\n\
_08006520: .4byte gUnk_8DF8114\n\
_08006524:\n\
	cmp r1, #0\n\
	ble _0800652E\n\
	subs r0, #1\n\
	strb r0, [r2, #1]\n\
	b _08006558\n\
_0800652E:\n\
	movs r0, #0xb5\n\
	lsls r0, r0, #1\n\
	adds r1, r2, r0\n\
	ldrh r0, [r1]\n\
	cmp r0, #0\n\
	bne _08006558\n\
	adds r4, r0, #0\n\
	adds r4, #0x9a\n\
	ldr r1, _08006584\n\
	ldrh r0, [r2, #0x32]\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r1\n\
	ldr r0, [r0]\n\
	bl strlen\n\
	lsrs r0, r0, #1\n\
	cmp r4, r0\n\
	blo _08006558\n\
	ldr r1, [r5]\n\
	movs r0, #6\n\
	strb r0, [r1, #1]\n\
_08006558:\n\
	ldr r0, _08006588\n\
	ldrh r1, [r0]\n\
	movs r0, #0x80\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _080065C2\n\
	movs r0, #0x36\n\
	bl PlayMusic\n\
	ldr r6, _0800658C\n\
	ldr r2, [r6]\n\
	ldrb r3, [r2, #1]\n\
	movs r1, #1\n\
	ldrsb r1, [r2, r1]\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _08006590\n\
	movs r0, #0\n\
	strb r0, [r2, #1]\n\
	b _080065C2\n\
	.align 2, 0\n\
_08006584: .4byte g8DF8030\n\
_08006588: .4byte 0x02020DF4\n\
_0800658C: .4byte gUnk_8DF8114\n\
_08006590:\n\
	cmp r1, #5\n\
	bgt _0800659A\n\
	adds r0, r3, #1\n\
	strb r0, [r2, #1]\n\
	b _080065C2\n\
_0800659A:\n\
	movs r1, #0xb5\n\
	lsls r1, r1, #1\n\
	adds r0, r2, r1\n\
	ldrh r5, [r0]\n\
	cmp r5, #0\n\
	bne _080065C2\n\
	adds r4, r5, #0\n\
	adds r4, #0x9a\n\
	ldr r1, _080065F4\n\
	ldrh r0, [r2, #0x32]\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r1\n\
	ldr r0, [r0]\n\
	bl strlen\n\
	lsrs r0, r0, #1\n\
	cmp r4, r0\n\
	blo _080065C2\n\
	ldr r0, [r6]\n\
	strb r5, [r0, #1]\n\
_080065C2:\n\
	ldr r2, _080065F8\n\
	ldrh r1, [r2]\n\
	movs r0, #0x20\n\
	ands r0, r1\n\
	adds r5, r2, #0\n\
	cmp r0, #0\n\
	beq _08006628\n\
	movs r0, #0x36\n\
	bl PlayMusic\n\
	ldr r3, _080065FC\n\
	ldr r1, [r3]\n\
	ldrb r4, [r1]\n\
	movs r2, #0\n\
	ldrsb r2, [r1, r2]\n\
	cmp r2, #0\n\
	ble _08006618\n\
	ldrh r0, [r1, #0x32]\n\
	cmp r0, #2\n\
	bhi _08006600\n\
	cmp r2, #6\n\
	bne _08006600\n\
	subs r0, r4, #2\n\
	strb r0, [r1]\n\
	b _08006628\n\
	.align 2, 0\n\
_080065F4: .4byte g8DF8030\n\
_080065F8: .4byte 0x02020DF4\n\
_080065FC: .4byte gUnk_8DF8114\n\
_08006600:\n\
	ldr r0, _08006610\n\
	ldr r1, [r0]\n\
	ldrb r0, [r1]\n\
	subs r0, #1\n\
	strb r0, [r1]\n\
	ldr r5, _08006614\n\
	b _08006628\n\
	.align 2, 0\n\
_08006610: .4byte gUnk_8DF8114\n\
_08006614: .4byte 0x02020DF4\n\
_08006618:\n\
	movs r0, #0xa\n\
	strb r0, [r1]\n\
	ldr r1, [r3]\n\
	movs r0, #1\n\
	strb r0, [r1, #3]\n\
	ldr r1, [r3]\n\
	movs r0, #5\n\
	strh r0, [r1, #0x32]\n\
_08006628:\n\
	ldrh r1, [r5]\n\
	movs r0, #0x10\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0800667C\n\
	movs r0, #0x36\n\
	bl PlayMusic\n\
	ldr r3, _08006658\n\
	ldr r1, [r3]\n\
	ldrb r4, [r1]\n\
	movs r2, #0\n\
	ldrsb r2, [r1, r2]\n\
	cmp r2, #9\n\
	bgt _0800666C\n\
	ldrh r0, [r1, #0x32]\n\
	cmp r0, #2\n\
	bhi _0800665C\n\
	cmp r2, #4\n\
	bne _0800665C\n\
	adds r0, r4, #2\n\
	strb r0, [r1]\n\
	b _0800667C\n\
	.align 2, 0\n\
_08006658: .4byte gUnk_8DF8114\n\
_0800665C:\n\
	ldr r0, _08006668\n\
	ldr r1, [r0]\n\
	ldrb r0, [r1]\n\
	adds r0, #1\n\
	strb r0, [r1]\n\
	b _0800667C\n\
	.align 2, 0\n\
_08006668: .4byte gUnk_8DF8114\n\
_0800666C:\n\
	movs r0, #0\n\
	strb r0, [r1]\n\
	ldr r1, [r3]\n\
	movs r0, #1\n\
	strb r0, [r1, #3]\n\
	ldr r1, [r3]\n\
	movs r0, #5\n\
	strh r0, [r1, #0x32]\n\
_0800667C:\n\
	ldr r0, _080066D8\n\
	ldrh r1, [r0]\n\
	movs r0, #1\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08006718\n\
	movs r0, #0x37\n\
	bl PlayMusic\n\
	ldr r7, _080066DC\n\
	ldr r4, [r7]\n\
	ldrh r0, [r4, #0x32]\n\
	cmp r0, #2\n\
	bne _080066EE\n\
	movs r5, #0\n\
	ldrsb r5, [r4, r5]\n\
	movs r6, #1\n\
	ldrsb r6, [r4, r6]\n\
	movs r0, #0x2c\n\
	adds r1, r6, #0\n\
	muls r1, r0, r1\n\
	lsls r0, r5, #2\n\
	adds r0, r0, r4\n\
	adds r1, r1, r0\n\
	ldrh r1, [r1, #0x34]\n\
	ldr r0, _080066E0\n\
	cmp r1, r0\n\
	beq _080066E4\n\
	adds r1, r5, #6\n\
	movs r0, #0xb\n\
	muls r0, r6, r0\n\
	adds r1, r1, r0\n\
	movs r2, #0\n\
	movs r3, #0\n\
	strh r1, [r4, #0x32]\n\
	strh r5, [r4, #0xa]\n\
	strh r6, [r4, #0xc]\n\
	strb r2, [r4]\n\
	ldr r0, [r7]\n\
	strb r2, [r0, #1]\n\
	ldr r0, [r7]\n\
	movs r1, #0xb5\n\
	lsls r1, r1, #1\n\
	adds r0, r0, r1\n\
	strh r3, [r0]\n\
	b _080066E8\n\
	.align 2, 0\n\
_080066D8: .4byte 0x02020DF4\n\
_080066DC: .4byte gUnk_8DF8114\n\
_080066E0: .4byte 0x00004081\n\
_080066E4:\n\
	bl sub_80060BC\n\
_080066E8:\n\
	bl sub_800683C\n\
	b _08006718\n\
_080066EE:\n\
	bl sub_80060BC\n\
	ldr r1, [r7]\n\
	ldrh r0, [r1, #0x32]\n\
	cmp r0, #5\n\
	bls _08006718\n\
	movs r2, #0\n\
	movs r0, #2\n\
	strh r0, [r1, #0x32]\n\
	ldrh r0, [r1, #0xa]\n\
	strb r0, [r1]\n\
	ldr r1, [r7]\n\
	ldrh r0, [r1, #0xc]\n\
	strb r0, [r1, #1]\n\
	ldr r0, [r7]\n\
	movs r1, #0xb5\n\
	lsls r1, r1, #1\n\
	adds r0, r0, r1\n\
	strh r2, [r0]\n\
	bl sub_800683C\n\
_08006718:\n\
	ldr r0, _08006750\n\
	ldrh r1, [r0]\n\
	movs r4, #2\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0800675C\n\
	ldr r3, _08006754\n\
	ldr r1, [r3]\n\
	ldrh r0, [r1, #0x32]\n\
	cmp r0, #5\n\
	bls _08006758\n\
	movs r2, #0\n\
	strh r4, [r1, #0x32]\n\
	ldrh r0, [r1, #0xa]\n\
	strb r0, [r1]\n\
	ldr r1, [r3]\n\
	ldrh r0, [r1, #0xc]\n\
	strb r0, [r1, #1]\n\
	ldr r0, [r3]\n\
	movs r1, #0xb5\n\
	lsls r1, r1, #1\n\
	adds r0, r0, r1\n\
	strh r2, [r0]\n\
	bl sub_800683C\n\
	b _0800675C\n\
	.align 2, 0\n\
_08006750: .4byte 0x02020DF4\n\
_08006754: .4byte gUnk_8DF8114\n\
_08006758:\n\
	bl sub_80068C4\n\
_0800675C:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0");
}

static void sub_8006764 (void) {
  if (strlen(g8DF8030[gUnk_8DF8114->unk32]) <= 154 * 2)
    return;
  if (gRepeatedOrNewButtons & DPAD_UP && !gUnk_8DF8114->unk1) {
    if (gUnk_8DF8114->unk16A > 11)
      gUnk_8DF8114->unk16A -= 11;
    else
      gUnk_8DF8114->unk16A = 0;
  }
  if (gRepeatedOrNewButtons & DPAD_DOWN && gUnk_8DF8114->unk1 == 6) {
    if (gUnk_8DF8114->unk16A + 165 < strlen(g8DF8030[gUnk_8DF8114->unk32]) / 2)
      gUnk_8DF8114->unk16A += 11;
    else
      gUnk_8DF8114->unk16A = strlen(g8DF8030[gUnk_8DF8114->unk32]) / 2 - 154;
  }
  if (gRepeatedOrNewButtons & 0xC0)
    sub_800683C();
}

static void sub_800683C (void) {
  if (!gUnk_8DF8114->unk16A
    && gUnk_8DF8114->unk16A + 154 > strlen(g8DF8030[gUnk_8DF8114->unk32]) / 2
    && gUnk_8DF8114->unk32 != 5)
      bzero(gBgVram.cbb0 + 0x8620, 0x4D00);
  strncpy((u8*)gUnk_8DF8114->unk34, g8DF8030[gUnk_8DF8114->unk32] + gUnk_8DF8114->unk16A * 2, 308);
  sub_8020DB8((u32*)(gBgVram.cbb0 + 0x8620), (u8*)gUnk_8DF8114->unk34, 0x901);
  LoadCharblock2();
}

static void sub_80068C4 (void) {
  if (gUnk_8DF8114->unk32 == 5)
    return;
  if (gUnk_8DF8114->unk2) {
    PlayMusic(SFX_CANCEL);
    gUnk_8DF8114->unk2--;
  }
  gUnk_8DF8114->unkE[gUnk_8DF8114->unk2] = 0x4081;
  if (gUnk_8DF8114->unk2 & 1) // % 2 doesn't match; it reloads gUnk_8DF8114->unk2
    sub_8020968(gBgVram.cbb0 + 0x8000 + (gUnk_8DF8114->unk2 / 2 * 4 + 2) * 32, gUnk_8DF8114->unkE[gUnk_8DF8114->unk2], 0x901);
  else
    sub_8020968(gBgVram.cbb0 + 0x8000 + (gUnk_8DF8114->unk2 / 2 * 4 + 1) * 32, gUnk_8DF8114->unkE[gUnk_8DF8114->unk2], 0x901);
  LoadCharblock2();
}

struct {
  u8 unk0;
  u8 unk1;
  u8 filler2[2];
  struct {
    u16 unk0;
    u16 unk2;
    u16 unk4;
  }* unk4;
} extern * gUnk_8DF7FD4[];

extern u16 gOamBuffer[][4];
/*
void sub_8006958 (void) {
  u16 ip = 0;
  if (gUnk_8DF8114->unk32 == 5) {
    u16 i, j;
    for (i = 0; i < 5; i++) {
      for (j = 0; j < gUnk_8DF7FD4[i]->unk1; j++, ip++) {
        gOamBuffer[ip][0] = gUnk_8DF7FD4[i]->unk4[j].unk0;
        gOamBuffer[ip][1] = gUnk_8DF7FD4[i]->unk4[j].unk2;
        gOamBuffer[ip][2] = gUnk_8DF7FD4[i]->unk4[j].unk4 | 0x400;
      }
    }
  }
  else if (gUnk_8DF8114->unk32 < 5) {
    u16 i, j;
    for (i = 0; i < 5; i++) {
      for (j = 0; j < gUnk_8DF7FD4[i]->unk1; j++, ip++) {
        gOamBuffer[ip][0] = gUnk_8DF7FD4[i]->unk4[j].unk0;
        gOamBuffer[ip][1] = gUnk_8DF7FD4[i]->unk4[j].unk2;
        gOamBuffer[ip][2] = gUnk_8DF7FD4[i]->unk4[j].unk4 | 0x400;
      }
    }
  }
  else {
    u16 i, j;
    for (i = 0; i < 5; i++) {
      for (j = 0; j < gUnk_8DF7FD4[i]->unk1; j++, ip++) {
        gOamBuffer[ip][0] = gUnk_8DF7FD4[i]->unk4[j].unk0;
        gOamBuffer[ip][1] = gUnk_8DF7FD4[i]->unk4[j].unk2;
        gOamBuffer[ip][2] = gUnk_8DF7FD4[i]->unk4[j].unk4 | 0x400;
      }
    }
  }
}
*/
