	.data
lista:	.word 4, 3, -2, 1, 27, 45
string:	.asciiz "O conteúdo do Array é: \n"
	.text
	.globl main
main:	li	$t0, 0
	la	$t1, lista
	la	$a0, string
	li	$v0, 4
	syscall
	
for:	mul	$t2, $t0, 4
	addu	$t3, $t1, $t2
	lw	$t4, 0($t3)
	move	$a0, $t4
	li	$v0, 1
	syscall
	la	$a0, '-'
	la	$v0, 11
	syscall
	addi	$t0, $t0, 1
	blt	$t0, 6, for
	
	li	$v0, 10
	syscall
