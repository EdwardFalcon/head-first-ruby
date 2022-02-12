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
end

class Bird < Animal
    def talk
        puts "#{@name} says Chirp! Chirp!"
    end   
end

class Cat < Animal
    def talk
        puts "#{@name} says Meow!"
    end    
end

class Armadillo < Animal
    def move(destination)
        puts "#{@name} unrolls!"
        super(destination)
    end
end

whiskers = Cat.new
whiskers.name = "Whiskers"
fido = Dog.new
fido.name = "Fido"
polly = Bird.new
polly.name = "Polly"

polly.age = 2
polly.report_age
fido.move("yard")
whiskers.talk

dillon = Armadillo.new
dillon.name = "Dillon"
dillon.move("burrow")