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

    .global gUnk_8DF7598
gUnk_8DF7598:
    .incbin "baserom.gba", 0xDF7598, 0x160

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
    .incbin "baserom.gba", 0xDF7A28, 0x5AC

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

    .global gUnk_8DF8030
gUnk_8DF8030:
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
    .4byte gSharedMem

    .global gUnk_8DF811C
gUnk_8DF811C:
    .incbin "baserom.gba", 0xDF811C, 0x20

    .global gUnk_8DF813C
gUnk_8DF813C:
    .incbin "baserom.gba", 0xDF813C, 0x3

    .global gUnk_8DF813F
gUnk_8DF813F:
    .incbin "baserom.gba", 0xDF813F, 0x3

    .global gUnk_8DF8142
gUnk_8DF8142:
    .incbin "baserom.gba", 0xDF8142, 0x3

    .global gUnk_8DF8145
gUnk_8DF8145:
    .incbin "baserom.gba", 0xDF8145, 0x2203

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

    .global g8DFC288 /*card name ptrs*/
g8DFC288:
    .incbin "baserom.gba", 0xDFC288, 0x3210

    .global g8DFF498
g8DFF498:
    .incbin "baserom.gba", 0xDFF498, 0x3

    .global g8DFF49B
g8DFF49B:
    .incbin "baserom.gba", 0xDFF49B, 0xC1

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
    .incbin "baserom.gba", 0xDFF6A8, 0x1788

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

    .global gUnk_8E010F4
gUnk_8E010F4:
    .4byte gSharedMem

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
    .incbin "baserom.gba", 0xE0CD14, 0x4A18

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

    .global gUnk_8E1178C
gUnk_8E1178C:
    .incbin "baserom.gba", 0xE1178C, 0x72C

    .global gCardArts //card arts
gCardArts:
    .4byte gUnk_8935d78
    .4byte gUnk_85fcc14
    .4byte gUnk_85fde34
    .4byte gUnk_85feb2c
    .4byte gUnk_85ff944
    .4byte gUnk_8600874
    .4byte gUnk_8601990
    .4byte gUnk_860291c
    .4byte gUnk_86039e0
    .4byte gUnk_8604a6c
    .4byte gUnk_8605b6c
    .4byte gUnk_8606bc8
    .4byte gUnk_8607b60
    .4byte gUnk_8608a98
    .4byte gUnk_8609c8c
    .4byte gUnk_860ad50
    .4byte gUnk_860bdb4
    .4byte gUnk_860cc9c
    .4byte gUnk_860dc24
    .4byte gUnk_860ebb4
    .4byte gUnk_860faac
    .4byte gUnk_86109b0
    .4byte gUnk_8611a88
    .4byte gUnk_8612b28
    .4byte gUnk_8613de0
    .4byte gUnk_8614dd8
    .4byte gUnk_8615e64
    .4byte gUnk_8616e1c
    .4byte gUnk_8617d14
    .4byte gUnk_8618cf0
    .4byte gUnk_8619d90
    .4byte gUnk_861ad34
    .4byte gUnk_861bd24
    .4byte gUnk_861cd7c
    .4byte gUnk_861de68
    .4byte gUnk_861eea8
    .4byte gUnk_861ffd8
    .4byte gUnk_8621104
    .4byte gUnk_8622350
    .4byte gUnk_8623368
    .4byte gUnk_86243b8
    .4byte gUnk_8625218
    .4byte gUnk_86262d8
    .4byte gUnk_8627370
    .4byte gUnk_8628330
    .4byte gUnk_86292c8
    .4byte gUnk_862a1f0
    .4byte gUnk_862b190
    .4byte gUnk_862bf80
    .4byte gUnk_862cf40
    .4byte gUnk_862df24
    .4byte gUnk_862ee28
    .4byte gUnk_862ff1c
    .4byte gUnk_8630f28
    .4byte gUnk_8631fdc
    .4byte gUnk_8633128
    .4byte gUnk_86340e4
    .4byte gUnk_8635070
    .4byte gUnk_8635f4c
    .4byte gUnk_8636c88
    .4byte gUnk_8637d70
    .4byte gUnk_8638e00
    .4byte gUnk_8639df4
    .4byte gUnk_863ac14
    .4byte gUnk_863bc00
    .4byte gUnk_863cc90
    .4byte gUnk_863da48
    .4byte gUnk_863eb08
    .4byte gUnk_863fbe4
    .4byte gUnk_8640b30
    .4byte gUnk_8641c7c
    .4byte gUnk_8642d80
    .4byte gUnk_8643bd0
    .4byte gUnk_8644c14
    .4byte gUnk_8645a38
    .4byte gUnk_8646a20
    .4byte gUnk_864795c
    .4byte gUnk_86487ec
    .4byte gUnk_864973c
    .4byte gUnk_864a6d8
    .4byte gUnk_864b648
    .4byte gUnk_864c85c
    .4byte gUnk_864d990
    .4byte gUnk_864ea40
    .4byte gUnk_864fab4
    .4byte gUnk_8650c14
    .4byte gUnk_8651d98
    .4byte gUnk_8652eac
    .4byte gUnk_8653f9c
    .4byte gUnk_8654f08
    .4byte gUnk_8655c64
    .4byte gUnk_8656b68
    .4byte gUnk_8657c34
    .4byte gUnk_8658c5c
    .4byte gUnk_8659be8
    .4byte gUnk_865ad30
    .4byte gUnk_865bd54
    .4byte gUnk_865ce54
    .4byte gUnk_865df40
    .4byte gUnk_865ef8c
    .4byte gUnk_865fec8
    .4byte gUnk_8660fa8
    .4byte gUnk_8661fd0
    .4byte gUnk_8662d34
    .4byte gUnk_8663d64
    .4byte gUnk_8664a70
    .4byte gUnk_8665b98
    .4byte gUnk_8666b9c
    .4byte gUnk_8667c94
    .4byte gUnk_8668e98
    .4byte gUnk_8669f40
    .4byte gUnk_866ae44
    .4byte gUnk_866c0f4
    .4byte gUnk_866cf90
    .4byte gUnk_866dfbc
    .4byte gUnk_866ebc8
    .4byte gUnk_866fdb0
    .4byte gUnk_8670d74
    .4byte gUnk_8671f9c
    .4byte gUnk_8672f04
    .4byte gUnk_8674068
    .4byte gUnk_8674fc8
    .4byte gUnk_8676108
    .4byte gUnk_8677270
    .4byte gUnk_86781cc
    .4byte gUnk_8679214
    .4byte gUnk_867a114
    .4byte gUnk_867b240
    .4byte gUnk_867c020
    .4byte gUnk_867cfb8
    .4byte gUnk_867deec
    .4byte gUnk_867efb4
    .4byte gUnk_867ff9c
    .4byte gUnk_86811d8
    .4byte gUnk_86820e0
    .4byte gUnk_8682ed8
    .4byte gUnk_8683f14
    .4byte gUnk_8684c1c
    .4byte gUnk_8685c20
    .4byte gUnk_8686ff0
    .4byte gUnk_86880ac
    .4byte gUnk_8688f98
    .4byte gUnk_8689fa4
    .4byte gUnk_868afa0
    .4byte gUnk_868be60
    .4byte gUnk_868cf00
    .4byte gUnk_868dbbc
    .4byte gUnk_868ed4c
    .4byte gUnk_868fad8
    .4byte gUnk_8690b4c
    .4byte gUnk_8691c1c
    .4byte gUnk_8692d24
    .4byte gUnk_8693c24
    .4byte gUnk_8694d64
    .4byte gUnk_8695dd8
    .4byte gUnk_8696bd4
    .4byte gUnk_8697c7c
    .4byte gUnk_8698e24
    .4byte gUnk_8699cf8
    .4byte gUnk_869adbc
    .4byte gUnk_869bca4
    .4byte gUnk_869cc80
    .4byte gUnk_869dc60
    .4byte gUnk_869ed74
    .4byte gUnk_869fdc0
    .4byte gUnk_86a0f4c
    .4byte gUnk_86a1fa4
    .4byte gUnk_86a30b0
    .4byte gUnk_86a4098
    .4byte gUnk_86a5190
    .4byte gUnk_86a5ea0
    .4byte gUnk_86a7034
    .4byte gUnk_86a7fb8
    .4byte gUnk_86a8f88
    .4byte gUnk_86a9d74
    .4byte gUnk_86aae80
    .4byte gUnk_86abed0
    .4byte gUnk_86acee4
    .4byte gUnk_86aded4
    .4byte gUnk_86aee24
    .4byte gUnk_86afe84
    .4byte gUnk_86b0eb4
    .4byte gUnk_86b1cf8
    .4byte gUnk_86b2d00
    .4byte gUnk_86b3c50
    .4byte gUnk_86b4c10
    .4byte gUnk_86b5ca4
    .4byte gUnk_86b6a9c
    .4byte gUnk_86b7ba4
    .4byte gUnk_86b8b64
    .4byte gUnk_86b9a5c
    .4byte gUnk_86babd4
    .4byte gUnk_86bba24
    .4byte gUnk_86bc5a8
    .4byte gUnk_86bd5e0
    .4byte gUnk_86be7c8
    .4byte gUnk_86bf82c
    .4byte gUnk_86c0754
    .4byte gUnk_86c1734
    .4byte gUnk_86c2864
    .4byte gUnk_86c3754
    .4byte gUnk_86c43e0
    .4byte gUnk_86c522c
    .4byte gUnk_86c6120
    .4byte gUnk_86c742c
    .4byte gUnk_86c84e8
    .4byte gUnk_86c9788
    .4byte gUnk_86ca3d8
    .4byte gUnk_86cb3e8
    .4byte gUnk_86cc128
    .4byte gUnk_86ccf2c
    .4byte gUnk_86ce050
    .4byte gUnk_86cf024
    .4byte gUnk_86d0050
    .4byte gUnk_86d100c
    .4byte gUnk_86d1eac
    .4byte gUnk_86d2f50
    .4byte gUnk_86d3d60
    .4byte gUnk_86d4f38
    .4byte gUnk_86d5e84
    .4byte gUnk_86d6dc8
    .4byte gUnk_86d7f6c
    .4byte gUnk_86d8f94
    .4byte gUnk_86da20c
    .4byte gUnk_86db1e4
    .4byte gUnk_86dc118
    .4byte gUnk_86dcf14
    .4byte gUnk_86ddf98
    .4byte gUnk_86deff4
    .4byte gUnk_86e0150
    .4byte gUnk_86e0ebc
    .4byte gUnk_86e1d3c
    .4byte gUnk_86e2e1c
    .4byte gUnk_86e3e24
    .4byte gUnk_86e4e44
    .4byte gUnk_86e6178
    .4byte gUnk_86e7364
    .4byte gUnk_86e82d0
    .4byte gUnk_86e9148
    .4byte gUnk_86ea428
    .4byte gUnk_86eb2e0
    .4byte gUnk_86ec594
    .4byte gUnk_86ed6bc
    .4byte gUnk_86ee4b8
    .4byte gUnk_86ef5cc
    .4byte gUnk_86f0654
    .4byte gUnk_86f1814
    .4byte gUnk_86f265c
    .4byte gUnk_86f36f0
    .4byte gUnk_86f4800
    .4byte gUnk_86f586c
    .4byte gUnk_86f68fc
    .4byte gUnk_86f7748
    .4byte gUnk_86f8594
    .4byte gUnk_86f97b0
    .4byte gUnk_86fa73c
    .4byte gUnk_86fb844
    .4byte gUnk_86fcaa8
    .4byte gUnk_86fda10
    .4byte gUnk_86fe9e4
    .4byte gUnk_86ff74c
    .4byte gUnk_8700824
    .4byte gUnk_8701794
    .4byte gUnk_87027a4
    .4byte gUnk_8703870
    .4byte gUnk_8704634
    .4byte gUnk_87055dc
    .4byte gUnk_87065dc
    .4byte gUnk_870765c
    .4byte gUnk_87087dc
    .4byte gUnk_8709848
    .4byte gUnk_870a7bc
    .4byte gUnk_870b770
    .4byte gUnk_870c87c
    .4byte gUnk_870d9a0
    .4byte gUnk_870eb50
    .4byte gUnk_870fad4
    .4byte gUnk_87108ac
    .4byte gUnk_8711954
    .4byte gUnk_87127e0
    .4byte gUnk_8713920
    .4byte gUnk_8714a8c
    .4byte gUnk_8715b84
    .4byte gUnk_8716a18
    .4byte gUnk_87177a4
    .4byte gUnk_871887c
    .4byte gUnk_87198c8
    .4byte gUnk_871a888
    .4byte gUnk_871b818
    .4byte gUnk_871c990
    .4byte gUnk_871dc5c
    .4byte gUnk_871eca8
    .4byte gUnk_871fef8
    .4byte gUnk_87211f8
    .4byte gUnk_8722080
    .4byte gUnk_8723148
    .4byte gUnk_87241cc
    .4byte gUnk_87251c8
    .4byte gUnk_87263b8
    .4byte gUnk_87274a0
    .4byte gUnk_8728578
    .4byte gUnk_87293f4
    .4byte gUnk_872a2f0
    .4byte gUnk_872b1b4
    .4byte gUnk_872bf9c
    .4byte gUnk_872d10c
    .4byte gUnk_872e078
    .4byte gUnk_872f07c
    .4byte gUnk_873037c
    .4byte gUnk_8731500
    .4byte gUnk_8732594
    .4byte gUnk_8733590
    .4byte gUnk_8734408
    .4byte gUnk_8735044
    .4byte gUnk_8735cac
    .4byte gUnk_8736980
    .4byte gUnk_8737830
    .4byte gUnk_8738778
    .4byte gUnk_8739924
    .4byte gUnk_873a9cc
    .4byte gUnk_873b490
    .4byte gUnk_873c38c
    .4byte gUnk_873d33c
    .4byte gUnk_873e450
    .4byte gUnk_873f148
    .4byte gUnk_873ffc0
    .4byte gUnk_87411b0
    .4byte gUnk_8742114
    .4byte gUnk_8742d74
    .4byte gUnk_8743c58
    .4byte gUnk_8744b94
    .4byte gUnk_8745ca8
    .4byte gUnk_8746bd8
    .4byte gUnk_8747a28
    .4byte gUnk_8748608
    .4byte gUnk_87495d8
    .4byte gUnk_874a05c
    .4byte gUnk_874b174
    .4byte gUnk_874c350
    .4byte gUnk_874cf2c
    .4byte gUnk_874debc
    .4byte gUnk_874ee8c
    .4byte gUnk_874fe3c
    .4byte gUnk_8750d68
    .4byte gUnk_8751c0c
    .4byte gUnk_8752ba4
    .4byte gUnk_8753a5c
    .4byte gUnk_8754ca0
    .4byte gUnk_8755c0c
    .4byte gUnk_8756a20
    .4byte gUnk_8757b68
    .4byte gUnk_8758850
    .4byte gUnk_8759914
    .4byte gUnk_875a92c
    .4byte gUnk_875b8a8
    .4byte gUnk_875c7dc
    .4byte gUnk_875d848
    .4byte gUnk_875e9ec
    .4byte gUnk_875f8d0
    .4byte gUnk_87605b8
    .4byte gUnk_8761718
    .4byte gUnk_876287c
    .4byte gUnk_8763870
    .4byte gUnk_87647cc
    .4byte gUnk_87655dc
    .4byte gUnk_87665e8
    .4byte gUnk_8767464
    .4byte gUnk_87687e8
    .4byte gUnk_8769aa4
    .4byte gUnk_876ab14
    .4byte gUnk_876bb3c
    .4byte gUnk_876cb38
    .4byte gUnk_876dd00
    .4byte gUnk_876ec60
    .4byte gUnk_876fe04
    .4byte gUnk_8770eb0
    .4byte gUnk_8771fdc
    .4byte gUnk_877305c
    .4byte gUnk_8774254
    .4byte gUnk_8775300
    .4byte gUnk_87762e8
    .4byte gUnk_8777430
    .4byte gUnk_877813c
    .4byte gUnk_8779258
    .4byte gUnk_877a178
    .4byte gUnk_877b104
    .4byte gUnk_877c18c
    .4byte gUnk_877d25c
    .4byte gUnk_877e0d4
    .4byte gUnk_877f3ec
    .4byte gUnk_87802f4
    .4byte gUnk_8781240
    .4byte gUnk_8782364
    .4byte gUnk_8783384
    .4byte gUnk_8784294
    .4byte gUnk_87853a0
    .4byte gUnk_8786574
    .4byte gUnk_87873a8
    .4byte gUnk_8788208
    .4byte gUnk_87892d0
    .4byte gUnk_878a3a0
    .4byte gUnk_878b524
    .4byte gUnk_878c61c
    .4byte gUnk_878d520
    .4byte gUnk_878e5f0
    .4byte gUnk_878f3f8
    .4byte gUnk_8790448
    .4byte gUnk_87916e4
    .4byte gUnk_879271c
    .4byte gUnk_87938a0
    .4byte gUnk_87948d8
    .4byte gUnk_87959f8
    .4byte gUnk_8796aa8
    .4byte gUnk_8797b28
    .4byte gUnk_8798a80
    .4byte gUnk_8799abc
    .4byte gUnk_879abc4
    .4byte gUnk_879bbc8
    .4byte gUnk_879cb5c
    .4byte gUnk_879da70
    .4byte gUnk_879e960
    .4byte gUnk_879fb08
    .4byte gUnk_87a09cc
    .4byte gUnk_87a1894
    .4byte gUnk_87a27c4
    .4byte gUnk_87a36b0
    .4byte gUnk_87a487c
    .4byte gUnk_87a5920
    .4byte gUnk_87a6830
    .4byte gUnk_87a7864
    .4byte gUnk_87a867c
    .4byte gUnk_87a9744
    .4byte gUnk_87aa5d0
    .4byte gUnk_87ab468
    .4byte gUnk_87ac3cc
    .4byte gUnk_87ad300
    .4byte gUnk_87ae374
    .4byte gUnk_87af60c
    .4byte gUnk_87b0518
    .4byte gUnk_87b1328
    .4byte gUnk_87b2650
    .4byte gUnk_87b34c4
    .4byte gUnk_87b4310
    .4byte gUnk_87b51a8
    .4byte gUnk_87b60e4
    .4byte gUnk_87b7020
    .4byte gUnk_87b7f54
    .4byte gUnk_87b8ec4
    .4byte gUnk_87b9e44
    .4byte gUnk_87bad18
    .4byte gUnk_87bbc04
    .4byte gUnk_87bcc10
    .4byte gUnk_87bdb30
    .4byte gUnk_87beb94
    .4byte gUnk_87bfbb0
    .4byte gUnk_87c0a28
    .4byte gUnk_87c1a6c
    .4byte gUnk_87c2ab0
    .4byte gUnk_87c3d54
    .4byte gUnk_87c4d00
    .4byte gUnk_87c5c94
    .4byte gUnk_87c6cb8
    .4byte gUnk_87c7d58
    .4byte gUnk_87c8d38
    .4byte gUnk_87c9dac
    .4byte gUnk_87cae78
    .4byte gUnk_87cbd00
    .4byte gUnk_87ccbec
    .4byte gUnk_87cdb60
    .4byte gUnk_87cea20
    .4byte gUnk_87cfb88
    .4byte gUnk_87d0c18
    .4byte gUnk_87d1c88
    .4byte gUnk_87d2f30
    .4byte gUnk_87d3f48
    .4byte gUnk_87d4fec
    .4byte gUnk_87d6008
    .4byte gUnk_87d702c
    .4byte gUnk_87d7fc8
    .4byte gUnk_87d8d8c
    .4byte gUnk_87d9e44
    .4byte gUnk_87dad74
    .4byte gUnk_87dbc8c
    .4byte gUnk_87dcd78
    .4byte gUnk_87ddde8
    .4byte gUnk_87dee5c
    .4byte gUnk_87dfdcc
    .4byte gUnk_87e0c7c
    .4byte gUnk_87e1ae4
    .4byte gUnk_87e2878
    .4byte gUnk_87e3854
    .4byte gUnk_87e4a70
    .4byte gUnk_87e5938
    .4byte gUnk_87e6728
    .4byte gUnk_87e7738
    .4byte gUnk_87e8420
    .4byte gUnk_87e9520
    .4byte gUnk_87ea4c0
    .4byte gUnk_87eb558
    .4byte gUnk_87ec480
    .4byte gUnk_87ed458
    .4byte gUnk_87ee49c
    .4byte gUnk_87ef524
    .4byte gUnk_87f017c
    .4byte gUnk_87f0ffc
    .4byte gUnk_87f20c4
    .4byte gUnk_87f2f14
    .4byte gUnk_87f3e9c
    .4byte gUnk_87f4e1c
    .4byte gUnk_87f5df0
    .4byte gUnk_87f6b10
    .4byte gUnk_87f7a70
    .4byte gUnk_87f87f4
    .4byte gUnk_87f9544
    .4byte gUnk_87fa4b4
    .4byte gUnk_87fb58c
    .4byte gUnk_87fc2f0
    .4byte gUnk_87fd298
    .4byte gUnk_87fe3e8
    .4byte gUnk_87ff524
    .4byte gUnk_88005bc
    .4byte gUnk_8801648
    .4byte gUnk_8802750
    .4byte gUnk_88034b4
    .4byte gUnk_8804418
    .4byte gUnk_88054ac
    .4byte gUnk_880645c
    .4byte gUnk_8807564
    .4byte gUnk_88085f4
    .4byte gUnk_8809514
    .4byte gUnk_880a62c
    .4byte gUnk_880b8b8
    .4byte gUnk_880c720
    .4byte gUnk_880d6e8
    .4byte gUnk_880e7a0
    .4byte gUnk_880f8c8
    .4byte gUnk_881083c
    .4byte gUnk_88118b0
    .4byte gUnk_88129b4
    .4byte gUnk_8813928
    .4byte gUnk_8814b5c
    .4byte gUnk_8815908
    .4byte gUnk_881682c
    .4byte gUnk_88177f4
    .4byte gUnk_8818740
    .4byte gUnk_88194c4
    .4byte gUnk_881a650
    .4byte gUnk_881b79c
    .4byte gUnk_881c784
    .4byte gUnk_881d660
    .4byte gUnk_881e4b4
    .4byte gUnk_881f2ec
    .4byte gUnk_88202e8
    .4byte gUnk_88212e8
    .4byte gUnk_8822204
    .4byte gUnk_8823094
    .4byte gUnk_8824270
    .4byte gUnk_8825150
    .4byte gUnk_882623c
    .4byte gUnk_88270a0
    .4byte gUnk_8827f34
    .4byte gUnk_8828f68
    .4byte gUnk_8829f0c
    .4byte gUnk_882ac6c
    .4byte gUnk_882be44
    .4byte gUnk_882ceac
    .4byte gUnk_882e0cc
    .4byte gUnk_882ee24
    .4byte gUnk_882fe88
    .4byte gUnk_8830f38
    .4byte gUnk_8832130
    .4byte gUnk_8832f58
    .4byte gUnk_8833f0c
    .4byte gUnk_8834d90
    .4byte gUnk_8835e78
    .4byte gUnk_8837020
    .4byte gUnk_8837fa4
    .4byte gUnk_88390f4
    .4byte gUnk_883a0ec
    .4byte gUnk_883b11c
    .4byte gUnk_883c144
    .4byte gUnk_883d22c
    .4byte gUnk_883e564
    .4byte gUnk_883f654
    .4byte gUnk_88404a8
    .4byte gUnk_88413ac
    .4byte gUnk_88422dc
    .4byte gUnk_8843238
    .4byte gUnk_8844170
    .4byte gUnk_8845130
    .4byte gUnk_8846168
    .4byte gUnk_8846dcc
    .4byte gUnk_8847cf0
    .4byte gUnk_8848e58
    .4byte gUnk_8849f7c
    .4byte gUnk_884afa0
    .4byte gUnk_884be18
    .4byte gUnk_884cfbc
    .4byte gUnk_884e114
    .4byte gUnk_884f09c
    .4byte gUnk_884fec8
    .4byte gUnk_8850f00
    .4byte gUnk_8851f78
    .4byte gUnk_8852c58
    .4byte gUnk_88539a8
    .4byte gUnk_8854b0c
    .4byte gUnk_8855d6c
    .4byte gUnk_8856dd0
    .4byte gUnk_8857eb8
    .4byte gUnk_8858db0
    .4byte gUnk_8859ed4
    .4byte gUnk_885aef8
    .4byte gUnk_885bcb4
    .4byte gUnk_885cbc4
    .4byte gUnk_885dbb4
    .4byte gUnk_885ed2c
    .4byte gUnk_885feb8
    .4byte gUnk_88610c8
    .4byte gUnk_88620e4
    .4byte gUnk_88630c8
    .4byte gUnk_8864174
    .4byte gUnk_88651cc
    .4byte gUnk_886610c
    .4byte gUnk_88670e0
    .4byte gUnk_8868280
    .4byte gUnk_8869230
    .4byte gUnk_886a354
    .4byte gUnk_886b210
    .4byte gUnk_886c1e0
    .4byte gUnk_886d2bc
    .4byte gUnk_886e414
    .4byte gUnk_886f528
    .4byte gUnk_8870828
    .4byte gUnk_8871940
    .4byte gUnk_88729bc
    .4byte gUnk_8873a84
    .4byte gUnk_8874af4
    .4byte gUnk_8875cb0
    .4byte gUnk_8876e4c
    .4byte gUnk_887807c
    .4byte gUnk_8879070
    .4byte gUnk_8879d14
    .4byte gUnk_887aec4
    .4byte gUnk_887bebc
    .4byte gUnk_887d0b8
    .4byte gUnk_887e0f8
    .4byte gUnk_887f13c
    .4byte gUnk_888031c
    .4byte gUnk_88814e0
    .4byte gUnk_888230c
    .4byte gUnk_88832d0
    .4byte gUnk_888418c
    .4byte gUnk_8885318
    .4byte gUnk_8886474
    .4byte gUnk_88874d0
    .4byte gUnk_8888688
    .4byte gUnk_8889634
    .4byte gUnk_888a854
    .4byte gUnk_888ba18
    .4byte gUnk_888caec
    .4byte gUnk_888daec
    .4byte gUnk_888ea78
    .4byte gUnk_888fb90
    .4byte gUnk_8890c80
    .4byte gUnk_8891bb4
    .4byte gUnk_8892600
    .4byte gUnk_8893918
    .4byte gUnk_8894974
    .4byte gUnk_8895b1c
    .4byte gUnk_8896ac0
    .4byte gUnk_8897e20
    .4byte gUnk_8898e8c
    .4byte gUnk_889a148
    .4byte gUnk_889afc4
    .4byte gUnk_889be14
    .4byte gUnk_889cffc
    .4byte gUnk_889e3b0
    .4byte gUnk_889f4cc
    .4byte gUnk_88a05d0
    .4byte gUnk_88a16f4
    .4byte gUnk_88a27c8
    .4byte gUnk_88a3a60
    .4byte gUnk_88a46fc
    .4byte gUnk_88a5814
    .4byte gUnk_88a68b4
    .4byte gUnk_88a76e0
    .4byte gUnk_88a8654
    .4byte gUnk_88a95f8
    .4byte gUnk_88aa5b4
    .4byte gUnk_88ab570
    .4byte gUnk_88ac5f8
    .4byte gUnk_88ad5b4
    .4byte gUnk_88ae608
    .4byte gUnk_88af784
    .4byte gUnk_88b054c
    .4byte gUnk_88b145c
    .4byte gUnk_88b228c
    .4byte gUnk_88b32fc
    .4byte gUnk_88b4450
    .4byte gUnk_88b5750
    .4byte gUnk_88b6894
    .4byte gUnk_88b7814
    .4byte gUnk_88b88e4
    .4byte gUnk_88b97e4
    .4byte gUnk_88ba8d0
    .4byte gUnk_88bb96c
    .4byte gUnk_88bcb24
    .4byte gUnk_88bdd84
    .4byte gUnk_88bee14
    .4byte gUnk_88bfd68
    .4byte gUnk_88c0f80
    .4byte gUnk_88c1fd0
    .4byte gUnk_88c3230
    .4byte gUnk_88c442c
    .4byte gUnk_88c57e8
    .4byte gUnk_88c6744
    .4byte gUnk_88c78c0
    .4byte gUnk_88c89f0
    .4byte gUnk_88c9bf8
    .4byte gUnk_88ca8bc
    .4byte gUnk_88cb824
    .4byte gUnk_88ccaf8
    .4byte gUnk_88cdb64
    .4byte gUnk_88ce8f4
    .4byte gUnk_88cf824
    .4byte gUnk_88d0658
    .4byte gUnk_88d15e4
    .4byte gUnk_88d23cc
    .4byte gUnk_88d3208
    .4byte gUnk_88d40b4
    .4byte gUnk_88d50b8
    .4byte gUnk_88d6250
    .4byte gUnk_88d7520
    .4byte gUnk_88d8568
    .4byte gUnk_88d94c4
    .4byte gUnk_88da634
    .4byte gUnk_88db610
    .4byte gUnk_88dc4bc
    .4byte gUnk_88dd560
    .4byte gUnk_88de4d0
    .4byte gUnk_88df46c
    .4byte gUnk_88e031c
    .4byte gUnk_88e1328
    .4byte gUnk_88e24b8
    .4byte gUnk_88e33ac
    .4byte gUnk_88e43f4
    .4byte gUnk_88e533c
    .4byte gUnk_88e6394
    .4byte gUnk_88e74c0
    .4byte gUnk_88e865c
    .4byte gUnk_88e9490
    .4byte gUnk_88ea490
    .4byte gUnk_88eb33c
    .4byte gUnk_88ec2d0
    .4byte gUnk_88ed39c
    .4byte gUnk_88ee20c
    .4byte gUnk_88ef3c8
    .4byte gUnk_88f0540
    .4byte gUnk_88f14f8
    .4byte gUnk_88f2424
    .4byte gUnk_88f3528
    .4byte gUnk_88f45c4
    .4byte gUnk_88f54b8
    .4byte gUnk_88f6504
    .4byte gUnk_88f7510
    .4byte gUnk_88f8408
    .4byte gUnk_88f9390
    .4byte gUnk_88fa27c
    .4byte gUnk_88fb410
    .4byte gUnk_88fc2d4
    .4byte gUnk_88fd584
    .4byte gUnk_88fe4a4
    .4byte gUnk_88ff4f8
    .4byte gUnk_89004cc
    .4byte gUnk_89015ec
    .4byte gUnk_890267c
    .4byte gUnk_8903764
    .4byte gUnk_8904930
    .4byte gUnk_8905998
    .4byte gUnk_8906ca4
    .4byte gUnk_8907cac
    .4byte gUnk_8908d50
    .4byte gUnk_8909f58
    .4byte gUnk_890b15c
    .4byte gUnk_890be98
    .4byte gUnk_890cdf8
    .4byte gUnk_890da70
    .4byte gUnk_890e764
    .4byte gUnk_890f28c
    .4byte gUnk_8910504
    .4byte gUnk_89114d4
    .4byte gUnk_89124f8
    .4byte gUnk_89135ac
    .4byte gUnk_8914438
    .4byte gUnk_89152c4
    .4byte gUnk_89164a8
    .4byte gUnk_89176d4
    .4byte gUnk_8918648
    .4byte gUnk_89197dc
    .4byte gUnk_891a944
    .4byte gUnk_891b9b0

    .global gCardArtPalettes @card art palettes
