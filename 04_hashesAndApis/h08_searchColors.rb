=begin 
  GUIA: OPERACIONES TÍPICAS EN UN HASH

  EJERCICIO:
  Se pide crear un programa donde el usuario ingrese un color en hexadecimal y le muestra en pantalla el nombre del color, en caso de no encontrarlo aparecerá el texto 'Color no encontrado'.

  Uso: 
  h08_searchColors.rb #6a5acd
  slateblue
=end

# Se incorpora la clase JSON para leer archivos json
require 'json'

# Se obtiene el input del usuario
# hexadecimalColor = ARGV[0].to_s  # => "#7fffd4"
print "Ingrese el color hexadecimal: "
hexadecimalColor = gets.chomp # => #7fffd4

# Method: Busca el color ingresado
def search(value)
  # Se obtiene los datos del archivo
  data = open("h08_colors.db").read 
  # Se transforma los datos en un hash
  hash = JSON.parse(data)           

  # Se obtiene la clave a partir del valor
  color = hash.invert[value]
  puts color ? color : "Color no encontrado."
end

# Se llama al método
search(hexadecimalColor)
# puts hexadecimalColor.class