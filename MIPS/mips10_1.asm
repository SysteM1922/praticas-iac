	.data
prompt:	.asciiz "Introduza um número\n"
result:	.asciiz "O fatorial do número ["
result2:.asciiz	"] é: "
	.text
	.globl main
main:	la	$a0, prompt
	li	$v0, 4
	syscall
	
	li	$v0, 5
	syscall
	move	$t0, $v0
	jal factorial
	move	$t1, $v0
	j	end
	
factorial:	
	li	$v0, 1
	move	$t2, $t0
for:	ble	$t2, 0, re
	mul	$v0, $v0, $t2
	subi	$t2, $t2, 1
	j for
re:	jr	$ra	

end:	la	$a0, result
	li	$v0, 4
	syscall
	
	move	$a0, $t0
	li	$v0, 1
	syscall
	
	la	$a0, result2
	li	$v0, 4
	syscall
	
	move	$a0, $t1
	li	$v0, 1
	syscall