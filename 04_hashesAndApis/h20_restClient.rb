=begin 
  EN CLASE: USO GEMA REST CLIENT

  TEMA:
    Se realiza request a través de la gema Rest-Cliet.
=end

# Se llaman las siguientes clases para ejecutar el código
require 'awesome_print' # Una gema
require 'rest-client'   # Una gema
require 'json'

# Se almacena la url en una variable
url = 'https://apis.digital.gob.cl/dpa/regiones'

# Se realiza la solicitud al servidor
response = RestClient.get(url)

# Se convierte el archivo JSON en Array object
result = JSON.parse(response.to_str)
# ap result

# Se imprime los resultados deseados 
result.each do |i|
  puts "Región: #{i['codigo']} => #{i['nombre']}"
end
