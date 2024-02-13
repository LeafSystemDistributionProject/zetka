[bits 16]
swtopmode:
    cli            
    lgdt [gdt_descriptor]    
    mov eax, cr0 
    or eax, 0x1    
    mov cr0, eax
    jmp CODE_SEG:pmode

[bits 32]
pmode:
    mov ax, DATA_SEG
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    mov ss, ax
    mov ebp, 0x90000       
    mov esp, ebp
    call bstart   
    jmp $ 