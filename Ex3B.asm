#Davi Falcao - 12121BSI233
#Guilherme Castilho Machado - 12021BSI225
#Henrique Costa Fernandes de Sousa - 11821BSI263
#Lucas Gabriel Dutra de Souza - 12121BSI226
#Thiago Flauzino Oliveira Dutra - 12011BSI287

#3) Considere dois vetores A e B de inteiros, com endereço de base 32 e 128 respectivamente.
#A variável f está na posição 256. Escreva os seguintes códigos em assembly do MIPS.

# b) B[8] = A[14] + B[12] + h

la $s0,32($sp) #guarda no registrador endereço de A
la $s1,128($sp) #guarda no registrador endereço de B
la $s2,256($sp) #guarda no registrador endereço de f

lw $t0, 32($s0) #guarda no registrador valor de B[8]
lw $t1, 56($s1) #guarda no registrador valor de A[14]
lw $t2, 48($s1) #guarda no registrador valor de B[12]
lw $t3, 0($s2) #guarda no registrador valor de f, como não foi informado endereço de h, foi utilizado f no lugar

add $t4,$t1,$t2  #guarda em $t0 o resultado de A[14] + B[12]
add $t0,$t3,$t4 #guarda em $t0 o resultado de $t4+ f

sw $t0, 32($s0)# armazena resultado em B[8]