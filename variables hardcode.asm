 .model small
 .stack 100h
 .data
 
 v1 db '1'
 v2 db ?
 
 .code
 
 MAIN PROC
  
  
  MOV AX,@DATA
  MOV DS,AX
  
  
  MOV V2,3
  MOV DL,V2    ; GIVES ASCII OF 3 TO V2 VARIABLE
  MOV AH,02H
  INT 21H
  
  
  MOV V2,'3'
  MOV DL,V2    ; HARDCODES THE VALUE 3 TO V2
  MOV AH,02H
  INT 21H
  
  MAIN ENDP
 END
  