; Bryan Nonni
; CSC 3210 - TR 345; Date: 03/27/2019
; Description: Write and run a program to find the values of each destination operand using two loop instruction
; Lab 10 Program 3 - If Statement 1

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
x BYTE 0

.code
main proc

mov bl, 5
mov cl, 9
cmp bl,cl
ja  next
mov al,50		
mov dl,23		
sub al,dl		; AL = 1B
next:
	
	invoke ExitProcess,0
main endp
end main