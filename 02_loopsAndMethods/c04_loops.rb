=begin 
  Ejemplos de ciclos:
    for
    times
=end

=begin 
for i in 1..10
  puts "Iteración #{i}"
end

puts ""

for i in 'a'..'z'
  puts i
end
=end

puts ""

for i in 10.downto(1)
  puts "hola #{i}"
end

puts ""

5.times do
  puts "repitiendo"
end

puts ""

5.times do |i|
  puts "repitiendo: #{i}"
end