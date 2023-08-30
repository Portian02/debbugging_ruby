require 'pry-byebug'
# Primero se practica leyendo el stack trace.
# No mirar este metodo antes de correr el test.
# Escriba 'rspec' en la terminal para correr Rspec.
# Una vez que este test falle, mire el stack trace.
# Trate de ver si puede trabajar desde la ultima linea, el fondo del stack
# Hasta la cima, la primera linea, donde ocurrio el error, y SOLO ENTONCES arregle el error.
#_____________________________________________exercise#1______________________________________________
list = [[3, 4], [1, 2]]

def decrement_smallest_value(nested_array)
    smallest_value = nested_array.flatten.max
    nested_array.each do |array|
      array.each do |current_value|
        if smallest_value > current_value
          smallest_value = current_value
        end
      end
    end
    smallest_value -= 1
  end
  puts "Exercise #1: #{decrement_smallest_value(list)}"
#_____________________________________________exercise#2______________________________________________
  
  # usar el stack trace para hacer debugging del siguiente metodo
  # No mirar a este metodo antes de correr el test
  # COrra el rspec, deje que el test falle y revisar el stacktrace
  def increment_greatest_value(nested_array)
    greatest_value = nested_array.flatten.min
    nested_array.each do |array|
      array.each do |current_value|
        if greatest_value < current_value
          greatest_value = current_value
        end
      end
    end
    greatest_value += 1
  end
  puts "Exercise #2: #{increment_greatest_value(list)}"

#_____________________________________________exercise#3______________________________________________
  
  # This next exercise might look familiar
  # Use p and puts in order to find what's wrong with our method

  # Este siguiente ejercicio puede verse familiar
  # Use p y puts para encontrar que esta mal con nuestro metodo
  
  def isogram?(string)
    original_length = string.length
    string_array = string.downcase.chars
    unique_length = string_array.uniq.length
    original_length == unique_length
  end
  puts "Exercise #3: #{isogram?("Odin")}"

#_____________________________________________exercise#4______________________________________________

# Puede adivinar que sigue?
# Asi es! El ejercicio final de la leccion, el cual vamos a debuggear con pry-byebug
# Trate de evitar mirar el problema demasiado, vamos a confiar en pry para arreglarlo
# Primero, incluya require 'pry-byebug' en la parte superior de esta pagina
# Segundo, instale la gema usando 'gem install pry-byebug' o agregando un Gemfile   
# Luego inserte muchos breakpoints, y vea si puede decir donde las cosas se rompen
# Una vez que encuentre el error, arreglelo y haga que el test pase


  def yell_greeting(string)
    name = string
    name = name.upcase
    greeting = "WASSAP, #{name}!"
  end
  puts "Exercise #1: #{yell_greeting("Bob")}"

