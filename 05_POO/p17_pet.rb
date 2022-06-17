=begin 
  GUIA: MUTABILIDAD

  EJERCICIO:
  Desarrollar la clase 'Pet', pero esta vez, el método 'match_up' devolverá un objeto nuevo.
=end

class Pet
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end

  def match_up(otherPet)
    Pet.new("Kuki, la nueva mascota")
  end
end

petObj1 = Pet.new("Fluffy")
petObj2 = Pet.new("Laika")
sonPetObj = petObj1.match_up(petObj2)
puts sonPetObj.name