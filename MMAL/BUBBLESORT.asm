ORG 100H
.DATA
ARRAY DB 04H,03H,02H,07H
LEN EQU ($-ARRAY)


.CODE
LEA SI,ARRAY
MOV CL,LEN
DEC CL

X:
LEA SI,ARRAY
MOV AH,CL

Y:
MOV AL,[SI]
INC SI
MOV BL,[SI]

CMP AL,BL
JB SWAP

JMP W

SWAP:
    MOV [SI],AL
    DEC SI
    MOV [SI],BL
    INC SI
W:
    DEC AH
    JNZ Y
    
LOOP X


;PRINT
LEA SI,ARRAY
MOV CX,LEN

PRINT:
    MOV DX,[SI]
    ADD DX,30H
    MOV AH,02H
    INT 21H
    
    MOV DX,' '
    MOV AH,02H
    INT 21H
    
    INC SI
    LOOP PRINT
    
RET   