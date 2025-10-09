    .section .rodata

    .global gUnk_94C37
gUnk_94C37:
    .incbin "baserom.gba", 0x94C37, 0x19EC9
// end of card.c?

//duel_trunk_menu?

    .section .rodata2

    .global gUnk_80AEB30
gUnk_80AEB30:
    .incbin "baserom.gba", 0xAEB45, 0x1f7 @AEB48: array of strings of japanese names of some characters (yugi etc..)


    .section .rodata3
    .incbin "baserom.gba", 0xAED56, 0xA96A
