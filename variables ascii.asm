 .model small
 .stack 100h
 .data
 
 v1 db '1'
 v2 db ?
 
 .code
 
 MAIN PROC
  
  
  MOV AX,@DATA
  MOV DS,AX
  
  
  MOV V2,6     ; GIVES ASCII OF 6 TO V2 VARIABLE
  ADD V2,48    ; ADD 48 TO GO TO ADCII OF 6   
  MOV DL,V2     
  MOV AH,02H
  INT 21H
  
  
  
  
  MAIN ENDP
 END
  