=begin 
  DESAFIO: PATRONES Y CICLOS

  INSTRUCCIONES:
  Escribir un programa que reciba por consola la cantidad de caracteres y muestre el siguiente patron:

  Uso:
  ruby d13_pattern4.rb 18
  123123123123123123
=end

input = ARGV[0].to_i

input.times do |i|
  if i % 3 == 0
    print "1"
  elsif i % 3 == 1
    print "2"
  else
    print "3"
  end
end