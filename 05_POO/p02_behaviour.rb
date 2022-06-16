=begin 
  GUIA: AGREGANDO COMPORTAMIENTO A LOS OBJETOS

  TEMAS:
    Entender los métodos de instancia como el comportamiento de un objeto.
    Agregar métodos de instancia a un objeto.
    Utilizar métodos de instancia de un objeto.

  EJERCICIO:
  Construir la clase 'Dog' con el método 'bark':
    Al llamar al método se debe mostrar en pantalla bark.
    Instanciar 2 perros y hacerlos ladrar.
=end

# Agregando un método de instancia

class Person
  def greeting
    puts "Hola!!"
  end
end

# Utilizando un método definido dentro de una clase

ignacio = Person.new
ignacio.greeting

# --- DESARROLLO EJERCICIO ---

class Dog           # Clase
  def bark          # Método de instancia
    puts "Guaauu!!"
  end
end

bulldog = Dog.new   # Instanciar objeto
bulldog.bark        # Llamada al método de instancia

yorkshire = Dog.new # Segundo objeto
bulldog.bark        # Tambíen llama al método de instancia