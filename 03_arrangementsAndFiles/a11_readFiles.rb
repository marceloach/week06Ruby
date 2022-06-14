=begin 
  GUIA: ARCHIVOS Y MÚLTIPLES ARRAYS

  TEMAS:
    Leer y procesar archivos de múltiples líneas y varios registros por línea.

  EJERCICIO:
    Aumentar 15 puntos extra a todos los alumnos en la segunda nota.
    Agregar una columna con nota 100.
=end

# Se incorpora la clase CSV para leer archivos CSV
require 'csv'

# Se abre y lee el archivo
# data = CSV.open('a11_data.csv').readlines

# Se remueve los vacíos
# data.reject! {|x| x.empty?}

# Selección de una fila
# print data[1]

# Selección de un elemento de una fila
# print data[1][0]

# --- DESARROLLO DEL EJERCICIO ---

# Leemos el archivo transformando los datos automáticamente a número
data = CSV.open("a11_data.csv", converters: :numeric).readlines
data.reject! {|x| x.empty?}

# Contamos la cantidad de líneas del archivo
lines = data.length

lines.times do |i|
  data[i][2] += 15  # Sumamos 15 puntos al tercer elemento
  data[i].push(100) # Agregamos una nota 100
end

CSV.open("a11_file.csv", "w") do |csv|
  lines.times do |i|
    csv << data[i]
  end
end

# print data