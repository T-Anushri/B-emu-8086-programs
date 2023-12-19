MOV SI,500H ;store elements in memory starting from 500
MOV CL,04H  ;number of elements
DEC CL
MOV AL,[SI]
LOOP:
INC SI
CMP AL,[SI] ;returns carry if AL less than [SI]
JNC GO
MOV AL,[SI] ;AL stores largest number
GO:
DEC CL
JNZ LOOP
MOV [600H],AL 
MOV SI,500H
MOV CL,04H
DEC CL
MOV AL,[SI]
REPEAT:
INC SI
CMP AL,[SI]
JC GOTO
MOV AL,[SI] ;AL stores smallest number
GOTO:
DEC CL
JNZ REPEAT
MOV [602H],AL
HLT