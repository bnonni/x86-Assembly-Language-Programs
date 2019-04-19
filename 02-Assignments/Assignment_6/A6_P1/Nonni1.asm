; Student: Bryan Nonni
; Class: CSC3210
; Assignment#: 6-1
; Description: Write an assembly program to find the smallest element by searching an array
; int array[] = {23, 12, 3, -4, -10, 35, 11, 8, 18}
; int index = 0 ;
; int min = ary[0];
; int arraySize = sizeof array / sizeof min
; while (index < arraySize){
; if (ary[index] < min)
; min = ary[index]; 
; }
; Use cmp instruction and the appropriate jump instruction (signed or unsigned) to translate the if and while statements
; Use $ operator (see chapter 3) to calculate the size of the array, and inc instruction to increment the index of the array
; Run your program using the debugger to verify your answers (do this too for questions 2 and 3)
  
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data 
	array SBYTE 23, 12, 3, -4, -10, 35, 11, 8, 18	; Decalre array with values
	arraySize = ($ - array)							; Declare arraySize as constant
	index DWORD 0									; Declare index as 0
	min SBYTE ?										; Declare min value as unknown
	
.code
main proc
	mov esi, index			; Move index value to esi for indexed array access
	mov ecx, arraySize		; Move arraySize to ecx to use as a counter
	mov bl, array[esi]		; Move array[0] to bl
	mov min, bl				; Move bl to min to initiialize as array[0]

while_loop:					; Label for while loop	
	cmp esi, ecx			; Compare esi to ecx - while loop condition
	jge end_while			; Jump to end_while if esi (index) >= ecx (arraySize)
	cmp bl, min				; Compare bl to min value
	jl if_condition			; Jump to if_condition if bl < min
	inc esi					; Otherwise, increment esi
	mov bl, array[esi]		; Move next array value to bl
	jmp while_loop			; Jump back to start of while loop

if_condition:				; if_condition label
	mov min, bl				; Move bl to min
	inc esi					; Increment esi
	mov bl, array[esi]		; Move next array value to bl
	jmp while_loop			; Jump back to start of while loop

end_while:					; end_while label to end while loop

	invoke ExitProcess,0
main endp
end main