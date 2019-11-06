.text

main: 

li $v0, 5  # lendo um inteiro
syscall

move $s0, $v0  # movendo inteiro para $s0

slti $t0, $s0, 11       # 1 -> n < 11
                        # 0 -> n > 11

bne $t0, $zero, franquia

slti $t0, $s0, 31       # 1 -> n < 31
                        # 0 -> n > 31

bne $t0, $zero, valor1

slti $t0, $s0, 101      # 1 -> n < 101
                        # 0 -> n > 101

bne $t0, $zero, valor2

addi, $s1, $zero, 5
sub $t1, $s0, 100       # consumo -= 100
mul $t1, $t1, $s1       # valor = consumo * 5
addi, $t2, $t1, 167     # valor = consumo + 167

li $v0, 1   # printando um inteiro
move $a0, $t2 # printando $t1
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall
j exit




franquia:
addi $t1, $zero, 7
li $v0, 1   # printando um inteiro
move $a0, $t1 # printando $t1
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall
j exit


valor1:
sub $t1, $s0, 10       # consumo -= 10
addi, $t2, $t1, 7      # valor = consumo + 7

li $v0, 1   # printando um inteiro
move $a0, $t2 # printando $t1
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall
j exit

valor2:
sub $t1, $s0, 30       # consumo -= 30
sll $t1, $t1, 1        # valor = consumo * 2
addi, $t2, $t1, 27      # valor = consumo + 7

li $v0, 1   # printando um inteiro
move $a0, $t2 # printando $t1
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall
j exit

exit: 

.data
line: .asciiz "\n"
