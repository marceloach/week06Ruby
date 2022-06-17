=begin 
  GUIA: EL MÉTODO CONSTRUCTOR

  EJERCICIO:
  Se pide crear una clase 'Point' para representar puntos dentro de un mapa, los puntos tendrán coordenada x y una coordenada y.
  Se pide que la clase 'Point' debe poder ser inicializada en cualquier posición.
  La posición de un punto puede ser vista fuera de la clase, pero no debe poder ser cambiada desde fuera.
  Se pide que la clase punto tenga un método para avanzar que permita incrementar la coordenada x en una unidad.
=end

class Point
  # attr_reader :x, :y
  attr_accessor :x, :y

  def initialize(x,y)
    @x = x
    @y = y
  end

  def increase
    @x += 1
  end
end

# p1 = Point.new(2,3)
# print "#{p1.x},#{p1.y}\n"
# p1.increase
# print "#{p1.x},#{p1.y}\n"