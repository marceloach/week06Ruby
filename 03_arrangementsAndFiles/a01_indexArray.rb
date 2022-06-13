=begin 
  GUIA: INTRODUCCIÓN A ARRAYS (ARREGLOS)

  Los elementos en el array tienen una posición, a la que se le llama índice.
  El índice nos permite acceder al elemento que está dentro del arreglo.

=end

# Manipulación del indice en un arreglo

numeros = [1,2,3,4,5]

puts "Indice positivo"
puts numeros[0] # 1
puts numeros[1] # 2

puts "Indice negativo"
puts numeros[-1] # 5
puts numeros[-4] # 2

puts "Indice fuera de rango"
puts numeros[8] # nil

puts "Indice dentro de un indice"
puts numeros[numeros[1]] # numeros[2] => 3

puts "Rango en el indice"
print numeros[0, 3] # [1, 2, 3]
puts ""
print numeros[2, 3] # [3, 4, 5]
puts ""

puts "Rango con números negativo en el indice"
print numeros[-4, 3] # [2, 3, 4]
puts ""

puts "Rango con un indice fuera de rango"
print numeros[3, 8] # [4, 5]
puts ""

puts "Sin indice"
print numeros # [1, 2, 3, 4, 5]
puts ""

