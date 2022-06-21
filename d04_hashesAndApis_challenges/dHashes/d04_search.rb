=begin 
  DESAFIO: HASHES

  INSTRUCCIONES:
  Crear un programa llamado 'd04_search.rb' que pueda buscar a que mes pertenece una o más cifras específicas. En caso de no encontrarlo mostrar el mensaje "no encontrado".
  
  Uso:
  ruby d04_search.rb 15000 31000 27000
  
  Enero
  no encontrado
  no encontrado
=end

ventas = {
  Enero: 15000,
  Febrero: 22000,
  Marzo: 12000,
  Abril: 17000,
  Mayo: 81000,
  Junio: 13000,
  Julio: 21000,
  Agosto: 41200,
  Septiembre: 25000,
  Octubre: 21500,
  Noviembre: 91000,
  Diciembre: 21000
}

inputs = ARGV

def search(hash, array)
  array.each do |i|
    if hash.invert[i.to_i]
      puts hash.invert[i.to_i]
    else
      puts "No encontrado"
    end
  end
end

search(ventas, inputs)