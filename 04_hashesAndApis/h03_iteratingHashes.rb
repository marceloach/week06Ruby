=begin 
  GUIA: ITERANDO HASHES

  TEMAS:
    Iterar un hash con una sola variable.
    Iterar un hash con dos variables.
=end

# Los hash tienen clave y valor
alumnos = {
  Gonzalo:    20,
  Juan_Pablo: 31,
  María_José: 29,
  David:      32,
  Cristian:   33
}

# Si iteramos la variable esta será un arreglo con el par clave y valor
alumnos.each do |i|
  print "#{i} es un #{i.class}"
  puts ""
end
puts "---"

# La otra forma de iterar un hash es ocupando dos variables, una para la clave y la otra para el valor
alumnos.each do |key, value|
  puts "La clave es #{key} y su valor #{value}"
end
puts "---"