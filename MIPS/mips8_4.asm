	.data
lista:	.word 4, 3, -2, 1, 27, 45
	.text
	.globl main
main:	la	$t1, lista
	li	$t9, 20 

do:	li	$t2, 0
	li	$t0, 0

for:	addu	$t3, $t1, $t0
	lw	$t4, 0($t3)
	addi	$t5, $t0, 4
	addu	$t8, $t1, $t5
	lw	$t6, 0($t8)
	ble	$t4, $t6, skp
	move	$t7, $t4
	sw	$t6, 0($t3)
	sw	$t7, 0($t8)
	li	$t2, 1
	addi	$t0, $t0, 4
	blt	$t0, $t9, for
	
skp:	beq	$t2, 1, do

	li	$v0, 10
	syscall
	