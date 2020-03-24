#include "global.h"
/*

void sub_8000224(void)
{
    u32 zero;
    sub_8000724();
    while (1)
    {
        switch (gUnk_8DF758C->unk0)
        {
        case 0:
            if (++gUnk_8DF758C->unk6 > 60)
            {
                gUnk_8DF758C->unkA = 0;
                gUnk2024238 = (16 - gUnk_8DF758C->unkA) << 8 | gUnk_8DF758C->unkA;
                sub_804549C();
                gUnk_8DF758C->unk6 = 0;
                gUnk_8DF758C->unk0 = 1;
            }
            break;
        case 1:
            gUnk2024240 = 0x1C0;
            sub_8045434();
            gUnk_8DF758C->unk0 = 2;
            break;
        case 2:
            if (gUnk_8DF758C->unk4 & 1 == 0)
            {
                gUnk2024240++;
                gUnk202422C++;
                sub_8045434();
            }
            if (gUnk_8DF758C->unkA < 16 && gUnk_8DF758C->unk4 & 7 == 0)
            {
                gUnk_8DF758C->unkA++;
                gUnk2024238 = (16 - gUnk_8DF758C->unkA) << 8 | gUnk_8DF758C->unkA;
                sub_804549C();
            }
            if (gUnk2024240 & 0x1FF == 0)
            {
                if (gUnk_8DF758C->unk8 < 16)
                    gUnk_8DF758C->unk8++;
                else
                    gUnk_8DF758C->unk8 = 0;
                if (gUnk_8DF758C->unk8 < 15)
                {
                    zero = 0;
                    CpuFastSet(&zero, )
                }
            }
        }
        //_0800070E
    }
}

extern u16 gUnk202422C;
extern u16 gUnk2024238;
extern u16 gUnk2024240;

struct UnkStruct2018800
{
    u32 unk0;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u8 unkA;
};

extern struct UnkStruct2018800* gUnk_8DF758C;
*/