func:
subi $sp, $sp, 16
sw $ra, 0($sp)
sw $a0, 4($sp)
sw $a1, 8($sp)


bne $a0, $a1, nequalnm
addi $v0, $0, 1
j end
nequalnm :
bne $a1, $0, nequalm0
addi $v0, $0, 1
j end
nequalm0 :
slt $t0, $a0, $a1
bne $t0, $0, invalid
slt $t0, $a1, $0
bne $t0, $0, invalid

subi $a0, $a0, 1
jal func
sw $v0, 12($sp)
subi $a1, $a1, 1
jal func
lw $t0, 12($sp)
add $v0, $v0, $t0
j end


invalid:
addi $v0, $0, -1

end:
lw $ra, 0($sp)
lw $a0, 4($sp)
lw $a1, 8($sp)
addi $sp, $sp, 16
jr $ra