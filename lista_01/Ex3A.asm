#Davi Falcao - 12121BSI233
#Guilherme Castilho Machado - 12021BSI225
#Henrique Costa Fernandes de Sousa - 11821BSI263
#Lucas Gabriel Dutra de Souza - 12121BSI226
#Thiago Flauzino Oliveira Dutra - 12011BSI287

#3) Considere dois vetores A e B de inteiros, com endereço de base 32 e 128 respectivamente.
#A variável f está na posição 256. Escreva os seguintes códigos em assembly do MIPS.

# a) A[16] = B[4] – f

la $s0,32($sp) #guarda no registrador endereço de A
la $s1,128($sp) #guarda no registrador endereço de B
la $s2,256($sp) #guarda no registrador endereço de f

lw $t0, 64($s0) #guarda no registrador valor de A[16]
lw $t1, 16($s1) #guarda no registrador valor de B[4]
lw $t2, 0($s2) #guarda no registrador valor de f

sub $t0,$t1,$t2 #guarda em $t0 o resultado de B[4] – f

sw $t0, 64($s0)# armazena resultado em A[16]
