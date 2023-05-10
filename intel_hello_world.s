.intel_syntax noprefix

hello_world:
    .asciz "Hello, World!\n"

.global _start

_start:
    /* sys_write */
    mov rax, 1              # Write call code
    mov rdi, 1              # Write location (1 is std_out)
    lea rsi, [hello_world]  # Address to buffer (using Load Effective Address)
    mov rdx, 14             # Buffer length
    syscall

    /* sys_exit */
    mov rax, 60     # Exit call code
    mov rdi, 0      # Error code to send out
    syscall
