=begin 
  DESAFIO: CICLOS

  INSTRUCCIONES:
  Sabiendo que "a.next" => b y "b.next" => c . Crear un programa llamado "d08_gene.rb" y que contenga un método llamado gen que reciba el número de letras a generar y devuelva un string con todas las letras generadas concatenadas.

  Ejemplo:
  
  gen(4)
  "abcd"

  gen(10)
  "abcdefghij"

  Tip: Los ejercicios que piden métodos se evalúan llamando al método directamente y comparando el resultado, para tener la evaluación correcta del ejercicio considera el nombre del método y el resultado.
  No es necesario que el programa tenga una salida o muestre en pantalla por si solo.
=end

def gen(n)
  alphabet = "a"
  letter = "a"
  (n-1).times do
    alphabet += letter.next
    letter = letter.next
  end
  print alphabet
end

gen(4) 
puts ""
gen(10) 