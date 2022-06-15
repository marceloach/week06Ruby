=begin 
  DESAFIO: ARREGLOS Y ARCHIVOS

  INSTRUCCIONES:
  Crear el programa 'd06_projections.rb' y un archivo con las proyecciones de venta de cada mes del próximo año. 
  Este archivo debe llamarse d06_baseSales.db y estar en la misma carpeta de trabajo que el código.

  El desafío consiste en hacer 2 simulaciones:
    Las ventas totales del primer semestre, dado que en la primera mitad del semestre se vende un 10% más.
    Las ventas totales del segundo semestre, dado que en la segunda mitad del semestre se vende un 20% más.

  El resultado debe ser presentado en un archivo llamado 'd06_results.db' y los datos deben contener máximo 2 decimales y estar cada uno en una sola línea.

  Uso:
  ruby d06_projections.rb

  Contenido del archivo d06_results.db
  // Estos valores son referenciales
  231231.32
  879879.43
=end

# Method: Abre y lee los archivos ingresados
def read_file(filename)
  data = open(filename).read.split(",").map {|i| i.to_f}
  lines = data.length
  newData = []
  lines.times do |i|
    newData.push data[i]
  end
  newData
end

# Method: Calcular las proyecciones de ventas
def projections(array, increase, startIndex, endIndex)
  results = array[startIndex, endIndex].map {|i| sprintf('%.2f',(i * increase))}
end

# Method: Guarda y escribe los datos en un archivos
def write_file(array)
  File.write("d06_results.db", array.join("\n"))
end

# # Introducir el nombre del archivo para el calculo de las proyecciones
# print "Ingrese el nombre del archivo para obtener los datos de ventas: "
# file = gets.chomp # => d06_baseSales.db
# puts "---"

# Llamando a los métodos
arraySales = read_file("d06_baseSales.db")
firstSemester = projections(arraySales, 1.1, 0, 5)
secondSemester = projections(arraySales, 1.2, 6, 11)

# Concatenación de los dos arreglos
nextYearSales = firstSemester + secondSemester

# Guardar los datos en un archivo nuevo
write_file(nextYearSales)