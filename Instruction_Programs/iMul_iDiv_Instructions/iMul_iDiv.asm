; Student: Bryan Nonni
; Class: CSC3210 - TR 1545
; Assignment#: 7 - Program 1												
; Description: This program calculates the sum of values in a given array using ArraySum Sub procedure. Array DWORD 8, 3, 12, 9, 2, 20, 15, 6, 5

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

Include Irvine32.inc

.data
Array DWORD 8, 3, 12, 9, 2, 20, 15, 6, 5
val1 DWORD 0

.code
main proc
	
 


 exit
main endp
end main 

ArraySum Proc, Array:DWORD, ArraySize:DWORD, tempSum:DWORD


ArraySum endp