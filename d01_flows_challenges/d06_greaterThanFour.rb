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

# Se almacena los inputs del usuario en variables (lista)
numbersList = ARGV
# Variable que almacenará el número mayor
graeterThan = ARGV[0].to_i

# Determina el número mayor, incluso entre los valores negativos.
for number in numbersList do
    if number.to_i >= graeterThan
        graeterThan = number.to_i
    end
end

puts graeterThan