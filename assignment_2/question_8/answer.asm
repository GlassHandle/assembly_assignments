.model small
.stack 100h
.data
    arr db 1,2,3,4,5
    sum db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    lea si, arr
    mov cx, 5
    mov al, 0
    alo:
        add al,[si]
        inc si
        loop alo
    mov sum, al
    mov ah, 4ch
    int 21h
main endp
end main