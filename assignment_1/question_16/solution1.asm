mov ax, 0000h
mov ds, ax
mov al, [3000h]
inc al
mov [3000h], al  
hlt