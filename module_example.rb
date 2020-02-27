module Brakeable
  def brake
    @speed = 0
  end
end

module Initializeable
  def initialize
    @speed = 0
    @direction = "north"
  end
end

module Accelerateable
  def accelerate
    @speed += 10
    p @speed
  end
end

module Turnable
  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include Initializeable

  include Brakeable

  include Accelerateable

  include Turnable

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Initializeable

  include Brakeable

  include Accelerateable

  include Turnable

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
bike.accelerate
bike.ring_bell
