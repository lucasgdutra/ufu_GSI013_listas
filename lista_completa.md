- Davi Falcao - 12121BSI233
- Guilherme Castilho Machado - 12021BSI225
- Henrique Costa Fernandes de Sousa - 11821BSI263
- Lucas Gabriel Dutra de Souza - 12121BSI226
- Thiago Flauzino Oliveira Dutra - 12011BSI287

# 1) Considere que as variáveis a, b, c, d, e, f são associadas aos registradores $s0, $s1, $s2, $s3, $s4, $s5.
## Escreva os seguintes códigos em assembly do MIPS.

>a=$s0
b=$s1
c=$s2
d=$s3
e=$s4
f=$s5


a) `f = (a – b) + (c + d)`

```asm
$s5 = ($s0 - $s1) + ($s2 + $s3)
add $t0,$s2,$s3 # soma $s2 com $s3 e guarda em $t0
sub $t1,$s0,$s1 # subtrai $s1 de $s0 e guarda em $t1
add $s5,$t0,$t1 # soma $t0 com $t1 e guarda em $s5
```

b) `f = (a + b) – (c + d - e)`

```asm
# $s5 = ($s0 + $s1) – ($s2 + $s3 - $s4)
add $t0,$s0,$s1 # soma $s0 com $s1 e guarda em $t0
add $t1,$s2,$s3 # soma $s2 com $s3 e guarda em $t1
sub $t2,$t1,$s4 # subtrai $s4 de $t1 e guarda em $t2
sub $s5,$t0,$t2 # subtrai $t2 de $t0 e guarda em $s5
```

# 2) Considere que as variáveis a, b, c, d, e, f não estejam associadas a nenhum dos registradores. Utilizando as operações load e store para realizar a movimentação de dados. Considere também que as variáveis são do tipo inteiro e estão armazenadas sequencialmente na memória a partir do endereço 32.

## Escreva os seguintes códigos em assembly do MIPS.

a) `f = (a – b) + (c + d)`

```asm
lw $s0,32($sp) # guarda no registrador $s0 o valor registrado em memória no endereço 32, correspondente a letra a
lw $s1,36($sp) # guarda no registrador $s1 o valor registrado em memória no endereço 36, correspondente a letra b
lw $s2,40($sp) # guarda no registrador $s2 o valor registrado em memória no endereço 40, correspondente a letra c
lw $s3,44($sp) # guarda no registrador $s3 o valor registrado em memória no endereço 44, correspondente a letra d
lw $s4,48($sp) # guarda no registrador $s4 o valor registrado em memória no endereço 48, correspondente a letra e
lw $s5,52($sp) # guarda no registrador $s5 o valor registrado em memória no endereço 52, correspondente a letra f


add $t0,$s2,$s3 # soma $s2 com $s3 e guarda em $t0
sub $t1,$s0,$s1 # subtrai $s1 de $s0 e guarda em $t1
add $s5,$t0,$t1 # soma $t0 com $t1 e guarda em $s5

sw $s5,52($sp) # guarda na memória resultado da operacao
```

b) `f = (a + b) – (c + d – e)`

```asm
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

sw $s5,52($sp) # guarda na memória resultado da operacao
```

# 3) Considere dois vetores A e B de inteiros, com endereço de base 32 e 128 respectivamente. A variável f está na posição 256.
## Escreva os seguintes códigos em assembly do MIPS.

a) `A[16] = B[4] – f`
```asm
la $s0,32($sp) #guarda no registrador endereço de A
la $s1,128($sp) #guarda no registrador endereço de B
la $s2,256($sp) #guarda no registrador endereço de f

lw $t0, 64($s0) #guarda no registrador valor de A[16]
lw $t1, 16($s1) #guarda no registrador valor de B[4]
lw $t2, 0($s2) #guarda no registrador valor de f

sub $t0,$t1,$t2 #guarda em $t0 o resultado de B[4] – f

sw $t0, 64($s0)# armazena resultado em A[16]
```

b) `B[8] = A[14] + B[12] + h`

```asm
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
```

# 4) Considere que vetor V esteja associado ao registrador base $s6, e as variáveis a, b, c, d estejam associadas aos registradores $s0, $s1, $s2, $s3.

## Converta a instrução em linguagem C para MIPS.

>V=$s6
a=$s0
b=$s1
c=$s2
d=$s3


a)
```c
if( a == b)
    a = b + c;
else
    a = b – c;
```
```asm
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
```