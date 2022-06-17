=begin 
  GUIA: MÓDULOS Y MIXINS

  TEMAS:
    Conocer módulo como herramienta para la reutilización de código.
    Crear un módulo.
    Diferenciar un módulo de una clase.

  NOTAS:
  Los módulos se caracterizan por ser elementos que nos permiten agrupar constantes, métodos y clases. Además, nos ayuda a evitar colisiones de nombres.
=end

# Creando nuestro primer módulo

module MyMath

  # Agrupando constantes
  PI = 3.14
  E = 2.718

  # Agrupando métodos
  def self.sum(x,y)
    x + y
  end

  def self.subtract(x,y)
    x - y
  end

  def self.multiply(x,y)
    x * y
  end

  # Agrupando clases
  class Number
    def display_message
      puts "Soy un número: "
    end
  end

  class OddNumber < Number
  end

  class EvenNumber < Number
  end

  # Puede haber dos clases con el mismo nombre dentro del módulo
  class Number
    def display_number
      puts "8"
    end
  end
end

# Acceder a constantes contenidas en el módulo
puts MyMath::PI
puts MyMath::E
puts "---"

# Acceder a métodos contenidas en el módulo
puts MyMath.sum(4,2)
puts MyMath.subtract(4,2)
puts MyMath.multiply(4,2)
puts "---"

# Acceder a clases contenidas en el módulo
numberObj1 = MyMath::Number.new
puts numberObj1.object_id
oddNumberObj1 = MyMath::OddNumber.new
puts oddNumberObj1.object_id
evenNumberObj1 = MyMath::EvenNumber.new
puts evenNumberObj1.object_id
puts "---"

# El contenido de las clases del mismo nombre se mezclan
numberObj1.display_message
numberObj1.display_number
puts "---"

# Evitar colisiones de nombre
# Los espacios de nombre nos permiten definir dos clases con el mismo nombre sin que sus definiciones se mezclen

module ActiveRecord
  class Base
  end
end

module ActionView
  class Base
  end
end

puts ActiveRecord::Base.new.object_id
puts ActionView::Base.new.object_id
puts "---"

# Anidación: Un módulo también puede contener otros módulos

module Money
  module Currency
    class Dolar
    end
  end
end

puts Money::Currency::Dolar.new.object_id