segment .data
;Hello dq 0
;H2 dq 0
fmt: db "%d %d %s",0 ;10 dile 2bar input nite hobe 
fmt2: db "%d %d %s",0
i: dq 0

segment .bss
Hello: resq 1
H2: resq 1
st:resb 20

segment .text

global main
extern printf
extern scanf

main:
push RBP
mov RDI, fmt
mov RSI, Hello
mov RDX,H2
mov RCX,st
mov RAX,0
call scanf

mov RDI, fmt2
mov RSI, [Hello]
mov RDX,[H2]
mov RCX,st
mov RAX,0
call printf



pop RBP
ret
