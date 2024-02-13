[org 0x7C00]
zetka_offset equ 0x1000
mov [bdrive], dl
mov bp, 0x9000
mov sp, bp

push zetka_offset
mov ah, 17          
mov al, [bdrive]
push ax

call rdisk
call swtopmode
jmp $

%include "rdisk.s"
%include "gdt.s"
%include "pmode.s"

bstart:
    call zetka_offset
    jmp $

bdrive db 0

times 510 - ($-$$) db 0
dw 0xaa55