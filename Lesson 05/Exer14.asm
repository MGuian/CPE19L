.model small
.stack
.data
	time  DB '13:26','$'
    greet DB 'Hello Guian','$'
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

;----- Body
    mov ax,0700h
	mov bh,70h
	mov ch,5
	mov cl,25
	mov dh,23
	mov dl,49
	int 10h

;----- Signal/Antenna
    mov ax,0700h
	mov bh,70h
	mov ch,1
	mov cl,26
	mov dh,4
	mov dl,28
	int 10h

;----- LCD
    mov ax,0700h
	mov bh,20h
	mov ch,7
	mov cl,29
	mov dh,12
	mov dl,45
	int 10h

;----- Buttons
;----- 1st row
    mov ax,0700h
	mov bh,0F0h
	mov ch,15
	mov cl,29
	mov dh,16
	mov dl,33
	int 10h

    mov ax,0700h
	mov bh,0F0h
	mov ch,15
	mov cl,35
	mov dh,16
	mov dl,39
	int 10h

    mov ax,0700h
	mov bh,0F0h
	mov ch,15
	mov cl,41
	mov dh,16
	mov dl,45
	int 10h

;----- 2nd row
    mov ax,0700h
	mov bh,0F0h
	mov ch,18
	mov cl,29
	mov dh,19
	mov dl,33
	int 10h

    mov ax,0700h
	mov bh,0F0h
	mov ch,18
	mov cl,35
	mov dh,19
	mov dl,39
	int 10h

    mov ax,0700h
	mov bh,0F0h
	mov ch,18
	mov cl,41
	mov dh,19
	mov dl,45
	int 10h

;----- 3rd row
    mov ax,0700h
	mov bh,0F0h
	mov ch,21
	mov cl,29
	mov dh,22
	mov dl,33
	int 10h

    mov ax,0700h
	mov bh,0F0h
	mov ch,21
	mov cl,35
	mov dh,22
	mov dl,39
	int 10h

    mov ax,0700h
	mov bh,0F0h
	mov ch,21
	mov cl,41
	mov dh,22
	mov dl,45
	int 10h

	
;----- LCD Text
;----- Time
    mov ah,02h
	mov bh,00h
	mov dh,8
	mov dl,35
	int 10h
    mov ah,09h
    mov dx,offset time
    int 21h

;----- Greeting
    mov ah,02h
	mov bh,00h
	mov dh,10
	mov dl,32
	int 10h
    mov ah,09h
    mov dx,offset greet
    int 21h

    mov ah,01h  ; wait for a key press
    int 21h

    mov ah,4ch
    int 21h

end start