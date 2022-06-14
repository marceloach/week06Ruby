=begin 
  DESAFIO: ARREGLOS

  INSTRUCCIONES:
  Crear un método llamado 'compareArrays' que reciba 2 arreglos y calcule el promedio de ambos, devolviendo el mayor de los promedios.
=end

visits1 = [1000, 800, 250, 300, 500, 2500]
visits2 = [2000, 900, 350, 200, 400, 1500]

def average(array)
  average = array.inject(:+) / array.length.to_f
  average.round(1)
end

def compareArrays(array1, array2)
  average1 = average(array1)
  average2 = average(array2)
  greaterThan = average1 > average2 ? average1 : average2
end

puts "El promedio mayor es #{compareArrays(visits1, visits2)}"