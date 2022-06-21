require_relative 'generate'

class Juego
  attr_reader :palabra_secreta, :vidas

  def initialize
    @palabra_secreta = GeneradorPalabras.generar.downcase
    @vidas = 5
  end

  def comenzar
    puts "Bienvenidos al Juego del Ahorcado"
    puts ""
    puts "Instrucciones:"
    puts "Escribe una letra para ir adivinando la palabra."
    puts "Comienzas con 5 vidas, por cada error que tengas se descontará una vida."
    puts "Al encontrar la palabra secreta, ¡GANAS!"
    
    guiones = cambiar_letras_a_guiones
    while guiones.gsub(" ", "") != @palabra_secreta && @vidas > 0
      puts "\Te quedan #{@vidas} vidas"
      # puts palabra_secreta
      print "#{guiones} "
      letra = gets.chomp
      letra_encontrada = false

      for posicion_letra in 0..@palabra_secreta.length-1
        if @palabra_secreta[posicion_letra] == letra
          guiones[posicion_letra * 2] = letra
          # puts "==> #{guiones[posicion_letra * 2]}"
          # puts "==> #{guiones[posicion_letra]}"
          letra_encontrada = true
        end
      end
      
      if letra_encontrada == false
        @vidas -= 1
        puts "La letra no está en la palabra, intenta con otra."
      end
    end
    ha_ganado?
  end
  
  def ha_ganado?
    if @vidas > 0
      puts "\nGanaste!!! Encontraste la palabra '#{palabra_secreta}'"
    else
      puts  "\nPerdiste, la palabra era: #{palabra_secreta}"
    end
  end

  def cambiar_letras_a_guiones
    return "_ " * @palabra_secreta.length
  end

end