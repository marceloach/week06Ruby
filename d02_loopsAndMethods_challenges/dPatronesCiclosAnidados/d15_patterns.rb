=begin 
  DESAFIO: PATRONES Y CICLOS ANIDADOS

  INSTRUCCIONES:
  Escribir un programa llamado "patterns.rb" con métodos que reciban la cantidad de líneas y muestren por pantalla los siguientes patrones de *:

  a. Método letra_o(n)
  n = 5
  *****
  *   *
  *   *
  *   *
  *****

  b. Método letra_i(n)
  n = 5
  ****
    *
    *
    *
  *****

  c. Método letra_z(n)
  n = 5
  *****
      *
    *
  *
  *****

  d. Método letra_x(n)
  n = 5
  *   *
   * *
    *
   * *
  *   *

  e. Método numero_cero(n)
  n = 5
  *****
  **  *
  * * *
  *  **
  *****

  f. Método navidad(n)
  n = 5
     *
    * *
   * * *
  * * * *
     *
     *
   * * *
=end

# Definición de metodos

def letra_o(n)
  # Sección de arriba
  n.times do
    print "*"
  end
  
  puts ""
  
  # Sección del medio
  (n-2).times do
    print "*"
    (n-2).times do
      print " "
    end
    print "*"
    puts ""
  end
  
  # Sección de abajo
  n.times do
    print "*"
  end
end

def letra_i(n)
  # Sección de arriba
  n.times do
    print "*"
  end
  
  puts ""
  
  # Sección del medio
  (n-2).times do # Filas
    print "*" 
    (n-2).times do |i| # Columnas
      print i
      # if (i) % 3 == 1
      #   print "*"
      # else
      #   print " "
      # end # Cierre condicional del ciclo anidado
    end #Cierre ciclo anidado
    print "*"
    puts ""
  end #Cierre ciclo padre
  
  # Sección de abajo
  n.times do
    print "*"
  end
end


# Llamado de metodos

input = ARGV[0].to_i

# letra_o(input)
# puts ""
letra_i(input)

puts ""

# input.times do |i|
#   puts i % 2
# end 
