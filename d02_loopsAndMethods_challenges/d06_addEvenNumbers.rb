=begin 
  DESAFIO: CICLOS

  INSTRUCCIONES:
  Crea un programa llamado "d06_addEvenNumbers.rb" que sume los primeros "n" números pares, donde "n" es ingresado por el usuario por línea de comandos.

  Tip: El cero no es par, no afecta en la suma pero tenemos que tener cuidado con los bordes del ciclo.

  Uso:
  ruby suma_pares.rb 20
  420
=end

number = ARGV[0].to_i
even = 0

number.times do |i|
  even += (2 * (i + 1))  
end

puts even

# Formula: suma de los n primeros pares consecutivos
# even = number * (number + 1)
# puts even