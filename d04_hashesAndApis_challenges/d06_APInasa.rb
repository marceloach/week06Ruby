=begin 
  DESAFIO: INTRODUCCIÓN A LA PROGRAMACIÓN CON RUBY

  INSTRUCCIONES:
  1.Crear el método 'request' que reciba una url y el api_key y devuelva el hash con los resultados.
  Concatenar la API Key en la siguiente url
  https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY

  2.Crear un método llamado 'buid_web_page' que reciba el hash de respuesta con todos los datos y construya una página web. Se evaluará la página creada y tiene que tener este formato:

  <html>
    <head>
    </head>
    <body>
      <ul>
        <li><img src='.../398380645PRCLF0030000CC AM04010L1.PNG'></li>
        <li><img src='.../398381687EDR_F0030000CCAM05010M_.JPG'></li>
      </ul>
    </body>
  </html>

  3.Pregunta bonus: Crear un método 'photos_count' que reciba el hash de respuesta y devuelva un nuevo hash con el nombre de la cámara y la cantidad de fotos.
=end

require 'json'
require 'uri'
require 'net/http'
require 'awesome_print'

# Method: Realiza el request al  servidoe
def request(url_requested)
  url = URI(url_requested)
  http = Net::HTTP.new(url.host, url.port)
  # --- Protección SSL ---
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER
  # ----------------------
  request = Net::HTTP::Get.new(url)
  response = http.request(request)
  JSON.parse(response.body)
end

# Method: Construye una página web
def buid_web_page(data)
  # Se obtienen las imagenes del hash
  photos = data.map {|x| x["img_src"]}

  # Se crean las etiquetas para la página web
  openingTag = "<html>\n\t<head>\n\t</head>\n\t<body>\n\t\t<ul>\n"
  closingTag = "\t\t</ul>\n\t</body>\n</html>"
  imgList = ""

  # Se obtiene la url de las imagenes
  photos.each do |photo|
    imgList += "\t\t\t<li><img src=\"#{photo}\"></li>\n"
  end

  # Se estrutucta la página web
  pageStructure = openingTag + imgList + closingTag
end

# result = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY")["photos"][0..6]
# webPage = buid_web_page(result)

# Se guarda en un archivo el resultadp
# File.write("d06_output.html", webPage)

# Method: Contabiliza cuantas fotos se obtuvieron por camara
def photos_count(data)
  # Se obtiene los nombres de las camaras
  cameraName = data.map {|x| x["camera"]["full_name"]}
  cameraId = cameraName.uniq

  cameraHash = {}

  # Se contabilizan y se almacenan la cantidad de fotos por camara
  cameraId.each do |i|
    value = cameraName.select{|camera| camera == i}.count
    cameraHash[i] = value
  end

  cameraHash
end

result = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY")["photos"]
camera = photos_count(result)

camera.each do |key, value|
  puts "The #{key} has taken #{value} photos."
end