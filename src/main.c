#include "global.h"
#include "gba/io_reg.h"
#include "duel.h"

extern u16 gUnk2021D00;
extern u8 gUnk2021D04;
extern u8 gLanguage;


void sub_8057854(void);
void sub_80082C0(void);
void sub_80595C4(void);
void sub_8059B60(u32);
void sub_800AEC4(void);
void sub_800AD24(void);
void sub_80561FC(void);
void sub_80327C8(void);
void sub_803276C(void);
void sub_80268D8(void); //nintendo and konami screens
void sub_8035444(void); //title screen and continue screen
void sub_804DC48(void);

int AgbMain(void)
{
    gUnk2021D04 = 0;
    gUnk2021D00 = 0;
    gLanguage = 0;
    sub_8057854();
    sub_80082C0();
    REG_IME = 0;
    REG_IE = INTR_FLAG_VBLANK | INTR_FLAG_GAMEPAK;
    REG_DISPSTAT = DISPSTAT_VBLANK_INTR;
    REG_IME = 1;
    REG_DISPCNT = DISPCNT_FORCED_BLANK;
    sub_80595C4();
    sub_8059B60(0x0097FC00);
    sub_800AEC4();
    sub_800AD24();
    sub_80561FC();
    sub_80327C8();
    sub_803276C();
    sub_80268D8();
    sub_8035444();
    sub_804DC48();
}
