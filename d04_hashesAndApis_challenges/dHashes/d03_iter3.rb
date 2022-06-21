=begin 
  DESAFIO: HASHES

  INSTRUCCIONES:
  Crear un programa llamado 'd03_iter3.rb' que tenga un método llamado 'filter' que reciba un hash y devuelva un hash nuevo con los valores superior a un parámetro que será ingresado al momento de llamar al programa.
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

def filter(hash, greaterThan)
  ventasFiltradas = hash.select {|key, value| value > greaterThan}
end

print filter(ventas, 30000)