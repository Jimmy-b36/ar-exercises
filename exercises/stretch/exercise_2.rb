require_relative "../../setup"
require_relative "../exercise_1"
require_relative "../exercise_2"
require_relative "../exercise_3"
require_relative "../exercise_4"
require_relative "../exercise_5"
require_relative "../exercise_6"
require_relative "./exercise_1"

puts "Stretch 1"
puts "---------"

@store1 = Store.find(1)
if @store1.destroy
  puts "Store destroyed! It has #{@store1.employees.size} =/"
else
  puts "Could not destroy store :)"
end

# Make sure empty stores can be destroyed
@empty_store =
  Store.create!(
    name: "Test Empty Store",
    annual_revenue: 100,
    mens_apparel: true,
    womens_apparel: false
  )
if @empty_store.destroy
  puts "Empty Store destroyed! This is good"
else
  puts "Whoa! Empty store should be destroyable... Not cool!"
end
