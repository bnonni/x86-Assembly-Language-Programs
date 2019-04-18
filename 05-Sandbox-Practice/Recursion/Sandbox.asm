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
byteVal SBYTE 30h, 40h, 50h, 0F6h
wordVal WORD 1000h, 2000h, 3000h, 4000h
dwordVal DWORD 88884444h, 9078 5634h, 00000005h, 12345678h

.code
main proc
mov esi, OFFSET dwordVal
mov al, [esi+6]
	invoke ExitProcess,0
main endp
end main