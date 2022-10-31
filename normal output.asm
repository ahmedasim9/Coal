.model small
.stack 100h
.code
main proc

mov ah,01h
int 21h       ;1 Input
mov bl,al

mov ah,01h
int 21h       ;2 Input
mov bh,al

mov ah,02h
mov dl,bl    ;Output 1
int 21h

mov ah,02h
mov dl,bh    ;output 2
int 21h  
 


main endp
end