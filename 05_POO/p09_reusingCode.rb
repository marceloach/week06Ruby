=begin 
  GUIA: EL MÉTODO CONSTRUCTOR

  TEMAS:
    Cargar objetos desde otros archivos.
    Diferenciar el método 'require' de 'require_relative'.
=end

# Se utiliza la clase que esta contenida en el siguiente archivo
require_relative 'p08_points'

p1 = Point.new(5,4)
print "#{p1.x},#{p1.y}\n"
p1.increase
print "#{p1.x},#{p1.y}\n"