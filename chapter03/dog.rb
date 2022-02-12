class Animal

    attr_reader :name, :age

    def name=(value)
        if value == ""
            raise "Name can't be blank"
        else
            @name = value
        end
    end

    def age=(value)
        if value < 0
            raise "Age of #{value} isn't valid!"
        else
            @age = value
        end
    end

    def talk
        puts "#{@name} says Bark!"
    end

    def move(destination)
        puts "#{@name} runs to the #{destination}"
    end  

    def report_age
        puts "#{@name} is #{@age} years old."
    end

end

class Dog < Animal

    def to_s
        "#{@name} the dog, age #{@age}"
    end

end

lucy = Dog.new
lucy.name = "Lucy"
lucy.age = 4

rex = Dog.new
rex.name = "Rex"
rex.age = 2

puts lucy, rex