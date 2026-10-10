.model small
.stack
.data
.code
start:
    mov ax,@data
    mov ds,ax

    mov ax,1003h
    mov bl,0
    int 10h

;----- Background
    mov ax,0700h
	mov bh,00h
	mov ch,0
	mov cl,0
	mov dh,24
	mov dl,79
	int 10h
;===== Row 1 =====
;----- Square 1-1 (White)
    mov ax,0700h
	mov bh,0F0h
	mov ch,0
	mov cl,16
	mov dh,23
	mov dl,63
	int 10h
;----- Square 1-2 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,0
	mov cl,22
	mov dh,2
	mov dl,27
	int 10h
;----- Square 1-4 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,0
	mov cl,34
	mov dh,2
	mov dl,39
	int 10h
;----- Square 1-6 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,0
	mov cl,46
	mov dh,2
	mov dl,51
	int 10h
;----- Square 1-8 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,0
	mov cl,58
	mov dh,2
	mov dl,63
	int 10h
;===== Row 2 =====
;----- Square 2-1 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,3
	mov cl,16
	mov dh,5
	mov dl,21
	int 10h
;----- Square 2-3 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,3
	mov cl,28
	mov dh,5
	mov dl,33
	int 10h
;----- Square 2-5 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,3
	mov cl,40
	mov dh,5
	mov dl,45
	int 10h
;----- Square 2-7 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,3
	mov cl,52
	mov dh,5
	mov dl,57
	int 10h
;===== Row 3 =====
;----- Square 3-2 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,6
	mov cl,22
	mov dh,8
	mov dl,27
	int 10h
;----- Square 3-4 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,6
	mov cl,34
	mov dh,8
	mov dl,39
	int 10h
;----- Square 3-6 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,6
	mov cl,46
	mov dh,8
	mov dl,51
	int 10h
;----- Square 3-8 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,6
	mov cl,58
	mov dh,8
	mov dl,63
	int 10h
;===== Row 4 =====
;----- Square 4-1 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,9
	mov cl,16
	mov dh,11
	mov dl,21
	int 10h
;----- Square 4-3 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,9
	mov cl,28
	mov dh,11
	mov dl,33
	int 10h
;----- Square 4-5 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,9
	mov cl,40
	mov dh,11
	mov dl,45
	int 10h
;----- Square 4-7 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,9
	mov cl,52
	mov dh,11
	mov dl,57
	int 10h
;===== Row 5 =====
;----- Square 5-2 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,12
	mov cl,22
	mov dh,14
	mov dl,27
	int 10h
;----- Square 5-4 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,12
	mov cl,34
	mov dh,14
	mov dl,39
	int 10h
;----- Square 5-6 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,12
	mov cl,46
	mov dh,14
	mov dl,51
	int 10h
;----- Square 5-8 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,12
	mov cl,58
	mov dh,14
	mov dl,63
	int 10h
;===== Row 6 =====
;----- Square 6-1 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,15
	mov cl,16
	mov dh,17
	mov dl,21
	int 10h
;----- Square 6-3 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,15
	mov cl,28
	mov dh,17
	mov dl,33
	int 10h
;----- Square 6-5 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,15
	mov cl,40
	mov dh,17
	mov dl,45
	int 10h
;----- Square 6-7 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,15
	mov cl,52
	mov dh,17
	mov dl,57
	int 10h
;===== Row 7 =====
;----- Square 7-2 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,18
	mov cl,22
	mov dh,20
	mov dl,27
	int 10h
;----- Square 7-4 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,18
	mov cl,34
	mov dh,20
	mov dl,39
	int 10h
;----- Square 7-6 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,18
	mov cl,46
	mov dh,20
	mov dl,51
	int 10h
;----- Square 7-8 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,18
	mov cl,58
	mov dh,20
	mov dl,63
	int 10h
;===== Row 8 =====
;----- Square 8-1 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,21
	mov cl,16
	mov dh,23
	mov dl,21
	int 10h
;----- Square 8-3 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,21
	mov cl,28
	mov dh,23
	mov dl,33
	int 10h
;----- Square 8-5 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,21
	mov cl,40
	mov dh,23
	mov dl,45
	int 10h
;----- Square 8-7 (Dark Green)
    mov ax,0700h
	mov bh,20h
	mov ch,21
	mov cl,52
	mov dh,23
	mov dl,57
	int 10h

    mov ah,01h  ; wait for a key press
    int 21h

    mov ah,4ch
    int 21h

end start