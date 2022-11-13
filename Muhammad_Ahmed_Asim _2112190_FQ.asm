.model small
.stack 100h
.data
obj db 0AH,0DH, "What do you want? "
Msg1 db 0AH,0DH, "Print 1 for A-Z "
Msg2 db 0AH,0DH, "Print 2 For a-z"
Msg3 db 0AH,0DH, "Print 3 for 0-9" 
Msg4 db 0AH,0DH, "Print 4 for uper to lower "
Msg5 db 0AH,0DH, "Print 5 for lower to upper "
Msg6 db 0AH,0DH, "Enter Any capital letter $"
Msg7 db 0AH,0DH, "Enter Any small letter $" 
Msg8 db 0AH,0DH, "A-Z : $"
Msg9 db 0AH,0DH, "a-z : $"
Msg10 db 0AH,0DH, "0-9 : $"

obj1 db "1"
obj2 db "2"
obj3 db "3"
obj4 db "4"
obj5 db "5"
obj6 db "6"
obj7 db "7"

.code
main proc
    mov ax,@data
    mov ds,ax 
    
    lea dx,obj
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    
    cmp al,obj1
    je @obj1
    
    cmp al,obj2
    je @obj2
    
    cmp al,obj3
    je @obj3
    
    cmp al,obj4
    je @obj4
    
    cmp al,obj5
    je @obj5
     
     @obj1: 
     
    lea dx,Msg8
    mov ah,9
    int 21h 
      
    MOV CX, 26                 
 
     MOV AH, 2                    
     MOV DL, 41H               
 
     @WHILE_LOOP:                 
       CMP CX, 0                 
 
       JE @END_LOOP               
 
       INT 21H                 
 
       INC DL                     
       DEC CX                     
     JMP @WHILE_LOOP             
 
     @END_LOOP:                   
 
     MOV AH, 4CH                
     INT 21H
     
     
     @obj2:
      
    lea dx,Msg9
    mov ah,9
    int 21h
     
      MOV CX, 26                 
 
     MOV AH, 2                  
     MOV DL, 97                  
 
     @WHILE_LOOP1:                
       CMP CX, 0                 
 
       JE @END_LOOP1              
 
       INT 21H                    
 
       INC DL                   
       DEC CX                     
     JMP @WHILE_LOOP1             
 
     @END_LOOP1:                  
 
     MOV AH, 4CH                  
     INT 21H
     
     
     @obj3:
      
    lea dx,Msg10
    mov ah,9
    int 21h
     
      MOV CX,10                   
      MOV Dx,48               
 
     @WHILE_LOOP2:               
       CMP CX, 0                 
 
       JE @END_LOOP2               
       Mov ah,2
       INT 21H                   
 
       INC dx                   
       DEC CX                    
     JMP @WHILE_LOOP2             
 
     @END_LOOP2:                  
 
     MOV AH, 4CH                
     INT 21H
     
     
     @obj4:
     
     
     Lea dx,Msg6
     mov ah, 9
     int 21h
     
     mov ah,1
     int 21h
     mov dl,al
     add dl,32
     
     mov ah,2
     int 21h
     
     
     @obj5:  
     
     
     Lea dx,Msg7
     mov ah, 9
     int 21
     
     mov ah,1
     int 21h
     mov dl,al
     sub dl,32
     
     mov ah,2
     int 21h
   
   
   main endp

