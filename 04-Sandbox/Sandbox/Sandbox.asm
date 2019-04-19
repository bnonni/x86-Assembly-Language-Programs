; Bryan's ASM Sandbox
;OV: Overflow
;UP: Direction
;EI: Interrupt
;PL: Sign
;ZR: Zero
;AC: Auxiliary carry
;PE: Parity
;CY: Carry

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
		jle over
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

	over:
		mov ecx, X

	invoke ExitProcess,0
main endp
end main