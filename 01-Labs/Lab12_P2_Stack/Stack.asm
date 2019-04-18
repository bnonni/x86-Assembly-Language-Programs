; Bryan Nonni
; CSC 3210 - TR 345; Date: 04/10/2019
; Description: Write and run the following program. Will the program crash? Why?
; Lab 13 Program 2 - C Calling Convention

Include Irvine32.inc

.386
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main PROC
	call example1
	add al, 1

	invoke ExitProcess, 0
main endp

example1 proc
	push 6
	push 5
	call addtwo
	add esp,4  ;comment this line and see what happen 
	ret
example1 endp

addtwo proc
	push ebp
	mov ebp,esp	
	mov eax, [ebp+12]
	add eax, [ebp+8]
	pop ebp
	ret 
addtwo endp

end main