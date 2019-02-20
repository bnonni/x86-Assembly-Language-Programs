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
	
	mov eax,0
	mov al, myString_length

	invoke ExitProcess,0
main endp
end main