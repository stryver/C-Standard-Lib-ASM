section .text
    global __my_strlen

__my_strlen:
  push  rcx
  xor   rcx, rcx

_strlen_next:

  cmp   [rdi], byte 0
  jz    _strlen_null

  inc   rcx
  inc   rdi
  jmp   _strlen_next

_strlen_null:
  mov   rax, rcx
  pop   rcx
  ret