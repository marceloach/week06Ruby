=begin 
    Desafio:
    Crear un programa donde el usuario ingrese la gravedad y el radio.
    El resultado debe ser la velocidad de escape.
    IMPORTANT:
    Desarrollar el diagrama de flujo.
    Utilizar ARGV en lugar de gets.
=end

# Diagra de flujo: d03_escapeFlowchart.png

# Almacenar los inputs del usuario en variables
gravedad = ARGV[0].to_f
radio = ARGV[1].to_f

# Tabla de conversión de un kilometro
METROS = 1000

# Convertir kilometros en metros
radioMts = radio * METROS

# Calcular la velocidad de escape
velocidad = Math.sqrt(2 * gravedad * radioMts)

puts "La velocidad de escape de un planeta es de #{'%.1f' % velocidad}"