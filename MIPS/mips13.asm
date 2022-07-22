	.data
dst:	.asciiz "string de teste 1"
src:	.asciiz "string de teste 2"
	.text
	.globl main
	
main:	la	$a0, dst
	la	$a1, src
	jal	strcpy
	move 	$t1,$v0
	
	move	$a0,$t1
	li	$v0,4
	syscall

	
	jal	strcat
	move	$t2,$v0
	
	move	$a0,$t2
	li	$v0,4
	syscall

	li	$v0,10
	syscall

strcat:	move	$a2,$a0
	li	$t0, 0
cat_wh:	addu	$t1,$a0,$t0
	lb	$v0,0($t1)
	beq	$v0,'\0',cat_e
	addi	$t0,$t0,1
	j	cat_wh
cat_e:	
	
	jal	strcpy
	move	$v0,$a2
	jr	$ra
	
strcpy:	li	$t0, 0

cpy_wh:	addu	$t1,$a0,$t0	# &dst[i]
	addu	$t2,$a1,$t0	# &src[i]
	lb	$v0,0($t2)	# $v0=src[i]
	beq 	$v0,'\0',cpy_e	
	sb	$v0,0($t1)	# dst[i]=src[i]
	addi	$t0,$t0,1	# i++
	j 	cpy_wh
cpy_e:	sb	$0,0($t1)	# dst[i]='\0'

	move	$v0,$a0		# return dst;
	jr	$ra