gCardArtPalettes:
    .4byte gUnk_89360b0
    .4byte gUnk_891cd78
    .4byte gUnk_891cdf8
    .4byte gUnk_891ce78
    .4byte gUnk_891cef8
    .4byte gUnk_891cf78
    .4byte gUnk_891cff8
    .4byte gUnk_891d078
    .4byte gUnk_891d0f8
    .4byte gUnk_891d178
    .4byte gUnk_891d1f8
    .4byte gUnk_891d278
    .4byte gUnk_891d2f8
    .4byte gUnk_891d378
    .4byte gUnk_891d3f8
    .4byte gUnk_891d478
    .4byte gUnk_891d4f8
    .4byte gUnk_891d578
    .4byte gUnk_891d5f8
    .4byte gUnk_891d678
    .4byte gUnk_891d6f8
    .4byte gUnk_891d778
    .4byte gUnk_891d7f8
    .4byte gUnk_891d878
    .4byte gUnk_891d8f8
    .4byte gUnk_891d978
    .4byte gUnk_891d9f8
    .4byte gUnk_891da78
    .4byte gUnk_891daf8
    .4byte gUnk_891db78
    .4byte gUnk_891dbf8
    .4byte gUnk_891dc78
    .4byte gUnk_891dcf8
    .4byte gUnk_891dd78
    .4byte gUnk_891ddf8
    .4byte gUnk_891de78
    .4byte gUnk_891def8
    .4byte gUnk_891df78
    .4byte gUnk_891dff8
    .4byte gUnk_891e078
    .4byte gUnk_891e0f8
    .4byte gUnk_891e178
    .4byte gUnk_891e1f8
    .4byte gUnk_891e278
    .4byte gUnk_891e2f8
    .4byte gUnk_891e378
    .4byte gUnk_891e3f8
    .4byte gUnk_891e478
    .4byte gUnk_891e4f8
    .4byte gUnk_891e578
    .4byte gUnk_891e5f8
    .4byte gUnk_891e678
    .4byte gUnk_891e6f8
    .4byte gUnk_891e778
    .4byte gUnk_891e7f8
    .4byte gUnk_891e878
    .4byte gUnk_891e8f8
    .4byte gUnk_891e978
    .4byte gUnk_891e9f8
    .4byte gUnk_891ea78
    .4byte gUnk_891eaf8
    .4byte gUnk_891eb78
    .4byte gUnk_891ebf8
    .4byte gUnk_891ec78
    .4byte gUnk_891ecf8
    .4byte gUnk_891ed78
    .4byte gUnk_891edf8
    .4byte gUnk_891ee78
    .4byte gUnk_891eef8
    .4byte gUnk_891ef78
    .4byte gUnk_891eff8
    .4byte gUnk_891f078
    .4byte gUnk_891f0f8
    .4byte gUnk_891f178
    .4byte gUnk_891f1f8
    .4byte gUnk_891f278
    .4byte gUnk_891f2f8
    .4byte gUnk_891f378
    .4byte gUnk_891f3f8
    .4byte gUnk_891f478
    .4byte gUnk_891f4f8
    .4byte gUnk_891f578
    .4byte gUnk_891f5f8
    .4byte gUnk_891f678
    .4byte gUnk_891f6f8
    .4byte gUnk_891f778
    .4byte gUnk_891f7f8
    .4byte gUnk_891f878
    .4byte gUnk_891f8f8
    .4byte gUnk_891f978
    .4byte gUnk_891f9f8
    .4byte gUnk_891fa78
    .4byte gUnk_891faf8
    .4byte gUnk_891fb78
    .4byte gUnk_891fbf8
    .4byte gUnk_891fc78
    .4byte gUnk_891fcf8
    .4byte gUnk_891fd78
    .4byte gUnk_891fdf8
    .4byte gUnk_891fe78
    .4byte gUnk_891fef8
    .4byte gUnk_891ff78
    .4byte gUnk_891fff8
    .4byte gUnk_8920078
    .4byte gUnk_89200f8
    .4byte gUnk_8920178
    .4byte gUnk_89201f8
    .4byte gUnk_8920278
    .4byte gUnk_89202f8
    .4byte gUnk_8920378
    .4byte gUnk_89203f8
    .4byte gUnk_8920478
    .4byte gUnk_89204f8
    .4byte gUnk_8920578
    .4byte gUnk_89205f8
    .4byte gUnk_8920678
    .4byte gUnk_89206f8
    .4byte gUnk_8920778
    .4byte gUnk_89207f8
    .4byte gUnk_8920878
    .4byte gUnk_89208f8
    .4byte gUnk_8920978
    .4byte gUnk_89209f8
    .4byte gUnk_8920a78
    .4byte gUnk_8920af8
    .4byte gUnk_8920b78
    .4byte gUnk_8920bf8
    .4byte gUnk_8920c78
    .4byte gUnk_8920cf8
    .4byte gUnk_8920d78
    .4byte gUnk_8920df8
    .4byte gUnk_8920e78
    .4byte gUnk_8920ef8
    .4byte gUnk_8920f78
    .4byte gUnk_8920ff8
    .4byte gUnk_8921078
    .4byte gUnk_89210f8
    .4byte gUnk_8921178
    .4byte gUnk_89211f8
    .4byte gUnk_8921278
    .4byte gUnk_89212f8
    .4byte gUnk_8921378
    .4byte gUnk_89213f8
    .4byte gUnk_8921478
    .4byte gUnk_89214f8
    .4byte gUnk_8921578
    .4byte gUnk_89215f8
    .4byte gUnk_8921678
    .4byte gUnk_89216f8
    .4byte gUnk_8921778
    .4byte gUnk_89217f8
    .4byte gUnk_8921878
    .4byte gUnk_89218f8
    .4byte gUnk_8921978
    .4byte gUnk_89219f8
    .4byte gUnk_8921a78
    .4byte gUnk_8921af8
    .4byte gUnk_8921b78
    .4byte gUnk_8921bf8
    .4byte gUnk_8921c78
    .4byte gUnk_8921cf8
    .4byte gUnk_8921d78
    .4byte gUnk_8921df8
    .4byte gUnk_8921e78
    .4byte gUnk_8921ef8
    .4byte gUnk_8921f78
    .4byte gUnk_8921ff8
    .4byte gUnk_8922078
    .4byte gUnk_89220f8
    .4byte gUnk_8922178
    .4byte gUnk_89221f8
    .4byte gUnk_8922278
    .4byte gUnk_89222f8
    .4byte gUnk_8922378
    .4byte gUnk_89223f8
    .4byte gUnk_8922478
    .4byte gUnk_89224f8
    .4byte gUnk_8922578
    .4byte gUnk_89225f8
    .4byte gUnk_8922678
    .4byte gUnk_89226f8
    .4byte gUnk_8922778
    .4byte gUnk_89227f8
    .4byte gUnk_8922878
    .4byte gUnk_89228f8
    .4byte gUnk_8922978
    .4byte gUnk_89229f8
    .4byte gUnk_8922a78
    .4byte gUnk_8922af8
    .4byte gUnk_8922b78
    .4byte gUnk_8922bf8
    .4byte gUnk_8922c78
    .4byte gUnk_8922cf8
    .4byte gUnk_8922d78
    .4byte gUnk_8922df8
    .4byte gUnk_8922e78
    .4byte gUnk_8922ef8
    .4byte gUnk_8922f78
    .4byte gUnk_8922ff8
    .4byte gUnk_8923078
    .4byte gUnk_89230f8
    .4byte gUnk_8923178
    .4byte gUnk_89231f8
    .4byte gUnk_8923278
    .4byte gUnk_89232f8
    .4byte gUnk_8923378
    .4byte gUnk_89233f8
    .4byte gUnk_8923478
    .4byte gUnk_89234f8
    .4byte gUnk_8923578
    .4byte gUnk_89235f8
    .4byte gUnk_8923678
    .4byte gUnk_89236f8
    .4byte gUnk_8923778
    .4byte gUnk_89237f8
    .4byte gUnk_8923878
    .4byte gUnk_89238f8
    .4byte gUnk_8923978
    .4byte gUnk_89239f8
    .4byte gUnk_8923a78
    .4byte gUnk_8923af8
    .4byte gUnk_8923b78
    .4byte gUnk_8923bf8
    .4byte gUnk_8923c78
    .4byte gUnk_8923cf8
    .4byte gUnk_8923d78
    .4byte gUnk_8923df8
    .4byte gUnk_8923e78
    .4byte gUnk_8923ef8
    .4byte gUnk_8923f78
    .4byte gUnk_8923ff8
    .4byte gUnk_8924078
    .4byte gUnk_89240f8
    .4byte gUnk_8924178
    .4byte gUnk_89241f8
    .4byte gUnk_8924278
    .4byte gUnk_89242f8
    .4byte gUnk_8924378
    .4byte gUnk_89243f8
    .4byte gUnk_8924478
    .4byte gUnk_89244f8
    .4byte gUnk_8924578
    .4byte gUnk_89245f8
    .4byte gUnk_8924678
    .4byte gUnk_89246f8
    .4byte gUnk_8924778
    .4byte gUnk_89247f8
    .4byte gUnk_8924878
    .4byte gUnk_89248f8
    .4byte gUnk_8924978
    .4byte gUnk_89249f8
    .4byte gUnk_8924a78
    .4byte gUnk_8924af8
    .4byte gUnk_8924b78
    .4byte gUnk_8924bf8
    .4byte gUnk_8924c78
    .4byte gUnk_8924cf8
    .4byte gUnk_8924d78
    .4byte gUnk_8924df8
    .4byte gUnk_8924e78
    .4byte gUnk_8924ef8
    .4byte gUnk_8924f78
    .4byte gUnk_8924ff8
    .4byte gUnk_8925078
    .4byte gUnk_89250f8
    .4byte gUnk_8925178
    .4byte gUnk_89251f8
    .4byte gUnk_8925278
    .4byte gUnk_89252f8
    .4byte gUnk_8925378
    .4byte gUnk_89253f8
    .4byte gUnk_8925478
    .4byte gUnk_89254f8
    .4byte gUnk_8925578
    .4byte gUnk_89255f8
    .4byte gUnk_8925678
    .4byte gUnk_89256f8
    .4byte gUnk_8925778
    .4byte gUnk_89257f8
    .4byte gUnk_8925878
    .4byte gUnk_89258f8
    .4byte gUnk_8925978
    .4byte gUnk_89259f8
    .4byte gUnk_8925a78
    .4byte gUnk_8925af8
    .4byte gUnk_8925b78
    .4byte gUnk_8925bf8
    .4byte gUnk_8925c78
    .4byte gUnk_8925cf8
    .4byte gUnk_8925d78
    .4byte gUnk_8925df8
    .4byte gUnk_8925e78
    .4byte gUnk_8925ef8
    .4byte gUnk_8925f78
    .4byte gUnk_8925ff8
    .4byte gUnk_8926078
    .4byte gUnk_89260f8
    .4byte gUnk_8926178
    .4byte gUnk_89261f8
    .4byte gUnk_8926278
    .4byte gUnk_89262f8
    .4byte gUnk_8926378
    .4byte gUnk_89263f8
    .4byte gUnk_8926478
    .4byte gUnk_89264f8
    .4byte gUnk_8926578
    .4byte gUnk_89265f8
    .4byte gUnk_8926678
    .4byte gUnk_89266f8
    .4byte gUnk_8926778
    .4byte gUnk_89267f8
    .4byte gUnk_8926878
    .4byte gUnk_89268f8
    .4byte gUnk_8926978
    .4byte gUnk_89269f8
    .4byte gUnk_8926a78
    .4byte gUnk_8926af8
    .4byte gUnk_8926b78
    .4byte gUnk_8926bf8
    .4byte gUnk_8926c78
    .4byte gUnk_8926cf8
    .4byte gUnk_8926d78
    .4byte gUnk_8926df8
    .4byte gUnk_8926e78
    .4byte gUnk_8926ef8
    .4byte gUnk_8926f78
    .4byte gUnk_8926ff8
    .4byte gUnk_8927078
    .4byte gUnk_89270f8
    .4byte gUnk_8927178
    .4byte gUnk_89271f8
    .4byte gUnk_8927278
    .4byte gUnk_89272f8
    .4byte gUnk_8927378
    .4byte gUnk_89273f8
    .4byte gUnk_8927478
    .4byte gUnk_89274f8
    .4byte gUnk_8927578
    .4byte gUnk_89275f8
    .4byte gUnk_8927678
    .4byte gUnk_89276f8
    .4byte gUnk_8927778
    .4byte gUnk_89277f8
    .4byte gUnk_8927878
    .4byte gUnk_89278f8
    .4byte gUnk_8927978
    .4byte gUnk_89279f8
    .4byte gUnk_8927a78
    .4byte gUnk_8927af8
    .4byte gUnk_8927b78
    .4byte gUnk_8927bf8
    .4byte gUnk_8927c78
    .4byte gUnk_8927cf8
    .4byte gUnk_8927d78
    .4byte gUnk_8927df8
    .4byte gUnk_8927e78
    .4byte gUnk_8927ef8
    .4byte gUnk_8927f78
    .4byte gUnk_8927ff8
    .4byte gUnk_8928078
    .4byte gUnk_89280f8
    .4byte gUnk_8928178
    .4byte gUnk_89281f8
    .4byte gUnk_8928278
    .4byte gUnk_89282f8
    .4byte gUnk_8928378
    .4byte gUnk_89283f8
    .4byte gUnk_8928478
    .4byte gUnk_89284f8
    .4byte gUnk_8928578
    .4byte gUnk_89285f8
    .4byte gUnk_8928678
    .4byte gUnk_89286f8
    .4byte gUnk_8928778
    .4byte gUnk_89287f8
    .4byte gUnk_8928878
    .4byte gUnk_89288f8
    .4byte gUnk_8928978
    .4byte gUnk_89289f8
    .4byte gUnk_8928a78
    .4byte gUnk_8928af8
    .4byte gUnk_8928b78
    .4byte gUnk_8928bf8
    .4byte gUnk_8928c78
    .4byte gUnk_8928cf8
    .4byte gUnk_8928d78
    .4byte gUnk_8928df8
    .4byte gUnk_8928e78
    .4byte gUnk_8928ef8
    .4byte gUnk_8928f78
    .4byte gUnk_8928ff8
    .4byte gUnk_8929078
    .4byte gUnk_89290f8
    .4byte gUnk_8929178
    .4byte gUnk_89291f8
    .4byte gUnk_8929278
    .4byte gUnk_89292f8
    .4byte gUnk_8929378
    .4byte gUnk_89293f8
    .4byte gUnk_8929478
    .4byte gUnk_89294f8
    .4byte gUnk_8929578
    .4byte gUnk_89295f8
    .4byte gUnk_8929678
    .4byte gUnk_89296f8
    .4byte gUnk_8929778
    .4byte gUnk_89297f8
    .4byte gUnk_8929878
    .4byte gUnk_89298f8
    .4byte gUnk_8929978
    .4byte gUnk_89299f8
    .4byte gUnk_8929a78
    .4byte gUnk_8929af8
    .4byte gUnk_8929b78
    .4byte gUnk_8929bf8
    .4byte gUnk_8929c78
    .4byte gUnk_8929cf8
    .4byte gUnk_8929d78
    .4byte gUnk_8929df8
    .4byte gUnk_8929e78
    .4byte gUnk_8929ef8
    .4byte gUnk_8929f78
    .4byte gUnk_8929ff8
    .4byte gUnk_892a078
    .4byte gUnk_892a0f8
    .4byte gUnk_892a178
    .4byte gUnk_892a1f8
    .4byte gUnk_892a278
    .4byte gUnk_892a2f8
    .4byte gUnk_892a378
    .4byte gUnk_892a3f8
    .4byte gUnk_892a478
    .4byte gUnk_892a4f8
    .4byte gUnk_892a578
    .4byte gUnk_892a5f8
    .4byte gUnk_892a678
    .4byte gUnk_892a6f8
    .4byte gUnk_892a778
    .4byte gUnk_892a7f8
    .4byte gUnk_892a878
    .4byte gUnk_892a8f8
    .4byte gUnk_892a978
    .4byte gUnk_892a9f8
    .4byte gUnk_892aa78
    .4byte gUnk_892aaf8
    .4byte gUnk_892ab78
    .4byte gUnk_892abf8
    .4byte gUnk_892ac78
    .4byte gUnk_892acf8
    .4byte gUnk_892ad78
    .4byte gUnk_892adf8
    .4byte gUnk_892ae78
    .4byte gUnk_892aef8
    .4byte gUnk_892af78
    .4byte gUnk_892aff8
    .4byte gUnk_892b078
    .4byte gUnk_892b0f8
    .4byte gUnk_892b178
    .4byte gUnk_892b1f8
    .4byte gUnk_892b278
    .4byte gUnk_892b2f8
    .4byte gUnk_892b378
    .4byte gUnk_892b3f8
    .4byte gUnk_892b478
    .4byte gUnk_892b4f8
    .4byte gUnk_892b578
    .4byte gUnk_892b5f8
    .4byte gUnk_892b678
    .4byte gUnk_892b6f8
    .4byte gUnk_892b778
    .4byte gUnk_892b7f8
    .4byte gUnk_892b878
    .4byte gUnk_892b8f8
    .4byte gUnk_892b978
    .4byte gUnk_892b9f8
    .4byte gUnk_892ba78
    .4byte gUnk_892baf8
    .4byte gUnk_892bb78
    .4byte gUnk_892bbf8
    .4byte gUnk_892bc78
    .4byte gUnk_892bcf8
    .4byte gUnk_892bd78
    .4byte gUnk_892bdf8
    .4byte gUnk_892be78
    .4byte gUnk_892bef8
    .4byte gUnk_892bf78
    .4byte gUnk_892bff8
    .4byte gUnk_892c078
    .4byte gUnk_892c0f8
    .4byte gUnk_892c178
    .4byte gUnk_892c1f8
    .4byte gUnk_892c278
    .4byte gUnk_892c2f8
    .4byte gUnk_892c378
    .4byte gUnk_892c3f8
    .4byte gUnk_892c478
    .4byte gUnk_892c4f8
    .4byte gUnk_892c578
    .4byte gUnk_892c5f8
    .4byte gUnk_892c678
    .4byte gUnk_892c6f8
    .4byte gUnk_892c778
    .4byte gUnk_892c7f8
    .4byte gUnk_892c878
    .4byte gUnk_892c8f8
    .4byte gUnk_892c978
    .4byte gUnk_892c9f8
    .4byte gUnk_892ca78
    .4byte gUnk_892caf8
    .4byte gUnk_892cb78
    .4byte gUnk_892cbf8
    .4byte gUnk_892cc78
    .4byte gUnk_892ccf8
    .4byte gUnk_892cd78
    .4byte gUnk_892cdf8
    .4byte gUnk_892ce78
    .4byte gUnk_892cef8
    .4byte gUnk_892cf78
    .4byte gUnk_892cff8
    .4byte gUnk_892d078
    .4byte gUnk_892d0f8
    .4byte gUnk_892d178
    .4byte gUnk_892d1f8
    .4byte gUnk_892d278
    .4byte gUnk_892d2f8
    .4byte gUnk_892d378
    .4byte gUnk_892d3f8
    .4byte gUnk_892d478
    .4byte gUnk_892d4f8
    .4byte gUnk_892d578
    .4byte gUnk_892d5f8
    .4byte gUnk_892d678
    .4byte gUnk_892d6f8
    .4byte gUnk_892d778
    .4byte gUnk_892d7f8
    .4byte gUnk_892d878
    .4byte gUnk_892d8f8
    .4byte gUnk_892d978
    .4byte gUnk_892d9f8
    .4byte gUnk_892da78
    .4byte gUnk_892daf8
    .4byte gUnk_892db78
    .4byte gUnk_892dbf8
    .4byte gUnk_892dc78
    .4byte gUnk_892dcf8
    .4byte gUnk_892dd78
    .4byte gUnk_892ddf8
    .4byte gUnk_892de78
    .4byte gUnk_892def8
    .4byte gUnk_892df78
    .4byte gUnk_892dff8
    .4byte gUnk_892e078
    .4byte gUnk_892e0f8
    .4byte gUnk_892e178
    .4byte gUnk_892e1f8
    .4byte gUnk_892e278
    .4byte gUnk_892e2f8
    .4byte gUnk_892e378
    .4byte gUnk_892e3f8
    .4byte gUnk_892e478
    .4byte gUnk_892e4f8
    .4byte gUnk_892e578
    .4byte gUnk_892e5f8
    .4byte gUnk_892e678
    .4byte gUnk_892e6f8
    .4byte gUnk_892e778
    .4byte gUnk_892e7f8
    .4byte gUnk_892e878
    .4byte gUnk_892e8f8
    .4byte gUnk_892e978
    .4byte gUnk_892e9f8
    .4byte gUnk_892ea78
    .4byte gUnk_892eaf8
    .4byte gUnk_892eb78
    .4byte gUnk_892ebf8
    .4byte gUnk_892ec78
    .4byte gUnk_892ecf8
    .4byte gUnk_892ed78
    .4byte gUnk_892edf8
    .4byte gUnk_892ee78
    .4byte gUnk_892eef8
    .4byte gUnk_892ef78
    .4byte gUnk_892eff8
    .4byte gUnk_892f078
    .4byte gUnk_892f0f8
    .4byte gUnk_892f178
    .4byte gUnk_892f1f8
    .4byte gUnk_892f278
    .4byte gUnk_892f2f8
    .4byte gUnk_892f378
    .4byte gUnk_892f3f8
    .4byte gUnk_892f478
    .4byte gUnk_892f4f8
    .4byte gUnk_892f578
    .4byte gUnk_892f5f8
    .4byte gUnk_892f678
    .4byte gUnk_892f6f8
    .4byte gUnk_892f778
    .4byte gUnk_892f7f8
    .4byte gUnk_892f878
    .4byte gUnk_892f8f8
    .4byte gUnk_892f978
    .4byte gUnk_892f9f8
    .4byte gUnk_892fa78
    .4byte gUnk_892faf8
    .4byte gUnk_892fb78
    .4byte gUnk_892fbf8
    .4byte gUnk_892fc78
    .4byte gUnk_892fcf8
    .4byte gUnk_892fd78
    .4byte gUnk_892fdf8
    .4byte gUnk_892fe78
    .4byte gUnk_892fef8
    .4byte gUnk_892ff78
    .4byte gUnk_892fff8
    .4byte gUnk_8930078
    .4byte gUnk_89300f8
    .4byte gUnk_8930178
    .4byte gUnk_89301f8
    .4byte gUnk_8930278
    .4byte gUnk_89302f8
    .4byte gUnk_8930378
    .4byte gUnk_89303f8
    .4byte gUnk_8930478
    .4byte gUnk_89304f8
    .4byte gUnk_8930578
    .4byte gUnk_89305f8
    .4byte gUnk_8930678
    .4byte gUnk_89306f8
    .4byte gUnk_8930778
    .4byte gUnk_89307f8
    .4byte gUnk_8930878
    .4byte gUnk_89308f8
    .4byte gUnk_8930978
    .4byte gUnk_89309f8
    .4byte gUnk_8930a78
    .4byte gUnk_8930af8
    .4byte gUnk_8930b78
    .4byte gUnk_8930bf8
    .4byte gUnk_8930c78
    .4byte gUnk_8930cf8
    .4byte gUnk_8930d78
    .4byte gUnk_8930df8
    .4byte gUnk_8930e78
    .4byte gUnk_8930ef8
    .4byte gUnk_8930f78
    .4byte gUnk_8930ff8
    .4byte gUnk_8931078
    .4byte gUnk_89310f8
    .4byte gUnk_8931178
    .4byte gUnk_89311f8
    .4byte gUnk_8931278
    .4byte gUnk_89312f8
    .4byte gUnk_8931378
    .4byte gUnk_89313f8
    .4byte gUnk_8931478
    .4byte gUnk_89314f8
    .4byte gUnk_8931578
    .4byte gUnk_89315f8
    .4byte gUnk_8931678
    .4byte gUnk_89316f8
    .4byte gUnk_8931778
    .4byte gUnk_89317f8
    .4byte gUnk_8931878
    .4byte gUnk_89318f8
    .4byte gUnk_8931978
    .4byte gUnk_89319f8
    .4byte gUnk_8931a78
    .4byte gUnk_8931af8
    .4byte gUnk_8931b78
    .4byte gUnk_8931bf8
    .4byte gUnk_8931c78
    .4byte gUnk_8931cf8
    .4byte gUnk_8931d78
    .4byte gUnk_8931df8
    .4byte gUnk_8931e78
    .4byte gUnk_8931ef8
    .4byte gUnk_8931f78
    .4byte gUnk_8931ff8
    .4byte gUnk_8932078
    .4byte gUnk_89320f8
    .4byte gUnk_8932178
    .4byte gUnk_89321f8
    .4byte gUnk_8932278
    .4byte gUnk_89322f8
    .4byte gUnk_8932378
    .4byte gUnk_89323f8
    .4byte gUnk_8932478
    .4byte gUnk_89324f8
    .4byte gUnk_8932578
    .4byte gUnk_89325f8
    .4byte gUnk_8932678
    .4byte gUnk_89326f8
    .4byte gUnk_8932778
    .4byte gUnk_89327f8
    .4byte gUnk_8932878
    .4byte gUnk_89328f8
    .4byte gUnk_8932978
    .4byte gUnk_89329f8
    .4byte gUnk_8932a78
    .4byte gUnk_8932af8
    .4byte gUnk_8932b78
    .4byte gUnk_8932bf8
    .4byte gUnk_8932c78
    .4byte gUnk_8932cf8
    .4byte gUnk_8932d78
    .4byte gUnk_8932df8
    .4byte gUnk_8932e78
    .4byte gUnk_8932ef8
    .4byte gUnk_8932f78
    .4byte gUnk_8932ff8
    .4byte gUnk_8933078
    .4byte gUnk_89330f8
    .4byte gUnk_8933178
    .4byte gUnk_89331f8
    .4byte gUnk_8933278
    .4byte gUnk_89332f8
    .4byte gUnk_8933378
    .4byte gUnk_89333f8
    .4byte gUnk_8933478
    .4byte gUnk_89334f8
    .4byte gUnk_8933578
    .4byte gUnk_89335f8
    .4byte gUnk_8933678
    .4byte gUnk_89336f8
    .4byte gUnk_8933778
    .4byte gUnk_89337f8
    .4byte gUnk_8933878
    .4byte gUnk_89338f8
    .4byte gUnk_8933978
    .4byte gUnk_89339f8
    .4byte gUnk_8933a78
    .4byte gUnk_8933af8
    .4byte gUnk_8933b78
    .4byte gUnk_8933bf8
    .4byte gUnk_8933c78
    .4byte gUnk_8933cf8
    .4byte gUnk_8933d78
    .4byte gUnk_8933df8
    .4byte gUnk_8933e78
    .4byte gUnk_8933ef8
    .4byte gUnk_8933f78
    .4byte gUnk_8933ff8
    .4byte gUnk_8934078
    .4byte gUnk_89340f8
    .4byte gUnk_8934178
    .4byte gUnk_89341f8
    .4byte gUnk_8934278
    .4byte gUnk_89342f8
    .4byte gUnk_8934378
    .4byte gUnk_89343f8
    .4byte gUnk_8934478
    .4byte gUnk_89344f8
    .4byte gUnk_8934578
    .4byte gUnk_89345f8
    .4byte gUnk_8934678
    .4byte gUnk_89346f8
    .4byte gUnk_8934778
    .4byte gUnk_89347f8
    .4byte gUnk_8934878
    .4byte gUnk_89348f8
    .4byte gUnk_8934978
    .4byte gUnk_89349f8
    .4byte gUnk_8934a78
    .4byte gUnk_8934af8
    .4byte gUnk_8934b78
    .4byte gUnk_8934bf8
    .4byte gUnk_8934c78
    .4byte gUnk_8934cf8
    .4byte gUnk_8934d78
    .4byte gUnk_8934df8
    .4byte gUnk_8934e78
    .4byte gUnk_8934ef8
    .4byte gUnk_8934f78
    .4byte gUnk_8934ff8
    .4byte gUnk_8935078
    .4byte gUnk_89350f8
    .4byte gUnk_8935178
    .4byte gUnk_89351f8
    .4byte gUnk_8935278
    .4byte gUnk_89352f8
    .4byte gUnk_8935378
    .4byte gUnk_89353f8
    .4byte gUnk_8935478
    .4byte gUnk_89354f8
    .4byte gUnk_8935578
    .4byte gUnk_89355f8
    .4byte gUnk_8935678
    .4byte gUnk_89356f8
    .4byte gUnk_8935778
    .4byte gUnk_89357f8
    .4byte gUnk_8935878
    .4byte gUnk_89358f8
    .4byte gUnk_8935978
    .4byte gUnk_89359f8
    .4byte gUnk_8935a78
    .4byte gUnk_8935af8
    .4byte gUnk_8935b78
    .4byte gUnk_8935bf8
    .4byte gUnk_8935c78
    .4byte gUnk_8935cf8


    .global gUnk_8E137C0
