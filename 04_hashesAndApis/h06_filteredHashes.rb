=begin 
  GUIA: ITERANDO HASHES

  TEMAS:
    Transformar los valores y generar un hash nuevo.

  EJERCICIOS:
  Dado un hash crear un método que devuelva otro hash pero filtrando todos aquellos que tienen valores inferior a 70000
=end

sales = {
  Octubre:   65000,
  Noviembre: 68000,
  Diciembre: 72000
}

def filter(hash)
  filteredHash = {}

  hash.each do |key, value|
    filteredHash[key] = value if value < 70000
  end
  filteredHash
end

print filter(sales)