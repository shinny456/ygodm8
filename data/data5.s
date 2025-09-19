    .section .rodata

    .incbin "baserom.gba", 0xDF1B28, 0x5A24

    .global gCreditsTilemaps @df754c
gCreditsTilemaps:
    .4byte gUnk_8061D60
    .4byte gUnk_8061EA0
    .4byte gUnk_8061FA0
    .4byte gUnk_8062220
    .4byte gUnk_8062420
    .4byte gUnk_80626A0
    .4byte gUnk_8062920
    .4byte gUnk_8062BA0
    .4byte gUnk_8062EA0
    .4byte gUnk_80630A0
    .4byte gUnk_8063360
    .4byte gUnk_80636E0
    .4byte gUnk_80639A0
    .4byte gUnk_8063B20
    .4byte gUnk_8063C20
    .4byte gUnk_8063D20

    .global gCreditsData
gCreditsData:
    .4byte gSharedMem

    .global g8DF7590
g8DF7590:
    .4byte gSharedMem

    .global g8DF7594
g8DF7594:
    .4byte gSharedMem




// ?????????????
    .global gUnk_8DF7598
gUnk_8DF7598:
    .incbin "baserom.gba", 0xDF7598, 0x160





// world_map.c begin
    .global gUnk_8DF76F8
gUnk_8DF76F8:
    .4byte gUnk_80741F8
    .4byte gUnk_8074220
    .4byte gUnk_8074248
    .4byte gUnk_8074270
    .4byte gUnk_8074298
    .4byte gUnk_80742C0
    .4byte gUnk_80742E8
    .4byte gUnk_8074310
    .4byte gUnk_8074338
    .4byte gUnk_8074360
    .4byte gUnk_8074388
    .4byte gUnk_80743B0
    .4byte gUnk_80743D8
    .4byte 0
    .incbin "baserom.gba", 0xDF7730, 0x210


    .global gUnk_8DF7940
gUnk_8DF7940:
    .4byte gUnk_8074420
    .4byte gUnk_8074458
    .4byte gUnk_8074490
    .4byte gUnk_80744C8
    .4byte gUnk_8074500
    .4byte gUnk_8074538
    .4byte gUnk_8074570
    .4byte gUnk_80745A8
    .4byte gUnk_80745E0
    .4byte gUnk_8074618
    .4byte gUnk_8074650
    .4byte gUnk_8074688
    .4byte gUnk_80746C0
    .4byte 0

    .global gUnk_8DF7978
gUnk_8DF7978:
    .4byte gUnk_8072EA0
    .4byte gUnk_8072FA0
    .4byte gUnk_80730A0
    .4byte gUnk_80731A0
    .4byte gUnk_80732A0
    .4byte gUnk_80733A0
    .4byte gUnk_80734A0
    .4byte gUnk_80735A0
    .4byte gUnk_80736A0
    .4byte gUnk_80737A0
    .4byte gUnk_80738A0
    .4byte gUnk_80739A0
    .4byte gUnk_8073AA0
    .4byte gUnk_8072EA0
    .4byte gUnk_8072EA0
    .4byte gUnk_8072EA0

    .global gUnk_8DF79B8
gUnk_8DF79B8:
    .4byte gUnk_8066BA0
    .4byte gUnk_8067AA0
    .4byte gUnk_80689A0
    .4byte gUnk_80698A0
    .4byte gUnk_806A7A0
    .4byte gUnk_806B6A0
    .4byte gUnk_806C5A0
    .4byte gUnk_806D4A0
    .4byte gUnk_806E3A0
    .4byte gUnk_806F2A0
    .4byte gUnk_80701A0
    .4byte gUnk_80710A0
    .4byte gUnk_8071FA0
    .4byte gUnk_8066BA0
    .4byte gUnk_8066BA0
    .4byte gUnk_8066BA0

    .global gUnk_8DF79F8
gUnk_8DF79F8:
    .incbin "baserom.gba", 0xDF79F8, 0x20

    .global gUnk_8DF7A18
gUnk_8DF7A18:
    .incbin "baserom.gba", 0xDF7A18, 0x10

    .global gUnk_8DF7A28
gUnk_8DF7A28:
    .4byte gSharedMem


// world_map.c end



// naming_screen.c begin
.incbin "baserom.gba", 0xDF7A2C, 0x5A8

    .global gUnk_8DF7FD4
