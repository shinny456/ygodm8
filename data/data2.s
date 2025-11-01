    .section .rodata

    .global data2
data2:
    .incbin "baserom.gba", 0x90C65, 3
    
    .global g8090C68
g8090C68:
    .incbin "baserom.gba", 0x90C68, 0x1000
    
    .global g8091C68
g8091C68:
    .incbin "baserom.gba", 0x91C68, 0x20
    
    .global g8091C88
g8091C88:
    .incbin "baserom.gba", 0x91C88, 0xC0
