=begin 
  GUIA: MÁS ALLÁ DEL GET

  EJERCICIO:
  consultar los últimos precios de bitcoin y generar un gráfico.
  Para esto ocuparemos los datos de cierre diario de la API de coindesk, estos se encuentran en la siguiente URL:
    https://api.coindesk.com/v1/bpi/historical/close.json

  Se pide obtener los precios y fechas del último periodo y a partir de estos obtener un arreglo de todas las fechas donde el valor ha sido menor a 30000 USD.
=end

# Se declaran los siguientes códigos para el funcionamiento del método siguiente
require 'json'
require "uri"
require "net/http"

# Method: realiza un request a un servidor
def request(url_request)
  url = URI(url_request)
  https = Net::HTTP.new(url.host, url.port)
  https.use_ssl = true
  request = Net::HTTP::Get.new(url)
  response = https.request(request)
  JSON.parse(response.read_body)
end

# Se obtienen los precios bitcoins
prices = request("https://api.coindesk.com/v1/bpi/historical/close.json")["bpi"]

# Se obtiene arreglo con las fechas con valores menores a 30000 USD
selected_data = prices.select {|k,v| v < 30000 }
puts selected_data.keys