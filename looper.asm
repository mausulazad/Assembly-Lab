segment .data
;Hello dq 0
;H2 dq 0
fmt: db "%d",0 ;10 dile 2bar input nite hobe 
fmt2: db "%d",10,0
;fmt3: db "%d is odd",0
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
;mov RDI, fmt
;mov RSI,a
;mov RCX,st
;mov RAX,0
;call scanf


mov RCX,10
mov RAX,11
mov RDI,fmt2

check:
mov RDI, fmt2
mov RSI,RAX
push RAX
push RCX
call printf
pop RCX
pop RAX
add RAX,1
sub RCX,1
jne check



finish:
pop RBP
mov RAX,0
ret



