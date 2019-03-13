; Bryan Nonni
; CSC 3210 - TR 345; Date: 03/13/2019
; Description: Write and run a program to find the values of each destination operand using loop instruction
; Lab 9 Part 2 - Loop Instruction #1

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

intarray DWORD 10000h,20000h,30000h,40000h

.code
main proc
	mov edi,OFFSET intarray         ; 1: EDI = address of intarray
	mov ecx,LENGTHOF intarray		; 2: initialize loop counter
	mov eax,0						; 3: sum = 0
	L1:								; 4: mark beginning of loop
		add eax,[edi]				; 5: add an integer
		add edi,TYPE intarray		; 6: point to next element
	loop L1							; 7: repeat until ECX = 0
									;EAX = 00010000, 00030000, 00060000, 000A0000
									;ECX = 00000004, 00000003, 00000002, 00000001, 00000000
									;Step Over vs. Step Into: I don't see the difference. I get the same outputs for both techniques.

	invoke ExitProcess,0
main endp
end main