=begin 
  GUIA: IDENTIDAD Y VARIABLES

  TEMAS:
    Trabajar con objetos y variables
    Conocer las implicancias de trabajar con el mismo objeto en dos o más variables.
=end

require_relative "p08_points"

# Tener el mismo objeto en dos variables distintas
pointObj = Point.new(3,2)
anotherObj = pointObj       # Asignar

puts "Al comparar los dos objetos tenemos el valor: #{pointObj == anotherObj}"
puts "La primera variable tiene un id de: #{pointObj.object_id}"
puts "La segunda variable tiene un id de: #{anotherObj.object_id}"
puts "---"

# Al modificar uno, se modifica el otro automáticamente
puts "Antes #{pointObj.x}"
anotherObj.x = 9            # Modificar
puts "Despues #{pointObj.x}"
puts "---"

# Para evitar lo anterior, se debe asignar un nuevo objeto a la variable
otherObj = Point.new(3,2)
puts "El id es: #{otherObj.object_id}"