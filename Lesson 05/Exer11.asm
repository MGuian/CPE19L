.model small
.stack
.data
    title1 DB 'RESISTOR COLOR CODE','$'
    head1  DB 'COLOR_NAME     DIGIT     MULTIPLIER     COLOR','$'

    p0 DB ' Black           0          x1','$'
    p1 DB ' Brown           1          x10','$'
    p2 DB ' Red             2          x100','$'
    p3 DB ' Orange          3          x1K','$'
    p4 DB ' Yellow          4          x10K','$'
    p5 DB ' Green           5          x100K','$'
    p6 DB ' Blue            6          x1M','$'
    p7 DB ' Violet          7          x10M','$'
    p8 DB ' Gray            8          x100M','$'
    p9 DB ' White           9          x1G','$'

.code
start:
;----- Background
    mov ah,07h
	mov bh,3Fh
	mov ch,0
	mov cl,0
	mov dh,24
	mov dl,79
	int 10h
;----- Black Row
    mov ah,07h
	mov bh,00h
	mov ch,6
	mov cl,53
	mov dh,6
	mov dl,61
	int 10h
;----- Brown Row
    mov ah,07h
	mov bh,60h
	mov ch,7
	mov cl,53
	mov dh,7
	mov dl,61
	int 10h
;----- Red Row
    mov ah,07h
	mov bh,40h
	mov ch,8
	mov cl,53
	mov dh,8
	mov dl,61
	int 10h
;----- Orange Row
    mov ah,07h
	mov bh,0C0h
	mov ch,9
	mov cl,53
	mov dh,9
	mov dl,61
	int 10h
;----- Yellow Row
    mov ah,07h
	mov bh,60h
	mov ch,10
	mov cl,53
	mov dh,10
	mov dl,61
	int 10h
;----- Green Row
    mov ah,07h
	mov bh,20h
	mov ch,11
	mov cl,53
	mov dh,11
	mov dl,61
	int 10h
;----- Blue Row
    mov ah,07h
	mov bh,10h
	mov ch,12
	mov cl,53
	mov dh,12
	mov dl,61
	int 10h
;----- Violet Row
    mov ah,07h
	mov bh,50h
	mov ch,13
	mov cl,53
	mov dh,13
	mov dl,61
	int 10h
;----- Grey Row
    mov ah,07h
	mov bh,70h
	mov ch,14
	mov cl,53
	mov dh,14
	mov dl,61
	int 10h
;----- White Row
    mov ah,07h
	mov bh,70h
	mov ch,15
	mov cl,53
	mov dh,15
	mov dl,61
	int 10h

    mov ax,@data
    mov ds,ax
;----- Title Row
    mov ah,02h
	mov bh,00h
	mov dh,3
	mov dl,30
	int 10h
    mov ah,09h
    mov dx,offset title1
    int 21h
;----- Column Title Row
    mov ah,02h
	mov bh,00h
	mov dh,5
	mov dl,15
	int 10h
    mov ah,09h
    mov dx,offset head1
    int 21h
;----- Color Code Rows
    mov ah,02h
	mov bh,00h
	mov dh,6
	mov dl,15
	int 10h
    mov ah,09h
    mov dx,offset p0
    int 21h

    mov ah,02h
	mov bh,00h
	mov dh,7
	mov dl,15
	int 10h
    mov ah,09h
    mov dx,offset p1
    int 21h

    mov ah,02h
	mov bh,00h
	mov dh,8
	mov dl,15
	int 10h
    mov ah,09h
    mov dx,offset p2
    int 21h

    mov ah,02h
	mov bh,00h
	mov dh,9
	mov dl,15
	int 10h
    mov ah,09h
    mov dx,offset p3
    int 21h

    mov ah,02h
	mov bh,00h
	mov dh,10
	mov dl,15
	int 10h
    mov ah,09h
    mov dx,offset p4
    int 21h

    mov ah,02h
	mov bh,00h
	mov dh,11
	mov dl,15
	int 10h
    mov ah,09h
    mov dx,offset p5
    int 21h

    mov ah,02h
	mov bh,00h
	mov dh,12
	mov dl,15
	int 10h
    mov ah,09h
    mov dx,offset p6
    int 21h

    mov ah,02h
	mov bh,00h
	mov dh,13
	mov dl,15
	int 10h
    mov ah,09h
    mov dx,offset p7
    int 21h

    mov ah,02h
	mov bh,00h
	mov dh,14
	mov dl,15
	int 10h
    mov ah,09h
    mov dx,offset p8
    int 21h

    mov ah,02h
	mov bh,00h
	mov dh,15
	mov dl,15
	int 10h
    mov ah,09h
    mov dx,offset p9
    int 21h

    mov ah,01h  ; wait for a key press
    int 21h

    mov ah,4ch
    int 21h

end start