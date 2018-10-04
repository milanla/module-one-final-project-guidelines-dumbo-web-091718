def welcome
  pid = fork{exec 'afplay', './music/Qwerky(Unfinished).m4a'}
  puts "            +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+".colorize(:light_green)
  puts "            |S| |u| |p| |e| |r| |F| |a| |n|".colorize(:light_green)
  puts "            +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+".colorize(:light_green)
  puts "                 ╔════╗
                 ║ ██ ║
                 ║ (O)║♫ ♪ ♫ ♪
                 ╚════╝
               ▄ █ ▄ █ ▄ ▄ █ ▄ █ ▄ █
          Min - - - - - - - - - - - -● Max".colorize(:light_green)

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
 to correspond to the multiple choice answers provided.
 (You only have 10 seconds to answer!)".colorize(:red)
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
    puts q.content.colorize(:light_yellow)
    puts q.choice_a.colorize(:light_blue)
    puts q.choice_b.colorize(:light_blue)
    puts q.choice_c.colorize(:light_blue)
    begin
      Timeout::timeout 10 do
        ui = gets.chomp
        if ui == q.answer
          new_player.points += 1
          puts `clear`
          puts "            ╰( ͡° ͜ʖ ͡° )つ──☆*:・ﾟ".colorize(:light_yellow)
          puts "=================================================="
          puts "       Correct! You're pretty awesome!!!".colorize(:light_green)
          puts "=================================================="
        elsif ui != "a" && ui != "b" && ui != "c"
          puts `clear`
          puts "                ʕノ•ᴥ•ʔノ ︵ ┻━┻".colorize(:light_yellow)
          puts "=================================================="
          puts "     Invalid input. Please type a, b or c.".colorize(:red)
          puts "=================================================="
        redo else
          puts `clear`
          puts "                    ( ╥﹏╥) ノシ".colorize(:light_yellow)
          puts "=================================================="
          puts "               Wrong! Try harder!".colorize(:red)
          puts "=================================================="
        end
        sleep(1)
        system "clear"
      end
    rescue Timeout::Error
        ui = nil
        system "clear"
        puts "                    ( ╥﹏╥) ノシ".colorize(:light_yellow)
        puts "==================================================="
        puts "                    Time Out!".colorize(:red)
        puts "==================================================="
        sleep(1)
        system "clear"
        next
    end
    sleep(1)
    system "clear"
  end
  goodbye(new_player)
end

def goodbye(new_player)
  pid = fork{exec 'afplay', './music/Qwerky(Unfinished).m4a'}
  system "clear"
  new_player.update(points: new_player.points)
  puts "            Congratulations! You have a total of #{new_player.points} points!!!"
    if new_player.points >= 75
      new_player.update(status: "SuperFan")
      puts "                            You're a SuperFan!!!"
    elsif new_player.points >= 50
      new_player.update(status: "BigFan")
      puts "                             You're a BigFan!"
    else
      puts "                              You're a fan!"
    end
  puts "    +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-++-+ +-+ +-+ +-+ +-+ +-+ +-+ +-++-+ +-+"
  puts "                    Thank you for playing SuperFan"
  sleep(3)
  system "clear"
  puts "          +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+"
  puts "          |S| |u| |p| |e| |r| |F| |a| |n|"
  puts "          +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+"
  sleep(3)
  start_over(new_player)
end

def start_over(new_player)
  prompt = TTY::Prompt.new
  restart = prompt.select('Would like to play again?', %w(Yes No))
# binding.pry
  case restart
  when "Yes"
    pick_artist(new_player)
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
