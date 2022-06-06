=begin 
  DESAFIO: CICLOS

  INSTRUCCIONES:
  Crear una variante del programa anterior llamado "d04_onlyEvenNumbers2.rb", pero que en este el cero no sea considerado. El cero no es par.

  Uso:
  ruby d04_onlyEvenNumbers2.rb 5
  2 4 6 8 10
=end

number = ARGV[0].to_i
even = 0

number.times do
  even += 2
  puts even
end