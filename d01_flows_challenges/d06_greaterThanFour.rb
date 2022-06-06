=begin 
	DESAFIO: EL MAYOR DE CUATRO NÚMEROS

  INSTRUCCIONES
	Se pide crear el programa "d06_greaterThanFour.rb":
		Este script debe tomar los 4 argumentos y determinar cuál es el mayor.
		Si el cuarto argumento es omitido sólo se debe calcular el mayor de 3.

	¿Qué será ARGV[3] si se entregan sólo tres argumentos?

	Uso:
	ruby mayor_de_4.rb 10 5 3 12
	12
	
	ruby mayor_de_4.rb 12 12 12 9
	12

	ruby mayor_de_4.rb -21 9 39 0
	39
=end

# Almacenar los inputs del usuario en variables
number1 = ARGV[0].to_i
number2 = ARGV[1].to_i
number3 = ARGV[2].to_i
number4 = ARGV[3].to_i

# Si escoge el número mayor de todos
if number1 > number2 && number1 > number3 && number1 > number4
	puts number1
elsif number2 > number3 && number2 > number4
	puts number2
elsif number3 > number4
	puts number3
else
	puts number4
end