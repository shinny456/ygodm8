#include "global.h"
#include "gba/syscall.h"
#include "duel.h"

struct Map //MapHeader?
{
    u16 id;
    u16 state;
    u16 unk4; //which connection the player came from?
    u8 unk6;
    u8 unk7;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
};

struct Object
{
    s16 spriteId;
    u8 direction; //facing D L U R
    u8 filler3;
    u16 x;
    u16 y;
    u16 unk8;
    u8 unkA;
    u8 fillerB[0x3];
    u8 unkE;
    u8 unkF;
    u32 *unk10; //TODO: fix type
    u32 *unk14; //TODO: fix type
    u8 unk18;   //0 = standing, 1 = walking, 2 = running
    u8 unk19;
    u16 unk1A;
    u8 unk1C;
    u8 unk1Di : 1; /*movement type?i-n*/
    u8 unk1Dj : 1;
    u8 unk1Dk : 1;
    u8 unk1Dl : 1;
    u8 unk1Dm : 1;
    u8 unk1Dn : 1;
    u8 unk1E;
};

struct Overworld
{
    struct Map map; //inline instead?
    struct Object objects[15];
    u8 unk1F0;
    u8 unk1F1;
    u8 unk1F2;
    u8 unk1F3;
    u8 **unk1F4[5]; //TODO:fix type?
    u8 **unk208[5]; //TODO:fix type?
    u8 unk21C[16][2];
    u32 *unk23C;
    u8 unk240;
    u16 music;
    u8 filler244[0xC];
    u8 unk250;  //0 = normal map, 1 = reshef map, 2 = goemon map
};

struct ObjectInitialState //object data?
{
    s16 spriteId;
    u8 direction;
    u16 x;
    u16 y;
    u32 *unk8; //normal text?      TODO: fix type?
    u32 *unkC; //duel text?        TODO: fix type?
    u8 unk10i : 1;
    u8 unk10j : 1;
    u8 unk10k : 1;
    u8 unk10l : 1;
    u8 unk10m : 1;
    u8 unk10n : 1;
    u8 unk11;
};

struct UnkOhk
{
    u8 **unk0;
    u32 unk4;
};

struct Unk1F8
{
    struct ObjectInitialState unk0[16];  //terminated by a -1 (0xFFFF) spriteId
    struct UnkOhk unk140[5]; //TODO: fix type?
    struct UnkOhk unk168[5]; //TODO: fix type?
    struct ObjectInitialState playerInitialState[5];
    u16 music;
    u8 unk1F6; //bitfield?
};

extern struct Overworld gOverworld;
extern u32* gUnk8E11DC4[];
extern struct Unk1F8** gUnk8E19274[]; //map states
extern u8 gUnk8E0DA12[]; //frames
extern u8* gUnk8E11790[];
extern u16 gUnk08103264[];
extern u32 g8F04040[]; //TODO fix type
//2024270 + 1E0
//2024450


//sb = gOverworld.1f4
//r7 = gUnk8E19274
//r8 = gOverworld.208

//r4 = gOverworld
//r6 = i
//---------------------------------
//r4 = gOverworld
//r6 = gUnk8E19274

bool32 sub_8055554(u32);
void sub_8052088(int); //implicit declaration?
int sub_804F6C0(void);
void sub_804F714(void);

