=begin 
  DESAFIO: CICLOS

  INSTRUCCIONES:
  Crea un programa llamado "d05_onlyOddNumbers.rb" que dado "n" muestre en pantalla los primeros "n" números impares.

  Uso:
  ruby d05_onlyOddNumbers.rb 5
  1 3 5 7 9
=end

number = ARGV[0].to_i
odd = 1

number.times do
  puts odd
  odd += 2
end