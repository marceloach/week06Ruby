=begin 
    Ejercicio:
    Crear un programa donde el usuario deba ingresar dos números.
    El programa debe imprimir el mayor de ambos números.
=end

puts "Enter twor numbers"

print "Number one: "
number1 = gets.to_i
print "Number two: "
number2 = gets.to_i

if number1 > number2
    puts "The number #{number1} is greater than the number #{number2}." 
else
    puts "The number #{number2} is greater than the number #{number1}."
end
