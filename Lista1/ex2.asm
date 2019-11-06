.text

main: 

li $v0, 5  # lendo um inteiro
syscall

move $t0, $v0  # movendo inteiro para $t0

li $v0, 5  # lendo o 2o inteiro
syscall

move $t1, $v0  # movendo o 2o inteiro para $t1

sub $t3, $t0, $t1

li $v0, 1   # printando um inteiro
move $a0, $t3 # printando $t3
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall

.data
line: .asciiz "\n"
