mov ax,400h
mov ds,ax
mov si,0h
mov al,[si]
mov bl,[si+1]
mov [si],bl
mov [si+1],al
hlt