.global _start

.section .data
    msg:    .asciz "Hello, World!\n"

.section .text
_start:
    mov r0, 1          @ file descriptor (stdout)
    ldr r1, =msg       @ address of message
    mov r2, 14         @ message length
    mov r7, 4          @ syscall number for sys_write
    swi 0              @ make syscall

    mov r0, 0          @ return code
    mov r7, 1          @ syscall number for sys_exit
    swi 0              @ make syscall