=begin 
  GUIA: EL MÉTODO CONSTRUCTOR

  EJERCICIO:
  Se pide crear la clase 'Product' que tenga 'name' y 'stock'.
  Por defecto, si el 'stock' no se especifica será cero. El 'name' se define al momento de crearlo.
=end

class Product
  attr_accessor :name, :stock

  def initialize(name, stock=0)
    @name = name
    @stock = stock
  end
end

p1 = Product.new("notebook")
p2 = Product.new("mouse", 5)

print "#{p1.name} = #{p1.stock}\n"
print "#{p2.name} = #{p2.stock}"
