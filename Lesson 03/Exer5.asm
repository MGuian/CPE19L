.model small
.stack
.code

start:

    mov ah, 02h

    mov cx, 26
    mov bl, 41h
    mov dl, 7ah
    mov dh, dl
    back: int 21h
    mov dl, bl
    int 21h

    dec dh
    inc bl
    mov dl, dh
    loop back

    mov ah, 4ch
    int 21h

end start