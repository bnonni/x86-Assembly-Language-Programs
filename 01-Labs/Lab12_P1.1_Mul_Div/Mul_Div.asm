; Bryan Nonni
; CSC 3210 - TR 345; Date: 04/03/2019
; Description: Write and run a program to fins the value of Var4
; Decalre var1 and var2 as unsigned memory variables and assign them as var1=40, var2=13
; var4=(var1*5)/(var2-3)
; Lab 12 Program 1 - Multiplication & Division

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
var1 DWORD 40
var2 DWORD 13
var4 DWORD 0

.code
main PROC

	mov eax, var1		;left side
	mov ebx, 5			
	mul ebx				;EDX:EAX = product
	mov ebx, var2		; right side
	sub ebx, 3
	div ebx				;quotient
	mov var4, eax


	invoke ExitProcess,0
main endp
end main