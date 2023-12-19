.DATA
    BUFFER_SIZE EQU 50
    INPUT_BUFFER DB BUFFER_SIZE,0
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        MOV AH,0AH
        MOV DX,OFFSET INPUT_BUFFER
        INT 21H
        MOV AH,09H
        LEA DX,INPUT_BUFFER+2
        INT 21H
        MOV AH,4CH
        INT 21H
        MAIN ENDP
    END MAIN  
;enter string/character/number on the screen and click enter
;an address is displayed
;the input is stored in the address displayed