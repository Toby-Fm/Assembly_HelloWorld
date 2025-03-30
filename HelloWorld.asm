section .data
    hello     db 'Hello World, from Assembly on Arch Linux!', 10
    helloLen  equ $ - hello

section .text
    global _start

_start:
    mov     rax, 1          ; sys_write
    mov     rdi, 1          ; file descriptor: stdout
    mov     rsi, hello      ; pointer to message
    mov     rdx, helloLen   ; message length
    syscall                 ; kernel call

    mov     rax, 60         ; sys_exit
    xor     rdi, rdi        ; return code 0
    syscall

