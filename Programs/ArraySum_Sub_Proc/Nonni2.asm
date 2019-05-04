; Student: Bryan Nonni
; Class: CSC3210 - TR 1545
; Assignment#: 7 - Program 1												
; Description: This program calculates the sum of values in a given array using ArraySum Sub procedure. Array DWORD 8, 3, 12, 9, 2, 20, 15, 6, 5

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:DWORD

Include Irvine32.inc

.data
Array DWORD 8, 3, 12, 9, 2, 20, 15, 6, 5
val1 DWORD 0
arrayLen DWORD LENGTHOF Array-1

.code
main proc
	push OFFSET Array
	push arrayLen
	call ArraySum
	mov val1, eax
	call WriteInt
	call Crlf
	
 invoke ExitProcess,0
main endp

ArraySum Proc
	push ebp
	mov ebp, esp
	mov esi, [ebp+12]
	mov ecx, [ebp+8]
	mov eax, [esi]

sumArrayLoop:
	add esi, TYPE DWORD
   	add eax, [esi]
	cmp ecx, 0
	je exitArraySum
	loop sumArrayLoop

exitArraySum:
	pop ebp
	ret 8

ArraySum endp
end main 
