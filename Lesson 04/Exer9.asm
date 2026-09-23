.model small
.stack
.data
    p1  DB '====================================================',13,10,'$'
    p2  DB '|                                                  |',13,10,'$'
    p3  DB '|       </>      ENGR. GUIAN JAUNDELL R. MANALO    |',13,10,'$'
    p4  DB '|                      COMPUTER ENGINEER           |',13,10,'$'
    p5  DB '|   COMPANY NAME                                   |',13,10,'$'
    p6  DB '|                     OFFICE No.                   |',13,10,'$'
    p7  DB '|                     FAX No.                      |',13,10,'$'
    p8  DB '|   COMPANY WEBSITE                                |',13,10,'$'
    p9  DB '|                     RES No.                      |',13,10,'$'
    p10 DB '|                     +63 945 854 9482             |',13,10,'$'
    p11 DB '|                     manaloguian@gmail.com        |',13,10,'$'
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
    mov dx,offset p2
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
    mov ah,09h
    mov dx,offset p10
    int 21h
    mov ah,09h
    mov dx,offset p11
    int 21h
    mov ah,09h
    mov dx,offset p2
    int 21h
    mov ah,09h
    mov dx,offset p1
    int 21h

    mov ah,4ch
    int 21h

end start