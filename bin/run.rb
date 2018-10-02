require_relative '../config/environment'



puts "Welcome to SuperFan the Trivia Game!"

puts "===================================="

puts "Input your username: "

username = gets.chomp
new_player = Player.create(name: username)

puts "What artist are you most interested in? "

def list_artists
Artist.all.each_with_index do |artist, index|
  puts "#{index + 1}. #{artist.name}"
end
end

list_artists
puts '===================================='
artist_number = gets.chomp
# if artist_number == artist.id
#   artist_choice = artist.name
# end

def find_artist(artist_number)
  artist_choice = Artist.all.find_by(id: artist_number)
    artist_choice.name
end
name = find_artist(artist_number)

# multichoice - user input a number

puts "Hey #{username}! Let's see what you know about this #{name}!!!"

new_game = Game.create(player_id: 1, artist_id: 1)
def find_questions
Question.all.select do

end
puts "Lets Gooo!!!...."
