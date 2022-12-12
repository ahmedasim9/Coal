printfunc macro p2
    mov dx,offset p2
    mov ah,9
    int 21h
endm

NEWLINE MACRO P2          ; FUNCTION TO PRINT NEW LINE 
    MOV DL,13
    MOV AH,2
    INT 21H
    MOV DL,10
    MOV AH,2 
    INT 21H
ENDM 

.model small
.stack 100h
.data
msg1 db "It is a first message$"
msg2 db "It is a second message$"
.code

main proc
    mov ax,@data
    mov ds,ax
    printfunc msg1
    NEWLINE 
    printfunc msg2
    
    mov ah,4ch
    int 21h
    main endp
end main