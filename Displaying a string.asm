.DATA
    STRING DB "HELLO WORLD",'$' ;string to be displayed
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        LEA DX,STRING
        MOV AH,09H
        INT 21H
        MOV AH,4CH
        INT 21H
        MAIN ENDP
    END MAIN