
def welcome
  puts "Welcome to SuperFan the Trivia Game!"
  puts "===================================="
  puts "Input your username: "

  username = gets.chomp
  new_player = Player.find_or_create_by(name: username)
  pick_artist(new_player)
end

def pick_artist(player)
  name = list_artists
  puts '===================================='
  artist = Artist.find_by(name: name)

  show_points(artist.name, artist.id, player)
end

def show_points(artist_name, artist_number, new_player)
  system "clear"
  puts "Hey #{new_player.name}! You have #{new_player.points} point(s). Let's see what you know about this #{artist_name}!!!"
  game_initialize(artist_name, artist_number, new_player)
end

def game_initialize(artist_name, artist_number, new_player)
  puts "Game Initializing......"
  sleep(3)
  questions(artist_name, artist_number, new_player)
end

def questions(artist_name, artist_number, new_player)
  questions_array = Question.all.select do |q|
    q.artist_id == artist_number.to_i
  end
  print_questions_and_choices(artist_name, new_player,questions_array)
end

def print_questions_and_choices(artist_name, new_player,questions_array)
  questions_array.each do |q|
    puts q.content
    puts q.choice_a
    puts q.choice_b
    puts q.choice_c

    ui = gets.chomp

    # sleep will pause for 10 or 15 seconds
    if ui == q.answer
      new_player.points += 1
      puts `clear`
      puts "=================================================="
      puts "Correct! You're pretty awesome!!!"
      puts "=================================================="
    elsif ui != "a" && ui != "b" && ui != "c"
      puts `clear`
      puts "=================================================="
      puts "Invalid input. Please type a, b or c."
      puts "=================================================="

    redo else
    puts `clear`
      puts "=================================================="
      puts "Boo! Try harder next time!"
      puts "=================================================="
    end
  end
  goodbye(new_player)
end

def goodbye(new_player)
  puts "Congratulations you have earned #{new_player.points} points!!!"
end

def list_artists
  prompt = TTY::Prompt.new
  names = Artist.all.map {|artist| artist.name}
  prompt.select("What artist are you most interested in? ", names )
end


def find_artist(artist_number)
  artist_choice = Artist.all.find_by(id: artist_number)
  artist_choice.name
end

welcome
