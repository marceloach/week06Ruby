=begin 
    Ejercicio:
    Crear un programa donde el usuario ingrese el radio de una circunferencia y se debe calcular el área.
=end

print "Enter the radius: "
radius = gets.to_f

area = 3.14 * radius**2
puts "The area of a circle is: #{area}"