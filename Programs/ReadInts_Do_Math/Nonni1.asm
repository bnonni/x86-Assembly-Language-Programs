; Student: Bryan Nonni
; Class: CSC3210 - TR 1545
; Assignment#: 7 - Program 1												
; Description: This program implements the mathmatical expression val1 = (val3 – val2) * (val4 / val3) - (val2 * 2)

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

Include Irvine32.inc

.data
val1 SDWORD 0
val2 SDWORD 0
val3 SDWORD 0
val4 SDWORD 0
prompt BYTE "Enter Signed Integer: ", 0

.code
main proc
	mov eax, 0					; Clear eax
	mov ebx, 0					; Clear ebx
	mov ecx, 0					; Clear ecx
	mov edx, 0					; Clear edx
	mov esi, OFFSET val2		; Move address of val2 to esi
	mov ecx, 3					; Move 3 to ecx for loop counter
 
 readIntegers:
	call Clrscr					; Clear screen
	mov edx, offset prompt	; Move prompt to edx to be displayed
	call Writestring			; Display prompt
	call Readint				; Read int to eax
	mov [esi], eax				; mov eax value to [esi]
	add esi, TYPE DWORD			; Increment esi to next val
    loop readIntegers			; Loop back to beginning

	mov edx, 0					; Clear address of prompt
	mov eax, val4				; Move val4 to eax
	idiv val3					; Signed divide eax by val3
	mov ebx, eax				; Move eax to ebx for later use
	mov eax, val3				; Move val3 to eax
	sub eax, val2				; Subtract val2 from eax
	imul ebx					; Signed multiply eax by ebx
	mov ecx, eax				; Move eax to ecx
	mov eax, 2					; Move 2 to eax
	imul val2					; Signed multiply eax by val2
	sub ecx, eax				; Subtract eax from ecx
	mov val1, ecx				; Move ecx to val1

 exit
main endp
end main 