/*
void sub_804D640(void) //InitMap (InitOverworldMap?/InitOverworld?)
{
    u16 i, j, ok;

    gOverworld.map.id = gOverworld.map.unk8;
    gOverworld.map.state = gOverworld.map.unkA;
    gOverworld.map.unk4 = gOverworld.map.unkC;
    gOverworld.unk250 = 0;
    gOverworld.unk23C = gUnk8E11DC4[gOverworld.map.id];

    for (i = 0; i < 5; i++)
    {
        gOverworld.unk1F4[i] = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->unk140[i].unk0;
        gOverworld.unk208[i] = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->unk168[i].unk0;
    }

    gOverworld.music = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->music;
    gOverworld.unk1F0 = 0;

    if (!sub_8055554(0xF2))
        if (gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->unk1F6 & 1) //bitfield?
            gOverworld.unk1F0 |= 1;

    if (!sub_8055554(0xF1))
        if (gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->unk1F6 & 2) //bitfield?
            gOverworld.unk1F0 |= 2;

    for (j = 0; j < 15; j++)
    {
        gOverworld.objects[j].spriteId = -1;
        gOverworld.objects[j].direction = 0;
        gOverworld.objects[j].x = 192;
        gOverworld.objects[j].y = 192;
        gOverworld.objects[j].unk8 = 0;
        gOverworld.objects[j].unk1Dk = 0;
        gOverworld.objects[j].unk1Dl = 0;
        gOverworld.objects[j].unk1Dm = 0;
        gOverworld.objects[j].unk1C = 0;
        gOverworld.objects[j].unkA = 0;
    }

    gOverworld.objects[0].spriteId = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->playerInitialState[gOverworld.map.unk4].spriteId;
    gOverworld.objects[0].direction = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->playerInitialState[gOverworld.map.unk4].direction;
    gOverworld.objects[0].unk10 = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->playerInitialState[gOverworld.map.unk4].unk8;
    gOverworld.objects[0].unkE = 19;
    gOverworld.objects[0].unk18 = 0;
    gOverworld.objects[0].unk1Di = 1;
    gOverworld.objects[0].unk1Dj = 1;
    gOverworld.objects[0].unk1Dk = 1;
    gOverworld.objects[0].x = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->playerInitialState[gOverworld.map.unk4].x;
    gOverworld.objects[0].y = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->playerInitialState[gOverworld.map.unk4].y;
    sub_8052088(0);

    ok = 13;
    if (sub_804F6C0() & 1) //if yugi follows you
    {
        gOverworld.objects[ok].spriteId = 1;
        gOverworld.objects[ok].direction = gOverworld.objects[0].direction;
        gOverworld.objects[ok].x = gOverworld.objects[0].x;
        gOverworld.objects[ok].y = gOverworld.objects[0].y;
        gOverworld.objects[ok].unk10 = g8F04040;
        gOverworld.objects[ok].unk14 = g8F04040;
        gOverworld.objects[ok].unk1Dk = 0;
        gOverworld.objects[ok].unk1Di = 1;
        gOverworld.objects[ok].unk1Dl = 1;
        sub_8052088(ok);
        ok = 14;
    }
    if (sub_804F6C0() & 2) //if joey follows you
    {
        gOverworld.objects[ok].spriteId = 4;
        gOverworld.objects[ok].direction = gOverworld.objects[0].direction;
        gOverworld.objects[ok].x = gOverworld.objects[0].x;
        gOverworld.objects[ok].y = gOverworld.objects[0].y;
        gOverworld.objects[ok].unk10 = g8F04040;
        gOverworld.objects[ok].unk14 = g8F04040;
        gOverworld.objects[ok].unk1Dk = 0;
        gOverworld.objects[ok].unk1Di = 1;
        gOverworld.objects[ok].unk1Dl = 1;
        sub_8052088(ok);
    }
    sub_804F714();
    for (ok = 0, j = 1; gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->unk0[ok].spriteId != -1; ok++, j++)
    {
        gOverworld.objects[j].spriteId = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->unk0[ok].spriteId;
        gOverworld.objects[j].direction = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->unk0[ok].direction;
        gOverworld.objects[j].x = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->unk0[ok].x;
        gOverworld.objects[j].y = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->unk0[ok].y;
        gOverworld.objects[j].unk8 = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->unk0[ok].unk11;
        sub_8052088(j);
        gOverworld.objects[j].unk10 = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->unk0[ok].unk8;
        gOverworld.objects[j].unk14 = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->unk0[ok].unkC;
        gOverworld.objects[j].unk1E = 19;
        gOverworld.objects[j].unk1Di = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->unk0[ok].unk10i;
        gOverworld.objects[j].unk1Dj = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->unk0[ok].unk10j;
        gOverworld.objects[j].unk1Dk = gUnk8E19274[gOverworld.map.id][gOverworld.map.state]->unk0[ok].unk10k;
        gOverworld.objects[j].unk1A = 0;
    }
} */

