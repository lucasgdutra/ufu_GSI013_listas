#2)	Leia três números do teclado e imprima na tela o maior dentre eles.
#Se o número lido for maior do que 15 imprima a seguinte mensagem  na tela: “O número lido é maior do que 15!!!”.

.data
    mensagem: .asciiz "\nO numero lido e maior que 15!!!\n" #mensagem a ser impressa na tela
    mensagem2: .asciiz "Digite um numero inteiro: " #mensagem a ser impressa na tela
    mensagem3: .asciiz "Digite outro numero inteiro: " #mensagem a ser impressa na tela
    mensagem4: .asciiz "Digite mais um numero inteiro: " #mensagem a ser impressa na tela
    mensagem5: .asciiz "O maior numero eh: " #mensagem a ser impressa na tela

.text
    #leitura do primeiro numero
    la $a0, mensagem2 #carrega endereço da mensagem na memoria para o registrador $a0
    jal imprimir_mensagem #chama funcao imprimir_mensagem, que vai pedir para o usuario digitar um numero inteiro
    jal ler_inteiro #chama funcao ler_inteiro
    move $t0, $v0 #salva valor lido em registrador temporario

    #leitura do segundo numero
    la $a0, mensagem3 #carrega endereço da mensagem na memoria para o registrador $a0
    jal imprimir_mensagem #chama funcao imprimir_mensagem, que vai pedir para o usuario digitar um numero inteiro
    jal ler_inteiro #chama funcao ler_inteiro
    move $t1, $v0 #salva valor lido em registrador temporario

    #leitura do terceiro numero
    la $a0, mensagem4 #carrega endereço da mensagem na memoria para o registrador $a0
    jal imprimir_mensagem #chama funcao imprimir_mensagem, que vai pedir para o usuario digitar um numero inteiro
    jal ler_inteiro #chama funcao ler_inteiro
    move $t2, $v0 #salva valor lido em registrador temporario

    #preparacao para comparacao
    add $a0, $t0, $zero #salva valor de $t0 em $a0
    add $a1, $t1, $zero #salva valor de $t1 em $a1
    add $a2, $t2, $zero #salva valor de $t2 em $a2

    #comparacao
    jal compara_tres #chama funcao compara_tres, que vai comparar os tres numeros lidos
    move $s0, $v0 #salva valor retornado por compara_tres em registrador $a0


    #impressao do maior numero
    la $a0, mensagem5 #carrega endereço da mensagem na memoria para o registrador $a0
    jal imprimir_mensagem #chama funcao imprimir_mensagem, que vai pedir para o usuario digitar um numero inteiro
    move $a0, $s0 #salva valor retornado por compara_tres em registrador $a0
    jal imprimir_inteiro #imprime numero retornado por compara_tres

    #impressao da mensagem caso o numero lido seja maior que 15
    slti $t0, $s0, 15 #salva 1 em $t0 se $s0 for menor que 15, senao salva 0
    beq $t0, $zero, imprimir_maior_15 #se t0 for igual a zero, então $s0 é maior que 15, então pula para a label imprimir_maior_15

    j end #pula para o final do programa

	ler_inteiro:
	li $v0, 5 #salva numero 5 em registrador para preparar chamada syscall, numero 5 equivale a função syscall "read integer"
	syscall #chama funcao syscall que vai ler um numero inteiro da entrada, resultado salvo em registrador $v0
    jr $ra #retorna para o endereço de retorno

    imprimir_inteiro:
    li $v0, 1 #salva numero 1 em registrador para preparar chamada syscall, numero 1 equivale a função syscall "print integer"
    syscall #chama funcao syscall que vai imprimir um numero inteiro na saida
    jr $ra #retorna para o endereço de retorno

    imprimir_mensagem:
    li $v0, 4 #salva numero 4 em registrador para preparar chamada syscall, numero 4 equivale a função syscall "print string"
    syscall #chama funcao syscall que vai imprimir uma mensagem na saida
    jr $ra #retorna para o endereço de retorno

    imprimir_maior_15:
    la $a0, mensagem #carrega endereço da mensagem na memoria para o registrador $a0
    jal imprimir_mensagem #chama funcao imprimir_mensagem, que vai imprimir mensagem na tela
    j end #pula para o final do programa

    retorna_a0:
    move $v0, $a0 #salva valor de $a0 em $v0
    jr $ra #retorna para o endereço de retorno

    retorna_a1:
    move $v0, $a1 #salva valor de $a1 em $v0
    jr $ra #retorna para o endereço de retorno

    retorna_a2:
    move $v0, $a2 #salva valor de $a2 em $v0
    jr $ra #retorna para o endereço de retorno

    compara_dois:
    slt $t0, $a0, $a1 #salva 1 em $t0 se $a0 for menor que $a1, senao salva 0
    beq $t0, $zero, retorna_a0 #se t0 for igual a zero, então $a0 é maior que $a1, então pula para a label retorna_a0
    j retorna_a1 #se t0 for diferente de zero, então $a1 é maior que $a0, então pula para a label retorna_a1

    compara_tres:
    move $s0, $ra #salva endereço de retorno em registrador temporario para nao perder o valor
    jal compara_dois #chama funcao compara_dois, que vai comparar $a0 e $a1
    move $a0, $v0 #salva valor retornado por compara_dois em registrador $a0
    move $a1, $a2 #salva valor de $a2 em registrador $a1
    jal compara_dois #chama funcao compara_dois, que vai comparar maior($a0, $a1) e $a2
    #resultado da comparacao salvo em $v0
    move $ra, $s0 #salva endereço de retorno salvo em registrador temporario
    jr $ra #retorna para o endereço de retorno

    end:
    li $v0, 10 #salva numero 10 em registrador para preparar chamada syscall, numero 10 equivale a função syscall "exit"
    syscall #chama funcao syscall que vai finalizar o programa
