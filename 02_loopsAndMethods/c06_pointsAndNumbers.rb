=begin 
  Ejercicio:
  Crean un programa que dibuje n números intercalados por puntos.
  Donde n es un valor ingresado por el usuario al momento de ejecutar el script.
=end

# Se almacena el input del usuario en la variable "num"
num = ARGV[0].to_i

# Se inicializa la variable "even"
even = 0

# Se crea ciclo para ejecutarse de acuerdo al input del usuario
num.times do
  # Mientras el residuo sea igual a 0 se mostrará un número par
  if even % 2 == 0
    print even
  # En caso contrario se mostrará un punto
  else
    print "."
  end
  # Esta variable cumple la función de acumulador
  even += 1
end

# Solución DesafioLatam
n = ARGV[0].to_i
n.times do |i|
  if i % 2 == 0 # Si es par
    print i
  else
    print '.'
  end
end