MOV SI,1100H ;store number of elements in 1100, followed by the elements in 1101,1102...
MOV BX,0H ;number of even no.s
MOV DX,0H ;number of odd no.s
MOV CL,[SI]
LOOP:
INC SI
MOV AL,[SI]
AND AL,1 ;returns zero of AL is even
JNZ ODD
INC BX 
ODD:  
MOV AL,[SI]
AND AL,1 
JZ AHEAD
INC DX
AHEAD:
DEC CL
JNZ LOOP
MOV [500H],BX
MOV [502H],DX
HLT