NAKED
void sub_804D640(void)
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
	bl sub_8055554\n\
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
	bl sub_8055554\n\
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
_0804DA18: .4byte 0x08E11DC4\n\
_0804DA1C: .4byte 0x08E19274\n\
_0804DA20: .4byte 0x00000242\n\
_0804DA24: .4byte 0x0000FFFF\n\
_0804DA28: .4byte 0x08F04040\n\
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


//World Map
extern u8 g2020DC8; //where the player came from
extern u8 g2020DCC; //where the player is going
extern u8 g2020DD0; //world map state (how many places are unlocked)
extern u16 g8E0D9C4[][3];
void sub_804F750(u8);
void sub_8004E60(void);
void sub_80523EC(u16, u16, u16);
void sub_0804F76C(void);
void sub_8005D1C(void);
void sub_8000940(u8);
void sub_8055508(int); //todo: u32?
void sub_800AD4C(void);
void sub_80554C4(void);
void sub_804ED08(void);
void sub_805254C(u8**); //todo: fix type?
void sub_804F770(void);
void sub_804E288(void);
void sub_804F5D8(void);


void sub_804DB28(void) //world map stuff
{
    if (gOverworld.unk240 & 4)
    {
        g2020DD0 = 0;
        if (sub_8055554(0xEE))
            g2020DD0 = 1;
        if (sub_8055554(0xFF))
            g2020DD0 = 2;
        if (sub_8055554(0xFE))
            g2020DD0 = 3;
        if (sub_8055554(0xFD))
            g2020DD0 = 4;
        if (sub_8055554(0xFC))
            g2020DD0 = 5;
        if (sub_8055554(0xFB))
            g2020DD0 = 6;
        if (sub_8055554(0xE4))
            g2020DD0 = 11;
        if (sub_8055554(0xFA))
            g2020DD0 = 7;
        if (sub_8055554(0xF9))
            g2020DD0 = 8;
        if (sub_8055554(0xF8))
            g2020DD0 = 9;
        if (sub_8055554(0xED))
            g2020DD0 = 10;

        g2020DC8 = gOverworld.map.unk8;
        gOverworld.unk240 &= 0xFB;
        sub_804F750(4);
        sub_8004E60();
        sub_80523EC(g8E0D9C4[g2020DCC][0], g8E0D9C4[g2020DCC][1], g8E0D9C4[g2020DCC][2]);
    }
    else
        sub_0804F76C();

    sub_804D640();
}

void sub_804DC48(void) //spawn the player home (and overworld main loop?) OverworldMain
{
    if (!sub_8055554(0x2b))
    {
        sub_8005D1C();
        sub_8000940(8);
        sub_8055508(0x2b);
        sub_800AD4C();
    }
    sub_80523EC(9, 1, 0);
    sub_804D640();
    gOverworld.unk240 &= 0xFE;

    do
    {
        sub_804DB28();
        sub_80554C4();
        sub_804ED08();
        gOverworld.unk240 &= 0xFD;
        sub_805254C(gOverworld.unk1F4[gOverworld.map.unk4]);
        if (!(gOverworld.unk240 & 2))
        {
            sub_804F770();
            sub_804E288();
            sub_805254C(gOverworld.unk208[gOverworld.map.unk6]);
        }
    } while (!(gOverworld.unk240 & 1));
}

extern u32* g8E119F4[];
extern u16* g8E11AE8[];
extern u16* g8E11BDC[];
extern u32 g84C9FBC[];
extern u16 g82AD06C[];
extern u16 g82ADC8C[];
extern u16 g84D0CE0[];
extern u16 g84CFCE0[];
extern u16 g84D04E0[];
extern u32 g84D0EC0[];
extern u16 g84D69D0[];
extern u16 g84D59D0[];
extern u16 g84D61D0[];
extern u16 g841D91C[];

