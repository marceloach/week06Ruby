=begin 
  DESAFIO: PIEDRA, PAPEL O TIJERA

  INSTRUCCIONES
    Se pide crear el programa "d04_juego.rb", donde el usuario pasará como argumento piedra, papel o tijera, y el programa escogerá una opción al azar.
		
		Crear el diagrama de flujo antes del programa.

		Para que el computador pueda jugar escoger un número al azar entre 0 y 2, si es 0 entonces es piedra, si es 1 entonces papel y 2 tijera.

		Para esto investigue en la documentación el método rand de la clase Random.

		Uso:
		ruby d04_juego.rb piedra
		Computador juega tijera.
		Ganaste.

		ruby d04_juego.rb tijera
		Computador juega tijera.
		Empataste.

		ruby d04_juego.rb tijera
		Computador juega piedra
		Perdiste.

		En caso que el argumento sea distinto a piedra, papel o tijera el programa debe mostrar las opciones que se pueden jugar:

		ruby d04_juego.rb papelon
		Argumento invalido: Debe ser piedra, papel o tijera.
=end

### Diagra de flujo: d04_juegoFlowchart.png ###

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