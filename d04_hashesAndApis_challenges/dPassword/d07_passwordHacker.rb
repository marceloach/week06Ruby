=begin 
  DESAFIO: HACKEANDO UN PASSWORD CON UN DICCIONARIO

  INSTRUCCIONES:
  En este ejercicio crearemos el programa 'd07_passwordHacker.rb' donde ocuparemos un archivo que tiene un diccionario de posibles claves con una palabra por línea. 
  
  Ocuparemos este archivo para ir probando combinaciones hasta encontrar una palabra clave.

  Además a cada palabra del diccionario le agregaremos como postfijo 1, 12 y 123. 
  
  De esta forma si dentro del diccionario está la palabra password probaremos con: password, password1, password12 y password123, no existen otras variantes, solo esas tres.

  Uso:
  ruby d07_passwordHacker.rb d07_words.db qwerty
  200
=end

require 'json'
# require 'awesome_print'

file = ARGV[0]
hackear = ARGV[1]

def read_file(filename)
  JSON.parse(open(filename).read)
end

def search_words(dictionary, word)
  counter = 0
  postfix = ["", "1", "12", "123"]

  dictionary.each do |key, value|
    postfix.each do |add|
      if (value + add) == word
        # print "==> #{(value + add)} == #{word}\n"
        counter += 1
      end
    end
  end
  counter
end

data = read_file(file)
puts "Intentos: #{search_words(data, hackear)}"