#include "global.h"

#define SHRT_MAX 0x7FFF // from limits.h

static void sub_804E288 (void);
static void SetBg3Regs (void);
static void SetBg2Regs (void);
static void SetBg1Regs (void);
static void SetBg0Data (void);
static void sub_804EE6C (void);
//r3 = gMapData

//  9AAE98
//0x200 per sprite
//gOverworld = 0x02024270
//00 21
//line 9801
void TryWalking (u8);
void sub_804F2F0 (void);

void TryDueling (void);
void sub_804EEE0 (void);
void TryTalking (void);


void sub_804F1E4 (void);
void sub_8045284 (u16*, u16, u16);
void sub_804F508 (void);
void TryRunning (u8);

extern u8 g8E0DA9C[];
extern u8 g8E0DA56[];
extern u8 g82AD2B6[];
extern u16 gUnk08103284[];
extern u8 g82AD20C[];
unsigned sub_805222C (u8, s16, s16);
u32 sub_8052194 (u16);



enum {
  UNK0,
  WALK_UP,
  WALK_DOWN,
  WALK_LEFT,
  WALK_RIGHT,
  TRY_DUELING,
  TALK,
  START_MENU,
  UNK8,
  UNK9,
  UNKA,
  RUN_UP,
  RUN_DOWN,
  RUN_LEFT,
  RUN_RIGHT
};

extern u16 gNewButtons;
extern u16 gPressedButtons;
extern u16 gRepeatedOrNewButtons;
extern u8 g82A906C[];
extern u8 g82A8E4C[];
extern u8 gUnk8E0DA40[];
extern u16 g81032D2[];
extern u8 gE0DA4F[];
extern struct OamData gOamBuffer[];
//2024270 + 1E0
//2024450


//sb = gOverworld.1f4
//r7 = gMapData
//r8 = gOverworld.208

//r4 = gOverworld
//r6 = i
//---------------------------------
//r4 = gOverworld
//r6 = gMapData



s8 sub_804F6C0(void);
void sub_804F714(void);
void LoadCharblock5(void);
void sub_80554C4 (void);
extern u32* gMapTilesets[];
extern u16* gLowLayerTilemaps[];
extern u16* gHighLayerTilemaps[];
extern u16* g8E11CD0[];


extern u16 gCableCarTilemap[];

/*
static void InitOverworld (void)
{
    u16 i, j;

    gOverworld.map.id = gOverworld.map.unk8;
    gOverworld.map.state = gOverworld.map.unkA;
    gOverworld.map.unk4 = gOverworld.map.unkC;
    gOverworld.background = 0;
    gOverworld.unk23C = gMapCollisions[gOverworld.map.id];

    for (i = 0; i < 5; i++)
    {
        gOverworld.unk1F4[i] = gMapData[gOverworld.map.id][gOverworld.map.state]->unk140[i].unk0;
        gOverworld.unk208[i] = gMapData[gOverworld.map.id][gOverworld.map.state]->unk168[i].unk0;
    }

    gOverworld.music = gMapData[gOverworld.map.id][gOverworld.map.state]->music;
    gOverworld.unk1F0 = 0;

    if (!CheckFlag(0xF2))
        if (gMapData[gOverworld.map.id][gOverworld.map.state]->unk1F6 & 1) //bitfield?
            gOverworld.unk1F0 |= 1;

    if (!CheckFlag(0xF1))
        if (gMapData[gOverworld.map.id][gOverworld.map.state]->unk1F6 & 2) //bitfield?
            gOverworld.unk1F0 |= 2;

    for (j = 0; j < 15; j++)
    {
        gOverworld.objects[j].spriteId = -1;
        gOverworld.objects[j].direction = 0;
        gOverworld.objects[j].x = 192;
        gOverworld.objects[j].y = 192;
        gOverworld.objects[j].unk8 = 0;
        gOverworld.objects[j].wander = 0;
        gOverworld.objects[j].unk1Dl = 0;
        gOverworld.objects[j].enableBlending = 0;
        gOverworld.objects[j].unk1C = 0;
        gOverworld.objects[j].unkA = 0;
    }

    gOverworld.objects[0].spriteId = gMapData[gOverworld.map.id][gOverworld.map.state]->playerInitialState[gOverworld.map.unk4].spriteId;
    gOverworld.objects[0].direction = gMapData[gOverworld.map.id][gOverworld.map.state]->playerInitialState[gOverworld.map.unk4].direction;
    gOverworld.objects[0].unk10 = gMapData[gOverworld.map.id][gOverworld.map.state]->playerInitialState[gOverworld.map.unk4].unk8;
    gOverworld.objects[0].unkE = 19;
    gOverworld.objects[0].motionState = 0;
    gOverworld.objects[0].hasShadow = 1;
    gOverworld.objects[0].facePlayer = 1;
    gOverworld.objects[0].wander = 1;
    gOverworld.objects[0].x = gMapData[gOverworld.map.id][gOverworld.map.state]->playerInitialState[gOverworld.map.unk4].x;
    gOverworld.objects[0].y = gMapData[gOverworld.map.id][gOverworld.map.state]->playerInitialState[gOverworld.map.unk4].y;
    sub_8052088(0);

    j = 13;
    if (sub_804F6C0() & 1) //if yugi follows you
    {
        gOverworld.objects[j].spriteId = 1;
        gOverworld.objects[j].direction = gOverworld.objects[0].direction;
        gOverworld.objects[j].x = gOverworld.objects[0].x;
        gOverworld.objects[j].y = gOverworld.objects[0].y;
        gOverworld.objects[j].unk10 = &g8F04040;
        gOverworld.objects[j].unk14 = &g8F04040;
        gOverworld.objects[j].wander = 0;
        gOverworld.objects[j].hasShadow = 1;
        gOverworld.objects[j].unk1Dl = 1;
        sub_8052088(j);
        j = 14;
    }
    if (sub_804F6C0() & 2) //if joey follows you
    {
        gOverworld.objects[j].spriteId = 4;
        gOverworld.objects[j].direction = gOverworld.objects[0].direction;
        gOverworld.objects[j].x = gOverworld.objects[0].x;
        gOverworld.objects[j].y = gOverworld.objects[0].y;
        gOverworld.objects[j].unk10 = &g8F04040;
        gOverworld.objects[j].unk14 = &g8F04040;
        gOverworld.objects[j].wander = 0;
        gOverworld.objects[j].hasShadow = 1;
        gOverworld.objects[j].unk1Dl = 1;
        sub_8052088(j);
    }
    sub_804F714();
    for (j = 0, i = 1; gMapData[gOverworld.map.id][gOverworld.map.state]->objects[j].spriteId != -1; j++, i++)
    {
        gOverworld.objects[i].spriteId = gMapData[gOverworld.map.id][gOverworld.map.state]->objects[j].spriteId;
        gOverworld.objects[i].direction = gMapData[gOverworld.map.id][gOverworld.map.state]->objects[j].direction;
        gOverworld.objects[i].x = gMapData[gOverworld.map.id][gOverworld.map.state]->objects[j].x;
        gOverworld.objects[i].y = gMapData[gOverworld.map.id][gOverworld.map.state]->objects[j].y;
        gOverworld.objects[i].unk8 = gMapData[gOverworld.map.id][gOverworld.map.state]->objects[j].unk11;
        sub_8052088(i);
        gOverworld.objects[i].unk10 = gMapData[gOverworld.map.id][gOverworld.map.state]->objects[j].unk8;
        gOverworld.objects[i].unk14 = gMapData[gOverworld.map.id][gOverworld.map.state]->objects[j].unkC;
        gOverworld.objects[i].unk1E = 19;
        gOverworld.objects[i].hasShadow = gMapData[gOverworld.map.id][gOverworld.map.state]->objects[j].hasShadow;
        gOverworld.objects[i].facePlayer = gMapData[gOverworld.map.id][gOverworld.map.state]->objects[j].facePlayer;
        gOverworld.objects[i].wander = gMapData[gOverworld.map.id][gOverworld.map.state]->objects[j].wander;
        gOverworld.objects[i].unk1A = 0;
    }
}*/

