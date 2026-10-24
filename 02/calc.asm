global _start

section .text
_start:
    mov rdi, 10      ; rdi = 10
    add rdi, 20      ; rdi = 30
    sub rdi, 5       ; rdi = 25
    imul rdi, 2      ; rdi = 50
    inc rdi          ; rdi = 51

    mov rax, 60      ; exit
    syscall          ; 終了コードは rdi の値
