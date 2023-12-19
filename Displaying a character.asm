MOV AH,2
MOV DL,"@" ;character to be displayed
INT 21H
MOV AH,4CH
INT 21H
HLT                    
