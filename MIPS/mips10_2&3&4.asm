	.data
str1:	.asciiz "\nInsira a frase1: "
str2:	.asciiz "\nInsira a frase2: "
str3:	.asciiz "\n O número de caracteres da frase1 é: "
str4:	.asciiz "\nA frase concatenada é: "
frase1:	.space 20
frase2:	.space 20
frase3:	.space 40
	.text
	.globl main
main:	la	$t0, frase1
	la	$t1, frase2
	la	$t3, frase3
	li	$t4, 0
	
	la	$a0, str1
	li	$v0, 4
	syscall
	
	li	$v0, 8
	la	$a0, frase1
	li	$a1, 20
	syscall
	move	$t0, $a0

	la	$a0, str2
	li	$v0, 4
	syscall
	
	li	$v0, 8
	la	$a0, frase2
	la	$a1, 20
	syscall
	move	$t1, $v0
	
	la	$a0, str3
	li	$v0, 4
	syscall
	move	$t6, $t0
	jal	strlen
	move	$t9, $v0
	move	$a0, $t9
	li	$v0, 1
	syscall
	
	
	j end
strlen:	
	li	$v0, 0
	li	$t5, 0	
while:	addu	$t7, $t6, $t5
	lb	$t8, 0($t7)
	addi	$t5, $t5, 1
	beq	$t8, ' ', skp
	beq	$t8, '\0', re
	addi	$v0, $v0, 1	
skp:	j	while
re:	sub	$v0, $v0, 1
	jr	$ra

strcat:
	



strcpy:




end:	li	$v0, 10
	syscall