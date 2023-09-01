section .text
    global __my_strcat

__my_strcat:
    push rbp
    mov rbp, rsp
    cmp rdi, 0
    je .end
    cmp rsi, 0
    je .end

.find_end:
    mov al, [rdi]
    test al, al
    jz .copy
    inc rdi
    jmp .find_end

.copy:

.loop:
    mov al, [rsi]
    mov [rdi], al
    test al, al
    jz .end
    inc rdi
    inc rsi
    jmp .loop

.end:
    mov rsp, rbp
    pop rbp
    ret