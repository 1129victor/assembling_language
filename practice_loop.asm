TITLE ASM_practice_003	(p03.asm)

INCLUDE Irvine32.inc

.data
ninenine byte 9 DUP(?)
.code
main      EQU start@0
main PROC
	mov cx, 9h
	mov esi, OFFSET ninenine
	L:
	
		
		mov ebx, 9h
		mov ax, cx
		sub ax, 10d
		neg ax
		mul bx
		mov bx, ax
		mov [esi], ebx
		inc esi
		
	loop L
	 main ENDP
END main

