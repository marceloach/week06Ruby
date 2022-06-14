=begin 
  GUIA: ARCHIVOS Y MÚLTIPLES ARRAYS

  TEMAS:
    Normalización vectorial.

    Consiste en que dado un arreglo con valores, se genera un nuevo arreglo donde todos los valores están entre cero y uno.

    Para lograrlo cada valor se divide por el módulo, y el módulo se calcula como la raíz de la suma de cada uno de los elementos al cuadrado.
=end

score = [75, 100, 48]

def modulo(array)
  n = array.count
  sum = 0

  n.times do |i|
    sum += array[i]**2
  end
  Math.sqrt(sum)
end

def normalizar(array)
  n = array.count
  m = modulo(array)
  arrayNormalizado = []

  n.times do |i|
    arrayNormalizado.push array[i]/m
  end
  arrayNormalizado
end

def verify(arrayNormalize)
  n = arrayNormalize.count
  sum = 0

  n.times do |i|
    sum += arrayNormalize[i]**2
  end
  sum.round(1)
end

normalize = normalizar(score)
print normalize
puts ""
arrayVerify = verify(normalize)
puts arrayVerify