TITLE ASM_practice_003	(p03.asm)

INCLUDE Irvine32.inc

main          EQU start@0

.data
MyId   WORD ?
Digit0 BYTE 2h
Digit1 BYTE 2h
Digit2 BYTE 0h
Digit3 BYTE 2h

.code
main PROC		
	mov ah, Digit0	;ax = 0200
	mov bh, Digit1	;bx = 0200
	mov al, Digit2	;ax = 0200
	mov bl, Digit3	;bx = 0202
	
	imul ax, 10h	;ax left shift with one bit	ax = 2000
	
	add ax, bx		;ax add bx		ax = 2202	
	
	mov MyId, ax	;assign MyId to ax		MyId = 2202
	
	
	;enter your code here
	exit
main ENDP
END main
