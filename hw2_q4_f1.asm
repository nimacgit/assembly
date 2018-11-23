

li $t0, 0

L1:
li $t1, 0

L2:
li $t2, 0
li $v0, 0

L3:

sll $t3, $t0, 1
add $t3, $t3, $t2
sll $t3, $t3, 2
add $t3, $t3, $a0
lw $t3, 0($t3)

sll $t4, $t2, 1
add $t4, $t4, $t1
sll $t4, $t4, 2
add $t4, $t4, $a1
lw $t4, 0($t4)

mul $s0, $t3, $t4

add $v0, $v0, $s0

addi $t2, $t2, 1
bne $t2, 2, L3

sll $s1, $t0, 2
add $s1, $s1, $t1
sll $s1, $s1, 4
add $s1, $s1, $a2
lw $v0, 0($s1)


addi $t1, $t1, 1
bne $t1, 2, L2

addi $t0, $t0, 1
bne $t0, 2, L1
