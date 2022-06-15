=begin 
  DESAFIO: ARREGLOS Y ARCHIVOS

  INSTRUCCIONES:
  Crear el método 'chart' en el cual construya el siguiente gráfico en la consola, a partir de un arreglo con datos numéricos:

  ➜ irb
  2.6.0 :001 > require_relative "grafico"
  => true
  2.6.0 :002 > chart([5, 3, 2, 5, 10])
  |**********
  |******
  |****
  |**********
  |********************
  >--------------------
  1 2 3 4 5 6 7 8 9 10
=end

# Se crea constante para mayor comprensión del código
DOUBLE = 2

# Method: Crea un gráfico a partir de un array
def chart(array)
  
  # Las barras de asteriscos
  n = array.length
  n.times do |i|
    print "|"
    puts "*".*(array[i]*DOUBLE)
  end

  # La base del gráfico
  print ">"
  puts "-".*(array.max*DOUBLE)

  # La base númerica
  m = array.max
  m.times do |i|
    print i+1
    print " "
  end
end

# Llamando el método
# graphic = [5, 3, 2, 5, 10]
# chart(graphic)