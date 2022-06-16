=begin 
  GUIA: SSL

  TEMAS:
    Conocer las implicaciones de SSL.
    Conocer la importancia de no enviar información sensible sin SSL.
    Entender la importancia de verificar el certificado.
=end

require 'json'
require 'uri'
require 'net/http'

def request(url_requested)
  url = URI(url_requested)

  http = Net::HTTP.new(url.host, url.port)
  # --- Protección SSL ---
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER
  # ----------------------

  request = Net::HTTP::Get.new(url)
  request["cache-control"] = 'no-cache'
  request["postman-token"] = '5f4b1b36-5bcd-4c49-f578-75a752af8fd5'

  response = http.request(request)
  JSON.parse(response.body)
end

data = request('https://jsonplaceholder.typicode.com/photos')[0..5]
puts data