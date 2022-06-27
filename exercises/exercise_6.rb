require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)
@store1.employees.create(first_name: "Sin", last_name: "Bad", hourly_rate: 500)
@store1.employees.create(
  first_name: "Glados",
  last_name: "Rob",
  hourly_rate: 100
)

@store2.employees.create(
  first_name: "Steven",
  last_name: "Strange",
  hourly_rate: 20
)
@store2.employees.create(
  first_name: "Harry",
  last_name: "Granger",
  hourly_rate: 150
)
@store2.employees.create(
  first_name: "Ron",
  last_name: "Potter",
  hourly_rate: 85
)
