require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"
require_relative "./exercise_6"

puts "Exercise 7"
puts "----------"

# Your code goes here ...
p "enter a store name"
print "> "
@user_input = gets.chomp
@new_store =
  Store.create(name: @user_input, annual_revenue: 100, mens_apparel: true)
p @new_store.valid?
p @new_store.errors.full_messages
