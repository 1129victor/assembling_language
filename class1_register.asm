TITLE Example of ASM                (asmExample.ASM)

; This program locates the cursor and displays the
; system time. It uses two Win32 API structures.
; Last update: 6/30/2005

INCLUDE Irvine32.inc

; Redefine external symbols for convenience
; Redifinition is necessary for using stdcall in .model directive 
; using "start" is because for linking to WinDbg.  added by Huang
 
main          EQU start@0

.data
	;some data

.code
main PROC
	mov al, 10b		;last two digits of leader’s students ID in binary	104502202
	mov ah, 3d		;last two digits of member’s students ID in decimal	104502203
	mov ax, 89ah	;last four digits of student’s ID in hexadecimal	104502202
	mov dx, 0eaaah	;let the value of dx is eeea
	sub dx, ax		;value of dx subtracting by ax
	;code detail
	
	exit
main ENDP
END main