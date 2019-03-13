; Bryan Nonni
; CSC 3210 - TR 345; Date: 03/13/2019
; Description: Write and run a program to find the values of each destination operand using indirect & indexed operands
; Lab 9 Part 1 - Indirect Addressing & Indexed Operands

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

myBytes BYTE 10h,20h,30h,40h
myWords WORD 008Ah,003Bh,0072h,0044h,0066h
myDoubles DWORD 00000001,00000002,00000003,00000004,00000005
myPointer DWORD myDoubles

.code
main proc
	mov esi,OFFSET myBytes
	mov al,[esi] ; indirect access; a. AL = 10h
	mov al,[esi+3] ; b. AL = 40h
	mov esi,OFFSET myWords + 2
	mov ax,[esi] ; c. AX = 003Bh
	mov edi,8 ; indexed Operand
	mov edx,[myDoubles + edi] ; d. EDX = 00000003h
	mov edx,myDoubles[edi] ; e. EDX = 00000003h
	mov ebx,myPointer
	mov eax,[ebx+4] ; f. EAX = 00000002h

	invoke ExitProcess,0
main endp
end main