gUnk_8E137C0:
    .4byte gUnk_89361F8

    .global gUnk_8E137C4
gUnk_8E137C4:
    .4byte gUnk_89381F8
    .4byte gUnk_8938224
    .4byte gUnk_8938250
    .4byte gUnk_893827C
    .4byte gUnk_89382A8
    .4byte gUnk_89382D4
    .4byte gUnk_8938300
    .4byte gUnk_893832C
    .4byte gUnk_8938358

    .global gUnk_8E137E8
gUnk_8E137E8:
    .incbin "baserom.gba", 0xE137E8, 0x1800

    .global gUnk_8E14FE8
gUnk_8E14FE8:
    .incbin "baserom.gba", 0xE14FE8, 0x1E0

    .global gUnk_8E151C8
gUnk_8E151C8:
    .incbin "baserom.gba", 0xE151C8, 0x2C60

    .global gUnk_8E17E28
gUnk_8E17E28:
    .incbin "baserom.gba", 0xE17E28, 0xF0

    .global gUnk_8E17F18
gUnk_8E17F18:
    .4byte gUnk_893B1E8
    .4byte gUnk_893B1F6
    .4byte gUnk_893B204
    .4byte gUnk_893B212
    .4byte gUnk_893B220
    .4byte gUnk_893B22E
    .4byte gUnk_893B23C
    .4byte gUnk_893B24A
    .4byte gUnk_893B258
    .4byte gUnk_893B266
    .4byte gUnk_893B274
    .4byte gUnk_893B282

    .global gUnk_8E17F48
