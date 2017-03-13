class Mage
  attr_accessor :name, :spell

  def enchant(target)
    puts "#{@name} cats #{@spell} on #{target.name}!"
  end
end


class Camera
  def load
    puts "Winding film"
  end

  def take_picture
   puts  "Triggering shutter."
  end
end

class DigitalCamera < Camera
  def load
    puts "Inserting memory card!"
  end
end

# camera = Camera.new
# camera.load
# camera.take_picture
#
# camera1 = DigitalCamera.new
# camera1.load
# camera1.take_picture

class Boat
  def initialize(name)
    @name = name
  end
end

class PowerBoat < Boat
  def initialize(name, motor_type)
    super(name)
    @motor_type = motor_type
  end

  def info
    puts "Name: #{@name}"
    puts "Motor type: #{@motor_type}"
  end
end
#
# boat = PowerBoat.new("Guppy", "outboat")
# boat.info
#
