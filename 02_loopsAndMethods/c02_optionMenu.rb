=begin 
  Ejercicio:
  Crear un programa donde el usuario escoga entre un menú de opciones:
    Se muestra un texto con opciones.
    El usuario tiene que ingresar una opción válida -> validación de entrada.
    Si el usuario ingresa la opción 1 mostramos un texto.
    Si el usuario ingresa la opción 2 mostramos otro texto.
    Si el usuario ingresa la opción "salir" terminamos el programa.
=end
 
message1 = 'Type one of the following options: "black" or "ruby".'
message2 = 'If you want to exit of program, type "exit".'

input = ""

while input != "exit"

  puts message1
  puts message2
  input = gets.chomp
  puts ""
  
  if input == "black"
    puts "Black isn't a color." 
    puts ""
  elsif input == "ruby"
    puts "Ruby is a programing language."
    puts ""
  elsif input == "exit"
    puts "Finished process."
  else
    puts "Invalid option."
    puts ""
  end
end