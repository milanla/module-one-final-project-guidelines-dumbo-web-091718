require_relative '../config/environment'

require 'pry'
require 'colorize'
require 'colorized_string'
require_relative './methods.rb'

# puts "                           *     .--."
# puts "                                / /  `"
# puts "               +               | |"
# puts "                      '        \\ \\__,"
# puts "                  *          +   '--'  *"
# puts "                      +   /\\"
# puts "         +              .'  '.   *"
# puts "                *      /======\\      +"
# puts "                      ;:.  _   ;"
# puts "                      |:. (_)  |"
# puts "                      |:.  _   |"
# puts "            +         |:. (_)  |          *"
# puts "                      ;:.      ;"
# puts "                    .' \:.    / `."
# puts "                   / .-'':._.'`-. \/"
# puts "                   |/    /||\    \\|"
# puts "                 _..--\"\"\"````\"\"\"--.._"
# puts "           _.-'``                    ``'-._"
# puts "         -'                                '-"

# def print_questions_and_choices(artist_name, new_player,questions_array)
#   questions_array.each do |q|
#     qs = questions_array.map do |q|
#             q.content
#             binding.pry
#           end
#     ans = questions_array.map do |q|
#             q.choice_a, q.choice_b, q.choice_c
#           end
#     prompt = TTY::Prompt.new
#     ui = prompt.select(qs, ans)
#     case ui
#       when ui == q.answer
#         new_player.points += 1
#         puts `clear`
#         puts "            ╰( ͡° ͜ʖ ͡° )つ──☆*:・ﾟ"
#         puts "=================================================="
#         puts "       Correct! You're pretty awesome!!!"
#         puts "=================================================="
#       when ui != "a" && ui != "b" && ui != "c"
#         puts `clear`
#         puts "                ʕノ•ᴥ•ʔノ ︵ ┻━┻"
#         puts "=================================================="
#         puts "     Invalid input. Please type a, b or c."
#         puts "=================================================="
#
#       redo when
#         puts `clear`
#         puts "                    ┌П┐(ಠ_ಠ)"
#         puts "=================================================="
#         puts "               Wrong! Try harder!"
#         puts "=================================================="
#       end
#       sleep(2)
#       system "clear"
#     end
#   end
#   goodbye(new_player)
# end
