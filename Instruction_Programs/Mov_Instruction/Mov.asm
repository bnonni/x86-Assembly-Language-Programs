; Bryan Nonni
; Using the mov operator
; Lab 7 Part 1 - Mov

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	count BYTE 100 ; 1 byte
	wVal  WORD 2 ; 2 bytes
	wVal2 WORD 4 ; 2 bytes

.code
main proc
	mov bl, count ; 1 byte reg & 1 byte value
	mov ax, wVal ; 2 byte reg & 2 byte value
	mov count, al ; 1 byte mem value & 1 byte reg

	mov ax, wVal ; error - trying to move a 2 byte value to a 1 byte register
	mov al, count ; error - trying to move 1 byte value to 2 byte register
	mov ah, count ; error - trying to move 1 byte value to 4 byte register
	mov bx, wVal ; error - trying to move memory to memory, moving wVal to bx
	mov wVal2, bx

	invoke ExitProcess,0
main endp
end main