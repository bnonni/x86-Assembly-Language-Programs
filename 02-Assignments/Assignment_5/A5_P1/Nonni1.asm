; Student: Bryan Nonni
; Class: CSC3210
; Assignment#: 5-1
; Description:  Use a loop instruction with indirect addressing to reverse the elements of an array in place
; Do not copy the elements to any other array.
; Use the SIZEOF, TYPE, and LENGTHOF operators to make the program as flexible as possible if the array
; size and type should be changed in the future.
; Use the XCHG instruction.
; The array’s elements are: “B”, “A”, “D”, “C”, “F”, “E”, “H”, “G”.
; The array’s elements after running the program should look like: A, B, C, D, E, F, G, H
  
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data 
	alphabet BYTE "B", "A", "D", "C", "F", "E", "H", "G"

.code
main proc
	mov esi, OFFSET alphabet
	mov al, [alphabet+1]
	xchg [esi], al
	mov [esi+1], al

	mov al, [alphabet+3]
	xchg [esi+2], al
	mov [esi+3], al
	
	mov al, [alphabet+5]
	xchg [esi+4], al
	mov [esi+5], al

	mov al, [alphabet+7]
	xchg [esi+6], al
	mov [esi+7], al

	invoke ExitProcess,0
main endp
end main