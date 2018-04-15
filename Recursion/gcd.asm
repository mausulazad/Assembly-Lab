segment .data

    a: dq 0
    b: dq 0
    i: dq 0
    j: dq 0
    k: dq 0
    d: dq 0
    cnt: dq 1
    temp: dq 0

    fmt_in: dq "%lld %lld",0
    fmt_out: dq "GCD: %lld",10,0

segment .bss
    ara resq 21

segment .text
    global main
    global gcd
    extern printf
    extern scanf

main:
    push rbp
    mov rbp,rsp
    mov rdi,fmt_in
    mov rsi,a
    mov rdx,b
    xor rax,rax
    call scanf
    mov rdi,[a]
    mov rsi,[b]
    call gcd
    mov rsi,rax
    mov rdi,fmt_out
    call printf
    xor eax,eax
    leave
    ret
gcd:
    push rbp
    mov rbp,rsp
    sub rsp,32
    mov rax,rsi
    mov [i],rsi
    mov [j],rdi
    cqo    
    idiv rdi
    mov [k],rdx
    cmp rdx,0
    je result
    mov rsi,[j]
    mov rdi,[k]
    call gcd
    mov rax,[d]
    leave
    ret
    
result:
    mov rax,[j]
    mov [d],rax
    leave
    ret
