.model small
.stack
.data
    p1 DB 'Guian Jaundell R Manalo',13,10,'$'
    p2 DB 'Computer Engineering',13,10,'$'
.code

start:

    mov ax,@data
    mov ds,ax

    mov ah,09h
    mov dx,offset p1
    int 21h

    mov ah,09h
    mov dx,offset p2
    int 21h

    mov ah,4ch
    int 21h

end start