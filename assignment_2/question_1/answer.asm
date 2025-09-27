.model small
.stack 100h
.data
    num1 db 5
    num2 db 3
.code
main proc
    mov ax, @data
    mov ds, ax
    mov al, num1
    add al, num2
    mov bx,0
    mov ds,bx
    mov [2000h], al      ; Store result at offset 2000H in DS
    mov ah, 4ch
    int 21h
main endp
end main