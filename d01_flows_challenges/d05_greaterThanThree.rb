=begin 
  DESAFIO: EL MAYOR DE TRES NÚMEROS

  INSTRUCCIONES
  Se pide crear el programa "d05_greaterThanThree.rb". Este script debe tomar los 3 argumentos y determinar cuál es el mayor.

	Uso:
	ruby d05_greaterThanThree.rb 10 5 3
	10

	ruby d05_greaterThanThree.rb -21 9 39
	39

	ruby d05_greaterThanThree.rb 3 2 3
	3
=end

# Almacenar los inputs del usuario en variables
number1 = ARGV[0].to_i
number2 = ARGV[1].to_i
number3 = ARGV[2].to_i

# Si escoge el número mayor de todos
if number1 > number2 && number1 > number3
    puts number1
elsif number2 > number3
    puts number2
else
    puts number3
end