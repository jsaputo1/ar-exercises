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

# Ask the user for a store name (store it in a variable)

puts "Enter the store name"
name = gets.chomp

# Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)

@new_store = Store.create(name: name)

# Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record

@new_store.errors.full_messages.each do |error|
  puts error
end

