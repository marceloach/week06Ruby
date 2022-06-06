=begin 
    Ejercicio:
    Crear un programa donde el usuario debe ingresar un password.
    Si el password es 12345 se debe informar que el password es correcto.
    En el caso contrario se debe mostrar que el password es incorrecto.
=end

print "Enter your password: "
password = gets.chomp

if password == "12345"
    puts "Your password is correct"    
else
    puts "Your password is wrong"
end