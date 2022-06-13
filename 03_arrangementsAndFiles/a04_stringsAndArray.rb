=begin 
  GUIA: ARCHIVOS, ARREGLOS Y STRINGS

  TEMAS:
    Transformar un arreglo en un string.
    Transformar un string en un arreglo.
=end

words = "palabra1, palabra2, palabra3, palabra4"
puts "words is a #{words.class}"
print words
puts ""
puts "---"

# El método 'split' nos permite generar un array de strings a partir de un string más largo
arrayWords = words.split(", ")
puts "arrayWords is a #{arrayWords.class}"
print arrayWords
puts ""
puts "---"

# El método 'join' nos permite convertir un array en un string
newWords = arrayWords.join(", ")
puts "Now, newWords is a #{newWords.class}"
print newWords
puts ""
puts "---"