require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
### Exercise 5: Calculations

total_revenue = Store.sum(:annual_revenue)
puts "Total revenue of all stores: #{total_revenue}"
total_stores = Store.all.size
average_annual_revenue = total_revenue / total_stores
puts "Average annual revenue: #{average_annual_revenue}"

puts "Total stores generating over $1M or more: #{Store.where("annual_revenue > 1000000").size}"
