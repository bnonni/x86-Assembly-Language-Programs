; Bryan Nonni
; Using the movzx & movsx operands
; Lab 7 Part 3 - Offet

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

svarB BYTE  65h,31h,02h,05h
varW WORD  6543h,1202h
varD DWORD 12345678h

.code
main proc

	mov ax, WORD PTR [varB+2]; ax = 0502h
	mov bl, BYTE PTR  varD; bl = 78h
	mov bl, BYTE PTR [varW+2]; bl = 02h
	mov ax, WORD PTR [varD+2]; ax = 1234h 
	mov eax,DWORD PTR varW; eax = 12026543h
	
	invoke ExitProcess,0
main endp
end main