; Bryan Nonni
; CSC 3210 - TR 1545, LAB W 900; Date: 04/24/2019
; Description: Write and run these two procedures.
; Lab 14 Program 1 - Stack Frames - Recursion

; Question: # of bytes of stack space = (n+1) * 12: n is the factorial number, but what is the significance of 12?
; Answer: In this program, we move the final answer to EAX, which is a 32-bit register. The largest factorial EAX can hold is 12! (479,001,600).
;		  In this program, we multiply the n in n! by 12 to determine the number of bytes of stack space we will use because when n=0, # of bytes = 12.
;		  This accounts for the 3 total enties added to the stack: 0, EBP, ret address.

; Question: How many bytes of stack space will be used by the Factorial subroutine when calculating 6!?
; Answer: (6+1) * 12 = 84 because when n=0, bytes=12; thus, the revised calculation is (n+1)*12.

; Question: What will happen to the Factorial program’s output when you try to calculate 13! and why?
; Answer: The output is 7328CC00h or 1,932,053,504. The calculated value would exceed the range of an unsigned doubleword, and when that happens, 
;		  the number rolls past zero and starts over counting up again. The output would actually appear to be smaller than 12 factorial because of this 
;		  roll over.

include Irvine32.inc

.386
.model flat, stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main PROC
	push 6
	call Factorial
	call WriteDec
	call Crlf

	invoke ExitProcess, 0
main endp

Factorial proc
	push ebp
	mov ebp, esp
	mov eax, [ebp+8]
	cmp eax, 0
	ja L1
	mov eax, 1
	jmp L2

L1: 
	dec eax
	push eax
	call Factorial

ReturnFact:
	mov ebx, [ebp+8]
	mul ebx

L2: 
	pop ebp
	ret 4

Factorial endp
end main