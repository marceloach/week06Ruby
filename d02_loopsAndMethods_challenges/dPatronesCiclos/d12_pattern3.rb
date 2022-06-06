=begin 
  DESAFIO: PATRONES Y CICLOS

  INSTRUCCIONES:
  Escribir un programa que reciba por consola la cantidad de caracteres y muestre el siguiente patron:

  Uso:
  ruby d12_pattern3.rb 15
  121212121212121
=end

input = ARGV[0].to_i

input.times do |i|
  if i % 2 == 0
    print "1"
  else
    print "2"
  end
end