.model small
.stack 64
.code

start:
    mov ah, 02h

    mov dl, 'C'
    int 21h
    mov dl, 'P'
    int 21h
    mov dl, 'E'
    int 21h

    mov ah, 4Ch
    int 21h

end start