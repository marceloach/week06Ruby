=begin 
    Desafio:
    Crear un programa donde el usuario pasará como argumento piedra, papel o tijera.
    El programa escogerá una opción al azar.
    IMPORTANT:
    Desarrollar el diagrama de flujo.
=end

# Almacenar la opción del usuario en una variable
jugador = ARGV[0]

# Si argumento es distinto a piedra, papel o tijera, se notifica al jugador
if jugador != "piedra" && jugador != "papel" && jugador != "tijera"
    puts "Argumento invalido: Debe ser piedra, papel o tijera."
else
    # El sistema escoge un numero al azar del 0 al 2
    aleatorio = Random.new
    computador = aleatorio.rand(3)

    # Si se escoge al azar el número 0 es piedra
    if computador == 0
        computador = "piedra"
    # Si se escoge al azar el número 1 es papel 
    elsif computador == 1
        computador = "papel"
    # Si se escoge al azar el número 2 es tijera
    else
        computador = "tijera"
    end
    
    # Opciones de ganar del jugador
    if (jugador == "piedra" && computador == "tijera") || (jugador == "papel" && computador == "piedra") || (jugador == "tijera" && computador == "papel")
        puts "Computadora juega #{computador}"
        puts "Ganaste."
    # Opciones de empatar del jugador
    elsif (jugador == "piedra" && computador == "piedra") || (jugador == "papel" && computador == "papel") || (jugador == "tijera" && computador == "tijera")
        puts "Computadora juega #{computador}"
        puts "Empataste."
    # Opciones de perder del jugador
    else
        puts "Computadora juega #{computador}"
        puts "Perdiste."
    end
end