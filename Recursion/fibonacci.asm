segment .data

	a: dq 0
    b: dq 0
    c: dq 0
    d: dq 0
    n: dq 0
    cnt: dq 1
    temp: dq 0

	fmt_in: dq "%lld",0
	fmt_out: dq "%lld'th fibonacci number is: %lld",10,0

segment .bss
	ara resq 21

segment .text
	global main
	global fib
	extern printf
	extern scanf

main:
	push rbp
    mov rbp,rsp
    mov rdi,fmt_in
    mov rsi,n
    xor rax,rax
    call scanf
    mov rdi,1
    mov [d],rdi
    mov [temp],rdi
    mov rsi,0
    call fib
    mov rdi,fmt_out
    mov rsi,[n]
    mov rdx,rax
    xor rax,rax
    call printf
    leave
    ret

fib:
	push rbp
    mov rbp,rsp
    sub rsp,32
    mov r10,[cnt]
    inc r10
    mov [cnt],r10
    mov r11,[n]
    cmp r10,r11
    jle add
    mov rax,[d]
    leave
    ret

add:
	mov [rsp+16],rdi
    mov [rsp+24],rsi
    mov r12,rdi
    add rdi,rsi
    mov rsi,r12
    mov [d],rdi
    call fib
    mov rdi,[rsp+16]
    mov rsi,[rsp+24]
    leave
    ret
      
	
