puts "What is your name?"
name = gets.capitalize.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "Hello #{name}, you will be #{age + 5} in 5 years"
