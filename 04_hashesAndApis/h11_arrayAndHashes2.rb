=begin 
  GUIA: ARREGLOS Y HASHES

  TEMAS:
    Contando elementos dentro de un hash.
=end

# alumnos = ["Jael", "Maria", "Paula", "Natalia", "Romina"]
array = [1, 2, 6, 7, 2, 5, 8, 9, 1, 3, 6, 7]

# Estrategia 1: iterar y contar
hash = {}
array.each do |i|
  if hash[i]
    hash[i] += 1  # Los valores repetidos se les suma 1
  else
    hash[i] = i   # Convierte las claves con sus valores
  end
end

print hash
puts ""
puts "---"

# Estrategia 2: método group_by
grouped = array.group_by {|x| x}

grouped.each do |k,v|
  grouped[k] = v.count
end
print grouped
