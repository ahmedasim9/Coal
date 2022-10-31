.MODEL SMALL
    .STACK 100H
    .CODE 
    
MAIN PROC
    
    MOV BL,6     ;1 INPUT
    MOV BH,1     ;2 INPUT
    
    SUB BL,BH    ;SUBTRACTIOB = ASCII CHARACTER
    ADD BL,48    ;ADDITION TO GET DESIRED FROM ASCI, ASCI OF 0 IS 48
    
    MOV AH,02H   ;OUTPUT          
    MOV DL,BL   
    INT 21H 
  
       
    
    
MAIN ENDP   
     END


