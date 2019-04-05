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
	y DWORD 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	count DWORD 0
.code
main proc

mov ecx, 0
mov eax, 0
mov ecx, 5
mov count, ecx ; count = i = 5
mov esi, OFFSET y
mov ecx, 3 ; ecx = 3, new counter

L1:
	cmp count, 0
	je L4
L2:
	add eax, count
	add eax, ecx
	mov [esi], eax
	inc esi
	mov eax, 0
	loop L2
L3:
	mov ecx, 3
	dec count
	loop L1
L4:
	invoke ExitProcess,0

main endp
end main