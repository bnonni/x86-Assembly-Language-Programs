; Bryan Nonni
; CSC 3210 - TR 345; Date: 03/27/2019
; Description: Write and run a program to find the values of each destination operand using two loop instruction
; Lab 10 Program 2 - Logical Instructions P2

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data

.code
main proc

mov al,00001111b
test al,00000010b ;a. CF=0 ZF=0 SF=0 al=0F
mov bl,00000110b
cmp bl,00000101b  ;b. CF=0 ZF=0 SF=0 bl=06
mov cl,00000101b
cmp cl,00000111b  ;c. CF=1 ZF=0 SF=1 cl=05

	invoke ExitProcess,0
main endp
end main