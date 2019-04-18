; Bryan Nonni
; CSC 3210 - TR 345; Date: 04/10/2019
; Description: Write and run the following program. Will the program crash? Why?
; Lab 13 Program 2 - C Calling Convention

; Answer: Yes, the program crashes, and commenting out line 26 does nothing to effect the program's execution.
;	      This happens because at line 23, when it returns from addtwo proc, it adds 4 to ESP, which points the
;		  ESP to the value of 6 on the stack. Commenting this out has no effect on execution because 
;		  without adding 4 to esp, it will remain pointed to the next lowest value on the stack, which in this case is 5. 
;		  The way to fix this is to add 8 to esp, which will point it to the address of line 18 in main proc: add al, 1.

;stack
;line 15 addr <--esp+8 
;6 <--esp+4
;5 <--esp

Include Irvine32.inc
.386
.model flat, C
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
	add esp,4  ;comment this line and see what happens 
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