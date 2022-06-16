=begin 
  GUIA: CONSUMIENDO UNA API DESDE RUBY

  TEMAS:
    Utilizar Postman para obtener el código Ruby necesario para hacer un request.
    Transformar la respuesta de JSON a una estructura utilizable directamente en Ruby.
=end

require 'json'
require "uri"
require "net/http"

# Transformando nuestro request en un método
def request(url_request)
  url = URI(url_request)

  https = Net::HTTP.new(url.host, url.port)
  https.use_ssl = true

  request = Net::HTTP::Get.new(url)
  
  response = https.request(request)
  
  JSON.parse(response.read_body)
end

# Reutilizando el método
puts request("https://jsonplaceholder.typicode.com/posts")