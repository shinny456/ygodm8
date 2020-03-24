#include "global.h"
#include "duel.h"
#include "gba/io_reg.h"
#include "card.h"

struct CursorPosition
{
    u8 currentX;
    u8 currentY;
    u8 destX;
    u8 destY;
    u8 filler[4];
};

struct Unk
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u8 unk8;
};

struct Bruh
{
    u16 a;
    u16 b;
};

extern struct CursorPosition gCursorPosition;
extern struct Duelist* gUnk8E00B30[];
extern u16 g02000000[]; //bg palette buffer
extern u8* g8FA2BAC[]; //duel text pos32ers
extern u8* g8FA2C14[]; //duel text pos32ers
extern struct Bruh g80C180C[];
extern struct OamData gOamBuffer[];
extern u8 g80C1824[];

void sub_8021B80(void);
void sub_802183C(void);
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
void sub_80205D4();      //implicit declaration shenanigans
void sub_802549C(void);
void sub_802703C(void);
void sub_8040A40(void);
void sub_8019D84(void);
void sub_8026278(void);
void sub_804060C(u8);
void sub_80254F8(void);
void sub_805872C(void);
void sub_804075C(u8);
void sub_8040584(u8);
void sub_8021AD4(void);
void sub_80452D4(u8);
void sub_8021B10(void);
void sub_8043DD8(void);
void sub_8043E14(u8, u16);
void sub_8043D6C(u8);
void sub_803FD60();
void sub_8048C60();
void sub_80254DC();
void sub_8041090();
void sub_80081DC(void (*)(void));
void sub_80454E0(void);
void sub_8041C94(u8*, u16, u16, u16, u32);
void sub_8021A54(void);
bool8 sub_8021A8C(struct Bruh*);
void sub_801FF70(void);
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

void sub_8021718(void)  //DuelMain
{
    u8 turn;
    struct Unk unk;

    sub_8021B80();
    sub_802183C(); //InitDuel
    while (1)
    {
        turn = WhoseTurn();
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

        if (turn == PLAYER)
        {
            unk.unk8 = 0;
            sub_80219E4(&unk);
        }
        else
            sub_8021A24();

        sub_8040524(TURN_PLAYER);
        ResetNumTributes();
        sub_804004C(turn);

        if (NumEmptyZonesInRow(gZones[4]) > 0)
        {
            sub_8043CE4(turn);
            if (sub_8025544() == TRUE)
                break;
            sub_8034F60(59);
        }
        sub_8041104();
        sub_80205D4(turn);

        if (sub_8025544() == TRUE)
            break;

        sub_802549C();
        sub_802703C();
        if (turn == PLAYER)
            sub_8040A40();
        else
            sub_8019D84();

        if (sub_8025544() == TRUE)
            break;

        sub_8026278();
        sub_804060C(2);
        sub_80254F8();
        sub_805872C();
        if (gNotSure[0]->unkTwo)
            gNotSure[0]->unkTwo = 0;
        if (gNotSure[0]->sorlTurns)
            sub_804075C(TURN_PLAYER);
        sub_8040584(2);
        sub_8040584(4);
    }
    sub_8021AD4();
}

void sub_802183C(void)
{
    u8 i;

    sub_80452D4(0);
    sub_8021B10();
    gUnk02021D10.duelist = *gUnk8E00B30[gUnk02021D10.opponent];
    gUnk02021D10.unk2B = 2;
    gUnk02021D10.unk2A = 1;
    gUnk02021D10.unkC = gUnk8E00B30[gUnk02021D10.opponent]->unk24;
    gUnk02021D10.unkE = gUnk8E00B30[gUnk02021D10.opponent]->unk26;
    gUnk02021D10.unk10 = gUnk8E00B30[gUnk02021D10.opponent]->unk28;
    sub_8043DD8();
    sub_8043E14(0, 0);
    sub_8043E14(1, gUnk02021D10.opponent);

    for (i = 0; i < 2; i++)
        sub_8043D6C(i);

    if (!sub_8056258(0, 1))
        gWhoseTurn = 0;
    else
        gWhoseTurn = 1;

    sub_803FD60();
    sub_8048C60();
    sub_80254DC();
    gUnk_02021C08 = 0;
    sub_8041090();
    sub_8034F60(gUnk02021D10.unkC);
}

