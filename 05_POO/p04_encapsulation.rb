=begin 
  GUIA: PRINCIPIO DE ENCAPSULACIÓN

  TEMAS:
    Crear métodos getters y setters manualmente.
    Crear métodos getters y setters utilizando los métodos 'attr_reader', 'attr_writer' y 'attr_accessor'.

  NOTAs:
  Todas las variables de instancias son privadas por default, esto significa que no pueden ser accedidas desde fuera de la clase.

  class Mascota
    def initialize(nuevo_nombre)
      @nombre = nuevo_nombre
    end
  end

  m1 = Mascota.new("Shadow")
  m1.nombre # =>  undefined method `nombre' for #<Mascota:0x000001fc7d4f0204_d8 @nombre="Shadow"> (NoMethodError)

  Los estados de un objeto, es decir, variables de instancias deben estar protegidos y solo deben ser accedidos y modificados a través de métodos que se llaman 'getters' and 'setters'. 
=end

# 1.Creando getters y setters manualmente
class Pet1
  # Getter method
  def get_name         
    @name
  end
  # Setter method
  def set_name(name)  
    @name = name
  end
end

p1 = Pet1.new
p1.set_name "Wishbone"
puts p1.get_name
puts "---"

# 2.Creando getters y setters con los nombres de la variable
class Pet2
  # Getter method
  def name
    @name
  end
  # Setter method
  def name=(name)
    @name = name
  end
end

p2 = Pet2.new
p2.name = "Spike"
puts p2.name
puts "---"

# 3.Creando getters y setters con attributes accessors (RECOMENDADA)
class Pet3
  attr_accessor :name, :type
  # attr_reader #Define solo un método getter
  # attr_writer #Define solo un método setter
end

p3 = Pet3.new
p3.name = "Michu"
p3.type = "Cat"
puts p3.name
puts p3.type
puts "---"
