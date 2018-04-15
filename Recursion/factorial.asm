segment .data

	a: dq 0

	fmt_in: dq "%lld",0
	fmt_out: dq "Factorial of %lld is: %lld",10,0

segment .bss
	ara resq 21

segment .text
	global main
	global fact
	extern printf
	extern scanf

main:
	push rbp
	mov rbp,rsp
	mov rdi,fmt_in
    mov rsi,a
    xor rax,rax
    call scanf
    mov rdi,[a]
    call fact
    mov rdi,fmt_out
    mov rsi,[a]
    mov rdx,rax
    xor rax,rax
    call printf
    xor eax,eax
    leave 
    ret

fact:
	push rbp
    mov rbp,rsp
    sub rsp,32
    cmp rdi,1
    jg greater
    mov eax,1
    leave 
    ret

greater:
	mov [rsp+16],rdi
    dec rdi
    call fact
    mov rdi,[rsp+16]
    imul rax,rdi
    leave 
    ret

