.model small
.stack
.data

    ;----- Heading strings
    sch db 'University of Batangas','$'
    adr db 'Marawoy, Lipa City','$'
    dep db 'Computer Engineering Department','$'
    rec db 'Student Record','$'

    ;----- Field labels (colon is at column 38)
    l1 db 'Student Name      :','$'
    l2 db 'Student Number    :','$'
    l3 db 'Year Level        :','$'
    l4 db 'Gender            :','$'
    l5 db 'Birthdate         :','$'
    l6 db 'Age               :','$'

    ;----- Footer
    pb db 'Programmed by: Guian','$'

    ;----- Input parameter lists (0Ah)
    nmpar label byte
    nmlen db 25
    nmact db ?
    nmfld db 25 dup(' ')

    snpar label byte
    snlen db 15
    snact db ?
    snfld db 15 dup(' ')

    ylpar label byte
    yllen db 10
    ylact db ?
    ylfld db 10 dup(' ')

    gdpar label byte
    gdlen db 10
    gdact db ?
    gdfld db 10 dup(' ')

    bdpar label byte
    bdlen db 15
    bdact db ?
    bdfld db 15 dup(' ')

    agpar label byte
    aglen db 3
    agact db ?
    agfld db 3 dup(' ')

.code

start:
    mov ax,@data
    mov ds,ax

;** clear the screen **
    mov ax,0600h
    mov bh,07h
    mov cx,0000h
    mov dx,184Fh
    int 10h

;** outer border (white) **
    mov ax,0600h
    mov bh,70h
    mov ch,1
    mov cl,10
    mov dh,22
    mov dl,69
    int 10h

;** inner area (black) **
    mov ax,0600h
    mov bh,07h
    mov ch,2
    mov cl,11
    mov dh,21
    mov dl,68
    int 10h

;** heading **
    mov ah,02h
    mov bh,00h
    mov dx,031Dh  ; row 3, column 29
    int 10h
    mov ah,09h
    mov dx,offset sch
    int 21h

    mov ah,02h
    mov bh,00h
    mov dx,041Fh  ; row 4, column 31
    int 10h
    mov ah,09h
    mov dx,offset adr
    int 21h

    mov ah,02h
    mov bh,00h
    mov dx,0618h  ; row 6, column 24
    int 10h
    mov ah,09h
    mov dx,offset dep
    int 21h

    mov ah,02h
    mov bh,00h
    mov dx,0721h  ; row 7, column 33
    int 10h
    mov ah,09h
    mov dx,offset rec
    int 21h

;** fields **
;-- Student Name
    mov ah,02h
    mov bh,00h
    mov dx,0914h  ; row 9, column 20
    int 10h
    mov ah,09h
    mov dx,offset l1
    int 21h

    mov ah,02h
    mov bh,00h
    mov dx,0928h  ; row 9, column 40
    int 10h
    mov ah,0Ah
    mov dx,offset nmpar
    int 21h

;-- Student Number
    mov ah,02h
    mov bh,00h
    mov dx,0B14h  ; row 11, column 20
    int 10h
    mov ah,09h
    mov dx,offset l2
    int 21h

    mov ah,02h
    mov bh,00h
    mov dx,0B28h  ; row 11, column 40
    int 10h
    mov ah,0Ah
    mov dx,offset snpar
    int 21h

;-- Year Level
    mov ah,02h
    mov bh,00h
    mov dx,0D14h  ; row 13, column 20
    int 10h
    mov ah,09h
    mov dx,offset l3
    int 21h

    mov ah,02h
    mov bh,00h
    mov dx,0D28h  ; row 13, column 40
    int 10h
    mov ah,0Ah
    mov dx,offset ylpar
    int 21h

;-- Gender
    mov ah,02h
    mov bh,00h
    mov dx,0F14h  ; row 15, column 20
    int 10h
    mov ah,09h
    mov dx,offset l4
    int 21h

    mov ah,02h
    mov bh,00h
    mov dx,0F28h  ; row 15, column 40
    int 10h
    mov ah,0Ah
    mov dx,offset gdpar
    int 21h

;-- Birthdate
    mov ah,02h
    mov bh,00h
    mov dx,1114h  ; row 17, column 20
    int 10h
    mov ah,09h
    mov dx,offset l5
    int 21h

    mov ah,02h
    mov bh,00h
    mov dx,1128h  ; row 17, column 40
    int 10h
    mov ah,0Ah
    mov dx,offset bdpar
    int 21h

;-- Age
    mov ah,02h
    mov bh,00h
    mov dx,1314h  ; row 19, column 20
    int 10h
    mov ah,09h
    mov dx,offset l6
    int 21h

    mov ah,02h
    mov bh,00h
    mov dx,1328h  ; row 19, column 40
    int 10h
    mov ah,0Ah
    mov dx,offset agpar
    int 21h

;** programmed by **
    mov ah,02h
    mov bh,00h
    mov dx,151Eh  ; row 21, column 30
    int 10h
    mov ah,09h
    mov dx,offset pb
    int 21h

;** move cursor below the box, then wait for a key **
    mov ah,02h
    mov bh,00h
    mov dx,1700h
    int 10h

    mov ah,07h
    int 21h

    mov ah,4ch
    int 21h

    end start