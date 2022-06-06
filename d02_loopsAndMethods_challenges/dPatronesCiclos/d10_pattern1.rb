=begin 
  DESAFIO: PATRONES Y CICLOS

  INSTRUCCIONES:
  Escribir un programa que reciba por consola la cantidad de caracteres y muestre el siguiente patron:

  Uso:
  ruby d10_pattern1.rb 10
  *.*.*.*.*. 
=end

input = ARGV[0].to_i

input.times do |i|
  if i % 2 == 0
    print "*"
  else
    print "."
  end
end