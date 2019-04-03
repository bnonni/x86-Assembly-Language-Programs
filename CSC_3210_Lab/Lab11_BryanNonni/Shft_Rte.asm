; Bryan Nonni
; CSC 3210 - TR 345; Date: 04/03/2019
; Description: Write and run a program to execute a while loop
; Lab 11 Program 2 - Shift and Rotate

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main PROC

	mov al,0D4h
	shr al,1 ; a. al=FA CF=0 OF=1 
	mov al,0D4h
	sar al,1 ; b. al=EA CF=0 OF=0  
	mov al,0D4h
	sar al,4 ; c. al=FD CF=0 OF=0 
	mov al,0D4h
	rol al,1 ; d. al=A9 CF=1 OF=0 
	mov al,0D4h
	ror al,3 ; e. al=9A CF=1 OF=0 


	invoke ExitProcess,0
main endp
end main