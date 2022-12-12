PRINTFUNC MACRO P1        ; FUNCTION TO PRINT 
    MOV AH,02H
    MOV DL,P1
    SUB DL,30H
    INT 21H   
ENDM                      
                     
                     
                     
                     
                     
NEWLINE MACRO P2          ; FUNCTION TO PRINT NEW LINE 
    MOV DL,13
    MOV AH,2
    INT 21H
    MOV DL,10
    MOV AH,2 
    INT 21H
ENDM 



ADDITION MACRO P3,P4      ; FUNCTION TO ADD     
    MOV BL,P3
    MOV BH,P4
    ADD BH,BL
   
    PRINTFUNC BH          ; FUNCTION OF PRINT CALLED INSIDE FUNTION OF ADD
ENDM  





.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB "MAAZ$"
MSG2 DB "SECOND MSG$" 
VAR1 DB '4'
VAR2 DB '5' 


.CODE
MAIN PROC  
    
    MOV AX,@DATA
    MOV DS,AX
    
   
    ADDITION VAR1,VAR2 
 
 
    
    MAIN ENDP 

END MAIN
    
    
    
    
    
    
    
    
    
     
     
     
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    




