.MODEL SMALL
.STACK 100H
.DATA
.CODE 
    
MAIN PROC
        
    MOV AH,1 
    INT 21H
    
    MOV DL,3
    ADD DL,48
    CMP AL,DL
 
   
    JE J
    JNE X 
    
    J:  
       MOV DL,'Y'
       MOV AH,2
       INT 21H 
       JMP TERMINATE
           
           
     X:  
       MOV DL,'N'
       MOV AH,2
       INT 21H 
       JMP TERMINATE
          
           
           
     TERMINATE:
      END
     
     
     
     
     MOV AH,4CH
     INT 21H   
    
    
    MAIN ENDP
END MAIN