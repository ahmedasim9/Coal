.MODEL SMALL
.STACK 100H
.DATA  
MSG DB  "Enter any  letter$"
PRINT DB 0AH, 0DH," THIS IS NOT A LETTER  INVALID INPUT $" 
UPPER DB 0AH, 0DH," THIS IS UPER CASE LETTER $"
LOWER DB 0AH, 0DH," THIS IS LOWER CASE LETTER $"
.CODE

MAIN PROC  
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX, MSG
    MOV AH,9
    INT 21H
    
      
    MOV AH,1
    INT 21H 
 
    
    CMP AL,97 
    JGE MSG1
    JNGE MSG2
    
    
MSG1:
    CMP AL,122
         
    JLE MSG3
    JNGE MSG4
     
    
MSG2:
    CMP AL,90
    JLE MSG5
    JNLE MSG6 
               
MSG3:
        
    LEA DX,LOWER
    MOV AH,9
    INT 21H 
       
    JMP TERMINATE
        
        
MSG4:
    LEA DX,PRINT
    MOV AH,9
    INT 21H
    JMP TERMINATE
        
        
MSG5:
    CMP AL,65
    
    JGE MSG7
    JNGE MSG8 
    
    
MSG6:
    LEA DX,PRINT
    MOV AH,9
    INT 21H
    JMP TERMINATE 
                
               
MSG7:
    LEA DX,UPPER
    MOV AH,9
    INT 21H 
       
    JMP TERMINATE 
        
        
MSG8:
    LEA DX,PRINT
    MOV AH,9
    INT 21H
    JMP TERMINATE       
    
    
    
    
    
TERMINATE:
    MOV AH,4CH
    INT 21H
       
    MAIN ENDP
END MAIN 
    