=begin 
  GUIA: OPERACIONES BÁSICAS EN UN ARREGLO

  TEMAS:
    Saber si un elemento se encuentra dentro de un arreglo.
    Agregar elementos a un arreglo.
    Borrar elementos a un arreglo.
    Contar elementos de un arreglo.

  EJERCICIO:
    Crear un array llamado ingredientesPizza donde el usuario ingrese un ingrediente y se muestre en pantalla si el ingrediente existe o no.
    Si no existe debe ser añadido a la lista de ingredientes.

=end

ingredientesPizza = ["piña", "jamón", "salsa", "queso"]

# Membresía es saber si un elemento es miembro o no de una entidad
puts "Se utiliza el método 'include?(obj)' para saber su membresia"
puts ingredientesPizza.include?("jamón") # true
puts ingredientesPizza.include?("jamon") # false
puts "---"

# Agregar elementos a un Array
puts "Se utiliza el método 'push(obj)' para añadir un elemento al array"
ingredientesPizza.push("tomate") # => tomate
print "#{ingredientesPizza}\n"
puts "---"

# Remover elemento de un Array
puts "Se utiliza el método 'delete(obj)' para remover un elemento al array"
removedIngredient = ingredientesPizza.delete("piña")
puts "El ingrediente removido fue #{removedIngredient}" # piña
removed = ingredientesPizza.delete("aceituna") {"Elemento no encontrado"}
puts removed # Elemento no encontrado
print "#{ingredientesPizza}\n"
puts "---"

# Contar elementos
puts "Se utiliza el método 'count', 'length' o 'size' para contar la cantidad de elementos"
puts "#{ingredientesPizza.count} con el método count"
puts "#{ingredientesPizza.length} con el método length"
puts "#{ingredientesPizza.size} con el método size"
puts "---"

# --- DESARROLLO EJERCICIO ---

print "Ingrese un ingrediente: "
ingredient = gets.chomp

if ingredientesPizza.include?(ingredient)
  puts "El ingrediente #{ingredient} existe."
else
  puts "No existe el ingrediente #{ingredient} en la pizza."
  puts "Se procede a añadir el nuevo elemento a la pizza..."
  ingredientesPizza.push(ingredient)
end

print "#{ingredientesPizza}\n"