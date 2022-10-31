.model small
.stack 100h


.data 
VAR1 DB 0DH,0AH, 'AHMED$' 
LOOPVAR DW ?

.code
main proc  
    
  
    
   MOV AX,@DATA
   MOV DS,AX     
   
   MOV AH,01H
   INT 21H
   MOV B.LOOPVAR,AL
   SUB LOOPVAR,48
   INT 21H
   

   
   
   MOV AH,09H
   MOV CX,LOOPVAR     ;CX COUNTER REGISTER DEFINES LOOP, WILL RUN 10 TIMES.  
   
   LOOP1:               ;LOOP DEFINATION 
   INT  21H
             
    
       
                                     
LOOP LOOP1              ;LOOP IS CALLED HERE


   MOV AH,4CH
   INT 21H  




main endp
end main
