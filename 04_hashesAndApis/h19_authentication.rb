=begin 
  GUIA: API CON AUTENTICACIÓN

  TEMAS:
    Obtener el id y la clave para autenticarse a una API
    Conectarse a una API que requiere autenticación
    Utilizar la API del diccionario de oxford
    Estudiar otros tipos de autenticación
=end

require 'json'
require 'uri'
require 'net/http'
require 'awesome_print' # Una gema instalada

def request(url_requested)
  url = URI(url_requested)

  http = Net::HTTP.new(url.host, url.port)
  # --- Protección SSL ---
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER
  # ----------------------

  request = Net::HTTP::Get.new(url)
  # --- Autentificación Oxford Dictionary ---
  request['app_id'] = ARGV[0]
  request['app_key'] = ARGV[1]
  # Se debe ingresar el id and key entregado por
  # el API para el funcionamiento del código  
  # -----------------------------------------

  response = http.request(request)
  JSON.parse(response.body)
end

# Variable que almacena la palabra que se usa para buscar su significado
word = "test" 

=begin
  Para utilizar de manera correcta la API Oxford Dictionaries, seguir el siguiente tutorial:
    https://developer.oxforddictionaries.com/documentation/getting_started
=end
result = request("https://od-api.oxforddictionaries.com:443/api/v2/entries/en-gb/#{word.downcase}")

# ap result

=begin
  p:
  When we compare the p method to puts and print, we find some major differences. First of all, p prints the the raw object that you pass to it. This is because it uses .inspect to convert the object to a string rather than .to_s.

  From this example, we can see that like puts, p adds a newline character to the end of the object that it prints. But p does not return nil. It returns that same object that was passed to it as an argument. This, combine the fact that p prints the raw object to the command line, makes p very useful when debugging.

  pp:
  PrettyPrint, or pp, is a special version of p that is essential exactly the same except for the fact that it attempts to print large hashes and arrays to the command line in a more readable format.

  ap:
  Awesome_print one ups pp on a grand scale. Not only does it display nested hashes in a more readable format, but it also prints the index value next to each element of arrays.

  Page source: https://dev.to/lofiandcode/ruby-puts-vs-print-vs-p-vs-pp-vs-awesome-5akl
=end

definition = result['results'][0]['lexicalEntries'][0]['entries'][0]['senses'][0]['definitions']
puts "#{word}: #{definition}"