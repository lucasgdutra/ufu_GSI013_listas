#5)	Imprima na tela um menu com 4 opções da seguinte forma:

#1 – Escolha a opção 1 para somar dois números inteiros
#2 – Escolha a opção 2 para multiplicar dois números inteiros
#3 – Escolha a opção 3 para subtrair dois números inteiros
#4 – Escolha a opção 3 para elevar um número inteiro x a um número inteiro y

#Cada opção deve ser codificada utilizando uma função. Além disso, os valores para realizar as operações matemáticas devem ser informados pelo teclado.


.data
    mensagem: .asciiz "Escolha uma opcao: \n"
    opcao1: .asciiz "1 - Somar dois numeros inteiros\n"
    opcao2: .asciiz "2 - Multiplicar dois numeros inteiros\n"
    opcao3: .asciiz "3 - Subtrair dois numeros inteiros\n"
    opcao4: .asciiz "4 - Elevar um numero inteiro x a um numero inteiro y\n"
    opcao: .asciiz "Opcao: "
    opcaoInvalida: .asciiz "Opcao invalida\n"
    opcaoEscolhida: .asciiz "Opcao escolhida: \n"


.text

    jal imprimir_menu #chama a funcao imprimir_menu
    jal ler_inteiro #recebe a opcao escolhida
    move $t0, $v0 #salva a opcao escolhida em registrador temporario

    ler_inteiro:
	li $v0, 5 #salva numero 5 em registrador para preparar chamada syscall, numero 5 equivale a função syscall "read integer"
	syscall #chama funcao syscall que vai ler um numero inteiro da entrada, resultado salvo em registrador $v0
    jr $ra #retorna para o endereço de retorno

    imprimir_mensagem:
    li $v0, 4 #salva numero 4 em registrador para preparar chamada syscall, numero 4 equivale a função syscall "print string"
    syscall #chama funcao syscall que vai imprimir uma mensagem na saida
    jr $ra #retorna para o endereço de retorno

    imprimir_menu:
    la $a0, mensagem #carrega o endereço da mensagem na variavel a0
    jal imprimir_mensagem #chama a funcao imprimir_mensagem
    la $a0, opcao1 #carrega o endereço da mensagem na variavel a0
    jal imprimir_mensagem #chama a funcao imprimir_mensagem
    la $a0, opcao2 #carrega o endereço da mensagem na variavel a0
    jal imprimir_mensagem #chama a funcao imprimir_mensagem
    la $a0, opcao3 #carrega o endereço da mensagem na variavel a0
    jal imprimir_mensagem #chama a funcao imprimir_mensagem
    la $a0, opcao4 #carrega o endereço da mensagem na variavel a0
    jal imprimir_mensagem #chama a funcao imprimir_mensagem

    somar_dois_numeros:
    add $v0, $a0, $a1 #soma os dois numeros e salva o resultado em $v0
    jr $ra #retorna para o endereço de retorno

    multiplicar_dois_numeros:
    mult $a0, $a1 #multiplica os dois numeros, salva o resultado em registradores HI e LO
    mflo $v0 #salva o resultado da multiplicacao em $v0
    jr $ra #retorna para o endereço de retorno

    subtrair_dois_numeros:
    sub $v0, $a0, $a1 #subtrai os dois numeros e salva o resultado em $v0
    jr $ra #retorna para o endereço de retorno

    elevar_numero_x_a_numero_y:
    li $t1, 1 #salva o valor 1 em registrador temporario
    li $t2, 0 #salva o valor 0 em registrador temporario
    loop:
    beq $t2, $a1, fim #se o contador for igual ao expoente, vai para fim
    add $t2, $t2, 1 #incrementa o contador
    mult $t1, $a0 #multiplica o contador pelo numero base
    mflo $t1 #salva o resultado da multiplicacao em registrador temporario
    j loop #volta para o inicio do loop
    fim:
    move $v0, $t1 #salva o resultado da multiplicacao em $v0
    jr $ra #retorna para o endereço de retorno


