segment .data
;Hello dq 0
;H2 dq 0
fmt: db "%d",0 ;10 dile 2bar input nite hobe 
fmt2: db "%d is even",10,0
fmt3: db "%d is odd",10,0
i: dq 0

segment .bss
a: resq 1

;st:resb 20

segment .text

global main
extern printf
extern scanf

main:
push RBP
mov RDI, fmt
mov RSI,a
;mov RCX,st
mov RAX,0
call scanf

mov RDI, fmt2
mov RAX,[a]
mov RCX,2
cqo
div RCX
mov RSI,[a]
cmp RDX,0
je even
;mov RDI,fmt2
mov RDI,fmt3
;mov RSI,[a]
mov RAX,0
call printf
jmp finish

even:
mov RDI,fmt2
;mov RSI,[a]
mov RAX,0
call printf

finish:
pop RBP
mov RAX,0
ret



