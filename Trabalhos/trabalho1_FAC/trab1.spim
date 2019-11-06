.text

main: 

li $v0, 5  # lendo um inteiro
syscall

move $t0, $v0  # movendo inteiro para $t0

li $v0, 5  # lendo o 2o inteiro
syscall

move $t1, $v0  # movendo o 2o inteiro para $t1

li $v0, 5  # lendo o 3o inteiro
syscall

move $t2, $v0  # movendo o 3o inteiro para $t2


add $t3, $t0, $t1  # adição de $t0 e $t1

la $v0, 4   # printando uma string
la $a0, ADD  
syscall

li $v0, 1   # printando um inteiro
move $a0, $t3 # printando $t3
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall

sub $t3, $t0, $t1

la $v0, 4   # printando uma string
la $a0, SUB  #printando sub
syscall

li $v0, 1   # printando um inteiro
move $a0, $t3 # printando $t3
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall

and $t3, $t0, $t1

la $v0, 4   # printando uma string
la $a0, AND  #printando and
syscall

li $v0, 1   # printando um inteiro
move $a0, $t3 # printando $t3
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall

or $t3, $t0, $t1

la $v0, 4   # printando uma string
la $a0, OR  #printando add
syscall

li $v0, 1   # printando um inteiro
move $a0, $t3 # printando $t3
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall

xor $t3, $t0, $t1

la $v0, 4   # printando uma string
la $a0, XOR  #printando add
syscall

li $v0, 1   # printando um inteiro
move $a0, $t3 # printando $t3
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall

andi $t3, $t2, 31

la $v0, 4   # printando uma string
la $a0, MASK  #printando addi
syscall

li $v0, 1   # printando um inteiro
move $a0, $t3 # printando $t3
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall

sll $t4, $t0, $t3

la $v0, 4   # printando uma string
la $a0, SLL1  #printando addi
syscall

li $v0, 1   # printando um inteiro
move $a0, $t3 # printando $t4
syscall

la $v0, 4   # printando uma string
la $a0, SLL2  #printando addi
syscall

li $v0, 1   # printando um inteiro
move $a0, $t4 # printando $t4
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall

srl $t4, $t1, $t3

la $v0, 4   # printando uma string
la $a0, SRL1  #printando addi
syscall

li $v0, 1   # printando um inteiro
move $a0, $t3 # printando $t3
syscall

la $v0, 4   # printando uma string
la $a0, SRL2  #printando addi
syscall

li $v0, 1   # printando um inteiro
move $a0, $t4 # printando $t4
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall

.data
ADD: .asciiz "ADD: "
SUB: .asciiz "SUB: "
AND: .asciiz "AND: "
OR: .asciiz "OR: "
XOR: .asciiz "XOR: "
MASK: .asciiz "MASK: "
SLL1: .asciiz "SLL("
SLL2: .asciiz "): "
SRL1: .asciiz "SRL("
SRL2: .asciiz "): "
line: .asciiz "\n"
