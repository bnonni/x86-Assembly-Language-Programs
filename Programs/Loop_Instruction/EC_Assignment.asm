
  
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc

mov eax, 0
mov ecx, 5

L1:
mov eax, 5
mov ecx, 3

L2:
add eax,5
loop L2
loop L1

	invoke ExitProcess,0

main endp
end main