; Andrew Ellington
; CSC323 Program 2
; 9/30/22
; addition


SECTION .data


SECTION .bss


SECTION .text
global _main
_main:

mov AX, 0246h
mov BX, 0DCABh
add AX, BX
mov AX, 0ABCDh
add AX, BX
mov AX, 0FFFFh
mov BX, 0001h
add AX, BX
mov AX, 0F0Fh
mov AX, BX
add AX, BX
mov AX, 2468h
mov AX, BX
add AX, BX
mov AX, 7FFFh
mov BX, 0001h
add AX, BX
mov AX, 0ABCDh
mov BX, 0FEDCh
add AX, BX
mov AX, 0B0Bh
mov BX, 0A11Eh
add AX, BX
mov AX, 7FFFh
mov AX, BX
add AX, BX
mov AX, 8000h
mov AX, BX
add AX, BX






mov eax, 1
mov ebx, 0
int 80h
