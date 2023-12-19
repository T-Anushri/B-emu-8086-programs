MOV [1100H], 10
MOV [1102H], 15
MOV AX, [1100h] 
MOV BX, [1102H]
GCD_LOOP:  ;uses euclid theorem to find gcd
 XOR DX, DX 
 DIV BX 
 MOV AX, BX 
 MOV BX, DX 
 OR BX, BX 
 JNZ GCD_LOOP 
MOV [1200H],AX ;gcd is stored in AX
HLT