section .text
    global __my_strcpy

__my_strcpy:
    push rbp
    mov rbp, rsp
    test rdi, rdi
    jz .end
    test rsi, rsi
    jz .end

.loop:
    mov al, [rsi]
    mov [rdi], al
    test al, al
    jz .end
    inc rsi
    inc rdi
    jmp .loop

.end:
    mov rsp, rbp
    pop rbp
    ret
