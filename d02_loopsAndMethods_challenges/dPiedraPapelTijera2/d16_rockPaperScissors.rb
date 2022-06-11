=begin 
  DESAFIO: PIEDRA PAPEL O TIJERA

  INSTRUCCIONES:
  Crear un programa que nos permita jugar piedra, papel o tijera.
    Primero debes realizar y validar un diagrama de flujo que cumpla con los requerimientos.
    Luego debes programar la solución utilizando Ruby y tu editor de texto favorito.
=end

# Method: Desplega las opciones del juego
def optionMenu
  menulist = [" ● Piedra", " ● Papel", " ● Tijera", " ● Salir"]
  puts "Eliga una de las siguientes opciones: "
  menulist.each {|element| puts "#{element}"}
end

# Method: Valida las opciones de los jugadores
def validate(option)
  while option != "piedra" && option != "papel" && option != "tijera" && option != "salir"
    puts "Argumento invalido. Debe ingresar piedra, papel, tijera o salir."
    option = gets.chomp
  end
  return option
end

# Method: Notifica la salida del juego
def finished
  puts "El juego acaba de terminar."   
end

# Method: Analiza las opciones de ambos jugadores y entrega veredicto del juego
def game(player1, player2)
  # Opciones de ganar del jugador1
  if (player1 == "piedra" && player2 == "tijera") || (player1 == "papel" && player2 == "piedra") || (player1 == "tijera" && player2 == "papel")
    puts "Jugador 1 gana la partida."
  # Opciones de empatar
  elsif player1 == player2
    puts "Empate."
  # Opciones de perder del jugador2
  else
    puts "Jugador 2 gana la partida."
  end
end


# Menu de opciones
optionMenu
puts ""

# Player one
print "Turno jugador 1: "
player1 = gets.chomp.downcase
validatedOption1 = validate(player1)

# Game over
if validatedOption1 == "salir"
  finished
else
  # Player two
  print "Turno jugador 2: "
  player2 = gets.chomp.downcase
  validatedOption2 = validate(player2)

  # Game over
  if validatedOption2 == "salir"
    finished
  else
    # Start game
    game(validatedOption1, validatedOption2)
  end
end