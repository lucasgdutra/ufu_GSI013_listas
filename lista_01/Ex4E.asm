#Davi Falcao - 12121BSI233
#Guilherme Castilho Machado - 12021BSI225
#Henrique Costa Fernandes de Sousa - 11821BSI263
#Lucas Gabriel Dutra de Souza - 12121BSI226
#Thiago Flauzino Oliveira Dutra - 12011BSI287

#4) Considere que vetor V esteja associado ao registrador base $s6, e as variáveis a, b, c, d estejam associadas aos
#registradores $s0, $s1, $s2, $s3. Converta a instrução em linguagem C para MIPS.

#V=$s6
#a=$s0
#b=$s1
#c=$s2
#d=$s3s

# e)
# if( V[8] > b) {
# a = a + b + c;
# V[8] = V[8] + a;
# } else {
# a = a – b – c;
# V[8] = V[8] + a;
# }

lw $t1,32($s6) # V[8]
li $t2 12 # armazena constante 12 em registrador
ble $t1,$t2 Else #compara se $t1 é menor ou igual 12
add $s0,$s0,$s1
add $s0,$s0,$s2
move $t1,$s0
sw $t1,32($s6) #retorna v[8] para $s6
j Exit
Else: sub $s0,$s0,$s1
sub $s0,$s0,$s2
move $t1,$s0
sw $t1,32($s6) #retorna v[8] para $s6
Exit: