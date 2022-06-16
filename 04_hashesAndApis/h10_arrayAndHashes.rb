=begin 
  GUIA: ARREGLOS Y HASHES

  TEMAS:
    Convertir un hash en un arreglo.
    Convertir un arreglo en un hash.
    Transformar dos arreglos relacionados en un único arreglo.
=end

alumnos = {
  Gonzalo:    20,
  Cristian:   33
}

# Convertir un hash en un arreglo
alumnosArray = alumnos.to_a
puts alumnosArray.class
print alumnosArray
puts ""
puts "---"

# Convirtiendo un arreglo en un hash
alumnosHash = alumnosArray.to_h
puts alumnosHash.class
print alumnosHash
puts ""
puts "---"

# Cruzando información de dos arrays transformandolo en hash
nombres = ['Alumno1', 'Alumno2', 'Alumno3']
notas = [10, 3, 8]

calificaciones = nombres.zip(notas).to_h
puts calificaciones.class
print calificaciones
puts ""
puts "---"

# El método 'group_by' permite agrupar un conjunto de elementos bajo cualquier criterio y entrega un hash con el resultado

# Agrupa por booleans de acuerdo a la condición: pares e impares
puts [1, 2, 3, 4, 5, 6, 7, 8] .group_by{ |x| x.even? }
# Agrupa por booleans de acuerdo a la condición: mayores de 4 y menores e igual a 4
puts [1, 2, 3, 4, 5, 6, 7, 8] .group_by{ |x| x > 4 }
# Agrupa por el largo
puts ["hola", "a", "todos"].group_by { |x| x.length }
# Agrupa por el mismo elemento
puts [1, 2, 3, 4, 1, 2, 1, 5, 8].group_by { |x| x }
# Agrupa por la primera letra
puts ['a', 'ab', 'abc', 'b', 'bc', 'bcd'].group_by { |x| x[0] }
#  Agrupa por tipo
puts ['a', 1, 'b', 2, 'c'].group_by { |x| x.class }