gUnk_8DF7FD4:
    .4byte gUnk_8081CF0
    .4byte gUnk_8081D00
    .4byte gUnk_8081D10
    .4byte gUnk_8081D20
    .4byte gUnk_8081D30
    .4byte gUnk_8081D40
    .4byte gUnk_8081D50
    .4byte gUnk_8081D60
    .4byte gUnk_8081D70
    .4byte gUnk_8081D80
    .4byte gUnk_8081D90
    .4byte gUnk_8081DA0
    .4byte gUnk_8081DB0
    .4byte gUnk_8081DD8
    .4byte gUnk_8081E00
    .4byte gUnk_8081E10
    .4byte gUnk_8081E38
    .4byte gUnk_8081E60
    .4byte gUnk_8081E88
    .4byte gUnk_8081EB0
    .4byte gUnk_8081ED8
    .4byte gUnk_8081F00
    .4byte 0

    .global g8DF8030
g8DF8030:
    .4byte gUnk_8084AF8
    .4byte gUnk_8084A5C
    .4byte gUnk_80849C0
    .4byte gUnk_8084888
    .4byte gUnk_808466C
    .4byte gUnk_8084668
    .4byte gUnk_80845CC
    .4byte gUnk_8084530
    .4byte gUnk_8084494
    .4byte gUnk_80843F8
    .4byte gUnk_808435C
    .4byte gUnk_8084668
    .4byte gUnk_808426C
    .4byte gUnk_80841BC
    .4byte gUnk_8084120
    .4byte gUnk_8084084
    .4byte gUnk_8083FBC
    .4byte gUnk_8083DDC
    .4byte gUnk_8083C60
    .4byte gUnk_8083BC4
    .4byte gUnk_8083AE4
    .4byte gUnk_8083984
    .4byte gUnk_8084668
    .4byte gUnk_80838E8
    .4byte gUnk_808384C
    .4byte gUnk_80837B0
    .4byte gUnk_8083710
    .4byte gUnk_8083674
    .4byte gUnk_8083590
    .4byte gUnk_8083260
    .4byte gUnk_80831C4
    .4byte gUnk_80830DC
    .4byte gUnk_8083010
    .4byte gUnk_8084668
    .4byte gUnk_8082F74
    .4byte gUnk_8084668
    .4byte gUnk_8082ED8
    .4byte gUnk_8084668
    .4byte gUnk_8082E3C
    .4byte gUnk_8082D60
    .4byte gUnk_8082CB0
    .4byte gUnk_8082C14
    .4byte gUnk_8082B78
    .4byte gUnk_8082A84
    .4byte gUnk_8084668
    .4byte gUnk_80829E8
    .4byte gUnk_808294C
    .4byte gUnk_80828B0
    .4byte gUnk_8082814
    .4byte gUnk_8082778
    .4byte gUnk_80826DC
    .4byte gUnk_8082640
    .4byte gUnk_80825A4
    .4byte gUnk_8082508
    .4byte gUnk_808246C
    .4byte gUnk_8084668
    .4byte gUnk_80823D0

    .global gUnk_8DF8114
gUnk_8DF8114:
    .4byte gSharedMem

// naming_screen.c end

    //unused?
    .global g8DF8118
g8DF8118:
    .4byte gSharedMem



// defined in code_8008030.c or status_menu.c but used in other places as well?
    .global g8DF811C
g8DF811C:
    .incbin "baserom.gba", 0xDF811C, 0x20





//trunk?
    .global gNextUpOptionInTrunkSubmenu
gNextUpOptionInTrunkSubmenu:
    .incbin "baserom.gba", 0xDF813C, 0x3

    .global gNextDownOptionInTrunkSubmenu
gNextDownOptionInTrunkSubmenu:
    .incbin "baserom.gba", 0xDF813F, 0x3

    .global gUnk_8DF8142
gUnk_8DF8142:
    .incbin "baserom.gba", 0xDF8142, 0x3

//trunk end?


    .global gUnk_8DF8145
gUnk_8DF8145:
    .incbin "baserom.gba", 0xDF8145, 3

    .global gUnk_8DF8148
gUnk_8DF8148:
    .incbin "baserom.gba", 0xDF8148, 0x2200


// card.c?

    .global gTypeIconPalettes
gTypeIconPalettes:
    .incbin "baserom.gba", 0xDFA348, 0x60

    .global gTypeIconTiles
gTypeIconTiles:
    .incbin "baserom.gba", 0xDFA3A8, 0x1E0

    .global gAttributeIconPalettes
gAttributeIconPalettes:
    .incbin "baserom.gba", 0xDFA588, 0x30

    .global gAttributeIconTiles
gAttributeIconTiles:
    .incbin "baserom.gba", 0xDFA5B8, 0xF0

    .global gUnk_8DFA6A8
gUnk_8DFA6A8:
    .incbin "baserom.gba", 0xDFA6A8, 0xA

    .global gUnk_DFA6B2
