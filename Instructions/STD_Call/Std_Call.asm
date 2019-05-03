; Bryan Nonni
; CSC 3210 - TR 1545, LAB W 900; Date: 04/17/2019
; Description: Write and run the following program. Will the program crash? Why?
; Lab 13 Program 3 - Std Calling Convention

; Answer: No, the program does not crash because std call uses a different calling convention that allows users to add a imm value
;	      to the return statement so as to rectify the position of the ESP on the stack. On line 39, not only do we add an imm value to the 
;	      return statment, but we also add the correct imm val: 8. Adding 8 here will do what the previous program could not: push the ESP
;		  to point at the ret address of the main proc from the addtwo proc. 

;stack
;line 15 addr <--esp+8, rectified by line 39 => ret 8
;6 <--esp+4
;5 <--esp

include Irvine32.inc

.386
.model flat, stdcall
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
	ret
example1 endp

addtwo proc
	push ebp
	mov ebp, esp	
	mov eax, [ebp+12]
	add eax, [ebp+8]
	pop ebp
	ret 8
addtwo endp

end main