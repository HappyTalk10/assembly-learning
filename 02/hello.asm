global _start

section .data
msg db "Hello, World!", 10
len equ $ - msg

section .text
_start:
    mov rax, 1       ; write
    mov rdi, 1       ; 標準出力
    mov rsi, msg     ; 文字列のアドレス
    mov rdx, len     ; 文字数（14）
    syscall

    mov rax, 60      ; exit
    mov rdi, 0       ; 終了コード0
    syscall
