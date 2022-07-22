	.globl main
main:	la	$t0, 0x12345678
#	la	$t0, 0xF0000003

#	sll	$t1, $t0, 1
#	srl	$t2, $t0, 1
#	sra	$t3, $t0, 1
	
#	sll	$t1, $t0, 4
#	srl	$t2, $t0, 4
#	sra	$t3, $t0, 4
	
	sll	$t1, $t0, 2
	srl	$t2, $t0, 2
	sra	$t3, $t0, 2
	
#	sll	$t1, $t0, 4
#	srl	$t2, $t0, 4
#	sra	$t3, $t0, 4
	
	li	$v0, 10
	syscall