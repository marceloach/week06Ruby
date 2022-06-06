=begin 
  Ejercicio:
  Crean un programa que dibuje n puntos.
  Donde n es un valor ingresado por el usuario al momento de ejecutar el script.
=end

# Mi propuesta de solución al problema
num = ARGV[0].to_i
while num != 0
  num -= 1
  print "*"
end

puts ""

# Propuesta de solución 1 DesafioLatam
n = ARGV[0].to_i
n.times do
  print "*"
end

puts ""

# Propuesta de solución 2 DesafioLatam
n = ARGV[0].to_i
print "*" * n

puts ""

# Otra solución alternativa de mi parte
n = ARGV[0].to_i
n.times {print "*"}