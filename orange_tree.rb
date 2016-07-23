require 'pry'
class OrangeTree
	attr_accessor :oranges
	def initialize(height, age)
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
		@age+= 1
		@height+= 2
	end

	def calc_diameter
		total_diameter = 0
		@oranges.each do |o|
			total_diameter += o.diameter
		end
		avg = sprintf('%.2f', (total_diameter/@oranges.length))
	end

	def any_oranges?
		if @oranges.length > 0
			true
		else
			false
		end

	end

	def grow_oranges(o)
		@oranges.push(o)
	end

	def pick_an_orange!
		@oranges.delete_at(0)
	end

	def dead?
		if @age == 40
			true
		else
			false
		end
	end
end

class Orange
	attr_accessor :diameter
	def initialize(diameter)
		@diameter = diameter
	end
end

class NoOrangesError < StandardError
	def initialize(msg="There are no more oranges left.")
		super
	end
end

tree = OrangeTree.new(10, 1)
orange1 = Orange.new(2)
orange2 = Orange.new(2)
orange3 = Orange.new(2)
orange4 = Orange.new(2)
orange5 = Orange.new(2)
orange6 = Orange.new(3)
orange7 = Orange.new(3)
orange8 = Orange.new(3)
orange9 = Orange.new(3)
orange10 = Orange.new(3)
orange11 = Orange.new(3)
orange12 = Orange.new(3)
orange13 = Orange.new(3)
orange14 = Orange.new(3)

tree.grow_oranges(orange1)
tree.grow_oranges(orange2)
tree.grow_oranges(orange3)
tree.grow_oranges(orange4)
tree.grow_oranges(orange5)
tree.grow_oranges(orange6)
tree.grow_oranges(orange7)
tree.grow_oranges(orange8)
tree.grow_oranges(orange9)
tree.grow_oranges(orange10)
tree.grow_oranges(orange11)
tree.grow_oranges(orange12)
tree.grow_oranges(orange13)
tree.grow_oranges(orange14)

avg = tree.calc_diameter

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

orange1 = Orange.new(2)
orange2 = Orange.new(2)
orange3 = Orange.new(2)
orange4 = Orange.new(2)
orange5 = Orange.new(2)
orange6 = Orange.new(2)
orange7 = Orange.new(2)
orange8 = Orange.new(2)
orange9 = Orange.new(2)
orange10 = Orange.new(3)
orange11 = Orange.new(3)
orange12 = Orange.new(3)
orange13 = Orange.new(3)
orange14 = Orange.new(3)

tree.grow_oranges(orange1)
tree.grow_oranges(orange2)
tree.grow_oranges(orange3)
tree.grow_oranges(orange4)
tree.grow_oranges(orange5)
tree.grow_oranges(orange6)
tree.grow_oranges(orange7)
tree.grow_oranges(orange8)
tree.grow_oranges(orange9)
tree.grow_oranges(orange10)
tree.grow_oranges(orange11)
tree.grow_oranges(orange12)
tree.grow_oranges(orange13)
tree.grow_oranges(orange14)

  avg_diameter = avg

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""

  # Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"
