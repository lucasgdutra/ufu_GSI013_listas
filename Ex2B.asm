#Davi Falcao - 12121BSI233
#Guilherme Castilho Machado - 12021BSI225
#Henrique Costa Fernandes de Sousa - 11821BSI263
#Lucas Gabriel Dutra de Souza - 12121BSI226
#Thiago Flauzino Oliveira Dutra - 12011BSI287

#2) Considere que as variáveis a, b, c, d, e, f não estejam associadas a nenhum dos registradores. Utilizando as operações
#load e store para realizar a movimentação de dados. Considere também que as variáveis são do tipo inteiro e estão
#armazenadas sequencialmente na memória a partir do endereço 32. Escreva os seguintes códigos em assembly do MIPS.

# b) f = (a + b) – (c + d – e)
lw $t0,32($s0) #a
lw $t1,36($s1) #b
lw $t2,40($s2) #c
lw $t3,44($s3) #d
lw $t4,58($s4) #f
lw $t5,52($s5) #e
sw $t5,52($s5)