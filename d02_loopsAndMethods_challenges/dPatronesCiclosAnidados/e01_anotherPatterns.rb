# Solución alternativa para el desafio evaluado d15_patterns.rb

def navidad(n)
  # Sección de arriba
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
  # (n/2).times do
  #   (n/2+2).times do
  #     print " "
  #   end
  #   print "*"
  #   puts ""
  # end 
  
  # Sección de abajo
  # (n/2+1).times do
  #   print " "
  #   (n-(n-1)).times do
  #     print "*"
  #   end
  # end
  # puts ""
end

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

input = ARGV[0].to_i

# Llamado de métodos

# navidad(input)
letra_x(input)