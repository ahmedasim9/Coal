 .model small
 .stack 100h
 .data
 
 v1 db '1'
 v2 db ?
 v3 db 'HELLO $'
 
 .code
 
 MAIN PROC
  
  
  MOV AX,@DATA
  MOV DS,AX
  
  
  MOV DX,OFFSET V3  ;MOVES BASE ADRESS OF V3 TO DX
  
  MOV AH,09H        ;DISPLAYS STRING OF AH(OFFSET SPECIFIED BY DX)
  INT 21H
  
  
  
  
  MAIN ENDP
 END
  