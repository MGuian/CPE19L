.model small
.stack
.code

start:
    mov ah, 02h

    ; Prints Name: Guian Jaundell R. Manalo
    mov dl, 4eh
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 6dh
    int 21h
    mov dl, 65h
    int 21h
    mov dl, 3ah
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 47h
    int 21h
    mov dl, 75h
    int 21h
    mov dl, 69h
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 6eh
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 4ah
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 75h
    int 21h
    mov dl, 6eh
    int 21h
    mov dl, 64h
    int 21h
    mov dl, 65h
    int 21h
    mov dl, 6ch
    int 21h
    mov dl, 6ch
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 52h
    int 21h
    mov dl, 2eh
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 4dh
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 6eh
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 6ch
    int 21h
    mov dl, 6fh
    int 21h

    ; New Line
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    ; Prints Birth Date: December 22, 2004
    mov dl, 42h
    int 21h
    mov dl, 69h
    int 21h
    mov dl, 72h
    int 21h
    mov dl, 74h
    int 21h
    mov dl, 68h
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 44h
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 74h
    int 21h
    mov dl, 65h
    int 21h
    mov dl, 3ah
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 44h
    int 21h
    mov dl, 65h 
    int 21h
    mov dl, 63h
    int 21h
    mov dl, 65h 
    int 21h
    mov dl, 6dh
    int 21h
    mov dl, 62h
    int 21h
    mov dl, 65h
    int 21h
    mov dl, 72h
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 32h
    int 21h
    mov dl, 32h
    int 21h
    mov dl, 2ch
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 32h
    int 21h
    mov dl, 30h
    int 21h
    mov dl, 30h
    int 21h
    mov dl, 34h
    int 21h

    ; New Line
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    ; Prints e-mail address: 2321171@ub.edu.ph
    mov dl, 65h 
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 6dh
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 69h
    int 21h
    mov dl, 6ch
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 61h
    int 21h
    mov dl, 64h
    int 21h
    mov dl, 64h
    int 21h
    mov dl, 72h
    int 21h
    mov dl, 65h
    int 21h
    mov dl, 73h
    int 21h
    mov dl, 73h
    int 21h
    mov dl, 3ah
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 32h
    int 21h
    mov dl, 33h
    int 21h
    mov dl, 32h
    int 21h
    mov dl, 31h
    int 21h
    mov dl, 31h
    int 21h
    mov dl, 37h
    int 21h
    mov dl, 31h
    int 21h
    mov dl, 40h
    int 21h
    mov dl, 75h
    int 21h
    mov dl, 62h
    int 21h
    mov dl, 2eh
    int 21h
    mov dl, 65h 
    int 21h
    mov dl, 64h
    int 21h
    mov dl, 75h
    int 21h
    mov dl, 2eh
    int 21h
    mov dl, 70h
    int 21h
    mov dl, 68h
    int 21h

    ; New Line
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    ; Prints Address: Mabini, Lipa City
    mov dl, 41h
    int 21h
    mov dl, 64h
    int 21h
    mov dl, 64h
    int 21h
    mov dl, 72h
    int 21h
    mov dl, 65h
    int 21h
    mov dl, 73h
    int 21h
    mov dl, 73h
    int 21h
    mov dl, 3ah
    int 21h

    mov dl, 20h 
    int 21h

    mov dl, 4dh
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 62h
    int 21h
    mov dl, 69h
    int 21h
    mov dl, 6eh
    int 21h
    mov dl, 69h
    int 21h
    mov dl, 2ch
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 4ch
    int 21h
    mov dl, 69h
    int 21h
    mov dl, 70h
    int 21h
    mov dl, 61h
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 43h
    int 21h
    mov dl, 69h
    int 21h
    mov dl, 74h
    int 21h
    mov dl, 79h
    int 21h

    ; New Line
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    ; Prints Province: Batangas
    mov dl, 50h
    int 21h
    mov dl, 72h
    int 21h
    mov dl, 6fh
    int 21h
    mov dl, 76h
    int 21h
    mov dl, 69h
    int 21h
    mov dl, 6eh
    int 21h
    mov dl, 63h
    int 21h
    mov dl, 65h
    int 21h
    mov dl, 3ah
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 42h
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 74h
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 6eh
    int 21h
    mov dl, 67h
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 73h
    int 21h

    ; New Line
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    
    ; Prints Contact Number: 09458549482
    mov dl, 43h
    int 21h
    mov dl, 6fh
    int 21h
    mov dl, 6eh
    int 21h
    mov dl, 74h
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 63h
    int 21h
    mov dl, 74h
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 4eh
    int 21h
    mov dl, 75h
    int 21h
    mov dl, 6dh
    int 21h
    mov dl, 62h
    int 21h
    mov dl, 65h
    int 21h
    mov dl, 72h
    int 21h
    mov dl, 3ah
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 30h
    int 21h
    mov dl, 39h
    int 21h
    mov dl, 34h
    int 21h
    mov dl, 35h
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 38h
    int 21h
    mov dl, 35h
    int 21h
    mov dl, 34h
    int 21h
    mov dl, 2dh
    int 21h
    mov dl, 39h
    int 21h
    mov dl, 34h
    int 21h
    mov dl, 38h
    int 21h
    mov dl, 32h
    int 21h

    ; New Line
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    
    ; Prints Guardian's Name: Julita O. Manalo
    mov dl, 47h
    int 21h
    mov dl, 75h
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 72h
    int 21h
    mov dl, 64h
    int 21h
    mov dl, 69h
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 6eh
    int 21h
    mov dl, 27h
    int 21h
    mov dl, 73h
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 4eh
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 6dh
    int 21h
    mov dl, 65h
    int 21h
    mov dl, 3ah
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 4ah
    int 21h
    mov dl, 75h
    int 21h
    mov dl, 6ch
    int 21h
    mov dl, 69h
    int 21h
    mov dl, 74h
    int 21h
    mov dl, 61h
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 4fh
    int 21h
    mov dl, 2eh
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 4dh
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 6eh
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 6ch
    int 21h
    mov dl, 6fh
    int 21h

    ; New Line
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    ; Prints Occupation: Vendor
    mov dl, 4fh
    int 21h
    mov dl, 63h
    int 21h
    mov dl, 63h
    int 21h
    mov dl, 75h
    int 21h
    mov dl, 70h
    int 21h
    mov dl, 61h
    int 21h
    mov dl, 74h
    int 21h
    mov dl, 69h
    int 21h
    mov dl, 6fh
    int 21h
    mov dl, 6eh
    int 21h
    mov dl, 3ah
    int 21h

    mov dl, 20h
    int 21h

    mov dl, 56h
    int 21h
    mov dl, 65h
    int 21h
    mov dl, 6eh
    int 21h
    mov dl, 64h
    int 21h
    mov dl, 6fh
    int 21h
    mov dl, 72h
    int 21h

    mov ah, 4ch
    int 21h

end start