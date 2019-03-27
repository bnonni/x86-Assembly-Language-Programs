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

 mov al, 5
 mov bl, 4
 mov cl, 2
 cmp al,bl        ; first expression...
 jbe next
 mov x,0
 add x,1		  ;x = 1
 next:
	
	invoke ExitProcess,0
main endp
end main