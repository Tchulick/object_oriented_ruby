require "./color_mod.rb"

class Dragon
  attr_reader :color, :size, :price
  attr_writer :price

  def initialize(x)
    @color = x[:color]
    @size = x[:size]
    @price = x[:price]
    @name = x[:name]
  end

  include Colorable

  def price
    puts "New price is #{@price} gp"
  end

  def info
    puts "Dragon: #{@color}, is #{@size} meters long, and costs #{@price} gp. Named #{@name}."
  end
end
