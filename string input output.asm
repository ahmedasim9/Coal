.model small
.stack 100h
.data      


v1          db  26        ;MAX NUMBER OF CHARACTERS ALLOWED (25).
            db  ?         ;NUMBER OF CHARACTERS ENTERED BY USER.
            db  26 dup(0) ;CHARACTERS ENTERED BY USER.

.code
main proc
            mov ax, @data
            mov ds, ax              

          ;CAPTURE STRING FROM KEYBOARD.                                    
           mov ah, 0Ah                ;SERVICE TO CAPTURE STRING FROM KEYBOARD.
           mov dx, offset v1
           int 21h                 

          ;CHANGE CHR(13) BY '$'.
           mov si, offset v1 + 1      ;NUMBER OF CHARACTERS ENTERED.
           mov cl, [ si ]             ;MOVE LENGTH TO CL.
           mov ch, 0                  ;CLEAR CH TO USE CX. 
           inc cx                     ;TO REACH CHR(13).
           add si, cx                 ;NOW SI POINTS TO CHR(13).
           mov al, '$'
           mov [ si ], al             ;REPLACE CHR(13) BY '$'.            

                                       ;DISPLAY STRING.                   
           mov ah, 9                  ;SERVICE TO DISPLAY STRING.
           mov dx, offset v1 + 2      ;MUST END WITH '$'.
           int 21h

           mov ah, 4ch
           int 21h

 end main