.MODEL SMALL
.STACK 100h
.DATA        
     ARR  DB   1,2,3,4,5   ;array declaration
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX,5
        MOV SI,0 
        MOV AH,2
    
    OUTPUT:
          MOV DL, ARR[SI]
          ADD DL, 30H ;convert to asking
          INT 21H
          INC SI
        LOOP OUTPUT 

     MAIN ENDP
END MAIN