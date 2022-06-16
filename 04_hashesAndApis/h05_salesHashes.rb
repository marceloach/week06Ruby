=begin 
  GUIA: ITERANDO HASHES

  TEMAS:
    Transformar los valores dentro de un hash.
    Transformar los valores y generar un hash nuevo.

  EJERCICIOS:
  Dado un hash con las ventas de los últimos 3 meses:
    Modificar el hash para incrementar las ventas un 10%
    Generar un nuevo hash pero con las ventas disminuidas un 20%
=end

ventas = {
  Octubre:   65000,
  Noviembre: 68000,
  Diciembre: 72000
}

# Modificar el hash para incrementar las ventas un 10%
ventas.each do |key, value|
  ventas[key] = value * 1.1
end
print ventas
puts "---"

# Generar un nuevo hash pero con las ventas disminuidas un 20%

nuevasVentas = {} # Se crea un hash vacio

ventas.each do |key, value|
  nuevasVentas[key] = value - (value * 0.2)
end
print nuevasVentas
puts "---"