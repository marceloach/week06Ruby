require 'faker'

class GeneradorPalabras

  def self.generar
    elegir_al_azar = rand(0..1)
    case elegir_al_azar
    when 0
      return generar_lenguajes    
    else
      return generar_frutas
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
  
end