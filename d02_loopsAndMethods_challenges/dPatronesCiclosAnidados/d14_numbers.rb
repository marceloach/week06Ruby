=begin 
  DESAFIO: PATRONES Y CICLOS ANIDADOS

  INSTRUCCIONES:
  Escribir un programa llamado "d14_numbers.rb" que reciba por línea de comandos la cantidad de líneas, y dibuje el siguiente patrón:

  Uso:
  ruby numeros.rb 5
  1
  12
  123
  1234
  12345
=end

num = ARGV[0].to_i

num.times do |i|
  (i+1).times do |j|
    print j + 1
  end
  puts ""
end