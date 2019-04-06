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
.code
main proc

mov ecx, 0 ; clear eax register
mov eax, 0 ; clear eax register
mov ecx, 5 ; move outer loop counter (i) to ecx
mov edx, ecx ; move i to edx for storage
mov esi, OFFSET y ; move address of y to esi
mov ecx, 3 ; move inner loop counter to ecx

L1:					; L1 label - outer loop
	cmp edx, 0		; compare edx counter (i - outer loop counter) to 0
	je L4			; jump to L4 (end) if edx (i) = 0
L2:					; L2 label - inner loop
	add eax, edx	; add edx (i - outer loop counter) to eax
	add eax, ecx	; add ecx (j - inner loop counter) to eax, line 35 & 36 => y=i+j
	mov [esi], eax	; place the value into the y list
	inc esi			; move esi down the list 1 place
	mov eax, 0		; move 0 to eax to clear register
	cmp ecx, 0		; compare ecx with 0
	je L3			; jump to L3 is ecx = 0 to reload ecx (j - inner loop counter) with 3 repetitions
	loop L2			; loop back to L2, decrement ecx
L3:					; L3 label - helper loop to decrement edx (i - outer loop counter) and reset ecx (j - inner loop counter)
	mov ecx, 3		; reset ecx (j - inner loop counter), to 3 after each iteration of inner loop
	dec edx			; decrement edx (i - outer loop counter) once inner loop completes its repetitions
	jmp L1			; jump back to L1
L4:
	invoke ExitProcess,0

main endp
end main