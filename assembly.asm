section .data
    msg db 'Hello, World!', 0

section .text
    global _start

_start:
    ; write "Hello, World!" to stdout
    mov eax, 4          ; syscall number for sys_write
    mov ebx, 1          ; file descriptor (1 = stdout)
    mov ecx, msg        ; pointer to message
    mov edx, 13         ; length of message
    int 0x80            ; interrupt to make syscall

    ; exit the program
    mov eax, 1          ; syscall number for sys_exit
    xor ebx, ebx        ; return code 0
    int 0x80            ; interrupt to make syscall
