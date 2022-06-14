=begin 
  GUIA: OTRAS FORMAS DE ITERAR SOBRE ARREGLOS

  TEMAS:
    Aplicar el método 'map' para transformar datos en un arreglo.
    Aplicar los métodos 'select' y 'reject' para seleccionar y remover datos de un arreglo.
    Aplicar el método 'inject' para transformar un arreglo en un único dato.
    Trabajar con datos repartidos a lo largo de dos arrays.
    Realizar operaciones típicas de conjunto sobre arrays.
=end

# El método 'map' sirve para aplicar una operación a cada elemento del array, y devuelve un array con los resultados de las operaciones aplicadas
# Los métodos 'map' y 'collect' cumplen el mismo propósito
numbers = [1, 2, 3, 4, 5, 6, 7]
doble = numbers.map {|element| element*2}
print doble
puts ""
puts "---"

reachFour = numbers.map {|element| element > 4 ? 4 : element}
print reachFour
puts ""
puts "---"

#El método 'map!' es una variante de 'map' que modifica el arreglo original y de esta forma no tenemos que guardar el resultado en una variable nueva
prices = [100, 120, 150]
prices.map! {|price| price*1.5}
print prices
puts ""
puts "---"

# El método 'select' permite filtrar los elementos de un arreglo bajo una condición y devuelve un array nuevo sin modificar el original
evenNumbers = numbers.select {|number| number % 2 == 0}
print evenNumbers
puts ""
puts "---"

# El método 'reject' elimina a todos los elementos del arreglo que no cumplan con el criterio
oddNumbers = numbers.reject {|number| number.even?}
print oddNumbers
puts ""
puts "---"

# El método 'inject' permite operar sobre todos los elementos y devuelve un único valor con el resultado de las operaciones 
# El bloque hay que pasar dos variables: La que itera y la que guarda el resultado
total = numbers.inject {|sum, x| sum + x}
print total
puts ""
puts "---"

# El método 'index' retorna el indice de un elemento especifico
grades = [5, 9, 6, 8, 9]
students = ['Juliana', 'Francisca', 'Pedro', 'Diego', 'Macarena']

def search(name, namesList, scoresList)
  index = namesList.index(name)
  puts "La nota es: #{scoresList[index]}" if index
end

print "Ingrese un nombre: "
searchName = gets.chomp
search(searchName, students, grades)
puts ""
puts "---"

# Concatenación
print numbers + grades
puts ""
puts "---"

# Diferencia de elementos
print numbers - grades
puts ""
puts "---"

# Unión
print numbers | grades
puts ""
puts "---"

# Intersección
print numbers & grades
puts ""
puts "---"