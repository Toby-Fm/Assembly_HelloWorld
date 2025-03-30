all:
	nasm -f elf64 HelloWorld.asm -o HelloWorld.o
	ld HelloWorld.o -o HelloWorld
