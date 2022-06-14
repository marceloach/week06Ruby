=begin 
  DESAFIO: ARREGLOS

  INSTRUCCIONES:
  Crear un método llamado 'promedio' que devuelva la cantidad promedio de visitas en el arreglo.

  Tips:
    La corrección del ejercicio funciona llamando al método promedio, por lo que el método tiene que existir y el valor ser el promedio de cualquier arreglo entregado.
    Puedes probar el programa llamando al método y mostrando el resultado, pero no es necesario que el programa entregue resultado alguno, la revisión se hace llamando al método.
=end

visits = [1000, 800, 250, 300, 500, 2500]

def average(array)
  average = array.inject(:+) / array.length.to_f
  average.round(1)
end

puts "El promedio de los datos es #{average(visits)}"