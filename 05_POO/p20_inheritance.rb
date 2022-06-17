=begin 
  GUIA: HERENCIA

  TEMAS:
    Crear clases que hereden de otras clases.
    Llamar un método heredado de la clase padre.
    Sobrescribir un método heredado de la clase padre.
    Agregar instrucciones al flujo de un método heredado de la clase padre utilizando la instrucción super.

  NOTA:
  Una clase hija hereda los atributos y el comportamiento de su clase padre.
  
  Esta implementación es tan simple como agregar el operador '<' en la definición de la clase hija.

  La herencia nos permite especializar la clase hija. Dicho de otra forma, podemos asignar comportamiento a la clase hija que la clase padre no posee.

  Una clase hija puede tener sus propios métodos y atributos e incluso sobrescribir comportamiento heredado.

  Para sobrescribir un método heredado, simplemente debemos definir un método con el mismo nombre del método heredado.

  A veces uno suele referirse a la clase padre como superclase y a la clase hija como subclase.

  La instrucción 'super' nos permite llamar a un método de una superclase que se llama exactamente igual. Esto nos permite operar sobre ese método sin tener que sobrescribir el método completo.
=end

# Aplicación de herencia y especialización

class Parent              # Clase padre
  attr_accessor :name     

  def initialize(name)    # Método clase padre
    @name = name          # Atributo clase pare
  end

  def wake_up
    "Es hora de despertar"
  end
end

class Child < Parent      # Clase hija
  def initialize(name)    # Especialización: sobrescribiendo un método heredado
    @name = name + " jr"  
  end

  def wake_up             # Aplicaición instrucción 'super
    super + " para ir al colegio!"
  end
end

childObj1 = Child.new("Fer")
puts childObj1.name       # Herencia: hereda el atributo de su clase padre
puts childObj1.wake_up

print Child.ancestors     # Con este método se refleja la cadena de ancestros