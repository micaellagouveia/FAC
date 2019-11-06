.text

main: 

li $v0, 5  # lendo um inteiro
syscall

move $s0, $v0  # movendo inteiro para $s0

add $t1, $zero, $zero
add $t2, $zero, $zero

beq $s0, $zero, e

operacao:

slti $t1, $s0, 36  # 1 -> n < 36
                   # 0 -> n > 36

bne $t1, $zero, d


slti $t1, $s0, 61  # 1 -> n < 61
                   # 0 -> n > 61

bne $t1, $zero, c

slti $t1, $s0, 86  # 1 -> n < 86
                   # 0 -> n > 86

bne $t1, $zero, be

slti $t1, $s0, 101 # 1 -> n < 101
                   # 0 -> n > 101

bne $t1, $zero, a

a:
li $v0, 4   # printando uma string
la $a0, A  #printando A
syscall

li $v0, 4   # quebra de linha
la $a0, line  
syscall 
j exit

be:
li $v0, 4   # printando uma string
la $a0, B  #printando B
syscall

li $v0, 4   # quebra de linha
la $a0, line  
syscall 
j exit

c:
la $v0, 4   # printando uma string
la $a0, C  #printando C
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall 
j exit

d:
la $v0, 4   # printando uma string
la $a0, D  #printando D
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall 
j exit

e:
la $v0, 4   # printando uma string
la $a0, E  #printando E
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall 
j exit 

exit: 

.data
line: .asciiz "\n"
A: .asciiz "A"
B: .asciiz "B"
C: .asciiz "C"
D: .asciiz "D"
E: .asciiz "E"
