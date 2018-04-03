segment .data
a: db 10
b: db 40
Hello: db "Hello World",0
fmt: db "The result%d",10,0

segment .text

global main
extern printf

main:
push RBP

mov RAX,10
mov RCX,20
imul RCX

mov RDI, fmt
mov RSI, RAX
;mov RAX, 0
call printf


mov RAX,0
pop RBP
ret
