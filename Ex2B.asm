#Davi Falcao - 12121BSI233
#Guilherme Castilho Machado - 12021BSI225
#Henrique Costa Fernandes de Sousa - 11821BSI263
#Lucas Gabriel Dutra de Souza - 12121BSI226
#Thiago Flauzino Oliveira Dutra - 12011BSI287

#2) Considere que as variáveis a, b, c, d, e, f não estejam associadas a nenhum dos registradores. Utilizando as operações
#load e store para realizar a movimentação de dados. Considere também que as variáveis são do tipo inteiro e estão
#armazenadas sequencialmente na memória a partir do endereço 32. Escreva os seguintes códigos em assembly do MIPS.

# b) f = (a + b) – (c + d – e)

lw $s0,32($sp) # guarda no registrador $s0 o valor registrado em memória no endereço 32, correspondente a letra a
lw $s1,36($sp) # guarda no registrador $s1 o valor registrado em memória no endereço 36, correspondente a letra b
lw $s2,40($sp) # guarda no registrador $s2 o valor registrado em memória no endereço 40, correspondente a letra c
lw $s3,44($sp) # guarda no registrador $s3 o valor registrado em memória no endereço 44, correspondente a letra d
lw $s4,48($sp) # guarda no registrador $s4 o valor registrado em memória no endereço 48, correspondente a letra e
lw $s5,52($sp) # guarda no registrador $s5 o valor registrado em memória no endereço 52, correspondente a letra f

# $s5 = ($s0 + $s1) – ($s2 + $s3 - $s4)

add $t0,$s0,$s1 # soma $s0 com $s1 e guarda em $t0
add $t1,$s2,$s3 # soma $s2 com $s3 e guarda em $t1
sub $t2,$t1,$s4 # subtrai $s4 de $t1 e guarda em $t2
sub $s5,$t0,$t2 # subtrai $t2 de $t0 e guarda em $s5
