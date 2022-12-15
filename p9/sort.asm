; Andrew Ellington
; Program 9
; 12/14/22
; Sort alrogithm

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ
nums:	dw	 200, 300, 0, 65535, 0, 1, 65534, 300, 100
numslen:	EQU	($-nums)


SECTION .bss
; define uninitialized data here

SECTION .text
global _main
_main:
CALL sort
; put your code here.


sort:
    mov ecx, numslen -1
    mov ax,[nums]
    mov bx, 0
    bubblesort:
    mov dx, [nums+bx+2]
    mov ax, [nums+bx]
    cmp ax,bx
    jl swap
    swap:
    xchg [nums+bx],dx
    xchg [nums+bx+2],ax
    jmp skip
    skip:
    add ebx,2
    loop bubblesort
    
    
    
    
    
    ret
lastBreak:
; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
