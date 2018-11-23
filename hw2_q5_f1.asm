NOT : 
nor $v0, a0, a0

BEQ
beq $a0, $a1, temp
j Label
temp :

beqz
beq $a0, $0, Label
