=begin 
  GUIA: CLAVES Y SÍMBOLOS

  TEMAS:
    Conocer los símbolos en Ruby.
    Diferenciar una clave Símbolo con una clave String.
    Diferenciar la notación con : y con =>.
=end

# Creando un símbolo
symbol = :hello_world
puts symbol.class
puts symbol

# Se utilizan como llaves en los hashes
alumnos = {
  :Gonzalo   => 35,
  :Alejandro => 20
}

puts alumnos[:Gonzalo] == 35 # Comparando valores
puts alumnos[:Alejandro]    # Accediendo al valor de la llave

# La notación 'clave': valor convierte automáticamente un string en un símbolo
calificaciones = {
  Marta:  5,
  Fabian: 4
}

# En la mayoría de los casos las claves serán símbolos, y en algunos casos los valores también serán símbolos
hash = {
  clave1: :valor1, 
  clave2: :valor2, 
  clave3: :valor3
}

