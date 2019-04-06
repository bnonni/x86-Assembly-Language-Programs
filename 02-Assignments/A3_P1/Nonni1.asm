; Student: Bryan Nonni
; Class: CSC3210
; Assignment#: 3-1
; Description: This program executes the following mathmatecial equation AX = val2 + 5 + val3 - val1
; Result: AX = 40d (28h)

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
val1 SWORD 5 
val2 WORD 25
val3 WORD 15

.code
main proc
	mov eax,0	;zero out eax register
	mov ebx,0	;zero out ebx register

`	mov bx,val2	;move val2 to bx register bx = 25d = 19h
	add bx,5	;add 5 to bx register bx = 30d = 1Eh
	add bx,val3	;add val3 to bx register bx = 45d = 2Dh
	sub bx,val1	;subtract val1 from bx register, bx = 40d = 28h 
	mov ax,bx	;mov bx to ax register, ax = 40d = 28h
	
	invoke ExitProcess,0

main endp
end main