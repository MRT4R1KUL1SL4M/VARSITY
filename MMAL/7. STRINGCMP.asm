org 100h

.data
    string1 db 'DIU'    
    len equ ($-string1)
    string2 db 'DIU'
    output db 'a$'
    
.code
    lea si, string1
    lea di, string2

    
    mov cx, len

    
    repe cmpsb
    jne not_equal
    
    mov output, 'Y'
    
    jmp end
    
    not_equal:
    mov output, 'N'
    
    end:
    mov ah, 09h
    lea dx, output
    int 21h
        ret





