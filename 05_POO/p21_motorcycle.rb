=begin 
  GUIA: HERENCIA

  EJERCICIO:
  Crear la clase 'Motorcycle' que herece de 'Vehicle', pero que posea solo 2 ruedas.
=end

#Clase padre
class Vehicle
  attr_reader :wheel
  
  def initialize
    @wheel = 4
  end

  def start
    puts "rRRRRrRRRRRrR"
  end

  def stop
    puts "El motor se ha detenido..."
  end
end

#Clase hijo
class Motorcycle < Vehicle
  def initialize
    @wheel = 2
  end
end

motorCycleObj1 = Motorcycle.new
puts motorCycleObj1.wheel
motorCycleObj1.start
motorCycleObj1.stop