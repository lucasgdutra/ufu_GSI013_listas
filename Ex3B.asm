#Davi Falcao - 12121BSI233
#Guilherme Castilho Machado - 12021BSI225
#Henrique Costa Fernandes de Sousa - 11821BSI263
#Lucas Gabriel Dutra de Souza - 12121BSI226
#Thiago Flauzino Oliveira Dutra - 12011BSI287

#3) Considere dois vetores A e B de inteiros, com endereço de base 32 e 128 respectivamente.
#A variável f está na posição 256. Escreva os seguintes códigos em assembly do MIPS.

# b) B[8] = A[14] + B[12] + h

lw $t0,88($s1)
lw $t1,176($s2)
lw $t2,0($s3)
add $t3,$t0,$t1
add $t3,$t2,$t3
sw $t3,160($s0)