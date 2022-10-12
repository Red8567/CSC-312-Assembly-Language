; Andrew Ellington
; Program 4
; 10/12/22
; Fibonachi sequence

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ

SECTION .bss
; define uninitialized data here
Fibs: RESW 16

SECTION .text
global _main
_main:

mov ebx, 0
mov [Fibs], ebx
mov ebx, 1
mov [Fibs+2],ebx
mov ebx, 0
add ebx, [Fibs]
add ebx, [Fibs+2]
mov [Fibs+4],ebx
mov ebx, [Fibs+2]
add ebx, [Fibs+4]
mov [Fibs+6],ebx
add ebx,[Fibs+4]
mov [Fibs+8],ebx
add ebx, [Fibs+6]
mov ebx, [Fibs+10]
add ebx, [Fibs+8]
mov [Fibs+12],ebx
add ebx, [Fibs+10]
mov [Fibs+14], ebx
add ebx, [Fibs+12]
mov [Fibs+16], ebx
add ebx, [Fibs+14]
mov [Fibs+18],ebx
add ebx,[Fibs+16]
mov [Fibs+20], ebx
add ebx,[Fibs+18]
mov [Fibs+22], ebx
add ebx,[Fibs+20]
mov [Fibs+24], ebx
add ebx, [Fibs+22]
mov [Fibs+26], ebx
add ebx, [Fibs+24]
mov [Fibs+28],ebx
add ebx,[Fibs+26]
mov [Fibs+30],ebx

lastBreak:
; put your code here.



; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
