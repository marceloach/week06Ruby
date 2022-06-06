=begin 
  Ejercicio:
  Crear un programa que realice una cuenta regresiva de 5 segundos.
=end

i = 5
while i != 0
  puts "#{i} seconds left"
  i -= 1
  sleep 1
end

puts "Bomb!!!"