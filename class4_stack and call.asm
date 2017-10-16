TITLE ASM_practice_004	(p03.asm)

INCLUDE Irvine32.inc

.data
myID byte "104502202"	         ;Student ID of leader
size_ID = LENGTHOF myID		     ;size_ID is the length of myID
myID2 byte "104502203"	     	 ;Student ID of member
size_ID2 = LENGTHOF myID2  	     ;size_ID2 is the length of myID2

.code
Convert PROC USES ax			 ;Convert change myID value 0-A 1-B and so on.

	L1:
		
		mov al, [esi]			 ;let the value which esi point at move to al
		add al, 11h				 ;let al add 11h to turn it to A~Z
		mov [esi], al			 ;let al pass the value to which esi point at
		inc esi					 ;let esi point at next address

		loop L1
	ret
Convert ENDP

Convert2 PROC					; Convert2 do the same thing as Convert
	push ax						;push ax into stack
	L1:
		
		mov al, [esi]		 	;let the value which esi point at move to al
		add al, 11h				;let al add 11h to turn it to A~Z
		mov [esi], al			;let al pass the value to which esi point at
		inc esi					;let esi point at next address

		loop L1
		
	pop ax						;let ax return to original number
	
	ret
Convert2 ENDP

start@0 PROC
	mov eax, 9999h         ; The value of eax cannot be changed
	mov ebx, 9999h         ; The value of ebx cannot be changed
	mov edx, 9999h         ; The value of edx cannot be changed
	mov esi, OFFSET myID	
	mov ecx, size_ID
	call Convert
	mov esi, OFFSET myID2
	mov ecx, size_ID2
	call Convert2
	
	exit
start@0 ENDP
END start@0
