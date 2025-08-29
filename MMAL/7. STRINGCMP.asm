
; Comparision of two string

.data
    string1 db 'DIU'    
    len equ ($-string1)
    string2 db 'DIU'
    output db 'No','$'
    success_output db 'Yes','$'

.code
    lea si, string1
    lea di, string2
    mov cx, len
    repe cmpsb
    jne not_equal

    lea dx, success_output
    jmp print

not_equal:
    lea dx, output

print:
    mov ah, 09h
    int 21h
    ret