gUnk_DFA6B2:
    .incbin "baserom.gba", 0xDFA6B2, 0x1BD6

    .global gCardNames /*card name ptrs*/
gCardNames:
    .incbin "baserom.gba", 0xDFC288, 0x3210
//end of card.c?


//start of duel_trunk_menu?
    .global g8DFF498
g8DFF498:
    .incbin "baserom.gba", 0xDFF498, 0x3

    .global g8DFF49B
g8DFF49B:
    .incbin "baserom.gba", 0xDFF49B, 0xC1
//end of duel_trunk_menu?




// start of code2.c (aka AI.c)
    .global g8DFF55C
g8DFF55C:
    .incbin "baserom.gba", 0xDFF55C, 0xA4

    .global g8DFF600
g8DFF600:
    .incbin "baserom.gba", 0xDFF600, 0xA4

    .global gUnk_8DFF6A4
gUnk_8DFF6A4:
    .4byte gSharedMem

    .global gUnk_8DFF6A8
gUnk_8DFF6A8:
    .incbin "baserom.gba", 0xDFF6A8, 0xE68

    .global gE00510
gE00510:
     .incbin "baserom.gba", 0xE00510, 0x920
//code2.c end?



// ?
    .global gUnk_8E00E30
gUnk_8E00E30:
    .4byte gUnk_80BED1C
    .4byte gUnk_80BED18
    .4byte gUnk_80BED1C
    .4byte gUnk_80BED14
    .4byte gUnk_80BED10
    .4byte gUnk_80BED0C
    .4byte gUnk_80BED08
    .4byte gUnk_80BED04
    .4byte gUnk_80BED00
    .4byte gUnk_80BECFC
    .4byte gUnk_80BECF8
    .4byte gUnk_80BECF4
    .4byte gUnk_80BED0C
    .4byte gUnk_80BECF0
    .4byte gUnk_80BECEC
    .4byte gUnk_80BECE8
    .4byte gUnk_80BECE4
    .4byte gUnk_80BECE0
    .4byte gUnk_80BECDC
    .4byte gUnk_80BECD8
    .4byte gUnk_80BECD4
    .4byte gUnk_80BECD0
    .4byte gUnk_80BECCC
    .4byte gUnk_80BECC8
    .4byte gUnk_80BECC4
    .4byte gUnk_80BECC0
    .4byte gUnk_80BECBC
    .4byte gUnk_80BECB8
    .4byte gUnk_80BECB4
    .4byte gUnk_80BECB0
    .4byte gUnk_80BECAC
    .4byte gUnk_80BECA8
    .4byte gUnk_80BECA4
    .4byte gUnk_80BECA0
    .4byte gUnk_80BEC9C
    .4byte gUnk_80BEC98
    .4byte gUnk_80BEC94
    .4byte gUnk_80BEC90
    .4byte gUnk_80BEC8C
    .4byte gUnk_80BEC88
    .4byte gUnk_80BEC84
    .4byte gUnk_80BEC80
    .4byte gUnk_80BEC7C
    .4byte gUnk_80BEC78
    .4byte gUnk_80BEC74
    .4byte gUnk_80BEC70
    .4byte gUnk_80BEC6C
    .4byte gUnk_80BEC68
    .4byte gUnk_80BEC64
    .4byte gUnk_80BEC60
    .4byte gUnk_80BEC5C
    .4byte gUnk_80BEC58
    .4byte gUnk_80BEC54
    .4byte gUnk_80BEC50
    .4byte gUnk_80BEC4C
    .4byte gUnk_80BEC48
    .4byte gUnk_80BEC44
    .4byte gUnk_80BEC40
    .4byte gUnk_80BEC3C
    .4byte gUnk_80BEC38
    .4byte gUnk_80BEC34
    .4byte gUnk_80BEC30
    .4byte gUnk_80BEC2C
    .4byte gUnk_80BEC28
    .4byte gUnk_80BEC24
    .4byte gUnk_80BEC20
    .4byte gUnk_80BEC1C
    .4byte gUnk_80BEC18
    .4byte gUnk_80BEC14
    .4byte gUnk_80BEC10
    .4byte gUnk_80BEC0C
    .4byte gUnk_80BEC08
    .4byte gUnk_80BEC04
    .4byte gUnk_80BEC00
    .4byte gUnk_80BEBFC
    .4byte gUnk_80BEBF8
    .4byte gUnk_80BEBF4
    .4byte gUnk_80BEBF0
    .4byte gUnk_80BEBEC
    .4byte gUnk_80BEBE8
    .4byte gUnk_80BEBE4
    .4byte gUnk_80BEBE0
    .4byte gUnk_80BEBDC
    .4byte gUnk_80BEBD8
    .4byte gUnk_80BEBD4
    .4byte gUnk_80BEBD0
    .4byte gUnk_80BEBCC
    .4byte gUnk_80BEBC8
    .4byte gUnk_80BEBC4
    .4byte gUnk_80BEBC0
    .4byte gUnk_80BEBBC
    .4byte gUnk_80BEBB8
    .4byte gUnk_80BEBB4
    .4byte gUnk_80BEBB0

    .global gRitualComponents @ritual components
