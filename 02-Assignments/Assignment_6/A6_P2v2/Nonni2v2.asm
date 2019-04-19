; Student: Bryan Nonni
; Class: CSC3210
; Assignment#: 6-2
; Description: Write an assembly program to implement the following.
; while X > 0
; if X != 3 AND (X > A OR X < B)
;	 X = X – 2
; else
;	X = X – 1
; end while
; Use short-circuit evaluation
; Assume that A, B, and X are 16-bit signed integers variables
; Assume that A=9, B=8, and X=11

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data 
	A SWORD 9
	B SWORD 8
	X SWORD 11

.code
main proc
	mov ax, A
	mov bx, B
while:
	cmp X, 0
	jle endWhile
	cmp X, 3
	je else
	cmp X, ax
	jle or
	sub X, 2
	jmp while
or:
	cmp X, bx
	jge else
	sub X, 2
	jmp while

else:
	dec X
	jmp while

endWhile:
	mov ecx, X
	invoke ExitProcess,0
main endp
end main