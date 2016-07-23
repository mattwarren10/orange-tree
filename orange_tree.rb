
class OrangeTree
	attr_accessor :oranges
	def initialize(oranges, height, age)
		@oranges = []
		@height = height
		@age = age
	end

	def height
		@height 
	end

	def age
		@age
	end

	def age!
		@age+= 1 && @height+= 2
	end

	def any_oranges?
		true
	end

	def grow_oranges(o)
		@oranges.push(o)
	end

	def pick_an_orange!
		@oranges
	end

	def dead?
		return false
	end
end

class Orange
	attr_accessor :diameter
	def initialize
	end

	def diameter

	end
end

class OrangesError < StandardError
	def initialize(msg="There are no more oranges left.")
		super
	end
end

tree = OrangeTree.new(0, 10, 2)
orange = Orange.new
tree.grow_oranges(orange)

if tree.any_oranges? == false 
	raise OrangesError
end

tree.age! until tree.any_oranges? 

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []

  # It places the oranges in the basket
  # IT PLACES THE ORANGES IN THE BASKET
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end

  avg_diameter = # It's up to you to calculate the average diameter for this harvest.

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""

  # Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"
