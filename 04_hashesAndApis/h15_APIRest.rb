=begin 
  GUIA: API REST

  EJERCICIO:
  Construyendo una página web a partir de las fotos:
    1.Realizamos un request a 'https://jsonplaceholder.typicode.com/photos y obtenemos el arreglo con hashes de fotos.
    2.Generamos un arreglo a partir de las fotos del hash.
    3.Iteramos el arreglo con las fotos y guardamos sus resultados en un archivo.
    4.Al momento de guardar agregaremos las etiquetas de HTML.
=end

require 'json'
require "uri"
require "net/http"

# Se utiliza el método del ejercicio anterior para realizar un request
def request(url_request)
  url = URI(url_request)
  https = Net::HTTP.new(url.host, url.port)
  https.use_ssl = true
  request = Net::HTTP::Get.new(url)
  response = https.request(request)
  JSON.parse(response.read_body)
end

# 1.Realizamos un request al recurso "/photos"
data = request("https://jsonplaceholder.typicode.com/photos")[0..11]

# 2.Se genera un arreglo: obtendremos el valor de la clave 'url'
photos = data.map{|x| x["url"]} # => https://via.placeholder.com/600/771796

# 3. Se itera el arreglo y el resultado se guarda en una variable.
# Se adiciona las partes de la etiqueta img
html = ""
photos.each do |photo|
  html += "<img src=\"#{photo}\">\n"
end

# 4. Se guarda en un archivo el resultado junto con la etiqueta html
# Genera un archivo html
File.write("h15_output.html", "<html>\n#{html}</html>")