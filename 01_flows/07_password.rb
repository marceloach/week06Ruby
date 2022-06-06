=begin 
    Ejercicio:
    Crear un programa donde el usuario debe ingresar un password en la plataforma.
    Si el password tiene menos de 6 letras, se debe mostrar un aviso de alerta que el password es muy corto.
=end

print "Enter your password: "
password = gets.chomp

if password.length < 6
    puts "Your password must have at least six characters"
else
    puts "Your password is ok"
end