void sub_8021918(void)
{
    u16 i, j;
    struct PlttData* pltt;

    for (i = 0; i < 32; i++)
    {
        for (j = 0; j < 512; j++)
        {
            pltt = (struct PlttData*)&g02000000[j];
            if (pltt->r)
                pltt->r--;
            if (pltt->g)
                pltt->g--;
            if (pltt->b)
                pltt->b--;
        }
        sub_80081DC(sub_80454E0);
        sub_8008220();
    }
}

void sub_80219E4(struct Unk* arg0)  //duel text (It's x's turn etc..)
{
    if (arg0->unk8 != 0xFF)
        sub_8041C94(g8FA2BAC[arg0->unk8], arg0->unk0, arg0->unk2, arg0->unk4, 0);
}

void sub_8021A14(struct Unk* arg0)
{
    arg0->unk0 = 0;
    arg0->unk2 = 0;
    arg0->unk4 = 0;
    arg0->unk6 = 0;
    arg0->unk8 = 0xFF;
}

void sub_8021A24(void)
{
    sub_8021A54();
    sub_8041C94(g8FA2C14[gUnk02021D10.opponent], 0, 0, 0, 0);
}

void sub_8021A54(void)
{
    struct Bruh bruh;

    bruh.a = gUnk02021D10.duelist.id;

    if (sub_8021A8C(&bruh))
        sub_8034F60(bruh.b);
}

bool8 sub_8021A8C(struct Bruh* arg0)
{
    u8 i;

    for (i = 0; g80C180C[i].a != 0; i++)
    {
        if (g80C180C[i].a == arg0->a)
        {
            arg0->b = g80C180C[i].b;
            return TRUE;
        }
    }
    arg0->b = 0;
    return FALSE;
}

void sub_8021AD4(void)
{
    if (gDuelistStatus[OPPONENT] == 2)
        gUnk02021D10.unk2B = 1;
    else
        gUnk02021D10.unk2B = 2;
    sub_801FF70();
    sub_8035020(2);
    sub_8021918();
}

