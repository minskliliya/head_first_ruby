class Animal
  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def report_age
    puts "#{@name} is #{@age} years old!"
  end

  def talk
    puts "#{@name} says Chirp!Chirp!"
  end

  def move(destionation)
    puts "#{@name} flies to the #{destionation}"
  end
end

class Dog < Animal
  def talk
    puts "#{@name} says Gav!"
  end

  def to_s
    "#{@name} the dog, age #{@age}"
  end
end

class Cat < Animal
  def talk
    puts "#{@name} says May!"
  end
  def to_s
    "#{@name} the cat, age #{@age}"
  end
end

class Bird < Animal
  def to_s
    "#{@name} the bird, age #{@age}"
  end
end

class Armadillo < Animal
  def move(destionation)
    puts "#{@name} unrolls!"
    supper(destionation)  # or only super
  end
  def to_s
    "#{@name} the armadillo, age #{@age}"
  end
end

lucy = Dog.new
lucy.name = "Lucy"
lucy.age = 3
puts lucy