NAKED
static void InitOverworld(void)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #4\n\
	ldr r1, _0804DA14\n\
	ldrh r0, [r1, #8]\n\
	movs r2, #0\n\
	strh r0, [r1]\n\
	ldrh r0, [r1, #0xa]\n\
	strh r0, [r1, #2]\n\
	ldrh r0, [r1, #0xc]\n\
	strh r0, [r1, #4]\n\
	movs r3, #0x94\n\
	lsls r3, r3, #2\n\
	adds r0, r1, r3\n\
	strb r2, [r0]\n\
	movs r4, #0x8f\n\
	lsls r4, r4, #2\n\
	adds r3, r1, r4\n\
	ldr r2, _0804DA18\n\
	ldrh r0, [r1]\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r2\n\
	ldr r0, [r0]\n\
	str r0, [r3]\n\
	movs r6, #0\n\
	str r1, [sp]\n\
	adds r5, r1, #0\n\
	movs r0, #0xfa\n\
	lsls r0, r0, #1\n\
	adds r0, r0, r5\n\
	mov sb, r0\n\
	ldr r7, _0804DA1C\n\
	movs r1, #0x82\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r5\n\
	mov r8, r1\n\
_0804D68E:\n\
	lsls r2, r6, #2\n\
	mov r3, sb\n\
	adds r4, r2, r3\n\
	ldrh r0, [r5]\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldrh r1, [r5, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	lsls r3, r6, #3\n\
	movs r1, #0xa0\n\
	lsls r1, r1, #1\n\
	adds r0, r0, r1\n\
	adds r0, r0, r3\n\
	ldr r0, [r0]\n\
	str r0, [r4]\n\
	add r2, r8\n\
	ldrh r0, [r5]\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r7\n\
	ldrh r1, [r5, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	movs r4, #0xb4\n\
	lsls r4, r4, #1\n\
	adds r0, r0, r4\n\
	adds r0, r0, r3\n\
	ldr r0, [r0]\n\
	str r0, [r2]\n\
	adds r0, r6, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r6, r0, #0x10\n\
	cmp r6, #4\n\
	bls _0804D68E\n\
	ldr r4, _0804DA14\n\
	ldr r6, _0804DA1C\n\
	ldrh r0, [r4]\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r6\n\
	ldrh r1, [r4, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	movs r1, #0xfa\n\
	lsls r1, r1, #1\n\
	adds r0, r0, r1\n\
	ldrh r1, [r0]\n\
	ldr r2, _0804DA20\n\
	adds r0, r4, r2\n\
	movs r2, #0\n\
	strh r1, [r0]\n\
	movs r3, #0xf8\n\
	lsls r3, r3, #1\n\
	adds r5, r4, r3\n\
	strb r2, [r5]\n\
	movs r0, #0xf2\n\
	bl CheckFlag\n\
	cmp r0, #0\n\
	bne _0804D738\n\
	ldrh r0, [r4]\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r6\n\
	ldrh r1, [r4, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	movs r4, #0xfb\n\
	lsls r4, r4, #1\n\
	adds r0, r0, r4\n\
	ldrb r1, [r0]\n\
	movs r0, #1\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0804D738\n\
	ldrb r0, [r5]\n\
	movs r1, #1\n\
	orrs r0, r1\n\
	strb r0, [r5]\n\
_0804D738:\n\
	movs r0, #0xf1\n\
	bl CheckFlag\n\
	cmp r0, #0\n\
	bne _0804D774\n\
	ldr r1, _0804DA1C\n\
	ldr r2, _0804DA14\n\
	ldrh r0, [r2]\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r1\n\
	ldrh r1, [r2, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	movs r6, #0xfb\n\
	lsls r6, r6, #1\n\
	adds r0, r0, r6\n\
	ldrb r1, [r0]\n\
	movs r0, #2\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _0804D774\n\
	movs r0, #0xf8\n\
	lsls r0, r0, #1\n\
	adds r2, r2, r0\n\
	ldrb r1, [r2]\n\
	movs r0, #2\n\
	orrs r0, r1\n\
	strb r0, [r2]\n\
_0804D774:\n\
	movs r1, #0\n\
	mov sb, r1\n\
	ldr r2, _0804DA14\n\
	str r2, [sp]\n\
	adds r6, r2, #0\n\
	movs r4, #0\n\
	movs r5, #0xc0\n\
	movs r3, #5\n\
	rsbs r3, r3, #0\n\
	mov sl, r3\n\
	movs r0, #9\n\
	rsbs r0, r0, #0\n\
	mov r8, r0\n\
	movs r7, #0x11\n\
	rsbs r7, r7, #0\n\
_0804D792:\n\
	mov r1, sb\n\
	lsls r0, r1, #5\n\
	adds r2, r0, r6\n\
	ldr r0, _0804DA24\n\
	strh r0, [r2, #0x10]\n\
	strb r4, [r2, #0x12]\n\
	strh r5, [r2, #0x14]\n\
	strh r5, [r2, #0x16]\n\
	strh r4, [r2, #0x18]\n\
	adds r3, r2, #0\n\
	adds r3, #0x2d\n\
	ldrb r1, [r3]\n\
	mov r0, sl\n\
	ands r0, r1\n\
	mov r1, r8\n\
	ands r0, r1\n\
	ands r0, r7\n\
	strb r0, [r3]\n\
	adds r0, r2, #0\n\
	adds r0, #0x2c\n\
	strb r4, [r0]\n\
	strb r4, [r2, #0x1a]\n\
	mov r0, sb\n\
	adds r0, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	mov sb, r0\n\
	cmp r0, #0xe\n\
	bls _0804D792\n\
	ldr r5, [sp]\n\
	ldr r3, _0804DA1C\n\
	ldrh r0, [r5]\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r3\n\
	ldrh r1, [r5, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r1, [r1]\n\
	ldrh r2, [r5, #4]\n\
	lsls r0, r2, #2\n\
	adds r0, r0, r2\n\
	lsls r0, r0, #2\n\
	adds r1, r1, r0\n\
	movs r2, #0xc8\n\
	lsls r2, r2, #1\n\
	adds r1, r1, r2\n\
	ldrh r0, [r1]\n\
	movs r4, #0\n\
	strh r0, [r5, #0x10]\n\
	ldrh r0, [r5]\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r3\n\
	ldrh r1, [r5, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r2, [r1]\n\
	ldrh r1, [r5, #4]\n\
	lsls r0, r1, #2\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #2\n\
	adds r2, r2, r0\n\
	movs r6, #0xc9\n\
	lsls r6, r6, #1\n\
	adds r0, r2, r6\n\
	ldrb r0, [r0]\n\
	strb r0, [r5, #0x12]\n\
	ldrh r0, [r5]\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r3\n\
	ldrh r1, [r5, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r1, [r1]\n\
	ldrh r2, [r5, #4]\n\
	lsls r0, r2, #2\n\
	adds r0, r0, r2\n\
	lsls r0, r0, #2\n\
	movs r2, #0xcc\n\
	lsls r2, r2, #1\n\
	adds r1, r1, r2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	str r0, [r5, #0x20]\n\
	movs r0, #0x13\n\
	strb r0, [r5, #0x1e]\n\
	adds r0, r5, #0\n\
	adds r0, #0x28\n\
	strb r4, [r0]\n\
	adds r2, r5, #0\n\
	adds r2, #0x2d\n\
	ldrb r0, [r2]\n\
	movs r4, #1\n\
	orrs r0, r4\n\
	movs r1, #2\n\
	orrs r0, r1\n\
	movs r1, #4\n\
	orrs r0, r1\n\
	strb r0, [r2]\n\
	ldrh r0, [r5]\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r3\n\
	ldrh r1, [r5, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r1, [r1]\n\
	ldrh r2, [r5, #4]\n\
	lsls r0, r2, #2\n\
	adds r0, r0, r2\n\
	lsls r0, r0, #2\n\
	adds r1, r1, r0\n\
	adds r6, #2\n\
	adds r1, r1, r6\n\
	ldrh r0, [r1]\n\
	strh r0, [r5, #0x14]\n\
	ldrh r0, [r5]\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r3\n\
	ldrh r1, [r5, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r2, [r1]\n\
	ldrh r1, [r5, #4]\n\
	lsls r0, r1, #2\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #2\n\
	adds r2, r2, r0\n\
	movs r1, #0xcb\n\
	lsls r1, r1, #1\n\
	adds r0, r2, r1\n\
	ldrh r0, [r0]\n\
	strh r0, [r5, #0x16]\n\
	movs r0, #0\n\
	bl sub_8052088\n\
	movs r2, #0xd\n\
	mov sl, r2\n\
	bl sub_804F6C0\n\
	movs r2, #1\n\
	ands r0, r2\n\
	cmp r0, #0\n\
	beq _0804D8FA\n\
	mov r3, sl\n\
	lsls r1, r3, #5\n\
	adds r1, r5, r1\n\
	strh r2, [r1, #0x10]\n\
	ldrb r0, [r5, #0x12]\n\
	strb r0, [r1, #0x12]\n\
	ldrh r0, [r5, #0x14]\n\
	strh r0, [r1, #0x14]\n\
	ldrh r0, [r5, #0x16]\n\
	strh r0, [r1, #0x16]\n\
	adds r6, #0x2c\n\
	adds r0, r5, r6\n\
	ldr r1, _0804DA28\n\
	str r1, [r0]\n\
	movs r2, #0xe2\n\
	lsls r2, r2, #1\n\
	adds r0, r5, r2\n\
	str r1, [r0]\n\
	ldr r3, _0804DA2C\n\
	adds r2, r5, r3\n\
	ldrb r1, [r2]\n\
	movs r0, #5\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	orrs r0, r4\n\
	movs r1, #8\n\
	orrs r0, r1\n\
	strb r0, [r2]\n\
	movs r0, #0xd\n\
	bl sub_8052088\n\
	movs r6, #0xe\n\
	mov sl, r6\n\
_0804D8FA:\n\
	bl sub_804F6C0\n\
	movs r1, #2\n\
	ands r1, r0\n\
	cmp r1, #0\n\
	beq _0804D946\n\
	mov r0, sl\n\
	lsls r1, r0, #5\n\
	adds r2, r1, r5\n\
	movs r0, #4\n\
	strh r0, [r2, #0x10]\n\
	ldrb r0, [r5, #0x12]\n\
	strb r0, [r2, #0x12]\n\
	ldrh r0, [r5, #0x14]\n\
	strh r0, [r2, #0x14]\n\
	ldrh r0, [r5, #0x16]\n\
	strh r0, [r2, #0x16]\n\
	adds r0, r5, #0\n\
	adds r0, #0x20\n\
	adds r0, r1, r0\n\
	ldr r3, _0804DA28\n\
	str r3, [r0]\n\
	adds r0, r5, #0\n\
	adds r0, #0x24\n\
	adds r1, r1, r0\n\
	str r3, [r1]\n\
	adds r2, #0x2d\n\
	ldrb r1, [r2]\n\
	movs r0, #5\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	orrs r0, r4\n\
	movs r1, #8\n\
	orrs r0, r1\n\
	strb r0, [r2]\n\
	mov r0, sl\n\
	bl sub_8052088\n\
_0804D946:\n\
	bl sub_804F714\n\
	movs r1, #0\n\
	mov sl, r1\n\
	movs r2, #1\n\
	mov sb, r2\n\
	ldr r3, [sp]\n\
	ldrh r0, [r3]\n\
	lsls r0, r0, #2\n\
	ldr r4, _0804DA1C\n\
	adds r0, r0, r4\n\
	ldrh r1, [r3, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	movs r6, #0\n\
	ldrsh r1, [r0, r6]\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0804D974\n\
	b _0804DB18\n\
_0804D974:\n\
	adds r7, r3, #0\n\
	mov r8, r4\n\
_0804D978:\n\
	mov r0, sb\n\
	lsls r6, r0, #5\n\
	adds r5, r6, r7\n\
	ldrh r0, [r7]\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldrh r1, [r7, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	mov r1, sl\n\
	lsls r4, r1, #2\n\
	add r4, sl\n\
	lsls r4, r4, #2\n\
	adds r0, r0, r4\n\
	ldrh r0, [r0]\n\
	strh r0, [r5, #0x10]\n\
	ldrh r0, [r7]\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldrh r1, [r7, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0, #2]\n\
	strb r0, [r5, #0x12]\n\
	ldrh r0, [r7]\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldrh r1, [r7, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	adds r0, r0, r4\n\
	ldrh r0, [r0, #4]\n\
	strh r0, [r5, #0x14]\n\
	ldrh r0, [r7]\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldrh r1, [r7, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	adds r0, r0, r4\n\
	ldrh r0, [r0, #6]\n\
	strh r0, [r5, #0x16]\n\
	ldrh r0, [r7]\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldrh r1, [r7, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0, #0x11]\n\
	strh r0, [r5, #0x18]\n\
	mov r0, sb\n\
	bl sub_8052088\n\
	adds r2, r7, #0\n\
	adds r2, #0x20\n\
	adds r2, r6, r2\n\
	ldrh r0, [r7]\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldrh r1, [r7, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	adds r0, #8\n\
	b _0804DA30\n\
	.align 2, 0\n\
_0804DA14: .4byte gOverworld\n\
_0804DA18: .4byte gMapCollisions\n\
_0804DA1C: .4byte gMapData\n\
_0804DA20: .4byte 0x00000242\n\
_0804DA24: .4byte 0x0000FFFF\n\
_0804DA28: .4byte g8F04040\n\
_0804DA2C: .4byte 0x000001CD\n\
_0804DA30:\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	str r0, [r2]\n\
	adds r0, r7, #0\n\
	adds r0, #0x24\n\
	adds r6, r6, r0\n\
	ldrh r0, [r7]\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldrh r1, [r7, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	adds r0, #0xc\n\
	adds r0, r0, r4\n\
	ldr r0, [r0]\n\
	str r0, [r6]\n\
	movs r0, #0x13\n\
	strb r0, [r5, #0x1e]\n\
	ldrh r0, [r7]\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldrh r1, [r7, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0, #0x10]\n\
	lsls r0, r0, #0x1f\n\
	lsrs r0, r0, #0x1f\n\
	adds r3, r5, #0\n\
	adds r3, #0x2d\n\
	movs r1, #1\n\
	ands r1, r0\n\
	ldrb r2, [r3]\n\
	movs r6, #2\n\
	rsbs r6, r6, #0\n\
	adds r0, r6, #0\n\
	ands r2, r0\n\
	orrs r2, r1\n\
	strb r2, [r3]\n\
	ldrh r0, [r7]\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldrh r1, [r7, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0, #0x10]\n\
	lsls r0, r0, #0x1e\n\
	lsrs r0, r0, #0x1f\n\
	movs r1, #1\n\
	ands r1, r0\n\
	lsls r1, r1, #1\n\
	subs r6, #1\n\
	adds r0, r6, #0\n\
	ands r2, r0\n\
	orrs r2, r1\n\
	strb r2, [r3]\n\
	ldrh r0, [r7]\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldrh r1, [r7, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0, #0x10]\n\
	lsls r0, r0, #0x1d\n\
	lsrs r0, r0, #0x1f\n\
	movs r1, #1\n\
	ands r1, r0\n\
	lsls r1, r1, #2\n\
	movs r4, #5\n\
	rsbs r4, r4, #0\n\
	adds r0, r4, #0\n\
	ands r2, r0\n\
	orrs r2, r1\n\
	strb r2, [r3]\n\
	movs r6, #0\n\
	strh r6, [r5, #0x2a]\n\
	mov r0, sl\n\
	adds r0, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	mov sl, r0\n\
	mov r0, sb\n\
	adds r0, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	mov sb, r0\n\
	ldrh r0, [r7]\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldrh r1, [r7, #2]\n\
	ldr r0, [r0]\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r0\n\
	ldr r1, [r1]\n\
	mov r2, sl\n\
	lsls r0, r2, #2\n\
	add r0, sl\n\
	lsls r0, r0, #2\n\
	adds r1, r1, r0\n\
	movs r3, #0\n\
	ldrsh r1, [r1, r3]\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	beq _0804DB18\n\
	b _0804D978\n\
_0804DB18:\n\
	add sp, #4\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0");
}

static void TryInitiatingWorldMap (void) {
  if (gOverworld.unk240 & 4) {
    g2020DD0 = 0;
    if (CheckFlag(0xEE))
      g2020DD0 = 1;
    if (CheckFlag(0xFF))
      g2020DD0 = 2;
    if (CheckFlag(0xFE))
      g2020DD0 = 3;
    if (CheckFlag(0xFD))
      g2020DD0 = 4;
    if (CheckFlag(0xFC))
      g2020DD0 = 5;
    if (CheckFlag(0xFB))
      g2020DD0 = 6;
    if (CheckFlag(0xE4))
      g2020DD0 = 11;
    if (CheckFlag(0xFA))
      g2020DD0 = 7;
    if (CheckFlag(0xF9))
      g2020DD0 = 8;
    if (CheckFlag(0xF8))
      g2020DD0 = 9;
    if (CheckFlag(0xED))
      g2020DD0 = 10;

    g2020DC8 = gOverworld.map.unk8;
    gOverworld.unk240 &= ~4;
    sub_804F750(4);
    WorldMapMain();
    sub_80523EC(g8E0D9C4[g2020DCC][0], g8E0D9C4[g2020DCC][1], g8E0D9C4[g2020DCC][2]);
  }
  else
    sub_0804F76C();
  InitOverworld();
}

void OverworldMain (void) {
  if (!CheckFlag(0x2b)) {
    NamingScreenMain();
    StartCutscene(8); // INTRO_CUTSCENE
    SetFlag(0x2b);
    SaveGame();
  }
  sub_80523EC(9, 1, 0);
  InitOverworld();
  gOverworld.unk240 &= ~1;
  do {
    // TryInitWorldMap (only works if gOverworld.unk240 & 4 is set)
    TryInitiatingWorldMap();
    sub_80554C4();
    sub_804ED08();
    gOverworld.unk240 &= ~2;
    InitiateScript(gOverworld.unk1F4[gOverworld.map.unk4]);
    if (!(gOverworld.unk240 & 2)) {
      PlayOverworldMusic();
      sub_804E288();
      InitiateScript(gOverworld.unk208[gOverworld.map.unk6]);
    }
  } while (!(gOverworld.unk240 & 1));
  // gOverworld.unk240 LSB is never set to 1
  // so this function never returns
  // mark it as noreturn? (as well as AgbMain?)
}

static void LoadOverworldBgGfx (void)
{
    switch (gOverworld.background)
    {
    case 0: //normal bg
        LZ77UnCompWram(gMapTilesets[gOverworld.map.id], gBgVram.cbb0); //copy tileset
        sub_804F5D8();
        CpuCopy16(gLowLayerTilemaps[gOverworld.map.id], gBgVram.sbb1F, 0x800); //copy bg2 tilemap
        CpuCopy16(gHighLayerTilemaps[gOverworld.map.id], gBgVram.sbb1E, 0x800); //copy bg1 tilemap
        if (gOverworld.map.id == 0x29) //pegasus island cable car bg
            CpuCopy16(gCableCarTilemap, ((struct Sbb*)&gBgVram)->sbb17, 0x800); //bg3 tilemap
        break;
    case 1: //reshef bg
        LZ77UnCompWram(g84C9FBC, gBgVram.cbb0);
        CpuCopy16(g82AD06C, gPaletteBuffer + 256, 0x180);
        CpuCopy16(g82ADC8C, gPaletteBuffer, 0x20);
        CpuCopy16(g84D0CE0, &gPaletteBuffer[16], 0x1E0);
        CpuCopy16(g84CFCE0, gBgVram.sbb1F, 0x800);
        CpuCopy16(g84D04E0, gBgVram.sbb1E, 0x800);
        break;
    case 2: //goemon bg
        LZ77UnCompWram(g84D0EC0, gBgVram.cbb0);
        CpuCopy16(g82AD06C, gPaletteBuffer + 256, 0x180);
        CpuCopy16(g82ADC8C, gPaletteBuffer, 0x20);
        CpuCopy16(g84D69D0, &gPaletteBuffer[16], 0x1E0);
        CpuCopy16(g84D59D0, gBgVram.sbb1F, 0x800);
        CpuCopy16(g84D61D0, gBgVram.sbb1E, 0x800);
        break;
    }
}

static inline void sub_804EFE8_inline (u8 arg0) {
  u32 i, j;
  u8* dest = &gBgVram.cbb4[g8103284[arg0] * 32];
  u8* src = &g82A906C[g81032A2[gOverworld.objects[arg0].unk1C] * 32];
  for (i = 0; i < 2; dest += 0x3C0, src += 0x1C0, i++)
    for (j = 0; j < 64; j++)
      *dest++ = *src++;
}

static void sub_804DE74 (void) {
  u32 i, j;
  u8 *dest, *src;
  for (i = 0; i < 15; i++)
    sub_804DF5C((u8)gOverworld.unk21C[i]);
  dest = &gBgVram.cbb4[gUnk08103264[15] * 32];
  src = g82A8E4C;
  for (i = 0; i < 2; dest += 0x3C0, src += 0x1C0, i++)
    for (j = 0; j < 64; j++)
      *dest++ = *src++;
  for (i = 0; i < 15; i++) {
    sub_804EFE8_inline(gOverworld.unk21C[i]);
  }
}

static inline void sub_804F054_inline (int spriteId, u8 arg1, u8* dest) {
  u32 i, j;
  u8* src = gUnk8E11790[spriteId] + g81032D2[arg1] * 32;

  for (i = 0; i < 4; dest += 0x380, src += 0x180, i++)
    for (j = 0; j < 128; j++)
      *dest++ = *src++;
}

void sub_804DF5C (int objectId) {
  u8 objectId_u8 = objectId;
  if (gOverworld.objects[objectId_u8].direction < 4) {
    u16 spriteId = gOverworld.objects[objectId_u8].spriteId;
    u8 temp = gOverworld.objects[objectId_u8].direction * 3 + gUnk8E0DA12[gOverworld.objects[objectId_u8].unkE];
    sub_804F054_inline(spriteId, temp, &gBgVram.cbb4[gUnk08103264[objectId_u8] * 32]);
  }
  else {
    u16 spriteId = gOverworld.objects[objectId_u8].spriteId;
    u8 temp = gE0DA4F[gOverworld.objects[objectId_u8].direction];
    sub_804F054_inline(spriteId, temp, &gBgVram.cbb4[gUnk08103264[objectId_u8] * 32]);
  }
}


NAKED
static void sub_804E050 (u8 arg0) {
  asm_unified("push {r4, lr}\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	ldr r1, _0804E0C4\n\
	lsls r0, r4, #5\n\
	adds r0, r0, r1\n\
	movs r2, #0x10\n\
	ldrsh r1, [r0, r2]\n\
	cmp r1, #0x19\n\
	bne _0804E0DC\n\
	ldrb r3, [r0, #0x12]\n\
	lsls r2, r3, #1\n\
	ldr r1, _0804E0C8\n\
	ldrb r0, [r0, #0x1e]\n\
	adds r0, r0, r1\n\
	adds r2, r2, r3\n\
	ldrb r0, [r0]\n\
	adds r2, r2, r0\n\
	lsls r2, r2, #0x18\n\
	ldr r1, _0804E0CC\n\
	lsls r0, r4, #1\n\
	adds r0, r0, r1\n\
	ldrh r0, [r0]\n\
	lsls r0, r0, #5\n\
	ldr r1, _0804E0D0\n\
	adds r3, r0, r1\n\
	ldr r1, _0804E0D4\n\
	movs r0, #0xb2\n\
	lsls r0, r0, #1\n\
	adds r1, r1, r0\n\
	ldr r0, _0804E0D8\n\
	lsrs r2, r2, #0x17\n\
	adds r2, r2, r0\n\
	ldrh r0, [r2]\n\
	lsls r0, r0, #5\n\
	ldr r1, [r1]\n\
	adds r1, r1, r0\n\
	movs r0, #0\n\
_0804E09C:\n\
	movs r2, #0\n\
	adds r4, r0, #1\n\
_0804E0A0:\n\
	ldrb r0, [r1]\n\
	strb r0, [r3]\n\
	adds r1, #1\n\
	adds r3, #1\n\
	adds r2, #1\n\
	cmp r2, #0x7f\n\
	bls _0804E0A0\n\
	movs r2, #0xe0\n\
	lsls r2, r2, #2\n\
	adds r3, r3, r2\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #1\n\
	adds r1, r1, r0\n\
	adds r0, r4, #0\n\
	cmp r0, #3\n\
	bls _0804E09C\n\
	b _0804E1AE\n\
	.align 2, 0\n\
_0804E0C4: .4byte gOverworld\n\
_0804E0C8: .4byte 0x08E0DA26\n\
_0804E0CC: .4byte 0x08103264\n\
_0804E0D0: .4byte 0x02010400\n\
_0804E0D4: .4byte 0x08E11790\n\
_0804E0D8: .4byte 0x081032D2\n\
_0804E0DC:\n\
	cmp r1, #1\n\
	bne _0804E154\n\
	ldrb r3, [r0, #0x12]\n\
	lsls r2, r3, #1\n\
	ldr r1, _0804E140\n\
	ldrb r0, [r0, #0x1e]\n\
	adds r0, r0, r1\n\
	adds r2, r2, r3\n\
	ldrb r0, [r0]\n\
	adds r2, r2, r0\n\
	lsls r2, r2, #0x18\n\
	ldr r1, _0804E144\n\
	lsls r0, r4, #1\n\
	adds r0, r0, r1\n\
	ldrh r0, [r0]\n\
	lsls r0, r0, #5\n\
	ldr r1, _0804E148\n\
	adds r3, r0, r1\n\
	ldr r1, _0804E14C\n\
	movs r0, #0xb4\n\
	lsls r0, r0, #1\n\
	adds r1, r1, r0\n\
	ldr r0, _0804E150\n\
	lsrs r2, r2, #0x17\n\
	adds r2, r2, r0\n\
	ldrh r0, [r2]\n\
	lsls r0, r0, #5\n\
	ldr r1, [r1]\n\
	adds r1, r1, r0\n\
	movs r0, #0\n\
_0804E118:\n\
	movs r2, #0\n\
	adds r4, r0, #1\n\
_0804E11C:\n\
	ldrb r0, [r1]\n\
	strb r0, [r3]\n\
	adds r1, #1\n\
	adds r3, #1\n\
	adds r2, #1\n\
	cmp r2, #0x7f\n\
	bls _0804E11C\n\
	movs r2, #0xe0\n\
	lsls r2, r2, #2\n\
	adds r3, r3, r2\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #1\n\
	adds r1, r1, r0\n\
	adds r0, r4, #0\n\
	cmp r0, #3\n\
	bls _0804E118\n\
	b _0804E1AE\n\
	.align 2, 0\n\
_0804E140: .4byte 0x08E0DA26\n\
_0804E144: .4byte 0x08103264\n\
_0804E148: .4byte 0x02010400\n\
_0804E14C: .4byte 0x08E11790\n\
_0804E150: .4byte 0x081032D2\n\
_0804E154:\n\
	cmp r1, #4\n\
	bne _0804E1AE\n\
	ldrb r3, [r0, #0x12]\n\
	lsls r1, r3, #1\n\
	ldr r2, _0804E1B4\n\
	ldrb r0, [r0, #0x1e]\n\
	adds r0, r0, r2\n\
	adds r1, r1, r3\n\
	ldrb r0, [r0]\n\
	adds r1, r1, r0\n\
	lsls r1, r1, #0x18\n\
	ldr r2, _0804E1B8\n\
	lsls r0, r4, #1\n\
	adds r0, r0, r2\n\
	ldrh r0, [r0]\n\
	lsls r0, r0, #5\n\
	ldr r2, _0804E1BC\n\
	adds r3, r0, r2\n\
	ldr r2, _0804E1C0\n\
	ldr r0, _0804E1C4\n\
	lsrs r1, r1, #0x17\n\
	adds r1, r1, r0\n\
	ldrh r0, [r1]\n\
	lsls r0, r0, #5\n\
	ldr r1, [r2, #0x24]\n\
	adds r1, r1, r0\n\
	movs r0, #0\n\
_0804E18A:\n\
	movs r2, #0\n\
	adds r4, r0, #1\n\
_0804E18E:\n\
	ldrb r0, [r1]\n\
	strb r0, [r3]\n\
	adds r1, #1\n\
	adds r3, #1\n\
	adds r2, #1\n\
	cmp r2, #0x7f\n\
	bls _0804E18E\n\
	movs r2, #0xe0\n\
	lsls r2, r2, #2\n\
	adds r3, r3, r2\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #1\n\
	adds r1, r1, r0\n\
	adds r0, r4, #0\n\
	cmp r0, #3\n\
	bls _0804E18A\n\
_0804E1AE:\n\
	pop {r4}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0804E1B4: .4byte 0x08E0DA26\n\
_0804E1B8: .4byte 0x08103264\n\
_0804E1BC: .4byte 0x02010400\n\
_0804E1C0: .4byte 0x08E11790\n\
_0804E1C4: .4byte 0x081032D2");
}

static u8 ProcessInput (void) {
  if (gNewButtons & A_BUTTON)
    return TALK;
  if (gNewButtons & R_BUTTON)
    return TRY_DUELING;
  if (gPressedButtons & B_BUTTON) {
    if (gPressedButtons & DPAD_UP)
      return RUN_UP;
    if (gPressedButtons & DPAD_DOWN)
      return RUN_DOWN;
    if (gPressedButtons & DPAD_LEFT)
      return RUN_LEFT;
    if (gPressedButtons & DPAD_RIGHT)
      return RUN_RIGHT;
  }
  if (gPressedButtons & DPAD_UP)
    return WALK_UP;
  if (gPressedButtons & DPAD_DOWN)
      return WALK_DOWN;
  if (gPressedButtons & DPAD_LEFT)
    return WALK_LEFT;
  if (gPressedButtons & DPAD_RIGHT)
    return WALK_RIGHT;
  if (gRepeatedOrNewButtons & SELECT_BUTTON)
    return START_MENU;
  if (gRepeatedOrNewButtons & START_BUTTON)
    return START_MENU;
  if (gRepeatedOrNewButtons & L_BUTTON)
    return START_MENU;
  return UNK0;
}

// inlining fixes argument passing order to sub_8044E50, and sub_8044EC8
static inline void sub_804ED08_inline (void) {
  REG_DISPCNT = 0;
  REG_BLDCNT = 0;
  LoadOverworldBgGfx();
  SetBg3Regs();
  SetBg2Regs();
  SetBg1Regs();
  SetBg0Data();
  sub_804EE6C();
  if (CheckFlag(0xF3)) // tint effects
    sub_8044E50(gPaletteBuffer, 0x10, 0x1FF);
  if (CheckFlag(0xF0))
    sub_8044EC8(gPaletteBuffer, 0x10, 0x1FF, 6);
  if (CheckFlag(0xEF)) // completely black
    sub_8045284(gPaletteBuffer, 0x10, 0xFF);
  REG_BLDY = 7;
  WaitForVBlank();
  sub_804EC4C();
  REG_WINOUT = 0x3D3F;
  sub_804F508();
}

// this function is repeated later in the file
static inline void sub_804EFA8_inline (void) {
  REG_DISPCNT = 0;
  REG_BLDCNT = 0;
  LoadOverworldBgGfx();
  SetBg3Regs();
  SetBg2Regs();
  SetBg1Regs();
  SetBg0Data();
  sub_804EE6C();
  REG_BLDY = 7;
  WaitForVBlank();
  sub_804EC4C();
  sub_804F508();
}

static void sub_804E288 (void) {
  u8 r5 = 102;
  while (!(gOverworld.unk240 & (1 | 2))) {
    gOverworld.objects[0].motionState = 0;
    switch (ProcessInput()) {
      case WALK_UP:
        TryWalking(DIRECTION_UP);
        sub_804F2F0();
        sub_804EF10();
        break;
      case WALK_DOWN:
        TryWalking(DIRECTION_DOWN);
        sub_804F2F0();
        sub_804EF10();
        break;
      case WALK_LEFT:
        TryWalking(DIRECTION_LEFT);
        sub_804F2F0();
        sub_804EF10();
        break;
      case WALK_RIGHT:
        TryWalking(DIRECTION_RIGHT);
        sub_804F2F0();
        sub_804EF10();
        break;
      case TRY_DUELING:
        TryDueling();
        sub_804EEE0();
        break;
      case TALK:
        TryTalking();
        sub_804EEE0();
        break;
      case START_MENU:
        PlayMusic(SFX_SELECT);
        InitStartMenu();
        sub_804ED08_inline();
        PlayOverworldMusic();
        break;
      case UNK8:
        gOverworld.objects[0].spriteId = g8E0DA9C[gOverworld.objects[0].spriteId];
        sub_804ED08_inline();
        break;
      case UNKA:
        r5 = g8E0DA56[r5];
        gOverworld.map.unk8 = r5;
        gOverworld.map.unkA = 0;
        gOverworld.map.unkC = 0;
        InitOverworld();
        sub_804EFA8_inline();
        sub_804EEE0();
        break;
      case RUN_UP:
        TryRunning(DIRECTION_UP);
        sub_804F2F0();
        sub_804EF10();
        break;
      case RUN_DOWN:
        TryRunning(DIRECTION_DOWN);
        sub_804F2F0();
        sub_804EF10();
        break;
      case RUN_LEFT:
        TryRunning(DIRECTION_LEFT);
        sub_804F2F0();
        sub_804EF10();
        break;
      case RUN_RIGHT:
        TryRunning(DIRECTION_RIGHT);
        sub_804F2F0();
        sub_804EF10();
        break;
      default:
        sub_804F2F0();
        sub_804EF10();
        break;
    }
  }
}

NAKED
static void sub_804E518 (u8 arg0) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	lsls r0, r0, #0x18\n\
	lsrs r6, r0, #0x18\n\
	ldr r1, _0804E5B8\n\
	lsls r7, r6, #5\n\
	adds r5, r7, r1\n\
	adds r0, r5, #0\n\
	adds r0, #0x28\n\
	ldrb r0, [r0]\n\
	mov ip, r1\n\
	cmp r0, #1\n\
	bne _0804E5E8\n\
	ldrh r0, [r5, #0x10]\n\
	subs r0, #0x7a\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	cmp r0, #1\n\
	bhi _0804E5CC\n\
	ldrh r4, [r5, #0x10]\n\
	ldrb r3, [r5, #0x12]\n\
	lsls r1, r3, #1\n\
	ldr r2, _0804E5BC\n\
	ldrb r0, [r5, #0x1e]\n\
	adds r0, r0, r2\n\
	adds r1, r1, r3\n\
	ldrb r0, [r0]\n\
	adds r1, r1, r0\n\
	lsls r1, r1, #0x18\n\
	adds r2, r6, r2\n\
	ldrb r0, [r2]\n\
	lsls r0, r0, #5\n\
	ldr r2, _0804E5C0\n\
	adds r2, r0, r2\n\
	ldr r0, _0804E5C4\n\
	lsls r4, r4, #2\n\
	adds r4, r4, r0\n\
	ldr r0, _0804E5C8\n\
	lsrs r1, r1, #0x17\n\
	adds r1, r1, r0\n\
	ldrh r0, [r1]\n\
	lsls r0, r0, #5\n\
	ldr r1, [r4]\n\
	adds r1, r1, r0\n\
	movs r0, #0\n\
	adds r5, r7, #0\n\
_0804E572:\n\
	movs r3, #0\n\
	adds r4, r0, #1\n\
_0804E576:\n\
	ldrb r0, [r1]\n\
	strb r0, [r2]\n\
	adds r1, #1\n\
	adds r2, #1\n\
	adds r3, #1\n\
	cmp r3, #0x7f\n\
	bls _0804E576\n\
	movs r0, #0xe0\n\
	lsls r0, r0, #2\n\
	adds r2, r2, r0\n\
	movs r0, #0xc0\n\
	lsls r0, r0, #1\n\
	adds r1, r1, r0\n\
	adds r0, r4, #0\n\
	cmp r0, #3\n\
	bls _0804E572\n\
	mov r0, ip\n\
	adds r1, r5, r0\n\
	ldrb r0, [r1, #0x1e]\n\
	cmp r0, #0xf\n\
	bls _0804E5A4\n\
	movs r0, #0xf\n\
	strb r0, [r1, #0x1e]\n\
_0804E5A4:\n\
	ldrb r0, [r1, #0x1e]\n\
	subs r0, #1\n\
	cmp r0, #0\n\
	bge _0804E5B0\n\
	movs r0, #0xf\n\
	strb r0, [r1, #0x1e]\n\
_0804E5B0:\n\
	ldrb r0, [r1, #0x1e]\n\
	subs r0, #1\n\
	strb r0, [r1, #0x1e]\n\
	b _0804E610\n\
	.align 2, 0\n\
_0804E5B8: .4byte gOverworld\n\
_0804E5BC: .4byte 0x08E0DA40\n\
_0804E5C0: .4byte 0x02010400\n\
_0804E5C4: .4byte 0x08E11790\n\
_0804E5C8: .4byte 0x081032D2\n\
_0804E5CC:\n\
	adds r0, r6, #0\n\
	bl sub_804DF5C\n\
	ldrb r0, [r5, #0x1e]\n\
	cmp r0, #0x14\n\
	bls _0804E5DC\n\
	movs r0, #0x14\n\
	strb r0, [r5, #0x1e]\n\
_0804E5DC:\n\
	ldrb r0, [r5, #0x1e]\n\
	subs r0, #1\n\
	cmp r0, #0\n\
	bge _0804E5FE\n\
	movs r0, #0x14\n\
	b _0804E5FC\n\
_0804E5E8:\n\
	cmp r0, #2\n\
	bne _0804E606\n\
	adds r0, r6, #0\n\
	bl sub_804E050\n\
	ldrb r0, [r5, #0x1e]\n\
	subs r0, #1\n\
	cmp r0, #0\n\
	bge _0804E5FE\n\
	movs r0, #0x1a\n\
_0804E5FC:\n\
	strb r0, [r5, #0x1e]\n\
_0804E5FE:\n\
	ldrb r0, [r5, #0x1e]\n\
	subs r0, #1\n\
	strb r0, [r5, #0x1e]\n\
	b _0804E610\n\
_0804E606:\n\
	movs r0, #0x13\n\
	strb r0, [r5, #0x1e]\n\
	adds r0, r6, #0\n\
	bl sub_804DF5C\n\
_0804E610:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0");
}

static void sub_804E618 (void) {
  signed short arr[15];
  u8 i;
  for (i = 0; i < 15; i++)
    arr[i] = -SHRT_MAX; //TODO
  for (i = 0; i < 15; i++) {
    s16 r4;
    u16 r3;
    u8 r5 = 0;
    while (arr[r5] >= gOverworld.objects[i].y)
      r5++;
    r4 = gOverworld.objects[i].y;
    r3 = i;
    for (; r5 < 15; r5++) {
      s16 temp = arr[r5];
      arr[r5] = r4;
      r4 = temp;

      temp = gOverworld.unk21C[r5];
      gOverworld.unk21C[r5] = r3;
      r3 = temp;
    }
  }
  gOverworld.unk23A = 0;
  for (i = 0; i < 15; i++) {
    if (!gOverworld.unk21C[i])
      gOverworld.unk23A = i;
  }
}

/*regswap r4, r5
static void sub_804E6E8 (u32* arg0, u32* unused, u32* arg2, u8 arg3) {
  u32 r1two;
  u32 r0;
  u32 r4;
  u32 r1;

  arg0[0] = 0x01C000C0;
  arg2[0] = 0x01C008C0;
  if (gOverworld.objects[arg3].spriteId == -1)
    return;
  if (!sub_805222C(arg3, gOverworld.objects[arg3].x, gOverworld.objects[arg3].y))
    return;
  arg0[0] |= 0x80000000;
  if (gOverworld.objects[arg3].enableBlending)
    *arg0 |= 0x400;
  r1two = gUnk08103264[arg3];
  r1two |= g82AD20C[gOverworld.objects[arg3].spriteId] << 12;
  r1two |= 0x800;
  arg0[1] = r1two;
  arg2[1] = r1two;
  gOverworld.objects[arg3].unkC = sub_80520E0(gOverworld.objects[arg3].x, gOverworld.objects[arg3].y);

  r1 = gOverworld.objects[arg3].y;
  r1 <<= 1;
  r1 -= gOverworld.objects[arg3].unk8;
  r0 = gOverworld.unk24C - 24;
  r1 += r0;
  r4 = r1 - gOverworld.objects[arg3].unkA;
  r4 &= 0xFF;

  r1 = gOverworld.objects[arg3].x;
  r1 <<= 1;
  r0 = gOverworld.unk24E - 16;
  r1 += r0;
  r1 <<= 16;
  r1 &= 0x01FF0000;
  r4 |= r1;

  arg0[0] = arg0[0] & 0xFE00FF00 | r4;
  if (!sub_8052194(gOverworld.objects[arg3].unkC)) {
    r0 = arg2[0] | 0x80000000;
    r0 &= 0xFE00FF00;
    r0 |= r4;
    arg2[0] = r0;
  }
}*/

NAKED
static void sub_804E6E8 (u32* arg0, u32* unused, u32* arg2, u8 arg3) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sb\n\
	mov r6, r8\n\
	push {r6, r7}\n\
	adds r6, r0, #0\n\
	mov r8, r2\n\
	lsls r3, r3, #0x18\n\
	lsrs r3, r3, #0x18\n\
	adds r4, r3, #0\n\
	ldr r0, _0804E7DC\n\
	str r0, [r6]\n\
	ldr r0, _0804E7E0\n\
	str r0, [r2]\n\
	ldr r7, _0804E7E4 @gOverworld\n\
	lsls r0, r3, #5\n\
	adds r5, r0, r7\n\
	movs r0, #0x10\n\
	ldrsh r1, [r5, r0]\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	beq _0804E7D0\n\
	movs r2, #0x14\n\
	ldrsh r1, [r5, r2]\n\
	movs r0, #0x16\n\
	ldrsh r2, [r5, r0]\n\
	adds r0, r3, #0\n\
	bl sub_805222C\n\
	cmp r0, #0\n\
	beq _0804E7D0\n\
	ldr r1, [r6]\n\
	movs r2, #0x80\n\
	lsls r2, r2, #0x18\n\
	mov sb, r2\n\
	orrs r1, r2\n\
	str r1, [r6]\n\
	adds r0, r5, #0\n\
	adds r0, #0x2d\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #0x1b\n\
	cmp r0, #0\n\
	bge _0804E746\n\
	movs r0, #0x80\n\
	lsls r0, r0, #3\n\
	orrs r1, r0\n\
	str r1, [r6]\n\
_0804E746:\n\
	ldr r1, _0804E7E8\n\
	lsls r0, r4, #1\n\
	adds r0, r0, r1\n\
	ldrh r1, [r0]\n\
	ldr r2, _0804E7EC\n\
	movs r3, #0x10\n\
	ldrsh r0, [r5, r3]\n\
	adds r0, r0, r2\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #0xc\n\
	orrs r1, r0\n\
	movs r0, #0x80\n\
	lsls r0, r0, #4\n\
	orrs r1, r0\n\
	str r1, [r6, #4]\n\
	mov r0, r8\n\
	str r1, [r0, #4]\n\
	ldrb r0, [r5, #0x14]\n\
	ldrb r1, [r5, #0x16]\n\
	bl sub_80520E0\n\
	strh r0, [r5, #0x1c]\n\
	movs r2, #0x16\n\
	ldrsh r1, [r5, r2]\n\
	lsls r1, r1, #1\n\
	movs r3, #0x18\n\
	ldrsh r0, [r5, r3]\n\
	subs r1, r1, r0\n\
	movs r2, #0x93\n\
	lsls r2, r2, #2\n\
	adds r0, r7, r2\n\
	movs r3, #0\n\
	ldrsh r0, [r0, r3]\n\
	subs r0, #0x18\n\
	adds r1, r1, r0\n\
	ldrb r0, [r5, #0x1a]\n\
	subs r4, r1, r0\n\
	movs r0, #0xff\n\
	ands r4, r0\n\
	movs r0, #0x14\n\
	ldrsh r1, [r5, r0]\n\
	lsls r1, r1, #1\n\
	adds r2, #2\n\
	adds r0, r7, r2\n\
	movs r3, #0\n\
	ldrsh r0, [r0, r3]\n\
	subs r0, #0x10\n\
	adds r1, r1, r0\n\
	lsls r1, r1, #0x10\n\
	ldr r0, _0804E7F0\n\
	ands r1, r0\n\
	orrs r4, r1\n\
	ldr r0, [r6]\n\
	ldr r7, _0804E7F4\n\
	ands r0, r7\n\
	orrs r0, r4\n\
	str r0, [r6]\n\
	ldrh r0, [r5, #0x1c]\n\
	bl sub_8052194\n\
	cmp r0, #0\n\
	bne _0804E7D0\n\
	mov r1, r8\n\
	ldr r0, [r1]\n\
	mov r2, sb\n\
	orrs r0, r2\n\
	ands r0, r7\n\
	orrs r0, r4\n\
	str r0, [r1]\n\
_0804E7D0:\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0804E7DC: .4byte 0x01C000C0\n\
_0804E7E0: .4byte 0x01C008C0\n\
_0804E7E4: .4byte gOverworld\n\
_0804E7E8: .4byte 0x08103264\n\
_0804E7EC: .4byte 0x082AD20C\n\
_0804E7F0: .4byte 0x01FF0000\n\
_0804E7F4: .4byte 0xFE00FF00");
}

static void sub_804E7F8 (struct OamData* arg0, u8 arg1) {
  int tempY;
  int tempX;
  int temp;

  arg0->objMode = 0; // has to come first to match (decomp_note)
  arg0->size = 0;
  arg0->affineMode = 0;
  arg0->mosaic = 0;
  arg0->bpp = 0;
  arg0->shape = 0;
  arg0->paletteNum = 0;
  arg0->y = 192;
  arg0->x = 448;

  if (gOverworld.objects[arg1].spriteId == -1 || !gOverworld.objects[arg1].hasShadow)
    return;
  if (!sub_805222C(arg1, gOverworld.objects[arg1].x, gOverworld.objects[arg1].y))
    return;

  arg0->size = 0;
  arg0->shape = 1;
  if (gOverworld.objects[arg1].enableBlending)
    arg0->objMode = 1;
  arg0->tileNum = gUnk08103264[15] & 1023;
  arg0->priority = 2;
  tempY = gOverworld.objects[arg1].y * 2 - gOverworld.objects[arg1].unk8;
  arg0->y = tempY + gOverworld.unk24C;
  tempX = gOverworld.objects[arg1].x * 2;
  temp = gOverworld.unk24E - 8;
  arg0->x = tempX + temp;
}

static void sub_804E918 (struct OamData* arg0, u8 arg1) {
  int tempY;
  int tempX;
  int temp;

  arg0->objMode = 0;
  arg0->size = 0;
  arg0->affineMode = 0;
  arg0->mosaic = 0;
  arg0->bpp = 0;
  arg0->shape = 0;
  arg0->paletteNum = g82AD2B6[gOverworld.objects[arg1].unk1C];
  arg0->y = 192;
  arg0->x = 448;
  if (gOverworld.objects[arg1].spriteId == -1)
    return;
  if (!sub_805222C(arg1, gOverworld.objects[arg1].x, gOverworld.objects[arg1].y))
    return;

  arg0->size = 1;
  arg0->shape = 0;
  if (gOverworld.objects[arg1].enableBlending)
    arg0->objMode = 1;
  tempY = gOverworld.objects[arg1].y * 2 - gOverworld.objects[arg1].unk8;
  arg0->y = tempY - 28 + gOverworld.unk24C;
  tempX = gOverworld.objects[arg1].x * 2;
  temp = gOverworld.unk24E - 2;
  arg0->x = tempX + temp;
  arg0->tileNum = gUnk08103284[arg1] & 1023;
  arg0->priority = 1;
}

//unused?
static void sub_804EA48 (u32* arg0, u8 arg1) {
  u32 r2, r0, r00, r1;
  arg0[0] = 0x01C008C0;
  if (gOverworld.objects[arg1].spriteId == -1)
    return;
  if (!sub_805222C(arg1, gOverworld.objects[arg1].x, gOverworld.objects[arg1].y))
    return;
  if (sub_8052194(gOverworld.objects[arg1].unkC))
    return;
  arg0[0] |= 0x80000000;
  arg0[1] = gUnk08103264[arg1] | 0x400;
  gOverworld.objects[arg1].unkC = sub_80520E0(gOverworld.objects[arg1].x, gOverworld.objects[arg1].y);
  arg0[0] &= 0xFE00FF00;

  r2 = gOverworld.objects[arg1].y * 2 - gOverworld.objects[arg1].unk8;
  r0 = gOverworld.unk24C - 24;
  r2 += r0;
  r2 -= gOverworld.objects[arg1].unkA;

  r1 = gOverworld.objects[arg1].x * 2;
  r00 = gOverworld.unk24E - 16;
  r1 += r00;
  r1 <<= 16;
  r2 |= r1;

  arg0[0] |= r2;
}

// Set portrait OAM
void sub_804EB04 (struct OamData* arg0, u8 arg1) {
  if (arg1 == 8) {
    arg1 = 0;
    // display portrait to the right if player's x coord < 60
    if (gOverworld.objects[0].x < 60)
      arg1 = 1;
  }
  switch (arg1) {
    case 0:
      arg0->objMode = 0;
      arg0->mosaic = 0;
      arg0->bpp = 1;
      arg0->size = 3;
      arg0->shape = 0;
      arg0->priority = 0;
      arg0->tileNum = 256;
      arg0->y = 48;
      arg0->x = 8;
      break;
    case 1:
      arg0->objMode = 0;
      arg0->mosaic = 0;
      arg0->bpp = 1;
      arg0->size = 3;
      arg0->shape = 0;
      arg0->priority = 0;
      arg0->tileNum = 256;
      arg0->y = 48;
      arg0->x = 168;
      break;
    case 2:
      sub_80411EC(arg0); // move sprite(oam) off screen (clears a bunch of stuff like setting tileNum to 0 etc)
      break;
  }
}

/*
static void sub_804EBE4 (void) {
  u8 i;
  for (i = 0; i < 15; i++)
    sub_804E6E8(&gOamBuffer/*struct of u32s?*[(i + 97) * 2], &gOamBuffer[(i + 67) * 2],
                &gOamBuffer[(i + 82) * 2], gOverworld.unk21C[i]);
  for (i = 0; i < 15; i++) {
    sub_804E7F8(&gOamBuffer[], gOverworld.unk21C[i]);
  }
}*/

NAKED
static void sub_804EBE4 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	ldr r6, _0804EC44\n\
	movs r4, #0\n\
	adds r5, r6, #0\n\
	ldr r7, _0804EC48\n\
_0804EBEE:\n\
	adds r0, r4, #0\n\
	adds r0, #0x61\n\
	lsls r0, r0, #3\n\
	adds r0, r0, r5\n\
	adds r1, r4, #0\n\
	adds r1, #0x43\n\
	lsls r1, r1, #3\n\
	adds r1, r1, r5\n\
	adds r2, r4, #0\n\
	adds r2, #0x52\n\
	lsls r2, r2, #3\n\
	adds r2, r2, r5\n\
	lsls r3, r4, #1\n\
	adds r3, r3, r7\n\
	ldrb r3, [r3]\n\
	bl sub_804E6E8\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0xe\n\
	bls _0804EBEE\n\
	movs r4, #0\n\
	ldr r5, _0804EC48\n\
_0804EC1E:\n\
	lsls r0, r4, #3\n\
	movs r1, #0xe0\n\
	lsls r1, r1, #2\n\
	adds r0, r0, r1\n\
	adds r0, r6, r0\n\
	lsls r1, r4, #1\n\
	adds r1, r1, r5\n\
	ldrb r1, [r1]\n\
	bl sub_804E7F8\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #0xe\n\
	bls _0804EC1E\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0804EC44: .4byte gOamBuffer\n\
_0804EC48: .4byte gOverworld+0x21C");
}

void sub_804EC4C (void) {
  LoadBgOffsets();
  LoadOam();
  LoadVRAM();
  LoadPalettes();
}

void sub_804EC64 (void) {
  // todo: replace vram pointers
  CpuCopy32(gBgVram.sbb1B, (void*)0x600D800, 0xE20);
  CpuCopy32(gBgVram.sbb1D, (void*)0x600E800, 0x100);
  LoadObjVRAM();
  LoadPalettes();
  LoadOam();
}

void sub_804ECA8 (void) {
  // todo: replace vram pointers
  CpuCopy32(gBgVram.sbb1B, (void*)0x600D800, 0xE20);
  CpuCopy32(gBgVram.sbb1D, (void*)0x600E800, 0x100);
  LoadOam();
}

static void sub_804ECE4 (void) {
  u8 i;
  for (i = 0; i < 128; i++)
    sub_80411EC(gOamBuffer + i);
}

// inline
void sub_804ED08 (void) {
  REG_DISPCNT = 0;
  REG_BLDCNT = 0;
  LoadOverworldBgGfx();
  SetBg3Regs();
  SetBg2Regs();
  SetBg1Regs();
  SetBg0Data();
  sub_804EE6C();
  if (CheckFlag(0xF3)) // tint effects
    sub_8044E50(gPaletteBuffer, 0x10, 0x1FF);
  if (CheckFlag(0xF0))
    sub_8044EC8(gPaletteBuffer, 0x10, 0x1FF, 6);
  if (CheckFlag(0xEF)) // completely black
    sub_8045284(gPaletteBuffer, 0x10, 0xFF);
  REG_BLDY = 7;
  WaitForVBlank();
  sub_804EC4C();
  REG_WINOUT = 0x3D3F;
  sub_804F508();
}

static void SetBg3Regs (void) {
  REG_BG3CNT = 0x1783;
  gBG3VOFS = 0;
  gBG3HOFS = 8;
}

static void SetBg2Regs (void) {
  REG_BG2CNT = 0x1F82;
  gBG2VOFS = 0;
  gBG2HOFS = 8;
}

static void SetBg1Regs (void) {
  REG_BG1CNT = 0x1E81;
  gBG1VOFS = 0;
  gBG1HOFS = 8;
}

static void SetBg0Data (void) {
  REG_BG0CNT = 0x1D0C;
  gBG0VOFS = 0;
  gBG0HOFS = 8;
  LZ77UnCompWram(g82AD2D0, gBgVram.sbb1B);
  CpuCopy16(g82AD48C, gBgVram.sbb1D, 0x500);
}

static void sub_804EE6C (void) {
  sub_804ECE4();
  sub_804E618();
  sub_804DE74();
  sub_804EBE4();
}

void sub_804EE84 (struct OamData* arg0, u8 arg1, u8 arg2) {
  arg0->y = arg2 + 232;
  arg0->x = arg1 - 16;
}

void sub_804EEAC (struct OamData* arg0, u16 arg1) {
  arg0->priority = 2;
  if (!sub_8052194(arg1))
    arg0->priority = 1;
}

void sub_804EEE0 (void) {
  sub_804E618();
  sub_804EBE4();
  SetVBlankCallback(sub_804F1E4);
  WaitForVBlank();
  CpuFastCopy(gBgVram.cbb4, (void*)0x6010000, 0x4000);
}

void sub_80551B8 (void);

void sub_804EF10 (void) {
  sub_804E518(0);
  if (gOverworld.objects[13].unk1Dl)
    sub_804E518(13);
  if (gOverworld.objects[14].unk1Dl)
    sub_804E518(14);
  sub_80551B8();
  sub_804E618();
  sub_804EBE4();
  SetVBlankCallback(sub_804F1E4);
  WaitForVBlank();
  CpuFastCopy(gBgVram.cbb4, (void*)0x6010000, 0x4000);
}

void sub_804EF84 (u16 id, u16 state, u16 connection) {
  gOverworld.map.unk8 = id;
  gOverworld.map.unkA = state;
  gOverworld.map.unkC = connection;
}

// inline
void sub_804EF94 (void) {
  sub_80523EC(9, 1, 0);
  InitOverworld();
}

// inline
void sub_804EFA8 (void) {
  REG_DISPCNT = 0;
  REG_BLDCNT = 0;
  LoadOverworldBgGfx();
  SetBg3Regs();
  SetBg2Regs();
  SetBg1Regs();
  SetBg0Data();
  sub_804EE6C();
  REG_BLDY = 7;
  WaitForVBlank();
  sub_804EC4C();
  sub_804F508();
}

// inline
void sub_804EFE8 (u8 arg0) {
  u32 i, j;
  u8* dest = &gBgVram.cbb4[g8103284[arg0] * 32];
  u8* src = &g82A906C[g81032A2[gOverworld.objects[arg0].unk1C] * 32];
  for (i = 0; i < 2; dest += 0x3C0, src += 0x1C0, i++)
    for (j = 0; j < 64; j++)
      *dest++ = *src++;
}

// inline
void sub_804F054 (int spriteId, int arg1, u8* dest) {
  u16 spriteId_u16 = spriteId;
  u8 arg1_u8 = arg1;
  u32 i, j;
  u8* src = gUnk8E11790[spriteId_u16] + g81032D2[arg1_u8] * 32;

  for (i = 0; i < 4; dest += 0x380, src += 0x180, i++)
    for (j = 0; j < 128; j++)
      *dest++ = *src++;
}

// inline?
void sub_804F0A4 (u8 objectId) {
  u16 spriteId = gOverworld.objects[objectId].spriteId;
  u8 temp = gOverworld.objects[objectId].direction * 3 + gUnk8E0DA40[gOverworld.objects[objectId].unkE];
  u8* dest = &gBgVram.cbb4[gUnk8E0DA40[objectId] * 32];
  sub_804F054_inline(spriteId, temp, dest);
}

void sub_804F124 (u8 objectId) {
  if (gOverworld.objects[objectId].unkE > 20)
    gOverworld.objects[objectId].unkE = 20;
  if (gOverworld.objects[objectId].unkE - 1 < 0)
    gOverworld.objects[objectId].unkE = 20;
  gOverworld.objects[objectId].unkE--;
}

void sub_804F150 (u8 objectId) {
  if (gOverworld.objects[objectId].unkE - 1 < 0)
    gOverworld.objects[objectId].unkE = 26;
  gOverworld.objects[objectId].unkE--;
}

//unused?
static void sub_804F170 (u8 objectId) {
  if (gOverworld.objects[objectId].unkE > 15)
    gOverworld.objects[objectId].unkE = 15;
  if (gOverworld.objects[objectId].unkE - 1 < 0)
    gOverworld.objects[objectId].unkE = 15;
  gOverworld.objects[objectId].unkE--;
}

void sub_804F19C (int objectId) {
  u8 objectId_u8 = objectId;
  gOverworld.objects[objectId_u8].unkE = 19;
}

void sub_804F1B0 (void) {
  u8 i;
  struct OamData* oam = gOamBuffer;
  for (i = 0; i < 15; i++)
    sub_804E918(&oam[67 + i], gOverworld.unk21C[i]);
}

void sub_804F1E4 (void) {
  LoadBgOffsets();
  LoadOam();
}

void sub_804F1F4 (void) {
  WaitForVBlank();
  CpuFastCopy(gBgVram.cbb4, (void*)0x06010000, 0x2000);
  LoadPalettes();
}

void sub_804F218 (void) {
  sub_804E618();
  sub_804EBE4();
  sub_80551B8();
  SetVBlankCallback(LoadBgOffsets);
  WaitForVBlank();
  LoadOam();
  CpuCopy32(gBgVram.sbb1B, (void*)0x0600D800, 0xE20);
}

void sub_804F254 (void) {
  sub_804E618();
  sub_804EBE4();
  sub_80551B8();
  SetVBlankCallback(LoadBgOffsets);
  WaitForVBlank();
  LoadOam();
  CpuFastCopy(gBgVram.cbb4, (void*)0x06010000, 0x2000);
}

void sub_804F28C (void) {
  u8 i;
  struct OamData* oam = gOamBuffer;
  for (i = 0; i < 15; i++)
    sub_804E918(&oam[67 + i], gOverworld.unk21C[i]);
  sub_80551B8();
  SetVBlankCallback(LoadBgOffsets);
  WaitForVBlank();
  LoadCharblock5();
  LoadOam();
}

void sub_804F2DC (void) {
  LoadCharblock5();
  LoadPalettes();
  LoadBlendingRegs();
}

void sub_8051A44 (u8, u8, s16*);
void sub_804F3E4 (void);

static inline void sub_804F62C_inline (u8 objId, u8 direction) {
  s16 arr[4];
  gOverworld.objects[objId].direction = direction;
  sub_8051A44(objId, direction, arr);
  gOverworld.objects[objId].x += arr[0];
  gOverworld.objects[objId].y += arr[1];
  sub_8052088(objId);
  sub_804E518(objId);
}

void sub_804F2F0 (void) {
  int i;
  sub_804F3E4();
  for (i = 1; i < 15; i++) {
    if (gOverworld.objects[i].wander != 1)
      continue;
    if (gOverworld.objects[i].unk1A > 1) {
      if (gOverworld.objects[i].unk1A % 2 == 0)
        sub_804F62C_inline(i, gOverworld.objects[i].direction);
      gOverworld.objects[i].unk1A--;
    }
    else if (gOverworld.objects[i].unk1A == 1) {
      sub_804F19C(i);
      sub_804F62C_inline(i, gOverworld.objects[i].direction);
      gOverworld.objects[i].unk1A--;
    }
    else if (!RandRangeU8(0, 20)) {
      gOverworld.objects[i].direction = RandRangeU8(0, 3);
      gOverworld.objects[i].unk1A = RandRangeU8(5, 20) * 4;
    }
  }
}

extern s8 g8E0DB04[];
extern s8 g8E0DB0C[];
void sub_8051C14(u8, u8, s16*);

static inline void sub_804F678_inline (u8 objId, u8 arg1) {
  s16 arr[4];
  sub_8051C14(objId, arg1, arr);
  gOverworld.objects[objId].x += arr[0];
  gOverworld.objects[objId].y += arr[1];
  sub_8052088(objId);
  sub_804E518(objId);
}

static inline void sub_804F6D4_inline (s16* arr, u8 i) {
  arr[0] = gOverworld.objects[0].x + g8E0DB04[gOverworld.objects[0].direction + i * 4];
  arr[1] = gOverworld.objects[0].y + g8E0DB0C[gOverworld.objects[0].direction + i * 4];
}

void sub_804F3E4 (void) {
  u8 i;
  //TODO: replace 2 with NUM_FOLLOWERS?
  s16 arr[2];
  for (i = 0; i < 2; i++) {
    s8 r3;
    sub_804F6D4_inline(arr, i);
    r3 = 0;
    if (arr[0] == gOverworld.objects[i + 13].x)
      r3 = 1;
    if (arr[0] > gOverworld.objects[i + 13].x)
      r3 = 2;
    if (arr[1] == gOverworld.objects[i + 13].y)
      r3 += 3;
    if (arr[1] > gOverworld.objects[i + 13].y)
      r3 += 6;
    if (!gOverworld.objects[i + 13].unk1Dl)
      continue;
    gOverworld.objects[i + 13].motionState = 0;
    if (r3 == 4)
      gOverworld.objects[i + 13].direction = gOverworld.objects[0].direction;
    else {
      sub_804F678_inline(i + 13, r3);
    }
  }
}

u8 sub_804F4E4 (void) {
  if (gOverworld.map.id == 0x3C && !CheckFlag(0xE2))
    return 0;
  return 1;
}

static inline u8 sub_804F4E4_inline (void) {
  if (gOverworld.map.id == 0x3C && !CheckFlag(0xE2))
    return 0;
  return 1;
}

void sub_804F508 (void) {
  if (!sub_804F4E4_inline())
    REG_DISPCNT = DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJWIN_ON;
  else
    REG_DISPCNT = DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJWIN_ON;
}

void sub_804F544 (void) {
  if (!sub_804F4E4_inline())
    REG_DISPCNT = DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_WIN1_ON | DISPCNT_OBJWIN_ON;
  else
    REG_DISPCNT = DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_WIN1_ON | DISPCNT_OBJWIN_ON;
}
// inline?
void sub_804F580 (void) {
  CpuCopy16(g82AD06C, gPaletteBuffer + 256, 0x180);
}
// inline?
void sub_804F598 (void) {
  CpuCopy16(g82ADC8C, gPaletteBuffer, 0x20);
}

void sub_804F5B0 (void) {
  CpuCopy16(g8E11CD0[gOverworld.map.id], gPaletteBuffer + 0x10, 0x1E0);
}

void sub_804F5D8 (void) {
  CpuCopy16(g82AD06C, gPaletteBuffer + 256, 0x180);
  CpuCopy16(g82ADC8C, gPaletteBuffer, 0x20);
  CpuCopy16(g8E11CD0[gOverworld.map.id], gPaletteBuffer + 0x10, 0x1E0);
}

// inline
void sub_804F62C (u8 objId, u8 direction) {
  s16 arr[4];
  gOverworld.objects[objId].direction = direction;
  sub_8051A44(objId, direction, arr);
  gOverworld.objects[objId].x += arr[0];
  gOverworld.objects[objId].y += arr[1];
  sub_8052088(objId);
  sub_804E518(objId);
}

// inline
void sub_804F678 (u8 objId, u8 arg1) {
  s16 arr[4];
  sub_8051C14(objId, arg1, arr);
  gOverworld.objects[objId].x += arr[0];
  gOverworld.objects[objId].y += arr[1];
  sub_8052088(objId);
  sub_804E518(objId);
}

s8 sub_804F6C0 (void) {
  return gOverworld.unk1F0;
}

void sub_804F6D4 (s16* arr, u8 i) {
  arr[0] = gOverworld.objects[0].x + g8E0DB04[gOverworld.objects[0].direction + i * 4];
  arr[1] = gOverworld.objects[0].y + g8E0DB0C[gOverworld.objects[0].direction + i * 4];
}

void sub_804F714 (void) {
  int i;
  for (i = 0; i < 10; i++)
    sub_804F3E4();
  for (i = 0; i < 2; i++)
    if (gOverworld.objects[i + 13].unk1Dl) {
      gOverworld.objects[i + 13].direction = gOverworld.objects[0].direction;
      gOverworld.objects[i + 13].unkE = 19;
    }
}

void sub_804F750 (u8 arg0) {
  sub_8035038(arg0);
  sub_8053E34(arg0);
}

void sub_0804F76C (void) {
}

void PlayOverworldMusic (void) {
  PlayMusic(gOverworld.music);
}

//0xE2FB95 text data..
//byte 0 and 1  (?)
//halfword 2-3 (portrait)
//byte 4 (position of portrait?)

//40 33 22 01 7C 38 00 00
//E2AF41
//40 33 54 01 7C 38 15 5E 36
//       ^          ^
// sound effect  gfx effect?
//effects:
//0 = obtaining slifer
//1 = ?
//2 = obtaining obelisk
//3 = ?
//4 = obtaining ra
//5 = ?
//6 = mokuba helicopter
//7 = red eyes slide
//8 = dark magician slide
//9 = blue eyes slide
//A = joey-yugi-kaiba
//B = red eyes, dark magician, blue eyes attack
//C = Harpie Lady Sisters slide
//D = Harpie Lady Sisters attack
//E = Jinzo slide
//F = Jinzo attack
//10 = Dragon Master Knight slide
//11 = Dragon Master Knight Attack
//12 = Blue eyes attack (from below)
//13 = Blue eyes attack (from above)
//14 = Blue eyes ultimate fusion with black luster
//15 = Exodia attack
//16 = ?
//17 = explosion
//18 = bandid keith revival
//19 = Jinzo attack from below
//1A = gathering all millenium items
//1B = Slifer attacking ra sphere mode
//1C = Slifer attacking
//1D = Slifer slide
//1E = Obelisk slide
//1F = Ra slide
//20 = Slifer Ra(battle mode) Obelisk attack
//21 = ?
//22 = reshef chamber (beam?) effect
//23 = ?
//24 = reshef defeat sparks
//25 =
