=begin 
  GUIA: ITERANDO UN ARREGLO A PARTIR DEL ÍNDICE

  TEMAS:
    Recorrer los elementos de un arreglo.
    Transformar los elementos dentro del array mientras lo recorremos.
    Filtrar elementos de un arreglo en base a algún criterio.

=end

# Iterando un arreglo con el índice
numberList = [1, 2, 3, 4]

n = numberList.length
n.times do |i|
  puts numberList[i]
end

# Transformar y guardar los valores originales
print ARGV

n = ARGV.length
newArray = []
n.times do |i|
  newArray.push ARGV[i].to_i
end

puts ""
print newArray

# Filtrar elementos de un arreglo
numberArray = [100, 200, 1000, 5000, 10000, 10, 5000]

n = numberArray.length
filteredArray = []
n.times do |i|
  if numberArray[i] >= 1000
    filteredArray.push numberArray[i]
  end
end

puts ""
print filteredArray