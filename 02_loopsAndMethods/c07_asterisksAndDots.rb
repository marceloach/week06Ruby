=begin 
  Ejercicio:
  Crean un programa que dibuje asteriscos y puntos intercalados hasta n. 
  Donde n es un valor ingresado por el usuario al momento de ejecutar el script.
=end

# Se almacena el input del usuario en la variable "num"
num = ARGV[0].to_i

# Se crea ciclo para ejecutarse de acuerdo al input del usuario
num.times do |even|
  # Mientras el residuo sea igual a 0 se mostrará un número par
  if even % 2 == 0
    print "*"
  # En caso contrario se mostrará un punto
  else
    print "."
  end
end