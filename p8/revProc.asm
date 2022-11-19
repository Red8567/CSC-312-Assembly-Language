; Andrew Ellington
; Program 8
; 11/18/22
; Reversing array

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ
array1: dd      1,2,3,4,5
len1:   EQU     ($-array1)
array2: dd      -10, -9,-8,-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9
len2:   EQU     ($-array2)


array3: dd  0,10,20,30,40,50,60,70,80,90
  dd  100,110,120,130,140,150,160,170,180,190
  dd  200,210,220,230,240,250,260,270,280,290
  dd  300,310,320,330,340,350,360,370,380,390
  dd  400,410,420,430,440,450,460,470,480,490,500
len3:   EQU     ($-array3)

SECTION .bss
; define uninitialized data here


SECTION .text
global _main
_main:

mov eax, array1
mov ecx, len1

call rev

mov eax, array2
mov ecx, len2

call rev

mov eax, array3
mov ecx, len3

call rev

rev:

pushon:
push dword [eax]
add eax, 4

loop pushon

popoff:
pop dword [eax]
add eax, 4

loop popoff

ret







lastBreak:
; put your code here.



; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
