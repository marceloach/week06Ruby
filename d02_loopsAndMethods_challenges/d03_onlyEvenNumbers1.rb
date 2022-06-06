=begin 
  DESAFIO: CICLOS

  INSTRUCCIONES:
  Crea un programa llamado "d03_onlyEvenNumbers1.rb" que muestre los primeros "n" números pares, donde "n" es ingresado por el usuario.

  Uso:
  ruby d03_onlyEvenNumbers1.rb 5
  0 2 4 6 8
=end

number = ARGV[0].to_i
even = 0

number.times do
  puts even
  even += 2
end