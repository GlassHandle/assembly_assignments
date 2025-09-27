.model small
.stack 100h
.data
.code
main proc
    mov ax, 1111h        ; Initial: AX=1111h
    mov bx, 2222h        ; BX=2222h
    mov cx, 3333h        ; CX=3333h
    ; Stack empty
    push ax              ; Stack: 1111h
    push bx              ; Stack: 2222h, 1111h
    push cx              ; Stack: 3333h, 2222h, 1111h
    pop ax               ; AX=3333h, Stack: 2222h, 1111h
    pop bx               ; BX=2222h, Stack: 1111h
    pop cx               ; CX=1111h, Stack empty
    mov ah, 4ch
    int 21h
main endp
end main