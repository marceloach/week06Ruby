=begin 
  GUIA: INTRODUCCIÓN A APIs

  TEMAS:
    Conocer el concepto de request y response.
    Conocer la importancia de las API Rest para comunicar programas por internet.
    Utilizar Postman para realizar un request a una API.
=end

# Se incorpora la clase JSON para leer archivos json
require 'json'

# Se obtiene los datos del archivo
data = open("h12_firstRequest.json").read 
# Se transforma los datos en un hash
hash = JSON.parse(data)
puts hash.class
puts hash.length