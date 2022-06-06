=begin  
  Ejercicio:
  Crear un programa donde el usuario ingrese un número como argumento y se genere una lista de HTML con esa cantidad de ítems y un segundo número que indique la cantidad de sub ítems.
=end

# Se almacena los inputs del usuario
lists = ARGV[0].to_i
sublists = ARGV[1].to_i

puts "<ul>"               # Unordered list: opening tag
lists.times do |i|        
  print "\t<li>\n"          # List item: opening tag
  print "\t\t<ul>\n"          # Unordered sublist: opening tag
  sublists.times do |j|
    print "\t\t\t<li>"          # Sublist item: opening tag
    print "#{i+1}.#{j+1}"         # Content
    print "</li>\n"             # Sublist item: closing tag
  end
  print "\t\t</ul>\n"         # Unordered sublist: closing tag
  print "\t</li>\n"         # List item: closing tag
end
puts "</ul>"              # Unordered list: closing tag