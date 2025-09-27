.model small
.stack 100h
.data
.code
main proc
    mov ax, 1234h        ; AX=1234h
    push ax
    mov ax, 5678h        ; AX=5678h
    add ax, 1111h        ; AX=6789h
    pop bx               ; BX=1234h (original AX), AX=6789h
    mov ah, 4ch
    int 21h
main endp
end main