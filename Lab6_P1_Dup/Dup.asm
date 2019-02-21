; Using the dup operator
; Lab 6 Part 1 - Dup

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
myWord WORD 4 dup(1,2,3,4,5) ;word = 2 bytes, so each section in the array is 2 bytes
var1 BYTE 0Ah, 255

.code
main proc	
	mov eax,0
	mov ebx,0
	mov ecx,0

	
	;adds each copy of the above myWord to the ax register
	;each index or number in the array is allocated 2 bytes because its WORD sized
	;and the +0, +2, etc. is the "offset" of each index in the array

	mov bl,var1
	mov cl,[var1+1]
9j	mov ax,myWord+0
	add ax,myWord+2
	add ax,myWord+4
	add ax,myWord+6
	add ax,myWord+8

	invoke ExitProcess,0
main endp
end main