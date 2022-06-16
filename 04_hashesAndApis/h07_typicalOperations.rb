=begin 
  GUIA: OPERACIONES TÍPICAS EN UN HASH

  TEMAS:
    Eliminar un elemento dentro de un hash.
    Unir dos hashes en uno solo.
    Invertir un hash.
    Transformar las claves del hash en un arreglo.
    Transformar los valores del hash en un arreglo.
=end

# Eliminando un elemento dentro de un hash
alumnos = {
  Gonzalo:    20,
  Juan:       31,
  David:      32,
  Cristian:   33
}

delete = alumnos.delete(:Gonzalo) # Retorna el valor eliminado
puts delete                       # Valor eliminado
print alumnos
puts ""
puts "---"

# Uniendo hashes (cuando dos hashes tienen la misma llave el segundo sobreescribe al primero)
estudiantes = {
  Javiera: 28,
  Rafaela: 30
}

print alumnos.merge(estudiantes)
puts ""
puts "---"

# Invirtiendo un hash
colors = {
  'red'   => '#cc0000', 
  'green' => '#00cc000', 
  'blue'  => '#0000cc'
}

puts colors.invert['#cc0000']
puts "---"

# Obtener todas las claves de un hash
print colors.keys
puts ""
puts "---"

# Obtener todos los valores de un hash
print colors.values
puts ""
puts "---"

# Reconstruir un hash a partir de los keys y values (dos arreglos)
a = [1,2,3].zip([4,5,6]).to_h
puts a.class
print a