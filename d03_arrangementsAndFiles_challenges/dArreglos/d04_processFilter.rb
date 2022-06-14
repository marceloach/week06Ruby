=begin 
  DESAFIO: ARREGLOS

  INSTRUCCIONES:
  Se necesita un programa que pueda leer un archivo y genere un archivo con datos filtrados llamado 'd04_processFilter.txt' donde todos los valores sean mayor a un número.

  Uso:
  ruby d04_processFilter.rb 250
  299
  312
  412
=end

greaterThan = ARGV[0].to_i 

def read_file(filename, value)
  data = open(filename).readlines.map {|i| i.to_i}
  lines = data.length
  newData = []

  lines.times do |i|
    if data[i] > value
      newData.push data[i]
    end
  end
  File.write("d04_processFilter.txt", newData.join("\n"))
end

read_file("d04_process.txt", greaterThan)