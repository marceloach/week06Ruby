=begin 
  GUIA: MANEJO DE EXCEPCIONES

  EJERCICIO:
  En un ejemplo anterior se creó la clase 'Person' y la clase 'Pet', en donde una 'Person' podía tener una mascota.
  Ahora se necesita evitar que la variable mascota sea algo distinto a la clase mascota.
=end

class Mascota
  attr_accessor :nombre
  
  def initialize(nombre)
    @nombre = nombre
  end
end

class Persona
  attr_accessor :nombre, :mascota
  
  def initialize(nombre, mascota = nil)
    raise ArgumentError, "Argumento mascota es de tipo #{mascota.class}, no pertenece a una clase Mascota." if !(mascota.class == NilClass || mascota.class == Mascota)
    @nombre = nombre
    @mascota = mascota
  end
end

m1 = Mascota.new("Mishu")
puts m1.nombre

p1 = Persona.new("Mach", m1)
puts "#{p1.nombre} tiene un gato llamado #{p1.mascota.nombre}"

p3 = Persona.new("Jireh")
puts "#{p3.nombre} no tiene mascota (Mascota=#{p3.mascota.class})"

p2 = Persona.new('Fry', 'nibler') #Argument mascota is of type String but not Mascota