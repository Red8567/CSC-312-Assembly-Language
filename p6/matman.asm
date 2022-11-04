; Andrew Ellington
; Program 6
; 10/31/22
; Multi dimensional matrix adding

ROWS: EQU 3
COLS: EQU 2

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ
MyMatrix:  dw 1, 2
	   dw 4, -2
 	   dw -10, 8
Yes dw 2

SECTION .bss
; define uninitialized data here
RowSums: RESW ROWS 
ColSums: RESW COLS
Sum: RESW 1


SECTION .text
global _main
_main:

; put your code here.
mov ax, ROWS
mov dx, COLS
mul dx
mov bx, 0
mov cx, 0
sub esi,esi

;logic for summing rows
topR:
add cx, [MyMatrix+esi]
add esi,2
inc bx
cmp bx,ax
jl topR

mov [RowSums], cx
mov [Sum], cx
;reset counters and index
xor esi, esi
xor bx,bx
mov dx, 0


;logic for summing colums
topC:
add cx, [MyMatrix+esi]
add esi, [COLS]
inc dx
inc bx
cmp dx,3
je deCount
midC:
cmp bx, ax
jl topC

deCount:
xor dx,dx
xor esi,esi
add esi, Yes
mov dx, 1
add [Yes], dx
xor dx, dx
jmp midC

mov [ColSums], cx




lastBreak:
; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
