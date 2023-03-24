- Davi Falcao - 12121BSI233
- Guilherme Castilho Machado - 12021BSI225
- Henrique Costa Fernandes de Sousa - 11821BSI263
- Lucas Gabriel Dutra de Souza - 12121BSI226
- Thiago Flauzino Oliveira Dutra - 12011BSI287

7. Complete a tabela para as seguintes instruções MIPS.
Quando um campo não existir no formato de instrução utilize na (não se aplica).
Para coluna categoria use A – Aritmética, T – Transferência de dados, L – Lógica, DC – Desvio condicional e D – Desvio.

Na sequencia explique como funciona cada uma das instruções:
Exemplo:
```mips
add $s1, $s2, $s3 #Soma o conteúdo dos registradores $s2 e $s3 e armazena no registrador $s1.
```


| Instrução          	| Categoria 	| Formato 	| op 	| rs   	| rt   	| rd   	| shamt 	| funct 	| endereço 	|
|--------------------	|-----------	|---------	|----	|------	|------	|------	|-------	|-------	|----------	|
| `add $s1, $s2, $s3`  	| A         	| R       	|  0  	| $s2  	| $s3  	| $s1  	| 0     	| 32    	| n.a.     	|
| `sub $s1, $s2, $s3`  	| A         	| R       	|  0  	| $s2  	| $s3  	| $s1  	| 0      	| 34    	| n.a.     	|
| `addi $s1, $s2, 10`  	| A         	| I       	|  8  	| $s2  	| $s1  	| n.a  	| n.a     	| n.a    	|  10      	|
| `lw $s1, 100($s2)`  	| T         	| I       	| 35  	| $s2  	| $s1  	| n.a  	| n.a     	| n.a   	| 100      	|
| `sw $s1, 100($s2)`   	| T         	| I       	| 43 	| $s2  	| $s1  	| n.a  	| n.a      	| n.a      	| 100      	|
| `and $s1, $s2, $s3`  	| L         	| R       	|  0  	| $s2  	| $s3  	| $s1  	| 0      	| 36    	| n.a.     	|
| `or $s1, $s2, $s3`   	| L         	| R       	|  0 	| $s2  	| $s3  	| $s1  	| 0      	| 37    	| n.a.     	|
| `nor $s1, $s2, $s3`  	| L         	| R       	|  0 	| $s2  	| $s3  	| $s1  	| 0      	| 39    	| n.a.     	|
| `andi $s1, $s2, 10`  	| L         	| I       	| 12 	| $s2  	| $s1  	| n.a  	| n.a     	| n.a    	|  10      	|
| `ori $s1, $s2, 10`   	| L         	| I       	| 13 	| $s2  	| $s1  	| n.a  	| n.a     	| n.a   	|  10      	|
| `sll $s1, $s2, 10`   	| L         	| R       	|  0 	| 0  	| $s2  	| $s1  	| 10      	|  0    	| n.a.     	|
| `srl $s1, $s2, 10`   	| L         	| R       	|  0 	| 0  	| $s2  	| $s1  	| 10      	|  2    	| n.a.     	|
| `beq $s1, $s2, L`    	| DC         	| I       	|  4 	| $s1  	| $s1  	| n.a  	| n.a     	| n.a      	| L      	|
| `bnq $s1, $s2, L`   	| DC          	| I       	|  5 	| $s1  	| $s2  	| n.a  	| n.a      	| n.a      	| L    	    |
| `slt $s1, $s2, $s3`  	| L         	| R       	|  0 	| $s2  	| $s3  	| $s1  	| 0      	| 42    	| n.a.     	|
| `slti $s1, $s2, 10`  	| L         	| I       	| 10 	| $s2  	| $s1  	| n.a  	| n.a     	| n.a      	|  10      	|
| `j L`                	| D         	| J       	|  2 	| n.a  	| n.a  	| n.a  	| n.a      	| n.a   	| L      	|
| `jr $ra`             	| D         	| R       	|  0 	| $ra  	| 0  	| 0  	| 0      	|  8    	| n.a.     	|
| `jal L`              	| D         	| J       	|  3 	| n.a  	| n.a  	| n.a  	| n.a      	| n.a   	| L      	|

