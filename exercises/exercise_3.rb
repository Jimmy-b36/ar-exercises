require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@stores3 = Store.find_by(id: 3)
@stores3.destroy
p Store.count()
