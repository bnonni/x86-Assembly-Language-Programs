; Bryan Nonni
; Using the movzx & movsx operands
; Lab 7 Part 1 - MOVZX & MOVSZ

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	myByte1 BYTE 9Bh ; 1 byte

.code
main proc

	mov bx, 0A69Bh
	movzx eax, bx	;EAX = 0000A69Bh, movzx is an unsigned move, so it pads the dest reg with 0's to accommodate the 2byte in 4byte reg 
	movzx eax, myByte1	;EAX = 0000009Bh, movzx is an unsigned move, so it pads the dest reg with 0's to accommodate the 1byte in 4byte reg
	mov bx, 0A69Bh
	movsx eax, bx	;EAX = FFFFA69B, movsx is a signed move, so it pads the register with 1's (binary) F's (hex) to accommodate the 2bytes to 4byte reg

	invoke ExitProcess,0
main endp
end main