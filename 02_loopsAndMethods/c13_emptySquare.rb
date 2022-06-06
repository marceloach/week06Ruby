=begin  
  Ejercicio:
  Crear un pograma que al ejecutarse reciba un tamaño y dibuje un cuadrado dejando vacío el interior.
=end

num = ARGV[0].to_i

# Sección de arriba
num.times do
  print "*"
end

puts ""

# Sección del medio
(num-2).times do
  print "*"
  (num-2).times do
    print " "
  end
  print "*"
  puts ""
end

# Sección de abajo
num.times do
  print "*"
end