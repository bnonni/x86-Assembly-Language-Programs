; Bryan Nonni
; CSC 3210 - TR 345; Date: 04/10/2019
; Description: Write and run a program to find the values of aName
; Lab 12 Program 2 - Stack

; ANSWER:
; HEX: 0000006c,0000006e,00000063,0000006f,00000069,0000006e,00000020,0000004c,00000061,0000006d,00000061,00000068,00000062,00000072,00000076  
; aNAME: n...l...o...c...n...i...L... ...m...a...h...a...r...b...A

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
aName BYTE "Abraham Lincoln", 0
nameSize = ($ - aName) - 1

.code
main PROC
; Push the name on  the stack.
	mov ecx, nameSize
	mov esi, 0
L1:
	movzx eax, aName[esi]
	push eax
	inc esi
	loop L1
; Pop the name from the stack, in reverse, and store in the aName array
	mov ecx, nameSize
	mov esi, 0
L2:
	pop eax
	mov aName[esi], al
	inc esi
	loop L2

	invoke ExitProcess,0
main endp
end main