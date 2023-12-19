MOV [1100H], 10
MOV [1102H], 15
MOV AX, [1100h] 
MOV BX, [1102H]
GCD_LOOP:
 XOR DX, DX 
 DIV BX 
 MOV AX, BX 
 MOV BX, DX 
 OR BX, BX 
 JNZ GCD_LOOP 
MOV CX,AX ;gcd is stored in CX
MOV AX, [1100h] 
MOV BX, [1102H]
MUL BX  ;multiply the numbers
DIV CX  ;divide by gcd
MOV [1200H],AX ;lcm is stored in AX
HLT