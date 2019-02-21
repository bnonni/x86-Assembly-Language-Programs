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
testVar SDWORD -1

.code
main proc
	mov	eax,testVar		
	add	eax,6		

	invoke ExitProcess,0
main endp
end main