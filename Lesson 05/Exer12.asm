.model small
.stack
.data
.code
start:
;----- Background Outer
    mov ah,07h
	mov bh,00h
	mov ch,0
	mov cl,0
	mov dh,24
	mov dl,79
	int 10h
;----- Background border
    mov ah,07h
	mov bh,70h
	mov ch,4
	mov cl,18
	mov dh,21
	mov dl,62
	int 10h
;----- Background Inner
    mov ah,07h
	mov bh,10h
	mov ch,5
	mov cl,20
	mov dh,20
	mov dl,60
	int 10h

;----- Logo Letter G shadow
    mov ah,07h
	mov bh,00h
	mov ch,9
	mov cl,29
	mov dh,9
	mov dl,43
	int 10h

	mov ah,07h
	mov bh,00h
	mov ch,10
	mov cl,29
	mov dh,17
	mov dl,30
	int 10h

    mov ah,07h
	mov bh,00h
	mov ch,18
	mov cl,29
	mov dh,18
	mov dl,43
	int 10h

	mov ah,07h
	mov bh,00h
	mov ch,15
	mov cl,42
	mov dh,17
	mov dl,43
	int 10h

	mov ah,07h
	mov bh,00h
	mov ch,14
	mov cl,36
	mov dh,14
	mov dl,43
	int 10h

;----- Logo Letter ! shadow
    mov ah,07h
	mov bh,00h
	mov ch,9
	mov cl,51
	mov dh,16
	mov dl,52
	int 10h

	mov ah,07h
	mov bh,00h
	mov ch,18
	mov cl,51
	mov dh,18
	mov dl,52
	int 10h

;----- Logo Letter G
    mov ah,07h
	mov bh,70h
	mov ch,8
	mov cl,28
	mov dh,8
	mov dl,42
	int 10h

	mov ah,07h
	mov bh,70h
	mov ch,8
	mov cl,28
	mov dh,16
	mov dl,29
	int 10h

    mov ah,07h
	mov bh,70h
	mov ch,17
	mov cl,28
	mov dh,17
	mov dl,42
	int 10h

	mov ah,07h
	mov bh,70h
	mov ch,14
	mov cl,41
	mov dh,16
	mov dl,42
	int 10h

	mov ah,07h
	mov bh,70h
	mov ch,13
	mov cl,35
	mov dh,13
	mov dl,42
	int 10h

;----- Logo Letter !
    mov ah,07h
	mov bh,40h
	mov ch,8
	mov cl,50
	mov dh,15
	mov dl,51
	int 10h

	mov ah,07h
	mov bh,40h
	mov ch,17
	mov cl,50
	mov dh,17
	mov dl,51
	int 10h

    mov ah,01h  ; wait for a key press
    int 21h

    mov ah,4ch
    int 21h

end start