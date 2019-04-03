; Bryan Nonni
; CSC 3210 - TR 345; Date: 04/03/2019
; Description: Write and run a program to execute a while loop
; Lab 11 Program 1 - Control Statements

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
sum DWORD 0
sample DWORD 50
array DWORD 10,60,20,33,72,89,45,65,72,18
ArraySize = ($ - array) / TYPE array

.code
main PROC
	mov eax, 0
	mov edx, sample
	mov esi, 0
	mov ecx, ArraySize
L1: cmp esi, ecx
	jl L2
	jmp L5
L2: cmp array[esi*4],edx
	jg L3
	jmp L4
L3: add eax, array[esi*4]
L4: inc esi
	jmp L1
L5: mov sum, eax ; sum = 00000166h 

	invoke ExitProcess,0
main endp
end main