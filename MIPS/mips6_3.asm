	.data
s1:	.asciiz "Introduza dois números:\n"
s2:	.asciiz "A soma dos números e': "
	.text
	.globl main
main:	la	$a0, s1
	li	$v0, 4
	syscall
	
	li	$v0, 5
	syscall
	move	$t0, $v0
	
	li	$v0, 5
	syscall
	move	$t1, $v0
	
	la	$a0, s2
	li	$v0, 4
	syscall
	
	add	$t2, $t0, $t1
	move	$a0, $t2
	li	$v0, 1
#	li	$v0, 36
	syscall
	
	li	$v0, 10
	syscall