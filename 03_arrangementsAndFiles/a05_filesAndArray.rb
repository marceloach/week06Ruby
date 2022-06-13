=begin 
  GUIA: ARCHIVOS, ARREGLOS Y STRINGS

  TEMAS:
    Leer un archivo con datos y guardarlos en una variable.
    Guardar los resultados en un archivo.

  EJERCICIO:
    Crear un programa que tome los datos de ese archivo y construya un arreglo con los mismos pero transformando todos los valores mayores de 20 a un máximo de 20.
    
=end

# Para abrir un archivo se utiliza el método 'open'
# Para leer el texto del archivo abierto se utiliza el método 'read'
# Para eliminar el salto de línea se utiliza el método 'chomp'
# Para transformar los datos del archivo en un array se utiliza el método 'split'
data = open("a05_data.txt").read.chomp.split(",")

# Para transformar los datos en enteros se utiliza el método 'to_i'
array = []
data.each do |i|
  array.push i.to_i
end

print array
puts ""

# Se utiliza el método 'readlines' para leer el archivo completo especificado por nombre como líneas individuales y devuelve esas líneas en un array.

data2 = open("a05_data2.txt").readlines

array2 = []
data2.each do |i|
  array2.push i.to_i
end

print array2
puts ""
puts "---"

# Para guardar los datos en un archivo se utiliza el metódo "file.write('/path/to/file', 'datos')"
File.write("a05_output.txt", data2.join("\n"))

# --- DESARROLLO EJERCICIO ---

def read_file(filename)
  data = open(filename).readlines
  numberList = []
  data.each do |i|
    if i.to_i > 20
      numberList.push 20
    else
      numberList.push i.to_i
    end
  end
  return numberList
end

newData = read_file("a05_data2.txt")
print newData