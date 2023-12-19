MOV SI,1100H ;store the number of elements in 1100, followed by elements in 1100,1102...
MOV CL,[SI] 
DEC CL  ;count variable
REPEAT: ;outer loop
MOV SI,1100H
MOV CH,[SI]
DEC CH ;count variable
INC SI
REPCOM: ;inner loop
MOV AL,[SI]
INC SI
CMP AL,[SI] ;returns carry if AL less than [SI]
JC AHEAD ;exchange if no carry ;JNC AHEAD sorts the numbers in descending order
XCHG AL,[SI]
XCHG AL,[SI-1]
AHEAD:
DEC CH
JNZ REPCOM
DEC CL
JNZ REPEAT
HLT