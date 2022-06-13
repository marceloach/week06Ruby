=begin 
  GUIA: ITERANDO Y FILTRANDO ARRAYS CON EACH METHOD

  TEMAS:
    Recorrer un arreglo elemento a elemento.
    Transformar elementos de un arreglo.
    Filtrar elementos de un arreglo.
   
=end

# Se puede iterar un array elemento por elemento a través del método 'each'
numbers = [1, 2, 6, 1, 7, 2, 3]
numbers.each do |element|
  puts element
end
puts "---"

# El loop anterior se puede expresar de la siquiente manera:
numbers.each {|element| puts element}
puts "---"

# Transformar los elementos de un array con el método 'each'
squaredNumbers = []
numbers.each {|element| squaredNumbers.push(element ** 2)}
print squaredNumbers
puts ""
puts "---"

# Filtrar algunos elementos de un array con el método 'each'
greaterThanFour = []
numbers.each {|element| greaterThanFour.push(element) if element > 4}
print greaterThanFour