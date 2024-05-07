global _start

section .text

_start:
        mov rax, 1 ; write syscall
        mov rdi, 1 ; file descriptor = stdout
        mov rsi, string 
        mov rdx, 13 ; Length of string 
        syscall

        mov rax, 60 ; Exit syscall
        mov rdi, 0 ; Exitcode
        syscall

section .data
        string: db 'Athis SN Here' 

