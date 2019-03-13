; Bryan Nonni
; CSC 3210 - TR 345; Date: 03/13/2019
; Description: Write and run a program to find the values of each destination operand using two loop instruction
; Lab 9 Part 3 - Loop Instruction #2
;;Answer
;After First L1:
; EAX = 00000003
; ECX = 00000005
; temp = 0000000A
;During L2:
; EAX = 00000003, 00000008, 0000000D, 00000012, 00000017, 0000001C
; ECX = 00000005, 00000004, 00000003, 00000002, 00000001, 00000000 
;During L1: 
; EAX = 00000003, 00000003, 00000003, 00000003, 00000003, 00000003, 00000003, 00000003, 00000003, 00000003
; ECX = 0000000A, 00000009, 00000008, 00000007, 00000006, 00000005, 00000004, 00000003, 00000002, 00000001, 00000000
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
temp DWORD ?
.code
main proc
	mov eax, 0
	mov ecx, 10		; Outer Loop Counter
	L1:
		mov eax, 3
		mov temp, ecx
		mov ecx, 5		; Inner Loop Counter
	L2:
		add eax, 5
		loop L2			; Repeat Inner Loop 
		mov ecx, temp
	loop L1
	invoke ExitProcess,0
main endp
end main