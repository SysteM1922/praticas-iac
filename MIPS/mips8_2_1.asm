	.data
minus:	.asciiz "texto em minusculas"
maius:	.space 20
	.text
	.globl main

main:	li	$t0, 0
	la	$t1, minus
	la	$t2, maius
	
while:	addu	$t3, $t1, $t0
	lb	$t4, 0($t3)
	beq	$t4, ' ', step
	beq	$t4, '\0', end
	addi	$t4, $t4, 'A'
	subi	$t4, $t4, 'a'
step:	addu	$t5, $t2, $t0
	sb	$t4, 0($t5)
	addi	$t0, $t0, 1
	j 	while
	
end:	move	$a0, $t2
	li	$v0, 4
	syscall
	
	li	$v0, 10
	syscall
	 
