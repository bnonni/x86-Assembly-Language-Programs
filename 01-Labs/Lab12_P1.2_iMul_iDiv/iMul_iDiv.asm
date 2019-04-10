; Bryan Nonni
; CSC 3210 - TR 345; Date: 04/10/2019
; Description: Write and run a priogram to fins the vlaue of Var4
; Declare var1, var2 and var3 as signed memory variables
; assign them, var1=-2, var2=20, var3=2
; Lab 12 Program 1.2 - iMul & iDiv
; var4=(var1*-5)/(-var2/var3)

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
var1 DWORD -2
var2 DWORD 20
var3 DWORD 2

.code
main PROC

	mov eax, var2		; begin right side
	neg eax				
	cdq					; sign-extend dividend
	idiv var3			; EDX=remainder
	mov ebx, eax		; begin left side
	mov eax, -5			; EDX:EAX = left side
	imul var1			; final division
	idiv ebx			; quotient

	invoke ExitProcess,0
main endp
end main