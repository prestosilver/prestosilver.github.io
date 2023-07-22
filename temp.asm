format ELF64
section '.text' executable
public _start
; headptr_isnull:
; headcstr_len:
; headcstr_print:
; headcstr_cr:
; headcstr_println:
; headcstr_eq:
; headcstr_cpy:
; headcstr_last:
; headcstr_clear:
; headcstr_cat:
; headcstr_isnum:
; headcstr_int:
; headcstr_split:
; headcstr_iter:
proc_cstr_len:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    pop rax
    push rax
    push rax
.blockstart_1: ; do
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_print:
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_len
.blockend_0: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    push qword 1
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_println:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_cr
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_cr:
    push qword 1
    push str_0
    push qword 1
    push qword 1
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_eq:
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_0: ; do
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    add rsp, 8
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_2: ; if
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_cpy:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_0: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_last:
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_0: ; do
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_clear:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    pop rax
    push rax
    push rax
.blockstart_1: ; do
    pop rax
    push rax
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_cat:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_len
.blockend_0: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_cpy
.blockend_1: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_isnum:
    mov rax, [loc_stack_rsp]
    add rax, 1
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 1
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push qword 48
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 1
    push rax
    push qword 57
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_len
.blockend_0: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 98
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 1
    push rax
    push qword 49
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 104
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 1
    push rax
    push qword 102
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_2: ; if
    add rsp, 8
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 45
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_3: ; if
.blockstart_4: ; do
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 1
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
    add rsp, 8
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 98
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 104
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_len
.blockend_6: ; call
    push qword 1
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_5: ; if
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_4
.blockend_4: ; do
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_int:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push qword 10
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_isnum
.blockend_0: ; call
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_len
.blockend_2: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 98
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push qword 2
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_3: ; if
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 104
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push qword 16
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_4: ; if
    add rsp, 8
    push qword 0
.blockstart_5: ; do
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 70
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 65
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_6: ; if
    jz .blockend_6
    push qword 65
    push qword 10
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_6: ; if
    push qword 48
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 98
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 104
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    test rbx, rbx
    jnz .blockstart_5
.blockend_5: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_split:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_clear
.blockend_0: ; call
.blockstart_1: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_2: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_iter:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push qword 0
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_main:
    push str_1
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_println
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
    jmp quit
_start:
    mov qword [args_ptr], rsp
    mov qword [ret_stack_rsp], ret_stack
    mov qword [loc_stack_rsp], loc_stack
    mov rax, [ret_stack_rsp] 
    mov qword [rax], quit
    jmp proc_main
quit:
    mov rax, 60
    mov rdi, 0
    syscall
section '.data'
    str_0: db 10, 0
    str_1: db 108, 111, 108, 0
section '.bss'
    args_ptr: rq 1
    ret_stack_rsp: rq 1
    ret_stack: rq 1024
    loc_stack_rsp: rq 1
    loc_stack: rq 512
    mem: rb 0