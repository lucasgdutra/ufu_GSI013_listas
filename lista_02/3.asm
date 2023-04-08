#3)	Leia do teclado dois vetores de inteiros de 5 posições.
# Tendo como base o primeiro vetor informe o usuário a relação entre os números que se encontram na mesma posição.
# Por exemplo o primeiro elemento do primeiro vetor é maior, menor ou igual ao primeiro elemento do segundo vetor.
# Faça isso essa comparação para todos os elementos do vetor.
# Utilize uma função para fazer estas comparações.

.data	
	
	saudacaovet1: .asciiz "Digite o vetor 1: "
	
	saudacaovet2: .asciiz "Digite o vetor 2: "
		
	meuArray:
	.align 2
	.space 20 #alocando espaço de 5 posiçoes
	
	meuArray2:
	.align 2
	.space 20 #alocando espaço de 5 posiçoes
	
	menor: .asciiz "menor\n"
	maior: .asciiz "maior\n"
    	igual: .asciiz "igual\n"
	
	
	
.text 
	

	
	li $t2,20 #tamanho do array
	
	move $t0,$zero #indice do array	
	move $t1,$zero
	
	
	
	move $t3,$zero
	move $t5,$zero	
	
	
	
	
	loop:
		beq $t0,$t2,loop2 #condição de saida
		
		li $v0, 4 #recebe numero
		la $a0,saudacaovet1
		syscall
		
		
		
		li $v0,5
		syscall
		
		move $t1,$v0
		
		sw $t1, meuArray($t0)
		addi $t0,$t0,4
			
		j loop
		
		
		
	loop2: 	
					
		beq $t3,$t2,compara #condição de saida
		
		li $v0, 4 #recebe numero
		la $a0,saudacaovet2
		syscall
		
		
		
		li $v0,5
		syscall
		
		move $t4,$v0
		
		sw $t4, meuArray2($t3)
		addi $t3,$t3,4
			
		j loop
		

	
			
	compara:
		
		li $t0,0
		la $t2,meuArray($t0)
		la $t3,meuArray2($t0)
		
		loop3:
		lw $a0, ($t2) #carrega valor do vetor1
    		lw $a1, ($t3) #carrega valor do vetor2
		jal compara_vetores #chama função compara_vetores
   		addi $t0, $t0, 1 #incrementa contador
   		addi $t2, $t2, 4 #incrementa indice
		addi $t3, $t3, 4 #incrementa indice
		beq $t0, 5, fim
		j loop3
	
imprime_menor:
    li $v0, 4 #print string
    la $a0, menor #carrega mensagem "menor"
    syscall
    jr $ra

imprime_maior:
    li $v0, 4 #print string
    la $a0, maior #carrega mensagem "menor"
    syscall
    jr $ra

imprime_igual:
    li $v0, 4 #print string
    la $a0, igual #carrega mensagem "menor"
    syscall
    jr $ra

compara_vetores:
    slt $t1, $a0, $a1 #se a0 < a1, então $t1 = 1
    beq $t1, 1, imprime_menor #se $t1 = 1, então imprime_menor
    slt $t1, $a1, $a0 #se a1 < a0, então $t1 = 1
    beq $t1, 1, imprime_maior #se $t1 = 1, então imprime_maior
    j imprime_igual #se não, imprime_igual

 fim:
				
			
			
		
			
							
			
		
					
													
				

	

	
