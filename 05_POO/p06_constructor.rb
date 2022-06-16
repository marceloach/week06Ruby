=begin 
  GUIA: EL MÉTODO CONSTRUCTOR

  TEMAS:
    Crear objetos con valores iniciales.
    Asignar valores iniciales al momento de crear un objeto.

  NOTAS:
  Las clases al momento de instanciarse, llaman automáticamente a un método llamado 'initialize'.

  El método 'initialize' es frecuentemente utilizado para asignar valores iniciales.
=end

# Utilizando initialize para dar valores iniciales
class TrafficLights
  attr_reader :status

  def initialize(status)
    @status = status      
  end
end

t1 = TrafficLights.new(:red)
puts t1.status
puts t1.status.class
puts "---"

# Constructores con argumentos con valores por defecto
class House
  attr_reader :floor

  def initialize(floor = 1)
    @floor = floor
  end
end

h1 = House.new
h2 = House.new(5)

puts h1.floor
puts h2.floor
puts "---"