=begin 
  DESAFIO: VELOCIDAD DE ESCAPE

  INSTRUCCIONES
	La velocidad de escape de un planeta (la velocidad mínima necesaria para poder salir de un planeta) está dada por la siguiente ecuación.
  
		𝑉𝑒 = Math.sgrt(2𝑔𝑟)
	
	Donde:
		g: Es la gravedad del planeta.
		r: Es el radio del planeta (en metros).

	Se pide crear el programa escape.rb donde el usuario ingrese la gravedad y el radio, y como resultado obtenga la velocidad de escape (ocupar la fórmula).

		Desarrollar el diagrama de flujo antes del programa.
		Verificar el funcionamiento con los datos de la Tierra:
			𝑔 = 9.8 𝑚𝑡𝑠/𝑠𝑒𝑔**2
			𝑟 = 6371 𝑘𝑚
			Respuesta: 11174,6 𝑚𝑡𝑠/s aproximadamente.

		Importante: Utilizar ARGV en lugar de gets.
			El primer argumento será g.
			El segundo será r.
	
			El programa debe poder ejecutarse como: ruby do3.escape.rb 9.8 6371.
=end

### Diagra de flujo: d03_escapeFlowchart.png ###

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