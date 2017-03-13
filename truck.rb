class Vehicle
  attr_accessor :odometer, :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels"
  end

  def mileage
    puts @odometer/ @gas_used
  end
end

class Motorcycle < Vehicle
  def steer
    puts "Turn from wheel."
  end
end

class Truck < Vehicle
  attr_accessor :cargo

  def load_bed(contens)
    puts "Securing #{contens} in the truck bed."
    @cargo = contens
  end
end

truck = Truck.new
truck.steer
truck.load_bed("tttt")
puts truck.instance_variables
