module Colorable
  def color
    puts @color
  end
end

class Fish
  attr_reader :color, :size, :price
  attr_writer :price

  def initialize(x)
    @color = x[:color]
    @size = x[:size]
    @price = x[:price]
  end

  include Colorable

  def price
    puts "New price is #{@price} gp"
  end

  def info
    puts "Fish: #{@color} is #{@size} inches long and costs #{@price} gp"
  end
end

class Dragon
  attr_reader :color, :size, :price
  attr_writer :price

  def initialize(x)
    @color = x[:color]
    @size = x[:size]
    @price = x[:price]
  end

  include Colorable

  def price
    puts "New price is #{@price} gp"
  end

  def info
    puts "Dragon: #{@color}, is #{@size} meters long, and costs #{@price} gp"
  end
end

dragon = Dragon.new({ :color => "red", :size => 20, :price => 150000, :name => "Smaug" })

fish = Fish.new(color: "blue", size: 5, price: 8)

fish.info
fish.color
fish.price = 10
fish.price

dragon.info
