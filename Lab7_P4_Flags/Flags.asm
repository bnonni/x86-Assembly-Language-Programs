; Bryan Nonni
; Using the movzx & movsx operands
; Lab 7 Part 3 - Offet

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	arrayD DWORD 10000h,20000h, 30000


.code
main proc
	
	mov	ax, 7ff0h  
	add ax, 10h ;  AX=8000  SF=1 ZF=0 CF=0  OF=1
	add ah, 1 ;   AX=8100  SF=1 ZF=0 CF=0  OF=0
	add ax, 2 ;  AL=02    SF=1 ZF=0 CF=0  OF=0

	invoke ExitProcess,0
main endp
end main