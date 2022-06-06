# Ejercicio: ¿Qué se obtiene como resultado en el siguiente ejemplo?

print "Enter the first number: "
numero_uno = gets.chomp # => "10"
print "Enter the second number: "
numero_dos = gets.chomp # => "20"

puts ""

print "The result with to_i is: "
puts (numero_uno + numero_dos).to_i # 1020
puts (numero_uno + numero_dos).to_i.class # Intener

puts ""

print "The result is: "
puts (numero_uno + numero_dos) # "1020"
puts (numero_uno + numero_dos).class # String