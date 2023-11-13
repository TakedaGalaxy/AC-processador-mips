addi $sp, $zero, 0x3FF
sll $sp, $sp, 12
addi $sp, $sp, 0xFFF
sll $sp, $sp, 4
addi $sp, $sp, 0xC

j MAIN

FUNC:
sw $s0,  0($sp)

#Primerio if
addi $t0, $zero, 2
slt $t1, $a0, $t0
bne  $t1, $zero, EXIT

#Segundo if
addi $t0, $zero, 5
slt $t1, $a0, $t0
beq  $t1, $zero, EXIT

# b = a
addi $s0, $a0, 0

#Primeiro for t3 = i
addi $t0, $zero, 2
add $t3, $zero, $zero
FOR_1:
	slt $t1, $t3, $t0
	beq  $t1, $zero, FOR_EXIT_1

	xor $a0, $a0, $t3
	
	addi $t3, $t3, 1
j FOR_1
FOR_EXIT_1:


#Segundo for t3 = i t4 = j
addi $t0, $zero, 2
add $t3, $zero, $zero

FOR_2:
	slt $t1, $t3, $t0	
	beq  $t1, $zero, FOR_EXIT_2
	
	#t4 = j = 0
	add $t4, $zero, $zero
	FOR_3:
		slt $t1, $t4, $s0
		beq  $t1, $zero, FOR_EXIT_3
			
		#Codigo

		add $a0, $a0, $s0	
		
		addi $t4, $t4, 1
		j FOR_3
		FOR_EXIT_3:
	
	addi $t3, $t3, 1
	j FOR_2
FOR_EXIT_2:

sll $a0, $a0, 2

EXIT:
lw $s0,  0($sp)
jr $ra

MAIN:
addi $s0, $zero, 9
addi $a0, $zero, 2 
jal FUNC
