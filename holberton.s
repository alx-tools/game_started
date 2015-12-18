section .text
global _start

_start:
	jmp hi

main:
	pop ecx
	xor eax, eax
	xor ebx, ebx
	xor edx, edx
writeagain:
	mov al, 4
	mov bl, 1
	mov dl, len
	int 0x80
	jmp writeagain

hi:
	call main
msg:
	db "Holberton <3 @kalou000 + @gandibar + @StephanGandi :)", 0xa
	len equ $ - msg
end:	