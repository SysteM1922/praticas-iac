	.data
prompt:	.asciiz "Introduza uma string\n"
result:	.asciiz	"O número de carateres numéricos: "
str:	.space 40
	.text
	.globl main
main:	la	$a0, prompt
	li	$v0, 4
	syscall
	
	li	$v0, 8
	la	$a0, str
	li	$a1, 40
	syscall
	move	$t1, $a0
		

	li	$t0, 0
	li	$t2, 0
	
for:	addu	$t3, $t1, $t0
	addi	$t0, $t0, 1
	lb	$t4, 0($t3)
	beq	$t4, ' ', step
	beq	$t4, '\0', end
step:	blt	$t4, '0', for
	bgt	$t4, '9', for
	addi	$t2, $t2, 1
	j	for
	
end:	la	$a0, result
	li	$v0, 4
	syscall
	
	move	$a0, $t2
	li	$v0, 1
	syscall
	
	li	$v0, 10
	syscall
	