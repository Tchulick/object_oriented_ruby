# Exercise:
# • Create a new file in your object-oriented-ruby folder called inheritance_example.rb
# open it in your text editor.
# • Copy the Car and Bicycle class into your file: https://gist.github.com/peterxjang/e9b69b4de36b2c41ef4b
# • Use inheritance to DRY up the classes. Note - a car is NOT in a type of bicycle, and a bicycle is NOT a type of car!
# • To test it, create a bicycle and car instance from your newly modified classes (you can create them at the bottom of your file).
# First, have them accelerate. Then, make sure a bike can “Ring ring!” and a car "Beeeeeeep!"

class Auto
  def initialize
    @speed = 0
    @direction = "north"
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
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Auto
  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new()
bike.ring_bell
bike.accelerate
bike.accelerate
