global _start

section .data
arr    dq 10, 20, 30

section .text
_start:
    mov rbx, arr            ; rbx = 配列の先頭アドレス
    mov rdi, [rbx]          ; rdi = arr[0] = 10
    add rdi, [rbx + 8]      ; rdi += arr[1] → 30
    add rdi, [rbx + 16]     ; rdi += arr[2] → 60

    mov rax, 60
    syscall
