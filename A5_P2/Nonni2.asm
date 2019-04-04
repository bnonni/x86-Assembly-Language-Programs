; Student: Bryan Nonni
; Class: CSC3210
; Assignment#: 5-2
; Description: Implement the following expression in assembly language:
; for (i = 5; i > 0; i--)
; {
; for(j = 3; j > 0; j--)
; {
; y = i + j ;
; }
; }
; Assume i and j are 32-bit registers and y is a list
  
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data 
	y DWORD ?
	count BYTE ?

.code
main proc

mov ecx, 5
mov eax, ecx

L1:
	mov ecx, 3
L2: 
	add eax, ecx
	mov y, eax
	loop L2
	mov 
loop L1



	invoke ExitProcess,0

main endp
end main