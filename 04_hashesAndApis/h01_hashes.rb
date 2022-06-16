=begin 
  GUIA: INTRODUCCIÓN A HASH

  TEMAS:
    Crear un hash.
    Acceder a elementos dentro de un hash a través de la clave.
=end

# Creando un hash
alumnos = {
  "Gonzalo"    => 20,
  "Juan Pablo" => 31,
  "María José" => 29,
  "David"      => 32,
  "Cristian"   => 33
}

# Acceder a un elemento dentro de un hash
puts alumnos["Gonzalo"]
puts alumnos["David"]

# Agregando un elemento a un hash
alumnos["Fernanda"] = 27
puts alumnos

# Cambiando un valor dentro de un hash
alumnos["Cristian"] = 40
puts alumnos

# Cualquier objeto puede ser una clave o un valor
a = {nil => 1, 1001 => 2, 21.5 => 3, true => 4, [1,2,3] => 5}
puts a