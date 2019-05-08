; Student: Bryan Nonni
; Class: CSC3210
; Assignment#: 4-1
; Description:  EAX = (-val1 + val2) – 6 + val3
; Initialize val1 with 4, val2 with 20, and val3 with 2.
; You are only allowed to use 32-bit registers to hold intermediate results, whenever needed.
; Use movzx, movsx, or neg instructions whenever needed.
; Use the debugger to verify your answer
; Assume that val1, val2, and val3 are 8-bit integer variables.


.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data 
	val1 BYTE 4
	val2 BYTE 20
	val3 BYTE 2

.code
main proc
	
	mov al, val1
	neg al
	mov bl, val2
	add al, bl
	sub al, 6
	add al, val3
	movsx eax, al 



	invoke ExitProcess,0

main endp
end main