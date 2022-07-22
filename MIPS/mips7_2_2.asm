	.data
prompt1:.asciiz "Introduza um numero: "
result:	.asciiz "\nO numero em hexadecimal e':"
	.text
	.globl main
main:	la	$a0, prompt1
	li	$v0, 4
	syscall
	
	li	$v0, 5
	syscall
	move	$t1, $v0
	
	la	$a0, result
	li	$v0, 4
	syscall
	
	li	$t0, 0
for:	
	andi	$t2, $t1, 0xF0000000	
	srl	$t2, $t2, 28
	move	$a0, $t2
	li	$v0, 34
#	li	$v0, 35
	syscall
	
	li	$a0, '\n'
	li	$v0, 11
	syscall

	sll	$t1, $t1, 4
	addi	$t0, $t0, 1
	blt	$t0, 8, for

	li	$v0, 10
	syscall
	
