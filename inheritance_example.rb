# Exercise:
# • Create a new file in your object-oriented-ruby folder called inheritance_example.rb
# open it in your text editor.
# • Copy the Car and Bicycle class into your file: https://gist.github.com/peterxjang/e9b69b4de36b2c41ef4b
# • Use inheritance to DRY up the classes. Note - a car is NOT in a type of bicycle, and a bicycle is NOT a type of car!
# • To test it, create a bicycle and car instance from your newly modified classes (you can create them at the bottom of your file).
# First, have them accelerate. Then, make sure a bike can “Ring ring!” and a car "Beeeeeeep!"

# Exercise:
# Open the inheritance_example.rb file from the previous example.
# Add car specific attributes (instance variables) to the Car class (fuel, make, model, etc.)
# and bicycle specific attributes to the Bicycle class (type, weight, etc.).
# Use the super method to keep the initialize methods DRY.

class Auto
  def initialize(input)
    @speed = input[:speed]
    @direction = input[:direction]
    # @speed = 0
    # @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
    puts @speed
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Auto
  # def initialize
  #   super()
  #   @fuel =
  # end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Auto
  # def initialize
  #   super(input)
  #   @type = "bike"
  #   @weight = 15
  # end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new(:speed => 0, :direction => "north")
# bike.ring_bell
# bike.accelerate
# bike.accelerate
bike.speed
