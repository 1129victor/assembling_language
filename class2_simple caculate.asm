TITLE ASM_practice_003	(p03.asm)

INCLUDE Irvine32.inc

main          EQU start@0

.data
Val1 SBYTE 03h	; 3
Val2 SBYTE 02h	; 2
Val3 SBYTE 8fh	; -113
Rval SDWORD ?

.code
main PROC		;to calculate   Rval = -(Val3 – 14 * (Val1 ＋ Val2))
	movsx eax, Val1
	movsx ebx, Val2
	movsx ecx, Val3
	
	add eax, ebx		;ax = ax + bx, Val1 ＋ Val2
	imul eax, 0eh	;ax = ax * 14, (Val1 ＋ Val2) *14
	sub ecx, eax		;cx = cx - ax, (Val3 – 14 * (Val1 ＋ Val2))
	neg ecx			; cx = -cx,  -(Val3 – 14 * (Val1 ＋ Val2))
	
	mov Rval, ecx	; Rval = cx, Rval = -(Val3 – 14 * (Val1 ＋ Val2))
	
	;enter your code here
	exit
main ENDP
END main
