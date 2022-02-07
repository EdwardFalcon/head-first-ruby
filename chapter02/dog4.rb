class Dog
    
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

    def report_age
        puts "#{@name} is #{@age} years old."
    end

end

glitch = Dog.new
glitch.name = ""
glitch.age = -256
glitch.report_age