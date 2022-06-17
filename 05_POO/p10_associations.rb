=begin 
  GUIA: ASOCIACIONES

  TEMAS:
    Trabajar con objetos que se asocian.
    Leer diagramas UML con asociaciones.
    Crear múltiples clases y asociarlas.
    Crear asociaciones con cardinalidad 0..1.
    Crear asociaciones con cardinalidad 0..n.
=end

# class Person
#   attr_accessor :name, :pet

#   def initialize(name, pet = nil)       # Cardinalidad 0-1
#     @name = name
#     @pet = pet
#   end
# end

# class Pet
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
# end

# pet1 = Pet.new("Fido")
# person1 = Person.new("Fernanda", pet1)  # Asociación
# person2 = Person.new("Flavio")

# puts person1.pet.name
# puts person2.pet.nil?
# puts "---"

# -------------------------------------------------------------

# class Person
#   attr_accessor :name, :pet

#   def initialize(name, pet = nil)       # Cardinalidad 0-n
#     @name = name
#     @pet = []
#     @pet.push pet
#   end
# end

# class Pet
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
# end

# pet1 = Pet.new("Fido")
# pet2 = Pet.new("Michu")
# pet3 = Pet.new("Sombra")
# person1 = Person.new("Fernanda", pet1)  # Asociación
# person1.pet.push pet2
# person1.pet.push pet3

# person2 = Person.new("Flavio")

# puts person1.pet[0].name
# puts person1.pet[1].name
# puts person1.pet[2].name
# puts "---"

# -------------------------------------------------------------

class Person
  attr_accessor :name, :pet

  def initialize(name, pet)       # Se recibe un arreglo
    @name = name
    @pet = pet
  end
end

class Pet
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

pet1 = Pet.new("Fido")
pet2 = Pet.new("Michu")
pet3 = Pet.new("Sombra")
person1 = Person.new("Fernanda", [pet1, pet2, pet3])  # Asociación

puts person1.pet[0].name
puts person1.pet[1].name
puts person1.pet[2].name
puts "---"