=begin 
  GUIA: LOS ESTADOS DE UN OBJETO

  TEMAS:
    Agregar estados a un objeto.
    Utilizar variables de instancia para agregar estados a un objeto.

  NOTA:
    Para guardar estados de un objeto se ocupan las variables de instancia, 
    estas se distinguen de otros tipos de variable porque empiezan con @ y 
    las variables de instancia deben ser definidas y utilizadas dentro de métodos de instancia.
=end

# Guardando un estado
class Vehicle         #Clase vehiculo
  def turn_on          # Método de encendido
    @switched = "on"    # Variable de instancia
  end

  def turn_off         # Método de apagado
    @switched = "off"   # Variable de instancia
  end

  def status           # Método del status
    @switched           # Variable de instancia
  end
end

# Instancias
mustang = Vehicle.new
ferrari = Vehicle.new

puts mustang.turn_on  # Tiene un estado independiente del otro objeto
puts mustang.status

puts ferrari.turn_off
puts ferrari.status