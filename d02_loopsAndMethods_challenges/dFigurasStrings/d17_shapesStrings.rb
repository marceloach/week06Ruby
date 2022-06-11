=begin 
  DESAFIO: FIGURAS STRINGS

  INSTRUCCIONES:
  Crear un programa que nos permita imprimir figuras basadas en inputs del usuario.
    Primero debes realizar y validar un diagrama de flujo que cumpla con los requerimientos.
    Luego debes programar la solución utilizando Ruby y tu editor de texto favorito.
=end

# Method: Desplega las opciones del juego
def shapesMenu
  shapelist = [" ● Cuadrado", " ● Triángulo", " ● Pirámide", " ● Salir"]
  puts "Eliga una de las siguientes opciones: "
  shapelist.each {|element| puts "#{element}"}
end

# Method: Valida las opciones de los jugadores
def validate(input)
  while input != "cuadrado" && input != "triangulo" && input != "piramide" && input != "salir"
    puts "Argumento invalido. Debe ingresar cuadrado, triángulo, porámide o salir."
    print "Ingrese nuevamente la figura: "
    input = gets.chomp
  end
  return input
end

# Method: Valida el número ingresado sea superior a uno
def validateNumber(input)
  while input <= 1
    puts "Número invalido." 
    print "Ingrese nuevamente un número: "
    input = gets.chomp.to_i
  end
  return input
end

# Method: Notifica la salida del juego
def finished
  puts "El juego acaba de terminar."   
end

# Method: Dibuja un cuadrado
def square(num)
  num.times do
    num.times do
      print "*"
    end
    puts ""
  end
end

# Method: Dibuja un triángulo
def triangle(num)
  num.times do |i|
    (i+1).times do
      print "*"
    end
    puts ""
  end
end

# Method: Dibuja una pirámide
def pyramid(num)

  num.times do |i|
    (i).times do
      print "*"
    end
    puts ""
  end

  num.times do |i|
    (num-i).times do
      print "*"
    end
    puts ""
  end
  
end

# Method: Dibuja la forma solicitada
def displayShape(shape, num)

  if shape == "cuadrado"
    # Display square
    square(num)      
  elsif shape == "triangulo"
    # Display triangle
    triangle(num)    
  else
    # Display pyramid
    pyramid(num)     
  end

end


# Menu de opciones de figuras
shapesMenu
puts ""

# Ingreso del usuario
print "Ingrese la figura: "
shape = gets.chomp.downcase
validateShape = validate(shape)

# Game over
if validateShape == "salir"
  finished
else
  print "Ingrese un número: "
  number = gets.to_i
  validateNum = validateNumber(number)
  # Start game
  displayShape(validateShape, validateNum)
end