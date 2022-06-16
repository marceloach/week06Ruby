=begin 
  GUIA: MÁS ALLÁ DEL GET

  TEMAS:
    Utilizar los verbos de POST, PUT y DELETE
    Conocer el concepto de negociación de contenido
    Utilizar headers para negociar contenido
    Utilizar el body de un request para enviar contenido
    Crear un nuevo objeto utilizando el método Post
=end

# Subiendo un artículo desde Ruby
require "uri"
require "json"
require "net/http"

url = URI("https://jsonplaceholder.typicode.com/posts")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Post.new(url)
request["Content-Type"] = "application/json"
request["cache-control"] = "no-cache"
request["postman-token"] = "f230cc3e-dcda-37b6-556d-fd1e9d334108"
request.body = JSON.dump({
  "title": "Post 101",
  "body": "Este es nuestro primer post",
  "userId": 1
})

response = https.request(request)
puts response.read_body

# Actualizando un recurso
require "uri"
require "json"
require "net/http"

url = URI("https://jsonplaceholder.typicode.com/posts/20")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Put.new(url)
request["Cache-Control"] = "no-cache"
request["postman-token"] = "e12f50c0-9587-fbde-0960-61de47ba3517"
request["Accept-Charset"] = "UTF-8"
request["Content-Type"] = "application/json"
request.body = JSON.dump({
  "title": "Cambio de post",
  "body": "Actualizando el post",
  "userId": 1
})

response = https.request(request)
puts response.read_body

# Borrando un artículo
require "uri"
require "json"
require "net/http"

url = URI("https://jsonplaceholder.typicode.com/posts/20")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Delete.new(url)
request["content-type"] = "application/json"
request["accept-charset"] = "UTF-8"
request["cache-control"] = "no-cache"
request["postman-token"] = "9a1b192d-aeb7-4509-688f-2fe0fbf5b4b0"

response = https.request(request)
puts response.read_body

=begin 
  RESUMEN:
  Una API Rest es un estándar para ver, crear, actualizar y borrar recursos.
  Para ver recursos utilizaremos el verbo o http method GET
  Para agregar un recurso nuevo utilizaremos el verbo POST
  Para actualizar un recurso utilizaremos PUT o PATCH
  Para borrar un recurso utilizaremos DELETE
=end