gUnk_8E17F48:
    .incbin "baserom.gba", 0xE17F48, 0x18B6E8

    .global gUnk_8FA3630
gUnk_8FA3630:
    .4byte gUnk_8A524F0
    .incbin "baserom.gba", 0xFA3634, 0x13C

    .global gUnk_8FA3770
gUnk_8FA3770:
    .4byte gUnk_8A52528
    .incbin "baserom.gba", 0xFA3774, 0x74

    .global gUnk_8FA37E8
gUnk_8FA37E8:
    .4byte gUnk_8A52538
    .incbin "baserom.gba", 0xFA37EC, 0x38

    .global gUnk_8FA3824
gUnk_8FA3824:
    .incbin "baserom.gba", 0xFA3824, 0x78

    .global gUnk_8FA389C
gUnk_8FA389C:
    .4byte gUnk_8AADF78
    .incbin "baserom.gba", 0xFA38A0, 0x4

    .global gUnk_8FA38A4
gUnk_8FA38A4:
    .incbin "baserom.gba", 0xFA38A4, 0x8

    .global gUnk_8FA38AC
gUnk_8FA38AC:
    .4byte gUnk_8AADF88
    .incbin "baserom.gba", 0xFA38B0, 0x4

    .global gUnk_8FA38B4
gUnk_8FA38B4:
    .incbin "baserom.gba", 0xFA38B4, 0x8

    .global gUnk_8FA38BC
