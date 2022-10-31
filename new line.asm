 .model small
 .stack 100h
 .code
 
 MAIN PROC
    
    MOV AH, 01H
    INT 21H              ;INPUT 1
    MOV BL,AL
    
    MOV AH, 01H
    INT 21H              ;INPUT 2
    MOV BH,AL
    
    
    MOV DL,10
    MOV AH,02H
    INT 21H              ; NEW LINE
    MOV DL,13
    MOV AH,02H
    INT 21H    
    
    
    MOV AH,02H
    MOV DL,BL            ;OUTPUT 1
    INT 21H
    
    
    MOV DL,10
    MOV AH,02H
    INT 21H              ; NEW LINE
    MOV DL,13
    MOV AH,02H
    INT 21H 
    
    
    MOV AH,02H
    MOV DL,BH            ;OUTPUT 2
    INT 21H
    
    MAIN ENDP