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
    
    main endp
end main