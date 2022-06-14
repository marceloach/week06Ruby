=begin 
  GUIA: ARRAYS DENTRO DE ARRAYS
        MATRICES

  TEMAS:
    Iterar arreglos bidimensionales.
    Creando una matriz con arreglos.
=end

array = [[1, 2, 3], [4, 5, 6, 7], [8, 9, 10, 11, 12]]

# Iterando con elementos
array.each do |inside|
  inside.each do |element|
    puts element
  end
end

puts "---"

# Iterando con indices
external = array.count
  external.times do |i|
    internal = array[i].count
    internal.times do |j|
    print "\t#{array[i][j]}"
  end
  puts ""
end

puts "---"

m1 = [[3, 2],[1, 4]]
m2 = [[3, 2],[1, 4]]
result = []

cols = m1.length
rows = m1[0].length

cols.times do |i|
  rows.times do |j|
  print (m1[i][j] + m2[i][j]).to_s + " "
  end
print "\n"
end