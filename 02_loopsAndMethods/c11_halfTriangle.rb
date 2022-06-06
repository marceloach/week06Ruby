=begin  
  Ejercicio:
  Crear un pograma que reciba el tamaño del triángulo y dibuje el siguiente patrón:
    *
    **
    ***
    ****
    *****
=end

num = ARGV[0].to_i

num.times do |i|
  (i+1).times do
    print "*"
  end
  puts ""
end