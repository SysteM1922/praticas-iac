	.data
prompt1:.asciiz "Introduza um numero\n"
result:	.asciiz	"O fatorial do número inserido é: "
	.text
	.globl main
main:	la	$a0, prompt1
	li	$v0, 4
	syscall
	
	li	$v0, 5
	syscall
	move	$t0, $v0
	
	li	$t1, 1
	ble	$t0, $0, end
for:	
	mul	$t1, $t1, $t0
	subi	$t0, $t0, 1
	bgt	$t0, $0, for
end:	
	la	$a0, result
	li	$v0, 4
	syscall
	
	move	$a0, $t1
	li	$v0, 1
	syscall
	
	li	$v0, 10
	syscall