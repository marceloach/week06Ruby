=begin 
  DESAFIO: ARREGLOS Y ARCHIVOS

  INSTRUCCIONES:
  Crear un método llamado "highest_grades" que reciba un arreglo con el nombre y notas del alumno y devuelva la nota más alta de cada alumno.
=end

# Se crean constantes para mayor comprensión del código
STUDENT_NAME = 0
FIRST_SCORE = 1
LAST_SCORE = 4

# Se incorpora la clase CSV para leer archivos base de datos
require 'csv'

# Method: Abre y lee los archivos ingresados
def read_file(filename)
  data = CSV.open(filename, converters: :numeric).readlines
end

# Method: Obtiene la calificación más alta
def highest_grades(array)
  lines = array.length
  # Se itera para obtener las calificaciones más altas de cada alumno
  lines.times do |i|
    puts "La calificación más alta de #{array[i][STUDENT_NAME]} es: #{array[i][FIRST_SCORE,LAST_SCORE].max}"
  end
end

# Llamando los métodos
data = read_file("d07_grades.db")
highest_grades(data)
