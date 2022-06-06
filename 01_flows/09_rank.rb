=begin 
    Ejercicio:
    Modificar el siguiente código para poder distinguir palabras muy largas, cuando tengan 15 o más caracteres.

    puts 'Ingresa una palabra'
    palabra = gets.chomp
    largo = palabra.size

    if largo <= 4
        puts 'Pequeña'
    elsif largo < 10
        puts 'Mediana'
    else
        puts 'Larga'
    end
=end

puts 'Ingresa una palabra'
palabra = gets.chomp
size = palabra.size

if size <= 4
    puts 'Pequeña'
elsif size < 10
    puts 'Mediana'
elsif size < 15
    puts "Larga"
else
    puts 'Muy larga'
end