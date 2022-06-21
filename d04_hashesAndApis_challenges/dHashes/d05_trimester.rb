=begin 
  DESAFIO: HASHES

  INSTRUCCIONES:
  Crear el programa 'd05_trimester.rb' donde se pide generar un hash llamado quarters con las ventas de cada trimestre a partir del hash de ventas de los enunciados anteriores. Las claves del hash tienen que ser 'Q1', 'Q2', 'Q3', 'Q4' .
  
  Uso:
  ruby d05_trimester.rb
  {"Q1"=>49000, "Q2"=>111000, "Q3"=>87200, "Q4"=>133500}
=end

# require 'awesome_print'

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

# Se crea constante para un código más limpio
MONTHLY_SALE_VALUE = 1

# Se declara array para almacenar las ventas trimestrales
quaterArray = []

# Se dividen las ventas anuales en trimestrales en forma de array
ventas.each_slice(3) {|element| quaterArray.push(element)}

key = ["Q1", "Q2", "Q3", "Q4"]
value = []

quaterArray.each do |quarterlySales|
  sum = 0
  quarterlySales.each do |monthlySale|
    sum += monthlySale[MONTHLY_SALE_VALUE]
  end
  value.push(sum)
  sum = 0
end

quaterHash = key.zip(value).to_h
print quaterHash

# MANERA SENCILLA
# resultados = {}
# ventas.values.each_slice(3).each_with_index do |value, index|
#     resultados["Q#{index + 1}"] = value.sum
# end
# print resultados