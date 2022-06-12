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
  *****
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

# Definición de métodos

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
  puts ""
end

def letra_i(n)
  # Sección de arriba
  n.times do
    print "*"
  end
  
  puts ""
  
  # Sección del medio
  (n-2).times do # Filas
    print " "
    ((n/2)-1).times do # Columnas
      print " "
    end #Cierre ciclo anidado
    print "*"
    puts ""
  end #Cierre ciclo padre
  
  # Sección de abajo
  n.times do
    print "*"
  end
  puts ""
end

def letra_z(n)
  # Sección de arriba
  n.times do
    print "*"
  end
  
  puts ""
  
  # Sección del medio
  (n-2).times do |i| # Filas
    (n-2-i).times do # Columnas
      print " "
    end #Cierre ciclo anidado
    print "*"
    puts ""
  end #Cierre ciclo padre
  
  # Sección de abajo
  n.times do
    print "*"
  end
  puts ""
end

def letra_x(n)
  # Sección de arriba
  (n-(n-1)).times do
    print "*"
    (n-2).times do
      print " "
    end
    print "*"
  end
  
  puts ""
  
  # Sección del medio
  (n-2).times do |i| # Filas
    print " "
    reverse = n - 2
    (n-2).times do |j| # Columnas
      reverse -= 1
      if i == j
        print  "*"
      elsif i == reverse
        print "*"
      else
        print " "
      end
    end #Cierre ciclo anidado
    puts " "
  end #Cierre ciclo padre
  
  # Sección de abajo
  (n-(n-1)).times do
    print "*"
    (n-2).times do
      print " "
    end
    print "*"
  end
  puts ""
end

def numero_cero(n)
  # Sección de arriba
  n.times do
    print "*"
  end
  
  puts ""
  
  # Sección del medio
  (n-2).times do |i| # Filas
    print "*"
    (n-2).times do |j| # Columnas
      if i == j
        print  "*"
      else
        print " "
      end
    end #Cierre ciclo anidado
    puts "*"
  end #Cierre ciclo padre
  
  # Sección de abajo
  n.times do
    print "*"
  end
  puts ""
end

def navidad(n)
  # Sección de arriba
  for i in (0..(n-1))
    print " " * (n-i)
    print "* " * i
    puts ""
  end

  # (n/2+2).times do |i| # Filas
  #   reverse = ((n/2)+2)
  #   (n+2).times do |j| # Columnas
  #     # print i
  #     # print j

  #     reverse -= 1
  #     # print reverse
  #     if i == reverse
  #       print "*"
  #     elsif i == (reverse * (-1))
  #       print "*"
  #     else
  #       print " "
  #     end

  #   end #Cierre ciclo anidado
  #   puts ""
  # end #Cierre ciclo padre

  # Sección del medio
  (n-3).times do
    (1).times do
      print " " * (n-1)
      print "*"
    end
    print " "
    print "\n"
  end

  # (n/2).times do
  #   (n/2+2).times do
  #     print " "
  #   end
  #   print "*"
  #   puts ""
  # end 
  
  # Sección de abajo
  print " "
  (n-2).times do
    print " " * (n-(n-1))
    print "*"
  end

  # (n/2+1).times do
  #   print " "
  #   (n-(n-1)).times do
  #     print "*"
  #   end
  # end
  # puts ""
end

# Llamado de métodos

input = ARGV[0].to_i

# letra_o(input)
# puts ""
# letra_i(input)
# puts ""
# letra_z(input)
# puts ""
# letra_x(input)
# puts ""
# numero_cero(input)
# puts ""
# navidad(input)

def letra_x(num)
  num.times do |i|
      num.times do |j|
        # print i
        # print j
        print "i=#{i}; j=#{j}; num-(i+1)=#{num-(i+1)} =>"
        print " "
        if j == num - (i + 1) # j=0 num=5 i=0 (0 == 5-0-1)
            print "B "
        elsif j == i # j=0 i=0
            print "A "
        else
            print "  "
        end
      end
      print "\n"
  end
end

letra_x(input)