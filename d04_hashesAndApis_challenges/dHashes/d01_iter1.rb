=begin 
  DESAFIO: HASHES

  INSTRUCCIONES:
  Crear el programa '01_iter1.rb' que itere el hash ventas y muestre en pantalla todas los ventas superiores a 45000, sólo el valor de la venta.

  Uso:
  ruby 01_iter1.rb

  81000
  91000
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

ventasFiltradas = ventas.select {|key, value| value > 45000}
puts ventasFiltradas.values