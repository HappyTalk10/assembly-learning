global _start

section .data
msg db "Hello, World!", 10
len equ $ - msg

section .text
_start:
    mov byte [msg], 'J'     ; 先頭の1文字を 'J' に書き換える

    mov rax, 1              ; write
    mov rdi, 1              ; 標準出力
    mov rsi, msg
    mov rdx, len
    syscall

    mov rax, 60             ; exit
    mov rdi, 0
    syscall
