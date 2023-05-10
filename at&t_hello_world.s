hello_world:
    .asciz "Hello, World!\n"

.global _start

_start:
    # sys_write
    mov $1, %rax            # Write call code
    mov $1, %rdi            # Write location (1 is std_out)
    lea hello_world, %rsi   # Address to buffer (using Load Effective Address)
    mov $14, %rdx           # Buffer length
    syscall

    # sys_exit
    mov $60, %rax   # Exit call code
    mov $0, %rdi    # Error code to send out
    syscall
