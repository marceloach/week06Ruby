=begin 
  GUIA: OPERACIONES TÍPICAS EN UN HASH

  EJERCICIO:
  Modificar el programa anterior para que el usuario pueda buscar múltiples colores.

  Uso: 
  h09_searchColors2.rb #6a5acd #9acd32 #ffff00
  slateblue yellowgreen yellow
=end

# Se incorpora la clase JSON para leer archivos json
require 'json'

# Se obtiene los inputs del usuario
hexadecimalColor = ARGV # => "#6a5acd" "#9acd32" "#ffff00"

# Method: Busca el color ingresado
def search(values)
  # Se obtiene los datos del archivo
  data = open("h08_colors.db").read 
  # Se transforma los datos en un hash
  hash = JSON.parse(data)           

  # Se obtiene la clave a partir del valores
  values.each do |v|
    color = hash.invert[v]
    puts color ? color : "Color no encontrado."
  end
end

# Se llama al método
search(hexadecimalColor)