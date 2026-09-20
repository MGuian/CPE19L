.model small
.stack
.data
    p1  DB '================================================',13,10,'$'
    p2  DB '|             MY FAVORITE TV SHOWS             |',13,10,'$'
    p3  DB '================================================',13,10,'$'
    p4  DB '| 1. One Piece                                 |',13,10,'$'
    p5  DB '| 2. Dragon Ball                               |',13,10,'$'
    p6  DB '| 3. That Time I Got Reincarnated as a Slime   |',13,10,'$'
    p7  DB '| 4. Bleach                                    |',13,10,'$'
    p8  DB '| 5. The Suits                                 |',13,10,'$'
    p9  DB '================================================',13,10,'$'
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
    mov ah,09h
    mov dx,offset p3
    int 21h
    mov ah,09h
    mov dx,offset p4
    int 21h
    mov ah,09h
    mov dx,offset p5
    int 21h
    mov ah,09h
    mov dx,offset p6
    int 21h
    mov ah,09h
    mov dx,offset p7
    int 21h
    mov ah,09h
    mov dx,offset p8
    int 21h
    mov ah,09h
    mov dx,offset p9
    int 21h

    mov ah,4ch
    int 21h

end start