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
ExitProcess proto, dwExitCode:dword

.data 
	A SWORD 9 ; Declare vars
	B SWORD 8
	X SWORD 11

.code
main proc
	mov ax, A ; move A & B to 16-bit registers
	mov bx, B

while_loop:				; Initiate while loop
	cmp X, 0			; Compare X to 0 - end while loop condition
	jle end_while		; Jump to end_while if X <= 0
	cmp X, 3			; Compare X to 3 - first if statement condition
	je else_condition	; Jump to else_condition if X = 3
	cmp X, ax			; Compare X to ax = A = 9 - second if statment condition, first or condition
	jle or_condition	; Jump to or_condition if X <= ax
	sub X, 2			; Otherwise, subtract 2 from X
	jmp while_loop		; Jump back to start of while loop

or_condition:			; Label for second or condition of if statment
	cmp X, bx			; Compare X to bx
	jge else_condition	; Jump to else_condition if X >= bx
	sub X, 2			; Otherwise, subtract 2 from X
	jmp while_loop		; Jump back to start of while loop

else_condition:			; Label for else condition
	dec X				; Decrement X by 1
	jmp while_loop		; Jump back to start of while loop

end_while:				; Label for end of while loop

	invoke ExitProcess,0
main endp
end main