gUnk_8FA38BC:
    .4byte gUnk_8AADF98
    .incbin "baserom.gba", 0xFA38C0, 0x4

    .global gUnk_8FA38C4
gUnk_8FA38C4:
    .incbin "baserom.gba", 0xFA38C4, 0x8

    .global gUnk_8FA38CC
gUnk_8FA38CC:
    .4byte gUnk_8AADFA8
    .incbin "baserom.gba", 0xFA38D0, 0x4

    .global gUnk_8FA38D4
gUnk_8FA38D4:
    .incbin "baserom.gba", 0xFA38D4, 0x8

    .global gUnk_8FA38DC
gUnk_8FA38DC:
    .incbin "baserom.gba", 0xFA38DC, 0x8

    .global gUnk_8FA38E4
gUnk_8FA38E4:
    .incbin "baserom.gba", 0xFA38E4, 0x8

    .global gUnk_8FA38EC
gUnk_8FA38EC:
    .incbin "baserom.gba", 0xFA38EC, 0x8

    .global gUnk_8FA38F4
gUnk_8FA38F4:
    .incbin "baserom.gba", 0xFA38F4, 0x8

    .global gUnk_8FA38FC
gUnk_8FA38FC:
    .incbin "baserom.gba", 0xFA38FC, 0x8

    .global gUnk_8FA3904
