Addition macro p3,p4
    mov bl,p3
    mov bh,p4
    add bl,bh
    mov ah,2
    mov dl,bl 
    sub dl,48
    int 21h
    
endm 


Subtraction macro p1,p2
    mov bl,p1
    mov bh,p2
    sub bl,bh
    mov ah,2
    mov dl,bl 
    add dl,48
    int 21h
    
endm 

.model small
.stack 100h
.data
v1 db '5'
v2 db '3'
.code

main proc
    mov ax,@data
    mov ds,ax
    Addition v1,v2 
    Subtraction v1,v2
    
    
    mov ah,4ch
    int 21h
    main endp
end main
