Addd macro p3,p4
    mov bl,p3
    mov bh,p4
    add bl,bh
    mov ah,2
    mov dl,bl 
    sub dl,48
    int 21h
    
endm    

.model small
.stack 100h
.data
v1 db '2'
v2 db '3'
.code

main proc
    mov ax,@data
    mov ds,ax
    Addd v1,v2
    
    
    mov ah,4ch
    int 21h
    main endp
end main