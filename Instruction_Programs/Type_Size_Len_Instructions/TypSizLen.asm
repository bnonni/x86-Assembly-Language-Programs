; Bryan Nonni
; Using the movzx & movsx operands
; Lab 8 Part 4 - Type Size & LengthOf

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

myBytes BYTE 10h,20h,30h,40h
myWords WORD 3 DUP(?),2000h
myString BYTE "ABCDE"

.code
main proc
	
	mov eax,TYPE myBytes ; eax = 00000001
	mov eax,LENGTHOF myBytes ; eax = 00000004
	mov eax,SIZEOF myBytes ; eax = 00000004
	mov eax,TYPE myWords ; eax = 00000002
	mov eax,LENGTHOF myWords ; eax = 00000004
	mov eax,SIZEOF myWords ; eax = 00000008
	mov eax,SIZEOF myString ; eax = 00000005
	
	invoke ExitProcess,0
main endp
end main