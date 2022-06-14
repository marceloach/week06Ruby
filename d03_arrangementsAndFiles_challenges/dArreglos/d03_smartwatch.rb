=begin 
  DESAFIO: ARREGLOS

  INSTRUCCIONES:
  Crear un método llamado 'clearSteps' que reciba un arreglo y descarte todos los valores que no sean números, menores a 200 y mayor a 100000.
  Los valores deben quedar como enteros. 
  El método debe retornar el arreglo filtrado.
=end

steps = ["100", "21", "231as", "2031", "1052000", "213b", "b123"]

def clearSteps(array)
  filteredArray = array.map {|step| step.to_i}
  filteredArray.reject {|step| step < 200 || step > 100000}
end

print "El nuevo arreglo filtrado es #{clearSteps(steps)}"