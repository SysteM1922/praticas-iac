	.data
prompt1:.asciiz "Introduza um numero\n"
	.text
	.globl main
main:	la	$a0, prompt1
	li	$v0, 4
	syscall
	
	li	$v0, 5
	syscall
	move	$t0, $v0
	
	li	$t1, 0
	ble	$t0, $t1, end
for:	
	la	$a0, '-'
	li	$v0, 11
	syscall
	addi	$t1, $t1, 1
	bgt	$t0, $t1, for
	
end:	li	$v0, 10
	syscall