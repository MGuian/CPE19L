.model small
.stack
.code

start:

    mov ah, 02h

    mov cx, 10
    mov dl, 39h
    ulit: int 21h

    dec dl
    loop ulit

    mov ah, 4ch
    int 21h

end start