.text
main:	

#Alocando espaço para o vetor
# $s1 -> endereço base do vetor
    la $s1,str1
    move $t1,$s1
   	jal str
   	
loop:	
    lb $t2, 0($s1) # V[i] = $t2
	beq $t2, 10, exit # se i = a 10, acaba
	
	addi $s1, $s1, 1 # $s1++
	
	j if2
	
if2:
# Se n = 2
    blt $t2, 65, if3 # Se n for menor ou igual a 65, if3
    bgt $t2, 67, if3 # Se n for maior ou igual a 67, if3

	li $v0, 4
	la $a0, n2
	syscall
	
	j loop
	
if3:
# Se n = 3
	blt $t2, 68, if4 # Se n for menor ou igual a 68, if4
	bgt $t2, 70, if4 # Se n for maior ou igual a 70, if4

	li $v0, 4
	la $a0, n3
	syscall
	
	j loop
	
if4:
# Se n = 4
	blt $t2, 71, if5 # Se n for menor ou igual a 71, if5
	bgt $t2, 73, if5 # Se n for maior ou igual a 73, if5

	li $v0, 4
	la $a0, n4
	syscall
	
	j loop
	
if5:
# Se n = 5
	blt $t2, 74, if6 # Se n for menor ou igual a 74, if6
	bgt $t2, 76, if6 # Se n for maior ou igual a 76, if6

	li $v0, 4
	la $a0, n5
	syscall
	
	j loop
	
if6:
# Se n = 6
	blt $t2, 77, if7 # Se n for menor ou igual a 77, if7
	bgt $t2, 79, if7 # Se n for maior ou igual a 79, if7

	li $v0, 4
	la $a0, n6  # printa 6
	syscall
	
	j loop
	
if7:
# Se n = 7
	blt $t2, 80, if8 # Se n for menor ou igual a 80, if8
	bgt $t2, 83, if8 # Se n for maior ou igual a 83, if8

	li $v0, 4
	la $a0, n7
	syscall
	
	j loop
	
if8:
# Se n = 8
	blt $t2, 84, if9 # Se n for menor ou igual a 84, if9
	bgt $t2, 86, if9 # Se n for maior ou igual a 86, if9

	li $v0, 4
	la $a0, n8
	syscall
	
	j loop
	
if9:
# Se n = 9
	blt $t2, 87, if0 # Se n for menor ou igual a 87, if0
	bgt $t2, 90, if0 # Se n for maior ou igual a 89, if0

	li $v0, 4
	la $a0, n9
	syscall
	
	j loop

if0:
# Se n = 0
 	bne $t2, 45, ifNum # Se n != 45, transforma em número

	li $v0, 4
	la $a0, hifen ## adiciona o hifen
	syscall
	
	j loop
	
ifNum:
	addi $a0, $t2, -48
	li $v0, 1
	syscall
	j loop
			
str: 
    move    $a0, $t1
	li      $a1, 20
   	li      $v0, 8
   	syscall
   	
   	jr      $ra
    	
exit:	
    # New Line
    li $v0, 11
    li $a0, 10
    syscall
	
	li $v0, 10
	syscall

.data
	n1: .asciiz "1"
	n2: .asciiz "2"
	n3: .asciiz "3"
	n4: .asciiz "4"
	n5: .asciiz "5"
	n6: .asciiz "6"
	n7: .asciiz "7"
	n8: .asciiz "8"
	n9: .asciiz "9"
	hifen: .asciiz "-"
	str1: .space 20
