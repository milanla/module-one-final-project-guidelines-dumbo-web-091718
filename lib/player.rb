class Player < ActiveRecord::Base
  has_many :game
  has_many :artist, through: :game

end
