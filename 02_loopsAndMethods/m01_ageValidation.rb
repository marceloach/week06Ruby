=begin 
  Ejercicio:
  Crear un programa que contenga el siguiente código pero que cumpla las siguientes condiciones:
    Modificar el método para que reciba la edad.
    Llamar al método 3 veces, con edades generadas al azar.

  Código:
    def validar_edad
      edad = gets.to_i
      if edad >= 18
        puts "es mayor"
      else
        puts "es menor"
      end
    end
=end

def validateAge(age)
  if age >= 18
    puts "es mayor"
  else
    puts "es menor"
  end
end

repetitions = 0
while repetitions < 3
  age = rand(99)
  print "La edad es #{age}, "
  validateAge age
  repetitions += 1
end