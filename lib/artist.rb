class Artist < ActiveRecord::Base
  has_many :game
  has_many :player, through: :game
  has_many :question, through: :game
end
