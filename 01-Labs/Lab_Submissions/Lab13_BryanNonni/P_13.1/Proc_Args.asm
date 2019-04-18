; Bryan Nonni
; CSC 3210 - TR 345, LAB W 900; 
; Date: 04/17/2019
; Description: Write and run the following program and verify 
; Lab 13 Program 1 - Proc Args

; **Answer** = +1494

Include Irvine32.inc	; Irvine32 Library

.386
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main PROC
	mov ebx,1431
	mov ecx,63

	call AddTwo
	call WriteInt
	call Crlf ; ** ANSWER: value in command prompt window =  +1494 **

	invoke ExitProcess,0
main endp

AddTwo proc
	mov eax, 0
	add eax, ebx
	add eax, ecx
	ret
AddTwo endp
end main