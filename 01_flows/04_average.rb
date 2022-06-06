=begin 
    Ejercicio: 
    Crear un programa donde un usuario debe ingresar 3 valores y se debe calcular el promedio de estos. 
=end

puts "Enter three values: "
number1 = gets.to_f
number2 = gets.to_f
number3 = gets.to_f

average = (number1 + number2 + number3) / 3
puts "The average is: #{average}"