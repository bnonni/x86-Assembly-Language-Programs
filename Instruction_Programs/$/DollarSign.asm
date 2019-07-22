; Using the $ operator
; Lab 6 Part 2 - $

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
myString byte "you like it"
myString_length = ($ - myString)

.code
main proc

	mov al, myString_length
	mov eax,0
	mov ebx,2
	add ebx,9
	mov al, myString_length
	mov ecx,11
	add ecx,5
	mov ecx,ebx

	invoke ExitProcess,0
main endp
end main