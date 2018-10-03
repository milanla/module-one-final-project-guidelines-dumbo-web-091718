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
puts "Game Initializing......"

def questions(artist_number, new_player)
  questions_array = Question.all.select do |q|
    q.artist_id == artist_number.to_i
      # puts "#{q[:content]}"
    # end
  end
  questions_array.each do |q|
    puts q.content
    puts q.choice_a
    puts q.choice_b
    puts q.choice_c
    ui = gets.chomp
    if ui == q.answer
      new_player.points += 1
      puts `clear`
      puts "=================================================="
      puts "Right Answer"
      puts "=================================================="
    elsif ui != "a" && ui != "b" && ui != "c"
      puts `clear`
      puts "=================================================="
      puts "Invalid input please type a, b or c"
      puts "=================================================="

    redo else
    puts `clear`
      puts "=================================================="
      puts "Wrong answer"
      puts "=================================================="
    end
  end
end

questions(artist_number, new_player)

puts "Congratulations you have earned #{new_player.points}/5 points!!!"

def run

end
