    .section .rodata
    
    .global start
start:
    .incbin "baserom.gba", 0x5D2B0, 0x33212
