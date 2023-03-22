#Davi Falcao - 12121BSI233
#Guilherme Castilho Machado - 12021BSI225
#Henrique Costa Fernandes de Sousa - 11821BSI263
#Lucas Gabriel Dutra de Souza - 12121BSI226
#Thiago Flauzino Oliveira Dutra - 12011BSI287

# 1) Considere que as variáveis a, b, c, d, e, f são associadas aos registradores $s0, $s1, $s2, $s3, $s4, $s5.
# Escreva os seguintes códigos em assembly do MIPS.

#a=$s0
#b=$s1
#c=$s2
#d=$s3
#e=$s4
#f=$s5

# b) f = (a + b) – (c + d - e)
# $s5 = ($s0 + $s1) – ($s2 + $s3 - $s4)

add $t0,$s0,$s1 # soma $s0 com $s1 e guarda em $t0
add $t1,$s2,$s3 # soma $s2 com $s3 e guarda em $t1
sub $t2,$t1,$s4 # subtrai $s4 de $t1 e guarda em $t2
sub $s5,$t0,$t2 # subtrai $t2 de $t0 e guarda em $s5