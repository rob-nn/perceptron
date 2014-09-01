import sys

#Verficia se o usuario digitou o comando corretamente.
if len(sys.argv) != 3:
	print('Digite: python perceptron_and.py val1 val2. val1 e val2 tem que ser substituidos por 0 ou 1');
	exit();

x1 = int(sys.argv[1])
x2 = int(sys.argv[2])

bias = -2; #Valor do bias
w1 = 2; #Valor do peso 1
w2 = 1; #Valor do peso 2

v = w1*x1 + w2*x2 + bias; #Valor da combinacao linear

if v > 0:
	y = 1 #Valor da saida se v maior que zero
else:
	y = 0 #Valor da saida se v menor ou igual a zero

print('O resutado para a entrada "%d and %d" e: %d' % (x1, x2, y))
