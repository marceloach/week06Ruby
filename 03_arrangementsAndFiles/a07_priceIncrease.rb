=begin 
  GUIA: ITERANDO Y FILTRANDO ARRAYS CON EACH METHOD

  EJERCICIO:
    Crear un método llamado augment que recibe un arreglo y un multiplicador y que como resultado de un arreglo con todos los valores aumentados.
=end

prices = [120, 210, 309, 104, 192]

def augment(array, factor)
  newPrice = []
  array.each do |price|
    newPrice.push(price * factor)
  end
  newPrice
end

priceIncrease = augment(prices, 1.2)
print priceIncrease