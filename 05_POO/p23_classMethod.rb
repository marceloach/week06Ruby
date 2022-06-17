=begin 
  GUIA: MÉTODOS DE CLASE

  TEMAS:
    Definir métodos de clase.
    Diferenciar un método de instancia de un método de clase.
    Llamar métodos de instancia y de clase.
    Crear métodos getter y setter para variables de clase.

  NOTA:
  Los métodos de clase se aplican directamente sobre la clase sin necesidad de utilizar instancias.

  Los métodos de clase pueden comenzar con self o con el nombre de la clase, sin embargo, es mucho más frecuente y es mucho más mantenible que comiencen con self.
=end

class Lego
  attr_reader :size
  @@count = 0                  # Declarando variable de clase

  def initialize(size)         # Método de instancia
    @size = size               # Variable de instancia
    @@count += 1               # Manipulación de la variable de clase
  end

  def self.totalPieces         # Método de clase (getter)
    @@count
  end

  def self.changeCount=(value) # Método de clase (setter)
    @@count = value
  end
end

piece1 = Lego.new(5)
piece2 = Lego.new(1)
piece3 = Lego.new(7)

puts Lego.totalPieces          # Mostrando el valor de la variable clase
Lego.changeCount = 0           # Cambiando el valor de la variable clase
puts Lego.totalPieces
