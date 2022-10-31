.model small
.stack 100h
.data 
    MSG1 DW 'INPUT 1 FOR A-Z, INPUT 2 FOR a-z, INPUT 3 FOR 1 TO 10, INPUT 4 FOR UPER TO LOWER AND 5 TO LOWER TO UPPER $'
    ONE DB '1' 
    TWO DB '2'
.code
main proc
      
   MOV AX,@DATA
   MOV DS,AX
   
   
   MOV AH,01H
   INT 21H
   
   
   CMP AL,ONE
   JLE EQUAL
   
   PRINTAZ:
   MOV CX,26
   MOV AH,2
   MOV DL,122
   
   L1:
   INT 21H
   inc dl
loop L1
mov dl, 10
mov ah,2
INT 21h
mov dl, 13
mov ah,2
INT 21h
mov cx, 26
mov dl, 97
mov ah, 2  

 cmp v1,04
    je equal
    
    
    equal:     
        mov ah,02h
        mov dx, ax
        int 21h 
    
    yes
   
    
    
    main endp

end main 

    mov cx,26
    lowercase:
    
    mov ax,97
    mov ax,02h
    mov dx,ax
    int 21h
    inc ax  
    
    
    loop lowercase
    
     
    
    mov cx,26
    uppercase:
    
    mov ax,65
    mov ax,02h
    mov dx,ax
    int 21h
    inc ax  
    
    
    loop uppercase   
    
    
    
    mov cx,10
    numbers:
    
    mov ax,48
    mov ax,02h
    mov dx,ax
    int 21h
    inc ax  
    
    
    loop uppercase
                                           
   
   
   MOV AH,4CH
   INT 21H

main endp
end main
