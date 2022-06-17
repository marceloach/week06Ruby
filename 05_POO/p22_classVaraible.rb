=begin 
  GUIA: VARIABLES DE CLASE

  TEMAS:
    Definir variables de clase.
    Distinguir una variable de instancia de una de clase.
    Utilizar variables de clase desde un método de instancia.
=end

class Lego
  attr_reader :size
  @@count = 0             # Declarando variable de clase

  def initialize(size)
    @size = size          # Variable de instancia
    @@count += 1          # Manipulación de la variable de clase
  end
end

piece1 = Lego.new(5)
puts piece1.size