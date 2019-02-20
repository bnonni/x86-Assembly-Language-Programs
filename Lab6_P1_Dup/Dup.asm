; Using the dup operator
; Lab 6 Part 1 - Dup

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
myWord WORD 4 dup(1,2,3,4,5)
;word = 2 bytes, so each section in the array is 2 bytes
.code
main proc
	
	mov eax,0
	
	;adds each copy of the above myWord
	;to the ax register
	;each index or number in the array is allocated 2 bits because its WORD sized, and the +0, +2, etc. is the "offset" of each index in the array
	;
	mov ax,myWord+0
	add ax,myWord+2
	add ax,myWord+4
	add ax,myWord+6
	add ax,myWord+8

	invoke ExitProcess,0
main endp
end main