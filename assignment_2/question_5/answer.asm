.model small
.stack 100h
.data
.code
main proc
    mov ax, 1234h        ; AX=1234h
    push ax              ; SP=SP-2, [SP]=1234h
    mov ax, 0            ; AX=0
    pop ax               ; SP=SP+2, AX now has value set to 1234h
    mov ah, 4ch
    int 21h
main endp
end main