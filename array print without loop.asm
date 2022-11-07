.MODEL SMALL
.STACK 100h
.DATA        
     ARR  DB   1,2,3,4,5   ;array declaration
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        
        MOV SI,2 
        MOV AH,2
    
    OUTPUT:
          MOV DL, ARR[SI]
          ADD DL, 30H ;convert to askii
          INT 21H
          INC SI
      

     MAIN ENDP
END MAIN