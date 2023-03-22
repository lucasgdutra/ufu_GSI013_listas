#Davi Falcao - 12121BSI233
#Guilherme Castilho Machado - 12021BSI225
#Henrique Costa Fernandes de Sousa - 11821BSI263
#Lucas Gabriel Dutra de Souza - 12121BSI226
#Thiago Flauzino Oliveira Dutra - 12011BSI287

#6) Qual o código em assembly do MIPS para cada uma das seguintes funções C?

# b)
# int busca_r(int x, int n, int v[]) {
# if(n == 0)
# return -1;
# if(x == v[n-1])
# return n-1;
# return busca_r(x, n-1, v);
# }