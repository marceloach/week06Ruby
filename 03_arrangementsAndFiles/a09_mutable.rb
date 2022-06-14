=begin 
  GUIA: MUTABILIDAD

  TEMAS:
    Conocer el concepto de mutabilidad.
    Duplicar objetos antes de operar con ellos.
=end

# La mutabilidad quiere decir que un objeto puede cambiar después de que fue creado
names = ["Marta", "Diego", "Juan"]
duplicate = names

print names.object_id
puts ""

print duplicate.object_id
puts ""
duplicate[0] = "Mateo"

print duplicate
puts ""

print names
puts ""

# El método 'dup' permite copiar un arreglo para evitar cambios indeseados por la mutabilidad
# newNames = names.dup

# newNames[0] = "Miguel"

# print newNames
# puts ""

# print names
# puts ""