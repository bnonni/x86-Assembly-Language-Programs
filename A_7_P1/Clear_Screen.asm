; Student: Bryan Nonni
; Class: CSC 3210 - TR 1545, LAB W 900;
; Assignment: Assignment 7 - Program 1
; Description: Write and run these two procedures.
; val1 = (val3 – val2) * (val4 / val3) - (val2 * 2)

include Irvine32.inc

.386
.model flat, stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
prompt BYTE "Enter Signed Integer: " 
val1 SDWORD 0
val2 SDWORD 0
val3 SDWORD 0
val4 SDWORD 0

.code
main PROC
	mov ecx, 3

getInts:
	call Clrscr				; Clear screen
	mov edx, OFFSET prompt
	call Writestring
	mov [esi], eax

	loop getInts

	call 
	

	invoke ExitProcess, 0
main endp
end main