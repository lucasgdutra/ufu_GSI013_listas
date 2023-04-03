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
    resultado: .asciiz "Resultado da operacao: \n"
    numeroX: .asciiz "Digite o numero x: "
    numeroY: .asciiz "Digite o numero y: "


.text

    jal imprimir_menu #chama a funcao imprimir_menu
    jal ler_inteiro #recebe a opcao escolhida
    move $t0, $v0 #salva a opcao escolhida em registrador temporario

    la $a0, numeroX #carrega o endereço da mensagem na variavel a0
    jal imprimir_mensagem #chama a funcao imprimir_mensagem
    jal ler_inteiro #recebe o primeiro numero
    move $t1, $v0 #salva o primeiro numero em $t1

    la $a0, numeroY #carrega o endereço da mensagem na variavel a0
    jal imprimir_mensagem #chama a funcao imprimir_mensagem
    jal ler_inteiro #recebe o segundo numero
    move $t2, $v0 #salva o segundo numero em $t2

    move $a0, $t1 #salva o primeiro numero em $a0
    move $a1, $t2 #salva o segundo numero em $a1

    li $t1, 1 #salva o numero 1 em registrador temporario
    li $t2, 2 #salva o numero 2 em registrador temporario
    li $t3, 3 #salva o numero 3 em registrador temporario
    li $t4, 4 #salva o numero 4 em registrador temporario

    beq $t0, $t1, somar_dois_numeros #se a opcao escolhida for 1, pula para a funcao somar_dois_numeros
    beq $t0, $t2, multiplicar_dois_numeros #se a opcao escolhida for 2, pula para a funcao multiplicar_dois_numeros
    beq $t0, $t3, subtrair_dois_numeros #se a opcao escolhida for 3, pula para a funcao subtrair_dois_numeros
    beq $t0, $t4, elevar_numero_x_a_numero_y #se a opcao escolhida for 4, pula para a funcao elevar_numero_x_a_numero_y

    la $a0, opcaoInvalida #carrega o endereço da mensagem na variavel a0
    jal imprimir_mensagem #chama a funcao imprimir_mensagem
    j fim_programa #se a opcao escolhida nao for nenhuma das anteriores, pula para a funcao fim_programa

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

    imprimir_resultado:
    move $t0, $a0 #salva o argumento da funcao em registrador temporario
    la $a0, resultado #carrega o endereço da mensagem na variavel a0
    jal imprimir_mensagem #chama a funcao imprimir_mensagem
    move $a0, $t0 #salva o resultado da operacao em $a0
    jal imprimir_inteiro #chama a funcao imprimir_inteiro
    j fim_programa #pula para a funcao fim_programa

    imprimir_menu:
    move $t0, $ra #salva o endereço de retorno em registrador temporario
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
    move $ra, $t0 #restaura o endereço de retorno
    jr $ra #retorna para o endereço de retorno

    somar_dois_numeros:
    add $t0, $a0, $a1 #soma os dois numeros e salva o resultado em $v0
    move $a0, $t0 #salva o resultado da operacao em $a0
    j imprimir_resultado #imprime o resultado da operacao


    multiplicar_dois_numeros:
    mult $a0, $a1 #multiplica os dois numeros, salva o resultado em registradores HI e LO
    mflo $a0 #salva o resultado da multiplicacao em $v0
    j imprimir_resultado #imprime o resultado da operacao


    subtrair_dois_numeros:
    sub $t0, $a0, $a1 #subtrai os dois numeros e salva o resultado em $v0
    move $a0, $t0 #salva o resultado da operacao em $a0
    j imprimir_resultado #imprime o resultado da operacao


    elevar_numero_x_a_numero_y:
    li $t1, 0 #cria um contador
    li $t2, 1 #cria um acumulador
    j loop_elevar_numero_x_a_numero_y #pula para o inicio do loop

    loop_elevar_numero_x_a_numero_y:
    beq $t1, $a1, fim_elevar_numero_x_a_numero_y #se o contador eh igual ao expoente entao sai do loop
    mult $t2, $a0 #multiplica o acumulador pelo numero base
    mflo $t2 #salva o resultado da multiplicacao em $t2
    add $t1, $t1, 1 #incrementa o contador
    j loop_elevar_numero_x_a_numero_y #volta para o inicio do loop

    fim_elevar_numero_x_a_numero_y:
    move $a0, $t2 #salva o resultado da potenciacao em $v0
    j imprimir_resultado #imprime o resultado da operacao


    fim_programa:
    li $v0, 10 #salva numero 10 em registrador para preparar chamada syscall, numero 10 equivale a função syscall "exit"
    syscall #chama funcao syscall que vai finalizar o programa