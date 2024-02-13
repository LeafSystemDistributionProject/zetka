deligma_offset equ 0x8900
push deligma_offset
global kstart
kstart:
    call deligma_offset
    jmp $