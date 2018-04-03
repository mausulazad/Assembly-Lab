segment .data

a: dq 0
i: dq 0
j: dq 0

save1: dq 0
save2: dq 0
cnt: dq 0

fmt: dq "%lld ",10,0
fmt_put: dq "%lld",0
fmt_get: dq "Hello from hell ",10,0

segment .bss
ara resq 21

segment .text
global main
extern printf
extern scanf

main:
push RBP

mov RAX,0
mov RBX,0
mov RCX,0


        
print:
        mov RDI,fmt_get
        call printf

        
Finish:        
        mov RAX,0
        pop RBP
        ret


