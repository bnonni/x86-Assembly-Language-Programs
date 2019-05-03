; Student: Bryan Nonni
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

Include Irvine32.inc

.data
val1 SDWORD ?
val2 SDWORD ?
val3 SDWORD ?
val4 SDWORD ?
myPrompt BYTE "Enter Signed Integer: ", 0


;  val1 = (val3 – val2) * (val4 / val3) - (val2 * 2)

.code
main proc
	
	mov esi, OFFSET val2		; Move address of val2 to esi
	mov ecx, 3
 
 readIntegers:
	call Clrscr					; Clear screen
	mov edx, offset myPrompt	; Move prompt to edx to be displayed
	call Writestring			; Display prompt
	call Readint				; Read int to eax
	mov [esi], eax				; mov eax value to [esi] = val2
	inc esi						; Increment esi to val3, val4
	loop readIntegers			; Loop back to beginning

 exit
main endp
end main 