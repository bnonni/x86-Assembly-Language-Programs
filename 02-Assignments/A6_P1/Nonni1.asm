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
	array SDWORD 23, 12, 3, -4, -10, 35, 11, 8, 18
	arraySize = ($ - array)
	index DWORD 0
	min DWORD ?
.code
main proc
	mov esi, index
	mov ecx, arraySize
	mov eax, array[esi] 
	mov ebx, array[esi+4] 
	cmp ebx, eax
	jg move
	add index, 8
	mov esi, index
	mov eax, array[esi]
check:
	cmp ecx, esi
	je store
	cmp ebx, eax 
	jg move
	add index, 4
	mov esi, index
	mov eax, array[esi]
	jmp check
move:
	mov ebx, eax
	add index, 4
	mov esi, index
	mov eax, array[esi]
	jmp check
store:
	mov min, ebx
	invoke ExitProcess,0
main endp
end main