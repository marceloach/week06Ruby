=begin 
  GUIA: CONSUMIENDO UNA API DESDE RUBY

  TEMAS:
    Utilizar Postman para obtener el código Ruby necesario para hacer un request.
    Transformar la respuesta de JSON a una estructura utilizable directamente en Ruby.
=end

# Se incorpora la clase JSON para leer archivos json
require 'json'

# Codigo extraido desde Postman para hacer un request
require "uri"
require "net/http"

url = URI("https://jsonplaceholder.typicode.com/posts")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)

response = https.request(request)
# puts response.read_body

# Transformando la estructura JSON en datos manipulables
results = JSON.parse(response.read_body)
puts results.class      # El resultado es un array
puts results[0].class   # El resultado es un hash
# puts results[0]         # Se muestra el primer elemento

# Accediendo a un elemento de la respuesta
# puts results[1]
puts results[2]

# Iterando los resultados
results.each do |post|
  puts post['title']    # El string "title" es una key del hash
end