gRitualComponents:
    .incbin "baserom.gba", 0xE00FA8, 0xF0

    .global gUnk_8E01098
gUnk_8E01098:
    .incbin "baserom.gba", 0xE01098, 0x8

    .global gUnk_8E010A0
gUnk_8E010A0:
    .4byte gSharedMem

    .global gUnk_8E010A4
gUnk_8E010A4:
    .4byte sub_8024324
    .4byte sub_8024324
    .4byte sub_8024324
    .4byte sub_8024384
    .4byte sub_8024414
    .4byte sub_80244B8
    .4byte sub_8024324
    .4byte sub_8024324
    .4byte sub_8024324
    .4byte sub_8024324
    .4byte sub_8024324
    .4byte sub_8024324
    .4byte sub_8024324
    .4byte sub_80243CC
    .4byte sub_802445C
    .4byte sub_8024500
    .4byte sub_8024324
    .4byte sub_8024324
    .4byte sub_8024324
    .4byte sub_8024324


// main_menu.s
    .global gUnk_8E010F4
gUnk_8E010F4:
    .4byte gSharedMem

//password_terminal
    .global sTerminal
sTerminal:
    .4byte gSharedMem
    .incbin "baserom.gba", 0xE010FC, 0x25C

    .global gGodCards @E01358
gGodCards:
    .2byte 0xEA
    .2byte 0xEE
    .2byte 0xF0
    .2byte 0x129
    .2byte 0x19C
    .2byte 0x0

    .global gUnk_8E01364
gUnk_8E01364:
    .4byte gSharedMem

    .global gUnk_8E01368
gUnk_8E01368:
    .4byte gSharedMem+0x4000

    .global gUnk_8E0136C
gUnk_8E0136C:
    .4byte gSharedMem+0x4100

    .global gUnk_8E01370
gUnk_8E01370:
    .incbin "baserom.gba", 0xE01370, 0x20

    .global gE01390
gE01390:
    .incbin "baserom.gba", 0xE01390, 0x3C0

    .global gE01750
gE01750:
    .incbin "baserom.gba", 0xE01750, 0x700

    .global gE01E50
gE01E50:
    .incbin "baserom.gba", 0xE01E50, 0x7C0

    .global gE02610
gE02610:
    .incbin "baserom.gba", 0xE02610, 0x840

    .global gE02E50
gE02E50:
    .incbin "baserom.gba", 0xE02E50, 0xFC0

    .global gE03E10
gE03E10:
    .incbin "baserom.gba", 0xE03E10, 0x6FA0

    .global gE0ADB0
gE0ADB0:
    .incbin "baserom.gba", 0xE0ADB0, 0x500

    .global gE0B2B0
gE0B2B0:
    .incbin "baserom.gba", 0xE0B2B0, 0x500

    .global gE0B7B0
gE0B7B0:
    .incbin "baserom.gba", 0xE0B7B0, 0x500

    .global gE0BCB0
gE0BCB0:
    .incbin "baserom.gba", 0xE0BCB0, 0x500

    .global gE0C1B0
gE0C1B0:
    .incbin "baserom.gba", 0xE0C1B0, 0xB64

    .global gUnk_8E0CD14
gUnk_8E0CD14:
    .incbin "baserom.gba", 0xE0CD14, 0x2B0


    .section .rodata2

    .global gE0CFDC
gE0CFDC:
    .incbin "baserom.gba", 0xE0CFDC, 0xB0

    .section .rodata4

    .incbin "baserom.gba", 0xE0D14C, 0x7D6
    
    .section .rodata5
    .incbin "baserom.gba", 0xE0D932, 0x241A

    .section .rodata3
    .global gE1165C
gE1165C:
    .incbin "baserom.gba", 0xE1165C, 0xD0

    .global gUnk_8E1172C
gUnk_8E1172C:
    .incbin "baserom.gba", 0xE1172C, 0xC

    .global gUnk_8E11738
gUnk_8E11738:
    .incbin "baserom.gba", 0xE11738, 0xC

    .global gUnk_8E11744
gUnk_8E11744:
    .incbin "baserom.gba", 0xE11744, 0x44

    .global gUnk_8E11788
gUnk_8E11788:
    .incbin "baserom.gba", 0xE11788, 0x4


