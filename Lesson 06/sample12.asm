.model small
.stack
.data
    pol1 DB ' 10th CHARACTER HAS BEEN PRESSED..!!! $'
.code

start:

    mov ax,@data
    mov ds,ax

    mov cx,10
    mov ah,01h
    balik: mov dl,al
    int 21h
    loop balik
    mov ah,09h
    mov dx,offset pol1
    int 21h
    
    mov ah,4ch
    int 21h

end start