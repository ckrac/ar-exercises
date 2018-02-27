require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
### Exercise 7: Validations for both models


print "Please enter your store's name:  "
store_name = $stdin.gets.chomp.to_s

t = Store.create(name: store_name)
puts t.errors.full_messages








