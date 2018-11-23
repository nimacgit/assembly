gcd:
subi $sp, $sp, 8
sw $ra, 0($sp)
sw $a0, 4($sp)
sw $a1, 8($sp)

div $a0, $a1
slt $t1, $a0, $a1
bne $t1, $0, swp
beq $t1, $0, continiu
swp:
add $t1, $a0, $0
add $a0, $a1, $0
add $a1, $t1, $0
continiu:
mflo $t0
mfhi $t1
beq $t1, $zero, done
add $a0, $a1, $zero
add $a1, $t1, $zero
jal gcd
done : 
add $v0,$a1, $0


lw $ra, 0($sp)
lw $a0, 4($sp)
lw $a1, 8($sp)
addi $sp, $sp, 8
jr  $ra


