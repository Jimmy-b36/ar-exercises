require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(
  name: "Surry",
  annual_revenue: 224_000,
  mens_apparel: false,
  womens_apparel: true
)
Store.create(
  name: "Whistler",
  annual_revenue: 1_900_000,
  mens_apparel: true,
  womens_apparel: false
)
Store.create(
  name: "Yaletown",
  annual_revenue: 430_000,
  mens_apparel: true,
  womens_apparel: true
)

@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)
@mens_stores.each { |store| p store.name }
@womens_stores =
  Store.where(
    mens_apparel: false,
    womens_apparel: true,
    annual_revenue: ...1_000_000
  )
@womens_stores.each { |store| p store.name }
