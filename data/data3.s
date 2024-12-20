    .section .rodata

    .global gUnk_94C37
gUnk_94C37:
    .incbin "baserom.gba", 0x94C37, 0x19EC9
// end of card.c?

//duel_trunk_menu?
    .global gUnk_80AEB00
gUnk_80AEB00:
    .incbin "baserom.gba", 0xAEB00, 0x30

    .global gUnk_80AEB30
gUnk_80AEB30:
    .incbin "baserom.gba", 0xAEB30, 0x224

    .global gCurrentTurnOpponent
gCurrentTurnOpponent:
    .incbin "baserom.gba", 0xAED54, 0xA96C
