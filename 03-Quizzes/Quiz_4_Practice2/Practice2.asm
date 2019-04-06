; Bryan Nonni

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

.code
main proc

mov eax,3
mov ecx,4
L1: add eax,2
dec ecx
loop L1

	invoke ExitProcess,0
main endp
end main