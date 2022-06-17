=begin 
  GUIA: MÓDULOS Y MIXINS

  TEMAS:
    Incluir un módulo a una clase a través de mixin.
    Diferenciar mixin de herencia.

  NOTAS:
  Los mixins nos permiten incorporar los métodos definidos en un módulo como métodos de instancia con la instrucción 'include' o métodos de clase con la instrucción 'extend' a un objeto.
=end

# Se crea modulo con un método
# En este caso no se ocupo el self en los métodos del módulo
end
module Jumping
  def jump
    puts "Puedo saltar!"
  end
end

# Se introduce el método del módulo como un método de instancia
class Dog
  include Jumping
end

# Se introduce el método del módulo como un método de clase
class Cat
  extend Jumping
end

# Instancias
dogObj = Dog.new
dogObj.jump

Cat.jump



