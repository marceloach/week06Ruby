=begin 
  GUIA: ASOCIACIONES

  TEMAS:
    Introducir el concepto de identidad.
    Diferenciar objetos a partir de su identificador.

  NOTA:
  Cada vez que se crea una instancia nueva, esta instancia recibe un identificador. 
  El identificador permite saber si se está hablando de dos objetos distintos o del mismo objeto, independiente del contenido que tengan, cosa que sucede con todo tipo de objetos.
=end

# Cada objeto tiene un identificador asociado para distinguirlo de otros objetos.

require_relative "p08_points"

pointObj1 = Point.new(7,2)
pointObj2 = Point.new(7,2)

puts "Al comparar los dos objetos tenemos el valor: #{pointObj1 == pointObj2}"
puts "El id del primer objeto es: #{pointObj1.object_id}"
puts "El id del segundo objeto es: #{pointObj2.object_id}"
puts "Aunque tengan los mismos valores, son objetos diferentes."
puts "---"

class Person
  attr_accessor :name, :walked

  def initialize(name, walked = 0)
      @name = name
      @walked = walked
  end

  def walk(km = 1)
    @walked += km
  end
end

# Son instancias distintas porque al modificar una, no modificamos la otra.
personObj1 = Person.new("Javiera")
personObj1.walk(5)
personObj1.walk
puts personObj1.walked

personObj2 = Person.new("Javiera")
personObj2.walk(10)
puts personObj2.walked