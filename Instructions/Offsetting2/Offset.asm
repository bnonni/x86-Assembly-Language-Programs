; Bryan Nonni
; Using OFFSET operator and esi as pointer
; Lab 8 Part 2 - Offet

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	myBytes BYTE 10h,20h,30h,40h
	myWords WORD 8Ah,3Bh,72h,44h,66h
	myDoubles DWORD 1,2,3,4,5
	myPointer DWORD myDoubles

.code
main proc
	mov esi, OFFSET myBytes
	mov ax, [esi]; a. AX = 2010h
	mov esi, myPointer	
	mov eax, [esi+2] ; c. AX = 0000h
	mov eax, [esi+6] ; d. AX = 0000h
	mov eax, [esi-4] ; e. AX = 0044h

	invoke ExitProcess,0
main endp
end main