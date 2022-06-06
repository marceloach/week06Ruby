=begin 
  Ejercicio:
  Crean un programa que dibuje el siguiente patrón de puntos, asteriscos y barra intercalando hasta n. 
  Donde n es un valor ingresado por el usuario al momento de ejecutar el script.
=end

# Se almacena el input del usuario en la variable "num"
num = ARGV[0].to_i

num.times do |i|
  if i % 3 == 0
    print "." * 2
  elsif i % 3 == 1
    print "*" * 2
  else
    print "|" * 2
  end
end

