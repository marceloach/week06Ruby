=begin 
	Desafio:
	Crear un programa donde el usuario deba ingresar cuatro números.
	El programa debe imprimir el mayor de los cuatro números.
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