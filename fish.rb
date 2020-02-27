require "./color_mod.rb"

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
