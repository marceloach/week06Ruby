=begin 
  GUIA: INTRODUCCIÓN A OBJETOS EN RUBY

  TEMAS:
    Conocer los conceptos de clase, instancia y objeto.
    Crear clases.
    Instanciar una clase.
    Conocer las convenciones para nombrar de las clases.
=end

# Creando una clase se utiliza la instrucción 'class'
# Convención: el nombre de la clase debe comenzar con letra mayúscula

class MyFirstClass
end

# Instanciando la clase 'MyFirstClass'

rubyClass = MyFirstClass.new
puts rubyClass.class

=begin  
  Clase:
  La clase es la base, se puede definir como un molde que permite construir varios objetos del mismo tipo.

  Instancia u objeto:
  La instancia es el producto final,también recibe el nombre de objeto.
  
  Instanciar:
  Instanciar es el acto de generar la instancia,
  La forma más común de instanciar es utilizando el método 'new'.
=end