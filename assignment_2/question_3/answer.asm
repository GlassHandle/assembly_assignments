.model small
.stack 100h
.data
.code
main proc
    mov ax,1000h
    mov ds,ax
    mov al,0Ah
    mov [0020h],al
    mov ah,4ch
    int 21h
main endp
end main