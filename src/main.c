#include "global.h"


extern u16 gUnk2021D00;
extern u8 gUnk2021D04;
extern u8 gLanguage;


void sub_8057854(void);
void InitButtonMaps(void);
void sub_80595C4(void);
void m4aSoundMode(u32);
void sub_800AEC4(void);
void sub_800AD24(void);
void ResetLfsrStateBit(void);
void sub_80327C8(void);
void sub_803276C(void);
void TitleScreenMain(void);
void OverworldMain(void);

//TODO: no return value
int AgbMain (void)
{
    gUnk2021D04 = 0;
    gUnk2021D00 = 0;
    gLanguage = 0;
    sub_8057854();
    InitButtonMaps();
    REG_IME = 0;
    REG_IE = INTR_FLAG_VBLANK | INTR_FLAG_GAMEPAK;
    REG_DISPSTAT = DISPSTAT_VBLANK_INTR;
    REG_IME = 1;
    REG_DISPCNT = DISPCNT_FORCED_BLANK;
    sub_80595C4();
    m4aSoundMode(0x0097FC00);
    sub_800AEC4();
    sub_800AD24();
    ResetLfsrStateBit();
    sub_80327C8();
    sub_803276C();
    CopyrightScreensMain();
    TitleScreenMain();
    OverworldMain();
}
