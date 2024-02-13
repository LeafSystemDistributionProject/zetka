rdisk:
    push bp
    mov bp, sp
    pusha

    mov bx, [bp + 6]
	mov dx, [bp + 4]
    
    mov ah, 0x02 
    mov al, dh   
    mov cl, 0x02 
                
    mov ch, 0x00 
    mov dh, 0x00 
    int 0x13      

    jc disk_error

    mov dx, [bp + 4]     
    cmp dh, al 
    jne sectors_error
    popa
    pop bp
    ret

disk_error:
    jmp disk_loop

sectors_error:
    jmp disk_loop

disk_loop:
    jmp $
