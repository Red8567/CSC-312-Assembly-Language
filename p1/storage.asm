; Andrew Ellington
; Program 1
; 9/22/2022
; I have a procrastination problem 

SECTION .data
a1 DW 2,4,6,8,10
b1 DB 1,2,3,4,5
c1 DD 10,20,30,40
d1 DQ 10h,11h,12h,13h

a2 DW -50
b2 DB -45
c2 DW -30
d2 DB -25
e2 DW -20

a3 DB 100
b3 DW 100h
c3 DD 100b
d3 DW 100q
e3 DB 100d

SECTION .bss

SECTION .text
global _main
_main

mov eax, 1
mov ebx, 0
int 80h
