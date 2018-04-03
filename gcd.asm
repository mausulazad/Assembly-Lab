segment .data
;Hello dq 0
;H2 dq 0
fmt: db "%d %d",0 ;10 dile 2bar input nite hobe 
fmt2: db "%d",10,0
;fmt3: db "%d is odd",0
i: dq 0

segment .bss
a: resq 1
b: resq 1
;st:resb 20

segment .text

global main
extern printf
extern scanf

main:
push RBP
mov RDI, fmt
mov RSI,a
mov RDX,b

;mov RAX,0
call scanf

mov RAX,[a]
mov RBX,[b]
mov RCX,0
mov RDX,0

check:
;mov RAX,RDX
;mov RBX,RSI
cqo
div RBX
mov RAX,RBX
mov RBX,RDX
cmp RDX,0
jne check



finish:
mov RDI,fmt2
mov RSI,RBX
call printf
pop RBP
mov RAX,0
ret



