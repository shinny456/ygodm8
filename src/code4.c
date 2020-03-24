#include "global.h"
/*
struct Object
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    u8 unkC;
    u8 unkD;
    u16 unkE;
    u16 spriteId;
    u8 direction; //facing UDLR
    u8 filler13;
    u16 x;
    u16 y;
    u16 unk18;
    u8 unk1A;
    u8 filler1B[0x3];
    u8 unk1E;
};

struct PlayerObject
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u16 spriteId;
    u8 direction; //facing UDLR
    u8 filler13;
    u16 x;
    u16 y;
    u16 unk18;
    u8 unk1A;
    u8 filler1B[0x3];
    u8 unk1E;
};

struct Overworld
{
    struct Object objects[15]; //1e0   
    u8 filler_1E0[0x14];
    u32 unk1F4[5];
    u32 unk208[5];
    u8 unk21C[0x20];
    u32* unk23C;
    u8 unk240;
    u16 unk242;
    u8 filler244[0xC];
    u8 unk250;
};

extern struct Overworld gUnk2024270;
extern u32* gUnk8E11DC4[];
extern u32** gUnk8E19274[];
extern u8 gUnk8E0DA12[]; //frames
extern u8* gUnk8E11790[];
extern u16 gUnk08103264[];
extern u8 gUnk2010400[][];

//2024270 + 1E0
//2024450


//sb = 1f4
//r7 = gUnk8E19274
//r8 = 208

//r4 = gUnk2024270
//r6 = gUnk8E19274
/*
void sub_804D640(void)
{
    u16 i;

    gUnk2024270.object.playerObject.unk0 = gUnk2024270.object.playerObject.unk8;
    gUnk2024270.object.playerObject.unk2 = gUnk2024270.object.playerObject.unkA;
    gUnk2024270.object.playerObject.unk4 = gUnk2024270.object.playerObject.unkC;
    gUnk2024270.unk250 = 0;
    gUnk2024270.unk23C = gUnk8E11DC4[gUnk2024270.object.playerObject.unk0];
    for (i = 0; i < 5; i++)
    {
        gUnk2024270.unk1F4[i] = gUnk8E19274[gUnk2024270.object.playerObject.unk0][gUnk2024270.object.playerObject.unk2][i * 2 + 80];
        gUnk2024270.unk208[i] = gUnk8E19274[gUnk2024270.object.playerObject.unk0][gUnk2024270.object.playerObject.unk2][i * 2 + 90];
    }

}*

//0x200 per sprite

//

void sub_804DF5C(u8 personId)
{
    u8 direction = gUnk2024270.objects[personId].direction;
    
    if (direction < 4)
    {
        gUnk8E11790[gUnk2024270.objects[personId].spriteId][]
    }
    else
    {
        
    }
}

dir * 3 + gUnk8E0DA12[gUnk2024270.objects[personId].unk1E]

gUnk08103264[personId]*/