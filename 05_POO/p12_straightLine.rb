=begin 
  GUIA: ASOCIACIONES

  EJERCICIO:
  Se solicita crear la clase recta, como es de conocimiento común, una recta está construida a partir de dos puntos.
=end

require_relative "p08_points"

class StraightLine
  attr_reader   :m
  attr_accessor :p1, :p2

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @m  = 0
  end

  # Adicione este método para probar hacer calculo
  def slope
    @m = (p2.y - p1.y) / (p2.x - p1.x)
  end
end

sl1 = StraightLine.new(Point.new(2,3), Point.new(3,4))
print "P1: x=#{sl1.p1.x}, y=#{sl1.p1.y}\n"
print "P2: x=#{sl1.p2.x}, y=#{sl1.p2.y}\n"

sl1.slope
puts "La pendiente de la recta es #{sl1.m}."