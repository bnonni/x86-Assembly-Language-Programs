; Student: Bryan Nonni
; Class: CSC3210
; Assignment#: 4-1
; Description: Write an assembly program to compute the following expressions
; z = x + 2 – r
; z = y + r + 9
; z = y – x + 3
; where x, y, r and z are 16-bit integer memory variables.
; x = 10, y = 20, r = 6
; z is a list. (you must use DUP when identifying and initializing z list)
; Values of the z list after running the program should be: 0006h, 0023h, 000Dh.; Use the debugger to verify your answer.  
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data 
	x WORD 10
	y WORD 20
	r WORD 6
	z WORD 3 DUP(?)

.code
main proc
	
	mov ax, x
	add ax, 2
	sub ax, r
	mov z, ax

	mov bx, y
	add bx, r
	add bx, 9
	mov [z+2], bx

	mov cx, y
	sub cx, x
	add cx, 3
	mov [z+4], cx

	invoke ExitProcess,0

main endp
end main