=begin 
  DESAFIO: RENTABILIDAD

  INSTRUCCIONES
  Un emprendedor quiere crear una aplicación y necesita saber si es rentable, para eso tiene que:
    El producto planea venderse en 50 dólares.
		Se espera tener 1000 usuarios al año.
		Los gastos del año son 20000 dólares.
		Las utilidades se calculan como : 𝑝𝑟𝑒𝑐𝑖𝑜_ 𝑣𝑒𝑛𝑡𝑎𝑠 * 𝑢𝑠𝑢𝑎𝑟𝑖𝑜𝑠 − 𝑔𝑎𝑠𝑡𝑜𝑠
		Los impuestos aplicados a las utilidades son el 35% y solo aplican si es positivo.

	Utilizando ARGV en lugar de gets, crear el programa "d01_emprendedor1.rb" donde el usuario ingrese el precio, el número de usuarios, los gastos y el programa calcula las utilidades.
=end

# Almacenar los inputs del usuarios en variables:

precio = ARGV[0].to_i
usuarios = ARGV[1].to_i
gastos = ARGV[2].to_i

# Operaación para calcular las utilidades:
utilidades= precio * usuarios - gastos

# En el caso si el resultado es positivo se aplica el impuesto:
if utilidades > 0
  impuestos = utilidades * 0.35
else
  impuestos = 0
end

puts "Precio: #{precio}, usuarios: #{usuarios} y gastos: #{gastos}"
puts "Las utilidades obtenidas son: #{utilidades}"
puts "Los impuestos a pagar son: #{impuestos}"