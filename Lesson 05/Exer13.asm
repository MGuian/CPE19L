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

;----- First Row
;----- 1st color
    mov ax,0700h
	mov bh,70h
	mov ch,1
	mov cl,1
	mov dh,16
	mov dl,11
	int 10h
;----- 2nd color
    mov ax,0700h
	mov bh,0E0h
	mov ch,1
	mov cl,12
	mov dh,16
	mov dl,22
	int 10h
;----- 3rd color
    mov ax,0700h
	mov bh,0B0h
	mov ch,1
	mov cl,23
	mov dh,16
	mov dl,33
	int 10h
;----- 4th color
    mov ax,0700h
	mov bh,0A0h
	mov ch,1
	mov cl,34
	mov dh,16
	mov dl,44
	int 10h
;----- 5th color
    mov ax,0700h
	mov bh,0D0h
	mov ch,1
	mov cl,45
	mov dh,16
	mov dl,55
	int 10h
;----- 6th color
    mov ax,0700h
	mov bh,40h
	mov ch,1
	mov cl,56
	mov dh,16
	mov dl,66
	int 10h
;----- 7th color
    mov ax,0700h
	mov bh,10h
	mov ch,1
	mov cl,67
	mov dh,16
	mov dl,77
	int 10h

;----- Second Row
;----- 1st color
    mov ax,0700h
	mov bh,10h
	mov ch,17
	mov cl,1
	mov dh,18
	mov dl,11
	int 10h
;----- 2nd color
    mov ax,0700h
	mov bh,00h
	mov ch,17
	mov cl,12
	mov dh,18
	mov dl,22
	int 10h
;----- 3rd color
    mov ax,0700h
	mov bh,0D0h
	mov ch,17
	mov cl,23
	mov dh,18
	mov dl,33
	int 10h
;----- 4th color
    mov ax,0700h
	mov bh,00h
	mov ch,17
	mov cl,34
	mov dh,18
	mov dl,44
	int 10h
;----- 5th color
    mov ax,0700h
	mov bh,0B0h
	mov ch,17
	mov cl,45
	mov dh,18
	mov dl,55
	int 10h
;----- 6th color
    mov ax,0700h
	mov bh,00h
	mov ch,17
	mov cl,56
	mov dh,18
	mov dl,66
	int 10h
;----- 7th color
    mov ax,0700h
	mov bh,0F0h
	mov ch,17
	mov cl,67
	mov dh,18
	mov dl,77
	int 10h

;----- Third Row
;----- 1st color
    mov ax,0700h
	mov bh,10h
	mov ch,19
	mov cl,1
	mov dh,23
	mov dl,14
	int 10h
;----- 2nd color
    mov ax,0700h
	mov bh,0FFh
	mov ch,19
	mov cl,15
	mov dh,23
	mov dl,28
	int 10h
;----- 3rd color
    mov ax,0700h
	mov bh,50h
	mov ch,19
	mov cl,29
	mov dh,23
	mov dl,42
	int 10h
;----- 4th color
    mov ax,0700h
	mov bh,00h
	mov ch,19
	mov cl,43
	mov dh,23
	mov dl,77
	int 10h


    mov ah,01h  ; wait for a key press
    int 21h

    mov ah,4ch
    int 21h

end start