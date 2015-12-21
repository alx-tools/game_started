asm:
	nasm -f elf -o holberton.o holberton.s && ./shellcode.sh holberton.o
c:
	gcc -m32 -o holberton main.c && ./holberton
