# Solución alternativa para el desafio evaluado d06_greaterThanFour.rb

numbersList = ARGV

graeterThan = 0

for number in numbersList do
    if number.to_i >= graeterThan
        graeterThan = number.to_i
    end
end

puts graeterThan