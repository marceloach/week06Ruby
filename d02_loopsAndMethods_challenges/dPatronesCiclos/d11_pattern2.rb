=begin 
  DESAFIO: PATRONES Y CICLOS

  INSTRUCCIONES:
  Escribir un programa que reciba por consola la cantidad de caracteres y muestre el siguiente patron:

  Uso:
  ruby d11_pattern2.rb 10
  **..**..**
=end

input = ARGV[0].to_i

input.times do |i|
  if i % 4 == 0 || i % 4 == 1
    print "*"
  else
    print "."
  end
end