.model small
.stack
.data
    ;----- Screen texts
    ttl  db 'PAPER, ROCK, SCISSORS GAME','$'
    hint db 'Enter P = Paper, R = Rock, S = Scissors','$'
    pl1  db 'Player 1:','$'
    pl2  db 'Player 2:','$'
    star db '*','$'
    ask  db 'Play again? (Y/N):','$'

    ;----- Result texts (padded to 30 characters so they are centered at column 25)
    w1   db '        Player 1 wins!        ','$'
    w2   db '        Player 2 wins!        ','$'
    wt   db '             Draw!            ','$'
    r1   db '      Paper covers Rock!      ','$'
    r2   db '    Rock crushes Scissors!    ','$'
    r3   db '     Scissors cut Paper!      ','$'
    rt   db ' Both players chose the same! ','$'

    ;----- Players' choices
    p1   db ?
    p2   db ?

.code

start:
    mov ax,@data
    mov ds,ax

play:
    call draw                ; draw the game screen

;** Player 1 input (no echo) **
    mov dx,091Eh             ; row 9, column 30
    call read_player
    mov p1,al

;** Player 2 input (no echo) **
    mov dx,0938h             ; row 9, column 56
    call read_player
    mov p2,al

;** Decide the winner **
    mov al,p1
    cmp al,p2
    jne notie
    jmp tie
notie:
    cmp al,'P'
    je p1paper
    cmp al,'R'
    je p1rock

;-- Player 1 chose Scissors
    cmp p2,'P'
    je p1wins_sp             ; Scissors cut Paper
    jmp p2wins_rs            ; Rock crushes Scissors

p1paper:
    cmp p2,'R'
    je p1wins_pr             ; Paper covers Rock
    jmp p2wins_sp            ; Scissors cut Paper

p1rock:
    cmp p2,'S'
    je p1wins_rs             ; Rock crushes Scissors
    jmp p2wins_pr            ; Paper covers Rock

;** Outcomes: SI = reason text, DI = winner text **
p1wins_pr:
    mov di,offset w1
    mov si,offset r1
    jmp show
p1wins_rs:
    mov di,offset w1
    mov si,offset r2
    jmp show
p1wins_sp:
    mov di,offset w1
    mov si,offset r3
    jmp show
p2wins_pr:
    mov di,offset w2
    mov si,offset r1
    jmp show
p2wins_rs:
    mov di,offset w2
    mov si,offset r2
    jmp show
p2wins_sp:
    mov di,offset w2
    mov si,offset r3
    jmp show
tie:
    mov di,offset wt
    mov si,offset rt

;** Display the result **
show:
    mov ah,02h
    mov bh,00h
    mov dx,0D19h             ; row 13, column 25
    int 10h
    mov ah,09h
    mov dx,di
    int 21h

    mov ah,02h
    mov bh,00h
    mov dx,0F19h             ; row 15, column 25
    int 10h
    mov ah,09h
    mov dx,si
    int 21h

;** Ask if the players want to play again **
    mov ah,02h
    mov bh,00h
    mov dx,131Fh             ; row 19, column 31
    int 10h
    mov ah,09h
    mov dx,offset ask
    int 21h

oncemore:
    mov ah,01h               ; read the key (with echo)
    int 21h
    cmp al,'Y'
    je again
    cmp al,'y'
    je again
    cmp al,'N'
    je quit
    cmp al,'n'
    je quit
    jmp oncemore             ; any other key, ask again

again:
    jmp play

quit:
    mov ah,02h
    mov bh,00h
    mov dx,1700h             ; row 23, column 0
    int 10h

    mov ah,4ch
    int 21h

;==========================================================
; read_player : DX = cursor position (row,column)
;               returns AL = P, R or S (uppercase)
;               the key is read with function 07h (no echo)
;               and a '*' is displayed instead
;==========================================================
read_player:
    mov ah,02h
    mov bh,00h
    int 10h                  ; position the cursor
    call get_key
    push ax
    mov ah,09h
    mov dx,offset star
    int 21h
    pop ax
    ret

;==========================================================
; get_key : waits for P, R or S (upper or lowercase)
;           returns AL = uppercase letter
;==========================================================
get_key:
getagain:
    mov ah,07h               ; read a key, no echo
    int 21h
    cmp al,'a'
    jb check                 ; below 'a' - not lowercase
    cmp al,'z'
    ja check                 ; above 'z' - not lowercase
    sub al,20h               ; convert lowercase to uppercase
check:
    cmp al,'P'
    je valid
    cmp al,'R'
    je valid
    cmp al,'S'
    je valid
    jmp getagain             ; invalid key, wait again
valid:
    ret

;==========================================================
; draw : clears the screen and draws the game screen
;==========================================================
draw:
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

;** title **
    mov ah,02h
    mov bh,00h
    mov dx,041Bh             ; row 4, column 27
    int 10h
    mov ah,09h
    mov dx,offset ttl
    int 21h

;** hint **
    mov ah,02h
    mov bh,00h
    mov dx,0614h             ; row 6, column 20
    int 10h
    mov ah,09h
    mov dx,offset hint
    int 21h

;** Player 1 label **
    mov ah,02h
    mov bh,00h
    mov dx,0914h             ; row 9, column 20
    int 10h
    mov ah,09h
    mov dx,offset pl1
    int 21h

;** Player 2 label **
    mov ah,02h
    mov bh,00h
    mov dx,092Eh             ; row 9, column 46
    int 10h
    mov ah,09h
    mov dx,offset pl2
    int 21h
    ret

end start