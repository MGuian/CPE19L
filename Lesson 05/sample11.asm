.model small
.stack
.data
    var1 DB 'PROUD TO BE A', 13,10,'$'
    var2 DB 'FILIPINO ENGINEER' , 13,10,'$'
.code
start:
	
	;< ---- Displaying the 1st Layer Color Background GREEN ---- >
	mov ah,07h	; Scroll up text Lines
	mov bh,20h 	; Background setting to Color Green
	mov ch,0	; starting row of background Green (starting X coordinate)
	mov cl, 0 	; starting column of background Green  (starting Y coordinate)
	mov dh, 24	; end row of background Green (end X coordinate)
	mov dl, 79	; end column of background Green (end Y coordinate)
	int 10h 	; video function call to display the video information

	;< ---- Displaying the 2nd Layer Color Background RED ---- >
	mov ah,07h	; Scroll up text Lines
	mov bh,40h 	; Background setting to Color Red
	mov ch,3	; starting row of background Red (starting X coordinate)
	mov cl, 3 	; starting column of background Red  (starting Y coordinate)
	mov dh, 21	; end row of background Red (end X coordinate)
	mov dl, 76	; end column of background Red (end Y coordinate)
	int 10h 	; video function call to display the video information

	; <---- Displaying the 3rd  Layer Color Background YELLOW ---
	mov ah,07h	; Scroll up text Lines
	mov bh, 60h ; Background setting to Color Yellow
	mov ch,7	; starting row of foreground Yellow (starting X coordinate)
	mov cl, 7 	; starting column of foreground Yellow (starting Y coordinate)
	mov dh, 17	; end row of foreground Yellow (end X coordinate)
	mov dl, 72	; end column of foreground Yellow (end Y coordinate)
	int 10h 	; video function call to display the video information

	;< ---- Initialize the data segment  by placing its address at the DS register--- >
    mov ax,@data					
	mov ds,ax

    ;< ---- setting cursor position to coordinates 8,8 --- >
	mov ah,02h
	mov bh,00
	mov dh,8 	; Cursors Y coordinate (Column)
	mov dl, 8	; Cursors X coordinate (Row)
	int 10h

	; <-- - Printing of the first set of character string at 8,8 position --- >
	mov ah,09h
	mov dx,offset var1
	int 21h

	; <---- setting cursor position to coordinates  9, 8 --- >
	mov ah,02h
	mov bh,00
	mov dh,9 	; Cursors Y coordinate (Column)
	mov dl, 8	; Cursors X coordinate (Row)
	int 10h

	; <--- Printing of the second set of character string at 9, 8 position ---- >
	mov ah,09h
	mov dx,offset var2
	int 21h

	mov ah,4ch
	int 21h

end start