gUnk_8FA3904:
    .4byte gUnk_8AADFB8
    .4byte gUnk_8AADFF0
    .4byte gUnk_8AADFF8
    .4byte gUnk_8AAE000
    .4byte gUnk_8AAE008
    .4byte gUnk_8AAE010
    .4byte 0

    .global gUnk_8FA3920
gUnk_8FA3920:
    .incbin "baserom.gba", 0xFA3920, 0x8

    .global gUnk_8FA3928
gUnk_8FA3928:
    .incbin "baserom.gba", 0xFA3928, 0x8

    .global gUnk_8FA3930
gUnk_8FA3930:
    .incbin "baserom.gba", 0xFA3930, 0x8

    .global gUnk_8FA3938
gUnk_8FA3938:
    .incbin "baserom.gba", 0xFA3938, 0x8

    .global gUnk_8FA3940
gUnk_8FA3940:
    .incbin "baserom.gba", 0xFA3940, 0x8

    .global gUnk_8FA3948
gUnk_8FA3948:
    .incbin "baserom.gba", 0xFA3948, 0x8

    .global gUnk_8FA3950
gUnk_8FA3950:
    .4byte gUnk_8AAE018
    .4byte gUnk_8AAE050
    .4byte gUnk_8AAE058
    .4byte gUnk_8AAE060
    .4byte gUnk_8AAE068
    .4byte gUnk_8AAE070
    .incbin "baserom.gba", 0xFA3968, 0xDC

    .global gUnk_8FA3A44
gUnk_8FA3A44:
    .4byte gUnk_8AAE088
    .4byte 0

    .global gUnk_8FA3A4C
gUnk_8FA3A4C:
    .4byte gUnk_8A52618
    .4byte gUnk_8A536F4
    .4byte gUnk_8A547A8
    .4byte gUnk_8A55710
    .4byte gUnk_8A5662C
    .4byte gUnk_8A5769C
    .4byte gUnk_8A58674
    .4byte gUnk_8A596C8
    .4byte gUnk_8A5A740
    .4byte gUnk_8A5B638
    .4byte gUnk_8A5C534
    .4byte gUnk_8A5D5B8
    .4byte gUnk_8A52618

    .global gUnk_8FA3A80
gUnk_8FA3A80:
    .4byte gUnk_8A5E54C
    .4byte gUnk_8A5F8E8
    .4byte gUnk_8A60BBC
    .4byte gUnk_8A61D40
    .4byte gUnk_8A62FF0
    .4byte gUnk_8A646D0
    .4byte gUnk_8A65798
    .4byte gUnk_8A66F38
    .4byte gUnk_8A68980
    .4byte gUnk_8A6A644
    .4byte gUnk_8A6C1E0
    .4byte gUnk_8A6DDF8
    .4byte gUnk_8A5E54C

    .global gUnk_8FA3AB4
gUnk_8FA3AB4:
    .4byte gUnk_8A72DFC
    .4byte gUnk_8A75548
    .4byte gUnk_8A78CFC
    .4byte gUnk_8A7C758
    .4byte gUnk_8A80BA4
    .4byte gUnk_8A85268
    .4byte gUnk_8A89938
    .4byte gUnk_8A8DBD4
    .4byte gUnk_8A9195C
    .4byte gUnk_8A72DFC

    .global gUnk_8FA3ADC
gUnk_8FA3ADC:
    .4byte gUnk_8AA6958
    .4byte gUnk_8AA6C64
    .4byte gUnk_8AA6F70
    .4byte gUnk_8AA727C
    .4byte gUnk_8AA7588
    .4byte gUnk_8AA7894
    .4byte gUnk_8AA7BA0
    .4byte gUnk_8AA7EAC
    .4byte gUnk_8AA81B8
    .4byte gUnk_8AA84C4
    .4byte gUnk_8AA87D0
    .4byte gUnk_8AA8ADC
    .4byte gUnk_8AA6958

    .global gUnk_8FA3B10
gUnk_8FA3B10:
    .4byte gUnk_8AA8DE8
    .4byte gUnk_8AA90F4
    .4byte gUnk_8AA9400
    .4byte gUnk_8AA970C
    .4byte gUnk_8AA9A18
    .4byte gUnk_8AA9D24
    .4byte gUnk_8AAA030
    .4byte gUnk_8AAA33C
    .4byte gUnk_8AAA648
    .4byte gUnk_8AAA954
    .4byte gUnk_8AAAC60
    .4byte gUnk_8AAAF6C
    .4byte gUnk_8AA8DE8

    .global gUnk_8FA3B44
gUnk_8FA3B44:
    .4byte gUnk_8AAC010
    .4byte gUnk_8AAC394
    .4byte gUnk_8AAC6A0
    .4byte gUnk_8AAC9AC
    .4byte gUnk_8AACCB8
    .4byte gUnk_8AACFC4
    .4byte gUnk_8AAD2D0
    .4byte gUnk_8AAD5DC
    .4byte gUnk_8AAD8E8
    .4byte gUnk_8AAC010
    .incbin "baserom.gba", 0xFA3B6C, 0x20D68

    .global gFC48D4
gFC48D4:
    .incbin "baserom.gba", 0xFC48D4, 0x10

    .global gFC48E4
gFC48E4:
    .incbin "baserom.gba", 0xFC48E4, 0x10

    .global gFC48F4
gFC48F4:
    .incbin "baserom.gba", 0xFC48F4, 0x10

    .global gFC4904
gFC4904:
    .incbin "baserom.gba", 0xFC4904, 0x10

    .global gFC4914
gFC4914:
    .incbin "baserom.gba", 0xFC4914, 0x20

    .global gFC4934
gFC4934:
    .incbin "baserom.gba", 0xFC4934, 0x20

    .global gFC4954
gFC4954:
    .incbin "baserom.gba", 0xFC4954, 0x20

    .global gFC4974
gFC4974:
    .incbin "baserom.gba", 0xFC4974, 0x8

    .global gFC497C
gFC497C:
    .incbin "baserom.gba", 0xFC497C, 0x8

    .global gFC4984
gFC4984:
    .incbin "baserom.gba", 0xFC4984, 0x10

    .global gFC4994
gFC4994:
    .incbin "baserom.gba", 0xFC4994, 0x10

    .global gFC49A4
gFC49A4:
    .incbin "baserom.gba", 0xFC49A4, 0x8

    .global gFC49AC
gFC49AC:
    .incbin "baserom.gba", 0xFC49AC, 0x8

    .global gFC49B4
gFC49B4:
    .incbin "baserom.gba", 0xFC49B4, 0x8

    .global gFC49BC
gFC49BC:
    .incbin "baserom.gba", 0xFC49BC, 0x8

    .global gFC49C4
gFC49C4:
    .incbin "baserom.gba", 0xFC49C4, 0x8

    .global gFC49CC
gFC49CC:
    .incbin "baserom.gba", 0xFC49CC, 0x8

    .global gFC49D4
gFC49D4:
    .incbin "baserom.gba", 0xFC49D4, 0x8

    .global gFC49DC
gFC49DC:
    .incbin "baserom.gba", 0xFC49DC, 0x8

    .global gFC49E4
gFC49E4:
    .incbin "baserom.gba", 0xFC49E4, 0x8

    .global gFC49EC
gFC49EC:
    .incbin "baserom.gba", 0xFC49EC, 0x8

    .global gFC49F4
gFC49F4:
    .incbin "baserom.gba", 0xFC49F4, 0x8

    .global gFC49FC
gFC49FC:
    .incbin "baserom.gba", 0xFC49FC, 0x8

    .global gFC4A04
gFC4A04:
    .incbin "baserom.gba", 0xFC4A04, 0x8

    .global gFC4A0C
gFC4A0C:
    .incbin "baserom.gba", 0xFC4A0C, 0x8

    .global gFC4A14
gFC4A14:
    .incbin "baserom.gba", 0xFC4A14, 0x8

    .global gFC4A1C
gFC4A1C:
    .incbin "baserom.gba", 0xFC4A1C, 0x8

    .global gFC4A24
gFC4A24:
    .incbin "baserom.gba", 0xFC4A24, 0x8

    .global gFC4A2C
gFC4A2C:
    .incbin "baserom.gba", 0xFC4A2C, 0x8

    .global gFC4A34
gFC4A34:
    .incbin "baserom.gba", 0xFC4A34, 0x8

    .global gFC4A3C
gFC4A3C:
    .incbin "baserom.gba", 0xFC4A3C, 0x8

    .global gFC4A44
gFC4A44:
    .incbin "baserom.gba", 0xFC4A44, 0x8

    .global gFC4A4C
gFC4A4C:
    .incbin "baserom.gba", 0xFC4A4C, 0x8

    .global gFC4A54
gFC4A54:
    .incbin "baserom.gba", 0xFC4A54, 0x8

    .global gFC4A5C
gFC4A5C:
    .incbin "baserom.gba", 0xFC4A5C, 0x8

    .global gFC4A64
gFC4A64:
    .incbin "baserom.gba", 0xFC4A64, 0x8

    .global gFC4A6C
gFC4A6C:
    .incbin "baserom.gba", 0xFC4A6C, 0x8

    .global gFC4A74
gFC4A74:
    .incbin "baserom.gba", 0xFC4A74, 0x8

    .global gFC4A7C
gFC4A7C:
    .incbin "baserom.gba", 0xFC4A7C, 0x10

    .global gFC4A8C
gFC4A8C:
    .4byte g8DF1630
    .4byte g8DF1640
    .4byte g8DF1650
    .4byte g8DF1660
    .4byte g8DF1670
    .4byte g8DF1680
    .4byte g8DF1690
    .4byte g8DF16A0
    .4byte g8DF16B0
    .4byte g8DF16C0
    .4byte g8DF16D0
    .4byte g8DF16E0
    .4byte g8DF1708
    .4byte g8DF1730
    .4byte g8DF1758
    .4byte g8DF1780
    .4byte g8DF17A8
    .4byte g8DF17B8
    .4byte g8DF17C8
    .4byte g8DF17D8
    .4byte g8DF17E8
    .4byte g8DF17F8
    .4byte g8DF1808
    .4byte g8DF1818
    .incbin "baserom.gba", 0xFC4AEC
