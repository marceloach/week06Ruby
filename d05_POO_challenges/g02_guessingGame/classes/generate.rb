require 'faker'
require 'rest-client'   
require 'json'

class GeneradorPalabras

  def self.generar
    elegir_al_azar = rand(0..2)
    case elegir_al_azar
    when 0
      return generar_lenguajes  
    when 1
      return generar_frutas
    else
      return generar_diccionario
    end
  end

  private
  def self.generar_lenguajes
    palabra_secreta = ["ruby", "javascript", "html", "css", "rubyonrails", "github", "windows", "vscode", "computador", "programa"]
    posicion_al_azar = rand(0..palabra_secreta.length-1)
    return palabra_secreta[posicion_al_azar]
  end

  def self.generar_frutas
    return Faker::Food.fruits
  end

  def self.generar_diccionario
    url = "https://random-word-api.herokuapp.com/all"
    response = RestClient.get(url)
    array = JSON.parse(response.to_str)
    array.sample
  end
  
end