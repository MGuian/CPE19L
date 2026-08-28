.model small
.stack
.code

start:

    mov ah, 02h

    mov cx, 26
    mov bl, 7ah
    mov dl, 41h
    mov dh, dl
    back: int 21h
    mov dl, bl
    int 21h
    
    mov dl, 0ah
    int 21h

    inc dh
    dec bl
    mov dl, dh
    loop back

    mov ah, 4ch
    int 21h

end start