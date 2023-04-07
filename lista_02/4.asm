#4)	Codifique um programa que calcula o valor da equação 3x3 – 4y2 + 10z  –  2 utilizando assemby MIPS.
# X, Y e Z devem ser informados pelo usuário.
# Além disso, ao informar o resultado o programa deve perguntar se o usuário deseja realizar um novo cálculo.
# Caso escolha sim então deve solicitar novamente os valores de X, Y e Z, caso contrário encerra o programa

.data
prompt1: .asciiz "Digite o valor de x: "
prompt2: .asciiz "Digite o valor de y: "
prompt3: .asciiz "Digite o valor de z: "
result: .asciiz "O resultado da equação é: "
newline: .asciiz "\n"
prompt4: .asciiz "Deseja realizar um novo cálculo? (sim/nao): "

.text
.globl main

main:
loop:
# solicita valor de x e armazena em $s0
li $v0, 4
la $a0, prompt1
syscall
li $v0, 5
syscall
move $s0, $v0

# solicita valor de y e armazena em $s1
li $v0, 4
la $a0, prompt2
syscall
li $v0, 5
syscall
move $s1, $v0

# solicita valor de z e armazena em $s2
li $v0, 4
la $a0, prompt3
syscall
li $v0, 5
syscall
move $s2, $v0

# calcula 3x3 e armazena em $t0
mul $t0, $s0, $s0
mul $t0, $t0, $s0
li $t1, 3
mul $t0, $t0, $t1

# calcula 4y2 e armazena em $t2
mul $t2, $s1, $s1
li $t1, 4
mul $t2, $t2, $t1

# subtrai 4y2 de 3x3 e armazena em $t0
sub $t0, $t0, $t2

# multiplica z por 10 e armazena em $t2
li $t1, 10
mul $t2, $s2, $t1

# adiciona 10z a 3x3 - 4y2 e armazena em $t0
add $t0, $t0, $t2

# subtrai 2 de 3x3 - 4y2 + 10z e armazena em $t0
li $t1, 2
sub $t0, $t0, $t1

# Aqui sera mostrado o resultado
li $v0, 4
la $a0, result
syscall
li $v0, 1
move $a0, $t0
syscall
la $a0, newline
li $v0, 4
syscall

# Aqui sera perguntado ao usuário se ele deseja realizar um novo cálculo
prompt:
li $v0, 4
la $a0, prompt4
syscall
li $v0, 12
syscall
move $s3, $v0
beq $s3, 115, loop # se o usuário digitar 'sim', volta ao início do loop
beq $s3, 110, exit # se o usuário digitar 'nao', sair do programa
