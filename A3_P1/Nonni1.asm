; Student: Bryan Nonni
; Class: CSC3210
; Assignment#: 3-1
; Description: This program executes the following mathmatecial equation AX = val2 + 5 + val3 - val1
; Result: AX = 28h = 40d
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

	mov bx,val2	;move val2 to bx register bx = 25
	add bx,5	;add 5 to bx register bx = 30
	add bx,val3	;add val3 to bx register bx = 45
	sub bx,val1	;subtract val1 from bx register bx = 40
	mov ax,bx	;mov bx to ax
	
	invoke ExitProcess,0

main endp
end main