	.data
str:	.asciiz "Insira 6 números: "
lista:	.space 24
	.text
	.globl main
main:	
	la	$a0, str
	li	$v0, 4
	syscall
	
	li	$t0, 0
	la	$t2, lista

for:	mul	$t1, $t0, 4
	addu	$t3, $t2, $t1
	
	li	$v0, 5
	syscall
	
	sb	$v0, 0($t3)
	addi	$t0, $t0, 1
	blt	$t0, 6, for

	li	$v0, 10
	syscall
