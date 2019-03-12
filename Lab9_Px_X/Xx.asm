; Bryan Nonni
; TBD
; Lab 9 Part 1 - Xxxx

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	arrayD DWORD 1,2,3

.code
main proc
	
	mov eax, arrayD
	xchg eax, [arrayD+4]
	xchg eax, [arrayD+8]
	mov arrayD, eax

	invoke ExitProcess,0
main endp
end main