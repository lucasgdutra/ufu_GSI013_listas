#Davi Falcao - 12121BSI233
#Guilherme Castilho Machado - 12021BSI225
#Henrique Costa Fernandes de Sousa - 11821BSI263
#Lucas Gabriel Dutra de Souza - 12121BSI226
#Thiago Flauzino Oliveira Dutra - 12011BSI287

#2) Considere que as variáveis a, b, c, d, e, f não estejam associadas a nenhum dos registradores.
#Utilizando as operações load e store para realizar a movimentação de dados.
#Considere também que as variáveis são do tipo inteiro e estão armazenadas sequencialmente na memória a partir do endereço 32.
# Escreva os seguintes códigos em assembly do MIPS.

# a) f = (a – b) + (c + d)
lw $s0,32($sp) # guarda no registrador $s0 o valor registrado em memória no endereço 32, correspondente a letra a
lw $s1,36($sp) # guarda no registrador $s1 o valor registrado em memória no endereço 36, correspondente a letra b
lw $s2,40($sp) # guarda no registrador $s2 o valor registrado em memória no endereço 40, correspondente a letra c
lw $s3,44($sp) # guarda no registrador $s3 o valor registrado em memória no endereço 44, correspondente a letra d
lw $s4,48($sp) # guarda no registrador $s4 o valor registrado em memória no endereço 48, correspondente a letra e
lw $s5,52($sp) # guarda no registrador $s5 o valor registrado em memória no endereço 52, correspondente a letra f


add $t0,$s2,$s3 # soma $s2 com $s3 e guarda em $t0
sub $t1,$s0,$s1 # subtrai $s1 de $s0 e guarda em $t1
add $s5,$t0,$t1 # soma $t0 com $t1 e guarda em $s5