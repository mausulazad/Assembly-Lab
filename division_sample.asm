segment .data
a: db 40
b: db 10
Hello: db "Hello World",0
fmt: db "The result is %d",10,0

segment .text

global main
extern printf

main:
push RBP
mov RAX,40
cdq
mov RCX,10
idiv RCX

mov RDI, fmt
mov RSI, RAX
;mov RAX, 0
call printf


mov RAX,0
pop RBP
ret
