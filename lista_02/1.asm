#1)	Ler um número inteiro do teclado,
#caso a opção lida seja diferente de zero preencher três posições pares de um vetor de 21 posições com o índice de sua posição multiplicado por 4.
# Se a opção lida for igual de zero preencher 3 posições ímpares com o número 13.
#Inicialize o vetor com todas as posições igual a zero e imprima o vetor antes e após as mudanças feitas.
#Utilize um laço para preencher o vetor e faça a impressão por meio de um procedimento.
#O programa será executado 3 vezes e cada vez que for executado deverá escolher  3 posições diferentes do vetor para ser preenchida.

.data
 myArray:
.align 2
.space 84

.text
move $t0,$zero #indice do array
move $t1,$zero #valor a ser alocado no array]
li,$t2,84 #tamanho do array

li $v0,5 #Lê inteiro
syscall
move $t3,$v0 #inteiro está em t3

loop:
beq $t0,$t2, saiDoLoop
sw $t1, myArray($t0)
addi $t0,$t0,4
addi $t1,$t1,0
j loop

saiDoLoop:

move $t0,$zero
imprime:
beq $t0,$t2, saiDaImpressao
li,$v0,1
lw $a0,myArray($t0)
syscall

addi $t0,$t0,4
j imprime

saiDaImpressao:

bne $t0,$zero, labelPar
beq $t0,$zero, labelImpar

labelPar:

labelImpar:

move $t0,$zero
imprime:
beq $t0,$t2, saiDaImpressao
li,$v0,1
lw $a0,myArray($t0)
syscall

addi $t0,$t0,4
j imprime

saiDaImpressao:
