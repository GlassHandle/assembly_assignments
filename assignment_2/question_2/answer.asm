.model small
.stack 100h
.data
.code
main proc
    mov ax,1000h
    mov ds,ax
    mov byte ptr [0021h],05h
    mov bx,0020h
    mov di,0001h
    mov cl,[bx+di]      
    mov ch,0
    mov ah,4ch
    int 21h
main endp
end main