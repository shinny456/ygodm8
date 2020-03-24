#include "global.h"
#include "duel.h"
#include "card.h"
#include "player.h"
#include "constants/card_ids.h"


extern u8 gUnk8094C37[];
extern u8 gUnk8094CC3[];
extern u8 gUnk8094FE4[NUM_FIELDS][NUM_CARD_TYPES];
extern u8* gUnk8F985E0[];
extern u16 gCardAtks[];
extern u16 gCardDefs[];
extern u32 gCardCosts[];
extern u8 gCardAttributes[];
extern u8 gCardLevels[];
extern u8 gCardTypes[];
extern u8 gCardColors[];
extern u8 gCardMagicEffect[];
extern u8 gCardMonsterEffects[];
extern u8 gCardTrapEffect[];
extern u8 gUnk8094C37[];
extern u8 gUnk8097D94[][62];
extern u8 gUnk8DFB654[];
extern u8 gUnk8DFB8A8[];

extern u8 gUnk200FC00[][64];
extern u8 gUnk201CB38;
extern s8 gUnk201CB39;

u16 sub_800B594(u16, u8);
u16 sub_800B560(u16, s8);
u8* sub_800BD14(u16);
u64 sub_805C618(u16);
u64 sub_805BEF4(u64, u64);
u64 sub_805AFC0(u64);

void sub_800B318(struct StatMod* ptr)
{
    SetCardInfo(ptr->card);
    if (gCardInfo.spellEffect == 2)
    {
        gCardInfo.atk = sub_800B594(gCardInfo.atk, gUnk8094FE4[ptr->field][gCardInfo.type]);
        gCardInfo.def = sub_800B594(gCardInfo.def, gUnk8094FE4[ptr->field][gCardInfo.type]);
        gCardInfo.atk = sub_800B560(gCardInfo.atk, ptr->stage);
        gCardInfo.def = sub_800B560(gCardInfo.def, ptr->stage);
    }
}

void sub_800B384(void)
{
    gCardInfo.name = sub_800BD14(CARD_NONE);
    gCardInfo.unk4 = sub_800BD14(CARD_NONE);
    gCardInfo.unk8 = gUnk8F985E0[CARD_NONE];
    gCardInfo.cost = 0;
    gCardInfo.id = CARD_NONE;
    gCardInfo.atk = 0xFFFF;
    gCardInfo.def = 0xFFFF;
    gCardInfo.type = TYPE_NONE;
    gCardInfo.attribute = ATTRIBUTE_NONE;
    gCardInfo.level = 0;
    gCardInfo.color = COLOR_NORMAL;
    gCardInfo.spellEffect = 0;
    gCardInfo.monsterEffect = 0;
    gCardInfo.trapEffect = 0;
    gCardInfo.ritualEffect = 0;
    gCardInfo.unk1E = 0;
    gUnk201CB38 = 0;
    gUnk201CB39 = 0;
}

void SetCardInfo(u16 id)
{
    gCardInfo.id = id;
    gCardInfo.atk = gCardAtks[id];
    gCardInfo.def = gCardDefs[id];
    gCardInfo.cost = gCardCosts[id];
    gCardInfo.attribute = gCardAttributes[id];
    gCardInfo.level = gCardLevels[id];
    gCardInfo.type = gCardTypes[id];
    gCardInfo.color = gCardColors[id];
    gCardInfo.spellEffect = gCardMagicEffect[id];
    gCardInfo.monsterEffect = gCardMonsterEffects[id];
    gCardInfo.trapEffect = gCardTrapEffect[id];
    gCardInfo.ritualEffect = gUnk8094C37[gCardInfo.spellEffect];
    gCardInfo.unk1E = gUnk8094CC3[id];
    gCardInfo.name = sub_800BD14(id);
    gCardInfo.unk4 = sub_800BD14(id);
    gCardInfo.unk8 = gUnk8F985E0[id];
}

void sub_800B4AC(u16 id)
{
    SetCardInfo(id);
    if (gCardInfo.spellEffect == 2)
    {
        gCardInfo.atk = sub_800B594(gCardInfo.atk, gUnk8094FE4[gUnk201CB38][gCardInfo.type]);
        gCardInfo.def = sub_800B594(gCardInfo.def, gUnk8094FE4[gUnk201CB38][gCardInfo.type]);
        gCardInfo.atk = sub_800B560(gCardInfo.atk, gUnk201CB39);
        gCardInfo.def = sub_800B560(gCardInfo.def, gUnk201CB39);
    }
}

void sub_800B524(u8 val, s8 val2)
{
    gUnk201CB38 = val;
    gUnk201CB39 = val2;
}

void sub_800B538(u16* id)
{
    SetCardInfo(*id);
    if (gCardInfo.cost > GetDuelistLevel())
        gCardInfo.unk8 = gUnk8DFB654;
}
/*
u16 sub_800B560(u16 stat, s8 stage)
{
    s32 finalStat = stage * 500 + stat;

    if (finalStat <= 0)
        return 0;
    else if (finalStat <= 0xFFFE)
        return finalStat;
    else
        return 0xFFFE;
}*/

NAKED
u16 sub_800B560(u16 stat, s8 stage)
{
    asm_unified("\n\
	lsls r0, r0, #0x10\n\
	lsrs r2, r0, #0x10\n\
	lsls r1, r1, #0x18\n\
	asrs r1, r1, #0x18\n\
	lsls r0, r1, #5\n\
	subs r0, r0, r1\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r2\n\
	cmp r0, #0\n\
	bgt _0800B57C\n\
	movs r2, #0\n\
	b _0800B590\n\
_0800B57C:\n\
	ldr r1, _0800B588\n\
	cmp r0, r1\n\
	ble _0800B58C\n\
	adds r2, r1, #0\n\
	b _0800B590\n\
	.align 2, 0\n\
_0800B588: .4byte 0x0000FFFE\n\
_0800B58C:\n\
	lsls r0, r0, #0x10\n\
	lsrs r2, r0, #0x10\n\
_0800B590:\n\
	adds r0, r2, #0\n\
	bx lr");
}

u16 sub_800B594(u16 stat, u8 fieldMod)
{
    switch (fieldMod)
    {
    case 0:
    case 2:
    case 4:
        break;
    case 1:
        stat = sub_805AFC0(sub_805BEF4(sub_805C618(stat), 0x666666663FE66666));
        break;
    case 3:
        stat = sub_805AFC0(sub_805BEF4(sub_805C618(stat), 0xCCCCCCCD3FF4CCCC));
        if (stat > 0xFFFD)
            stat = 0xFFFE;
    }
    return stat;
}
/*
void sub_800B618(u32 r6)
{
    u8 i;
    
    for (i = 0; i < 20; i++)
        CpuSet(gUnk8097D94[i], gUnk200FC00[i], 31);
    
    LZ77UnCompWram()
    
}*/

/*
0x02000400
0x02008400
0x0‭20091A0‬
0x0‭2009580‬
0x0‭2009960‬
0x0‭2009D40‬
0x0‭‭200A120‬
0x0‭‭200A500‬
0x0‭‭200A540‬
0x0200EC40
0x0200F400
0x0200FC00*/






