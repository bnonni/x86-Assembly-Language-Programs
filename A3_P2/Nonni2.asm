; Student: Bryan Nonni
; Class: CSC3210
; Assignment#: 3-2
; Description: This program executes adds 10 to eac, 8 to edx, 5 to ax and 3, to al registers.

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc

	add eax,10	;add 10 to eax
	add edx,8	;add 8 to edx
	add ax,5	;add 5 to ax
	add al,3	;add 3 to al
	invoke ExitProcess,0

main endp
end main