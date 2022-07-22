	.globl main
main:	li	$t0, 0x12345678
	li	$t1, 0x0000000F
#	la	$t1, 0x0000F000
#	la	$t1, 0x0000ABCD
	
	and	$t2, $t0, $t1
	or	$t3, $t0, $t1
	nor	$t4, $t0, $t1
	xor	$t5, $t0, $t1
	
	nor	$t6, $t0, $0
	
	li	$v0, 10
	syscall
