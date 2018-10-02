class Game < ActiveRecord::Base
  belongs_to :player
  belongs_to :artist
  has_many :question
end
