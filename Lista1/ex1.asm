.text

main: 

li $v0, 5  # lendo um inteiro
syscall

move $s0, $v0  # movendo inteiro para $s0 = n

add $t0, $zero, $zero  #i=0
add $t2, $zero, $zero  #result=0

#fazer um laço
loop :

slt $t1,$t0, $s0
beq $t1, $zero, exit #se i>n, para o programa
beq $t0, $s0, exit #se i=n, para o programa

li $v0, 5  # lendo os inteiros
syscall

move $s1, $v0  # movendo o o inteiro para $s1 = x

add $t2, $t2, $s1  #  result += inteiro
addi $t0, $t0, 1  #inicio -> i+=1
j loop

exit: 
li $v0, 1   # printando um inteiro
move $a0, $t2 # printando $t2
syscall

la $v0, 4   # quebra de linha
la $a0, line  
syscall



.data

line: .asciiz "\n"
