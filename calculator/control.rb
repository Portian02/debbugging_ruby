require_relative 'calculator'

def run_game
puts "Bienvenido a la calculadora en Ruby"
puts 'Ingresa el primer numero:'
num1 = gets.to_f

puts 'Ingrese el segundo numero:'
num2 = gets.to_f

puts 'Selecciona una operación'
puts '1. Add'
puts '2. Subtract'
puts '3. Multiply'
puts '4. Divide'

choice = gets.to_i

case choice
when 1
    result = Calculator.add(num1, num2)
    operator = '+'
when 2 
    result = Calculator.subtract(num1, num2)
    operator = '-'
when 3 
    result = Calculator.multiply(num1, num2)
    operator= '*'
when 4
    begin 
    result = Calculator.divide(num1, num2)
    operator= '/'
    rescue  StandardError => e
        puts "Error #{e.message}"
        return
    end
else
    pust "opcion no valida."
    return 
end
 puts "Result: #{num1} #{operator} #{num2} = #{result}"

end

run_game