; Bryan Nonni
; Using the movzx & movsx operands
; Lab 7 Part 3 - Offet

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	arrayD DWORD 10000h,20000h, 30000


.code
main proc

; Direct-Offset Addressing (doubleword array)	

	mov eax,arrayD ; EAX = 00010000
	mov ebx,[arrayD+4] ; EBX = 00020000
	mov edx,[arrayD+8] ; EDX = 00007530
	mov ecx,[arrayD+4] ; CX = 0000
	mov edx,[arrayD+3] ; DL = 00

	invoke ExitProcess,0
main endp
end main