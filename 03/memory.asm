global _start

section .data
a      dq 30
b      dq 12

section .bss
result resq 1

section .text
_start:
    mov rax, [a]        ; rax = a の値（30）
    add rax, [b]        ; rax = rax + b の値（42）
    mov [result], rax   ; result に書き込む

    mov rdi, [result]   ; result の値を終了コードにする
    mov rax, 60
    syscall
