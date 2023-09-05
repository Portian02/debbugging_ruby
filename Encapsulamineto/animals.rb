class Dog
  
    attr_accessor :name, :age

    def Speak 
    puts "#{@name} says woof, woof!"
    end

    def move (destiny)
       puts "#{@name} runs to #{destiny}"
    end

    def report_age 
       puts "#{@name} is #{@age} years old"
    end
end





class Cat
  
    attr_accessor :name, :age, :speak

    def Speak 
    puts "#{@name} says #{@speak}!"
    end

    def move (destiny)
       puts "#{@name} runs to #{destiny}"
    end

    def report_age 
       puts "#{@name} is #{@age} years old"
    end
end







class Bird
  
    attr_accessor :name, :age, :sing

    def Speak 
    puts "#{@name} says #{sing}!"
    end

    def move (destiny)
       puts "#{@name} flies to #{destiny}"
    end

    def report_age 
       puts "#{@name} is #{@age} years old"
    end
end




