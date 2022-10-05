; Andew Ellington
; Program 2
; 10/5/22
; Array Summing

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ
bArray: DB -1,-2,-3,-4,-5
wArray: DW 0,1,2,3,4
dArray: DD 322,322h,322q,1833,1833h
bArraySum: DB 0
wArraySum: DW 0
dArraySum: DD 0
grandTotal: DD 0


SECTION .bss
; define uninitialized data here

SECTION .text
global _main
_main:

mov ah, [bArray]
add ah, [bArray+1]
add ah, [bArray+2]
add ah, [bArray+3]
add ah, [bArray+4]
mov [bArraySum], ah

mov ax, [wArray]
add ax, [wArray+2]
add ax, [wArray+4]
add ax, [wArray+6]
add ax, [wArray+8]
mov [wArraySum], ax

mov eax, [dArray]
add eax, [dArray+4]
add eax, [dArray+8]
add eax, [dArray+12]
add eax, [dArray+16]
mov [dArraySum], eax

add [grandTotal], eax

movsx ebx, byte[bArraySum]

add [grandTotal], ebx

movsx ecx, word[wArraySum]

add [grandTotal], ecx

lastBreak:
; put your code here.



; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
