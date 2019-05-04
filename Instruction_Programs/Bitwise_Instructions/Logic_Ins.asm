; Bryan Nonni
; CSC 3210 - TR 345; Date: 03/27/2019
; Description: Write and run a program to find the values of each destination operand using two loop instruction
; Lab 10 Program 1 - Logical Instructions

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data

.code
main proc
mov al,01101111b
and al,00101101b ; a. Al=2D
mov al,6Dh
and al,4Ah ; b. Al=48
mov al,00001111b
or al,61h ; c. Al=6F
mov al,94h
xor al, 37h ; d. Al=A3
	invoke ExitProcess,0
main endp
end main