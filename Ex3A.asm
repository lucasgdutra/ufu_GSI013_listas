#Davi Falcao - 12121BSI233
#Guilherme Castilho Machado - 12021BSI225
#Henrique Costa Fernandes de Sousa - 11821BSI263
#Lucas Gabriel Dutra de Souza - 12121BSI226
#Thiago Flauzino Oliveira Dutra - 12011BSI287

#3) Considere dois vetores A e B de inteiros, com endereço de base 32 e 128 respectivamente.
#A variável f está na posição 256. Escreva os seguintes códigos em assembly do MIPS.

# a) A[16] = B[4] – f

lw $t0,144($s1) #b
lw $t1,256($s2) #f
sub $t2,$t0,$t1 #subtra��o
sw $t2,96($s0) #guarda em a