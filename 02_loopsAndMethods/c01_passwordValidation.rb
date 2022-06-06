=begin 
    Ejercicio:
    Crear un programa donde el usuario debe ingresar un password.
    Calidar la contraseña de un usuario a través de un ciclo.
    Crear un diagrama de flujo con ciclos.
=end

print "Enter your password: "
password = gets.chomp

registeredPassword = "12345"

while password != registeredPassword
  puts "Your password is wrong, try again."
  print "Enter your password: "
  password = gets.chomp
end

puts "Your password is correct." 