void sub_8021B10(void)
{
    u8 i;

    gUnk02021D10.unk0 = 0;
    gUnk02021D10.unkC = 0;
    for (i = 0; i < 10; i++)
        gUnk02021D10.unk14[i] = 0;
    gUnk02021D10.capacityYield = 0;
    gUnk02021D10.unk2A = 0;
    gUnk02021D10.unk2B = 2;
    gUnk02021D10.unk2c = 0;
    gUnk02021D10.unk2d = 1;
    gUnk02021D10.duelist = *gUnk8E00B30[0]; //dummy duelist?
}
/*
void sub_8021B80(void)
{
    u16 i, j;
    struct PlttData* pltt;

    for (i = 0; i < 128; i++)
        gOamBuffer[i].mosaic = TRUE; //oam buffer nested structs?

    sub_80081DC(sub_8021C98);
    sub_8008220();

    for (i = 0; i < 32; i++)
    {
        for (j = 0; j < 512; j++)
        {
            pltt = (struct PlttData*)&g02000000[j];
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
void sub_8021B80(void)
{
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

void sub_8021C98(void)
{
    LoadOam();
    REG_MOSAIC = 0; //TODO
    REG_BG0CNT |= BGCNT_MOSAIC;
    REG_BG1CNT |= BGCNT_MOSAIC;
    REG_BG2CNT |= BGCNT_MOSAIC;
    REG_BG3CNT |= BGCNT_MOSAIC;
}

void sub_8021CD0(void)
{
    sub_80454E0();
}

void sub_08021CDC()
{

}

void sub_8021CE0(void) //unused
{
    if (sub_8021CFC() == 1)
    {
        sub_8021718();
        sub_804ED08();
    }
}

u8 sub_8021CFC(void)
{
    return 0;
}

u8 sub_8021D00(u16 id)
{
    SetCardInfo(id);
    return g80C1824[gCardInfo.ritualEffect];
}

//file split?
struct Unk3000C38
{
    u8 filler0[0x32];
    u8 unk32;
    u8 unk33;
    u8 unk34;
};

struct Unk2021DA0
{
    u32 unk0;
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
void sub_801D6D0(u32);
void sub_800AD4C(void);
void sub_8043E44(u8, u16*);
void sub_8058720(void);
void sub_8048CA8(u8, u16);


void sub_8021D20(void)
{
    struct Unk unk;
    u8 turn;

    sub_8021FF8();
    if (g3000C38.unk34)
        return;

    sub_8035038(2);
    sub_8034F60(213);
    sub_8021B80();
    sub_8022040();
    while (1)
    {
        turn = WhoseTurn();
        sub_8041104();
        sub_80240BC(&unk);
        if (turn == PLAYER)
        {
            unk.unk8 = 0;
            sub_802405C(&unk);
        }
        else
        {
            unk.unk8 = 23;
            sub_802405C(&unk);
        }
        sub_8022080();
        sub_8040524(0);
        ResetNumTributes();
        sub_804004C(turn);
        if (turn == PLAYER)
            sub_8021E0C();
        else
            sub_8021ED8();

        if (sub_8025544() == TRUE)
            break;
        sub_8026278();
        sub_804060C(2);
        sub_80254F8();
        sub_805872C();
        if (gNotSure[0]->unkTwo)
            gNotSure[0]->unkTwo = 0;
        if (gNotSure[0]->sorlTurns)
            sub_804075C(TURN_PLAYER);
        sub_8040584(2);
        sub_8040584(4);
        if (g3000C38.unk34)
            break;
    }
    sub_8022068();
}

void sub_8021E0C(void)
{
    struct Unk unk;

    g3000C38.unk32 = 0;
    if (NumEmptyZonesInRow(gZones[4]) > 0)
    {
        sub_8043CE4(PLAYER);
        if (sub_8025544() == TRUE)
        {
            g2021D98 = 3;
            sub_8024548();
            sub_80240BC(&unk);
            unk.unk8 = 24;
            sub_802408C(&unk);
            while (1)
            {
                sub_8024354();
                if (g3000C38.unk34 == 0)
                    break;
            }
            return;
        }
        else
            sub_8034F60(59);
    }
    sub_8041104();
    sub_80205D4();

    if (sub_8025544() == TRUE)
        return;

    sub_802549C();
    sub_802703C();
    sub_8040A40();

    if (sub_8025544() == TRUE)
        return;

    g2021D98 = 3;
    sub_8024548();
    sub_80240BC(&unk);
    unk.unk8 = 24;
    sub_802408C(&unk);
    while (1)
    {
        sub_8024354();
        if (g3000C6C == 0)
            break;
    }
}

void sub_8021ED8(void)
{
    struct Unk unk;
    struct CursorPosition curPos = gCursorPosition; //fix struct def
    bool32 r4 = 0;

    g3000C38.unk32 = 1;
    while (1)
    {
        while (1)
        {
            sub_8024354();
            if (g3000C38.unk34 == 0)
                break;
        }
        sub_8024568();

        switch (g2021D9C)
        {
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
        if (sub_8025544() == 1)
            r4 = 1;

        if (r4 == 1)
            break;
    }
    gCursorPosition = curPos;
    sub_8041D60(gCursorPosition.currentY);
}

NAKED
void sub_8021F80(void) //unused
{
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

void sub_8021FF8(void)
{
    sub_80452D4(6);
    sub_803276C();
    sub_8022234();
    sub_80240CC();
    if (g3000C38.unk34 == 0)
    {
        if (g2021DA0.unk0 != g2021D70)
            g3000C38.unk34 = 0xFE;
        else
            sub_802417C();
    }
}

void sub_8022040(void)
{
    sub_80222EC();
    sub_8041090();
    sub_8034F60(gUnk02021D10.unkC);
    sub_8041104();
    gUnk_02021C08 = 0;
}

void sub_8022068(void)
{
    sub_8022318();
    sub_8022214();
    sub_8035020(1);
    sub_8022340();
}

void sub_8022080(void)
{
    struct Unk unk;

    if (gUnk20241FC != 6)
        return;

    sub_80240BC(&unk);
    unk.unk8 = 24;
    sub_802408C(&unk);

    while (1)
    {
        sub_802432C();
        if (g3000C6C == 0)
            break;
    }

    if (WhoseTurn() == PLAYER)
        sub_8041D54();
}

void sub_80220C8(void)
{
    struct Unk unk;

    sub_801D6D0(gUnk02021D10.capacityYield);
    sub_800AD4C();
    sub_8035020(4);
    if (gLifePoints[OPPONENT] == 0)
    {
        sub_8021A14(&unk);
        unk.unk8 = 19;
        sub_80219E4(&unk);
    }
    else if (sub_8043E70(1) < sub_8043E9C(1))
    {
        sub_8021A14(&unk);
        unk.unk8 = 21;
        sub_80219E4(&unk);
    }

    if (gUnk02021D10.unk2d)
    {
        sub_8034F60(gUnk02021D10.unkE);
        sub_8021A14(&unk);
        unk.unk8 = 2;
        sub_80219E4(&unk);
        sub_8021A14(&unk);
        unk.unk8 = 6;
        unk.unk4 = gUnk02021D10.capacityYield;
        sub_80219E4(&unk);
    }
}

void sub_8022170(void)
{
    struct Unk unk;

    sub_801D6D0(5);
    sub_800AD4C();
    sub_8035020(4);
    if (gLifePoints[PLAYER] == 0)
    {
        sub_8021A14(&unk);
        unk.unk8 = 20;
        sub_80219E4(&unk);
    }
    else if (sub_8043E70(0) < sub_8043E9C(0))
    {
        sub_8021A14(&unk);
        unk.unk8 = 22;
        sub_80219E4(&unk);
    }

    if (gUnk02021D10.unk2d)
    {
        sub_8034F60(gUnk02021D10.unk10);
        sub_8021A14(&unk);
        unk.unk8 = 3;
        sub_80219E4(&unk);
        sub_8021A14(&unk);
        unk.unk8 = 6;
        unk.unk4 = 5;
        sub_80219E4(&unk);
    }
}

void sub_8022214(void)
{
    if (gUnk02021D10.unk2B == 1)
        sub_80220C8();
    else
        sub_8022170();
}

void sub_8022234(void)
{
    u32 i;

    for (i = 0; i < 9; i++)
        g2021D80[i] = 0;

    for (i = 0; i < 10; i++)
        gUnk02021D10.unk14[i] = 0;

    gUnk02021D10.unk0 = 0;
    gUnk02021D10.opponent = 0;
    gUnk02021D10.ante = gAnte;
    gUnk02021D10.capacityYield = 10;
    gUnk02021D10.unk2A = 0;
    gUnk02021D10.unk2B = 2;
    gUnk02021D10.unk2c = 0;
    gUnk02021D10.unk2d = 1;
    gUnk02021D10.duelist = *gUnk8E00B30[0];
    gUnk02021D10.unkC = 500;
    gUnk02021D10.unkE = 43;
    gUnk02021D10.unk10 = 44;
    sub_8043DD8();
    sub_8043E44(0, gDeck.cards);
    sub_8043D6C(0);
    sub_8058720();
}

void sub_80222EC(void)
{
    sub_80254DC();
    sub_8048CA8(PLAYER, gUnk02021D10.duelist.playerLp);
    sub_8048CA8(OPPONENT, gUnk02021D10.duelist.lifePoints);
    sub_803FD60();
}

void sub_8022318(void)
{
    if (gDuelistStatus[OPPONENT] == 2)
        gUnk02021D10.unk2B = 1;
    else
        gUnk02021D10.unk2B = 2;
}

void sub_8022340(void)  //fade to black
{
    u16 i, j;
    struct PlttData* pltt;

    for (i = 0; i < 32; i++)
    {
        for (j = 0; j < 512; j++)
        {
            pltt = (struct PlttData*)&g02000000[j];
            if (pltt->r)
                pltt->r--;
            if (pltt->g)
                pltt->g--;
            if (pltt->b)
                pltt->b--;
        }
        sub_80081DC(sub_80454E0);
        sub_8008220();
    }
}

void sub_8008F24(void);
void sub_801DA20(void);
void sub_8022A24(void);
void sub_8022C10(u32);
void sub_8023998(void);
void sub_8056208(void);
bool8 sub_801DBBC(void);
s32 sub_801DBE4(void);
void sub_8022B7C(u8);
void sub_8022AA0(void);
void sub_8023AE4(void);
void sub_8023A98(void);
void sub_8008548(void);
void sub_8022A94(u8);
s32 sub_801D3FC(void);
void sub_80226D8(void);
void sub_801D1C0(void);
s32 GetDeckCost(void);
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

void sub_802240C(void)
{
    sub_8034F60(47);
    sub_8008F24();
    sub_801DA20();
    sub_8022A24();
    sub_8022C10(g2021DA0.unk4);
    sub_8023998();

    while (1)
    {
        sub_8056208();
        if (g2021DA0.unk9 == 1)
        {
            if (sub_801DBBC() != 1)
            {
                sub_8022B7C(5);
                sub_8022AA0();
                sub_8034F60(57);
                sub_8023A98();
            }
            else
            {
                if (sub_801DBE4() != 1)
                {
                    sub_8022B7C(7);
                    sub_8022AA0();
                    sub_8034F60(57);
                    sub_8023AE4();
                }
                else
                    break;
            }
        }
        else if (g2021DA0.unk9 == 2)
        {
            sub_8034F60(55);
            sub_8008548();
            sub_8022B7C(0);
            sub_8022A24();
            sub_8022A94(0);
            sub_8023998();
        }
        else if (g2021DA0.unk9 == 3)
        {
            if (sub_801D3FC() != 1)
            {
                sub_8022B7C(0);
                sub_8034F60(57);
                sub_80226D8();
            }
            else
            {
                sub_8034F60(55);
                sub_801D1C0();
                sub_8022B7C(0);
                sub_8022A24();
                sub_8022A94(1);
                sub_8023998();
            }
        }
        else if (g2021DA0.unk9 == 4)
        {
            if (sub_801DBBC() != 1)
            {
                sub_8022B7C(5);
                sub_8022AA0();
                sub_8034F60(57);
                sub_8023A98();
            }
            else
            {
                if (sub_801DBE4() != 1) //_080225E6
                {
                    sub_8022B7C(7);
                    sub_8022AA0();
                    sub_8034F60(57);
                    sub_8023AE4();
                }
                else
                {
                    if (GetDeckCost() > g2021DA0.unk0)
                    {
                        sub_8022B7C(6);
                        sub_8022AA0();
                        sub_8034F60(57);
                        sub_8023B30();
                    }
                    else
                    {
                        sub_8023C14();
                        sub_8021D20();
                        sub_8034F60(47);
                        if (g3000C38.unk34 == 0xFE)
                        {
                            sub_8022B7C(8);
                            sub_8022AA0();
                            sub_8034F60(57);
                            sub_8023B7C();
                        }
                        else if (g3000C38.unk34 != 0)
                        {
                            sub_8022B7C(9);
                            sub_8022AA0();
                            sub_8034F60(57);
                            sub_8023BC8();
                        }
                        else
                        {
                            sub_8022B7C(0);
                            sub_8008F24();
                            sub_801DA20();
                            sub_8022A24();
                            sub_8022A94(3);
                            sub_8023998();
                        }
                    }
                }
            }
        }
        else
        {
            switch (sub_8022610())
            {
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
    }

    sub_800AD4C();
    sub_8034F60(55);
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
void sub_8022BF0(s32);

u16 sub_8022610(void)    //GetKeyMask?
{
    sub_802618C();
    if (gUnk2020DFC & 1)
        return 1;
    else if (gUnk2020DFC & 2)
        return 2;
    else if (gUnk2020DFC & 4)
        return 4;
    else if (gUnk2020DFC & 8)
        return 8;
    else if (g2020DF4 & 0x40)
        return 0x40;
    else if (g2020DF4 & 0x80)
        return 0x80;
    else if ((g2020DF4 & 0x20) && (gKeyState & 0x100))
        return 0x120;
    else if ((g2020DF4 & 0x10) && (gKeyState & 0x100))
        return 0x110;
    else if (g2020DF4 & 0x20)
        return 0x20;
    else if (g2020DF4 & 0x10)
        return 0x10;
    else
        return 0;
}

void sub_80226D8(void)
{
    switch (g2021DA0.unk9)
    {
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

void sub_8022764(void)
{
    if (g2021DA0.unk9 == 0)
    {
        sub_8022A64();
        sub_8022ABC();
        sub_80229C0();
        sub_8034F60(0x36);
        sub_8023A14();
    }
    else
        sub_8008220();
}

void sub_8022794(void)
{
    if (g2021DA0.unk9 == 0)
    {
        sub_8022A7C();
        sub_8022ABC();
        sub_80229C0();
        sub_8034F60(0x36);
        sub_8023A14();
    }
    else
        sub_8008220();
}

void sub_80227C4(void)
{
    if (g2021DA0.unk9 == 0)
    {
        sub_8022BC8(100);
        sub_8022ABC();
        sub_80229C0();
        sub_8034F60(0x36);
        sub_8023A14();
    }
    else
        sub_8008220();
}

void sub_80227F4(void)
{
    if (g2021DA0.unk9 == 0)
    {
        sub_8022BA0(100);
        sub_8022ABC();
        sub_80229C0();
        sub_8034F60(0x36);
        sub_8023A14();
    }
    else
        sub_8008220();
}

void sub_8022824(void)
{
    if (g2021DA0.unk9 == 0)
    {
        sub_8022BC8(1000);
        sub_8022ABC();
        sub_80229C0();
        sub_8034F60(0x36);
        sub_8023A14();
    }
    else
        sub_8008220();
}

void sub_8022858(void)
{
    if (g2021DA0.unk9 == 0)
    {
        sub_8022BA0(1000);
        sub_8022ABC();
        sub_80229C0();
        sub_8034F60(0x36);
        sub_8023A14();
    }
    else
        sub_8008220();
}

void sub_802288C(void)
{
    switch (g2021DA0.unk9)
    {
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
        sub_8034F60(0x38);
        sub_8023A44();
        break;
    default:
        sub_8008220();
    }
}

void sub_80228CC(void)
{
    switch (g2021DA0.unkA)
    {
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
        sub_8034F60(0x37);
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

void sub_802293C(void)
{
    switch (g2021DA0.unk9)
    {
    case 0:
        sub_8022A94(4);
        sub_8022ABC();
        sub_80229C0();
        sub_8034F60(0x38);
        sub_8023A14();
        break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
        sub_8022B7C(0);
        sub_8022AA0();
        sub_8034F60(0x38);
        sub_8023A44();
        break;
    default:
        sub_8008220();
    }
}

void sub_8022990(void)
{
    if (g2021DA0.unk9 == 0)
    {
        sub_8022BF0(65000);
        sub_8022ABC();
        sub_8034F60(0x37);
        sub_8023A14();
    }
    else
        sub_8008220();
}

struct Unk8f
{
    u8 unk0;
    u8 unk1;
    u8 filler2[2];
    u32 unk4;
};

extern u8 g80C1852[];
extern struct Unk8f (*g8FC4A8C[])[1];

void sub_80229C0(void)
{
    if (g2021DA0.unkE == 0)
    {
        u8 temp = g80C1852[g2021DA0.unkA];
        g2021DA0.unkD++;
        if (g8FC4A8C[temp][g2021DA0.unkD]->unk0 == 0)
            g2021DA0.unkD = 0;
    }

    if (g2021DA0.unkE == 0)
    {
        u8 temp = g80C1852[g2021DA0.unkA];
        g2021DA0.unkE = g8FC4A8C[temp][g2021DA0.unkD]->unk0;
    }
    else
        g2021DA0.unkE--;
}

u8 GetDeckSize(void);

void sub_8022A24(void)
{
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

void sub_8022A64(void)
{
    g2021DA0.unkA = g80C188C[g2021DA0.unkA];
}

void sub_8022A7C(void)
{
    g2021DA0.unkA = g80C1891[g2021DA0.unkA];
}

void sub_8022A94(u8 arg0)
{
    g2021DA0.unkA = arg0;
}

void sub_8022AA0(void)
{
    g2021DA0.unkB = 0;
    g2021DA0.unkC = 0;
}

u8 sub_8022AB0(void)
{
    return g2021DA0.unkB;
}

void sub_8022ABC(void)
{
    if (g2021DA0.unkC == 0)
        g2021DA0.unkB = g80C1857[g2021DA0.unkB];

    sub_8022B04();
}

void sub_8022AE0(void)
{
    if (g2021DA0.unkC == 0)
        g2021DA0.unkB = g80C1872[g2021DA0.unkB];

    sub_8022B04();
}

void sub_8022B04(void)
{
    if (g2021DA0.unkC == 0)
        g2021DA0.unkC = 3;
    else
        g2021DA0.unkC--;
}

void sub_8022B1C(void)
{
    u8 temp = g80C1852[g2021DA0.unkA];
    g2021DA0.unkD = 0;
    g2021DA0.unkE = g8FC4A8C[temp][0]->unk0;
}

void sub_8022B44(void)
{
    if (g2021DA0.unkE == 0)
    {
        u8 temp = g80C1852[g2021DA0.unkA];
        g2021DA0.unkE = g8FC4A8C[temp][g2021DA0.unkD]->unk0;
    }
    else
       g2021DA0.unkE--;
}

void sub_8022B7C(u8 arg0)
{
    g2021DA0.unk9 = arg0;
}

u8 sub_8022B88(void)
{
    return g2021DA0.unk9;
}

void sub_8022B94(void)
{
    g2021DA0.unk0 = 100;
}

void sub_8022BA0(u32 arg0)
{
    if (g2021DA0.unk0 == 65000)
        g2021DA0.unk0 = 100;
    else
    {
        s32 cost = g2021DA0.unk0 + arg0;
        g2021DA0.unk0 = cost;
        if (cost > 65000)
            g2021DA0.unk0 = 65000;
    }
}

void sub_8022BC8(u32 arg0)
{
    if (g2021DA0.unk0 == 100)
        g2021DA0.unk0 = 65000;
    else
    {
        s32 cost = g2021DA0.unk0 - arg0;
        g2021DA0.unk0 = cost;
        if (cost < 100)
            g2021DA0.unk0 = 100;
    }
}


