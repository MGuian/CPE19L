.model small
.stack
.code

start:

    mov ah, 02h

    mov cx, 10
    mov dl, 30h
    ulit: int 21h

    inc dl
    loop ulit

    mov ah, 4ch
    int 21h

end start