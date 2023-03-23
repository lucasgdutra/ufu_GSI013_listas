- Davi Falcao - 12121BSI233
- #Guilherme Castilho Machado - 12021BSI225
- Henrique Costa Fernandes de Sousa - 11821BSI263
- Lucas Gabriel Dutra de Souza - 12121BSI226
- Thiago Flauzino Oliveira Dutra - 12011BSI287

7. Complete a tabela para as seguintes instruções MIPS.
Quando um campo não existir no formato de instrução utilize na (não se aplica).
Para coluna categoria use A – Aritmética, T – Transferência de dados, L – Lógica, DC – Desvio condicional e D – Desvio.

Na sequencia explique como funciona cada uma das instruções:
Exemplo:
- add $s1, $s2, $s3
Soma o conteúdo dos registradores $s2 e $s3 e armazena no registrador $s1.

| Instrução          	| Categoria 	| Formato 	| op 	| rs   	| rt   	| rd   	| shamt 	| funct 	| endereço 	|
|--------------------	|-----------	|---------	|----	|------	|------	|------	|-------	|-------	|----------	|
| add $s1, $s2, $s3  	| A         	| R       	| 0  	| $s2  	| $s3  	| $s1  	| 0     	| 32    	| n.a.     	|
| sub $s1, $s2, $s3  	| A         	| R       	| 0  	|      	|      	|      	|       	| 34    	|          	|
| addi $s1, $s2, 10  	| A         	| I       	| 8  	|      	|      	|      	|       	| n.a    	|          	|
| lw $s1, 100($s2)   	| T         	| I       	| 35  	|      	|      	|      	|       	| n.a   	|          	|
| sw $s1, 100($s2)   	| T         	|         	|    	|      	|      	|      	|       	|       	|          	|
| and $s1, $s2, $s3  	| L         	|         	|    	|      	|      	|      	|       	|       	|          	|
| or $s1, $s2, $s3   	| L         	|         	|    	|      	|      	|      	|       	|       	|          	|
| nor $s1, $s2, $s3  	| L         	|         	|    	|      	|      	|      	|       	|       	|          	|
| andi $s1, $s2, 10  	| L         	|         	|    	|      	|      	|      	|       	|       	|          	|
| ori $s1, $s2, 10   	| L         	|         	|    	|      	|      	|      	|       	|       	|          	|
| sll $s1, $s2, 10   	| L         	|         	|    	|      	|      	|      	|       	|       	|          	|
| srl $s1, $s2, 10   	| L         	|         	|    	|      	|      	|      	|       	|       	|          	|
| beq $s1, $s2, L    	| DC         	|         	|    	|      	|      	|      	|       	|       	|          	|
| bnq $s1, $s2, 10   	| DC          	|         	|    	|      	|      	|      	|       	|       	|          	|
| slt $s1, $s2, $s3  	| L         	|         	|    	|      	|      	|      	|       	|       	|          	|
| slti $s1, $s2, 10  	| L         	|         	|    	|      	|      	|      	|       	|       	|          	|
| j L                	| D         	|         	|    	|      	|      	|      	|       	|       	|          	|
| jr $ra             	| D         	|         	|    	|      	|      	|      	|       	|       	|          	|
| jal L              	| D         	|         	|    	|      	|      	|      	|       	|       	|          	|

