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
val1 BYTE 4
counter BYTE 0

.code
main proc
	mov eax,0
	mov ebx,0
	mov bl,6
target: 
	add bl,val1
	inc counter
	jmp target
	invoke ExitProcess,0
main endp
end main