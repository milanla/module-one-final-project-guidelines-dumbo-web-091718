def welcome
  puts "            +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+"
  puts "            |S| |u| |p| |e| |r| |F| |a| |n|"
  puts "            +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+"
  puts "                 ╔════╗
                 ║ ██ ║
                 ║ (O)║♫ ♪ ♫ ♪
                 ╚════╝
               ▄ █ ▄ █ ▄ ▄ █ ▄ █ ▄ █
            Min- - - - - - - - - - - -●Max"

  puts "         Welcome to SuperFan the Trivia Game!"
  sleep(3)
  system "clear"
  puts "         ===================================="
  puts "                         Rules"
  puts "         ===================================="
  puts "                1. Enter your username
    2. Choose an artist you feel you know the best.
    3. Answer a series of questions about that artist
 as quickly as possible while only typing “a , b or c “
 to correspond to the multiple choice answers provided."
  puts "         ===================================="
  prompt = TTY::Prompt.new
  username = prompt.ask('Input your username:') do |q|
    q.required true
    q.validate /^\s*[a-zA-Z0-9,\s]+\s*$/
    q.messages[:valid?] = "Invalid username"
  end
  new_player = Player.find_or_create_by(name: username)
  pick_artist(new_player)
end

def pick_artist(player)
  system "clear"
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
  system "clear" # this line
  questions_array = Question.all.select do |q|
    q.artist_id == artist_number.to_i
  end
  print_questions_and_choices(artist_name, new_player,questions_array)
end

def print_questions_and_choices(artist_name, new_player,questions_array)
  questions_array.each do |q|
    puts q.content.colorize(:color => :light_blue, :background => :red)
    puts q.choice_a
    puts q.choice_b
    puts q.choice_c

    ui = gets.chomp

    # sleep will pause for 10 or 15 seconds
    if ui == q.answer
      new_player.points += 1
      puts `clear`
      puts "            ╰( ͡° ͜ʖ ͡° )つ──☆*:・ﾟ"
      puts "=================================================="
      puts "       Correct! You're pretty awesome!!!"
      puts "=================================================="
    elsif ui != "a" && ui != "b" && ui != "c"
      puts `clear`
      puts "                ʕノ•ᴥ•ʔノ ︵ ┻━┻"
      puts "=================================================="
      puts "     Invalid input. Please type a, b or c."
      puts "=================================================="

    redo else
      puts `clear`
      puts "                    ┌П┐(ಠ_ಠ)"
      puts "=================================================="
      puts "               Wrong! Try harder!"
      puts "=================================================="
    end
    sleep(2)
    system "clear"
  end
  goodbye(new_player)
end

def goodbye(new_player)
  system "clear"
  new_player.update(points: new_player.points)
  puts "            Congratulations! You have a total of #{new_player.points} points!!!"
  puts "    +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-++-+ +-+ +-+ +-+ +-+ +-+ +-+ +-++-+ +-+"
  puts "                    Thank you for playing SuperFan"
  sleep(3)
  system "clear"
  puts "          +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+"
  puts "          |S| |u| |p| |e| |r| |F| |a| |n|"
  puts "          +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+"
  sleep(3)
  start_over
end

def start_over
  prompt = TTY::Prompt.new
  restart = prompt.select('Would like to play again?', %w(Yes No))
# binding.pry
  case restart
  when "Yes"
    welcome
  when "No"
    system "clear"
    puts "          Thank you for playing SuperFan!"
    puts "                                         "
    puts "          +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+"
    puts "          |S| |u| |p| |e| |r| |F| |a| |n|"
    puts "          +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+"
    sleep(2)
  end
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
