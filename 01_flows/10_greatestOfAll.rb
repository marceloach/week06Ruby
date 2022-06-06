=begin 
    Ejercicio:
    Crear un programa que solicite al usuario ingresar tres números.
    El programa debe determinar el mayor de ellos.
    Los números ingresados deben ser distintos.
=end

print "Enter the first number: "
number1 = gets.to_i

print "Enter the second number: "
number2 = gets.to_i

print "Enter the third number: "
number3 = gets.to_i

if number1 > number2 && number1 > number3
    puts "The greatest number is #{number1}"
elsif number2 > number3
    puts "The greatest number is #{number2}"
else
    puts "The greatest number is #{number3}"
end

