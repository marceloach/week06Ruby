# Integer

numero1 = 20
numero2 = 30

sumatoria = numero1 + numero2

puts sumatoria
puts numero1.class
puts numero2.class
puts sumatoria.class

puts ""

# Float

decimales1 = 2.15
decimales2 = 7.56

producto = decimales1 * decimales2

puts producto
puts decimales1.class
puts decimales2.class
puts producto.class

puts ""

# Methods

intNumber = 1776

# Metodo para numero siguiente o sucesor
puts intNumber.next
puts nextNumber = intNumber.succ

# Metodo para validar si es un numero par o impar
puts intNumber.odd?
puts intNumber.even?
puts nextNumber.odd?
puts nextNumber.even?

puts ""

# Conversión de numeros enteros a flotante
puts floatNumber = intNumber.to_f

puts ""

# Digitos de una cifra
print 32442.digits

puts ""

# Redondear numeros decimales

puts 564.2356.round
puts 456.1326.to_i
puts 45.5.floor
puts 45.5.ceil