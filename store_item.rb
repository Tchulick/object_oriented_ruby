# Exercise:
# A. Use the terminal to create a new folder in your Actualize folder called object_oriented_ruby.
# B. Create a new file in the folder called store_item.rb and open it in VSCode.
# C. Use hashes with symbols to represent the following scenario:
# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).
# Bonus: Read more about Ruby’s hash symbol syntax:
# - http://alwayscoding.ca/momentos/2012/06/15/ruby-hash-syntax-hashrocket-vs-json-style/
# - Create a hash in irb where both the keys and values are symbols. Which syntax do you prefer?

# fish = { :color => "blue", :price => 5 }
# computer = { :color => "silver", :price => 1000 }
# dinosaur = { color: "green", price: 90001 }

class Fish
  attr_reader :color, :size, :price
  attr_writer :price

  def initialize(x)
    @color = x[:color]
    @size = x[:size]
    @price = x[:price]
  end

  def color
    puts @color
  end

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

  def color
    puts @color
  end

  def price
    puts "New price is #{@price} gp"
  end

  def info
    puts "Dragon: #{@color}, is #{@size} meters long, and costs #{@price} gp"
  end
end

dragon = Dragon.new({ :color => "red", :size => 20, :price => 150000 })

fish = Fish.new({ color: "blue", size: 5, price: 8 })

fish.info
fish.color
fish.price = 10
fish.price

dragon.info
