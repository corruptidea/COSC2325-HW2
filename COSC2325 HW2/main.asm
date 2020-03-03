.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data
	
	last DWORD 0d

.code

main PROC

	mov ecx, 7d ;Number of numbers to sum
	mov eax, 1d ;Initial number

	L1:
		mov ebx, last
		mov last, eax
		add eax, ebx

		loop L1

	INVOKE ExitProcess, 0
main ENDP
END main