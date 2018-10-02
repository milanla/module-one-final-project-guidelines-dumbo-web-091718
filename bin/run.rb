require_relative '../config/environment'



puts "Welcome to SuperFan the Trivia Game!"

puts "===================================="

puts "Input your username: "

username = gets.chomp

puts "What genre are you most interested in? "
genre = gets.chomp
# multichoice - user input a number

puts "Hey #{username}! Let's see what you know about #{genre}!!!"