void sub_804DCE8(void) //load overworld map(bg)
{
    switch (gOverworld.unk250)
    {
    case 0: //normal bg
        LZ77UnCompWram(g8E119F4[gOverworld.map.id], gBgVram.cbb0);
        sub_804F5D8();
        CpuSet(g8E11AE8[gOverworld.map.id], gBgVram.sbb1F, 0x400);
        CpuSet(g8E11BDC[gOverworld.map.id], gBgVram.sbb1E, 0x400);
        if (gOverworld.map.id == 0x29) //pegasus island cable car bg
            CpuSet(g841D91C, ((struct Sbb*)&gBgVram)->sbb17, 0x400);
        break;
    case 1: //reshef bg
        LZ77UnCompWram(g84C9FBC, gBgVram.cbb0);
        CpuSet(g82AD06C, g02000000.obj, 0xC0);
        CpuSet(g82ADC8C, g02000000.bg, 0x10);
        CpuSet(g84D0CE0, &g02000000.bg[16], 0xF0);
        CpuSet(g84CFCE0, gBgVram.sbb1F, 0x400);
        CpuSet(g84D04E0, gBgVram.sbb1E, 0x400);
        break;
    case 2: //goemon bg
        LZ77UnCompWram(g84D0EC0, gBgVram.cbb0);
        CpuSet(g82AD06C, g02000000.obj, 0xC0);
        CpuSet(g82ADC8C, g02000000.bg, 0x10);
        CpuSet(g84D69D0, &g02000000.bg[16], 0xF0);
        CpuSet(g84D59D0, gBgVram.sbb1F, 0x400);
        CpuSet(g84D61D0, gBgVram.sbb1E, 0x400);
        break;
    }
}

extern u8 g82A8E4C[];
/*
void sub_804DE74(void)
{
    u32 i, j;
    u8 *objVram, *ight;

    for (i = 0; i < 15; i++)
        sub_804DF5C(gOverworld.unk21C[i][0]);

    objVram = &gObjVram[gUnk08103264[15] * 32];
    ight = g82A8E4C;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 64; j++)
        {
            *objVram = *ight;
            ight++;
            objVram++;
        }
        objVram += 0x3C0;
        ight += 0x1C0;
    }
    for (i = 0; i < 15; i++)
    {

    }
}

//r3 = gUnk8E19274

//  9AAE98
//0x200 per sprite
//gOverworld = 0x02024270
// 805247E
//00 21
//line 9801




/*

void sub_804DF5C(u8 personId)
{
    u8 direction = gOverworld.objects[personId].direction;

    if (direction < 4)
    {
        gUnk8E11790[gOverworld.objects[personId].spriteId][]
    }
    else
    {

    }
}

dir * 3 + gUnk8E0DA12[gOverworld.objects[personId].unk1E]

gUnk08103264[personId]*/

struct Unk88
{
    u16 unk0;
    u8 filler2[2];
    u32 unk4; //TODO: fix type?  (script offset)
    u32 unk8; //TODO: fix type?
    u8 unkC;
    u8 unkD;
    u8 fillerE[2];
    u8 *unk10; //TODO: fix type? (script starting pointer?)
    u32 unk14; //TODO: fix type?
    u32 unk18; //TODO: fix type?
    u16 unk1C;
    u8 unk1E;


    u16 unk74;
    u16 unk76;
    u8 unk78;

    u16 unk7A;
    u16 unk7C;
    u16 unk7E;
    u16 unk80;
    u16 unk82;
    u8 unk84;
    u8 unk85;
    u8 unk86;
};

//3007e54
//related to scripting (printing text etc) sub_80526D0
//E2AEC2...

/*
void sub_80526D0(struct Unk88 *script)
{
    while (1)
    {
        if (script->unk10[script->unk4] == 0)
        {

        }
        if (script->unk10[0] == 0x5D)
            break;
        switch (script->unkC)
        {
        case 0:
            sub_80527E8(script); //handle scripting commands? including text?
            break;
        case 1:
            sub_8052F60(script);
            break;
        case 2:
            sub_8053138(script);
            break;
        case 3:
            sub_8053040(script);
            break;
        }
        if (script->unk86 == 1)
        {
            REG_WIN1H = 0x3ED;
        }
        sub_804F218();
    }

}*/


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