global _start

section .text

_start:
        mov rax, 1 
        mov rdi, 1  
        mov rsi, inputtt
        mov rdx, inputtt_length
        syscall
        mov rbx, rax

user_input:
        mov rax, 0
        mov rdi, 0
        mov rsi, input
        mov rdx, 120
        syscall

prefix:
        mov rax, 1
        mov rdi, 1
        mov rsi, Hello
        mov rdx, Hello_length
        syscall

print:
        mov rax, 1
        mov rdi, 1
        mov rsi, input
        mov rdx, rbx
        syscall


exit:
        mov rax, 60
        mov rdi, 0
        syscall


section .data
        inputtt: db 'Enter your Name brrrrrr for nothingness/singularity: '
        inputtt_length: equ $-inputtt
        Hello: db 'Helloo, '
        Hello_length: equ $-Hello


section .bss
        input: resb 120

