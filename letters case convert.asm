.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC 
    
    
    ;letters case convert
    
    ;capital to small
    MOV AH,1
    INT 21H
    MOV DL,AL
    ADD DL,32      ; sub for small to capital
    MOV AH,2
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN