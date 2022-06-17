=begin 
  GUIA: MUTABILIDAD

  TEMAS:
    Conocer los conceptos de mutabilidad e inmutabilidad.
    Crear objetos cuyas operaciones devuelvan nuevos objetos.
    Crear métodos que modifiquen el estado de un objeto.
    Crear métodos que no modifiquen el estado de un objeto.

  NOTA:
  Un objeto cambia de estado cuando se modifica uno de sus atributos.
  Un objeto es mutable si puede cambiar de estado.
  Un objeto está compuesto de métodos y atributos. Cuando sus atributos pueden cambiar debido al llamado de un método entonces, se puede inferir que el objeto es mutable.
=end

# Creando un método que modifique el estado

# class Person
#   attr_accessor :name, :walked

#   def initialize(name, walked = 0)
#       @name = name
#       @walked = walked
#   end

#   # Este método modifica el estado @walked por lo que es mutable.
#   def walk(km = 1)
#     @walked += km
#   end
# end

# Creando un método que no modifique el estado

class Person
  attr_accessor :name, :walked

  def initialize(name, walked = 0)
      @name = name
      @walked = walked
  end

  # Se crea un objeto para que sea inmutable.
  def walk(km = 1)
    Person.new(@name, @walked + km)
  end
end

personObj1 = Person.new("Daniel",15)
personObj2 = personObj1.walk(50)
# personObj1.walk(50)
# puts personObj1.walked
puts personObj2.walked
puts personObj2.name
# puts p2.object_id
# puts personObj1.object_id
puts "---"

# Otro ejemplo creando un método que no modifique el estado

class Lego
  attr_reader :size

  def initialize(size = 1)
    @size = size
  end

  def +(lego)
    Lego.new(@size + lego.size)
  end
end

# legoObj = Lego.new(2) + Lego.new(5) # = Lego.new(2).+(Lego.new(5))
# puts legoObj.size

legoObj1 = Lego.new(2)
legoObj2 = Lego.new(5)
legoObj3 = legoObj1 + legoObj2

puts legoObj1.object_id
puts legoObj2.object_id
puts legoObj3.object_id
puts "Tamaño lego: #{legoObj3.size}"



