
func:
subi $sp, $sp, 8
sw $ra, 0($sp)
sw $a0, 4($sp)
sw $a1, 8($sp)

slt $t1, $a0, $a1
beq $t1, $zero, big
j less
big : sub $a0, $a0, $a1
jal func
less : add $v0, $a0, $zero

lw $ra, 0($sp)
lw $a0, 4($sp)
lw $a1, 8($sp)
addi $sp, $sp, 8
jr $ra
