require_relative "../../setup"
require_relative "../exercise_1"
require_relative "../exercise_2"
require_relative "../exercise_3"
require_relative "../exercise_4"
require_relative "../exercise_5"
require_relative "../exercise_6"

puts "Stretch 1"
puts "------"

@store4 =
  Store.create(
    name: "Yaletown",
    annual_revenue: 430_000,
    mens_apparel: true,
    womens_apparel: true
  )
puts @store4.name
@t =
  @store4.employees.create(
    first_name: "Stevie",
    last_name: "Wonder",
    hourly_rate: 50
  )
@t.valid?
p @t.password

puts Employee.count()
