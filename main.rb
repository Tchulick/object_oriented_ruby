require "./dragon.rb"
require "./fish.rb"

dragon = Dragon.new({ :color => "red", :size => 20, :price => 150000, :name => "Smaug" })

fish = Fish.new(color: "blue", size: 5, price: 8)

fish.info
fish.color
fish.price = 10
fish.price

dragon.info
