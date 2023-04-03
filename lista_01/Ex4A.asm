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
#d=$s3


# a)
# if( a == b)
# a = b + c;
# else
# a = b – c;

# a)
# if( $s0 == $s1)
# $s0 = $s1 + $s2;
# else
# $s0 = $s1 – $s2;


bne $s0,$s1, Else
add $s0,$s1,$s2
j Exit
Else: sub $s0,$s1,$s2
Exit: