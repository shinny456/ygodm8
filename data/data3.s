    .section .rodata
    
    .global data3
data3:
    .incbin "baserom.gba", 0x942D4, 0xD663D4
    
    .global gUnk_8DFA6A8
gUnk_8DFA6A8:
    .byte 0x2D, 0x2E, 0x2F, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36

    .global end
end:
    .incbin "baserom.gba", 0xDFA6B2
