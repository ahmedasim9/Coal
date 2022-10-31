.MODEL SMALL
    .STACK 100H
    .CODE 
    
MAIN PROC
        
    MOV AH,01H 
    INT 21H
    MOV BL,AL     ;1 INPUT
    
    MOV AH,01H
    INT 21H                 
    MOV BH,AL    ;2 INPUT 
    
   
    
  
    ADD BL,BH    ;ADDITION = ASCII CHARACTER
    SUB BL,48    ;SUBTRACTION TO GET DESIRED FROM ASCI, ASCI OF 0 IS 48  
    
 
    MOV AH,02H   ;OUTPUT          
    MOV DL,BL   
    INT 21H 
  
       
    
    
MAIN ENDP   
     END


