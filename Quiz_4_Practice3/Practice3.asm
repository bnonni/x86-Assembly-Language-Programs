; Bryan Nonni

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
tes BYTE 10h,20h,30h,40h
myWords WORD 8Ah,3Bh,72h,44h,66h
myDwords DWORD 11112222h, 12341234h, 12345678h
myPointer DWORD myDwords

.code
main proc

mov esi,OFFSET myBytes
mov al,[esi] ; a. AL =
mov al,[esi+3] ; b. AL =
mov esi,3
inc esi
mov ax,[myWords+esi] ; c. AX =
mov ax,myWords[esi] ; d. AX =
mov bx, [myWords+6]
xchg bx, [myWords+4] ; e. BX =
mov edi,myPointer
add edi,4
mov ebx,[edi] ; f. EBX =
mov eax, 11223344h
mov esi,offset myDwords +8
mov eax,[esi] ; g. EAX =
mov al,byte ptr [myDwords+6] ; h. AL=
mov bx,word ptr [myDwords+10] ; i. BX = 	
	
	invoke ExitProcess,0
main endp
end main