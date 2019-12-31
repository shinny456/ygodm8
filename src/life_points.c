#include "global.h"
#include "duel.h"

void sub_8048C60(void)
{
    if (!gUnk20241FC)
    {
        gLifePoints[0] = sub_8048CE0();
        gLifePoints[1] = gUnk02021D10.duelist.lifePoints;
    }
    else
    {
        gLifePoints[0] = gUnk02021D10.duelist.playerLp;
        gLifePoints[1] = gUnk02021D10.duelist.lifePoints;
    }
}

void sub_8048CA8(u8 i, u16 lp)
{
    gLifePoints[i] = lp;
}

void sub_8048CB8(void)
{
    gUnk02024254 = 8000;
}

/*
void sub_8048CC8(u32 lp)
{
    u32 LP = lp;

    if (lp > 65000)
        LP = 65000;
    else
        LP = lp;

    gUnk02024254 = LP;
}*/

NAKED
void sub_8048CC8(u32 lp)
{
    asm_unified("\n\
    adds r1, r0, #0\n\
	ldr r0, _08048CD8\n\
	cmp r1, r0\n\
	bls _08048CD2\n\
	adds r1, r0, #0\n\
_08048CD2:\n\
	ldr r0, _08048CDC\n\
	str r1, [r0]\n\
	bx lr\n\
	.align 2, 0\n\
_08048CD8: .4byte 0x0000FDE8\n\
_08048CDC: .4byte 0x02024254");
}

u32 sub_8048CE0(void)
{
    return gUnk02024254;
}

/*
void sub_8048CEC(void)
{
    if ((gUnk02024254 = gLifePoints[0]) > 8000)
        gUnk02024254 = 8000;
}*/

NAKED
void sub_8048CEC(void)
{
    asm_unified("\n\
	ldr r2, _08048D00\n\
	ldr r0, _08048D04\n\
	ldrh r0, [r0]\n\
	str r0, [r2]\n\
	movs r1, #0xfa\n\
	lsls r1, r1, #5\n\
	cmp r0, r1\n\
	bls _08048CFE\n\
	str r1, [r2]\n\
_08048CFE:\n\
	bx lr\n\
	.align 2, 0\n\
_08048D00: .4byte gUnk02024254\n\
_08048D04: .4byte gLifePoints");
}
/*
void sub_8048D08(void)
{
    if (gUnk02024254 < 8000)
        gUnk02024254 = 8000;
}*/

NAKED
void sub_8048D08(void)
{
    asm_unified("\n\
	ldr r2, _08048D18\n\
	ldr r1, [r2]\n\
	ldr r0, _08048D1C\n\
	cmp r1, r0\n\
	bhi _08048D16\n\
	adds r0, #1\n\
	str r0, [r2]\n\
_08048D16:\n\
	bx lr\n\
	.align 2, 0\n\
_08048D18: .4byte gUnk02024254\n\
_08048D1C: .4byte 0x00001F3F");
}

NAKED
void sub_8048D20(u8 arg0, u16 arg1)
{
    asm_unified("\n\
    lsls r0, r0, #0x18\n\
	lsls r1, r1, #0x10\n\
	ldr r2, _08048D3C\n\
	lsrs r0, r0, #0x17\n\
	adds r2, r0, r2\n\
	lsrs r1, r1, #0x10\n\
	ldrh r0, [r2]\n\
	adds r1, r1, r0\n\
	ldr r0, _08048D40\n\
	cmp r1, r0\n\
	ble _08048D44\n\
	adds r0, #1\n\
	strh r0, [r2]\n\
	b _08048D46\n\
	.align 2, 0\n\
_08048D3C: .4byte gLifePoints\n\
_08048D40: .4byte 0x0000FDE7\n\
_08048D44:\n\
	strh r1, [r2]\n\
_08048D46:\n\
	bx lr");
}

NAKED
void sub_8048D48(u8 arg0, u16 arg1)
{
    asm_unified("\n\
	lsls r0, r0, #0x18\n\
	lsls r1, r1, #0x10\n\
	lsrs r1, r1, #0x10\n\
	ldr r2, _08048D64\n\
	lsrs r0, r0, #0x17\n\
	adds r2, r0, r2\n\
	ldrh r0, [r2]\n\
	subs r0, r0, r1\n\
	cmp r0, #0\n\
	bgt _08048D5E\n\
	movs r0, #0\n\
_08048D5E:\n\
	strh r0, [r2]\n\
	bx lr\n\
	.align 2, 0\n\
_08048D64: .4byte gLifePoints");
}
