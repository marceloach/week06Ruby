=begin 
  GUIA: ITERANDO HASHES

  TEMAS:
    Iterar un hash con dos variables.

  EJERCICIOS:
  A partir de un hash con un listado de países y la cantidad de usuarios por países:
    Mostrar sólo los países
    Mostrar sólo los valores
    Mostrar sólo los valores mayores a 55  
=end

paises = {
  Mexico:    70,
  Chile:     50,
  Argentina: 55
}

# Mostrar sólo los países
paises.each do |key, value|
  puts key
end
puts "---"

# Mostrar sólo los valores
paises.each do |key, value|
  puts value
end
puts "---"

# Mostrar sólo los valores mayores a 55
paises.each do |key, value|
  puts value if value > 55
end
puts "---"